# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default


default["flume_jmxtrans"]["package"] = "jmxtrans-263.deb"
default["kafka"]["package_url"] = "http://glvm1014.grid.uh1.inmobi.com/deb/jmxtrans-263.deb"
default['kafka']['mrelay']['lhr1'] = "skyhook-metrics-relay.grid.lhr1.inmobi.com"
default['cluster_name'] = {'lhr1' => 'lhr1-azure'}
