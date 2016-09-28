# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default

default["collectd"]["cluster"]['hkg1'] = 'HKG1_Opal'
default["collectd"]["graphite"]['hkg1'] = 'metrics-relay.grid.hkg1.inmobi.com'
default["collectd"]["cluster"]['uh1'] = 'UH1_Krypton'
default["collectd"]["graphite"]['uh1'] = 'metrics-relay.grid.uh1.inmobi.com'
default["collectd"]["cluster"]['dfw1'] = 'DFW1_Onyx'
default["collectd"]["graphite"]['dfw1'] = 'metrics-relay.grid.dfw1.inmobi.com'
default["collectd"]["graphite"]['port'] = '2020'
default["collectd"]["graphite"]['metrics_type'] = 'sys'
default["collectd"]["graphite"]['env'] = 'prod'

