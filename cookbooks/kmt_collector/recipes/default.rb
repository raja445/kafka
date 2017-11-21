# could be improved to run only on update

package 'kafkaMirroring' do
  version node['kafkaMirroring']['version']
  options '--force-yes'
  action :install
end

package 'kafkaMirroringConfig' do
  version node['kafkaMirroringConfig']['version']
  options '--force-yes'
  action :install
end

directory node["kafkaMirroring"]["staging_dir"] do
  action :create
  owner "databus"
  mode 00755
  recursive true
end

directory node["kafkaMirroring"]["log_dir"] do
  action :create
  owner "databus"
  mode 00755
  recursive true
end

directory node["kafkaMirroring"]["offset_dir"] do
  action :create
  owner "databus"
  mode 00755
  recursive true
end

directory node["kafkaMirroring"]["spool_dir"] do
  action :create
  owner "databus"
  mode 00755
  recursive true
end

template "/opt/inmobi/bin/KafkaMirroring/conf.sh" do
  source "conf.sh.erb"
  owner "root"
  owner "root"
  mode "0644"
  colo = node['domain'].split(".")[-3]
  variables(
    :colo => colo,
    :instance_id => node['kafkaMirroring']['instanceid'][colo][node['hostname']],
    :collector_id => node['kafkaMirroring']['collectorid'][colo]
  )
end

template "/opt/inmobi/config/KafkaMirroringConfig/default.properties" do
  source "default.properties.erb"
  owner "root"
  owner "root"
  mode "0644"
  colo = node['domain'].split(".")[-3]
  variables(
    :colo => colo,
    :instance_id => node['kafkaMirroring']['instanceid'][colo],
    :hdfs_id => node['kafkaMirroring']['hdfsid'][colo],
    :collector_id => node['kafkaMirroring']['collectorid'][colo]
  )
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/channel-uh1.json" do
  source 'channel-uh1.json'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/channel-uh1collector.json" do
  source 'channel-uh1collector.json'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end


cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/channel-dfw1collector.json" do
  source 'channel-dfw1collector.json'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/channel-lhr1collector.json" do
  source 'channel-lhr1collector.json'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/channel-pek1collector.json" do
  source 'channel-pek1collector.json'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/channel-dfw2collector.json" do
  source 'channel-dfw2collector.json'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/server-dfw1collector.properties" do
  source 'server-dfw1collector.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/server-lhr1collector.properties" do
  source 'server-lhr1collector.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/server-pek1collector.properties" do
  source 'server-pek1collector.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/server-dfw2collector.properties" do
  source 'server-dfw2collector.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/server-uh1collector.properties" do
  source 'server-uh1collector.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/channel-dfw1.json" do
  source 'channel-dfw1.json'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/channel-lhr1.json" do
  source 'channel-lhr1.json'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['confighome']}/conf.sh" do
  source 'conf.sh'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaSupervisorConfig']['confighome']}/kafkaMirror.conf" do
  source 'kafkaMirrorSupervisor.conf'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end
