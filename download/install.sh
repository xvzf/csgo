#!/bin/bash

cd /steamcmd
./steamcmd.sh +login anonymous +force_install_dir /csgo +app_update 740 validate +quit

mkdir -p ./csgo/csgo/addons
