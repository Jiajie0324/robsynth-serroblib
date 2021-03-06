% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RRRPR9
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
% Datum: 2019-12-31 21:25
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RRRPR9_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR9_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR9_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRPR9_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRPR9_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR9_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:25:15
% EndTime: 2019-12-31 21:25:37
% DurationCPUTime: 22.97s
% Computational Cost: add. (193714->752), mult. (406740->1034), div. (0->0), fcn. (290043->10), ass. (0->506)
t1317 = cos(qJ(2));
t1370 = t1317 * qJD(1);
t1297 = -qJD(3) + t1370;
t1411 = t1297 ^ 2;
t1312 = sin(qJ(3));
t1316 = cos(qJ(3));
t1313 = sin(qJ(2));
t1399 = qJD(1) * t1313;
t1271 = -t1316 * qJD(2) + t1312 * t1399;
t1272 = t1312 * qJD(2) + t1316 * t1399;
t1308 = sin(pkin(9));
t1309 = cos(pkin(9));
t1233 = t1309 * t1271 + t1308 * t1272;
t1413 = t1233 ^ 2;
t1169 = -t1411 - t1413;
t1234 = -t1308 * t1271 + t1309 * t1272;
t1183 = t1234 * t1233;
t1300 = qJD(2) * t1399;
t1362 = t1317 * qJDD(1);
t1277 = -t1300 + t1362;
t1268 = -qJDD(3) + t1277;
t1416 = -t1183 - t1268;
t1423 = t1309 * t1416;
t1104 = t1308 * t1169 + t1423;
t1314 = sin(qJ(1));
t1318 = cos(qJ(1));
t1286 = t1314 * g(1) - t1318 * g(2);
t1319 = qJD(1) ^ 2;
t1262 = qJDD(1) * pkin(1) + t1319 * pkin(6) + t1286;
t1340 = -t1277 + t1300;
t1301 = qJD(2) * t1370;
t1364 = t1313 * qJDD(1);
t1276 = t1301 + t1364;
t1341 = t1276 + t1301;
t1194 = pkin(2) * t1340 - pkin(7) * t1341 - t1262;
t1287 = t1318 * g(1) + t1314 * g(2);
t1263 = -t1319 * pkin(1) + qJDD(1) * pkin(6) - t1287;
t1252 = -t1313 * g(3) + t1317 * t1263;
t1408 = pkin(2) * t1317;
t1344 = -pkin(7) * t1313 - t1408;
t1274 = t1344 * qJD(1);
t1414 = qJD(2) ^ 2;
t1211 = -t1414 * pkin(2) + qJDD(2) * pkin(7) + t1274 * t1370 + t1252;
t1146 = -t1316 * t1194 + t1312 * t1211;
t1336 = -t1312 * qJDD(2) - t1316 * t1276;
t1229 = -t1271 * qJD(3) - t1336;
t1257 = t1271 * t1297;
t1199 = t1229 - t1257;
t1396 = t1272 * t1271;
t1331 = -t1268 - t1396;
t1091 = t1331 * pkin(3) - t1199 * qJ(4) - t1146;
t1147 = t1312 * t1194 + t1316 * t1211;
t1250 = -t1297 * pkin(3) - t1272 * qJ(4);
t1337 = t1316 * qJDD(2) - t1312 * t1276;
t1330 = t1272 * qJD(3) - t1337;
t1412 = t1271 ^ 2;
t1095 = -t1412 * pkin(3) - qJ(4) * t1330 + t1297 * t1250 + t1147;
t1339 = -0.2e1 * qJD(4) * t1234 + t1309 * t1091 - t1308 * t1095;
t1425 = pkin(3) * t1104 + t1339;
t1424 = t1308 * t1416;
t1311 = sin(qJ(5));
t1315 = cos(qJ(5));
t1174 = t1315 * t1233 + t1311 * t1234;
t1176 = -t1311 * t1233 + t1315 * t1234;
t1113 = t1176 * t1174;
t1264 = -qJDD(5) + t1268;
t1418 = -t1113 - t1264;
t1422 = t1311 * t1418;
t1421 = t1315 * t1418;
t1420 = t1312 * t1331;
t1419 = t1316 * t1331;
t1167 = t1309 * t1229 - t1308 * t1330;
t1350 = t1308 * t1229 + t1309 * t1330;
t1085 = -t1174 * qJD(5) + t1315 * t1167 - t1311 * t1350;
t1289 = -qJD(5) + t1297;
t1158 = t1174 * t1289;
t1417 = t1158 + t1085;
t1218 = t1233 * t1297;
t1140 = -t1218 + t1167;
t1415 = t1218 + t1167;
t1351 = t1311 * t1167 + t1315 * t1350;
t1053 = (qJD(5) + t1289) * t1176 + t1351;
t1172 = t1174 ^ 2;
t1173 = t1176 ^ 2;
t1232 = t1234 ^ 2;
t1267 = t1272 ^ 2;
t1288 = t1289 ^ 2;
t1398 = qJD(4) * t1233;
t1226 = -0.2e1 * t1398;
t1366 = t1308 * t1091 + t1309 * t1095;
t1025 = t1226 + t1366;
t974 = t1308 * t1025 + t1309 * t1339;
t1410 = pkin(3) * t974;
t1409 = pkin(2) * t1313;
t1392 = t1297 * t1234;
t1136 = t1350 + t1392;
t1081 = -t1136 * t1308 - t1309 * t1140;
t1407 = pkin(3) * t1081;
t1405 = t1317 * g(3);
t1214 = -t1297 * pkin(4) - t1234 * pkin(8);
t1001 = -t1413 * pkin(4) - pkin(8) * t1350 + t1297 * t1214 + t1025;
t997 = pkin(4) * t1416 - t1140 * pkin(8) + t1339;
t957 = t1311 * t1001 - t1315 * t997;
t958 = t1315 * t1001 + t1311 * t997;
t921 = t1311 * t958 - t1315 * t957;
t1404 = t1308 * t921;
t1403 = t1309 * t921;
t1402 = t1312 * t974;
t1401 = t1316 * t974;
t1400 = qJD(1) * qJD(2);
t1395 = t1289 * t1176;
t1394 = t1289 * t1311;
t1393 = t1289 * t1315;
t1391 = t1297 * t1308;
t1390 = t1297 * t1309;
t1389 = t1297 * t1312;
t1388 = t1297 * t1316;
t1305 = t1313 ^ 2;
t1387 = t1305 * t1319;
t1210 = t1405 - qJDD(2) * pkin(2) - t1414 * pkin(7) + (qJD(1) * t1274 + t1263) * t1313;
t1120 = t1330 * pkin(3) - t1412 * qJ(4) + t1272 * t1250 + qJDD(4) + t1210;
t1386 = t1308 * t1120;
t1163 = -t1183 + t1268;
t1385 = t1308 * t1163;
t1384 = t1309 * t1120;
t1383 = t1309 * t1163;
t1051 = pkin(4) * t1350 - t1413 * pkin(8) + t1234 * t1214 + t1120;
t1382 = t1311 * t1051;
t1106 = -t1113 + t1264;
t1381 = t1311 * t1106;
t1380 = t1312 * t1210;
t1220 = t1268 - t1396;
t1379 = t1312 * t1220;
t1378 = t1313 * t1262;
t1377 = t1313 * t1268;
t1296 = t1317 * t1319 * t1313;
t1284 = -t1296 + qJDD(2);
t1376 = t1313 * t1284;
t1285 = qJDD(2) + t1296;
t1375 = t1313 * t1285;
t1374 = t1315 * t1051;
t1373 = t1315 * t1106;
t1372 = t1316 * t1210;
t1371 = t1316 * t1220;
t1369 = t1317 * t1262;
t1368 = t1317 * t1284;
t1306 = t1317 ^ 2;
t1365 = t1305 + t1306;
t1363 = t1314 * qJDD(1);
t1361 = t1318 * qJDD(1);
t922 = t1311 * t957 + t1315 * t958;
t895 = t1308 * t922 + t1403;
t920 = pkin(4) * t921;
t1360 = pkin(3) * t895 + t920;
t1056 = -t1158 + t1085;
t993 = -t1053 * t1311 - t1315 * t1056;
t995 = -t1053 * t1315 + t1311 * t1056;
t953 = t1308 * t995 + t1309 * t993;
t991 = pkin(4) * t993;
t1359 = pkin(3) * t953 + t991;
t1358 = t1313 * t1113;
t1357 = t1313 * t1183;
t1356 = t1313 * t1396;
t1355 = t1317 * t1113;
t1354 = t1317 * t1183;
t1353 = t1317 * t1396;
t975 = t1309 * t1025 - t1308 * t1339;
t1087 = t1312 * t1146 + t1316 * t1147;
t1251 = t1313 * t1263 + t1405;
t1203 = t1313 * t1251 + t1317 * t1252;
t1349 = -t1314 * t1286 - t1318 * t1287;
t1348 = t1314 * t1296;
t1347 = t1318 * t1296;
t1207 = -t1232 - t1411;
t1116 = t1309 * t1207 + t1385;
t1346 = pkin(3) * t1116 - t1366;
t1345 = -pkin(2) * t1210 + pkin(7) * t1087;
t1281 = -t1314 * t1319 + t1361;
t1343 = -pkin(5) * t1281 - t1314 * g(3);
t1109 = -t1288 - t1172;
t1049 = t1311 * t1109 + t1421;
t1342 = pkin(4) * t1049 - t957;
t1086 = -t1316 * t1146 + t1312 * t1147;
t1202 = t1317 * t1251 - t1313 * t1252;
t1338 = t1318 * t1286 - t1314 * t1287;
t1153 = -t1173 - t1288;
t1070 = t1315 * t1153 + t1381;
t1335 = pkin(4) * t1070 - t958;
t1050 = t1315 * t1109 - t1422;
t988 = t1309 * t1049 + t1308 * t1050;
t1334 = pkin(3) * t988 + t1342;
t1231 = -t1411 - t1412;
t1162 = t1316 * t1231 - t1420;
t1258 = t1297 * t1272;
t1196 = t1258 - t1330;
t1333 = pkin(2) * t1196 + pkin(7) * t1162 - t1372;
t1237 = -t1267 - t1411;
t1171 = -t1312 * t1237 + t1371;
t1200 = (qJD(3) - t1297) * t1271 + t1336;
t1332 = pkin(2) * t1200 + pkin(7) * t1171 + t1380;
t1197 = (-qJD(3) - t1297) * t1272 + t1337;
t1144 = t1316 * t1197 + t1312 * t1199;
t1219 = t1267 + t1412;
t1329 = pkin(2) * t1219 + pkin(7) * t1144 + t1087;
t1071 = -t1311 * t1153 + t1373;
t1008 = t1309 * t1070 + t1308 * t1071;
t1328 = pkin(3) * t1008 + t1335;
t896 = t1309 * t922 - t1404;
t907 = -pkin(4) * t1051 + pkin(8) * t922;
t879 = -pkin(3) * t1051 - pkin(8) * t1404 + qJ(4) * t896 + t1309 * t907;
t882 = -pkin(8) * t1403 - qJ(4) * t895 - t1308 * t907;
t885 = -t1312 * t895 + t1316 * t896;
t1327 = -pkin(2) * t1051 + pkin(7) * t885 + t1312 * t882 + t1316 * t879;
t1052 = (qJD(5) - t1289) * t1176 + t1351;
t969 = -pkin(4) * t1052 + pkin(8) * t1050 - t1374;
t989 = -t1308 * t1049 + t1309 * t1050;
t990 = -pkin(8) * t1049 + t1382;
t914 = -pkin(3) * t1052 + qJ(4) * t989 + t1308 * t990 + t1309 * t969;
t925 = -qJ(4) * t988 - t1308 * t969 + t1309 * t990;
t951 = -t1312 * t988 + t1316 * t989;
t1326 = -pkin(2) * t1052 + pkin(7) * t951 + t1312 * t925 + t1316 * t914;
t1002 = -pkin(8) * t1070 + t1374;
t1009 = -t1308 * t1070 + t1309 * t1071;
t973 = -pkin(4) * t1417 + pkin(8) * t1071 + t1382;
t924 = -pkin(3) * t1417 + qJ(4) * t1009 + t1308 * t1002 + t1309 * t973;
t927 = -qJ(4) * t1008 + t1309 * t1002 - t1308 * t973;
t963 = -t1312 * t1008 + t1316 * t1009;
t1325 = -pkin(2) * t1417 + pkin(7) * t963 + t1312 * t927 + t1316 * t924;
t1088 = -t1172 - t1173;
t903 = -pkin(4) * t1088 + pkin(8) * t995 + t922;
t904 = -pkin(8) * t993 - t921;
t955 = -t1308 * t993 + t1309 * t995;
t889 = -pkin(3) * t1088 + qJ(4) * t955 + t1308 * t904 + t1309 * t903;
t890 = -qJ(4) * t953 - t1308 * t903 + t1309 * t904;
t918 = -t1312 * t953 + t1316 * t955;
t1324 = -pkin(2) * t1088 + pkin(7) * t918 + t1312 * t890 + t1316 * t889;
t1083 = -t1136 * t1309 + t1308 * t1140;
t1018 = -t1312 * t1081 + t1316 * t1083;
t1148 = -t1232 - t1413;
t959 = -pkin(3) * t1148 + qJ(4) * t1083 + t975;
t960 = -qJ(4) * t1081 - t974;
t1323 = -pkin(2) * t1148 + pkin(7) * t1018 + t1312 * t960 + t1316 * t959;
t1105 = t1309 * t1169 - t1424;
t1135 = t1350 - t1392;
t1026 = -pkin(3) * t1135 + qJ(4) * t1105 - t1384;
t1038 = -t1312 * t1104 + t1316 * t1105;
t1059 = -qJ(4) * t1104 + t1386;
t1322 = -pkin(2) * t1135 + pkin(7) * t1038 + t1316 * t1026 + t1312 * t1059;
t1118 = -t1308 * t1207 + t1383;
t1029 = -pkin(3) * t1415 + qJ(4) * t1118 + t1386;
t1061 = -t1312 * t1116 + t1316 * t1118;
t1062 = -qJ(4) * t1116 + t1384;
t1321 = -pkin(2) * t1415 + pkin(7) * t1061 + t1316 * t1029 + t1312 * t1062;
t931 = t1316 * t975 - t1402;
t968 = -pkin(3) * t1120 + qJ(4) * t975;
t1320 = -pkin(2) * t1120 + pkin(7) * t931 - qJ(4) * t1402 + t1316 * t968;
t1303 = t1306 * t1319;
t1294 = -t1303 - t1414;
t1293 = t1303 - t1414;
t1292 = -t1387 - t1414;
t1291 = -t1387 + t1414;
t1283 = -t1303 + t1387;
t1282 = t1303 + t1387;
t1280 = t1318 * t1319 + t1363;
t1279 = t1365 * qJDD(1);
t1278 = -0.2e1 * t1300 + t1362;
t1275 = 0.2e1 * t1301 + t1364;
t1270 = t1317 * t1285;
t1269 = t1365 * t1400;
t1261 = t1317 * t1268;
t1260 = -pkin(5) * t1280 + t1318 * g(3);
t1256 = -t1267 + t1411;
t1255 = -t1411 + t1412;
t1254 = t1317 * t1276 - t1305 * t1400;
t1253 = -t1313 * t1277 - t1306 * t1400;
t1249 = -t1313 * t1292 - t1368;
t1248 = -t1313 * t1291 + t1270;
t1247 = t1317 * t1294 - t1375;
t1246 = t1317 * t1293 - t1376;
t1245 = t1317 * t1292 - t1376;
t1244 = t1317 * t1291 + t1375;
t1243 = t1313 * t1294 + t1270;
t1242 = t1313 * t1293 + t1368;
t1241 = t1341 * t1313;
t1240 = t1340 * t1317;
t1238 = t1267 - t1412;
t1236 = -t1313 * t1275 + t1317 * t1278;
t1235 = t1317 * t1275 + t1313 * t1278;
t1216 = -t1232 + t1411;
t1215 = -t1411 + t1413;
t1213 = -pkin(6) * t1245 - t1369;
t1212 = -pkin(6) * t1243 - t1378;
t1209 = (t1271 * t1316 - t1272 * t1312) * t1297;
t1208 = (t1271 * t1312 + t1272 * t1316) * t1297;
t1205 = -pkin(1) * t1245 + t1252;
t1204 = -pkin(1) * t1243 + t1251;
t1198 = t1229 + t1257;
t1195 = t1258 + t1330;
t1193 = pkin(1) * t1278 + pkin(6) * t1247 + t1369;
t1192 = -pkin(1) * t1275 + pkin(6) * t1249 - t1378;
t1189 = t1316 * t1229 + t1272 * t1389;
t1188 = t1312 * t1229 - t1272 * t1388;
t1187 = -t1271 * t1388 + t1312 * t1330;
t1186 = t1271 * t1389 + t1316 * t1330;
t1185 = t1317 * t1209 - t1377;
t1184 = t1313 * t1209 + t1261;
t1182 = t1316 * t1255 + t1379;
t1181 = -t1312 * t1256 + t1419;
t1180 = t1312 * t1255 - t1371;
t1179 = t1316 * t1256 + t1420;
t1178 = t1232 - t1413;
t1177 = pkin(1) * t1262 + pkin(6) * t1203;
t1170 = t1316 * t1237 + t1379;
t1168 = pkin(1) * t1282 + pkin(6) * t1279 + t1203;
t1161 = t1312 * t1231 + t1419;
t1157 = -t1173 + t1288;
t1156 = t1172 - t1288;
t1155 = (t1233 * t1309 - t1234 * t1308) * t1297;
t1154 = (t1233 * t1308 + t1234 * t1309) * t1297;
t1152 = t1317 * t1189 + t1356;
t1151 = t1317 * t1187 - t1356;
t1150 = t1313 * t1189 - t1353;
t1149 = t1313 * t1187 + t1353;
t1143 = t1316 * t1196 - t1312 * t1198;
t1142 = t1312 * t1197 - t1316 * t1199;
t1141 = t1312 * t1196 + t1316 * t1198;
t1134 = -pkin(7) * t1170 + t1372;
t1133 = t1309 * t1167 + t1234 * t1391;
t1132 = t1308 * t1167 - t1234 * t1390;
t1131 = -t1233 * t1390 + t1308 * t1350;
t1130 = -t1233 * t1391 - t1309 * t1350;
t1129 = t1317 * t1182 - t1313 * t1195;
t1128 = t1317 * t1181 + t1313 * t1199;
t1127 = t1309 * t1215 + t1385;
t1126 = -t1308 * t1216 + t1423;
t1125 = t1313 * t1182 + t1317 * t1195;
t1124 = t1313 * t1181 - t1317 * t1199;
t1123 = t1308 * t1215 - t1383;
t1122 = t1309 * t1216 + t1424;
t1121 = -pkin(7) * t1161 + t1380;
t1119 = t1317 * t1171 - t1313 * t1200;
t1117 = t1313 * t1171 + t1317 * t1200;
t1115 = t1317 * t1162 - t1313 * t1196;
t1114 = t1313 * t1162 + t1317 * t1196;
t1112 = t1173 - t1172;
t1111 = t1317 * t1143 + t1313 * t1238;
t1110 = t1313 * t1143 - t1317 * t1238;
t1103 = t1317 * t1144 - t1313 * t1219;
t1102 = t1313 * t1144 + t1317 * t1219;
t1101 = (t1174 * t1315 - t1176 * t1311) * t1289;
t1100 = (t1174 * t1311 + t1176 * t1315) * t1289;
t1099 = -t1312 * t1154 + t1316 * t1155;
t1098 = t1316 * t1154 + t1312 * t1155;
t1097 = -pkin(2) * t1170 + t1147;
t1096 = -pkin(2) * t1161 + t1146;
t1093 = t1317 * t1099 - t1377;
t1092 = t1313 * t1099 + t1261;
t1084 = -t1176 * qJD(5) - t1351;
t1082 = -t1309 * t1135 - t1308 * t1415;
t1080 = -t1308 * t1135 + t1309 * t1415;
t1079 = t1315 * t1156 + t1381;
t1078 = -t1311 * t1157 + t1421;
t1077 = t1311 * t1156 - t1373;
t1076 = t1315 * t1157 + t1422;
t1075 = -t1312 * t1132 + t1316 * t1133;
t1074 = -t1312 * t1130 + t1316 * t1131;
t1073 = t1316 * t1132 + t1312 * t1133;
t1072 = t1316 * t1130 + t1312 * t1131;
t1068 = -t1312 * t1123 + t1316 * t1127;
t1067 = -t1312 * t1122 + t1316 * t1126;
t1066 = t1316 * t1123 + t1312 * t1127;
t1065 = t1316 * t1122 + t1312 * t1126;
t1064 = t1317 * t1087 + t1313 * t1210;
t1063 = t1313 * t1087 - t1317 * t1210;
t1060 = t1316 * t1116 + t1312 * t1118;
t1058 = -pkin(1) * t1117 - t1332;
t1048 = t1315 * t1085 + t1176 * t1394;
t1047 = t1311 * t1085 - t1176 * t1393;
t1046 = -t1311 * t1084 - t1174 * t1393;
t1045 = t1315 * t1084 - t1174 * t1394;
t1043 = -pkin(1) * t1114 - t1333;
t1042 = t1317 * t1075 + t1357;
t1041 = t1317 * t1074 - t1357;
t1040 = t1313 * t1075 - t1354;
t1039 = t1313 * t1074 + t1354;
t1037 = t1316 * t1104 + t1312 * t1105;
t1036 = -pkin(7) * t1142 - t1086;
t1035 = -t1308 * t1100 + t1309 * t1101;
t1034 = t1309 * t1100 + t1308 * t1101;
t1033 = t1317 * t1068 - t1313 * t1136;
t1032 = t1317 * t1067 + t1313 * t1140;
t1031 = t1313 * t1068 + t1317 * t1136;
t1030 = t1313 * t1067 - t1317 * t1140;
t1028 = t1317 * t1061 + t1313 * t1415;
t1027 = t1313 * t1061 - t1317 * t1415;
t1022 = -pkin(6) * t1117 - t1313 * t1097 + t1317 * t1134;
t1021 = t1317 * t1038 + t1313 * t1135;
t1020 = t1313 * t1038 - t1317 * t1135;
t1019 = -pkin(6) * t1114 - t1313 * t1096 + t1317 * t1121;
t1017 = -t1312 * t1080 + t1316 * t1082;
t1016 = t1316 * t1081 + t1312 * t1083;
t1015 = t1316 * t1080 + t1312 * t1082;
t1014 = -t1308 * t1077 + t1309 * t1079;
t1013 = -t1308 * t1076 + t1309 * t1078;
t1012 = t1309 * t1077 + t1308 * t1079;
t1011 = t1309 * t1076 + t1308 * t1078;
t1010 = -pkin(1) * t1170 + pkin(6) * t1119 + t1317 * t1097 + t1313 * t1134;
t1007 = -pkin(1) * t1102 - t1329;
t1006 = -pkin(1) * t1063 - t1345;
t1005 = -pkin(1) * t1161 + pkin(6) * t1115 + t1317 * t1096 + t1313 * t1121;
t1004 = t1317 * t1017 + t1313 * t1178;
t1003 = t1313 * t1017 - t1317 * t1178;
t1000 = t1317 * t1018 + t1313 * t1148;
t999 = t1313 * t1018 - t1317 * t1148;
t998 = -pkin(6) * t1102 + t1317 * t1036 + t1142 * t1409;
t994 = -t1315 * t1052 - t1311 * t1417;
t992 = -t1311 * t1052 + t1315 * t1417;
t987 = -t1308 * t1047 + t1309 * t1048;
t986 = -t1308 * t1045 + t1309 * t1046;
t985 = t1309 * t1047 + t1308 * t1048;
t984 = t1309 * t1045 + t1308 * t1046;
t983 = -t1312 * t1034 + t1316 * t1035;
t982 = t1316 * t1034 + t1312 * t1035;
t981 = -t1313 * t1264 + t1317 * t983;
t980 = t1317 * t1264 + t1313 * t983;
t979 = -pkin(6) * t1063 + (-pkin(7) * t1317 + t1409) * t1086;
t978 = -pkin(2) * t1016 - t1407;
t977 = pkin(6) * t1103 + t1313 * t1036 + (-pkin(1) - t1408) * t1142;
t976 = -pkin(2) * t1060 + t1226 - t1346;
t972 = -pkin(2) * t1037 - t1425;
t971 = pkin(6) * t1064 + (-pkin(1) + t1344) * t1086;
t970 = -pkin(7) * t1060 - t1312 * t1029 + t1316 * t1062;
t967 = -t1312 * t1012 + t1316 * t1014;
t966 = -t1312 * t1011 + t1316 * t1013;
t965 = t1316 * t1012 + t1312 * t1014;
t964 = t1316 * t1011 + t1312 * t1013;
t962 = t1316 * t1008 + t1312 * t1009;
t961 = -pkin(7) * t1037 - t1312 * t1026 + t1316 * t1059;
t954 = -t1308 * t992 + t1309 * t994;
t952 = t1308 * t994 + t1309 * t992;
t950 = t1312 * t989 + t1316 * t988;
t949 = -t1312 * t985 + t1316 * t987;
t948 = -t1312 * t984 + t1316 * t986;
t947 = t1312 * t987 + t1316 * t985;
t946 = t1312 * t986 + t1316 * t984;
t945 = -t1313 * t1053 + t1317 * t967;
t944 = t1313 * t1056 + t1317 * t966;
t943 = t1317 * t1053 + t1313 * t967;
t942 = -t1317 * t1056 + t1313 * t966;
t941 = t1313 * t1417 + t1317 * t963;
t940 = t1313 * t963 - t1317 * t1417;
t939 = t1317 * t949 + t1358;
t938 = t1317 * t948 - t1358;
t937 = t1313 * t949 - t1355;
t936 = t1313 * t948 + t1355;
t935 = -pkin(1) * t1027 - t1321;
t934 = -pkin(1) * t1020 - t1322;
t933 = t1313 * t1052 + t1317 * t951;
t932 = -t1317 * t1052 + t1313 * t951;
t930 = t1312 * t975 + t1401;
t929 = t1313 * t1120 + t1317 * t931;
t928 = -t1317 * t1120 + t1313 * t931;
t926 = -pkin(6) * t1027 - t1313 * t976 + t1317 * t970;
t923 = -pkin(6) * t1020 - t1313 * t972 + t1317 * t961;
t919 = -pkin(1) * t1060 + pkin(6) * t1028 + t1313 * t970 + t1317 * t976;
t917 = -t1312 * t952 + t1316 * t954;
t916 = t1312 * t955 + t1316 * t953;
t915 = t1312 * t954 + t1316 * t952;
t913 = -pkin(2) * t930 - t1410;
t912 = t1313 * t1112 + t1317 * t917;
t911 = -t1317 * t1112 + t1313 * t917;
t910 = -pkin(1) * t1037 + pkin(6) * t1021 + t1313 * t961 + t1317 * t972;
t909 = t1313 * t1088 + t1317 * t918;
t908 = -t1317 * t1088 + t1313 * t918;
t906 = -pkin(7) * t1016 - t1312 * t959 + t1316 * t960;
t905 = -pkin(2) * t962 - t1328;
t902 = -pkin(2) * t950 - t1334;
t901 = -pkin(1) * t999 - t1323;
t900 = -pkin(7) * t930 - qJ(4) * t1401 - t1312 * t968;
t899 = -pkin(6) * t999 - t1313 * t978 + t1317 * t906;
t898 = -pkin(2) * t916 - t1359;
t897 = -pkin(1) * t1016 + pkin(6) * t1000 + t1313 * t906 + t1317 * t978;
t894 = -pkin(7) * t962 - t1312 * t924 + t1316 * t927;
t893 = -pkin(1) * t928 - t1320;
t892 = -pkin(7) * t950 - t1312 * t914 + t1316 * t925;
t891 = -pkin(1) * t940 - t1325;
t888 = -pkin(1) * t932 - t1326;
t887 = -pkin(6) * t928 - t1313 * t913 + t1317 * t900;
t886 = -pkin(6) * t940 - t1313 * t905 + t1317 * t894;
t884 = t1312 * t896 + t1316 * t895;
t883 = -pkin(1) * t930 + pkin(6) * t929 + t1313 * t900 + t1317 * t913;
t881 = t1313 * t1051 + t1317 * t885;
t880 = -t1317 * t1051 + t1313 * t885;
t878 = -pkin(1) * t962 + pkin(6) * t941 + t1313 * t894 + t1317 * t905;
t877 = -pkin(6) * t932 - t1313 * t902 + t1317 * t892;
t876 = -pkin(1) * t950 + pkin(6) * t933 + t1313 * t892 + t1317 * t902;
t875 = -pkin(2) * t884 - t1360;
t874 = -pkin(7) * t916 - t1312 * t889 + t1316 * t890;
t873 = -pkin(1) * t908 - t1324;
t872 = -pkin(6) * t908 - t1313 * t898 + t1317 * t874;
t871 = -pkin(1) * t916 + pkin(6) * t909 + t1313 * t874 + t1317 * t898;
t870 = -pkin(7) * t884 - t1312 * t879 + t1316 * t882;
t869 = -pkin(1) * t880 - t1327;
t868 = -pkin(6) * t880 - t1313 * t875 + t1317 * t870;
t867 = -pkin(1) * t884 + pkin(6) * t881 + t1313 * t870 + t1317 * t875;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1281, 0, -t1280, 0, t1343, -t1260, -t1338, -pkin(5) * t1338, t1318 * t1254 - t1348, t1318 * t1236 + t1314 * t1283, t1318 * t1248 + t1313 * t1363, t1318 * t1253 + t1348, t1318 * t1246 + t1314 * t1362, t1314 * qJDD(2) + t1318 * t1269, t1318 * t1212 - t1314 * t1204 - pkin(5) * (t1314 * t1247 + t1318 * t1278), t1318 * t1213 - t1314 * t1205 - pkin(5) * (t1314 * t1249 - t1318 * t1275), t1318 * t1202 - pkin(5) * (t1314 * t1279 + t1318 * t1282), -pkin(5) * (t1314 * t1203 + t1318 * t1262) - (t1314 * pkin(1) - t1318 * pkin(6)) * t1202, t1318 * t1152 + t1314 * t1188, t1318 * t1111 + t1314 * t1141, t1318 * t1128 + t1314 * t1179, t1318 * t1151 - t1314 * t1186, t1318 * t1129 + t1314 * t1180, t1318 * t1185 + t1314 * t1208, t1318 * t1019 - t1314 * t1043 - pkin(5) * (t1314 * t1115 - t1318 * t1161), t1318 * t1022 - t1314 * t1058 - pkin(5) * (t1314 * t1119 - t1318 * t1170), t1318 * t998 - t1314 * t1007 - pkin(5) * (t1314 * t1103 - t1318 * t1142), t1318 * t979 - t1314 * t1006 - pkin(5) * (t1314 * t1064 - t1318 * t1086), t1318 * t1042 + t1314 * t1073, t1318 * t1004 + t1314 * t1015, t1318 * t1032 + t1314 * t1065, t1318 * t1041 + t1314 * t1072, t1318 * t1033 + t1314 * t1066, t1318 * t1093 + t1314 * t1098, t1318 * t923 - t1314 * t934 - pkin(5) * (t1314 * t1021 - t1318 * t1037), t1318 * t926 - t1314 * t935 - pkin(5) * (t1314 * t1028 - t1318 * t1060), t1318 * t899 - t1314 * t901 - pkin(5) * (t1314 * t1000 - t1318 * t1016), t1318 * t887 - t1314 * t893 - pkin(5) * (t1314 * t929 - t1318 * t930), t1314 * t947 + t1318 * t939, t1314 * t915 + t1318 * t912, t1314 * t964 + t1318 * t944, t1314 * t946 + t1318 * t938, t1314 * t965 + t1318 * t945, t1314 * t982 + t1318 * t981, t1318 * t877 - t1314 * t888 - pkin(5) * (t1314 * t933 - t1318 * t950), t1318 * t886 - t1314 * t891 - pkin(5) * (t1314 * t941 - t1318 * t962), t1318 * t872 - t1314 * t873 - pkin(5) * (t1314 * t909 - t1318 * t916), t1318 * t868 - t1314 * t869 - pkin(5) * (t1314 * t881 - t1318 * t884); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1280, 0, t1281, 0, t1260, t1343, t1349, pkin(5) * t1349, t1314 * t1254 + t1347, t1314 * t1236 - t1318 * t1283, t1314 * t1248 - t1313 * t1361, t1314 * t1253 - t1347, t1314 * t1246 - t1317 * t1361, -t1318 * qJDD(2) + t1314 * t1269, t1314 * t1212 + t1318 * t1204 + pkin(5) * (t1318 * t1247 - t1314 * t1278), t1314 * t1213 + t1318 * t1205 + pkin(5) * (t1318 * t1249 + t1314 * t1275), t1314 * t1202 + pkin(5) * (t1318 * t1279 - t1314 * t1282), pkin(5) * (t1318 * t1203 - t1314 * t1262) - (-t1318 * pkin(1) - t1314 * pkin(6)) * t1202, t1314 * t1152 - t1318 * t1188, t1314 * t1111 - t1318 * t1141, t1314 * t1128 - t1318 * t1179, t1314 * t1151 + t1318 * t1186, t1314 * t1129 - t1318 * t1180, t1314 * t1185 - t1318 * t1208, t1314 * t1019 + t1318 * t1043 + pkin(5) * (t1318 * t1115 + t1314 * t1161), t1314 * t1022 + t1318 * t1058 + pkin(5) * (t1318 * t1119 + t1314 * t1170), t1314 * t998 + t1318 * t1007 + pkin(5) * (t1318 * t1103 + t1314 * t1142), t1314 * t979 + t1318 * t1006 + pkin(5) * (t1318 * t1064 + t1314 * t1086), t1314 * t1042 - t1318 * t1073, t1314 * t1004 - t1318 * t1015, t1314 * t1032 - t1318 * t1065, t1314 * t1041 - t1318 * t1072, t1314 * t1033 - t1318 * t1066, t1314 * t1093 - t1318 * t1098, t1314 * t923 + t1318 * t934 + pkin(5) * (t1318 * t1021 + t1314 * t1037), t1314 * t926 + t1318 * t935 + pkin(5) * (t1318 * t1028 + t1314 * t1060), t1314 * t899 + t1318 * t901 + pkin(5) * (t1318 * t1000 + t1314 * t1016), t1314 * t887 + t1318 * t893 + pkin(5) * (t1314 * t930 + t1318 * t929), t1314 * t939 - t1318 * t947, t1314 * t912 - t1318 * t915, t1314 * t944 - t1318 * t964, t1314 * t938 - t1318 * t946, t1314 * t945 - t1318 * t965, t1314 * t981 - t1318 * t982, t1314 * t877 + t1318 * t888 + pkin(5) * (t1314 * t950 + t1318 * t933), t1314 * t886 + t1318 * t891 + pkin(5) * (t1314 * t962 + t1318 * t941), t1314 * t872 + t1318 * t873 + pkin(5) * (t1314 * t916 + t1318 * t909), t1314 * t868 + t1318 * t869 + pkin(5) * (t1314 * t884 + t1318 * t881); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1286, t1287, 0, 0, t1241, t1235, t1244, -t1240, t1242, 0, t1193, t1192, t1168, t1177, t1150, t1110, t1124, t1149, t1125, t1184, t1005, t1010, t977, t971, t1040, t1003, t1030, t1039, t1031, t1092, t910, t919, t897, t883, t937, t911, t942, t936, t943, t980, t876, t878, t871, t867; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1319, 0, 0, -g(3), -t1286, 0, t1254, t1236, t1248, t1253, t1246, t1269, t1212, t1213, t1202, pkin(6) * t1202, t1152, t1111, t1128, t1151, t1129, t1185, t1019, t1022, t998, t979, t1042, t1004, t1032, t1041, t1033, t1093, t923, t926, t899, t887, t939, t912, t944, t938, t945, t981, t877, t886, t872, t868; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1319, 0, qJDD(1), 0, g(3), 0, -t1287, 0, t1296, -t1283, -t1364, -t1296, -t1362, -qJDD(2), t1204, t1205, 0, pkin(1) * t1202, -t1188, -t1141, -t1179, t1186, -t1180, -t1208, t1043, t1058, t1007, t1006, -t1073, -t1015, -t1065, -t1072, -t1066, -t1098, t934, t935, t901, t893, -t947, -t915, -t964, -t946, -t965, -t982, t888, t891, t873, t869; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1286, t1287, 0, 0, t1241, t1235, t1244, -t1240, t1242, 0, t1193, t1192, t1168, t1177, t1150, t1110, t1124, t1149, t1125, t1184, t1005, t1010, t977, t971, t1040, t1003, t1030, t1039, t1031, t1092, t910, t919, t897, t883, t937, t911, t942, t936, t943, t980, t876, t878, t871, t867; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1276, t1278, t1285, -t1301, t1293, t1301, 0, -t1262, t1251, 0, t1189, t1143, t1181, t1187, t1182, t1209, t1121, t1134, t1036, -pkin(7) * t1086, t1075, t1017, t1067, t1074, t1068, t1099, t961, t970, t906, t900, t949, t917, t966, t948, t967, t983, t892, t894, t874, t870; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1300, t1275, t1291, t1277, t1284, -t1300, t1262, 0, t1252, 0, -t1396, -t1238, -t1199, t1396, t1195, t1268, t1096, t1097, -pkin(2) * t1142, -pkin(2) * t1086, -t1183, -t1178, -t1140, t1183, t1136, t1268, t972, t976, t978, t913, -t1113, -t1112, -t1056, t1113, t1053, t1264, t902, t905, t898, t875; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1296, t1283, t1364, t1296, t1362, qJDD(2), -t1251, -t1252, 0, 0, t1188, t1141, t1179, -t1186, t1180, t1208, t1333, t1332, t1329, t1345, t1073, t1015, t1065, t1072, t1066, t1098, t1322, t1321, t1323, t1320, t947, t915, t964, t946, t965, t982, t1326, t1325, t1324, t1327; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1229, t1196, t1331, -t1257, t1255, t1257, 0, t1210, t1146, 0, t1133, t1082, t1126, t1131, t1127, t1155, t1059, t1062, t960, -qJ(4) * t974, t987, t954, t1013, t986, t1014, t1035, t925, t927, t890, t882; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1258, t1198, t1256, -t1330, -t1220, t1258, -t1210, 0, t1147, 0, t1132, t1080, t1122, t1130, t1123, t1154, t1026, t1029, t959, t968, t985, t952, t1011, t984, t1012, t1034, t914, t924, t889, t879; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1396, t1238, t1199, -t1396, -t1195, -t1268, -t1146, -t1147, 0, 0, t1183, t1178, t1140, -t1183, -t1136, -t1268, t1425, t1346 + 0.2e1 * t1398, t1407, t1410, t1113, t1112, t1056, -t1113, -t1053, -t1264, t1334, t1328, t1359, t1360; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1167, -t1135, t1416, -t1218, t1215, t1218, 0, t1120, -t1339, 0, t1048, t994, t1078, t1046, t1079, t1101, t990, t1002, t904, -pkin(8) * t921; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1392, t1415, t1216, -t1350, -t1163, t1392, -t1120, 0, t1025, 0, t1047, t992, t1076, t1045, t1077, t1100, t969, t973, t903, t907; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1183, t1178, t1140, -t1183, -t1136, -t1268, t1339, -t1025, 0, 0, t1113, t1112, t1056, -t1113, -t1053, -t1264, t1342, t1335, t991, t920; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1085, -t1052, t1418, -t1158, t1156, t1158, 0, t1051, t957, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1395, t1417, t1157, t1084, -t1106, t1395, -t1051, 0, t958, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1113, t1112, t1056, -t1113, -t1053, -t1264, -t957, -t958, 0, 0;];
m_new_reg = t1;
