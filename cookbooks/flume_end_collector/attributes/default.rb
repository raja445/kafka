# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.13"
default["flume_collector"]["download_url"] = "https://artifactory.corp.inmobi.com/artifactory/generic-tarball/flume/1.6.0.13/apache-flume-1.6.0.13-bin.tar.gz"
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

# Flume VIPs in each colo
default["flume_collector"]["vip"]['uh1']  = "flume.grid.uh1.inmobi.com"
default["flume_collector"]["vip"]['dfw1']  = "flume.grid.dfw1.inmobi.com"
default["flume_collector"]["vip"]['lhr1']  = "flume.grid.lhr1.inmobi.com"
default["flume_collector"]["vip"]['hkg1']  = "flume.grid.hkg1.inmobi.com"


######################################################### UH1 ###################################################################

default["flume_collector"]["endcollector_all_channels"]['uh1']  = "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32 mergespillable1 mergespillable2 uh1-to-uh1-channel1 uh1-to-uh1-channel2 uh1-to-hkg1-channel1 uh1-to-hkg1-channel2 uh1-to-pek1-channel1 uh1-to-pek1-channel2 uh1-to-lhr1-channel1 uh1-to-lhr1-channel2 uh1-to-dfw1-channel1 uh1-to-dfw1-channel2"

default["flume_collector"]["endcollector_all_sinks"]['uh1'] = "kafkasink1 kafkasink2 kafkasink3 kafkasink4 kafkasink5 kafkasink6 kafkasink7 kafkasink8 kafkasink9 kafkasink10 kafkasink11 kafkasink12 kafkasink13 kafkasink14 kafkasink15 kafkasink16 kafkasink17 kafkasink18 kafkasink19 kafkasink20 kafkasink21 kafkasink22 kafkasink23 kafkasink24 kafkasink25 kafkasink26 kafkasink27 kafkasink28 kafkasink29 kafkasink30 kafkasink31 kafkasink32 mergekafkasink1 mergekafkasink2 uh1-mergesink1 uh1-mergesink2 hkg1-mergesink1 hkg1-mergesink2 dfw1-mergesink1 dfw1-mergesink2 lhr1-mergesink1 lhr1-mergesink2 pek1-mergesink1 pek1-mergesink2"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['uh1']  = {
     "zipavrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"},
     "mergezipavrosrc" => {
         :type => "avro",
         :channels => "mergespillable1 mergespillable2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2540"},
     "uh1-to-uh1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-uh1-channel1 uh1-to-uh1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "uh1-to-hkg1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-hkg1-channel1 uh1-to-hkg1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "uh1-to-dfw1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-dfw1-channel1 uh1-to-dfw1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "uh1-to-lhr1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-lhr1-channel1 uh1-to-lhr1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "uh1-to-pek1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-pek1-channel1 uh1-to-pek1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['uh1']  = ["spillable1","spillable2","spillable3","spillable4","spillable5","spillable6","spillable7","spillable8","spillable9","spillable10","spillable11","spillable12","spillable13","spillable14","spillable15","spillable16","spillable17","spillable18","spillable19","spillable20","spillable21","spillable22","spillable23","spillable24","spillable25","spillable26","spillable27","spillable28","spillable29","spillable30","spillable31","spillable32"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['uh1']  = ["mergespillable1","mergespillable2"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['uh1']  = ["uh1-to-uh1-channel1","uh1-to-uh1-channel2","uh1-to-hkg1-channel1","uh1-to-hkg1-channel2","uh1-to-pek1-channel1","uh1-to-pek1-channel2","uh1-to-lhr1-channel1","uh1-to-lhr1-channel2","uh1-to-dfw1-channel1","uh1-to-dfw1-channel2"]


#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['uh1']  = {
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


default["flume_collector"]["endcollector_merged_kafka_sinks"]['uh1']  = {
     "mergekafkasink1" => {:channel => "mergespillable1"},
     "mergekafkasink2" => {:channel => "mergespillable2"}
}

