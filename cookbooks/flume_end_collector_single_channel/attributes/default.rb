# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.23"
default["flume_collector"]["download_url"] = "http://glvm1014.grid.uh1.inmobi.com/tar/apache-flume-1.6.0.23-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"

# Kafka Brokers in each colo
default["flume_collector"]["kafka_brokers"]['uh1']  = "krkf4001.grid.uh1.inmobi.com:9092,krkf4002.grid.uh1.inmobi.com:9092,krkf4003.grid.uh1.inmobi.com:9092,krkf4004.grid.uh1.inmobi.com:9092,krkf4005.grid.uh1.inmobi.com:9092,krkf4006.grid.uh1.inmobi.com:9092,krkf4007.grid.uh1.inmobi.com:9092,krkf4008.grid.uh1.inmobi.com:9092,krkf4009.grid.uh1.inmobi.com:9092,krkf4010.grid.uh1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9092,oxkf4002.grid.dfw1.inmobi.com:9092,oxkf4003.grid.dfw1.inmobi.com:9092,oxkf4008.grid.dfw1.inmobi.com:9092,oxkf4009.grid.dfw1.inmobi.com:9092,oxkf4010.grid.dfw1.inmobi.com:9092,oxkf4011.grid.dfw1.inmobi.com:9092,oxkf4012.grid.dfw1.inmobi.com:9092,oxkf4013.grid.dfw1.inmobi.com:9092,oxkf4014.grid.dfw1.inmobi.com:9092,oxkf4015.grid.dfw1.inmobi.com:9092,oxkf4016.grid.dfw1.inmobi.com:9092,oxkf4017.grid.dfw1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['lhr1']  = "erkf4001.grid.lhr1.inmobi.com:9092,erkf4002.grid.lhr1.inmobi.com:9092,erkf4003.grid.lhr1.inmobi.com:9092,erkf4004.grid.lhr1.inmobi.com:9092,erkf4005.grid.lhr1.inmobi.com:9092,erkf4006.grid.lhr1.inmobi.com:9092,erkf4007.grid.lhr1.inmobi.com:9092,erkf4008.grid.lhr1.inmobi.com:9092,erkf4009.grid.lhr1.inmobi.com:9092,erkf4010.grid.lhr1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['pek1']  = "pykf4001.grid.pek1.inmobi.com:9092,pykf4002.grid.pek1.inmobi.com:9092,pykf4003.grid.pek1.inmobi.com:9092,pykf4004.grid.pek1.inmobi.com:9092,pykf4005.grid.pek1.inmobi.com:9092,pykf4006.grid.pek1.inmobi.com:9092,pykf4007.grid.pek1.inmobi.com:9092,pykf4008.grid.pek1.inmobi.com:9092,pykf4009.grid.pek1.inmobi.com:9092,pykf4010.grid.pek1.inmobi.com:9092"

# Zookeeper Quorum in each colo
default["flume_collector"]["kafka_zookeeper"]['uh1']  = "kafka-zookeeper-1.grid.uh1.inmobi.com:2181,kafka-zookeeper-2.grid.uh1.inmobi.com:2181,kafka-zookeeper-3.grid.uh1.inmobi.com:2181,kafka-zookeeper-4.grid.uh1.inmobi.com:2181,kafka-zookeeper-5.grid.uh1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['dfw1']  = "kafka-zookeeper-1.grid.dfw1.inmobi.com:2181,kafka-zookeeper-2.grid.dfw1.inmobi.com:2181,kafka-zookeeper-3.grid.dfw1.inmobi.com:2181,kafka-zookeeper-4.grid.dfw1.inmobi.com:2181,kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['lhr1']  = "kafka-zookeeper-1.grid.lhr1.inmobi.com:2181,kafka-zookeeper-2.grid.lhr1.inmobi.com:2181,kafka-zookeeper-3.grid.lhr1.inmobi.com:2181,kafka-zookeeper-4.grid.lhr1.inmobi.com:2181,kafka-zookeeper-5.grid.lhr1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['pek1']  = "kafka-zookeeper-1.grid.pek1.inmobi.com:2181,kafka-zookeeper-2.grid.pek1.inmobi.com:2181,kafka-zookeeper-3.grid.pek1.inmobi.com:2181,kafka-zookeeper-4.grid.pek1.inmobi.com:2181,kafka-zookeeper-5.grid.pek1.inmobi.com:2181"


