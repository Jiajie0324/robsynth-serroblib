% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RRRRPP8
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 19:10
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RRRRPP8_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP8_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP8_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPP8_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPP8_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP8_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 19:08:30
% EndTime: 2019-05-07 19:09:49
% DurationCPUTime: 85.14s
% Computational Cost: add. (277563->1030), mult. (593800->1282), div. (0->0), fcn. (469981->10), ass. (0->692)
t2230 = sin(qJ(3));
t2234 = cos(qJ(3));
t2228 = cos(pkin(6));
t2447 = qJD(1) * t2228;
t2369 = qJD(2) + t2447;
t2227 = sin(pkin(6));
t2231 = sin(qJ(2));
t2395 = t2227 * t2231;
t2378 = qJD(1) * t2395;
t2191 = t2230 * t2369 + t2234 * t2378;
t2229 = sin(qJ(4));
t2233 = cos(qJ(4));
t2235 = cos(qJ(2));
t2394 = t2227 * t2235;
t2220 = qJD(1) * t2394;
t2384 = t2220 - qJD(3);
t2161 = t2233 * t2191 - t2229 * t2384;
t2189 = t2230 * t2378 - t2234 * t2369;
t2184 = qJD(4) + t2189;
t2444 = qJD(2) * qJD(1);
t2371 = t2235 * t2444;
t2381 = t2231 * qJDD(1);
t2197 = (t2371 + t2381) * t2227;
t2363 = qJDD(1) * t2228 + qJDD(2);
t2268 = -t2234 * t2197 - t2230 * t2363;
t2135 = -t2189 * qJD(3) - t2268;
t2382 = qJDD(1) * t2235;
t2294 = t2231 * t2444 - t2382;
t2274 = t2294 * t2227;
t2262 = qJDD(3) + t2274;
t2367 = t2135 * t2229 - t2233 * t2262;
t2013 = (qJD(4) - t2184) * t2161 + t2367;
t2159 = t2191 * t2229 + t2233 * t2384;
t2246 = -t2233 * t2135 - t2229 * t2262;
t2244 = -t2159 * qJD(4) - t2246;
t2407 = t2159 * t2184;
t2488 = t2407 + t2244;
t2431 = t2488 * t2229;
t1897 = t2013 * t2233 - t2431;
t2158 = t2161 ^ 2;
t2469 = t2159 ^ 2;
t2054 = -t2469 - t2158;
t2559 = t2054 * t2234;
t1842 = t1897 * t2230 + t2559;
t2560 = t2054 * t2230;
t1845 = t1897 * t2234 - t2560;
t2430 = t2488 * t2233;
t1891 = t2013 * t2229 + t2430;
t2342 = t1845 * t2231 - t1891 * t2235;
t1734 = -t1842 * t2227 + t2228 * t2342;
t1790 = t1845 * t2235 + t1891 * t2231;
t2232 = sin(qJ(1));
t2236 = cos(qJ(1));
t2693 = pkin(7) * (t1734 * t2236 + t2232 * t1790);
t2692 = pkin(7) * (t2232 * t1734 - t1790 * t2236);
t1731 = t1842 * t2228 + t2227 * t2342;
t2691 = pkin(8) * (t1731 * t2227 + t1734 * t2228);
t2468 = t2184 ^ 2;
t2486 = t2469 - t2468;
t2106 = t2161 * t2159;
t2365 = -t2230 * t2197 + t2234 * t2363;
t2295 = t2191 * qJD(3) - t2365;
t2133 = qJDD(4) + t2295;
t2495 = t2106 + t2133;
t2519 = t2495 * t2229;
t1979 = -t2233 * t2486 + t2519;
t2052 = qJD(4) * t2161 + t2367;
t2404 = t2184 * t2161;
t2498 = t2052 - t2404;
t1881 = t1979 * t2230 - t2498 * t2234;
t1887 = t1979 * t2234 + t2498 * t2230;
t2518 = t2495 * t2233;
t2544 = t2229 * t2486 + t2518;
t2326 = t1887 * t2231 + t2235 * t2544;
t1779 = -t1881 * t2227 + t2228 * t2326;
t1824 = t1887 * t2235 - t2231 * t2544;
t2651 = t2232 * t1779 - t1824 * t2236;
t2690 = t1779 * t2236 + t2232 * t1824;
t2689 = pkin(1) * t1731;
t2688 = pkin(1) * t1734;
t2492 = t2158 - t2468;
t2496 = -t2106 + t2133;
t2516 = t2496 * t2233;
t1978 = -t2492 * t2229 - t2516;
t1880 = t1978 * t2230 + t2234 * t2488;
t1886 = t1978 * t2234 - t2230 * t2488;
t2517 = t2496 * t2229;
t1972 = t2492 * t2233 - t2517;
t2327 = t1886 * t2231 - t1972 * t2235;
t1778 = -t1880 * t2227 + t2228 * t2327;
t1823 = t1886 * t2235 + t1972 * t2231;
t2685 = t2232 * t1778 - t1823 * t2236;
t2684 = t1778 * t2236 + t2232 * t1823;
t2489 = -t2407 + t2244;
t2427 = t2489 * t2233;
t2497 = t2052 + t2404;
t2515 = t2497 * t2229;
t2547 = t2515 - t2427;
t2490 = t2158 - t2469;
t2429 = t2489 * t2229;
t2514 = t2497 * t2233;
t2548 = t2514 + t2429;
t2570 = -t2490 * t2230 + t2234 * t2548;
t2595 = t2231 * t2547 + t2235 * t2570;
t2576 = t2230 * t2548 + t2234 * t2490;
t2599 = t2231 * t2570 - t2235 * t2547;
t2630 = -t2227 * t2576 + t2228 * t2599;
t2683 = t2232 * t2630 - t2236 * t2595;
t2648 = t2232 * t2595 + t2236 * t2630;
t1773 = t1881 * t2228 + t2227 * t2326;
t2679 = pkin(8) * t1790;
t1772 = t1880 * t2228 + t2227 * t2327;
t2633 = t2227 * t2599 + t2228 * t2576;
t2491 = t2158 + t2468;
t1960 = t2491 * t2229 - t2518;
t2617 = t1960 * t2230;
t2605 = t2234 * t2489 - t2617;
t2552 = t2491 * t2233 + t2519;
t2580 = t2235 * t2552;
t2616 = t1960 * t2234;
t2604 = -t2489 * t2230 - t2616;
t2628 = t2231 * t2604 - t2580;
t2652 = -t2227 * t2605 + t2228 * t2628;
t2672 = pkin(1) * t2652;
t2653 = t2227 * t2628 + t2228 * t2605;
t2671 = pkin(1) * t2653;
t2584 = t2231 * t2552;
t2627 = t2235 * t2604 + t2584;
t2668 = pkin(7) * (-t2232 * t2652 + t2236 * t2627);
t2667 = pkin(7) * (t2232 * t2627 + t2236 * t2652);
t2666 = (-t2227 * t2653 - t2228 * t2652) * pkin(8);
t2487 = -t2468 - t2469;
t2545 = t2233 * t2487 - t2517;
t2577 = t2230 * t2545 - t2234 * t2497;
t2546 = t2229 * t2487 + t2516;
t2569 = t2497 * t2230 + t2234 * t2545;
t2601 = t2231 * t2569 - t2235 * t2546;
t2631 = -t2227 * t2577 + t2228 * t2601;
t2647 = pkin(1) * t2631;
t2634 = t2227 * t2601 + t2228 * t2577;
t2646 = pkin(1) * t2634;
t2665 = pkin(2) * t1842;
t2664 = pkin(8) * t2627;
t2663 = pkin(9) * t1842;
t2662 = pkin(9) * t1845;
t2597 = t2231 * t2546 + t2235 * t2569;
t2626 = pkin(7) * (-t2232 * t2631 + t2236 * t2597);
t2625 = pkin(7) * (t2232 * t2597 + t2236 * t2631);
t2624 = (-t2227 * t2634 - t2228 * t2631) * pkin(8);
t2645 = pkin(2) * t2605;
t2622 = pkin(8) * t2597;
t2644 = pkin(9) * t2605;
t2592 = pkin(2) * t2552;
t2635 = pkin(9) * t2604 - t2592;
t2593 = pkin(2) * t2577;
t2623 = pkin(3) * t1891;
t2591 = pkin(3) * t2552;
t2590 = pkin(9) * t2577;
t2621 = pkin(10) * t1891;
t2620 = pkin(10) * t1960;
t2589 = pkin(10) * t2552;
t2578 = -pkin(2) * t2546 + pkin(9) * t2569;
t2564 = pkin(3) * t2054;
t2607 = -pkin(10) * t1897 - t2564;
t2606 = pkin(3) * t2489 - t2620;
t2403 = t2184 * t2229;
t2113 = t2161 * t2403;
t2402 = t2184 * t2233;
t2377 = t2159 * t2402;
t2351 = t2113 - t2377;
t2408 = t2133 * t2230;
t2475 = t2234 * t2351 + t2408;
t2499 = (t2159 * t2229 + t2161 * t2233) * t2184;
t2503 = t2231 * t2499;
t2549 = t2235 * t2475 - t2503;
t2129 = t2234 * t2133;
t2476 = t2230 * t2351 - t2129;
t2500 = t2235 * t2499;
t2550 = t2231 * t2475 + t2500;
t2574 = -t2227 * t2476 + t2228 * t2550;
t2598 = -t2232 * t2574 + t2236 * t2549;
t2594 = t2232 * t2549 + t2236 * t2574;
t2563 = pkin(3) * t2546;
t2562 = pkin(10) * t2546;
t2542 = -pkin(3) * t2497 + pkin(10) * t2545;
t2575 = t2227 * t2550 + t2228 * t2476;
t1999 = -t2052 * t2233 + t2159 * t2403;
t2101 = t2230 * t2106;
t2298 = t2052 * t2229 + t2377;
t2480 = t2234 * t2298 - t2101;
t2507 = t1999 * t2231 + t2235 * t2480;
t2102 = t2234 * t2106;
t2478 = t2230 * t2298 + t2102;
t2508 = -t1999 * t2235 + t2231 * t2480;
t2539 = -t2227 * t2478 + t2228 * t2508;
t2571 = -t2232 * t2539 + t2236 * t2507;
t2566 = t2232 * t2507 + t2236 * t2539;
t2561 = qJ(5) * t2054;
t2240 = t2161 * t2402 + t2229 * t2244;
t2386 = t2233 * t2244 - t2113;
t2479 = t2234 * t2386 + t2101;
t2509 = t2240 * t2231 + t2235 * t2479;
t2556 = t2232 * t2509;
t2553 = t2236 * t2509;
t2453 = qJ(5) * t2487;
t2551 = pkin(4) * t2496 + t2453;
t2540 = t2227 * t2508 + t2228 * t2478;
t2454 = qJ(5) * t2489;
t2536 = qJ(5) * t2495;
t2535 = qJ(6) * t2488;
t2477 = t2230 * t2386 - t2102;
t2533 = t2227 * t2477;
t2530 = t2228 * t2477;
t2524 = t2231 * t2479;
t2172 = t2384 * t2191;
t2513 = t2295 - t2172;
t2171 = t2384 * t2189;
t2355 = t2234 * t2171;
t2356 = t2230 * t2172;
t2110 = t2355 - t2356;
t2512 = t2231 * t2110 - t2235 * t2262;
t2392 = t2228 * t2235;
t2471 = t2228 * t2524 - t2240 * t2392 - t2533;
t2506 = t2236 * t2471 + t2556;
t2505 = -t2232 * t2471 + t2553;
t2362 = t2369 ^ 2;
t2380 = t2384 ^ 2;
t2401 = t2191 * t2189;
t2250 = t2262 - t2401;
t2504 = t2230 * t2250;
t2502 = t2234 * t2250;
t2443 = qJD(5) * t2184;
t2175 = 0.2e1 * t2443;
t2442 = qJD(6) * t2159;
t2494 = 0.2e1 * t2442 + t2175;
t2176 = -0.2e1 * t2443;
t2493 = -0.2e1 * t2442 + t2176;
t2088 = t2171 + t2135;
t2112 = -pkin(5) * t2184 - qJ(6) * t2161;
t2485 = t2161 * t2112 + qJDD(6);
t2217 = g(1) * t2236 + t2232 * g(2);
t2461 = pkin(8) * t2227;
t2470 = qJD(1) ^ 2;
t2193 = -pkin(1) * t2470 + qJDD(1) * t2461 - t2217;
t2464 = pkin(2) * t2235;
t2361 = -pkin(9) * t2231 - t2464;
t2448 = qJD(1) * t2227;
t2196 = t2361 * t2448;
t2216 = t2232 * g(1) - t2236 * g(2);
t2266 = qJDD(1) * pkin(1) + t2461 * t2470 + t2216;
t2255 = t2228 * t2266;
t2248 = -g(3) * t2395 + t2231 * t2255;
t2076 = t2363 * pkin(9) - t2362 * pkin(2) + (t2196 * t2448 + t2193) * t2235 + t2248;
t2460 = pkin(9) * t2235;
t2465 = pkin(2) * t2231;
t2360 = -t2460 + t2465;
t2458 = t2228 * g(3);
t2238 = -t2197 * pkin(9) - t2458 + ((-pkin(1) - t2464) * qJDD(1) + ((t2228 * t2360 - t2461) * qJD(1) + (-t2460 + 0.2e1 * t2465) * qJD(2)) * qJD(1) - t2216) * t2227;
t1984 = t2234 * t2076 + t2230 * t2238;
t2144 = pkin(3) * t2189 - pkin(10) * t2191;
t1922 = -pkin(3) * t2380 + pkin(10) * t2262 - t2189 * t2144 + t1984;
t2366 = t2231 * t2193 - t2235 * t2255;
t2446 = qJD(1) * t2231;
t2075 = -t2363 * pkin(2) - t2362 * pkin(9) + (g(3) * t2235 + t2196 * t2446) * t2227 + t2366;
t1927 = pkin(3) * t2513 - t2088 * pkin(10) + t2075;
t1829 = t1922 * t2229 - t2233 * t1927;
t2292 = -t2133 * pkin(4) - qJ(5) * t2468 + qJDD(5) + t1829;
t2256 = -t2133 * pkin(5) + t2292 - t2535;
t2100 = pkin(4) * t2159 - qJ(5) * t2161;
t2370 = -pkin(5) * t2159 - t2100;
t1755 = (-0.2e1 * qJD(6) - t2370) * t2161 + t2256;
t1830 = t2233 * t1922 + t2229 * t1927;
t2346 = pkin(4) * t2468 - t2133 * qJ(5) + t2159 * t2100 - t1830;
t2271 = pkin(5) * t2469 - t2052 * qJ(6) - t2184 * t2112 + t2346;
t1763 = -t2271 + t2494;
t2466 = pkin(4) + pkin(5);
t2484 = qJ(5) * t1763 - t1755 * t2466;
t1798 = t2175 - t2346;
t2414 = t2100 * t2161;
t1799 = t2292 + t2414;
t1722 = t1798 * t2233 + t1799 * t2229;
t1983 = t2076 * t2230 - t2234 * t2238;
t1921 = -t2262 * pkin(3) - t2380 * pkin(10) + t2144 * t2191 + t1983;
t2251 = t2052 * pkin(4) + t1921 - t2454;
t1813 = (pkin(4) * t2184 - 0.2e1 * qJD(5)) * t2161 + t2251;
t2483 = -(pkin(4) * t2233 + qJ(5) * t2229 + pkin(3)) * t1813 + pkin(10) * t1722;
t2482 = qJ(5) * t2013 + t2466 * t2488;
t2481 = t2466 * t2491 - t2271 + t2536;
t2473 = (t2497 + t2052) * pkin(5) + qJ(6) * (t2487 + t2469);
t2472 = -t2240 * t2394 + t2395 * t2479 + t2530;
t2187 = t2189 ^ 2;
t2188 = t2191 ^ 2;
t2224 = t2227 ^ 2;
t2467 = 0.2e1 * t2161;
t2463 = pkin(3) * t2230;
t2462 = pkin(5) * t2052;
t2455 = qJ(5) * t2497;
t2452 = qJ(6) * t1755;
t2451 = qJ(6) * t1763;
t2450 = qJ(6) * t2496;
t2449 = qJ(6) * t2495;
t2445 = qJD(1) * t2235;
t2441 = t1921 * t2229;
t2440 = t1921 * t2233;
t2418 = t2075 * t2230;
t2417 = t2075 * t2234;
t2121 = -t2262 - t2401;
t2410 = t2121 * t2230;
t2409 = t2121 * t2234;
t2174 = t2227 * t2266 + t2458;
t2406 = t2174 * t2231;
t2405 = t2174 * t2235;
t2372 = t2231 * t2235 * t2470;
t2215 = t2224 * t2372;
t2194 = t2215 + t2363;
t2400 = t2194 * t2231;
t2399 = t2194 * t2235;
t2195 = -t2215 + t2363;
t2398 = t2195 * t2231;
t2397 = t2195 * t2235;
t2396 = t2224 * t2470;
t2225 = t2231 ^ 2;
t2226 = t2235 ^ 2;
t2383 = t2225 + t2226;
t2379 = -pkin(3) * t2234 - pkin(2);
t2376 = t2231 * t2401;
t2375 = t2235 * t2401;
t2374 = t2225 * t2396;
t2373 = t2226 * t2396;
t2368 = 0.2e1 * qJD(2) + t2447;
t1753 = t1829 * t2229 + t2233 * t1830;
t1877 = t1983 * t2230 + t2234 * t1984;
t2364 = -t2216 * t2232 - t2236 * t2217;
t2359 = -pkin(3) * t1921 + pkin(10) * t1753;
t2214 = qJDD(1) * t2236 - t2232 * t2470;
t2358 = -pkin(7) * t2214 - g(3) * t2232;
t2357 = t2230 * t2171;
t2354 = t2234 * t2172;
t2353 = -pkin(4) * t1799 + qJ(5) * t1798;
t2352 = -pkin(4) * t2488 - qJ(5) * t2498;
t2183 = -t2374 - t2362;
t2143 = -t2183 * t2231 - t2397;
t2350 = pkin(8) * t2143 - t2406;
t2201 = -t2362 - t2373;
t2150 = t2201 * t2235 - t2400;
t2349 = pkin(8) * t2150 + t2405;
t2348 = qJD(1) * t2369;
t2347 = t2224 * t2231 * t2371;
t1704 = t1755 * t2229 + t1763 * t2233;
t2242 = t1813 - t2485;
t1782 = qJ(6) * t2469 + t2242 + t2462;
t1684 = t1704 * t2234 + t1782 * t2230;
t1703 = -t1755 * t2233 + t1763 * t2229;
t2345 = t1684 * t2231 - t1703 * t2235;
t1702 = t1722 * t2234 + t1813 * t2230;
t1721 = t1798 * t2229 - t1799 * t2233;
t2344 = t1702 * t2231 - t1721 * t2235;
t1726 = t1753 * t2234 + t1921 * t2230;
t1752 = -t1829 * t2233 + t1830 * t2229;
t2343 = t1726 * t2231 - t1752 * t2235;
t1899 = -t2233 * t2498 + t2431;
t1846 = t1899 * t2234 + t2560;
t1893 = -t2229 * t2498 - t2430;
t2341 = t1846 * t2231 - t1893 * t2235;
t2023 = (qJD(4) + t2184) * t2159 + t2246;
t1874 = -t2023 * t2230 + t2616;
t2332 = t1874 * t2231 + t2580;
t2330 = t1877 * t2231 - t2075 * t2235;
t2320 = -t2235 * t2240 + t2524;
t1876 = -t1983 * t2234 + t1984 * t2230;
t2043 = (-t2159 * t2233 + t2161 * t2229) * t2184;
t1995 = t2043 * t2234 + t2408;
t2318 = t1995 * t2231 + t2500;
t2026 = -t2088 * t2230 - t2234 * t2513;
t2146 = t2188 - t2187;
t2316 = t2026 * t2231 - t2146 * t2235;
t2087 = -t2191 * t2220 + t2365;
t2089 = -t2171 + t2135;
t2027 = t2087 * t2234 + t2089 * t2230;
t2111 = t2187 + t2188;
t2315 = t2027 * t2231 + t2111 * t2235;
t2140 = -t2380 - t2187;
t2050 = t2140 * t2234 - t2504;
t2314 = t2050 * t2231 - t2235 * t2513;
t2147 = -t2188 - t2380;
t2059 = -t2147 * t2230 + t2409;
t2090 = (0.2e1 * qJD(3) - t2220) * t2189 + t2268;
t2313 = t2059 * t2231 + t2090 * t2235;
t2165 = t2380 - t2188;
t2063 = -t2165 * t2230 + t2502;
t2312 = t2063 * t2231 - t2089 * t2235;
t2164 = t2187 - t2380;
t2064 = t2164 * t2234 + t2410;
t2085 = t2172 + t2295;
t2311 = t2064 * t2231 + t2085 * t2235;
t2141 = g(3) * t2394 + t2366;
t2142 = t2235 * t2193 + t2248;
t2310 = -t2141 * t2235 + t2142 * t2231;
t2057 = t2141 * t2231 + t2142 * t2235;
t2299 = t2227 * t2348;
t2205 = t2235 * t2299;
t2167 = t2205 + t2197;
t2204 = t2231 * t2299;
t2170 = -t2204 - t2274;
t2308 = t2167 * t2235 + t2170 * t2231;
t2168 = -t2205 + t2197;
t2169 = t2204 - t2274;
t2307 = -t2168 * t2235 + t2169 * t2231;
t2306 = t2183 * t2235 - t2398;
t2199 = t2362 - t2374;
t2305 = t2199 * t2235 + t2400;
t2304 = t2201 * t2231 + t2399;
t2200 = -t2362 + t2373;
t2303 = t2200 * t2231 + t2397;
t2302 = t2216 * t2236 - t2232 * t2217;
t2300 = t2227 * t2363;
t2079 = t2230 * t2295 - t2355;
t2297 = t2079 * t2231 + t2375;
t2081 = t2234 * t2135 + t2356;
t2296 = t2081 * t2231 - t2375;
t2291 = -t2440 + t2542;
t2290 = pkin(3) * t2023 + t2441 + t2620;
t1687 = -t1782 * t2466 - t2451;
t1709 = -qJ(5) * t1782 - t2452;
t1652 = -pkin(10) * t1703 - t1687 * t2229 + t1709 * t2233;
t1663 = -pkin(3) * t1703 - t2484;
t1683 = t1704 * t2230 - t1782 * t2234;
t1627 = -pkin(9) * t1683 + t1652 * t2234 - t1663 * t2230;
t2261 = -pkin(3) * t1782 + pkin(10) * t1704 + t1687 * t2233 + t1709 * t2229;
t1637 = -pkin(2) * t1683 - t2261;
t1664 = t1684 * t2235 + t1703 * t2231;
t2289 = pkin(8) * t1664 + t1627 * t2231 + t1637 * t2235;
t1686 = -pkin(3) * t1721 - t2353;
t1689 = -pkin(10) * t1721 + (pkin(4) * t2229 - qJ(5) * t2233) * t1813;
t1701 = t1722 * t2230 - t1813 * t2234;
t1651 = -pkin(9) * t1701 - t1686 * t2230 + t1689 * t2234;
t1662 = -pkin(2) * t1701 - t2483;
t1677 = t1702 * t2235 + t1721 * t2231;
t2288 = pkin(8) * t1677 + t1651 * t2231 + t1662 * t2235;
t2253 = -qJ(6) * t2013 + t2271;
t1724 = t2054 * t2466 + t2253 + t2493;
t2252 = qJD(6) * t2467 - t2256;
t2243 = t2161 * t2370 + t2252 + t2535;
t1730 = t2243 + t2561;
t1681 = -t1724 * t2229 + t1730 * t2233 - t2621;
t1783 = -t2482 - t2623;
t1669 = t1681 * t2234 - t1783 * t2230 - t2663;
t2260 = t1724 * t2233 + t1730 * t2229 - t2607;
t1676 = -t2260 - t2665;
t2287 = t1669 * t2231 + t1676 * t2235 + t2679;
t2249 = qJD(5) * t2467 - t2251;
t1789 = (-t2497 - t2404) * pkin(4) + t2249;
t1729 = t1789 - t2473 + t2485;
t1910 = t2450 - t2455;
t1711 = -t1729 * t2229 + t1910 * t2233 - t2562;
t1718 = -t2466 * t2496 + t1755 - t2453 - t2563;
t1672 = t1711 * t2234 - t1718 * t2230 - t2590;
t2270 = t1729 * t2233 + t1910 * t2229 + t2542;
t1698 = -t2270 - t2593;
t2286 = t1672 * t2231 + t1698 * t2235 + t2622;
t2245 = -pkin(4) * t2404 + t2249;
t2239 = (t2491 - t2469) * qJ(6) - t2462 + t2245 + t2485;
t1749 = t2239 + t2454;
t1840 = t2466 * t2489 - t2449;
t1713 = t1749 * t2233 - t1840 * t2229 - t2589;
t1720 = -t2481 + t2493 - t2591;
t1675 = t1713 * t2234 - t1720 * t2230 - t2644;
t2269 = t1749 * t2229 + t1840 * t2233 + t2606;
t1699 = -t2269 - t2645;
t2285 = t1675 * t2231 + t1699 * t2235 + t2664;
t1725 = t1753 * t2230 - t1921 * t2234;
t1679 = -pkin(9) * t1725 + (-pkin(10) * t2234 + t2463) * t1752;
t1691 = -pkin(2) * t1725 - t2359;
t1697 = t1726 * t2235 + t1752 * t2231;
t2284 = pkin(8) * t1697 + t1679 * t2231 + t1691 * t2235;
t1784 = -pkin(4) * t2054 + t1798;
t1787 = t1799 - t2561;
t1705 = -pkin(10) * t1893 - t1784 * t2229 + t1787 * t2233;
t1812 = -pkin(3) * t1893 - t2352;
t1843 = t1899 * t2230 - t2559;
t1680 = -pkin(9) * t1843 + t1705 * t2234 - t1812 * t2230;
t2259 = pkin(10) * t1899 + t1784 * t2233 + t1787 * t2229 - t2564;
t1692 = -pkin(2) * t1843 - t2259;
t1791 = t1846 * t2235 + t1893 * t2231;
t2283 = pkin(8) * t1791 + t1680 * t2231 + t1692 * t2235;
t1788 = t2245 + t2454;
t1739 = -pkin(4) * t2429 + t1788 * t2233 - t2589;
t2258 = pkin(4) * t2491 - t2346 + t2536;
t1747 = t2176 - t2258 - t2591;
t1688 = t1739 * t2234 - t1747 * t2230 - t2644;
t2265 = pkin(4) * t2427 + t1788 * t2229 + t2606;
t1714 = -t2265 - t2645;
t2282 = t1688 * t2231 + t1714 * t2235 + t2664;
t1740 = -qJ(5) * t2514 - t1789 * t2229 - t2562;
t2247 = -t1799 + t2551;
t1750 = -t2247 - t2563;
t1690 = t1740 * t2234 - t1750 * t2230 - t2590;
t2264 = -qJ(5) * t2515 + t1789 * t2233 + t2542;
t1715 = -t2264 - t2593;
t2281 = t1690 * t2231 + t1715 * t2235 + t2622;
t1723 = -t1752 + t2621;
t1700 = t1723 * t2234 - t1891 * t2463 + t2663;
t2272 = t1753 + t2607;
t1706 = -t2272 + t2665;
t2280 = t1700 * t2231 + t1706 * t2235 - t2679;
t1796 = t1829 - t2563;
t1831 = t2441 - t2562;
t1716 = -t1796 * t2230 + t1831 * t2234 - t2590;
t1754 = -t2291 - t2593;
t2279 = t1716 * t2231 + t1754 * t2235 + t2622;
t1797 = t1830 + t2591;
t1838 = t2440 + t2589;
t1871 = t2023 * t2234 + t2617;
t1717 = -pkin(9) * t1871 - t1797 * t2230 + t1838 * t2234;
t1756 = -pkin(2) * t1871 - t2290;
t1819 = t1874 * t2235 - t2584;
t2278 = pkin(8) * t1819 + t1717 * t2231 + t1756 * t2235;
t2049 = t2140 * t2230 + t2502;
t1909 = -pkin(2) * t2049 + t1983;
t1962 = -pkin(9) * t2049 + t2418;
t1966 = t2050 * t2235 + t2231 * t2513;
t2277 = pkin(8) * t1966 + t1909 * t2235 + t1962 * t2231;
t2058 = t2147 * t2234 + t2410;
t1913 = -pkin(2) * t2058 + t1984;
t1967 = -pkin(9) * t2058 + t2417;
t1968 = t2059 * t2235 - t2090 * t2231;
t2276 = pkin(8) * t1968 + t1913 * t2235 + t1967 * t2231;
t2107 = t2168 * t2231 + t2169 * t2235;
t2275 = pkin(8) * t2107 + t2057;
t2025 = t2087 * t2230 - t2089 * t2234;
t1827 = -pkin(9) * t2025 - t1876;
t1942 = t2027 * t2235 - t2111 * t2231;
t2273 = pkin(8) * t1942 + t1827 * t2231 - t2025 * t2464;
t1839 = t1877 * t2235 + t2075 * t2231;
t2267 = pkin(8) * t1839 + t1876 * t2361;
t2241 = -t2414 + (t2496 - t2106) * pkin(5) + t2252;
t2223 = t2227 * t2224;
t2213 = t2232 * qJDD(1) + t2236 * t2470;
t2210 = t2228 * t2363;
t2203 = t2383 * t2396;
t2202 = (t2225 - t2226) * t2396;
t2198 = -pkin(7) * t2213 + g(3) * t2236;
t2173 = t2369 * t2383 * t2448;
t2166 = (t2368 * t2445 + t2381) * t2227;
t2163 = t2235 * t2197 - t2225 * t2299;
t2162 = (-t2226 * t2348 + t2231 * t2294) * t2227;
t2149 = t2200 * t2235 - t2398;
t2148 = -t2199 * t2231 + t2399;
t2139 = (t2228 * t2197 + (qJD(2) * t2228 * t2227 + (t2227 * t2228 ^ 2 + t2223) * qJD(1)) * t2445) * t2231;
t2138 = t2197 * t2395 + t2347;
t2137 = -t2224 * t2235 * t2294 - t2347;
t2136 = -t2223 * t2372 + (-t2368 * t2446 + t2382) * t2227 * t2392;
t2109 = t2357 + t2354;
t2108 = -t2167 * t2231 + t2170 * t2235;
t2098 = t2170 * t2227 + t2228 * t2304;
t2097 = -t2169 * t2227 + t2228 * t2303;
t2096 = -t2168 * t2227 + t2228 * t2305;
t2095 = -t2170 * t2228 + t2227 * t2304;
t2094 = t2169 * t2228 + t2227 * t2303;
t2093 = t2168 * t2228 + t2227 * t2305;
t2083 = -t2166 * t2227 + t2228 * t2306;
t2082 = t2166 * t2228 + t2227 * t2306;
t2080 = t2230 * t2135 - t2354;
t2078 = -t2234 * t2295 - t2357;
t2077 = t2235 * t2110 + t2231 * t2262;
t2074 = -t2202 * t2227 + t2228 * t2308;
t2073 = t2203 * t2227 + t2228 * t2307;
t2072 = t2202 * t2228 + t2227 * t2308;
t2071 = -t2203 * t2228 + t2227 * t2307;
t2062 = t2164 * t2230 - t2409;
t2061 = t2165 * t2234 + t2504;
t2033 = t2081 * t2235 + t2376;
t2032 = t2079 * t2235 - t2376;
t2031 = t2174 * t2227 + t2228 * t2310;
t2030 = -t2174 * t2228 + t2227 * t2310;
t2029 = -t2227 * t2109 + t2228 * t2512;
t2028 = t2228 * t2109 + t2227 * t2512;
t2024 = t2088 * t2234 - t2230 * t2513;
t1992 = t2043 * t2230 - t2129;
t1986 = t2064 * t2235 - t2085 * t2231;
t1985 = t2063 * t2235 + t2089 * t2231;
t1969 = -t2406 + (-t2095 * t2227 - t2098 * t2228) * pkin(8);
t1965 = -t2405 + (-t2082 * t2227 - t2083 * t2228) * pkin(8);
t1964 = -pkin(1) * t2095 + t2141 * t2227 + t2228 * t2349;
t1963 = pkin(1) * t2098 - t2141 * t2228 + t2227 * t2349;
t1955 = t2026 * t2235 + t2146 * t2231;
t1954 = -pkin(1) * t2082 + t2142 * t2227 + t2228 * t2350;
t1953 = pkin(1) * t2083 - t2142 * t2228 + t2227 * t2350;
t1946 = -t2080 * t2227 + t2228 * t2296;
t1945 = -t2078 * t2227 + t2228 * t2297;
t1944 = t2080 * t2228 + t2227 * t2296;
t1943 = t2078 * t2228 + t2227 * t2297;
t1941 = pkin(1) * t2031 + t2057 * t2461;
t1940 = pkin(8) * t2057 * t2228 - pkin(1) * t2030;
t1924 = -pkin(1) * t2071 + t2228 * t2275;
t1923 = pkin(1) * t2073 + t2227 * t2275;
t1920 = pkin(2) * t2090 + pkin(9) * t2059 + t2418;
t1918 = -t2062 * t2227 + t2228 * t2311;
t1917 = -t2061 * t2227 + t2228 * t2312;
t1916 = t2062 * t2228 + t2227 * t2311;
t1915 = t2061 * t2228 + t2227 * t2312;
t1914 = (-t2030 * t2227 - t2031 * t2228) * pkin(8);
t1912 = -pkin(2) * t2513 + pkin(9) * t2050 - t2417;
t1911 = (-t2071 * t2227 - t2073 * t2228) * pkin(8) - t2310;
t1908 = -t2058 * t2227 + t2228 * t2313;
t1907 = t2058 * t2228 + t2227 * t2313;
t1905 = t1995 * t2235 - t2503;
t1903 = -t2049 * t2227 + t2228 * t2314;
t1902 = t2049 * t2228 + t2227 * t2314;
t1869 = -t2024 * t2227 + t2228 * t2316;
t1868 = t2024 * t2228 + t2227 * t2316;
t1861 = -t2025 * t2227 + t2228 * t2315;
t1860 = t2025 * t2228 + t2227 * t2315;
t1841 = -pkin(2) * t2075 + pkin(9) * t1877;
t1836 = -t1992 * t2227 + t2228 * t2318;
t1833 = t1992 * t2228 + t2227 * t2318;
t1817 = pkin(2) * t2111 + pkin(9) * t2027 + t1877;
t1811 = t2228 * t2320 - t2533;
t1805 = t2227 * t2320 + t2530;
t1786 = -t1876 * t2227 + t2228 * t2330;
t1785 = t1876 * t2228 + t2227 * t2330;
t1768 = -t1871 * t2227 + t2228 * t2332;
t1765 = t1871 * t2228 + t2227 * t2332;
t1751 = -t1913 * t2231 + t1967 * t2235 + (-t1907 * t2227 - t1908 * t2228) * pkin(8);
t1748 = -t1909 * t2231 + t1962 * t2235 + (-t1902 * t2227 - t1903 * t2228) * pkin(8);
t1738 = -pkin(1) * t1907 - t1920 * t2227 + t2228 * t2276;
t1737 = pkin(1) * t1908 + t1920 * t2228 + t2227 * t2276;
t1735 = -t1843 * t2227 + t2228 * t2341;
t1732 = t1843 * t2228 + t2227 * t2341;
t1728 = -pkin(1) * t1902 - t1912 * t2227 + t2228 * t2277;
t1727 = pkin(1) * t1903 + t1912 * t2228 + t2227 * t2277;
t1719 = t2025 * t2465 + t1827 * t2235 + (-t1860 * t2227 - t1861 * t2228) * pkin(8);
t1712 = pkin(9) * t1874 + t1797 * t2234 + t1838 * t2230 + t2592;
t1710 = t1796 * t2234 + t1831 * t2230 + t2578;
t1708 = -pkin(1) * t1860 - t1817 * t2227 + t2228 * t2273;
t1707 = pkin(1) * t1861 + t1817 * t2228 + t2227 * t2273;
t1696 = t2360 * t1876 + (-t1785 * t2227 - t1786 * t2228) * pkin(8);
t1695 = -pkin(1) * t1785 - t1841 * t2227 + t2228 * t2267;
t1694 = pkin(1) * t1786 + t1841 * t2228 + t2227 * t2267;
t1693 = t1723 * t2230 - t1891 * t2379 - t2662;
t1685 = t1740 * t2230 + t1750 * t2234 + t2578;
t1682 = t1739 * t2230 + t1747 * t2234 + t2635;
t1678 = -pkin(2) * t1893 + pkin(9) * t1846 + t1705 * t2230 + t1812 * t2234;
t1674 = -t1725 * t2227 + t2228 * t2343;
t1673 = t1725 * t2228 + t2227 * t2343;
t1671 = t1713 * t2230 + t1720 * t2234 + t2635;
t1670 = t1711 * t2230 + t1718 * t2234 + t2578;
t1668 = pkin(9) * t1726 + (-pkin(10) * t2230 + t2379) * t1752;
t1667 = t1717 * t2235 - t1756 * t2231 + (-t1765 * t2227 - t1768 * t2228) * pkin(8);
t1666 = -pkin(2) * t1891 + t1681 * t2230 + t1783 * t2234 + t2662;
t1665 = t1716 * t2235 - t1754 * t2231 + t2624;
t1661 = -t1701 * t2227 + t2228 * t2344;
t1660 = t1701 * t2228 + t2227 * t2344;
t1659 = -pkin(1) * t1765 - t1712 * t2227 + t2228 * t2278;
t1658 = pkin(1) * t1768 + t1712 * t2228 + t2227 * t2278;
t1657 = -t1710 * t2227 + t2228 * t2279 - t2646;
t1656 = t1710 * t2228 + t2227 * t2279 + t2647;
t1655 = t1690 * t2235 - t1715 * t2231 + t2624;
t1654 = t1688 * t2235 - t1714 * t2231 + t2666;
t1653 = t1700 * t2235 - t1706 * t2231 + t2691;
t1650 = -t1683 * t2227 + t2228 * t2345;
t1649 = t1683 * t2228 + t2227 * t2345;
t1648 = t1675 * t2235 - t1699 * t2231 + t2666;
t1647 = t1680 * t2235 - t1692 * t2231 + (-t1732 * t2227 - t1735 * t2228) * pkin(8);
t1646 = t1672 * t2235 - t1698 * t2231 + t2624;
t1645 = -t1693 * t2227 + t2228 * t2280 + t2689;
t1644 = t1693 * t2228 + t2227 * t2280 - t2688;
t1643 = -t1685 * t2227 + t2228 * t2281 - t2646;
t1642 = t1685 * t2228 + t2227 * t2281 + t2647;
t1641 = -t1682 * t2227 + t2228 * t2282 - t2671;
t1640 = t1682 * t2228 + t2227 * t2282 + t2672;
t1639 = -pkin(2) * t1721 + pkin(9) * t1702 + t1686 * t2234 + t1689 * t2230;
t1638 = t1669 * t2235 - t1676 * t2231 - t2691;
t1636 = -pkin(1) * t1732 - t1678 * t2227 + t2228 * t2283;
t1635 = pkin(1) * t1735 + t1678 * t2228 + t2227 * t2283;
t1634 = -t1671 * t2227 + t2228 * t2285 - t2671;
t1633 = t1671 * t2228 + t2227 * t2285 + t2672;
t1632 = -t1670 * t2227 + t2228 * t2286 - t2646;
t1631 = t1670 * t2228 + t2227 * t2286 + t2647;
t1630 = t1679 * t2235 - t1691 * t2231 + (-t1673 * t2227 - t1674 * t2228) * pkin(8);
t1629 = -t1666 * t2227 + t2228 * t2287 - t2689;
t1628 = t1666 * t2228 + t2227 * t2287 + t2688;
t1626 = -pkin(1) * t1673 - t1668 * t2227 + t2228 * t2284;
t1625 = pkin(1) * t1674 + t1668 * t2228 + t2227 * t2284;
t1624 = -pkin(2) * t1703 + pkin(9) * t1684 + t1652 * t2230 + t1663 * t2234;
t1623 = t1651 * t2235 - t1662 * t2231 + (-t1660 * t2227 - t1661 * t2228) * pkin(8);
t1622 = -pkin(1) * t1660 - t1639 * t2227 + t2228 * t2288;
t1621 = pkin(1) * t1661 + t1639 * t2228 + t2227 * t2288;
t1620 = t1627 * t2235 - t1637 * t2231 + (-t1649 * t2227 - t1650 * t2228) * pkin(8);
t1619 = -pkin(1) * t1649 - t1624 * t2227 + t2228 * t2289;
t1618 = pkin(1) * t1650 + t1624 * t2228 + t2227 * t2289;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t2214, 0, -t2213, 0, t2358, -t2198, -t2302, -pkin(7) * t2302, -t2232 * t2139 + t2163 * t2236, -t2232 * t2074 + t2108 * t2236, -t2232 * t2096 + t2148 * t2236, -t2232 * t2136 + t2162 * t2236, -t2232 * t2097 + t2149 * t2236, t2236 * t2173 + t2232 * t2300, t2236 * t1969 - t2232 * t1964 - pkin(7) * (t2098 * t2236 + t2232 * t2150), t2236 * t1965 - t2232 * t1954 - pkin(7) * (t2083 * t2236 + t2232 * t2143), t2236 * t1911 - t2232 * t1924 - pkin(7) * (t2073 * t2236 + t2232 * t2107), t2236 * t1914 - t2232 * t1940 - pkin(7) * (t2031 * t2236 + t2232 * t2057), -t2232 * t1946 + t2033 * t2236, -t2232 * t1869 + t1955 * t2236, -t2232 * t1917 + t1985 * t2236, -t2232 * t1945 + t2032 * t2236, -t2232 * t1918 + t1986 * t2236, -t2232 * t2029 + t2077 * t2236, t2236 * t1748 - t2232 * t1728 - pkin(7) * (t1903 * t2236 + t2232 * t1966), t2236 * t1751 - t2232 * t1738 - pkin(7) * (t1908 * t2236 + t2232 * t1968), t2236 * t1719 - t2232 * t1708 - pkin(7) * (t1861 * t2236 + t2232 * t1942), t2236 * t1696 - t2232 * t1695 - pkin(7) * (t1786 * t2236 + t2232 * t1839), t2505, t2683, t2685, t2571, t2651, t2598, -t2232 * t1657 + t2236 * t1665 - t2625, t2236 * t1667 - t2232 * t1659 - pkin(7) * (t1768 * t2236 + t2232 * t1819), -t2232 * t1645 + t2236 * t1653 + t2693, t2236 * t1630 - t2232 * t1626 - pkin(7) * (t1674 * t2236 + t2232 * t1697), t2505, t2685, -t2683, t2598, -t2651, t2571, -t2232 * t1643 + t2236 * t1655 - t2625, t2236 * t1647 - t2232 * t1636 - pkin(7) * (t1735 * t2236 + t2232 * t1791), -t2232 * t1641 + t2236 * t1654 - t2667, t2236 * t1623 - t2232 * t1622 - pkin(7) * (t1661 * t2236 + t2232 * t1677), -t2232 * t1811 + t2553, -t2683, -t2685, t2571, t2651, -t2232 * t1836 + t1905 * t2236, -t2232 * t1632 + t2236 * t1646 - t2625, -t2232 * t1634 + t2236 * t1648 - t2667, -t2232 * t1629 + t2236 * t1638 - t2693, t2236 * t1620 - t2232 * t1619 - pkin(7) * (t1650 * t2236 + t2232 * t1664); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t2213, 0, t2214, 0, t2198, t2358, t2364, pkin(7) * t2364, t2139 * t2236 + t2232 * t2163, t2074 * t2236 + t2232 * t2108, t2096 * t2236 + t2232 * t2148, t2136 * t2236 + t2232 * t2162, t2097 * t2236 + t2232 * t2149, t2232 * t2173 - t2236 * t2300, t2232 * t1969 + t2236 * t1964 + pkin(7) * (-t2232 * t2098 + t2150 * t2236), t2232 * t1965 + t2236 * t1954 + pkin(7) * (-t2232 * t2083 + t2143 * t2236), t2232 * t1911 + t2236 * t1924 + pkin(7) * (-t2232 * t2073 + t2107 * t2236), t2232 * t1914 + t2236 * t1940 + pkin(7) * (-t2232 * t2031 + t2057 * t2236), t1946 * t2236 + t2232 * t2033, t1869 * t2236 + t2232 * t1955, t1917 * t2236 + t2232 * t1985, t1945 * t2236 + t2232 * t2032, t1918 * t2236 + t2232 * t1986, t2029 * t2236 + t2232 * t2077, t2232 * t1748 + t2236 * t1728 + pkin(7) * (-t2232 * t1903 + t1966 * t2236), t2232 * t1751 + t2236 * t1738 + pkin(7) * (-t2232 * t1908 + t1968 * t2236), t2232 * t1719 + t2236 * t1708 + pkin(7) * (-t2232 * t1861 + t1942 * t2236), t2232 * t1696 + t2236 * t1695 + pkin(7) * (-t2232 * t1786 + t1839 * t2236), t2506, -t2648, -t2684, t2566, -t2690, t2594, t2236 * t1657 + t2232 * t1665 + t2626, t2232 * t1667 + t2236 * t1659 + pkin(7) * (-t2232 * t1768 + t1819 * t2236), t2236 * t1645 + t2232 * t1653 + t2692, t2232 * t1630 + t2236 * t1626 + pkin(7) * (-t2232 * t1674 + t1697 * t2236), t2506, -t2684, t2648, t2594, t2690, t2566, t2236 * t1643 + t2232 * t1655 + t2626, t2232 * t1647 + t2236 * t1636 + pkin(7) * (-t2232 * t1735 + t1791 * t2236), t2236 * t1641 + t2232 * t1654 + t2668, t2232 * t1623 + t2236 * t1622 + pkin(7) * (-t2232 * t1661 + t1677 * t2236), t1811 * t2236 + t2556, t2648, t2684, t2566, -t2690, t1836 * t2236 + t2232 * t1905, t2236 * t1632 + t2232 * t1646 + t2626, t2236 * t1634 + t2232 * t1648 + t2668, t2236 * t1629 + t2232 * t1638 - t2692, t2232 * t1620 + t2236 * t1619 + pkin(7) * (-t2232 * t1650 + t1664 * t2236); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t2216, t2217, 0, 0, t2138, t2072, t2093, t2137, t2094, t2210, t1963, t1953, t1923, t1941, t1944, t1868, t1915, t1943, t1916, t2028, t1727, t1737, t1707, t1694, t2472, -t2633, -t1772, t2540, -t1773, t2575, t1656, t1658, t1644, t1625, t2472, -t1772, t2633, t2575, t1773, t2540, t1642, t1635, t1640, t1621, t1805, t2633, t1772, t2540, -t1773, t1833, t1631, t1633, t1628, t1618; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t2470, 0, 0, -g(3), -t2216, 0, t2163, t2108, t2148, t2162, t2149, t2173, t1969, t1965, t1911, t1914, t2033, t1955, t1985, t2032, t1986, t2077, t1748, t1751, t1719, t1696, t2509, -t2595, -t1823, t2507, -t1824, t2549, t1665, t1667, t1653, t1630, t2509, -t1823, t2595, t2549, t1824, t2507, t1655, t1647, t1654, t1623, t2509, t2595, t1823, t2507, -t1824, t1905, t1646, t1648, t1638, t1620; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2470, 0, qJDD(1), 0, g(3), 0, -t2217, 0, t2139, t2074, t2096, t2136, t2097, -t2300, t1964, t1954, t1924, t1940, t1946, t1869, t1917, t1945, t1918, t2029, t1728, t1738, t1708, t1695, t2471, -t2630, -t1778, t2539, -t1779, t2574, t1657, t1659, t1645, t1626, t2471, -t1778, t2630, t2574, t1779, t2539, t1643, t1636, t1641, t1622, t1811, t2630, t1778, t2539, -t1779, t1836, t1632, t1634, t1629, t1619; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t2216, t2217, 0, 0, t2138, t2072, t2093, t2137, t2094, t2210, t1963, t1953, t1923, t1941, t1944, t1868, t1915, t1943, t1916, t2028, t1727, t1737, t1707, t1694, t2472, -t2633, -t1772, t2540, -t1773, t2575, t1656, t1658, t1644, t1625, t2472, -t1772, t2633, t2575, t1773, t2540, t1642, t1635, t1640, t1621, t1805, t2633, t1772, t2540, -t1773, t1833, t1631, t1633, t1628, t1618; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2197, t2170, t2194, -t2205, t2200, t2205, 0, -t2174, t2141, 0, t2081, t2026, t2063, t2079, t2064, t2110, t1962, t1967, t1827, -pkin(9) * t1876, t2479, -t2570, -t1886, t2480, -t1887, t2475, t1716, t1717, t1700, t1679, t2479, -t1886, t2570, t2475, t1887, t2480, t1690, t1680, t1688, t1651, t2479, t2570, t1886, t2480, -t1887, t1995, t1672, t1675, t1669, t1627; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2204, t2167, t2199, -t2274, t2195, -t2204, t2174, 0, t2142, 0, -t2401, -t2146, -t2089, t2401, t2085, -t2262, t1909, t1913, -pkin(2) * t2025, -pkin(2) * t1876, -t2240, t2547, t1972, -t1999, -t2544, t2499, t1754, t1756, t1706, t1691, -t2240, t1972, -t2547, t2499, t2544, -t1999, t1715, t1692, t1714, t1662, -t2240, -t2547, -t1972, -t1999, -t2544, t2499, t1698, t1699, t1676, t1637; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2215, t2202, t2168, t2215, t2169, t2363, -t2141, -t2142, 0, 0, t2080, t2024, t2061, t2078, t2062, t2109, t1912, t1920, t1817, t1841, t2477, -t2576, -t1880, t2478, -t1881, t2476, t1710, t1712, t1693, t1668, t2477, -t1880, t2576, t2476, t1881, t2478, t1685, t1678, t1682, t1639, t2477, t2576, t1880, t2478, -t1881, t1992, t1670, t1671, t1666, t1624; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2135, -t2513, t2250, -t2171, t2164, t2171, 0, t2075, t1983, 0, t2386, -t2548, -t1978, t2298, -t1979, t2351, t1831, t1838, t1723, -pkin(10) * t1752, t2386, -t1978, t2548, t2351, t1979, t2298, t1740, t1705, t1739, t1689, t2386, t2548, t1978, t2298, -t1979, t2043, t1711, t1713, t1681, t1652; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2172, t2088, t2165, -t2295, -t2121, t2172, -t2075, 0, t1984, 0, -t2106, -t2490, -t2488, t2106, t2498, -t2133, t1796, t1797, t2623, -pkin(3) * t1752, -t2106, -t2488, t2490, -t2133, -t2498, t2106, t1750, t1812, t1747, t1686, -t2106, t2490, t2488, t2106, t2498, -t2133, t1718, t1720, t1783, t1663; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2401, t2146, t2089, -t2401, -t2085, t2262, -t1983, -t1984, 0, 0, t2240, -t2547, -t1972, t1999, t2544, -t2499, t2291, t2290, t2272, t2359, t2240, -t1972, t2547, -t2499, -t2544, t1999, t2264, t2259, t2265, t2483, t2240, t2547, t1972, t1999, t2544, -t2499, t2270, t2269, t2260, t2261; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2244, -t2497, t2496, t2407, t2486, -t2407, 0, t1921, t1829, 0, t2244, t2496, t2497, -t2407, -t2486, t2407, -t2455, t1787, t1788, -qJ(5) * t1813, t2244, t2497, -t2496, t2407, t2486, -t2407, t1910, t1749, t1730, t1709; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2404, t2489, -t2492, -t2052, t2495, -t2404, -t1921, 0, t1830, 0, t2404, -t2492, -t2489, -t2404, -t2495, -t2052, t1789, t1784, pkin(4) * t2489, -pkin(4) * t1813, t2404, -t2489, t2492, -t2052, t2495, -t2404, t1729, t1840, t1724, t1687; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2106, t2490, t2488, -t2106, -t2498, t2133, -t1829, -t1830, 0, 0, t2106, t2488, -t2490, t2133, t2498, -t2106, t2247, t2352, t2175 + t2258, t2353, t2106, -t2490, -t2488, -t2106, -t2498, t2133, t2241 + t2551, t2481 + t2494, t2482, t2484; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2244, t2496, t2497, -t2407, -t2486, t2407, 0, t1799, -t1813, 0, t2244, t2497, -t2496, t2407, t2486, -t2407, t2450, t2239, t2243, -t2452; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2106, t2488, -t2490, t2133, t2498, -t2106, -t1799, 0, t1798, 0, t2106, -t2490, -t2488, -t2106, -t2498, t2133, t2241, pkin(5) * t2491 + t1763, pkin(5) * t2488, -pkin(5) * t1755; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2404, t2492, t2489, t2404, t2495, t2052, t1813, -t1798, 0, 0, -t2404, t2489, -t2492, t2052, -t2495, t2404, t2242 + t2473, -pkin(5) * t2489 + t2449, -pkin(5) * t2054 - t2253 + t2494, pkin(5) * t1782 + t2451; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2244, t2497, -t2496, t2407, t2486, -t2407, 0, -t1782, -t1755, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2404, t2489, -t2492, t2052, -t2495, t2404, t1782, 0, t1763, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2106, t2490, t2488, t2106, t2498, -t2133, t1755, -t1763, 0, 0;];
m_new_reg  = t1;
