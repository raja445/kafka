# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default

default["kafka"]["user"] = "kafka"
default["kafka"]["group"] = "kafka"

default["kafka"]["scala_version"] = "2.11"
default["kafka"]["version"] = "0.10.2.1"
#default["kafka"]["download_url"] = "https://archive.apache.org/dist/kafka"
default["kafka"]["download_url"] = "http://www-us.apache.org/dist/kafka"

default["kafka"]["base_dir"]  = "/opt/inmobi"
default["kafka"]["log_dir"] = "/var/log/kafka"

# Set Log file for kafka init script stdout/stderr
default["kafka"]["service"]["stdout"] = File.join node["kafka"]["log_dir"], "kafka_init_stdout.log"
default["kafka"]["service"]["stderr"] = File.join node["kafka"]["log_dir"], "kafka_init_stderr.log"

#hack for pek1
default['kafkadisks']['mounts']=""
# These are required to be supplied by the consumer so setting to nil

default["kafka"]["brokers"]["dfw1"] = ["oxkm4006.grid.dfw1.inmobi.com","oxkm4007.grid.dfw1.inmobi.com","oxgs4038.grid.dfw1.inmobi.com"]
default["kafka"]["zookeepers"]["dfw1"] = ["oxkm4006.grid.dfw1.inmobi.com:2181","oxkm4007.grid.dfw1.inmobi.com:2181","oxgs4038.grid.dfw1.inmobi.com:2181"]
default['kafka']['mrelay']['dfw1'] = "metrics-relay.grid.dfw1.inmobi.com"

default["kafka"]["shutdown_timeout"] = 80     # init.d script shutdown time-out in seconds
default["kafka"]["env_vars"]["JMX_PORT"] = "9999"
default["kafka"]["env_vars"]["KAFKA_HEAP_OPTS"] = "\"-Xmx8G -Xms8G\""
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
default["kafka"]["server.properties"]["inter.broker.protocol.version"] = '0.8.2'
default["kafka"]["server.properties"]["log.message.format.version"] = '0.8.2'

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
default['cluster_name'] = {'dfw1' => 'DFW1_Onyx', 'uh1' => 'UH1_Krypton', 'hkg1' => 'HKG1_Opal', 'lhr1' => 'LHR1_Emerald', 'pek1' => 'pek1-pyrite'}
