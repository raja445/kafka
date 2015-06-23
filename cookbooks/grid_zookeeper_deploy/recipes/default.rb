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
