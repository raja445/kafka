# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.36"
default["flume_collector"]["download_url"] = "http://plgw4001.grid.dfw1.inmobi.com/tar/apache-flume-1.6.0.36-bin.tar.gz" 
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"

default["flume_collector"]["kafka_brokers"]['dfw2']  = "gakf4001.grid.dfw2.inmobi.com:9093,gakf4002.grid.dfw2.inmobi.com:9093,gakf4003.grid.dfw2.inmobi.com:9093,gakf4004.grid.dfw2.inmobi.com:9093,gakf4005.grid.dfw2.inmobi.com:9093,gakf4006.grid.dfw2.inmobi.com:9093,gakf4007.grid.dfw2.inmobi.com:9093,gakf4008.grid.dfw2.inmobi.com:9093,gakf4009.grid.dfw2.inmobi.com:9093,gakf4010.grid.dfw2.inmobi.com:9093,gakf4011.grid.dfw2.inmobi.com:9093,gakf4012.grid.dfw2.inmobi.com:9093"

default["flume_collector"]["kafka_zookeeper"]['dfw2']  = "kafka-zookeeper-1.grid.dfw2.inmobi.com:2181,kafka-zookeeper-2.grid.dfw2.inmobi.com:2181,kafka-zookeeper-3.grid.dfw2.inmobi.com:2181,kafka-zookeeper-4.grid.dfw2.inmobi.com:2181,kafka-zookeeper-5.grid.dfw2.inmobi.com:2181"


#Configure the sources for the Flume Collector
default["flume_collector"]["midcollector_sources"]['iad3']  = {
     "zipavrosrc" => {
         :type => "avro",
         :'kafka.zookeeper' => node["flume_collector"]["kafka_zookeeper"]['dfw2'],
         :bind => "0.0.0.0",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"}
       }

#Configure the channels for the UH1 Flume Collector
default["flume_collector"]["midcollector_channels"]['iad3']  = {
     "spillable" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "50000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"}
         }


#Configure the sinks for the Flume Collector
default["flume_collector"]["midcollector_sinks"]['iad3']  = {
     "avrosink1" => {:type => "avro"},
     "avrosink2" => {:type => "avro"},
     "avrosink3" => {:type => "avro"},
     "avrosink4" => {:type => "avro"},
     "avrosink5" => {:type => "avro"},
     "avrosink6" => {:type => "avro"},
     "avrosink7" => {:type => "avro"},
     "avrosink8" => {:type => "avro"},
     "avrosink9" => {:type => "avro"},
     "avrosink10" => {:type => "avro"},
     "avrosink11" => {:type => "avro"},
     "avrosink12" => {:type => "avro"},
     "avrosink13" => {:type => "avro"},
     "avrosink14" => {:type => "avro"},
     "avrosink15" => {:type => "avro"},
     "avrosink16" => {:type => "avro"},
     "avrosink17" => {:type => "avro"},
     "avrosink18" => {:type => "avro"},
     "avrosink19" => {:type => "avro"},
     "avrosink20" => {:type => "avro"},
     "avrosink21" => {:type => "avro"},
     "avrosink22" => {:type => "avro"},
}

