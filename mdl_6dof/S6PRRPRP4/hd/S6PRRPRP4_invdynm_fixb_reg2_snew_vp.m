% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6PRRPRP4
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 04:05
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6PRRPRP4_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP4_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP4_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRPRP4_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRP4_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRRPRP4_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 04:05:08
% EndTime: 2019-05-05 04:05:39
% DurationCPUTime: 32.72s
% Computational Cost: add. (89244->840), mult. (180368->1028), div. (0->0), fcn. (115254->10), ass. (0->583)
t1460 = sin(qJ(3));
t1450 = t1460 ^ 2;
t1465 = qJD(2) ^ 2;
t1443 = t1450 * t1465;
t1665 = qJD(3) ^ 2;
t1429 = -t1443 - t1665;
t1463 = cos(qJ(3));
t1596 = t1463 * t1465;
t1434 = t1460 * t1596;
t1425 = qJDD(3) - t1434;
t1612 = t1425 * t1460;
t1361 = -t1429 * t1463 + t1612;
t1454 = sin(pkin(6));
t1456 = cos(pkin(6));
t1597 = t1463 * t1425;
t1369 = t1429 * t1460 + t1597;
t1632 = qJD(2) * t1463;
t1572 = qJD(3) * t1632;
t1579 = t1460 * qJDD(2);
t1414 = 0.2e1 * t1572 + t1579;
t1461 = sin(qJ(2));
t1464 = cos(qJ(2));
t1515 = t1369 * t1461 + t1414 * t1464;
t1244 = t1456 * t1361 + t1454 * t1515;
t1248 = -t1454 * t1361 + t1456 * t1515;
t1730 = pkin(7) * (t1244 * t1454 + t1248 * t1456);
t1309 = t1369 * t1464 - t1414 * t1461;
t1453 = sin(pkin(10));
t1455 = cos(pkin(10));
t1729 = qJ(1) * (t1248 * t1455 + t1309 * t1453);
t1728 = qJ(1) * (t1248 * t1453 - t1309 * t1455);
t1727 = pkin(1) * t1244;
t1726 = pkin(1) * t1248;
t1664 = t1463 ^ 2;
t1446 = t1664 * t1465;
t1431 = -t1446 - t1665;
t1424 = qJDD(3) + t1434;
t1598 = t1463 * t1424;
t1358 = t1431 * t1460 + t1598;
t1613 = t1424 * t1460;
t1367 = -t1431 * t1463 + t1613;
t1633 = qJD(2) * t1460;
t1573 = qJD(3) * t1633;
t1578 = t1463 * qJDD(2);
t1416 = -0.2e1 * t1573 + t1578;
t1516 = t1367 * t1461 - t1416 * t1464;
t1243 = -t1456 * t1358 + t1454 * t1516;
t1247 = t1454 * t1358 + t1456 * t1516;
t1725 = pkin(7) * (t1243 * t1454 + t1247 * t1456);
t1308 = t1367 * t1464 + t1416 * t1461;
t1724 = qJ(1) * (t1247 * t1455 + t1308 * t1453);
t1723 = qJ(1) * (t1247 * t1453 - t1308 * t1455);
t1428 = -t1443 + t1665;
t1360 = t1428 * t1463 + t1613;
t1368 = -t1428 * t1460 + t1598;
t1498 = t1368 * t1461 - t1464 * t1579;
t1269 = -t1454 * t1360 + t1456 * t1498;
t1327 = t1368 * t1464 + t1461 * t1579;
t1720 = t1269 * t1453 - t1327 * t1455;
t1719 = t1269 * t1455 + t1327 * t1453;
t1717 = pkin(1) * t1243;
t1716 = pkin(1) * t1247;
t1430 = t1446 - t1665;
t1356 = t1430 * t1460 + t1597;
t1365 = -t1430 * t1463 + t1612;
t1499 = t1365 * t1461 + t1464 * t1578;
t1268 = t1454 * t1356 + t1456 * t1499;
t1326 = t1365 * t1464 - t1461 * t1578;
t1713 = t1268 * t1453 - t1326 * t1455;
t1712 = t1268 * t1455 + t1326 * t1453;
t1710 = pkin(7) * t1309;
t1265 = t1456 * t1360 + t1454 * t1498;
t1459 = sin(qJ(5));
t1462 = cos(qJ(5));
t1408 = qJD(3) * t1459 + t1462 * t1632;
t1410 = t1462 * qJD(3) - t1459 * t1632;
t1352 = t1410 * t1408;
t1415 = t1572 + t1579;
t1400 = qJDD(5) + t1415;
t1682 = t1352 - t1400;
t1705 = pkin(5) * t1682;
t1704 = pkin(7) * t1308;
t1264 = -t1456 * t1356 + t1454 * t1499;
t1699 = pkin(2) * t1358;
t1698 = pkin(8) * t1358;
t1697 = pkin(8) * t1369;
t1398 = t1408 ^ 2;
t1435 = qJD(5) + t1633;
t1432 = t1435 ^ 2;
t1336 = -t1432 - t1398;
t1620 = t1682 * t1462;
t1240 = t1336 * t1459 - t1620;
t1237 = pkin(4) * t1240;
t1501 = t1573 - t1578;
t1332 = -t1408 * qJD(5) + t1462 * qJDD(3) + t1459 * t1501;
t1561 = g(1) * t1453 - t1455 * g(2);
t1645 = g(3) - qJDD(1);
t1379 = t1454 * t1561 + t1456 * t1645;
t1372 = t1463 * t1379;
t1552 = -qJDD(3) * pkin(3) - qJ(4) * t1665 + qJDD(4) + t1372;
t1423 = g(1) * t1455 + g(2) * t1453;
t1680 = -t1454 * t1645 + t1456 * t1561;
t1321 = -t1464 * t1423 + t1461 * t1680;
t1306 = -t1465 * pkin(2) + qJDD(2) * pkin(8) + t1321;
t1636 = qJ(4) * t1460;
t1653 = pkin(3) * t1463;
t1550 = -t1636 - t1653;
t1559 = t1465 * t1550 + t1306;
t1190 = -qJDD(3) * pkin(9) + (t1415 - t1572) * pkin(4) + (-pkin(9) * t1596 + t1559) * t1460 + t1552;
t1320 = -t1461 * t1423 - t1464 * t1680;
t1305 = -qJDD(2) * pkin(2) - t1465 * pkin(8) + t1320;
t1681 = t1415 + t1572;
t1470 = t1501 * pkin(3) - qJ(4) * t1681 + t1305;
t1427 = pkin(4) * t1633 - qJD(3) * pkin(9);
t1690 = 2 * qJD(4);
t1594 = t1690 + t1427;
t1662 = pkin(3) + pkin(9);
t1192 = (-pkin(4) * t1596 - pkin(9) * qJDD(2)) * t1463 + (qJD(3) * t1662 - t1594) * t1633 + t1470;
t1131 = -t1462 * t1190 + t1459 * t1192;
t1607 = t1435 * t1408;
t1471 = qJ(6) * t1607 + 0.2e1 * qJD(6) * t1410 + t1131 + t1705;
t1100 = qJ(6) * t1332 + t1471;
t1468 = -t1100 - t1705;
t1692 = -t1237 - t1468;
t1600 = t1460 * t1379;
t1472 = -pkin(3) * t1665 + t1463 * t1559 - t1600;
t1467 = qJD(3) * t1690 + t1472;
t1691 = t1467 + (qJDD(3) + t1425) * qJ(4) - pkin(3) * t1429;
t1689 = pkin(2) * t1361;
t1688 = pkin(8) * t1361;
t1687 = pkin(8) * t1367;
t1601 = t1459 * t1682;
t1679 = t1453 * t1645;
t1678 = t1455 * t1645;
t1132 = t1459 * t1190 + t1462 * t1192;
t1064 = -t1462 * t1131 + t1132 * t1459;
t1381 = t1410 * t1435;
t1556 = -t1459 * qJDD(3) + t1462 * t1501;
t1496 = qJD(5) * t1410 - t1556;
t1297 = t1381 + t1496;
t1677 = -pkin(3) * t1240 + qJ(4) * t1297;
t1399 = t1410 ^ 2;
t1346 = -t1399 - t1432;
t1318 = t1352 + t1400;
t1602 = t1459 * t1318;
t1258 = t1346 * t1462 - t1602;
t1300 = t1332 - t1607;
t1676 = -pkin(3) * t1258 + qJ(4) * t1300;
t1299 = (-qJD(5) + t1435) * t1410 + t1556;
t1301 = -t1332 - t1607;
t1199 = t1299 * t1459 + t1301 * t1462;
t1316 = -t1398 - t1399;
t1675 = -pkin(3) * t1199 + qJ(4) * t1316;
t1221 = t1460 * t1559 + t1552;
t1673 = -pkin(3) * t1424 - qJ(4) * t1431 + t1221;
t1628 = qJDD(3) * qJ(4);
t1672 = -t1501 * pkin(4) - pkin(9) * t1446 + t1628;
t1630 = qJD(6) * t1408;
t1387 = -0.2e1 * t1630;
t1373 = pkin(5) * t1435 - qJ(6) * t1410;
t1539 = t1398 * pkin(5) + qJ(6) * t1496 + t1435 * t1373 - t1132;
t1106 = t1387 - t1539;
t1627 = t1100 * t1462;
t1037 = t1106 * t1459 - t1627;
t1189 = qJD(3) * t1594 + t1472 + t1672;
t1666 = pkin(5) * t1496 - t1398 * qJ(6) + t1410 * t1373 + qJDD(6);
t1145 = t1189 + t1666;
t1053 = -pkin(5) * t1145 + qJ(6) * t1106;
t1507 = qJ(6) * t1627 - t1459 * t1053;
t1670 = qJ(4) * t1145 - t1037 * t1662 + t1507;
t1669 = qJ(4) * t1189 - t1064 * t1662;
t1668 = -t1455 * t1423 - t1453 * t1561;
t1667 = -t1453 * t1423 + t1455 * t1561;
t1663 = -2 * qJD(4);
t1159 = -t1199 * t1463 + t1316 * t1460;
t1661 = pkin(2) * t1159;
t1177 = -t1240 * t1463 + t1297 * t1460;
t1660 = pkin(2) * t1177;
t1180 = -t1258 * t1463 + t1300 * t1460;
t1659 = pkin(2) * t1180;
t1201 = t1299 * t1462 - t1459 * t1301;
t1658 = pkin(3) * t1201;
t1241 = t1336 * t1462 + t1601;
t1657 = pkin(3) * t1241;
t1621 = t1318 * t1462;
t1259 = -t1459 * t1346 - t1621;
t1656 = pkin(3) * t1259;
t1652 = pkin(4) * t1064;
t1651 = pkin(4) * t1189;
t1650 = pkin(7) * t1454;
t1649 = pkin(7) * t1456;
t1648 = pkin(8) * t1159;
t1647 = pkin(8) * t1177;
t1646 = pkin(8) * t1180;
t1160 = t1199 * t1460 + t1316 * t1463;
t1528 = t1160 * t1461 - t1201 * t1464;
t1075 = -t1454 * t1159 + t1456 * t1528;
t1123 = t1160 * t1464 + t1201 * t1461;
t1644 = qJ(1) * (t1075 * t1455 + t1123 * t1453);
t1178 = t1240 * t1460 + t1297 * t1463;
t1525 = t1178 * t1461 - t1241 * t1464;
t1097 = -t1454 * t1177 + t1456 * t1525;
t1141 = t1178 * t1464 + t1241 * t1461;
t1643 = qJ(1) * (t1097 * t1455 + t1141 * t1453);
t1181 = t1258 * t1460 + t1300 * t1463;
t1524 = t1181 * t1461 - t1259 * t1464;
t1105 = -t1454 * t1180 + t1456 * t1524;
t1146 = t1181 * t1464 + t1259 * t1461;
t1642 = qJ(1) * (t1105 * t1455 + t1146 * t1453);
t1576 = t1450 + t1664;
t1418 = t1576 * qJDD(2);
t1421 = t1443 + t1446;
t1511 = t1418 * t1461 + t1421 * t1464;
t1338 = t1511 * t1456;
t1347 = t1418 * t1464 - t1421 * t1461;
t1641 = qJ(1) * (t1338 * t1455 + t1347 * t1453);
t1639 = qJ(4) * t1241;
t1638 = qJ(4) * t1259;
t1634 = qJD(2) * qJD(3);
t1260 = t1460 * t1306 + t1372;
t1261 = t1463 * t1306 - t1600;
t1166 = t1260 * t1463 - t1261 * t1460;
t1625 = t1166 * t1461;
t1624 = t1189 * t1459;
t1623 = t1305 * t1460;
t1622 = t1305 * t1463;
t1618 = t1414 * t1460;
t1354 = t1416 * t1463;
t1606 = t1435 * t1459;
t1605 = t1435 * t1462;
t1603 = t1459 * t1100;
t1599 = t1461 * t1379;
t1182 = t1462 * t1189;
t1595 = t1464 * t1379;
t1593 = pkin(1) * t1075 + t1123 * t1650;
t1592 = pkin(1) * t1097 + t1141 * t1650;
t1591 = pkin(1) * t1105 + t1146 * t1650;
t1590 = -pkin(2) * t1201 + pkin(8) * t1160;
t1589 = -pkin(2) * t1241 + pkin(8) * t1178;
t1588 = -pkin(2) * t1259 + pkin(8) * t1181;
t1251 = pkin(9) * t1258;
t1587 = t1182 - t1251;
t1586 = -pkin(4) * t1316 + pkin(9) * t1201;
t1585 = pkin(4) * t1297 - pkin(9) * t1241;
t1584 = pkin(4) * t1300 - pkin(9) * t1259;
t1583 = pkin(1) * t1338 + t1347 * t1650;
t1582 = -t1399 + t1432;
t1581 = pkin(2) * t1421 + pkin(8) * t1418;
t1580 = t1454 * qJDD(2);
t1575 = t1460 * t1352;
t1574 = t1463 * t1352;
t1253 = pkin(4) * t1258;
t1571 = -t1253 + t1132;
t1074 = t1456 * t1159 + t1454 * t1528;
t1566 = -pkin(1) * t1074 + t1123 * t1649;
t1096 = t1456 * t1177 + t1454 * t1525;
t1565 = -pkin(1) * t1096 + t1141 * t1649;
t1104 = t1456 * t1180 + t1454 * t1524;
t1564 = -pkin(1) * t1104 + t1146 * t1649;
t1337 = t1511 * t1454;
t1563 = -pkin(1) * t1337 + t1347 * t1649;
t1099 = pkin(5) * t1100;
t1562 = -pkin(4) * t1037 + t1099;
t1196 = pkin(4) * t1199;
t1137 = -qJ(4) * t1201 + t1196;
t1235 = pkin(9) * t1240;
t1558 = -t1235 + t1624;
t1167 = t1260 * t1460 + t1463 * t1261;
t1555 = t1461 * t1434;
t1554 = t1464 * t1434;
t1553 = t1587 + t1676;
t1217 = t1467 + t1628;
t1551 = -pkin(3) * t1221 + qJ(4) * t1217;
t1549 = pkin(3) * t1460 - qJ(4) * t1463;
t1076 = -pkin(5) * t1316 + qJ(6) * t1299 + t1106;
t1084 = (-t1301 + t1332) * qJ(6) + t1471;
t1194 = pkin(9) * t1199;
t1548 = -t1076 * t1459 + t1462 * t1084 - t1194;
t1547 = -t1194 - t1064;
t1135 = -qJ(6) * t1346 + t1145;
t1220 = -pkin(5) * t1300 - qJ(6) * t1318;
t1546 = t1462 * t1135 - t1220 * t1459 - t1251;
t1545 = t1131 - t1237;
t1544 = -t1585 - t1182;
t1543 = -t1584 + t1624;
t1419 = qJDD(2) * t1464 - t1461 * t1465;
t1541 = -pkin(7) * t1419 - t1599;
t1510 = qJDD(2) * t1461 + t1464 * t1465;
t1540 = -pkin(7) * t1510 + t1595;
t1485 = t1076 * t1462 + t1084 * t1459 + t1586;
t1022 = -t1485 - t1658;
t1294 = pkin(5) * t1301;
t1120 = t1137 + t1294;
t1012 = -t1022 * t1460 + t1120 * t1463 - t1648;
t1495 = t1548 + t1675;
t1014 = -t1495 - t1661;
t1538 = t1012 * t1461 + t1014 * t1464;
t1054 = -t1639 - t1692;
t1118 = -pkin(5) * t1297 + qJ(6) * t1336 - qJD(3) * t1427 - t1467 - t1666 - t1672;
t1477 = qJ(6) * t1601 + t1118 * t1462 - t1585;
t1055 = -t1477 - t1657;
t1017 = t1054 * t1463 - t1055 * t1460 - t1647;
t1490 = qJ(6) * t1620 - t1118 * t1459 - t1235;
t1473 = t1490 + t1677;
t1039 = -t1473 - t1660;
t1537 = t1017 * t1461 + t1039 * t1464;
t1483 = t1135 * t1459 + t1220 * t1462 - t1584;
t1058 = -t1483 - t1656;
t1506 = pkin(5) * t1346 + t1539;
t1489 = 0.2e1 * t1630 + t1506;
t1063 = t1253 + t1489 - t1638;
t1018 = -t1058 * t1460 + t1063 * t1463 - t1646;
t1493 = t1546 + t1676;
t1042 = -t1493 - t1659;
t1536 = t1018 * t1461 + t1042 * t1464;
t1065 = t1459 * t1131 + t1132 * t1462;
t1484 = t1065 + t1586;
t1034 = -t1484 - t1658;
t1019 = -t1034 * t1460 + t1137 * t1463 - t1648;
t1494 = t1547 + t1675;
t1029 = -t1494 - t1661;
t1535 = t1019 * t1461 + t1029 * t1464;
t1031 = t1037 * t1460 + t1145 * t1463;
t1038 = t1106 * t1462 + t1603;
t1534 = t1031 * t1461 - t1038 * t1464;
t1085 = -t1545 - t1639;
t1107 = -t1544 - t1657;
t1032 = t1085 * t1463 - t1107 * t1460 - t1647;
t1508 = t1558 + t1677;
t1068 = -t1508 - t1660;
t1533 = t1032 * t1461 + t1068 * t1464;
t1086 = -t1571 - t1638;
t1114 = -t1543 - t1656;
t1033 = t1086 * t1463 - t1114 * t1460 - t1646;
t1070 = -t1553 - t1659;
t1532 = t1033 * t1461 + t1070 * t1464;
t1044 = t1064 * t1460 + t1189 * t1463;
t1531 = t1044 * t1461 - t1065 * t1464;
t1209 = pkin(3) * t1421 + t1217;
t1210 = qJ(4) * t1421 + t1221;
t1142 = -t1209 * t1460 + t1210 * t1463;
t1411 = t1549 * qJDD(2);
t1530 = t1142 * t1461 + t1411 * t1464;
t1153 = t1217 * t1463 + t1221 * t1460;
t1226 = (pkin(3) * qJD(3) + t1663) * t1633 + t1470;
t1529 = t1153 * t1461 - t1226 * t1464;
t1527 = t1167 * t1461 - t1305 * t1464;
t1200 = -t1459 * t1297 + t1300 * t1462;
t1350 = t1399 - t1398;
t1169 = t1200 * t1460 + t1350 * t1463;
t1202 = -t1297 * t1462 - t1300 * t1459;
t1526 = t1169 * t1461 - t1202 * t1464;
t1276 = t1462 * t1582 - t1601;
t1187 = t1276 * t1460 - t1301 * t1463;
t1278 = -t1459 * t1582 - t1620;
t1523 = t1187 * t1461 - t1278 * t1464;
t1377 = t1398 - t1432;
t1277 = t1377 * t1459 + t1621;
t1298 = -t1381 + t1496;
t1188 = t1277 * t1460 - t1298 * t1463;
t1279 = t1377 * t1462 - t1602;
t1522 = t1188 * t1461 - t1279 * t1464;
t1284 = -t1408 * t1606 + t1462 * t1496;
t1224 = -t1284 * t1460 - t1574;
t1285 = -t1408 * t1605 - t1459 * t1496;
t1521 = t1224 * t1461 + t1285 * t1464;
t1286 = t1332 * t1459 + t1410 * t1605;
t1225 = t1286 * t1460 + t1574;
t1287 = t1332 * t1462 - t1410 * t1606;
t1520 = t1225 * t1461 - t1287 * t1464;
t1303 = (-t1408 * t1459 - t1410 * t1462) * t1435;
t1281 = t1303 * t1460 + t1400 * t1463;
t1304 = (-t1408 * t1462 + t1410 * t1459) * t1435;
t1519 = t1281 * t1461 - t1304 * t1464;
t1233 = t1320 * t1464 - t1321 * t1461;
t1234 = t1320 * t1461 + t1321 * t1464;
t1344 = t1354 - t1618;
t1422 = t1443 - t1446;
t1518 = t1344 * t1461 - t1422 * t1464;
t1384 = t1510 * t1456;
t1513 = t1384 * t1455 + t1419 * t1453;
t1512 = t1384 * t1453 - t1419 * t1455;
t1403 = t1576 * t1634;
t1509 = -qJDD(3) * t1464 + t1403 * t1461;
t1505 = (-t1074 * t1454 - t1075 * t1456) * pkin(7);
t1504 = (-t1096 * t1454 - t1097 * t1456) * pkin(7);
t1503 = (-t1104 * t1454 - t1105 * t1456) * pkin(7);
t1502 = (-t1337 * t1454 - t1338 * t1456) * pkin(7);
t1011 = t1031 * t1464 + t1038 * t1461;
t1476 = pkin(4) * t1145 - qJ(6) * t1603 - t1462 * t1053;
t1000 = -t1038 * t1662 + t1476;
t1007 = -qJ(4) * t1038 - t1562;
t1030 = -t1037 * t1463 + t1145 * t1460;
t980 = -pkin(8) * t1030 - t1000 * t1460 + t1007 * t1463;
t988 = -pkin(2) * t1030 - t1670;
t1491 = pkin(7) * t1011 + t1461 * t980 + t1464 * t988;
t1374 = t1460 * t1501 - t1634 * t1664;
t1488 = t1374 * t1461 - t1554;
t1375 = t1415 * t1463 - t1450 * t1634;
t1487 = t1375 * t1461 + t1554;
t1043 = -t1064 * t1463 + t1189 * t1460;
t1008 = -pkin(2) * t1043 - t1669;
t1020 = t1044 * t1464 + t1065 * t1461;
t1021 = -t1065 * t1662 + t1651;
t1025 = -qJ(4) * t1065 + t1652;
t995 = -pkin(8) * t1043 - t1021 * t1460 + t1025 * t1463;
t1486 = pkin(7) * t1020 + t1008 * t1464 + t1461 * t995;
t1152 = t1217 * t1460 - t1221 * t1463;
t1089 = -pkin(2) * t1152 - t1551;
t1094 = -pkin(8) * t1152 + t1226 * t1549;
t1119 = t1153 * t1464 + t1226 * t1461;
t1482 = pkin(7) * t1119 + t1089 * t1464 + t1094 * t1461;
t1466 = t1633 * t1663 + t1470;
t1212 = (-t1416 + t1573) * pkin(3) + t1466;
t1170 = -qJ(4) * t1354 - t1212 * t1460 + t1698;
t1174 = -t1673 + t1699;
t1481 = t1170 * t1461 + t1174 * t1464 + t1704;
t1211 = -pkin(3) * t1573 + qJ(4) * t1414 - t1466;
t1171 = -pkin(3) * t1618 + t1211 * t1463 - t1688;
t1172 = -t1689 - t1691;
t1480 = t1171 * t1461 + t1172 * t1464 + t1710;
t1218 = t1260 - t1699;
t1256 = t1623 - t1698;
t1479 = t1218 * t1464 + t1256 * t1461 - t1704;
t1219 = t1261 + t1689;
t1257 = t1622 + t1688;
t1478 = t1219 * t1464 + t1257 * t1461 - t1710;
t1149 = t1167 * t1464 + t1305 * t1461;
t1474 = pkin(7) * t1149 - (-pkin(2) * t1464 - pkin(8) * t1461) * t1166;
t1441 = t1456 * qJDD(2);
t1385 = t1419 * t1456;
t1383 = t1419 * t1454;
t1382 = t1510 * t1454;
t1376 = qJDD(3) * t1461 + t1403 * t1464;
t1355 = t1681 * t1460;
t1349 = t1509 * t1456;
t1348 = t1509 * t1454;
t1343 = t1414 * t1463 + t1416 * t1460;
t1335 = -t1385 * t1453 - t1455 * t1510;
t1334 = t1385 * t1455 - t1453 * t1510;
t1330 = t1375 * t1464 - t1555;
t1329 = t1374 * t1464 + t1555;
t1302 = t1344 * t1464 + t1422 * t1461;
t1291 = -t1349 * t1453 + t1376 * t1455;
t1290 = t1349 * t1455 + t1376 * t1453;
t1283 = -t1595 + (t1382 * t1454 + t1384 * t1456) * pkin(7);
t1282 = -t1599 + (-t1383 * t1454 - t1385 * t1456) * pkin(7);
t1280 = -t1303 * t1463 + t1400 * t1460;
t1274 = -t1454 * t1355 + t1456 * t1487;
t1273 = -t1454 * t1354 + t1456 * t1488;
t1272 = t1456 * t1355 + t1454 * t1487;
t1271 = t1456 * t1354 + t1454 * t1488;
t1262 = qJ(1) * (-t1338 * t1453 + t1347 * t1455);
t1232 = -t1454 * t1343 + t1456 * t1518;
t1231 = t1456 * t1343 + t1454 * t1518;
t1230 = pkin(2) * t1416 - t1622 - t1687;
t1229 = -pkin(2) * t1414 + t1623 - t1697;
t1228 = t1234 * t1456;
t1227 = t1234 * t1454;
t1223 = -t1286 * t1463 + t1575;
t1222 = t1284 * t1463 - t1575;
t1216 = -pkin(1) * t1383 + t1454 * t1320 + t1456 * t1540;
t1215 = pkin(1) * t1382 + t1454 * t1321 + t1456 * t1541;
t1214 = pkin(1) * t1385 - t1456 * t1320 + t1454 * t1540;
t1213 = -pkin(1) * t1384 - t1456 * t1321 + t1454 * t1541;
t1208 = -t1274 * t1453 + t1330 * t1455;
t1207 = -t1273 * t1453 + t1329 * t1455;
t1206 = t1274 * t1455 + t1330 * t1453;
t1205 = t1273 * t1455 + t1329 * t1453;
t1204 = -t1233 * t1456 + t1454 * t1379;
t1203 = -t1233 * t1454 - t1456 * t1379;
t1193 = t1281 * t1464 + t1304 * t1461;
t1186 = -t1277 * t1463 - t1298 * t1460;
t1185 = -t1276 * t1463 - t1301 * t1460;
t1176 = -t1232 * t1453 + t1302 * t1455;
t1175 = t1232 * t1455 + t1302 * t1453;
t1168 = -t1200 * t1463 + t1350 * t1460;
t1164 = t1225 * t1464 + t1287 * t1461;
t1163 = t1224 * t1464 - t1285 * t1461;
t1162 = t1697 + t1460 * t1211 + (pkin(2) + t1653) * t1414;
t1161 = t1687 + t1463 * t1212 + (-pkin(2) - t1636) * t1416;
t1157 = t1167 + t1581;
t1156 = -t1454 * t1280 + t1456 * t1519;
t1155 = t1456 * t1280 + t1454 * t1519;
t1154 = -pkin(2) * t1305 + pkin(8) * t1167;
t1151 = t1188 * t1464 + t1279 * t1461;
t1150 = t1187 * t1464 + t1278 * t1461;
t1148 = pkin(1) * t1204 + t1234 * t1650;
t1147 = -pkin(1) * t1203 + t1234 * t1649;
t1140 = t1464 * t1166 + t1502;
t1136 = (-t1203 * t1454 - t1204 * t1456) * pkin(7);
t1134 = t1209 * t1463 + t1210 * t1460 + t1581;
t1128 = -t1454 * t1223 + t1456 * t1520;
t1127 = -t1454 * t1222 + t1456 * t1521;
t1126 = t1456 * t1223 + t1454 * t1520;
t1125 = t1456 * t1222 + t1454 * t1521;
t1124 = t1169 * t1464 + t1202 * t1461;
t1117 = -t1156 * t1453 + t1193 * t1455;
t1116 = t1156 * t1455 + t1193 * t1453;
t1115 = t1464 * t1142 - t1461 * t1411 + t1502;
t1113 = -t1461 * t1219 + t1464 * t1257 + t1730;
t1112 = -t1461 * t1218 + t1464 * t1256 + t1725;
t1111 = -t1454 * t1186 + t1456 * t1522;
t1110 = -t1454 * t1185 + t1456 * t1523;
t1109 = t1456 * t1186 + t1454 * t1522;
t1108 = t1456 * t1185 + t1454 * t1523;
t1102 = t1166 * t1454 + t1456 * t1527;
t1101 = -t1166 * t1456 + t1454 * t1527;
t1093 = -t1454 * t1229 + t1456 * t1478 + t1727;
t1092 = -t1454 * t1230 + t1456 * t1479 + t1717;
t1091 = t1456 * t1229 + t1454 * t1478 - t1726;
t1090 = t1456 * t1230 + t1454 * t1479 - t1716;
t1088 = -t1157 * t1454 + t1456 * t1625 + t1563;
t1087 = t1157 * t1456 + t1454 * t1625 + t1583;
t1082 = -t1128 * t1453 + t1164 * t1455;
t1081 = -t1127 * t1453 + t1163 * t1455;
t1080 = t1128 * t1455 + t1164 * t1453;
t1079 = t1127 * t1455 + t1163 * t1453;
t1078 = -t1454 * t1168 + t1456 * t1526;
t1077 = t1456 * t1168 + t1454 * t1526;
t1073 = t1464 * t1170 - t1461 * t1174 - t1725;
t1071 = t1464 * t1171 - t1461 * t1172 - t1730;
t1069 = pkin(8) * t1153 + (-pkin(2) + t1550) * t1226;
t1067 = -t1454 * t1152 + t1456 * t1529;
t1066 = t1456 * t1152 + t1454 * t1529;
t1062 = -t1111 * t1453 + t1151 * t1455;
t1061 = -t1110 * t1453 + t1150 * t1455;
t1060 = t1111 * t1455 + t1151 * t1453;
t1059 = t1110 * t1455 + t1150 * t1453;
t1057 = -t1454 * t1134 + t1456 * t1530 + t1563;
t1056 = t1456 * t1134 + t1454 * t1530 + t1583;
t1051 = qJ(1) * (-t1105 * t1453 + t1146 * t1455);
t1050 = -t1454 * t1161 + t1456 * t1481 - t1717;
t1049 = t1456 * t1161 + t1454 * t1481 + t1716;
t1048 = -t1454 * t1162 + t1456 * t1480 - t1727;
t1047 = t1456 * t1162 + t1454 * t1480 + t1726;
t1045 = qJ(1) * (-t1097 * t1453 + t1141 * t1455);
t1041 = -t1078 * t1453 + t1124 * t1455;
t1040 = t1078 * t1455 + t1124 * t1453;
t1035 = qJ(1) * (-t1075 * t1453 + t1123 * t1455);
t1028 = t1086 * t1460 + t1114 * t1463 + t1588;
t1027 = t1085 * t1460 + t1107 * t1463 + t1589;
t1026 = -(pkin(2) * t1461 - pkin(8) * t1464) * t1166 + (-t1101 * t1454 - t1102 * t1456) * pkin(7);
t1024 = -pkin(1) * t1101 - t1454 * t1154 + t1456 * t1474;
t1023 = pkin(1) * t1102 + t1456 * t1154 + t1454 * t1474;
t1016 = t1058 * t1463 + t1063 * t1460 + t1588;
t1015 = t1034 * t1463 + t1137 * t1460 + t1590;
t1013 = t1054 * t1460 + t1055 * t1463 + t1589;
t1010 = t1022 * t1463 + t1120 * t1460 + t1590;
t1009 = -t1461 * t1089 + t1464 * t1094 + (-t1066 * t1454 - t1067 * t1456) * pkin(7);
t1006 = -t1454 * t1043 + t1456 * t1531;
t1005 = t1456 * t1043 + t1454 * t1531;
t1004 = t1464 * t1033 - t1461 * t1070 + t1503;
t1003 = -pkin(1) * t1066 - t1454 * t1069 + t1456 * t1482;
t1002 = pkin(1) * t1067 + t1456 * t1069 + t1454 * t1482;
t1001 = t1464 * t1032 - t1461 * t1068 + t1504;
t999 = -t1454 * t1030 + t1456 * t1534;
t998 = t1456 * t1030 + t1454 * t1534;
t997 = t1464 * t1018 - t1461 * t1042 + t1503;
t996 = t1464 * t1017 - t1461 * t1039 + t1504;
t994 = -t1454 * t1028 + t1456 * t1532 + t1564;
t993 = t1456 * t1028 + t1454 * t1532 + t1591;
t992 = -t1454 * t1027 + t1456 * t1533 + t1565;
t991 = t1456 * t1027 + t1454 * t1533 + t1592;
t990 = t1464 * t1019 - t1461 * t1029 + t1505;
t989 = -pkin(2) * t1065 + pkin(8) * t1044 + t1021 * t1463 + t1025 * t1460;
t987 = -t1454 * t1016 + t1456 * t1536 + t1564;
t986 = t1456 * t1016 + t1454 * t1536 + t1591;
t985 = t1464 * t1012 - t1461 * t1014 + t1505;
t984 = -t1454 * t1013 + t1456 * t1537 + t1565;
t983 = t1456 * t1013 + t1454 * t1537 + t1592;
t982 = -t1454 * t1015 + t1456 * t1535 + t1566;
t981 = t1456 * t1015 + t1454 * t1535 + t1593;
t979 = -t1454 * t1010 + t1456 * t1538 + t1566;
t978 = t1456 * t1010 + t1454 * t1538 + t1593;
t977 = -pkin(2) * t1038 + pkin(8) * t1031 + t1000 * t1463 + t1007 * t1460;
t976 = -t1461 * t1008 + t1464 * t995 + (-t1005 * t1454 - t1006 * t1456) * pkin(7);
t975 = -pkin(1) * t1005 - t1454 * t989 + t1456 * t1486;
t974 = pkin(1) * t1006 + t1454 * t1486 + t1456 * t989;
t973 = -t1461 * t988 + t1464 * t980 + (-t1454 * t998 - t1456 * t999) * pkin(7);
t972 = -pkin(1) * t998 - t1454 * t977 + t1456 * t1491;
t971 = pkin(1) * t999 + t1454 * t1491 + t1456 * t977;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1679, -t1678, -t1667, -qJ(1) * t1667, 0, 0, -t1512, 0, t1335, t1453 * t1580, -qJ(1) * t1334 - t1216 * t1453 + t1282 * t1455, qJ(1) * t1513 - t1453 * t1215 + t1455 * t1283, -t1228 * t1453 + t1233 * t1455, t1455 * t1136 - t1453 * t1147 - qJ(1) * (t1204 * t1455 + t1234 * t1453), t1208, t1176, -t1720, t1207, t1713, t1291, -t1453 * t1092 + t1455 * t1112 + t1724, -t1453 * t1093 + t1455 * t1113 + t1729, -t1088 * t1453 + t1140 * t1455 - t1641, t1455 * t1026 - t1453 * t1024 - qJ(1) * (t1102 * t1455 + t1149 * t1453), t1291, t1720, -t1713, t1208, t1176, t1207, -t1057 * t1453 + t1115 * t1455 - t1641, -t1453 * t1050 + t1455 * t1073 - t1724, -t1453 * t1048 + t1455 * t1071 - t1729, t1455 * t1009 - t1453 * t1003 - qJ(1) * (t1067 * t1455 + t1119 * t1453), t1082, t1041, t1061, t1081, t1062, t1117, t1001 * t1455 - t1453 * t992 - t1643, t1004 * t1455 - t1453 * t994 - t1642, -t1453 * t982 + t1455 * t990 - t1644, t1455 * t976 - t1453 * t975 - qJ(1) * (t1006 * t1455 + t1020 * t1453), t1082, t1041, t1061, t1081, t1062, t1117, -t1453 * t984 + t1455 * t996 - t1643, -t1453 * t987 + t1455 * t997 - t1642, -t1453 * t979 + t1455 * t985 - t1644, t1455 * t973 - t1453 * t972 - qJ(1) * (t1011 * t1453 + t1455 * t999); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1678, -t1679, t1668, qJ(1) * t1668, 0, 0, t1513, 0, t1334, -t1455 * t1580, qJ(1) * t1335 + t1216 * t1455 + t1282 * t1453, qJ(1) * t1512 + t1455 * t1215 + t1453 * t1283, t1228 * t1455 + t1233 * t1453, t1453 * t1136 + t1455 * t1147 + qJ(1) * (-t1204 * t1453 + t1234 * t1455), t1206, t1175, t1719, t1205, -t1712, t1290, t1455 * t1092 + t1453 * t1112 + t1723, t1455 * t1093 + t1453 * t1113 + t1728, t1088 * t1455 + t1140 * t1453 + t1262, t1453 * t1026 + t1455 * t1024 + qJ(1) * (-t1102 * t1453 + t1149 * t1455), t1290, -t1719, t1712, t1206, t1175, t1205, t1057 * t1455 + t1115 * t1453 + t1262, t1455 * t1050 + t1453 * t1073 - t1723, t1455 * t1048 + t1453 * t1071 - t1728, t1453 * t1009 + t1455 * t1003 + qJ(1) * (-t1067 * t1453 + t1119 * t1455), t1080, t1040, t1059, t1079, t1060, t1116, t1001 * t1453 + t1455 * t992 + t1045, t1004 * t1453 + t1455 * t994 + t1051, t1453 * t990 + t1455 * t982 + t1035, t1453 * t976 + t1455 * t975 + qJ(1) * (-t1006 * t1453 + t1020 * t1455), t1080, t1040, t1059, t1079, t1060, t1116, t1453 * t996 + t1455 * t984 + t1045, t1453 * t997 + t1455 * t987 + t1051, t1453 * t985 + t1455 * t979 + t1035, t1453 * t973 + t1455 * t972 + qJ(1) * (t1011 * t1455 - t1453 * t999); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1561, t1423, 0, 0, 0, 0, t1382, 0, t1383, t1441, t1214, t1213, t1227, t1148, t1272, t1231, t1265, t1271, -t1264, t1348, t1090, t1091, t1087, t1023, t1348, -t1265, t1264, t1272, t1231, t1271, t1056, t1049, t1047, t1002, t1126, t1077, t1108, t1125, t1109, t1155, t991, t993, t981, t974, t1126, t1077, t1108, t1125, t1109, t1155, t983, t986, t978, t971; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1645, -t1561, 0, 0, 0, t1419, 0, -t1510, 0, t1282, t1283, t1233, t1136, t1330, t1302, t1327, t1329, -t1326, t1376, t1112, t1113, t1140, t1026, t1376, -t1327, t1326, t1330, t1302, t1329, t1115, t1073, t1071, t1009, t1164, t1124, t1150, t1163, t1151, t1193, t1001, t1004, t990, t976, t1164, t1124, t1150, t1163, t1151, t1193, t996, t997, t985, t973; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1645, 0, -t1423, 0, 0, 0, t1384, 0, t1385, -t1580, t1216, t1215, t1228, t1147, t1274, t1232, t1269, t1273, -t1268, t1349, t1092, t1093, t1088, t1024, t1349, -t1269, t1268, t1274, t1232, t1273, t1057, t1050, t1048, t1003, t1128, t1078, t1110, t1127, t1111, t1156, t992, t994, t982, t975, t1128, t1078, t1110, t1127, t1111, t1156, t984, t987, t979, t972; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1561, t1423, 0, 0, 0, 0, t1382, 0, t1383, t1441, t1214, t1213, t1227, t1148, t1272, t1231, t1265, t1271, -t1264, t1348, t1090, t1091, t1087, t1023, t1348, -t1265, t1264, t1272, t1231, t1271, t1056, t1049, t1047, t1002, t1126, t1077, t1108, t1125, t1109, t1155, t991, t993, t981, t974, t1126, t1077, t1108, t1125, t1109, t1155, t983, t986, t978, t971; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1465, 0, 0, -t1379, t1320, 0, t1375, t1344, t1368, t1374, -t1365, t1403, t1256, t1257, t1166, pkin(8) * t1166, t1403, -t1368, t1365, t1375, t1344, t1374, t1142, t1170, t1171, t1094, t1225, t1169, t1187, t1224, t1188, t1281, t1032, t1033, t1019, t995, t1225, t1169, t1187, t1224, t1188, t1281, t1017, t1018, t1012, t980; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1465, 0, qJDD(2), 0, t1379, 0, t1321, 0, t1434, -t1422, -t1579, -t1434, -t1578, -qJDD(3), t1218, t1219, 0, pkin(2) * t1166, -qJDD(3), t1579, t1578, t1434, -t1422, -t1434, t1411, t1174, t1172, t1089, -t1287, -t1202, -t1278, t1285, -t1279, -t1304, t1068, t1070, t1029, t1008, -t1287, -t1202, -t1278, t1285, -t1279, -t1304, t1039, t1042, t1014, t988; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1320, -t1321, 0, 0, t1355, t1343, t1360, t1354, t1356, 0, t1230, t1229, t1157, t1154, 0, -t1360, -t1356, t1355, t1343, t1354, t1134, t1161, t1162, t1069, t1223, t1168, t1185, t1222, t1186, t1280, t1027, t1028, t1015, t989, t1223, t1168, t1185, t1222, t1186, t1280, t1013, t1016, t1010, t977; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1415, t1416, t1424, -t1572, t1430, t1572, 0, t1305, t1260, 0, t1572, -t1424, -t1430, t1415, t1416, -t1572, t1210, -qJ(4) * t1416, t1211, -qJ(4) * t1226, t1352, t1350, -t1301, -t1352, -t1298, t1400, t1085, t1086, t1137, t1025, t1352, t1350, -t1301, -t1352, -t1298, t1400, t1054, t1063, t1120, t1007; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1573, t1414, t1428, -t1501, t1425, -t1573, -t1305, 0, t1261, 0, -t1573, -t1428, -t1425, t1573, t1414, -t1501, t1209, t1212, pkin(3) * t1414, -pkin(3) * t1226, -t1286, -t1200, -t1276, t1284, -t1277, -t1303, t1107, t1114, t1034, t1021, -t1286, -t1200, -t1276, t1284, -t1277, -t1303, t1055, t1058, t1022, t1000; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1434, t1422, t1579, t1434, t1578, qJDD(3), -t1260, -t1261, 0, 0, qJDD(3), -t1579, -t1578, -t1434, t1422, t1434, -t1411, t1673, t1691, t1551, t1287, t1202, t1278, -t1285, t1279, t1304, t1508, t1553, t1494, t1669, t1287, t1202, t1278, -t1285, t1279, t1304, t1473, t1493, t1495, t1670; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(3), -t1579, -t1578, -t1434, t1422, t1434, 0, t1221, t1217, 0, t1287, t1202, t1278, -t1285, t1279, t1304, t1558, t1587, t1547, -pkin(9) * t1064, t1287, t1202, t1278, -t1285, t1279, t1304, t1490, t1546, t1548, -pkin(9) * t1037 + t1507; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1572, t1424, t1430, -t1415, -t1416, t1572, -t1221, 0, t1226, 0, -t1352, -t1350, t1301, t1352, t1298, -t1400, t1545, t1571, -t1196, -t1652, -t1352, -t1350, t1301, t1352, t1298, -t1400, t1692, t1387 - t1253 - t1506, -t1294 - t1196, t1562; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1573, t1428, t1425, -t1573, -t1414, t1501, -t1217, -t1226, 0, 0, t1286, t1200, t1276, -t1284, t1277, t1303, t1544, t1543, t1484, pkin(9) * t1065 - t1651, t1286, t1200, t1276, -t1284, t1277, t1303, t1477, t1483, t1485, pkin(9) * t1038 - t1476; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1332, -t1297, -t1682, t1607, t1377, -t1607, 0, t1189, t1131, 0, t1332, -t1297, -t1682, t1607, t1377, -t1607, qJ(6) * t1682, t1135, t1084, qJ(6) * t1100; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1381, t1300, t1582, -t1496, t1318, -t1381, -t1189, 0, t1132, 0, t1381, t1300, t1582, -t1496, t1318, -t1381, t1118, t1220, t1076, t1053; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1352, t1350, -t1301, -t1352, -t1298, t1400, -t1131, -t1132, 0, 0, t1352, t1350, -t1301, -t1352, -t1298, t1400, t1468, t1489, t1294, -t1099; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1332, -t1297, -t1682, t1607, t1377, -t1607, 0, t1145, t1100, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1381, t1300, t1582, -t1496, t1318, -t1381, -t1145, 0, t1106, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1352, t1350, -t1301, -t1352, -t1298, t1400, -t1100, -t1106, 0, 0;];
m_new_reg  = t1;
