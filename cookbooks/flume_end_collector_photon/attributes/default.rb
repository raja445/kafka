# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.51"
default["flume_collector"]["download_url"] = "http://plgw4001.grid.dfw1.inmobi.com/tar/apache-flume-1.6.0.51-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"

default["flume_collector"]["keytab"]  = "/etc/security/keytabs/flume.service.keytab"

# Kafka Brokers in each colo
default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9093,oxkf4002.grid.dfw1.inmobi.com:9093,oxkf4003.grid.dfw1.inmobi.com:9093,oxkf4008.grid.dfw1.inmobi.com:9093,oxkf4009.grid.dfw1.inmobi.com:9093,oxkf4010.grid.dfw1.inmobi.com:9093,oxkf4011.grid.dfw1.inmobi.com:9093,oxkf4012.grid.dfw1.inmobi.com:9093,oxkf4013.grid.dfw1.inmobi.com:9093,oxkf4014.grid.dfw1.inmobi.com:9093,oxkf4015.grid.dfw1.inmobi.com:9093,oxkf4016.grid.dfw1.inmobi.com:9093,oxkf4017.grid.dfw1.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['lhr1']  = "erkf4001.grid.lhr1.inmobi.com:9093,erkf4002.grid.lhr1.inmobi.com:9093,erkf4003.grid.lhr1.inmobi.com:9093,erkf4004.grid.lhr1.inmobi.com:9093,erkf4005.grid.lhr1.inmobi.com:9093,erkf4006.grid.lhr1.inmobi.com:9093,erkf4007.grid.lhr1.inmobi.com:9093,erkf4008.grid.lhr1.inmobi.com:9093,erkf4009.grid.lhr1.inmobi.com:9093,erkf4010.grid.lhr1.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['pek1']  = "pykf4001.grid.pek1.inmobi.com:9093,pykf4002.grid.pek1.inmobi.com:9093,pykf4003.grid.pek1.inmobi.com:9093,pykf4004.grid.pek1.inmobi.com:9093,pykf4005.grid.pek1.inmobi.com:9093,pykf4006.grid.pek1.inmobi.com:9093,pykf4007.grid.pek1.inmobi.com:9093,pykf4008.grid.pek1.inmobi.com:9093,pykf4009.grid.pek1.inmobi.com:9093,pykf4010.grid.pek1.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['dfw2']  = "gakf4001.grid.dfw2.inmobi.com:9093,gakf4002.grid.dfw2.inmobi.com:9093,gakf4003.grid.dfw2.inmobi.com:9093,gakf4004.grid.dfw2.inmobi.com:9093,gakf4005.grid.dfw2.inmobi.com:9093,gakf4006.grid.dfw2.inmobi.com:9093,gakf4007.grid.dfw2.inmobi.com:9093,gakf4008.grid.dfw2.inmobi.com:9093,gakf4009.grid.dfw2.inmobi.com:9093,gakf4010.grid.dfw2.inmobi.com:9093,gakf4011.grid.dfw2.inmobi.com:9093,gakf4012.grid.dfw2.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['ams1']  = "azkf4001.grid.ams1.inmobi.com:9093,azkf4002.grid.ams1.inmobi.com:9093,azkf4003.grid.ams1.inmobi.com:9093,azkf4004.grid.ams1.inmobi.com:9093,azkf4005.grid.ams1.inmobi.com:9093,azkf4006.grid.ams1.inmobi.com:9093,azkf4007.grid.ams1.inmobi.com:9093,azkf4008.grid.ams1.inmobi.com:9093:azkf4009.grid.ams1.inmobi.com:9093,azkf4010.grid.ams1.inmobi.com:9093,azkf4011.grid.ams1.inmobi.com:9093,azkf4012.grid.ams1.inmobi.com:9093,azkf4013.grid.ams1.inmobi.com:9093,azkf4014.grid.ams1.inmobi.com:9093,azkf4015.grid.ams1.inmobi.com:9093"

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
default["flume_collector"]["endcollector_local_retention_topics"]['dfw1']  = "rr,egret_lambda_AdUnitBeacon_dfw1_defer,egret_lambda_AdUnitBeacon_dfw1_enhanced,egret_lambda_AdUnitPublisherFill_dfw1_enhanced,egret_lambda_BeaconRRDefault_dfw1_enhanced,egret_lambda_BillingCPC_dfw1_enhanced,egret_lambda_BillingCPM_dfw1_enhanced,egret_lambda_BillingDownload_dfw1_enhanced,egret_lambda_NonNWClickCPC_dfw1_enhanced,egret_lambda_NonNWClickCPM_dfw1_enhanced,egret_lambda_NonNWClickInvalid_dfw1_enhanced,egret_lambda_NWClickCPC_dfw1_enhanced,egret_lambda_NWClickCPM_dfw1_enhanced,egret_lambda_NWClickInvalid_dfw1_enhanced,egret_lambda_RenderCPC_dfw1_enhanced,egret_lambda_RenderCPM_enhanced,billing_cpc_dfw1,billing_cpm_dfw1,billing_download_dfw1,billing_cpc_lhr1,billing_cpm_lhr1,billing_download_lhr1,billing_cpc_pek1,billing_cpm_pek1,billing_download_pek1,conversion_beacon_rtbs,tpce_rtfb_conversions,iat_goal_uh1,iat_click_uh1,iat_report_event,beeswax_download_event,adroit_downloads,beeswax_post_install_event,adroit_report_obj_uh1,dsp-beacon,normalized_postback,ifc_inmobi_api_user_segments,wclick_dfw1,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_dfw1,iapattribution,iapbilling,beaconDefaultDfw1,adroit_conversion_enhanced_dfw1,nonNwClickCpcDfw1,nonNwClickCpmDfw1,nonNwClickInvalidDfw1,nwClickCpcDfw1,nwClickCpmDfw1,nwClickInvalidDfw1,renderCpcDfw1,renderCpmDfw1,sdkpubreq,carb_user_relevance,splash,cas_ads,rtbd_ads,cas_rr,sdk_metrics,rtbs_click,rtbs_beacon,nnstudio,dcp_click,dcp_beacon_publisherfill,dcp_beacon_adunit_interaction,dcp_beacon_adunit,dcp_beacon,bluekai,beacon_rr_uj1_cpm_render,beacon_rr_hkg1_cpm_render,beacon_csi_events,_audit,billing_download_uh1,fds_dfw1,perfex_click_ev1,perfex_beacon_ev1,il-flat_activity_add-ifcorganicactivity,appd_attribute,profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-ifc_compressed,nested_activity_add-network,adroit_report_obj_dfw1,appd_attribute_errors,appd-debug,brand_attribute_dfw1_dfw1,ifc_photon_nonenriched_pb_dfw1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_dfw1_dfw1,network_attribute_raw_dfw1,network_beacon_dfw1_dfw1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsDfw1,georrcore,georrmetrics,napp,perfRR,supplyRR,brand_attributes,network_attribute_dfw1_dfw1,sdk_health_monitoring,sdk_crash_analytics,sdk_trc,sdk_response_latencies,sdk_stability_metrics,rta"
default["flume_collector"]["endcollector_merge_retention_topics"]['dfw1']  = "photon_flume_test"

