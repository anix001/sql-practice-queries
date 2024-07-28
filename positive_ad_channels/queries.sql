WITH more_than_1500_customer_acquired as(
    select * from uber_advertising where customers_acquired > 1500
    ),
    rank_tbl as(
    select *,
    ROW_NUMBER() OVER(PARTITION BY year ORDER BY money_spent asc) as rnk
    from more_than_1500_customer_acquired
    )
select * from rank_tbl where rnk=1
