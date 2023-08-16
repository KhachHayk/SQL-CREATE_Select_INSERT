INSERT INTO genres
VALUES(1, 'jazz'),
	  (2, 'classical'),
	  (3, 'rock');

	 
INSERT INTO artists
VALUES(11, 'Frank Sinatra'),
	  (21, 'Miles Davis'),
	  (31, 'Davie Jones'),
	  (41, 'Johann Sebastian Bach');

	 
INSERT INTO artists
VALUES(51, 'Frank');


INSERT INTO album
VALUES(12, 'Kind of Blue', '1959.01.01'),
	  (22, 'Classical 2000', '2000.01.01'),
	  (32, 'Rock 2001', '2001.01.01');
	 

UPDATE album
SET year = '2021.01.01'
WHERE id = 22;	 


UPDATE album
SET year = '2020.01.01'
WHERE id = 32;	 

DELETE FROM track;

INSERT INTO track
VALUES(13, '12', 'So What - Mono Version', 547),
	  (23, '12', 'Freddie Freeloader - Mono Version', 498),
	  (33, '22', 'Rondo in E-Flat Major', 172),
	  (43, '22', 'Keyboard Sonata in G major', 210),
	  (53, '32', 'The Greatest', 162),
	  (63, '32', 'Chicago', 232),
	  (73, '12', 'my life', 307),
	  (83, '12', 'my own', 221),
	  (93, '22', 'own my', 220),
	  (103, '32', 'my', 298),
	  (113, '22', 'oh my god', 300),
	  (123, '12', 'myself', 308),
	  (133, '22', 'by myself', 329),
	  (143, '12', 'bemy self', 365),
	  (153, '32', 'myself by', 400),
	  (163, '22', 'by myself by', 456),
	  (173, '12', 'beemy', 529),
	  (183, '22', 'premyne', 569);
	 

INSERT INTO track
VALUES	 
	 

INSERT INTO collection
VALUES(14, 'Relaxation', '2005.01.01'),
	  (24, 'Paradise', '2006.01.01'),
	  (34, 'All This Time', '2007.01.01'),
	  (54, 'All Blues', '2008.12.01');

UPDATE collection
SET year = '2019.01.01'
WHERE id = 34;	 

UPDATE collection
SET year = '2020.01.01'
WHERE id = 14;	 
	 
	 
INSERT INTO collection
VALUES(64, 'ALLPARADISE', '2018.01.01'),
	  (74, 'ALLPARADISE-1', '2019.01.01');
	  
	 
INSERT INTO artists_album
VALUES(15, '11', '12'),
	  (25, '21', '12'),
	  (35, '41', '22'),
	  (55, '31', '32');
	  
	 
INSERT INTO ganres_artists
VALUES('1', '11'),
	  ('1', '21'),
	  ('2', '41'),
	  ('3', '31');
	  

INSERT INTO trackscollections 
VALUES(16, '13', '14'),
	  (26, '23', '14'),
	  (36, '33', '24'),
	  (56, '43', '24'),
	  (66, '53', '34'),
	  (76, '63', '34'),
	  (86, '13', '54'),
	  (96, '33', '54');