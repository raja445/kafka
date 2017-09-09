# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.36"
default["flume_collector"]["download_url"] = "http://glvm1014.grid.uh1.inmobi.com/tar/apache-flume-1.6.0.36-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"

default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9092,oxkf4002.grid.dfw1.inmobi.com:9092,oxkf4003.grid.dfw1.inmobi.com:9092,oxkf4008.grid.dfw1.inmobi.com:9092,oxkf4009.grid.dfw1.inmobi.com:9092,oxkf4010.grid.dfw1.inmobi.com:9092,oxkf4011.grid.dfw1.inmobi.com:9092,oxkf4012.grid.dfw1.inmobi.com:9092,oxkf4013.grid.dfw1.inmobi.com:9092,oxkf4014.grid.dfw1.inmobi.com:9092,oxkf4015.grid.dfw1.inmobi.com:9092,oxkf4016.grid.dfw1.inmobi.com:9092,oxkf4017.grid.dfw1.inmobi.com:9092"

default["flume_collector"]["kafka_zookeeper"]['dfw1']  = "kafka-zookeeper-1.grid.dfw1.inmobi.com:2181,kafka-zookeeper-2.grid.dfw1.inmobi.com:2181,kafka-zookeeper-3.grid.dfw1.inmobi.com:2181,kafka-zookeeper-4.grid.dfw1.inmobi.com:2181,kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"


#Configure the sources for the Flume Collector
default["flume_collector"]["midcollector_sources"]['ev1']  = {
     "zipavrosrc" => {
         :type => "avro",
         :'kafka.zookeeper' => node["flume_collector"]["kafka_zookeeper"]['dfw1'],
         :bind => "0.0.0.0",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"}
       }

#Configure the channels for the UH1 Flume Collector
default["flume_collector"]["midcollector_channels"]['ev1']  = {
     "spillable" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "50000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"}
         }


#Configure the sinks for the Flume Collector
default["flume_collector"]["midcollector_sinks"]['ev1']  = {"avrosink1","avrosink2","avrosink3","avrosink4","avrosink5","avrosink6","avrosink7","avrosink8","avrosink9","avrosink10","avrosink11","avrosink12","avrosink13","avrosink14","avrosink15","avrosink16","avrosink17","avrosink18"}
