insert into person (pid, name, birthday, nationality, gender) values
    (1, 'Sidoney', '2018-01-06', 'Honduras', 'F'),
    (2, 'Justin', '2018-08-08', 'Indonesia', 'M'),
    (3, 'Keir', '2018-05-20', 'Ecuador', 'M'),
    (4, 'King', '2018-05-06', 'China', 'M'),
    (5, 'Beverlee', '2018-01-11', 'Japan', 'F'),
    (6, 'Gwenette', '2018-06-24', 'China', 'F'),
    (7, 'Eada', '2018-02-03', 'Ethiopia', 'F'),
    (8, 'Loraine', '2018-02-15', 'Pakistan', 'F'),
    (9, 'Halsey', '2018-03-16', 'Uganda', 'M'),
    (10, 'Kendricks', '2018-10-11', 'Indonesia', 'M'),
    (11, 'Renato', '2018-04-04', 'Canada', 'M'),
    (12, 'John Malkovich', '1953-12-09', 'America', 'M'),    ---John Malkovich is here
    (13, 'Corny', '2018-02-19', 'United States', 'F'),
    (14, 'Marga', '2018-07-27', 'United States', 'F'),
    (15, 'Melanie', '2018-10-10', 'Serbia', 'F'),
    (16, 'Adolphus', '2018-11-08', 'China', 'M'),
    (17, 'Nicko', '2018-04-02', 'Indonesia', 'M'),
    (18, 'Chery', '2018-02-06', 'Russia', 'F'),
    (19, 'Elly', '2018-02-27', 'Vietnam', 'F'),
    (20, 'Jacquelyn', '2018-05-31', 'Japan', 'F'),
    (21, 'Ignazio', '2018-08-08', 'China', 'M'),
    (22, 'Margit', '2018-06-02', 'Ukraine', 'F'),
    (23, 'Immanuel', '2018-01-28', 'Serbia', 'M'),
    (24, 'Evonne', '2018-11-04', 'Argentina', 'F'),
    (25, 'Daphna', '2018-08-14', 'Poland', 'F')
;

insert into actor (pid, aguild) values
(11, 5),
(12, 9),                                      -- John Malkovich is here
(13, 8),
(14, 7),
(15, 6),
(16, 1),
(17, 4),
(18, 3),
(19, 2)

;

insert into director (pid, dguild) values
(1, 5),
(2, 4),
(3, 3),
(4, 2),
(5, 1)
;

insert into writer (pid, wguild) values
(6, 5),
(7, 4),
(8, 3),
(9, 2),
(10, 1)
;

insert into studio (name) values 
 ('Boyer'),
 ('Conry'),
 ('Flatl'),
 ('Johns'),
 ('Leher'),
 ('Ripin'),
 ('Pagac'),
 ('Lowel')
;


insert into screenPlay (title, year) values

  ('Needs to Fly', 2001),
  ('Warrendale', 1997), 
  ('Decoding the Past', 2001), 
  ('Phantom Paradise', 2010),
  ('Field of Fire', 1998),
  ('Alpha and Omega', 2006),
  ('Inside out', 2016),
  ('Sword in the Stone', 2011),
  ('Little Man', 2011),
  ('Killer Crocodile', 2004)
;

insert into authored (title, year, pid) values

  ('Needs to Fly', 2001, 6),
  ('Warrendale', 1997, 7), 
  ('Decoding the Past', 2001, 8), 
  ('Phantom Paradise', 2010, 9),
  ('Field of Fire', 1998, 10),
  ('Alpha and Omega', 2006, 6),
  ('Inside out', 2016, 7),
  ('Sword in the Stone', 2011, 8),
  ('Little Man', 2011, 9),
  ('Killer Crocodile', 2004, 10)
;

insert into movie (title, name, year, genre, pid, length) values    --pid of director
  
  ('Needs to Fly', 'Boyer', 2001, 'Documentary', 1, 116),
  ('Warrendale', 'Conry', 1997, 'Horror', 2, 92),
  ('Decoding the Past', 'Flatl', 2001, 'Thriller', 3, 110),
  ('Phantom Paradise', 'Johns', 2010, 'Sci-Fi', 4, 100),
  ('Field of Fire', 'Leher', 1998, 'Action', 5, 108),
  ('Alpha and Omega', 'Ripin', 2006, 'Documentary', 2, 109),
  ('Inside out', 'Pagac', 2016, 'Action', 1, 106),
  ('Sword in the Stone', 'Lowel', 2011, 'Horror', 3, 101),
  ('Little Man', 'Lowel', 2011, 'Documentary', 2, 91),
  ('Killer Crocodile', 'Leher', 2004, 'Drama', 1, 100)
;

insert into cast (title, name, year, role, pid, minutes) values

  ('Needs to Fly', 'Boyer', 2001, 'role1', 11, 96),
  ('Warrendale', 'Conry', 1997, 'role1', 12, 52),              -- John Malkovich is here
  ('Decoding the Past', 'Flatl', 2001, 'role2', 13, 80),
  ('Phantom Paradise', 'Johns', 2010, 'role1', 14, 70),
  ('Field of Fire', 'Leher', 1998, 'role18', 15, 19),
  ('Alpha and Omega', 'Ripin', 2006, 'role1', 16, 87),
  ('Inside out', 'Pagac', 2016, 'role10', 17, 16),
  ('Sword in the Stone', 'Lowel', 2011, 'role18', 18, 11),
  ('Little Man', 'Lowel', 2011, 'role3', 13, 71),
  ('Killer Crocodile', 'Leher', 2004, 'role2', 12, 86),         -- John Malkovich is here
  ('Killer Crocodile', 'Leher', 2004, 'role2', 15, 86)
;

insert into affiliated (name, pid) values

 ('Boyer', 1),
 ('Conry', 2),
 ('Flatl', 3),
 ('Johns', 4),
 ('Leher', 5),
 ('Ripin', 1),
 ('Pagac', 2),
 ('Lowel', 3)

;

