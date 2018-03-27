# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default

cluster_colo = node['domain'].split(".")[-3]

default["kafka"]["user"] = "kafka"
default["kafka"]["group"] = "kafka"

default["kafka"]["scala_version"] = "2.11"
default["kafka"]["version"] = "0.10.2.1"
#default["kafka"]["download_url"] = "http://www-us.apache.org/dist/kafka"
default["kafka"]["download_url"] = "http://plgw4001.grid.dfw1.inmobi.com/kafka"

default["kafka"]["base_dir"]  = "/opt/inmobi"
default["kafka"]["log_dir"] = "/var/log/kafka"

# Set Log file for kafka init script stdout/stderr
default["kafka"]["service"]["stdout"] = File.join node["kafka"]["log_dir"], "kafka_init_stdout.log"
default["kafka"]["service"]["stderr"] = File.join node["kafka"]["log_dir"], "kafka_init_stderr.log"

#hack for pek1
default['kafkadisks']['mounts']="/data/d1/kafka,/data/d2/kafka,/data/d3/kafka,/data/d4/kafka,/data/d5/kafka,/data/d6/kafka"
# These are required to be supplied by the consumer so setting to nil

default["kafka"]["brokers"]["dfw1"] = ["oxkf4001.grid.dfw1.inmobi.com","oxkf4002.grid.dfw1.inmobi.com","oxkf4003.grid.dfw1.inmobi.com","oxkf4008.grid.dfw1.inmobi.com","oxkf4009.grid.dfw1.inmobi.com","oxkf4010.grid.dfw1.inmobi.com","oxkf4011.grid.dfw1.inmobi.com","oxkf4012.grid.dfw1.inmobi.com","oxkf4013.grid.dfw1.inmobi.com","oxkf4014.grid.dfw1.inmobi.com","oxkf4015.grid.dfw1.inmobi.com","oxkf4016.grid.dfw1.inmobi.com","oxkf4017.grid.dfw1.inmobi.com","oxkf4018.grid.dfw1.inmobi.com","oxkf4019.grid.dfw1.inmobi.com","oxkf4020.grid.dfw1.inmobi.com","oxkf4021.grid.dfw1.inmobi.com","oxkf4022.grid.dfw1.inmobi.com","oxkf4023.grid.dfw1.inmobi.com","oxkf4024.grid.dfw1.inmobi.com","oxkf4025.grid.dfw1.inmobi.com","oxkf4026.grid.dfw1.inmobi.com","oxkf4027.grid.dfw1.inmobi.com","oxkf4028.grid.dfw1.inmobi.com","oxkf4029.grid.dfw1.inmobi.com","oxkf4030.grid.dfw1.inmobi.com","oxkf4031.grid.dfw1.inmobi.com","oxkf4032.grid.dfw1.inmobi.com","oxkf4033.grid.dfw1.inmobi.com","oxkf4034.grid.dfw1.inmobi.com"]
default["kafka"]["zookeepers"]["dfw1"] = ["kafka-zookeeper-1.grid.dfw1.inmobi.com:2181","kafka-zookeeper-2.grid.dfw1.inmobi.com:2181","kafka-zookeeper-3.grid.dfw1.inmobi.com:2181","kafka-zookeeper-4.grid.dfw1.inmobi.com:2181","kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"]
default['kafka']['mrelay']['dfw1'] = "metrics-relay.grid.dfw1.inmobi.com"

