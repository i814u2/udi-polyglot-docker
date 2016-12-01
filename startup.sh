#!/bin/sh
python ./pip-upgrade-all.py
rm `cat file.arch`
wget https://github.com/UniversalDevicesInc/Polyglot/raw/unstable-release/bin/`cat file.arch`
chmod +x `cat file.arch`
./`cat file.arch` -v
