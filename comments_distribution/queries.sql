WITH jan_2020_comments as(
       SELECT * , 
         EXTRACT(MONTH FROM created_at) as month, 
         EXTRACT(YEAR FROM created_at) as year
         FROM fb_comments
         WHERE EXTRACT(MONTH FROM created_at) = 1 
     ),
     users_between_2018_and_2020_jan_2020_comments as(
       SELECT * FROM fb_users u
       LEFT JOIN jan_2020_comments c ON u.id = c.user_id
       WHERE joined_at BETWEEN '2018-01-01' AND '2020-12-31'
             AND joined_at < created_at
      ),
      comment_count_tbl as(
       SELECT id, COUNT(body) as comment_count FROM users_between_2018_and_2020_jan_2020_comments GROUP BY id 
      )
SELECT comment_count, count(id) as no_of_user FROM comment_count_tbl GROUP BY comment_count
       
    
     