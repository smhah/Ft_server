apt install unzip
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-all-languages.zip
unzip *.zip
rm -rf *.zip
mv phpMyAdmin-5.0.1-all-languages  /var/www/html/phpmyadmin
cp /tmp/config.inc.php /var/www/html/phpmyadmin/
chmod 660 /var/www/html/phpmyadmin/config.inc.php
chown -R www-data:www-data /var/www/html/phpmyadmin
rm -rf /var/www/html/index.nginx-debian.html
service nginx restart

# mv /usr/share/phpMyAdmin /var/www/html/
# chmod 660 /var/www/html/phpMyAdmin/config.inc.php
# chown -R www-data:www-data /var/www/html/phpMyAdmin
# mv /var/www/html/phpMyAdmin /var/www/html/phpmyadmin
# service nginx restart