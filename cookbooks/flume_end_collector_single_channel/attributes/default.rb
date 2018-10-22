# coding: UTF-8 
# Cookbook Name:: flume collector
# Attributes:: default
default["flume_collector"]["version"] = "1.6.0.53"
default["flume_collector"]["download_url"] = "http://plgw4001.grid.dfw1.inmobi.com/tar/apache-flume-1.6.0.53-bin.tar.gz"
default["flume_collector"]["base_dir"]  = "/opt/inmobi"
default["flume_collector"]["spool_dir"]  = "/data/d1/flume/spool"
default["flume_collector"]["pid_dir"]  = "/var/run/flume"
default["flume_collector"]["keytab"]  = "/etc/security/keytabs/flume.service.keytab"

# Kafka Brokers in each colo
default["flume_collector"]["kafka_brokers"]['dfw1']  = "oxkf4001.grid.dfw1.inmobi.com:9093,oxkf4002.grid.dfw1.inmobi.com:9093,oxkf4003.grid.dfw1.inmobi.com:9093,oxkf4008.grid.dfw1.inmobi.com:9093,oxkf4009.grid.dfw1.inmobi.com:9093,oxkf4010.grid.dfw1.inmobi.com:9093,oxkf4011.grid.dfw1.inmobi.com:9093,oxkf4012.grid.dfw1.inmobi.com:9093,oxkf4013.grid.dfw1.inmobi.com:9093,oxkf4014.grid.dfw1.inmobi.com:9093,oxkf4015.grid.dfw1.inmobi.com:9093,oxkf4016.grid.dfw1.inmobi.com:9093,oxkf4017.grid.dfw1.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['lhr1']  = "erkf4001.grid.lhr1.inmobi.com:9093,erkf4002.grid.lhr1.inmobi.com:9093,erkf4003.grid.lhr1.inmobi.com:9093,erkf4004.grid.lhr1.inmobi.com:9093,erkf4005.grid.lhr1.inmobi.com:9093,erkf4006.grid.lhr1.inmobi.com:9093,erkf4007.grid.lhr1.inmobi.com:9093,erkf4008.grid.lhr1.inmobi.com:9093,erkf4009.grid.lhr1.inmobi.com:9093,erkf4010.grid.lhr1.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['pek1']  = "pykf4001.grid.pek1.inmobi.com:9093,pykf4002.grid.pek1.inmobi.com:9093,pykf4003.grid.pek1.inmobi.com:9093,pykf4004.grid.pek1.inmobi.com:9093,pykf4005.grid.pek1.inmobi.com:9093,pykf4006.grid.pek1.inmobi.com:9093,pykf4007.grid.pek1.inmobi.com:9093,pykf4008.grid.pek1.inmobi.com:9093,pykf4009.grid.pek1.inmobi.com:9093,pykf4010.grid.pek1.inmobi.com:9093"
default["flume_collector"]["kafka_brokers"]['dfw2']  = "gakf4001.grid.dfw2.inmobi.com:9093,gakf4002.grid.dfw2.inmobi.com:9093,gakf4003.grid.dfw2.inmobi.com:9093,gakf4004.grid.dfw2.inmobi.com:9093,gakf4005.grid.dfw2.inmobi.com:9093,gakf4006.grid.dfw2.inmobi.com:9093,gakf4007.grid.dfw2.inmobi.com:9093,gakf4008.grid.dfw2.inmobi.com:9093,gakf4009.grid.dfw2.inmobi.com:9093,gakf4010.grid.dfw2.inmobi.com:9093"
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
default["flume_collector"]["sinkworkerthreads"]['dfw2']  = "88"
default["flume_collector"]["sinkworkerthreads"]['ams1']  = "104"

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
default["flume_collector"]["endcollector_local_retention_topics"]['dfw1']  = "rr,egret_lambda_AdUnitBeacon_dfw1_defer,egret_lambda_AdUnitBeacon_dfw1_enhanced,egret_lambda_AdUnitPublisherFill_dfw1_enhanced,egret_lambda_BeaconRRDefault_dfw1_enhanced,egret_lambda_BillingCPC_dfw1_enhanced,egret_lambda_BillingCPM_dfw1_enhanced,egret_lambda_BillingDownload_dfw1_enhanced,egret_lambda_NonNWClickCPC_dfw1_enhanced,egret_lambda_NonNWClickCPM_dfw1_enhanced,egret_lambda_NonNWClickInvalid_dfw1_enhanced,egret_lambda_NWClickCPC_dfw1_enhanced,egret_lambda_NWClickCPM_dfw1_enhanced,egret_lambda_NWClickInvalid_dfw1_enhanced,egret_lambda_RenderCPC_dfw1_enhanced,egret_lambda_RenderCPM_enhanced,billing_cpc_dfw1,billing_cpm_dfw1,billing_download_dfw1,billing_cpc_lhr1,billing_cpm_lhr1,billing_download_lhr1,billing_cpc_pek1,billing_cpm_pek1,billing_download_pek1,conversion_beacon_rtbs,tpce_rtfb_conversions,iat_goal_uh1,iat_click_uh1,iat_report_event,beeswax_download_event,adroit_downloads,beeswax_post_install_event,adroit_report_obj_uh1,dsp-beacon,normalized_postback,ifc_inmobi_api_user_segments,wclick_dfw1,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_dfw1,iapattribution,iapbilling,beaconDefaultDfw1,adroit_conversion_enhanced_dfw1,nonNwClickCpcDfw1,nonNwClickCpmDfw1,nonNwClickInvalidDfw1,nwClickCpcDfw1,nwClickCpmDfw1,nwClickInvalidDfw1,renderCpcDfw1,renderCpmDfw1,sdkpubreq,carb_user_relevance,splash,cas_ads,rtbd_ads,cas_rr,sdk_metrics,rtbs_click,rtbs_beacon,nnstudio,dcp_click,dcp_beacon_publisherfill,dcp_beacon_adunit_interaction,dcp_beacon_adunit,dcp_beacon,bluekai,beacon_rr_uj1_cpm_render,beacon_rr_hkg1_cpm_render,beacon_csi_events,_audit,billing_download_uh1,nested_activity_add-ifc_compressed,fds_dfw1,perfex_click_ev1,perfex_beacon_ev1,il-flat_activity_add-ifcorganicactivity,appd_attribute,profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-ifc_compressed,nested_activity_add-network,adroit_report_obj_dfw1,appd_attribute_errors,appd-debug,brand_attribute_dfw1_dfw1,ifc_photon_nonenriched_pb_dfw1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_dfw1_dfw1,network_attribute_raw_dfw1,network_beacon_dfw1_dfw1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsDfw1,georrcore,georrmetrics,napp,perfRR,supplyRR,brand_attributes,network_attribute_dfw1_dfw1,sdk_health_monitoring,sdk_crash_analytics,sdk_response_latencies,sdk_stability_metrics,rta,adroit_san_pinger_stats"
default["flume_collector"]["endcollector_merge_retention_topics"]['dfw1']  = "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default,network_beacon_adunit_interaction_dfw1,beacon_rr_dfw1_cpc_render,ifc_ff_dfw1,non_network_click_cpc_dfw1,non_network_click_cpm_dfw1,network_click_cpc_dfw1,network_click_cpm_dfw1,network_click_invalid_dfw1,click_rr_dfw1,adroit_report_obj_dfw1,billing_cpc_dfw1,billing_cpm_dfw1,billing_download_dfw1,iat_click,tpce_custom_goal,tpce_custom_goal_summary,tpce_download,tpce_enriched_download,tpce_ltv,tpce_ltv_summary,tpce_purchase,tpce_purchase_summary,tpce_user_segment_summary,billing_cpc_uh1,billing_cpm_uh1,billing_download_uh1,appd_s2spinger_stats"

default["flume_collector"]["endcollector_platinum_retention_topics"]['dfw1']  = "ifc_photon_enriched_pb_dfw1,ifc_photon_nonenriched_pb_dfw1,user_context,ifc_photon_enriched_postback,dsp-beacon,sandboxrr,sandbox_postimpression,ucm_mapping,ifc_photon_enriched_san_pb,beeswax_bid_logs,dsp_segments,genesis_postback,optout,ifc_attributes,ifc_cookie_organic_activity,wclick_dfw1,normalized_postback,beeswax_download_event,beeswax_post_install_event,ifc_inmobi_api_user_segments,adroit_attribution_stats,iapclick,iapattribution,iapbilling,adomain_meta,tpce_custom_goal_summary,tpce_enriched_download,tpce_purchase_summary,adroit_san_pinger_stats,perfRR,perfex_beacon_ev1,perfex_click_ev1,perfex_render_ev1"

