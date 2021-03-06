% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPPRPR1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta2,theta3,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 13:57
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPPRPR1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR1_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR1_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRPR1_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRPR1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPPRPR1_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 13:56:46
% EndTime: 2019-05-05 13:56:52
% DurationCPUTime: 6.05s
% Computational Cost: add. (39484->295), mult. (92497->424), div. (0->0), fcn. (67840->12), ass. (0->235)
t1994 = qJD(1) ^ 2;
t1983 = sin(pkin(10));
t1975 = t1983 ^ 2;
t1986 = cos(pkin(10));
t1976 = t1986 ^ 2;
t2013 = t1975 + t1976;
t1958 = t2013 * t1994;
t1989 = sin(qJ(4));
t1992 = cos(qJ(4));
t1947 = (t1983 * t1989 - t1986 * t1992) * qJD(1);
t1945 = qJD(6) + t1947;
t2035 = qJD(6) + t1945;
t2003 = t1983 * t1992 + t1986 * t1989;
t2034 = t2003 * qJDD(1);
t2033 = qJD(4) ^ 2;
t1949 = t2003 * qJD(1);
t1982 = sin(pkin(11));
t1985 = cos(pkin(11));
t1938 = -t1985 * qJD(4) + t1982 * t1949;
t1940 = t1982 * qJD(4) + t1985 * t1949;
t1988 = sin(qJ(6));
t1991 = cos(qJ(6));
t1903 = t1991 * t1938 + t1988 * t1940;
t2032 = t1903 ^ 2;
t1905 = -t1988 * t1938 + t1991 * t1940;
t2031 = t1905 ^ 2;
t2030 = t1938 ^ 2;
t2029 = t1940 ^ 2;
t2028 = t1945 ^ 2;
t1925 = t1947 ^ 2;
t2027 = t1949 ^ 2;
t2026 = -2 * qJD(5);
t2025 = qJD(3) * qJD(1);
t2024 = t1905 * t1903;
t2023 = t1940 * t1938;
t2022 = t1947 * qJD(4);
t2021 = t1947 * t1938;
t2020 = t1947 * t1940;
t2019 = t1947 * t1949;
t1944 = t1949 * qJD(4);
t2018 = t1975 * t1994;
t2017 = t1976 * t1994;
t1979 = -g(3) + qJDD(2);
t2016 = t1986 * t1979;
t1990 = sin(qJ(1));
t1993 = cos(qJ(1));
t1962 = -t1993 * g(1) - t1990 * g(2);
t1954 = -t1994 * pkin(1) + t1962;
t1987 = cos(pkin(9));
t2015 = t1987 * t1954;
t2014 = qJD(6) - t1945;
t1984 = sin(pkin(9));
t1961 = t1990 * g(1) - t1993 * g(2);
t2002 = qJDD(1) * pkin(1) + t1961;
t1927 = t1984 * t2002 + t2015;
t1998 = -t1994 * pkin(2) + qJDD(1) * qJ(3) + t1927;
t1907 = t1983 * t1979 + (t1998 + 0.2e1 * t2025) * t1986;
t1972 = t1986 * qJDD(1);
t1898 = -pkin(3) * t2017 + pkin(7) * t1972 + t1907;
t2009 = -0.2e1 * t2025;
t1997 = t2016 + (-t2015 - t1984 * t1961 + t2009 + (t1986 * pkin(3) + pkin(2)) * t1994 + (-t1984 * pkin(1) - pkin(7) - qJ(3)) * qJDD(1)) * t1983;
t1873 = t1992 * t1898 + t1989 * t1997;
t2012 = t1983 * qJDD(1);
t2011 = t1984 * qJDD(1);
t2010 = t1987 * qJDD(1);
t1917 = pkin(4) * t1947 - qJ(5) * t1949;
t1849 = -pkin(4) * t2033 + qJDD(4) * qJ(5) - t1917 * t1947 + t1873;
t1926 = -t1984 * t1954 + t1987 * t2002;
t1916 = -qJDD(1) * pkin(2) - t1994 * qJ(3) + qJDD(3) - t1926;
t1902 = -pkin(3) * t1972 + t1916 + (-t2017 - t2018) * pkin(7);
t2005 = -t1992 * t1972 + t1989 * t2012;
t1922 = t1944 + t2005;
t1924 = t2034 - t2022;
t1859 = (-t1924 + t2022) * qJ(5) + (t1922 + t1944) * pkin(4) + t1902;
t1827 = t1985 * t1849 + t1982 * t1859 + t1938 * t2026;
t1872 = -t1989 * t1898 + t1992 * t1997;
t1913 = t1982 * qJDD(4) + t1985 * t1924;
t2007 = -t1985 * qJDD(4) + t1982 * t1924;
t2008 = -t1988 * t1913 - t1991 * t2007;
t1883 = -t1913 - t2021;
t1884 = t1922 - t2023;
t1956 = -t1987 * t1994 - t2011;
t1957 = -t1984 * t1994 + t2010;
t2006 = t1993 * t1956 - t1990 * t1957;
t1826 = -t1982 * t1849 + t1985 * t1859 + t1940 * t2026;
t2004 = t1990 * t1956 + t1993 * t1957;
t2000 = -qJDD(6) - t1922;
t1999 = -t1991 * t1913 + t1988 * t2007;
t1848 = -qJDD(4) * pkin(4) - qJ(5) * t2033 + t1949 * t1917 + qJDD(5) - t1872;
t1963 = t1986 * t1994 * t1983;
t1960 = -t1990 * qJDD(1) - t1993 * t1994;
t1959 = t1993 * qJDD(1) - t1990 * t1994;
t1955 = t2013 * qJDD(1);
t1953 = t1986 * t1958;
t1952 = t1983 * t1958;
t1941 = -t2027 - t2033;
t1937 = -t1987 * t1953 - t1972 * t1984;
t1936 = t1987 * t1952 + t1983 * t2011;
t1935 = -t1984 * t1953 + t1986 * t2010;
t1934 = t1984 * t1952 - t1983 * t2010;
t1929 = t1987 * t1955 - t1984 * t1958;
t1928 = t1984 * t1955 + t1987 * t1958;
t1923 = t2034 - 0.2e1 * t2022;
t1921 = 0.2e1 * t1944 + t2005;
t1920 = -qJDD(4) - t2019;
t1919 = qJDD(4) - t2019;
t1918 = -t1925 - t2033;
t1912 = pkin(5) * t1947 - pkin(8) * t1940;
t1909 = -t2027 - t1925;
t1908 = -t1922 + t1944;
t1906 = t2016 + (-t1998 + t2009) * t1983;
t1901 = -t1925 - t2029;
t1900 = t1992 * t1920 - t1989 * t1941;
t1899 = t1989 * t1920 + t1992 * t1941;
t1897 = -t1925 - t2030;
t1895 = -t1984 * t1926 + t1987 * t1927;
t1894 = t1987 * t1926 + t1984 * t1927;
t1890 = t1992 * t1908 + t1989 * t2034;
t1889 = t1989 * t1908 - t1992 * t2034;
t1888 = t1992 * t1918 - t1989 * t1919;
t1887 = t1989 * t1918 + t1992 * t1919;
t1886 = -t2029 - t2030;
t1885 = -t1922 - t2023;
t1882 = t1913 - t2021;
t1881 = -t2007 + t2020;
t1880 = t2007 + t2020;
t1879 = -t2028 - t2031;
t1878 = -t1983 * t1906 + t1986 * t1907;
t1877 = t1986 * t1906 + t1983 * t1907;
t1876 = -t1983 * t1899 + t1986 * t1900;
t1875 = t1986 * t1899 + t1983 * t1900;
t1874 = -t2028 - t2032;
t1871 = t2000 - t2024;
t1870 = -t2000 - t2024;
t1869 = t1985 * t1885 - t1982 * t1901;
t1868 = t1982 * t1885 + t1985 * t1901;
t1867 = -t1983 * t1889 + t1986 * t1890;
t1866 = t1986 * t1889 + t1983 * t1890;
t1865 = -t1982 * t1884 + t1985 * t1897;
t1864 = t1985 * t1884 + t1982 * t1897;
t1863 = -t1983 * t1887 + t1986 * t1888;
t1862 = t1986 * t1887 + t1983 * t1888;
t1861 = t1987 * t1878 + t1984 * t1916;
t1860 = t1984 * t1878 - t1987 * t1916;
t1856 = t1987 * t1876 + t1984 * t1923;
t1855 = t1984 * t1876 - t1987 * t1923;
t1854 = -t2031 - t2032;
t1853 = t1985 * t1881 - t1982 * t1883;
t1852 = t1982 * t1881 + t1985 * t1883;
t1851 = t1987 * t1863 + t1984 * t1921;
t1850 = t1984 * t1863 - t1987 * t1921;
t1846 = t1987 * t1867 + t1984 * t1909;
t1845 = t1984 * t1867 - t1987 * t1909;
t1844 = t1903 * t2014 + t1999;
t1843 = -t1903 * t2035 - t1999;
t1842 = -t1905 * t2014 + t2008;
t1841 = t1905 * t2035 - t2008;
t1840 = t1992 * t1869 + t1989 * t1882;
t1839 = t1989 * t1869 - t1992 * t1882;
t1838 = t1991 * t1871 - t1988 * t1879;
t1837 = t1988 * t1871 + t1991 * t1879;
t1836 = t1992 * t1865 + t1989 * t1880;
t1835 = t1989 * t1865 - t1992 * t1880;
t1834 = t1992 * t1853 + t1989 * t1886;
t1833 = t1989 * t1853 - t1992 * t1886;
t1832 = -t1988 * t1870 + t1991 * t1874;
t1831 = t1991 * t1870 + t1988 * t1874;
t1830 = -t1989 * t1872 + t1992 * t1873;
t1829 = t1992 * t1872 + t1989 * t1873;
t1828 = pkin(5) * t2007 - pkin(8) * t2030 + t1940 * t1912 + t1848;
t1825 = t1991 * t1842 - t1988 * t1844;
t1824 = t1988 * t1842 + t1991 * t1844;
t1823 = -t1983 * t1839 + t1986 * t1840;
t1822 = t1986 * t1839 + t1983 * t1840;
t1821 = -t1982 * t1837 + t1985 * t1838;
t1820 = t1985 * t1837 + t1982 * t1838;
t1819 = -t1983 * t1835 + t1986 * t1836;
t1818 = t1986 * t1835 + t1983 * t1836;
t1817 = -t1983 * t1833 + t1986 * t1834;
t1816 = t1986 * t1833 + t1983 * t1834;
t1815 = -pkin(5) * t2030 - pkin(8) * t2007 - t1947 * t1912 + t1827;
t1814 = pkin(5) * t1884 + pkin(8) * t1883 + t1826;
t1813 = -t1982 * t1831 + t1985 * t1832;
t1812 = t1985 * t1831 + t1982 * t1832;
t1811 = -t1983 * t1829 + t1986 * t1830;
t1810 = t1986 * t1829 + t1983 * t1830;
t1809 = t1987 * t1823 + t1984 * t1868;
t1808 = t1984 * t1823 - t1987 * t1868;
t1807 = t1987 * t1811 + t1984 * t1902;
t1806 = t1984 * t1811 - t1987 * t1902;
t1805 = t1987 * t1819 + t1984 * t1864;
t1804 = t1984 * t1819 - t1987 * t1864;
t1803 = t1987 * t1817 + t1984 * t1852;
t1802 = t1984 * t1817 - t1987 * t1852;
t1801 = t1992 * t1821 + t1989 * t1843;
t1800 = t1989 * t1821 - t1992 * t1843;
t1799 = -t1982 * t1826 + t1985 * t1827;
t1798 = t1985 * t1826 + t1982 * t1827;
t1797 = t1992 * t1813 + t1989 * t1841;
t1796 = t1989 * t1813 - t1992 * t1841;
t1795 = -t1982 * t1824 + t1985 * t1825;
t1794 = t1985 * t1824 + t1982 * t1825;
t1793 = t1992 * t1799 + t1989 * t1848;
t1792 = t1989 * t1799 - t1992 * t1848;
t1791 = t1992 * t1795 + t1989 * t1854;
t1790 = t1989 * t1795 - t1992 * t1854;
t1789 = t1988 * t1814 + t1991 * t1815;
t1788 = t1991 * t1814 - t1988 * t1815;
t1787 = -t1983 * t1800 + t1986 * t1801;
t1786 = t1986 * t1800 + t1983 * t1801;
t1785 = -t1983 * t1796 + t1986 * t1797;
t1784 = t1986 * t1796 + t1983 * t1797;
t1783 = t1987 * t1787 + t1984 * t1820;
t1782 = t1984 * t1787 - t1987 * t1820;
t1781 = -t1983 * t1792 + t1986 * t1793;
t1780 = t1986 * t1792 + t1983 * t1793;
t1779 = -t1983 * t1790 + t1986 * t1791;
t1778 = t1986 * t1790 + t1983 * t1791;
t1777 = -t1988 * t1788 + t1991 * t1789;
t1776 = t1991 * t1788 + t1988 * t1789;
t1775 = t1987 * t1785 + t1984 * t1812;
t1774 = t1984 * t1785 - t1987 * t1812;
t1773 = t1987 * t1781 + t1984 * t1798;
t1772 = t1984 * t1781 - t1987 * t1798;
t1771 = t1987 * t1779 + t1984 * t1794;
t1770 = t1984 * t1779 - t1987 * t1794;
t1769 = -t1982 * t1776 + t1985 * t1777;
t1768 = t1985 * t1776 + t1982 * t1777;
t1767 = t1992 * t1769 + t1989 * t1828;
t1766 = t1989 * t1769 - t1992 * t1828;
t1765 = -t1983 * t1766 + t1986 * t1767;
t1764 = t1986 * t1766 + t1983 * t1767;
t1763 = t1987 * t1765 + t1984 * t1768;
t1762 = t1984 * t1765 - t1987 * t1768;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1960, -t1959, 0, -t1990 * t1961 + t1993 * t1962, 0, 0, 0, 0, 0, 0, t2006, -t2004, 0, -t1990 * t1894 + t1993 * t1895, 0, 0, 0, 0, 0, 0, -t1990 * t1935 + t1993 * t1937, -t1990 * t1934 + t1993 * t1936, -t1990 * t1928 + t1993 * t1929, -t1990 * t1860 + t1993 * t1861, 0, 0, 0, 0, 0, 0, -t1990 * t1850 + t1993 * t1851, -t1990 * t1855 + t1993 * t1856, -t1990 * t1845 + t1993 * t1846, -t1990 * t1806 + t1993 * t1807, 0, 0, 0, 0, 0, 0, -t1990 * t1804 + t1993 * t1805, -t1990 * t1808 + t1993 * t1809, -t1990 * t1802 + t1993 * t1803, -t1990 * t1772 + t1993 * t1773, 0, 0, 0, 0, 0, 0, -t1990 * t1774 + t1993 * t1775, -t1990 * t1782 + t1993 * t1783, -t1990 * t1770 + t1993 * t1771, -t1990 * t1762 + t1993 * t1763; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1959, t1960, 0, t1993 * t1961 + t1990 * t1962, 0, 0, 0, 0, 0, 0, t2004, t2006, 0, t1993 * t1894 + t1990 * t1895, 0, 0, 0, 0, 0, 0, t1993 * t1935 + t1990 * t1937, t1993 * t1934 + t1990 * t1936, t1993 * t1928 + t1990 * t1929, t1993 * t1860 + t1990 * t1861, 0, 0, 0, 0, 0, 0, t1993 * t1850 + t1990 * t1851, t1993 * t1855 + t1990 * t1856, t1993 * t1845 + t1990 * t1846, t1993 * t1806 + t1990 * t1807, 0, 0, 0, 0, 0, 0, t1993 * t1804 + t1990 * t1805, t1993 * t1808 + t1990 * t1809, t1993 * t1802 + t1990 * t1803, t1993 * t1772 + t1990 * t1773, 0, 0, 0, 0, 0, 0, t1993 * t1774 + t1990 * t1775, t1993 * t1782 + t1990 * t1783, t1993 * t1770 + t1990 * t1771, t1993 * t1762 + t1990 * t1763; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1979, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1877, 0, 0, 0, 0, 0, 0, t1862, t1875, t1866, t1810, 0, 0, 0, 0, 0, 0, t1818, t1822, t1816, t1780, 0, 0, 0, 0, 0, 0, t1784, t1786, t1778, t1764; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1994, -qJDD(1), 0, t1962, 0, 0, 0, 0, 0, 0, t1956, -t1957, 0, t1895, 0, 0, 0, 0, 0, 0, t1937, t1936, t1929, t1861, 0, 0, 0, 0, 0, 0, t1851, t1856, t1846, t1807, 0, 0, 0, 0, 0, 0, t1805, t1809, t1803, t1773, 0, 0, 0, 0, 0, 0, t1775, t1783, t1771, t1763; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1994, 0, t1961, 0, 0, 0, 0, 0, 0, t1957, t1956, 0, t1894, 0, 0, 0, 0, 0, 0, t1935, t1934, t1928, t1860, 0, 0, 0, 0, 0, 0, t1850, t1855, t1845, t1806, 0, 0, 0, 0, 0, 0, t1804, t1808, t1802, t1772, 0, 0, 0, 0, 0, 0, t1774, t1782, t1770, t1762; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1979, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1877, 0, 0, 0, 0, 0, 0, t1862, t1875, t1866, t1810, 0, 0, 0, 0, 0, 0, t1818, t1822, t1816, t1780, 0, 0, 0, 0, 0, 0, t1784, t1786, t1778, t1764; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1994, -qJDD(1), 0, t1927, 0, 0, 0, 0, 0, 0, -t1953, t1952, t1955, t1878, 0, 0, 0, 0, 0, 0, t1863, t1876, t1867, t1811, 0, 0, 0, 0, 0, 0, t1819, t1823, t1817, t1781, 0, 0, 0, 0, 0, 0, t1785, t1787, t1779, t1765; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1994, 0, t1926, 0, 0, 0, 0, 0, 0, t1972, -t2012, t1958, -t1916, 0, 0, 0, 0, 0, 0, -t1921, -t1923, -t1909, -t1902, 0, 0, 0, 0, 0, 0, -t1864, -t1868, -t1852, -t1798, 0, 0, 0, 0, 0, 0, -t1812, -t1820, -t1794, -t1768; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1979, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1877, 0, 0, 0, 0, 0, 0, t1862, t1875, t1866, t1810, 0, 0, 0, 0, 0, 0, t1818, t1822, t1816, t1780, 0, 0, 0, 0, 0, 0, t1784, t1786, t1778, t1764; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2017, t1963, t1972, t1907, 0, 0, 0, 0, 0, 0, t1888, t1900, t1890, t1830, 0, 0, 0, 0, 0, 0, t1836, t1840, t1834, t1793, 0, 0, 0, 0, 0, 0, t1797, t1801, t1791, t1767; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1963, -t2018, -t2012, t1906, 0, 0, 0, 0, 0, 0, t1887, t1899, t1889, t1829, 0, 0, 0, 0, 0, 0, t1835, t1839, t1833, t1792, 0, 0, 0, 0, 0, 0, t1796, t1800, t1790, t1766; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1972, t2012, -t1958, t1916, 0, 0, 0, 0, 0, 0, t1921, t1923, t1909, t1902, 0, 0, 0, 0, 0, 0, t1864, t1868, t1852, t1798, 0, 0, 0, 0, 0, 0, t1812, t1820, t1794, t1768; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1918, t1920, t1908, t1873, 0, 0, 0, 0, 0, 0, t1865, t1869, t1853, t1799, 0, 0, 0, 0, 0, 0, t1813, t1821, t1795, t1769; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1919, t1941, -t2034, t1872, 0, 0, 0, 0, 0, 0, -t1880, -t1882, -t1886, -t1848, 0, 0, 0, 0, 0, 0, -t1841, -t1843, -t1854, -t1828; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1921, t1923, t1909, t1902, 0, 0, 0, 0, 0, 0, t1864, t1868, t1852, t1798, 0, 0, 0, 0, 0, 0, t1812, t1820, t1794, t1768; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1897, t1885, t1881, t1827, 0, 0, 0, 0, 0, 0, t1832, t1838, t1825, t1777; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1884, t1901, t1883, t1826, 0, 0, 0, 0, 0, 0, t1831, t1837, t1824, t1776; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1880, t1882, t1886, t1848, 0, 0, 0, 0, 0, 0, t1841, t1843, t1854, t1828; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1874, t1871, t1842, t1789; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1870, t1879, t1844, t1788; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1841, t1843, t1854, t1828;];
f_new_reg  = t1;
