#!/bin/bash
set -e

# Call this script as sudo install-python.sh <version-number>
# Example: sudo install-python.sh 3.7.10
apt-get update
apt-get install -y build-essential zlib1g-dev libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libreadline-dev \
    libnss3-dev libffi-dev liblzma-dev lzma wget

wget https://www.python.org/ftp/python/$1/Python-$1.tgz
tar -xvzf Python-$1.tgz
cd Python-$1

./configure --enable-optimizations
make altinstall

cd ..
rm -rf Python-$1
rm Python-$1.tgz
