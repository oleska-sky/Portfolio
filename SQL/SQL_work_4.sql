--дз №2

CREATE TABLE IF NOT EXISTS genre (
	ID_genre SERIAL PRIMARY KEY,
	genre_name VARCHAR(60) NOT null unique
);


CREATE TABLE IF NOT EXISTS performer (
	ID_performer SERIAL PRIMARY KEY,
	name_nickname VARCHAR(60) NOT NULL unique
);


CREATE TABLE IF NOT EXISTS genre_performer (
	ID_genre INTEGER REFERENCES genre (ID_genre),
	ID_performer INTEGER REFERENCES performer (ID_performer)
);
	
CREATE TABLE IF NOT EXISTS album (
	ID_album SERIAL PRIMARY KEY,
	album_name VARCHAR(160) NOT NULL,
	album_year INTEGER
);

CREATE TABLE IF NOT EXISTS album_performer (
	ID_album INTEGER REFERENCES album (ID_album),
	ID_performer INTEGER REFERENCES performer (ID_performer)
);

CREATE TABLE IF NOT EXISTS track (
	ID_track SERIAL PRIMARY KEY,
	ID_album INTEGER REFERENCES album (ID_album),
	track_name VARCHAR(160) NOT NULL,
	time_track TIME NOT NULL
);
--
CREATE TABLE IF NOT EXISTS collection (
	ID_collection SERIAL PRIMARY KEY,
	collection_name VARCHAR(160) NOT NULL,
	collection_year INTEGER
);

CREATE TABLE IF NOT EXISTS track_collection (
	ID_track INTEGER REFERENCES track (ID_track),
	ID_collection INTEGER REFERENCES collection (ID_collection)
);



--дз №3


INSERT INTO performer (name_nickname)
	VALUES 
		('Король и Шут'),-- хоррор-панк
		('Сектор Газа'),--панк
		('Михаил Круг'),--шансон
		('Ленинград'), --Рок, Шансон, Поп-рок
		('Ария'),--Рок
		('Anna Asti'),--Русская поп-музыка
		('Бутырка'), --шансон
		('Владимир Высоцкий'),--авторская песня
		('Guf'),--Рэп, Хип-Хоп
		('Баста'),--Рок
		('Ирина Круг'),--шансон
		('Полина Гагарина'),--Русская поп-музыка
		('Shaman'),--Поп-рок
		('Стас Михайлов'),--шансон
		('Агата Кристи'),--Рок
		('Михаил Шуфутинский'),--шансон
		('Сплин'),--Рок
		('Nautilus Pompilius'),--Рок
		('Иван Кучин'),--Русский шансон, Авторская песня
		('Burito'),--Рэп, Хип-Хоп
		('Северный Флот'),--рок
		('Алена Апина'),-- 	эстрада, народная, поп, шансон, фольклор
		('Аффинаж'),-- 	шансон, фолк-рок, неофолк, инди-рок, альтернативный рок
		('Лигалайз'),--Рэп
		('Пикник'),----рок
		('Velial Squad'),----Хоррор-рэп, хорроркор
		('Сергей Минаев'),--евродиско, итало-диско, синтипоп, музыкальная пародия, камеди-поп, рок
		('Клава Кока');--поп
		
--select * 
--from performer;

INSERT INTO genre (genre_name)
	VALUES
		('Хоррор-панк'),
		('Панк'),
		('Рок'),
		('Шансон'),
		('Поп-рок'),
		('Авторская песня'),
		('Хип-Хоп'),
		('Русская поп-музыка'),
		('Рэп'),
		('Поп');
		

--select * from genre;

INSERT INTO album (album_name, album_year)
	VALUES
		('Вдох', 2022),
		('Ты – всё', 2017),
		('Ино́й', 2018),--третий студийный альбом российской рок-группы «Северный Флот
		('Давай так', 2018),--поп Алёны Апиной
		('Комната с личными вещами', 2018),--российской группы «Аффинаж»
		('Молодой Король', 2018),--рэп-исполнителя Лигалайза
		('В руках великана', 2019),-- рок-группы «Пикник»
		('Голову на плаху', 2019), --российской группы Velial Squad
		('Коллаж', 2019),--музыканта Сергея Минаева
		('Неприлично о личном', 2019),-- Клавы Коки
		('My friend', 2020);-- Клавы Коки
		
