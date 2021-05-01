FROM nvidia/cuda:11.3.0-base-ubuntu18.04

MAINTAINER Hristo Hristoskov


# Package and dependency setup
RUN apt-get update \
    apt-get install -y wget

RUN wget https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
RUN tar xvf ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
RUN cd bin

