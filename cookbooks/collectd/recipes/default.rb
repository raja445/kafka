# coding: UTF-8
# Cookbook Name:: cerner_kafka
# Recipe:: default
#cookbook_file "/tmp/#{node["flume_jmxtrans"]["package"]}" do
#    source "jmxtrans-253.deb"
#    owner "root"
#    group "root"
#    mode "0444"
#end

package 'inmobi-adserve-collectd' do
  version '1.4'
  action :install
end

package 'libltdl7' do
  action :install
end

directory "/etc/collectd" do
  action :create
  owner 'root'
  mode 00755
end

template '/etc/collectd/collectd.conf' do
  source "flume_collectd.conf.erb"
  owner "root"
  group "root"
  mode "0755"
  colo = node['domain'].split(".")[-3]
  variables(
    :cluster =>node["collectd"]["cluster"][colo],
    :graphite_host =>node["collectd"]["graphite"][colo],
    :graphite_port =>node["collectd"]["graphite"]['port'],
    :metrics_type =>node["collectd"]["graphite"]['metrics_type'],
    :graphite_env =>node["collectd"]["graphite"]['env'],
    :colo => colo
  )
end

