# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.11"
default["flume_collector"]["download_url"] = "https://artifactory.corp.inmobi.com/artifactory/generic-tarball/flume/1.6.0.11/apache-flume-1.6.0.11-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"
default["flume_collector"]["kafka_brokers"]['hkg1']  = "opkf4001.grid.hkg1.inmobi.com:9092,opkf4002.grid.hkg1.inmobi.com:9092,opkf4003.grid.hkg1.inmobi.com:9092,opkf4004.grid.hkg1.inmobi.com:9092,opkf4005.grid.hkg1.inmobi.com:9092,opkf4006.grid.hkg1.inmobi.com:9092,opkf4007.grid.hkg1.inmobi.com:9092,opkf4008.grid.hkg1.inmobi.com:9092,opkf4009.grid.hkg1.inmobi.com:9092,opkf4010.grid.hkg1.inmobi.com:9092"

#Configure the sources for the Flume Collector
default["flume_collector"]["midcollector_sources"]['hkg1']  = {
     "avrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :'enable_compression' => false,
         :port => "2540"},
     "zipavrosrc" => {
         :type => "avro",
         :channels => "spillable1 spillable2 spillable3 spillable4 spillable5 spillable6",
         :'selector.type' => "org.apache.flume.channel.RoundRobinChannelSelector",
         :bind => "0.0.0.0",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2541"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["midcollector_channels"]['hkg1']  = {
     "spillable1" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "40000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable2" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "40000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable3" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "40000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable4" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "40000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable5" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "40000",
         :transactionCapacity => "500",
         :spoolDiskCapacityMB => "1000000"},
     "spillable6" => {
         :type => "org.apache.flume.channel.DiskBackedMemoryChannel",
         :capacity => "40000",
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
         :'reset-connection-interval' => "60"}
         }