default["kafka"]["brokers"]["pek1"] = ["pykf4001.grid.pek1.inmobi.com","pykf4002.grid.pek1.inmobi.com","pykf4003.grid.pek1.inmobi.com","pykf4004.grid.pek1.inmobi.com", "pykf4005.grid.pek1.inmobi.com","pykf4006.grid.pek1.inmobi.com","pykf4007.grid.pek1.inmobi.com","pykf4008.grid.pek1.inmobi.com","pykf4009.grid.pek1.inmobi.com","pykf4010.grid.pek1.inmobi.com"]
default["kafka"]["zookeepers"]["pek1"] = ["kafka-zookeeper-1.grid.pek1.inmobi.com:2181","kafka-zookeeper-2.grid.pek1.inmobi.com:2181","kafka-zookeeper-3.grid.pek1.inmobi.com:2181","kafka-zookeeper-4.grid.pek1.inmobi.com:2181","kafka-zookeeper-5.grid.pek1.inmobi.com:2181"]
default['kafka']['mrelay']['pek1'] = "metrics-relay.grid.pek1.inmobi.com"

#default["kafka"]["brokers"]["pek1"] = ["krb3001.grid.pek1.inmobi.com","krb3002.grid.pek1.inmobi.com","krb3003.grid.pek1.inmobi.com"]
#default["kafka"]["zookeepers"]["pek1"] = ["krb3001.grid.pek1.inmobi.com:2181","krb3002.grid.pek1.inmobi.com:2181","krb3003.grid.pek1.inmobi.com:2181"]
#default['kafka']['mrelay']['pek1'] = "metrics-relay.grid.pek1.inmobi.com"

default["kafka"]["brokers"]["dfw2"] = ["gakf4001.grid.dfw2.inmobi.com","gakf4002.grid.dfw2.inmobi.com","gakf4003.grid.dfw2.inmobi.com","gakf4004.grid.dfw2.inmobi.com","gakf4005.grid.dfw2.inmobi.com","gakf4006.grid.dfw2.inmobi.com","gakf4007.grid.dfw2.inmobi.com","gakf4008.grid.dfw2.inmobi.com","gakf4009.grid.dfw2.inmobi.com","gakf4010.grid.dfw2.inmobi.com","gagw4001.grid.dfw2.inmobi.com"]
default["kafka"]["zookeepers"]["dfw2"] = ["kafka-zookeeper-1.grid.dfw2.inmobi.com:2181","kafka-zookeeper-2.grid.dfw2.inmobi.com:2181","kafka-zookeeper-3.grid.dfw2.inmobi.com:2181","kafka-zookeeper-4.grid.dfw2.inmobi.com:2181","kafka-zookeeper-5.grid.dfw2.inmobi.com:2181"]
default['kafka']['mrelay']['dfw2'] = "metrics-relay.grid.dfw2.inmobi.com"

default["kafka"]["brokers"]["ams1"] = ["azkf4001.grid.ams1.inmobi.com","azkf4002.grid.ams1.inmobi.com","azkf4003.grid.ams1.inmobi.com","azkf4004.grid.ams1.inmobi.com","azkf4005.grid.ams1.inmobi.com","azkf4006.grid.ams1.inmobi.com","azkf4007.grid.ams1.inmobi.com","azkf4008.grid.ams1.inmobi.com","azkf4009.grid.ams1.inmobi.com","azkf4010.grid.ams1.inmobi.com","azkf4011.grid.ams1.inmobi.com","azkf4012.grid.ams1.inmobi.com","azkf4013.grid.ams1.inmobi.com","azkf4014.grid.ams1.inmobi.com","azkf4015.grid.ams1.inmobi.com","azkf4016.grid.ams1.inmobi.com","azkf4017.grid.ams1.inmobi.com","azkf4018.grid.ams1.inmobi.com"]
default["kafka"]["zookeepers"]["ams1"] = ["kafka-zookeeper-1.grid.ams1.inmobi.com:2181","kafka-zookeeper-2.grid.ams1.inmobi.com:2181","kafka-zookeeper-3.grid.ams1.inmobi.com:2181","kafka-zookeeper-4.grid.ams1.inmobi.com:2181","kafka-zookeeper-5.grid.ams1.inmobi.com:2181"]
default['kafka']['mrelay']['ams1'] = "metrics-relay.grid.ams1.inmobi.com"

