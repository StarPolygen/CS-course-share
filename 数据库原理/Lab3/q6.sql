with act as (
  select count(distinct m.movieid) as cnt, p.*
  from people p
         join credits c on c.peopleid = p.peopleid
         join movies m on m.movieid = c.movieid
  where c.credited_as = 'A'
    and p.born >= 1910
    and p.born <= 1932
  group by p.peopleid
)

select first_name ,surname
from act
where cnt=(select max(cnt) from act);