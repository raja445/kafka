# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.20"
default["flume_collector"]["download_url"] = "http://glvm1014.grid.uh1.inmobi.com/tar/apache-flume-1.6.0.20-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"

# Kafka Brokers in each colo
default["flume_collector"]["kafka_brokers"]['hkg1']  = "opkf4001.grid.hkg1.inmobi.com:9092,opkf4002.grid.hkg1.inmobi.com:9092,opkf4003.grid.hkg1.inmobi.com:9092,opkf4004.grid.hkg1.inmobi.com:9092,opkf4005.grid.hkg1.inmobi.com:9092,opkf4006.grid.hkg1.inmobi.com:9092,opkf4007.grid.hkg1.inmobi.com:9092,opkf4008.grid.hkg1.inmobi.com:9092,opkf4009.grid.hkg1.inmobi.com:9092,opkf4010.grid.hkg1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['uh1']  = "krkf4001.grid.uh1.inmobi.com:9092,krkf4002.grid.uh1.inmobi.com:9092,krkf4003.grid.uh1.inmobi.com:9092,krkf4004.grid.uh1.inmobi.com:9092,krkf4005.grid.uh1.inmobi.com:9092,krkf4006.grid.uh1.inmobi.com:9092,krkf4007.grid.uh1.inmobi.com:9092,krkf4008.grid.uh1.inmobi.com:9092,krkf4009.grid.uh1.inmobi.com:9092,krkf4010.grid.uh1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9092,oxkf4002.grid.dfw1.inmobi.com:9092,oxkf4003.grid.dfw1.inmobi.com:9092,oxkf4008.grid.dfw1.inmobi.com:9092,oxkf4009.grid.dfw1.inmobi.com:9092,oxkf4010.grid.dfw1.inmobi.com:9092,oxkf4011.grid.dfw1.inmobi.com:9092,oxkf4012.grid.dfw1.inmobi.com:9092,oxkf4013.grid.dfw1.inmobi.com:9092,oxkf4014.grid.dfw1.inmobi.com:9092,oxkf4015.grid.dfw1.inmobi.com:9092,oxkf4016.grid.dfw1.inmobi.com:9092,oxkf4017.grid.dfw1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['lhr1']  = "erkf4001.grid.lhr1.inmobi.com:9092,erkf4002.grid.lhr1.inmobi.com:9092,erkf4003.grid.lhr1.inmobi.com:9092,erkf4004.grid.lhr1.inmobi.com:9092,erkf4005.grid.lhr1.inmobi.com:9092,erkf4006.grid.lhr1.inmobi.com:9092,erkf4007.grid.lhr1.inmobi.com:9092,erkf4008.grid.lhr1.inmobi.com:9092,erkf4009.grid.lhr1.inmobi.com:9092,erkf4010.grid.lhr1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['pek1']  = "pykf4001.grid.pek1.inmobi.com:9092,pykf4002.grid.pek1.inmobi.com:9092,pykf4003.grid.pek1.inmobi.com:9092,pykf4004.grid.pek1.inmobi.com:9092,pykf4005.grid.pek1.inmobi.com:9092,pykf4006.grid.pek1.inmobi.com:9092,pykf4007.grid.pek1.inmobi.com:9092,pykf4008.grid.pek1.inmobi.com:9092,pykf4009.grid.pek1.inmobi.com:9092,pykf4010.grid.pek1.inmobi.com:9092"

