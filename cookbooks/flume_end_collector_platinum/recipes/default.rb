# coding: UTF-8
# Cookbook Name:: cerner_kafka
# Recipe:: default
colo = node['domain'].split(".")[-3]
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

%w[/data/d1/flume /data/d1/flume/spool /data/d1/flume/databus /var/log/flume /data/d1/flume/spool/hdfslocalsecure-channel /data/d1/flume/spool/hdfsmergesecure-channel /data/d1/flume/spool/platinumhdfssecure-channel].each do |path|
  directory path do
    owner 'flume'
    mode '0755'
    action :create
  end
end

%w[/data/d1/secure /data/d1/secure/flume /data/d1/secure/flume/databus].each do |path|
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


template "#{flumeConf}/flume-end-collector.properties" do
  source "flume-end-collector.properties.erb"
  owner "flume"
  mode  00644
  variables(
    :sources =>node["flume_collector"]["endcollector_sources"][colo],
    :platinum_hdfs_sinks =>node["flume_collector"]["endcollector_platinum_hdfs_sinks"][colo],
    :platinum_hdfs_channels =>node["flume_collector"]["endcollector_platinum_hdfs_channels"][colo],
    :platinumzookeeper =>node["flume_collector"]["kafka_zookeeper"]['platinum'],
    :allchannels =>node["flume_collector"]["endcollector_all_channels"][colo],
    :allsinks =>node["flume_collector"]["endcollector_all_sinks"][colo],
    :spooldir =>node["flume_collector"]["spool_dir"],
    :mergesrc_consumer_gpsize =>node["flume_collector"]["mergesrc_consumer_gpsize"][colo],
    :platinum_retention_topics=>node["flume_collector"]["endcollector_platinum_retention_topics"][colo],
    :platinum_secure_hdfs_sinks =>node["flume_collector"]["endcollector_platinum_secure_hdfs_sinks"][colo],
    :platinum_secure_hdfs_channels =>node["flume_collector"]["endcollector_platinum_secure_hdfs_channels"][colo],
    :kafkazookeeper =>node["flume_collector"]["kafka_zookeeper"][colo],
    :kafkabrokers =>node["flume_collector"]["kafka_brokers"][colo],
    :keytab =>node["flume_collector"]["keytab"],
    :colo => colo
  )

end

template "#{flumeConf}/kafka.jaas" do
  source "kafka.jaas.erb"
  owner "flume"
  mode  00644
end

cookbook_file "#{flumeConf}/flume-env.sh" do
  source "flume-env.sh"
  mode "0644"
end

cookbook_file "#{flumeConf}/logback.xml" do
  source "flume-logback.xml"
  mode "0664"
end

if ((colo == 'uh1') || (colo == 'dfw1'))
cookbook_file "#{flumeConf}/log4j.xml" do
  source "log4j.xml"
  mode "0644"
end
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

#HEALTH CHECK
#package "scribe-scripts" do
#  version node['flume_collector']['scribescripts']
#  action :install
#  options '--force-yes'
#end

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
directory "/etc/flume_health/flume_healthcheck/log/main" do
  owner 'nobody'
  group 'nogroup'
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


