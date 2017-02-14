default['hdp']['version']='2.2.4.2-2'
default['zookeeper']['zookeeper_version'] = '3.4.6.2.2.4.2-2'
default['zookeeper']['scribescripts'] = '0.0.8-1350543662'
default['zookeeper']['zookeeper_startup_version'] = '2.6.2.2.4.2-2-inm-5'

default['zookeeper']['quorum']['uh1'] =  {'1' => 'krkf4002','2' => 'krkf4003','3' => 'krkf4004','4' => 'krkf4001','5' => 'krkf4005'}
default['zookeeper']['quorum']['hkg1'] =  {'1' => 'opkf4002','2' => 'opkf4003','3' => 'opkf4004','4' => 'opkf4001','5' => 'opkf4005'}
default['zookeeper']['quorum']['lhr1'] =  {'1' => 'erkf4002','2' => 'erkf4003','3' => 'erkf4004','4' => 'erkf4001','5' => 'erkf4005'}
default['zookeeper']['quorum']['dfw1'] =  {'1' => 'oxkf4001','2' => 'oxkf4002','3' => 'oxkf4003','4' => 'oxkf4008','5' => 'oxkf4009'}
default['zookeeper']['quorum']['pek1'] =  {'1' => 'pykf4001','2' => 'pykf4002','3' => 'pykf4003','4' => 'pykf4004','5' => 'pykf4005'}
default['zookeeper']['log_dir'] = '/var/log/zookeeper'
default['zookeeper']['lib_dir'] = '/var/lib/zookeeper'
default['cluster_name'] = {'uh1' => 'UH1_Krypton', 'hkg1' => 'HKG1_Opal', 'lhr1' => 'LHR1_Emerald', 'dfw1' => 'DFW1_Onyx', 'pek1' => 'PEK1_Pyrite'}
