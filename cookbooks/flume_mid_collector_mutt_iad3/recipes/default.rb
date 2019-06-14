# coding: UTF-8
# Cookbook Name:: cerner_kafka
# Recipe:: default
# domain = flumemc.prod1001.useast1.ssp.inmobi.com
colo = node['domain'].split(".")[-3]
#colo = useast1
flumeInstallDir="#{node["flume_collector"]["base_dir"]}/flume_#{node["flume_collector"]["version"]}"
flumeTmp="/tmp/flume_#{node["flume_collector"]["version"]}.tar.gz"
flumeTmpDir="/tmp/flume"
flumeHome="#{node["flume_collector"]["base_dir"]}/flume"
flumeConf="#{flumeInstallDir}/conf"
lockFile="#{flumeInstallDir}/LOCK"

directory "#{flumeInstallDir}" do
  action :create
  owner 'flume'
  mode 00755
end

directory node["flume_collector"]["pid_dir"] do
  action :create
  owner 'flume'
  mode 00755
end

directory "#{flumeTmpDir}" do
  action :create
  owner 'flume'
  mode 00755
end

%w[/data/d1/flume /data/d1/flume/spool /data/d1/flume/databus /var/log/flume].each do |path|
  directory path do
    owner 'flume'
    mode '0755'
    action :create
  end
end

%w[/data/d1/flume/locker].each do |path|
  directory path do
    owner 'flume'
    group 'users'
    mode '0755'
    action :create
  end
end

remote_file "#{flumeTmp}" do
  action :create_if_missing
  source node["flume_collector"]["download_url"]
  backup false
end

execute "untar flume binary" do
  cwd flumeTmpDir
  command "tar -xvf #{flumeTmp}; mv apache-flume-#{node["flume_collector"]["version"]}-bin/* #{flumeInstallDir}/"
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

template "#{flumeConf}/flume-mid-collector.properties" do
  source "flume-mid-collector.properties.erb"
  owner "flume"
  mode  00644
  # colo = node['domain'].split(".")[-3]
  colo = 'useast1'
  variables(
    :sources =>node["flume_collector"]["midcollector_sources"][colo],
    :channels =>node["flume_collector"]["midcollector_channels"][colo],
    :sinks =>node["flume_collector"]["midcollector_sinks"][colo],
    :spooldir =>node["flume_collector"]["spool_dir"],
    :kafkazookeeper =>node["flume_collector"]["kafka_zookeeper"]['dfw1'],
    :colo => colo
  )
end


cookbook_file "#{flumeConf}/flume-env.sh" do
  source "flume-env.sh"
  mode "0644"
end

cookbook_file "#{flumeConf}/logback.xml" do
  source "flume-logback.xml"
  mode "0664"
end

execute "chown flume directory" do
  command "chown -R flume #{flumeInstallDir}"
end

execute "bin execute permissions" do
  command "chmod +x #{flumeInstallDir}/bin/*"
end

link "#{flumeHome}" do
  owner 'flume'
  to "#{flumeInstallDir}"
  link_type :symbolic
end
