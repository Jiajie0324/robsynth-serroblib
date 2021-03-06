% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRRRPP4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,theta5]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 18:22
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRRRPP4_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP4_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP4_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPP4_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPP4_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP4_invdynB_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 18:20:09
% EndTime: 2019-05-07 18:21:16
% DurationCPUTime: 62.78s
% Computational Cost: add. (237689->814), mult. (492825->1170), div. (0->0), fcn. (363171->10), ass. (0->588)
t1163 = sin(qJ(1));
t1167 = cos(qJ(1));
t1162 = sin(qJ(2));
t1166 = cos(qJ(2));
t1161 = sin(qJ(3));
t1165 = cos(qJ(3));
t1246 = qJD(1) * t1162;
t1118 = -t1165 * qJD(2) + t1161 * t1246;
t1119 = qJD(2) * t1161 + t1165 * t1246;
t1160 = sin(qJ(4));
t1164 = cos(qJ(4));
t1078 = t1164 * t1118 + t1119 * t1160;
t1079 = -t1118 * t1160 + t1119 * t1164;
t1157 = sin(pkin(10));
t1158 = cos(pkin(10));
t1024 = t1158 * t1078 + t1079 * t1157;
t1245 = qJD(1) * t1166;
t1145 = -qJD(3) + t1245;
t1137 = -qJD(4) + t1145;
t1004 = t1024 * t1137;
t1202 = qJD(2) * t1245;
t1213 = qJDD(1) * t1162;
t1123 = t1202 + t1213;
t1183 = t1165 * qJDD(2) - t1161 * t1123;
t1176 = t1119 * qJD(3) - t1183;
t1201 = t1118 * qJD(3) - t1161 * qJDD(2) - t1165 * t1123;
t1172 = t1160 * t1201 - t1164 * t1176;
t1170 = -t1079 * qJD(4) + t1172;
t988 = -t1078 * qJD(4) - t1160 * t1176 - t1164 * t1201;
t1268 = t1157 * t1170 + t1158 * t988;
t1290 = t1004 + t1268;
t1148 = qJD(2) * t1246;
t1211 = qJDD(1) * t1166;
t1124 = -t1148 + t1211;
t1115 = -qJDD(3) + t1124;
t1111 = -qJDD(4) + t1115;
t1026 = -t1078 * t1157 + t1079 * t1158;
t1238 = t1024 * t1026;
t1174 = t1111 - t1238;
t1262 = t1157 * t1174;
t1023 = t1026 ^ 2;
t1275 = t1137 ^ 2;
t953 = t1275 + t1023;
t861 = t1158 * t953 - t1262;
t1258 = t1158 * t1174;
t900 = t1157 * t953 + t1258;
t819 = t1160 * t900 - t1164 * t861;
t821 = t1160 * t861 + t1164 * t900;
t728 = t1161 * t819 - t1165 * t821;
t700 = -t1162 * t1290 + t1166 * t728;
t751 = t1161 * t821 + t1165 * t819;
t658 = t1163 * t700 + t1167 * t751;
t1425 = pkin(6) * t658;
t660 = -t1163 * t751 + t1167 * t700;
t1424 = pkin(6) * t660;
t698 = t1162 * t728 + t1166 * t1290;
t1423 = pkin(7) * t698;
t1422 = -pkin(1) * t698 - pkin(2) * t1290 - pkin(8) * t728;
t1421 = pkin(1) * t751 + pkin(7) * t700;
t1278 = t1024 ^ 2;
t1001 = t1278 - t1275;
t905 = t1001 * t1157 - t1258;
t909 = t1001 * t1158 + t1262;
t826 = t1160 * t909 + t1164 * t905;
t829 = t1160 * t905 - t1164 * t909;
t761 = t1161 * t826 + t1165 * t829;
t1199 = t1157 * t988 - t1158 * t1170;
t1237 = t1026 * t1137;
t878 = t1199 + t1237;
t721 = t1162 * t878 + t1166 * t761;
t758 = t1161 * t829 - t1165 * t826;
t1420 = t1163 * t721 - t1167 * t758;
t1181 = t1199 - t1237;
t801 = -t1157 * t1181 + t1158 * t1290;
t1263 = t1157 * t1290;
t804 = t1158 * t1181 + t1263;
t739 = t1160 * t804 - t1164 * t801;
t743 = t1160 * t801 + t1164 * t804;
t676 = t1161 * t739 - t1165 * t743;
t962 = t1023 - t1278;
t667 = t1162 * t962 + t1166 * t676;
t672 = t1161 * t743 + t1165 * t739;
t1419 = t1163 * t667 + t1167 * t672;
t1418 = t1163 * t758 + t1167 * t721;
t1417 = -t1163 * t672 + t1167 * t667;
t1415 = pkin(8) * t751;
t1408 = pkin(2) * t751 + pkin(3) * t819 - pkin(4) * t861;
t1406 = t1162 * t761 - t1166 * t878;
t1405 = t1162 * t676 - t1166 * t962;
t1404 = pkin(9) * t819;
t1175 = -t1111 - t1238;
t1261 = t1157 * t1175;
t1288 = -t1275 - t1278;
t1309 = t1158 * t1288 - t1261;
t938 = t1158 * t1175;
t1311 = t1157 * t1288 + t938;
t1324 = t1160 * t1309 + t1164 * t1311;
t1325 = -t1160 * t1311 + t1164 * t1309;
t1349 = t1161 * t1325 + t1165 * t1324;
t1348 = -t1161 * t1324 + t1165 * t1325;
t1370 = t1162 * t1181 + t1166 * t1348;
t1388 = t1163 * t1349 + t1167 * t1370;
t1403 = pkin(6) * t1388;
t1291 = t1004 - t1268;
t1310 = -t1157 * t1291 - t1158 * t878;
t1312 = -t1157 * t878 + t1158 * t1291;
t1322 = t1160 * t1310 + t1164 * t1312;
t1323 = -t1160 * t1312 + t1164 * t1310;
t1351 = t1161 * t1323 + t1165 * t1322;
t1350 = -t1161 * t1322 + t1165 * t1323;
t920 = -t1278 - t1023;
t1369 = t1162 * t920 + t1166 * t1350;
t1389 = t1163 * t1351 + t1167 * t1369;
t1402 = pkin(6) * t1389;
t1390 = t1163 * t1370 - t1167 * t1349;
t1401 = pkin(6) * t1390;
t1391 = t1163 * t1369 - t1167 * t1351;
t1400 = pkin(6) * t1391;
t1398 = pkin(3) * t1290 - pkin(9) * t821;
t1372 = t1162 * t1350 - t1166 * t920;
t1397 = pkin(7) * t1372;
t1373 = t1162 * t1348 - t1166 * t1181;
t1396 = pkin(7) * t1373;
t1395 = -pkin(1) * t1372 + pkin(2) * t920 - pkin(8) * t1350;
t1394 = -pkin(1) * t1373 + pkin(2) * t1181 - pkin(8) * t1348;
t1393 = -pkin(1) * t1351 + pkin(7) * t1369;
t1392 = -pkin(1) * t1349 + pkin(7) * t1370;
t1384 = pkin(8) * t1349;
t1383 = pkin(8) * t1351;
t1382 = qJ(5) * t861;
t1381 = qJ(5) * t900;
t1376 = -pkin(2) * t1349 - pkin(3) * t1324 - pkin(4) * t1311;
t642 = -pkin(2) * t1351 - pkin(3) * t1322 - pkin(4) * t1312;
t1002 = -t1023 + t1275;
t1298 = t1158 * t1002 + t1261;
t1299 = -t1002 * t1157 + t938;
t1307 = -t1160 * t1298 + t1164 * t1299;
t1308 = t1160 * t1299 + t1164 * t1298;
t1320 = -t1161 * t1307 - t1165 * t1308;
t1321 = -t1161 * t1308 + t1165 * t1307;
t1354 = -t1162 * t1291 + t1166 * t1321;
t1371 = t1163 * t1354 + t1167 * t1320;
t1368 = -t1163 * t1320 + t1167 * t1354;
t1367 = pkin(9) * t1322;
t1366 = pkin(9) * t1324;
t1359 = -pkin(3) * t1181 + pkin(9) * t1325;
t1358 = -pkin(3) * t920 + pkin(9) * t1323;
t1357 = t1162 * t1321 + t1166 * t1291;
t1178 = (t1024 * t1157 + t1026 * t1158) * t1137;
t1222 = t1137 * t1158;
t1207 = t1024 * t1222;
t1223 = t1137 * t1157;
t999 = t1026 * t1223;
t1187 = -t999 + t1207;
t1282 = -t1160 * t1178 + t1164 * t1187;
t1283 = t1160 * t1187 + t1164 * t1178;
t1303 = -t1161 * t1282 - t1165 * t1283;
t1229 = t1111 * t1162;
t1304 = -t1161 * t1283 + t1165 * t1282;
t1327 = t1166 * t1304 - t1229;
t1356 = t1163 * t1327 + t1167 * t1303;
t1180 = t1157 * t1199 - t1207;
t1188 = -t1024 * t1223 - t1158 * t1199;
t1280 = t1160 * t1180 + t1164 * t1188;
t1281 = -t1160 * t1188 + t1164 * t1180;
t1306 = -t1161 * t1281 - t1165 * t1280;
t1209 = t1162 * t1238;
t1305 = -t1161 * t1280 + t1165 * t1281;
t1328 = t1166 * t1305 - t1209;
t1355 = t1163 * t1328 + t1167 * t1306;
t1353 = -t1163 * t1303 + t1167 * t1327;
t1352 = -t1163 * t1306 + t1167 * t1328;
t1343 = qJ(5) * t1309;
t1342 = qJ(5) * t1311;
t1341 = qJ(5) * t1312;
t1340 = qJ(6) * t1290;
t1059 = -pkin(4) * t1137 - qJ(5) * t1079;
t1277 = t1078 ^ 2;
t1135 = g(1) * t1167 + g(2) * t1163;
t1168 = qJD(1) ^ 2;
t1109 = -pkin(1) * t1168 + qJDD(1) * pkin(7) - t1135;
t1273 = pkin(2) * t1166;
t1192 = -pkin(8) * t1162 - t1273;
t1121 = t1192 * qJD(1);
t1271 = t1166 * g(3);
t1279 = qJD(2) ^ 2;
t1055 = (qJD(1) * t1121 + t1109) * t1162 - qJDD(2) * pkin(2) - pkin(8) * t1279 + t1271;
t1096 = -pkin(3) * t1145 - pkin(9) * t1119;
t1276 = t1118 ^ 2;
t971 = t1176 * pkin(3) - t1276 * pkin(9) + t1119 * t1096 + t1055;
t848 = -t1170 * pkin(4) - t1277 * qJ(5) + t1079 * t1059 + qJDD(5) + t971;
t1335 = pkin(5) * t1199 - t1340 + t848;
t1103 = t1166 * t1111;
t1330 = t1162 * t1304 + t1103;
t1208 = t1166 * t1238;
t1329 = t1162 * t1305 + t1208;
t1326 = -pkin(4) * t920 + qJ(5) * t1310;
t1319 = -2 * qJD(6);
t1101 = t1118 * t1145;
t1044 = t1101 + t1201;
t1066 = t1078 * t1137;
t959 = t1066 - t988;
t1300 = t1066 + t988;
t1232 = t1078 * t1079;
t1173 = -t1111 - t1232;
t1297 = t1160 * t1173;
t1228 = t1118 * t1119;
t1177 = -t1115 - t1228;
t1296 = t1161 * t1177;
t1294 = t1164 * t1173;
t1293 = t1165 * t1177;
t1134 = t1163 * g(1) - t1167 * g(2);
t1108 = qJDD(1) * pkin(1) + t1168 * pkin(7) + t1134;
t1185 = -t1124 + t1148;
t1186 = t1123 + t1202;
t1039 = pkin(2) * t1185 - pkin(8) * t1186 - t1108;
t1095 = -g(3) * t1162 + t1166 * t1109;
t1056 = -pkin(2) * t1279 + qJDD(2) * pkin(8) + t1121 * t1245 + t1095;
t989 = -t1165 * t1039 + t1161 * t1056;
t926 = t1177 * pkin(3) + pkin(9) * t1044 - t989;
t990 = t1161 * t1039 + t1165 * t1056;
t930 = -pkin(3) * t1276 - pkin(9) * t1176 + t1145 * t1096 + t990;
t844 = t1160 * t930 - t1164 * t926;
t799 = t1173 * pkin(4) + qJ(5) * t959 - t844;
t845 = t1160 * t926 + t1164 * t930;
t816 = -pkin(4) * t1277 + qJ(5) * t1170 + t1137 * t1059 + t845;
t1270 = t1157 * t799 + t1158 * t816;
t961 = pkin(5) * t1024 - qJ(6) * t1026;
t1289 = -t1111 * qJ(6) - t1024 * t961 + t1137 * t1319 + t1270;
t1045 = t1201 - t1101;
t869 = -t1026 * t1222 + t1157 * t1268;
t870 = t1158 * t1268 + t999;
t793 = t1160 * t870 + t1164 * t869;
t796 = -t1160 * t869 + t1164 * t870;
t738 = -t1161 * t793 + t1165 * t796;
t1190 = t1166 * t738 + t1209;
t735 = -t1161 * t796 - t1165 * t793;
t1285 = t1163 * t1190 + t1167 * t735;
t955 = (qJD(4) + t1137) * t1079 - t1172;
t1040 = (qJD(3) + t1145) * t1119 - t1183;
t1284 = -t1163 * t735 + t1167 * t1190;
t1077 = t1079 ^ 2;
t1114 = t1119 ^ 2;
t1143 = t1145 ^ 2;
t1274 = pkin(2) * t1162;
t1272 = pkin(5) * t1158;
t1269 = t1157 * t816 - t1158 * t799;
t1267 = qJ(6) * t1158;
t1266 = t1157 * t848;
t1260 = t1158 * t848;
t1243 = qJD(5) * t1026;
t1017 = 0.2e1 * t1243;
t724 = t1017 + t1269;
t1244 = qJD(5) * t1024;
t1015 = -0.2e1 * t1244;
t725 = t1015 + t1270;
t669 = t1157 * t725 - t1158 * t724;
t1257 = t1160 * t669;
t1256 = t1160 * t971;
t772 = t1160 * t845 - t1164 * t844;
t1255 = t1161 * t772;
t1252 = t1164 * t669;
t1251 = t1164 * t971;
t1250 = t1165 * t772;
t1248 = -t1275 - t920;
t1247 = qJD(1) * qJD(2);
t1007 = t1111 - t1232;
t1240 = t1007 * t1160;
t1239 = t1007 * t1164;
t1236 = t1055 * t1161;
t1235 = t1055 * t1165;
t1069 = t1115 - t1228;
t1234 = t1069 * t1161;
t1233 = t1069 * t1165;
t1231 = t1108 * t1162;
t1230 = t1108 * t1166;
t1144 = t1166 * t1168 * t1162;
t1132 = -t1144 + qJDD(2);
t1226 = t1132 * t1162;
t1225 = t1132 * t1166;
t1133 = qJDD(2) + t1144;
t1224 = t1133 * t1162;
t1221 = t1137 * t1160;
t1220 = t1137 * t1164;
t1219 = t1145 * t1161;
t1218 = t1145 * t1165;
t1154 = t1162 ^ 2;
t1217 = t1154 * t1168;
t1155 = t1166 ^ 2;
t1214 = t1154 + t1155;
t1212 = qJDD(1) * t1163;
t1210 = qJDD(1) * t1167;
t1206 = t1162 * t1232;
t1205 = t1166 * t1232;
t1204 = t1162 * t1228;
t1203 = t1166 * t1228;
t1200 = -qJ(6) * t1157 - pkin(4);
t670 = t1157 * t724 + t1158 * t725;
t773 = t1160 * t844 + t1164 * t845;
t1094 = t1162 * t1109 + t1271;
t1048 = t1094 * t1162 + t1166 * t1095;
t1087 = -t1134 * t1163 - t1167 * t1135;
t1196 = t1026 * t961 + qJDD(6) + t1269;
t1195 = t1163 * t1144;
t1194 = t1167 * t1144;
t1129 = -t1163 * t1168 + t1210;
t1191 = -pkin(6) * t1129 - g(3) * t1163;
t1189 = t1162 * t738 - t1208;
t918 = t1161 * t990 - t1165 * t989;
t919 = t1161 * t989 + t1165 * t990;
t1047 = t1094 * t1166 - t1095 * t1162;
t1086 = t1134 * t1167 - t1135 * t1163;
t1182 = t1015 + t1289;
t1179 = t1111 * pkin(5) + t1196;
t1169 = 0.2e1 * qJD(6) * t1026 - t1335;
t1152 = t1155 * t1168;
t1142 = -t1152 - t1279;
t1141 = t1152 - t1279;
t1140 = -t1217 - t1279;
t1139 = -t1217 + t1279;
t1131 = t1152 - t1217;
t1130 = t1152 + t1217;
t1128 = t1167 * t1168 + t1212;
t1127 = t1214 * qJDD(1);
t1125 = -0.2e1 * t1148 + t1211;
t1122 = 0.2e1 * t1202 + t1213;
t1117 = t1166 * t1133;
t1116 = t1214 * t1247;
t1105 = -pkin(6) * t1128 + g(3) * t1167;
t1100 = -t1114 + t1143;
t1099 = -t1143 + t1276;
t1098 = t1123 * t1166 - t1154 * t1247;
t1097 = -t1124 * t1162 - t1155 * t1247;
t1093 = -t1140 * t1162 - t1225;
t1092 = -t1139 * t1162 + t1117;
t1091 = t1142 * t1166 - t1224;
t1090 = t1141 * t1166 - t1226;
t1089 = t1140 * t1166 - t1226;
t1088 = t1142 * t1162 + t1117;
t1084 = -t1114 + t1276;
t1083 = t1127 * t1167 - t1130 * t1163;
t1082 = t1127 * t1163 + t1130 * t1167;
t1081 = -t1114 - t1143;
t1080 = -t1122 * t1162 + t1125 * t1166;
t1076 = -t1143 - t1276;
t1068 = t1114 + t1276;
t1065 = -t1077 + t1275;
t1064 = -t1275 + t1277;
t1063 = t1093 * t1167 + t1122 * t1163;
t1062 = t1091 * t1167 - t1125 * t1163;
t1061 = t1093 * t1163 - t1122 * t1167;
t1060 = t1091 * t1163 + t1125 * t1167;
t1058 = -pkin(7) * t1089 - t1230;
t1057 = -pkin(7) * t1088 - t1231;
t1054 = (t1118 * t1165 - t1119 * t1161) * t1145;
t1053 = (-t1118 * t1161 - t1119 * t1165) * t1145;
t1051 = -pkin(1) * t1089 + t1095;
t1050 = -pkin(1) * t1088 + t1094;
t1049 = -t1077 - t1275;
t1041 = (-qJD(3) + t1145) * t1119 + t1183;
t1036 = t1119 * t1219 - t1165 * t1201;
t1035 = t1119 * t1218 + t1161 * t1201;
t1034 = -t1118 * t1218 + t1161 * t1176;
t1033 = t1118 * t1219 + t1165 * t1176;
t1032 = t1054 * t1166 - t1115 * t1162;
t1031 = -t1077 + t1277;
t1030 = t1099 * t1165 + t1234;
t1029 = -t1100 * t1161 + t1293;
t1028 = -t1099 * t1161 + t1233;
t1027 = -t1100 * t1165 - t1296;
t1020 = -t1081 * t1161 + t1233;
t1019 = t1081 * t1165 + t1234;
t1018 = -t1275 - t1277;
t1013 = t1048 * t1167 - t1108 * t1163;
t1012 = t1048 * t1163 + t1108 * t1167;
t1011 = t1076 * t1165 - t1296;
t1010 = t1076 * t1161 + t1293;
t997 = (t1078 * t1164 - t1079 * t1160) * t1137;
t996 = (t1078 * t1160 + t1079 * t1164) * t1137;
t993 = t1036 * t1166 + t1204;
t992 = t1034 * t1166 - t1204;
t991 = -t1077 - t1277;
t983 = -t1040 * t1165 - t1044 * t1161;
t982 = t1041 * t1165 + t1045 * t1161;
t981 = -t1040 * t1161 + t1044 * t1165;
t980 = -t1041 * t1161 + t1045 * t1165;
t979 = -pkin(8) * t1019 + t1235;
t978 = t1030 * t1166 - t1040 * t1162;
t977 = t1029 * t1166 - t1044 * t1162;
t976 = t1064 * t1164 + t1240;
t975 = -t1065 * t1160 + t1294;
t974 = t1064 * t1160 - t1239;
t973 = t1065 * t1164 + t1297;
t972 = -pkin(8) * t1010 + t1236;
t970 = t1020 * t1166 - t1045 * t1162;
t969 = t1020 * t1162 + t1045 * t1166;
t968 = -t1049 * t1160 + t1239;
t967 = t1049 * t1164 + t1240;
t966 = t1011 * t1166 - t1041 * t1162;
t965 = t1011 * t1162 + t1041 * t1166;
t960 = -t1084 * t1162 + t1166 * t982;
t954 = (qJD(4) - t1137) * t1079 - t1172;
t951 = t1079 * t1221 + t1164 * t988;
t950 = -t1079 * t1220 + t1160 * t988;
t949 = -t1078 * t1220 - t1160 * t1170;
t948 = -t1078 * t1221 + t1164 * t1170;
t942 = t1018 * t1164 - t1297;
t941 = t1018 * t1160 + t1294;
t940 = -t1068 * t1162 + t1166 * t983;
t939 = t1068 * t1166 + t1162 * t983;
t933 = -pkin(2) * t1019 + t990;
t932 = -t1161 * t996 + t1165 * t997;
t931 = -t1161 * t997 - t1165 * t996;
t929 = -pkin(2) * t1010 + t989;
t927 = t1166 * t932 - t1229;
t923 = t1019 * t1163 + t1167 * t970;
t922 = -t1019 * t1167 + t1163 * t970;
t915 = t1010 * t1163 + t1167 * t966;
t914 = -t1010 * t1167 + t1163 * t966;
t897 = -t1161 * t974 + t1165 * t976;
t896 = -t1161 * t973 + t1165 * t975;
t895 = -t1161 * t976 - t1165 * t974;
t894 = -t1161 * t975 - t1165 * t973;
t893 = t1055 * t1162 + t1166 * t919;
t892 = -t1055 * t1166 + t1162 * t919;
t891 = -pkin(9) * t967 + t1251;
t890 = -t1161 * t967 + t1165 * t968;
t889 = t1161 * t968 + t1165 * t967;
t888 = t1163 * t981 + t1167 * t940;
t887 = t1163 * t940 - t1167 * t981;
t886 = -pkin(9) * t941 + t1256;
t876 = -t1160 * t959 - t1164 * t955;
t875 = -t1160 * t1300 - t1164 * t954;
t874 = -t1160 * t955 + t1164 * t959;
t873 = -t1160 * t954 + t1164 * t1300;
t871 = -pkin(1) * t969 - pkin(2) * t1045 - pkin(8) * t1020 - t1236;
t860 = -t1161 * t950 + t1165 * t951;
t859 = -t1161 * t948 + t1165 * t949;
t858 = -t1161 * t951 - t1165 * t950;
t857 = -t1161 * t949 - t1165 * t948;
t856 = -pkin(1) * t965 - pkin(2) * t1041 - pkin(8) * t1011 + t1235;
t855 = -t1161 * t941 + t1165 * t942;
t854 = t1161 * t942 + t1165 * t941;
t853 = -pkin(8) * t981 - t918;
t847 = t1166 * t860 + t1206;
t846 = t1166 * t859 - t1206;
t842 = -t1162 * t955 + t1166 * t897;
t841 = -t1162 * t959 + t1166 * t896;
t840 = -pkin(3) * t1300 + pkin(9) * t968 + t1256;
t839 = t1162 * t1300 + t1166 * t890;
t838 = t1162 * t890 - t1166 * t1300;
t837 = -pkin(7) * t969 - t1162 * t933 + t1166 * t979;
t836 = -pkin(3) * t954 + pkin(9) * t942 - t1251;
t835 = -pkin(7) * t965 - t1162 * t929 + t1166 * t972;
t834 = t1162 * t954 + t1166 * t855;
t833 = t1162 * t855 - t1166 * t954;
t832 = t1163 * t918 + t1167 * t893;
t831 = t1163 * t893 - t1167 * t918;
t818 = -pkin(1) * t939 - pkin(2) * t1068 - pkin(8) * t983 - t919;
t817 = -pkin(1) * t892 + pkin(2) * t1055 - pkin(8) * t919;
t813 = t1260 + t1382;
t812 = -pkin(7) * t939 + t1166 * t853 + t1274 * t981;
t811 = -t1161 * t874 + t1165 * t876;
t810 = -t1161 * t873 + t1165 * t875;
t809 = t1161 * t876 + t1165 * t874;
t808 = -t1161 * t875 - t1165 * t873;
t786 = t1266 - t1342;
t781 = -t1031 * t1162 + t1166 * t810;
t778 = -pkin(7) * t892 + (-pkin(8) * t1166 + t1274) * t918;
t777 = t1163 * t889 + t1167 * t839;
t776 = t1163 * t839 - t1167 * t889;
t775 = t1162 * t991 + t1166 * t811;
t774 = t1162 * t811 - t1166 * t991;
t771 = -pkin(2) * t889 - pkin(3) * t967 + t845;
t770 = t1163 * t854 + t1167 * t834;
t769 = t1163 * t834 - t1167 * t854;
t768 = -pkin(2) * t854 - pkin(3) * t941 + t844;
t767 = -pkin(4) * t1290 + t1266 + t1381;
t766 = -pkin(3) * t971 + pkin(9) * t773;
t765 = -pkin(2) * t809 - pkin(3) * t874;
t764 = -pkin(8) * t889 - t1161 * t840 + t1165 * t891;
t763 = -pkin(4) * t1181 - t1260 + t1343;
t750 = (-pkin(5) * t1137 + t1319) * t1026 + t1335;
t749 = -pkin(8) * t854 - t1161 * t836 + t1165 * t886;
t748 = -pkin(9) * t874 - t772;
t747 = -pkin(3) * t991 + pkin(9) * t876 + t773;
t718 = (-t1181 + t1237) * pkin(5) + t1169;
t717 = pkin(5) * t1237 + t1169 + t1340;
t716 = t1163 * t809 + t1167 * t775;
t715 = t1163 * t775 - t1167 * t809;
t706 = qJ(6) * t1275 - t1179 - 0.2e1 * t1243;
t705 = -pkin(5) * t1275 + t1182;
t704 = -pkin(1) * t838 + pkin(2) * t1300 - pkin(8) * t890 - t1161 * t891 - t1165 * t840;
t703 = t1165 * t773 - t1255;
t702 = t1161 * t773 + t1250;
t697 = -pkin(1) * t833 + pkin(2) * t954 - pkin(8) * t855 - t1161 * t886 - t1165 * t836;
t696 = t1162 * t971 + t1166 * t703;
t695 = t1162 * t703 - t1166 * t971;
t694 = qJ(6) * t1248 + t1017 + t1179;
t693 = pkin(5) * t1248 + t1182;
t692 = -t1157 * t718 - t1181 * t1267 - t1342;
t691 = -pkin(5) * t1263 + t1158 * t717 - t1382;
t690 = -t1160 * t767 + t1164 * t813 - t1404;
t689 = t1158 * t718 + t1181 * t1200 + t1343;
t688 = -pkin(7) * t838 - t1162 * t771 + t1166 * t764;
t687 = -t1381 + t1157 * t717 - (-pkin(4) - t1272) * t1290;
t686 = -t1160 * t763 + t1164 * t786 - t1366;
t685 = t1160 * t813 + t1164 * t767 - t1398;
t684 = -pkin(2) * t702 - pkin(3) * t772;
t679 = -pkin(7) * t833 - t1162 * t768 + t1166 * t749;
t668 = t1160 * t786 + t1164 * t763 + t1359;
t657 = -pkin(8) * t809 - t1161 * t747 + t1165 * t748;
t656 = -pkin(4) * t848 + qJ(5) * t670;
t655 = -t1157 * t706 + t1158 * t705;
t654 = t1157 * t705 + t1158 * t706;
t653 = -t1408 + t725;
t652 = -t669 - t1341;
t651 = -pkin(8) * t702 - pkin(9) * t1250 - t1161 * t766;
t650 = t1163 * t702 + t1167 * t696;
t649 = t1163 * t696 - t1167 * t702;
t648 = t1326 + t670;
t647 = t1376 + t724;
t646 = t1017 + (-t1275 - t1288) * qJ(6) + (t1111 - t1175) * pkin(5) + t1196 + t1376;
t645 = -pkin(1) * t774 + pkin(2) * t991 - pkin(8) * t811 - t1161 * t748 - t1165 * t747;
t644 = qJ(6) * t1174 + 0.2e1 * t1244 + (t1275 - t953) * pkin(5) - t1289 + t1408;
t643 = -t1157 * t693 + t1158 * t694 - t1341;
t641 = t1157 * t694 + t1158 * t693 + t1326;
t640 = -pkin(7) * t774 - t1162 * t765 + t1166 * t657;
t639 = -t1160 * t689 + t1164 * t692 - t1366;
t638 = -t1160 * t687 + t1164 * t691 + t1404;
t637 = t1160 * t692 + t1164 * t689 + t1359;
t636 = -pkin(5) * t1291 + qJ(6) * t878 + t642;
t635 = -pkin(1) * t695 + pkin(2) * t971 - pkin(8) * t703 + pkin(9) * t1255 - t1165 * t766;
t634 = -qJ(5) * t654 + (pkin(5) * t1157 - t1267) * t750;
t633 = t1164 * t670 - t1257;
t632 = t1160 * t670 + t1252;
t627 = t1160 * t691 + t1164 * t687 + t1398;
t626 = -t1161 * t685 + t1165 * t690 - t1415;
t625 = -t1160 * t654 + t1164 * t655;
t624 = t1160 * t655 + t1164 * t654;
t623 = -t1161 * t668 + t1165 * t686 - t1384;
t622 = qJ(5) * t655 + (t1200 - t1272) * t750;
t621 = -t1161 * t690 - t1165 * t685 - t1422;
t620 = -pkin(7) * t695 - t1162 * t684 + t1166 * t651;
t619 = -t1160 * t648 + t1164 * t652 - t1367;
t618 = -t1161 * t686 - t1165 * t668 + t1394;
t617 = t1160 * t652 + t1164 * t648 + t1358;
t616 = -t1160 * t641 + t1164 * t643 - t1367;
t615 = -t1162 * t653 + t1166 * t626 + t1423;
t614 = t1160 * t643 + t1164 * t641 + t1358;
t613 = -t1161 * t632 + t1165 * t633;
t612 = t1161 * t633 + t1165 * t632;
t611 = -t1161 * t637 + t1165 * t639 - t1384;
t610 = -pkin(9) * t632 - qJ(5) * t1252 - t1160 * t656;
t609 = t1162 * t848 + t1166 * t613;
t608 = t1162 * t613 - t1166 * t848;
t607 = -pkin(3) * t848 + pkin(9) * t633 - qJ(5) * t1257 + t1164 * t656;
t606 = -t1162 * t647 + t1166 * t623 - t1396;
t605 = -t1161 * t627 + t1165 * t638 + t1415;
t604 = -t1161 * t639 - t1165 * t637 + t1394;
t603 = -t1161 * t624 + t1165 * t625;
t602 = t1161 * t625 + t1165 * t624;
t601 = -t1161 * t638 - t1165 * t627 + t1422;
t600 = t1162 * t750 + t1166 * t603;
t599 = t1162 * t603 - t1166 * t750;
t598 = -t1162 * t646 + t1166 * t611 - t1396;
t597 = -t1162 * t644 + t1166 * t605 - t1423;
t596 = -pkin(9) * t624 - t1160 * t622 + t1164 * t634;
t595 = -pkin(2) * t612 - pkin(3) * t632 - pkin(4) * t669;
t594 = -t1161 * t617 + t1165 * t619 - t1383;
t593 = -pkin(3) * t750 + pkin(9) * t625 + t1160 * t634 + t1164 * t622;
t592 = t1163 * t612 + t1167 * t609;
t591 = t1163 * t609 - t1167 * t612;
t590 = -t1161 * t619 - t1165 * t617 + t1395;
t589 = -t1161 * t614 + t1165 * t616 - t1383;
t588 = -pkin(2) * t602 - pkin(3) * t624 - pkin(4) * t654 - pkin(5) * t706 - qJ(6) * t705;
t587 = -t1161 * t616 - t1165 * t614 + t1395;
t586 = -t1162 * t642 + t1166 * t594 - t1397;
t585 = t1163 * t602 + t1167 * t600;
t584 = t1163 * t600 - t1167 * t602;
t583 = -t1162 * t636 + t1166 * t589 - t1397;
t582 = -pkin(8) * t612 - t1161 * t607 + t1165 * t610;
t581 = -pkin(1) * t608 + pkin(2) * t848 - pkin(8) * t613 - t1161 * t610 - t1165 * t607;
t580 = -pkin(8) * t602 - t1161 * t593 + t1165 * t596;
t579 = -pkin(7) * t608 - t1162 * t595 + t1166 * t582;
t578 = -pkin(1) * t599 + pkin(2) * t750 - pkin(8) * t603 - t1161 * t596 - t1165 * t593;
t577 = -pkin(7) * t599 - t1162 * t588 + t1166 * t580;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1128, -t1129, 0, t1087, 0, 0, 0, 0, 0, 0, t1062, t1063, t1083, t1013, 0, 0, 0, 0, 0, 0, t915, t923, t888, t832, 0, 0, 0, 0, 0, 0, t770, t777, t716, t650, 0, 0, 0, 0, 0, 0, t1388, -t660, t1389, t592, 0, 0, 0, 0, 0, 0, t1388, t1389, t660, t585; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1129, -t1128, 0, t1086, 0, 0, 0, 0, 0, 0, t1060, t1061, t1082, t1012, 0, 0, 0, 0, 0, 0, t914, t922, t887, t831, 0, 0, 0, 0, 0, 0, t769, t776, t715, t649, 0, 0, 0, 0, 0, 0, t1390, -t658, t1391, t591, 0, 0, 0, 0, 0, 0, t1390, t1391, t658, t584; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1088, t1089, 0, -t1047, 0, 0, 0, 0, 0, 0, t965, t969, t939, t892, 0, 0, 0, 0, 0, 0, t833, t838, t774, t695, 0, 0, 0, 0, 0, 0, t1373, -t698, t1372, t608, 0, 0, 0, 0, 0, 0, t1373, t1372, t698, t599; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1129, 0, -t1128, 0, t1191, -t1105, -t1086, -pkin(6) * t1086, t1098 * t1167 - t1195, t1080 * t1167 - t1131 * t1163, t1092 * t1167 + t1162 * t1212, t1097 * t1167 + t1195, t1090 * t1167 + t1163 * t1211, qJDD(2) * t1163 + t1116 * t1167, -pkin(6) * t1060 - t1050 * t1163 + t1057 * t1167, -pkin(6) * t1061 - t1051 * t1163 + t1058 * t1167, -pkin(6) * t1082 + t1047 * t1167, -pkin(6) * t1012 - (pkin(1) * t1163 - pkin(7) * t1167) * t1047, -t1035 * t1163 + t1167 * t993, -t1163 * t980 + t1167 * t960, -t1027 * t1163 + t1167 * t977, -t1033 * t1163 + t1167 * t992, -t1028 * t1163 + t1167 * t978, t1032 * t1167 - t1053 * t1163, -pkin(6) * t914 - t1163 * t856 + t1167 * t835, -pkin(6) * t922 - t1163 * t871 + t1167 * t837, -pkin(6) * t887 - t1163 * t818 + t1167 * t812, -pkin(6) * t831 - t1163 * t817 + t1167 * t778, -t1163 * t858 + t1167 * t847, -t1163 * t808 + t1167 * t781, -t1163 * t894 + t1167 * t841, -t1163 * t857 + t1167 * t846, -t1163 * t895 + t1167 * t842, -t1163 * t931 + t1167 * t927, -pkin(6) * t769 - t1163 * t697 + t1167 * t679, -pkin(6) * t776 - t1163 * t704 + t1167 * t688, -pkin(6) * t715 - t1163 * t645 + t1167 * t640, -pkin(6) * t649 - t1163 * t635 + t1167 * t620, t1284, t1417, t1368, t1352, -t1418, t1353, -t1163 * t618 + t1167 * t606 - t1401, -t1163 * t621 + t1167 * t615 + t1425, -t1163 * t590 + t1167 * t586 - t1400, -pkin(6) * t591 - t1163 * t581 + t1167 * t579, t1284, t1368, -t1417, t1353, t1418, t1352, -t1163 * t604 + t1167 * t598 - t1401, -t1163 * t587 + t1167 * t583 - t1400, -t1163 * t601 + t1167 * t597 - t1425, -pkin(6) * t584 - t1163 * t578 + t1167 * t577; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1128, 0, t1129, 0, t1105, t1191, t1087, pkin(6) * t1087, t1098 * t1163 + t1194, t1080 * t1163 + t1131 * t1167, t1092 * t1163 - t1162 * t1210, t1097 * t1163 - t1194, t1090 * t1163 - t1166 * t1210, -qJDD(2) * t1167 + t1116 * t1163, pkin(6) * t1062 + t1050 * t1167 + t1057 * t1163, pkin(6) * t1063 + t1051 * t1167 + t1058 * t1163, pkin(6) * t1083 + t1047 * t1163, pkin(6) * t1013 - (-pkin(1) * t1167 - pkin(7) * t1163) * t1047, t1035 * t1167 + t1163 * t993, t1163 * t960 + t1167 * t980, t1027 * t1167 + t1163 * t977, t1033 * t1167 + t1163 * t992, t1028 * t1167 + t1163 * t978, t1032 * t1163 + t1053 * t1167, pkin(6) * t915 + t1163 * t835 + t1167 * t856, pkin(6) * t923 + t1163 * t837 + t1167 * t871, pkin(6) * t888 + t1163 * t812 + t1167 * t818, pkin(6) * t832 + t1163 * t778 + t1167 * t817, t1163 * t847 + t1167 * t858, t1163 * t781 + t1167 * t808, t1163 * t841 + t1167 * t894, t1163 * t846 + t1167 * t857, t1163 * t842 + t1167 * t895, t1163 * t927 + t1167 * t931, pkin(6) * t770 + t1163 * t679 + t1167 * t697, pkin(6) * t777 + t1163 * t688 + t1167 * t704, pkin(6) * t716 + t1163 * t640 + t1167 * t645, pkin(6) * t650 + t1163 * t620 + t1167 * t635, t1285, t1419, t1371, t1355, -t1420, t1356, t1163 * t606 + t1167 * t618 + t1403, t1163 * t615 + t1167 * t621 - t1424, t1163 * t586 + t1167 * t590 + t1402, pkin(6) * t592 + t1163 * t579 + t1167 * t581, t1285, t1371, -t1419, t1356, t1420, t1355, t1163 * t598 + t1167 * t604 + t1403, t1163 * t583 + t1167 * t587 + t1402, t1163 * t597 + t1167 * t601 + t1424, pkin(6) * t585 + t1163 * t577 + t1167 * t578; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1134, t1135, 0, 0, t1186 * t1162, t1122 * t1166 + t1125 * t1162, t1139 * t1166 + t1224, -t1185 * t1166, t1141 * t1162 + t1225, 0, pkin(1) * t1125 + pkin(7) * t1091 + t1230, -pkin(1) * t1122 + pkin(7) * t1093 - t1231, pkin(1) * t1130 + pkin(7) * t1127 + t1048, pkin(1) * t1108 + pkin(7) * t1048, t1036 * t1162 - t1203, t1084 * t1166 + t1162 * t982, t1029 * t1162 + t1044 * t1166, t1034 * t1162 + t1203, t1030 * t1162 + t1040 * t1166, t1054 * t1162 + t1115 * t1166, -pkin(1) * t1010 + pkin(7) * t966 + t1162 * t972 + t1166 * t929, -pkin(1) * t1019 + pkin(7) * t970 + t1162 * t979 + t1166 * t933, pkin(7) * t940 + t1162 * t853 + (-pkin(1) - t1273) * t981, pkin(7) * t893 + (-pkin(1) + t1192) * t918, t1162 * t860 - t1205, t1031 * t1166 + t1162 * t810, t1162 * t896 + t1166 * t959, t1162 * t859 + t1205, t1162 * t897 + t1166 * t955, t1162 * t932 + t1103, -pkin(1) * t854 + pkin(7) * t834 + t1162 * t749 + t1166 * t768, -pkin(1) * t889 + pkin(7) * t839 + t1162 * t764 + t1166 * t771, -pkin(1) * t809 + pkin(7) * t775 + t1162 * t657 + t1166 * t765, -pkin(1) * t702 + pkin(7) * t696 + t1162 * t651 + t1166 * t684, t1189, t1405, t1357, t1329, -t1406, t1330, t1162 * t623 + t1166 * t647 + t1392, t1162 * t626 + t1166 * t653 - t1421, t1162 * t594 + t1166 * t642 + t1393, -pkin(1) * t612 + pkin(7) * t609 + t1162 * t582 + t1166 * t595, t1189, t1357, -t1405, t1330, t1406, t1329, t1162 * t611 + t1166 * t646 + t1392, t1162 * t589 + t1166 * t636 + t1393, t1162 * t605 + t1166 * t644 + t1421, -pkin(1) * t602 + pkin(7) * t600 + t1162 * t580 + t1166 * t588;];
tauB_reg  = t1;
