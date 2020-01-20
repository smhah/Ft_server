#Create a tmp directory for phpMyAdmin and then change the permission.
mkdir /usr/share/phpMyAdmin/tmp
chmod 777 /usr/share/phpMyAdmin/tmp
#Set the ownership of phpMyAdmin directory.
chown -R www-data:www-data /usr/share/phpMyAdmin
