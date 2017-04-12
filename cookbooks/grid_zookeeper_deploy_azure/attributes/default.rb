default['hdp']['version']='2.2.4.2-2'
default['zookeeper']['zookeeper_version'] = '3.4.6.2.2.4.2-2'
default['zookeeper']['scribescripts'] = '0.0.8-1350543662'
default['zookeeper']['zookeeper_startup_version'] = '2.6.2.2.4.2-2-inm-5'

default['zookeeper']['quorum']['lhr1'] =  {'1' => 'skyhook-kf1','2' => 'skyhook-kf2','3' => 'skyhook-kf3','4' => 'skyhook-kf4','5' => 'skyhook-kf5'}
default['zookeeper']['log_dir'] = '/var/log/zookeeper'
default['zookeeper']['lib_dir'] = '/var/lib/zookeeper'
default['cluster_name'] = {'lhr1' => 'lhr1-azure'}
