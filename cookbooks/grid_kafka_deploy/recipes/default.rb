package "kafka" do
  version node['kafka']['kafka_version']
  action :install
end
package "jmxtrans" do
  version node['jmxtrans_version']
  action :install
end


template "/usr/hdp/current/kafka-broker/config/server.properties" do
  source "server.properties.erb"
  owner "root"
  group "root"
  mode "0644"
  variables(
    :network_threads => node['kafka']['network.threads'],
    :io_threads => node['kafka']['io.threads'],
    :log_dirs => node['kafka']['log.dirs'],
    :broker_id => node['kafka']['broker.id'][node['hostname']]
  )
end

template "/usr/share/jmxtrans/kafka.json" do
  source "kafka.json.erb"
  owner "jmxtrans"
  group "jmxtrans"
  mode "0644"
  variables(
    :host => node['hostname']
  )
end

template "/usr/hdp/current/kafka-broker/config/kafka-env.sh" do
  source "kafka-env.sh.erb"
  owner "root"
  group "root"
  mode "0644"
end

Chef::Log.info("hostname: #{node['hostname']} broker_id: node['kafka']['broker.id'][node['hostname']]")
node['kafka']['log.dirs'].split(",").each do |path|
  directory path do
    owner 'kafka'
    group 'kafka'
    mode '0755'
    action :create
  end
end
