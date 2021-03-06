% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRPRRR1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,d6,theta3]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 19:35
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRPRRR1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR1_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR1_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRR1_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRR1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRR1_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 19:35:09
% EndTime: 2019-05-06 19:35:21
% DurationCPUTime: 12.37s
% Computational Cost: add. (116286->342), mult. (281137->484), div. (0->0), fcn. (218072->12), ass. (0->273)
t2273 = cos(qJ(2));
t2258 = t2273 * qJDD(1);
t2268 = sin(qJ(2));
t2315 = qJD(1) * t2268;
t2297 = qJD(2) * t2315;
t2238 = t2258 - t2297;
t2262 = t2273 ^ 2;
t2276 = qJD(1) ^ 2;
t2283 = qJD(2) * pkin(2) - qJ(3) * t2315;
t2269 = sin(qJ(1));
t2274 = cos(qJ(1));
t2246 = t2269 * g(1) - t2274 * g(2);
t2284 = qJDD(1) * pkin(1) + t2246;
t2198 = t2238 * pkin(2) - t2283 * t2315 - qJDD(3) + t2284 + (qJ(3) * t2262 + pkin(7)) * t2276;
t2314 = qJD(1) * t2273;
t2296 = qJD(2) * t2314;
t2299 = t2268 * qJDD(1);
t2237 = t2296 + t2299;
t2263 = sin(pkin(11));
t2264 = cos(pkin(11));
t2216 = -t2237 * t2263 + t2264 * t2238;
t2229 = t2263 * t2315 - t2264 * t2314;
t2228 = t2229 ^ 2;
t2231 = (t2263 * t2273 + t2264 * t2268) * qJD(1);
t2289 = qJD(2) * pkin(3) - pkin(8) * t2231;
t2163 = t2216 * pkin(3) + t2228 * pkin(8) - t2231 * t2289 + t2198;
t2267 = sin(qJ(4));
t2272 = cos(qJ(4));
t2210 = -t2229 * t2267 + t2231 * t2272;
t2217 = t2237 * t2264 + t2238 * t2263;
t2290 = -t2272 * t2216 + t2267 * t2217;
t2170 = -qJD(4) * t2210 - t2290;
t2208 = t2229 * t2272 + t2231 * t2267;
t2207 = t2208 ^ 2;
t2260 = qJD(2) + qJD(4);
t2288 = pkin(4) * t2260 - pkin(9) * t2210;
t2124 = t2170 * pkin(4) + t2207 * pkin(9) - t2210 * t2288 + t2163;
t2266 = sin(qJ(5));
t2271 = cos(qJ(5));
t2181 = t2271 * t2208 + t2210 * t2266;
t2179 = qJD(6) + t2181;
t2326 = qJD(6) + t2179;
t2183 = -t2208 * t2266 + t2210 * t2271;
t2257 = qJD(5) + t2260;
t2265 = sin(qJ(6));
t2270 = cos(qJ(6));
t2174 = t2183 * t2265 - t2270 * t2257;
t2325 = t2174 ^ 2;
t2176 = t2183 * t2270 + t2257 * t2265;
t2324 = t2176 ^ 2;
t2323 = t2179 ^ 2;
t2322 = t2181 ^ 2;
t2321 = t2183 ^ 2;
t2320 = t2210 ^ 2;
t2319 = t2231 ^ 2;
t2318 = t2257 ^ 2;
t2317 = t2260 ^ 2;
t2316 = -2 * qJD(3);
t2313 = qJD(2) * t2229;
t2312 = qJD(2) * t2231;
t2311 = t2174 * t2176;
t2310 = t2181 * t2183;
t2309 = t2208 * t2210;
t2308 = t2229 * t2231;
t2307 = t2260 * t2208;
t2306 = t2262 * t2276;
t2247 = -g(1) * t2274 - g(2) * t2269;
t2234 = -pkin(1) * t2276 + qJDD(1) * pkin(7) + t2247;
t2305 = t2268 * t2234;
t2304 = t2268 * t2276;
t2303 = qJD(4) - t2260;
t2302 = qJD(5) - t2257;
t2301 = qJD(6) - t2179;
t2194 = qJDD(2) * pkin(2) - t2237 * qJ(3) - t2305 + (qJ(3) * qJD(1) * qJD(2) + pkin(2) * t2304 - g(3)) * t2273;
t2223 = -t2268 * g(3) + t2273 * t2234;
t2195 = -pkin(2) * t2306 + t2238 * qJ(3) - qJD(2) * t2283 + t2223;
t2164 = t2264 * t2194 - t2263 * t2195 + t2231 * t2316;
t2203 = -t2217 - t2313;
t2213 = qJDD(2) - t2308;
t2143 = pkin(3) * t2213 + pkin(8) * t2203 + t2164;
t2165 = t2263 * t2194 + t2264 * t2195 + t2229 * t2316;
t2147 = -t2228 * pkin(3) + t2216 * pkin(8) - qJD(2) * t2289 + t2165;
t2119 = t2267 * t2143 + t2272 * t2147;
t2103 = -t2207 * pkin(4) + t2170 * pkin(9) - t2260 * t2288 + t2119;
t2118 = t2272 * t2143 - t2267 * t2147;
t2285 = -t2267 * t2216 - t2272 * t2217;
t2171 = -qJD(4) * t2208 - t2285;
t2298 = qJDD(2) + qJDD(4);
t2185 = t2298 - t2309;
t2278 = (-t2171 - t2307) * pkin(9) + t2185 * pkin(4) + t2118;
t2080 = t2271 * t2103 + t2266 * t2278;
t2261 = t2268 ^ 2;
t2300 = t2261 + t2262;
t2294 = qJDD(5) + t2298;
t2079 = -t2103 * t2266 + t2271 * t2278;
t2286 = -t2266 * t2170 - t2271 * t2171;
t2129 = -qJD(5) * t2181 - t2286;
t2293 = t2257 * t2181 - t2129;
t2292 = -t2265 * t2129 + t2270 * t2294;
t2291 = -t2271 * t2170 + t2266 * t2171;
t2282 = -qJD(5) * t2183 - qJDD(6) - t2291;
t2120 = (qJD(5) + t2257) * t2183 + t2291;
t2281 = -t2270 * t2129 - t2265 * t2294;
t2275 = qJD(2) ^ 2;
t2253 = t2273 * t2304;
t2252 = -t2275 - t2306;
t2251 = -t2261 * t2276 - t2275;
t2245 = -qJDD(2) + t2253;
t2244 = qJDD(2) + t2253;
t2243 = t2300 * t2276;
t2242 = -qJDD(1) * t2269 - t2274 * t2276;
t2241 = qJDD(1) * t2274 - t2269 * t2276;
t2240 = t2300 * qJDD(1);
t2239 = t2258 - 0.2e1 * t2297;
t2236 = 0.2e1 * t2296 + t2299;
t2233 = t2276 * pkin(7) + t2284;
t2224 = -t2275 - t2319;
t2222 = -t2273 * g(3) - t2305;
t2221 = t2245 * t2273 - t2251 * t2268;
t2220 = -t2244 * t2268 + t2252 * t2273;
t2219 = t2245 * t2268 + t2251 * t2273;
t2218 = t2244 * t2273 + t2252 * t2268;
t2214 = -qJDD(2) - t2308;
t2212 = -t2275 - t2228;
t2204 = -t2317 - t2320;
t2202 = t2217 - t2313;
t2201 = t2216 + t2312;
t2200 = -t2216 + t2312;
t2199 = -t2228 - t2319;
t2197 = -t2222 * t2268 + t2223 * t2273;
t2196 = t2222 * t2273 + t2223 * t2268;
t2190 = t2214 * t2264 - t2224 * t2263;
t2189 = t2214 * t2263 + t2224 * t2264;
t2188 = t2212 * t2264 - t2213 * t2263;
t2187 = t2212 * t2263 + t2213 * t2264;
t2186 = -t2298 - t2309;
t2184 = -t2317 - t2207;
t2177 = -t2318 - t2321;
t2173 = t2201 * t2264 - t2203 * t2263;
t2172 = t2201 * t2263 + t2203 * t2264;
t2168 = -t2207 - t2320;
t2167 = -t2189 * t2268 + t2190 * t2273;
t2166 = t2189 * t2273 + t2190 * t2268;
t2162 = t2186 * t2272 - t2204 * t2267;
t2161 = t2186 * t2267 + t2204 * t2272;
t2160 = t2208 * t2303 + t2285;
t2159 = t2171 - t2307;
t2158 = -t2210 * t2303 - t2290;
t2157 = (qJD(4) + t2260) * t2210 + t2290;
t2156 = -t2187 * t2268 + t2188 * t2273;
t2155 = t2187 * t2273 + t2188 * t2268;
t2154 = t2184 * t2272 - t2185 * t2267;
t2153 = t2184 * t2267 + t2185 * t2272;
t2152 = pkin(5) * t2181 - pkin(10) * t2183;
t2151 = -t2294 - t2310;
t2150 = t2294 - t2310;
t2149 = -t2318 - t2322;
t2145 = -t2172 * t2268 + t2173 * t2273;
t2144 = t2172 * t2273 + t2173 * t2268;
t2141 = -t2321 - t2322;
t2140 = -t2323 - t2324;
t2139 = -t2164 * t2263 + t2165 * t2264;
t2138 = t2164 * t2264 + t2165 * t2263;
t2137 = t2151 * t2271 - t2177 * t2266;
t2136 = t2151 * t2266 + t2177 * t2271;
t2135 = -t2323 - t2325;
t2134 = -t2161 * t2263 + t2162 * t2264;
t2133 = t2161 * t2264 + t2162 * t2263;
t2132 = -t2324 - t2325;
t2131 = t2158 * t2272 - t2160 * t2267;
t2130 = t2158 * t2267 + t2160 * t2272;
t2128 = -t2153 * t2263 + t2154 * t2264;
t2127 = t2153 * t2264 + t2154 * t2263;
t2126 = t2149 * t2271 - t2150 * t2266;
t2125 = t2149 * t2266 + t2150 * t2271;
t2123 = t2181 * t2302 + t2286;
t2121 = -t2183 * t2302 - t2291;
t2117 = t2282 - t2311;
t2116 = -t2282 - t2311;
t2115 = -t2138 * t2268 + t2139 * t2273;
t2114 = t2138 * t2273 + t2139 * t2268;
t2113 = -t2136 * t2267 + t2137 * t2272;
t2112 = t2136 * t2272 + t2137 * t2267;
t2111 = -t2133 * t2268 + t2134 * t2273;
t2110 = t2133 * t2273 + t2134 * t2268;
t2109 = t2174 * t2301 + t2281;
t2108 = -t2174 * t2326 - t2281;
t2107 = -t2176 * t2301 + t2292;
t2106 = t2176 * t2326 - t2292;
t2105 = -t2130 * t2263 + t2131 * t2264;
t2104 = t2130 * t2264 + t2131 * t2263;
t2099 = -t2127 * t2268 + t2128 * t2273;
t2098 = t2127 * t2273 + t2128 * t2268;
t2097 = -t2125 * t2267 + t2126 * t2272;
t2096 = t2125 * t2272 + t2126 * t2267;
t2095 = t2117 * t2270 - t2140 * t2265;
t2094 = t2117 * t2265 + t2140 * t2270;
t2093 = -t2116 * t2265 + t2135 * t2270;
t2092 = t2116 * t2270 + t2135 * t2265;
t2091 = t2121 * t2271 - t2123 * t2266;
t2090 = t2121 * t2266 + t2123 * t2271;
t2089 = -t2118 * t2267 + t2119 * t2272;
t2088 = t2118 * t2272 + t2119 * t2267;
t2087 = -t2112 * t2263 + t2113 * t2264;
t2086 = t2112 * t2264 + t2113 * t2263;
t2085 = pkin(5) * t2120 + pkin(10) * t2293 - t2124;
t2084 = t2107 * t2270 - t2109 * t2265;
t2083 = t2107 * t2265 + t2109 * t2270;
t2082 = -t2104 * t2268 + t2105 * t2273;
t2081 = t2104 * t2273 + t2105 * t2268;
t2078 = t2095 * t2271 + t2108 * t2266;
t2077 = t2095 * t2266 - t2108 * t2271;
t2076 = t2093 * t2271 + t2106 * t2266;
t2075 = t2093 * t2266 - t2106 * t2271;
t2074 = -t2096 * t2263 + t2097 * t2264;
t2073 = t2096 * t2264 + t2097 * t2263;
t2072 = t2084 * t2271 + t2132 * t2266;
t2071 = t2084 * t2266 - t2132 * t2271;
t2070 = -pkin(5) * t2318 + pkin(10) * t2294 - t2181 * t2152 + t2080;
t2069 = -pkin(5) * t2294 - pkin(10) * t2318 + t2152 * t2183 - t2079;
t2068 = -t2090 * t2267 + t2091 * t2272;
t2067 = t2090 * t2272 + t2091 * t2267;
t2066 = -t2088 * t2263 + t2089 * t2264;
t2065 = t2088 * t2264 + t2089 * t2263;
t2064 = -t2086 * t2268 + t2087 * t2273;
t2063 = t2086 * t2273 + t2087 * t2268;
t2062 = -t2079 * t2266 + t2080 * t2271;
t2061 = t2079 * t2271 + t2080 * t2266;
t2060 = t2070 * t2270 + t2085 * t2265;
t2059 = -t2070 * t2265 + t2085 * t2270;
t2058 = -t2077 * t2267 + t2078 * t2272;
t2057 = t2077 * t2272 + t2078 * t2267;
t2056 = -t2075 * t2267 + t2076 * t2272;
t2055 = t2075 * t2272 + t2076 * t2267;
t2054 = -t2073 * t2268 + t2074 * t2273;
t2053 = t2073 * t2273 + t2074 * t2268;
t2052 = -t2071 * t2267 + t2072 * t2272;
t2051 = t2071 * t2272 + t2072 * t2267;
t2050 = -t2067 * t2263 + t2068 * t2264;
t2049 = t2067 * t2264 + t2068 * t2263;
t2048 = -t2065 * t2268 + t2066 * t2273;
t2047 = t2065 * t2273 + t2066 * t2268;
t2046 = -t2061 * t2267 + t2062 * t2272;
t2045 = t2061 * t2272 + t2062 * t2267;
t2044 = -t2059 * t2265 + t2060 * t2270;
t2043 = t2059 * t2270 + t2060 * t2265;
t2042 = -t2057 * t2263 + t2058 * t2264;
t2041 = t2057 * t2264 + t2058 * t2263;
t2040 = -t2055 * t2263 + t2056 * t2264;
t2039 = t2055 * t2264 + t2056 * t2263;
t2038 = -t2051 * t2263 + t2052 * t2264;
t2037 = t2051 * t2264 + t2052 * t2263;
t2036 = -t2049 * t2268 + t2050 * t2273;
t2035 = t2049 * t2273 + t2050 * t2268;
t2034 = t2044 * t2271 + t2069 * t2266;
t2033 = t2044 * t2266 - t2069 * t2271;
t2032 = -t2045 * t2263 + t2046 * t2264;
t2031 = t2045 * t2264 + t2046 * t2263;
t2030 = -t2041 * t2268 + t2042 * t2273;
t2029 = t2041 * t2273 + t2042 * t2268;
t2028 = -t2039 * t2268 + t2040 * t2273;
t2027 = t2039 * t2273 + t2040 * t2268;
t2026 = -t2037 * t2268 + t2038 * t2273;
t2025 = t2037 * t2273 + t2038 * t2268;
t2024 = -t2033 * t2267 + t2034 * t2272;
t2023 = t2033 * t2272 + t2034 * t2267;
t2022 = -t2031 * t2268 + t2032 * t2273;
t2021 = t2031 * t2273 + t2032 * t2268;
t2020 = -t2023 * t2263 + t2024 * t2264;
t2019 = t2023 * t2264 + t2024 * t2263;
t2018 = -t2019 * t2268 + t2020 * t2273;
t2017 = t2019 * t2273 + t2020 * t2268;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2242, -t2241, 0, -t2246 * t2269 + t2247 * t2274, 0, 0, 0, 0, 0, 0, t2220 * t2274 - t2239 * t2269, t2221 * t2274 + t2236 * t2269, t2240 * t2274 - t2243 * t2269, t2197 * t2274 - t2233 * t2269, 0, 0, 0, 0, 0, 0, t2156 * t2274 + t2200 * t2269, t2167 * t2274 + t2202 * t2269, t2145 * t2274 + t2199 * t2269, t2115 * t2274 - t2198 * t2269, 0, 0, 0, 0, 0, 0, t2099 * t2274 + t2157 * t2269, t2111 * t2274 + t2159 * t2269, t2082 * t2274 + t2168 * t2269, t2048 * t2274 - t2163 * t2269, 0, 0, 0, 0, 0, 0, t2054 * t2274 + t2120 * t2269, t2064 * t2274 - t2269 * t2293, t2036 * t2274 + t2141 * t2269, t2022 * t2274 - t2124 * t2269, 0, 0, 0, 0, 0, 0, t2028 * t2274 + t2092 * t2269, t2030 * t2274 + t2094 * t2269, t2026 * t2274 + t2083 * t2269, t2018 * t2274 + t2043 * t2269; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2241, t2242, 0, t2246 * t2274 + t2247 * t2269, 0, 0, 0, 0, 0, 0, t2220 * t2269 + t2239 * t2274, t2221 * t2269 - t2236 * t2274, t2240 * t2269 + t2243 * t2274, t2197 * t2269 + t2233 * t2274, 0, 0, 0, 0, 0, 0, t2156 * t2269 - t2200 * t2274, t2167 * t2269 - t2202 * t2274, t2145 * t2269 - t2199 * t2274, t2115 * t2269 + t2198 * t2274, 0, 0, 0, 0, 0, 0, t2099 * t2269 - t2157 * t2274, t2111 * t2269 - t2159 * t2274, t2082 * t2269 - t2168 * t2274, t2048 * t2269 + t2163 * t2274, 0, 0, 0, 0, 0, 0, t2054 * t2269 - t2120 * t2274, t2064 * t2269 + t2274 * t2293, t2036 * t2269 - t2141 * t2274, t2022 * t2269 + t2124 * t2274, 0, 0, 0, 0, 0, 0, t2028 * t2269 - t2092 * t2274, t2030 * t2269 - t2094 * t2274, t2026 * t2269 - t2083 * t2274, t2018 * t2269 - t2043 * t2274; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2218, t2219, 0, t2196, 0, 0, 0, 0, 0, 0, t2155, t2166, t2144, t2114, 0, 0, 0, 0, 0, 0, t2098, t2110, t2081, t2047, 0, 0, 0, 0, 0, 0, t2053, t2063, t2035, t2021, 0, 0, 0, 0, 0, 0, t2027, t2029, t2025, t2017; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2276, -qJDD(1), 0, t2247, 0, 0, 0, 0, 0, 0, t2220, t2221, t2240, t2197, 0, 0, 0, 0, 0, 0, t2156, t2167, t2145, t2115, 0, 0, 0, 0, 0, 0, t2099, t2111, t2082, t2048, 0, 0, 0, 0, 0, 0, t2054, t2064, t2036, t2022, 0, 0, 0, 0, 0, 0, t2028, t2030, t2026, t2018; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2276, 0, t2246, 0, 0, 0, 0, 0, 0, t2239, -t2236, t2243, t2233, 0, 0, 0, 0, 0, 0, -t2200, -t2202, -t2199, t2198, 0, 0, 0, 0, 0, 0, -t2157, -t2159, -t2168, t2163, 0, 0, 0, 0, 0, 0, -t2120, t2293, -t2141, t2124, 0, 0, 0, 0, 0, 0, -t2092, -t2094, -t2083, -t2043; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2218, t2219, 0, t2196, 0, 0, 0, 0, 0, 0, t2155, t2166, t2144, t2114, 0, 0, 0, 0, 0, 0, t2098, t2110, t2081, t2047, 0, 0, 0, 0, 0, 0, t2053, t2063, t2035, t2021, 0, 0, 0, 0, 0, 0, t2027, t2029, t2025, t2017; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2252, t2245, t2258, t2223, 0, 0, 0, 0, 0, 0, t2188, t2190, t2173, t2139, 0, 0, 0, 0, 0, 0, t2128, t2134, t2105, t2066, 0, 0, 0, 0, 0, 0, t2074, t2087, t2050, t2032, 0, 0, 0, 0, 0, 0, t2040, t2042, t2038, t2020; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2244, t2251, -t2299, t2222, 0, 0, 0, 0, 0, 0, t2187, t2189, t2172, t2138, 0, 0, 0, 0, 0, 0, t2127, t2133, t2104, t2065, 0, 0, 0, 0, 0, 0, t2073, t2086, t2049, t2031, 0, 0, 0, 0, 0, 0, t2039, t2041, t2037, t2019; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2239, t2236, -t2243, -t2233, 0, 0, 0, 0, 0, 0, t2200, t2202, t2199, -t2198, 0, 0, 0, 0, 0, 0, t2157, t2159, t2168, -t2163, 0, 0, 0, 0, 0, 0, t2120, -t2293, t2141, -t2124, 0, 0, 0, 0, 0, 0, t2092, t2094, t2083, t2043; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2212, t2214, t2201, t2165, 0, 0, 0, 0, 0, 0, t2154, t2162, t2131, t2089, 0, 0, 0, 0, 0, 0, t2097, t2113, t2068, t2046, 0, 0, 0, 0, 0, 0, t2056, t2058, t2052, t2024; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2213, t2224, t2203, t2164, 0, 0, 0, 0, 0, 0, t2153, t2161, t2130, t2088, 0, 0, 0, 0, 0, 0, t2096, t2112, t2067, t2045, 0, 0, 0, 0, 0, 0, t2055, t2057, t2051, t2023; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2200, t2202, t2199, -t2198, 0, 0, 0, 0, 0, 0, t2157, t2159, t2168, -t2163, 0, 0, 0, 0, 0, 0, t2120, -t2293, t2141, -t2124, 0, 0, 0, 0, 0, 0, t2092, t2094, t2083, t2043; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2184, t2186, t2158, t2119, 0, 0, 0, 0, 0, 0, t2126, t2137, t2091, t2062, 0, 0, 0, 0, 0, 0, t2076, t2078, t2072, t2034; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2185, t2204, t2160, t2118, 0, 0, 0, 0, 0, 0, t2125, t2136, t2090, t2061, 0, 0, 0, 0, 0, 0, t2075, t2077, t2071, t2033; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2157, t2159, t2168, -t2163, 0, 0, 0, 0, 0, 0, t2120, -t2293, t2141, -t2124, 0, 0, 0, 0, 0, 0, t2092, t2094, t2083, t2043; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2149, t2151, t2121, t2080, 0, 0, 0, 0, 0, 0, t2093, t2095, t2084, t2044; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2150, t2177, t2123, t2079, 0, 0, 0, 0, 0, 0, -t2106, -t2108, -t2132, -t2069; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2120, -t2293, t2141, -t2124, 0, 0, 0, 0, 0, 0, t2092, t2094, t2083, t2043; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2135, t2117, t2107, t2060; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2116, t2140, t2109, t2059; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2106, t2108, t2132, t2069;];
f_new_reg  = t1;
