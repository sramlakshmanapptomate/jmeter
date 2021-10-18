#!/bin/bash

JMETER_VERSION=${JMETER_VERSION:-"5.4"}
IMAGE_TIMEZONE=${IMAGE_TIMEZONE:-"Europe/Amsterdam"}

# Example build line
docker build  --build-arg JMETER_VERSION=${JMETER_VERSION} --build-arg TZ=${IMAGE_TIMEZONE} -t "733318071301.dkr.ecr.us-west-2.amazonaws.com/apache-jmeter:latest" .
