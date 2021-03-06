# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.36"
default["flume_collector"]["download_url"] = "http://glvm1014.grid.uh1.inmobi.com/tar/apache-flume-1.6.0.36-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"

# Kafka Brokers in each colo
default["flume_collector"]["kafka_brokers"]['uh1']  = "krkf4001.grid.uh1.inmobi.com:9092,krkf4002.grid.uh1.inmobi.com:9092,krkf4003.grid.uh1.inmobi.com:9092,krkf4004.grid.uh1.inmobi.com:9092,krkf4005.grid.uh1.inmobi.com:9092,krkf4006.grid.uh1.inmobi.com:9092,krkf4007.grid.uh1.inmobi.com:9092,krkf4008.grid.uh1.inmobi.com:9092,krkf4009.grid.uh1.inmobi.com:9092,krkf4010.grid.uh1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9092,oxkf4002.grid.dfw1.inmobi.com:9092,oxkf4003.grid.dfw1.inmobi.com:9092,oxkf4008.grid.dfw1.inmobi.com:9092,oxkf4009.grid.dfw1.inmobi.com:9092,oxkf4010.grid.dfw1.inmobi.com:9092,oxkf4011.grid.dfw1.inmobi.com:9092,oxkf4012.grid.dfw1.inmobi.com:9092,oxkf4013.grid.dfw1.inmobi.com:9092,oxkf4014.grid.dfw1.inmobi.com:9092,oxkf4015.grid.dfw1.inmobi.com:9092,oxkf4016.grid.dfw1.inmobi.com:9092,oxkf4017.grid.dfw1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['lhr1']  = "erkf4001.grid.lhr1.inmobi.com:9092,erkf4002.grid.lhr1.inmobi.com:9092,erkf4003.grid.lhr1.inmobi.com:9092,erkf4004.grid.lhr1.inmobi.com:9092,erkf4005.grid.lhr1.inmobi.com:9092,erkf4006.grid.lhr1.inmobi.com:9092,erkf4007.grid.lhr1.inmobi.com:9092,erkf4008.grid.lhr1.inmobi.com:9092,erkf4009.grid.lhr1.inmobi.com:9092,erkf4010.grid.lhr1.inmobi.com:9092"
default["flume_collector"]["kafka_brokers"]['pek1']  = "pykf4001.grid.pek1.inmobi.com:9092,pykf4002.grid.pek1.inmobi.com:9092,pykf4003.grid.pek1.inmobi.com:9092,pykf4004.grid.pek1.inmobi.com:9092,pykf4005.grid.pek1.inmobi.com:9092,pykf4006.grid.pek1.inmobi.com:9092,pykf4007.grid.pek1.inmobi.com:9092,pykf4008.grid.pek1.inmobi.com:9092,pykf4009.grid.pek1.inmobi.com:9092,pykf4010.grid.pek1.inmobi.com:9092"

# Zookeeper Quorum in each colo
default["flume_collector"]["kafka_zookeeper"]['uh1']  = "kafka-zookeeper-1.grid.uh1.inmobi.com:2181,kafka-zookeeper-2.grid.uh1.inmobi.com:2181,kafka-zookeeper-3.grid.uh1.inmobi.com:2181,kafka-zookeeper-4.grid.uh1.inmobi.com:2181,kafka-zookeeper-5.grid.uh1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['dfw1']  = "kafka-zookeeper-1.grid.dfw1.inmobi.com:2181,kafka-zookeeper-2.grid.dfw1.inmobi.com:2181,kafka-zookeeper-3.grid.dfw1.inmobi.com:2181,kafka-zookeeper-4.grid.dfw1.inmobi.com:2181,kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['lhr1']  = "kafka-zookeeper-1.grid.lhr1.inmobi.com:2181,kafka-zookeeper-2.grid.lhr1.inmobi.com:2181,kafka-zookeeper-3.grid.lhr1.inmobi.com:2181,kafka-zookeeper-4.grid.lhr1.inmobi.com:2181,kafka-zookeeper-5.grid.lhr1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['pek1']  = "kafka-zookeeper-1.grid.pek1.inmobi.com:2181,kafka-zookeeper-2.grid.pek1.inmobi.com:2181,kafka-zookeeper-3.grid.pek1.inmobi.com:2181,kafka-zookeeper-4.grid.pek1.inmobi.com:2181,kafka-zookeeper-5.grid.pek1.inmobi.com:2181"


#Flume Agents
default["flume_collector"]["flume_agent_host"]['uh1']  = "krvm4109.grid.uh1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['pek1']  = "pyns4002.grid.pek1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['dfw1']  = "oxns4002.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['lhr1']  = "erdc4002.grid.lhr1.inmobi.com"

#Flume merge source consumer groupsize
default["flume_collector"]["mergesrc_consumer_gpsize"]['uh1']  = "4"
default["flume_collector"]["mergesrc_consumer_gpsize"]['pek1']  = "4"
default["flume_collector"]["mergesrc_consumer_gpsize"]['dfw1']  = "4"
default["flume_collector"]["mergesrc_consumer_gpsize"]['lhr1']  = "4"

