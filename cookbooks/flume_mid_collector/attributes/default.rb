# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.12"
default["flume_collector"]["download_url"] = "https://artifactory.corp.inmobi.com/artifactory/generic-tarball/flume/1.6.0.12/apache-flume-1.6.0.12-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"
default["flume_mid_collector"]["xms"]['uh1']  = "1G"
default["flume_mid_collector"]["xmx"]['uh1']  = "2G"
default["flume_mid_collector"]["xms"]['hkg1']  = "3G"
default["flume_mid_collector"]["xmx"]['hkg1']  = "4G"
default["flume_collector"]["kafka_brokers"]['hkg1']  = "opkf4001.grid.hkg1.inmobi.com:9092,opkf4002.grid.hkg1.inmobi.com:9092,opkf4003.grid.hkg1.inmobi.com:9092,opkf4004.grid.hkg1.inmobi.com:9092,opkf4005.grid.hkg1.inmobi.com:9092,opkf4006.grid.hkg1.inmobi.com:9092,opkf4007.grid.hkg1.inmobi.com:9092,opkf4008.grid.hkg1.inmobi.com:9092,opkf4009.grid.hkg1.inmobi.com:9092,opkf4010.grid.hkg1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['uh1']  = "krkf4001.grid.uh1.inmobi.com:9092,krkf4002.grid.uh1.inmobi.com:9092,krkf4003.grid.uh1.inmobi.com:9092,krkf4004.grid.uh1.inmobi.com:9092,krkf4005.grid.uh1.inmobi.com:9092,krkf4006.grid.uh1.inmobi.com:9092,krkf4007.grid.uh1.inmobi.com:9092,krkf4008.grid.uh1.inmobi.com:9092,krkf4009.grid.uh1.inmobi.com:9092,krkf4010.grid.uh1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['lhr1']  = "erkf4001.grid.lhr1.inmobi.com:9092,erkf4002.grid.lhr1.inmobi.com:9092,erkf4003.grid.lhr1.inmobi.com:9092,erkf4004.grid.lhr1.inmobi.com:9092,erkf4005.grid.lhr1.inmobi.com:9092,erkf4006.grid.lhr1.inmobi.com:9092,erkf4007.grid.lhr1.inmobi.com:9092,erkf4008.grid.lhr1.inmobi.com:9092,erkf4009.grid.lhr1.inmobi.com:9092,erkf4010.grid.lhr1.inmobi.com:9092"

default["flume_collector"]["kafka_zookeeper"]['hkg1']  = "kafka-zookeeper-1.grid.hkg1.inmobi.com:2181,kafka-zookeeper-2.grid.hkg1.inmobi.com:2181,kafka-zookeeper-3.grid.hkg1.inmobi.com:2181,kafka-zookeeper-4.grid.hkg1.inmobi.com:2181,kafka-zookeeper-5.grid.hkg1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['uh1']  = "kafka-zookeeper-1.grid.uh1.inmobi.com:2181,kafka-zookeeper-2.grid.uh1.inmobi.com:2181,kafka-zookeeper-3.grid.uh1.inmobi.com:2181,kafka-zookeeper-4.grid.uh1.inmobi.com:2181,kafka-zookeeper-5.grid.uh1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['lhr1']  = "kafka-zookeeper-1.grid.lhr1.inmobi.com:2181,kafka-zookeeper-2.grid.lhr1.inmobi.com:2181,kafka-zookeeper-3.grid.lhr1.inmobi.com:2181,kafka-zookeeper-4.grid.lhr1.inmobi.com:2181,kafka-zookeeper-5.grid.lhr1.inmobi.com:2181"

#Configure the sources for the Flume Collector
default["flume_collector"]["midcollector_sources"]['hkg1']  = {
     "avrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :'kafka.zookeeper' => node["flume_collector"]["kafka_zookeeper"]['hkg1'],
         :'enable_compression' => false,
         :port => "2540"},
     "zipavrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :'kafka.zookeeper' => node["flume_collector"]["kafka_zookeeper"]['hkg1'],
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"}
       }

#Configure the sources for the UH1 Flume Collector
default["flume_collector"]["midcollector_sources"]['uh1']  = {
     "avrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'kafka.zookeeper' => node["flume_collector"]["kafka_zookeeper"]['uh1'],
         :bind => "0.0.0.0",
         :'enable_compression' => false,
         :port => "2540"},
     "zipavrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :'kafka.zookeeper' => node["flume_collector"]["kafka_zookeeper"]['uh1'],
         :bind => "0.0.0.0",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"}
       }

#Configure the sources for the Flume Collector
default["flume_collector"]["midcollector_sources"]['lhr1']  = {
     "avrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :'kafka.zookeeper' => node["flume_collector"]["kafka_zookeeper"]['lhr1'],
         :'enable_compression' => false,
         :port => "2540"},
     "zipavrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6 spillable7 spillable8 spillable9 spillable10 spillable11 spillable12 spillable13 spillable14 spillable15 spillable16 spillable17 spillable18 spillable19 spillable20 spillable21 spillable22 spillable23 spillable24",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :'kafka.zookeeper' => node["flume_collector"]["kafka_zookeeper"]['lhr1'],
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"}
       }


#Configure the channels for the Flume Collector
default["flume_collector"]["midcollector_channels"]['hkg1']  = {
     "spillable1" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable2" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable3" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable4" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable5" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable6" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable7" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable8" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable9" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable10" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable11" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable12" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable13" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable14" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable15" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable16" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable17" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable18" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable19" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable20" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable21" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable22" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable23" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable24" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"}
         }



