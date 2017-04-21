# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.19"
default["flume_collector"]["download_url"] = "https://artifactory.corp.inmobi.com/artifactory/generic-tarball/flume/1.6.0.19/apache-flume-1.6.0.19-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"
default["flume_mid_collector"]["xms"]['lhr1']  = "2G"
default["flume_mid_collector"]["xmx"]['lhr1']  = "4G"
default["flume_collector"]["kafka_brokers"]['lhr1']  = "erkf4001.grid.lhr1.inmobi.com:9092,erkf4002.grid.lhr1.inmobi.com:9092,erkf4003.grid.lhr1.inmobi.com:9092,erkf4004.grid.lhr1.inmobi.com:9092,erkf4005.grid.lhr1.inmobi.com:9092,erkf4006.grid.lhr1.inmobi.com:9092,erkf4007.grid.lhr1.inmobi.com:9092,erkf4008.grid.lhr1.inmobi.com:9092,erkf4009.grid.lhr1.inmobi.com:9092,erkf4010.grid.lhr1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['azure']  = "skyhook-kf1.grid.lhr1.inmobi.com:9092,skyhook-kf2.grid.lhr1.inmobi.com:9092,skyhook-kf3.grid.lhr1.inmobi.com:9092,skyhook-kf4.grid.lhr1.inmobi.com:9092,skyhook-kf5.grid.lhr1.inmobi.com:9092"

default["flume_collector"]["kafka_zookeeper"]['lhr1']  = "kafka-zookeeper-1.grid.lhr1.inmobi.com:2181,kafka-zookeeper-2.grid.lhr1.inmobi.com:2181,kafka-zookeeper-3.grid.lhr1.inmobi.com:2181,kafka-zookeeper-4.grid.lhr1.inmobi.com:2181,kafka-zookeeper-5.grid.lhr1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['azure']  = "skyhook-kf1.grid.lhr1.inmobi.com:2181,skyhook-kf2.grid.lhr1.inmobi.com:2181,skyhook-kf3.grid.lhr1.inmobi.com:2181,skyhook-kf4.grid.lhr1.inmobi.com:2181,skyhook-kf5.grid.lhr1.inmobi.com:2181"


