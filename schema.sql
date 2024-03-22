 DROP DATABASE IF EXISTS `UrbanTransit_EvalSQL1`;
 CREATE DATABASE IF NOT EXISTS `UrbanTransit_EvalSQL1`;

 USE `UrbanTransit_EvalSQL1`;

-- Suppression des tables si elles existent déjà
DROP TABLE IF EXISTS `lines`;
DROP TABLE IF EXISTS `stations`;
DROP TABLE IF EXISTS `departure_time`;
DROP TABLE IF EXISTS `redirections`;


-- Création de la table Line
CREATE TABLE `lines` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name_line VARCHAR(255) NOT NULL
);

-- Création de la table Station
CREATE TABLE `stations` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name_station VARCHAR(255) NOT NULL
);

-- Création de la table departure_time
CREATE TABLE `departure_time` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_line INT NOT NULL,
    id_station INT NOT NULL,
    departure_time TIME NOT NULL,
    `day` ENUM('Lundi', 'Mardi') NOT NULL,
    FOREIGN KEY (id_line) REFERENCES `lines`(id),
    FOREIGN KEY (id_station) REFERENCES `stations`(id)
);

-- 3.
-- Création de la table Redirection
CREATE TABLE `redirections` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_line INT NOT NULL,
    id_unserved_station INT NOT NULL,
    id_nearest_station INT NOT NULL,
    FOREIGN KEY (id_line) REFERENCES `lines`(id),
    FOREIGN KEY (id_unserved_station) REFERENCES `stations`(id),
    FOREIGN KEY (id_nearest_station) REFERENCES `stations`(id)
);