default['kafkaMirroring']['instanceid']['uh1']={ "krkf4013" => 1}
default['kafkaMirroring']['instanceid']['dfw1']={ "oxkm4004" => 1}
default['kafkaMirroring']['collectorid']['uh1']='uh1collector'
default['kafkaMirroring']['collectorid']['dfw1']='staging'
default['kafkaMirroring']['version']= '0.5.93'
default['kafkaMirroringConfig']['version']= '0.5.93'
default['kafkaMirroring']['staging_dir']= '/data/kafka/staging'
default['kafkaMirroring']['log_dir']= '/var/log/kafkamirroring'
default['kafkaMirroring']['offset_dir']= '/data/inmobi/kafkamirroring/offsets'
default['kafkaMirroring']['spool_dir']= '/data/inmobi/kafkamirroring/spooling'
default['kafkaMirroringConfig']['prodconf']= '/opt/inmobi/config/KafkaMirroringConfig/prod/'
default['kafkaMirroringConfig']['confighome']= '/opt/inmobi/config/KafkaMirroringConfig/'
default['kafkaSupervisorConfig']['confighome']= '/etc/supervisor/conf.d'
