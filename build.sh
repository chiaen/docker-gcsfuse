#!/bin/bash

docker build -t gcsfuse -f Dockerfile_gcsfuse .
docker run -v $PWD/linux_amd64:/linux_amd64 gcsfuse  mv /go/bin/gcsfuse /linux_amd64
docker build -t chiaen/docker-gcsfuse:go1.10 -f Dockerfile .
docker push chiaen/docker-gcsfuse:go1.10
