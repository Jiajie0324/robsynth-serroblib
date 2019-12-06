% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RRRPR1
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d5,theta4]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:39
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RRRPR1_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR1_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR1_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRPR1_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRPR1_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR1_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:39:24
% EndTime: 2019-12-05 18:39:47
% DurationCPUTime: 24.05s
% Computational Cost: add. (230424->737), mult. (534101->1041), div. (0->0), fcn. (390459->10), ass. (0->510)
t1314 = sin(pkin(9));
t1317 = sin(qJ(3));
t1321 = cos(qJ(3));
t1322 = cos(qJ(2));
t1404 = qJD(1) * t1322;
t1318 = sin(qJ(2));
t1405 = qJD(1) * t1318;
t1270 = t1317 * t1405 - t1321 * t1404;
t1272 = (t1317 * t1322 + t1318 * t1321) * qJD(1);
t1315 = cos(pkin(9));
t1234 = t1315 * t1270 + t1314 * t1272;
t1236 = -t1314 * t1270 + t1315 * t1272;
t1182 = t1236 * t1234;
t1310 = qJDD(2) + qJDD(3);
t1418 = -t1182 + t1310;
t1427 = t1314 * t1418;
t1426 = t1315 * t1418;
t1316 = sin(qJ(5));
t1320 = cos(qJ(5));
t1172 = t1320 * t1234 + t1316 * t1236;
t1174 = -t1316 * t1234 + t1320 * t1236;
t1116 = t1174 * t1172;
t1304 = qJDD(5) + t1310;
t1420 = -t1116 + t1304;
t1425 = t1316 * t1420;
t1242 = t1272 * t1270;
t1416 = -t1242 + t1310;
t1424 = t1317 * t1416;
t1423 = t1320 * t1420;
t1422 = t1321 * t1416;
t1302 = qJD(2) * t1404;
t1365 = t1318 * qJDD(1);
t1281 = t1302 + t1365;
t1306 = t1322 * qJDD(1);
t1360 = qJD(2) * t1405;
t1282 = t1306 - t1360;
t1348 = t1317 * t1281 - t1321 * t1282;
t1214 = -t1272 * qJD(3) - t1348;
t1215 = -t1270 * qJD(3) + t1321 * t1281 + t1317 * t1282;
t1159 = t1314 * t1214 + t1315 * t1215;
t1349 = -t1315 * t1214 + t1314 * t1215;
t1070 = -t1172 * qJD(5) + t1320 * t1159 - t1316 * t1349;
t1311 = qJD(2) + qJD(3);
t1305 = qJD(5) + t1311;
t1167 = t1305 * t1172;
t1421 = t1070 - t1167;
t1226 = t1311 * t1234;
t1419 = t1159 - t1226;
t1133 = t1159 + t1226;
t1264 = t1311 * t1270;
t1417 = t1215 - t1264;
t1194 = t1215 + t1264;
t1350 = t1316 * t1159 + t1320 * t1349;
t1045 = (qJD(5) - t1305) * t1174 + t1350;
t1190 = (qJD(3) - t1311) * t1272 + t1348;
t1170 = t1172 ^ 2;
t1171 = t1174 ^ 2;
t1231 = t1234 ^ 2;
t1232 = t1236 ^ 2;
t1268 = t1270 ^ 2;
t1269 = t1272 ^ 2;
t1303 = t1305 ^ 2;
t1415 = t1311 ^ 2;
t1325 = qJD(1) ^ 2;
t1378 = t1318 * t1325;
t1319 = sin(qJ(1));
t1323 = cos(qJ(1));
t1292 = t1323 * g(1) + t1319 * g(2);
t1274 = -t1325 * pkin(1) + qJDD(1) * pkin(6) - t1292;
t1381 = t1318 * t1274;
t1406 = qJD(1) * qJD(2);
t1206 = qJDD(2) * pkin(2) - t1281 * pkin(7) - t1381 + (pkin(2) * t1378 + pkin(7) * t1406 - g(3)) * t1322;
t1258 = -t1318 * g(3) + t1322 * t1274;
t1313 = t1322 ^ 2;
t1307 = t1313 * t1325;
t1334 = qJD(2) * pkin(2) - pkin(7) * t1405;
t1210 = -pkin(2) * t1307 + t1282 * pkin(7) - qJD(2) * t1334 + t1258;
t1155 = -t1321 * t1206 + t1317 * t1210;
t1156 = t1317 * t1206 + t1321 * t1210;
t1095 = -t1321 * t1155 + t1317 * t1156;
t1414 = pkin(2) * t1095;
t1135 = -t1190 * t1317 - t1321 * t1194;
t1413 = pkin(2) * t1135;
t1402 = qJD(4) * t1236;
t1230 = -0.2e1 * t1402;
t1099 = t1416 * pkin(3) - t1194 * qJ(4) - t1155;
t1339 = t1311 * pkin(3) - t1272 * qJ(4);
t1101 = -t1268 * pkin(3) + t1214 * qJ(4) - t1311 * t1339 + t1156;
t1351 = -t1315 * t1099 + t1314 * t1101;
t1337 = t1230 - t1351;
t1001 = t1418 * pkin(4) - t1133 * pkin(8) + t1337;
t1403 = qJD(4) * t1234;
t1228 = -0.2e1 * t1403;
t1367 = t1314 * t1099 + t1315 * t1101;
t1035 = t1228 + t1367;
t1341 = t1311 * pkin(4) - t1236 * pkin(8);
t1004 = -t1231 * pkin(4) - pkin(8) * t1349 - t1311 * t1341 + t1035;
t956 = -t1320 * t1001 + t1316 * t1004;
t957 = t1316 * t1001 + t1320 * t1004;
t925 = t1316 * t957 - t1320 * t956;
t1409 = t1315 * t925;
t926 = t1316 * t956 + t1320 * t957;
t899 = t1314 * t926 + t1409;
t924 = pkin(4) * t925;
t1412 = pkin(3) * t899 + t924;
t1048 = t1070 + t1167;
t990 = -t1045 * t1316 - t1320 * t1048;
t992 = -t1045 * t1320 + t1316 * t1048;
t947 = t1314 * t992 + t1315 * t990;
t988 = pkin(4) * t990;
t1411 = pkin(3) * t947 + t988;
t1410 = t1314 * t925;
t1362 = 0.2e1 * t1402;
t1034 = t1351 + t1362;
t982 = -t1315 * t1034 + t1314 * t1035;
t1408 = t1317 * t982;
t1407 = t1321 * t982;
t1401 = t1305 * t1174;
t1400 = t1305 * t1316;
t1399 = t1305 * t1320;
t1398 = t1311 * t1236;
t1397 = t1311 * t1272;
t1396 = t1311 * t1314;
t1395 = t1311 * t1315;
t1394 = t1311 * t1317;
t1393 = t1311 * t1321;
t1312 = t1318 ^ 2;
t1392 = t1312 * t1325;
t1291 = t1319 * g(1) - t1323 * g(2);
t1333 = qJDD(1) * pkin(1) + t1291;
t1217 = t1282 * pkin(2) - t1334 * t1405 + (pkin(7) * t1313 + pkin(6)) * t1325 + t1333;
t1123 = t1214 * pkin(3) + t1268 * qJ(4) - t1272 * t1339 - qJDD(4) + t1217;
t1391 = t1314 * t1123;
t1177 = t1182 + t1310;
t1390 = t1314 * t1177;
t1389 = t1315 * t1123;
t1388 = t1315 * t1177;
t1052 = -pkin(4) * t1349 + t1231 * pkin(8) - t1236 * t1341 + t1123;
t1387 = t1316 * t1052;
t1110 = t1116 + t1304;
t1386 = t1316 * t1110;
t1385 = t1317 * t1217;
t1239 = t1242 + t1310;
t1384 = t1317 * t1239;
t1383 = t1318 * t1095;
t1273 = t1325 * pkin(6) + t1333;
t1382 = t1318 * t1273;
t1299 = t1322 * t1378;
t1289 = qJDD(2) + t1299;
t1380 = t1318 * t1289;
t1290 = qJDD(2) - t1299;
t1379 = t1318 * t1290;
t1377 = t1319 * t1310;
t1376 = t1320 * t1052;
t1375 = t1320 * t1110;
t1374 = t1321 * t1217;
t1373 = t1321 * t1239;
t1372 = t1322 * t1095;
t1371 = t1322 * t1273;
t1370 = t1322 * t1290;
t1366 = t1312 + t1313;
t1364 = t1319 * qJDD(1);
t1363 = t1323 * qJDD(1);
t983 = t1314 * t1034 + t1315 * t1035;
t938 = t1317 * t983 + t1407;
t981 = pkin(3) * t982;
t1361 = pkin(2) * t938 + t981;
t1359 = t1319 * t1116;
t1358 = t1319 * t1182;
t1357 = t1319 * t1242;
t1356 = t1323 * t1116;
t1355 = t1323 * t1182;
t1354 = t1323 * t1242;
t1218 = -t1232 - t1415;
t1141 = t1315 * t1218 - t1390;
t1353 = pkin(3) * t1141 - t1367;
t1129 = t1349 - t1398;
t1072 = -t1129 * t1314 - t1315 * t1133;
t1074 = -t1129 * t1315 + t1314 * t1133;
t1011 = t1321 * t1072 + t1317 * t1074;
t1068 = pkin(3) * t1072;
t1352 = pkin(2) * t1011 + t1068;
t1096 = t1317 * t1155 + t1321 * t1156;
t1257 = t1322 * g(3) + t1381;
t1209 = t1318 * t1257 + t1322 * t1258;
t1347 = -t1319 * t1291 - t1323 * t1292;
t900 = t1315 * t926 - t1410;
t881 = t1317 * t900 + t1321 * t899;
t1346 = pkin(2) * t881 + t1412;
t949 = -t1314 * t990 + t1315 * t992;
t917 = t1317 * t949 + t1321 * t947;
t1345 = pkin(2) * t917 + t1411;
t1344 = t1319 * t1299;
t1343 = t1323 * t1299;
t1256 = -t1269 - t1415;
t1195 = t1321 * t1256 - t1384;
t1342 = pkin(2) * t1195 - t1156;
t1286 = -t1319 * t1325 + t1363;
t1340 = -pkin(5) * t1286 - t1319 * g(3);
t1108 = -t1303 - t1170;
t1058 = t1316 * t1108 + t1423;
t1338 = pkin(4) * t1058 - t956;
t1208 = t1322 * t1257 - t1318 * t1258;
t1336 = t1323 * t1291 - t1319 * t1292;
t1142 = -t1314 * t1218 - t1388;
t1081 = t1321 * t1141 + t1317 * t1142;
t1335 = pkin(2) * t1081 + t1353;
t1059 = t1320 * t1108 - t1425;
t998 = t1315 * t1058 + t1314 * t1059;
t1332 = pkin(3) * t998 + t1338;
t1237 = -t1415 - t1268;
t1180 = t1317 * t1237 + t1422;
t1331 = pkin(2) * t1180 - t1155;
t1162 = -t1171 - t1303;
t1084 = t1320 * t1162 - t1386;
t1330 = pkin(4) * t1084 - t957;
t1175 = -t1415 - t1231;
t1113 = t1314 * t1175 + t1426;
t1114 = t1315 * t1175 - t1427;
t1060 = t1321 * t1113 + t1317 * t1114;
t1112 = pkin(3) * t1113;
t1329 = pkin(2) * t1060 + t1112 - t1351;
t1085 = -t1316 * t1162 - t1375;
t1018 = t1315 * t1084 + t1314 * t1085;
t1328 = pkin(3) * t1018 + t1330;
t999 = -t1314 * t1058 + t1315 * t1059;
t953 = t1317 * t999 + t1321 * t998;
t1327 = pkin(2) * t953 + t1332;
t1019 = -t1314 * t1084 + t1315 * t1085;
t969 = t1321 * t1018 + t1317 * t1019;
t1326 = pkin(2) * t969 + t1328;
t1324 = qJD(2) ^ 2;
t1300 = t1323 * t1310;
t1297 = -t1307 - t1324;
t1296 = t1307 - t1324;
t1295 = -t1324 - t1392;
t1294 = t1324 - t1392;
t1288 = -t1307 + t1392;
t1287 = t1307 + t1392;
t1285 = t1323 * t1325 + t1364;
t1284 = t1366 * qJDD(1);
t1283 = t1306 - 0.2e1 * t1360;
t1280 = 0.2e1 * t1302 + t1365;
t1278 = t1322 * t1289;
t1277 = t1366 * t1406;
t1267 = -pkin(5) * t1285 + t1323 * g(3);
t1262 = -t1269 + t1415;
t1261 = t1268 - t1415;
t1260 = t1322 * t1281 - t1312 * t1406;
t1259 = -t1318 * t1282 - t1313 * t1406;
t1255 = -t1318 * t1295 - t1370;
t1254 = -t1318 * t1294 + t1278;
t1253 = t1322 * t1297 - t1380;
t1252 = t1322 * t1296 - t1379;
t1251 = t1322 * t1295 - t1379;
t1250 = t1322 * t1294 + t1380;
t1249 = t1318 * t1297 + t1278;
t1248 = t1318 * t1296 + t1370;
t1247 = (t1281 + t1302) * t1318;
t1246 = (t1282 - t1360) * t1322;
t1244 = -t1318 * t1280 + t1322 * t1283;
t1243 = t1322 * t1280 + t1318 * t1283;
t1241 = t1269 - t1268;
t1229 = 0.2e1 * t1403;
t1224 = -t1232 + t1415;
t1223 = t1231 - t1415;
t1222 = (-t1270 * t1321 + t1272 * t1317) * t1311;
t1221 = (-t1270 * t1317 - t1272 * t1321) * t1311;
t1220 = -pkin(6) * t1251 - t1371;
t1219 = -pkin(6) * t1249 - t1382;
t1216 = -t1268 - t1269;
t1213 = -pkin(1) * t1251 + t1258;
t1212 = -pkin(1) * t1249 + t1257;
t1202 = pkin(1) * t1283 + pkin(6) * t1253 + t1371;
t1201 = -pkin(1) * t1280 + pkin(6) * t1255 - t1382;
t1200 = t1321 * t1261 - t1384;
t1199 = -t1317 * t1262 + t1422;
t1198 = t1317 * t1261 + t1373;
t1197 = t1321 * t1262 + t1424;
t1196 = -t1317 * t1256 - t1373;
t1189 = (qJD(3) + t1311) * t1272 + t1348;
t1188 = pkin(1) * t1273 + pkin(6) * t1209;
t1187 = t1321 * t1215 - t1272 * t1394;
t1186 = t1317 * t1215 + t1272 * t1393;
t1185 = -t1317 * t1214 + t1270 * t1393;
t1184 = t1321 * t1214 + t1270 * t1394;
t1183 = pkin(1) * t1287 + pkin(6) * t1284 + t1209;
t1181 = t1321 * t1237 - t1424;
t1179 = t1232 - t1231;
t1166 = -t1171 + t1303;
t1165 = t1170 - t1303;
t1164 = (-t1234 * t1315 + t1236 * t1314) * t1311;
t1163 = (-t1234 * t1314 - t1236 * t1315) * t1311;
t1161 = -t1318 * t1221 + t1322 * t1222;
t1160 = t1322 * t1221 + t1318 * t1222;
t1154 = -t1231 - t1232;
t1152 = -pkin(7) * t1195 - t1374;
t1151 = -pkin(7) * t1180 - t1385;
t1150 = -t1318 * t1198 + t1322 * t1200;
t1149 = -t1318 * t1197 + t1322 * t1199;
t1148 = t1315 * t1223 - t1390;
t1147 = -t1314 * t1224 + t1426;
t1146 = t1322 * t1198 + t1318 * t1200;
t1145 = t1322 * t1197 + t1318 * t1199;
t1144 = t1314 * t1223 + t1388;
t1143 = t1315 * t1224 + t1427;
t1139 = -t1318 * t1195 + t1322 * t1196;
t1138 = t1322 * t1195 + t1318 * t1196;
t1137 = -t1190 * t1321 + t1317 * t1194;
t1136 = -t1321 * t1189 - t1317 * t1417;
t1134 = -t1317 * t1189 + t1321 * t1417;
t1128 = t1349 + t1398;
t1127 = t1315 * t1159 - t1236 * t1396;
t1126 = t1314 * t1159 + t1236 * t1395;
t1125 = t1234 * t1395 + t1314 * t1349;
t1124 = t1234 * t1396 - t1315 * t1349;
t1122 = -t1318 * t1186 + t1322 * t1187;
t1121 = -t1318 * t1184 + t1322 * t1185;
t1120 = t1322 * t1186 + t1318 * t1187;
t1119 = t1322 * t1184 + t1318 * t1185;
t1118 = -t1318 * t1180 + t1322 * t1181;
t1117 = t1322 * t1180 + t1318 * t1181;
t1115 = t1171 - t1170;
t1107 = (-t1172 * t1320 + t1174 * t1316) * t1305;
t1106 = (-t1172 * t1316 - t1174 * t1320) * t1305;
t1105 = -pkin(2) * t1417 + pkin(7) * t1196 - t1385;
t1104 = -t1317 * t1163 + t1321 * t1164;
t1103 = t1321 * t1163 + t1317 * t1164;
t1102 = -pkin(2) * t1189 + pkin(7) * t1181 + t1374;
t1094 = -t1170 - t1171;
t1093 = t1320 * t1165 - t1386;
t1092 = -t1316 * t1166 + t1423;
t1091 = t1316 * t1165 + t1375;
t1090 = t1320 * t1166 + t1425;
t1089 = -t1317 * t1144 + t1321 * t1148;
t1088 = -t1317 * t1143 + t1321 * t1147;
t1087 = t1321 * t1144 + t1317 * t1148;
t1086 = t1321 * t1143 + t1317 * t1147;
t1082 = -t1317 * t1141 + t1321 * t1142;
t1080 = pkin(2) * t1217 + pkin(7) * t1096;
t1079 = -t1318 * t1135 + t1322 * t1137;
t1078 = -t1318 * t1134 + t1322 * t1136;
t1077 = t1322 * t1135 + t1318 * t1137;
t1076 = t1322 * t1134 + t1318 * t1136;
t1075 = -qJ(4) * t1141 - t1389;
t1073 = -t1315 * t1128 - t1314 * t1419;
t1071 = -t1314 * t1128 + t1315 * t1419;
t1069 = -t1174 * qJD(5) - t1350;
t1067 = -t1317 * t1126 + t1321 * t1127;
t1066 = -t1317 * t1124 + t1321 * t1125;
t1065 = t1321 * t1126 + t1317 * t1127;
t1064 = t1321 * t1124 + t1317 * t1125;
t1063 = -pkin(1) * t1138 - t1342;
t1062 = -qJ(4) * t1113 - t1391;
t1061 = -t1317 * t1113 + t1321 * t1114;
t1056 = -pkin(1) * t1117 - t1331;
t1055 = -t1314 * t1106 + t1315 * t1107;
t1054 = t1315 * t1106 + t1314 * t1107;
t1053 = -pkin(7) * t1135 - t1095;
t1051 = -t1318 * t1103 + t1322 * t1104;
t1050 = t1322 * t1103 + t1318 * t1104;
t1044 = (qJD(5) + t1305) * t1174 + t1350;
t1043 = t1320 * t1070 - t1174 * t1400;
t1042 = t1316 * t1070 + t1174 * t1399;
t1041 = -t1316 * t1069 + t1172 * t1399;
t1040 = t1320 * t1069 + t1172 * t1400;
t1039 = -pkin(2) * t1216 + pkin(7) * t1137 + t1096;
t1038 = -pkin(1) * t1077 - t1413;
t1037 = -pkin(3) * t1419 + qJ(4) * t1142 - t1391;
t1036 = -pkin(6) * t1138 - t1318 * t1105 + t1322 * t1152;
t1033 = -pkin(3) * t1128 + qJ(4) * t1114 + t1389;
t1032 = t1322 * t1096 - t1383;
t1031 = t1318 * t1096 + t1372;
t1029 = -pkin(6) * t1117 - t1318 * t1102 + t1322 * t1151;
t1028 = -pkin(1) * t1417 + pkin(6) * t1139 + t1322 * t1105 + t1318 * t1152;
t1027 = -t1314 * t1091 + t1315 * t1093;
t1026 = -t1314 * t1090 + t1315 * t1092;
t1025 = t1315 * t1091 + t1314 * t1093;
t1024 = t1315 * t1090 + t1314 * t1092;
t1023 = -t1318 * t1087 + t1322 * t1089;
t1022 = -t1318 * t1086 + t1322 * t1088;
t1021 = t1322 * t1087 + t1318 * t1089;
t1020 = t1322 * t1086 + t1318 * t1088;
t1016 = -t1318 * t1081 + t1322 * t1082;
t1015 = t1322 * t1081 + t1318 * t1082;
t1014 = -pkin(1) * t1189 + pkin(6) * t1118 + t1322 * t1102 + t1318 * t1151;
t1013 = -t1317 * t1072 + t1321 * t1074;
t1012 = -t1317 * t1071 + t1321 * t1073;
t1010 = t1321 * t1071 + t1317 * t1073;
t1009 = -t1318 * t1065 + t1322 * t1067;
t1008 = -t1318 * t1064 + t1322 * t1066;
t1007 = t1322 * t1065 + t1318 * t1067;
t1006 = t1322 * t1064 + t1318 * t1066;
t1005 = -pkin(8) * t1084 - t1376;
t1003 = -t1318 * t1060 + t1322 * t1061;
t1002 = t1322 * t1060 + t1318 * t1061;
t997 = -pkin(1) * t1031 - t1414;
t995 = -pkin(8) * t1058 - t1387;
t994 = -t1317 * t1054 + t1321 * t1055;
t993 = t1321 * t1054 + t1317 * t1055;
t991 = -t1320 * t1044 - t1316 * t1421;
t989 = -t1316 * t1044 + t1320 * t1421;
t987 = -t1314 * t1042 + t1315 * t1043;
t986 = -t1314 * t1040 + t1315 * t1041;
t985 = t1315 * t1042 + t1314 * t1043;
t984 = t1315 * t1040 + t1314 * t1041;
t980 = -pkin(6) * t1031 - pkin(7) * t1372 - t1318 * t1080;
t979 = -pkin(7) * t1081 - t1317 * t1037 + t1321 * t1075;
t978 = -pkin(4) * t1421 + pkin(8) * t1085 - t1387;
t977 = pkin(1) * t1217 + pkin(6) * t1032 - pkin(7) * t1383 + t1322 * t1080;
t976 = -pkin(6) * t1077 - t1318 * t1039 + t1322 * t1053;
t975 = -t1317 * t1025 + t1321 * t1027;
t974 = -t1317 * t1024 + t1321 * t1026;
t973 = t1321 * t1025 + t1317 * t1027;
t972 = t1321 * t1024 + t1317 * t1026;
t971 = pkin(3) * t1123 + qJ(4) * t983;
t970 = -t1317 * t1018 + t1321 * t1019;
t968 = -pkin(4) * t1044 + pkin(8) * t1059 + t1376;
t967 = -pkin(1) * t1216 + pkin(6) * t1079 + t1322 * t1039 + t1318 * t1053;
t966 = -pkin(7) * t1060 - t1317 * t1033 + t1321 * t1062;
t965 = -pkin(2) * t1419 + pkin(7) * t1082 + t1321 * t1037 + t1317 * t1075;
t964 = -t1318 * t1011 + t1322 * t1013;
t963 = -t1318 * t1010 + t1322 * t1012;
t962 = t1322 * t1011 + t1318 * t1013;
t961 = t1322 * t1010 + t1318 * t1012;
t960 = -qJ(4) * t1072 - t982;
t959 = -pkin(2) * t1128 + pkin(7) * t1061 + t1321 * t1033 + t1317 * t1062;
t958 = -pkin(3) * t1154 + qJ(4) * t1074 + t983;
t954 = -t1317 * t998 + t1321 * t999;
t952 = -pkin(1) * t1015 + t1228 - t1335;
t951 = -t1318 * t993 + t1322 * t994;
t950 = t1318 * t994 + t1322 * t993;
t948 = -t1314 * t989 + t1315 * t991;
t946 = t1314 * t991 + t1315 * t989;
t944 = -t1317 * t985 + t1321 * t987;
t943 = -t1317 * t984 + t1321 * t986;
t942 = t1317 * t987 + t1321 * t985;
t941 = t1317 * t986 + t1321 * t984;
t940 = -pkin(1) * t1002 - t1329 + t1362;
t939 = t1321 * t983 - t1408;
t937 = -pkin(1) * t962 - t1352;
t936 = -t1318 * t973 + t1322 * t975;
t935 = -t1318 * t972 + t1322 * t974;
t934 = t1318 * t975 + t1322 * t973;
t933 = t1318 * t974 + t1322 * t972;
t932 = -t1318 * t969 + t1322 * t970;
t931 = t1318 * t970 + t1322 * t969;
t930 = -qJ(4) * t1018 + t1315 * t1005 - t1314 * t978;
t929 = -qJ(4) * t998 - t1314 * t968 + t1315 * t995;
t928 = -pkin(3) * t1421 + qJ(4) * t1019 + t1314 * t1005 + t1315 * t978;
t927 = -pkin(6) * t1015 - t1318 * t965 + t1322 * t979;
t923 = -t1318 * t953 + t1322 * t954;
t922 = t1318 * t954 + t1322 * t953;
t921 = -pkin(1) * t1419 + pkin(6) * t1016 + t1318 * t979 + t1322 * t965;
t920 = -pkin(3) * t1044 + qJ(4) * t999 + t1314 * t995 + t1315 * t968;
t919 = -t1317 * t947 + t1321 * t949;
t918 = -t1317 * t946 + t1321 * t948;
t916 = t1317 * t948 + t1321 * t946;
t915 = pkin(4) * t1052 + pkin(8) * t926;
t914 = -pkin(6) * t1002 - t1318 * t959 + t1322 * t966;
t913 = -t1318 * t942 + t1322 * t944;
t912 = -t1318 * t941 + t1322 * t943;
t911 = t1318 * t944 + t1322 * t942;
t910 = t1318 * t943 + t1322 * t941;
t909 = -pkin(7) * t1011 - t1317 * t958 + t1321 * t960;
t908 = -pkin(1) * t1128 + pkin(6) * t1003 + t1318 * t966 + t1322 * t959;
t907 = -pkin(2) * t1154 + pkin(7) * t1013 + t1317 * t960 + t1321 * t958;
t906 = -pkin(8) * t990 - t925;
t905 = -pkin(4) * t1094 + pkin(8) * t992 + t926;
t904 = -t1318 * t938 + t1322 * t939;
t903 = t1318 * t939 + t1322 * t938;
t902 = -pkin(7) * t938 - qJ(4) * t1407 - t1317 * t971;
t901 = pkin(2) * t1123 + pkin(7) * t939 - qJ(4) * t1408 + t1321 * t971;
t897 = -pkin(1) * t931 - t1326;
t896 = -pkin(7) * t969 - t1317 * t928 + t1321 * t930;
t895 = -t1318 * t917 + t1322 * t919;
t894 = -t1318 * t916 + t1322 * t918;
t893 = t1318 * t919 + t1322 * t917;
t892 = t1318 * t918 + t1322 * t916;
t891 = -pkin(2) * t1421 + pkin(7) * t970 + t1317 * t930 + t1321 * t928;
t890 = -pkin(1) * t903 - t1361;
t889 = -pkin(1) * t922 - t1327;
t888 = -pkin(7) * t953 - t1317 * t920 + t1321 * t929;
t887 = -pkin(2) * t1044 + pkin(7) * t954 + t1317 * t929 + t1321 * t920;
t886 = -pkin(6) * t962 - t1318 * t907 + t1322 * t909;
t885 = -pkin(1) * t1154 + pkin(6) * t964 + t1318 * t909 + t1322 * t907;
t884 = -qJ(4) * t947 - t1314 * t905 + t1315 * t906;
t883 = -pkin(3) * t1094 + qJ(4) * t949 + t1314 * t906 + t1315 * t905;
t882 = -t1317 * t899 + t1321 * t900;
t880 = -pkin(8) * t1409 - qJ(4) * t899 - t1314 * t915;
t879 = -pkin(1) * t893 - t1345;
t878 = pkin(3) * t1052 - pkin(8) * t1410 + qJ(4) * t900 + t1315 * t915;
t877 = -pkin(6) * t903 - t1318 * t901 + t1322 * t902;
t876 = pkin(1) * t1123 + pkin(6) * t904 + t1318 * t902 + t1322 * t901;
t875 = -pkin(6) * t931 - t1318 * t891 + t1322 * t896;
t874 = -pkin(1) * t1421 + pkin(6) * t932 + t1318 * t896 + t1322 * t891;
t873 = -pkin(6) * t922 - t1318 * t887 + t1322 * t888;
t872 = -pkin(1) * t1044 + pkin(6) * t923 + t1318 * t888 + t1322 * t887;
t871 = -pkin(7) * t917 - t1317 * t883 + t1321 * t884;
t870 = -pkin(2) * t1094 + pkin(7) * t919 + t1317 * t884 + t1321 * t883;
t869 = -t1318 * t881 + t1322 * t882;
t868 = t1318 * t882 + t1322 * t881;
t867 = -pkin(7) * t881 - t1317 * t878 + t1321 * t880;
t866 = pkin(2) * t1052 + pkin(7) * t882 + t1317 * t880 + t1321 * t878;
t865 = -pkin(1) * t868 - t1346;
t864 = -pkin(6) * t893 - t1318 * t870 + t1322 * t871;
t863 = -pkin(1) * t1094 + pkin(6) * t895 + t1318 * t871 + t1322 * t870;
t862 = -pkin(6) * t868 - t1318 * t866 + t1322 * t867;
t861 = pkin(1) * t1052 + pkin(6) * t869 + t1318 * t867 + t1322 * t866;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1286, 0, -t1285, 0, t1340, -t1267, -t1336, -pkin(5) * t1336, t1323 * t1260 - t1344, t1323 * t1244 + t1319 * t1288, t1323 * t1254 + t1318 * t1364, t1323 * t1259 + t1344, t1323 * t1252 + t1306 * t1319, t1319 * qJDD(2) + t1323 * t1277, t1323 * t1219 - t1319 * t1212 - pkin(5) * (t1319 * t1253 + t1323 * t1283), t1323 * t1220 - t1319 * t1213 - pkin(5) * (t1319 * t1255 - t1323 * t1280), t1323 * t1208 - pkin(5) * (t1319 * t1284 + t1323 * t1287), -pkin(5) * (t1319 * t1209 + t1323 * t1273) - (t1319 * pkin(1) - t1323 * pkin(6)) * t1208, t1323 * t1122 + t1357, t1323 * t1078 + t1319 * t1241, t1323 * t1149 + t1319 * t1194, t1323 * t1121 - t1357, t1323 * t1150 - t1319 * t1190, t1323 * t1161 + t1377, t1323 * t1029 - t1319 * t1056 - pkin(5) * (t1319 * t1118 - t1323 * t1189), t1323 * t1036 - t1319 * t1063 - pkin(5) * (t1319 * t1139 - t1323 * t1417), t1323 * t976 - t1319 * t1038 - pkin(5) * (t1319 * t1079 - t1323 * t1216), t1323 * t980 - t1319 * t997 - pkin(5) * (t1319 * t1032 + t1323 * t1217), t1323 * t1009 + t1358, t1319 * t1179 + t1323 * t963, t1323 * t1022 + t1319 * t1133, t1323 * t1008 - t1358, t1323 * t1023 - t1319 * t1129, t1323 * t1051 + t1377, t1323 * t914 - t1319 * t940 - pkin(5) * (t1319 * t1003 - t1323 * t1128), t1323 * t927 - t1319 * t952 - pkin(5) * (t1319 * t1016 - t1323 * t1419), t1323 * t886 - t1319 * t937 - pkin(5) * (-t1323 * t1154 + t1319 * t964), t1323 * t877 - t1319 * t890 - pkin(5) * (t1323 * t1123 + t1319 * t904), t1323 * t913 + t1359, t1319 * t1115 + t1323 * t894, t1319 * t1048 + t1323 * t935, t1323 * t912 - t1359, -t1319 * t1045 + t1323 * t936, t1319 * t1304 + t1323 * t951, t1323 * t873 - t1319 * t889 - pkin(5) * (-t1323 * t1044 + t1319 * t923), t1323 * t875 - t1319 * t897 - pkin(5) * (t1319 * t932 - t1323 * t1421), t1323 * t864 - t1319 * t879 - pkin(5) * (-t1323 * t1094 + t1319 * t895), t1323 * t862 - t1319 * t865 - pkin(5) * (t1323 * t1052 + t1319 * t869); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1285, 0, t1286, 0, t1267, t1340, t1347, pkin(5) * t1347, t1319 * t1260 + t1343, t1319 * t1244 - t1323 * t1288, t1319 * t1254 - t1318 * t1363, t1319 * t1259 - t1343, t1319 * t1252 - t1322 * t1363, -t1323 * qJDD(2) + t1319 * t1277, t1319 * t1219 + t1323 * t1212 + pkin(5) * (t1323 * t1253 - t1319 * t1283), t1319 * t1220 + t1323 * t1213 + pkin(5) * (t1323 * t1255 + t1319 * t1280), t1319 * t1208 + pkin(5) * (t1323 * t1284 - t1319 * t1287), pkin(5) * (t1323 * t1209 - t1319 * t1273) - (-t1323 * pkin(1) - t1319 * pkin(6)) * t1208, t1319 * t1122 - t1354, t1319 * t1078 - t1323 * t1241, t1319 * t1149 - t1323 * t1194, t1319 * t1121 + t1354, t1319 * t1150 + t1323 * t1190, t1319 * t1161 - t1300, t1319 * t1029 + t1323 * t1056 + pkin(5) * (t1323 * t1118 + t1319 * t1189), t1319 * t1036 + t1323 * t1063 + pkin(5) * (t1323 * t1139 + t1319 * t1417), t1319 * t976 + t1323 * t1038 + pkin(5) * (t1323 * t1079 + t1319 * t1216), t1319 * t980 + t1323 * t997 + pkin(5) * (t1323 * t1032 - t1319 * t1217), t1319 * t1009 - t1355, -t1323 * t1179 + t1319 * t963, t1319 * t1022 - t1323 * t1133, t1319 * t1008 + t1355, t1319 * t1023 + t1323 * t1129, t1319 * t1051 - t1300, t1319 * t914 + t1323 * t940 + pkin(5) * (t1323 * t1003 + t1319 * t1128), t1319 * t927 + t1323 * t952 + pkin(5) * (t1323 * t1016 + t1319 * t1419), t1319 * t886 + t1323 * t937 + pkin(5) * (t1319 * t1154 + t1323 * t964), t1319 * t877 + t1323 * t890 + pkin(5) * (-t1319 * t1123 + t1323 * t904), t1319 * t913 - t1356, -t1323 * t1115 + t1319 * t894, -t1323 * t1048 + t1319 * t935, t1319 * t912 + t1356, t1323 * t1045 + t1319 * t936, -t1323 * t1304 + t1319 * t951, t1319 * t873 + t1323 * t889 + pkin(5) * (t1319 * t1044 + t1323 * t923), t1319 * t875 + t1323 * t897 + pkin(5) * (t1319 * t1421 + t1323 * t932), t1319 * t864 + t1323 * t879 + pkin(5) * (t1319 * t1094 + t1323 * t895), t1319 * t862 + t1323 * t865 + pkin(5) * (-t1319 * t1052 + t1323 * t869); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1291, t1292, 0, 0, t1247, t1243, t1250, t1246, t1248, 0, t1202, t1201, t1183, t1188, t1120, t1076, t1145, t1119, t1146, t1160, t1014, t1028, t967, t977, t1007, t961, t1020, t1006, t1021, t1050, t908, t921, t885, t876, t911, t892, t933, t910, t934, t950, t872, t874, t863, t861; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1325, 0, 0, -g(3), -t1291, 0, t1260, t1244, t1254, t1259, t1252, t1277, t1219, t1220, t1208, pkin(6) * t1208, t1122, t1078, t1149, t1121, t1150, t1161, t1029, t1036, t976, t980, t1009, t963, t1022, t1008, t1023, t1051, t914, t927, t886, t877, t913, t894, t935, t912, t936, t951, t873, t875, t864, t862; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1325, 0, qJDD(1), 0, g(3), 0, -t1292, 0, t1299, -t1288, -t1365, -t1299, -t1306, -qJDD(2), t1212, t1213, 0, pkin(1) * t1208, -t1242, -t1241, -t1194, t1242, t1190, -t1310, t1056, t1063, t1038, t997, -t1182, -t1179, -t1133, t1182, t1129, -t1310, t940, t952, t937, t890, -t1116, -t1115, -t1048, t1116, t1045, -t1304, t889, t897, t879, t865; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1291, t1292, 0, 0, t1247, t1243, t1250, t1246, t1248, 0, t1202, t1201, t1183, t1188, t1120, t1076, t1145, t1119, t1146, t1160, t1014, t1028, t967, t977, t1007, t961, t1020, t1006, t1021, t1050, t908, t921, t885, t876, t911, t892, t933, t910, t934, t950, t872, t874, t863, t861; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1281, t1283, t1289, -t1302, t1296, t1302, 0, -t1273, t1257, 0, t1187, t1136, t1199, t1185, t1200, t1222, t1151, t1152, t1053, -pkin(7) * t1095, t1067, t1012, t1088, t1066, t1089, t1104, t966, t979, t909, t902, t944, t918, t974, t943, t975, t994, t888, t896, t871, t867; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1360, t1280, t1294, t1282, t1290, -t1360, t1273, 0, t1258, 0, t1186, t1134, t1197, t1184, t1198, t1221, t1102, t1105, t1039, t1080, t1065, t1010, t1086, t1064, t1087, t1103, t959, t965, t907, t901, t942, t916, t972, t941, t973, t993, t887, t891, t870, t866; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1299, t1288, t1365, t1299, t1306, qJDD(2), -t1257, -t1258, 0, 0, t1242, t1241, t1194, -t1242, -t1190, t1310, t1331, t1342, t1413, t1414, t1182, t1179, t1133, -t1182, -t1129, t1310, t1230 + t1329, t1229 + t1335, t1352, t1361, t1116, t1115, t1048, -t1116, -t1045, t1304, t1327, t1326, t1345, t1346; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1215, -t1189, t1416, t1264, t1261, -t1264, 0, -t1217, t1155, 0, t1127, t1073, t1147, t1125, t1148, t1164, t1062, t1075, t960, -qJ(4) * t982, t987, t948, t1026, t986, t1027, t1055, t929, t930, t884, t880; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1397, t1417, t1262, t1214, t1239, -t1397, t1217, 0, t1156, 0, t1126, t1071, t1143, t1124, t1144, t1163, t1033, t1037, t958, t971, t985, t946, t1024, t984, t1025, t1054, t920, t928, t883, t878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1242, t1241, t1194, -t1242, -t1190, t1310, -t1155, -t1156, 0, 0, t1182, t1179, t1133, -t1182, -t1129, t1310, t1112 + t1337, t1229 + t1353, t1068, t981, t1116, t1115, t1048, -t1116, -t1045, t1304, t1332, t1328, t1411, t1412; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1159, -t1128, t1418, t1226, t1223, -t1226, 0, -t1123, t1034, 0, t1043, t991, t1092, t1041, t1093, t1107, t995, t1005, t906, -pkin(8) * t925; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1398, t1419, t1224, -t1349, t1177, -t1398, t1123, 0, t1035, 0, t1042, t989, t1090, t1040, t1091, t1106, t968, t978, t905, t915; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1182, t1179, t1133, -t1182, -t1129, t1310, -t1034, -t1035, 0, 0, t1116, t1115, t1048, -t1116, -t1045, t1304, t1338, t1330, t988, t924; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1070, -t1044, t1420, t1167, t1165, -t1167, 0, -t1052, t956, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1401, t1421, t1166, t1069, t1110, -t1401, t1052, 0, t957, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1116, t1115, t1048, -t1116, -t1045, t1304, -t956, -t957, 0, 0;];
m_new_reg = t1;
