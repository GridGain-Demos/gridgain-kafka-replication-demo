docker stop gridgain-kafka gridgain-source-node gridgain-sink-node gridgain-webconsole-backend gridgain-webconsole-frontend
docker rm gridgain-kafka gridgain-source-node gridgain-sink-node gridgain-webconsole-backend gridgain-webconsole-frontend
docker system prune -f
docker volume prune -f
docker network prune -f