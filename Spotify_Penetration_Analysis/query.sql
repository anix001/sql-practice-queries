WITH Last_active_30_days_user AS (
    SELECT 
        country,
        COUNT(user_id) AS active_user
    FROM 
        penetration_analysis 
    WHERE 
        last_active_date > ('2024-01-31'::date - INTERVAL '30 days') 
        AND sessions >= 5 
        AND listening_hours >= 10 
    GROUP BY 
        country
),
country_total_user AS (
    SELECT 
        country,
        COUNT(user_id) AS total_users 
    FROM 
        penetration_analysis 
    GROUP BY 
        country
)
SELECT 
    la.country, 
    ROUND((CAST(la.active_user AS DECIMAL) / CAST(tu.total_users AS DECIMAL)),2) AS active_user_penetration_rate 
FROM 
    Last_active_30_days_user la
LEFT JOIN 
    country_total_user tu 
ON 
    la.country = tu.country;



