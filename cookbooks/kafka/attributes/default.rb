# coding: UTF-8 
# Cookbook Name:: kafka
# Attributes:: default

default["kafka"]["user"] = "kafka"
default["kafka"]["group"] = "kafka"

default["kafka"]["scala_version"] = "2.11"
default["kafka"]["version"] = "0.8.2.1"
default["kafka"]["download_url"] = "https://archive.apache.org/dist/kafka"

default["kafka"]["base_dir"]  = "/opt/inmobi"
default["kafka"]["log_dir"] = "/var/log/kafka"

# Set Log file for kafka init script stdout/stderr
default["kafka"]["service"]["stdout"] = File.join node["kafka"]["log_dir"], "kafka_init_stdout.log"
default["kafka"]["service"]["stderr"] = File.join node["kafka"]["log_dir"], "kafka_init_stderr.log"

# These are required to be supplied by the consumer so setting to nil
default["kafka"]["brokers"]["uj1"] = ["tzkf4005.grid.uj1.inmobi.com","tzkf4006.grid.uj1.inmobi.com","tzkf4007.grid.uj1.inmobi.com", "tzkf4008.grid.uj1.inmobi.com","tzkf4001.grid.uj1.inmobi.com","tzkf4009.grid.uj1.inmobi.com","tzkf4010.grid.uj1.inmobi.com","tzkf4011.grid.uj1.inmobi.com","tzkf4012.grid.uj1.inmobi.com","tzkf4013.grid.uj1.inmobi.com"]
default["kafka"]["zookeepers"]["uj1"] = ["tzkf4005.grid.uj1.inmobi.com:2181","tzkf4006.grid.uj1.inmobi.com:2181","tzkf4007.grid.uj1.inmobi.com:2181"]

default["kafka"]["brokers"]["uh1"] = ["krkf4002.grid.uh1.inmobi.com","krkf4003.grid.uh1.inmobi.com","krkf4004.grid.uh1.inmobi.com", "krkf4005.grid.uh1.inmobi.com","krkf4001.grid.uh1.inmobi.com","krkf4006.grid.uh1.inmobi.com","krkf4007.grid.uh1.inmobi.com","krkf4008.grid.uh1.inmobi.com","krkf4009.grid.uh1.inmobi.com","krkf4010.grid.uh1.inmobi.com"]
default["kafka"]["zookeepers"]["uh1"] = ["krkf4002.grid.uh1.inmobi.com:2181","krkf4003.grid.uh1.inmobi.com:2181","krkf4004.grid.uh1.inmobi.com:2181"]

default["kafka"]["brokers"]["hkg1"] = ["opkf4002.grid.hkg1.inmobi.com","opkf4003.grid.hkg1.inmobi.com","opkf4004.grid.hkg1.inmobi.com", "opkf4005.grid.hkg1.inmobi.com","opkf4001.grid.hkg1.inmobi.com","opkf4006.grid.hkg1.inmobi.com","opkf4007.grid.hkg1.inmobi.com","opkf4008.grid.hkg1.inmobi.com","opkf4009.grid.hkg1.inmobi.com","opkf4010.grid.hkg1.inmobi.com"]
default["kafka"]["zookeepers"]["hkg1"] = ["opkf4002.grid.hkg1.inmobi.com:2181","opkf4003.grid.hkg1.inmobi.com:2181","opkf4004.grid.hkg1.inmobi.com:2181"]

default["kafka"]["brokers"]["lhr1"] = ["erkf4002.grid.lhr1.inmobi.com","erkf4003.grid.lhr1.inmobi.com","erkf4004.grid.lhr1.inmobi.com", "erkf4005.grid.lhr1.inmobi.com","erkf4001.grid.lhr1.inmobi.com","erkf4006.grid.lhr1.inmobi.com","erkf4007.grid.lhr1.inmobi.com","erkf4008.grid.lhr1.inmobi.com","erkf4009.grid.lhr1.inmobi.com","erkf4010.grid.lhr1.inmobi.com"]
default["kafka"]["zookeepers"]["lhr1"] = ["erkf4002.grid.lhr1.inmobi.com:2181","erkf4003.grid.lhr1.inmobi.com:2181","erkf4004.grid.lhr1.inmobi.com:2181"]



