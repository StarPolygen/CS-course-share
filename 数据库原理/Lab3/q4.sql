
  select  p.first_name , p.surname
  from movies m
         join credits c on m.movieid = c.movieid
         join people p on p.peopleid = c.peopleid
  where c.credited_as = 'A'
    and m.year_released > 2000
    and p.gender = 'F'
  group by p.peopleid having count(distinct m.movieid) > 20;

