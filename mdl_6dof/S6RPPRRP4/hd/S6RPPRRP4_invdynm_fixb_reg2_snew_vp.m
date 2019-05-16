% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RPPRRP4
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,theta3]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 14:56
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RPPRRP4_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP4_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP4_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRRP4_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRRP4_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRRP4_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 14:55:33
% EndTime: 2019-05-05 14:55:57
% DurationCPUTime: 24.79s
% Computational Cost: add. (59122->739), mult. (107774->800), div. (0->0), fcn. (58432->8), ass. (0->436)
t1242 = sin(qJ(1));
t1245 = cos(qJ(1));
t1240 = sin(qJ(5));
t1243 = cos(qJ(5));
t1241 = sin(qJ(4));
t1362 = qJD(1) * t1241;
t1189 = qJD(4) * t1243 + t1240 * t1362;
t1244 = cos(qJ(4));
t1361 = qJD(1) * t1244;
t1320 = qJD(4) * t1361;
t1326 = t1241 * qJDD(1);
t1195 = -t1320 - t1326;
t1294 = -t1240 * qJDD(4) - t1243 * t1195;
t1123 = qJD(5) * t1189 - t1294;
t1219 = qJD(5) + t1361;
t1333 = t1219 * t1189;
t1399 = t1123 + t1333;
t1191 = -t1240 * qJD(4) + t1243 * t1362;
t1315 = t1243 * qJDD(4) - t1240 * t1195;
t1122 = -qJD(5) * t1191 - t1315;
t1170 = t1219 * t1191;
t1401 = t1122 - t1170;
t1016 = -t1401 * t1240 + t1243 * t1399;
t1236 = sin(pkin(9));
t1237 = cos(pkin(9));
t1350 = t1399 * t1240;
t1017 = t1401 * t1243 + t1350;
t1186 = t1191 ^ 2;
t1381 = t1189 ^ 2;
t1395 = t1186 - t1381;
t985 = t1017 * t1244 - t1241 * t1395;
t929 = t1016 * t1237 + t1236 * t985;
t931 = -t1016 * t1236 + t1237 * t985;
t1485 = t1242 * t931 - t1245 * t929;
t1484 = t1242 * t929 + t1245 * t931;
t1380 = t1219 ^ 2;
t1159 = t1381 - t1380;
t1138 = t1189 * t1191;
t1223 = qJD(4) * t1362;
t1325 = t1244 * qJDD(1);
t1197 = t1223 - t1325;
t1187 = qJDD(5) - t1197;
t1397 = t1138 + t1187;
t1420 = t1397 * t1240;
t1063 = t1159 * t1243 - t1420;
t1084 = t1122 + t1170;
t1005 = t1063 * t1244 - t1084 * t1241;
t1419 = t1397 * t1243;
t1059 = t1159 * t1240 + t1419;
t956 = t1005 * t1236 - t1059 * t1237;
t960 = t1005 * t1237 + t1059 * t1236;
t1483 = t1242 * t960 - t1245 * t956;
t1482 = t1242 * t956 + t1245 * t960;
t1160 = t1186 - t1380;
t1398 = -t1138 + t1187;
t1345 = t1398 * t1240;
t1441 = -t1160 * t1243 + t1345;
t1400 = t1123 - t1333;
t1344 = t1398 * t1243;
t1440 = t1160 * t1240 + t1344;
t1448 = t1241 * t1400 + t1244 * t1440;
t1465 = t1236 * t1441 + t1237 * t1448;
t1466 = t1236 * t1448 - t1237 * t1441;
t1481 = t1242 * t1466 + t1245 * t1465;
t1480 = t1242 * t1465 - t1245 * t1466;
t1393 = -t1380 - t1381;
t1415 = t1240 * t1393 + t1344;
t1414 = t1243 * t1393 - t1345;
t1437 = t1241 * t1401 + t1244 * t1414;
t1451 = t1236 * t1437 - t1237 * t1415;
t1479 = pkin(2) * t1451;
t1125 = t1380 + t1186;
t1048 = t1125 * t1243 + t1420;
t1478 = pkin(3) * t1048;
t1477 = pkin(4) * t1048;
t1476 = pkin(8) * t1048;
t1054 = t1125 * t1240 - t1419;
t1475 = pkin(8) * t1054;
t1450 = t1236 * t1415 + t1237 * t1437;
t1474 = qJ(3) * t1450;
t1473 = qJ(3) * t1451;
t1472 = t1048 * t1236;
t1471 = t1048 * t1237;
t1470 = t1054 * t1241;
t1469 = t1054 * t1244;
t983 = t1017 * t1241 + t1244 * t1395;
t1001 = t1063 * t1241 + t1084 * t1244;
t1379 = pkin(1) + pkin(2);
t1464 = qJ(2) * t1450 - t1379 * t1451;
t1463 = pkin(6) * (t1242 * t1451 + t1245 * t1450);
t1462 = pkin(6) * (t1242 * t1450 - t1245 * t1451);
t1438 = t1241 * t1414 - t1244 * t1401;
t1461 = pkin(2) * t1438;
t1460 = pkin(3) * t1438;
t1459 = pkin(7) * t1438;
t1458 = qJ(2) * t1438;
t1453 = t1379 * t1438;
t1452 = pkin(3) * t1415 - pkin(7) * t1437;
t1449 = t1241 * t1440 - t1244 * t1400;
t1446 = pkin(4) * t1415;
t1445 = pkin(8) * t1414;
t1444 = pkin(8) * t1415;
t1246 = qJD(1) ^ 2;
t1198 = -t1236 * qJDD(1) + t1237 * t1246;
t1199 = qJDD(1) * t1237 + t1236 * t1246;
t1129 = -t1198 * t1242 + t1245 * t1199;
t1368 = g(3) + qJDD(3);
t1165 = qJ(3) * t1198 + t1237 * t1368;
t1388 = qJ(3) * t1199 + t1236 * t1368;
t1439 = pkin(6) * t1129 + t1242 * t1165 - t1245 * t1388;
t1332 = t1219 * t1240;
t1152 = t1191 * t1332;
t1331 = t1219 * t1243;
t1321 = t1189 * t1331;
t1301 = -t1152 + t1321;
t1383 = t1187 * t1241 + t1244 * t1301;
t1402 = (t1189 * t1240 + t1191 * t1243) * t1219;
t1409 = t1236 * t1383 - t1237 * t1402;
t1410 = t1236 * t1402 + t1237 * t1383;
t1436 = t1242 * t1410 - t1245 * t1409;
t1435 = t1242 * t1409 + t1245 * t1410;
t1074 = t1122 * t1243 + t1189 * t1332;
t1278 = t1122 * t1240 - t1321;
t1323 = t1241 * t1138;
t1384 = t1244 * t1278 - t1323;
t1411 = -t1074 * t1236 + t1237 * t1384;
t1412 = t1074 * t1237 + t1236 * t1384;
t1434 = t1242 * t1412 + t1245 * t1411;
t1433 = t1242 * t1411 - t1245 * t1412;
t1396 = t1245 * t1198 + t1199 * t1242;
t1432 = -pkin(6) * t1396 + t1245 * t1165 + t1242 * t1388;
t1394 = t1186 + t1381;
t1431 = pkin(4) * t1394;
t1430 = qJ(6) * t1399;
t1429 = t1241 * t1394;
t1424 = t1244 * t1394;
t1375 = pkin(4) * t1244;
t1418 = pkin(8) * t1241 + t1375;
t1360 = qJD(2) * qJD(1);
t1230 = 0.2e1 * t1360;
t1210 = t1245 * g(1) + t1242 * g(2);
t1232 = qJDD(1) * qJ(2);
t1292 = -t1210 + t1232;
t1156 = -t1246 * t1379 + t1230 + t1292;
t1209 = t1242 * g(1) - t1245 * g(2);
t1309 = -qJDD(2) + t1209;
t1277 = -t1246 * qJ(2) - t1309;
t1249 = -qJDD(1) * t1379 + t1277;
t1091 = t1236 * t1156 - t1237 * t1249;
t1092 = t1237 * t1156 + t1236 * t1249;
t1024 = t1091 * t1237 - t1092 * t1236;
t1298 = t1091 * t1236 + t1092 * t1237;
t1417 = t1024 * t1242 - t1245 * t1298;
t1416 = t1024 * t1245 + t1242 * t1298;
t1077 = t1123 * t1240 - t1191 * t1331;
t1078 = t1123 * t1243 + t1152;
t1302 = t1244 * t1078 + t1323;
t1387 = t1077 * t1236 + t1237 * t1302;
t1389 = -t1077 * t1237 + t1236 * t1302;
t1408 = t1242 * t1389 + t1245 * t1387;
t1407 = t1242 * t1387 - t1245 * t1389;
t1319 = qJ(6) * t1240 + pkin(4);
t1374 = pkin(5) * t1243;
t1359 = qJD(6) * t1219;
t1207 = 0.2e1 * t1359;
t1128 = -pkin(5) * t1189 + qJ(6) * t1191;
t1080 = qJDD(1) * pkin(3) - t1246 * pkin(7) + t1091;
t1304 = t1197 + t1223;
t1305 = -t1195 + t1320;
t1028 = -pkin(4) * t1304 + pkin(8) * t1305 + t1080;
t1081 = -pkin(3) * t1246 - qJDD(1) * pkin(7) + t1092;
t1070 = t1244 * t1081 + t1241 * t1368;
t1283 = t1246 * t1418;
t1382 = qJD(4) ^ 2;
t1043 = -pkin(4) * t1382 + qJDD(4) * pkin(8) - t1244 * t1283 + t1070;
t966 = t1240 * t1028 + t1243 * t1043;
t1299 = -pkin(5) * t1380 + t1187 * qJ(6) + t1189 * t1128 + t966;
t937 = t1207 + t1299;
t965 = -t1243 * t1028 + t1043 * t1240;
t938 = -t1187 * pkin(5) - qJ(6) * t1380 - t1128 * t1191 + qJDD(6) + t965;
t906 = t1240 * t938 + t1243 * t937;
t1069 = t1241 * t1081 - t1244 * t1368;
t1042 = -qJDD(4) * pkin(4) - t1382 * pkin(8) - t1241 * t1283 + t1069;
t1250 = t1122 * pkin(5) + t1042 - t1430;
t953 = (-pkin(5) * t1219 + 0.2e1 * qJD(6)) * t1191 + t1250;
t1392 = -(t1319 + t1374) * t953 + pkin(8) * t906;
t1248 = -0.2e1 * qJD(6) * t1191 - t1250;
t934 = (-t1401 + t1170) * pkin(5) + t1248;
t1391 = t1243 * t934 - t1319 * t1401 + t1445;
t933 = pkin(5) * t1170 + t1248 + t1430;
t1390 = -t1475 + t1399 * (pkin(4) + t1374) + t1240 * t933;
t1322 = t1244 * t1138;
t1386 = -t1241 * t1278 - t1322;
t1385 = -t1187 * t1244 + t1241 * t1301;
t993 = t1069 * t1244 - t1070 * t1241;
t1378 = pkin(3) * t993;
t1376 = pkin(4) * t1241;
t1372 = pkin(7) * t1237;
t994 = t1241 * t1069 + t1244 * t1070;
t963 = t1080 * t1236 + t1237 * t994;
t1370 = qJ(3) * t963;
t1369 = qJDD(1) * pkin(1);
t1367 = qJ(3) * t1024;
t1364 = qJ(6) * t1243;
t1363 = qJD(1) * qJD(4);
t1358 = t1042 * t1240;
t1357 = t1042 * t1243;
t1349 = t1400 * t1240;
t1348 = t1400 * t1243;
t1218 = t1244 * t1246 * t1241;
t1205 = qJDD(4) + t1218;
t1337 = t1205 * t1241;
t1336 = t1205 * t1244;
t1206 = qJDD(4) - t1218;
t1335 = t1206 * t1241;
t1334 = t1206 * t1244;
t1233 = t1241 ^ 2;
t1330 = t1233 * t1246;
t1329 = t1241 * t1080;
t1328 = t1244 * t1080;
t1234 = t1244 ^ 2;
t1327 = -t1233 - t1234;
t962 = -t1080 * t1237 + t1236 * t994;
t1318 = -qJ(3) * t962 - t1236 * t1378;
t917 = t1240 * t965 + t1243 * t966;
t1171 = pkin(1) * t1246 - t1292 - 0.2e1 * t1360;
t1172 = -t1277 + t1369;
t1317 = -t1245 * t1171 - t1172 * t1242;
t1316 = -t1209 * t1242 - t1245 * t1210;
t1314 = t1236 * t1218;
t1313 = t1237 * t1218;
t1312 = pkin(3) * t1080 - pkin(7) * t994;
t1311 = -pkin(4) * t1042 + pkin(8) * t917;
t1310 = -pkin(5) * t938 + qJ(6) * t937;
t1201 = qJDD(1) * t1242 + t1245 * t1246;
t1174 = -pkin(6) * t1201 + g(3) * t1245;
t1202 = qJDD(1) * t1245 - t1242 * t1246;
t1173 = pkin(6) * t1202 + g(3) * t1242;
t1308 = -pkin(5) * t1400 - qJ(6) * t1084;
t1303 = -t1241 * t1078 + t1322;
t916 = t1240 * t966 - t1243 * t965;
t1300 = -pkin(3) * t1237 - pkin(7) * t1236 - pkin(2);
t1297 = t1171 * t1242 - t1172 * t1245;
t1295 = t1209 * t1245 - t1210 * t1242;
t905 = t1240 * t937 - t1243 * t938;
t880 = -pkin(4) * t905 - t1310;
t883 = -pkin(8) * t905 + (pkin(5) * t1240 - t1364) * t953;
t894 = t1241 * t906 - t1244 * t953;
t854 = -pkin(7) * t894 - t1241 * t880 + t1244 * t883;
t863 = -pkin(3) * t894 - t1392;
t895 = t1241 * t953 + t1244 * t906;
t874 = t1236 * t895 - t1237 * t905;
t1291 = -qJ(3) * t874 - t1236 * t863 + t1237 * t854;
t908 = -t1042 * t1244 + t1241 * t917;
t877 = -pkin(7) * t908 + (-pkin(8) * t1244 + t1376) * t916;
t884 = -pkin(3) * t908 - t1311;
t909 = t1042 * t1241 + t1244 * t917;
t888 = t1236 * t909 - t1237 * t916;
t1290 = -qJ(3) * t888 - t1236 * t884 + t1237 * t877;
t1015 = -t1084 * t1240 - t1348;
t921 = pkin(5) * t1394 + t937;
t922 = qJ(6) * t1394 + t938;
t896 = -pkin(8) * t1015 - t1240 * t921 + t1243 * t922;
t944 = -pkin(4) * t1015 - t1308;
t1019 = -t1084 * t1243 + t1349;
t972 = t1019 * t1241 + t1424;
t879 = -pkin(7) * t972 - t1241 * t944 + t1244 * t896;
t1252 = pkin(8) * t1019 + t1240 * t922 + t1243 * t921 + t1431;
t887 = -pkin(3) * t972 - t1252;
t974 = t1019 * t1244 - t1429;
t924 = -t1015 * t1237 + t1236 * t974;
t1289 = -qJ(3) * t924 - t1236 * t887 + t1237 * t879;
t1251 = pkin(5) * t1125 + qJ(6) * t1397 + t1299;
t910 = -t1251 - 0.2e1 * t1359 - t1477;
t911 = -pkin(5) * t1350 + t1243 * t933 - t1476;
t988 = t1244 * t1399 - t1470;
t882 = -pkin(7) * t988 - t1241 * t910 + t1244 * t911;
t899 = -pkin(3) * t988 - t1390;
t990 = -t1241 * t1399 - t1469;
t945 = t1236 * t990 - t1471;
t1288 = -qJ(3) * t945 - t1236 * t899 + t1237 * t882;
t912 = -t1240 * t934 - t1364 * t1401 - t1444;
t1247 = pkin(5) * t1398 + qJ(6) * t1393 - t938;
t913 = -t1247 - t1446;
t886 = -t1241 * t913 + t1244 * t912 - t1459;
t900 = -t1391 - t1460;
t1287 = -t1236 * t900 + t1237 * t886 - t1473;
t1085 = (qJD(5) - t1219) * t1191 + t1315;
t1014 = t1085 * t1240 - t1348;
t907 = -pkin(8) * t1014 - t916;
t1018 = t1085 * t1243 + t1349;
t971 = t1018 * t1241 + t1424;
t892 = -pkin(7) * t971 + t1014 * t1376 + t1244 * t907;
t1260 = pkin(8) * t1018 + t1431 + t917;
t897 = -pkin(3) * t971 - t1260;
t973 = t1018 * t1244 - t1429;
t923 = -t1014 * t1237 + t1236 * t973;
t1286 = -qJ(3) * t923 - t1236 * t897 + t1237 * t892;
t935 = t965 - t1446;
t967 = t1358 - t1444;
t902 = -t1241 * t935 + t1244 * t967 - t1459;
t1274 = -pkin(4) * t1401 - t1357 + t1445;
t918 = -t1274 - t1460;
t1285 = -t1236 * t918 + t1237 * t902 - t1473;
t936 = t966 + t1477;
t970 = t1357 + t1476;
t1090 = (-qJD(5) - t1219) * t1189 + t1294;
t995 = t1090 * t1244 + t1470;
t904 = -pkin(7) * t995 - t1241 * t936 + t1244 * t970;
t1273 = pkin(4) * t1090 + t1358 + t1475;
t919 = -pkin(3) * t995 - t1273;
t997 = -t1090 * t1241 + t1469;
t949 = t1236 * t997 + t1471;
t1284 = -qJ(3) * t949 - t1236 * t919 + t1237 * t904;
t1282 = -pkin(2) * t1368 + qJ(3) * t1298;
t1281 = -pkin(7) * t909 + (pkin(3) + t1418) * t916;
t1229 = t1234 * t1246;
t1216 = -t1229 - t1382;
t1143 = t1216 * t1241 + t1336;
t1037 = -pkin(3) * t1143 + t1069;
t1046 = -pkin(7) * t1143 + t1329;
t1147 = t1216 * t1244 - t1337;
t1196 = 0.2e1 * t1223 - t1325;
t1099 = t1147 * t1236 + t1196 * t1237;
t1280 = -qJ(3) * t1099 - t1037 * t1236 + t1237 * t1046;
t1214 = -t1330 - t1382;
t1145 = t1214 * t1244 - t1335;
t1038 = -pkin(3) * t1145 + t1070;
t1047 = -pkin(7) * t1145 + t1328;
t1149 = -t1214 * t1241 - t1334;
t1194 = 0.2e1 * t1320 + t1326;
t1100 = t1149 * t1236 + t1194 * t1237;
t1279 = -qJ(3) * t1100 - t1038 * t1236 + t1237 * t1047;
t1276 = pkin(3) * t1196 + pkin(7) * t1147 - t1328;
t1275 = pkin(3) * t1194 + pkin(7) * t1149 + t1329;
t875 = t1236 * t905 + t1237 * t895;
t1272 = -qJ(3) * t875 - t1236 * t854 - t1237 * t863;
t889 = t1236 * t916 + t1237 * t909;
t1271 = -qJ(3) * t889 - t1236 * t877 - t1237 * t884;
t926 = t1015 * t1236 + t1237 * t974;
t1270 = -qJ(3) * t926 - t1236 * t879 - t1237 * t887;
t947 = t1237 * t990 + t1472;
t1269 = -qJ(3) * t947 - t1236 * t882 - t1237 * t899;
t1268 = -t1236 * t886 - t1237 * t900 - t1474;
t925 = t1014 * t1236 + t1237 * t973;
t1267 = -qJ(3) * t925 - t1236 * t892 - t1237 * t897;
t1266 = -t1236 * t902 - t1237 * t918 - t1474;
t951 = t1237 * t997 - t1472;
t1265 = -qJ(3) * t951 - t1236 * t904 - t1237 * t919;
t1101 = t1147 * t1237 - t1196 * t1236;
t1263 = -qJ(3) * t1101 - t1237 * t1037 - t1236 * t1046;
t1102 = t1149 * t1237 - t1194 * t1236;
t1262 = -qJ(3) * t1102 - t1237 * t1038 - t1236 * t1047;
t1261 = -pkin(7) * t973 - t1241 * t907 + (pkin(3) + t1375) * t1014;
t1200 = t1327 * qJDD(1);
t1203 = t1229 + t1330;
t1259 = pkin(3) * t1203 + pkin(7) * t1200 + t994;
t1258 = pkin(3) * t905 - pkin(7) * t895 - t1241 * t883 - t1244 * t880;
t1257 = pkin(3) * t1015 - pkin(7) * t974 - t1241 * t896 - t1244 * t944;
t1256 = -pkin(7) * t990 - t1241 * t911 - t1244 * t910 + t1478;
t1255 = -t1241 * t967 - t1244 * t935 + t1452;
t1254 = -pkin(7) * t997 - t1241 * t970 - t1244 * t936 - t1478;
t1253 = -t1241 * t912 - t1244 * t913 + t1452;
t1215 = t1229 - t1382;
t1213 = -t1330 + t1382;
t1204 = -t1229 + t1330;
t1188 = t1327 * t1363;
t1183 = t1309 + 0.2e1 * t1369;
t1176 = -t1210 + t1230 + 0.2e1 * t1232;
t1158 = t1195 * t1244 + t1233 * t1363;
t1157 = -t1197 * t1241 + t1234 * t1363;
t1154 = qJDD(4) * t1236 + t1188 * t1237;
t1153 = -t1237 * qJDD(4) + t1188 * t1236;
t1148 = -t1213 * t1241 + t1336;
t1146 = t1215 * t1244 - t1335;
t1144 = t1213 * t1244 + t1337;
t1142 = t1215 * t1241 + t1334;
t1141 = t1304 * t1244;
t1140 = t1305 * t1241;
t1132 = t1200 * t1237 - t1203 * t1236;
t1131 = t1200 * t1236 + t1203 * t1237;
t1127 = t1194 * t1241 + t1196 * t1244;
t1126 = -t1194 * t1244 + t1196 * t1241;
t1121 = t1158 * t1237 - t1314;
t1120 = t1157 * t1237 + t1314;
t1119 = t1158 * t1236 + t1313;
t1118 = t1157 * t1236 - t1313;
t1117 = t1148 * t1237 - t1236 * t1326;
t1116 = t1146 * t1237 - t1236 * t1325;
t1115 = t1148 * t1236 + t1237 * t1326;
t1114 = t1146 * t1236 + t1237 * t1325;
t1105 = pkin(1) * t1172 - qJ(2) * t1171;
t1094 = t1127 * t1237 + t1204 * t1236;
t1093 = t1127 * t1236 - t1204 * t1237;
t1045 = -qJ(2) * t1198 + t1199 * t1379 + t1091;
t1044 = qJ(2) * t1199 + t1198 * t1379 + t1092;
t1021 = qJ(2) * t1368 + t1367;
t1012 = pkin(1) * t1368 - t1282;
t969 = -qJ(3) * t1131 + t1237 * t993;
t968 = qJ(3) * t1132 + t1236 * t993;
t943 = qJ(2) * t1102 - t1100 * t1379 - t1275;
t942 = qJ(2) * t1101 - t1099 * t1379 - t1276;
t941 = qJ(2) * t1132 - t1131 * t1379 - t1259;
t940 = qJ(2) * t1145 + t1279;
t939 = qJ(2) * t1143 + t1280;
t928 = t1145 * t1379 + t1262;
t927 = t1143 * t1379 + t1263;
t920 = qJ(2) * t1298 + t1024 * t1379;
t898 = -(qJ(2) - t1372) * t993 + t1318;
t893 = -t1370 - (pkin(1) - t1300) * t993;
t890 = qJ(2) * t963 - t1379 * t962 + t1312;
t873 = qJ(2) * t995 + t1284;
t872 = qJ(2) * t951 - t1379 * t949 + t1254;
t871 = t1285 + t1458;
t870 = t1255 + t1464;
t869 = t1379 * t995 + t1265;
t868 = t1266 + t1453;
t867 = t1253 + t1464;
t866 = qJ(2) * t947 - t1379 * t945 + t1256;
t865 = qJ(2) * t925 - t1379 * t923 + t1261;
t864 = t1287 + t1458;
t862 = qJ(2) * t971 + t1286;
t861 = qJ(2) * t988 + t1288;
t860 = t1268 + t1453;
t859 = qJ(2) * t926 - t1379 * t924 + t1257;
t858 = t1379 * t988 + t1269;
t857 = t1379 * t971 + t1267;
t856 = qJ(2) * t972 + t1289;
t855 = t1379 * t972 + t1270;
t852 = qJ(2) * t908 + t1290;
t851 = t1379 * t908 + t1271;
t850 = qJ(2) * t889 - t1379 * t888 + t1281;
t849 = qJ(2) * t894 + t1291;
t848 = qJ(2) * t875 - t1379 * t874 + t1258;
t847 = t1379 * t894 + t1272;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1202, 0, -t1201, 0, -t1173, -t1174, -t1295, -pkin(6) * t1295, 0, t1202, 0, 0, t1201, 0, -t1173, t1297, t1174, pkin(6) * t1297 + (-pkin(1) * t1242 + qJ(2) * t1245) * g(3), 0, 0, -t1129, 0, -t1396, 0, -t1439, t1432, t1416, -pkin(6) * t1416 - t1242 * t1012 + t1245 * t1021, t1119 * t1242 + t1121 * t1245, t1093 * t1242 + t1094 * t1245, t1115 * t1242 + t1117 * t1245, t1118 * t1242 + t1120 * t1245, t1114 * t1242 + t1116 * t1245, t1153 * t1242 + t1154 * t1245, t1245 * t939 - t1242 * t927 - pkin(6) * (-t1099 * t1245 + t1101 * t1242), t1245 * t940 - t1242 * t928 - pkin(6) * (-t1100 * t1245 + t1102 * t1242), t1245 * t969 + t1242 * t968 - pkin(6) * (-t1131 * t1245 + t1132 * t1242), t1245 * t898 - t1242 * t893 - pkin(6) * (t1242 * t963 - t1245 * t962), t1408, -t1484, t1481, t1434, t1482, t1435, -t1242 * t868 + t1245 * t871 - t1462, t1245 * t873 - t1242 * t869 - pkin(6) * (t1242 * t951 - t1245 * t949), t1245 * t862 - t1242 * t857 - pkin(6) * (t1242 * t925 - t1245 * t923), t1245 * t852 - t1242 * t851 - pkin(6) * (t1242 * t889 - t1245 * t888), t1408, t1481, t1484, t1435, -t1482, t1434, -t1242 * t860 + t1245 * t864 - t1462, t1245 * t856 - t1242 * t855 - pkin(6) * (t1242 * t926 - t1245 * t924), t1245 * t861 - t1242 * t858 - pkin(6) * (t1242 * t947 - t1245 * t945), t1245 * t849 - t1242 * t847 - pkin(6) * (t1242 * t875 - t1245 * t874); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1201, 0, t1202, 0, t1174, -t1173, t1316, pkin(6) * t1316, 0, t1201, 0, 0, -t1202, 0, t1174, t1317, t1173, pkin(6) * t1317 + (pkin(1) * t1245 + qJ(2) * t1242) * g(3), 0, 0, -t1396, 0, t1129, 0, t1432, t1439, t1417, -pkin(6) * t1417 + t1245 * t1012 + t1242 * t1021, -t1119 * t1245 + t1121 * t1242, -t1093 * t1245 + t1094 * t1242, -t1115 * t1245 + t1117 * t1242, -t1118 * t1245 + t1120 * t1242, -t1114 * t1245 + t1116 * t1242, -t1153 * t1245 + t1154 * t1242, t1242 * t939 + t1245 * t927 + pkin(6) * (t1099 * t1242 + t1101 * t1245), t1242 * t940 + t1245 * t928 + pkin(6) * (t1100 * t1242 + t1102 * t1245), t1242 * t969 - t1245 * t968 + pkin(6) * (t1131 * t1242 + t1132 * t1245), t1242 * t898 + t1245 * t893 + pkin(6) * (t1242 * t962 + t1245 * t963), t1407, -t1485, t1480, t1433, t1483, t1436, t1242 * t871 + t1245 * t868 + t1463, t1242 * t873 + t1245 * t869 + pkin(6) * (t1242 * t949 + t1245 * t951), t1242 * t862 + t1245 * t857 + pkin(6) * (t1242 * t923 + t1245 * t925), t1242 * t852 + t1245 * t851 + pkin(6) * (t1242 * t888 + t1245 * t889), t1407, t1480, t1485, t1436, -t1483, t1433, t1242 * t864 + t1245 * t860 + t1463, t1242 * t856 + t1245 * t855 + pkin(6) * (t1242 * t924 + t1245 * t926), t1242 * t861 + t1245 * t858 + pkin(6) * (t1242 * t945 + t1245 * t947), t1242 * t849 + t1245 * t847 + pkin(6) * (t1242 * t874 + t1245 * t875); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1209, t1210, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t1183, 0, t1176, t1105, 0, 0, 0, 0, 0, qJDD(1), t1045, t1044, 0, t920, t1140, -t1126, -t1144, -t1141, -t1142, 0, t942, t943, t941, t890, t1303, t983, -t1449, t1386, -t1001, -t1385, t870, t872, t865, t850, t1303, -t1449, -t983, -t1385, t1001, t1386, t867, t859, t866, t848; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1246, 0, 0, -g(3), -t1209, 0, 0, qJDD(1), 0, 0, t1246, 0, 0, -t1172, g(3), qJ(2) * g(3), 0, 0, -t1199, 0, -t1198, 0, t1388, t1165, t1024, t1021, t1121, t1094, t1117, t1120, t1116, t1154, t939, t940, t969, t898, t1387, -t931, t1465, t1411, t960, t1410, t871, t873, t862, t852, t1387, t1465, t931, t1410, -t960, t1411, t864, t856, t861, t849; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1246, 0, qJDD(1), 0, g(3), 0, -t1210, 0, 0, t1246, 0, 0, -qJDD(1), 0, g(3), -t1171, 0, pkin(1) * g(3), 0, 0, -t1198, 0, t1199, 0, t1165, -t1388, -t1298, t1012, -t1119, -t1093, -t1115, -t1118, -t1114, -t1153, t927, t928, -t968, t893, -t1389, t929, -t1466, -t1412, -t956, -t1409, t868, t869, t857, t851, -t1389, -t1466, -t929, -t1409, t956, -t1412, t860, t855, t858, t847; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1209, t1210, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t1183, 0, t1176, t1105, 0, 0, 0, 0, 0, qJDD(1), t1045, t1044, 0, t920, t1140, -t1126, -t1144, -t1141, -t1142, 0, t942, t943, t941, t890, t1303, t983, -t1449, t1386, -t1001, -t1385, t870, t872, t865, t850, t1303, -t1449, -t983, -t1385, t1001, t1386, t867, t859, t866, t848; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t1246, 0, 0, -t1172, g(3), 0, 0, 0, -t1199, 0, -t1198, 0, t1388, t1165, t1024, t1367, t1121, t1094, t1117, t1120, t1116, t1154, t1280, t1279, t969, t1372 * t993 + t1318, t1387, -t931, t1465, t1411, t960, t1410, t1285, t1284, t1286, t1290, t1387, t1465, t931, t1410, -t960, t1411, t1287, t1289, t1288, t1291; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t1172, 0, -t1171, 0, 0, 0, 0, 0, 0, qJDD(1), pkin(2) * t1199 + t1091, pkin(2) * t1198 + t1092, 0, pkin(2) * t1024, t1140, -t1126, -t1144, -t1141, -t1142, 0, -pkin(2) * t1099 - t1276, -pkin(2) * t1100 - t1275, -pkin(2) * t1131 - t1259, -pkin(2) * t962 + t1312, t1303, t983, -t1449, t1386, -t1001, -t1385, t1255 - t1479, -pkin(2) * t949 + t1254, -pkin(2) * t923 + t1261, -pkin(2) * t888 + t1281, t1303, -t1449, -t983, -t1385, t1001, t1386, t1253 - t1479, -pkin(2) * t924 + t1257, -pkin(2) * t945 + t1256, -pkin(2) * t874 + t1258; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1246, 0, 0, qJDD(1), 0, -g(3), t1171, 0, 0, 0, 0, t1198, 0, -t1199, 0, -t1165, t1388, t1298, t1282, t1119, t1093, t1115, t1118, t1114, t1153, -pkin(2) * t1143 - t1263, -pkin(2) * t1145 - t1262, t968, -t1300 * t993 + t1370, t1389, -t929, t1466, t1412, t956, t1409, -t1266 - t1461, -pkin(2) * t995 - t1265, -pkin(2) * t971 - t1267, -pkin(2) * t908 - t1271, t1389, t1466, t929, t1409, -t956, t1412, -t1268 - t1461, -pkin(2) * t972 - t1270, -pkin(2) * t988 - t1269, -pkin(2) * t894 - t1272; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), 0, -t1246, 0, 0, t1368, t1091, 0, t1158, t1127, t1148, t1157, t1146, t1188, t1046, t1047, t993, pkin(7) * t993, t1302, -t985, t1448, t1384, t1005, t1383, t902, t904, t892, t877, t1302, t1448, t985, t1383, -t1005, t1384, t886, t879, t882, t854; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1246, 0, -qJDD(1), 0, -t1368, 0, t1092, 0, t1218, -t1204, t1326, -t1218, t1325, -qJDD(4), t1037, t1038, 0, t1378, -t1077, -t1016, -t1441, t1074, -t1059, -t1402, t918, t919, t897, t884, -t1077, -t1441, t1016, -t1402, t1059, t1074, t900, t887, t899, t863; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), -t1091, -t1092, 0, 0, -t1140, t1126, t1144, t1141, t1142, 0, t1276, t1275, t1259, -t1312, -t1303, -t983, t1449, -t1386, t1001, t1385, -t1255, -t1254, -t1261, -t1281, -t1303, t1449, t983, t1385, -t1001, -t1386, -t1253, -t1257, -t1256, -t1258; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1195, t1196, t1205, t1320, t1215, -t1320, 0, t1080, t1069, 0, t1078, -t1017, t1440, t1278, t1063, t1301, t967, t970, t907, -pkin(8) * t916, t1078, t1440, t1017, t1301, -t1063, t1278, t912, t896, t911, t883; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1223, -t1194, t1213, t1197, t1206, t1223, -t1080, 0, t1070, 0, -t1138, -t1395, -t1400, t1138, t1084, -t1187, t935, t936, -pkin(4) * t1014, -pkin(4) * t916, -t1138, -t1400, t1395, -t1187, -t1084, t1138, t913, t944, t910, t880; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1218, t1204, -t1326, t1218, -t1325, qJDD(4), -t1069, -t1070, 0, 0, t1077, t1016, t1441, -t1074, t1059, t1402, t1274, t1273, t1260, t1311, t1077, t1441, -t1016, t1402, -t1059, -t1074, t1391, t1252, t1390, t1392; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1123, -t1401, t1398, -t1333, t1159, t1333, 0, t1042, t965, 0, t1123, t1398, t1401, t1333, -t1159, -t1333, -qJ(6) * t1401, t922, t933, -qJ(6) * t953; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1170, t1399, -t1160, -t1122, t1397, t1170, -t1042, 0, t966, 0, -t1170, -t1160, -t1399, t1170, -t1397, -t1122, t934, t921, pkin(5) * t1399, -pkin(5) * t953; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1138, t1395, t1400, -t1138, -t1084, t1187, -t965, -t966, 0, 0, t1138, t1400, -t1395, t1187, t1084, -t1138, t1247, t1308, t1207 + t1251, t1310; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1123, t1398, t1401, t1333, -t1159, -t1333, 0, t938, -t953, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1138, t1400, -t1395, t1187, t1084, -t1138, -t938, 0, t937, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1170, t1160, t1399, -t1170, t1397, t1122, t953, -t937, 0, 0;];
m_new_reg  = t1;
