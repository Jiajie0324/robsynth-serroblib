% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRPRPR2
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d6,theta1,theta3,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 22:25
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRPRPR2_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRPR2_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRPR2_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPRPR2_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPRPR2_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRPRPR2_invdynf_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 22:25:04
% EndTime: 2019-05-04 22:25:10
% DurationCPUTime: 6.54s
% Computational Cost: add. (40648->288), mult. (80706->455), div. (0->0), fcn. (59647->14), ass. (0->249)
t1989 = sin(pkin(10));
t1993 = cos(pkin(10));
t1963 = g(1) * t1989 - g(2) * t1993;
t1984 = -g(3) + qJDD(1);
t1990 = sin(pkin(6));
t1994 = cos(pkin(6));
t2044 = t1963 * t1994 + t1984 * t1990;
t2000 = cos(qJ(4));
t2034 = qJD(2) * t2000;
t1972 = -qJD(6) + t2034;
t2043 = qJD(6) - t1972;
t2024 = qJD(4) * t2034;
t1997 = sin(qJ(4));
t2026 = t1997 * qJDD(2);
t1954 = t2024 + t2026;
t1987 = sin(pkin(12));
t1991 = cos(pkin(12));
t1932 = qJDD(4) * t1987 + t1954 * t1991;
t2035 = qJD(2) * t1997;
t1948 = -t1991 * qJD(4) + t1987 * t2035;
t1936 = t1948 * t2034;
t1906 = -t1932 + t1936;
t1976 = qJD(4) * t2035;
t1980 = t2000 * qJDD(2);
t1955 = t1980 - t1976;
t1950 = qJD(4) * t1987 + t1991 * t2035;
t2032 = t1948 * t1950;
t1909 = -t1955 - t2032;
t2042 = qJD(4) ^ 2;
t1996 = sin(qJ(6));
t1999 = cos(qJ(6));
t1915 = t1999 * t1948 + t1950 * t1996;
t2041 = t1915 ^ 2;
t1917 = -t1948 * t1996 + t1950 * t1999;
t2040 = t1917 ^ 2;
t2039 = t1948 ^ 2;
t2038 = t1950 ^ 2;
t2037 = t1972 ^ 2;
t2036 = -2 * qJD(5);
t2033 = t1915 * t1917;
t1983 = t2000 ^ 2;
t2002 = qJD(2) ^ 2;
t2030 = t1983 * t2002;
t2028 = qJD(6) + t1972;
t1964 = -g(1) * t1993 - g(2) * t1989;
t1998 = sin(qJ(2));
t2001 = cos(qJ(2));
t1910 = t2001 * t1964 + t1998 * t2044;
t1901 = -pkin(2) * t2002 + t1910;
t1988 = sin(pkin(11));
t1992 = cos(pkin(11));
t1907 = -t1964 * t1998 + t2001 * t2044;
t2004 = qJDD(2) * pkin(2) + t1907;
t1878 = t1992 * t1901 + t1988 * t2004;
t1874 = -pkin(3) * t2002 + qJDD(2) * pkin(8) + t1878;
t1934 = -t1963 * t1990 + t1994 * t1984;
t1931 = qJDD(3) + t1934;
t1860 = t2000 * t1874 + t1997 * t1931;
t1982 = t1997 ^ 2;
t2027 = t1982 + t1983;
t2025 = t1950 * t2034;
t1952 = (-pkin(4) * t2000 - qJ(5) * t1997) * qJD(2);
t1847 = -pkin(4) * t2042 + qJDD(4) * qJ(5) + t1952 * t2034 + t1860;
t1877 = -t1988 * t1901 + t1992 * t2004;
t1873 = -qJDD(2) * pkin(3) - t2002 * pkin(8) - t1877;
t1850 = (-t1954 - t2024) * qJ(5) + (-t1955 + t1976) * pkin(4) + t1873;
t1827 = t1991 * t1847 + t1987 * t1850 + t1948 * t2036;
t2023 = -qJDD(6) + t1955;
t2021 = -t1991 * qJDD(4) + t1954 * t1987;
t2022 = -t1996 * t1932 - t1999 * t2021;
t1826 = -t1987 * t1847 + t1991 * t1850 + t1950 * t2036;
t1818 = pkin(5) * t1909 + pkin(9) * t1906 + t1826;
t1933 = -pkin(5) * t2034 - pkin(9) * t1950;
t1821 = -pkin(5) * t2039 - pkin(9) * t2021 + t1933 * t2034 + t1827;
t1793 = t1818 * t1999 - t1821 * t1996;
t1794 = t1818 * t1996 + t1821 * t1999;
t1780 = t1793 * t1999 + t1794 * t1996;
t1781 = -t1793 * t1996 + t1794 * t1999;
t1770 = -t1780 * t1987 + t1781 * t1991;
t1924 = t2000 * t1931;
t1846 = qJDD(5) - t1924 - t2042 * qJ(5) - qJDD(4) * pkin(4) + (qJD(2) * t1952 + t1874) * t1997;
t1836 = pkin(5) * t2021 - pkin(9) * t2039 + t1950 * t1933 + t1846;
t1768 = t1770 * t2000 + t1836 * t1997;
t1769 = t1780 * t1991 + t1781 * t1987;
t1763 = t1768 * t1988 - t1769 * t1992;
t1764 = t1768 * t1992 + t1769 * t1988;
t2020 = t1763 * t2001 + t1764 * t1998;
t1801 = -t1826 * t1987 + t1827 * t1991;
t1792 = t1801 * t2000 + t1846 * t1997;
t1800 = t1826 * t1991 + t1827 * t1987;
t1782 = t1792 * t1988 - t1800 * t1992;
t1783 = t1792 * t1992 + t1800 * t1988;
t2019 = t1782 * t2001 + t1783 * t1998;
t1862 = -t1917 * t2028 + t2022;
t2003 = -t1999 * t1932 + t1996 * t2021;
t1864 = t1915 * t2028 + t2003;
t1832 = t1862 * t1996 + t1864 * t1999;
t1833 = t1862 * t1999 - t1864 * t1996;
t1807 = -t1832 * t1987 + t1833 * t1991;
t1871 = -t2040 - t2041;
t1799 = t1807 * t2000 + t1871 * t1997;
t1806 = t1832 * t1991 + t1833 * t1987;
t1785 = t1799 * t1988 - t1806 * t1992;
t1786 = t1799 * t1992 + t1806 * t1988;
t2018 = t1785 * t2001 + t1786 * t1998;
t1883 = -t2023 - t2033;
t1886 = -t2037 - t2041;
t1843 = t1883 * t1999 + t1886 * t1996;
t1844 = -t1883 * t1996 + t1886 * t1999;
t1825 = -t1843 * t1987 + t1844 * t1991;
t1861 = t1917 * t2043 - t2022;
t1811 = t1825 * t2000 + t1861 * t1997;
t1824 = t1843 * t1991 + t1844 * t1987;
t1789 = t1811 * t1988 - t1824 * t1992;
t1790 = t1811 * t1992 + t1824 * t1988;
t2017 = t1789 * t2001 + t1790 * t1998;
t1882 = t2023 - t2033;
t1892 = -t2037 - t2040;
t1851 = t1882 * t1996 + t1892 * t1999;
t1852 = t1882 * t1999 - t1892 * t1996;
t1829 = -t1851 * t1987 + t1852 * t1991;
t1863 = -t1915 * t2043 - t2003;
t1817 = t1829 * t2000 + t1863 * t1997;
t1828 = t1851 * t1991 + t1852 * t1987;
t1796 = t1817 * t1988 - t1828 * t1992;
t1797 = t1817 * t1992 + t1828 * t1988;
t2016 = t1796 * t2001 + t1797 * t1998;
t1859 = -t1874 * t1997 + t1924;
t1831 = -t1859 * t1997 + t1860 * t2000;
t1822 = t1831 * t1988 - t1873 * t1992;
t1823 = t1831 * t1992 + t1873 * t1988;
t2015 = t1822 * t2001 + t1823 * t1998;
t1904 = -t2021 - t2025;
t1880 = t1904 * t1991 - t1906 * t1987;
t1900 = -t2038 - t2039;
t1854 = t1880 * t2000 + t1900 * t1997;
t1879 = t1904 * t1987 + t1906 * t1991;
t1834 = t1854 * t1988 - t1879 * t1992;
t1835 = t1854 * t1992 + t1879 * t1988;
t2014 = t1834 * t2001 + t1835 * t1998;
t1918 = -t2030 - t2039;
t1885 = -t1909 * t1987 + t1918 * t1991;
t1903 = t2021 - t2025;
t1866 = t1885 * t2000 + t1903 * t1997;
t1884 = t1909 * t1991 + t1918 * t1987;
t1837 = t1866 * t1988 - t1884 * t1992;
t1838 = t1866 * t1992 + t1884 * t1988;
t2013 = t1837 * t2001 + t1838 * t1998;
t1839 = t1877 * t1992 + t1878 * t1988;
t1840 = -t1877 * t1988 + t1878 * t1992;
t2012 = t1839 * t2001 + t1840 * t1998;
t1908 = t1955 - t2032;
t1935 = -t2030 - t2038;
t1890 = t1908 * t1991 - t1935 * t1987;
t1905 = t1932 + t1936;
t1870 = t1890 * t2000 + t1905 * t1997;
t1889 = t1908 * t1987 + t1935 * t1991;
t1841 = t1870 * t1988 - t1889 * t1992;
t1842 = t1870 * t1992 + t1889 * t1988;
t2011 = t1841 * t2001 + t1842 * t1998;
t1971 = t1997 * t2002 * t2000;
t1965 = qJDD(4) + t1971;
t1970 = -t2030 - t2042;
t1928 = -t1965 * t1997 + t1970 * t2000;
t1956 = t1980 - 0.2e1 * t1976;
t1896 = t1928 * t1988 + t1956 * t1992;
t1898 = t1928 * t1992 - t1956 * t1988;
t2010 = t1896 * t2001 + t1898 * t1998;
t1966 = -qJDD(4) + t1971;
t1969 = -t1982 * t2002 - t2042;
t1929 = t1966 * t2000 - t1969 * t1997;
t1953 = 0.2e1 * t2024 + t2026;
t1897 = t1929 * t1988 - t1953 * t1992;
t1899 = t1929 * t1992 + t1953 * t1988;
t2009 = t1897 * t2001 + t1899 * t1998;
t2008 = t1907 * t2001 + t1910 * t1998;
t1959 = t2027 * qJDD(2);
t1962 = t2027 * t2002;
t1921 = t1959 * t1988 + t1962 * t1992;
t1922 = t1959 * t1992 - t1962 * t1988;
t2007 = t1921 * t2001 + t1922 * t1998;
t1957 = qJDD(2) * t1992 - t1988 * t2002;
t1958 = -qJDD(2) * t1988 - t1992 * t2002;
t2006 = t1957 * t2001 + t1958 * t1998;
t1920 = -t1957 * t1998 + t1958 * t2001;
t2005 = qJDD(2) * t2001 - t1998 * t2002;
t1961 = -qJDD(2) * t1998 - t2001 * t2002;
t1942 = t2005 * t1994;
t1941 = t1961 * t1994;
t1940 = t2005 * t1990;
t1939 = t1961 * t1990;
t1927 = t1966 * t1997 + t1969 * t2000;
t1926 = t1965 * t2000 + t1970 * t1997;
t1914 = t2006 * t1994;
t1913 = t1920 * t1994;
t1912 = t2006 * t1990;
t1911 = t1920 * t1990;
t1891 = -t1921 * t1998 + t1922 * t2001;
t1888 = t2007 * t1994;
t1887 = t2007 * t1990;
t1881 = -t1907 * t1998 + t1910 * t2001;
t1876 = -t1897 * t1998 + t1899 * t2001;
t1875 = -t1896 * t1998 + t1898 * t2001;
t1869 = t1890 * t1997 - t1905 * t2000;
t1868 = -t1990 * t1934 + t1994 * t2008;
t1867 = t1994 * t1934 + t1990 * t2008;
t1865 = t1885 * t1997 - t1903 * t2000;
t1858 = -t1990 * t1927 + t1994 * t2009;
t1857 = -t1990 * t1926 + t1994 * t2010;
t1856 = t1994 * t1927 + t1990 * t2009;
t1855 = t1994 * t1926 + t1990 * t2010;
t1853 = t1880 * t1997 - t1900 * t2000;
t1830 = t1859 * t2000 + t1860 * t1997;
t1820 = -t1841 * t1998 + t1842 * t2001;
t1819 = -t1839 * t1998 + t1840 * t2001;
t1816 = t1829 * t1997 - t1863 * t2000;
t1815 = -t1990 * t1931 + t1994 * t2012;
t1814 = t1994 * t1931 + t1990 * t2012;
t1813 = -t1837 * t1998 + t1838 * t2001;
t1812 = -t1834 * t1998 + t1835 * t2001;
t1810 = t1825 * t1997 - t1861 * t2000;
t1809 = -t1990 * t1869 + t1994 * t2011;
t1808 = t1994 * t1869 + t1990 * t2011;
t1805 = -t1990 * t1865 + t1994 * t2013;
t1804 = t1994 * t1865 + t1990 * t2013;
t1803 = -t1990 * t1853 + t1994 * t2014;
t1802 = t1994 * t1853 + t1990 * t2014;
t1798 = t1807 * t1997 - t1871 * t2000;
t1795 = -t1822 * t1998 + t1823 * t2001;
t1791 = t1801 * t1997 - t1846 * t2000;
t1788 = -t1990 * t1830 + t1994 * t2015;
t1787 = t1994 * t1830 + t1990 * t2015;
t1784 = -t1796 * t1998 + t1797 * t2001;
t1779 = -t1789 * t1998 + t1790 * t2001;
t1778 = -t1990 * t1816 + t1994 * t2016;
t1777 = t1994 * t1816 + t1990 * t2016;
t1776 = -t1990 * t1810 + t1994 * t2017;
t1775 = t1994 * t1810 + t1990 * t2017;
t1774 = -t1785 * t1998 + t1786 * t2001;
t1773 = -t1782 * t1998 + t1783 * t2001;
t1772 = -t1990 * t1798 + t1994 * t2018;
t1771 = t1994 * t1798 + t1990 * t2018;
t1767 = t1770 * t1997 - t1836 * t2000;
t1766 = -t1990 * t1791 + t1994 * t2019;
t1765 = t1994 * t1791 + t1990 * t2019;
t1762 = -t1763 * t1998 + t1764 * t2001;
t1761 = -t1990 * t1767 + t1994 * t2020;
t1760 = t1994 * t1767 + t1990 * t2020;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1963 * t1989 + t1964 * t1993, 0, 0, 0, 0, 0, 0, -t1942 * t1989 + t1961 * t1993, -t1941 * t1989 - t1993 * t2005, 0, -t1868 * t1989 + t1881 * t1993, 0, 0, 0, 0, 0, 0, -t1914 * t1989 + t1920 * t1993, -t1913 * t1989 - t1993 * t2006, 0, -t1815 * t1989 + t1819 * t1993, 0, 0, 0, 0, 0, 0, -t1857 * t1989 + t1875 * t1993, -t1858 * t1989 + t1876 * t1993, -t1888 * t1989 + t1891 * t1993, -t1788 * t1989 + t1795 * t1993, 0, 0, 0, 0, 0, 0, -t1805 * t1989 + t1813 * t1993, -t1809 * t1989 + t1820 * t1993, -t1803 * t1989 + t1812 * t1993, -t1766 * t1989 + t1773 * t1993, 0, 0, 0, 0, 0, 0, -t1776 * t1989 + t1779 * t1993, -t1778 * t1989 + t1784 * t1993, -t1772 * t1989 + t1774 * t1993, -t1761 * t1989 + t1762 * t1993; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1963 * t1993 + t1964 * t1989, 0, 0, 0, 0, 0, 0, t1942 * t1993 + t1961 * t1989, t1941 * t1993 - t1989 * t2005, 0, t1868 * t1993 + t1881 * t1989, 0, 0, 0, 0, 0, 0, t1914 * t1993 + t1920 * t1989, t1913 * t1993 - t1989 * t2006, 0, t1815 * t1993 + t1819 * t1989, 0, 0, 0, 0, 0, 0, t1857 * t1993 + t1875 * t1989, t1858 * t1993 + t1876 * t1989, t1888 * t1993 + t1891 * t1989, t1788 * t1993 + t1795 * t1989, 0, 0, 0, 0, 0, 0, t1805 * t1993 + t1813 * t1989, t1809 * t1993 + t1820 * t1989, t1803 * t1993 + t1812 * t1989, t1766 * t1993 + t1773 * t1989, 0, 0, 0, 0, 0, 0, t1776 * t1993 + t1779 * t1989, t1778 * t1993 + t1784 * t1989, t1772 * t1993 + t1774 * t1989, t1761 * t1993 + t1762 * t1989; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1984, 0, 0, 0, 0, 0, 0, t1940, t1939, 0, t1867, 0, 0, 0, 0, 0, 0, t1912, t1911, 0, t1814, 0, 0, 0, 0, 0, 0, t1855, t1856, t1887, t1787, 0, 0, 0, 0, 0, 0, t1804, t1808, t1802, t1765, 0, 0, 0, 0, 0, 0, t1775, t1777, t1771, t1760; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1964, 0, 0, 0, 0, 0, 0, t1961, -t2005, 0, t1881, 0, 0, 0, 0, 0, 0, t1920, -t2006, 0, t1819, 0, 0, 0, 0, 0, 0, t1875, t1876, t1891, t1795, 0, 0, 0, 0, 0, 0, t1813, t1820, t1812, t1773, 0, 0, 0, 0, 0, 0, t1779, t1784, t1774, t1762; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1963, 0, 0, 0, 0, 0, 0, t1942, t1941, 0, t1868, 0, 0, 0, 0, 0, 0, t1914, t1913, 0, t1815, 0, 0, 0, 0, 0, 0, t1857, t1858, t1888, t1788, 0, 0, 0, 0, 0, 0, t1805, t1809, t1803, t1766, 0, 0, 0, 0, 0, 0, t1776, t1778, t1772, t1761; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1984, 0, 0, 0, 0, 0, 0, t1940, t1939, 0, t1867, 0, 0, 0, 0, 0, 0, t1912, t1911, 0, t1814, 0, 0, 0, 0, 0, 0, t1855, t1856, t1887, t1787, 0, 0, 0, 0, 0, 0, t1804, t1808, t1802, t1765, 0, 0, 0, 0, 0, 0, t1775, t1777, t1771, t1760; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2002, -qJDD(2), 0, t1910, 0, 0, 0, 0, 0, 0, t1958, -t1957, 0, t1840, 0, 0, 0, 0, 0, 0, t1898, t1899, t1922, t1823, 0, 0, 0, 0, 0, 0, t1838, t1842, t1835, t1783, 0, 0, 0, 0, 0, 0, t1790, t1797, t1786, t1764; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2002, 0, t1907, 0, 0, 0, 0, 0, 0, t1957, t1958, 0, t1839, 0, 0, 0, 0, 0, 0, t1896, t1897, t1921, t1822, 0, 0, 0, 0, 0, 0, t1837, t1841, t1834, t1782, 0, 0, 0, 0, 0, 0, t1789, t1796, t1785, t1763; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1934, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1931, 0, 0, 0, 0, 0, 0, t1926, t1927, 0, t1830, 0, 0, 0, 0, 0, 0, t1865, t1869, t1853, t1791, 0, 0, 0, 0, 0, 0, t1810, t1816, t1798, t1767; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2002, -qJDD(2), 0, t1878, 0, 0, 0, 0, 0, 0, t1928, t1929, t1959, t1831, 0, 0, 0, 0, 0, 0, t1866, t1870, t1854, t1792, 0, 0, 0, 0, 0, 0, t1811, t1817, t1799, t1768; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2002, 0, t1877, 0, 0, 0, 0, 0, 0, t1956, -t1953, t1962, -t1873, 0, 0, 0, 0, 0, 0, -t1884, -t1889, -t1879, -t1800, 0, 0, 0, 0, 0, 0, -t1824, -t1828, -t1806, -t1769; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1931, 0, 0, 0, 0, 0, 0, t1926, t1927, 0, t1830, 0, 0, 0, 0, 0, 0, t1865, t1869, t1853, t1791, 0, 0, 0, 0, 0, 0, t1810, t1816, t1798, t1767; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1970, t1966, t1980, t1860, 0, 0, 0, 0, 0, 0, t1885, t1890, t1880, t1801, 0, 0, 0, 0, 0, 0, t1825, t1829, t1807, t1770; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1965, t1969, -t2026, t1859, 0, 0, 0, 0, 0, 0, -t1903, -t1905, -t1900, -t1846, 0, 0, 0, 0, 0, 0, -t1861, -t1863, -t1871, -t1836; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1956, t1953, -t1962, t1873, 0, 0, 0, 0, 0, 0, t1884, t1889, t1879, t1800, 0, 0, 0, 0, 0, 0, t1824, t1828, t1806, t1769; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1918, t1908, t1904, t1827, 0, 0, 0, 0, 0, 0, t1844, t1852, t1833, t1781; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1909, t1935, t1906, t1826, 0, 0, 0, 0, 0, 0, t1843, t1851, t1832, t1780; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1903, t1905, t1900, t1846, 0, 0, 0, 0, 0, 0, t1861, t1863, t1871, t1836; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1886, t1882, t1862, t1794; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1883, t1892, t1864, t1793; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1861, t1863, t1871, t1836;];
f_new_reg  = t1;