#Flume Agents
default["flume_collector"]["flume_agent_host"]['uh1']  = "krvm4109.grid.uh1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['pek1']  = "pyns4002.grid.pek1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['dfw1']  = "oxns4002.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['lhr1']  = "erdc4002.grid.lhr1.inmobi.com"

#Flume merge source consumer groupsize
default["flume_collector"]["mergesrc_consumer_gpsize"]['uh1']  = "8"
default["flume_collector"]["mergesrc_consumer_gpsize"]['pek1']  = "6"
default["flume_collector"]["mergesrc_consumer_gpsize"]['dfw1']  = "8"
default["flume_collector"]["mergesrc_consumer_gpsize"]['lhr1']  = "8"

#number of sinkworkerthreads
default["flume_collector"]["sinkworkerthreads"]['uh1']  = "64"
default["flume_collector"]["sinkworkerthreads"]['pek1']  = "38"
default["flume_collector"]["sinkworkerthreads"]['dfw1']  = "64"
default["flume_collector"]["sinkworkerthreads"]['lhr1']  = "38"

#number of avrosinkworkerthreads
default["flume_collector"]["avrosinkworkerthreads"]['uh1']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['pek1']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['dfw1']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['lhr1']  = "16"


######################################################### UH1 ###################################################################

default["flume_collector"]["endcollector_local_retention_topics"]['uh1']  = "rr"
default["flume_collector"]["endcollector_merge_retention_topics"]['uh1']  = "beacon_rr_uh1_cpm_render,network_beacon_uh1_adunit,network_beacon_uh1_publisherfill,beacon_rr_uh1_default"

