% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRPRRP6
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,theta1]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 00:03
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRPRRP6_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRP6_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRP6_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPRRP6_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPRRP6_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRPRRP6_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 00:03:29
% EndTime: 2019-05-05 00:03:35
% DurationCPUTime: 6.39s
% Computational Cost: add. (10073->257), mult. (19127->306), div. (0->0), fcn. (13194->10), ass. (0->177)
t2002 = cos(qJ(4));
t2050 = qJD(2) * t2002;
t2033 = qJD(4) * t2050;
t1999 = sin(qJ(4));
t2036 = t1999 * qJDD(2);
t2011 = qJDD(5) + t2033 + t2036;
t1998 = sin(qJ(5));
t2001 = cos(qJ(5));
t1959 = -qJD(4) * t2001 + t1998 * t2050;
t1961 = qJD(4) * t1998 + t2001 * t2050;
t2045 = t1959 * t1961;
t1922 = t2011 + t2045;
t1958 = t1961 ^ 2;
t2040 = t1999 * qJD(2);
t1981 = qJD(5) + t2040;
t2054 = t1981 ^ 2;
t2059 = -t1958 - t2054;
t1894 = t1922 * t2001 + t1998 * t2059;
t2034 = qJD(4) * t2040;
t2035 = t2002 * qJDD(2);
t1964 = -t2034 + t2035;
t2009 = -qJD(5) * t1959 + qJDD(4) * t1998 + t1964 * t2001;
t2044 = t1959 * t1981;
t2007 = t2009 - t2044;
t1871 = t1894 * t2002 - t1999 * t2007;
t1993 = sin(pkin(6));
t1995 = cos(pkin(6));
t1869 = t1894 * t1999 + t2002 * t2007;
t1892 = t1922 * t1998 - t2001 * t2059;
t2000 = sin(qJ(2));
t2003 = cos(qJ(2));
t2023 = t1869 * t2003 - t1892 * t2000;
t1849 = t1993 * t1871 + t1995 * t2023;
t1856 = t1869 * t2000 + t1892 * t2003;
t1992 = sin(pkin(10));
t1994 = cos(pkin(10));
t2092 = t1849 * t1992 + t1856 * t1994;
t2091 = t1849 * t1994 - t1856 * t1992;
t1847 = -t1995 * t1871 + t1993 * t2023;
t1912 = t2009 + t2044;
t2031 = -t2001 * qJDD(4) + t1998 * t1964;
t2010 = (-qJD(5) + t1981) * t1961 - t2031;
t2057 = -t1912 * t2001 + t1998 * t2010;
t1937 = t1959 ^ 2;
t1921 = t1958 + t1937;
t2056 = t1912 * t1998 + t2001 * t2010;
t2069 = t1921 * t2002 + t1999 * t2056;
t2076 = t2000 * t2069 + t2003 * t2057;
t2070 = -t1921 * t1999 + t2002 * t2056;
t2075 = t2000 * t2057 - t2003 * t2069;
t2081 = -t1993 * t2070 + t1995 * t2075;
t2086 = -t1992 * t2081 + t1994 * t2076;
t2085 = t1992 * t2076 + t1994 * t2081;
t2082 = t1993 * t2075 + t1995 * t2070;
t1923 = t2011 - t2045;
t2058 = -t2054 - t1937;
t2062 = -t1923 * t1998 + t2001 * t2058;
t2074 = t1999 * t2062;
t2063 = t1923 * t2001 + t1998 * t2058;
t2073 = t2000 * t2063;
t2072 = t2002 * t2062;
t2071 = t2003 * t2063;
t1970 = g(1) * t1992 - g(2) * t1994;
t1989 = -g(3) + qJDD(1);
t2064 = t1970 * t1995 + t1989 * t1993;
t2004 = qJD(2) ^ 2;
t1967 = qJDD(2) * t2003 - t2000 * t2004;
t2055 = qJD(4) ^ 2;
t2053 = 2 * qJD(3);
t2052 = pkin(4) * t1999;
t2051 = t2004 * pkin(8);
t1945 = -t1970 * t1993 + t1989 * t1995;
t2041 = t1993 * t1945;
t1971 = -g(1) * t1994 - g(2) * t1992;
t1925 = -t1971 * t2000 + t2003 * t2064;
t1917 = -qJDD(2) * pkin(2) - t2004 * qJ(3) + qJDD(3) - t1925;
t2008 = -qJDD(2) * pkin(8) + t1917;
t1897 = t2002 * t1945 + t1999 * t2008;
t1962 = (-pkin(9) * t2002 + t2052) * qJD(2);
t1888 = -pkin(4) * t2055 + qJDD(4) * pkin(9) - t1962 * t2040 + t1897;
t1926 = t2003 * t1971 + t2000 * t2064;
t2006 = -t2004 * pkin(2) + t1926;
t2005 = -t2051 - t1964 * pkin(9) + (qJ(3) + t2052) * qJDD(2) + (t2053 + (0.2e1 * pkin(4) * t2002 + pkin(9) * t1999) * qJD(4)) * qJD(2) + t2006;
t1862 = t2001 * t1888 + t1998 * t2005;
t1987 = t1999 ^ 2;
t1988 = t2002 ^ 2;
t2038 = t1987 + t1988;
t2032 = t1999 * t2002 * t2004;
t1861 = -t1998 * t1888 + t2001 * t2005;
t1896 = -t1999 * t1945 + t2002 * t2008;
t1933 = pkin(5) * t1959 - qJ(6) * t1961;
t1853 = -pkin(5) * t2054 + qJ(6) * t2011 + 0.2e1 * qJD(6) * t1981 - t1959 * t1933 + t1862;
t1854 = -pkin(5) * t2011 - qJ(6) * t2054 + t1961 * t1933 + qJDD(6) - t1861;
t1832 = t1853 * t2001 + t1854 * t1998;
t1887 = -qJDD(4) * pkin(4) - pkin(9) * t2055 + t1962 * t2050 - t1896;
t2012 = -qJD(5) * t1961 - t2031;
t1855 = -t2012 * pkin(5) + (pkin(5) * t1981 - 0.2e1 * qJD(6)) * t1961 + t1887 - t2007 * qJ(6);
t1829 = t1832 * t1999 - t1855 * t2002;
t1831 = t1853 * t1998 - t1854 * t2001;
t2030 = -t1829 * t2003 + t1831 * t2000;
t1840 = -t1861 * t1998 + t1862 * t2001;
t1833 = t1840 * t1999 - t1887 * t2002;
t1839 = t1861 * t2001 + t1862 * t1998;
t2029 = -t1833 * t2003 + t1839 * t2000;
t1867 = t1896 * t2002 + t1897 * t1999;
t1916 = qJDD(2) * qJ(3) + qJD(2) * t2053 + t2006;
t1915 = t1916 - t2051;
t2026 = -t1867 * t2003 + t1915 * t2000;
t1906 = (qJD(5) + t1981) * t1961 + t2031;
t1870 = -t1906 * t2002 + t2074;
t2024 = -t1870 * t2003 + t2073;
t1907 = t1961 * t1981 - t2012;
t1874 = -t1907 * t2002 + t2074;
t2022 = -t1874 * t2003 + t2073;
t2021 = t1916 * t2000 - t1917 * t2003;
t2020 = t1925 * t2003 + t1926 * t2000;
t1972 = qJDD(4) - t2032;
t1978 = -t1987 * t2004 - t2055;
t1939 = t1972 * t2002 + t1978 * t1999;
t1963 = 0.2e1 * t2033 + t2036;
t2019 = -t1939 * t2003 + t1963 * t2000;
t1973 = -qJDD(4) - t2032;
t1979 = -t1988 * t2004 - t2055;
t1940 = t1973 * t1999 + t1979 * t2002;
t1965 = -0.2e1 * t2034 + t2035;
t2018 = -t1940 * t2003 + t1965 * t2000;
t1968 = qJDD(2) * t2000 + t2003 * t2004;
t1952 = t1968 * t1995;
t2017 = t1952 * t1994 + t1967 * t1992;
t2016 = t1952 * t1992 - t1967 * t1994;
t1953 = t1967 * t1995;
t2015 = -t1953 * t1994 + t1968 * t1992;
t2014 = -t1953 * t1992 - t1968 * t1994;
t1966 = t2038 * qJDD(2);
t1969 = t2038 * t2004;
t2013 = t1966 * t2003 - t1969 * t2000;
t1951 = t1967 * t1993;
t1950 = t1968 * t1993;
t1942 = t1973 * t2002 - t1979 * t1999;
t1941 = -t1972 * t1999 + t1978 * t2002;
t1938 = t1995 * t1945;
t1936 = -t1966 * t2000 - t1969 * t2003;
t1932 = t2013 * t1995;
t1931 = t2013 * t1993;
t1919 = t1940 * t2000 + t1965 * t2003;
t1918 = t1939 * t2000 + t1963 * t2003;
t1901 = -t1993 * t1942 + t1995 * t2018;
t1900 = -t1993 * t1941 + t1995 * t2019;
t1899 = t1995 * t1942 + t1993 * t2018;
t1898 = t1995 * t1941 + t1993 * t2019;
t1891 = -t1925 * t2000 + t1926 * t2003;
t1886 = t1916 * t2003 + t1917 * t2000;
t1884 = t1995 * t2020 - t2041;
t1883 = t1993 * t2020 + t1938;
t1878 = t1995 * t2021 - t2041;
t1877 = t1993 * t2021 + t1938;
t1876 = t1907 * t1999 + t2072;
t1872 = t1906 * t1999 + t2072;
t1868 = -t1896 * t1999 + t1897 * t2002;
t1860 = t1874 * t2000 + t2071;
t1858 = t1867 * t2000 + t1915 * t2003;
t1857 = t1870 * t2000 + t2071;
t1850 = -t1993 * t1876 + t1995 * t2022;
t1848 = t1995 * t1876 + t1993 * t2022;
t1846 = -t1993 * t1872 + t1995 * t2024;
t1844 = t1995 * t1872 + t1993 * t2024;
t1842 = -t1993 * t1868 + t1995 * t2026;
t1841 = t1995 * t1868 + t1993 * t2026;
t1834 = t1840 * t2002 + t1887 * t1999;
t1830 = t1832 * t2002 + t1855 * t1999;
t1828 = t1833 * t2000 + t1839 * t2003;
t1827 = t1829 * t2000 + t1831 * t2003;
t1826 = -t1993 * t1834 + t1995 * t2029;
t1825 = t1995 * t1834 + t1993 * t2029;
t1824 = -t1993 * t1830 + t1995 * t2030;
t1823 = t1995 * t1830 + t1993 * t2030;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1970 * t1992 + t1971 * t1994, 0, 0, 0, 0, 0, 0, t2014, t2016, 0, -t1884 * t1992 + t1891 * t1994, 0, 0, 0, 0, 0, 0, 0, -t2014, -t2016, -t1878 * t1992 + t1886 * t1994, 0, 0, 0, 0, 0, 0, -t1900 * t1992 + t1918 * t1994, -t1901 * t1992 + t1919 * t1994, -t1932 * t1992 + t1936 * t1994, -t1842 * t1992 + t1858 * t1994, 0, 0, 0, 0, 0, 0, -t1846 * t1992 + t1857 * t1994, -t2092, t2086, -t1826 * t1992 + t1828 * t1994, 0, 0, 0, 0, 0, 0, -t1850 * t1992 + t1860 * t1994, t2086, t2092, -t1824 * t1992 + t1827 * t1994; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1970 * t1994 + t1971 * t1992, 0, 0, 0, 0, 0, 0, -t2015, -t2017, 0, t1884 * t1994 + t1891 * t1992, 0, 0, 0, 0, 0, 0, 0, t2015, t2017, t1878 * t1994 + t1886 * t1992, 0, 0, 0, 0, 0, 0, t1900 * t1994 + t1918 * t1992, t1901 * t1994 + t1919 * t1992, t1932 * t1994 + t1936 * t1992, t1842 * t1994 + t1858 * t1992, 0, 0, 0, 0, 0, 0, t1846 * t1994 + t1857 * t1992, t2091, t2085, t1826 * t1994 + t1828 * t1992, 0, 0, 0, 0, 0, 0, t1850 * t1994 + t1860 * t1992, t2085, -t2091, t1824 * t1994 + t1827 * t1992; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1989, 0, 0, 0, 0, 0, 0, t1951, -t1950, 0, t1883, 0, 0, 0, 0, 0, 0, 0, -t1951, t1950, t1877, 0, 0, 0, 0, 0, 0, t1898, t1899, t1931, t1841, 0, 0, 0, 0, 0, 0, t1844, t1847, t2082, t1825, 0, 0, 0, 0, 0, 0, t1848, t2082, -t1847, t1823; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1971, 0, 0, 0, 0, 0, 0, -t1968, -t1967, 0, t1891, 0, 0, 0, 0, 0, 0, 0, t1968, t1967, t1886, 0, 0, 0, 0, 0, 0, t1918, t1919, t1936, t1858, 0, 0, 0, 0, 0, 0, t1857, -t1856, t2076, t1828, 0, 0, 0, 0, 0, 0, t1860, t2076, t1856, t1827; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1970, 0, 0, 0, 0, 0, 0, t1953, -t1952, 0, t1884, 0, 0, 0, 0, 0, 0, 0, -t1953, t1952, t1878, 0, 0, 0, 0, 0, 0, t1900, t1901, t1932, t1842, 0, 0, 0, 0, 0, 0, t1846, t1849, t2081, t1826, 0, 0, 0, 0, 0, 0, t1850, t2081, -t1849, t1824; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1989, 0, 0, 0, 0, 0, 0, t1951, -t1950, 0, t1883, 0, 0, 0, 0, 0, 0, 0, -t1951, t1950, t1877, 0, 0, 0, 0, 0, 0, t1898, t1899, t1931, t1841, 0, 0, 0, 0, 0, 0, t1844, t1847, t2082, t1825, 0, 0, 0, 0, 0, 0, t1848, t2082, -t1847, t1823; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2004, -qJDD(2), 0, t1926, 0, 0, 0, 0, 0, 0, 0, t2004, qJDD(2), t1916, 0, 0, 0, 0, 0, 0, t1963, t1965, -t1969, t1915, 0, 0, 0, 0, 0, 0, t2063, -t1892, t2057, t1839, 0, 0, 0, 0, 0, 0, t2063, t2057, t1892, t1831; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2004, 0, t1925, 0, 0, 0, 0, 0, 0, 0, -qJDD(2), t2004, -t1917, 0, 0, 0, 0, 0, 0, -t1939, -t1940, t1966, -t1867, 0, 0, 0, 0, 0, 0, -t1870, t1869, -t2069, -t1833, 0, 0, 0, 0, 0, 0, -t1874, -t2069, -t1869, -t1829; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1945, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1945, 0, 0, 0, 0, 0, 0, t1941, t1942, 0, t1868, 0, 0, 0, 0, 0, 0, t1872, -t1871, t2070, t1834, 0, 0, 0, 0, 0, 0, t1876, t2070, t1871, t1830; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1945, 0, 0, 0, 0, 0, 0, t1941, t1942, 0, t1868, 0, 0, 0, 0, 0, 0, t1872, -t1871, t2070, t1834, 0, 0, 0, 0, 0, 0, t1876, t2070, t1871, t1830; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2004, -qJDD(2), -t1916, 0, 0, 0, 0, 0, 0, -t1963, -t1965, t1969, -t1915, 0, 0, 0, 0, 0, 0, -t2063, t1892, -t2057, -t1839, 0, 0, 0, 0, 0, 0, -t2063, -t2057, -t1892, -t1831; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2004, t1917, 0, 0, 0, 0, 0, 0, t1939, t1940, -t1966, t1867, 0, 0, 0, 0, 0, 0, t1870, -t1869, t2069, t1833, 0, 0, 0, 0, 0, 0, t1874, t2069, t1869, t1829; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1978, t1973, -t2036, t1897, 0, 0, 0, 0, 0, 0, t2062, -t1894, t2056, t1840, 0, 0, 0, 0, 0, 0, t2062, t2056, t1894, t1832; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1972, t1979, -t2035, t1896, 0, 0, 0, 0, 0, 0, -t1906, -t2007, t1921, -t1887, 0, 0, 0, 0, 0, 0, -t1907, t1921, t2007, -t1855; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1963, t1965, -t1969, t1915, 0, 0, 0, 0, 0, 0, t2063, -t1892, t2057, t1839, 0, 0, 0, 0, 0, 0, t2063, t2057, t1892, t1831; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2058, -t1922, t2010, t1862, 0, 0, 0, 0, 0, 0, t2058, t2010, t1922, t1853; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1923, t2059, -t1912, t1861, 0, 0, 0, 0, 0, 0, t1923, -t1912, -t2059, -t1854; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1906, t2007, -t1921, t1887, 0, 0, 0, 0, 0, 0, t1907, -t1921, -t2007, t1855; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2058, t2010, t1922, t1853; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1907, -t1921, -t2007, t1855; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1923, t1912, t2059, t1854;];
f_new_reg  = t1;
