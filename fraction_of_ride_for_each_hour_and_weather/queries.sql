
WITH Weather_hour as(
    select sum(hour) as hour, weather from 
    lyft_rides group by weather
)
select * , (hour/(select sum(hour) from lyft_rides))*100 as fraction from Weather_hour