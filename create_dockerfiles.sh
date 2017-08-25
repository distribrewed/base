#!/usr/bin/env bash

sed 's/<IMAGE-BASE>/alpine:3.4/g' Dockerfile > Dockerfile.x64
sed 's/<IMAGE-BASE>/hypriot\/rpi-alpine/g' Dockerfile > Dockerfile.arm