% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRPRRP6
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,theta3]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 18:11
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRPRRP6_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP6_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP6_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRP6_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRP6_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRP6_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 18:10:44
% EndTime: 2019-05-06 18:11:01
% DurationCPUTime: 17.80s
% Computational Cost: add. (71622->349), mult. (188517->493), div. (0->0), fcn. (150706->12), ass. (0->275)
t2992 = sin(pkin(11));
t2994 = cos(pkin(11));
t2998 = sin(qJ(2));
t3002 = cos(qJ(2));
t2993 = sin(pkin(6));
t3064 = qJD(1) * t2993;
t2959 = (t2992 * t3002 + t2994 * t2998) * t3064;
t2995 = cos(pkin(6));
t2986 = qJD(1) * t2995 + qJD(2);
t2997 = sin(qJ(4));
t3001 = cos(qJ(4));
t2945 = t2959 * t3001 + t2986 * t2997;
t3052 = t2993 * t2998;
t3046 = qJD(1) * t3052;
t3047 = qJDD(1) * t2993;
t3016 = qJD(2) * t3046 - t3002 * t3047;
t3045 = t3002 * t3064;
t3048 = qJD(2) * t3045 + t2998 * t3047;
t2937 = -t2992 * t3016 + t2994 * t3048;
t2985 = t2995 * qJDD(1) + qJDD(2);
t3039 = t2997 * t2937 - t3001 * t2985;
t3013 = qJD(4) * t2945 + qJDD(5) + t3039;
t2957 = t2992 * t3046 - t2994 * t3045;
t2955 = qJD(4) + t2957;
t2996 = sin(qJ(5));
t3000 = cos(qJ(5));
t2924 = t2945 * t2996 - t2955 * t3000;
t2926 = t2945 * t3000 + t2955 * t2996;
t3059 = t2924 * t2926;
t2860 = t3013 + t3059;
t2923 = t2926 ^ 2;
t2943 = t2959 * t2997 - t3001 * t2986;
t2942 = qJD(5) + t2943;
t3072 = t2942 ^ 2;
t3076 = -t2923 - t3072;
t2826 = t2860 * t3000 + t2996 * t3076;
t3020 = -t3001 * t2937 - t2997 * t2985;
t2907 = -qJD(4) * t2943 - t3020;
t3011 = t2992 * t3048 + t2994 * t3016;
t3010 = qJDD(4) + t3011;
t3009 = -t2924 * qJD(5) + t3000 * t2907 + t2996 * t3010;
t3058 = t2924 * t2942;
t3008 = t3009 - t3058;
t2804 = t2826 * t2997 + t3001 * t3008;
t2806 = t2826 * t3001 - t2997 * t3008;
t2824 = t2860 * t2996 - t3000 * t3076;
t2777 = t2806 * t2992 - t2824 * t2994;
t2779 = t2806 * t2994 + t2824 * t2992;
t3032 = t2777 * t3002 + t2779 * t2998;
t2749 = -t2993 * t2804 + t2995 * t3032;
t2762 = t2777 * t2998 - t2779 * t3002;
t2999 = sin(qJ(1));
t3003 = cos(qJ(1));
t3110 = t2749 * t2999 + t2762 * t3003;
t3109 = t2749 * t3003 - t2762 * t2999;
t2747 = t2995 * t2804 + t2993 * t3032;
t2845 = t3009 + t3058;
t3041 = t2996 * t2907 - t3000 * t3010;
t3012 = (-qJD(5) + t2942) * t2926 - t3041;
t3074 = -t2845 * t3000 + t2996 * t3012;
t2885 = t2924 ^ 2;
t2871 = t2923 + t2885;
t3073 = t2845 * t2996 + t3000 * t3012;
t3086 = -t2871 * t2997 + t3001 * t3073;
t3091 = t2992 * t3074 + t2994 * t3086;
t3092 = t2992 * t3086 - t2994 * t3074;
t3098 = -t2998 * t3092 + t3002 * t3091;
t3085 = t2871 * t3001 + t2997 * t3073;
t3097 = t2998 * t3091 + t3002 * t3092;
t3099 = -t2993 * t3085 + t2995 * t3097;
t3106 = -t2999 * t3099 + t3003 * t3098;
t3105 = t2999 * t3098 + t3003 * t3099;
t3100 = t2993 * t3097 + t2995 * t3085;
t2861 = t3013 - t3059;
t3075 = -t3072 - t2885;
t3080 = t2861 * t3000 + t2996 * t3075;
t3090 = t2992 * t3080;
t3089 = t2994 * t3080;
t3079 = -t2861 * t2996 + t3000 * t3075;
t3088 = t2997 * t3079;
t3087 = t3001 * t3079;
t3055 = t2957 * t2986;
t2918 = t2937 - t3055;
t3071 = t2943 ^ 2;
t3070 = t2945 ^ 2;
t3069 = t2955 ^ 2;
t3068 = t2957 ^ 2;
t3067 = t2959 ^ 2;
t3066 = t2986 ^ 2;
t3065 = -2 * qJD(3);
t3057 = t2945 * t2943;
t3056 = t2957 * t2959;
t3054 = t2986 * t2959;
t3004 = qJD(1) ^ 2;
t3053 = t2993 ^ 2 * t3004;
t2977 = t2999 * g(1) - g(2) * t3003;
t2963 = pkin(8) * t2993 * t3004 + qJDD(1) * pkin(1) + t2977;
t3051 = t2995 * t2963;
t2978 = -g(1) * t3003 - g(2) * t2999;
t2964 = -pkin(1) * t3004 + pkin(8) * t3047 + t2978;
t3050 = t2998 * t2964;
t3049 = qJD(4) - t2955;
t2929 = -g(3) * t3052 + t3002 * t2964 + t2998 * t3051;
t3014 = pkin(2) * t2986 - qJ(3) * t3046;
t2991 = t3002 ^ 2;
t3044 = t2991 * t3053;
t2895 = -pkin(2) * t3044 - qJ(3) * t3016 - t2986 * t3014 + t2929;
t3043 = t2998 * t3053;
t3007 = -t3050 - t3048 * qJ(3) + t2985 * pkin(2) + (pkin(2) * t3043 + t3051 + (qJ(3) * qJD(1) * t2986 - g(3)) * t2993) * t3002;
t2856 = t2994 * t2895 + t2957 * t3065 + t2992 * t3007;
t2935 = pkin(3) * t2957 - pkin(9) * t2959;
t2840 = -pkin(3) * t3066 + pkin(9) * t2985 - t2935 * t2957 + t2856;
t2950 = -t2995 * g(3) - t2993 * t2963;
t2913 = pkin(2) * t3016 - qJ(3) * t3044 + t3014 * t3046 + qJDD(3) + t2950;
t2916 = t3011 + t3054;
t3005 = t2916 * pkin(3) - pkin(9) * t2918 + t2913;
t2819 = t3001 * t2840 + t2997 * t3005;
t2914 = pkin(4) * t2943 - pkin(10) * t2945;
t2802 = -pkin(4) * t3069 + pkin(10) * t3010 - t2943 * t2914 + t2819;
t3042 = t2992 * t2895 - t2994 * t3007;
t2839 = -t2985 * pkin(3) - t3066 * pkin(9) + ((2 * qJD(3)) + t2935) * t2959 + t3042;
t2874 = (qJD(4) + t2955) * t2945 + t3039;
t3040 = t2955 * t2943 - t2907;
t3006 = pkin(4) * t2874 + pkin(10) * t3040 + t2839;
t2774 = t3000 * t2802 + t2996 * t3006;
t2773 = -t2802 * t2996 + t3000 * t3006;
t2818 = -t2997 * t2840 + t3001 * t3005;
t3038 = t2986 * t3045;
t2884 = pkin(5) * t2924 - qJ(6) * t2926;
t2764 = -pkin(5) * t3072 + qJ(6) * t3013 + 0.2e1 * qJD(6) * t2942 - t2924 * t2884 + t2774;
t2765 = -pkin(5) * t3013 - qJ(6) * t3072 + t2884 * t2926 + qJDD(6) - t2773;
t2746 = t2764 * t3000 + t2765 * t2996;
t2801 = -t3010 * pkin(4) - t3069 * pkin(10) + t2945 * t2914 - t2818;
t3015 = -qJD(5) * t2926 - t3041;
t2772 = -t3015 * pkin(5) + (pkin(5) * t2942 - 0.2e1 * qJD(6)) * t2926 + t2801 - t3008 * qJ(6);
t2736 = t2746 * t3001 + t2772 * t2997;
t2745 = t2764 * t2996 - t2765 * t3000;
t2731 = t2736 * t2992 - t2745 * t2994;
t2732 = t2736 * t2994 + t2745 * t2992;
t3037 = t2731 * t3002 + t2732 * t2998;
t2759 = -t2773 * t2996 + t2774 * t3000;
t2744 = t2759 * t3001 + t2801 * t2997;
t2758 = t2773 * t3000 + t2774 * t2996;
t2733 = t2744 * t2992 - t2758 * t2994;
t2734 = t2744 * t2994 + t2758 * t2992;
t3036 = t2733 * t3002 + t2734 * t2998;
t2782 = -t2818 * t2997 + t2819 * t3001;
t2770 = t2782 * t2992 - t2839 * t2994;
t2771 = t2782 * t2994 + t2839 * t2992;
t3033 = t2770 * t3002 + t2771 * t2998;
t2841 = (qJD(5) + t2942) * t2926 + t3041;
t2807 = t2841 * t2997 + t3087;
t2778 = t2807 * t2992 - t3089;
t2780 = t2807 * t2994 + t3090;
t3031 = t2778 * t3002 + t2780 * t2998;
t2842 = t2942 * t2926 - t3015;
t2811 = t2842 * t2997 + t3087;
t2786 = t2811 * t2992 - t3089;
t2788 = t2811 * t2994 + t3090;
t3029 = t2786 * t3002 + t2788 * t2998;
t2855 = t2959 * t3065 - t3042;
t2820 = t2855 * t2994 + t2856 * t2992;
t2821 = -t2855 * t2992 + t2856 * t2994;
t3028 = t2820 * t3002 + t2821 * t2998;
t2875 = -t2945 * t3049 - t3039;
t2877 = t2943 * t3049 + t3020;
t2849 = t2875 * t3001 - t2877 * t2997;
t2894 = -t3070 - t3071;
t2822 = t2849 * t2992 - t2894 * t2994;
t2823 = t2849 * t2994 + t2894 * t2992;
t3027 = t2822 * t3002 + t2823 * t2998;
t2886 = t3010 - t3057;
t2904 = -t3069 - t3071;
t2864 = -t2886 * t2997 + t2904 * t3001;
t2830 = t2864 * t2992 - t2874 * t2994;
t2831 = t2864 * t2994 + t2874 * t2992;
t3026 = t2830 * t3002 + t2831 * t2998;
t2887 = -t3010 - t3057;
t2910 = -t3069 - t3070;
t2868 = t2887 * t3001 - t2910 * t2997;
t2836 = t2868 * t2992 + t2994 * t3040;
t2837 = t2868 * t2994 - t2992 * t3040;
t3025 = t2836 * t3002 + t2837 * t2998;
t2917 = -t3011 + t3054;
t2919 = -t2937 - t3055;
t2878 = t2917 * t2992 + t2919 * t2994;
t2879 = t2917 * t2994 - t2919 * t2992;
t3024 = t2878 * t3002 + t2879 * t2998;
t2930 = -t3066 - t3068;
t2931 = t2985 - t3056;
t2889 = t2930 * t2992 + t2931 * t2994;
t2890 = t2930 * t2994 - t2931 * t2992;
t3023 = t2889 * t3002 + t2890 * t2998;
t2932 = -t2985 - t3056;
t2941 = -t3066 - t3067;
t2902 = t2932 * t2992 + t2941 * t2994;
t2903 = t2932 * t2994 - t2941 * t2992;
t3022 = t2902 * t3002 + t2903 * t2998;
t2928 = -t3050 + (-g(3) * t2993 + t3051) * t3002;
t3021 = t2928 * t3002 + t2929 * t2998;
t2947 = t3038 - t3048;
t2970 = t2986 * t3046;
t2948 = t2970 - t3016;
t3019 = t2947 * t3002 + t2948 * t2998;
t2990 = t2998 ^ 2;
t2956 = -t2990 * t3053 - t3066;
t2976 = t3002 * t3043;
t2966 = t2976 - t2985;
t3018 = t2956 * t3002 + t2966 * t2998;
t2965 = t2976 + t2985;
t2967 = -t3066 - t3044;
t3017 = t2965 * t3002 + t2967 * t2998;
t2975 = -qJDD(1) * t2999 - t3003 * t3004;
t2974 = qJDD(1) * t3003 - t2999 * t3004;
t2968 = (-t2990 - t2991) * t3053;
t2949 = t2970 + t3016;
t2946 = t3038 + t3048;
t2938 = -t2965 * t2998 + t2967 * t3002;
t2933 = -t2956 * t2998 + t2966 * t3002;
t2922 = -t3067 - t3068;
t2920 = -t2947 * t2998 + t2948 * t3002;
t2912 = -t2993 * t2949 + t2995 * t3017;
t2911 = t2995 * t2949 + t2993 * t3017;
t2909 = -t2993 * t2946 + t2995 * t3018;
t2908 = t2995 * t2946 + t2993 * t3018;
t2906 = -t2993 * t2968 + t2995 * t3019;
t2905 = t2995 * t2968 + t2993 * t3019;
t2888 = -t2928 * t2998 + t2929 * t3002;
t2881 = -t2993 * t2950 + t2995 * t3021;
t2880 = t2995 * t2950 + t2993 * t3021;
t2869 = -t2902 * t2998 + t2903 * t3002;
t2867 = t2887 * t2997 + t2910 * t3001;
t2863 = t2886 * t3001 + t2904 * t2997;
t2859 = -t2889 * t2998 + t2890 * t3002;
t2854 = -t2993 * t2918 + t2995 * t3022;
t2853 = t2995 * t2918 + t2993 * t3022;
t2852 = -t2878 * t2998 + t2879 * t3002;
t2851 = -t2993 * t2916 + t2995 * t3023;
t2850 = t2995 * t2916 + t2993 * t3023;
t2848 = t2875 * t2997 + t2877 * t3001;
t2829 = -t2993 * t2922 + t2995 * t3024;
t2828 = t2995 * t2922 + t2993 * t3024;
t2809 = -t2842 * t3001 + t3088;
t2805 = -t2841 * t3001 + t3088;
t2803 = -t2836 * t2998 + t2837 * t3002;
t2799 = -t2830 * t2998 + t2831 * t3002;
t2794 = -t2822 * t2998 + t2823 * t3002;
t2793 = -t2993 * t2867 + t2995 * t3025;
t2792 = t2995 * t2867 + t2993 * t3025;
t2791 = -t2993 * t2863 + t2995 * t3026;
t2790 = t2995 * t2863 + t2993 * t3026;
t2789 = -t2820 * t2998 + t2821 * t3002;
t2784 = -t2993 * t2913 + t2995 * t3028;
t2783 = t2995 * t2913 + t2993 * t3028;
t2781 = t2818 * t3001 + t2819 * t2997;
t2776 = -t2993 * t2848 + t2995 * t3027;
t2775 = t2995 * t2848 + t2993 * t3027;
t2763 = -t2786 * t2998 + t2788 * t3002;
t2761 = -t2778 * t2998 + t2780 * t3002;
t2757 = -t2993 * t2809 + t2995 * t3029;
t2755 = t2995 * t2809 + t2993 * t3029;
t2753 = -t2770 * t2998 + t2771 * t3002;
t2750 = -t2993 * t2805 + t2995 * t3031;
t2748 = t2995 * t2805 + t2993 * t3031;
t2743 = t2759 * t2997 - t2801 * t3001;
t2738 = -t2993 * t2781 + t2995 * t3033;
t2737 = t2995 * t2781 + t2993 * t3033;
t2735 = t2746 * t2997 - t2772 * t3001;
t2730 = -t2733 * t2998 + t2734 * t3002;
t2729 = -t2993 * t2743 + t2995 * t3036;
t2728 = t2995 * t2743 + t2993 * t3036;
t2727 = -t2731 * t2998 + t2732 * t3002;
t2726 = -t2993 * t2735 + t2995 * t3037;
t2725 = t2995 * t2735 + t2993 * t3037;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t2975, -t2974, 0, -t2977 * t2999 + t2978 * t3003, 0, 0, 0, 0, 0, 0, -t2912 * t2999 + t2938 * t3003, -t2909 * t2999 + t2933 * t3003, -t2906 * t2999 + t2920 * t3003, -t2881 * t2999 + t2888 * t3003, 0, 0, 0, 0, 0, 0, -t2851 * t2999 + t2859 * t3003, -t2854 * t2999 + t2869 * t3003, -t2829 * t2999 + t2852 * t3003, -t2784 * t2999 + t2789 * t3003, 0, 0, 0, 0, 0, 0, -t2791 * t2999 + t2799 * t3003, -t2793 * t2999 + t2803 * t3003, -t2776 * t2999 + t2794 * t3003, -t2738 * t2999 + t2753 * t3003, 0, 0, 0, 0, 0, 0, -t2750 * t2999 + t2761 * t3003, t3110, t3106, -t2729 * t2999 + t2730 * t3003, 0, 0, 0, 0, 0, 0, -t2757 * t2999 + t2763 * t3003, t3106, -t3110, -t2726 * t2999 + t2727 * t3003; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t2974, t2975, 0, t2977 * t3003 + t2978 * t2999, 0, 0, 0, 0, 0, 0, t2912 * t3003 + t2938 * t2999, t2909 * t3003 + t2933 * t2999, t2906 * t3003 + t2920 * t2999, t2881 * t3003 + t2888 * t2999, 0, 0, 0, 0, 0, 0, t2851 * t3003 + t2859 * t2999, t2854 * t3003 + t2869 * t2999, t2829 * t3003 + t2852 * t2999, t2784 * t3003 + t2789 * t2999, 0, 0, 0, 0, 0, 0, t2791 * t3003 + t2799 * t2999, t2793 * t3003 + t2803 * t2999, t2776 * t3003 + t2794 * t2999, t2738 * t3003 + t2753 * t2999, 0, 0, 0, 0, 0, 0, t2750 * t3003 + t2761 * t2999, -t3109, t3105, t2729 * t3003 + t2730 * t2999, 0, 0, 0, 0, 0, 0, t2757 * t3003 + t2763 * t2999, t3105, t3109, t2726 * t3003 + t2727 * t2999; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2911, t2908, t2905, t2880, 0, 0, 0, 0, 0, 0, t2850, t2853, t2828, t2783, 0, 0, 0, 0, 0, 0, t2790, t2792, t2775, t2737, 0, 0, 0, 0, 0, 0, t2748, -t2747, t3100, t2728, 0, 0, 0, 0, 0, 0, t2755, t3100, t2747, t2725; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t3004, -qJDD(1), 0, t2978, 0, 0, 0, 0, 0, 0, t2938, t2933, t2920, t2888, 0, 0, 0, 0, 0, 0, t2859, t2869, t2852, t2789, 0, 0, 0, 0, 0, 0, t2799, t2803, t2794, t2753, 0, 0, 0, 0, 0, 0, t2761, t2762, t3098, t2730, 0, 0, 0, 0, 0, 0, t2763, t3098, -t2762, t2727; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t3004, 0, t2977, 0, 0, 0, 0, 0, 0, t2912, t2909, t2906, t2881, 0, 0, 0, 0, 0, 0, t2851, t2854, t2829, t2784, 0, 0, 0, 0, 0, 0, t2791, t2793, t2776, t2738, 0, 0, 0, 0, 0, 0, t2750, -t2749, t3099, t2729, 0, 0, 0, 0, 0, 0, t2757, t3099, t2749, t2726; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2911, t2908, t2905, t2880, 0, 0, 0, 0, 0, 0, t2850, t2853, t2828, t2783, 0, 0, 0, 0, 0, 0, t2790, t2792, t2775, t2737, 0, 0, 0, 0, 0, 0, t2748, -t2747, t3100, t2728, 0, 0, 0, 0, 0, 0, t2755, t3100, t2747, t2725; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2967, t2966, t2948, t2929, 0, 0, 0, 0, 0, 0, t2890, t2903, t2879, t2821, 0, 0, 0, 0, 0, 0, t2831, t2837, t2823, t2771, 0, 0, 0, 0, 0, 0, t2780, -t2779, t3091, t2734, 0, 0, 0, 0, 0, 0, t2788, t3091, t2779, t2732; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2965, t2956, t2947, t2928, 0, 0, 0, 0, 0, 0, t2889, t2902, t2878, t2820, 0, 0, 0, 0, 0, 0, t2830, t2836, t2822, t2770, 0, 0, 0, 0, 0, 0, t2778, -t2777, t3092, t2733, 0, 0, 0, 0, 0, 0, t2786, t3092, t2777, t2731; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2949, t2946, t2968, t2950, 0, 0, 0, 0, 0, 0, t2916, t2918, t2922, t2913, 0, 0, 0, 0, 0, 0, t2863, t2867, t2848, t2781, 0, 0, 0, 0, 0, 0, t2805, -t2804, t3085, t2743, 0, 0, 0, 0, 0, 0, t2809, t3085, t2804, t2735; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2930, t2932, t2917, t2856, 0, 0, 0, 0, 0, 0, t2864, t2868, t2849, t2782, 0, 0, 0, 0, 0, 0, t2807, -t2806, t3086, t2744, 0, 0, 0, 0, 0, 0, t2811, t3086, t2806, t2736; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2931, t2941, t2919, t2855, 0, 0, 0, 0, 0, 0, -t2874, t3040, -t2894, -t2839, 0, 0, 0, 0, 0, 0, -t3080, t2824, -t3074, -t2758, 0, 0, 0, 0, 0, 0, -t3080, -t3074, -t2824, -t2745; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2916, t2918, t2922, t2913, 0, 0, 0, 0, 0, 0, t2863, t2867, t2848, t2781, 0, 0, 0, 0, 0, 0, t2805, -t2804, t3085, t2743, 0, 0, 0, 0, 0, 0, t2809, t3085, t2804, t2735; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2904, t2887, t2875, t2819, 0, 0, 0, 0, 0, 0, t3079, -t2826, t3073, t2759, 0, 0, 0, 0, 0, 0, t3079, t3073, t2826, t2746; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2886, t2910, t2877, t2818, 0, 0, 0, 0, 0, 0, -t2841, -t3008, t2871, -t2801, 0, 0, 0, 0, 0, 0, -t2842, t2871, t3008, -t2772; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2874, -t3040, t2894, t2839, 0, 0, 0, 0, 0, 0, t3080, -t2824, t3074, t2758, 0, 0, 0, 0, 0, 0, t3080, t3074, t2824, t2745; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3075, -t2860, t3012, t2774, 0, 0, 0, 0, 0, 0, t3075, t3012, t2860, t2764; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2861, t3076, -t2845, t2773, 0, 0, 0, 0, 0, 0, t2861, -t2845, -t3076, -t2765; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2841, t3008, -t2871, t2801, 0, 0, 0, 0, 0, 0, t2842, -t2871, -t3008, t2772; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3075, t3012, t2860, t2764; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2842, -t2871, -t3008, t2772; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t2861, t2845, t3076, t2765;];
f_new_reg  = t1;