#!/bin/bash
xvfb-run -a winecfg
xvfb-run -a winetricks -q comctl32 vcrun2019 
rm -rf /var/lib/apt/lists/*
echo "hey"
sleep infinity