CREATE TABLE uber_advertising (
    year INT,
    advertising_channel VARCHAR(50),
    money_spent DECIMAL(15, 2),
    customers_acquired INT
);

INSERT INTO uber_advertising (year, advertising_channel, money_spent, customers_acquired) VALUES
(2019, 'celebrities', 10000000, 1800),
(2019, 'billboards', 1000000, 2000),
(2019, 'busstops', 1500, 400),
(2019, 'buses', 70000, 2500),
(2019, 'tv', 300000, 5000),
(2019, 'radio', 1500, 51),
(2018, 'celebrities', 123555, 2100),
(2018, 'billboards', 500000, 1800),
(2018, 'busstops', 35000, 600),
(2018, 'buses', 550000, 2300),
(2018, 'tv', 500000, 5300),
(2018, 'radio', 2500, 250),
(2017, 'celebrities', 300000, 1900),
(2017, 'billboards', 200200, 2100),
(2017, 'busstops', 80000, 800),
(2017, 'buses', 3589000, 2700),
(2017, 'tv', 80000, 4700),
(2017, 'radio', 80000, 1200);
