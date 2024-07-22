
WITH paid_amount_tbl as(
 select (quantity * unitprice) as paid_amount, 
         description, 
         EXTRACT(MONTH FROM invoicedate) as month,
         EXTRACT(YEAR FROM invoicedate) as year,
         invoicedate from online_retail
   ),
   ranked_items as(
      select
       *,
       ROW_NUMBER() OVER (PARTITION BY year, month ORDER BY paid_amount DESC) as rn
      from paid_amount_tbl 
   )
select * from ranked_items where rn = 1