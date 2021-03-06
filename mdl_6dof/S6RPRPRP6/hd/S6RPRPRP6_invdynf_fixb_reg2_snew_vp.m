% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPRPRP6
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
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 17:55
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPRPRP6_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP6_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP6_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPRP6_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRP6_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP6_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 17:55:28
% EndTime: 2019-05-05 17:55:33
% DurationCPUTime: 5.42s
% Computational Cost: add. (13706->265), mult. (33582->297), div. (0->0), fcn. (24546->8), ass. (0->171)
t1919 = sin(qJ(3));
t1922 = cos(qJ(3));
t1916 = cos(pkin(9));
t1951 = qJD(1) * t1916;
t1915 = sin(pkin(9));
t1952 = qJD(1) * t1915;
t1890 = t1919 * t1952 - t1922 * t1951;
t1931 = t1915 * t1922 + t1916 * t1919;
t1892 = t1931 * qJD(1);
t1944 = t1892 * t1890;
t1862 = -qJDD(3) - t1944;
t1924 = qJD(3) ^ 2;
t1955 = t1892 ^ 2;
t1876 = t1924 + t1955;
t1839 = t1862 * t1919 - t1876 * t1922;
t1841 = t1862 * t1922 + t1876 * t1919;
t1812 = t1839 * t1915 - t1841 * t1916;
t1920 = sin(qJ(1));
t1923 = cos(qJ(1));
t1946 = t1890 * qJD(3);
t1961 = t1931 * qJDD(1);
t1929 = t1961 - 0.2e1 * t1946;
t1975 = t1812 * t1920 + t1923 * t1929;
t1974 = t1812 * t1923 - t1920 * t1929;
t1887 = t1890 ^ 2;
t1857 = -t1924 - t1887;
t1933 = qJDD(3) - t1944;
t1824 = t1857 * t1919 + t1922 * t1933;
t1827 = -t1857 * t1922 + t1919 * t1933;
t1799 = t1824 * t1915 + t1827 * t1916;
t1973 = t1799 * t1920;
t1972 = t1799 * t1923;
t1811 = t1839 * t1916 + t1841 * t1915;
t1925 = qJD(1) ^ 2;
t1901 = t1920 * g(1) - t1923 * g(2);
t1932 = -qJDD(2) + t1901;
t1911 = t1915 ^ 2;
t1912 = t1916 ^ 2;
t1940 = t1911 + t1912;
t1858 = (t1940 * pkin(7) + qJ(2)) * t1925 + (pkin(2) * t1916 + pkin(1)) * qJDD(1) + t1932;
t1866 = t1961 - t1946;
t1945 = t1892 * qJD(3);
t1971 = pkin(3) * t1945 + (-t1866 + t1946) * qJ(4) - 0.2e1 * qJD(4) * t1892 - t1858;
t1970 = -qJDD(5) - t1866;
t1796 = t1824 * t1916 - t1827 * t1915;
t1969 = t1919 * t1961;
t1962 = -t1887 - t1955;
t1968 = t1920 * t1962;
t1967 = t1922 * t1961;
t1966 = t1923 * t1962;
t1898 = t1940 * t1925;
t1885 = qJD(5) + t1892;
t1963 = qJD(5) + t1885;
t1918 = sin(qJ(5));
t1921 = cos(qJ(5));
t1871 = qJD(3) * t1918 - t1921 * t1890;
t1870 = t1871 ^ 2;
t1873 = qJD(3) * t1921 + t1890 * t1918;
t1957 = t1873 ^ 2;
t1956 = t1885 ^ 2;
t1954 = 0.2e1 * qJD(4);
t1953 = -2 * qJD(6);
t1947 = t1873 * t1871;
t1943 = t1912 * t1925;
t1942 = t1916 * t1925;
t1941 = qJD(5) - t1885;
t1908 = t1916 * qJDD(1);
t1939 = t1915 * qJDD(1);
t1888 = -t1922 * t1908 + t1919 * t1939;
t1864 = t1888 + t1945;
t1874 = pkin(4) * t1892 - qJD(3) * pkin(8);
t1786 = -t1887 * pkin(4) - t1892 * t1874 + (pkin(3) + pkin(8)) * t1864 + t1971;
t1902 = -g(1) * t1923 - g(2) * t1920;
t1894 = -pkin(1) * t1925 + qJDD(1) * qJ(2) + t1902;
t1937 = -t1916 * g(3) - 0.2e1 * qJD(2) * t1952;
t1851 = (pkin(2) * t1942 - pkin(7) * qJDD(1) - t1894) * t1915 + t1937;
t1869 = -g(3) * t1915 + 0.2e1 * qJD(2) * t1951 + t1916 * t1894;
t1852 = -pkin(2) * t1943 + pkin(7) * t1908 + t1869;
t1819 = t1922 * t1851 - t1919 * t1852;
t1855 = pkin(3) * t1890 - qJ(4) * t1892;
t1807 = -qJDD(3) * pkin(3) - t1924 * qJ(4) + t1892 * t1855 + qJDD(4) - t1819;
t1789 = -t1933 * pkin(8) + (t1866 + t1946) * pkin(4) + t1807;
t1773 = t1921 * t1786 + t1918 * t1789;
t1935 = -t1918 * t1786 + t1921 * t1789;
t1934 = t1918 * qJDD(3) - t1921 * t1864;
t1820 = t1919 * t1851 + t1922 * t1852;
t1930 = -t1921 * qJDD(3) - t1918 * t1864;
t1818 = t1941 * t1871 + t1930;
t1928 = -t1924 * pkin(3) + qJDD(3) * qJ(4) - t1890 * t1855 + t1820;
t1822 = -t1947 - t1970;
t1790 = -t1864 * pkin(4) - t1887 * pkin(8) + (t1954 + t1874) * qJD(3) + t1928;
t1903 = t1915 * t1942;
t1900 = -qJDD(1) * t1920 - t1923 * t1925;
t1899 = qJDD(1) * t1923 - t1920 * t1925;
t1897 = t1940 * qJDD(1);
t1896 = t1916 * t1898;
t1895 = t1915 * t1898;
t1886 = qJDD(1) * pkin(1) + t1925 * qJ(2) + t1932;
t1868 = -t1915 * t1894 + t1937;
t1863 = t1888 + 0.2e1 * t1945;
t1850 = pkin(5) * t1885 - qJ(6) * t1873;
t1844 = -t1864 + t1945;
t1843 = t1864 + t1945;
t1842 = -t1956 - t1957;
t1836 = -t1956 - t1870;
t1835 = -t1868 * t1915 + t1869 * t1916;
t1834 = t1868 * t1916 + t1869 * t1915;
t1833 = -qJD(5) * t1873 - t1934;
t1832 = -t1870 - t1957;
t1831 = -t1888 * t1922 + t1969;
t1830 = t1844 * t1922 + t1969;
t1829 = -t1888 * t1919 - t1967;
t1828 = t1844 * t1919 - t1967;
t1823 = -t1947 + t1970;
t1817 = -t1963 * t1871 - t1930;
t1816 = -t1941 * t1873 - t1934;
t1815 = t1963 * t1873 + t1934;
t1809 = t1823 * t1921 - t1918 * t1842;
t1808 = t1823 * t1918 + t1842 * t1921;
t1806 = qJD(3) * t1954 + t1928;
t1805 = -t1829 * t1915 + t1831 * t1916;
t1804 = -t1828 * t1915 + t1830 * t1916;
t1803 = t1829 * t1916 + t1831 * t1915;
t1802 = t1828 * t1916 + t1830 * t1915;
t1801 = -t1918 * t1822 + t1836 * t1921;
t1800 = t1822 * t1921 + t1836 * t1918;
t1795 = -t1864 * pkin(3) - t1971;
t1794 = -t1819 * t1919 + t1820 * t1922;
t1793 = t1819 * t1922 + t1820 * t1919;
t1792 = t1816 * t1921 - t1918 * t1818;
t1791 = t1816 * t1918 + t1818 * t1921;
t1784 = t1808 * t1919 + t1817 * t1922;
t1783 = -t1808 * t1922 + t1817 * t1919;
t1782 = t1800 * t1919 + t1815 * t1922;
t1781 = -t1800 * t1922 + t1815 * t1919;
t1780 = t1791 * t1919 + t1832 * t1922;
t1779 = -t1791 * t1922 + t1832 * t1919;
t1778 = t1806 * t1922 + t1807 * t1919;
t1777 = t1806 * t1919 - t1807 * t1922;
t1776 = -t1793 * t1915 + t1794 * t1916;
t1775 = t1793 * t1916 + t1794 * t1915;
t1774 = -t1833 * pkin(5) - t1870 * qJ(6) + t1873 * t1850 + qJDD(6) + t1790;
t1771 = -t1783 * t1915 + t1784 * t1916;
t1770 = t1783 * t1916 + t1784 * t1915;
t1769 = -t1781 * t1915 + t1782 * t1916;
t1768 = t1781 * t1916 + t1782 * t1915;
t1767 = -t1779 * t1915 + t1780 * t1916;
t1766 = t1779 * t1916 + t1780 * t1915;
t1765 = -t1777 * t1915 + t1778 * t1916;
t1764 = t1777 * t1916 + t1778 * t1915;
t1763 = -pkin(5) * t1870 + qJ(6) * t1833 - t1850 * t1885 + t1871 * t1953 + t1773;
t1762 = t1771 * t1923 + t1809 * t1920;
t1761 = t1771 * t1920 - t1809 * t1923;
t1760 = t1822 * pkin(5) + t1818 * qJ(6) + t1873 * t1953 + t1935;
t1759 = t1769 * t1923 + t1801 * t1920;
t1758 = t1769 * t1920 - t1801 * t1923;
t1756 = t1767 * t1923 + t1792 * t1920;
t1755 = t1767 * t1920 - t1792 * t1923;
t1754 = t1773 * t1921 - t1918 * t1935;
t1753 = t1918 * t1773 + t1921 * t1935;
t1752 = t1753 * t1919 + t1790 * t1922;
t1751 = -t1753 * t1922 + t1790 * t1919;
t1750 = -t1918 * t1760 + t1763 * t1921;
t1749 = t1760 * t1921 + t1763 * t1918;
t1748 = t1749 * t1919 + t1774 * t1922;
t1747 = -t1749 * t1922 + t1774 * t1919;
t1746 = -t1751 * t1915 + t1752 * t1916;
t1745 = t1751 * t1916 + t1752 * t1915;
t1744 = -t1747 * t1915 + t1748 * t1916;
t1743 = t1747 * t1916 + t1748 * t1915;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1900, -t1899, 0, -t1901 * t1920 + t1902 * t1923, 0, 0, 0, 0, 0, 0, -t1896 * t1923 - t1920 * t1908, t1895 * t1923 + t1920 * t1939, t1897 * t1923 - t1898 * t1920, t1835 * t1923 - t1886 * t1920, 0, 0, 0, 0, 0, 0, t1863 * t1920 - t1972, -t1974, t1804 * t1923 + t1968, t1776 * t1923 - t1858 * t1920, 0, 0, 0, 0, 0, 0, t1805 * t1923 + t1968, -t1843 * t1920 + t1972, t1974, t1765 * t1923 - t1795 * t1920, 0, 0, 0, 0, 0, 0, t1759, t1762, t1756, t1746 * t1923 + t1754 * t1920, 0, 0, 0, 0, 0, 0, t1759, t1762, t1756, t1744 * t1923 + t1750 * t1920; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1899, t1900, 0, t1901 * t1923 + t1902 * t1920, 0, 0, 0, 0, 0, 0, -t1896 * t1920 + t1923 * t1908, t1895 * t1920 - t1923 * t1939, t1897 * t1920 + t1898 * t1923, t1835 * t1920 + t1886 * t1923, 0, 0, 0, 0, 0, 0, -t1863 * t1923 - t1973, -t1975, t1804 * t1920 - t1966, t1776 * t1920 + t1858 * t1923, 0, 0, 0, 0, 0, 0, t1805 * t1920 - t1966, t1843 * t1923 + t1973, t1975, t1765 * t1920 + t1795 * t1923, 0, 0, 0, 0, 0, 0, t1758, t1761, t1755, t1746 * t1920 - t1754 * t1923, 0, 0, 0, 0, 0, 0, t1758, t1761, t1755, t1744 * t1920 - t1750 * t1923; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1834, 0, 0, 0, 0, 0, 0, t1796, t1811, t1802, t1775, 0, 0, 0, 0, 0, 0, t1803, -t1796, -t1811, t1764, 0, 0, 0, 0, 0, 0, t1768, t1770, t1766, t1745, 0, 0, 0, 0, 0, 0, t1768, t1770, t1766, t1743; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1925, -qJDD(1), 0, t1902, 0, 0, 0, 0, 0, 0, -t1896, t1895, t1897, t1835, 0, 0, 0, 0, 0, 0, -t1799, -t1812, t1804, t1776, 0, 0, 0, 0, 0, 0, t1805, t1799, t1812, t1765, 0, 0, 0, 0, 0, 0, t1769, t1771, t1767, t1746, 0, 0, 0, 0, 0, 0, t1769, t1771, t1767, t1744; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1925, 0, t1901, 0, 0, 0, 0, 0, 0, t1908, -t1939, t1898, t1886, 0, 0, 0, 0, 0, 0, -t1863, -t1929, -t1962, t1858, 0, 0, 0, 0, 0, 0, -t1962, t1843, t1929, t1795, 0, 0, 0, 0, 0, 0, -t1801, -t1809, -t1792, -t1754, 0, 0, 0, 0, 0, 0, -t1801, -t1809, -t1792, -t1750; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1834, 0, 0, 0, 0, 0, 0, t1796, t1811, t1802, t1775, 0, 0, 0, 0, 0, 0, t1803, -t1796, -t1811, t1764, 0, 0, 0, 0, 0, 0, t1768, t1770, t1766, t1745, 0, 0, 0, 0, 0, 0, t1768, t1770, t1766, t1743; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1943, t1903, t1908, t1869, 0, 0, 0, 0, 0, 0, -t1827, t1841, t1830, t1794, 0, 0, 0, 0, 0, 0, t1831, t1827, -t1841, t1778, 0, 0, 0, 0, 0, 0, t1782, t1784, t1780, t1752, 0, 0, 0, 0, 0, 0, t1782, t1784, t1780, t1748; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1903, -t1911 * t1925, -t1939, t1868, 0, 0, 0, 0, 0, 0, t1824, t1839, t1828, t1793, 0, 0, 0, 0, 0, 0, t1829, -t1824, -t1839, t1777, 0, 0, 0, 0, 0, 0, t1781, t1783, t1779, t1751, 0, 0, 0, 0, 0, 0, t1781, t1783, t1779, t1747; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1908, t1939, -t1898, -t1886, 0, 0, 0, 0, 0, 0, t1863, t1929, t1962, -t1858, 0, 0, 0, 0, 0, 0, t1962, -t1843, -t1929, -t1795, 0, 0, 0, 0, 0, 0, t1801, t1809, t1792, t1754, 0, 0, 0, 0, 0, 0, t1801, t1809, t1792, t1750; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1857, t1862, t1844, t1820, 0, 0, 0, 0, 0, 0, -t1888, -t1857, -t1862, t1806, 0, 0, 0, 0, 0, 0, t1815, t1817, t1832, t1790, 0, 0, 0, 0, 0, 0, t1815, t1817, t1832, t1774; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1933, -t1876, -t1961, t1819, 0, 0, 0, 0, 0, 0, -t1961, -t1933, t1876, -t1807, 0, 0, 0, 0, 0, 0, -t1800, -t1808, -t1791, -t1753, 0, 0, 0, 0, 0, 0, -t1800, -t1808, -t1791, -t1749; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1863, t1929, t1962, -t1858, 0, 0, 0, 0, 0, 0, t1962, -t1843, -t1929, -t1795, 0, 0, 0, 0, 0, 0, t1801, t1809, t1792, t1754, 0, 0, 0, 0, 0, 0, t1801, t1809, t1792, t1750; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1962, -t1843, -t1929, -t1795, 0, 0, 0, 0, 0, 0, t1801, t1809, t1792, t1754, 0, 0, 0, 0, 0, 0, t1801, t1809, t1792, t1750; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1888, t1857, t1862, -t1806, 0, 0, 0, 0, 0, 0, -t1815, -t1817, -t1832, -t1790, 0, 0, 0, 0, 0, 0, -t1815, -t1817, -t1832, -t1774; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1961, t1933, -t1876, t1807, 0, 0, 0, 0, 0, 0, t1800, t1808, t1791, t1753, 0, 0, 0, 0, 0, 0, t1800, t1808, t1791, t1749; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1836, t1823, t1816, t1773, 0, 0, 0, 0, 0, 0, t1836, t1823, t1816, t1763; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1822, t1842, t1818, t1935, 0, 0, 0, 0, 0, 0, t1822, t1842, t1818, t1760; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1815, t1817, t1832, t1790, 0, 0, 0, 0, 0, 0, t1815, t1817, t1832, t1774; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1836, t1823, t1816, t1763; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1822, t1842, t1818, t1760; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1815, t1817, t1832, t1774;];
f_new_reg  = t1;
