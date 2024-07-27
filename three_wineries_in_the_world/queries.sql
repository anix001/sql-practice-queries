
WITH rank_tbl as(
    select *,
    ROW_NUMBER() OVER(PARTITION BY country ORDER BY points DESC) as rnk
    from winemag_p1
   ),
   distinct_country as(
   select distinct country as country from rank_tbl
   ),
   distinct_rank as(
   select distinct rnk as rnk from rank_tbl
   ),
   distinct_country_with_rank as(
   select * from distinct_country
   cross join distinct_rank
   ),
   left_join_for_missing_rank as(
   select t2.country, t2.rnk, t1.points, t1.winery from rank_tbl t1
   right join distinct_country_with_rank t2
   on t1.country = t2.country and t1.rnk = t2.rnk
   )
select country, points, winery,
CASE WHEN rnk =1 THEN 'Best'
     when rnk = 2 and winery IS NOT NULL THEN 'Second Best'
     when rnk = 2 and winery IS NULL THEN 'No Second Best'
     when  rnk =3 and winery IS NOT NULL THEN 'Third Best'
     when  rnk =3 and winery IS NULL THEN 'Third Best'
     END as position
FROM left_join_for_missing_rank where rnk <=3 order by country, position
