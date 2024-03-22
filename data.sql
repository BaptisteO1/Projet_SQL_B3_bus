-- Suppression des anciennes données si elles existent déjà
DELETE FROM `departure_time`;
DELETE FROM `stations`;
DELETE FROM `lines`;
DELETE FROM `redirections`;

-- Ajout de la ligne 2 direction Kersec
INSERT INTO `lines` (id, name_line) VALUES (1, 'Ligne 2 direction Kersec');

-- Ajout des stations/arrêts de bus
INSERT INTO `stations` (id, name_station) VALUES (1, 'P+R Ouest'), (2, 'Fourchêne 1'), (3, 'Madeleine'), (4, 'République'), (5, 'PIBS 2'), (6, 'Petit Tohannic'), (7, 'Delestraint'), (8, 'Kersec');

-- Ajout des horaires pour la ligne 2
INSERT INTO `departure_time` (id_line, id_station, departure_time, `day`) VALUES 
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'P+R Ouest'), '06:32', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'P+R Ouest'), '06:42', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'P+R Ouest'), '06:52', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'P+R Ouest'), '07:00', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'P+R Ouest'), '07:10', 'Lundi'),

((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Fourchêne 1'), '06:34', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Fourchêne 1'), '06:44', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Fourchêne 1'), '06:54', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Fourchêne 1'), '07:02', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Fourchêne 1'), '07:12', 'Lundi'),

((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Madeleine'), '06:37', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Madeleine'), '06:47', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Madeleine'), '06:57', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Madeleine'), '07:06', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Madeleine'), '07:16', 'Lundi'),

((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'République'), '06:42', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'République'), '06:52', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'République'), '07:02', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'République'), '07:12', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'République'), '07:22', 'Lundi'),

((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'PIBS 2'), '06:46', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'PIBS 2'), '06:56', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'PIBS 2'), '07:07', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'PIBS 2'), '07:17', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'PIBS 2'), '07:27', 'Lundi'),

((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Petit Tohannic'), '06:50', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Petit Tohannic'), '07:00', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Petit Tohannic'), '07:11', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Petit Tohannic'), '07:21', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Petit Tohannic'), '07:31', 'Lundi'),

((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Delestraint'), '06:51', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Delestraint'), '07:01', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Delestraint'), '07:12', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Delestraint'), '07:22', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Delestraint'), '07:32', 'Lundi'),

((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Kersec'), '06:55', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Kersec'), '07:05', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Kersec'), '07:16', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Kersec'), '07:26', 'Lundi'),
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), (SELECT id FROM `stations` WHERE name_station = 'Kersec'), '07:36', 'Lundi');


-- 5. 
-- Ajout de la redirection pour l'arrêt Petit Tohannic vers l'arrêt Delestraint
INSERT INTO `redirections` (id_line, id_unserved_station, id_nearest_station) VALUES 
((SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction Kersec'), 
(SELECT id FROM `stations` WHERE name_station = 'Petit Tohannic'), 
(SELECT id FROM `stations` WHERE name_station = 'Delestraint'));

-- 6.
-- Ajout de la ligne 2 direction P+R Ouest
INSERT INTO `lines` (name_line) VALUES ('Ligne 2 direction P+R Ouest');

INSERT INTO `departure_time` (id_line, id_station, departure_time, `day`)
SELECT (SELECT id FROM `lines` WHERE name_line = 'Ligne 2 direction P+R Ouest'),  s.id, d.departure_time,  d.`day`
FROM `departure_time` d
JOIN  `stations` s ON d.id_station = s.id
JOIN `lines` l ON d.id_line = l.id
WHERE  l.name_line = 'Ligne 2 direction Kersec'
ORDER BY  d.departure_time DESC;