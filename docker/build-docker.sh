#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-dmitry1980/bitcoinfiatd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/bitcoinfiatd docker/bin/
cp $BUILD_DIR/src/bitcoinfiat-cli docker/bin/
cp $BUILD_DIR/src/bitcoinfiat-tx docker/bin/
strip docker/bin/bitcoinfiatd
strip docker/bin/bitcoinfiat-cli
strip docker/bin/bitcoinfiat-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
