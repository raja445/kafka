# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default

default["collectd"]["cluster"]['hkg1'] = 'HKG1_Opal'
default["collectd"]["graphite"]['hkg1'] = 'metrics-relay.grid.hkg1.inmobi.com'
default["collectd"]["graphite"]['port'] = '2020'
default["collectd"]["graphite"]['metrics_type'] = 'sys'
default["collectd"]["graphite"]['env'] = 'prod'

