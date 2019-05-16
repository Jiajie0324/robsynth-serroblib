% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRPPP1
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
%   pkin=[a2,a3,a4,a5,a6,alpha4,d1,d2,d3,theta4]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 04:05
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRPPP1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPP1_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPP1_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPPP1_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPPP1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPP1_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 04:05:02
% EndTime: 2019-05-07 04:05:12
% DurationCPUTime: 10.94s
% Computational Cost: add. (48464->315), mult. (103477->377), div. (0->0), fcn. (77487->10), ass. (0->213)
t2869 = sin(qJ(3));
t2872 = cos(qJ(3));
t2870 = sin(qJ(2));
t2930 = qJD(1) * t2870;
t2837 = -t2872 * qJD(2) + t2869 * t2930;
t2873 = cos(qJ(2));
t2929 = qJD(1) * t2873;
t2908 = qJD(2) * t2929;
t2911 = t2870 * qJDD(1);
t2841 = t2908 + t2911;
t2897 = -t2869 * qJDD(2) - t2872 * t2841;
t2814 = -qJD(3) * t2837 - t2897;
t2864 = sin(pkin(10));
t2866 = cos(pkin(10));
t2867 = cos(pkin(6));
t2865 = sin(pkin(6));
t2858 = t2873 * qJDD(1);
t2909 = qJD(2) * t2930;
t2896 = qJDD(3) - t2858 + t2909;
t2893 = t2865 * t2896;
t2839 = qJD(2) * t2869 + t2872 * t2930;
t2907 = -t2872 * qJDD(2) + t2869 * t2841;
t2894 = qJD(3) * t2839 + t2907;
t2949 = t2867 * t2894 - t2893;
t2882 = t2866 * t2814 - t2864 * t2949;
t2914 = t2866 * t2867;
t2854 = -qJD(3) + t2929;
t2917 = t2854 * t2865;
t2803 = t2837 * t2914 + t2839 * t2864 + t2866 * t2917;
t2822 = -t2837 * t2865 + t2854 * t2867;
t2920 = t2803 * t2822;
t2745 = t2882 + t2920;
t2936 = t2822 ^ 2;
t2898 = t2837 * t2867 + t2917;
t2805 = t2866 * t2839 - t2864 * t2898;
t2937 = t2805 ^ 2;
t2766 = t2937 + t2936;
t2891 = -t2865 * t2894 - t2867 * t2896;
t2919 = t2805 * t2803;
t2888 = t2891 - t2919;
t2960 = t2766 * t2866 - t2888 * t2864;
t2713 = t2867 * t2745 - t2865 * t2960;
t3009 = t2713 * t2870;
t3008 = t2713 * t2873;
t2776 = t2814 * t2864 + t2866 * t2949;
t2784 = t2805 * t2822;
t2740 = t2776 - t2784;
t2887 = t2891 + t2919;
t2801 = t2803 ^ 2;
t2941 = -t2801 - t2936;
t2948 = t2941 * t2864 - t2887 * t2866;
t2971 = t2867 * t2740 + t2865 * t2948;
t3007 = t2870 * t2971;
t3006 = t2873 * t2971;
t2871 = sin(qJ(1));
t2874 = cos(qJ(1));
t2916 = t2864 * t2867;
t2954 = t2740 * t2865;
t2972 = -t2887 * t2914 + t2916 * t2941 - t2954;
t2963 = t2887 * t2864 + t2941 * t2866;
t2979 = t2869 * t2963;
t2983 = t2872 * t2972 + t2979;
t2975 = t2872 * t2963;
t2986 = -t2869 * t2972 + t2975;
t2994 = t2873 * t2986 + t3007;
t3005 = t2871 * t2994 - t2874 * t2983;
t2991 = t2865 * t2745;
t2959 = t2766 * t2914 - t2888 * t2916 + t2991;
t2727 = t2766 * t2864 + t2866 * t2888;
t2993 = t2727 * t2869;
t2988 = t2872 * t2959 - t2993;
t2992 = t2727 * t2872;
t2987 = -t2869 * t2959 - t2992;
t2995 = t2873 * t2987 - t3009;
t3004 = t2871 * t2995 - t2874 * t2988;
t3003 = t2871 * t2983 + t2874 * t2994;
t3002 = t2871 * t2988 + t2874 * t2995;
t2997 = t2870 * t2987 + t3008;
t2996 = t2870 * t2986 - t3006;
t2741 = t2776 + t2784;
t2880 = t2882 - t2920;
t2940 = -t2937 - t2801;
t2961 = -t2741 * t2916 - t2865 * t2940 - t2880 * t2914;
t2962 = -t2866 * t2741 + t2880 * t2864;
t2968 = t2869 * t2962 + t2872 * t2961;
t2955 = t2867 * t2940 + (-t2741 * t2864 - t2880 * t2866) * t2865;
t2967 = -t2869 * t2961 + t2872 * t2962;
t2982 = t2870 * t2955 + t2873 * t2967;
t2984 = t2871 * t2982 - t2874 * t2968;
t2981 = t2871 * t2968 + t2874 * t2982;
t2985 = t2870 * t2967 - t2873 * t2955;
t2792 = (qJD(3) - t2854) * t2839 + t2907;
t2850 = -g(1) * t2874 - g(2) * t2871;
t2875 = qJD(1) ^ 2;
t2835 = -pkin(1) * t2875 + qJDD(1) * pkin(8) + t2850;
t2827 = -t2873 * g(3) - t2870 * t2835;
t2895 = t2875 * (-pkin(2) * t2873 - pkin(9) * t2870);
t2938 = qJD(2) ^ 2;
t2808 = -qJDD(2) * pkin(2) - t2938 * pkin(9) + t2870 * t2895 - t2827;
t2934 = t2839 ^ 2;
t2886 = -t2814 * t2865 - t2837 * t2898 - t2867 * t2934;
t2877 = pkin(3) * t2792 + qJ(4) * t2886 + t2808;
t2849 = t2871 * g(1) - t2874 * g(2);
t2834 = qJDD(1) * pkin(1) + t2875 * pkin(8) + t2849;
t2906 = -t2858 + 0.2e1 * t2909;
t2791 = (-t2841 - t2908) * pkin(9) + t2906 * pkin(2) - t2834;
t2828 = -t2870 * g(3) + t2873 * t2835;
t2809 = -pkin(2) * t2938 + qJDD(2) * pkin(9) + t2873 * t2895 + t2828;
t2769 = t2872 * t2791 - t2869 * t2809;
t2816 = -qJ(4) * t2839 * t2865 + pkin(3) * t2837;
t2885 = pkin(3) * t2896 - t2839 * t2816 + t2769;
t2890 = -t2814 * t2867 + t2854 * t2898;
t2879 = t2890 * qJ(4) + t2885;
t2950 = t2865 * t2877 + t2867 * t2879;
t2712 = -t2865 * t2879 + t2867 * t2877 + qJDD(4);
t2935 = t2837 ^ 2;
t2933 = t2854 ^ 2;
t2932 = 2 * qJD(6);
t2931 = -0.2e1 * t2805;
t2918 = t2837 * t2839;
t2913 = qJD(3) + t2854;
t2770 = t2869 * t2791 + t2872 * t2809;
t2861 = t2870 ^ 2;
t2862 = t2873 ^ 2;
t2912 = t2861 + t2862;
t2793 = -t2839 * t2913 - t2907;
t2731 = -t2933 * pkin(3) - t2837 * t2816 + (t2793 * t2867 + t2893) * qJ(4) + t2770;
t2905 = t2864 * t2731 - t2866 * t2950;
t2904 = -0.2e1 * qJD(4) * t2803 + t2866 * t2731;
t2774 = pkin(4) * t2803 - qJ(5) * t2805;
t2678 = qJDD(5) + t2891 * pkin(4) - t2936 * qJ(5) + (0.2e1 * qJD(4) + t2774) * t2805 + t2905;
t2662 = t2882 * pkin(5) + (-pkin(5) * t2803 + t2932) * t2822 + t2678 + t2887 * qJ(6);
t2677 = -t2936 * pkin(4) - t2891 * qJ(5) - 0.2e1 * qJD(5) * t2822 - t2803 * t2774 + t2864 * t2950 + t2904;
t2779 = pkin(5) * t2805 + qJ(6) * t2822;
t2663 = -t2776 * pkin(5) - t2801 * qJ(6) - t2822 * t2779 + qJDD(6) + t2677;
t2903 = -t2662 * t2866 + t2663 * t2864;
t2902 = t2677 * t2864 - t2678 * t2866;
t2692 = qJD(4) * t2931 - t2905;
t2693 = t2904 + (t2867 * t2885 + t2865 * (t2808 + (-t2839 * t2854 + t2894) * pkin(3)) + (t2865 * t2886 + t2867 * t2890) * qJ(4)) * t2864;
t2901 = t2692 * t2866 + t2693 * t2864;
t2685 = pkin(4) * t2740 - t2745 * qJ(5) + qJD(5) * t2931 + t2712;
t2853 = t2873 * t2875 * t2870;
t2852 = -t2862 * t2875 - t2938;
t2851 = -t2861 * t2875 - t2938;
t2848 = -qJDD(2) + t2853;
t2847 = qJDD(2) + t2853;
t2846 = t2912 * t2875;
t2845 = -qJDD(1) * t2871 - t2874 * t2875;
t2844 = qJDD(1) * t2874 - t2871 * t2875;
t2843 = t2912 * qJDD(1);
t2840 = 0.2e1 * t2908 + t2911;
t2826 = t2848 * t2873 - t2851 * t2870;
t2825 = -t2847 * t2870 + t2852 * t2873;
t2824 = t2848 * t2870 + t2851 * t2873;
t2823 = t2847 * t2873 + t2852 * t2870;
t2821 = -t2933 - t2934;
t2815 = -t2933 - t2935;
t2813 = t2896 - t2918;
t2812 = -t2896 - t2918;
t2811 = -t2934 - t2935;
t2797 = -t2827 * t2870 + t2828 * t2873;
t2796 = t2827 * t2873 + t2828 * t2870;
t2795 = t2837 * t2913 + t2897;
t2794 = t2837 * t2854 + t2814;
t2786 = t2812 * t2872 - t2821 * t2869;
t2785 = t2812 * t2869 + t2821 * t2872;
t2781 = -t2813 * t2869 + t2815 * t2872;
t2780 = t2813 * t2872 + t2815 * t2869;
t2768 = t2793 * t2872 - t2795 * t2869;
t2767 = t2793 * t2869 + t2795 * t2872;
t2764 = t2786 * t2873 + t2794 * t2870;
t2763 = t2786 * t2870 - t2794 * t2873;
t2762 = t2781 * t2873 + t2792 * t2870;
t2761 = t2781 * t2870 - t2792 * t2873;
t2750 = t2768 * t2873 + t2811 * t2870;
t2749 = t2768 * t2870 - t2811 * t2873;
t2733 = -t2769 * t2869 + t2770 * t2872;
t2732 = t2769 * t2872 + t2770 * t2869;
t2726 = t2733 * t2873 + t2808 * t2870;
t2725 = t2733 * t2870 - t2808 * t2873;
t2716 = -t2867 * t2960 - t2991;
t2711 = -t2867 * t2948 + t2954;
t2697 = -t2716 * t2869 + t2992;
t2694 = t2716 * t2872 + t2993;
t2691 = -t2711 * t2869 - t2975;
t2688 = t2711 * t2872 - t2979;
t2674 = t2697 * t2873 + t3009;
t2671 = t2697 * t2870 - t3008;
t2670 = -t2801 * pkin(5) + t2776 * qJ(6) - t2805 * t2779 + t2803 * t2932 + t2685;
t2669 = t2691 * t2873 - t3007;
t2666 = t2691 * t2870 + t3006;
t2655 = -t2692 * t2864 + t2693 * t2866;
t2654 = -t2865 * t2712 + t2867 * t2901;
t2653 = t2867 * t2712 + t2865 * t2901;
t2652 = t2677 * t2866 + t2678 * t2864;
t2651 = t2662 * t2864 + t2663 * t2866;
t2650 = -t2865 * t2685 + t2867 * t2902;
t2649 = t2867 * t2685 + t2865 * t2902;
t2648 = -t2654 * t2869 + t2655 * t2872;
t2647 = t2654 * t2872 + t2655 * t2869;
t2646 = -t2865 * t2670 + t2867 * t2903;
t2645 = t2867 * t2670 + t2865 * t2903;
t2644 = -t2650 * t2869 + t2652 * t2872;
t2643 = t2650 * t2872 + t2652 * t2869;
t2642 = t2648 * t2873 + t2653 * t2870;
t2641 = t2648 * t2870 - t2653 * t2873;
t2640 = -t2646 * t2869 + t2651 * t2872;
t2639 = t2646 * t2872 + t2651 * t2869;
t2638 = t2644 * t2873 + t2649 * t2870;
t2637 = t2644 * t2870 - t2649 * t2873;
t2636 = t2640 * t2873 + t2645 * t2870;
t2635 = t2640 * t2870 - t2645 * t2873;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2845, -t2844, 0, -t2849 * t2871 + t2850 * t2874, 0, 0, 0, 0, 0, 0, t2825 * t2874 + t2871 * t2906, t2826 * t2874 + t2840 * t2871, t2843 * t2874 - t2846 * t2871, t2797 * t2874 - t2834 * t2871, 0, 0, 0, 0, 0, 0, t2762 * t2874 + t2780 * t2871, t2764 * t2874 + t2785 * t2871, t2750 * t2874 + t2767 * t2871, t2726 * t2874 + t2732 * t2871, 0, 0, 0, 0, 0, 0, t3003, t2674 * t2874 + t2694 * t2871, t2981, t2642 * t2874 + t2647 * t2871, 0, 0, 0, 0, 0, 0, t2981, t2669 * t2874 + t2688 * t2871, t3002, t2638 * t2874 + t2643 * t2871, 0, 0, 0, 0, 0, 0, t2981, t3002, t3003, t2636 * t2874 + t2639 * t2871; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2844, t2845, 0, t2849 * t2874 + t2850 * t2871, 0, 0, 0, 0, 0, 0, t2825 * t2871 - t2874 * t2906, t2826 * t2871 - t2840 * t2874, t2843 * t2871 + t2846 * t2874, t2797 * t2871 + t2834 * t2874, 0, 0, 0, 0, 0, 0, t2762 * t2871 - t2780 * t2874, t2764 * t2871 - t2785 * t2874, t2750 * t2871 - t2767 * t2874, t2726 * t2871 - t2732 * t2874, 0, 0, 0, 0, 0, 0, t3005, t2674 * t2871 - t2694 * t2874, t2984, t2642 * t2871 - t2647 * t2874, 0, 0, 0, 0, 0, 0, t2984, t2669 * t2871 - t2688 * t2874, t3004, t2638 * t2871 - t2643 * t2874, 0, 0, 0, 0, 0, 0, t2984, t3004, t3005, t2636 * t2871 - t2639 * t2874; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2823, t2824, 0, t2796, 0, 0, 0, 0, 0, 0, t2761, t2763, t2749, t2725, 0, 0, 0, 0, 0, 0, t2996, t2671, t2985, t2641, 0, 0, 0, 0, 0, 0, t2985, t2666, t2997, t2637, 0, 0, 0, 0, 0, 0, t2985, t2997, t2996, t2635; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2875, -qJDD(1), 0, t2850, 0, 0, 0, 0, 0, 0, t2825, t2826, t2843, t2797, 0, 0, 0, 0, 0, 0, t2762, t2764, t2750, t2726, 0, 0, 0, 0, 0, 0, t2994, t2674, t2982, t2642, 0, 0, 0, 0, 0, 0, t2982, t2669, t2995, t2638, 0, 0, 0, 0, 0, 0, t2982, t2995, t2994, t2636; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t2875, 0, t2849, 0, 0, 0, 0, 0, 0, -t2906, -t2840, t2846, t2834, 0, 0, 0, 0, 0, 0, -t2780, -t2785, -t2767, -t2732, 0, 0, 0, 0, 0, 0, -t2983, -t2694, -t2968, -t2647, 0, 0, 0, 0, 0, 0, -t2968, -t2688, -t2988, -t2643, 0, 0, 0, 0, 0, 0, -t2968, -t2988, -t2983, -t2639; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2823, t2824, 0, t2796, 0, 0, 0, 0, 0, 0, t2761, t2763, t2749, t2725, 0, 0, 0, 0, 0, 0, t2996, t2671, t2985, t2641, 0, 0, 0, 0, 0, 0, t2985, t2666, t2997, t2637, 0, 0, 0, 0, 0, 0, t2985, t2997, t2996, t2635; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2852, t2848, t2858, t2828, 0, 0, 0, 0, 0, 0, t2781, t2786, t2768, t2733, 0, 0, 0, 0, 0, 0, t2986, t2697, t2967, t2648, 0, 0, 0, 0, 0, 0, t2967, t2691, t2987, t2644, 0, 0, 0, 0, 0, 0, t2967, t2987, t2986, t2640; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2847, t2851, -t2911, t2827, 0, 0, 0, 0, 0, 0, -t2792, -t2794, -t2811, -t2808, 0, 0, 0, 0, 0, 0, -t2971, -t2713, -t2955, -t2653, 0, 0, 0, 0, 0, 0, -t2955, t2971, t2713, -t2649, 0, 0, 0, 0, 0, 0, -t2955, t2713, -t2971, -t2645; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2906, t2840, -t2846, -t2834, 0, 0, 0, 0, 0, 0, t2780, t2785, t2767, t2732, 0, 0, 0, 0, 0, 0, t2983, t2694, t2968, t2647, 0, 0, 0, 0, 0, 0, t2968, t2688, t2988, t2643, 0, 0, 0, 0, 0, 0, t2968, t2988, t2983, t2639; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2815, t2812, t2793, t2770, 0, 0, 0, 0, 0, 0, t2963, t2727, t2962, t2655, 0, 0, 0, 0, 0, 0, t2962, -t2963, -t2727, t2652, 0, 0, 0, 0, 0, 0, t2962, -t2727, t2963, t2651; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2813, t2821, t2795, t2769, 0, 0, 0, 0, 0, 0, t2972, t2716, t2961, t2654, 0, 0, 0, 0, 0, 0, t2961, t2711, t2959, t2650, 0, 0, 0, 0, 0, 0, t2961, t2959, t2972, t2646; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2792, t2794, t2811, t2808, 0, 0, 0, 0, 0, 0, t2971, t2713, t2955, t2653, 0, 0, 0, 0, 0, 0, t2955, -t2971, -t2713, t2649, 0, 0, 0, 0, 0, 0, t2955, -t2713, t2971, t2645; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2941, t2888, -t2741, t2693, 0, 0, 0, 0, 0, 0, -t2741, -t2941, -t2888, t2677, 0, 0, 0, 0, 0, 0, -t2741, -t2888, t2941, t2663; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2887, -t2766, -t2880, t2692, 0, 0, 0, 0, 0, 0, -t2880, t2887, t2766, -t2678, 0, 0, 0, 0, 0, 0, -t2880, t2766, -t2887, -t2662; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2740, t2745, t2940, t2712, 0, 0, 0, 0, 0, 0, t2940, -t2740, -t2745, t2685, 0, 0, 0, 0, 0, 0, t2940, -t2745, t2740, t2670; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2940, -t2740, -t2745, t2685, 0, 0, 0, 0, 0, 0, t2940, -t2745, t2740, t2670; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2741, t2941, t2888, -t2677, 0, 0, 0, 0, 0, 0, t2741, t2888, -t2941, -t2663; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2880, -t2887, -t2766, t2678, 0, 0, 0, 0, 0, 0, t2880, -t2766, t2887, t2662; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2940, -t2745, t2740, t2670; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2880, -t2766, t2887, t2662; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2741, -t2888, t2941, t2663;];
f_new_reg  = t1;