default["kafka"]["shutdown_timeout"] = 80     # init.d script shutdown time-out in seconds
default["kafka"]["env_vars"]["JMX_PORT"] = "9999"
default["kafka"]["env_vars"]["KAFKA_HEAP_OPTS"] = "\"-Xmx8G -Xms8G\""
default["kafka"]["env_vars"]["KAFKA_OPTS"] = "\"-Djava.security.auth.login.config=/opt/inmobi/kafka/config/kafka_server_jaas.conf\""
default["kafka"]["env_vars"]["KAFKA_JVM_PERFORMANCE_OPTS"] = "\"-XX:MaxDirectMemorySize=2G -XX:+UseG1GC -XX:MaxGCPauseMillis=20 -XX:InitiatingHeapOccupancyPercent=35\""
default["kafka"]["lib_jars"] = []

default["kafka"]["server.properties"]["port"] = 9093
default["kafka"]["server.properties"]["num.partitions"] = 10
default["kafka"]["server.properties"]["default.replication.factor"] = 3
default["kafka"]["server.properties"]["log.flush.interval.messages"] = 40000
default["kafka"]["server.properties"]["log.flush.interval.ms"] = 120000
default["kafka"]["server.properties"]["log.retention.hours"] = 48
default["kafka"]["server.properties"]["log.roll.hours"] = 1
default["kafka"]["server.properties"]["log.retention.check.interval.ms"] = 300000
default["kafka"]["server.properties"]["num.replica.fetchers"] = 12
default["kafka"]["server.properties"]["replica.fetch.wait.max.ms"] = 500
default["kafka"]["server.properties"]["leader.imbalance.check.interval.seconds"] = 120
default["kafka"]["server.properties"]["replica.lag.max.messages"] = 10000
default["kafka"]["server.properties"]["auto.leader.rebalance.enable"] = true
default["kafka"]["server.properties"]["num.network.threads"] = 12
default["kafka"]["server.properties"]["delete.topic.enable"] = true
default["kafka"]["server.properties"]["controlled.shutdown.enable"] = true
default["kafka"]["server.properties"]["auto.create.topics.enable"] = false
if cluster_colo == 'ams1'
  default["kafka"]["server.properties"]["num.recovery.threads.per.data.dir"] = 72
else
  default["kafka"]["server.properties"]["num.recovery.threads.per.data.dir"] = 12
end

default["kafka"]["server.properties"]["zookeeper.connection.timeout.ms"] = 20000
default["kafka"]["server.properties"]["zookeeper.session.timeout.ms"] = 20000
default["kafka"]["server.properties"]["inter.broker.protocol.version"] = '0.10.2'
default["kafka"]["server.properties"]["log.message.format.version"] = '0.8.2'
default["kafka"]["server.properties"]["offsets.retention.minutes"] = 3060

#------------Kerberos Related Changes------------------

default["kafka"]["kerberos"]["enable"] = "true"
default["kafka"]["kerberos"]["keytab"] = "/etc/security/keytabs/kafka.service.keytab"
default["kafka"]["kerberos"]["realm"] = "PROD.INMOBI.COM"
default["kafka"]["kerberos"]["principal"] = "#{node["kafka"]["user"]}/#{node["fqdn"]}@#{node["kafka"]["kerberos"]["realm"]}"

# Jaas configuration parameters for KafkaServer
default["kafka"]["kerberos"]["krb5_properties"]["server"]["useKeyTab"] = "true"
default["kafka"]["kerberos"]["krb5_properties"]["server"]["storeKey"] = "true"
default["kafka"]["kerberos"]["krb5_properties"]["server"]["useTicketCache"] = "false"

# Jaas configuration parameters for KafkaClient
default["kafka"]["kerberos"]["krb5_properties"]["client"]["useTicketCache"] = "true"
default["kafka"]["kerberos"]["krb5_properties"]["client"]["renewTicket"] = "true"

