FROM debian:buster
#ENV	DEBIAN_FRONTEND noninteractive
workdir /tmp

COPY srcs/install-vim.sh .
COPY srcs/install-mysql.sh .
COPY srcs/install-php.sh .
COPY srcs/start-mysql.sh .
COPY srcs/config.inc.php .
COPY srcs/start-all.sh .

RUN bash -c "apt update && apt-get install -y nginx && apt upgrade -y"
RUN bash -c "bash install-vim.sh" && \
	bash -c "bash install-mysql.sh" && \
	bash -c "bash install-php.sh"

COPY srcs/config-php.sh /tmp/
RUN bash -c "bash /tmp/config-php.sh"
COPY srcs/config.inc.php /var/www/html/phpmyadmin/
COPY srcs/default /etc/nginx/sites-available/
RUN bash -c "rm -rf /etc/nginx/sites-enabled/default"
RUN bash -c "ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/"


#Config SSl Certf
COPY srcs/config_ssl.sh .
RUN bash -c "bash config_ssl.sh"
RUN bash -c "service nginx start"

#install wordpress
COPY srcs/install-wp.sh .
RUN bash -c "bash install-wp.sh"
COPY srcs/wp-config.php /var/www/html/wordpress

#Config DATABASE and USERS
COPY srcs/user-php.sh .
RUN bash -c "bash user-php.sh"

#import database wordpress
COPY srcs/import-data.sh .
COPY srcs/localhost.sql .
COPY srcs/password.sh .
RUN bash -c "bash import-data.sh"
CMD bash /tmp/start-all.sh && cat
EXPOSE 80 443
