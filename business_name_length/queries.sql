SELECT 
  business_name, 
  LENGTH(TRIM(REPLACE(REGEXP_REPLACE(business_name, '[^a-zA-Z0-9\s]', ' '), '  ', ' '))) 
  - LENGTH(REPLACE(TRIM(REPLACE(REGEXP_REPLACE(business_name, '[^a-zA-Z0-9\s]', ' '), '  ', ' ')), ' ', '')) 
  + 1 AS word_count 
FROM 
  sf_restaurant_health_violations;
