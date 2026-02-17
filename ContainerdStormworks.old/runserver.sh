#!/bin/bash
export XDG_RUNTIME_DIR=/tmp/runtime-user
export WINEDLLOVERRIDES="winegstreamer="
mkdir -p $XDG_RUNTIME_DIR
chmod 700 $XDG_RUNTIME_DIR
export DISPLAY=:99
winetricks -q comctl32 vcrun2019 vcrun2013
cd /serverapp
echo "Starting server..."
exec wine server64.exe
sleep infinity
echo "Initializing Wine..."
# wineserverを使った初期化
wineserver -p &
sleep 3
wineserver -w
sleep 2

echo "Installing dependencies..."
