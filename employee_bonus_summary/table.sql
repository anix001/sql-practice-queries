CREATE TABLE employee (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    sex CHAR(1),
    employee_title VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    target DECIMAL(10, 2),
    bonus DECIMAL(10, 2),
    email VARCHAR(100),
    city VARCHAR(50),
    address VARCHAR(100),
    manager_id INT
);


INSERT INTO employee (id, first_name, last_name, age, sex, employee_title, department, salary, target, bonus, email, city, address, manager_id) VALUES
(5, 'Max', 'George', 26, 'M', 'Sales', 'Sales', 1300, 200, 150, 'Max@company.com', 'California', '2638 Richards Avenue', 1),
(13, 'Katty', 'Bond', 56, 'F', 'Manager', 'Management', 150000, 0, 300, 'Katty@company.com', 'Arizona', NULL, 1),
(11, 'Richerd', 'Gear', 57, 'M', 'Manager', 'Management', 250000, 0, 300, 'Richerd@company.com', 'Alabama', NULL, 1),
(10, 'Jennifer', 'Dion', 34, 'F', 'Sales', 'Sales', 1000, 200, 150, 'Jennifer@company.com', 'Alabama', NULL, 13),
(19, 'George', 'Joe', 50, 'M', 'Manager', 'Management', 100000, 0, 300, 'George@company.com', 'Florida', '1003 Wyatt Street', 1),
(18, 'Laila', 'Mark', 26, 'F', 'Sales', 'Sales', 1000, 200, 150, 'Laila@company.com', 'Florida', '3655 Spirit Drive', 11),
(20, 'Sarrah', 'Bicky', 31, 'F', 'Senior Sales', 'Sales', 2000, 200, 150, 'Sarrah@company.com', 'Florida', '1176 Tyler Avenue', 19),
(21, 'Suzan', 'Lee', 34, 'F', 'Sales', 'Sales', 1300, 200, 150, 'Suzan@company.com', 'Florida', '1275 Monroe Avenue', 19),
(22, 'Mandy', 'John', 31, 'F', 'Sales', 'Sales', 1300, 200, 150, 'Mandy@company.com', 'Florida', '2510 Maryland Avenue', 19),
(23, 'Britney', 'Berry', 45, 'F', 'Sales', 'Sales', 1200, 200, 100, 'Britney@company.com', 'Florida', '3946 Steve Hunt Road', 19),
(25, 'Jack', 'Mick', 29, 'M', 'Sales', 'Sales', 1300, 200, 100, 'Jack@company.com', 'Hawaii', '3762 Stratford Drive', 19),
(26, 'Ben', 'Ten', 43, 'M', 'Sales', 'Sales', 1300, 150, 100, 'Ben@company.com', 'Hawaii', '3055 Indiana Avenue', 19),
(27, 'Tom', 'Fridy', 32, 'M', 'Sales', 'Sales', 1200, 200, 150, 'Tom@company.com', 'Hawaii', '801 Stratford Drive', 1),
(29, 'Antoney', 'Adam', 34, 'M', 'Sales', 'Sales', 1300, 180, 150, 'Antoney@company.com', 'Hawaii', '3533 Randall Drive', 1),
(28, 'Morgan', 'Matt', 25, 'M', 'Sales', 'Sales', 1200, 200, 150, 'Morgan@company.com', 'Hawaii', '2641  Randall Drive', 1),
(6, 'Molly', 'Sam', 28, 'F', 'Sales', 'Sales', 1400, 100, 150, 'Molly@company.com', 'Arizona', '3632 Polk Street', 13),
(7, 'Nicky', 'Bat', 33, 'F', 'Sales', 'Sales', 1400, 400, 100, 'Molly@company.com', 'Arizona', '3461 Preston Street', 13),
(9, 'Monika', 'William', 33, 'F', 'Sales', 'Sales', 1000, 200, 100, 'Molly@company.com', 'Alabama', NULL, 13),
(17, 'Mick', 'Berry', 44, 'M', 'Senior Sales', 'Sales', 2200, 200, 150, 'Mick@company.com', 'Florida', NULL, 11),
(12, 'Shandler', 'Bing', 23, 'M', 'Auditor', 'Audit', 1100, 200, 150, 'Shandler@company.com', 'Arizona', NULL, 11),
(14, 'Jason', 'Tom', 23, 'M', 'Auditor', 'Audit', 1000, 200, 150, 'Jason@company.com', 'Arizona', NULL, 11),
(16, 'Celine', 'Anston', 27, 'F', 'Auditor', 'Audit', 1000, 200, 150, 'Celine@company.com', 'Colorado', NULL, 11),
(15, 'Michale', 'Jackson', 44, 'F', 'Auditor', 'Audit', 700, 150, 150, 'Michale@company.com', 'Colorado', NULL, 11),
(24, 'Adam', 'Morris', 30, 'M', 'Sales', 'Sales', 1300, 200, 100, 'Adam@company.com', 'Alabama', '4541  Ferry Street', 19),
(30, 'Mark', 'Jon', 28, 'M', 'Sales', 'Sales', 1200, 200, 150, 'Mark@company.com', 'Alabama', '2522  George Avenue', 1),
(8, 'John', 'Ford', 26, 'M', 'Senior Sales', 'Sales', 1500, 140, 100, 'Molly@company.com', 'Alabama', '4832  New Creek Road', 13),
(1, 'Allen', 'Wang', 55, 'F', 'Manager', 'Management', 200000, 0, 300, 'Allen@company.com', 'California', '1069 Ventura Drive', 1),
(2, 'Joe', 'Jack', 32, 'M', 'Sales', 'Sales', 1000, 200, 150, 'Joe@company.com', 'California', '995 Jim Rosa Lane', 1),
(3, 'Henry', 'Ted', 31, 'M', 'Senior Sales', 'Sales', 2000, 200, 150, 'Henry@company.com', 'California', '1609 Ford Street', 1),
(4, 'Sam', 'Mark', 25, 'M', 'Sales', 'Sales', 1000, 120, 150, NULL, NULL, NULL, NULL);


CREATE TABLE bonus (
    worker_ref_id INT,
    bonus_amount DECIMAL(10, 2),
    bonus_date DATE
);

INSERT INTO bonus (worker_ref_id, bonus_amount, bonus_date) VALUES
(1, 5000, '2020-02-16'),
(2, 3000, '2011-06-16'),
(3, 4000, '2020-02-16'),
(1, 4500, '2020-02-16'),
(2, 3500, '2011-06-16');
