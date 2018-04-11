# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.49"
default["flume_collector"]["download_url"] = "http://plgw4001.grid.dfw1.inmobi.com/tar/apache-flume-1.6.0.49-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"

default["flume_collector"]["keytab"]  = "/etc/security/keytabs/flume.service.keytab"

# Kafka Brokers in each colo
default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9093,oxkf4002.grid.dfw1.inmobi.com:9093,oxkf4003.grid.dfw1.inmobi.com:9093,oxkf4008.grid.dfw1.inmobi.com:9093,oxkf4009.grid.dfw1.inmobi.com:9093,oxkf4010.grid.dfw1.inmobi.com:9093,oxkf4011.grid.dfw1.inmobi.com:9093,oxkf4012.grid.dfw1.inmobi.com:9093,oxkf4013.grid.dfw1.inmobi.com:9093,oxkf4014.grid.dfw1.inmobi.com:9093,oxkf4015.grid.dfw1.inmobi.com:9093,oxkf4016.grid.dfw1.inmobi.com:9093,oxkf4017.grid.dfw1.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['pek1']  = "pykf4001.grid.pek1.inmobi.com:9093,pykf4002.grid.pek1.inmobi.com:9093,pykf4003.grid.pek1.inmobi.com:9093,pykf4004.grid.pek1.inmobi.com:9093,pykf4005.grid.pek1.inmobi.com:9093,pykf4006.grid.pek1.inmobi.com:9093,pykf4007.grid.pek1.inmobi.com:9093,pykf4008.grid.pek1.inmobi.com:9093,pykf4009.grid.pek1.inmobi.com:9093,pykf4010.grid.pek1.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['dfw2']  = "gakf4001.grid.dfw2.inmobi.com:9093,gakf4002.grid.dfw2.inmobi.com:9093,gakf4003.grid.dfw2.inmobi.com:9093,gakf4004.grid.dfw2.inmobi.com:9093,gakf4005.grid.dfw2.inmobi.com:9093,gakf4006.grid.dfw2.inmobi.com:9093,gakf4007.grid.dfw2.inmobi.com:9093,gakf4008.grid.dfw2.inmobi.com:9093,gakf4009.grid.dfw2.inmobi.com:9093,gakf4010.grid.dfw2.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['ams1']  = "azkf4001.grid.ams1.inmobi.com:9093,azkf4002.grid.ams1.inmobi.com:9093,azkf4003.grid.ams1.inmobi.com:9093,azkf4004.grid.ams1.inmobi.com:9093,azkf4005.grid.ams1.inmobi.com:9093,azkf4006.grid.ams1.inmobi.com:9093,azkf4007.grid.ams1.inmobi.com:9093,azkf4008.grid.ams1.inmobi.com:9093:azkf4009.grid.ams1.inmobi.com:9093,azkf4010.grid.ams1.inmobi.com:9093,azkf4011.grid.ams1.inmobi.com:9093,azkf4012.grid.ams1.inmobi.com:9093,azkf4013.grid.ams1.inmobi.com:9093,azkf4014.grid.ams1.inmobi.com:9093,azkf4015.grid.ams1.inmobi.com:9093"

# Zookeeper Quorum in each colo
default["flume_collector"]["kafka_zookeeper"]['dfw1']  = "kafka-zookeeper-1.grid.dfw1.inmobi.com:2181,kafka-zookeeper-2.grid.dfw1.inmobi.com:2181,kafka-zookeeper-3.grid.dfw1.inmobi.com:2181,kafka-zookeeper-4.grid.dfw1.inmobi.com:2181,kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['pek1']  = "kafka-zookeeper-1.grid.pek1.inmobi.com:2181,kafka-zookeeper-2.grid.pek1.inmobi.com:2181,kafka-zookeeper-3.grid.pek1.inmobi.com:2181,kafka-zookeeper-4.grid.pek1.inmobi.com:2181,kafka-zookeeper-5.grid.pek1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['dfw2']  = "kafka-zookeeper-1.grid.dfw2.inmobi.com:2181,kafka-zookeeper-2.grid.dfw2.inmobi.com:2181,kafka-zookeeper-3.grid.dfw2.inmobi.com:2181,kafka-zookeeper-4.grid.dfw2.inmobi.com:2181,kafka-zookeeper-5.grid.dfw2.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['ams1']  = "kafka-zookeeper-1.grid.ams1.inmobi.com:2181,kafka-zookeeper-2.grid.ams1.inmobi.com:2181,kafka-zookeeper-3.grid.ams1.inmobi.com:2181,kafka-zookeeper-4.grid.ams1.inmobi.com:2181,kafka-zookeeper-5.grid.ams1.inmobi.com:2181"


#Flume Agents
default["flume_collector"]["flume_agent_host"]['pek1']  = "oxfl4001.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['dfw1']  = "oxfl4001.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['dfw2']  = "oxfl4001.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['ams1']  = "oxfl4001.grid.dfw1.inmobi.com"

