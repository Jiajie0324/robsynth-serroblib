% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RPRPRP4
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 17:45
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RPRPRP4_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP4_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP4_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPRP4_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRP4_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP4_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 17:44:58
% EndTime: 2019-05-05 17:45:26
% DurationCPUTime: 30.66s
% Computational Cost: add. (56131->767), mult. (112345->838), div. (0->0), fcn. (64065->8), ass. (0->508)
t1490 = sin(qJ(5));
t1493 = cos(qJ(5));
t1494 = cos(qJ(3));
t1624 = qJD(1) * t1494;
t1434 = qJD(3) * t1493 - t1490 * t1624;
t1419 = t1434 ^ 2;
t1491 = sin(qJ(3));
t1625 = qJD(1) * t1491;
t1468 = qJD(5) + t1625;
t1464 = t1468 ^ 2;
t1345 = t1464 + t1419;
t1473 = qJD(3) * t1624;
t1573 = t1491 * qJDD(1);
t1441 = t1473 + t1573;
t1420 = qJDD(5) + t1441;
t1432 = qJD(3) * t1490 + t1493 * t1624;
t1609 = t1434 * t1432;
t1667 = t1420 + t1609;
t1585 = t1490 * t1667;
t1222 = t1345 * t1493 + t1585;
t1476 = t1494 * qJDD(1);
t1565 = qJD(3) * t1625;
t1527 = -t1476 + t1565;
t1343 = -t1432 * qJD(5) + t1493 * qJDD(3) + t1490 * t1527;
t1610 = t1432 * t1468;
t1670 = t1343 - t1610;
t1154 = t1222 * t1491 - t1494 * t1670;
t1613 = t1667 * t1493;
t1236 = t1490 * t1345 - t1613;
t1486 = sin(pkin(9));
t1487 = cos(pkin(9));
t1097 = t1154 * t1486 + t1236 * t1487;
t1099 = t1154 * t1487 - t1236 * t1486;
t1492 = sin(qJ(1));
t1495 = cos(qJ(1));
t1805 = pkin(6) * (t1097 * t1492 - t1099 * t1495);
t1804 = pkin(6) * (t1097 * t1495 + t1099 * t1492);
t1803 = pkin(1) * t1097;
t1802 = qJ(2) * t1097;
t1160 = t1222 * t1494 + t1491 * t1670;
t1801 = pkin(1) * t1160 + qJ(2) * t1099;
t1645 = t1432 ^ 2;
t1393 = t1645 - t1464;
t1248 = t1393 * t1490 + t1613;
t1549 = -t1490 * qJDD(3) + t1493 * t1527;
t1342 = qJD(5) * t1434 - t1549;
t1404 = t1468 * t1434;
t1277 = t1342 - t1404;
t1168 = t1248 * t1491 - t1277 * t1494;
t1253 = t1393 * t1493 - t1585;
t1111 = t1168 * t1486 - t1253 * t1487;
t1115 = t1168 * t1487 + t1253 * t1486;
t1798 = t1111 * t1495 + t1115 * t1492;
t1797 = t1111 * t1492 - t1115 * t1495;
t1671 = t1342 + t1404;
t1184 = -t1490 * t1671 + t1493 * t1670;
t1668 = t1419 - t1645;
t1143 = t1184 * t1491 + t1494 * t1668;
t1586 = t1490 * t1670;
t1188 = -t1671 * t1493 - t1586;
t1083 = t1143 * t1486 - t1188 * t1487;
t1085 = t1143 * t1487 + t1188 * t1486;
t1796 = t1083 * t1495 + t1085 * t1492;
t1795 = t1083 * t1492 - t1085 * t1495;
t1793 = pkin(2) * t1160;
t1792 = pkin(7) * t1160;
t1791 = pkin(2) * t1236 + pkin(7) * t1154;
t1482 = t1491 ^ 2;
t1496 = qJD(1) ^ 2;
t1477 = t1482 * t1496;
t1646 = qJD(3) ^ 2;
t1461 = -t1477 - t1646;
t1580 = t1494 * t1496;
t1467 = t1491 * t1580;
t1452 = qJDD(3) - t1467;
t1581 = t1494 * t1452;
t1386 = t1461 * t1491 + t1581;
t1440 = 0.2e1 * t1473 + t1573;
t1300 = t1386 * t1486 + t1440 * t1487;
t1304 = t1386 * t1487 - t1440 * t1486;
t1790 = pkin(6) * (t1300 * t1492 - t1304 * t1495);
t1789 = pkin(6) * (t1300 * t1495 + t1304 * t1492);
t1395 = t1419 - t1464;
t1666 = -t1609 + t1420;
t1612 = t1666 * t1493;
t1718 = t1490 * t1395 + t1612;
t1665 = t1610 + t1343;
t1308 = t1490 * t1666;
t1719 = -t1395 * t1493 + t1308;
t1746 = t1491 * t1719 + t1494 * t1665;
t1764 = t1486 * t1718 + t1487 * t1746;
t1765 = t1486 * t1746 - t1487 * t1718;
t1788 = -t1492 * t1765 + t1495 * t1764;
t1787 = t1492 * t1764 + t1495 * t1765;
t1786 = pkin(1) * t1300;
t1664 = -t1645 - t1464;
t1686 = t1493 * t1664 - t1308;
t1682 = t1490 * t1664 + t1612;
t1709 = t1491 * t1682 + t1494 * t1671;
t1748 = t1486 * t1709 - t1487 * t1686;
t1785 = pkin(1) * t1748;
t1783 = pkin(4) * t1222;
t1644 = t1494 ^ 2;
t1478 = t1644 * t1496;
t1463 = -t1478 - t1646;
t1451 = t1467 + qJDD(3);
t1599 = t1451 * t1491;
t1385 = -t1463 * t1494 + t1599;
t1442 = t1476 - 0.2e1 * t1565;
t1299 = t1385 * t1486 - t1442 * t1487;
t1303 = t1385 * t1487 + t1442 * t1486;
t1782 = pkin(6) * (t1299 * t1492 - t1303 * t1495);
t1781 = pkin(6) * (t1299 * t1495 + t1303 * t1492);
t1780 = pkin(8) * t1222;
t1779 = pkin(8) * t1236;
t1778 = qJ(2) * t1300;
t1777 = qJ(2) * t1748;
t1776 = qJ(4) * t1236;
t1642 = pkin(3) + pkin(8);
t1771 = t1236 * t1642;
t1598 = t1452 * t1491;
t1378 = -t1461 * t1494 + t1598;
t1768 = -pkin(1) * t1378 + qJ(2) * t1304;
t1708 = t1491 * t1671 - t1494 * t1682;
t1747 = t1486 * t1686 + t1487 * t1709;
t1767 = -pkin(1) * t1708 + qJ(2) * t1747;
t1766 = qJ(4) * t1670 + t1222 * t1642;
t1163 = t1248 * t1494 + t1277 * t1491;
t1460 = -t1477 + t1646;
t1582 = t1494 * t1451;
t1380 = -t1460 * t1491 + t1582;
t1328 = t1380 * t1486 - t1487 * t1573;
t1332 = t1380 * t1487 + t1486 * t1573;
t1761 = t1328 * t1495 + t1332 * t1492;
t1760 = t1328 * t1492 - t1332 * t1495;
t1759 = pkin(6) * (-t1492 * t1748 + t1495 * t1747);
t1758 = pkin(6) * (t1492 * t1747 + t1495 * t1748);
t1757 = pkin(1) * t1299;
t1755 = pkin(2) * t1708;
t1754 = pkin(7) * t1708;
t1753 = qJ(2) * t1299;
t1750 = -pkin(2) * t1686 + pkin(7) * t1709;
t1376 = t1463 * t1491 + t1582;
t1749 = pkin(1) * t1376 + qJ(2) * t1303;
t1142 = t1184 * t1494 - t1491 * t1668;
t1745 = t1491 * t1665 - t1494 * t1719;
t1462 = t1478 - t1646;
t1383 = -t1462 * t1494 + t1598;
t1331 = t1383 * t1486 + t1487 * t1476;
t1335 = t1383 * t1487 - t1486 * t1476;
t1742 = t1331 * t1495 + t1335 * t1492;
t1741 = t1331 * t1492 - t1335 * t1495;
t1592 = t1468 * t1493;
t1566 = t1432 * t1592;
t1266 = t1490 * t1342 + t1566;
t1593 = t1468 * t1490;
t1264 = -t1342 * t1493 + t1432 * t1593;
t1567 = t1494 * t1609;
t1688 = t1264 * t1491 - t1567;
t1710 = t1266 * t1486 + t1487 * t1688;
t1712 = -t1266 * t1487 + t1486 * t1688;
t1740 = -t1492 * t1712 + t1495 * t1710;
t1739 = t1492 * t1710 + t1495 * t1712;
t1388 = t1434 * t1593;
t1294 = -t1388 + t1566;
t1673 = (t1432 * t1490 + t1434 * t1493) * t1468;
t1683 = t1494 * t1420 - t1491 * t1673;
t1711 = -t1294 * t1486 + t1487 * t1683;
t1713 = t1294 * t1487 + t1486 * t1683;
t1738 = -t1492 * t1713 + t1495 * t1711;
t1737 = t1492 * t1711 + t1495 * t1713;
t1735 = pkin(2) * t1376;
t1314 = -t1645 - t1419;
t1733 = pkin(4) * t1314;
t1732 = pkin(4) * t1682;
t1731 = pkin(7) * t1376;
t1730 = pkin(8) * t1682;
t1729 = pkin(8) * t1686;
t1728 = qJ(4) * t1314;
t1727 = qJ(4) * t1686;
t1726 = qJ(6) * t1670;
t1725 = t1314 * t1491;
t1724 = t1314 * t1494;
t1721 = t1642 * t1682;
t1720 = t1642 * t1686;
t1457 = g(1) * t1495 + g(2) * t1492;
t1438 = -pkin(1) * t1496 - t1457;
t1456 = g(1) * t1492 - t1495 * g(2);
t1517 = qJDD(1) * pkin(1) + t1456;
t1347 = t1487 * t1438 + t1486 * t1517;
t1324 = -t1496 * pkin(2) + qJDD(1) * pkin(7) + t1347;
t1529 = -pkin(3) * t1494 - qJ(4) * t1491;
t1555 = t1496 * t1529 + t1324;
t1483 = g(3) - qJDD(2);
t1584 = t1491 * t1483;
t1505 = -pkin(3) * t1646 + t1494 * t1555 - t1584;
t1707 = 2 * qJD(4);
t1501 = qJD(3) * t1707 + t1505;
t1717 = t1501 + (qJDD(3) + t1452) * qJ(4) - pkin(3) * t1461;
t1346 = t1486 * t1438 - t1487 * t1517;
t1552 = t1346 * t1486 + t1487 * t1347;
t1244 = t1346 * t1487 - t1347 * t1486;
t1620 = t1244 * t1492;
t1716 = t1495 * t1552 + t1620;
t1619 = t1244 * t1495;
t1715 = -t1492 * t1552 + t1619;
t1714 = -pkin(2) * t1440 - pkin(7) * t1386;
t1705 = pkin(2) * t1378;
t1704 = pkin(7) * t1378;
t1690 = t1441 + t1473;
t1689 = pkin(2) * t1442 - pkin(7) * t1385;
t1568 = t1491 * t1609;
t1687 = -t1264 * t1494 - t1568;
t1444 = qJDD(1) * t1486 + t1487 * t1496;
t1400 = qJ(2) * t1444 - t1483 * t1487;
t1445 = qJDD(1) * t1487 - t1486 * t1496;
t1523 = -qJ(2) * t1445 - t1483 * t1486;
t1669 = t1495 * t1444 + t1445 * t1492;
t1685 = pkin(6) * t1669 + t1495 * t1400 - t1492 * t1523;
t1684 = t1491 * t1420 + t1494 * t1673;
t1355 = -t1444 * t1492 + t1495 * t1445;
t1681 = -pkin(6) * t1355 + t1492 * t1400 + t1495 * t1523;
t1269 = t1343 * t1493 - t1388;
t1268 = t1343 * t1490 + t1434 * t1592;
t1513 = t1268 * t1491 + t1567;
t1650 = t1269 * t1486 + t1487 * t1513;
t1653 = -t1487 * t1269 + t1486 * t1513;
t1680 = -t1492 * t1653 + t1495 * t1650;
t1679 = t1492 * t1650 + t1495 * t1653;
t1455 = pkin(4) * t1625 - qJD(3) * pkin(8);
t1579 = t1707 + t1455;
t1621 = qJDD(3) * qJ(4);
t1661 = -t1527 * pkin(4) - pkin(8) * t1478 + t1621;
t1195 = qJD(3) * t1579 + t1505 + t1661;
t1662 = t1342 * pkin(5) - t1726;
t1092 = (pkin(5) * t1468 - (2 * qJD(6))) * t1434 + t1195 + t1662;
t1562 = qJ(6) * t1490 + pkin(4);
t1633 = pkin(5) * t1493;
t1677 = t1092 * (t1562 + t1633);
t1323 = -qJDD(1) * pkin(2) - t1496 * pkin(7) + t1346;
t1506 = t1527 * pkin(3) - qJ(4) * t1690 + t1323;
t1190 = -pkin(4) * t1478 - t1476 * pkin(8) + (qJD(3) * t1642 - t1579) * t1625 + t1506;
t1472 = t1494 * t1483;
t1536 = -qJDD(3) * pkin(3) - qJ(4) * t1646 + qJDD(4) + t1472;
t1196 = -qJDD(3) * pkin(8) + (t1441 - t1473) * pkin(4) + (-pkin(8) * t1580 + t1555) * t1491 + t1536;
t1102 = t1190 * t1490 - t1493 * t1196;
t1103 = t1493 * t1190 + t1490 * t1196;
t1672 = -t1493 * t1102 + t1490 * t1103;
t1289 = t1491 * t1324 + t1472;
t1291 = t1494 * t1324 - t1584;
t1200 = t1491 * t1289 + t1494 * t1291;
t1374 = t1462 * t1491 + t1581;
t1241 = t1491 * t1555 + t1536;
t1663 = -pkin(3) * t1451 - qJ(4) * t1463 + t1241;
t1659 = qJ(4) * t1195 - t1642 * t1672;
t1614 = t1665 * t1493;
t1183 = -t1277 * t1490 - t1614;
t1622 = qJD(6) * t1468;
t1453 = 0.2e1 * t1622;
t1354 = pkin(5) * t1432 - qJ(6) * t1434;
t1521 = -t1464 * pkin(5) + t1420 * qJ(6) - t1432 * t1354 + t1103;
t1071 = t1453 + t1521;
t1057 = -pkin(5) * t1314 + t1071;
t1075 = -t1420 * pkin(5) - t1464 * qJ(6) + t1354 * t1434 + qJDD(6) + t1102;
t1061 = -qJ(6) * t1314 + t1075;
t1554 = t1490 * t1057 - t1493 * t1061;
t1658 = -t1183 * t1642 - t1554 + t1728;
t1279 = (-qJD(5) + t1468) * t1434 + t1549;
t1185 = t1279 * t1490 - t1614;
t1657 = -t1185 * t1642 - t1672 + t1728;
t1497 = -qJD(3) * t1455 + 0.2e1 * qJD(6) * t1434 - t1501 - t1661 - t1662;
t1077 = -pkin(5) * t1404 + t1497 + t1726;
t1577 = pkin(5) * t1586 - t1493 * t1077;
t1656 = -t1577 - t1766;
t1588 = t1490 * t1195;
t1655 = qJ(4) * t1671 + t1588 - t1721;
t1191 = t1493 * t1195;
t1654 = t1191 + t1766;
t1078 = t1497 + (-t1671 - t1404) * pkin(5);
t1652 = t1493 * t1078 - t1562 * t1671;
t1651 = t1670 * (pkin(4) + t1633) + t1490 * t1077;
t1031 = t1071 * t1490 - t1075 * t1493;
t1634 = pkin(5) * t1092;
t1090 = t1490 * t1634;
t1627 = qJ(6) * t1493;
t1557 = -qJ(4) + t1627;
t1648 = -t1031 * t1642 - t1092 * t1557 + t1090;
t1590 = t1490 * t1078;
t1647 = -t1557 * t1671 - t1590 - t1721;
t1643 = -2 * qJD(4);
t1637 = pkin(4) * t1672;
t1636 = pkin(4) * t1185;
t1635 = pkin(4) * t1195;
t1570 = t1482 + t1644;
t1446 = t1570 * qJDD(1);
t1449 = t1477 + t1478;
t1357 = t1446 * t1486 + t1449 * t1487;
t1358 = t1446 * t1487 - t1449 * t1486;
t1632 = pkin(6) * (t1357 * t1495 + t1358 * t1492);
t1630 = qJ(2) * t1357;
t1626 = qJD(1) * qJD(3);
t1606 = t1440 * t1491;
t1605 = t1440 * t1494;
t1602 = t1442 * t1491;
t1370 = t1442 * t1494;
t1310 = t1491 * t1323;
t1311 = t1494 * t1323;
t1578 = -pkin(5) * t1075 + qJ(6) * t1071;
t1576 = -pkin(5) * t1665 - qJ(6) * t1277;
t1575 = -pkin(2) * t1323 + pkin(7) * t1200;
t1574 = pkin(2) * t1449 + pkin(7) * t1446;
t1564 = t1310 + t1714;
t1563 = -t1311 + t1689;
t1551 = -t1456 * t1492 - t1495 * t1457;
t1023 = t1031 * t1491 + t1092 * t1494;
t1032 = t1071 * t1493 + t1490 * t1075;
t988 = -t1032 * t1642 + t1677;
t1535 = -pkin(4) * t1031 - t1578;
t991 = -qJ(4) * t1032 - t1535;
t1548 = -pkin(2) * t1032 + pkin(7) * t1023 + t1491 * t991 + t1494 * t988;
t1547 = t1486 * t1467;
t1546 = t1487 * t1467;
t1048 = t1490 * t1102 + t1493 * t1103;
t1013 = -t1048 * t1642 + t1635;
t1017 = -qJ(4) * t1048 + t1637;
t1036 = t1195 * t1494 + t1491 * t1672;
t1545 = -pkin(2) * t1048 + pkin(7) * t1036 + t1494 * t1013 + t1491 * t1017;
t1037 = -t1651 + t1771;
t1510 = pkin(5) * t1345 + qJ(6) * t1667 + t1521;
t1504 = -t1510 - t1783;
t1041 = t1453 - t1504 + t1776;
t1544 = t1494 * t1037 + t1491 * t1041 + t1791;
t1039 = -t1652 - t1720;
t1502 = pkin(5) * t1666 + qJ(6) * t1664 - t1075;
t1498 = -t1502 - t1732;
t1043 = -t1498 - t1727;
t1543 = t1494 * t1039 + t1491 * t1043 + t1750;
t1516 = t1102 - t1732;
t1051 = -t1516 - t1727;
t1525 = pkin(4) * t1671 + t1191;
t1064 = t1525 - t1720;
t1542 = t1491 * t1051 + t1494 * t1064 + t1750;
t1534 = t1103 + t1783;
t1053 = -t1534 - t1776;
t1524 = pkin(4) * t1670 - t1588;
t1067 = t1524 - t1771;
t1541 = t1491 * t1053 + t1494 * t1067 - t1791;
t1273 = t1490 * t1665;
t1187 = -t1277 * t1493 + t1273;
t1509 = -t1493 * t1057 - t1490 * t1061 + t1733;
t1015 = -t1187 * t1642 + t1509;
t1533 = -pkin(4) * t1183 - t1576;
t1056 = -qJ(4) * t1187 - t1533;
t1128 = t1183 * t1491 + t1724;
t1540 = -pkin(2) * t1187 + pkin(7) * t1128 + t1494 * t1015 + t1491 * t1056;
t1189 = t1279 * t1493 + t1273;
t1508 = -t1048 + t1733;
t1026 = -t1189 * t1642 + t1508;
t1091 = -qJ(4) * t1189 + t1636;
t1127 = t1185 * t1491 + t1724;
t1539 = -pkin(2) * t1189 + pkin(7) * t1127 + t1494 * t1026 + t1491 * t1091;
t1233 = t1501 + t1621;
t1216 = pkin(3) * t1449 + t1233;
t1218 = qJ(4) * t1449 + t1241;
t1538 = t1494 * t1216 + t1491 * t1218 + t1574;
t1537 = t1574 + t1200;
t1448 = qJDD(1) * t1495 - t1492 * t1496;
t1532 = -pkin(6) * t1448 - g(3) * t1492;
t1530 = -pkin(3) * t1241 + qJ(4) * t1233;
t1528 = pkin(3) * t1491 - qJ(4) * t1494;
t1526 = -t1494 * t1268 + t1568;
t1199 = t1289 * t1494 - t1291 * t1491;
t1371 = t1460 * t1494 + t1599;
t1519 = t1456 * t1495 - t1457 * t1492;
t1500 = t1625 * t1643 + t1506;
t1204 = -pkin(3) * t1565 + qJ(4) * t1440 - t1500;
t1512 = pkin(3) * t1605 + t1491 * t1204 - t1714;
t1205 = (-t1442 + t1565) * pkin(3) + t1500;
t1511 = -qJ(4) * t1602 + t1494 * t1205 - t1689;
t1140 = t1233 * t1494 + t1241 * t1491;
t1219 = (pkin(3) * qJD(3) + t1643) * t1625 + t1506;
t1507 = pkin(7) * t1140 + (-pkin(2) + t1529) * t1219;
t1450 = t1477 - t1478;
t1447 = qJDD(1) * t1492 + t1495 * t1496;
t1435 = t1528 * qJDD(1);
t1427 = t1570 * t1626;
t1406 = -pkin(6) * t1447 + g(3) * t1495;
t1392 = t1441 * t1494 - t1482 * t1626;
t1391 = t1491 * t1527 - t1626 * t1644;
t1390 = qJDD(3) * t1486 + t1427 * t1487;
t1389 = -qJDD(3) * t1487 + t1427 * t1486;
t1373 = t1690 * t1491;
t1353 = pkin(1) * t1357;
t1351 = qJ(2) * t1358;
t1350 = t1370 - t1606;
t1349 = t1602 + t1605;
t1339 = t1392 * t1487 - t1547;
t1338 = t1391 * t1487 + t1547;
t1337 = t1392 * t1486 + t1546;
t1336 = t1391 * t1486 - t1546;
t1297 = -pkin(1) * t1444 - t1347;
t1296 = pkin(1) * t1445 - t1346;
t1290 = t1350 * t1487 + t1450 * t1486;
t1288 = t1350 * t1486 - t1450 * t1487;
t1285 = -t1389 * t1492 + t1390 * t1495;
t1284 = t1389 * t1495 + t1390 * t1492;
t1260 = pkin(6) * (-t1357 * t1492 + t1358 * t1495);
t1255 = t1311 + t1704;
t1250 = t1310 - t1731;
t1240 = pkin(1) * t1244;
t1239 = t1291 + t1705;
t1238 = t1289 - t1735;
t1230 = pkin(1) * t1483 + qJ(2) * t1552;
t1229 = -t1337 * t1492 + t1339 * t1495;
t1228 = -t1336 * t1492 + t1338 * t1495;
t1227 = t1337 * t1495 + t1339 * t1492;
t1226 = t1336 * t1495 + t1338 * t1492;
t1201 = -t1288 * t1492 + t1290 * t1495;
t1198 = t1288 * t1495 + t1290 * t1492;
t1179 = -t1663 + t1735;
t1173 = -t1705 - t1717;
t1172 = t1563 - t1757;
t1171 = t1564 - t1786;
t1156 = t1199 * t1487 - t1630;
t1155 = t1199 * t1486 + t1351;
t1150 = -pkin(3) * t1606 + t1204 * t1494 - t1704;
t1149 = -qJ(4) * t1370 - t1205 * t1491 + t1731;
t1146 = t1200 * t1487 + t1323 * t1486;
t1145 = t1200 * t1486 - t1323 * t1487;
t1139 = t1233 * t1491 - t1241 * t1494;
t1137 = t1353 + t1537;
t1126 = -t1183 * t1494 + t1725;
t1125 = -t1185 * t1494 + t1725;
t1122 = -t1216 * t1491 + t1218 * t1494;
t1121 = -t1239 * t1486 + t1255 * t1487 + t1778;
t1120 = -t1238 * t1486 + t1250 * t1487 + t1753;
t1119 = t1512 + t1786;
t1118 = t1511 + t1757;
t1105 = t1239 * t1487 + t1255 * t1486 - t1768;
t1104 = t1238 * t1487 + t1250 * t1486 - t1749;
t1101 = t1122 * t1487 - t1435 * t1486 - t1630;
t1100 = t1122 * t1486 + t1435 * t1487 + t1351;
t1093 = t1353 + t1538;
t1088 = t1140 * t1487 + t1219 * t1486;
t1087 = t1140 * t1486 - t1219 * t1487;
t1082 = t1128 * t1487 + t1187 * t1486;
t1081 = t1127 * t1487 + t1189 * t1486;
t1080 = t1128 * t1486 - t1187 * t1487;
t1079 = t1127 * t1486 - t1189 * t1487;
t1074 = pkin(1) * t1145 + t1575;
t1069 = -pkin(2) * t1139 - t1530;
t1068 = t1149 * t1487 - t1179 * t1486 - t1753;
t1066 = t1150 * t1487 - t1173 * t1486 - t1778;
t1062 = -pkin(7) * t1139 + t1219 * t1528;
t1059 = t1149 * t1486 + t1179 * t1487 + t1749;
t1058 = t1150 * t1486 + t1173 * t1487 + t1768;
t1054 = -qJ(2) * t1145 - (pkin(2) * t1486 - pkin(7) * t1487) * t1199;
t1049 = -t1654 - t1793;
t1045 = -t1655 - t1755;
t1044 = qJ(2) * t1146 - (-pkin(2) * t1487 - pkin(7) * t1486 - pkin(1)) * t1199;
t1035 = t1195 * t1491 - t1494 * t1672;
t1029 = pkin(1) * t1087 + t1507;
t1028 = -t1647 - t1755;
t1027 = -t1656 + t1793;
t1024 = t1053 * t1494 - t1067 * t1491 - t1792;
t1022 = -t1031 * t1494 + t1092 * t1491;
t1020 = t1051 * t1494 - t1064 * t1491 - t1754;
t1019 = -qJ(2) * t1087 + t1062 * t1487 - t1069 * t1486;
t1018 = -pkin(2) * t1125 - t1657;
t1011 = t1036 * t1487 + t1048 * t1486;
t1010 = t1036 * t1486 - t1048 * t1487;
t1009 = -pkin(1) * t1139 + qJ(2) * t1088 + t1062 * t1486 + t1069 * t1487;
t1008 = -pkin(2) * t1126 - t1658;
t1007 = t1541 - t1803;
t1006 = -pkin(7) * t1125 - t1026 * t1491 + t1091 * t1494;
t1005 = t1542 + t1785;
t1004 = -t1039 * t1491 + t1043 * t1494 - t1754;
t1003 = -t1037 * t1491 + t1041 * t1494 + t1792;
t1002 = t1023 * t1487 + t1032 * t1486;
t1001 = t1023 * t1486 - t1032 * t1487;
t1000 = -pkin(7) * t1126 - t1015 * t1491 + t1056 * t1494;
t999 = t1543 + t1785;
t998 = t1024 * t1487 - t1049 * t1486 + t1802;
t997 = pkin(1) * t1079 + t1539;
t996 = t1544 + t1803;
t995 = t1020 * t1487 - t1045 * t1486 - t1777;
t994 = -pkin(2) * t1035 - t1659;
t993 = t1024 * t1486 + t1049 * t1487 - t1801;
t992 = t1020 * t1486 + t1045 * t1487 + t1767;
t989 = pkin(1) * t1080 + t1540;
t986 = t1004 * t1487 - t1028 * t1486 - t1777;
t985 = t1003 * t1487 - t1027 * t1486 - t1802;
t984 = t1004 * t1486 + t1028 * t1487 + t1767;
t983 = -qJ(2) * t1079 + t1006 * t1487 - t1018 * t1486;
t982 = t1003 * t1486 + t1027 * t1487 + t1801;
t981 = -pkin(1) * t1125 + qJ(2) * t1081 + t1006 * t1486 + t1018 * t1487;
t980 = -pkin(7) * t1035 - t1013 * t1491 + t1017 * t1494;
t979 = -pkin(2) * t1022 - t1648;
t978 = -qJ(2) * t1080 + t1000 * t1487 - t1008 * t1486;
t977 = -pkin(1) * t1126 + qJ(2) * t1082 + t1000 * t1486 + t1008 * t1487;
t976 = pkin(1) * t1010 + t1545;
t975 = -pkin(7) * t1022 - t1491 * t988 + t1494 * t991;
t974 = -qJ(2) * t1010 - t1486 * t994 + t1487 * t980;
t973 = -pkin(1) * t1035 + qJ(2) * t1011 + t1486 * t980 + t1487 * t994;
t972 = pkin(1) * t1001 + t1548;
t971 = -qJ(2) * t1001 - t1486 * t979 + t1487 * t975;
t970 = -pkin(1) * t1022 + qJ(2) * t1002 + t1486 * t975 + t1487 * t979;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1448, 0, -t1447, 0, t1532, -t1406, -t1519, -pkin(6) * t1519, 0, 0, t1355, 0, -t1669, 0, t1681, t1685, t1715, pkin(6) * t1715 + qJ(2) * t1619 - t1492 * t1230, t1229, t1201, -t1760, t1228, t1741, t1285, -t1492 * t1104 + t1495 * t1120 + t1781, -t1492 * t1105 + t1495 * t1121 + t1789, -t1155 * t1492 + t1156 * t1495 - t1632, t1495 * t1054 - t1492 * t1044 - pkin(6) * (t1145 * t1495 + t1146 * t1492), t1285, t1760, -t1741, t1229, t1201, t1228, -t1100 * t1492 + t1101 * t1495 - t1632, -t1492 * t1059 + t1495 * t1068 - t1781, -t1492 * t1058 + t1495 * t1066 - t1789, t1495 * t1019 - t1492 * t1009 - pkin(6) * (t1087 * t1495 + t1088 * t1492), t1680, -t1795, t1788, t1740, -t1797, t1738, -t1492 * t992 + t1495 * t995 - t1758, -t1492 * t993 + t1495 * t998 + t1804, t1495 * t983 - t1492 * t981 - pkin(6) * (t1079 * t1495 + t1081 * t1492), t1495 * t974 - t1492 * t973 - pkin(6) * (t1010 * t1495 + t1011 * t1492), t1680, t1788, t1795, t1738, t1797, t1740, -t1492 * t984 + t1495 * t986 - t1758, t1495 * t978 - t1492 * t977 - pkin(6) * (t1080 * t1495 + t1082 * t1492), -t1492 * t982 + t1495 * t985 - t1804, t1495 * t971 - t1492 * t970 - pkin(6) * (t1001 * t1495 + t1002 * t1492); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1447, 0, t1448, 0, t1406, t1532, t1551, pkin(6) * t1551, 0, 0, t1669, 0, t1355, 0, -t1685, t1681, t1716, pkin(6) * t1716 + qJ(2) * t1620 + t1495 * t1230, t1227, t1198, t1761, t1226, -t1742, t1284, t1495 * t1104 + t1492 * t1120 + t1782, t1495 * t1105 + t1492 * t1121 + t1790, t1155 * t1495 + t1156 * t1492 + t1260, t1492 * t1054 + t1495 * t1044 + pkin(6) * (-t1145 * t1492 + t1146 * t1495), t1284, -t1761, t1742, t1227, t1198, t1226, t1100 * t1495 + t1101 * t1492 + t1260, t1495 * t1059 + t1492 * t1068 - t1782, t1495 * t1058 + t1492 * t1066 - t1790, t1492 * t1019 + t1495 * t1009 + pkin(6) * (-t1087 * t1492 + t1088 * t1495), t1679, t1796, t1787, t1739, t1798, t1737, t1492 * t995 + t1495 * t992 + t1759, t1492 * t998 + t1495 * t993 + t1805, t1492 * t983 + t1495 * t981 + pkin(6) * (-t1079 * t1492 + t1081 * t1495), t1492 * t974 + t1495 * t973 + pkin(6) * (-t1010 * t1492 + t1011 * t1495), t1679, t1787, -t1796, t1737, -t1798, t1739, t1492 * t986 + t1495 * t984 + t1759, t1492 * t978 + t1495 * t977 + pkin(6) * (-t1080 * t1492 + t1082 * t1495), t1492 * t985 + t1495 * t982 - t1805, t1492 * t971 + t1495 * t970 + pkin(6) * (-t1001 * t1492 + t1002 * t1495); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1456, t1457, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1296, t1297, 0, -t1240, t1373, t1349, t1371, t1370, t1374, 0, t1172, t1171, t1137, t1074, 0, -t1371, -t1374, t1373, t1349, t1370, t1093, t1118, t1119, t1029, t1526, -t1142, t1745, t1687, -t1163, t1684, t1005, t1007, t997, t976, t1526, t1745, t1142, t1684, t1163, t1687, t999, t989, t996, t972; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1496, 0, 0, -g(3), -t1456, 0, 0, 0, t1445, 0, -t1444, 0, t1523, t1400, t1244, qJ(2) * t1244, t1339, t1290, t1332, t1338, -t1335, t1390, t1120, t1121, t1156, t1054, t1390, -t1332, t1335, t1339, t1290, t1338, t1101, t1068, t1066, t1019, t1650, t1085, t1764, t1710, t1115, t1711, t995, t998, t983, t974, t1650, t1764, -t1085, t1711, -t1115, t1710, t986, t978, t985, t971; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1496, 0, qJDD(1), 0, g(3), 0, -t1457, 0, 0, 0, t1444, 0, t1445, 0, -t1400, t1523, t1552, t1230, t1337, t1288, t1328, t1336, -t1331, t1389, t1104, t1105, t1155, t1044, t1389, -t1328, t1331, t1337, t1288, t1336, t1100, t1059, t1058, t1009, t1653, t1083, t1765, t1712, t1111, t1713, t992, t993, t981, t973, t1653, t1765, -t1083, t1713, -t1111, t1712, t984, t977, t982, t970; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1456, t1457, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1296, t1297, 0, -t1240, t1373, t1349, t1371, t1370, t1374, 0, t1172, t1171, t1137, t1074, 0, -t1371, -t1374, t1373, t1349, t1370, t1093, t1118, t1119, t1029, t1526, -t1142, t1745, t1687, -t1163, t1684, t1005, t1007, t997, t976, t1526, t1745, t1142, t1684, t1163, t1687, t999, t989, t996, t972; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1496, 0, 0, -t1483, t1346, 0, t1392, t1350, t1380, t1391, -t1383, t1427, t1250, t1255, t1199, pkin(7) * t1199, t1427, -t1380, t1383, t1392, t1350, t1391, t1122, t1149, t1150, t1062, t1513, t1143, t1746, t1688, t1168, t1683, t1020, t1024, t1006, t980, t1513, t1746, -t1143, t1683, -t1168, t1688, t1004, t1000, t1003, t975; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1496, 0, qJDD(1), 0, t1483, 0, t1347, 0, t1467, -t1450, -t1573, -t1467, -t1476, -qJDD(3), t1238, t1239, 0, pkin(2) * t1199, -qJDD(3), t1573, t1476, t1467, -t1450, -t1467, t1435, t1179, t1173, t1069, -t1269, -t1188, -t1718, -t1266, -t1253, t1294, t1045, t1049, t1018, t994, -t1269, -t1718, t1188, t1294, t1253, -t1266, t1028, t1008, t1027, t979; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1346, -t1347, 0, 0, t1373, t1349, t1371, t1370, t1374, 0, t1563, t1564, t1537, t1575, 0, -t1371, -t1374, t1373, t1349, t1370, t1538, t1511, t1512, t1507, t1526, -t1142, t1745, t1687, -t1163, t1684, t1542, t1541, t1539, t1545, t1526, t1745, t1142, t1684, t1163, t1687, t1543, t1540, t1544, t1548; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1441, t1442, t1451, -t1473, t1462, t1473, 0, t1323, t1289, 0, t1473, -t1451, -t1462, t1441, t1442, -t1473, t1218, -qJ(4) * t1442, t1204, -qJ(4) * t1219, t1609, t1668, t1665, -t1609, -t1277, t1420, t1051, t1053, t1091, t1017, t1609, t1665, -t1668, t1420, t1277, -t1609, t1043, t1056, t1041, t991; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1565, t1440, t1460, -t1527, t1452, -t1565, -t1323, 0, t1291, 0, -t1565, -t1460, -t1452, t1565, t1440, -t1527, t1216, t1205, pkin(3) * t1440, -pkin(3) * t1219, -t1268, -t1184, -t1719, -t1264, -t1248, t1673, t1064, t1067, t1026, t1013, -t1268, -t1719, t1184, t1673, t1248, -t1264, t1039, t1015, t1037, t988; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1467, t1450, t1573, t1467, t1476, qJDD(3), -t1289, -t1291, 0, 0, qJDD(3), -t1573, -t1476, -t1467, t1450, t1467, -t1435, t1663, t1717, t1530, t1269, t1188, t1718, t1266, t1253, -t1294, t1655, t1654, t1657, t1659, t1269, t1718, -t1188, -t1294, -t1253, t1266, t1647, t1658, t1656, t1648; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(3), -t1573, -t1476, -t1467, t1450, t1467, 0, t1241, t1233, 0, t1269, t1188, t1718, t1266, t1253, -t1294, t1588 - t1730, t1191 + t1780, -pkin(8) * t1185 - t1672, -pkin(8) * t1672, t1269, t1718, -t1188, -t1294, -t1253, t1266, -t1627 * t1671 - t1590 - t1730, -pkin(8) * t1183 - t1554, -t1577 - t1780, -pkin(8) * t1031 - t1092 * t1627 + t1090; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1473, t1451, t1462, -t1441, -t1442, t1473, -t1241, 0, t1219, 0, -t1609, -t1668, -t1665, t1609, t1277, -t1420, t1516, t1534, -t1636, -t1637, -t1609, -t1665, t1668, -t1420, -t1277, t1609, t1498, t1533, t1504 - 0.2e1 * t1622, t1535; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1565, t1460, t1452, -t1565, -t1440, t1527, -t1233, -t1219, 0, 0, t1268, t1184, t1719, t1264, t1248, -t1673, -t1525 + t1729, -t1524 + t1779, pkin(8) * t1189 - t1508, pkin(8) * t1048 - t1635, t1268, t1719, -t1184, -t1673, -t1248, t1264, t1652 + t1729, pkin(8) * t1187 - t1509, t1651 - t1779, pkin(8) * t1032 - t1677; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1343, -t1671, t1666, t1610, t1393, -t1610, 0, t1195, t1102, 0, t1343, t1666, t1671, -t1610, -t1393, t1610, -qJ(6) * t1671, t1061, t1077, -qJ(6) * t1092; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1404, t1670, -t1395, -t1342, t1667, -t1404, -t1195, 0, t1103, 0, t1404, -t1395, -t1670, -t1404, -t1667, -t1342, t1078, t1057, pkin(5) * t1670, -t1634; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1609, t1668, t1665, -t1609, -t1277, t1420, -t1102, -t1103, 0, 0, t1609, t1665, -t1668, t1420, t1277, -t1609, t1502, t1576, t1453 + t1510, t1578; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1343, t1666, t1671, -t1610, -t1393, t1610, 0, t1075, -t1092, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1609, t1665, -t1668, t1420, t1277, -t1609, -t1075, 0, t1071, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1404, t1395, t1670, t1404, t1667, t1342, t1092, -t1071, 0, 0;];
m_new_reg  = t1;
