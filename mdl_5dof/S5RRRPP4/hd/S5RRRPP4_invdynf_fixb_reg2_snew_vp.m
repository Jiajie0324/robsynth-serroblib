% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RRRPP4
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
%   pkin=[a2,a3,a4,a5,d1,d2,d3,theta4]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:56
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RRRPP4_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPP4_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPP4_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRPP4_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRPP4_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRPP4_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:56:40
% EndTime: 2019-12-31 20:56:44
% DurationCPUTime: 4.18s
% Computational Cost: add. (14761->234), mult. (33483->276), div. (0->0), fcn. (23590->8), ass. (0->161)
t1802 = qJDD(2) + qJDD(3);
t1780 = sin(qJ(3));
t1783 = cos(qJ(3));
t1784 = cos(qJ(2));
t1816 = qJD(1) * t1784;
t1781 = sin(qJ(2));
t1817 = qJD(1) * t1781;
t1745 = t1780 * t1817 - t1783 * t1816;
t1747 = (t1780 * t1784 + t1781 * t1783) * qJD(1);
t1778 = sin(pkin(8));
t1779 = cos(pkin(8));
t1729 = t1745 * t1779 + t1747 * t1778;
t1731 = -t1745 * t1778 + t1747 * t1779;
t1813 = t1729 * t1731;
t1693 = t1802 + t1813;
t1727 = t1731 ^ 2;
t1775 = qJD(2) + qJD(3);
t1820 = t1775 ^ 2;
t1826 = -t1727 - t1820;
t1663 = t1693 * t1778 - t1779 * t1826;
t1665 = t1693 * t1779 + t1778 * t1826;
t1643 = t1663 * t1783 + t1665 * t1780;
t1655 = t1663 * t1780 - t1665 * t1783;
t1636 = t1643 * t1781 + t1655 * t1784;
t1782 = sin(qJ(1));
t1785 = cos(qJ(1));
t1800 = qJD(2) * t1816;
t1803 = t1781 * qJDD(1);
t1753 = t1800 + t1803;
t1772 = t1784 * qJDD(1);
t1801 = qJD(2) * t1817;
t1754 = t1772 - t1801;
t1797 = t1753 * t1780 - t1783 * t1754;
t1713 = -qJD(3) * t1747 - t1797;
t1794 = -t1753 * t1783 - t1754 * t1780;
t1714 = -qJD(3) * t1745 - t1794;
t1795 = t1713 * t1778 + t1714 * t1779;
t1810 = t1775 * t1729;
t1789 = t1795 - t1810;
t1848 = t1636 * t1782 - t1785 * t1789;
t1847 = t1636 * t1785 + t1782 * t1789;
t1624 = t1643 * t1784 - t1655 * t1781;
t1798 = t1779 * t1713 - t1778 * t1714;
t1809 = t1775 * t1731;
t1825 = t1798 - t1809;
t1694 = t1802 - t1813;
t1699 = t1729 ^ 2;
t1824 = -t1820 - t1699;
t1833 = -t1694 * t1778 + t1779 * t1824;
t1834 = t1779 * t1694 + t1778 * t1824;
t1837 = t1780 * t1833 + t1783 * t1834;
t1838 = -t1780 * t1834 + t1783 * t1833;
t1841 = -t1781 * t1837 + t1784 * t1838;
t1846 = t1782 * t1841 + t1785 * t1825;
t1845 = -t1782 * t1825 + t1785 * t1841;
t1687 = t1727 + t1699;
t1677 = t1795 + t1810;
t1791 = t1798 + t1809;
t1822 = t1677 * t1778 + t1779 * t1791;
t1823 = -t1779 * t1677 + t1778 * t1791;
t1831 = t1780 * t1822 + t1783 * t1823;
t1832 = -t1780 * t1823 + t1783 * t1822;
t1835 = -t1781 * t1831 + t1784 * t1832;
t1844 = t1687 * t1785 + t1782 * t1835;
t1843 = -t1687 * t1782 + t1785 * t1835;
t1842 = t1781 * t1838 + t1784 * t1837;
t1836 = t1781 * t1832 + t1784 * t1831;
t1744 = t1745 ^ 2;
t1821 = t1747 ^ 2;
t1819 = -2 * qJD(4);
t1818 = 2 * qJD(5);
t1812 = t1747 * t1745;
t1763 = -g(1) * t1785 - g(2) * t1782;
t1787 = qJD(1) ^ 2;
t1749 = -pkin(1) * t1787 + qJDD(1) * pkin(6) + t1763;
t1811 = t1749 * t1781;
t1808 = t1775 * t1745;
t1777 = t1784 ^ 2;
t1807 = t1777 * t1787;
t1806 = t1781 * t1787;
t1805 = qJD(3) - t1775;
t1708 = qJDD(2) * pkin(2) - pkin(7) * t1753 - t1811 + (qJD(2) * pkin(7) * qJD(1) + pkin(2) * t1806 - g(3)) * t1784;
t1741 = -t1781 * g(3) + t1784 * t1749;
t1793 = qJD(2) * pkin(2) - pkin(7) * t1817;
t1711 = -pkin(2) * t1807 + t1754 * pkin(7) - qJD(2) * t1793 + t1741;
t1689 = t1780 * t1708 + t1783 * t1711;
t1776 = t1781 ^ 2;
t1804 = t1776 + t1777;
t1796 = pkin(3) * t1775 - qJ(4) * t1747;
t1662 = -t1744 * pkin(3) + t1713 * qJ(4) - t1775 * t1796 + t1689;
t1688 = t1783 * t1708 - t1780 * t1711;
t1733 = t1802 - t1812;
t1788 = (-t1714 - t1808) * qJ(4) + t1733 * pkin(3) + t1688;
t1642 = t1779 * t1662 + t1729 * t1819 + t1778 * t1788;
t1762 = t1782 * g(1) - t1785 * g(2);
t1799 = t1662 * t1778 - t1779 * t1788;
t1792 = qJDD(1) * pkin(1) + t1762;
t1716 = t1754 * pkin(2) - t1793 * t1817 + (t1777 * pkin(7) + pkin(6)) * t1787 + t1792;
t1669 = t1713 * pkin(3) + t1744 * qJ(4) - t1747 * t1796 - qJDD(4) + t1716;
t1786 = qJD(2) ^ 2;
t1768 = t1784 * t1806;
t1766 = -t1786 - t1807;
t1765 = -t1776 * t1787 - t1786;
t1761 = -qJDD(2) + t1768;
t1760 = qJDD(2) + t1768;
t1759 = t1804 * t1787;
t1758 = -qJDD(1) * t1782 - t1785 * t1787;
t1757 = qJDD(1) * t1785 - t1782 * t1787;
t1756 = t1804 * qJDD(1);
t1755 = t1772 - 0.2e1 * t1801;
t1752 = 0.2e1 * t1800 + t1803;
t1748 = t1787 * pkin(6) + t1792;
t1740 = -g(3) * t1784 - t1811;
t1739 = -t1820 - t1821;
t1738 = t1761 * t1784 - t1765 * t1781;
t1737 = -t1760 * t1781 + t1766 * t1784;
t1736 = t1761 * t1781 + t1765 * t1784;
t1735 = t1760 * t1784 + t1766 * t1781;
t1734 = -t1802 - t1812;
t1732 = -t1820 - t1744;
t1715 = -t1744 - t1821;
t1710 = -t1740 * t1781 + t1741 * t1784;
t1709 = t1740 * t1784 + t1741 * t1781;
t1705 = t1734 * t1783 - t1739 * t1780;
t1704 = t1734 * t1780 + t1739 * t1783;
t1703 = t1805 * t1745 + t1794;
t1702 = t1714 - t1808;
t1701 = -t1805 * t1747 - t1797;
t1700 = (qJD(3) + t1775) * t1747 + t1797;
t1698 = t1732 * t1783 - t1733 * t1780;
t1697 = t1732 * t1780 + t1733 * t1783;
t1696 = pkin(4) * t1729 - qJ(5) * t1731;
t1681 = -t1704 * t1781 + t1705 * t1784;
t1680 = t1704 * t1784 + t1705 * t1781;
t1679 = t1701 * t1783 - t1703 * t1780;
t1678 = t1701 * t1780 + t1703 * t1783;
t1668 = -t1697 * t1781 + t1698 * t1784;
t1667 = t1697 * t1784 + t1698 * t1781;
t1658 = -t1688 * t1780 + t1689 * t1783;
t1657 = t1688 * t1783 + t1689 * t1780;
t1652 = -t1678 * t1781 + t1679 * t1784;
t1651 = t1678 * t1784 + t1679 * t1781;
t1641 = t1731 * t1819 - t1799;
t1640 = -t1657 * t1781 + t1658 * t1784;
t1639 = t1657 * t1784 + t1658 * t1781;
t1638 = t1825 * pkin(4) + t1789 * qJ(5) + t1731 * t1818 + t1669;
t1629 = qJDD(5) - t1802 * pkin(4) - t1820 * qJ(5) + ((2 * qJD(4)) + t1696) * t1731 + t1799;
t1628 = -pkin(4) * t1820 + t1802 * qJ(5) - t1729 * t1696 + t1775 * t1818 + t1642;
t1623 = -t1641 * t1778 + t1642 * t1779;
t1622 = t1641 * t1779 + t1642 * t1778;
t1617 = t1628 * t1779 + t1629 * t1778;
t1616 = t1628 * t1778 - t1629 * t1779;
t1615 = -t1622 * t1780 + t1623 * t1783;
t1614 = t1622 * t1783 + t1623 * t1780;
t1613 = -t1616 * t1780 + t1617 * t1783;
t1612 = t1616 * t1783 + t1617 * t1780;
t1611 = -t1614 * t1781 + t1615 * t1784;
t1610 = t1614 * t1784 + t1615 * t1781;
t1609 = -t1612 * t1781 + t1613 * t1784;
t1608 = t1612 * t1784 + t1613 * t1781;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1758, -t1757, 0, -t1762 * t1782 + t1763 * t1785, 0, 0, 0, 0, 0, 0, t1737 * t1785 - t1755 * t1782, t1738 * t1785 + t1752 * t1782, t1756 * t1785 - t1759 * t1782, t1710 * t1785 - t1748 * t1782, 0, 0, 0, 0, 0, 0, t1668 * t1785 + t1700 * t1782, t1681 * t1785 + t1702 * t1782, t1652 * t1785 + t1715 * t1782, t1640 * t1785 - t1716 * t1782, 0, 0, 0, 0, 0, 0, t1845, t1847, t1843, t1611 * t1785 - t1669 * t1782, 0, 0, 0, 0, 0, 0, t1845, t1843, -t1847, t1609 * t1785 - t1638 * t1782; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1757, t1758, 0, t1762 * t1785 + t1763 * t1782, 0, 0, 0, 0, 0, 0, t1737 * t1782 + t1755 * t1785, t1738 * t1782 - t1752 * t1785, t1756 * t1782 + t1759 * t1785, t1710 * t1782 + t1748 * t1785, 0, 0, 0, 0, 0, 0, t1668 * t1782 - t1700 * t1785, t1681 * t1782 - t1702 * t1785, t1652 * t1782 - t1715 * t1785, t1640 * t1782 + t1716 * t1785, 0, 0, 0, 0, 0, 0, t1846, t1848, t1844, t1611 * t1782 + t1669 * t1785, 0, 0, 0, 0, 0, 0, t1846, t1844, -t1848, t1609 * t1782 + t1638 * t1785; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1735, t1736, 0, t1709, 0, 0, 0, 0, 0, 0, t1667, t1680, t1651, t1639, 0, 0, 0, 0, 0, 0, t1842, -t1624, t1836, t1610, 0, 0, 0, 0, 0, 0, t1842, t1836, t1624, t1608; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1787, -qJDD(1), 0, t1763, 0, 0, 0, 0, 0, 0, t1737, t1738, t1756, t1710, 0, 0, 0, 0, 0, 0, t1668, t1681, t1652, t1640, 0, 0, 0, 0, 0, 0, t1841, t1636, t1835, t1611, 0, 0, 0, 0, 0, 0, t1841, t1835, -t1636, t1609; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1787, 0, t1762, 0, 0, 0, 0, 0, 0, t1755, -t1752, t1759, t1748, 0, 0, 0, 0, 0, 0, -t1700, -t1702, -t1715, t1716, 0, 0, 0, 0, 0, 0, t1825, -t1789, t1687, t1669, 0, 0, 0, 0, 0, 0, t1825, t1687, t1789, t1638; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1735, t1736, 0, t1709, 0, 0, 0, 0, 0, 0, t1667, t1680, t1651, t1639, 0, 0, 0, 0, 0, 0, t1842, -t1624, t1836, t1610, 0, 0, 0, 0, 0, 0, t1842, t1836, t1624, t1608; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1766, t1761, t1772, t1741, 0, 0, 0, 0, 0, 0, t1698, t1705, t1679, t1658, 0, 0, 0, 0, 0, 0, t1838, t1655, t1832, t1615, 0, 0, 0, 0, 0, 0, t1838, t1832, -t1655, t1613; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1760, t1765, -t1803, t1740, 0, 0, 0, 0, 0, 0, t1697, t1704, t1678, t1657, 0, 0, 0, 0, 0, 0, t1837, -t1643, t1831, t1614, 0, 0, 0, 0, 0, 0, t1837, t1831, t1643, t1612; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1755, t1752, -t1759, -t1748, 0, 0, 0, 0, 0, 0, t1700, t1702, t1715, -t1716, 0, 0, 0, 0, 0, 0, -t1825, t1789, -t1687, -t1669, 0, 0, 0, 0, 0, 0, -t1825, -t1687, -t1789, -t1638; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1732, t1734, t1701, t1689, 0, 0, 0, 0, 0, 0, t1833, -t1665, t1822, t1623, 0, 0, 0, 0, 0, 0, t1833, t1822, t1665, t1617; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1733, t1739, t1703, t1688, 0, 0, 0, 0, 0, 0, t1834, -t1663, t1823, t1622, 0, 0, 0, 0, 0, 0, t1834, t1823, t1663, t1616; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1700, t1702, t1715, -t1716, 0, 0, 0, 0, 0, 0, -t1825, t1789, -t1687, -t1669, 0, 0, 0, 0, 0, 0, -t1825, -t1687, -t1789, -t1638; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1824, -t1693, t1791, t1642, 0, 0, 0, 0, 0, 0, t1824, t1791, t1693, t1628; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1694, t1826, -t1677, t1641, 0, 0, 0, 0, 0, 0, t1694, -t1677, -t1826, -t1629; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1825, t1789, -t1687, -t1669, 0, 0, 0, 0, 0, 0, -t1825, -t1687, -t1789, -t1638; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1824, t1791, t1693, t1628; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1825, -t1687, -t1789, -t1638; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1694, t1677, t1826, t1629;];
f_new_reg = t1;