default["flume_collector"]["endcollector_merged_avro_sinks"]['uh1']  = {
     "uh1-mergesink1" => {:channel => "uh1-to-uh1-channel1"},
     "uh1-mergesink2" => {:channel => "uh1-to-uh1-channel2"},
     "hkg1-mergesink1" => {:channel => "uh1-to-hkg1-channel1"},
     "hkg1-mergesink2" => {:channel => "uh1-to-hkg1-channel2"},
     "dfw1-mergesink1" => {:channel => "uh1-to-dfw1-channel1"},
     "dfw1-mergesink2" => {:channel => "uh1-to-dfw1-channel2"},
     "lhr1-mergesink1" => {:channel => "uh1-to-lhr1-channel1"},
     "lhr1-mergesink2" => {:channel => "uh1-to-lhr1-channel2"},
     "pek1-mergesink1" => {:channel => "uh1-to-pek1-channel1"},
     "pek1-mergesink2" => {:channel => "uh1-to-pek1-channel2"}
}

######################################################### End Of UH1 ###################################################################



######################################################### DFW1 ###################################################################

default["flume_collector"]["endcollector_all_channels"]['dfw1']  = "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32 mergespillable1 mergespillable2 dfw1-to-uh1-channel1 dfw1-to-uh1-channel2 dfw1-to-hkg1-channel1 dfw1-to-hkg1-channel2 dfw1-to-pek1-channel1 dfw1-to-pek1-channel2 dfw1-to-lhr1-channel1 dfw1-to-lhr1-channel2 dfw1-to-dfw1-channel1 dfw1-to-dfw1-channel2"

default["flume_collector"]["endcollector_all_sinks"]['dfw1'] = "kafkasink1 kafkasink2 kafkasink3 kafkasink4 kafkasink5 kafkasink6 kafkasink7 kafkasink8 kafkasink9 kafkasink10 kafkasink11 kafkasink12 kafkasink13 kafkasink14 kafkasink15 kafkasink16 kafkasink17 kafkasink18 kafkasink19 kafkasink20 kafkasink21 kafkasink22 kafkasink23 kafkasink24 kafkasink25 kafkasink26 kafkasink27 kafkasink28 kafkasink29 kafkasink30 kafkasink31 kafkasink32 mergekafkasink1 mergekafkasink2 uh1-mergesink1 uh1-mergesink2 hkg1-mergesink1 hkg1-mergesink2 dfw1-mergesink1 dfw1-mergesink2 lhr1-mergesink1 lhr1-mergesink2 pek1-mergesink1 pek1-mergesink2"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['dfw1']  = {
     "avrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :port => "2540"},
     "zipavrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"},
     "mergezipavrosrc" => {
         :type => "avro",
         :channels => "mergespillable1 mergespillable2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2542"},
     "dfw1-to-uh1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-uh1-channel1 dfw1-to-uh1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "dfw1-to-hkg1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-hkg1-channel1 dfw1-to-hkg1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "dfw1-to-dfw1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-dfw1-channel1 dfw1-to-dfw1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "dfw1-to-lhr1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-lhr1-channel1 dfw1-to-lhr1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "dfw1-to-pek1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-pek1-channel1 dfw1-to-pek1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['dfw1']  = ["spillable1","spillable2","spillable3","spillable4","spillable5","spillable6","spillable7","spillable8","spillable9","spillable10","spillable11","spillable12","spillable13","spillable14","spillable15","spillable16","spillable17","spillable18","spillable19","spillable20","spillable21","spillable22","spillable23","spillable24","spillable25","spillable26","spillable27","spillable28","spillable29","spillable30","spillable31","spillable32"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['dfw1']  = ["mergespillable1","mergespillable2"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['dfw1']  = ["dfw1-to-uh1-channel1","dfw1-to-uh1-channel2","dfw1-to-hkg1-mergesrc1","dfw1-to-hkg1-mergesrc2","dfw1-to-pek1-channel1","dfw1-to-pek1-channel2","dfw1-to-lhr1-channel1","dfw1-to-lhr1-channel2","dfw1-to-dfw1-channel1","dfw1-to-dfw1-channel2"]


#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['dfw1']  = {
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


default["flume_collector"]["endcollector_merged_kafka_sinks"]['dfw1']  = {
     "mergekafkasink1" => {:channel => "mergespillable1"},
     "mergekafkasink2" => {:channel => "mergespillable2"}
}