#Flume merge source consumer groupsize
default["flume_collector"]["mergesrc_consumer_gpsize"]['pek1']  = "4"
default["flume_collector"]["mergesrc_consumer_gpsize"]['dfw1']  = "4"
default["flume_collector"]["mergesrc_consumer_gpsize"]['dfw2']  = "4"
default["flume_collector"]["mergesrc_consumer_gpsize"]['ams1']  = "4"

#number of sinkworkerthreads
default["flume_collector"]["sinkworkerthreads"]['pek1']  = "64"
default["flume_collector"]["sinkworkerthreads"]['dfw1']  = "88"
default["flume_collector"]["sinkworkerthreads"]['lhr1']  = "88"
default["flume_collector"]["sinkworkerthreads"]['dfw2']  = "64"
default["flume_collector"]["sinkworkerthreads"]['ams1']  = "64"

#number of sinkworkerthreads
default["flume_collector"]["mergesinkworkerthreads"]['pek1']  = "64"
default["flume_collector"]["mergesinkworkerthreads"]['dfw1']  = "64"
default["flume_collector"]["mergesinkworkerthreads"]['lhr1']  = "64"
default["flume_collector"]["mergesinkworkerthreads"]['dfw2']  = "64"
default["flume_collector"]["mergesinkworkerthreads"]['ams1']  = "64"

#number of avrosinkworkerthreads
default["flume_collector"]["avrosinkworkerthreads"]['pek1']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['dfw1']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['lhr1']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['dfw2']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['ams1']  = "16"


######################################################### DFW1 ###################################################################
default["flume_collector"]["endcollector_platinum_retention_topics"]['dfw1']  = "ifc_photon_enriched_pb_dfw1,ifc_photon_nonenriched_pb_dfw1"

