% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPPRRP8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,theta3]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 15:08
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPPRRP8_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP8_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP8_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRRP8_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRRP8_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRRP8_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 15:08:37
% EndTime: 2019-05-05 15:08:42
% DurationCPUTime: 6.10s
% Computational Cost: add. (12788->262), mult. (29241->274), div. (0->0), fcn. (20947->8), ass. (0->155)
t1844 = sin(pkin(9));
t1845 = cos(pkin(9));
t1848 = sin(qJ(4));
t1851 = cos(qJ(4));
t1822 = (-t1844 * t1848 + t1845 * t1851) * qJD(1);
t1878 = t1822 * qJD(4);
t1870 = t1844 * t1851 + t1845 * t1848;
t1898 = t1870 * qJDD(1);
t1859 = t1898 + qJDD(5) + t1878;
t1847 = sin(qJ(5));
t1850 = cos(qJ(5));
t1808 = -qJD(4) * t1850 + t1822 * t1847;
t1810 = qJD(4) * t1847 + t1822 * t1850;
t1880 = t1810 * t1808;
t1762 = t1859 + t1880;
t1807 = t1810 ^ 2;
t1820 = t1870 * qJD(1);
t1817 = qJD(5) + t1820;
t1892 = t1817 ^ 2;
t1900 = -t1807 - t1892;
t1741 = t1762 * t1850 + t1847 * t1900;
t1835 = t1844 * qJDD(1);
t1836 = t1845 * qJDD(1);
t1871 = -t1848 * t1835 + t1851 * t1836;
t1886 = qJD(4) * t1820;
t1805 = t1871 - t1886;
t1864 = -qJD(5) * t1808 + qJDD(4) * t1847 + t1805 * t1850;
t1881 = t1808 * t1817;
t1860 = t1864 - t1881;
t1720 = t1741 * t1848 + t1851 * t1860;
t1722 = t1741 * t1851 - t1848 * t1860;
t1701 = t1720 * t1845 + t1722 * t1844;
t1739 = t1762 * t1847 - t1850 * t1900;
t1849 = sin(qJ(1));
t1852 = cos(qJ(1));
t1928 = t1701 * t1849 + t1739 * t1852;
t1927 = t1701 * t1852 - t1739 * t1849;
t1707 = t1720 * t1844 - t1722 * t1845;
t1757 = t1864 + t1881;
t1873 = -t1850 * qJDD(4) + t1847 * t1805;
t1865 = (-qJD(5) + t1817) * t1810 - t1873;
t1895 = -t1757 * t1850 + t1847 * t1865;
t1787 = t1808 ^ 2;
t1772 = t1807 + t1787;
t1894 = t1757 * t1847 + t1850 * t1865;
t1915 = t1772 * t1851 + t1848 * t1894;
t1916 = -t1772 * t1848 + t1851 * t1894;
t1922 = t1844 * t1916 + t1845 * t1915;
t1924 = t1849 * t1922 + t1852 * t1895;
t1923 = t1849 * t1895 - t1852 * t1922;
t1921 = -t1844 * t1915 + t1845 * t1916;
t1763 = t1859 - t1880;
t1899 = -t1892 - t1787;
t1904 = -t1763 * t1847 + t1850 * t1899;
t1920 = t1848 * t1904;
t1905 = t1763 * t1850 + t1847 * t1899;
t1919 = t1849 * t1905;
t1918 = t1851 * t1904;
t1917 = t1852 * t1905;
t1853 = qJD(1) ^ 2;
t1830 = -t1852 * g(1) - t1849 * g(2);
t1914 = -0.2e1 * qJD(1);
t1862 = -qJDD(1) * qJ(2) + qJD(2) * t1914 - t1830;
t1861 = -qJDD(3) + t1862;
t1840 = t1844 ^ 2;
t1841 = t1845 ^ 2;
t1876 = t1840 + t1841;
t1889 = pkin(1) + qJ(3);
t1794 = t1861 - pkin(3) * t1835 + (t1876 * pkin(7) + t1889) * t1853;
t1829 = t1849 * g(1) - t1852 * g(2);
t1868 = qJDD(2) - t1829;
t1863 = -t1853 * qJ(2) + t1868;
t1875 = qJD(3) * t1914;
t1907 = -t1889 * qJDD(1) + t1863 + t1875;
t1901 = t1876 * t1853;
t1893 = qJD(4) ^ 2;
t1891 = t1820 ^ 2;
t1890 = t1822 ^ 2;
t1888 = t1844 * g(3);
t1879 = t1820 * t1822;
t1877 = t1840 * t1853;
t1797 = -g(3) * t1845 + t1907 * t1844;
t1788 = -pkin(3) * t1877 - pkin(7) * t1835 + t1797;
t1857 = t1888 + (t1875 + (-pkin(3) * t1844 - qJ(2)) * t1853 + (-pkin(7) - t1889) * qJDD(1) + t1868) * t1845;
t1761 = t1851 * t1788 + t1848 * t1857;
t1798 = pkin(4) * t1820 - pkin(8) * t1822;
t1736 = -t1893 * pkin(4) + qJDD(4) * pkin(8) - t1798 * t1820 + t1761;
t1803 = t1898 + 0.2e1 * t1878;
t1856 = (-t1805 + t1886) * pkin(8) + t1803 * pkin(4) - t1794;
t1715 = t1850 * t1736 + t1847 * t1856;
t1874 = t1844 * t1853 * t1845;
t1714 = -t1847 * t1736 + t1850 * t1856;
t1760 = -t1848 * t1788 + t1851 * t1857;
t1867 = -qJD(5) * t1810 - t1873;
t1735 = -qJDD(4) * pkin(4) - t1893 * pkin(8) + t1822 * t1798 - t1760;
t1828 = qJDD(1) * t1849 + t1852 * t1853;
t1827 = qJDD(1) * t1852 - t1849 * t1853;
t1825 = t1876 * qJDD(1);
t1824 = t1844 * t1901;
t1823 = t1845 * t1901;
t1818 = qJDD(1) * pkin(1) - t1863;
t1815 = t1853 * pkin(1) + t1862;
t1813 = -t1890 - t1893;
t1812 = t1889 * t1853 + t1861;
t1804 = t1871 - 0.2e1 * t1886;
t1802 = -qJDD(4) - t1879;
t1801 = qJDD(4) - t1879;
t1799 = -t1891 - t1893;
t1796 = t1907 * t1845 + t1888;
t1786 = -t1890 - t1891;
t1783 = pkin(5) * t1808 - qJ(6) * t1810;
t1778 = t1802 * t1851 - t1813 * t1848;
t1777 = t1802 * t1848 + t1813 * t1851;
t1770 = t1848 * t1871 - t1851 * t1898;
t1769 = -t1848 * t1898 - t1851 * t1871;
t1768 = t1799 * t1851 - t1801 * t1848;
t1767 = t1799 * t1848 + t1801 * t1851;
t1766 = -t1796 * t1844 + t1797 * t1845;
t1765 = t1796 * t1845 + t1797 * t1844;
t1754 = t1817 * t1810 - t1867;
t1753 = (qJD(5) + t1817) * t1810 + t1873;
t1752 = -t1777 * t1844 + t1778 * t1845;
t1751 = t1777 * t1845 + t1778 * t1844;
t1744 = -t1769 * t1844 + t1770 * t1845;
t1743 = t1769 * t1845 + t1770 * t1844;
t1738 = -t1767 * t1844 + t1768 * t1845;
t1737 = t1767 * t1845 + t1768 * t1844;
t1733 = -t1760 * t1848 + t1761 * t1851;
t1732 = t1760 * t1851 + t1761 * t1848;
t1727 = t1754 * t1848 + t1918;
t1725 = -t1754 * t1851 + t1920;
t1723 = t1753 * t1848 + t1918;
t1721 = -t1753 * t1851 + t1920;
t1713 = -t1867 * pkin(5) + (pkin(5) * t1817 - (2 * qJD(6))) * t1810 + t1735 - t1860 * qJ(6);
t1712 = -t1732 * t1844 + t1733 * t1845;
t1711 = t1732 * t1845 + t1733 * t1844;
t1710 = -t1859 * pkin(5) - qJ(6) * t1892 + t1810 * t1783 + qJDD(6) - t1714;
t1709 = -pkin(5) * t1892 + t1859 * qJ(6) + 0.2e1 * qJD(6) * t1817 - t1808 * t1783 + t1715;
t1708 = -t1725 * t1844 + t1727 * t1845;
t1706 = t1725 * t1845 + t1727 * t1844;
t1704 = -t1721 * t1844 + t1723 * t1845;
t1702 = t1721 * t1845 + t1723 * t1844;
t1696 = -t1714 * t1847 + t1715 * t1850;
t1695 = t1714 * t1850 + t1715 * t1847;
t1694 = t1696 * t1851 + t1735 * t1848;
t1693 = t1696 * t1848 - t1735 * t1851;
t1692 = t1709 * t1850 + t1710 * t1847;
t1691 = t1709 * t1847 - t1710 * t1850;
t1690 = t1692 * t1851 + t1713 * t1848;
t1689 = t1692 * t1848 - t1713 * t1851;
t1688 = -t1693 * t1844 + t1694 * t1845;
t1687 = t1693 * t1845 + t1694 * t1844;
t1686 = -t1689 * t1844 + t1690 * t1845;
t1685 = t1689 * t1845 + t1690 * t1844;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1828, -t1827, 0, -t1829 * t1849 + t1830 * t1852, 0, 0, 0, 0, 0, 0, 0, t1828, t1827, -t1815 * t1852 - t1818 * t1849, 0, 0, 0, 0, 0, 0, -t1824 * t1849 + t1852 * t1835, -t1823 * t1849 + t1852 * t1836, -t1825 * t1849 - t1852 * t1901, t1765 * t1849 - t1812 * t1852, 0, 0, 0, 0, 0, 0, t1737 * t1849 + t1803 * t1852, t1751 * t1849 + t1804 * t1852, t1743 * t1849 + t1786 * t1852, t1711 * t1849 - t1794 * t1852, 0, 0, 0, 0, 0, 0, t1702 * t1849 + t1917, -t1928, t1924, t1687 * t1849 + t1695 * t1852, 0, 0, 0, 0, 0, 0, t1706 * t1849 + t1917, t1924, t1928, t1685 * t1849 + t1691 * t1852; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1827, -t1828, 0, t1829 * t1852 + t1830 * t1849, 0, 0, 0, 0, 0, 0, 0, -t1827, t1828, -t1815 * t1849 + t1818 * t1852, 0, 0, 0, 0, 0, 0, t1824 * t1852 + t1849 * t1835, t1823 * t1852 + t1849 * t1836, t1825 * t1852 - t1849 * t1901, -t1765 * t1852 - t1812 * t1849, 0, 0, 0, 0, 0, 0, -t1737 * t1852 + t1803 * t1849, -t1751 * t1852 + t1804 * t1849, -t1743 * t1852 + t1786 * t1849, -t1711 * t1852 - t1794 * t1849, 0, 0, 0, 0, 0, 0, -t1702 * t1852 + t1919, t1927, t1923, -t1687 * t1852 + t1695 * t1849, 0, 0, 0, 0, 0, 0, -t1706 * t1852 + t1919, t1923, -t1927, -t1685 * t1852 + t1691 * t1849; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1766, 0, 0, 0, 0, 0, 0, t1738, t1752, t1744, t1712, 0, 0, 0, 0, 0, 0, t1704, t1707, t1921, t1688, 0, 0, 0, 0, 0, 0, t1708, t1921, -t1707, t1686; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1853, -qJDD(1), 0, t1830, 0, 0, 0, 0, 0, 0, 0, t1853, qJDD(1), -t1815, 0, 0, 0, 0, 0, 0, t1835, t1836, -t1901, -t1812, 0, 0, 0, 0, 0, 0, t1803, t1804, t1786, -t1794, 0, 0, 0, 0, 0, 0, t1905, -t1739, t1895, t1695, 0, 0, 0, 0, 0, 0, t1905, t1895, t1739, t1691; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1853, 0, t1829, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1853, t1818, 0, 0, 0, 0, 0, 0, t1824, t1823, t1825, -t1765, 0, 0, 0, 0, 0, 0, -t1737, -t1751, -t1743, -t1711, 0, 0, 0, 0, 0, 0, -t1702, t1701, -t1922, -t1687, 0, 0, 0, 0, 0, 0, -t1706, -t1922, -t1701, -t1685; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1766, 0, 0, 0, 0, 0, 0, t1738, t1752, t1744, t1712, 0, 0, 0, 0, 0, 0, t1704, t1707, t1921, t1688, 0, 0, 0, 0, 0, 0, t1708, t1921, -t1707, t1686; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1766, 0, 0, 0, 0, 0, 0, t1738, t1752, t1744, t1712, 0, 0, 0, 0, 0, 0, t1704, t1707, t1921, t1688, 0, 0, 0, 0, 0, 0, t1708, t1921, -t1707, t1686; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1853, -qJDD(1), t1815, 0, 0, 0, 0, 0, 0, -t1835, -t1836, t1901, t1812, 0, 0, 0, 0, 0, 0, -t1803, -t1804, -t1786, t1794, 0, 0, 0, 0, 0, 0, -t1905, t1739, -t1895, -t1695, 0, 0, 0, 0, 0, 0, -t1905, -t1895, -t1739, -t1691; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1853, -t1818, 0, 0, 0, 0, 0, 0, -t1824, -t1823, -t1825, t1765, 0, 0, 0, 0, 0, 0, t1737, t1751, t1743, t1711, 0, 0, 0, 0, 0, 0, t1702, -t1701, t1922, t1687, 0, 0, 0, 0, 0, 0, t1706, t1922, t1701, t1685; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1877, -t1874, -t1835, t1797, 0, 0, 0, 0, 0, 0, t1768, t1778, t1770, t1733, 0, 0, 0, 0, 0, 0, t1723, -t1722, t1916, t1694, 0, 0, 0, 0, 0, 0, t1727, t1916, t1722, t1690; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1874, -t1841 * t1853, -t1836, t1796, 0, 0, 0, 0, 0, 0, t1767, t1777, t1769, t1732, 0, 0, 0, 0, 0, 0, t1721, -t1720, t1915, t1693, 0, 0, 0, 0, 0, 0, t1725, t1915, t1720, t1689; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1835, t1836, -t1901, -t1812, 0, 0, 0, 0, 0, 0, t1803, t1804, t1786, -t1794, 0, 0, 0, 0, 0, 0, t1905, -t1739, t1895, t1695, 0, 0, 0, 0, 0, 0, t1905, t1895, t1739, t1691; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1799, t1802, -t1898, t1761, 0, 0, 0, 0, 0, 0, t1904, -t1741, t1894, t1696, 0, 0, 0, 0, 0, 0, t1904, t1894, t1741, t1692; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1801, t1813, -t1871, t1760, 0, 0, 0, 0, 0, 0, -t1753, -t1860, t1772, -t1735, 0, 0, 0, 0, 0, 0, -t1754, t1772, t1860, -t1713; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1803, t1804, t1786, -t1794, 0, 0, 0, 0, 0, 0, t1905, -t1739, t1895, t1695, 0, 0, 0, 0, 0, 0, t1905, t1895, t1739, t1691; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1899, -t1762, t1865, t1715, 0, 0, 0, 0, 0, 0, t1899, t1865, t1762, t1709; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1763, t1900, -t1757, t1714, 0, 0, 0, 0, 0, 0, t1763, -t1757, -t1900, -t1710; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1753, t1860, -t1772, t1735, 0, 0, 0, 0, 0, 0, t1754, -t1772, -t1860, t1713; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1899, t1865, t1762, t1709; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1754, -t1772, -t1860, t1713; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1763, t1757, t1900, t1710;];
f_new_reg  = t1;
