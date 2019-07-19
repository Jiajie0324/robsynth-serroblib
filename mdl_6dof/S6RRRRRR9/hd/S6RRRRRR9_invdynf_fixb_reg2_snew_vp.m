% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRRRRR9
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d5,d6]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-08 16:27
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRRRRR9_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR9_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRR9_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRR9_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRR9_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RRRRRR9_invdynf_fixb_reg2_snew_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 16:26:20
% EndTime: 2019-05-08 16:26:53
% DurationCPUTime: 33.58s
% Computational Cost: add. (454441->427), mult. (1118863->677), div. (0->0), fcn. (958562->16), ass. (0->369)
t3038 = cos(pkin(6));
t3029 = qJD(1) * t3038 + qJD(2);
t3043 = sin(qJ(2));
t3048 = cos(qJ(3));
t3049 = cos(qJ(2));
t3037 = cos(pkin(7));
t3042 = sin(qJ(3));
t3127 = t3037 * t3042;
t3035 = sin(pkin(7));
t3130 = t3035 * t3042;
t3036 = sin(pkin(6));
t3141 = qJD(1) * t3036;
t2992 = t3029 * t3130 + (t3043 * t3048 + t3049 * t3127) * t3141;
t3129 = t3036 * t3043;
t3119 = qJD(1) * t3129;
t3121 = qJDD(1) * t3036;
t3011 = -qJD(2) * t3119 + t3049 * t3121;
t3028 = t3038 * qJDD(1) + qJDD(2);
t3073 = t3011 * t3037 + t3028 * t3035;
t3128 = t3036 * t3049;
t3118 = qJD(1) * t3128;
t3122 = qJD(2) * t3118 + t3043 * t3121;
t3063 = -t2992 * qJD(3) - t3042 * t3122 + t3048 * t3073;
t3059 = qJDD(4) - t3063;
t3051 = qJD(1) ^ 2;
t3131 = t3036 ^ 2 * t3051;
t3160 = t3043 * t3131;
t3044 = sin(qJ(1));
t3050 = cos(qJ(1));
t3024 = -g(1) * t3050 - g(2) * t3044;
t3061 = -pkin(1) * t3051 + pkin(9) * t3121 + t3024;
t3057 = t3043 * t3061;
t3023 = t3044 * g(1) - g(2) * t3050;
t3064 = pkin(9) * t3036 * t3051 + qJDD(1) * pkin(1) + t3023;
t3060 = t3038 * t3064;
t2981 = -t3057 + (-t3036 * g(3) + t3060) * t3049;
t2999 = -t3038 * g(3) - t3036 * t3064;
t3158 = t3029 * t3035 + t3037 * t3118;
t3066 = t3158 * pkin(10);
t3055 = -t3011 * pkin(2) + (-pkin(10) * t3037 * t3119 + pkin(2) * t3029) * t3119 - t3066 * t3118 + t2999;
t3143 = pkin(10) * t3035;
t3072 = -pkin(2) * t3049 - t3043 * t3143;
t3068 = t3072 * t3141;
t3132 = t3029 * t3037;
t3120 = pkin(10) * t3132;
t3142 = t3028 * pkin(2);
t3144 = t3029 ^ 2;
t3159 = t3037 * (t3142 + (t3035 * t3144 - t3037 * t3122) * pkin(10) + (-t3043 * t3068 + t3049 * t3120) * t3141 + t2981) + t3035 * (-t3122 * t3143 + t3055);
t2990 = t3042 * t3119 - t3048 * t3158;
t3069 = qJD(4) + t2990;
t3067 = t3069 ^ 2;
t3004 = -t3035 * t3118 + qJD(3) + t3132;
t3041 = sin(qJ(4));
t3047 = cos(qJ(4));
t2978 = t2992 * t3041 - t3047 * t3004;
t2977 = qJD(5) + t2978;
t2976 = qJD(6) + t2977;
t3157 = qJD(6) + t2976;
t2966 = -t2990 * qJD(3) + t3011 * t3127 + t3028 * t3130 + t3048 * t3122;
t2994 = -t3011 * t3035 + t3037 * t3028 + qJDD(3);
t3078 = -t3047 * t2966 - t3041 * t2994;
t2933 = -t2978 * qJD(4) - t3078;
t3156 = t2978 * t3069 - t2933;
t2980 = t2992 * t3047 + t3004 * t3041;
t3040 = sin(qJ(5));
t3046 = cos(qJ(5));
t2956 = t2980 * t3040 - t3046 * t3069;
t2958 = t3046 * t2980 + t3040 * t3069;
t3039 = sin(qJ(6));
t3045 = cos(qJ(6));
t2929 = t3045 * t2956 + t2958 * t3039;
t3155 = t2929 ^ 2;
t2931 = -t2956 * t3039 + t2958 * t3045;
t3154 = t2931 ^ 2;
t3153 = t2956 ^ 2;
t3152 = t2958 ^ 2;
t3151 = t2976 ^ 2;
t3150 = t2977 ^ 2;
t3149 = t2978 ^ 2;
t3148 = t2980 ^ 2;
t3147 = t2990 ^ 2;
t3146 = t2992 ^ 2;
t3145 = t3004 ^ 2;
t3140 = t2929 * t2931;
t3139 = t2956 * t2958;
t3138 = t2977 * t2956;
t3137 = t2978 * t2980;
t3136 = t2990 * t2992;
t3135 = t2990 * t3004;
t3134 = t3004 * t2992;
t3126 = qJD(5) - t2977;
t3125 = qJD(6) - t2976;
t3123 = t3043 * t3060 + t3049 * t3061;
t2949 = -t3144 * pkin(2) + t3073 * pkin(10) + (-t3043 * g(3) + (t3043 * t3120 + t3049 * t3068) * qJD(1)) * t3036 + t3123;
t2907 = t3048 * t2949 + t3042 * t3159;
t2974 = pkin(3) * t2990 - pkin(11) * t2992;
t2894 = -pkin(3) * t3145 + pkin(11) * t2994 - t2974 * t2990 + t2907;
t2925 = -t3035 * (-g(3) * t3128 + t3029 * t3066 + t3049 * t3060 - t3072 * t3160 - t3057 + t3142) + t3037 * t3055;
t2939 = -t3063 + t3134;
t3114 = -t2966 + t3135;
t3052 = pkin(3) * t2939 + pkin(11) * t3114 + t2925;
t2860 = t3047 * t2894 + t3041 * t3052;
t2950 = pkin(4) * t2978 - pkin(12) * t2980;
t2839 = -pkin(4) * t3067 + pkin(12) * t3059 - t2978 * t2950 + t2860;
t3111 = t3042 * t2949 - t3048 * t3159;
t2893 = -t2994 * pkin(3) - t3145 * pkin(11) + t2992 * t2974 + t3111;
t3115 = t3041 * t2966 - t3047 * t2994;
t2919 = (0.2e1 * qJD(4) + t2990) * t2980 + t3115;
t2852 = t2919 * pkin(4) + pkin(12) * t3156 + t2893;
t2821 = t3046 * t2839 + t3040 * t2852;
t2820 = -t3040 * t2839 + t3046 * t2852;
t2859 = -t2894 * t3041 + t3047 * t3052;
t3056 = -t3046 * t2933 - t3040 * t3059;
t2905 = -t2956 * qJD(5) - t3056;
t3116 = t2933 * t3040 - t3046 * t3059;
t3071 = qJD(5) * t2958 + t3116;
t3117 = -t2905 * t3039 - t3045 * t3071;
t3113 = t3029 * t3118;
t3070 = t2980 * qJD(4) + qJDD(5) + t3115;
t2901 = t3070 - t3139;
t2800 = (-t2905 - t3138) * pkin(13) + t2901 * pkin(5) + t2820;
t2936 = pkin(5) * t2977 - pkin(13) * t2958;
t2803 = -pkin(5) * t3153 - pkin(13) * t3071 - t2977 * t2936 + t2821;
t2779 = t2800 * t3045 - t2803 * t3039;
t2780 = t2800 * t3039 + t2803 * t3045;
t2761 = t2779 * t3045 + t2780 * t3039;
t2762 = -t2779 * t3039 + t2780 * t3045;
t2751 = -t2761 * t3040 + t2762 * t3046;
t2838 = -t3059 * pkin(4) - t3067 * pkin(12) + t2950 * t2980 - t2859;
t2826 = pkin(5) * t3071 - pkin(13) * t3153 + t2936 * t2958 + t2838;
t2747 = t2751 * t3041 - t2826 * t3047;
t2748 = t2751 * t3047 + t2826 * t3041;
t2750 = t2761 * t3046 + t2762 * t3040;
t3109 = t2748 * t3042 - t2750 * t3048;
t2740 = -t2747 * t3035 + t3037 * t3109;
t2741 = t2748 * t3048 + t2750 * t3042;
t3110 = t2740 * t3049 + t2741 * t3043;
t2791 = -t2820 * t3040 + t2821 * t3046;
t2782 = t2791 * t3041 - t2838 * t3047;
t2783 = t2791 * t3047 + t2838 * t3041;
t2790 = t2820 * t3046 + t2821 * t3040;
t3104 = t2783 * t3042 - t2790 * t3048;
t2757 = -t2782 * t3035 + t3037 * t3104;
t2766 = t2783 * t3048 + t2790 * t3042;
t3108 = t2757 * t3049 + t2766 * t3043;
t2843 = -t2931 * t3125 + t3117;
t3058 = -t3045 * t2905 + t3039 * t3071;
t2845 = t2929 * t3125 + t3058;
t2817 = t2843 * t3039 + t2845 * t3045;
t2818 = t2843 * t3045 - t2845 * t3039;
t2789 = -t2817 * t3040 + t2818 * t3046;
t2880 = -t3154 - t3155;
t2784 = t2789 * t3041 - t2880 * t3047;
t2785 = t2789 * t3047 + t2880 * t3041;
t2788 = t2817 * t3046 + t2818 * t3040;
t3103 = t2785 * t3042 - t2788 * t3048;
t2759 = -t2784 * t3035 + t3037 * t3103;
t2767 = t2785 * t3048 + t2788 * t3042;
t3107 = t2759 * t3049 + t2767 * t3043;
t3065 = -qJDD(6) - t3070;
t2883 = -t3065 - t3140;
t2898 = -t3151 - t3155;
t2857 = t2883 * t3045 + t2898 * t3039;
t2858 = -t2883 * t3039 + t2898 * t3045;
t2823 = -t2857 * t3040 + t2858 * t3046;
t2842 = t2931 * t3157 - t3117;
t2798 = t2823 * t3041 - t2842 * t3047;
t2799 = t2823 * t3047 + t2842 * t3041;
t2822 = t2857 * t3046 + t2858 * t3040;
t3100 = t2799 * t3042 - t2822 * t3048;
t2771 = -t2798 * t3035 + t3037 * t3100;
t2786 = t2799 * t3048 + t2822 * t3042;
t3106 = t2771 * t3049 + t2786 * t3043;
t2884 = t3065 - t3140;
t2914 = -t3151 - t3154;
t2867 = t2884 * t3039 + t2914 * t3045;
t2868 = t2884 * t3045 - t2914 * t3039;
t2829 = -t2867 * t3040 + t2868 * t3046;
t2844 = -t2929 * t3157 - t3058;
t2804 = t2829 * t3041 - t2844 * t3047;
t2805 = t2829 * t3047 + t2844 * t3041;
t2828 = t2867 * t3046 + t2868 * t3040;
t3099 = t2805 * t3042 - t2828 * t3048;
t2773 = -t2804 * t3035 + t3037 * t3099;
t2787 = t2805 * t3048 + t2828 * t3042;
t3105 = t2773 * t3049 + t2787 * t3043;
t2824 = t2859 * t3047 + t2860 * t3041;
t2825 = -t2859 * t3041 + t2860 * t3047;
t3096 = t2825 * t3042 - t2893 * t3048;
t2794 = -t2824 * t3035 + t3037 * t3096;
t2814 = t2825 * t3048 + t2893 * t3042;
t3102 = t2794 * t3049 + t2814 * t3043;
t2888 = -t2958 * t3126 - t3116;
t2890 = t2956 * t3126 + t3056;
t2856 = t2888 * t3046 - t2890 * t3040;
t2917 = -t3152 - t3153;
t2835 = t2856 * t3041 - t2917 * t3047;
t2836 = t2856 * t3047 + t2917 * t3041;
t2855 = t2888 * t3040 + t2890 * t3046;
t3095 = t2836 * t3042 - t2855 * t3048;
t2797 = -t2835 * t3035 + t3037 * t3095;
t2819 = t2836 * t3048 + t2855 * t3042;
t3101 = t2797 * t3049 + t2819 * t3043;
t2924 = -t3150 - t3153;
t2877 = -t2901 * t3040 + t2924 * t3046;
t2887 = (qJD(5) + t2977) * t2958 + t3116;
t2846 = t2877 * t3041 - t2887 * t3047;
t2847 = t2877 * t3047 + t2887 * t3041;
t2876 = t2901 * t3046 + t2924 * t3040;
t3093 = t2847 * t3042 - t2876 * t3048;
t2807 = -t2846 * t3035 + t3037 * t3093;
t2830 = t2847 * t3048 + t2876 * t3042;
t3098 = t2807 * t3049 + t2830 * t3043;
t2902 = -t3070 - t3139;
t2926 = -t3150 - t3152;
t2882 = t2902 * t3046 - t2926 * t3040;
t2889 = t2905 - t3138;
t2848 = t2882 * t3041 - t2889 * t3047;
t2849 = t2882 * t3047 + t2889 * t3041;
t2881 = t2902 * t3040 + t2926 * t3046;
t3092 = t2849 * t3042 - t2881 * t3048;
t2809 = -t2848 * t3035 + t3037 * t3092;
t2832 = t2849 * t3048 + t2881 * t3042;
t3097 = t2809 * t3049 + t2832 * t3043;
t2920 = t2980 * t2990 - t3115;
t2922 = -t2978 * t2990 + t3078;
t2885 = t2920 * t3041 + t2922 * t3047;
t2886 = t2920 * t3047 - t2922 * t3041;
t2934 = -t3148 - t3149;
t3088 = t2886 * t3042 - t2934 * t3048;
t2841 = -t2885 * t3035 + t3037 * t3088;
t2874 = t2886 * t3048 + t2934 * t3042;
t3094 = t2841 * t3049 + t2874 * t3043;
t2927 = t3059 - t3137;
t2938 = -t3067 - t3149;
t2908 = t2927 * t3047 + t2938 * t3041;
t2909 = -t2927 * t3041 + t2938 * t3047;
t3085 = t2909 * t3042 - t2919 * t3048;
t2862 = -t2908 * t3035 + t3037 * t3085;
t2878 = t2909 * t3048 + t2919 * t3042;
t3091 = t2862 * t3049 + t2878 * t3043;
t3086 = t2907 * t3042 - t3048 * t3111;
t2864 = -t2925 * t3035 + t3037 * t3086;
t2873 = t2907 * t3048 + t3042 * t3111;
t3090 = t2864 * t3049 + t2873 * t3043;
t2928 = -t3137 - t3059;
t2947 = -t3148 - t3067;
t2910 = t2928 * t3041 + t2947 * t3047;
t2911 = t2928 * t3047 - t2947 * t3041;
t3084 = t2911 * t3042 + t3048 * t3156;
t2866 = -t2910 * t3035 + t3037 * t3084;
t2879 = t2911 * t3048 - t3042 * t3156;
t3089 = t2866 * t3049 + t2879 * t3043;
t2955 = -t3146 - t3147;
t2940 = t3063 + t3134;
t2942 = -t2966 - t3135;
t3081 = t2940 * t3042 + t2942 * t3048;
t2900 = -t2955 * t3035 + t3037 * t3081;
t2918 = t2940 * t3048 - t2942 * t3042;
t3087 = t2900 * t3049 + t2918 * t3043;
t2961 = t2994 - t3136;
t2965 = -t3145 - t3147;
t3079 = t2961 * t3048 + t2965 * t3042;
t2913 = -t2939 * t3035 + t3037 * t3079;
t2932 = -t2961 * t3042 + t2965 * t3048;
t3083 = t2913 * t3049 + t2932 * t3043;
t2960 = -t2994 - t3136;
t2971 = -t3145 - t3146;
t3080 = t2960 * t3042 + t2971 * t3048;
t2916 = t3035 * t3114 + t3037 * t3080;
t2935 = t2960 * t3048 - t2971 * t3042;
t3082 = t2916 * t3049 + t2935 * t3043;
t2982 = -g(3) * t3129 + t3123;
t3077 = t2981 * t3049 + t2982 * t3043;
t2996 = t3113 - t3122;
t3014 = t3029 * t3119;
t2997 = t3011 + t3014;
t3076 = t2996 * t3049 + t2997 * t3043;
t3033 = t3043 ^ 2;
t3005 = -t3033 * t3131 - t3144;
t3022 = t3049 * t3160;
t3010 = t3022 - t3028;
t3075 = t3005 * t3049 + t3010 * t3043;
t3009 = t3022 + t3028;
t3034 = t3049 ^ 2;
t3012 = -t3034 * t3131 - t3144;
t3074 = t3009 * t3049 + t3012 * t3043;
t3021 = -qJDD(1) * t3044 - t3050 * t3051;
t3020 = qJDD(1) * t3050 - t3044 * t3051;
t3013 = (-t3033 - t3034) * t3131;
t2998 = -t3011 + t3014;
t2995 = t3113 + t3122;
t2985 = -t3009 * t3043 + t3012 * t3049;
t2983 = -t3005 * t3043 + t3010 * t3049;
t2975 = -t2996 * t3043 + t2997 * t3049;
t2973 = -t2998 * t3036 + t3038 * t3074;
t2972 = t2998 * t3038 + t3036 * t3074;
t2970 = -t2995 * t3036 + t3038 * t3075;
t2969 = t2995 * t3038 + t3036 * t3075;
t2968 = -t3013 * t3036 + t3038 * t3076;
t2967 = t3013 * t3038 + t3036 * t3076;
t2959 = -t2981 * t3043 + t2982 * t3049;
t2944 = -t2999 * t3036 + t3038 * t3077;
t2943 = t2999 * t3038 + t3036 * t3077;
t2915 = t3035 * t3080 - t3037 * t3114;
t2912 = t2939 * t3037 + t3035 * t3079;
t2899 = t2955 * t3037 + t3035 * t3081;
t2897 = -t2916 * t3043 + t2935 * t3049;
t2892 = -t2913 * t3043 + t2932 * t3049;
t2875 = -t2900 * t3043 + t2918 * t3049;
t2872 = -t2915 * t3036 + t3038 * t3082;
t2871 = t2915 * t3038 + t3036 * t3082;
t2870 = -t2912 * t3036 + t3038 * t3083;
t2869 = t2912 * t3038 + t3036 * t3083;
t2865 = t2910 * t3037 + t3035 * t3084;
t2863 = t2925 * t3037 + t3035 * t3086;
t2861 = t2908 * t3037 + t3035 * t3085;
t2854 = -t2899 * t3036 + t3038 * t3087;
t2853 = t2899 * t3038 + t3036 * t3087;
t2840 = t2885 * t3037 + t3035 * t3088;
t2834 = -t2866 * t3043 + t2879 * t3049;
t2833 = -t2862 * t3043 + t2878 * t3049;
t2831 = -t2864 * t3043 + t2873 * t3049;
t2827 = -t2841 * t3043 + t2874 * t3049;
t2816 = -t2865 * t3036 + t3038 * t3089;
t2815 = t2865 * t3038 + t3036 * t3089;
t2813 = -t2861 * t3036 + t3038 * t3091;
t2812 = t2861 * t3038 + t3036 * t3091;
t2811 = -t2863 * t3036 + t3038 * t3090;
t2810 = t2863 * t3038 + t3036 * t3090;
t2808 = t2848 * t3037 + t3035 * t3092;
t2806 = t2846 * t3037 + t3035 * t3093;
t2802 = -t2840 * t3036 + t3038 * t3094;
t2801 = t2840 * t3038 + t3036 * t3094;
t2796 = t2835 * t3037 + t3035 * t3095;
t2795 = -t2809 * t3043 + t2832 * t3049;
t2793 = t2824 * t3037 + t3035 * t3096;
t2792 = -t2807 * t3043 + t2830 * t3049;
t2781 = -t2797 * t3043 + t2819 * t3049;
t2778 = -t2794 * t3043 + t2814 * t3049;
t2777 = -t2808 * t3036 + t3038 * t3097;
t2776 = t2808 * t3038 + t3036 * t3097;
t2775 = -t2806 * t3036 + t3038 * t3098;
t2774 = t2806 * t3038 + t3036 * t3098;
t2772 = t2804 * t3037 + t3035 * t3099;
t2770 = t2798 * t3037 + t3035 * t3100;
t2769 = -t2796 * t3036 + t3038 * t3101;
t2768 = t2796 * t3038 + t3036 * t3101;
t2765 = -t2793 * t3036 + t3038 * t3102;
t2764 = t2793 * t3038 + t3036 * t3102;
t2763 = -t2773 * t3043 + t2787 * t3049;
t2760 = -t2771 * t3043 + t2786 * t3049;
t2758 = t2784 * t3037 + t3035 * t3103;
t2756 = t2782 * t3037 + t3035 * t3104;
t2755 = -t2772 * t3036 + t3038 * t3105;
t2754 = t2772 * t3038 + t3036 * t3105;
t2753 = -t2770 * t3036 + t3038 * t3106;
t2752 = t2770 * t3038 + t3036 * t3106;
t2749 = -t2759 * t3043 + t2767 * t3049;
t2746 = -t2757 * t3043 + t2766 * t3049;
t2745 = -t2758 * t3036 + t3038 * t3107;
t2744 = t2758 * t3038 + t3036 * t3107;
t2743 = -t2756 * t3036 + t3038 * t3108;
t2742 = t2756 * t3038 + t3036 * t3108;
t2739 = t2747 * t3037 + t3035 * t3109;
t2738 = -t2740 * t3043 + t2741 * t3049;
t2737 = -t2739 * t3036 + t3038 * t3110;
t2736 = t2739 * t3038 + t3036 * t3110;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t3021, -t3020, 0, -t3023 * t3044 + t3024 * t3050, 0, 0, 0, 0, 0, 0, -t2973 * t3044 + t2985 * t3050, -t2970 * t3044 + t2983 * t3050, -t2968 * t3044 + t2975 * t3050, -t2944 * t3044 + t2959 * t3050, 0, 0, 0, 0, 0, 0, -t2870 * t3044 + t2892 * t3050, -t2872 * t3044 + t2897 * t3050, -t2854 * t3044 + t2875 * t3050, -t2811 * t3044 + t2831 * t3050, 0, 0, 0, 0, 0, 0, -t2813 * t3044 + t2833 * t3050, -t2816 * t3044 + t2834 * t3050, -t2802 * t3044 + t2827 * t3050, -t2765 * t3044 + t2778 * t3050, 0, 0, 0, 0, 0, 0, -t2775 * t3044 + t2792 * t3050, -t2777 * t3044 + t2795 * t3050, -t2769 * t3044 + t2781 * t3050, -t2743 * t3044 + t2746 * t3050, 0, 0, 0, 0, 0, 0, -t2753 * t3044 + t2760 * t3050, -t2755 * t3044 + t2763 * t3050, -t2745 * t3044 + t2749 * t3050, -t2737 * t3044 + t2738 * t3050; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t3020, t3021, 0, t3023 * t3050 + t3024 * t3044, 0, 0, 0, 0, 0, 0, t2973 * t3050 + t2985 * t3044, t2970 * t3050 + t2983 * t3044, t2968 * t3050 + t2975 * t3044, t2944 * t3050 + t2959 * t3044, 0, 0, 0, 0, 0, 0, t2870 * t3050 + t2892 * t3044, t2872 * t3050 + t2897 * t3044, t2854 * t3050 + t2875 * t3044, t2811 * t3050 + t2831 * t3044, 0, 0, 0, 0, 0, 0, t2813 * t3050 + t2833 * t3044, t2816 * t3050 + t2834 * t3044, t2802 * t3050 + t2827 * t3044, t2765 * t3050 + t2778 * t3044, 0, 0, 0, 0, 0, 0, t2775 * t3050 + t2792 * t3044, t2777 * t3050 + t2795 * t3044, t2769 * t3050 + t2781 * t3044, t2743 * t3050 + t2746 * t3044, 0, 0, 0, 0, 0, 0, t2753 * t3050 + t2760 * t3044, t2755 * t3050 + t2763 * t3044, t2745 * t3050 + t2749 * t3044, t2737 * t3050 + t2738 * t3044; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2972, t2969, t2967, t2943, 0, 0, 0, 0, 0, 0, t2869, t2871, t2853, t2810, 0, 0, 0, 0, 0, 0, t2812, t2815, t2801, t2764, 0, 0, 0, 0, 0, 0, t2774, t2776, t2768, t2742, 0, 0, 0, 0, 0, 0, t2752, t2754, t2744, t2736; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t3051, -qJDD(1), 0, t3024, 0, 0, 0, 0, 0, 0, t2985, t2983, t2975, t2959, 0, 0, 0, 0, 0, 0, t2892, t2897, t2875, t2831, 0, 0, 0, 0, 0, 0, t2833, t2834, t2827, t2778, 0, 0, 0, 0, 0, 0, t2792, t2795, t2781, t2746, 0, 0, 0, 0, 0, 0, t2760, t2763, t2749, t2738; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t3051, 0, t3023, 0, 0, 0, 0, 0, 0, t2973, t2970, t2968, t2944, 0, 0, 0, 0, 0, 0, t2870, t2872, t2854, t2811, 0, 0, 0, 0, 0, 0, t2813, t2816, t2802, t2765, 0, 0, 0, 0, 0, 0, t2775, t2777, t2769, t2743, 0, 0, 0, 0, 0, 0, t2753, t2755, t2745, t2737; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t2972, t2969, t2967, t2943, 0, 0, 0, 0, 0, 0, t2869, t2871, t2853, t2810, 0, 0, 0, 0, 0, 0, t2812, t2815, t2801, t2764, 0, 0, 0, 0, 0, 0, t2774, t2776, t2768, t2742, 0, 0, 0, 0, 0, 0, t2752, t2754, t2744, t2736; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3012, t3010, t2997, t2982, 0, 0, 0, 0, 0, 0, t2932, t2935, t2918, t2873, 0, 0, 0, 0, 0, 0, t2878, t2879, t2874, t2814, 0, 0, 0, 0, 0, 0, t2830, t2832, t2819, t2766, 0, 0, 0, 0, 0, 0, t2786, t2787, t2767, t2741; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3009, t3005, t2996, t2981, 0, 0, 0, 0, 0, 0, t2913, t2916, t2900, t2864, 0, 0, 0, 0, 0, 0, t2862, t2866, t2841, t2794, 0, 0, 0, 0, 0, 0, t2807, t2809, t2797, t2757, 0, 0, 0, 0, 0, 0, t2771, t2773, t2759, t2740; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2998, t2995, t3013, t2999, 0, 0, 0, 0, 0, 0, t2912, t2915, t2899, t2863, 0, 0, 0, 0, 0, 0, t2861, t2865, t2840, t2793, 0, 0, 0, 0, 0, 0, t2806, t2808, t2796, t2756, 0, 0, 0, 0, 0, 0, t2770, t2772, t2758, t2739; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2965, t2960, t2940, t2907, 0, 0, 0, 0, 0, 0, t2909, t2911, t2886, t2825, 0, 0, 0, 0, 0, 0, t2847, t2849, t2836, t2783, 0, 0, 0, 0, 0, 0, t2799, t2805, t2785, t2748; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2961, t2971, t2942, -t3111, 0, 0, 0, 0, 0, 0, -t2919, t3156, -t2934, -t2893, 0, 0, 0, 0, 0, 0, -t2876, -t2881, -t2855, -t2790, 0, 0, 0, 0, 0, 0, -t2822, -t2828, -t2788, -t2750; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2939, -t3114, t2955, t2925, 0, 0, 0, 0, 0, 0, t2908, t2910, t2885, t2824, 0, 0, 0, 0, 0, 0, t2846, t2848, t2835, t2782, 0, 0, 0, 0, 0, 0, t2798, t2804, t2784, t2747; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2938, t2928, t2920, t2860, 0, 0, 0, 0, 0, 0, t2877, t2882, t2856, t2791, 0, 0, 0, 0, 0, 0, t2823, t2829, t2789, t2751; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2927, t2947, t2922, t2859, 0, 0, 0, 0, 0, 0, -t2887, -t2889, -t2917, -t2838, 0, 0, 0, 0, 0, 0, -t2842, -t2844, -t2880, -t2826; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2919, -t3156, t2934, t2893, 0, 0, 0, 0, 0, 0, t2876, t2881, t2855, t2790, 0, 0, 0, 0, 0, 0, t2822, t2828, t2788, t2750; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2924, t2902, t2888, t2821, 0, 0, 0, 0, 0, 0, t2858, t2868, t2818, t2762; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2901, t2926, t2890, t2820, 0, 0, 0, 0, 0, 0, t2857, t2867, t2817, t2761; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2887, t2889, t2917, t2838, 0, 0, 0, 0, 0, 0, t2842, t2844, t2880, t2826; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2898, t2884, t2843, t2780; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2883, t2914, t2845, t2779; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2842, t2844, t2880, t2826;];
f_new_reg  = t1;