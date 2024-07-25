CREATE TABLE sf_public_salaries (
    id INT PRIMARY KEY,
    employeename VARCHAR(100),
    jobtitle VARCHAR(100),
    basepay DECIMAL(10,2),
    overtimepay DECIMAL(10,2),
    otherpay DECIMAL(10,2),
    benefits DECIMAL(10,2),
    totalpay DECIMAL(10,2),
    totalpaybenefits DECIMAL(10,2),
    year INT,
    notes TEXT,
    agency VARCHAR(50),
    status VARCHAR(10)
);


INSERT INTO sf_public_salaries (
    id, employeename, jobtitle, basepay, overtimepay, otherpay, benefits,
    totalpay, totalpaybenefits, year, notes, agency, status
) VALUES
(120566, 'Teresa L Cavanaugh', 'EMT/Paramedic/Firefighter', 100952.41, 0, 4254.88, 34317.37, 105207.29, 139524.66, 2014, '', 'San Francisco', 'PT'),
(72002, 'Ray Torres', 'Public Service Trainee', 1121.28, 0, 0, 185.77, 1121.28, 1307.05, 2012, '', 'San Francisco', NULL),
(122662, 'Rizaldy T Tabada', 'Deputy Sheriff', 92403.77, 138.18, 2903.94, 33625.27, 95445.89, 129071.16, 2014, '', 'San Francisco', 'FT'),
(140133, 'Gregory B Bovo', 'Firefighter', 23757.50, 0, 0, 9982.21, 23757.50, 33739.71, 2014, '', 'San Francisco', 'PT'),
(87502, 'Jason L Landivar', 'EMT/Paramedic/Firefighter', 82115.61, 666.79, 5220.34, 28933.91, 88002.74, 116936.65, 2013, '', 'San Francisco', NULL),
(71770, 'Fernando Barajas', 'Public Svc Aide-Public Works', 1585.60, 0, 0, 178.07, 1585.60, 1763.67, 2012, '', 'San Francisco', NULL),
(144682, 'George Fudge', 'Transit Operator', 4390.15, 1059.31, 12.11, 2846.74, 5461.57, 8308.31, 2014, '', 'San Francisco', 'PT'),
(148136, 'Jose F Granados', 'Public Svc Aide-Public Works', 661.20, 0, 0, 6.61, 661.20, 667.81, 2014, '', 'San Francisco', 'PT'),
(72175, 'Linda Pizzorno', 'Registered Nurse', 0, 0, 795.01, 230.64, 795.01, 1025.65, 2012, '', 'San Francisco', NULL),
(110316, 'Sophia  Wu', 'Public Service Trainee', 295.41, 0, 0, 2.95, 295.41, 298.36, 2013, '', 'San Francisco', NULL),
(110441, 'Maria E Zuniga', 'Transit Operator', NULL, 0, 114.54, 0, 114.54, 114.54, 2013, '', 'San Francisco', NULL),
(57726, 'Sara Paredes', 'Registered Nurse', 65061.57, 0, 975, 23477.40, 66036.57, 89513.97, 2012, '', 'San Francisco', NULL),
(135711, 'Adina M Diamond', 'Registered Nurse', 52901.45, 3307.79, 2286.95, 19383.18, 58496.19, 77879.37, 2014, '', 'San Francisco', 'PT'),
(139629, 'Terry L Johnson', 'Transit Operator', 21183.22, 3841.15, 510.61, 13384.77, 25534.98, 38919.75, 2014, '', 'San Francisco', 'PT'),
(64401, 'Sherry Mahoney', 'EMT/Paramedic/Firefighter', 29579.00, 0, 2402.70, 11785.19, 31981.70, 43766.89, 2012, '', 'San Francisco', NULL),
(148022, 'Kari A Johnson', 'Firefighter', 688.71, 0, 0, 143.39, 688.71, 832.10, 2014, '', 'San Francisco', 'PT'),
(114356, 'Joseph M Salazar', 'Sergeant 3', 124770.09, 14167.98, 7510.15, 40182.20, 146448.22, 186630.42, 2014, '', 'San Francisco', 'FT'),
(104037, 'Annette  Kess', 'Transit Operator', NULL, 0, 11808.00, 7959.18, 11808.00, 19767.18, 2013, '', 'San Francisco', NULL),
(71779, 'Ayala Mirande', 'Special Nurse', 367.73, 942.38, 44.11, 388.96, 1354.22, 1743.18, 2012, '', 'San Francisco', NULL),
(143075, 'George L Abrams Jr', 'Transit Operator', 7316.62, 1622.58, 30.95, 4742.85, 8970.15, 13713.00, 2014, '', 'San Francisco', 'PT');
