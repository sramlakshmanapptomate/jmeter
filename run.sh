#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
JMETER_VERSION=${JMETER_VERSION:-"5.4"}
IMAGE="733318071301.dkr.ecr.us-west-2.amazonaws.com/apache-jmeter:latest"

# Finally run
docker run --rm --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} -n -t "tests/${TEST_DIR}/test-plan.jmx" -l "tests/${TEST_DIR}/test-plan.jtl"
