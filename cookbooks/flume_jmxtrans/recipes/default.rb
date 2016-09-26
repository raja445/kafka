# coding: UTF-8
# Cookbook Name:: cerner_kafka
# Recipe:: default
#cookbook_file "/tmp/#{node["flume_jmxtrans"]["package"]}" do
#    source "jmxtrans-253.deb"
#    owner "root"
#    group "root"
#    mode "0444"
#end

remote_file "/tmp/#{node["flume_jmxtrans"]["package"]}" do
  action :create_if_missing
  source node["kafka"]["package_url"]
  backup false
end


#The following did'nt work.
dpkg_package "jmxtrans" do
    package_name "jmxtrans"
    provider  Chef::Provider::Package::Dpkg
    source "/tmp/#{node["flume_jmxtrans"]["package"]}"
    action :install
end

cookbook_file "/usr/share/jmxtrans/jmxtrans.sh" do
  source "jmxtrans.sh"
  mode "0655"
end

cookbook_file "/etc/default/jmxtrans" do
  source "jmxtrans_default"
  mode "0644"
end

template "/var/lib/jmxtrans/flume.json" do
  source "kafka.json.erb"
  owner "jmxtrans"
  group "jmxtrans"
  mode "0644"
  colo = node['domain'].split(".")[-3]
  variables(
    :host => node['hostname'],
    :fqdn => node['fqdn'],
    :colo => colo,
    :cluster_name => node['cluster_name'][colo],
    :graphite_host => node['kafka']['mrelay'][colo],
  )
end

