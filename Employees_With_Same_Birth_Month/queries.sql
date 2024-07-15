WITH month as(
    select generate_series(1, 12) as birth_month
   ),
   department_list as(
    select distinct profession from employee_list 
   ),
   month_department_cross as(
     select * from department_list 
     cross join month
   ),
   same_birthday_month_employee_count as(
     select md.birth_month, md.profession,
     count(e.employee_id) as no_of_employee
     from employee_list e
     right join month_department_cross md on md.birth_month = e.birth_month and md.profession = e.profession
     group by md.birth_month, md.profession
   )
select * from same_birthday_month_employee_count order by profession, birth_month;

 

   
   

    