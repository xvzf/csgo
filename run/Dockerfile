FROM 192.168.10.13:5000/csgo-base

# Config
COPY ./config/* ./csgo/csgo/cfg/

# Addons
COPY ./addons/* ./csgo/csgo/addons/


RUN chmod +x ./csgo/csgo/addons/* && \
    chmod +x ./csgo/csgo/cfg/*
