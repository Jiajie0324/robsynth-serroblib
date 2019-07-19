% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRPRPR11
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 16:05
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRPRPR11_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR11_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR11_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR11_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR11_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRPR11_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 16:04:59
% EndTime: 2019-05-06 16:05:05
% DurationCPUTime: 6.70s
% Computational Cost: add. (43908->319), mult. (93883->377), div. (0->0), fcn. (61317->10), ass. (0->222)
t2012 = sin(qJ(2));
t2016 = cos(qJ(2));
t2019 = qJD(1) ^ 2;
t2051 = t2016 * t2019;
t2042 = t2012 * t2051;
t1983 = -qJDD(2) + t2042;
t2004 = t2012 ^ 2;
t2018 = qJD(2) ^ 2;
t1988 = -t2004 * t2019 - t2018;
t1954 = t1983 * t2016 - t1988 * t2012;
t2062 = qJD(1) * t2016;
t1998 = qJD(2) * t2062;
t2045 = t2012 * qJDD(1);
t1974 = 0.2e1 * t1998 + t2045;
t2013 = sin(qJ(1));
t2017 = cos(qJ(1));
t2078 = t1954 * t2013 - t1974 * t2017;
t2077 = t1954 * t2017 + t1974 * t2013;
t1982 = qJDD(2) + t2042;
t2005 = t2016 ^ 2;
t2052 = t2005 * t2019;
t1989 = t2018 + t2052;
t1955 = t1982 * t2012 + t1989 * t2016;
t2063 = qJD(1) * t2012;
t1997 = qJD(2) * t2063;
t2044 = t2016 * qJDD(1);
t1977 = -0.2e1 * t1997 + t2044;
t2076 = t1955 * t2013 - t1977 * t2017;
t2075 = t1955 * t2017 + t1977 * t2013;
t1975 = t1998 + t2045;
t1985 = t2013 * g(1) - t2017 * g(2);
t2025 = -qJDD(1) * pkin(1) - t1985;
t2067 = 2 * qJD(3);
t2074 = pkin(2) * t1997 - (t1975 + t1998) * qJ(3) - t2063 * t2067 + t2025;
t2011 = sin(qJ(4));
t2015 = cos(qJ(4));
t1970 = qJD(2) * t2011 + t2015 * t2062;
t1972 = qJD(2) * t2015 - t2011 * t2062;
t2007 = sin(pkin(10));
t2008 = cos(pkin(10));
t1944 = t2008 * t1970 + t1972 * t2007;
t1946 = -t1970 * t2007 + t1972 * t2008;
t2010 = sin(qJ(6));
t2014 = cos(qJ(6));
t1918 = t2014 * t1944 + t1946 * t2010;
t2073 = t1918 ^ 2;
t1920 = -t1944 * t2010 + t1946 * t2014;
t2072 = t1920 ^ 2;
t1943 = t1944 ^ 2;
t2071 = t1946 ^ 2;
t1967 = t1970 ^ 2;
t2070 = t1972 ^ 2;
t1993 = qJD(4) + t2063;
t1987 = qJD(6) + t1993;
t2069 = t1987 ^ 2;
t2068 = t1993 ^ 2;
t2066 = -2 * qJD(5);
t2065 = t2016 * g(3);
t2064 = t2019 * pkin(7);
t2061 = t1918 * t1920;
t2060 = t1944 * t1946;
t2059 = t1944 * t1993;
t2058 = t1946 * t1993;
t2057 = t1970 * t1972;
t2050 = qJD(4) - t1993;
t2049 = qJD(4) + t1993;
t2048 = qJD(6) - t1987;
t2047 = qJD(6) + t1987;
t1976 = -t1997 + t2044;
t1984 = pkin(3) * t2063 - qJD(2) * pkin(8);
t1902 = -t1984 * t2063 + (-pkin(3) * t2005 - pkin(7)) * t2019 + (-pkin(2) - pkin(8)) * t1976 + t2074;
t2026 = -qJDD(2) * pkin(2) - t2018 * qJ(3) + qJDD(3) + t2065;
t1986 = -g(1) * t2017 - g(2) * t2013;
t1963 = -pkin(1) * t2019 + qJDD(1) * pkin(7) + t1986;
t2041 = t2019 * (-pkin(2) * t2016 - qJ(3) * t2012) + t1963;
t1912 = -qJDD(2) * pkin(8) + (t1975 - t1998) * pkin(3) + (-pkin(8) * t2051 + t2041) * t2012 + t2026;
t1877 = t2015 * t1902 + t2011 * t1912;
t2046 = t2004 + t2005;
t2043 = -t2068 - t2070;
t2027 = t2015 * qJDD(2) - t2011 * t1976;
t1941 = -qJD(4) * t1970 + t2027;
t1968 = qJDD(4) + t1975;
t2023 = t1968 - t2057;
t2040 = -t2011 * t1902 + t2015 * t1912;
t1868 = (-t1970 * t1993 - t1941) * qJ(5) + t2023 * pkin(4) + t2040;
t2038 = t2011 * qJDD(2) + t2015 * t1976;
t1940 = -qJD(4) * t1972 - t2038;
t1958 = pkin(4) * t1993 - qJ(5) * t1972;
t1870 = -pkin(4) * t1967 + qJ(5) * t1940 - t1958 * t1993 + t1877;
t1842 = t2007 * t1868 + t2008 * t1870 + t1944 * t2066;
t1913 = t2008 * t1940 - t1941 * t2007;
t1914 = t1940 * t2007 + t1941 * t2008;
t2039 = t2014 * t1913 - t2010 * t1914;
t1895 = -t1914 - t2059;
t1909 = t1968 - t2060;
t1841 = t2008 * t1868 - t2007 * t1870 + t1946 * t2066;
t1833 = pkin(5) * t1909 + pkin(9) * t1895 + t1841;
t1931 = pkin(5) * t1993 - pkin(9) * t1946;
t1834 = -pkin(5) * t1943 + pkin(9) * t1913 - t1931 * t1993 + t1842;
t1821 = t1833 * t2014 - t1834 * t2010;
t1822 = t1833 * t2010 + t1834 * t2014;
t1809 = t1821 * t2014 + t1822 * t2010;
t1810 = -t1821 * t2010 + t1822 * t2014;
t2036 = t1809 * t2008 + t1810 * t2007;
t1861 = -t1920 * t2048 + t2039;
t2028 = -t2010 * t1913 - t2014 * t1914;
t1863 = t1918 * t2048 + t2028;
t1837 = t1861 * t2010 + t1863 * t2014;
t1838 = t1861 * t2014 - t1863 * t2010;
t2035 = t1837 * t2008 + t1838 * t2007;
t2034 = t1841 * t2008 + t1842 * t2007;
t2024 = -qJDD(6) - t1968;
t1883 = -t2024 - t2061;
t1885 = -t2069 - t2073;
t1858 = t1883 * t2014 + t1885 * t2010;
t1859 = -t1883 * t2010 + t1885 * t2014;
t2033 = t1858 * t2008 + t1859 * t2007;
t1884 = t2024 - t2061;
t1903 = -t2069 - t2072;
t1871 = t1884 * t2010 + t1903 * t2014;
t1872 = t1884 * t2014 - t1903 * t2010;
t2032 = t1871 * t2008 + t1872 * t2007;
t1893 = t1913 + t2058;
t2031 = t1893 * t2007 + t1895 * t2008;
t1915 = -t2068 - t1943;
t2030 = t1909 * t2008 + t1915 * t2007;
t1910 = -t1968 - t2060;
t1929 = -t2068 - t2071;
t2029 = t1910 * t2007 + t1929 * t2008;
t1952 = t1982 * t2016 - t1989 * t2012;
t1950 = t1983 * t2012 + t1988 * t2016;
t2022 = t1970 * t2050 - t2027;
t2001 = t2012 * g(3);
t2020 = -t2018 * pkin(2) + qJDD(2) * qJ(3) + t2016 * t2041 - t2001;
t1911 = t1976 * pkin(3) - pkin(8) * t2052 + (t2067 + t1984) * qJD(2) + t2020;
t1878 = -t1940 * pkin(4) - t1967 * qJ(5) + t1972 * t1958 + qJDD(5) + t1911;
t1981 = t2046 * t2019;
t1980 = -qJDD(1) * t2013 - t2017 * t2019;
t1979 = qJDD(1) * t2017 - t2013 * t2019;
t1978 = t2046 * qJDD(1);
t1962 = -t2025 + t2064;
t1960 = t2016 * t1963 - t2001;
t1959 = -t2012 * t1963 - t2065;
t1949 = t1978 * t2017 - t1981 * t2013;
t1948 = t1978 * t2013 + t1981 * t2017;
t1942 = -t2068 - t1967;
t1934 = -t1968 - t2057;
t1933 = -t1967 - t2070;
t1930 = t2041 * t2012 + t2026;
t1928 = qJD(2) * t2067 + t2020;
t1927 = -t1959 * t2012 + t1960 * t2016;
t1926 = t1959 * t2016 + t1960 * t2012;
t1925 = -t1970 * t2049 + t2027;
t1924 = -t1972 * t2050 - t2038;
t1923 = t1972 * t2049 + t2038;
t1921 = t1976 * pkin(2) + t2064 - t2074;
t1917 = t2015 * t1934 - t2011 * t2043;
t1916 = t2011 * t1934 + t2015 * t2043;
t1908 = t2015 * t1942 - t2011 * t2023;
t1907 = t2011 * t1942 + t2015 * t2023;
t1900 = -t1943 - t2071;
t1899 = t1928 * t2016 + t1930 * t2012;
t1898 = t1928 * t2012 - t1930 * t2016;
t1897 = t2015 * t1924 - t2011 * t2022;
t1896 = t2011 * t1924 + t2015 * t2022;
t1894 = t1914 - t2059;
t1892 = -t1913 + t2058;
t1891 = t1916 * t2012 + t1925 * t2016;
t1890 = t1910 * t2008 - t1929 * t2007;
t1889 = -t1916 * t2016 + t1925 * t2012;
t1887 = t1907 * t2012 + t1923 * t2016;
t1886 = -t1907 * t2016 + t1923 * t2012;
t1882 = -t1909 * t2007 + t1915 * t2008;
t1881 = t1896 * t2012 + t1933 * t2016;
t1880 = -t1896 * t2016 + t1933 * t2012;
t1875 = -t2072 - t2073;
t1874 = t1893 * t2008 - t1895 * t2007;
t1867 = t2015 * t1890 - t2011 * t2029;
t1866 = t2011 * t1890 + t2015 * t2029;
t1862 = -t1918 * t2047 - t2028;
t1860 = t1920 * t2047 - t2039;
t1857 = t2015 * t1882 - t2011 * t2030;
t1856 = t2011 * t1882 + t2015 * t2030;
t1855 = -t1913 * pkin(5) - t1943 * pkin(9) + t1946 * t1931 + t1878;
t1854 = t2015 * t1877 - t2011 * t2040;
t1853 = t2011 * t1877 + t2015 * t2040;
t1852 = t1866 * t2012 + t1894 * t2016;
t1851 = -t1866 * t2016 + t1894 * t2012;
t1850 = t1853 * t2012 + t1911 * t2016;
t1849 = -t1853 * t2016 + t1911 * t2012;
t1848 = t1856 * t2012 + t1892 * t2016;
t1847 = -t1856 * t2016 + t1892 * t2012;
t1846 = t2015 * t1874 - t2011 * t2031;
t1845 = t2011 * t1874 + t2015 * t2031;
t1844 = -t1871 * t2007 + t1872 * t2008;
t1840 = t1845 * t2012 + t1900 * t2016;
t1839 = -t1845 * t2016 + t1900 * t2012;
t1836 = -t1858 * t2007 + t1859 * t2008;
t1832 = t2015 * t1844 - t2011 * t2032;
t1831 = t2011 * t1844 + t2015 * t2032;
t1830 = -t1841 * t2007 + t1842 * t2008;
t1828 = -t1837 * t2007 + t1838 * t2008;
t1826 = t2015 * t1836 - t2011 * t2033;
t1825 = t2011 * t1836 + t2015 * t2033;
t1824 = t1831 * t2012 + t1862 * t2016;
t1823 = -t1831 * t2016 + t1862 * t2012;
t1820 = t1825 * t2012 + t1860 * t2016;
t1819 = -t1825 * t2016 + t1860 * t2012;
t1818 = t2015 * t1830 - t2011 * t2034;
t1817 = t2011 * t1830 + t2015 * t2034;
t1816 = t1817 * t2012 + t1878 * t2016;
t1815 = -t1817 * t2016 + t1878 * t2012;
t1814 = t2015 * t1828 - t2011 * t2035;
t1813 = t2011 * t1828 + t2015 * t2035;
t1812 = t1813 * t2012 + t1875 * t2016;
t1811 = -t1813 * t2016 + t1875 * t2012;
t1808 = -t1809 * t2007 + t1810 * t2008;
t1806 = t2015 * t1808 - t2011 * t2036;
t1805 = t2011 * t1808 + t2015 * t2036;
t1804 = t1805 * t2012 + t1855 * t2016;
t1803 = -t1805 * t2016 + t1855 * t2012;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1980, -t1979, 0, -t1985 * t2013 + t1986 * t2017, 0, 0, 0, 0, 0, 0, -t2075, t2077, t1949, t1927 * t2017 - t1962 * t2013, 0, 0, 0, 0, 0, 0, t1949, t2075, -t2077, t1899 * t2017 - t1921 * t2013, 0, 0, 0, 0, 0, 0, t1887 * t2017 + t1908 * t2013, t1891 * t2017 + t1917 * t2013, t1881 * t2017 + t1897 * t2013, t1850 * t2017 + t1854 * t2013, 0, 0, 0, 0, 0, 0, t1848 * t2017 + t1857 * t2013, t1852 * t2017 + t1867 * t2013, t1840 * t2017 + t1846 * t2013, t1816 * t2017 + t1818 * t2013, 0, 0, 0, 0, 0, 0, t1820 * t2017 + t1826 * t2013, t1824 * t2017 + t1832 * t2013, t1812 * t2017 + t1814 * t2013, t1804 * t2017 + t1806 * t2013; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1979, t1980, 0, t1985 * t2017 + t1986 * t2013, 0, 0, 0, 0, 0, 0, -t2076, t2078, t1948, t1927 * t2013 + t1962 * t2017, 0, 0, 0, 0, 0, 0, t1948, t2076, -t2078, t1899 * t2013 + t1921 * t2017, 0, 0, 0, 0, 0, 0, t1887 * t2013 - t1908 * t2017, t1891 * t2013 - t1917 * t2017, t1881 * t2013 - t1897 * t2017, t1850 * t2013 - t1854 * t2017, 0, 0, 0, 0, 0, 0, t1848 * t2013 - t1857 * t2017, t1852 * t2013 - t1867 * t2017, t1840 * t2013 - t1846 * t2017, t1816 * t2013 - t1818 * t2017, 0, 0, 0, 0, 0, 0, t1820 * t2013 - t1826 * t2017, t1824 * t2013 - t1832 * t2017, t1812 * t2013 - t1814 * t2017, t1804 * t2013 - t1806 * t2017; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1952, t1950, 0, t1926, 0, 0, 0, 0, 0, 0, 0, -t1952, -t1950, t1898, 0, 0, 0, 0, 0, 0, t1886, t1889, t1880, t1849, 0, 0, 0, 0, 0, 0, t1847, t1851, t1839, t1815, 0, 0, 0, 0, 0, 0, t1819, t1823, t1811, t1803; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2019, -qJDD(1), 0, t1986, 0, 0, 0, 0, 0, 0, -t1955, t1954, t1978, t1927, 0, 0, 0, 0, 0, 0, t1978, t1955, -t1954, t1899, 0, 0, 0, 0, 0, 0, t1887, t1891, t1881, t1850, 0, 0, 0, 0, 0, 0, t1848, t1852, t1840, t1816, 0, 0, 0, 0, 0, 0, t1820, t1824, t1812, t1804; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2019, 0, t1985, 0, 0, 0, 0, 0, 0, t1977, -t1974, t1981, t1962, 0, 0, 0, 0, 0, 0, t1981, -t1977, t1974, t1921, 0, 0, 0, 0, 0, 0, -t1908, -t1917, -t1897, -t1854, 0, 0, 0, 0, 0, 0, -t1857, -t1867, -t1846, -t1818, 0, 0, 0, 0, 0, 0, -t1826, -t1832, -t1814, -t1806; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1952, t1950, 0, t1926, 0, 0, 0, 0, 0, 0, 0, -t1952, -t1950, t1898, 0, 0, 0, 0, 0, 0, t1886, t1889, t1880, t1849, 0, 0, 0, 0, 0, 0, t1847, t1851, t1839, t1815, 0, 0, 0, 0, 0, 0, t1819, t1823, t1811, t1803; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1989, t1983, t2044, t1960, 0, 0, 0, 0, 0, 0, t2044, t1989, -t1983, t1928, 0, 0, 0, 0, 0, 0, t1923, t1925, t1933, t1911, 0, 0, 0, 0, 0, 0, t1892, t1894, t1900, t1878, 0, 0, 0, 0, 0, 0, t1860, t1862, t1875, t1855; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1982, t1988, -t2045, t1959, 0, 0, 0, 0, 0, 0, -t2045, -t1982, -t1988, -t1930, 0, 0, 0, 0, 0, 0, -t1907, -t1916, -t1896, -t1853, 0, 0, 0, 0, 0, 0, -t1856, -t1866, -t1845, -t1817, 0, 0, 0, 0, 0, 0, -t1825, -t1831, -t1813, -t1805; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1977, t1974, -t1981, -t1962, 0, 0, 0, 0, 0, 0, -t1981, t1977, -t1974, -t1921, 0, 0, 0, 0, 0, 0, t1908, t1917, t1897, t1854, 0, 0, 0, 0, 0, 0, t1857, t1867, t1846, t1818, 0, 0, 0, 0, 0, 0, t1826, t1832, t1814, t1806; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1981, t1977, -t1974, -t1921, 0, 0, 0, 0, 0, 0, t1908, t1917, t1897, t1854, 0, 0, 0, 0, 0, 0, t1857, t1867, t1846, t1818, 0, 0, 0, 0, 0, 0, t1826, t1832, t1814, t1806; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2044, -t1989, t1983, -t1928, 0, 0, 0, 0, 0, 0, -t1923, -t1925, -t1933, -t1911, 0, 0, 0, 0, 0, 0, -t1892, -t1894, -t1900, -t1878, 0, 0, 0, 0, 0, 0, -t1860, -t1862, -t1875, -t1855; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2045, t1982, t1988, t1930, 0, 0, 0, 0, 0, 0, t1907, t1916, t1896, t1853, 0, 0, 0, 0, 0, 0, t1856, t1866, t1845, t1817, 0, 0, 0, 0, 0, 0, t1825, t1831, t1813, t1805; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1942, t1934, t1924, t1877, 0, 0, 0, 0, 0, 0, t1882, t1890, t1874, t1830, 0, 0, 0, 0, 0, 0, t1836, t1844, t1828, t1808; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2023, t2043, t2022, t2040, 0, 0, 0, 0, 0, 0, t2030, t2029, t2031, t2034, 0, 0, 0, 0, 0, 0, t2033, t2032, t2035, t2036; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1923, t1925, t1933, t1911, 0, 0, 0, 0, 0, 0, t1892, t1894, t1900, t1878, 0, 0, 0, 0, 0, 0, t1860, t1862, t1875, t1855; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1915, t1910, t1893, t1842, 0, 0, 0, 0, 0, 0, t1859, t1872, t1838, t1810; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1909, t1929, t1895, t1841, 0, 0, 0, 0, 0, 0, t1858, t1871, t1837, t1809; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1892, t1894, t1900, t1878, 0, 0, 0, 0, 0, 0, t1860, t1862, t1875, t1855; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1885, t1884, t1861, t1822; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1883, t1903, t1863, t1821; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1860, t1862, t1875, t1855;];
f_new_reg  = t1;