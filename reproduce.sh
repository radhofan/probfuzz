#!/usr/bin/env bash

# # Install Miniconda
# curl -fsSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda.sh
# bash miniconda.sh -b -p $HOME/miniconda

# # Set environment variables
# export PATH="$HOME/miniconda/bin:$PATH"
# export MAMBA_ROOT_PREFIX="$HOME/miniconda"

# # Install Mamba
# conda install -c conda-forge mamba -y

# # Initialize Mamba shell
# mamba shell init --shell=bash
# source ~/.bashrc  # Reload shell config
# eval "$(mamba shell hook --shell=bash)"

# # Create and activate 'flex' environment
# mamba create -n probfuzz python=2.7.18 -c conda-forge -y
# mamba activate probfuzz
# wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
# python2 get-pip.py pip==19.3.1

# Installation
sudo apt update
sudo apt install -y python2
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python2 get-pip.py
export PATH=$HOME/.local/bin:$PATH
echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
source ~/.bashrc  
pip2 install --upgrade "pip==19.3.1"  

python2 --version
pip2 --version

chmod +x ./probfuzz/install.sh
sudo ./probfuzz/install.sh
pip2 install antlr4-python2-runtime==4.7.1
pip2 install numpy==1.16.6
# pip show antlr4-python2-runtime
# mamba list | grep antlr

# Run ProbFuzz
# which python
# python2 --version
chmod +x probfuzz/probfuzz.py
python2 ./probfuzz/probfuzz.py 5





