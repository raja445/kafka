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

template "/usr/share/jmxtrans/zookeeper.json" do
  source "zookeeper.json.erb"
  owner "jmxtrans"
  group "jmxtrans"
  mode "0644"
  variables(
    :host => node['hostname'],
    :fqdn => node['fqdn'],
    :colo => node['colo'],
    :cluster_name => node['cluster_name'][node['colo']],
    :graphite_host => "grid-metrics-relay.#{node["colo']}.inmobi.com"
  )
end

directory node['zookeeper']['log_dir'] do
  owner 'zookeeper'
  group 'zookeeper'
  mode '0755'
  action :create
end
