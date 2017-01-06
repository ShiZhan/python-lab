#!/bin/bash
# script name:     install_python.sh

apt-get install -y python3.5 python3.5-dev
wget https://bootstrap.pypa.io/get-pip.py -O - 2> /dev/null | python3.5
