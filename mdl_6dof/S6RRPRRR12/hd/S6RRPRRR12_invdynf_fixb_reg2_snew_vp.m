% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRPRRR12
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 00:47
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRPRRR12_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR12_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR12_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRR12_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRR12_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRR12_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 00:47:12
% EndTime: 2019-05-07 00:47:22
% DurationCPUTime: 9.97s
% Computational Cost: add. (63604->353), mult. (142835->471), div. (0->0), fcn. (109171->12), ass. (0->268)
t2313 = sin(pkin(6));
t2318 = sin(qJ(2));
t2323 = cos(qJ(2));
t2279 = (qJD(1) * qJD(2) * t2323 + qJDD(1) * t2318) * t2313;
t2331 = qJDD(4) + t2279;
t2329 = qJDD(5) + t2331;
t2314 = cos(pkin(6));
t2308 = qJD(1) * t2314 + qJD(2);
t2368 = t2313 * t2323;
t2360 = qJD(1) * t2368;
t2355 = t2308 * t2360;
t2335 = -t2279 - t2355;
t2304 = t2308 ^ 2;
t2325 = qJD(1) ^ 2;
t2370 = t2313 ^ 2 * t2325;
t2305 = t2318 ^ 2 * t2370;
t2264 = -t2305 - t2304;
t2293 = t2323 * t2318 * t2370;
t2307 = qJDD(1) * t2314 + qJDD(2);
t2278 = -t2293 + t2307;
t2338 = t2264 * t2323 - t2278 * t2318;
t2222 = t2313 * t2335 + t2314 * t2338;
t2249 = t2264 * t2318 + t2278 * t2323;
t2319 = sin(qJ(1));
t2324 = cos(qJ(1));
t2402 = t2222 * t2319 + t2249 * t2324;
t2401 = t2222 * t2324 - t2249 * t2319;
t2369 = t2313 * t2318;
t2361 = qJD(1) * t2369;
t2362 = qJDD(1) * t2313;
t2280 = -qJD(2) * t2361 + t2323 * t2362;
t2285 = t2308 * t2361;
t2258 = t2280 - t2285;
t2306 = t2323 ^ 2 * t2370;
t2281 = -t2306 - t2304;
t2392 = -t2307 - t2293;
t2337 = t2281 * t2318 - t2323 * t2392;
t2229 = t2258 * t2313 + t2314 * t2337;
t2253 = -t2281 * t2323 - t2318 * t2392;
t2400 = t2229 * t2319 + t2253 * t2324;
t2399 = t2229 * t2324 - t2253 * t2319;
t2317 = sin(qJ(4));
t2322 = cos(qJ(4));
t2267 = t2308 * t2317 + t2322 * t2360;
t2269 = t2308 * t2322 - t2317 * t2360;
t2316 = sin(qJ(5));
t2321 = cos(qJ(5));
t2246 = t2321 * t2267 + t2269 * t2316;
t2245 = qJD(6) + t2246;
t2394 = qJD(6) + t2245;
t2393 = pkin(2) * t2285 - 0.2e1 * qJD(3) * t2361;
t2227 = -t2258 * t2314 + t2313 * t2337;
t2220 = t2313 * t2338 - t2314 * t2335;
t2248 = -t2267 * t2316 + t2269 * t2321;
t2295 = qJD(4) + t2361;
t2289 = qJD(5) + t2295;
t2315 = sin(qJ(6));
t2320 = cos(qJ(6));
t2233 = t2248 * t2315 - t2320 * t2289;
t2391 = t2233 ^ 2;
t2235 = t2248 * t2320 + t2289 * t2315;
t2390 = t2235 ^ 2;
t2389 = t2245 ^ 2;
t2388 = t2246 ^ 2;
t2387 = t2248 ^ 2;
t2266 = t2267 ^ 2;
t2386 = t2269 ^ 2;
t2385 = t2289 ^ 2;
t2384 = t2295 ^ 2;
t2383 = 0.2e1 * qJD(3);
t2382 = g(3) * t2314;
t2381 = g(3) * t2323;
t2380 = t2233 * t2235;
t2379 = t2246 * t2248;
t2374 = t2269 * t2267;
t2297 = t2319 * g(1) - g(2) * t2324;
t2273 = pkin(8) * t2313 * t2325 + qJDD(1) * pkin(1) + t2297;
t2373 = t2273 * t2314;
t2275 = (-pkin(2) * t2323 - qJ(3) * t2318) * t2313 * qJD(1);
t2372 = t2275 * t2318;
t2371 = t2308 * t2323;
t2367 = qJD(4) - t2295;
t2366 = qJD(4) + t2295;
t2365 = qJD(5) - t2289;
t2364 = qJD(5) + t2289;
t2363 = qJD(6) - t2245;
t2276 = pkin(3) * t2361 - pkin(9) * t2308;
t2198 = -pkin(3) * t2306 - t2382 - qJ(3) * t2279 + (-pkin(2) - pkin(9)) * t2280 + (-t2273 + (-qJ(3) * t2371 - t2276 * t2318) * qJD(1)) * t2313 + t2393;
t2298 = -g(1) * t2324 - g(2) * t2319;
t2274 = -pkin(1) * t2325 + pkin(8) * t2362 + t2298;
t2357 = t2274 * t2318 - t2323 * t2373;
t2333 = -t2307 * pkin(2) - t2304 * qJ(3) + qJDD(3) + t2357;
t2200 = pkin(3) * t2279 + t2392 * pkin(9) + (t2381 + (-pkin(3) * t2371 + t2372) * qJD(1)) * t2313 + t2333;
t2172 = t2322 * t2198 + t2317 * t2200;
t2356 = t2322 * t2280 + t2307 * t2317;
t2240 = -qJD(4) * t2269 - t2356;
t2254 = pkin(4) * t2295 - pkin(10) * t2269;
t2158 = -pkin(4) * t2266 + pkin(10) * t2240 - t2254 * t2295 + t2172;
t2171 = -t2317 * t2198 + t2322 * t2200;
t2237 = t2331 - t2374;
t2336 = t2280 * t2317 - t2307 * t2322;
t2241 = -qJD(4) * t2267 - t2336;
t2326 = (-t2267 * t2295 - t2241) * pkin(10) + t2237 * pkin(4) + t2171;
t2132 = t2321 * t2158 + t2316 * t2326;
t2244 = -g(3) * t2369 + t2323 * t2274 + t2318 * t2373;
t2131 = -t2158 * t2316 + t2321 * t2326;
t2341 = t2240 * t2316 + t2241 * t2321;
t2195 = -qJD(5) * t2246 + t2341;
t2359 = -t2195 * t2315 + t2320 * t2329;
t2358 = -t2321 * t2240 + t2316 * t2241;
t2259 = -t2273 * t2313 - t2382;
t2215 = pkin(5) * t2246 - pkin(11) * t2248;
t2123 = -pkin(5) * t2385 + pkin(11) * t2329 - t2246 * t2215 + t2132;
t2328 = -t2304 * pkin(2) + t2307 * qJ(3) + t2275 * t2360 + t2244;
t2197 = t2280 * pkin(3) - pkin(9) * t2306 + (t2383 + t2276) * t2308 + t2328;
t2175 = -t2240 * pkin(4) - t2266 * pkin(10) + t2269 * t2254 + t2197;
t2179 = t2248 * t2364 + t2358;
t2140 = t2179 * pkin(5) + (t2246 * t2289 - t2195) * pkin(11) + t2175;
t2110 = -t2123 * t2315 + t2140 * t2320;
t2111 = t2123 * t2320 + t2140 * t2315;
t2100 = -t2110 * t2315 + t2111 * t2320;
t2122 = -pkin(5) * t2329 - pkin(11) * t2385 + t2215 * t2248 - t2131;
t2090 = t2100 * t2316 - t2122 * t2321;
t2091 = t2100 * t2321 + t2122 * t2316;
t2086 = t2090 * t2322 + t2091 * t2317;
t2099 = t2110 * t2320 + t2111 * t2315;
t2354 = -t2086 * t2323 + t2099 * t2318;
t2112 = t2131 * t2321 + t2132 * t2316;
t2113 = -t2131 * t2316 + t2132 * t2321;
t2101 = t2112 * t2322 + t2113 * t2317;
t2353 = -t2101 * t2323 + t2175 * t2318;
t2162 = -t2235 * t2363 + t2359;
t2327 = -t2320 * t2195 - t2315 * t2329;
t2164 = t2233 * t2363 + t2327;
t2139 = t2162 * t2320 - t2164 * t2315;
t2186 = -t2390 - t2391;
t2127 = t2139 * t2316 - t2186 * t2321;
t2128 = t2139 * t2321 + t2186 * t2316;
t2108 = t2127 * t2322 + t2128 * t2317;
t2138 = t2162 * t2315 + t2164 * t2320;
t2352 = -t2108 * t2323 + t2138 * t2318;
t2332 = -qJD(5) * t2248 - qJDD(6) - t2358;
t2173 = -t2332 - t2380;
t2189 = -t2389 - t2391;
t2146 = -t2173 * t2315 + t2189 * t2320;
t2161 = t2235 * t2394 - t2359;
t2133 = t2146 * t2316 - t2161 * t2321;
t2134 = t2146 * t2321 + t2161 * t2316;
t2114 = t2133 * t2322 + t2134 * t2317;
t2145 = t2173 * t2320 + t2189 * t2315;
t2351 = -t2114 * t2323 + t2145 * t2318;
t2174 = t2332 - t2380;
t2194 = -t2389 - t2390;
t2150 = t2174 * t2320 - t2194 * t2315;
t2163 = -t2233 * t2394 - t2327;
t2135 = t2150 * t2316 - t2163 * t2321;
t2136 = t2150 * t2321 + t2163 * t2316;
t2116 = t2135 * t2322 + t2136 * t2317;
t2149 = t2174 * t2315 + t2194 * t2320;
t2350 = -t2116 * t2323 + t2149 * t2318;
t2180 = -t2248 * t2365 - t2358;
t2182 = t2246 * t2365 - t2341;
t2153 = t2180 * t2316 + t2182 * t2321;
t2154 = t2180 * t2321 - t2182 * t2316;
t2129 = t2153 * t2322 + t2154 * t2317;
t2201 = -t2387 - t2388;
t2349 = -t2129 * t2323 + t2201 * t2318;
t2143 = t2171 * t2322 + t2172 * t2317;
t2348 = -t2143 * t2323 + t2197 * t2318;
t2206 = t2329 - t2379;
t2210 = -t2385 - t2388;
t2177 = t2206 * t2321 + t2210 * t2316;
t2178 = -t2206 * t2316 + t2210 * t2321;
t2147 = t2177 * t2322 + t2178 * t2317;
t2347 = -t2147 * t2323 + t2179 * t2318;
t2207 = -t2379 - t2329;
t2231 = -t2385 - t2387;
t2187 = t2207 * t2316 + t2231 * t2321;
t2188 = t2207 * t2321 - t2231 * t2316;
t2159 = t2187 * t2322 + t2188 * t2317;
t2181 = -t2246 * t2364 + t2341;
t2346 = -t2159 * t2323 + t2181 * t2318;
t2224 = -t2269 * t2367 - t2356;
t2226 = t2267 * t2367 + t2336;
t2190 = t2224 * t2317 + t2226 * t2322;
t2236 = -t2266 - t2386;
t2345 = -t2190 * t2323 + t2236 * t2318;
t2242 = -t2384 - t2266;
t2204 = t2237 * t2322 + t2242 * t2317;
t2223 = t2269 * t2366 + t2356;
t2344 = -t2204 * t2323 + t2223 * t2318;
t2238 = -t2331 - t2374;
t2251 = -t2384 - t2386;
t2211 = t2238 * t2317 + t2251 * t2322;
t2225 = -t2267 * t2366 - t2336;
t2343 = -t2211 * t2323 + t2225 * t2318;
t2213 = t2308 * t2383 + t2328;
t2216 = (qJD(1) * t2372 + t2381) * t2313 + t2333;
t2342 = t2213 * t2318 - t2216 * t2323;
t2243 = -g(3) * t2368 - t2357;
t2340 = t2243 * t2323 + t2244 * t2318;
t2256 = t2279 - t2355;
t2257 = t2280 + t2285;
t2339 = -t2256 * t2323 + t2257 * t2318;
t2291 = -qJDD(1) * t2319 - t2324 * t2325;
t2290 = qJDD(1) * t2324 - t2319 * t2325;
t2282 = -t2305 - t2306;
t2232 = t2256 * t2318 + t2257 * t2323;
t2218 = -t2282 * t2313 + t2314 * t2339;
t2217 = t2282 * t2314 + t2313 * t2339;
t2214 = -pkin(2) * t2280 + qJ(3) * t2335 + t2259 + t2393;
t2212 = t2238 * t2322 - t2251 * t2317;
t2209 = -t2243 * t2318 + t2244 * t2323;
t2205 = -t2237 * t2317 + t2242 * t2322;
t2203 = -t2259 * t2313 + t2314 * t2340;
t2202 = t2259 * t2314 + t2313 * t2340;
t2193 = -t2218 * t2319 + t2232 * t2324;
t2192 = t2218 * t2324 + t2232 * t2319;
t2191 = t2224 * t2322 - t2226 * t2317;
t2185 = t2211 * t2318 + t2225 * t2323;
t2184 = t2213 * t2323 + t2216 * t2318;
t2183 = t2204 * t2318 + t2223 * t2323;
t2176 = t2190 * t2318 + t2236 * t2323;
t2170 = -t2214 * t2313 + t2314 * t2342;
t2169 = t2214 * t2314 + t2313 * t2342;
t2168 = -t2212 * t2313 + t2314 * t2343;
t2167 = t2212 * t2314 + t2313 * t2343;
t2166 = -t2205 * t2313 + t2314 * t2344;
t2165 = t2205 * t2314 + t2313 * t2344;
t2160 = -t2187 * t2317 + t2188 * t2322;
t2157 = -t2191 * t2313 + t2314 * t2345;
t2156 = t2191 * t2314 + t2313 * t2345;
t2148 = -t2177 * t2317 + t2178 * t2322;
t2144 = -t2171 * t2317 + t2172 * t2322;
t2142 = t2159 * t2318 + t2181 * t2323;
t2141 = t2147 * t2318 + t2179 * t2323;
t2137 = t2143 * t2318 + t2197 * t2323;
t2130 = -t2153 * t2317 + t2154 * t2322;
t2126 = -t2160 * t2313 + t2314 * t2346;
t2125 = t2160 * t2314 + t2313 * t2346;
t2124 = t2129 * t2318 + t2201 * t2323;
t2121 = -t2148 * t2313 + t2314 * t2347;
t2120 = t2148 * t2314 + t2313 * t2347;
t2119 = -t2144 * t2313 + t2314 * t2348;
t2118 = t2144 * t2314 + t2313 * t2348;
t2117 = -t2135 * t2317 + t2136 * t2322;
t2115 = -t2133 * t2317 + t2134 * t2322;
t2109 = -t2127 * t2317 + t2128 * t2322;
t2107 = -t2130 * t2313 + t2314 * t2349;
t2106 = t2130 * t2314 + t2313 * t2349;
t2105 = t2116 * t2318 + t2149 * t2323;
t2104 = t2114 * t2318 + t2145 * t2323;
t2103 = t2108 * t2318 + t2138 * t2323;
t2102 = -t2112 * t2317 + t2113 * t2322;
t2098 = t2101 * t2318 + t2175 * t2323;
t2097 = -t2117 * t2313 + t2314 * t2350;
t2096 = t2117 * t2314 + t2313 * t2350;
t2095 = -t2115 * t2313 + t2314 * t2351;
t2094 = t2115 * t2314 + t2313 * t2351;
t2093 = -t2109 * t2313 + t2314 * t2352;
t2092 = t2109 * t2314 + t2313 * t2352;
t2089 = -t2102 * t2313 + t2314 * t2353;
t2088 = t2102 * t2314 + t2313 * t2353;
t2087 = -t2090 * t2317 + t2091 * t2322;
t2085 = t2086 * t2318 + t2099 * t2323;
t2084 = -t2087 * t2313 + t2314 * t2354;
t2083 = t2087 * t2314 + t2313 * t2354;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2291, -t2290, 0, -t2297 * t2319 + t2298 * t2324, 0, 0, 0, 0, 0, 0, -t2400, -t2402, t2193, -t2203 * t2319 + t2209 * t2324, 0, 0, 0, 0, 0, 0, t2193, t2400, t2402, -t2170 * t2319 + t2184 * t2324, 0, 0, 0, 0, 0, 0, -t2166 * t2319 + t2183 * t2324, -t2168 * t2319 + t2185 * t2324, -t2157 * t2319 + t2176 * t2324, -t2119 * t2319 + t2137 * t2324, 0, 0, 0, 0, 0, 0, -t2121 * t2319 + t2141 * t2324, -t2126 * t2319 + t2142 * t2324, -t2107 * t2319 + t2124 * t2324, -t2089 * t2319 + t2098 * t2324, 0, 0, 0, 0, 0, 0, -t2095 * t2319 + t2104 * t2324, -t2097 * t2319 + t2105 * t2324, -t2093 * t2319 + t2103 * t2324, -t2084 * t2319 + t2085 * t2324; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2290, t2291, 0, t2297 * t2324 + t2298 * t2319, 0, 0, 0, 0, 0, 0, t2399, t2401, t2192, t2203 * t2324 + t2209 * t2319, 0, 0, 0, 0, 0, 0, t2192, -t2399, -t2401, t2170 * t2324 + t2184 * t2319, 0, 0, 0, 0, 0, 0, t2166 * t2324 + t2183 * t2319, t2168 * t2324 + t2185 * t2319, t2157 * t2324 + t2176 * t2319, t2119 * t2324 + t2137 * t2319, 0, 0, 0, 0, 0, 0, t2121 * t2324 + t2141 * t2319, t2126 * t2324 + t2142 * t2319, t2107 * t2324 + t2124 * t2319, t2089 * t2324 + t2098 * t2319, 0, 0, 0, 0, 0, 0, t2095 * t2324 + t2104 * t2319, t2097 * t2324 + t2105 * t2319, t2093 * t2324 + t2103 * t2319, t2084 * t2324 + t2085 * t2319; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2227, t2220, t2217, t2202, 0, 0, 0, 0, 0, 0, t2217, -t2227, -t2220, t2169, 0, 0, 0, 0, 0, 0, t2165, t2167, t2156, t2118, 0, 0, 0, 0, 0, 0, t2120, t2125, t2106, t2088, 0, 0, 0, 0, 0, 0, t2094, t2096, t2092, t2083; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2325, -qJDD(1), 0, t2298, 0, 0, 0, 0, 0, 0, -t2253, -t2249, t2232, t2209, 0, 0, 0, 0, 0, 0, t2232, t2253, t2249, t2184, 0, 0, 0, 0, 0, 0, t2183, t2185, t2176, t2137, 0, 0, 0, 0, 0, 0, t2141, t2142, t2124, t2098, 0, 0, 0, 0, 0, 0, t2104, t2105, t2103, t2085; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2325, 0, t2297, 0, 0, 0, 0, 0, 0, t2229, t2222, t2218, t2203, 0, 0, 0, 0, 0, 0, t2218, -t2229, -t2222, t2170, 0, 0, 0, 0, 0, 0, t2166, t2168, t2157, t2119, 0, 0, 0, 0, 0, 0, t2121, t2126, t2107, t2089, 0, 0, 0, 0, 0, 0, t2095, t2097, t2093, t2084; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2227, t2220, t2217, t2202, 0, 0, 0, 0, 0, 0, t2217, -t2227, -t2220, t2169, 0, 0, 0, 0, 0, 0, t2165, t2167, t2156, t2118, 0, 0, 0, 0, 0, 0, t2120, t2125, t2106, t2088, 0, 0, 0, 0, 0, 0, t2094, t2096, t2092, t2083; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2281, -t2278, t2257, t2244, 0, 0, 0, 0, 0, 0, t2257, -t2281, t2278, t2213, 0, 0, 0, 0, 0, 0, t2223, t2225, t2236, t2197, 0, 0, 0, 0, 0, 0, t2179, t2181, t2201, t2175, 0, 0, 0, 0, 0, 0, t2145, t2149, t2138, t2099; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2392, t2264, -t2256, t2243, 0, 0, 0, 0, 0, 0, -t2256, t2392, -t2264, -t2216, 0, 0, 0, 0, 0, 0, -t2204, -t2211, -t2190, -t2143, 0, 0, 0, 0, 0, 0, -t2147, -t2159, -t2129, -t2101, 0, 0, 0, 0, 0, 0, -t2114, -t2116, -t2108, -t2086; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2258, -t2335, t2282, t2259, 0, 0, 0, 0, 0, 0, t2282, t2258, t2335, t2214, 0, 0, 0, 0, 0, 0, t2205, t2212, t2191, t2144, 0, 0, 0, 0, 0, 0, t2148, t2160, t2130, t2102, 0, 0, 0, 0, 0, 0, t2115, t2117, t2109, t2087; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2282, t2258, t2335, t2214, 0, 0, 0, 0, 0, 0, t2205, t2212, t2191, t2144, 0, 0, 0, 0, 0, 0, t2148, t2160, t2130, t2102, 0, 0, 0, 0, 0, 0, t2115, t2117, t2109, t2087; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2257, t2281, -t2278, -t2213, 0, 0, 0, 0, 0, 0, -t2223, -t2225, -t2236, -t2197, 0, 0, 0, 0, 0, 0, -t2179, -t2181, -t2201, -t2175, 0, 0, 0, 0, 0, 0, -t2145, -t2149, -t2138, -t2099; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2256, -t2392, t2264, t2216, 0, 0, 0, 0, 0, 0, t2204, t2211, t2190, t2143, 0, 0, 0, 0, 0, 0, t2147, t2159, t2129, t2101, 0, 0, 0, 0, 0, 0, t2114, t2116, t2108, t2086; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2242, t2238, t2224, t2172, 0, 0, 0, 0, 0, 0, t2178, t2188, t2154, t2113, 0, 0, 0, 0, 0, 0, t2134, t2136, t2128, t2091; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2237, t2251, t2226, t2171, 0, 0, 0, 0, 0, 0, t2177, t2187, t2153, t2112, 0, 0, 0, 0, 0, 0, t2133, t2135, t2127, t2090; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2223, t2225, t2236, t2197, 0, 0, 0, 0, 0, 0, t2179, t2181, t2201, t2175, 0, 0, 0, 0, 0, 0, t2145, t2149, t2138, t2099; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2210, t2207, t2180, t2132, 0, 0, 0, 0, 0, 0, t2146, t2150, t2139, t2100; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2206, t2231, t2182, t2131, 0, 0, 0, 0, 0, 0, -t2161, -t2163, -t2186, -t2122; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2179, t2181, t2201, t2175, 0, 0, 0, 0, 0, 0, t2145, t2149, t2138, t2099; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2189, t2174, t2162, t2111; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2173, t2194, t2164, t2110; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2161, t2163, t2186, t2122;];
f_new_reg  = t1;
