# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default

default["flume_jmxtrans"]["package"] = "jmxtrans-263.deb"
default["kafka"]["package_url"] = "http://glvm1014.grid.uh1.inmobi.com/deb/jmxtrans-263.deb"
default['kafka']['mrelay']['dfw1'] = "metrics-relay.grid.dfw1.inmobi.com"
default['kafka']['mrelay']['tk1'] = "metrics-relay.grid.dfw1.inmobi.com"
default['cluster_name'] = {'dfw1' => 'DFW1_Onyx', 'tk1' => 'DFW1_Onyx'}
