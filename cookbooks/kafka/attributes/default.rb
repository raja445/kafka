# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default

default["kafka"]["user"] = "kafka"
default["kafka"]["group"] = "kafka"

default["kafka"]["scala_version"] = "2.11"
default["kafka"]["version"] = "0.8.2.2"
default["kafka"]["download_url"] = "https://archive.apache.org/dist/kafka"

default["kafka"]["base_dir"]  = "/opt/inmobi"
default["kafka"]["log_dir"] = "/var/log/kafka"

# Set Log file for kafka init script stdout/stderr
default["kafka"]["service"]["stdout"] = File.join node["kafka"]["log_dir"], "kafka_init_stdout.log"
default["kafka"]["service"]["stderr"] = File.join node["kafka"]["log_dir"], "kafka_init_stderr.log"

default['kafkadisks']['mounts']="/data/d1/kafka,/data/d2/kafka,/data/d3/kafka,/data/d4/kafka,/data/d5/kafka,/data/d6/kafka"
# These are required to be supplied by the consumer so setting to nil

default["kafka"]["brokers"]["dfw1"] = ["oxkf4001.grid.dfw1.inmobi.com","oxkf4002.grid.dfw1.inmobi.com","oxkf4003.grid.dfw1.inmobi.com","oxkf4008.grid.dfw1.inmobi.com","oxkf4009.grid.dfw1.inmobi.com","oxkf4010.grid.dfw1.inmobi.com","oxkf4011.grid.dfw1.inmobi.com","oxkf4012.grid.dfw1.inmobi.com","oxkf4013.grid.dfw1.inmobi.com","oxkf4014.grid.dfw1.inmobi.com","oxkf4015.grid.dfw1.inmobi.com","oxkf4016.grid.dfw1.inmobi.com","oxkf4017.grid.dfw1.inmobi.com"]
default["kafka"]["zookeepers"]["dfw1"] = ["kafka-zookeeper-1.grid.dfw1.inmobi.com:2181","kafka-zookeeper-2.grid.dfw1.inmobi.com:2181","kafka-zookeeper-3.grid.dfw1.inmobi.com:2181","kafka-zookeeper-4.grid.dfw1.inmobi.com:2181","kafka-zookeeper-5.grid.dfw1.inmobi.com:2181"]
default['kafka']['mrelay']['dfw1'] = "metrics-relay.grid.dfw1.inmobi.com"

default["kafka"]["brokers"]["uh1"] = ["krkf4002.grid.uh1.inmobi.com","krkf4003.grid.uh1.inmobi.com","krkf4004.grid.uh1.inmobi.com", "krkf4005.grid.uh1.inmobi.com","krkf4001.grid.uh1.inmobi.com","krkf4006.grid.uh1.inmobi.com","krkf4007.grid.uh1.inmobi.com","krkf4008.grid.uh1.inmobi.com","krkf4009.grid.uh1.inmobi.com","krkf4010.grid.uh1.inmobi.com"]
default["kafka"]["zookeepers"]["uh1"] = ["kafka-zookeeper-1.grid.uh1.inmobi.com:2181","kafka-zookeeper-2.grid.uh1.inmobi.com:2181","kafka-zookeeper-3.grid.uh1.inmobi.com:2181","kafka-zookeeper-4.grid.uh1.inmobi.com:2181","kafka-zookeeper-5.grid.uh1.inmobi.com:2181"]
default['kafka']['mrelay']['uh1'] = "metrics-relay.grid.uh1.inmobi.com"

default["kafka"]["brokers"]["hkg1"] = ["opkf4002.grid.hkg1.inmobi.com","opkf4003.grid.hkg1.inmobi.com","opkf4004.grid.hkg1.inmobi.com", "opkf4005.grid.hkg1.inmobi.com","opkf4001.grid.hkg1.inmobi.com","opkf4006.grid.hkg1.inmobi.com","opkf4007.grid.hkg1.inmobi.com","opkf4008.grid.hkg1.inmobi.com","opkf4009.grid.hkg1.inmobi.com","opkf4010.grid.hkg1.inmobi.com"]
default["kafka"]["zookeepers"]["hkg1"] = ["kafka-zookeeper-1.grid.hkg1.inmobi.com:2181","kafka-zookeeper-2.grid.hkg1.inmobi.com:2181","kafka-zookeeper-3.grid.hkg1.inmobi.com:2181","kafka-zookeeper-4.grid.hkg1.inmobi.com:2181","kafka-zookeeper-5.grid.hkg1.inmobi.com:2181"]
default['kafka']['mrelay']['hkg1'] = "metrics-relay.grid.hkg1.inmobi.com"