default["flume_collector"]["endcollector_platinum_retention_topics"]['dfw1']  = "ifc_photon_enriched_pb_dfw1,ifc_photon_nonenriched_pb_dfw1,user_context,ifc_photon_enriched_postback,dsp-beacon,sandboxrr,sandbox_postimpression,ucm_mapping,ifc_photon_enriched_san_pb,beeswax_bid_logs,dsp_segments,genesis_postback,optout,ifc_attributes,ifc_cookie_organic_activity,wclick_dfw1,normalized_postback,beeswax_download_event,beeswax_post_install_event,ifc_inmobi_api_user_segments,adroit_attribution_stats,iapclick,iapattribution,iapbilling,adomain_meta,tpce_custom_goal_summary,tpce_enriched_download,tpce_purchase_summary"

default["flume_collector"]["endcollector_all_channels"]['dfw1']  = "mergespillable hdfsmerge-channel hdfslocal-channel platinumhdfs-channel eventhublocal-channel  hdfsmergesecure-channel hdfslocalsecure-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['dfw1'] = "mergekafkasink hdfsmerge-sink hdfslocal-sink1 hdfslocal-sink2 hdfslocal-sink3 platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 eventhublocal-sink1 hdfsmergesecure-sink hdfslocalsecure-sink1 hdfslocalsecure-sink2 hdfslocalsecure-sink3 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['dfw1']  = {
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_dfw1,appd_attribute_errors,appd-debug,brand_attribute_dfw1_dfw1,ifc_photon_nonenriched_pb_dfw1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_dfw1_dfw1,network_attribute_raw_dfw1,network_beacon_dfw1_dfw1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsDfw1,georrcore,georrmetrics,napp,perfRR,supplyRR,brand_attributes,network_attribute_dfw1_dfw1,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "dfw1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmergesecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_photon_flume_test"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-dfw1-kafkamerge",
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
	 :'kafka.topics' => "photon_flume_test"},
     "eventhublocalsrc" => {
         :src_category => "dfw1eventhublocal",
         :consumer_group => "dfw1eventhublocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_tpce_purchase_summary"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['dfw1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['dfw1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['dfw1']  = ["hdfslocal-channel"]
default["flume_collector"]["endcollector_local_eventhub_channels"]['dfw1']  = ["eventhublocal-channel"]
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['dfw1']  = ["platinumhdfs-channel"]

#Configure the sinks for the Flume Collector

default["flume_collector"]["endcollector_merged_kafka_sinks"]['dfw1']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['dfw1']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel",:cluster =>"onyx"},
     "hdfslocal-sink2" => {:channel => "hdfslocal-channel",:cluster =>"onyx"},
     "hdfslocal-sink3" => {:channel => "hdfslocal-channel",:cluster =>"onyx"}
}

default["flume_collector"]["endcollector_local_eventhub_sinks"]['dfw1']  = {
     "eventhublocal-sink1" => {:channel => "eventhublocal-channel",:cluster =>"onyx"},
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['dfw1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"onyx"}
}

default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['dfw1']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"}
}

default["flume_collector"]["endcollector_local_secure_hdfs_sinks"]['dfw1']  = {
     "hdfslocalsecure-sink1" => {:channel => "hdfslocalsecure-channel",:cluster =>"onyx"},
     "hdfslocalsecure-sink2" => {:channel => "hdfslocalsecure-channel",:cluster =>"onyx"},
     "hdfslocalsecure-sink3" => {:channel => "hdfslocalsecure-channel",:cluster =>"onyx"}
}

default["flume_collector"]["endcollector_merged_secure_hdfs_sinks"]['dfw1']  = {
     "hdfsmergesecure-sink" => {:channel => "hdfsmergesecure-channel",:cluster =>"onyx"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_sinks"]['dfw1']  = {
     "platinumhdfssecure-sink1" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink2" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink3" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_merge_secure_hdfs_channels"]['dfw1']  = ["hdfsmergesecure-channel"]
default["flume_collector"]["endcollector_local_secure_hdfs_channels"]['dfw1']  = ["hdfslocalsecure-channel"]
default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['dfw1']  = ["platinumhdfssecure-channel"]

######################################################### End Of DFW1 ###################################################################



######################################################### DFW2 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['dfw2']  = "rr,egret_lambda_AdUnitBeacon_dfw2_enhanced,egret_lambda_AdUnitPublisherFill_dfw2_enhanced,egret_lambda_RenderCPC_dfw2_enhanced,egret_lambda_RenderCPM_dfw2_enhanced,egret_lambda_BillingCPC_dfw2_enhanced,egret_lambda_BeaconRRDefault_dfw2_enhanced,egret_lambda_BillingCPM_dfw2_enhanced,egret_lambda_BillingDownload_dfw2_enhanced,egret_lambda_NWClickCPC_dfw2_enhanced,egret_lambda_NWClickCPM_dfw2_enhanced,egret_lambda_NWClickInvalid_dfw2_enhanced,egret_lambda_NonNWClickCPC_dfw2_enhanced,egret_lambda_NonNWClickCPM_dfw2_enhanced,egret_lambda_NonNWClickInvalid_dfw2_enhanced,egret_lambda_NWClickInvalid_dfw2_enhanced,dsp-beacon,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_dfw2,beacon_csi_events,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,_audit,sdkpubreq,beaconDefaultDfw2,nested_activity_add-ifc_compressed,ifc_ff_dfw2,adroit_conversion_enhanced_dfw2,nonNwClickCpcDfw2,nonNwClickCpmDfw2,nonNwClickInvalidDfw2,nwClickCpcDfw2,nwClickCpmDfw2,nwClickInvalidDfw2,renderCpcDfw2,renderCpmDfw2,egret_lambda_AdUnitBeacon_dfw2_defer,egret_lambda_AdUnitBeacon_dfw2_enhanced,egret_lambda_AdUnitPublisherFill_dfw2_enhanced,egret_lambda_RenderCPC_dfw2_enhanced,egret_lambda_RenderCPM_dfw2_enhanced,egret_lambda_BillingCPC_dfw2_enhanced,egret_lambda_BeaconRRDefault_dfw2_enhanced,egret_lambda_BillingCPM_dfw2_enhanced,egret_lambda_BillingDownload_dfw2_enhanced,egret_lambda_NWClickCPC_dfw2_enhanced,egret_lambda_NWClickCPM_dfw2_enhanced,egret_lambda_NWClickInvalid_dfw2_enhanced,egret_lambda_NonNWClickCPC_dfw2_enhanced,egret_lambda_NonNWClickCPM_dfw2_enhanced,egret_lambda_NonNWClickInvalid_dfw2_enhanced,fds_dfw2,egret_enricher_BillingCPC_perf_dfw2_defer,egret_enricher_BillingCPC_perf_dfw2_enhanced,egret_enricher_BillingCPM_perf_dfw2_defer,egret_enricher_BillingCPM_perf_dfw2_enhanced,egret_enricher_BillingDownload_perf_dfw2_defer,egret_enricher_BillingDownload_perf_dfw2_enhanced,il-flat_activity_add-ifcorganicactivity,egret_enricher_BillingDownloadCTA_perf_dfw2_defer,egret_enricher_BillingDownloadVTA_perf_dfw2_defer,egret_enricher_BillingDownloadCTA_perf_dfw2_enhanced,egret_enricher_BillingDownloadVTA_perf_dfw2_enhanced,egret_enricher_NWClickCPC_dfw2_enhanced,egret_enricher_NWClickCPM_dfw2_enhanced,egret_enricher_NWClickInvalid_dfw2_enhanced,egret_enricher_NonNWClickCPC_dfw2_enhanced,egret_enricher_NonNWClickCPM_dfw2_enhanced,egret_enricher_NonNWClickInvalid_dfw2_enhanced,egret_enricher_BeaconRRDefault_dfw2_enhanced,egret_enricher_RenderCPC_dfw2_enhanced,egret_enricher_RenderCPM_dfw2_enhanced,appd_attribute,profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_dfw2,appd_attribute_errors,appd-debug,brand_attribute_dfw2_dfw2,ifc_photon_nonenriched_pb_dfw2,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_dfw2_dfw2,network_attribute_raw_dfw2,network_beacon_dfw2_dfw2,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsDfw2,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,egret_enricher_click_dfw2_enhanced,egret_enricher_enhanced_clicks_dfw2,sdk_trc,sdk_response_latencies,sdk_stability_metrics,rta"

default["flume_collector"]["endcollector_merge_retention_topics"]['dfw2']  = "photon_flume_test"

default["flume_collector"]["endcollector_platinum_retention_topics"]['dfw2']  = "ifc_photon_enriched_pb_dfw2,ifc_photon_nonenriched_pb_dfw2,user_context,ifc_photon_enriched_postback,dsp-beacon,sandboxrr,sandbox_postimpression,ifc_cookie_organic_activity,ifc_photon_enriched_san_pb,beeswax_bid_logs,adroit_attribution_stats,ucm_mapping,adomain_meta"

default["flume_collector"]["endcollector_all_channels"]['dfw2']  = "mergespillable hdfsmerge-channel hdfslocal-channel platinumhdfs-channel hdfsmergesecure-channel hdfslocalsecure-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['dfw2'] = "mergekafkasink hdfsmerge-sink hdfslocal-sink1 hdfslocal-sink2 hdfslocal-sink3 hdfslocal-sink4 platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 hdfsmergesecure-sink hdfslocalsecure-sink1 hdfslocalsecure-sink2 hdfslocalsecure-sink3 hdfslocalsecure-sink4 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['dfw2']  = {
     "hdfslocalsrc1" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_dfw2,appd_attribute_errors,appd-debug,brand_attribute_dfw2_dfw2,ifc_photon_nonenriched_pb_dfw2,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_dfw2_dfw2,network_attribute_raw_dfw2,network_beacon_dfw2_dfw2,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsDfw2,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,egret_enricher_click_dfw2_enhanced,egret_enricher_enhanced_clicks_dfw2,sdk_trc"},
     "hdfslocalsrc2" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_dfw2,appd_attribute_errors,appd-debug,brand_attribute_dfw2_dfw2,ifc_photon_nonenriched_pb_dfw2,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_dfw2_dfw2,network_attribute_raw_dfw2,network_beacon_dfw2_dfw2,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsDfw2,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,egret_enricher_click_dfw2_enhanced,egret_enricher_enhanced_clicks_dfw2,sdk_trc"},
     "hdfslocalsrc3" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_dfw2,appd_attribute_errors,appd-debug,brand_attribute_dfw2_dfw2,ifc_photon_nonenriched_pb_dfw2,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_dfw2_dfw2,network_attribute_raw_dfw2,network_beacon_dfw2_dfw2,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsDfw2,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,egret_enricher_click_dfw2_enhanced,egret_enricher_enhanced_clicks_dfw2,sdk_trc"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "dfw2hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmergesecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_photon_flume_test"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-dfw2-kafkamerge",
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
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['dfw2']  = ["platinumhdfs-channel"]

#Configure the sinks for the Flume Collector

default["flume_collector"]["endcollector_merged_kafka_sinks"]['dfw2']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['dfw2']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel",:cluster =>"garnet"},
     "hdfslocal-sink2" => {:channel => "hdfslocal-channel",:cluster =>"garnet"},
     "hdfslocal-sink3" => {:channel => "hdfslocal-channel",:cluster =>"garnet"},
     "hdfslocal-sink4" => {:channel => "hdfslocal-channel",:cluster =>"garnet"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['dfw2']  = {
    "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"garnet"}
}
default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['dfw2']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_local_secure_hdfs_sinks"]['dfw2']  = {
     "hdfslocalsecure-sink1" => {:channel => "hdfslocalsecure-channel",:cluster =>"garnet"},
     "hdfslocalsecure-sink2" => {:channel => "hdfslocalsecure-channel",:cluster =>"garnet"},
     "hdfslocalsecure-sink3" => {:channel => "hdfslocalsecure-channel",:cluster =>"garnet"},
     "hdfslocalsecure-sink4" => {:channel => "hdfslocalsecure-channel",:cluster =>"garnet"}
}

default["flume_collector"]["endcollector_merged_secure_hdfs_sinks"]['dfw2']  = {
     "hdfsmergesecure-sink" => {:channel => "hdfsmergesecure-channel",:cluster =>"garnet"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_sinks"]['dfw2']  = {
     "platinumhdfssecure-sink1" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink2" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink3" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_merge_secure_hdfs_channels"]['dfw2']  = ["hdfsmergesecure-channel"]
default["flume_collector"]["endcollector_local_secure_hdfs_channels"]['dfw2']  = ["hdfslocalsecure-channel"]
default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['dfw2']  = ["platinumhdfssecure-channel"]

######################################################### End Of DFW2 ###################################################################



######################################################### AMS1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['ams1']  = "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-ifc_compressed,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,rr,egret_lambda_AdUnitBeacon_ams1_enhanced,egret_lambda_AdUnitPublisherFill_ams1_enhanced,egret_lambda_RenderCPC_ams1_enhanced,egret_lambda_RenderCPM_ams1_enhanced,egret_lambda_BillingCPC_ams1_enhanced,egret_lambda_BeaconRRDefault_ams1_enhanced,egret_lambda_BillingCPM_ams1_enhanced,egret_lambda_BillingDownload_ams1_enhanced,egret_lambda_NWClickCPC_ams1_enhanced,egret_lambda_NWClickCPM_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,egret_lambda_NonNWClickCPC_ams1_enhanced,egret_lambda_NonNWClickCPM_ams1_enhanced,egret_lambda_NonNWClickInvalid_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,dsp-beacon,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_ams1,beacon_csi_events,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,_audit,sdkpubreq,beaconDefaultAms1,ifc_ff_ams1,adroit_conversion_enhanced_ams1,nonNwClickCpcAms1,nonNwClickCpmAms1,nonNwClickInvalidAms1,nwClickCpcAms1,nwClickCpmAms1,nwClickInvalidAms1,renderCpcAms1,renderCpmAms1,egret_lambda_AdUnitBeacon_ams1_defer,egret_lambda_AdUnitBeacon_ams1_enhanced,egret_lambda_AdUnitPublisherFill_ams1_enhanced,egret_lambda_RenderCPC_ams1_enhanced,egret_lambda_RenderCPM_ams1_enhanced,egret_lambda_BillingCPC_ams1_enhanced,egret_lambda_BeaconRRDefault_ams1_enhanced,egret_lambda_BillingCPM_ams1_enhanced,egret_lambda_BillingDownload_ams1_enhanced,egret_lambda_NWClickCPC_ams1_enhanced,egret_lambda_NWClickCPM_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,egret_lambda_NonNWClickCPC_ams1_enhanced,egret_lambda_NonNWClickCPM_ams1_enhanced,egret_lambda_NonNWClickInvalid_ams1_enhanced,fds_ams1,appd_attribute,sdk_trc,sdk_stability_metrics,sdk_response_latencies,rta"
default["flume_collector"]["endcollector_merge_retention_topics"]['ams1']  = "photon_flume_test"

default["flume_collector"]["endcollector_platinum_retention_topics"]['ams1']  = "ifc_photon_enriched_pb_ams1,ifc_photon_nonenriched_pb_ams1"

default["flume_collector"]["endcollector_all_channels"]['ams1']  = "mergespillable hdfsmerge-channel hdfslocal-channel platinumhdfs-channel hdfslocalsecure-channel  hdfsmergesecure-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['ams1'] = "mergekafkasink hdfsmerge-sink hdfslocal-sink1 hdfslocal-sink2 hdfslocal-sink3 hdfslocal-sink4 hdfslocal-sink5 hdfslocal-sink6 hdfslocal-sink7 hdfslocal-sink8 hdfslocal-sink9 hdfslocal-sink10 hdfslocal-sink11 hdfslocal-sink12 hdfslocal-sink13 hdfslocal-sink14 hdfslocal-sink15 platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 hdfsmergesecure-sink hdfslocalsecure-sink1 hdfslocalsecure-sink2 hdfslocalsecure-sink3 hdfslocalsecure-sink4 hdfslocalsecure-sink5 hdfslocalsecure-sink6 hdfslocalsecure-sink7 hdfslocalsecure-sink8 hdfslocalsecure-sink9 hdfslocalsecure-sink10 hdfslocalsecure-sink11 hdfslocalsecure-sink12 hdfslocalsecure-sink13 hdfslocalsecure-sink14 hdfslocalsecure-sink15 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['ams1']  = {
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
     "hdfslocalsrc2" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
     "hdfslocalsrc3" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
     "hdfslocalsrc4" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
     "hdfslocalsrc5" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "ams1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmergesecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "merge_photon_flume_test"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-ams1-kafkamerge",
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
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['ams1']  = ["platinumhdfs-channel"]

#Configure the sinks for the Flume Collector

default["flume_collector"]["endcollector_merged_kafka_sinks"]['ams1']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['ams1']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink2" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink3" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink4" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink5" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink6" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink7" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink8" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink9" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink10" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink11" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink12" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink13" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink14" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink15" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['ams1']  = {
    "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"azurite"}
}
default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['ams1']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_local_secure_hdfs_sinks"]['ams1']  = {
     "hdfslocalsecure-sink1" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink2" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink3" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink4" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink5" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink6" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink7" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink8" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink9" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink10" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink11" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink12" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink13" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink14" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink15" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"}
}

default["flume_collector"]["endcollector_merged_secure_hdfs_sinks"]['ams1']  = {
     "hdfsmergesecure-sink" => {:channel => "hdfsmergesecure-channel",:cluster =>"azurite"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_sinks"]['ams1']  = {
     "platinumhdfssecure-sink1" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink2" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink3" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_merge_secure_hdfs_channels"]['ams1']  = ["hdfsmergesecure-channel"]
default["flume_collector"]["endcollector_local_secure_hdfs_channels"]['ams1']  = ["hdfslocalsecure-channel"]
default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['ams1']  = ["platinumhdfssecure-channel"]

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
default["flume_collector"]["endcollector_local_retention_topics"]['pek1']  = "rr,egret_lambda_AdUnitBeacon_pek1_defer,egret_lambda_AdUnitBeacon_pek1_enhanced,egret_lambda_AdUnitPublisherFill_pek1_enhanced,egret_lambda_RenderCPC_pek1_enhanced,egret_lambda_RenderCPM_pek1_enhanced,egret_lambda_BillingCPC_pek1_enhanced,egret_lambda_BeaconRRDefault_pek1_enhanced,egret_lambda_BillingCPM_pek1_enhanced,egret_lambda_BillingDownload_pek1_enhanced,egret_lambda_NWClickCPC_pek1_enhanced,egret_lambda_NWClickCPM_pek1_enhanced,egret_lambda_NWClickInvalid_pek1_enhanced,egret_lambda_NonNWClickCPC_pek1_enhanced,egret_lambda_NonNWClickCPM_pek1_enhanced,egret_lambda_NonNWClickInvalid_pek1_enhanced,egret_lambda_NWClickInvalid_pek1_enhanced,dsp-beacon,beacon_rr_hkg1_cpm_render,wclick_pek1,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,imei_attribute_change-appd,imei_attribute_change-brand,imei_attribute_change-core,imei_attribute_change-ifc,imei_flat_activity_add-appdcustomactivity,imei_flat_activity_add-appddownloadactivity,imei_flat_activity_add-appdpurchaseactivity,imei_flat_activity_add-appds2scustomsegmentactivity,imei_flat_activity_add-coredownloadactivity,imei_flat_activity_add-ifcorganicactivity,imei_nested_activity_add-appd,imei_nested_activity_add-cas,imei_nested_activity_add-ifc,imei_nested_activity_add-network,imei_custom_type_record_update-core,imei_custom_type_record_update-ifc,imei_custom_type_record_update-ifcinorg,imei_custom_type_record_update-appdlookaliketype,imei_custom_type_record_update-appduserrenderhistory,imei_custom_type_record_update-appduserclickhistory,imei_custom_type_record_update-branduseractivityhistory,imei_profile_delete-core,imei_profile_delete-ifc,imei_profile_delete-appd,imei_profile_delete-brand,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,sdkpubreq,nwClickCpcPek1,nwClickCpmPek1,nwClickInvalidPek1,renderCpcPek1,renderCpmPek1,beaconDefaultPek1,ifcp_pek1,nested_activity_add-ifc_compressed,adroit_conversion_enhanced_pek1,nonNwClickCpcPek1,nonNwClickCpmPek1,nonNwClickInvalidPek1,_audit,fds_pek1,il-flat_activity_add-ifcorganicactivity,appd_attribute,profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_pek1,appd_attribute_errors,appd-debug,brand_attribute_pek1_pek1,ifc_photon_nonenriched_pb_pek1,nested_activity_add-ifcuseractivity,network_attribute_raw_pek1,ttd-beacon,ttd-request,usermeta_change,wadogorr,network_beacon_pek1_pek1,network_activity_pek1_pek1,nested_activity_add-ifc,fdsPek1,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc,sdk_response_latencies,sdk_stability_metricsi,rta"

default["flume_collector"]["endcollector_merge_retention_topics"]['pek1']  = "photon_flume_test"

default["flume_collector"]["endcollector_platinum_retention_topics"]['pek1']  = "testmerge,user_context,ifc_photon_enriched_postback,dsp-beacon,sandboxrr,sandbox_postimpression,wclick_pek1,ifc_photon_enriched_san_pb,adroit_attribution_stats,ifc_cookie_organic_activity,iapclick,adomain_meta"

default["flume_collector"]["endcollector_all_channels"]['pek1']  = "mergespillable hdfslocal-channel  hdfsmerge-channel platinumhdfs-channel hdfslocalsecure-channel  hdfsmergesecure-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['pek1'] = "mergekafkasink hdfslocal-sink  hdfsmerge-sink platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 hdfslocalsecure-sink1  hdfslocalsecure-sink2 hdfslocalsecure-sink3 hdfsmergesecure-sink platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['pek1']  = {
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "pek1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_pek1,appd_attribute_errors,appd-debug,brand_attribute_pek1_pek1,ifc_photon_nonenriched_pb_pek1,nested_activity_add-ifcuseractivity,network_attribute_raw_pek1,ttd-beacon,ttd-request,usermeta_change,wadogorr,network_beacon_pek1_pek1,network_activity_pek1_pek1,nested_activity_add-ifc,fdsPek1,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "pek1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmergesecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_photon_flume_test"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-pek1-kafkamerge",
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
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['pek1']  = ["platinumhdfs-channel"]

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
default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['pek1']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_local_secure_hdfs_sinks"]['pek1']  = {
     "hdfslocalsecure-sink1" => {:channel => "hdfslocalsecure-channel",:cluster =>"pyrite"},
     "hdfslocalsecure-sink2" => {:channel => "hdfslocalsecure-channel",:cluster =>"pyrite"},
     "hdfslocalsecure-sink3" => {:channel => "hdfslocalsecure-channel",:cluster =>"pyrite"}
}

default["flume_collector"]["endcollector_merged_secure_hdfs_sinks"]['pek1']  = {
     "hdfsmergesecure-sink" => {:channel => "hdfsmergesecure-channel",:cluster =>"pyrite"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_sinks"]['pek1']  = {
     "platinumhdfssecure-sink1" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink2" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink3" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink4" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_merge_secure_hdfs_channels"]['pek1']  = ["hdfsmergesecure-channel"]
default["flume_collector"]["endcollector_local_secure_hdfs_channels"]['pek1']  = ["hdfslocalsecure-channel"]
default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['pek1']  = ["platinumhdfssecure-channel"]

######################################################### End Of PEK1 ###################################################################
