% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6PRRPRR7
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,d6,theta1]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 06:06
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6PRRPRR7_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR7_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRR7_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRPRR7_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRR7_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPRR7_invdynm_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 06:05:46
% EndTime: 2019-05-05 06:06:32
% DurationCPUTime: 49.58s
% Computational Cost: add. (206101->977), mult. (415097->1317), div. (0->0), fcn. (275387->12), ass. (0->656)
t1606 = sin(qJ(3));
t1595 = t1606 ^ 2;
t1612 = qJD(2) ^ 2;
t1588 = t1595 * t1612;
t1794 = qJD(3) ^ 2;
t1572 = -t1588 - t1794;
t1610 = cos(qJ(3));
t1738 = t1610 * t1612;
t1578 = t1606 * t1738;
t1566 = qJDD(3) - t1578;
t1756 = t1566 * t1606;
t1506 = -t1572 * t1610 + t1756;
t1599 = sin(pkin(6));
t1601 = cos(pkin(6));
t1739 = t1610 * t1566;
t1514 = t1572 * t1606 + t1739;
t1774 = qJD(2) * t1610;
t1584 = qJD(3) * t1774;
t1732 = t1606 * qJDD(2);
t1555 = 0.2e1 * t1584 + t1732;
t1607 = sin(qJ(2));
t1611 = cos(qJ(2));
t1662 = t1514 * t1607 + t1555 * t1611;
t1392 = t1601 * t1506 + t1599 * t1662;
t1396 = -t1599 * t1506 + t1601 * t1662;
t1865 = pkin(7) * (t1392 * t1599 + t1396 * t1601);
t1452 = t1514 * t1611 - t1555 * t1607;
t1598 = sin(pkin(11));
t1600 = cos(pkin(11));
t1864 = qJ(1) * (t1396 * t1600 + t1452 * t1598);
t1863 = qJ(1) * (t1396 * t1598 - t1452 * t1600);
t1862 = pkin(1) * t1392;
t1861 = pkin(1) * t1396;
t1791 = t1610 ^ 2;
t1591 = t1791 * t1612;
t1574 = -t1591 - t1794;
t1565 = qJDD(3) + t1578;
t1740 = t1610 * t1565;
t1503 = t1574 * t1606 + t1740;
t1757 = t1565 * t1606;
t1512 = -t1574 * t1610 + t1757;
t1589 = t1606 * qJD(2);
t1723 = qJD(3) * t1589;
t1731 = t1610 * qJDD(2);
t1557 = -0.2e1 * t1723 + t1731;
t1663 = t1512 * t1607 - t1557 * t1611;
t1391 = -t1601 * t1503 + t1599 * t1663;
t1395 = t1599 * t1503 + t1601 * t1663;
t1860 = pkin(7) * (t1391 * t1599 + t1395 * t1601);
t1451 = t1512 * t1611 + t1557 * t1607;
t1859 = qJ(1) * (t1395 * t1600 + t1451 * t1598);
t1858 = qJ(1) * (t1395 * t1598 - t1451 * t1600);
t1571 = -t1588 + t1794;
t1505 = t1571 * t1610 + t1757;
t1513 = -t1571 * t1606 + t1740;
t1644 = t1513 * t1607 - t1611 * t1732;
t1413 = -t1599 * t1505 + t1601 * t1644;
t1472 = t1513 * t1611 + t1607 * t1732;
t1855 = t1413 * t1598 - t1472 * t1600;
t1854 = t1413 * t1600 + t1472 * t1598;
t1852 = pkin(1) * t1391;
t1851 = pkin(1) * t1395;
t1573 = t1591 - t1794;
t1501 = t1573 * t1606 + t1739;
t1510 = -t1573 * t1610 + t1756;
t1645 = t1510 * t1607 + t1611 * t1731;
t1412 = t1599 * t1501 + t1601 * t1645;
t1471 = t1510 * t1611 - t1607 * t1731;
t1848 = t1412 * t1598 - t1471 * t1600;
t1847 = t1412 * t1600 + t1471 * t1598;
t1845 = pkin(7) * t1452;
t1409 = t1601 * t1505 + t1599 * t1644;
t1840 = pkin(7) * t1451;
t1408 = -t1601 * t1501 + t1599 * t1645;
t1835 = pkin(2) * t1503;
t1834 = pkin(8) * t1503;
t1833 = pkin(8) * t1514;
t1828 = 2 * qJD(4);
t1827 = pkin(2) * t1506;
t1826 = pkin(8) * t1506;
t1825 = pkin(8) * t1512;
t1604 = sin(qJ(6));
t1605 = sin(qJ(5));
t1609 = cos(qJ(5));
t1550 = -qJD(3) * t1605 - t1609 * t1774;
t1551 = qJD(3) * t1609 - t1605 * t1774;
t1608 = cos(qJ(6));
t1485 = -t1608 * t1550 + t1551 * t1604;
t1487 = t1550 * t1604 + t1551 * t1608;
t1429 = t1487 * t1485;
t1556 = t1584 + t1732;
t1542 = qJDD(5) + t1556;
t1537 = qJDD(6) + t1542;
t1810 = -t1429 + t1537;
t1820 = t1604 * t1810;
t1497 = t1550 * t1551;
t1808 = t1497 + t1542;
t1819 = t1605 * t1808;
t1818 = t1608 * t1810;
t1817 = t1609 * t1808;
t1816 = t1556 + t1584;
t1564 = g(1) * t1600 + g(2) * t1598;
t1714 = g(1) * t1598 - t1600 * g(2);
t1780 = g(3) - qJDD(1);
t1814 = -t1599 * t1780 + t1601 * t1714;
t1465 = -t1611 * t1564 + t1607 * t1814;
t1449 = -t1612 * pkin(2) + qJDD(2) * pkin(8) + t1465;
t1776 = qJ(4) * t1606;
t1786 = pkin(3) * t1610;
t1697 = -t1776 - t1786;
t1711 = t1612 * t1697 + t1449;
t1525 = t1599 * t1714 + t1601 * t1780;
t1742 = t1606 * t1525;
t1616 = -pkin(3) * t1794 + t1610 * t1711 - t1742;
t1614 = qJD(3) * t1828 + t1616;
t1815 = t1614 + (qJDD(3) + t1566) * qJ(4) - pkin(3) * t1572;
t1813 = t1598 * t1780;
t1812 = t1600 * t1780;
t1517 = t1610 * t1525;
t1701 = -qJDD(3) * pkin(3) - qJ(4) * t1794 + qJDD(4) + t1517;
t1339 = -qJDD(3) * pkin(9) + (t1556 - t1584) * pkin(4) + (-pkin(9) * t1738 + t1711) * t1606 + t1701;
t1464 = -t1607 * t1564 - t1611 * t1814;
t1448 = -qJDD(2) * pkin(2) - t1612 * pkin(8) + t1464;
t1647 = t1723 - t1731;
t1615 = t1647 * pkin(3) - qJ(4) * t1816 + t1448;
t1736 = pkin(4) * t1589 - qJD(3) * pkin(9) + t1828;
t1789 = pkin(3) + pkin(9);
t1342 = (-pkin(4) * t1738 - pkin(9) * qJDD(2)) * t1610 + (qJD(3) * t1789 - t1736) * t1589 + t1615;
t1259 = -t1609 * t1339 + t1605 * t1342;
t1260 = t1605 * t1339 + t1609 * t1342;
t1811 = -t1609 * t1259 + t1605 * t1260;
t1476 = t1550 * qJD(5) + t1609 * qJDD(3) + t1605 * t1647;
t1704 = -t1605 * qJDD(3) + t1609 * t1647;
t1642 = qJD(5) * t1551 - t1704;
t1355 = -t1485 * qJD(6) + t1608 * t1476 - t1604 * t1642;
t1579 = t1589 + qJD(5);
t1570 = qJD(6) + t1579;
t1458 = t1570 * t1485;
t1809 = -t1458 + t1355;
t1527 = t1579 * t1550;
t1443 = -t1527 + t1476;
t1807 = t1527 + t1476;
t1368 = t1606 * t1711 + t1701;
t1806 = -pkin(3) * t1565 - qJ(4) * t1574 + t1368;
t1220 = pkin(5) * t1808 - pkin(10) * t1443 - t1259;
t1518 = pkin(5) * t1579 - pkin(10) * t1551;
t1793 = t1550 ^ 2;
t1229 = -pkin(5) * t1793 - pkin(10) * t1642 - t1579 * t1518 + t1260;
t1153 = -t1608 * t1220 + t1229 * t1604;
t1154 = t1220 * t1604 + t1229 * t1608;
t1114 = t1153 * t1604 + t1608 * t1154;
t1113 = -t1153 * t1608 + t1154 * t1604;
t1771 = t1113 * t1609;
t1087 = t1114 * t1605 + t1771;
t1772 = qJDD(3) * qJ(4);
t1338 = -t1647 * pkin(4) - pkin(9) * t1591 + qJD(3) * t1736 + t1616 + t1772;
t1268 = pkin(5) * t1642 - pkin(10) * t1793 + t1551 * t1518 + t1338;
t1107 = -pkin(5) * t1268 + pkin(10) * t1114;
t1655 = pkin(10) * t1771 + t1605 * t1107;
t1804 = qJ(4) * t1268 - t1087 * t1789 - t1655;
t1706 = -t1604 * t1476 - t1608 * t1642;
t1302 = (-qJD(6) + t1570) * t1487 + t1706;
t1304 = t1458 + t1355;
t1240 = t1302 * t1604 - t1304 * t1608;
t1242 = t1302 * t1608 + t1304 * t1604;
t1160 = t1240 * t1609 + t1242 * t1605;
t1483 = t1485 ^ 2;
t1484 = t1487 ^ 2;
t1365 = -t1483 - t1484;
t1103 = -pkin(5) * t1365 + pkin(10) * t1242 + t1114;
t1106 = -pkin(10) * t1240 - t1113;
t1710 = t1605 * t1103 - t1609 * t1106;
t1803 = qJ(4) * t1365 - t1160 * t1789 - t1710;
t1802 = qJ(4) * t1338 - t1789 * t1811;
t1569 = t1570 ^ 2;
t1399 = -t1569 - t1483;
t1294 = t1399 * t1604 + t1818;
t1295 = t1399 * t1608 - t1820;
t1230 = t1294 * t1609 + t1295 * t1605;
t1460 = t1487 * t1570;
t1650 = qJD(6) * t1487 - t1706;
t1300 = t1460 + t1650;
t1769 = t1268 * t1608;
t1171 = -pkin(5) * t1300 + pkin(10) * t1295 - t1769;
t1770 = t1268 * t1604;
t1210 = -pkin(10) * t1294 + t1770;
t1709 = t1605 * t1171 - t1609 * t1210;
t1801 = qJ(4) * t1300 - t1230 * t1789 - t1709;
t1444 = -t1484 - t1569;
t1386 = t1429 + t1537;
t1767 = t1386 * t1604;
t1321 = t1444 * t1608 - t1767;
t1766 = t1386 * t1608;
t1322 = -t1444 * t1604 - t1766;
t1246 = t1321 * t1609 + t1322 * t1605;
t1176 = -pkin(5) * t1809 + pkin(10) * t1322 + t1770;
t1219 = -pkin(10) * t1321 + t1769;
t1708 = t1605 * t1176 - t1609 * t1219;
t1800 = qJ(4) * t1809 - t1246 * t1789 - t1708;
t1440 = (-qJD(5) + t1579) * t1551 + t1704;
t1344 = t1440 * t1605 - t1443 * t1609;
t1792 = t1551 ^ 2;
t1461 = -t1792 - t1793;
t1799 = qJ(4) * t1461 - t1344 * t1789 - t1811;
t1575 = t1579 ^ 2;
t1480 = -t1575 - t1793;
t1388 = t1605 * t1480 + t1817;
t1528 = t1551 * t1579;
t1438 = t1528 + t1642;
t1744 = t1605 * t1338;
t1798 = qJ(4) * t1438 - t1388 * t1789 + t1744;
t1327 = t1609 * t1338;
t1722 = -t1575 - t1792;
t1463 = -t1497 + t1542;
t1743 = t1605 * t1463;
t1402 = t1609 * t1722 - t1743;
t1797 = qJ(4) * t1807 - t1402 * t1789 + t1327;
t1796 = -t1600 * t1564 - t1598 * t1714;
t1795 = -t1598 * t1564 + t1600 * t1714;
t1790 = -2 * qJD(4);
t1785 = pkin(4) * t1811;
t1784 = pkin(4) * t1338;
t1783 = pkin(4) * t1344;
t1782 = pkin(7) * t1599;
t1781 = pkin(7) * t1601;
t1729 = t1595 + t1791;
t1559 = t1729 * qJDD(2);
t1562 = t1588 + t1591;
t1658 = t1559 * t1607 + t1562 * t1611;
t1482 = t1658 * t1601;
t1493 = t1559 * t1611 - t1562 * t1607;
t1779 = qJ(1) * (t1482 * t1600 + t1493 * t1598);
t1775 = qJD(2) * qJD(3);
t1404 = t1606 * t1449 + t1517;
t1405 = t1610 * t1449 - t1742;
t1307 = t1404 * t1610 - t1405 * t1606;
t1768 = t1307 * t1607;
t1765 = t1448 * t1606;
t1764 = t1448 * t1610;
t1763 = t1463 * t1609;
t1762 = t1555 * t1606;
t1499 = t1557 * t1610;
t1755 = t1570 * t1604;
t1754 = t1570 * t1608;
t1749 = t1579 * t1605;
t1748 = t1579 * t1609;
t1746 = t1605 * t1113;
t1741 = t1607 * t1525;
t1737 = t1611 * t1525;
t1735 = pkin(1) * t1482 + t1493 * t1782;
t1734 = pkin(2) * t1562 + pkin(8) * t1559;
t1733 = t1599 * qJDD(2);
t1728 = t1606 * t1429;
t1727 = t1610 * t1429;
t1726 = t1606 * t1497;
t1725 = t1610 * t1497;
t1724 = t1551 * t1749;
t1481 = t1658 * t1599;
t1717 = -pkin(1) * t1481 + t1493 * t1781;
t1112 = pkin(5) * t1113;
t1716 = -pkin(4) * t1087 - t1112;
t1239 = pkin(5) * t1240;
t1715 = -pkin(4) * t1160 - t1239;
t1308 = t1404 * t1606 + t1610 * t1405;
t1703 = t1607 * t1578;
t1702 = t1611 * t1578;
t1700 = -pkin(4) * t1402 + t1260;
t1699 = -pkin(4) * t1388 + t1259;
t1364 = t1614 + t1772;
t1698 = -pkin(3) * t1368 + qJ(4) * t1364;
t1696 = pkin(3) * t1606 - qJ(4) * t1610;
t1695 = pkin(5) * t1294 - t1153;
t1693 = pkin(4) * t1438 + t1327;
t1692 = pkin(4) * t1807 - t1744;
t1560 = qJDD(2) * t1611 - t1607 * t1612;
t1691 = -pkin(7) * t1560 - t1741;
t1657 = qJDD(2) * t1607 + t1611 * t1612;
t1690 = -pkin(7) * t1657 + t1737;
t1081 = t1087 * t1606 + t1268 * t1610;
t1088 = t1114 * t1609 - t1746;
t1688 = t1081 * t1607 - t1088 * t1611;
t1146 = t1160 * t1606 + t1365 * t1610;
t1162 = -t1605 * t1240 + t1242 * t1609;
t1687 = t1146 * t1607 - t1162 * t1611;
t1241 = -t1300 * t1604 + t1608 * t1809;
t1243 = -t1300 * t1608 - t1604 * t1809;
t1161 = t1241 * t1609 + t1243 * t1605;
t1424 = -t1483 + t1484;
t1152 = t1161 * t1606 + t1424 * t1610;
t1159 = t1241 * t1605 - t1609 * t1243;
t1686 = t1152 * t1607 + t1159 * t1611;
t1158 = t1338 * t1610 + t1606 * t1811;
t1173 = t1605 * t1259 + t1609 * t1260;
t1685 = t1158 * t1607 - t1173 * t1611;
t1179 = t1230 * t1606 + t1300 * t1610;
t1231 = -t1605 * t1294 + t1295 * t1609;
t1684 = t1179 * t1607 - t1231 * t1611;
t1187 = t1246 * t1606 + t1610 * t1809;
t1247 = -t1605 * t1321 + t1322 * t1609;
t1683 = t1187 * t1607 - t1247 * t1611;
t1454 = t1483 - t1569;
t1331 = t1454 * t1604 + t1766;
t1333 = t1454 * t1608 - t1767;
t1252 = t1331 * t1609 + t1333 * t1605;
t1301 = -t1460 + t1650;
t1192 = t1252 * t1606 - t1301 * t1610;
t1250 = t1331 * t1605 - t1609 * t1333;
t1682 = t1192 * t1607 + t1250 * t1611;
t1455 = -t1484 + t1569;
t1330 = t1455 * t1608 + t1820;
t1332 = -t1455 * t1604 + t1818;
t1251 = t1330 * t1609 + t1332 * t1605;
t1193 = t1251 * t1606 + t1304 * t1610;
t1249 = t1330 * t1605 - t1609 * t1332;
t1681 = t1193 * t1607 + t1249 * t1611;
t1296 = t1485 * t1755 - t1608 * t1650;
t1297 = t1485 * t1754 + t1604 * t1650;
t1233 = t1296 * t1609 + t1297 * t1605;
t1205 = t1233 * t1606 - t1727;
t1232 = t1296 * t1605 - t1609 * t1297;
t1680 = t1205 * t1607 + t1232 * t1611;
t1298 = t1355 * t1604 + t1487 * t1754;
t1299 = t1355 * t1608 - t1487 * t1755;
t1235 = t1298 * t1609 + t1299 * t1605;
t1206 = t1235 * t1606 + t1727;
t1234 = t1298 * t1605 - t1609 * t1299;
t1679 = t1206 * t1607 + t1234 * t1611;
t1356 = pkin(3) * t1562 + t1364;
t1357 = qJ(4) * t1562 + t1368;
t1266 = -t1356 * t1606 + t1357 * t1610;
t1552 = t1696 * qJDD(2);
t1678 = t1266 * t1607 + t1552 * t1611;
t1377 = (-t1485 * t1604 - t1487 * t1608) * t1570;
t1378 = (-t1485 * t1608 + t1487 * t1604) * t1570;
t1282 = t1377 * t1609 + t1378 * t1605;
t1272 = t1282 * t1606 + t1537 * t1610;
t1281 = t1377 * t1605 - t1609 * t1378;
t1677 = t1272 * t1607 + t1281 * t1611;
t1277 = t1364 * t1610 + t1368 * t1606;
t1373 = (pkin(3) * qJD(3) + t1790) * t1589 + t1615;
t1676 = t1277 * t1607 - t1373 * t1611;
t1286 = t1344 * t1606 + t1461 * t1610;
t1347 = t1440 * t1609 + t1605 * t1443;
t1675 = t1286 * t1607 - t1347 * t1611;
t1674 = t1308 * t1607 - t1448 * t1611;
t1345 = -t1438 * t1605 + t1609 * t1807;
t1496 = t1792 - t1793;
t1310 = t1345 * t1606 + t1496 * t1610;
t1346 = t1609 * t1438 + t1605 * t1807;
t1673 = t1310 * t1607 + t1346 * t1611;
t1318 = t1388 * t1606 + t1438 * t1610;
t1389 = t1480 * t1609 - t1819;
t1672 = t1318 * t1607 - t1389 * t1611;
t1324 = t1402 * t1606 + t1610 * t1807;
t1403 = -t1605 * t1722 - t1763;
t1671 = t1324 * t1607 - t1403 * t1611;
t1523 = -t1575 + t1793;
t1422 = t1523 * t1605 + t1763;
t1439 = -t1528 + t1642;
t1336 = t1422 * t1606 - t1439 * t1610;
t1421 = -t1609 * t1523 + t1743;
t1670 = t1336 * t1607 + t1421 * t1611;
t1524 = t1575 - t1792;
t1420 = t1524 * t1609 + t1819;
t1337 = t1420 * t1606 + t1443 * t1610;
t1423 = t1524 * t1605 - t1817;
t1669 = t1337 * t1607 + t1423 * t1611;
t1430 = t1550 * t1749 + t1609 * t1642;
t1371 = -t1430 * t1606 + t1725;
t1519 = t1550 * t1748;
t1432 = t1605 * t1642 - t1519;
t1668 = t1371 * t1607 - t1432 * t1611;
t1433 = t1476 * t1605 + t1551 * t1748;
t1372 = t1433 * t1606 - t1725;
t1431 = -t1609 * t1476 + t1724;
t1667 = t1372 * t1607 + t1431 * t1611;
t1446 = (t1550 * t1605 - t1551 * t1609) * t1579;
t1426 = t1446 * t1606 + t1542 * t1610;
t1447 = -t1519 - t1724;
t1666 = t1426 * t1607 + t1447 * t1611;
t1383 = t1464 * t1611 - t1465 * t1607;
t1384 = t1464 * t1607 + t1465 * t1611;
t1492 = t1499 - t1762;
t1563 = t1588 - t1591;
t1665 = t1492 * t1607 - t1563 * t1611;
t1531 = t1657 * t1601;
t1660 = t1531 * t1600 + t1560 * t1598;
t1659 = t1531 * t1598 - t1560 * t1600;
t1545 = t1729 * t1775;
t1656 = -qJDD(3) * t1611 + t1545 * t1607;
t1649 = pkin(5) * t1321 - t1154;
t1648 = (-t1481 * t1599 - t1482 * t1601) * pkin(7);
t1641 = -pkin(4) * t1230 - t1695;
t1520 = t1606 * t1647 - t1775 * t1791;
t1640 = t1520 * t1607 - t1702;
t1521 = t1556 * t1610 - t1595 * t1775;
t1639 = t1521 * t1607 + t1702;
t1638 = pkin(4) * t1365 - t1609 * t1103 - t1605 * t1106;
t1637 = pkin(4) * t1300 - t1609 * t1171 - t1605 * t1210;
t1636 = pkin(4) * t1809 - t1609 * t1176 - t1605 * t1219;
t1635 = pkin(4) * t1461 - t1173;
t1620 = pkin(4) * t1268 + pkin(10) * t1746 - t1609 * t1107;
t1062 = -t1088 * t1789 + t1620;
t1068 = -qJ(4) * t1088 - t1716;
t1080 = -t1087 * t1610 + t1268 * t1606;
t1051 = -pkin(8) * t1080 - t1062 * t1606 + t1068 * t1610;
t1055 = -pkin(2) * t1080 - t1804;
t1069 = t1081 * t1611 + t1088 * t1607;
t1634 = pkin(7) * t1069 + t1051 * t1607 + t1055 * t1611;
t1071 = -t1162 * t1789 + t1638;
t1109 = -qJ(4) * t1162 - t1715;
t1145 = -t1160 * t1610 + t1365 * t1606;
t1067 = -pkin(8) * t1145 - t1071 * t1606 + t1109 * t1610;
t1070 = -pkin(2) * t1145 - t1803;
t1116 = t1146 * t1611 + t1162 * t1607;
t1633 = pkin(7) * t1116 + t1067 * t1607 + t1070 * t1611;
t1104 = -t1231 * t1789 + t1637;
t1110 = -qJ(4) * t1231 - t1641;
t1178 = -t1230 * t1610 + t1300 * t1606;
t1075 = -pkin(8) * t1178 - t1104 * t1606 + t1110 * t1610;
t1089 = -pkin(2) * t1178 - t1801;
t1143 = t1179 * t1611 + t1231 * t1607;
t1632 = pkin(7) * t1143 + t1075 * t1607 + t1089 * t1611;
t1108 = -t1247 * t1789 + t1636;
t1618 = -pkin(4) * t1246 - t1649;
t1115 = -qJ(4) * t1247 - t1618;
t1186 = -t1246 * t1610 + t1606 * t1809;
t1077 = -pkin(8) * t1186 - t1108 * t1606 + t1115 * t1610;
t1098 = -pkin(2) * t1186 - t1800;
t1147 = t1187 * t1611 + t1247 * t1607;
t1631 = pkin(7) * t1147 + t1077 * t1607 + t1098 * t1611;
t1123 = -t1173 * t1789 + t1784;
t1136 = -qJ(4) * t1173 + t1785;
t1157 = t1338 * t1606 - t1610 * t1811;
t1086 = -pkin(8) * t1157 - t1123 * t1606 + t1136 * t1610;
t1101 = -pkin(2) * t1157 - t1802;
t1122 = t1158 * t1611 + t1173 * t1607;
t1630 = pkin(7) * t1122 + t1086 * t1607 + t1101 * t1611;
t1144 = -t1347 * t1789 + t1635;
t1263 = -qJ(4) * t1347 + t1783;
t1285 = -t1344 * t1610 + t1461 * t1606;
t1121 = -pkin(8) * t1285 - t1144 * t1606 + t1263 * t1610;
t1140 = -pkin(2) * t1285 - t1799;
t1245 = t1286 * t1611 + t1347 * t1607;
t1629 = pkin(7) * t1245 + t1121 * t1607 + t1140 * t1611;
t1194 = -qJ(4) * t1389 - t1699;
t1221 = -t1389 * t1789 + t1693;
t1317 = -t1388 * t1610 + t1438 * t1606;
t1141 = -pkin(8) * t1317 + t1194 * t1610 - t1221 * t1606;
t1177 = -pkin(2) * t1317 - t1798;
t1265 = t1318 * t1611 + t1389 * t1607;
t1628 = pkin(7) * t1265 + t1141 * t1607 + t1177 * t1611;
t1195 = -qJ(4) * t1403 - t1700;
t1228 = -t1403 * t1789 + t1692;
t1323 = -t1402 * t1610 + t1606 * t1807;
t1142 = -pkin(8) * t1323 + t1195 * t1610 - t1228 * t1606;
t1181 = -pkin(2) * t1323 - t1797;
t1267 = t1324 * t1611 + t1403 * t1607;
t1627 = pkin(7) * t1267 + t1142 * t1607 + t1181 * t1611;
t1276 = t1364 * t1606 - t1368 * t1610;
t1198 = -pkin(2) * t1276 - t1698;
t1207 = -pkin(8) * t1276 + t1373 * t1696;
t1244 = t1277 * t1611 + t1373 * t1607;
t1626 = pkin(7) * t1244 + t1198 * t1611 + t1207 * t1607;
t1613 = t1589 * t1790 + t1615;
t1359 = (-t1557 + t1723) * pkin(3) + t1613;
t1311 = -qJ(4) * t1499 - t1359 * t1606 + t1834;
t1314 = -t1806 + t1835;
t1625 = t1311 * t1607 + t1314 * t1611 + t1840;
t1358 = -pkin(3) * t1723 + qJ(4) * t1555 - t1613;
t1312 = -pkin(3) * t1762 + t1358 * t1610 - t1826;
t1313 = -t1815 - t1827;
t1624 = t1312 * t1607 + t1313 * t1611 + t1845;
t1366 = t1404 - t1835;
t1400 = t1765 - t1834;
t1623 = t1366 * t1611 + t1400 * t1607 - t1840;
t1367 = t1405 + t1827;
t1401 = t1764 + t1826;
t1622 = t1367 * t1611 + t1401 * t1607 - t1845;
t1273 = t1308 * t1611 + t1448 * t1607;
t1617 = pkin(7) * t1273 - (-pkin(2) * t1611 - pkin(8) * t1607) * t1307;
t1586 = t1601 * qJDD(2);
t1532 = t1560 * t1601;
t1530 = t1560 * t1599;
t1529 = t1657 * t1599;
t1522 = qJDD(3) * t1607 + t1545 * t1611;
t1500 = t1816 * t1606;
t1495 = t1656 * t1601;
t1494 = t1656 * t1599;
t1491 = t1555 * t1610 + t1557 * t1606;
t1479 = -t1532 * t1598 - t1600 * t1657;
t1478 = t1532 * t1600 - t1598 * t1657;
t1475 = t1521 * t1611 - t1703;
t1474 = t1520 * t1611 + t1703;
t1445 = t1492 * t1611 + t1563 * t1607;
t1437 = -t1495 * t1598 + t1522 * t1600;
t1436 = t1495 * t1600 + t1522 * t1598;
t1428 = -t1737 + (t1529 * t1599 + t1531 * t1601) * pkin(7);
t1427 = -t1741 + (-t1530 * t1599 - t1532 * t1601) * pkin(7);
t1425 = -t1446 * t1610 + t1542 * t1606;
t1418 = -t1599 * t1500 + t1601 * t1639;
t1417 = -t1599 * t1499 + t1601 * t1640;
t1416 = t1601 * t1500 + t1599 * t1639;
t1415 = t1601 * t1499 + t1599 * t1640;
t1406 = qJ(1) * (-t1482 * t1598 + t1493 * t1600);
t1382 = -t1599 * t1491 + t1601 * t1665;
t1381 = t1601 * t1491 + t1599 * t1665;
t1380 = pkin(2) * t1557 - t1764 - t1825;
t1379 = -pkin(2) * t1555 + t1765 - t1833;
t1376 = t1384 * t1601;
t1375 = t1384 * t1599;
t1370 = -t1433 * t1610 - t1726;
t1369 = t1430 * t1610 + t1726;
t1363 = -pkin(1) * t1530 + t1599 * t1464 + t1601 * t1690;
t1362 = pkin(1) * t1529 + t1599 * t1465 + t1601 * t1691;
t1361 = pkin(1) * t1532 - t1601 * t1464 + t1599 * t1690;
t1360 = -pkin(1) * t1531 - t1601 * t1465 + t1599 * t1691;
t1353 = -t1418 * t1598 + t1475 * t1600;
t1352 = -t1417 * t1598 + t1474 * t1600;
t1351 = t1418 * t1600 + t1475 * t1598;
t1350 = t1417 * t1600 + t1474 * t1598;
t1349 = -t1383 * t1601 + t1599 * t1525;
t1348 = -t1383 * t1599 - t1601 * t1525;
t1343 = t1426 * t1611 - t1447 * t1607;
t1335 = -t1420 * t1610 + t1443 * t1606;
t1334 = -t1422 * t1610 - t1439 * t1606;
t1316 = -t1382 * t1598 + t1445 * t1600;
t1315 = t1382 * t1600 + t1445 * t1598;
t1309 = -t1345 * t1610 + t1496 * t1606;
t1291 = t1372 * t1611 - t1431 * t1607;
t1290 = t1371 * t1611 + t1432 * t1607;
t1289 = t1833 + t1606 * t1358 + (pkin(2) + t1786) * t1555;
t1288 = t1825 + t1610 * t1359 + (-pkin(2) - t1776) * t1557;
t1283 = t1308 + t1734;
t1280 = -t1599 * t1425 + t1601 * t1666;
t1279 = t1601 * t1425 + t1599 * t1666;
t1278 = -pkin(2) * t1448 + pkin(8) * t1308;
t1275 = t1337 * t1611 - t1423 * t1607;
t1274 = t1336 * t1611 - t1421 * t1607;
t1271 = -t1282 * t1610 + t1537 * t1606;
t1270 = pkin(1) * t1349 + t1384 * t1782;
t1269 = -pkin(1) * t1348 + t1384 * t1781;
t1264 = t1611 * t1307 + t1648;
t1262 = (-t1348 * t1599 - t1349 * t1601) * pkin(7);
t1261 = t1356 * t1610 + t1357 * t1606 + t1734;
t1256 = -t1599 * t1370 + t1601 * t1667;
t1255 = -t1599 * t1369 + t1601 * t1668;
t1254 = t1601 * t1370 + t1599 * t1667;
t1253 = t1601 * t1369 + t1599 * t1668;
t1248 = t1310 * t1611 - t1346 * t1607;
t1236 = t1611 * t1266 - t1607 * t1552 + t1648;
t1227 = -t1607 * t1367 + t1611 * t1401 + t1865;
t1226 = -t1607 * t1366 + t1611 * t1400 + t1860;
t1225 = -t1599 * t1335 + t1601 * t1669;
t1224 = -t1599 * t1334 + t1601 * t1670;
t1223 = t1601 * t1335 + t1599 * t1669;
t1222 = t1601 * t1334 + t1599 * t1670;
t1216 = -t1599 * t1323 + t1601 * t1671;
t1215 = t1601 * t1323 + t1599 * t1671;
t1214 = t1307 * t1599 + t1601 * t1674;
t1213 = -t1307 * t1601 + t1599 * t1674;
t1212 = -t1599 * t1317 + t1601 * t1672;
t1211 = t1601 * t1317 + t1599 * t1672;
t1208 = t1272 * t1611 - t1281 * t1607;
t1204 = -t1235 * t1610 + t1728;
t1203 = -t1233 * t1610 - t1728;
t1202 = -t1599 * t1379 + t1601 * t1622 + t1862;
t1201 = -t1599 * t1380 + t1601 * t1623 + t1852;
t1200 = t1601 * t1379 + t1599 * t1622 - t1861;
t1199 = t1601 * t1380 + t1599 * t1623 - t1851;
t1197 = -t1283 * t1599 + t1601 * t1768 + t1717;
t1196 = t1283 * t1601 + t1599 * t1768 + t1735;
t1191 = -t1251 * t1610 + t1304 * t1606;
t1190 = -t1252 * t1610 - t1301 * t1606;
t1189 = -t1599 * t1309 + t1601 * t1673;
t1188 = t1601 * t1309 + t1599 * t1673;
t1185 = -t1599 * t1285 + t1601 * t1675;
t1184 = t1601 * t1285 + t1599 * t1675;
t1183 = t1611 * t1311 - t1607 * t1314 - t1860;
t1182 = t1611 * t1312 - t1607 * t1313 - t1865;
t1180 = pkin(8) * t1277 + (-pkin(2) + t1697) * t1373;
t1175 = -t1599 * t1276 + t1601 * t1676;
t1174 = t1601 * t1276 + t1599 * t1676;
t1170 = -t1599 * t1261 + t1601 * t1678 + t1717;
t1169 = t1601 * t1261 + t1599 * t1678 + t1735;
t1168 = -t1599 * t1288 + t1601 * t1625 - t1852;
t1167 = t1601 * t1288 + t1599 * t1625 + t1851;
t1166 = -t1599 * t1289 + t1601 * t1624 - t1862;
t1165 = t1601 * t1289 + t1599 * t1624 + t1861;
t1164 = -t1599 * t1271 + t1601 * t1677;
t1163 = t1601 * t1271 + t1599 * t1677;
t1156 = t1193 * t1611 - t1249 * t1607;
t1155 = t1192 * t1611 - t1250 * t1607;
t1151 = -t1161 * t1610 + t1424 * t1606;
t1149 = t1206 * t1611 - t1234 * t1607;
t1148 = t1205 * t1611 - t1232 * t1607;
t1139 = -pkin(2) * t1403 + pkin(8) * t1324 + t1195 * t1606 + t1228 * t1610;
t1138 = -pkin(2) * t1389 + pkin(8) * t1318 + t1194 * t1606 + t1221 * t1610;
t1137 = -(pkin(2) * t1607 - pkin(8) * t1611) * t1307 + (-t1213 * t1599 - t1214 * t1601) * pkin(7);
t1135 = -pkin(1) * t1213 - t1599 * t1278 + t1601 * t1617;
t1134 = pkin(1) * t1214 + t1601 * t1278 + t1599 * t1617;
t1133 = -t1599 * t1191 + t1601 * t1681;
t1132 = -t1599 * t1190 + t1601 * t1682;
t1131 = t1601 * t1191 + t1599 * t1681;
t1130 = t1601 * t1190 + t1599 * t1682;
t1129 = -t1599 * t1204 + t1601 * t1679;
t1128 = -t1599 * t1203 + t1601 * t1680;
t1127 = t1601 * t1204 + t1599 * t1679;
t1126 = t1601 * t1203 + t1599 * t1680;
t1125 = -t1599 * t1186 + t1601 * t1683;
t1124 = t1601 * t1186 + t1599 * t1683;
t1120 = -t1599 * t1178 + t1601 * t1684;
t1119 = t1601 * t1178 + t1599 * t1684;
t1118 = -pkin(2) * t1347 + pkin(8) * t1286 + t1144 * t1610 + t1263 * t1606;
t1117 = t1152 * t1611 - t1159 * t1607;
t1102 = -t1607 * t1198 + t1611 * t1207 + (-t1174 * t1599 - t1175 * t1601) * pkin(7);
t1100 = -t1599 * t1157 + t1601 * t1685;
t1099 = t1601 * t1157 + t1599 * t1685;
t1097 = -t1599 * t1151 + t1601 * t1686;
t1096 = t1601 * t1151 + t1599 * t1686;
t1095 = t1611 * t1142 - t1607 * t1181 + (-t1215 * t1599 - t1216 * t1601) * pkin(7);
t1094 = -t1599 * t1145 + t1601 * t1687;
t1093 = t1601 * t1145 + t1599 * t1687;
t1092 = -pkin(1) * t1174 - t1599 * t1180 + t1601 * t1626;
t1091 = pkin(1) * t1175 + t1601 * t1180 + t1599 * t1626;
t1090 = t1611 * t1141 - t1607 * t1177 + (-t1211 * t1599 - t1212 * t1601) * pkin(7);
t1085 = -pkin(1) * t1215 - t1599 * t1139 + t1601 * t1627;
t1084 = pkin(1) * t1216 + t1601 * t1139 + t1599 * t1627;
t1083 = -pkin(1) * t1211 - t1599 * t1138 + t1601 * t1628;
t1082 = pkin(1) * t1212 + t1601 * t1138 + t1599 * t1628;
t1079 = t1611 * t1121 - t1607 * t1140 + (-t1184 * t1599 - t1185 * t1601) * pkin(7);
t1078 = -pkin(2) * t1173 + pkin(8) * t1158 + t1123 * t1610 + t1136 * t1606;
t1076 = -pkin(2) * t1247 + pkin(8) * t1187 + t1108 * t1610 + t1115 * t1606;
t1074 = -pkin(2) * t1231 + pkin(8) * t1179 + t1104 * t1610 + t1110 * t1606;
t1073 = -pkin(1) * t1184 - t1599 * t1118 + t1601 * t1629;
t1072 = pkin(1) * t1185 + t1601 * t1118 + t1599 * t1629;
t1066 = t1611 * t1077 - t1607 * t1098 + (-t1124 * t1599 - t1125 * t1601) * pkin(7);
t1065 = -pkin(2) * t1162 + pkin(8) * t1146 + t1071 * t1610 + t1109 * t1606;
t1064 = t1611 * t1086 - t1607 * t1101 + (-t1099 * t1599 - t1100 * t1601) * pkin(7);
t1063 = t1611 * t1075 - t1607 * t1089 + (-t1119 * t1599 - t1120 * t1601) * pkin(7);
t1061 = -t1599 * t1080 + t1601 * t1688;
t1060 = t1601 * t1080 + t1599 * t1688;
t1059 = -pkin(1) * t1124 - t1599 * t1076 + t1601 * t1631;
t1058 = pkin(1) * t1125 + t1601 * t1076 + t1599 * t1631;
t1057 = -pkin(1) * t1099 - t1599 * t1078 + t1601 * t1630;
t1056 = pkin(1) * t1100 + t1601 * t1078 + t1599 * t1630;
t1054 = -pkin(1) * t1119 - t1599 * t1074 + t1601 * t1632;
t1053 = pkin(1) * t1120 + t1601 * t1074 + t1599 * t1632;
t1052 = t1611 * t1067 - t1607 * t1070 + (-t1093 * t1599 - t1094 * t1601) * pkin(7);
t1050 = -pkin(2) * t1088 + pkin(8) * t1081 + t1062 * t1610 + t1068 * t1606;
t1049 = -pkin(1) * t1093 - t1599 * t1065 + t1601 * t1633;
t1048 = pkin(1) * t1094 + t1601 * t1065 + t1599 * t1633;
t1047 = t1611 * t1051 - t1607 * t1055 + (-t1060 * t1599 - t1061 * t1601) * pkin(7);
t1046 = -pkin(1) * t1060 - t1599 * t1050 + t1601 * t1634;
t1045 = pkin(1) * t1061 + t1601 * t1050 + t1599 * t1634;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1813, -t1812, -t1795, -qJ(1) * t1795, 0, 0, -t1659, 0, t1479, t1598 * t1733, -qJ(1) * t1478 - t1363 * t1598 + t1427 * t1600, qJ(1) * t1660 - t1598 * t1362 + t1600 * t1428, -t1376 * t1598 + t1383 * t1600, t1600 * t1262 - t1598 * t1269 - qJ(1) * (t1349 * t1600 + t1384 * t1598), t1353, t1316, -t1855, t1352, t1848, t1437, -t1598 * t1201 + t1600 * t1226 + t1859, -t1598 * t1202 + t1600 * t1227 + t1864, -t1197 * t1598 + t1264 * t1600 - t1779, t1600 * t1137 - t1598 * t1135 - qJ(1) * (t1214 * t1600 + t1273 * t1598), t1437, t1855, -t1848, t1353, t1316, t1352, -t1170 * t1598 + t1236 * t1600 - t1779, -t1598 * t1168 + t1600 * t1183 - t1859, -t1598 * t1166 + t1600 * t1182 - t1864, t1600 * t1102 - t1598 * t1092 - qJ(1) * (t1175 * t1600 + t1244 * t1598), -t1256 * t1598 + t1291 * t1600, -t1189 * t1598 + t1248 * t1600, -t1225 * t1598 + t1275 * t1600, -t1255 * t1598 + t1290 * t1600, -t1224 * t1598 + t1274 * t1600, -t1280 * t1598 + t1343 * t1600, t1600 * t1090 - t1598 * t1083 - qJ(1) * (t1212 * t1600 + t1265 * t1598), t1600 * t1095 - t1598 * t1085 - qJ(1) * (t1216 * t1600 + t1267 * t1598), t1600 * t1079 - t1598 * t1073 - qJ(1) * (t1185 * t1600 + t1245 * t1598), t1600 * t1064 - t1598 * t1057 - qJ(1) * (t1100 * t1600 + t1122 * t1598), -t1129 * t1598 + t1149 * t1600, -t1097 * t1598 + t1117 * t1600, -t1133 * t1598 + t1156 * t1600, -t1128 * t1598 + t1148 * t1600, -t1132 * t1598 + t1155 * t1600, -t1164 * t1598 + t1208 * t1600, t1600 * t1063 - t1598 * t1054 - qJ(1) * (t1120 * t1600 + t1143 * t1598), t1600 * t1066 - t1598 * t1059 - qJ(1) * (t1125 * t1600 + t1147 * t1598), t1600 * t1052 - t1598 * t1049 - qJ(1) * (t1094 * t1600 + t1116 * t1598), t1600 * t1047 - t1598 * t1046 - qJ(1) * (t1061 * t1600 + t1069 * t1598); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1812, -t1813, t1796, qJ(1) * t1796, 0, 0, t1660, 0, t1478, -t1600 * t1733, qJ(1) * t1479 + t1363 * t1600 + t1427 * t1598, qJ(1) * t1659 + t1600 * t1362 + t1598 * t1428, t1376 * t1600 + t1383 * t1598, t1598 * t1262 + t1600 * t1269 + qJ(1) * (-t1349 * t1598 + t1384 * t1600), t1351, t1315, t1854, t1350, -t1847, t1436, t1600 * t1201 + t1598 * t1226 + t1858, t1600 * t1202 + t1598 * t1227 + t1863, t1197 * t1600 + t1264 * t1598 + t1406, t1598 * t1137 + t1600 * t1135 + qJ(1) * (-t1214 * t1598 + t1273 * t1600), t1436, -t1854, t1847, t1351, t1315, t1350, t1170 * t1600 + t1236 * t1598 + t1406, t1600 * t1168 + t1598 * t1183 - t1858, t1600 * t1166 + t1598 * t1182 - t1863, t1598 * t1102 + t1600 * t1092 + qJ(1) * (-t1175 * t1598 + t1244 * t1600), t1256 * t1600 + t1291 * t1598, t1189 * t1600 + t1248 * t1598, t1225 * t1600 + t1275 * t1598, t1255 * t1600 + t1290 * t1598, t1224 * t1600 + t1274 * t1598, t1280 * t1600 + t1343 * t1598, t1598 * t1090 + t1600 * t1083 + qJ(1) * (-t1212 * t1598 + t1265 * t1600), t1598 * t1095 + t1600 * t1085 + qJ(1) * (-t1216 * t1598 + t1267 * t1600), t1598 * t1079 + t1600 * t1073 + qJ(1) * (-t1185 * t1598 + t1245 * t1600), t1598 * t1064 + t1600 * t1057 + qJ(1) * (-t1100 * t1598 + t1122 * t1600), t1129 * t1600 + t1149 * t1598, t1097 * t1600 + t1117 * t1598, t1133 * t1600 + t1156 * t1598, t1128 * t1600 + t1148 * t1598, t1132 * t1600 + t1155 * t1598, t1164 * t1600 + t1208 * t1598, t1598 * t1063 + t1600 * t1054 + qJ(1) * (-t1120 * t1598 + t1143 * t1600), t1598 * t1066 + t1600 * t1059 + qJ(1) * (-t1125 * t1598 + t1147 * t1600), t1598 * t1052 + t1600 * t1049 + qJ(1) * (-t1094 * t1598 + t1116 * t1600), t1598 * t1047 + t1600 * t1046 + qJ(1) * (-t1061 * t1598 + t1069 * t1600); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1714, t1564, 0, 0, 0, 0, t1529, 0, t1530, t1586, t1361, t1360, t1375, t1270, t1416, t1381, t1409, t1415, -t1408, t1494, t1199, t1200, t1196, t1134, t1494, -t1409, t1408, t1416, t1381, t1415, t1169, t1167, t1165, t1091, t1254, t1188, t1223, t1253, t1222, t1279, t1082, t1084, t1072, t1056, t1127, t1096, t1131, t1126, t1130, t1163, t1053, t1058, t1048, t1045; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1780, -t1714, 0, 0, 0, t1560, 0, -t1657, 0, t1427, t1428, t1383, t1262, t1475, t1445, t1472, t1474, -t1471, t1522, t1226, t1227, t1264, t1137, t1522, -t1472, t1471, t1475, t1445, t1474, t1236, t1183, t1182, t1102, t1291, t1248, t1275, t1290, t1274, t1343, t1090, t1095, t1079, t1064, t1149, t1117, t1156, t1148, t1155, t1208, t1063, t1066, t1052, t1047; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1780, 0, -t1564, 0, 0, 0, t1531, 0, t1532, -t1733, t1363, t1362, t1376, t1269, t1418, t1382, t1413, t1417, -t1412, t1495, t1201, t1202, t1197, t1135, t1495, -t1413, t1412, t1418, t1382, t1417, t1170, t1168, t1166, t1092, t1256, t1189, t1225, t1255, t1224, t1280, t1083, t1085, t1073, t1057, t1129, t1097, t1133, t1128, t1132, t1164, t1054, t1059, t1049, t1046; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1714, t1564, 0, 0, 0, 0, t1529, 0, t1530, t1586, t1361, t1360, t1375, t1270, t1416, t1381, t1409, t1415, -t1408, t1494, t1199, t1200, t1196, t1134, t1494, -t1409, t1408, t1416, t1381, t1415, t1169, t1167, t1165, t1091, t1254, t1188, t1223, t1253, t1222, t1279, t1082, t1084, t1072, t1056, t1127, t1096, t1131, t1126, t1130, t1163, t1053, t1058, t1048, t1045; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1612, 0, 0, -t1525, t1464, 0, t1521, t1492, t1513, t1520, -t1510, t1545, t1400, t1401, t1307, pkin(8) * t1307, t1545, -t1513, t1510, t1521, t1492, t1520, t1266, t1311, t1312, t1207, t1372, t1310, t1337, t1371, t1336, t1426, t1141, t1142, t1121, t1086, t1206, t1152, t1193, t1205, t1192, t1272, t1075, t1077, t1067, t1051; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1612, 0, qJDD(2), 0, t1525, 0, t1465, 0, t1578, -t1563, -t1732, -t1578, -t1731, -qJDD(3), t1366, t1367, 0, pkin(2) * t1307, -qJDD(3), t1732, t1731, t1578, -t1563, -t1578, t1552, t1314, t1313, t1198, t1431, t1346, t1423, -t1432, t1421, t1447, t1177, t1181, t1140, t1101, t1234, t1159, t1249, t1232, t1250, t1281, t1089, t1098, t1070, t1055; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1464, -t1465, 0, 0, t1500, t1491, t1505, t1499, t1501, 0, t1380, t1379, t1283, t1278, 0, -t1505, -t1501, t1500, t1491, t1499, t1261, t1288, t1289, t1180, t1370, t1309, t1335, t1369, t1334, t1425, t1138, t1139, t1118, t1078, t1204, t1151, t1191, t1203, t1190, t1271, t1074, t1076, t1065, t1050; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1556, t1557, t1565, -t1584, t1573, t1584, 0, t1448, t1404, 0, t1584, -t1565, -t1573, t1556, t1557, -t1584, t1357, -qJ(4) * t1557, t1358, -qJ(4) * t1373, -t1497, t1496, t1443, t1497, -t1439, t1542, t1194, t1195, t1263, t1136, t1429, t1424, t1304, -t1429, -t1301, t1537, t1110, t1115, t1109, t1068; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1723, t1555, t1571, -t1647, t1566, -t1723, -t1448, 0, t1405, 0, -t1723, -t1571, -t1566, t1723, t1555, -t1647, t1356, t1359, pkin(3) * t1555, -pkin(3) * t1373, -t1433, -t1345, -t1420, t1430, -t1422, -t1446, t1221, t1228, t1144, t1123, -t1235, -t1161, -t1251, -t1233, -t1252, -t1282, t1104, t1108, t1071, t1062; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1578, t1563, t1732, t1578, t1731, qJDD(3), -t1404, -t1405, 0, 0, qJDD(3), -t1732, -t1731, -t1578, t1563, t1578, -t1552, t1806, t1815, t1698, -t1431, -t1346, -t1423, t1432, -t1421, -t1447, t1798, t1797, t1799, t1802, -t1234, -t1159, -t1249, -t1232, -t1250, -t1281, t1801, t1800, t1803, t1804; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(3), -t1732, -t1731, -t1578, t1563, t1578, 0, t1368, t1364, 0, -t1431, -t1346, -t1423, t1432, -t1421, -t1447, -pkin(9) * t1388 + t1744, -pkin(9) * t1402 + t1327, -pkin(9) * t1344 - t1811, -pkin(9) * t1811, -t1234, -t1159, -t1249, -t1232, -t1250, -t1281, -pkin(9) * t1230 - t1709, -pkin(9) * t1246 - t1708, -pkin(9) * t1160 - t1710, -pkin(9) * t1087 - t1655; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1584, t1565, t1573, -t1556, -t1557, t1584, -t1368, 0, t1373, 0, t1497, -t1496, -t1443, -t1497, t1439, -t1542, t1699, t1700, -t1783, -t1785, -t1429, -t1424, -t1304, t1429, t1301, -t1537, t1641, t1618, t1715, t1716; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1723, t1571, t1566, -t1723, -t1555, t1647, -t1364, -t1373, 0, 0, t1433, t1345, t1420, -t1430, t1422, t1446, pkin(9) * t1389 - t1693, pkin(9) * t1403 - t1692, pkin(9) * t1347 - t1635, pkin(9) * t1173 - t1784, t1235, t1161, t1251, t1233, t1252, t1282, pkin(9) * t1231 - t1637, pkin(9) * t1247 - t1636, pkin(9) * t1162 - t1638, pkin(9) * t1088 - t1620; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1476, -t1438, t1808, -t1527, t1523, t1527, 0, t1338, t1259, 0, t1299, t1243, t1332, t1297, t1333, t1378, t1210, t1219, t1106, -pkin(10) * t1113; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1528, t1807, t1524, -t1642, t1463, -t1528, -t1338, 0, t1260, 0, t1298, t1241, t1330, t1296, t1331, t1377, t1171, t1176, t1103, t1107; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1497, t1496, t1443, t1497, -t1439, t1542, -t1259, -t1260, 0, 0, t1429, t1424, t1304, -t1429, -t1301, t1537, t1695, t1649, t1239, t1112; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1355, -t1300, t1810, t1458, t1454, -t1458, 0, t1268, t1153, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1460, t1809, t1455, -t1650, t1386, -t1460, -t1268, 0, t1154, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1429, t1424, t1304, -t1429, -t1301, t1537, -t1153, -t1154, 0, 0;];
m_new_reg  = t1;