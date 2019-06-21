with usm as(select year_released, count(*) as cnt
    from movies
    where country = 'us'and year_released<=2015 and year_released>=2000
    group by year_released)

select * from usm
where  cnt=(select max(cnt) from usm);