--select * 
--from album;

INSERT INTO track (ID_album, track_name, time_track)
	VALUES
		(1, 'Интро', '0:01:34'),--вдох 2022 Полина Гагарина
		(1, 'Стану солнцем', '0:04:33'),--вдох
		(1, 'Танцуй со мной', '0:03:56'),--вдох
		(1, 'Не отпускай', '0:03:47'),--вдох
		(1, 'Высоко', '0:03:41'),--вдох
		(1, 'Целого мира мало', '0:05:09'),--вдох
		(1, 'Intro', '0:01:37'),--вдох
		(1, 'Plastic', '0:03:26'),--вдох
		(1, 'Forbidden Love', '0:04:18'),--вдох
		(1, 'Free', '0:04:32'),--вдох
		(1, 'Hands Off', '0:03:44'),--вдох
		(1, 'Day', '0:04:55'),--вдох
		(2, 'Ты – всё', '0:04:05'),--Ты – всё 2017 Стас Михайлов
		(2, 'Там, за горизонтом', '0:03:44'),--Ты – всё 2017 Стас Михайлов
		(2, 'Нас обрекла любовь на счастье', '0:03:28'),--Ты – всё 2017 Стас Михайлов
		(2, 'Поделим небо', '0:03:25'),--Ты – всё 2017 Стас Михайлов
		(2, 'Если завтра будет солнце', '0:04:00'),--Ты – всё 2017 Стас Михайлов
		(2, 'Любовь-наркоз', '0:03:27'),--Ты – всё 2017 Стас Михайлов
		(2, 'Не зови, не слышу', '0:03:19'),--Ты – всё 2017 Стас Михайлов
		(2, 'Белая река', '0:03:45'),--Ты – всё 2017 Стас Михайлов
		(2, 'Прожигаю', '0:03:19'),--Ты – всё 2017 Стас Михайлов
		(2, 'Дай нам Бог', '0:03:24'),--Ты – всё 2017 Стас Михайлов
		(2, 'Я столько не выпью', '0:03:21'),--Ты – всё 2017 Стас Михайлов
		(2, 'Дресскод', '0:03:15'),--Ты – всё 2017 Стас Михайлов
		(2, 'Наша жизнь', '0:03:28'),--Ты – всё 2017 Стас Михайлов
		(3, 'Иной', '0:04:55'),--('Ино́й', 2018),--третий студийный альбом российской рок-группы «Северный Флот
		(3, 'Здравствуй, страна!', '0:04:28'),
		(3, 'Ленинград', '0:03:35'),
		(3, 'Удачи солдат', '0:03:57'),
		(3, 'Время любить', '0:04:14'),
		(3, 'Колыбельная', '0:03:39'),
		(3, 'Странник', '0:03:39'),
		(3, 'Самая тёмная ночь', '0:03:26'),
		(3, 'Вечный', '0:03:42'),
		(4, 'Близость', '0:03:48'),--('Давай так', 2018),--поп Алёны Апиной
		(4, 'Давай так', '0:03:18'),
		(4, 'Елена', '0:03:51'),
		(4, 'Девушка Бонда', '0:03:49'),
		(4, 'Снежная королева', '0:03:44'),
		(4, 'Прощай', '0:03:44'),
		(4, 'Самоубийца', '0:03:30'),
		(4, 'Давай Так', '0:03:16'),
		(4, 'Прощай', '0:03:58'),
		(4, 'Прощай', '0:03:59'),
		(4, 'Близость', '0:03:14'),
		(4, 'Подкаты', '0:03:50'),
		(5, 'Не обижайся, пожалуйста', '0:01:16'),--('Комната с личными вещами', 2018),--российской группы «Аффинаж»
		(5, 'Напрасная обида', '0:03:30'),
		(5, 'Комната с личными вещами', '0:04:36'),
		(5, 'Ветер, верни!', '0:03:07'),
		(5, 'Самый', '0:01:49'),
		(5, 'Звездолёт', '0:06:14'),
		(5, 'Забыл', '0:03:04'),
		(5, 'Не навсегда', '0:03:06'),
		(6, 'Маклауд', '0:05:02'),--('Молодой Король', 2018),--рэп-исполнителя Лигалайза
		(6, 'Не верь хайпу', '0:03:56'),
		(6, 'Молодой Король', '0:04:28'),
		(6, 'Проклятый рэп', '0:02:40'),
		(6, 'Московский бум', '0:03:49'),
		(6, 'Бандит', '0:04:29'),
		(6, 'Вселенной', '0:03:43'),
		(6, 'Один', '0:02:30'),
		(6, 'Океан', '0:04:17'),
		(6, 'Двое', '0:04:16'),
		(6, 'Ещё один день', '0:03:20'),
		(7, 'Счастливчик', '0:04:16'),--('В руках великана', 2019),-- рок-группы «Пикник»
		(7, 'В руках великана', '0:04:30'),
		(7, 'Лиловый корсет', '0:04:34'),
		(7, 'Сияние', '0:05:10'),
		(7, 'Такая их карма', '0:04:45'),
		(7, 'Разноцветные ленты', '0:03:18'),
		(7, 'Фильм окончен', '0:03:52'),
		(7, 'Душа самурая - меч', '0:04:14'),
		(7, 'Где душа летает...', '0:03:00'),
		(7, 'Эпизод N°10', '0:01:01'),
		(7, 'Grand finale (инструментал)', '0:01:11'),
		(8, 'Топлю', '0:03:09'),--('Голову на плаху', 2019), --российской группы Velial Squad
		(8, 'Кара', '0:02:30'),
		(8, 'Насекомое', '0:02:32'),
		(8, 'Swipe', '0:03:04'),
		(8, 'Мимо худа', '0:03:28'),
		(8, 'Moonrock', '0:02:46'),
		(8, 'Флешбэк', '0:02:39'),
		(8, 'Притон', '0:03:52'),
		(8, 'Гипноз', '0:04:27'),
		(8, 'Black God', '0:02:42'),
		(8, 'Rest in Peace', '0:02:28'),
		(8, 'Voodoo Doll', '0:03:19'),
		(8, 'Punk Is Dead', '0:02:58'),
		(8, 'Ловец снов', '0:02:35'),
		(8, 'Голову на плаху', '0:03:04'),
		(8, 'Приговор (Outro)', '0:00:46'),
		(9, 'Студия рекорд', '0:01:33'),--('Коллаж', 2019),--музыканта Сергея Минаева
		(9, 'Я в третий раз…', '0:00:51'),
		(9, 'Ты мой хлеб, моя соль', '0:03:52'),
		(9, 'Только у нас…', '0:00:16'),
		(9, 'Братец Луи', '0:04:10'),
		(9, 'Люба, братцы, Люба', '0:00:53'),
		(9, 'Студия Рекорд 2', '0:00:45'),
		(9, 'Но прошли года', '0:02:15'),
		(9, 'Алешкина любоф', '0:00:56'),
		(9, 'Скрипка', '0:04:51'),
		(9, 'Say You Never', '0:02:00'),
		(9, 'Я слышу твой голос', '0:03:51'),
		(9, 'Досуга лучше в мире нету…', '0:00:41'),
		(9, 'Шопен', '0:04:17'),
		(9, 'Выходной', '0:00:23'),
		(9, 'Дядя Петя', '0:04:30'),
		(9, 'Толяна! Загоняй!', '0:01:00'),
		(9, 'Дискоклуб', '0:00:26'),
		(9, 'Ретро', '0:03:37'),
		(9, 'Как ни грустно, но приходит расставанье', '0:03:34'),
		(10, 'Море Волнуется', '0:02:25'),--('Неприлично о личном', 2019);-- Клавы Коки
		(10, 'Суженая', '0:02:40'),
		(10, 'Ноги делают ноги', '0:02:59'),
		(10, 'Влюблена в МДК', '0:03:07'),
		(10, 'Мне пох', '0:02:38'),
		(10, 'Половина', '0:03:02'),
		(10, 'Трать на меня', '0:02:51'),
		(10, 'Алло', '0:03:02'),
		(10, 'Ближний-дальний', '0:03:16'),
		(10, 'Зая', '0:02:41'),
		(10, 'Последний процент', '0:02:15'),
		(11, 'My friend', '0:02:15'),--My friend выдуманный альбом клавы коки
		(11, 'myself', '0:02:17'),
		(11, 'by myself', '0:02:25'),
		(11, 'bemy self', '0:02:45'),
		(11, 'go my', '0:02:15'),
		(11, 'myself by', '0:02:35'),
		(11, 'by myself by beemy', '0:01:55'),
		(11, 'premyne', '0:02:15'),
		(11, 'my own', '0:02:45'),
		(11, 'own my', '0:02:55'),
		(11, 'my', '0:02:35'),
		(11, 'oh my god', '0:02:15');
		
	
