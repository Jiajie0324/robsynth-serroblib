% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRRPRR8
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d5,d6,theta1]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 06:23
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRRPRR8_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR8_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRR8_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRPRR8_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRR8_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRPRR8_invdynf_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 06:22:47
% EndTime: 2019-05-05 06:22:57
% DurationCPUTime: 11.02s
% Computational Cost: add. (46096->335), mult. (100535->476), div. (0->0), fcn. (76984->14), ass. (0->266)
t2360 = sin(pkin(7));
t2363 = cos(pkin(7));
t2367 = sin(qJ(3));
t2371 = cos(qJ(3));
t2320 = (qJD(2) * qJD(3) * t2371 + qJDD(2) * t2367) * t2360;
t2355 = qJD(2) * t2363 + qJD(3);
t2427 = t2360 * t2371;
t2418 = qJD(2) * t2427;
t2414 = t2355 * t2418;
t2380 = -t2320 - t2414;
t2373 = qJD(2) ^ 2;
t2432 = t2360 ^ 2 * t2373;
t2352 = t2367 ^ 2 * t2432;
t2439 = t2355 ^ 2;
t2307 = -t2352 - t2439;
t2417 = t2371 * t2432;
t2340 = t2367 * t2417;
t2354 = qJDD(2) * t2363 + qJDD(3);
t2319 = -t2340 + t2354;
t2385 = t2307 * t2371 - t2319 * t2367;
t2263 = t2360 * t2385 - t2363 * t2380;
t2361 = sin(pkin(6));
t2364 = cos(pkin(6));
t2265 = t2360 * t2380 + t2363 * t2385;
t2287 = t2307 * t2367 + t2319 * t2371;
t2368 = sin(qJ(2));
t2372 = cos(qJ(2));
t2390 = t2265 * t2372 - t2287 * t2368;
t2218 = -t2361 * t2263 + t2364 * t2390;
t2244 = t2265 * t2368 + t2287 * t2372;
t2359 = sin(pkin(12));
t2362 = cos(pkin(12));
t2464 = t2218 * t2359 + t2244 * t2362;
t2463 = t2218 * t2362 - t2244 * t2359;
t2428 = t2360 * t2367;
t2419 = qJD(2) * t2428;
t2420 = qJDD(2) * t2360;
t2321 = -qJD(3) * t2419 + t2371 * t2420;
t2331 = t2355 * t2419;
t2303 = t2321 - t2331;
t2318 = t2340 + t2354;
t2353 = t2371 ^ 2 * t2432;
t2322 = -t2353 - t2439;
t2384 = t2318 * t2371 + t2322 * t2367;
t2272 = -t2363 * t2303 + t2360 * t2384;
t2274 = t2360 * t2303 + t2363 * t2384;
t2294 = t2318 * t2367 - t2322 * t2371;
t2389 = t2274 * t2372 - t2294 * t2368;
t2228 = -t2361 * t2272 + t2364 * t2389;
t2251 = t2274 * t2368 + t2294 * t2372;
t2462 = t2228 * t2359 + t2251 * t2362;
t2461 = t2228 * t2362 - t2251 * t2359;
t2226 = t2364 * t2272 + t2361 * t2389;
t2216 = t2364 * t2263 + t2361 * t2390;
t2343 = g(1) * t2359 - g(2) * t2362;
t2358 = -g(3) + qJDD(1);
t2448 = t2343 * t2364 + t2358 * t2361;
t2377 = qJDD(5) + t2320;
t2366 = sin(qJ(5));
t2370 = cos(qJ(5));
t2310 = t2355 * t2366 + t2370 * t2418;
t2308 = qJD(6) + t2310;
t2447 = qJD(6) + t2308;
t2446 = pkin(3) * t2331 - 0.2e1 * qJD(4) * t2419;
t2312 = t2355 * t2370 - t2366 * t2418;
t2342 = qJD(5) + t2419;
t2365 = sin(qJ(6));
t2369 = cos(qJ(6));
t2297 = t2312 * t2365 - t2369 * t2342;
t2445 = t2297 ^ 2;
t2299 = t2312 * t2369 + t2342 * t2365;
t2444 = t2299 ^ 2;
t2443 = t2308 ^ 2;
t2442 = t2310 ^ 2;
t2441 = t2312 ^ 2;
t2440 = t2342 ^ 2;
t2438 = 0.2e1 * qJD(4);
t2437 = qJD(2) * t2360;
t2344 = -g(1) * t2362 - g(2) * t2359;
t2295 = -t2344 * t2368 + t2372 * t2448;
t2289 = pkin(9) * t2360 * t2373 + qJDD(2) * pkin(2) + t2295;
t2436 = t2289 * t2363;
t2435 = t2297 * t2299;
t2434 = t2312 * t2310;
t2424 = qJD(5) - t2342;
t2423 = qJD(5) + t2342;
t2422 = qJD(6) - t2308;
t2313 = -t2343 * t2361 + t2358 * t2364;
t2306 = t2363 * t2313;
t2317 = pkin(4) * t2419 - pkin(10) * t2355;
t2232 = -pkin(4) * t2353 - t2320 * qJ(4) + t2306 + (-pkin(3) - pkin(10)) * t2321 + (-t2289 + (-qJ(4) * t2355 * t2371 - t2317 * t2367) * qJD(2)) * t2360 + t2446;
t2301 = t2320 - t2414;
t2421 = -t2313 * t2427 - t2371 * t2436;
t2382 = -t2354 * pkin(3) - t2439 * qJ(4) + qJDD(4) + t2421;
t2296 = t2372 * t2344 + t2368 * t2448;
t2290 = -pkin(2) * t2373 + pkin(9) * t2420 + t2296;
t2316 = (-pkin(3) * t2371 - qJ(4) * t2367) * t2437;
t2413 = t2316 * t2437 + t2290;
t2374 = -t2354 * pkin(10) + t2301 * pkin(4) + (-pkin(10) * t2417 + t2413) * t2367 + t2382;
t2194 = t2370 * t2232 + t2366 * t2374;
t2249 = t2371 * t2290 + t2313 * t2428 + t2367 * t2436;
t2193 = -t2232 * t2366 + t2370 * t2374;
t2383 = t2366 * t2321 - t2370 * t2354;
t2282 = -qJD(5) * t2310 - t2383;
t2416 = -t2365 * t2282 + t2369 * t2377;
t2276 = -t2360 * t2289 + t2306;
t2415 = t2370 * t2321 + t2366 * t2354;
t2291 = pkin(5) * t2310 - pkin(11) * t2312;
t2185 = -pkin(5) * t2440 + pkin(11) * t2377 - t2310 * t2291 + t2194;
t2376 = -t2439 * pkin(3) + t2354 * qJ(4) + t2316 * t2418 + t2249;
t2221 = -pkin(10) * t2353 + t2321 * pkin(4) + (t2438 + t2317) * t2355 + t2376;
t2266 = t2312 * t2423 + t2415;
t2199 = (t2310 * t2342 - t2282) * pkin(11) + t2266 * pkin(5) + t2221;
t2169 = -t2185 * t2365 + t2199 * t2369;
t2170 = t2185 * t2369 + t2199 * t2365;
t2153 = -t2169 * t2365 + t2170 * t2369;
t2184 = -pkin(5) * t2377 - pkin(11) * t2440 + t2291 * t2312 - t2193;
t2148 = t2153 * t2370 + t2184 * t2366;
t2147 = t2153 * t2366 - t2184 * t2370;
t2152 = t2169 * t2369 + t2170 * t2365;
t2411 = -t2147 * t2371 + t2152 * t2367;
t2136 = -t2360 * t2148 + t2363 * t2411;
t2139 = t2147 * t2367 + t2152 * t2371;
t2412 = t2136 * t2372 + t2139 * t2368;
t2175 = -t2193 * t2366 + t2194 * t2370;
t2174 = t2193 * t2370 + t2194 * t2366;
t2406 = -t2174 * t2371 + t2221 * t2367;
t2151 = -t2360 * t2175 + t2363 * t2406;
t2162 = t2174 * t2367 + t2221 * t2371;
t2410 = t2151 * t2372 + t2162 * t2368;
t2236 = -t2299 * t2422 + t2416;
t2375 = -t2369 * t2282 - t2365 * t2377;
t2238 = t2297 * t2422 + t2375;
t2203 = t2236 * t2369 - t2238 * t2365;
t2254 = -t2444 - t2445;
t2190 = t2203 * t2370 + t2254 * t2366;
t2189 = t2203 * t2366 - t2254 * t2370;
t2202 = t2236 * t2365 + t2238 * t2369;
t2404 = -t2189 * t2371 + t2202 * t2367;
t2159 = -t2360 * t2190 + t2363 * t2404;
t2176 = t2189 * t2367 + t2202 * t2371;
t2409 = t2159 * t2372 + t2176 * t2368;
t2378 = -qJD(5) * t2312 - qJDD(6) - t2415;
t2246 = -t2378 - t2435;
t2259 = -t2443 - t2445;
t2220 = -t2246 * t2365 + t2259 * t2369;
t2235 = t2299 * t2447 - t2416;
t2198 = t2220 * t2370 + t2235 * t2366;
t2197 = t2220 * t2366 - t2235 * t2370;
t2219 = t2246 * t2369 + t2259 * t2365;
t2402 = -t2197 * t2371 + t2219 * t2367;
t2164 = -t2360 * t2198 + t2363 * t2402;
t2180 = t2197 * t2367 + t2219 * t2371;
t2408 = t2164 * t2372 + t2180 * t2368;
t2247 = t2378 - t2435;
t2270 = -t2443 - t2444;
t2225 = t2247 * t2369 - t2270 * t2365;
t2237 = -t2297 * t2447 - t2375;
t2201 = t2225 * t2370 + t2237 * t2366;
t2200 = t2225 * t2366 - t2237 * t2370;
t2224 = t2247 * t2365 + t2270 * t2369;
t2401 = -t2200 * t2371 + t2224 * t2367;
t2166 = -t2360 * t2201 + t2363 * t2401;
t2181 = t2200 * t2367 + t2224 * t2371;
t2407 = t2166 * t2372 + t2181 * t2368;
t2243 = -t2321 * pkin(3) + qJ(4) * t2380 + t2276 + t2446;
t2234 = t2355 * t2438 + t2376;
t2241 = t2413 * t2367 + t2382;
t2397 = t2234 * t2367 - t2241 * t2371;
t2188 = -t2360 * t2243 + t2363 * t2397;
t2204 = t2234 * t2371 + t2241 * t2367;
t2405 = t2188 * t2372 + t2204 * t2368;
t2267 = -t2312 * t2424 - t2415;
t2269 = t2310 * t2424 + t2383;
t2240 = t2267 * t2370 - t2269 * t2366;
t2239 = t2267 * t2366 + t2269 * t2370;
t2278 = -t2441 - t2442;
t2396 = -t2239 * t2371 + t2278 * t2367;
t2196 = -t2360 * t2240 + t2363 * t2396;
t2214 = t2239 * t2367 + t2278 * t2371;
t2403 = t2196 * t2372 + t2214 * t2368;
t2248 = -t2367 * t2290 - t2421;
t2395 = t2248 * t2371 + t2249 * t2367;
t2206 = -t2360 * t2276 + t2363 * t2395;
t2213 = -t2248 * t2367 + t2249 * t2371;
t2400 = t2206 * t2372 + t2213 * t2368;
t2279 = t2377 - t2434;
t2283 = -t2440 - t2442;
t2253 = -t2279 * t2366 + t2283 * t2370;
t2252 = t2279 * t2370 + t2283 * t2366;
t2394 = -t2252 * t2371 + t2266 * t2367;
t2208 = -t2360 * t2253 + t2363 * t2394;
t2230 = t2252 * t2367 + t2266 * t2371;
t2399 = t2208 * t2372 + t2230 * t2368;
t2280 = -t2434 - t2377;
t2292 = -t2440 - t2441;
t2258 = t2280 * t2370 - t2292 * t2366;
t2257 = t2280 * t2366 + t2292 * t2370;
t2268 = -t2310 * t2423 - t2383;
t2393 = -t2257 * t2371 + t2268 * t2367;
t2210 = -t2360 * t2258 + t2363 * t2393;
t2233 = t2257 * t2367 + t2268 * t2371;
t2398 = t2210 * t2372 + t2233 * t2368;
t2327 = -t2352 - t2353;
t2302 = t2321 + t2331;
t2386 = -t2301 * t2371 + t2302 * t2367;
t2261 = -t2360 * t2327 + t2363 * t2386;
t2277 = t2301 * t2367 + t2302 * t2371;
t2392 = t2261 * t2372 + t2277 * t2368;
t2387 = t2295 * t2372 + t2296 * t2368;
t2381 = qJDD(2) * t2372 - t2368 * t2373;
t2338 = -qJDD(2) * t2368 - t2372 * t2373;
t2326 = t2381 * t2364;
t2325 = t2338 * t2364;
t2324 = t2381 * t2361;
t2323 = t2338 * t2361;
t2271 = -t2295 * t2368 + t2296 * t2372;
t2260 = t2363 * t2327 + t2360 * t2386;
t2256 = -t2361 * t2313 + t2364 * t2387;
t2255 = t2364 * t2313 + t2361 * t2387;
t2242 = -t2261 * t2368 + t2277 * t2372;
t2212 = -t2361 * t2260 + t2364 * t2392;
t2211 = t2364 * t2260 + t2361 * t2392;
t2209 = t2363 * t2258 + t2360 * t2393;
t2207 = t2363 * t2253 + t2360 * t2394;
t2205 = t2363 * t2276 + t2360 * t2395;
t2195 = t2363 * t2240 + t2360 * t2396;
t2192 = -t2212 * t2359 + t2242 * t2362;
t2191 = t2212 * t2362 + t2242 * t2359;
t2187 = t2363 * t2243 + t2360 * t2397;
t2186 = -t2210 * t2368 + t2233 * t2372;
t2183 = -t2208 * t2368 + t2230 * t2372;
t2182 = -t2206 * t2368 + t2213 * t2372;
t2179 = -t2196 * t2368 + t2214 * t2372;
t2178 = -t2361 * t2209 + t2364 * t2398;
t2177 = t2364 * t2209 + t2361 * t2398;
t2173 = -t2188 * t2368 + t2204 * t2372;
t2172 = -t2361 * t2207 + t2364 * t2399;
t2171 = t2364 * t2207 + t2361 * t2399;
t2168 = -t2361 * t2205 + t2364 * t2400;
t2167 = t2364 * t2205 + t2361 * t2400;
t2165 = t2363 * t2201 + t2360 * t2401;
t2163 = t2363 * t2198 + t2360 * t2402;
t2161 = -t2361 * t2195 + t2364 * t2403;
t2160 = t2364 * t2195 + t2361 * t2403;
t2158 = t2363 * t2190 + t2360 * t2404;
t2157 = -t2361 * t2187 + t2364 * t2405;
t2156 = t2364 * t2187 + t2361 * t2405;
t2155 = -t2166 * t2368 + t2181 * t2372;
t2154 = -t2164 * t2368 + t2180 * t2372;
t2150 = t2363 * t2175 + t2360 * t2406;
t2149 = -t2159 * t2368 + t2176 * t2372;
t2146 = -t2361 * t2165 + t2364 * t2407;
t2145 = t2364 * t2165 + t2361 * t2407;
t2144 = -t2361 * t2163 + t2364 * t2408;
t2143 = t2364 * t2163 + t2361 * t2408;
t2142 = -t2151 * t2368 + t2162 * t2372;
t2141 = -t2361 * t2158 + t2364 * t2409;
t2140 = t2364 * t2158 + t2361 * t2409;
t2138 = -t2361 * t2150 + t2364 * t2410;
t2137 = t2364 * t2150 + t2361 * t2410;
t2135 = t2363 * t2148 + t2360 * t2411;
t2134 = -t2136 * t2368 + t2139 * t2372;
t2133 = -t2361 * t2135 + t2364 * t2412;
t2132 = t2364 * t2135 + t2361 * t2412;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2343 * t2359 + t2344 * t2362, 0, 0, 0, 0, 0, 0, -t2326 * t2359 + t2338 * t2362, -t2325 * t2359 - t2362 * t2381, 0, -t2256 * t2359 + t2271 * t2362, 0, 0, 0, 0, 0, 0, -t2462, -t2464, t2192, -t2168 * t2359 + t2182 * t2362, 0, 0, 0, 0, 0, 0, t2192, t2462, t2464, -t2157 * t2359 + t2173 * t2362, 0, 0, 0, 0, 0, 0, -t2172 * t2359 + t2183 * t2362, -t2178 * t2359 + t2186 * t2362, -t2161 * t2359 + t2179 * t2362, -t2138 * t2359 + t2142 * t2362, 0, 0, 0, 0, 0, 0, -t2144 * t2359 + t2154 * t2362, -t2146 * t2359 + t2155 * t2362, -t2141 * t2359 + t2149 * t2362, -t2133 * t2359 + t2134 * t2362; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2343 * t2362 + t2344 * t2359, 0, 0, 0, 0, 0, 0, t2326 * t2362 + t2338 * t2359, t2325 * t2362 - t2359 * t2381, 0, t2256 * t2362 + t2271 * t2359, 0, 0, 0, 0, 0, 0, t2461, t2463, t2191, t2168 * t2362 + t2182 * t2359, 0, 0, 0, 0, 0, 0, t2191, -t2461, -t2463, t2157 * t2362 + t2173 * t2359, 0, 0, 0, 0, 0, 0, t2172 * t2362 + t2183 * t2359, t2178 * t2362 + t2186 * t2359, t2161 * t2362 + t2179 * t2359, t2138 * t2362 + t2142 * t2359, 0, 0, 0, 0, 0, 0, t2144 * t2362 + t2154 * t2359, t2146 * t2362 + t2155 * t2359, t2141 * t2362 + t2149 * t2359, t2133 * t2362 + t2134 * t2359; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2358, 0, 0, 0, 0, 0, 0, t2324, t2323, 0, t2255, 0, 0, 0, 0, 0, 0, t2226, t2216, t2211, t2167, 0, 0, 0, 0, 0, 0, t2211, -t2226, -t2216, t2156, 0, 0, 0, 0, 0, 0, t2171, t2177, t2160, t2137, 0, 0, 0, 0, 0, 0, t2143, t2145, t2140, t2132; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2344, 0, 0, 0, 0, 0, 0, t2338, -t2381, 0, t2271, 0, 0, 0, 0, 0, 0, -t2251, -t2244, t2242, t2182, 0, 0, 0, 0, 0, 0, t2242, t2251, t2244, t2173, 0, 0, 0, 0, 0, 0, t2183, t2186, t2179, t2142, 0, 0, 0, 0, 0, 0, t2154, t2155, t2149, t2134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2343, 0, 0, 0, 0, 0, 0, t2326, t2325, 0, t2256, 0, 0, 0, 0, 0, 0, t2228, t2218, t2212, t2168, 0, 0, 0, 0, 0, 0, t2212, -t2228, -t2218, t2157, 0, 0, 0, 0, 0, 0, t2172, t2178, t2161, t2138, 0, 0, 0, 0, 0, 0, t2144, t2146, t2141, t2133; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2358, 0, 0, 0, 0, 0, 0, t2324, t2323, 0, t2255, 0, 0, 0, 0, 0, 0, t2226, t2216, t2211, t2167, 0, 0, 0, 0, 0, 0, t2211, -t2226, -t2216, t2156, 0, 0, 0, 0, 0, 0, t2171, t2177, t2160, t2137, 0, 0, 0, 0, 0, 0, t2143, t2145, t2140, t2132; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2373, -qJDD(2), 0, t2296, 0, 0, 0, 0, 0, 0, -t2294, -t2287, t2277, t2213, 0, 0, 0, 0, 0, 0, t2277, t2294, t2287, t2204, 0, 0, 0, 0, 0, 0, t2230, t2233, t2214, t2162, 0, 0, 0, 0, 0, 0, t2180, t2181, t2176, t2139; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2373, 0, t2295, 0, 0, 0, 0, 0, 0, t2274, t2265, t2261, t2206, 0, 0, 0, 0, 0, 0, t2261, -t2274, -t2265, t2188, 0, 0, 0, 0, 0, 0, t2208, t2210, t2196, t2151, 0, 0, 0, 0, 0, 0, t2164, t2166, t2159, t2136; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2313, 0, 0, 0, 0, 0, 0, t2272, t2263, t2260, t2205, 0, 0, 0, 0, 0, 0, t2260, -t2272, -t2263, t2187, 0, 0, 0, 0, 0, 0, t2207, t2209, t2195, t2150, 0, 0, 0, 0, 0, 0, t2163, t2165, t2158, t2135; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2322, -t2319, t2302, t2249, 0, 0, 0, 0, 0, 0, t2302, -t2322, t2319, t2234, 0, 0, 0, 0, 0, 0, t2266, t2268, t2278, t2221, 0, 0, 0, 0, 0, 0, t2219, t2224, t2202, t2152; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2318, t2307, -t2301, t2248, 0, 0, 0, 0, 0, 0, -t2301, -t2318, -t2307, -t2241, 0, 0, 0, 0, 0, 0, -t2252, -t2257, -t2239, -t2174, 0, 0, 0, 0, 0, 0, -t2197, -t2200, -t2189, -t2147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2303, -t2380, t2327, t2276, 0, 0, 0, 0, 0, 0, t2327, t2303, t2380, t2243, 0, 0, 0, 0, 0, 0, t2253, t2258, t2240, t2175, 0, 0, 0, 0, 0, 0, t2198, t2201, t2190, t2148; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2327, t2303, t2380, t2243, 0, 0, 0, 0, 0, 0, t2253, t2258, t2240, t2175, 0, 0, 0, 0, 0, 0, t2198, t2201, t2190, t2148; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2302, t2322, -t2319, -t2234, 0, 0, 0, 0, 0, 0, -t2266, -t2268, -t2278, -t2221, 0, 0, 0, 0, 0, 0, -t2219, -t2224, -t2202, -t2152; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2301, t2318, t2307, t2241, 0, 0, 0, 0, 0, 0, t2252, t2257, t2239, t2174, 0, 0, 0, 0, 0, 0, t2197, t2200, t2189, t2147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2283, t2280, t2267, t2194, 0, 0, 0, 0, 0, 0, t2220, t2225, t2203, t2153; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2279, t2292, t2269, t2193, 0, 0, 0, 0, 0, 0, -t2235, -t2237, -t2254, -t2184; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2266, t2268, t2278, t2221, 0, 0, 0, 0, 0, 0, t2219, t2224, t2202, t2152; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2259, t2247, t2236, t2170; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2246, t2270, t2238, t2169; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2235, t2237, t2254, t2184;];
f_new_reg  = t1;
