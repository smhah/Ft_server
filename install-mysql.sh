apt-get update
apt-get install -y wget
apt-get install -y gnupg
wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
apt-get install -y lsb-base lsb-release
dpkg -i mysql*
apt-get install -y mysql-server

