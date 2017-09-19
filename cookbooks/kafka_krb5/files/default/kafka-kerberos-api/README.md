Sample API's to publish and consume messages from a given topic with kerberos properties setup.

Create kafka_jaas.conf file
---------------------------

````
mazin.mohammed@datanode1004:~/kafka-api$ cat /opt/inmobi/kafka/config/kafka_jaas.conf
KafkaServer {
    com.sun.security.auth.module.Krb5LoginModule required
    useKeyTab=true
    storeKey=true
    useTicketCache=false
    keyTab="/etc/security/keytabs/kafka.service.keytab"
    serviceName="kafka"
    principal="kafka/datanode1004.grid.ev1.inmobi.com@INMOBI.COM";
};

Client {
    com.sun.security.auth.module.Krb5LoginModule required
    useKeyTab=true
    storeKey=true
    keyTab="/etc/security/keytabs/kafka.service.keytab"
    principal="kafka/datanode1004.grid.ev1.inmobi.com@INMOBI.COM";
};

// JAAS configuration for Kafka Client
KafkaClient {
    com.sun.security.auth.module.Krb5LoginModule required
    useTicketCache=true
    renewTicket=true
    serviceName="kafka";
};

````

Compile the Code and Run
------------------------
````
mazin.mohammed@datanode1004:~/opt/inmobi/kafka/sample-kerberos-api$ javac -cp "/opt/inmobi/kafka/libs/*" *.java
mazin.mohammed@datanode1004:~/opt/inmobi/kafka/sample-kerberos-api$ java -Djava.security.auth.login.config=/opt/inmobi/kafka/config/kafka_jaas.conf  -cp "/opt/inmobi/kafka/libs/*":. SimpleProducer kafka-test-topic
mazin.mohammed@datanode1004:~/kafka-api$ java -Djava.security.auth.login.config=/opt/inmobi/kafka/config/kafka_jaas.conf  -cp "/opt/inmobi/kafka/libs/*":. SimpleConsumer kafka-test-topic
````
