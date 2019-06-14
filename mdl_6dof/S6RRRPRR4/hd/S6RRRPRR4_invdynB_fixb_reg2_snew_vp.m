% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRRPRR4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 10:30
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRRPRR4_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR4_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR4_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRR4_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRR4_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRR4_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 10:28:16
% EndTime: 2019-05-07 10:29:13
% DurationCPUTime: 51.54s
% Computational Cost: add. (496124->949), mult. (1025405->1471), div. (0->0), fcn. (767372->12), ass. (0->651)
t1147 = sin(pkin(11));
t1151 = sin(qJ(3));
t1152 = sin(qJ(2));
t1156 = cos(qJ(3));
t1157 = cos(qJ(2));
t1109 = (t1151 * t1157 + t1152 * t1156) * qJD(1);
t1144 = qJD(2) + qJD(3);
t1148 = cos(pkin(11));
t1078 = t1109 * t1147 - t1148 * t1144;
t1079 = t1109 * t1148 + t1144 * t1147;
t1035 = t1079 * t1078;
t1214 = qJD(2) * t1157;
t1175 = qJD(1) * t1214;
t1190 = qJDD(1) * t1152;
t1117 = t1175 + t1190;
t1140 = t1157 * qJDD(1);
t1216 = qJD(1) * t1152;
t1182 = qJD(2) * t1216;
t1118 = t1140 - t1182;
t1172 = t1151 * t1117 - t1156 * t1118;
t1046 = qJD(3) * t1109 + t1172;
t1245 = -t1035 + t1046;
t1258 = t1147 * t1245;
t1257 = t1148 * t1245;
t1149 = sin(qJ(6));
t1043 = qJDD(5) + t1046;
t1163 = qJDD(6) + t1043;
t1150 = sin(qJ(5));
t1155 = cos(qJ(5));
t1026 = t1155 * t1078 + t1079 * t1150;
t1028 = -t1078 * t1150 + t1079 * t1155;
t1154 = cos(qJ(6));
t968 = t1154 * t1026 + t1028 * t1149;
t970 = -t1026 * t1149 + t1028 * t1154;
t904 = t970 * t968;
t1246 = t1163 - t904;
t1256 = t1149 * t1246;
t972 = t1028 * t1026;
t1247 = t1043 - t972;
t1255 = t1150 * t1247;
t1107 = -t1156 * t1157 * qJD(1) + t1151 * t1216;
t1069 = t1109 * t1107;
t1187 = qJDD(2) + qJDD(3);
t1244 = -t1069 + t1187;
t1254 = t1151 * t1244;
t1253 = t1154 * t1246;
t1252 = t1155 * t1247;
t1251 = t1156 * t1244;
t1097 = t1144 * t1107;
t1164 = qJD(3) * t1107 - t1117 * t1156 - t1118 * t1151;
t1250 = t1164 + t1097;
t1029 = t1147 * t1187 - t1148 * t1164;
t1165 = -t1147 * t1164 - t1148 * t1187;
t1173 = t1150 * t1029 + t1155 * t1165;
t920 = -qJD(5) * t1028 - t1173;
t921 = -t1026 * qJD(5) + t1155 * t1029 - t1150 * t1165;
t832 = -qJD(6) * t968 + t1149 * t920 + t1154 * t921;
t1102 = qJD(5) + t1107;
t1100 = qJD(6) + t1102;
t952 = t1100 * t968;
t1249 = t832 - t952;
t1000 = t1102 * t1026;
t893 = -t1000 - t921;
t1248 = -t1000 + t921;
t1061 = t1107 * t1078;
t985 = -t1061 - t1029;
t983 = -t1061 + t1029;
t1174 = t1149 * t921 - t1154 * t920;
t791 = (qJD(6) - t1100) * t970 + t1174;
t894 = (qJD(5) - t1102) * t1028 + t1173;
t1010 = (qJD(3) - t1144) * t1109 + t1172;
t1146 = t1157 ^ 2;
t1153 = sin(qJ(1));
t1158 = cos(qJ(1));
t1127 = t1153 * g(1) - t1158 * g(2);
t1167 = qJDD(1) * pkin(1) + t1127;
t1168 = qJD(2) * pkin(2) - pkin(8) * t1216;
t1242 = qJD(1) ^ 2;
t1049 = t1118 * pkin(2) - t1168 * t1216 + (pkin(8) * t1146 + pkin(7)) * t1242 + t1167;
t966 = t968 ^ 2;
t967 = t970 ^ 2;
t1241 = t1026 ^ 2;
t1024 = t1028 ^ 2;
t1240 = t1078 ^ 2;
t1077 = t1079 ^ 2;
t1098 = t1100 ^ 2;
t1101 = t1102 ^ 2;
t1239 = t1107 ^ 2;
t1106 = t1109 ^ 2;
t1238 = t1144 ^ 2;
t1237 = pkin(3) * t1151;
t1236 = t1157 * g(3);
t923 = t1250 * qJ(4) + (t1109 * t1144 + t1046) * pkin(3) - t1049;
t1066 = pkin(3) * t1107 - qJ(4) * t1109;
t1128 = g(1) * t1158 + g(2) * t1153;
t1166 = qJDD(1) * pkin(7) - t1128;
t1161 = -pkin(1) * t1242 + t1166;
t1091 = -t1152 * g(3) + t1157 * t1161;
t1142 = t1146 * t1242;
t1039 = -pkin(2) * t1142 + t1118 * pkin(8) - qJD(2) * t1168 + t1091;
t1160 = -t1152 * t1166 - t1236 - t1117 * pkin(8) + qJDD(2) * pkin(2) + (pkin(8) * t1214 + (pkin(2) * t1157 + pkin(1)) * t1216) * qJD(1);
t976 = t1156 * t1039 + t1151 * t1160;
t929 = -pkin(3) * t1238 + qJ(4) * t1187 - t1107 * t1066 + t976;
t845 = 0.2e1 * qJD(4) * t1079 + t1147 * t929 - t1148 * t923;
t799 = pkin(4) * t1245 + pkin(9) * t985 - t845;
t1050 = pkin(4) * t1107 - pkin(9) * t1079;
t846 = -0.2e1 * qJD(4) * t1078 + t1147 * t923 + t1148 * t929;
t818 = -pkin(4) * t1240 - pkin(9) * t1165 - t1107 * t1050 + t846;
t739 = t1150 * t818 - t1155 * t799;
t704 = pkin(5) * t1247 + pkin(10) * t893 - t739;
t740 = t1150 * t799 + t1155 * t818;
t995 = pkin(5) * t1102 - pkin(10) * t1028;
t709 = -pkin(5) * t1241 + pkin(10) * t920 - t1102 * t995 + t740;
t642 = t1149 * t704 + t1154 * t709;
t677 = t1150 * t740 - t1155 * t739;
t1235 = t1147 * t677;
t975 = t1039 * t1151 - t1156 * t1160;
t928 = -t1187 * pkin(3) - t1238 * qJ(4) + t1066 * t1109 + qJDD(4) + t975;
t1234 = t1147 * t928;
t988 = t1035 + t1046;
t1233 = t1147 * t988;
t1232 = t1148 * t677;
t1231 = t1148 * t928;
t1230 = t1148 * t988;
t858 = t1165 * pkin(4) - t1240 * pkin(9) + t1050 * t1079 + t928;
t775 = -t920 * pkin(5) - pkin(10) * t1241 + t1028 * t995 + t858;
t1229 = t1149 * t775;
t865 = t1163 + t904;
t1228 = t1149 * t865;
t641 = t1149 * t709 - t1154 * t704;
t601 = t1149 * t642 - t1154 * t641;
t1227 = t1150 * t601;
t1226 = t1150 * t858;
t931 = t1043 + t972;
t1225 = t1150 * t931;
t907 = t1151 * t976 - t1156 * t975;
t1224 = t1152 * t907;
t1223 = t1154 * t775;
t1222 = t1154 * t865;
t1221 = t1155 * t601;
t1220 = t1155 * t858;
t1219 = t1155 * t931;
t1218 = t1157 * t907;
t1217 = qJD(1) * qJD(2);
t1145 = t1152 ^ 2;
t1215 = t1242 * t1145;
t1213 = t1046 * t1151;
t1212 = t1049 * t1151;
t1211 = t1049 * t1156;
t1063 = t1069 + t1187;
t1210 = t1063 * t1151;
t1209 = t1063 * t1156;
t1208 = t1100 * t1149;
t1207 = t1100 * t1154;
t1206 = t1102 * t1150;
t1205 = t1102 * t1155;
t1204 = t1107 * t1079;
t1203 = t1107 * t1147;
t1202 = t1107 * t1148;
t1110 = pkin(7) * t1242 + t1167;
t1201 = t1110 * t1152;
t1200 = t1110 * t1157;
t1135 = t1157 * t1242 * t1152;
t1125 = qJDD(2) + t1135;
t1199 = t1125 * t1152;
t1126 = qJDD(2) - t1135;
t1198 = t1126 * t1152;
t1197 = t1126 * t1157;
t1196 = t1144 * t1151;
t1195 = t1144 * t1156;
t1191 = t1145 + t1146;
t1189 = qJDD(1) * t1153;
t1188 = qJDD(1) * t1158;
t1186 = t1151 * t904;
t1185 = t1156 * t904;
t1184 = -pkin(3) * t1156 - pkin(2);
t1181 = t1151 * t972;
t1180 = t1156 * t972;
t1179 = t1151 * t1035;
t1178 = t1156 * t1035;
t1177 = t1153 * t1069;
t1176 = t1158 * t1069;
t602 = t1149 * t641 + t1154 * t642;
t678 = t1150 * t739 + t1155 * t740;
t908 = t1151 * t975 + t1156 * t976;
t1090 = t1152 * t1161 + t1236;
t1038 = t1090 * t1152 + t1157 * t1091;
t1082 = -t1127 * t1153 - t1158 * t1128;
t1171 = t1153 * t1135;
t1170 = t1158 * t1135;
t1122 = -t1153 * t1242 + t1188;
t1169 = -pkin(6) * t1122 - g(3) * t1153;
t764 = t1147 * t846 - t1148 * t845;
t765 = t1147 * t845 + t1148 * t846;
t1037 = t1090 * t1157 - t1091 * t1152;
t1081 = t1127 * t1158 - t1128 * t1153;
t982 = -t1165 + t1204;
t1159 = qJD(2) ^ 2;
t1132 = -t1142 - t1159;
t1131 = t1142 - t1159;
t1130 = -t1159 - t1215;
t1129 = t1159 - t1215;
t1124 = t1142 - t1215;
t1123 = t1142 + t1215;
t1121 = t1158 * t1242 + t1189;
t1120 = t1191 * qJDD(1);
t1119 = t1140 - 0.2e1 * t1182;
t1116 = 0.2e1 * t1175 + t1190;
t1114 = t1157 * t1125;
t1113 = t1191 * t1217;
t1103 = -pkin(6) * t1121 + g(3) * t1158;
t1095 = -t1106 + t1238;
t1094 = t1239 - t1238;
t1093 = t1117 * t1157 - t1145 * t1217;
t1092 = -t1118 * t1152 - t1146 * t1217;
t1089 = -t1106 - t1238;
t1088 = -t1130 * t1152 - t1197;
t1087 = -t1129 * t1152 + t1114;
t1086 = t1132 * t1157 - t1199;
t1085 = t1131 * t1157 - t1198;
t1084 = t1130 * t1157 - t1198;
t1083 = t1132 * t1152 + t1114;
t1076 = t1120 * t1158 - t1123 * t1153;
t1075 = t1120 * t1153 + t1123 * t1158;
t1070 = -t1116 * t1152 + t1119 * t1157;
t1067 = -t1106 + t1239;
t1062 = -t1239 - t1238;
t1060 = t1088 * t1158 + t1116 * t1153;
t1059 = t1086 * t1158 - t1119 * t1153;
t1058 = t1088 * t1153 - t1116 * t1158;
t1057 = t1086 * t1153 + t1119 * t1158;
t1056 = -t1077 + t1239;
t1055 = -t1239 + t1240;
t1054 = (-t1107 * t1156 + t1109 * t1151) * t1144;
t1053 = (-t1107 * t1151 - t1109 * t1156) * t1144;
t1052 = -pkin(7) * t1084 - t1200;
t1051 = -pkin(7) * t1083 - t1201;
t1048 = -t1239 - t1106;
t1045 = -pkin(1) * t1084 + t1091;
t1044 = -pkin(1) * t1083 + t1090;
t1041 = t1156 * t1046;
t1034 = -t1077 + t1240;
t1030 = -t1077 - t1239;
t1021 = t1094 * t1156 - t1210;
t1020 = -t1095 * t1151 + t1251;
t1019 = t1094 * t1151 + t1209;
t1018 = t1095 * t1156 + t1254;
t1016 = -t1089 * t1151 - t1209;
t1015 = t1089 * t1156 - t1210;
t1013 = -t1097 + t1164;
t1009 = (qJD(3) + t1144) * t1109 + t1172;
t1008 = -t1239 - t1240;
t1007 = -t1109 * t1196 - t1156 * t1164;
t1006 = t1109 * t1195 - t1151 * t1164;
t1005 = t1107 * t1195 + t1213;
t1004 = t1107 * t1196 - t1041;
t1003 = t1038 * t1158 - t1110 * t1153;
t1002 = t1038 * t1153 + t1110 * t1158;
t999 = t1062 * t1156 - t1254;
t998 = t1062 * t1151 + t1251;
t997 = -t1024 + t1101;
t996 = -t1101 + t1241;
t994 = t1077 + t1240;
t993 = (-t1078 * t1148 + t1079 * t1147) * t1107;
t992 = (t1078 * t1147 + t1079 * t1148) * t1107;
t991 = -t1024 - t1101;
t990 = -t1053 * t1152 + t1054 * t1157;
t981 = -t1165 - t1204;
t980 = t1029 * t1148 - t1079 * t1203;
t979 = -t1029 * t1147 - t1079 * t1202;
t978 = t1078 * t1202 + t1147 * t1165;
t977 = -t1078 * t1203 + t1148 * t1165;
t973 = -pkin(8) * t1015 - t1211;
t971 = -t1024 + t1241;
t965 = -pkin(8) * t998 - t1212;
t964 = -t1019 * t1152 + t1021 * t1157;
t963 = -t1018 * t1152 + t1020 * t1157;
t962 = -t1101 - t1241;
t961 = -t1015 * t1152 + t1016 * t1157;
t960 = t1015 * t1157 + t1016 * t1152;
t959 = -t1010 * t1156 - t1013 * t1151;
t958 = -t1009 * t1156 + t1151 * t1250;
t957 = -t1010 * t1151 + t1013 * t1156;
t956 = -t1009 * t1151 - t1156 * t1250;
t955 = t1156 * t993 + t1213;
t954 = t1151 * t993 - t1041;
t951 = -t967 + t1098;
t950 = t966 - t1098;
t949 = t1055 * t1148 - t1233;
t948 = -t1056 * t1147 + t1257;
t947 = -t1055 * t1147 - t1230;
t946 = -t1056 * t1148 - t1258;
t945 = -t1006 * t1152 + t1007 * t1157;
t944 = -t1004 * t1152 + t1005 * t1157;
t943 = (-t1026 * t1155 + t1028 * t1150) * t1102;
t942 = (-t1026 * t1150 - t1028 * t1155) * t1102;
t941 = -t1152 * t998 + t1157 * t999;
t940 = t1152 * t999 + t1157 * t998;
t939 = -t967 - t1098;
t938 = -t1030 * t1147 - t1230;
t937 = t1030 * t1148 - t1233;
t936 = t1156 * t980 + t1179;
t935 = t1156 * t978 - t1179;
t934 = t1151 * t980 - t1178;
t933 = t1151 * t978 + t1178;
t926 = t1008 * t1148 - t1258;
t925 = t1008 * t1147 + t1257;
t924 = -t1024 - t1241;
t922 = pkin(2) * t1250 + pkin(8) * t1016 - t1212;
t915 = -pkin(2) * t1009 + pkin(8) * t999 + t1211;
t914 = -t1147 * t985 + t1148 * t982;
t913 = -t1147 * t983 + t1148 * t981;
t912 = t1147 * t982 + t1148 * t985;
t911 = -t1147 * t981 - t1148 * t983;
t910 = -t1153 * t1250 + t1158 * t961;
t909 = t1153 * t961 + t1158 * t1250;
t906 = t1009 * t1153 + t1158 * t941;
t905 = -t1009 * t1158 + t1153 * t941;
t903 = t1155 * t996 - t1225;
t902 = -t1150 * t997 + t1252;
t901 = t1150 * t996 + t1219;
t900 = t1155 * t997 + t1255;
t899 = -t967 + t966;
t898 = t1151 * t982 + t1156 * t949;
t897 = -t1151 * t985 + t1156 * t948;
t896 = t1151 * t949 - t1156 * t982;
t895 = t1151 * t948 + t1156 * t985;
t889 = (qJD(5) + t1102) * t1028 + t1173;
t888 = -t1028 * t1206 + t1155 * t921;
t887 = t1028 * t1205 + t1150 * t921;
t886 = t1026 * t1205 - t1150 * t920;
t885 = t1026 * t1206 + t1155 * t920;
t884 = -t1150 * t991 - t1219;
t883 = t1155 * t991 - t1225;
t882 = -t1034 * t1151 + t1156 * t913;
t881 = t1034 * t1156 + t1151 * t913;
t880 = -t1098 - t966;
t879 = t1151 * t983 + t1156 * t938;
t878 = t1151 * t938 - t1156 * t983;
t877 = pkin(2) * t1049 + pkin(8) * t908;
t876 = -t1151 * t981 + t1156 * t926;
t875 = t1151 * t926 + t1156 * t981;
t874 = -t1152 * t957 + t1157 * t959;
t873 = -t1152 * t956 + t1157 * t958;
t872 = t1152 * t959 + t1157 * t957;
t871 = (t1149 * t970 - t1154 * t968) * t1100;
t870 = (-t1149 * t968 - t1154 * t970) * t1100;
t869 = -t1152 * t954 + t1157 * t955;
t868 = -t1151 * t994 + t1156 * t914;
t867 = t1151 * t914 + t1156 * t994;
t863 = t1155 * t962 - t1255;
t862 = t1150 * t962 + t1252;
t861 = -pkin(1) * t960 - pkin(2) * t1015 + t976;
t860 = -t1147 * t942 + t1148 * t943;
t859 = -t1147 * t943 - t1148 * t942;
t857 = t1048 * t1153 + t1158 * t874;
t856 = -t1048 * t1158 + t1153 * t874;
t855 = -t1152 * t934 + t1157 * t936;
t854 = -t1152 * t933 + t1157 * t935;
t853 = -qJ(4) * t937 + t1231;
t852 = -pkin(1) * t940 - pkin(2) * t998 + t975;
t851 = -qJ(4) * t925 + t1234;
t850 = -pkin(8) * t957 - t907;
t849 = -t966 - t967;
t848 = t1043 * t1151 + t1156 * t860;
t847 = -t1043 * t1156 + t1151 * t860;
t844 = -pkin(2) * t1048 + pkin(8) * t959 + t908;
t843 = -pkin(1) * t872 - pkin(2) * t957;
t842 = -pkin(7) * t960 - t1152 * t922 + t1157 * t973;
t841 = t1154 * t950 - t1228;
t840 = -t1149 * t951 + t1253;
t839 = t1149 * t950 + t1222;
t838 = t1154 * t951 + t1256;
t837 = t1157 * t908 - t1224;
t836 = t1152 * t908 + t1218;
t835 = -t1149 * t939 - t1222;
t834 = t1154 * t939 - t1228;
t833 = -pkin(7) * t940 - t1152 * t915 + t1157 * t965;
t831 = -qJD(6) * t970 - t1174;
t830 = -t1147 * t901 + t1148 * t903;
t829 = -t1147 * t900 + t1148 * t902;
t828 = -t1147 * t903 - t1148 * t901;
t827 = -t1147 * t902 - t1148 * t900;
t826 = -t1152 * t896 + t1157 * t898;
t825 = -t1152 * t895 + t1157 * t897;
t824 = -t1049 * t1153 + t1158 * t837;
t823 = t1049 * t1158 + t1153 * t837;
t822 = -t1150 * t893 - t1155 * t894;
t821 = -t1150 * t1248 - t1155 * t889;
t820 = -t1150 * t894 + t1155 * t893;
t819 = -t1150 * t889 + t1155 * t1248;
t816 = -t1147 * t887 + t1148 * t888;
t815 = -t1147 * t885 + t1148 * t886;
t814 = -t1147 * t888 - t1148 * t887;
t813 = -t1147 * t886 - t1148 * t885;
t812 = -t1147 * t883 + t1148 * t884;
t811 = t1147 * t884 + t1148 * t883;
t810 = -t1152 * t881 + t1157 * t882;
t809 = -t1152 * t878 + t1157 * t879;
t808 = t1152 * t879 + t1157 * t878;
t807 = -pkin(3) * t937 + t846;
t806 = -pkin(3) * t925 + t845;
t805 = -t1152 * t875 + t1157 * t876;
t804 = t1152 * t876 + t1157 * t875;
t803 = t1154 * t880 - t1256;
t802 = t1149 * t880 + t1253;
t801 = -t1150 * t870 + t1155 * t871;
t800 = t1150 * t871 + t1155 * t870;
t798 = -t1152 * t867 + t1157 * t868;
t797 = t1152 * t868 + t1157 * t867;
t794 = -pkin(9) * t883 + t1220;
t793 = -t1147 * t862 + t1148 * t863;
t792 = t1147 * t863 + t1148 * t862;
t790 = -t832 - t952;
t786 = (qJD(6) + t1100) * t970 + t1174;
t785 = -pkin(9) * t862 + t1226;
t784 = t1154 * t832 - t1208 * t970;
t783 = t1149 * t832 + t1207 * t970;
t782 = -t1149 * t831 + t1207 * t968;
t781 = t1154 * t831 + t1208 * t968;
t780 = t1156 * t816 + t1181;
t779 = t1156 * t815 - t1181;
t778 = t1151 * t816 - t1180;
t777 = t1151 * t815 + t1180;
t776 = -pkin(1) * t836 - pkin(2) * t907;
t774 = t1153 * t937 + t1158 * t809;
t773 = t1153 * t809 - t1158 * t937;
t772 = t1153 * t925 + t1158 * t805;
t771 = t1153 * t805 - t1158 * t925;
t770 = -t1152 * t847 + t1157 * t848;
t769 = -t1151 * t894 + t1156 * t830;
t768 = -t1151 * t893 + t1156 * t829;
t767 = t1151 * t830 + t1156 * t894;
t766 = t1151 * t829 + t1156 * t893;
t763 = t1153 * t912 + t1158 * t798;
t762 = t1153 * t798 - t1158 * t912;
t761 = t1151 * t1248 + t1156 * t812;
t760 = t1151 * t812 - t1156 * t1248;
t759 = -pkin(4) * t1248 + pkin(9) * t884 + t1226;
t758 = t1151 * t889 + t1156 * t793;
t757 = t1151 * t793 - t1156 * t889;
t756 = -pkin(4) * t889 + pkin(9) * t863 - t1220;
t755 = -t1150 * t839 + t1155 * t841;
t754 = -t1150 * t838 + t1155 * t840;
t753 = t1150 * t841 + t1155 * t839;
t752 = t1150 * t840 + t1155 * t838;
t751 = -t1150 * t834 + t1155 * t835;
t750 = t1150 * t835 + t1155 * t834;
t749 = t1151 * t928 + t1156 * t765;
t748 = t1151 * t765 - t1156 * t928;
t747 = -pkin(7) * t836 - pkin(8) * t1218 - t1152 * t877;
t746 = -qJ(4) * t912 - t764;
t745 = -t1147 * t820 + t1148 * t822;
t744 = -t1147 * t819 + t1148 * t821;
t743 = t1147 * t822 + t1148 * t820;
t742 = -t1147 * t821 - t1148 * t819;
t741 = -pkin(7) * t872 - t1152 * t844 + t1157 * t850;
t737 = -t1150 * t802 + t1155 * t803;
t736 = t1150 * t803 + t1155 * t802;
t735 = -pkin(8) * t878 - t1151 * t807 + t1156 * t853;
t734 = -t1151 * t971 + t1156 * t744;
t733 = t1151 * t744 + t1156 * t971;
t732 = -pkin(10) * t834 + t1223;
t731 = -t1147 * t800 + t1148 * t801;
t730 = -t1147 * t801 - t1148 * t800;
t729 = -pkin(8) * t875 - t1151 * t806 + t1156 * t851;
t728 = t1151 * t1163 + t1156 * t731;
t727 = t1151 * t924 + t1156 * t745;
t726 = t1151 * t731 - t1156 * t1163;
t725 = t1151 * t745 - t1156 * t924;
t724 = -pkin(1) * t808 - pkin(2) * t878 + pkin(3) * t983 - qJ(4) * t938 - t1234;
t723 = -t1149 * t790 - t1154 * t791;
t722 = -t1149 * t1249 - t1154 * t786;
t721 = -t1149 * t791 + t1154 * t790;
t720 = -t1149 * t786 + t1154 * t1249;
t719 = -pkin(10) * t802 + t1229;
t718 = -t1150 * t783 + t1155 * t784;
t717 = -t1150 * t781 + t1155 * t782;
t716 = t1150 * t784 + t1155 * t783;
t715 = t1150 * t782 + t1155 * t781;
t714 = -pkin(1) * t804 - pkin(2) * t875 - pkin(3) * t981 - qJ(4) * t926 + t1231;
t713 = -t1152 * t778 + t1157 * t780;
t712 = -t1152 * t777 + t1157 * t779;
t711 = -pkin(2) * t937 + pkin(8) * t879 + t1151 * t853 + t1156 * t807;
t710 = -pkin(2) * t925 + pkin(8) * t876 + t1151 * t851 + t1156 * t806;
t707 = -pkin(8) * t867 + t1156 * t746 + t1237 * t912;
t706 = -t1152 * t767 + t1157 * t769;
t705 = -t1152 * t766 + t1157 * t768;
t701 = -pkin(3) * t743 - pkin(4) * t820;
t700 = -t1152 * t760 + t1157 * t761;
t699 = t1152 * t761 + t1157 * t760;
t698 = pkin(8) * t868 + t1151 * t746 + t1184 * t912;
t697 = -t1152 * t757 + t1157 * t758;
t696 = t1152 * t758 + t1157 * t757;
t695 = -t1147 * t753 + t1148 * t755;
t694 = -t1147 * t752 + t1148 * t754;
t693 = -t1147 * t755 - t1148 * t753;
t692 = -t1147 * t754 - t1148 * t752;
t691 = -pkin(5) * t1249 + pkin(10) * t835 + t1229;
t690 = -t1147 * t750 + t1148 * t751;
t689 = t1147 * t751 + t1148 * t750;
t688 = -t1152 * t748 + t1157 * t749;
t687 = t1152 * t749 + t1157 * t748;
t686 = -pkin(5) * t786 + pkin(10) * t803 - t1223;
t685 = -pkin(3) * t811 - pkin(4) * t883 + t740;
t684 = -pkin(1) * t797 - pkin(2) * t867 - pkin(3) * t994 - qJ(4) * t914 - t765;
t683 = -qJ(4) * t811 - t1147 * t759 + t1148 * t794;
t682 = -pkin(3) * t792 - pkin(4) * t862 + t739;
t681 = t1153 * t811 + t1158 * t700;
t680 = t1153 * t700 - t1158 * t811;
t679 = -qJ(4) * t792 - t1147 * t756 + t1148 * t785;
t676 = -t1147 * t736 + t1148 * t737;
t675 = t1147 * t737 + t1148 * t736;
t674 = -t1152 * t733 + t1157 * t734;
t673 = t1153 * t792 + t1158 * t697;
t672 = t1153 * t697 - t1158 * t792;
t671 = -t1151 * t791 + t1156 * t695;
t670 = -t1151 * t790 + t1156 * t694;
t669 = t1151 * t695 + t1156 * t791;
t668 = t1151 * t694 + t1156 * t790;
t667 = -t1152 * t726 + t1157 * t728;
t666 = -t1152 * t725 + t1157 * t727;
t665 = t1152 * t727 + t1157 * t725;
t664 = t1151 * t1249 + t1156 * t690;
t663 = t1151 * t690 - t1156 * t1249;
t662 = -pkin(8) * t748 + (-qJ(4) * t1156 + t1237) * t764;
t661 = -t1150 * t721 + t1155 * t723;
t660 = -t1150 * t720 + t1155 * t722;
t659 = t1150 * t723 + t1155 * t721;
t658 = t1150 * t722 + t1155 * t720;
t657 = -pkin(4) * t858 + pkin(9) * t678;
t656 = -t1147 * t716 + t1148 * t718;
t655 = -t1147 * t715 + t1148 * t717;
t654 = -t1147 * t718 - t1148 * t716;
t653 = -t1147 * t717 - t1148 * t715;
t652 = t1153 * t764 + t1158 * t688;
t651 = t1153 * t688 - t1158 * t764;
t650 = -pkin(9) * t820 - t677;
t649 = t1156 * t656 + t1186;
t648 = t1156 * t655 - t1186;
t647 = t1151 * t656 - t1185;
t646 = t1151 * t655 + t1185;
t645 = t1151 * t786 + t1156 * t676;
t644 = t1151 * t676 - t1156 * t786;
t643 = -pkin(4) * t924 + pkin(9) * t822 + t678;
t639 = -pkin(7) * t808 - t1152 * t711 + t1157 * t735;
t638 = -pkin(7) * t804 - t1152 * t710 + t1157 * t729;
t637 = pkin(8) * t749 + (-qJ(4) * t1151 + t1184) * t764;
t636 = t1153 * t743 + t1158 * t666;
t635 = t1153 * t666 - t1158 * t743;
t634 = -pkin(7) * t797 - t1152 * t698 + t1157 * t707;
t633 = -pkin(1) * t687 - pkin(2) * t748 + pkin(3) * t928 - qJ(4) * t765;
t632 = -pkin(9) * t750 - t1150 * t691 + t1155 * t732;
t631 = -pkin(9) * t736 - t1150 * t686 + t1155 * t719;
t630 = t1148 * t678 - t1235;
t629 = t1147 * t678 + t1232;
t628 = -pkin(4) * t1249 + pkin(9) * t751 + t1150 * t732 + t1155 * t691;
t627 = -pkin(1) * t699 - pkin(2) * t760 + pkin(3) * t1248 - qJ(4) * t812 - t1147 * t794 - t1148 * t759;
t626 = -pkin(8) * t760 - t1151 * t685 + t1156 * t683;
t625 = t1151 * t858 + t1156 * t630;
t624 = t1151 * t630 - t1156 * t858;
t623 = -t1152 * t669 + t1157 * t671;
t622 = -t1152 * t668 + t1157 * t670;
t621 = -pkin(4) * t786 + pkin(9) * t737 + t1150 * t719 + t1155 * t686;
t620 = -t1152 * t663 + t1157 * t664;
t619 = t1152 * t664 + t1157 * t663;
t618 = -pkin(1) * t696 - pkin(2) * t757 + pkin(3) * t889 - qJ(4) * t793 - t1147 * t785 - t1148 * t756;
t617 = -pkin(8) * t757 - t1151 * t682 + t1156 * t679;
t616 = -t1147 * t659 + t1148 * t661;
t615 = -t1147 * t658 + t1148 * t660;
t614 = t1147 * t661 + t1148 * t659;
t613 = -t1147 * t660 - t1148 * t658;
t612 = -pkin(2) * t811 + pkin(8) * t761 + t1151 * t683 + t1156 * t685;
t611 = -t1151 * t899 + t1156 * t615;
t610 = t1151 * t615 + t1156 * t899;
t609 = t1151 * t849 + t1156 * t616;
t608 = t1151 * t616 - t1156 * t849;
t607 = -t1152 * t647 + t1157 * t649;
t606 = -t1152 * t646 + t1157 * t648;
t605 = -pkin(2) * t792 + pkin(8) * t758 + t1151 * t679 + t1156 * t682;
t604 = -t1152 * t644 + t1157 * t645;
t603 = t1152 * t645 + t1157 * t644;
t600 = -pkin(3) * t689 - pkin(4) * t750 - pkin(5) * t834 + t642;
t599 = -pkin(5) * t775 + pkin(10) * t602;
t598 = -pkin(3) * t629 - pkin(4) * t677;
t597 = -qJ(4) * t743 - t1147 * t643 + t1148 * t650;
t596 = t1153 * t689 + t1158 * t620;
t595 = t1153 * t620 - t1158 * t689;
t594 = -pkin(3) * t675 - pkin(4) * t736 - pkin(5) * t802 + t641;
t593 = -pkin(10) * t721 - t601;
t592 = -pkin(5) * t849 + pkin(10) * t723 + t602;
t591 = -pkin(7) * t687 - t1152 * t637 + t1157 * t662;
t590 = t1153 * t675 + t1158 * t604;
t589 = t1153 * t604 - t1158 * t675;
t588 = -pkin(3) * t614 - pkin(4) * t659 - pkin(5) * t721;
t587 = -pkin(9) * t1232 - qJ(4) * t629 - t1147 * t657;
t586 = -pkin(8) * t725 - t1151 * t701 + t1156 * t597;
t585 = -t1152 * t624 + t1157 * t625;
t584 = t1152 * t625 + t1157 * t624;
t583 = -qJ(4) * t689 - t1147 * t628 + t1148 * t632;
t582 = -pkin(2) * t743 + pkin(8) * t727 + t1151 * t597 + t1156 * t701;
t581 = -pkin(1) * t665 - pkin(2) * t725 + pkin(3) * t924 - qJ(4) * t745 - t1147 * t650 - t1148 * t643;
t580 = -t1152 * t610 + t1157 * t611;
t579 = -t1152 * t608 + t1157 * t609;
t578 = t1152 * t609 + t1157 * t608;
t577 = -pkin(7) * t699 - t1152 * t612 + t1157 * t626;
t576 = -qJ(4) * t675 - t1147 * t621 + t1148 * t631;
t575 = t1155 * t602 - t1227;
t574 = t1150 * t602 + t1221;
t573 = -pkin(7) * t696 - t1152 * t605 + t1157 * t617;
t572 = t1153 * t629 + t1158 * t585;
t571 = t1153 * t585 - t1158 * t629;
t570 = t1153 * t614 + t1158 * t579;
t569 = t1153 * t579 - t1158 * t614;
t568 = -pkin(9) * t659 - t1150 * t592 + t1155 * t593;
t567 = -pkin(4) * t849 + pkin(9) * t661 + t1150 * t593 + t1155 * t592;
t566 = -pkin(1) * t619 - pkin(2) * t663 + pkin(3) * t1249 - qJ(4) * t690 - t1147 * t632 - t1148 * t628;
t565 = -pkin(8) * t663 - t1151 * t600 + t1156 * t583;
t564 = -pkin(8) * t624 - t1151 * t598 + t1156 * t587;
t563 = -pkin(2) * t689 + pkin(8) * t664 + t1151 * t583 + t1156 * t600;
t562 = -pkin(1) * t603 - pkin(2) * t644 + pkin(3) * t786 - qJ(4) * t676 - t1147 * t631 - t1148 * t621;
t561 = -pkin(8) * t644 - t1151 * t594 + t1156 * t576;
t560 = -pkin(7) * t665 - t1152 * t582 + t1157 * t586;
t559 = -pkin(2) * t675 + pkin(8) * t645 + t1151 * t576 + t1156 * t594;
t558 = -t1147 * t574 + t1148 * t575;
t557 = t1147 * t575 + t1148 * t574;
t556 = -pkin(1) * t584 - pkin(2) * t624 + pkin(3) * t858 + pkin(9) * t1235 - qJ(4) * t630 - t1148 * t657;
t555 = -pkin(9) * t574 - pkin(10) * t1221 - t1150 * t599;
t554 = t1151 * t775 + t1156 * t558;
t553 = t1151 * t558 - t1156 * t775;
t552 = -pkin(2) * t629 + pkin(8) * t625 + t1151 * t587 + t1156 * t598;
t551 = -pkin(4) * t775 + pkin(9) * t575 - pkin(10) * t1227 + t1155 * t599;
t550 = -qJ(4) * t614 - t1147 * t567 + t1148 * t568;
t549 = -pkin(3) * t557 - pkin(4) * t574 - pkin(5) * t601;
t548 = -pkin(7) * t619 - t1152 * t563 + t1157 * t565;
t547 = -t1152 * t553 + t1157 * t554;
t546 = t1152 * t554 + t1157 * t553;
t545 = -pkin(7) * t603 - t1152 * t559 + t1157 * t561;
t544 = -pkin(8) * t608 - t1151 * t588 + t1156 * t550;
t543 = -pkin(7) * t584 - t1152 * t552 + t1157 * t564;
t542 = -pkin(1) * t578 - pkin(2) * t608 + pkin(3) * t849 - qJ(4) * t616 - t1147 * t568 - t1148 * t567;
t541 = -pkin(2) * t614 + pkin(8) * t609 + t1151 * t550 + t1156 * t588;
t540 = t1153 * t557 + t1158 * t547;
t539 = t1153 * t547 - t1158 * t557;
t538 = -qJ(4) * t557 - t1147 * t551 + t1148 * t555;
t537 = -pkin(7) * t578 - t1152 * t541 + t1157 * t544;
t536 = -pkin(8) * t553 - t1151 * t549 + t1156 * t538;
t535 = -pkin(1) * t546 - pkin(2) * t553 + pkin(3) * t775 - qJ(4) * t558 - t1147 * t555 - t1148 * t551;
t534 = -pkin(2) * t557 + pkin(8) * t554 + t1151 * t538 + t1156 * t549;
t533 = -pkin(7) * t546 - t1152 * t534 + t1157 * t536;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1121, -t1122, 0, t1082, 0, 0, 0, 0, 0, 0, t1059, t1060, t1076, t1003, 0, 0, 0, 0, 0, 0, t906, t910, t857, t824, 0, 0, 0, 0, 0, 0, t772, t774, t763, t652, 0, 0, 0, 0, 0, 0, t673, t681, t636, t572, 0, 0, 0, 0, 0, 0, t590, t596, t570, t540; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1122, -t1121, 0, t1081, 0, 0, 0, 0, 0, 0, t1057, t1058, t1075, t1002, 0, 0, 0, 0, 0, 0, t905, t909, t856, t823, 0, 0, 0, 0, 0, 0, t771, t773, t762, t651, 0, 0, 0, 0, 0, 0, t672, t680, t635, t571, 0, 0, 0, 0, 0, 0, t589, t595, t569, t539; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1083, t1084, 0, -t1037, 0, 0, 0, 0, 0, 0, t940, t960, t872, t836, 0, 0, 0, 0, 0, 0, t804, t808, t797, t687, 0, 0, 0, 0, 0, 0, t696, t699, t665, t584, 0, 0, 0, 0, 0, 0, t603, t619, t578, t546; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1122, 0, -t1121, 0, t1169, -t1103, -t1081, -pkin(6) * t1081, t1093 * t1158 - t1171, t1070 * t1158 - t1124 * t1153, t1087 * t1158 + t1152 * t1189, t1092 * t1158 + t1171, t1085 * t1158 + t1140 * t1153, qJDD(2) * t1153 + t1113 * t1158, -pkin(6) * t1057 - t1044 * t1153 + t1051 * t1158, -pkin(6) * t1058 - t1045 * t1153 + t1052 * t1158, -pkin(6) * t1075 + t1037 * t1158, -pkin(6) * t1002 - (pkin(1) * t1153 - pkin(7) * t1158) * t1037, t1158 * t945 + t1177, -t1067 * t1153 + t1158 * t873, -t1013 * t1153 + t1158 * t963, t1158 * t944 - t1177, -t1010 * t1153 + t1158 * t964, t1153 * t1187 + t1158 * t990, -pkin(6) * t905 - t1153 * t852 + t1158 * t833, -pkin(6) * t909 - t1153 * t861 + t1158 * t842, -pkin(6) * t856 - t1153 * t843 + t1158 * t741, -pkin(6) * t823 - t1153 * t776 + t1158 * t747, -t1153 * t979 + t1158 * t855, -t1153 * t911 + t1158 * t810, -t1153 * t946 + t1158 * t825, -t1153 * t977 + t1158 * t854, -t1153 * t947 + t1158 * t826, -t1153 * t992 + t1158 * t869, -pkin(6) * t771 - t1153 * t714 + t1158 * t638, -pkin(6) * t773 - t1153 * t724 + t1158 * t639, -pkin(6) * t762 - t1153 * t684 + t1158 * t634, -pkin(6) * t651 - t1153 * t633 + t1158 * t591, -t1153 * t814 + t1158 * t713, -t1153 * t742 + t1158 * t674, -t1153 * t827 + t1158 * t705, -t1153 * t813 + t1158 * t712, -t1153 * t828 + t1158 * t706, -t1153 * t859 + t1158 * t770, -pkin(6) * t672 - t1153 * t618 + t1158 * t573, -pkin(6) * t680 - t1153 * t627 + t1158 * t577, -pkin(6) * t635 - t1153 * t581 + t1158 * t560, -pkin(6) * t571 - t1153 * t556 + t1158 * t543, -t1153 * t654 + t1158 * t607, -t1153 * t613 + t1158 * t580, -t1153 * t692 + t1158 * t622, -t1153 * t653 + t1158 * t606, -t1153 * t693 + t1158 * t623, -t1153 * t730 + t1158 * t667, -pkin(6) * t589 - t1153 * t562 + t1158 * t545, -pkin(6) * t595 - t1153 * t566 + t1158 * t548, -pkin(6) * t569 - t1153 * t542 + t1158 * t537, -pkin(6) * t539 - t1153 * t535 + t1158 * t533; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1121, 0, t1122, 0, t1103, t1169, t1082, pkin(6) * t1082, t1093 * t1153 + t1170, t1070 * t1153 + t1124 * t1158, t1087 * t1153 - t1152 * t1188, t1092 * t1153 - t1170, t1085 * t1153 - t1140 * t1158, -qJDD(2) * t1158 + t1113 * t1153, pkin(6) * t1059 + t1044 * t1158 + t1051 * t1153, pkin(6) * t1060 + t1045 * t1158 + t1052 * t1153, pkin(6) * t1076 + t1037 * t1153, pkin(6) * t1003 - (-pkin(1) * t1158 - pkin(7) * t1153) * t1037, t1153 * t945 - t1176, t1067 * t1158 + t1153 * t873, t1013 * t1158 + t1153 * t963, t1153 * t944 + t1176, t1010 * t1158 + t1153 * t964, t1153 * t990 - t1158 * t1187, pkin(6) * t906 + t1153 * t833 + t1158 * t852, pkin(6) * t910 + t1153 * t842 + t1158 * t861, pkin(6) * t857 + t1153 * t741 + t1158 * t843, pkin(6) * t824 + t1153 * t747 + t1158 * t776, t1153 * t855 + t1158 * t979, t1153 * t810 + t1158 * t911, t1153 * t825 + t1158 * t946, t1153 * t854 + t1158 * t977, t1153 * t826 + t1158 * t947, t1153 * t869 + t1158 * t992, pkin(6) * t772 + t1153 * t638 + t1158 * t714, pkin(6) * t774 + t1153 * t639 + t1158 * t724, pkin(6) * t763 + t1153 * t634 + t1158 * t684, pkin(6) * t652 + t1153 * t591 + t1158 * t633, t1153 * t713 + t1158 * t814, t1153 * t674 + t1158 * t742, t1153 * t705 + t1158 * t827, t1153 * t712 + t1158 * t813, t1153 * t706 + t1158 * t828, t1153 * t770 + t1158 * t859, pkin(6) * t673 + t1153 * t573 + t1158 * t618, pkin(6) * t681 + t1153 * t577 + t1158 * t627, pkin(6) * t636 + t1153 * t560 + t1158 * t581, pkin(6) * t572 + t1153 * t543 + t1158 * t556, t1153 * t607 + t1158 * t654, t1153 * t580 + t1158 * t613, t1153 * t622 + t1158 * t692, t1153 * t606 + t1158 * t653, t1153 * t623 + t1158 * t693, t1153 * t667 + t1158 * t730, pkin(6) * t590 + t1153 * t545 + t1158 * t562, pkin(6) * t596 + t1153 * t548 + t1158 * t566, pkin(6) * t570 + t1153 * t537 + t1158 * t542, pkin(6) * t540 + t1153 * t533 + t1158 * t535; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1127, t1128, 0, 0, (t1117 + t1175) * t1152, t1116 * t1157 + t1119 * t1152, t1129 * t1157 + t1199, (t1118 - t1182) * t1157, t1131 * t1152 + t1197, 0, pkin(1) * t1119 + pkin(7) * t1086 + t1200, -pkin(1) * t1116 + pkin(7) * t1088 - t1201, pkin(1) * t1123 + pkin(7) * t1120 + t1038, pkin(1) * t1110 + pkin(7) * t1038, t1006 * t1157 + t1007 * t1152, t1152 * t958 + t1157 * t956, t1018 * t1157 + t1020 * t1152, t1004 * t1157 + t1005 * t1152, t1019 * t1157 + t1021 * t1152, t1053 * t1157 + t1054 * t1152, -pkin(1) * t1009 + pkin(7) * t941 + t1152 * t965 + t1157 * t915, pkin(1) * t1250 + pkin(7) * t961 + t1152 * t973 + t1157 * t922, -pkin(1) * t1048 + pkin(7) * t874 + t1152 * t850 + t1157 * t844, pkin(1) * t1049 + pkin(7) * t837 - pkin(8) * t1224 + t1157 * t877, t1152 * t936 + t1157 * t934, t1152 * t882 + t1157 * t881, t1152 * t897 + t1157 * t895, t1152 * t935 + t1157 * t933, t1152 * t898 + t1157 * t896, t1152 * t955 + t1157 * t954, -pkin(1) * t925 + pkin(7) * t805 + t1152 * t729 + t1157 * t710, -pkin(1) * t937 + pkin(7) * t809 + t1152 * t735 + t1157 * t711, -pkin(1) * t912 + pkin(7) * t798 + t1152 * t707 + t1157 * t698, -pkin(1) * t764 + pkin(7) * t688 + t1152 * t662 + t1157 * t637, t1152 * t780 + t1157 * t778, t1152 * t734 + t1157 * t733, t1152 * t768 + t1157 * t766, t1152 * t779 + t1157 * t777, t1152 * t769 + t1157 * t767, t1152 * t848 + t1157 * t847, -pkin(1) * t792 + pkin(7) * t697 + t1152 * t617 + t1157 * t605, -pkin(1) * t811 + pkin(7) * t700 + t1152 * t626 + t1157 * t612, -pkin(1) * t743 + pkin(7) * t666 + t1152 * t586 + t1157 * t582, -pkin(1) * t629 + pkin(7) * t585 + t1152 * t564 + t1157 * t552, t1152 * t649 + t1157 * t647, t1152 * t611 + t1157 * t610, t1152 * t670 + t1157 * t668, t1152 * t648 + t1157 * t646, t1152 * t671 + t1157 * t669, t1152 * t728 + t1157 * t726, -pkin(1) * t675 + pkin(7) * t604 + t1152 * t561 + t1157 * t559, -pkin(1) * t689 + pkin(7) * t620 + t1152 * t565 + t1157 * t563, -pkin(1) * t614 + pkin(7) * t579 + t1152 * t544 + t1157 * t541, -pkin(1) * t557 + pkin(7) * t547 + t1152 * t536 + t1157 * t534;];
tauB_reg  = t1;
