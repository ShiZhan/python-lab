#!/bin/bash
# script name:     install_python.sh

#Python 3 version to install
version="3.6.4"

apt-get install -y build-essential libncursesw5-dev libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev libssl-dev openssl wget

wget "https://www.python.org/ftp/python/$version/Python-$version.tgz"
tar zxvf "Python-$version.tgz"
cd "Python-$version"
./configure
make
make install
pip3 install pip --upgrade

# soft link to make pip3 default
ln -s /usr/local/bin/pip3 /usr/local/bin/pip

# clean up
cd ..
rm -rf "./Python-$version"
rm "./Python-$version.tgz"
