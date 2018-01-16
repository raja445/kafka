# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.42"
default["flume_collector"]["download_url"] = "http://plgw4001.grid.dfw1.inmobi.com/tar/apache-flume-1.6.0.42-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"

# Kafka Brokers in each colo
default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9092,oxkf4002.grid.dfw1.inmobi.com:9092,oxkf4003.grid.dfw1.inmobi.com:9092,oxkf4008.grid.dfw1.inmobi.com:9092,oxkf4009.grid.dfw1.inmobi.com:9092,oxkf4010.grid.dfw1.inmobi.com:9092,oxkf4011.grid.dfw1.inmobi.com:9092,oxkf4012.grid.dfw1.inmobi.com:9092,oxkf4013.grid.dfw1.inmobi.com:9092,oxkf4014.grid.dfw1.inmobi.com:9092,oxkf4015.grid.dfw1.inmobi.com:9092,oxkf4016.grid.dfw1.inmobi.com:9092,oxkf4017.grid.dfw1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['lhr1']  = "erkf4001.grid.lhr1.inmobi.com:9092,erkf4002.grid.lhr1.inmobi.com:9092,erkf4003.grid.lhr1.inmobi.com:9092,erkf4004.grid.lhr1.inmobi.com:9092,erkf4005.grid.lhr1.inmobi.com:9092,erkf4006.grid.lhr1.inmobi.com:9092,erkf4007.grid.lhr1.inmobi.com:9092,erkf4008.grid.lhr1.inmobi.com:9092,erkf4009.grid.lhr1.inmobi.com:9092,erkf4010.grid.lhr1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['pek1']  = "pykf4001.grid.pek1.inmobi.com:9092,pykf4002.grid.pek1.inmobi.com:9092,pykf4003.grid.pek1.inmobi.com:9092,pykf4004.grid.pek1.inmobi.com:9092,pykf4005.grid.pek1.inmobi.com:9092,pykf4006.grid.pek1.inmobi.com:9092,pykf4007.grid.pek1.inmobi.com:9092,pykf4008.grid.pek1.inmobi.com:9092,pykf4009.grid.pek1.inmobi.com:9092,pykf4010.grid.pek1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['dfw2']  = "gakf4001.grid.dfw2.inmobi.com:9092,gakf4002.grid.dfw2.inmobi.com:9092,gakf4003.grid.dfw2.inmobi.com:9092,gakf4004.grid.dfw2.inmobi.com:9092,gakf4005.grid.dfw2.inmobi.com:9092,gakf4006.grid.dfw2.inmobi.com:9092,gakf4007.grid.dfw2.inmobi.com:9092,gakf4008.grid.dfw2.inmobi.com:9092,gakf4009.grid.dfw2.inmobi.com:9092,gakf4010.grid.dfw2.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['ams1']  = "azkf4001.grid.ams1.inmobi.com:9092,azkf4002.grid.ams1.inmobi.com:9092,azkf4003.grid.ams1.inmobi.com:9092,azkf4004.grid.ams1.inmobi.com:9092,azkf4005.grid.ams1.inmobi.com:9092,azkf4006.grid.ams1.inmobi.com:9092,azkf4007.grid.ams1.inmobi.com:9092,azkf4008.grid.ams1.inmobi.com:9092:azkf4009.grid.ams1.inmobi.com:9092,azkf4010.grid.ams1.inmobi.com:9092,azkf4011.grid.ams1.inmobi.com:9092,azkf4012.grid.ams1.inmobi.com:9092,azkf4013.grid.ams1.inmobi.com:9092,azkf4014.grid.ams1.inmobi.com:9092,azkf4015.grid.ams1.inmobi.com:9092"

