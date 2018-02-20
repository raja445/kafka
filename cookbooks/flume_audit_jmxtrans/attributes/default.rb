# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default

default["flume_jmxtrans"]["package"] = "jmxtrans-263.deb"
default["kafka"]["package_url"] = "http://plgw4001.grid.dfw1.inmobi.com/deb/jmxtrans-263.deb"
default['kafka']['mrelay']['dfw1'] = "metrics-relay.grid.dfw1.inmobi.com"
default['kafka']['mrelay']['pek1'] = "metrics-relay.grid.pek1.inmobi.com"
default['kafka']['mrelay']['dfw2'] = "metrics-relay.grid.dfw2.inmobi.com"
default['kafka']['mrelay']['ams1'] = "metrics-relay.grid.ams1.inmobi.com"
default['cluster_name'] = {'dfw1' => 'DFW1_Onyx', 'dfw2' => 'dfw2-garnet', 'pek1' => 'pek1-pyrite', 'ams1' => 'ams1-azurite'}