default["flume_collector"]["endcollector_merged_avro_sinks"]['dfw1']  = {
     "uh1-mergesink1" => {:channel => "dfw1-to-uh1-channel1"},
     "uh1-mergesink2" => {:channel => "dfw1-to-uh1-channel2"},
     "hkg1-mergesink1" => {:channel => "dfw1-to-hkg1-channel1"},
     "hkg1-mergesink2" => {:channel => "dfw1-to-hkg1-channel2"},
     "dfw1-mergesink1" => {:channel => "dfw1-to-dfw1-channel1"},
     "dfw1-mergesink2" => {:channel => "dfw1-to-dfw1-channel2"},
     "lhr1-mergesink1" => {:channel => "dfw1-to-lhr1-channel1"},
     "lhr1-mergesink2" => {:channel => "dfw1-to-lhr1-channel2"},
     "pek1-mergesink1" => {:channel => "dfw1-to-pek1-channel1"},
     "pek1-mergesink2" => {:channel => "dfw1-to-pek1-channel2"}
}

######################################################### End Of DFW1 ###################################################################




######################################################### LHR1 ###################################################################

default["flume_collector"]["endcollector_all_channels"]['lhr1']  = "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32 mergespillable1 mergespillable2 lhr1-to-uh1-channel1 lhr1-to-uh1-channel2 lhr1-to-hkg1-channel1 lhr1-to-hkg1-channel2 lhr1-to-pek1-channel1 lhr1-to-pek1-channel2 lhr1-to-lhr1-channel1 lhr1-to-lhr1-channel2 lhr1-to-dfw1-channel1 lhr1-to-dfw1-channel2"

default["flume_collector"]["endcollector_all_sinks"]['lhr1'] = "kafkasink1 kafkasink2 kafkasink3 kafkasink4 kafkasink5 kafkasink6 kafkasink7 kafkasink8 kafkasink9 kafkasink10 kafkasink11 kafkasink12 kafkasink13 kafkasink14 kafkasink15 kafkasink16 kafkasink17 kafkasink18 kafkasink19 kafkasink20 kafkasink21 kafkasink22 kafkasink23 kafkasink24 kafkasink25 kafkasink26 kafkasink27 kafkasink28 kafkasink29 kafkasink30 kafkasink31 kafkasink32 mergekafkasink1 mergekafkasink2 uh1-mergesink1 uh1-mergesink2 hkg1-mergesink1 hkg1-mergesink2 dfw1-mergesink1 dfw1-mergesink2 lhr1-mergesink1 lhr1-mergesink2 pek1-mergesink1 pek1-mergesink2"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['lhr1']  = {
     "avrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :port => "2540"},
     "zipavrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"},
     "mergezipavrosrc" => {
         :type => "avro",
         :channels => "mergespillable1 mergespillable2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2542"},
     "lhr1-to-uh1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-uh1-channel1 lhr1-to-uh1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "lhr1-to-hkg1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-hkg1-channel1 lhr1-to-hkg1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "lhr1-to-dfw1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-dfw1-channel1 lhr1-to-dfw1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "lhr1-to-lhr1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-lhr1-channel1 lhr1-to-lhr1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "lhr1-to-pek1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-pek1-channel1 lhr1-to-pek1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['lhr1']  = ["spillable1","spillable2","spillable3","spillable4","spillable5","spillable6","spillable7","spillable8","spillable9","spillable10","spillable11","spillable12","spillable13","spillable14","spillable15","spillable16","spillable17","spillable18","spillable19","spillable20","spillable21","spillable22","spillable23","spillable24","spillable25","spillable26","spillable27","spillable28","spillable29","spillable30","spillable31","spillable32"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['lhr1']  = ["mergespillable1","mergespillable2"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['lhr1']  = ["lhr1-to-uh1-channel1","lhr1-to-uh1-channel2","lhr1-to-hkg1-mergesrc1","lhr1-to-hkg1-mergesrc2","lhr1-to-pek1-channel1","lhr1-to-pek1-channel2","lhr1-to-lhr1-channel1","lhr1-to-lhr1-channel2","lhr1-to-dfw1-channel1","lhr1-to-dfw1-channel2"]


#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['lhr1']  = {
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


default["flume_collector"]["endcollector_merged_kafka_sinks"]['lhr1']  = {
     "mergekafkasink1" => {:channel => "mergespillable1"},
     "mergekafkasink2" => {:channel => "mergespillable2"}
}

