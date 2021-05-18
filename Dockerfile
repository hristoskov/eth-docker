FROM nvidia/driver:460.73.01-ubuntu18.04

# Package and dependency setup
RUN apt-get update
#RUN apt-get install -y libnvtoolsext1
RUN apt-get install -y wget
RUN apt-get install -y screen
RUN apt-get install -y git
RUN apt-get install -y build-essential
RUN apt-get install -y cmake
RUN apt-get install -y libdbus-1-dev
RUN apt-get install -y mesa-common-dev

RUN mkdir /miners

# Gminer
RUN mkdir /miners/gminer/
WORKDIR /miners/gminer/
RUN wget https://github.com/develsoftware/GMinerRelease/releases/download/2.54/gminer_2_54_linux64.tar.xz
RUN tar xvf gminer_2_54_linux64.tar.xz

# T-Rex miner
RUN mkdir /miners/t-rex/
WORKDIR /miners/t-rex/
RUN wget https://trex-miner.com/download/t-rex-0.20.3-linux.tar.gz
RUN tar xvf t-rex-0.20.3-linux.tar.gz

# Nanominer
RUN mkdir /miners/nanominer/
WORKDIR /miners/nanominer/
RUN wget https://github.com/nanopool/nanominer/releases/download/3.3.5/nanominer-linux-3.3.5-cuda11.tar.gz
RUN tar xvf nanominer-linux-3.3.5-cuda11.tar.gz

# Xmrig
RUN mkdir /miners/xmrig/
WORKDIR /miners/xmrig/
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-linux-x64.tar.gz
RUN tar xvf xmrig-6.12.1-linux-x64.tar.gz




