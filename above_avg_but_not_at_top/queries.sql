

WITH rnk_tbl as(
    select employeename, totalpay,
    ROW_NUMBER() OVER(ORDER BY totalpay DESC) AS rnk
    from sf_public_salaries
    where totalpay > basepay
    )
select * from rnk_tbl where rnk> 5