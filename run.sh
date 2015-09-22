#!/bin/sh

docker rm x2go
docker run -it -d -p 2222:22 --name=x2go quay.io/tatsuya6502/x2go:latest
docker logs x2go
