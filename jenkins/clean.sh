#!/bin/bash -e

KAFKA_CONTAINERS=$(docker ps -a | grep "spotify/kafka" | awk '{ print $1 }')

echo "Kafka containers: '$KAFKA_CONTAINERS'"

docker stop $KAFKA_CONTAINERS

docker rmi spotify/kafka
