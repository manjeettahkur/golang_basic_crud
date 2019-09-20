CREATE USER IF NOT EXIST 'root'@'%' IDENTIFIED BY 'root';
GRANT SHOW DATABASES, SELECT, PROCESS, EXECUTE, ALTER ROUTINE, ALTER, SHOW VIEW, CREATE TABLESPACE, CREATE ROUTINE, CREATE, DELETE, CREATE VIEW, CREATE TEMPORARY TABLES, INDEX, EVENT, DROP, TRIGGER, REFERENCES, INSERT, FILE, CREATE USER, UPDATE, RELOAD, LOCK TABLES, SHUTDOWN, REPLICATION SLAVE, REPLICATION CLIENT, SUPER ON *.* TO 'root'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS person;

CREATE TABLE IF NOT EXISTS `person`.`person` (
	`id` CHAR(50) NOT NULL,
	`name` CHAR(50) NOT NULL,
	`last_name` CHAR(50) NOT NULL,
	`phone` CHAR(50) NULL DEFAULT NULL,
	`email` CHAR(50) NULL DEFAULT NULL,
	`year_od_birth` INT(11) NULL DEFAULT NULL
);
