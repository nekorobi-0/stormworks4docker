#!/bin/bash
cd "$(dirname "$0")"
docker build -t stormworks-dedicatedserver-downloader:latest .
docker run --privileged --security-opt seccomp=unconfined --rm -it -v $(pwd)/../ContainerdStormworks/serverapp:/home/steam/server stormworks-dedicatedserver-downloader:latest