default["flume_collector"]["endcollector_all_channels"]['dfw1']  = "spillable mergespillable hdfsmerge-channel hdfslocal-channel platinumhdfs-channel photon-mergespillable-channel dfw1-to-ams1-kafkamerge-channel hdfslocalsecure-channel hdfsmergesecure-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['dfw1'] = "kafkasink1 kafkasink2 mergekafkasink hdfsmerge-sink hdfslocal-sink1 hdfslocal-sink2 hdfslocal-sink3 platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 platinumhdfs-sink4 platinumhdfs-sink5 photon-mergekafkasink dfw1-to-ams1-kafkamerge-sink1 dfw1-to-ams1-kafkamerge-sink2 dfw1-to-ams1-kafkamerge-sink3 dfw1-to-ams1-kafkamerge-sink4 dfw1-to-ams1-kafkamerge-sink5 hdfsmergesecure-sink hdfslocalsecure-sink1 hdfslocalsecure-sink2 hdfslocalsecure-sink3 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3 platinumhdfssecure-sink4 platinumhdfssecure-sink5"
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
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "rr,egret_lambda_AdUnitBeacon_dfw1_defer,egret_lambda_AdUnitBeacon_dfw1_enhanced,egret_lambda_AdUnitPublisherFill_dfw1_enhanced,egret_lambda_BeaconRRDefault_dfw1_enhanced,egret_lambda_BillingCPC_dfw1_enhanced,egret_lambda_BillingCPM_dfw1_enhanced,egret_lambda_BillingDownload_dfw1_enhanced,egret_lambda_NonNWClickCPC_dfw1_enhanced,egret_lambda_NonNWClickCPM_dfw1_enhanced,egret_lambda_NonNWClickInvalid_dfw1_enhanced,egret_lambda_NWClickCPC_dfw1_enhanced,egret_lambda_NWClickCPM_dfw1_enhanced,egret_lambda_NWClickInvalid_dfw1_enhanced,egret_lambda_RenderCPC_dfw1_enhanced,egret_lambda_RenderCPM_enhanced,iat_click_dfw1,iat_goal_dfw1,iat_report_event,optout,conversion_beacon_rtbs,tpce_rtfb_conversions,iat_goal_uh1,iat_click_uh1,beeswax_download_event,adroit_downloads,beeswax_post_install_event,adroit_report_obj_uh1,dsp-beacon,billing_cpc_dfw1,billing_cpm_dfw1,billing_download_dfw1,billing_cpc_lhr1,billing_cpm_lhr1,billing_download_lhr1,billing_cpc_pek1,billing_cpm_pek1,billing_download_pek1,normalized_postback,ifc_inmobi_api_user_segments,wclick_dfw1,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_dfw1,iapattribution,iapbilling,beaconDefaultDfw1,adroit_conversion_enhanced_dfw1,nonNwClickCpcDfw1,nonNwClickCpmDfw1,nonNwClickInvalidDfw1,nwClickCpcDfw1,nwClickCpmDfw1,nwClickInvalidDfw1,renderCpcDfw1,renderCpmDfw1,sdkpubreq,carb_user_relevance,splash,cas_ads,rtbd_ads,cas_rr,sdk_metrics,rtbs_click,rtbs_beacon,nnstudio,dcp_click,dcp_beacon_publisherfill,dcp_beacon_adunit_interaction,dcp_beacon_adunit,dcp_beacon,bluekai,beacon_rr_uj1_cpm_render,beacon_rr_hkg1_cpm_render,beacon_csi_events,_audit,billing_download_uh1,nested_activity_add-ifc_compressed,fds_dfw1,perfex_click_ev1,perfex_beacon_ev1,appd_attribute,sdk_response_latencies,sdk_stability_metrics,rta,adroit_san_pinger_stats"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "dfw1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmergesecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_dfw1_cpm_render,merge_network_beacon_dfw1_adunit,merge_network_beacon_dfw1_publisherfill,merge_beacon_rr_dfw1_default,merge_network_beacon_adunit_interaction_dfw1,merge_beacon_rr_dfw1_cpc_render,merge_ifc_ff_dfw1,merge_non_network_click_cpc_dfw1,merge_non_network_click_cpm_dfw1,merge_network_click_cpc_dfw1,merge_network_click_cpm_dfw1,merge_network_click_invalid_dfw1,merge_click_rr_dfw1,merge_adroit_report_obj_dfw1,merge_billing_cpc_dfw1,merge_billing_cpm_dfw1,merge_billing_download_dfw1,merge_iat_click,merge_tpce_custom_goal,merge_tpce_custom_goal_summary,merge_tpce_download,merge_tpce_enriched_download,merge_tpce_ltv,merge_tpce_ltv_summary,merge_tpce_purchase,merge_tpce_purchase_summary,merge_tpce_user_segment_summary,merge_billing_cpc_uh1,merge_billing_cpm_uh1,merge_billing_download_uh1,merge_appd_s2spinger_stats"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default,network_beacon_adunit_interaction_dfw1,beacon_rr_dfw1_cpc_render,ifc_ff_dfw1,non_network_click_cpc_dfw1,non_network_click_cpm_dfw1,network_click_cpc_dfw1,network_click_cpm_dfw1,network_click_invalid_dfw1,click_rr_dfw1,billing_cpc_dfw1,billing_cpm_dfw1,billing_download_dfw1,beeswax_user_segment,iat_click,tpce_custom_goal,tpce_custom_goal_summary,tpce_download,tpce_enriched_download,tpce_ltv,tpce_ltv_summary,tpce_purchase,tpce_purchase_summary,tpce_user_segment_summary,cookie_mapping,billing_cpc_uh1,billing_cpm_uh1,billing_download_uh1,appd_s2spinger_stats,adroit_report_obj_dfw1,iapclick,bidder_metrics,beeswax_post_install_event,users_right_to_be_forgotten_dfw1,app_meta"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default,network_beacon_adunit_interaction_dfw1,beacon_rr_dfw1_cpc_render,ifc_ff_dfw1,non_network_click_cpc_dfw1,non_network_click_cpm_dfw1,network_click_cpc_dfw1,network_click_cpm_dfw1,network_click_invalid_dfw1,click_rr_dfw1,beeswax_user_segment,iat_click,iat_click_pek1,iat_goal_pek1,tpce_custom_goal,tpce_custom_goal_summary,tpce_download,tpce_enriched_download,tpce_ltv,tpce_ltv_summary,tpce_purchase,tpce_purchase_summary,tpce_user_segment_summary,cookie_mapping,photon_visit_summary,appd_s2spinger_stats,iapclick,bidder_metrics,photon_userid_type,beeswax_post_install_event,tpce_organic_download_dsp,tpce_organic_purchase_dsp,tpce_organic_custom_dsp,app_meta,cdp_segment_create"},
     "dfw2kafkamergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default,network_beacon_adunit_interaction_dfw1,beacon_rr_dfw1_cpc_render,ifc_ff_dfw1,non_network_click_cpc_dfw1,non_network_click_cpm_dfw1,network_click_cpc_dfw1,network_click_cpm_dfw1,network_click_invalid_dfw1,click_rr_dfw1,beeswax_user_segment,iat_click,cookie_mapping,photon_visit_summary,appd_s2spinger_stats,tpce_download,tpce_enriched_download,tpce_purchase,tpce_purchase_summary,tpce_custom_goal,tpce_custom_goal_summary,tpce_user_segment_summary,tpce_ltv_summary,bidder_metrics,photon_userid_type,billable_render_dfw2,tpce_organic_download_dsp,tpce_organic_purchase_dsp,tpce_organic_custom_dsp,app_meta,cdp_segment_create"},
     "ams1kafkamergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "network_beacon_dfw1_publisherfill,beacon_rr_dfw1_default,network_beacon_adunit_interaction_dfw1,ifc_ff_dfw1,non_network_click_cpc_dfw1,non_network_click_cpm_dfw1,network_click_cpc_dfw1,network_click_cpm_dfw1,network_click_invalid_dfw1,click_rr_dfw1,beeswax_user_segment,iat_click,cookie_mapping,photon_visit_summary,appd_s2spinger_stats,photon_userid_type,beeswax_post_install_event,tpce_download,app_meta"},
     "dfw1-to-ams1-kafkamergesrc" => {
         :src_category => "dfw1ams1kafkamerge",
         :consumer_group => "dfw1-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw1-to-ams1-kafkamerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "photon_appd_flat_activity_ams1,billing_cpm_ams1,network_activity_ams1"},
     "ams1photonmergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
          :'kafka.topics' => "appd_attribute_dfw1,appd_custom_type_dfw1,appd_flat_activity_dfw1,audience-attributes_dfw1,brand_attributes_dfw1,cas_nested_activity_dfw1,ifc_activity_dfw1,ifc_attributes_dfw1,ifc_organic_activity_dfw1,network_beacon_dfw1,network_billing_dfw1,network_click_dfw1,network_conversion_dfw1,network_render_cpc_dfw1,network_attribute_dfw1,profile_delete_dfw1,network_render_cpm_dfw1,photon_appd_flat_activity_dfw1,photon_optout_dfw1,pso-attributes_dfw1"},
     "dfw2photonmergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
          :'kafka.topics' => "appd_attribute_dfw1,appd_custom_type_dfw1,appd_flat_activity_dfw1,audience-attributes_dfw1,brand_attributes_dfw1,cas_nested_activity_dfw1,ifc_activity_dfw1,ifc_attributes_dfw1,ifc_organic_activity_dfw1,network_activity_dfw1,network_beacon_dfw1,network_billing_dfw1,network_click_dfw1,network_conversion_dfw1,network_render_cpc_dfw1,network_attribute_dfw1,profile_delete_dfw1,network_render_cpm_dfw1,photon_appd_flat_activity_dfw1,photon_optout_dfw1,pso-attributes_dfw1"},
     "pek1photonmergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-dfw1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
         :'kafka.topics' => "appd_attribute_dfw1,appd_custom_type_dfw1,appd_flat_activity_dfw1,audience-attributes_dfw1,brand_attributes_dfw1,cas_nested_activity_dfw1,ifc_activity_dfw1,ifc_attributes_dfw1,ifc_organic_activity_dfw1,network_activity_dfw1,network_beacon_dfw1,network_billing_dfw1,network_click_dfw1,network_conversion_dfw1,network_render_cpc_dfw1,network_attribute_dfw1,profile_delete_dfw1,network_render_cpm_dfw1,photon_appd_flat_activity_dfw1,photon_optout_dfw1,pso-attributes_dfw1"},
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['dfw1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['dfw1']  = ["mergespillable","photon-mergespillable-channel","dfw1-to-ams1-kafkamerge-channel"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['dfw1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['dfw1']  = ["hdfslocal-channel"]
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['dfw1']  = ["platinumhdfs-channel"]

#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['dfw1']  = {
     "kafkasink1" => {:channel => "spillable"},
     "kafkasink2" => {:channel => "spillable"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['dfw1']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
     "photon-mergekafkasink" => {:channel => "photon-mergespillable-channel",:producer_id =>"flume-photonmerge-kafka-sink"},
}

default["flume_collector"]["endcollector_dfw1toams1_merged_kafka_sinks"]['dfw1']  = {
     "dfw1-to-ams1-kafkamerge-sink1" => {:channel => "dfw1-to-ams1-kafkamerge-channel",:producer_id =>"flume-dfw1toams1merge-kafka-sink"},
     "dfw1-to-ams1-kafkamerge-sink2" => {:channel => "dfw1-to-ams1-kafkamerge-channel",:producer_id =>"flume-dfw1toams1merge-kafka-sink"},
     "dfw1-to-ams1-kafkamerge-sink3" => {:channel => "dfw1-to-ams1-kafkamerge-channel",:producer_id =>"flume-dfw1toams1merge-kafka-sink"},
     "dfw1-to-ams1-kafkamerge-sink4" => {:channel => "dfw1-to-ams1-kafkamerge-channel",:producer_id =>"flume-dfw1toams1merge-kafka-sink"},
     "dfw1-to-ams1-kafkamerge-sink5" => {:channel => "dfw1-to-ams1-kafkamerge-channel",:producer_id =>"flume-dfw1toams1merge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['dfw1']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel",:cluster =>"onyx"},
     "hdfslocal-sink2" => {:channel => "hdfslocal-channel",:cluster =>"onyx"},
     "hdfslocal-sink3" => {:channel => "hdfslocal-channel",:cluster =>"onyx"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['dfw1']  = {
     "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"onyx"}
}

default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['dfw1']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink4" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfs-sink5" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"true"}
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
     "platinumhdfssecure-sink1" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfssecure-sink2" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfssecure-sink3" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfssecure-sink4" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"true"},
     "platinumhdfssecure-sink5" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"true"}
}

default["flume_collector"]["endcollector_merge_secure_hdfs_channels"]['dfw1']  = ["hdfsmergesecure-channel"]
default["flume_collector"]["endcollector_local_secure_hdfs_channels"]['dfw1']  = ["hdfslocalsecure-channel"]
default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['dfw1']  = ["platinumhdfssecure-channel"]

######################################################### End Of DFW1 ###################################################################



