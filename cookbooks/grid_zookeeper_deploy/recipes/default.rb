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
  colo = node['domain'].split(".")[-3]
  variables(
    :colo => colo
    :zookeeper_quorum => node['zookeeper']['quorum'][colo]
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


file "#{node['zookeeper']['lib_dir']}/myid" do
  colo = node['domain'].split(".")[-3]
  ids = node['zookeeper']['quorum'][colo].invert
  content ids[node['hostname']]
  owner 'zookeeper'
  group 'zookeeper'
  mode '0755'
  action :create
end
