% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRPRRR8
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,d6,theta3]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 22:44
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRPRRR8_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR8_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR8_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRR8_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRR8_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRR8_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 22:41:55
% EndTime: 2019-05-06 22:43:12
% DurationCPUTime: 60.18s
% Computational Cost: add. (571454->945), mult. (1262432->1460), div. (0->0), fcn. (953042->12), ass. (0->650)
t1092 = sin(pkin(11));
t1097 = sin(qJ(2));
t1155 = qJD(1) * t1097;
t1084 = qJD(2) * t1155;
t1102 = cos(qJ(2));
t1130 = t1102 * qJDD(1);
t1057 = -t1084 + t1130;
t1093 = cos(pkin(11));
t1049 = qJD(2) * t1092 + t1093 * t1155;
t1120 = qJD(2) * t1093 - t1092 * t1155;
t1112 = t1120 * t1049;
t1195 = -t1057 + t1112;
t1197 = t1092 * t1195;
t1196 = t1093 * t1195;
t1118 = t1120 ^ 2;
t1094 = sin(qJ(6));
t1099 = cos(qJ(6));
t1095 = sin(qJ(5));
t1100 = cos(qJ(5));
t1096 = sin(qJ(4));
t1101 = cos(qJ(4));
t1009 = t1101 * t1049 + t1096 * t1120;
t1154 = qJD(1) * t1102;
t1123 = qJD(2) * t1154;
t1133 = qJDD(1) * t1097;
t1056 = t1123 + t1133;
t1030 = qJDD(2) * t1092 + t1093 * t1056;
t1111 = qJDD(2) * t1093 - t1056 * t1092;
t1119 = t1096 * t1030 - t1101 * t1111;
t1108 = qJD(4) * t1009 + t1119;
t1008 = t1096 * t1049 - t1101 * t1120;
t938 = -t1008 * qJD(4) + t1101 * t1030 + t1096 * t1111;
t1121 = t1095 * t938 + t1100 * t1108;
t958 = -t1008 * t1095 + t1009 * t1100;
t859 = -qJD(5) * t958 - t1121;
t956 = t1100 * t1008 + t1009 * t1095;
t860 = -t956 * qJD(5) - t1095 * t1108 + t1100 * t938;
t893 = t1094 * t958 + t1099 * t956;
t752 = -qJD(6) * t893 + t1094 * t859 + t1099 * t860;
t1081 = -qJD(4) + t1154;
t1072 = -qJD(5) + t1081;
t1065 = -qJD(6) + t1072;
t883 = t893 * t1065;
t1194 = t752 + t883;
t941 = t956 * t1072;
t818 = t941 - t860;
t1193 = t941 + t860;
t996 = t1008 * t1081;
t915 = t996 - t938;
t1192 = t996 + t938;
t1050 = -qJDD(4) + t1057;
t1047 = -qJDD(5) + t1050;
t1040 = -qJDD(6) + t1047;
t895 = -t1094 * t956 + t1099 * t958;
t1178 = t893 * t895;
t1105 = -t1040 - t1178;
t1191 = t1094 * t1105;
t1177 = t956 * t958;
t1106 = -t1047 - t1177;
t1190 = t1095 * t1106;
t1151 = t1008 * t1009;
t1107 = -t1050 - t1151;
t1189 = t1096 * t1107;
t1188 = t1099 * t1105;
t1187 = t1100 * t1106;
t1186 = t1101 * t1107;
t1036 = t1120 * t1154;
t1001 = -t1030 - t1036;
t1037 = t1049 * t1154;
t999 = t1111 - t1037;
t814 = (qJD(5) + t1072) * t958 + t1121;
t1122 = t1094 * t860 - t1099 * t859;
t723 = (qJD(6) + t1065) * t895 + t1122;
t911 = (qJD(4) + t1081) * t1009 + t1119;
t891 = t893 ^ 2;
t892 = t895 ^ 2;
t1185 = t956 ^ 2;
t955 = t958 ^ 2;
t1184 = qJD(2) ^ 2;
t1183 = t1008 ^ 2;
t1007 = t1009 ^ 2;
t1048 = t1049 ^ 2;
t1062 = t1065 ^ 2;
t1071 = t1072 ^ 2;
t1079 = t1081 ^ 2;
t1182 = 2 * qJD(3);
t1181 = pkin(2) * t1097;
t1180 = pkin(2) * t1102;
t1179 = t1102 * g(3);
t1098 = sin(qJ(1));
t1103 = cos(qJ(1));
t1069 = t1098 * g(1) - t1103 * g(2);
t1104 = qJD(1) ^ 2;
t1043 = qJDD(1) * pkin(1) + t1104 * pkin(7) + t1069;
t1113 = t1056 + t1123;
t969 = -t1113 * qJ(3) + (-t1057 + t1084) * pkin(2) - t1043;
t1070 = g(1) * t1103 + g(2) * t1098;
t1044 = -pkin(1) * t1104 + qJDD(1) * pkin(7) - t1070;
t1026 = -g(3) * t1097 + t1102 * t1044;
t1114 = -qJ(3) * t1097 - t1180;
t1054 = t1114 * qJD(1);
t978 = -pkin(2) * t1184 + qJDD(2) * qJ(3) + t1054 * t1154 + t1026;
t918 = t1049 * t1182 + t1092 * t978 - t1093 * t969;
t868 = pkin(3) * t1195 + pkin(8) * t1001 - t918;
t1031 = -pkin(3) * t1154 - pkin(8) * t1049;
t919 = t1092 * t969 + t1093 * t978 + t1120 * t1182;
t873 = -pkin(3) * t1118 + pkin(8) * t1111 + t1031 * t1154 + t919;
t799 = t1096 * t873 - t1101 * t868;
t763 = t1107 * pkin(4) + pkin(9) * t915 - t799;
t800 = t1096 * t868 + t1101 * t873;
t985 = -pkin(4) * t1081 - pkin(9) * t1009;
t769 = -pkin(4) * t1183 - pkin(9) * t1108 + t1081 * t985 + t800;
t694 = t1095 * t769 - t1100 * t763;
t654 = t1106 * pkin(5) + pkin(10) * t818 - t694;
t695 = t1095 * t763 + t1100 * t769;
t932 = -pkin(5) * t1072 - pkin(10) * t958;
t669 = -pkin(5) * t1185 + pkin(10) * t859 + t1072 * t932 + t695;
t611 = t1094 * t654 + t1099 * t669;
t733 = t1096 * t800 - t1101 * t799;
t1176 = t1092 * t733;
t977 = t1179 + qJDD(3) - t1184 * qJ(3) - qJDD(2) * pkin(2) + (qJD(1) * t1054 + t1044) * t1097;
t1175 = t1092 * t977;
t1174 = t1093 * t733;
t1173 = t1093 * t977;
t921 = -t1111 * pkin(3) - t1118 * pkin(8) + t1049 * t1031 + t977;
t827 = t1108 * pkin(4) - t1183 * pkin(9) + t1009 * t985 + t921;
t732 = -t859 * pkin(5) - pkin(10) * t1185 + t958 * t932 + t827;
t1172 = t1094 * t732;
t823 = t1040 - t1178;
t1171 = t1094 * t823;
t610 = t1094 * t669 - t1099 * t654;
t567 = t1094 * t611 - t1099 * t610;
t1170 = t1095 * t567;
t1169 = t1095 * t827;
t885 = t1047 - t1177;
t1168 = t1095 * t885;
t637 = t1095 * t695 - t1100 * t694;
t1167 = t1096 * t637;
t1166 = t1096 * t921;
t943 = t1050 - t1151;
t1165 = t1096 * t943;
t1164 = t1099 * t732;
t1163 = t1099 * t823;
t1162 = t1100 * t567;
t1161 = t1100 * t827;
t1160 = t1100 * t885;
t1159 = t1101 * t637;
t1158 = t1101 * t921;
t1157 = t1101 * t943;
t1156 = qJD(1) * qJD(2);
t1002 = t1057 + t1112;
t1153 = t1002 * t1092;
t1152 = t1002 * t1093;
t1150 = t1043 * t1097;
t1149 = t1043 * t1102;
t1148 = t1057 * t1097;
t1147 = t1065 * t1094;
t1146 = t1065 * t1099;
t1080 = t1102 * t1104 * t1097;
t1067 = -t1080 + qJDD(2);
t1145 = t1067 * t1097;
t1144 = t1067 * t1102;
t1068 = qJDD(2) + t1080;
t1143 = t1068 * t1097;
t1142 = t1072 * t1095;
t1141 = t1072 * t1100;
t1140 = t1081 * t1096;
t1139 = t1081 * t1101;
t1089 = t1097 ^ 2;
t1138 = t1089 * t1104;
t1090 = t1102 ^ 2;
t1134 = t1089 + t1090;
t1132 = qJDD(1) * t1098;
t1131 = qJDD(1) * t1103;
t1129 = t1097 * t1178;
t1128 = t1097 * t1177;
t1127 = t1102 * t1178;
t1126 = t1102 * t1177;
t1125 = t1097 * t1151;
t1124 = t1102 * t1151;
t568 = t1094 * t610 + t1099 * t611;
t638 = t1095 * t694 + t1100 * t695;
t734 = t1096 * t799 + t1101 * t800;
t1025 = t1044 * t1097 + t1179;
t972 = t1025 * t1097 + t1102 * t1026;
t1017 = -t1069 * t1098 - t1103 * t1070;
t1117 = t1098 * t1080;
t1116 = t1103 * t1080;
t1061 = -t1098 * t1104 + t1131;
t1115 = -pkin(6) * t1061 - g(3) * t1098;
t851 = t1092 * t919 - t1093 * t918;
t852 = t1092 * t918 + t1093 * t919;
t971 = t1025 * t1102 - t1026 * t1097;
t1016 = t1069 * t1103 - t1070 * t1098;
t1110 = t1097 * t1112;
t1109 = t1102 * t1112;
t1086 = t1090 * t1104;
t1078 = -t1086 - t1184;
t1077 = t1086 - t1184;
t1076 = -t1138 - t1184;
t1075 = -t1138 + t1184;
t1064 = t1086 - t1138;
t1063 = t1086 + t1138;
t1060 = t1103 * t1104 + t1132;
t1059 = t1134 * qJDD(1);
t1058 = -0.2e1 * t1084 + t1130;
t1055 = 0.2e1 * t1123 + t1133;
t1052 = t1102 * t1068;
t1051 = t1134 * t1156;
t1045 = t1102 * t1057;
t1038 = -pkin(6) * t1060 + g(3) * t1103;
t1034 = -t1048 - t1086;
t1033 = -t1048 + t1086;
t1032 = t1118 - t1086;
t1029 = t1056 * t1102 - t1089 * t1156;
t1028 = -t1090 * t1156 - t1148;
t1024 = -t1076 * t1097 - t1144;
t1023 = -t1075 * t1097 + t1052;
t1022 = t1078 * t1102 - t1143;
t1021 = t1077 * t1102 - t1145;
t1020 = t1076 * t1102 - t1145;
t1019 = t1078 * t1097 + t1052;
t1014 = t1059 * t1103 - t1063 * t1098;
t1013 = t1059 * t1098 + t1063 * t1103;
t1012 = t1118 - t1048;
t1011 = -t1055 * t1097 + t1058 * t1102;
t1010 = -t1086 - t1118;
t1000 = t1030 - t1036;
t998 = t1037 + t1111;
t994 = t1118 + t1048;
t993 = (-t1092 * t1049 - t1093 * t1120) * t1154;
t992 = (-t1093 * t1049 + t1092 * t1120) * t1154;
t991 = -t1007 + t1079;
t990 = -t1079 + t1183;
t989 = t1024 * t1103 + t1055 * t1098;
t988 = t1022 * t1103 - t1058 * t1098;
t987 = t1024 * t1098 - t1055 * t1103;
t986 = t1022 * t1098 + t1058 * t1103;
t984 = -pkin(7) * t1020 - t1149;
t983 = -pkin(7) * t1019 - t1150;
t982 = t1030 * t1093 + t1037 * t1092;
t981 = -t1030 * t1092 + t1037 * t1093;
t980 = t1036 * t1093 - t1092 * t1111;
t979 = -t1036 * t1092 - t1093 * t1111;
t976 = -pkin(1) * t1020 + t1026;
t975 = -pkin(1) * t1019 + t1025;
t974 = -t1007 - t1079;
t966 = t1102 * t993 - t1148;
t965 = t1032 * t1093 + t1153;
t964 = -t1033 * t1092 + t1196;
t963 = -t1034 * t1092 + t1152;
t962 = -t1032 * t1092 + t1152;
t961 = -t1033 * t1093 - t1197;
t960 = t1034 * t1093 + t1153;
t959 = -t1007 + t1183;
t954 = -t1043 * t1098 + t1103 * t972;
t953 = t1043 * t1103 + t1098 * t972;
t951 = -t1079 - t1183;
t949 = t1010 * t1093 - t1197;
t948 = t1010 * t1092 + t1196;
t947 = t1102 * t982 - t1110;
t946 = t1102 * t980 + t1110;
t940 = -t955 + t1071;
t939 = -t1071 + t1185;
t937 = -t1001 * t1092 + t1093 * t999;
t936 = -t1000 * t1092 + t1093 * t998;
t935 = t1001 * t1093 + t1092 * t999;
t934 = -t1000 * t1093 - t1092 * t998;
t931 = (t1008 * t1101 - t1009 * t1096) * t1081;
t930 = (t1008 * t1096 + t1009 * t1101) * t1081;
t928 = -t955 - t1071;
t927 = -t1007 - t1183;
t926 = t1097 * t999 + t1102 * t965;
t925 = -t1001 * t1097 + t1102 * t964;
t924 = t1000 * t1097 + t1102 * t963;
t923 = -t1000 * t1102 + t1097 * t963;
t922 = -qJ(3) * t960 + t1173;
t920 = -t1012 * t1097 + t1102 * t936;
t917 = -t1097 * t998 + t1102 * t949;
t916 = t1097 * t949 + t1102 * t998;
t910 = (qJD(4) - t1081) * t1009 + t1119;
t909 = t1101 * t990 + t1165;
t908 = -t1096 * t991 + t1186;
t907 = t1096 * t990 - t1157;
t906 = t1101 * t991 + t1189;
t905 = t1009 * t1140 + t1101 * t938;
t904 = -t1009 * t1139 + t1096 * t938;
t903 = -t1008 * t1139 + t1096 * t1108;
t902 = -t1008 * t1140 - t1101 * t1108;
t901 = -qJ(3) * t948 + t1175;
t900 = -t1097 * t994 + t1102 * t937;
t899 = t1097 * t937 + t1102 * t994;
t898 = -t1096 * t974 + t1157;
t897 = t1101 * t974 + t1165;
t896 = -t955 + t1185;
t890 = -t1071 - t1185;
t889 = t1101 * t951 - t1189;
t888 = t1096 * t951 + t1186;
t882 = -t892 + t1062;
t881 = t891 - t1062;
t880 = (-t1095 * t958 + t1100 * t956) * t1072;
t879 = (t1095 * t956 + t1100 * t958) * t1072;
t878 = -t892 - t1062;
t877 = -t1092 * t930 + t1093 * t931;
t876 = -t1092 * t931 - t1093 * t930;
t875 = t1098 * t960 + t1103 * t924;
t874 = t1098 * t924 - t1103 * t960;
t871 = -pkin(2) * t960 + t919;
t870 = -t1050 * t1097 + t1102 * t877;
t869 = -pkin(2) * t948 + t918;
t865 = t1098 * t948 + t1103 * t917;
t864 = t1098 * t917 - t1103 * t948;
t863 = -t955 - t1185;
t862 = t1098 * t935 + t1103 * t900;
t861 = t1098 * t900 - t1103 * t935;
t857 = t1100 * t939 + t1168;
t856 = -t1095 * t940 + t1187;
t855 = t1095 * t939 - t1160;
t854 = t1100 * t940 + t1190;
t850 = -t1096 * t915 - t1101 * t911;
t849 = -t1096 * t1192 - t1101 * t910;
t848 = -t1096 * t911 + t1101 * t915;
t847 = -t1096 * t910 + t1101 * t1192;
t846 = -pkin(8) * t897 + t1158;
t845 = -t1095 * t928 + t1160;
t844 = t1100 * t928 + t1168;
t843 = -t1092 * t907 + t1093 * t909;
t842 = -t1092 * t906 + t1093 * t908;
t841 = -t1092 * t909 - t1093 * t907;
t840 = -t1092 * t908 - t1093 * t906;
t839 = -t1092 * t904 + t1093 * t905;
t838 = -t1092 * t902 + t1093 * t903;
t837 = -t1092 * t905 - t1093 * t904;
t836 = -t1092 * t903 - t1093 * t902;
t835 = -pkin(1) * t923 + pkin(2) * t1000 - qJ(3) * t963 - t1175;
t834 = -t1092 * t897 + t1093 * t898;
t833 = t1092 * t898 + t1093 * t897;
t832 = -pkin(8) * t888 + t1166;
t831 = -pkin(1) * t916 - pkin(2) * t998 - qJ(3) * t949 + t1173;
t830 = t1097 * t977 + t1102 * t852;
t829 = t1097 * t852 - t1102 * t977;
t828 = -t892 + t891;
t826 = -t1062 - t891;
t822 = t1100 * t890 - t1190;
t821 = t1095 * t890 + t1187;
t820 = -t1092 * t888 + t1093 * t889;
t819 = t1092 * t889 + t1093 * t888;
t813 = (qJD(5) - t1072) * t958 + t1121;
t812 = (-t1094 * t895 + t1099 * t893) * t1065;
t811 = (t1094 * t893 + t1099 * t895) * t1065;
t810 = t1100 * t860 + t1142 * t958;
t809 = t1095 * t860 - t1141 * t958;
t808 = -t1095 * t859 - t1141 * t956;
t807 = t1100 * t859 - t1142 * t956;
t806 = -qJ(3) * t935 - t851;
t805 = t1102 * t839 + t1125;
t804 = t1102 * t838 - t1125;
t803 = -t1096 * t879 + t1101 * t880;
t802 = t1096 * t880 + t1101 * t879;
t801 = -pkin(3) * t1192 + pkin(8) * t898 + t1166;
t798 = -t1097 * t911 + t1102 * t843;
t797 = -t1097 * t915 + t1102 * t842;
t795 = t1097 * t1192 + t1102 * t834;
t794 = t1097 * t834 - t1102 * t1192;
t793 = -pkin(3) * t910 + pkin(8) * t889 - t1158;
t792 = -pkin(7) * t923 - t1097 * t871 + t1102 * t922;
t791 = t1097 * t910 + t1102 * t820;
t790 = t1097 * t820 - t1102 * t910;
t789 = -t891 - t892;
t788 = -pkin(7) * t916 - t1097 * t869 + t1102 * t901;
t787 = t1099 * t881 + t1171;
t786 = -t1094 * t882 + t1188;
t785 = t1094 * t881 - t1163;
t784 = t1099 * t882 + t1191;
t783 = -t1094 * t878 + t1163;
t782 = t1099 * t878 + t1171;
t781 = -t1096 * t855 + t1101 * t857;
t780 = -t1096 * t854 + t1101 * t856;
t779 = t1096 * t857 + t1101 * t855;
t778 = t1096 * t856 + t1101 * t854;
t777 = -pkin(1) * t899 - pkin(2) * t994 - qJ(3) * t937 - t852;
t776 = -t1092 * t848 + t1093 * t850;
t775 = -t1092 * t847 + t1093 * t849;
t774 = t1092 * t850 + t1093 * t848;
t773 = -t1092 * t849 - t1093 * t847;
t772 = -t1096 * t844 + t1101 * t845;
t771 = t1096 * t845 + t1101 * t844;
t770 = -pkin(7) * t899 + t1102 * t806 + t1181 * t935;
t768 = t1098 * t851 + t1103 * t830;
t767 = t1098 * t830 - t1103 * t851;
t765 = -pkin(9) * t844 + t1161;
t764 = -t1097 * t959 + t1102 * t775;
t760 = -pkin(1) * t829 + pkin(2) * t977 - qJ(3) * t852;
t759 = t1097 * t927 + t1102 * t776;
t758 = t1097 * t776 - t1102 * t927;
t757 = -pkin(9) * t821 + t1169;
t756 = t1099 * t826 - t1191;
t755 = t1094 * t826 + t1188;
t754 = -t1096 * t821 + t1101 * t822;
t753 = t1096 * t822 + t1101 * t821;
t751 = -qJD(6) * t895 - t1122;
t750 = -t1095 * t818 - t1100 * t814;
t749 = -t1095 * t1193 - t1100 * t813;
t748 = -t1095 * t814 + t1100 * t818;
t747 = -t1095 * t813 + t1100 * t1193;
t746 = -t1095 * t811 + t1100 * t812;
t745 = t1095 * t812 + t1100 * t811;
t744 = -t1096 * t809 + t1101 * t810;
t743 = -t1096 * t807 + t1101 * t808;
t742 = t1096 * t810 + t1101 * t809;
t741 = t1096 * t808 + t1101 * t807;
t740 = t1098 * t833 + t1103 * t795;
t739 = t1098 * t795 - t1103 * t833;
t738 = -t1092 * t802 + t1093 * t803;
t737 = -t1092 * t803 - t1093 * t802;
t736 = -t1047 * t1097 + t1102 * t738;
t735 = -pkin(2) * t774 - pkin(3) * t848;
t731 = t1098 * t819 + t1103 * t791;
t730 = t1098 * t791 - t1103 * t819;
t729 = -pkin(2) * t833 - pkin(3) * t897 + t800;
t728 = -pkin(7) * t829 + (-qJ(3) * t1102 + t1181) * t851;
t727 = -t752 + t883;
t722 = (qJD(6) - t1065) * t895 + t1122;
t721 = t1099 * t752 + t1147 * t895;
t720 = t1094 * t752 - t1146 * t895;
t719 = -t1094 * t751 - t1146 * t893;
t718 = t1099 * t751 - t1147 * t893;
t717 = -pkin(2) * t819 - pkin(3) * t888 + t799;
t716 = -pkin(4) * t1193 + pkin(9) * t845 + t1169;
t715 = -pkin(3) * t921 + pkin(8) * t734;
t714 = -qJ(3) * t833 - t1092 * t801 + t1093 * t846;
t713 = -pkin(4) * t813 + pkin(9) * t822 - t1161;
t712 = -t1095 * t785 + t1100 * t787;
t711 = -t1095 * t784 + t1100 * t786;
t710 = t1095 * t787 + t1100 * t785;
t709 = t1095 * t786 + t1100 * t784;
t708 = -t1095 * t782 + t1100 * t783;
t707 = t1095 * t783 + t1100 * t782;
t706 = -t1092 * t779 + t1093 * t781;
t705 = -t1092 * t778 + t1093 * t780;
t704 = -t1092 * t781 - t1093 * t779;
t703 = -t1092 * t780 - t1093 * t778;
t702 = -qJ(3) * t819 - t1092 * t793 + t1093 * t832;
t701 = -pkin(8) * t848 - t733;
t700 = -t1092 * t771 + t1093 * t772;
t699 = t1092 * t772 + t1093 * t771;
t698 = t1098 * t774 + t1103 * t759;
t697 = t1098 * t759 - t1103 * t774;
t696 = -pkin(3) * t927 + pkin(8) * t850 + t734;
t692 = -t1095 * t755 + t1100 * t756;
t691 = t1095 * t756 + t1100 * t755;
t690 = -pkin(10) * t782 + t1164;
t689 = -t1092 * t753 + t1093 * t754;
t688 = t1092 * t754 + t1093 * t753;
t687 = -t1096 * t748 + t1101 * t750;
t686 = -t1096 * t747 + t1101 * t749;
t685 = t1096 * t750 + t1101 * t748;
t684 = t1096 * t749 + t1101 * t747;
t683 = -t1096 * t745 + t1101 * t746;
t682 = t1096 * t746 + t1101 * t745;
t681 = -t1097 * t814 + t1102 * t706;
t680 = -t1097 * t818 + t1102 * t705;
t679 = -t1092 * t742 + t1093 * t744;
t678 = -t1092 * t741 + t1093 * t743;
t677 = -t1092 * t744 - t1093 * t742;
t676 = -t1092 * t743 - t1093 * t741;
t675 = t1097 * t1193 + t1102 * t700;
t674 = t1097 * t700 - t1102 * t1193;
t673 = -pkin(10) * t755 + t1172;
t672 = -pkin(1) * t794 + pkin(2) * t1192 - qJ(3) * t834 - t1092 * t846 - t1093 * t801;
t671 = t1102 * t679 + t1128;
t670 = t1102 * t678 - t1128;
t667 = t1093 * t734 - t1176;
t666 = t1092 * t734 + t1174;
t665 = -pkin(1) * t790 + pkin(2) * t910 - qJ(3) * t820 - t1092 * t832 - t1093 * t793;
t664 = -t1094 * t727 - t1099 * t723;
t663 = -t1094 * t1194 - t1099 * t722;
t662 = -t1094 * t723 + t1099 * t727;
t661 = -t1094 * t722 + t1099 * t1194;
t660 = t1097 * t813 + t1102 * t689;
t659 = t1097 * t689 - t1102 * t813;
t658 = -t1095 * t720 + t1100 * t721;
t657 = -t1095 * t718 + t1100 * t719;
t656 = t1095 * t721 + t1100 * t720;
t655 = t1095 * t719 + t1100 * t718;
t651 = t1097 * t921 + t1102 * t667;
t650 = t1097 * t667 - t1102 * t921;
t649 = -t1096 * t710 + t1101 * t712;
t648 = -t1096 * t709 + t1101 * t711;
t647 = t1096 * t712 + t1101 * t710;
t646 = t1096 * t711 + t1101 * t709;
t645 = -pkin(8) * t771 - t1096 * t716 + t1101 * t765;
t644 = -t1096 * t707 + t1101 * t708;
t643 = t1096 * t708 + t1101 * t707;
t642 = -pkin(5) * t1194 + pkin(10) * t783 + t1172;
t641 = -pkin(7) * t794 - t1097 * t729 + t1102 * t714;
t640 = -pkin(5) * t722 + pkin(10) * t756 - t1164;
t639 = -pkin(8) * t753 - t1096 * t713 + t1101 * t757;
t636 = -pkin(3) * t1193 + pkin(8) * t772 + t1096 * t765 + t1101 * t716;
t635 = -pkin(7) * t790 - t1097 * t717 + t1102 * t702;
t634 = -pkin(2) * t666 - pkin(3) * t733;
t633 = t1098 * t699 + t1103 * t675;
t632 = t1098 * t675 - t1103 * t699;
t631 = -t1096 * t691 + t1101 * t692;
t630 = t1096 * t692 + t1101 * t691;
t629 = -pkin(3) * t813 + pkin(8) * t754 + t1096 * t757 + t1101 * t713;
t628 = -pkin(4) * t827 + pkin(9) * t638;
t627 = -t1092 * t685 + t1093 * t687;
t626 = -t1092 * t684 + t1093 * t686;
t625 = t1092 * t687 + t1093 * t685;
t624 = -t1092 * t686 - t1093 * t684;
t623 = -t1092 * t682 + t1093 * t683;
t622 = -t1092 * t683 - t1093 * t682;
t621 = -qJ(3) * t774 - t1092 * t696 + t1093 * t701;
t620 = -t1040 * t1097 + t1102 * t623;
t619 = -t1097 * t896 + t1102 * t626;
t618 = t1097 * t863 + t1102 * t627;
t617 = t1097 * t627 - t1102 * t863;
t616 = t1098 * t688 + t1103 * t660;
t615 = t1098 * t660 - t1103 * t688;
t614 = -pkin(2) * t699 - pkin(3) * t771 - pkin(4) * t844 + t695;
t613 = -pkin(9) * t748 - t637;
t612 = -pkin(4) * t863 + pkin(9) * t750 + t638;
t608 = -t1095 * t662 + t1100 * t664;
t607 = -t1095 * t661 + t1100 * t663;
t606 = t1095 * t664 + t1100 * t662;
t605 = t1095 * t663 + t1100 * t661;
t604 = -pkin(8) * t1174 - qJ(3) * t666 - t1092 * t715;
t603 = t1098 * t666 + t1103 * t651;
t602 = t1098 * t651 - t1103 * t666;
t601 = -t1096 * t656 + t1101 * t658;
t600 = -t1096 * t655 + t1101 * t657;
t599 = t1096 * t658 + t1101 * t656;
t598 = t1096 * t657 + t1101 * t655;
t597 = -pkin(1) * t758 + pkin(2) * t927 - qJ(3) * t776 - t1092 * t701 - t1093 * t696;
t596 = -pkin(2) * t688 - pkin(3) * t753 - pkin(4) * t821 + t694;
t595 = -t1092 * t647 + t1093 * t649;
t594 = -t1092 * t646 + t1093 * t648;
t593 = -t1092 * t649 - t1093 * t647;
t592 = -t1092 * t648 - t1093 * t646;
t591 = -t1092 * t643 + t1093 * t644;
t590 = t1092 * t644 + t1093 * t643;
t589 = -pkin(7) * t758 - t1097 * t735 + t1102 * t621;
t588 = -pkin(9) * t707 - t1095 * t642 + t1100 * t690;
t587 = -pkin(2) * t625 - pkin(3) * t685 - pkin(4) * t748;
t586 = t1101 * t638 - t1167;
t585 = t1096 * t638 + t1159;
t584 = -t1097 * t723 + t1102 * t595;
t583 = -t1097 * t727 + t1102 * t594;
t582 = t1097 * t1194 + t1102 * t591;
t581 = t1097 * t591 - t1102 * t1194;
t580 = -pkin(9) * t691 - t1095 * t640 + t1100 * t673;
t579 = -pkin(1) * t650 + pkin(2) * t921 + pkin(8) * t1176 - qJ(3) * t667 - t1093 * t715;
t578 = -t1092 * t630 + t1093 * t631;
t577 = t1092 * t631 + t1093 * t630;
t576 = -pkin(4) * t1194 + pkin(9) * t708 + t1095 * t690 + t1100 * t642;
t575 = -qJ(3) * t699 - t1092 * t636 + t1093 * t645;
t574 = t1098 * t625 + t1103 * t618;
t573 = t1098 * t618 - t1103 * t625;
t572 = -pkin(4) * t722 + pkin(9) * t692 + t1095 * t673 + t1100 * t640;
t571 = t1097 * t722 + t1102 * t578;
t570 = t1097 * t578 - t1102 * t722;
t569 = -qJ(3) * t688 - t1092 * t629 + t1093 * t639;
t566 = -t1096 * t606 + t1101 * t608;
t565 = -t1096 * t605 + t1101 * t607;
t564 = t1096 * t608 + t1101 * t606;
t563 = t1096 * t607 + t1101 * t605;
t562 = -t1092 * t599 + t1093 * t601;
t561 = -t1092 * t598 + t1093 * t600;
t560 = -t1092 * t601 - t1093 * t599;
t559 = -t1092 * t600 - t1093 * t598;
t558 = t1102 * t562 + t1129;
t557 = t1102 * t561 - t1129;
t556 = -pkin(1) * t674 + pkin(2) * t1193 - qJ(3) * t700 - t1092 * t645 - t1093 * t636;
t555 = -pkin(5) * t732 + pkin(10) * t568;
t554 = -pkin(7) * t650 - t1097 * t634 + t1102 * t604;
t553 = -pkin(8) * t685 - t1096 * t612 + t1101 * t613;
t552 = -pkin(3) * t863 + pkin(8) * t687 + t1096 * t613 + t1101 * t612;
t551 = -pkin(10) * t662 - t567;
t550 = -pkin(1) * t659 + pkin(2) * t813 - qJ(3) * t689 - t1092 * t639 - t1093 * t629;
t549 = -pkin(5) * t789 + pkin(10) * t664 + t568;
t548 = t1098 * t590 + t1103 * t582;
t547 = t1098 * t582 - t1103 * t590;
t546 = -t1092 * t585 + t1093 * t586;
t545 = t1092 * t586 + t1093 * t585;
t544 = -pkin(8) * t585 - pkin(9) * t1159 - t1096 * t628;
t543 = t1097 * t827 + t1102 * t546;
t542 = t1097 * t546 - t1102 * t827;
t541 = -pkin(7) * t674 - t1097 * t614 + t1102 * t575;
t540 = -pkin(3) * t827 + pkin(8) * t586 - pkin(9) * t1167 + t1101 * t628;
t539 = -pkin(2) * t590 - pkin(3) * t643 - pkin(4) * t707 - pkin(5) * t782 + t611;
t538 = t1098 * t577 + t1103 * t571;
t537 = t1098 * t571 - t1103 * t577;
t536 = -pkin(7) * t659 - t1097 * t596 + t1102 * t569;
t535 = -pkin(8) * t643 - t1096 * t576 + t1101 * t588;
t534 = -pkin(3) * t1194 + pkin(8) * t644 + t1096 * t588 + t1101 * t576;
t533 = -pkin(2) * t577 - pkin(3) * t630 - pkin(4) * t691 - pkin(5) * t755 + t610;
t532 = t1100 * t568 - t1170;
t531 = t1095 * t568 + t1162;
t530 = -t1092 * t564 + t1093 * t566;
t529 = -t1092 * t563 + t1093 * t565;
t528 = t1092 * t566 + t1093 * t564;
t527 = -t1092 * t565 - t1093 * t563;
t526 = -pkin(8) * t630 - t1096 * t572 + t1101 * t580;
t525 = -t1097 * t828 + t1102 * t529;
t524 = t1097 * t789 + t1102 * t530;
t523 = t1097 * t530 - t1102 * t789;
t522 = -pkin(3) * t722 + pkin(8) * t631 + t1096 * t580 + t1101 * t572;
t521 = -pkin(2) * t545 - pkin(3) * t585 - pkin(4) * t637;
t520 = -qJ(3) * t625 - t1092 * t552 + t1093 * t553;
t519 = t1098 * t545 + t1103 * t543;
t518 = t1098 * t543 - t1103 * t545;
t517 = -pkin(9) * t606 - t1095 * t549 + t1100 * t551;
t516 = -pkin(4) * t789 + pkin(9) * t608 + t1095 * t551 + t1100 * t549;
t515 = -pkin(1) * t617 + pkin(2) * t863 - qJ(3) * t627 - t1092 * t553 - t1093 * t552;
t514 = -pkin(2) * t528 - pkin(3) * t564 - pkin(4) * t606 - pkin(5) * t662;
t513 = -pkin(7) * t617 - t1097 * t587 + t1102 * t520;
t512 = -t1096 * t531 + t1101 * t532;
t511 = t1096 * t532 + t1101 * t531;
t510 = -pkin(9) * t531 - pkin(10) * t1162 - t1095 * t555;
t509 = t1098 * t528 + t1103 * t524;
t508 = t1098 * t524 - t1103 * t528;
t507 = -pkin(4) * t732 + pkin(9) * t532 - pkin(10) * t1170 + t1100 * t555;
t506 = -qJ(3) * t590 - t1092 * t534 + t1093 * t535;
t505 = -qJ(3) * t545 - t1092 * t540 + t1093 * t544;
t504 = -qJ(3) * t577 - t1092 * t522 + t1093 * t526;
t503 = -pkin(1) * t581 + pkin(2) * t1194 - qJ(3) * t591 - t1092 * t535 - t1093 * t534;
t502 = -pkin(1) * t542 + pkin(2) * t827 - qJ(3) * t546 - t1092 * t544 - t1093 * t540;
t501 = -pkin(1) * t570 + pkin(2) * t722 - qJ(3) * t578 - t1092 * t526 - t1093 * t522;
t500 = -pkin(7) * t581 - t1097 * t539 + t1102 * t506;
t499 = -pkin(8) * t564 - t1096 * t516 + t1101 * t517;
t498 = -pkin(3) * t789 + pkin(8) * t566 + t1096 * t517 + t1101 * t516;
t497 = -pkin(7) * t570 - t1097 * t533 + t1102 * t504;
t496 = -t1092 * t511 + t1093 * t512;
t495 = t1092 * t512 + t1093 * t511;
t494 = t1097 * t732 + t1102 * t496;
t493 = t1097 * t496 - t1102 * t732;
t492 = -pkin(7) * t542 - t1097 * t521 + t1102 * t505;
t491 = -pkin(8) * t511 - t1096 * t507 + t1101 * t510;
t490 = -pkin(3) * t732 + pkin(8) * t512 + t1096 * t510 + t1101 * t507;
t489 = -pkin(2) * t495 - pkin(3) * t511 - pkin(4) * t531 - pkin(5) * t567;
t488 = t1098 * t495 + t1103 * t494;
t487 = t1098 * t494 - t1103 * t495;
t486 = -qJ(3) * t528 - t1092 * t498 + t1093 * t499;
t485 = -pkin(1) * t523 + pkin(2) * t789 - qJ(3) * t530 - t1092 * t499 - t1093 * t498;
t484 = -pkin(7) * t523 - t1097 * t514 + t1102 * t486;
t483 = -qJ(3) * t495 - t1092 * t490 + t1093 * t491;
t482 = -pkin(1) * t493 + pkin(2) * t732 - qJ(3) * t496 - t1092 * t491 - t1093 * t490;
t481 = -pkin(7) * t493 - t1097 * t489 + t1102 * t483;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1060, -t1061, 0, t1017, 0, 0, 0, 0, 0, 0, t988, t989, t1014, t954, 0, 0, 0, 0, 0, 0, t865, t875, t862, t768, 0, 0, 0, 0, 0, 0, t731, t740, t698, t603, 0, 0, 0, 0, 0, 0, t616, t633, t574, t519, 0, 0, 0, 0, 0, 0, t538, t548, t509, t488; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1061, -t1060, 0, t1016, 0, 0, 0, 0, 0, 0, t986, t987, t1013, t953, 0, 0, 0, 0, 0, 0, t864, t874, t861, t767, 0, 0, 0, 0, 0, 0, t730, t739, t697, t602, 0, 0, 0, 0, 0, 0, t615, t632, t573, t518, 0, 0, 0, 0, 0, 0, t537, t547, t508, t487; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1019, t1020, 0, -t971, 0, 0, 0, 0, 0, 0, t916, t923, t899, t829, 0, 0, 0, 0, 0, 0, t790, t794, t758, t650, 0, 0, 0, 0, 0, 0, t659, t674, t617, t542, 0, 0, 0, 0, 0, 0, t570, t581, t523, t493; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1061, 0, -t1060, 0, t1115, -t1038, -t1016, -pkin(6) * t1016, t1029 * t1103 - t1117, t1011 * t1103 - t1064 * t1098, t1023 * t1103 + t1097 * t1132, t1028 * t1103 + t1117, t1021 * t1103 + t1098 * t1130, qJDD(2) * t1098 + t1051 * t1103, -pkin(6) * t986 - t1098 * t975 + t1103 * t983, -pkin(6) * t987 - t1098 * t976 + t1103 * t984, -pkin(6) * t1013 + t1103 * t971, -pkin(6) * t953 - (pkin(1) * t1098 - pkin(7) * t1103) * t971, -t1098 * t981 + t1103 * t947, -t1098 * t934 + t1103 * t920, -t1098 * t961 + t1103 * t925, -t1098 * t979 + t1103 * t946, -t1098 * t962 + t1103 * t926, -t1098 * t992 + t1103 * t966, -pkin(6) * t864 - t1098 * t831 + t1103 * t788, -pkin(6) * t874 - t1098 * t835 + t1103 * t792, -pkin(6) * t861 - t1098 * t777 + t1103 * t770, -pkin(6) * t767 - t1098 * t760 + t1103 * t728, -t1098 * t837 + t1103 * t805, -t1098 * t773 + t1103 * t764, -t1098 * t840 + t1103 * t797, -t1098 * t836 + t1103 * t804, -t1098 * t841 + t1103 * t798, -t1098 * t876 + t1103 * t870, -pkin(6) * t730 - t1098 * t665 + t1103 * t635, -pkin(6) * t739 - t1098 * t672 + t1103 * t641, -pkin(6) * t697 - t1098 * t597 + t1103 * t589, -pkin(6) * t602 - t1098 * t579 + t1103 * t554, -t1098 * t677 + t1103 * t671, -t1098 * t624 + t1103 * t619, -t1098 * t703 + t1103 * t680, -t1098 * t676 + t1103 * t670, -t1098 * t704 + t1103 * t681, -t1098 * t737 + t1103 * t736, -pkin(6) * t615 - t1098 * t550 + t1103 * t536, -pkin(6) * t632 - t1098 * t556 + t1103 * t541, -pkin(6) * t573 - t1098 * t515 + t1103 * t513, -pkin(6) * t518 - t1098 * t502 + t1103 * t492, -t1098 * t560 + t1103 * t558, -t1098 * t527 + t1103 * t525, -t1098 * t592 + t1103 * t583, -t1098 * t559 + t1103 * t557, -t1098 * t593 + t1103 * t584, -t1098 * t622 + t1103 * t620, -pkin(6) * t537 - t1098 * t501 + t1103 * t497, -pkin(6) * t547 - t1098 * t503 + t1103 * t500, -pkin(6) * t508 - t1098 * t485 + t1103 * t484, -pkin(6) * t487 - t1098 * t482 + t1103 * t481; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1060, 0, t1061, 0, t1038, t1115, t1017, pkin(6) * t1017, t1029 * t1098 + t1116, t1011 * t1098 + t1064 * t1103, t1023 * t1098 - t1097 * t1131, t1028 * t1098 - t1116, t1021 * t1098 - t1103 * t1130, -qJDD(2) * t1103 + t1051 * t1098, pkin(6) * t988 + t1098 * t983 + t1103 * t975, pkin(6) * t989 + t1098 * t984 + t1103 * t976, pkin(6) * t1014 + t1098 * t971, pkin(6) * t954 - (-pkin(1) * t1103 - pkin(7) * t1098) * t971, t1098 * t947 + t1103 * t981, t1098 * t920 + t1103 * t934, t1098 * t925 + t1103 * t961, t1098 * t946 + t1103 * t979, t1098 * t926 + t1103 * t962, t1098 * t966 + t1103 * t992, pkin(6) * t865 + t1098 * t788 + t1103 * t831, pkin(6) * t875 + t1098 * t792 + t1103 * t835, pkin(6) * t862 + t1098 * t770 + t1103 * t777, pkin(6) * t768 + t1098 * t728 + t1103 * t760, t1098 * t805 + t1103 * t837, t1098 * t764 + t1103 * t773, t1098 * t797 + t1103 * t840, t1098 * t804 + t1103 * t836, t1098 * t798 + t1103 * t841, t1098 * t870 + t1103 * t876, pkin(6) * t731 + t1098 * t635 + t1103 * t665, pkin(6) * t740 + t1098 * t641 + t1103 * t672, pkin(6) * t698 + t1098 * t589 + t1103 * t597, pkin(6) * t603 + t1098 * t554 + t1103 * t579, t1098 * t671 + t1103 * t677, t1098 * t619 + t1103 * t624, t1098 * t680 + t1103 * t703, t1098 * t670 + t1103 * t676, t1098 * t681 + t1103 * t704, t1098 * t736 + t1103 * t737, pkin(6) * t616 + t1098 * t536 + t1103 * t550, pkin(6) * t633 + t1098 * t541 + t1103 * t556, pkin(6) * t574 + t1098 * t513 + t1103 * t515, pkin(6) * t519 + t1098 * t492 + t1103 * t502, t1098 * t558 + t1103 * t560, t1098 * t525 + t1103 * t527, t1098 * t583 + t1103 * t592, t1098 * t557 + t1103 * t559, t1098 * t584 + t1103 * t593, t1098 * t620 + t1103 * t622, pkin(6) * t538 + t1098 * t497 + t1103 * t501, pkin(6) * t548 + t1098 * t500 + t1103 * t503, pkin(6) * t509 + t1098 * t484 + t1103 * t485, pkin(6) * t488 + t1098 * t481 + t1103 * t482; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1069, t1070, 0, 0, t1113 * t1097, t1055 * t1102 + t1058 * t1097, t1075 * t1102 + t1143, -t1097 * t1123 + t1045, t1077 * t1097 + t1144, 0, pkin(1) * t1058 + pkin(7) * t1022 + t1149, -pkin(1) * t1055 + pkin(7) * t1024 - t1150, pkin(1) * t1063 + pkin(7) * t1059 + t972, pkin(1) * t1043 + pkin(7) * t972, t1097 * t982 + t1109, t1012 * t1102 + t1097 * t936, t1001 * t1102 + t1097 * t964, t1097 * t980 - t1109, t1097 * t965 - t1102 * t999, t1097 * t993 + t1045, -pkin(1) * t948 + pkin(7) * t917 + t1097 * t901 + t1102 * t869, -pkin(1) * t960 + pkin(7) * t924 + t1097 * t922 + t1102 * t871, pkin(7) * t900 + t1097 * t806 + (-pkin(1) - t1180) * t935, pkin(7) * t830 + (-pkin(1) + t1114) * t851, t1097 * t839 - t1124, t1097 * t775 + t1102 * t959, t1097 * t842 + t1102 * t915, t1097 * t838 + t1124, t1097 * t843 + t1102 * t911, t1050 * t1102 + t1097 * t877, -pkin(1) * t819 + pkin(7) * t791 + t1097 * t702 + t1102 * t717, -pkin(1) * t833 + pkin(7) * t795 + t1097 * t714 + t1102 * t729, -pkin(1) * t774 + pkin(7) * t759 + t1097 * t621 + t1102 * t735, -pkin(1) * t666 + pkin(7) * t651 + t1097 * t604 + t1102 * t634, t1097 * t679 - t1126, t1097 * t626 + t1102 * t896, t1097 * t705 + t1102 * t818, t1097 * t678 + t1126, t1097 * t706 + t1102 * t814, t1047 * t1102 + t1097 * t738, -pkin(1) * t688 + pkin(7) * t660 + t1097 * t569 + t1102 * t596, -pkin(1) * t699 + pkin(7) * t675 + t1097 * t575 + t1102 * t614, -pkin(1) * t625 + pkin(7) * t618 + t1097 * t520 + t1102 * t587, -pkin(1) * t545 + pkin(7) * t543 + t1097 * t505 + t1102 * t521, t1097 * t562 - t1127, t1097 * t529 + t1102 * t828, t1097 * t594 + t1102 * t727, t1097 * t561 + t1127, t1097 * t595 + t1102 * t723, t1040 * t1102 + t1097 * t623, -pkin(1) * t577 + pkin(7) * t571 + t1097 * t504 + t1102 * t533, -pkin(1) * t590 + pkin(7) * t582 + t1097 * t506 + t1102 * t539, -pkin(1) * t528 + pkin(7) * t524 + t1097 * t486 + t1102 * t514, -pkin(1) * t495 + pkin(7) * t494 + t1097 * t483 + t1102 * t489;];
tauB_reg  = t1;