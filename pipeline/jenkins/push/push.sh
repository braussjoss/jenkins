#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u braussjoss -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG braussjoss/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push braussjoss/$IMAGE:$BUILD_TAG
