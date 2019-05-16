% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRPRP6
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,theta4]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 08:11
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRPRP6_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP6_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP6_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRP6_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRP6_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRP6_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 08:10:53
% EndTime: 2019-05-07 08:11:01
% DurationCPUTime: 9.16s
% Computational Cost: add. (88086->322), mult. (195614->479), div. (0->0), fcn. (159078->12), ass. (0->269)
t2440 = cos(pkin(6));
t2433 = qJD(1) * t2440 + qJD(2);
t2442 = sin(qJ(3));
t2446 = cos(qJ(3));
t2438 = sin(pkin(6));
t2443 = sin(qJ(2));
t2499 = qJD(1) * t2443;
t2491 = t2438 * t2499;
t2408 = t2433 * t2442 + t2446 * t2491;
t2447 = cos(qJ(2));
t2494 = t2438 * t2447;
t2490 = qJD(1) * t2494;
t2492 = qJDD(1) * t2438;
t2415 = qJD(2) * t2490 + t2443 * t2492;
t2484 = qJDD(1) * t2440 + qJDD(2);
t2485 = t2442 * t2415 - t2446 * t2484;
t2379 = -t2408 * qJD(3) - t2485;
t2407 = t2433 * t2446 - t2442 * t2491;
t2457 = -t2446 * t2415 - t2442 * t2484;
t2380 = t2407 * qJD(3) - t2457;
t2437 = sin(pkin(11));
t2439 = cos(pkin(11));
t2348 = t2437 * t2379 + t2439 * t2380;
t2387 = -t2439 * t2407 + t2408 * t2437;
t2482 = -qJD(3) + t2490;
t2461 = t2387 * t2482;
t2336 = t2348 + t2461;
t2514 = t2482 ^ 2;
t2513 = t2407 * t2482;
t2386 = qJD(5) + t2387;
t2512 = qJD(5) + t2386;
t2432 = t2447 * t2492;
t2462 = qJD(2) * t2491 - t2432;
t2458 = qJDD(3) + t2462;
t2496 = t2407 * t2408;
t2375 = t2458 + t2496;
t2389 = t2437 * t2407 + t2439 * t2408;
t2441 = sin(qJ(5));
t2445 = cos(qJ(5));
t2370 = t2389 * t2441 + t2445 * t2482;
t2511 = t2370 ^ 2;
t2372 = t2445 * t2389 - t2441 * t2482;
t2510 = t2372 ^ 2;
t2509 = t2386 ^ 2;
t2508 = t2387 ^ 2;
t2507 = t2389 ^ 2;
t2506 = t2407 ^ 2;
t2505 = t2408 ^ 2;
t2504 = t2433 ^ 2;
t2503 = -2 * qJD(4);
t2502 = -2 * qJD(6);
t2501 = t2440 * g(3);
t2500 = qJD(1) * t2438;
t2498 = t2370 * t2372;
t2497 = t2387 * t2389;
t2449 = qJD(1) ^ 2;
t2495 = t2438 ^ 2 * t2449;
t2493 = qJD(5) - t2386;
t2444 = sin(qJ(1));
t2448 = cos(qJ(1));
t2427 = -g(1) * t2448 - g(2) * t2444;
t2411 = -pkin(1) * t2449 + pkin(8) * t2492 + t2427;
t2414 = (-pkin(2) * t2447 - pkin(9) * t2443) * t2500;
t2426 = t2444 * g(1) - t2448 * g(2);
t2456 = t2449 * t2438 * pkin(8) + qJDD(1) * pkin(1) + t2426;
t2455 = t2440 * t2456;
t2453 = (-t2438 * g(3) + t2455) * t2443;
t2451 = t2484 * pkin(9) - t2504 * pkin(2) + (t2414 * t2500 + t2411) * t2447 + t2453;
t2452 = -t2432 * pkin(2) - t2415 * pkin(9) - t2501 + ((-pkin(9) * t2433 * t2447 + (qJD(2) + t2433) * t2443 * pkin(2)) * qJD(1) - t2456) * t2438;
t2330 = t2442 * t2452 + t2446 * t2451;
t2393 = -pkin(3) * t2482 - t2408 * qJ(4);
t2316 = -pkin(3) * t2506 + t2379 * qJ(4) + t2393 * t2482 + t2330;
t2329 = -t2442 * t2451 + t2446 * t2452;
t2450 = t2329 + (-t2380 - t2513) * qJ(4) + t2375 * pkin(3);
t2282 = t2439 * t2316 + t2387 * t2503 + t2437 * t2450;
t2353 = pkin(4) * t2387 - pkin(10) * t2389;
t2269 = -pkin(4) * t2514 + pkin(10) * t2458 - t2387 * t2353 + t2282;
t2486 = t2443 * t2411 - t2447 * t2455;
t2358 = -t2484 * pkin(2) - t2504 * pkin(9) + (g(3) * t2447 + t2414 * t2499) * t2438 + t2486;
t2322 = -t2379 * pkin(3) - t2506 * qJ(4) + t2408 * t2393 + qJDD(4) + t2358;
t2460 = t2482 * t2389;
t2487 = -t2439 * t2379 + t2437 * t2380;
t2334 = -t2460 + t2487;
t2288 = t2334 * pkin(4) - pkin(10) * t2336 + t2322;
t2259 = t2445 * t2269 + t2441 * t2288;
t2258 = -t2441 * t2269 + t2445 * t2288;
t2489 = t2437 * t2316 - t2439 * t2450;
t2488 = t2441 * t2348 - t2445 * t2458;
t2483 = t2433 * t2490;
t2481 = -qJDD(5) - t2487;
t2454 = -t2445 * t2348 - t2441 * t2458;
t2312 = t2370 * t2493 + t2454;
t2317 = -t2481 - t2498;
t2246 = pkin(5) * t2317 + qJ(6) * t2312 + t2372 * t2502 + t2258;
t2344 = pkin(5) * t2386 - qJ(6) * t2372;
t2459 = -qJD(5) * t2372 - t2488;
t2247 = -t2386 * t2344 + t2459 * qJ(6) + (-pkin(5) * t2370 + t2502) * t2370 + t2259;
t2231 = -t2246 * t2441 + t2247 * t2445;
t2268 = -t2458 * pkin(4) - t2514 * pkin(10) + ((2 * qJD(4)) + t2353) * t2389 + t2489;
t2262 = -pkin(5) * t2459 - qJ(6) * t2511 + t2372 * t2344 + qJDD(6) + t2268;
t2226 = t2231 * t2437 - t2262 * t2439;
t2227 = t2231 * t2439 + t2262 * t2437;
t2216 = -t2226 * t2442 + t2227 * t2446;
t2230 = t2246 * t2445 + t2247 * t2441;
t2479 = t2216 * t2443 - t2230 * t2447;
t2242 = -t2258 * t2441 + t2259 * t2445;
t2234 = t2242 * t2437 - t2268 * t2439;
t2235 = t2242 * t2439 + t2268 * t2437;
t2219 = -t2234 * t2442 + t2235 * t2446;
t2241 = t2258 * t2445 + t2259 * t2441;
t2478 = t2219 * t2443 - t2241 * t2447;
t2281 = t2389 * t2503 - t2489;
t2260 = t2281 * t2439 + t2282 * t2437;
t2261 = -t2281 * t2437 + t2282 * t2439;
t2244 = -t2260 * t2442 + t2261 * t2446;
t2477 = t2244 * t2443 - t2322 * t2447;
t2310 = -t2372 * t2493 - t2488;
t2285 = t2310 * t2445 - t2312 * t2441;
t2326 = -t2510 - t2511;
t2273 = t2285 * t2437 - t2326 * t2439;
t2274 = t2285 * t2439 + t2326 * t2437;
t2251 = -t2273 * t2442 + t2274 * t2446;
t2284 = t2310 * t2441 + t2312 * t2445;
t2476 = t2251 * t2443 - t2284 * t2447;
t2331 = -t2509 - t2511;
t2294 = -t2317 * t2441 + t2331 * t2445;
t2309 = t2372 * t2512 + t2488;
t2275 = t2294 * t2437 - t2309 * t2439;
t2276 = t2294 * t2439 + t2309 * t2437;
t2255 = -t2275 * t2442 + t2276 * t2446;
t2293 = t2317 * t2445 + t2331 * t2441;
t2475 = t2255 * t2443 - t2293 * t2447;
t2318 = t2481 - t2498;
t2338 = -t2509 - t2510;
t2298 = t2318 * t2445 - t2338 * t2441;
t2311 = -t2370 * t2512 - t2454;
t2277 = t2298 * t2437 - t2311 * t2439;
t2278 = t2298 * t2439 + t2311 * t2437;
t2257 = -t2277 * t2442 + t2278 * t2446;
t2297 = t2318 * t2441 + t2338 * t2445;
t2474 = t2257 * t2443 - t2297 * t2447;
t2335 = -t2460 - t2487;
t2337 = -t2348 + t2461;
t2303 = t2335 * t2437 + t2337 * t2439;
t2304 = t2335 * t2439 - t2337 * t2437;
t2280 = -t2303 * t2442 + t2304 * t2446;
t2339 = -t2507 - t2508;
t2473 = t2280 * t2443 - t2339 * t2447;
t2346 = t2458 - t2497;
t2350 = -t2514 - t2508;
t2320 = t2346 * t2439 + t2350 * t2437;
t2321 = -t2346 * t2437 + t2350 * t2439;
t2292 = -t2320 * t2442 + t2321 * t2446;
t2472 = t2292 * t2443 - t2334 * t2447;
t2345 = -t2458 - t2497;
t2367 = -t2514 - t2507;
t2327 = t2345 * t2437 + t2367 * t2439;
t2328 = t2345 * t2439 - t2367 * t2437;
t2300 = -t2327 * t2442 + t2328 * t2446;
t2471 = t2300 * t2443 - t2336 * t2447;
t2302 = -t2329 * t2442 + t2330 * t2446;
t2470 = t2302 * t2443 - t2358 * t2447;
t2362 = -t2408 * t2490 - t2485;
t2364 = -t2407 * t2490 + t2457;
t2333 = t2362 * t2446 - t2364 * t2442;
t2373 = -t2505 - t2506;
t2469 = t2333 * t2443 - t2373 * t2447;
t2381 = -t2514 - t2506;
t2343 = -t2375 * t2442 + t2381 * t2446;
t2361 = (0.2e1 * qJD(3) - t2490) * t2408 + t2485;
t2468 = t2343 * t2443 - t2361 * t2447;
t2374 = -t2458 + t2496;
t2391 = -t2514 - t2505;
t2352 = t2374 * t2446 - t2391 * t2442;
t2363 = t2380 - t2513;
t2467 = t2352 * t2443 - t2363 * t2447;
t2382 = -g(3) * t2494 - t2486;
t2383 = t2447 * t2411 + t2453;
t2466 = t2382 * t2447 + t2383 * t2443;
t2395 = t2483 - t2415;
t2418 = t2433 * t2491;
t2396 = t2418 - t2462;
t2465 = t2395 * t2447 + t2396 * t2443;
t2435 = t2443 ^ 2;
t2404 = -t2435 * t2495 - t2504;
t2425 = t2447 * t2443 * t2495;
t2413 = t2425 - t2484;
t2464 = t2404 * t2447 + t2413 * t2443;
t2412 = t2425 + t2484;
t2436 = t2447 ^ 2;
t2416 = -t2436 * t2495 - t2504;
t2463 = t2412 * t2447 + t2416 * t2443;
t2423 = -qJDD(1) * t2444 - t2448 * t2449;
t2422 = qJDD(1) * t2448 - t2444 * t2449;
t2417 = (-t2435 - t2436) * t2495;
t2399 = -t2438 * t2456 - t2501;
t2397 = t2418 + t2462;
t2394 = t2483 + t2415;
t2392 = -t2412 * t2443 + t2416 * t2447;
t2390 = -t2404 * t2443 + t2413 * t2447;
t2368 = -t2395 * t2443 + t2396 * t2447;
t2366 = -t2438 * t2397 + t2440 * t2463;
t2365 = t2440 * t2397 + t2438 * t2463;
t2360 = -t2438 * t2394 + t2440 * t2464;
t2359 = t2440 * t2394 + t2438 * t2464;
t2357 = -t2438 * t2417 + t2440 * t2465;
t2356 = t2440 * t2417 + t2438 * t2465;
t2351 = t2374 * t2442 + t2391 * t2446;
t2349 = -t2382 * t2443 + t2383 * t2447;
t2342 = t2375 * t2446 + t2381 * t2442;
t2341 = -t2438 * t2399 + t2440 * t2466;
t2340 = t2440 * t2399 + t2438 * t2466;
t2332 = t2362 * t2442 + t2364 * t2446;
t2325 = t2352 * t2447 + t2363 * t2443;
t2323 = t2343 * t2447 + t2361 * t2443;
t2319 = t2333 * t2447 + t2373 * t2443;
t2315 = -t2438 * t2351 + t2440 * t2467;
t2314 = t2440 * t2351 + t2438 * t2467;
t2308 = -t2438 * t2342 + t2440 * t2468;
t2307 = t2440 * t2342 + t2438 * t2468;
t2301 = t2329 * t2446 + t2330 * t2442;
t2299 = t2327 * t2446 + t2328 * t2442;
t2296 = -t2438 * t2332 + t2440 * t2469;
t2295 = t2440 * t2332 + t2438 * t2469;
t2291 = t2320 * t2446 + t2321 * t2442;
t2290 = t2302 * t2447 + t2358 * t2443;
t2289 = t2300 * t2447 + t2336 * t2443;
t2283 = t2292 * t2447 + t2334 * t2443;
t2279 = t2303 * t2446 + t2304 * t2442;
t2272 = t2280 * t2447 + t2339 * t2443;
t2271 = -t2438 * t2301 + t2440 * t2470;
t2270 = t2440 * t2301 + t2438 * t2470;
t2266 = -t2438 * t2299 + t2440 * t2471;
t2265 = t2440 * t2299 + t2438 * t2471;
t2264 = -t2438 * t2291 + t2440 * t2472;
t2263 = t2440 * t2291 + t2438 * t2472;
t2256 = t2277 * t2446 + t2278 * t2442;
t2254 = t2275 * t2446 + t2276 * t2442;
t2253 = -t2438 * t2279 + t2440 * t2473;
t2252 = t2440 * t2279 + t2438 * t2473;
t2250 = t2273 * t2446 + t2274 * t2442;
t2249 = t2257 * t2447 + t2297 * t2443;
t2248 = t2255 * t2447 + t2293 * t2443;
t2245 = t2251 * t2447 + t2284 * t2443;
t2243 = t2260 * t2446 + t2261 * t2442;
t2240 = t2244 * t2447 + t2322 * t2443;
t2239 = -t2438 * t2256 + t2440 * t2474;
t2238 = t2440 * t2256 + t2438 * t2474;
t2237 = -t2438 * t2254 + t2440 * t2475;
t2236 = t2440 * t2254 + t2438 * t2475;
t2233 = -t2438 * t2250 + t2440 * t2476;
t2232 = t2440 * t2250 + t2438 * t2476;
t2229 = -t2239 * t2444 + t2249 * t2448;
t2228 = t2239 * t2448 + t2249 * t2444;
t2225 = -t2237 * t2444 + t2248 * t2448;
t2224 = t2237 * t2448 + t2248 * t2444;
t2223 = -t2438 * t2243 + t2440 * t2477;
t2222 = t2440 * t2243 + t2438 * t2477;
t2221 = -t2233 * t2444 + t2245 * t2448;
t2220 = t2233 * t2448 + t2245 * t2444;
t2218 = t2234 * t2446 + t2235 * t2442;
t2217 = t2219 * t2447 + t2241 * t2443;
t2215 = t2226 * t2446 + t2227 * t2442;
t2214 = t2216 * t2447 + t2230 * t2443;
t2213 = -t2438 * t2218 + t2440 * t2478;
t2212 = t2440 * t2218 + t2438 * t2478;
t2211 = -t2438 * t2215 + t2440 * t2479;
t2210 = t2440 * t2215 + t2438 * t2479;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2423, -t2422, 0, -t2426 * t2444 + t2427 * t2448, 0, 0, 0, 0, 0, 0, -t2366 * t2444 + t2392 * t2448, -t2360 * t2444 + t2390 * t2448, -t2357 * t2444 + t2368 * t2448, -t2341 * t2444 + t2349 * t2448, 0, 0, 0, 0, 0, 0, -t2308 * t2444 + t2323 * t2448, -t2315 * t2444 + t2325 * t2448, -t2296 * t2444 + t2319 * t2448, -t2271 * t2444 + t2290 * t2448, 0, 0, 0, 0, 0, 0, -t2264 * t2444 + t2283 * t2448, -t2266 * t2444 + t2289 * t2448, -t2253 * t2444 + t2272 * t2448, -t2223 * t2444 + t2240 * t2448, 0, 0, 0, 0, 0, 0, t2225, t2229, t2221, -t2213 * t2444 + t2217 * t2448, 0, 0, 0, 0, 0, 0, t2225, t2229, t2221, -t2211 * t2444 + t2214 * t2448; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2422, t2423, 0, t2426 * t2448 + t2427 * t2444, 0, 0, 0, 0, 0, 0, t2366 * t2448 + t2392 * t2444, t2360 * t2448 + t2390 * t2444, t2357 * t2448 + t2368 * t2444, t2341 * t2448 + t2349 * t2444, 0, 0, 0, 0, 0, 0, t2308 * t2448 + t2323 * t2444, t2315 * t2448 + t2325 * t2444, t2296 * t2448 + t2319 * t2444, t2271 * t2448 + t2290 * t2444, 0, 0, 0, 0, 0, 0, t2264 * t2448 + t2283 * t2444, t2266 * t2448 + t2289 * t2444, t2253 * t2448 + t2272 * t2444, t2223 * t2448 + t2240 * t2444, 0, 0, 0, 0, 0, 0, t2224, t2228, t2220, t2213 * t2448 + t2217 * t2444, 0, 0, 0, 0, 0, 0, t2224, t2228, t2220, t2211 * t2448 + t2214 * t2444; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2365, t2359, t2356, t2340, 0, 0, 0, 0, 0, 0, t2307, t2314, t2295, t2270, 0, 0, 0, 0, 0, 0, t2263, t2265, t2252, t2222, 0, 0, 0, 0, 0, 0, t2236, t2238, t2232, t2212, 0, 0, 0, 0, 0, 0, t2236, t2238, t2232, t2210; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2449, -qJDD(1), 0, t2427, 0, 0, 0, 0, 0, 0, t2392, t2390, t2368, t2349, 0, 0, 0, 0, 0, 0, t2323, t2325, t2319, t2290, 0, 0, 0, 0, 0, 0, t2283, t2289, t2272, t2240, 0, 0, 0, 0, 0, 0, t2248, t2249, t2245, t2217, 0, 0, 0, 0, 0, 0, t2248, t2249, t2245, t2214; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2449, 0, t2426, 0, 0, 0, 0, 0, 0, t2366, t2360, t2357, t2341, 0, 0, 0, 0, 0, 0, t2308, t2315, t2296, t2271, 0, 0, 0, 0, 0, 0, t2264, t2266, t2253, t2223, 0, 0, 0, 0, 0, 0, t2237, t2239, t2233, t2213, 0, 0, 0, 0, 0, 0, t2237, t2239, t2233, t2211; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2365, t2359, t2356, t2340, 0, 0, 0, 0, 0, 0, t2307, t2314, t2295, t2270, 0, 0, 0, 0, 0, 0, t2263, t2265, t2252, t2222, 0, 0, 0, 0, 0, 0, t2236, t2238, t2232, t2212, 0, 0, 0, 0, 0, 0, t2236, t2238, t2232, t2210; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2416, t2413, t2396, t2383, 0, 0, 0, 0, 0, 0, t2343, t2352, t2333, t2302, 0, 0, 0, 0, 0, 0, t2292, t2300, t2280, t2244, 0, 0, 0, 0, 0, 0, t2255, t2257, t2251, t2219, 0, 0, 0, 0, 0, 0, t2255, t2257, t2251, t2216; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2412, t2404, t2395, t2382, 0, 0, 0, 0, 0, 0, -t2361, -t2363, -t2373, -t2358, 0, 0, 0, 0, 0, 0, -t2334, -t2336, -t2339, -t2322, 0, 0, 0, 0, 0, 0, -t2293, -t2297, -t2284, -t2241, 0, 0, 0, 0, 0, 0, -t2293, -t2297, -t2284, -t2230; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2397, t2394, t2417, t2399, 0, 0, 0, 0, 0, 0, t2342, t2351, t2332, t2301, 0, 0, 0, 0, 0, 0, t2291, t2299, t2279, t2243, 0, 0, 0, 0, 0, 0, t2254, t2256, t2250, t2218, 0, 0, 0, 0, 0, 0, t2254, t2256, t2250, t2215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2381, t2374, t2362, t2330, 0, 0, 0, 0, 0, 0, t2321, t2328, t2304, t2261, 0, 0, 0, 0, 0, 0, t2276, t2278, t2274, t2235, 0, 0, 0, 0, 0, 0, t2276, t2278, t2274, t2227; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2375, t2391, t2364, t2329, 0, 0, 0, 0, 0, 0, t2320, t2327, t2303, t2260, 0, 0, 0, 0, 0, 0, t2275, t2277, t2273, t2234, 0, 0, 0, 0, 0, 0, t2275, t2277, t2273, t2226; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2361, t2363, t2373, t2358, 0, 0, 0, 0, 0, 0, t2334, t2336, t2339, t2322, 0, 0, 0, 0, 0, 0, t2293, t2297, t2284, t2241, 0, 0, 0, 0, 0, 0, t2293, t2297, t2284, t2230; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2350, t2345, t2335, t2282, 0, 0, 0, 0, 0, 0, t2294, t2298, t2285, t2242, 0, 0, 0, 0, 0, 0, t2294, t2298, t2285, t2231; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2346, t2367, t2337, t2281, 0, 0, 0, 0, 0, 0, -t2309, -t2311, -t2326, -t2268, 0, 0, 0, 0, 0, 0, -t2309, -t2311, -t2326, -t2262; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2334, t2336, t2339, t2322, 0, 0, 0, 0, 0, 0, t2293, t2297, t2284, t2241, 0, 0, 0, 0, 0, 0, t2293, t2297, t2284, t2230; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2331, t2318, t2310, t2259, 0, 0, 0, 0, 0, 0, t2331, t2318, t2310, t2247; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2317, t2338, t2312, t2258, 0, 0, 0, 0, 0, 0, t2317, t2338, t2312, t2246; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2309, t2311, t2326, t2268, 0, 0, 0, 0, 0, 0, t2309, t2311, t2326, t2262; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2331, t2318, t2310, t2247; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2317, t2338, t2312, t2246; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2309, t2311, t2326, t2262;];
f_new_reg  = t1;
