# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.56"
default["flume_collector"]["download_url"] = "http://plgw4001.grid.dfw1.inmobi.com/tar/apache-flume-1.6.0.56-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"

default["flume_collector"]["keytab"]  = "/etc/security/keytabs/flume.service.keytab"

# Kafka Brokers in each colo
default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9093,oxkf4002.grid.dfw1.inmobi.com:9093,oxkf4003.grid.dfw1.inmobi.com:9093,oxkf4008.grid.dfw1.inmobi.com:9093,oxkf4009.grid.dfw1.inmobi.com:9093,oxkf4010.grid.dfw1.inmobi.com:9093,oxkf4011.grid.dfw1.inmobi.com:9093,oxkf4012.grid.dfw1.inmobi.com:9093,oxkf4013.grid.dfw1.inmobi.com:9093,oxkf4014.grid.dfw1.inmobi.com:9093,oxkf4015.grid.dfw1.inmobi.com:9093,oxkf4016.grid.dfw1.inmobi.com:9093,oxkf4017.grid.dfw1.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['pek1']  = "pykf4001.grid.pek1.inmobi.com:9093,pykf4002.grid.pek1.inmobi.com:9093,pykf4003.grid.pek1.inmobi.com:9093,pykf4004.grid.pek1.inmobi.com:9093,pykf4005.grid.pek1.inmobi.com:9093,pykf4006.grid.pek1.inmobi.com:9093,pykf4007.grid.pek1.inmobi.com:9093,pykf4008.grid.pek1.inmobi.com:9093,pykf4009.grid.pek1.inmobi.com:9093,pykf4010.grid.pek1.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['dfw2']  = "gakf4001.grid.dfw2.inmobi.com:9093,gakf4002.grid.dfw2.inmobi.com:9093,gakf4003.grid.dfw2.inmobi.com:9093,gakf4004.grid.dfw2.inmobi.com:9093,gakf4005.grid.dfw2.inmobi.com:9093,gakf4006.grid.dfw2.inmobi.com:9093,gakf4007.grid.dfw2.inmobi.com:9093,gakf4008.grid.dfw2.inmobi.com:9093,gakf4009.grid.dfw2.inmobi.com:9093,gakf4010.grid.dfw2.inmobi.com:9093,gakf4011.grid.dfw2.inmobi.com:9093,gakf4012.grid.dfw2.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['ams1']  = "azkf4001.grid.ams1.inmobi.com:9093,azkf4002.grid.ams1.inmobi.com:9093,azkf4003.grid.ams1.inmobi.com:9093,azkf4004.grid.ams1.inmobi.com:9093,azkf4005.grid.ams1.inmobi.com:9093,azkf4006.grid.ams1.inmobi.com:9093,azkf4007.grid.ams1.inmobi.com:9093,azkf4008.grid.ams1.inmobi.com:9093:azkf4009.grid.ams1.inmobi.com:9093,azkf4010.grid.ams1.inmobi.com:9093,azkf4011.grid.ams1.inmobi.com:9093,azkf4012.grid.ams1.inmobi.com:9093,azkf4013.grid.ams1.inmobi.com:9093,azkf4014.grid.ams1.inmobi.com:9093,azkf4015.grid.ams1.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['maa1']  = "bekf4001.grid.maa1.inmobi.com:9093,bekf4002.grid.maa1.inmobi.com:9093,bekf4003.grid.maa1.inmobi.com:9093,bekf4004.grid.maa1.inmobi.com:9093,bekf4005.grid.maa1.inmobi.com:9093,bekf4006.grid.maa1.inmobi.com:9093,bekf4007.grid.maa1.inmobi.com:9093,bekf4008.grid.maa1.inmobi.com:9093,bekf4009.grid.maa1.inmobi.com:9093"

# Zookeeper Quorum in each colo
default["flume_collector"]["kafka_zookeeper"]['dfw1']  = "kafka-zookeeper-1.grid.dfw1.inmobi.com:2181,kafka-zookeeper-2.grid.dfw1.inmobi.com:2181,kafka-zookeeper-3.grid.dfw1.inmobi.com:2181,kafka-zookeeper-4.grid.dfw1.inmobi.com:2181,kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['pek1']  = "kafka-zookeeper-1.grid.pek1.inmobi.com:2181,kafka-zookeeper-2.grid.pek1.inmobi.com:2181,kafka-zookeeper-3.grid.pek1.inmobi.com:2181,kafka-zookeeper-4.grid.pek1.inmobi.com:2181,kafka-zookeeper-5.grid.pek1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['dfw2']  = "kafka-zookeeper-1.grid.dfw2.inmobi.com:2181,kafka-zookeeper-2.grid.dfw2.inmobi.com:2181,kafka-zookeeper-3.grid.dfw2.inmobi.com:2181,kafka-zookeeper-4.grid.dfw2.inmobi.com:2181,kafka-zookeeper-5.grid.dfw2.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['ams1']  = "kafka-zookeeper-1.grid.ams1.inmobi.com:2181,kafka-zookeeper-2.grid.ams1.inmobi.com:2181,kafka-zookeeper-3.grid.ams1.inmobi.com:2181,kafka-zookeeper-4.grid.ams1.inmobi.com:2181,kafka-zookeeper-5.grid.ams1.inmobi.com:2181"
default["flume_collector"]["kafka_zookeeper"]['maa1']  = "kafka-zookeeper-1.grid.maa1.inmobi.com:2181,kafka-zookeeper-2.grid.maa1.inmobi.com:2181,kafka-zookeeper-3.grid.maa1.inmobi.com:2181,kafka-zookeeper-4.grid.maa1.inmobi.com:2181,kafka-zookeeper-5.grid.maa1.inmobi.com:2181"

default["flume_collector"]["kafka_zookeeper"]['platinum']="plnn4001.grid.dfw1.inmobi.com:2181,plnn4002.grid.dfw1.inmobi.com:2181,plrm4001.grid.dfw1.inmobi.com:2181,plrm4002.grid.dfw1.inmobi.com:2181,plns4001.grid.dfw1.inmobi.com:2181"

#Flume Agents
default["flume_collector"]["flume_agent_host"]['pek1']  = "oxfl4001.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['dfw1']  = "oxfl4001.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['dfw2']  = "oxfl4001.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['ams1']  = "oxfl4001.grid.dfw1.inmobi.com"
default["flume_collector"]["flume_agent_host"]['maa1']  = "oxfl4001.grid.dfw1.inmobi.com"

#Flume merge source consumer groupsize
default["flume_collector"]["mergesrc_consumer_gpsize"]['pek1']  = "4"
default["flume_collector"]["mergesrc_consumer_gpsize"]['dfw1']  = "4"
default["flume_collector"]["mergesrc_consumer_gpsize"]['dfw2']  = "4"
default["flume_collector"]["mergesrc_consumer_gpsize"]['ams1']  = "4"
default["flume_collector"]["mergesrc_consumer_gpsize"]['maa1']  = "4"

