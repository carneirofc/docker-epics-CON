#!/bin/bash
# Python 3 Python 2
apt-get -y update
apt-get -y install swig
apt-get -y install python3
apt-get -y install python3-pip
pip3 install --no-cache-dir -r /root/init/py3req.txt  & \
apt-get -y update
apt-get -y install swig
apt-get -y install python
apt-get -y install python-pip
pip install --no-cache-dir -r /root/init/py2req.txt