default["kafka"]["brokers"]["lhr1"] = ["erkf4002.grid.lhr1.inmobi.com","erkf4003.grid.lhr1.inmobi.com","erkf4004.grid.lhr1.inmobi.com", "erkf4005.grid.lhr1.inmobi.com","erkf4001.grid.lhr1.inmobi.com","erkf4006.grid.lhr1.inmobi.com","erkf4007.grid.lhr1.inmobi.com","erkf4008.grid.lhr1.inmobi.com","erkf4009.grid.lhr1.inmobi.com","erkf4010.grid.lhr1.inmobi.com"]
default["kafka"]["zookeepers"]["lhr1"] = ["kafka-zookeeper-1.grid.lhr1.inmobi.com:2181","kafka-zookeeper-2.grid.lhr1.inmobi.com:2181","kafka-zookeeper-3.grid.lhr1.inmobi.com:2181","kafka-zookeeper-4.grid.lhr1.inmobi.com:2181","kafka-zookeeper-5.grid.lhr1.inmobi.com:2181"]
default['kafka']['mrelay']['lhr1'] = "metrics-relay.grid.lhr1.inmobi.com"

default["kafka"]["brokers"]["pek1"] = ["pykf4002.grid.pek1.inmobi.com","pykf4003.grid.pek1.inmobi.com","pykf4004.grid.pek1.inmobi.com", "pykf4005.grid.pek1.inmobi.com","pykf4001.grid.pek1.inmobi.com","pykf4006.grid.pek1.inmobi.com","pykf4007.grid.pek1.inmobi.com","pykf4008.grid.pek1.inmobi.com","pykf4009.grid.pek1.inmobi.com","pykf4010.grid.pek1.inmobi.com"]
default["kafka"]["zookeepers"]["pek1"] = ["kafka-zookeeper-1.grid.pek1.inmobi.com:2181","kafka-zookeeper-2.grid.pek1.inmobi.com:2181","kafka-zookeeper-3.grid.pek1.inmobi.com:2181","kafka-zookeeper-4.grid.pek1.inmobi.com:2181","kafka-zookeeper-5.grid.pek1.inmobi.com:2181"]
default['kafka']['mrelay']['pek1'] = "metrics-relay.grid.pek1.inmobi.com"

default["kafka"]["shutdown_timeout"] = 80     # init.d script shutdown time-out in seconds
default["kafka"]["env_vars"]["JMX_PORT"] = "9999"
default["kafka"]["env_vars"]["KAFKA_HEAP_OPTS"] = "\"-Xmx4G -Xms4G\""
default["kafka"]["env_vars"]["KAFKA_JVM_PERFORMANCE_OPTS"] = "\"-XX:PermSize=48m -XX:MaxPermSize=48m -XX:+UseG1GC -XX:MaxGCPauseMillis=20 -XX:InitiatingHeapOccupancyPercent=35\""
default["kafka"]["lib_jars"] = []

default["kafka"]["server.properties"]["port"] = 9092
default["kafka"]["server.properties"]["num.partitions"] = 10
default["kafka"]["server.properties"]["default.replication.factor"] = 3
default["kafka"]["server.properties"]["log.flush.interval.messages"] = 100000
default["kafka"]["server.properties"]["log.retention.hours"] = 48
default["kafka"]["server.properties"]["log.roll.hours"] = 1
default["kafka"]["server.properties"]["log.retention.check.interval.ms"] = 1200000
default["kafka"]["server.properties"]["num.replica.fetchers"] = 12
default["kafka"]["server.properties"]["replica.fetch.wait.max.ms"] = 500
default["kafka"]["server.properties"]["leader.imbalance.check.interval.seconds"] = 120
default["kafka"]["server.properties"]["replica.lag.max.messages"] = 10000
default["kafka"]["server.properties"]["auto.leader.rebalance.enable"] = true
default["kafka"]["server.properties"]["num.network.threads"] = 12
default["kafka"]["server.properties"]["delete.topic.enable"] = true
default["kafka"]["server.properties"]["controlled.shutdown.enable"] = true
default["kafka"]["server.properties"]["auto.create.topics.enable"] = false
default["kafka"]["server.properties"]["num.recovery.threads.per.data.dir"] = 12

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