#number of sinkworkerthreads
default["flume_collector"]["sinkworkerthreads"]['pek1']  = "64"
default["flume_collector"]["sinkworkerthreads"]['dfw1']  = "88"
default["flume_collector"]["sinkworkerthreads"]['dfw2']  = "64"
default["flume_collector"]["sinkworkerthreads"]['ams1']  = "64"
default["flume_collector"]["sinkworkerthreads"]['maa1']  = "64"

#number of sinkworkerthreads
default["flume_collector"]["mergesinkworkerthreads"]['pek1']  = "64"
default["flume_collector"]["mergesinkworkerthreads"]['dfw1']  = "64"
default["flume_collector"]["mergesinkworkerthreads"]['dfw2']  = "64"
default["flume_collector"]["mergesinkworkerthreads"]['ams1']  = "64"
default["flume_collector"]["mergesinkworkerthreads"]['maa1']  = "64"

#number of avrosinkworkerthreads
default["flume_collector"]["avrosinkworkerthreads"]['pek1']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['dfw1']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['dfw2']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['ams1']  = "16"
default["flume_collector"]["avrosinkworkerthreads"]['maa1']  = "16"


######################################################### DFW1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['dfw1']  = "rr,egret_lambda_AdUnitBeacon_dfw1_defer,egret_lambda_AdUnitBeacon_dfw1_enhanced,egret_lambda_AdUnitPublisherFill_dfw1_enhanced,egret_lambda_BeaconRRDefault_dfw1_enhanced,egret_lambda_BillingCPC_dfw1_enhanced,egret_lambda_BillingCPM_dfw1_enhanced,egret_lambda_BillingDownload_dfw1_enhanced,egret_lambda_NonNWClickCPC_dfw1_enhanced,egret_lambda_NonNWClickCPM_dfw1_enhanced,egret_lambda_NonNWClickInvalid_dfw1_enhanced,egret_lambda_NWClickCPC_dfw1_enhanced,egret_lambda_NWClickCPM_dfw1_enhanced,egret_lambda_NWClickInvalid_dfw1_enhanced,egret_lambda_RenderCPC_dfw1_enhanced,egret_lambda_RenderCPM_enhanced,billing_cpc_dfw1,billing_cpm_dfw1,billing_download_dfw1,billing_cpc_lhr1,billing_cpm_lhr1,billing_download_lhr1,billing_cpc_pek1,billing_cpm_pek1,billing_download_pek1,conversion_beacon_rtbs,tpce_rtfb_conversions,iat_goal_uh1,iat_click_uh1,iat_report_event,beeswax_download_event,adroit_downloads,beeswax_post_install_event,adroit_report_obj_uh1,dsp-beacon,normalized_postback,ifc_inmobi_api_user_segments,wclick_dfw1,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_dfw1,iapattribution,iapbilling,beaconDefaultDfw1,adroit_conversion_enhanced_dfw1,nonNwClickCpcDfw1,nonNwClickCpmDfw1,nonNwClickInvalidDfw1,nwClickCpcDfw1,nwClickCpmDfw1,nwClickInvalidDfw1,renderCpcDfw1,renderCpmDfw1,sdkpubreq,carb_user_relevance,splash,cas_ads,rtbd_ads,cas_rr,sdk_metrics,rtbs_click,rtbs_beacon,nnstudio,dcp_click,dcp_beacon_publisherfill,dcp_beacon_adunit_interaction,dcp_beacon_adunit,dcp_beacon,bluekai,beacon_rr_uj1_cpm_render,beacon_rr_hkg1_cpm_render,beacon_csi_events,_audit,billing_download_uh1,fds_dfw1,perfex_click_ev1,perfex_beacon_ev1,il-flat_activity_add-ifcorganicactivity,appd_attribute,profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-ifc_compressed,nested_activity_add-network,adroit_report_obj_dfw1,appd_attribute_errors,appd-debug,brand_attribute_dfw1_dfw1,ifc_photon_nonenriched_pb_dfw1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_dfw1_dfw1,network_attribute_raw_dfw1,network_beacon_dfw1_dfw1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsDfw1,georrcore,georrmetrics,napp,perfRR,supplyRR,brand_attributes,network_attribute_dfw1_dfw1,sdk_health_monitoring,sdk_crash_analytics,sdk_trc,sdk_response_latencies,sdk_stability_metrics,rta,adroit_san_pinger_stats"
default["flume_collector"]["endcollector_merge_retention_topics"]['dfw1']  = "photon_flume_test"

default["flume_collector"]["endcollector_platinum_retention_topics"]['dfw1']  = "ifc_photon_enriched_pb_dfw1,ifc_photon_nonenriched_pb_dfw1,user_context,ifc_photon_enriched_postback,dsp-beacon,sandboxrr,sandbox_postimpression,ucm_mapping,ifc_photon_enriched_san_pb,beeswax_bid_logs,dsp_segments,genesis_postback,optout,ifc_attributes,ifc_cookie_organic_activity,wclick_dfw1,normalized_postback,beeswax_download_event,beeswax_post_install_event,ifc_inmobi_api_user_segments,adroit_attribution_stats,iapclick,iapattribution,iapbilling,adomain_meta,tpce_custom_goal_summary,tpce_enriched_download,tpce_purchase_summary,adroit_san_pinger_stats,perfRR,perfex_beacon_ev1,perfex_click_ev1,perfex_render_ev1"

