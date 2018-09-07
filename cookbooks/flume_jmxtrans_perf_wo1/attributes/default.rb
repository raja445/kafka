# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default

default["flume_jmxtrans"]["package"] = "jmxtrans-263.deb"
default["kafka"]["package_url"] = "http://plgw4001.grid.dfw1.inmobi.com/deb/jmxtrans-263.deb"
default['kafka']['mrelay']['dfw1'] = "metrics-relay.grid.dfw1.inmobi.com"
default['kafka']['mrelay']['wo1'] = "metrics-relay.grid.dfw1.inmobi.com"
default['cluster_name'] = {'dfw1' => 'DFW1_Onyx', 'wo1' => 'DFW1_Onyx_wo1'}
