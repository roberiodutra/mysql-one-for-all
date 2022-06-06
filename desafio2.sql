SELECT
  (SELECT Count(id)
    FROM musics)
      AS cancoes,
  (SELECT Count(id)
    FROM artists)
      AS artistas,
  (SELECT Count(id)
    FROM albums)
      AS albuns;
