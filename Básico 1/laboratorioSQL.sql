--Listar las pistas (tabla Track) con precio mayor o igual a 1€
SELECT T.[Name] 
FROM Track T 
WHERE T.UnitPrice >= 1;

--Listar las pistas de más de 4 minutos de duración
SELECT T.[Name] 
FROM Track T 
WHERE (Milliseconds / 1000) > 240;

--Listar las pistas que tengan entre 2 y 3 minutos de duración
SELECT T.[Name] 
FROM Track T 
WHERE (Milliseconds / 1000) BETWEEN 120 AND 180;

--Listar las pistas que uno de sus compositores (columna Composer) sea Mercury
SELECT * 
FROM Track T 
WHERE Composer LIKE 'Mercury%' OR Composer LIKE '%Mercury%' OR Composer LIKE '%Mercury'

--Calcular la media de duración de las pistas (Track) de la plataforma
SELECT AVG(Milliseconds) As Media_Duracion 
FROM Track T;

--Listar los clientes (tabla Customer) de USA, Canada y Brazil
SELECT DISTINCT C.FirstName, C.LastName
FROM Track T
INNER JOIN InvoiceLine I 
	ON T.TrackId = I.TrackId
INNER JOIN Invoice Inv
	ON I.InvoiceId = Inv.InvoiceId
INNER JOIN Customer C
	ON Inv.CustomerId = C.CustomerId
WHERE C.Country IN ('USA', 'Canada', 'Brazil')
ORDER BY C.LastName

--Listar todas las pistas del artista 'Queen' (Artist.Name = 'Queen')
SELECT DISTINCT T.[Name]
FROM Track T 
INNER JOIN Album A
	ON T.AlbumId = A.AlbumId
INNER JOIN Artist Ar
	ON A.ArtistId = Ar.ArtistId
WHERE Ar.[Name] = 'Queen'
ORDER BY T.[Name]

--Listar las pistas del artista 'Queen' en las que haya participado como compositor David Bowie
SELECT T.[Name]
FROM Track T 
INNER JOIN Album A
	ON T.AlbumId = A.AlbumId
INNER JOIN Artist Ar
	ON A.ArtistId = Ar.ArtistId
WHERE Ar.[Name] = 'Queen' AND (Composer LIKE '%Bowie' OR Composer LIKE '%Bowie' OR Composer LIKE '%Bowie%');

--Listar las pistas de la playlist 'Heavy Metal Classic'
SELECT T.[Name]
FROM Track T 
INNER JOIN PlaylistTrack P
	ON T.TrackId = P.TrackId
INNER JOIN Playlist Pl
	ON P.PlaylistId = Pl.PlaylistId
WHERE Pl.[Name] = 'Heavy Metal Classic'
ORDER BY T.[Name];

--Listar las playlist junto con el número de pistas que contienen
SELECT Pl.[Name], COUNT(Pl.PlaylistId) As Numero_Pista
FROM Track T 
INNER JOIN PlaylistTrack P
	ON T.TrackId = P.TrackId
INNER JOIN Playlist Pl
	ON P.PlaylistId = Pl.PlaylistId
GROUP BY Pl.[Name]

--Listar las playlist (sin repetir ninguna) que tienen alguna canción de AC/DC
SELECT DISTINCT Pl.[Name]
FROM Track T 
INNER JOIN PlaylistTrack P
	ON T.TrackId = P.TrackId
INNER JOIN Playlist Pl
	ON P.PlaylistId = Pl.PlaylistId
INNER JOIN Album A
	ON T.AlbumId = A.AlbumId
INNER JOIN Artist Ar
	ON A.ArtistId = Ar.ArtistId
WHERE Ar.[Name] ='AC/DC'

--Listar las playlist que tienen alguna canción del artista Queen, junto con la cantidad que tienen
SELECT DISTINCT Pl.[Name], COUNT(Pl.PlaylistId) As Numero_Pista
FROM Track T 
INNER JOIN PlaylistTrack P
	ON T.TrackId = P.TrackId
INNER JOIN Playlist Pl
	ON P.PlaylistId = Pl.PlaylistId
INNER JOIN Album A
	ON T.AlbumId = A.AlbumId
INNER JOIN Artist Ar
	ON A.ArtistId = Ar.ArtistId
WHERE Ar.[Name] ='Queen'
GROUP BY Pl.[Name]

--Listar las pistas que no están en ninguna playlist
SELECT T.[name]
FROM Track T 
RIGHT JOIN PlaylistTrack P
	ON T.TrackId = P.TrackId
WHERE T.TrackId IS NULL;

--Listar los artistas que no tienen album
SELECT DISTINCT Ar.[Name] 
FROM Album Al
RIGHT JOIN Artist Ar
	ON Al.ArtistId = Ar.ArtistId
WHERE Al.ArtistId IS NULL;

--Listar los artistas con el número de albums que tienen

SELECT Ar.[Name], CASE WHEN Al.ArtistId IS NULL THEN 0 ELSE COUNT('ArtistId') END AS 'Número de albums'
FROM Album Al
RIGHT JOIN Artist Ar
	ON Al.ArtistId = Ar.ArtistId
GROUP BY Al.ArtistId, Ar.[Name]
ORDER BY Ar.[Name];
