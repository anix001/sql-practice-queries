
    
WITH desc_tbl AS(
    SELECT *,
      ROW_NUMBER() OVER(ORDER BY popularity DESC) AS rnk
    FROM facebook_hack_survey
   ),
   asc_tbl AS(
     SELECT *,
      ROW_NUMBER() OVER(ORDER BY popularity ASC) AS rnk
    FROM facebook_hack_survey
   ),
   join_tbl AS(
    SELECT t1.employee_id AS hate_employee_id, t1.popularity AS hate_popularity, t2.employee_id AS love_employee_id, t2.popularity AS love_popularity
    FROM desc_tbl t1
    LEFT JOIN asc_tbl t2
    ON t1.rnk = t2.rnk
   )
SELECT 
      CONCAT('(', hate_employee_id, ', ', love_employee_id,')') AS id_pair ,
      CONCAT('(', hate_popularity, ', ', love_popularity,')') AS popularity_pair 
      FROM join_tbl
   