default["flume_collector"]["endcollector_all_channels"]['uh1']  = "spillable mergespillable uh1-to-uh1-channel uh1-to-dfw1-channel uh1-to-lhr1-channel uh1-to-pek1-channel hdfsmerge-channel  hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['uh1'] = "kafkasink mergekafkasink uh1-mergesink dfw1-mergesink lhr1-mergesink pek1-mergesink hdfsmerge-sink hdfslocal-sink"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['uh1']  = {
     "avrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable",
         :port => "2540"},
     "zipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"},
     "mergezipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "mergespillable",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2542"},
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "uh1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "rr"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "uh1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_uh1_cpm_render,merge_network_beacon_uh1_adunit,merge_network_beacon_uh1_publisherfill,merge_beacon_rr_uh1_default"},
     "uh1-to-uh1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "uh1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-uh1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_uh1_cpm_render,network_beacon_uh1_adunit,network_beacon_uh1_publisherfill,beacon_rr_uh1_default"},
     "uh1-to-dfw1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "uh1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-dfw1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default"},
     "uh1-to-lhr1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "uh1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-lhr1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_lhr1_cpm_render,network_beacon_lhr1_adunit,network_beacon_lhr1_publisherfill,beacon_rr_lhr1_default"},
     "uh1-to-pek1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "uh1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-pek1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['uh1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['uh1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['uh1']  = ["uh1-to-uh1-channel","uh1-to-dfw1-channel","uh1-to-lhr1-channel","uh1-to-pek1-channel"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['uh1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['uh1']  = ["hdfslocal-channel"]


#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['uh1']  = {
     "kafkasink" => {:channel => "spillable"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['uh1']  = {
     "mergekafkasink" => {:channel => "mergespillable"}
}

default["flume_collector"]["endcollector_merged_avro_sinks"]['uh1']  = {
     "uh1-mergesink" => {:channel => "uh1-to-uh1-channel",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "dfw1-mergesink" => {:channel => "uh1-to-dfw1-channel",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "lhr1-mergesink" => {:channel => "uh1-to-lhr1-channel",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink" => {:channel => "uh1-to-pek1-channel",:flumevip =>"flume.grid.pek1.inmobi.com"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['uh1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"krypton"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['uh1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"krypton"}
}
######################################################### End Of UH1 ###################################################################












######################################################### DFW1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['dfw1']  = "rr"
default["flume_collector"]["endcollector_merge_retention_topics"]['dfw1']  = "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default"

default["flume_collector"]["endcollector_all_channels"]['dfw1']  = "spillable mergespillable dfw1-to-uh1-channel dfw1-to-pek1-channel dfw1-to-lhr1-channel dfw1-to-dfw1-channel hdfsmerge-channel hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['dfw1'] = "kafkasink mergekafkasink  uh1-mergesink dfw1-mergesink lhr1-mergesink pek1-mergesink hdfsmerge-sink hdfslocal-sink"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['dfw1']  = {
     "avrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable",
         :port => "2540"},
     "zipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"},
     "mergezipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "mergespillable",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2542"},
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "rr"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "dfw1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_dfw1_cpm_render,merge_network_beacon_dfw1_adunit,merge_network_beacon_dfw1_publisherfill,merge_beacon_rr_dfw1_default"},
     "dfw1-to-uh1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "dfw1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-uh1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_uh1_cpm_render,network_beacon_uh1_adunit,network_beacon_uh1_publisherfill,beacon_rr_uh1_default"},
     "dfw1-to-dfw1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "dfw1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-dfw1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default"},
     "dfw1-to-lhr1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "dfw1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-lhr1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_lhr1_cpm_render,network_beacon_lhr1_adunit,network_beacon_lhr1_publisherfill,beacon_rr_lhr1_default"},
     "dfw1-to-pek1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "dfw1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-pek1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['dfw1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['dfw1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['dfw1']  = ["dfw1-to-uh1-channel","dfw1-to-pek1-channel","dfw1-to-lhr1-channel","dfw1-to-dfw1-channel"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['dfw1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['dfw1']  = ["hdfslocal-channel"]

#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['dfw1']  = {
     "kafkasink" => {:channel => "spillable"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['dfw1']  = {
     "mergekafkasink" => {:channel => "mergespillable"}
}

default["flume_collector"]["endcollector_merged_avro_sinks"]['dfw1']  = {
     "uh1-mergesink" => {:channel => "dfw1-to-uh1-channel",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "dfw1-mergesink" => {:channel => "dfw1-to-dfw1-channel",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "lhr1-mergesink" => {:channel => "dfw1-to-lhr1-channel",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink" => {:channel => "dfw1-to-pek1-channel",:flumevip =>"flume.grid.pek1.inmobi.com"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['dfw1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"onyx"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['dfw1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"onyx"}
}
######################################################### End Of DFW1 ###################################################################










######################################################### LHR1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['lhr1']  = "rr"
default["flume_collector"]["endcollector_merge_retention_topics"]['lhr1']  = "beacon_rr_lhr1_cpm_render,network_beacon_lhr1_adunit,network_beacon_lhr1_publisherfill,beacon_rr_lhr1_default"

default["flume_collector"]["endcollector_all_channels"]['lhr1']  = "spillable mergespillable lhr1-to-uh1-channel lhr1-to-pek1-channel lhr1-to-lhr1-channel lhr1-to-dfw1-channel hdfsmerge-channel hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['lhr1'] = "kafkasink  mergekafkasink uh1-mergesink dfw1-mergesink lhr1-mergesink pek1-mergesink hdfsmerge-sink hdfslocal-sink"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['lhr1']  = {
     "avrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable",
         :port => "2540"},
     "zipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"},
     "mergezipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "mergespillable",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2542"},
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "lhr1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "rr"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "lhr1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_lhr1_cpm_render,merge_network_beacon_lhr1_adunit,merge_network_beacon_lhr1_publisherfill,merge_beacon_rr_lhr1_default"},
     "lhr1-to-uh1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "lhr1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-uh1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_uh1_cpm_render,network_beacon_uh1_adunit,network_beacon_uh1_publisherfill,beacon_rr_uh1_default"},
     "lhr1-to-dfw1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "lhr1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-dfw1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default"},
     "lhr1-to-lhr1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "lhr1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-lhr1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_lhr1_cpm_render,network_beacon_lhr1_adunit,network_beacon_lhr1_publisherfill,beacon_rr_lhr1_default"},
     "lhr1-to-pek1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "lhr1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-pek1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['lhr1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['lhr1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['lhr1']  = ["lhr1-to-uh1-channel","lhr1-to-pek1-channel","lhr1-to-lhr1-channel","lhr1-to-dfw1-channel"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['lhr1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['lhr1']  = ["hdfslocal-channel"]

#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['lhr1']  = {
     "kafkasink" => {:channel => "spillable"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['lhr1']  = {
     "mergekafkasink" => {:channel => "mergespillable"}
}

default["flume_collector"]["endcollector_merged_avro_sinks"]['lhr1']  = {
     "uh1-mergesink" => {:channel => "lhr1-to-uh1-channel",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "dfw1-mergesink" => {:channel => "lhr1-to-dfw1-channel",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "lhr1-mergesink" => {:channel => "lhr1-to-lhr1-channel",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink" => {:channel => "lhr1-to-pek1-channel",:flumevip =>"flume.grid.pek1.inmobi.com"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['lhr1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"emerald"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['lhr1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"emerald"}
}

######################################################### End Of LHR1 ###################################################################







######################################################### PEK1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['pek1']  = "rr"
default["flume_collector"]["endcollector_merge_retention_topics"]['pek1']  = "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default"

default["flume_collector"]["endcollector_all_channels"]['pek1']  = "spillable  mergespillable  pek1-to-uh1-channel pek1-to-pek1-channel pek1-to-lhr1-channel pek1-to-dfw1-channel hdfslocal-channel  hdfsmerge-channel"

default["flume_collector"]["endcollector_all_sinks"]['pek1'] = "kafkasink  mergekafkasink  uh1-mergesink dfw1-mergesink lhr1-mergesink pek1-mergesink hdfslocal-sink  hdfsmerge-sink"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['pek1']  = {
     "avrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable",
         :port => "2540"},
     "zipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"},
     "mergezipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "mergespillable",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2542"},
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "pek1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "rr"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "pek1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_pek1_cpm_render,merge_network_beacon_pek1_adunit,merge_network_beacon_pek1_publisherfill,merge_beacon_rr_pek1_default"},
     "pek1-to-uh1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "pek1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-uh1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_uh1_cpm_render,network_beacon_uh1_adunit,network_beacon_uh1_publisherfill,beacon_rr_uh1_default"},
     "pek1-to-dfw1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "pek1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-dfw1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default"},
     "pek1-to-lhr1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "pek1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-lhr1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_lhr1_cpm_render,network_beacon_lhr1_adunit,network_beacon_lhr1_publisherfill,beacon_rr_lhr1_default"},
     "pek1-to-pek1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "pek1-to-pek1-kafkamerge",
         :src_category => "kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-pek1-channel",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['pek1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['pek1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['pek1']  = ["pek1-to-uh1-channel","pek1-to-pek1-channel","pek1-to-lhr1-channel","pek1-to-dfw1-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['pek1']  = ["hdfslocal-channel"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['pek1']  = ["hdfsmerge-channel"]


#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['pek1']  = {
     "kafkasink" => {:channel => "spillable"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['pek1']  = {
     "mergekafkasink" => {:channel => "mergespillable"}
}

default["flume_collector"]["endcollector_merged_avro_sinks"]['pek1']  = {
     "uh1-mergesink" => {:channel => "pek1-to-uh1-channel",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "dfw1-mergesink" => {:channel => "pek1-to-dfw1-channel",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "lhr1-mergesink" => {:channel => "pek1-to-lhr1-channel",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink" => {:channel => "pek1-to-pek1-channel",:flumevip =>"flume.grid.pek1.inmobi.com"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['pek1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"pyrite"}
}
default["flume_collector"]["endcollector_merged_hdfs_sinks"]['pek1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"pyrite"}
}
######################################################### End Of PEK1 ###################################################################