default["flume_collector"]["endcollector_merged_avro_sinks"]['lhr1']  = {
     "uh1-mergesink1" => {:channel => "lhr1-to-uh1-channel1"},
     "uh1-mergesink2" => {:channel => "lhr1-to-uh1-channel2"},
     "hkg1-mergesink1" => {:channel => "lhr1-to-hkg1-channel1"},
     "hkg1-mergesink2" => {:channel => "lhr1-to-hkg1-channel2"},
     "dfw1-mergesink1" => {:channel => "lhr1-to-dfw1-channel1"},
     "dfw1-mergesink2" => {:channel => "lhr1-to-dfw1-channel2"},
     "lhr1-mergesink1" => {:channel => "lhr1-to-lhr1-channel1"},
     "lhr1-mergesink2" => {:channel => "lhr1-to-lhr1-channel2"},
     "pek1-mergesink1" => {:channel => "lhr1-to-pek1-channel1"},
     "pek1-mergesink2" => {:channel => "lhr1-to-pek1-channel2"}
}

######################################################### End Of LHR1 ###################################################################






######################################################### HKG1 ###################################################################

default["flume_collector"]["endcollector_all_channels"]['hkg1']  = "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32 mergespillable1 mergespillable2 hkg1-to-uh1-channel1 hkg1-to-uh1-channel2 hkg1-to-hkg1-channel1 hkg1-to-hkg1-channel2 hkg1-to-pek1-channel1 hkg1-to-pek1-channel2 hkg1-to-lhr1-channel1 hkg1-to-lhr1-channel2 hkg1-to-dfw1-channel1 hkg1-to-dfw1-channel2"

default["flume_collector"]["endcollector_all_sinks"]['hkg1'] = "kafkasink1 kafkasink2 kafkasink3 kafkasink4 kafkasink5 kafkasink6 kafkasink7 kafkasink8 kafkasink9 kafkasink10 kafkasink11 kafkasink12 kafkasink13 kafkasink14 kafkasink15 kafkasink16 kafkasink17 kafkasink18 kafkasink19 kafkasink20 kafkasink21 kafkasink22 kafkasink23 kafkasink24 kafkasink25 kafkasink26 kafkasink27 kafkasink28 kafkasink29 kafkasink30 kafkasink31 kafkasink32 mergekafkasink1 mergekafkasink2 uh1-mergesink1 uh1-mergesink2 hkg1-mergesink1 hkg1-mergesink2 dfw1-mergesink1 dfw1-mergesink2 lhr1-mergesink1 lhr1-mergesink2 pek1-mergesink1 pek1-mergesink2"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['hkg1']  = {
     "avrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :port => "2540"},
     "zipavrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"},
     "mergezipavrosrc" => {
         :type => "avro",
         :channels => "mergespillable1 mergespillable2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2542"},
     "hkg1-to-uh1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hkg1-to-uh1-channel1 hkg1-to-uh1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "hkg1-to-hkg1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hkg1-to-hkg1-channel1 hkg1-to-hkg1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "hkg1-to-dfw1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hkg1-to-dfw1-channel1 hkg1-to-dfw1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "hkg1-to-lhr1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hkg1-to-lhr1-channel1 hkg1-to-lhr1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "hkg1-to-pek1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hkg1-to-pek1-channel1 hkg1-to-pek1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['hkg1']  = ["spillable1","spillable2","spillable3","spillable4","spillable5","spillable6","spillable7","spillable8","spillable9","spillable10","spillable11","spillable12","spillable13","spillable14","spillable15","spillable16","spillable17","spillable18","spillable19","spillable20","spillable21","spillable22","spillable23","spillable24","spillable25","spillable26","spillable27","spillable28","spillable29","spillable30","spillable31","spillable32"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['hkg1']  = ["mergespillable1","mergespillable2"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['hkg1']  = ["hkg1-to-uh1-channel1","hkg1-to-uh1-channel2","hkg1-to-hkg1-mergesrc1","hkg1-to-hkg1-mergesrc2","hkg1-to-pek1-channel1","hkg1-to-pek1-channel2","hkg1-to-lhr1-channel1","hkg1-to-lhr1-channel2","hkg1-to-dfw1-channel1","hkg1-to-dfw1-channel2"]


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
     "uh1-mergesink1" => {:channel => "hkg1-to-uh1-channel1"},
     "uh1-mergesink2" => {:channel => "hkg1-to-uh1-channel2"},
     "hkg1-mergesink1" => {:channel => "hkg1-to-hkg1-channel1"},
     "hkg1-mergesink2" => {:channel => "hkg1-to-hkg1-channel2"},
     "dfw1-mergesink1" => {:channel => "hkg1-to-dfw1-channel1"},
     "dfw1-mergesink2" => {:channel => "hkg1-to-dfw1-channel2"},
     "lhr1-mergesink1" => {:channel => "hkg1-to-lhr1-channel1"},
     "lhr1-mergesink2" => {:channel => "hkg1-to-lhr1-channel2"},
     "pek1-mergesink1" => {:channel => "hkg1-to-pek1-channel1"},
     "pek1-mergesink2" => {:channel => "hkg1-to-pek1-channel2"}
}

