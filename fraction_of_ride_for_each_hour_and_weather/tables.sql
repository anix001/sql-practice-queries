CREATE TABLE lyft_rides (
    index INT PRIMARY KEY,
    weather VARCHAR(255),
    hour INT,
    travel_distance DECIMAL(10, 3),
    gasoline_cost DECIMAL(10, 3)
);

INSERT INTO lyft_rides (index, weather, hour, travel_distance, gasoline_cost) VALUES
(0, 'cloudy', 7, 24.468, 1.129),
(1, 'cloudy', 23, 23.667, 1.993),
(2, 'sunny', 17, 20.931, 0.859),
(3, 'rainy', 2, 29.575, 0.848),
(4, 'rainy', 7, 16.111, 0.952),
(5, 'sunny', 1, 27.482, 1.279),
(6, 'rainy', 3, 27.350, 0.978),
(7, 'rainy', 8, 26.613, 1.744),
(8, 'cloudy', 9, 20.493, 1.152),
(9, 'sunny', 14, 17.953, 1.540),
(10, 'rainy', 17, 27.761, 1.680),
(11, 'cloudy', 0, 26.707, 1.228),
(12, 'rainy', 8, 11.950, 1.025),
(13, 'rainy', 21, 29.571, 0.958),
(14, 'cloudy', 20, 30.074, 0.792),
(15, 'cloudy', 9, 25.332, 0.939),
(16, 'cloudy', 5, 11.509, 1.197),
(17, 'cloudy', 3, 18.622, 1.095),
(18, 'cloudy', 16, 23.832, 1.061),
(19, 'rainy', 16, 30.461, 1.261),
(20, 'cloudy', 6, 24.736, 1.288),
(21, 'sunny', 9, 22.260, 0.899),
(22, 'sunny', 12, 18.889, 0.786),
(23, 'cloudy', 23, 13.187, 0.577),
(24, 'sunny', 10, 18.541, 0.906),
(25, 'rainy', 21, 15.365, 0.978),
(26, 'sunny', 3, 21.264, 1.163),
(27, 'cloudy', 3, 13.712, 1.404),
(28, 'cloudy', 8, 23.166, 0.785),
(29, 'rainy', 15, 20.049, 0.983),
(30, 'rainy', 14, 26.144, 1.777),
(31, 'sunny', 1, 13.105, 1.058),
(32, 'sunny', 12, 29.154, 1.065),
(33, 'rainy', 13, 18.442, 1.111),
(34, 'rainy', 13, 14.404, 0.685),
(35, 'sunny', 11, 19.487, 1.086),
(36, 'sunny', 5, 16.525, 1.272),
(37, 'sunny', 4, 20.638, 1.110),
(38, 'cloudy', 22, 22.424, 1.009),
(39, 'rainy', 1, 31.465, 1.278),
(40, 'sunny', 16, 11.573, 1.696),
(41, 'cloudy', 1, 32.254, 1.344),
(42, 'cloudy', 17, 22.725, 1.110),
(43, 'sunny', 4, 18.472, 1.276),
(44, 'sunny', 14, 20.868, 1.238),
(45, 'sunny', 7, 17.926, 1.414),
(46, 'rainy', 20, 22.127, 1.131),
(47, 'rainy', 15, 28.045, 0.993),
(48, 'cloudy', 23, 25.601, 0.589),
(49, 'rainy', 18, 29.101, 0.924),
(50, 'rainy', 12, -3.874, 1.540),
(51, 'cloudy', 22, 16.116, 1.651),
(52, 'sunny', 13, 23.444, 1.271),
(53, 'rainy', 10, 24.428, 0.412),
(54, 'rainy', 22, 23.496, 1.322),
(55, 'rainy', 18, 16.097, 1.072),
(56, 'rainy', 0, 13.589, 1.210),
(57, 'cloudy', 21, 24.143, 1.565),
(58, 'cloudy', 13, 20.876, 1.301),
(59, 'sunny', 3, 13.510, 1.442),
(60, 'sunny', 18, 16.174, 1.231),
(61, 'rainy', 19, 8.791, 0.734),
(62, 'sunny', 16, 24.742, 1.340),
(63, 'rainy', 16, 30.802, 1.117),
(64, 'rainy', 16, 25.021, 1.534),
(65, 'sunny', 11, 19.696, 0.831),
(66, 'sunny', 20, 15.456, 1.253),
(67, 'cloudy', 2, 24.382, 0.951),
(68, 'cloudy', 14, 18.265, 1.699),
(69, 'rainy', 23, 35.466, 1.591),
(70, 'sunny', 12, 24.743, 1.058),
(71, 'cloudy', 9, 22.923, 1.584),
(72, 'cloudy', 22, 23.992, 1.358),
(73, 'rainy', 16, 28.985, 1.258),
(74, 'rainy', 9, 19.668, 0.360),
(75, 'cloudy', 1, 19.168, 0.812),
(76, 'sunny', 21, 24.196, 0.843),
(77, 'rainy', 14, 16.011, 1.244),
(78, 'cloudy', 17, 25.311, 0.487),
(79, 'rainy', 17, 17.318, 1.270),
(80, 'sunny', 20, 19.455, 0.913),
(81, 'cloudy', 3, 21.759, 0.940),
(82, 'cloudy', 19, 9.033, 1.509),
(83, 'sunny', 0, 23.409, 1.511),
(84, 'rainy', 14, 25.612, 0.781),
(85, 'rainy', 23, 18.647, 1.183),
(86, 'cloudy', 13, 16.351, 0.902),
(87, 'cloudy', 22, 21.389, 0.992),
(88, 'sunny', 13, 30.150, 1.675),
(89, 'sunny', 20, 22.121, 1.205),
(90, 'sunny', 12, 26.388, 1.028),
(91, 'rainy', 4, 25.277, 1.570),
(92, 'sunny', 16, 23.859, 1.272),
(93, 'rainy', 9, 18.165, 1.162),
(94, 'sunny', 17, 25.464, 1.033),
(95, 'rainy', 1, 18.562, 1.925),
(96, 'sunny', 2, 17.932, 1.343),
(97, 'rainy', 4, 32.637, 0.863),
(98, 'sunny', 16, 15.585, 0.656),
(99, 'cloudy', 5, 28.156, 1.116),
(100, 'sunny', 18, 20.340, 0.847),
(101, 'sunny', 8, 16.191, 1.244),
(102, 'rainy', 19, 13.515, 0.935),
(103, 'cloudy', 20, 15.236, 0.660),
(104, 'cloudy', 8, 0.216, 1.137),
(105, 'sunny', 21, 28.946, 1.730),
(106, 'rainy', 21, 12.754, 0.929),
(107, 'rainy', 2, 18.006, 1.027),
(108, 'rainy', 21, 10.123, 1.092),
(109, 'cloudy', 17, 16.248, 1.824),
(110, 'rainy', 4, 25.575, 0.738),
(111, 'sunny', 18, 17.913, 1.201),
(112, 'rainy', 11, 27.720, 1.356),
(113, 'sunny', 11, 21.206, 1.229),
(114, 'rainy', 5, 21.041, 1.230),
(115, 'cloudy', 13, 23.420, 1.334),
(116, 'sunny', 22, 14.978, 0.793),
(117, 'cloudy', 7, 26.982, 1.034),
(118, 'sunny', 2, 9.565, 0.717),
(119, 'cloudy', 21, 22.360, 1.083),
(120, 'rainy', 10, 16.643, 0.832),
(121, 'sunny', 2, 26.041, 1.213),
(122, 'cloudy', 23, 25.223, 1.237),
(123, 'cloudy', 21, 30.210, 1.359),
(124, 'cloudy', 13, 15.066, 0.895),
(125, 'cloudy', 23, 23.811, 1.022),
(126, 'rainy', 22, 24.059, 1.321),
(127, 'cloudy', 0, 14.216, 1.500),
(128, 'rainy', 20, 18.499, 1.183),
(129, 'sunny', 6, 11.959, 1.441),
(130, 'sunny', 2, 21.397, 1.765),
(131, 'rainy', 7, 14.136, 0.810),
(132, 'sunny', 22, 21.415, 0.819),
(133, 'rainy', 15, 20.375, 0.712),
(134, 'sunny', 0, 17.611, 1.202),
(135, 'sunny', 12, 27.231, 1.790),
(136, 'cloudy', 23, 21.082, 1.047),
(137, 'rainy', 18, 14.159, 1.279),
(138, 'rainy', 1, 32.580, 1.217),
(139, 'cloudy', 1, 21.546, 0.983),
(140, 'cloudy', 21, 20.302, 0.964),
(141, 'rainy', 18, 22.069, 1.395),
(142, 'rainy', 7, 34.704, 1.288),
(143, 'sunny', 6, 19.752, 1.381),
(144, 'sunny', 2, 26.456, 1.138),
(145, 'rainy', 8, 28.302, 0.375),
(146, 'cloudy', 18, 13.598, 0.777);