# Jaas configuration parameters for Zoo Keeper Client.
default["kafka"]["kerberos"]["enable_zk"] = "true"
default["kafka"]["kerberos"]["zk_krb5_properties"]["useKeyTab"] = "true"
default["kafka"]["kerberos"]["zk_krb5_properties"]["storeKey"] = "true"

# This should match the principal name of the Kafka brokers which is kafka/datanode1001.grid.ev1.inmobi.com@INMOBI.COM
default["kafka"]["server.properties"]["sasl.kerberos.service.name"] = 'kafka'

# SASL_PLAINTEXT://host.name:port if you leave host.name empty it will bind to 0.0.0.0
default["kafka"]["server.properties"]["listeners"] = 'PLAINTEXT://:9099,SASL_PLAINTEXT://:9093'

# Kafka brokers to authenticate each other using SASL
####default["kafka"]["server.properties"]["security.inter.broker.protocol"] = 'SASL_PLAINTEXT'

# Kafka brokers to authenticate each other using SASL
default["kafka"]["server.properties"]["security.inter.broker.protocol"] = 'SASL_PLAINTEXT'
default["kafka"]["server.properties"]["sasl.mechanism.inter.broker.protocol"] = 'GSSAPI'

# SASL mechanisms enabled in the Kafka server
default["kafka"]["server.properties"]["sasl.enabled.mechanisms"] = 'GSSAPI'

# Protocol used to communicate with brokers. Valid values are: PLAINTEXT, SSL, SASL_PLAINTEXT, SASL_SSL.
default["kafka"]["server.properties"]["security.protocol"] = 'SASL_PLAINTEXT'

# authorizer class that should be used for authorization
default["kafka"]["server.properties"]["authorizer.class.name"] = 'kafka.security.auth.SimpleAclAuthorizer'
default["kafka"]["server.properties"]["super.users"] = 'User:kafka'
default["kafka"]["server.properties"]["allow.everyone.if.no.acl.found"] = 'true'

# Kafka acls are defined in the general format of "Principal P is [Allowed/Denied] Operation O From Host H On Resource R". 
# By default, if a Resource R has no associated acls, no one other than super users is allowed to access R
# This is to be overrriden below.
#default["kafka"]["server.properties"]["allow.everyone.if.no.acl.found"] = 'true'

# translation from principal to user name has to be configured, which is defined as follows.
default["kafka"]["server.properties"]["principal.to.local.class"] = 'kafka.security.auth.KerberosPrincipalToLocal'
default["kafka"]["server.properties"]["sasl.kerberos.principal.to.local.rules"] = 'RULE:[1:$1@$0](ambari-qa@PROD.INMOBI.COM)s/.*/ambari-qa/,RULE:[1:$1@$0](hdfs@PROD.INMOBI.COM)s/.*/hdfs/,RULE:[1:$1@$0](.*@PROD.INMOBI.COM)s/@.*//, RULE:[2:$1@$0](dn@PROD.INMOBI.COM)s/.*/hdfs/,RULE:[2:$1@$0](jhs@PROD.INMOBI.COM)s/.*/mapred/,RULE:[2:$1@$0](jn@PROD.INMOBI.COM)s/.*/hdfs/,RULE:[2:$1@$0](nm@PROD.INMOBI.COM)s/.*/yarn/,RULE:[2:$1@$0](nn@PROD.INMOBI.COM)s/.*/hdfs/,RULE:[2:$1@$0](oozie@PROD.INMOBI.COM)s/.*/oozie/,RULE:[3:$1@$0](rm@PROD.INMOBI.COM)s/.*/yarn/,RULE:[2:$1@$0](yarn@PROD.INMOBI.COM)s/.*/yarn/,RULE:[2:$1@$0](kafka@PROD.INMOBI.COM)s/.*/kafka/,DEFAULT'

