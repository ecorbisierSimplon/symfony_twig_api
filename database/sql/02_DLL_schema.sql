SET NAMES utf8;

SET time_zone = `+00:00`;

SET foreign_key_checks = 0;

SET NAMES utf8mb4;

CREATE DATABASE IF NOT EXISTS tranquillo
/*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE tranquillo;

DROP TABLE IF EXISTS tpa_tasks, tpa_subtasks, tpa_users, tpa_roles;

CREATE TABLE IF NOT EXISTS tpa_roles (
    role_id INT AUTO_INCREMENT PRIMARY KEY, role_code VARCHAR(50) NOT NULL, role_name VARCHAR(50) NOT NULL, CONSTRAINT tpa_roles_code_ukey UNIQUE (role_code)
);

CREATE TABLE IF NOT EXISTS tpa_users (
    user_id INT AUTO_INCREMENT PRIMARY KEY, email VARCHAR(255) NOT NULL, lastname VARCHAR(50) NOT NULL, firstname VARCHAR(50) NOT NULL, user_password VARCHAR(255) NOT NULL, roles_id INT NOT NULL, CONSTRAINT tpa_users_ukey UNIQUE (email), CONSTRAINT tpa_users_tpa_roles_fkey FOREIGN KEY (roles_id) REFERENCES tpa_roles (role_id)
);