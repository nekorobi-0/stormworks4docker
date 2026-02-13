#!/bin/bash
chown -R steam:steam /home/steam/server
gosu steam bash install_server.sh