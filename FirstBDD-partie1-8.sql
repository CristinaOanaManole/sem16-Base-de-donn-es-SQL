--  PARTIE 1 Création et suppression de bases de données --
CREATE DATABASE `languages` ; --exo1-Créer une base de données languages.--
CREATE DATABASE 'webDevelopment' CHARACTER SET utf8_general_ci; --exo2-Créer une base de données webDevelopment avec l’encodage UTF-8.*/
CREATE DATABASE IF NOT EXISTS 'frameworks' CHARACTER SET utf8_general_ci; --exo3-Créer une base de données frameworks avec l’encodage UTF-8 si elle n’existe pas.*/ 
CREATE DATABASE IF NOT EXISTS 'languages' CHARACTER SET utf8_general_ci; --exo4-Créer une base de données languages avec l’encodage UTF-8 si elle n’existe pas.*/ 
DROP DATABASE 'languages'; --exo5-Supprimer la base de données languages.
DROP DATABASE IF EXISTS 'frameworks'; --exo6-Supprimer la base de données frameworks si elle existe.
DROP DATABASE IF EXISTS 'languages' ; --exo7-Supprimer la base de données languages si elle existe.

-- PARTIE 2 Création de tables --

--exo1- Dans la base de données webDevelopment, créer la table languages avec les colonnes :
--id (type INT, auto-incrémenté, clé primaire)
--language (type VARCHAR)
USE `webDevelopment`; -- USE permet la sélection de la base de donnée.
CREATE TABLE IF NOT EXISTS`languages` (  -- CREATE TABLE IF NOT EXISTS permet la création d'une table, si elle n'existe pas.
    `id` INT UNSIGNED AUTO_INCREMENT, -- Création d'une colonne id de type INT integer qui est positif grâce à UNSIGNED et auto incrémenté avec UNSIGNED AUTO_INCREMENT.
    `language`VARCHAR(40), -- Création d'une colonne languages de caractères variable grâce à VARCHAR(valeur variable).
    PRIMARY KEY (id) -- PRIMARY KEY permet d'indiquer la clef primaire de l'id.
    ) 
    ENGINE=INNODB; -- ENGINE=INNODB permet d'indiquer le type de moteur utilisé.

--exo2-Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
--id (type INT, auto-incrémenté, clé primaire)
--tool (type VARCHAR)
CREATE TABLE `tools` (
    `id` INT UNSIGNED AUTO_INCREMENT, -- INT permet d'indiquer que c'est un integer.
    `tool`VARCHAR(40),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;

--exo3-Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :
--id (type INT, auto-incrémenté, clé primaire)
--name (type VARCHAR)--
CREATE TABLE `frameworks`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name`VARCHAR(40),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;

-- exo4-Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :
--id (type INT, auto-incrémenté, clé primaire)
--library (type VARCHAR)*/
CREATE TABLE `libraries`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `library`VARCHAR(40),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;

--exo5-Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
--id (type INT, auto-incrémenté, clé primaire)
--ideName (type VARCHAR)--
CREATE TABLE `ide`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `ideName`VARCHAR(40),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;

--exo6-Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :
--id (type INT, auto-incrémenté, clé primaire)
--name (type VARCHAR)--
CREATE TABLE IF NOT EXISTS `frameworks`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name`VARCHAR(40),
    PRIMARY KEY (id)
    ) ENGINE=INNODB;

--exo7-Supprimer la table tools si elle existe.--
DROP TABLE IF EXISTS `tools`; -- DROP TABLE IF EXISTS permet de supprimer une table si elle existe.

--exo8-Supprimer la table libraries.--
DROP TABLE `libraries`; -- DROP TABLE permet de supprimer une table.

--exo9-Supprimer la table ide.--
DROP TABLE `ide`;

-- PARTIE 3 Modification de tables --

-- exo1-Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).--
USE 'webDevelopment';
ALTER TABLE `languages` -- ALTER TABLE permet de modifier une table existante
ADD `versions` VARCHAR(20); -- ADD permet d'ajouter une colonne à une table existante.

--exo2-Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).--
USE 'webDevelopment';
ALTER TABLE `frameworks`
ADD `version` INT; -- Le mot clef COLUMN est facultatif.

--exo3-Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.--
USE 'webDevelopment';
ALTER TABLE 'languages'
CHANGE 'versions' 'version' VARCHAR(255); -- CHANGE permet changer le nom d'une colonne.

--exo4-Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.--
USE 'webDevelopment';
ALTER TABLE 'frameworks'
CHANGE 'name' 'framework' VARCHAR(255);

--exo5-Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.--
USE 'webDevelopment';
ALTER TABLE 'frameworks'
MODIFY 'version' VARCHAR(12); -- MODIFY permet de modifier le type d'une colonne.

