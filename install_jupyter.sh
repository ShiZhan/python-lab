#!/bin/bash
# script name:     install_jupyter.sh

pip --no-cache-dir install jupyter

apt-get -y install libncurses5-dev

pip --no-cache-dir install readline
pip --no-cache-dir install ipyparallel
