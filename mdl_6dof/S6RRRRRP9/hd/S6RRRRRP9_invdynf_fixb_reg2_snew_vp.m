% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRRRP9
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-08 06:16
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRRRP9_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP9_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP9_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP9_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP9_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRP9_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 06:15:36
% EndTime: 2019-05-08 06:15:46
% DurationCPUTime: 10.12s
% Computational Cost: add. (103488->329), mult. (221138->481), div. (0->0), fcn. (179683->12), ass. (0->272)
t2407 = sin(pkin(6));
t2417 = cos(qJ(2));
t2459 = qJDD(1) * t2417;
t2412 = sin(qJ(2));
t2473 = qJD(1) * t2412;
t2487 = (qJD(2) * t2473 - t2459) * t2407;
t2425 = qJDD(3) + t2487;
t2408 = cos(pkin(6));
t2402 = qJD(1) * t2408 + qJD(2);
t2411 = sin(qJ(3));
t2416 = cos(qJ(3));
t2466 = t2407 * t2412;
t2458 = qJD(1) * t2466;
t2375 = -t2416 * t2402 + t2411 * t2458;
t2373 = qJD(4) + t2375;
t2371 = qJD(5) + t2373;
t2486 = qJD(5) + t2371;
t2377 = t2402 * t2411 + t2416 * t2458;
t2465 = t2407 * t2417;
t2457 = qJD(1) * t2465;
t2394 = -qJD(3) + t2457;
t2410 = sin(qJ(4));
t2415 = cos(qJ(4));
t2361 = t2377 * t2410 + t2394 * t2415;
t2362 = t2377 * t2415 - t2394 * t2410;
t2409 = sin(qJ(5));
t2414 = cos(qJ(5));
t2340 = t2414 * t2361 + t2362 * t2409;
t2485 = t2340 ^ 2;
t2342 = -t2361 * t2409 + t2362 * t2414;
t2484 = t2342 ^ 2;
t2483 = t2361 ^ 2;
t2482 = t2362 ^ 2;
t2481 = t2371 ^ 2;
t2480 = t2373 ^ 2;
t2479 = t2375 ^ 2;
t2478 = t2377 ^ 2;
t2477 = t2394 ^ 2;
t2476 = t2402 ^ 2;
t2475 = -2 * qJD(6);
t2474 = t2408 * g(3);
t2472 = qJD(1) * t2417;
t2471 = t2340 * t2342;
t2470 = t2361 * t2362;
t2469 = t2373 * t2361;
t2468 = t2377 * t2375;
t2419 = qJD(1) ^ 2;
t2467 = t2407 ^ 2 * t2419;
t2464 = qJD(3) + t2394;
t2383 = (-pkin(2) * t2417 - pkin(9) * t2412) * t2407 * qJD(1);
t2401 = t2408 * qJDD(1) + qJDD(2);
t2413 = sin(qJ(1));
t2418 = cos(qJ(1));
t2396 = -g(1) * t2418 - g(2) * t2413;
t2460 = qJDD(1) * t2407;
t2380 = -pkin(1) * t2419 + pkin(8) * t2460 + t2396;
t2395 = t2413 * g(1) - t2418 * g(2);
t2424 = t2419 * t2407 * pkin(8) + qJDD(1) * pkin(1) + t2395;
t2422 = t2408 * t2424;
t2463 = t2417 * t2380 + t2412 * t2422;
t2331 = -t2476 * pkin(2) + t2401 * pkin(9) + (-g(3) * t2412 + t2383 * t2472) * t2407 + t2463;
t2384 = qJD(2) * t2457 + t2412 * t2460;
t2420 = -t2384 * pkin(9) - t2474 + (-t2402 * pkin(9) * t2472 + (-t2459 + (qJD(2) + t2402) * t2473) * pkin(2) - t2424) * t2407;
t2300 = t2416 * t2331 + t2411 * t2420;
t2356 = pkin(3) * t2375 - pkin(10) * t2377;
t2285 = -pkin(3) * t2477 + pkin(10) * t2425 - t2375 * t2356 + t2300;
t2453 = t2412 * t2380 - t2417 * t2422;
t2330 = -t2401 * pkin(2) - t2476 * pkin(9) + (g(3) * t2417 + t2383 * t2473) * t2407 + t2453;
t2452 = t2411 * t2384 - t2416 * t2401;
t2334 = (qJD(3) - t2394) * t2377 + t2452;
t2433 = -t2416 * t2384 - t2411 * t2401;
t2351 = -qJD(3) * t2375 - t2433;
t2454 = -t2375 * t2394 - t2351;
t2288 = pkin(3) * t2334 + pkin(10) * t2454 + t2330;
t2254 = -t2410 * t2285 + t2415 * t2288;
t2429 = qJD(3) * t2377 + qJDD(4) + t2452;
t2310 = t2429 - t2470;
t2421 = -t2415 * t2351 - t2410 * t2425;
t2317 = -t2361 * qJD(4) - t2421;
t2242 = (-t2317 - t2469) * pkin(11) + t2310 * pkin(4) + t2254;
t2255 = t2415 * t2285 + t2410 * t2288;
t2347 = pkin(4) * t2373 - pkin(11) * t2362;
t2455 = t2410 * t2351 - t2415 * t2425;
t2432 = -qJD(4) * t2362 - t2455;
t2249 = -pkin(4) * t2483 + pkin(11) * t2432 - t2373 * t2347 + t2255;
t2222 = t2409 * t2242 + t2414 * t2249;
t2462 = -t2371 + qJD(5);
t2461 = -t2373 + qJD(4);
t2221 = t2414 * t2242 - t2409 * t2249;
t2456 = t2409 * t2317 - t2414 * t2432;
t2299 = -t2331 * t2411 + t2416 * t2420;
t2451 = t2402 * t2457;
t2423 = -t2414 * t2317 - t2409 * t2432;
t2265 = t2340 * t2462 + t2423;
t2426 = -qJDD(5) - t2429;
t2295 = -t2426 - t2471;
t2213 = pkin(5) * t2295 + qJ(6) * t2265 + t2342 * t2475 + t2221;
t2322 = pkin(5) * t2371 - qJ(6) * t2342;
t2431 = -qJD(5) * t2342 - t2456;
t2214 = -t2371 * t2322 + t2431 * qJ(6) + (-pkin(5) * t2340 + t2475) * t2340 + t2222;
t2201 = t2213 * t2414 + t2214 * t2409;
t2202 = -t2213 * t2409 + t2214 * t2414;
t2190 = -t2201 * t2410 + t2202 * t2415;
t2284 = -t2425 * pkin(3) - t2477 * pkin(10) + t2356 * t2377 - t2299;
t2256 = -t2432 * pkin(4) - t2483 * pkin(11) + t2347 * t2362 + t2284;
t2231 = -pkin(5) * t2431 - qJ(6) * t2485 + t2322 * t2342 + qJDD(6) + t2256;
t2186 = t2190 * t2416 + t2231 * t2411;
t2189 = t2201 * t2415 + t2202 * t2410;
t2450 = t2186 * t2412 - t2189 * t2417;
t2208 = t2221 * t2414 + t2222 * t2409;
t2209 = -t2221 * t2409 + t2222 * t2414;
t2194 = -t2208 * t2410 + t2209 * t2415;
t2192 = t2194 * t2416 + t2256 * t2411;
t2193 = t2208 * t2415 + t2209 * t2410;
t2449 = t2192 * t2412 - t2193 * t2417;
t2263 = -t2342 * t2462 - t2456;
t2243 = t2263 * t2409 + t2265 * t2414;
t2244 = t2263 * t2414 - t2265 * t2409;
t2220 = -t2243 * t2410 + t2244 * t2415;
t2290 = -t2484 - t2485;
t2217 = t2220 * t2416 + t2290 * t2411;
t2219 = t2243 * t2415 + t2244 * t2410;
t2448 = t2217 * t2412 - t2219 * t2417;
t2233 = -t2254 * t2410 + t2255 * t2415;
t2224 = t2233 * t2416 + t2284 * t2411;
t2232 = t2254 * t2415 + t2255 * t2410;
t2447 = t2224 * t2412 - t2232 * t2417;
t2301 = -t2481 - t2485;
t2268 = t2295 * t2414 + t2301 * t2409;
t2269 = -t2295 * t2409 + t2301 * t2414;
t2247 = -t2268 * t2410 + t2269 * t2415;
t2262 = t2342 * t2486 + t2456;
t2228 = t2247 * t2416 + t2262 * t2411;
t2246 = t2268 * t2415 + t2269 * t2410;
t2446 = t2228 * t2412 - t2246 * t2417;
t2296 = t2426 - t2471;
t2312 = -t2481 - t2484;
t2276 = t2296 * t2409 + t2312 * t2414;
t2277 = t2296 * t2414 - t2312 * t2409;
t2251 = -t2276 * t2410 + t2277 * t2415;
t2264 = -t2340 * t2486 - t2423;
t2230 = t2251 * t2416 + t2264 * t2411;
t2250 = t2276 * t2415 + t2277 * t2410;
t2445 = t2230 * t2412 - t2250 * t2417;
t2303 = -t2362 * t2461 - t2455;
t2305 = t2361 * t2461 + t2421;
t2275 = t2303 * t2415 - t2305 * t2410;
t2318 = -t2482 - t2483;
t2259 = t2275 * t2416 + t2318 * t2411;
t2274 = t2303 * t2410 + t2305 * t2415;
t2444 = t2259 * t2412 - t2274 * t2417;
t2324 = -t2480 - t2483;
t2292 = -t2310 * t2410 + t2324 * t2415;
t2302 = (qJD(4) + t2373) * t2362 + t2455;
t2267 = t2292 * t2416 + t2302 * t2411;
t2291 = t2310 * t2415 + t2324 * t2410;
t2443 = t2267 * t2412 - t2291 * t2417;
t2311 = -t2429 - t2470;
t2338 = -t2480 - t2482;
t2294 = t2311 * t2415 - t2338 * t2410;
t2304 = t2317 - t2469;
t2271 = t2294 * t2416 + t2304 * t2411;
t2293 = t2311 * t2410 + t2338 * t2415;
t2442 = t2271 * t2412 - t2293 * t2417;
t2273 = -t2299 * t2411 + t2300 * t2416;
t2441 = t2273 * t2412 - t2330 * t2417;
t2335 = -t2377 * t2464 - t2452;
t2337 = t2375 * t2464 + t2433;
t2307 = t2335 * t2416 - t2337 * t2411;
t2346 = -t2478 - t2479;
t2440 = t2307 * t2412 - t2346 * t2417;
t2349 = t2425 - t2468;
t2352 = -t2477 - t2479;
t2315 = -t2349 * t2411 + t2352 * t2416;
t2439 = t2315 * t2412 - t2334 * t2417;
t2348 = -t2468 - t2425;
t2357 = -t2477 - t2478;
t2321 = t2348 * t2416 - t2357 * t2411;
t2438 = t2321 * t2412 + t2417 * t2454;
t2353 = -g(3) * t2465 - t2453;
t2354 = -g(3) * t2466 + t2463;
t2437 = t2353 * t2417 + t2354 * t2412;
t2364 = t2451 - t2384;
t2387 = t2402 * t2458;
t2365 = t2387 - t2487;
t2436 = t2364 * t2417 + t2365 * t2412;
t2405 = t2412 ^ 2;
t2372 = -t2405 * t2467 - t2476;
t2393 = t2417 * t2412 * t2467;
t2382 = t2393 - t2401;
t2435 = t2372 * t2417 + t2382 * t2412;
t2381 = t2393 + t2401;
t2406 = t2417 ^ 2;
t2385 = -t2406 * t2467 - t2476;
t2434 = t2381 * t2417 + t2385 * t2412;
t2392 = -qJDD(1) * t2413 - t2418 * t2419;
t2391 = qJDD(1) * t2418 - t2413 * t2419;
t2386 = (-t2405 - t2406) * t2467;
t2368 = -t2407 * t2424 - t2474;
t2366 = t2387 + t2487;
t2363 = t2451 + t2384;
t2359 = -t2381 * t2412 + t2385 * t2417;
t2355 = -t2372 * t2412 + t2382 * t2417;
t2345 = -t2364 * t2412 + t2365 * t2417;
t2344 = -t2407 * t2366 + t2408 * t2434;
t2343 = t2408 * t2366 + t2407 * t2434;
t2333 = -t2407 * t2363 + t2408 * t2435;
t2332 = t2408 * t2363 + t2407 * t2435;
t2329 = -t2407 * t2386 + t2408 * t2436;
t2328 = t2408 * t2386 + t2407 * t2436;
t2320 = t2348 * t2411 + t2357 * t2416;
t2319 = -t2353 * t2412 + t2354 * t2417;
t2314 = t2349 * t2416 + t2352 * t2411;
t2309 = -t2407 * t2368 + t2408 * t2437;
t2308 = t2408 * t2368 + t2407 * t2437;
t2306 = t2335 * t2411 + t2337 * t2416;
t2298 = t2321 * t2417 - t2412 * t2454;
t2297 = t2315 * t2417 + t2334 * t2412;
t2289 = t2307 * t2417 + t2346 * t2412;
t2282 = -t2407 * t2320 + t2408 * t2438;
t2281 = t2408 * t2320 + t2407 * t2438;
t2279 = -t2407 * t2314 + t2408 * t2439;
t2278 = t2408 * t2314 + t2407 * t2439;
t2272 = t2299 * t2416 + t2300 * t2411;
t2270 = t2294 * t2411 - t2304 * t2416;
t2266 = t2292 * t2411 - t2302 * t2416;
t2261 = -t2407 * t2306 + t2408 * t2440;
t2260 = t2408 * t2306 + t2407 * t2440;
t2258 = t2275 * t2411 - t2318 * t2416;
t2257 = t2273 * t2417 + t2330 * t2412;
t2253 = t2271 * t2417 + t2293 * t2412;
t2252 = t2267 * t2417 + t2291 * t2412;
t2245 = t2259 * t2417 + t2274 * t2412;
t2239 = -t2407 * t2272 + t2408 * t2441;
t2238 = t2408 * t2272 + t2407 * t2441;
t2237 = -t2407 * t2270 + t2408 * t2442;
t2236 = t2408 * t2270 + t2407 * t2442;
t2235 = -t2407 * t2266 + t2408 * t2443;
t2234 = t2408 * t2266 + t2407 * t2443;
t2229 = t2251 * t2411 - t2264 * t2416;
t2227 = t2247 * t2411 - t2262 * t2416;
t2226 = -t2407 * t2258 + t2408 * t2444;
t2225 = t2408 * t2258 + t2407 * t2444;
t2223 = t2233 * t2411 - t2284 * t2416;
t2218 = t2230 * t2417 + t2250 * t2412;
t2216 = t2220 * t2411 - t2290 * t2416;
t2215 = t2228 * t2417 + t2246 * t2412;
t2212 = t2224 * t2417 + t2232 * t2412;
t2211 = -t2407 * t2229 + t2408 * t2445;
t2210 = t2408 * t2229 + t2407 * t2445;
t2207 = -t2407 * t2227 + t2408 * t2446;
t2206 = t2408 * t2227 + t2407 * t2446;
t2205 = t2217 * t2417 + t2219 * t2412;
t2204 = -t2407 * t2223 + t2408 * t2447;
t2203 = t2408 * t2223 + t2407 * t2447;
t2200 = -t2211 * t2413 + t2218 * t2418;
t2199 = t2211 * t2418 + t2218 * t2413;
t2198 = -t2207 * t2413 + t2215 * t2418;
t2197 = t2207 * t2418 + t2215 * t2413;
t2196 = -t2407 * t2216 + t2408 * t2448;
t2195 = t2408 * t2216 + t2407 * t2448;
t2191 = t2194 * t2411 - t2256 * t2416;
t2188 = -t2196 * t2413 + t2205 * t2418;
t2187 = t2196 * t2418 + t2205 * t2413;
t2185 = t2190 * t2411 - t2231 * t2416;
t2184 = t2192 * t2417 + t2193 * t2412;
t2183 = t2186 * t2417 + t2189 * t2412;
t2182 = -t2407 * t2191 + t2408 * t2449;
t2181 = t2408 * t2191 + t2407 * t2449;
t2180 = -t2407 * t2185 + t2408 * t2450;
t2179 = t2408 * t2185 + t2407 * t2450;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2392, -t2391, 0, -t2395 * t2413 + t2396 * t2418, 0, 0, 0, 0, 0, 0, -t2344 * t2413 + t2359 * t2418, -t2333 * t2413 + t2355 * t2418, -t2329 * t2413 + t2345 * t2418, -t2309 * t2413 + t2319 * t2418, 0, 0, 0, 0, 0, 0, -t2279 * t2413 + t2297 * t2418, -t2282 * t2413 + t2298 * t2418, -t2261 * t2413 + t2289 * t2418, -t2239 * t2413 + t2257 * t2418, 0, 0, 0, 0, 0, 0, -t2235 * t2413 + t2252 * t2418, -t2237 * t2413 + t2253 * t2418, -t2226 * t2413 + t2245 * t2418, -t2204 * t2413 + t2212 * t2418, 0, 0, 0, 0, 0, 0, t2198, t2200, t2188, -t2182 * t2413 + t2184 * t2418, 0, 0, 0, 0, 0, 0, t2198, t2200, t2188, -t2180 * t2413 + t2183 * t2418; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2391, t2392, 0, t2395 * t2418 + t2396 * t2413, 0, 0, 0, 0, 0, 0, t2344 * t2418 + t2359 * t2413, t2333 * t2418 + t2355 * t2413, t2329 * t2418 + t2345 * t2413, t2309 * t2418 + t2319 * t2413, 0, 0, 0, 0, 0, 0, t2279 * t2418 + t2297 * t2413, t2282 * t2418 + t2298 * t2413, t2261 * t2418 + t2289 * t2413, t2239 * t2418 + t2257 * t2413, 0, 0, 0, 0, 0, 0, t2235 * t2418 + t2252 * t2413, t2237 * t2418 + t2253 * t2413, t2226 * t2418 + t2245 * t2413, t2204 * t2418 + t2212 * t2413, 0, 0, 0, 0, 0, 0, t2197, t2199, t2187, t2182 * t2418 + t2184 * t2413, 0, 0, 0, 0, 0, 0, t2197, t2199, t2187, t2180 * t2418 + t2183 * t2413; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2343, t2332, t2328, t2308, 0, 0, 0, 0, 0, 0, t2278, t2281, t2260, t2238, 0, 0, 0, 0, 0, 0, t2234, t2236, t2225, t2203, 0, 0, 0, 0, 0, 0, t2206, t2210, t2195, t2181, 0, 0, 0, 0, 0, 0, t2206, t2210, t2195, t2179; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2419, -qJDD(1), 0, t2396, 0, 0, 0, 0, 0, 0, t2359, t2355, t2345, t2319, 0, 0, 0, 0, 0, 0, t2297, t2298, t2289, t2257, 0, 0, 0, 0, 0, 0, t2252, t2253, t2245, t2212, 0, 0, 0, 0, 0, 0, t2215, t2218, t2205, t2184, 0, 0, 0, 0, 0, 0, t2215, t2218, t2205, t2183; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2419, 0, t2395, 0, 0, 0, 0, 0, 0, t2344, t2333, t2329, t2309, 0, 0, 0, 0, 0, 0, t2279, t2282, t2261, t2239, 0, 0, 0, 0, 0, 0, t2235, t2237, t2226, t2204, 0, 0, 0, 0, 0, 0, t2207, t2211, t2196, t2182, 0, 0, 0, 0, 0, 0, t2207, t2211, t2196, t2180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2343, t2332, t2328, t2308, 0, 0, 0, 0, 0, 0, t2278, t2281, t2260, t2238, 0, 0, 0, 0, 0, 0, t2234, t2236, t2225, t2203, 0, 0, 0, 0, 0, 0, t2206, t2210, t2195, t2181, 0, 0, 0, 0, 0, 0, t2206, t2210, t2195, t2179; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2385, t2382, t2365, t2354, 0, 0, 0, 0, 0, 0, t2315, t2321, t2307, t2273, 0, 0, 0, 0, 0, 0, t2267, t2271, t2259, t2224, 0, 0, 0, 0, 0, 0, t2228, t2230, t2217, t2192, 0, 0, 0, 0, 0, 0, t2228, t2230, t2217, t2186; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2381, t2372, t2364, t2353, 0, 0, 0, 0, 0, 0, -t2334, t2454, -t2346, -t2330, 0, 0, 0, 0, 0, 0, -t2291, -t2293, -t2274, -t2232, 0, 0, 0, 0, 0, 0, -t2246, -t2250, -t2219, -t2193, 0, 0, 0, 0, 0, 0, -t2246, -t2250, -t2219, -t2189; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2366, t2363, t2386, t2368, 0, 0, 0, 0, 0, 0, t2314, t2320, t2306, t2272, 0, 0, 0, 0, 0, 0, t2266, t2270, t2258, t2223, 0, 0, 0, 0, 0, 0, t2227, t2229, t2216, t2191, 0, 0, 0, 0, 0, 0, t2227, t2229, t2216, t2185; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2352, t2348, t2335, t2300, 0, 0, 0, 0, 0, 0, t2292, t2294, t2275, t2233, 0, 0, 0, 0, 0, 0, t2247, t2251, t2220, t2194, 0, 0, 0, 0, 0, 0, t2247, t2251, t2220, t2190; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2349, t2357, t2337, t2299, 0, 0, 0, 0, 0, 0, -t2302, -t2304, -t2318, -t2284, 0, 0, 0, 0, 0, 0, -t2262, -t2264, -t2290, -t2256, 0, 0, 0, 0, 0, 0, -t2262, -t2264, -t2290, -t2231; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2334, -t2454, t2346, t2330, 0, 0, 0, 0, 0, 0, t2291, t2293, t2274, t2232, 0, 0, 0, 0, 0, 0, t2246, t2250, t2219, t2193, 0, 0, 0, 0, 0, 0, t2246, t2250, t2219, t2189; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2324, t2311, t2303, t2255, 0, 0, 0, 0, 0, 0, t2269, t2277, t2244, t2209, 0, 0, 0, 0, 0, 0, t2269, t2277, t2244, t2202; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2310, t2338, t2305, t2254, 0, 0, 0, 0, 0, 0, t2268, t2276, t2243, t2208, 0, 0, 0, 0, 0, 0, t2268, t2276, t2243, t2201; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2302, t2304, t2318, t2284, 0, 0, 0, 0, 0, 0, t2262, t2264, t2290, t2256, 0, 0, 0, 0, 0, 0, t2262, t2264, t2290, t2231; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2301, t2296, t2263, t2222, 0, 0, 0, 0, 0, 0, t2301, t2296, t2263, t2214; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2295, t2312, t2265, t2221, 0, 0, 0, 0, 0, 0, t2295, t2312, t2265, t2213; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2262, t2264, t2290, t2256, 0, 0, 0, 0, 0, 0, t2262, t2264, t2290, t2231; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2301, t2296, t2263, t2214; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2295, t2312, t2265, t2213; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2262, t2264, t2290, t2231;];
f_new_reg  = t1;