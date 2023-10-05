
CREATE DATABASE `Друзья человека`;

USE `Друзья человека`;

CREATE TABLE cобаки
(
    id INT,
    Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE
);

CREATE TABLE кошки
(
    id INT,
    Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE
);

CREATE TABLE хомяки
(
    id INT,
    Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE
);

CREATE TABLE лошади
(
    id INT,
    Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE
);

CREATE TABLE верблюды
(
    id INT,
    Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE
);

CREATE TABLE Ослы
(
    id INT,
    Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE
);

INSERT INTO Кошки (id, Имя, Команды, ДатаРождения)
VALUES(1001,'cat', 'stand up', date'2015-05-13'), (1002,'cat1', 'jump', date'2017-03-11'), (1003,'cat2', 'sit', date'2018-06-21');

INSERT INTO cобаки (id, Имя, Команды, ДатаРождения)
VALUES(1004,'dog', 'run', date'2014-01-01'), (1005, 'dog1', 'come up, leave', date'2015-01-01'), (1006,'dog2', 'sit, run, give', date'2018-01-01');

INSERT INTO Хомяки (id, Имя, Команды, ДатаРождения)
VALUES(1007,'hom', 'run', date'2014-03-03'), (1008, 'hom1', 'come up', date'2015-04-04'), (1009, 'hom2', 'run', date'2018-05-05'), 
(1010, 'hom3', 'run', date'2021-06-06');

INSERT INTO Лошади (id, Имя, Команды, ДатаРождения)
VALUES(1011,'horse', 'run, go slowly', date'2017-03-05'), (1012, 'horse1', 'come up', date'2014-05-11'), (1013, 'horse2', 'trot, escape', date'2011-09-18'), 
(1014, 'horse3', 'go slowly', date'2020-03-27'), (1015, 'horse4', 'trot, run', date'2016-10-07');

INSERT INTO Верблюды (id, Имя, Команды, ДатаРождения)
VALUES(1016,'caml', 'trot', date'2022-03-07'), (1017, 'caml1', 'come up', date'2022-11-07');

INSERT INTO Ослы (id, Имя, Команды, ДатаРождения)
VALUES(1018,'osl', 'run', date'2018-06-07'), (1019, 'osl1', 'go away', date'2014-01-01');

TRUNCATE TABLE Верблюды;

SELECT * FROM Лошади 
UNION SELECT * FROM Ослы
AS `Вьючные животные`;

CREATE TABLE `Молодые животные`
SELECT id, Имя, Команды, ДатаРождения, 
(YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) AS Возраст
FROM Собаки
WHERE (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) < 3 
AND (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) > 1
UNION
SELECT id, Имя, Команды, ДатаРождения, 
(YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) AS Возраст
FROM Кошки
WHERE (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) < 3 
AND (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) > 1
UNION
SELECT id, Имя, Команды, ДатаРождения, 
(YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) AS Возраст
FROM Хомяки
WHERE (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) < 3 
AND (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) > 1
UNION
SELECT id, Имя, Команды, ДатаРождения, 
(YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) AS Возраст
FROM Лошади
WHERE (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) < 3 
AND (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) > 1
UNION
SELECT id, Имя, Команды, ДатаРождения, 
(YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) AS Возраст
FROM Верблюды
WHERE (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) < 3 
AND (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) > 1
UNION
SELECT id, Имя, Команды, ДатаРождения, 
(YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) AS Возраст
FROM Ослы
WHERE (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) < 3 
AND (YEAR(CURRENT_DATE)-YEAR(ДатаРождения)) - (RIGHT(CURRENT_DATE,5)<RIGHT(ДатаРождения,5)) > 1
ORDER BY id;

ALTER TABLE `Молодые животные` ADD COLUMN ВозрастПолный VARCHAR (30);
UPDATE `Молодые животные` SET ВозрастПолный = (CONCAT(TIMESTAMPDIFF(YEAR, ДатаРождения, CURRENT_DATE),' года ', 
			TIMESTAMPDIFF(MONTH, ДатаРождения, CURRENT_DATE) % 12, ' месяцев '));
            
CREATE TABLE `Все животные` (
	id INT,
	Имя VARCHAR(45),
    Команды VARCHAR(45),
    ДатаРождения DATE,
    НазваниеТаблицы ENUM('Кошки','Собаки','Хомяки', 'Лошади', 'Ослы', 'Верблюды') 
);

INSERT INTO `Все животные` (id, Имя, Команды, ДатаРождения, НазваниеТаблицы)
SELECT id, Имя, Команды, ДатаРождения, 'Кошки'
FROM Кошки;

INSERT INTO `Все животные` (id, Имя, Команды, ДатаРождения, НазваниеТаблицы)
SELECT id, Имя, Команды, ДатаРождения, 'Собаки'
FROM Собаки; 

INSERT INTO `Все животные` (id, Имя, Команды, ДатаРождения, НазваниеТаблицы)
SELECT id, Имя, Команды, ДатаРождения, 'Хомяки'
FROM Хомяки;

INSERT INTO `Все животные` (id, Имя, Команды, ДатаРождения, НазваниеТаблицы)
SELECT id, Имя, Команды, ДатаРождения, 'Лошади'
FROM Лошади;

INSERT INTO `Все животные` (id, Имя, Команды, ДатаРождения, НазваниеТаблицы)
SELECT id, Имя, Команды, ДатаРождения, 'Ослы'
FROM Ослы;

INSERT INTO `Все животные` (id, Имя, Команды, ДатаРождения, НазваниеТаблицы)
SELECT id, Имя, Команды, ДатаРождения, 'Верблюды'
FROM Верблюды;            