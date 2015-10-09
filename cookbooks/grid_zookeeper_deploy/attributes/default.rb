default['hdp']['version']='2.2.4.2-2'
default['zookeeper']['zookeeper_version'] = '3.4.6.2.2.4.2-2'
default['zookeeper']['zookeeper_startup_version'] = '2.6.2.2.4.2-2-inm-5'

default['zookeeper']['quorum']['uj1'] =  {'1' => 'tzkf4005','2' => 'tzkf4006','3' => 'tzkf4007'}
default['zookeeper']['quorum']['uh1'] =  {'1' => 'krkf4002','2' => 'krkf4003','3' => 'krkf4004'}
default['zookeeper']['quorum']['hkg1'] =  {'1' => 'opkf4002','2' => 'opkf4003','3' => 'opkf4004'}
default['zookeeper']['quorum']['lhr1'] =  {'1' => 'erkf4002','2' => 'erkf4003','3' => 'erkf4004'}
default['zookeeper']['log_dir'] = '/var/log/zookeeper'
default['zookeeper']['lib_dir'] = '/var/lib/zookeeper'
default['cluster_name'] = {'uj1'=> 'UJ1_Topaz', 'uh1' => 'UH1_Krypton', 'hkg1' => 'HKG1_Opal', 'lhr1' => 'LHR1_Emerald'}
