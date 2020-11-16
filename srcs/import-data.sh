bash start-all.sh
source config.sh
mysql -u wordpress -p wordpress --password="$MYSQL_PASS"< /tmp/localhost.sql
