% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPRRRP11
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d4,d5,theta2]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 02:13
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPRRRP11_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP11_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP11_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRRP11_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRP11_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RPRRRP11_invdynf_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 02:12:59
% EndTime: 2019-05-06 02:13:14
% DurationCPUTime: 16.17s
% Computational Cost: add. (156196->369), mult. (487647->580), div. (0->0), fcn. (419532->14), ass. (0->311)
t2725 = sin(pkin(12));
t2727 = sin(pkin(6));
t2728 = cos(pkin(12));
t2737 = cos(qJ(3));
t2733 = sin(qJ(3));
t2726 = sin(pkin(7));
t2730 = cos(pkin(6));
t2817 = t2726 * t2730;
t2805 = t2733 * t2817;
t2729 = cos(pkin(7));
t2813 = t2729 * t2733;
t2686 = (t2805 + (t2725 * t2737 + t2728 * t2813) * t2727) * qJD(1);
t2814 = t2728 * t2729;
t2846 = t2727 * (-t2725 * t2733 + t2737 * t2814) + t2737 * t2817;
t2843 = t2846 * qJDD(1);
t2746 = qJD(3) * t2686 + qJDD(4) - t2843;
t2755 = (t2727 * t2814 + t2817) * pkin(9);
t2819 = t2725 * t2727;
t2806 = t2726 * t2819;
t2816 = t2727 * t2728;
t2745 = -(-pkin(2) * t2816 - pkin(9) * t2806) * t2819 + t2730 * t2755;
t2734 = sin(qJ(1));
t2738 = cos(qJ(1));
t2717 = t2734 * g(1) - g(2) * t2738;
t2739 = qJD(1) ^ 2;
t2815 = t2727 * t2739;
t2757 = -qJ(2) * t2815 - t2717;
t2752 = qJDD(1) * pkin(1) - t2757;
t2750 = t2730 * t2752;
t2747 = (-t2727 * g(3) + t2750) * t2728;
t2718 = -t2738 * g(1) - t2734 * g(2);
t2758 = t2739 * pkin(1) - t2718;
t2761 = -pkin(9) * t2725 * t2726 - pkin(2) * t2728;
t2798 = -t2730 * g(3) + qJDD(2);
t2810 = qJDD(1) * t2730;
t2808 = pkin(2) * t2810;
t2811 = qJDD(1) * t2727;
t2827 = pkin(9) * t2729;
t2828 = pkin(2) * t2730;
t2830 = -2 * qJD(2);
t2721 = t2725 ^ 2;
t2723 = t2728 ^ 2;
t2841 = -t2721 - t2723;
t2845 = t2729 * (t2808 + t2747 + ((-qJ(2) - t2827) * t2811 + t2758) * t2725 + (qJD(1) * t2745 + t2819 * t2830) * qJD(1)) + t2726 * (((-pkin(1) + t2761) * qJDD(1) + t2757) * t2727 + (t2725 * t2828 + (t2727 * t2729 * t2841 - t2728 * t2817) * pkin(9)) * t2815 + t2798);
t2684 = t2846 * qJD(1);
t2754 = qJD(4) - t2684;
t2753 = t2754 ^ 2;
t2842 = 2 * qJD(2);
t2807 = qJD(1) * t2816;
t2695 = qJD(1) * t2729 * t2730 - t2726 * t2807 + qJD(3);
t2732 = sin(qJ(4));
t2736 = cos(qJ(4));
t2677 = t2686 * t2736 + t2695 * t2732;
t2799 = t2728 * t2811;
t2800 = t2725 * t2811;
t2667 = t2684 * qJD(3) + qJDD(1) * t2805 + t2737 * t2800 + t2799 * t2813;
t2694 = -t2726 * t2799 + t2729 * t2810 + qJDD(3);
t2795 = t2732 * t2667 - t2736 * t2694;
t2756 = t2677 * qJD(4) + qJDD(5) + t2795;
t2731 = sin(qJ(5));
t2735 = cos(qJ(5));
t2654 = t2677 * t2731 - t2735 * t2754;
t2656 = t2735 * t2677 + t2731 * t2754;
t2825 = t2654 * t2656;
t2608 = t2756 - t2825;
t2675 = t2686 * t2732 - t2736 * t2695;
t2766 = -t2736 * t2667 - t2732 * t2694;
t2637 = -t2675 * qJD(4) - t2766;
t2840 = t2675 * t2754 - t2637;
t2838 = t2654 ^ 2;
t2837 = t2656 ^ 2;
t2672 = qJD(5) + t2675;
t2836 = t2672 ^ 2;
t2835 = t2675 ^ 2;
t2834 = t2677 ^ 2;
t2833 = t2684 ^ 2;
t2832 = t2686 ^ 2;
t2831 = t2695 ^ 2;
t2724 = t2730 ^ 2;
t2829 = -2 * qJD(6);
t2824 = t2672 * t2654;
t2823 = t2675 * t2677;
t2822 = t2684 * t2686;
t2821 = t2684 * t2695;
t2722 = t2727 ^ 2;
t2820 = t2722 * t2739;
t2812 = qJD(5) - t2672;
t2751 = qJ(2) * t2811 - t2758;
t2674 = -g(3) * t2819 + t2725 * t2750 + t2728 * t2751 + t2807 * t2842;
t2809 = t2725 * t2827;
t2643 = qJDD(1) * t2755 + (-t2724 * pkin(2) + (t2730 * t2809 + t2761 * t2816) * t2727) * t2739 + t2674;
t2605 = t2737 * t2643 + t2733 * t2845;
t2664 = -pkin(3) * t2684 - pkin(10) * t2686;
t2593 = -pkin(3) * t2831 + pkin(10) * t2694 + t2664 * t2684 + t2605;
t2687 = -t2727 * t2752 + t2798;
t2626 = -t2726 * (-g(3) * t2816 - t2725 * t2751 + t2728 * t2750 + t2808) + t2729 * (-pkin(2) * t2799 + t2687) + (t2806 * t2842 + (-t2726 * t2745 + t2729 * ((-t2727 * t2809 + t2828) * t2819 - t2755 * t2816)) * qJD(1)) * qJD(1);
t2646 = (qJD(3) + t2695) * t2686 - t2843;
t2796 = -t2667 - t2821;
t2740 = pkin(3) * t2646 + pkin(10) * t2796 + t2626;
t2567 = t2736 * t2593 + t2732 * t2740;
t2645 = pkin(4) * t2675 - pkin(11) * t2677;
t2556 = -t2753 * pkin(4) + pkin(11) * t2746 - t2675 * t2645 + t2567;
t2793 = t2733 * t2643 - t2737 * t2845;
t2592 = -t2694 * pkin(3) - t2831 * pkin(10) + t2686 * t2664 + t2793;
t2621 = (0.2e1 * qJD(4) - t2684) * t2677 + t2795;
t2565 = t2621 * pkin(4) + pkin(11) * t2840 + t2592;
t2541 = t2735 * t2556 + t2731 * t2565;
t2802 = t2730 * t2815;
t2540 = -t2731 * t2556 + t2735 * t2565;
t2566 = -t2593 * t2732 + t2736 * t2740;
t2797 = t2637 * t2731 - t2735 * t2746;
t2744 = -t2735 * t2637 - t2731 * t2746;
t2743 = -t2654 * qJD(5) - t2744;
t2525 = t2656 * t2829 + t2540 + (-t2743 - t2824) * qJ(6) + t2608 * pkin(5);
t2633 = pkin(5) * t2672 - qJ(6) * t2656;
t2759 = -qJD(5) * t2656 - t2797;
t2528 = -t2672 * t2633 + t2759 * qJ(6) + (-pkin(5) * t2654 + t2829) * t2654 + t2541;
t2513 = -t2525 * t2731 + t2528 * t2735;
t2555 = -t2746 * pkin(4) - t2753 * pkin(11) + t2645 * t2677 - t2566;
t2545 = -pkin(5) * t2759 - qJ(6) * t2838 + t2633 * t2656 + qJDD(6) + t2555;
t2505 = t2513 * t2732 - t2545 * t2736;
t2506 = t2513 * t2736 + t2545 * t2732;
t2512 = t2525 * t2735 + t2528 * t2731;
t2790 = t2506 * t2733 - t2512 * t2737;
t2490 = -t2505 * t2726 + t2729 * t2790;
t2495 = t2506 * t2737 + t2512 * t2733;
t2792 = t2490 * t2728 + t2495 * t2725;
t2519 = -t2540 * t2731 + t2541 * t2735;
t2515 = t2519 * t2732 - t2555 * t2736;
t2516 = t2519 * t2736 + t2555 * t2732;
t2518 = t2540 * t2735 + t2541 * t2731;
t2789 = t2516 * t2733 - t2518 * t2737;
t2492 = -t2515 * t2726 + t2729 * t2789;
t2502 = t2516 * t2737 + t2518 * t2733;
t2791 = t2492 * t2728 + t2502 * t2725;
t2543 = t2566 * t2736 + t2567 * t2732;
t2544 = -t2566 * t2732 + t2567 * t2736;
t2784 = t2544 * t2733 - t2592 * t2737;
t2521 = -t2543 * t2726 + t2729 * t2784;
t2537 = t2544 * t2737 + t2592 * t2733;
t2788 = t2521 * t2728 + t2537 * t2725;
t2598 = -t2656 * t2812 - t2797;
t2600 = t2654 * t2812 + t2744;
t2569 = t2598 * t2735 - t2600 * t2731;
t2617 = -t2837 - t2838;
t2552 = t2569 * t2732 - t2617 * t2736;
t2553 = t2569 * t2736 + t2617 * t2732;
t2568 = t2598 * t2731 + t2600 * t2735;
t2783 = t2553 * t2733 - t2568 * t2737;
t2524 = -t2552 * t2726 + t2729 * t2783;
t2542 = t2553 * t2737 + t2568 * t2733;
t2787 = t2524 * t2728 + t2542 * t2725;
t2620 = -t2836 - t2838;
t2585 = -t2608 * t2731 + t2620 * t2735;
t2597 = (qJD(5) + t2672) * t2656 + t2797;
t2559 = t2585 * t2732 - t2597 * t2736;
t2560 = t2585 * t2736 + t2597 * t2732;
t2584 = t2608 * t2735 + t2620 * t2731;
t2781 = t2560 * t2733 - t2584 * t2737;
t2530 = -t2559 * t2726 + t2729 * t2781;
t2547 = t2560 * t2737 + t2584 * t2733;
t2786 = t2530 * t2728 + t2547 * t2725;
t2609 = -t2756 - t2825;
t2627 = -t2836 - t2837;
t2589 = t2609 * t2735 - t2627 * t2731;
t2599 = t2743 - t2824;
t2561 = t2589 * t2732 - t2599 * t2736;
t2562 = t2589 * t2736 + t2599 * t2732;
t2588 = t2609 * t2731 + t2627 * t2735;
t2780 = t2562 * t2733 - t2588 * t2737;
t2532 = -t2561 * t2726 + t2729 * t2780;
t2549 = t2562 * t2737 + t2588 * t2733;
t2785 = t2532 * t2728 + t2549 * t2725;
t2622 = -t2677 * t2684 - t2795;
t2624 = t2675 * t2684 + t2766;
t2594 = t2622 * t2732 + t2624 * t2736;
t2595 = t2622 * t2736 - t2624 * t2732;
t2631 = -t2834 - t2835;
t2776 = t2595 * t2733 - t2631 * t2737;
t2558 = -t2594 * t2726 + t2729 * t2776;
t2583 = t2595 * t2737 + t2631 * t2733;
t2782 = t2558 * t2728 + t2583 * t2725;
t2775 = t2605 * t2733 - t2737 * t2793;
t2571 = -t2626 * t2726 + t2729 * t2775;
t2582 = t2605 * t2737 + t2733 * t2793;
t2779 = t2571 * t2728 + t2582 * t2725;
t2628 = t2746 - t2823;
t2638 = -t2753 - t2835;
t2610 = t2628 * t2736 + t2638 * t2732;
t2611 = -t2628 * t2732 + t2638 * t2736;
t2773 = t2611 * t2733 - t2621 * t2737;
t2575 = -t2610 * t2726 + t2729 * t2773;
t2587 = t2611 * t2737 + t2621 * t2733;
t2778 = t2575 * t2728 + t2587 * t2725;
t2629 = -t2823 - t2746;
t2642 = -t2834 - t2753;
t2613 = t2629 * t2732 + t2642 * t2736;
t2614 = t2629 * t2736 - t2642 * t2732;
t2772 = t2614 * t2733 + t2737 * t2840;
t2577 = -t2613 * t2726 + t2729 * t2772;
t2590 = t2614 * t2737 - t2733 * t2840;
t2777 = t2577 * t2728 + t2590 * t2725;
t2653 = -t2832 - t2833;
t2647 = (-qJD(3) + t2695) * t2686 + t2843;
t2649 = -t2667 + t2821;
t2769 = t2647 * t2733 + t2649 * t2737;
t2607 = -t2653 * t2726 + t2729 * t2769;
t2625 = t2647 * t2737 - t2649 * t2733;
t2774 = t2607 * t2728 + t2625 * t2725;
t2658 = -t2831 - t2833;
t2660 = t2694 + t2822;
t2768 = t2658 * t2733 + t2660 * t2737;
t2616 = -t2646 * t2726 + t2729 * t2768;
t2630 = t2658 * t2737 - t2660 * t2733;
t2771 = t2616 * t2728 + t2630 * t2725;
t2659 = -t2694 + t2822;
t2661 = -t2831 - t2832;
t2767 = t2659 * t2733 + t2661 * t2737;
t2619 = t2726 * t2796 + t2729 * t2767;
t2632 = t2659 * t2737 - t2661 * t2733;
t2770 = t2619 * t2728 + t2632 * t2725;
t2673 = t2747 + ((-qJ(2) * qJDD(1) + qJD(1) * t2830) * t2727 + t2758) * t2725;
t2765 = t2673 * t2728 + t2674 * t2725;
t2710 = t2728 * t2802;
t2697 = t2710 - t2800;
t2709 = t2725 * t2802;
t2698 = t2709 + t2799;
t2764 = t2697 * t2728 + t2698 * t2725;
t2708 = t2728 * t2725 * t2820;
t2700 = t2708 + t2810;
t2704 = (-t2722 * t2723 - t2724) * t2739;
t2763 = t2700 * t2728 + t2704 * t2725;
t2701 = t2708 - t2810;
t2703 = (-t2721 * t2722 - t2724) * t2739;
t2762 = t2701 * t2725 + t2703 * t2728;
t2715 = -qJDD(1) * t2734 - t2738 * t2739;
t2714 = qJDD(1) * t2738 - t2734 * t2739;
t2702 = t2841 * t2820;
t2699 = t2709 - t2799;
t2696 = t2710 + t2800;
t2681 = t2701 * t2728 - t2703 * t2725;
t2680 = -t2700 * t2725 + t2704 * t2728;
t2678 = -t2697 * t2725 + t2698 * t2728;
t2671 = -t2696 * t2727 + t2730 * t2762;
t2670 = -t2699 * t2727 + t2730 * t2763;
t2669 = t2696 * t2730 + t2727 * t2762;
t2668 = t2699 * t2730 + t2727 * t2763;
t2666 = -t2702 * t2727 + t2730 * t2764;
t2665 = t2702 * t2730 + t2727 * t2764;
t2644 = -t2673 * t2725 + t2674 * t2728;
t2635 = -t2687 * t2727 + t2730 * t2765;
t2634 = t2687 * t2730 + t2727 * t2765;
t2618 = t2726 * t2767 - t2729 * t2796;
t2615 = t2646 * t2729 + t2726 * t2768;
t2606 = t2653 * t2729 + t2726 * t2769;
t2603 = -t2619 * t2725 + t2632 * t2728;
t2596 = -t2616 * t2725 + t2630 * t2728;
t2586 = -t2607 * t2725 + t2625 * t2728;
t2581 = -t2618 * t2727 + t2730 * t2770;
t2580 = t2618 * t2730 + t2727 * t2770;
t2579 = -t2615 * t2727 + t2730 * t2771;
t2578 = t2615 * t2730 + t2727 * t2771;
t2576 = t2613 * t2729 + t2726 * t2772;
t2574 = t2610 * t2729 + t2726 * t2773;
t2573 = -t2606 * t2727 + t2730 * t2774;
t2572 = t2606 * t2730 + t2727 * t2774;
t2570 = t2626 * t2729 + t2726 * t2775;
t2557 = t2594 * t2729 + t2726 * t2776;
t2551 = -t2577 * t2725 + t2590 * t2728;
t2550 = -t2575 * t2725 + t2587 * t2728;
t2548 = -t2571 * t2725 + t2582 * t2728;
t2546 = -t2558 * t2725 + t2583 * t2728;
t2539 = -t2576 * t2727 + t2730 * t2777;
t2538 = t2576 * t2730 + t2727 * t2777;
t2536 = -t2574 * t2727 + t2730 * t2778;
t2535 = t2574 * t2730 + t2727 * t2778;
t2534 = -t2570 * t2727 + t2730 * t2779;
t2533 = t2570 * t2730 + t2727 * t2779;
t2531 = t2561 * t2729 + t2726 * t2780;
t2529 = t2559 * t2729 + t2726 * t2781;
t2527 = -t2557 * t2727 + t2730 * t2782;
t2526 = t2557 * t2730 + t2727 * t2782;
t2523 = t2552 * t2729 + t2726 * t2783;
t2522 = -t2532 * t2725 + t2549 * t2728;
t2520 = t2543 * t2729 + t2726 * t2784;
t2517 = -t2530 * t2725 + t2547 * t2728;
t2514 = -t2524 * t2725 + t2542 * t2728;
t2511 = -t2521 * t2725 + t2537 * t2728;
t2510 = -t2531 * t2727 + t2730 * t2785;
t2509 = t2531 * t2730 + t2727 * t2785;
t2508 = -t2529 * t2727 + t2730 * t2786;
t2507 = t2529 * t2730 + t2727 * t2786;
t2504 = -t2523 * t2727 + t2730 * t2787;
t2503 = t2523 * t2730 + t2727 * t2787;
t2501 = -t2520 * t2727 + t2730 * t2788;
t2500 = t2520 * t2730 + t2727 * t2788;
t2499 = -t2510 * t2734 + t2522 * t2738;
t2498 = t2510 * t2738 + t2522 * t2734;
t2497 = -t2508 * t2734 + t2517 * t2738;
t2496 = t2508 * t2738 + t2517 * t2734;
t2494 = -t2504 * t2734 + t2514 * t2738;
t2493 = t2504 * t2738 + t2514 * t2734;
t2491 = t2515 * t2729 + t2726 * t2789;
t2489 = t2505 * t2729 + t2726 * t2790;
t2488 = -t2492 * t2725 + t2502 * t2728;
t2487 = -t2490 * t2725 + t2495 * t2728;
t2486 = -t2491 * t2727 + t2730 * t2791;
t2485 = t2491 * t2730 + t2727 * t2791;
t2484 = -t2489 * t2727 + t2730 * t2792;
t2483 = t2489 * t2730 + t2727 * t2792;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2715, -t2714, 0, -t2717 * t2734 + t2718 * t2738, 0, 0, 0, 0, 0, 0, -t2670 * t2734 + t2680 * t2738, -t2671 * t2734 + t2681 * t2738, -t2666 * t2734 + t2678 * t2738, -t2635 * t2734 + t2644 * t2738, 0, 0, 0, 0, 0, 0, -t2579 * t2734 + t2596 * t2738, -t2581 * t2734 + t2603 * t2738, -t2573 * t2734 + t2586 * t2738, -t2534 * t2734 + t2548 * t2738, 0, 0, 0, 0, 0, 0, -t2536 * t2734 + t2550 * t2738, -t2539 * t2734 + t2551 * t2738, -t2527 * t2734 + t2546 * t2738, -t2501 * t2734 + t2511 * t2738, 0, 0, 0, 0, 0, 0, t2497, t2499, t2494, -t2486 * t2734 + t2488 * t2738, 0, 0, 0, 0, 0, 0, t2497, t2499, t2494, -t2484 * t2734 + t2487 * t2738; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2714, t2715, 0, t2717 * t2738 + t2718 * t2734, 0, 0, 0, 0, 0, 0, t2670 * t2738 + t2680 * t2734, t2671 * t2738 + t2681 * t2734, t2666 * t2738 + t2678 * t2734, t2635 * t2738 + t2644 * t2734, 0, 0, 0, 0, 0, 0, t2579 * t2738 + t2596 * t2734, t2581 * t2738 + t2603 * t2734, t2573 * t2738 + t2586 * t2734, t2534 * t2738 + t2548 * t2734, 0, 0, 0, 0, 0, 0, t2536 * t2738 + t2550 * t2734, t2539 * t2738 + t2551 * t2734, t2527 * t2738 + t2546 * t2734, t2501 * t2738 + t2511 * t2734, 0, 0, 0, 0, 0, 0, t2496, t2498, t2493, t2486 * t2738 + t2488 * t2734, 0, 0, 0, 0, 0, 0, t2496, t2498, t2493, t2484 * t2738 + t2487 * t2734; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2668, t2669, t2665, t2634, 0, 0, 0, 0, 0, 0, t2578, t2580, t2572, t2533, 0, 0, 0, 0, 0, 0, t2535, t2538, t2526, t2500, 0, 0, 0, 0, 0, 0, t2507, t2509, t2503, t2485, 0, 0, 0, 0, 0, 0, t2507, t2509, t2503, t2483; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2739, -qJDD(1), 0, t2718, 0, 0, 0, 0, 0, 0, t2680, t2681, t2678, t2644, 0, 0, 0, 0, 0, 0, t2596, t2603, t2586, t2548, 0, 0, 0, 0, 0, 0, t2550, t2551, t2546, t2511, 0, 0, 0, 0, 0, 0, t2517, t2522, t2514, t2488, 0, 0, 0, 0, 0, 0, t2517, t2522, t2514, t2487; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2739, 0, t2717, 0, 0, 0, 0, 0, 0, t2670, t2671, t2666, t2635, 0, 0, 0, 0, 0, 0, t2579, t2581, t2573, t2534, 0, 0, 0, 0, 0, 0, t2536, t2539, t2527, t2501, 0, 0, 0, 0, 0, 0, t2508, t2510, t2504, t2486, 0, 0, 0, 0, 0, 0, t2508, t2510, t2504, t2484; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2668, t2669, t2665, t2634, 0, 0, 0, 0, 0, 0, t2578, t2580, t2572, t2533, 0, 0, 0, 0, 0, 0, t2535, t2538, t2526, t2500, 0, 0, 0, 0, 0, 0, t2507, t2509, t2503, t2485, 0, 0, 0, 0, 0, 0, t2507, t2509, t2503, t2483; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2704, t2701, t2698, t2674, 0, 0, 0, 0, 0, 0, t2630, t2632, t2625, t2582, 0, 0, 0, 0, 0, 0, t2587, t2590, t2583, t2537, 0, 0, 0, 0, 0, 0, t2547, t2549, t2542, t2502, 0, 0, 0, 0, 0, 0, t2547, t2549, t2542, t2495; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2700, t2703, t2697, t2673, 0, 0, 0, 0, 0, 0, t2616, t2619, t2607, t2571, 0, 0, 0, 0, 0, 0, t2575, t2577, t2558, t2521, 0, 0, 0, 0, 0, 0, t2530, t2532, t2524, t2492, 0, 0, 0, 0, 0, 0, t2530, t2532, t2524, t2490; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2699, t2696, t2702, t2687, 0, 0, 0, 0, 0, 0, t2615, t2618, t2606, t2570, 0, 0, 0, 0, 0, 0, t2574, t2576, t2557, t2520, 0, 0, 0, 0, 0, 0, t2529, t2531, t2523, t2491, 0, 0, 0, 0, 0, 0, t2529, t2531, t2523, t2489; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2658, t2659, t2647, t2605, 0, 0, 0, 0, 0, 0, t2611, t2614, t2595, t2544, 0, 0, 0, 0, 0, 0, t2560, t2562, t2553, t2516, 0, 0, 0, 0, 0, 0, t2560, t2562, t2553, t2506; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2660, t2661, t2649, -t2793, 0, 0, 0, 0, 0, 0, -t2621, t2840, -t2631, -t2592, 0, 0, 0, 0, 0, 0, -t2584, -t2588, -t2568, -t2518, 0, 0, 0, 0, 0, 0, -t2584, -t2588, -t2568, -t2512; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2646, -t2796, t2653, t2626, 0, 0, 0, 0, 0, 0, t2610, t2613, t2594, t2543, 0, 0, 0, 0, 0, 0, t2559, t2561, t2552, t2515, 0, 0, 0, 0, 0, 0, t2559, t2561, t2552, t2505; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2638, t2629, t2622, t2567, 0, 0, 0, 0, 0, 0, t2585, t2589, t2569, t2519, 0, 0, 0, 0, 0, 0, t2585, t2589, t2569, t2513; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2628, t2642, t2624, t2566, 0, 0, 0, 0, 0, 0, -t2597, -t2599, -t2617, -t2555, 0, 0, 0, 0, 0, 0, -t2597, -t2599, -t2617, -t2545; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2621, -t2840, t2631, t2592, 0, 0, 0, 0, 0, 0, t2584, t2588, t2568, t2518, 0, 0, 0, 0, 0, 0, t2584, t2588, t2568, t2512; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2620, t2609, t2598, t2541, 0, 0, 0, 0, 0, 0, t2620, t2609, t2598, t2528; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2608, t2627, t2600, t2540, 0, 0, 0, 0, 0, 0, t2608, t2627, t2600, t2525; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2597, t2599, t2617, t2555, 0, 0, 0, 0, 0, 0, t2597, t2599, t2617, t2545; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2620, t2609, t2598, t2528; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2608, t2627, t2600, t2525; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2597, t2599, t2617, t2545;];
f_new_reg  = t1;