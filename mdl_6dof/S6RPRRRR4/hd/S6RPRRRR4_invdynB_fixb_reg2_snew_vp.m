% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPRRRR4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,d6,theta2]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 03:17
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPRRRR4_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR4_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRR4_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRRR4_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRR4_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRRR4_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 03:15:33
% EndTime: 2019-05-06 03:16:21
% DurationCPUTime: 49.17s
% Computational Cost: add. (448494->916), mult. (1124708->1423), div. (0->0), fcn. (922446->12), ass. (0->627)
t1078 = sin(qJ(1));
t1083 = cos(qJ(1));
t1051 = g(1) * t1083 + g(2) * t1078;
t1085 = qJD(1) ^ 2;
t1185 = -pkin(1) * t1085 + qJDD(1) * qJ(2) + (2 * qJD(1) * qJD(2)) - t1051;
t1071 = qJD(3) + qJD(4);
t1073 = cos(pkin(11));
t1082 = cos(qJ(3));
t1072 = sin(pkin(11));
t1077 = sin(qJ(3));
t1124 = t1072 * t1077;
t1037 = (-t1073 * t1082 + t1124) * qJD(1);
t1094 = t1072 * t1082 + t1073 * t1077;
t1039 = t1094 * qJD(1);
t1076 = sin(qJ(4));
t1081 = cos(qJ(4));
t997 = -t1037 * t1076 + t1039 * t1081;
t1098 = pkin(4) * t1071 - pkin(9) * t997;
t1050 = t1078 * g(1) - t1083 * g(2);
t1095 = -qJDD(2) + t1050;
t1069 = t1072 ^ 2;
t1070 = t1073 ^ 2;
t1121 = t1069 + t1070;
t1170 = pkin(2) * t1073;
t1001 = (pkin(7) * t1121 + qJ(2)) * t1085 + (pkin(1) + t1170) * qJDD(1) + t1095;
t1120 = qJDD(1) * t1073;
t1035 = qJDD(1) * t1124 - t1082 * t1120;
t1133 = t1039 * qJD(3);
t1006 = -t1035 - t1133;
t1033 = t1037 ^ 2;
t1097 = qJD(3) * pkin(3) - pkin(8) * t1039;
t918 = t1006 * pkin(3) + t1033 * pkin(8) - t1039 * t1097 + t1001;
t1136 = t1037 * qJD(3);
t1180 = t1094 * qJDD(1);
t1008 = t1180 - t1136;
t1101 = -t1081 * t1006 + t1076 * t1008;
t924 = -qJD(4) * t997 - t1101;
t996 = -t1037 * t1081 - t1076 * t1039;
t994 = t996 ^ 2;
t819 = t924 * pkin(4) + t994 * pkin(9) - t997 * t1098 + t918;
t1074 = sin(qJ(6));
t1075 = sin(qJ(5));
t1080 = cos(qJ(5));
t925 = qJD(4) * t996 + t1076 * t1006 + t1081 * t1008;
t1102 = t1075 * t925 - t1080 * t924;
t953 = t1075 * t996 + t1080 * t997;
t834 = -qJD(5) * t953 - t1102;
t1091 = qJDD(6) - t834;
t1065 = qJD(5) + t1071;
t1079 = cos(qJ(6));
t931 = -t1079 * t1065 + t1074 * t953;
t933 = t1065 * t1074 + t1079 * t953;
t870 = t933 * t931;
t1183 = t1091 - t870;
t1193 = t1074 * t1183;
t1117 = qJDD(3) + qJDD(4);
t1061 = qJDD(5) + t1117;
t951 = t1075 * t997 - t1080 * t996;
t890 = t953 * t951;
t1182 = -t890 + t1061;
t1192 = t1075 * t1182;
t959 = t996 * t997;
t1181 = t959 + t1117;
t1191 = t1076 * t1181;
t1011 = t1039 * t1037;
t1179 = qJDD(3) - t1011;
t1190 = t1077 * t1179;
t1189 = t1079 * t1183;
t1188 = t1080 * t1182;
t1187 = t1081 * t1181;
t1186 = t1082 * t1179;
t835 = -qJD(5) * t951 + t1075 * t924 + t1080 * t925;
t944 = t1065 * t951;
t808 = t835 - t944;
t989 = t1071 * t996;
t902 = -t925 + t989;
t1184 = t925 + t989;
t1109 = t931 * qJD(6) - t1074 * t1061 - t1079 * t835;
t947 = qJD(6) + t951;
t878 = t947 * t931;
t773 = -t878 - t1109;
t1084 = qJD(3) ^ 2;
t1000 = -t1084 - t1033;
t1100 = -t1079 * t1061 + t1074 * t835;
t770 = (qJD(6) - t947) * t933 + t1100;
t898 = (qJD(4) - t1071) * t997 + t1101;
t806 = (qJD(5) - t1065) * t953 + t1102;
t1175 = t1085 * t1121;
t929 = t931 ^ 2;
t930 = t933 ^ 2;
t946 = t947 ^ 2;
t949 = t951 ^ 2;
t950 = t953 ^ 2;
t995 = t997 ^ 2;
t1034 = t1039 ^ 2;
t1173 = t1065 ^ 2;
t1068 = t1071 ^ 2;
t1169 = pkin(5) * t1075;
t1166 = t1073 * g(3);
t1165 = qJDD(1) * pkin(1);
t1099 = -t1008 - t1136;
t985 = -t1166 + (-pkin(7) * qJDD(1) + t1085 * t1170 - t1185) * t1072;
t1013 = -g(3) * t1072 + t1073 * t1185;
t1064 = t1070 * t1085;
t990 = -pkin(2) * t1064 + pkin(7) * t1120 + t1013;
t935 = t1077 * t990 - t1082 * t985;
t1089 = pkin(3) * t1179 + pkin(8) * t1099 - t935;
t936 = t1077 * t985 + t1082 * t990;
t1090 = -t1033 * pkin(3) + t1006 * pkin(8) - qJD(3) * t1097 + t936;
t821 = t1076 * t1090 - t1081 * t1089;
t1088 = pkin(4) * t1181 + pkin(9) * t902 - t821;
t822 = t1076 * t1089 + t1081 * t1090;
t780 = -t994 * pkin(4) + t924 * pkin(9) - t1071 * t1098 + t822;
t707 = t1075 * t1088 + t1080 * t780;
t884 = pkin(5) * t951 - pkin(10) * t953;
t678 = -pkin(5) * t1173 + pkin(10) * t1061 - t884 * t951 + t707;
t704 = -t808 * pkin(10) + (t1065 * t953 - t834) * pkin(5) - t819;
t644 = t1074 * t704 + t1079 * t678;
t867 = t1077 * t936 - t1082 * t935;
t1164 = t1072 * t867;
t1163 = t1073 * t867;
t706 = t1075 * t780 - t1080 * t1088;
t677 = -t1061 * pkin(5) - pkin(10) * t1173 + t884 * t953 + t706;
t1162 = t1074 * t677;
t792 = t1091 + t870;
t1161 = t1074 * t792;
t1160 = t1074 * t947;
t1159 = t1075 * t819;
t881 = t890 + t1061;
t1158 = t1075 * t881;
t646 = t1075 * t707 - t1080 * t706;
t1157 = t1076 * t646;
t1156 = t1076 * t918;
t956 = -t959 + t1117;
t1155 = t1076 * t956;
t747 = t1076 * t822 - t1081 * t821;
t1154 = t1077 * t747;
t1153 = t1079 * t677;
t1152 = t1079 * t792;
t1151 = t1079 * t947;
t1150 = t1080 * t819;
t1149 = t1080 * t881;
t1148 = t1081 * t646;
t1147 = t1081 * t918;
t1146 = t1081 * t956;
t1145 = t1082 * t747;
t1142 = t1001 * t1077;
t1141 = t1001 * t1082;
t1003 = qJDD(3) + t1011;
t1140 = t1003 * t1077;
t1139 = t1003 * t1082;
t1031 = t1085 * qJ(2) + t1095 + t1165;
t1138 = t1031 * t1078;
t1137 = t1031 * t1083;
t1135 = t1037 * t1077;
t1134 = t1037 * t1082;
t1132 = t1039 * t1077;
t1131 = t1039 * t1082;
t1130 = t1065 * t1075;
t1129 = t1065 * t1080;
t1128 = t1069 * t1085;
t1127 = t1071 * t1076;
t1126 = t1071 * t1081;
t1125 = t1072 * t1073;
t1119 = qJDD(1) * t1078;
t1118 = qJDD(1) * t1083;
t1115 = t1075 * t870;
t1114 = t1078 * t890;
t1113 = t1078 * t959;
t1112 = t1080 * t870;
t1111 = t1083 * t890;
t1110 = t1083 * t959;
t1107 = -pkin(5) * t1080 - pkin(4);
t1106 = t1078 * t1011;
t1105 = t1083 * t1011;
t1104 = t1031 + t1165;
t643 = t1074 * t678 - t1079 * t704;
t647 = t1075 * t706 + t1080 * t707;
t748 = t1076 * t821 + t1081 * t822;
t868 = t1077 * t935 + t1082 * t936;
t1012 = t1072 * t1185 + t1166;
t968 = t1012 * t1072 + t1073 * t1013;
t1021 = -t1050 * t1078 - t1083 * t1051;
t1049 = -t1078 * t1085 + t1118;
t1096 = -pkin(6) * t1049 - g(3) * t1078;
t591 = t1074 * t644 - t1079 * t643;
t592 = t1074 * t643 + t1079 * t644;
t967 = t1012 * t1073 - t1013 * t1072;
t1020 = t1050 * t1083 - t1051 * t1078;
t1048 = t1083 * t1085 + t1119;
t1042 = t1073 * t1175;
t1017 = -t1042 * t1078 + t1073 * t1118;
t1093 = t1042 * t1083 + t1073 * t1119;
t1063 = t1070 * qJDD(1);
t1062 = t1069 * qJDD(1);
t1047 = t1064 - t1128;
t1046 = t1064 + t1128;
t1045 = t1063 - t1062;
t1044 = t1063 + t1062;
t1041 = t1072 * t1175;
t1032 = -pkin(6) * t1048 + g(3) * t1083;
t1026 = -t1034 - t1084;
t1025 = -t1034 + t1084;
t1024 = t1033 - t1084;
t1023 = t1049 * t1125;
t1022 = t1048 * t1125;
t1018 = t1041 * t1083 + t1072 * t1119;
t1016 = t1041 * t1078 - t1072 * t1118;
t1015 = t1044 * t1083 - t1046 * t1078;
t1014 = t1044 * t1078 + t1046 * t1083;
t1010 = t1033 - t1034;
t1007 = t1180 - 0.2e1 * t1136;
t1005 = t1035 + 0.2e1 * t1133;
t993 = (t1132 - t1134) * qJD(3);
t992 = (-t1131 - t1135) * qJD(3);
t987 = -t995 + t1068;
t986 = t994 - t1068;
t983 = -t995 - t1068;
t980 = -t1033 - t1034;
t978 = -qJD(3) * t1132 + t1008 * t1082;
t977 = qJD(3) * t1131 + t1008 * t1077;
t976 = qJD(3) * t1134 - t1006 * t1077;
t975 = qJD(3) * t1135 + t1006 * t1082;
t974 = -t1026 * t1077 - t1139;
t973 = -t1025 * t1077 + t1186;
t972 = t1024 * t1082 - t1140;
t971 = t1026 * t1082 - t1140;
t970 = t1025 * t1082 + t1190;
t969 = t1024 * t1077 + t1139;
t965 = -t1005 * t1082 - t1007 * t1077;
t964 = -t1035 * t1082 + t1077 * t1180;
t963 = -t1005 * t1077 + t1007 * t1082;
t962 = -t1035 * t1077 - t1082 * t1180;
t961 = t1000 * t1082 - t1190;
t960 = t1000 * t1077 + t1186;
t958 = -t995 + t994;
t954 = -t1068 - t994;
t943 = -t1072 * t992 + t1073 * t993;
t942 = -t950 + t1173;
t941 = t949 - t1173;
t940 = (t1076 * t997 + t1081 * t996) * t1071;
t939 = (t1076 * t996 - t1081 * t997) * t1071;
t938 = t1083 * t968 - t1138;
t937 = t1078 * t968 + t1137;
t934 = -t950 - t1173;
t926 = -pkin(7) * t971 - t1141;
t923 = -pkin(7) * t960 - t1142;
t922 = -t994 - t995;
t920 = -t1072 * t977 + t1073 * t978;
t919 = -t1072 * t975 + t1073 * t976;
t917 = -t1072 * t971 + t1073 * t974;
t916 = -t1072 * t970 + t1073 * t973;
t915 = -t1072 * t969 + t1073 * t972;
t914 = t1072 * t974 + t1073 * t971;
t913 = t1081 * t986 - t1155;
t912 = -t1076 * t987 + t1187;
t911 = t1076 * t986 + t1146;
t910 = t1081 * t987 + t1191;
t909 = -pkin(2) * t1007 + pkin(7) * t974 - t1142;
t908 = -t1076 * t983 - t1146;
t907 = t1081 * t983 - t1155;
t906 = -pkin(2) * t1005 + pkin(7) * t961 + t1141;
t905 = -t1072 * t963 + t1073 * t965;
t904 = -t1072 * t962 + t1073 * t964;
t903 = t1072 * t964 + t1073 * t962;
t897 = (qJD(4) + t1071) * t997 + t1101;
t896 = -t1072 * t960 + t1073 * t961;
t895 = t1072 * t961 + t1073 * t960;
t894 = t1081 * t925 - t1127 * t997;
t893 = t1076 * t925 + t1126 * t997;
t892 = -t1076 * t924 - t1126 * t996;
t891 = t1081 * t924 - t1127 * t996;
t889 = t1007 * t1078 + t1083 * t917;
t888 = -t1007 * t1083 + t1078 * t917;
t887 = -t950 + t949;
t886 = t1081 * t954 - t1191;
t885 = t1076 * t954 + t1187;
t879 = -t1173 - t949;
t877 = -t930 + t946;
t876 = t929 - t946;
t875 = (t1075 * t953 - t1080 * t951) * t1065;
t874 = (-t1075 * t951 - t1080 * t953) * t1065;
t872 = -t1077 * t939 + t1082 * t940;
t871 = t1077 * t940 + t1082 * t939;
t869 = -t930 + t929;
t866 = t1005 * t1078 + t1083 * t896;
t865 = -t1005 * t1083 + t1078 * t896;
t864 = t1078 * t980 + t1083 * t904;
t863 = t1078 * t904 - t1083 * t980;
t862 = pkin(2) * t1001 + pkin(7) * t868;
t861 = -pkin(1) * t903 - pkin(2) * t962;
t860 = -t949 - t950;
t859 = -pkin(8) * t907 - t1147;
t858 = -t930 - t946;
t857 = -pkin(7) * t962 - t867;
t856 = -t1077 * t911 + t1082 * t913;
t855 = -t1077 * t910 + t1082 * t912;
t854 = t1077 * t913 + t1082 * t911;
t853 = t1077 * t912 + t1082 * t910;
t852 = t1080 * t941 - t1158;
t851 = -t1075 * t942 + t1188;
t850 = t1075 * t941 + t1149;
t849 = t1080 * t942 + t1192;
t848 = -t1075 * t934 - t1149;
t847 = t1080 * t934 - t1158;
t846 = -t1077 * t907 + t1082 * t908;
t845 = t1077 * t908 + t1082 * t907;
t844 = -t946 - t929;
t843 = -pkin(1) * t914 - pkin(2) * t971 + t936;
t842 = t929 + t930;
t841 = -pkin(8) * t885 - t1156;
t840 = -pkin(2) * t980 + pkin(7) * t964 + t868;
t839 = -t1076 * t902 - t1081 * t898;
t838 = -t1076 * t1184 - t1081 * t897;
t837 = -t1076 * t898 + t1081 * t902;
t836 = -t1076 * t897 + t1081 * t1184;
t831 = -pkin(1) * t895 - pkin(2) * t960 + t935;
t830 = -t1077 * t893 + t1082 * t894;
t829 = -t1077 * t891 + t1082 * t892;
t828 = t1077 * t894 + t1082 * t893;
t827 = t1077 * t892 + t1082 * t891;
t826 = -t1077 * t885 + t1082 * t886;
t825 = t1077 * t886 + t1082 * t885;
t824 = t1080 * t879 - t1192;
t823 = t1075 * t879 + t1188;
t818 = (t1074 * t933 - t1079 * t931) * t947;
t817 = (t1074 * t931 + t1079 * t933) * t947;
t816 = -qJ(2) * t914 - t1072 * t909 + t1073 * t926;
t815 = -t1076 * t874 + t1081 * t875;
t814 = t1076 * t875 + t1081 * t874;
t813 = -t1072 * t871 + t1073 * t872;
t812 = t1073 * t868 - t1164;
t811 = t1072 * t868 + t1163;
t810 = -t835 - t944;
t805 = (qJD(5) + t1065) * t953 + t1102;
t804 = t1080 * t835 - t1130 * t953;
t803 = t1075 * t835 + t1129 * t953;
t802 = -t1075 * t834 + t1129 * t951;
t801 = t1080 * t834 + t1130 * t951;
t800 = -pkin(3) * t1184 + pkin(8) * t908 - t1156;
t798 = -qJD(6) * t933 - t1100;
t797 = -qJ(2) * t895 - t1072 * t906 + t1073 * t923;
t796 = -t1001 * t1078 + t1083 * t812;
t795 = t1001 * t1083 + t1078 * t812;
t794 = -pkin(3) * t897 + pkin(8) * t886 + t1147;
t790 = -t1076 * t850 + t1081 * t852;
t789 = -t1076 * t849 + t1081 * t851;
t788 = t1076 * t852 + t1081 * t850;
t787 = t1076 * t851 + t1081 * t849;
t786 = -t1072 * t854 + t1073 * t856;
t785 = -t1072 * t853 + t1073 * t855;
t784 = -t1076 * t847 + t1081 * t848;
t783 = t1076 * t848 + t1081 * t847;
t782 = -t1072 * t845 + t1073 * t846;
t781 = t1072 * t846 + t1073 * t845;
t778 = -pkin(1) * t811 - pkin(2) * t867;
t774 = -t878 + t1109;
t771 = (-qJD(6) - t947) * t933 - t1100;
t769 = -t1079 * t1109 - t1160 * t933;
t768 = t1074 * t1109 - t1151 * t933;
t767 = -t1074 * t798 + t1151 * t931;
t766 = -t1079 * t798 - t1160 * t931;
t765 = -pkin(9) * t847 - t1150;
t764 = -t1077 * t837 + t1082 * t839;
t763 = -t1077 * t836 + t1082 * t838;
t762 = t1077 * t839 + t1082 * t837;
t761 = t1077 * t838 + t1082 * t836;
t760 = -t1072 * t828 + t1073 * t830;
t759 = -t1072 * t827 + t1073 * t829;
t758 = t1075 * t1091 + t1080 * t818;
t757 = t1075 * t818 - t1080 * t1091;
t756 = -t1072 * t825 + t1073 * t826;
t755 = t1072 * t826 + t1073 * t825;
t754 = t1079 * t876 - t1161;
t753 = -t1074 * t877 + t1189;
t752 = -t1074 * t876 - t1152;
t751 = -t1079 * t877 - t1193;
t750 = -t1076 * t823 + t1081 * t824;
t749 = t1076 * t824 + t1081 * t823;
t746 = -pkin(9) * t823 - t1159;
t745 = t1078 * t1184 + t1083 * t782;
t744 = t1078 * t782 - t1083 * t1184;
t743 = -qJ(2) * t903 - t1072 * t840 + t1073 * t857;
t742 = -t1077 * t814 + t1082 * t815;
t741 = t1077 * t815 + t1082 * t814;
t740 = -t1074 * t858 - t1152;
t739 = t1079 * t858 - t1161;
t738 = t1079 * t844 - t1193;
t737 = t1074 * t844 + t1189;
t736 = t1080 * t769 + t1115;
t735 = t1080 * t767 - t1115;
t734 = t1075 * t769 - t1112;
t733 = t1075 * t767 + t1112;
t732 = -t1075 * t810 - t1080 * t806;
t731 = -t1075 * t808 - t1080 * t805;
t730 = -t1075 * t806 + t1080 * t810;
t729 = -t1075 * t805 + t1080 * t808;
t728 = -pkin(7) * t1163 - qJ(2) * t811 - t1072 * t862;
t727 = -t1076 * t803 + t1081 * t804;
t726 = -t1076 * t801 + t1081 * t802;
t725 = t1076 * t804 + t1081 * t803;
t724 = t1076 * t802 + t1081 * t801;
t723 = pkin(3) * t918 + pkin(8) * t748;
t722 = t1078 * t897 + t1083 * t756;
t721 = t1078 * t756 - t1083 * t897;
t720 = -pkin(7) * t845 - t1077 * t800 + t1082 * t859;
t719 = -pkin(8) * t837 - t747;
t718 = -pkin(4) * t808 + pkin(9) * t848 - t1159;
t717 = -t1077 * t788 + t1082 * t790;
t716 = -t1077 * t787 + t1082 * t789;
t715 = t1077 * t790 + t1082 * t788;
t714 = t1077 * t789 + t1082 * t787;
t713 = -pkin(7) * t825 - t1077 * t794 + t1082 * t841;
t712 = -t1077 * t783 + t1082 * t784;
t711 = t1077 * t784 + t1082 * t783;
t710 = -pkin(2) * t1184 + pkin(7) * t846 + t1077 * t859 + t1082 * t800;
t709 = -pkin(4) * t805 + pkin(9) * t824 + t1150;
t708 = -pkin(3) * t922 + pkin(8) * t839 + t748;
t701 = -t1074 * t774 - t1079 * t770;
t700 = -t1074 * t773 + t1079 * t771;
t699 = -t1074 * t770 + t1079 * t774;
t698 = -t1074 * t771 - t1079 * t773;
t697 = -pkin(2) * t897 + pkin(7) * t826 + t1077 * t841 + t1082 * t794;
t696 = -t1072 * t762 + t1073 * t764;
t695 = -t1072 * t761 + t1073 * t763;
t694 = t1072 * t764 + t1073 * t762;
t693 = -t1075 * t770 + t1080 * t754;
t692 = -t1075 * t774 + t1080 * t753;
t691 = t1075 * t754 + t1080 * t770;
t690 = t1075 * t753 + t1080 * t774;
t689 = -pkin(1) * t781 - pkin(2) * t845 - pkin(3) * t907 + t822;
t688 = -t1076 * t757 + t1081 * t758;
t687 = t1076 * t758 + t1081 * t757;
t686 = t1075 * t773 + t1080 * t740;
t685 = t1075 * t740 - t1080 * t773;
t684 = -t1075 * t771 + t1080 * t738;
t683 = t1075 * t738 + t1080 * t771;
t682 = t1078 * t922 + t1083 * t696;
t681 = t1078 * t696 - t1083 * t922;
t680 = -t1075 * t869 + t1080 * t700;
t679 = t1075 * t700 + t1080 * t869;
t676 = -t1077 * t749 + t1082 * t750;
t675 = t1077 * t750 + t1082 * t749;
t673 = t1082 * t748 - t1154;
t672 = t1077 * t748 + t1145;
t671 = -t1072 * t741 + t1073 * t742;
t670 = -t1075 * t842 + t1080 * t701;
t669 = t1075 * t701 + t1080 * t842;
t668 = -pkin(1) * t755 - pkin(2) * t825 + t1076 * t936 + t1081 * t935 + (t1076 * (t1006 + t1133) - t1081 * t1099) * pkin(8) + (t1000 * t1076 - t1081 * t1179 - t885) * pkin(3);
t667 = -t1076 * t734 + t1081 * t736;
t666 = -t1076 * t733 + t1081 * t735;
t665 = t1076 * t736 + t1081 * t734;
t664 = t1076 * t735 + t1081 * t733;
t663 = -t1076 * t730 + t1081 * t732;
t662 = -t1076 * t729 + t1081 * t731;
t661 = t1076 * t732 + t1081 * t730;
t660 = t1076 * t731 + t1081 * t729;
t659 = -t1077 * t725 + t1082 * t727;
t658 = -t1077 * t724 + t1082 * t726;
t657 = t1077 * t727 + t1082 * t725;
t656 = t1077 * t726 + t1082 * t724;
t655 = -t1072 * t715 + t1073 * t717;
t654 = -t1072 * t714 + t1073 * t716;
t653 = -pkin(10) * t739 + t1153;
t652 = -pkin(10) * t737 + t1162;
t651 = -t1072 * t711 + t1073 * t712;
t650 = t1072 * t712 + t1073 * t711;
t649 = -pkin(8) * t783 - t1076 * t718 + t1081 * t765;
t648 = -pkin(1) * t694 - pkin(2) * t762 - pkin(3) * t837;
t645 = -pkin(8) * t749 - t1076 * t709 + t1081 * t746;
t642 = -t1076 * t691 + t1081 * t693;
t641 = -t1076 * t690 + t1081 * t692;
t640 = t1076 * t693 + t1081 * t691;
t639 = t1076 * t692 + t1081 * t690;
t638 = t1078 * t808 + t1083 * t651;
t637 = t1078 * t651 - t1083 * t808;
t636 = -qJ(2) * t781 - t1072 * t710 + t1073 * t720;
t635 = -pkin(3) * t808 + pkin(8) * t784 + t1076 * t765 + t1081 * t718;
t634 = pkin(4) * t819 + pkin(9) * t647;
t633 = -t1077 * t687 + t1082 * t688;
t632 = t1077 * t688 + t1082 * t687;
t631 = -t1076 * t685 + t1081 * t686;
t630 = t1076 * t686 + t1081 * t685;
t629 = -t1076 * t683 + t1081 * t684;
t628 = t1076 * t684 + t1081 * t683;
t627 = -pkin(7) * t762 - t1077 * t708 + t1082 * t719;
t626 = -t1076 * t679 + t1081 * t680;
t625 = t1076 * t680 + t1081 * t679;
t624 = -t1072 * t675 + t1073 * t676;
t623 = t1072 * t676 + t1073 * t675;
t622 = -t1072 * t672 + t1073 * t673;
t621 = t1072 * t673 + t1073 * t672;
t620 = -pkin(2) * t922 + pkin(7) * t764 + t1077 * t719 + t1082 * t708;
t619 = -pkin(3) * t805 + pkin(8) * t750 + t1076 * t746 + t1081 * t709;
t618 = -pkin(7) * t672 - pkin(8) * t1145 - t1077 * t723;
t617 = -t1078 * t918 + t1083 * t622;
t616 = t1078 * t622 + t1083 * t918;
t615 = -t1076 * t669 + t1081 * t670;
t614 = t1076 * t670 + t1081 * t669;
t613 = -qJ(2) * t755 - t1072 * t697 + t1073 * t713;
t612 = pkin(2) * t918 + pkin(7) * t673 - pkin(8) * t1154 + t1082 * t723;
t611 = -pkin(9) * t730 - t646;
t610 = -t1077 * t665 + t1082 * t667;
t609 = -t1077 * t664 + t1082 * t666;
t608 = t1077 * t667 + t1082 * t665;
t607 = t1077 * t666 + t1082 * t664;
t606 = t1078 * t805 + t1083 * t624;
t605 = t1078 * t624 - t1083 * t805;
t604 = -t1077 * t661 + t1082 * t663;
t603 = -t1077 * t660 + t1082 * t662;
t602 = t1077 * t663 + t1082 * t661;
t601 = t1077 * t662 + t1082 * t660;
t600 = -t1072 * t657 + t1073 * t659;
t599 = -t1072 * t656 + t1073 * t658;
t598 = -pkin(5) * t739 + t644;
t597 = -pkin(4) * t860 + pkin(9) * t732 + t647;
t596 = -pkin(5) * t737 + t643;
t595 = t1081 * t647 - t1157;
t594 = t1076 * t647 + t1148;
t593 = -pkin(1) * t621 - pkin(2) * t672 - pkin(3) * t747;
t590 = -t1077 * t640 + t1082 * t642;
t589 = -t1077 * t639 + t1082 * t641;
t588 = t1077 * t642 + t1082 * t640;
t587 = t1077 * t641 + t1082 * t639;
t586 = -pkin(1) * t650 - pkin(2) * t711 - pkin(3) * t783 - pkin(4) * t847 + t707;
t585 = -t1072 * t632 + t1073 * t633;
t584 = -t1077 * t630 + t1082 * t631;
t583 = t1077 * t631 + t1082 * t630;
t582 = -t1077 * t628 + t1082 * t629;
t581 = t1077 * t629 + t1082 * t628;
t580 = -t1077 * t625 + t1082 * t626;
t579 = t1077 * t626 + t1082 * t625;
t578 = -pkin(7) * t711 - t1077 * t635 + t1082 * t649;
t577 = -t1077 * t614 + t1082 * t615;
t576 = t1077 * t615 + t1082 * t614;
t575 = -pkin(2) * t808 + pkin(7) * t712 + t1077 * t649 + t1082 * t635;
t574 = -pkin(10) * t699 - t591;
t573 = -pkin(1) * t623 - pkin(2) * t675 - pkin(3) * t749 - pkin(4) * t823 + t706;
t572 = -t1072 * t608 + t1073 * t610;
t571 = -t1072 * t607 + t1073 * t609;
t570 = -t1072 * t602 + t1073 * t604;
t569 = -t1072 * t601 + t1073 * t603;
t568 = t1072 * t604 + t1073 * t602;
t567 = t1075 * t677 + t1080 * t592;
t566 = t1075 * t592 - t1080 * t677;
t565 = t1078 * t860 + t1083 * t570;
t564 = t1078 * t570 - t1083 * t860;
t563 = -pkin(7) * t675 - t1077 * t619 + t1082 * t645;
t562 = -pkin(9) * t685 - t1075 * t598 + t1080 * t653;
t561 = -pkin(9) * t683 - t1075 * t596 + t1080 * t652;
t560 = -qJ(2) * t694 - t1072 * t620 + t1073 * t627;
t559 = -pkin(2) * t805 + pkin(7) * t676 + t1077 * t645 + t1082 * t619;
t558 = -pkin(4) * t739 + pkin(9) * t686 + t1075 * t653 + t1080 * t598;
t557 = -pkin(4) * t737 + pkin(9) * t684 + t1075 * t652 + t1080 * t596;
t556 = -pkin(8) * t661 - t1076 * t597 + t1081 * t611;
t555 = -pkin(3) * t860 + pkin(8) * t663 + t1076 * t611 + t1081 * t597;
t554 = -qJ(2) * t621 - t1072 * t612 + t1073 * t618;
t553 = -pkin(9) * t669 + t1080 * t574 + t1169 * t699;
t552 = -t1077 * t594 + t1082 * t595;
t551 = t1077 * t595 + t1082 * t594;
t550 = -pkin(8) * t594 - pkin(9) * t1148 - t1076 * t634;
t549 = pkin(3) * t819 + pkin(8) * t595 - pkin(9) * t1157 + t1081 * t634;
t548 = pkin(9) * t670 + t1075 * t574 + t1107 * t699;
t547 = -t1072 * t588 + t1073 * t590;
t546 = -t1072 * t587 + t1073 * t589;
t545 = -t1072 * t583 + t1073 * t584;
t544 = t1072 * t584 + t1073 * t583;
t543 = -t1072 * t581 + t1073 * t582;
t542 = t1072 * t582 + t1073 * t581;
t541 = -t1072 * t579 + t1073 * t580;
t540 = t1078 * t739 + t1083 * t545;
t539 = t1078 * t545 - t1083 * t739;
t538 = t1078 * t737 + t1083 * t543;
t537 = t1078 * t543 - t1083 * t737;
t536 = -t1072 * t576 + t1073 * t577;
t535 = t1072 * t577 + t1073 * t576;
t534 = -pkin(1) * t568 - pkin(2) * t602 - pkin(3) * t661 - pkin(4) * t730;
t533 = -t1076 * t566 + t1081 * t567;
t532 = t1076 * t567 + t1081 * t566;
t531 = t1078 * t699 + t1083 * t536;
t530 = t1078 * t536 - t1083 * t699;
t529 = -qJ(2) * t650 - t1072 * t575 + t1073 * t578;
t528 = -pkin(9) * t566 + (-pkin(10) * t1080 + t1169) * t591;
t527 = -qJ(2) * t623 - t1072 * t559 + t1073 * t563;
t526 = -pkin(8) * t630 - t1076 * t558 + t1081 * t562;
t525 = -pkin(8) * t628 - t1076 * t557 + t1081 * t561;
t524 = -pkin(3) * t739 + pkin(8) * t631 + t1076 * t562 + t1081 * t558;
t523 = -pkin(3) * t737 + pkin(8) * t629 + t1076 * t561 + t1081 * t557;
t522 = -t1072 * t551 + t1073 * t552;
t521 = t1072 * t552 + t1073 * t551;
t520 = -t1078 * t819 + t1083 * t522;
t519 = t1078 * t522 + t1083 * t819;
t518 = -pkin(7) * t602 - t1077 * t555 + t1082 * t556;
t517 = -pkin(2) * t860 + pkin(7) * t604 + t1077 * t556 + t1082 * t555;
t516 = pkin(9) * t567 + (-pkin(10) * t1075 + t1107) * t591;
t515 = -pkin(8) * t614 - t1076 * t548 + t1081 * t553;
t514 = -pkin(1) * t544 - pkin(2) * t583 - pkin(3) * t630 - pkin(4) * t685 + pkin(5) * t773 - pkin(10) * t740 - t1162;
t513 = -pkin(3) * t699 + pkin(8) * t615 + t1076 * t553 + t1081 * t548;
t512 = -pkin(1) * t542 - pkin(2) * t581 - pkin(3) * t628 - pkin(4) * t683 - pkin(5) * t771 - pkin(10) * t738 + t1153;
t511 = -t1077 * t532 + t1082 * t533;
t510 = t1077 * t533 + t1082 * t532;
t509 = -pkin(7) * t551 - t1077 * t549 + t1082 * t550;
t508 = pkin(2) * t819 + pkin(7) * t552 + t1077 * t550 + t1082 * t549;
t507 = -pkin(1) * t535 - pkin(2) * t576 - pkin(3) * t614 - pkin(4) * t669 - pkin(5) * t842 - pkin(10) * t701 - t592;
t506 = -pkin(1) * t521 - pkin(2) * t551 - pkin(3) * t594 - pkin(4) * t646;
t505 = -pkin(7) * t583 - t1077 * t524 + t1082 * t526;
t504 = -pkin(7) * t581 - t1077 * t523 + t1082 * t525;
t503 = -pkin(2) * t739 + pkin(7) * t584 + t1077 * t526 + t1082 * t524;
t502 = -pkin(2) * t737 + pkin(7) * t582 + t1077 * t525 + t1082 * t523;
t501 = -qJ(2) * t568 - t1072 * t517 + t1073 * t518;
t500 = -pkin(7) * t576 - t1077 * t513 + t1082 * t515;
t499 = -pkin(8) * t532 - t1076 * t516 + t1081 * t528;
t498 = -t1072 * t510 + t1073 * t511;
t497 = t1072 * t511 + t1073 * t510;
t496 = -pkin(2) * t699 + pkin(7) * t577 + t1077 * t515 + t1082 * t513;
t495 = -pkin(3) * t591 + pkin(8) * t533 + t1076 * t528 + t1081 * t516;
t494 = t1078 * t591 + t1083 * t498;
t493 = t1078 * t498 - t1083 * t591;
t492 = -qJ(2) * t521 - t1072 * t508 + t1073 * t509;
t491 = -qJ(2) * t544 - t1072 * t503 + t1073 * t505;
t490 = -qJ(2) * t542 - t1072 * t502 + t1073 * t504;
t489 = -pkin(1) * t497 - pkin(2) * t510 - pkin(3) * t532 - pkin(4) * t566 + pkin(5) * t677 - pkin(10) * t592;
t488 = -qJ(2) * t535 - t1072 * t496 + t1073 * t500;
t487 = -pkin(7) * t510 - t1077 * t495 + t1082 * t499;
t486 = -pkin(2) * t591 + pkin(7) * t511 + t1077 * t499 + t1082 * t495;
t485 = -qJ(2) * t497 - t1072 * t486 + t1073 * t487;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1048, -t1049, 0, t1021, 0, 0, 0, 0, 0, 0, -t1093, t1018, t1015, t938, 0, 0, 0, 0, 0, 0, t866, t889, t864, t796, 0, 0, 0, 0, 0, 0, t722, t745, t682, t617, 0, 0, 0, 0, 0, 0, t606, t638, t565, t520, 0, 0, 0, 0, 0, 0, t538, t540, t531, t494; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1049, -t1048, 0, t1020, 0, 0, 0, 0, 0, 0, t1017, t1016, t1014, t937, 0, 0, 0, 0, 0, 0, t865, t888, t863, t795, 0, 0, 0, 0, 0, 0, t721, t744, t681, t616, 0, 0, 0, 0, 0, 0, t605, t637, t564, t519, 0, 0, 0, 0, 0, 0, t537, t539, t530, t493; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t967, 0, 0, 0, 0, 0, 0, t895, t914, t903, t811, 0, 0, 0, 0, 0, 0, t755, t781, t694, t621, 0, 0, 0, 0, 0, 0, t623, t650, t568, t521, 0, 0, 0, 0, 0, 0, t542, t544, t535, t497; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1049, 0, -t1048, 0, t1096, -t1032, -t1020, -pkin(6) * t1020, t1023, t1045 * t1083 - t1047 * t1078, t1018, -t1023, t1093, 0, -pkin(6) * t1017 - t1012 * t1078 - t1072 * t1137, -pkin(6) * t1016 - t1013 * t1078 - t1073 * t1137, -pkin(6) * t1014 + t1083 * t967, -pkin(6) * t937 - (pkin(1) * t1078 - qJ(2) * t1083) * t967, t1083 * t920 + t1106, -t1010 * t1078 + t1083 * t905, t1078 * t1180 + t1083 * t916, t1083 * t919 - t1106, -t1035 * t1078 + t1083 * t915, qJDD(3) * t1078 + t1083 * t943, -pkin(6) * t865 - t1078 * t831 + t1083 * t797, -pkin(6) * t888 - t1078 * t843 + t1083 * t816, -pkin(6) * t863 - t1078 * t861 + t1083 * t743, -pkin(6) * t795 - t1078 * t778 + t1083 * t728, t1083 * t760 - t1113, -t1078 * t958 + t1083 * t695, -t1078 * t902 + t1083 * t785, t1083 * t759 + t1113, -t1078 * t898 + t1083 * t786, t1078 * t1117 + t1083 * t813, -pkin(6) * t721 - t1078 * t668 + t1083 * t613, -pkin(6) * t744 - t1078 * t689 + t1083 * t636, -pkin(6) * t681 - t1078 * t648 + t1083 * t560, -pkin(6) * t616 - t1078 * t593 + t1083 * t554, t1083 * t600 + t1114, -t1078 * t887 + t1083 * t569, -t1078 * t810 + t1083 * t654, t1083 * t599 - t1114, -t1078 * t806 + t1083 * t655, t1061 * t1078 + t1083 * t671, -pkin(6) * t605 - t1078 * t573 + t1083 * t527, -pkin(6) * t637 - t1078 * t586 + t1083 * t529, -pkin(6) * t564 - t1078 * t534 + t1083 * t501, -pkin(6) * t519 - t1078 * t506 + t1083 * t492, -t1078 * t768 + t1083 * t572, -t1078 * t698 + t1083 * t541, -t1078 * t751 + t1083 * t546, -t1078 * t766 + t1083 * t571, -t1078 * t752 + t1083 * t547, -t1078 * t817 + t1083 * t585, -pkin(6) * t537 - t1078 * t512 + t1083 * t490, -pkin(6) * t539 - t1078 * t514 + t1083 * t491, -pkin(6) * t530 - t1078 * t507 + t1083 * t488, -pkin(6) * t493 - t1078 * t489 + t1083 * t485; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1048, 0, t1049, 0, t1032, t1096, t1021, pkin(6) * t1021, t1022, t1045 * t1078 + t1047 * t1083, t1016, -t1022, -t1017, 0, -pkin(6) * t1093 + t1012 * t1083 - t1072 * t1138, pkin(6) * t1018 + t1013 * t1083 - t1073 * t1138, pkin(6) * t1015 + t1078 * t967, pkin(6) * t938 - (-pkin(1) * t1083 - qJ(2) * t1078) * t967, t1078 * t920 - t1105, t1010 * t1083 + t1078 * t905, t1078 * t916 - t1083 * t1180, t1078 * t919 + t1105, t1035 * t1083 + t1078 * t915, -qJDD(3) * t1083 + t1078 * t943, pkin(6) * t866 + t1078 * t797 + t1083 * t831, pkin(6) * t889 + t1078 * t816 + t1083 * t843, pkin(6) * t864 + t1078 * t743 + t1083 * t861, pkin(6) * t796 + t1078 * t728 + t1083 * t778, t1078 * t760 + t1110, t1078 * t695 + t1083 * t958, t1078 * t785 + t1083 * t902, t1078 * t759 - t1110, t1078 * t786 + t1083 * t898, t1078 * t813 - t1083 * t1117, pkin(6) * t722 + t1078 * t613 + t1083 * t668, pkin(6) * t745 + t1078 * t636 + t1083 * t689, pkin(6) * t682 + t1078 * t560 + t1083 * t648, pkin(6) * t617 + t1078 * t554 + t1083 * t593, t1078 * t600 - t1111, t1078 * t569 + t1083 * t887, t1078 * t654 + t1083 * t810, t1078 * t599 + t1111, t1078 * t655 + t1083 * t806, -t1061 * t1083 + t1078 * t671, pkin(6) * t606 + t1078 * t527 + t1083 * t573, pkin(6) * t638 + t1078 * t529 + t1083 * t586, pkin(6) * t565 + t1078 * t501 + t1083 * t534, pkin(6) * t520 + t1078 * t492 + t1083 * t506, t1078 * t572 + t1083 * t768, t1078 * t541 + t1083 * t698, t1078 * t546 + t1083 * t751, t1078 * t571 + t1083 * t766, t1078 * t547 + t1083 * t752, t1078 * t585 + t1083 * t817, pkin(6) * t538 + t1078 * t490 + t1083 * t512, pkin(6) * t540 + t1078 * t491 + t1083 * t514, pkin(6) * t531 + t1078 * t488 + t1083 * t507, pkin(6) * t494 + t1078 * t485 + t1083 * t489; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1050, t1051, 0, 0, t1062, 0.2e1 * t1072 * t1120, 0, t1063, 0, 0, -qJ(2) * t1042 + t1073 * t1104, qJ(2) * t1041 - t1072 * t1104, pkin(1) * t1046 + qJ(2) * t1044 + t968, pkin(1) * t1031 + qJ(2) * t968, t1072 * t978 + t1073 * t977, t1072 * t965 + t1073 * t963, t1072 * t973 + t1073 * t970, t1072 * t976 + t1073 * t975, t1072 * t972 + t1073 * t969, t1072 * t993 + t1073 * t992, -pkin(1) * t1005 + qJ(2) * t896 + t1072 * t923 + t1073 * t906, -pkin(1) * t1007 + qJ(2) * t917 + t1072 * t926 + t1073 * t909, -pkin(1) * t980 + qJ(2) * t904 + t1072 * t857 + t1073 * t840, pkin(1) * t1001 - pkin(7) * t1164 + qJ(2) * t812 + t1073 * t862, t1072 * t830 + t1073 * t828, t1072 * t763 + t1073 * t761, t1072 * t855 + t1073 * t853, t1072 * t829 + t1073 * t827, t1072 * t856 + t1073 * t854, t1072 * t872 + t1073 * t871, -pkin(1) * t897 + qJ(2) * t756 + t1072 * t713 + t1073 * t697, -pkin(1) * t1184 + qJ(2) * t782 + t1072 * t720 + t1073 * t710, -pkin(1) * t922 + qJ(2) * t696 + t1072 * t627 + t1073 * t620, pkin(1) * t918 + qJ(2) * t622 + t1072 * t618 + t1073 * t612, t1072 * t659 + t1073 * t657, t1072 * t603 + t1073 * t601, t1072 * t716 + t1073 * t714, t1072 * t658 + t1073 * t656, t1072 * t717 + t1073 * t715, t1072 * t742 + t1073 * t741, -pkin(1) * t805 + qJ(2) * t624 + t1072 * t563 + t1073 * t559, -pkin(1) * t808 + qJ(2) * t651 + t1072 * t578 + t1073 * t575, -pkin(1) * t860 + qJ(2) * t570 + t1072 * t518 + t1073 * t517, pkin(1) * t819 + qJ(2) * t522 + t1072 * t509 + t1073 * t508, t1072 * t610 + t1073 * t608, t1072 * t580 + t1073 * t579, t1072 * t589 + t1073 * t587, t1072 * t609 + t1073 * t607, t1072 * t590 + t1073 * t588, t1072 * t633 + t1073 * t632, -pkin(1) * t737 + qJ(2) * t543 + t1072 * t504 + t1073 * t502, -pkin(1) * t739 + qJ(2) * t545 + t1072 * t505 + t1073 * t503, -pkin(1) * t699 + qJ(2) * t536 + t1072 * t500 + t1073 * t496, -pkin(1) * t591 + qJ(2) * t498 + t1072 * t487 + t1073 * t486;];
tauB_reg  = t1;
