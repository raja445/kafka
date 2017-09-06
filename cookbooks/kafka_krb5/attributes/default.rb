# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default

default["kafka"]["user"] = "kafka"
default["kafka"]["group"] = "kafka"

default["kafka"]["scala_version"] = "2.11"
default["kafka"]["version"] = "0.10.2.1"
default["kafka"]["download_url"] = "http://www-us.apache.org/dist/kafka"

default["kafka"]["base_dir"]  = "/opt/inmobi"
default["kafka"]["log_dir"] = "/var/log/kafka"

# Set Log file for kafka init script stdout/stderr
default["kafka"]["service"]["stdout"] = File.join node["kafka"]["log_dir"], "kafka_init_stdout.log"
default["kafka"]["service"]["stderr"] = File.join node["kafka"]["log_dir"], "kafka_init_stderr.log"

#hack for pek1
default['kafkadisks']['mounts']="/data/d1/kafka,/data/d2/kafka,/data/d3/kafka,/data/d4/kafka,/data/d5/kafka,/data/d6/kafka"
# These are required to be supplied by the consumer so setting to nil

default["kafka"]["brokers"]["ev1"] = ["rmanager1001.grid.ev1.inmobi.com","rmanager1002.grid.ev1.inmobi.com","data1004.grid.ev1.inmobi.com"]
default["kafka"]["zookeepers"]["ev1"] = ["datanode1005.grid.ev1.inmobi.com:2181","datanode1006.grid.ev1.inmobi.com:2181","datanode1007.grid.ev1.inmobi.com:2181"]
default['kafka']['mrelay']['ev1'] = "data1004.grid.ev1.inmobi.com"

default["kafka"]["shutdown_timeout"] = 80     # init.d script shutdown time-out in seconds
default["kafka"]["env_vars"]["JMX_PORT"] = "9999"
default["kafka"]["env_vars"]["KAFKA_HEAP_OPTS"] = "\"-Xmx4G -Xms4G -Djava.security.auth.login.config=/opt/inmobi/kafka/config/kafka_server_jaas.conf\""
default["kafka"]["env_vars"]["KAFKA_OPTS"] = "\"-Djava.security.auth.login.config=/opt/inmobi/kafka/config/kafka_jaas.conf\""
default["kafka"]["env_vars"]["KAFKA_JVM_PERFORMANCE_OPTS"] = "\"-XX:MaxDirectMemorySize=2G -XX:+UseG1GC -XX:MaxGCPauseMillis=20 -XX:InitiatingHeapOccupancyPercent=35\""
default["kafka"]["lib_jars"] = []

default["kafka"]["server.properties"]["port"] = 9092 
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
default["kafka"]["server.properties"]["delete.topic.enable"] = false
default["kafka"]["server.properties"]["controlled.shutdown.enable"] = true
default["kafka"]["server.properties"]["auto.create.topics.enable"] = false
default["kafka"]["server.properties"]["num.recovery.threads.per.data.dir"] = 12
default["kafka"]["server.properties"]["zookeeper.connection.timeout.ms"] = 20000
default["kafka"]["server.properties"]["inter.broker.protocol.version"] = '0.10.2'
default["kafka"]["server.properties"]["log.message.format.version"] = '0.8.2'

#
#----------Kerberos Related Changes goes here-----------#
#

default["kafka"]["kerberos"]["enable"] = 'true'
default["kafka"]["kerberos"]["keytab"] = '/etc/security/keytabs/kafka.service.keytab'
#default["kafka"]["kerberos"]["principal"] = 'kafka/rmanager1001.grid.ev1.inmobi.com@INMOBI.COM'
default["kafka"]["kerberos"]["realm"] = "INMOBI.COM"
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
default["kafka"]["server.properties"]["listeners"] = 'SASL_PLAINTEXT://:9092' 

# Kafka brokers to authenticate each other using SASL
default["kafka"]["server.properties"]["security.inter.broker.protocol"] = 'SASL_PLAINTEXT'
default["kafka"]["server.properties"]["sasl.mechanism.inter.broker.protoco"] = 'GSSAPI'

