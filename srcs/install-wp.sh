wget -c https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
mv wordpress/ /var/www/html/
chown -R www-data:www-data /var/www/html
chmod 755 -R /var/www/html/wordpress/
rm /var/www/html/index.nginx-debian.html
cd /var/www/html/wordpress
mv * ..
rm -rf ../wordpress

