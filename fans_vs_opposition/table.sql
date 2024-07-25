-- Create the table
CREATE TABLE facebook_hack_survey (
    employee_id INT PRIMARY KEY,
    age INT,
    gender CHAR(1),
    popularity INT
);

-- Insert the data
INSERT INTO facebook_hack_survey (employee_id, age, gender, popularity) VALUES
(0, 24, 'M', 6),
(1, 31, 'F', 4),
(2, 29, 'F', 0),
(3, 33, 'M', 7),
(4, 36, 'F', 6),
(5, 41, 'F', 9),
(6, 44, 'F', 7),
(7, 28, 'F', 5),
(8, 24, 'M', 9),
(9, 18, 'M', 8),
(10, 21, 'M', 1),
(11, 23, 'F', 4),
(12, 30, 'F', 2),
(13, 31, 'M', 0),
(66, 25, 'F', 5),
(55, 35, 'M', 6),
(17, 54, 'M', 9);
