#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push "$DOCKER_USERNAME"/"$DOCKER_REPO":angular_ssr

