# coding: UTF-8
# Cookbook Name:: cerner_kafka
# Recipe:: default

flumeInstallDir="#{node["flume_collector"]["base_dir"]}/flume_#{node["flume_collector"]["version"]}"
flumeTmp="/tmp/flume_#{node["flume_collector"]["version"]}.tar.gz"
flumeHome="#{node["flume_collector"]["base_dir"]}/flume"
flumeConf="#{flumeHome}/conf"
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


execute "Create Lock file" do
  command "touch #{lockFile}"
  not_if do
    File.exists? "#{lockFile}"
  end
end

# Make it a template
#template "#{flumeConf}/flume-end-collector.properties" do
#  source "flume-end-collector.properties.erb"
#  owner "flume"
#  mode  00644
#end

cookbook_file "#{flumeConf}/flume-end-collector.properties" do
  source "flume-end-collector.properties"
  mode "0644"
end

cookbook_file "#{flumeConf}/flume-env.sh" do
  source "flume-env.sh"
  mode "0644"
end

execute "chown flume directory" do
  command "chown -R flume #{flumeInstallDir}"
end

