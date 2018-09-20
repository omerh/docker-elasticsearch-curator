#!/bin/bash

set -e

docker build --pull --no-cache -t omerha/docker-elasticsearch-curator:latest .
docker push omerha/docker-elasticsearch-curator:latest