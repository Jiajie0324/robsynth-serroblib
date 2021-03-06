% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RRPRR14
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d4,d5,theta3]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:40
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RRPRR14_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRR14_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRR14_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRPRR14_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPRR14_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5RRPRR14_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:39:32
% EndTime: 2019-12-31 20:40:06
% DurationCPUTime: 36.55s
% Computational Cost: add. (310727->874), mult. (714539->1318), div. (0->0), fcn. (570755->12), ass. (0->622)
t1532 = sin(pkin(10));
t1542 = cos(qJ(2));
t1533 = sin(pkin(5));
t1538 = sin(qJ(2));
t1657 = t1533 * t1538;
t1647 = qJD(1) * t1657;
t1651 = t1533 * qJDD(1);
t1502 = -qJD(2) * t1647 + t1542 * t1651;
t1535 = cos(pkin(5));
t1525 = qJD(1) * t1535 + qJD(2);
t1534 = cos(pkin(10));
t1494 = t1532 * t1525 + t1534 * t1647;
t1632 = t1525 * t1534 - t1532 * t1647;
t1619 = t1632 * t1494;
t1696 = -t1502 + t1619;
t1703 = t1532 * t1696;
t1702 = t1534 * t1696;
t1536 = sin(qJ(5));
t1537 = sin(qJ(4));
t1541 = cos(qJ(4));
t1462 = t1541 * t1494 + t1537 * t1632;
t1540 = cos(qJ(5));
t1656 = t1533 * t1542;
t1646 = qJD(1) * t1656;
t1623 = -qJD(4) + t1646;
t1431 = t1462 * t1536 + t1540 * t1623;
t1433 = t1540 * t1462 - t1536 * t1623;
t1374 = t1433 * t1431;
t1652 = qJDD(1) * t1538;
t1681 = qJD(1) * t1542;
t1501 = (qJD(2) * t1681 + t1652) * t1533;
t1631 = qJDD(1) * t1535 + qJDD(2);
t1472 = t1534 * t1501 + t1532 * t1631;
t1556 = -t1532 * t1501 + t1534 * t1631;
t1635 = t1537 * t1472 - t1541 * t1556;
t1382 = -t1462 * qJD(4) - t1635;
t1381 = qJDD(5) - t1382;
t1695 = -t1374 + t1381;
t1701 = t1536 * t1695;
t1460 = t1494 * t1537 - t1541 * t1632;
t1399 = t1462 * t1460;
t1496 = -qJDD(4) + t1502;
t1694 = -t1399 - t1496;
t1700 = t1537 * t1694;
t1699 = t1540 * t1695;
t1698 = t1541 * t1694;
t1383 = -t1460 * qJD(4) + t1541 * t1472 + t1537 * t1556;
t1447 = t1460 * t1623;
t1697 = t1447 + t1383;
t1620 = t1623 ^ 2;
t1630 = t1632 ^ 2;
t1529 = t1533 ^ 2;
t1544 = qJD(1) ^ 2;
t1658 = t1529 * t1544;
t1539 = sin(qJ(1));
t1543 = cos(qJ(1));
t1520 = g(1) * t1543 + g(2) * t1539;
t1497 = -pkin(1) * t1544 + pkin(7) * t1651 - t1520;
t1519 = g(1) * t1539 - t1543 * g(2);
t1686 = pkin(7) * t1533;
t1555 = qJDD(1) * pkin(1) + t1544 * t1686 + t1519;
t1551 = t1535 * t1555;
t1550 = -g(3) * t1657 + t1538 * t1551;
t1549 = qJ(3) * t1631 + t1550;
t1690 = pkin(2) * t1542;
t1625 = -qJ(3) * t1538 - t1690;
t1682 = qJD(1) * t1533;
t1498 = t1625 * t1682;
t1639 = t1498 * t1682;
t1693 = t1525 ^ 2;
t1547 = -t1693 * pkin(2) + (t1497 + t1639) * t1542 + t1549;
t1691 = pkin(2) * t1538;
t1624 = -qJ(3) * t1542 + t1691;
t1683 = qJD(1) * t1525;
t1684 = t1501 * qJ(3);
t1685 = t1535 * g(3);
t1548 = -t1502 * pkin(2) - t1685 - t1684 + (t1624 * t1683 - t1555) * t1533;
t1692 = 2 * qJD(3);
t1329 = t1532 * t1548 + t1534 * t1547 + t1632 * t1692;
t1473 = -pkin(3) * t1646 - pkin(8) * t1494;
t1298 = -pkin(3) * t1630 + pkin(8) * t1556 + t1473 * t1646 + t1329;
t1650 = t1494 * t1692;
t1328 = t1532 * t1547 - t1534 * t1548 + t1650;
t1569 = t1632 * t1646;
t1442 = t1569 + t1472;
t1546 = pkin(3) * t1696 - t1442 * pkin(8) - t1328;
t1223 = t1541 * t1298 + t1537 * t1546;
t1397 = pkin(4) * t1460 - pkin(9) * t1462;
t1198 = -pkin(4) * t1620 - t1496 * pkin(9) - t1460 * t1397 + t1223;
t1634 = t1538 * t1497 - t1542 * t1551;
t1408 = qJDD(3) - t1631 * pkin(2) - t1693 * qJ(3) + (t1538 * qJD(1) * t1498 + t1542 * g(3)) * t1533 + t1634;
t1335 = -t1556 * pkin(3) - t1630 * pkin(8) + t1494 * t1473 + t1408;
t1579 = t1623 * t1462;
t1230 = -t1697 * pkin(9) + (-t1382 - t1579) * pkin(4) + t1335;
t1152 = t1198 * t1536 - t1540 * t1230;
t1153 = t1198 * t1540 + t1230 * t1536;
t1109 = t1536 * t1152 + t1540 * t1153;
t1509 = t1525 * t1647;
t1478 = t1502 - t1509;
t1510 = t1525 * t1646;
t1475 = t1510 + t1501;
t1483 = t1494 * t1646;
t1441 = t1556 - t1483;
t1429 = t1431 ^ 2;
t1430 = t1433 ^ 2;
t1457 = qJD(5) + t1460;
t1455 = t1457 ^ 2;
t1458 = t1460 ^ 2;
t1459 = t1462 ^ 2;
t1492 = t1494 ^ 2;
t1222 = t1298 * t1537 - t1541 * t1546;
t1159 = -t1222 * t1541 + t1223 * t1537;
t1689 = pkin(3) * t1159;
t1358 = t1462 * t1646 + t1635;
t1361 = -t1447 + t1383;
t1272 = -t1358 * t1537 - t1361 * t1541;
t1688 = pkin(3) * t1272;
t1687 = pkin(4) * t1537;
t1680 = t1159 * t1532;
t1679 = t1159 * t1534;
t1317 = t1374 + t1381;
t1678 = t1317 * t1536;
t1677 = t1317 * t1540;
t1676 = t1335 * t1537;
t1675 = t1335 * t1541;
t1388 = -t1399 + t1496;
t1674 = t1388 * t1537;
t1673 = t1388 * t1541;
t1672 = t1408 * t1532;
t1671 = t1408 * t1534;
t1444 = t1502 + t1619;
t1670 = t1444 * t1532;
t1669 = t1444 * t1534;
t1668 = t1457 * t1536;
t1667 = t1457 * t1540;
t1484 = t1533 * t1555 + t1685;
t1666 = t1484 * t1538;
t1665 = t1484 * t1542;
t1655 = t1538 * t1542;
t1640 = t1529 * t1655;
t1518 = t1544 * t1640;
t1499 = -t1518 + t1631;
t1664 = t1499 * t1538;
t1663 = t1499 * t1542;
t1500 = t1518 + t1631;
t1662 = t1500 * t1538;
t1661 = t1500 * t1542;
t1660 = t1502 * t1538;
t1659 = t1533 * t1658;
t1197 = t1496 * pkin(4) - pkin(9) * t1620 + t1397 * t1462 + t1222;
t1194 = t1536 * t1197;
t1195 = t1540 * t1197;
t1654 = t1542 * t1497;
t1653 = -pkin(4) * t1197 + pkin(9) * t1109;
t1649 = -pkin(4) * t1541 - pkin(3);
t1648 = t1525 * t1682;
t1645 = t1537 * t1374;
t1644 = t1541 * t1374;
t1643 = t1538 * t1399;
t1642 = t1542 * t1399;
t1530 = t1538 ^ 2;
t1641 = t1530 * t1658;
t1364 = -t1430 - t1455;
t1253 = -t1364 * t1536 - t1677;
t1596 = -t1383 * t1540 + t1496 * t1536;
t1291 = (qJD(5) + t1457) * t1431 + t1596;
t1638 = pkin(4) * t1291 + pkin(9) * t1253 + t1194;
t1356 = -t1455 - t1429;
t1247 = t1356 * t1540 - t1701;
t1636 = -t1383 * t1536 - t1540 * t1496;
t1330 = -qJD(5) * t1433 + t1636;
t1392 = t1457 * t1433;
t1287 = t1330 - t1392;
t1637 = pkin(4) * t1287 + pkin(9) * t1247 - t1195;
t1160 = t1222 * t1537 + t1541 * t1223;
t1250 = t1328 * t1532 + t1534 * t1329;
t1633 = -t1519 * t1539 - t1543 * t1520;
t1288 = (-qJD(5) + t1457) * t1433 + t1636;
t1331 = -qJD(5) * t1431 - t1596;
t1391 = t1457 * t1431;
t1290 = t1331 + t1391;
t1219 = t1288 * t1540 + t1290 * t1536;
t1338 = t1429 + t1430;
t1629 = pkin(4) * t1338 + pkin(9) * t1219 + t1109;
t1092 = t1109 * t1537 - t1197 * t1541;
t1628 = pkin(3) * t1092 + t1653;
t1422 = -t1459 - t1620;
t1341 = t1422 * t1541 + t1674;
t1627 = pkin(3) * t1341 - t1223;
t1517 = qJDD(1) * t1543 - t1539 * t1544;
t1626 = -pkin(6) * t1517 - g(3) * t1539;
t1491 = -t1641 - t1693;
t1463 = -t1491 * t1538 - t1663;
t1622 = pkin(7) * t1463 - t1666;
t1531 = t1542 ^ 2;
t1524 = t1531 * t1658;
t1506 = -t1524 - t1693;
t1467 = t1506 * t1542 - t1662;
t1621 = pkin(7) * t1467 + t1665;
t1618 = -t1535 * t1544 + t1683;
t1093 = t1109 * t1541 + t1197 * t1537;
t1065 = -t1092 * t1532 + t1093 * t1534;
t1108 = -t1152 * t1540 + t1153 * t1536;
t1617 = t1065 * t1538 - t1108 * t1542;
t1111 = t1160 * t1534 - t1680;
t1616 = t1111 * t1538 - t1335 * t1542;
t1191 = t1219 * t1537 + t1338 * t1541;
t1192 = t1219 * t1541 - t1338 * t1537;
t1128 = -t1191 * t1532 + t1192 * t1534;
t1217 = t1288 * t1536 - t1290 * t1540;
t1615 = t1128 * t1538 - t1217 * t1542;
t1289 = t1331 - t1391;
t1218 = t1287 * t1540 - t1289 * t1536;
t1373 = t1430 - t1429;
t1199 = t1218 * t1537 - t1373 * t1541;
t1200 = t1218 * t1541 + t1373 * t1537;
t1136 = -t1199 * t1532 + t1200 * t1534;
t1216 = t1287 * t1536 + t1289 * t1540;
t1614 = t1136 * t1538 - t1216 * t1542;
t1201 = t1247 * t1537 + t1287 * t1541;
t1202 = t1247 * t1541 - t1287 * t1537;
t1141 = -t1201 * t1532 + t1202 * t1534;
t1246 = t1356 * t1536 + t1699;
t1613 = t1141 * t1538 - t1246 * t1542;
t1203 = t1253 * t1537 + t1291 * t1541;
t1204 = t1253 * t1541 - t1291 * t1537;
t1144 = -t1203 * t1532 + t1204 * t1534;
t1252 = t1364 * t1540 - t1678;
t1612 = t1144 * t1538 - t1252 * t1542;
t1387 = -t1430 + t1455;
t1263 = -t1387 * t1536 + t1699;
t1211 = t1263 * t1537 - t1290 * t1541;
t1213 = t1263 * t1541 + t1290 * t1537;
t1148 = -t1211 * t1532 + t1213 * t1534;
t1261 = t1387 * t1540 + t1701;
t1611 = t1148 * t1538 - t1261 * t1542;
t1386 = t1429 - t1455;
t1264 = t1386 * t1540 - t1678;
t1286 = -t1330 - t1392;
t1212 = t1264 * t1537 + t1286 * t1541;
t1214 = t1264 * t1541 - t1286 * t1537;
t1149 = -t1212 * t1532 + t1214 * t1534;
t1262 = t1386 * t1536 + t1677;
t1610 = t1149 * t1538 - t1262 * t1542;
t1278 = -t1330 * t1536 + t1431 * t1667;
t1241 = t1278 * t1537 + t1644;
t1243 = t1278 * t1541 - t1645;
t1180 = -t1241 * t1532 + t1243 * t1534;
t1277 = -t1540 * t1330 - t1431 * t1668;
t1609 = t1180 * t1538 + t1277 * t1542;
t1280 = t1331 * t1540 - t1433 * t1668;
t1242 = t1280 * t1537 - t1644;
t1244 = t1280 * t1541 + t1645;
t1181 = -t1242 * t1532 + t1244 * t1534;
t1279 = t1331 * t1536 + t1433 * t1667;
t1608 = t1181 * t1538 - t1279 * t1542;
t1320 = (-t1431 * t1540 + t1433 * t1536) * t1457;
t1269 = t1320 * t1537 - t1381 * t1541;
t1270 = t1320 * t1541 + t1381 * t1537;
t1206 = -t1269 * t1532 + t1270 * t1534;
t1319 = (-t1431 * t1536 - t1433 * t1540) * t1457;
t1607 = t1206 * t1538 - t1319 * t1542;
t1357 = (0.2e1 * qJD(4) - t1646) * t1462 + t1635;
t1271 = -t1357 * t1537 + t1541 * t1697;
t1273 = -t1357 * t1541 - t1537 * t1697;
t1209 = -t1271 * t1532 + t1273 * t1534;
t1398 = t1459 - t1458;
t1606 = t1209 * t1538 - t1398 * t1542;
t1274 = -t1358 * t1541 + t1361 * t1537;
t1210 = -t1272 * t1532 + t1274 * t1534;
t1370 = -t1458 - t1459;
t1605 = t1210 * t1538 - t1370 * t1542;
t1395 = -t1620 - t1458;
t1321 = t1395 * t1537 + t1698;
t1322 = t1395 * t1541 - t1700;
t1240 = -t1321 * t1532 + t1322 * t1534;
t1604 = t1240 * t1538 - t1357 * t1542;
t1603 = t1250 * t1538 - t1408 * t1542;
t1342 = -t1422 * t1537 + t1673;
t1256 = -t1341 * t1532 + t1342 * t1534;
t1602 = t1256 * t1538 - t1542 * t1697;
t1438 = -t1459 + t1620;
t1352 = t1438 * t1541 + t1700;
t1354 = -t1438 * t1537 + t1698;
t1267 = -t1352 * t1532 + t1354 * t1534;
t1601 = t1267 * t1538 - t1361 * t1542;
t1437 = t1458 - t1620;
t1353 = t1437 * t1537 - t1673;
t1355 = t1437 * t1541 + t1674;
t1268 = -t1353 * t1532 + t1355 * t1534;
t1600 = t1268 * t1538 + t1358 * t1542;
t1570 = t1541 * t1579;
t1573 = t1537 * t1447;
t1379 = t1573 + t1570;
t1571 = t1541 * t1447;
t1572 = t1537 * t1579;
t1380 = t1571 - t1572;
t1315 = -t1379 * t1532 + t1380 * t1534;
t1599 = t1315 * t1538 + t1496 * t1542;
t1249 = -t1328 * t1534 + t1329 * t1532;
t1440 = t1483 + t1556;
t1443 = -t1569 + t1472;
t1377 = t1440 * t1534 - t1443 * t1532;
t1464 = t1492 - t1630;
t1598 = t1377 * t1538 - t1464 * t1542;
t1378 = t1441 * t1534 + t1442 * t1532;
t1434 = t1630 + t1492;
t1597 = t1378 * t1538 + t1434 * t1542;
t1456 = -t1524 - t1630;
t1385 = t1456 * t1534 - t1703;
t1595 = t1385 * t1538 + t1440 * t1542;
t1481 = -t1492 - t1524;
t1403 = -t1481 * t1532 + t1669;
t1594 = t1403 * t1538 - t1443 * t1542;
t1480 = -t1492 + t1524;
t1404 = -t1480 * t1532 + t1702;
t1593 = t1404 * t1538 - t1442 * t1542;
t1479 = t1630 - t1524;
t1405 = t1479 * t1534 + t1670;
t1592 = t1405 * t1538 - t1441 * t1542;
t1453 = g(3) * t1656 + t1634;
t1454 = t1550 + t1654;
t1591 = -t1453 * t1542 + t1454 * t1538;
t1396 = t1453 * t1538 + t1454 * t1542;
t1590 = t1475 * t1542 + t1478 * t1538;
t1476 = -t1510 + t1501;
t1477 = t1502 + t1509;
t1589 = -t1476 * t1542 + t1477 * t1538;
t1588 = t1491 * t1542 - t1664;
t1505 = t1524 - t1693;
t1587 = t1505 * t1538 + t1663;
t1504 = -t1641 + t1693;
t1586 = t1504 * t1542 + t1662;
t1585 = t1506 * t1538 + t1661;
t1584 = t1519 * t1543 - t1520 * t1539;
t1583 = pkin(3) * t1203 + t1638;
t1582 = pkin(3) * t1201 + t1637;
t1581 = t1533 * t1631;
t1580 = pkin(3) * t1321 - t1222;
t1578 = t1538 * t1619;
t1577 = t1542 * t1619;
t1347 = t1541 * t1382 - t1573;
t1348 = -t1537 * t1382 - t1571;
t1259 = -t1347 * t1532 + t1348 * t1534;
t1576 = t1259 * t1538 + t1642;
t1349 = t1537 * t1383 - t1570;
t1350 = t1541 * t1383 + t1572;
t1260 = -t1349 * t1532 + t1350 * t1534;
t1575 = t1260 * t1538 - t1642;
t1574 = pkin(3) * t1191 + t1629;
t1056 = pkin(8) * t1093 + (-pkin(9) * t1537 + t1649) * t1108;
t1062 = -pkin(8) * t1092 + (-pkin(9) * t1541 + t1687) * t1108;
t1064 = t1092 * t1534 + t1093 * t1532;
t1042 = -qJ(3) * t1064 - t1056 * t1532 + t1062 * t1534;
t1051 = -pkin(2) * t1064 - t1628;
t1058 = t1065 * t1542 + t1108 * t1538;
t1568 = pkin(7) * t1058 + t1042 * t1538 + t1051 * t1542;
t1098 = -pkin(9) * t1217 - t1108;
t1071 = pkin(8) * t1192 + t1098 * t1537 + t1217 * t1649;
t1077 = -pkin(8) * t1191 + t1098 * t1541 + t1217 * t1687;
t1127 = t1191 * t1534 + t1192 * t1532;
t1053 = -qJ(3) * t1127 - t1071 * t1532 + t1077 * t1534;
t1068 = -pkin(2) * t1127 - t1574;
t1112 = t1128 * t1542 + t1217 * t1538;
t1567 = pkin(7) * t1112 + t1053 * t1538 + t1068 * t1542;
t1122 = -pkin(4) * t1246 + t1152;
t1163 = -pkin(9) * t1246 + t1194;
t1080 = -pkin(3) * t1246 + pkin(8) * t1202 + t1122 * t1541 + t1163 * t1537;
t1087 = -pkin(8) * t1201 - t1122 * t1537 + t1163 * t1541;
t1140 = t1201 * t1534 + t1202 * t1532;
t1060 = -qJ(3) * t1140 - t1080 * t1532 + t1087 * t1534;
t1086 = -pkin(2) * t1140 - t1582;
t1118 = t1141 * t1542 + t1246 * t1538;
t1566 = pkin(7) * t1118 + t1060 * t1538 + t1086 * t1542;
t1123 = -pkin(4) * t1252 + t1153;
t1164 = -pkin(9) * t1252 + t1195;
t1081 = -pkin(3) * t1252 + pkin(8) * t1204 + t1123 * t1541 + t1164 * t1537;
t1091 = -pkin(8) * t1203 - t1123 * t1537 + t1164 * t1541;
t1143 = t1203 * t1534 + t1204 * t1532;
t1061 = -qJ(3) * t1143 - t1081 * t1532 + t1091 * t1534;
t1090 = -pkin(2) * t1143 - t1583;
t1119 = t1144 * t1542 + t1252 * t1538;
t1565 = pkin(7) * t1119 + t1061 * t1538 + t1090 * t1542;
t1110 = t1160 * t1532 + t1679;
t1145 = -pkin(3) * t1335 + pkin(8) * t1160;
t1075 = -pkin(8) * t1679 - qJ(3) * t1110 - t1145 * t1532;
t1085 = -pkin(2) * t1110 - t1689;
t1106 = t1111 * t1542 + t1335 * t1538;
t1564 = pkin(7) * t1106 + t1075 * t1538 + t1085 * t1542;
t1124 = -pkin(3) * t1370 + pkin(8) * t1274 + t1160;
t1132 = -pkin(8) * t1272 - t1159;
t1208 = t1272 * t1534 + t1274 * t1532;
t1082 = -qJ(3) * t1208 - t1124 * t1532 + t1132 * t1534;
t1171 = -pkin(2) * t1208 - t1688;
t1186 = t1210 * t1542 + t1370 * t1538;
t1563 = pkin(7) * t1186 + t1082 * t1538 + t1171 * t1542;
t1225 = -pkin(3) * t1357 + pkin(8) * t1322 - t1675;
t1239 = t1321 * t1534 + t1322 * t1532;
t1248 = -pkin(8) * t1321 + t1676;
t1142 = -qJ(3) * t1239 - t1225 * t1532 + t1248 * t1534;
t1156 = -pkin(2) * t1239 - t1580;
t1220 = t1240 * t1542 + t1357 * t1538;
t1562 = pkin(7) * t1220 + t1142 * t1538 + t1156 * t1542;
t1226 = -pkin(3) * t1697 + pkin(8) * t1342 + t1676;
t1254 = -pkin(8) * t1341 + t1675;
t1255 = t1341 * t1534 + t1342 * t1532;
t1154 = -qJ(3) * t1255 - t1226 * t1532 + t1254 * t1534;
t1165 = -pkin(2) * t1255 - t1627;
t1227 = t1256 * t1542 + t1538 * t1697;
t1561 = pkin(7) * t1227 + t1154 * t1538 + t1165 * t1542;
t1384 = t1456 * t1532 + t1702;
t1283 = t1532 * (t1542 * t1639 + t1549 + t1654) - t1534 * (-qJ(3) * t1510 - t1484 - t1684) + t1650 + (t1478 * t1534 - t1532 * t1693 - t1384) * pkin(2);
t1326 = -qJ(3) * t1384 + t1672;
t1351 = t1385 * t1542 - t1440 * t1538;
t1560 = pkin(7) * t1351 + t1283 * t1542 + t1326 * t1538;
t1400 = t1481 * t1534 + t1670;
t1294 = -pkin(2) * t1400 + t1329;
t1339 = -qJ(3) * t1400 + t1671;
t1365 = t1403 * t1542 + t1443 * t1538;
t1559 = pkin(7) * t1365 + t1294 * t1542 + t1339 * t1538;
t1423 = t1476 * t1538 + t1477 * t1542;
t1558 = pkin(7) * t1423 + t1396;
t1376 = t1441 * t1532 - t1442 * t1534;
t1229 = -qJ(3) * t1376 - t1249;
t1336 = t1378 * t1542 - t1434 * t1538;
t1557 = pkin(7) * t1336 + t1229 * t1538 - t1376 * t1690;
t1235 = t1250 * t1542 + t1408 * t1538;
t1554 = pkin(7) * t1235 + t1249 * t1625;
t1426 = -t1532 * t1556 + t1534 * t1569;
t1553 = t1538 * t1426 - t1577;
t1428 = t1472 * t1534 + t1483 * t1532;
t1552 = t1538 * t1428 + t1577;
t1516 = qJDD(1) * t1539 + t1543 * t1544;
t1514 = t1535 * t1631;
t1508 = -t1524 - t1641;
t1507 = -t1524 + t1641;
t1503 = -pkin(6) * t1516 + g(3) * t1543;
t1489 = t1535 * t1542 * t1502;
t1488 = t1502 * t1656;
t1482 = (t1530 + t1531) * t1648;
t1474 = (t1652 + (qJD(2) + t1525) * t1681) * t1533;
t1469 = t1501 * t1542 - t1530 * t1648;
t1468 = -t1531 * t1648 - t1660;
t1466 = t1505 * t1542 - t1664;
t1465 = -t1504 * t1538 + t1661;
t1452 = (t1475 * t1535 + t1542 * t1659) * t1538;
t1451 = (t1529 * t1542 * t1618 + t1501 * t1533) * t1538;
t1450 = -t1618 * t1640 + t1488;
t1449 = t1489 + (-t1535 * t1648 - t1659) * t1655;
t1436 = (-t1532 * t1494 - t1534 * t1632) * t1646;
t1435 = (t1534 * t1494 - t1532 * t1632) * t1646;
t1427 = t1472 * t1532 - t1483 * t1534;
t1425 = t1532 * t1569 + t1534 * t1556;
t1424 = -t1475 * t1538 + t1478 * t1542;
t1421 = t1478 * t1533 + t1535 * t1585;
t1420 = -t1477 * t1533 + t1535 * t1587;
t1419 = -t1476 * t1533 + t1535 * t1586;
t1418 = -t1478 * t1535 + t1533 * t1585;
t1417 = t1477 * t1535 + t1533 * t1587;
t1416 = t1476 * t1535 + t1533 * t1586;
t1415 = -t1474 * t1533 + t1535 * t1588;
t1414 = t1474 * t1535 + t1533 * t1588;
t1413 = t1436 * t1542 - t1660;
t1412 = -t1507 * t1533 + t1535 * t1590;
t1411 = -t1508 * t1533 + t1535 * t1589;
t1410 = t1507 * t1535 + t1533 * t1590;
t1409 = t1508 * t1535 + t1533 * t1589;
t1402 = t1479 * t1532 - t1669;
t1401 = t1480 * t1534 + t1703;
t1394 = t1542 * t1428 - t1578;
t1393 = t1542 * t1426 + t1578;
t1375 = t1440 * t1532 + t1443 * t1534;
t1372 = t1484 * t1533 + t1535 * t1591;
t1371 = -t1484 * t1535 + t1533 * t1591;
t1369 = t1436 * t1535 * t1538 - t1435 * t1533 + t1489;
t1368 = t1435 * t1535 + t1436 * t1657 + t1488;
t1367 = t1405 * t1542 + t1441 * t1538;
t1366 = t1404 * t1542 + t1442 * t1538;
t1363 = t1377 * t1542 + t1464 * t1538;
t1346 = -t1533 * t1427 + t1535 * t1552;
t1345 = -t1533 * t1425 + t1535 * t1553;
t1344 = t1535 * t1427 + t1533 * t1552;
t1343 = t1535 * t1425 + t1533 * t1553;
t1340 = -t1666 + (-t1418 * t1533 - t1421 * t1535) * pkin(7);
t1334 = -t1665 + (-t1414 * t1533 - t1415 * t1535) * pkin(7);
t1333 = -pkin(1) * t1418 + t1453 * t1533 + t1535 * t1621;
t1332 = pkin(1) * t1421 - t1453 * t1535 + t1533 * t1621;
t1324 = -pkin(1) * t1414 + t1454 * t1533 + t1535 * t1622;
t1323 = pkin(1) * t1415 - t1454 * t1535 + t1533 * t1622;
t1314 = t1379 * t1534 + t1380 * t1532;
t1313 = -pkin(2) * t1443 + qJ(3) * t1403 + t1672;
t1312 = pkin(1) * t1372 + t1396 * t1686;
t1311 = pkin(7) * t1396 * t1535 - pkin(1) * t1371;
t1310 = -t1402 * t1533 + t1535 * t1592;
t1309 = -t1401 * t1533 + t1535 * t1593;
t1308 = -t1400 * t1533 + t1535 * t1594;
t1307 = t1402 * t1535 + t1533 * t1592;
t1306 = t1401 * t1535 + t1533 * t1593;
t1305 = t1400 * t1535 + t1533 * t1594;
t1304 = pkin(2) * t1440 + qJ(3) * t1385 - t1671;
t1303 = t1315 * t1542 - t1496 * t1538;
t1302 = -pkin(1) * t1409 + t1535 * t1558;
t1301 = pkin(1) * t1411 + t1533 * t1558;
t1300 = (-t1371 * t1533 - t1372 * t1535) * pkin(7);
t1299 = (-t1409 * t1533 - t1411 * t1535) * pkin(7) - t1591;
t1297 = -t1384 * t1533 + t1535 * t1595;
t1296 = t1384 * t1535 + t1533 * t1595;
t1293 = -t1375 * t1533 + t1535 * t1598;
t1292 = t1375 * t1535 + t1533 * t1598;
t1282 = -t1376 * t1533 + t1535 * t1597;
t1281 = t1376 * t1535 + t1533 * t1597;
t1266 = t1353 * t1534 + t1355 * t1532;
t1265 = t1352 * t1534 + t1354 * t1532;
t1258 = t1349 * t1534 + t1350 * t1532;
t1257 = t1347 * t1534 + t1348 * t1532;
t1238 = t1260 * t1542 + t1643;
t1237 = t1259 * t1542 - t1643;
t1236 = -pkin(2) * t1408 + qJ(3) * t1250;
t1234 = -t1314 * t1533 + t1535 * t1599;
t1233 = t1314 * t1535 + t1533 * t1599;
t1232 = t1268 * t1542 - t1358 * t1538;
t1231 = t1267 * t1542 + t1361 * t1538;
t1224 = pkin(2) * t1434 + qJ(3) * t1378 + t1250;
t1207 = t1271 * t1534 + t1273 * t1532;
t1205 = t1269 * t1534 + t1270 * t1532;
t1193 = t1209 * t1542 + t1398 * t1538;
t1190 = -t1258 * t1533 + t1535 * t1575;
t1189 = -t1257 * t1533 + t1535 * t1576;
t1188 = t1258 * t1535 + t1533 * t1575;
t1187 = t1257 * t1535 + t1533 * t1576;
t1185 = -t1266 * t1533 + t1535 * t1600;
t1184 = -t1265 * t1533 + t1535 * t1601;
t1183 = t1266 * t1535 + t1533 * t1600;
t1182 = t1265 * t1535 + t1533 * t1601;
t1179 = t1242 * t1534 + t1244 * t1532;
t1178 = t1241 * t1534 + t1243 * t1532;
t1177 = -t1255 * t1533 + t1535 * t1602;
t1176 = t1255 * t1535 + t1533 * t1602;
t1175 = t1206 * t1542 + t1319 * t1538;
t1174 = -t1249 * t1533 + t1535 * t1603;
t1173 = t1249 * t1535 + t1533 * t1603;
t1172 = -t1294 * t1538 + t1339 * t1542 + (-t1305 * t1533 - t1308 * t1535) * pkin(7);
t1170 = -t1239 * t1533 + t1535 * t1604;
t1169 = t1239 * t1535 + t1533 * t1604;
t1168 = -t1283 * t1538 + t1326 * t1542 + (-t1296 * t1533 - t1297 * t1535) * pkin(7);
t1167 = -pkin(1) * t1305 - t1313 * t1533 + t1535 * t1559;
t1166 = pkin(1) * t1308 + t1313 * t1535 + t1533 * t1559;
t1162 = t1181 * t1542 + t1279 * t1538;
t1161 = t1180 * t1542 - t1277 * t1538;
t1158 = -pkin(1) * t1296 - t1304 * t1533 + t1535 * t1560;
t1157 = pkin(1) * t1297 + t1304 * t1535 + t1533 * t1560;
t1155 = t1376 * t1691 + t1229 * t1542 + (-t1281 * t1533 - t1282 * t1535) * pkin(7);
t1147 = t1212 * t1534 + t1214 * t1532;
t1146 = t1211 * t1534 + t1213 * t1532;
t1139 = -pkin(2) * t1697 + qJ(3) * t1256 + t1226 * t1534 + t1254 * t1532;
t1138 = -t1207 * t1533 + t1535 * t1606;
t1137 = t1207 * t1535 + t1533 * t1606;
t1135 = t1199 * t1534 + t1200 * t1532;
t1134 = -t1208 * t1533 + t1535 * t1605;
t1133 = t1208 * t1535 + t1533 * t1605;
t1131 = -pkin(2) * t1357 + qJ(3) * t1240 + t1225 * t1534 + t1248 * t1532;
t1130 = -t1205 * t1533 + t1535 * t1607;
t1129 = t1205 * t1535 + t1533 * t1607;
t1126 = t1149 * t1542 + t1262 * t1538;
t1125 = t1148 * t1542 + t1261 * t1538;
t1121 = -pkin(1) * t1281 - t1224 * t1533 + t1535 * t1557;
t1120 = pkin(1) * t1282 + t1224 * t1535 + t1533 * t1557;
t1117 = -t1179 * t1533 + t1535 * t1608;
t1116 = -t1178 * t1533 + t1535 * t1609;
t1115 = t1179 * t1535 + t1533 * t1608;
t1114 = t1178 * t1535 + t1533 * t1609;
t1113 = t1136 * t1542 + t1216 * t1538;
t1105 = t1624 * t1249 + (-t1173 * t1533 - t1174 * t1535) * pkin(7);
t1104 = -pkin(1) * t1173 - t1236 * t1533 + t1535 * t1554;
t1103 = pkin(1) * t1174 + t1236 * t1535 + t1533 * t1554;
t1102 = -t1147 * t1533 + t1535 * t1610;
t1101 = -t1146 * t1533 + t1535 * t1611;
t1100 = t1147 * t1535 + t1533 * t1610;
t1099 = t1146 * t1535 + t1533 * t1611;
t1097 = -t1143 * t1533 + t1535 * t1612;
t1096 = t1143 * t1535 + t1533 * t1612;
t1095 = -t1140 * t1533 + t1535 * t1613;
t1094 = t1140 * t1535 + t1533 * t1613;
t1089 = -t1135 * t1533 + t1535 * t1614;
t1088 = t1135 * t1535 + t1533 * t1614;
t1084 = -t1127 * t1533 + t1535 * t1615;
t1083 = t1127 * t1535 + t1533 * t1615;
t1079 = -pkin(2) * t1370 + qJ(3) * t1210 + t1124 * t1534 + t1132 * t1532;
t1078 = t1154 * t1542 - t1165 * t1538 + (-t1176 * t1533 - t1177 * t1535) * pkin(7);
t1076 = t1142 * t1542 - t1156 * t1538 + (-t1169 * t1533 - t1170 * t1535) * pkin(7);
t1074 = -t1110 * t1533 + t1535 * t1616;
t1073 = t1110 * t1535 + t1533 * t1616;
t1072 = -pkin(2) * t1335 - pkin(8) * t1680 + qJ(3) * t1111 + t1145 * t1534;
t1070 = -pkin(1) * t1176 - t1139 * t1533 + t1535 * t1561;
t1069 = pkin(1) * t1177 + t1139 * t1535 + t1533 * t1561;
t1067 = -pkin(1) * t1169 - t1131 * t1533 + t1535 * t1562;
t1066 = pkin(1) * t1170 + t1131 * t1535 + t1533 * t1562;
t1063 = t1082 * t1542 - t1171 * t1538 + (-t1133 * t1533 - t1134 * t1535) * pkin(7);
t1059 = -pkin(2) * t1252 + qJ(3) * t1144 + t1081 * t1534 + t1091 * t1532;
t1057 = -pkin(2) * t1246 + qJ(3) * t1141 + t1080 * t1534 + t1087 * t1532;
t1055 = -pkin(1) * t1133 - t1079 * t1533 + t1535 * t1563;
t1054 = pkin(1) * t1134 + t1079 * t1535 + t1533 * t1563;
t1052 = -pkin(2) * t1217 + qJ(3) * t1128 + t1071 * t1534 + t1077 * t1532;
t1050 = -t1064 * t1533 + t1535 * t1617;
t1049 = t1064 * t1535 + t1533 * t1617;
t1048 = t1075 * t1542 - t1085 * t1538 + (-t1073 * t1533 - t1074 * t1535) * pkin(7);
t1047 = t1061 * t1542 - t1090 * t1538 + (-t1096 * t1533 - t1097 * t1535) * pkin(7);
t1046 = t1060 * t1542 - t1086 * t1538 + (-t1094 * t1533 - t1095 * t1535) * pkin(7);
t1045 = -pkin(1) * t1073 - t1072 * t1533 + t1535 * t1564;
t1044 = pkin(1) * t1074 + t1072 * t1535 + t1533 * t1564;
t1043 = t1053 * t1542 - t1068 * t1538 + (-t1083 * t1533 - t1084 * t1535) * pkin(7);
t1041 = -pkin(1) * t1096 - t1059 * t1533 + t1535 * t1565;
t1040 = pkin(1) * t1097 + t1059 * t1535 + t1533 * t1565;
t1039 = -pkin(1) * t1094 - t1057 * t1533 + t1535 * t1566;
t1038 = pkin(1) * t1095 + t1057 * t1535 + t1533 * t1566;
t1037 = -pkin(2) * t1108 + qJ(3) * t1065 + t1056 * t1534 + t1062 * t1532;
t1036 = -pkin(1) * t1083 - t1052 * t1533 + t1535 * t1567;
t1035 = pkin(1) * t1084 + t1052 * t1535 + t1533 * t1567;
t1034 = t1042 * t1542 - t1051 * t1538 + (-t1049 * t1533 - t1050 * t1535) * pkin(7);
t1033 = -pkin(1) * t1049 - t1037 * t1533 + t1535 * t1568;
t1032 = pkin(1) * t1050 + t1037 * t1535 + t1533 * t1568;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1517, 0, -t1516, 0, t1626, -t1503, -t1584, -pkin(6) * t1584, -t1452 * t1539 + t1469 * t1543, -t1412 * t1539 + t1424 * t1543, -t1419 * t1539 + t1465 * t1543, -t1449 * t1539 + t1468 * t1543, -t1420 * t1539 + t1466 * t1543, t1543 * t1482 + t1539 * t1581, t1543 * t1340 - t1539 * t1333 - pkin(6) * (t1421 * t1543 + t1467 * t1539), t1543 * t1334 - t1539 * t1324 - pkin(6) * (t1415 * t1543 + t1463 * t1539), t1543 * t1299 - t1539 * t1302 - pkin(6) * (t1411 * t1543 + t1423 * t1539), t1543 * t1300 - t1539 * t1311 - pkin(6) * (t1372 * t1543 + t1396 * t1539), -t1346 * t1539 + t1394 * t1543, -t1293 * t1539 + t1363 * t1543, -t1309 * t1539 + t1366 * t1543, -t1345 * t1539 + t1393 * t1543, -t1310 * t1539 + t1367 * t1543, -t1369 * t1539 + t1413 * t1543, t1543 * t1168 - t1539 * t1158 - pkin(6) * (t1297 * t1543 + t1351 * t1539), t1543 * t1172 - t1539 * t1167 - pkin(6) * (t1308 * t1543 + t1365 * t1539), t1543 * t1155 - t1539 * t1121 - pkin(6) * (t1282 * t1543 + t1336 * t1539), t1543 * t1105 - t1539 * t1104 - pkin(6) * (t1174 * t1543 + t1235 * t1539), -t1190 * t1539 + t1238 * t1543, -t1138 * t1539 + t1193 * t1543, -t1184 * t1539 + t1231 * t1543, -t1189 * t1539 + t1237 * t1543, -t1185 * t1539 + t1232 * t1543, -t1234 * t1539 + t1303 * t1543, t1543 * t1076 - t1539 * t1067 - pkin(6) * (t1170 * t1543 + t1220 * t1539), t1543 * t1078 - t1539 * t1070 - pkin(6) * (t1177 * t1543 + t1227 * t1539), t1543 * t1063 - t1539 * t1055 - pkin(6) * (t1134 * t1543 + t1186 * t1539), t1543 * t1048 - t1539 * t1045 - pkin(6) * (t1074 * t1543 + t1106 * t1539), -t1117 * t1539 + t1162 * t1543, -t1089 * t1539 + t1113 * t1543, -t1101 * t1539 + t1125 * t1543, -t1116 * t1539 + t1161 * t1543, -t1102 * t1539 + t1126 * t1543, -t1130 * t1539 + t1175 * t1543, t1543 * t1046 - t1539 * t1039 - pkin(6) * (t1095 * t1543 + t1118 * t1539), t1543 * t1047 - t1539 * t1041 - pkin(6) * (t1097 * t1543 + t1119 * t1539), t1543 * t1043 - t1539 * t1036 - pkin(6) * (t1084 * t1543 + t1112 * t1539), t1543 * t1034 - t1539 * t1033 - pkin(6) * (t1050 * t1543 + t1058 * t1539); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1516, 0, t1517, 0, t1503, t1626, t1633, pkin(6) * t1633, t1452 * t1543 + t1469 * t1539, t1412 * t1543 + t1424 * t1539, t1419 * t1543 + t1465 * t1539, t1449 * t1543 + t1468 * t1539, t1420 * t1543 + t1466 * t1539, t1539 * t1482 - t1543 * t1581, t1539 * t1340 + t1543 * t1333 + pkin(6) * (-t1421 * t1539 + t1467 * t1543), t1539 * t1334 + t1543 * t1324 + pkin(6) * (-t1415 * t1539 + t1463 * t1543), t1539 * t1299 + t1543 * t1302 + pkin(6) * (-t1411 * t1539 + t1423 * t1543), t1539 * t1300 + t1543 * t1311 + pkin(6) * (-t1372 * t1539 + t1396 * t1543), t1346 * t1543 + t1394 * t1539, t1293 * t1543 + t1363 * t1539, t1309 * t1543 + t1366 * t1539, t1345 * t1543 + t1393 * t1539, t1310 * t1543 + t1367 * t1539, t1369 * t1543 + t1413 * t1539, t1539 * t1168 + t1543 * t1158 + pkin(6) * (-t1297 * t1539 + t1351 * t1543), t1539 * t1172 + t1543 * t1167 + pkin(6) * (-t1308 * t1539 + t1365 * t1543), t1539 * t1155 + t1543 * t1121 + pkin(6) * (-t1282 * t1539 + t1336 * t1543), t1539 * t1105 + t1543 * t1104 + pkin(6) * (-t1174 * t1539 + t1235 * t1543), t1190 * t1543 + t1238 * t1539, t1138 * t1543 + t1193 * t1539, t1184 * t1543 + t1231 * t1539, t1189 * t1543 + t1237 * t1539, t1185 * t1543 + t1232 * t1539, t1234 * t1543 + t1303 * t1539, t1539 * t1076 + t1543 * t1067 + pkin(6) * (-t1170 * t1539 + t1220 * t1543), t1539 * t1078 + t1543 * t1070 + pkin(6) * (-t1177 * t1539 + t1227 * t1543), t1539 * t1063 + t1543 * t1055 + pkin(6) * (-t1134 * t1539 + t1186 * t1543), t1539 * t1048 + t1543 * t1045 + pkin(6) * (-t1074 * t1539 + t1106 * t1543), t1117 * t1543 + t1162 * t1539, t1089 * t1543 + t1113 * t1539, t1101 * t1543 + t1125 * t1539, t1116 * t1543 + t1161 * t1539, t1102 * t1543 + t1126 * t1539, t1130 * t1543 + t1175 * t1539, t1539 * t1046 + t1543 * t1039 + pkin(6) * (-t1095 * t1539 + t1118 * t1543), t1539 * t1047 + t1543 * t1041 + pkin(6) * (-t1097 * t1539 + t1119 * t1543), t1539 * t1043 + t1543 * t1036 + pkin(6) * (-t1084 * t1539 + t1112 * t1543), t1539 * t1034 + t1543 * t1033 + pkin(6) * (-t1050 * t1539 + t1058 * t1543); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1519, t1520, 0, 0, t1451, t1410, t1416, t1450, t1417, t1514, t1332, t1323, t1301, t1312, t1344, t1292, t1306, t1343, t1307, t1368, t1157, t1166, t1120, t1103, t1188, t1137, t1182, t1187, t1183, t1233, t1066, t1069, t1054, t1044, t1115, t1088, t1099, t1114, t1100, t1129, t1038, t1040, t1035, t1032; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1544, 0, 0, -g(3), -t1519, 0, t1469, t1424, t1465, t1468, t1466, t1482, t1340, t1334, t1299, t1300, t1394, t1363, t1366, t1393, t1367, t1413, t1168, t1172, t1155, t1105, t1238, t1193, t1231, t1237, t1232, t1303, t1076, t1078, t1063, t1048, t1162, t1113, t1125, t1161, t1126, t1175, t1046, t1047, t1043, t1034; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1544, 0, qJDD(1), 0, g(3), 0, -t1520, 0, t1452, t1412, t1419, t1449, t1420, -t1581, t1333, t1324, t1302, t1311, t1346, t1293, t1309, t1345, t1310, t1369, t1158, t1167, t1121, t1104, t1190, t1138, t1184, t1189, t1185, t1234, t1067, t1070, t1055, t1045, t1117, t1089, t1101, t1116, t1102, t1130, t1039, t1041, t1036, t1033; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1519, t1520, 0, 0, t1451, t1410, t1416, t1450, t1417, t1514, t1332, t1323, t1301, t1312, t1344, t1292, t1306, t1343, t1307, t1368, t1157, t1166, t1120, t1103, t1188, t1137, t1182, t1187, t1183, t1233, t1066, t1069, t1054, t1044, t1115, t1088, t1099, t1114, t1100, t1129, t1038, t1040, t1035, t1032; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1501, t1478, t1500, -t1510, t1505, t1510, 0, -t1484, t1453, 0, t1428, t1377, t1404, t1426, t1405, t1436, t1326, t1339, t1229, -qJ(3) * t1249, t1260, t1209, t1267, t1259, t1268, t1315, t1142, t1154, t1082, t1075, t1181, t1136, t1148, t1180, t1149, t1206, t1060, t1061, t1053, t1042; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1509, t1475, t1504, t1502, t1499, -t1509, t1484, 0, t1454, 0, t1619, -t1464, -t1442, -t1619, -t1441, t1502, t1283, t1294, -pkin(2) * t1376, -pkin(2) * t1249, -t1399, -t1398, -t1361, t1399, t1358, t1496, t1156, t1165, t1171, t1085, -t1279, -t1216, -t1261, t1277, -t1262, -t1319, t1086, t1090, t1068, t1051; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1518, t1507, t1476, t1518, t1477, t1631, -t1453, -t1454, 0, 0, t1427, t1375, t1401, t1425, t1402, t1435, t1304, t1313, t1224, t1236, t1258, t1207, t1265, t1257, t1266, t1314, t1131, t1139, t1079, t1072, t1179, t1135, t1146, t1178, t1147, t1205, t1057, t1059, t1052, t1037; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1472, t1440, t1696, t1569, t1479, -t1569, 0, t1408, t1328, 0, t1350, t1273, t1354, t1348, t1355, t1380, t1248, t1254, t1132, -pkin(8) * t1159, t1244, t1200, t1213, t1243, t1214, t1270, t1087, t1091, t1077, t1062; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1483, t1443, t1480, t1556, -t1444, t1483, -t1408, 0, t1329, 0, t1349, t1271, t1352, t1347, t1353, t1379, t1225, t1226, t1124, t1145, t1242, t1199, t1211, t1241, t1212, t1269, t1080, t1081, t1071, t1056; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1619, t1464, t1442, t1619, t1441, -t1502, -t1328, -t1329, 0, 0, t1399, t1398, t1361, -t1399, -t1358, -t1496, t1580, t1627, t1688, t1689, t1279, t1216, t1261, -t1277, t1262, t1319, t1582, t1583, t1574, t1628; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1383, -t1357, t1694, -t1447, t1437, t1447, 0, t1335, t1222, 0, t1280, t1218, t1263, t1278, t1264, t1320, t1163, t1164, t1098, -pkin(9) * t1108; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1579, t1697, t1438, t1382, -t1388, t1579, -t1335, 0, t1223, 0, -t1374, -t1373, -t1290, t1374, t1286, -t1381, t1122, t1123, -pkin(4) * t1217, -pkin(4) * t1108; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1399, t1398, t1361, -t1399, -t1358, -t1496, -t1222, -t1223, 0, 0, t1279, t1216, t1261, -t1277, t1262, t1319, t1637, t1638, t1629, t1653; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1331, t1287, t1695, t1391, t1386, -t1391, 0, t1197, t1152, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1392, t1289, t1387, t1330, t1317, -t1392, -t1197, 0, t1153, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1374, t1373, t1290, -t1374, -t1286, t1381, -t1152, -t1153, 0, 0;];
m_new_reg = t1;
