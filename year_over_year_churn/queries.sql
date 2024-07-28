
WITH employee_joining_count as(
    select count(start_date) as joining_employee,
      EXTRACT(YEAR from start_date) as year
      from lyft_drivers
      GROUP BY  EXTRACT(YEAR from start_date)
    ),
    employee_leaving_count as(
    select count(start_date) as leaving_employee,
      EXTRACT(YEAR from end_date) as year
      from lyft_drivers
      GROUP BY  EXTRACT(YEAR from end_date)
    ),
    joinning_data as(
        select * from employee_joining_count
        UNION
        select * from employee_leaving_count
    ),
    year_tbl as(
     select DISTINCT(year) from joinning_data
    ),
    employee_count_with_leaving_year as(
     select t1.leaving_employee, t2.year from 
        employee_leaving_count t1 
        right join year_tbl t2
        on t1.year= t2.year
    ),
    employee_count_with_joining_year as(
     select t1.joining_employee, t2.year from 
        employee_joining_count t1 
        right join year_tbl t2
        on t1.year= t2.year
    ),
    count_tbl as(
        select t1.year, COALESCE(t2.joining_employee,0) as join_count, COALESCE(t1.leaving_employee,0) as leave_count
        from employee_count_with_leaving_year t1
        left join employee_count_with_joining_year t2
        on t1.year= t2.year
        where t1.year IS NOT NULL
    ),
    churn_diffrence_tbl as(
    select *,
       ABS(leave_count - COAleSCE(LAG("leave_count",1) OVER(ORDER BY year),0)) AS diff
       from count_tbl
    )
select year,join_count,leave_count,
CASE WHEN diff > COALESCE(LAG("diff",1) OVER(ORDER BY year),0) THEN 'increased'
    WHEN diff < COALESCE(LAG("diff",1) OVER(ORDER BY year),0) THEN 'decreased'
    WHEN diff = COALESCE(LAG("diff",1) OVER(ORDER BY year),0) THEN 'No change'
    END as churn_rate_indicator
from churn_diffrence_tbl
    

    
