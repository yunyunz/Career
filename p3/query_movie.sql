/*========= Question 1 ==========*/

select p.name, c.title  
from
(select name, pid from person
where name = 'John Malkovich') p , cast c

where p.pid = c.pid
;

/*

 ========= Question 2 ==========
*/

insert into movie (title, name, year, genre, pid, length) values ('TEST TEST', 'Boyer', 2001, 'Documentary', 1, 116);



-- ========= Question 3 ==========


select name, pid from person
where name = 'John Malkovich';


-- ========= Question 4 ==========





-- ========= Question 5 ==========