# Zookeeper Quorum in each colo
default["flume_collector"]["kafka_zookeeper"]['dfw1']  = "kafka-zookeeper-1.grid.dfw1.inmobi.com:2181,kafka-zookeeper-2.grid.dfw1.inmobi.com:2181,kafka-zookeeper-3.grid.dfw1.inmobi.com:2181,kafka-zookeeper-4.grid.dfw1.inmobi.com:2181,kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['lhr1']  = "kafka-zookeeper-1.grid.lhr1.inmobi.com:2181,kafka-zookeeper-2.grid.lhr1.inmobi.com:2181,kafka-zookeeper-3.grid.lhr1.inmobi.com:2181,kafka-zookeeper-4.grid.lhr1.inmobi.com:2181,kafka-zookeeper-5.grid.lhr1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['pek1']  = "kafka-zookeeper-1.grid.pek1.inmobi.com:2181,kafka-zookeeper-2.grid.pek1.inmobi.com:2181,kafka-zookeeper-3.grid.pek1.inmobi.com:2181,kafka-zookeeper-4.grid.pek1.inmobi.com:2181,kafka-zookeeper-5.grid.pek1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['dfw2']  = "kafka-zookeeper-1.grid.dfw2.inmobi.com:2181,kafka-zookeeper-2.grid.dfw2.inmobi.com:2181,kafka-zookeeper-3.grid.dfw2.inmobi.com:2181,kafka-zookeeper-4.grid.dfw2.inmobi.com:2181,kafka-zookeeper-5.grid.dfw2.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['ams1']  = "kafka-zookeeper-1.grid.ams1.inmobi.com:2181,kafka-zookeeper-2.grid.ams1.inmobi.com:2181,kafka-zookeeper-3.grid.ams1.inmobi.com:2181,kafka-zookeeper-4.grid.ams1.inmobi.com:2181,kafka-zookeeper-5.grid.ams1.inmobi.com:2181"

default["flume_collector"]["kafka_zookeeper"]['platinum']="plnn4001.grid.dfw1.inmobi.com:2181,plnn4002.grid.dfw1.inmobi.com:2181,plrm4001.grid.dfw1.inmobi.com:2181,plrm4002.grid.dfw1.inmobi.com:2181,plns4001.grid.dfw1.inmobi.com:2181"

#Flume Agents
default["flume_collector"]["flume_agent_host"]['pek1']  = "oxfl4001.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['dfw1']  = "oxfl4001.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['lhr1']  = "oxfl4001.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['dfw2']  = "oxfl4001.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['ams1']  = "oxfl4001.grid.dfw1.inmobi.com"

#Flume merge source consumer groupsize
default["flume_collector"]["mergesrc_consumer_gpsize"]['pek1']  = "4"
default["flume_collector"]["mergesrc_consumer_gpsize"]['dfw1']  = "4"
default["flume_collector"]["mergesrc_consumer_gpsize"]['lhr1']  = "4"
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
default["flume_collector"]["endcollector_local_retention_topics"]['dfw1']  = "photon_flume_test"
default["flume_collector"]["endcollector_merge_retention_topics"]['dfw1']  = "photon_flume_test"

default["flume_collector"]["endcollector_all_channels"]['dfw1']  = "mergespillable hdfsmerge-channel hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['dfw1'] = "mergekafkasink hdfsmerge-sink hdfslocal-sink1 hdfslocal-sink2 hdfslocal-sink3"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['dfw1']  = {
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "dfw1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_photon_flume_test"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "lhr1kafkamergesrc" => {
         :src_category => "lhr1kafkamerge",
         :consumer_group => "lhr1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "dfw2kafkamergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "ams1kafkamergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "photon_flume_test"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['dfw1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['dfw1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['dfw1']  = ["hdfslocal-channel"]

#Configure the sinks for the Flume Collector

default["flume_collector"]["endcollector_merged_kafka_sinks"]['dfw1']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['dfw1']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel",:cluster =>"onyx"},
     "hdfslocal-sink2" => {:channel => "hdfslocal-channel",:cluster =>"onyx"},
     "hdfslocal-sink3" => {:channel => "hdfslocal-channel",:cluster =>"onyx"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['dfw1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"onyx"}
}

######################################################### End Of DFW1 ###################################################################



######################################################### DFW2 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['dfw2']  = "photon_flume_test"
default["flume_collector"]["endcollector_merge_retention_topics"]['dfw2']  = "photon_flume_test"

default["flume_collector"]["endcollector_all_channels"]['dfw2']  = "mergespillable hdfsmerge-channel hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['dfw2'] = "mergekafkasink hdfsmerge-sink hdfslocal-sink1"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['dfw2']  = {
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "dfw2hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_photon_flume_test"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-dfw2-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "lhr1kafkamergesrc" => {
         :src_category => "lhr1kafkamerge",
         :consumer_group => "lhr1-to-dfw2-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-dfw2-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "ams1kafkamergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-dfw2-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "photon_flume_test"},
     "dfw2kafkamergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-dfw2-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['dfw2']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['dfw2']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['dfw2']  = ["hdfslocal-channel"]

#Configure the sinks for the Flume Collector

default["flume_collector"]["endcollector_merged_kafka_sinks"]['dfw2']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['dfw2']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel",:cluster =>"garnet"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['dfw2']  = {
    "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"garnet"}
}

######################################################### End Of DFW2 ###################################################################



######################################################### AMS1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['ams1']  = "photon_flume_test"
default["flume_collector"]["endcollector_merge_retention_topics"]['ams1']  = "photon_flume_test"

default["flume_collector"]["endcollector_all_channels"]['ams1']  = "mergespillable hdfsmerge-channel hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['ams1'] = "mergekafkasink hdfsmerge-sink hdfslocal-sink1"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['ams1']  = {
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocal-channel",
         :batchSize => 500,
	 :'kafka.topics' => "photon_flume_test"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "ams1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
	 :'kafka.topics' => "merge_photon_flume_test"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "lhr1kafkamergesrc" => {
         :src_category => "lhr1kafkamerge",
         :consumer_group => "lhr1-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "photon_flume_test"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "photon_flume_test"},
     "dfw2kafkamergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
     	 :'kafka.topics' => "photon_flume_test"},
     "ams1kafkamergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "photon_flume_test"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['ams1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['ams1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['ams1']  = ["hdfslocal-channel"]

#Configure the sinks for the Flume Collector

default["flume_collector"]["endcollector_merged_kafka_sinks"]['ams1']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['ams1']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel",:cluster =>"azurite"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['ams1']  = {
    "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"azurite"}
}

