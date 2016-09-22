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

link "#{flumeHome}" do
  owner 'flume'
  to "#{flumeInstallDir}"
  link_type :symbolic
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
  only_if do
    File.exists? "#{flumeConf}"
  end
end

cookbook_file "#{flumeConf}/flume-env.sh" do
  source "flume-env.sh"
  mode "0644"
  only_if do
    File.exists? "#{flumeConf}"
  end
end

execute "chown flume directory" do
  command "chown -R flume #{flumeInstallDir}"
end

#HEALTH CHECK
package "scribe-scripts" do
  version node['flume_collector']['scribescripts']
  action :install
  options '--force-yes'
end

directory "/etc/flume_health" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
directory "/etc/flume_health/flume_healthcheck" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
directory "/etc/flume_health/flume_healthcheck/log" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
template "/etc/flume_health/flume_healthcheck/run" do
  source "flume_healthcheck.erb"
  owner "root"
  group "root"
  mode "0755"
end
template "/etc/flume_health/flume_healthcheck/log/run" do
  source "flume_logrun.erb"
  owner "root"
  group "root"
  mode "0755"
end

link '/service/flume_healthcheck' do
  to '/etc/flume_health/flume_healthcheck'
end

