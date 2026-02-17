#!/bin/bash
cd "$(dirname "$0")"
docker build -t stormworks-dedicatedserver-docker:latest .
docker run --rm -it stormworks-dedicatedserver-docker:latest