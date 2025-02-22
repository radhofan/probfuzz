# # Update package lists and install bc
# sudo apt-get -y update
# sudo apt-get install -y bc
# sudo apt update

# # Install Python dependencies in the Conda environment
# pip install --user --no-cache-dir antlr4-python2-runtime six astunparse ast pystan edward pyro-ppl==0.2.1 tensorflow==1.5.0 pandas
# sudo apt install -y openjdk-8-jdk
# sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/bin/java
# sudo update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac
# java -version
# pip --user install http://download.pytorch.org/whl/cpu/torch-0.4.0-cp27-cp27mu-linux_x86_64.whl

# # Run check.py
# sed -i '1s|^|#!/usr/bin/env python2\n|' ./probfuzz/check.py
# chmod +x ./probfuzz/check.py
# python2 ./probfuzz/check.py

sudo apt-get -y update
sudo apt-get install -y python2.7
sudo apt-get install -y python-pip
sudo apt-get install -y bc
sudo pip2 --no-cache-dir install antlr4-python2-runtime six astunparse ast pystan edward pyro-ppl==0.2.1 tensorflow==1.5.0 pandas
sudo pip2 install http://download.pytorch.org/whl/cpu/torch-0.4.0-cp27-cp27mu-linux_x86_64.whl 
wget http://www.antlr.org/download/antlr-4.7.1-complete.jar -P probfuzz/language/antlr/
chmod +x probfuzz/language/antlr/run.sh
./probfuzz/language/antlr/run.sh
sudo pip2 install antlr4-python2-runtime==4.7.1
chmod +x probfuzz/check.py
./probfuzz/check.py

# (cd language/antlr/ && wget http://www.antlr.org/download/antlr-4.7.1-complete.jar && ./run.sh)