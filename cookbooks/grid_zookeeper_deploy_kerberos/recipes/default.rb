#package "zookeeper" do
package %w(zookeeper zookeeper-2-2-4-2-2 zookeeper-server zookeeper-2-2-4-2-2-server) do
  version node['zookeeper']['zookeeper_version']
  action :install
  options '--force-yes'
end

#package "zookeeper-server" do
#  version node['zookeeper']['zookeeper_version']
#  action :install
#  options '--force-yes'
#end

package "zookeeper-server-startup" do
  version node['zookeeper']['zookeeper_startup_version']
  action :install
  options '--force-yes'
end

#package "scribe-scripts" do
#  version node['zookeeper']['scribescripts']
#  action :install
#  options '--force-yes'
#end

template "/usr/hdp/#{node['hdp']['version']}/zookeeper/conf/zoo.cfg" do
  source "zoo.cfg.erb"
  owner "root"
  group "root"
  mode "0644"
  colo = node['domain'].split(".")[-3]
  variables(
    :colo => colo,
    :zookeeper_quorum => node['zookeeper']['quorum'][colo]
  )
end

template "/usr/hdp/#{node['hdp']['version']}/zookeeper/conf/zookeeper-server.jaas" do
  source "zookeeper_server_jaas.erb"
  owner "root"
  group "root"
  mode "0644"
end

template "/usr/hdp/#{node['hdp']['version']}/zookeeper/conf/zookeeper-client.jaas" do
  source "zookeeper_client_jaas.erb"
  owner "root"
  group "root"
  mode "0644"
end

cookbook_file "/usr/hdp/#{node['hdp']['version']}/zookeeper/conf/log4j.properties" do
  source "log4j.properties"
  owner "root"
  group "root"
  mode "0644"
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

directory "/etc/zk_health" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
directory "/etc/zk_health/zk_healthcheck" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
directory "/etc/zk_health/zk_healthcheck/log" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
directory "/etc/zk_health/zk_healthcheck/log/main" do
  owner 'nobody'
  group 'nogroup'
  mode '0755'
  action :create
end
template "/etc/zk_health/zk_healthcheck/run" do
  source "zookeeper_healthcheck.erb"
  owner "root"
  group "root"
  mode "0755"
end
template "/etc/zk_health/zk_healthcheck/log/run" do
  source "zk_logrun.erb"
  owner "root"
  group "root"
  mode "0755"
end

link '/service/zk_healthcheck' do
  to '/etc/zk_health/zk_healthcheck'
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

cookbook_file "/usr/hdp/current/zookeeper-server/bin/zookeeper-server" do
  source "zookeeper-server.sh"
  mode '0755'
end