######################################################### End Of HKG1 ###################################################################




######################################################### PEK1 ###################################################################

default["flume_collector"]["endcollector_all_channels"]['pek1']  = "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32 mergespillable1 mergespillable2 pek1-to-uh1-channel1 pek1-to-uh1-channel2 pek1-to-hkg1-channel1 pek1-to-hkg1-channel2 pek1-to-pek1-channel1 pek1-to-pek1-channel2 pek1-to-lhr1-channel1 pek1-to-lhr1-channel2 pek1-to-dfw1-channel1 pek1-to-dfw1-channel2"

default["flume_collector"]["endcollector_all_sinks"]['pek1'] = "kafkasink1 kafkasink2 kafkasink3 kafkasink4 kafkasink5 kafkasink6 kafkasink7 kafkasink8 kafkasink9 kafkasink10 kafkasink11 kafkasink12 kafkasink13 kafkasink14 kafkasink15 kafkasink16 kafkasink17 kafkasink18 kafkasink19 kafkasink20 kafkasink21 kafkasink22 kafkasink23 kafkasink24 kafkasink25 kafkasink26 kafkasink27 kafkasink28 kafkasink29 kafkasink30 kafkasink31 kafkasink32 mergekafkasink1 mergekafkasink2 uh1-mergesink1 uh1-mergesink2 hkg1-mergesink1 hkg1-mergesink2 dfw1-mergesink1 dfw1-mergesink2 lhr1-mergesink1 lhr1-mergesink2 pek1-mergesink1 pek1-mergesink2"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['pek1']  = {
     "zipavrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24 spillable25 spillable26 spillable27 spillable28 spillable29 spillable30 spillable31 spillable32",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"},
     "mergezipavrosrc" => {
         :type => "avro",
         :channels => "mergespillable1 mergespillable2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2540"},
     "pek1-to-uh1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-uh1-channel1 pek1-to-uh1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "pek1-to-hkg1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-hkg1-channel1 pek1-to-hkg1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "pek1-to-dfw1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-dfw1-channel1 pek1-to-dfw1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "pek1-to-lhr1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-lhr1-channel1 pek1-to-lhr1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"},
     "pek1-to-pek1-mergesrc1" => {
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-pek1-channel1 pek1-to-pek1-channel2",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :batchSize => 500,
         :'kafka.topics' => "topic1,topic2,topic3"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['pek1']  = ["spillable1","spillable2","spillable3","spillable4","spillable5","spillable6","spillable7","spillable8","spillable9","spillable10","spillable11","spillable12","spillable13","spillable14","spillable15","spillable16","spillable17","spillable18","spillable19","spillable20","spillable21","spillable22","spillable23","spillable24","spillable25","spillable26","spillable27","spillable28","spillable29","spillable30","spillable31","spillable32"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['pek1']  = ["mergespillable1","mergespillable2"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['pek1']  = ["pek1-to-uh1-channel1","pek1-to-uh1-channel2","pek1-to-hkg1-channel1","pek1-to-hkg1-channel2","pek1-to-pek1-channel1","pek1-to-pek1-channel2","pek1-to-lhr1-channel1","pek1-to-lhr1-channel2","pek1-to-dfw1-channel1","pek1-to-dfw1-channel2"]


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
     "uh1-mergesink1" => {:channel => "pek1-to-uh1-channel1"},
     "uh1-mergesink2" => {:channel => "pek1-to-uh1-channel2"},
     "hkg1-mergesink1" => {:channel => "pek1-to-hkg1-channel1"},
     "hkg1-mergesink2" => {:channel => "pek1-to-hkg1-channel2"},
     "dfw1-mergesink1" => {:channel => "pek1-to-dfw1-channel1"},
     "dfw1-mergesink2" => {:channel => "pek1-to-dfw1-channel2"},
     "lhr1-mergesink1" => {:channel => "pek1-to-lhr1-channel1"},
     "lhr1-mergesink2" => {:channel => "pek1-to-lhr1-channel2"},
     "pek1-mergesink1" => {:channel => "pek1-to-pek1-channel1"},
     "pek1-mergesink2" => {:channel => "pek1-to-pek1-channel2"}
}

######################################################### End Of PEK1 ###################################################################
