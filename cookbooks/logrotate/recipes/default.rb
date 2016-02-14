directory "#{node["logrotate"]["kafka_logrotatedir"]}" do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end
directory "#{node["logrotate"]["kmt_logrotatedir"]}" do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end
directory "#{node["logrotate"]["audit_logrotatedir"]}" do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

cookbook_file '/etc/logrotate.d/kafka.conf' do
  source 'kafka_all_logrotate.conf'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end
