#!/bin/sh

set -e

BASE_IMAGE=$(echo $BASE | sed 's/\//\\\//g')

sed "s/<IMAGE-BASE>/$BASE_IMAGE/g" Dockerfile > Dockerfile.x64
docker build -t distribrewed/base:x64 -f Dockerfile.x64 .
docker run -t distribrewed/base:x64 python --version
docker login -u="$DOCKER_USER" -p="$DOCKER_PASS"
docker push distribrewed/base:x64