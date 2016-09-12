#!/bin/bash

CONFIGDIR="/mnt/tank02/docker/polyglot/config"
BASEDIR="`pwd`"
cd $BASEDIR

REPO=i814u2
IMAGE_NAME=udi-polyglot
CONTAINERNAME=polyglot

ACTION=$1

if [ -z "$ACTION" ];
  then
echo "$BASEDIR"
    echo "usage: $0 <build|run|stop|start|remove|rerun|attach|push|logs>";
    exit 1;
fi

_build() {
  # Build
  docker build -t "$REPO/$IMAGE_NAME" .
}

_run() {
  # Run (first time)
  docker run -d --name=$CONTAINERNAME -v $CONFIGDIR:/home/polyglot/Polyglot/config  --net=host -t $REPO/$IMAGE_NAME
}

_stop() {
  # Stop
  docker stop $CONTAINERNAME
}

_start() {
  # Start (after stopping)
  docker start $CONTAINERNAME
}

_remove() {
  # Remove
  docker rm $CONTAINERNAME
}

_rerun() {
  _stop
  _remove
  _run
}

_attach() {
  docker exec -ti $CONTAINERNAME sh
}

_logs() {
  docker logs $CONTAINERNAME
}

_push() {
  docker push $REPO/$IMAGE_NAME
}

eval _$ACTION
