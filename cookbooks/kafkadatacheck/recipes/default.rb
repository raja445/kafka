# coding: UTF-8

directory "#{node["kafkadatacheck"]["base_dir"]}" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

remote_file "#{node["kafkadatacheck"]["zipfile_path"]}" do
  action :create_if_missing
  source node["kafkadatacheck"]["download_url"]
  mode 00644
  backup false
end

execute "untar kafkadatacheck scripts" do
  cwd node["kafkadatacheck"]["base_dir"]
  command "tar zxf #{node["kafkadatacheck"]["zipfile_path"]}"
end


template "#{node['kafkadatacheck']['base_dir']}/kafkadatacheck/kafkadata.properties" do
  source "kafkadata.properties"
  owner "root"
  group "root"
  mode "0644"
  variables(
    :kafkadatacheck_home => "#{node['kafkadatacheck']['base_dir']}/kafkadatacheck"
  )
end

template "#{node['kafkadatacheck']['base_dir']}/kafkadatacheck/check_kafka_data" do
  source "check_kafka_data"
  owner "root"
  group "root"
  mode "0644"
  variables(
    :kafkadatacheck_home => "#{node['kafkadatacheck']['base_dir']}/kafkadatacheck"
  )
end

cookbook_file "#{node['kafkadatacheck']['base_dir']}/kafkadatacheck/kafkaDataExcep" do
  source "kafkaDataExcep"
  mode "0655"
end
