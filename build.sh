#!/bin/bash

set -e

REPO=$(basename -s .git `git config --get remote.origin.url`)
REGISTRY='omerha'
COMMIT=$(git log --format="%H" -n 1)

docker build --pull --no-cache -t $REGISTRY/$REPO:$COMMIT -t $REGISTRY/$REPO:latest .

docker push $REGISTRY/$REPO:latest
docker push $REGISTRY/$REPO:$COMMIT