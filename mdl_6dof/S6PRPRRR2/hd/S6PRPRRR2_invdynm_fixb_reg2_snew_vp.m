% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6PRPRRR2
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,d6,theta1,theta3]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 00:26
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6PRPRRR2_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRR2_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRR2_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPRRR2_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPRRR2_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRPRRR2_invdynm_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 00:25:44
% EndTime: 2019-05-05 00:26:26
% DurationCPUTime: 43.68s
% Computational Cost: add. (357776->985), mult. (674594->1488), div. (0->0), fcn. (499361->14), ass. (0->689)
t1619 = cos(qJ(2));
t1605 = sin(pkin(11));
t1608 = cos(pkin(11));
t1574 = g(1) * t1608 + g(2) * t1605;
t1615 = sin(qJ(2));
t1601 = g(3) - qJDD(1);
t1606 = sin(pkin(6));
t1726 = t1601 * t1606;
t1573 = g(1) * t1605 - t1608 * g(2);
t1609 = cos(pkin(6));
t1735 = t1573 * t1609;
t1775 = t1726 - t1735;
t1483 = -t1619 * t1574 - t1615 * t1775;
t1620 = qJD(2) ^ 2;
t1471 = -t1620 * pkin(2) + t1483;
t1604 = sin(pkin(12));
t1607 = cos(pkin(12));
t1482 = -t1574 * t1615 + t1619 * t1775;
t1645 = qJDD(2) * pkin(2) - t1482;
t1409 = t1604 * t1471 - t1607 * t1645;
t1410 = t1607 * t1471 + t1604 * t1645;
t1707 = t1409 * t1604 + t1607 * t1410;
t1304 = t1409 * t1607 - t1410 * t1604;
t1746 = t1304 * t1615;
t1782 = t1619 * t1707 + t1746;
t1745 = t1304 * t1619;
t1228 = -t1615 * t1707 + t1745;
t1566 = qJDD(2) * t1604 + t1607 * t1620;
t1725 = t1601 * t1609;
t1736 = t1573 * t1606;
t1539 = t1725 + t1736;
t1649 = -qJDD(3) + t1539;
t1477 = -qJ(3) * t1566 + t1607 * t1649;
t1567 = qJDD(2) * t1607 - t1604 * t1620;
t1764 = -qJ(3) * t1567 - t1604 * t1649;
t1781 = -t1615 * t1477 + t1619 * t1764;
t1780 = -t1477 * t1619 - t1615 * t1764;
t1612 = sin(qJ(6));
t1613 = sin(qJ(5));
t1617 = cos(qJ(5));
t1614 = sin(qJ(4));
t1752 = qJD(2) * t1614;
t1557 = -t1617 * qJD(4) + t1613 * t1752;
t1558 = qJD(4) * t1613 + t1617 * t1752;
t1616 = cos(qJ(6));
t1506 = t1616 * t1557 + t1558 * t1612;
t1508 = -t1557 * t1612 + t1558 * t1616;
t1444 = t1508 * t1506;
t1591 = qJD(4) * t1752;
t1618 = cos(qJ(4));
t1715 = t1618 * qJDD(2);
t1563 = -t1591 + t1715;
t1552 = -qJDD(5) + t1563;
t1548 = -qJDD(6) + t1552;
t1766 = -t1444 - t1548;
t1779 = t1612 * t1766;
t1777 = t1616 * t1766;
t1512 = t1566 * t1615 - t1567 * t1619;
t1655 = t1566 * t1619 + t1567 * t1615;
t1767 = t1655 * t1609;
t1774 = t1512 * t1608 + t1605 * t1767;
t1773 = t1512 * t1605 - t1608 * t1767;
t1737 = t1558 * t1557;
t1629 = -t1552 - t1737;
t1772 = t1613 * t1629;
t1770 = t1617 * t1629;
t1768 = t1655 * t1606;
t1401 = -t1620 * pkin(3) + qJDD(2) * pkin(8) + t1410;
t1521 = t1618 * t1649;
t1367 = t1401 * t1614 + t1521;
t1368 = t1618 * t1401 - t1614 * t1649;
t1281 = t1614 * t1367 + t1618 * t1368;
t1751 = qJD(2) * t1618;
t1592 = qJD(4) * t1751;
t1716 = t1614 * qJDD(2);
t1562 = t1592 + t1716;
t1651 = -t1613 * qJDD(4) - t1617 * t1562;
t1494 = -qJD(5) * t1557 - t1651;
t1652 = t1617 * qJDD(4) - t1613 * t1562;
t1628 = qJD(5) * t1558 - t1652;
t1387 = -t1506 * qJD(6) + t1616 * t1494 - t1612 * t1628;
t1588 = -qJD(5) + t1751;
t1579 = -qJD(6) + t1588;
t1472 = t1506 * t1579;
t1765 = t1472 + t1387;
t1541 = t1557 * t1588;
t1456 = t1494 - t1541;
t1706 = t1612 * t1494 + t1616 * t1628;
t1326 = (qJD(6) + t1579) * t1508 + t1706;
t1763 = qJD(4) ^ 2;
t1504 = t1506 ^ 2;
t1505 = t1508 ^ 2;
t1762 = t1557 ^ 2;
t1551 = t1558 ^ 2;
t1578 = t1579 ^ 2;
t1586 = t1588 ^ 2;
t1761 = pkin(2) * t1304;
t1760 = pkin(4) * t1614;
t1759 = pkin(4) * t1618;
t1694 = -pkin(9) * t1614 - t1759;
t1560 = t1694 * qJD(2);
t1337 = -pkin(4) * t1763 + qJDD(4) * pkin(9) + t1560 * t1751 + t1368;
t1400 = -qJDD(2) * pkin(3) - t1620 * pkin(8) + t1409;
t1692 = -t1563 + t1591;
t1693 = t1562 + t1592;
t1348 = pkin(4) * t1692 - pkin(9) * t1693 + t1400;
t1261 = t1613 * t1337 - t1617 * t1348;
t1227 = t1629 * pkin(5) - pkin(10) * t1456 - t1261;
t1262 = t1617 * t1337 + t1613 * t1348;
t1532 = -pkin(5) * t1588 - pkin(10) * t1558;
t1233 = -pkin(5) * t1762 - pkin(10) * t1628 + t1588 * t1532 + t1262;
t1144 = -t1616 * t1227 + t1233 * t1612;
t1145 = t1227 * t1612 + t1233 * t1616;
t1091 = -t1144 * t1616 + t1145 * t1612;
t1758 = pkin(5) * t1091;
t1329 = -t1472 + t1387;
t1254 = -t1326 * t1612 - t1329 * t1616;
t1757 = pkin(5) * t1254;
t1416 = t1482 * t1615 + t1483 * t1619;
t1756 = pkin(7) * t1416;
t1753 = qJD(2) * qJD(4);
t1750 = t1091 * t1613;
t1749 = t1091 * t1617;
t1336 = t1521 - qJDD(4) * pkin(4) - t1763 * pkin(9) + (qJD(2) * t1560 + t1401) * t1614;
t1285 = pkin(5) * t1628 - pkin(10) * t1762 + t1558 * t1532 + t1336;
t1748 = t1285 * t1612;
t1747 = t1285 * t1616;
t1744 = t1336 * t1613;
t1743 = t1336 * t1617;
t1418 = -t1444 + t1548;
t1742 = t1418 * t1612;
t1741 = t1418 * t1616;
t1479 = t1552 - t1737;
t1740 = t1479 * t1613;
t1739 = t1479 * t1617;
t1738 = t1508 * t1579;
t1587 = t1614 * t1620 * t1618;
t1575 = qJDD(4) + t1587;
t1734 = t1575 * t1614;
t1576 = qJDD(4) - t1587;
t1733 = t1576 * t1614;
t1732 = t1576 * t1618;
t1731 = t1579 * t1612;
t1730 = t1579 * t1616;
t1729 = t1588 * t1613;
t1728 = t1588 * t1617;
t1599 = t1614 ^ 2;
t1727 = t1599 * t1620;
t1724 = t1605 * t1601;
t1723 = t1608 * t1601;
t1395 = t1614 * t1400;
t1722 = t1615 * t1539;
t1396 = t1618 * t1400;
t1721 = t1619 * t1539;
t1719 = -pkin(3) * t1400 + pkin(8) * t1281;
t1600 = t1618 ^ 2;
t1718 = t1599 + t1600;
t1717 = t1606 * qJDD(2);
t1714 = t1614 * t1444;
t1713 = t1618 * t1444;
t1712 = t1614 * t1737;
t1711 = t1618 * t1737;
t1583 = -t1727 - t1763;
t1531 = -t1583 * t1614 - t1732;
t1561 = 0.2e1 * t1592 + t1716;
t1710 = -pkin(3) * t1561 + pkin(8) * t1531 + t1395;
t1597 = t1600 * t1620;
t1585 = -t1597 - t1763;
t1529 = t1585 * t1618 - t1734;
t1564 = -0.2e1 * t1591 + t1715;
t1709 = pkin(3) * t1564 + pkin(8) * t1529 - t1396;
t1708 = t1608 * t1717;
t1092 = t1144 * t1612 + t1616 * t1145;
t1184 = t1261 * t1613 + t1617 * t1262;
t1705 = -t1573 * t1605 - t1608 * t1574;
t1704 = t1604 * t1587;
t1703 = t1607 * t1587;
t1062 = t1092 * t1613 + t1749;
t1088 = -pkin(5) * t1285 + pkin(10) * t1092;
t1026 = -pkin(9) * t1062 - pkin(10) * t1749 - t1088 * t1613;
t1041 = -pkin(4) * t1062 - t1758;
t1063 = t1092 * t1617 - t1750;
t1060 = t1063 * t1618 + t1285 * t1614;
t1702 = -pkin(3) * t1062 + pkin(8) * t1060 + t1614 * t1026 + t1618 * t1041;
t1256 = -t1326 * t1616 + t1329 * t1612;
t1398 = -t1504 - t1505;
t1073 = -pkin(5) * t1398 + pkin(10) * t1256 + t1092;
t1082 = -pkin(10) * t1254 - t1091;
t1176 = t1254 * t1617 + t1256 * t1613;
t1045 = -pkin(9) * t1176 - t1073 * t1613 + t1082 * t1617;
t1137 = -pkin(4) * t1176 - t1757;
t1178 = -t1254 * t1613 + t1256 * t1617;
t1157 = t1178 * t1618 + t1398 * t1614;
t1701 = -pkin(3) * t1176 + pkin(8) * t1157 + t1614 * t1045 + t1618 * t1137;
t1428 = -t1578 - t1504;
t1320 = t1428 * t1616 - t1779;
t1325 = (qJD(6) - t1579) * t1508 + t1706;
t1189 = -pkin(5) * t1325 + pkin(10) * t1320 - t1747;
t1319 = t1428 * t1612 + t1777;
t1217 = -pkin(10) * t1319 + t1748;
t1245 = t1319 * t1617 + t1320 * t1613;
t1112 = -pkin(9) * t1245 - t1189 * t1613 + t1217 * t1617;
t1650 = pkin(5) * t1319 - t1144;
t1114 = -pkin(4) * t1245 - t1650;
t1246 = -t1319 * t1613 + t1320 * t1617;
t1197 = t1246 * t1618 + t1325 * t1614;
t1700 = -pkin(3) * t1245 + pkin(8) * t1197 + t1614 * t1112 + t1618 * t1114;
t1459 = -t1505 - t1578;
t1346 = -t1459 * t1612 + t1741;
t1194 = -pkin(5) * t1765 + pkin(10) * t1346 + t1748;
t1345 = t1459 * t1616 + t1742;
t1230 = -pkin(10) * t1345 + t1747;
t1266 = t1345 * t1617 + t1346 * t1613;
t1117 = -pkin(9) * t1266 - t1194 * t1613 + t1230 * t1617;
t1644 = pkin(5) * t1345 - t1145;
t1119 = -pkin(4) * t1266 - t1644;
t1267 = -t1345 * t1613 + t1346 * t1617;
t1202 = t1267 * t1618 + t1614 * t1765;
t1699 = -pkin(3) * t1266 + pkin(8) * t1202 + t1614 * t1117 + t1618 * t1119;
t1503 = -t1586 - t1762;
t1421 = t1503 * t1613 + t1770;
t1232 = -pkin(4) * t1421 + t1261;
t1286 = -pkin(9) * t1421 + t1744;
t1422 = t1503 * t1617 - t1772;
t1540 = t1558 * t1588;
t1453 = t1540 - t1628;
t1342 = t1422 * t1618 - t1453 * t1614;
t1698 = -pkin(3) * t1421 + pkin(8) * t1342 + t1618 * t1232 + t1614 * t1286;
t1516 = -t1551 - t1586;
t1429 = t1516 * t1617 + t1740;
t1235 = -pkin(4) * t1429 + t1262;
t1290 = -pkin(9) * t1429 + t1743;
t1430 = -t1516 * t1613 + t1739;
t1457 = (qJD(5) - t1588) * t1557 + t1651;
t1350 = t1430 * t1618 - t1457 * t1614;
t1697 = -pkin(3) * t1429 + pkin(8) * t1350 + t1618 * t1235 + t1614 * t1290;
t1568 = t1718 * qJDD(2);
t1571 = t1597 + t1727;
t1696 = pkin(3) * t1571 + pkin(8) * t1568 + t1281;
t1695 = -pkin(4) * t1336 + pkin(9) * t1184;
t1569 = qJDD(2) * t1619 - t1615 * t1620;
t1691 = -pkin(7) * t1569 - t1722;
t1653 = qJDD(2) * t1615 + t1619 * t1620;
t1690 = -pkin(7) * t1653 + t1721;
t1023 = t1060 * t1604 - t1062 * t1607;
t1024 = t1060 * t1607 + t1062 * t1604;
t1689 = t1023 * t1619 + t1024 * t1615;
t1105 = t1157 * t1604 - t1176 * t1607;
t1106 = t1157 * t1607 + t1176 * t1604;
t1688 = t1105 * t1619 + t1106 * t1615;
t1151 = t1184 * t1618 + t1336 * t1614;
t1183 = -t1261 * t1617 + t1262 * t1613;
t1107 = t1151 * t1604 - t1183 * t1607;
t1108 = t1151 * t1607 + t1183 * t1604;
t1687 = t1107 * t1619 + t1108 * t1615;
t1255 = -t1325 * t1612 + t1616 * t1765;
t1257 = -t1325 * t1616 - t1612 * t1765;
t1179 = -t1255 * t1613 + t1257 * t1617;
t1439 = t1505 - t1504;
t1170 = t1179 * t1618 + t1439 * t1614;
t1177 = t1255 * t1617 + t1257 * t1613;
t1109 = t1170 * t1604 - t1177 * t1607;
t1110 = t1170 * t1607 + t1177 * t1604;
t1686 = t1109 * t1619 + t1110 * t1615;
t1140 = t1197 * t1604 - t1245 * t1607;
t1141 = t1197 * t1607 + t1245 * t1604;
t1685 = t1140 * t1619 + t1141 * t1615;
t1158 = t1202 * t1604 - t1266 * t1607;
t1159 = t1202 * t1607 + t1266 * t1604;
t1684 = t1158 * t1619 + t1159 * t1615;
t1386 = -qJD(6) * t1508 - t1706;
t1321 = t1386 * t1616 - t1506 * t1731;
t1322 = -t1386 * t1612 - t1506 * t1730;
t1249 = -t1321 * t1613 + t1322 * t1617;
t1220 = t1249 * t1618 - t1714;
t1247 = t1321 * t1617 + t1322 * t1613;
t1160 = t1220 * t1604 - t1247 * t1607;
t1162 = t1220 * t1607 + t1247 * t1604;
t1683 = t1160 * t1619 + t1162 * t1615;
t1323 = t1387 * t1612 - t1508 * t1730;
t1324 = t1387 * t1616 + t1508 * t1731;
t1250 = -t1323 * t1613 + t1324 * t1617;
t1221 = t1250 * t1618 + t1714;
t1248 = t1323 * t1617 + t1324 * t1613;
t1161 = t1221 * t1604 - t1248 * t1607;
t1163 = t1221 * t1607 + t1248 * t1604;
t1682 = t1161 * t1619 + t1163 * t1615;
t1470 = -t1505 + t1578;
t1353 = t1470 * t1616 + t1779;
t1355 = -t1470 * t1612 + t1777;
t1276 = -t1353 * t1613 + t1355 * t1617;
t1210 = t1276 * t1618 + t1329 * t1614;
t1274 = t1353 * t1617 + t1355 * t1613;
t1171 = t1210 * t1604 - t1274 * t1607;
t1173 = t1210 * t1607 + t1274 * t1604;
t1681 = t1171 * t1619 + t1173 * t1615;
t1469 = t1504 - t1578;
t1354 = t1469 * t1612 - t1741;
t1356 = t1469 * t1616 + t1742;
t1277 = -t1354 * t1613 + t1356 * t1617;
t1211 = t1277 * t1618 - t1326 * t1614;
t1275 = t1354 * t1617 + t1356 * t1613;
t1172 = t1211 * t1604 - t1275 * t1607;
t1174 = t1211 * t1607 + t1275 * t1604;
t1680 = t1172 * t1619 + t1174 * t1615;
t1413 = (t1506 * t1612 + t1508 * t1616) * t1579;
t1414 = (t1506 * t1616 - t1508 * t1612) * t1579;
t1309 = -t1413 * t1613 + t1414 * t1617;
t1297 = t1309 * t1618 - t1548 * t1614;
t1308 = t1413 * t1617 + t1414 * t1613;
t1222 = t1297 * t1604 - t1308 * t1607;
t1223 = t1297 * t1607 + t1308 * t1604;
t1679 = t1222 * t1619 + t1223 * t1615;
t1236 = t1281 * t1604 - t1400 * t1607;
t1237 = t1281 * t1607 + t1400 * t1604;
t1678 = t1236 * t1619 + t1237 * t1615;
t1454 = (-qJD(5) - t1588) * t1558 + t1652;
t1375 = t1454 * t1617 + t1456 * t1613;
t1474 = t1551 + t1762;
t1314 = t1375 * t1618 - t1474 * t1614;
t1373 = t1454 * t1613 - t1456 * t1617;
t1263 = t1314 * t1604 - t1373 * t1607;
t1264 = t1314 * t1607 + t1373 * t1604;
t1677 = t1263 * t1619 + t1264 * t1615;
t1455 = t1494 + t1541;
t1374 = t1453 * t1617 - t1455 * t1613;
t1517 = t1551 - t1762;
t1335 = t1374 * t1618 + t1517 * t1614;
t1372 = t1453 * t1613 + t1455 * t1617;
t1268 = t1335 * t1604 - t1372 * t1607;
t1269 = t1335 * t1607 + t1372 * t1604;
t1676 = t1268 * t1619 + t1269 * t1615;
t1288 = t1342 * t1604 - t1421 * t1607;
t1289 = t1342 * t1607 + t1421 * t1604;
t1675 = t1288 * t1619 + t1289 * t1615;
t1291 = t1350 * t1604 - t1429 * t1607;
t1292 = t1350 * t1607 + t1429 * t1604;
t1674 = t1291 * t1619 + t1292 * t1615;
t1538 = -t1551 + t1586;
t1437 = -t1538 * t1613 + t1770;
t1359 = t1437 * t1618 + t1456 * t1614;
t1435 = t1538 * t1617 + t1772;
t1298 = t1359 * t1604 - t1435 * t1607;
t1300 = t1359 * t1607 + t1435 * t1604;
t1673 = t1298 * t1619 + t1300 * t1615;
t1537 = -t1586 + t1762;
t1438 = t1537 * t1617 + t1740;
t1452 = t1540 + t1628;
t1360 = t1438 * t1618 - t1452 * t1614;
t1436 = t1537 * t1613 - t1739;
t1299 = t1360 * t1604 - t1436 * t1607;
t1301 = t1360 * t1607 + t1436 * t1604;
t1672 = t1299 * t1619 + t1301 * t1615;
t1447 = -t1557 * t1728 + t1613 * t1628;
t1407 = t1447 * t1618 - t1712;
t1446 = t1557 * t1729 + t1617 * t1628;
t1315 = t1407 * t1604 + t1446 * t1607;
t1317 = t1407 * t1607 - t1446 * t1604;
t1669 = t1315 * t1619 + t1317 * t1615;
t1449 = t1494 * t1617 + t1558 * t1729;
t1408 = t1449 * t1618 + t1712;
t1448 = t1494 * t1613 - t1558 * t1728;
t1316 = t1408 * t1604 - t1448 * t1607;
t1318 = t1408 * t1607 + t1448 * t1604;
t1668 = t1316 * t1619 + t1318 * t1615;
t1280 = t1367 * t1618 - t1368 * t1614;
t1463 = (t1557 * t1617 - t1558 * t1613) * t1588;
t1441 = t1463 * t1618 - t1552 * t1614;
t1462 = (t1557 * t1613 + t1558 * t1617) * t1588;
t1369 = t1441 * t1604 - t1462 * t1607;
t1370 = t1441 * t1607 + t1462 * t1604;
t1667 = t1369 * t1619 + t1370 * t1615;
t1510 = -t1561 * t1614 + t1564 * t1618;
t1572 = -t1597 + t1727;
t1460 = t1510 * t1604 - t1572 * t1607;
t1461 = t1510 * t1607 + t1572 * t1604;
t1666 = t1460 * t1619 + t1461 * t1615;
t1465 = t1529 * t1604 + t1564 * t1607;
t1467 = t1529 * t1607 - t1564 * t1604;
t1665 = t1465 * t1619 + t1467 * t1615;
t1466 = t1531 * t1604 - t1561 * t1607;
t1468 = t1531 * t1607 + t1561 * t1604;
t1664 = t1466 * t1619 + t1468 * t1615;
t1415 = t1482 * t1619 - t1483 * t1615;
t1584 = t1597 - t1763;
t1528 = t1584 * t1618 - t1733;
t1486 = t1528 * t1604 - t1607 * t1715;
t1488 = t1528 * t1607 + t1604 * t1715;
t1663 = t1486 * t1619 + t1488 * t1615;
t1556 = t1618 * t1575;
t1582 = -t1727 + t1763;
t1530 = -t1582 * t1614 + t1556;
t1487 = t1530 * t1604 - t1607 * t1716;
t1489 = t1530 * t1607 + t1604 * t1716;
t1662 = t1487 * t1619 + t1489 * t1615;
t1535 = -t1563 * t1614 - t1600 * t1753;
t1490 = t1535 * t1604 - t1703;
t1492 = t1535 * t1607 + t1704;
t1661 = t1490 * t1619 + t1492 * t1615;
t1536 = t1562 * t1618 - t1599 * t1753;
t1491 = t1536 * t1604 + t1703;
t1493 = t1536 * t1607 - t1704;
t1660 = t1491 * t1619 + t1493 * t1615;
t1514 = t1568 * t1604 + t1571 * t1607;
t1515 = t1568 * t1607 - t1571 * t1604;
t1659 = t1514 * t1619 + t1515 * t1615;
t1555 = t1718 * t1753;
t1533 = -qJDD(4) * t1607 + t1555 * t1604;
t1534 = qJDD(4) * t1604 + t1555 * t1607;
t1658 = t1533 * t1619 + t1534 * t1615;
t1544 = t1653 * t1609;
t1657 = t1544 * t1608 + t1569 * t1605;
t1656 = t1544 * t1605 - t1569 * t1608;
t1654 = t1573 * t1608 - t1574 * t1605;
t1168 = -pkin(9) * t1373 - t1183;
t1648 = pkin(8) * t1314 + t1614 * t1168 + (-pkin(3) - t1759) * t1373;
t1647 = pkin(4) * t1453 + pkin(9) * t1422 - t1743;
t1646 = pkin(4) * t1457 + pkin(9) * t1430 + t1744;
t1059 = t1063 * t1614 - t1285 * t1618;
t1015 = -pkin(8) * t1059 + t1026 * t1618 - t1041 * t1614;
t1621 = -pkin(4) * t1285 + pkin(9) * t1063 - pkin(10) * t1750 + t1088 * t1617;
t1019 = -pkin(3) * t1059 - t1621;
t1000 = -pkin(2) * t1059 + qJ(3) * t1024 + t1015 * t1604 + t1019 * t1607;
t1002 = -qJ(3) * t1023 + t1015 * t1607 - t1019 * t1604;
t1017 = -t1023 * t1615 + t1024 * t1619;
t1643 = pkin(7) * t1017 + t1000 * t1619 + t1002 * t1615;
t1156 = t1178 * t1614 - t1398 * t1618;
t1028 = -pkin(8) * t1156 + t1045 * t1618 - t1137 * t1614;
t1624 = -pkin(4) * t1398 + pkin(9) * t1178 + t1073 * t1617 + t1082 * t1613;
t1034 = -pkin(3) * t1156 - t1624;
t1016 = -pkin(2) * t1156 + qJ(3) * t1106 + t1028 * t1604 + t1034 * t1607;
t1018 = -qJ(3) * t1105 + t1028 * t1607 - t1034 * t1604;
t1066 = -t1105 * t1615 + t1106 * t1619;
t1642 = pkin(7) * t1066 + t1016 * t1619 + t1018 * t1615;
t1196 = t1246 * t1614 - t1325 * t1618;
t1064 = -pkin(8) * t1196 + t1112 * t1618 - t1114 * t1614;
t1623 = -pkin(4) * t1325 + pkin(9) * t1246 + t1189 * t1617 + t1217 * t1613;
t1075 = -pkin(3) * t1196 - t1623;
t1027 = -pkin(2) * t1196 + qJ(3) * t1141 + t1064 * t1604 + t1075 * t1607;
t1030 = -qJ(3) * t1140 + t1064 * t1607 - t1075 * t1604;
t1089 = -t1140 * t1615 + t1141 * t1619;
t1641 = pkin(7) * t1089 + t1027 * t1619 + t1030 * t1615;
t1201 = t1267 * t1614 - t1618 * t1765;
t1065 = -pkin(8) * t1201 + t1117 * t1618 - t1119 * t1614;
t1622 = -pkin(4) * t1765 + pkin(9) * t1267 + t1194 * t1617 + t1230 * t1613;
t1087 = -pkin(3) * t1201 - t1622;
t1031 = -pkin(2) * t1201 + qJ(3) * t1159 + t1065 * t1604 + t1087 * t1607;
t1033 = -qJ(3) * t1158 + t1065 * t1607 - t1087 * t1604;
t1095 = -t1158 * t1615 + t1159 * t1619;
t1640 = pkin(7) * t1095 + t1031 * t1619 + t1033 * t1615;
t1150 = t1184 * t1614 - t1336 * t1618;
t1074 = -pkin(8) * t1150 + (-pkin(9) * t1618 + t1760) * t1183;
t1094 = -pkin(3) * t1150 - t1695;
t1032 = -pkin(2) * t1150 + qJ(3) * t1108 + t1074 * t1604 + t1094 * t1607;
t1039 = -qJ(3) * t1107 + t1074 * t1607 - t1094 * t1604;
t1067 = -t1107 * t1615 + t1108 * t1619;
t1639 = pkin(7) * t1067 + t1032 * t1619 + t1039 * t1615;
t1313 = t1375 * t1614 + t1474 * t1618;
t1133 = -pkin(8) * t1313 + t1168 * t1618 + t1373 * t1760;
t1627 = pkin(4) * t1474 + pkin(9) * t1375 + t1184;
t1138 = -pkin(3) * t1313 - t1627;
t1069 = -pkin(2) * t1313 + qJ(3) * t1264 + t1133 * t1604 + t1138 * t1607;
t1070 = -qJ(3) * t1263 + t1133 * t1607 - t1138 * t1604;
t1187 = -t1263 * t1615 + t1264 * t1619;
t1638 = pkin(7) * t1187 + t1069 * t1619 + t1070 * t1615;
t1341 = t1422 * t1614 + t1453 * t1618;
t1146 = -pkin(8) * t1341 - t1232 * t1614 + t1286 * t1618;
t1207 = -pkin(3) * t1341 - t1647;
t1090 = -pkin(2) * t1341 + qJ(3) * t1289 + t1146 * t1604 + t1207 * t1607;
t1098 = -qJ(3) * t1288 + t1146 * t1607 - t1207 * t1604;
t1198 = -t1288 * t1615 + t1289 * t1619;
t1637 = pkin(7) * t1198 + t1090 * t1619 + t1098 * t1615;
t1349 = t1430 * t1614 + t1457 * t1618;
t1153 = -pkin(8) * t1349 - t1235 * t1614 + t1290 * t1618;
t1212 = -pkin(3) * t1349 - t1646;
t1093 = -pkin(2) * t1349 + qJ(3) * t1292 + t1153 * t1604 + t1212 * t1607;
t1104 = -qJ(3) * t1291 + t1153 * t1607 - t1212 * t1604;
t1200 = -t1291 * t1615 + t1292 * t1619;
t1636 = pkin(7) * t1200 + t1093 * t1619 + t1104 * t1615;
t1120 = qJ(3) * t1237 - (-pkin(3) * t1607 - pkin(8) * t1604 - pkin(2)) * t1280;
t1139 = -qJ(3) * t1236 - (pkin(3) * t1604 - pkin(8) * t1607) * t1280;
t1155 = -t1236 * t1615 + t1237 * t1619;
t1635 = pkin(7) * t1155 + t1120 * t1619 + t1139 * t1615;
t1525 = t1585 * t1614 + t1556;
t1331 = -pkin(3) * t1525 + t1367;
t1365 = -pkin(8) * t1525 + t1395;
t1238 = -pkin(2) * t1525 + qJ(3) * t1467 + t1331 * t1607 + t1365 * t1604;
t1243 = -qJ(3) * t1465 - t1331 * t1604 + t1365 * t1607;
t1403 = -t1465 * t1615 + t1467 * t1619;
t1634 = pkin(7) * t1403 + t1238 * t1619 + t1243 * t1615;
t1527 = t1583 * t1618 - t1733;
t1332 = -pkin(3) * t1527 + t1368;
t1366 = -pkin(8) * t1527 + t1396;
t1239 = -pkin(2) * t1527 + qJ(3) * t1468 + t1332 * t1607 + t1366 * t1604;
t1244 = -qJ(3) * t1466 - t1332 * t1604 + t1366 * t1607;
t1404 = -t1466 * t1615 + t1468 * t1619;
t1633 = pkin(7) * t1404 + t1239 * t1619 + t1244 * t1615;
t1259 = qJ(3) * t1515 + t1280 * t1604;
t1260 = -qJ(3) * t1514 + t1280 * t1607;
t1445 = -t1514 * t1615 + t1515 * t1619;
t1632 = pkin(7) * t1445 + t1259 * t1619 + t1260 * t1615;
t1631 = -pkin(7) * t1655 - t1780;
t1630 = pkin(7) * t1512 + t1781;
t1293 = pkin(2) * t1649 + qJ(3) * t1707;
t1626 = pkin(7) * t1782 + qJ(3) * t1746 + t1293 * t1619;
t1625 = pkin(8) * t1151 + (-pkin(3) + t1694) * t1183;
t1593 = t1609 * qJDD(2);
t1581 = t1605 * t1717;
t1545 = t1569 * t1609;
t1543 = t1569 * t1606;
t1542 = t1653 * t1606;
t1526 = t1582 * t1618 + t1734;
t1524 = t1584 * t1614 + t1732;
t1523 = t1693 * t1614;
t1522 = t1692 * t1618;
t1509 = t1561 * t1618 + t1564 * t1614;
t1502 = -t1545 * t1605 - t1608 * t1653;
t1501 = t1545 * t1608 - t1605 * t1653;
t1500 = t1512 * t1609;
t1497 = t1512 * t1606;
t1458 = -t1533 * t1615 + t1534 * t1619;
t1451 = t1658 * t1609;
t1450 = t1658 * t1606;
t1443 = -t1721 + (t1542 * t1606 + t1544 * t1609) * pkin(7);
t1442 = -t1722 + (-t1543 * t1606 - t1545 * t1609) * pkin(7);
t1440 = t1463 * t1614 + t1552 * t1618;
t1434 = t1659 * t1609;
t1433 = t1659 * t1606;
t1432 = t1500 * t1605 - t1608 * t1655;
t1431 = -t1500 * t1608 - t1605 * t1655;
t1426 = -t1491 * t1615 + t1493 * t1619;
t1425 = -t1490 * t1615 + t1492 * t1619;
t1424 = -t1487 * t1615 + t1489 * t1619;
t1423 = -t1486 * t1615 + t1488 * t1619;
t1412 = t1416 * t1609;
t1411 = t1416 * t1606;
t1406 = t1449 * t1614 - t1711;
t1405 = t1447 * t1614 + t1711;
t1394 = -pkin(1) * t1543 + t1606 * t1482 + t1609 * t1690;
t1393 = pkin(1) * t1542 + t1606 * t1483 + t1609 * t1691;
t1392 = pkin(1) * t1545 - t1609 * t1482 + t1606 * t1690;
t1391 = -pkin(1) * t1544 - t1609 * t1483 + t1606 * t1691;
t1390 = -t1460 * t1615 + t1461 * t1619;
t1389 = -pkin(2) * t1566 - t1410;
t1388 = pkin(2) * t1567 - t1409;
t1385 = -t1606 * t1523 + t1609 * t1660;
t1384 = t1606 * t1522 + t1609 * t1661;
t1383 = t1609 * t1523 + t1606 * t1660;
t1382 = -t1609 * t1522 + t1606 * t1661;
t1381 = -t1606 * t1526 + t1609 * t1662;
t1380 = -t1606 * t1524 + t1609 * t1663;
t1379 = t1609 * t1526 + t1606 * t1662;
t1378 = t1609 * t1524 + t1606 * t1663;
t1377 = -t1415 * t1609 + t1606 * t1539;
t1376 = -t1415 * t1606 - t1609 * t1539;
t1364 = -t1606 * t1527 + t1609 * t1664;
t1363 = -t1606 * t1525 + t1609 * t1665;
t1362 = t1609 * t1527 + t1606 * t1664;
t1361 = t1609 * t1525 + t1606 * t1665;
t1358 = t1438 * t1614 + t1452 * t1618;
t1357 = t1437 * t1614 - t1456 * t1618;
t1340 = -t1606 * t1509 + t1609 * t1666;
t1339 = t1609 * t1509 + t1606 * t1666;
t1334 = t1374 * t1614 - t1517 * t1618;
t1312 = (t1606 * t1768 + t1609 * t1767) * pkin(7) + t1780;
t1311 = (t1497 * t1606 + t1500 * t1609) * pkin(7) + t1781;
t1307 = pkin(2) * t1465 + t1709;
t1306 = pkin(2) * t1466 + t1710;
t1296 = t1309 * t1614 + t1548 * t1618;
t1295 = pkin(1) * t1377 + t1606 * t1756;
t1294 = -pkin(1) * t1376 + t1609 * t1756;
t1283 = (-t1376 * t1606 - t1377 * t1609) * pkin(7);
t1282 = -t1369 * t1615 + t1370 * t1619;
t1273 = pkin(1) * t1768 - t1606 * t1389 + t1609 * t1630;
t1272 = pkin(1) * t1497 - t1606 * t1388 + t1609 * t1631;
t1271 = -pkin(1) * t1767 + t1609 * t1389 + t1606 * t1630;
t1270 = -pkin(1) * t1500 + t1609 * t1388 + t1606 * t1631;
t1253 = pkin(2) * t1514 + t1696;
t1252 = -t1606 * t1440 + t1609 * t1667;
t1251 = t1609 * t1440 + t1606 * t1667;
t1241 = -t1316 * t1615 + t1318 * t1619;
t1240 = -t1315 * t1615 + t1317 * t1619;
t1226 = t1782 * t1609;
t1225 = t1782 * t1606;
t1219 = t1250 * t1614 - t1713;
t1218 = t1249 * t1614 + t1713;
t1216 = -t1299 * t1615 + t1301 * t1619;
t1215 = -t1298 * t1615 + t1300 * t1619;
t1214 = -t1606 * (qJDD(3) - t1736) + (-t1228 + t1726) * t1609;
t1213 = t1609 * (qJDD(3) - t1725) + (-t1228 - t1735) * t1606;
t1209 = t1277 * t1614 + t1326 * t1618;
t1208 = t1276 * t1614 - t1329 * t1618;
t1206 = -t1606 * t1406 + t1609 * t1668;
t1205 = -t1606 * t1405 + t1609 * t1669;
t1204 = t1609 * t1406 + t1606 * t1668;
t1203 = t1609 * t1405 + t1606 * t1669;
t1193 = -t1606 * t1358 + t1609 * t1672;
t1192 = -t1606 * t1357 + t1609 * t1673;
t1191 = t1609 * t1358 + t1606 * t1672;
t1190 = t1609 * t1357 + t1606 * t1673;
t1188 = -t1268 * t1615 + t1269 * t1619;
t1186 = -t1606 * t1349 + t1609 * t1674;
t1185 = t1609 * t1349 + t1606 * t1674;
t1181 = -t1606 * t1341 + t1609 * t1675;
t1180 = t1609 * t1341 + t1606 * t1675;
t1169 = t1179 * t1614 - t1439 * t1618;
t1166 = -t1606 * t1334 + t1609 * t1676;
t1165 = t1609 * t1334 + t1606 * t1676;
t1164 = pkin(2) * t1236 + t1719;
t1152 = -t1615 * t1259 + t1619 * t1260 + (-t1433 * t1606 - t1434 * t1609) * pkin(7);
t1148 = -t1606 * t1313 + t1609 * t1677;
t1147 = t1609 * t1313 + t1606 * t1677;
t1142 = -t1222 * t1615 + t1223 * t1619;
t1135 = -t1615 * t1239 + t1619 * t1244 + (-t1362 * t1606 - t1364 * t1609) * pkin(7);
t1134 = -t1615 * t1238 + t1619 * t1243 + (-t1361 * t1606 - t1363 * t1609) * pkin(7);
t1132 = t1280 * t1606 + t1609 * t1678;
t1131 = -t1280 * t1609 + t1606 * t1678;
t1130 = -t1606 * t1296 + t1609 * t1679;
t1129 = t1609 * t1296 + t1606 * t1679;
t1128 = pkin(2) * t1291 + t1697;
t1127 = -pkin(1) * t1433 - t1606 * t1253 + t1609 * t1632;
t1126 = pkin(1) * t1434 + t1609 * t1253 + t1606 * t1632;
t1125 = pkin(2) * t1288 + t1698;
t1124 = -pkin(1) * t1362 - t1606 * t1306 + t1609 * t1633;
t1123 = -pkin(1) * t1361 - t1606 * t1307 + t1609 * t1634;
t1122 = pkin(1) * t1364 + t1609 * t1306 + t1606 * t1633;
t1121 = pkin(1) * t1363 + t1609 * t1307 + t1606 * t1634;
t1115 = qJ(3) * t1745 - t1615 * t1293 + (-t1213 * t1606 - t1214 * t1609) * pkin(7);
t1103 = -t1172 * t1615 + t1174 * t1619;
t1102 = -t1171 * t1615 + t1173 * t1619;
t1101 = pkin(2) * t1263 + t1648;
t1100 = -pkin(1) * t1213 + t1606 * t1761 + t1609 * t1626;
t1099 = pkin(1) * t1214 + t1606 * t1626 - t1609 * t1761;
t1097 = -t1161 * t1615 + t1163 * t1619;
t1096 = -t1160 * t1615 + t1162 * t1619;
t1086 = -t1606 * t1209 + t1609 * t1680;
t1085 = -t1606 * t1208 + t1609 * t1681;
t1084 = t1609 * t1209 + t1606 * t1680;
t1083 = t1609 * t1208 + t1606 * t1681;
t1081 = -t1606 * t1219 + t1609 * t1682;
t1080 = -t1606 * t1218 + t1609 * t1683;
t1079 = t1609 * t1219 + t1606 * t1682;
t1078 = t1609 * t1218 + t1606 * t1683;
t1077 = -t1606 * t1201 + t1609 * t1684;
t1076 = t1609 * t1201 + t1606 * t1684;
t1072 = -t1606 * t1196 + t1609 * t1685;
t1071 = t1609 * t1196 + t1606 * t1685;
t1068 = -t1109 * t1615 + t1110 * t1619;
t1057 = -t1606 * t1169 + t1609 * t1686;
t1056 = t1609 * t1169 + t1606 * t1686;
t1055 = -t1606 * t1150 + t1609 * t1687;
t1054 = t1609 * t1150 + t1606 * t1687;
t1053 = -t1606 * t1156 + t1609 * t1688;
t1052 = t1609 * t1156 + t1606 * t1688;
t1051 = pkin(2) * t1158 + t1699;
t1050 = pkin(2) * t1107 + t1625;
t1049 = -t1615 * t1120 + t1619 * t1139 + (-t1131 * t1606 - t1132 * t1609) * pkin(7);
t1048 = -t1615 * t1093 + t1619 * t1104 + (-t1185 * t1606 - t1186 * t1609) * pkin(7);
t1047 = pkin(2) * t1140 + t1700;
t1046 = -t1615 * t1090 + t1619 * t1098 + (-t1180 * t1606 - t1181 * t1609) * pkin(7);
t1043 = -pkin(1) * t1131 - t1606 * t1164 + t1609 * t1635;
t1042 = pkin(1) * t1132 + t1609 * t1164 + t1606 * t1635;
t1038 = -pkin(1) * t1185 - t1606 * t1128 + t1609 * t1636;
t1037 = pkin(1) * t1186 + t1609 * t1128 + t1606 * t1636;
t1036 = -pkin(1) * t1180 - t1606 * t1125 + t1609 * t1637;
t1035 = pkin(1) * t1181 + t1609 * t1125 + t1606 * t1637;
t1029 = -t1615 * t1069 + t1619 * t1070 + (-t1147 * t1606 - t1148 * t1609) * pkin(7);
t1022 = -pkin(1) * t1147 - t1606 * t1101 + t1609 * t1638;
t1021 = pkin(1) * t1148 + t1609 * t1101 + t1606 * t1638;
t1020 = pkin(2) * t1105 + t1701;
t1014 = -t1615 * t1031 + t1619 * t1033 + (-t1076 * t1606 - t1077 * t1609) * pkin(7);
t1013 = -t1606 * t1059 + t1609 * t1689;
t1012 = t1609 * t1059 + t1606 * t1689;
t1011 = -t1615 * t1027 + t1619 * t1030 + (-t1071 * t1606 - t1072 * t1609) * pkin(7);
t1010 = -t1615 * t1032 + t1619 * t1039 + (-t1054 * t1606 - t1055 * t1609) * pkin(7);
t1009 = -pkin(1) * t1076 - t1606 * t1051 + t1609 * t1640;
t1008 = pkin(1) * t1077 + t1609 * t1051 + t1606 * t1640;
t1007 = -pkin(1) * t1071 - t1606 * t1047 + t1609 * t1641;
t1006 = pkin(1) * t1072 + t1609 * t1047 + t1606 * t1641;
t1005 = -pkin(1) * t1054 - t1606 * t1050 + t1609 * t1639;
t1004 = pkin(1) * t1055 + t1609 * t1050 + t1606 * t1639;
t1003 = pkin(2) * t1023 + t1702;
t1001 = -t1615 * t1016 + t1619 * t1018 + (-t1052 * t1606 - t1053 * t1609) * pkin(7);
t999 = -pkin(1) * t1052 - t1606 * t1020 + t1609 * t1642;
t998 = pkin(1) * t1053 + t1609 * t1020 + t1606 * t1642;
t997 = -t1615 * t1000 + t1619 * t1002 + (-t1012 * t1606 - t1013 * t1609) * pkin(7);
t996 = -pkin(1) * t1012 - t1606 * t1003 + t1609 * t1643;
t995 = pkin(1) * t1013 + t1609 * t1003 + t1606 * t1643;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1724, -t1723, -t1654, -qJ(1) * t1654, 0, 0, -t1656, 0, t1502, t1581, -qJ(1) * t1501 - t1394 * t1605 + t1442 * t1608, qJ(1) * t1657 - t1605 * t1393 + t1608 * t1443, -t1412 * t1605 + t1415 * t1608, t1608 * t1283 - t1605 * t1294 - qJ(1) * (t1377 * t1608 + t1416 * t1605), 0, 0, -t1774, 0, t1432, t1581, -qJ(1) * t1431 - t1272 * t1605 + t1311 * t1608, -qJ(1) * t1773 - t1605 * t1273 + t1608 * t1312, -t1226 * t1605 + t1228 * t1608, t1608 * t1115 - t1605 * t1100 - qJ(1) * (t1214 * t1608 + t1605 * t1782), -t1385 * t1605 + t1426 * t1608, -t1340 * t1605 + t1390 * t1608, -t1381 * t1605 + t1424 * t1608, -t1384 * t1605 + t1425 * t1608, -t1380 * t1605 + t1423 * t1608, -t1451 * t1605 + t1458 * t1608, t1608 * t1134 - t1605 * t1123 - qJ(1) * (t1363 * t1608 + t1403 * t1605), t1608 * t1135 - t1605 * t1124 - qJ(1) * (t1364 * t1608 + t1404 * t1605), t1608 * t1152 - t1605 * t1127 - qJ(1) * (t1434 * t1608 + t1445 * t1605), t1608 * t1049 - t1605 * t1043 - qJ(1) * (t1132 * t1608 + t1155 * t1605), -t1206 * t1605 + t1241 * t1608, -t1166 * t1605 + t1188 * t1608, -t1192 * t1605 + t1215 * t1608, -t1205 * t1605 + t1240 * t1608, -t1193 * t1605 + t1216 * t1608, -t1252 * t1605 + t1282 * t1608, t1608 * t1046 - t1605 * t1036 - qJ(1) * (t1181 * t1608 + t1198 * t1605), t1608 * t1048 - t1605 * t1038 - qJ(1) * (t1186 * t1608 + t1200 * t1605), t1608 * t1029 - t1605 * t1022 - qJ(1) * (t1148 * t1608 + t1187 * t1605), t1608 * t1010 - t1605 * t1005 - qJ(1) * (t1055 * t1608 + t1067 * t1605), -t1081 * t1605 + t1097 * t1608, -t1057 * t1605 + t1068 * t1608, -t1085 * t1605 + t1102 * t1608, -t1080 * t1605 + t1096 * t1608, -t1086 * t1605 + t1103 * t1608, -t1130 * t1605 + t1142 * t1608, t1608 * t1011 - t1605 * t1007 - qJ(1) * (t1072 * t1608 + t1089 * t1605), t1608 * t1014 - t1605 * t1009 - qJ(1) * (t1077 * t1608 + t1095 * t1605), t1608 * t1001 - t1605 * t999 - qJ(1) * (t1053 * t1608 + t1066 * t1605), t1608 * t997 - t1605 * t996 - qJ(1) * (t1013 * t1608 + t1017 * t1605); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1723, -t1724, t1705, qJ(1) * t1705, 0, 0, t1657, 0, t1501, -t1708, qJ(1) * t1502 + t1394 * t1608 + t1442 * t1605, qJ(1) * t1656 + t1608 * t1393 + t1605 * t1443, t1412 * t1608 + t1415 * t1605, t1605 * t1283 + t1608 * t1294 + qJ(1) * (-t1377 * t1605 + t1416 * t1608), 0, 0, -t1773, 0, t1431, -t1708, qJ(1) * t1432 + t1272 * t1608 + t1311 * t1605, qJ(1) * t1774 + t1608 * t1273 + t1605 * t1312, t1226 * t1608 + t1228 * t1605, t1605 * t1115 + t1608 * t1100 + qJ(1) * (-t1214 * t1605 + t1608 * t1782), t1385 * t1608 + t1426 * t1605, t1340 * t1608 + t1390 * t1605, t1381 * t1608 + t1424 * t1605, t1384 * t1608 + t1425 * t1605, t1380 * t1608 + t1423 * t1605, t1451 * t1608 + t1458 * t1605, t1605 * t1134 + t1608 * t1123 + qJ(1) * (-t1363 * t1605 + t1403 * t1608), t1605 * t1135 + t1608 * t1124 + qJ(1) * (-t1364 * t1605 + t1404 * t1608), t1605 * t1152 + t1608 * t1127 + qJ(1) * (-t1434 * t1605 + t1445 * t1608), t1605 * t1049 + t1608 * t1043 + qJ(1) * (-t1132 * t1605 + t1155 * t1608), t1206 * t1608 + t1241 * t1605, t1166 * t1608 + t1188 * t1605, t1192 * t1608 + t1215 * t1605, t1205 * t1608 + t1240 * t1605, t1193 * t1608 + t1216 * t1605, t1252 * t1608 + t1282 * t1605, t1605 * t1046 + t1608 * t1036 + qJ(1) * (-t1181 * t1605 + t1198 * t1608), t1605 * t1048 + t1608 * t1038 + qJ(1) * (-t1186 * t1605 + t1200 * t1608), t1605 * t1029 + t1608 * t1022 + qJ(1) * (-t1148 * t1605 + t1187 * t1608), t1605 * t1010 + t1608 * t1005 + qJ(1) * (-t1055 * t1605 + t1067 * t1608), t1081 * t1608 + t1097 * t1605, t1057 * t1608 + t1068 * t1605, t1085 * t1608 + t1102 * t1605, t1080 * t1608 + t1096 * t1605, t1086 * t1608 + t1103 * t1605, t1130 * t1608 + t1142 * t1605, t1605 * t1011 + t1608 * t1007 + qJ(1) * (-t1072 * t1605 + t1089 * t1608), t1605 * t1014 + t1608 * t1009 + qJ(1) * (-t1077 * t1605 + t1095 * t1608), t1605 * t1001 + t1608 * t999 + qJ(1) * (-t1053 * t1605 + t1066 * t1608), t1605 * t997 + t1608 * t996 + qJ(1) * (-t1013 * t1605 + t1017 * t1608); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1573, t1574, 0, 0, 0, 0, t1542, 0, t1543, t1593, t1392, t1391, t1411, t1295, 0, 0, t1768, 0, -t1497, t1593, t1270, t1271, t1225, t1099, t1383, t1339, t1379, t1382, t1378, t1450, t1121, t1122, t1126, t1042, t1204, t1165, t1190, t1203, t1191, t1251, t1035, t1037, t1021, t1004, t1079, t1056, t1083, t1078, t1084, t1129, t1006, t1008, t998, t995; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1601, -t1573, 0, 0, 0, t1569, 0, -t1653, 0, t1442, t1443, t1415, t1283, 0, 0, -t1512, 0, -t1655, 0, t1311, t1312, t1228, t1115, t1426, t1390, t1424, t1425, t1423, t1458, t1134, t1135, t1152, t1049, t1241, t1188, t1215, t1240, t1216, t1282, t1046, t1048, t1029, t1010, t1097, t1068, t1102, t1096, t1103, t1142, t1011, t1014, t1001, t997; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1601, 0, -t1574, 0, 0, 0, t1544, 0, t1545, -t1717, t1394, t1393, t1412, t1294, 0, 0, t1767, 0, -t1500, -t1717, t1272, t1273, t1226, t1100, t1385, t1340, t1381, t1384, t1380, t1451, t1123, t1124, t1127, t1043, t1206, t1166, t1192, t1205, t1193, t1252, t1036, t1038, t1022, t1005, t1081, t1057, t1085, t1080, t1086, t1130, t1007, t1009, t999, t996; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1573, t1574, 0, 0, 0, 0, t1542, 0, t1543, t1593, t1392, t1391, t1411, t1295, 0, 0, t1768, 0, -t1497, t1593, t1270, t1271, t1225, t1099, t1383, t1339, t1379, t1382, t1378, t1450, t1121, t1122, t1126, t1042, t1204, t1165, t1190, t1203, t1191, t1251, t1035, t1037, t1021, t1004, t1079, t1056, t1083, t1078, t1084, t1129, t1006, t1008, t998, t995; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1620, 0, 0, -t1539, t1482, 0, 0, 0, t1567, 0, -t1566, 0, t1764, -t1477, t1304, qJ(3) * t1304, t1493, t1461, t1489, t1492, t1488, t1534, t1243, t1244, t1260, t1139, t1318, t1269, t1300, t1317, t1301, t1370, t1098, t1104, t1070, t1039, t1163, t1110, t1173, t1162, t1174, t1223, t1030, t1033, t1018, t1002; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1620, 0, qJDD(2), 0, t1539, 0, t1483, 0, 0, 0, t1566, 0, t1567, 0, t1477, t1764, t1707, t1293, t1491, t1460, t1487, t1490, t1486, t1533, t1238, t1239, t1259, t1120, t1316, t1268, t1298, t1315, t1299, t1369, t1090, t1093, t1069, t1032, t1161, t1109, t1171, t1160, t1172, t1222, t1027, t1031, t1016, t1000; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1482, -t1483, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t1388, t1389, 0, -t1761, t1523, t1509, t1526, -t1522, t1524, 0, t1307, t1306, t1253, t1164, t1406, t1334, t1357, t1405, t1358, t1440, t1125, t1128, t1101, t1050, t1219, t1169, t1208, t1218, t1209, t1296, t1047, t1051, t1020, t1003; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1620, 0, 0, -t1649, t1409, 0, t1536, t1510, t1530, t1535, t1528, t1555, t1365, t1366, t1280, pkin(8) * t1280, t1408, t1335, t1359, t1407, t1360, t1441, t1146, t1153, t1133, t1074, t1221, t1170, t1210, t1220, t1211, t1297, t1064, t1065, t1028, t1015; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1620, 0, qJDD(2), 0, t1649, 0, t1410, 0, t1587, -t1572, -t1716, -t1587, -t1715, -qJDD(4), t1331, t1332, 0, pkin(3) * t1280, -t1448, -t1372, -t1435, t1446, -t1436, -t1462, t1207, t1212, t1138, t1094, -t1248, -t1177, -t1274, -t1247, -t1275, -t1308, t1075, t1087, t1034, t1019; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1409, -t1410, 0, 0, t1523, t1509, t1526, -t1522, t1524, 0, t1709, t1710, t1696, t1719, t1406, t1334, t1357, t1405, t1358, t1440, t1698, t1697, t1648, t1625, t1219, t1169, t1208, t1218, t1209, t1296, t1700, t1699, t1701, t1702; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1562, t1564, t1575, -t1592, t1584, t1592, 0, t1400, t1367, 0, t1449, t1374, t1437, t1447, t1438, t1463, t1286, t1290, t1168, -pkin(9) * t1183, t1250, t1179, t1276, t1249, t1277, t1309, t1112, t1117, t1045, t1026; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1591, t1561, t1582, t1563, t1576, -t1591, -t1400, 0, t1368, 0, -t1737, -t1517, -t1456, t1737, t1452, t1552, t1232, t1235, -pkin(4) * t1373, -pkin(4) * t1183, -t1444, -t1439, -t1329, t1444, t1326, t1548, t1114, t1119, t1137, t1041; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1587, t1572, t1716, t1587, t1715, qJDD(4), -t1367, -t1368, 0, 0, t1448, t1372, t1435, -t1446, t1436, t1462, t1647, t1646, t1627, t1695, t1248, t1177, t1274, t1247, t1275, t1308, t1623, t1622, t1624, t1621; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1494, t1453, t1629, -t1541, t1537, t1541, 0, t1336, t1261, 0, t1324, t1257, t1355, t1322, t1356, t1414, t1217, t1230, t1082, -pkin(10) * t1091; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1540, t1455, t1538, -t1628, -t1479, t1540, -t1336, 0, t1262, 0, t1323, t1255, t1353, t1321, t1354, t1413, t1189, t1194, t1073, t1088; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1737, t1517, t1456, -t1737, -t1452, -t1552, -t1261, -t1262, 0, 0, t1444, t1439, t1329, -t1444, -t1326, -t1548, t1650, t1644, t1757, t1758; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1387, -t1325, t1766, -t1472, t1469, t1472, 0, t1285, t1144, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1738, t1765, t1470, t1386, -t1418, t1738, -t1285, 0, t1145, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1444, t1439, t1329, -t1444, -t1326, -t1548, -t1144, -t1145, 0, 0;];
m_new_reg  = t1;