default["flume_collector"]["endcollector_all_channels"]['dfw1']  = "mergespillable hdfsmerge-channel hdfslocal-channel platinumhdfs-channel eventhublocal-channel6 eventhublocal-channel7 eventhublocal-channel8 eventhublocal-channel10 eventhublocal-channel11 eventhublocal-channel12 eventhublocal-channel13 eventhublocal-channel14 eventhublocal-channel15 eventhublocal-channel16 eventhublocal-channel17 hdfsmergesecure-channel hdfslocalsecure-channel hdfslocalsecure-channel2 platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['dfw1'] = "mergekafkasink hdfsmerge-sink hdfslocal-sink1 hdfslocal-sink2 hdfslocal-sink3 platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 kestrelsink7 kestrelsink8 kestrelsink9 kestrelsink11 kestrelsink12 kestrelsink13 kestrelsink14 kestrelsink15 kestrelsink16 kestrelsink17 kestrelsink18 hdfsmergesecure-sink hdfslocalsecure-sink1 hdfslocalsecure-sink2 hdfslocalsecure-sink3 hdfslocalsecure-sink4 hdfslocalsecure-sink5 hdfslocalsecure-sink6 hdfslocalsecure-sink7 hdfslocalsecure-sink8 hdfslocalsecure-sink9 hdfslocalsecure-sink10 hdfslocalsecure-sink11 hdfslocalsecure-sink12 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['dfw1']  = {
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_dfw1,appd_attribute_errors,appd-debug,brand_attribute_dfw1_dfw1,ifc_photon_nonenriched_pb_dfw1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_dfw1_dfw1,network_attribute_raw_dfw1,network_beacon_dfw1_dfw1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsDfw1,georrcore,georrmetrics,napp,perfRR,supplyRR,brand_attributes,network_attribute_dfw1_dfw1,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
    
    "hdfslocalsrc2" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},

    "hdfslocalsrc3" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},

    "hdfslocalsrc4" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},

    "hdfslocalsrc5" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},

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
     "eventhublocalsrc6" => {
         :src_category => "dfw1eventhublocal6",
         :consumer_group => "dfw1eventhublocal6",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel6",
         :batchSize => 500,
         :'kafka.topics' => "cdp_custom_organic_backfill"},
     "eventhublocalsrc7" => {
         :src_category => "dfw1eventhublocal7",
         :consumer_group => "dfw1eventhublocal7",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel7",
         :batchSize => 500,
         :'kafka.topics' => "cdp_download_organic_backfill"},
     "eventhublocalsrc8" => {
         :src_category => "dfw1eventhublocal8",
         :consumer_group => "dfw1eventhublocal8",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel8",
         :batchSize => 500,
         :'kafka.topics' => "cdp_purchase_organic_backfill"},
    "eventhublocalsrc10" => {
         :src_category => "dfw1eventhublocal10",
         :consumer_group => "dfw1eventhublocal10",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel10",
         :batchSize => 500,
         :'kafka.topics' => "iappurchase"},
    "eventhublocalsrc11" => {
         :src_category => "dfw1eventhublocal11",
         :consumer_group => "dfw1eventhublocal11",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel11",
         :batchSize => 500,
         :'kafka.topics' => "iapdownload"},
    "eventhublocalsrc12" => {
         :src_category => "dfw1eventhublocal12",
         :consumer_group => "dfw1eventhublocal12",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel12",
         :batchSize => 500,
         :'kafka.topics' => "iapcustom"},
    "eventhublocalsrc13" => {
         :src_category => "dfw1eventhublocal13",
         :consumer_group => "dfw1eventhublocal13",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel13",
         :batchSize => 500,
         :'kafka.topics' => "glance_segments_ingestion"},
    "eventhublocalsrc14" => {
         :src_category => "dfw1eventhublocal14",
         :consumer_group => "dfw1eventhublocal14",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel14",
         :batchSize => 500,
         :'kafka.topics' => "iapdownload"},
    "eventhublocalsrc15" => {
         :src_category => "dfw1eventhublocal15",
         :consumer_group => "dfw1eventhublocal15",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel15",
         :batchSize => 500,
         :'kafka.topics' => "iappurchase"},
    "eventhublocalsrc16" => {
         :src_category => "dfw1eventhublocal16",
         :consumer_group => "dfw1eventhublocal16",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel16",
         :batchSize => 500,
         :'kafka.topics' => "iapcustom"},
    "eventhublocalsrc17" => {
         :src_category => "dfw1eventhublocal17",
         :consumer_group => "dfw1eventhublocal17",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel17",
         :batchSize => 500,
         :'kafka.topics' => "billing_cpm_us_east"}
}

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['dfw1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['dfw1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['dfw1']  = ["hdfslocal-channel"]
default["flume_collector"]["endcollector_local_eventhub_channels"]['dfw1']  = ["eventhublocal-channel6","eventhublocal-channel7","eventhublocal-channel8","eventhublocal-channel10","eventhublocal-channel11","eventhublocal-channel12","eventhublocal-channel13","eventhublocal-channel14","eventhublocal-channel15","eventhublocal-channel16","eventhublocal-channel17"]
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

default["flume_collector"]["endcollector_dfw1_eventhub_sinks6"]['dfw1']  = {
     "kestrelsink7" => {:channel => "eventhublocal-channel6",:cluster =>"onyx"},
}
default["flume_collector"]["endcollector_dfw1_eventhub_sinks7"]['dfw1']  = {
     "kestrelsink8" => {:channel => "eventhublocal-channel7",:cluster =>"onyx"},
}
default["flume_collector"]["endcollector_dfw1_eventhub_sinks8"]['dfw1']  = {
     "kestrelsink9" => {:channel => "eventhublocal-channel8",:cluster =>"onyx"},
}
default["flume_collector"]["endcollector_dfw1_eventhub_sinks10"]['dfw1']  = {
     "kestrelsink11" => {:channel => "eventhublocal-channel10",:cluster =>"onyx"},
}
default["flume_collector"]["endcollector_dfw1_eventhub_sinks11"]['dfw1']  = {
     "kestrelsink12" => {:channel => "eventhublocal-channel11",:cluster =>"onyx"},
}
default["flume_collector"]["endcollector_dfw1_eventhub_sinks12"]['dfw1']  = {
     "kestrelsink13" => {:channel => "eventhublocal-channel12",:cluster =>"onyx"},
}
default["flume_collector"]["endcollector_dfw1_eventhub_sinks13"]['dfw1']  = {
     "kestrelsink14" => {:channel => "eventhublocal-channel13",:cluster =>"onyx"},
}
default["flume_collector"]["endcollector_dfw1_eventhub_sinks14"]['dfw1']  = {
     "kestrelsink15" => {:channel => "eventhublocal-channel14",:cluster =>"onyx"},
}
default["flume_collector"]["endcollector_dfw1_eventhub_sinks15"]['dfw1']  = {
     "kestrelsink16" => {:channel => "eventhublocal-channel15",:cluster =>"onyx"},
}
default["flume_collector"]["endcollector_dfw1_eventhub_sinks16"]['dfw1']  = {
     "kestrelsink17" => {:channel => "eventhublocal-channel16",:cluster =>"onyx"},
}
default["flume_collector"]["endcollector_dfw1_eventhub_sinks17"]['dfw1']  = {
     "kestrelsink18" => {:channel => "eventhublocal-channel17",:cluster =>"onyx"},
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
     "hdfslocalsecure-sink3" => {:channel => "hdfslocalsecure-channel",:cluster =>"onyx"},
     "hdfslocalsecure-sink4" => {:channel => "hdfslocalsecure-channel",:cluster =>"onyx"},
     "hdfslocalsecure-sink5" => {:channel => "hdfslocalsecure-channel",:cluster =>"onyx"},
     "hdfslocalsecure-sink6" => {:channel => "hdfslocalsecure-channel",:cluster =>"onyx"},
     "hdfslocalsecure-sink7" => {:channel => "hdfslocalsecure-channel",:cluster =>"onyx"},
     "hdfslocalsecure-sink8" => {:channel => "hdfslocalsecure-channel",:cluster =>"onyx"},
     "hdfslocalsecure-sink9" => {:channel => "hdfslocalsecure-channel2",:cluster =>"onyx"},
     "hdfslocalsecure-sink10" => {:channel => "hdfslocalsecure-channel2",:cluster =>"onyx"},
     "hdfslocalsecure-sink11" => {:channel => "hdfslocalsecure-channel2",:cluster =>"onyx"},
     "hdfslocalsecure-sink12" => {:channel => "hdfslocalsecure-channel2",:cluster =>"onyx"}
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
default["flume_collector"]["endcollector_local_secure_hdfs_channels"]['dfw1']  = ["hdfslocalsecure-channel","hdfslocalsecure-channel2"]
default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['dfw1']  = ["platinumhdfssecure-channel"]

######################################################### End Of DFW1 ###################################################################



######################################################### DFW2 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['dfw2']  = "rr,egret_lambda_AdUnitBeacon_dfw2_enhanced,egret_lambda_AdUnitPublisherFill_dfw2_enhanced,egret_lambda_RenderCPC_dfw2_enhanced,egret_lambda_RenderCPM_dfw2_enhanced,egret_lambda_BillingCPC_dfw2_enhanced,egret_lambda_BeaconRRDefault_dfw2_enhanced,egret_lambda_BillingCPM_dfw2_enhanced,egret_lambda_BillingDownload_dfw2_enhanced,egret_lambda_NWClickCPC_dfw2_enhanced,egret_lambda_NWClickCPM_dfw2_enhanced,egret_lambda_NWClickInvalid_dfw2_enhanced,egret_lambda_NonNWClickCPC_dfw2_enhanced,egret_lambda_NonNWClickCPM_dfw2_enhanced,egret_lambda_NonNWClickInvalid_dfw2_enhanced,egret_lambda_NWClickInvalid_dfw2_enhanced,dsp-beacon,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_dfw2,beacon_csi_events,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,_audit,sdkpubreq,beaconDefaultDfw2,nested_activity_add-ifc_compressed,ifc_ff_dfw2,adroit_conversion_enhanced_dfw2,nonNwClickCpcDfw2,nonNwClickCpmDfw2,nonNwClickInvalidDfw2,nwClickCpcDfw2,nwClickCpmDfw2,nwClickInvalidDfw2,renderCpcDfw2,renderCpmDfw2,egret_lambda_AdUnitBeacon_dfw2_defer,egret_lambda_AdUnitBeacon_dfw2_enhanced,egret_lambda_AdUnitPublisherFill_dfw2_enhanced,egret_lambda_RenderCPC_dfw2_enhanced,egret_lambda_RenderCPM_dfw2_enhanced,egret_lambda_BillingCPC_dfw2_enhanced,egret_lambda_BeaconRRDefault_dfw2_enhanced,egret_lambda_BillingCPM_dfw2_enhanced,egret_lambda_BillingDownload_dfw2_enhanced,egret_lambda_NWClickCPC_dfw2_enhanced,egret_lambda_NWClickCPM_dfw2_enhanced,egret_lambda_NWClickInvalid_dfw2_enhanced,egret_lambda_NonNWClickCPC_dfw2_enhanced,egret_lambda_NonNWClickCPM_dfw2_enhanced,egret_lambda_NonNWClickInvalid_dfw2_enhanced,fds_dfw2,egret_enricher_BillingCPC_perf_dfw2_defer,egret_enricher_BillingCPC_perf_dfw2_enhanced,egret_enricher_BillingCPM_perf_dfw2_defer,egret_enricher_BillingCPM_perf_dfw2_enhanced,egret_enricher_BillingDownload_perf_dfw2_defer,egret_enricher_BillingDownload_perf_dfw2_enhanced,il-flat_activity_add-ifcorganicactivity,egret_enricher_BillingDownloadCTA_perf_dfw2_defer,egret_enricher_BillingDownloadVTA_perf_dfw2_defer,egret_enricher_BillingDownloadCTA_perf_dfw2_enhanced,egret_enricher_BillingDownloadVTA_perf_dfw2_enhanced,egret_enricher_NWClickCPC_dfw2_enhanced,egret_enricher_NWClickCPM_dfw2_enhanced,egret_enricher_NWClickInvalid_dfw2_enhanced,egret_enricher_NonNWClickCPC_dfw2_enhanced,egret_enricher_NonNWClickCPM_dfw2_enhanced,egret_enricher_NonNWClickInvalid_dfw2_enhanced,egret_enricher_BeaconRRDefault_dfw2_enhanced,egret_enricher_RenderCPC_dfw2_enhanced,egret_enricher_RenderCPM_dfw2_enhanced,appd_attribute,profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_dfw2,appd_attribute_errors,appd-debug,brand_attribute_dfw2_dfw2,ifc_photon_nonenriched_pb_dfw2,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_dfw2_dfw2,network_attribute_raw_dfw2,network_beacon_dfw2_dfw2,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsDfw2,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,egret_enricher_click_dfw2_enhanced,egret_enricher_enhanced_clicks_dfw2,sdk_trc,sdk_response_latencies,sdk_stability_metrics,rta,adroit_san_pinger_stats"

default["flume_collector"]["endcollector_merge_retention_topics"]['dfw2']  = "photon_flume_test"

default["flume_collector"]["endcollector_platinum_retention_topics"]['dfw2']  = "ifc_photon_enriched_pb_dfw2,ifc_photon_nonenriched_pb_dfw2,user_context,ifc_photon_enriched_postback,dsp-beacon,sandboxrr,sandbox_postimpression,ifc_cookie_organic_activity,ifc_photon_enriched_san_pb,beeswax_bid_logs,adroit_attribution_stats,ucm_mapping,adomain_meta,adroit_san_pinger_stats,perfRR,perfex_beacon_ev1,perfex_click_ev1,perfex_render_ev1"

default["flume_collector"]["endcollector_all_channels"]['dfw2']  = "mergespillable hdfsmerge-channel hdfslocal-channel platinumhdfs-channel hdfsmergesecure-channel hdfslocalsecure-channel hdfslocalsecure-channel2 hdfslocalsecure-channel3 hdfslocalsecure-channel4 platinumhdfssecure-channel eventhublocal-channel1 eventhublocal-channel2 eventhublocal-channel3 eventhublocal-channel4 eventhublocal-channel5 eventhublocal-channel6 eventhublocal-channel7 eventhublocal-channel8"

default["flume_collector"]["endcollector_all_sinks"]['dfw2'] = "mergekafkasink hdfsmerge-sink hdfslocal-sink1 hdfslocal-sink2 hdfslocal-sink3 hdfslocal-sink4 platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 hdfsmergesecure-sink hdfslocalsecure-sink1 hdfslocalsecure-sink2 hdfslocalsecure-sink3 hdfslocalsecure-sink4 hdfslocalsecure-sink5 hdfslocalsecure-sink6 hdfslocalsecure-sink7 hdfslocalsecure-sink8 hdfslocalsecure-sink9 hdfslocalsecure-sink10 hdfslocalsecure-sink11 hdfslocalsecure-sink12 hdfslocalsecure-sink13 hdfslocalsecure-sink14 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3 kestrelsink kestrelsink1 kestrelsink2 kestrelsink3 kestrelsink4 kestrelsink5 kestrelsink6 kestrelsink7 kestrelsink8 kestrelsink9 kestrelsink10 kestrelsink11"
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
     "hdfslocalsrc4" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},
     "hdfslocalsrc5" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},
     "hdfslocalsrc6" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},
     "hdfslocalsrc7" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel3",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},
     "hdfslocalsrc8" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel3",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},
     "hdfslocalsrc9" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel3",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},
     "hdfslocalsrc10" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel4",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},
     "hdfslocalsrc11" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel4",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},
     "hdfslocalsrc12" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel4",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},
     "hdfslocalsrc13" => {
         :src_category => "hdfslocal",
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel4",
         :batchSize => 500,
         :'kafka.topics' => "supplyRR"},
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
     "eventhublocalsrc1" => {
         :src_category => "dfw2eventhublocal1",
         :consumer_group => "dfw2eventhublocal1",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel1",
         :batchSize => 500,
         :'kafka.topics' => "merge_dsp_organic_download"},
     "eventhublocalsrc2" => {
         :src_category => "dfw2eventhublocal2",
         :consumer_group => "dfw2eventhublocal2",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel2",
         :batchSize => 500,
         :'kafka.topics' => "merge_dsp_inorganic_download"},
     "eventhublocalsrc3" => {
         :src_category => "dfw2eventhublocal3",
         :consumer_group => "dfw2eventhublocal3",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel3",
         :batchSize => 500,
         :'kafka.topics' => "merge_dsp_organic_purchase"},
     "eventhublocalsrc4" => {
         :src_category => "dfw2eventhublocal4",
         :consumer_group => "dfw2eventhublocal4",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel4",
         :batchSize => 500,
         :'kafka.topics' => "merge_dsp_inorganic_purchase"},
     "eventhublocalsrc5" => {
         :src_category => "dfw2eventhublocal5",
         :consumer_group => "dfw2eventhublocal5",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel5",
         :batchSize => 500,
         :'kafka.topics' => "merge_dsp_organic_custom"},
     "eventhublocalsrc6" => {
         :src_category => "dfw2eventhublocal6",
         :consumer_group => "dfw2eventhublocal6",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel6",
         :batchSize => 500,
         :'kafka.topics' => "merge_dsp_inorganic_custom"},
     "eventhublocalsrc7" => {
         :src_category => "dfw2eventhublocal7",
         :consumer_group => "dfw2eventhublocal7",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel7",
         :batchSize => 500,
         :'kafka.topics' => "merge_cdp_user_segment"},
     "eventhublocalsrc8" => {
         :src_category => "dfw2eventhublocal8",
         :consumer_group => "dfw2eventhublocal8",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "eventhublocal-channel8",
         :batchSize => 500,
         :'kafka.topics' => "merge_optout"},
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
default["flume_collector"]["endcollector_local_eventhub_channels"]['dfw2']  = ["eventhublocal-channel1","eventhublocal-channel2","eventhublocal-channel3","eventhublocal-channel4","eventhublocal-channel5","eventhublocal-channel6","eventhublocal-channel7","eventhublocal-channel8"]

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

