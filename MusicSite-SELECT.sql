--Задание 2

--Название и продолжительность самого длительного трека

SELECT name, duration FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

-- Название треков, продолжительность которых не менее 3,5 минут

SELECT name FROM track
WHERE duration > 3.5;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT name FROM collection
WHERE year >= '2018-01-01' AND year <= '2020-12-31';

--Исполнители, чьё имя состоит из одного слова

SELECT name FROM artists
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my»

SELECT name FROM track
WHERE name LIKE '%my%';


--Задание 3

--Количество исполнителей в каждом жанре

SELECT s.name, COUNT(artists_id) FROM ganres_artists p
LEFT JOIN genres s ON p.genres_id = s.id
GROUP BY s.name;


--Количество треков, вошедших в альбомы 2019–2020 годов

SELECT a.name, COUNT(album_id) FROM track t
LEFT JOIN album a ON a.id = t.album_id
WHERE year >= '2019-01-01' AND year <= '2020-12-31'
GROUP BY a.name;


--Средняя продолжительность треков по каждому альбому

SELECT a.name, AVG(duration) FROM track t
LEFT JOIN album a ON a.id = t.album_id
GROUP BY a.name;


--Все исполнители, которые не выпустили альбомы в 2020 году


SELECT a.name FROM artists a
LEFT JOIN artists_album ON artists_id = a.id
LEFT JOIN album b ON b.id = album_id
WHERE year <= '2020-01-01';


--Названия сборников, в которых присутствует конкретный исполнитель (Frank Sinatra)


SELECT c.name FROM collection c
LEFT JOIN trackscollections tc ON c.id = tc.collection_id
LEFT JOIN track t ON tc.track_id = t.id
LEFT JOIN album a ON t.album_id = a.id
LEFT JOIN artists_album aa ON a.id = aa.album_id
LEFT JOIN artists ab ON aa.artists_id = ab.id
WHERE ab.name LIKE '%Frank Sinatra%';



