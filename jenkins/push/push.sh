#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u sushantk8s -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG sushantk8s/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push sushantk8s/$IMAGE:$BUILD_TAG
