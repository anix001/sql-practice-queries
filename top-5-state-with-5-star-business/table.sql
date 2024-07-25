-- Create the table
CREATE TABLE yelp_business (
    business_id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255),
    neighborhood VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(2),
    postal_code VARCHAR(10),
    latitude DECIMAL(8, 5),
    longitude DECIMAL(8, 5),
    stars DECIMAL(2, 1),
    review_count INT,
    is_open TINYINT,
    categories TEXT
);

-- Insert the data
INSERT INTO yelp_business (business_id, name, neighborhood, address, city, state, postal_code, latitude, longitude, stars, review_count, is_open, categories) VALUES
('G5ERFWvPfHy7IDAUYlWL2A', 'All Colors Mobile Bumper Repair', '', '7137 N 28th Ave', 'Phoenix', 'AZ', '85051', 33.448, -112.074, 1, 4, 1, 'Auto Detailing;Automotive'),
('0jDvRJS-z9zdMgOUXgr6rA', 'Sunfare', '', '811 W Deer Valley Rd', 'Phoenix', 'AZ', '85027', 33.683, -112.085, 5, 27, 1, 'Personal Chefs;Food;Gluten-Free;Food Delivery Services;Event Planning & Services;Restaurants'),
('6HmDqeNNZtHMK0t2glF_gg', 'Dry Clean Vegas', 'Southeast', '2550 Windmill Ln, Ste 100', 'Las Vegas', 'NV', '89123', 36.042, -115.118, 1, 4, 1, 'Dry Cleaning & Laundry;Laundry Services;Local Services;Dry Cleaning'),
('pbt3SBcEmxCfZPdnmU9tNA', 'The Cuyahoga Room', '', '740 Munroe Falls Ave', 'Cuyahoga Falls', 'OH', '44221', 41.14, -81.472, 1, 3, 0, 'Wedding Planning;Caterers;Event Planning & Services;Venues & Event Spaces'),
('CX8pfLn7Bk9o2-8yDMp_2w', 'The UPS Store', '', '4815 E Carefree Hwy, Ste 108', 'Cave Creek', 'AZ', '85331', 33.798, -111.977, 1.5, 5, 1, 'Notaries;Printing Services;Local Services;Shipping Centers'),
('yzAB_pRwk8FJl3aILiiySA', 'CenturyLink', 'Spring Valley', '4850 S Fort Apache Rd, Ste 100', 'Las Vegas', 'NV', '89147', 36.101, -115.297, 1.5, 35, 0, 'Home Services;Television Service Providers;Professional Services;Internet Service Providers;Utilities'),
('p8keQs0xw0TzP0JjYPiZPQ', 'The Enfield Fox', '', '285 Enfield Place', 'Mississauga', 'ON', 'L5B 3Y6', 43.591, -79.636, 1.5, 3, 0, 'Bars;Restaurants;Pubs;British;Nightlife'),
('lbxfIXUNUdSRO2t7z2PxPA', 'Budget Car Rental', '', '7125 E Shea Blvd, Ste 101', 'Scottsdale', 'AZ', '85254', 33.581, -111.928, 2, 6, 1, 'Hotels & Travel;Car Rental'),
('xxCrRqqICzQyR0Q-iqCrNw', 'Subway', 'Plaza Midwood', '1300 The Plz', 'Charlotte', 'NC', '28205', 35.221, -80.81, 2, 13, 1, 'Fast Food;Sandwiches;Restaurants'),
('WdQP8kl9SzcOdubWz0Rs5g', 'Red Beard Bodywork And Structural Integration', 'Capitol', '301 S Bedford St', 'Madison', 'WI', '53703', 43.066, -89.389, 5, 10, 1, 'Rolfing;Health & Medical;Beauty & Spas;Massage'),
('g6KfICYxIFoXnz7KHzQDpw', 'Chase Bank', '', '705 S Green Valley Pkwy', 'Henderson', 'NV', '89052', 36.003, -115.084, 2, 6, 1, 'Financial Services;Banks & Credit Unions'),
('Lhtl6hEr4BaAR4aA3RQDNQ', 'Dairy Queen', '', '475 W Craig Rd', 'North Las Vegas', 'NV', '89032', 36.239, -115.148, 2, 57, 1, 'Food;Ice Cream & Frozen Yogurt'),
('6FmJM2SYWoUv_DC8FA7hpg', '1st Choice Storage Solutions', 'Southeast', '6360 S Pecos Rd, Ste 14', 'Las Vegas', 'NV', '89120', 36.073, -115.1, 2, 7, 0, 'Shopping;Home & Garden;Home Services;Cabinetry;Furniture Stores'),
('JJWQxF7ljXKVvCxn3ug-CA', 'Applebee''s Neighborhood Grill & Bar', '', '13756 W Bell Rd', 'Surprise', 'AZ', '85374', 33.642, -112.356, 2.5, 56, 1, 'Burgers;Bars;American (Traditional);Nightlife;Restaurants;Sports Bars;Steakhouses'),
('3rptIkeGoVRdPF4v6omLOg', 'Sunless Boutique', 'The Lakes', '9921 Mahogany Grove Ln', 'Las Vegas', 'NV', '89117', 36.137, -115.313, 5, 20, 1, 'Hair Removal;Beauty & Spas;Skin Care;Tanning;Spray Tanning;Hair Salons'),
('JGvyv9jO8kfEnf4WtnpzfQ', 'Dairy Queen', '', '13623 W Camino Del Sol', 'Sun City West', 'AZ', '85375', 33.654, -112.356, 2.5, 16, 1, 'Restaurants;Ice Cream & Frozen Yogurt;Fast Food;Food'),
('dRb2Xq8jorJV6tDCgmaQUg', 'Papa John''s Pizza', '', '703 E Bell Rd', 'Phoenix', 'AZ', '85022', 33.64, -112.065, 5, 3, 1, 'Restaurants;Pizza'),
('r7MJN_4aJdNP_mx6u_4czQ', 'Red Roof Inn', '', '7400 W Boston St', 'Chandler', 'AZ', '85226', 33.303, -111.97, 2.5, 3, 0, 'Hotels;Hotels & Travel;Event Planning & Services'),
('_QEwts97jzVcvfVo4qveFA', 'Integrated Pain Specialists', 'Spring Valley', '9333 W Sunset Rd, Ste A', 'Las Vegas', 'NV', '89148', 36.069, -115.296, 2.5, 8, 0, 'Health & Medical;Physical Therapy'),
('-M9S1wlZTvv6T9EOo5X2Yw', 'Grandeur Palace', 'Scarborough', '2301 Brimley Road, Unit 128', 'Toronto', 'ON', 'M1S 5B8', 43.798, -79.271, 2.5, 46, 1, 'Restaurants;Seafood;Chinese;Dim Sum'),
('-03HVYxkeYWaafEpNJo1SA', 'GoodLife Vapes', 'Mount Pleasant and Davisville', '2095 Yonge Street', 'Toronto', 'ON', 'M4S 2A5', 43.703, -79.398, 5, 5, 1, 'Vape Shops;Shopping;Electronics;Tobacco Shops'),
('Wd81DI2DICRtANydqJlFtQ', 'Brock Doors and Windows', '', '278 Orenda Road', 'Brampton', 'ON', 'L6T 4X6', 43.7, -79.716, 5, 3, 1, 'Home Services;Windows Installation;Garage Door Services;Contractors'),
('zXY_rBLlE2Kb_D1FZ8bH9g', 'Crabby Joe''s', '', '450 Holland Street W', 'Bradford', 'ON', 'L3Z 0G1', 44.109, -79.587, 2.5, 5, 1, 'Bars