# Zookeeper Quorum in each colo
default["flume_collector"]["kafka_zookeeper"]['uh1']  = "kafka-zookeeper-1.grid.uh1.inmobi.com:2181,kafka-zookeeper-2.grid.uh1.inmobi.com:2181,kafka-zookeeper-3.grid.uh1.inmobi.com:2181,kafka-zookeeper-4.grid.uh1.inmobi.com:2181,kafka-zookeeper-5.grid.uh1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['dfw1']  = "kafka-zookeeper-1.grid.dfw1.inmobi.com:2181,kafka-zookeeper-2.grid.dfw1.inmobi.com:2181,kafka-zookeeper-3.grid.dfw1.inmobi.com:2181,kafka-zookeeper-4.grid.dfw1.inmobi.com:2181,kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['lhr1']  = "kafka-zookeeper-1.grid.lhr1.inmobi.com:2181,kafka-zookeeper-2.grid.lhr1.inmobi.com:2181,kafka-zookeeper-3.grid.lhr1.inmobi.com:2181,kafka-zookeeper-4.grid.lhr1.inmobi.com:2181,kafka-zookeeper-5.grid.lhr1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['hkg1']  = "kafka-zookeeper-1.grid.hkg1.inmobi.com:2181,kafka-zookeeper-2.grid.hkg1.inmobi.com:2181,kafka-zookeeper-3.grid.hkg1.inmobi.com:2181,kafka-zookeeper-4.grid.hkg1.inmobi.com:2181,kafka-zookeeper-5.grid.hkg1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['pek1']  = "kafka-zookeeper-1.grid.pek1.inmobi.com:2181,kafka-zookeeper-2.grid.pek1.inmobi.com:2181,kafka-zookeeper-3.grid.pek1.inmobi.com:2181,kafka-zookeeper-4.grid.pek1.inmobi.com:2181,kafka-zookeeper-5.grid.pek1.inmobi.com:2181"


#Flume Agents
default["flume_collector"]["flume_agent_host"]['uh1']  = "krvm4109.grid.uh1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['pek1']  = "pyns4002.grid.pek1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['dfw1']  = "oxns4002.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['lhr1']  = "erdc4002.grid.lhr1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['hkg1']  = "opns4007.grid.hkg1.inmobi.com"

#Flume merge source consumer groupsize
default["flume_collector"]["mergesrc_consumer_gpsize"]['uh1']  = "8"
default["flume_collector"]["mergesrc_consumer_gpsize"]['pek1']  = "8"
default["flume_collector"]["mergesrc_consumer_gpsize"]['dfw1']  = "6"
default["flume_collector"]["mergesrc_consumer_gpsize"]['lhr1']  = "8"
default["flume_collector"]["mergesrc_consumer_gpsize"]['hkg1']  = "6"







######################################################### UH1 ###################################################################

default["flume_collector"]["endcollector_local_retention_topics"]['uh1']  = "testmerge,rr"
default["flume_collector"]["endcollector_merge_retention_topics"]['uh1']  = "beacon_rr_uh1_cpm_render"

