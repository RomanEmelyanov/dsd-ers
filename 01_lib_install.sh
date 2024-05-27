#!/bin/bash

# root permission required
sudo apt update
sudo apt install -y cmake build-essential 
sudo apt install -y librtlsdr-dev libsndfile1-dev libitpp-dev libpulse-dev libssl-dev libcodec2-dev

# source https://github.com/szechyjs/mbelib/
rm -rf mbelib-debian-1.3.0
unzip -qo mbelib-debian-1.3.0.zip
cd mbelib-debian-1.3.0
mkdir build
cd build
cmake ..
make

# root permission required
sudo make install
cd ..
