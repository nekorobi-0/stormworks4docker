#!/bin/bash
cd "$(dirname "$0")"
docker build -t stormworks-dedicatedserver-docker:latest .
docker run --rm -it --privileged --sysctl kernel.unprivileged_userns_clone=1 --security-opt seccomp=unconfined --security-opt apparmor=unconfined stormworks-dedicatedserver-docker:latest