#number of sinkworkerthreads
default["flume_collector"]["sinkworkerthreads"]['uh1']  = "80"
default["flume_collector"]["sinkworkerthreads"]['pek1']  = "38"
default["flume_collector"]["sinkworkerthreads"]['dfw1']  = "78"
default["flume_collector"]["sinkworkerthreads"]['lhr1']  = "56"

#number of sinkworkerthreads
default["flume_collector"]["mergesinkworkerthreads"]['uh1']  = "64"
default["flume_collector"]["mergesinkworkerthreads"]['pek1']  = "64"
default["flume_collector"]["mergesinkworkerthreads"]['dfw1']  = "64"
default["flume_collector"]["mergesinkworkerthreads"]['lhr1']  = "64"

#number of avrosinkworkerthreads
default["flume_collector"]["avrosinkworkerthreads"]['uh1']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['pek1']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['dfw1']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['lhr1']  = "16"


######################################################### UH1 ###################################################################

default["flume_collector"]["endcollector_local_retention_topics"]['uh1']  = "rr"
default["flume_collector"]["endcollector_merge_retention_topics"]['uh1']  = "beacon_rr_uh1_cpm_render,network_beacon_uh1_adunit,network_beacon_uh1_publisherfill,beacon_rr_uh1_default,network_beacon_adunit_interaction_uh1,beacon_rr_uh1_cpc_render,ifc_ff_uh1,non_network_click_cpc_uh1,non_network_click_cpm_uh1,network_click_cpc_uh1,network_click_cpm_uh1,network_click_invalid_uh1,click_rr_uh1,adroit_report_obj_uh1,billing_cpc_uh1,billing_cpm_uh1,billing_download_uh1"

