% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRRPR11
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 23:44
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRRPR11_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR11_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR11_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPR11_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPR11_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR11_invdynf_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 23:43:38
% EndTime: 2019-05-07 23:43:55
% DurationCPUTime: 18.02s
% Computational Cost: add. (233995->386), mult. (504584->586), div. (0->0), fcn. (411980->14), ass. (0->324)
t2663 = sin(pkin(6));
t2674 = cos(qJ(2));
t2719 = qJDD(1) * t2674;
t2669 = sin(qJ(2));
t2735 = qJD(1) * t2669;
t2750 = (qJD(2) * t2735 - t2719) * t2663;
t2681 = qJDD(3) + t2750;
t2724 = t2663 * t2674;
t2717 = qJD(1) * t2724;
t2710 = -qJD(3) + t2717;
t2709 = t2710 ^ 2;
t2665 = cos(pkin(6));
t2657 = qJD(1) * t2665 + qJD(2);
t2668 = sin(qJ(3));
t2673 = cos(qJ(3));
t2725 = t2663 * t2669;
t2718 = qJD(1) * t2725;
t2630 = -t2673 * t2657 + t2668 * t2718;
t2628 = qJD(4) + t2630;
t2625 = qJD(6) + t2628;
t2749 = qJD(6) + t2625;
t2720 = qJDD(1) * t2663;
t2639 = qJD(2) * t2717 + t2669 * t2720;
t2656 = t2665 * qJDD(1) + qJDD(2);
t2688 = t2673 * t2639 + t2668 * t2656;
t2604 = -t2630 * qJD(3) + t2688;
t2586 = t2630 * t2710 + t2604;
t2632 = t2657 * t2668 + t2673 * t2718;
t2667 = sin(qJ(4));
t2672 = cos(qJ(4));
t2615 = t2632 * t2667 + t2672 * t2710;
t2616 = t2672 * t2632 - t2667 * t2710;
t2662 = sin(pkin(12));
t2664 = cos(pkin(12));
t2592 = t2664 * t2615 + t2616 * t2662;
t2594 = -t2615 * t2662 + t2616 * t2664;
t2666 = sin(qJ(6));
t2671 = cos(qJ(6));
t2554 = t2671 * t2592 + t2594 * t2666;
t2748 = t2554 ^ 2;
t2556 = -t2592 * t2666 + t2594 * t2671;
t2747 = t2556 ^ 2;
t2746 = t2592 ^ 2;
t2745 = t2594 ^ 2;
t2744 = t2615 ^ 2;
t2743 = t2616 ^ 2;
t2742 = t2625 ^ 2;
t2741 = t2628 ^ 2;
t2740 = t2630 ^ 2;
t2739 = t2632 ^ 2;
t2738 = t2657 ^ 2;
t2737 = -2 * qJD(5);
t2736 = t2665 * g(3);
t2734 = qJD(1) * t2674;
t2733 = t2554 * t2556;
t2732 = t2592 * t2594;
t2731 = t2594 * t2628;
t2730 = t2615 * t2616;
t2729 = t2628 * t2592;
t2728 = t2628 * t2615;
t2727 = t2630 * t2632;
t2676 = qJD(1) ^ 2;
t2726 = t2663 ^ 2 * t2676;
t2723 = qJD(4) - t2628;
t2722 = qJD(6) - t2625;
t2638 = (-pkin(2) * t2674 - pkin(9) * t2669) * t2663 * qJD(1);
t2670 = sin(qJ(1));
t2675 = cos(qJ(1));
t2651 = -g(1) * t2675 - g(2) * t2670;
t2635 = -pkin(1) * t2676 + pkin(8) * t2720 + t2651;
t2650 = t2670 * g(1) - t2675 * g(2);
t2680 = t2676 * t2663 * pkin(8) + qJDD(1) * pkin(1) + t2650;
t2679 = t2665 * t2680;
t2721 = t2674 * t2635 + t2669 * t2679;
t2580 = -pkin(2) * t2738 + pkin(9) * t2656 + (-g(3) * t2669 + t2638 * t2734) * t2663 + t2721;
t2677 = -t2639 * pkin(9) - t2736 + (-t2657 * pkin(9) * t2734 + (-t2719 + (qJD(2) + t2657) * t2735) * pkin(2) - t2680) * t2663;
t2546 = t2673 * t2580 + t2668 * t2677;
t2609 = pkin(3) * t2630 - pkin(10) * t2632;
t2526 = -pkin(3) * t2709 + pkin(10) * t2681 - t2630 * t2609 + t2546;
t2713 = t2669 * t2635 - t2674 * t2679;
t2579 = -t2656 * pkin(2) - t2738 * pkin(9) + (g(3) * t2674 + t2638 * t2735) * t2663 + t2713;
t2712 = t2668 * t2639 - t2673 * t2656;
t2584 = (0.2e1 * qJD(3) - t2717) * t2632 + t2712;
t2529 = t2584 * pkin(3) - pkin(10) * t2586 + t2579;
t2493 = t2672 * t2526 + t2667 * t2529;
t2492 = -t2526 * t2667 + t2672 * t2529;
t2603 = t2632 * qJD(3) + qJDD(4) + t2712;
t2559 = t2603 - t2730;
t2678 = -t2672 * t2604 - t2667 * t2681;
t2566 = -t2615 * qJD(4) - t2678;
t2472 = (-t2566 - t2728) * qJ(5) + t2559 * pkin(4) + t2492;
t2599 = pkin(4) * t2628 - qJ(5) * t2616;
t2714 = t2604 * t2667 - t2672 * t2681;
t2687 = -qJD(4) * t2616 - t2714;
t2481 = -pkin(4) * t2744 + qJ(5) * t2687 - t2628 * t2599 + t2493;
t2442 = t2662 * t2472 + t2664 * t2481 + t2592 * t2737;
t2534 = t2664 * t2566 + t2662 * t2687;
t2715 = t2566 * t2662 - t2664 * t2687;
t2716 = -t2534 * t2666 - t2671 * t2715;
t2519 = -t2534 - t2729;
t2545 = -t2580 * t2668 + t2673 * t2677;
t2539 = t2603 - t2732;
t2711 = t2657 * t2717;
t2441 = t2664 * t2472 - t2481 * t2662 + t2594 * t2737;
t2437 = pkin(5) * t2539 + pkin(11) * t2519 + t2441;
t2571 = pkin(5) * t2628 - pkin(11) * t2594;
t2438 = -pkin(5) * t2746 - pkin(11) * t2715 - t2628 * t2571 + t2442;
t2415 = t2437 * t2671 - t2438 * t2666;
t2416 = t2437 * t2666 + t2438 * t2671;
t2401 = t2415 * t2671 + t2416 * t2666;
t2402 = -t2415 * t2666 + t2416 * t2671;
t2393 = t2401 * t2664 + t2402 * t2662;
t2394 = -t2401 * t2662 + t2402 * t2664;
t2388 = -t2393 * t2667 + t2394 * t2672;
t2525 = -t2681 * pkin(3) - t2709 * pkin(10) + t2609 * t2632 - t2545;
t2494 = -t2687 * pkin(4) - t2744 * qJ(5) + t2599 * t2616 + qJDD(5) + t2525;
t2465 = pkin(5) * t2715 - pkin(11) * t2746 + t2571 * t2594 + t2494;
t2386 = t2388 * t2673 + t2465 * t2668;
t2387 = t2393 * t2672 + t2394 * t2667;
t2708 = t2386 * t2669 - t2387 * t2674;
t2421 = t2441 * t2664 + t2442 * t2662;
t2422 = -t2441 * t2662 + t2442 * t2664;
t2408 = -t2421 * t2667 + t2422 * t2672;
t2404 = t2408 * t2673 + t2494 * t2668;
t2407 = t2421 * t2672 + t2422 * t2667;
t2707 = t2404 * t2669 - t2407 * t2674;
t2474 = -t2556 * t2722 + t2716;
t2683 = -t2671 * t2534 + t2666 * t2715;
t2476 = t2554 * t2722 + t2683;
t2443 = t2474 * t2666 + t2476 * t2671;
t2444 = t2474 * t2671 - t2476 * t2666;
t2423 = t2443 * t2664 + t2444 * t2662;
t2424 = -t2443 * t2662 + t2444 * t2664;
t2411 = -t2423 * t2667 + t2424 * t2672;
t2495 = -t2747 - t2748;
t2406 = t2411 * t2673 + t2495 * t2668;
t2410 = t2423 * t2672 + t2424 * t2667;
t2706 = t2406 * t2669 - t2410 * t2674;
t2682 = -qJDD(6) - t2603;
t2507 = -t2682 - t2733;
t2511 = -t2742 - t2748;
t2482 = t2507 * t2671 + t2511 * t2666;
t2483 = -t2507 * t2666 + t2511 * t2671;
t2447 = t2482 * t2664 + t2483 * t2662;
t2448 = -t2482 * t2662 + t2483 * t2664;
t2430 = -t2447 * t2667 + t2448 * t2672;
t2473 = t2556 * t2749 - t2716;
t2420 = t2430 * t2673 + t2473 * t2668;
t2429 = t2447 * t2672 + t2448 * t2667;
t2705 = t2420 * t2669 - t2429 * t2674;
t2508 = t2682 - t2733;
t2541 = -t2742 - t2747;
t2490 = t2508 * t2666 + t2541 * t2671;
t2491 = t2508 * t2671 - t2541 * t2666;
t2455 = t2490 * t2664 + t2491 * t2662;
t2456 = -t2490 * t2662 + t2491 * t2664;
t2436 = -t2455 * t2667 + t2456 * t2672;
t2475 = -t2554 * t2749 - t2683;
t2426 = t2436 * t2673 + t2475 * t2668;
t2435 = t2455 * t2672 + t2456 * t2667;
t2704 = t2426 * t2669 - t2435 * t2674;
t2517 = -t2715 + t2731;
t2486 = t2517 * t2662 + t2519 * t2664;
t2487 = t2517 * t2664 - t2519 * t2662;
t2452 = -t2486 * t2667 + t2487 * t2672;
t2531 = -t2745 - t2746;
t2446 = t2452 * t2673 + t2531 * t2668;
t2451 = t2486 * t2672 + t2487 * t2667;
t2703 = t2446 * t2669 - t2451 * t2674;
t2460 = -t2492 * t2667 + t2493 * t2672;
t2450 = t2460 * t2673 + t2525 * t2668;
t2459 = t2492 * t2672 + t2493 * t2667;
t2702 = t2450 * t2669 - t2459 * t2674;
t2547 = -t2741 - t2746;
t2503 = t2539 * t2664 + t2547 * t2662;
t2504 = -t2539 * t2662 + t2547 * t2664;
t2479 = -t2503 * t2667 + t2504 * t2672;
t2516 = t2715 + t2731;
t2458 = t2479 * t2673 + t2516 * t2668;
t2478 = t2503 * t2672 + t2504 * t2667;
t2701 = t2458 * t2669 - t2478 * t2674;
t2540 = -t2603 - t2732;
t2561 = -t2741 - t2745;
t2514 = t2540 * t2662 + t2561 * t2664;
t2515 = t2540 * t2664 - t2561 * t2662;
t2485 = -t2514 * t2667 + t2515 * t2672;
t2518 = t2534 - t2729;
t2464 = t2485 * t2673 + t2518 * t2668;
t2484 = t2514 * t2672 + t2515 * t2667;
t2700 = t2464 * t2669 - t2484 * t2674;
t2549 = -t2616 * t2723 - t2714;
t2551 = t2615 * t2723 + t2678;
t2513 = t2549 * t2672 - t2551 * t2667;
t2567 = -t2743 - t2744;
t2498 = t2513 * t2673 + t2567 * t2668;
t2512 = t2549 * t2667 + t2551 * t2672;
t2699 = t2498 * t2669 - t2512 * t2674;
t2573 = -t2741 - t2744;
t2536 = -t2559 * t2667 + t2573 * t2672;
t2548 = (qJD(4) + t2628) * t2616 + t2714;
t2502 = t2536 * t2673 + t2548 * t2668;
t2535 = t2559 * t2672 + t2573 * t2667;
t2698 = t2502 * t2669 - t2535 * t2674;
t2560 = -t2603 - t2730;
t2591 = -t2741 - t2743;
t2538 = t2560 * t2672 - t2591 * t2667;
t2550 = t2566 - t2728;
t2506 = t2538 * t2673 + t2550 * t2668;
t2537 = t2560 * t2667 + t2591 * t2672;
t2697 = t2506 * t2669 - t2537 * t2674;
t2510 = -t2545 * t2668 + t2546 * t2673;
t2696 = t2510 * t2669 - t2579 * t2674;
t2585 = -t2632 * t2717 - t2712;
t2587 = t2630 * t2717 - t2688;
t2553 = t2585 * t2673 - t2587 * t2668;
t2598 = -t2739 - t2740;
t2695 = t2553 * t2669 - t2598 * t2674;
t2601 = t2681 - t2727;
t2605 = -t2709 - t2740;
t2564 = -t2601 * t2668 + t2605 * t2673;
t2694 = t2564 * t2669 - t2584 * t2674;
t2600 = -t2727 - t2681;
t2611 = -t2739 - t2709;
t2570 = t2600 * t2673 - t2611 * t2668;
t2693 = t2570 * t2669 - t2586 * t2674;
t2606 = -g(3) * t2724 - t2713;
t2607 = -g(3) * t2725 + t2721;
t2692 = t2606 * t2674 + t2607 * t2669;
t2618 = t2711 - t2639;
t2642 = t2657 * t2718;
t2619 = t2642 - t2750;
t2691 = t2618 * t2674 + t2619 * t2669;
t2660 = t2669 ^ 2;
t2627 = -t2660 * t2726 - t2738;
t2649 = t2674 * t2669 * t2726;
t2637 = t2649 - t2656;
t2690 = t2627 * t2674 + t2637 * t2669;
t2636 = t2649 + t2656;
t2661 = t2674 ^ 2;
t2640 = -t2661 * t2726 - t2738;
t2689 = t2636 * t2674 + t2640 * t2669;
t2648 = -qJDD(1) * t2670 - t2675 * t2676;
t2647 = qJDD(1) * t2675 - t2670 * t2676;
t2641 = (-t2660 - t2661) * t2726;
t2622 = -t2663 * t2680 - t2736;
t2620 = t2642 + t2750;
t2617 = t2711 + t2639;
t2613 = -t2636 * t2669 + t2640 * t2674;
t2608 = -t2627 * t2669 + t2637 * t2674;
t2597 = -t2618 * t2669 + t2619 * t2674;
t2596 = -t2620 * t2663 + t2665 * t2689;
t2595 = t2620 * t2665 + t2663 * t2689;
t2582 = -t2617 * t2663 + t2665 * t2690;
t2581 = t2617 * t2665 + t2663 * t2690;
t2578 = -t2641 * t2663 + t2665 * t2691;
t2577 = t2641 * t2665 + t2663 * t2691;
t2569 = t2600 * t2668 + t2611 * t2673;
t2568 = -t2606 * t2669 + t2607 * t2674;
t2563 = t2601 * t2673 + t2605 * t2668;
t2558 = -t2622 * t2663 + t2665 * t2692;
t2557 = t2622 * t2665 + t2663 * t2692;
t2552 = t2585 * t2668 + t2587 * t2673;
t2543 = t2570 * t2674 + t2586 * t2669;
t2542 = t2564 * t2674 + t2584 * t2669;
t2532 = t2553 * t2674 + t2598 * t2669;
t2523 = -t2569 * t2663 + t2665 * t2693;
t2522 = t2569 * t2665 + t2663 * t2693;
t2521 = -t2563 * t2663 + t2665 * t2694;
t2520 = t2563 * t2665 + t2663 * t2694;
t2509 = t2545 * t2673 + t2546 * t2668;
t2505 = t2538 * t2668 - t2550 * t2673;
t2501 = t2536 * t2668 - t2548 * t2673;
t2500 = -t2552 * t2663 + t2665 * t2695;
t2499 = t2552 * t2665 + t2663 * t2695;
t2497 = t2513 * t2668 - t2567 * t2673;
t2496 = t2510 * t2674 + t2579 * t2669;
t2489 = t2506 * t2674 + t2537 * t2669;
t2488 = t2502 * t2674 + t2535 * t2669;
t2477 = t2498 * t2674 + t2512 * t2669;
t2469 = -t2509 * t2663 + t2665 * t2696;
t2468 = t2509 * t2665 + t2663 * t2696;
t2467 = -t2505 * t2663 + t2665 * t2697;
t2466 = t2505 * t2665 + t2663 * t2697;
t2463 = t2485 * t2668 - t2518 * t2673;
t2462 = -t2501 * t2663 + t2665 * t2698;
t2461 = t2501 * t2665 + t2663 * t2698;
t2457 = t2479 * t2668 - t2516 * t2673;
t2454 = -t2497 * t2663 + t2665 * t2699;
t2453 = t2497 * t2665 + t2663 * t2699;
t2449 = t2460 * t2668 - t2525 * t2673;
t2445 = t2452 * t2668 - t2531 * t2673;
t2440 = t2464 * t2674 + t2484 * t2669;
t2439 = t2458 * t2674 + t2478 * t2669;
t2434 = t2450 * t2674 + t2459 * t2669;
t2433 = -t2463 * t2663 + t2665 * t2700;
t2432 = t2463 * t2665 + t2663 * t2700;
t2431 = t2446 * t2674 + t2451 * t2669;
t2428 = -t2457 * t2663 + t2665 * t2701;
t2427 = t2457 * t2665 + t2663 * t2701;
t2425 = t2436 * t2668 - t2475 * t2673;
t2419 = t2430 * t2668 - t2473 * t2673;
t2418 = -t2449 * t2663 + t2665 * t2702;
t2417 = t2449 * t2665 + t2663 * t2702;
t2414 = -t2445 * t2663 + t2665 * t2703;
t2413 = t2445 * t2665 + t2663 * t2703;
t2412 = t2426 * t2674 + t2435 * t2669;
t2409 = t2420 * t2674 + t2429 * t2669;
t2405 = t2411 * t2668 - t2495 * t2673;
t2403 = t2408 * t2668 - t2494 * t2673;
t2400 = -t2425 * t2663 + t2665 * t2704;
t2399 = t2425 * t2665 + t2663 * t2704;
t2398 = -t2419 * t2663 + t2665 * t2705;
t2397 = t2419 * t2665 + t2663 * t2705;
t2396 = t2406 * t2674 + t2410 * t2669;
t2395 = t2404 * t2674 + t2407 * t2669;
t2392 = -t2405 * t2663 + t2665 * t2706;
t2391 = t2405 * t2665 + t2663 * t2706;
t2390 = -t2403 * t2663 + t2665 * t2707;
t2389 = t2403 * t2665 + t2663 * t2707;
t2385 = t2388 * t2668 - t2465 * t2673;
t2384 = t2386 * t2674 + t2387 * t2669;
t2383 = -t2385 * t2663 + t2665 * t2708;
t2382 = t2385 * t2665 + t2663 * t2708;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2648, -t2647, 0, -t2650 * t2670 + t2651 * t2675, 0, 0, 0, 0, 0, 0, -t2596 * t2670 + t2613 * t2675, -t2582 * t2670 + t2608 * t2675, -t2578 * t2670 + t2597 * t2675, -t2558 * t2670 + t2568 * t2675, 0, 0, 0, 0, 0, 0, -t2521 * t2670 + t2542 * t2675, -t2523 * t2670 + t2543 * t2675, -t2500 * t2670 + t2532 * t2675, -t2469 * t2670 + t2496 * t2675, 0, 0, 0, 0, 0, 0, -t2462 * t2670 + t2488 * t2675, -t2467 * t2670 + t2489 * t2675, -t2454 * t2670 + t2477 * t2675, -t2418 * t2670 + t2434 * t2675, 0, 0, 0, 0, 0, 0, -t2428 * t2670 + t2439 * t2675, -t2433 * t2670 + t2440 * t2675, -t2414 * t2670 + t2431 * t2675, -t2390 * t2670 + t2395 * t2675, 0, 0, 0, 0, 0, 0, -t2398 * t2670 + t2409 * t2675, -t2400 * t2670 + t2412 * t2675, -t2392 * t2670 + t2396 * t2675, -t2383 * t2670 + t2384 * t2675; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2647, t2648, 0, t2650 * t2675 + t2651 * t2670, 0, 0, 0, 0, 0, 0, t2596 * t2675 + t2613 * t2670, t2582 * t2675 + t2608 * t2670, t2578 * t2675 + t2597 * t2670, t2558 * t2675 + t2568 * t2670, 0, 0, 0, 0, 0, 0, t2521 * t2675 + t2542 * t2670, t2523 * t2675 + t2543 * t2670, t2500 * t2675 + t2532 * t2670, t2469 * t2675 + t2496 * t2670, 0, 0, 0, 0, 0, 0, t2462 * t2675 + t2488 * t2670, t2467 * t2675 + t2489 * t2670, t2454 * t2675 + t2477 * t2670, t2418 * t2675 + t2434 * t2670, 0, 0, 0, 0, 0, 0, t2428 * t2675 + t2439 * t2670, t2433 * t2675 + t2440 * t2670, t2414 * t2675 + t2431 * t2670, t2390 * t2675 + t2395 * t2670, 0, 0, 0, 0, 0, 0, t2398 * t2675 + t2409 * t2670, t2400 * t2675 + t2412 * t2670, t2392 * t2675 + t2396 * t2670, t2383 * t2675 + t2384 * t2670; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2595, t2581, t2577, t2557, 0, 0, 0, 0, 0, 0, t2520, t2522, t2499, t2468, 0, 0, 0, 0, 0, 0, t2461, t2466, t2453, t2417, 0, 0, 0, 0, 0, 0, t2427, t2432, t2413, t2389, 0, 0, 0, 0, 0, 0, t2397, t2399, t2391, t2382; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2676, -qJDD(1), 0, t2651, 0, 0, 0, 0, 0, 0, t2613, t2608, t2597, t2568, 0, 0, 0, 0, 0, 0, t2542, t2543, t2532, t2496, 0, 0, 0, 0, 0, 0, t2488, t2489, t2477, t2434, 0, 0, 0, 0, 0, 0, t2439, t2440, t2431, t2395, 0, 0, 0, 0, 0, 0, t2409, t2412, t2396, t2384; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2676, 0, t2650, 0, 0, 0, 0, 0, 0, t2596, t2582, t2578, t2558, 0, 0, 0, 0, 0, 0, t2521, t2523, t2500, t2469, 0, 0, 0, 0, 0, 0, t2462, t2467, t2454, t2418, 0, 0, 0, 0, 0, 0, t2428, t2433, t2414, t2390, 0, 0, 0, 0, 0, 0, t2398, t2400, t2392, t2383; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2595, t2581, t2577, t2557, 0, 0, 0, 0, 0, 0, t2520, t2522, t2499, t2468, 0, 0, 0, 0, 0, 0, t2461, t2466, t2453, t2417, 0, 0, 0, 0, 0, 0, t2427, t2432, t2413, t2389, 0, 0, 0, 0, 0, 0, t2397, t2399, t2391, t2382; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2640, t2637, t2619, t2607, 0, 0, 0, 0, 0, 0, t2564, t2570, t2553, t2510, 0, 0, 0, 0, 0, 0, t2502, t2506, t2498, t2450, 0, 0, 0, 0, 0, 0, t2458, t2464, t2446, t2404, 0, 0, 0, 0, 0, 0, t2420, t2426, t2406, t2386; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2636, t2627, t2618, t2606, 0, 0, 0, 0, 0, 0, -t2584, -t2586, -t2598, -t2579, 0, 0, 0, 0, 0, 0, -t2535, -t2537, -t2512, -t2459, 0, 0, 0, 0, 0, 0, -t2478, -t2484, -t2451, -t2407, 0, 0, 0, 0, 0, 0, -t2429, -t2435, -t2410, -t2387; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2620, t2617, t2641, t2622, 0, 0, 0, 0, 0, 0, t2563, t2569, t2552, t2509, 0, 0, 0, 0, 0, 0, t2501, t2505, t2497, t2449, 0, 0, 0, 0, 0, 0, t2457, t2463, t2445, t2403, 0, 0, 0, 0, 0, 0, t2419, t2425, t2405, t2385; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2605, t2600, t2585, t2546, 0, 0, 0, 0, 0, 0, t2536, t2538, t2513, t2460, 0, 0, 0, 0, 0, 0, t2479, t2485, t2452, t2408, 0, 0, 0, 0, 0, 0, t2430, t2436, t2411, t2388; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2601, t2611, t2587, t2545, 0, 0, 0, 0, 0, 0, -t2548, -t2550, -t2567, -t2525, 0, 0, 0, 0, 0, 0, -t2516, -t2518, -t2531, -t2494, 0, 0, 0, 0, 0, 0, -t2473, -t2475, -t2495, -t2465; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2584, t2586, t2598, t2579, 0, 0, 0, 0, 0, 0, t2535, t2537, t2512, t2459, 0, 0, 0, 0, 0, 0, t2478, t2484, t2451, t2407, 0, 0, 0, 0, 0, 0, t2429, t2435, t2410, t2387; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2573, t2560, t2549, t2493, 0, 0, 0, 0, 0, 0, t2504, t2515, t2487, t2422, 0, 0, 0, 0, 0, 0, t2448, t2456, t2424, t2394; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2559, t2591, t2551, t2492, 0, 0, 0, 0, 0, 0, t2503, t2514, t2486, t2421, 0, 0, 0, 0, 0, 0, t2447, t2455, t2423, t2393; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2548, t2550, t2567, t2525, 0, 0, 0, 0, 0, 0, t2516, t2518, t2531, t2494, 0, 0, 0, 0, 0, 0, t2473, t2475, t2495, t2465; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2547, t2540, t2517, t2442, 0, 0, 0, 0, 0, 0, t2483, t2491, t2444, t2402; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2539, t2561, t2519, t2441, 0, 0, 0, 0, 0, 0, t2482, t2490, t2443, t2401; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2516, t2518, t2531, t2494, 0, 0, 0, 0, 0, 0, t2473, t2475, t2495, t2465; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2511, t2508, t2474, t2416; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2507, t2541, t2476, t2415; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2473, t2475, t2495, t2465;];
f_new_reg  = t1;