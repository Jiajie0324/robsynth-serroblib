% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RRRPRP5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,theta4]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 07:58
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RRRPRP5_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP5_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP5_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRP5_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRP5_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP5_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 07:57:10
% EndTime: 2019-05-07 07:58:18
% DurationCPUTime: 72.46s
% Computational Cost: add. (413596->964), mult. (871450->1192), div. (0->0), fcn. (640667->10), ass. (0->639)
t2015 = sin(qJ(3));
t2019 = cos(qJ(3));
t2016 = sin(qJ(2));
t2152 = qJD(1) * t2016;
t1972 = -t2019 * qJD(2) + t2015 * t2152;
t1973 = qJD(2) * t2015 + t2019 * t2152;
t2011 = sin(pkin(10));
t2012 = cos(pkin(10));
t1930 = -t1972 * t2011 + t1973 * t2012;
t2014 = sin(qJ(5));
t2018 = cos(qJ(5));
t2081 = t1972 * t2012 + t2011 * t1973;
t1873 = t2018 * t1930 - t2014 * t2081;
t1870 = t1873 ^ 2;
t2020 = cos(qJ(2));
t2151 = qJD(1) * t2020;
t2001 = -qJD(3) + t2151;
t1993 = -qJD(5) + t2001;
t2163 = t1993 ^ 2;
t1791 = t2163 + t1870;
t2004 = qJD(2) * t2152;
t2098 = t2020 * qJDD(1);
t1977 = -t2004 + t2098;
t1969 = -qJDD(3) + t1977;
t1965 = -qJDD(5) + t1969;
t1871 = t1930 * t2014 + t2018 * t2081;
t2126 = t1873 * t1871;
t2178 = -t2126 + t1965;
t2135 = t2178 * t2014;
t1732 = -t1791 * t2018 + t2135;
t2134 = t2178 * t2018;
t1734 = t1791 * t2014 + t2134;
t1623 = t1732 * t2011 - t1734 * t2012;
t1650 = t1732 * t2012 + t1734 * t2011;
t1566 = t1623 * t2019 + t1650 * t2015;
t2092 = qJD(2) * t2151;
t2099 = t2016 * qJDD(1);
t2053 = t2092 + t2099;
t2029 = -t2015 * qJDD(2) - t2019 * t2053;
t1926 = -t1972 * qJD(3) - t2029;
t2028 = t2019 * qJDD(2) - t2015 * t2053;
t2025 = t1973 * qJD(3) - t2028;
t1861 = t2012 * t1926 - t2011 * t2025;
t2082 = t1926 * t2011 + t2012 * t2025;
t1756 = -t1871 * qJD(5) + t2018 * t1861 - t2014 * t2082;
t2127 = t1871 * t1993;
t2057 = t1756 + t2127;
t1525 = t1566 * t2020 - t2016 * t2057;
t1564 = t1623 * t2015 - t1650 * t2019;
t2017 = sin(qJ(1));
t2021 = cos(qJ(1));
t2301 = pkin(6) * (t1525 * t2021 + t1564 * t2017);
t2300 = pkin(6) * (t1525 * t2017 - t1564 * t2021);
t1523 = t1566 * t2016 + t2020 * t2057;
t2299 = pkin(1) * t1523;
t2298 = pkin(7) * t1523;
t2297 = -pkin(1) * t1564 + pkin(7) * t1525;
t2083 = t2014 * t1861 + t2018 * t2082;
t1710 = (qJD(5) - t1993) * t1873 + t2083;
t1629 = -t1710 * t2014 + t2018 * t2057;
t2139 = t2014 * t2057;
t1633 = -t1710 * t2018 - t2139;
t1569 = t1629 * t2012 + t1633 * t2011;
t1573 = -t1629 * t2011 + t1633 * t2012;
t1500 = t1569 * t2015 - t1573 * t2019;
t2165 = t1871 ^ 2;
t2181 = t1870 - t2165;
t1492 = t1500 * t2020 - t2016 * t2181;
t1497 = t1569 * t2019 + t1573 * t2015;
t2294 = t1492 * t2017 + t1497 * t2021;
t2293 = t1492 * t2021 - t1497 * t2017;
t1847 = t2165 - t2163;
t1743 = t1847 * t2014 - t2134;
t1747 = t1847 * t2018 + t2135;
t1658 = t1743 * t2012 + t1747 * t2011;
t1661 = t1743 * t2011 - t1747 * t2012;
t1593 = t1658 * t2015 + t1661 * t2019;
t2046 = (-qJD(5) - t1993) * t1873 - t2083;
t1553 = t1593 * t2020 - t2046 * t2016;
t1590 = t1658 * t2019 - t1661 * t2015;
t2292 = t1553 * t2017 + t1590 * t2021;
t2291 = t1553 * t2021 - t1590 * t2017;
t2289 = pkin(2) * t1564;
t2288 = pkin(8) * t1564;
t2285 = pkin(2) * t2057 + pkin(8) * t1566;
t1490 = t1500 * t2016 + t2020 * t2181;
t1549 = t1593 * t2016 + t2046 * t2020;
t2280 = pkin(3) * t1650;
t2279 = qJ(4) * t1650;
t2278 = pkin(3) * t2057 + qJ(4) * t1623;
t1848 = t1870 - t2163;
t2179 = -t2126 - t1965;
t2133 = t2179 * t2014;
t2214 = -t2018 * t1848 + t2133;
t1777 = t2018 * t2179;
t2215 = t1848 * t2014 + t1777;
t2236 = -t2011 * t2214 + t2012 * t2215;
t2237 = t2011 * t2215 + t2012 * t2214;
t2255 = t2015 * t2236 + t2019 * t2237;
t1716 = -t1756 + t2127;
t2256 = -t2015 * t2237 + t2019 * t2236;
t2270 = -t1716 * t2016 + t2020 * t2256;
t2277 = t2017 * t2270 - t2021 * t2255;
t2276 = t2017 * t2255 + t2021 * t2270;
t1694 = pkin(4) * t1732;
t2275 = pkin(9) * t1732;
t2274 = pkin(9) * t1734;
t2271 = t1716 * t2020 + t2016 * t2256;
t2177 = -t2163 - t2165;
t2190 = t2018 * t2177 - t2133;
t2191 = t2014 * t2177 + t1777;
t2205 = t2011 * t2190 + t2012 * t2191;
t2206 = -t2011 * t2191 + t2012 * t2190;
t2235 = t2015 * t2206 + t2019 * t2205;
t2269 = pkin(1) * t2235;
t1760 = -t2165 - t1870;
t2172 = -t1716 * t2014 + t2018 * t2046;
t2173 = t2018 * t1716 + t2014 * t2046;
t2188 = t2011 * t2172 + t2012 * t2173;
t2189 = -t2011 * t2173 + t2012 * t2172;
t2203 = -t2015 * t2188 + t2019 * t2189;
t2243 = -t1760 * t2020 + t2016 * t2203;
t2268 = pkin(1) * t2243;
t2267 = pkin(2) * t2235;
t2266 = pkin(7) * t2243;
t2234 = -t2015 * t2205 + t2019 * t2206;
t2265 = pkin(8) * t2234;
t2264 = pkin(8) * t2235;
t2263 = t2016 * t2234;
t2262 = t2017 * t2235;
t2261 = t2020 * t2234;
t2260 = t2021 * t2235;
t2204 = t2015 * t2189 + t2019 * t2188;
t2240 = t1760 * t2016 + t2020 * t2203;
t2259 = -pkin(1) * t2204 + pkin(7) * t2240;
t2258 = pkin(6) * (t2017 * t2240 - t2021 * t2204);
t2257 = pkin(6) * (t2017 * t2204 + t2021 * t2240);
t2253 = pkin(2) * t2204;
t2252 = pkin(3) * t2205;
t2251 = pkin(8) * t2204;
t2250 = qJ(4) * t2205;
t2249 = qJ(4) * t2206;
t2244 = -pkin(2) * t1760 + pkin(8) * t2203;
t2052 = (t1871 * t2014 + t1873 * t2018) * t1993;
t2111 = t1993 * t2014;
t1845 = t1873 * t2111;
t2110 = t1993 * t2018;
t2095 = t1871 * t2110;
t2067 = -t1845 + t2095;
t2169 = -t2011 * t2052 + t2012 * t2067;
t2170 = t2011 * t2067 + t2012 * t2052;
t2184 = t2015 * t2169 + t2019 * t2170;
t2185 = -t2015 * t2170 + t2019 * t2169;
t2208 = -t1965 * t2016 + t2020 * t2185;
t2242 = t2017 * t2208 - t2021 * t2184;
t1755 = qJD(5) * t1873 + t2083;
t2054 = t1755 * t2014 - t2095;
t2068 = -t2018 * t1755 - t1871 * t2111;
t2167 = t2011 * t2054 + t2012 * t2068;
t2168 = -t2011 * t2068 + t2012 * t2054;
t2187 = t2015 * t2168 + t2019 * t2167;
t2097 = t2016 * t2126;
t2186 = -t2015 * t2167 + t2019 * t2168;
t2209 = t2020 * t2186 - t2097;
t2241 = t2017 * t2209 - t2021 * t2187;
t2239 = t2017 * t2184 + t2021 * t2208;
t2238 = t2017 * t2187 + t2021 * t2209;
t2232 = pkin(3) * t2188;
t2231 = pkin(4) * t2191;
t2230 = pkin(9) * t2190;
t2229 = pkin(9) * t2191;
t2228 = qJ(4) * t2188;
t2227 = qJ(6) * t2057;
t1880 = t1930 * t2081;
t2192 = -t1969 - t1880;
t2222 = t2011 * t2192;
t2221 = t2012 * t2192;
t1991 = g(1) * t2021 + g(2) * t2017;
t2022 = qJD(1) ^ 2;
t1964 = -pkin(1) * t2022 + qJDD(1) * pkin(7) - t1991;
t2160 = pkin(2) * t2020;
t2073 = -pkin(8) * t2016 - t2160;
t1975 = t2073 * qJD(1);
t2155 = t2020 * g(3);
t2166 = qJD(2) ^ 2;
t1907 = (qJD(1) * t1975 + t1964) * t2016 - qJDD(2) * pkin(2) - pkin(8) * t2166 + t2155;
t1946 = -pkin(3) * t2001 - qJ(4) * t1973;
t2164 = t1972 ^ 2;
t1806 = t2025 * pkin(3) - t2164 * qJ(4) + t1973 * t1946 + qJDD(4) + t1907;
t1911 = -pkin(4) * t2001 - pkin(9) * t1930;
t2079 = t2081 ^ 2;
t1706 = t2082 * pkin(4) - t2079 * pkin(9) + t1930 * t1911 + t1806;
t2216 = t1755 * pkin(5) + t1706 - t2227;
t2162 = t2001 ^ 2;
t1865 = -t2162 - t2079;
t1782 = t1865 * t2011 + t2221;
t1990 = t2017 * g(1) - t2021 * g(2);
t1963 = qJDD(1) * pkin(1) + t2022 * pkin(7) + t1990;
t1976 = 0.2e1 * t2092 + t2099;
t2071 = -t1977 + t2004;
t1891 = pkin(2) * t2071 - pkin(8) * t1976 - t1963;
t1948 = -g(3) * t2016 + t2020 * t1964;
t1908 = -pkin(2) * t2166 + qJDD(2) * pkin(8) + t1975 * t2151 + t1948;
t1832 = -t2019 * t1891 + t2015 * t1908;
t1953 = t1972 * t2001;
t1896 = -t1953 + t1926;
t2115 = t1973 * t1972;
t2047 = -t1969 - t2115;
t1764 = t2047 * pkin(3) - qJ(4) * t1896 - t1832;
t1833 = t2015 * t1891 + t2019 * t1908;
t1768 = -pkin(3) * t2164 - qJ(4) * t2025 + t2001 * t1946 + t1833;
t2065 = -0.2e1 * qJD(4) * t1930 + t2012 * t1764 - t2011 * t1768;
t2213 = pkin(3) * t1782 + t2065;
t2212 = -pkin(4) * t1760 + pkin(9) * t2172;
t2211 = t2020 * t1965 + t2016 * t2185;
t2096 = t2020 * t2126;
t2210 = t2016 * t2186 + t2096;
t2207 = -pkin(3) * t1760 + qJ(4) * t2189;
t1626 = pkin(4) * t2173;
t2199 = pkin(9) * t2173;
t2183 = t2015 * t2047;
t2182 = t2019 * t2047;
t1915 = t2081 * t2001;
t1826 = -t1915 + t1861;
t2180 = t1915 + t1861;
t1700 = t1756 * t2014 - t1873 * t2110;
t1701 = t1756 * t2018 + t1845;
t1617 = t1700 * t2012 + t1701 * t2011;
t1620 = -t1700 * t2011 + t1701 * t2012;
t1560 = t1617 * t2019 + t1620 * t2015;
t1563 = -t1617 * t2015 + t1620 * t2019;
t2069 = t2020 * t1563 + t2097;
t2174 = -t2021 * t1560 + t2017 * t2069;
t2171 = t1560 * t2017 + t2021 * t2069;
t1929 = t1930 ^ 2;
t1968 = t1973 ^ 2;
t2161 = pkin(2) * t2016;
t2064 = qJD(4) * t2081;
t1923 = -0.2e1 * t2064;
t2101 = t2011 * t1764 + t2012 * t1768;
t1673 = t1923 + t2101;
t1601 = t1673 * t2011 + t2012 * t2065;
t2159 = pkin(3) * t1601;
t2109 = t2001 * t1930;
t1822 = t2082 + t2109;
t1749 = -t1822 * t2011 - t1826 * t2012;
t2158 = pkin(3) * t1749;
t2156 = pkin(5) * t2018;
t2154 = qJ(6) * t2018;
t2153 = qJD(1) * qJD(2);
t2149 = qJD(6) * t1993;
t1638 = pkin(4) * t2192 - pkin(9) * t1826 + t2065;
t1643 = -pkin(4) * t2079 - pkin(9) * t2082 + t2001 * t1911 + t1673;
t1577 = -t2018 * t1638 + t1643 * t2014;
t1578 = t2014 * t1638 + t2018 * t1643;
t1506 = -t1577 * t2018 + t1578 * t2014;
t2148 = t1506 * t2011;
t2147 = t1506 * t2012;
t2145 = t1601 * t2015;
t2144 = t1601 * t2019;
t2143 = t1706 * t2014;
t2142 = t1706 * t2018;
t2132 = t1806 * t2011;
t2131 = t1806 * t2012;
t1857 = -t1880 + t1969;
t2129 = t1857 * t2011;
t2128 = t1857 * t2012;
t2125 = t1873 * t1993;
t2124 = t1907 * t2015;
t2123 = t1907 * t2019;
t1917 = t1969 - t2115;
t2122 = t1917 * t2015;
t2121 = t1917 * t2019;
t2119 = t1963 * t2016;
t2118 = t1963 * t2020;
t2116 = t1969 * t2016;
t1937 = t1976 * t2016;
t2000 = t2020 * t2022 * t2016;
t1988 = -t2000 + qJDD(2);
t2114 = t1988 * t2016;
t2113 = t1988 * t2020;
t1989 = qJDD(2) + t2000;
t2112 = t1989 * t2016;
t2108 = t2001 * t2015;
t2107 = t2001 * t2019;
t2008 = t2016 ^ 2;
t2106 = t2008 * t2022;
t2105 = t2011 * t1930;
t2104 = t2012 * t1930;
t1979 = -0.2e1 * t2149;
t1794 = pkin(5) * t1871 - qJ(6) * t1873;
t2062 = -pkin(5) * t2163 - t1965 * qJ(6) - t1871 * t1794 + t1578;
t1529 = t1979 + t2062;
t1531 = t1965 * pkin(5) - qJ(6) * t2163 + t1794 * t1873 + qJDD(6) + t1577;
t2103 = -pkin(5) * t1531 + qJ(6) * t1529;
t2102 = pkin(5) * t1716 + qJ(6) * t2046;
t2009 = t2020 ^ 2;
t2100 = t2008 + t2009;
t2094 = t2016 * t2115;
t2093 = t2020 * t2115;
t1481 = t1529 * t2014 - t1531 * t2018;
t2091 = pkin(4) * t1481 + t2103;
t2090 = -t1578 + t1694;
t2089 = t2102 + t1626;
t2088 = -qJ(6) * t2014 - pkin(4);
t1507 = t1577 * t2014 + t2018 * t1578;
t1464 = t1507 * t2011 + t2147;
t1505 = pkin(4) * t1506;
t2087 = pkin(3) * t1464 + t1505;
t2086 = t1626 + t2232;
t1602 = t2012 * t1673 - t2011 * t2065;
t1759 = t1832 * t2015 + t2019 * t1833;
t1947 = t2016 * t1964 + t2155;
t1900 = t1947 * t2016 + t2020 * t1948;
t2080 = -t1990 * t2017 - t2021 * t1991;
t2078 = t2017 * t2000;
t2077 = t2021 * t2000;
t1904 = -t1929 - t2162;
t1802 = t1904 * t2012 + t2129;
t2076 = pkin(3) * t1802 - t2101;
t2074 = -pkin(2) * t1907 + pkin(8) * t1759;
t1983 = qJDD(1) * t2021 - t2017 * t2022;
t2072 = -pkin(6) * t1983 - g(3) * t2017;
t2070 = t2016 * t1563 - t2096;
t2066 = -t1577 + t2231;
t1758 = -t1832 * t2019 + t1833 * t2015;
t1899 = t1947 * t2020 - t1948 * t2016;
t2061 = t1990 * t2021 - t1991 * t2017;
t1482 = t1529 * t2018 + t1531 * t2014;
t1455 = t1481 * t2012 + t1482 * t2011;
t2060 = pkin(3) * t1455 + t2091;
t2059 = t2089 + t2232;
t2058 = t2090 + t2280;
t2056 = t2016 * t1880;
t2055 = t2020 * t1880;
t2051 = t2066 + t2252;
t1928 = -t2162 - t2164;
t1856 = t1928 * t2019 - t2183;
t1954 = t2001 * t1973;
t1893 = t1954 - t2025;
t2050 = pkin(2) * t1893 + pkin(8) * t1856 - t2123;
t1933 = -t1968 - t2162;
t1867 = -t1933 * t2015 + t2121;
t1897 = (-t2001 + qJD(3)) * t1972 + t2029;
t2049 = pkin(2) * t1897 + pkin(8) * t1867 + t2124;
t2048 = pkin(5) * t1791 - qJ(6) * t2178 + t2062;
t1894 = (-qJD(3) - t2001) * t1973 + t2028;
t1830 = t1894 * t2019 + t1896 * t2015;
t1916 = t1968 + t2164;
t2045 = pkin(2) * t1916 + pkin(8) * t1830 + t1759;
t2044 = t1979 + t2048;
t1586 = (-pkin(5) * t1993 - 0.2e1 * qJD(6)) * t1873 + t2216;
t1454 = pkin(9) * t1482 + (t2088 - t2156) * t1586;
t1456 = -t1481 * t2011 + t1482 * t2012;
t1461 = -pkin(9) * t1481 + (pkin(5) * t2014 - t2154) * t1586;
t1421 = -pkin(3) * t1586 + qJ(4) * t1456 + t1454 * t2012 + t1461 * t2011;
t1424 = -qJ(4) * t1455 - t1454 * t2011 + t1461 * t2012;
t1433 = -t1455 * t2015 + t1456 * t2019;
t2043 = -pkin(2) * t1586 + pkin(8) * t1433 + t1421 * t2019 + t1424 * t2015;
t1465 = t1507 * t2012 - t2148;
t1484 = -pkin(4) * t1706 + pkin(9) * t1507;
t1438 = -pkin(3) * t1706 - pkin(9) * t2148 + qJ(4) * t1465 + t1484 * t2012;
t1441 = -pkin(9) * t2147 - qJ(4) * t1464 - t1484 * t2011;
t1444 = -t1464 * t2015 + t1465 * t2019;
t2042 = -pkin(2) * t1706 + pkin(8) * t1444 + t1438 * t2019 + t1441 * t2015;
t1521 = -pkin(5) * t1760 + t1529;
t1522 = -qJ(6) * t1760 + t1531;
t1469 = t1521 * t2018 + t1522 * t2014 + t2212;
t1472 = -t1521 * t2014 + t1522 * t2018 - t2199;
t1445 = t1469 * t2012 + t1472 * t2011 + t2207;
t1447 = -t1469 * t2011 + t1472 * t2012 - t2228;
t2041 = t1445 * t2019 + t1447 * t2015 + t2244;
t1477 = t1507 + t2212;
t1478 = -t1506 - t2199;
t1450 = t1477 * t2012 + t1478 * t2011 + t2207;
t1451 = -t1477 * t2011 + t1478 * t2012 - t2228;
t2040 = t1450 * t2019 + t1451 * t2015 + t2244;
t2023 = 0.2e1 * qJD(6) * t1873 - t2216;
t1545 = pkin(5) * t2125 + t2023 + t2227;
t1510 = -t2274 + t2014 * t1545 - (-pkin(4) - t2156) * t2057;
t1515 = -pkin(5) * t2139 + t1545 * t2018 + t2275;
t1459 = t1510 * t2012 + t1515 * t2011 + t2278;
t1463 = -t1510 * t2011 + t1515 * t2012 + t2279;
t2039 = t1459 * t2019 + t1463 * t2015 + t2285;
t1711 = t1755 - t2125;
t1546 = (-t1711 + t2125) * pkin(5) + t2023;
t1512 = t2018 * t1546 + t1711 * t2088 + t2230;
t1516 = -t1546 * t2014 - t1711 * t2154 - t2229;
t1462 = -pkin(3) * t1711 + t1512 * t2012 + t1516 * t2011 + t2249;
t1466 = -t1512 * t2011 + t1516 * t2012 - t2250;
t2038 = -pkin(2) * t1711 + t1462 * t2019 + t1466 * t2015 + t2265;
t1596 = -pkin(4) * t1710 - t2142 + t2230;
t1625 = t2143 - t2229;
t1495 = -pkin(3) * t1710 + t1596 * t2012 + t1625 * t2011 + t2249;
t1511 = -t1596 * t2011 + t1625 * t2012 - t2250;
t2037 = -pkin(2) * t1710 + t1495 * t2019 + t1511 * t2015 + t2265;
t1600 = -pkin(4) * t2057 + t2143 + t2274;
t1644 = t2142 - t2275;
t1509 = t1600 * t2012 + t1644 * t2011 - t2278;
t1514 = -t1600 * t2011 + t1644 * t2012 - t2279;
t2036 = t1509 * t2019 + t1514 * t2015 - t2285;
t1751 = -t1822 * t2012 + t1826 * t2011;
t1834 = -t2079 - t1929;
t1579 = -pkin(3) * t1834 + qJ(4) * t1751 + t1602;
t1580 = -qJ(4) * t1749 - t1601;
t1666 = -t1749 * t2015 + t1751 * t2019;
t2035 = -pkin(2) * t1834 + pkin(8) * t1666 + t1579 * t2019 + t1580 * t2015;
t1783 = t1865 * t2012 - t2222;
t1821 = t2082 - t2109;
t1674 = -pkin(3) * t1821 + qJ(4) * t1783 - t2131;
t1688 = -t1782 * t2015 + t1783 * t2019;
t1720 = -qJ(4) * t1782 + t2132;
t2034 = -pkin(2) * t1821 + pkin(8) * t1688 + t1674 * t2019 + t1720 * t2015;
t1804 = -t1904 * t2011 + t2128;
t1677 = -pkin(3) * t2180 + qJ(4) * t1804 + t2132;
t1722 = -t1802 * t2015 + t1804 * t2019;
t1723 = -qJ(4) * t1802 + t2131;
t2033 = -pkin(2) * t2180 + pkin(8) * t1722 + t1677 * t2019 + t1723 * t2015;
t1520 = t1602 * t2019 - t2145;
t1595 = -pkin(3) * t1806 + qJ(4) * t1602;
t2031 = -pkin(2) * t1806 + pkin(8) * t1520 - qJ(4) * t2145 + t1595 * t2019;
t2030 = -t1694 + t2048 - t2280;
t2027 = pkin(5) * t2179 + qJ(6) * t2177 - t1531;
t2026 = t2027 + t2231;
t2024 = t2026 + t2252;
t2006 = t2009 * t2022;
t1998 = -t2006 - t2166;
t1997 = t2006 - t2166;
t1996 = -t2106 - t2166;
t1995 = -t2106 + t2166;
t1985 = -t2006 + t2106;
t1984 = t2006 + t2106;
t1982 = qJDD(1) * t2017 + t2021 * t2022;
t1981 = t2100 * qJDD(1);
t1978 = -0.2e1 * t2004 + t2098;
t1971 = t2020 * t1989;
t1970 = t2100 * t2153;
t1960 = t2020 * t1969;
t1958 = -pkin(6) * t1982 + g(3) * t2021;
t1952 = -t1968 + t2162;
t1951 = -t2162 + t2164;
t1950 = -t2008 * t2153 + t2020 * t2053;
t1949 = -t1977 * t2016 - t2009 * t2153;
t1945 = -t1996 * t2016 - t2113;
t1944 = -t1995 * t2016 + t1971;
t1943 = t1998 * t2020 - t2112;
t1942 = t1997 * t2020 - t2114;
t1941 = t1996 * t2020 - t2114;
t1940 = t1995 * t2020 + t2112;
t1939 = t1998 * t2016 + t1971;
t1938 = t1997 * t2016 + t2113;
t1936 = t2071 * t2020;
t1934 = t1968 - t2164;
t1932 = t1978 * t2020 - t1937;
t1931 = t1976 * t2020 + t1978 * t2016;
t1913 = -t1929 + t2162;
t1912 = t2079 - t2162;
t1910 = -pkin(7) * t1941 - t2118;
t1909 = -pkin(7) * t1939 - t2119;
t1906 = (t1972 * t2019 - t1973 * t2015) * t2001;
t1905 = (t1972 * t2015 + t1973 * t2019) * t2001;
t1902 = -pkin(1) * t1941 + t1948;
t1901 = -pkin(1) * t1939 + t1947;
t1895 = t1953 + t1926;
t1892 = t1954 + t2025;
t1890 = pkin(1) * t1978 + pkin(7) * t1943 + t2118;
t1889 = -pkin(1) * t1976 + pkin(7) * t1945 - t2119;
t1886 = t1926 * t2019 + t1973 * t2108;
t1885 = t1926 * t2015 - t1973 * t2107;
t1884 = -t1972 * t2107 + t2015 * t2025;
t1883 = t1972 * t2108 + t2019 * t2025;
t1882 = t1906 * t2020 - t2116;
t1881 = t1906 * t2016 + t1960;
t1879 = t1951 * t2019 + t2122;
t1878 = -t1952 * t2015 + t2182;
t1877 = t1951 * t2015 - t2121;
t1876 = t1952 * t2019 + t2183;
t1875 = t1929 - t2079;
t1874 = pkin(1) * t1963 + pkin(7) * t1900;
t1866 = t1933 * t2019 + t2122;
t1862 = pkin(1) * t1984 + pkin(7) * t1981 + t1900;
t1855 = t1928 * t2015 + t2182;
t1843 = (t2012 * t2081 - t2105) * t2001;
t1842 = (t2011 * t2081 + t2104) * t2001;
t1838 = t1886 * t2020 + t2094;
t1837 = t1884 * t2020 - t2094;
t1836 = t1886 * t2016 - t2093;
t1835 = t1884 * t2016 + t2093;
t1829 = t1893 * t2019 - t1895 * t2015;
t1828 = t1894 * t2015 - t1896 * t2019;
t1827 = t1893 * t2015 + t1895 * t2019;
t1820 = -pkin(8) * t1866 + t2123;
t1819 = t1861 * t2012 + t2001 * t2105;
t1818 = t1861 * t2011 - t2001 * t2104;
t1817 = -t1915 * t2012 + t2011 * t2082;
t1816 = -t1915 * t2011 - t2012 * t2082;
t1815 = t1879 * t2020 - t1892 * t2016;
t1814 = t1878 * t2020 + t1896 * t2016;
t1813 = t1912 * t2012 + t2129;
t1812 = -t1913 * t2011 + t2221;
t1811 = t1879 * t2016 + t1892 * t2020;
t1810 = t1878 * t2016 - t1896 * t2020;
t1809 = t1912 * t2011 - t2128;
t1808 = t1913 * t2012 + t2222;
t1807 = -pkin(8) * t1855 + t2124;
t1805 = t1867 * t2020 - t1897 * t2016;
t1803 = t1867 * t2016 + t1897 * t2020;
t1801 = t1856 * t2020 - t1893 * t2016;
t1800 = t1856 * t2016 + t1893 * t2020;
t1793 = t1829 * t2020 + t1934 * t2016;
t1792 = t1829 * t2016 - t1934 * t2020;
t1779 = t1830 * t2020 - t1916 * t2016;
t1778 = t1830 * t2016 + t1916 * t2020;
t1772 = -t1842 * t2015 + t1843 * t2019;
t1771 = t1842 * t2019 + t1843 * t2015;
t1770 = -pkin(2) * t1866 + t1833;
t1769 = -pkin(2) * t1855 + t1832;
t1766 = t1772 * t2020 - t2116;
t1765 = t1772 * t2016 + t1960;
t1750 = -t1821 * t2012 - t2011 * t2180;
t1748 = -t1821 * t2011 + t2012 * t2180;
t1739 = -t1818 * t2015 + t1819 * t2019;
t1738 = -t1816 * t2015 + t1817 * t2019;
t1737 = t1818 * t2019 + t1819 * t2015;
t1736 = t1816 * t2019 + t1817 * t2015;
t1729 = -t1809 * t2015 + t1813 * t2019;
t1728 = -t1808 * t2015 + t1812 * t2019;
t1727 = t1809 * t2019 + t1813 * t2015;
t1726 = t1808 * t2019 + t1812 * t2015;
t1725 = t1759 * t2020 + t1907 * t2016;
t1724 = t1759 * t2016 - t1907 * t2020;
t1721 = t1802 * t2019 + t1804 * t2015;
t1719 = -pkin(1) * t1803 - t2049;
t1693 = -pkin(1) * t1800 - t2050;
t1692 = t2020 * t1739 + t2056;
t1691 = t2020 * t1738 - t2056;
t1690 = t2016 * t1739 - t2055;
t1689 = t2016 * t1738 + t2055;
t1687 = t1782 * t2019 + t1783 * t2015;
t1686 = -pkin(8) * t1828 - t1758;
t1681 = t1729 * t2020 - t1822 * t2016;
t1680 = t1728 * t2020 + t1826 * t2016;
t1679 = t1729 * t2016 + t1822 * t2020;
t1678 = t1728 * t2016 - t1826 * t2020;
t1676 = t1722 * t2020 + t2016 * t2180;
t1675 = t1722 * t2016 - t2020 * t2180;
t1670 = -pkin(7) * t1803 - t1770 * t2016 + t1820 * t2020;
t1669 = t1688 * t2020 + t1821 * t2016;
t1668 = t1688 * t2016 - t1821 * t2020;
t1667 = -pkin(7) * t1800 - t1769 * t2016 + t1807 * t2020;
t1665 = -t1748 * t2015 + t1750 * t2019;
t1664 = t1749 * t2019 + t1751 * t2015;
t1663 = t1748 * t2019 + t1750 * t2015;
t1654 = -pkin(1) * t1866 + pkin(7) * t1805 + t1770 * t2020 + t1820 * t2016;
t1649 = -pkin(1) * t1778 - t2045;
t1648 = -pkin(1) * t1724 - t2074;
t1647 = -pkin(1) * t1855 + pkin(7) * t1801 + t1769 * t2020 + t1807 * t2016;
t1646 = t1665 * t2020 + t1875 * t2016;
t1645 = t1665 * t2016 - t1875 * t2020;
t1642 = t1666 * t2020 + t1834 * t2016;
t1641 = t1666 * t2016 - t1834 * t2020;
t1639 = -pkin(7) * t1778 + t1686 * t2020 + t1828 * t2161;
t1606 = -pkin(7) * t1724 + (-pkin(8) * t2020 + t2161) * t1758;
t1605 = -pkin(2) * t1664 - t2158;
t1604 = pkin(7) * t1779 + t2016 * t1686 + (-pkin(1) - t2160) * t1828;
t1603 = -pkin(2) * t1721 + t1923 - t2076;
t1599 = -pkin(2) * t1687 - t2213;
t1598 = pkin(7) * t1725 + (-pkin(1) + t2073) * t1758;
t1597 = -pkin(8) * t1721 - t1677 * t2015 + t1723 * t2019;
t1581 = -pkin(8) * t1687 - t1674 * t2015 + t1720 * t2019;
t1544 = t1711 * t2016 + t2261;
t1542 = -t1711 * t2020 + t2263;
t1532 = -pkin(1) * t1675 - t2033;
t1527 = -pkin(1) * t1668 - t2034;
t1526 = t1710 * t2016 + t2261;
t1524 = -t1710 * t2020 + t2263;
t1519 = t1602 * t2015 + t2144;
t1518 = t1520 * t2020 + t1806 * t2016;
t1517 = t1520 * t2016 - t1806 * t2020;
t1513 = -pkin(7) * t1675 + t1597 * t2020 - t1603 * t2016;
t1508 = -pkin(7) * t1668 + t1581 * t2020 - t1599 * t2016;
t1504 = -pkin(1) * t1721 + pkin(7) * t1676 + t1597 * t2016 + t1603 * t2020;
t1494 = -pkin(2) * t1519 - t2159;
t1489 = -pkin(1) * t1687 + pkin(7) * t1669 + t1581 * t2016 + t1599 * t2020;
t1483 = -pkin(8) * t1664 - t1579 * t2015 + t1580 * t2019;
t1479 = -t2058 + t2289;
t1476 = -t2051 - t2267;
t1475 = -pkin(1) * t1641 - t2035;
t1474 = -t2024 - t2267;
t1473 = -pkin(8) * t1519 - qJ(4) * t2144 - t1595 * t2015;
t1471 = -t2030 + 0.2e1 * t2149 - t2289;
t1470 = -pkin(7) * t1641 + t1483 * t2020 - t1605 * t2016;
t1468 = -t2086 - t2253;
t1467 = -pkin(1) * t1664 + pkin(7) * t1642 + t1483 * t2016 + t1605 * t2020;
t1460 = -t2059 - t2253;
t1458 = -t1509 * t2015 + t1514 * t2019 + t2288;
t1457 = -pkin(1) * t1517 - t2031;
t1453 = -t1495 * t2015 + t1511 * t2019 - t2264;
t1452 = -t2036 + t2299;
t1449 = -pkin(1) * t1524 - t2037;
t1448 = -pkin(7) * t1517 + t1473 * t2020 - t1494 * t2016;
t1446 = t1458 * t2020 - t1479 * t2016 + t2298;
t1443 = t1464 * t2019 + t1465 * t2015;
t1442 = -pkin(1) * t1519 + pkin(7) * t1518 + t1473 * t2016 + t1494 * t2020;
t1440 = t1444 * t2020 + t1706 * t2016;
t1439 = t1444 * t2016 - t1706 * t2020;
t1437 = -t1462 * t2015 + t1466 * t2019 - t2264;
t1436 = t1458 * t2016 + t1479 * t2020 - t2297;
t1435 = -pkin(7) * t1524 + t1453 * t2020 - t1476 * t2016;
t1434 = -t1459 * t2015 + t1463 * t2019 - t2288;
t1432 = t1455 * t2019 + t1456 * t2015;
t1431 = -pkin(1) * t1542 - t2038;
t1430 = pkin(7) * t1526 + t1453 * t2016 + t1476 * t2020 - t2269;
t1429 = t1433 * t2020 + t1586 * t2016;
t1428 = t1433 * t2016 - t1586 * t2020;
t1427 = -t2039 - t2299;
t1426 = -pkin(7) * t1542 + t1437 * t2020 - t1474 * t2016;
t1425 = pkin(7) * t1544 + t1437 * t2016 + t1474 * t2020 - t2269;
t1423 = t1434 * t2020 - t1471 * t2016 - t2298;
t1422 = -pkin(2) * t1443 - t2087;
t1420 = -t1450 * t2015 + t1451 * t2019 - t2251;
t1419 = t1434 * t2016 + t1471 * t2020 + t2297;
t1418 = -t2040 - t2268;
t1417 = -t1445 * t2015 + t1447 * t2019 - t2251;
t1416 = -pkin(2) * t1432 - t2060;
t1415 = -t2041 - t2268;
t1414 = t1420 * t2020 - t1468 * t2016 - t2266;
t1413 = t1420 * t2016 + t1468 * t2020 + t2259;
t1412 = t1417 * t2020 - t1460 * t2016 - t2266;
t1411 = -pkin(8) * t1443 - t1438 * t2015 + t1441 * t2019;
t1410 = t1417 * t2016 + t1460 * t2020 + t2259;
t1409 = -pkin(1) * t1439 - t2042;
t1408 = -pkin(8) * t1432 - t1421 * t2015 + t1424 * t2019;
t1407 = -pkin(7) * t1439 + t1411 * t2020 - t1422 * t2016;
t1406 = -pkin(1) * t1428 - t2043;
t1405 = -pkin(1) * t1443 + pkin(7) * t1440 + t1411 * t2016 + t1422 * t2020;
t1404 = -pkin(7) * t1428 + t1408 * t2020 - t1416 * t2016;
t1403 = -pkin(1) * t1432 + pkin(7) * t1429 + t1408 * t2016 + t1416 * t2020;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1983, 0, -t1982, 0, t2072, -t1958, -t2061, -pkin(6) * t2061, t1950 * t2021 - t2078, t1932 * t2021 + t1985 * t2017, t1944 * t2021 + t2017 * t2099, t1949 * t2021 + t2078, t1942 * t2021 + t2017 * t2098, qJDD(2) * t2017 + t1970 * t2021, t2021 * t1909 - t2017 * t1901 - pkin(6) * (t1943 * t2017 + t1978 * t2021), t2021 * t1910 - t2017 * t1902 - pkin(6) * (t1945 * t2017 - t1976 * t2021), t2021 * t1899 - pkin(6) * (t1981 * t2017 + t1984 * t2021), -pkin(6) * (t1900 * t2017 + t1963 * t2021) - (pkin(1) * t2017 - pkin(7) * t2021) * t1899, t1838 * t2021 + t1885 * t2017, t1793 * t2021 + t1827 * t2017, t1814 * t2021 + t1876 * t2017, t1837 * t2021 - t1883 * t2017, t1815 * t2021 + t1877 * t2017, t1882 * t2021 + t1905 * t2017, t2021 * t1667 - t2017 * t1693 - pkin(6) * (t1801 * t2017 - t1855 * t2021), t2021 * t1670 - t2017 * t1719 - pkin(6) * (t1805 * t2017 - t1866 * t2021), t2021 * t1639 - t2017 * t1649 - pkin(6) * (t1779 * t2017 - t1828 * t2021), t2021 * t1606 - t2017 * t1648 - pkin(6) * (t1725 * t2017 - t1758 * t2021), t1692 * t2021 + t1737 * t2017, t1646 * t2021 + t1663 * t2017, t1680 * t2021 + t1726 * t2017, t1691 * t2021 + t1736 * t2017, t1681 * t2021 + t1727 * t2017, t1766 * t2021 + t1771 * t2017, t2021 * t1508 - t2017 * t1527 - pkin(6) * (t1669 * t2017 - t1687 * t2021), t2021 * t1513 - t2017 * t1532 - pkin(6) * (t1676 * t2017 - t1721 * t2021), t2021 * t1470 - t2017 * t1475 - pkin(6) * (t1642 * t2017 - t1664 * t2021), t2021 * t1448 - t2017 * t1457 - pkin(6) * (t1518 * t2017 - t1519 * t2021), t2171, -t2293, t2276, t2238, -t2291, t2239, t2021 * t1435 - t2017 * t1449 - pkin(6) * (t1526 * t2017 - t2260), t2021 * t1446 - t2017 * t1452 + t2300, t2021 * t1414 - t2017 * t1418 - t2258, t2021 * t1407 - t2017 * t1409 - pkin(6) * (t1440 * t2017 - t1443 * t2021), t2171, t2276, t2293, t2239, t2291, t2238, t2021 * t1426 - t2017 * t1431 - pkin(6) * (t1544 * t2017 - t2260), t2021 * t1412 - t2017 * t1415 - t2258, t2021 * t1423 - t2017 * t1427 - t2300, t2021 * t1404 - t2017 * t1406 - pkin(6) * (t1429 * t2017 - t1432 * t2021); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1982, 0, t1983, 0, t1958, t2072, t2080, pkin(6) * t2080, t1950 * t2017 + t2077, t1932 * t2017 - t1985 * t2021, t1944 * t2017 - t2021 * t2099, t1949 * t2017 - t2077, t1942 * t2017 - t2021 * t2098, -qJDD(2) * t2021 + t1970 * t2017, t2017 * t1909 + t2021 * t1901 + pkin(6) * (t1943 * t2021 - t1978 * t2017), t2017 * t1910 + t2021 * t1902 + pkin(6) * (t1945 * t2021 + t1976 * t2017), t2017 * t1899 + pkin(6) * (t1981 * t2021 - t1984 * t2017), pkin(6) * (t1900 * t2021 - t1963 * t2017) - (-pkin(1) * t2021 - pkin(7) * t2017) * t1899, t1838 * t2017 - t1885 * t2021, t1793 * t2017 - t1827 * t2021, t1814 * t2017 - t1876 * t2021, t1837 * t2017 + t1883 * t2021, t1815 * t2017 - t1877 * t2021, t1882 * t2017 - t1905 * t2021, t2017 * t1667 + t2021 * t1693 + pkin(6) * (t1801 * t2021 + t1855 * t2017), t2017 * t1670 + t2021 * t1719 + pkin(6) * (t1805 * t2021 + t1866 * t2017), t2017 * t1639 + t2021 * t1649 + pkin(6) * (t1779 * t2021 + t1828 * t2017), t2017 * t1606 + t2021 * t1648 + pkin(6) * (t1725 * t2021 + t1758 * t2017), t1692 * t2017 - t1737 * t2021, t1646 * t2017 - t1663 * t2021, t1680 * t2017 - t1726 * t2021, t1691 * t2017 - t1736 * t2021, t1681 * t2017 - t1727 * t2021, t1766 * t2017 - t1771 * t2021, t2017 * t1508 + t2021 * t1527 + pkin(6) * (t1669 * t2021 + t1687 * t2017), t2017 * t1513 + t2021 * t1532 + pkin(6) * (t1676 * t2021 + t1721 * t2017), t2017 * t1470 + t2021 * t1475 + pkin(6) * (t1642 * t2021 + t1664 * t2017), t2017 * t1448 + t2021 * t1457 + pkin(6) * (t1518 * t2021 + t1519 * t2017), t2174, -t2294, t2277, t2241, -t2292, t2242, t2017 * t1435 + t2021 * t1449 + pkin(6) * (t1526 * t2021 + t2262), t2017 * t1446 + t2021 * t1452 - t2301, t2017 * t1414 + t2021 * t1418 + t2257, t2017 * t1407 + t2021 * t1409 + pkin(6) * (t1440 * t2021 + t1443 * t2017), t2174, t2277, t2294, t2242, t2292, t2241, t2017 * t1426 + t2021 * t1431 + pkin(6) * (t1544 * t2021 + t2262), t2017 * t1412 + t2021 * t1415 + t2257, t2017 * t1423 + t2021 * t1427 + t2301, t2017 * t1404 + t2021 * t1406 + pkin(6) * (t1429 * t2021 + t1432 * t2017); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1990, t1991, 0, 0, t1937, t1931, t1940, -t1936, t1938, 0, t1890, t1889, t1862, t1874, t1836, t1792, t1810, t1835, t1811, t1881, t1647, t1654, t1604, t1598, t1690, t1645, t1678, t1689, t1679, t1765, t1489, t1504, t1467, t1442, t2070, -t1490, t2271, t2210, -t1549, t2211, t1430, t1436, t1413, t1405, t2070, t2271, t1490, t2211, t1549, t2210, t1425, t1410, t1419, t1403; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t2022, 0, 0, -g(3), -t1990, 0, t1950, t1932, t1944, t1949, t1942, t1970, t1909, t1910, t1899, pkin(7) * t1899, t1838, t1793, t1814, t1837, t1815, t1882, t1667, t1670, t1639, t1606, t1692, t1646, t1680, t1691, t1681, t1766, t1508, t1513, t1470, t1448, t2069, -t1492, t2270, t2209, -t1553, t2208, t1435, t1446, t1414, t1407, t2069, t2270, t1492, t2208, t1553, t2209, t1426, t1412, t1423, t1404; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2022, 0, qJDD(1), 0, g(3), 0, -t1991, 0, t2000, -t1985, -t2099, -t2000, -t2098, -qJDD(2), t1901, t1902, 0, pkin(1) * t1899, -t1885, -t1827, -t1876, t1883, -t1877, -t1905, t1693, t1719, t1649, t1648, -t1737, -t1663, -t1726, -t1736, -t1727, -t1771, t1527, t1532, t1475, t1457, -t1560, -t1497, -t2255, -t2187, -t1590, -t2184, t1449, t1452, t1418, t1409, -t1560, -t2255, t1497, -t2184, t1590, -t2187, t1431, t1415, t1427, t1406; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1990, t1991, 0, 0, t1937, t1931, t1940, -t1936, t1938, 0, t1890, t1889, t1862, t1874, t1836, t1792, t1810, t1835, t1811, t1881, t1647, t1654, t1604, t1598, t1690, t1645, t1678, t1689, t1679, t1765, t1489, t1504, t1467, t1442, t2070, -t1490, t2271, t2210, -t1549, t2211, t1430, t1436, t1413, t1405, t2070, t2271, t1490, t2211, t1549, t2210, t1425, t1410, t1419, t1403; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2053, t1978, t1989, -t2092, t1997, t2092, 0, -t1963, t1947, 0, t1886, t1829, t1878, t1884, t1879, t1906, t1807, t1820, t1686, -pkin(8) * t1758, t1739, t1665, t1728, t1738, t1729, t1772, t1581, t1597, t1483, t1473, t1563, -t1500, t2256, t2186, -t1593, t2185, t1453, t1458, t1420, t1411, t1563, t2256, t1500, t2185, t1593, t2186, t1437, t1417, t1434, t1408; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2004, t1976, t1995, t1977, t1988, -t2004, t1963, 0, t1948, 0, -t2115, -t1934, -t1896, t2115, t1892, t1969, t1769, t1770, -pkin(2) * t1828, -pkin(2) * t1758, -t1880, -t1875, -t1826, t1880, t1822, t1969, t1599, t1603, t1605, t1494, -t2126, -t2181, t1716, t2126, -t2046, t1965, t1476, t1479, t1468, t1422, -t2126, t1716, t2181, t1965, t2046, t2126, t1474, t1460, t1471, t1416; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2000, t1985, t2099, t2000, t2098, qJDD(2), -t1947, -t1948, 0, 0, t1885, t1827, t1876, -t1883, t1877, t1905, t2050, t2049, t2045, t2074, t1737, t1663, t1726, t1736, t1727, t1771, t2034, t2033, t2035, t2031, t1560, t1497, t2255, t2187, t1590, t2184, t2037, t2036, t2040, t2042, t1560, t2255, -t1497, t2184, -t1590, t2187, t2038, t2041, t2039, t2043; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1926, t1893, t2047, -t1953, t1951, t1953, 0, t1907, t1832, 0, t1819, t1750, t1812, t1817, t1813, t1843, t1720, t1723, t1580, -qJ(4) * t1601, t1620, t1573, t2236, t2168, -t1661, t2169, t1511, t1514, t1451, t1441, t1620, t2236, -t1573, t2169, t1661, t2168, t1466, t1447, t1463, t1424; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1954, t1895, t1952, -t2025, -t1917, t1954, -t1907, 0, t1833, 0, t1818, t1748, t1808, t1816, t1809, t1842, t1674, t1677, t1579, t1595, t1617, t1569, t2237, t2167, t1658, t2170, t1495, t1509, t1450, t1438, t1617, t2237, -t1569, t2170, -t1658, t2167, t1462, t1445, t1459, t1421; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2115, t1934, t1896, -t2115, -t1892, -t1969, -t1832, -t1833, 0, 0, t1880, t1875, t1826, -t1880, -t1822, -t1969, t2213, 0.2e1 * t2064 + t2076, t2158, t2159, t2126, t2181, -t1716, -t2126, t2046, -t1965, t2051, t2058, t2086, t2087, t2126, -t1716, -t2181, -t1965, -t2046, -t2126, t2024, t2059, t1979 + t2030, t2060; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1861, -t1821, t2192, -t1915, t1912, t1915, 0, t1806, -t2065, 0, t1701, t1633, t2215, t2054, t1747, t2067, t1625, t1644, t1478, -pkin(9) * t1506, t1701, t2215, -t1633, t2067, -t1747, t2054, t1516, t1472, t1515, t1461; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2109, t2180, t1913, -t2082, -t1857, t2109, -t1806, 0, t1673, 0, t1700, t1629, t2214, t2068, t1743, t2052, t1596, t1600, t1477, t1484, t1700, t2214, -t1629, t2052, -t1743, t2068, t1512, t1469, t1510, t1454; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1880, t1875, t1826, -t1880, -t1822, -t1969, t2065, -t1673, 0, 0, t2126, t2181, -t1716, -t2126, t2046, -t1965, t2066, t2090, t1626, t1505, t2126, -t1716, -t2181, -t1965, -t2046, -t2126, t2026, t2089, -t1694 + t2044, t2091; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1756, -t1710, t2179, -t2127, t1847, t2127, 0, t1706, t1577, 0, t1756, t2179, t1710, t2127, -t1847, -t2127, -qJ(6) * t1711, t1522, t1545, -qJ(6) * t1586; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2125, t2057, -t1848, -t1755, -t2178, t2125, -t1706, 0, t1578, 0, -t2125, -t1848, -t2057, t2125, t2178, -t1755, t1546, t1521, pkin(5) * t2057, -pkin(5) * t1586; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2126, t2181, -t1716, -t2126, t2046, -t1965, -t1577, -t1578, 0, 0, t2126, -t1716, -t2181, -t1965, -t2046, -t2126, t2027, t2102, t2044, t2103; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1756, t2179, t1710, t2127, -t1847, -t2127, 0, t1531, -t1586, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2126, -t1716, -t2181, -t1965, -t2046, -t2126, -t1531, 0, t1529, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2125, t1848, t2057, -t2125, -t2178, t1755, t1586, -t1529, 0, 0;];
m_new_reg  = t1;