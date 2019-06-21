select count(*) as cnt
  from people
  where gender='M' and first_name='Alex' and (died is null or died >2012);

