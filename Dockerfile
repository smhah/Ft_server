FROM debian:buster
#ENV	DEBIAN_FRONTEND noninteractive
workdir /tmp

COPY srcs/install-vim.sh .
COPY srcs/install-mysql.sh .
COPY srcs/install-php.sh .
COPY srcs/start-mysql.sh .
COPY srcs/config.inc.php .

RUN bash -c "apt update && apt-get install -y nginx"
RUN bash -c "bash install-vim.sh" && \
	bash -c "bash install-mysql.sh" && \
	bash -c "bash install-php.sh"
##RUN bash -c "mkdir /usr/share/phpMyAdmin"
##COPY srcs/phpMyAdmin /usr/share/phpMyAdmin/
RUN bash -c "mkdir /var/lib/phpMyAdmin"
RUN bash -c "chown -R www-data:www-data /var/lib/phpMyAdmin"
##COPY srcs/config.inc.php /usr/share/phpMyAdmin/
COPY srcs/user-php.sh .
RUN bash -c "bash user-php.sh"
COPY srcs/phpMyAdmin.conf /etc/nginx/conf.d/
COPY srcs/config-php.sh /tmp/
RUN bash -c "bash /tmp/config-php.sh"
COPY srcs/default /etc/nginx/sites-available/
#Config SSl Certf
COPY srcs/config_ssl.sh .
RUN bash -c "bash config_ssl.sh"
RUN bash -c "service nginx start"
COPY srcs/start-all.sh .

COPY srcs/wordpress.conf /etc/nginx/sites-available/
COPY srcs/install-wp.sh .
RUN bash -c "bash install-wp.sh"
COPY srcs/wp-config.php /var/www/html

#import database wordpress
COPY srcs/wordpress.sql .
COPY srcs/config.sh .
COPY srcs/import-data.sh .
COPY srcs/localhost.sql .
RUN bash -c "bash import-data.sh"
CMD bash /tmp/start-all.sh && tail -f /dev/null
EXPOSE 80 443
