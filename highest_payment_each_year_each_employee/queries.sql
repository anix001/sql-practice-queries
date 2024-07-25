WITH max_pay_tbl as(
  select employeename, year, MAX(totalpaybenefits) as max_pay
    from sf_public_salaries
    where year in(2011,2012,2013,2014)
    group by employeename, year
)
select t1.employeename, t1.year, t1.max_pay from max_pay_tbl t1
left join sf_public_salaries t2 on
t1.employeename = t2.employeename and t1.year= t2.year and t1.max_pay = t2.totalpaybenefits
order by employeename asc