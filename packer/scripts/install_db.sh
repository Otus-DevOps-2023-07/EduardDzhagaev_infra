#!/bin/bash

#Script for installation mongodb

echo "update APT"
sudo apt-get update -y
sleep 20
#while [ -n \"$(pgrep apt-get)\" ]; do sleep 1; i=$((i+1)); echo $i ; done

#install mongodb
sudo apt-get install -y mongodb

#status and start mongodb
echo " "
echo "status mongodb after install"
systemctl status mongodb

echo " "
echo "start and autostart mongodb"
sudo systemctl start mongodb
sudo systemctl enable mongodb

echo " "
echo "status mongodb after install"
systemctl status mongodb
