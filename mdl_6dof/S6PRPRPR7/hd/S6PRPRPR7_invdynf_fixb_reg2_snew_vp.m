% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRPRPR7
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d6,theta1]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 23:22
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRPRPR7_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRPR7_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRPR7_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPRPR7_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPRPR7_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRPRPR7_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 23:22:35
% EndTime: 2019-05-04 23:22:39
% DurationCPUTime: 4.43s
% Computational Cost: add. (7251->265), mult. (14300->295), div. (0->0), fcn. (9123->10), ass. (0->175)
t1635 = sin(qJ(4));
t1638 = cos(qJ(4));
t1641 = qJD(2) ^ 2;
t1675 = t1638 * t1641;
t1667 = t1635 * t1675;
t1604 = qJDD(4) - t1667;
t1640 = qJD(4) ^ 2;
t1622 = t1635 ^ 2;
t1680 = t1622 * t1641;
t1610 = -t1640 - t1680;
t1576 = t1604 * t1635 - t1610 * t1638;
t1628 = sin(pkin(6));
t1630 = cos(pkin(6));
t1571 = t1604 * t1638 + t1610 * t1635;
t1688 = qJD(2) * t1638;
t1666 = qJD(4) * t1688;
t1669 = t1635 * qJDD(2);
t1593 = 0.2e1 * t1666 + t1669;
t1636 = sin(qJ(2));
t1639 = cos(qJ(2));
t1654 = t1571 * t1639 - t1593 * t1636;
t1540 = -t1628 * t1576 + t1630 * t1654;
t1556 = t1571 * t1636 + t1593 * t1639;
t1627 = sin(pkin(10));
t1629 = cos(pkin(10));
t1707 = t1540 * t1627 + t1556 * t1629;
t1706 = t1540 * t1629 - t1556 * t1627;
t1603 = qJDD(4) + t1667;
t1623 = t1638 ^ 2;
t1611 = -t1623 * t1641 - t1640;
t1577 = t1603 * t1638 + t1611 * t1635;
t1573 = t1603 * t1635 - t1611 * t1638;
t1687 = qJD(4) * t1635;
t1616 = qJD(2) * t1687;
t1668 = t1638 * qJDD(2);
t1596 = -0.2e1 * t1616 + t1668;
t1652 = t1573 * t1639 + t1596 * t1636;
t1541 = t1628 * t1577 + t1630 * t1652;
t1559 = t1573 * t1636 - t1596 * t1639;
t1705 = t1541 * t1627 + t1559 * t1629;
t1704 = t1541 * t1629 - t1559 * t1627;
t1537 = -t1630 * t1577 + t1628 * t1652;
t1536 = t1630 * t1576 + t1628 * t1654;
t1601 = g(1) * t1627 - g(2) * t1629;
t1624 = -g(3) + qJDD(1);
t1695 = t1601 * t1630 + t1624 * t1628;
t1598 = qJDD(2) * t1639 - t1636 * t1641;
t1634 = sin(qJ(6));
t1637 = cos(qJ(6));
t1689 = qJD(2) * t1635;
t1589 = qJD(4) * t1634 - t1637 * t1689;
t1694 = t1589 ^ 2;
t1591 = qJD(4) * t1637 + t1634 * t1689;
t1693 = t1591 ^ 2;
t1613 = qJD(6) + t1688;
t1692 = t1613 ^ 2;
t1691 = 2 * qJD(3);
t1690 = 2 * qJD(5);
t1686 = t1589 * t1591;
t1579 = -t1601 * t1628 + t1624 * t1630;
t1678 = t1628 * t1579;
t1677 = t1635 * t1579;
t1674 = pkin(5) * t1688 - qJD(4) * pkin(9) + t1690;
t1673 = qJD(6) - t1613;
t1672 = qJD(6) + t1613;
t1671 = t1622 + t1623;
t1602 = -g(1) * t1629 - g(2) * t1627;
t1564 = t1639 * t1602 + t1636 * t1695;
t1595 = -t1616 + t1668;
t1594 = t1666 + t1669;
t1665 = -t1634 * qJDD(4) + t1637 * t1594;
t1563 = -t1602 * t1636 + t1639 * t1695;
t1664 = -qJDD(6) - t1595;
t1555 = -qJDD(2) * pkin(2) - t1641 * qJ(3) + qJDD(3) - t1563;
t1553 = -qJDD(2) * pkin(8) + t1555;
t1551 = t1638 * t1553;
t1592 = (pkin(4) * t1635 - qJ(5) * t1638) * qJD(2);
t1644 = -qJDD(4) * pkin(4) - t1640 * qJ(5) + t1592 * t1688 + qJDD(5) - t1551;
t1518 = t1595 * pkin(5) - qJDD(4) * pkin(9) + (pkin(5) * qJD(2) * qJD(4) + pkin(9) * t1675 + t1579) * t1635 + t1644;
t1632 = t1641 * pkin(8);
t1645 = -t1641 * pkin(2) + qJDD(2) * qJ(3) + t1564;
t1642 = -t1595 * qJ(5) - t1632 + t1645;
t1521 = -pkin(5) * t1680 + (pkin(4) + pkin(9)) * t1594 + (qJ(5) * t1687 + t1691 + (pkin(4) * qJD(4) - t1674) * t1638) * qJD(2) + t1642;
t1502 = t1518 * t1637 - t1521 * t1634;
t1503 = t1518 * t1634 + t1521 * t1637;
t1488 = t1502 * t1637 + t1503 * t1634;
t1534 = t1635 * t1553 + t1638 * t1579;
t1643 = -t1640 * pkin(4) + qJDD(4) * qJ(5) - t1592 * t1689 + t1534;
t1517 = -t1594 * pkin(5) - pkin(9) * t1680 + qJD(4) * t1674 + t1643;
t1486 = -t1488 * t1638 + t1517 * t1635;
t1489 = -t1502 * t1634 + t1503 * t1637;
t1663 = -t1486 * t1639 + t1489 * t1636;
t1526 = qJD(4) * t1690 + t1643;
t1528 = t1644 + t1677;
t1507 = t1526 * t1635 - t1528 * t1638;
t1529 = t1594 * pkin(4) + (-0.2e1 * qJD(5) * t1638 + t1691 + (pkin(4) * t1638 + qJ(5) * t1635) * qJD(4)) * qJD(2) + t1642;
t1662 = -t1507 * t1639 + t1529 * t1636;
t1548 = -t1591 * t1673 + t1665;
t1646 = -t1637 * qJDD(4) - t1634 * t1594;
t1550 = t1589 * t1673 + t1646;
t1522 = t1548 * t1634 + t1550 * t1637;
t1560 = -t1693 - t1694;
t1509 = -t1522 * t1638 + t1560 * t1635;
t1523 = t1548 * t1637 - t1550 * t1634;
t1661 = -t1509 * t1639 + t1523 * t1636;
t1533 = t1551 - t1677;
t1511 = t1533 * t1638 + t1534 * t1635;
t1554 = qJD(2) * t1691 + t1645;
t1552 = t1554 - t1632;
t1660 = -t1511 * t1639 + t1552 * t1636;
t1561 = -t1664 - t1686;
t1565 = -t1692 - t1694;
t1531 = t1561 * t1637 + t1565 * t1634;
t1547 = t1591 * t1672 - t1665;
t1513 = -t1531 * t1638 + t1547 * t1635;
t1532 = -t1561 * t1634 + t1565 * t1637;
t1659 = -t1513 * t1639 + t1532 * t1636;
t1562 = t1664 - t1686;
t1568 = -t1692 - t1693;
t1543 = t1562 * t1634 + t1568 * t1637;
t1549 = -t1589 * t1672 - t1646;
t1515 = -t1543 * t1638 + t1549 * t1635;
t1544 = t1562 * t1637 - t1568 * t1634;
t1658 = -t1515 * t1639 + t1544 * t1636;
t1657 = t1554 * t1636 - t1555 * t1639;
t1656 = t1563 * t1639 + t1564 * t1636;
t1599 = qJDD(2) * t1636 + t1639 * t1641;
t1583 = t1599 * t1630;
t1651 = t1583 * t1629 + t1598 * t1627;
t1650 = t1583 * t1627 - t1598 * t1629;
t1584 = t1598 * t1630;
t1649 = -t1584 * t1629 + t1599 * t1627;
t1648 = -t1584 * t1627 - t1599 * t1629;
t1597 = t1671 * qJDD(2);
t1600 = t1671 * t1641;
t1647 = t1597 * t1639 - t1600 * t1636;
t1582 = t1598 * t1628;
t1581 = t1599 * t1628;
t1570 = t1630 * t1579;
t1569 = -t1597 * t1636 - t1600 * t1639;
t1567 = t1647 * t1630;
t1566 = t1647 * t1628;
t1546 = -t1567 * t1627 + t1569 * t1629;
t1545 = t1567 * t1629 + t1569 * t1627;
t1530 = -t1563 * t1636 + t1564 * t1639;
t1527 = t1554 * t1639 + t1555 * t1636;
t1525 = t1630 * t1656 - t1678;
t1524 = t1628 * t1656 + t1570;
t1520 = t1630 * t1657 - t1678;
t1519 = t1628 * t1657 + t1570;
t1516 = t1543 * t1635 + t1549 * t1638;
t1514 = t1531 * t1635 + t1547 * t1638;
t1512 = -t1533 * t1635 + t1534 * t1638;
t1510 = t1522 * t1635 + t1560 * t1638;
t1508 = t1526 * t1638 + t1528 * t1635;
t1506 = t1515 * t1636 + t1544 * t1639;
t1505 = t1511 * t1636 + t1552 * t1639;
t1504 = t1513 * t1636 + t1532 * t1639;
t1501 = t1509 * t1636 + t1523 * t1639;
t1500 = t1507 * t1636 + t1529 * t1639;
t1499 = -t1628 * t1516 + t1630 * t1658;
t1498 = t1630 * t1516 + t1628 * t1658;
t1497 = -t1628 * t1514 + t1630 * t1659;
t1496 = t1630 * t1514 + t1628 * t1659;
t1495 = -t1628 * t1512 + t1630 * t1660;
t1494 = t1630 * t1512 + t1628 * t1660;
t1493 = -t1628 * t1510 + t1630 * t1661;
t1492 = t1630 * t1510 + t1628 * t1661;
t1491 = -t1628 * t1508 + t1630 * t1662;
t1490 = t1630 * t1508 + t1628 * t1662;
t1487 = t1488 * t1635 + t1517 * t1638;
t1485 = t1486 * t1636 + t1489 * t1639;
t1484 = -t1628 * t1487 + t1630 * t1663;
t1483 = t1630 * t1487 + t1628 * t1663;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1601 * t1627 + t1602 * t1629, 0, 0, 0, 0, 0, 0, t1648, t1650, 0, -t1525 * t1627 + t1530 * t1629, 0, 0, 0, 0, 0, 0, 0, -t1648, -t1650, -t1520 * t1627 + t1527 * t1629, 0, 0, 0, 0, 0, 0, t1707, -t1705, t1546, -t1495 * t1627 + t1505 * t1629, 0, 0, 0, 0, 0, 0, t1546, -t1707, t1705, -t1491 * t1627 + t1500 * t1629, 0, 0, 0, 0, 0, 0, -t1497 * t1627 + t1504 * t1629, -t1499 * t1627 + t1506 * t1629, -t1493 * t1627 + t1501 * t1629, -t1484 * t1627 + t1485 * t1629; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1601 * t1629 + t1602 * t1627, 0, 0, 0, 0, 0, 0, -t1649, -t1651, 0, t1525 * t1629 + t1530 * t1627, 0, 0, 0, 0, 0, 0, 0, t1649, t1651, t1520 * t1629 + t1527 * t1627, 0, 0, 0, 0, 0, 0, -t1706, t1704, t1545, t1495 * t1629 + t1505 * t1627, 0, 0, 0, 0, 0, 0, t1545, t1706, -t1704, t1491 * t1629 + t1500 * t1627, 0, 0, 0, 0, 0, 0, t1497 * t1629 + t1504 * t1627, t1499 * t1629 + t1506 * t1627, t1493 * t1629 + t1501 * t1627, t1484 * t1629 + t1485 * t1627; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1624, 0, 0, 0, 0, 0, 0, t1582, -t1581, 0, t1524, 0, 0, 0, 0, 0, 0, 0, -t1582, t1581, t1519, 0, 0, 0, 0, 0, 0, -t1536, t1537, t1566, t1494, 0, 0, 0, 0, 0, 0, t1566, t1536, -t1537, t1490, 0, 0, 0, 0, 0, 0, t1496, t1498, t1492, t1483; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1602, 0, 0, 0, 0, 0, 0, -t1599, -t1598, 0, t1530, 0, 0, 0, 0, 0, 0, 0, t1599, t1598, t1527, 0, 0, 0, 0, 0, 0, t1556, -t1559, t1569, t1505, 0, 0, 0, 0, 0, 0, t1569, -t1556, t1559, t1500, 0, 0, 0, 0, 0, 0, t1504, t1506, t1501, t1485; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1601, 0, 0, 0, 0, 0, 0, t1584, -t1583, 0, t1525, 0, 0, 0, 0, 0, 0, 0, -t1584, t1583, t1520, 0, 0, 0, 0, 0, 0, -t1540, t1541, t1567, t1495, 0, 0, 0, 0, 0, 0, t1567, t1540, -t1541, t1491, 0, 0, 0, 0, 0, 0, t1497, t1499, t1493, t1484; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1624, 0, 0, 0, 0, 0, 0, t1582, -t1581, 0, t1524, 0, 0, 0, 0, 0, 0, 0, -t1582, t1581, t1519, 0, 0, 0, 0, 0, 0, -t1536, t1537, t1566, t1494, 0, 0, 0, 0, 0, 0, t1566, t1536, -t1537, t1490, 0, 0, 0, 0, 0, 0, t1496, t1498, t1492, t1483; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1641, -qJDD(2), 0, t1564, 0, 0, 0, 0, 0, 0, 0, t1641, qJDD(2), t1554, 0, 0, 0, 0, 0, 0, t1593, t1596, -t1600, t1552, 0, 0, 0, 0, 0, 0, -t1600, -t1593, -t1596, t1529, 0, 0, 0, 0, 0, 0, t1532, t1544, t1523, t1489; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1641, 0, t1563, 0, 0, 0, 0, 0, 0, 0, -qJDD(2), t1641, -t1555, 0, 0, 0, 0, 0, 0, -t1571, t1573, t1597, -t1511, 0, 0, 0, 0, 0, 0, t1597, t1571, -t1573, -t1507, 0, 0, 0, 0, 0, 0, -t1513, -t1515, -t1509, -t1486; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1579, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1579, 0, 0, 0, 0, 0, 0, -t1576, -t1577, 0, t1512, 0, 0, 0, 0, 0, 0, 0, t1576, t1577, t1508, 0, 0, 0, 0, 0, 0, t1514, t1516, t1510, t1487; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1579, 0, 0, 0, 0, 0, 0, -t1576, -t1577, 0, t1512, 0, 0, 0, 0, 0, 0, 0, t1576, t1577, t1508, 0, 0, 0, 0, 0, 0, t1514, t1516, t1510, t1487; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1641, -qJDD(2), -t1554, 0, 0, 0, 0, 0, 0, -t1593, -t1596, t1600, -t1552, 0, 0, 0, 0, 0, 0, t1600, t1593, t1596, -t1529, 0, 0, 0, 0, 0, 0, -t1532, -t1544, -t1523, -t1489; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1641, t1555, 0, 0, 0, 0, 0, 0, t1571, -t1573, -t1597, t1511, 0, 0, 0, 0, 0, 0, -t1597, -t1571, t1573, t1507, 0, 0, 0, 0, 0, 0, t1513, t1515, t1509, t1486; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1610, -t1603, -t1669, t1534, 0, 0, 0, 0, 0, 0, -t1669, -t1610, t1603, t1526, 0, 0, 0, 0, 0, 0, t1547, t1549, t1560, t1517; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1604, t1611, -t1668, t1533, 0, 0, 0, 0, 0, 0, -t1668, -t1604, -t1611, -t1528, 0, 0, 0, 0, 0, 0, -t1531, -t1543, -t1522, -t1488; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1593, t1596, -t1600, t1552, 0, 0, 0, 0, 0, 0, -t1600, -t1593, -t1596, t1529, 0, 0, 0, 0, 0, 0, t1532, t1544, t1523, t1489; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1600, -t1593, -t1596, t1529, 0, 0, 0, 0, 0, 0, t1532, t1544, t1523, t1489; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1669, t1610, -t1603, -t1526, 0, 0, 0, 0, 0, 0, -t1547, -t1549, -t1560, -t1517; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1668, t1604, t1611, t1528, 0, 0, 0, 0, 0, 0, t1531, t1543, t1522, t1488; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1565, t1562, t1548, t1503; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1561, t1568, t1550, t1502; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1547, t1549, t1560, t1517;];
f_new_reg  = t1;