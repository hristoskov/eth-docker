FROM nvidia/cudagl:11.2.2-devel-ubuntu18.04

MAINTAINER Hristo Hristoskov


# Package and dependency setup
RUN apt-get update
RUN apt-get install -y libnvtoolsext1
RUN apt-get install -y wget
RUN apt-get install -y screen
RUN apt-get install -y git
RUN apt-get install -y build-essential
RUN apt-get install -y cmake
RUN apt-get install -y libdbus-1-dev
RUN apt-get install -y mesa-common-dev

RUN mkdir gminer
WORKDIR /gminer/
RUN wget https://github.com/develsoftware/GMinerRelease/releases/download/2.54/gminer_2_54_linux64.tar.xz
RUN tar xvf gminer_2_54_linux64.tar.xz

# RUN git clone https://github.com/ethereum-mining/ethminer.git
# WORKDIR /ethminer/
# RUN git submodule update --init --recursive
# RUN mkdir build
# WORKDIR /ethminer/build
# RUN cmake .. -DETHASHCUDA=ON -DETHASHCL=OFF -DETHSTRATUM=ON;
# RUN cmake --build .
# RUN make install

# RUN wget https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
# RUN tar xvf ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
# RUN cd bin

