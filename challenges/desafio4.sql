SELECT 
	listener.name
    AS usuario,
  IF (MAX(YEAR(history.reproduction_date)) = 2021, 'Usuário ativo', 'Usuário inativo')
    AS condicao_usuario
FROM users AS listener

INNER JOIN reproduction_history
  AS history
    ON listener.id = history.user_id

GROUP BY usuario
ORDER BY usuario ASC;
