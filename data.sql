-- Suppression des anciennes données si elles existent déjà
DELETE FROM `departure_time`;
DELETE FROM `Stations`;
DELETE FROM `Direction`;
DELETE FROM `Lines`;

-- Ajout de la ligne 2
INSERT INTO `Lines` (id, name_line, number_line) VALUES (1, 'Ligne 2', 2);

-- Ajout de la direction P+R Ouest - Kersec
INSERT INTO `Direction` (id, name_direction, id_line) VALUES (1, 'P+R Ouest - Kersec', 1);

-- Ajout des stations/arrêts de bus
INSERT INTO `Stations` (id, name_station) VALUES (1, 'P+R Ouest'), (2, 'Fourchêne 1'), (3, 'Madeleine'), (4, 'République'), (5, 'PIBS 2'), (6, 'Petit Tohannic'), (7, 'Delestraint'), (8, 'Kersec');

-- Ajout des horaires pour la ligne 2
INSERT INTO `departure_time` (id_direction, id_station, departure_time) VALUES 
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'P+R Ouest'), '06:32'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'P+R Ouest'), '06:42'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'P+R Ouest'), '06:52'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'P+R Ouest'), '07:00'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'P+R Ouest'), '07:10'),

((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Fourchêne 1'), '06:34'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Fourchêne 1'), '06:44'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Fourchêne 1'), '06:54'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Fourchêne 1'), '07:02'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Fourchêne 1'), '07:12'),

((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Madeleine'), '06:37'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Madeleine'), '06:47'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Madeleine'), '06:57'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Madeleine'), '07:06'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Madeleine'), '07:16'),

((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'République'), '06:42'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'République'), '06:52'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'République'), '07:02'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'République'), '07:12'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'République'), '07:22'),

((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'PIBS 2'), '06:46'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'PIBS 2'), '06:56'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'PIBS 2'), '07:07'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'PIBS 2'), '07:17'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'PIBS 2'), '07:27'),

((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Petit Tohannic'), '06:50'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Petit Tohannic'), '07:00'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Petit Tohannic'), '07:11'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Petit Tohannic'), '07:21'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Petit Tohannic'), '07:31'),

((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Delestraint'), '06:51'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Delestraint'), '07:01'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Delestraint'), '07:12'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Delestraint'), '07:22'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Delestraint'), '07:32'),

((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Kersec'), '06:55'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Kersec'), '07:05'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Kersec'), '07:16'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Kersec'), '07:26'),
((SELECT id FROM `Direction` WHERE name_direction = 'P+R Ouest - Kersec'), (SELECT id FROM `Stations` WHERE name_station = 'Kersec'), '07:36');




