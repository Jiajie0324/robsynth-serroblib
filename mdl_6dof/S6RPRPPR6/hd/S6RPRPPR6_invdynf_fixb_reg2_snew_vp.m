% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPRPPR6
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6,theta4,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 17:10
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPRPPR6_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPPR6_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPPR6_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPPR6_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPPR6_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPPR6_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 17:10:00
% EndTime: 2019-05-05 17:10:05
% DurationCPUTime: 5.37s
% Computational Cost: add. (28912->294), mult. (66401->363), div. (0->0), fcn. (45865->10), ass. (0->205)
t1756 = cos(qJ(3));
t1792 = qJD(1) * t1756;
t1776 = qJD(3) * t1792;
t1753 = sin(qJ(3));
t1779 = t1753 * qJDD(1);
t1725 = -t1776 - t1779;
t1793 = qJD(1) * t1753;
t1777 = qJD(3) * t1793;
t1778 = t1756 * qJDD(1);
t1726 = -t1777 + t1778;
t1749 = sin(pkin(9));
t1751 = cos(pkin(9));
t1781 = t1751 * t1725 - t1749 * t1726;
t1720 = -t1749 * t1793 + t1751 * t1792;
t1748 = sin(pkin(10));
t1750 = cos(pkin(10));
t1703 = -t1750 * qJD(3) + t1720 * t1748;
t1705 = qJD(3) * t1748 + t1720 * t1750;
t1788 = t1703 * t1705;
t1660 = -t1781 - t1788;
t1790 = qJD(3) * t1720;
t1681 = -t1781 + t1790;
t1718 = (t1749 * t1756 + t1751 * t1753) * qJD(1);
t1716 = qJD(6) + t1718;
t1803 = qJD(6) + t1716;
t1745 = t1753 ^ 2;
t1759 = qJD(1) ^ 2;
t1754 = sin(qJ(1));
t1757 = cos(qJ(1));
t1735 = -t1757 * g(1) - t1754 * g(2);
t1765 = -qJDD(1) * qJ(2) - 0.2e1 * qJD(2) * qJD(1) - t1735;
t1767 = qJD(3) * pkin(3) - qJ(4) * t1792;
t1794 = pkin(7) + pkin(1);
t1679 = t1725 * pkin(3) + (qJ(4) * t1745 + t1794) * t1759 - t1767 * t1792 - qJDD(4) + t1765;
t1752 = sin(qJ(6));
t1755 = cos(qJ(6));
t1676 = t1755 * t1703 + t1705 * t1752;
t1802 = t1676 ^ 2;
t1678 = -t1703 * t1752 + t1705 * t1755;
t1801 = t1678 ^ 2;
t1800 = t1703 ^ 2;
t1799 = t1705 ^ 2;
t1798 = t1716 ^ 2;
t1694 = t1718 ^ 2;
t1797 = t1720 ^ 2;
t1796 = 2 * qJD(4);
t1795 = -2 * qJD(5);
t1791 = qJD(3) * t1718;
t1789 = t1676 * t1678;
t1787 = t1705 * t1718;
t1786 = t1718 * t1703;
t1785 = t1718 * t1720;
t1784 = t1745 * t1759;
t1783 = t1756 * t1759;
t1782 = qJD(6) - t1716;
t1746 = t1756 ^ 2;
t1780 = t1745 + t1746;
t1775 = t1753 * t1783;
t1734 = t1754 * g(1) - t1757 * g(2);
t1766 = -t1759 * qJ(2) + qJDD(2) - t1734;
t1763 = -qJDD(1) * t1794 + t1766;
t1699 = -t1756 * g(3) + t1753 * t1763;
t1675 = -pkin(3) * t1784 + t1725 * qJ(4) - qJD(3) * t1767 + t1699;
t1761 = t1756 * t1763;
t1760 = t1761 - t1726 * qJ(4) + qJDD(3) * pkin(3) + (-qJ(4) * qJD(1) * qJD(3) - pkin(3) * t1783 + g(3)) * t1753;
t1649 = t1751 * t1675 - t1718 * t1796 + t1749 * t1760;
t1690 = pkin(4) * t1718 - qJ(5) * t1720;
t1758 = qJD(3) ^ 2;
t1633 = -pkin(4) * t1758 + qJDD(3) * qJ(5) - t1690 * t1718 + t1649;
t1696 = t1725 * t1749 + t1726 * t1751;
t1773 = -t1696 + t1791;
t1641 = pkin(4) * t1681 + t1773 * qJ(5) - t1679;
t1611 = t1750 * t1633 + t1748 * t1641 + t1703 * t1795;
t1774 = -qJDD(6) + t1781;
t1772 = t1749 * t1675 - t1751 * t1760;
t1689 = qJDD(3) * t1748 + t1696 * t1750;
t1770 = -t1750 * qJDD(3) + t1696 * t1748;
t1771 = -t1752 * t1689 - t1755 * t1770;
t1659 = -t1689 - t1786;
t1610 = -t1748 * t1633 + t1750 * t1641 + t1705 * t1795;
t1764 = -t1755 * t1689 + t1752 * t1770;
t1632 = qJDD(5) - t1758 * qJ(5) - qJDD(3) * pkin(4) + (t1796 + t1690) * t1720 + t1772;
t1738 = -t1746 * t1759 - t1758;
t1737 = -t1758 - t1784;
t1733 = -qJDD(3) - t1775;
t1732 = qJDD(3) - t1775;
t1731 = t1780 * t1759;
t1730 = qJDD(1) * t1754 + t1757 * t1759;
t1729 = qJDD(1) * t1757 - t1754 * t1759;
t1728 = t1780 * qJDD(1);
t1727 = -0.2e1 * t1777 + t1778;
t1724 = 0.2e1 * t1776 + t1779;
t1717 = qJDD(1) * pkin(1) - t1766;
t1713 = t1759 * pkin(1) + t1765;
t1712 = -t1758 - t1797;
t1711 = t1759 * t1794 + t1765;
t1709 = t1733 * t1756 - t1738 * t1753;
t1708 = -t1732 * t1753 + t1737 * t1756;
t1707 = t1733 * t1753 + t1738 * t1756;
t1706 = t1732 * t1756 + t1737 * t1753;
t1698 = t1753 * g(3) + t1761;
t1693 = -qJDD(3) - t1785;
t1692 = qJDD(3) - t1785;
t1691 = -t1694 - t1758;
t1685 = pkin(5) * t1718 - pkin(8) * t1705;
t1684 = -t1696 - t1791;
t1682 = t1781 + t1790;
t1680 = -t1797 - t1694;
t1674 = -t1694 - t1799;
t1673 = t1693 * t1751 - t1712 * t1749;
t1672 = t1693 * t1749 + t1712 * t1751;
t1670 = -t1698 * t1753 + t1699 * t1756;
t1669 = t1698 * t1756 + t1699 * t1753;
t1666 = -t1694 - t1800;
t1664 = -t1799 - t1800;
t1663 = t1691 * t1751 - t1692 * t1749;
t1662 = t1691 * t1749 + t1692 * t1751;
t1661 = t1781 - t1788;
t1658 = t1689 - t1786;
t1657 = -t1770 + t1787;
t1656 = t1770 + t1787;
t1655 = -t1798 - t1801;
t1654 = t1682 * t1751 - t1684 * t1749;
t1653 = t1682 * t1749 + t1684 * t1751;
t1652 = -t1672 * t1753 + t1673 * t1756;
t1651 = t1672 * t1756 + t1673 * t1753;
t1650 = -t1798 - t1802;
t1648 = -0.2e1 * qJD(4) * t1720 - t1772;
t1647 = t1774 - t1789;
t1646 = -t1774 - t1789;
t1645 = t1661 * t1750 - t1674 * t1748;
t1644 = t1661 * t1748 + t1674 * t1750;
t1643 = -t1660 * t1748 + t1666 * t1750;
t1642 = t1660 * t1750 + t1666 * t1748;
t1640 = -t1662 * t1753 + t1663 * t1756;
t1639 = t1662 * t1756 + t1663 * t1753;
t1636 = t1657 * t1750 - t1659 * t1748;
t1635 = t1657 * t1748 + t1659 * t1750;
t1634 = -t1801 - t1802;
t1630 = -t1653 * t1753 + t1654 * t1756;
t1629 = t1653 * t1756 + t1654 * t1753;
t1628 = t1676 * t1782 + t1764;
t1627 = -t1676 * t1803 - t1764;
t1626 = -t1678 * t1782 + t1771;
t1625 = t1678 * t1803 - t1771;
t1624 = t1645 * t1751 + t1658 * t1749;
t1623 = t1645 * t1749 - t1658 * t1751;
t1622 = t1643 * t1751 + t1656 * t1749;
t1621 = t1643 * t1749 - t1656 * t1751;
t1620 = t1647 * t1755 - t1655 * t1752;
t1619 = t1647 * t1752 + t1655 * t1755;
t1618 = t1636 * t1751 + t1664 * t1749;
t1617 = t1636 * t1749 - t1664 * t1751;
t1616 = -t1646 * t1752 + t1650 * t1755;
t1615 = t1646 * t1755 + t1650 * t1752;
t1614 = -t1648 * t1749 + t1649 * t1751;
t1613 = t1648 * t1751 + t1649 * t1749;
t1612 = pkin(5) * t1770 - pkin(8) * t1800 + t1705 * t1685 + t1632;
t1609 = t1626 * t1755 - t1628 * t1752;
t1608 = t1626 * t1752 + t1628 * t1755;
t1607 = -t1623 * t1753 + t1624 * t1756;
t1606 = t1623 * t1756 + t1624 * t1753;
t1605 = -t1621 * t1753 + t1622 * t1756;
t1604 = t1621 * t1756 + t1622 * t1753;
t1603 = -t1619 * t1748 + t1620 * t1750;
t1602 = t1619 * t1750 + t1620 * t1748;
t1601 = -t1617 * t1753 + t1618 * t1756;
t1600 = t1617 * t1756 + t1618 * t1753;
t1599 = -pkin(5) * t1800 - pkin(8) * t1770 - t1718 * t1685 + t1611;
t1598 = pkin(5) * t1660 + t1659 * pkin(8) + t1610;
t1597 = -t1615 * t1748 + t1616 * t1750;
t1596 = t1615 * t1750 + t1616 * t1748;
t1595 = -t1613 * t1753 + t1614 * t1756;
t1594 = t1613 * t1756 + t1614 * t1753;
t1593 = t1603 * t1751 + t1627 * t1749;
t1592 = t1603 * t1749 - t1627 * t1751;
t1591 = -t1610 * t1748 + t1611 * t1750;
t1590 = t1610 * t1750 + t1611 * t1748;
t1589 = t1597 * t1751 + t1625 * t1749;
t1588 = t1597 * t1749 - t1625 * t1751;
t1587 = -t1608 * t1748 + t1609 * t1750;
t1586 = t1608 * t1750 + t1609 * t1748;
t1585 = t1591 * t1751 + t1632 * t1749;
t1584 = t1591 * t1749 - t1632 * t1751;
t1583 = t1587 * t1751 + t1634 * t1749;
t1582 = t1587 * t1749 - t1634 * t1751;
t1581 = t1598 * t1752 + t1599 * t1755;
t1580 = t1598 * t1755 - t1599 * t1752;
t1579 = -t1592 * t1753 + t1593 * t1756;
t1578 = t1592 * t1756 + t1593 * t1753;
t1577 = -t1588 * t1753 + t1589 * t1756;
t1576 = t1588 * t1756 + t1589 * t1753;
t1575 = -t1584 * t1753 + t1585 * t1756;
t1574 = t1584 * t1756 + t1585 * t1753;
t1573 = -t1582 * t1753 + t1583 * t1756;
t1572 = t1582 * t1756 + t1583 * t1753;
t1571 = -t1580 * t1752 + t1581 * t1755;
t1570 = t1580 * t1755 + t1581 * t1752;
t1569 = -t1570 * t1748 + t1571 * t1750;
t1568 = t1570 * t1750 + t1571 * t1748;
t1567 = t1569 * t1751 + t1612 * t1749;
t1566 = t1569 * t1749 - t1612 * t1751;
t1565 = -t1566 * t1753 + t1567 * t1756;
t1564 = t1566 * t1756 + t1567 * t1753;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1730, -t1729, 0, -t1734 * t1754 + t1735 * t1757, 0, 0, 0, 0, 0, 0, 0, t1730, t1729, -t1713 * t1757 - t1717 * t1754, 0, 0, 0, 0, 0, 0, t1706 * t1754 + t1724 * t1757, t1707 * t1754 + t1727 * t1757, -t1728 * t1754 - t1731 * t1757, t1669 * t1754 - t1711 * t1757, 0, 0, 0, 0, 0, 0, t1639 * t1754 + t1681 * t1757, t1651 * t1754 - t1757 * t1773, t1629 * t1754 + t1680 * t1757, t1594 * t1754 - t1679 * t1757, 0, 0, 0, 0, 0, 0, t1604 * t1754 + t1642 * t1757, t1606 * t1754 + t1644 * t1757, t1600 * t1754 + t1635 * t1757, t1574 * t1754 + t1590 * t1757, 0, 0, 0, 0, 0, 0, t1576 * t1754 + t1596 * t1757, t1578 * t1754 + t1602 * t1757, t1572 * t1754 + t1586 * t1757, t1564 * t1754 + t1568 * t1757; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1729, -t1730, 0, t1734 * t1757 + t1735 * t1754, 0, 0, 0, 0, 0, 0, 0, -t1729, t1730, -t1713 * t1754 + t1717 * t1757, 0, 0, 0, 0, 0, 0, -t1706 * t1757 + t1724 * t1754, -t1707 * t1757 + t1727 * t1754, t1728 * t1757 - t1731 * t1754, -t1669 * t1757 - t1711 * t1754, 0, 0, 0, 0, 0, 0, -t1639 * t1757 + t1681 * t1754, -t1651 * t1757 - t1754 * t1773, -t1629 * t1757 + t1680 * t1754, -t1594 * t1757 - t1679 * t1754, 0, 0, 0, 0, 0, 0, -t1604 * t1757 + t1642 * t1754, -t1606 * t1757 + t1644 * t1754, -t1600 * t1757 + t1635 * t1754, -t1574 * t1757 + t1590 * t1754, 0, 0, 0, 0, 0, 0, -t1576 * t1757 + t1596 * t1754, -t1578 * t1757 + t1602 * t1754, -t1572 * t1757 + t1586 * t1754, -t1564 * t1757 + t1568 * t1754; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1708, t1709, 0, t1670, 0, 0, 0, 0, 0, 0, t1640, t1652, t1630, t1595, 0, 0, 0, 0, 0, 0, t1605, t1607, t1601, t1575, 0, 0, 0, 0, 0, 0, t1577, t1579, t1573, t1565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1759, -qJDD(1), 0, t1735, 0, 0, 0, 0, 0, 0, 0, t1759, qJDD(1), -t1713, 0, 0, 0, 0, 0, 0, t1724, t1727, -t1731, -t1711, 0, 0, 0, 0, 0, 0, t1681, -t1773, t1680, -t1679, 0, 0, 0, 0, 0, 0, t1642, t1644, t1635, t1590, 0, 0, 0, 0, 0, 0, t1596, t1602, t1586, t1568; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1759, 0, t1734, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1759, t1717, 0, 0, 0, 0, 0, 0, -t1706, -t1707, t1728, -t1669, 0, 0, 0, 0, 0, 0, -t1639, -t1651, -t1629, -t1594, 0, 0, 0, 0, 0, 0, -t1604, -t1606, -t1600, -t1574, 0, 0, 0, 0, 0, 0, -t1576, -t1578, -t1572, -t1564; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1708, t1709, 0, t1670, 0, 0, 0, 0, 0, 0, t1640, t1652, t1630, t1595, 0, 0, 0, 0, 0, 0, t1605, t1607, t1601, t1575, 0, 0, 0, 0, 0, 0, t1577, t1579, t1573, t1565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1708, t1709, 0, t1670, 0, 0, 0, 0, 0, 0, t1640, t1652, t1630, t1595, 0, 0, 0, 0, 0, 0, t1605, t1607, t1601, t1575, 0, 0, 0, 0, 0, 0, t1577, t1579, t1573, t1565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1759, -qJDD(1), t1713, 0, 0, 0, 0, 0, 0, -t1724, -t1727, t1731, t1711, 0, 0, 0, 0, 0, 0, -t1681, t1773, -t1680, t1679, 0, 0, 0, 0, 0, 0, -t1642, -t1644, -t1635, -t1590, 0, 0, 0, 0, 0, 0, -t1596, -t1602, -t1586, -t1568; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1759, -t1717, 0, 0, 0, 0, 0, 0, t1706, t1707, -t1728, t1669, 0, 0, 0, 0, 0, 0, t1639, t1651, t1629, t1594, 0, 0, 0, 0, 0, 0, t1604, t1606, t1600, t1574, 0, 0, 0, 0, 0, 0, t1576, t1578, t1572, t1564; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1737, t1733, -t1779, t1699, 0, 0, 0, 0, 0, 0, t1663, t1673, t1654, t1614, 0, 0, 0, 0, 0, 0, t1622, t1624, t1618, t1585, 0, 0, 0, 0, 0, 0, t1589, t1593, t1583, t1567; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1732, t1738, -t1778, t1698, 0, 0, 0, 0, 0, 0, t1662, t1672, t1653, t1613, 0, 0, 0, 0, 0, 0, t1621, t1623, t1617, t1584, 0, 0, 0, 0, 0, 0, t1588, t1592, t1582, t1566; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1724, t1727, -t1731, -t1711, 0, 0, 0, 0, 0, 0, t1681, -t1773, t1680, -t1679, 0, 0, 0, 0, 0, 0, t1642, t1644, t1635, t1590, 0, 0, 0, 0, 0, 0, t1596, t1602, t1586, t1568; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1691, t1693, t1682, t1649, 0, 0, 0, 0, 0, 0, t1643, t1645, t1636, t1591, 0, 0, 0, 0, 0, 0, t1597, t1603, t1587, t1569; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1692, t1712, t1684, t1648, 0, 0, 0, 0, 0, 0, -t1656, -t1658, -t1664, -t1632, 0, 0, 0, 0, 0, 0, -t1625, -t1627, -t1634, -t1612; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1681, -t1773, t1680, -t1679, 0, 0, 0, 0, 0, 0, t1642, t1644, t1635, t1590, 0, 0, 0, 0, 0, 0, t1596, t1602, t1586, t1568; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1666, t1661, t1657, t1611, 0, 0, 0, 0, 0, 0, t1616, t1620, t1609, t1571; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1660, t1674, t1659, t1610, 0, 0, 0, 0, 0, 0, t1615, t1619, t1608, t1570; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1656, t1658, t1664, t1632, 0, 0, 0, 0, 0, 0, t1625, t1627, t1634, t1612; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1650, t1647, t1626, t1581; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1646, t1655, t1628, t1580; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1625, t1627, t1634, t1612;];
f_new_reg  = t1;