default["flume_collector"]["endcollector_all_channels"]['uh1']  = "spillable mergespillable midspillable uh1-to-uh1-channel uh1-to-dfw1-channel uh1-to-lhr1-channel uh1-to-pek1-channel hdfsmerge-channel  hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['uh1'] = "kafkasink mergekafkasink uh1-mergesink1 uh1-mergesink2 uh1-mergesink3 dfw1-mergesink1 dfw1-mergesink2 dfw1-mergesink3 lhr1-mergesink pek1-mergesink1 pek1-mergesink2 pek1-mergesink3 hdfsmerge-sink hdfslocal-sink dfw1-midsink1 dfw1-midsink2 dfw1-midsink3 dfw1-midsink4 dfw1-midsink5 dfw1-midsink6 dfw1-midsink7 dfw1-midsink8 dfw1-midsink9 dfw1-midsink10 dfw1-midsink11 dfw1-midsink12"
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
     "midavrosrc" => {
         :src_category => "midavro",
         :type => "avro",
         :channels => "midspillable",
         :'enable_compression' => true,
         :'compression-type' => 'deflate',
         :port => "2543"},
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
         :'kafka.topics' => "rr,billing_cpc_dfw1,billing_cpm_dfw1,billing_download_dfw1"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "uh1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_uh1_cpm_render,merge_network_beacon_uh1_adunit,merge_network_beacon_uh1_publisherfill,merge_beacon_rr_uh1_default,merge_network_beacon_adunit_interaction_uh1,merge_beacon_rr_uh1_cpc_render,merge_ifc_ff_uh1,merge_non_network_click_cpc_uh1,merge_non_network_click_cpm_uh1,merge_network_click_cpc_uh1,merge_network_click_cpm_uh1,merge_network_click_invalid_uh1,merge_click_rr_uh1,merge_adroit_report_obj_uh1,merge_billing_cpc_uh1,merge_billing_cpm_uh1,merge_billing_download_uh1"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "billable_render_dfw1,beacon_rr_uh1_cpm_render,network_beacon_uh1_adunit,network_beacon_uh1_publisherfill,beacon_rr_uh1_default,network_beacon_adunit_interaction_uh1,beacon_rr_uh1_cpc_render,ifc_ff_uh1,non_network_click_cpc_uh1,non_network_click_cpm_uh1,network_click_cpc_uh1,network_click_cpm_uh1,network_click_invalid_uh1,click_rr_uh1,nwClickCpcDfw1,iat_click,datasciences-attributes_uh1"},
     "lhr1kafkamergesrc" => {
         :src_category => "lhr1kafkamerge",
         :consumer_group => "lhr1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_uh1_cpm_render,network_beacon_uh1_adunit,network_beacon_uh1_publisherfill,beacon_rr_uh1_default,network_beacon_adunit_interaction_uh1,beacon_rr_uh1_cpc_render,ifc_ff_uh1,non_network_click_cpc_uh1,non_network_click_cpm_uh1,network_click_cpc_uh1,network_click_cpm_uh1,network_click_invalid_uh1,click_rr_uh1,iat_click"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_uh1_cpm_render,network_beacon_uh1_adunit,network_beacon_uh1_publisherfill,beacon_rr_uh1_default,network_beacon_adunit_interaction_uh1,beacon_rr_uh1_cpc_render,ifc_ff_uh1,non_network_click_cpc_uh1,non_network_click_cpm_uh1,network_click_cpc_uh1,network_click_cpm_uh1,network_click_invalid_uh1,click_rr_uh1,iat_click,iat_click_pek1,iat_goal_pek1"},
     "uh1kafkamergesrc" => {
         :src_category => "uh1kafkamerge",
         :consumer_group => "uh1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_uh1_cpm_render,billing_cpc_uh1,billing_cpm_uh1,billing_download_uh1,network_beacon_uh1_adunit,network_beacon_uh1_publisherfill,beacon_rr_uh1_default,network_beacon_adunit_interaction_uh1,beacon_rr_uh1_cpc_render,ifc_ff_uh1,non_network_click_cpc_uh1,non_network_click_cpm_uh1,network_click_cpc_uh1,network_click_cpm_uh1,network_click_invalid_uh1,click_rr_uh1,adroit_report_obj_uh1,iat_click"},
     "uh1-to-uh1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "uh1-to-uh1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-uh1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "uh1-to-dfw1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "uh1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-dfw1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "uh1-to-lhr1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "uh1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-lhr1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "uh1-to-pek1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "uh1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "uh1-to-pek1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['uh1']  = ["spillable"]
default["flume_collector"]["endcollector_mid_avroreceive_channels"]['uh1']  = ["midspillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['uh1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['uh1']  = ["uh1-to-uh1-channel","uh1-to-dfw1-channel","uh1-to-lhr1-channel","uh1-to-pek1-channel"]
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
     "uh1-mergesink1" => {:channel => "uh1-to-uh1-channel",:flumevip =>"krfl4001.grid.uh1.inmobi.com"},
     "uh1-mergesink2" => {:channel => "uh1-to-uh1-channel",:flumevip =>"krfl4002.grid.uh1.inmobi.com"},
     "uh1-mergesink3" => {:channel => "uh1-to-uh1-channel",:flumevip =>"krfl4003.grid.uh1.inmobi.com"},
     "dfw1-mergesink1" => {:channel => "uh1-to-dfw1-channel",:flumevip =>"oxfl4001.grid.dfw1.inmobi.com"},
     "dfw1-mergesink2" => {:channel => "uh1-to-dfw1-channel",:flumevip =>"oxfl4002.grid.dfw1.inmobi.com"},
     "dfw1-mergesink3" => {:channel => "uh1-to-dfw1-channel",:flumevip =>"oxfl4003.grid.dfw1.inmobi.com"},
     "lhr1-mergesink" => {:channel => "uh1-to-lhr1-channel",:flumevip =>"merge-flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink1" => {:channel => "uh1-to-pek1-channel",:flumevip =>"pykm4001.grid.pek1.inmobi.com"},
     "pek1-mergesink2" => {:channel => "uh1-to-pek1-channel",:flumevip =>"pykm4002.grid.pek1.inmobi.com"},
     "pek1-mergesink3" => {:channel => "uh1-to-pek1-channel",:flumevip =>"pykm4003.grid.pek1.inmobi.com"},
}


default["flume_collector"]["endcollector_mid_avro_sinks"]['uh1']  = {
     "dfw1-midsink1" => {:channel => "midspillable",:flumevip =>"flume.grid.dfw1.inmobi.com",:type =>"avro"},
     "dfw1-midsink2" => {:channel => "midspillable",:flumevip =>"flume.grid.dfw1.inmobi.com",:type =>"avro"},
     "dfw1-midsink3" => {:channel => "midspillable",:flumevip =>"flume.grid.dfw1.inmobi.com",:type =>"avro"},
     "dfw1-midsink4" => {:channel => "midspillable",:flumevip =>"flume.grid.dfw1.inmobi.com",:type =>"avro"},
     "dfw1-midsink5" => {:channel => "midspillable",:flumevip =>"flume.grid.dfw1.inmobi.com",:type =>"avro"},
     "dfw1-midsink6" => {:channel => "midspillable",:flumevip =>"flume.grid.dfw1.inmobi.com",:type =>"avro"},
     "dfw1-midsink7" => {:channel => "midspillable",:flumevip =>"flume.grid.dfw1.inmobi.com",:type =>"avro"},
     "dfw1-midsink8" => {:channel => "midspillable",:flumevip =>"flume.grid.dfw1.inmobi.com",:type =>"avro"},
     "dfw1-midsink9" => {:channel => "midspillable",:flumevip =>"flume.grid.dfw1.inmobi.com",:type =>"avro"},
     "dfw1-midsink10" => {:channel => "midspillable",:flumevip =>"flume.grid.dfw1.inmobi.com",:type =>"avro"},
     "dfw1-midsink11" => {:channel => "midspillable",:flumevip =>"flume.grid.dfw1.inmobi.com",:type =>"avro"},
     "dfw1-midsink12" => {:channel => "midspillable",:flumevip =>"flume.grid.dfw1.inmobi.com",:type =>"avro"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['uh1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"krypton"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['uh1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"krypton"}
}
######################################################### End Of UH1 ###################################################################












######################################################### DFW1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['dfw1']  = "rr,egret_lambda_AdUnitBeacon_dfw1_defer,egret_lambda_AdUnitBeacon_dfw1_enhanced,egret_lambda_AdUnitPublisherFill_dfw1_enhanced,egret_lambda_BeaconRRDefault_dfw1_enhanced,egret_lambda_BillingCPC_dfw1_enhanced,egret_lambda_BillingCPM_dfw1_enhanced,egret_lambda_BillingDownload_dfw1_enhanced,egret_lambda_NonNWClickCPC_dfw1_enhanced,egret_lambda_NonNWClickCPM_dfw1_enhanced,egret_lambda_NonNWClickInvalid_dfw1_enhanced,egret_lambda_NWClickCPC_dfw1_enhanced,egret_lambda_NWClickCPM_dfw1_enhanced,egret_lambda_NWClickInvalid_dfw1_enhanced,egret_lambda_RenderCPC_dfw1_enhanced,egret_lambda_RenderCPM_enhanced,billing_cpc_dfw1,billing_cpm_dfw1,billing_download_dfw1,billing_cpc_lhr1,billing_cpm_lhr1,billing_download_lhr1,billing_cpc_pek1,billing_cpm_pek1,billing_download_pek1,conversion_beacon_rtbs,tpce_rtfb_conversions,iat_goal_uh1,iat_click_uh1,iat_report_event,beeswax_download_event,adroit_downloads,beeswax_post_install_event,adroit_report_obj_uh1,dsp-beacon,normalized_postback,ifc_inmobi_api_user_segments,wclick_dfw1,user_context,adroit_attribution_stats"
default["flume_collector"]["endcollector_merge_retention_topics"]['dfw1']  = "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default,network_beacon_adunit_interaction_dfw1,beacon_rr_dfw1_cpc_render,ifc_ff_dfw1,non_network_click_cpc_dfw1,non_network_click_cpm_dfw1,network_click_cpc_dfw1,network_click_cpm_dfw1,network_click_invalid_dfw1,click_rr_dfw1,adroit_report_obj_dfw1,billing_cpc_dfw1,billing_cpm_dfw1,billing_download_dfw1,iat_click,tpce_custom_goal,tpce_custom_goal_summary,tpce_download,tpce_enriched_download,tpce_ltv,tpce_ltv_summary,tpce_purchase,tpce_purchase_summary,tpce_user_segment_summary,billing_cpc_uh1,billing_cpm_uh1,billing_download_uh1,appd_s2spinger_stats"

default["flume_collector"]["endcollector_all_channels"]['dfw1']  = "spillable mergespillable dfw1-to-pek1-channel dfw1-to-lhr1-channel dfw1-to-dfw1-channel hdfsmerge-channel hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['dfw1'] = "kafkasink mergekafkasink dfw1-mergesink1 dfw1-mergesink2 dfw1-mergesink3 lhr1-mergesink pek1-mergesink1 pek1-mergesink2 pek1-mergesink3 hdfsmerge-sink hdfslocal-sink"
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
         :'kafka.topics' => "rr,egret_lambda_AdUnitBeacon_dfw1_defer,egret_lambda_AdUnitBeacon_dfw1_enhanced,egret_lambda_AdUnitPublisherFill_dfw1_enhanced,egret_lambda_BeaconRRDefault_dfw1_enhanced,egret_lambda_BillingCPC_dfw1_enhanced,egret_lambda_BillingCPM_dfw1_enhanced,egret_lambda_BillingDownload_dfw1_enhanced,egret_lambda_NonNWClickCPC_dfw1_enhanced,egret_lambda_NonNWClickCPM_dfw1_enhanced,egret_lambda_NonNWClickInvalid_dfw1_enhanced,egret_lambda_NWClickCPC_dfw1_enhanced,egret_lambda_NWClickCPM_dfw1_enhanced,egret_lambda_NWClickInvalid_dfw1_enhanced,egret_lambda_RenderCPC_dfw1_enhanced,egret_lambda_RenderCPM_enhanced,iat_click_dfw1,iat_goal_dfw1,iat_report_event,optout,conversion_beacon_rtbs,tpce_rtfb_conversions,iat_goal_uh1,iat_click_uh1,beeswax_download_event,adroit_downloads,beeswax_post_install_event,adroit_report_obj_uh1,dsp-beacon,billing_cpc_dfw1,billing_cpm_dfw1,billing_download_dfw1,billing_cpc_lhr1,billing_cpm_lhr1,billing_download_lhr1,billing_cpc_pek1,billing_cpm_pek1,billing_download_pek1,normalized_postback,ifc_inmobi_api_user_segments,wclick_dfw1,user_context,adroit_attribution_stats"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "dfw1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_dfw1_cpm_render,merge_network_beacon_dfw1_adunit,merge_network_beacon_dfw1_publisherfill,merge_beacon_rr_dfw1_default,merge_network_beacon_adunit_interaction_dfw1,merge_beacon_rr_dfw1_cpc_render,merge_ifc_ff_dfw1,merge_non_network_click_cpc_dfw1,merge_non_network_click_cpm_dfw1,merge_network_click_cpc_dfw1,merge_network_click_cpm_dfw1,merge_network_click_invalid_dfw1,merge_click_rr_dfw1,merge_adroit_report_obj_dfw1,merge_billing_cpc_dfw1,merge_billing_cpm_dfw1,merge_billing_download_dfw1,merge_iat_click,merge_tpce_custom_goal,merge_tpce_custom_goal_summary,merge_tpce_download,merge_tpce_enriched_download,merge_tpce_ltv,merge_tpce_ltv_summary,merge_tpce_purchase,merge_tpce_purchase_summary,merge_tpce_user_segment_summary,merge_billing_cpc_uh1,merge_billing_cpm_uh1,merge_billing_download_uh1,merge_appd_s2spinger_stats"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default,network_beacon_adunit_interaction_dfw1,beacon_rr_dfw1_cpc_render,ifc_ff_dfw1,non_network_click_cpc_dfw1,non_network_click_cpm_dfw1,network_click_cpc_dfw1,network_click_cpm_dfw1,network_click_invalid_dfw1,click_rr_dfw1,billing_cpc_dfw1,billing_cpm_dfw1,billing_download_dfw1,beeswax_user_segment,iat_click,tpce_custom_goal,tpce_custom_goal_summary,tpce_download,tpce_enriched_download,tpce_ltv,tpce_ltv_summary,tpce_purchase,tpce_purchase_summary,tpce_user_segment_summary,cookie_mapping,billing_cpc_uh1,billing_cpm_uh1,billing_download_uh1,appd_s2spinger_stats"},
     "lhr1kafkamergesrc" => {
         :src_category => "lhr1kafkamerge",
         :consumer_group => "lhr1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default,network_beacon_adunit_interaction_dfw1,beacon_rr_dfw1_cpc_render,ifc_ff_dfw1,non_network_click_cpc_dfw1,non_network_click_cpm_dfw1,network_click_cpc_dfw1,network_click_cpm_dfw1,network_click_invalid_dfw1,click_rr_dfw1,beeswax_user_segment,iat_click,cookie_mapping,photon_visit_summary,appd_s2spinger_stats"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default,network_beacon_adunit_interaction_dfw1,beacon_rr_dfw1_cpc_render,ifc_ff_dfw1,non_network_click_cpc_dfw1,non_network_click_cpm_dfw1,network_click_cpc_dfw1,network_click_cpm_dfw1,network_click_invalid_dfw1,click_rr_dfw1,beeswax_user_segment,iat_click,iat_click_pek1,iat_goal_pek1,tpce_custom_goal,tpce_custom_goal_summary,tpce_download,tpce_enriched_download,tpce_ltv,tpce_ltv_summary,tpce_purchase,tpce_purchase_summary,tpce_user_segment_summary,cookie_mapping,photon_visit_summary,appd_s2spinger_stats"},
     "dfw1-to-dfw1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "dfw1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-dfw1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "dfw1-to-lhr1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "dfw1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-lhr1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "dfw1-to-pek1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "dfw1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-pek1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['dfw1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['dfw1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['dfw1']  = ["dfw1-to-pek1-channel","dfw1-to-lhr1-channel","dfw1-to-dfw1-channel"]
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
     "dfw1-mergesink1" => {:channel => "dfw1-to-dfw1-channel",:flumevip =>"oxfl4001.grid.dfw1.inmobi.com"},
     "dfw1-mergesink2" => {:channel => "dfw1-to-dfw1-channel",:flumevip =>"oxfl4002.grid.dfw1.inmobi.com"},
     "dfw1-mergesink3" => {:channel => "dfw1-to-dfw1-channel",:flumevip =>"oxfl4003.grid.dfw1.inmobi.com"},
     "lhr1-mergesink" => {:channel => "dfw1-to-lhr1-channel",:flumevip =>"merge-flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink1" => {:channel => "dfw1-to-pek1-channel",:flumevip =>"pykm4001.grid.pek1.inmobi.com"},
     "pek1-mergesink2" => {:channel => "dfw1-to-pek1-channel",:flumevip =>"pykm4002.grid.pek1.inmobi.com"},
     "pek1-mergesink3" => {:channel => "dfw1-to-pek1-channel",:flumevip =>"pykm4003.grid.pek1.inmobi.com"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['dfw1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"onyx"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['dfw1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"onyx"}
}
######################################################### End Of DFW1 ###################################################################










######################################################### LHR1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['lhr1']  = "rr,egret_lambda_AdUnitBeacon_lhr1_enhanced,egret_lambda_AdUnitPublisherFill_lhr1_enhanced,egret_lambda_RenderCPC_lhr1_enhanced,egret_lambda_RenderCPM_lhr1_enhanced,egret_lambda_BillingCPC_lhr1_enhanced,egret_lambda_BeaconRRDefault_lhr1_enhanced,egret_lambda_BillingCPM_lhr1_enhanced,egret_lambda_BillingDownload_lhr1_enhanced,egret_lambda_NWClickCPC_lhr1_enhanced,egret_lambda_NWClickCPM_lhr1_enhanced,egret_lambda_NWClickInvalid_lhr1_enhanced,egret_lambda_NonNWClickCPC_lhr1_enhanced,egret_lambda_NonNWClickCPM_lhr1_enhanced,egret_lambda_NonNWClickInvalid_lhr1_enhanced,egret_lambda_NWClickInvalid_lhr1_enhanced,dsp-beacon,user_context,adroit_attribution_stats"
default["flume_collector"]["endcollector_merge_retention_topics"]['lhr1']  = "beacon_rr_lhr1_cpm_render,network_beacon_lhr1_adunit,network_beacon_lhr1_publisherfill,beacon_rr_lhr1_default,network_beacon_adunit_interaction_lhr1,beacon_rr_lhr1_cpc_render,ifc_ff_lhr1,non_network_click_cpc_lhr1,non_network_click_cpm_lhr1,network_click_cpc_lhr1,network_click_cpm_lhr1,network_click_invalid_lhr1,click_rr_lhr1,adroit_report_obj_lhr1,billing_cpc_lhr1,billing_cpm_lhr1,billing_download_lhr1"

default["flume_collector"]["endcollector_all_channels"]['lhr1']  = "spillable mergespillable lhr1-to-pek1-channel lhr1-to-lhr1-channel lhr1-to-dfw1-channel hdfsmerge-channel hdfslocal-channel"

default["flume_collector"]["endcollector_all_sinks"]['lhr1'] = "kafkasink  mergekafkasink dfw1-mergesink1 dfw1-mergesink2 dfw1-mergesink3 lhr1-mergesink pek1-mergesink1 pek1-mergesink2 pek1-mergesink3 hdfsmerge-sink hdfslocal-sink"
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
         :'kafka.topics' => "rr,egret_lambda_AdUnitBeacon_lhr1_enhanced,egret_lambda_AdUnitPublisherFill_lhr1_enhanced,egret_lambda_RenderCPC_lhr1_enhanced,egret_lambda_RenderCPM_lhr1_enhanced,egret_lambda_BillingCPC_lhr1_enhanced,egret_lambda_BeaconRRDefault_lhr1_enhanced,egret_lambda_BillingCPM_lhr1_enhanced,egret_lambda_BillingDownload_lhr1_enhanced,egret_lambda_NWClickCPC_lhr1_enhanced,egret_lambda_NWClickCPM_lhr1_enhanced,egret_lambda_NWClickInvalid_lhr1_enhanced,egret_lambda_NonNWClickCPC_lhr1_enhanced,egret_lambda_NonNWClickCPM_lhr1_enhanced,egret_lambda_NonNWClickInvalid_lhr1_enhanced,egret_lambda_NWClickInvalid_lhr1_enhanced,dsp-beacon,user_context,adroit_attribution_stats"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "lhr1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_lhr1_cpm_render,merge_network_beacon_lhr1_adunit,merge_network_beacon_lhr1_publisherfill,merge_beacon_rr_lhr1_default,merge_network_beacon_adunit_interaction_lhr1,merge_beacon_rr_lhr1_cpc_render,merge_ifc_ff_lhr1,merge_non_network_click_cpc_lhr1,merge_non_network_click_cpm_lhr1,merge_network_click_cpc_lhr1,merge_network_click_cpm_lhr1,merge_network_click_invalid_lhr1,merge_click_rr_lhr1,merge_adroit_report_obj_lhr1,merge_billing_cpc_lhr1,merge_billing_cpm_lhr1,merge_billing_download_lhr1"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_lhr1_cpm_render,network_beacon_lhr1_adunit,network_beacon_lhr1_publisherfill,beacon_rr_lhr1_default,network_beacon_adunit_interaction_lhr1,beacon_rr_lhr1_cpc_render,ifc_ff_lhr1,non_network_click_cpc_lhr1,non_network_click_cpm_lhr1,network_click_cpc_lhr1,network_click_cpm_lhr1,network_click_invalid_lhr1,click_rr_lhr1,datasciences-attributes_lhr1,adroit_report_obj_lhr1,billing_cpc_lhr1,billing_cpm_lhr1,billing_download_lhr1"},
     "lhr1kafkamergesrc" => {
         :src_category => "lhr1kafkamerge",
         :consumer_group => "lhr1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_lhr1_cpm_render,network_beacon_lhr1_adunit,network_beacon_lhr1_publisherfill,beacon_rr_lhr1_default,network_beacon_adunit_interaction_lhr1,beacon_rr_lhr1_cpc_render,ifc_ff_lhr1,non_network_click_cpc_lhr1,non_network_click_cpm_lhr1,network_click_cpc_lhr1,network_click_cpm_lhr1,network_click_invalid_lhr1,click_rr_lhr1"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_lhr1_cpm_render,network_beacon_lhr1_adunit,network_beacon_lhr1_publisherfill,beacon_rr_lhr1_default,network_beacon_adunit_interaction_lhr1,beacon_rr_lhr1_cpc_render,ifc_ff_lhr1,non_network_click_cpc_lhr1,non_network_click_cpm_lhr1,network_click_cpc_lhr1,network_click_cpm_lhr1,network_click_invalid_lhr1,click_rr_lhr1"},
     "lhr1-to-dfw1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "lhr1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-dfw1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "lhr1-to-lhr1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "lhr1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-lhr1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "lhr1-to-pek1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "lhr1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "lhr1-to-pek1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['lhr1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['lhr1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['lhr1']  = ["lhr1-to-pek1-channel","lhr1-to-lhr1-channel","lhr1-to-dfw1-channel"]
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
     "dfw1-mergesink1" => {:channel => "lhr1-to-dfw1-channel",:flumevip =>"oxfl4001.grid.dfw1.inmobi.com"},
     "dfw1-mergesink2" => {:channel => "lhr1-to-dfw1-channel",:flumevip =>"oxfl4002.grid.dfw1.inmobi.com"},
     "dfw1-mergesink3" => {:channel => "lhr1-to-dfw1-channel",:flumevip =>"oxfl4003.grid.dfw1.inmobi.com"},
     "lhr1-mergesink" => {:channel => "lhr1-to-lhr1-channel",:flumevip =>"merge-flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink1" => {:channel => "lhr1-to-pek1-channel",:flumevip =>"pykm4001.grid.pek1.inmobi.com"},
     "pek1-mergesink2" => {:channel => "lhr1-to-pek1-channel",:flumevip =>"pykm4002.grid.pek1.inmobi.com"},
     "pek1-mergesink3" => {:channel => "lhr1-to-pek1-channel",:flumevip =>"pykm4003.grid.pek1.inmobi.com"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['lhr1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"emerald"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['lhr1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"emerald"}
}

######################################################### End Of LHR1 ###################################################################







######################################################### PEK1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['pek1']  = "rr,egret_lambda_AdUnitBeacon_pek1_enhanced,egret_lambda_AdUnitPublisherFill_pek1_enhanced,egret_lambda_RenderCPC_pek1_enhanced,egret_lambda_RenderCPM_pek1_enhanced,egret_lambda_BillingCPC_pek1_enhanced,egret_lambda_BeaconRRDefault_pek1_enhanced,egret_lambda_BillingCPM_pek1_enhanced,egret_lambda_BillingDownload_pek1_enhanced,egret_lambda_NWClickCPC_pek1_enhanced,egret_lambda_NWClickCPM_pek1_enhanced,egret_lambda_NWClickInvalid_pek1_enhanced,egret_lambda_NonNWClickCPC_pek1_enhanced,egret_lambda_NonNWClickCPM_pek1_enhanced,egret_lambda_NonNWClickInvalid_pek1_enhanced,egret_lambda_NWClickInvalid_pek1_enhanced,dsp-beacon,beacon_rr_hkg1_cpm_render,wclick_pek1,user_context,adroit_attribution_stats"
default["flume_collector"]["endcollector_merge_retention_topics"]['pek1']  = "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default,network_beacon_adunit_interaction_pek1,beacon_rr_pek1_cpc_render,ifc_ff_pek1,non_network_click_cpc_pek1,non_network_click_cpm_pek1,network_click_cpc_pek1,network_click_cpm_pek1,network_click_invalid_pek1,click_rr_pek1,adroit_report_obj_pek1,billing_cpc_pek1,billing_cpm_pek1,billing_download_pek1"

default["flume_collector"]["endcollector_all_channels"]['pek1']  = "spillable  mergespillable pek1-to-pek1-channel pek1-to-lhr1-channel pek1-to-dfw1-channel hdfslocal-channel  hdfsmerge-channel"

default["flume_collector"]["endcollector_all_sinks"]['pek1'] = "kafkasink  mergekafkasink dfw1-mergesink1 dfw1-mergesink2 dfw1-mergesink3 lhr1-mergesink pek1-mergesink1 pek1-mergesink2 pek1-mergesink3 hdfslocal-sink  hdfsmerge-sink"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['pek1']  = {
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
         :consumer_group => "pek1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "rr,egret_lambda_AdUnitBeacon_pek1_enhanced,egret_lambda_AdUnitPublisherFill_pek1_enhanced,egret_lambda_RenderCPC_pek1_enhanced,egret_lambda_RenderCPM_pek1_enhanced,egret_lambda_BillingCPC_pek1_enhanced,egret_lambda_BeaconRRDefault_pek1_enhanced,egret_lambda_BillingCPM_pek1_enhanced,egret_lambda_BillingDownload_pek1_enhanced,egret_lambda_NWClickCPC_pek1_enhanced,egret_lambda_NWClickCPM_pek1_enhanced,egret_lambda_NWClickInvalid_pek1_enhanced,egret_lambda_NonNWClickCPC_pek1_enhanced,egret_lambda_NonNWClickCPM_pek1_enhanced,egret_lambda_NonNWClickInvalid_pek1_enhanced,egret_lambda_NWClickInvalid_pek1_enhanced,dsp-beacon,beacon_rr_hkg1_cpm_render,wclick_pek1,user_context,adroit_attribution_stats"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "pek1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_pek1_cpm_render,merge_network_beacon_pek1_adunit,merge_network_beacon_pek1_publisherfill,merge_beacon_rr_pek1_default,merge_network_beacon_adunit_interaction_pek1,merge_beacon_rr_pek1_cpc_render,merge_ifc_ff_pek1,merge_non_network_click_cpc_pek1,merge_non_network_click_cpm_pek1,merge_network_click_cpc_pek1,merge_network_click_cpm_pek1,merge_network_click_invalid_pek1,merge_click_rr_pek1,merge_adroit_report_obj_pek1,merge_billing_cpc_pek1,merge_billing_cpm_pek1,merge_billing_download_pek1"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default,network_beacon_adunit_interaction_pek1,beacon_rr_pek1_cpc_render,ifc_ff_pek1,non_network_click_cpc_pek1,non_network_click_cpm_pek1,network_click_cpc_pek1,network_click_cpm_pek1,network_click_invalid_pek1,click_rr_pek1,datasciences-attributes_pek1,adroit_report_obj_pek1,billing_cpc_pek1,billing_cpm_pek1,billing_download_pek1"},
     "lhr1kafkamergesrc" => {
         :src_category => "lhr1kafkamerge",
         :consumer_group => "lhr1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default,network_beacon_adunit_interaction_pek1,beacon_rr_pek1_cpc_render,ifc_ff_pek1,non_network_click_cpc_pek1,non_network_click_cpm_pek1,network_click_cpc_pek1,network_click_cpm_pek1,network_click_invalid_pek1,click_rr_pek1"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default,network_beacon_adunit_interaction_pek1,beacon_rr_pek1_cpc_render,ifc_ff_pek1,non_network_click_cpc_pek1,non_network_click_cpm_pek1,network_click_cpc_pek1,network_click_cpm_pek1,network_click_invalid_pek1,click_rr_pek1"},
     "pek1-to-dfw1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "pek1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-dfw1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "pek1-to-lhr1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "pek1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-lhr1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"},
     "pek1-to-pek1-mergesrc" => {
         :src_category => "kafkamerge",
         :consumer_group => "pek1-to-pek1-kafkamerge",
         :src_category => "kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-pek1-channel",
         :batchSize => 500,
         :'kafka.topics' => "testmerge"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['pek1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['pek1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_kafkaread_channels"]['pek1']  = ["pek1-to-pek1-channel","pek1-to-lhr1-channel","pek1-to-dfw1-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['pek1']  = ["hdfslocal-channel"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['pek1']  = ["hdfsmerge-channel"]


#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['pek1']  = {
     "kafkasink" => {:channel => "spillable"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['pek1']  = {
     "mergekafkasink" => {:channel => "mergespillable"}
}

default["flume_collector"]["endcollector_merged_avro_sinks"]['pek1']  = {
     "dfw1-mergesink1" => {:channel => "pek1-to-dfw1-channel",:flumevip =>"oxfl4001.grid.dfw1.inmobi.com"},
     "dfw1-mergesink2" => {:channel => "pek1-to-dfw1-channel",:flumevip =>"oxfl4002.grid.dfw1.inmobi.com"},
     "dfw1-mergesink3" => {:channel => "pek1-to-dfw1-channel",:flumevip =>"oxfl4003.grid.dfw1.inmobi.com"},
     "lhr1-mergesink" => {:channel => "pek1-to-lhr1-channel",:flumevip =>"merge-flume.grid.lhr1.inmobi.com"},
     "pek1-mergesink1" => {:channel => "pek1-to-pek1-channel",:flumevip =>"pykm4001.grid.pek1.inmobi.com"},
     "pek1-mergesink2" => {:channel => "pek1-to-pek1-channel",:flumevip =>"pykm4002.grid.pek1.inmobi.com"},
     "pek1-mergesink3" => {:channel => "pek1-to-pek1-channel",:flumevip =>"pykm4003.grid.pek1.inmobi.com"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['pek1']  = {
     "hdfslocal-sink" => {:channel => "hdfslocal-channel",:cluster =>"pyrite"}
}
default["flume_collector"]["endcollector_merged_hdfs_sinks"]['pek1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"pyrite"}
}
######################################################### End Of PEK1 ###################################################################
