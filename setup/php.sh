#!/bin/sh
#所有依赖库

sudo apt-get install libxml2 -y
sudo apt-get install libxml2-dev -y
sudo apt-get install bzip2 -y
sudo apt-get install libcurl3-openssl-dev -y
sudo apt-get install libcurl4-gnutls-dev -y
sudo apt-get install openssl -y
sudo apt-get install libssl-dev -y
sudo apt-get install libjpeg-dev -y
sudo apt-get install libpng-dev -y
sudo apt-get install libxpm-dev -y
sudo apt-get install libfreetype6-dev -y
sudo apt-get install libt1-dev -y
sudo apt-get install libmcrypt-dev -y
sudo apt-get install libmysql++-dev -y
sudo apt-get install libxslt1-dev -y
sudo apt-get install libbz2-dev -y

cd /vagrant/package
#sudo tar xvf /vagrant/package/php-5.6.30.tar
#sudo tar xvf /vagrant/package/php-7.1.6.tar

cd /vagrant/package/php-7.1.6
'./configure' '--prefix=/usr/local/php7' '--with-config-file-path=/etc/php7' '--enable-fpm' '--enable-pcntl' '--enable-mysqlnd' '--enable-opcache' '--enable-sockets' '--enable-sysvmsg' '--enable-sysvsem' '--enable-sysvshm' '--enable-shmop' '--enable-zip' '--enable-ftp' '--enable-soap' '--enable-xml' '--enable-mbstring' '--disable-rpath' '--disable-debug' '--disable-fileinfo' '--with-mysql=mysqlnd' '--with-mysqli=mysqlnd' '--with-pdo-mysql=mysqlnd' '--with-pcre-regex' '--with-iconv' '--with-zlib' '--with-mcrypt' '--with-openssl' '--with-mhash' '--with-xmlrpc' '--with-curl' '--with-imap-ssl' '--with-jpeg-dir=/usr/lib/x86_64-linux-gnu' '--with-freetype-dir=/usr/include/freetype2' '--with-gd' 
sudo make && sudo make install
sudo mkdir /etc/php7/apache2 -p
sudo cp /vagrant/package/php7.ini  /etc/php7/apache2/php.ini
sudo cp /vagrant/package/php7.ini  /etc/php7/php.ini
sudo ln -s /usr/local/php7/bin/php /usr/bin/php7
sudo cp /vagrant/package/php7-php-fpm.conf /usr/local/php7/etc/php-fpm.conf
sudo mkdir /usr/local/php7/var/
sudo /usr/local/php7/sbin/php-fpm -c /etc/php5/apache2/php.ini -y /usr/local/php7/etc/php-fpm.conf

cd /vagrant/package/php-5.6.30
'./configure' '--prefix=/usr/local/php5' '--with-config-file-path=/etc/php5' '--enable-fpm' '--enable-pcntl' '--enable-mysqlnd' '--enable-opcache' '--enable-sockets' '--enable-sysvmsg' '--enable-sysvsem' '--enable-sysvshm' '--enable-shmop' '--enable-zip' '--enable-ftp' '--enable-soap' '--enable-xml' '--enable-mbstring' '--disable-rpath' '--disable-debug' '--disable-fileinfo' '--with-mysql=mysqlnd' '--with-mysqli=mysqlnd' '--with-pdo-mysql=mysqlnd' '--with-pcre-regex' '--with-iconv' '--with-zlib' '--with-mcrypt' '--with-gd' '--with-openssl' '--with-mhash' '--with-xmlrpc' '--with-curl' '--with-imap-ssl' '--with-jpeg-dir=/usr/include' '--with-freetype-dir=/usr/include/freetype'
sudo make && sudo make install
sudo mkdir /etc/php5/apache2 -p
sudo cp /vagrant/package/php5.ini  /etc/php5/apache2/php.ini
sudo ln -s /usr/local/php5/bin/php /usr/bin/php5
sudo cp /vagrant/package/php5-php-fpm.conf /usr/local/php5/etc/php-fpm.conf
sudo mkdir /usr/local/php5/var/
sudo /usr/local/php5/sbin/php-fpm -c /etc/php5/apache2/php.ini -y /usr/local/php5/etc/php-fpm.conf
