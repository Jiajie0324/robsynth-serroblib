% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RPRPRP5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2,theta4]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 17:51
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RPRPRP5_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP5_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP5_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPRP5_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRP5_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRP5_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 17:50:14
% EndTime: 2019-05-05 17:51:12
% DurationCPUTime: 61.83s
% Computational Cost: add. (269084->907), mult. (666581->1157), div. (0->0), fcn. (510581->10), ass. (0->615)
t1939 = sin(pkin(9));
t1941 = cos(pkin(9));
t1943 = sin(qJ(3));
t1946 = cos(qJ(3));
t1978 = t1939 * t1946 + t1941 * t1943;
t1912 = t1978 * qJD(1);
t1938 = sin(pkin(10));
t1940 = cos(pkin(10));
t1887 = -qJD(3) * t1940 + t1912 * t1938;
t1888 = qJD(3) * t1938 + t1912 * t1940;
t1942 = sin(qJ(5));
t1945 = cos(qJ(5));
t1835 = -t1887 * t1942 + t1888 * t1945;
t1832 = t1835 ^ 2;
t1910 = (t1939 * t1943 - t1941 * t1946) * qJD(1);
t1902 = qJD(5) + t1910;
t2080 = t1902 ^ 2;
t1748 = t2080 + t1832;
t1929 = t1939 * qJDD(1);
t1931 = t1941 * qJDD(1);
t1908 = t1929 * t1943 - t1946 * t1931;
t2031 = t1912 * qJD(3);
t1871 = t1908 + t2031;
t1863 = qJDD(5) + t1871;
t1833 = t1945 * t1887 + t1888 * t1942;
t2046 = t1835 * t1833;
t2101 = t1863 + t2046;
t2053 = t2101 * t1942;
t1630 = t1748 * t1945 + t2053;
t2052 = t2101 * t1945;
t1644 = t1748 * t1942 - t2052;
t1560 = t1630 * t1938 + t1644 * t1940;
t1900 = t1910 * qJD(3);
t1909 = t1978 * qJDD(1);
t1872 = -t1900 + t1909;
t1848 = qJDD(3) * t1938 + t1872 * t1940;
t2000 = qJDD(3) * t1940 - t1938 * t1872;
t1721 = -t1833 * qJD(5) + t1945 * t1848 + t1942 * t2000;
t2047 = t1833 * t1902;
t2103 = t1721 - t2047;
t1514 = t1560 * t1943 - t1946 * t2103;
t1516 = t1560 * t1946 + t1943 * t2103;
t1433 = t1514 * t1939 - t1516 * t1941;
t1546 = t1630 * t1940 - t1644 * t1938;
t1944 = sin(qJ(1));
t1947 = cos(qJ(1));
t2215 = pkin(6) * (t1433 * t1947 + t1944 * t1546);
t2214 = pkin(6) * (t1944 * t1433 - t1546 * t1947);
t1439 = t1514 * t1941 + t1516 * t1939;
t2213 = pkin(1) * t1439;
t2212 = qJ(2) * t1439;
t2211 = -pkin(1) * t1546 + qJ(2) * t1433;
t2002 = t1942 * t1848 - t1945 * t2000;
t1673 = (qJD(5) + t1902) * t1835 + t2002;
t1592 = -t1673 * t1942 + t1945 * t2103;
t2058 = t2103 * t1942;
t1595 = t1673 * t1945 + t2058;
t1493 = t1592 * t1938 + t1595 * t1940;
t2082 = t1833 ^ 2;
t1763 = t2082 - t1832;
t1477 = t1493 * t1943 - t1763 * t1946;
t1479 = t1493 * t1946 + t1763 * t1943;
t1416 = t1477 * t1939 - t1479 * t1941;
t1489 = -t1592 * t1940 + t1595 * t1938;
t2210 = t1944 * t1416 + t1489 * t1947;
t2209 = t1416 * t1947 - t1944 * t1489;
t1803 = t2082 - t2080;
t1660 = t1803 * t1942 + t2052;
t1664 = t1803 * t1945 - t2053;
t1586 = t1660 * t1938 - t1664 * t1940;
t1958 = (-qJD(5) + t1902) * t1835 - t2002;
t1524 = t1586 * t1943 + t1958 * t1946;
t1528 = t1586 * t1946 - t1958 * t1943;
t1451 = t1524 * t1939 - t1528 * t1941;
t1583 = t1660 * t1940 + t1664 * t1938;
t2206 = t1944 * t1451 - t1583 * t1947;
t2205 = t1451 * t1947 + t1944 * t1583;
t2204 = pkin(2) * t1514;
t2203 = pkin(7) * t1514;
t2202 = -pkin(2) * t1546 - pkin(7) * t1516;
t1413 = t1477 * t1941 + t1479 * t1939;
t1446 = t1524 * t1941 + t1528 * t1939;
t2199 = pkin(3) * t1546;
t2198 = qJ(4) * t1546;
t2191 = pkin(3) * t2103 - qJ(4) * t1560;
t1804 = t1832 - t2080;
t2100 = -t2046 + t1863;
t2051 = t2100 * t1942;
t2140 = -t1945 * t1804 + t2051;
t1719 = t1945 * t2100;
t2141 = t1804 * t1942 + t1719;
t2156 = t1938 * t2141 + t1940 * t2140;
t2099 = t2047 + t1721;
t2155 = -t1938 * t2140 + t1940 * t2141;
t2177 = t1943 * t2099 + t1946 * t2155;
t2178 = t1943 * t2155 - t1946 * t2099;
t2188 = -t1939 * t2178 + t1941 * t2177;
t2190 = t1944 * t2188 - t1947 * t2156;
t2189 = t1944 * t2156 + t1947 * t2188;
t2187 = t1939 * t2177 + t1941 * t2178;
t1696 = -t2082 - t1832;
t2093 = t1942 * t2099 + t1945 * t1958;
t2094 = t1942 * t1958 - t1945 * t2099;
t2105 = -t1938 * t2094 + t1940 * t2093;
t2136 = t1696 * t1943 + t1946 * t2105;
t2137 = -t1696 * t1946 + t1943 * t2105;
t2153 = t1939 * t2136 + t1941 * t2137;
t2186 = pkin(1) * t2153;
t2185 = pkin(4) * t1630;
t2184 = pkin(8) * t1630;
t2183 = pkin(8) * t1644;
t2182 = qJ(2) * t2153;
t2104 = t1938 * t2093 + t1940 * t2094;
t2154 = -t1939 * t2137 + t1941 * t2136;
t2179 = -pkin(1) * t2104 + qJ(2) * t2154;
t2176 = pkin(6) * (t1944 * t2154 - t1947 * t2104);
t2175 = pkin(6) * (t1944 * t2104 + t1947 * t2154);
t2098 = -t2080 - t2082;
t2109 = t1945 * t2098 - t2051;
t2112 = t1942 * t2098 + t1719;
t2134 = t1938 * t2109 + t1940 * t2112;
t2174 = pkin(1) * t2134;
t2173 = pkin(2) * t2134;
t2172 = pkin(2) * t2137;
t2171 = pkin(3) * t2134;
t2170 = pkin(7) * t2137;
t2169 = qJ(4) * t2134;
t2135 = -t1938 * t2112 + t1940 * t2109;
t2168 = qJ(4) * t2135;
t2165 = t1943 * t2135;
t2164 = t1944 * t2134;
t2163 = t1946 * t2135;
t2162 = t1947 * t2134;
t2161 = -pkin(2) * t2104 + pkin(7) * t2136;
t1960 = (-t1833 * t1942 - t1835 * t1945) * t1902;
t2038 = t1902 * t1942;
t1798 = t1835 * t2038;
t2037 = t1902 * t1945;
t2013 = t1833 * t2037;
t1981 = t1798 - t2013;
t2090 = t1938 * t1981 + t1940 * t1960;
t2089 = -t1938 * t1960 + t1940 * t1981;
t2107 = t1863 * t1943 + t1946 * t2089;
t2111 = -t1946 * t1863 + t1943 * t2089;
t2133 = -t1939 * t2111 + t1941 * t2107;
t2160 = t1944 * t2133 - t1947 * t2090;
t1720 = qJD(5) * t1835 + t2002;
t1973 = t1720 * t1942 + t2013;
t1982 = -t1945 * t1720 + t1833 * t2038;
t2087 = t1938 * t1973 + t1940 * t1982;
t2015 = t1943 * t2046;
t2088 = -t1938 * t1982 + t1940 * t1973;
t2108 = t1946 * t2088 - t2015;
t2014 = t1946 * t2046;
t2110 = t1943 * t2088 + t2014;
t2131 = -t1939 * t2110 + t1941 * t2108;
t2159 = t1944 * t2131 - t1947 * t2087;
t2158 = t1944 * t2090 + t1947 * t2133;
t2157 = t1944 * t2087 + t1947 * t2131;
t2150 = pkin(3) * t2104;
t2149 = pkin(4) * t2112;
t2148 = pkin(8) * t2109;
t2147 = pkin(8) * t2112;
t2146 = qJ(4) * t2104;
t2139 = -pkin(4) * t1696 + pkin(8) * t2093;
t2138 = -pkin(3) * t1696 + qJ(4) * t2105;
t2132 = t1939 * t2107 + t1941 * t2111;
t2130 = t1939 * t2108 + t1941 * t2110;
t2072 = pkin(4) * t2094;
t2127 = pkin(8) * t2094;
t2126 = qJ(6) * t2103;
t1838 = t1888 * t1887;
t2102 = -t1838 + t1871;
t2125 = t1938 * t2102;
t2124 = t1940 * t2102;
t1877 = t1912 * t1910;
t2097 = -t1877 + qJDD(3);
t2123 = t1943 * t2097;
t2118 = t1946 * t2097;
t1655 = t1721 * t1942 + t1835 * t2037;
t1656 = t1721 * t1945 - t1798;
t1576 = t1655 * t1940 + t1656 * t1938;
t1579 = -t1655 * t1938 + t1656 * t1940;
t1983 = t1946 * t1579 + t2015;
t1984 = t1943 * t1579 - t2014;
t2086 = -t1939 * t1984 + t1941 * t1983;
t2113 = -t1947 * t1576 + t1944 * t2086;
t2106 = t1944 * t1576 + t1947 * t2086;
t1922 = t1944 * g(1) - t1947 * g(2);
t1985 = -qJDD(2) + t1922;
t2017 = pkin(2) * t1941 + pkin(1);
t1934 = t1939 ^ 2;
t1935 = t1941 ^ 2;
t2019 = t1934 + t1935;
t2084 = qJD(1) ^ 2;
t1866 = t2017 * qJDD(1) + (pkin(7) * t2019 + qJ(2)) * t2084 + t1985;
t2070 = t1939 * g(3);
t2078 = 2 * qJD(2);
t1923 = t1947 * g(1) + t1944 * g(2);
t2092 = (pkin(7) + qJ(2)) * qJDD(1) - t1923;
t1853 = -t2070 + t2092 * t1941 + (t1941 * t2078 + (-pkin(1) * t1941 - pkin(2) * t1935) * qJD(1)) * qJD(1);
t2069 = t1941 * g(3);
t1950 = -t2069 + ((qJD(1) * t2017 - (2 * qJD(2))) * qJD(1) - t2092) * t1939;
t1772 = t1946 * t1853 + t1943 * t1950;
t1862 = pkin(3) * t1910 - qJ(4) * t1912;
t2083 = qJD(3) ^ 2;
t1723 = -pkin(3) * t2083 + qJDD(3) * qJ(4) - t1862 * t1910 + t1772;
t1740 = (-t1872 + t1900) * qJ(4) + (t1871 + t2031) * pkin(3) - t1866;
t1615 = 0.2e1 * qJD(4) * t1888 + t1938 * t1723 - t1940 * t1740;
t1616 = -0.2e1 * qJD(4) * t1887 + t1940 * t1723 + t1938 * t1740;
t1532 = t1938 * t1615 + t1940 * t1616;
t1856 = t1910 * t1887;
t1790 = t1848 - t1856;
t1791 = t1848 + t1856;
t2095 = t2084 * t2019;
t2085 = t1939 * t1983 + t1941 * t1984;
t2081 = t1887 ^ 2;
t1884 = t1888 ^ 2;
t2079 = t1910 ^ 2;
t1907 = t1912 ^ 2;
t1771 = t1943 * t1853 - t1946 * t1950;
t1686 = -t1771 * t1946 + t1772 * t1943;
t2076 = pkin(2) * t1686;
t1806 = -t1908 * t1943 - t1909 * t1946;
t2075 = pkin(2) * t1806;
t2074 = pkin(3) * t1943;
t1564 = pkin(4) * t2102 - pkin(8) * t1791 - t1615;
t1846 = pkin(4) * t1910 - pkin(8) * t1888;
t1590 = -pkin(4) * t2081 + pkin(8) * t2000 - t1910 * t1846 + t1616;
t1485 = -t1945 * t1564 + t1590 * t1942;
t1486 = t1942 * t1564 + t1945 * t1590;
t1418 = -t1485 * t1945 + t1486 * t1942;
t2073 = pkin(4) * t1418;
t2071 = pkin(5) * t1945;
t2068 = qJDD(1) * pkin(1);
t2067 = qJ(6) * t1945;
t2066 = qJD(6) * t1902;
t2065 = t1418 * t1938;
t2064 = t1418 * t1940;
t1718 = -qJDD(3) * pkin(3) - t2083 * qJ(4) + t1912 * t1862 + qJDD(4) + t1771;
t1629 = -t2000 * pkin(4) - t2081 * pkin(8) + t1888 * t1846 + t1718;
t2063 = t1629 * t1942;
t2062 = t1629 * t1945;
t2055 = t1686 * t1939;
t2054 = t1686 * t1941;
t1794 = t1838 + t1871;
t2050 = t1794 * t1938;
t2049 = t1794 * t1940;
t2044 = t1866 * t1943;
t2043 = t1866 * t1946;
t1867 = qJDD(3) + t1877;
t2042 = t1867 * t1943;
t2041 = t1867 * t1946;
t2040 = t1871 * t1943;
t2039 = t1902 * t1835;
t2036 = t1910 * t1888;
t2035 = t1910 * t1938;
t2034 = t1910 * t1940;
t2033 = t1910 * t1943;
t2032 = t1910 * t1946;
t2030 = t1912 * t1943;
t2029 = t1912 * t1946;
t2028 = t1934 * t2084;
t1707 = t1938 * t1718;
t1903 = qJ(2) * t2084 + t1985 + t2068;
t2027 = t1939 * t1903;
t2026 = t1939 * t1941;
t1708 = t1940 * t1718;
t2025 = t1941 * t1903;
t2023 = t1944 * t1903;
t1891 = 0.2e1 * t2066;
t1761 = pkin(5) * t1833 - qJ(6) * t1835;
t1980 = -pkin(5) * t2080 + t1863 * qJ(6) - t1833 * t1761 + t1486;
t1458 = t1891 + t1980;
t1460 = -t1863 * pkin(5) - qJ(6) * t2080 + t1761 * t1835 + qJDD(6) + t1485;
t2022 = -pkin(5) * t1460 + qJ(6) * t1458;
t2021 = -pkin(5) * t2099 + qJ(6) * t1958;
t2020 = -pkin(3) * t1718 + qJ(4) * t1532;
t2018 = t1944 * qJDD(1);
t2016 = -pkin(3) * t1946 - pkin(2);
t2012 = t1943 * t1838;
t2011 = t1946 * t1838;
t2010 = t1947 * t1877;
t2009 = t1887 * t2035;
t2008 = t1944 * t1877;
t1825 = -t1884 - t2079;
t1728 = -t1825 * t1938 - t2049;
t2007 = -pkin(3) * t1790 + qJ(4) * t1728 + t1707;
t1817 = -t2079 - t2081;
t1702 = t1817 * t1940 - t2125;
t1788 = t2000 - t2036;
t2006 = pkin(3) * t1788 + qJ(4) * t1702 - t1708;
t2005 = -qJ(6) * t1942 - pkin(4);
t2004 = t1939 * t1931;
t2003 = t1903 + t2068;
t1419 = t1485 * t1942 + t1945 * t1486;
t1687 = t1771 * t1943 + t1946 * t1772;
t1954 = qJDD(1) * qJ(2) + (-pkin(1) * qJD(1) + t2078) * qJD(1) - t1923;
t1878 = t1939 * t1954 + t2069;
t1879 = t1941 * t1954 - t2070;
t1816 = t1878 * t1939 + t1941 * t1879;
t2001 = -t1922 * t1944 - t1947 * t1923;
t1401 = t1458 * t1945 + t1460 * t1942;
t1952 = t1720 * pkin(5) + t1629 - t2126;
t1509 = (pkin(5) * t1902 - 0.2e1 * qJD(6)) * t1835 + t1952;
t1368 = pkin(8) * t1401 + (t2005 - t2071) * t1509;
t1400 = t1458 * t1942 - t1460 * t1945;
t1371 = -t1400 * t1938 + t1401 * t1940;
t1380 = -pkin(8) * t1400 + (pkin(5) * t1942 - t2067) * t1509;
t1999 = -pkin(3) * t1509 + qJ(4) * t1371 + t1940 * t1368 + t1938 * t1380;
t1452 = -pkin(5) * t1696 + t1458;
t1454 = -qJ(6) * t1696 + t1460;
t1388 = t1452 * t1945 + t1454 * t1942 + t2139;
t1392 = -t1452 * t1942 + t1454 * t1945 - t2127;
t1998 = t1940 * t1388 + t1938 * t1392 + t2138;
t1399 = t1419 + t2139;
t1403 = -t1418 - t2127;
t1997 = t1940 * t1399 + t1938 * t1403 + t2138;
t1951 = 0.2e1 * qJD(6) * t1835 - t1952;
t1481 = -pkin(5) * t2039 + t1951 + t2126;
t1424 = -t2183 + t1942 * t1481 + (pkin(4) + t2071) * t2103;
t1436 = -pkin(5) * t2058 + t1481 * t1945 - t2184;
t1996 = t1940 * t1424 + t1938 * t1436 + t2191;
t1674 = t1720 + t2039;
t1483 = (-t1674 - t2039) * pkin(5) + t1951;
t1426 = t1945 * t1483 + t1674 * t2005 + t2148;
t1438 = -t1483 * t1942 - t1674 * t2067 - t2147;
t1995 = -pkin(3) * t1674 + t1940 * t1426 + t1938 * t1438 + t2168;
t1507 = -pkin(4) * t1673 - t2062 + t2148;
t1543 = t2063 - t2147;
t1994 = -pkin(3) * t1673 + t1940 * t1507 + t1938 * t1543 + t2168;
t1512 = -pkin(4) * t2103 + t2063 + t2183;
t1551 = t2062 + t2184;
t1993 = t1940 * t1512 + t1938 * t1551 - t2191;
t1970 = t2000 + t2036;
t1692 = t1791 * t1938 + t1940 * t1970;
t1799 = t1884 + t2081;
t1992 = pkin(3) * t1799 + qJ(4) * t1692 + t1532;
t1500 = t1532 * t1943 - t1718 * t1946;
t1991 = pkin(2) * t1500 + t2020;
t1895 = -t1907 - t2083;
t1820 = t1895 * t1946 - t2042;
t1990 = pkin(2) * t1820 - t1772;
t1989 = pkin(4) * t1400 + t2022;
t1988 = -t1486 - t2185;
t1987 = t2021 + t2072;
t1921 = qJDD(1) * t1947 - t1944 * t2084;
t1986 = -pkin(6) * t1921 - g(3) * t1944;
t1531 = -t1615 * t1940 + t1616 * t1938;
t1815 = t1878 * t1941 - t1879 * t1939;
t1979 = t1922 * t1947 - t1944 * t1923;
t1920 = t1947 * t2084 + t2018;
t1640 = t1702 * t1943 + t1788 * t1946;
t1977 = pkin(2) * t1640 + t2006;
t1646 = t1728 * t1943 - t1790 * t1946;
t1976 = pkin(2) * t1646 + t2007;
t1864 = -t2079 - t2083;
t1800 = t1864 * t1943 + t2118;
t1975 = pkin(2) * t1800 - t1771;
t1974 = -t1485 + t2149;
t1914 = t1941 * t2095;
t1972 = -t1944 * t1914 + t1931 * t1947;
t1971 = t1914 * t1947 + t1941 * t2018;
t1384 = t1419 * t1940 - t2065;
t1406 = -pkin(4) * t1629 + pkin(8) * t1419;
t1969 = -pkin(3) * t1629 - pkin(8) * t2065 + qJ(4) * t1384 + t1940 * t1406;
t1364 = t1371 * t1943 - t1509 * t1946;
t1968 = pkin(2) * t1364 + t1999;
t1967 = t1998 + t2172;
t1966 = t1997 + t2172;
t1965 = t1996 - t2204;
t1515 = -t1674 * t1946 + t2165;
t1964 = pkin(2) * t1515 + t1995;
t1504 = -t1673 * t1946 + t2165;
t1963 = pkin(2) * t1504 + t1994;
t1962 = t1993 + t2204;
t1638 = t1692 * t1943 + t1799 * t1946;
t1961 = pkin(2) * t1638 + t1992;
t1959 = pkin(5) * t1748 + qJ(6) * t2101 + t1980;
t1377 = t1384 * t1943 - t1629 * t1946;
t1957 = pkin(2) * t1377 + t1969;
t1956 = t1959 + t2185;
t1955 = pkin(5) * t2100 + qJ(6) * t2098 - t1460;
t1953 = t1955 + t2149;
t1932 = t1935 * t2084;
t1930 = t1935 * qJDD(1);
t1928 = t1934 * qJDD(1);
t1925 = t2084 * t2026;
t1924 = 0.2e1 * t2004;
t1919 = -t1932 + t2028;
t1918 = t1932 + t2028;
t1917 = t1930 - t1928;
t1916 = t1930 + t1928;
t1913 = t1939 * t2095;
t1904 = -pkin(6) * t1920 + g(3) * t1947;
t1894 = -t1907 + t2083;
t1893 = t2079 - t2083;
t1890 = t1921 * t2026;
t1889 = t1920 * t2026;
t1886 = t1913 * t1947 + t1939 * t2018;
t1885 = t1944 * t1913 - t1929 * t1947;
t1875 = t1907 - t2079;
t1873 = 0.2e1 * t1900 - t1909;
t1870 = t1908 + 0.2e1 * t2031;
t1860 = t1946 * t1871;
t1855 = (t2030 - t2032) * qJD(3);
t1854 = (-t2029 - t2033) * qJD(3);
t1852 = -qJ(2) * t1914 + t1941 * t2003;
t1851 = qJ(2) * t1913 - t1939 * t2003;
t1850 = -t1884 + t2079;
t1849 = -t2079 + t2081;
t1847 = t1888 * t2034;
t1839 = -t2079 - t1907;
t1836 = t1884 - t2081;
t1829 = -qJD(3) * t2030 + t1872 * t1946;
t1828 = qJD(3) * t2029 + t1872 * t1943;
t1827 = qJD(3) * t2032 + t2040;
t1826 = qJD(3) * t2033 - t1860;
t1823 = -t1895 * t1943 - t2041;
t1822 = -t1894 * t1943 + t2118;
t1821 = t1893 * t1946 - t2042;
t1819 = t1894 * t1946 + t2123;
t1818 = t1893 * t1943 + t2041;
t1809 = -t1870 * t1946 + t1873 * t1943;
t1808 = -t1908 * t1946 + t1909 * t1943;
t1807 = -t1870 * t1943 - t1873 * t1946;
t1801 = t1864 * t1946 - t2123;
t1784 = pkin(1) * t1903 + qJ(2) * t1816;
t1783 = (-t1887 * t1940 + t1888 * t1938) * t1910;
t1782 = -t1847 - t2009;
t1781 = -t1854 * t1939 + t1855 * t1941;
t1780 = t1854 * t1941 + t1855 * t1939;
t1779 = t1848 * t1940 - t1888 * t2035;
t1778 = -t1938 * t1848 - t1847;
t1777 = t1887 * t2034 - t1938 * t2000;
t1776 = t1940 * t2000 + t2009;
t1773 = pkin(1) * t1918 + qJ(2) * t1916 + t1816;
t1768 = -pkin(7) * t1820 - t2043;
t1762 = -pkin(7) * t1800 - t2044;
t1760 = -t1828 * t1939 + t1829 * t1941;
t1759 = -t1826 * t1939 + t1827 * t1941;
t1758 = t1828 * t1941 + t1829 * t1939;
t1757 = t1826 * t1941 + t1827 * t1939;
t1756 = -t1820 * t1939 + t1823 * t1941;
t1755 = -t1819 * t1939 + t1822 * t1941;
t1754 = -t1818 * t1939 + t1821 * t1941;
t1753 = t1820 * t1941 + t1823 * t1939;
t1752 = t1819 * t1941 + t1822 * t1939;
t1751 = t1818 * t1941 + t1821 * t1939;
t1750 = t1783 * t1946 + t2040;
t1749 = t1783 * t1943 - t1860;
t1745 = t1849 * t1940 - t2050;
t1744 = -t1850 * t1938 + t2124;
t1743 = t1849 * t1938 + t2049;
t1742 = t1850 * t1940 + t2125;
t1741 = pkin(2) * t1873 + pkin(7) * t1823 - t2044;
t1737 = t1779 * t1946 + t2012;
t1736 = t1777 * t1946 - t2012;
t1735 = t1779 * t1943 - t2011;
t1734 = t1777 * t1943 + t2011;
t1727 = t1825 * t1940 - t2050;
t1726 = -pkin(2) * t1870 + pkin(7) * t1801 + t2043;
t1706 = -t1807 * t1939 + t1809 * t1941;
t1705 = -t1806 * t1939 + t1808 * t1941;
t1704 = t1807 * t1941 + t1809 * t1939;
t1703 = t1806 * t1941 + t1808 * t1939;
t1701 = t1817 * t1938 + t2124;
t1700 = -t1800 * t1939 + t1801 * t1941;
t1699 = t1800 * t1941 + t1801 * t1939;
t1691 = t1788 * t1940 - t1790 * t1938;
t1690 = -t1791 * t1940 + t1938 * t1970;
t1689 = t1788 * t1938 + t1790 * t1940;
t1685 = t1745 * t1946 + t1943 * t1970;
t1684 = t1744 * t1946 + t1791 * t1943;
t1683 = t1745 * t1943 - t1946 * t1970;
t1682 = t1744 * t1943 - t1791 * t1946;
t1665 = pkin(2) * t1866 + pkin(7) * t1687;
t1650 = -pkin(1) * t1703 - t2075;
t1649 = t1691 * t1946 + t1836 * t1943;
t1648 = t1691 * t1943 - t1836 * t1946;
t1647 = t1728 * t1946 + t1790 * t1943;
t1641 = t1702 * t1946 - t1788 * t1943;
t1639 = t1692 * t1946 - t1799 * t1943;
t1637 = -t1749 * t1939 + t1750 * t1941;
t1636 = t1749 * t1941 + t1750 * t1939;
t1635 = -pkin(7) * t1806 - t1686;
t1634 = -pkin(1) * t1753 - t1990;
t1627 = -t1735 * t1939 + t1737 * t1941;
t1626 = -t1734 * t1939 + t1736 * t1941;
t1625 = t1735 * t1941 + t1737 * t1939;
t1624 = t1734 * t1941 + t1736 * t1939;
t1623 = -qJ(4) * t1727 + t1708;
t1618 = -qJ(4) * t1701 + t1707;
t1617 = -pkin(2) * t1839 + pkin(7) * t1808 + t1687;
t1612 = -pkin(1) * t1699 - t1975;
t1607 = -qJ(2) * t1753 - t1741 * t1939 + t1768 * t1941;
t1606 = t1687 * t1941 - t2055;
t1605 = t1687 * t1939 + t2054;
t1604 = pkin(1) * t1873 + qJ(2) * t1756 + t1741 * t1941 + t1768 * t1939;
t1603 = -qJ(2) * t1699 - t1726 * t1939 + t1762 * t1941;
t1602 = -t1683 * t1939 + t1685 * t1941;
t1601 = -t1682 * t1939 + t1684 * t1941;
t1600 = t1683 * t1941 + t1685 * t1939;
t1599 = t1682 * t1941 + t1684 * t1939;
t1588 = -pkin(1) * t1870 + qJ(2) * t1700 + t1726 * t1941 + t1762 * t1939;
t1570 = -t1648 * t1939 + t1649 * t1941;
t1569 = t1648 * t1941 + t1649 * t1939;
t1568 = -pkin(3) * t1727 + t1616;
t1567 = -pkin(3) * t1701 + t1615;
t1566 = -t1646 * t1939 + t1647 * t1941;
t1565 = t1646 * t1941 + t1647 * t1939;
t1555 = -t1640 * t1939 + t1641 * t1941;
t1554 = t1640 * t1941 + t1641 * t1939;
t1553 = -t1638 * t1939 + t1639 * t1941;
t1552 = t1638 * t1941 + t1639 * t1939;
t1533 = -pkin(1) * t1605 - t2076;
t1517 = t1674 * t1943 + t2163;
t1513 = -qJ(2) * t1703 - t1617 * t1939 + t1635 * t1941;
t1510 = -pkin(1) * t1839 + qJ(2) * t1705 + t1617 * t1941 + t1635 * t1939;
t1506 = t1673 * t1943 + t2163;
t1501 = t1532 * t1946 + t1718 * t1943;
t1499 = -pkin(7) * t2054 - qJ(2) * t1605 - t1665 * t1939;
t1498 = -qJ(4) * t1690 - t1531;
t1497 = pkin(1) * t1866 - pkin(7) * t2055 + qJ(2) * t1606 + t1665 * t1941;
t1482 = -pkin(7) * t1646 - t1568 * t1943 + t1623 * t1946;
t1476 = -pkin(7) * t1640 - t1567 * t1943 + t1618 * t1946;
t1471 = -pkin(1) * t1565 - t1976;
t1470 = -pkin(1) * t1554 - t1977;
t1469 = -pkin(2) * t1727 + pkin(7) * t1647 + t1568 * t1946 + t1623 * t1943;
t1456 = -pkin(2) * t1701 + pkin(7) * t1641 + t1567 * t1946 + t1618 * t1943;
t1455 = -pkin(7) * t1638 + t1498 * t1946 + t1690 * t2074;
t1453 = -t2072 - t2150;
t1443 = pkin(7) * t1639 + t1943 * t1498 + t1690 * t2016;
t1442 = -t1515 * t1939 + t1517 * t1941;
t1440 = t1515 * t1941 + t1517 * t1939;
t1434 = -t1504 * t1939 + t1506 * t1941;
t1432 = t1504 * t1941 + t1506 * t1939;
t1430 = -t1500 * t1939 + t1501 * t1941;
t1429 = t1500 * t1941 + t1501 * t1939;
t1428 = -pkin(1) * t1552 - t1961;
t1427 = -t1988 + t2199;
t1422 = -t1512 * t1938 + t1551 * t1940 + t2198;
t1421 = -t1974 - t2171;
t1420 = -t1987 - t2150;
t1417 = -t1507 * t1938 + t1543 * t1940 - t2169;
t1412 = -pkin(7) * t1500 + (-qJ(4) * t1946 + t2074) * t1531;
t1411 = -t1953 - t2171;
t1404 = -t1956 - 0.2e1 * t2066 - t2199;
t1397 = -qJ(2) * t1565 - t1469 * t1939 + t1482 * t1941;
t1396 = -qJ(2) * t1554 - t1456 * t1939 + t1476 * t1941;
t1395 = pkin(7) * t1501 + (-qJ(4) * t1943 + t2016) * t1531;
t1394 = -pkin(1) * t1727 + qJ(2) * t1566 + t1469 * t1941 + t1482 * t1939;
t1393 = -pkin(1) * t1701 + qJ(2) * t1555 + t1456 * t1941 + t1476 * t1939;
t1390 = -qJ(2) * t1552 - t1443 * t1939 + t1455 * t1941;
t1389 = -pkin(1) * t1429 - t1991;
t1386 = -pkin(1) * t1690 + qJ(2) * t1553 + t1443 * t1941 + t1455 * t1939;
t1385 = -t1426 * t1938 + t1438 * t1940 - t2169;
t1383 = t1419 * t1938 + t2064;
t1381 = -t1424 * t1938 + t1436 * t1940 - t2198;
t1378 = t1384 * t1946 + t1629 * t1943;
t1376 = -t1962 - t2213;
t1375 = t1422 * t1946 - t1427 * t1943 - t2203;
t1374 = -pkin(7) * t1504 + t1417 * t1946 - t1421 * t1943;
t1373 = -pkin(1) * t1432 - t1963;
t1372 = t1422 * t1943 + t1427 * t1946 - t2202;
t1370 = t1400 * t1940 + t1401 * t1938;
t1366 = pkin(7) * t1506 + t1417 * t1943 + t1421 * t1946 - t2173;
t1365 = t1371 * t1946 + t1509 * t1943;
t1363 = -pkin(3) * t1383 - t2073;
t1362 = -t1399 * t1938 + t1403 * t1940 - t2146;
t1361 = -pkin(1) * t1440 - t1964;
t1360 = -t1965 + t2213;
t1359 = -qJ(2) * t1429 - t1395 * t1939 + t1412 * t1941;
t1358 = -pkin(7) * t1515 + t1385 * t1946 - t1411 * t1943;
t1357 = t1381 * t1946 - t1404 * t1943 + t2203;
t1356 = pkin(7) * t1517 + t1385 * t1943 + t1411 * t1946 - t2173;
t1355 = -pkin(1) * t1531 + qJ(2) * t1430 + t1395 * t1941 + t1412 * t1939;
t1354 = -t1388 * t1938 + t1392 * t1940 - t2146;
t1353 = t1381 * t1943 + t1404 * t1946 + t2202;
t1352 = -pkin(8) * t2064 - qJ(4) * t1383 - t1406 * t1938;
t1351 = -t1377 * t1939 + t1378 * t1941;
t1350 = t1377 * t1941 + t1378 * t1939;
t1349 = t1362 * t1946 - t1453 * t1943 - t2170;
t1348 = t1362 * t1943 + t1453 * t1946 + t2161;
t1347 = -t1966 - t2186;
t1346 = -pkin(3) * t1370 - t1989;
t1345 = t1354 * t1946 - t1420 * t1943 - t2170;
t1344 = -t1372 * t1939 + t1375 * t1941 - t2212;
t1343 = -t1967 - t2186;
t1342 = t1372 * t1941 + t1375 * t1939 - t2211;
t1341 = -t1364 * t1939 + t1365 * t1941;
t1340 = t1364 * t1941 + t1365 * t1939;
t1339 = t1354 * t1943 + t1420 * t1946 + t2161;
t1338 = -qJ(2) * t1432 - t1366 * t1939 + t1374 * t1941;
t1337 = qJ(2) * t1434 + t1366 * t1941 + t1374 * t1939 - t2174;
t1336 = -qJ(4) * t1370 - t1368 * t1938 + t1380 * t1940;
t1335 = -qJ(2) * t1440 - t1356 * t1939 + t1358 * t1941;
t1334 = qJ(2) * t1442 + t1356 * t1941 + t1358 * t1939 - t2174;
t1333 = -t1353 * t1939 + t1357 * t1941 + t2212;
t1332 = t1353 * t1941 + t1357 * t1939 + t2211;
t1331 = -pkin(7) * t1377 + t1352 * t1946 - t1363 * t1943;
t1330 = -t1348 * t1939 + t1349 * t1941 - t2182;
t1329 = t1348 * t1941 + t1349 * t1939 + t2179;
t1328 = -pkin(1) * t1350 - t1957;
t1327 = -pkin(2) * t1383 + pkin(7) * t1378 + t1352 * t1943 + t1363 * t1946;
t1326 = -t1339 * t1939 + t1345 * t1941 - t2182;
t1325 = t1339 * t1941 + t1345 * t1939 + t2179;
t1324 = -pkin(7) * t1364 + t1336 * t1946 - t1346 * t1943;
t1323 = -pkin(1) * t1340 - t1968;
t1322 = -pkin(2) * t1370 + pkin(7) * t1365 + t1336 * t1943 + t1346 * t1946;
t1321 = -qJ(2) * t1350 - t1327 * t1939 + t1331 * t1941;
t1320 = -pkin(1) * t1383 + qJ(2) * t1351 + t1327 * t1941 + t1331 * t1939;
t1319 = -qJ(2) * t1340 - t1322 * t1939 + t1324 * t1941;
t1318 = -pkin(1) * t1370 + qJ(2) * t1341 + t1322 * t1941 + t1324 * t1939;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1921, 0, -t1920, 0, t1986, -t1904, -t1979, -pkin(6) * t1979, t1890, t1917 * t1947 + t1944 * t1919, t1886, -t1890, t1971, 0, -pkin(6) * t1972 - t1944 * t1878 - t1947 * t2027, -pkin(6) * t1885 - t1944 * t1879 - t1947 * t2025, t1947 * t1815 - pkin(6) * (t1944 * t1916 + t1918 * t1947), -pkin(6) * (t1944 * t1816 + t1903 * t1947) - (pkin(1) * t1944 - qJ(2) * t1947) * t1815, t1760 * t1947 + t2008, t1706 * t1947 + t1944 * t1875, t1755 * t1947 + t1944 * t1909, t1759 * t1947 - t2008, t1754 * t1947 - t1944 * t1908, t1944 * qJDD(3) + t1781 * t1947, t1947 * t1603 - t1944 * t1612 - pkin(6) * (t1944 * t1700 - t1870 * t1947), t1947 * t1607 - t1944 * t1634 - pkin(6) * (t1944 * t1756 + t1873 * t1947), t1947 * t1513 - t1944 * t1650 - pkin(6) * (t1944 * t1705 - t1839 * t1947), t1947 * t1499 - t1944 * t1533 - pkin(6) * (t1944 * t1606 + t1866 * t1947), t1627 * t1947 - t1944 * t1778, t1570 * t1947 + t1944 * t1689, t1601 * t1947 + t1944 * t1742, t1626 * t1947 + t1944 * t1776, t1602 * t1947 + t1944 * t1743, t1637 * t1947 + t1944 * t1782, t1947 * t1396 - t1944 * t1470 - pkin(6) * (t1944 * t1555 - t1701 * t1947), t1947 * t1397 - t1944 * t1471 - pkin(6) * (t1944 * t1566 - t1727 * t1947), t1947 * t1390 - t1944 * t1428 - pkin(6) * (t1944 * t1553 - t1690 * t1947), t1947 * t1359 - t1944 * t1389 - pkin(6) * (t1944 * t1430 - t1531 * t1947), t2106, t2209, t2189, t2157, t2205, t2158, t1947 * t1338 - t1944 * t1373 - pkin(6) * (t1944 * t1434 - t2162), t1947 * t1344 - t1944 * t1376 + t2214, t1947 * t1330 - t1944 * t1347 - t2176, t1947 * t1321 - t1944 * t1328 - pkin(6) * (t1944 * t1351 - t1383 * t1947), t2106, t2189, -t2209, t2158, -t2205, t2157, t1947 * t1335 - t1944 * t1361 - pkin(6) * (t1944 * t1442 - t2162), t1947 * t1326 - t1944 * t1343 - t2176, t1947 * t1333 - t1944 * t1360 - t2214, t1947 * t1319 - t1944 * t1323 - pkin(6) * (t1944 * t1341 - t1370 * t1947); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1920, 0, t1921, 0, t1904, t1986, t2001, pkin(6) * t2001, t1889, t1944 * t1917 - t1919 * t1947, t1885, -t1889, -t1972, 0, -pkin(6) * t1971 + t1947 * t1878 - t1939 * t2023, pkin(6) * t1886 + t1879 * t1947 - t1941 * t2023, t1944 * t1815 + pkin(6) * (t1916 * t1947 - t1944 * t1918), pkin(6) * (t1816 * t1947 - t2023) - (-pkin(1) * t1947 - qJ(2) * t1944) * t1815, t1944 * t1760 - t2010, t1944 * t1706 - t1875 * t1947, t1944 * t1755 - t1909 * t1947, t1944 * t1759 + t2010, t1944 * t1754 + t1908 * t1947, -qJDD(3) * t1947 + t1944 * t1781, t1944 * t1603 + t1947 * t1612 + pkin(6) * (t1700 * t1947 + t1944 * t1870), t1944 * t1607 + t1947 * t1634 + pkin(6) * (t1756 * t1947 - t1944 * t1873), t1944 * t1513 + t1947 * t1650 + pkin(6) * (t1705 * t1947 + t1944 * t1839), t1944 * t1499 + t1947 * t1533 + pkin(6) * (t1606 * t1947 - t1944 * t1866), t1944 * t1627 + t1778 * t1947, t1944 * t1570 - t1689 * t1947, t1944 * t1601 - t1742 * t1947, t1944 * t1626 - t1776 * t1947, t1944 * t1602 - t1743 * t1947, t1944 * t1637 - t1782 * t1947, t1944 * t1396 + t1947 * t1470 + pkin(6) * (t1555 * t1947 + t1944 * t1701), t1944 * t1397 + t1947 * t1471 + pkin(6) * (t1566 * t1947 + t1944 * t1727), t1944 * t1390 + t1947 * t1428 + pkin(6) * (t1553 * t1947 + t1944 * t1690), t1944 * t1359 + t1947 * t1389 + pkin(6) * (t1430 * t1947 + t1944 * t1531), t2113, t2210, t2190, t2159, t2206, t2160, t1944 * t1338 + t1947 * t1373 + pkin(6) * (t1434 * t1947 + t2164), t1944 * t1344 + t1947 * t1376 - t2215, t1944 * t1330 + t1947 * t1347 + t2175, t1944 * t1321 + t1947 * t1328 + pkin(6) * (t1351 * t1947 + t1944 * t1383), t2113, t2190, -t2210, t2160, -t2206, t2159, t1944 * t1335 + t1947 * t1361 + pkin(6) * (t1442 * t1947 + t2164), t1944 * t1326 + t1947 * t1343 + t2175, t1944 * t1333 + t1947 * t1360 + t2215, t1944 * t1319 + t1947 * t1323 + pkin(6) * (t1341 * t1947 + t1944 * t1370); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1922, t1923, 0, 0, t1928, t1924, 0, t1930, 0, 0, t1852, t1851, t1773, t1784, t1758, t1704, t1752, t1757, t1751, t1780, t1588, t1604, t1510, t1497, t1625, t1569, t1599, t1624, t1600, t1636, t1393, t1394, t1386, t1355, t2085, -t1413, t2187, t2130, -t1446, t2132, t1337, t1342, t1329, t1320, t2085, t2187, t1413, t2132, t1446, t2130, t1334, t1325, t1332, t1318; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t2084, 0, 0, -g(3), -t1922, 0, t2004, t1917, t1913, -t2004, t1914, 0, -t2027, -t2025, t1815, qJ(2) * t1815, t1760, t1706, t1755, t1759, t1754, t1781, t1603, t1607, t1513, t1499, t1627, t1570, t1601, t1626, t1602, t1637, t1396, t1397, t1390, t1359, t2086, t1416, t2188, t2131, t1451, t2133, t1338, t1344, t1330, t1321, t2086, t2188, -t1416, t2133, -t1451, t2131, t1335, t1326, t1333, t1319; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2084, 0, qJDD(1), 0, g(3), 0, -t1923, 0, t1925, -t1919, -t1929, -t1925, -t1931, 0, t1878, t1879, 0, pkin(1) * t1815, -t1877, -t1875, -t1909, t1877, t1908, -qJDD(3), t1612, t1634, t1650, t1533, t1778, -t1689, -t1742, -t1776, -t1743, -t1782, t1470, t1471, t1428, t1389, -t1576, t1489, -t2156, -t2087, -t1583, -t2090, t1373, t1376, t1347, t1328, -t1576, -t2156, -t1489, -t2090, t1583, -t2087, t1361, t1343, t1360, t1323; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1922, t1923, 0, 0, t1928, t1924, 0, t1930, 0, 0, t1852, t1851, t1773, t1784, t1758, t1704, t1752, t1757, t1751, t1780, t1588, t1604, t1510, t1497, t1625, t1569, t1599, t1624, t1600, t1636, t1393, t1394, t1386, t1355, t2085, -t1413, t2187, t2130, -t1446, t2132, t1337, t1342, t1329, t1320, t2085, t2187, t1413, t2132, t1446, t2130, t1334, t1325, t1332, t1318; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1929, t1931, t1925, 0, t1932, 0, 0, -t1903, t1878, 0, t1829, t1809, t1822, t1827, t1821, t1855, t1762, t1768, t1635, -pkin(7) * t1686, t1737, t1649, t1684, t1736, t1685, t1750, t1476, t1482, t1455, t1412, t1983, -t1479, t2177, t2108, -t1528, t2107, t1374, t1375, t1349, t1331, t1983, t2177, t1479, t2107, t1528, t2108, t1358, t1345, t1357, t1324; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1929, -t2028, t1931, -t1925, 0, t1903, 0, t1879, 0, t1828, t1807, t1819, t1826, t1818, t1854, t1726, t1741, t1617, t1665, t1735, t1648, t1682, t1734, t1683, t1749, t1456, t1469, t1443, t1395, t1984, -t1477, t2178, t2110, -t1524, t2111, t1366, t1372, t1348, t1327, t1984, t2178, t1477, t2111, t1524, t2110, t1356, t1339, t1353, t1322; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1925, t1919, t1929, t1925, t1931, 0, -t1878, -t1879, 0, 0, t1877, t1875, t1909, -t1877, -t1908, qJDD(3), t1975, t1990, t2075, t2076, -t1778, t1689, t1742, t1776, t1743, t1782, t1977, t1976, t1961, t1991, t1576, -t1489, t2156, t2087, t1583, t2090, t1963, t1962, t1966, t1957, t1576, t2156, t1489, t2090, -t1583, t2087, t1964, t1967, t1965, t1968; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1872, -t1870, t2097, t1900, t1893, -t1900, 0, -t1866, t1771, 0, t1779, t1691, t1744, t1777, t1745, t1783, t1618, t1623, t1498, -qJ(4) * t1531, t1579, -t1493, t2155, t2088, -t1586, t2089, t1417, t1422, t1362, t1352, t1579, t2155, t1493, t2089, t1586, t2088, t1385, t1354, t1381, t1336; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2031, -t1873, t1894, -t1871, t1867, -t2031, t1866, 0, t1772, 0, -t1838, -t1836, -t1791, t1838, -t1970, -t1871, t1567, t1568, -pkin(3) * t1690, -pkin(3) * t1531, -t2046, t1763, -t2099, t2046, -t1958, -t1863, t1421, t1427, t1453, t1363, -t2046, -t2099, -t1763, -t1863, t1958, t2046, t1411, t1420, t1404, t1346; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1877, t1875, t1909, -t1877, -t1908, qJDD(3), -t1771, -t1772, 0, 0, -t1778, t1689, t1742, t1776, t1743, t1782, t2006, t2007, t1992, t2020, t1576, -t1489, t2156, t2087, t1583, t2090, t1994, t1993, t1997, t1969, t1576, t2156, t1489, t2090, -t1583, t2087, t1995, t1998, t1996, t1999; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1848, t1788, t2102, t1856, t1849, -t1856, 0, t1718, t1615, 0, t1656, -t1595, t2141, t1973, t1664, t1981, t1543, t1551, t1403, -pkin(8) * t1418, t1656, t2141, t1595, t1981, -t1664, t1973, t1438, t1392, t1436, t1380; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2036, t1790, t1850, t2000, t1794, -t2036, -t1718, 0, t1616, 0, t1655, t1592, t2140, t1982, t1660, t1960, t1507, t1512, t1399, t1406, t1655, t2140, -t1592, t1960, -t1660, t1982, t1426, t1388, t1424, t1368; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1838, t1836, t1791, -t1838, t1970, t1871, -t1615, -t1616, 0, 0, t2046, -t1763, t2099, -t2046, t1958, t1863, t1974, t1988, t2072, t2073, t2046, t2099, t1763, t1863, -t1958, -t2046, t1953, t1987, t1891 + t1956, t1989; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1721, -t1673, t2100, t2047, t1803, -t2047, 0, t1629, t1485, 0, t1721, t2100, t1673, -t2047, -t1803, t2047, -qJ(6) * t1674, t1454, t1481, -qJ(6) * t1509; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2039, t2103, -t1804, -t1720, t2101, -t2039, -t1629, 0, t1486, 0, t2039, -t1804, -t2103, -t2039, -t2101, -t1720, t1483, t1452, pkin(5) * t2103, -pkin(5) * t1509; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2046, -t1763, t2099, -t2046, t1958, t1863, -t1485, -t1486, 0, 0, t2046, t2099, t1763, t1863, -t1958, -t2046, t1955, t2021, t1891 + t1959, t2022; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1721, t2100, t1673, -t2047, -t1803, t2047, 0, t1460, -t1509, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2046, t2099, t1763, t1863, -t1958, -t2046, -t1460, 0, t1458, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2039, t1804, t2103, t2039, t2101, t1720, t1509, -t1458, 0, 0;];
m_new_reg  = t1;
