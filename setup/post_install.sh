#!/bin/sh
##REPO CONFIG
#sudo tar zxvf /vagrant/setup/sources.list.d.tgz -C /etc/apt/
##UTILITIES
##SETUP


cd /vagrant/setup
./init.sh
./nginx.sh
./php.sh
./mysql.sh
