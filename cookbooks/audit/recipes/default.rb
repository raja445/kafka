# coding: UTF-8
# Cookbook Name:: cerner_kafka
# Recipe:: default
colo = node['domain'].split(".")[-3]
flumeInstallDir="#{node["audit_collector"]["base_dir"]}/flume-audit#{node["audit_collector"]["version"]}"
flumeTmp="/tmp/flume-audit#{node["audit_collector"]["version"]}.tar.gz"
flumeTmpDir="/tmp/flume_audit"
flumeHome="#{node["audit_collector"]["base_dir"]}/flume-audit"
flumeConf="#{flumeInstallDir}/conf"
lockFile="#{flumeInstallDir}/LOCK"

directory "#{flumeInstallDir}" do
  action :create
  owner 'flume'
  mode 00755
end

directory node["audit_collector"]["pid_dir"] do
  action :create
  owner 'flume'
  mode 00755
end

directory "#{flumeTmpDir}" do
  action :create
  owner 'flume'
  mode 00755
end

%w[/data/d1/secure/flume-audit /data/d1/secure/flume-audit/spool /var/log/flume-audit].each do |path|
  directory path do
    owner 'flume'
    mode '0755'
    action :create
  end
end

remote_file "#{flumeTmp}" do
  action :create_if_missing
  source node["audit_collector"]["download_url"]
  backup false
end

execute "untar flume binary" do
  cwd flumeTmpDir
  command "tar -xvf #{flumeTmp}; mv apache-flume-#{node["audit_collector"]["version"]}-bin/* #{flumeInstallDir}/"
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


template "#{flumeConf}/flume-audit-collector.properties" do
  source "flume-audit-collector.properties.erb"
  owner "flume"
  mode  00644
  variables(
    :sources =>node["audit_collector"]["auditcollector_sources"],
    :hdfs_sinks =>node["audit_collector"]["auditcollector_local_hdfs_sinks"][colo],
    :druid_sinks =>node["audit_collector"]["auditcollector_local_druid_sinks"][colo],
    :hdfs_channels =>node["audit_collector"]["auditcollector_local_hdfs_channels"],
    :druid_channels =>node["audit_collector"]["auditcollector_local_druid_channels"],
    :kafkabrokers =>node["audit_collector"]["kafka_brokers"][colo],
    :kafkazookeeper =>node["audit_collector"]["kafka_zookeeper"][colo],
    :flumeagent =>node["audit_collector"]["flume_agent_host"][colo],
    :audit_consumer_gpsize =>node["audit_collector"]["audit_consumer_gpsize"][colo],
    :allchannels =>node["audit_collector"]["auditcollector_all_channels"],
    :allsinks =>node["audit_collector"]["auditcollector_all_sinks"],
    :spooldir =>node["audit_collector"]["spool_dir"],
    :keytab =>node["audit_collector"]["keytab"],
    :mergesrc_consumer_gpsize =>node["audit_collector"]["mergesrc_consumer_gpsize"][colo],
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

if colo == 'uh1'
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

directory "/etc/flume_audit_health" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
directory "/etc/flume_audit_health/flume_audit_healthcheck" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
directory "/etc/flume_audit_health/flume_audit_healthcheck/log" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
directory "/etc/flume_audit_health/flume_audit_healthcheck/log/main" do
  owner 'nobody'
  group 'nogroup'
  mode '0755'
  action :create
end
template "/etc/flume_audit_health/flume_audit_healthcheck/run" do
  source "flume_audit_healthcheck.erb"
  owner "root"
  group "root"
  mode "0755"
end
template "/etc/flume_audit_health/flume_audit_healthcheck/log/run" do
  source "flume_logrun.erb"
  owner "root"
  group "root"
  mode "0755"
end

link '/service/flume_audit_healthcheck' do
  to '/etc/flume_audit_health/flume_audit_healthcheck'
end

