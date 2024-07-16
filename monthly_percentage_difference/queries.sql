WITH monthly_revenue_table as(
   SELECT SUM(value) AS monthly_revenue, 
      EXTRACT(MONTH FROM created_at) AS month, 
      EXTRACT(YEAR FROM created_at) AS year
  FROM sf_transactions
  GROUP BY EXTRACT(YEAR FROM created_at), EXTRACT(MONTH FROM created_at) ORDER BY month
  ),
  percentage_change as(
    SELECT month, monthly_revenue, 
    CONCAT(year,'-',
     CASE WHEN month<10 THEN '0' || CAST(month AS VARCHAR)
          ELSE CAST(month AS VARCHAR)
          END) as date,
     Round(((monthly_revenue - COALESCE(LAG(monthly_revenue) OVER(ORDER BY year, month),0))/COALESCE(LAG(monthly_revenue) OVER(ORDER BY year, month),1))*100,2) as percentage_change
     from monthly_revenue_table
  )
SELECT date, TO_CHAR(percentage_change, 'FM99999990.00') as percentage_change from percentage_change where month>1;