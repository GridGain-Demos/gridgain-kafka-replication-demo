GRIDGAIN-KAFKA CONNECTOR
------------------------

Kafka Connector integrates Kafka with Apache Ignite making it easy to add Apache Ignite to a Kafka
pipeline-based system.

Kafka Connector is scalable and resilient and takes care of many integration challenges that otherwise would have 
to be manually addressed if you used Kafka Producer and Consumer APIs directly.

DOCUMENTATION

Visit GridGain-Kafka Connector Documentation (https://docs.gridgain.com/v8.4/docs/certified-kafka-connector) to learn
configuration, architecture, data schema support, monitoring considerations and differences between open source 
Apache Ignite and GridGain Kafka connectors.

QUICK STARTS

Follow one of the quick start guides to learn how to configure and run the Connector:
- Ignite Data Replication with Kafka Connector
  (https://docs.gridgain.com/v8.4/docs/certified-kafka-connector-examples-dr)
- Persisting Ignite Data in Relational Database with Kafka Connector
  (https://docs.gridgain.com/v8.4/docs/certified-kafka-connector-examples-rdbms-persistence)

INSTALLATION

The connector root directory is $GRIDGAIN_HOME/integration/gridgain-kafka-connect.
Run script copy-dependencies.sh in the connector root directory to add missing libraries to the connector lib directory.
Copy the connector directory to all Kafka Connect worker nodes and add it to the "plugin.path" of the Kafka Connect
configuration.

LICENSING AND SUPPORT

The Connector is part of GridGain Enterprise and Ultimate editions. The Enterprise and Ultimate licenses include
the Connector support.
