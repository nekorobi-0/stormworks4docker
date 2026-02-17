#!/bin/bash
cd "$(dirname "$0")"
docker build -t stormworks-dedicatedserver-docker-new:latest .
docker run --rm -it -p 25569:25564 -p 25570:25565 stormworks-dedicatedserver-docker-new:latest