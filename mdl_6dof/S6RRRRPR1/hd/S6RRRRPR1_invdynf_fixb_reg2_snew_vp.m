% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRRPR1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d6,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 19:32
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRRPR1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR1_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR1_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPR1_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPR1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR1_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 19:32:07
% EndTime: 2019-05-07 19:32:19
% DurationCPUTime: 12.77s
% Computational Cost: add. (126335->344), mult. (293198->485), div. (0->0), fcn. (226916->12), ass. (0->276)
t2313 = cos(qJ(2));
t2298 = t2313 * qJDD(1);
t2308 = sin(qJ(2));
t2358 = qJD(1) * t2308;
t2338 = qJD(2) * t2358;
t2276 = t2298 - t2338;
t2302 = t2313 ^ 2;
t2316 = qJD(1) ^ 2;
t2309 = sin(qJ(1));
t2314 = cos(qJ(1));
t2285 = t2309 * g(1) - t2314 * g(2);
t2322 = qJDD(1) * pkin(1) + t2285;
t2323 = qJD(2) * pkin(2) - pkin(8) * t2358;
t2245 = t2276 * pkin(2) - t2323 * t2358 + t2322 + (pkin(8) * t2302 + pkin(7)) * t2316;
t2307 = sin(qJ(3));
t2312 = cos(qJ(3));
t2269 = (t2307 * t2313 + t2308 * t2312) * qJD(1);
t2357 = qJD(1) * t2313;
t2337 = qJD(2) * t2357;
t2341 = t2308 * qJDD(1);
t2275 = t2337 + t2341;
t2330 = t2307 * t2275 - t2312 * t2276;
t2242 = -qJD(3) * t2269 - t2330;
t2267 = t2307 * t2358 - t2312 * t2357;
t2266 = t2267 ^ 2;
t2300 = qJD(2) + qJD(3);
t2328 = pkin(3) * t2300 - pkin(9) * t2269;
t2197 = t2242 * pkin(3) + t2266 * pkin(9) - t2269 * t2328 + t2245;
t2306 = sin(qJ(4));
t2311 = cos(qJ(4));
t2252 = -t2267 * t2306 + t2269 * t2311;
t2324 = -t2312 * t2275 - t2307 * t2276;
t2243 = -qJD(3) * t2267 - t2324;
t2331 = -t2311 * t2242 + t2306 * t2243;
t2199 = -qJD(4) * t2252 - t2331;
t2250 = t2311 * t2267 + t2269 * t2306;
t2249 = t2250 ^ 2;
t2297 = qJD(4) + t2300;
t2327 = pkin(4) * t2297 - qJ(5) * t2252;
t2156 = t2199 * pkin(4) + t2249 * qJ(5) - t2252 * t2327 - qJDD(5) + t2197;
t2303 = sin(pkin(11));
t2304 = cos(pkin(11));
t2219 = t2304 * t2250 + t2252 * t2303;
t2218 = qJD(6) + t2219;
t2369 = qJD(6) + t2218;
t2221 = -t2250 * t2303 + t2252 * t2304;
t2305 = sin(qJ(6));
t2310 = cos(qJ(6));
t2210 = t2221 * t2305 - t2310 * t2297;
t2368 = t2210 ^ 2;
t2212 = t2221 * t2310 + t2297 * t2305;
t2367 = t2212 ^ 2;
t2366 = t2218 ^ 2;
t2365 = t2219 ^ 2;
t2364 = t2221 ^ 2;
t2363 = t2252 ^ 2;
t2362 = t2269 ^ 2;
t2361 = t2297 ^ 2;
t2360 = t2300 ^ 2;
t2359 = -2 * qJD(5);
t2356 = t2210 * t2212;
t2355 = t2219 * t2221;
t2354 = t2221 * t2297;
t2353 = t2250 * t2252;
t2352 = t2267 * t2269;
t2351 = t2297 * t2219;
t2350 = t2297 * t2250;
t2349 = t2300 * t2267;
t2348 = t2302 * t2316;
t2286 = -g(1) * t2314 - g(2) * t2309;
t2271 = -pkin(1) * t2316 + qJDD(1) * pkin(7) + t2286;
t2347 = t2308 * t2271;
t2346 = t2308 * t2316;
t2345 = qJD(3) - t2300;
t2344 = qJD(4) - t2297;
t2343 = qJD(6) - t2218;
t2236 = qJDD(2) * pkin(2) - t2275 * pkin(8) - t2347 + (pkin(8) * qJD(1) * qJD(2) + pkin(2) * t2346 - g(3)) * t2313;
t2262 = -t2308 * g(3) + t2313 * t2271;
t2239 = -pkin(2) * t2348 + t2276 * pkin(8) - qJD(2) * t2323 + t2262;
t2208 = t2312 * t2236 - t2307 * t2239;
t2340 = qJDD(2) + qJDD(3);
t2254 = t2340 - t2352;
t2181 = (-t2243 - t2349) * pkin(9) + t2254 * pkin(3) + t2208;
t2209 = t2307 * t2236 + t2312 * t2239;
t2183 = -t2266 * pkin(3) + t2242 * pkin(9) - t2300 * t2328 + t2209;
t2155 = t2306 * t2181 + t2311 * t2183;
t2301 = t2308 ^ 2;
t2342 = t2301 + t2302;
t2141 = -t2249 * pkin(4) + t2199 * qJ(5) - t2297 * t2327 + t2155;
t2154 = t2311 * t2181 - t2306 * t2183;
t2325 = -t2306 * t2242 - t2311 * t2243;
t2200 = -qJD(4) * t2250 - t2325;
t2336 = qJDD(4) + t2340;
t2223 = t2336 - t2353;
t2318 = (-t2200 - t2350) * qJ(5) + t2223 * pkin(4) + t2154;
t2110 = t2304 * t2141 + t2219 * t2359 + t2303 * t2318;
t2335 = t2303 * t2141 - t2304 * t2318;
t2167 = t2199 * t2303 + t2200 * t2304;
t2334 = -t2167 + t2351;
t2333 = -t2305 * t2167 + t2310 * t2336;
t2332 = -t2304 * t2199 + t2200 * t2303;
t2326 = -qJDD(6) - t2332;
t2157 = t2332 + t2354;
t2321 = -t2310 * t2167 - t2305 * t2336;
t2315 = qJD(2) ^ 2;
t2292 = t2313 * t2346;
t2290 = -t2315 - t2348;
t2289 = -t2301 * t2316 - t2315;
t2284 = -qJDD(2) + t2292;
t2283 = qJDD(2) + t2292;
t2282 = t2342 * t2316;
t2281 = -qJDD(1) * t2309 - t2314 * t2316;
t2280 = qJDD(1) * t2314 - t2309 * t2316;
t2278 = t2342 * qJDD(1);
t2277 = t2298 - 0.2e1 * t2338;
t2274 = 0.2e1 * t2337 + t2341;
t2270 = t2316 * pkin(7) + t2322;
t2261 = -t2313 * g(3) - t2347;
t2260 = -t2360 - t2362;
t2259 = t2284 * t2313 - t2289 * t2308;
t2258 = -t2283 * t2308 + t2290 * t2313;
t2257 = t2284 * t2308 + t2289 * t2313;
t2256 = t2283 * t2313 + t2290 * t2308;
t2255 = -t2340 - t2352;
t2253 = -t2360 - t2266;
t2244 = -t2266 - t2362;
t2241 = -t2361 - t2363;
t2238 = -t2261 * t2308 + t2262 * t2313;
t2237 = t2261 * t2313 + t2262 * t2308;
t2232 = t2255 * t2312 - t2260 * t2307;
t2231 = t2255 * t2307 + t2260 * t2312;
t2230 = t2267 * t2345 + t2324;
t2229 = t2243 - t2349;
t2228 = -t2269 * t2345 - t2330;
t2227 = (qJD(3) + t2300) * t2269 + t2330;
t2226 = t2253 * t2312 - t2254 * t2307;
t2225 = t2253 * t2307 + t2254 * t2312;
t2224 = -t2336 - t2353;
t2222 = -t2361 - t2249;
t2213 = -t2361 - t2364;
t2207 = -t2249 - t2363;
t2206 = t2224 * t2311 - t2241 * t2306;
t2205 = t2224 * t2306 + t2241 * t2311;
t2204 = -t2231 * t2308 + t2232 * t2313;
t2203 = t2231 * t2313 + t2232 * t2308;
t2202 = t2228 * t2312 - t2230 * t2307;
t2201 = t2228 * t2307 + t2230 * t2312;
t2196 = -t2225 * t2308 + t2226 * t2313;
t2195 = t2225 * t2313 + t2226 * t2308;
t2194 = pkin(5) * t2219 - pkin(10) * t2221;
t2193 = t2222 * t2311 - t2223 * t2306;
t2192 = t2222 * t2306 + t2223 * t2311;
t2191 = -t2336 - t2355;
t2190 = t2336 - t2355;
t2189 = -t2361 - t2365;
t2187 = t2250 * t2344 + t2325;
t2186 = t2200 - t2350;
t2185 = -t2252 * t2344 - t2331;
t2184 = (qJD(4) + t2297) * t2252 + t2331;
t2179 = -t2208 * t2307 + t2209 * t2312;
t2178 = t2208 * t2312 + t2209 * t2307;
t2177 = -t2364 - t2365;
t2176 = -t2366 - t2367;
t2175 = t2191 * t2304 - t2213 * t2303;
t2174 = t2191 * t2303 + t2213 * t2304;
t2173 = -t2366 - t2368;
t2172 = -t2205 * t2307 + t2206 * t2312;
t2171 = t2205 * t2312 + t2206 * t2307;
t2170 = -t2367 - t2368;
t2169 = -t2201 * t2308 + t2202 * t2313;
t2168 = t2201 * t2313 + t2202 * t2308;
t2166 = -t2192 * t2307 + t2193 * t2312;
t2165 = t2192 * t2312 + t2193 * t2307;
t2164 = t2189 * t2304 - t2190 * t2303;
t2163 = t2189 * t2303 + t2190 * t2304;
t2162 = t2185 * t2311 - t2187 * t2306;
t2161 = t2185 * t2306 + t2187 * t2311;
t2160 = -t2167 - t2351;
t2158 = -t2332 + t2354;
t2153 = -t2178 * t2308 + t2179 * t2313;
t2152 = t2178 * t2313 + t2179 * t2308;
t2151 = t2326 - t2356;
t2150 = -t2326 - t2356;
t2149 = -t2174 * t2306 + t2175 * t2311;
t2148 = t2174 * t2311 + t2175 * t2306;
t2147 = -t2171 * t2308 + t2172 * t2313;
t2146 = t2171 * t2313 + t2172 * t2308;
t2145 = t2210 * t2343 + t2321;
t2144 = -t2210 * t2369 - t2321;
t2143 = -t2212 * t2343 + t2333;
t2142 = t2212 * t2369 - t2333;
t2139 = -t2165 * t2308 + t2166 * t2313;
t2138 = t2165 * t2313 + t2166 * t2308;
t2135 = -t2163 * t2306 + t2164 * t2311;
t2134 = t2163 * t2311 + t2164 * t2306;
t2133 = t2151 * t2310 - t2176 * t2305;
t2132 = t2151 * t2305 + t2176 * t2310;
t2131 = -t2161 * t2307 + t2162 * t2312;
t2130 = t2161 * t2312 + t2162 * t2307;
t2129 = -t2150 * t2305 + t2173 * t2310;
t2128 = t2150 * t2310 + t2173 * t2305;
t2127 = t2158 * t2304 - t2160 * t2303;
t2126 = t2158 * t2303 + t2160 * t2304;
t2125 = -t2154 * t2306 + t2155 * t2311;
t2124 = t2154 * t2311 + t2155 * t2306;
t2123 = -t2148 * t2307 + t2149 * t2312;
t2122 = t2148 * t2312 + t2149 * t2307;
t2121 = t2143 * t2310 - t2145 * t2305;
t2120 = t2143 * t2305 + t2145 * t2310;
t2119 = pkin(5) * t2157 + pkin(10) * t2334 - t2156;
t2118 = t2133 * t2304 + t2144 * t2303;
t2117 = t2133 * t2303 - t2144 * t2304;
t2116 = t2129 * t2304 + t2142 * t2303;
t2115 = t2129 * t2303 - t2142 * t2304;
t2114 = -t2134 * t2307 + t2135 * t2312;
t2113 = t2134 * t2312 + t2135 * t2307;
t2112 = t2121 * t2304 + t2170 * t2303;
t2111 = t2121 * t2303 - t2170 * t2304;
t2109 = t2221 * t2359 - t2335;
t2108 = -t2130 * t2308 + t2131 * t2313;
t2107 = t2130 * t2313 + t2131 * t2308;
t2106 = -t2126 * t2306 + t2127 * t2311;
t2105 = t2126 * t2311 + t2127 * t2306;
t2104 = -pkin(5) * t2361 + pkin(10) * t2336 - t2219 * t2194 + t2110;
t2103 = -t2336 * pkin(5) - t2361 * pkin(10) + ((2 * qJD(5)) + t2194) * t2221 + t2335;
t2102 = -t2124 * t2307 + t2125 * t2312;
t2101 = t2124 * t2312 + t2125 * t2307;
t2100 = -t2122 * t2308 + t2123 * t2313;
t2099 = t2122 * t2313 + t2123 * t2308;
t2098 = -t2117 * t2306 + t2118 * t2311;
t2097 = t2117 * t2311 + t2118 * t2306;
t2096 = -t2115 * t2306 + t2116 * t2311;
t2095 = t2115 * t2311 + t2116 * t2306;
t2094 = -t2113 * t2308 + t2114 * t2313;
t2093 = t2113 * t2313 + t2114 * t2308;
t2092 = t2104 * t2310 + t2119 * t2305;
t2091 = -t2104 * t2305 + t2119 * t2310;
t2090 = -t2111 * t2306 + t2112 * t2311;
t2089 = t2111 * t2311 + t2112 * t2306;
t2088 = -t2109 * t2303 + t2110 * t2304;
t2087 = t2109 * t2304 + t2110 * t2303;
t2086 = -t2105 * t2307 + t2106 * t2312;
t2085 = t2105 * t2312 + t2106 * t2307;
t2084 = -t2101 * t2308 + t2102 * t2313;
t2083 = t2101 * t2313 + t2102 * t2308;
t2082 = -t2097 * t2307 + t2098 * t2312;
t2081 = t2097 * t2312 + t2098 * t2307;
t2080 = -t2095 * t2307 + t2096 * t2312;
t2079 = t2095 * t2312 + t2096 * t2307;
t2078 = -t2091 * t2305 + t2092 * t2310;
t2077 = t2091 * t2310 + t2092 * t2305;
t2076 = -t2089 * t2307 + t2090 * t2312;
t2075 = t2089 * t2312 + t2090 * t2307;
t2074 = -t2087 * t2306 + t2088 * t2311;
t2073 = t2087 * t2311 + t2088 * t2306;
t2072 = -t2085 * t2308 + t2086 * t2313;
t2071 = t2085 * t2313 + t2086 * t2308;
t2070 = t2078 * t2304 + t2103 * t2303;
t2069 = t2078 * t2303 - t2103 * t2304;
t2068 = -t2081 * t2308 + t2082 * t2313;
t2067 = t2081 * t2313 + t2082 * t2308;
t2066 = -t2079 * t2308 + t2080 * t2313;
t2065 = t2079 * t2313 + t2080 * t2308;
t2064 = -t2075 * t2308 + t2076 * t2313;
t2063 = t2075 * t2313 + t2076 * t2308;
t2062 = -t2073 * t2307 + t2074 * t2312;
t2061 = t2073 * t2312 + t2074 * t2307;
t2060 = -t2069 * t2306 + t2070 * t2311;
t2059 = t2069 * t2311 + t2070 * t2306;
t2058 = -t2061 * t2308 + t2062 * t2313;
t2057 = t2061 * t2313 + t2062 * t2308;
t2056 = -t2059 * t2307 + t2060 * t2312;
t2055 = t2059 * t2312 + t2060 * t2307;
t2054 = -t2055 * t2308 + t2056 * t2313;
t2053 = t2055 * t2313 + t2056 * t2308;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2281, -t2280, 0, -t2285 * t2309 + t2286 * t2314, 0, 0, 0, 0, 0, 0, t2258 * t2314 - t2277 * t2309, t2259 * t2314 + t2274 * t2309, t2278 * t2314 - t2282 * t2309, t2238 * t2314 - t2270 * t2309, 0, 0, 0, 0, 0, 0, t2196 * t2314 + t2227 * t2309, t2204 * t2314 + t2229 * t2309, t2169 * t2314 + t2244 * t2309, t2153 * t2314 - t2245 * t2309, 0, 0, 0, 0, 0, 0, t2139 * t2314 + t2184 * t2309, t2147 * t2314 + t2186 * t2309, t2108 * t2314 + t2207 * t2309, t2084 * t2314 - t2197 * t2309, 0, 0, 0, 0, 0, 0, t2094 * t2314 + t2157 * t2309, t2100 * t2314 - t2309 * t2334, t2072 * t2314 + t2177 * t2309, t2058 * t2314 - t2156 * t2309, 0, 0, 0, 0, 0, 0, t2066 * t2314 + t2128 * t2309, t2068 * t2314 + t2132 * t2309, t2064 * t2314 + t2120 * t2309, t2054 * t2314 + t2077 * t2309; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2280, t2281, 0, t2285 * t2314 + t2286 * t2309, 0, 0, 0, 0, 0, 0, t2258 * t2309 + t2277 * t2314, t2259 * t2309 - t2274 * t2314, t2278 * t2309 + t2282 * t2314, t2238 * t2309 + t2270 * t2314, 0, 0, 0, 0, 0, 0, t2196 * t2309 - t2227 * t2314, t2204 * t2309 - t2229 * t2314, t2169 * t2309 - t2244 * t2314, t2153 * t2309 + t2245 * t2314, 0, 0, 0, 0, 0, 0, t2139 * t2309 - t2184 * t2314, t2147 * t2309 - t2186 * t2314, t2108 * t2309 - t2207 * t2314, t2084 * t2309 + t2197 * t2314, 0, 0, 0, 0, 0, 0, t2094 * t2309 - t2157 * t2314, t2100 * t2309 + t2314 * t2334, t2072 * t2309 - t2177 * t2314, t2058 * t2309 + t2156 * t2314, 0, 0, 0, 0, 0, 0, t2066 * t2309 - t2128 * t2314, t2068 * t2309 - t2132 * t2314, t2064 * t2309 - t2120 * t2314, t2054 * t2309 - t2077 * t2314; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2256, t2257, 0, t2237, 0, 0, 0, 0, 0, 0, t2195, t2203, t2168, t2152, 0, 0, 0, 0, 0, 0, t2138, t2146, t2107, t2083, 0, 0, 0, 0, 0, 0, t2093, t2099, t2071, t2057, 0, 0, 0, 0, 0, 0, t2065, t2067, t2063, t2053; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2316, -qJDD(1), 0, t2286, 0, 0, 0, 0, 0, 0, t2258, t2259, t2278, t2238, 0, 0, 0, 0, 0, 0, t2196, t2204, t2169, t2153, 0, 0, 0, 0, 0, 0, t2139, t2147, t2108, t2084, 0, 0, 0, 0, 0, 0, t2094, t2100, t2072, t2058, 0, 0, 0, 0, 0, 0, t2066, t2068, t2064, t2054; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2316, 0, t2285, 0, 0, 0, 0, 0, 0, t2277, -t2274, t2282, t2270, 0, 0, 0, 0, 0, 0, -t2227, -t2229, -t2244, t2245, 0, 0, 0, 0, 0, 0, -t2184, -t2186, -t2207, t2197, 0, 0, 0, 0, 0, 0, -t2157, t2334, -t2177, t2156, 0, 0, 0, 0, 0, 0, -t2128, -t2132, -t2120, -t2077; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2256, t2257, 0, t2237, 0, 0, 0, 0, 0, 0, t2195, t2203, t2168, t2152, 0, 0, 0, 0, 0, 0, t2138, t2146, t2107, t2083, 0, 0, 0, 0, 0, 0, t2093, t2099, t2071, t2057, 0, 0, 0, 0, 0, 0, t2065, t2067, t2063, t2053; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2290, t2284, t2298, t2262, 0, 0, 0, 0, 0, 0, t2226, t2232, t2202, t2179, 0, 0, 0, 0, 0, 0, t2166, t2172, t2131, t2102, 0, 0, 0, 0, 0, 0, t2114, t2123, t2086, t2062, 0, 0, 0, 0, 0, 0, t2080, t2082, t2076, t2056; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2283, t2289, -t2341, t2261, 0, 0, 0, 0, 0, 0, t2225, t2231, t2201, t2178, 0, 0, 0, 0, 0, 0, t2165, t2171, t2130, t2101, 0, 0, 0, 0, 0, 0, t2113, t2122, t2085, t2061, 0, 0, 0, 0, 0, 0, t2079, t2081, t2075, t2055; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2277, t2274, -t2282, -t2270, 0, 0, 0, 0, 0, 0, t2227, t2229, t2244, -t2245, 0, 0, 0, 0, 0, 0, t2184, t2186, t2207, -t2197, 0, 0, 0, 0, 0, 0, t2157, -t2334, t2177, -t2156, 0, 0, 0, 0, 0, 0, t2128, t2132, t2120, t2077; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2253, t2255, t2228, t2209, 0, 0, 0, 0, 0, 0, t2193, t2206, t2162, t2125, 0, 0, 0, 0, 0, 0, t2135, t2149, t2106, t2074, 0, 0, 0, 0, 0, 0, t2096, t2098, t2090, t2060; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2254, t2260, t2230, t2208, 0, 0, 0, 0, 0, 0, t2192, t2205, t2161, t2124, 0, 0, 0, 0, 0, 0, t2134, t2148, t2105, t2073, 0, 0, 0, 0, 0, 0, t2095, t2097, t2089, t2059; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2227, t2229, t2244, -t2245, 0, 0, 0, 0, 0, 0, t2184, t2186, t2207, -t2197, 0, 0, 0, 0, 0, 0, t2157, -t2334, t2177, -t2156, 0, 0, 0, 0, 0, 0, t2128, t2132, t2120, t2077; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2222, t2224, t2185, t2155, 0, 0, 0, 0, 0, 0, t2164, t2175, t2127, t2088, 0, 0, 0, 0, 0, 0, t2116, t2118, t2112, t2070; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2223, t2241, t2187, t2154, 0, 0, 0, 0, 0, 0, t2163, t2174, t2126, t2087, 0, 0, 0, 0, 0, 0, t2115, t2117, t2111, t2069; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2184, t2186, t2207, -t2197, 0, 0, 0, 0, 0, 0, t2157, -t2334, t2177, -t2156, 0, 0, 0, 0, 0, 0, t2128, t2132, t2120, t2077; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2189, t2191, t2158, t2110, 0, 0, 0, 0, 0, 0, t2129, t2133, t2121, t2078; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2190, t2213, t2160, t2109, 0, 0, 0, 0, 0, 0, -t2142, -t2144, -t2170, -t2103; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2157, -t2334, t2177, -t2156, 0, 0, 0, 0, 0, 0, t2128, t2132, t2120, t2077; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2173, t2151, t2143, t2092; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2150, t2176, t2145, t2091; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2142, t2144, t2170, t2103;];
f_new_reg  = t1;
