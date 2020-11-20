bash start-all.sh
source password.sh
mysql -u wordpress -p wordpress --password="$MYSQL_PASS"< /tmp/localhost.sql
