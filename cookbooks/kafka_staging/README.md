Kafka cookbook
==============


A Chef cookbook to install [Apache's Kafka](http://kafka.apache.org/).


What this will setup
--------------------

This will install Kafka at `node["kafka"]["install_dir"]`. In order to handle upgrades appropriately we use symbolic links and land the real installations
elsewhere.

The true installations will land,

    node["kafka"]["base_dir"] (defaults to /opt)
    | - kafka_1.2.3
    | | - config
    | | - bin
    | | - kafka_1.2.3.jar
    | | - ...
    
While we provide a symbolic link to the convenient location,

    node["kafka"]["install_dir"] (defaults to /opt/kafka)
    | - config
    | - bin
    | - kafka_1.2.3.jar
    | - ...
    
It will also create/setup a service which can be used to start/stop/restart kafka,

    service kafka [start|stop|restart|status]
    
We also link kafka's log directory to `/var/log/kafka` to make it easier to find kafka's logs.

Usage
-----

These are the requirements that need to be satisfied in order to get the cookbook to run.

 * Have filled out the following required attributes
   * `node["kafka"]["brokers"]` or `node["kafka"]["server.properties"]["broker.id"]`
   * `node["kafka"]["zookeepers"]` or `node["kafka"]["server.properties"]["zookeeper.connect"]`

If you don't fulfill the requirements the recipe will error out telling you what was missing.

The attributes,

 * `node["kafka"]["brokers"]`
 * `node["kafka"]["zookeepers"]`

Actually map to 'server.properties' settings,

 * `node["kafka"]["server.properties"]["broker.id"]` : The id of broker running on the server
 * `node["kafka"]["server.properties"]["zookeeper.connect"]` : The Kafka configuration used to connect to Zookeeper

We do this mapping for you when you provide the `node["kafka"]["brokers"]` and `node["kafka"]["zookeepers"]`
attributes.

For the `node["kafka"]["brokers"]` => `node["kafka"]["server.properties"]["broker.id"]` mapping to work properly 
all Chef nodes running the kafka recipe (and are part of the same Kafka cluster) must have the same list of 
`node["kafka"]["brokers"]` and all broker hostnames must be in the same order. We determine the 
`node["kafka"]["server.properties"]["broker.id"]` by using the index of Chef node's fqdn/hostname/ip in the
list as the `node["kafka"]["server.properties"]["broker.id"]`.

Using `node["kafka"]["brokers"]` and `node["kafka"]["zookeepers"]` attribtues are the recommended way to setup 
your kafka cluster in Chef.

Once all that is done you should be able to run the recipe without any problem.

### How to specify where to download kafka from and which version to install

This cookbook supports Kafka version `0.8.1.1` and above. The default attributes currently will install version `0.8.1.1` from
'https://archive.apache.org/dist/kafka'. This is configured using a number of different attributes in order to make it easier for you.

There are basically two ways to configure these settings. The first way is via 3 different attributes,

 * `node["kafka"]["scala_version"]` : The scala version number associated with the kafka installation (default="2.9.2")
 * `node["kafka"]["version"]` : The version number associated with the kafka installation (default="0.8.1.1")
 * `node["kafka"]["download_url"]` : The base url used to download Kafka (default="https://archive.apache.org/dist/kafka")
 
With these 3 attributes we build the full url of the form 
`#{node["kafka"]["download_url"]}/#{node["kafka"]["version"]}/kafka_#{node["kafka"]["scala_version"]}-#{node["kafka"]["version"]}.tgz`.

This makes it easy to specify just a single change while still maintaining the rest of the URL.

The other option is to just provide the full URL itself,

 * `node["kafka"]["binary_url"]` : The full url used to download Kafka

 **NOTE** : If you specify the `node["kafka"]["binary_url"]` a valid and up to date `node["kafka"]["version"]` must also be provided as this is what we use to determine
 if a new version of kafka is specified.

### Configuring java for the server/broker

Currently the cookbook defaults to use the same [java settings](https://kafka.apache.org/documentation.html#java) that Linkedin recommends.

Kafka uses different environment variables to configure the java settings for the server/broker,

 * `KAFKA_JMX_OPTS` : The JMX settings (default="-Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.authenticate=false  -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.port=$JMX_PORT")
 * `JMX_PORT` : The port to run Kafka's JMX on (default=9999)
 * `KAFKA_LOG4J_OPTS` : The log4j settings (default="-Dlog4j.configuration=file:$base_dir/../config/log4j.properties")
 * `KAFKA_HEAP_OPTS` : The options used to control Kafka's Heap (default="-Xmx4G -Xms4G")
 * `KAFKA_JVM_PERFORMANCE_OPTS` : The options used to control JVM performance settings (default="-XX:PermSize=48m -XX:MaxPermSize=48m -XX:+UseG1GC -XX:MaxGCPauseMillis=20 -XX:InitiatingHeapOccupancyPercent=35")
 * `KAFKA_GC_LOG_OPTS` : The options used to control GC logs (default="-Xloggc:$LOG_DIR/$GC_LOG_FILE_NAME -verbose:gc -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+PrintGCTimeStamps")
 * `KAFKA_OPTS` : Used for any generic JVM settings (default="")

You can customize these environment variables (as well as any environment variable for the kafka user) using the 
attribute,

 * `node["kafka"]["env_vars"]` : A hash of environment variable names to their values to be set for the kafka user

   
Attributes
----------

 * `node["kafka"]["brokers"]` : An array of the list of brokers in the Kafka cluster. This should even include the node running the recipe. (default=[])
 * `node["kafka"]["zookeepers"]` : An array of the list of Zookeepers that Kafka uses. (default=[])
 * `node["kafka"]["user"]` : The name of the user used to run Kafka (default="kafka")
 * `node["kafka"]["group"]` : The name of the group the user running Kafka is associated with (default="kafka")
 * `node["kafka"]["openFileLimit"]` : The open file limit for the user running the Kafka service (default=32768)
 * `node["kafka"]["maxProcesses"]` : The max processes allowed for the user running the Kafka service (default=1024)
 * `node["kafka"]["scala_version"]` : The scala version number associated with the kafka installation (default="2.9.2")
 * `node["kafka"]["version"]` : The version number associated with the kafka installation (default="0.8.1.1")
 * `node["kafka"]["download_url"]` : The base url used to download Kafka. Uses this and `node["kafka"]["scala_version"]` as well as `node["kafka"]["version"]` to build the full url. (default="https://archive.apache.org/dist/kafka")
 * `node["kafka"]["binary_url"]` : The full url used to download Kafka. (default=`#{node["kafka"]["download_url"]}/#{node["kafka"]["version"]}/kafka_#{node["kafka"]["scala_version"]}-#{node["kafka"]["version"]}.tgz`)
 * `node["kafka"]["base_dir"]` : This is the directory that contains the current installation as well as every other installation (default="/opt")
 * `node["kafka"]["install_dir"]` : This is the directory of the current installation (default=`node["kafka"]["base_dir"]`/kafka)
 * `node["kafka"]["log_dir"]` : The directory of the log files for Kafka. Not Kafka's message/log data but debug logs from the server. (default="/var/log/kafka")
 * `node["kafka"]["shutdown_timeout"]` : The init.d script shutdown timeout in seconds. Adjust as needed based on cluster size (in terms of partitions) and required shutdown time. (default=30)
 * `node["kafka"]["env_vars"]` : A hash of environment variable names to their values to be set for the kafka user. This can be used to customize the server memory settings. (default={})
 * `node["kafka"]["lib_jars"]` : A list of URLs to install a jar in `#{node["kafka"]["install_dir"]}/libs`. (default=[])
 * `node["kafka"]["server.properties"][*]` : A key/value that will be set in server's properties file. Used to customize the broker configuration. (for defaults see attributes file)
 * `node["kafka"]["log4j.properties"][*]` : A key/value that will be set in the server's log4j.properties file. (for defaults see attributes file)
 * `node["kafka"]["offset_monitor"]["url"]` The download url for the offset monitor (default = "https://github.com/quantifind/KafkaOffsetMonitor/releases/download/v0.2.0/KafkaOffsetMonitor-assembly-0.2.0.jar")
 * `node["kafka"]["offset_monitor"]["install_dir"]` : The installation directory for the offset monitor (default = `node["kafka]["base_dir"]`/kafka-offset-monitor)
 * `node["kafka"]["offset_monitor"]["main_class"]` : The main class for the offset monitor (default = "com.quantifind.kafka.offsetapp.OffsetGetterWeb")
 * `node["kafka"]["offset_monitor"]["port"]` = The port used by the offset monitor web application (default = 8080)
 * `node["kafka"]["offset_monitor"]["refresh"]` : How often the offset monitor refreshes and stores a point in the DB, in `value`.`unit` format (default = "15.minutes")
 * `node["kafka"]["offset_monitor"]["retain"]` : How long the offset monitoring data is kept in the DB, in `value`.`unit` format (default = "7.days")
 * `node["kafka"]["offset_monitor"]["db_name"]` : The base file name for the offset monitoring database file written into the kafka user's home directory (default = "offset_monitor")
 * `node["kafka"]["service"]["stdout"]` : The file to keep std output of kafka init service (default = "/dev/null")
 * `node["kafka"]["service"]["stderr"]` : The file to keep std error of kafka init service (default = "/dev/null")


