# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.9"
default["flume_collector"]["download_url"] = "https://artifactory.corp.inmobi.com/artifactory/generic-tarball/flume/1.6.0.9/apache-flume-1.6.0.9-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"
default["flume_collector"]["kafka_brokers"]['hkg1']  = "opkf4001.grid.hkg1.inmobi.com:9092,opkf4002.grid.hkg1.inmobi.com:9092,opkf4003.grid.hkg1.inmobi.com:9092,opkf4004.grid.hkg1.inmobi.com:9092,opkf4005.grid.hkg1.inmobi.com:9092,opkf4006.grid.hkg1.inmobi.com:9092,opkf4007.grid.hkg1.inmobi.com:9092,opkf4008.grid.hkg1.inmobi.com:9092,opkf4009.grid.hkg1.inmobi.com:9092,opkf4010.grid.hkg1.inmobi.com:9092"

default["flume_collector"]["endcollector_sources"]['hkg1']  = {
     "avrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :port => "2540"} }

default["flume_collector"]["endcollector_channels"]['hkg1']  = {
     "spillable1" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"},
     "spillable2" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"},
     "spillable3" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"},
     "spillable4" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"},
     "spillable5" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"},
     "spillable6" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"}
         }


default["flume_collector"]["endcollector_sinks"]['hkg1']  = {
     "kafkasink1" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable1",
         :topicHeader => "category",
         :flumeBatchSize => "400",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink2" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable2",
         :topicHeader => "category",
         :flumeBatchSize => "400",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink3" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable3",
         :topicHeader => "category",
         :flumeBatchSize => "400",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink4" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable4",
         :topicHeader => "category",
         :flumeBatchSize => "400",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink5" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable5",
         :topicHeader => "category",
         :flumeBatchSize => "400",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink6" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable6",
         :topicHeader => "category",
         :flumeBatchSize => "400",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"}
         }

