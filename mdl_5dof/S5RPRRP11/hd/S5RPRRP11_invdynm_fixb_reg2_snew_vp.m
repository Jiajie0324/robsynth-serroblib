% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RPRRP11
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:55
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RPRRP11_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP11_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP11_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRP11_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP11_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP11_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:55:00
% EndTime: 2019-12-31 18:55:20
% DurationCPUTime: 20.95s
% Computational Cost: add. (55898->635), mult. (133497->790), div. (0->0), fcn. (97496->8), ass. (0->424)
t1326 = sin(qJ(4));
t1329 = cos(qJ(4));
t1323 = sin(pkin(8));
t1324 = cos(pkin(8));
t1327 = sin(qJ(3));
t1330 = cos(qJ(3));
t1358 = t1323 * t1330 + t1324 * t1327;
t1296 = t1358 * qJD(1);
t1271 = -t1329 * qJD(3) + t1326 * t1296;
t1294 = (t1323 * t1327 - t1324 * t1330) * qJD(1);
t1285 = t1294 * qJD(3);
t1293 = t1358 * qJDD(1);
t1259 = -t1285 + t1293;
t1357 = -t1326 * qJDD(3) - t1329 * t1259;
t1203 = -t1271 * qJD(4) - t1357;
t1287 = qJD(4) + t1294;
t1423 = t1271 * t1287;
t1458 = t1203 - t1423;
t1397 = t1329 * t1458;
t1273 = t1326 * qJD(3) + t1329 * t1296;
t1375 = t1329 * qJDD(3) - t1326 * t1259;
t1202 = t1273 * qJD(4) - t1375;
t1240 = t1287 * t1273;
t1459 = t1202 + t1240;
t1082 = -t1326 * t1459 + t1397;
t1328 = sin(qJ(1));
t1331 = cos(qJ(1));
t1409 = t1326 * t1458;
t1084 = t1329 * t1459 + t1409;
t1270 = t1273 ^ 2;
t1438 = t1271 ^ 2;
t1454 = t1270 - t1438;
t1051 = t1327 * t1084 + t1330 * t1454;
t1053 = t1330 * t1084 - t1327 * t1454;
t992 = t1323 * t1051 - t1324 * t1053;
t1539 = -t1331 * t1082 + t1328 * t992;
t1538 = t1328 * t1082 + t1331 * t992;
t1437 = t1287 ^ 2;
t1233 = t1438 - t1437;
t1227 = t1273 * t1271;
t1313 = t1323 * qJDD(1);
t1315 = t1324 * qJDD(1);
t1292 = t1327 * t1313 - t1330 * t1315;
t1418 = t1296 * qJD(3);
t1257 = -t1292 - t1418;
t1248 = qJDD(4) - t1257;
t1455 = t1227 + t1248;
t1486 = t1326 * t1455;
t1134 = t1329 * t1233 - t1486;
t1164 = t1202 - t1240;
t1071 = t1327 * t1134 + t1330 * t1164;
t1075 = t1330 * t1134 - t1327 * t1164;
t1014 = t1323 * t1071 - t1324 * t1075;
t1478 = t1329 * t1455;
t1130 = t1326 * t1233 + t1478;
t1537 = t1328 * t1014 + t1331 * t1130;
t1536 = t1331 * t1014 - t1328 * t1130;
t989 = t1324 * t1051 + t1323 * t1053;
t1011 = t1324 * t1071 + t1323 * t1075;
t1234 = t1270 - t1437;
t1456 = -t1227 + t1248;
t1407 = t1326 * t1456;
t1496 = -t1329 * t1234 + t1407;
t1457 = t1203 + t1423;
t1395 = t1329 * t1456;
t1495 = t1326 * t1234 + t1395;
t1507 = t1327 * t1457 + t1330 * t1495;
t1508 = t1327 * t1495 - t1330 * t1457;
t1515 = -t1323 * t1508 + t1324 * t1507;
t1535 = t1328 * t1515 - t1331 * t1496;
t1534 = t1328 * t1496 + t1331 * t1515;
t1208 = t1437 + t1270;
t1102 = t1329 * t1208 + t1486;
t1533 = pkin(1) * t1102;
t1451 = -t1437 - t1438;
t1468 = t1329 * t1451 - t1407;
t1491 = t1327 * t1459 + t1330 * t1468;
t1494 = t1327 * t1468 - t1330 * t1459;
t1505 = t1323 * t1491 + t1324 * t1494;
t1532 = pkin(1) * t1505;
t1531 = pkin(2) * t1102;
t1530 = pkin(3) * t1102;
t1529 = pkin(7) * t1102;
t1118 = t1326 * t1208 - t1478;
t1528 = pkin(7) * t1118;
t1527 = qJ(2) * t1505;
t1526 = t1327 * t1118;
t1524 = t1328 * t1102;
t1522 = t1330 * t1118;
t1520 = t1331 * t1102;
t1469 = t1326 * t1451 + t1395;
t1506 = -t1323 * t1494 + t1324 * t1491;
t1518 = -pkin(1) * t1469 + qJ(2) * t1506;
t1517 = pkin(5) * (t1328 * t1506 - t1331 * t1469);
t1516 = pkin(5) * (t1328 * t1469 + t1331 * t1506);
t1514 = t1323 * t1507 + t1324 * t1508;
t1513 = pkin(2) * t1494;
t1512 = pkin(6) * t1494;
t1509 = -pkin(2) * t1469 + pkin(6) * t1491;
t1502 = pkin(3) * t1469;
t1501 = pkin(7) * t1468;
t1500 = pkin(7) * t1469;
t1499 = -qJ(5) * t1326 - pkin(3);
t1422 = t1287 * t1326;
t1153 = -t1329 * t1202 + t1271 * t1422;
t1421 = t1287 * t1329;
t1382 = t1271 * t1421;
t1353 = t1326 * t1202 + t1382;
t1384 = t1327 * t1227;
t1444 = t1330 * t1353 - t1384;
t1381 = t1330 * t1227;
t1445 = t1327 * t1353 + t1381;
t1464 = -t1323 * t1445 + t1324 * t1444;
t1493 = -t1331 * t1153 + t1328 * t1464;
t1460 = (t1271 * t1326 + t1273 * t1329) * t1287;
t1231 = t1273 * t1422;
t1362 = t1231 - t1382;
t1443 = t1327 * t1248 + t1330 * t1362;
t1446 = -t1330 * t1248 + t1327 * t1362;
t1466 = -t1323 * t1446 + t1324 * t1443;
t1492 = t1328 * t1466 + t1331 * t1460;
t1490 = t1328 * t1153 + t1331 * t1464;
t1489 = -t1328 * t1460 + t1331 * t1466;
t1453 = t1270 + t1438;
t1488 = pkin(3) * t1453;
t1487 = qJ(5) * t1458;
t1262 = t1296 * t1294;
t1449 = qJDD(3) - t1262;
t1485 = t1327 * t1449;
t1484 = t1327 * t1453;
t1477 = t1330 * t1449;
t1476 = t1330 * t1453;
t1156 = t1326 * t1203 + t1273 * t1421;
t1157 = t1329 * t1203 - t1231;
t1363 = t1330 * t1157 + t1384;
t1364 = t1327 * t1157 - t1381;
t1441 = -t1323 * t1364 + t1324 * t1363;
t1470 = -t1331 * t1156 + t1328 * t1441;
t1467 = t1328 * t1156 + t1331 * t1441;
t1332 = qJD(1) ^ 2;
t1306 = t1328 * g(1) - t1331 * g(2);
t1368 = -qJDD(2) + t1306;
t1386 = pkin(2) * t1324 + pkin(1);
t1320 = t1323 ^ 2;
t1321 = t1324 ^ 2;
t1389 = t1320 + t1321;
t1252 = t1386 * qJDD(1) + (t1389 * pkin(6) + qJ(2)) * t1332 + t1368;
t1465 = t1323 * t1443 + t1324 * t1446;
t1463 = t1323 * t1444 + t1324 * t1445;
t1316 = t1321 * t1332;
t1307 = t1331 * g(1) + t1328 * g(2);
t1346 = -0.2e1 * qJD(2) * qJD(1) + t1307;
t1342 = -t1332 * pkin(1) - t1346;
t1431 = t1323 * g(3);
t1450 = (pkin(6) + qJ(2)) * qJDD(1);
t1238 = -pkin(2) * t1316 - t1431 + (t1342 + t1450) * t1324;
t1430 = t1324 * g(3);
t1335 = -t1430 + (t1386 * t1332 + t1346 - t1450) * t1323;
t1175 = t1330 * t1238 + t1327 * t1335;
t1249 = t1294 * pkin(3) - t1296 * pkin(7);
t1439 = qJD(3) ^ 2;
t1121 = -t1439 * pkin(3) + qJDD(3) * pkin(7) - t1294 * t1249 + t1175;
t1125 = (-t1259 + t1285) * pkin(7) + (-t1257 + t1418) * pkin(3) - t1252;
t1048 = t1326 * t1121 - t1329 * t1125;
t1049 = t1329 * t1121 + t1326 * t1125;
t987 = t1326 * t1048 + t1329 * t1049;
t1174 = t1327 * t1238 - t1330 * t1335;
t1120 = -qJDD(3) * pkin(3) - t1439 * pkin(7) + t1296 * t1249 + t1174;
t1339 = t1202 * pkin(4) + t1120 - t1487;
t1026 = (pkin(4) * t1287 - (2 * qJD(5))) * t1273 + t1339;
t1424 = qJD(5) * t1287;
t1276 = 0.2e1 * t1424;
t1221 = t1271 * pkin(4) - t1273 * qJ(5);
t1361 = -pkin(4) * t1437 + t1248 * qJ(5) - t1271 * t1221 + t1049;
t1021 = t1276 + t1361;
t1023 = -t1248 * pkin(4) - qJ(5) * t1437 + t1273 * t1221 + qJDD(5) + t1048;
t969 = t1329 * t1021 + t1326 * t1023;
t1344 = pkin(7) * t969 + (-pkin(4) * t1329 + t1499) * t1026;
t958 = -t1330 * t1026 + t1327 * t969;
t1452 = pkin(2) * t958 + t1344;
t1447 = t1332 * t1389;
t1440 = t1323 * t1363 + t1324 * t1364;
t1290 = t1294 ^ 2;
t1291 = t1296 ^ 2;
t1088 = -t1330 * t1174 + t1327 * t1175;
t1434 = pkin(2) * t1088;
t1194 = -t1292 * t1327 - t1330 * t1293;
t1433 = pkin(2) * t1194;
t1432 = pkin(3) * t1327;
t1429 = qJDD(1) * pkin(1);
t1427 = qJ(5) * t1329;
t1426 = -pkin(3) * t1120 + pkin(7) * t987;
t1420 = t1294 * t1327;
t1419 = t1294 * t1330;
t1417 = t1296 * t1327;
t1416 = t1296 * t1330;
t1415 = t1320 * t1332;
t1414 = t1323 * t1088;
t1413 = t1323 * t1324;
t1412 = t1324 * t1088;
t1110 = t1326 * t1120;
t1410 = t1326 * t1457;
t1403 = t1327 * t1252;
t1254 = qJDD(3) + t1262;
t1402 = t1327 * t1254;
t1288 = t1332 * qJ(2) + t1368 + t1429;
t1400 = t1328 * t1288;
t1111 = t1329 * t1120;
t1398 = t1329 * t1457;
t1392 = t1330 * t1252;
t1391 = t1330 * t1254;
t1390 = t1331 * t1288;
t1388 = t1328 * qJDD(1);
t1387 = t1331 * qJDD(1);
t1385 = -pkin(3) * t1330 - pkin(2);
t1383 = t1328 * t1262;
t1380 = t1331 * t1262;
t1171 = (qJD(4) + t1287) * t1271 + t1357;
t1379 = pkin(3) * t1171 + t1110 + t1528;
t1378 = -pkin(3) * t1459 - t1111 + t1501;
t1377 = t1323 * t1315;
t1376 = t1288 + t1429;
t1089 = t1327 * t1174 + t1330 * t1175;
t1338 = qJDD(1) * qJ(2) + t1342;
t1263 = t1323 * t1338 + t1430;
t1264 = t1324 * t1338 - t1431;
t1206 = t1323 * t1263 + t1324 * t1264;
t1374 = -t1328 * t1306 - t1331 * t1307;
t977 = -t1330 * t1120 + t1327 * t987;
t1373 = pkin(2) * t977 + t1426;
t1002 = pkin(4) * t1453 + t1021;
t1016 = qJ(5) * t1453 + t1023;
t1085 = -t1329 * t1164 + t1410;
t1372 = pkin(7) * t1085 + t1329 * t1002 + t1326 * t1016 + t1488;
t1166 = (-qJD(4) + t1287) * t1273 + t1375;
t1087 = t1329 * t1166 + t1410;
t1371 = pkin(7) * t1087 + t1488 + t987;
t1280 = -t1291 - t1439;
t1211 = t1330 * t1280 - t1402;
t1370 = pkin(2) * t1211 - t1175;
t1305 = -t1328 * t1332 + t1387;
t1369 = -pkin(5) * t1305 - t1328 * g(3);
t1367 = -pkin(4) * t1023 + qJ(5) * t1021;
t1366 = -pkin(4) * t1457 - qJ(5) * t1164;
t986 = -t1329 * t1048 + t1326 * t1049;
t1205 = t1324 * t1263 - t1323 * t1264;
t1359 = t1331 * t1306 - t1328 * t1307;
t1304 = t1331 * t1332 + t1388;
t1356 = t1378 + t1513;
t1064 = t1330 * t1171 + t1526;
t1355 = pkin(2) * t1064 + t1379;
t1250 = -t1290 - t1439;
t1190 = t1327 * t1250 + t1477;
t1354 = pkin(2) * t1190 - t1174;
t1298 = t1324 * t1447;
t1352 = -t1328 * t1298 + t1324 * t1387;
t1351 = t1331 * t1298 + t1324 * t1388;
t1337 = 0.2e1 * qJD(5) * t1273 - t1339;
t1005 = -pkin(4) * t1240 + t1337 + t1487;
t1350 = pkin(3) * t1458 + pkin(4) * t1397 + t1326 * t1005 - t1528;
t1041 = t1327 * t1085 + t1476;
t1349 = pkin(2) * t1041 + t1372;
t1042 = t1327 * t1087 + t1476;
t1348 = pkin(2) * t1042 + t1371;
t1006 = (-t1459 - t1240) * pkin(4) + t1337;
t1347 = t1329 * t1006 + t1499 * t1459 + t1501;
t1055 = t1330 * t1458 - t1526;
t1345 = pkin(2) * t1055 + t1350;
t1343 = t1347 + t1513;
t1341 = pkin(4) * t1208 + qJ(5) * t1455 + t1361;
t1336 = pkin(4) * t1456 + qJ(5) * t1451 - t1023;
t1314 = t1321 * qJDD(1);
t1312 = t1320 * qJDD(1);
t1309 = t1332 * t1413;
t1308 = 0.2e1 * t1377;
t1303 = -t1316 + t1415;
t1302 = t1316 + t1415;
t1301 = t1314 - t1312;
t1300 = t1314 + t1312;
t1297 = t1323 * t1447;
t1289 = -pkin(5) * t1304 + t1331 * g(3);
t1279 = -t1291 + t1439;
t1278 = t1290 - t1439;
t1275 = t1305 * t1413;
t1274 = t1304 * t1413;
t1267 = t1331 * t1297 + t1323 * t1388;
t1266 = t1328 * t1297 - t1323 * t1387;
t1261 = t1291 - t1290;
t1258 = -0.2e1 * t1285 + t1293;
t1256 = t1292 + 0.2e1 * t1418;
t1244 = (t1417 - t1419) * qJD(3);
t1243 = (-t1416 - t1420) * qJD(3);
t1237 = -qJ(2) * t1298 + t1376 * t1324;
t1236 = qJ(2) * t1297 - t1376 * t1323;
t1225 = -t1290 - t1291;
t1220 = -qJD(3) * t1417 + t1330 * t1259;
t1219 = qJD(3) * t1416 + t1327 * t1259;
t1218 = qJD(3) * t1419 - t1327 * t1257;
t1217 = qJD(3) * t1420 + t1330 * t1257;
t1214 = -t1327 * t1280 - t1391;
t1213 = -t1327 * t1279 + t1477;
t1212 = t1330 * t1278 - t1402;
t1210 = t1330 * t1279 + t1485;
t1209 = t1327 * t1278 + t1391;
t1197 = -t1330 * t1256 - t1327 * t1258;
t1196 = -t1292 * t1330 + t1327 * t1293;
t1195 = -t1327 * t1256 + t1330 * t1258;
t1191 = t1330 * t1250 - t1485;
t1183 = pkin(1) * t1288 + qJ(2) * t1206;
t1178 = -t1323 * t1243 + t1324 * t1244;
t1177 = t1324 * t1243 + t1323 * t1244;
t1176 = pkin(1) * t1302 + qJ(2) * t1300 + t1206;
t1172 = -pkin(6) * t1211 - t1392;
t1158 = -pkin(6) * t1190 - t1403;
t1148 = -t1323 * t1219 + t1324 * t1220;
t1147 = -t1323 * t1217 + t1324 * t1218;
t1146 = t1324 * t1219 + t1323 * t1220;
t1145 = t1324 * t1217 + t1323 * t1218;
t1144 = -t1323 * t1211 + t1324 * t1214;
t1143 = -t1323 * t1210 + t1324 * t1213;
t1142 = -t1323 * t1209 + t1324 * t1212;
t1141 = t1324 * t1211 + t1323 * t1214;
t1140 = t1324 * t1210 + t1323 * t1213;
t1139 = t1324 * t1209 + t1323 * t1212;
t1126 = -pkin(2) * t1258 + pkin(6) * t1214 - t1403;
t1122 = -pkin(2) * t1256 + pkin(6) * t1191 + t1392;
t1109 = -t1323 * t1195 + t1324 * t1197;
t1108 = -t1323 * t1194 + t1324 * t1196;
t1107 = t1324 * t1195 + t1323 * t1197;
t1106 = t1324 * t1194 + t1323 * t1196;
t1101 = -t1323 * t1190 + t1324 * t1191;
t1100 = t1324 * t1190 + t1323 * t1191;
t1083 = t1326 * t1166 - t1398;
t1081 = -t1326 * t1164 - t1398;
t1077 = pkin(2) * t1252 + pkin(6) * t1089;
t1076 = -pkin(1) * t1106 - t1433;
t1066 = -t1327 * t1171 + t1522;
t1063 = -pkin(6) * t1194 - t1088;
t1057 = -t1327 * t1458 - t1522;
t1050 = -pkin(1) * t1141 - t1370;
t1045 = t1111 + t1529;
t1044 = t1330 * t1087 - t1484;
t1043 = t1330 * t1085 - t1484;
t1040 = t1110 - t1500;
t1039 = -pkin(2) * t1225 + pkin(6) * t1196 + t1089;
t1038 = -pkin(1) * t1100 - t1354;
t1029 = -qJ(2) * t1141 - t1323 * t1126 + t1324 * t1172;
t1028 = t1324 * t1089 - t1414;
t1027 = t1323 * t1089 + t1412;
t1024 = -pkin(1) * t1258 + qJ(2) * t1144 + t1324 * t1126 + t1323 * t1172;
t1022 = -qJ(2) * t1100 - t1323 * t1122 + t1324 * t1158;
t1020 = t1049 + t1530;
t1019 = -pkin(3) * t1081 - t1366;
t1018 = t1048 - t1502;
t1017 = -pkin(1) * t1256 + qJ(2) * t1101 + t1324 * t1122 + t1323 * t1158;
t999 = -t1323 * t1064 + t1324 * t1066;
t997 = t1324 * t1064 + t1323 * t1066;
t995 = -t1323 * t1055 + t1324 * t1057;
t993 = t1324 * t1055 + t1323 * t1057;
t988 = -pkin(1) * t1027 - t1434;
t984 = -t1323 * t1042 + t1324 * t1044;
t983 = -t1323 * t1041 + t1324 * t1043;
t982 = t1324 * t1042 + t1323 * t1044;
t981 = t1324 * t1041 + t1323 * t1043;
t980 = -t1336 - t1502;
t979 = -qJ(2) * t1106 - t1323 * t1039 + t1324 * t1063;
t978 = t1327 * t1120 + t1330 * t987;
t976 = -t1341 - 0.2e1 * t1424 - t1530;
t975 = -t1326 * t1006 - t1427 * t1459 - t1500;
t974 = -pkin(4) * t1409 + t1329 * t1005 - t1529;
t973 = -pkin(1) * t1225 + qJ(2) * t1108 + t1324 * t1039 + t1323 * t1063;
t972 = -pkin(6) * t1412 - qJ(2) * t1027 - t1323 * t1077;
t971 = -pkin(7) * t1083 - t986;
t970 = pkin(1) * t1252 - pkin(6) * t1414 + qJ(2) * t1028 + t1324 * t1077;
t968 = t1326 * t1021 - t1329 * t1023;
t966 = -pkin(6) * t1064 - t1327 * t1020 + t1330 * t1045;
t965 = -t1327 * t1018 + t1330 * t1040 - t1512;
t964 = pkin(6) * t1066 + t1330 * t1020 + t1327 * t1045 + t1531;
t963 = t1330 * t1018 + t1327 * t1040 + t1509;
t962 = -pkin(1) * t997 - t1355;
t961 = -t1356 - t1532;
t960 = -pkin(7) * t1081 - t1326 * t1002 + t1329 * t1016;
t959 = t1327 * t1026 + t1330 * t969;
t957 = -pkin(6) * t1042 + t1083 * t1432 + t1330 * t971;
t956 = -t1323 * t977 + t1324 * t978;
t955 = t1323 * t978 + t1324 * t977;
t954 = pkin(6) * t1044 + t1385 * t1083 + t1327 * t971;
t953 = -pkin(7) * t968 + (pkin(4) * t1326 - t1427) * t1026;
t952 = -t1343 - t1532;
t951 = -pkin(1) * t993 - t1345;
t950 = -pkin(3) * t968 - t1367;
t949 = -t1327 * t980 + t1330 * t975 - t1512;
t948 = -pkin(6) * t1055 - t1327 * t976 + t1330 * t974;
t947 = -pkin(1) * t982 - t1348;
t946 = t1327 * t975 + t1330 * t980 + t1509;
t945 = -pkin(6) * t977 + (-pkin(7) * t1330 + t1432) * t986;
t944 = pkin(6) * t1057 + t1327 * t974 + t1330 * t976 - t1531;
t943 = -pkin(6) * t1041 - t1327 * t1019 + t1330 * t960;
t942 = -pkin(2) * t1081 + pkin(6) * t1043 + t1330 * t1019 + t1327 * t960;
t941 = -pkin(1) * t981 - t1349;
t940 = pkin(6) * t978 + (-pkin(7) * t1327 + t1385) * t986;
t939 = -t1323 * t958 + t1324 * t959;
t938 = t1323 * t959 + t1324 * t958;
t937 = -qJ(2) * t997 - t1323 * t964 + t1324 * t966;
t936 = -t1323 * t963 + t1324 * t965 - t1527;
t935 = qJ(2) * t999 + t1323 * t966 + t1324 * t964 + t1533;
t934 = t1323 * t965 + t1324 * t963 + t1518;
t933 = -pkin(1) * t955 - t1373;
t932 = -qJ(2) * t982 - t1323 * t954 + t1324 * t957;
t931 = -pkin(1) * t1083 + qJ(2) * t984 + t1323 * t957 + t1324 * t954;
t930 = -t1323 * t946 + t1324 * t949 - t1527;
t929 = -qJ(2) * t993 - t1323 * t944 + t1324 * t948;
t928 = t1323 * t949 + t1324 * t946 + t1518;
t927 = qJ(2) * t995 + t1323 * t948 + t1324 * t944 - t1533;
t926 = -pkin(6) * t958 - t1327 * t950 + t1330 * t953;
t925 = -qJ(2) * t981 - t1323 * t942 + t1324 * t943;
t924 = -pkin(1) * t1081 + qJ(2) * t983 + t1323 * t943 + t1324 * t942;
t923 = -pkin(2) * t968 + pkin(6) * t959 + t1327 * t953 + t1330 * t950;
t922 = -pkin(1) * t938 - t1452;
t921 = -qJ(2) * t955 - t1323 * t940 + t1324 * t945;
t920 = -pkin(1) * t986 + qJ(2) * t956 + t1323 * t945 + t1324 * t940;
t919 = -qJ(2) * t938 - t1323 * t923 + t1324 * t926;
t918 = -pkin(1) * t968 + qJ(2) * t939 + t1323 * t926 + t1324 * t923;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1305, 0, -t1304, 0, t1369, -t1289, -t1359, -pkin(5) * t1359, t1275, t1331 * t1301 + t1328 * t1303, t1267, -t1275, t1351, 0, -pkin(5) * t1352 - t1328 * t1263 - t1323 * t1390, -pkin(5) * t1266 - t1328 * t1264 - t1324 * t1390, t1331 * t1205 - pkin(5) * (t1328 * t1300 + t1331 * t1302), -pkin(5) * (t1328 * t1206 + t1390) - (t1328 * pkin(1) - t1331 * qJ(2)) * t1205, t1331 * t1148 + t1383, t1331 * t1109 + t1328 * t1261, t1331 * t1143 + t1328 * t1293, t1331 * t1147 - t1383, t1331 * t1142 - t1328 * t1292, t1328 * qJDD(3) + t1331 * t1178, t1331 * t1022 - t1328 * t1038 - pkin(5) * (t1328 * t1101 - t1331 * t1256), t1331 * t1029 - t1328 * t1050 - pkin(5) * (t1328 * t1144 - t1331 * t1258), t1331 * t979 - t1328 * t1076 - pkin(5) * (t1328 * t1108 - t1331 * t1225), t1331 * t972 - t1328 * t988 - pkin(5) * (t1328 * t1028 + t1331 * t1252), t1467, t1538, t1534, t1490, -t1536, t1489, -t1328 * t961 + t1331 * t936 - t1517, t1331 * t937 - t1328 * t962 - pkin(5) * (t1328 * t999 + t1520), t1331 * t932 - t1328 * t947 - pkin(5) * (-t1331 * t1083 + t1328 * t984), t1331 * t921 - t1328 * t933 - pkin(5) * (t1328 * t956 - t1331 * t986), t1467, t1534, -t1538, t1489, t1536, t1490, -t1328 * t952 + t1331 * t930 - t1517, t1331 * t925 - t1328 * t941 - pkin(5) * (-t1331 * t1081 + t1328 * t983), t1331 * t929 - t1328 * t951 - pkin(5) * (t1328 * t995 - t1520), t1331 * t919 - t1328 * t922 - pkin(5) * (t1328 * t939 - t1331 * t968); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1304, 0, t1305, 0, t1289, t1369, t1374, pkin(5) * t1374, t1274, t1328 * t1301 - t1331 * t1303, t1266, -t1274, -t1352, 0, -pkin(5) * t1351 + t1331 * t1263 - t1323 * t1400, pkin(5) * t1267 + t1331 * t1264 - t1324 * t1400, t1328 * t1205 + pkin(5) * (t1331 * t1300 - t1328 * t1302), pkin(5) * (t1331 * t1206 - t1400) - (-t1331 * pkin(1) - t1328 * qJ(2)) * t1205, t1328 * t1148 - t1380, t1328 * t1109 - t1331 * t1261, t1328 * t1143 - t1331 * t1293, t1328 * t1147 + t1380, t1328 * t1142 + t1331 * t1292, -t1331 * qJDD(3) + t1328 * t1178, t1328 * t1022 + t1331 * t1038 + pkin(5) * (t1331 * t1101 + t1328 * t1256), t1328 * t1029 + t1331 * t1050 + pkin(5) * (t1331 * t1144 + t1328 * t1258), t1328 * t979 + t1331 * t1076 + pkin(5) * (t1331 * t1108 + t1328 * t1225), t1328 * t972 + t1331 * t988 + pkin(5) * (t1331 * t1028 - t1328 * t1252), t1470, t1539, t1535, t1493, -t1537, t1492, t1328 * t936 + t1331 * t961 + t1516, t1328 * t937 + t1331 * t962 + pkin(5) * (t1331 * t999 - t1524), t1328 * t932 + t1331 * t947 + pkin(5) * (t1328 * t1083 + t1331 * t984), t1328 * t921 + t1331 * t933 + pkin(5) * (t1328 * t986 + t1331 * t956), t1470, t1535, -t1539, t1492, t1537, t1493, t1328 * t930 + t1331 * t952 + t1516, t1328 * t925 + t1331 * t941 + pkin(5) * (t1328 * t1081 + t1331 * t983), t1328 * t929 + t1331 * t951 + pkin(5) * (t1331 * t995 + t1524), t1328 * t919 + t1331 * t922 + pkin(5) * (t1328 * t968 + t1331 * t939); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1306, t1307, 0, 0, t1312, t1308, 0, t1314, 0, 0, t1237, t1236, t1176, t1183, t1146, t1107, t1140, t1145, t1139, t1177, t1017, t1024, t973, t970, t1440, -t989, t1514, t1463, t1011, t1465, t934, t935, t931, t920, t1440, t1514, t989, t1465, -t1011, t1463, t928, t924, t927, t918; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1332, 0, 0, -g(3), -t1306, 0, t1377, t1301, t1297, -t1377, t1298, 0, -t1323 * t1288, -t1324 * t1288, t1205, qJ(2) * t1205, t1148, t1109, t1143, t1147, t1142, t1178, t1022, t1029, t979, t972, t1441, t992, t1515, t1464, -t1014, t1466, t936, t937, t932, t921, t1441, t1515, -t992, t1466, t1014, t1464, t930, t925, t929, t919; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1332, 0, qJDD(1), 0, g(3), 0, -t1307, 0, t1309, -t1303, -t1313, -t1309, -t1315, 0, t1263, t1264, 0, pkin(1) * t1205, -t1262, -t1261, -t1293, t1262, t1292, -qJDD(3), t1038, t1050, t1076, t988, -t1156, -t1082, -t1496, -t1153, -t1130, t1460, t961, t962, t947, t933, -t1156, -t1496, t1082, t1460, t1130, -t1153, t952, t941, t951, t922; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1306, t1307, 0, 0, t1312, t1308, 0, t1314, 0, 0, t1237, t1236, t1176, t1183, t1146, t1107, t1140, t1145, t1139, t1177, t1017, t1024, t973, t970, t1440, -t989, t1514, t1463, t1011, t1465, t934, t935, t931, t920, t1440, t1514, t989, t1465, -t1011, t1463, t928, t924, t927, t918; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1313, t1315, t1309, 0, t1316, 0, 0, -t1288, t1263, 0, t1220, t1197, t1213, t1218, t1212, t1244, t1158, t1172, t1063, -pkin(6) * t1088, t1363, -t1053, t1507, t1444, t1075, t1443, t965, t966, t957, t945, t1363, t1507, t1053, t1443, -t1075, t1444, t949, t943, t948, t926; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1313, -t1415, t1315, -t1309, 0, t1288, 0, t1264, 0, t1219, t1195, t1210, t1217, t1209, t1243, t1122, t1126, t1039, t1077, t1364, -t1051, t1508, t1445, t1071, t1446, t963, t964, t954, t940, t1364, t1508, t1051, t1446, -t1071, t1445, t946, t942, t944, t923; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1309, t1303, t1313, t1309, t1315, 0, -t1263, -t1264, 0, 0, t1262, t1261, t1293, -t1262, -t1292, qJDD(3), t1354, t1370, t1433, t1434, t1156, t1082, t1496, t1153, t1130, -t1460, t1356, t1355, t1348, t1373, t1156, t1496, -t1082, -t1460, -t1130, t1153, t1343, t1349, t1345, t1452; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1259, -t1256, t1449, t1285, t1278, -t1285, 0, -t1252, t1174, 0, t1157, -t1084, t1495, t1353, t1134, t1362, t1040, t1045, t971, -pkin(7) * t986, t1157, t1495, t1084, t1362, -t1134, t1353, t975, t960, t974, t953; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1418, t1258, t1279, t1257, t1254, -t1418, t1252, 0, t1175, 0, -t1227, -t1454, -t1457, t1227, t1164, -t1248, t1018, t1020, -pkin(3) * t1083, -pkin(3) * t986, -t1227, -t1457, t1454, -t1248, -t1164, t1227, t980, t1019, t976, t950; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1262, t1261, t1293, -t1262, -t1292, qJDD(3), -t1174, -t1175, 0, 0, t1156, t1082, t1496, t1153, t1130, -t1460, t1378, t1379, t1371, t1426, t1156, t1496, -t1082, -t1460, -t1130, t1153, t1347, t1372, t1350, t1344; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1203, -t1459, t1456, t1423, t1233, -t1423, 0, t1120, t1048, 0, t1203, t1456, t1459, -t1423, -t1233, t1423, -qJ(5) * t1459, t1016, t1005, -qJ(5) * t1026; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1240, t1458, -t1234, -t1202, t1455, -t1240, -t1120, 0, t1049, 0, t1240, -t1234, -t1458, -t1240, -t1455, -t1202, t1006, t1002, pkin(4) * t1458, -pkin(4) * t1026; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1227, t1454, t1457, -t1227, -t1164, t1248, -t1048, -t1049, 0, 0, t1227, t1457, -t1454, t1248, t1164, -t1227, t1336, t1366, t1276 + t1341, t1367; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1203, t1456, t1459, -t1423, -t1233, t1423, 0, t1023, -t1026, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1227, t1457, -t1454, t1248, t1164, -t1227, -t1023, 0, t1021, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1240, t1234, t1458, t1240, t1455, t1202, t1026, -t1021, 0, 0;];
m_new_reg = t1;