# Consumber Properties files to enable SASL 
default["kafka"]["consumer.properties"]["security.protocol"] = 'SASL_PLAINTEXT'
default["kafka"]["consumer.properties"]["sasl.mechanism"] = 'GSSAPI'
default["kafka"]["consumer.properties"]["sasl.kerberos.service.name"] = 'kafka'

# Producer Properties files to enable SASL
default["kafka"]["producer.properties"]["security.protocol"] = 'SASL_PLAINTEXT'
default["kafka"]["producer.properties"]["sasl.mechanism"] = 'GSSAPI'
default["kafka"]["producer.properties"]["sasl.kerberos.service.name"] = 'kafka'

#------- Kerberos Related Changes Ends here-------------------#
# Log4J config
default["kafka"]["log4j.properties"]["log4j.rootLogger"] = "INFO, DRFA"
default["kafka"]["log4j.properties"]["log4j.appender.DRFA"] = "org.apache.log4j.DailyRollingFileAppender"
default["kafka"]["log4j.properties"]["log4j.appender.DRFA.layout"] = "org.apache.log4j.PatternLayout"
default["kafka"]["log4j.properties"]["log4j.appender.DRFA.layout.ConversionPattern"] = "[%d] %p %m (%c)%n"
default["kafka"]["log4j.properties"]["log4j.appender.kafkaAppender"] = "org.apache.log4j.DailyRollingFileAppender"
default["kafka"]["log4j.properties"]["log4j.appender.kafkaAppender.MaxBackupIndex"] = "20"
default["kafka"]["log4j.properties"]["log4j.appender.kafkaAppender.layout"] = "org.apache.log4j.PatternLayout"
default["kafka"]["log4j.properties"]["log4j.appender.kafkaAppender.layout.ConversionPattern"] = "[%d] %p %m (%c)%n"
default["kafka"]["log4j.properties"]["log4j.appender.stateChangeAppender"] = "org.apache.log4j.RollingFileAppender"
default["kafka"]["log4j.properties"]["log4j.appender.stateChangeAppender.MaxBackupIndex"] = "20"
default["kafka"]["log4j.properties"]["log4j.appender.stateChangeAppender.layout"] = "org.apache.log4j.PatternLayout"
default["kafka"]["log4j.properties"]["log4j.appender.stateChangeAppender.layout.ConversionPattern"] = "%d{ISO8601} %p %c: %m%n"
default["kafka"]["log4j.properties"]["log4j.appender.requestAppender"] = "org.apache.log4j.RollingFileAppender"
default["kafka"]["log4j.properties"]["log4j.appender.requestAppender.MaxBackupIndex"] = "20"
default["kafka"]["log4j.properties"]["log4j.appender.requestAppender.layout"] = "org.apache.log4j.PatternLayout"
default["kafka"]["log4j.properties"]["log4j.appender.requestAppender.layout.ConversionPattern"] = "%d{ISO8601} %p %c: %m%n"
default["kafka"]["log4j.properties"]["log4j.appender.controllerAppender"] = "org.apache.log4j.RollingFileAppender"
default["kafka"]["log4j.properties"]["log4j.appender.controllerAppender.MaxBackupIndex"] = "20"
default["kafka"]["log4j.properties"]["log4j.appender.controllerAppender.layout"] = "org.apache.log4j.PatternLayout"
default["kafka"]["log4j.properties"]["log4j.appender.controllerAppender.layout.ConversionPattern"] = "%d{ISO8601} %p %c: %m%n"
default["kafka"]["log4j.properties"]["log4j.logger.kafka"] = "INFO, kafkaAppender"
default["kafka"]["log4j.properties"]["log4j.logger.kafka.network.RequestChannel$"] = "INFO, requestAppender"
default["kafka"]["log4j.properties"]["log4j.additivity.kafka.network.RequestChannel$"] = "false"
default["kafka"]["log4j.properties"]["log4j.logger.kafka.request.logger"] = "INFO, requestAppender"
default["kafka"]["log4j.properties"]["log4j.additivity.kafka.request.logger"] = "false"
default["kafka"]["log4j.properties"]["log4j.logger.kafka.controller"] = "INFO, controllerAppender"
default["kafka"]["log4j.properties"]["log4j.additivity.kafka.controller"] = "false"
default["kafka"]["log4j.properties"]["log4j.logger.state.change.logger"] = "INFO, stateChangeAppender"
default["kafka"]["log4j.properties"]["log4j.additivity.state.change.logger"] = "false"

