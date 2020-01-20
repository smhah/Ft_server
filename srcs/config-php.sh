mv /usr/share/phpMyAdmin /var/www/html/
chmod 660 /var/www/html/phpMyAdmin/config.inc.php
chown -R www-data:www-data /var/www/html/phpMyAdmin
mv /var/www/html/phpMyAdmin /var/www/html/phpmyadmin
service nginx restart
