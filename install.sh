# Update package lists and install bc
sudo apt-get -y update
sudo apt-get install -y bc
sudo apt update

# Install Python dependencies in the Conda environment
python2 -m pip install --no-cache-dir antlr4-python2-runtime six astunparse ast pystan edward pyro-ppl==0.2.1 tensorflow==1.5.0 pandas
chmod +x ./probfuzz/install_java.sh
sudo apt install openjdk-8-jdk
python2 -m pip install http://download.pytorch.org/whl/cpu/torch-0.4.0-cp27-cp27mu-linux_x86_64.whl

# Run check.py
sed -i '1s|^|#!/usr/bin/env python2\n|' ./probfuzz/check.py
chmod +x ./probfuzz/check.py
./probfuzz/check.py
