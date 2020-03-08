#! /bin/bash

set -e

IMAGE_NAME=ubuntu-py3-im-01
CONTAINER_NAME=ubuntu-py3-container-01

docker build -t $IMAGE_NAME .
docker stop $CONTAINER_NAME || true && docker rm -f $CONTAINER_NAME || true
# set +e && docker rm $CONTAINER_NAME set -e
docker run -it --name $CONTAINER_NAME $IMAGE_NAME
