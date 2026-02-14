#!/bin/bash
cd "$(dirname "$0")"
SERVER_DIR="/home/steam/server"
APP_ID="573090"
echo "Plz enter your steam username:"
read username
./steamcmd.sh +@sSteamCmdForcePlatformType windows +force_install_dir "$SERVER_DIR" +login "${username}" +app_update "$APP_ID" validate +quit
#./steamcmd.sh +login "${username}" +quit