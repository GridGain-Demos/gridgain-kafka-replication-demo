if [ ! -d "gridgain-kafka-image/kafka" ]
then
	echo "Kafka wasn't found, downloading kafka_2.12-2.4.0"
	curl -o kafka.tgz "http://apache.mirrors.pair.com/kafka/2.4.0/kafka_2.12-2.4.0.tgz"
	mkdir ./gridgain-kafka-image/kafka
	tar -xvzf kafka.tgz --directory ./gridgain-kafka-image/kafka --strip-components 1
	rm kafka.tgz
fi

# Run setup
docker-compose -f gridgain-cluster-docker-compose.yml up -d
