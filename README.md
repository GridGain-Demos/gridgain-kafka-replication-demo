# Changes Replication Between GridGain Clusters Demo

The demo shows how to use Apache Kafka for changes replication between two separate GridGain clusters.

Architecture and configuration process is described here: https://www.gridgain.com/docs/latest/integrations/kafka/kc-ex-replication. At the same time, this demo has everything configured and it already can be started without any additional steps.

## Prerequisites
You have Docker installed. Please use this guide if you don’t have it yet: https://www.docker.com/get-started

## Runnable scripts
    start.sh starts containers needed for demo.
    stop.sh stop all containers

## Containers
This demo has 4 containers:

    2 Gridgain Enterprise Edition clusters with one server node in both of them (gridgain-source-node, gridgain-sink-node).

    1 Kafka container - (gridgain-kafka) with configured source and sink connectors.

    2 WebConsole containers - (gridgain-webconsole-backend) and (gridgain-webconsole-frontend)

Once WebConsole started, you will need to download a webagent and connect it to the cluster. Please add this to the properties file in order to connect to the cluster started in the docker:

    server-uri=http://localhost

    node-uri=http://localhost:6081

Also, to connect to the second cluter, you will need to start another webagent with this configuration:

    server-uri=http://localhost

    node-uri=http://localhost:6082

More information about WebAgent configuration can be found in the documentation: https://www.gridgain.com/docs/web-console/latest/web-agent-configuration

Script downloads Kafka binaries if they are not in the package yet.

## Start-up and verification
After cloning the repository with demo or downloading it, run start.sh (from the directory with demo) to build and run all docker images.

After this, run SQL script from insert_data.sql on Source cluster using WebConsole or SQLline from docker image:
	
    docker exec -it gridgain-node-1 /bin/bash
    bin/sqlline.sh --verbose=true -u jdbc:ignite:thin://localhost:10800

After this, you can check these entries on Sink cluster.


