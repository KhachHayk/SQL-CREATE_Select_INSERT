--Задание 2

--Название и продолжительность самого длительного трека

SELECT name, duration FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

-- Название треков, продолжительность которых не менее 3,5 минут

SELECT name FROM track
WHERE duration >= EXTRACT(EPOCH FROM INTERVAL '00:03:30');

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT name FROM collection
WHERE year >= '2018-01-01' AND year <= '2020-12-31';

--Исполнители, чьё имя состоит из одного слова

SELECT name FROM artists
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my»

SELECT name FROM track
WHERE name iLIKE 'my %'
OR name iLIKE '% my'
OR name iLIKE '% my %'
OR name iLIKE 'my'
OR name iLIKE '% мой'
OR name iLIKE '% мой %'
OR name iLIKE 'мой %'
OR name iLIKE 'мой';


--Задание 3

--Количество исполнителей в каждом жанре

SELECT s.name, COUNT(artists_id) FROM ganres_artists p
LEFT JOIN genres s ON p.genres_id = s.id
GROUP BY s.name;


--Количество треков, вошедших в альбомы 2019–2020 годов

SELECT COUNT(t.id) FROM track t  
JOIN album a ON a.id = t.album_id 
WHERE year BETWEEN '2019-01-01' AND '2020-12-31'; 


--Средняя продолжительность треков по каждому альбому

SELECT a.name, AVG(duration) FROM track t
LEFT JOIN album a ON a.id = t.album_id
GROUP BY a.name;


--Все исполнители, которые не выпустили альбомы в 2020 году

SELECT a.name FROM artists a /* Получаем имена исполнителей */
WHERE a.name NOT IN ( /* Где имя исполнителя не входит в вложенную выборку */
    SELECT a.name /* Получаем имена исполнителей */
    FROM artists a /* Из таблицы исполнителей */
    JOIN artists_album ON artists_id = a.id /* Объединяем с промежуточной таблицей */
    JOIN album b ON b.id = album_id /* Объединяем с таблицей альбомов */
    WHERE year = '2020-01-01' /* Где год альбома равен 2020 */
);


--Названия сборников, в которых присутствует конкретный исполнитель (Frank Sinatra)


SELECT c.name FROM collection c
LEFT JOIN trackscollections tc ON c.id = tc.collection_id
LEFT JOIN track t ON tc.track_id = t.id
LEFT JOIN album a ON t.album_id = a.id
LEFT JOIN artists_album aa ON a.id = aa.album_id
LEFT JOIN artists ab ON aa.artists_id = ab.id
WHERE ab.name LIKE '%Frank Sinatra%';



