#!/bin/bash

echo "***************************"
echo "** Testing JAR ***********"
echo "***************************"

WORKSPACE=/home/braulio/visualcode/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven "$@"


