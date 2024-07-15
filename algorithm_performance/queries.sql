WITH rating_search_term as(
    SELECT 
    CASE
        WHEN clicked = 0 THEN 1
        WHEN clicked = 1 AND search_results_position > 3 THEN 2
        WHEN clicked = 1 AND search_results_position <=3 THEN 3
        END ratings,
        search_id
        FROM fb_search_events
    )
SELECT search_id, MAX(ratings) from rating_search_term GROUP BY search_id ORDER BY search_id;