#Configure the channels for the Flume Collector
default["flume_collector"]["midcollector_channels"]['lhr1']  = {
     "spillable1" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable2" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable3" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable4" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable5" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable6" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable7" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable8" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable9" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable10" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable11" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable12" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable13" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable14" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable15" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable16" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable17" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable18" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable19" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable20" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable21" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable22" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable23" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable24" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"}
         }



#Configure the channels for the UH1 Flume Collector
default["flume_collector"]["midcollector_channels"]['uh1']  = {
     "spillable1" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable2" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable3" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable4" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable5" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable6" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "20000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"}
         }

#Configure the sinks for the Flume Collector
default["flume_collector"]["midcollector_sinks"]['hkg1']  = {
     "avrosink1" => {
         :type => "avro",
         :channel => "spillable1",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink2" => {
         :type => "avro",
         :channel => "spillable2",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink3" => {
         :type => "avro",
         :channel => "spillable3",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink4" => {
         :type => "avro",
         :channel => "spillable4",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink5" => {
         :type => "avro",
         :channel => "spillable5",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink6" => {
         :type => "avro",
         :channel => "spillable6",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink7" => {
         :type => "avro",
         :channel => "spillable7",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink8" => {
         :type => "avro",
         :channel => "spillable8",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink9" => {
         :type => "avro",
         :channel => "spillable9",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink10" => {
         :type => "avro",
         :channel => "spillable10",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink11" => {
         :type => "avro",
         :channel => "spillable11",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink12" => {
         :type => "avro",
         :channel => "spillable12",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink13" => {
         :type => "avro",
         :channel => "spillable13",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink14" => {
         :type => "avro",
         :channel => "spillable14",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink15" => {
         :type => "avro",
         :channel => "spillable15",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink16" => {
         :type => "avro",
         :channel => "spillable16",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink17" => {
         :type => "avro",
         :channel => "spillable17",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink18" => {
         :type => "avro",
         :channel => "spillable18",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink19" => {
         :type => "avro",
         :channel => "spillable19",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink20" => {
         :type => "avro",
         :channel => "spillable20",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink21" => {
         :type => "avro",
         :channel => "spillable21",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink22" => {
         :type => "avro",
         :channel => "spillable22",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink23" => {
         :type => "avro",
         :channel => "spillable23",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink24" => {
         :type => "avro",
         :channel => "spillable24",
         :hostname => "flume.grid.hkg1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"}
         }


#Configure the sinks for the Flume Collector
default["flume_collector"]["midcollector_sinks"]['lhr1']  = {
     "avrosink1" => {
         :type => "avro",
         :channel => "spillable1",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink2" => {
         :type => "avro",
         :channel => "spillable2",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink3" => {
         :type => "avro",
         :channel => "spillable3",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink4" => {
         :type => "avro",
         :channel => "spillable4",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink5" => {
         :type => "avro",
         :channel => "spillable5",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink6" => {
         :type => "avro",
         :channel => "spillable6",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink7" => {
         :type => "avro",
         :channel => "spillable7",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink8" => {
         :type => "avro",
         :channel => "spillable8",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink9" => {
         :type => "avro",
         :channel => "spillable9",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink10" => {
         :type => "avro",
         :channel => "spillable10",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink11" => {
         :type => "avro",
         :channel => "spillable11",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink12" => {
         :type => "avro",
         :channel => "spillable12",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink13" => {
         :type => "avro",
         :channel => "spillable13",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink14" => {
         :type => "avro",
         :channel => "spillable14",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink15" => {
         :type => "avro",
         :channel => "spillable15",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink16" => {
         :type => "avro",
         :channel => "spillable16",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink17" => {
         :type => "avro",
         :channel => "spillable17",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink18" => {
         :type => "avro",
         :channel => "spillable18",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink19" => {
         :type => "avro",
         :channel => "spillable19",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink20" => {
         :type => "avro",
         :channel => "spillable20",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink21" => {
         :type => "avro",
         :channel => "spillable21",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink22" => {
         :type => "avro",
         :channel => "spillable22",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink23" => {
         :type => "avro",
         :channel => "spillable23",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink24" => {
         :type => "avro",
         :channel => "spillable24",
         :hostname => "flume.grid.lhr1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"}
         }



#Configure the sinks for the Flume Collector
default["flume_collector"]["midcollector_sinks"]['uh1']  = {
     "avrosink1" => {
         :type => "avro",
         :channel => "spillable1",
         :hostname => "flume.grid.uh1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink2" => {
         :type => "avro",
         :channel => "spillable2",
         :hostname => "flume.grid.uh1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink3" => {
         :type => "avro",
         :channel => "spillable3",
         :hostname => "flume.grid.uh1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink4" => {
         :type => "avro",
         :channel => "spillable4",
         :hostname => "flume.grid.uh1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink5" => {
         :type => "avro",
         :channel => "spillable5",
         :hostname => "flume.grid.uh1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"},
     "avrosink6" => {
         :type => "avro",
         :channel => "spillable6",
         :hostname => "flume.grid.uh1.inmobi.com",
         :port => "2541",
         :'enable_compression' => true,
         :'compression_type' => "deflate",
         :'batch-size' => "500",
         :'reset-connection-interval' => "60"}
         }

