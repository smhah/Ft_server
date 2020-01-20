export DEBIAN_FRONTEND=noninteractive
echo 'mysql-apt-config mysql-apt-config/select-server select mysql-5,7' | debconfig-set-selections
apt-get update
apt-get install -y mysql-server
