#!/bin/sh
python ./pip-upgrade-all.py
wget https://github.com/UniversalDevicesInc/Polyglot/raw/unstable-release/bin/`cat file.arch` -O `cat file.arch`
./`cat file.arch` -v
