SELECT 
	artists.name
    AS artista,
  albums.name
    AS album,
  COUNT(artists.id)
    AS seguidores
FROM artists

INNER JOIN albums
ON artists.id = albums.artist_id

INNER JOIN following
ON artists.id = following.artist_id

GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;
