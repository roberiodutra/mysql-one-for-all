-- https://dev.mysql.com/doc/refman/8.0/en/string-functions.html#function_instr

SELECT
	name AS nome_musica,
  CASE
		WHEN INSTR(name, 'Streets')
      THEN REPLACE(name, 'Streets', 'Code Review')
    WHEN INSTR(name, 'Her Own')
      THEN REPLACE(name, 'Her Own', 'Trybe')
    WHEN INSTR(name, 'Inner Fire')
      THEN REPLACE(name, 'Inner Fire', 'Project') 
    WHEN INSTR(name, 'Silly')
      THEN REPLACE(name, 'Silly', 'Nice')
    WHEN INSTR(name, 'Circus')
      THEN REPLACE(name, 'Circus', 'Pull Request')
	END AS novo_nome
FROM musics

HAVING novo_nome IS NOT NULL
ORDER BY name ASC;
