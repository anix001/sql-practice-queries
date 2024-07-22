
WITH worldWide_no_one as(
    select * from spotify_worldwide_daily_song_ranking
    where region ='us'and position = 1 
    ),
    daily_ranking_one as(
        select * from spotify_daily_rankings_2017_us 
         where position = 1
    ),
    left_join_tbl as( 
     select t1.date, t1.trackname  from worldWide_no_one t1
     left join daily_ranking_one as t2 on t1.date = t2.date
    ),
    days_in_position_one as(
     select trackname, count(date) as days_in_one_pos from left_join_tbl group by trackname
    )
select * from days_in_position_one order by trackname