SELECT 
	music.name AS cancao,
	COUNT(history.music_id) AS reproducoes
FROM reproduction_history AS history

INNER JOIN musics
  AS music
    ON music.id = history.music_id

GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
