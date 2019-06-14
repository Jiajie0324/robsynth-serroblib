% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRRPRP10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,theta4]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 09:06
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRRPRP10_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP10_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP10_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRP10_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRP10_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRP10_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 09:01:37
% EndTime: 2019-05-07 09:03:57
% DurationCPUTime: 113.22s
% Computational Cost: add. (432936->983), mult. (948407->1516), div. (0->0), fcn. (763556->12), ass. (0->731)
t1302 = sin(qJ(1));
t1306 = cos(qJ(1));
t1296 = sin(pkin(6));
t1298 = cos(pkin(6));
t1301 = sin(qJ(2));
t1305 = cos(qJ(2));
t1300 = sin(qJ(3));
t1304 = cos(qJ(3));
t1462 = qJD(1) * t1298;
t1287 = qJD(2) + t1462;
t1426 = t1296 * t1301;
t1412 = qJD(1) * t1426;
t1256 = t1287 * t1300 + t1304 * t1412;
t1425 = t1296 * t1305;
t1411 = qJD(1) * t1425;
t1280 = -qJD(3) + t1411;
t1295 = sin(pkin(11));
t1297 = cos(pkin(11));
t1227 = t1256 * t1295 + t1280 * t1297;
t1228 = t1256 * t1297 - t1280 * t1295;
t1299 = sin(qJ(5));
t1303 = cos(qJ(5));
t1177 = t1303 * t1227 + t1228 * t1299;
t1254 = -t1304 * t1287 + t1300 * t1412;
t1416 = qJDD(1) * t1301;
t1460 = qJD(1) * t1305;
t1263 = (qJD(2) * t1460 + t1416) * t1296;
t1286 = qJDD(1) * t1298 + qJDD(2);
t1207 = -t1254 * qJD(3) + t1304 * t1263 + t1300 * t1286;
t1283 = qJD(2) * t1412;
t1415 = qJDD(1) * t1305;
t1384 = t1296 * t1415 - t1283;
t1340 = -qJDD(3) + t1384;
t1186 = t1297 * t1207 - t1295 * t1340;
t1398 = t1207 * t1295 + t1297 * t1340;
t1312 = -t1177 * qJD(5) + t1303 * t1186 - t1299 * t1398;
t1248 = qJD(5) + t1254;
t1448 = t1177 * t1248;
t1501 = t1312 - t1448;
t1179 = -t1227 * t1299 + t1228 * t1303;
t1176 = t1179 ^ 2;
t1485 = t1248 ^ 2;
t1090 = t1485 + t1176;
t1104 = t1179 * t1177;
t1396 = t1300 * t1263 - t1304 * t1286;
t1206 = qJD(3) * t1256 + t1396;
t1205 = qJDD(5) + t1206;
t1503 = t1104 + t1205;
t1455 = t1503 * t1303;
t1001 = t1090 * t1299 - t1455;
t1456 = t1503 * t1299;
t966 = t1090 * t1303 + t1456;
t914 = t1001 * t1297 + t1295 * t966;
t857 = t1300 * t1501 + t1304 * t914;
t912 = t1001 * t1295 - t1297 * t966;
t1373 = t1301 * t857 - t1305 * t912;
t855 = t1300 * t914 - t1304 * t1501;
t760 = -t1296 * t855 + t1298 * t1373;
t795 = t1301 * t912 + t1305 * t857;
t717 = t1302 * t760 - t1306 * t795;
t1655 = pkin(7) * t717;
t726 = t1302 * t795 + t1306 * t760;
t1654 = pkin(7) * t726;
t758 = t1296 * t1373 + t1298 * t855;
t1653 = pkin(8) * (t1296 * t758 + t1298 * t760);
t1652 = pkin(1) * t758;
t1651 = pkin(1) * t760;
t1399 = t1299 * t1186 + t1303 * t1398;
t1318 = (-qJD(5) + t1248) * t1179 - t1399;
t1487 = t1177 ^ 2;
t1139 = t1487 - t1485;
t1012 = t1139 * t1299 + t1455;
t1016 = t1139 * t1303 - t1456;
t933 = t1012 * t1295 - t1016 * t1297;
t867 = -t1300 * t1318 + t1304 * t933;
t929 = t1012 * t1297 + t1016 * t1295;
t1369 = t1301 * t867 + t1305 * t929;
t863 = t1300 * t933 + t1304 * t1318;
t768 = -t1296 * t863 + t1298 * t1369;
t800 = -t1301 * t929 + t1305 * t867;
t1650 = t1302 * t768 - t1306 * t800;
t1101 = t1176 - t1487;
t990 = (qJD(5) + t1248) * t1179 + t1399;
t917 = -t1299 * t990 + t1303 * t1501;
t1470 = t1299 * t1501;
t920 = t1303 * t990 + t1470;
t834 = t1295 * t917 + t1297 * t920;
t821 = -t1101 * t1300 + t1304 * t834;
t831 = t1295 * t920 - t1297 * t917;
t1378 = t1301 * t821 - t1305 * t831;
t819 = t1101 * t1304 + t1300 * t834;
t730 = -t1296 * t819 + t1298 * t1378;
t754 = t1301 * t831 + t1305 * t821;
t1649 = t1302 * t730 - t1306 * t754;
t1648 = t1302 * t800 + t1306 * t768;
t1647 = t1302 * t754 + t1306 * t730;
t1645 = pkin(8) * t795;
t1638 = t1296 * t1369 + t1298 * t863;
t1637 = t1296 * t1378 + t1298 * t819;
t1636 = pkin(9) * t855;
t1629 = pkin(2) * t855 - pkin(3) * t1501 + qJ(4) * t914;
t1628 = pkin(2) * t912 - pkin(9) * t857;
t1140 = -t1176 + t1485;
t1504 = -t1104 + t1205;
t1454 = t1504 * t1299;
t1543 = t1303 * t1140 + t1454;
t1061 = t1303 * t1504;
t1544 = -t1140 * t1299 + t1061;
t1559 = -t1295 * t1544 - t1297 * t1543;
t1499 = -t1448 - t1312;
t1558 = -t1295 * t1543 + t1297 * t1544;
t1587 = -t1300 * t1499 + t1304 * t1558;
t1603 = -t1301 * t1559 + t1305 * t1587;
t1590 = t1300 * t1558 + t1304 * t1499;
t1605 = t1301 * t1587 + t1305 * t1559;
t1610 = -t1296 * t1590 + t1298 * t1605;
t1627 = -t1302 * t1610 + t1306 * t1603;
t1626 = t1302 * t1603 + t1306 * t1610;
t1496 = -t1299 * t1499 + t1303 * t1318;
t1497 = t1299 * t1318 + t1303 * t1499;
t1509 = t1295 * t1496 + t1297 * t1497;
t1048 = -t1487 - t1176;
t1510 = -t1295 * t1497 + t1297 * t1496;
t1535 = t1048 * t1300 + t1304 * t1510;
t1560 = t1301 * t1509 + t1305 * t1535;
t1536 = -t1048 * t1304 + t1300 * t1510;
t1561 = t1301 * t1535 - t1305 * t1509;
t1591 = -t1296 * t1536 + t1298 * t1561;
t1602 = t1302 * t1560 + t1306 * t1591;
t1624 = pkin(7) * t1602;
t1604 = -t1302 * t1591 + t1306 * t1560;
t1623 = pkin(7) * t1604;
t1622 = qJ(4) * t912;
t1613 = pkin(3) * t912 - pkin(4) * t966;
t1611 = t1296 * t1605 + t1298 * t1590;
t1609 = pkin(1) * t1591;
t1592 = t1296 * t1561 + t1298 * t1536;
t1608 = pkin(1) * t1592;
t1601 = (-t1296 * t1592 - t1298 * t1591) * pkin(8);
t1599 = pkin(10) * t966;
t1598 = pkin(8) * t1560;
t1597 = pkin(10) * t1001;
t1335 = (-t1177 * t1299 - t1179 * t1303) * t1248;
t1441 = t1248 * t1299;
t1137 = t1179 * t1441;
t1440 = t1248 * t1303;
t1406 = t1177 * t1440;
t1387 = t1137 - t1406;
t1494 = -t1295 * t1387 - t1297 * t1335;
t1493 = -t1295 * t1335 + t1297 * t1387;
t1511 = t1205 * t1300 + t1304 * t1493;
t1539 = -t1301 * t1494 + t1305 * t1511;
t1515 = -t1304 * t1205 + t1300 * t1493;
t1541 = t1301 * t1511 + t1305 * t1494;
t1562 = -t1296 * t1515 + t1298 * t1541;
t1589 = -t1302 * t1562 + t1306 * t1539;
t1047 = -qJD(5) * t1179 - t1399;
t1339 = -t1047 * t1299 + t1406;
t1388 = t1303 * t1047 + t1177 * t1441;
t1491 = -t1295 * t1339 - t1297 * t1388;
t1408 = t1300 * t1104;
t1492 = -t1295 * t1388 + t1297 * t1339;
t1512 = t1304 * t1492 - t1408;
t1538 = -t1301 * t1491 + t1305 * t1512;
t1407 = t1304 * t1104;
t1514 = t1300 * t1492 + t1407;
t1540 = t1301 * t1512 + t1305 * t1491;
t1563 = -t1296 * t1514 + t1298 * t1540;
t1588 = -t1302 * t1563 + t1306 * t1538;
t1586 = t1302 * t1539 + t1306 * t1562;
t1585 = t1302 * t1538 + t1306 * t1563;
t1498 = -t1485 - t1487;
t1513 = t1303 * t1498 - t1454;
t1516 = t1299 * t1498 + t1061;
t1533 = t1295 * t1513 + t1297 * t1516;
t1584 = pkin(2) * t1533;
t1583 = pkin(9) * t1536;
t1582 = qJ(4) * t1533;
t1534 = -t1295 * t1516 + t1297 * t1513;
t1581 = qJ(4) * t1534;
t1576 = t1300 * t1534;
t1575 = t1301 * t1533;
t1572 = t1304 * t1534;
t1571 = t1305 * t1533;
t1568 = -pkin(2) * t1536 + pkin(3) * t1048 - qJ(4) * t1510;
t1567 = -pkin(3) * t1533 - pkin(4) * t1516;
t1566 = -pkin(2) * t1509 + pkin(9) * t1535;
t1565 = t1296 * t1540 + t1298 * t1514;
t1564 = t1296 * t1541 + t1298 * t1515;
t1555 = pkin(10) * t1513;
t1554 = pkin(10) * t1516;
t1553 = qJ(4) * t1509;
t784 = -pkin(3) * t1509 - pkin(4) * t1497;
t1542 = -pkin(4) * t1048 + pkin(10) * t1496;
t1532 = 2 * qJD(6);
t1528 = pkin(10) * t1497;
t1527 = qJ(6) * t1501;
t1188 = t1228 * t1227;
t1502 = -t1188 + t1206;
t1526 = t1295 * t1502;
t1525 = t1297 * t1502;
t987 = t1179 * t1440 + t1299 * t1312;
t988 = t1303 * t1312 - t1137;
t911 = -t1295 * t987 + t1297 * t988;
t1389 = t1300 * t911 - t1407;
t1390 = t1304 * t911 + t1408;
t908 = -t1295 * t988 - t1297 * t987;
t1490 = -t1296 * t1389 + (t1301 * t1390 + t1305 * t908) * t1298;
t1495 = -t1301 * t908 + t1305 * t1390;
t1508 = t1302 * t1495 + t1306 * t1490;
t1507 = -t1302 * t1490 + t1306 * t1495;
t1439 = t1254 * t1256;
t1315 = -t1340 - t1439;
t1506 = t1300 * t1315;
t1505 = t1304 * t1315;
t1200 = t1254 * t1227;
t1119 = -t1200 - t1186;
t1117 = -t1200 + t1186;
t1238 = t1254 * t1280;
t1172 = t1238 + t1207;
t1192 = (t1254 * t1304 - t1256 * t1300) * t1280;
t1500 = t1301 * t1192 + t1305 * t1340;
t1099 = pkin(5) * t1177 - qJ(6) * t1179;
t1282 = g(1) * t1306 + t1302 * g(2);
t1477 = pkin(8) * t1296;
t1488 = qJD(1) ^ 2;
t1259 = -pkin(1) * t1488 + qJDD(1) * t1477 - t1282;
t1480 = pkin(2) * t1305;
t1393 = -pkin(9) * t1301 - t1480;
t1463 = qJD(1) * t1296;
t1262 = t1393 * t1463;
t1281 = t1302 * g(1) - t1306 * g(2);
t1314 = qJDD(1) * pkin(1) + t1477 * t1488 + t1281;
t1313 = t1298 * t1314;
t1311 = -g(3) * t1426 + t1301 * t1313;
t1482 = t1287 ^ 2;
t1158 = t1286 * pkin(9) - t1482 * pkin(2) + (t1262 * t1463 + t1259) * t1305 + t1311;
t1481 = pkin(2) * t1301;
t1392 = -pkin(9) * t1305 + t1481;
t1476 = t1298 * g(3);
t1308 = t1283 * pkin(2) - t1263 * pkin(9) - t1476 + ((-pkin(1) - t1480) * qJDD(1) + (-pkin(8) * t1463 + t1287 * t1392) * qJD(1) - t1281) * t1296;
t1086 = t1304 * t1158 + t1300 * t1308;
t1214 = pkin(3) * t1254 - qJ(4) * t1256;
t1483 = t1280 ^ 2;
t1030 = -pkin(3) * t1483 - qJ(4) * t1340 - t1254 * t1214 + t1086;
t1397 = t1259 * t1301 - t1305 * t1313;
t1461 = qJD(1) * t1301;
t1157 = -t1286 * pkin(2) - t1482 * pkin(9) + (g(3) * t1305 + t1262 * t1461) * t1296 + t1397;
t1038 = -t1172 * qJ(4) + (-t1256 * t1280 + t1206) * pkin(3) + t1157;
t940 = 0.2e1 * qJD(4) * t1228 + t1030 * t1295 - t1297 * t1038;
t891 = pkin(4) * t1502 + pkin(10) * t1119 - t940;
t1194 = pkin(4) * t1254 - pkin(10) * t1228;
t1486 = t1227 ^ 2;
t941 = -0.2e1 * qJD(4) * t1227 + t1297 * t1030 + t1295 * t1038;
t901 = -pkin(4) * t1486 - pkin(10) * t1398 - t1254 * t1194 + t941;
t809 = t1299 * t891 + t1303 * t901;
t1383 = t1205 * qJ(6) - t1177 * t1099 + t1248 * t1532 + t809;
t1167 = (qJD(3) + t1280) * t1256 + t1396;
t1489 = t1298 * t1389 + t1390 * t1426 + t908 * t1425;
t1226 = t1228 ^ 2;
t1484 = t1254 ^ 2;
t1253 = t1256 ^ 2;
t1479 = pkin(3) * t1300;
t1478 = pkin(5) * t1303;
t808 = t1299 * t901 - t1303 * t891;
t1475 = qJ(6) * t1303;
t745 = t1299 * t809 - t1303 * t808;
t1474 = t1295 * t745;
t1473 = t1297 * t745;
t1085 = t1158 * t1300 - t1304 * t1308;
t1029 = t1340 * pkin(3) - t1483 * qJ(4) + t1214 * t1256 + qJDD(4) + t1085;
t952 = t1398 * pkin(4) - t1486 * pkin(10) + t1194 * t1228 + t1029;
t1472 = t1299 * t952;
t1466 = t1303 * t952;
t1458 = t1029 * t1295;
t1457 = t1029 * t1297;
t1122 = t1188 + t1206;
t1453 = t1122 * t1295;
t1452 = t1122 * t1297;
t1450 = t1157 * t1300;
t1449 = t1157 * t1304;
t1195 = t1340 - t1439;
t1447 = t1195 * t1300;
t1446 = t1195 * t1304;
t1444 = t1206 * t1300;
t1443 = t1228 * t1254;
t1442 = t1248 * t1179;
t1438 = t1254 * t1295;
t1437 = t1254 * t1297;
t1423 = t1301 * t1488;
t1292 = t1296 ^ 2;
t1427 = t1292 * t1305;
t1279 = t1423 * t1427;
t1260 = t1279 + t1286;
t1436 = t1260 * t1301;
t1435 = t1260 * t1305;
t1261 = -t1279 + t1286;
t1434 = t1261 * t1301;
t1433 = t1261 * t1305;
t1432 = t1280 * t1300;
t1431 = t1280 * t1304;
t1430 = t1286 * t1296;
t1429 = t1287 * t1296;
t1428 = t1292 * t1488;
t1240 = t1296 * t1314 + t1476;
t1421 = t1301 * t1240;
t1420 = t1305 * t1240;
t1418 = -t1048 - t1485;
t1293 = t1301 ^ 2;
t1294 = t1305 ^ 2;
t1417 = t1293 + t1294;
t1414 = -pkin(3) * t1304 - pkin(2);
t1413 = qJD(1) * t1429;
t1410 = t1293 * t1428;
t1409 = t1294 * t1428;
t1405 = t1300 * t1188;
t1404 = t1304 * t1188;
t1403 = t1301 * t1439;
t1402 = t1305 * t1439;
t1401 = -qJ(6) * t1299 - pkin(4);
t746 = t1299 * t808 + t1303 * t809;
t1400 = -t1287 + t1462;
t974 = t1085 * t1300 + t1304 * t1086;
t1243 = -t1281 * t1302 - t1306 * t1282;
t1394 = t1179 * t1099 + qJDD(6) + t808;
t1278 = qJDD(1) * t1306 - t1302 * t1488;
t1391 = -pkin(7) * t1278 - g(3) * t1302;
t1247 = -t1410 - t1482;
t1213 = -t1247 * t1301 - t1433;
t1386 = pkin(8) * t1213 - t1421;
t1267 = -t1409 - t1482;
t1224 = t1267 * t1305 - t1436;
t1385 = pkin(8) * t1224 + t1420;
t846 = t1295 * t941 - t1297 * t940;
t847 = t1295 * t940 + t1297 * t941;
t788 = -pkin(5) * t1485 + t1383;
t1336 = -pkin(5) * t1205 + t1394;
t790 = qJ(6) * t1485 - t1336;
t739 = t1299 * t788 + t1303 * t790;
t740 = -t1299 * t790 + t1303 * t788;
t690 = -t1295 * t739 + t1297 * t740;
t1310 = -t1047 * pkin(5) - t1527 + t952;
t842 = t1310 + (pkin(5) * t1248 - (2 * qJD(6))) * t1179;
t687 = t1300 * t842 + t1304 * t690;
t689 = t1295 * t740 + t1297 * t739;
t1382 = t1301 * t687 - t1305 * t689;
t706 = t1297 * t746 - t1474;
t700 = t1300 * t952 + t1304 * t706;
t705 = t1295 * t746 + t1473;
t1381 = t1301 * t700 - t1305 * t705;
t826 = t1029 * t1300 + t1304 * t847;
t1376 = t1301 * t826 - t1305 * t846;
t851 = t1300 * t990 + t1572;
t1374 = t1301 * t851 - t1571;
t991 = -t1047 + t1442;
t858 = t1300 * t991 + t1572;
t1372 = t1301 * t858 - t1571;
t1115 = -t1398 - t1443;
t1031 = -t1115 * t1295 - t1117 * t1297;
t1033 = t1115 * t1297 - t1117 * t1295;
t1187 = -t1226 + t1486;
t980 = t1033 * t1304 - t1187 * t1300;
t1363 = t1031 * t1305 + t1301 * t980;
t1120 = t1398 - t1443;
t1032 = t1119 * t1297 - t1120 * t1295;
t1034 = -t1119 * t1295 - t1120 * t1297;
t1132 = t1226 + t1486;
t972 = t1034 * t1304 - t1132 * t1300;
t1362 = -t1032 * t1305 + t1301 * t972;
t1150 = -t1484 - t1486;
t1053 = t1150 * t1295 + t1525;
t1054 = t1150 * t1297 - t1526;
t976 = t1054 * t1304 - t1115 * t1300;
t1361 = -t1053 * t1305 + t1301 * t976;
t1181 = -t1226 - t1484;
t1067 = t1181 * t1297 - t1453;
t1069 = -t1181 * t1295 - t1452;
t982 = t1069 * t1304 + t1117 * t1300;
t1360 = -t1067 * t1305 + t1301 * t982;
t1359 = -t1157 * t1305 + t1301 * t974;
t1199 = -t1226 + t1484;
t1082 = -t1199 * t1295 + t1525;
t1005 = t1082 * t1304 - t1119 * t1300;
t1080 = -t1199 * t1297 - t1526;
t1358 = t1005 * t1301 + t1080 * t1305;
t1198 = -t1484 + t1486;
t1083 = t1198 * t1297 - t1453;
t1006 = t1083 * t1304 - t1120 * t1300;
t1081 = -t1198 * t1295 - t1452;
t1357 = t1006 * t1301 + t1081 * t1305;
t1106 = t1227 * t1437 + t1295 * t1398;
t1057 = t1106 * t1304 - t1405;
t1105 = -t1227 * t1438 + t1297 * t1398;
t1356 = t1057 * t1301 + t1105 * t1305;
t1108 = t1186 * t1297 - t1228 * t1438;
t1058 = t1108 * t1304 + t1405;
t1107 = -t1186 * t1295 - t1228 * t1437;
t1355 = t1058 * t1301 + t1107 * t1305;
t973 = -t1085 * t1304 + t1086 * t1300;
t1129 = (-t1227 * t1297 + t1228 * t1295) * t1254;
t1092 = t1129 * t1304 + t1444;
t1128 = (t1227 * t1295 + t1228 * t1297) * t1254;
t1354 = t1092 * t1301 + t1128 * t1305;
t1168 = (-qJD(3) + t1280) * t1256 - t1396;
t1095 = t1168 * t1304 - t1172 * t1300;
t1216 = -t1253 + t1484;
t1353 = t1095 * t1301 + t1216 * t1305;
t1171 = t1238 - t1207;
t1096 = -t1167 * t1304 - t1171 * t1300;
t1193 = t1484 + t1253;
t1352 = t1096 * t1301 + t1193 * t1305;
t1210 = -t1484 - t1483;
t1131 = t1210 * t1304 - t1506;
t1351 = t1131 * t1301 + t1168 * t1305;
t1218 = -t1253 - t1483;
t1136 = -t1218 * t1300 + t1446;
t1350 = t1136 * t1301 - t1172 * t1305;
t1232 = -t1253 + t1483;
t1148 = -t1232 * t1300 + t1505;
t1349 = t1148 * t1301 + t1171 * t1305;
t1231 = t1484 - t1483;
t1149 = t1231 * t1304 + t1447;
t1348 = t1149 * t1301 + t1167 * t1305;
t1211 = g(3) * t1425 + t1397;
t1212 = t1305 * t1259 + t1311;
t1347 = -t1305 * t1211 + t1301 * t1212;
t1133 = t1211 * t1301 + t1212 * t1305;
t1271 = t1287 * t1411;
t1234 = t1271 + t1263;
t1270 = t1287 * t1412;
t1237 = -t1270 + t1384;
t1346 = t1234 * t1305 + t1237 * t1301;
t1235 = -t1271 + t1263;
t1236 = t1270 + t1384;
t1345 = -t1235 * t1305 + t1236 * t1301;
t1344 = t1247 * t1305 - t1434;
t1265 = -t1410 + t1482;
t1343 = t1265 * t1305 + t1436;
t1342 = t1267 * t1301 + t1435;
t1266 = t1409 - t1482;
t1341 = t1266 * t1301 + t1433;
t1242 = t1281 * t1306 - t1302 * t1282;
t1161 = -t1254 * t1431 + t1444;
t1338 = t1161 * t1301 + t1402;
t1163 = t1207 * t1304 + t1256 * t1432;
t1337 = t1163 * t1301 - t1402;
t692 = pkin(10) * t740 + (t1401 - t1478) * t842;
t707 = -pkin(10) * t739 + (pkin(5) * t1299 - t1475) * t842;
t661 = -qJ(4) * t689 - t1295 * t692 + t1297 * t707;
t671 = -pkin(3) * t689 - pkin(4) * t739 - pkin(5) * t790 - qJ(6) * t788;
t686 = t1300 * t690 - t1304 * t842;
t643 = -pkin(9) * t686 - t1300 * t671 + t1304 * t661;
t652 = -pkin(2) * t686 + pkin(3) * t842 - qJ(4) * t690 - t1295 * t707 - t1297 * t692;
t668 = t1301 * t689 + t1305 * t687;
t1334 = pkin(8) * t668 + t1301 * t643 + t1305 * t652;
t742 = -pkin(4) * t952 + pkin(10) * t746;
t676 = -pkin(10) * t1473 - qJ(4) * t705 - t1295 * t742;
t684 = -pkin(3) * t705 - pkin(4) * t745;
t699 = t1300 * t706 - t1304 * t952;
t654 = -pkin(9) * t699 - t1300 * t684 + t1304 * t676;
t662 = -pkin(2) * t699 + pkin(3) * t952 + pkin(10) * t1474 - qJ(4) * t706 - t1297 * t742;
t675 = t1301 * t705 + t1305 * t700;
t1333 = pkin(8) * t675 + t1301 * t654 + t1305 * t662;
t781 = pkin(5) * t1418 + t1383;
t782 = qJ(6) * t1418 + t1336;
t714 = t1299 * t782 + t1303 * t781 + t1542;
t719 = -t1299 * t781 + t1303 * t782 - t1528;
t678 = -t1295 * t714 + t1297 * t719 - t1553;
t762 = -pkin(5) * t1499 - qJ(6) * t1318 + t784;
t669 = -t1300 * t762 + t1304 * t678 - t1583;
t674 = -t1295 * t719 - t1297 * t714 + t1568;
t1332 = t1301 * t669 + t1305 * t674 + t1598;
t734 = t1542 + t746;
t738 = -t745 - t1528;
t685 = -t1295 * t734 + t1297 * t738 - t1553;
t677 = -t1300 * t784 + t1304 * t685 - t1583;
t680 = -t1295 * t738 - t1297 * t734 + t1568;
t1331 = t1301 * t677 + t1305 * t680 + t1598;
t1309 = t1179 * t1532 - t1310;
t810 = -pkin(5) * t1442 + t1309 + t1527;
t764 = -t1597 + t1299 * t810 + (pkin(4) + t1478) * t1501;
t779 = -pkin(5) * t1470 + t1303 * t810 - t1599;
t712 = -t1295 * t764 + t1297 * t779 + t1622;
t743 = -qJ(6) * t1503 + (-t1090 + t1485) * pkin(5) - t1383 + t1613;
t682 = -t1300 * t743 + t1304 * t712 + t1636;
t697 = -t1295 * t779 - t1297 * t764 + t1629;
t1330 = t1301 * t682 + t1305 * t697 - t1645;
t811 = t1309 + (-t991 - t1442) * pkin(5);
t770 = t1303 * t811 + t1401 * t991 + t1555;
t780 = -t1299 * t811 - t1475 * t991 - t1554;
t713 = -t1295 * t770 + t1297 * t780 - t1582;
t744 = (-t1498 - t1485) * qJ(6) + (-t1504 - t1205) * pkin(5) + t1394 + t1567;
t856 = -t1304 * t991 + t1576;
t683 = -pkin(9) * t856 - t1300 * t744 + t1304 * t713;
t701 = -pkin(2) * t856 + pkin(3) * t991 - t1295 * t780 - t1297 * t770 - t1581;
t796 = t1305 * t858 + t1575;
t1329 = pkin(8) * t796 + t1301 * t683 + t1305 * t701;
t843 = -pkin(4) * t990 - t1466 + t1555;
t876 = t1472 - t1554;
t753 = -t1295 * t843 + t1297 * t876 - t1582;
t757 = t1567 + t808;
t849 = -t1304 * t990 + t1576;
t702 = -pkin(9) * t849 - t1300 * t757 + t1304 * t753;
t733 = -pkin(2) * t849 + pkin(3) * t990 - t1295 * t876 - t1297 * t843 - t1581;
t787 = t1305 * t851 + t1575;
t1328 = pkin(8) * t787 + t1301 * t702 + t1305 * t733;
t844 = -pkin(4) * t1501 + t1472 + t1597;
t892 = t1466 + t1599;
t763 = -t1295 * t844 + t1297 * t892 - t1622;
t765 = -t1613 + t809;
t708 = -t1300 * t765 + t1304 * t763 - t1636;
t735 = -t1295 * t892 - t1297 * t844 - t1629;
t1327 = t1301 * t708 + t1305 * t735 + t1645;
t825 = -t1029 * t1304 + t1300 * t847;
t741 = -pkin(9) * t825 + (-qJ(4) * t1304 + t1479) * t846;
t756 = -pkin(2) * t825 + pkin(3) * t1029 - qJ(4) * t847;
t771 = t1301 * t846 + t1305 * t826;
t1326 = pkin(8) * t771 + t1301 * t741 + t1305 * t756;
t827 = -qJ(4) * t1032 - t846;
t971 = t1034 * t1300 + t1132 * t1304;
t783 = -pkin(9) * t971 + t1032 * t1479 + t1304 * t827;
t789 = -pkin(2) * t971 - pkin(3) * t1132 - qJ(4) * t1034 - t847;
t924 = t1032 * t1301 + t1305 * t972;
t1325 = pkin(8) * t924 + t1301 * t783 + t1305 * t789;
t893 = -pkin(3) * t1053 + t940;
t948 = -qJ(4) * t1053 + t1458;
t975 = t1054 * t1300 + t1115 * t1304;
t797 = -pkin(9) * t975 - t1300 * t893 + t1304 * t948;
t859 = -pkin(2) * t975 - pkin(3) * t1115 - qJ(4) * t1054 + t1457;
t937 = t1053 * t1301 + t1305 * t976;
t1324 = pkin(8) * t937 + t1301 * t797 + t1305 * t859;
t898 = -pkin(3) * t1067 + t941;
t951 = -qJ(4) * t1067 + t1457;
t981 = t1069 * t1300 - t1117 * t1304;
t802 = -pkin(9) * t981 - t1300 * t898 + t1304 * t951;
t869 = -pkin(2) * t981 + pkin(3) * t1117 - qJ(4) * t1069 - t1458;
t942 = t1067 * t1301 + t1305 * t982;
t1323 = pkin(8) * t942 + t1301 * t802 + t1305 * t869;
t1130 = t1210 * t1300 + t1505;
t1020 = -pkin(2) * t1130 + t1085;
t1068 = -pkin(9) * t1130 + t1450;
t1076 = t1131 * t1305 - t1168 * t1301;
t1322 = pkin(8) * t1076 + t1020 * t1305 + t1068 * t1301;
t1135 = t1218 * t1304 + t1447;
t1023 = -pkin(2) * t1135 + t1086;
t1077 = -pkin(9) * t1135 + t1449;
t1078 = t1136 * t1305 + t1172 * t1301;
t1321 = pkin(8) * t1078 + t1023 * t1305 + t1077 * t1301;
t1189 = t1235 * t1301 + t1236 * t1305;
t1320 = pkin(8) * t1189 + t1133;
t1050 = t1096 * t1305 - t1193 * t1301;
t1094 = -t1167 * t1300 + t1171 * t1304;
t943 = -pkin(9) * t1094 - t973;
t1317 = pkin(8) * t1050 - t1094 * t1480 + t1301 * t943;
t958 = t1157 * t1301 + t1305 * t974;
t1316 = pkin(8) * t958 + t1393 * t973;
t1291 = t1296 * t1292;
t1277 = t1302 * qJDD(1) + t1306 * t1488;
t1269 = t1417 * t1428;
t1268 = (t1293 - t1294) * t1428;
t1264 = -pkin(7) * t1277 + g(3) * t1306;
t1239 = t1417 * t1413;
t1233 = (t1416 + (qJD(2) + t1287) * t1460) * t1296;
t1230 = t1263 * t1305 - t1293 * t1413;
t1229 = -t1294 * t1413 - t1301 * t1384;
t1223 = t1266 * t1305 - t1434;
t1222 = -t1265 * t1301 + t1435;
t1209 = (t1263 * t1298 + (qJD(1) * t1291 + t1298 * t1429) * t1460) * t1301;
t1208 = (-t1291 * t1423 + (-t1283 + (-t1287 * t1461 + t1415) * t1296) * t1298) * t1305;
t1204 = t1304 * t1206;
t1191 = (t1254 * t1300 + t1256 * t1304) * t1280;
t1190 = -t1234 * t1301 + t1237 * t1305;
t1185 = t1296 * t1237 + t1298 * t1342;
t1184 = -t1296 * t1236 + t1298 * t1341;
t1183 = -t1296 * t1235 + t1298 * t1343;
t1182 = -t1298 * t1237 + t1296 * t1342;
t1165 = -t1296 * t1233 + t1298 * t1344;
t1164 = t1298 * t1233 + t1296 * t1344;
t1162 = t1207 * t1300 - t1256 * t1431;
t1160 = -t1254 * t1432 - t1204;
t1159 = t1305 * t1192 - t1301 * t1340;
t1156 = -t1296 * t1268 + t1298 * t1346;
t1155 = t1296 * t1269 + t1298 * t1345;
t1154 = -t1298 * t1269 + t1296 * t1345;
t1147 = t1231 * t1300 - t1446;
t1146 = t1232 * t1304 + t1506;
t1127 = -t1302 * t1185 + t1224 * t1306;
t1126 = t1185 * t1306 + t1302 * t1224;
t1114 = t1163 * t1305 + t1403;
t1113 = t1161 * t1305 - t1403;
t1112 = -t1302 * t1165 + t1213 * t1306;
t1111 = t1165 * t1306 + t1302 * t1213;
t1110 = t1296 * t1240 + t1298 * t1347;
t1109 = -t1298 * t1240 + t1296 * t1347;
t1100 = -t1296 * t1191 + t1298 * t1500;
t1098 = -t1302 * t1155 + t1189 * t1306;
t1097 = t1155 * t1306 + t1302 * t1189;
t1093 = t1168 * t1300 + t1172 * t1304;
t1091 = t1129 * t1300 - t1204;
t1088 = t1149 * t1305 - t1167 * t1301;
t1087 = t1148 * t1305 - t1171 * t1301;
t1079 = -t1421 + (-t1182 * t1296 - t1185 * t1298) * pkin(8);
t1075 = -t1420 + (-t1164 * t1296 - t1165 * t1298) * pkin(8);
t1074 = -pkin(1) * t1182 + t1296 * t1211 + t1298 * t1385;
t1060 = t1095 * t1305 - t1216 * t1301;
t1059 = -pkin(1) * t1164 + t1296 * t1212 + t1298 * t1386;
t1056 = t1108 * t1300 - t1404;
t1055 = t1106 * t1300 + t1404;
t1052 = -t1296 * t1162 + t1298 * t1337;
t1051 = -t1296 * t1160 + t1298 * t1338;
t1041 = pkin(8) * t1133 * t1298 - pkin(1) * t1109;
t1040 = -t1302 * t1110 + t1133 * t1306;
t1039 = t1110 * t1306 + t1302 * t1133;
t1035 = -pkin(1) * t1154 + t1298 * t1320;
t1028 = -pkin(2) * t1172 + pkin(9) * t1136 + t1450;
t1026 = -t1296 * t1147 + t1298 * t1348;
t1025 = -t1296 * t1146 + t1298 * t1349;
t1024 = (-t1109 * t1296 - t1110 * t1298) * pkin(8);
t1022 = pkin(2) * t1168 + pkin(9) * t1131 - t1449;
t1021 = (-t1154 * t1296 - t1155 * t1298) * pkin(8) - t1347;
t1019 = t1092 * t1305 - t1128 * t1301;
t1018 = -t1296 * t1135 + t1298 * t1350;
t1017 = t1298 * t1135 + t1296 * t1350;
t1008 = -t1296 * t1130 + t1298 * t1351;
t1007 = t1298 * t1130 + t1296 * t1351;
t1004 = t1083 * t1300 + t1120 * t1304;
t1003 = t1082 * t1300 + t1119 * t1304;
t979 = t1033 * t1300 + t1187 * t1304;
t978 = t1058 * t1305 - t1107 * t1301;
t977 = t1057 * t1305 - t1105 * t1301;
t970 = -t1296 * t1093 + t1298 * t1353;
t965 = -t1296 * t1094 + t1298 * t1352;
t964 = t1298 * t1094 + t1296 * t1352;
t959 = -pkin(2) * t1157 + pkin(9) * t974;
t953 = -t1296 * t1091 + t1298 * t1354;
t950 = -t1302 * t1018 + t1078 * t1306;
t949 = t1018 * t1306 + t1302 * t1078;
t947 = t1006 * t1305 - t1081 * t1301;
t946 = t1005 * t1305 - t1080 * t1301;
t945 = -t1302 * t1008 + t1076 * t1306;
t944 = t1008 * t1306 + t1302 * t1076;
t939 = -t1296 * t1056 + t1298 * t1355;
t938 = -t1296 * t1055 + t1298 * t1356;
t936 = pkin(2) * t1193 + pkin(9) * t1096 + t974;
t935 = -t1031 * t1301 + t1305 * t980;
t926 = t1050 * t1306 - t1302 * t965;
t925 = t1302 * t1050 + t1306 * t965;
t888 = -t1296 * t973 + t1298 * t1359;
t887 = t1296 * t1359 + t1298 * t973;
t886 = -t1296 * t1004 + t1298 * t1357;
t885 = -t1296 * t1003 + t1298 * t1358;
t873 = -t1296 * t981 + t1298 * t1360;
t872 = t1296 * t1360 + t1298 * t981;
t871 = -t1296 * t975 + t1298 * t1361;
t870 = t1296 * t1361 + t1298 * t975;
t860 = -t1296 * t979 + t1298 * t1363;
t854 = -t1296 * t971 + t1298 * t1362;
t853 = t1296 * t1362 + t1298 * t971;
t852 = -t1301 * t1023 + t1305 * t1077 + (-t1017 * t1296 - t1018 * t1298) * pkin(8);
t845 = -t1301 * t1020 + t1305 * t1068 + (-t1007 * t1296 - t1008 * t1298) * pkin(8);
t841 = -pkin(1) * t1017 - t1296 * t1028 + t1298 * t1321;
t840 = -t1302 * t888 + t1306 * t958;
t839 = t1302 * t958 + t1306 * t888;
t838 = -pkin(1) * t1007 - t1296 * t1022 + t1298 * t1322;
t824 = -t1302 * t873 + t1306 * t942;
t823 = t1302 * t942 + t1306 * t873;
t818 = t1094 * t1481 + t1305 * t943 + (-t1296 * t964 - t1298 * t965) * pkin(8);
t813 = -t1302 * t871 + t1306 * t937;
t812 = t1302 * t937 + t1306 * t871;
t794 = -t1302 * t854 + t1306 * t924;
t793 = t1302 * t924 + t1306 * t854;
t792 = -pkin(2) * t1067 + pkin(9) * t982 + t1300 * t951 + t1304 * t898;
t791 = -pkin(2) * t1053 + pkin(9) * t976 + t1300 * t948 + t1304 * t893;
t785 = -pkin(1) * t964 - t1296 * t936 + t1298 * t1317;
t778 = pkin(9) * t972 + t1032 * t1414 + t1300 * t827;
t773 = t1392 * t973 + (-t1296 * t887 - t1298 * t888) * pkin(8);
t772 = -pkin(1) * t887 - t1296 * t959 + t1298 * t1316;
t761 = -t1296 * t856 + t1298 * t1372;
t759 = t1296 * t1372 + t1298 * t856;
t750 = -t1296 * t849 + t1298 * t1374;
t748 = t1296 * t1374 + t1298 * t849;
t737 = -t1296 * t825 + t1298 * t1376;
t736 = t1296 * t1376 + t1298 * t825;
t732 = -t1301 * t869 + t1305 * t802 + (-t1296 * t872 - t1298 * t873) * pkin(8);
t729 = -t1302 * t761 + t1306 * t796;
t727 = t1302 * t796 + t1306 * t761;
t725 = -t1301 * t859 + t1305 * t797 + (-t1296 * t870 - t1298 * t871) * pkin(8);
t720 = pkin(9) * t826 + (-qJ(4) * t1300 + t1414) * t846;
t718 = -t1302 * t750 + t1306 * t787;
t716 = t1302 * t787 + t1306 * t750;
t711 = -pkin(1) * t872 - t1296 * t792 + t1298 * t1323;
t710 = -pkin(1) * t870 - t1296 * t791 + t1298 * t1324;
t709 = -t1301 * t789 + t1305 * t783 + (-t1296 * t853 - t1298 * t854) * pkin(8);
t704 = -t1302 * t737 + t1306 * t771;
t703 = t1302 * t771 + t1306 * t737;
t698 = t1300 * t763 + t1304 * t765 - t1628;
t691 = pkin(9) * t851 + t1300 * t753 + t1304 * t757 - t1584;
t688 = -pkin(1) * t853 - t1296 * t778 + t1298 * t1325;
t681 = pkin(9) * t858 + t1300 * t713 + t1304 * t744 - t1584;
t679 = t1300 * t712 + t1304 * t743 + t1628;
t673 = t1300 * t685 + t1304 * t784 + t1566;
t672 = -t1301 * t756 + t1305 * t741 + (-t1296 * t736 - t1298 * t737) * pkin(8);
t670 = -t1301 * t735 + t1305 * t708 - t1653;
t667 = t1300 * t678 + t1304 * t762 + t1566;
t666 = -t1301 * t733 + t1305 * t702 + (-t1296 * t748 - t1298 * t750) * pkin(8);
t665 = -pkin(1) * t736 - t1296 * t720 + t1298 * t1326;
t664 = -t1296 * t699 + t1298 * t1381;
t663 = t1296 * t1381 + t1298 * t699;
t660 = -t1296 * t698 + t1298 * t1327 - t1652;
t659 = -t1301 * t701 + t1305 * t683 + (-t1296 * t759 - t1298 * t761) * pkin(8);
t658 = -t1301 * t697 + t1305 * t682 + t1653;
t657 = -pkin(1) * t748 - t1296 * t691 + t1298 * t1328;
t656 = -t1296 * t686 + t1298 * t1382;
t655 = t1296 * t1382 + t1298 * t686;
t653 = -pkin(1) * t759 - t1296 * t681 + t1298 * t1329;
t651 = -t1301 * t680 + t1305 * t677 + t1601;
t650 = -t1302 * t664 + t1306 * t675;
t649 = t1302 * t675 + t1306 * t664;
t648 = -t1296 * t679 + t1298 * t1330 + t1652;
t647 = -pkin(2) * t705 + pkin(9) * t700 + t1300 * t676 + t1304 * t684;
t646 = -t1301 * t674 + t1305 * t669 + t1601;
t645 = -t1302 * t656 + t1306 * t668;
t644 = t1302 * t668 + t1306 * t656;
t642 = -t1296 * t673 + t1298 * t1331 - t1608;
t641 = -pkin(2) * t689 + pkin(9) * t687 + t1300 * t661 + t1304 * t671;
t640 = -t1296 * t667 + t1298 * t1332 - t1608;
t639 = -t1301 * t662 + t1305 * t654 + (-t1296 * t663 - t1298 * t664) * pkin(8);
t638 = -pkin(1) * t663 - t1296 * t647 + t1298 * t1333;
t637 = -t1301 * t652 + t1305 * t643 + (-t1296 * t655 - t1298 * t656) * pkin(8);
t636 = -pkin(1) * t655 - t1296 * t641 + t1298 * t1334;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1277, -t1278, 0, t1243, 0, 0, 0, 0, 0, 0, t1127, t1112, t1098, t1040, 0, 0, 0, 0, 0, 0, t945, t950, t926, t840, 0, 0, 0, 0, 0, 0, t813, t824, t794, t704, 0, 0, 0, 0, 0, 0, t718, -t717, t1604, t650, 0, 0, 0, 0, 0, 0, t729, t1604, t717, t645; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1278, -t1277, 0, t1242, 0, 0, 0, 0, 0, 0, t1126, t1111, t1097, t1039, 0, 0, 0, 0, 0, 0, t944, t949, t925, t839, 0, 0, 0, 0, 0, 0, t812, t823, t793, t703, 0, 0, 0, 0, 0, 0, t716, t726, t1602, t649, 0, 0, 0, 0, 0, 0, t727, t1602, -t726, t644; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1182, t1164, t1154, t1109, 0, 0, 0, 0, 0, 0, t1007, t1017, t964, t887, 0, 0, 0, 0, 0, 0, t870, t872, t853, t736, 0, 0, 0, 0, 0, 0, t748, t758, t1592, t663, 0, 0, 0, 0, 0, 0, t759, t1592, -t758, t655; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1278, 0, -t1277, 0, t1391, -t1264, -t1242, -pkin(7) * t1242, -t1302 * t1209 + t1230 * t1306, -t1302 * t1156 + t1190 * t1306, -t1302 * t1183 + t1222 * t1306, -t1302 * t1208 + t1229 * t1306, -t1302 * t1184 + t1223 * t1306, t1239 * t1306 + t1302 * t1430, -pkin(7) * t1126 - t1302 * t1074 + t1079 * t1306, -pkin(7) * t1111 - t1302 * t1059 + t1075 * t1306, -pkin(7) * t1097 + t1021 * t1306 - t1302 * t1035, -pkin(7) * t1039 + t1024 * t1306 - t1302 * t1041, -t1302 * t1052 + t1114 * t1306, t1060 * t1306 - t1302 * t970, -t1302 * t1025 + t1087 * t1306, -t1302 * t1051 + t1113 * t1306, -t1302 * t1026 + t1088 * t1306, -t1302 * t1100 + t1159 * t1306, -pkin(7) * t944 - t1302 * t838 + t1306 * t845, -pkin(7) * t949 - t1302 * t841 + t1306 * t852, -pkin(7) * t925 - t1302 * t785 + t1306 * t818, -pkin(7) * t839 - t1302 * t772 + t1306 * t773, -t1302 * t939 + t1306 * t978, -t1302 * t860 + t1306 * t935, -t1302 * t885 + t1306 * t946, -t1302 * t938 + t1306 * t977, -t1302 * t886 + t1306 * t947, t1019 * t1306 - t1302 * t953, -pkin(7) * t812 - t1302 * t710 + t1306 * t725, -pkin(7) * t823 - t1302 * t711 + t1306 * t732, -pkin(7) * t793 - t1302 * t688 + t1306 * t709, -pkin(7) * t703 - t1302 * t665 + t1306 * t672, t1507, t1649, t1627, t1588, t1650, t1589, -pkin(7) * t716 - t1302 * t657 + t1306 * t666, -t1302 * t660 + t1306 * t670 - t1654, -t1302 * t642 + t1306 * t651 - t1624, -pkin(7) * t649 - t1302 * t638 + t1306 * t639, t1507, t1627, -t1649, t1589, -t1650, t1588, -pkin(7) * t727 - t1302 * t653 + t1306 * t659, -t1302 * t640 + t1306 * t646 - t1624, -t1302 * t648 + t1306 * t658 + t1654, -pkin(7) * t644 - t1302 * t636 + t1306 * t637; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1277, 0, t1278, 0, t1264, t1391, t1243, pkin(7) * t1243, t1209 * t1306 + t1302 * t1230, t1156 * t1306 + t1302 * t1190, t1183 * t1306 + t1302 * t1222, t1208 * t1306 + t1302 * t1229, t1184 * t1306 + t1302 * t1223, t1302 * t1239 - t1306 * t1430, pkin(7) * t1127 + t1074 * t1306 + t1302 * t1079, pkin(7) * t1112 + t1059 * t1306 + t1302 * t1075, pkin(7) * t1098 + t1302 * t1021 + t1035 * t1306, pkin(7) * t1040 + t1302 * t1024 + t1041 * t1306, t1052 * t1306 + t1302 * t1114, t1302 * t1060 + t1306 * t970, t1025 * t1306 + t1302 * t1087, t1051 * t1306 + t1302 * t1113, t1026 * t1306 + t1302 * t1088, t1100 * t1306 + t1302 * t1159, pkin(7) * t945 + t1302 * t845 + t1306 * t838, pkin(7) * t950 + t1302 * t852 + t1306 * t841, pkin(7) * t926 + t1302 * t818 + t1306 * t785, pkin(7) * t840 + t1302 * t773 + t1306 * t772, t1302 * t978 + t1306 * t939, t1302 * t935 + t1306 * t860, t1302 * t946 + t1306 * t885, t1302 * t977 + t1306 * t938, t1302 * t947 + t1306 * t886, t1302 * t1019 + t1306 * t953, pkin(7) * t813 + t1302 * t725 + t1306 * t710, pkin(7) * t824 + t1302 * t732 + t1306 * t711, pkin(7) * t794 + t1302 * t709 + t1306 * t688, pkin(7) * t704 + t1302 * t672 + t1306 * t665, t1508, -t1647, t1626, t1585, -t1648, t1586, pkin(7) * t718 + t1302 * t666 + t1306 * t657, t1302 * t670 + t1306 * t660 - t1655, t1302 * t651 + t1306 * t642 + t1623, pkin(7) * t650 + t1302 * t639 + t1306 * t638, t1508, t1626, t1647, t1586, t1648, t1585, pkin(7) * t729 + t1302 * t659 + t1306 * t653, t1302 * t646 + t1306 * t640 + t1623, t1302 * t658 + t1306 * t648 + t1655, pkin(7) * t645 + t1302 * t637 + t1306 * t636; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1281, t1282, 0, 0, (-qJD(1) * t1400 * t1427 + t1263 * t1296) * t1301, t1298 * t1268 + t1296 * t1346, t1298 * t1235 + t1296 * t1343, (t1292 * t1400 * t1461 + t1296 * t1384) * t1305, t1298 * t1236 + t1296 * t1341, t1298 * t1286, pkin(1) * t1185 - t1298 * t1211 + t1296 * t1385, pkin(1) * t1165 - t1298 * t1212 + t1296 * t1386, pkin(1) * t1155 + t1296 * t1320, pkin(1) * t1110 + t1133 * t1477, t1298 * t1162 + t1296 * t1337, t1298 * t1093 + t1296 * t1353, t1298 * t1146 + t1296 * t1349, t1298 * t1160 + t1296 * t1338, t1298 * t1147 + t1296 * t1348, t1298 * t1191 + t1296 * t1500, pkin(1) * t1008 + t1298 * t1022 + t1296 * t1322, pkin(1) * t1018 + t1298 * t1028 + t1296 * t1321, pkin(1) * t965 + t1296 * t1317 + t1298 * t936, pkin(1) * t888 + t1296 * t1316 + t1298 * t959, t1298 * t1056 + t1296 * t1355, t1296 * t1363 + t1298 * t979, t1298 * t1003 + t1296 * t1358, t1298 * t1055 + t1296 * t1356, t1298 * t1004 + t1296 * t1357, t1298 * t1091 + t1296 * t1354, pkin(1) * t871 + t1296 * t1324 + t1298 * t791, pkin(1) * t873 + t1296 * t1323 + t1298 * t792, pkin(1) * t854 + t1296 * t1325 + t1298 * t778, pkin(1) * t737 + t1296 * t1326 + t1298 * t720, t1489, -t1637, t1611, t1565, -t1638, t1564, pkin(1) * t750 + t1296 * t1328 + t1298 * t691, t1296 * t1327 + t1298 * t698 + t1651, t1296 * t1331 + t1298 * t673 + t1609, pkin(1) * t664 + t1296 * t1333 + t1298 * t647, t1489, t1611, t1637, t1564, t1638, t1565, pkin(1) * t761 + t1296 * t1329 + t1298 * t681, t1296 * t1332 + t1298 * t667 + t1609, t1296 * t1330 + t1298 * t679 - t1651, pkin(1) * t656 + t1296 * t1334 + t1298 * t641;];
tauB_reg  = t1;
