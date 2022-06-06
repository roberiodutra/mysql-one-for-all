DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
    value DECIMAL(4, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE users(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(64) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  signature_date DATE NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plans(id)
) engine = InnoDB;

CREATE TABLE artists(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(64) NOT NULL
) engine = InnoDB;

CREATE TABLE albums(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(64) NOT NULL,
  artist_id INT NOT NULL,
  release_year YEAR NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(id)
) engine = InnoDB;

CREATE TABLE musics(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  duration INT NOT NULL,
  album_id INT NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums(id),
  FOREIGN KEY (artist_id) REFERENCES artists(id)
) engine = InnoDB;

CREATE TABLE following(
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (artist_id) REFERENCES artists(id)
) engine = InnoDB;

CREATE TABLE reproduction_history(
  user_id INT NOT NULL,
  music_id INT NOT NULL,
  reproduction_date DATETIME NOT NULL,
  PRIMARY KEY (user_id, reproduction_date),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (music_id) REFERENCES musics(id)
) engine = InnoDB;

INSERT INTO plans (name, value)
VALUES
  ('free', 0),
  ('family', 7.99),
  ('university', 5.99),
  ('personal', 6.99);

INSERT INTO users (name, age, plan_id, signature_date)
VALUES 
  ('Thati', 23, 1, '2019-10-20'),
  ('Cintia', 35, 2, '2017-12-30'),
  ('Bill', 20, 3, '2019-06-05'),
  ('Roger', 45, 4, '2020-05-13'),
  ('Norman', 58, 4, '2017-02-17'),
  ('Patrick', 33, 2, '2017-01-06'),
  ('Vivian', 26, 3, '2018-01-05'),
  ('Carol', 19, 3, '2018-02-14'),
  ('Angelina', 42, 2, '2018-04-29'),
  ('Paul', 46, 2, '2017-01-17');

INSERT INTO artists (name)
VALUES 
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon'),
  ('Tyler Isle'),
  ('Fog');

INSERT INTO albums (name, artist_id, release_year)
VALUES 
  ('Envious', 1, 1990),
  ('Exuberant', 1, 1993),
  ('Hallowed Steam', 2, 1995),
  ('Incandescent', 3, 1998),
  ('Temporary Culture', 4, 2001),
  ('Library of liberty', 4, 2003),
  ('Chained Down', 5, 2007),
  ('Cabinet of fools', 5, 2012),
  ('No guarantees', 5, 2015),
  ('Apparatus', 6, 2015);

INSERT INTO musics (name, duration, album_id, artist_id)
VALUES 
  ('Soul For Us', 200, 1, 1),
  ('Reflections Of Magic', 163, 1, 1),
  ('Dance With Her Own', 116, 1, 1),
  ('Troubles Of My Inner Fire', 203, 2, 1),
  ('Time Fireworks', 152, 2, 1),
  ('Magic Circus', 105, 3, 2),
  ('Honey, So Do I', 207, 3, 2),
  ('Sweetie, Let''s Go Wild', 139, 3, 2),
  ('She Knows', 244, 3, 2),
  ('Fantasy For Me', 100, 4, 3),
  ('Celebration Of More', 146, 4, 3),
  ('Rock His Everything', 223, 4, 3),
  ('Home Forever', 231, 4, 3),
  ('Diamond Power', 241, 4, 3),
  ('Let''s Be Silly', 132, 4, 3),
  ('Thang Of Thunder', 240, 5, 4),
  ('Words Of Her Life', 185, 5, 4),
  ('Without My Streets', 176, 5, 4),
  ('Need Of The Evening', 190, 6, 4),
  ('History Of My Roses', 222, 6, 4),
  ('Without My Love', 111, 6, 4),
  ('Walking And Game', 123, 6, 4),
  ('Young And Father', 197, 6, 4),
  ('Finding My Traditions', 179, 7, 5),
  ('Walking And Man', 229, 7, 5),
  ('Hard And Time', 135, 7, 5),
  ('Honey, I''m A Lone Wolf', 150, 7, 5),
  ('She Thinks I Won''t Stay Tonight', 166, 8, 5),
  ('He Heard You''re Bad For Me', 154, 8, 5),
  ('He Hopes We Can''t Stay', 210, 8, 5),
  ('I Know I Know', 117, 8, 5),
  ('He''s Walking Away', 159, 9, 5),
  ('He''s Trouble', 138, 9, 5),
  ('I Heard I Want To Bo Alone', 120, 9, 5),
  ('I Ride Alone', 151, 9, 5),
  ('Honey', 79, 10, 6),
  ('You Cheated On Me', 95, 10, 6),
  ('Wouldn''t It Be Nice', 213, 10, 6),
  ('Baby', 136, 10, 6),
  ('You Make Me Feel So..', 83, 10, 6);

INSERT INTO following (user_id, artist_id)
VALUES 
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 3),
  (6, 1),
  (7, 2),
  (7, 5),
  (8, 1),
  (8, 5),
  (9, 6),
  (9, 4),
  (9, 3),
  (10, 2),
  (10, 6);