default["flume_collector"]["endcollector_local_eventhub_sinks1"]['dfw2']  = {
     "kestrelsink" => {:channel => "eventhublocal-channel1",:cluster =>"garnet"},
}

default["flume_collector"]["endcollector_local_eventhub_sinks2"]['dfw2']  = {
     "kestrelsink1" => {:channel => "eventhublocal-channel2",:cluster =>"garnet"},
}

default["flume_collector"]["endcollector_local_eventhub_sinks3"]['dfw2']  = {
     "kestrelsink2" => {:channel => "eventhublocal-channel3",:cluster =>"garnet"},
}

default["flume_collector"]["endcollector_local_eventhub_sinks4"]['dfw2']  = {
     "kestrelsink3" => {:channel => "eventhublocal-channel4",:cluster =>"garnet"},
}

default["flume_collector"]["endcollector_local_eventhub_sinks5"]['dfw2']  = {
     "kestrelsink4" => {:channel => "eventhublocal-channel5",:cluster =>"garnet"},
}

default["flume_collector"]["endcollector_local_eventhub_sinks9"]['dfw2']  = {
     "kestrelsink8" => {:channel => "eventhublocal-channel5",:cluster =>"garnet"},
}

default["flume_collector"]["endcollector_local_eventhub_sinks10"]['dfw2']  = {
     "kestrelsink9" => {:channel => "eventhublocal-channel5",:cluster =>"garnet"},
}