######################################################### DFW2 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['dfw2']  = "rr,egret_lambda_AdUnitBeacon_dfw2_enhanced,egret_lambda_AdUnitPublisherFill_dfw2_enhanced,egret_lambda_RenderCPC_dfw2_enhanced,egret_lambda_RenderCPM_dfw2_enhanced,egret_lambda_BillingCPC_dfw2_enhanced,egret_lambda_BeaconRRDefault_dfw2_enhanced,egret_lambda_BillingCPM_dfw2_enhanced,egret_lambda_BillingDownload_dfw2_enhanced,egret_lambda_NWClickCPC_dfw2_enhanced,egret_lambda_NWClickCPM_dfw2_enhanced,egret_lambda_NWClickInvalid_dfw2_enhanced,egret_lambda_NonNWClickCPC_dfw2_enhanced,egret_lambda_NonNWClickCPM_dfw2_enhanced,egret_lambda_NonNWClickInvalid_dfw2_enhanced,egret_lambda_NWClickInvalid_dfw2_enhanced,dsp-beacon,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_dfw2,beacon_csi_events,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,_audit,sdkpubreq,beaconDefaultDfw2,nested_activity_add-ifc_compressed,ifc_ff_dfw2,adroit_conversion_enhanced_dfw2,nonNwClickCpcDfw2,nonNwClickCpmDfw2,nonNwClickInvalidDfw2,nwClickCpcDfw2,nwClickCpmDfw2,nwClickInvalidDfw2,renderCpcDfw2,renderCpmDfw2,egret_lambda_AdUnitBeacon_dfw2_defer,egret_lambda_AdUnitBeacon_dfw2_enhanced,egret_lambda_AdUnitPublisherFill_dfw2_enhanced,egret_lambda_RenderCPC_dfw2_enhanced,egret_lambda_RenderCPM_dfw2_enhanced,egret_lambda_BillingCPC_dfw2_enhanced,egret_lambda_BeaconRRDefault_dfw2_enhanced,egret_lambda_BillingCPM_dfw2_enhanced,egret_lambda_BillingDownload_dfw2_enhanced,egret_lambda_NWClickCPC_dfw2_enhanced,egret_lambda_NWClickCPM_dfw2_enhanced,egret_lambda_NWClickInvalid_dfw2_enhanced,egret_lambda_NonNWClickCPC_dfw2_enhanced,egret_lambda_NonNWClickCPM_dfw2_enhanced,egret_lambda_NonNWClickInvalid_dfw2_enhanced,fds_dfw2,egret_enricher_BillingCPC_perf_dfw2_defer,egret_enricher_BillingCPC_perf_dfw2_enhanced,egret_enricher_BillingCPM_perf_dfw2_defer,egret_enricher_BillingCPM_perf_dfw2_enhanced,egret_enricher_BillingDownload_perf_dfw2_defer,egret_enricher_BillingDownload_perf_dfw2_enhanced,il-flat_activity_add-ifcorganicactivity,egret_enricher_BillingDownloadCTA_perf_dfw2_defer,egret_enricher_BillingDownloadVTA_perf_dfw2_defer,egret_enricher_BillingDownloadCTA_perf_dfw2_enhanced,egret_enricher_BillingDownloadVTA_perf_dfw2_enhanced,egret_enricher_NWClickCPC_dfw2_enhanced,egret_enricher_NWClickCPM_dfw2_enhanced,egret_enricher_NWClickInvalid_dfw2_enhanced,egret_enricher_NonNWClickCPC_dfw2_enhanced,egret_enricher_NonNWClickCPM_dfw2_enhanced,egret_enricher_NonNWClickInvalid_dfw2_enhanced,egret_enricher_BeaconRRDefault_dfw2_enhanced,egret_enricher_RenderCPC_dfw2_enhanced,egret_enricher_RenderCPM_dfw2_enhanced,appd_attribute,profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-ifc_compressed,nested_activity_add-network,adroit_report_obj_dfw2,appd_attribute_errors,appd-debug,brand_attribute_dfw2_dfw2,ifc_photon_nonenriched_pb_dfw2,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_dfw2_dfw2,network_attribute_raw_dfw2,network_beacon_dfw2_dfw2,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsDfw2,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,egret_enricher_click_dfw2_enhanced,egret_enricher_enhanced_clicks_dfw2,egret_enricher_render_dfw2_enhanced,sdk_response_latencies,sdk_stability_metrics,rta,adroit_san_pinger_stats"

default["flume_collector"]["endcollector_merge_retention_topics"]['dfw2']  = "beacon_rr_dfw2_cpm_render,network_beacon_dfw2_adunit,network_beacon_dfw2_publisherfill,beacon_rr_dfw2_default,network_beacon_adunit_interaction_dfw2,beacon_rr_dfw2_cpc_render,ifc_ff_dfw2,non_network_click_cpc_dfw2,non_network_click_cpm_dfw2,network_click_cpc_dfw2,network_click_cpm_dfw2,network_click_invalid_dfw2,click_rr_dfw2,adroit_report_obj_dfw2,billing_cpc_dfw2,billing_cpm_dfw2,billing_download_dfw2"

default["flume_collector"]["endcollector_platinum_retention_topics"]['dfw2']  = "ifc_photon_enriched_pb_dfw2,ifc_photon_nonenriched_pb_dfw2,user_context,ifc_photon_enriched_postback,dsp-beacon,sandboxrr,sandbox_postimpression,ifc_cookie_organic_activity,ifc_photon_enriched_san_pb,beeswax_bid_logs,adroit_attribution_stats,ucm_mapping,adomain_meta,adroit_san_pinger_stats,perfRR"

default["flume_collector"]["endcollector_all_channels"]['dfw2']  = "spillable mergespillable hdfsmerge-channel hdfslocal-channel platinumhdfs-channel photon-mergespillable-channel dfw2-to-ams1-kafkamerge-channel hdfslocalsecure-channel hdfsmergesecure-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['dfw2'] = "kafkasink1 kafkasink2 kafkasink3 kafkasink4 kafkasink5 mergekafkasink hdfsmerge-sink hdfslocal-sink1 platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 platinumhdfs-sink4 platinumhdfs-sink5 photon-mergekafkasink dfw2-to-ams1-kafkamerge-sink1 dfw2-to-ams1-kafkamerge-sink2 dfw2-to-ams1-kafkamerge-sink3 dfw2-to-ams1-kafkamerge-sink4 dfw2-to-ams1-kafkamerge-sink5 hdfsmergesecure-sink hdfslocalsecure-sink1 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3 platinumhdfssecure-sink4"

