#!/bin/bash

cd ./base
docker build . -t csgo-base
cd ..

cd ./download
docker build . -t csgo-download