######################################################### End Of AMS1 ###################################################################




######################################################### LHR1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['lhr1']  = "photon_flume_test"
default["flume_collector"]["endcollector_merge_retention_topics"]['lhr1']  = "photon_flume_test"

default["flume_collector"]["endcollector_all_channels"]['lhr1']  = "mergespillable hdfsmerge-channel hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['lhr1'] = "mergekafkasink hdfsmerge-sink1 hdfsmerge-sink2 hdfslocal-sink1 hdfslocal-sink2"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['lhr1']  = {
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "lhr1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "lhr1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_photon_flume_test"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "lhr1kafkamergesrc" => {
         :src_category => "lhr1kafkamerge",
         :consumer_group => "lhr1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "dfw2kafkamergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "ams1kafkamergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "photon_flume_test"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['lhr1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['lhr1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['lhr1']  = ["hdfslocal-channel"]

#Configure the sinks for the Flume Collector

default["flume_collector"]["endcollector_merged_kafka_sinks"]['lhr1']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['lhr1']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel",:cluster =>"emerald"},
     "hdfslocal-sink2" => {:channel => "hdfslocal-channel",:cluster =>"emerald"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['lhr1']  = {
     "hdfsmerge-sink1" => {:channel => "hdfsmerge-channel",:cluster =>"emerald"},
     "hdfsmerge-sink2" => {:channel => "hdfsmerge-channel",:cluster =>"emerald"}
}

######################################################### End Of LHR1 ###################################################################







######################################################### PEK1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['pek1']  = "photon_flume_test"
default["flume_collector"]["endcollector_merge_retention_topics"]['pek1']  = "photon_flume_test"

default["flume_collector"]["endcollector_all_channels"]['pek1']  = "mergespillable hdfslocal-channel  hdfsmerge-channel"

default["flume_collector"]["endcollector_all_sinks"]['pek1'] = "mergekafkasink hdfslocal-sink  hdfsmerge-sink"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['pek1']  = {
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "pek1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "pek1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_photon_flume_test"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "lhr1kafkamergesrc" => {
         :src_category => "lhr1kafkamerge",
         :consumer_group => "lhr1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "dfw2kafkamergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "ams1kafkamergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "photon_flume_test"},
     "dfw2photonmergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['pek1']  = ["mergespillable"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['pek1']  = ["hdfslocal-channel"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['pek1']  = ["hdfsmerge-channel"]

#Configure the sinks for the Flume Collector

default["flume_collector"]["endcollector_merged_kafka_sinks"]['pek1']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['pek1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"pyrite"}
}
default["flume_collector"]["endcollector_merged_hdfs_sinks"]['pek1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"pyrite"}
}
######################################################### End Of PEK1 ###################################################################
