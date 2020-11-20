wget -c https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
mv wordpress/ /var/www/html/
chown -R www-data:www-data /var/www/html/wordpress
chown -R www-data:www-data /var/www/html
chmod 755 -R /var/www/html
rm -f /var/www/html/wordpress/wp-config-sample.php
# cd /var/www/html/wordpress
# mv * ..
# rm -rf ../wordpress
# rm -f /var/www/html/index.nginx-debian.html



service nginx start
service php7.3-fpm start

