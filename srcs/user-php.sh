bash start-mysql.sh
mysql -u root -e "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wppassword';"
mysql -u root -e "CREATE DATABASE wordpress;"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO wordpress@localhost IDENTIFIED BY 'wppassword'; FLUSH PRIVILEGES;"