#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['dfw2']  = {
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
         :consumer_group => "dfw2hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "rr,egret_lambda_AdUnitBeacon_dfw2_enhanced,egret_lambda_AdUnitPublisherFill_dfw2_enhanced,egret_lambda_RenderCPC_dfw2_enhanced,egret_lambda_RenderCPM_dfw2_enhanced,egret_lambda_BillingCPC_dfw2_enhanced,egret_lambda_BeaconRRDefault_dfw2_enhanced,egret_lambda_BillingCPM_dfw2_enhanced,egret_lambda_BillingDownload_dfw2_enhanced,egret_lambda_NWClickCPC_dfw2_enhanced,egret_lambda_NWClickCPM_dfw2_enhanced,egret_lambda_NWClickInvalid_dfw2_enhanced,egret_lambda_NonNWClickCPC_dfw2_enhanced,egret_lambda_NonNWClickCPM_dfw2_enhanced,egret_lambda_NonNWClickInvalid_dfw2_enhanced,egret_lambda_NWClickInvalid_dfw2_enhanced,dsp-beacon,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_dfw2,beacon_csi_events,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,_audit,sdkpubreq,beaconDefaultDfw2,nested_activity_add-ifc_compressed,ifc_ff_dfw2,adroit_conversion_enhanced_dfw2,nonNwClickCpcDfw2,nonNwClickCpmDfw2,nonNwClickInvalidDfw2,nwClickCpcDfw2,nwClickCpmDfw2,nwClickInvalidDfw2,renderCpcDfw2,renderCpmDfw2,egret_lambda_AdUnitBeacon_dfw2_defer,egret_lambda_AdUnitBeacon_dfw2_enhanced,egret_lambda_AdUnitPublisherFill_dfw2_enhanced,egret_lambda_RenderCPC_dfw2_enhanced,egret_lambda_RenderCPM_dfw2_enhanced,egret_lambda_BillingCPC_dfw2_enhanced,egret_lambda_BeaconRRDefault_dfw2_enhanced,egret_lambda_BillingCPM_dfw2_enhanced,egret_lambda_BillingDownload_dfw2_enhanced,egret_lambda_NWClickCPC_dfw2_enhanced,egret_lambda_NWClickCPM_dfw2_enhanced,egret_lambda_NWClickInvalid_dfw2_enhanced,egret_lambda_NonNWClickCPC_dfw2_enhanced,egret_lambda_NonNWClickCPM_dfw2_enhanced,egret_lambda_NonNWClickInvalid_dfw2_enhanced,fds_dfw2,egret_enricher_BillingCPC_perf_dfw2_defer,egret_enricher_BillingCPC_perf_dfw2_enhanced,egret_enricher_BillingCPM_perf_dfw2_defer,egret_enricher_BillingCPM_perf_dfw2_enhanced,egret_enricher_BillingDownload_perf_dfw2_defer,egret_enricher_BillingDownload_perf_dfw2_enhanced,egret_enricher_BillingDownloadCTA_perf_dfw2_defer,egret_enricher_BillingDownloadVTA_perf_dfw2_defer,egret_enricher_BillingDownloadCTA_perf_dfw2_enhanced,egret_enricher_BillingDownloadVTA_perf_dfw2_enhanced,egret_enricher_NWClickCPC_dfw2_enhanced,egret_enricher_NWClickCPM_dfw2_enhanced,egret_enricher_NWClickInvalid_dfw2_enhanced,egret_enricher_NonNWClickCPC_dfw2_enhanced,egret_enricher_NonNWClickCPM_dfw2_enhanced,egret_enricher_NonNWClickInvalid_dfw2_enhanced,egret_enricher_BeaconRRDefault_dfw2_enhanced,egret_enricher_RenderCPC_dfw2_enhanced,egret_enricher_RenderCPM_dfw2_enhanced,appd_attribute,egret_enricher_render_dfw2_enhanced,sdk_response_latencies,sdk_stability_metrics,rta,adroit_san_pinger_stats"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "dfw2hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmergesecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_dfw2_cpm_render,merge_network_beacon_dfw2_adunit,merge_network_beacon_dfw2_publisherfill,merge_beacon_rr_dfw2_default,merge_network_beacon_adunit_interaction_dfw2,merge_beacon_rr_dfw2_cpc_render,merge_ifc_ff_dfw2,merge_non_network_click_cpc_dfw2,merge_non_network_click_cpm_dfw2,merge_network_click_cpc_dfw2,merge_network_click_cpm_dfw2,merge_network_click_invalid_dfw2,merge_click_rr_dfw2,merge_adroit_report_obj_dfw2,merge_billing_cpc_dfw2,merge_billing_cpm_dfw2,merge_billing_download_dfw2"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-dfw2-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw2_cpm_render,network_beacon_dfw2_adunit,network_beacon_dfw2_publisherfill,beacon_rr_dfw2_default,network_beacon_adunit_interaction_dfw2,beacon_rr_dfw2_cpc_render,ifc_ff_dfw2,non_network_click_cpc_dfw2,non_network_click_cpm_dfw2,network_click_cpc_dfw2,network_click_cpm_dfw2,network_click_invalid_dfw2,click_rr_dfw2,datasciences-attributes_dfw2,adroit_report_obj_dfw2,billing_cpc_dfw2,billing_cpm_dfw2,billing_download_dfw2,appd_install_events_dfw2,cdp_user_segment,optout"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-dfw2-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw2_cpm_render,network_beacon_dfw2_adunit,network_beacon_dfw2_publisherfill,beacon_rr_dfw2_default,network_beacon_adunit_interaction_dfw2,beacon_rr_dfw2_cpc_render,ifc_ff_dfw2,non_network_click_cpc_dfw2,non_network_click_cpm_dfw2,network_click_cpc_dfw2,network_click_cpm_dfw2,network_click_invalid_dfw2,click_rr_dfw2,dsp_organic_download,dsp_organic_purchase,dsp_organic_custom,dsp_inorganic_download,dsp_inorganic_purchase,dsp_inorganic_custom"},
     "ams1kafkamergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-dfw2-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "beacon_rr_dfw2_cpm_render,network_beacon_dfw2_adunit,network_beacon_dfw2_publisherfill,beacon_rr_dfw2_default,network_beacon_adunit_interaction_dfw2,beacon_rr_dfw2_cpc_render,ifc_ff_dfw2,non_network_click_cpc_dfw2,non_network_click_cpm_dfw2,network_click_cpc_dfw2,network_click_cpm_dfw2,network_click_invalid_dfw2,click_rr_dfw2"},
     "dfw2-to-ams1-kafkamergesrc" => {
         :src_category => "dfw2ams1kafkamerge",
         :consumer_group => "dfw2-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "dfw2-to-ams1-kafkamerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "network_activity_ams1"},
     "dfw2kafkamergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-dfw2-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_dfw2_cpm_render,network_beacon_dfw2_adunit,network_beacon_dfw2_publisherfill,beacon_rr_dfw2_default,network_beacon_adunit_interaction_dfw2,beacon_rr_dfw2_cpc_render,ifc_ff_dfw2,non_network_click_cpc_dfw2,non_network_click_cpm_dfw2,network_click_cpc_dfw2,network_click_cpm_dfw2,network_click_invalid_dfw2,click_rr_dfw2,dsp_organic_download,dsp_organic_purchase,dsp_organic_custom,dsp_inorganic_download,dsp_inorganic_purchase,dsp_inorganic_custom"},
     "dfw1photonmergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-dfw2-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
         :'kafka.topics' => "appd_attribute_dfw2,appd_custom_type_dfw2,appd_flat_activity_dfw2,audience-attributes_dfw2,brand_attributes_dfw2,cas_nested_activity_dfw2,ifc_activity_dfw2,ifc_attributes_dfw2,ifc_organic_activity_dfw2,network_activity_dfw2,network_beacon_dfw2,network_billing_dfw2,network_click_dfw2,network_conversion_dfw2,network_render_cpc_dfw2,network_attribute_dfw2,profile_delete_dfw2,network_render_cpm_dfw2,photon_appd_flat_activity_dfw2,photon_optout_dfw2,pso-attributes_dfw2,users_right_to_be_forgotten_dfw2"},
     "ams1photonmergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-dfw2-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
          :'kafka.topics' => "appd_attribute_dfw2,appd_custom_type_dfw2,appd_flat_activity_dfw2,audience-attributes_dfw2,brand_attributes_dfw2,cas_nested_activity_dfw2,ifc_activity_dfw2,ifc_attributes_dfw2,ifc_organic_activity_dfw2,network_activity_dfw2,network_beacon_dfw2,network_billing_dfw2,network_click_dfw2,network_conversion_dfw2,network_render_cpc_dfw2,network_attribute_dfw2,profile_delete_dfw2,network_render_cpm_dfw2,photon_appd_flat_activity_dfw2,photon_optout_dfw2,pso-attributes_dfw2"},
     "pek1photonmergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-dfw2-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
         :'kafka.topics' => "appd_attribute_dfw2,appd_custom_type_dfw2,appd_flat_activity_dfw2,audience-attributes_dfw2,brand_attributes_dfw2,cas_nested_activity_dfw2,ifc_activity_dfw2,ifc_attributes_dfw2,ifc_organic_activity_dfw2,network_activity_dfw2,network_beacon_dfw2,network_billing_dfw2,network_click_dfw2,network_conversion_dfw2,network_render_cpc_dfw2,network_attribute_dfw2,profile_delete_dfw2,network_render_cpm_dfw2,photon_appd_flat_activity_dfw2,photon_optout_dfw2,pso-attributes_dfw2"},
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['dfw2']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['dfw2']  = ["mergespillable","photon-mergespillable-channel","dfw2-to-ams1-kafkamerge-channel"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['dfw2']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['dfw2']  = ["hdfslocal-channel"]
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['dfw2']  = ["platinumhdfs-channel"]

#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['dfw2']  = {
     "kafkasink1" => {:channel => "spillable"},
     "kafkasink2" => {:channel => "spillable"},
     "kafkasink3" => {:channel => "spillable"},
     "kafkasink4" => {:channel => "spillable"},
     "kafkasink5" => {:channel => "spillable"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['dfw2']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
     "photon-mergekafkasink" => {:channel => "photon-mergespillable-channel",:producer_id =>"flume-photonmerge-kafka-sink"},
}

default["flume_collector"]["endcollector_dfw2toams1_merged_kafka_sinks"]['dfw2']  = {
     "dfw2-to-ams1-kafkamerge-sink1" => {:channel => "dfw2-to-ams1-kafkamerge-channel",:producer_id =>"flume-dfw2toams1merge-kafka-sink"},
     "dfw2-to-ams1-kafkamerge-sink2" => {:channel => "dfw2-to-ams1-kafkamerge-channel",:producer_id =>"flume-dfw2toams1merge-kafka-sink"},
     "dfw2-to-ams1-kafkamerge-sink3" => {:channel => "dfw2-to-ams1-kafkamerge-channel",:producer_id =>"flume-dfw2toams1merge-kafka-sink"},
     "dfw2-to-ams1-kafkamerge-sink4" => {:channel => "dfw2-to-ams1-kafkamerge-channel",:producer_id =>"flume-dfw2toams1merge-kafka-sink"},
     "dfw2-to-ams1-kafkamerge-sink5" => {:channel => "dfw2-to-ams1-kafkamerge-channel",:producer_id =>"flume-dfw2toams1merge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['dfw2']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel",:cluster =>"garnet"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['dfw2']  = {
    "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"garnet"}
}

default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['dfw2']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink4" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink5" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_local_secure_hdfs_sinks"]['dfw2']  = {
     "hdfslocalsecure-sink1" => {:channel => "hdfslocalsecure-channel",:cluster =>"garnet"}
}

default["flume_collector"]["endcollector_merged_secure_hdfs_sinks"]['dfw2']  = {
     "hdfsmergesecure-sink" => {:channel => "hdfsmergesecure-channel",:cluster =>"garnet"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_sinks"]['dfw2']  = {
     "platinumhdfssecure-sink1" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink2" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink3" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink4" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_merge_secure_hdfs_channels"]['dfw2']  = ["hdfsmergesecure-channel"]
default["flume_collector"]["endcollector_local_secure_hdfs_channels"]['dfw2']  = ["hdfslocalsecure-channel"]
default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['dfw2']  = ["platinumhdfssecure-channel"]


######################################################### End Of DFW2 ###################################################################



######################################################### AMS1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['ams1']  = "profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-ifc_compressed,nested_activity_add-network,adroit_report_obj_ams1,appd_attribute_errors,appd-debug,brand_attribute_ams1_ams1,ifc_photon_nonenriched_pb_ams1,nested_activity_add-ifc,nested_activity_add-ifcuseractivity,network_activity_ams1_ams1,network_attribute_raw_ams1,network_beacon_ams1_ams1,ttd-beacon,ttd-request,usermeta_change,wadogorr,fdsAms1,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,rr,egret_lambda_AdUnitBeacon_ams1_enhanced,egret_lambda_AdUnitPublisherFill_ams1_enhanced,egret_lambda_RenderCPC_ams1_enhanced,egret_lambda_RenderCPM_ams1_enhanced,egret_lambda_BillingCPC_ams1_enhanced,egret_lambda_BeaconRRDefault_ams1_enhanced,egret_lambda_BillingCPM_ams1_enhanced,egret_lambda_BillingDownload_ams1_enhanced,egret_lambda_NWClickCPC_ams1_enhanced,egret_lambda_NWClickCPM_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,egret_lambda_NonNWClickCPC_ams1_enhanced,egret_lambda_NonNWClickCPM_ams1_enhanced,egret_lambda_NonNWClickInvalid_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,dsp-beacon,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_ams1,beacon_csi_events,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,_audit,sdkpubreq,beaconDefaultAms1,nested_activity_add-ifc_compressed,ifc_ff_ams1,adroit_conversion_enhanced_ams1,nonNwClickCpcAms1,nonNwClickCpmAms1,nonNwClickInvalidAms1,nwClickCpcAms1,nwClickCpmAms1,nwClickInvalidAms1,renderCpcAms1,renderCpmAms1,egret_lambda_AdUnitBeacon_ams1_defer,egret_lambda_AdUnitBeacon_ams1_enhanced,egret_lambda_AdUnitPublisherFill_ams1_enhanced,egret_lambda_RenderCPC_ams1_enhanced,egret_lambda_RenderCPM_ams1_enhanced,egret_lambda_BillingCPC_ams1_enhanced,egret_lambda_BeaconRRDefault_ams1_enhanced,egret_lambda_BillingCPM_ams1_enhanced,egret_lambda_BillingDownload_ams1_enhanced,egret_lambda_NWClickCPC_ams1_enhanced,egret_lambda_NWClickCPM_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,egret_lambda_NonNWClickCPC_ams1_enhanced,egret_lambda_NonNWClickCPM_ams1_enhanced,egret_lambda_NonNWClickInvalid_ams1_enhanced,fds_ams1,appd_attribute,sdk_response_latencies,sdk_stability_metrics,rta,adroit_san_pinger_stats,iapclick,iapbilling,iapattribution"

default["flume_collector"]["endcollector_merge_retention_topics"]['ams1']  = "beacon_rr_ams1_cpm_render,network_beacon_ams1_adunit,network_beacon_ams1_publisherfill,beacon_rr_ams1_default,network_beacon_adunit_interaction_ams1,beacon_rr_ams1_cpc_render,ifc_ff_ams1,non_network_click_cpc_ams1,non_network_click_cpm_ams1,network_click_cpc_ams1,network_click_cpm_ams1,network_click_invalid_ams1,click_rr_ams1,adroit_report_obj_ams1,billing_cpc_ams1,billing_cpm_ams1,billing_download_ams1,billing_download_lhr1"
default["flume_collector"]["endcollector_platinum_retention_topics"]['ams1']  = "testmerge,user_context,ifc_photon_enriched_postback,dsp-beacon,sandboxrr,sandbox_postimpression,ifc_cookie_organic_activity,ifc_photon_enriched_san_pb,beeswax_bid_logs,il-flat_activity_add-ifcorganicactivity,adroit_attribution_stats,adomain_meta,adroit_san_pinger_stats,perfRR,iapclick,iapbilling,iapattribution"

default["flume_collector"]["endcollector_all_channels"]['ams1']  = "spillable mergespillable hdfsmerge-channel hdfslocal-channel platinumhdfs-channel photon-mergespillable-channel ams1-to-dfw1-push-channel hdfslocalsecure-channel hdfsmergesecure-channel platinumhdfssecure-channel"

default["flume_collector"]["endcollector_all_sinks"]['ams1'] = "kafkasink1 kafkasink2 kafkasink3 kafkasink4 kafkasink5 mergekafkasink mergekafkasink2 hdfsmerge-sink hdfslocal-sink1 hdfslocal-sink2 hdfslocal-sink3 platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 platinumhdfs-sink4 platinumhdfs-sink5 photon-mergekafkasink ams1todfw1-mergekafkasink1 ams1todfw1-mergekafkasink2 ams1todfw1-mergekafkasink3 ams1todfw1-mergekafkasink4 ams1todfw1-mergekafkasink5 hdfsmergesecure-sink hdfslocalsecure-sink1 hdfslocalsecure-sink2 hdfslocalsecure-sink3 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3 platinumhdfssecure-sink4"
#Configure the sources for the Flume Collector
default["flume_collector"]["endcollector_sources"]['ams1']  = {
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
     "hdfslocalsrc1" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "rr,egret_lambda_AdUnitBeacon_ams1_enhanced,egret_lambda_AdUnitPublisherFill_ams1_enhanced,egret_lambda_RenderCPC_ams1_enhanced,egret_lambda_RenderCPM_ams1_enhanced,egret_lambda_BillingCPC_ams1_enhanced,egret_lambda_BeaconRRDefault_ams1_enhanced,egret_lambda_BillingCPM_ams1_enhanced,egret_lambda_BillingDownload_ams1_enhanced,egret_lambda_NWClickCPC_ams1_enhanced,egret_lambda_NWClickCPM_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,egret_lambda_NonNWClickCPC_ams1_enhanced,egret_lambda_NonNWClickCPM_ams1_enhanced,egret_lambda_NonNWClickInvalid_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,dsp-beacon,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_ams1,beacon_csi_events,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,_audit,sdkpubreq,beaconDefaultAms1,nested_activity_add-ifc_compressed,ifc_ff_ams1,adroit_conversion_enhanced_ams1,nonNwClickCpcAms1,nonNwClickCpmAms1,nonNwClickInvalidAms1,nwClickCpcAms1,nwClickCpmAms1,nwClickInvalidAms1,renderCpcAms1,renderCpmAms1,egret_lambda_AdUnitBeacon_ams1_defer,egret_lambda_AdUnitBeacon_ams1_enhanced,egret_lambda_AdUnitPublisherFill_ams1_enhanced,egret_lambda_RenderCPC_ams1_enhanced,egret_lambda_RenderCPM_ams1_enhanced,egret_lambda_BillingCPC_ams1_enhanced,egret_lambda_BeaconRRDefault_ams1_enhanced,egret_lambda_BillingCPM_ams1_enhanced,egret_lambda_BillingDownload_ams1_enhanced,egret_lambda_NWClickCPC_ams1_enhanced,egret_lambda_NWClickCPM_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,egret_lambda_NonNWClickCPC_ams1_enhanced,egret_lambda_NonNWClickCPM_ams1_enhanced,egret_lambda_NonNWClickInvalid_ams1_enhanced,fds_ams1,appd_attribute,sdk_response_latencies,sdk_stability_metrics,rta,adroit_san_pinger_stats,iapclick,iapbilling,iapattribution"},
     "hdfslocalsrc2" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "rr,egret_lambda_AdUnitBeacon_ams1_enhanced,egret_lambda_AdUnitPublisherFill_ams1_enhanced,egret_lambda_RenderCPC_ams1_enhanced,egret_lambda_RenderCPM_ams1_enhanced,egret_lambda_BillingCPC_ams1_enhanced,egret_lambda_BeaconRRDefault_ams1_enhanced,egret_lambda_BillingCPM_ams1_enhanced,egret_lambda_BillingDownload_ams1_enhanced,egret_lambda_NWClickCPC_ams1_enhanced,egret_lambda_NWClickCPM_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,egret_lambda_NonNWClickCPC_ams1_enhanced,egret_lambda_NonNWClickCPM_ams1_enhanced,egret_lambda_NonNWClickInvalid_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,dsp-beacon,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_ams1,beacon_csi_events,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,_audit,sdkpubreq,beaconDefaultAms1,nested_activity_add-ifc_compressed,ifc_ff_ams1,adroit_conversion_enhanced_ams1,nonNwClickCpcAms1,nonNwClickCpmAms1,nonNwClickInvalidAms1,nwClickCpcAms1,nwClickCpmAms1,nwClickInvalidAms1,renderCpcAms1,renderCpmAms1,egret_lambda_AdUnitBeacon_ams1_defer,egret_lambda_AdUnitBeacon_ams1_enhanced,egret_lambda_AdUnitPublisherFill_ams1_enhanced,egret_lambda_RenderCPC_ams1_enhanced,egret_lambda_RenderCPM_ams1_enhanced,egret_lambda_BillingCPC_ams1_enhanced,egret_lambda_BeaconRRDefault_ams1_enhanced,egret_lambda_BillingCPM_ams1_enhanced,egret_lambda_BillingDownload_ams1_enhanced,egret_lambda_NWClickCPC_ams1_enhanced,egret_lambda_NWClickCPM_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,egret_lambda_NonNWClickCPC_ams1_enhanced,egret_lambda_NonNWClickCPM_ams1_enhanced,egret_lambda_NonNWClickInvalid_ams1_enhanced,fds_ams1,appd_attribute,sdk_response_latencies,sdk_stability_metrics,rta,adroit_san_pinger_stats,iapclick,iapbilling,iapattribution"},
     "hdfslocalsrc3" => {
         :src_category => "hdfslocal",
         :consumer_group => "ams1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "rr,egret_lambda_AdUnitBeacon_ams1_enhanced,egret_lambda_AdUnitPublisherFill_ams1_enhanced,egret_lambda_RenderCPC_ams1_enhanced,egret_lambda_RenderCPM_ams1_enhanced,egret_lambda_BillingCPC_ams1_enhanced,egret_lambda_BeaconRRDefault_ams1_enhanced,egret_lambda_BillingCPM_ams1_enhanced,egret_lambda_BillingDownload_ams1_enhanced,egret_lambda_NWClickCPC_ams1_enhanced,egret_lambda_NWClickCPM_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,egret_lambda_NonNWClickCPC_ams1_enhanced,egret_lambda_NonNWClickCPM_ams1_enhanced,egret_lambda_NonNWClickInvalid_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,dsp-beacon,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_ams1,beacon_csi_events,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,_audit,sdkpubreq,beaconDefaultAms1,nested_activity_add-ifc_compressed,ifc_ff_ams1,adroit_conversion_enhanced_ams1,nonNwClickCpcAms1,nonNwClickCpmAms1,nonNwClickInvalidAms1,nwClickCpcAms1,nwClickCpmAms1,nwClickInvalidAms1,renderCpcAms1,renderCpmAms1,egret_lambda_AdUnitBeacon_ams1_defer,egret_lambda_AdUnitBeacon_ams1_enhanced,egret_lambda_AdUnitPublisherFill_ams1_enhanced,egret_lambda_RenderCPC_ams1_enhanced,egret_lambda_RenderCPM_ams1_enhanced,egret_lambda_BillingCPC_ams1_enhanced,egret_lambda_BeaconRRDefault_ams1_enhanced,egret_lambda_BillingCPM_ams1_enhanced,egret_lambda_BillingDownload_ams1_enhanced,egret_lambda_NWClickCPC_ams1_enhanced,egret_lambda_NWClickCPM_ams1_enhanced,egret_lambda_NWClickInvalid_ams1_enhanced,egret_lambda_NonNWClickCPC_ams1_enhanced,egret_lambda_NonNWClickCPM_ams1_enhanced,egret_lambda_NonNWClickInvalid_ams1_enhanced,fds_ams1,appd_attribute,sdk_response_latencies,sdk_stability_metrics,rta,adroit_san_pinger_stats,iapclick,iapbilling,iapattribution"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "ams1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmergesecure-channel",
         :batchSize => 500,
	 :'kafka.topics' => "merge_beacon_rr_ams1_cpm_render,merge_network_beacon_ams1_adunit,merge_network_beacon_ams1_publisherfill,merge_beacon_rr_ams1_default,merge_network_beacon_adunit_interaction_ams1,merge_beacon_rr_ams1_cpc_render,merge_ifc_ff_ams1,merge_non_network_click_cpc_ams1,merge_non_network_click_cpm_ams1,merge_network_click_cpc_ams1,merge_network_click_cpm_ams1,merge_network_click_invalid_ams1,merge_click_rr_ams1,merge_adroit_report_obj_ams1,merge_billing_cpc_ams1,merge_billing_cpm_ams1,merge_billing_download_ams1,merge_billing_download_lhr1"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_ams1_cpm_render,network_beacon_ams1_adunit,network_beacon_ams1_publisherfill,beacon_rr_ams1_default,network_beacon_adunit_interaction_ams1,beacon_rr_ams1_cpc_render,ifc_ff_ams1,non_network_click_cpc_ams1,non_network_click_cpm_ams1,network_click_cpc_ams1,network_click_cpm_ams1,network_click_invalid_ams1,click_rr_ams1,datasciences-attributes_ams1,adroit_report_obj_ams1,billing_cpc_ams1,billing_download_ams1,billing_download_lhr1,appd_install_events_ams1,iapclick,iapbilling,iapattribution"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "beacon_rr_ams1_cpm_render,network_beacon_ams1_adunit,network_beacon_ams1_publisherfill,beacon_rr_ams1_default,network_beacon_adunit_interaction_ams1,beacon_rr_ams1_cpc_render,ifc_ff_ams1,non_network_click_cpc_ams1,non_network_click_cpm_ams1,network_click_cpc_ams1,network_click_cpm_ams1,network_click_invalid_ams1,click_rr_ams1,iapclick"},
     "dfw2kafkamergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
     	 :'kafka.topics' => "beacon_rr_ams1_cpm_render,network_beacon_ams1_adunit,network_beacon_ams1_publisherfill,beacon_rr_ams1_default,network_beacon_adunit_interaction_ams1,beacon_rr_ams1_cpc_render,ifc_ff_ams1,non_network_click_cpc_ams1,non_network_click_cpm_ams1,network_click_cpc_ams1,network_click_cpm_ams1,network_click_invalid_ams1,click_rr_ams1"},
     "ams1kafkamergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "beacon_rr_ams1_cpm_render,network_beacon_ams1_adunit,network_beacon_ams1_publisherfill,beacon_rr_ams1_default,network_beacon_adunit_interaction_ams1,beacon_rr_ams1_cpc_render,ifc_ff_ams1,non_network_click_cpc_ams1,non_network_click_cpm_ams1,network_click_cpc_ams1,network_click_cpm_ams1,network_click_invalid_ams1,click_rr_ams1,iapclick,iapbilling,iapattribution"},
     "dfw1photonmergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
	 :'kafka.topics' => "appd_attribute_ams1,appd_custom_type_ams1,appd_flat_activity_ams1,audience-attributes_ams1,brand_attributes_ams1,cas_nested_activity_ams1,ifc_activity_ams1,ifc_attributes_ams1,ifc_organic_activity_ams1,network_beacon_ams1,network_billing_ams1,network_click_ams1,network_conversion_ams1,network_render_cpc_ams1,network_attribute_ams1,profile_delete_ams1,network_render_cpm_ams1,photon_optout_ams1,pso-attributes_ams1,users_right_to_be_forgotten_ams1"},
     "ams1todfw1pushsrc" => {
         :src_category => "ams1todfw1kafkamerge",
         :consumer_group => "ams1-to-dfw1-kafkapush",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "ams1-to-dfw1-push-channel",
         :batchSize => 500,
	 :'kafka.topics' => "beacon_rr_dfw1_cpc_render,beacon_rr_dfw1_cpm_render,network_beacon_dfw1_adunit,network_activity_dfw1,bidder_metrics,billable_render_ams1"},
     "dfw2photonmergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
	 :'kafka.topics' => "appd_attribute_ams1,appd_custom_type_ams1,appd_flat_activity_ams1,audience-attributes_ams1,brand_attributes_ams1,cas_nested_activity_ams1,ifc_activity_ams1,ifc_attributes_ams1,ifc_organic_activity_ams1,network_beacon_ams1,network_billing_ams1,network_click_ams1,network_conversion_ams1,network_render_cpc_ams1,network_attribute_ams1,profile_delete_ams1,network_render_cpm_ams1,photon_appd_flat_activity_ams1,photon_optout_ams1,pso-attributes_ams1"},
     "pek1photonmergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-ams1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
	 :'kafka.topics' => "appd_attribute_ams1,appd_custom_type_ams1,appd_flat_activity_ams1,audience-attributes_ams1,brand_attributes_ams1,cas_nested_activity_ams1,ifc_activity_ams1,ifc_attributes_ams1,ifc_organic_activity_ams1,network_activity_ams1,network_beacon_ams1,network_billing_ams1,network_click_ams1,network_conversion_ams1,network_render_cpc_ams1,network_attribute_ams1,profile_delete_ams1,network_render_cpm_ams1,photon_appd_flat_activity_ams1,photon_optout_ams1,pso-attributes_ams1"},
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['ams1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['ams1']  = ["mergespillable","photon-mergespillable-channel", "ams1-to-dfw1-push-channel"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['ams1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['ams1']  = ["hdfslocal-channel"]
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['ams1']  = ["platinumhdfs-channel"]

#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['ams1']  = {
     "kafkasink1" => {:channel => "spillable"},
     "kafkasink2" => {:channel => "spillable"},
     "kafkasink3" => {:channel => "spillable"},
     "kafkasink4" => {:channel => "spillable"},
     "kafkasink5" => {:channel => "spillable"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['ams1']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
     "mergekafkasink2" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
     "photon-mergekafkasink" => {:channel => "photon-mergespillable-channel",:producer_id =>"flume-photonmerge-kafka-sink"},
}

default["flume_collector"]["endcollector_ams1todfw1_merged_kafka_sinks"]['ams1']  = {
     "ams1todfw1-mergekafkasink1" => {:channel => "ams1-to-dfw1-push-channel",:producer_id =>"flume-ams1todfw1merge-kafka-sink"},
     "ams1todfw1-mergekafkasink2" => {:channel => "ams1-to-dfw1-push-channel",:producer_id =>"flume-ams1todfw1merge-kafka-sink"},
     "ams1todfw1-mergekafkasink3" => {:channel => "ams1-to-dfw1-push-channel",:producer_id =>"flume-ams1todfw1merge-kafka-sink"},
     "ams1todfw1-mergekafkasink4" => {:channel => "ams1-to-dfw1-push-channel",:producer_id =>"flume-ams1todfw1merge-kafka-sink"},
     "ams1todfw1-mergekafkasink5" => {:channel => "ams1-to-dfw1-push-channel",:producer_id =>"flume-ams1todfw1merge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['ams1']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink2" => {:channel => "hdfslocal-channel",:cluster =>"azurite"},
     "hdfslocal-sink3" => {:channel => "hdfslocal-channel",:cluster =>"azurite"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['ams1']  = {
    "hdfsmerge-sink" => {:channel => "hdfsmerge-channel",:cluster =>"azurite"}
}

default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['ams1']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink4" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink5" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_local_secure_hdfs_sinks"]['ams1']  = {
     "hdfslocalsecure-sink1" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink2" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"},
     "hdfslocalsecure-sink3" => {:channel => "hdfslocalsecure-channel",:cluster =>"azurite"}
}

default["flume_collector"]["endcollector_merged_secure_hdfs_sinks"]['ams1']  = {
     "hdfsmergesecure-sink" => {:channel => "hdfsmergesecure-channel",:cluster =>"azurite"}
}

default["flume_collector"]["endcollector_platinum_secure_hdfs_sinks"]['ams1']  = {
     "platinumhdfssecure-sink1" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink2" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink3" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfssecure-sink4" => {:channel => "platinumhdfssecure-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_merge_secure_hdfs_channels"]['ams1']  = ["hdfsmergesecure-channel"]
default["flume_collector"]["endcollector_local_secure_hdfs_channels"]['ams1']  = ["hdfslocalsecure-channel"]
default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['ams1']  = ["platinumhdfssecure-channel"]
######################################################### End Of AMS1 ###################################################################




######################################################### LHR1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['lhr1']  = "rr,egret_lambda_AdUnitBeacon_lhr1_enhanced,egret_lambda_AdUnitPublisherFill_lhr1_enhanced,egret_lambda_RenderCPC_lhr1_enhanced,egret_lambda_RenderCPM_lhr1_enhanced,egret_lambda_BillingCPC_lhr1_enhanced,egret_lambda_BeaconRRDefault_lhr1_enhanced,egret_lambda_BillingCPM_lhr1_enhanced,egret_lambda_BillingDownload_lhr1_enhanced,egret_lambda_NWClickCPC_lhr1_enhanced,egret_lambda_NWClickCPM_lhr1_enhanced,egret_lambda_NWClickInvalid_lhr1_enhanced,egret_lambda_NonNWClickCPC_lhr1_enhanced,egret_lambda_NonNWClickCPM_lhr1_enhanced,egret_lambda_NonNWClickInvalid_lhr1_enhanced,egret_lambda_NWClickInvalid_lhr1_enhanced,dsp-beacon,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_lhr1,_audit,beacon_csi_events,carb_user_relevance,cas_ads,cas_rr,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,egret_lambda_AdUnitBeacon_lhr1_defer,egret_lambda_NWClickInvalid_lhr1_enhanced,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbd_ads,rtbs_beacon,rtbs_click,sdk_metrics,sdkpubreq,splash,adroit_conversion_enhanced_lhr1,beaconDefaultLhr1,nested_activity_add-ifc_compressed,nonNwClickCpcLhr1,nonNwClickCpmLhr1,nonNwClickInvalidLhr1,nwClickCpcLhr1,nwClickCpmLhr1,nwClickInvalidLhr1,renderCpcLhr1,renderCpmLhr1,fds_lhr1,il-flat_activity_add-ifcorganicactivity"
default["flume_collector"]["endcollector_merge_retention_topics"]['lhr1']  = "beacon_rr_lhr1_cpm_render,network_beacon_lhr1_adunit,network_beacon_lhr1_publisherfill,beacon_rr_lhr1_default,network_beacon_adunit_interaction_lhr1,beacon_rr_lhr1_cpc_render,ifc_ff_lhr1,non_network_click_cpc_lhr1,non_network_click_cpm_lhr1,network_click_cpc_lhr1,network_click_cpm_lhr1,network_click_invalid_lhr1,click_rr_lhr1,adroit_report_obj_lhr1,billing_cpc_lhr1,billing_cpm_lhr1,billing_download_lhr1"

default["flume_collector"]["endcollector_platinum_retention_topics"]['lhr1']  = "testmerge,user_context,ifc_photon_enriched_postback,dsp-beacon,sandboxrr,sandbox_postimpression,ifc_cookie_organic_activity,ifc_photon_enriched_san_pb,beeswax_bid_logs,adroit_attribution_stats,adomain_meta"

default["flume_collector"]["endcollector_all_channels"]['lhr1']  = "spillable mergespillable hdfsmerge-channel hdfslocal-channel platinumhdfs-channel photon-mergespillable-channel"

default["flume_collector"]["endcollector_all_sinks"]['lhr1'] = "kafkasink1 kafkasink2 mergekafkasink hdfsmerge-sink1 hdfsmerge-sink2 hdfslocal-sink1 hdfslocal-sink2 platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 platinumhdfs-sink4 platinumhdfs-sink5 photon-mergekafkasink"
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
         :'kafka.topics' => "rr,egret_lambda_AdUnitBeacon_lhr1_enhanced,egret_lambda_AdUnitPublisherFill_lhr1_enhanced,egret_lambda_RenderCPC_lhr1_enhanced,egret_lambda_RenderCPM_lhr1_enhanced,egret_lambda_BillingCPC_lhr1_enhanced,egret_lambda_BeaconRRDefault_lhr1_enhanced,egret_lambda_BillingCPM_lhr1_enhanced,egret_lambda_BillingDownload_lhr1_enhanced,egret_lambda_NWClickCPC_lhr1_enhanced,egret_lambda_NWClickCPM_lhr1_enhanced,egret_lambda_NWClickInvalid_lhr1_enhanced,egret_lambda_NonNWClickCPC_lhr1_enhanced,egret_lambda_NonNWClickCPM_lhr1_enhanced,egret_lambda_NonNWClickInvalid_lhr1_enhanced,egret_lambda_NWClickInvalid_lhr1_enhanced,dsp-beacon,adroit_attribution_stats,sandboxrr,sandbox_postimpression,ifcp_lhr1,_audit,beacon_csi_events,carb_user_relevance,cas_ads,cas_rr,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,egret_lambda_AdUnitBeacon_lhr1_defer,egret_lambda_NWClickInvalid_lhr1_enhanced,dcp_beacon_publisherfill,dcp_click,nnstudio,rtbd_ads,rtbs_beacon,rtbs_click,sdk_metrics,sdkpubreq,splash,adroit_conversion_enhanced_lhr1,beaconDefaultLhr1,nested_activity_add-ifc_compressed,nonNwClickCpcLhr1,nonNwClickCpmLhr1,nonNwClickInvalidLhr1,nwClickCpcLhr1,nwClickCpmLhr1,nwClickInvalidLhr1,renderCpcLhr1,renderCpmLhr1,fds_lhr1"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "lhr1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmerge-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_lhr1_cpm_render,merge_network_beacon_lhr1_adunit,merge_network_beacon_lhr1_publisherfill,merge_beacon_rr_lhr1_default,merge_network_beacon_adunit_interaction_lhr1,merge_beacon_rr_lhr1_cpc_render,merge_ifc_ff_lhr1,merge_non_network_click_cpc_lhr1,merge_non_network_click_cpm_lhr1,merge_network_click_cpc_lhr1,merge_network_click_cpm_lhr1,merge_network_click_invalid_lhr1,merge_click_rr_lhr1,merge_adroit_report_obj_lhr1,merge_billing_cpc_lhr1,merge_billing_cpm_lhr1,merge_billing_download_lhr1"},
     "hdfsplatinumsrc" => {
         :src_category => "platinumhdfs",
         :consumer_group => "lhr1-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "user_context,ifc_photon_enriched_postback,dsp-beacon,sandboxrr,sandbox_postimpression,ifc_cookie_organic_activity,ifc_photon_enriched_san_pb,beeswax_bid_logs,adroit_attribution_stats,adomain_meta"},
     "hdfsplatinummergesrc" => {
         :src_category => "mergetoplatinumhdfs",
         :consumer_group => "lhr1-merge-to-platinum-hdfs",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "platinumhdfs-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_testmerge"},
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
     "dfw2kafkamergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_lhr1_cpm_render,network_beacon_lhr1_adunit,network_beacon_lhr1_publisherfill,beacon_rr_lhr1_default,network_beacon_adunit_interaction_lhr1,beacon_rr_lhr1_cpc_render,ifc_ff_lhr1,non_network_click_cpc_lhr1,non_network_click_cpm_lhr1,network_click_cpc_lhr1,network_click_cpm_lhr1,network_click_invalid_lhr1,click_rr_lhr1"},
     "ams1kafkamergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "beacon_rr_lhr1_cpm_render,network_beacon_lhr1_adunit,network_beacon_lhr1_publisherfill,beacon_rr_lhr1_default,network_beacon_adunit_interaction_lhr1,beacon_rr_lhr1_cpc_render,ifc_ff_lhr1,non_network_click_cpc_lhr1,non_network_click_cpm_lhr1,network_click_cpc_lhr1,network_click_cpm_lhr1,network_click_invalid_lhr1,click_rr_lhr1"},
     "dfw1photonmergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
         :'kafka.topics' => "appd_attribute_lhr1,appd_custom_type_lhr1,appd_flat_activity_lhr1,audience-attributes_lhr1,brand_attributes_lhr1,cas_nested_activity_lhr1,ifc_activity_lhr1,ifc_attributes_lhr1,ifc_organic_activity_lhr1,network_activity_lhr1,network_beacon_lhr1,network_billing_lhr1,network_click_lhr1,network_conversion_lhr1,network_render_cpc_lhr1,network_attribute_lhr1,profile_delete_lhr1,network_render_cpm_lhr1,photon_appd_flat_activity_lhr1,photon_optout_lhr1"},
     "pek1photonmergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
         :'kafka.topics' => "appd_attribute_lhr1,appd_custom_type_lhr1,appd_flat_activity_lhr1,audience-attributes_lhr1,brand_attributes_lhr1,cas_nested_activity_lhr1,ifc_activity_lhr1,ifc_attributes_lhr1,ifc_organic_activity_lhr1,network_activity_lhr1,network_beacon_lhr1,network_billing_lhr1,network_click_lhr1,network_conversion_lhr1,network_render_cpc_lhr1,network_attribute_lhr1,profile_delete_lhr1,network_render_cpm_lhr1,photon_appd_flat_activity_lhr1,photon_optout_lhr1"},
     "ams1photonmergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
         :'kafka.topics' => "appd_attribute_lhr1,appd_custom_type_lhr1,appd_flat_activity_lhr1,audience-attributes_lhr1,brand_attributes_lhr1,cas_nested_activity_lhr1,ifc_activity_lhr1,ifc_attributes_lhr1,ifc_organic_activity_lhr1,network_activity_lhr1,network_beacon_lhr1,network_billing_lhr1,network_click_lhr1,network_conversion_lhr1,network_render_cpc_lhr1,network_attribute_lhr1,profile_delete_lhr1,network_render_cpm_lhr1,photon_appd_flat_activity_lhr1,photon_optout_lhr1"},
     "dfw2photonmergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-lhr1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
         :'kafka.topics' => "appd_attribute_lhr1,appd_custom_type_lhr1,appd_flat_activity_lhr1,audience-attributes_lhr1,brand_attributes_lhr1,cas_nested_activity_lhr1,ifc_activity_lhr1,ifc_attributes_lhr1,ifc_organic_activity_lhr1,network_activity_lhr1,network_beacon_lhr1,network_billing_lhr1,network_click_lhr1,network_conversion_lhr1,network_render_cpc_lhr1,network_attribute_lhr1,profile_delete_lhr1,network_render_cpm_lhr1,photon_appd_flat_activity_lhr1,photon_optout_lhr1"},
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['lhr1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['lhr1']  = ["mergespillable","photon-mergespillable-channel"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['lhr1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['lhr1']  = ["hdfslocal-channel"]
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['lhr1']  = ["platinumhdfs-channel"]

#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['lhr1']  = {
     "kafkasink1" => {:channel => "spillable"},
     "kafkasink2" => {:channel => "spillable"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['lhr1']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
      "photon-mergekafkasink" => {:channel => "photon-mergespillable-channel",:producer_id =>"flume-photonmerge-kafka-sink"},
}

default["flume_collector"]["endcollector_local_hdfs_sinks"]['lhr1']  = {
     "hdfslocal-sink1" => {:channel => "hdfslocal-channel",:cluster =>"emerald"},
     "hdfslocal-sink2" => {:channel => "hdfslocal-channel",:cluster =>"emerald"}
}

default["flume_collector"]["endcollector_merged_hdfs_sinks"]['lhr1']  = {
     "hdfsmerge-sink1" => {:channel => "hdfsmerge-channel",:cluster =>"emerald"},
     "hdfsmerge-sink2" => {:channel => "hdfsmerge-channel",:cluster =>"emerald"}
}

default["flume_collector"]["endcollector_platinum_hdfs_sinks"]['lhr1']  = {
     "platinumhdfs-sink1" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink2" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink4" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink5" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

######################################################### End Of LHR1 ###################################################################







######################################################### PEK1 ###################################################################
default["flume_collector"]["endcollector_local_retention_topics"]['pek1']  = "rr,egret_lambda_AdUnitBeacon_pek1_defer,egret_lambda_AdUnitBeacon_pek1_enhanced,egret_lambda_AdUnitPublisherFill_pek1_enhanced,egret_lambda_RenderCPC_pek1_enhanced,egret_lambda_RenderCPM_pek1_enhanced,egret_lambda_BillingCPC_pek1_enhanced,egret_lambda_BeaconRRDefault_pek1_enhanced,egret_lambda_BillingCPM_pek1_enhanced,egret_lambda_BillingDownload_pek1_enhanced,egret_lambda_NWClickCPC_pek1_enhanced,egret_lambda_NWClickCPM_pek1_enhanced,egret_lambda_NWClickInvalid_pek1_enhanced,egret_lambda_NonNWClickCPC_pek1_enhanced,egret_lambda_NonNWClickCPM_pek1_enhanced,egret_lambda_NonNWClickInvalid_pek1_enhanced,egret_lambda_NWClickInvalid_pek1_enhanced,dsp-beacon,beacon_rr_hkg1_cpm_render,wclick_pek1,user_context,adroit_attribution_stats,sandboxrr,sandbox_postimpression,imei_attribute_change-appd,imei_attribute_change-brand,imei_attribute_change-core,imei_attribute_change-ifc,imei_flat_activity_add-appdcustomactivity,imei_flat_activity_add-appddownloadactivity,imei_flat_activity_add-appdpurchaseactivity,imei_flat_activity_add-appds2scustomsegmentactivity,imei_flat_activity_add-coredownloadactivity,imei_flat_activity_add-ifcorganicactivity,imei_nested_activity_add-appd,imei_nested_activity_add-cas,imei_nested_activity_add-ifc,imei_nested_activity_add-network,imei_custom_type_record_update-core,imei_custom_type_record_update-ifc,imei_custom_type_record_update-ifcinorg,imei_custom_type_record_update-appdlookaliketype,imei_custom_type_record_update-appduserrenderhistory,imei_custom_type_record_update-appduserclickhistory,imei_custom_type_record_update-branduseractivityhistory,imei_profile_delete-core,imei_profile_delete-ifc,imei_profile_delete-appd,imei_profile_delete-brand,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,sdkpubreq,nwClickCpcPek1,nwClickCpmPek1,nwClickInvalidPek1,renderCpcPek1,renderCpmPek1,beaconDefaultPek1,ifcp_pek1,nested_activity_add-ifc_compressed,adroit_conversion_enhanced_pek1,nonNwClickCpcPek1,nonNwClickCpmPek1,nonNwClickInvalidPek1,_audit,fds_pek1,il-flat_activity_add-ifcorganicactivity,appd_attribute,profile_delete-appd,attribute_change-appd,attribute_change-brand,attribute_change-core,attribute_change-ifc,profile_delete-brand,profile_delete-core,profile_delete-ifc,custom_type_record_update-appduserclickhistory,custom_type_record_update-appduserrenderhistory,custom_type_record_update-appduserscore,custom_type_record_update-branduseractivityhistory,custom_type_record_update-ifc,custom_type_record_update-appdlookaliketype,custom_type_record_update-core,custom_type_record_update-ifcinorg,flat_activity_add-appdcustomactivity,flat_activity_add-appddownloadactivity,flat_activity_add-appdpurchaseactivity,flat_activity_add-appds2scustomsegmentactivity,flat_activity_add-coredownloadactivity,flat_activity_add-ifcorganicactivity,nested_activity_add-appd,nested_activity_add-cas,nested_activity_add-ifc_compressed,nested_activity_add-network,adroit_report_obj_pek1,appd_attribute_errors,appd-debug,brand_attribute_pek1_pek1,ifc_photon_nonenriched_pb_pek1,nested_activity_add-ifcuseractivity,network_attribute_raw_pek1,ttd-beacon,ttd-request,usermeta_change,wadogorr,network_beacon_pek1_pek1,network_activity_pek1_pek1,nested_activity_add-ifc,fdsPek1,georrcore,georrmetrics,napp,perfRR,supplyRR,sdk_health_monitoring,sdk_crash_analytics,sdk_response_latencies,sdk_stability_metrics,rta,adroit_san_pinger_stats,imei_usermeta_change,esS2SPek1"

default["flume_collector"]["endcollector_merge_retention_topics"]['pek1']  = "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default,network_beacon_adunit_interaction_pek1,beacon_rr_pek1_cpc_render,ifc_ff_pek1,non_network_click_cpc_pek1,non_network_click_cpm_pek1,network_click_cpc_pek1,network_click_cpm_pek1,network_click_invalid_pek1,click_rr_pek1,adroit_report_obj_pek1,billing_cpc_pek1,billing_cpm_pek1,billing_download_pek1"

default["flume_collector"]["endcollector_platinum_retention_topics"]['pek1']  = "testmerge,user_context,ifc_photon_enriched_postback,dsp-beacon,sandboxrr,sandbox_postimpression,wclick_pek1,ifc_photon_enriched_san_pb,adroit_attribution_stats,ifc_cookie_organic_activity,iapclick,adomain_meta,adroit_san_pinger_stats,perfRR"

default["flume_collector"]["endcollector_all_channels"]['pek1']  = "spillable  mergespillable hdfslocal-channel  hdfsmerge-channel platinumhdfs-channel photon-mergespillable-channel pek1-to-dfw1-push-channel hdfslocalsecure-channel hdfsmergesecure-channel platinumhdfssecure-channel hdfslocalsecure-channel2"

default["flume_collector"]["endcollector_all_sinks"]['pek1'] = "kafkasink  mergekafkasink hdfslocal-sink  hdfsmerge-sink pek1todfw1-mergekafkasink1 pek1todfw1-mergekafkasink2 pek1todfw1-mergekafkasink3 pek1todfw1-mergekafkasink4 pek1todfw1-mergekafkasink5 platinumhdfs-sink1 platinumhdfs-sink2 platinumhdfs-sink3 platinumhdfs-sink4 platinumhdfs-sink5 photon-mergekafkasink hdfsmergesecure-sink hdfslocalsecure-sink1 hdfslocalsecure-sink2 hdfslocalsecure-sink3 platinumhdfssecure-sink1 platinumhdfssecure-sink2 platinumhdfssecure-sink3 platinumhdfssecure-sink4"
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
         :channels => "hdfslocalsecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "egret_lambda_AdUnitBeacon_pek1_defer,egret_lambda_AdUnitBeacon_pek1_enhanced,egret_lambda_AdUnitPublisherFill_pek1_enhanced,egret_lambda_RenderCPC_pek1_enhanced,egret_lambda_RenderCPM_pek1_enhanced,egret_lambda_BillingCPC_pek1_enhanced,egret_lambda_BeaconRRDefault_pek1_enhanced,egret_lambda_BillingCPM_pek1_enhanced,egret_lambda_BillingDownload_pek1_enhanced,egret_lambda_NWClickCPC_pek1_enhanced,egret_lambda_NWClickCPM_pek1_enhanced,egret_lambda_NWClickInvalid_pek1_enhanced,egret_lambda_NonNWClickCPC_pek1_enhanced,egret_lambda_NonNWClickCPM_pek1_enhanced,egret_lambda_NonNWClickInvalid_pek1_enhanced,egret_lambda_NWClickInvalid_pek1_enhanced,dsp-beacon,beacon_rr_hkg1_cpm_render,wclick_pek1,adroit_attribution_stats,sandboxrr,sandbox_postimpression,imei_attribute_change-appd,imei_attribute_change-brand,imei_attribute_change-core,imei_attribute_change-ifc,imei_flat_activity_add-appdcustomactivity,imei_flat_activity_add-appddownloadactivity,imei_flat_activity_add-appdpurchaseactivity,imei_flat_activity_add-appds2scustomsegmentactivity,imei_flat_activity_add-coredownloadactivity,imei_flat_activity_add-ifcorganicactivity,imei_nested_activity_add-appd,imei_nested_activity_add-cas,imei_nested_activity_add-ifc,imei_nested_activity_add-network,imei_custom_type_record_update-core,imei_custom_type_record_update-ifc,imei_custom_type_record_update-ifcinorg,imei_custom_type_record_update-appdlookaliketype,imei_custom_type_record_update-appduserrenderhistory,imei_custom_type_record_update-appduserclickhistory,imei_custom_type_record_update-branduseractivityhistory,imei_profile_delete-core,imei_profile_delete-ifc,imei_profile_delete-appd,imei_profile_delete-brand,dcp_beacon,dcp_beacon_adunit,dcp_beacon_adunit_interaction,dcp_click,nnstudio,rtbs_beacon,rtbs_click,sdk_metrics,cas_rr,rtbd_ads,cas_ads,splash,carb_user_relevance,sdkpubreq,nwClickCpcPek1,nwClickCpmPek1,nwClickInvalidPek1,renderCpcPek1,renderCpmPek1,beaconDefaultPek1,ifcp_pek1,nested_activity_add-ifc_compressed,adroit_conversion_enhanced_pek1,nonNwClickCpcPek1,nonNwClickCpmPek1,nonNwClickInvalidPek1,_audit,fds_pek1,appd_attribute,sdk_response_latencies,sdk_stability_metrics,rta,adroit_san_pinger_stats"},
    "hdfslocalsrc2" => {
         :src_category => "hdfslocal",
         :consumer_group => "pek1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
         :'kafka.topics' => "rr"},
    "hdfslocalsrc3" => {
         :src_category => "hdfslocal",
         :consumer_group => "pek1hdfslocal",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfslocalsecure-channel2",
         :batchSize => 500,
         :'kafka.topics' => "rr"},
     "hdfsmergesrc" => {
         :src_category => "hdfsmerge",
         :consumer_group => "pek1hdfsmerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "hdfsmergesecure-channel",
         :batchSize => 500,
         :'kafka.topics' => "merge_beacon_rr_pek1_cpm_render,merge_network_beacon_pek1_adunit,merge_network_beacon_pek1_publisherfill,merge_beacon_rr_pek1_default,merge_network_beacon_adunit_interaction_pek1,merge_beacon_rr_pek1_cpc_render,merge_ifc_ff_pek1,merge_non_network_click_cpc_pek1,merge_non_network_click_cpm_pek1,merge_network_click_cpc_pek1,merge_network_click_cpm_pek1,merge_network_click_invalid_pek1,merge_click_rr_pek1,merge_adroit_report_obj_pek1,merge_billing_cpc_pek1,merge_billing_cpm_pek1,merge_billing_download_pek1"},
     "pek1todfw1pushsrc" => {
         :src_category => "pek1todfw1kafkamerge",
         :consumer_group => "pek1-to-dfw1-kafkapush",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "pek1-to-dfw1-push-channel",
         :batchSize => 500,
         :'kafka.topics' => "billable_render_pek1"},
     "dfw1kafkamergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default,network_beacon_adunit_interaction_pek1,beacon_rr_pek1_cpc_render,ifc_ff_pek1,non_network_click_cpc_pek1,non_network_click_cpm_pek1,network_click_cpc_pek1,network_click_cpm_pek1,network_click_invalid_pek1,click_rr_pek1,datasciences-attributes_pek1,adroit_report_obj_pek1,billing_cpc_pek1,billing_cpm_pek1,billing_download_pek1,appd_install_events_pek1"},
     "pek1kafkamergesrc" => {
         :src_category => "pek1kafkamerge",
         :consumer_group => "pek1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default,network_beacon_adunit_interaction_pek1,beacon_rr_pek1_cpc_render,ifc_ff_pek1,non_network_click_cpc_pek1,non_network_click_cpm_pek1,network_click_cpc_pek1,network_click_cpm_pek1,network_click_invalid_pek1,click_rr_pek1"},
     "dfw2kafkamergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
         :'kafka.topics' => "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default,network_beacon_adunit_interaction_pek1,beacon_rr_pek1_cpc_render,ifc_ff_pek1,non_network_click_cpc_pek1,non_network_click_cpm_pek1,network_click_cpc_pek1,network_click_cpm_pek1,network_click_invalid_pek1,click_rr_pek1"},
     "ams1kafkamergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "mergespillable",
         :batchSize => 500,
	 :'kafka.topics' => "beacon_rr_pek1_cpm_render,network_beacon_pek1_adunit,network_beacon_pek1_publisherfill,beacon_rr_pek1_default,network_beacon_adunit_interaction_pek1,beacon_rr_pek1_cpc_render,ifc_ff_pek1,non_network_click_cpc_pek1,non_network_click_cpm_pek1,network_click_cpc_pek1,network_click_cpm_pek1,network_click_invalid_pek1,click_rr_pek1"},
     "dfw1photonmergesrc" => {
         :src_category => "dfw1kafkamerge",
         :consumer_group => "dfw1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
         :'kafka.topics' => "appd_attribute_pek1,appd_custom_type_pek1,appd_flat_activity_pek1,audience-attributes_pek1,brand_attributes_pek1,cas_nested_activity_pek1,ifc_activity_pek1,ifc_attributes_pek1,ifc_organic_activity_pek1,network_activity_pek1,network_beacon_pek1,network_billing_pek1,network_click_pek1,network_conversion_pek1,network_render_cpc_pek1,network_attribute_pek1,profile_delete_pek1,network_render_cpm_pek1,photon_appd_flat_activity_pek1,photon_optout_pek1,pso-attributes_pek1,users_right_to_be_forgotten_pek1"},
     "ams1photonmergesrc" => {
         :src_category => "ams1kafkamerge",
         :consumer_group => "ams1-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
         :'kafka.topics' => "appd_attribute_pek1,appd_custom_type_pek1,appd_flat_activity_pek1,audience-attributes_pek1,brand_attributes_pek1,cas_nested_activity_pek1,ifc_activity_pek1,ifc_attributes_pek1,ifc_organic_activity_pek1,network_activity_pek1,network_beacon_pek1,network_billing_pek1,network_click_pek1,network_conversion_pek1,network_render_cpc_pek1,network_attribute_pek1,profile_delete_pek1,network_render_cpm_pek1,photon_appd_flat_activity_pek1,photon_optout_pek1,pso-attributes_pek1"},
     "dfw2photonmergesrc" => {
         :src_category => "dfw2kafkamerge",
         :consumer_group => "dfw2-to-pek1-kafkamerge",
         :type => "org.apache.flume.source.kafka.MultiKafkaSource",
         :channels => "photon-mergespillable-channel",
         :batchSize => 500,
         :'kafka.topics' => "appd_attribute_pek1,appd_custom_type_pek1,appd_flat_activity_pek1,audience-attributes_pek1,brand_attributes_pek1,cas_nested_activity_pek1,ifc_activity_pek1,ifc_attributes_pek1,ifc_organic_activity_pek1,network_activity_pek1,network_beacon_pek1,network_billing_pek1,network_click_pek1,network_conversion_pek1,network_render_cpc_pek1,network_attribute_pek1,profile_delete_pek1,network_render_cpm_pek1,photon_appd_flat_activity_pek1,photon_optout_pek1,pso-attributes_pek1"},
       }

