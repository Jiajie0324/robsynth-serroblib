% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRRRP7
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
% Datum: 2019-05-08 05:36
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRRRP7_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP7_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP7_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP7_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP7_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRP7_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 05:35:33
% EndTime: 2019-05-08 05:35:42
% DurationCPUTime: 9.34s
% Computational Cost: add. (96357->324), mult. (205827->480), div. (0->0), fcn. (168798->12), ass. (0->270)
t2438 = sin(pkin(6));
t2448 = cos(qJ(2));
t2495 = t2438 * t2448;
t2490 = qJD(1) * t2495;
t2425 = -qJD(3) + t2490;
t2464 = -qJD(4) + t2425;
t2463 = t2464 ^ 2;
t2439 = cos(pkin(6));
t2434 = qJD(1) * t2439 + qJD(2);
t2442 = sin(qJ(3));
t2447 = cos(qJ(3));
t2443 = sin(qJ(2));
t2501 = qJD(1) * t2443;
t2491 = t2438 * t2501;
t2408 = t2434 * t2447 - t2442 * t2491;
t2409 = t2434 * t2442 + t2447 * t2491;
t2441 = sin(qJ(4));
t2446 = cos(qJ(4));
t2389 = -t2446 * t2408 + t2409 * t2441;
t2388 = qJD(5) + t2389;
t2514 = qJD(5) + t2388;
t2492 = qJDD(1) * t2438;
t2433 = t2448 * t2492;
t2465 = qJD(2) * t2491 - t2433;
t2461 = qJDD(3) + t2465;
t2498 = t2408 * t2409;
t2379 = t2461 + t2498;
t2414 = qJD(2) * t2490 + t2443 * t2492;
t2485 = qJDD(1) * t2439 + qJDD(2);
t2486 = t2442 * t2414 - t2447 * t2485;
t2383 = -qJD(3) * t2409 - t2486;
t2458 = -t2447 * t2414 - t2442 * t2485;
t2384 = t2408 * qJD(3) - t2458;
t2470 = -t2441 * t2383 - t2446 * t2384;
t2343 = -t2389 * qJD(4) - t2470;
t2330 = t2389 * t2464 + t2343;
t2391 = t2408 * t2441 + t2409 * t2446;
t2440 = sin(qJ(5));
t2445 = cos(qJ(5));
t2374 = t2391 * t2440 + t2445 * t2464;
t2513 = t2374 ^ 2;
t2376 = t2445 * t2391 - t2440 * t2464;
t2512 = t2376 ^ 2;
t2511 = t2388 ^ 2;
t2510 = t2389 ^ 2;
t2509 = t2391 ^ 2;
t2508 = t2408 ^ 2;
t2507 = t2409 ^ 2;
t2506 = t2425 ^ 2;
t2505 = t2434 ^ 2;
t2504 = -2 * qJD(6);
t2503 = t2439 * g(3);
t2502 = qJD(1) * t2438;
t2500 = t2374 * t2376;
t2499 = t2389 * t2391;
t2497 = t2408 * t2425;
t2450 = qJD(1) ^ 2;
t2496 = t2438 ^ 2 * t2450;
t2494 = qJD(5) - t2388;
t2444 = sin(qJ(1));
t2449 = cos(qJ(1));
t2428 = -g(1) * t2449 - g(2) * t2444;
t2410 = -pkin(1) * t2450 + pkin(8) * t2492 + t2428;
t2413 = (-pkin(2) * t2448 - pkin(9) * t2443) * t2502;
t2427 = t2444 * g(1) - t2449 * g(2);
t2457 = t2450 * t2438 * pkin(8) + qJDD(1) * pkin(1) + t2427;
t2456 = t2439 * t2457;
t2454 = (-t2438 * g(3) + t2456) * t2443;
t2452 = t2485 * pkin(9) - t2505 * pkin(2) + (t2413 * t2502 + t2410) * t2448 + t2454;
t2453 = -t2433 * pkin(2) - t2414 * pkin(9) - t2503 + ((-pkin(9) * t2434 * t2448 + (qJD(2) + t2434) * t2443 * pkin(2)) * qJD(1) - t2457) * t2438;
t2338 = t2442 * t2453 + t2447 * t2452;
t2395 = -pkin(3) * t2425 - pkin(10) * t2409;
t2320 = -pkin(3) * t2508 + pkin(10) * t2383 + t2395 * t2425 + t2338;
t2337 = -t2442 * t2452 + t2447 * t2453;
t2451 = t2337 + (-t2384 - t2497) * pkin(10) + t2379 * pkin(3);
t2292 = t2446 * t2320 + t2441 * t2451;
t2357 = pkin(4) * t2389 - pkin(11) * t2391;
t2459 = qJDD(4) + t2461;
t2284 = -pkin(4) * t2463 + pkin(11) * t2459 - t2389 * t2357 + t2292;
t2487 = t2443 * t2410 - t2448 * t2456;
t2362 = -t2485 * pkin(2) - t2505 * pkin(9) + (g(3) * t2448 + t2413 * t2501) * t2438 + t2487;
t2327 = -t2383 * pkin(3) - t2508 * pkin(10) + t2409 * t2395 + t2362;
t2488 = -t2446 * t2383 + t2441 * t2384;
t2328 = (0.2e1 * qJD(4) - t2425) * t2391 + t2488;
t2290 = t2328 * pkin(4) - pkin(11) * t2330 + t2327;
t2263 = t2445 * t2284 + t2440 * t2290;
t2493 = -t2425 - qJD(3);
t2262 = -t2440 * t2284 + t2445 * t2290;
t2291 = -t2320 * t2441 + t2446 * t2451;
t2489 = t2440 * t2343 - t2445 * t2459;
t2484 = t2434 * t2490;
t2455 = -t2445 * t2343 - t2440 * t2459;
t2312 = t2374 * t2494 + t2455;
t2460 = -t2391 * qJD(4) - qJDD(5) - t2488;
t2321 = -t2460 - t2500;
t2250 = pkin(5) * t2321 + qJ(6) * t2312 + t2376 * t2504 + t2262;
t2349 = pkin(5) * t2388 - qJ(6) * t2376;
t2462 = -qJD(5) * t2376 - t2489;
t2253 = -t2388 * t2349 + t2462 * qJ(6) + (-pkin(5) * t2374 + t2504) * t2374 + t2263;
t2237 = -t2250 * t2440 + t2253 * t2445;
t2283 = -t2459 * pkin(4) - t2463 * pkin(11) + t2357 * t2391 - t2291;
t2264 = -pkin(5) * t2462 - qJ(6) * t2513 + t2349 * t2376 + qJDD(6) + t2283;
t2230 = t2237 * t2441 - t2264 * t2446;
t2231 = t2237 * t2446 + t2264 * t2441;
t2220 = -t2230 * t2442 + t2231 * t2447;
t2236 = t2250 * t2445 + t2253 * t2440;
t2483 = t2220 * t2443 - t2236 * t2448;
t2245 = -t2262 * t2440 + t2263 * t2445;
t2242 = t2245 * t2441 - t2283 * t2446;
t2243 = t2245 * t2446 + t2283 * t2441;
t2223 = -t2242 * t2442 + t2243 * t2447;
t2244 = t2262 * t2445 + t2263 * t2440;
t2482 = t2223 * t2443 - t2244 * t2448;
t2265 = t2291 * t2446 + t2292 * t2441;
t2266 = -t2291 * t2441 + t2292 * t2446;
t2249 = -t2265 * t2442 + t2266 * t2447;
t2481 = t2249 * t2443 - t2327 * t2448;
t2310 = -t2376 * t2494 - t2489;
t2286 = t2310 * t2445 - t2312 * t2440;
t2334 = -t2512 - t2513;
t2272 = t2286 * t2441 - t2334 * t2446;
t2273 = t2286 * t2446 + t2334 * t2441;
t2257 = -t2272 * t2442 + t2273 * t2447;
t2285 = t2310 * t2440 + t2312 * t2445;
t2480 = t2257 * t2443 - t2285 * t2448;
t2339 = -t2511 - t2513;
t2296 = -t2321 * t2440 + t2339 * t2445;
t2309 = t2376 * t2514 + t2489;
t2278 = t2296 * t2441 - t2309 * t2446;
t2279 = t2296 * t2446 + t2309 * t2441;
t2259 = -t2278 * t2442 + t2279 * t2447;
t2295 = t2321 * t2445 + t2339 * t2440;
t2479 = t2259 * t2443 - t2295 * t2448;
t2322 = t2460 - t2500;
t2342 = -t2511 - t2512;
t2300 = t2322 * t2445 - t2342 * t2440;
t2311 = -t2374 * t2514 - t2455;
t2280 = t2300 * t2441 - t2311 * t2446;
t2281 = t2300 * t2446 + t2311 * t2441;
t2261 = -t2280 * t2442 + t2281 * t2447;
t2299 = t2322 * t2440 + t2342 * t2445;
t2478 = t2261 * t2443 - t2299 * t2448;
t2329 = -t2391 * t2425 - t2488;
t2331 = t2389 * t2425 + t2470;
t2301 = t2329 * t2441 + t2331 * t2446;
t2302 = t2329 * t2446 - t2331 * t2441;
t2275 = -t2301 * t2442 + t2302 * t2447;
t2344 = -t2509 - t2510;
t2477 = t2275 * t2443 - t2344 * t2448;
t2351 = t2459 - t2499;
t2354 = -t2463 - t2510;
t2325 = t2351 * t2446 + t2354 * t2441;
t2326 = -t2351 * t2441 + t2354 * t2446;
t2298 = -t2325 * t2442 + t2326 * t2447;
t2476 = t2298 * t2443 - t2328 * t2448;
t2350 = -t2459 - t2499;
t2371 = -t2509 - t2463;
t2335 = t2350 * t2441 + t2371 * t2446;
t2336 = t2350 * t2446 - t2371 * t2441;
t2306 = -t2335 * t2442 + t2336 * t2447;
t2475 = t2306 * t2443 - t2330 * t2448;
t2308 = -t2337 * t2442 + t2338 * t2447;
t2474 = t2308 * t2443 - t2362 * t2448;
t2366 = t2409 * t2493 - t2486;
t2368 = t2408 * t2493 + t2458;
t2341 = t2366 * t2447 - t2368 * t2442;
t2377 = -t2507 - t2508;
t2473 = t2341 * t2443 - t2377 * t2448;
t2385 = -t2506 - t2508;
t2348 = -t2379 * t2442 + t2385 * t2447;
t2365 = (qJD(3) - t2425) * t2409 + t2486;
t2472 = t2348 * t2443 - t2365 * t2448;
t2378 = -t2461 + t2498;
t2393 = -t2506 - t2507;
t2356 = t2378 * t2447 - t2393 * t2442;
t2367 = t2384 - t2497;
t2471 = t2356 * t2443 - t2367 * t2448;
t2386 = -g(3) * t2495 - t2487;
t2387 = t2448 * t2410 + t2454;
t2469 = t2386 * t2448 + t2387 * t2443;
t2397 = t2484 - t2414;
t2417 = t2434 * t2491;
t2398 = t2417 - t2465;
t2468 = t2397 * t2448 + t2398 * t2443;
t2436 = t2443 ^ 2;
t2405 = -t2436 * t2496 - t2505;
t2424 = t2448 * t2443 * t2496;
t2412 = t2424 - t2485;
t2467 = t2405 * t2448 + t2412 * t2443;
t2411 = t2424 + t2485;
t2437 = t2448 ^ 2;
t2415 = -t2437 * t2496 - t2505;
t2466 = t2411 * t2448 + t2415 * t2443;
t2422 = -qJDD(1) * t2444 - t2449 * t2450;
t2421 = qJDD(1) * t2449 - t2444 * t2450;
t2416 = (-t2436 - t2437) * t2496;
t2401 = -t2438 * t2457 - t2503;
t2399 = t2417 + t2465;
t2396 = t2484 + t2414;
t2394 = -t2411 * t2443 + t2415 * t2448;
t2392 = -t2405 * t2443 + t2412 * t2448;
t2372 = -t2397 * t2443 + t2398 * t2448;
t2370 = -t2438 * t2399 + t2439 * t2466;
t2369 = t2439 * t2399 + t2438 * t2466;
t2364 = -t2438 * t2396 + t2439 * t2467;
t2363 = t2439 * t2396 + t2438 * t2467;
t2361 = -t2438 * t2416 + t2439 * t2468;
t2360 = t2439 * t2416 + t2438 * t2468;
t2355 = t2378 * t2442 + t2393 * t2447;
t2353 = -t2386 * t2443 + t2387 * t2448;
t2347 = t2379 * t2447 + t2385 * t2442;
t2346 = -t2438 * t2401 + t2439 * t2469;
t2345 = t2439 * t2401 + t2438 * t2469;
t2340 = t2366 * t2442 + t2368 * t2447;
t2333 = t2356 * t2448 + t2367 * t2443;
t2332 = t2348 * t2448 + t2365 * t2443;
t2324 = t2341 * t2448 + t2377 * t2443;
t2318 = -t2438 * t2355 + t2439 * t2471;
t2317 = t2439 * t2355 + t2438 * t2471;
t2316 = -t2438 * t2347 + t2439 * t2472;
t2315 = t2439 * t2347 + t2438 * t2472;
t2307 = t2337 * t2447 + t2338 * t2442;
t2305 = t2335 * t2447 + t2336 * t2442;
t2304 = -t2438 * t2340 + t2439 * t2473;
t2303 = t2439 * t2340 + t2438 * t2473;
t2297 = t2325 * t2447 + t2326 * t2442;
t2294 = t2308 * t2448 + t2362 * t2443;
t2293 = t2306 * t2448 + t2330 * t2443;
t2287 = t2298 * t2448 + t2328 * t2443;
t2277 = -t2438 * t2307 + t2439 * t2474;
t2276 = t2439 * t2307 + t2438 * t2474;
t2274 = t2301 * t2447 + t2302 * t2442;
t2271 = -t2438 * t2305 + t2439 * t2475;
t2270 = t2439 * t2305 + t2438 * t2475;
t2269 = t2275 * t2448 + t2344 * t2443;
t2268 = -t2438 * t2297 + t2439 * t2476;
t2267 = t2439 * t2297 + t2438 * t2476;
t2260 = t2280 * t2447 + t2281 * t2442;
t2258 = t2278 * t2447 + t2279 * t2442;
t2256 = t2272 * t2447 + t2273 * t2442;
t2255 = -t2438 * t2274 + t2439 * t2477;
t2254 = t2439 * t2274 + t2438 * t2477;
t2252 = t2261 * t2448 + t2299 * t2443;
t2251 = t2259 * t2448 + t2295 * t2443;
t2248 = t2265 * t2447 + t2266 * t2442;
t2247 = t2257 * t2448 + t2285 * t2443;
t2246 = t2249 * t2448 + t2327 * t2443;
t2241 = -t2438 * t2260 + t2439 * t2478;
t2240 = t2439 * t2260 + t2438 * t2478;
t2239 = -t2438 * t2258 + t2439 * t2479;
t2238 = t2439 * t2258 + t2438 * t2479;
t2235 = -t2438 * t2256 + t2439 * t2480;
t2234 = t2439 * t2256 + t2438 * t2480;
t2233 = -t2438 * t2248 + t2439 * t2481;
t2232 = t2439 * t2248 + t2438 * t2481;
t2229 = -t2241 * t2444 + t2252 * t2449;
t2228 = t2241 * t2449 + t2252 * t2444;
t2227 = -t2239 * t2444 + t2251 * t2449;
t2226 = t2239 * t2449 + t2251 * t2444;
t2225 = -t2235 * t2444 + t2247 * t2449;
t2224 = t2235 * t2449 + t2247 * t2444;
t2222 = t2242 * t2447 + t2243 * t2442;
t2221 = t2223 * t2448 + t2244 * t2443;
t2219 = t2230 * t2447 + t2231 * t2442;
t2218 = t2220 * t2448 + t2236 * t2443;
t2217 = -t2438 * t2222 + t2439 * t2482;
t2216 = t2439 * t2222 + t2438 * t2482;
t2215 = -t2438 * t2219 + t2439 * t2483;
t2214 = t2439 * t2219 + t2438 * t2483;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2422, -t2421, 0, -t2427 * t2444 + t2428 * t2449, 0, 0, 0, 0, 0, 0, -t2370 * t2444 + t2394 * t2449, -t2364 * t2444 + t2392 * t2449, -t2361 * t2444 + t2372 * t2449, -t2346 * t2444 + t2353 * t2449, 0, 0, 0, 0, 0, 0, -t2316 * t2444 + t2332 * t2449, -t2318 * t2444 + t2333 * t2449, -t2304 * t2444 + t2324 * t2449, -t2277 * t2444 + t2294 * t2449, 0, 0, 0, 0, 0, 0, -t2268 * t2444 + t2287 * t2449, -t2271 * t2444 + t2293 * t2449, -t2255 * t2444 + t2269 * t2449, -t2233 * t2444 + t2246 * t2449, 0, 0, 0, 0, 0, 0, t2227, t2229, t2225, -t2217 * t2444 + t2221 * t2449, 0, 0, 0, 0, 0, 0, t2227, t2229, t2225, -t2215 * t2444 + t2218 * t2449; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2421, t2422, 0, t2427 * t2449 + t2428 * t2444, 0, 0, 0, 0, 0, 0, t2370 * t2449 + t2394 * t2444, t2364 * t2449 + t2392 * t2444, t2361 * t2449 + t2372 * t2444, t2346 * t2449 + t2353 * t2444, 0, 0, 0, 0, 0, 0, t2316 * t2449 + t2332 * t2444, t2318 * t2449 + t2333 * t2444, t2304 * t2449 + t2324 * t2444, t2277 * t2449 + t2294 * t2444, 0, 0, 0, 0, 0, 0, t2268 * t2449 + t2287 * t2444, t2271 * t2449 + t2293 * t2444, t2255 * t2449 + t2269 * t2444, t2233 * t2449 + t2246 * t2444, 0, 0, 0, 0, 0, 0, t2226, t2228, t2224, t2217 * t2449 + t2221 * t2444, 0, 0, 0, 0, 0, 0, t2226, t2228, t2224, t2215 * t2449 + t2218 * t2444; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2369, t2363, t2360, t2345, 0, 0, 0, 0, 0, 0, t2315, t2317, t2303, t2276, 0, 0, 0, 0, 0, 0, t2267, t2270, t2254, t2232, 0, 0, 0, 0, 0, 0, t2238, t2240, t2234, t2216, 0, 0, 0, 0, 0, 0, t2238, t2240, t2234, t2214; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2450, -qJDD(1), 0, t2428, 0, 0, 0, 0, 0, 0, t2394, t2392, t2372, t2353, 0, 0, 0, 0, 0, 0, t2332, t2333, t2324, t2294, 0, 0, 0, 0, 0, 0, t2287, t2293, t2269, t2246, 0, 0, 0, 0, 0, 0, t2251, t2252, t2247, t2221, 0, 0, 0, 0, 0, 0, t2251, t2252, t2247, t2218; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2450, 0, t2427, 0, 0, 0, 0, 0, 0, t2370, t2364, t2361, t2346, 0, 0, 0, 0, 0, 0, t2316, t2318, t2304, t2277, 0, 0, 0, 0, 0, 0, t2268, t2271, t2255, t2233, 0, 0, 0, 0, 0, 0, t2239, t2241, t2235, t2217, 0, 0, 0, 0, 0, 0, t2239, t2241, t2235, t2215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2369, t2363, t2360, t2345, 0, 0, 0, 0, 0, 0, t2315, t2317, t2303, t2276, 0, 0, 0, 0, 0, 0, t2267, t2270, t2254, t2232, 0, 0, 0, 0, 0, 0, t2238, t2240, t2234, t2216, 0, 0, 0, 0, 0, 0, t2238, t2240, t2234, t2214; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2415, t2412, t2398, t2387, 0, 0, 0, 0, 0, 0, t2348, t2356, t2341, t2308, 0, 0, 0, 0, 0, 0, t2298, t2306, t2275, t2249, 0, 0, 0, 0, 0, 0, t2259, t2261, t2257, t2223, 0, 0, 0, 0, 0, 0, t2259, t2261, t2257, t2220; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2411, t2405, t2397, t2386, 0, 0, 0, 0, 0, 0, -t2365, -t2367, -t2377, -t2362, 0, 0, 0, 0, 0, 0, -t2328, -t2330, -t2344, -t2327, 0, 0, 0, 0, 0, 0, -t2295, -t2299, -t2285, -t2244, 0, 0, 0, 0, 0, 0, -t2295, -t2299, -t2285, -t2236; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2399, t2396, t2416, t2401, 0, 0, 0, 0, 0, 0, t2347, t2355, t2340, t2307, 0, 0, 0, 0, 0, 0, t2297, t2305, t2274, t2248, 0, 0, 0, 0, 0, 0, t2258, t2260, t2256, t2222, 0, 0, 0, 0, 0, 0, t2258, t2260, t2256, t2219; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2385, t2378, t2366, t2338, 0, 0, 0, 0, 0, 0, t2326, t2336, t2302, t2266, 0, 0, 0, 0, 0, 0, t2279, t2281, t2273, t2243, 0, 0, 0, 0, 0, 0, t2279, t2281, t2273, t2231; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2379, t2393, t2368, t2337, 0, 0, 0, 0, 0, 0, t2325, t2335, t2301, t2265, 0, 0, 0, 0, 0, 0, t2278, t2280, t2272, t2242, 0, 0, 0, 0, 0, 0, t2278, t2280, t2272, t2230; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2365, t2367, t2377, t2362, 0, 0, 0, 0, 0, 0, t2328, t2330, t2344, t2327, 0, 0, 0, 0, 0, 0, t2295, t2299, t2285, t2244, 0, 0, 0, 0, 0, 0, t2295, t2299, t2285, t2236; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2354, t2350, t2329, t2292, 0, 0, 0, 0, 0, 0, t2296, t2300, t2286, t2245, 0, 0, 0, 0, 0, 0, t2296, t2300, t2286, t2237; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2351, t2371, t2331, t2291, 0, 0, 0, 0, 0, 0, -t2309, -t2311, -t2334, -t2283, 0, 0, 0, 0, 0, 0, -t2309, -t2311, -t2334, -t2264; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2328, t2330, t2344, t2327, 0, 0, 0, 0, 0, 0, t2295, t2299, t2285, t2244, 0, 0, 0, 0, 0, 0, t2295, t2299, t2285, t2236; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2339, t2322, t2310, t2263, 0, 0, 0, 0, 0, 0, t2339, t2322, t2310, t2253; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2321, t2342, t2312, t2262, 0, 0, 0, 0, 0, 0, t2321, t2342, t2312, t2250; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2309, t2311, t2334, t2283, 0, 0, 0, 0, 0, 0, t2309, t2311, t2334, t2264; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2339, t2322, t2310, t2253; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2321, t2342, t2312, t2250; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2309, t2311, t2334, t2264;];
f_new_reg  = t1;
