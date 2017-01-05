#!/bin/bash
# script name:     install_stack.sh

pip --no-cache-dir install numpy
pip --no-cache-dir install matplotlib
pip --no-cache-dir install sympy
pip --no-cache-dir install cython
pip --no-cache-dir install pandas
pip --no-cache-dir install numexpr
pip --no-cache-dir install bottleneck
pip --no-cache-dir install SQLAlchemy
pip --no-cache-dir install beautifulsoup4
pip --no-cache-dir install html5lib

apt-get -y install libxml2-dev libxslt-dev

pip --no-cache-dir install lxml
pip --no-cache-dir install requests
pip --no-cache-dir install networkx
pip --no-cache-dir install plotly

apt-get -y install libblas-dev liblapack-dev
apt-get -y install libatlas-base-dev gfortran

pip --no-cache-dir install scipy
