CREATE TABLE sf_restaurant_health_violations (
    business_id INT,
    business_name VARCHAR(255),
    business_address VARCHAR(255),
    business_city VARCHAR(255),
    business_state VARCHAR(2),
    business_postal_code VARCHAR(10),
    business_latitude DECIMAL(9, 6),
    business_longitude DECIMAL(9, 6),
    business_location JSON,
    business_phone_number VARCHAR(20),
    inspection_id VARCHAR(50),
    inspection_date DATE,
    inspection_score INT,
    inspection_type VARCHAR(50),
    violation_id VARCHAR(50),
    violation_description TEXT,
    risk_category VARCHAR(50)
);

INSERT INTO sf_restaurant_health_violations (
    business_id, business_name, business_address, business_city, business_state,
    business_postal_code, business_latitude, business_longitude, business_location,
    business_phone_number, inspection_id, inspection_date, inspection_score, inspection_type,
    violation_id, violation_description, risk_category
) VALUES
(5800, 'John Chin Elementary School', '350 Broadway St', 'San Francisco', 'CA', '94133', 37.798, -122.403,
 '{"longitude": "-122.403154", "needs_recoding": false, "latitude": "37.798358", "human_address": "{\"address\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\"}"}',
 NULL, '5800_20171017', '2017-10-17', 98, 'Routine - Unscheduled', '5800_20171017_103149', 'Wiping cloths not clean or properly stored or inadequate sanitizer', 'Low Risk'),

(64236, 'Sutter Pub and Restaurant', '700 Sutter St', 'San Francisco', 'CA', '94102', 37.789, -122.412,
 '{"longitude": "-122.41188", "needs_recoding": false, "latitude": "37.78881", "human_address": "{\"address\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\"}"}',
 NULL, '64236_20170725', '2017-07-25', 88, 'Routine - Unscheduled', '64236_20170725_103133', 'Foods not protected from contamination', 'Moderate Risk'),

(1991, 'SRI THAI CUISINE', '4621 LINCOLN Way', 'San Francisco', 'CA', '94122', 37.764, -122.508,
 '{"longitude": "-122.507779", "needs_recoding": false, "latitude": "37.764073", "human_address": "{\"address\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\"}"}',
 NULL, '1991_20171129', '2017-11-29', 86, 'Routine - Unscheduled', '1991_20171129_103139', 'Improper food storage', 'Low Risk'),

(3816, 'Washington Bakery & Restaurant', '733 Washington St', 'San Francisco', 'CA', '94108', 37.795, -122.406,
 '{"longitude": "-122.405845", "needs_recoding": false, "latitude": "37.795174", "human_address": "{\"address\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\"}"}',
 NULL, '3816_20160728', '2016-07-28', 67, 'Routine - Unscheduled', '3816_20160728_103108', 'Contaminated or adulterated food', 'High Risk'),

(39119, 'Brothers Restaurant', '4128 GEARY Blvd', 'San Francisco', 'CA', '94118', 37.781, -122.464,
 '{"longitude": "-122.463762", "needs_recoding": false, "latitude": "37.781148", "human_address": "{\"address\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\"}"}',
 NULL, '39119_20160718', '2016-07-18', 79, 'Routine - Unscheduled', '39119_20160718_103133', 'Foods not protected from contamination', 'Moderate Risk'),

(6643, 'T & L FOOD MARKET', '405 EDDY St', 'San Francisco', 'CA', '94109', 37.784, -122.414,
 '{"longitude": "-122.414341", "needs_recoding": false, "latitude": "37.783661", "human_address": "{\"address\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\"}"}',
 NULL, '6643_20160609', '2016-06-09', 69, 'Routine - Unscheduled', '6643_20160609_103102', 'Unclean hands or improper use of gloves', 'High Risk'),

(79974, 'Antonelli Brothers Meat, Fish, and Poultry Inc.', '3585 California St', 'San Francisco', 'CA', '94118', NULL, NULL,
 NULL, '14155757413', '79974_20161017', '2016-10-17', 94, 'Routine - Unscheduled', '79974_20161017_103161', 'Low risk vermin infestation', 'Low Risk'),

(1939, 'STARBUCKS COFFEE CO. #603', '74 NEW MONTGOMERY St', 'San Francisco', 'CA', '94105', 37.788, -122.401,
 '{"longitude": "-122.400998", "needs_recoding": false, "latitude": "37.787838", "human_address": "{\"address\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\"}"}',
 NULL, '1939_20161214', '2016-12-14', 98, 'Routine - Unscheduled', '1939_20161214_103154', 'Unclean or degraded floors walls or ceilings', 'Low Risk'),

(68872, 'Jiang Ling Cuisine Restaurant', '2517 SAN BRUNO Ave', 'San Francisco', 'CA', '94134', 37.73, -122.405,
 '{"longitude": "-122.404526", "needs_recoding": false, "latitude": "37.729985", "human_address": "{\"address\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\"}"}',
 NULL, '68872_20171212', '2017-12-12', 72, 'Routine - Unscheduled', '68872_20171212_103105', 'Improper cooling methods', 'High Risk'),

(80242, 'Wing Lee BBQ Restaurant', '501 Clement St.', 'San Francisco', 'CA', '94118', NULL, NULL,
 NULL, '80242_20160509', '2016-05-09', 78, 'Routine - Unscheduled', '80242_20160509_103149', 'Wiping cloths not clean or properly stored or inadequate sanitizer', 'Low Risk'),

(76218, 'Tenderloin Market & Deli', '200 Leavenworth', 'San Francisco', 'CA', '94102', NULL, NULL,
 NULL, '76218_20170313', '2017-03-13', NULL, 'Reinspection/Followup', NULL, NULL, NULL),

(89686, 'Big Fish Little Fish Poke', '121 Spear St B09', 'San Francisco', 'CA', '94105', NULL, NULL,
 NULL, '89686_20180227', '2018-02-27', 82, 'Routine - Unscheduled', '89686_20180227_103120', 'Moderate risk food holding temperature', 'Moderate Risk'),

(75448, 'Laguna Café', '1821 Haight St', 'San Francisco', 'CA', '94117', NULL, NULL,
 NULL, '75448_20180711', '2018-07-11', 90, 'Routine - Unscheduled', '75448_20180711_103119', 'Inadequate and inaccessible handwashing facilities', 'Moderate Risk'),

(87447, 'The Castro Republic', '2295 Market St', 'San Francisco', 'CA', '94114', NULL, NULL,
 NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL;
