% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRRPR10
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 23:04
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRRPR10_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR10_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR10_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPR10_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPR10_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR10_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 23:03:42
% EndTime: 2019-05-07 23:03:55
% DurationCPUTime: 13.46s
% Computational Cost: add. (74364->378), mult. (160465->516), div. (0->0), fcn. (130292->12), ass. (0->302)
t2748 = cos(qJ(2));
t2738 = sin(pkin(6));
t2743 = sin(qJ(2));
t2815 = t2738 * t2743;
t2806 = qJD(1) * t2815;
t2807 = qJDD(1) * t2738;
t2808 = -qJD(2) * t2806 + t2748 * t2807;
t2802 = -qJDD(3) + t2808;
t2790 = -qJDD(4) + t2802;
t2739 = cos(pkin(6));
t2734 = qJD(1) * t2739 + qJD(2);
t2742 = sin(qJ(3));
t2747 = cos(qJ(3));
t2702 = t2734 * t2742 + t2747 * t2806;
t2741 = sin(qJ(4));
t2746 = cos(qJ(4));
t2795 = t2734 * t2747 - t2742 * t2806;
t2682 = t2741 * t2702 - t2746 * t2795;
t2684 = t2746 * t2702 + t2741 * t2795;
t2819 = t2682 * t2684;
t2636 = t2790 + t2819;
t2681 = t2682 ^ 2;
t2814 = t2738 * t2748;
t2805 = qJD(1) * t2814;
t2724 = -qJD(3) + t2805;
t2717 = -qJD(4) + t2724;
t2716 = t2717 ^ 2;
t2639 = -t2716 - t2681;
t2599 = t2636 * t2746 - t2639 * t2741;
t2600 = t2636 * t2741 + t2639 * t2746;
t2568 = t2599 * t2742 + t2600 * t2747;
t2848 = t2568 * t2743;
t2847 = t2568 * t2748;
t2567 = t2599 * t2747 - t2600 * t2742;
t2846 = t2738 * t2567;
t2845 = t2739 * t2567;
t2764 = t2790 - t2819;
t2829 = t2684 ^ 2;
t2803 = -t2716 - t2829;
t2614 = t2741 * t2764 + t2746 * t2803;
t2617 = t2741 * t2803 - t2746 * t2764;
t2581 = t2614 * t2742 + t2617 * t2747;
t2844 = t2581 * t2743;
t2843 = t2581 * t2748;
t2578 = t2614 * t2747 - t2617 * t2742;
t2842 = t2738 * t2578;
t2841 = t2739 * t2578;
t2709 = qJD(2) * t2805 + t2743 * t2807;
t2794 = qJDD(1) * t2739 + qJDD(2);
t2674 = qJD(3) * t2795 + t2747 * t2709 + t2742 * t2794;
t2796 = t2742 * t2709 - t2747 * t2794;
t2766 = -qJD(3) * t2702 - t2796;
t2761 = -t2746 * t2674 - t2741 * t2766;
t2812 = qJD(4) + t2717;
t2610 = t2682 * t2812 + t2761;
t2840 = t2610 * t2741;
t2839 = t2610 * t2746;
t2757 = -t2682 * qJD(4) - t2761;
t2818 = t2682 * t2717;
t2609 = t2757 + t2818;
t2836 = -t2681 - t2829;
t2838 = t2743 * t2836;
t2837 = t2748 * t2836;
t2789 = t2795 * t2702;
t2669 = t2789 - t2802;
t2793 = t2795 ^ 2;
t2826 = t2734 ^ 2;
t2835 = -t2794 * pkin(2) - t2826 * pkin(9);
t2740 = sin(qJ(6));
t2745 = cos(qJ(6));
t2744 = sin(qJ(1));
t2749 = cos(qJ(1));
t2727 = -g(1) * t2749 - g(2) * t2744;
t2750 = qJD(1) ^ 2;
t2705 = -pkin(1) * t2750 + pkin(8) * t2807 + t2727;
t2726 = t2744 * g(1) - t2749 * g(2);
t2762 = t2750 * t2738 * pkin(8) + qJDD(1) * pkin(1) + t2726;
t2759 = t2739 * t2762;
t2809 = t2748 * t2705 + t2743 * t2759;
t2708 = (-pkin(2) * t2748 - pkin(9) * t2743) * t2738 * qJD(1);
t2823 = qJD(1) * t2708;
t2649 = t2794 * pkin(9) - t2826 * pkin(2) + (-g(3) * t2743 + t2748 * t2823) * t2738 + t2809;
t2824 = t2739 * g(3);
t2650 = -t2824 - t2709 * pkin(9) - t2808 * pkin(2) + ((pkin(2) * t2743 - pkin(9) * t2748) * t2734 * qJD(1) - t2762) * t2738;
t2618 = -t2742 * t2649 + t2747 * t2650;
t2788 = t2795 * t2724;
t2656 = -t2674 - t2788;
t2589 = pkin(3) * t2669 + t2656 * pkin(10) + t2618;
t2619 = t2747 * t2649 + t2742 * t2650;
t2689 = -pkin(3) * t2724 - pkin(10) * t2702;
t2594 = -pkin(3) * t2793 + pkin(10) * t2766 + t2724 * t2689 + t2619;
t2559 = t2746 * t2589 - t2741 * t2594;
t2765 = pkin(4) * t2790 - t2716 * qJ(5) + qJDD(5) - t2559;
t2753 = t2790 * pkin(11) + t2765 + (t2757 - t2818) * pkin(5);
t2798 = t2741 * t2674 - t2746 * t2766;
t2627 = qJD(4) * t2684 + t2798;
t2797 = t2743 * t2705 - t2748 * t2759;
t2676 = -g(3) * t2814 - t2797;
t2833 = -t2766 * pkin(3) - t2793 * pkin(10) + t2702 * t2689;
t2834 = t2627 * pkin(4) - qJ(5) * t2609;
t2754 = -t2681 * pkin(5) + t2627 * pkin(11) + t2708 * t2806 - t2676 + t2833 + t2834 + t2835;
t2666 = pkin(5) * t2684 + pkin(11) * t2717;
t2825 = -2 * qJD(5);
t2801 = -pkin(4) * t2717 + t2825;
t2791 = -t2666 + t2801;
t2642 = pkin(4) * t2682 - qJ(5) * t2684;
t2800 = pkin(11) * t2682 + t2642;
t2751 = -t2740 * t2754 + t2745 * t2753 + (-t2740 * t2791 + t2745 * t2800) * t2684;
t2662 = -t2745 * t2682 - t2717 * t2740;
t2832 = t2662 ^ 2;
t2664 = t2682 * t2740 - t2717 * t2745;
t2831 = t2664 ^ 2;
t2680 = qJD(6) + t2684;
t2830 = t2680 ^ 2;
t2828 = t2702 ^ 2;
t2827 = t2724 ^ 2;
t2820 = t2664 * t2662;
t2816 = t2738 ^ 2 * t2750;
t2813 = qJD(4) - t2717;
t2811 = qJD(6) - t2680;
t2810 = qJD(6) + t2680;
t2804 = -t2830 - t2831;
t2799 = t2745 * t2627 + t2740 * t2790;
t2792 = t2734 * t2805;
t2512 = t2745 * t2754 + t2740 * t2753 + (t2740 * t2800 + t2745 * t2791) * t2684;
t2498 = t2740 * t2512 + t2745 * t2751;
t2560 = t2741 * t2589 + t2746 * t2594;
t2760 = -t2716 * pkin(4) - qJ(5) * t2790 - t2682 * t2642 + t2560;
t2533 = -t2627 * pkin(5) - t2681 * pkin(11) + (t2825 - t2666) * t2717 + t2760;
t2492 = -t2498 * t2746 + t2533 * t2741;
t2493 = t2498 * t2741 + t2533 * t2746;
t2489 = -t2492 * t2742 + t2493 * t2747;
t2499 = t2745 * t2512 - t2740 * t2751;
t2787 = t2489 * t2743 - t2499 * t2748;
t2550 = t2717 * t2825 + t2760;
t2553 = t2684 * t2642 + t2765;
t2525 = t2550 * t2741 - t2553 * t2746;
t2526 = t2550 * t2746 + t2553 * t2741;
t2506 = -t2525 * t2742 + t2526 * t2747;
t2648 = (g(3) * t2748 + t2743 * t2823) * t2738 + t2797 + t2835;
t2602 = t2648 + t2833;
t2556 = t2684 * t2801 + t2602 + t2834;
t2786 = t2506 * t2743 - t2556 * t2748;
t2527 = t2559 * t2746 + t2560 * t2741;
t2528 = -t2559 * t2741 + t2560 * t2746;
t2510 = -t2527 * t2742 + t2528 * t2747;
t2785 = t2510 * t2743 - t2602 * t2748;
t2586 = -t2664 * t2811 + t2799;
t2773 = -t2740 * t2627 + t2745 * t2790;
t2763 = t2662 * t2811 + t2773;
t2554 = t2740 * t2586 + t2745 * t2763;
t2613 = -t2831 - t2832;
t2540 = -t2554 * t2746 + t2613 * t2741;
t2541 = t2554 * t2741 + t2613 * t2746;
t2520 = -t2540 * t2742 + t2541 * t2747;
t2555 = t2745 * t2586 - t2740 * t2763;
t2784 = t2520 * t2743 - t2555 * t2748;
t2620 = -t2830 - t2832;
t2756 = -qJDD(6) - t2757;
t2755 = -t2756 - t2820;
t2564 = t2740 * t2620 + t2745 * t2755;
t2585 = t2664 * t2810 - t2799;
t2548 = -t2564 * t2746 + t2585 * t2741;
t2549 = t2564 * t2741 + t2585 * t2746;
t2522 = -t2548 * t2742 + t2549 * t2747;
t2565 = t2745 * t2620 - t2740 * t2755;
t2783 = t2522 * t2743 - t2565 * t2748;
t2596 = t2756 - t2820;
t2570 = t2740 * t2596 + t2745 * t2804;
t2587 = -t2662 * t2810 - t2773;
t2551 = -t2570 * t2746 + t2587 * t2741;
t2552 = t2570 * t2741 + t2587 * t2746;
t2524 = -t2551 * t2742 + t2552 * t2747;
t2571 = t2745 * t2596 - t2740 * t2804;
t2782 = t2524 * t2743 - t2571 * t2748;
t2604 = t2684 * t2812 + t2798;
t2572 = -t2604 * t2741 + t2839;
t2574 = -t2604 * t2746 - t2840;
t2544 = -t2572 * t2742 + t2574 * t2747;
t2781 = t2544 * t2743 - t2837;
t2670 = t2717 * t2684;
t2606 = -t2627 - t2670;
t2573 = t2606 * t2741 + t2839;
t2575 = t2606 * t2746 - t2840;
t2545 = -t2573 * t2742 + t2575 * t2747;
t2780 = t2545 * t2743 - t2837;
t2603 = t2684 * t2813 + t2798;
t2779 = -t2603 * t2748 + t2848;
t2605 = t2627 - t2670;
t2778 = t2605 * t2748 - t2848;
t2777 = -t2609 * t2748 - t2844;
t2607 = -t2682 * t2813 - t2761;
t2776 = t2607 * t2748 + t2844;
t2583 = -t2618 * t2742 + t2619 * t2747;
t2775 = t2583 * t2743 - t2648 * t2748;
t2654 = (-qJD(3) - t2724) * t2702 - t2796;
t2622 = t2654 * t2747 - t2656 * t2742;
t2665 = -t2793 - t2828;
t2774 = t2622 * t2743 - t2665 * t2748;
t2675 = -t2827 - t2793;
t2633 = -t2669 * t2742 + t2675 * t2747;
t2653 = (qJD(3) - t2724) * t2702 + t2796;
t2772 = t2633 * t2743 - t2653 * t2748;
t2668 = t2789 + t2802;
t2687 = -t2827 - t2828;
t2641 = t2668 * t2747 - t2687 * t2742;
t2655 = -t2788 + t2674;
t2771 = t2641 * t2743 - t2655 * t2748;
t2677 = -g(3) * t2815 + t2809;
t2770 = t2676 * t2748 + t2677 * t2743;
t2691 = t2792 - t2709;
t2712 = t2734 * t2806;
t2692 = t2712 + t2808;
t2769 = t2691 * t2748 + t2692 * t2743;
t2736 = t2743 ^ 2;
t2699 = -t2736 * t2816 - t2826;
t2723 = t2748 * t2743 * t2816;
t2707 = t2723 - t2794;
t2768 = t2699 * t2748 + t2707 * t2743;
t2706 = t2723 + t2794;
t2737 = t2748 ^ 2;
t2710 = -t2737 * t2816 - t2826;
t2767 = t2706 * t2748 + t2710 * t2743;
t2721 = -qJDD(1) * t2744 - t2749 * t2750;
t2720 = qJDD(1) * t2749 - t2744 * t2750;
t2711 = (-t2736 - t2737) * t2816;
t2695 = -t2738 * t2762 - t2824;
t2693 = t2712 - t2808;
t2690 = t2792 + t2709;
t2688 = -t2706 * t2743 + t2710 * t2748;
t2686 = -t2699 * t2743 + t2707 * t2748;
t2661 = -t2691 * t2743 + t2692 * t2748;
t2658 = -t2738 * t2693 + t2739 * t2767;
t2657 = t2739 * t2693 + t2738 * t2767;
t2652 = -t2738 * t2690 + t2739 * t2768;
t2651 = t2739 * t2690 + t2738 * t2768;
t2647 = -t2738 * t2711 + t2739 * t2769;
t2646 = t2739 * t2711 + t2738 * t2769;
t2640 = t2668 * t2742 + t2687 * t2747;
t2638 = -t2676 * t2743 + t2677 * t2748;
t2632 = t2669 * t2747 + t2675 * t2742;
t2631 = -t2738 * t2695 + t2739 * t2770;
t2630 = t2739 * t2695 + t2738 * t2770;
t2621 = t2654 * t2742 + t2656 * t2747;
t2612 = t2641 * t2748 + t2655 * t2743;
t2611 = t2633 * t2748 + t2653 * t2743;
t2597 = t2622 * t2748 + t2665 * t2743;
t2593 = -t2738 * t2640 + t2739 * t2771;
t2592 = t2739 * t2640 + t2738 * t2771;
t2591 = -t2738 * t2632 + t2739 * t2772;
t2590 = t2739 * t2632 + t2738 * t2772;
t2582 = t2618 * t2747 + t2619 * t2742;
t2577 = -t2738 * t2621 + t2739 * t2774;
t2576 = t2739 * t2621 + t2738 * t2774;
t2563 = t2583 * t2748 + t2648 * t2743;
t2562 = -t2607 * t2743 + t2843;
t2561 = t2609 * t2743 - t2843;
t2558 = -t2605 * t2743 - t2847;
t2557 = t2603 * t2743 + t2847;
t2547 = -t2738 * t2582 + t2739 * t2775;
t2546 = t2739 * t2582 + t2738 * t2775;
t2543 = t2573 * t2747 + t2575 * t2742;
t2542 = t2572 * t2747 + t2574 * t2742;
t2539 = t2739 * t2776 + t2842;
t2538 = t2739 * t2777 - t2842;
t2537 = t2738 * t2776 - t2841;
t2536 = t2738 * t2777 + t2841;
t2535 = t2545 * t2748 + t2838;
t2534 = t2544 * t2748 + t2838;
t2532 = t2739 * t2778 - t2846;
t2531 = t2739 * t2779 + t2846;
t2530 = t2738 * t2778 + t2845;
t2529 = t2738 * t2779 - t2845;
t2523 = t2551 * t2747 + t2552 * t2742;
t2521 = t2548 * t2747 + t2549 * t2742;
t2519 = t2540 * t2747 + t2541 * t2742;
t2518 = -t2738 * t2543 + t2739 * t2780;
t2517 = -t2738 * t2542 + t2739 * t2781;
t2516 = t2739 * t2543 + t2738 * t2780;
t2515 = t2739 * t2542 + t2738 * t2781;
t2514 = t2524 * t2748 + t2571 * t2743;
t2513 = t2522 * t2748 + t2565 * t2743;
t2509 = t2527 * t2747 + t2528 * t2742;
t2508 = t2520 * t2748 + t2555 * t2743;
t2507 = t2510 * t2748 + t2602 * t2743;
t2505 = t2525 * t2747 + t2526 * t2742;
t2504 = -t2738 * t2523 + t2739 * t2782;
t2503 = t2739 * t2523 + t2738 * t2782;
t2502 = -t2738 * t2521 + t2739 * t2783;
t2501 = t2739 * t2521 + t2738 * t2783;
t2500 = t2506 * t2748 + t2556 * t2743;
t2497 = -t2738 * t2519 + t2739 * t2784;
t2496 = t2739 * t2519 + t2738 * t2784;
t2495 = -t2738 * t2509 + t2739 * t2785;
t2494 = t2739 * t2509 + t2738 * t2785;
t2491 = -t2738 * t2505 + t2739 * t2786;
t2490 = t2739 * t2505 + t2738 * t2786;
t2488 = t2492 * t2747 + t2493 * t2742;
t2487 = t2489 * t2748 + t2499 * t2743;
t2486 = -t2738 * t2488 + t2739 * t2787;
t2485 = t2739 * t2488 + t2738 * t2787;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2721, -t2720, 0, -t2726 * t2744 + t2727 * t2749, 0, 0, 0, 0, 0, 0, -t2658 * t2744 + t2688 * t2749, -t2652 * t2744 + t2686 * t2749, -t2647 * t2744 + t2661 * t2749, -t2631 * t2744 + t2638 * t2749, 0, 0, 0, 0, 0, 0, -t2591 * t2744 + t2611 * t2749, -t2593 * t2744 + t2612 * t2749, -t2577 * t2744 + t2597 * t2749, -t2547 * t2744 + t2563 * t2749, 0, 0, 0, 0, 0, 0, -t2531 * t2744 + t2557 * t2749, -t2538 * t2744 + t2561 * t2749, -t2518 * t2744 + t2535 * t2749, -t2495 * t2744 + t2507 * t2749, 0, 0, 0, 0, 0, 0, -t2517 * t2744 + t2534 * t2749, -t2532 * t2744 + t2558 * t2749, -t2539 * t2744 + t2562 * t2749, -t2491 * t2744 + t2500 * t2749, 0, 0, 0, 0, 0, 0, -t2502 * t2744 + t2513 * t2749, -t2504 * t2744 + t2514 * t2749, -t2497 * t2744 + t2508 * t2749, -t2486 * t2744 + t2487 * t2749; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2720, t2721, 0, t2726 * t2749 + t2727 * t2744, 0, 0, 0, 0, 0, 0, t2658 * t2749 + t2688 * t2744, t2652 * t2749 + t2686 * t2744, t2647 * t2749 + t2661 * t2744, t2631 * t2749 + t2638 * t2744, 0, 0, 0, 0, 0, 0, t2591 * t2749 + t2611 * t2744, t2593 * t2749 + t2612 * t2744, t2577 * t2749 + t2597 * t2744, t2547 * t2749 + t2563 * t2744, 0, 0, 0, 0, 0, 0, t2531 * t2749 + t2557 * t2744, t2538 * t2749 + t2561 * t2744, t2518 * t2749 + t2535 * t2744, t2495 * t2749 + t2507 * t2744, 0, 0, 0, 0, 0, 0, t2517 * t2749 + t2534 * t2744, t2532 * t2749 + t2558 * t2744, t2539 * t2749 + t2562 * t2744, t2491 * t2749 + t2500 * t2744, 0, 0, 0, 0, 0, 0, t2502 * t2749 + t2513 * t2744, t2504 * t2749 + t2514 * t2744, t2497 * t2749 + t2508 * t2744, t2486 * t2749 + t2487 * t2744; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2657, t2651, t2646, t2630, 0, 0, 0, 0, 0, 0, t2590, t2592, t2576, t2546, 0, 0, 0, 0, 0, 0, t2529, t2536, t2516, t2494, 0, 0, 0, 0, 0, 0, t2515, t2530, t2537, t2490, 0, 0, 0, 0, 0, 0, t2501, t2503, t2496, t2485; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2750, -qJDD(1), 0, t2727, 0, 0, 0, 0, 0, 0, t2688, t2686, t2661, t2638, 0, 0, 0, 0, 0, 0, t2611, t2612, t2597, t2563, 0, 0, 0, 0, 0, 0, t2557, t2561, t2535, t2507, 0, 0, 0, 0, 0, 0, t2534, t2558, t2562, t2500, 0, 0, 0, 0, 0, 0, t2513, t2514, t2508, t2487; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2750, 0, t2726, 0, 0, 0, 0, 0, 0, t2658, t2652, t2647, t2631, 0, 0, 0, 0, 0, 0, t2591, t2593, t2577, t2547, 0, 0, 0, 0, 0, 0, t2531, t2538, t2518, t2495, 0, 0, 0, 0, 0, 0, t2517, t2532, t2539, t2491, 0, 0, 0, 0, 0, 0, t2502, t2504, t2497, t2486; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2657, t2651, t2646, t2630, 0, 0, 0, 0, 0, 0, t2590, t2592, t2576, t2546, 0, 0, 0, 0, 0, 0, t2529, t2536, t2516, t2494, 0, 0, 0, 0, 0, 0, t2515, t2530, t2537, t2490, 0, 0, 0, 0, 0, 0, t2501, t2503, t2496, t2485; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2710, t2707, t2692, t2677, 0, 0, 0, 0, 0, 0, t2633, t2641, t2622, t2583, 0, 0, 0, 0, 0, 0, t2568, -t2581, t2545, t2510, 0, 0, 0, 0, 0, 0, t2544, -t2568, t2581, t2506, 0, 0, 0, 0, 0, 0, t2522, t2524, t2520, t2489; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2706, t2699, t2691, t2676, 0, 0, 0, 0, 0, 0, -t2653, -t2655, -t2665, -t2648, 0, 0, 0, 0, 0, 0, -t2603, -t2609, -t2836, -t2602, 0, 0, 0, 0, 0, 0, -t2836, t2605, t2607, -t2556, 0, 0, 0, 0, 0, 0, -t2565, -t2571, -t2555, -t2499; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2693, t2690, t2711, t2695, 0, 0, 0, 0, 0, 0, t2632, t2640, t2621, t2582, 0, 0, 0, 0, 0, 0, -t2567, t2578, t2543, t2509, 0, 0, 0, 0, 0, 0, t2542, t2567, -t2578, t2505, 0, 0, 0, 0, 0, 0, t2521, t2523, t2519, t2488; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2675, t2668, t2654, t2619, 0, 0, 0, 0, 0, 0, t2600, -t2617, t2575, t2528, 0, 0, 0, 0, 0, 0, t2574, -t2600, t2617, t2526, 0, 0, 0, 0, 0, 0, t2549, t2552, t2541, t2493; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2669, t2687, t2656, t2618, 0, 0, 0, 0, 0, 0, -t2599, t2614, t2573, t2527, 0, 0, 0, 0, 0, 0, t2572, t2599, -t2614, t2525, 0, 0, 0, 0, 0, 0, t2548, t2551, t2540, t2492; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2653, t2655, t2665, t2648, 0, 0, 0, 0, 0, 0, t2603, t2609, t2836, t2602, 0, 0, 0, 0, 0, 0, t2836, -t2605, -t2607, t2556, 0, 0, 0, 0, 0, 0, t2565, t2571, t2555, t2499; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2639, t2764, t2606, t2560, 0, 0, 0, 0, 0, 0, -t2604, -t2639, -t2764, t2550, 0, 0, 0, 0, 0, 0, t2585, t2587, t2613, t2533; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2636, t2803, t2610, t2559, 0, 0, 0, 0, 0, 0, t2610, t2636, -t2803, -t2553, 0, 0, 0, 0, 0, 0, -t2564, -t2570, -t2554, -t2498; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2603, t2609, t2836, t2602, 0, 0, 0, 0, 0, 0, t2836, -t2605, -t2607, t2556, 0, 0, 0, 0, 0, 0, t2565, t2571, t2555, t2499; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2836, -t2605, -t2607, t2556, 0, 0, 0, 0, 0, 0, t2565, t2571, t2555, t2499; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2604, t2639, t2764, -t2550, 0, 0, 0, 0, 0, 0, -t2585, -t2587, -t2613, -t2533; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2610, -t2636, t2803, t2553, 0, 0, 0, 0, 0, 0, t2564, t2570, t2554, t2498; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2620, t2596, t2586, t2512; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2755, t2804, t2763, t2751; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2585, t2587, t2613, t2533;];
f_new_reg  = t1;