--select * from track;

--drop table genre
--
--drop table track_collection CASCADE
--
--drop table collection CASCADE
--
--drop table genre_performer CASCADE
--
--drop table album_performer CASCADE
--
--drop table album CASCADE
--
--drop TABLE performer CASCADE
--
--drop TABLE track CASCADE
	
INSERT INTO collection (collection_name, collection_year)
	VALUES
		('Топ-100 России 2018', 2018),
		('Золотой Граммофон 2018', 2018),
		('Золотой Граммофон 2019', 2019),
		('Золотой Граммофон 2020', 2020),
		('Золотой Граммофон 2021', 2021),
		('Шансо́н го́да 2018', 2018),
		('Шансо́н го́да 2019', 2019),
		('Шансо́н го́да 2020', 2020),
		('Шансо́н го́да 2022', 2022);

--select * 
--from collection;

--создание связей между отношениями
		
INSERT INTO genre_performer (ID_genre, ID_performer)
	VALUES 
		(1, 1),
		(2, 2),
		(3, 4),
		(3, 5),
		(3, 10),
		(3, 15),
		(3, 17),
		(3, 18),
		(3, 21),
		(3, 23),
		(3, 25),
		(3, 27),
		(4, 3),
		(4, 4),
		(4, 7),
		(4, 11),
		(4, 14),
		(4, 16),
		(4, 19),
		(4, 22),
		(4, 23),
		(5, 4),
		(5, 13),
		(6, 8),
		(6, 19),
		(7, 9),
		(7, 20),
		(8, 6),
		(8, 12),
		(9, 9),
		(9, 20),
		(9, 24),
		(9, 26),
		(10, 22);
	
		