default["kafka"]["log4j.properties"]["log4j.logger.kafka.authorizer.logger"] = "DEBUG, authorizerAppender, denyAppender"

default["kafka"]["log4j.properties"]["log4j.appender.authorizerAppender"] = "org.apache.log4j.DailyRollingFileAppender"
default["kafka"]["log4j.properties"]["log4j.appender.authorizerAppender.DatePattern"] = "'.'yyyy-MM-dd-HH"
default["kafka"]["log4j.properties"]["log4j.appender.authorizerAppender.File"] = "/var/log/kafka/kafka-authorizer.log"
default["kafka"]["log4j.properties"]["log4j.appender.authorizerAppender.layout"] = "org.apache.log4j.PatternLayout"
default["kafka"]["log4j.properties"]["log4j.appender.authorizerAppender.layout.ConversionPattern"] = "[%d] %p %m (%c)%n"

default["kafka"]["log4j.properties"]["log4j.appender.authorizerAppender.filter.1"] = "com.inmobi.log4j.StringMatchAndRateLimit"
default["kafka"]["log4j.properties"]["log4j.appender.authorizerAppender.filter.1.stringToMatch"] = "Denied"
default["kafka"]["log4j.properties"]["log4j.appender.authorizerAppender.filter.1.acceptOnMatch"] = "false"
default["kafka"]["log4j.properties"]["log4j.appender.authorizerAppender.filter.1.rateLimit"] = "100"

default["kafka"]["log4j.properties"]["log4j.appender.denyAppender"] = "org.apache.log4j.DailyRollingFileAppender"
default["kafka"]["log4j.properties"]["log4j.appender.denyAppender.File"] = "/var/log/kafka/kafka-authorizer-deny.log"
default["kafka"]["log4j.properties"]["log4j.appender.denyAppender.layout"] = "org.apache.log4j.PatternLayout"
default["kafka"]["log4j.properties"]["log4j.appender.denyAppender.layout.ConversionPattern"] = "[%d] %p %m (%c)%n"

default["kafka"]["log4j.properties"]["log4j.appender.denyAppender.filter.1"]= "org.apache.log4j.varia.StringMatchFilter"
default["kafka"]["log4j.properties"]["log4j.appender.denyAppender.filter.1.stringToMatch"] = "Denied"
default["kafka"]["log4j.properties"]["log4j.appender.denyAppender.filter.1.acceptOnMatch"] = "true"
default["kafka"]["log4j.properties"]["log4j.appender.denyAppender.filter.2"] = "org.apache.log4j.varia.DenyAllFilter"

#Offset monitor config
default["kafka"]["offset_monitor"]["url"] = "https://github.com/quantifind/KafkaOffsetMonitor/releases/download/v0.2.0/KafkaOffsetMonitor-assembly-0.2.0.jar"
default["kafka"]["offset_monitor"]["main_class"] = "com.quantifind.kafka.offsetapp.OffsetGetterWeb"
default["kafka"]["offset_monitor"]["port"] = "8080"
default["kafka"]["offset_monitor"]["db_name"] = "offset_monitor"
default["kafka"]["offset_monitor"]["refresh"] = "15.minutes"
default["kafka"]["offset_monitor"]["retain"] = "7.days"

default['jmxtrans_version'] = '250-1'
default['cluster_name'] = {'dfw1' => 'DFW1_Onyx', 'pek1' => 'pek1-pyrite', 'dfw2' => 'dfw2-garnet', 'ams1' => 'ams1-azurite'}