-- PARTIE 4 Insertion de données --

--exo1-Insérez les données suivantes dans la table languages de la base webDevelopment :
/*JavaScript, version 5
PHP, version 5.2
PHP, version 5.4
HTML, version 5.1
JavaScript, version 6
JavaScript, version 7
JavaScript, version 8
PHP, version 7*/--
USE 'wevDevelopment';
ALTER TABLE 'languages'
INSERT INTO 'languages' (language , version) -- INSERT INFO permet au choix d’inclure une seule ou plusieurs lignes à la base existante.
VALUES 
('JavaScript', 'new 5'),
('JavaScript', 'new 6'),
('JavaScript', 'new 7'),
('JavaScript', 'new 8'),
('PHP', 'new 5.2'),
('PHP', 'new 5.4'),
('PHP', 'new 7'),
('HTML', 'new 5.1');

--exo2-Insérez les données suivantes dans la table frameworks de la base webDevelopment :
/*Symfony, version 2.8
Symfony, version 3
Jquery, version 1.6
Jquery, version 2.10*/--
USE 'wevDevelopment';
ALTER TABLE 'frameworks'
INSERT INTO 'frameworks' (language , version)
VALUES 
('Symphony', 'new 2.8'),
('Symphony', 'new 3'),
('Jquery', 'new 1.6'),
('Jquery', 'new 2.10');

-- PARTIE 5 Sélection de données --

--exo1-Dans la table languages, afficher toutes les données de la table.--
USE 'wevDevelopment';
ALTER TABLE 'languages',
SELECT * --permet de faire une sélection complète dans le tableau.
FROM 'languages'; --permet d'inquer le tableau dans lequel faire les recherches.
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  4 | HTML       | version 5.1 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+

--exo2-Dans la table languages, afficher toutes les versions de PHP.--
USE 'wevDevelopment';
ALTER TABLE 'languages',
SELECT * FROM `languages` WHERE `languages`= 'PHP'; -- la clause WHERE permet d’extraire les lignes d’une base de données respactants une condition.
+----+-----------+-------------+
| id | language  | version     |
+----+-----------+-------------+
|  2 | PHP       | version 5.2 |
|  3 | PHP       | version 5.4 |
|  8 | PHP       | version 7   |
+----+-----------+-------------+

--exo3-Dans la table languages, afficher toutes les versions de PHP et de JavaScript.--
USE 'wevDevelopment';
ALTER TABLE 'languages',
SELECT * FROM `languages`
WHERE `language` <> 'HTML';
WHERE `language` = 'PHP' OR  `language` = 'JavaScript'; -- OR opérateur logique OU
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+

--exo4-Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.--
USE 'wevDevelopment';
ALTER TABLE 'languages',
SELECT *
FROM `languages`
WHERE `id`IN (3, 5, 7); -- IN opérateur logique permet de remplacer OR lors de données multiples.
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  7 | JavaScript | version 8   |
+----+------------+-------------+


--exo5-Dans la table languages, afficher les deux première entrées de JavaScript.--
SELECT * FROM `languages`
WHERE `language` = 'JavaScript'
LIMIT 2; -- la clause LIMIT permet de spécifier le nombre maximum de résultats que l’ont souhaite obtenir.
+----+------------+-----------+
| id | language   | version   |
+----+------------+-----------+
|  1 | JavaScript | version 5 |
|  7 | JavaScript | version 8 |
+----+------------+-----------+

--exo6-Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP.--
SELECT * FROM `languages`
WHERE `language` <> 'PHP';
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  4 | HTML       | version 5.1 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
+----+------------+-------------+

--exo7-Dans la table languages, afficher toutes les données par ordre alphabétique.--
SELECT * FROM `languages`
ORDER BY `language`; -- ORDER BY permet de trier les lignes dans un résultat d’une requête.
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  4 | HTML       | version 5.1 |
|  1 | JavaScript | version 5   |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  8 | PHP        | version 7   |
+----+------------+-------------+


