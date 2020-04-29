#!/bin/bash

/kafka/bin/zookeeper-server-start.sh /kafka/config/zookeeper.properties &
sleep 10
/kafka/bin/kafka-server-start.sh /kafka/config/server.properties &
sleep 10
/kafka/bin/connect-standalone.sh \
	/conf/connect-standalone.properties \
	/conf/gridgain-source.properties \
	/conf/gridgain-sink.properties