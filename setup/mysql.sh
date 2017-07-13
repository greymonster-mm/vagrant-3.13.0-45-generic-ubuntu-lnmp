#!/bin/sh
#echo "mysql-server-5.5 mysql-server/root_password password root" | debconf-set-selections
#echo "mysql-server-5.5 mysql-server/root_password_again password root" | debconf-set-selections
#sudo apt-get install mysql-server -y
#test -f /vagrant/import.sql && mysql -uroot --password=root < /vagrant/import.sql
sudo apt-get install mysql-client-5.6 -y
sudo apt-get install libmysqlclient-dev -y
