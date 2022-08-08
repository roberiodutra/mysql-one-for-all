SELECT 
	COUNT(history.user_id) AS quantidade_musicas_no_historico
FROM reproduction_history AS history

INNER JOIN users
ON history.user_id = users.id

WHERE users.name = 'Bill'

ORDER BY quantidade_musicas_no_historico ASC;
