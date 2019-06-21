select continent as continent ,count(distinct c.country_code) as "count(*)"
from countries c
     left join movies m on m.country = c.country_code
where m.movieid is null
group by c.continent;