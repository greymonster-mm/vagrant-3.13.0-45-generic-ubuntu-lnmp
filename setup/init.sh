#!/bin/bash
#替换和更新apt源
sudo cp /vagrant/package/source.list /etc/apt/sources.list
sudo apt-get update
sudo cp /vagrant/package/rc.local /etc/rc.local

#基本库
sudo apt-get install autoconf
sudo apt-get install libicu-dev
sudo apt-get install build-essential

#默认用户
sudo useradd -m -d /home/menmei -s /bin/bash menmei
echo -e "menmei\nmenmei\n" | sudo passwd menmei
sudo chmod 777 -R /home/menmei/
sudo usermod -aG sudo menmei
mkdir /home/menmei/script

#www用户
sudo useradd -s /sbin/nologin www
echo -e "www\nwww\n" | sudo passwd www

#工具安装
sudo apt-get install memcached -y
sudo apt-get install mc dos2unix curl git subversion -y
sudo apt-get install tar
sudo apt-get install sysdig
sudo apt-get install lrzsz

#github配置
git config --global user.email "mm519687004@qq.com"
git config --global user.name "menmei"
sudo mkdir /home/menmei/.ssh
sudo chmod 0755 /home/menmei/.ssh
sudo cp /vagrant/setup/ssh/id_rsa.pub /home/menmei/.ssh/
sudo chmod 644 /home/menmei/.ssh/id_rsa.pub
sudo cp /vagrant/setup/ssh/id_rsa /home/menmei/.ssh/
sudo chmod 600 /home/menmei/.ssh/id_rsa
sudo echo "" > /home/menmei/.ssh/known_hosts
sudo chmod 755 /home/menmei/.ssh/known_hosts



