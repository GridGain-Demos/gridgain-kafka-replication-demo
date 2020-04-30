# Changes Replication Between GridGain Clusters With Kafka Connector

The demo shows how to use Apache Kafka to replicate changes between two separate GridGain clusters with architecture and 
configuration process covered on this documentation page: https://www.gridgain.com/docs/latest/integrations/kafka/kc-ex-replication.

![changes-replication](images/kc-ex-replicate.png)

This is a ready to be used project that bootstraps GridGain and Kafka Connect clusters with GridGain WebConsole in Docker.
Just follow the instructions below to get the demo working.

## Prerequisites

Install Docker if it's installed in your environment yet: https://www.docker.com/get-started

## Start GridGain, Kafka and WebConsole in Docker

Clone or download this repository and start the demo by running `start.sh` from the root of the project.

The script pulls and builds the images as well as deploys the following containers:

* Two single-node GridGain clusters (`gridgain-source-node` is the container of the first cluster while
 `gridgain-sink-node` belongs to the second cluster).
* Two WebConsole containers - `gridgain-webconsole-backend` and `gridgain-webconsole-frontend`.
* One Kafka container named `gridgain-kafka` with pre-configured source and sink connectors.

## Start Web Agent to Monitor GridGain Clusters

Once WebConsole started, you will need to download a webagent and connect it to the cluster. 
Please add this to the properties file in order to connect to the cluster started in the docker:

    server-uri=http://localhost

    node-uri=http://localhost:6081

Also, to connect to the second cluster, you will need to start another webagent with this configuration:

    server-uri=http://localhost

    node-uri=http://localhost:6082

More information about WebAgent configuration can be found in the documentation: https://www.gridgain.com/docs/web-console/latest/web-agent-configuration

Script downloads Kafka binaries if they are not in the package yet.

## Load Data

Source cluster can be found by checking name of the nodes on monitoring page:

![source-cluster](images/source_cluster.png)

After this, copy SQL script from insert_data.sql and run it from WebConsole on Source cluster:

![sql-page](images/sql_page.png)

After this, you can check these entries on Sink cluster.

## Check That Changes Were Replicated

Switch to the Sink cluster and check sizes for these caches. 

![caches-monitoring](images/caches_monitoring.png)

## Stop Demo

Run `stop.sh` script from the project root to stop all the containers.
