# could be improved to run only on update

package ['kafkaMirroring','kafkaMirroringConfig'] do
  version [node['kafkaMirroring']['version'],node['kafkaMirroringConfig']['version']]
  options '--force-yes'
  action :install
end

template "/opt/inmobi/bin/KafkaMirroring/conf.sh" do
  source "conf.sh.erb"
  owner "root"
  owner "root"
  mode "0644"
  colo = node['domain'].split(".")[-3]
  variables(
    :colo => colo,
    :instance_id => node['kafkaMirroring']['instanceid'][colo][node['hostname']]
  )
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/channel-uh1.json" do
  source 'channel-uh1.json'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/channel-uj1.json" do
  source 'channel-uj1.json'
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

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/channel-hkg1.json" do
  source 'channel-hkg1.json'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/server-uh1.properties" do
  source 'server-uh1.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/server-uj1.properties" do
  source 'server-uj1.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/server-lhr1.properties" do
  source 'server-lhr1.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/server-hkg1.properties" do
  source 'server-hkg1.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/server.properties" do
  source 'server.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/producer.properties" do
  source 'producer.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "#{node['kafkaMirroringConfig']['prodconf']}/consumer.properties" do
  source 'consumer.properties'
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

cookbook_file "#{node['kafkaMirroringConfig']['confighome']}/default.properties" do
  source 'default.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

