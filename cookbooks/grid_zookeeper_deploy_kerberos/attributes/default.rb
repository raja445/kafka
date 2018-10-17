default['hdp']['version']='2.2.4.2-2'
default['zookeeper']['zookeeper_version'] = '3.4.6.2.2.4.2-2'
default['zookeeper']['scribescripts'] = '0.0.8-1350543662'
default['zookeeper']['zookeeper_startup_version'] = '2.6.2.2.4.2-2-inm-5'

default['zookeeper']['quorum']['lhr1'] =  {'1' => 'erkf4002','2' => 'erkf4003','3' => 'erkf4004','4' => 'erkf4001','5' => 'erkf4005'}
default['zookeeper']['quorum']['dfw1'] =  {'1' => 'oxkf4001','2' => 'oxkf4002','3' => 'oxkf4003','4' => 'oxkf4008','5' => 'oxkf4009'}
default['zookeeper']['quorum']['pek1'] =  {'1' => 'pykf4001','2' => 'pykf4002','3' => 'pykf4003','4' => 'pykf4004','5' => 'pykf4005'}
default['zookeeper']['quorum']['dfw2'] =  {'1' => 'gakf4001','2' => 'gakf4002','3' => 'gakf4003','4' => 'gakf4004','5' => 'gakf4005'}
default['zookeeper']['quorum']['ams1'] =  {'1' => 'azkf4001','2' => 'azkf4002','3' => 'azkf4003','4' => 'azkf4004','5' => 'azkf4005'}
default['zookeeper']['quorum']['maa1'] =  {'1' => 'azkf4001','2' => 'azkf4002','3' => 'azkf4003','4' => 'azkf4004','5' => 'azkf4005'}
default['zookeeper']['log_dir'] = '/var/log/zookeeper'
default['zookeeper']['lib_dir'] = '/var/lib/zookeeper'
default['cluster_name'] = { 'lhr1' => 'LHR1_Emerald', 'dfw1' => 'DFW1_Onyx', 'pek1' => 'pek1-pyrite' , 'dfw2' => 'dfw2-garnet' , 'ams1' => 'ams1-azurite' , 'maa1' => 'maa1-beryl'}
