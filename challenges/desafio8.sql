SELECT 
	artists.name AS artista,
  albums.name AS album
FROM artists

INNER JOIN albums
ON artists.id = albums.artist_id

WHERE artists.name = 'Walter Phoenix'

ORDER BY album ASC;
