
WITH monthly_sum AS(
    SELECT 
      SUM(distance_to_travel) as monthly_travel_distance,
      SUM(monetary_cost) as monthly_monetary_cost,
      EXTRACT(MONTH FROM request_date) as month,
      EXTRACT(YEAR FROM request_date) as year
     FROM uber_request_logs
     GROUP BY  EXTRACT(YEAR FROM request_date),EXTRACT(MONTH FROM request_date) 
     ORDER BY EXTRACT(MONTH FROM request_date)
 ),
 distance_per_dollor_table_actual AS(
  SELECT (monthly_travel_distance/monthly_monetary_cost) as distance_per_dollor,
         month, year
    FROM monthly_sum
 ),
 distance_per_dollor_table_forecast AS(
  SELECT COALESCE((LAG(distance_per_dollor) OVER(ORDER BY year, month)),0) as distance_per_dollor_forecast,
        distance_per_dollor,
         month, year
    FROM distance_per_dollor_table_actual
 )
SELECT TO_CHAR(SQRT(AVG(POWER((distance_per_dollor - distance_per_dollor_forecast),2))),'FM99999990.00') as rmse_value FROM distance_per_dollor_table_forecast
