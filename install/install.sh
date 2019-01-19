#!/bin/bash

STEAMCMD=/steamcmd
CSGOCONFIGDIR=/csgo_config
CSGODIR=/csgo


# Download game
cd /steamcmd
./steamcmd.sh +login anonymous +force_install_dir $CSGODIR +app_update 740 validate +quit


# Copy config and launch script
cp -R $CSGOCONFIGDIR/* $CSGODIR/csgo/cfg/
chmod +x $CSGODIR/csgo/cfg/*