#Configure the channels for the Flume Collector
default["flume_collector"]["endcollector_normal_avroreceive_channels"]['pek1']  = ["spillable"]
default["flume_collector"]["endcollector_merge_avroreceive_channels"]['pek1']  = ["mergespillable","photon-mergespillable-channel", "pek1-to-dfw1-push-channel"]
default["flume_collector"]["endcollector_local_hdfs_channels"]['pek1']  = ["hdfslocal-channel"]
default["flume_collector"]["endcollector_merge_hdfs_channels"]['pek1']  = ["hdfsmerge-channel"]
default["flume_collector"]["endcollector_platinum_hdfs_channels"]['pek1']  = ["platinumhdfs-channel"]


#Configure the sinks for the Flume Collector
default["flume_collector"]["endcollector_normal_kafka_sinks"]['pek1']  = {
     "kafkasink" => {:channel => "spillable"}
}


default["flume_collector"]["endcollector_merged_kafka_sinks"]['pek1']  = {
     "mergekafkasink" => {:channel => "mergespillable",:producer_id =>"flume-merge-kafka-sink"},
     "photon-mergekafkasink" => {:channel => "photon-mergespillable-channel",:producer_id =>"flume-photonmerge-kafka-sink"},
}

default["flume_collector"]["endcollector_pek1todfw1_merged_kafka_sinks"]['pek1']  = {
     "pek1todfw1-mergekafkasink1" => {:channel => "pek1-to-dfw1-push-channel",:producer_id =>"flume-pek1todfw1merge-kafka-sink"},
     "pek1todfw1-mergekafkasink2" => {:channel => "pek1-to-dfw1-push-channel",:producer_id =>"flume-pek1todfw1merge-kafka-sink"},
     "pek1todfw1-mergekafkasink3" => {:channel => "pek1-to-dfw1-push-channel",:producer_id =>"flume-pek1todfw1merge-kafka-sink"},
     "pek1todfw1-mergekafkasink4" => {:channel => "pek1-to-dfw1-push-channel",:producer_id =>"flume-pek1todfw1merge-kafka-sink"},
     "pek1todfw1-mergekafkasink5" => {:channel => "pek1-to-dfw1-push-channel",:producer_id =>"flume-pek1todfw1merge-kafka-sink"},
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
     "platinumhdfs-sink3" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink4" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"},
     "platinumhdfs-sink5" => {:channel => "platinumhdfs-channel",:cluster =>"platinum",:ispromoter =>"false"}
}

default["flume_collector"]["endcollector_local_secure_hdfs_sinks"]['pek1']  = {
     "hdfslocalsecure-sink1" => {:channel => "hdfslocalsecure-channel",:cluster =>"pyrite"}
}

default["flume_collector"]["endcollector_local_secure_hdfs_sinks"]['pek1']  = {
     "hdfslocalsecure-sink2" => {:channel => "hdfslocalsecure-channel2",:cluster =>"pyrite",:ispromoter =>"false"},
     "hdfslocalsecure-sink3" => {:channel => "hdfslocalsecure-channel2",:cluster =>"pyrite",:ispromoter =>"false"}
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
default["flume_collector"]["endcollector_local_secure_hdfs_channels"]['pek1']  = ["hdfslocalsecure-channel","hdfslocalsecure-channel2"]
default["flume_collector"]["endcollector_platinum_secure_hdfs_channels"]['pek1']  = ["platinumhdfssecure-channel"]

######################################################### End Of PEK1 ###################################################################

