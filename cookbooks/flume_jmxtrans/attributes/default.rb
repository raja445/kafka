# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default

default["flume_jmxtrans"]["package"] = "jmxtrans-263.deb"
default["kafka"]["package_url"] = "http://plgw4001.grid.dfw1.inmobi.com/deb/jmxtrans-263.deb"
default['kafka']['mrelay']['dfw1'] = "metrics-relay.grid.dfw1.inmobi.com"
default['kafka']['mrelay']['lhr1'] = "metrics-relay.grid.lhr1.inmobi.com"
default['kafka']['mrelay']['pek1'] = "metrics-relay.grid.pek1.inmobi.com"
default['kafka']['mrelay']['dfw2'] = "metrics-relay.grid.dfw2.inmobi.com"
default['cluster_name'] = {'dfw1' => 'DFW1_Onyx', 'dfw2' => 'dfw2-garnet', 'lhr1' => 'LHR1_Emerald', 'pek1' => 'pek1-pyrite'}
