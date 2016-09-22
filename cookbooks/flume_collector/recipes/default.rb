# coding: UTF-8
# Cookbook Name:: cerner_kafka
# Recipe:: default
# coding: UTF-8
# Cookbook Name:: cerner_kafka
# Recipe:: default

flumeInstallDir="#{node["flume_collector"]["base_dir"]}/flume_#{node["flume_collector"]["version"]}"
flumeTmp="/tmp/flume_#{node["flume_collector"]["version"]}.tar.gz"
flumeHome="#{node["flume_collector"]["base_dir"]}/flume"
lockFile="#{flumeInstallDir}/LOCK"

directory "#{flumeInstallDir}" do
  action :create
  owner 'flume'
  mode 00755
end

remote_file "#{flumeTmp}" do
  action :create_if_missing
  source node["flume_collector"]["download_url"]
  backup false
end

execute "untar flume binary" do
  cwd flumeInstallDir
  command "tar -xvf #{flumeTmp}"
  not_if do
    File.exists? "#{lockFile}"
  end
end

link "#{flumeHome}" do
  owner 'flume'
  to "#{flumeInstallDir}"
  link_type :symbolic
end


execute "untar flume binary" do
  command "touch #{lockFile}"
  not_if do
    File.exists? "#{lockFile}"
  end
end

