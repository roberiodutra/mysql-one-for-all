SELECT
  (SELECT COUNT(id)
    FROM musics)
      AS cancoes,
  (SELECT COUNT(id)
    FROM artists)
      AS artistas,
  (SELECT COUNT(id)
    FROM albums)
      AS albuns;
