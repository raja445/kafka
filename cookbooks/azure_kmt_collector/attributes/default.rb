default['kafkaMirroring']['instanceid']['uh1']={ "krkf4013" => 1}
default['kafkaMirroring']['instanceid']['dfw1']={ "oxkm4002" => 1}
default['kafkaMirroring']['instanceid']['lhr1']={ "erkf4013" => 1}
default['kafkaMirroring']['instanceid']['hkg1']={ "opkf4013" => 1, "opkf4015" => 2}
default['kafkaMirroring']['instanceid']['pek1']={ "pykm4001" => 1}
default['kafkaMirroring']['collectorid']['lhr1']='lhr1collector'
default['kafkaMirroring']['hdfsid']['lhr1']='azure'
default['kafkaMirroring']['version']= '0.6.13'
default['kafkaMirroringConfig']['version']= '0.6.13'
default['kafkaMirroring']['staging_dir']= '/data/kafka/staging'
default['kafkaMirroring']['log_dir']= '/var/log/kafkamirroring'
default['kafkaMirroring']['offset_dir']= '/data/inmobi/kafkamirroring/offsets'
default['kafkaMirroring']['spool_dir']= '/data/inmobi/kafkamirroring/spooling'
default['kafkaMirroringConfig']['prodconf']= '/opt/inmobi/config/KafkaMirroringConfig/prod/'
default['kafkaMirroringConfig']['confighome']= '/opt/inmobi/config/KafkaMirroringConfig/'
default['kafkaSupervisorConfig']['confighome']= '/etc/supervisor/conf.d'