default["flume_collector"]["endcollector_local_eventhub_sinks11"]['dfw2']  = {
     "kestrelsink10" => {:channel => "eventhublocal-channel6",:cluster =>"garnet"},
}

default["flume_collector"]["endcollector_local_eventhub_sinks6"]['dfw2']  = {
     "kestrelsink5" => {:channel => "eventhublocal-channel6",:cluster =>"garnet"},
}

default["flume_collector"]["endcollector_local_eventhub_sinks7"]['dfw2']  = {
     "kestrelsink6" => {:channel => "eventhublocal-channel7",:cluster =>"garnet"},
}

default["flume_collector"]["endcollector_local_eventhub_sinks12"]['dfw2']  = {
     "kestrelsink11" => {:channel => "eventhublocal-channel7",:cluster =>"garnet"},
}

default["flume_collector"]["endcollector_local_eventhub_sinks8"]['dfw2']  = {
     "kestrelsink7" => {:channel => "eventhublocal-channel8",:cluster =>"garnet"},
}

default["flume_collector"]["endcollector_local_secure_hdfs_sinks"]['dfw2']  = {
     "hdfslocalsecure-sink1" => {:channel => "hdfslocalsecure-channel",:cluster =>"garnet"},
     "hdfslocalsecure-sink2" => {:channel => "hdfslocalsecure-channel",:cluster =>"garnet"},
     "hdfslocalsecure-sink3" => {:channel => "hdfslocalsecure-channel",:cluster =>"garnet"},
     "hdfslocalsecure-sink4" => {:channel => "hdfslocalsecure-channel",:cluster =>"garnet"},
     "hdfslocalsecure-sink5" => {:channel => "hdfslocalsecure-channel2",:cluster =>"garnet"},
     "hdfslocalsecure-sink6" => {:channel => "hdfslocalsecure-channel2",:cluster =>"garnet"},
     "hdfslocalsecure-sink7" => {:channel => "hdfslocalsecure-channel2",:cluster =>"garnet"},
     "hdfslocalsecure-sink8" => {:channel => "hdfslocalsecure-channel2",:cluster =>"garnet"},
     "hdfslocalsecure-sink9" => {:channel => "hdfslocalsecure-channel3",:cluster =>"garnet"},
     "hdfslocalsecure-sink10" => {:channel => "hdfslocalsecure-channel3",:cluster =>"garnet"},
     "hdfslocalsecure-sink11" => {:channel => "hdfslocalsecure-channel3",:cluster =>"garnet"},
     "hdfslocalsecure-sink12" => {:channel => "hdfslocalsecure-channel4",:cluster =>"garnet"},
     "hdfslocalsecure-sink13" => {:channel => "hdfslocalsecure-channel4",:cluster =>"garnet"},
     "hdfslocalsecure-sink14" => {:channel => "hdfslocalsecure-channel4",:cluster =>"garnet"},
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
default["flume_collector"]["endcollector_local_secure_hdfs_channels"]['dfw2']  = ["hdfslocalsecure-channel","hdfslocalsecure-channel2","hdfslocalsecure-channel3","hdfslocalsecure-channel4"]
default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['dfw2']  = ["platinumhdfssecure-channel"]

######################################################### End Of DFW2 ###################################################################



######################################################### AMS1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['ams1']  = "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-ifc_compressed,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,rr,egret_lambda_AdUnitBeacon_ams1_enhanced,egret_lambda_AdUnitPublisherFill_ams1_enhanced,egret_lambda_RenderCPC_ams1_enhanced,egret_lambda_RenderCPM_ams1_enhanced,egret_lambda_BillingCPC_ams1_enhanced,egret_lambda_BeaconRRDefault_ams1_enhanced,egret_lambda_BillingCPM_ams1_enhanced,egret_lambda_BillingDownload_ams1_enhanced,egret_lambda_NWClickCPC_ams1_enhanced,egret_lambda_NWClickCPM_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,egret_lambda_NonNWClickCPC_ams1_enhanced,egret_lambda_NonNWClickCPM_ams1_enhanced,egret_lambda_NonNWClickInvalid_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,dsp-beacon,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_ams1,beacon_csi_events,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,_audit,sdkpubreq,beaconDefaultAms1,ifc_ff_ams1,adroit_conversion_enhanced_ams1,nonNwClickCpcAms1,nonNwClickCpmAms1,nonNwClickInvalidAms1,nwClickCpcAms1,nwClickCpmAms1,nwClickInvalidAms1,renderCpcAms1,renderCpmAms1,egret_lambda_AdUnitBeacon_ams1_defer,egret_lambda_AdUnitBeacon_ams1_enhanced,egret_lambda_AdUnitPublisherFill_ams1_enhanced,egret_lambda_RenderCPC_ams1_enhanced,egret_lambda_RenderCPM_ams1_enhanced,egret_lambda_BillingCPC_ams1_enhanced,egret_lambda_BeaconRRDefault_ams1_enhanced,egret_lambda_BillingCPM_ams1_enhanced,egret_lambda_BillingDownload_ams1_enhanced,egret_lambda_NWClickCPC_ams1_enhanced,egret_lambda_NWClickCPM_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,egret_lambda_NonNWClickCPC_ams1_enhanced,egret_lambda_NonNWClickCPM_ams1_enhanced,egret_lambda_NonNWClickInvalid_ams1_enhanced,fds_ams1,appd_attribute,sdk_trc,sdk_stability_metrics,sdk_response_latencies,rta,adroit_san_pinger_stats"
default["flume_collector"]["endcollector_merge_retention_topics"]['ams1']  = "photon_flume_test"

default["flume_collector"]["endcollector_platinum_retention_topics"]['ams1']  = "ifc_photon_enriched_pb_ams1,ifc_photon_nonenriched_pb_ams1,adroit_san_pinger_stats,perfRR"

default["flume_collector"]["endcollector_all_channels"]['ams1']  = "mergespillable hdfsmerge-channel hdfslocal-channel platinumhdfs-channel hdfslocalsecure-channel hdfslocalsecure-channel2  hdfsmergesecure-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['ams1'] = "mergekafkasink hdfsmerge-sink hdfslocal-sink1 hdfslocal-sink2 hdfslocal-sink3 hdfslocal-sink4 hdfslocal-sink5 hdfslocal-sink6 hdfslocal-sink7 hdfslocal-sink8 hdfslocal-sink9 hdfslocal-sink10 hdfslocal-sink11 hdfslocal-sink12 hdfslocal-sink13 hdfslocal-sink14 hdfslocal-sink15 hdfslocalsecure-sink16 hdfslocalsecure-sink17 hdfslocalsecure-sink18 hdfslocalsecure-sink19 hdfslocalsecure-sink20 platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 hdfsmergesecure-sink hdfslocalsecure-sink1 hdfslocalsecure-sink2 hdfslocalsecure-sink3 hdfslocalsecure-sink4 hdfslocalsecure-sink5 hdfslocalsecure-sink6 hdfslocalsecure-sink7 hdfslocalsecure-sink8 hdfslocalsecure-sink9 hdfslocalsecure-sink10 hdfslocalsecure-sink11 hdfslocalsecure-sink12 hdfslocalsecure-sink13 hdfslocalsecure-sink14 hdfslocalsecure-sink15 hdfslocalsecure-sink16 hdfslocalsecure-sink17 hdfslocalsecure-sink18 hdfslocalsecure-sink19 hdfslocalsecure-sink20 hdfslocalsecure-sink16 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['ams1']  = {
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
     "hdfslocalsrc2" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
     "hdfslocalsrc3" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
     "hdfslocalsrc4" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
     "hdfslocalsrc5" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,sdk_health_monitoring,sdk_crash_analytics,sdk_trc"},
     "hdfslocalsrc6" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
     :'kafka.topics' => "supplyRR"},
     "hdfslocalsrc7" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
     :'kafka.topics' => "supplyRR"},
     "hdfslocalsrc8" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
     :'kafka.topics' => "supplyRR"},
     "hdfslocalsrc9" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
     :'kafka.topics' => "supplyRR"},
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
     "hdfslocalsecure-sink15" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink16" => {:channel => "hdfslocalsecure-channel2",:cluster =>"azurite"},
     "hdfslocalsecure-sink17" => {:channel => "hdfslocalsecure-channel2",:cluster =>"azurite"},
     "hdfslocalsecure-sink18" => {:channel => "hdfslocalsecure-channel2",:cluster =>"azurite"},
     "hdfslocalsecure-sink19" => {:channel => "hdfslocalsecure-channel2",:cluster =>"azurite"},
     "hdfslocalsecure-sink20" => {:channel => "hdfslocalsecure-channel2",:cluster =>"azurite"}
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
default["flume_collector"]["endcollector_local_secure_hdfs_channels"]['ams1']  = ["hdfslocalsecure-channel","hdfslocalsecure-channel2"]
default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['ams1']  = ["platinumhdfssecure-channel"]

