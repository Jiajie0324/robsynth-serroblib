% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRRPRP1
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,theta4]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 07:28
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRRPRP1_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP1_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP1_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRP1_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRP1_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP1_invdynB_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 07:27:41
% EndTime: 2019-05-07 07:28:08
% DurationCPUTime: 26.72s
% Computational Cost: add. (200670->812), mult. (454241->1190), div. (0->0), fcn. (340572->10), ass. (0->581)
t1000 = cos(qJ(2));
t1052 = qJD(1) * t1000;
t1032 = qJD(2) * t1052;
t996 = sin(qJ(2));
t1051 = qJDD(1) * t996;
t959 = t1032 + t1051;
t1053 = qJD(1) * qJD(2);
t1038 = t996 * t1053;
t984 = t1000 * qJDD(1);
t960 = t984 - t1038;
t995 = sin(qJ(3));
t999 = cos(qJ(3));
t1026 = t995 * t959 - t999 * t960;
t950 = (t1000 * t995 + t996 * t999) * qJD(1);
t888 = -qJD(3) * t950 - t1026;
t1063 = qJD(1) * t996;
t949 = t1052 * t999 - t1063 * t995;
t889 = qJD(3) * t949 + t999 * t959 + t995 * t960;
t992 = sin(pkin(10));
t993 = cos(pkin(10));
t1027 = -t993 * t888 + t889 * t992;
t832 = qJDD(5) + t1027;
t914 = t992 * t949 + t993 * t950;
t989 = qJD(2) + qJD(3);
t994 = sin(qJ(5));
t998 = cos(qJ(5));
t883 = t914 * t994 - t998 * t989;
t885 = t914 * t998 + t989 * t994;
t836 = t885 * t883;
t778 = t832 - t836;
t1089 = t778 * t994;
t1088 = t778 * t998;
t1003 = qJD(1) ^ 2;
t1001 = cos(qJ(1));
t997 = sin(qJ(1));
t969 = t997 * g(1) - t1001 * g(2);
t1016 = qJDD(1) * pkin(1) + t969;
t1017 = qJD(2) * pkin(2) - pkin(8) * t1063;
t991 = t1000 ^ 2;
t891 = t960 * pkin(2) - t1017 * t1063 + t1016 + (pkin(8) * t991 + pkin(7)) * t1003;
t1123 = t778 * pkin(5);
t1048 = qJDD(2) + qJDD(3);
t920 = t949 * t950;
t1119 = t920 + t1048;
t1127 = t1119 * t995;
t1126 = t1119 * t999;
t912 = -t993 * t949 + t950 * t992;
t853 = t914 * t912;
t1120 = -t853 + t1048;
t1125 = t1120 * t992;
t1124 = t1120 * t993;
t1019 = pkin(3) * t989 - qJ(4) * t950;
t947 = t949 ^ 2;
t798 = t888 * pkin(3) + t947 * qJ(4) - t950 * t1019 - qJDD(4) + t891;
t1079 = t914 * t989;
t804 = t1027 + t1079;
t834 = t888 * t992 + t889 * t993;
t904 = t989 * t912;
t807 = t834 - t904;
t793 = -t883 * qJD(5) + t1048 * t994 + t998 * t834;
t908 = qJD(5) + t912;
t843 = t908 * t883;
t1122 = -t843 + t793;
t941 = t989 * t949;
t864 = -t889 + t941;
t1121 = t889 + t941;
t1002 = qJD(2) ^ 2;
t986 = t991 * t1003;
t975 = -t986 - t1002;
t1056 = t1003 * t996;
t970 = g(1) * t1001 + g(2) * t997;
t952 = -pkin(1) * t1003 + qJDD(1) * pkin(7) - t970;
t1069 = t996 * t952;
t1118 = (pkin(2) * t1056 + pkin(8) * t1053 - g(3)) * t1000 + qJDD(2) * pkin(2) - t959 * pkin(8) - t1069;
t865 = (qJD(3) - t989) * t950 + t1026;
t1028 = -t998 * t1048 + t994 * t834;
t763 = (qJD(5) - t908) * t885 + t1028;
t881 = t883 ^ 2;
t882 = t885 ^ 2;
t907 = t908 ^ 2;
t909 = t912 ^ 2;
t910 = t914 ^ 2;
t948 = t950 ^ 2;
t1117 = t989 ^ 2;
t816 = -t907 - t881;
t722 = t816 * t994 + t1088;
t1116 = pkin(4) * t722;
t779 = t832 + t836;
t1091 = t779 * t994;
t826 = -t882 - t907;
t729 = t826 * t998 - t1091;
t1115 = pkin(4) * t729;
t1114 = pkin(4) * t992;
t767 = -t843 - t793;
t698 = -t763 * t998 - t767 * t994;
t803 = -t881 - t882;
t662 = t698 * t992 - t803 * t993;
t663 = t698 * t993 + t803 * t992;
t612 = t662 * t999 + t663 * t995;
t613 = -t662 * t995 + t663 * t999;
t563 = t1000 * t613 - t612 * t996;
t696 = -t763 * t994 + t767 * t998;
t543 = -t1001 * t696 + t563 * t997;
t1113 = pkin(6) * t543;
t723 = t816 * t998 - t1089;
t762 = (qJD(5) + t908) * t885 + t1028;
t669 = t723 * t992 - t762 * t993;
t670 = t723 * t993 + t762 * t992;
t621 = t669 * t999 + t670 * t995;
t622 = -t669 * t995 + t670 * t999;
t573 = t1000 * t622 - t621 * t996;
t553 = -t1001 * t722 + t573 * t997;
t1112 = pkin(6) * t553;
t1090 = t779 * t998;
t730 = -t826 * t994 - t1090;
t680 = -t1122 * t993 + t730 * t992;
t681 = t1122 * t992 + t730 * t993;
t627 = t680 * t999 + t681 * t995;
t628 = -t680 * t995 + t681 * t999;
t577 = t1000 * t628 - t627 * t996;
t556 = -t1001 * t729 + t577 * t997;
t1111 = pkin(6) * t556;
t562 = t1000 * t612 + t613 * t996;
t1110 = pkin(7) * t562;
t572 = t1000 * t621 + t622 * t996;
t1109 = pkin(7) * t572;
t576 = t1000 * t627 + t628 * t996;
t1108 = pkin(7) * t576;
t1107 = pkin(8) * t612;
t1106 = pkin(8) * t621;
t1105 = pkin(8) * t627;
t1104 = pkin(9) * t696;
t1103 = pkin(9) * t722;
t1102 = pkin(9) * t729;
t1101 = qJ(4) * t662;
t1100 = qJ(4) * t669;
t1099 = qJ(4) * t680;
t935 = -t996 * g(3) + t1000 * t952;
t1005 = -pkin(2) * t986 + t960 * pkin(8) - qJD(2) * t1017 + t935;
t830 = t1005 * t995 - t1118 * t999;
t1004 = pkin(3) * t1119 + qJ(4) * t864 - t830;
t831 = t999 * t1005 + t1118 * t995;
t777 = -t947 * pkin(3) + t888 * qJ(4) - t1019 * t989 + t831;
t705 = -0.2e1 * qJD(4) * t912 + t992 * t1004 + t993 * t777;
t849 = pkin(4) * t912 - pkin(9) * t914;
t674 = -pkin(4) * t1117 + pkin(9) * t1048 - t912 * t849 + t705;
t710 = pkin(4) * t804 - pkin(9) * t807 - t798;
t1065 = -t994 * t674 + t998 * t710;
t1043 = t793 * qJ(6) - t1065;
t1015 = -qJ(6) * t843 - t1043;
t1061 = qJD(6) * t885;
t598 = t1015 - 0.2e1 * t1061 + t1123;
t1098 = t598 * t994;
t1097 = t598 * t998;
t1031 = -t993 * t1004 + t992 * t777;
t1062 = qJD(4) * t914;
t704 = t1031 + 0.2e1 * t1062;
t645 = -t704 * t993 + t705 * t992;
t1096 = t645 * t995;
t1095 = t645 * t999;
t1018 = -t1048 * pkin(4) - pkin(9) * t1117 + t1031;
t1025 = (0.2e1 * qJD(4) + t849) * t914;
t673 = t1025 + t1018;
t1094 = t673 * t994;
t1093 = t673 * t998;
t770 = -t830 * t999 + t831 * t995;
t1092 = t770 * t996;
t1087 = t798 * t992;
t1086 = t798 * t993;
t847 = t853 + t1048;
t1085 = t847 * t992;
t1084 = t847 * t993;
t1083 = t891 * t995;
t1082 = t891 * t999;
t1081 = t908 * t994;
t1080 = t908 * t998;
t917 = -t920 + t1048;
t1078 = t917 * t995;
t1077 = t917 * t999;
t951 = t1003 * pkin(7) + t1016;
t1076 = t951 * t996;
t977 = t1000 * t1056;
t967 = qJDD(2) + t977;
t1075 = t967 * t996;
t968 = qJDD(2) - t977;
t1074 = t968 * t996;
t1073 = t989 * t992;
t1072 = t989 * t993;
t1071 = t989 * t995;
t1070 = t989 * t999;
t1068 = -pkin(1) * t696 + pkin(7) * t563;
t1067 = -pkin(1) * t722 + pkin(7) * t573;
t1066 = -pkin(1) * t729 + pkin(7) * t577;
t641 = t998 * t674 + t994 * t710;
t990 = t996 ^ 2;
t1064 = t990 + t991;
t1060 = t1000 * t770;
t1059 = t1000 * t951;
t1058 = t1000 * t968;
t1057 = t1003 * t990;
t1050 = qJDD(1) * t997;
t1049 = qJDD(1) * t1001;
t1047 = t992 * t836;
t1046 = t993 * t836;
t1045 = t997 * t853;
t1044 = t997 * t920;
t1042 = -pkin(4) * t993 - pkin(3);
t1040 = t1001 * t853;
t1039 = t1001 * t920;
t1037 = -pkin(2) * t696 + pkin(8) * t613;
t1036 = -pkin(2) * t722 + pkin(8) * t622;
t1035 = -pkin(2) * t729 + pkin(8) * t628;
t1034 = -pkin(3) * t722 + qJ(4) * t670;
t1033 = -pkin(3) * t729 + qJ(4) * t681;
t646 = t704 * t992 + t993 * t705;
t771 = t830 * t995 + t999 * t831;
t934 = t1000 * g(3) + t1069;
t876 = t1000 * t935 + t934 * t996;
t926 = -t1001 * t970 - t969 * t997;
t1024 = t997 * t1048;
t1023 = t997 * t977;
t1022 = t1001 * t977;
t964 = -t997 * t1003 + t1049;
t1021 = -pkin(6) * t964 - g(3) * t997;
t582 = t1065 * t998 + t641 * t994;
t583 = -t1065 * t994 + t641 * t998;
t875 = t1000 * t934 - t935 * t996;
t925 = t1001 * t969 - t970 * t997;
t809 = t1027 - t1079;
t792 = -qJD(5) * t885 - t1028;
t838 = pkin(5) * t908 - qJ(6) * t885;
t1014 = t792 * qJ(6) - 0.2e1 * qJD(6) * t883 - t908 * t838 + t641;
t1010 = -pkin(1) * t562 - pkin(2) * t612 - pkin(3) * t662 + pkin(4) * t803 - pkin(9) * t698;
t1009 = -pkin(1) * t572 - pkin(2) * t621 - pkin(3) * t669 + pkin(4) * t762 - pkin(9) * t723;
t1008 = -pkin(1) * t576 - pkin(2) * t627 - pkin(3) * t680 + pkin(4) * t1122 - pkin(9) * t730;
t1007 = -t792 * pkin(5) - t881 * qJ(6) + t885 * t838 + qJDD(6) + t1018;
t644 = t1025 + t1007;
t979 = t1001 * t1048;
t974 = t986 - t1002;
t973 = -t1002 - t1057;
t972 = t1002 - t1057;
t966 = t986 - t1057;
t965 = t986 + t1057;
t963 = t1001 * t1003 + t1050;
t962 = t1064 * qJDD(1);
t961 = t984 - 0.2e1 * t1038;
t958 = 0.2e1 * t1032 + t1051;
t956 = t1000 * t967;
t955 = t1064 * t1053;
t946 = -pkin(6) * t963 + g(3) * t1001;
t939 = -t948 + t1117;
t938 = t947 - t1117;
t937 = t1000 * t959 - t1053 * t990;
t936 = -t1053 * t991 - t960 * t996;
t933 = -t948 - t1117;
t932 = -t973 * t996 - t1058;
t931 = -t972 * t996 + t956;
t930 = t1000 * t975 - t1075;
t929 = t1000 * t974 - t1074;
t928 = t1000 * t973 - t1074;
t927 = t975 * t996 + t956;
t923 = t1001 * t962 - t965 * t997;
t922 = t1001 * t965 + t962 * t997;
t921 = t1000 * t961 - t958 * t996;
t919 = -t948 + t947;
t915 = -t1117 - t947;
t902 = t1001 * t932 + t958 * t997;
t901 = t1001 * t930 - t961 * t997;
t900 = -t1001 * t958 + t932 * t997;
t899 = t1001 * t961 + t930 * t997;
t898 = -t910 + t1117;
t897 = t909 - t1117;
t896 = (t949 * t999 + t950 * t995) * t989;
t895 = (t949 * t995 - t950 * t999) * t989;
t894 = -pkin(7) * t928 - t1059;
t893 = -pkin(7) * t927 - t1076;
t892 = -t910 - t1117;
t890 = -t947 - t948;
t887 = -pkin(1) * t928 + t935;
t886 = -pkin(1) * t927 + t934;
t878 = 0.2e1 * t1061;
t871 = t938 * t999 - t1078;
t870 = -t939 * t995 + t1126;
t869 = t938 * t995 + t1077;
t868 = t939 * t999 + t1127;
t867 = -t933 * t995 - t1077;
t866 = t933 * t999 - t1078;
t860 = (qJD(3) + t989) * t950 + t1026;
t859 = -t1071 * t950 + t889 * t999;
t858 = t1070 * t950 + t889 * t995;
t857 = -t1070 * t949 - t888 * t995;
t856 = -t1071 * t949 + t888 * t999;
t855 = t1001 * t876 - t951 * t997;
t854 = t1001 * t951 + t876 * t997;
t852 = t915 * t999 - t1127;
t851 = t915 * t995 + t1126;
t850 = -t910 + t909;
t845 = -t1117 - t909;
t842 = -t882 + t907;
t841 = t881 - t907;
t840 = (-t912 * t993 + t914 * t992) * t989;
t839 = (-t912 * t992 - t914 * t993) * t989;
t837 = t1000 * t896 - t895 * t996;
t835 = -t882 + t881;
t829 = -t909 - t910;
t827 = -pkin(8) * t866 - t1082;
t825 = -pkin(8) * t851 - t1083;
t824 = t1000 * t871 - t869 * t996;
t823 = t1000 * t870 - t868 * t996;
t822 = t897 * t993 - t1085;
t821 = -t898 * t992 + t1124;
t820 = t897 * t992 + t1084;
t819 = t898 * t993 + t1125;
t818 = -t892 * t992 - t1084;
t817 = t892 * t993 - t1085;
t815 = t1000 * t867 - t866 * t996;
t814 = t1000 * t866 + t867 * t996;
t813 = -t864 * t995 - t865 * t999;
t812 = -t1121 * t995 - t860 * t999;
t811 = t864 * t999 - t865 * t995;
t810 = t1121 * t999 - t860 * t995;
t808 = -t834 - t904;
t802 = -t1073 * t914 + t834 * t993;
t801 = t1072 * t914 + t834 * t992;
t800 = t1027 * t992 + t1072 * t912;
t799 = -t1027 * t993 + t1073 * t912;
t797 = t1000 * t859 - t858 * t996;
t796 = t1000 * t857 - t856 * t996;
t795 = t1000 * t852 - t851 * t996;
t794 = t1000 * t851 + t852 * t996;
t788 = t845 * t993 - t1125;
t787 = t845 * t992 + t1124;
t786 = (-t883 * t998 + t885 * t994) * t908;
t785 = (t883 * t994 + t885 * t998) * t908;
t784 = -pkin(2) * t1121 + pkin(8) * t867 - t1083;
t783 = -t839 * t995 + t840 * t999;
t782 = t839 * t999 + t840 * t995;
t781 = -pkin(2) * t860 + pkin(8) * t852 + t1082;
t775 = t1001 * t815 + t1121 * t997;
t774 = -t1001 * t1121 + t815 * t997;
t769 = t1001 * t795 + t860 * t997;
t768 = -t1001 * t860 + t795 * t997;
t761 = -t1081 * t885 + t793 * t998;
t760 = -t1080 * t885 - t793 * t994;
t759 = t1080 * t883 - t792 * t994;
t758 = -t1081 * t883 - t792 * t998;
t757 = -t820 * t995 + t822 * t999;
t756 = -t819 * t995 + t821 * t999;
t755 = t820 * t999 + t822 * t995;
t754 = t819 * t999 + t821 * t995;
t753 = -t817 * t995 + t818 * t999;
t752 = t817 * t999 + t818 * t995;
t751 = pkin(2) * t891 + pkin(8) * t771;
t750 = t1000 * t813 - t811 * t996;
t749 = t1000 * t812 - t810 * t996;
t748 = t1000 * t811 + t813 * t996;
t747 = -qJ(4) * t817 - t1086;
t746 = t786 * t993 + t832 * t992;
t745 = t786 * t992 - t832 * t993;
t744 = -t808 * t992 - t809 * t993;
t743 = -t804 * t993 - t807 * t992;
t742 = t808 * t993 - t809 * t992;
t741 = -t804 * t992 + t807 * t993;
t740 = t841 * t998 - t1091;
t739 = -t842 * t994 + t1088;
t738 = -t841 * t994 - t1090;
t737 = -t842 * t998 - t1089;
t736 = -t801 * t995 + t802 * t999;
t735 = -t799 * t995 + t800 * t999;
t734 = t801 * t999 + t802 * t995;
t733 = t799 * t999 + t800 * t995;
t732 = -pkin(1) * t814 - pkin(2) * t866 + t831;
t731 = -qJ(4) * t787 - t1087;
t727 = t1001 * t750 + t890 * t997;
t726 = -t1001 * t890 + t750 * t997;
t725 = -t787 * t995 + t788 * t999;
t724 = t787 * t999 + t788 * t995;
t720 = -pkin(1) * t794 + t995 * t935 + t999 * t934 + (t995 * (t960 + t1038) - t999 * (-t959 + t1032)) * pkin(8) + (-t999 * t967 + t975 * t995 - t851) * pkin(2);
t719 = t761 * t993 + t1047;
t718 = t759 * t993 - t1047;
t717 = t761 * t992 - t1046;
t716 = t759 * t992 + t1046;
t715 = -pkin(8) * t811 - t770;
t714 = t1000 * t783 - t782 * t996;
t713 = -pkin(2) * t890 + pkin(8) * t813 + t771;
t712 = -pkin(1) * t748 - pkin(2) * t811;
t711 = -pkin(3) * t807 + qJ(4) * t818 - t1087;
t707 = -pkin(7) * t814 + t1000 * t827 - t784 * t996;
t706 = -pkin(5) * t1122 - qJ(6) * t779;
t703 = -pkin(3) * t804 + qJ(4) * t788 + t1086;
t702 = t1000 * t771 - t1092;
t701 = t771 * t996 + t1060;
t699 = -pkin(7) * t794 + t1000 * t825 - t781 * t996;
t697 = -t1122 * t994 - t762 * t998;
t695 = -t1122 * t998 + t762 * t994;
t693 = t1001 * t702 - t891 * t997;
t692 = t1001 * t891 + t702 * t997;
t691 = t1000 * t757 - t755 * t996;
t690 = t1000 * t756 - t754 * t996;
t689 = t740 * t993 - t763 * t992;
t688 = t739 * t993 - t767 * t992;
t687 = t740 * t992 + t763 * t993;
t686 = t739 * t992 + t767 * t993;
t685 = t1000 * t753 - t752 * t996;
t684 = t1000 * t752 + t753 * t996;
t683 = -t745 * t995 + t746 * t999;
t682 = t745 * t999 + t746 * t995;
t678 = -t742 * t995 + t744 * t999;
t677 = -t741 * t995 + t743 * t999;
t676 = t742 * t999 + t744 * t995;
t675 = t741 * t999 + t743 * t995;
t667 = t697 * t993 - t835 * t992;
t666 = t697 * t992 + t835 * t993;
t665 = t1000 * t736 - t734 * t996;
t664 = t1000 * t735 - t733 * t996;
t661 = qJ(4) * t663;
t660 = t1000 * t725 - t724 * t996;
t659 = t1000 * t724 + t725 * t996;
t658 = t1001 * t685 + t807 * t997;
t657 = -t1001 * t807 + t685 * t997;
t656 = -pkin(1) * t701 - pkin(2) * t770;
t655 = -t717 * t995 + t719 * t999;
t654 = -t716 * t995 + t718 * t999;
t653 = t717 * t999 + t719 * t995;
t652 = t716 * t999 + t718 * t995;
t651 = -pkin(4) * t696 - pkin(5) * t767;
t650 = t1001 * t660 + t804 * t997;
t649 = -t1001 * t804 + t660 * t997;
t648 = t1093 - t1102;
t647 = t1094 - t1103;
t643 = -pkin(7) * t701 - pkin(8) * t1060 - t751 * t996;
t642 = -pkin(8) * t752 - t711 * t995 + t747 * t999;
t639 = -qJ(6) * t826 + t644;
t638 = -pkin(7) * t748 + t1000 * t715 - t713 * t996;
t637 = pkin(3) * t798 + qJ(4) * t646;
t636 = -t687 * t995 + t689 * t999;
t635 = -t686 * t995 + t688 * t999;
t634 = t687 * t999 + t689 * t995;
t633 = t686 * t999 + t688 * t995;
t632 = -pkin(8) * t724 - t703 * t995 + t731 * t999;
t631 = -pkin(2) * t807 + pkin(8) * t753 + t711 * t999 + t747 * t995;
t630 = t1000 * t683 - t682 * t996;
t629 = t1000 * t682 + t683 * t996;
t625 = t1000 * t678 - t676 * t996;
t624 = t1000 * t677 - t675 * t996;
t623 = t1000 * t676 + t678 * t996;
t619 = -t666 * t995 + t667 * t999;
t618 = t666 * t999 + t667 * t995;
t617 = -qJ(4) * t742 - t645;
t616 = -pkin(2) * t804 + pkin(8) * t725 + t703 * t999 + t731 * t995;
t615 = t1001 * t625 + t829 * t997;
t614 = -t1001 * t829 + t625 * t997;
t610 = -pkin(5) * t762 + qJ(6) * t816 - t849 * t914 - t1007 - 0.2e1 * t1062;
t609 = -pkin(3) * t829 + qJ(4) * t744 + t646;
t608 = t1001 * t630 - t785 * t997;
t607 = t1001 * t785 + t630 * t997;
t606 = t641 - t1115;
t605 = -t1065 - t1116;
t604 = -pkin(1) * t684 - pkin(2) * t752 - pkin(3) * t817 + t705;
t603 = -pkin(5) * t881 + t1014;
t602 = t1000 * t655 - t653 * t996;
t601 = t1000 * t654 - t652 * t996;
t600 = t1000 * t653 + t655 * t996;
t599 = t1000 * t652 + t654 * t996;
t597 = -pkin(1) * t659 - pkin(2) * t724 - pkin(3) * t787 + t704;
t596 = t1001 * t602 - t760 * t997;
t595 = t1001 * t601 - t758 * t997;
t594 = t1001 * t760 + t602 * t997;
t593 = t1001 * t758 + t601 * t997;
t592 = t878 + (-t767 + t843) * qJ(6) - t1123 + t1043;
t591 = -qJ(6) * t763 + (-t803 - t881) * pkin(5) + t1014;
t590 = t639 * t998 - t706 * t994 - t1102;
t589 = -qJ(6) * t1088 - t610 * t994 - t1103;
t588 = t646 * t999 - t1096;
t587 = t646 * t995 + t1095;
t586 = -t1115 + (-t826 - t881) * pkin(5) + t1014;
t585 = -pkin(1) * t623 - pkin(2) * t676 - pkin(3) * t742;
t584 = -t1015 - t1116 + t878 - 0.2e1 * t1123;
t581 = t1000 * t636 - t634 * t996;
t580 = t1000 * t635 - t633 * t996;
t579 = t1000 * t634 + t636 * t996;
t578 = t1000 * t633 + t635 * t996;
t574 = -pkin(5) * t644 + qJ(6) * t603;
t570 = t1000 * t619 - t618 * t996;
t569 = t1000 * t618 + t619 * t996;
t568 = t1001 * t581 - t738 * t997;
t567 = t1001 * t580 - t737 * t997;
t566 = t1001 * t738 + t581 * t997;
t565 = t1001 * t737 + t580 * t997;
t564 = -t582 - t1104;
t560 = t583 * t993 + t673 * t992;
t559 = t583 * t992 - t673 * t993;
t558 = -pkin(7) * t684 + t1000 * t642 - t631 * t996;
t557 = t1001 * t577 + t729 * t997;
t555 = pkin(6) * t557;
t554 = t1001 * t573 + t722 * t997;
t552 = pkin(6) * t554;
t551 = -t606 * t992 + t648 * t993 - t1099;
t550 = -t605 * t992 + t647 * t993 - t1100;
t549 = t1001 * t570 - t695 * t997;
t548 = t1001 * t695 + t570 * t997;
t547 = t603 * t998 - t1098;
t546 = t603 * t994 + t1097;
t545 = -pkin(7) * t659 + t1000 * t632 - t616 * t996;
t544 = t1001 * t563 + t696 * t997;
t542 = pkin(6) * t544;
t541 = -pkin(8) * t676 - t609 * t995 + t617 * t999;
t540 = t606 * t993 + t648 * t992 + t1033;
t539 = t605 * t993 + t647 * t992 + t1034;
t538 = -pkin(2) * t829 + pkin(8) * t678 + t609 * t999 + t617 * t995;
t537 = t1114 * t696 + t564 * t993 - t1101;
t536 = t1000 * t588 - t587 * t996;
t535 = t1000 * t587 + t588 * t996;
t534 = -pkin(8) * t587 - qJ(4) * t1095 - t637 * t995;
t533 = t547 * t993 + t644 * t992;
t532 = t547 * t992 - t644 * t993;
t531 = t1001 * t536 - t798 * t997;
t530 = t1001 * t798 + t536 * t997;
t529 = pkin(2) * t798 + pkin(8) * t588 - qJ(4) * t1096 + t637 * t999;
t528 = -t591 * t994 + t592 * t998 - t1104;
t527 = t1042 * t696 + t992 * t564 + t661;
t526 = -t586 * t992 + t590 * t993 - t1099;
t525 = -pkin(4) * t546 - pkin(5) * t598;
t524 = -t584 * t992 + t589 * t993 - t1100;
t523 = t586 * t993 + t590 * t992 + t1033;
t522 = t584 * t993 + t589 * t992 + t1034;
t521 = t1008 - t1094;
t520 = -t559 * t995 + t560 * t999;
t519 = t559 * t999 + t560 * t995;
t518 = t1009 + t1093;
t517 = t528 * t993 - t651 * t992 - t1101;
t516 = -pkin(3) * t696 + t528 * t992 + t651 * t993 + t661;
t515 = -t639 * t994 - t706 * t998 + t1008;
t514 = qJ(6) * t1089 - t610 * t998 + t1009;
t513 = -pkin(1) * t535 - pkin(2) * t587 - pkin(3) * t645;
t512 = -qJ(4) * t559 + (-pkin(9) * t993 + t1114) * t582;
t511 = -pkin(9) * t546 - qJ(6) * t1097 - t574 * t994;
t510 = -t540 * t995 + t551 * t999 - t1105;
t509 = t1010 - t583;
t508 = -t539 * t995 + t550 * t999 - t1106;
t507 = t540 * t999 + t551 * t995 + t1035;
t506 = -pkin(7) * t623 + t1000 * t541 - t538 * t996;
t505 = t539 * t999 + t550 * t995 + t1036;
t504 = -t532 * t995 + t533 * t999;
t503 = t532 * t999 + t533 * t995;
t502 = -t591 * t998 - t592 * t994 + t1010;
t501 = qJ(4) * t560 + (-pkin(9) * t992 + t1042) * t582;
t500 = -t527 * t995 + t537 * t999 - t1107;
t499 = t527 * t999 + t537 * t995 + t1037;
t498 = -t523 * t995 + t526 * t999 - t1105;
t497 = t523 * t999 + t526 * t995 + t1035;
t496 = -t522 * t995 + t524 * t999 - t1106;
t495 = t1000 * t520 - t519 * t996;
t494 = t1000 * t519 + t520 * t996;
t493 = t522 * t999 + t524 * t995 + t1036;
t492 = -pkin(7) * t535 + t1000 * t534 - t529 * t996;
t491 = t1001 * t495 + t582 * t997;
t490 = -t1001 * t582 + t495 * t997;
t489 = -t516 * t995 + t517 * t999 - t1107;
t488 = t516 * t999 + t517 * t995 + t1037;
t487 = -qJ(4) * t532 + t511 * t993 - t525 * t992;
t486 = t1000 * t504 - t503 * t996;
t485 = t1000 * t503 + t504 * t996;
t484 = t1000 * t510 - t507 * t996 - t1108;
t483 = t1000 * t508 - t505 * t996 - t1109;
t482 = -pkin(3) * t546 + qJ(4) * t533 + t511 * t992 + t525 * t993;
t481 = t1001 * t486 + t546 * t997;
t480 = -t1001 * t546 + t486 * t997;
t479 = -pkin(8) * t519 - t501 * t995 + t512 * t999;
t478 = -pkin(1) * t494 - pkin(2) * t519 - pkin(3) * t559 + pkin(4) * t673 - pkin(9) * t583;
t477 = t1000 * t500 - t499 * t996 - t1110;
t476 = t1000 * t498 - t497 * t996 - t1108;
t475 = -pkin(2) * t582 + pkin(8) * t520 + t501 * t999 + t512 * t995;
t474 = t1000 * t496 - t493 * t996 - t1109;
t473 = t1000 * t489 - t488 * t996 - t1110;
t472 = -pkin(1) * t485 - pkin(2) * t503 - pkin(3) * t532 + pkin(4) * t644 - pkin(9) * t547 + qJ(6) * t1098 - t574 * t998;
t471 = -pkin(8) * t503 - t482 * t995 + t487 * t999;
t470 = -pkin(2) * t546 + pkin(8) * t504 + t482 * t999 + t487 * t995;
t469 = -pkin(7) * t494 + t1000 * t479 - t475 * t996;
t468 = -pkin(7) * t485 + t1000 * t471 - t470 * t996;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t963, -t964, 0, t926, 0, 0, 0, 0, 0, 0, t901, t902, t923, t855, 0, 0, 0, 0, 0, 0, t769, t775, t727, t693, 0, 0, 0, 0, 0, 0, t650, t658, t615, t531, 0, 0, 0, 0, 0, 0, t554, t557, t544, t491, 0, 0, 0, 0, 0, 0, t554, t557, t544, t481; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t964, -t963, 0, t925, 0, 0, 0, 0, 0, 0, t899, t900, t922, t854, 0, 0, 0, 0, 0, 0, t768, t774, t726, t692, 0, 0, 0, 0, 0, 0, t649, t657, t614, t530, 0, 0, 0, 0, 0, 0, t553, t556, t543, t490, 0, 0, 0, 0, 0, 0, t553, t556, t543, t480; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t927, t928, 0, -t875, 0, 0, 0, 0, 0, 0, t794, t814, t748, t701, 0, 0, 0, 0, 0, 0, t659, t684, t623, t535, 0, 0, 0, 0, 0, 0, t572, t576, t562, t494, 0, 0, 0, 0, 0, 0, t572, t576, t562, t485; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t964, 0, -t963, 0, t1021, -t946, -t925, -pkin(6) * t925, t1001 * t937 - t1023, t1001 * t921 - t966 * t997, t1001 * t931 + t1050 * t996, t1001 * t936 + t1023, t1001 * t929 + t984 * t997, qJDD(2) * t997 + t1001 * t955, -pkin(6) * t899 + t1001 * t893 - t886 * t997, -pkin(6) * t900 + t1001 * t894 - t887 * t997, -pkin(6) * t922 + t1001 * t875, -pkin(6) * t854 - (pkin(1) * t997 - pkin(7) * t1001) * t875, t1001 * t797 - t1044, t1001 * t749 - t919 * t997, t1001 * t823 - t864 * t997, t1001 * t796 + t1044, t1001 * t824 - t865 * t997, t1001 * t837 + t1024, -pkin(6) * t768 + t1001 * t699 - t720 * t997, -pkin(6) * t774 + t1001 * t707 - t732 * t997, -pkin(6) * t726 + t1001 * t638 - t712 * t997, -pkin(6) * t692 + t1001 * t643 - t656 * t997, t1001 * t665 + t1045, t1001 * t624 - t850 * t997, t1001 * t690 - t808 * t997, t1001 * t664 - t1045, t1001 * t691 - t809 * t997, t1001 * t714 + t1024, -pkin(6) * t649 + t1001 * t545 - t597 * t997, -pkin(6) * t657 + t1001 * t558 - t604 * t997, -pkin(6) * t614 + t1001 * t506 - t585 * t997, -pkin(6) * t530 + t1001 * t492 - t513 * t997, t596, t549, t567, t595, t568, t608, t1001 * t483 - t518 * t997 - t1112, t1001 * t484 - t521 * t997 - t1111, t1001 * t477 - t509 * t997 - t1113, -pkin(6) * t490 + t1001 * t469 - t478 * t997, t596, t549, t567, t595, t568, t608, t1001 * t474 - t514 * t997 - t1112, t1001 * t476 - t515 * t997 - t1111, t1001 * t473 - t502 * t997 - t1113, -pkin(6) * t480 + t1001 * t468 - t472 * t997; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t963, 0, t964, 0, t946, t1021, t926, pkin(6) * t926, t937 * t997 + t1022, t1001 * t966 + t921 * t997, -t1049 * t996 + t931 * t997, t936 * t997 - t1022, -t1001 * t984 + t929 * t997, -qJDD(2) * t1001 + t955 * t997, pkin(6) * t901 + t1001 * t886 + t893 * t997, pkin(6) * t902 + t1001 * t887 + t894 * t997, pkin(6) * t923 + t875 * t997, pkin(6) * t855 - (-pkin(1) * t1001 - pkin(7) * t997) * t875, t797 * t997 + t1039, t1001 * t919 + t749 * t997, t1001 * t864 + t823 * t997, t796 * t997 - t1039, t1001 * t865 + t824 * t997, t837 * t997 - t979, pkin(6) * t769 + t1001 * t720 + t699 * t997, pkin(6) * t775 + t1001 * t732 + t707 * t997, pkin(6) * t727 + t1001 * t712 + t638 * t997, pkin(6) * t693 + t1001 * t656 + t643 * t997, t665 * t997 - t1040, t1001 * t850 + t624 * t997, t1001 * t808 + t690 * t997, t664 * t997 + t1040, t1001 * t809 + t691 * t997, t714 * t997 - t979, pkin(6) * t650 + t1001 * t597 + t545 * t997, pkin(6) * t658 + t1001 * t604 + t558 * t997, pkin(6) * t615 + t1001 * t585 + t506 * t997, pkin(6) * t531 + t1001 * t513 + t492 * t997, t594, t548, t565, t593, t566, t607, t1001 * t518 + t483 * t997 + t552, t1001 * t521 + t484 * t997 + t555, t1001 * t509 + t477 * t997 + t542, pkin(6) * t491 + t1001 * t478 + t469 * t997, t594, t548, t565, t593, t566, t607, t1001 * t514 + t474 * t997 + t552, t1001 * t515 + t476 * t997 + t555, t1001 * t502 + t473 * t997 + t542, pkin(6) * t481 + t1001 * t472 + t468 * t997; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t969, t970, 0, 0, (t959 + t1032) * t996, t1000 * t958 + t961 * t996, t1000 * t972 + t1075, (t960 - t1038) * t1000, t974 * t996 + t1058, 0, pkin(1) * t961 + pkin(7) * t930 + t1059, -pkin(1) * t958 + pkin(7) * t932 - t1076, pkin(1) * t965 + pkin(7) * t962 + t876, pkin(1) * t951 + pkin(7) * t876, t1000 * t858 + t859 * t996, t1000 * t810 + t812 * t996, t1000 * t868 + t870 * t996, t1000 * t856 + t857 * t996, t1000 * t869 + t871 * t996, t1000 * t895 + t896 * t996, -pkin(1) * t860 + pkin(7) * t795 + t1000 * t781 + t825 * t996, -pkin(1) * t1121 + pkin(7) * t815 + t1000 * t784 + t827 * t996, -pkin(1) * t890 + pkin(7) * t750 + t1000 * t713 + t715 * t996, pkin(1) * t891 + pkin(7) * t702 - pkin(8) * t1092 + t1000 * t751, t1000 * t734 + t736 * t996, t1000 * t675 + t677 * t996, t1000 * t754 + t756 * t996, t1000 * t733 + t735 * t996, t1000 * t755 + t757 * t996, t1000 * t782 + t783 * t996, -pkin(1) * t804 + pkin(7) * t660 + t1000 * t616 + t632 * t996, -pkin(1) * t807 + pkin(7) * t685 + t1000 * t631 + t642 * t996, -pkin(1) * t829 + pkin(7) * t625 + t1000 * t538 + t541 * t996, pkin(1) * t798 + pkin(7) * t536 + t1000 * t529 + t534 * t996, t600, t569, t578, t599, t579, t629, t1000 * t505 + t508 * t996 + t1067, t1000 * t507 + t510 * t996 + t1066, t1000 * t499 + t500 * t996 + t1068, -pkin(1) * t582 + pkin(7) * t495 + t1000 * t475 + t479 * t996, t600, t569, t578, t599, t579, t629, t1000 * t493 + t496 * t996 + t1067, t1000 * t497 + t498 * t996 + t1066, t1000 * t488 + t489 * t996 + t1068, -pkin(1) * t546 + pkin(7) * t486 + t1000 * t470 + t471 * t996;];
tauB_reg  = t1;
