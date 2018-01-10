# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_agent"]["version"] = "1.6.0.12"
default["flume_agent"]["download_url"] = "https://artifactory.corp.inmobi.com/artifactory/generic-tarball/flume/1.6.0.12/apache-flume-1.6.0.12-bin.tar.gz"
default["flume_agent"]["base_dir"]  = "/opt/inmobi"
default["flume_agent"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_agent"]["pid_dir"]  = "/var/run/flume"
default["flume_agent"]["collector_vip"]["dfw1"]  = "flume.grid.dfw1.inmobi.com"
default["flume_agent"]["collector_vip"]["lhr1"]  = "flume.grid.lhr1.inmobi.com"
default["flume_agent"]["collector_vip"]["pek1"]  = "flume.grid.pek1.inmobi.com"
default["flume_agent"]["collector_vip"]["dfw2"]  = "flume.grid.dfw2.inmobi.com"
default["flume_agent"]["collector_vip"]["ams1"]  = "flume.grid.ams1.inmobi.com"
