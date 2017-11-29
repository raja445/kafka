default['kafkaMirroring']['instanceid']['uh1']={ "krkf4013" => 1}
default['kafkaMirroring']['instanceid']['dfw1']={ "oxkm4002" => 1}
default['kafkaMirroring']['instanceid']['lhr1']={ "erkf4013" => 1}
default['kafkaMirroring']['instanceid']['pek1']={ "pykm4001" => 1}
default['kafkaMirroring']['instanceid']['dfw2']={ "gafl4001" => 1}
default['kafkaMirroring']['collectorid']['uh1']='uh1collector'
default['kafkaMirroring']['collectorid']['dfw1']='dfw1collector'
default['kafkaMirroring']['collectorid']['lhr1']='lhr1collector'
default['kafkaMirroring']['collectorid']['pek1']='pek1collector'
default['kafkaMirroring']['collectorid']['dfw2']='dfw2collector'
default['kafkaMirroring']['hdfsid']['uh1']='krypton'
default['kafkaMirroring']['hdfsid']['dfw1']='onyx'
default['kafkaMirroring']['hdfsid']['lhr1']='emerald'
default['kafkaMirroring']['hdfsid']['pek1']='pyrite'
default['kafkaMirroring']['hdfsid']['dfw2']='garnet'
default['kafkaMirroring']['version']= '0.6.13'
default['kafkaMirroringConfig']['version']= '0.6.13'
default['kafkaMirroring']['staging_dir']= '/data/kafka/staging'
default['kafkaMirroring']['log_dir']= '/var/log/kafkamirroring'
default['kafkaMirroring']['offset_dir']= '/data/inmobi/kafkamirroring/offsets'
default['kafkaMirroring']['spool_dir']= '/data/inmobi/kafkamirroring/spooling'
default['kafkaMirroringConfig']['prodconf']= '/opt/inmobi/config/KafkaMirroringConfig/prod/'
default['kafkaMirroringConfig']['confighome']= '/opt/inmobi/config/KafkaMirroringConfig/'
default['kafkaSupervisorConfig']['confighome']= '/etc/supervisor/conf.d'
