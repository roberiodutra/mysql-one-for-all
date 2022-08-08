SELECT 
	listener.name 
    AS usuario, 
  COUNT(history.music_id)
    AS qtde_musicas_ouvidas,
  ROUND(SUM(music.duration / 60), 2)
    AS total_minutos
FROM users AS listener

INNER JOIN reproduction_history
  AS history 
    ON listener.id = history.user_id

INNER JOIN musics
  AS music
    ON music.id = history.music_id

GROUP BY usuario
ORDER BY usuario ASC;
