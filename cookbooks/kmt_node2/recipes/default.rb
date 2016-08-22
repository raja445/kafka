# could be improved to run only on update
cookbook_file "/opt/inmobi/bin/KafkaMirroring/conf.sh" do
  source 'conf.sh'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "/opt/inmobi/config/KafkaMirroringConfig/prod/channel-uh1.json" do
  source 'channel-uh1.json'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

cookbook_file "/opt/inmobi/config/KafkaMirroringConfig/default.properties" do
  source 'default.properties'
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end
