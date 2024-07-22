
WITH oscar_winning_count as (
    select nominee, count(id) as oscar_count from oscar_nominees where winner = TRUE group by nominee
    ),
    left_join_tbl as(
    select * from oscar_winning_count t1 
    left join nominee_information t2 
    on t1.nominee = t2.name
    ),
     max_count as(
    select max(oscar_count) as max_count from left_join_tbl
    ),
    cross_join_tbl as(
    select * from left_join_tbl
    cross join max_count
    )
select nominee as name, top_genre as genre, oscar_count from cross_join_tbl where oscar_count = max_count
order by name asc limit 1

