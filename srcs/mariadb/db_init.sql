
CREATE DATABASE ccaptain_db;
CREATE USER 'ccaptain'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON DVSGroupDB.* TO 'ccaptain'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY '1488';