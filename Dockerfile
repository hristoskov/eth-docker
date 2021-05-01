FROM nvidia/cuda:11.3.0-devel-ubuntu18.04

MAINTAINER Hristo Hristoskov


# Package and dependency setup
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y build-essential
RUN apt-get install -y cmake
RUN apt-get install -y libdbus-1-dev
RUN apt-get install -y mesa-common-dev

RUN git clone https://github.com/ethereum-mining/ethminer.git
WORKDIR /ethminer/
RUN git submodule update --init --recursive
RUN mkdir build
WORKDIR /ethminer/build
RUN cmake .. -DETHASHCUDA=ON -DETHASHCL=OFF -DETHSTRATUM=ON;
RUN cmake --build .
RUN make install

# RUN wget https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
# RUN tar xvf ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz
# RUN cd bin

