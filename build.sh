#!/bin/bash

set -e

docker build --pull --no-cache -t omerha/curator:latest .
docker push omerha/curator:latest