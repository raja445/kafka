package "kafka" do
  version node['kafka']['kafka_version']
  action :install
end

template "/usr/hdp/2.2.0.0-2041/etc/kafka/conf.default/server.properties" do
  source "server.properties.erb"
  owner "root"
  group "root"
  mode "0644"
  variables(
    :network_threads => node['kafka']['network.threads'],
    :log_dirs => node['kafka']['log.dirs']

  )
end
