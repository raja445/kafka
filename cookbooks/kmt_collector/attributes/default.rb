default['kafkaMirroring']['instanceid']['uh1']={ "krkf4013" => 1}
default['kafkaMirroring']['instanceid']['dfw1']={ "oxkm4002" => 1}
default['kafkaMirroring']['instanceid']['lhr1']={ "erkf4013" => 1}
default['kafkaMirroring']['instanceid']['hkg1']={ "opkf4013" => 1}
default['kafkaMirroring']['collectorid']['uh1']='uh1collector'
default['kafkaMirroring']['collectorid']['dfw1']='dfw1collector'
default['kafkaMirroring']['collectorid']['lhr1']='lhr1collector'
default['kafkaMirroring']['collectorid']['hkg1']='hkg1collector'
default['kafkaMirroring']['hdfsid']['uh1']='krypton'
default['kafkaMirroring']['hdfsid']['dfw1']='onyx'
default['kafkaMirroring']['hdfsid']['lhr1']='emerald'
default['kafkaMirroring']['hdfsid']['hkg1']='opal'
default['kafkaMirroring']['version']= '0.5.93'
default['kafkaMirroringConfig']['version']= '0.5.93'
default['kafkaMirroring']['staging_dir']= '/data/kafka/staging'
default['kafkaMirroring']['log_dir']= '/var/log/kafkamirroring'
default['kafkaMirroring']['offset_dir']= '/data/inmobi/kafkamirroring/offsets'
default['kafkaMirroring']['spool_dir']= '/data/inmobi/kafkamirroring/spooling'
default['kafkaMirroringConfig']['prodconf']= '/opt/inmobi/config/KafkaMirroringConfig/prod/'
default['kafkaMirroringConfig']['confighome']= '/opt/inmobi/config/KafkaMirroringConfig/'
default['kafkaSupervisorConfig']['confighome']= '/etc/supervisor/conf.d'
