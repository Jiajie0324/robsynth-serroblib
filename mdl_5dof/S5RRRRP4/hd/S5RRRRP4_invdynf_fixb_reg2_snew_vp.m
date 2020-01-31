% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RRRRP4
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
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:51
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RRRRP4_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP4_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRP4_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRRP4_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRP4_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP4_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:51:54
% EndTime: 2019-12-31 21:51:57
% DurationCPUTime: 3.17s
% Computational Cost: add. (9916->200), mult. (12845->243), div. (0->0), fcn. (8309->8), ass. (0->139)
t1652 = qJDD(3) + qJDD(4);
t1628 = qJD(1) + qJD(2);
t1630 = sin(qJ(4));
t1631 = sin(qJ(3));
t1634 = cos(qJ(4));
t1635 = cos(qJ(3));
t1589 = (-t1630 * t1631 + t1634 * t1635) * t1628;
t1591 = (t1630 * t1635 + t1631 * t1634) * t1628;
t1662 = t1591 * t1589;
t1567 = -t1652 + t1662;
t1588 = t1591 ^ 2;
t1627 = qJD(3) + qJD(4);
t1665 = t1627 ^ 2;
t1669 = -t1588 - t1665;
t1545 = t1630 * t1567 + t1634 * t1669;
t1547 = t1634 * t1567 - t1630 * t1669;
t1512 = t1631 * t1545 - t1635 * t1547;
t1632 = sin(qJ(2));
t1636 = cos(qJ(2));
t1663 = qJD(3) * t1628;
t1649 = t1635 * t1663;
t1626 = qJDD(1) + qJDD(2);
t1655 = t1631 * t1626;
t1595 = t1649 + t1655;
t1659 = t1628 * t1631;
t1650 = qJD(3) * t1659;
t1654 = t1635 * t1626;
t1646 = -t1650 + t1654;
t1642 = t1589 * qJD(4) + t1634 * t1595 + t1630 * t1646;
t1660 = t1627 * t1589;
t1641 = t1642 + t1660;
t1499 = t1632 * t1512 + t1636 * t1641;
t1501 = t1636 * t1512 - t1632 * t1641;
t1633 = sin(qJ(1));
t1637 = cos(qJ(1));
t1689 = t1637 * t1499 + t1633 * t1501;
t1688 = t1633 * t1499 - t1637 * t1501;
t1566 = t1652 + t1662;
t1571 = t1589 ^ 2;
t1668 = -t1665 - t1571;
t1676 = -t1630 * t1566 + t1634 * t1668;
t1679 = t1634 * t1566 + t1630 * t1668;
t1681 = -t1631 * t1679 + t1635 * t1676;
t1687 = t1632 * t1681;
t1686 = t1636 * t1681;
t1520 = t1635 * t1545 + t1631 * t1547;
t1554 = t1588 + t1571;
t1544 = t1642 - t1660;
t1648 = t1630 * t1595 - t1634 * t1646;
t1643 = (-qJD(4) + t1627) * t1591 - t1648;
t1666 = t1630 * t1544 + t1634 * t1643;
t1667 = -t1634 * t1544 + t1630 * t1643;
t1675 = -t1631 * t1667 + t1635 * t1666;
t1682 = -t1632 * t1554 + t1636 * t1675;
t1683 = t1636 * t1554 + t1632 * t1675;
t1685 = -t1633 * t1683 + t1637 * t1682;
t1684 = t1633 * t1682 + t1637 * t1683;
t1680 = t1631 * t1676 + t1635 * t1679;
t1625 = t1628 ^ 2;
t1603 = t1632 * t1625 - t1636 * t1626;
t1647 = -t1636 * t1625 - t1632 * t1626;
t1678 = t1633 * t1603 + t1637 * t1647;
t1677 = t1637 * t1603 - t1633 * t1647;
t1674 = t1631 * t1666 + t1635 * t1667;
t1664 = t1635 ^ 2;
t1661 = t1625 * t1631;
t1616 = -t1637 * g(1) - t1633 * g(2);
t1639 = qJD(1) ^ 2;
t1606 = -t1639 * pkin(1) + t1616;
t1615 = t1633 * g(1) - t1637 * g(2);
t1644 = qJDD(1) * pkin(1) + t1615;
t1575 = t1636 * t1606 + t1632 * t1644;
t1570 = -t1625 * pkin(2) + t1626 * pkin(7) + t1575;
t1656 = t1631 * t1570;
t1653 = t1664 * t1625;
t1560 = -t1631 * g(3) + t1635 * t1570;
t1609 = qJD(3) * pkin(3) - pkin(8) * t1659;
t1535 = -pkin(3) * t1653 + t1646 * pkin(8) - qJD(3) * t1609 + t1560;
t1640 = qJDD(3) * pkin(3) - t1595 * pkin(8) - t1656 + (pkin(3) * t1661 + pkin(8) * t1663 - g(3)) * t1635;
t1515 = t1634 * t1535 + t1630 * t1640;
t1629 = t1631 ^ 2;
t1651 = t1629 + t1664;
t1514 = -t1630 * t1535 + t1634 * t1640;
t1574 = -t1632 * t1606 + t1636 * t1644;
t1569 = -t1626 * pkin(2) - t1625 * pkin(7) - t1574;
t1645 = -t1591 * qJD(4) - t1648;
t1537 = -t1646 * pkin(3) - pkin(8) * t1653 + t1609 * t1659 + t1569;
t1638 = qJD(3) ^ 2;
t1614 = t1635 * t1661;
t1613 = -t1638 - t1653;
t1612 = -t1629 * t1625 - t1638;
t1611 = -t1633 * qJDD(1) - t1637 * t1639;
t1610 = t1637 * qJDD(1) - t1633 * t1639;
t1608 = -qJDD(3) + t1614;
t1607 = qJDD(3) + t1614;
t1605 = t1651 * t1625;
t1600 = t1651 * t1626;
t1596 = -0.2e1 * t1650 + t1654;
t1594 = 0.2e1 * t1649 + t1655;
t1579 = t1635 * t1608 - t1631 * t1612;
t1578 = -t1631 * t1607 + t1635 * t1613;
t1577 = t1631 * t1608 + t1635 * t1612;
t1576 = t1635 * t1607 + t1631 * t1613;
t1573 = t1636 * t1600 - t1632 * t1605;
t1572 = t1632 * t1600 + t1636 * t1605;
t1568 = -t1589 * pkin(4) - t1591 * qJ(5);
t1559 = -t1635 * g(3) - t1656;
t1558 = t1636 * t1579 + t1632 * t1594;
t1557 = t1636 * t1578 - t1632 * t1596;
t1556 = t1632 * t1579 - t1636 * t1594;
t1555 = t1632 * t1578 + t1636 * t1596;
t1550 = -t1632 * t1574 + t1636 * t1575;
t1549 = t1636 * t1574 + t1632 * t1575;
t1539 = (qJD(4) + t1627) * t1591 + t1648;
t1538 = t1627 * t1591 - t1645;
t1527 = -t1631 * t1559 + t1635 * t1560;
t1526 = t1635 * t1559 + t1631 * t1560;
t1525 = t1636 * t1527 + t1632 * t1569;
t1524 = t1632 * t1527 - t1636 * t1569;
t1509 = t1632 * t1538 + t1686;
t1507 = -t1636 * t1538 + t1687;
t1505 = -t1652 * pkin(4) - qJ(5) * t1665 + t1591 * t1568 + qJDD(5) - t1514;
t1504 = -pkin(4) * t1665 + t1652 * qJ(5) + 0.2e1 * qJD(5) * t1627 + t1589 * t1568 + t1515;
t1503 = -t1645 * pkin(4) + (pkin(4) * t1627 - 0.2e1 * qJD(5)) * t1591 + t1537 - t1641 * qJ(5);
t1502 = t1632 * t1539 + t1686;
t1500 = -t1636 * t1539 + t1687;
t1494 = -t1630 * t1514 + t1634 * t1515;
t1493 = t1634 * t1514 + t1630 * t1515;
t1488 = t1634 * t1504 + t1630 * t1505;
t1487 = t1630 * t1504 - t1634 * t1505;
t1486 = -t1631 * t1493 + t1635 * t1494;
t1485 = t1635 * t1493 + t1631 * t1494;
t1484 = t1636 * t1486 + t1632 * t1537;
t1483 = t1632 * t1486 - t1636 * t1537;
t1482 = -t1631 * t1487 + t1635 * t1488;
t1481 = t1635 * t1487 + t1631 * t1488;
t1480 = t1636 * t1482 + t1632 * t1503;
t1479 = t1632 * t1482 - t1636 * t1503;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1611, -t1610, 0, -t1633 * t1615 + t1637 * t1616, 0, 0, 0, 0, 0, 0, t1678, t1677, 0, -t1633 * t1549 + t1637 * t1550, 0, 0, 0, 0, 0, 0, -t1633 * t1555 + t1637 * t1557, -t1633 * t1556 + t1637 * t1558, -t1633 * t1572 + t1637 * t1573, -t1633 * t1524 + t1637 * t1525, 0, 0, 0, 0, 0, 0, -t1633 * t1500 + t1637 * t1502, t1688, t1685, -t1633 * t1483 + t1637 * t1484, 0, 0, 0, 0, 0, 0, -t1633 * t1507 + t1637 * t1509, t1685, -t1688, -t1633 * t1479 + t1637 * t1480; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1610, t1611, 0, t1637 * t1615 + t1633 * t1616, 0, 0, 0, 0, 0, 0, -t1677, t1678, 0, t1637 * t1549 + t1633 * t1550, 0, 0, 0, 0, 0, 0, t1637 * t1555 + t1633 * t1557, t1637 * t1556 + t1633 * t1558, t1637 * t1572 + t1633 * t1573, t1637 * t1524 + t1633 * t1525, 0, 0, 0, 0, 0, 0, t1637 * t1500 + t1633 * t1502, -t1689, t1684, t1637 * t1483 + t1633 * t1484, 0, 0, 0, 0, 0, 0, t1637 * t1507 + t1633 * t1509, t1684, t1689, t1637 * t1479 + t1633 * t1480; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1576, t1577, 0, t1526, 0, 0, 0, 0, 0, 0, t1680, t1520, t1674, t1485, 0, 0, 0, 0, 0, 0, t1680, t1674, -t1520, t1481; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1639, -qJDD(1), 0, t1616, 0, 0, 0, 0, 0, 0, t1647, t1603, 0, t1550, 0, 0, 0, 0, 0, 0, t1557, t1558, t1573, t1525, 0, 0, 0, 0, 0, 0, t1502, -t1501, t1682, t1484, 0, 0, 0, 0, 0, 0, t1509, t1682, t1501, t1480; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1639, 0, t1615, 0, 0, 0, 0, 0, 0, -t1603, t1647, 0, t1549, 0, 0, 0, 0, 0, 0, t1555, t1556, t1572, t1524, 0, 0, 0, 0, 0, 0, t1500, -t1499, t1683, t1483, 0, 0, 0, 0, 0, 0, t1507, t1683, t1499, t1479; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1576, t1577, 0, t1526, 0, 0, 0, 0, 0, 0, t1680, t1520, t1674, t1485, 0, 0, 0, 0, 0, 0, t1680, t1674, -t1520, t1481; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1625, -t1626, 0, t1575, 0, 0, 0, 0, 0, 0, t1578, t1579, t1600, t1527, 0, 0, 0, 0, 0, 0, t1681, -t1512, t1675, t1486, 0, 0, 0, 0, 0, 0, t1681, t1675, t1512, t1482; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1626, -t1625, 0, t1574, 0, 0, 0, 0, 0, 0, t1596, -t1594, t1605, -t1569, 0, 0, 0, 0, 0, 0, -t1539, -t1641, t1554, -t1537, 0, 0, 0, 0, 0, 0, -t1538, t1554, t1641, -t1503; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1576, t1577, 0, t1526, 0, 0, 0, 0, 0, 0, t1680, t1520, t1674, t1485, 0, 0, 0, 0, 0, 0, t1680, t1674, -t1520, t1481; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1613, t1608, t1654, t1560, 0, 0, 0, 0, 0, 0, t1676, t1547, t1666, t1494, 0, 0, 0, 0, 0, 0, t1676, t1666, -t1547, t1488; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1607, t1612, -t1655, t1559, 0, 0, 0, 0, 0, 0, t1679, t1545, t1667, t1493, 0, 0, 0, 0, 0, 0, t1679, t1667, -t1545, t1487; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1596, t1594, -t1605, t1569, 0, 0, 0, 0, 0, 0, t1539, t1641, -t1554, t1537, 0, 0, 0, 0, 0, 0, t1538, -t1554, -t1641, t1503; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1668, t1567, t1643, t1515, 0, 0, 0, 0, 0, 0, t1668, t1643, -t1567, t1504; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1566, t1669, -t1544, t1514, 0, 0, 0, 0, 0, 0, t1566, -t1544, -t1669, -t1505; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1539, t1641, -t1554, t1537, 0, 0, 0, 0, 0, 0, t1538, -t1554, -t1641, t1503; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1668, t1643, -t1567, t1504; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1538, -t1554, -t1641, t1503; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1566, t1544, t1669, t1505;];
f_new_reg = t1;