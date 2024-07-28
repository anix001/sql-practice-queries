
WITH rank_tbl as(
  select employeename, jobtitle,totalpaybenefits,
    ROW_NUMBER() OVER(PARTITION BY jobtitle ORDER BY totalpaybenefits DESC) AS rnk
    from sf_public_salaries
)
select * from rank_tbl where rnk<3