--select * 
--from genre_performer;
		
INSERT INTO album_performer (ID_album, ID_performer)
	VALUES 
		(1, 12),
		(2, 14),
		(3, 21),
		(4, 22),
		(5, 23),
		(6, 24),
		(7, 25),
		(8, 26),
		(9, 27),
		(10, 28),
		(11, 28);
	
--select * 
--from album_performer;		
		
INSERT INTO track_collection (ID_track, ID_collection)
	VALUES 
		(1, 1),
		(2, 2),	
		(3, 3),
		(4, 4),
		(5, 1),
		(6, 2),
		(7, 3),
		(8, 4),
		(9, 5),
		(10, 6),
		(11, 1),
		(12, 3),
		(13, 5),
		(14, 7),
		(15, 8),
		(16, 1),
		(16, 2),
		(16, 3),
		(16, 4),
		(16, 5),
		(16, 6),
		(16, 7),
		(16, 8),
		(16, 9),
		(17, 4),
		(17, 6),
		(17, 9),
		(18, 7),
		(18, 8),
		(18, 9),
		(19, 5),
		(19, 6),
		(19, 7),
		(19, 7),
		(20, 3),
		(20, 3),
		(20, 4),
		(20, 6),
		(20, 7),
		(20, 8),
		(20, 9),
		(21, 3),
		(21, 5),
		(21, 7),
		(21, 8),
		(21, 9),
		(22, 3),
		(23, 6),
		(24, 7),
		(25, 3),
		(25, 4),
		(25, 5),
		(25, 6),
		(25, 7);
	
--select * 
--FROM track_collection;

--1.название и год выхода альбомов, вышедших в 2018 году;

SELECT album_name, album_year
FROM album
WHERE album_year = 2018;

--2.название и продолжительность самого длительного трека;

SELECT track_name, time_track 
FROM track
ORDER BY time_track DESC
LIMIT 1;

--3.название треков, продолжительность которых не менее 3,5 минуты;

SELECT track_name, time_track 
FROM track
WHERE time_track >= '00:03:30'
ORDER BY time_track ASC; 

--4.названия сборников, вышедших в период с 2018 по 2020 год включительно;