-- Partie 6 : Sélection de données - Élargir les possibilités de la clause WHERE 
Avant de commencer les exercices, exécutez le script fourni.*/
-- Création de la base
CREATE DATABASE IF NOT EXISTS `development`;
-- On se positione dans la base nouvellement créé
USE `development`;
-- Création de la table languages
CREATE TABLE IF NOT EXISTS `languages` (
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=INNODB;
-- Création de la table frameworks qui contient une clé étrangère
CREATE TABLE IF NOT EXISTS `frameworks` (
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
`languagesId` INT NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=INNODB;
-- Insertion des données dans la table languages
INSERT INTO `languages` (`name`) VALUES ('Assembleur');
INSERT INTO `languages` (`name`) VALUES ('C');
INSERT INTO `languages` (`name`) VALUES ('C++');
INSERT INTO `languages` (`name`) VALUES ('Java');
INSERT INTO `languages` (`name`) VALUES ('HTML');
INSERT INTO `languages` (`name`) VALUES ('CSS');
INSERT INTO `languages` (`name`) VALUES ('JavaScript');
INSERT INTO `languages` (`name`) VALUES ('PHP');
INSERT INTO `languages` (`name`) VALUES ('C#');
INSERT INTO `languages` (`name`) VALUES ('VB');
INSERT INTO `languages` (`name`) VALUES ('Python');
INSERT INTO `languages` (`name`) VALUES ('Ruby');
INSERT INTO `languages` (`name`) VALUES ('Swift');
-- Insertion des données dans la table frameworks
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Qt',3);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('SDK Android',4);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Bootstrap',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Foundation',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('KNACSS',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Avalanche',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Miligram',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Skeleton',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Hoisin',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Inuit',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Mimic',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Ministrap',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Lotus',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Jquery',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Angular',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('ReactJS',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Vue.js',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Ember.js',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Meteor.js',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Laravel',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Symfony',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('CodeIgniter',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Yii',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Phalcon',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Lumen',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Silex',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Slim',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('.NET',9);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('.NET',10);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Django',11);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Ruby On Rails',12);

--exo1-Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).--
SELECT * FROM `frameworks` WHERE `version` LIKE '2.%'; -- LIKE permet d’effectuerune recherche sur un modèle particulier. % permet d'indiquer une variation de caractère.

--exo2-Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.--
SELECT * FROM `frameworks` WHERE `id`IN (1, 3);

--exo3-Dans la table ide, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.--
SELECT * FROM `ide` WHERE `date` BETWEEN 2010-01-01 AND 2011-12-31; -- BETWEEN permet de sélectionner un intervalle de données dans une requête utilisant WHERE & AND opérateur logique ET.

-- PARTIE 7 - Suppression et modification de données --

--exo1-Dans la table languages, supprimer toutes les lignes parlant de HTML.--
SELECT * FROM `languages`,
DELETE FROM `languages` WHERE `language` = "HTML"; -- DELETE permet de supprimer une ou des valeurs de la table.


--exo2-Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.--
SELECT * FROM `frameworks`,
UPDATE `framework` SET `framework` = `Symfony2` WHERE `framework` = `Symfony`; -- UPDATE permet de modifier des valeurs.

--exo3-Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1.--
SELECT * FROM `languages`,
UPDATE `Javascript` SET `version` = `version 5.1` WHERE `version` = `version 5`; -- SET permet d'indiquer la nouvelle valeur.

--  PARTIE 8 -  Les jointures 
/*Avant de commencer les exercices, exécutez le script fourni.*/

CREATE TABLE `webDevelopment`.`ide` (
`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
`version` VARCHAR(10) NOT NULL,
`date` DATE NOT NULL,
PRIMARY KEY (`id`)
)
ENGINE=INNODB;

INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.3', '2007-06-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.5', '2009-06-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.6', '2010-06-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.7', '2011-06-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '4.3', '2013-06-13');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('NetBeans', '7', '2011-04-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('NetBeans', '8.2', '2016-10-03');

--exo1-Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.--
SELECT `languages`.`name` AS `languName`, `frameworks`.`name` AS `frameName` -- permet de créer un alias pour facilité la lecture.
FROM `frameworks`
RIGHT JOIN `languages`  -- RIGHT JOIN permet de retourner tous les enregistrements de la table de droite même s’il n’y a pas de correspondance avec la table de gauche.
ON `languages`.`id` = `frameworks`.`languagesId`; -- ON permet de spécifier une condition de jointure

--exo2-Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.--
 SELECT *
FROM `frameworks`
INNER JOIN `languages` -- INNER JOIN permet de lier des tables entre elle et d'afficher les lignes si elles respectent la condition.
WHERE `frameworks`.`languagesId` = `languages`.`id`;

--exo3-Afficher le nombre de framework qu'a un langage.--
SELECT COUNT(*) AS numberFram, languages.name AS langName
FROM languages
INNER JOIN frameworks
ON languages.id=frameworks.languagesId
GROUP BY frameworks.languagesId; -- GROUP BY permet grouper plusieurs résultats et utiliser une fonctionde totaux sur un groupe de résultat.

--exo4-Afficher les langages ayant plus de 3 frameworks.--
SELECT COUNT(*)AS numberFram, languages.name AS langName
FROM languages
INNER JOIN frameworks
ON languages.id=frameworks.languagesId
GROUP BY `frameworks`.`languagesId`
HAVING COUNT(*)>3; -- HAVING permet de filtrer en utilisant des fonctions telles que SUM(), COUNT(), AVG(), MIN() ou MAX().