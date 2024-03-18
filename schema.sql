-- CREATE DATABASE IF NOT EXISTS 'UrbanTransit_EvalSQL1';

-- USE 'UrbanTransit_EvalSQL1';
ALTER TABLE `Direction` DROP FOREIGN KEY Direction_ibfk_1;
ALTER TABLE `departure_time` DROP FOREIGN KEY departure_time_ibfk_1;
ALTER TABLE `departure_time` DROP FOREIGN KEY departure_time_ibfk_2;
-- Suppression des tables si elles existent déjà
DROP TABLE IF EXISTS `Lines`;
DROP TABLE IF EXISTS `Direction`;
DROP TABLE IF EXISTS `Stations`;
DROP TABLE IF EXISTS `departure_time`;


-- Création de la table Line
CREATE TABLE `Lines` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name_line VARCHAR(255) NOT NULL,
    number_line INT NOT NULL
);

-- Création de la table Direction
CREATE TABLE `Direction` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name_direction VARCHAR(255) NOT NULL,
    id_line INT NOT NULL,
    FOREIGN KEY (id_line) REFERENCES `Lines`(id)
);

-- Création de la table Station
CREATE TABLE `Stations` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name_station VARCHAR(255) NOT NULL
);

-- Création de la table departure_time
CREATE TABLE `departure_time` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_direction INT NOT NULL,
    id_station INT NOT NULL,
    departure_time TIME NOT NULL,
    FOREIGN KEY (id_direction) REFERENCES `Direction`(id),
    FOREIGN KEY (id_station) REFERENCES `Stations`(id)
);

