% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRRPP5
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 18:30
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRRPP5_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP5_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP5_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPP5_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPP5_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP5_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 18:30:11
% EndTime: 2019-05-07 18:30:19
% DurationCPUTime: 8.91s
% Computational Cost: add. (22653->302), mult. (45467->312), div. (0->0), fcn. (32218->8), ass. (0->184)
t2454 = sin(qJ(1));
t2458 = cos(qJ(1));
t2452 = sin(qJ(3));
t2456 = cos(qJ(3));
t2453 = sin(qJ(2));
t2498 = qJD(1) * t2453;
t2422 = qJD(2) * t2452 + t2456 * t2498;
t2451 = sin(qJ(4));
t2455 = cos(qJ(4));
t2480 = qJD(2) * t2456 - t2452 * t2498;
t2404 = t2455 * t2422 + t2451 * t2480;
t2401 = t2404 ^ 2;
t2457 = cos(qJ(2));
t2446 = t2457 * qJD(1);
t2442 = t2446 - qJD(3);
t2436 = -qJD(4) + t2442;
t2414 = t2436 ^ 2;
t2368 = -t2414 - t2401;
t2402 = t2451 * t2422 - t2455 * t2480;
t2373 = t2404 * t2402;
t2445 = qJD(2) * t2498;
t2485 = t2457 * qJDD(1);
t2479 = -t2445 + t2485;
t2477 = -qJDD(3) + t2479;
t2473 = -qJDD(4) + t2477;
t2470 = -t2473 + t2373;
t2337 = t2368 * t2455 - t2451 * t2470;
t2535 = t2368 * t2451 + t2455 * t2470;
t2546 = -t2337 * t2456 + t2452 * t2535;
t2483 = qJD(2) * t2446;
t2486 = t2453 * qJDD(1);
t2472 = t2483 + t2486;
t2487 = t2452 * qJDD(2);
t2467 = qJD(3) * t2480 + t2456 * t2472 + t2487;
t2469 = t2456 * qJDD(2) - t2452 * t2472;
t2468 = -t2422 * qJD(3) + t2469;
t2463 = -t2402 * qJD(4) + t2451 * t2468 + t2455 * t2467;
t2490 = t2436 * t2402;
t2461 = t2463 + t2490;
t2547 = t2337 * t2452 + t2456 * t2535;
t2550 = -t2461 * t2453 + t2457 * t2547;
t2557 = t2454 * t2550 - t2458 * t2546;
t2556 = t2454 * t2546 + t2458 * t2550;
t2551 = t2453 * t2547 + t2457 * t2461;
t2466 = t2451 * t2467 - t2455 * t2468;
t2326 = (qJD(4) + t2436) * t2404 + t2466;
t2462 = t2463 - t2490;
t2295 = t2326 * t2451 + t2455 * t2462;
t2298 = t2326 * t2455 - t2462 * t2451;
t2266 = t2295 * t2456 + t2298 * t2452;
t2506 = t2402 ^ 2;
t2356 = t2401 + t2506;
t2522 = t2295 * t2452 - t2298 * t2456;
t2523 = -t2356 * t2453 + t2457 * t2522;
t2534 = t2266 * t2458 + t2454 * t2523;
t2533 = -t2266 * t2454 + t2458 * t2523;
t2524 = t2356 * t2457 + t2453 * t2522;
t2465 = t2404 * qJD(4) + t2466;
t2328 = -t2404 * t2436 + t2465;
t2513 = -t2506 - t2414;
t2515 = t2373 + t2473;
t2525 = t2515 * t2451 + t2455 * t2513;
t2526 = t2451 * t2513 - t2455 * t2515;
t2532 = -t2452 * t2526 + t2456 * t2525;
t2539 = t2457 * t2532;
t2536 = t2328 * t2453 + t2539;
t2531 = t2452 * t2525 + t2456 * t2526;
t2538 = t2458 * t2531;
t2545 = t2454 * t2536 - t2538;
t2541 = t2454 * t2531;
t2544 = t2458 * t2536 + t2541;
t2542 = t2453 * t2532;
t2537 = -t2457 * t2328 + t2542;
t2476 = t2480 * t2422;
t2394 = t2476 - t2477;
t2478 = t2480 ^ 2;
t2516 = qJD(4) - t2436;
t2507 = qJD(2) ^ 2;
t2514 = -qJDD(2) * pkin(2) - t2507 * pkin(8);
t2512 = t2465 * pkin(4) - qJ(5) * t2461;
t2412 = -pkin(3) * t2442 - pkin(9) * t2422;
t2511 = -t2468 * pkin(3) - t2478 * pkin(9) + t2422 * t2412;
t2434 = t2454 * g(1) - t2458 * g(2);
t2459 = qJD(1) ^ 2;
t2419 = qJDD(1) * pkin(1) + t2459 * pkin(7) + t2434;
t2508 = -t2419 + (-t2479 + t2445) * pkin(2);
t2505 = t2422 ^ 2;
t2504 = t2442 ^ 2;
t2503 = -2 * qJD(5);
t2502 = t2507 * pkin(2);
t2501 = t2453 * g(3);
t2500 = t2457 * g(3);
t2499 = t2404 * qJ(6);
t2424 = 0.2e1 * t2483 + t2486;
t2435 = -g(1) * t2458 - g(2) * t2454;
t2420 = -pkin(1) * t2459 + qJDD(1) * pkin(7) + t2435;
t2423 = (-pkin(2) * t2457 - pkin(8) * t2453) * qJD(1);
t2481 = qJD(1) * t2423 + t2420;
t2352 = t2456 * (qJDD(2) * pkin(8) + t2457 * t2481 - t2501 - t2502) + t2452 * (-t2424 * pkin(8) + t2508);
t2314 = -pkin(3) * t2478 + pkin(9) * t2468 + t2442 * t2412 + t2352;
t2411 = t2420 * t2457 - t2501;
t2351 = -t2452 * (t2423 * t2446 + t2411 - t2502) + t2456 * t2508 + (-t2424 * t2456 - t2487) * pkin(8);
t2475 = t2480 * t2442;
t2378 = -t2475 - t2467;
t2460 = pkin(3) * t2394 + t2378 * pkin(9) + t2351;
t2288 = t2455 * t2314 + t2451 * t2460;
t2447 = t2453 ^ 2;
t2448 = t2457 ^ 2;
t2488 = t2447 + t2448;
t2482 = -pkin(4) * t2436 + t2503;
t2287 = -t2451 * t2314 + t2455 * t2460;
t2410 = -t2453 * t2420 - t2500;
t2371 = pkin(4) * t2402 - qJ(5) * t2404;
t2474 = -t2473 * qJ(5) - t2402 * t2371 + t2436 * t2503 + t2288;
t2471 = t2473 * pkin(4) - t2414 * qJ(5) + qJDD(5) - t2287;
t2384 = t2453 * t2481 + t2500 + t2514;
t2345 = t2384 + t2511;
t2441 = t2457 * t2459 * t2453;
t2439 = -t2448 * t2459 - t2507;
t2438 = -t2447 * t2459 - t2507;
t2433 = -qJDD(2) + t2441;
t2432 = qJDD(2) + t2441;
t2430 = t2488 * t2459;
t2429 = -qJDD(1) * t2454 - t2458 * t2459;
t2428 = qJDD(1) * t2458 - t2454 * t2459;
t2427 = t2488 * qJDD(1);
t2425 = -0.2e1 * t2445 + t2485;
t2409 = t2433 * t2457 - t2438 * t2453;
t2408 = -t2432 * t2453 + t2439 * t2457;
t2407 = t2433 * t2453 + t2438 * t2457;
t2406 = t2432 * t2457 + t2439 * t2453;
t2405 = -t2504 - t2505;
t2399 = -t2504 - t2478;
t2393 = t2476 + t2477;
t2392 = -t2478 - t2505;
t2380 = -t2410 * t2453 + t2411 * t2457;
t2379 = t2410 * t2457 + t2411 * t2453;
t2377 = -t2475 + t2467;
t2376 = (-qJD(3) - t2442) * t2422 + t2469;
t2375 = (qJD(3) - t2442) * t2422 - t2469;
t2370 = t2393 * t2456 - t2405 * t2452;
t2369 = t2393 * t2452 + t2405 * t2456;
t2364 = -t2394 * t2452 + t2399 * t2456;
t2363 = t2394 * t2456 + t2399 * t2452;
t2347 = t2376 * t2456 - t2378 * t2452;
t2346 = t2376 * t2452 + t2378 * t2456;
t2344 = t2370 * t2457 + t2377 * t2453;
t2343 = t2370 * t2453 - t2377 * t2457;
t2336 = t2364 * t2457 + t2375 * t2453;
t2335 = t2364 * t2453 - t2375 * t2457;
t2327 = t2404 * t2516 + t2466;
t2316 = t2347 * t2457 + t2392 * t2453;
t2315 = t2347 * t2453 - t2392 * t2457;
t2310 = -t2351 * t2452 + t2352 * t2456;
t2309 = t2351 * t2456 + t2352 * t2452;
t2308 = t2310 * t2457 + t2384 * t2453;
t2307 = t2310 * t2453 - t2384 * t2457;
t2280 = t2482 * t2404 + t2345 + t2512;
t2279 = t2327 * t2453 + t2539;
t2276 = -t2327 * t2457 + t2542;
t2273 = t2371 * t2404 + t2471;
t2272 = -pkin(4) * t2414 + t2474;
t2265 = t2466 * pkin(5) + t2506 * qJ(6) + t2423 * t2498 - qJDD(6) - t2410 + (pkin(5) * t2516 + t2482 + t2499) * t2404 + t2511 + t2512 + t2514;
t2258 = -t2506 * pkin(5) + t2465 * qJ(6) + 0.2e1 * qJD(6) * t2402 + (t2499 + (-pkin(4) - pkin(5)) * t2436) * t2436 + t2474;
t2257 = t2473 * pkin(5) + (pkin(5) * t2402 - 0.2e1 * qJD(6) + t2371) * t2404 + t2471 - t2462 * qJ(6);
t2256 = -t2287 * t2451 + t2288 * t2455;
t2255 = t2287 * t2455 + t2288 * t2451;
t2254 = t2272 * t2455 + t2273 * t2451;
t2253 = t2272 * t2451 - t2273 * t2455;
t2252 = t2257 * t2451 + t2258 * t2455;
t2251 = -t2257 * t2455 + t2258 * t2451;
t2250 = -t2255 * t2452 + t2256 * t2456;
t2249 = t2255 * t2456 + t2256 * t2452;
t2248 = t2250 * t2457 + t2345 * t2453;
t2247 = t2250 * t2453 - t2345 * t2457;
t2246 = -t2253 * t2452 + t2254 * t2456;
t2245 = t2253 * t2456 + t2254 * t2452;
t2244 = t2246 * t2457 + t2280 * t2453;
t2243 = t2246 * t2453 - t2280 * t2457;
t2242 = -t2251 * t2452 + t2252 * t2456;
t2241 = t2251 * t2456 + t2252 * t2452;
t2240 = t2242 * t2457 + t2265 * t2453;
t2239 = t2242 * t2453 - t2265 * t2457;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2429, -t2428, 0, -t2434 * t2454 + t2435 * t2458, 0, 0, 0, 0, 0, 0, t2408 * t2458 - t2425 * t2454, t2409 * t2458 + t2424 * t2454, t2427 * t2458 - t2430 * t2454, t2380 * t2458 - t2419 * t2454, 0, 0, 0, 0, 0, 0, t2336 * t2458 + t2363 * t2454, t2344 * t2458 + t2369 * t2454, t2316 * t2458 + t2346 * t2454, t2308 * t2458 + t2309 * t2454, 0, 0, 0, 0, 0, 0, t2279 * t2458 + t2541, -t2556, t2533, t2248 * t2458 + t2249 * t2454, 0, 0, 0, 0, 0, 0, t2544, t2533, t2556, t2244 * t2458 + t2245 * t2454, 0, 0, 0, 0, 0, 0, t2544, t2556, -t2533, t2240 * t2458 + t2241 * t2454; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2428, t2429, 0, t2434 * t2458 + t2435 * t2454, 0, 0, 0, 0, 0, 0, t2408 * t2454 + t2425 * t2458, t2409 * t2454 - t2424 * t2458, t2427 * t2454 + t2430 * t2458, t2380 * t2454 + t2419 * t2458, 0, 0, 0, 0, 0, 0, t2336 * t2454 - t2363 * t2458, t2344 * t2454 - t2369 * t2458, t2316 * t2454 - t2346 * t2458, t2308 * t2454 - t2309 * t2458, 0, 0, 0, 0, 0, 0, t2279 * t2454 - t2538, -t2557, t2534, t2248 * t2454 - t2249 * t2458, 0, 0, 0, 0, 0, 0, t2545, t2534, t2557, t2244 * t2454 - t2245 * t2458, 0, 0, 0, 0, 0, 0, t2545, t2557, -t2534, t2240 * t2454 - t2241 * t2458; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2406, t2407, 0, t2379, 0, 0, 0, 0, 0, 0, t2335, t2343, t2315, t2307, 0, 0, 0, 0, 0, 0, t2276, -t2551, t2524, t2247, 0, 0, 0, 0, 0, 0, t2537, t2524, t2551, t2243, 0, 0, 0, 0, 0, 0, t2537, t2551, -t2524, t2239; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2459, -qJDD(1), 0, t2435, 0, 0, 0, 0, 0, 0, t2408, t2409, t2427, t2380, 0, 0, 0, 0, 0, 0, t2336, t2344, t2316, t2308, 0, 0, 0, 0, 0, 0, t2279, -t2550, t2523, t2248, 0, 0, 0, 0, 0, 0, t2536, t2523, t2550, t2244, 0, 0, 0, 0, 0, 0, t2536, t2550, -t2523, t2240; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2459, 0, t2434, 0, 0, 0, 0, 0, 0, t2425, -t2424, t2430, t2419, 0, 0, 0, 0, 0, 0, -t2363, -t2369, -t2346, -t2309, 0, 0, 0, 0, 0, 0, -t2531, t2546, t2266, -t2249, 0, 0, 0, 0, 0, 0, -t2531, t2266, -t2546, -t2245, 0, 0, 0, 0, 0, 0, -t2531, -t2546, -t2266, -t2241; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2406, t2407, 0, t2379, 0, 0, 0, 0, 0, 0, t2335, t2343, t2315, t2307, 0, 0, 0, 0, 0, 0, t2276, -t2551, t2524, t2247, 0, 0, 0, 0, 0, 0, t2537, t2524, t2551, t2243, 0, 0, 0, 0, 0, 0, t2537, t2551, -t2524, t2239; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2439, t2433, t2485, t2411, 0, 0, 0, 0, 0, 0, t2364, t2370, t2347, t2310, 0, 0, 0, 0, 0, 0, t2532, -t2547, t2522, t2250, 0, 0, 0, 0, 0, 0, t2532, t2522, t2547, t2246, 0, 0, 0, 0, 0, 0, t2532, t2547, -t2522, t2242; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2432, t2438, -t2486, t2410, 0, 0, 0, 0, 0, 0, -t2375, -t2377, -t2392, -t2384, 0, 0, 0, 0, 0, 0, -t2327, -t2461, t2356, -t2345, 0, 0, 0, 0, 0, 0, -t2328, t2356, t2461, -t2280, 0, 0, 0, 0, 0, 0, -t2328, t2461, -t2356, -t2265; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2425, t2424, -t2430, -t2419, 0, 0, 0, 0, 0, 0, t2363, t2369, t2346, t2309, 0, 0, 0, 0, 0, 0, t2531, -t2546, -t2266, t2249, 0, 0, 0, 0, 0, 0, t2531, -t2266, t2546, t2245, 0, 0, 0, 0, 0, 0, t2531, t2546, t2266, t2241; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2399, t2393, t2376, t2352, 0, 0, 0, 0, 0, 0, t2525, -t2535, -t2298, t2256, 0, 0, 0, 0, 0, 0, t2525, -t2298, t2535, t2254, 0, 0, 0, 0, 0, 0, t2525, t2535, t2298, t2252; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2394, t2405, t2378, t2351, 0, 0, 0, 0, 0, 0, t2526, t2337, -t2295, t2255, 0, 0, 0, 0, 0, 0, t2526, -t2295, -t2337, t2253, 0, 0, 0, 0, 0, 0, t2526, -t2337, t2295, t2251; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2375, t2377, t2392, t2384, 0, 0, 0, 0, 0, 0, t2327, t2461, -t2356, t2345, 0, 0, 0, 0, 0, 0, t2328, -t2356, -t2461, t2280, 0, 0, 0, 0, 0, 0, t2328, -t2461, t2356, t2265; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2513, -t2470, -t2326, t2288, 0, 0, 0, 0, 0, 0, t2513, -t2326, t2470, t2272, 0, 0, 0, 0, 0, 0, t2513, t2470, t2326, t2258; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2515, t2368, -t2462, t2287, 0, 0, 0, 0, 0, 0, -t2515, -t2462, -t2368, -t2273, 0, 0, 0, 0, 0, 0, -t2515, -t2368, t2462, -t2257; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2327, t2461, -t2356, t2345, 0, 0, 0, 0, 0, 0, t2328, -t2356, -t2461, t2280, 0, 0, 0, 0, 0, 0, t2328, -t2461, t2356, t2265; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2513, -t2326, t2470, t2272, 0, 0, 0, 0, 0, 0, t2513, t2470, t2326, t2258; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2328, -t2356, -t2461, t2280, 0, 0, 0, 0, 0, 0, t2328, -t2461, t2356, t2265; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2515, t2462, t2368, t2273, 0, 0, 0, 0, 0, 0, t2515, t2368, -t2462, t2257; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2513, t2470, t2326, t2258; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2515, t2368, -t2462, t2257; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2328, t2461, -t2356, -t2265;];
f_new_reg  = t1;
