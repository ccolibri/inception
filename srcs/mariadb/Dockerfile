FROM debian:buster
RUN apt-get update
RUN apt-get install mariadb-server -y
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./db_init.sql /
RUN service mysql start && mysql < db_init.sql && rm -f db_init.sql
CMD /usr/bin/mysqld_safe