% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RRPRRP14
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 19:27
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RRPRRP14_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP14_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP14_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRP14_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRP14_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP14_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 19:26:20
% EndTime: 2019-05-06 19:27:24
% DurationCPUTime: 69.51s
% Computational Cost: add. (225939->998), mult. (507373->1260), div. (0->0), fcn. (375100->10), ass. (0->663)
t1977 = cos(qJ(5));
t1973 = sin(qJ(5));
t1974 = sin(qJ(4));
t1978 = cos(qJ(4));
t1972 = cos(pkin(6));
t2113 = qJD(1) * t1972 + qJD(2);
t1971 = sin(pkin(6));
t1979 = cos(qJ(2));
t2145 = t1971 * t1979;
t2125 = qJD(1) * t2145;
t1926 = -t1974 * t2125 + t1978 * t2113;
t1975 = sin(qJ(2));
t2146 = t1971 * t1975;
t2126 = qJD(1) * t2146;
t1956 = qJD(4) + t2126;
t1896 = t1926 * t1973 - t1977 * t1956;
t1924 = t1974 * t2113 + t1978 * t2125;
t1966 = qJDD(1) * t1972 + qJDD(2);
t2128 = qJDD(1) * t1971;
t1964 = t1979 * t2128;
t2039 = qJD(2) * t2126 - t1964;
t1869 = -t1924 * qJD(4) + t1978 * t1966 + t1974 * t2039;
t2183 = qJD(2) * t1979;
t1935 = (qJD(1) * t2183 + qJDD(1) * t1975) * t1971;
t1992 = qJDD(4) + t1935;
t1984 = -t1977 * t1869 - t1973 * t1992;
t1783 = -t1896 * qJD(5) - t1984;
t1920 = qJD(5) + t1924;
t2163 = t1896 * t1920;
t2219 = -t2163 + t1783;
t2175 = t2219 * t1973;
t1898 = t1926 * t1977 + t1956 * t1973;
t1862 = t1920 * t1898;
t2105 = -t1973 * t1869 + t1977 * t1992;
t2027 = qJD(5) * t1898 - t2105;
t2224 = t1862 + t2027;
t1641 = -t2224 * t1977 - t2175;
t1895 = t1898 ^ 2;
t2207 = t1896 ^ 2;
t2222 = t1895 - t2207;
t1602 = t1641 * t1978 + t1974 * t2222;
t1600 = t1641 * t1974 - t1978 * t2222;
t2174 = t2219 * t1977;
t1637 = -t2224 * t1973 + t2174;
t2074 = t1600 * t1979 - t1637 * t1975;
t1507 = t1971 * t1602 + t1972 * t2074;
t1546 = t1600 * t1975 + t1637 * t1979;
t1976 = sin(qJ(1));
t1980 = cos(qJ(1));
t2375 = t1976 * t1507 + t1546 * t1980;
t2374 = t1507 * t1980 - t1976 * t1546;
t2206 = t1920 ^ 2;
t1855 = t2207 - t2206;
t1844 = t1898 * t1896;
t2103 = -t1974 * t1966 + t1978 * t2039;
t2028 = qJD(4) * t1926 - t2103;
t1867 = qJDD(5) + t2028;
t2225 = t1844 + t1867;
t2245 = t2225 * t1973;
t1714 = t1855 * t1977 - t2245;
t1736 = -t1862 + t2027;
t1631 = t1714 * t1978 - t1736 * t1974;
t1627 = t1714 * t1974 + t1736 * t1978;
t2244 = t2225 * t1977;
t1710 = t1855 * t1973 + t2244;
t2066 = t1627 * t1979 - t1710 * t1975;
t1534 = t1971 * t1631 + t1972 * t2066;
t1576 = t1627 * t1975 + t1710 * t1979;
t2373 = t1976 * t1534 + t1576 * t1980;
t2372 = t1534 * t1980 - t1976 * t1576;
t1530 = -t1972 * t1631 + t1971 * t2066;
t1505 = -t1972 * t1602 + t1971 * t2074;
t1856 = t1895 - t2206;
t2226 = -t1844 + t1867;
t2171 = t2226 * t1973;
t2290 = -t1856 * t1977 + t2171;
t2218 = t2163 + t1783;
t2170 = t2226 * t1977;
t2289 = t1856 * t1973 + t2170;
t2315 = t1974 * t2289 - t1978 * t2218;
t2332 = t1975 * t2315 + t1979 * t2290;
t2311 = t1974 * t2218 + t1978 * t2289;
t2331 = t1975 * t2290 - t1979 * t2315;
t2356 = -t1971 * t2311 + t1972 * t2331;
t2363 = -t1976 * t2356 + t1980 * t2332;
t2362 = t1976 * t2332 + t1980 * t2356;
t2217 = -t2206 - t2207;
t2240 = t1977 * t2217 - t2171;
t2275 = t1974 * t2224 + t1978 * t2240;
t2241 = t1973 * t2217 + t2170;
t2276 = t1974 * t2240 - t1978 * t2224;
t2310 = t1975 * t2241 - t1979 * t2276;
t2333 = -t1971 * t2275 + t1972 * t2310;
t2361 = pkin(1) * t2333;
t2334 = t1971 * t2310 + t1972 * t2275;
t2360 = pkin(1) * t2334;
t2357 = t1971 * t2331 + t1972 * t2311;
t2314 = t1975 * t2276 + t1979 * t2241;
t2355 = pkin(7) * (-t1976 * t2333 + t1980 * t2314);
t2354 = pkin(7) * (t1976 * t2314 + t1980 * t2333);
t2353 = (-t1971 * t2334 - t1972 * t2333) * pkin(8);
t1800 = t2206 + t1895;
t1686 = t1800 * t1977 + t2245;
t2352 = pkin(3) * t1686;
t2351 = pkin(4) * t1686;
t2350 = pkin(8) * t2314;
t2349 = pkin(10) * t1686;
t1697 = t1800 * t1973 - t2244;
t2348 = pkin(10) * t1697;
t2347 = qJ(3) * t1686;
t2344 = t1686 * t1975;
t2343 = t1686 * t1979;
t2342 = t1697 * t1974;
t2341 = t1697 * t1978;
t2330 = pkin(3) * t2276;
t2081 = qJD(1) * t2113;
t2034 = t1971 * t2081;
t1944 = t1975 * t2034;
t1903 = -t1944 - t2039;
t2100 = t2113 ^ 2;
t1970 = t1979 ^ 2;
t1981 = t1971 ^ 2;
t2208 = qJD(1) ^ 2;
t2133 = t1981 * t2208;
t2118 = t1970 * t2133;
t1939 = -t2100 - t2118;
t2246 = t1979 * t2133;
t1954 = t1975 * t2246;
t2220 = -t1966 - t1954;
t2157 = t2220 * t1979;
t2046 = t1939 * t1975 - t2157;
t1838 = t1971 * t1903 + t1972 * t2046;
t2158 = t2220 * t1975;
t1891 = -t1939 * t1979 - t2158;
t2329 = pkin(7) * (t1838 * t1980 - t1976 * t1891);
t2328 = pkin(7) * (t1976 * t1838 + t1891 * t1980);
t1904 = t2113 * t2125 + t1935;
t2204 = t1975 ^ 2;
t1965 = t2204 * t2133;
t1919 = -t1965 - t2100;
t1934 = -t1954 + t1966;
t2156 = t1934 * t1975;
t2048 = t1919 * t1979 - t2156;
t1819 = -t1971 * t1904 + t1972 * t2048;
t2155 = t1934 * t1979;
t1877 = t1919 * t1975 + t2155;
t2327 = pkin(7) * (t1819 * t1980 - t1976 * t1877);
t2326 = pkin(7) * (t1976 * t1819 + t1877 * t1980);
t1832 = -t1972 * t1903 + t1971 * t2046;
t2325 = pkin(8) * (t1832 * t1971 + t1838 * t1972);
t1817 = t1972 * t1904 + t1971 * t2048;
t2324 = pkin(8) * (t1817 * t1971 + t1819 * t1972);
t2323 = pkin(9) * t2275;
t2322 = pkin(9) * t2276;
t2321 = qJ(3) * t2275;
t2202 = pkin(2) + pkin(9);
t2316 = t2202 * t2275;
t2160 = t1920 * t1973;
t1726 = t1896 * t2160 - t1977 * t2027;
t2159 = t1920 * t1977;
t2119 = t1896 * t2159;
t1987 = t1973 * t2027 + t2119;
t2122 = t1978 * t1844;
t2214 = t1974 * t1987 + t2122;
t2239 = t1726 * t1979 + t1975 * t2214;
t2123 = t1974 * t1844;
t2212 = t1978 * t1987 - t2123;
t2238 = t1726 * t1975 - t1979 * t2214;
t2277 = -t1971 * t2212 + t1972 * t2238;
t2313 = -t1976 * t2277 + t1980 * t2239;
t1853 = t1898 * t2160;
t2087 = t1853 - t2119;
t2213 = -t1867 * t1978 + t1974 * t2087;
t2227 = (t1896 * t1973 + t1898 * t1977) * t1920;
t2236 = t1975 * t2213 - t1979 * t2227;
t2211 = t1867 * t1974 + t1978 * t2087;
t2237 = -t1975 * t2227 - t1979 * t2213;
t2278 = -t1971 * t2211 + t1972 * t2237;
t2312 = -t1976 * t2278 + t1980 * t2236;
t2309 = t1976 * t2239 + t1980 * t2277;
t2308 = t1976 * t2236 + t1980 * t2278;
t2307 = qJ(3) * t2241 - t2202 * t2276;
t2306 = pkin(1) * t1817;
t2305 = pkin(1) * t1819;
t2304 = pkin(1) * t1832;
t2303 = pkin(1) * t1838;
t2302 = pkin(3) * t2241;
t2301 = pkin(4) * t2241;
t2300 = pkin(10) * t2240;
t2299 = pkin(10) * t2241;
t2298 = -qJ(6) * t1973 - pkin(4);
t1945 = t1979 * t2034;
t1906 = -t1945 + t1935;
t1937 = -t1965 + t2100;
t2047 = t1937 * t1979 - t2158;
t1834 = -t1971 * t1906 + t1972 * t2047;
t1886 = -t1937 * t1975 - t2157;
t2286 = t1976 * t1834 - t1886 * t1980;
t2285 = t1834 * t1980 + t1976 * t1886;
t1907 = t1944 - t2039;
t1938 = -t2100 + t2118;
t2045 = t1938 * t1975 + t2155;
t1836 = -t1971 * t1907 + t1972 * t2045;
t1889 = -t1938 * t1979 + t2156;
t2284 = t1976 * t1836 + t1889 * t1980;
t2283 = t1836 * t1980 - t1976 * t1889;
t2280 = t1971 * t2237 + t1972 * t2211;
t2279 = t1971 * t2238 + t1972 * t2212;
t2221 = t1895 + t2207;
t2272 = pkin(4) * t2221;
t2271 = pkin(8) * t1877;
t2270 = pkin(8) * t1891;
t2269 = qJ(6) * t2219;
t2259 = t1974 * t2221;
t1884 = t1926 * t1924;
t2223 = -t1884 + t1992;
t2257 = t1974 * t2223;
t2250 = t1978 * t2221;
t2248 = t1978 * t2223;
t1908 = t1956 * t1926;
t1820 = t1908 + t2028;
t2182 = qJD(6) * t1920;
t1912 = 0.2e1 * t2182;
t1932 = pkin(3) * t2126 - pkin(9) * t2113;
t1957 = -0.2e1 * qJD(3) * t2126;
t1942 = pkin(2) * t1944;
t2189 = t1972 * g(3);
t2114 = -t1942 + t2189;
t2038 = t1935 * qJ(3) + t2114;
t1958 = t1976 * g(1) - t1980 * g(2);
t2041 = qJDD(1) * pkin(1) + t1958;
t2185 = t1979 * qJ(3);
t2140 = t1972 * t1979;
t2193 = pkin(8) * t1971;
t2228 = (qJ(3) * t2140 + t2193) * qJD(1);
t1757 = -pkin(3) * t2118 + t1957 - t2202 * t1964 + ((-t1975 * t1932 - t2228 + (t1975 * t2202 - t2185) * qJD(2)) * qJD(1) - t2041) * t1971 - t2038;
t2200 = pkin(2) * t1979;
t2093 = qJ(3) * t1975 + t2200;
t2019 = t2093 * t2146;
t1959 = g(1) * t1980 + t1976 * g(2);
t1931 = -pkin(1) * t2208 + pkin(8) * t2128 - t1959;
t1995 = t2193 * t2208 + t2041;
t1989 = t1972 * t1995;
t2104 = t1975 * t1931 - t1979 * t1989;
t2020 = -t1966 * pkin(2) - t2100 * qJ(3) + qJDD(3) + t2104;
t2188 = t1979 * g(3);
t1983 = t1935 * pkin(3) + t2220 * pkin(9) + (t2188 + (-pkin(3) * t2183 + (-pkin(3) * t2140 - t2019) * qJD(1)) * qJD(1)) * t1971 + t2020;
t1660 = t1978 * t1757 + t1974 * t1983;
t1881 = pkin(4) * t1924 - pkin(10) * t1926;
t2205 = t1956 ^ 2;
t1619 = -pkin(4) * t2205 + pkin(10) * t1992 - t1924 * t1881 + t1660;
t1876 = -g(3) * t2146 + t1979 * t1931 + t1975 * t1989;
t2203 = 0.2e1 * qJD(3);
t1793 = -t2100 * pkin(2) + t1966 * qJ(3) - t2093 * t2246 + t2113 * t2203 + t1876;
t1756 = -t2039 * pkin(3) - pkin(9) * t2118 + t1932 * t2113 + t1793;
t2154 = t1956 * t1924;
t2037 = t1869 - t2154;
t1650 = pkin(4) * t1820 - t2037 * pkin(10) + t1756;
t1553 = t1977 * t1619 + t1973 * t1650;
t1840 = pkin(5) * t1896 - qJ(6) * t1898;
t2080 = -pkin(5) * t2206 + t1867 * qJ(6) - t1896 * t1840 + t1553;
t1538 = t1912 + t2080;
t1552 = t1619 * t1973 - t1977 * t1650;
t1541 = -t1867 * pkin(5) - qJ(6) * t2206 + t1840 * t1898 + qJDD(6) + t1552;
t1478 = t1538 * t1977 + t1541 * t1973;
t1659 = t1974 * t1757 - t1978 * t1983;
t1618 = -t1992 * pkin(4) - t2205 * pkin(10) + t1926 * t1881 + t1659;
t1988 = t2027 * pkin(5) + t1618 - t2269;
t1548 = (pkin(5) * t1920 - 0.2e1 * qJD(6)) * t1898 + t1988;
t1461 = t1478 * t1974 - t1548 * t1978;
t1996 = pkin(10) * t1478 + (-pkin(5) * t1977 + t2298) * t1548;
t2243 = -pkin(3) * t1461 - t1996;
t1849 = (-t1924 * t1974 - t1926 * t1978) * t1956;
t2242 = -t1979 * t1849 + t1975 * t1992;
t1729 = t1783 * t1973 + t1898 * t2159;
t1730 = t1783 * t1977 - t1853;
t2031 = t1730 * t1974 - t2122;
t2088 = t1978 * t1730 + t2123;
t2209 = t1972 * t1975 * t1729 - t1971 * t2088 - t2031 * t2140;
t2215 = t1979 * t1729 + t1975 * t2031;
t2235 = t1976 * t2215 + t1980 * t2209;
t2234 = -t1976 * t2209 + t1980 * t2215;
t2233 = qJD(1) * (t1972 ^ 2 + t1981) * t1971;
t1489 = -t1552 * t1977 + t1553 * t1973;
t2127 = pkin(4) * t1978 + pkin(3);
t2232 = t1489 * (pkin(10) * t1974 + t2127);
t1490 = t1973 * t1552 + t1977 * t1553;
t2106 = t1978 * t1659 - t1974 * t1660;
t1905 = t1945 + t1935;
t1738 = (-qJD(5) + t1920) * t1898 + t2105;
t2176 = t2218 * t1977;
t1638 = t1738 * t1973 - t2176;
t1482 = -pkin(10) * t1638 - t1489;
t2216 = t1974 * t1482 - t1638 * t2127;
t1830 = t1972 * t1907 + t1971 * t2045;
t1828 = t1972 * t1906 + t1971 * t2047;
t2210 = t1729 * t2146 + t1972 * t2088 - t2031 * t2145;
t1922 = t1924 ^ 2;
t1923 = t1926 ^ 2;
t2201 = pkin(2) * t1975;
t2198 = pkin(3) * t2106;
t1822 = (-qJD(4) + t1956) * t1926 + t2103;
t1825 = -t1869 - t2154;
t1745 = t1822 * t1974 + t1825 * t1978;
t2197 = pkin(3) * t1745;
t2196 = pkin(3) * t1756;
t2195 = pkin(4) * t1974;
t1941 = -t1965 - t2118;
t2049 = -t1906 * t1979 + t1907 * t1975;
t1810 = -t1971 * t1941 + t1972 * t2049;
t1848 = t1906 * t1975 + t1907 * t1979;
t2194 = pkin(7) * (t1810 * t1980 + t1976 * t1848);
t2192 = pkin(8) * t1972;
t2191 = pkin(10) * t1978;
t2190 = t1964 * pkin(2);
t2186 = qJ(6) * t1977;
t2184 = qJD(1) * t1975;
t2177 = t2218 * t1973;
t1859 = t1884 + t1992;
t2167 = t1859 * t1974;
t2166 = t1859 * t1978;
t2162 = t1903 * t1975;
t2161 = t1903 * t1979;
t2153 = t1956 * t1974;
t2152 = t1956 * t1978;
t2147 = t1971 * t1966;
t1614 = t1973 * t1618;
t2137 = t1974 * t1756;
t1911 = t1971 * t1995 + t2189;
t2136 = t1975 * t1911;
t1615 = t1977 * t1618;
t1754 = t1978 * t1756;
t2134 = t1979 * t1911;
t2131 = t1978 * t1482 + t1638 * t2195;
t2130 = -pkin(4) * t1618 + pkin(10) * t1490;
t2129 = pkin(1) * t1810 + t1848 * t2193;
t2124 = qJD(2) * t1972 * t1971;
t2121 = t1975 * t1884;
t2120 = t1979 * t1884;
t1743 = (qJD(5) + t1920) * t1896 + t1984;
t2117 = pkin(4) * t1743 + t1614 + t2348;
t2116 = -pkin(4) * t2224 - t1615 + t2300;
t1808 = t1972 * t1941 + t1971 * t2049;
t2115 = -pkin(1) * t1808 + t1848 * t2192;
t1477 = t1538 * t1973 - t1541 * t1977;
t2091 = -pkin(5) * t1541 + qJ(6) * t1538;
t1449 = -pkin(4) * t1477 - t2091;
t1456 = -pkin(10) * t1477 + (pkin(5) * t1973 - t2186) * t1548;
t2112 = -t1974 * t1449 + t1978 * t1456;
t1515 = pkin(5) * t2221 + t1538;
t1517 = qJ(6) * t2221 + t1541;
t1636 = -t1736 * t1973 - t2176;
t1468 = -pkin(10) * t1636 - t1515 * t1973 + t1517 * t1977;
t2090 = -pkin(5) * t2218 - qJ(6) * t1736;
t1562 = -pkin(4) * t1636 - t2090;
t2111 = t1978 * t1468 - t1974 * t1562;
t1991 = pkin(5) * t1800 + qJ(6) * t2225 + t2080;
t1491 = -t1991 - 0.2e1 * t2182 - t2351;
t1986 = 0.2e1 * qJD(6) * t1898 - t1988;
t1526 = -pkin(5) * t1862 + t1986 + t2269;
t1497 = -pkin(5) * t2175 + t1526 * t1977 - t2349;
t2110 = -t1974 * t1491 + t1978 * t1497;
t1527 = (-t2224 - t1862) * pkin(5) + t1986;
t1499 = -t1527 * t1973 - t2186 * t2224 - t2299;
t1985 = pkin(5) * t2226 + qJ(6) * t2217 - t1541;
t1500 = -t1985 - t2301;
t2109 = t1978 * t1499 - t1974 * t1500;
t1536 = t1552 - t2301;
t1566 = t1614 - t2299;
t2108 = -t1974 * t1536 + t1978 * t1566;
t1537 = t1553 + t2351;
t1570 = t1615 + t2349;
t2107 = -t1974 * t1537 + t1978 * t1570;
t1572 = t1974 * t1659 + t1978 * t1660;
t2102 = -t1958 * t1976 - t1980 * t1959;
t2099 = t1981 * qJD(2) * t2184;
t1640 = -t1736 * t1977 + t2177;
t2098 = pkin(10) * t1640 + t1977 * t1515 + t1973 * t1517 + t2272;
t1642 = t1738 * t1977 + t2177;
t2097 = pkin(10) * t1642 + t1490 + t2272;
t1479 = t1490 * t1974 - t1618 * t1978;
t2096 = -pkin(3) * t1479 - t2130;
t1885 = -t1923 - t2205;
t1791 = t1885 * t1978 - t2167;
t2095 = -pkin(3) * t1791 + t1660;
t1952 = qJDD(1) * t1980 - t1976 * t2208;
t2094 = -pkin(7) * t1952 - g(3) * t1976;
t2092 = t2185 - t2201;
t2086 = pkin(3) * t1820 + t1754;
t2085 = pkin(3) * t2037 - t2137;
t2084 = -t2136 - t2271;
t2083 = t2134 - t2270;
t2079 = -t1461 * t1979 + t1477 * t1975;
t2078 = -t1479 * t1979 + t1489 * t1975;
t2077 = t1756 * t1975 + t1979 * t2106;
t1587 = t1640 * t1974 + t2250;
t2076 = -t1587 * t1979 + t1636 * t1975;
t1588 = t1642 * t1974 + t2250;
t2075 = -t1588 * t1979 + t1638 * t1975;
t1608 = t1978 * t2219 - t2342;
t2072 = -t1608 * t1979 + t2344;
t1620 = t1743 * t1978 + t2342;
t2070 = -t1620 * t1979 - t2344;
t1744 = -t1820 * t1974 + t1978 * t2037;
t1883 = -t1922 + t1923;
t2060 = -t1744 * t1979 + t1883 * t1975;
t1852 = -t1922 - t1923;
t2059 = -t1745 * t1979 + t1852 * t1975;
t1874 = -t2205 - t1922;
t1779 = t1874 * t1974 + t2248;
t2058 = -t1779 * t1979 + t1820 * t1975;
t1782 = -pkin(2) * t1941 + t1793;
t1802 = (-t2019 * t2208 + t2188) * t1971 + t2020;
t1789 = -qJ(3) * t1941 + t1802;
t2057 = t1782 * t1979 + t1789 * t1975;
t2056 = -t1791 * t1979 + t1975 * t2037;
t2055 = t1793 * t1975 - t1802 * t1979;
t1902 = -t1923 + t2205;
t1795 = t1902 * t1978 + t2257;
t2054 = -t1795 * t1979 - t1825 * t1975;
t1901 = t1922 - t2205;
t1796 = t1901 * t1974 + t2166;
t1821 = -t1908 + t2028;
t2053 = -t1796 * t1979 - t1821 * t1975;
t1875 = g(3) * t2145 + t2104;
t2052 = -t1979 * t1875 + t1975 * t1876;
t1790 = t1875 * t1975 + t1876 * t1979;
t2050 = t1905 * t1979 + t2162;
t2044 = t1958 * t1980 - t1976 * t1959;
t2043 = -t2116 - t2330;
t2042 = -pkin(3) * t1620 - t2117;
t2036 = pkin(3) * t1852 - t1572;
t2035 = -pkin(3) * t1779 + t1659;
t2033 = t1970 * t2081;
t2032 = t2204 * t2081;
t1812 = -t1924 * t2153 + t1978 * t2028;
t2030 = t1812 * t1979 - t2121;
t1814 = t1869 * t1974 + t1926 * t2152;
t2029 = -t1814 * t1979 + t2121;
t2026 = (-t1808 * t1971 - t1810 * t1972) * pkin(8);
t2024 = pkin(4) * t2219 + pkin(5) * t2174 + t1973 * t1526 - t2348;
t2023 = -pkin(3) * t1587 - t2098;
t2022 = -pkin(3) * t1588 - t2097;
t2021 = t1977 * t1527 + t2224 * t2298 + t2300;
t2018 = pkin(3) * t1477 - t1978 * t1449 - t1974 * t1456;
t2017 = pkin(3) * t1636 - t1974 * t1468 - t1978 * t1562;
t2016 = -t1978 * t1491 - t1974 * t1497 + t2352;
t2015 = -t1974 * t1499 - t1978 * t1500 + t2302;
t2014 = -t1978 * t1536 - t1974 * t1566 + t2302;
t2013 = -t1978 * t1537 - t1974 * t1570 - t2352;
t1462 = t1478 * t1978 + t1548 * t1974;
t1416 = -t1462 * t2202 + t2018;
t1424 = -qJ(3) * t1462 - t2243;
t1444 = t1461 * t1975 + t1477 * t1979;
t2012 = pkin(8) * t1444 + t1416 * t1979 + t1424 * t1975;
t1480 = t1490 * t1978 + t1618 * t1974;
t1433 = -t1480 * t2202 + t2232;
t1440 = -qJ(3) * t1480 - t2096;
t1457 = t1479 * t1975 + t1489 * t1979;
t2011 = pkin(8) * t1457 + t1433 * t1979 + t1440 * t1975;
t1589 = t1640 * t1978 - t2259;
t1446 = -t1589 * t2202 + t2017;
t1452 = -qJ(3) * t1589 - t2023;
t1543 = t1587 * t1975 + t1636 * t1979;
t2010 = pkin(8) * t1543 + t1446 * t1979 + t1452 * t1975;
t1610 = -t1974 * t2219 - t2341;
t1448 = -t1610 * t2202 + t2016;
t1998 = -pkin(3) * t1608 - t2024;
t1469 = -qJ(3) * t1610 - t1998;
t1563 = t1608 * t1975 + t2343;
t2009 = pkin(8) * t1563 + t1448 * t1979 + t1469 * t1975;
t1451 = t2015 - t2316;
t1994 = -t2021 - t2330;
t1470 = -t1994 - t2321;
t2008 = t1451 * t1979 + t1470 * t1975 + t2350;
t1590 = t1642 * t1978 - t2259;
t1454 = -t1590 * t2202 - t2216;
t1460 = -qJ(3) * t1590 - t2022;
t1544 = t1588 * t1975 + t1638 * t1979;
t2007 = pkin(8) * t1544 + t1454 * t1979 + t1460 * t1975;
t1464 = t2014 - t2316;
t1484 = -t2043 - t2321;
t2006 = t1464 * t1979 + t1484 * t1975 + t2350;
t1622 = -t1743 * t1974 + t2341;
t1466 = -t1622 * t2202 + t2013;
t1486 = -qJ(3) * t1622 - t2042;
t1568 = t1620 * t1975 - t2343;
t2005 = pkin(8) * t1568 + t1466 * t1979 + t1486 * t1975;
t1496 = -t1572 * t2202 + t2196;
t1509 = -qJ(3) * t1572 - t2198;
t1549 = t1756 * t1979 - t1975 * t2106;
t2004 = pkin(8) * t1549 + t1496 * t1979 + t1509 * t1975;
t1747 = t1822 * t1978 - t1825 * t1974;
t1523 = -t1747 * t2202 + t2036;
t1644 = -qJ(3) * t1747 + t2197;
t1679 = t1745 * t1975 + t1852 * t1979;
t2003 = pkin(8) * t1679 + t1523 * t1979 + t1644 * t1975;
t1780 = t1874 * t1978 - t2257;
t1577 = -qJ(3) * t1780 - t2035;
t1584 = -t1780 * t2202 + t2086;
t1702 = t1779 * t1975 + t1820 * t1979;
t2002 = pkin(8) * t1702 + t1577 * t1975 + t1584 * t1979;
t1792 = -t1885 * t1974 - t2166;
t1578 = -qJ(3) * t1792 - t2095;
t1594 = -t1792 * t2202 + t2085;
t1705 = t1791 * t1975 + t1979 * t2037;
t2001 = pkin(8) * t1705 + t1578 * t1975 + t1594 * t1979;
t1765 = t2190 + ((qJD(1) * t2193 + (-pkin(2) * qJD(2) + t2203) * t1975) * qJD(1) + t2041) * t1971 + (t1904 + t1905) * qJ(3) + t2114;
t2000 = t1765 * t1975 + t1904 * t2200 + t2271;
t1766 = t1942 + t1957 - t1905 * qJ(3) + (-t1903 + t2039) * pkin(2) - t1911;
t1999 = -qJ(3) * t2162 + t1766 * t1979 + t2270;
t1703 = t1793 * t1979 + t1802 * t1975;
t1794 = t2190 + ((qJD(2) * t2092 + t1975 * t2203 + t2228) * qJD(1) + t2041) * t1971 + t2038;
t1993 = pkin(8) * t1703 + t1794 * t2093;
t1951 = t1976 * qJDD(1) + t1980 * t2208;
t1949 = t1972 * t1966;
t1940 = t1965 - t2118;
t1936 = -pkin(7) * t1951 + g(3) * t1980;
t1910 = (t2033 + t2032) * t1971;
t1900 = t1979 * t1935 - t1971 * t2032;
t1899 = -t1971 * t2033 + t1975 * t2039;
t1880 = t1910 * t1980 + t1976 * t2147;
t1879 = t1976 * t1910 - t1980 * t2147;
t1873 = (t1972 * t1935 + (t2124 + t2233) * qJD(1) * t1979) * t1975;
t1872 = t1935 * t2146 + t1979 * t2099;
t1871 = (-t1971 * t2039 - t2099) * t1979;
t1870 = (t1972 * t1964 + (-0.2e1 * t2124 - t2233) * t2184) * t1979;
t1851 = -pkin(2) * t1906 + qJ(3) * t1907;
t1850 = (-t1924 * t1978 + t1926 * t1974) * t1956;
t1847 = -t1905 * t1975 + t2161;
t1815 = t1869 * t1978 - t1926 * t2153;
t1813 = t1924 * t2152 + t1974 * t2028;
t1811 = t1975 * t1849 + t1979 * t1992;
t1809 = -t1971 * t1940 + t1972 * t2050;
t1807 = t1972 * t1940 + t1971 * t2050;
t1806 = -t1976 * t1873 + t1900 * t1980;
t1805 = -t1976 * t1870 + t1899 * t1980;
t1804 = t1873 * t1980 + t1976 * t1900;
t1803 = t1870 * t1980 + t1976 * t1899;
t1798 = t1901 * t1978 - t2167;
t1797 = -t1902 * t1974 + t2248;
t1767 = pkin(2) * t2220 - qJ(3) * t1939 + t1802;
t1764 = t1814 * t1975 + t2120;
t1763 = -t1812 * t1975 - t2120;
t1762 = t1971 * t1911 + t1972 * t2052;
t1761 = -t1972 * t1911 + t1971 * t2052;
t1760 = -pkin(2) * t1919 + qJ(3) * t1934 + t1793;
t1753 = -t1971 * t1850 + t1972 * t2242;
t1752 = t1972 * t1850 + t1971 * t2242;
t1751 = -t1976 * t1809 + t1847 * t1980;
t1749 = t1809 * t1980 + t1976 * t1847;
t1748 = pkin(7) * (-t1976 * t1810 + t1848 * t1980);
t1746 = -t1820 * t1978 - t1974 * t2037;
t1716 = t1796 * t1975 - t1821 * t1979;
t1715 = t1795 * t1975 - t1825 * t1979;
t1706 = -t2136 - t2325;
t1704 = -pkin(2) * t1802 + qJ(3) * t1793;
t1701 = -t2134 - t2324;
t1700 = t1971 * t1875 + t1972 * t2083 - t2304;
t1699 = -t1972 * t1875 + t1971 * t2083 + t2303;
t1692 = t1744 * t1975 + t1883 * t1979;
t1691 = t1971 * t1876 + t1972 * t2084 - t2306;
t1690 = -t1972 * t1876 + t1971 * t2084 + t2305;
t1683 = -t1971 * t1815 + t1972 * t2029;
t1682 = -t1971 * t1813 + t1972 * t2030;
t1681 = t1972 * t1815 + t1971 * t2029;
t1680 = t1972 * t1813 + t1971 * t2030;
t1678 = pkin(1) * t1762 + t1790 * t2193;
t1677 = -pkin(1) * t1761 + t1790 * t2192;
t1668 = t1790 * t1972 + t2115;
t1667 = t1790 * t1971 + t2129;
t1666 = -t1971 * t1798 + t1972 * t2053;
t1665 = -t1971 * t1797 + t1972 * t2054;
t1664 = t1972 * t1798 + t1971 * t2053;
t1663 = t1972 * t1797 + t1971 * t2054;
t1662 = (-t1761 * t1971 - t1762 * t1972) * pkin(8);
t1661 = t2026 - t2052;
t1656 = t1971 * t1794 + t1972 * t2055;
t1655 = -t1972 * t1794 + t1971 * t2055;
t1654 = -t1971 * t1792 + t1972 * t2056;
t1653 = t1972 * t1792 + t1971 * t2056;
t1647 = -t1971 * t1780 + t1972 * t2058;
t1646 = t1972 * t1780 + t1971 * t2058;
t1645 = -qJ(3) * t2161 - t1975 * t1766 + t2325;
t1643 = t1979 * t1765 - t1904 * t2201 + t2324;
t1613 = -t1971 * t1746 + t1972 * t2060;
t1612 = t1972 * t1746 + t1971 * t2060;
t1607 = -t1971 * t1747 + t1972 * t2059;
t1606 = t1972 * t1747 + t1971 * t2059;
t1605 = -t1975 * t1782 + t1979 * t1789 + t2026;
t1604 = -t1971 * t1767 + t1972 * t1999 + t2304;
t1603 = t1972 * t1767 + t1971 * t1999 - t2303;
t1593 = qJ(3) * t2037 - t1791 * t2202 + t1754;
t1592 = -t1971 * t1760 + t1972 * t2000 + t2306;
t1591 = t1972 * t1760 + t1971 * t2000 - t2305;
t1586 = -t1971 * t1851 + t1972 * t2057 + t2115;
t1585 = t1972 * t1851 + t1971 * t2057 + t2129;
t1583 = qJ(3) * t1820 - t1779 * t2202 + t2137;
t1542 = t2092 * t1794 + (-t1655 * t1971 - t1656 * t1972) * pkin(8);
t1540 = -pkin(1) * t1655 - t1971 * t1704 + t1972 * t1993;
t1539 = pkin(1) * t1656 + t1972 * t1704 + t1971 * t1993;
t1522 = qJ(3) * t1852 - t1745 * t2202 + t2106;
t1520 = -t1971 * t1622 + t1972 * t2070;
t1518 = t1972 * t1622 + t1971 * t2070;
t1512 = -t1971 * t1610 + t1972 * t2072;
t1510 = t1972 * t1610 + t1971 * t2072;
t1504 = -t1971 * t1590 + t1972 * t2075;
t1503 = -t1971 * t1589 + t1972 * t2076;
t1502 = t1972 * t1590 + t1971 * t2075;
t1501 = t1972 * t1589 + t1971 * t2076;
t1495 = qJ(3) * t1756 + t2106 * t2202;
t1493 = -t1971 * t1572 + t1972 * t2077;
t1492 = t1972 * t1572 + t1971 * t2077;
t1487 = t1489 * t2195;
t1485 = t1979 * t1578 - t1975 * t1594 + (-t1653 * t1971 - t1654 * t1972) * pkin(8);
t1483 = t1979 * t1577 - t1975 * t1584 + (-t1646 * t1971 - t1647 * t1972) * pkin(8);
t1475 = -pkin(1) * t1653 - t1971 * t1593 + t1972 * t2001;
t1474 = pkin(1) * t1654 + t1972 * t1593 + t1971 * t2001;
t1473 = -pkin(1) * t1646 - t1971 * t1583 + t1972 * t2002;
t1472 = pkin(1) * t1647 + t1972 * t1583 + t1971 * t2002;
t1471 = -t1975 * t1523 + t1979 * t1644 + (-t1606 * t1971 - t1607 * t1972) * pkin(8);
t1465 = -t1620 * t2202 + t2107 - t2347;
t1463 = t2108 + t2307;
t1459 = -pkin(1) * t1606 - t1971 * t1522 + t1972 * t2003;
t1458 = pkin(1) * t1607 + t1972 * t1522 + t1971 * t2003;
t1453 = qJ(3) * t1638 - t1588 * t2202 + t2131;
t1450 = t2109 + t2307;
t1447 = -t1608 * t2202 + t2110 + t2347;
t1445 = qJ(3) * t1636 - t1587 * t2202 + t2111;
t1443 = -t1971 * t1480 + t1972 * t2078;
t1442 = t1972 * t1480 + t1971 * t2078;
t1441 = -t1975 * t1496 + t1979 * t1509 + (-t1492 * t1971 - t1493 * t1972) * pkin(8);
t1439 = -pkin(1) * t1492 - t1971 * t1495 + t1972 * t2004;
t1438 = pkin(1) * t1493 + t1972 * t1495 + t1971 * t2004;
t1437 = -t1975 * t1466 + t1979 * t1486 + (-t1518 * t1971 - t1520 * t1972) * pkin(8);
t1436 = -t1975 * t1464 + t1979 * t1484 + t2353;
t1435 = -t1971 * t1462 + t1972 * t2079;
t1434 = t1972 * t1462 + t1971 * t2079;
t1432 = t1487 + (qJ(3) - t2191) * t1489 - t2202 * t1479;
t1431 = -t1975 * t1451 + t1979 * t1470 + t2353;
t1430 = -t1975 * t1448 + t1979 * t1469 + (-t1510 * t1971 - t1512 * t1972) * pkin(8);
t1429 = -pkin(1) * t1518 - t1971 * t1465 + t1972 * t2005;
t1428 = pkin(1) * t1520 + t1972 * t1465 + t1971 * t2005;
t1427 = -t1971 * t1463 + t1972 * t2006 - t2360;
t1426 = t1972 * t1463 + t1971 * t2006 + t2361;
t1425 = -t1975 * t1454 + t1979 * t1460 + (-t1502 * t1971 - t1504 * t1972) * pkin(8);
t1423 = -t1975 * t1446 + t1979 * t1452 + (-t1501 * t1971 - t1503 * t1972) * pkin(8);
t1422 = -t1971 * t1450 + t1972 * t2008 - t2360;
t1421 = t1972 * t1450 + t1971 * t2008 + t2361;
t1420 = -pkin(1) * t1510 - t1971 * t1447 + t1972 * t2009;
t1419 = pkin(1) * t1512 + t1972 * t1447 + t1971 * t2009;
t1418 = -pkin(1) * t1502 - t1971 * t1453 + t1972 * t2007;
t1417 = pkin(1) * t1504 + t1972 * t1453 + t1971 * t2007;
t1415 = qJ(3) * t1477 - t1461 * t2202 + t2112;
t1414 = -pkin(1) * t1501 - t1971 * t1445 + t1972 * t2010;
t1413 = pkin(1) * t1503 + t1972 * t1445 + t1971 * t2010;
t1412 = -t1975 * t1433 + t1979 * t1440 + (-t1442 * t1971 - t1443 * t1972) * pkin(8);
t1411 = -pkin(1) * t1442 - t1971 * t1432 + t1972 * t2011;
t1410 = pkin(1) * t1443 + t1972 * t1432 + t1971 * t2011;
t1409 = -t1975 * t1416 + t1979 * t1424 + (-t1434 * t1971 - t1435 * t1972) * pkin(8);
t1408 = -pkin(1) * t1434 - t1971 * t1415 + t1972 * t2012;
t1407 = pkin(1) * t1435 + t1972 * t1415 + t1971 * t2012;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1952, 0, -t1951, 0, t2094, -t1936, -t2044, -pkin(7) * t2044, t1806, t1751, -t2286, t1805, -t2284, t1880, -t1976 * t1700 + t1980 * t1706 - t2329, -t1976 * t1691 + t1980 * t1701 - t2327, t1661 * t1980 - t1976 * t1668 - t2194, t1980 * t1662 - t1976 * t1677 - pkin(7) * (t1762 * t1980 + t1976 * t1790), t1880, t2286, t2284, t1806, t1751, t1805, -t1976 * t1586 + t1605 * t1980 - t2194, -t1976 * t1604 + t1980 * t1645 + t2329, -t1976 * t1592 + t1980 * t1643 + t2327, t1980 * t1542 - t1976 * t1540 - pkin(7) * (t1656 * t1980 + t1976 * t1703), -t1976 * t1683 + t1764 * t1980, -t1976 * t1613 + t1692 * t1980, -t1976 * t1665 + t1715 * t1980, -t1976 * t1682 + t1763 * t1980, -t1976 * t1666 + t1716 * t1980, -t1976 * t1753 + t1811 * t1980, t1980 * t1483 - t1976 * t1473 - pkin(7) * (t1647 * t1980 + t1976 * t1702), t1980 * t1485 - t1976 * t1475 - pkin(7) * (t1654 * t1980 + t1976 * t1705), t1980 * t1471 - t1976 * t1459 - pkin(7) * (t1607 * t1980 + t1976 * t1679), t1980 * t1441 - t1976 * t1439 - pkin(7) * (t1493 * t1980 + t1976 * t1549), t2234, t2375, t2363, t2313, t2373, t2312, -t1976 * t1427 + t1980 * t1436 - t2354, t1980 * t1437 - t1976 * t1429 - pkin(7) * (t1520 * t1980 + t1976 * t1568), t1980 * t1425 - t1976 * t1418 - pkin(7) * (t1504 * t1980 + t1976 * t1544), t1980 * t1412 - t1976 * t1411 - pkin(7) * (t1443 * t1980 + t1976 * t1457), t2234, t2363, -t2375, t2312, -t2373, t2313, -t1976 * t1422 + t1980 * t1431 - t2354, t1980 * t1423 - t1976 * t1414 - pkin(7) * (t1503 * t1980 + t1976 * t1543), t1980 * t1430 - t1976 * t1420 - pkin(7) * (t1512 * t1980 + t1976 * t1563), t1980 * t1409 - t1976 * t1408 - pkin(7) * (t1435 * t1980 + t1976 * t1444); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1951, 0, t1952, 0, t1936, t2094, t2102, pkin(7) * t2102, t1804, t1749, t2285, t1803, t2283, t1879, t1980 * t1700 + t1976 * t1706 - t2328, t1980 * t1691 + t1976 * t1701 - t2326, t1976 * t1661 + t1668 * t1980 + t1748, t1976 * t1662 + t1980 * t1677 + pkin(7) * (-t1976 * t1762 + t1790 * t1980), t1879, -t2285, -t2283, t1804, t1749, t1803, t1586 * t1980 + t1976 * t1605 + t1748, t1980 * t1604 + t1976 * t1645 + t2328, t1980 * t1592 + t1976 * t1643 + t2326, t1976 * t1542 + t1980 * t1540 + pkin(7) * (-t1976 * t1656 + t1703 * t1980), t1683 * t1980 + t1976 * t1764, t1613 * t1980 + t1976 * t1692, t1665 * t1980 + t1976 * t1715, t1682 * t1980 + t1976 * t1763, t1666 * t1980 + t1976 * t1716, t1753 * t1980 + t1976 * t1811, t1976 * t1483 + t1980 * t1473 + pkin(7) * (-t1976 * t1647 + t1702 * t1980), t1976 * t1485 + t1980 * t1475 + pkin(7) * (-t1976 * t1654 + t1705 * t1980), t1976 * t1471 + t1980 * t1459 + pkin(7) * (-t1976 * t1607 + t1679 * t1980), t1976 * t1441 + t1980 * t1439 + pkin(7) * (-t1976 * t1493 + t1549 * t1980), t2235, -t2374, t2362, t2309, -t2372, t2308, t1980 * t1427 + t1976 * t1436 + t2355, t1976 * t1437 + t1980 * t1429 + pkin(7) * (-t1976 * t1520 + t1568 * t1980), t1976 * t1425 + t1980 * t1418 + pkin(7) * (-t1976 * t1504 + t1544 * t1980), t1976 * t1412 + t1980 * t1411 + pkin(7) * (-t1976 * t1443 + t1457 * t1980), t2235, t2362, t2374, t2308, t2372, t2309, t1980 * t1422 + t1976 * t1431 + t2355, t1976 * t1423 + t1980 * t1414 + pkin(7) * (-t1976 * t1503 + t1543 * t1980), t1976 * t1430 + t1980 * t1420 + pkin(7) * (-t1976 * t1512 + t1563 * t1980), t1976 * t1409 + t1980 * t1408 + pkin(7) * (-t1976 * t1435 + t1444 * t1980); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1958, t1959, 0, 0, t1872, t1807, t1828, t1871, t1830, t1949, t1699, t1690, t1667, t1678, t1949, -t1828, -t1830, t1872, t1807, t1871, t1585, t1603, t1591, t1539, t1681, t1612, t1663, t1680, t1664, t1752, t1472, t1474, t1458, t1438, t2210, -t1505, t2357, t2279, -t1530, t2280, t1426, t1428, t1417, t1410, t2210, t2357, t1505, t2280, t1530, t2279, t1421, t1413, t1419, t1407; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t2208, 0, 0, -g(3), -t1958, 0, t1900, t1847, t1886, t1899, -t1889, t1910, t1706, t1701, t1661, t1662, t1910, -t1886, t1889, t1900, t1847, t1899, t1605, t1645, t1643, t1542, t1764, t1692, t1715, t1763, t1716, t1811, t1483, t1485, t1471, t1441, t2215, t1546, t2332, t2239, t1576, t2236, t1436, t1437, t1425, t1412, t2215, t2332, -t1546, t2236, -t1576, t2239, t1431, t1423, t1430, t1409; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2208, 0, qJDD(1), 0, g(3), 0, -t1959, 0, t1873, t1809, t1834, t1870, t1836, -t2147, t1700, t1691, t1668, t1677, -t2147, -t1834, -t1836, t1873, t1809, t1870, t1586, t1604, t1592, t1540, t1683, t1613, t1665, t1682, t1666, t1753, t1473, t1475, t1459, t1439, t2209, -t1507, t2356, t2277, -t1534, t2278, t1427, t1429, t1418, t1411, t2209, t2356, t1507, t2278, t1534, t2277, t1422, t1414, t1420, t1408; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1958, t1959, 0, 0, t1872, t1807, t1828, t1871, t1830, t1949, t1699, t1690, t1667, t1678, t1949, -t1828, -t1830, t1872, t1807, t1871, t1585, t1603, t1591, t1539, t1681, t1612, t1663, t1680, t1664, t1752, t1472, t1474, t1458, t1438, t2210, -t1505, t2357, t2279, -t1530, t2280, t1426, t1428, t1417, t1410, t2210, t2357, t1505, t2280, t1530, t2279, t1421, t1413, t1419, t1407; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1935, t1903, -t2220, -t1945, t1938, t1945, 0, -t1911, t1875, 0, t1945, t2220, -t1938, t1935, t1903, -t1945, t1789, -qJ(3) * t1903, t1765, qJ(3) * t1794, t1884, t1883, -t1825, -t1884, -t1821, t1992, t1577, t1578, t1644, t1509, t1729, t1637, t2290, t1726, t1710, -t2227, t1484, t1486, t1460, t1440, t1729, t2290, -t1637, -t2227, -t1710, t1726, t1470, t1452, t1469, t1424; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1944, t1905, t1937, -t2039, t1934, -t1944, t1911, 0, t1876, 0, -t1944, -t1937, -t1934, t1944, t1905, -t2039, t1782, t1766, pkin(2) * t1904, pkin(2) * t1794, -t1814, -t1744, -t1795, t1812, -t1796, -t1849, t1584, t1594, t1523, t1496, -t2031, -t1600, -t2315, -t2214, -t1627, -t2213, t1464, t1466, t1454, t1433, -t2031, -t2315, t1600, -t2213, t1627, -t2214, t1451, t1446, t1448, t1416; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1954, t1940, t1906, t1954, t1907, t1966, -t1875, -t1876, 0, 0, t1966, -t1906, -t1907, -t1954, t1940, t1954, t1851, t1767, t1760, t1704, t1815, t1746, t1797, t1813, t1798, t1850, t1583, t1593, t1522, t1495, t2088, t1602, t2311, t2212, t1631, t2211, t1463, t1465, t1453, t1432, t2088, t2311, -t1602, t2211, -t1631, t2212, t1450, t1445, t1447, t1415; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1966, -t1906, -t1907, -t1954, t1940, t1954, 0, t1802, t1793, 0, t1815, t1746, t1797, t1813, t1798, t1850, -pkin(9) * t1779 + t2137, -pkin(9) * t1791 + t1754, -pkin(9) * t1745 + t2106, pkin(9) * t2106, t2088, t1602, t2311, t2212, t1631, t2211, t2108 - t2322, -pkin(9) * t1620 + t2107, -pkin(9) * t1588 + t2131, -pkin(9) * t1479 - t1489 * t2191 + t1487, t2088, t2311, -t1602, t2211, -t1631, t2212, t2109 - t2322, -pkin(9) * t1587 + t2111, -pkin(9) * t1608 + t2110, -pkin(9) * t1461 + t2112; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1945, -t2220, t1938, -t1935, -t1903, t1945, -t1802, 0, -t1794, 0, -t1884, -t1883, t1825, t1884, t1821, -t1992, t2035, t2095, -t2197, t2198, -t1729, -t1637, -t2290, -t1726, -t1710, t2227, t2043, t2042, t2022, t2096, -t1729, -t2290, t1637, t2227, t1710, -t1726, t1994, t2023, t1998, t2243; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1944, t1937, t1934, -t1944, -t1905, t2039, -t1793, t1794, 0, 0, t1814, t1744, t1795, -t1812, t1796, t1849, pkin(9) * t1780 - t2086, pkin(9) * t1792 - t2085, pkin(9) * t1747 - t2036, pkin(9) * t1572 - t2196, t2031, t1600, t2315, t2214, t1627, t2213, -t2014 + t2323, pkin(9) * t1622 - t2013, pkin(9) * t1590 + t2216, pkin(9) * t1480 - t2232, t2031, t2315, -t1600, t2213, -t1627, t2214, -t2015 + t2323, pkin(9) * t1589 - t2017, pkin(9) * t1610 - t2016, pkin(9) * t1462 - t2018; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1869, -t1820, t2223, t2154, t1901, -t2154, 0, t1756, t1659, 0, t1730, t1641, t2289, t1987, t1714, t2087, t1566, t1570, t1482, -pkin(10) * t1489, t1730, t2289, -t1641, t2087, -t1714, t1987, t1499, t1468, t1497, t1456; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1908, t2037, t1902, -t2028, t1859, -t1908, -t1756, 0, t1660, 0, -t1844, -t2222, -t2218, t1844, t1736, -t1867, t1536, t1537, -pkin(4) * t1638, -pkin(4) * t1489, -t1844, -t2218, t2222, -t1867, -t1736, t1844, t1500, t1562, t1491, t1449; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1884, t1883, -t1825, -t1884, -t1821, t1992, -t1659, -t1660, 0, 0, t1729, t1637, t2290, t1726, t1710, -t2227, t2116, t2117, t2097, t2130, t1729, t2290, -t1637, -t2227, -t1710, t1726, t2021, t2098, t2024, t1996; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1783, -t2224, t2226, t2163, t1855, -t2163, 0, t1618, t1552, 0, t1783, t2226, t2224, -t2163, -t1855, t2163, -qJ(6) * t2224, t1517, t1526, -qJ(6) * t1548; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1862, t2219, -t1856, -t2027, t2225, -t1862, -t1618, 0, t1553, 0, t1862, -t1856, -t2219, -t1862, -t2225, -t2027, t1527, t1515, pkin(5) * t2219, -pkin(5) * t1548; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1844, t2222, t2218, -t1844, -t1736, t1867, -t1552, -t1553, 0, 0, t1844, t2218, -t2222, t1867, t1736, -t1844, t1985, t2090, t1912 + t1991, t2091; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1783, t2226, t2224, -t2163, -t1855, t2163, 0, t1541, -t1548, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1844, t2218, -t2222, t1867, t1736, -t1844, -t1541, 0, t1538, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1862, t1856, t2219, t1862, t2225, t2027, t1548, -t1538, 0, 0;];
m_new_reg  = t1;