# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.9"
default["flume_collector"]["download_url"] = "https://artifactory.corp.inmobi.com/artifactory/generic-tarball/flume/1.6.0.9/apache-flume-1.6.0.9-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"
default["flume_collector"]["kafka_brokers"]['hkg1']  = "opkf4001.grid.hkg1.inmobi.com:9092,opkf4002.grid.hkg1.inmobi.com:9092,opkf4003.grid.hkg1.inmobi.com:9092,opkf4004.grid.hkg1.inmobi.com:9092,opkf4005.grid.hkg1.inmobi.com:9092,opkf4006.grid.hkg1.inmobi.com:9092,opkf4007.grid.hkg1.inmobi.com:9092,opkf4008.grid.hkg1.inmobi.com:9092,opkf4009.grid.hkg1.inmobi.com:9092,opkf4010.grid.hkg1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['uh1']  = "krkf4001.grid.uh1.inmobi.com:9092,krkf4002.grid.uh1.inmobi.com:9092,krkf4003.grid.uh1.inmobi.com:9092,krkf4004.grid.uh1.inmobi.com:9092,krkf4005.grid.uh1.inmobi.com:9092,krkf4006.grid.uh1.inmobi.com:9092,krkf4007.grid.uh1.inmobi.com:9092,krkf4008.grid.uh1.inmobi.com:9092,krkf4009.grid.uh1.inmobi.com:9092,krkf4010.grid.uh1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9092,oxkf4002.grid.dfw1.inmobi.com:9092,oxkf4003.grid.dfw1.inmobi.com:9092,oxkf4008.grid.dfw1.inmobi.com:9092,oxkf4009.grid.dfw1.inmobi.com:9092,oxkf4010.grid.dfw1.inmobi.com:9092,oxkf4011.grid.dfw1.inmobi.com:9092,oxkf4012.grid.dfw1.inmobi.com:9092,oxkf4013.grid.dfw1.inmobi.com:9092,oxkf4014.grid.dfw1.inmobi.com:9092,oxkf4015.grid.dfw1.inmobi.com:9092,oxkf4016.grid.dfw1.inmobi.com:9092,oxkf4017.grid.dfw1.inmobi.com:9092"

#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['hkg1']  = {
     "avrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :'enable_compression' => false,
         :port => "2540"},
     "zipavrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"}
       }

default["flume_collector"]["endcollector_sources"]['uh1']  = {
     "avrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :port => "2540"} }

default["flume_collector"]["endcollector_sources"]['dfw1']  = {
     "avrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :port => "2540"} }


#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_channels"]['hkg1']  = {
     "spillable1" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "100000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable2" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "100000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable3" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "100000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable4" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "100000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable5" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "100000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable6" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "100000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable7" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "100000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable8" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "100000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable9" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "100000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable10" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"}
         }

default["flume_collector"]["endcollector_channels"]['uh1']  = {
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
         :spoolDiskCapacityMB => "150000"},
     "spillable7" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"},
     "spillable8" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"},
     "spillable9" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"},
     "spillable10" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"}
         }

default["flume_collector"]["endcollector_channels"]['dfw1']  = {
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
         :spoolDiskCapacityMB => "150000"},
     "spillable7" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"},
     "spillable8" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"},
     "spillable9" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"},
     "spillable10" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "70000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "150000"}
         }

#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_sinks"]['hkg1']  = {
     "kafkasink1" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable1",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink2" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable2",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink3" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable3",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink4" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable4",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink5" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable5",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink6" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable6",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink7" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable7",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink8" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable8",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink9" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable9",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink10" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable10",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['hkg1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"}
         }

default["flume_collector"]["endcollector_sinks"]['uh1']  = {
     "kafkasink1" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable1",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['uh1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink2" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable2",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['uh1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink3" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable3",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['uh1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink4" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable4",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['uh1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink5" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable5",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['uh1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink6" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable6",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['uh1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink7" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable7",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['uh1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink8" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable8",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['uh1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink9" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable9",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['uh1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink10" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable10",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['uh1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"}
         }

default["flume_collector"]["endcollector_sinks"]['dfw1']  = {
     "kafkasink1" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable1",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['dfw1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink2" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable2",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['dfw1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink3" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable3",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['dfw1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink4" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable4",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['dfw1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink5" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable5",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['dfw1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink6" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable6",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['dfw1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink7" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable7",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['dfw1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink8" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable8",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['dfw1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink9" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable9",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['dfw1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"},
     "kafkasink10" => {
         :type => "org.apache.flume.sink.kafka.KafkaSink",
         :channel => "spillable10",
         :topicHeader => "category",
         :flumeBatchSize => "500",
         :'kafka.bootstrap.servers' => node["flume_collector"]["kafka_brokers"]['dfw1'],
         :'kafka.topic' => "dummy",
         :'kafka.producer.compression.type' => "gzip"}
         }