######################################################### End Of AMS1 ###################################################################

######################################################### MAA1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['maa1']  = "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-ifc_compressed,nested_activity_add-network,adroit_report_obj_maa1,appd_attribute_errors,appd-debug,brand_attribute_maa1_maa1,ifc_photon_nonenriched_pb_maa1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_maa1_maa1,network_attribute_raw_maa1,network_beacon_maa1_maa1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,rr,egret_lambda_AdUnitBeacon_maa1_enhanced,egret_lambda_AdUnitPublisherFill_maa1_enhanced,egret_lambda_RenderCPC_maa1_enhanced,egret_lambda_RenderCPM_maa1_enhanced,egret_lambda_BillingCPC_maa1_enhanced,egret_lambda_BeaconRRDefault_maa1_enhanced,egret_lambda_BillingCPM_maa1_enhanced,egret_lambda_BillingDownload_maa1_enhanced,egret_lambda_NWClickCPC_maa1_enhanced,egret_lambda_NWClickCPM_maa1_enhanced,egret_lambda_NWClickInvalid_maa1_enhanced,egret_lambda_NonNWClickCPC_maa1_enhanced,egret_lambda_NonNWClickCPM_maa1_enhanced,egret_lambda_NonNWClickInvalid_maa1_enhanced,egret_lambda_NWClickInvalid_maa1_enhanced,dsp-beacon,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_maa1,beacon_csi_events,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,_audit,sdkpubreq,beaconDefaultAms1,ifc_ff_maa1,adroit_conversion_enhanced_maa1,nonNwClickCpcAms1,nonNwClickCpmAms1,nonNwClickInvalidAms1,nwClickCpcAms1,nwClickCpmAms1,nwClickInvalidAms1,renderCpcAms1,renderCpmAms1,egret_lambda_AdUnitBeacon_maa1_defer,egret_lambda_AdUnitBeacon_maa1_enhanced,egret_lambda_AdUnitPublisherFill_maa1_enhanced,egret_lambda_RenderCPC_maa1_enhanced,egret_lambda_RenderCPM_maa1_enhanced,egret_lambda_BillingCPC_maa1_enhanced,egret_lambda_BeaconRRDefault_maa1_enhanced,egret_lambda_BillingCPM_maa1_enhanced,egret_lambda_BillingDownload_maa1_enhanced,egret_lambda_NWClickCPC_maa1_enhanced,egret_lambda_NWClickCPM_maa1_enhanced,egret_lambda_NWClickInvalid_maa1_enhanced,egret_lambda_NonNWClickCPC_maa1_enhanced,egret_lambda_NonNWClickCPM_maa1_enhanced,egret_lambda_NonNWClickInvalid_maa1_enhanced,fds_maa1,appd_attribute,sdk_trc,sdk_stability_metrics,sdk_response_latencies,rta,adroit_san_pinger_stats"
default["flume_collector"]["endcollector_merge_retention_topics"]['maa1']  = "photon_flume_test"

