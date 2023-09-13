#!/bin/bash

#Script for installation mongodb

wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add - 
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list

#install mongodb
sudo apt-get update
sudo apt install mongodb -y

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
