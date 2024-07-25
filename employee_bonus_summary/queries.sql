select t1.id, CONCAT(t1.first_name,' ' ,t1.last_name) as employee_name , COALESCE(t2.bonus_amount,0) as bonus,
 CASE WHEN COALESCE(t2.bonus_amount,0)>0 THEN 1
 ELSE 0
 END as has_bonus
from employee as t1
left join bonus t2
on t1.id = t2.worker_ref_id