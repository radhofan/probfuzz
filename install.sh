# Update package lists and install bc
sudo apt-get -y update
sudo apt-get install -y bc
sudo rm /etc/apt/sources.list.d/openjdk-r-ubuntu-ppa-jammy.list
sudo apt update

# Install Python dependencies in the Conda environment
pip install --no-cache-dir antlr4-python2-runtime six astunparse ast pystan edward pyro-ppl==0.2.1 tensorflow==1.5.0 pandas
sudo apt install -y openjdk-17-jdk
sudo update-alternatives --set java /usr/lib/jvm/java-17-openjdk-amd64/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/java-17-openjdk-amd64/bin/javac
java -version
sudo apt install maven
mvn -version
pip install http://download.pytorch.org/whl/cpu/torch-0.4.0-cp27-cp27mu-linux_x86_64.whl

# Run check.py
sed -i '1s|^|#!/usr/bin/env python2\n|' ./probfuzz/check.py
chmod +x ./probfuzz/check.py
./probfuzz/check.py
