WITH total_user_tbl AS (
    SELECT COUNT(user1) AS total_user 
    FROM facebook_friends
), 
user_friends_count AS (
    SELECT user1, COUNT(user2) AS friends_count 
    FROM facebook_friends  
    GROUP BY user1
),
cross_tbl_data AS (
    SELECT * 
    FROM user_friends_count  
    CROSS JOIN total_user_tbl 
)
SELECT 
    user1 AS user_id, 
    (CAST(friends_count AS DECIMAL) / total_user)*100 AS popularity_percentage 
FROM cross_tbl_data 
ORDER BY user_id;
