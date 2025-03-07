#!/usr/bin/env bash

sudo apt update
sudo apt install -y openjdk-17-jdk
java -version
python3 -m pip install numpy
sudo ./probfuzz/install.sh
./probfuzz/probfuzz.py 5


