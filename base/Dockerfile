FROM ubuntu:18.04
MAINTAINER Matthias Riegler <matthias@xvzf.tech>

ENV STEAMCMD /steamcmd

RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install lib32gcc1 curl net-tools lib32stdc++6 python3 \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && mkdir $STEAMCMD

# Download steamcmd
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"  | tar xz -C $STEAMCMD

COPY ./config /csgo_config
COPY ./serve.py /serve.py

WORKDIR $STEAMCMD

RUN ./steamcmd.sh +login anonymous +quit

# Fix for missing library
RUN mkdir -p /root/.steam/sdk32/
RUN ln -s $STEAMCMD/linux32/steamclient.so /root/.steam/sdk32/steamclient.so
