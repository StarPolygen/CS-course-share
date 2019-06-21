select count(*) as cnt from(
select distinct c.peopleid
from credits c
    join movies m on m.movieid = c.movieid
    join people p on p.peopleid= c.peopleid
where c.credited_as = 'A'
      and m.title like '%Avengers%'
      and p.gender = 'F'
);