# SASL mechanisms enabled in the Kafka server
default["kafka"]["server.properties"]["sasl.enabled.mechanisms"] = 'GSSAPI'

# Protocol used to communicate with brokers. Valid values are: PLAINTEXT, SSL, SASL_PLAINTEXT, SASL_SSL.
default["kafka"]["server.properties"]["security.protocol"] = 'SASL_PLAINTEX'

# authorizer class that should be used for authorization
default["kafka"]["server.properties"]["authorizer.class.name"] = 'kafka.security.auth.SimpleAclAuthorizer'

# Kafka acls are defined in the general format of "Principal P is [Allowed/Denied] Operation O From Host H On Resource R". 
# By default, if a Resource R has no associated acls, no one other than super users is allowed to access R
# This is to be overrriden below.
default["kafka"]["server.properties"]["allow.everyone.if.no.acl.found"] = 'true'

# translation from principal to user name has to be configured, which is defined as follows.
default["kafka"]["server.properties"]["principal.to.local.class"] = 'kafka.security.auth.KerberosPrincipalToLocal'
default["kafka"]["server.properties"]["sasl.kerberos.principal.to.local.rules"] = 'RULE:[1:$1@$0](ambari-qa-xenon@INMOBI.COM)s/.*/ambari-qa/,RULE:[1:$1@$0](hdfs-xenon@INMOBI.COM)s/.*/hdfs/,RULE:[1:$1@$0](.*@INMOBI.COM)s/@.*//, RULE:[2:$1@$0](amshbase@INMOBI.COM)s/.*/ams/,RULE:[2:$1@$0](amszk@INMOBI.COM)s/.*/ams/,RULE:[2:$1@$0](dn@INMOBI.COM)s/.*/hdfs/,RULE:[2:$1@$0](jhs@INMOBI.COM)s/.*/mapred/,RULE:[2:$1@$0](jn@INMOBI.COM)s/.*/hdfs/,RULE:[2:$1@$0](nm@INMOBI.COM)s/.*/yarn/,RULE:[2:$1@$0](nn@INMOBI.COM)s/.*/hdfs/,RULE:[2:$1@$0](oozie@INMOBI.COM)s/.*/oozie/,RULE:[2:$1@$0](rm@INMOBI.COM)s/.*/yarn/,RULE:[2:$1@$0](yarn@INMOBI.COM)s/.*/yarn/,DEFAULT'

# Consumber Properties files to enable SASL 
default["kafka"]["consumer.properties"]["security.protocol"] = 'SASL_PLAINTEXT'
default["kafka"]["consumer.properties"]["sasl.mechanism"] = 'GSSAPI'
default["kafka"]["consumer.properties"]["sasl.kerberos.service.name"] = 'kafka'

# Producer Properties files to enable SASL
default["kafka"]["producer.properties"]["security.protocol"] = 'SASL_PLAINTEXT'
default["kafka"]["producer.properties"]["sasl.mechanism"] = 'GSSAPI'
default["kafka"]["producer.properties"]["sasl.kerberos.service.name"] = 'kafka'

# ------- Kerberos Related Changes Ends here-------------------#

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

#Offset monitor config
default["kafka"]["offset_monitor"]["url"] = "https://github.com/quantifind/KafkaOffsetMonitor/releases/download/v0.2.0/KafkaOffsetMonitor-assembly-0.2.0.jar"
default["kafka"]["offset_monitor"]["main_class"] = "com.quantifind.kafka.offsetapp.OffsetGetterWeb"
default["kafka"]["offset_monitor"]["port"] = "8080"
default["kafka"]["offset_monitor"]["db_name"] = "offset_monitor"
default["kafka"]["offset_monitor"]["refresh"] = "15.minutes"
default["kafka"]["offset_monitor"]["retain"] = "7.days"



default['jmxtrans_version'] = '250-1'
default['cluster_name'] = {'ev1' => 'ev1-xenon'}
