FROM ubuntu:latest
MAINTAINER paultiplady@gmail.com

# Satisfy deps
RUN apt-get update && \
    apt-get install -y gcc make curl && \
    apt-get clean && \
    rm -rf /tmp/* /var/tmp/* && \
    rm -rf /var/lib/apt/lists/* && \
    rm -f /etc/dpkg/dpkg.cfg.d/02apt-speedup   

# Download netperf
RUN apt-get update && \
    apt-get install -y netperf && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
 
