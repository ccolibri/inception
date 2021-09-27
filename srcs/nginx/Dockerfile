FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y vim nginx mariadb-server wget curl
RUN openssl req -newkey rsa:2048 -x509 -sha256 -days 365 -nodes -out /etc/ssl/certs/ccaptain.crt \
-keyout /etc/ssl/certs/ccaptain.key -subj "/C=RU/ST=Moscow/L=Moscow/O=SCHOOL21/CN=www.ccaptain.com"
COPY ./nginx.conf /etc/nginx/sites-available/default
CMD ["nginx", "-g", "daemon off;"]
