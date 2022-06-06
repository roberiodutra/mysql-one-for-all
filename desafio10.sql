SELECT
	musics.name AS nome,
  COUNT(history.music_id) AS reproducoes
FROM musics

INNER JOIN reproduction_history AS history
ON musics.id = history.music_id

INNER JOIN users
ON users.id = history.user_id

INNER JOIN plans
ON users.plan_id = plans.id

WHERE users.plan_id = 1
  OR users.plan_id = 4

GROUP BY nome
ORDER BY nome ASC;
