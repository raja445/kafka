# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["audit_collector"]["version"] = "1.6.0.43"
default["audit_collector"]["download_url"] = "http://plgw4001.grid.dfw1.inmobi.com/tar/apache-flume-1.6.0.43-bin.tar.gz"
default["audit_collector"]["base_dir"]  = "/opt/inmobi"
default["audit_collector"]["spool_dir"]  = "/data/d1/flume-audit/spool"
default["audit_collector"]["pid_dir"]  = "/var/run/flume-audit"

# Kafka Brokers in each colo
default["audit_collector"]["kafka_brokers"]['uh1']  = "krkf4001.grid.uh1.inmobi.com:9093,krkf4002.grid.uh1.inmobi.com:9093,krkf4003.grid.uh1.inmobi.com:9093,krkf4004.grid.uh1.inmobi.com:9093,krkf4005.grid.uh1.inmobi.com:9093,krkf4006.grid.uh1.inmobi.com:9093,krkf4007.grid.uh1.inmobi.com:9093,krkf4008.grid.uh1.inmobi.com:9093,krkf4009.grid.uh1.inmobi.com:9093,krkf4010.grid.uh1.inmobi.com:9093"
default["audit_collector"]["kafka_brokers_dfw1"]['uh1']  = "oxkf4001.grid.dfw1.inmobi.com:9093,oxkf4002.grid.dfw1.inmobi.com:9093,oxkf4003.grid.dfw1.inmobi.com:9093,oxkf4008.grid.dfw1.inmobi.com:9093,oxkf4009.grid.dfw1.inmobi.com:9093,oxkf4010.grid.dfw1.inmobi.com:9093,oxkf4011.grid.dfw1.inmobi.com:9093,oxkf4012.grid.dfw1.inmobi.com:9093,oxkf4013.grid.dfw1.inmobi.com:9093,oxkf4014.grid.dfw1.inmobi.com:9093,oxkf4015.grid.dfw1.inmobi.com:9093,oxkf4016.grid.dfw1.inmobi.com:9093,oxkf4017.grid.dfw1.inmobi.com:9093"
default["audit_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9093,oxkf4002.grid.dfw1.inmobi.com:9093,oxkf4003.grid.dfw1.inmobi.com:9093,oxkf4008.grid.dfw1.inmobi.com:9093,oxkf4009.grid.dfw1.inmobi.com:9093,oxkf4010.grid.dfw1.inmobi.com:9093,oxkf4011.grid.dfw1.inmobi.com:9093,oxkf4012.grid.dfw1.inmobi.com:9093,oxkf4013.grid.dfw1.inmobi.com:9093,oxkf4014.grid.dfw1.inmobi.com:9093,oxkf4015.grid.dfw1.inmobi.com:9093,oxkf4016.grid.dfw1.inmobi.com:9093,oxkf4017.grid.dfw1.inmobi.com:9093"
default["audit_collector"]["kafka_brokers"]['lhr1']  = "erkf4001.grid.lhr1.inmobi.com:9093,erkf4002.grid.lhr1.inmobi.com:9093,erkf4003.grid.lhr1.inmobi.com:9093,erkf4004.grid.lhr1.inmobi.com:9093,erkf4005.grid.lhr1.inmobi.com:9093,erkf4006.grid.lhr1.inmobi.com:9093,erkf4007.grid.lhr1.inmobi.com:9093,erkf4008.grid.lhr1.inmobi.com:9093,erkf4009.grid.lhr1.inmobi.com:9093,erkf4010.grid.lhr1.inmobi.com:9093"
default["audit_collector"]["kafka_brokers"]['pek1']  = "pykf4001.grid.pek1.inmobi.com:9093,pykf4002.grid.pek1.inmobi.com:9093,pykf4003.grid.pek1.inmobi.com:9093,pykf4004.grid.pek1.inmobi.com:9093,pykf4005.grid.pek1.inmobi.com:9093,pykf4006.grid.pek1.inmobi.com:9093,pykf4007.grid.pek1.inmobi.com:9093,pykf4008.grid.pek1.inmobi.com:9093,pykf4009.grid.pek1.inmobi.com:9093,pykf4010.grid.pek1.inmobi.com:9093"
default["audit_collector"]["kafka_brokers"]['dfw2']  = "gakf4001.grid.dfw2.inmobi.com:9093,gakf4002.grid.dfw2.inmobi.com:9093,gakf4003.grid.dfw2.inmobi.com:9093,gakf4004.grid.dfw2.inmobi.com:9093,gakf4005.grid.dfw2.inmobi.com:9093,gakf4006.grid.dfw2.inmobi.com:9093,gakf4007.grid.dfw2.inmobi.com:9093,gakf4008.grid.dfw2.inmobi.com:9093,gakf4009.grid.dfw2.inmobi.com:9093,gakf4010.grid.dfw2.inmobi.com:9093"
default["audit_collector"]["kafka_brokers"]['ams1']  = "azkf4001.grid.ams1.inmobi.com:9093,azkf4002.grid.ams1.inmobi.com:9093,azkf4003.grid.ams1.inmobi.com:9093,azkf4004.grid.ams1.inmobi.com:9093,azkf4005.grid.ams1.inmobi.com:9093,azkf4006.grid.ams1.inmobi.com:9093,azkf4007.grid.ams1.inmobi.com:9093,azkf4008.grid.ams1.inmobi.com:9093,azkf4009.grid.ams1.inmobi.com:9093,azkf4010.grid.ams1.inmobi.com:9093"

# Zookeeper Quorum in each colo
default["audit_collector"]["kafka_zookeeper"]['uh1']  = "kafka-zookeeper-1.grid.uh1.inmobi.com:2181,kafka-zookeeper-2.grid.uh1.inmobi.com:2181,kafka-zookeeper-3.grid.uh1.inmobi.com:2181,kafka-zookeeper-4.grid.uh1.inmobi.com:2181,kafka-zookeeper-5.grid.uh1.inmobi.com:2181"
default["audit_collector"]["kafka_zookeeper_dfw1"]['uh1']  = "kafka-zookeeper-1.grid.dfw1.inmobi.com:2181,kafka-zookeeper-2.grid.dfw1.inmobi.com:2181,kafka-zookeeper-3.grid.dfw1.inmobi.com:2181,kafka-zookeeper-4.grid.dfw1.inmobi.com:2181,kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"
default["audit_collector"]["kafka_zookeeper"]['dfw1']  = "kafka-zookeeper-1.grid.dfw1.inmobi.com:2181,kafka-zookeeper-2.grid.dfw1.inmobi.com:2181,kafka-zookeeper-3.grid.dfw1.inmobi.com:2181,kafka-zookeeper-4.grid.dfw1.inmobi.com:2181,kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"
default["audit_collector"]["kafka_zookeeper"]['lhr1']  = "kafka-zookeeper-1.grid.lhr1.inmobi.com:2181,kafka-zookeeper-2.grid.lhr1.inmobi.com:2181,kafka-zookeeper-3.grid.lhr1.inmobi.com:2181,kafka-zookeeper-4.grid.lhr1.inmobi.com:2181,kafka-zookeeper-5.grid.lhr1.inmobi.com:2181"
default["audit_collector"]["kafka_zookeeper"]['pek1']  = "kafka-zookeeper-1.grid.pek1.inmobi.com:2181,kafka-zookeeper-2.grid.pek1.inmobi.com:2181,kafka-zookeeper-3.grid.pek1.inmobi.com:2181,kafka-zookeeper-4.grid.pek1.inmobi.com:2181,kafka-zookeeper-5.grid.pek1.inmobi.com:2181"
default["audit_collector"]["kafka_zookeeper"]['dfw2']  = "kafka-zookeeper-1.grid.dfw2.inmobi.com:2181,kafka-zookeeper-2.grid.dfw2.inmobi.com:2181,kafka-zookeeper-3.grid.dfw2.inmobi.com:2181,kafka-zookeeper-4.grid.dfw2.inmobi.com:2181,kafka-zookeeper-5.grid.dfw2.inmobi.com:2181"
default["audit_collector"]["kafka_zookeeper"]['ams1']  = "kafka-zookeeper-1.grid.ams1.inmobi.com:2181,kafka-zookeeper-2.grid.ams1.inmobi.com:2181,kafka-zookeeper-3.grid.ams1.inmobi.com:2181,kafka-zookeeper-4.grid.ams1.inmobi.com:2181,kafka-zookeeper-5.grid.ams1.inmobi.com:2181"


#Flume Agents
default["audit_collector"]["flume_agent_host"]['uh1']  = "krvm4109.grid.uh1.inmobi.com"
default["audit_collector"]["flume_agent_host"]['pek1']  = "pyns4002.grid.pek1.inmobi.com"
default["audit_collector"]["flume_agent_host"]['dfw1']  = "oxns4002.grid.dfw1.inmobi.com"
default["audit_collector"]["flume_agent_host"]['lhr1']  = "erdc4002.grid.lhr1.inmobi.com"
default["audit_collector"]["flume_agent_host"]['dfw2']  = "gans4002.grid.dfw2.inmobi.com"
default["audit_collector"]["flume_agent_host"]['ams1']  = "azns4002.grid.ams1.inmobi.com"

#Flume merge source consumer groupsize
default["audit_collector"]["audit_consumer_gpsize"]['uh1']  = "1"
default["audit_collector"]["audit_consumer_gpsize"]['pek1']  = "1"
default["audit_collector"]["audit_consumer_gpsize"]['dfw1']  = "1"
default["audit_collector"]["audit_consumer_gpsize"]['lhr1']  = "1"
default["audit_collector"]["audit_consumer_gpsize"]['dfw2']  = "1"
default["audit_collector"]["audit_consumer_gpsize"]['ams1']  = "1"

#Flume merge source consumer groupsize
default["audit_collector"]["mergesrc_consumer_gpsize"]['pek1']  = "1"
default["audit_collector"]["mergesrc_consumer_gpsize"]['dfw1']  = "1"
default["audit_collector"]["mergesrc_consumer_gpsize"]['lhr1']  = "1"
default["audit_collector"]["mergesrc_consumer_gpsize"]['dfw2']  = "1"
default["audit_collector"]["mergesrc_consumer_gpsize"]['ams1']  = "1"



default["audit_collector"]["auditcollector_all_channels"]  = "druidlocal-channel  hdfslocal-channel"

default["audit_collector"]["auditcollector_all_sinks"] = "druidlocal-sink hdfslocal-sink"
#Configure the sources for the Flume Collector
default["audit_collector"]["auditcollector_sources"]  = {
     "auditscribesrc" => {
         :src_category => "auditscribe",
         :consumer_group => "audit-service",
         :type => "org.apache.flume.source.scribe.ScribeSource",
         :channels => "druidlocal-channel hdfslocal-channel",
         :'selector_optional' => "druidlocal-channel",
         :port => 2530},
     "dfw1localkafkasrc" => {
         :src_category => "auditkafka",
         :consumer_group => "audit-service",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :'selector.type' => "replicating",
         :'selector_optional' => "druidlocal-channel",
         :channels => "druidlocal-channel hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "_audit"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "audit-service",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :'selector.type' => "replicating",
         :'selector_optional' => "druidlocal-channel",
         :channels => "druidlocal-channel hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "_audit"},
     "dfw2kafkamergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "audit-service",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :'selector.type' => "replicating",
         :'selector_optional' => "druidlocal-channel",
         :channels => "druidlocal-channel hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "_audit"},
     "ams1kafkamergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "audit-service",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :'selector.type' => "replicating",
         :'selector_optional' => "druidlocal-channel",
         :channels => "druidlocal-channel hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "_audit"}
       }

#Configure the channels for the Flume Collector
default["audit_collector"]["auditcollector_local_druid_channels"]  = ["druidlocal-channel"]
default["audit_collector"]["auditcollector_local_hdfs_channels"]  = ["hdfslocal-channel"]


#Configure the sinks for the Flume Collector
default["audit_collector"]["auditcollector_local_hdfs_sinks"]['uh1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"krypton"},
}
default["audit_collector"]["auditcollector_local_hdfs_sinks"]['lhr1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"emerald"},
}
default["audit_collector"]["auditcollector_local_hdfs_sinks"]['dfw1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"onyx"},
}
default["audit_collector"]["auditcollector_local_hdfs_sinks"]['pek1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"pyrite"},
}

default["audit_collector"]["auditcollector_local_druid_sinks"]['uh1']  = {
     "druidlocal-sink" => {:channel => "druidlocal-channel",:zookeeper =>"oxdr4001.grid.dfw1.inmobi.com:2181,oxdr4002.grid.dfw1.inmobi.com:2181,oxdr4003.grid.dfw1.inmobi.com:2181"}
}
default["audit_collector"]["auditcollector_local_druid_sinks"]['lhr1']  = {
     "druidlocal-sink" => {:channel => "druidlocal-channel",:zookeeper =>"oxdr4001.grid.dfw1.inmobi.com:2181,oxdr4002.grid.dfw1.inmobi.com:2181,oxdr4003.grid.dfw1.inmobi.com:2181"}
}
default["audit_collector"]["auditcollector_local_druid_sinks"]['dfw1']  = {
     "druidlocal-sink" => {:channel => "druidlocal-channel",:zookeeper =>"oxdr4001.grid.dfw1.inmobi.com:2181,oxdr4002.grid.dfw1.inmobi.com:2181,oxdr4003.grid.dfw1.inmobi.com:2181"}
}
default["audit_collector"]["auditcollector_local_druid_sinks"]['pek1']  = {
     "druidlocal-sink" => {:channel => "druidlocal-channel",:zookeeper =>"oxdr4001.grid.dfw1.inmobi.com:2181,oxdr4002.grid.dfw1.inmobi.com:2181,oxdr4003.grid.dfw1.inmobi.com:2181"}
}