default["kafka"]["shutdown_timeout"] = 30     # init.d script shutdown time-out in seconds
default["kafka"]["env_vars"]["JMX_PORT"] = "9999"
default["kafka"]["env_vars"]["KAFKA_HEAP_OPTS"] = "\"-Xmx4G -Xms4G\""
default["kafka"]["env_vars"]["KAFKA_JVM_PERFORMANCE_OPTS"] = "\"-XX:PermSize=48m -XX:MaxPermSize=48m -XX:+UseG1GC -XX:MaxGCPauseMillis=20 -XX:InitiatingHeapOccupancyPercent=35\""
default["kafka"]["lib_jars"] = []

default["kafka"]["server.properties"]["log.dirs"] = "/data/d1/kafka,/data/d2/kafka,/data/d3/kafka,/data/d4/kafka,/data/d5/kafka"
default["kafka"]["server.properties"]["port"] = 9092
default["kafka"]["server.properties"]["num.partitions"] = 10
default["kafka"]["server.properties"]["default.replication.factor"] = 3
default["kafka"]["server.properties"]["log.flush.interval.messages"] = 100000
default["kafka"]["server.properties"]["log.retention.hours"] = 48
default["kafka"]["server.properties"]["log.retention.check.interval.ms"] = 3600000
default["kafka"]["server.properties"]["num.replica.fetchers"] = 5
default["kafka"]["server.properties"]["replica.fetch.wait.max.ms"] = 5000
default["kafka"]["server.properties"]["leader.imbalance.check.interval.seconds"] = 120
default["kafka"]["server.properties"]["replica.lag.max.messages"] = 10000
default["kafka"]["server.properties"]["auto.leader.rebalance.enable"] = true
default["kafka"]["server.properties"]["num.network.threads"] = 15
default["kafka"]["server.properties"]["num.io.threads"] = 12
default["kafka"]["server.properties"]["delete.topic.enable"] = false
default["kafka"]["server.properties"]["controlled.shutdown.enable"] = true
default["kafka"]["server.properties"]["auto.create.topics.enable"] = false

# Log4J config
default["kafka"]["log4j.properties"]["log4j.rootLogger"] = "INFO, DRFA"
default["kafka"]["log4j.properties"]["log4j.appender.DRFA"] = "org.apache.log4j.DailyRollingFileAppender"
default["kafka"]["log4j.properties"]["log4j.appender.DRFA.layout"] = "org.apache.log4j.PatternLayout"
default["kafka"]["log4j.properties"]["log4j.appender.DRFA.layout.ConversionPattern"] = "[%d] %p %m (%c)%n"
default["kafka"]["log4j.properties"]["log4j.appender.kafkaAppender"] = "org.apache.log4j.RollingFileAppender"
default["kafka"]["log4j.properties"]["log4j.appender.kafkaAppender.MaxBackupIndex"] = "20"
default["kafka"]["log4j.properties"]["log4j.appender.kafkaAppender.layout"] = "org.apache.log4j.PatternLayout"
default["kafka"]["log4j.properties"]["log4j.appender.kafkaAppender.layout.ConversionPattern"] = "%d{ISO8601} %p %c: %m%n"
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


#kafka topics to monitor
default["kafka"]["topics"]=["georrlite"]

default['jmxtrans_version'] = '250-1'
default['cluster_name'] = {'uj1'=> 'UJ1_Topaz', 'uh1' => 'UH1_Krypton', 'hkg1' => 'HKG1_Opal', 'lhr1' => 'LHR1_Emerald'}
