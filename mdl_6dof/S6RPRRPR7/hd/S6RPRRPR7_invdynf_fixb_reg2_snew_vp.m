% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPRRPR7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 23:03
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPRRPR7_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR7_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPR7_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRPR7_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRPR7_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRPR7_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 23:02:54
% EndTime: 2019-05-05 23:03:00
% DurationCPUTime: 6.10s
% Computational Cost: add. (35409->296), mult. (77080->361), div. (0->0), fcn. (55547->10), ass. (0->207)
t1808 = cos(qJ(3));
t1845 = qJD(1) * t1808;
t1830 = qJD(3) * t1845;
t1804 = sin(qJ(3));
t1834 = t1804 * qJDD(1);
t1772 = -t1830 - t1834;
t1798 = t1804 ^ 2;
t1811 = qJD(1) ^ 2;
t1805 = sin(qJ(1));
t1809 = cos(qJ(1));
t1782 = -t1809 * g(1) - t1805 * g(2);
t1815 = -qJDD(1) * qJ(2) - 0.2e1 * qJD(2) * qJD(1) - t1782;
t1818 = qJD(3) * pkin(3) - pkin(8) * t1845;
t1847 = pkin(7) + pkin(1);
t1732 = t1772 * pkin(3) - t1818 * t1845 + t1815 + (pkin(8) * t1798 + t1847) * t1811;
t1803 = sin(qJ(4));
t1807 = cos(qJ(4));
t1846 = qJD(1) * t1804;
t1768 = -t1803 * t1846 + t1807 * t1845;
t1831 = qJD(3) * t1846;
t1833 = t1808 * qJDD(1);
t1773 = -t1831 + t1833;
t1823 = -t1807 * t1772 + t1803 * t1773;
t1737 = -qJD(4) * t1768 - t1823;
t1766 = (-t1803 * t1808 - t1804 * t1807) * qJD(1);
t1765 = t1766 ^ 2;
t1796 = qJD(3) + qJD(4);
t1822 = pkin(4) * t1796 - qJ(5) * t1768;
t1695 = t1737 * pkin(4) + t1765 * qJ(5) - t1768 * t1822 - qJDD(5) + t1732;
t1800 = sin(pkin(10));
t1801 = cos(pkin(10));
t1745 = -t1801 * t1766 + t1768 * t1800;
t1743 = qJD(6) + t1745;
t1856 = qJD(6) + t1743;
t1747 = t1766 * t1800 + t1768 * t1801;
t1802 = sin(qJ(6));
t1806 = cos(qJ(6));
t1734 = t1747 * t1802 - t1806 * t1796;
t1855 = t1734 ^ 2;
t1736 = t1747 * t1806 + t1796 * t1802;
t1854 = t1736 ^ 2;
t1853 = t1743 ^ 2;
t1852 = t1745 ^ 2;
t1851 = t1747 ^ 2;
t1850 = t1768 ^ 2;
t1849 = t1796 ^ 2;
t1848 = -2 * qJD(5);
t1844 = t1734 * t1736;
t1843 = t1745 * t1747;
t1842 = t1745 * t1796;
t1841 = t1747 * t1796;
t1840 = t1766 * t1768;
t1839 = t1798 * t1811;
t1838 = qJD(4) - t1796;
t1837 = qJD(4) + t1796;
t1836 = qJD(6) - t1743;
t1781 = t1805 * g(1) - t1809 * g(2);
t1817 = -t1811 * qJ(2) + qJDD(2) - t1781;
t1761 = -qJDD(1) * t1847 + t1817;
t1751 = t1804 * g(3) + t1808 * t1761;
t1829 = t1804 * t1808 * t1811;
t1779 = qJDD(3) - t1829;
t1730 = (-t1773 - t1831) * pkin(8) + t1779 * pkin(3) + t1751;
t1752 = -t1808 * g(3) + t1804 * t1761;
t1731 = -pkin(3) * t1839 + t1772 * pkin(8) - qJD(3) * t1818 + t1752;
t1710 = t1803 * t1730 + t1807 * t1731;
t1799 = t1808 ^ 2;
t1835 = t1798 + t1799;
t1832 = qJDD(3) + qJDD(4);
t1688 = -t1765 * pkin(4) + t1737 * qJ(5) - t1796 * t1822 + t1710;
t1709 = t1807 * t1730 - t1803 * t1731;
t1819 = t1803 * t1772 + t1807 * t1773;
t1738 = qJD(4) * t1766 + t1819;
t1749 = t1832 + t1840;
t1813 = (t1766 * t1796 - t1738) * qJ(5) + t1749 * pkin(4) + t1709;
t1665 = t1801 * t1688 + t1745 * t1848 + t1800 * t1813;
t1827 = t1800 * t1688 - t1801 * t1813;
t1712 = t1737 * t1800 + t1738 * t1801;
t1826 = -t1712 + t1842;
t1825 = -t1802 * t1712 + t1806 * t1832;
t1824 = -t1801 * t1737 + t1738 * t1800;
t1821 = -qJDD(6) - t1824;
t1697 = t1824 + t1841;
t1816 = -t1806 * t1712 - t1802 * t1832;
t1810 = qJD(3) ^ 2;
t1785 = -t1799 * t1811 - t1810;
t1784 = -t1810 - t1839;
t1780 = -qJDD(3) - t1829;
t1778 = t1835 * t1811;
t1777 = qJDD(1) * t1805 + t1809 * t1811;
t1776 = qJDD(1) * t1809 - t1805 * t1811;
t1775 = t1835 * qJDD(1);
t1774 = -0.2e1 * t1831 + t1833;
t1771 = 0.2e1 * t1830 + t1834;
t1764 = qJDD(1) * pkin(1) - t1817;
t1762 = t1811 * pkin(1) + t1815;
t1760 = t1811 * t1847 + t1815;
t1757 = -t1849 - t1850;
t1756 = t1780 * t1808 - t1785 * t1804;
t1755 = -t1779 * t1804 + t1784 * t1808;
t1754 = t1780 * t1804 + t1785 * t1808;
t1753 = t1779 * t1808 + t1784 * t1804;
t1750 = -t1832 + t1840;
t1748 = -t1849 - t1765;
t1740 = -t1849 - t1851;
t1739 = -t1765 - t1850;
t1727 = -t1751 * t1804 + t1752 * t1808;
t1726 = t1751 * t1808 + t1752 * t1804;
t1725 = t1750 * t1807 - t1757 * t1803;
t1724 = t1750 * t1803 + t1757 * t1807;
t1723 = -t1766 * t1838 - t1819;
t1722 = t1766 * t1837 + t1819;
t1721 = -t1768 * t1838 - t1823;
t1720 = t1768 * t1837 + t1823;
t1719 = t1748 * t1807 - t1749 * t1803;
t1718 = t1748 * t1803 + t1749 * t1807;
t1717 = pkin(5) * t1745 - pkin(9) * t1747;
t1716 = -t1832 - t1843;
t1715 = t1832 - t1843;
t1714 = -t1849 - t1852;
t1711 = -t1851 - t1852;
t1708 = -t1853 - t1854;
t1707 = t1716 * t1801 - t1740 * t1800;
t1706 = t1716 * t1800 + t1740 * t1801;
t1705 = -t1853 - t1855;
t1704 = -t1724 * t1804 + t1725 * t1808;
t1703 = t1724 * t1808 + t1725 * t1804;
t1702 = t1721 * t1807 - t1723 * t1803;
t1701 = t1721 * t1803 + t1723 * t1807;
t1700 = -t1712 - t1842;
t1698 = -t1824 + t1841;
t1696 = -t1854 - t1855;
t1694 = -t1718 * t1804 + t1719 * t1808;
t1693 = t1718 * t1808 + t1719 * t1804;
t1692 = t1714 * t1801 - t1715 * t1800;
t1691 = t1714 * t1800 + t1715 * t1801;
t1690 = t1821 - t1844;
t1689 = -t1821 - t1844;
t1684 = t1734 * t1836 + t1816;
t1683 = -t1734 * t1856 - t1816;
t1682 = -t1736 * t1836 + t1825;
t1681 = t1736 * t1856 - t1825;
t1680 = -t1709 * t1803 + t1710 * t1807;
t1679 = t1709 * t1807 + t1710 * t1803;
t1678 = -t1706 * t1803 + t1707 * t1807;
t1677 = t1706 * t1807 + t1707 * t1803;
t1676 = -t1701 * t1804 + t1702 * t1808;
t1675 = t1701 * t1808 + t1702 * t1804;
t1674 = t1698 * t1801 - t1700 * t1800;
t1673 = t1698 * t1800 + t1700 * t1801;
t1672 = t1690 * t1806 - t1708 * t1802;
t1671 = t1690 * t1802 + t1708 * t1806;
t1670 = -t1691 * t1803 + t1692 * t1807;
t1669 = t1691 * t1807 + t1692 * t1803;
t1668 = -t1689 * t1802 + t1705 * t1806;
t1667 = t1689 * t1806 + t1705 * t1802;
t1666 = pkin(5) * t1697 + pkin(9) * t1826 - t1695;
t1664 = t1747 * t1848 - t1827;
t1663 = t1682 * t1806 - t1684 * t1802;
t1662 = t1682 * t1802 + t1684 * t1806;
t1661 = -t1679 * t1804 + t1680 * t1808;
t1660 = t1679 * t1808 + t1680 * t1804;
t1659 = -t1677 * t1804 + t1678 * t1808;
t1658 = t1677 * t1808 + t1678 * t1804;
t1657 = t1672 * t1801 + t1683 * t1800;
t1656 = t1672 * t1800 - t1683 * t1801;
t1655 = -t1673 * t1803 + t1674 * t1807;
t1654 = t1673 * t1807 + t1674 * t1803;
t1653 = t1668 * t1801 + t1681 * t1800;
t1652 = t1668 * t1800 - t1681 * t1801;
t1651 = -pkin(5) * t1849 + pkin(9) * t1832 - t1745 * t1717 + t1665;
t1650 = -t1832 * pkin(5) - t1849 * pkin(9) + ((2 * qJD(5)) + t1717) * t1747 + t1827;
t1649 = t1663 * t1801 + t1696 * t1800;
t1648 = t1663 * t1800 - t1696 * t1801;
t1647 = -t1669 * t1804 + t1670 * t1808;
t1646 = t1669 * t1808 + t1670 * t1804;
t1645 = -t1664 * t1800 + t1665 * t1801;
t1644 = t1664 * t1801 + t1665 * t1800;
t1643 = t1651 * t1806 + t1666 * t1802;
t1642 = -t1651 * t1802 + t1666 * t1806;
t1641 = -t1656 * t1803 + t1657 * t1807;
t1640 = t1656 * t1807 + t1657 * t1803;
t1639 = -t1654 * t1804 + t1655 * t1808;
t1638 = t1654 * t1808 + t1655 * t1804;
t1637 = -t1652 * t1803 + t1653 * t1807;
t1636 = t1652 * t1807 + t1653 * t1803;
t1635 = -t1648 * t1803 + t1649 * t1807;
t1634 = t1648 * t1807 + t1649 * t1803;
t1633 = -t1644 * t1803 + t1645 * t1807;
t1632 = t1644 * t1807 + t1645 * t1803;
t1631 = -t1642 * t1802 + t1643 * t1806;
t1630 = t1642 * t1806 + t1643 * t1802;
t1629 = -t1640 * t1804 + t1641 * t1808;
t1628 = t1640 * t1808 + t1641 * t1804;
t1627 = -t1636 * t1804 + t1637 * t1808;
t1626 = t1636 * t1808 + t1637 * t1804;
t1625 = -t1634 * t1804 + t1635 * t1808;
t1624 = t1634 * t1808 + t1635 * t1804;
t1623 = t1631 * t1801 + t1650 * t1800;
t1622 = t1631 * t1800 - t1650 * t1801;
t1621 = -t1632 * t1804 + t1633 * t1808;
t1620 = t1632 * t1808 + t1633 * t1804;
t1619 = -t1622 * t1803 + t1623 * t1807;
t1618 = t1622 * t1807 + t1623 * t1803;
t1617 = -t1618 * t1804 + t1619 * t1808;
t1616 = t1618 * t1808 + t1619 * t1804;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1777, -t1776, 0, -t1781 * t1805 + t1782 * t1809, 0, 0, 0, 0, 0, 0, 0, t1777, t1776, -t1762 * t1809 - t1764 * t1805, 0, 0, 0, 0, 0, 0, t1753 * t1805 + t1771 * t1809, t1754 * t1805 + t1774 * t1809, -t1775 * t1805 - t1778 * t1809, t1726 * t1805 - t1760 * t1809, 0, 0, 0, 0, 0, 0, t1693 * t1805 + t1720 * t1809, t1703 * t1805 + t1722 * t1809, t1675 * t1805 + t1739 * t1809, t1660 * t1805 - t1732 * t1809, 0, 0, 0, 0, 0, 0, t1646 * t1805 + t1697 * t1809, t1658 * t1805 - t1809 * t1826, t1638 * t1805 + t1711 * t1809, t1620 * t1805 - t1695 * t1809, 0, 0, 0, 0, 0, 0, t1626 * t1805 + t1667 * t1809, t1628 * t1805 + t1671 * t1809, t1624 * t1805 + t1662 * t1809, t1616 * t1805 + t1630 * t1809; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1776, -t1777, 0, t1781 * t1809 + t1782 * t1805, 0, 0, 0, 0, 0, 0, 0, -t1776, t1777, -t1762 * t1805 + t1764 * t1809, 0, 0, 0, 0, 0, 0, -t1753 * t1809 + t1771 * t1805, -t1754 * t1809 + t1774 * t1805, t1775 * t1809 - t1778 * t1805, -t1726 * t1809 - t1760 * t1805, 0, 0, 0, 0, 0, 0, -t1693 * t1809 + t1720 * t1805, -t1703 * t1809 + t1722 * t1805, -t1675 * t1809 + t1739 * t1805, -t1660 * t1809 - t1732 * t1805, 0, 0, 0, 0, 0, 0, -t1646 * t1809 + t1697 * t1805, -t1658 * t1809 - t1805 * t1826, -t1638 * t1809 + t1711 * t1805, -t1620 * t1809 - t1695 * t1805, 0, 0, 0, 0, 0, 0, -t1626 * t1809 + t1667 * t1805, -t1628 * t1809 + t1671 * t1805, -t1624 * t1809 + t1662 * t1805, -t1616 * t1809 + t1630 * t1805; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1755, t1756, 0, t1727, 0, 0, 0, 0, 0, 0, t1694, t1704, t1676, t1661, 0, 0, 0, 0, 0, 0, t1647, t1659, t1639, t1621, 0, 0, 0, 0, 0, 0, t1627, t1629, t1625, t1617; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1811, -qJDD(1), 0, t1782, 0, 0, 0, 0, 0, 0, 0, t1811, qJDD(1), -t1762, 0, 0, 0, 0, 0, 0, t1771, t1774, -t1778, -t1760, 0, 0, 0, 0, 0, 0, t1720, t1722, t1739, -t1732, 0, 0, 0, 0, 0, 0, t1697, -t1826, t1711, -t1695, 0, 0, 0, 0, 0, 0, t1667, t1671, t1662, t1630; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1811, 0, t1781, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1811, t1764, 0, 0, 0, 0, 0, 0, -t1753, -t1754, t1775, -t1726, 0, 0, 0, 0, 0, 0, -t1693, -t1703, -t1675, -t1660, 0, 0, 0, 0, 0, 0, -t1646, -t1658, -t1638, -t1620, 0, 0, 0, 0, 0, 0, -t1626, -t1628, -t1624, -t1616; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1755, t1756, 0, t1727, 0, 0, 0, 0, 0, 0, t1694, t1704, t1676, t1661, 0, 0, 0, 0, 0, 0, t1647, t1659, t1639, t1621, 0, 0, 0, 0, 0, 0, t1627, t1629, t1625, t1617; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1755, t1756, 0, t1727, 0, 0, 0, 0, 0, 0, t1694, t1704, t1676, t1661, 0, 0, 0, 0, 0, 0, t1647, t1659, t1639, t1621, 0, 0, 0, 0, 0, 0, t1627, t1629, t1625, t1617; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1811, -qJDD(1), t1762, 0, 0, 0, 0, 0, 0, -t1771, -t1774, t1778, t1760, 0, 0, 0, 0, 0, 0, -t1720, -t1722, -t1739, t1732, 0, 0, 0, 0, 0, 0, -t1697, t1826, -t1711, t1695, 0, 0, 0, 0, 0, 0, -t1667, -t1671, -t1662, -t1630; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1811, -t1764, 0, 0, 0, 0, 0, 0, t1753, t1754, -t1775, t1726, 0, 0, 0, 0, 0, 0, t1693, t1703, t1675, t1660, 0, 0, 0, 0, 0, 0, t1646, t1658, t1638, t1620, 0, 0, 0, 0, 0, 0, t1626, t1628, t1624, t1616; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1784, t1780, -t1834, t1752, 0, 0, 0, 0, 0, 0, t1719, t1725, t1702, t1680, 0, 0, 0, 0, 0, 0, t1670, t1678, t1655, t1633, 0, 0, 0, 0, 0, 0, t1637, t1641, t1635, t1619; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1779, t1785, -t1833, t1751, 0, 0, 0, 0, 0, 0, t1718, t1724, t1701, t1679, 0, 0, 0, 0, 0, 0, t1669, t1677, t1654, t1632, 0, 0, 0, 0, 0, 0, t1636, t1640, t1634, t1618; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1771, t1774, -t1778, -t1760, 0, 0, 0, 0, 0, 0, t1720, t1722, t1739, -t1732, 0, 0, 0, 0, 0, 0, t1697, -t1826, t1711, -t1695, 0, 0, 0, 0, 0, 0, t1667, t1671, t1662, t1630; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1748, t1750, t1721, t1710, 0, 0, 0, 0, 0, 0, t1692, t1707, t1674, t1645, 0, 0, 0, 0, 0, 0, t1653, t1657, t1649, t1623; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1749, t1757, t1723, t1709, 0, 0, 0, 0, 0, 0, t1691, t1706, t1673, t1644, 0, 0, 0, 0, 0, 0, t1652, t1656, t1648, t1622; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1720, t1722, t1739, -t1732, 0, 0, 0, 0, 0, 0, t1697, -t1826, t1711, -t1695, 0, 0, 0, 0, 0, 0, t1667, t1671, t1662, t1630; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1714, t1716, t1698, t1665, 0, 0, 0, 0, 0, 0, t1668, t1672, t1663, t1631; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1715, t1740, t1700, t1664, 0, 0, 0, 0, 0, 0, -t1681, -t1683, -t1696, -t1650; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1697, -t1826, t1711, -t1695, 0, 0, 0, 0, 0, 0, t1667, t1671, t1662, t1630; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1705, t1690, t1682, t1643; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1689, t1708, t1684, t1642; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1681, t1683, t1696, t1650;];
f_new_reg  = t1;
