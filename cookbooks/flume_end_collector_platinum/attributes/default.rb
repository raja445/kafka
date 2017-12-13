# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.38"
default["flume_collector"]["download_url"] = "http://plgw4001.grid.dfw1.inmobi.com/tar/apache-flume-1.6.0.38-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"
default["flume_collector"]["platinumflumezookeeper"]  = "plfl4001.grid.dfw1.inmobi.com:2181,plfl4002.grid.dfw1.inmobi.com:2181,plfl4003.grid.dfw1.inmobi.com:2181"

# Kafka Brokers in each colo
default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9092,oxkf4002.grid.dfw1.inmobi.com:9092,oxkf4003.grid.dfw1.inmobi.com:9092,oxkf4008.grid.dfw1.inmobi.com:9092,oxkf4009.grid.dfw1.inmobi.com:9092,oxkf4010.grid.dfw1.inmobi.com:9092,oxkf4011.grid.dfw1.inmobi.com:9092,oxkf4012.grid.dfw1.inmobi.com:9092,oxkf4013.grid.dfw1.inmobi.com:9092,oxkf4014.grid.dfw1.inmobi.com:9092,oxkf4015.grid.dfw1.inmobi.com:9092,oxkf4016.grid.dfw1.inmobi.com:9092,oxkf4017.grid.dfw1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['lhr1']  = "erkf4001.grid.lhr1.inmobi.com:9092,erkf4002.grid.lhr1.inmobi.com:9092,erkf4003.grid.lhr1.inmobi.com:9092,erkf4004.grid.lhr1.inmobi.com:9092,erkf4005.grid.lhr1.inmobi.com:9092,erkf4006.grid.lhr1.inmobi.com:9092,erkf4007.grid.lhr1.inmobi.com:9092,erkf4008.grid.lhr1.inmobi.com:9092,erkf4009.grid.lhr1.inmobi.com:9092,erkf4010.grid.lhr1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['pek1']  = "pykf4001.grid.pek1.inmobi.com:9092,pykf4002.grid.pek1.inmobi.com:9092,pykf4003.grid.pek1.inmobi.com:9092,pykf4004.grid.pek1.inmobi.com:9092,pykf4005.grid.pek1.inmobi.com:9092,pykf4006.grid.pek1.inmobi.com:9092,pykf4007.grid.pek1.inmobi.com:9092,pykf4008.grid.pek1.inmobi.com:9092,pykf4009.grid.pek1.inmobi.com:9092,pykf4010.grid.pek1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['dfw2']  = "gakf4001.grid.dfw2.inmobi.com:9092,gakf4002.grid.dfw2.inmobi.com:9092,gakf4003.grid.dfw2.inmobi.com:9092,gakf4004.grid.dfw2.inmobi.com:9092,gakf4005.grid.dfw2.inmobi.com:9092,gakf4006.grid.dfw2.inmobi.com:9092,gakf4007.grid.dfw2.inmobi.com:9092,gakf4008.grid.dfw2.inmobi.com:9092,gakf4009.grid.dfw2.inmobi.com:9092,gakf4010.grid.dfw2.inmobi.com:9092"

# Zookeeper Quorum in each colo
default["flume_collector"]["kafka_zookeeper"]['dfw1']  = "kafka-zookeeper-1.grid.dfw1.inmobi.com:2181,kafka-zookeeper-2.grid.dfw1.inmobi.com:2181,kafka-zookeeper-3.grid.dfw1.inmobi.com:2181,kafka-zookeeper-4.grid.dfw1.inmobi.com:2181,kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['lhr1']  = "kafka-zookeeper-1.grid.lhr1.inmobi.com:2181,kafka-zookeeper-2.grid.lhr1.inmobi.com:2181,kafka-zookeeper-3.grid.lhr1.inmobi.com:2181,kafka-zookeeper-4.grid.lhr1.inmobi.com:2181,kafka-zookeeper-5.grid.lhr1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['pek1']  = "kafka-zookeeper-1.grid.pek1.inmobi.com:2181,kafka-zookeeper-2.grid.pek1.inmobi.com:2181,kafka-zookeeper-3.grid.pek1.inmobi.com:2181,kafka-zookeeper-4.grid.pek1.inmobi.com:2181,kafka-zookeeper-5.grid.pek1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['dfw2']  = "kafka-zookeeper-1.grid.dfw2.inmobi.com:2181,kafka-zookeeper-2.grid.dfw2.inmobi.com:2181,kafka-zookeeper-3.grid.dfw2.inmobi.com:2181,kafka-zookeeper-4.grid.dfw2.inmobi.com:2181,kafka-zookeeper-5.grid.dfw2.inmobi.com:2181"

