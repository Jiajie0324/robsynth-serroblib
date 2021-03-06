% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRPPR7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 05:59
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRPPR7_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR7_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR7_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPPR7_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPPR7_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPR7_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 05:59:14
% EndTime: 2019-05-07 05:59:21
% DurationCPUTime: 7.63s
% Computational Cost: add. (41697->324), mult. (85535->389), div. (0->0), fcn. (59561->10), ass. (0->229)
t2220 = sin(qJ(2));
t2259 = qJD(1) * t2220;
t2209 = qJD(2) * t2259;
t2224 = cos(qJ(2));
t2242 = t2224 * qJDD(1);
t2238 = -t2209 + t2242;
t2182 = -qJDD(3) + t2238;
t2219 = sin(qJ(3));
t2223 = cos(qJ(3));
t2183 = -qJD(2) * t2223 + t2219 * t2259;
t2185 = t2219 * qJD(2) + t2223 * t2259;
t2250 = t2183 * t2185;
t2141 = t2182 - t2250;
t2181 = t2185 ^ 2;
t2258 = qJD(1) * t2224;
t2206 = -qJD(3) + t2258;
t2263 = t2206 ^ 2;
t2275 = -t2181 - t2263;
t2115 = t2141 * t2219 + t2223 * t2275;
t2221 = sin(qJ(1));
t2294 = t2115 * t2221;
t2225 = cos(qJ(1));
t2293 = t2115 * t2225;
t2117 = t2141 * t2223 - t2219 * t2275;
t2292 = t2117 * t2220;
t2291 = t2117 * t2224;
t2241 = qJD(2) * t2258;
t2243 = t2220 * qJDD(1);
t2233 = t2241 + t2243;
t2232 = -t2219 * qJDD(2) - t2223 * t2233;
t2245 = t2206 + qJD(3);
t2129 = t2183 * t2245 + t2232;
t2231 = t2223 * qJDD(2) - t2219 * t2233;
t2228 = -t2185 * t2245 + t2231;
t2271 = t2129 * t2223 + t2219 * t2228;
t2265 = t2183 ^ 2;
t2140 = t2181 + t2265;
t2270 = -t2129 * t2219 + t2223 * t2228;
t2284 = -t2140 * t2220 + t2224 * t2270;
t2290 = t2221 * t2284 - t2225 * t2271;
t2289 = t2221 * t2271 + t2225 * t2284;
t2142 = t2182 + t2250;
t2273 = -t2263 - t2265;
t2277 = t2142 * t2219 + t2223 * t2273;
t2288 = t2220 * t2277;
t2278 = -t2142 * t2223 + t2219 * t2273;
t2287 = t2221 * t2278;
t2286 = t2224 * t2277;
t2285 = t2225 * t2278;
t2229 = -t2183 * qJD(3) - t2232;
t2127 = t2183 * t2206 + t2229;
t2283 = t2140 * t2224 + t2220 * t2270;
t2199 = qJD(6) + t2206;
t2276 = qJD(6) + t2199;
t2215 = sin(pkin(10));
t2216 = cos(pkin(10));
t2230 = t2185 * qJD(3) - t2231;
t2112 = t2215 * t2230 + t2216 * t2229;
t2156 = -t2216 * t2183 + t2185 * t2215;
t2251 = t2156 * t2206;
t2094 = -t2112 - t2251;
t2269 = qJD(2) ^ 2;
t2274 = -qJDD(2) * pkin(2) - t2269 * pkin(8);
t2272 = t2230 * pkin(3) - qJ(4) * t2127;
t2158 = t2183 * t2215 + t2185 * t2216;
t2218 = sin(qJ(6));
t2222 = cos(qJ(6));
t2119 = t2222 * t2156 + t2158 * t2218;
t2268 = t2119 ^ 2;
t2121 = -t2156 * t2218 + t2158 * t2222;
t2267 = t2121 ^ 2;
t2155 = t2156 ^ 2;
t2266 = t2158 ^ 2;
t2264 = t2199 ^ 2;
t2262 = -2 * qJD(4);
t2261 = -2 * qJD(5);
t2260 = t2224 * g(3);
t2257 = t2119 * t2121;
t2252 = t2156 * t2158;
t2248 = t2206 * t2158;
t2247 = qJD(3) - t2206;
t2246 = qJD(6) - t2199;
t2197 = -g(1) * t2225 - g(2) * t2221;
t2226 = qJD(1) ^ 2;
t2176 = -pkin(1) * t2226 + qJDD(1) * pkin(7) + t2197;
t2168 = -g(3) * t2220 + t2224 * t2176;
t2186 = (-pkin(2) * t2224 - pkin(8) * t2220) * qJD(1);
t2136 = -pkin(2) * t2269 + qJDD(2) * pkin(8) + t2186 * t2258 + t2168;
t2196 = t2221 * g(1) - t2225 * g(2);
t2175 = qJDD(1) * pkin(1) + t2226 * pkin(7) + t2196;
t2187 = 0.2e1 * t2241 + t2243;
t2227 = (-t2238 + t2209) * pkin(2) - t2187 * pkin(8) - t2175;
t2100 = t2223 * t2136 + t2219 * t2227;
t2212 = t2220 ^ 2;
t2213 = t2224 ^ 2;
t2244 = t2212 + t2213;
t2099 = -t2219 * t2136 + t2223 * t2227;
t2159 = pkin(3) * t2183 - qJ(4) * t2185;
t2071 = t2182 * pkin(3) - qJ(4) * t2263 + t2185 * t2159 + qJDD(4) - t2099;
t2058 = pkin(4) * t2142 + qJ(5) * t2129 + t2071;
t2069 = -pkin(3) * t2263 - t2182 * qJ(4) - t2183 * t2159 + t2206 * t2262 + t2100;
t2236 = pkin(4) * t2206 - qJ(5) * t2185;
t2061 = -pkin(4) * t2265 + qJ(5) * t2230 - t2206 * t2236 + t2069;
t2030 = t2215 * t2058 + t2216 * t2061 + t2156 * t2261;
t2240 = -pkin(3) * t2206 + t2262;
t2111 = -t2215 * t2229 + t2216 * t2230;
t2239 = t2222 * t2111 - t2218 * t2112;
t2109 = t2182 - t2252;
t2237 = pkin(5) * t2206 - pkin(9) * t2158;
t2029 = t2216 * t2058 - t2215 * t2061 + t2158 * t2261;
t2167 = -t2220 * t2176 - t2260;
t2235 = -t2218 * t2111 - t2222 * t2112;
t2234 = -qJDD(6) - t2182;
t2135 = t2260 + (qJD(1) * t2186 + t2176) * t2220 + t2274;
t2060 = -t2231 * pkin(4) + t2265 * qJ(5) + t2186 * t2259 - qJDD(5) - t2167 + t2272 + t2274 + (pkin(4) * qJD(3) - t2236 + t2240) * t2185;
t2205 = t2224 * t2226 * t2220;
t2201 = -t2213 * t2226 - t2269;
t2200 = -t2212 * t2226 - t2269;
t2194 = -qJDD(2) + t2205;
t2193 = qJDD(2) + t2205;
t2192 = t2244 * t2226;
t2191 = -qJDD(1) * t2221 - t2225 * t2226;
t2190 = qJDD(1) * t2225 - t2221 * t2226;
t2189 = t2244 * qJDD(1);
t2188 = -0.2e1 * t2209 + t2242;
t2166 = t2194 * t2224 - t2200 * t2220;
t2165 = -t2193 * t2220 + t2201 * t2224;
t2164 = t2194 * t2220 + t2200 * t2224;
t2163 = t2193 * t2224 + t2201 * t2220;
t2134 = -t2263 - t2266;
t2132 = -t2167 * t2220 + t2168 * t2224;
t2131 = t2167 * t2224 + t2168 * t2220;
t2128 = t2183 * t2247 + t2232;
t2125 = t2185 * t2247 - t2231;
t2124 = -t2185 * t2206 + t2230;
t2114 = -t2263 - t2155;
t2110 = -t2182 - t2252;
t2102 = -t2264 - t2267;
t2101 = -t2155 - t2266;
t2093 = -t2112 + t2251;
t2092 = t2111 + t2248;
t2091 = t2111 - t2248;
t2090 = t2124 * t2220 + t2286;
t2089 = t2127 * t2220 + t2291;
t2088 = t2110 * t2216 - t2134 * t2215;
t2087 = -t2124 * t2224 + t2288;
t2086 = -t2127 * t2224 + t2292;
t2085 = t2110 * t2215 + t2134 * t2216;
t2084 = t2125 * t2220 + t2286;
t2083 = t2128 * t2220 - t2291;
t2082 = -t2125 * t2224 + t2288;
t2081 = -t2128 * t2224 - t2292;
t2080 = -t2264 - t2268;
t2079 = t2234 - t2257;
t2078 = -t2234 - t2257;
t2077 = -t2109 * t2215 + t2114 * t2216;
t2076 = t2109 * t2216 + t2114 * t2215;
t2070 = t2240 * t2185 + t2135 + t2272;
t2068 = -t2267 - t2268;
t2067 = -t2099 * t2219 + t2100 * t2223;
t2066 = t2099 * t2223 + t2100 * t2219;
t2065 = t2092 * t2216 - t2094 * t2215;
t2064 = t2092 * t2215 + t2094 * t2216;
t2063 = t2079 * t2222 - t2102 * t2218;
t2062 = t2079 * t2218 + t2102 * t2222;
t2057 = t2067 * t2224 + t2135 * t2220;
t2056 = t2067 * t2220 - t2135 * t2224;
t2053 = t2085 * t2219 + t2088 * t2223;
t2052 = -t2085 * t2223 + t2088 * t2219;
t2051 = t2119 * t2246 + t2235;
t2050 = -t2119 * t2276 - t2235;
t2049 = -t2121 * t2246 + t2239;
t2048 = t2121 * t2276 - t2239;
t2047 = -t2078 * t2218 + t2080 * t2222;
t2046 = t2078 * t2222 + t2080 * t2218;
t2045 = t2076 * t2219 + t2077 * t2223;
t2044 = -t2076 * t2223 + t2077 * t2219;
t2043 = t2069 * t2223 + t2071 * t2219;
t2042 = t2069 * t2219 - t2071 * t2223;
t2041 = t2053 * t2224 + t2093 * t2220;
t2040 = t2053 * t2220 - t2093 * t2224;
t2039 = t2111 * pkin(5) + t2155 * pkin(9) - t2158 * t2237 + t2060;
t2038 = t2045 * t2224 + t2091 * t2220;
t2037 = t2045 * t2220 - t2091 * t2224;
t2036 = t2064 * t2219 + t2065 * t2223;
t2035 = -t2064 * t2223 + t2065 * t2219;
t2034 = -t2062 * t2215 + t2063 * t2216;
t2033 = t2062 * t2216 + t2063 * t2215;
t2032 = t2043 * t2224 + t2070 * t2220;
t2031 = t2043 * t2220 - t2070 * t2224;
t2028 = t2036 * t2224 - t2101 * t2220;
t2027 = t2036 * t2220 + t2101 * t2224;
t2026 = t2049 * t2222 - t2051 * t2218;
t2025 = t2049 * t2218 + t2051 * t2222;
t2024 = -t2046 * t2215 + t2047 * t2216;
t2023 = t2046 * t2216 + t2047 * t2215;
t2022 = -t2155 * pkin(5) + t2111 * pkin(9) - t2206 * t2237 + t2030;
t2021 = t2109 * pkin(5) + pkin(9) * t2094 + t2029;
t2020 = t2033 * t2219 + t2034 * t2223;
t2019 = -t2033 * t2223 + t2034 * t2219;
t2018 = -t2029 * t2215 + t2030 * t2216;
t2017 = t2029 * t2216 + t2030 * t2215;
t2016 = -t2025 * t2215 + t2026 * t2216;
t2015 = t2025 * t2216 + t2026 * t2215;
t2014 = t2023 * t2219 + t2024 * t2223;
t2013 = -t2023 * t2223 + t2024 * t2219;
t2012 = t2020 * t2224 - t2050 * t2220;
t2011 = t2020 * t2220 + t2050 * t2224;
t2010 = t2021 * t2218 + t2022 * t2222;
t2009 = t2021 * t2222 - t2022 * t2218;
t2008 = t2014 * t2224 - t2048 * t2220;
t2007 = t2014 * t2220 + t2048 * t2224;
t2006 = t2017 * t2219 + t2018 * t2223;
t2005 = -t2017 * t2223 + t2018 * t2219;
t2004 = t2015 * t2219 + t2016 * t2223;
t2003 = -t2015 * t2223 + t2016 * t2219;
t2002 = t2006 * t2224 + t2060 * t2220;
t2001 = t2006 * t2220 - t2060 * t2224;
t2000 = t2004 * t2224 - t2068 * t2220;
t1999 = t2004 * t2220 + t2068 * t2224;
t1998 = -t2009 * t2218 + t2010 * t2222;
t1997 = t2009 * t2222 + t2010 * t2218;
t1996 = -t1997 * t2215 + t1998 * t2216;
t1995 = t1997 * t2216 + t1998 * t2215;
t1994 = t1995 * t2219 + t1996 * t2223;
t1993 = -t1995 * t2223 + t1996 * t2219;
t1992 = t1994 * t2224 + t2039 * t2220;
t1991 = t1994 * t2220 - t2039 * t2224;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2191, -t2190, 0, -t2196 * t2221 + t2197 * t2225, 0, 0, 0, 0, 0, 0, t2165 * t2225 - t2188 * t2221, t2166 * t2225 + t2187 * t2221, t2189 * t2225 - t2192 * t2221, t2132 * t2225 - t2175 * t2221, 0, 0, 0, 0, 0, 0, t2084 * t2225 + t2287, t2089 * t2225 + t2294, t2289, t2057 * t2225 + t2066 * t2221, 0, 0, 0, 0, 0, 0, t2090 * t2225 + t2287, t2289, t2083 * t2225 - t2294, t2032 * t2225 + t2042 * t2221, 0, 0, 0, 0, 0, 0, t2038 * t2225 + t2044 * t2221, t2041 * t2225 + t2052 * t2221, t2028 * t2225 + t2035 * t2221, t2002 * t2225 + t2005 * t2221, 0, 0, 0, 0, 0, 0, t2008 * t2225 + t2013 * t2221, t2012 * t2225 + t2019 * t2221, t2000 * t2225 + t2003 * t2221, t1992 * t2225 + t1993 * t2221; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2190, t2191, 0, t2196 * t2225 + t2197 * t2221, 0, 0, 0, 0, 0, 0, t2165 * t2221 + t2188 * t2225, t2166 * t2221 - t2187 * t2225, t2189 * t2221 + t2192 * t2225, t2132 * t2221 + t2175 * t2225, 0, 0, 0, 0, 0, 0, t2084 * t2221 - t2285, t2089 * t2221 - t2293, t2290, t2057 * t2221 - t2066 * t2225, 0, 0, 0, 0, 0, 0, t2090 * t2221 - t2285, t2290, t2083 * t2221 + t2293, t2032 * t2221 - t2042 * t2225, 0, 0, 0, 0, 0, 0, t2038 * t2221 - t2044 * t2225, t2041 * t2221 - t2052 * t2225, t2028 * t2221 - t2035 * t2225, t2002 * t2221 - t2005 * t2225, 0, 0, 0, 0, 0, 0, t2008 * t2221 - t2013 * t2225, t2012 * t2221 - t2019 * t2225, t2000 * t2221 - t2003 * t2225, t1992 * t2221 - t1993 * t2225; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2163, t2164, 0, t2131, 0, 0, 0, 0, 0, 0, t2082, t2086, t2283, t2056, 0, 0, 0, 0, 0, 0, t2087, t2283, t2081, t2031, 0, 0, 0, 0, 0, 0, t2037, t2040, t2027, t2001, 0, 0, 0, 0, 0, 0, t2007, t2011, t1999, t1991; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2226, -qJDD(1), 0, t2197, 0, 0, 0, 0, 0, 0, t2165, t2166, t2189, t2132, 0, 0, 0, 0, 0, 0, t2084, t2089, t2284, t2057, 0, 0, 0, 0, 0, 0, t2090, t2284, t2083, t2032, 0, 0, 0, 0, 0, 0, t2038, t2041, t2028, t2002, 0, 0, 0, 0, 0, 0, t2008, t2012, t2000, t1992; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2226, 0, t2196, 0, 0, 0, 0, 0, 0, t2188, -t2187, t2192, t2175, 0, 0, 0, 0, 0, 0, -t2278, -t2115, -t2271, -t2066, 0, 0, 0, 0, 0, 0, -t2278, -t2271, t2115, -t2042, 0, 0, 0, 0, 0, 0, -t2044, -t2052, -t2035, -t2005, 0, 0, 0, 0, 0, 0, -t2013, -t2019, -t2003, -t1993; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2163, t2164, 0, t2131, 0, 0, 0, 0, 0, 0, t2082, t2086, t2283, t2056, 0, 0, 0, 0, 0, 0, t2087, t2283, t2081, t2031, 0, 0, 0, 0, 0, 0, t2037, t2040, t2027, t2001, 0, 0, 0, 0, 0, 0, t2007, t2011, t1999, t1991; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2201, t2194, t2242, t2168, 0, 0, 0, 0, 0, 0, t2277, t2117, t2270, t2067, 0, 0, 0, 0, 0, 0, t2277, t2270, -t2117, t2043, 0, 0, 0, 0, 0, 0, t2045, t2053, t2036, t2006, 0, 0, 0, 0, 0, 0, t2014, t2020, t2004, t1994; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2193, t2200, -t2243, t2167, 0, 0, 0, 0, 0, 0, -t2125, -t2127, t2140, -t2135, 0, 0, 0, 0, 0, 0, -t2124, t2140, -t2128, -t2070, 0, 0, 0, 0, 0, 0, -t2091, -t2093, t2101, -t2060, 0, 0, 0, 0, 0, 0, t2048, t2050, t2068, -t2039; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2188, t2187, -t2192, -t2175, 0, 0, 0, 0, 0, 0, t2278, t2115, t2271, t2066, 0, 0, 0, 0, 0, 0, t2278, t2271, -t2115, t2042, 0, 0, 0, 0, 0, 0, t2044, t2052, t2035, t2005, 0, 0, 0, 0, 0, 0, t2013, t2019, t2003, t1993; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2273, t2141, t2228, t2100, 0, 0, 0, 0, 0, 0, t2273, t2228, -t2141, t2069, 0, 0, 0, 0, 0, 0, t2077, t2088, t2065, t2018, 0, 0, 0, 0, 0, 0, t2024, t2034, t2016, t1996; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2142, t2275, t2129, t2099, 0, 0, 0, 0, 0, 0, -t2142, t2129, -t2275, -t2071, 0, 0, 0, 0, 0, 0, -t2076, -t2085, -t2064, -t2017, 0, 0, 0, 0, 0, 0, -t2023, -t2033, -t2015, -t1995; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2125, t2127, -t2140, t2135, 0, 0, 0, 0, 0, 0, t2124, -t2140, t2128, t2070, 0, 0, 0, 0, 0, 0, t2091, t2093, -t2101, t2060, 0, 0, 0, 0, 0, 0, -t2048, -t2050, -t2068, t2039; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2273, t2228, -t2141, t2069, 0, 0, 0, 0, 0, 0, t2077, t2088, t2065, t2018, 0, 0, 0, 0, 0, 0, t2024, t2034, t2016, t1996; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2124, -t2140, t2128, t2070, 0, 0, 0, 0, 0, 0, t2091, t2093, -t2101, t2060, 0, 0, 0, 0, 0, 0, -t2048, -t2050, -t2068, t2039; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2142, -t2129, t2275, t2071, 0, 0, 0, 0, 0, 0, t2076, t2085, t2064, t2017, 0, 0, 0, 0, 0, 0, t2023, t2033, t2015, t1995; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2114, t2110, t2092, t2030, 0, 0, 0, 0, 0, 0, t2047, t2063, t2026, t1998; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2109, t2134, t2094, t2029, 0, 0, 0, 0, 0, 0, t2046, t2062, t2025, t1997; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2091, -t2093, t2101, -t2060, 0, 0, 0, 0, 0, 0, t2048, t2050, t2068, -t2039; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2080, t2079, t2049, t2010; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2078, t2102, t2051, t2009; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2048, t2050, t2068, -t2039;];
f_new_reg  = t1;
