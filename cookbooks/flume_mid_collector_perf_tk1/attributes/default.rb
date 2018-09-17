# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.36"
default["flume_collector"]["download_url"] = "http://plgw4001.grid.dfw1.inmobi.com/tar/apache-flume-1.6.0.36-bin.tar.gz" 
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"

default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9092,oxkf4002.grid.dfw1.inmobi.com:9092,oxkf4003.grid.dfw1.inmobi.com:9092,oxkf4008.grid.dfw1.inmobi.com:9092,oxkf4009.grid.dfw1.inmobi.com:9092,oxkf4010.grid.dfw1.inmobi.com:9092,oxkf4011.grid.dfw1.inmobi.com:9092,oxkf4012.grid.dfw1.inmobi.com:9092,oxkf4013.grid.dfw1.inmobi.com:9092,oxkf4014.grid.dfw1.inmobi.com:9092,oxkf4015.grid.dfw1.inmobi.com:9092,oxkf4016.grid.dfw1.inmobi.com:9092,oxkf4017.grid.dfw1.inmobi.com:9092"

default["flume_collector"]["kafka_zookeeper"]['dfw1']  = "kafka-zookeeper-1.grid.dfw1.inmobi.com:2181,kafka-zookeeper-2.grid.dfw1.inmobi.com:2181,kafka-zookeeper-3.grid.dfw1.inmobi.com:2181,kafka-zookeeper-4.grid.dfw1.inmobi.com:2181,kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"


#Configure the sources for the Flume Collector
default["flume_collector"]["midcollector_sources"]['tk1']  = {
     "zipavrosrc" => {
         :type => "avro",
         :'kafka.zookeeper' => node["flume_collector"]["kafka_zookeeper"]['dfw1'],
         :bind => "0.0.0.0",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"}
       }

#Configure the channels for the UH1 Flume Collector
default["flume_collector"]["midcollector_channels"]['tk1']  = {
     "spillable" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "50000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"}
         }


#Configure the sinks for the Flume Collector
default["flume_collector"]["midcollector_sinks"]['tk1']  = {
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
     "avrosink23" => {:type => "avro"},
     "avrosink24" => {:type => "avro"},
     "avrosink25" => {:type => "avro"},
     "avrosink26" => {:type => "avro"},
     "avrosink27" => {:type => "avro"},
     "avrosink28" => {:type => "avro"},
     "avrosink29" => {:type => "avro"},
     "avrosink30" => {:type => "avro"},
     "avrosink31" => {:type => "avro"},
     "avrosink32" => {:type => "avro"},
     "avrosink33" => {:type => "avro"},
     "avrosink34" => {:type => "avro"},
     "avrosink35" => {:type => "avro"},
}

