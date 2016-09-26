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
end

#HEALTH CHECK

directory "/etc/svc_collectd" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
directory "/etc/svc_collectd/log" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
directory "/etc/svc_collectd/log/main" do
  owner 'nobody'
  group 'nogroup'
  mode '0755'
  action :create
end
template "/etc/svc_collectd/run" do
  source "collectd_run.erb"
  owner "root"
  group "root"
  mode "0755"
end
template "/etc/svc_collectd/log/run" do
  source "collectd_logrun.erb"
  owner "root"
  group "root"
  mode "0755"
end

link '/service/svc_collectd' do
  to '/etc/svc_collectd'
end