#Flume Agents
default["flume_collector"]["flume_agent_host"]['dfw1']  = "oxns4002.grid.dfw1.inmobi.com"

default["flume_collector"]["mergesrc_consumer_gpsize"]['dfw1']  = "4"

######################################################### Platinum ###################################################################
default["flume_collector"]["endcollector_merge_retention_topics"]['dfw1']  = "testmerge"
default["flume_collector"]["endcollector_all_channels"]['dfw1']  = "kafka-to-hdfs-channel kafkamerge-to-hdfs-channel"
default["flume_collector"]["endcollector_all_sinks"]['dfw1'] = "kafka-to-hdfs-sink1 kafka-to-hdfs-sink2 kafka-to-hdfs-sink3 kafka-to-hdfs-sink4 kafka-to-hdfs-sink5 kafkamerge-to-hdfs-sink1 kafkamerge-to-hdfs-sink2 kafkamerge-to-hdfs-sink3 kafkamerge-to-hdfs-sink4 kafkamerge-to-hdfs-sink5"

#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['dfw1']  = {
     "dfw1kafkasrc" => {
         :src_category => "dfw1kafkasrc",
         :consumer_group => "dfw1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "kafka-to-hdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "user_context"},
     "lhr1kafkasrc" => {
         :src_category => "lhr1kafkasrc",
         :consumer_group => "lhr1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "kafka-to-hdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "pek1kafkasrc" => {
         :src_category => "pek1kafkasrc",
         :consumer_group => "pek1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "kafka-to-hdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "dfw2kafkasrc" => {
         :src_category => "dfw2kafkasrc",
         :consumer_group => "dfw2-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "kafka-to-hdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "user_context"},
     "dfw1mergedkafkasrc" => {
         :src_category => "dfw1mergedkafkasrc",
         :consumer_group => "dfw1-merge-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "kafkamerge-to-hdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_testmerge"},
     "lhr1mergedkafkasrc" => {
         :src_category => "lhr1mergedkafkasrc",
         :consumer_group => "lhr1-merge-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "kafkamerge-to-hdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_testmerge"},
     "pek1mergedkafkasrc" => {
         :src_category => "pek1mergedkafkasrc",
         :consumer_group => "pek1-merge-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "kafkamerge-to-hdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_testmerge"},
     "dfw2mergedkafkasrc" => {
         :src_category => "dfw2mergedkafkasrc",
         :consumer_group => "dfw2-merge-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "kafkamerge-to-hdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_testmerge"},
       }

default["flume_collector"]["endcollector_kafka_to_hdfs_channels"]['dfw1']  = ["kafka-to-hdfs-channel"]
default["flume_collector"]["endcollector_kafkamerge_to_hdfs_channels"]['dfw1']  = ["kafkamerge-to-hdfs-channel"]

default["flume_collector"]["endcollector_kafka_to_hdfs_sinks"]['dfw1']  = {
     "kafka-to-hdfs-sink1" => {:channel => "kafka-to-hdfs-channel",:cluster =>"platinum"},
     "kafka-to-hdfs-sink2" => {:channel => "kafka-to-hdfs-channel",:cluster =>"platinum"},
     "kafka-to-hdfs-sink3" => {:channel => "kafka-to-hdfs-channel",:cluster =>"platinum"},
     "kafka-to-hdfs-sink4" => {:channel => "kafka-to-hdfs-channel",:cluster =>"platinum"},
     "kafka-to-hdfs-sink5" => {:channel => "kafka-to-hdfs-channel",:cluster =>"platinum"}
}

default["flume_collector"]["endcollector_kafkamerge_to_hdfs_sinks"]['dfw1']  = {
     "kafkamerge-to-hdfs-sink1" => {:channel => "kafkamerge-to-hdfs-channel",:cluster =>"platinum"},
     "kafkamerge-to-hdfs-sink2" => {:channel => "kafkamerge-to-hdfs-channel",:cluster =>"platinum"},
     "kafkamerge-to-hdfs-sink3" => {:channel => "kafkamerge-to-hdfs-channel",:cluster =>"platinum"},
     "kafkamerge-to-hdfs-sink4" => {:channel => "kafkamerge-to-hdfs-channel",:cluster =>"platinum"},
     "kafkamerge-to-hdfs-sink5" => {:channel => "kafkamerge-to-hdfs-channel",:cluster =>"platinum"}
}