#Configure the sources for the Flume Collector
default["flume_collector"]["midcollector_sources"]['lhr1']  = {
     "avrosrc" => {
         :type => "avro",
         :channels => "lhr1collectorch1 lhr1collectorch2 lhr1collectorch3 lhr1collectorch4 lhr1collectorch5 lhr1collectorch6 lhr1collectorch7 lhr1collectorch8 lhr1collectorch9 lhr1collectorch10 lhr1collectorch11 lhr1collectorch12 azurekafkach1 azurekafkach2 azurekafkach3 azurekafkach4 azurekafkach5 azurekafkach6 azurekafkach7 azurekafkach8 azurekafkach9 azurekafkach10 azurekafkach11 azurekafkach12",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :'kafka.zookeeper' => node["flume_collector"]["kafka_zookeeper"]['lhr1'],
         :'enable_compression' => false,
         :port => "2540"},
     "zipavrosrc" => {
         :type => "avro",
         :channels => "lhr1collectorch1 lhr1collectorch2 lhr1collectorch3 lhr1collectorch4 lhr1collectorch5 lhr1collectorch6 lhr1collectorch7 lhr1collectorch8 lhr1collectorch9 lhr1collectorch10 lhr1collectorch11 lhr1collectorch12 azurekafkach1 azurekafkach2 azurekafkach3 azurekafkach4 azurekafkach5 azurekafkach6 azurekafkach7 azurekafkach8 azurekafkach9 azurekafkach10 azurekafkach11 azurekafkach12",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :'kafka.zookeeper' => node["flume_collector"]["kafka_zookeeper"]['lhr1'],
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["midcollector_channels"]['lhr1']  = {
     "lhr1collectorch1" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "lhr1collectorch2" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "lhr1collectorch3" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "lhr1collectorch4" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "lhr1collectorch5" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "lhr1collectorch6" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "lhr1collectorch7" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "lhr1collectorch8" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "lhr1collectorch9" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "lhr1collectorch10" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "lhr1collectorch11" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "lhr1collectorch12" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "azurekafkach1" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "azurekafkach2" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "azurekafkach3" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "azurekafkach4" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "azurekafkach5" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "azurekafkach6" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "azurekafkach7" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "azurekafkach8" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "azurekafkach9" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "azurekafkach10" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "azurekafkach11" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "azurekafkach12" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"}
         }


#Configure the sinks for the Flume Collector
default["flume_collector"]["midcollector_sinks"]['lhr1']  = {
     "lhr1avrosink1" => {
         :sink_category => "lhr1avro",
         :type => "avro",
         :channel => "lhr1collectorch1",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "lhr1avrosink2" => {
         :sink_category => "lhr1avro",
         :type => "avro",
         :channel => "lhr1collectorch2",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "lhr1avrosink3" => {
         :sink_category => "lhr1avro",
         :type => "avro",
         :channel => "lhr1collectorch3",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "lhr1avrosink4" => {
         :sink_category => "lhr1avro",
         :type => "avro",
         :channel => "lhr1collectorch4",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "lhr1avrosink5" => {
         :sink_category => "lhr1avro",
         :type => "avro",
         :channel => "lhr1collectorch5",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "lhr1avrosink6" => {
         :sink_category => "lhr1avro",
         :type => "avro",
         :channel => "lhr1collectorch6",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "lhr1avrosink7" => {
         :sink_category => "lhr1avro",
         :type => "avro",
         :channel => "lhr1collectorch7",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "lhr1avrosink8" => {
         :sink_category => "lhr1avro",
         :type => "avro",
         :channel => "lhr1collectorch8",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "lhr1avrosink9" => {
         :sink_category => "lhr1avro",
         :type => "avro",
         :channel => "lhr1collectorch9",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "lhr1avrosink10" => {
         :sink_category => "lhr1avro",
         :type => "avro",
         :channel => "lhr1collectorch10",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "lhr1avrosink11" => {
         :sink_category => "lhr1avro",
         :type => "avro",
         :channel => "lhr1collectorch11",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "lhr1avrosink12" => {
         :sink_category => "lhr1avro",
         :type => "avro",
         :channel => "lhr1collectorch12",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "azurekafkasink1" => {
         :sink_category => "azurekafka",
         :type => "org.apache.flume.sink.kafka.PooledKafkaSink",
         :channel => "azurekafkach1",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['azure'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "azurekafkasink2" => {
         :sink_category => "azurekafka",
         :type => "org.apache.flume.sink.kafka.PooledKafkaSink",
         :channel => "azurekafkach2",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['azure'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "azurekafkasink3" => {
         :sink_category => "azurekafka",
         :type => "org.apache.flume.sink.kafka.PooledKafkaSink",
         :channel => "azurekafkach3",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['azure'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "azurekafkasink4" => {
         :sink_category => "azurekafka",
         :type => "org.apache.flume.sink.kafka.PooledKafkaSink",
         :channel => "azurekafkach4",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['azure'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "azurekafkasink5" => {
         :sink_category => "azurekafka",
         :type => "org.apache.flume.sink.kafka.PooledKafkaSink",
         :channel => "azurekafkach5",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['azure'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "azurekafkasink6" => {
         :sink_category => "azurekafka",
         :type => "org.apache.flume.sink.kafka.PooledKafkaSink",
         :channel => "azurekafkach6",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['azure'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "azurekafkasink7" => {
         :sink_category => "azurekafka",
         :type => "org.apache.flume.sink.kafka.PooledKafkaSink",
         :channel => "azurekafkach7",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['azure'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "azurekafkasink8" => {
         :sink_category => "azurekafka",
         :type => "org.apache.flume.sink.kafka.PooledKafkaSink",
         :channel => "azurekafkach8",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['azure'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "azurekafkasink9" => {
         :sink_category => "azurekafka",
         :type => "org.apache.flume.sink.kafka.PooledKafkaSink",
         :channel => "azurekafkach9",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['azure'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "azurekafkasink10" => {
         :sink_category => "azurekafka",
         :type => "org.apache.flume.sink.kafka.PooledKafkaSink",
         :channel => "azurekafkach10",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['azure'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "azurekafkasink11" => {
         :sink_category => "azurekafka",
         :type => "org.apache.flume.sink.kafka.PooledKafkaSink",
         :channel => "azurekafkach11",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['azure'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "azurekafkasink12" => {
         :sink_category => "azurekafka",
         :type => "org.apache.flume.sink.kafka.PooledKafkaSink",
         :channel => "azurekafkach12",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['azure'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"}
         }

