# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default

default["flume_jmxtrans"]["package"] = "jmxtrans-253.deb"
default["kafka"]["package_url"] = "http://glvm1014.grid.uh1.inmobi.com/deb/jmxtrans-253.deb"
default['kafka']['mrelay']['hkg1'] = "metrics-relay.grid.hkg1.inmobi.com"
default['kafka']['mrelay']['uh1'] = "metrics-relay.grid.uh1.inmobi.com"
default['cluster_name'] = {'dfw1' => 'DFW1_Onyx', 'uh1' => 'UH1_Krypton', 'hkg1' => 'HKG1_Opal', 'lhr1' => 'LHR1_Emerald'}
