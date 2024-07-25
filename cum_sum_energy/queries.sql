WITH total_data as (
   select * from fb_eu_energy
    UNION
    select * from fb_na_energy
    UNION
    select * from fb_asia_energy
   ),
   consumption_by_date as(
   select date, sum(consumption) as running_consumption 
   from total_data group by date
   ),
   total_consumption as(
   select sum(consumption) as total_consumption from total_data
   ),
   cross_table as(
   select * from consumption_by_date
   cross join total_consumption
   )
select date, running_consumption, ROUND((running_consumption/total_consumption)*100,0) as running_total_percentage
from cross_table
