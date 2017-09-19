#!/bin/sh

set -e

BASE_IMAGE=$(echo $BASE | sed 's/\//\\\//g')

sed "s/<IMAGE-BASE>/$BASE_IMAGE/g" Dockerfile > Dockerfile.arm
docker run --rm --privileged multiarch/qemu-user-static:register --reset
docker build -t distribrewed/base:arm -f Dockerfile.arm .
docker run -t distribrewed/base:arm python --version
docker login -u="$DOCKER_USER" -p="$DOCKER_PASS"
docker push distribrewed/base:arm