SELECT collection_name, collection_year
FROM collection
WHERE collection_year BETWEEN 2018 AND 2020;

--5.исполнители, чье имя состоит из 1 слова;

--select ... from ... # Запрашиваем имена треков из таблицы треков
--where ... && ... ; Преобразуем название трека в нижний регистр, разбиваем
--на строку на пробелы, получая массив(список) слов, и делаем пересечение с 
--нужным массивом слов (используем `string_to_array`, `lower`). Прмер пересечения
--двух массивов из документации `ARRAY[1,4,3] && ARRAY[2,1]

SELECT  name_nickname--, array_length(string_to_array(lower(name_nickname), ' '), 1), array_length(ARRAY[1],1)
FROM performer
WHERE array_length(string_to_array(lower(name_nickname), ' '), 1) = array_length(ARRAY[1],1) 


--6.название треков, которые содержат слово “мой”/“my”.		
		

--select * 
--from album;		
		
		
--select * 
--from track;

SELECT track_name
FROM track
WHERE track_name ILIKE 'my' OR track_name ILIKE 'my %' OR track_name ILIKE '% my %'  OR track_name ILIKE '% my'


--дз №4

--1.количество исполнителей в каждом жанре;

SELECT genre_name, count(name_nickname) count_performer--, count(*) 
FROM genre g
LEFT JOIN genre_performer gp ON g.id_genre = gp.id_genre
LEFT JOIN performer p ON gp.id_performer = p.id_performer 
GROUP BY 1;


--2."общее"количество треков, вошедших в альбомы 2019-2020 годов; -- общее -дополнение к заданию №2

SELECT count(track_name) count_track_name  
FROM album a 
LEFT JOIN track t ON a.id_album = t.id_album 
WHERE album_year BETWEEN 2019 AND 2020


--3.средняя продолжительность треков по каждому альбому;

SELECT album_name, CAST(avg(time_track) AS time)
FROM album a 
RIGHT JOIN track t ON a.id_album = t.id_album 
GROUP BY 1;

--4.все исполнители, которые не выпустили альбомы в 2020 году;

--корректировка задания: Согласно условию, в выборку не должны попасть исполнители, у 
--которых есть альбомы, выпущенные в 20-м году. Т.е. если у исполнителя, например, 
--есть два альбома, один из которых выпущен в 20-м году, а другой в любом другом, 
--то такой исполнитель не должен попасть в выборку.

/*SELECT ... /* Получаем имена исполнителей /
FROM ... / Из таблицы исполнителей /
WHERE ... NOT IN ( / Где имя исполнителя не входит в вложенную выборку /
SELECT ... / Получаем имена исполнителей /
FROM ... / Из таблицы исполнителей /
JOIN ... ON ... = ... / Объединяем с промежуточной таблицей /
JOIN ... ON ... = ... / Объединяем с таблицей альбомов /
WHERE ... = ... / Где год альбома равен 2020 */
);*/


SELECT name_nickname
FROM performer p 
WHERE name_nickname NOT IN (
	SELECT name_nickname
	FROM performer p 
	LEFT JOIN album_performer ap ON p.id_performer = ap.id_performer 
	LEFT JOIN album a ON ap.id_album = a.id_album 
	WHERE a.album_year = '2020');

--5.названия сборников, в которых присутствует конкретный исполнитель (выберите сами);

INSERT INTO track_collection (ID_track, ID_collection)
	VALUES 
	(26, 1),
	(26, 2),
	(26, 3),
	(26, 4),
	(26, 5),
	(26, 6),
	(26, 7),
	(26, 8),
	(26, 9),
	(28, 1),
	(28, 2),
	(28, 6),
	(28, 7),
	(28, 8),
	(28, 9),
	(35, 1),
	(35, 4),
	(35, 5),
	(35, 6),
	(44, 4),
	(44, 6),
	(47, 9),
	(56, 4),
	(59, 4),
	(71, 4),
	(89, 4),
	(112, 4),
	(112, 6),
	(112, 9),
	(134, 4),
	(134, 6),
	(134, 7),
	(134, 8),
	(134, 9);
	
	
	
SELECT DISTINCT collection_name
FROM collection c 
LEFT JOIN track_collection tc ON c.id_collection = tc.id_collection 
LEFT JOIN track t ON tc.id_track = t.id_track 
LEFT JOIN album a ON t.id_album = a.id_album 
LEFT JOIN album_performer ap ON a.id_album = ap.id_album 
LEFT JOIN performer p ON ap.id_performer = p.id_performer 
WHERE p.name_nickname ILIKE 'Полина%'

--или

SELECT DISTINCT collection_name
FROM collection c 
LEFT JOIN track_collection tc ON c.id_collection = tc.id_collection 
LEFT JOIN track t ON tc.id_track = t.id_track 
LEFT JOIN album a ON t.id_album = a.id_album 
LEFT JOIN album_performer ap ON a.id_album = ap.id_album 
LEFT JOIN performer p ON ap.id_performer = p.id_performer 
WHERE p.name_nickname ILIKE 'Пикник'

--6.название альбомов, в которых присутствуют исполнители более 1 жанра;

SELECT p2.album_name 
FROM (
		SELECT p.id_performer, count(g.id_genre) count_genge
		FROM performer p 
		LEFT JOIN genre_performer gp ON p.id_performer = gp.id_performer  
		LEFT JOIN genre g ON gp.id_genre = g.id_genre 
		GROUP BY 1
		HAVING count(g.id_genre) > 1
	) p1
JOIN
	(
		SELECT p2.id_performer, a.album_name 
		FROM performer p2 
		RIGHT JOIN album_performer ap ON p2.id_performer = ap.id_performer 
		LEFT JOIN album a ON ap.id_album  = a.id_album 
	) p2
 ON p1.id_performer = p2.id_performer;


--7.наименование треков, которые не входят в сборники;

SELECT track_name--, c.collection_name 
FROM track t 
LEFT JOIN track_collection tc ON t.id_track = tc.id_track 
LEFT JOIN collection c ON tc.id_collection = c.id_collection 
WHERE c.collection_name IS NULL;

--8.исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

--самый короткий:
SELECT p.name_nickname, min(time_track)
FROM performer p 
LEFT JOIN album_performer ap ON p.id_performer = ap.id_performer 
LEFT JOIN album a ON ap.id_album  = a.id_album 
LEFT JOIN track t ON a.id_album = t.id_album 
GROUP BY p.name_nickname, time_track
HAVING time_track = (SELECT  min(time_track) FROM track t2)

--самый длинный:
SELECT p.name_nickname, max(time_track)
FROM performer p 
LEFT JOIN album_performer ap ON p.id_performer = ap.id_performer 
LEFT JOIN album a ON ap.id_album  = a.id_album 
LEFT JOIN track t ON a.id_album = t.id_album 
GROUP BY p.name_nickname, time_track
HAVING time_track = (SELECT  max(time_track) FROM track t2);

--9.название альбомов, содержащих наименьшее количество треков.

SELECT album_name--, count_track, rnk
FROM
	(
	SELECT album_name, count(id_track) count_track, DENSE_RANK () OVER(ORDER BY count(id_track)) rnk
	FROM album a 
	RIGHT JOIN track t ON a.id_album = t.id_album 
	GROUP BY 1
	) a
WHERE rnk = 1


SELECT * 
FROM track
WHERE time_track > (SELECT  avg(time_track)FROM track t) 


SELECT * 
FROM track
WHERE id_track  % 2 = 0



SELECT album_name, album_year  FROM album a  
WHERE album_year  in (2017,2019)

SELECT id_collection, collection_name , collection_year  FROM collection c  
WHERE collection_name NOT LIKE '%Шан%'



SELECT * , DENSE_RANK() OVER(ORDER BY collection_year deSC) rnk_dense
FROM collection c2

--Напишите запрос, с помощью которого можно найти дубли в поле collection_year из таблицы collection.

SELECT collection_year--, count(collection_year) 
FROM collection c2
GROUP BY collection_year
HAVING count(collection_year) > 1



--Напишите запрос, с помощью которого можно определить time_track (track) со вторым по величине уровнем длительности.

SELECT  a.album_name, t.time_track--, a.id_album,  t.rnk_dense
FROM (SELECT *, DENSE_RANK() OVER(ORDER BY time_track  ASC) rnk_dense FROM track t2) t
LEFT JOIN album a  ON a.id_album = t.id_album
WHERE t.rnk_dense = 2




