WITH region_1_desc as(
    select country, price, region_1, winery,
     ROW_NUMBER() OVER(PARTITION BY region_1 ORDER BY price DESC) as rnk
     FROM winemag_p1
    ),
    region_1_asc as(
     select country, price, region_1, winery,
     ROW_NUMBER() OVER(PARTITION BY region_1 ORDER BY price ASC) as rnk
     FROM winemag_p1
     ),
     expensive_wine_each_region_in_region_1 as(
      select * from region_1_desc where rnk=1
     ),
     cheapest_wine_each_region_in_region_1 as(
      select * from region_1_asc where rnk=1
     ),
     left_join_tbl as(
     select t1.country, t1.price as expensive_wine, t2.price as cheapest_price, t1.region_1
     from expensive_wine_each_region_in_region_1 t1
     left join cheapest_wine_each_region_in_region_1 t2
     on t1.region_1 = t2.region_1
     )
select * from left_join_tbl

--need to do 2nd region query also