default["flume_collector"]["endcollector_platinum_retention_topics"]['maa1']  = "ifc_photon_enriched_pb_maa1,ifc_photon_nonenriched_pb_maa1,adroit_san_pinger_stats,perfRR"

default["flume_collector"]["endcollector_all_channels"]['maa1']  = "mergespillable hdfsmerge-channel hdfslocal-channel platinumhdfs-channel hdfslocalsecure-channel  hdfsmergesecure-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['maa1'] = "mergekafkasink hdfsmerge-sink hdfslocal-sink1 hdfslocal-sink2 hdfslocal-sink3 hdfslocal-sink4 hdfslocal-sink5 hdfslocal-sink6 hdfslocal-sink7 hdfslocal-sink8 hdfslocal-sink9 hdfslocal-sink10 hdfslocal-sink11 hdfslocal-sink12 hdfslocal-sink13 hdfslocal-sink14 hdfslocal-sink15 platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 hdfsmergesecure-sink hdfslocalsecure-sink1 hdfslocalsecure-sink2 hdfslocalsecure-sink3 hdfslocalsecure-sink4 hdfslocalsecure-sink5 hdfslocalsecure-sink6 hdfslocalsecure-sink7 hdfslocalsecure-sink8 hdfslocalsecure-sink9 hdfslocalsecure-sink10 hdfslocalsecure-sink11 hdfslocalsecure-sink12 hdfslocalsecure-sink13 hdfslocalsecure-sink14 hdfslocalsecure-sink15 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['maa1']  = {
     "hdfslocalsrc" => {
         :src_category => "hdfslocal",
         :consumer_group => "maa1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_maa1,appd_attribute_errors,appd-debug,brand_attribute_maa1_maa1,ifc_photon_nonenriched_pb_maa1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_maa1_maa1,network_attribute_raw_maa1,network_beacon_maa1_maa1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc,adroit_conversion_enhanced_maa1"},
     "hdfslocalsrc2" => {
         :src_category => "hdfslocal",
         :consumer_group => "maa1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_maa1,appd_attribute_errors,appd-debug,brand_attribute_maa1_maa1,ifc_photon_nonenriched_pb_maa1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_maa1_maa1,network_attribute_raw_maa1,network_beacon_maa1_maa1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc,adroit_conversion_enhanced_maa1"},
     "hdfslocalsrc3" => {
         :src_category => "hdfslocal",
         :consumer_group => "maa1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_maa1,appd_attribute_errors,appd-debug,brand_attribute_maa1_maa1,ifc_photon_nonenriched_pb_maa1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_maa1_maa1,network_attribute_raw_maa1,network_beacon_maa1_maa1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc,adroit_conversion_enhanced_maa1"},
     "hdfslocalsrc4" => {
         :src_category => "hdfslocal",
         :consumer_group => "maa1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_maa1,appd_attribute_errors,appd-debug,brand_attribute_maa1_maa1,ifc_photon_nonenriched_pb_maa1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_maa1_maa1,network_attribute_raw_maa1,network_beacon_maa1_maa1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc,adroit_conversion_enhanced_maa1"},
     "hdfslocalsrc5" => {
         :src_category => "hdfslocal",
         :consumer_group => "maa1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_maa1,appd_attribute_errors,appd-debug,brand_attribute_maa1_maa1,ifc_photon_nonenriched_pb_maa1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_maa1_maa1,network_attribute_raw_maa1,network_beacon_maa1_maa1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,perfRR,napp,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc,adroit_conversion_enhanced_maa1"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "maa1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmergesecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "merge_photon_flume_test"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-maa1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "photon_flume_test"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-maa1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "photon_flume_test"},
     "dfw2kafkamergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-maa1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
     	 :'kafka.topics' => "photon_flume_test"},
     "maa1kafkamergesrc" => {
         :src_category => "maa1kafkamerge",
         :consumer_group => "maa1-to-maa1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "photon_flume_test"},
     "ams1kafkamergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-maa1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "photon_flume_test"}
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['maa1']  = ["mergespillable"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['maa1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['maa1']  = ["hdfslocal-channel"]
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['maa1']  = ["platinumhdfs-channel"]

#Configure the sinks for the Flume Collector

default["flume_collector"]["endcollector_merged_kafka_sinks"]['maa1']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['maa1']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink2" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink3" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink4" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink5" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink6" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink7" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink8" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink9" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink10" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink11" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink12" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink13" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink14" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
     "hdfslocal-sink15" => {:channel => "hdfslocal-channel",:cluster =>"beryl"},
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['maa1']  = {
    "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"beryl"}
}
default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['maa1']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_local_secure_hdfs_sinks"]['maa1']  = {
     "hdfslocalsecure-sink1" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink2" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink3" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink4" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink5" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink6" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink7" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink8" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink9" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink10" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink11" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink12" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink13" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink14" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"},
     "hdfslocalsecure-sink15" => {:channel => "hdfslocalsecure-channel",:cluster =>"beryl"}
}

default["flume_collector"]["endcollector_merged_secure_hdfs_sinks"]['maa1']  = {
     "hdfsmergesecure-sink" => {:channel => "hdfsmergesecure-channel",:cluster =>"beryl"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_sinks"]['maa1']  = {
     "platinumhdfssecure-sink1" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink2" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink3" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_merge_secure_hdfs_channels"]['maa1']  = ["hdfsmergesecure-channel"]
default["flume_collector"]["endcollector_local_secure_hdfs_channels"]['maa1']  = ["hdfslocalsecure-channel"]
default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['maa1']  = ["platinumhdfssecure-channel"]

######################################################### End Of MAA1 ###################################################################





######################################################### PEK1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['pek1']  = "rr,egret_lambda_AdUnitBeacon_pek1_defer,egret_lambda_AdUnitBeacon_pek1_enhanced,egret_lambda_AdUnitPublisherFill_pek1_enhanced,egret_lambda_RenderCPC_pek1_enhanced,egret_lambda_RenderCPM_pek1_enhanced,egret_lambda_BillingCPC_pek1_enhanced,egret_lambda_BeaconRRDefault_pek1_enhanced,egret_lambda_BillingCPM_pek1_enhanced,egret_lambda_BillingDownload_pek1_enhanced,egret_lambda_NWClickCPC_pek1_enhanced,egret_lambda_NWClickCPM_pek1_enhanced,egret_lambda_NWClickInvalid_pek1_enhanced,egret_lambda_NonNWClickCPC_pek1_enhanced,egret_lambda_NonNWClickCPM_pek1_enhanced,egret_lambda_NonNWClickInvalid_pek1_enhanced,egret_lambda_NWClickInvalid_pek1_enhanced,dsp-beacon,beacon_rr_hkg1_cpm_render,wclick_pek1,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,imei_attribute_change-appd,imei_attribute_change-brand,imei_attribute_change-core,imei_attribute_change-ifc,imei_flat_activity_add-appdcustomactivity,imei_flat_activity_add-appddownloadactivity,imei_flat_activity_add-appdpurchaseactivity,imei_flat_activity_add-appds2scustomsegmentactivity,imei_flat_activity_add-coredownloadactivity,imei_flat_activity_add-ifcorganicactivity,imei_nested_activity_add-appd,imei_nested_activity_add-cas,imei_nested_activity_add-ifc,imei_nested_activity_add-network,imei_custom_type_record_update-core,imei_custom_type_record_update-ifc,imei_custom_type_record_update-ifcinorg,imei_custom_type_record_update-appdlookaliketype,imei_custom_type_record_update-appduserrenderhistory,imei_custom_type_record_update-appduserclickhistory,imei_custom_type_record_update-branduseractivityhistory,imei_profile_delete-core,imei_profile_delete-ifc,imei_profile_delete-appd,imei_profile_delete-brand,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,sdkpubreq,nwClickCpcPek1,nwClickCpmPek1,nwClickInvalidPek1,renderCpcPek1,renderCpmPek1,beaconDefaultPek1,ifcp_pek1,nested_activity_add-ifc_compressed,adroit_conversion_enhanced_pek1,nonNwClickCpcPek1,nonNwClickCpmPek1,nonNwClickInvalidPek1,_audit,fds_pek1,il-flat_activity_add-ifcorganicactivity,appd_attribute,profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_pek1,appd_attribute_errors,appd-debug,brand_attribute_pek1_pek1,ifc_photon_nonenriched_pb_pek1,nested_activity_add-ifcuseractivity,network_attribute_raw_pek1,ttd-beacon,ttd-request,usermeta_change,wadogorr,network_beacon_pek1_pek1,network_activity_pek1_pek1,nested_activity_add-ifc,fdsPek1,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc,sdk_response_latencies,sdk_stability_metricsi,rta,adroit_san_pinger_stats,imei_usermeta_change"

default["flume_collector"]["endcollector_merge_retention_topics"]['pek1']  = "photon_flume_test"

default["flume_collector"]["endcollector_platinum_retention_topics"]['pek1']  = "testmerge,user_context,ifc_photon_enriched_postback,dsp-beacon,sandboxrr,sandbox_postimpression,wclick_pek1,ifc_photon_enriched_san_pb,adroit_attribution_stats,ifc_cookie_organic_activity,iapclick,adomain_meta,adroit_san_pinger_stats,perfRR,perfex_beacon_ev1,perfex_click_ev1,perfex_render_ev1"

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
         :'kafka.topics' => "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-network,adroit_report_obj_pek1,appd_attribute_errors,appd-debug,brand_attribute_pek1_pek1,ifc_photon_nonenriched_pb_pek1,nested_activity_add-ifcuseractivity,network_attribute_raw_pek1,ttd-beacon,ttd-request,usermeta_change,wadogorr,network_beacon_pek1_pek1,network_activity_pek1_pek1,nested_activity_add-ifc,fdsPek1,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_trc,imei_usermeta_change"},
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
