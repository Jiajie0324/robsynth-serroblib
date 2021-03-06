% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRRRRP2
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-08 04:36
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRRRRP2_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP2_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP2_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP2_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP2_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP2_invdynB_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 04:33:48
% EndTime: 2019-05-08 04:34:55
% DurationCPUTime: 57.31s
% Computational Cost: add. (217368->852), mult. (473291->1227), div. (0->0), fcn. (359372->10), ass. (0->608)
t1146 = sin(qJ(1));
t1151 = cos(qJ(1));
t1145 = sin(qJ(2));
t1150 = cos(qJ(2));
t1144 = sin(qJ(3));
t1149 = cos(qJ(3));
t1143 = sin(qJ(4));
t1148 = cos(qJ(4));
t1147 = cos(qJ(5));
t1142 = sin(qJ(5));
t1237 = qJD(1) * t1150;
t1238 = qJD(1) * t1145;
t1101 = -t1144 * t1238 + t1149 * t1237;
t1102 = (t1144 * t1150 + t1145 * t1149) * qJD(1);
t1069 = t1101 * t1143 + t1102 * t1148;
t1139 = qJD(2) + qJD(3);
t1194 = qJD(4) + t1139;
t1039 = t1069 * t1142 - t1147 * t1194;
t1207 = qJDD(2) + qJDD(3);
t1192 = qJDD(4) + t1207;
t1195 = qJD(2) * t1237;
t1210 = qJDD(1) * t1145;
t1111 = t1195 + t1210;
t1134 = t1150 * qJDD(1);
t1204 = qJD(2) * t1238;
t1112 = t1134 - t1204;
t1187 = t1144 * t1111 - t1149 * t1112;
t1045 = -qJD(3) * t1102 - t1187;
t1046 = qJD(3) * t1101 + t1149 * t1111 + t1144 * t1112;
t1067 = -t1148 * t1101 + t1102 * t1143;
t959 = -qJD(4) * t1067 + t1045 * t1143 + t1046 * t1148;
t1163 = -t1142 * t1192 - t1147 * t959;
t1161 = -t1039 * qJD(5) - t1163;
t1063 = qJD(5) + t1067;
t1233 = t1039 * t1063;
t1277 = -t1233 + t1161;
t1261 = t1142 * t1277;
t1041 = t1147 * t1069 + t1142 * t1194;
t1191 = t1142 * t959 - t1147 * t1192;
t1212 = qJD(5) + t1063;
t888 = t1041 * t1212 + t1191;
t806 = t1147 * t888 + t1261;
t1038 = t1041 ^ 2;
t1269 = t1039 ^ 2;
t985 = t1038 - t1269;
t776 = t1143 * t806 + t1148 * t985;
t778 = -t1143 * t985 + t1148 * t806;
t714 = t1144 * t778 + t1149 * t776;
t717 = t1144 * t776 - t1149 * t778;
t666 = t1145 * t714 + t1150 * t717;
t802 = -t1142 * t888 + t1147 * t1277;
t1389 = t1146 * t666 - t1151 * t802;
t1188 = -t1148 * t1045 + t1143 * t1046;
t958 = -t1069 * qJD(4) - t1188;
t957 = qJDD(5) - t958;
t988 = t1041 * t1039;
t1288 = t957 + t988;
t1259 = t1142 * t1288;
t1268 = t1063 ^ 2;
t995 = t1269 - t1268;
t872 = t1147 * t995 - t1259;
t889 = (qJD(5) - t1063) * t1041 + t1191;
t797 = t1143 * t872 + t1148 * t889;
t801 = -t1143 * t889 + t1148 * t872;
t733 = t1144 * t801 + t1149 * t797;
t736 = t1144 * t797 - t1149 * t801;
t681 = t1145 * t733 + t1150 * t736;
t1247 = t1147 * t1288;
t867 = t1142 * t995 + t1247;
t1388 = t1146 * t681 + t1151 * t867;
t1387 = t1146 * t802 + t1151 * t666;
t1386 = -t1146 * t867 + t1151 * t681;
t1385 = t1145 * t717 - t1150 * t714;
t1384 = t1145 * t736 - t1150 * t733;
t1278 = -t1233 - t1161;
t1316 = -t1142 * t889 + t1147 * t1278;
t1281 = t1038 + t1269;
t1314 = -t1142 * t1278 - t1147 * t889;
t1334 = -t1143 * t1281 + t1148 * t1314;
t1338 = t1143 * t1314 + t1148 * t1281;
t1349 = t1144 * t1334 + t1149 * t1338;
t1350 = -t1144 * t1338 + t1149 * t1334;
t1370 = -t1145 * t1349 + t1150 * t1350;
t1375 = t1146 * t1316 + t1151 * t1370;
t1383 = pkin(6) * t1375;
t1377 = t1146 * t1370 - t1151 * t1316;
t1382 = pkin(6) * t1377;
t1371 = t1145 * t1350 + t1150 * t1349;
t1381 = pkin(7) * t1371;
t1380 = -pkin(1) * t1371 - pkin(2) * t1349 - pkin(3) * t1338 - pkin(4) * t1281 - pkin(10) * t1314;
t1379 = -pkin(1) * t1316 + pkin(7) * t1370;
t1289 = t957 - t988;
t1258 = t1142 * t1289;
t996 = -t1038 + t1268;
t1318 = -t1147 * t996 - t1258;
t1246 = t1147 * t1289;
t1317 = -t1142 * t996 + t1246;
t1333 = -t1143 * t1278 + t1148 * t1317;
t1337 = t1143 * t1317 + t1148 * t1278;
t1351 = t1144 * t1333 + t1149 * t1337;
t1352 = -t1144 * t1337 + t1149 * t1333;
t1368 = -t1145 * t1351 + t1150 * t1352;
t1378 = t1146 * t1368 + t1151 * t1318;
t1376 = -t1146 * t1318 + t1151 * t1368;
t1374 = pkin(8) * t1349;
t1372 = -pkin(2) * t1316 + pkin(8) * t1350;
t1369 = t1145 * t1352 + t1150 * t1351;
t965 = t1268 + t1038;
t842 = t1147 * t965 + t1259;
t1367 = pkin(1) * t842;
t1366 = pkin(2) * t842;
t1365 = pkin(3) * t842;
t1364 = pkin(4) * t842;
t1363 = pkin(10) * t842;
t853 = t1142 * t965 - t1247;
t1362 = pkin(10) * t853;
t1361 = pkin(9) * t1334;
t1360 = pkin(9) * t1338;
t1359 = t1143 * t853;
t1358 = t1146 * t842;
t1356 = t1148 * t853;
t1355 = t1151 * t842;
t1346 = pkin(10) * t1316;
t1229 = t1063 * t1142;
t1201 = t1039 * t1229;
t1228 = t1063 * t1147;
t993 = t1041 * t1228;
t1178 = t993 + t1201;
t1200 = t1039 * t1228;
t992 = t1041 * t1229;
t1177 = t992 - t1200;
t1272 = t1143 * t957 + t1148 * t1177;
t1275 = t1143 * t1177 - t1148 * t957;
t1294 = t1144 * t1272 + t1149 * t1275;
t1295 = -t1144 * t1275 + t1149 * t1272;
t1309 = -t1145 * t1294 + t1150 * t1295;
t1336 = t1146 * t1309 + t1151 * t1178;
t925 = -qJD(5) * t1041 - t1191;
t1166 = -t1147 * t925 - t1201;
t1167 = -t1142 * t925 + t1200;
t1203 = t1143 * t988;
t1273 = t1148 * t1167 - t1203;
t1202 = t1148 * t988;
t1274 = t1143 * t1167 + t1202;
t1292 = t1144 * t1273 + t1149 * t1274;
t1293 = -t1144 * t1274 + t1149 * t1273;
t1311 = -t1145 * t1292 + t1150 * t1293;
t1335 = t1146 * t1311 + t1151 * t1166;
t1332 = -t1146 * t1178 + t1151 * t1309;
t1331 = -t1146 * t1166 + t1151 * t1311;
t1276 = -t1268 - t1269;
t1297 = t1142 * t1276 + t1246;
t1330 = pkin(1) * t1297;
t1329 = pkin(2) * t1297;
t1328 = pkin(3) * t1297;
t1327 = pkin(4) * t1297;
t1296 = t1147 * t1276 - t1258;
t1326 = pkin(10) * t1296;
t1325 = pkin(10) * t1297;
t1322 = t1143 * t1296;
t1321 = t1146 * t1297;
t1320 = t1148 * t1296;
t1319 = t1151 * t1297;
t1141 = t1150 ^ 2;
t1153 = qJD(1) ^ 2;
t1121 = t1146 * g(1) - t1151 * g(2);
t1173 = qJDD(1) * pkin(1) + t1121;
t1174 = qJD(2) * pkin(2) - pkin(8) * t1238;
t1048 = t1112 * pkin(2) - t1174 * t1238 + t1173 + (pkin(8) * t1141 + pkin(7)) * t1153;
t887 = t1147 * t1161 - t992;
t1179 = t1143 * t887 - t1202;
t1180 = t1148 * t887 + t1203;
t1270 = -t1144 * t1179 + t1149 * t1180;
t1271 = t1144 * t1180 + t1149 * t1179;
t1291 = -t1145 * t1271 + t1150 * t1270;
t886 = -t1142 * t1161 - t993;
t1315 = t1146 * t1291 + t1151 * t886;
t1313 = -t1146 * t886 + t1151 * t1291;
t1312 = t1145 * t1293 + t1150 * t1292;
t1310 = t1145 * t1295 + t1150 * t1294;
t1308 = 2 * qJD(6);
t1306 = qJ(6) * t1277;
t1010 = t1069 * t1067;
t1282 = -t1010 + t1192;
t1303 = t1143 * t1282;
t1075 = t1101 * t1102;
t1279 = t1075 + t1207;
t1302 = t1144 * t1279;
t1299 = t1148 * t1282;
t1298 = t1149 * t1279;
t1099 = t1101 ^ 2;
t1182 = pkin(3) * t1139 - pkin(9) * t1102;
t952 = t1045 * pkin(3) + t1099 * pkin(9) - t1102 * t1182 + t1048;
t1290 = t1145 * t1270 + t1150 * t1271;
t1190 = t1194 ^ 2;
t1055 = t1194 * t1067;
t1287 = -t959 + t1055;
t1096 = t1139 * t1101;
t1022 = -t1046 + t1096;
t1280 = t1046 + t1096;
t1136 = t1141 * t1153;
t1152 = qJD(2) ^ 2;
t1128 = -t1136 - t1152;
t1005 = pkin(4) * t1067 - pkin(10) * t1069;
t1122 = g(1) * t1151 + g(2) * t1146;
t1104 = -pkin(1) * t1153 + qJDD(1) * pkin(7) - t1122;
t1265 = t1145 * g(3);
t1156 = -pkin(2) * t1136 + t1112 * pkin(8) - qJD(2) * t1174 - t1265;
t1216 = t1145 * t1153;
t1239 = qJD(1) * qJD(2);
t1164 = pkin(2) * t1216 + pkin(8) * t1239 - g(3);
t1217 = t1145 * t1104;
t1165 = qJDD(2) * pkin(2) - t1111 * pkin(8) - t1217;
t982 = t1144 * t1156 - t1149 * t1165 + (t1144 * t1104 - t1149 * t1164) * t1150;
t1154 = pkin(3) * t1279 + pkin(9) * t1022 - t982;
t1215 = t1150 * t1104;
t983 = t1149 * (t1156 + t1215) + t1144 * (t1150 * t1164 + t1165);
t924 = -t1099 * pkin(3) + t1045 * pkin(9) - t1139 * t1182 + t983;
t831 = t1143 * t1154 + t1148 * t924;
t815 = -pkin(4) * t1190 + pkin(10) * t1192 - t1067 * t1005 + t831;
t1176 = t1194 * t1069;
t822 = t1287 * pkin(10) + (-t958 + t1176) * pkin(4) - t952;
t745 = t1142 * t822 + t1147 * t815;
t984 = pkin(5) * t1039 - qJ(6) * t1041;
t1175 = t957 * qJ(6) - t1039 * t984 + t1063 * t1308 + t745;
t1018 = (qJD(3) - t1139) * t1102 + t1187;
t1065 = t1067 ^ 2;
t1066 = t1069 ^ 2;
t1100 = t1102 ^ 2;
t1138 = t1139 ^ 2;
t1267 = pkin(4) * t1143;
t1266 = pkin(5) * t1147;
t744 = t1142 * t815 - t1147 * t822;
t1264 = qJ(6) * t1147;
t830 = t1143 * t924 - t1148 * t1154;
t814 = -t1192 * pkin(4) - t1190 * pkin(10) + t1069 * t1005 + t830;
t1263 = t1142 * t814;
t1255 = t1143 * t952;
t753 = t1143 * t831 - t1148 * t830;
t1253 = t1144 * t753;
t915 = t1144 * t983 - t1149 * t982;
t1252 = t1145 * t915;
t1250 = t1147 * t814;
t1243 = t1148 * t952;
t1242 = t1149 * t753;
t1241 = t1150 * t915;
t1240 = -t1268 + t1281;
t1003 = t1010 + t1192;
t1235 = t1003 * t1143;
t1234 = t1003 * t1148;
t1232 = t1048 * t1144;
t1231 = t1048 * t1149;
t1230 = t1063 * t1041;
t1072 = -t1075 + t1207;
t1227 = t1072 * t1144;
t1226 = t1072 * t1149;
t1103 = t1153 * pkin(7) + t1173;
t1225 = t1103 * t1145;
t1224 = t1103 * t1150;
t1130 = t1150 * t1216;
t1119 = qJDD(2) + t1130;
t1223 = t1119 * t1145;
t1120 = qJDD(2) - t1130;
t1222 = t1120 * t1145;
t1221 = t1120 * t1150;
t1220 = t1139 * t1144;
t1219 = t1139 * t1149;
t1140 = t1145 ^ 2;
t1218 = t1140 * t1153;
t1211 = t1140 + t1141;
t1209 = qJDD(1) * t1146;
t1208 = qJDD(1) * t1151;
t1206 = -pkin(4) * t1148 - pkin(3);
t1199 = t1146 * t1010;
t1198 = t1151 * t1010;
t1197 = t1146 * t1075;
t1196 = t1151 * t1075;
t1193 = qJ(6) * t1142 + pkin(4);
t754 = t1143 * t830 + t1148 * t831;
t916 = t1144 * t982 + t1149 * t983;
t1089 = t1150 * g(3) + t1217;
t1090 = t1215 - t1265;
t1033 = t1089 * t1145 + t1150 * t1090;
t1081 = -t1121 * t1146 - t1151 * t1122;
t1186 = t1041 * t984 + qJDD(6) + t744;
t1185 = t1146 * t1130;
t1184 = t1151 * t1130;
t1116 = -t1146 * t1153 + t1208;
t1181 = -pkin(6) * t1116 - g(3) * t1146;
t685 = t1142 * t745 - t1147 * t744;
t686 = t1142 * t744 + t1147 * t745;
t1032 = t1089 * t1150 - t1090 * t1145;
t1080 = t1121 * t1151 - t1122 * t1146;
t1172 = t1143 * t1055;
t1171 = t1143 * t1176;
t1170 = t1148 * t1055;
t1169 = t1148 * t1176;
t1168 = -t957 * pkin(5) + t1186;
t935 = -t1069 * t1139 + t1188;
t1160 = -t925 * pkin(5) - t1306 + t814;
t1158 = t1041 * t1308 - t1160;
t1127 = t1136 - t1152;
t1126 = -t1152 - t1218;
t1125 = t1152 - t1218;
t1118 = t1136 - t1218;
t1117 = t1136 + t1218;
t1115 = t1151 * t1153 + t1209;
t1114 = t1211 * qJDD(1);
t1113 = t1134 - 0.2e1 * t1204;
t1110 = 0.2e1 * t1195 + t1210;
t1108 = t1150 * t1119;
t1107 = t1211 * t1239;
t1098 = -pkin(6) * t1115 + g(3) * t1151;
t1094 = -t1100 + t1138;
t1093 = t1099 - t1138;
t1092 = t1111 * t1150 - t1140 * t1239;
t1091 = -t1112 * t1145 - t1141 * t1239;
t1088 = -t1100 - t1138;
t1087 = -t1126 * t1145 - t1221;
t1086 = -t1125 * t1145 + t1108;
t1085 = t1128 * t1150 - t1223;
t1084 = t1127 * t1150 - t1222;
t1083 = t1126 * t1150 - t1222;
t1082 = t1128 * t1145 + t1108;
t1078 = t1114 * t1151 - t1117 * t1146;
t1077 = t1114 * t1146 + t1117 * t1151;
t1076 = -t1110 * t1145 + t1113 * t1150;
t1074 = -t1100 + t1099;
t1070 = -t1138 - t1099;
t1060 = t1087 * t1151 + t1110 * t1146;
t1059 = t1085 * t1151 - t1113 * t1146;
t1058 = t1087 * t1146 - t1110 * t1151;
t1057 = t1085 * t1146 + t1113 * t1151;
t1054 = -t1066 + t1190;
t1053 = t1065 - t1190;
t1052 = (t1101 * t1149 + t1102 * t1144) * t1139;
t1051 = (t1101 * t1144 - t1102 * t1149) * t1139;
t1050 = -pkin(7) * t1083 - t1224;
t1049 = -pkin(7) * t1082 - t1225;
t1047 = -t1099 - t1100;
t1044 = -pkin(1) * t1083 + t1090;
t1043 = -pkin(1) * t1082 + t1089;
t1042 = -t1066 - t1190;
t1028 = t1093 * t1149 - t1227;
t1027 = -t1094 * t1144 + t1298;
t1026 = t1093 * t1144 + t1226;
t1025 = t1094 * t1149 + t1302;
t1024 = -t1088 * t1144 - t1226;
t1023 = t1088 * t1149 - t1227;
t1017 = (qJD(3) + t1139) * t1102 + t1187;
t1016 = t1046 * t1149 - t1102 * t1220;
t1015 = t1046 * t1144 + t1102 * t1219;
t1014 = -t1045 * t1144 - t1101 * t1219;
t1013 = t1045 * t1149 - t1101 * t1220;
t1012 = t1033 * t1151 - t1103 * t1146;
t1011 = t1033 * t1146 + t1103 * t1151;
t1009 = -t1066 + t1065;
t1008 = t1070 * t1149 - t1302;
t1007 = t1070 * t1144 + t1298;
t1001 = -t1190 - t1065;
t991 = -t1170 + t1171;
t990 = -t1172 - t1169;
t989 = -t1051 * t1145 + t1052 * t1150;
t981 = -t1065 - t1066;
t979 = -pkin(8) * t1023 - t1231;
t976 = -pkin(8) * t1007 - t1232;
t975 = -t1026 * t1145 + t1028 * t1150;
t974 = -t1025 * t1145 + t1027 * t1150;
t973 = t1053 * t1148 - t1235;
t972 = -t1054 * t1143 + t1299;
t971 = t1053 * t1143 + t1234;
t970 = t1054 * t1148 + t1303;
t969 = -t1042 * t1143 - t1234;
t968 = t1042 * t1148 - t1235;
t967 = -t1023 * t1145 + t1024 * t1150;
t966 = t1023 * t1150 + t1024 * t1145;
t963 = -t1018 * t1149 - t1022 * t1144;
t962 = -t1017 * t1149 - t1144 * t1280;
t961 = -t1018 * t1144 + t1022 * t1149;
t960 = -t1017 * t1144 + t1149 * t1280;
t949 = -t1015 * t1145 + t1016 * t1150;
t948 = -t1013 * t1145 + t1014 * t1150;
t947 = -t1007 * t1145 + t1008 * t1150;
t946 = t1007 * t1150 + t1008 * t1145;
t945 = t1001 * t1148 - t1303;
t944 = t1001 * t1143 + t1299;
t939 = -t1055 - t959;
t934 = (0.2e1 * qJD(4) + t1139) * t1069 + t1188;
t933 = -pkin(2) * t1280 + pkin(8) * t1024 - t1232;
t932 = -t1144 * t990 + t1149 * t991;
t931 = t1144 * t991 + t1149 * t990;
t930 = t1148 * t959 - t1171;
t929 = t1143 * t959 + t1169;
t928 = -t1143 * t958 + t1170;
t927 = t1148 * t958 + t1172;
t926 = -pkin(2) * t1017 + pkin(8) * t1008 + t1231;
t920 = t1146 * t1280 + t1151 * t967;
t919 = t1146 * t967 - t1151 * t1280;
t914 = t1017 * t1146 + t1151 * t947;
t913 = -t1017 * t1151 + t1146 * t947;
t907 = -t1144 * t971 + t1149 * t973;
t906 = -t1144 * t970 + t1149 * t972;
t905 = t1144 * t973 + t1149 * t971;
t904 = t1144 * t972 + t1149 * t970;
t903 = -t1144 * t968 + t1149 * t969;
t902 = t1144 * t969 + t1149 * t968;
t901 = pkin(2) * t1048 + pkin(8) * t916;
t900 = -t1145 * t961 + t1150 * t963;
t899 = -t1145 * t960 + t1150 * t962;
t898 = t1145 * t963 + t1150 * t961;
t897 = -pkin(9) * t968 - t1243;
t896 = t1039 * t1212 + t1163;
t890 = -t925 + t1230;
t878 = -pkin(1) * t966 - pkin(2) * t1023 + t983;
t877 = -pkin(9) * t944 - t1255;
t864 = t1047 * t1146 + t1151 * t900;
t863 = -t1047 * t1151 + t1146 * t900;
t862 = -t1144 * t944 + t1149 * t945;
t861 = t1144 * t945 + t1149 * t944;
t860 = -pkin(1) * t946 + t1144 * t1090 + t1149 * t1089 + (t1144 * (t1112 + t1204) - t1149 * (-t1111 + t1195)) * pkin(8) + (-t1149 * t1119 + t1128 * t1144 - t1007) * pkin(2);
t859 = -t1143 * t939 - t1148 * t935;
t858 = t1143 * t1287 - t1148 * t934;
t857 = -t1143 * t935 + t1148 * t939;
t856 = -t1143 * t934 - t1148 * t1287;
t855 = -pkin(8) * t961 - t915;
t850 = -t1145 * t931 + t1150 * t932;
t849 = -t1144 * t929 + t1149 * t930;
t848 = -t1144 * t927 + t1149 * t928;
t847 = t1144 * t930 + t1149 * t929;
t846 = t1144 * t928 + t1149 * t927;
t833 = -pkin(2) * t1047 + pkin(8) * t963 + t916;
t832 = -pkin(1) * t898 - pkin(2) * t961;
t828 = -pkin(7) * t966 - t1145 * t933 + t1150 * t979;
t827 = t1150 * t916 - t1252;
t826 = t1145 * t916 + t1241;
t825 = pkin(3) * t1287 + pkin(9) * t969 - t1255;
t824 = -pkin(7) * t946 - t1145 * t926 + t1150 * t976;
t823 = -pkin(3) * t934 + pkin(9) * t945 + t1243;
t819 = -t1048 * t1146 + t1151 * t827;
t818 = t1048 * t1151 + t1146 * t827;
t817 = -t1145 * t905 + t1150 * t907;
t816 = -t1145 * t904 + t1150 * t906;
t811 = -t1145 * t902 + t1150 * t903;
t810 = t1145 * t903 + t1150 * t902;
t789 = t1143 * t890 + t1320;
t788 = -t1143 * t896 + t1356;
t787 = -t1148 * t890 + t1322;
t786 = t1148 * t896 + t1359;
t785 = t1143 * t888 + t1320;
t784 = -t1143 * t1277 - t1356;
t783 = -t1148 * t888 + t1322;
t782 = t1148 * t1277 - t1359;
t781 = -t1145 * t861 + t1150 * t862;
t780 = t1145 * t862 + t1150 * t861;
t775 = -pkin(1) * t826 - pkin(2) * t915;
t770 = -t1144 * t857 + t1149 * t859;
t769 = -t1144 * t856 + t1149 * t858;
t768 = t1144 * t859 + t1149 * t857;
t767 = t1144 * t858 + t1149 * t856;
t766 = -t1146 * t1287 + t1151 * t811;
t765 = t1146 * t811 + t1151 * t1287;
t764 = -t1145 * t847 + t1150 * t849;
t763 = -t1145 * t846 + t1150 * t848;
t752 = t1146 * t934 + t1151 * t781;
t751 = t1146 * t781 - t1151 * t934;
t750 = t1250 + t1363;
t749 = t1263 - t1325;
t748 = -pkin(7) * t826 - pkin(8) * t1241 - t1145 * t901;
t747 = pkin(3) * t952 + pkin(9) * t754;
t746 = -pkin(8) * t902 - t1144 * t825 + t1149 * t897;
t743 = -pkin(7) * t898 - t1145 * t833 + t1150 * t855;
t742 = -pkin(4) * t1316 - pkin(5) * t1278 + qJ(6) * t889;
t741 = -pkin(8) * t861 - t1144 * t823 + t1149 * t877;
t740 = (pkin(5) * t1063 - (2 * qJD(6))) * t1041 + t1160;
t739 = pkin(2) * t1287 + pkin(8) * t903 + t1144 * t897 + t1149 * t825;
t738 = -pkin(9) * t857 - t753;
t727 = -pkin(3) * t981 + pkin(9) * t859 + t754;
t726 = -t1144 * t787 + t1149 * t789;
t725 = -t1144 * t786 + t1149 * t788;
t724 = t1144 * t789 + t1149 * t787;
t723 = t1144 * t788 + t1149 * t786;
t722 = -pkin(2) * t934 + pkin(8) * t862 + t1144 * t877 + t1149 * t823;
t721 = -t1144 * t783 + t1149 * t785;
t720 = -t1144 * t782 + t1149 * t784;
t719 = t1144 * t785 + t1149 * t783;
t718 = t1144 * t784 + t1149 * t782;
t713 = -pkin(1) * t810 - pkin(2) * t902 - pkin(3) * t968 + t831;
t712 = qJ(6) * t1268 - t1168;
t711 = -pkin(5) * t1268 + t1175;
t710 = t745 + t1364;
t709 = t744 - t1327;
t708 = (-t890 - t1230) * pkin(5) + t1158;
t707 = -pkin(5) * t1230 + t1158 + t1306;
t702 = -t1145 * t768 + t1150 * t770;
t701 = -t1145 * t767 + t1150 * t769;
t700 = t1145 * t770 + t1150 * t768;
t699 = qJ(6) * t1240 + t1168;
t698 = pkin(5) * t1240 + t1175;
t697 = t1146 * t981 + t1151 * t702;
t696 = t1146 * t702 - t1151 * t981;
t691 = -pkin(1) * t780 - pkin(2) * t861 - pkin(3) * t944 + t830;
t690 = t1149 * t754 - t1253;
t689 = t1144 * t754 + t1242;
t688 = -t1142 * t708 - t1264 * t890 - t1325;
t687 = -t1327 + (-t1268 - t1276) * qJ(6) + (-t1289 - t957) * pkin(5) + t1186;
t684 = -pkin(5) * t1261 + t1147 * t707 - t1363;
t683 = -t1364 - qJ(6) * t1288 + (t1268 - t965) * pkin(5) - t1175;
t678 = -pkin(1) * t700 - pkin(2) * t768 - pkin(3) * t857;
t677 = -t1145 * t724 + t1150 * t726;
t676 = -t1145 * t723 + t1150 * t725;
t675 = t1145 * t726 + t1150 * t724;
t674 = t1145 * t725 + t1150 * t723;
t673 = t1143 * t814 + t1148 * t686;
t672 = t1143 * t686 - t1148 * t814;
t671 = -t1145 * t719 + t1150 * t721;
t670 = -t1145 * t718 + t1150 * t720;
t669 = t1145 * t721 + t1150 * t719;
t668 = t1145 * t720 + t1150 * t718;
t667 = -t685 - t1346;
t664 = -pkin(7) * t810 - t1145 * t739 + t1150 * t746;
t663 = -t1142 * t712 + t1147 * t711;
t662 = t1142 * t711 + t1147 * t712;
t657 = -pkin(9) * t786 - t1143 * t710 + t1148 * t750;
t656 = t1151 * t677 + t1321;
t655 = t1151 * t676 - t1358;
t654 = t1146 * t677 - t1319;
t653 = t1146 * t676 + t1355;
t652 = -pkin(9) * t783 - t1143 * t709 + t1148 * t749;
t651 = t1151 * t671 + t1321;
t650 = t1151 * t670 + t1358;
t649 = t1146 * t671 - t1319;
t648 = t1146 * t670 - t1355;
t647 = -pkin(7) * t780 - t1145 * t722 + t1150 * t741;
t646 = -pkin(8) * t768 - t1144 * t727 + t1149 * t738;
t645 = pkin(9) * t788 + t1143 * t750 + t1148 * t710 + t1365;
t644 = -pkin(2) * t981 + pkin(8) * t770 + t1144 * t738 + t1149 * t727;
t643 = -t1145 * t689 + t1150 * t690;
t642 = t1145 * t690 + t1150 * t689;
t641 = pkin(9) * t785 + t1143 * t749 + t1148 * t709 - t1328;
t636 = -pkin(8) * t689 - pkin(9) * t1242 - t1144 * t747;
t635 = -t1146 * t952 + t1151 * t643;
t634 = t1146 * t643 + t1151 * t952;
t633 = -t1142 * t698 + t1147 * t699 - t1346;
t632 = pkin(2) * t952 + pkin(8) * t690 - pkin(9) * t1253 + t1149 * t747;
t631 = t1143 * t740 + t1148 * t663;
t630 = t1143 * t663 - t1148 * t740;
t629 = t1148 * t667 + t1267 * t1316 - t1360;
t628 = t1143 * t667 + t1206 * t1316 + t1361;
t627 = -pkin(9) * t787 - t1143 * t687 + t1148 * t688;
t626 = -pkin(9) * t782 - t1143 * t683 + t1148 * t684;
t625 = -pkin(10) * t662 + (pkin(5) * t1142 - t1264) * t740;
t624 = pkin(9) * t789 + t1143 * t688 + t1148 * t687 - t1328;
t623 = pkin(9) * t784 + t1143 * t684 + t1148 * t683 - t1365;
t622 = -t1144 * t672 + t1149 * t673;
t621 = t1144 * t673 + t1149 * t672;
t620 = -t1143 * t742 + t1148 * t633 - t1360;
t619 = -pkin(4) * t662 - pkin(5) * t712 - qJ(6) * t711;
t618 = -pkin(1) * t674 - pkin(2) * t723 - pkin(3) * t786 - pkin(4) * t896 - t1263 - t1362;
t617 = -pkin(1) * t669 - pkin(2) * t719 - pkin(3) * t783 + pkin(4) * t888 + t1250 - t1326;
t616 = -pkin(1) * t642 - pkin(2) * t689 - pkin(3) * t753;
t615 = -pkin(3) * t1316 + t1143 * t633 + t1148 * t742 + t1361;
t614 = -pkin(9) * t672 + (-pkin(10) * t1148 + t1267) * t685;
t613 = -pkin(1) * t675 - pkin(2) * t724 - pkin(3) * t787 - t1147 * t708 + t1193 * t890 - t1326;
t612 = -pkin(1) * t668 - pkin(2) * t718 - pkin(3) * t782 + t1362 - t1142 * t707 + (-pkin(4) - t1266) * t1277;
t611 = -pkin(8) * t723 - t1144 * t645 + t1149 * t657;
t610 = -pkin(8) * t719 - t1144 * t641 + t1149 * t652;
t609 = t1380 - t686;
t608 = -t1144 * t630 + t1149 * t631;
t607 = t1144 * t631 + t1149 * t630;
t606 = pkin(8) * t725 + t1144 * t657 + t1149 * t645 + t1366;
t605 = -pkin(7) * t700 - t1145 * t644 + t1150 * t646;
t604 = pkin(8) * t721 + t1144 * t652 + t1149 * t641 - t1329;
t603 = -t1142 * t699 - t1147 * t698 + t1380;
t602 = pkin(9) * t673 + (-pkin(10) * t1143 + t1206) * t685;
t601 = -t1144 * t628 + t1149 * t629 - t1374;
t600 = -pkin(7) * t642 - t1145 * t632 + t1150 * t636;
t599 = t1144 * t629 + t1149 * t628 + t1372;
t598 = -t1145 * t621 + t1150 * t622;
t597 = t1145 * t622 + t1150 * t621;
t596 = -pkin(8) * t724 - t1144 * t624 + t1149 * t627;
t595 = -pkin(8) * t718 - t1144 * t623 + t1149 * t626;
t594 = pkin(8) * t726 + t1144 * t627 + t1149 * t624 - t1329;
t593 = pkin(8) * t720 + t1144 * t626 + t1149 * t623 - t1366;
t592 = t1146 * t685 + t1151 * t598;
t591 = t1146 * t598 - t1151 * t685;
t590 = -t1144 * t615 + t1149 * t620 - t1374;
t589 = t1144 * t620 + t1149 * t615 + t1372;
t588 = -pkin(9) * t630 - t1143 * t619 + t1148 * t625;
t587 = -t1145 * t607 + t1150 * t608;
t586 = t1145 * t608 + t1150 * t607;
t585 = -pkin(3) * t662 + pkin(9) * t631 + t1143 * t625 + t1148 * t619;
t584 = -pkin(7) * t674 - t1145 * t606 + t1150 * t611;
t583 = -pkin(7) * t669 - t1145 * t604 + t1150 * t610;
t582 = t1146 * t662 + t1151 * t587;
t581 = t1146 * t587 - t1151 * t662;
t580 = -pkin(8) * t621 - t1144 * t602 + t1149 * t614;
t579 = -pkin(1) * t597 - pkin(2) * t621 - pkin(3) * t672 + pkin(4) * t814 - pkin(10) * t686;
t578 = -pkin(2) * t685 + pkin(8) * t622 + t1144 * t614 + t1149 * t602;
t577 = -t1145 * t599 + t1150 * t601 - t1381;
t576 = -pkin(7) * t675 - t1145 * t594 + t1150 * t596;
t575 = -pkin(7) * t668 - t1145 * t593 + t1150 * t595;
t574 = -t1145 * t589 + t1150 * t590 - t1381;
t573 = -pkin(1) * t586 - pkin(2) * t607 - pkin(3) * t630 - pkin(10) * t663 + (t1193 + t1266) * t740;
t572 = -pkin(8) * t607 - t1144 * t585 + t1149 * t588;
t571 = -pkin(2) * t662 + pkin(8) * t608 + t1144 * t588 + t1149 * t585;
t570 = -pkin(7) * t597 - t1145 * t578 + t1150 * t580;
t569 = -pkin(7) * t586 - t1145 * t571 + t1150 * t572;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1115, -t1116, 0, t1081, 0, 0, 0, 0, 0, 0, t1059, t1060, t1078, t1012, 0, 0, 0, 0, 0, 0, t914, t920, t864, t819, 0, 0, 0, 0, 0, 0, t752, t766, t697, t635, 0, 0, 0, 0, 0, 0, t651, t655, t1375, t592, 0, 0, 0, 0, 0, 0, t656, t1375, t650, t582; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1116, -t1115, 0, t1080, 0, 0, 0, 0, 0, 0, t1057, t1058, t1077, t1011, 0, 0, 0, 0, 0, 0, t913, t919, t863, t818, 0, 0, 0, 0, 0, 0, t751, t765, t696, t634, 0, 0, 0, 0, 0, 0, t649, t653, t1377, t591, 0, 0, 0, 0, 0, 0, t654, t1377, t648, t581; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1082, t1083, 0, -t1032, 0, 0, 0, 0, 0, 0, t946, t966, t898, t826, 0, 0, 0, 0, 0, 0, t780, t810, t700, t642, 0, 0, 0, 0, 0, 0, t669, t674, t1371, t597, 0, 0, 0, 0, 0, 0, t675, t1371, t668, t586; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1116, 0, -t1115, 0, t1181, -t1098, -t1080, -pkin(6) * t1080, t1092 * t1151 - t1185, t1076 * t1151 - t1118 * t1146, t1086 * t1151 + t1145 * t1209, t1091 * t1151 + t1185, t1084 * t1151 + t1134 * t1146, qJDD(2) * t1146 + t1107 * t1151, -pkin(6) * t1057 - t1043 * t1146 + t1049 * t1151, -pkin(6) * t1058 - t1044 * t1146 + t1050 * t1151, -pkin(6) * t1077 + t1032 * t1151, -pkin(6) * t1011 - (pkin(1) * t1146 - pkin(7) * t1151) * t1032, t1151 * t949 - t1197, -t1074 * t1146 + t1151 * t899, -t1022 * t1146 + t1151 * t974, t1151 * t948 + t1197, -t1018 * t1146 + t1151 * t975, t1146 * t1207 + t1151 * t989, -pkin(6) * t913 - t1146 * t860 + t1151 * t824, -pkin(6) * t919 - t1146 * t878 + t1151 * t828, -pkin(6) * t863 - t1146 * t832 + t1151 * t743, -pkin(6) * t818 - t1146 * t775 + t1151 * t748, t1151 * t764 + t1199, -t1009 * t1146 + t1151 * t701, -t1146 * t939 + t1151 * t816, t1151 * t763 - t1199, -t1146 * t935 + t1151 * t817, t1146 * t1192 + t1151 * t850, -pkin(6) * t751 - t1146 * t691 + t1151 * t647, -pkin(6) * t765 - t1146 * t713 + t1151 * t664, -pkin(6) * t696 - t1146 * t678 + t1151 * t605, -pkin(6) * t634 - t1146 * t616 + t1151 * t600, t1313, t1387, t1376, t1331, -t1386, t1332, -pkin(6) * t649 - t1146 * t617 + t1151 * t583, -pkin(6) * t653 - t1146 * t618 + t1151 * t584, -t1146 * t609 + t1151 * t577 - t1382, -pkin(6) * t591 - t1146 * t579 + t1151 * t570, t1313, t1376, -t1387, t1332, t1386, t1331, -pkin(6) * t654 - t1146 * t613 + t1151 * t576, -t1146 * t603 + t1151 * t574 - t1382, -pkin(6) * t648 - t1146 * t612 + t1151 * t575, -pkin(6) * t581 - t1146 * t573 + t1151 * t569; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1115, 0, t1116, 0, t1098, t1181, t1081, pkin(6) * t1081, t1092 * t1146 + t1184, t1076 * t1146 + t1118 * t1151, t1086 * t1146 - t1145 * t1208, t1091 * t1146 - t1184, t1084 * t1146 - t1134 * t1151, -qJDD(2) * t1151 + t1107 * t1146, pkin(6) * t1059 + t1043 * t1151 + t1049 * t1146, pkin(6) * t1060 + t1044 * t1151 + t1050 * t1146, pkin(6) * t1078 + t1032 * t1146, pkin(6) * t1012 - (-pkin(1) * t1151 - pkin(7) * t1146) * t1032, t1146 * t949 + t1196, t1074 * t1151 + t1146 * t899, t1022 * t1151 + t1146 * t974, t1146 * t948 - t1196, t1018 * t1151 + t1146 * t975, t1146 * t989 - t1151 * t1207, pkin(6) * t914 + t1146 * t824 + t1151 * t860, pkin(6) * t920 + t1146 * t828 + t1151 * t878, pkin(6) * t864 + t1146 * t743 + t1151 * t832, pkin(6) * t819 + t1146 * t748 + t1151 * t775, t1146 * t764 - t1198, t1009 * t1151 + t1146 * t701, t1146 * t816 + t1151 * t939, t1146 * t763 + t1198, t1146 * t817 + t1151 * t935, t1146 * t850 - t1151 * t1192, pkin(6) * t752 + t1146 * t647 + t1151 * t691, pkin(6) * t766 + t1146 * t664 + t1151 * t713, pkin(6) * t697 + t1146 * t605 + t1151 * t678, pkin(6) * t635 + t1146 * t600 + t1151 * t616, t1315, t1389, t1378, t1335, -t1388, t1336, pkin(6) * t651 + t1146 * t583 + t1151 * t617, pkin(6) * t655 + t1146 * t584 + t1151 * t618, t1146 * t577 + t1151 * t609 + t1383, pkin(6) * t592 + t1146 * t570 + t1151 * t579, t1315, t1378, -t1389, t1336, t1388, t1335, pkin(6) * t656 + t1146 * t576 + t1151 * t613, t1146 * t574 + t1151 * t603 + t1383, pkin(6) * t650 + t1146 * t575 + t1151 * t612, pkin(6) * t582 + t1146 * t569 + t1151 * t573; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1121, t1122, 0, 0, (t1111 + t1195) * t1145, t1110 * t1150 + t1113 * t1145, t1125 * t1150 + t1223, (t1112 - t1204) * t1150, t1127 * t1145 + t1221, 0, pkin(1) * t1113 + pkin(7) * t1085 + t1224, -pkin(1) * t1110 + pkin(7) * t1087 - t1225, pkin(1) * t1117 + pkin(7) * t1114 + t1033, pkin(1) * t1103 + pkin(7) * t1033, t1015 * t1150 + t1016 * t1145, t1145 * t962 + t1150 * t960, t1025 * t1150 + t1027 * t1145, t1013 * t1150 + t1014 * t1145, t1026 * t1150 + t1028 * t1145, t1051 * t1150 + t1052 * t1145, -pkin(1) * t1017 + pkin(7) * t947 + t1145 * t976 + t1150 * t926, -pkin(1) * t1280 + pkin(7) * t967 + t1145 * t979 + t1150 * t933, -pkin(1) * t1047 + pkin(7) * t900 + t1145 * t855 + t1150 * t833, pkin(1) * t1048 + pkin(7) * t827 - pkin(8) * t1252 + t1150 * t901, t1145 * t849 + t1150 * t847, t1145 * t769 + t1150 * t767, t1145 * t906 + t1150 * t904, t1145 * t848 + t1150 * t846, t1145 * t907 + t1150 * t905, t1145 * t932 + t1150 * t931, -pkin(1) * t934 + pkin(7) * t781 + t1145 * t741 + t1150 * t722, pkin(1) * t1287 + pkin(7) * t811 + t1145 * t746 + t1150 * t739, -pkin(1) * t981 + pkin(7) * t702 + t1145 * t646 + t1150 * t644, pkin(1) * t952 + pkin(7) * t643 + t1145 * t636 + t1150 * t632, t1290, t1385, t1369, t1312, -t1384, t1310, pkin(7) * t671 + t1145 * t610 + t1150 * t604 - t1330, pkin(7) * t676 + t1145 * t611 + t1150 * t606 + t1367, t1145 * t601 + t1150 * t599 + t1379, -pkin(1) * t685 + pkin(7) * t598 + t1145 * t580 + t1150 * t578, t1290, t1369, -t1385, t1310, t1384, t1312, pkin(7) * t677 + t1145 * t596 + t1150 * t594 - t1330, t1145 * t590 + t1150 * t589 + t1379, pkin(7) * t670 + t1145 * t595 + t1150 * t593 - t1367, -pkin(1) * t662 + pkin(7) * t587 + t1145 * t572 + t1150 * t571;];
tauB_reg  = t1;
