% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRRRPR5
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
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d6,theta1,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 08:09
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRRRPR5_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR5_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR5_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRPR5_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRPR5_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PRRRPR5_invdynf_fixb_reg2_snew_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 08:09:12
% EndTime: 2019-05-05 08:09:24
% DurationCPUTime: 12.70s
% Computational Cost: add. (139380->367), mult. (297450->596), div. (0->0), fcn. (245352->16), ass. (0->327)
t2598 = sin(pkin(7));
t2602 = cos(pkin(7));
t2597 = sin(pkin(12));
t2601 = cos(pkin(12));
t2583 = -g(1) * t2601 - g(2) * t2597;
t2607 = sin(qJ(2));
t2611 = cos(qJ(2));
t2595 = -g(3) + qJDD(1);
t2599 = sin(pkin(6));
t2673 = t2595 * t2599;
t2582 = g(1) * t2597 - g(2) * t2601;
t2603 = cos(pkin(6));
t2675 = t2582 * t2603;
t2695 = t2673 + t2675;
t2539 = -t2607 * t2583 + t2611 * t2695;
t2612 = qJD(2) ^ 2;
t2615 = t2612 * t2598 * pkin(9) + qJDD(2) * pkin(2) + t2539;
t2620 = -t2582 * t2599 + t2595 * t2603;
t2696 = t2598 * t2620 + t2602 * t2615;
t2591 = qJD(2) * t2602 + qJD(3);
t2605 = sin(qJ(4));
t2609 = cos(qJ(4));
t2606 = sin(qJ(3));
t2682 = qJD(2) * t2598;
t2665 = t2606 * t2682;
t2554 = -t2609 * t2591 + t2605 * t2665;
t2556 = t2591 * t2605 + t2609 * t2665;
t2596 = sin(pkin(13));
t2600 = cos(pkin(13));
t2532 = t2600 * t2554 + t2556 * t2596;
t2530 = qJD(6) + t2532;
t2694 = qJD(6) + t2530;
t2534 = -t2554 * t2596 + t2556 * t2600;
t2610 = cos(qJ(3));
t2664 = t2610 * t2682;
t2580 = -qJD(4) + t2664;
t2604 = sin(qJ(6));
t2608 = cos(qJ(6));
t2514 = t2534 * t2604 + t2608 * t2580;
t2693 = t2514 ^ 2;
t2516 = t2534 * t2608 - t2580 * t2604;
t2692 = t2516 ^ 2;
t2691 = t2530 ^ 2;
t2690 = t2532 ^ 2;
t2689 = t2534 ^ 2;
t2688 = t2554 ^ 2;
t2687 = t2556 ^ 2;
t2686 = t2580 ^ 2;
t2685 = t2591 ^ 2;
t2684 = -2 * qJD(5);
t2681 = t2514 * t2516;
t2680 = t2532 * t2534;
t2679 = t2532 * t2580;
t2678 = t2534 * t2580;
t2677 = t2554 * t2556;
t2676 = t2554 * t2580;
t2674 = t2598 ^ 2 * t2612;
t2671 = qJD(4) + t2580;
t2670 = qJD(6) - t2530;
t2540 = t2611 * t2583 + t2607 * t2695;
t2667 = qJDD(2) * t2598;
t2536 = -pkin(2) * t2612 + pkin(9) * t2667 + t2540;
t2486 = t2610 * t2536 + t2606 * t2696;
t2561 = (-pkin(3) * t2610 - pkin(10) * t2606) * t2682;
t2657 = qJDD(2) * t2602 + qJDD(3);
t2478 = -pkin(3) * t2685 + pkin(10) * t2657 + t2561 * t2664 + t2486;
t2550 = t2602 * t2620;
t2562 = qJD(3) * t2664 + t2606 * t2667;
t2668 = -qJD(3) * t2665 + t2610 * t2667;
t2483 = t2550 - t2562 * pkin(10) - t2668 * pkin(3) + ((pkin(3) * t2606 - pkin(10) * t2610) * t2591 * qJD(2) - t2615) * t2598;
t2448 = t2609 * t2478 + t2605 * t2483;
t2669 = t2696 * t2610;
t2658 = t2605 * t2562 - t2609 * t2657;
t2523 = -qJD(4) * t2556 - t2658;
t2541 = -pkin(4) * t2580 - qJ(5) * t2556;
t2428 = -pkin(4) * t2688 + qJ(5) * t2523 + t2541 * t2580 + t2448;
t2447 = -t2605 * t2478 + t2609 * t2483;
t2663 = -qJDD(4) + t2668;
t2519 = -t2663 - t2677;
t2616 = -t2609 * t2562 - t2605 * t2657;
t2524 = -t2554 * qJD(4) - t2616;
t2613 = (-t2524 + t2676) * qJ(5) + t2519 * pkin(4) + t2447;
t2397 = t2600 * t2428 + t2532 * t2684 + t2596 * t2613;
t2662 = t2596 * t2428 - t2600 * t2613;
t2493 = t2523 * t2596 + t2524 * t2600;
t2661 = -t2493 - t2679;
t2660 = -t2604 * t2493 - t2608 * t2663;
t2659 = -t2600 * t2523 + t2524 * t2596;
t2656 = t2591 * t2664;
t2655 = -qJDD(6) - t2659;
t2499 = pkin(5) * t2532 - pkin(11) * t2534;
t2387 = -pkin(5) * t2686 - pkin(11) * t2663 - t2532 * t2499 + t2397;
t2477 = -t2657 * pkin(3) - t2685 * pkin(10) + (t2561 * t2682 + t2536) * t2606 - t2669;
t2451 = -t2523 * pkin(4) - t2688 * qJ(5) + t2556 * t2541 + qJDD(5) + t2477;
t2472 = t2659 - t2678;
t2413 = pkin(5) * t2472 + pkin(11) * t2661 + t2451;
t2372 = -t2387 * t2604 + t2413 * t2608;
t2373 = t2387 * t2608 + t2413 * t2604;
t2356 = -t2372 * t2604 + t2373 * t2608;
t2386 = t2663 * pkin(5) - t2686 * pkin(11) + ((2 * qJD(5)) + t2499) * t2534 + t2662;
t2344 = t2356 * t2596 - t2386 * t2600;
t2345 = t2356 * t2600 + t2386 * t2596;
t2333 = t2344 * t2609 + t2345 * t2605;
t2334 = -t2344 * t2605 + t2345 * t2609;
t2355 = t2372 * t2608 + t2373 * t2604;
t2653 = t2334 * t2606 - t2355 * t2610;
t2326 = -t2598 * t2333 + t2602 * t2653;
t2329 = t2334 * t2610 + t2355 * t2606;
t2654 = t2326 * t2611 + t2329 * t2607;
t2396 = t2534 * t2684 - t2662;
t2370 = t2396 * t2600 + t2397 * t2596;
t2371 = -t2396 * t2596 + t2397 * t2600;
t2351 = t2370 * t2609 + t2371 * t2605;
t2352 = -t2370 * t2605 + t2371 * t2609;
t2650 = t2352 * t2606 - t2451 * t2610;
t2340 = -t2598 * t2351 + t2602 * t2650;
t2346 = t2352 * t2610 + t2451 * t2606;
t2652 = t2340 * t2611 + t2346 * t2607;
t2444 = -t2516 * t2670 + t2660;
t2617 = -t2608 * t2493 + t2604 * t2663;
t2446 = t2514 * t2670 + t2617;
t2416 = t2444 * t2608 - t2446 * t2604;
t2466 = -t2692 - t2693;
t2401 = t2416 * t2596 - t2466 * t2600;
t2402 = t2416 * t2600 + t2466 * t2596;
t2375 = t2401 * t2609 + t2402 * t2605;
t2376 = -t2401 * t2605 + t2402 * t2609;
t2415 = t2444 * t2604 + t2446 * t2608;
t2647 = t2376 * t2606 - t2415 * t2610;
t2348 = -t2598 * t2375 + t2602 * t2647;
t2366 = t2376 * t2610 + t2415 * t2606;
t2651 = t2348 * t2611 + t2366 * t2607;
t2455 = -t2655 - t2681;
t2469 = -t2691 - t2693;
t2430 = -t2455 * t2604 + t2469 * t2608;
t2443 = t2516 * t2694 - t2660;
t2406 = t2430 * t2596 - t2443 * t2600;
t2407 = t2430 * t2600 + t2443 * t2596;
t2380 = t2406 * t2609 + t2407 * t2605;
t2381 = -t2406 * t2605 + t2407 * t2609;
t2429 = t2455 * t2608 + t2469 * t2604;
t2645 = t2381 * t2606 - t2429 * t2610;
t2358 = -t2598 * t2380 + t2602 * t2645;
t2368 = t2381 * t2610 + t2429 * t2606;
t2649 = t2358 * t2611 + t2368 * t2607;
t2456 = t2655 - t2681;
t2480 = -t2691 - t2692;
t2434 = t2456 * t2608 - t2480 * t2604;
t2445 = -t2514 * t2694 - t2617;
t2408 = t2434 * t2596 - t2445 * t2600;
t2409 = t2434 * t2600 + t2445 * t2596;
t2382 = t2408 * t2609 + t2409 * t2605;
t2383 = -t2408 * t2605 + t2409 * t2609;
t2433 = t2456 * t2604 + t2480 * t2608;
t2644 = t2383 * t2606 - t2433 * t2610;
t2360 = -t2598 * t2382 + t2602 * t2644;
t2369 = t2383 * t2610 + t2433 * t2606;
t2648 = t2360 * t2611 + t2369 * t2607;
t2473 = -t2659 - t2678;
t2475 = -t2493 + t2679;
t2437 = t2473 * t2596 + t2475 * t2600;
t2438 = t2473 * t2600 - t2475 * t2596;
t2410 = t2437 * t2609 + t2438 * t2605;
t2411 = -t2437 * t2605 + t2438 * t2609;
t2481 = -t2689 - t2690;
t2640 = t2411 * t2606 - t2481 * t2610;
t2378 = -t2598 * t2410 + t2602 * t2640;
t2400 = t2411 * t2610 + t2481 * t2606;
t2646 = t2378 * t2611 + t2400 * t2607;
t2417 = t2447 * t2609 + t2448 * t2605;
t2418 = -t2447 * t2605 + t2448 * t2609;
t2639 = t2418 * t2606 - t2477 * t2610;
t2385 = -t2598 * t2417 + t2602 * t2639;
t2405 = t2418 * t2610 + t2477 * t2606;
t2643 = t2385 * t2611 + t2405 * t2607;
t2491 = -t2663 - t2680;
t2496 = -t2686 - t2690;
t2460 = t2491 * t2600 + t2496 * t2596;
t2461 = -t2491 * t2596 + t2496 * t2600;
t2423 = t2460 * t2609 + t2461 * t2605;
t2424 = -t2460 * t2605 + t2461 * t2609;
t2638 = t2424 * t2606 - t2472 * t2610;
t2389 = -t2598 * t2423 + t2602 * t2638;
t2414 = t2424 * t2610 + t2472 * t2606;
t2642 = t2389 * t2611 + t2414 * t2607;
t2490 = t2663 - t2680;
t2512 = -t2686 - t2689;
t2467 = t2490 * t2596 + t2512 * t2600;
t2468 = t2490 * t2600 - t2512 * t2596;
t2435 = t2467 * t2609 + t2468 * t2605;
t2436 = -t2467 * t2605 + t2468 * t2609;
t2636 = t2436 * t2606 + t2610 * t2661;
t2393 = -t2598 * t2435 + t2602 * t2636;
t2420 = t2436 * t2610 - t2606 * t2661;
t2641 = t2393 * t2611 + t2420 * t2607;
t2505 = -t2556 * t2671 - t2658;
t2507 = t2554 * t2671 + t2616;
t2470 = t2505 * t2605 + t2507 * t2609;
t2471 = t2505 * t2609 - t2507 * t2605;
t2517 = -t2687 - t2688;
t2632 = t2471 * t2606 - t2517 * t2610;
t2432 = -t2598 * t2470 + t2602 * t2632;
t2457 = t2471 * t2610 + t2517 * t2606;
t2637 = t2432 * t2611 + t2457 * t2607;
t2511 = -t2598 * t2615 + t2550;
t2485 = -t2606 * t2536 + t2669;
t2631 = t2485 * t2610 + t2486 * t2606;
t2440 = -t2598 * t2511 + t2602 * t2631;
t2454 = -t2485 * t2606 + t2486 * t2610;
t2635 = t2440 * t2611 + t2454 * t2607;
t2525 = -t2686 - t2688;
t2488 = t2519 * t2609 + t2525 * t2605;
t2489 = -t2519 * t2605 + t2525 * t2609;
t2504 = (qJD(4) - t2580) * t2556 + t2658;
t2630 = t2489 * t2606 - t2504 * t2610;
t2442 = -t2598 * t2488 + t2602 * t2630;
t2464 = t2489 * t2610 + t2504 * t2606;
t2634 = t2442 * t2611 + t2464 * t2607;
t2518 = t2663 - t2677;
t2537 = -t2686 - t2687;
t2497 = t2518 * t2605 + t2537 * t2609;
t2498 = t2518 * t2609 - t2537 * t2605;
t2506 = t2524 + t2676;
t2629 = t2498 * t2606 - t2506 * t2610;
t2450 = -t2598 * t2497 + t2602 * t2629;
t2465 = t2498 * t2610 + t2506 * t2606;
t2633 = t2450 * t2611 + t2465 * t2607;
t2593 = t2606 ^ 2;
t2594 = t2610 ^ 2;
t2568 = (-t2593 - t2594) * t2674;
t2543 = t2656 - t2562;
t2570 = t2591 * t2665;
t2544 = t2570 + t2668;
t2624 = t2543 * t2610 + t2544 * t2606;
t2501 = -t2598 * t2568 + t2602 * t2624;
t2513 = -t2543 * t2606 + t2544 * t2610;
t2628 = t2501 * t2611 + t2513 * t2607;
t2542 = t2656 + t2562;
t2551 = -t2593 * t2674 - t2685;
t2579 = t2606 * t2610 * t2674;
t2560 = t2579 - t2657;
t2623 = t2551 * t2610 + t2560 * t2606;
t2503 = -t2598 * t2542 + t2602 * t2623;
t2535 = -t2551 * t2606 + t2560 * t2610;
t2627 = t2503 * t2611 + t2535 * t2607;
t2545 = t2570 - t2668;
t2559 = t2579 + t2657;
t2563 = -t2594 * t2674 - t2685;
t2622 = t2559 * t2610 + t2563 * t2606;
t2510 = -t2598 * t2545 + t2602 * t2622;
t2538 = -t2559 * t2606 + t2563 * t2610;
t2626 = t2510 * t2611 + t2538 * t2607;
t2625 = t2539 * t2611 + t2540 * t2607;
t2619 = qJDD(2) * t2611 - t2607 * t2612;
t2578 = -qJDD(2) * t2607 - t2611 * t2612;
t2567 = t2619 * t2603;
t2566 = t2578 * t2603;
t2565 = t2619 * t2599;
t2564 = t2578 * t2599;
t2509 = t2602 * t2545 + t2598 * t2622;
t2508 = -t2539 * t2607 + t2540 * t2611;
t2502 = t2602 * t2542 + t2598 * t2623;
t2500 = t2602 * t2568 + t2598 * t2624;
t2495 = t2599 ^ 2 * t2582 + (t2625 - t2673) * t2603;
t2494 = t2603 ^ 2 * t2595 + (t2625 - t2675) * t2599;
t2487 = -t2510 * t2607 + t2538 * t2611;
t2484 = -t2503 * t2607 + t2535 * t2611;
t2479 = -t2501 * t2607 + t2513 * t2611;
t2463 = -t2599 * t2509 + t2603 * t2626;
t2462 = t2603 * t2509 + t2599 * t2626;
t2459 = -t2599 * t2502 + t2603 * t2627;
t2458 = t2603 * t2502 + t2599 * t2627;
t2453 = -t2599 * t2500 + t2603 * t2628;
t2452 = t2603 * t2500 + t2599 * t2628;
t2449 = t2602 * t2497 + t2598 * t2629;
t2441 = t2602 * t2488 + t2598 * t2630;
t2439 = t2602 * t2511 + t2598 * t2631;
t2431 = t2602 * t2470 + t2598 * t2632;
t2422 = -t2450 * t2607 + t2465 * t2611;
t2421 = -t2442 * t2607 + t2464 * t2611;
t2419 = -t2440 * t2607 + t2454 * t2611;
t2412 = -t2432 * t2607 + t2457 * t2611;
t2404 = -t2599 * t2449 + t2603 * t2633;
t2403 = t2603 * t2449 + t2599 * t2633;
t2399 = -t2599 * t2441 + t2603 * t2634;
t2398 = t2603 * t2441 + t2599 * t2634;
t2395 = -t2599 * t2439 + t2603 * t2635;
t2394 = t2603 * t2439 + t2599 * t2635;
t2392 = t2602 * t2435 + t2598 * t2636;
t2391 = -t2599 * t2431 + t2603 * t2637;
t2390 = t2603 * t2431 + t2599 * t2637;
t2388 = t2602 * t2423 + t2598 * t2638;
t2384 = t2602 * t2417 + t2598 * t2639;
t2379 = -t2393 * t2607 + t2420 * t2611;
t2377 = t2602 * t2410 + t2598 * t2640;
t2374 = -t2389 * t2607 + t2414 * t2611;
t2367 = -t2385 * t2607 + t2405 * t2611;
t2365 = -t2378 * t2607 + t2400 * t2611;
t2364 = -t2599 * t2392 + t2603 * t2641;
t2363 = t2603 * t2392 + t2599 * t2641;
t2362 = -t2599 * t2388 + t2603 * t2642;
t2361 = t2603 * t2388 + t2599 * t2642;
t2359 = t2602 * t2382 + t2598 * t2644;
t2357 = t2602 * t2380 + t2598 * t2645;
t2354 = -t2599 * t2384 + t2603 * t2643;
t2353 = t2603 * t2384 + t2599 * t2643;
t2350 = -t2599 * t2377 + t2603 * t2646;
t2349 = t2603 * t2377 + t2599 * t2646;
t2347 = t2602 * t2375 + t2598 * t2647;
t2343 = -t2360 * t2607 + t2369 * t2611;
t2342 = -t2358 * t2607 + t2368 * t2611;
t2341 = -t2348 * t2607 + t2366 * t2611;
t2339 = t2602 * t2351 + t2598 * t2650;
t2338 = -t2599 * t2359 + t2603 * t2648;
t2337 = t2603 * t2359 + t2599 * t2648;
t2336 = -t2599 * t2357 + t2603 * t2649;
t2335 = t2603 * t2357 + t2599 * t2649;
t2332 = -t2599 * t2347 + t2603 * t2651;
t2331 = t2603 * t2347 + t2599 * t2651;
t2330 = -t2340 * t2607 + t2346 * t2611;
t2328 = -t2599 * t2339 + t2603 * t2652;
t2327 = t2603 * t2339 + t2599 * t2652;
t2325 = t2602 * t2333 + t2598 * t2653;
t2324 = -t2326 * t2607 + t2329 * t2611;
t2323 = -t2599 * t2325 + t2603 * t2654;
t2322 = t2603 * t2325 + t2599 * t2654;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2582 * t2597 + t2583 * t2601, 0, 0, 0, 0, 0, 0, -t2567 * t2597 + t2578 * t2601, -t2566 * t2597 - t2601 * t2619, 0, -t2495 * t2597 + t2508 * t2601, 0, 0, 0, 0, 0, 0, -t2463 * t2597 + t2487 * t2601, -t2459 * t2597 + t2484 * t2601, -t2453 * t2597 + t2479 * t2601, -t2395 * t2597 + t2419 * t2601, 0, 0, 0, 0, 0, 0, -t2399 * t2597 + t2421 * t2601, -t2404 * t2597 + t2422 * t2601, -t2391 * t2597 + t2412 * t2601, -t2354 * t2597 + t2367 * t2601, 0, 0, 0, 0, 0, 0, -t2362 * t2597 + t2374 * t2601, -t2364 * t2597 + t2379 * t2601, -t2350 * t2597 + t2365 * t2601, -t2328 * t2597 + t2330 * t2601, 0, 0, 0, 0, 0, 0, -t2336 * t2597 + t2342 * t2601, -t2338 * t2597 + t2343 * t2601, -t2332 * t2597 + t2341 * t2601, -t2323 * t2597 + t2324 * t2601; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2582 * t2601 + t2583 * t2597, 0, 0, 0, 0, 0, 0, t2567 * t2601 + t2578 * t2597, t2566 * t2601 - t2597 * t2619, 0, t2495 * t2601 + t2508 * t2597, 0, 0, 0, 0, 0, 0, t2463 * t2601 + t2487 * t2597, t2459 * t2601 + t2484 * t2597, t2453 * t2601 + t2479 * t2597, t2395 * t2601 + t2419 * t2597, 0, 0, 0, 0, 0, 0, t2399 * t2601 + t2421 * t2597, t2404 * t2601 + t2422 * t2597, t2391 * t2601 + t2412 * t2597, t2354 * t2601 + t2367 * t2597, 0, 0, 0, 0, 0, 0, t2362 * t2601 + t2374 * t2597, t2364 * t2601 + t2379 * t2597, t2350 * t2601 + t2365 * t2597, t2328 * t2601 + t2330 * t2597, 0, 0, 0, 0, 0, 0, t2336 * t2601 + t2342 * t2597, t2338 * t2601 + t2343 * t2597, t2332 * t2601 + t2341 * t2597, t2323 * t2601 + t2324 * t2597; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t2595, 0, 0, 0, 0, 0, 0, t2565, t2564, 0, t2494, 0, 0, 0, 0, 0, 0, t2462, t2458, t2452, t2394, 0, 0, 0, 0, 0, 0, t2398, t2403, t2390, t2353, 0, 0, 0, 0, 0, 0, t2361, t2363, t2349, t2327, 0, 0, 0, 0, 0, 0, t2335, t2337, t2331, t2322; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2583, 0, 0, 0, 0, 0, 0, t2578, -t2619, 0, t2508, 0, 0, 0, 0, 0, 0, t2487, t2484, t2479, t2419, 0, 0, 0, 0, 0, 0, t2421, t2422, t2412, t2367, 0, 0, 0, 0, 0, 0, t2374, t2379, t2365, t2330, 0, 0, 0, 0, 0, 0, t2342, t2343, t2341, t2324; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2582, 0, 0, 0, 0, 0, 0, t2567, t2566, 0, t2495, 0, 0, 0, 0, 0, 0, t2463, t2459, t2453, t2395, 0, 0, 0, 0, 0, 0, t2399, t2404, t2391, t2354, 0, 0, 0, 0, 0, 0, t2362, t2364, t2350, t2328, 0, 0, 0, 0, 0, 0, t2336, t2338, t2332, t2323; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2595, 0, 0, 0, 0, 0, 0, t2565, t2564, 0, t2494, 0, 0, 0, 0, 0, 0, t2462, t2458, t2452, t2394, 0, 0, 0, 0, 0, 0, t2398, t2403, t2390, t2353, 0, 0, 0, 0, 0, 0, t2361, t2363, t2349, t2327, 0, 0, 0, 0, 0, 0, t2335, t2337, t2331, t2322; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2612, -qJDD(2), 0, t2540, 0, 0, 0, 0, 0, 0, t2538, t2535, t2513, t2454, 0, 0, 0, 0, 0, 0, t2464, t2465, t2457, t2405, 0, 0, 0, 0, 0, 0, t2414, t2420, t2400, t2346, 0, 0, 0, 0, 0, 0, t2368, t2369, t2366, t2329; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t2612, 0, t2539, 0, 0, 0, 0, 0, 0, t2510, t2503, t2501, t2440, 0, 0, 0, 0, 0, 0, t2442, t2450, t2432, t2385, 0, 0, 0, 0, 0, 0, t2389, t2393, t2378, t2340, 0, 0, 0, 0, 0, 0, t2358, t2360, t2348, t2326; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2620, 0, 0, 0, 0, 0, 0, t2509, t2502, t2500, t2439, 0, 0, 0, 0, 0, 0, t2441, t2449, t2431, t2384, 0, 0, 0, 0, 0, 0, t2388, t2392, t2377, t2339, 0, 0, 0, 0, 0, 0, t2357, t2359, t2347, t2325; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2563, t2560, t2544, t2486, 0, 0, 0, 0, 0, 0, t2489, t2498, t2471, t2418, 0, 0, 0, 0, 0, 0, t2424, t2436, t2411, t2352, 0, 0, 0, 0, 0, 0, t2381, t2383, t2376, t2334; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2559, t2551, t2543, t2485, 0, 0, 0, 0, 0, 0, -t2504, -t2506, -t2517, -t2477, 0, 0, 0, 0, 0, 0, -t2472, t2661, -t2481, -t2451, 0, 0, 0, 0, 0, 0, -t2429, -t2433, -t2415, -t2355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2545, t2542, t2568, t2511, 0, 0, 0, 0, 0, 0, t2488, t2497, t2470, t2417, 0, 0, 0, 0, 0, 0, t2423, t2435, t2410, t2351, 0, 0, 0, 0, 0, 0, t2380, t2382, t2375, t2333; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2525, t2518, t2505, t2448, 0, 0, 0, 0, 0, 0, t2461, t2468, t2438, t2371, 0, 0, 0, 0, 0, 0, t2407, t2409, t2402, t2345; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2519, t2537, t2507, t2447, 0, 0, 0, 0, 0, 0, t2460, t2467, t2437, t2370, 0, 0, 0, 0, 0, 0, t2406, t2408, t2401, t2344; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2504, t2506, t2517, t2477, 0, 0, 0, 0, 0, 0, t2472, -t2661, t2481, t2451, 0, 0, 0, 0, 0, 0, t2429, t2433, t2415, t2355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2496, t2490, t2473, t2397, 0, 0, 0, 0, 0, 0, t2430, t2434, t2416, t2356; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2491, t2512, t2475, t2396, 0, 0, 0, 0, 0, 0, -t2443, -t2445, -t2466, -t2386; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2472, -t2661, t2481, t2451, 0, 0, 0, 0, 0, 0, t2429, t2433, t2415, t2355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2469, t2456, t2444, t2373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2455, t2480, t2446, t2372; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2443, t2445, t2466, t2386;];
f_new_reg  = t1;