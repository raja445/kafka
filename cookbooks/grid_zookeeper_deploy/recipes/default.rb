package "zookeeper" do
  version node['zookeeper']['zookeeper_version']
  action :install
end

package "zookeeper-server" do
  version node['zookeeper']['zookeeper_version']
  action :install
end

package "zookeeper-server-startup" do
  action :install
end


template "/usr/hdp/#{node['hdp']['version']}/zookeeper/conf/zoo.cfg" do
  source "zoo.cfg.erb"
  owner "root"
  group "root"
  mode "0644"
  variables(
    :zookeeper_quorum => node['zookeeper']['quorum']
  )
end

template "/usr/hdp/#{node['hdp']['version']}/zookeeper/conf/zookeeper-env.sh" do
  source "zookeeper-env.sh.erb"
  owner "root"
  group "root"
  mode "0644"
  variables(
    :log_dir => node['zookeeper']['log_dir']
  )
end


Chef::Log.info("colo: #{node['colo']}")

directory node['zookeeper']['log_dir'] do
  owner 'zookeeper'
  group 'zookeeper'
  mode '0755'
  action :create
end
