#!/bin/bash
echo "Starting Xvfb..."
Xvfb :99 -screen 0 1024x768x24 -ac &
XVFB_PID=$!

echo "Starting server as user..."
gosu user bash runserver.sh
sleep infinity