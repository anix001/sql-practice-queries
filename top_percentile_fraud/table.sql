-- Create the table
CREATE TABLE fraud_score (
    policy_num VARCHAR(10),
    state CHAR(2),
    claim_cost INT,
    fraud_score DECIMAL(5, 3)
);

-- Insert the data
INSERT INTO fraud_score (policy_num, state, claim_cost, fraud_score) VALUES 
('ABCD1001', 'CA', 4113, 0.613),
('ABCD1002', 'CA', 3946, 0.156),
('ABCD1003', 'CA', 4335, 0.014),
('ABCD1004', 'CA', 3967, 0.142),
('ABCD1005', 'CA', 1599, 0.889),
('ABCD1006', 'CA', 1021, 0.873),
('ABCD1007', 'CA', 1725, 0.512),
('ABCD1008', 'CA', 1794, 0.349),
('ABCD1009', 'CA', 4593, 0.574),
('ABCD1010', 'CA', 3430, 0.929),
('ABCD1011', 'CA', 4648, 0.183),
('ABCD1012', 'CA', 3963, 0.511),
('ABCD1013', 'CA', 3284, 0.22),
('ABCD1014', 'CA', 1068, 0.025),
('ABCD1015', 'CA', 4171, 0.368),
('ABCD1016', 'CA', 1639, 0.964),
('ABCD1017', 'CA', 2171, 0.288),
('ABCD1018', 'CA', 2627, 0.337),
('ABCD1019', 'CA', 1681, 0.181),
('ABCD1020', 'CA', 1516, 0.074),
('ABCD1021', 'CA', 4898, 0.947),
('ABCD1022', 'CA', 1149, 0.911),
('ABCD1023', 'CA', 2613, 0.362),
('ABCD1024', 'CA', 4202, 0.675),
('ABCD1025', 'CA', 2861, 0.206),
('ABCD1026', 'CA', 1745, 0.555),
('ABCD1027', 'CA', 2663, 0.988),
('ABCD1028', 'CA', 1920, 0.078),
('ABCD1029', 'CA', 4780, 0.448),
('ABCD1030', 'CA', 1336, 0.934),
('ABCD1031', 'CA', 3895, 0.019),
('ABCD1032', 'CA', 2329, 0.334),
('ABCD1033', 'CA', 4833, 0.84),
('ABCD1034', 'CA', 3995, 0.506),
('ABCD1035', 'CA', 1578, 0.437),
('ABCD1036', 'CA', 3935, 0.292),
('ABCD1037', 'CA', 1662, 0.171),
('ABCD1038', 'CA', 2476, 0.747),
('ABCD1039', 'CA', 4388, 0.188),
('ABCD1040', 'CA', 3426, 0.608),
('ABCD1041', 'CA', 3241, 0.842),
('ABCD1042', 'CA', 4674, 0.91),
('ABCD1043', 'CA', 4683, 0.109),
('ABCD1044', 'CA', 3412, 0.53),
('ABCD1045', 'CA', 1088, 0.369),
('ABCD1046', 'CA', 2368, 0.723),
('ABCD1047', 'CA', 3253, 0.081),
('ABCD1048', 'CA', 2558, 0.28),
('ABCD1049', 'CA', 4067, 0.736),
('ABCD1050', 'CA', 4810, 0.577),
('ABCD1051', 'CA', 2418, 0.592),
('ABCD1052', 'CA', 1778, 0.132),
('ABCD1053', 'CA', 4495, 0.112),
('ABCD1054', 'CA', 2814, 0.221),
('ABCD1055', 'CA', 4269, 0.113),
('ABCD1056', 'CA', 2547, 0.484),
('ABCD1057', 'CA', 2115, 0.854),
('ABCD1058', 'CA', 1905, 0.544),
('ABCD1059', 'CA', 4949, 0.44),
('ABCD1060', 'CA', 2178, 0.044),
('ABCD1061', 'CA', 4379, 0.66),
('ABCD1062', 'CA', 1898, 0.24),
('ABCD1063', 'CA', 4548, 0.621),
('ABCD1064', 'CA', 4280, 0.37),
('ABCD1065', 'CA', 3398, 0.059),
('ABCD1066', 'CA', 4106, 0.289),
('ABCD1067', 'CA', 1911, 0.892),
('ABCD1068', 'CA', 3143, 0.264),
('ABCD1069', 'CA', 1426, 0.948),
('ABCD1070', 'CA', 3271, 0.598),
('ABCD1071', 'CA', 2584, 0.88),
('ABCD1072', 'CA', 1777, 0.344),
('ABCD1073', 'CA', 3896, 0.857),
('ABCD1074', 'CA', 1739, 0.886),
('ABCD1075', 'CA', 3410, 0.232),
('ABCD1076', 'CA', 4004, 0.335),
('ABCD1077', 'CA', 1462, 0.045),
('ABCD1078', 'CA', 4983, 0.464),
('ABCD1079', 'CA', 4224, 0.963),
('ABCD1080', 'CA', 4653, 0.771),
('ABCD1081', 'CA', 1080, 0.951),
('ABCD1082', 'CA', 4517, 0.533),
('ABCD1083', 'CA', 2217, 0.804),
('ABCD1084', 'CA', 2804, 0.934),
('ABCD1085', 'CA', 2192, 0.602),
('ABCD1086', 'CA', 4516, 0.933),
('ABCD1087', 'CA', 3345, 0.015),
('ABCD1088', 'CA', 4093, 0.449),
('ABCD1089', 'CA', 3137, 0.188),
('ABCD1090', 'CA', 4611, 0.124),
('ABCD1091', 'CA', 4863, 0.744),
('ABCD1092', 'CA', 2465, 0.282),
('ABCD1093', 'CA', 1368, 0.342),
('ABCD1094', 'CA', 3803, 0.34),
('ABCD1095', 'CA', 4309, 0.44),
('ABCD1096', 'CA', 1492, 0.831),
('ABCD1097', 'CA', 3330, 0.653),
('ABCD1098', 'CA', 1749, 0.778),
('ABCD1099', 'CA', 4692, 0.075),
('ABCD1100', 'NY', 1479, 0.923),
('ABCD1101', 'NY', 3338, 0.532),
('ABCD1102', 'NY', 3156, 0.828),
('ABCD1103', 'NY', 3279, 0.013),
('ABCD1104', 'NY', 4041, 0.518),
('ABCD1105', 'NY', 3138, 0.091),
('ABCD1106', 'NY', 2681, 0.328),
('ABCD1107', 'NY', 3354, 0.508),
('ABCD1108', 'NY', 3434, 0.412),
('ABCD1109', 'NY', 4982, 0.829),
('ABCD1110', 'NY', 4312, 0.742),
('ABCD1111', 'NY', 4635, 0.504),
('ABCD1112', 'NY', 3994, 0.634),
('ABCD1113', 'NY', 2505, 0.655),
('ABCD1114', 'NY', 1791, 0.685),
('ABCD1115', 'NY', 3439, 0.666),
('ABCD1116', 'NY', 4322, 0.26),
('ABCD1117', 'NY', 3853, 0.251),
('ABCD1118', 'NY', 1016, 0.056),
('ABCD1119', 'NY', 3032, 0.675),
('ABCD1120', 'NY', 4233, 0.024),
('ABCD1121', 'NY', 4628, 0.926),
('ABCD1122', 'NY', 3323, 0.045),
('ABCD1123', 'NY', 3677, 0.992),
('ABCD1124', 'NY', 2771, 0.176),
('ABCD1125', 'NY', 3110, 0.003),
('ABCD1126', 'NY', 2072, 0.894),
('ABCD1127', 'NY', 2014, 0.538),
('ABCD1128', 'NY', 1072, 0.391),
('ABCD1129', 'NY', 1373, 0.775),
('ABCD1130', 'NY', 2451, 0.159),
('ABCD1131', 'NY', 3682, 0.96),
('ABCD1132', 'NY', 4676, 0.259),
('ABCD1133', 'NY', 2836, 0.58),
('ABCD1134', 'NY', 1091, 0.907),
('ABCD1135', 'NY', 3035, 0.607),
('ABCD1136', 'NY', 1915, 0.857),
('ABCD1137', 'NY', 4174, 0.178),
('ABCD1138', 'NY', 2536, 0.415),
('ABCD1139', 'NY', 1724, 0.862),
('ABCD1140', 'NY', 4871, 0.749),
('ABCD1141', 'NY', 3317, 0.186),
('ABCD1142', 'NY', 1622, 0.141),
('ABCD1143', 'NY', 2490, 0.986),
('ABCD1144', 'NY', 3884, 0.252),
('ABCD1145', 'NY', 3478, 0.54),
('ABCD1146', 'NY', 1281, 0.972),
('ABCD1147', 'NY', 1983, 0.439),
('ABCD1148', 'NY', 3685, 0.79),
('ABCD1149', 'NY', 3274, 0.071),
('ABCD1150', 'NY', 3942, 0.141),
('ABCD1151', 'NY', 4988, 0.463),
('ABCD1152', 'NY', 4209, 0.986),
('ABCD1153', 'NY', 3600, 0.755),
('ABCD1154', 'NY', 2834, 0.79),
('ABCD1155', 'NY', 3603, 0.184),
('ABCD1156', 'NY', 3471, 0.503),
('ABCD1157', 'NY', 1082, 0.101),
('ABCD1158', 'NY', 4074, 0.574),
('ABCD1159', 'NY', 2687, 0.835),
('ABCD1160', 'NY', 3483, 0.127),
('ABCD1161', 'NY', 3378, 0.885),
('ABCD1162', 'NY', 3135, 0.728),
('ABCD1163', 'NY', 3348, 0.63),
('ABCD1164', 'NY', 4699, 0.579),
('ABCD1165', 'NY', 1505, 0.597),
('ABCD1166', 'NY', 3319, 0.518),
('ABCD1167', 'NY', 2032, 0.968),
('ABCD1168', 'NY', 3377, 0.931),
('ABCD1169', 'NY', 2420, 0.815),
('ABCD1170', 'NY', 2872, 0.494),
('ABCD1171', 'NY', 2581, 0.661),
('ABCD1172', 'NY', 4397, 0.185),
('ABCD1173', 'NY', 4447, 0.688),
('ABCD1174', 'NY', 2633, 0.436),
('ABCD1175', 'NY', 3856, 0.838),
('ABCD1176', 'NY', 2474, 0.697),
('ABCD1177', 'NY', 4970, 0.894),
('ABCD1178', 'NY', 1712, 0.455),
('ABCD1179', 'NY', 2384, 0.972),
('ABCD1180', 'NY', 4204, 0.003),
('ABCD1181', 'NY', 2661, 0.611),
('ABCD1182', 'NY', 2657, 0.736),
('ABCD1183', 'NY', 1122, 0.739),
('ABCD1184', 'NY', 2930, 0.03),
('ABCD1185', 'NY', 3934, 0.993),
('ABCD1186', 'NY', 1225, 0.432),
('ABCD1187', 'NY', 2280, 0.183),
('ABCD1188', 'NY', 3802, 0.317),
('ABCD1189', 'NY', 2043, 0.983),
('ABCD1190', 'NY', 2195, 0.128),
('ABCD1191', 'NY', 2074, 0.695),
('ABCD1192', 'NY', 4753, 0.244),
('ABCD1193', 'NY', 4727, 0.501),
('ABCD1194', 'NY', 1793, 0.064),
('ABCD1195', 'NY', 3194, 0.793),
('ABCD1196', 'NY', 4840, 0.165),
('ABCD1197', 'NY', 2572, 0.263),
('ABCD1198', 'NY', 4818, 0.375),
('ABCD1199', 'NY', 1364, 0.105);