#!/bin/sh
DOCKER_MANTAINER_NAME=lnlscon
DOCKER_NAME=epics-r3.15.5
DOCKER_TAG=latest 

docker build -t ${DOCKER_MANTAINER_NAME}/${DOCKER_NAME}:${DOCKER_TAG} .