-- 1.
-- Horaires à l'arrêt Madelaine
SELECT departure_time AS `Horaires à l'arrêt Madeleine`
FROM departure_time
JOIN stations ON departure_time.id_station = stations.id
WHERE stations.name_station = 'Madeleine'
ORDER BY departure_time;

-- Horaires à l'arrêt République
SELECT departure_time AS `Horaires à l'arrêt République`
FROM departure_time
JOIN stations ON departure_time.id_station = stations.id
WHERE stations.name_station = 'République'
ORDER BY departure_time;


-- 2.
-- Parcours complet de la ligne 2 Direction Kersec
SELECT stations.name_station AS 'Parcours de la ligne 2 Direction Kersec'
FROM departure_time
JOIN stations ON departure_time.id_station = stations.id
JOIN `lines` ON departure_time.id_line = `lines`.id
WHERE `lines`.name_line = 'Ligne 2 direction Kersec'
GROUP BY stations.name_station
ORDER BY MIN(departure_time.departure_time);


-- 4. et 5.
SELECT
    DISTINCT CASE
        WHEN stations.name_station = 'Petit Tohannic' THEN 'L''arrêt n''est pas desservi. Veuillez vous reporter à l''arrêt Delestraint.'
        ELSE CONCAT('Horaires à l''arrêt ', stations.name_station, ' (', departure_time.`day`, ')')
        END AS 'Horaires à l''arrêt Petit Tohannic (Lundi)'
FROM departure_time
JOIN stations ON departure_time.id_station = stations.id
WHERE stations.name_station = 'Petit Tohannic'
AND departure_time.`day` = 'Lundi';


-- 8.
-- Les index dans une base de données MySQL sont des structures utilisées pour accélérer la recherche et la récupération des données.
-- Index de type B-Tree : Trie les valeurs dans un arbre équilibré, permettant une recherche efficace via un algorithme de recherche binaire. Il est flexible et adapté à une variété de distributions de données ainsi qu'aux requêtes de plage.
-- Index de type Hash : Utilise une fonction de hachage pour mapper les valeurs aux emplacements. Il offre une recherche directe basée sur la valeur hachée mais peut être moins flexible, car il est sensible à la distribution des données et ne gère pas efficacement les requêtes de plage.

-- 10
