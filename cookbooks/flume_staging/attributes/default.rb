# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.36"
default["flume_collector"]["download_url"] = "http://glvm1014.grid.uh1.inmobi.com/tar/apache-flume-1.6.0.36-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"

# Kafka Brokers in each colo
default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkm4006.grid.dfw1.inmobi.com:9092,oxkm4007.grid.dfw1.inmobi.com:9092,oxgs4038.grid.dfw1.inmobi.com:9092"

# Zookeeper Quorum in each colo
default["flume_collector"]["kafka_zookeeper"]['dfw1']  = "oxkm4006.grid.dfw1.inmobi.com:2181,oxkm4007.grid.dfw1.inmobi.com:2181,oxgs4038.grid.dfw1.inmobi.com:2181"


#Flume Agents
default["flume_collector"]["flume_agent_host"]['dfw1']  = "oxns4002.grid.dfw1.inmobi.com"

default["flume_collector"]["mergesrc_consumer_gpsize"]['dfw1']  = "4"

default["flume_collector"]["sinkworkerthreads"]['dfw1']  = "78"

#number of sinkworkerthreads
default["flume_collector"]["mergesinkworkerthreads"]['dfw1']  = "64"

#number of avrosinkworkerthreads
default["flume_collector"]["avrosinkworkerthreads"]['dfw1']  = "16"




######################################################### DFW1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['dfw1']  = "testmerge"
default["flume_collector"]["endcollector_merge_retention_topics"]['dfw1']  = "testmerge"

default["flume_collector"]["endcollector_all_channels"]['dfw1']  = "spillable"

default["flume_collector"]["endcollector_all_sinks"]['dfw1'] = "kafkasink"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['dfw1']  = {
     "zipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"},
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['dfw1']  = ["spillable"]

#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['dfw1']  = {
     "kafkasink" => {:channel => "spillable"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['dfw1']  = {
     "mergekafkasink" => {:channel => "mergespillable"}
}

default["flume_collector"]["endcollector_merged_avro_sinks"]['dfw1']  = {
     "dfw1-mergesink1" => {:channel => "dfw1-to-dfw1-channel",:flumevip =>"oxfl4001.grid.dfw1.inmobi.com"},
     "dfw1-mergesink2" => {:channel => "dfw1-to-dfw1-channel",:flumevip =>"oxfl4002.grid.dfw1.inmobi.com"},
     "dfw1-mergesink3" => {:channel => "dfw1-to-dfw1-channel",:flumevip =>"oxfl4003.grid.dfw1.inmobi.com"},
     "lhr1-mergesink" => {:channel => "dfw1-to-lhr1-channel",:flumevip =>"merge-flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink1" => {:channel => "dfw1-to-pek1-channel",:flumevip =>"pykm4001.grid.pek1.inmobi.com"},
     "pek1-mergesink2" => {:channel => "dfw1-to-pek1-channel",:flumevip =>"pykm4002.grid.pek1.inmobi.com"},
     "pek1-mergesink3" => {:channel => "dfw1-to-pek1-channel",:flumevip =>"pykm4003.grid.pek1.inmobi.com"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['dfw1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"onyx"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['dfw1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"onyx"}
}
######################################################### End Of DFW1 ###################################################################

