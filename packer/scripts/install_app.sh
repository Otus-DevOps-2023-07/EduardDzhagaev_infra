#!/bin/bash

#Script for installation ruby

# apt update
echo "update APT"
sudo apt-get update -y
sleep 20

#install ruby
echo "install ruby"
sudo apt-get install -y ruby-full ruby-bundler build-essential

#check "ruby"
echo " "
echo "Check versions ruby and bundler"

echo "version ruby:"
ruby -v

echo " "
echo "version bundler:"
bundler -v
