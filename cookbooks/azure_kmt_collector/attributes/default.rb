default['kafkaMirroring']['instanceid']['lhr1']={ "skyhook-fl3" => 1}
default['kafkaMirroring']['collectorid']['lhr1']='lhr1collector'
default['kafkaMirroring']['hdfsid']['lhr1']='azure'
default['kafkaMirroring']['version']= '0.6.23'
default['kafkaMirroringConfig']['version']= '0.6.23'
default['kafkaMirroring']['staging_dir']= '/data/kafka/staging'
default['kafkaMirroring']['log_dir']= '/var/log/kafkamirroring'
default['kafkaMirroring']['offset_dir']= '/data/inmobi/kafkamirroring/offsets'
default['kafkaMirroring']['spool_dir']= '/data/inmobi/kafkamirroring/spooling'
default['kafkaMirroringConfig']['prodconf']= '/opt/inmobi/config/KafkaMirroringConfig/prod/'
default['kafkaMirroringConfig']['confighome']= '/opt/inmobi/config/KafkaMirroringConfig/'
default['kafkaSupervisorConfig']['confighome']= '/etc/supervisor/conf.d'