default["flume_collector"]["endcollector_all_channels"]['uh1']  = "spillable mergespillable uh1-to-uh1-channel1 uh1-to-uh1-channel2 uh1-to-dfw1-channel1 uh1-to-dfw1-channel2 uh1-to-lhr1-channel1 uh1-to-lhr1-channel2 uh1-to-pek1-channel1 uh1-to-pek1-channel2 hdfsmerge-channel  hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['uh1'] = "kafkasink mergekafkasink uh1-mergesink1 uh1-mergesink2 dfw1-mergesink1 dfw1-mergesink2 lhr1-mergesink1 lhr1-mergesink2 pek1-mergesink1 pek1-mergesink2 hdfsmerge-sink hdfslocal-sink"
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
         :'kafka.topics' => "testmerge,rr"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "uh1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_uh1_cpm_render"},
     "uh1-to-uh1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "uh1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-uh1-channel1 uh1-to-uh1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_uh1_cpm_render"},
     "uh1-to-dfw1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "uh1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-dfw1-channel1 uh1-to-dfw1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "uh1-to-lhr1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "uh1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-lhr1-channel1 uh1-to-lhr1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "uh1-to-pek1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "uh1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-pek1-channel1 uh1-to-pek1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['uh1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['uh1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['uh1']  = ["uh1-to-uh1-channel1","uh1-to-uh1-channel2","uh1-to-dfw1-channel1","uh1-to-dfw1-channel2","uh1-to-lhr1-channel1","uh1-to-lhr1-channel2","uh1-to-pek1-channel1","uh1-to-pek1-channel2",]
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
     "uh1-mergesink1" => {:channel => "uh1-to-uh1-channel1",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "uh1-mergesink2" => {:channel => "uh1-to-uh1-channel2",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "dfw1-mergesink1" => {:channel => "uh1-to-dfw1-channel1",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "dfw1-mergesink2" => {:channel => "uh1-to-dfw1-channel2",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "lhr1-mergesink1" => {:channel => "uh1-to-lhr1-channel1",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "lhr1-mergesink2" => {:channel => "uh1-to-lhr1-channel2",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink1" => {:channel => "uh1-to-pek1-channel1",:flumevip =>"flume.grid.pek1.inmobi.com"},
     "pek1-mergesink2" => {:channel => "uh1-to-pek1-channel2",:flumevip =>"flume.grid.pek1.inmobi.com"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['uh1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"krypton"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['uh1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"krypton"}
}
######################################################### End Of UH1 ###################################################################












######################################################### DFW1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['dfw1']  = "testmerge"
default["flume_collector"]["endcollector_merge_retention_topics"]['dfw1']  = "testmerge"

default["flume_collector"]["endcollector_all_channels"]['dfw1']  = "spillable mergespillable dfw1-to-uh1-channel1 dfw1-to-uh1-channel2 dfw1-to-pek1-channel1 dfw1-to-pek1-channel2 dfw1-to-lhr1-channel1 dfw1-to-lhr1-channel2 dfw1-to-dfw1-channel1 dfw1-to-dfw1-channel2 hdfsmerge-channel hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['dfw1'] = "kafkasink mergekafkasink  uh1-mergesink1 uh1-mergesink2 dfw1-mergesink1 dfw1-mergesink2 lhr1-mergesink1 lhr1-mergesink2 pek1-mergesink1 pek1-mergesink2 hdfsmerge-sink hdfslocal-sink"
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
         :'kafka.topics' => "testmerge"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "dfw1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_testmerge"},
     "dfw1-to-uh1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "dfw1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-uh1-channel1 dfw1-to-uh1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_uh1_cpm_render"},
     "dfw1-to-dfw1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "dfw1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-dfw1-channel1 dfw1-to-dfw1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "dfw1-to-lhr1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "dfw1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-lhr1-channel1 dfw1-to-lhr1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "dfw1-to-pek1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "dfw1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-pek1-channel1 dfw1-to-pek1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['dfw1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['dfw1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['dfw1']  = ["dfw1-to-uh1-channel1","dfw1-to-uh1-channel2","dfw1-to-pek1-channel1","dfw1-to-pek1-channel2","dfw1-to-lhr1-channel1","dfw1-to-lhr1-channel2","dfw1-to-dfw1-channel1","dfw1-to-dfw1-channel2"]
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
     "uh1-mergesink1" => {:channel => "dfw1-to-uh1-channel1",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "uh1-mergesink2" => {:channel => "dfw1-to-uh1-channel2",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "dfw1-mergesink1" => {:channel => "dfw1-to-dfw1-channel1",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "dfw1-mergesink2" => {:channel => "dfw1-to-dfw1-channel2",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "lhr1-mergesink1" => {:channel => "dfw1-to-lhr1-channel1",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "lhr1-mergesink2" => {:channel => "dfw1-to-lhr1-channel2",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink1" => {:channel => "dfw1-to-pek1-channel1",:flumevip =>"flume.grid.pek1.inmobi.com"},
     "pek1-mergesink2" => {:channel => "dfw1-to-pek1-channel2",:flumevip =>"flume.grid.pek1.inmobi.com"}
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
default["flume_collector"]["endcollector_merge_retention_topics"]['lhr1']  = "testmerge"

default["flume_collector"]["endcollector_all_channels"]['lhr1']  = "spillable mergespillable lhr1-to-uh1-channel1 lhr1-to-uh1-channel2 lhr1-to-pek1-channel1 lhr1-to-pek1-channel2 lhr1-to-lhr1-channel1 lhr1-to-lhr1-channel2 lhr1-to-dfw1-channel1 lhr1-to-dfw1-channel2 hdfsmerge-channel hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['lhr1'] = "kafkasink  mergekafkasink uh1-mergesink1 uh1-mergesink2 dfw1-mergesink1 dfw1-mergesink2 lhr1-mergesink1 lhr1-mergesink2 pek1-mergesink1 pek1-mergesink2 hdfsmerge-sink hdfslocal-sink"
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
         :'kafka.topics' => "merge_testmerge"},
     "lhr1-to-uh1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "lhr1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-uh1-channel1 lhr1-to-uh1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_uh1_cpm_render"},
     "lhr1-to-dfw1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "lhr1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-dfw1-channel1 lhr1-to-dfw1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "lhr1-to-lhr1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "lhr1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-lhr1-channel1 lhr1-to-lhr1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "lhr1-to-pek1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "lhr1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-pek1-channel1 lhr1-to-pek1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['lhr1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['lhr1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['lhr1']  = ["lhr1-to-uh1-channel1","lhr1-to-uh1-channel2","lhr1-to-pek1-channel1","lhr1-to-pek1-channel2","lhr1-to-lhr1-channel1","lhr1-to-lhr1-channel2","lhr1-to-dfw1-channel1","lhr1-to-dfw1-channel2"]
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
     "uh1-mergesink1" => {:channel => "lhr1-to-uh1-channel1",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "uh1-mergesink2" => {:channel => "lhr1-to-uh1-channel2",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "dfw1-mergesink1" => {:channel => "lhr1-to-dfw1-channel1",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "dfw1-mergesink2" => {:channel => "lhr1-to-dfw1-channel2",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "lhr1-mergesink1" => {:channel => "lhr1-to-lhr1-channel1",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "lhr1-mergesink2" => {:channel => "lhr1-to-lhr1-channel2",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink1" => {:channel => "lhr1-to-pek1-channel1",:flumevip =>"flume.grid.pek1.inmobi.com"},
     "pek1-mergesink2" => {:channel => "lhr1-to-pek1-channel2",:flumevip =>"flume.grid.pek1.inmobi.com"}
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['lhr1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"emerald"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['lhr1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"emerald"}
}

######################################################### End Of LHR1 ###################################################################







######################################################### PEK1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['pek1']  = "testmerge"
default["flume_collector"]["endcollector_merge_retention_topics"]['pek1']  = "testmerge"

default["flume_collector"]["endcollector_all_channels"]['pek1']  = "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32 mergespillable1 mergespillable2 pek1-to-uh1-channel1 pek1-to-uh1-channel2 pek1-to-pek1-channel1 pek1-to-pek1-channel2 pek1-to-lhr1-channel1 pek1-to-lhr1-channel2 pek1-to-dfw1-channel1 pek1-to-dfw1-channel2 hdfslocal-channel1 hdfslocal-channel2 hdfsmerge-channel1 hdfsmerge-channel2"

default["flume_collector"]["endcollector_all_sinks"]['pek1'] = "kafkasink1 kafkasink2 kafkasink3 kafkasink4 kafkasink5 kafkasink6 kafkasink7 kafkasink8 kafkasink9 kafkasink10 kafkasink11 kafkasink12 kafkasink13 kafkasink14 kafkasink15 kafkasink16 kafkasink17 kafkasink18 kafkasink19 kafkasink20 kafkasink21 kafkasink22 kafkasink23 kafkasink24 kafkasink25 kafkasink26 kafkasink27 kafkasink28 kafkasink29 kafkasink30 kafkasink31 kafkasink32 mergekafkasink1 mergekafkasink2 uh1-mergesink1 uh1-mergesink2 dfw1-mergesink1 dfw1-mergesink2 lhr1-mergesink1 lhr1-mergesink2 pek1-mergesink1 pek1-mergesink2 hdfslocal-sink1 hdfslocal-sink2 hdfsmerge-sink1 hdfsmerge-sink2"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['pek1']  = {
     "avrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :port => "2540"},
     "zipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"},
     "mergezipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "mergespillable1 mergespillable2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2542"},
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "pek1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocal-channel1 hdfslocal-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "pek1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel1 hdfsmerge-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "merge_testmerge"},
     "pek1-to-uh1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "pek1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-uh1-channel1 pek1-to-uh1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_uh1_cpm_render"},
     "pek1-to-dfw1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "pek1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-dfw1-channel1 pek1-to-dfw1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "pek1-to-lhr1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "pek1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-lhr1-channel1 pek1-to-lhr1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "pek1-to-pek1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "pek1-to-pek1-kafkamerge",
         :src_category => "kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-pek1-channel1 pek1-to-pek1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['pek1']  = ["spillable1","spillable2","spillable3","spillable4","spillable5","spillable6","spillable7","spillable8","spillable9","spillable10","spillable11","spillable12","spillable13","spillable14","spillable15","spillable16","spillable17","spillable18","spillable19","spillable20","spillable21","spillable22","spillable23","spillable24","spillable25","spillable26","spillable27","spillable28","spillable29","spillable30","spillable31","spillable32"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['pek1']  = ["mergespillable1","mergespillable2"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['pek1']  = ["pek1-to-uh1-channel1","pek1-to-uh1-channel2","pek1-to-pek1-channel1","pek1-to-pek1-channel2","pek1-to-lhr1-channel1","pek1-to-lhr1-channel2","pek1-to-dfw1-channel1","pek1-to-dfw1-channel2"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['pek1']  = ["hdfslocal-channel1","hdfslocal-channel2"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['pek1']  = ["hdfsmerge-channel1","hdfsmerge-channel2"]


#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['pek1']  = {
     "kafkasink1" => {:channel => "spillable1"},
     "kafkasink2" => {:channel => "spillable2"},
     "kafkasink3" => {:channel => "spillable3"},
     "kafkasink4" => {:channel => "spillable4"},
     "kafkasink5" => {:channel => "spillable5"},
     "kafkasink6" => {:channel => "spillable6"},
     "kafkasink7" => {:channel => "spillable7"},
     "kafkasink8" => {:channel => "spillable8"},
     "kafkasink9" => {:channel => "spillable9"},
     "kafkasink10" => {:channel => "spillable10"},
     "kafkasink11" => {:channel => "spillable11"},
     "kafkasink12" => {:channel => "spillable12"},
     "kafkasink13" => {:channel => "spillable13"},
     "kafkasink14" => {:channel => "spillable14"},
     "kafkasink15" => {:channel => "spillable15"},
     "kafkasink16" => {:channel => "spillable16"},
     "kafkasink17" => {:channel => "spillable17"},
     "kafkasink18" => {:channel => "spillable18"},
     "kafkasink19" => {:channel => "spillable19"},
     "kafkasink20" => {:channel => "spillable20"},
     "kafkasink21" => {:channel => "spillable21"},
     "kafkasink22" => {:channel => "spillable22"},
     "kafkasink23" => {:channel => "spillable23"},
     "kafkasink24" => {:channel => "spillable24"},
     "kafkasink25" => {:channel => "spillable25"},
     "kafkasink26" => {:channel => "spillable26"},
     "kafkasink27" => {:channel => "spillable27"},
     "kafkasink28" => {:channel => "spillable28"},
     "kafkasink29" => {:channel => "spillable29"},
     "kafkasink30" => {:channel => "spillable30"},
     "kafkasink31" => {:channel => "spillable31"},
     "kafkasink32" => {:channel => "spillable32"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['pek1']  = {
     "mergekafkasink1" => {:channel => "mergespillable1"},
     "mergekafkasink2" => {:channel => "mergespillable2"}
}

default["flume_collector"]["endcollector_merged_avro_sinks"]['pek1']  = {
     "uh1-mergesink1" => {:channel => "pek1-to-uh1-channel1",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "uh1-mergesink2" => {:channel => "pek1-to-uh1-channel2",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "dfw1-mergesink1" => {:channel => "pek1-to-dfw1-channel1",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "dfw1-mergesink2" => {:channel => "pek1-to-dfw1-channel2",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "lhr1-mergesink1" => {:channel => "pek1-to-lhr1-channel1",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "lhr1-mergesink2" => {:channel => "pek1-to-lhr1-channel2",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink1" => {:channel => "pek1-to-pek1-channel1",:flumevip =>"flume.grid.pek1.inmobi.com"},
     "pek1-mergesink2" => {:channel => "pek1-to-pek1-channel2",:flumevip =>"flume.grid.pek1.inmobi.com"}
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['pek1']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel1",:cluster =>"pyrite"},
     "hdfslocal-sink2" => {:channel => "hdfslocal-channel2",:cluster =>"pyrite"}
}
default["flume_collector"]["endcollector_merged_hdfs_sinks"]['pek1']  = {
     "hdfsmerge-sink1" => {:channel => "hdfsmerge-channel1",:cluster =>"pyrite"},
     "hdfsmerge-sink2" => {:channel => "hdfsmerge-channel2",:cluster =>"pyrite"}
}
######################################################### End Of PEK1 ###################################################################





######################################################### HKG1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['hkg1']  = "testmerge"
default["flume_collector"]["endcollector_merge_retention_topics"]['hkg1']  = "testmerge"

default["flume_collector"]["endcollector_all_channels"]['hkg1']  = "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32 mergespillable1 mergespillable2 hkg1-to-uh1-channel1 hkg1-to-uh1-channel2 hkg1-to-pek1-channel1 hkg1-to-pek1-channel2 hkg1-to-lhr1-channel1 hkg1-to-lhr1-channel2 hkg1-to-dfw1-channel1 hkg1-to-dfw1-channel2 hdfslocal-channel1 hdfslocal-channel2 hdfsmerge-channel1 hdfsmerge-channel2"

default["flume_collector"]["endcollector_all_sinks"]['hkg1'] = "kafkasink1 kafkasink2 kafkasink3 kafkasink4 kafkasink5 kafkasink6 kafkasink7 kafkasink8 kafkasink9 kafkasink10 kafkasink11 kafkasink12 kafkasink13 kafkasink14 kafkasink15 kafkasink16 kafkasink17 kafkasink18 kafkasink19 kafkasink20 kafkasink21 kafkasink22 kafkasink23 kafkasink24 kafkasink25 kafkasink26 kafkasink27 kafkasink28 kafkasink29 kafkasink30 kafkasink31 kafkasink32 mergekafkasink1 mergekafkasink2 uh1-mergesink1 uh1-mergesink2 dfw1-mergesink1 dfw1-mergesink2 lhr1-mergesink1 lhr1-mergesink2 pek1-mergesink1 pek1-mergesink2 hdfslocal-sink1 hdfslocal-sink2 hdfsmerge-sink1 hdfsmerge-sink2"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['hkg1']  = {
     "avrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :port => "2540"},
     "zipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"},
     "mergezipavrosrc" => {
         :src_category => "avro",
         :type => "avro",
         :channels => "mergespillable1 mergespillable2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2542"},
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "hkg1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocal-channel1 hdfslocal-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "hkg1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel1 hdfsmerge-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "merge_testmerge"},
     "hkg1-to-uh1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "hkg1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hkg1-to-uh1-channel1 hkg1-to-uh1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_uh1_cpm_render"},
     "hkg1-to-dfw1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "hkg1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hkg1-to-dfw1-channel1 hkg1-to-dfw1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "hkg1-to-lhr1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "hkg1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hkg1-to-lhr1-channel1 hkg1-to-lhr1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "hkg1-to-pek1-mergesrc1" => {
         :src_category => "kafkamerge",
         :consumer_group => "hkg1-to-pek1-kafkamerge",
         :src_category => "kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hkg1-to-pek1-channel1 hkg1-to-pek1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['hkg1']  = ["spillable1","spillable2","spillable3","spillable4","spillable5","spillable6","spillable7","spillable8","spillable9","spillable10","spillable11","spillable12","spillable13","spillable14","spillable15","spillable16","spillable17","spillable18","spillable19","spillable20","spillable21","spillable22","spillable23","spillable24","spillable25","spillable26","spillable27","spillable28","spillable29","spillable30","spillable31","spillable32"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['hkg1']  = ["mergespillable1","mergespillable2"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['hkg1']  = ["hkg1-to-uh1-channel1","hkg1-to-uh1-channel2","hkg1-to-pek1-channel1","hkg1-to-pek1-channel2","hkg1-to-lhr1-channel1","hkg1-to-lhr1-channel2","hkg1-to-dfw1-channel1","hkg1-to-dfw1-channel2"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['hkg1']  = ["hdfslocal-channel1","hdfslocal-channel2"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['hkg1']  = ["hdfsmerge-channel1","hdfsmerge-channel2"]


#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['hkg1']  = {
     "kafkasink1" => {:channel => "spillable1"},
     "kafkasink2" => {:channel => "spillable2"},
     "kafkasink3" => {:channel => "spillable3"},
     "kafkasink4" => {:channel => "spillable4"},
     "kafkasink5" => {:channel => "spillable5"},
     "kafkasink6" => {:channel => "spillable6"},
     "kafkasink7" => {:channel => "spillable7"},
     "kafkasink8" => {:channel => "spillable8"},
     "kafkasink9" => {:channel => "spillable9"},
     "kafkasink10" => {:channel => "spillable10"},
     "kafkasink11" => {:channel => "spillable11"},
     "kafkasink12" => {:channel => "spillable12"},
     "kafkasink13" => {:channel => "spillable13"},
     "kafkasink14" => {:channel => "spillable14"},
     "kafkasink15" => {:channel => "spillable15"},
     "kafkasink16" => {:channel => "spillable16"},
     "kafkasink17" => {:channel => "spillable17"},
     "kafkasink18" => {:channel => "spillable18"},
     "kafkasink19" => {:channel => "spillable19"},
     "kafkasink20" => {:channel => "spillable20"},
     "kafkasink21" => {:channel => "spillable21"},
     "kafkasink22" => {:channel => "spillable22"},
     "kafkasink23" => {:channel => "spillable23"},
     "kafkasink24" => {:channel => "spillable24"},
     "kafkasink25" => {:channel => "spillable25"},
     "kafkasink26" => {:channel => "spillable26"},
     "kafkasink27" => {:channel => "spillable27"},
     "kafkasink28" => {:channel => "spillable28"},
     "kafkasink29" => {:channel => "spillable29"},
     "kafkasink30" => {:channel => "spillable30"},
     "kafkasink31" => {:channel => "spillable31"},
     "kafkasink32" => {:channel => "spillable32"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['hkg1']  = {
     "mergekafkasink1" => {:channel => "mergespillable1"},
     "mergekafkasink2" => {:channel => "mergespillable2"}
}

default["flume_collector"]["endcollector_merged_avro_sinks"]['hkg1']  = {
     "uh1-mergesink1" => {:channel => "hkg1-to-uh1-channel1",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "uh1-mergesink2" => {:channel => "hkg1-to-uh1-channel2",:flumevip =>"flume.grid.uh1.inmobi.com"},
     "dfw1-mergesink1" => {:channel => "hkg1-to-dfw1-channel1",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "dfw1-mergesink2" => {:channel => "hkg1-to-dfw1-channel2",:flumevip =>"flume.grid.dfw1.inmobi.com"},
     "lhr1-mergesink1" => {:channel => "hkg1-to-lhr1-channel1",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "lhr1-mergesink2" => {:channel => "hkg1-to-lhr1-channel2",:flumevip =>"flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink1" => {:channel => "hkg1-to-pek1-channel1",:flumevip =>"flume.grid.pek1.inmobi.com"},
     "pek1-mergesink2" => {:channel => "hkg1-to-pek1-channel2",:flumevip =>"flume.grid.pek1.inmobi.com"}
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['hkg1']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel1",:cluster =>"opal"},
     "hdfslocal-sink2" => {:channel => "hdfslocal-channel2",:cluster =>"opal"}
}
default["flume_collector"]["endcollector_merged_hdfs_sinks"]['hkg1']  = {
     "hdfsmerge-sink1" => {:channel => "hdfsmerge-channel1",:cluster =>"opal"},
     "hdfsmerge-sink2" => {:channel => "hdfsmerge-channel2",:cluster =>"opal"}
}
######################################################### End Of HKG1 ###################################################################


