WITH month_revenue AS(
   SELECT SUM(purchase_amt) as total_revenue,
   EXTRACT(MONTH FROM created_at) AS month,
    EXTRACT(YEAR FROM created_at) AS year
    FROM amazon_purchases
    GROUP BY EXTRACT(YEAR FROM created_at), EXTRACT(MONTH FROM created_at) order by EXTRACT(MONTH FROM created_at)
  ),
  three_row_sum AS(
  SELECT month, year, 
   CONCAT(year,'-',
     CASE WHEN month<10 THEN '0' || CAST(month AS VARCHAR)
          ELSE CAST(month AS VARCHAR)
          END) as date,
         (SUM(COALESCE(total_revenue, 0)) OVER(
         ORDER BY year, month
         ROWS BETWEEN 2 PRECEDING AND CURRENT ROW  --add two previous row with current one
         )/3) AS avg_total_revenue
        FROM month_revenue
  )
SELECT 
  date as year_month,
  CASE
      WHEN avg_total_revenue < 0 THEN NULL
      ELSE avg_total_revenue
      END AS three_month_rolling_avg
FROM three_row_sum;