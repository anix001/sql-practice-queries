

WITH distance_per_dollor as(
   select request_Date, 
          distance_to_travel,
          monetary_cost, 
          (distance_to_travel/monetary_cost) as distance_per_dollor,
          EXTRACT(MONTH from request_date) as month,
          EXTRACT(YEAR from request_date) as year
          from uber_request_logs 
   ),
   avg_distance as(
   select avg(distance_per_dollor) as avg_distance_per_dollor, month, year
         from distance_per_dollor group by year, month
   )
select 
    CONCAT(year, '-',
     CASE WHEN month <10 THEN '0' || CAST(month as VARCHAR)
         ELSE CAST(month as VARCHAR)
         END ) as year_month,
     TO_CHAR(avg_distance_per_dollor, 'FM99999990.00') as distance_per_dollar
from avg_distance order by year, month
   
   