GREEN='\033[0;32m'
NC='\033[0m'

bash start-mysql.sh
#mysql -u root -p < /var/www/html/phpmyadmin/sql/create_tables.sql
#mysql -u root -e "CREATE USER 'pma'@'localhost' IDENTIFIED BY 'pmapass';"
#mysql -u root -e "GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'pma'@'localhost' WITH GRANT OPTION;"
#mysql -u root -e "FLUSH PRIVILEGES;"
# //echo -e "[ ${GREEN}ok${NC} ] Created tables for PhpMyAdmin"
#mysql < pma_privileges.sql -u root -proot
#mysql -u root -p < /var/www/html/phpmyadmin/create_tables.sql
#mysql -u root -p -e "GRANT SELECT, INSERT, DELETE, UPDATE ON phpmyadmin.* TO 'pma'@'localhost' IDENTIFIED BY 'pmapass'"

# mysql -u root -e "CREATE DATABASE wordpress;"
# mysql -u root -e "CREATE USER wordpress@localhost IDENTIFIED BY 'wppassword;"
# mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'wordpress'@'localhost' IDENTIFIED BY 'wppassword';"
# mysql -u root -e "FLUSH PRIVILEGES;"

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'wordpress'@'localhost' IDENTIFIED BY 'wppassword';";
mysql --password=wppassword --user=wordpress -e "CREATE DATABASE wordpress;";
mysql --password=wppassword --user=wordpress -e "FLUSH PRIVILEGES;";

# mysql --password=wppassword --user=wordpress -e "CREATE DATABASE wordpress;";
# mysql --password=wppassword --user=wordpress -e "FLUSH PRIVILEGES;";
# mysql -u root -e "CREATE DATABASE wordpress;"
# mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO wordpress@localhost IDENTIFIED BY 'wppassword'; FLUSH PRIVILEGES;"