default["flume_collector"]["endcollector_all_channels"]['dfw1']  = "platinumhdfs-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['dfw1'] = "platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 platinumhdfs-sink4 platinumhdfs-sink5 platinumhdfs-sink6 platinumhdfs-sink7 platinumhdfs-sink8 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3 platinumhdfssecure-sink4 platinumhdfssecure-sink5 platinumhdfssecure-sink6 platinumhdfssecure-sink7 platinumhdfssecure-sink8"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['dfw1']  = {
     "hdfsplatinumsrc1" => {
         :src_category => "platinumhdfs",
         :consumer_group => "dfw1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_dfw1,ifc_photon_nonenriched_pb_dfw1"},
     "hdfsplatinumsrc2" => {
         :src_category => "platinumhdfs",
         :consumer_group => "dfw1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_dfw1,ifc_photon_nonenriched_pb_dfw1"},
     "hdfsplatinumsrc3" => {
         :src_category => "platinumhdfs",
         :consumer_group => "dfw1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_dfw1,ifc_photon_nonenriched_pb_dfw1"},
     "hdfsplatinumsrc4" => {
         :src_category => "platinumhdfs",
         :consumer_group => "dfw1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_dfw1,ifc_photon_nonenriched_pb_dfw1"},
     "hdfsplatinumsrc5" => {
         :src_category => "platinumhdfs",
         :consumer_group => "dfw1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_dfw1,ifc_photon_nonenriched_pb_dfw1"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['dfw1']  = ["platinumhdfs-channel"]

#Configure the sinks for the Flume Collector

default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['dfw1']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink4" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink5" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink6" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink7" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink8" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_sinks"]['dfw1']  = {
     "platinumhdfssecure-sink1" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink2" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink3" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink4" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink5" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink6" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink7" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink8" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['dfw1']  = ["platinumhdfssecure-channel"]

######################################################### End Of DFW1 ###################################################################



######################################################### DFW2 ###################################################################
default["flume_collector"]["endcollector_platinum_retention_topics"]['dfw2']  = "ifc_photon_enriched_pb_dfw2,ifc_photon_nonenriched_pb_dfw2"

default["flume_collector"]["endcollector_all_channels"]['dfw2']  = "platinumhdfs-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['dfw2'] = "platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 platinumhdfs-sink4 platinumhdfs-sink5 platinumhdfs-sink6 platinumhdfs-sink7 platinumhdfs-sink8 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3 platinumhdfssecure-sink4 platinumhdfssecure-sink5 platinumhdfssecure-sink6 platinumhdfssecure-sink7 platinumhdfssecure-sink8"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['dfw2']  = {
     "hdfsplatinumsrc1" => {
         :src_category => "platinumhdfs",
         :consumer_group => "dfw2-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_dfw2,ifc_photon_nonenriched_pb_dfw2"},
     "hdfsplatinumsrc2" => {
         :src_category => "platinumhdfs",
         :consumer_group => "dfw2-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_dfw2,ifc_photon_nonenriched_pb_dfw2"},
     "hdfsplatinumsrc3" => {
         :src_category => "platinumhdfs",
         :consumer_group => "dfw2-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_dfw2,ifc_photon_nonenriched_pb_dfw2"},
     "hdfsplatinumsrc4" => {
         :src_category => "platinumhdfs",
         :consumer_group => "dfw2-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_dfw2,ifc_photon_nonenriched_pb_dfw2"},
     "hdfsplatinumsrc5" => {
         :src_category => "platinumhdfs",
         :consumer_group => "dfw2-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_dfw2,ifc_photon_nonenriched_pb_dfw2"},
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['dfw2']  = ["platinumhdfs-channel"]

#Configure the sinks for the Flume Collector

default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['dfw2']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink4" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink5" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink6" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink7" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink8" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_sinks"]['dfw2']  = {
     "platinumhdfssecure-sink1" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink2" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink3" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink4" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink5" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink6" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink7" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink8" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['dfw2']  = ["platinumhdfssecure-channel"]

######################################################### End Of DFW2 ###################################################################



######################################################### AMS1 ###################################################################
default["flume_collector"]["endcollector_platinum_retention_topics"]['ams1']  = "ifc_photon_enriched_pb_ams1,ifc_photon_nonenriched_pb_ams1"

default["flume_collector"]["endcollector_all_channels"]['ams1']  = "platinumhdfs-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['ams1'] = "platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 platinumhdfs-sink4 platinumhdfs-sink5 platinumhdfs-sink6 platinumhdfs-sink7 platinumhdfs-sink8 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3 platinumhdfssecure-sink4 platinumhdfssecure-sink5 platinumhdfssecure-sink6 platinumhdfssecure-sink7 platinumhdfssecure-sink8"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['ams1']  = {
     "hdfsplatinumsrc1" => {
         :src_category => "platinumhdfs",
         :consumer_group => "ams1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "ifc_photon_enriched_pb_ams1,ifc_photon_nonenriched_pb_ams1"},
     "hdfsplatinumsrc2" => {
         :src_category => "platinumhdfs",
         :consumer_group => "ams1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "ifc_photon_enriched_pb_ams1,ifc_photon_nonenriched_pb_ams1"},
     "hdfsplatinumsrc3" => {
         :src_category => "platinumhdfs",
         :consumer_group => "ams1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "ifc_photon_enriched_pb_ams1,ifc_photon_nonenriched_pb_ams1"},
     "hdfsplatinumsrc4" => {
         :src_category => "platinumhdfs",
         :consumer_group => "ams1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "ifc_photon_enriched_pb_ams1,ifc_photon_nonenriched_pb_ams1"},
     "hdfsplatinumsrc5" => {
         :src_category => "platinumhdfs",
         :consumer_group => "ams1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "ifc_photon_enriched_pb_ams1,ifc_photon_nonenriched_pb_ams1"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['ams1']  = ["platinumhdfs-channel"]

#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['ams1']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink4" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink5" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink6" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink7" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink8" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_sinks"]['ams1']  = {
     "platinumhdfssecure-sink1" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink2" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink3" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink4" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink5" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink6" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink7" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink8" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['ams1']  = ["platinumhdfssecure-channel"]

######################################################### End Of AMS1 ###################################################################


######################################################### PEK1 ###################################################################
default["flume_collector"]["endcollector_platinum_retention_topics"]['pek1']  = "ifc_photon_enriched_pb_pek1,ifc_photon_nonenriched_pb_pek1"

default["flume_collector"]["endcollector_all_channels"]['pek1']  = "platinumhdfs-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['pek1'] = "platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 platinumhdfs-sink4 platinumhdfs-sink5 platinumhdfs-sink6 platinumhdfs-sink7 platinumhdfs-sink8 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3 platinumhdfssecure-sink4 platinumhdfssecure-sink5 platinumhdfssecure-sink6 platinumhdfssecure-sink7 platinumhdfssecure-sink8"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['pek1']  = {
     "hdfsplatinumsr1" => {
         :src_category => "platinumhdfs",
         :consumer_group => "pek1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_pek1,ifc_photon_nonenriched_pb_pek1"},
     "hdfsplatinumsrc2" => {
         :src_category => "platinumhdfs",
         :consumer_group => "pek1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_pek1,ifc_photon_nonenriched_pb_pek1"},
     "hdfsplatinumsrc3" => {
         :src_category => "platinumhdfs",
         :consumer_group => "pek1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_pek1,ifc_photon_nonenriched_pb_pek1"},
     "hdfsplatinumsrc4" => {
         :src_category => "platinumhdfs",
         :consumer_group => "pek1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_pek1,ifc_photon_nonenriched_pb_pek1"},
     "hdfsplatinumsrc5" => {
         :src_category => "platinumhdfs",
         :consumer_group => "pek1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
	 :'kafka.topics' => "ifc_photon_enriched_pb_pek1,ifc_photon_nonenriched_pb_pek1"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['pek1']  = ["platinumhdfs-channel"]

#Configure the sinks for the Flume Collector

default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['pek1']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink4" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink5" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink6" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink7" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink8" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_sinks"]['pek1']  = {
     "platinumhdfssecure-sink1" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink2" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink3" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink4" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink5" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink6" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink7" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink8" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['pek1']  = ["platinumhdfssecure-channel"]

######################################################### End Of PEK1 ###################################################################
