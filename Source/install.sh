#!/bin/bash

# copy modules
mkdir -p /root/.msf4
cp -r modules /root/.msf4/

# copy resource scripts
mkdir -p /root/Documents/BloodGoblin/
cp -r rs /root/Documents/BloodGoblin/

# alias resource scripts directory to /bgrs
unlink /bgrs
ln -s /root/Documents/BloodGoblin/rs /bgrs