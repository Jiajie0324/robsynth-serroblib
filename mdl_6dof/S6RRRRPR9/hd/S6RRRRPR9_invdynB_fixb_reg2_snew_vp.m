% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRRRPR9
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 22:28
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRRRPR9_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR9_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR9_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPR9_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPR9_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRPR9_invdynB_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 22:24:29
% EndTime: 2019-05-07 22:26:23
% DurationCPUTime: 85.57s
% Computational Cost: add. (978486->1115), mult. (2097689->1818), div. (0->0), fcn. (1731817->14), ass. (0->803)
t1283 = sin(pkin(12));
t1289 = sin(qJ(3));
t1294 = cos(qJ(3));
t1286 = cos(pkin(6));
t1447 = qJD(1) * t1286;
t1391 = qJD(2) + t1447;
t1284 = sin(pkin(6));
t1290 = sin(qJ(2));
t1418 = t1284 * t1290;
t1405 = qJD(1) * t1418;
t1241 = -t1289 * t1405 + t1294 * t1391;
t1242 = t1289 * t1391 + t1294 * t1405;
t1288 = sin(qJ(4));
t1293 = cos(qJ(4));
t1210 = t1241 * t1288 + t1242 * t1293;
t1295 = cos(qJ(2));
t1446 = qJD(1) * t1295;
t1393 = qJD(2) * t1446;
t1407 = t1290 * qJDD(1);
t1248 = (t1393 + t1407) * t1284;
t1384 = qJDD(1) * t1286 + qJDD(2);
t1197 = t1241 * qJD(3) + t1294 * t1248 + t1289 * t1384;
t1386 = t1289 * t1248 - t1294 * t1384;
t1324 = qJD(3) * t1242 + t1386;
t1388 = t1288 * t1197 + t1293 * t1324;
t1111 = qJD(4) * t1210 + t1388;
t1417 = t1284 * t1295;
t1268 = qJD(1) * t1417 - qJD(3);
t1260 = -qJD(4) + t1268;
t1285 = cos(pkin(12));
t1184 = t1210 * t1283 + t1285 * t1260;
t1186 = t1210 * t1285 - t1260 * t1283;
t1126 = t1186 * t1184;
t1469 = t1111 - t1126;
t1479 = t1283 * t1469;
t1354 = qJD(1) * t1391;
t1329 = t1284 * t1354;
t1478 = t1285 * t1469;
t1287 = sin(qJ(6));
t1292 = cos(qJ(6));
t1120 = t1292 * t1184 + t1186 * t1287;
t1122 = -t1184 * t1287 + t1186 * t1292;
t1045 = t1122 * t1120;
t1307 = qJDD(6) + t1111;
t1471 = -t1045 + t1307;
t1477 = t1287 * t1471;
t1476 = t1292 * t1471;
t1208 = -t1293 * t1241 + t1242 * t1288;
t1139 = t1208 * t1184;
t1112 = -t1208 * qJD(4) + t1293 * t1197 - t1288 * t1324;
t1408 = qJDD(1) * t1284;
t1410 = -qJD(2) * t1405 + t1295 * t1408;
t1392 = -qJDD(3) + t1410;
t1244 = -qJDD(4) + t1392;
t1411 = -t1285 * t1112 + t1283 * t1244;
t1031 = -t1139 + t1411;
t1383 = t1391 ^ 2;
t1431 = t1208 * t1210;
t1311 = -t1244 - t1431;
t1475 = t1288 * t1311;
t1428 = t1241 * t1242;
t1333 = -t1392 + t1428;
t1474 = t1289 * t1333;
t1473 = t1293 * t1311;
t1472 = t1294 * t1333;
t1204 = qJD(6) + t1208;
t1093 = t1204 * t1120;
t1087 = -t1112 * t1283 - t1285 * t1244;
t1306 = qJD(6) * t1120 - t1087 * t1287 + t1292 * t1411;
t1470 = -t1093 - t1306;
t1193 = t1208 * t1260;
t1069 = t1193 + t1112;
t1227 = t1241 * t1268;
t1169 = -t1227 - t1197;
t1167 = -t1227 + t1197;
t1030 = t1411 + t1139;
t1280 = t1284 ^ 2;
t1468 = (qJD(1) * (t1286 ^ 2 + t1280) + qJD(2) * t1286) * t1284;
t1390 = -t1292 * t1087 - t1287 * t1411;
t927 = (qJD(6) - t1204) * t1122 + t1390;
t1067 = (qJD(4) + t1260) * t1210 + t1388;
t1164 = (qJD(3) + t1268) * t1242 + t1386;
t1467 = qJD(1) ^ 2;
t1116 = t1120 ^ 2;
t1117 = t1122 ^ 2;
t1466 = t1184 ^ 2;
t1181 = t1186 ^ 2;
t1203 = t1204 ^ 2;
t1465 = t1208 ^ 2;
t1207 = t1210 ^ 2;
t1464 = t1241 ^ 2;
t1240 = t1242 ^ 2;
t1463 = t1260 ^ 2;
t1263 = t1268 ^ 2;
t1462 = pkin(2) * t1290;
t1461 = pkin(2) * t1295;
t1460 = pkin(4) * t1288;
t1459 = pkin(8) * t1284;
t1458 = t1286 * g(3);
t1144 = pkin(4) * t1208 - qJ(5) * t1210;
t1291 = sin(qJ(1));
t1296 = cos(qJ(1));
t1271 = g(1) * t1296 + t1291 * g(2);
t1245 = -pkin(1) * t1467 + pkin(8) * t1408 - t1271;
t1270 = t1291 * g(1) - t1296 * g(2);
t1302 = qJDD(1) * pkin(1) + t1459 * t1467 + t1270;
t1301 = t1286 * t1302;
t1202 = -g(3) * t1418 + t1295 * t1245 + t1290 * t1301;
t1382 = -pkin(9) * t1290 - t1461;
t1332 = t1467 * t1382;
t1299 = t1280 * t1295 * t1332 - pkin(2) * t1383 + pkin(9) * t1384 + t1202;
t1327 = t1295 * t1354;
t1328 = t1290 * t1354;
t1300 = -t1458 - t1248 * pkin(9) - t1410 * pkin(2) + (pkin(2) * t1328 - pkin(9) * t1327 - t1302) * t1284;
t1086 = t1289 * t1300 + t1294 * t1299;
t1219 = -pkin(3) * t1268 - pkin(10) * t1242;
t1025 = -pkin(3) * t1464 - pkin(10) * t1324 + t1268 * t1219 + t1086;
t1085 = t1289 * t1299 - t1294 * t1300;
t1298 = pkin(3) * t1333 + pkin(10) * t1169 - t1085;
t943 = t1293 * t1025 + t1288 * t1298;
t903 = -pkin(4) * t1463 - qJ(5) * t1244 - t1144 * t1208 + t943;
t1387 = t1290 * t1245 - t1295 * t1301;
t1156 = -t1384 * pkin(2) - t1383 * pkin(9) + (t1295 * g(3) + t1332 * t1418) * t1284 + t1387;
t1065 = t1324 * pkin(3) - t1464 * pkin(10) + t1242 * t1219 + t1156;
t940 = -t1069 * qJ(5) + (-t1210 * t1260 + t1111) * pkin(4) + t1065;
t834 = 0.2e1 * qJD(5) * t1186 + t1283 * t903 - t1285 * t940;
t789 = t1469 * pkin(5) + pkin(11) * t1031 - t834;
t1133 = pkin(5) * t1208 - pkin(11) * t1186;
t835 = -0.2e1 * qJD(5) * t1184 + t1283 * t940 + t1285 * t903;
t806 = -pkin(5) * t1466 + pkin(11) * t1087 - t1133 * t1208 + t835;
t738 = t1287 * t789 + t1292 * t806;
t737 = t1287 * t806 - t1292 * t789;
t689 = t1287 * t738 - t1292 * t737;
t1457 = t1283 * t689;
t942 = t1025 * t1288 - t1293 * t1298;
t902 = t1244 * pkin(4) - t1463 * qJ(5) + t1144 * t1210 + qJDD(5) + t942;
t1456 = t1283 * t902;
t1455 = t1285 * t689;
t1454 = t1285 * t902;
t872 = -t1087 * pkin(5) - pkin(11) * t1466 + t1133 * t1186 + t902;
t1453 = t1287 * t872;
t989 = t1045 + t1307;
t1452 = t1287 * t989;
t865 = t1288 * t943 - t1293 * t942;
t1451 = t1289 * t865;
t1450 = t1292 * t872;
t1449 = t1292 * t989;
t1448 = t1294 * t865;
t1039 = t1111 + t1126;
t1445 = t1039 * t1283;
t1444 = t1039 * t1285;
t1443 = t1065 * t1288;
t1442 = t1065 * t1293;
t1441 = t1111 * t1288;
t1134 = t1244 - t1431;
t1440 = t1134 * t1288;
t1439 = t1134 * t1293;
t1438 = t1156 * t1289;
t1437 = t1156 * t1294;
t1436 = t1186 * t1208;
t1190 = t1392 + t1428;
t1435 = t1190 * t1289;
t1434 = t1190 * t1294;
t1433 = t1204 * t1287;
t1432 = t1204 * t1292;
t1430 = t1208 * t1283;
t1429 = t1208 * t1285;
t1419 = t1280 * t1467;
t1267 = t1295 * t1290 * t1419;
t1246 = -t1267 + t1384;
t1427 = t1246 * t1290;
t1426 = t1246 * t1295;
t1247 = t1267 + t1384;
t1425 = t1247 * t1290;
t1424 = t1247 * t1295;
t1423 = t1260 * t1288;
t1422 = t1260 * t1293;
t1421 = t1268 * t1289;
t1420 = t1268 * t1294;
t1229 = t1284 * t1302 + t1458;
t1416 = t1290 * t1229;
t1415 = t1295 * t1229;
t1281 = t1290 ^ 2;
t1282 = t1295 ^ 2;
t1409 = t1281 + t1282;
t1406 = -pkin(4) * t1293 - pkin(3);
t1403 = t1288 * t1045;
t1402 = t1293 * t1045;
t1401 = t1288 * t1126;
t1400 = t1293 * t1126;
t1399 = t1290 * t1431;
t1398 = t1295 * t1431;
t1397 = t1290 * t1428;
t1396 = t1295 * t1428;
t1395 = t1281 * t1419;
t1394 = t1282 * t1419;
t690 = t1287 * t737 + t1292 * t738;
t866 = t1288 * t942 + t1293 * t943;
t1005 = t1085 * t1289 + t1294 * t1086;
t1231 = -t1270 * t1291 - t1296 * t1271;
t1265 = qJDD(1) * t1296 - t1291 * t1467;
t1381 = -pkin(7) * t1265 - g(3) * t1291;
t1237 = -t1395 - t1383;
t1211 = -t1237 * t1290 - t1426;
t1380 = pkin(8) * t1211 - t1416;
t1252 = -t1383 - t1394;
t1216 = t1252 * t1295 - t1425;
t1379 = pkin(8) * t1216 + t1415;
t766 = t1283 * t835 - t1285 * t834;
t767 = t1283 * t834 + t1285 * t835;
t652 = t1285 * t690 - t1457;
t647 = t1288 * t652 - t1293 * t872;
t648 = t1288 * t872 + t1293 * t652;
t623 = -t1289 * t647 + t1294 * t648;
t651 = t1283 * t690 + t1455;
t1378 = t1290 * t623 - t1295 * t651;
t746 = t1288 * t767 - t1293 * t902;
t747 = t1288 * t902 + t1293 * t767;
t694 = -t1289 * t746 + t1294 * t747;
t1377 = t1290 * t694 - t1295 * t766;
t931 = -t1093 + t1306;
t853 = -t1287 * t927 + t1292 * t931;
t855 = -t1287 * t931 - t1292 * t927;
t775 = -t1283 * t853 + t1285 * t855;
t998 = -t1116 - t1117;
t764 = t1288 * t775 - t1293 * t998;
t765 = t1288 * t998 + t1293 * t775;
t697 = -t1289 * t764 + t1294 * t765;
t773 = t1283 * t855 + t1285 * t853;
t1376 = t1290 * t697 - t1295 * t773;
t1044 = -t1117 + t1116;
t926 = (qJD(6) + t1204) * t1122 + t1390;
t852 = -t1287 * t926 + t1292 * t1470;
t854 = -t1287 * t1470 - t1292 * t926;
t774 = -t1283 * t852 + t1285 * t854;
t768 = t1044 * t1293 + t1288 * t774;
t769 = -t1044 * t1288 + t1293 * t774;
t702 = -t1289 * t768 + t1294 * t769;
t772 = -t1283 * t854 - t1285 * t852;
t1375 = t1290 * t702 + t1295 * t772;
t1016 = -t1203 - t1116;
t910 = t1016 * t1287 + t1476;
t911 = t1016 * t1292 - t1477;
t837 = -t1283 * t910 + t1285 * t911;
t784 = t1288 * t837 - t1293 * t926;
t785 = t1288 * t926 + t1293 * t837;
t731 = -t1289 * t784 + t1294 * t785;
t836 = t1283 * t911 + t1285 * t910;
t1374 = t1290 * t731 - t1295 * t836;
t1052 = -t1117 - t1203;
t933 = t1052 * t1292 - t1452;
t934 = -t1052 * t1287 - t1449;
t858 = -t1283 * t933 + t1285 * t934;
t793 = t1288 * t858 - t1293 * t1470;
t794 = t1288 * t1470 + t1293 * t858;
t735 = -t1289 * t793 + t1294 * t794;
t857 = t1283 * t934 + t1285 * t933;
t1373 = t1290 * t735 - t1295 * t857;
t1090 = -t1117 + t1203;
t945 = t1090 * t1292 + t1477;
t947 = -t1090 * t1287 + t1476;
t870 = -t1283 * t945 + t1285 * t947;
t802 = t1288 * t870 + t1293 * t931;
t804 = -t1288 * t931 + t1293 * t870;
t744 = -t1289 * t802 + t1294 * t804;
t868 = -t1283 * t947 - t1285 * t945;
t1372 = t1290 * t744 + t1295 * t868;
t1089 = t1116 - t1203;
t946 = t1089 * t1287 + t1449;
t948 = t1089 * t1292 - t1452;
t871 = -t1283 * t946 + t1285 * t948;
t803 = t1288 * t871 + t1293 * t927;
t805 = -t1288 * t927 + t1293 * t871;
t745 = -t1289 * t803 + t1294 * t805;
t869 = -t1283 * t948 - t1285 * t946;
t1371 = t1290 * t745 + t1295 * t869;
t963 = -qJD(6) * t1122 - t1390;
t922 = t1120 * t1433 + t1292 * t963;
t923 = t1120 * t1432 - t1287 * t963;
t850 = -t1283 * t922 + t1285 * t923;
t821 = t1288 * t850 + t1402;
t823 = t1293 * t850 - t1403;
t760 = -t1289 * t821 + t1294 * t823;
t848 = -t1283 * t923 - t1285 * t922;
t1370 = t1290 * t760 + t1295 * t848;
t924 = t1122 * t1432 - t1287 * t1306;
t925 = -t1122 * t1433 - t1292 * t1306;
t851 = -t1283 * t924 + t1285 * t925;
t822 = t1288 * t851 - t1402;
t824 = t1293 * t851 + t1403;
t761 = -t1289 * t822 + t1294 * t824;
t849 = -t1283 * t925 - t1285 * t924;
t1369 = t1290 * t761 + t1295 * t849;
t1006 = (-t1120 * t1287 - t1122 * t1292) * t1204;
t1007 = (-t1120 * t1292 + t1122 * t1287) * t1204;
t915 = -t1006 * t1283 + t1007 * t1285;
t889 = t1288 * t915 - t1293 * t1307;
t890 = t1288 * t1307 + t1293 * t915;
t813 = -t1289 * t889 + t1294 * t890;
t914 = -t1006 * t1285 - t1007 * t1283;
t1368 = t1290 * t813 + t1295 * t914;
t1077 = t1181 + t1466;
t1026 = -t1087 - t1436;
t954 = -t1026 * t1285 - t1031 * t1283;
t904 = t1077 * t1293 + t1288 * t954;
t905 = -t1077 * t1288 + t1293 * t954;
t829 = -t1289 * t904 + t1294 * t905;
t952 = -t1026 * t1283 + t1031 * t1285;
t1367 = t1290 * t829 - t1295 * t952;
t1027 = t1087 - t1436;
t1099 = -t1465 - t1466;
t969 = t1099 * t1285 - t1479;
t908 = t1027 * t1293 + t1288 * t969;
t909 = -t1027 * t1288 + t1293 * t969;
t833 = -t1289 * t908 + t1294 * t909;
t968 = t1099 * t1283 + t1478;
t1366 = t1290 * t833 - t1295 * t968;
t1110 = -t1181 - t1465;
t974 = -t1110 * t1283 - t1444;
t912 = t1030 * t1293 + t1288 * t974;
t913 = -t1030 * t1288 + t1293 * t974;
t839 = -t1289 * t912 + t1294 * t913;
t973 = t1110 * t1285 - t1445;
t1365 = t1290 * t839 - t1295 * t973;
t1125 = -t1181 + t1466;
t953 = t1027 * t1285 + t1030 * t1283;
t916 = t1125 * t1293 + t1288 * t953;
t917 = -t1125 * t1288 + t1293 * t953;
t842 = -t1289 * t916 + t1294 * t917;
t951 = -t1027 * t1283 + t1030 * t1285;
t1364 = t1290 * t842 + t1295 * t951;
t1138 = -t1181 + t1465;
t996 = -t1138 * t1283 + t1478;
t918 = t1031 * t1293 + t1288 * t996;
t920 = -t1031 * t1288 + t1293 * t996;
t846 = -t1289 * t918 + t1294 * t920;
t994 = -t1138 * t1285 - t1479;
t1363 = t1290 * t846 + t1295 * t994;
t1137 = -t1465 + t1466;
t997 = t1137 * t1285 - t1445;
t919 = t1026 * t1293 + t1288 * t997;
t921 = -t1026 * t1288 + t1293 * t997;
t847 = -t1289 * t919 + t1294 * t921;
t995 = -t1137 * t1283 - t1444;
t1362 = t1290 * t847 + t1295 * t995;
t1020 = -t1087 * t1285 - t1184 * t1430;
t1021 = -t1087 * t1283 + t1184 * t1429;
t984 = t1021 * t1288 + t1400;
t986 = t1021 * t1293 - t1401;
t897 = -t1289 * t984 + t1294 * t986;
t1361 = t1020 * t1295 + t1290 * t897;
t1022 = -t1186 * t1429 + t1283 * t1411;
t1023 = -t1186 * t1430 - t1285 * t1411;
t985 = t1023 * t1288 - t1400;
t987 = t1023 * t1293 + t1401;
t898 = -t1289 * t985 + t1294 * t987;
t1360 = t1022 * t1295 + t1290 * t898;
t1055 = (t1184 * t1283 + t1186 * t1285) * t1208;
t1056 = (-t1184 * t1285 + t1186 * t1283) * t1208;
t1108 = t1293 * t1111;
t1000 = t1056 * t1288 - t1108;
t1001 = t1056 * t1293 + t1441;
t907 = -t1000 * t1289 + t1001 * t1294;
t1359 = t1055 * t1295 + t1290 * t907;
t782 = t1294 * t866 - t1451;
t1358 = -t1065 * t1295 + t1290 * t782;
t1066 = (qJD(4) - t1260) * t1210 + t1388;
t1141 = -t1465 - t1463;
t1057 = t1141 * t1288 + t1473;
t1058 = t1141 * t1293 - t1475;
t972 = -t1057 * t1289 + t1058 * t1294;
t1357 = -t1066 * t1295 + t1290 * t972;
t1113 = -t1465 - t1207;
t1071 = t1193 - t1112;
t981 = -t1067 * t1288 + t1071 * t1293;
t983 = -t1067 * t1293 - t1071 * t1288;
t894 = -t1289 * t981 + t1294 * t983;
t1356 = -t1113 * t1295 + t1290 * t894;
t1149 = -t1207 + t1465;
t980 = -t1066 * t1288 + t1069 * t1293;
t982 = -t1066 * t1293 - t1069 * t1288;
t893 = -t1289 * t980 + t1294 * t982;
t1355 = t1149 * t1295 + t1290 * t893;
t1353 = t1280 * t1290 * t1393;
t1174 = -t1207 - t1463;
t1081 = t1174 * t1293 + t1440;
t1082 = -t1174 * t1288 + t1439;
t1003 = -t1081 * t1289 + t1082 * t1294;
t1352 = t1003 * t1290 - t1069 * t1295;
t1351 = t1005 * t1290 - t1156 * t1295;
t1189 = -t1207 + t1463;
t1095 = t1189 * t1293 + t1475;
t1097 = -t1189 * t1288 + t1473;
t1010 = -t1095 * t1289 + t1097 * t1294;
t1350 = t1010 * t1290 + t1071 * t1295;
t1188 = t1465 - t1463;
t1096 = t1188 * t1288 - t1439;
t1098 = t1188 * t1293 + t1440;
t1011 = -t1096 * t1289 + t1098 * t1294;
t1349 = t1011 * t1290 + t1067 * t1295;
t1129 = (t1208 * t1288 + t1210 * t1293) * t1260;
t1130 = (t1208 * t1293 - t1210 * t1288) * t1260;
t1050 = -t1129 * t1289 + t1130 * t1294;
t1348 = t1050 * t1290 + t1244 * t1295;
t1004 = -t1085 * t1294 + t1086 * t1289;
t1165 = (-qJD(3) + t1268) * t1242 - t1386;
t1102 = t1165 * t1294 - t1167 * t1289;
t1212 = -t1240 + t1464;
t1347 = t1102 * t1290 + t1212 * t1295;
t1103 = -t1164 * t1294 - t1169 * t1289;
t1187 = t1240 + t1464;
t1346 = t1103 * t1290 + t1187 * t1295;
t1200 = -t1263 - t1464;
t1132 = t1200 * t1294 - t1474;
t1345 = t1132 * t1290 + t1165 * t1295;
t1213 = -t1240 - t1263;
t1143 = -t1213 * t1289 + t1434;
t1344 = t1143 * t1290 - t1167 * t1295;
t1221 = -t1240 + t1263;
t1147 = -t1221 * t1289 + t1472;
t1343 = t1147 * t1290 + t1169 * t1295;
t1220 = -t1263 + t1464;
t1148 = t1220 * t1294 + t1435;
t1342 = t1148 * t1290 + t1164 * t1295;
t1201 = g(3) * t1417 + t1387;
t1341 = -t1295 * t1201 + t1290 * t1202;
t1140 = t1201 * t1290 + t1202 * t1295;
t1256 = t1284 * t1327;
t1223 = t1256 + t1248;
t1255 = t1284 * t1328;
t1226 = -t1255 + t1410;
t1340 = t1223 * t1295 + t1226 * t1290;
t1224 = -t1256 + t1248;
t1225 = t1255 + t1410;
t1339 = -t1224 * t1295 + t1225 * t1290;
t1338 = t1237 * t1295 - t1427;
t1251 = -t1383 + t1394;
t1337 = t1251 * t1290 + t1426;
t1250 = t1383 - t1395;
t1336 = t1250 * t1295 + t1425;
t1335 = t1252 * t1290 + t1424;
t1230 = t1270 * t1296 - t1291 * t1271;
t1334 = t1284 * t1384;
t1059 = -t1208 * t1423 - t1108;
t1060 = -t1208 * t1422 + t1441;
t977 = -t1059 * t1289 + t1060 * t1294;
t1331 = t1290 * t977 + t1398;
t1061 = t1112 * t1288 - t1210 * t1422;
t1062 = t1112 * t1293 + t1210 * t1423;
t978 = -t1061 * t1289 + t1062 * t1294;
t1330 = t1290 * t978 - t1398;
t1159 = t1241 * t1420 + t1289 * t1324;
t1326 = t1159 * t1290 - t1396;
t1161 = t1197 * t1294 + t1242 * t1421;
t1325 = t1161 * t1290 + t1396;
t682 = -pkin(5) * t872 + pkin(11) * t690;
t626 = -pkin(11) * t1455 - qJ(5) * t651 - t1283 * t682;
t639 = -pkin(4) * t651 - pkin(5) * t689;
t608 = -pkin(3) * t651 + pkin(10) * t648 + t1288 * t626 + t1293 * t639;
t613 = -pkin(10) * t647 - t1288 * t639 + t1293 * t626;
t622 = t1289 * t648 + t1294 * t647;
t600 = -pkin(9) * t622 - t1289 * t608 + t1294 * t613;
t609 = -pkin(2) * t622 - pkin(3) * t647 + pkin(4) * t872 + pkin(11) * t1457 - qJ(5) * t652 - t1285 * t682;
t618 = t1290 * t651 + t1295 * t623;
t1323 = pkin(8) * t618 + t1290 * t600 + t1295 * t609;
t677 = -pkin(5) * t998 + pkin(11) * t855 + t690;
t679 = -pkin(11) * t853 - t689;
t641 = -qJ(5) * t773 - t1283 * t677 + t1285 * t679;
t733 = -pkin(4) * t773 - pkin(5) * t853;
t628 = -pkin(3) * t773 + pkin(10) * t765 + t1288 * t641 + t1293 * t733;
t633 = -pkin(10) * t764 - t1288 * t733 + t1293 * t641;
t696 = t1289 * t765 + t1294 * t764;
t616 = -pkin(9) * t696 - t1289 * t628 + t1294 * t633;
t629 = -pkin(2) * t696 - pkin(3) * t764 + pkin(4) * t998 - qJ(5) * t775 - t1283 * t679 - t1285 * t677;
t683 = t1290 * t773 + t1295 * t697;
t1322 = pkin(8) * t683 + t1290 * t616 + t1295 * t629;
t698 = -pkin(4) * t836 - pkin(5) * t910 + t737;
t777 = -pkin(5) * t926 + pkin(11) * t911 - t1450;
t797 = -pkin(11) * t910 + t1453;
t700 = -qJ(5) * t836 - t1283 * t777 + t1285 * t797;
t653 = -pkin(3) * t836 + pkin(10) * t785 + t1288 * t700 + t1293 * t698;
t661 = -pkin(10) * t784 - t1288 * t698 + t1293 * t700;
t730 = t1289 * t785 + t1294 * t784;
t621 = -pkin(9) * t730 - t1289 * t653 + t1294 * t661;
t663 = -pkin(2) * t730 - pkin(3) * t784 + pkin(4) * t926 - qJ(5) * t837 - t1283 * t797 - t1285 * t777;
t706 = t1290 * t836 + t1295 * t731;
t1321 = pkin(8) * t706 + t1290 * t621 + t1295 * t663;
t703 = -pkin(4) * t857 - pkin(5) * t933 + t738;
t778 = -pkin(5) * t1470 + pkin(11) * t934 + t1453;
t809 = -pkin(11) * t933 + t1450;
t708 = -qJ(5) * t857 - t1283 * t778 + t1285 * t809;
t657 = -pkin(3) * t857 + pkin(10) * t794 + t1288 * t708 + t1293 * t703;
t662 = -pkin(10) * t793 - t1288 * t703 + t1293 * t708;
t734 = t1289 * t794 + t1294 * t793;
t627 = -pkin(9) * t734 - t1289 * t657 + t1294 * t662;
t667 = -pkin(2) * t734 - pkin(3) * t793 + pkin(4) * t1470 - qJ(5) * t858 - t1283 * t809 - t1285 * t778;
t715 = t1290 * t857 + t1295 * t735;
t1320 = pkin(8) * t715 + t1290 * t627 + t1295 * t667;
t665 = pkin(10) * t747 + (-qJ(5) * t1288 + t1406) * t766;
t675 = -pkin(10) * t746 + (-qJ(5) * t1293 + t1460) * t766;
t693 = t1289 * t747 + t1294 * t746;
t630 = -pkin(9) * t693 - t1289 * t665 + t1294 * t675;
t656 = -pkin(2) * t693 - pkin(3) * t746 + pkin(4) * t902 - qJ(5) * t767;
t669 = t1290 * t766 + t1295 * t694;
t1319 = pkin(8) * t669 + t1290 * t630 + t1295 * t656;
t752 = -qJ(5) * t952 - t766;
t709 = pkin(10) * t905 + t1288 * t752 + t1406 * t952;
t722 = -pkin(10) * t904 + t1293 * t752 + t1460 * t952;
t828 = t1289 * t905 + t1294 * t904;
t668 = -pkin(9) * t828 - t1289 * t709 + t1294 * t722;
t699 = -pkin(2) * t828 - pkin(3) * t904 - pkin(4) * t1077 - qJ(5) * t954 - t767;
t786 = t1290 * t952 + t1295 * t829;
t1318 = pkin(8) * t786 + t1290 * t668 + t1295 * t699;
t796 = -pkin(4) * t968 + t834;
t863 = -qJ(5) * t968 + t1456;
t727 = -pkin(3) * t968 + pkin(10) * t909 + t1288 * t863 + t1293 * t796;
t739 = -pkin(10) * t908 - t1288 * t796 + t1293 * t863;
t832 = t1289 * t909 + t1294 * t908;
t674 = -pkin(9) * t832 - t1289 * t727 + t1294 * t739;
t741 = -pkin(2) * t832 - pkin(3) * t908 - pkin(4) * t1027 - qJ(5) * t969 + t1454;
t795 = t1290 * t968 + t1295 * t833;
t1317 = pkin(8) * t795 + t1290 * t674 + t1295 * t741;
t799 = -pkin(4) * t973 + t835;
t867 = -qJ(5) * t973 + t1454;
t728 = -pkin(3) * t973 + pkin(10) * t913 + t1288 * t867 + t1293 * t799;
t740 = -pkin(10) * t912 - t1288 * t799 + t1293 * t867;
t838 = t1289 * t913 + t1294 * t912;
t676 = -pkin(9) * t838 - t1289 * t728 + t1294 * t740;
t749 = -pkin(2) * t838 - pkin(3) * t912 - pkin(4) * t1030 - qJ(5) * t974 - t1456;
t800 = t1290 * t973 + t1295 * t839;
t1316 = pkin(8) * t800 + t1290 * t676 + t1295 * t749;
t781 = t1289 * t866 + t1448;
t840 = -pkin(3) * t1065 + pkin(10) * t866;
t718 = -pkin(9) * t781 - pkin(10) * t1448 - t1289 * t840;
t748 = -pkin(2) * t781 - pkin(3) * t865;
t776 = t1065 * t1290 + t1295 * t782;
t1315 = pkin(8) * t776 + t1290 * t718 + t1295 * t748;
t811 = -pkin(3) * t1113 + pkin(10) * t983 + t866;
t820 = -pkin(10) * t981 - t865;
t892 = t1289 * t983 + t1294 * t981;
t729 = -pkin(9) * t892 - t1289 * t811 + t1294 * t820;
t861 = -pkin(2) * t892 - pkin(3) * t981;
t880 = t1113 * t1290 + t1295 * t894;
t1314 = pkin(8) * t880 + t1290 * t729 + t1295 * t861;
t935 = -pkin(3) * t1066 + pkin(10) * t1058 - t1442;
t971 = t1057 * t1294 + t1058 * t1289;
t979 = -pkin(10) * t1057 + t1443;
t830 = -pkin(9) * t971 - t1289 * t935 + t1294 * t979;
t862 = -pkin(2) * t971 - pkin(3) * t1057 + t942;
t932 = t1066 * t1290 + t1295 * t972;
t1313 = pkin(8) * t932 + t1290 * t830 + t1295 * t862;
t1002 = t1081 * t1294 + t1082 * t1289;
t944 = -pkin(3) * t1069 + pkin(10) * t1082 + t1443;
t993 = -pkin(10) * t1081 + t1442;
t843 = -pkin(9) * t1002 - t1289 * t944 + t1294 * t993;
t873 = -pkin(2) * t1002 - pkin(3) * t1081 + t943;
t950 = t1003 * t1295 + t1069 * t1290;
t1312 = pkin(8) * t950 + t1290 * t843 + t1295 * t873;
t1131 = t1200 * t1289 + t1472;
t1024 = -pkin(2) * t1131 + t1085;
t1072 = -pkin(9) * t1131 + t1438;
t1075 = t1132 * t1295 - t1165 * t1290;
t1310 = pkin(8) * t1075 + t1024 * t1295 + t1072 * t1290;
t1142 = t1213 * t1294 + t1435;
t1034 = -pkin(2) * t1142 + t1086;
t1076 = -pkin(9) * t1142 + t1437;
t1078 = t1143 * t1295 + t1167 * t1290;
t1309 = pkin(8) * t1078 + t1034 * t1295 + t1076 * t1290;
t1176 = t1224 * t1290 + t1225 * t1295;
t1308 = pkin(8) * t1176 + t1140;
t1183 = (-t1241 * t1294 - t1242 * t1289) * t1268;
t1305 = t1290 * t1183 + t1295 * t1392;
t1051 = t1103 * t1295 - t1187 * t1290;
t1101 = -t1164 * t1289 + t1169 * t1294;
t959 = -pkin(9) * t1101 - t1004;
t1304 = pkin(8) * t1051 - t1101 * t1461 + t1290 * t959;
t967 = t1005 * t1295 + t1156 * t1290;
t1303 = pkin(8) * t967 + t1004 * t1382;
t1264 = t1291 * qJDD(1) + t1296 * t1467;
t1254 = t1409 * t1419;
t1253 = (t1281 - t1282) * t1419;
t1249 = -pkin(7) * t1264 + g(3) * t1296;
t1228 = t1409 * t1329;
t1222 = (t1407 + (0.2e1 * qJD(2) + t1447) * t1446) * t1284;
t1218 = t1295 * t1248 - t1281 * t1329;
t1217 = -t1282 * t1329 - t1290 * t1410;
t1215 = t1251 * t1295 - t1427;
t1214 = -t1250 * t1290 + t1424;
t1199 = (t1286 * t1248 + t1446 * t1468) * t1290;
t1198 = (-qJD(1) * t1290 * t1468 + t1286 * t1410) * t1295;
t1182 = (-t1241 * t1289 + t1242 * t1294) * t1268;
t1177 = -t1223 * t1290 + t1226 * t1295;
t1173 = t1284 * t1226 + t1286 * t1335;
t1172 = -t1284 * t1225 + t1286 * t1337;
t1171 = -t1284 * t1224 + t1286 * t1336;
t1170 = -t1286 * t1226 + t1284 * t1335;
t1163 = -t1284 * t1222 + t1286 * t1338;
t1162 = t1286 * t1222 + t1284 * t1338;
t1160 = t1197 * t1289 - t1242 * t1420;
t1158 = t1241 * t1421 - t1294 * t1324;
t1157 = t1295 * t1183 - t1290 * t1392;
t1155 = -t1284 * t1253 + t1286 * t1340;
t1154 = t1284 * t1254 + t1286 * t1339;
t1153 = -t1286 * t1254 + t1284 * t1339;
t1146 = t1220 * t1289 - t1434;
t1145 = t1221 * t1294 + t1474;
t1128 = -t1291 * t1173 + t1216 * t1296;
t1127 = t1173 * t1296 + t1291 * t1216;
t1124 = t1161 * t1295 - t1397;
t1123 = t1159 * t1295 + t1397;
t1119 = -t1291 * t1163 + t1211 * t1296;
t1118 = t1163 * t1296 + t1291 * t1211;
t1115 = t1284 * t1229 + t1286 * t1341;
t1114 = -t1286 * t1229 + t1284 * t1341;
t1106 = -t1284 * t1182 + t1286 * t1305;
t1105 = -t1291 * t1154 + t1176 * t1296;
t1104 = t1154 * t1296 + t1291 * t1176;
t1100 = t1165 * t1289 + t1167 * t1294;
t1092 = t1148 * t1295 - t1164 * t1290;
t1091 = t1147 * t1295 - t1169 * t1290;
t1079 = -t1416 + (-t1170 * t1284 - t1173 * t1286) * pkin(8);
t1074 = -t1415 + (-t1162 * t1284 - t1163 * t1286) * pkin(8);
t1073 = -pkin(1) * t1170 + t1284 * t1201 + t1286 * t1379;
t1064 = t1102 * t1295 - t1212 * t1290;
t1063 = -pkin(1) * t1162 + t1284 * t1202 + t1286 * t1380;
t1054 = -t1284 * t1160 + t1286 * t1325;
t1053 = -t1284 * t1158 + t1286 * t1326;
t1049 = t1129 * t1294 + t1130 * t1289;
t1048 = pkin(8) * t1140 * t1286 - pkin(1) * t1114;
t1047 = -t1291 * t1115 + t1140 * t1296;
t1046 = t1115 * t1296 + t1291 * t1140;
t1043 = t1050 * t1295 - t1244 * t1290;
t1042 = -pkin(1) * t1153 + t1286 * t1308;
t1041 = -pkin(2) * t1167 + pkin(9) * t1143 + t1438;
t1037 = -t1284 * t1146 + t1286 * t1342;
t1036 = -t1284 * t1145 + t1286 * t1343;
t1035 = (-t1114 * t1284 - t1115 * t1286) * pkin(8);
t1033 = pkin(2) * t1165 + pkin(9) * t1132 - t1437;
t1032 = (-t1153 * t1284 - t1154 * t1286) * pkin(8) - t1341;
t1018 = -t1284 * t1142 + t1286 * t1344;
t1017 = t1286 * t1142 + t1284 * t1344;
t1015 = -t1284 * t1131 + t1286 * t1345;
t1014 = t1286 * t1131 + t1284 * t1345;
t1009 = t1096 * t1294 + t1098 * t1289;
t1008 = t1095 * t1294 + t1097 * t1289;
t999 = -t1284 * t1100 + t1286 * t1347;
t992 = -t1284 * t1101 + t1286 * t1346;
t991 = t1286 * t1101 + t1284 * t1346;
t976 = t1061 * t1294 + t1062 * t1289;
t975 = t1059 * t1294 + t1060 * t1289;
t970 = -pkin(2) * t1156 + pkin(9) * t1005;
t966 = -t1291 * t1018 + t1078 * t1296;
t965 = t1018 * t1296 + t1291 * t1078;
t962 = -t1284 * t1049 + t1286 * t1348;
t961 = -t1291 * t1015 + t1075 * t1296;
t960 = t1015 * t1296 + t1291 * t1075;
t958 = t1295 * t978 + t1399;
t957 = t1295 * t977 - t1399;
t956 = t1011 * t1295 - t1067 * t1290;
t955 = t1010 * t1295 - t1071 * t1290;
t949 = pkin(2) * t1187 + pkin(9) * t1103 + t1005;
t937 = t1051 * t1296 - t1291 * t992;
t936 = t1291 * t1051 + t1296 * t992;
t906 = t1000 * t1294 + t1001 * t1289;
t900 = -t1284 * t1004 + t1286 * t1351;
t899 = t1286 * t1004 + t1284 * t1351;
t896 = t1289 * t987 + t1294 * t985;
t895 = t1289 * t986 + t1294 * t984;
t891 = t1289 * t982 + t1294 * t980;
t888 = -t1284 * t1009 + t1286 * t1349;
t887 = -t1284 * t1008 + t1286 * t1350;
t886 = -t1149 * t1290 + t1295 * t893;
t885 = -t1284 * t1002 + t1286 * t1352;
t884 = t1286 * t1002 + t1284 * t1352;
t883 = -t1284 * t976 + t1286 * t1330;
t882 = -t1284 * t975 + t1286 * t1331;
t881 = -t1055 * t1290 + t1295 * t907;
t879 = -t1290 * t1034 + t1295 * t1076 + (-t1017 * t1284 - t1018 * t1286) * pkin(8);
t878 = -t1284 * t971 + t1286 * t1357;
t877 = t1284 * t1357 + t1286 * t971;
t876 = -t1290 * t1024 + t1295 * t1072 + (-t1014 * t1284 - t1015 * t1286) * pkin(8);
t875 = -t1022 * t1290 + t1295 * t898;
t874 = -t1020 * t1290 + t1295 * t897;
t864 = -pkin(1) * t1017 - t1284 * t1041 + t1286 * t1309;
t860 = -t1291 * t900 + t1296 * t967;
t859 = t1291 * t967 + t1296 * t900;
t856 = -pkin(1) * t1014 - t1284 * t1033 + t1286 * t1310;
t845 = t1289 * t921 + t1294 * t919;
t844 = t1289 * t920 + t1294 * t918;
t841 = t1289 * t917 + t1294 * t916;
t831 = t1101 * t1462 + t1295 * t959 + (-t1284 * t991 - t1286 * t992) * pkin(8);
t827 = -t1291 * t885 + t1296 * t950;
t826 = t1291 * t950 + t1296 * t885;
t825 = -pkin(2) * t1069 + pkin(9) * t1003 + t1289 * t993 + t1294 * t944;
t819 = -pkin(2) * t1066 + pkin(9) * t972 + t1289 * t979 + t1294 * t935;
t818 = -t1291 * t878 + t1296 * t932;
t817 = t1291 * t932 + t1296 * t878;
t816 = -t1284 * t906 + t1286 * t1359;
t815 = -t1290 * t995 + t1295 * t847;
t814 = -t1290 * t994 + t1295 * t846;
t812 = t1289 * t890 + t1294 * t889;
t810 = -t1284 * t891 + t1286 * t1355;
t808 = -t1284 * t892 + t1286 * t1356;
t807 = t1284 * t1356 + t1286 * t892;
t798 = -pkin(1) * t991 - t1284 * t949 + t1286 * t1304;
t792 = -t1284 * t896 + t1286 * t1360;
t791 = -t1284 * t895 + t1286 * t1361;
t790 = -t1290 * t951 + t1295 * t842;
t783 = (-pkin(9) * t1295 + t1462) * t1004 + (-t1284 * t899 - t1286 * t900) * pkin(8);
t780 = -pkin(1) * t899 - t1284 * t970 + t1286 * t1303;
t779 = -t1290 * t914 + t1295 * t813;
t771 = -t1291 * t808 + t1296 * t880;
t770 = t1291 * t880 + t1296 * t808;
t763 = -t1284 * t845 + t1286 * t1362;
t762 = -t1284 * t844 + t1286 * t1363;
t759 = t1289 * t824 + t1294 * t822;
t758 = t1289 * t823 + t1294 * t821;
t757 = -t1284 * t838 + t1286 * t1365;
t756 = t1284 * t1365 + t1286 * t838;
t755 = -t1284 * t841 + t1286 * t1364;
t754 = -t1284 * t832 + t1286 * t1366;
t753 = t1284 * t1366 + t1286 * t832;
t751 = -t1284 * t828 + t1286 * t1367;
t750 = t1284 * t1367 + t1286 * t828;
t743 = t1289 * t805 + t1294 * t803;
t742 = t1289 * t804 + t1294 * t802;
t732 = -t1284 * t812 + t1286 * t1368;
t726 = -pkin(2) * t1113 + pkin(9) * t894 + t1289 * t820 + t1294 * t811;
t725 = -t1290 * t873 + t1295 * t843 + (-t1284 * t884 - t1286 * t885) * pkin(8);
t724 = -t1290 * t849 + t1295 * t761;
t723 = -t1290 * t848 + t1295 * t760;
t721 = -t1290 * t869 + t1295 * t745;
t720 = -t1290 * t868 + t1295 * t744;
t719 = -t1290 * t862 + t1295 * t830 + (-t1284 * t877 - t1286 * t878) * pkin(8);
t717 = -t1284 * t781 + t1286 * t1358;
t716 = t1284 * t1358 + t1286 * t781;
t714 = -t1291 * t757 + t1296 * t800;
t713 = t1291 * t800 + t1296 * t757;
t712 = -pkin(2) * t1065 + pkin(9) * t782 - pkin(10) * t1451 + t1294 * t840;
t711 = -t1291 * t754 + t1296 * t795;
t710 = t1291 * t795 + t1296 * t754;
t707 = -pkin(1) * t884 - t1284 * t825 + t1286 * t1312;
t705 = -t1291 * t751 + t1296 * t786;
t704 = t1291 * t786 + t1296 * t751;
t701 = t1289 * t769 + t1294 * t768;
t695 = -pkin(1) * t877 - t1284 * t819 + t1286 * t1313;
t692 = -t1291 * t717 + t1296 * t776;
t691 = t1291 * t776 + t1296 * t717;
t688 = -t1284 * t759 + t1286 * t1369;
t687 = -t1284 * t758 + t1286 * t1370;
t686 = -t1290 * t772 + t1295 * t702;
t685 = -t1284 * t743 + t1286 * t1371;
t684 = -t1284 * t742 + t1286 * t1372;
t681 = -t1284 * t734 + t1286 * t1373;
t680 = t1284 * t1373 + t1286 * t734;
t678 = -t1290 * t861 + t1295 * t729 + (-t1284 * t807 - t1286 * t808) * pkin(8);
t673 = -t1284 * t730 + t1286 * t1374;
t672 = t1284 * t1374 + t1286 * t730;
t671 = -pkin(2) * t973 + pkin(9) * t839 + t1289 * t740 + t1294 * t728;
t670 = -pkin(2) * t968 + pkin(9) * t833 + t1289 * t739 + t1294 * t727;
t666 = -pkin(2) * t952 + pkin(9) * t829 + t1289 * t722 + t1294 * t709;
t664 = -pkin(1) * t807 - t1284 * t726 + t1286 * t1314;
t660 = -t1291 * t681 + t1296 * t715;
t659 = t1291 * t715 + t1296 * t681;
t658 = -t1284 * t701 + t1286 * t1375;
t655 = -t1284 * t696 + t1286 * t1376;
t654 = t1284 * t1376 + t1286 * t696;
t650 = -t1291 * t673 + t1296 * t706;
t649 = t1291 * t706 + t1296 * t673;
t646 = -t1284 * t693 + t1286 * t1377;
t645 = t1284 * t1377 + t1286 * t693;
t644 = -t1290 * t748 + t1295 * t718 + (-t1284 * t716 - t1286 * t717) * pkin(8);
t643 = -t1290 * t749 + t1295 * t676 + (-t1284 * t756 - t1286 * t757) * pkin(8);
t642 = -t1290 * t741 + t1295 * t674 + (-t1284 * t753 - t1286 * t754) * pkin(8);
t640 = -pkin(1) * t716 - t1284 * t712 + t1286 * t1315;
t638 = -t1291 * t655 + t1296 * t683;
t637 = t1291 * t683 + t1296 * t655;
t636 = -t1290 * t699 + t1295 * t668 + (-t1284 * t750 - t1286 * t751) * pkin(8);
t635 = -t1291 * t646 + t1296 * t669;
t634 = t1291 * t669 + t1296 * t646;
t632 = -pkin(1) * t756 - t1284 * t671 + t1286 * t1316;
t631 = -pkin(1) * t753 - t1284 * t670 + t1286 * t1317;
t625 = -pkin(2) * t766 + pkin(9) * t694 + t1289 * t675 + t1294 * t665;
t624 = -pkin(2) * t857 + pkin(9) * t735 + t1289 * t662 + t1294 * t657;
t620 = -pkin(2) * t836 + pkin(9) * t731 + t1289 * t661 + t1294 * t653;
t619 = -pkin(1) * t750 - t1284 * t666 + t1286 * t1318;
t617 = -t1290 * t667 + t1295 * t627 + (-t1284 * t680 - t1286 * t681) * pkin(8);
t615 = -t1290 * t663 + t1295 * t621 + (-t1284 * t672 - t1286 * t673) * pkin(8);
t614 = -pkin(2) * t773 + pkin(9) * t697 + t1289 * t633 + t1294 * t628;
t612 = -t1290 * t656 + t1295 * t630 + (-t1284 * t645 - t1286 * t646) * pkin(8);
t611 = -t1284 * t622 + t1286 * t1378;
t610 = t1284 * t1378 + t1286 * t622;
t607 = -pkin(1) * t680 - t1284 * t624 + t1286 * t1320;
t606 = -pkin(1) * t672 - t1284 * t620 + t1286 * t1321;
t605 = -pkin(1) * t645 - t1284 * t625 + t1286 * t1319;
t604 = -t1290 * t629 + t1295 * t616 + (-t1284 * t654 - t1286 * t655) * pkin(8);
t603 = -t1291 * t611 + t1296 * t618;
t602 = t1291 * t618 + t1296 * t611;
t601 = -pkin(1) * t654 - t1284 * t614 + t1286 * t1322;
t599 = -pkin(2) * t651 + pkin(9) * t623 + t1289 * t613 + t1294 * t608;
t598 = -t1290 * t609 + t1295 * t600 + (-t1284 * t610 - t1286 * t611) * pkin(8);
t597 = -pkin(1) * t610 - t1284 * t599 + t1286 * t1323;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1264, -t1265, 0, t1231, 0, 0, 0, 0, 0, 0, t1128, t1119, t1105, t1047, 0, 0, 0, 0, 0, 0, t961, t966, t937, t860, 0, 0, 0, 0, 0, 0, t818, t827, t771, t692, 0, 0, 0, 0, 0, 0, t711, t714, t705, t635, 0, 0, 0, 0, 0, 0, t650, t660, t638, t603; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1265, -t1264, 0, t1230, 0, 0, 0, 0, 0, 0, t1127, t1118, t1104, t1046, 0, 0, 0, 0, 0, 0, t960, t965, t936, t859, 0, 0, 0, 0, 0, 0, t817, t826, t770, t691, 0, 0, 0, 0, 0, 0, t710, t713, t704, t634, 0, 0, 0, 0, 0, 0, t649, t659, t637, t602; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1170, t1162, t1153, t1114, 0, 0, 0, 0, 0, 0, t1014, t1017, t991, t899, 0, 0, 0, 0, 0, 0, t877, t884, t807, t716, 0, 0, 0, 0, 0, 0, t753, t756, t750, t645, 0, 0, 0, 0, 0, 0, t672, t680, t654, t610; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1265, 0, -t1264, 0, t1381, -t1249, -t1230, -pkin(7) * t1230, -t1291 * t1199 + t1218 * t1296, -t1291 * t1155 + t1177 * t1296, -t1291 * t1171 + t1214 * t1296, -t1291 * t1198 + t1217 * t1296, -t1291 * t1172 + t1215 * t1296, t1296 * t1228 + t1291 * t1334, -pkin(7) * t1127 - t1291 * t1073 + t1079 * t1296, -pkin(7) * t1118 - t1291 * t1063 + t1074 * t1296, -pkin(7) * t1104 + t1032 * t1296 - t1291 * t1042, -pkin(7) * t1046 + t1035 * t1296 - t1291 * t1048, -t1291 * t1054 + t1124 * t1296, t1064 * t1296 - t1291 * t999, -t1291 * t1036 + t1091 * t1296, -t1291 * t1053 + t1123 * t1296, -t1291 * t1037 + t1092 * t1296, -t1291 * t1106 + t1157 * t1296, -pkin(7) * t960 - t1291 * t856 + t1296 * t876, -pkin(7) * t965 - t1291 * t864 + t1296 * t879, -pkin(7) * t936 - t1291 * t798 + t1296 * t831, -pkin(7) * t859 - t1291 * t780 + t1296 * t783, -t1291 * t883 + t1296 * t958, -t1291 * t810 + t1296 * t886, -t1291 * t887 + t1296 * t955, -t1291 * t882 + t1296 * t957, -t1291 * t888 + t1296 * t956, t1043 * t1296 - t1291 * t962, -pkin(7) * t817 - t1291 * t695 + t1296 * t719, -pkin(7) * t826 - t1291 * t707 + t1296 * t725, -pkin(7) * t770 - t1291 * t664 + t1296 * t678, -pkin(7) * t691 - t1291 * t640 + t1296 * t644, -t1291 * t792 + t1296 * t875, -t1291 * t755 + t1296 * t790, -t1291 * t762 + t1296 * t814, -t1291 * t791 + t1296 * t874, -t1291 * t763 + t1296 * t815, -t1291 * t816 + t1296 * t881, -pkin(7) * t710 - t1291 * t631 + t1296 * t642, -pkin(7) * t713 - t1291 * t632 + t1296 * t643, -pkin(7) * t704 - t1291 * t619 + t1296 * t636, -pkin(7) * t634 - t1291 * t605 + t1296 * t612, -t1291 * t688 + t1296 * t724, -t1291 * t658 + t1296 * t686, -t1291 * t684 + t1296 * t720, -t1291 * t687 + t1296 * t723, -t1291 * t685 + t1296 * t721, -t1291 * t732 + t1296 * t779, -pkin(7) * t649 - t1291 * t606 + t1296 * t615, -pkin(7) * t659 - t1291 * t607 + t1296 * t617, -pkin(7) * t637 - t1291 * t601 + t1296 * t604, -pkin(7) * t602 - t1291 * t597 + t1296 * t598; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1264, 0, t1265, 0, t1249, t1381, t1231, pkin(7) * t1231, t1199 * t1296 + t1291 * t1218, t1155 * t1296 + t1291 * t1177, t1171 * t1296 + t1291 * t1214, t1198 * t1296 + t1291 * t1217, t1172 * t1296 + t1291 * t1215, t1291 * t1228 - t1296 * t1334, pkin(7) * t1128 + t1073 * t1296 + t1291 * t1079, pkin(7) * t1119 + t1063 * t1296 + t1291 * t1074, pkin(7) * t1105 + t1291 * t1032 + t1042 * t1296, pkin(7) * t1047 + t1291 * t1035 + t1048 * t1296, t1054 * t1296 + t1291 * t1124, t1291 * t1064 + t1296 * t999, t1036 * t1296 + t1291 * t1091, t1053 * t1296 + t1291 * t1123, t1037 * t1296 + t1291 * t1092, t1106 * t1296 + t1291 * t1157, pkin(7) * t961 + t1291 * t876 + t1296 * t856, pkin(7) * t966 + t1291 * t879 + t1296 * t864, pkin(7) * t937 + t1291 * t831 + t1296 * t798, pkin(7) * t860 + t1291 * t783 + t1296 * t780, t1291 * t958 + t1296 * t883, t1291 * t886 + t1296 * t810, t1291 * t955 + t1296 * t887, t1291 * t957 + t1296 * t882, t1291 * t956 + t1296 * t888, t1291 * t1043 + t1296 * t962, pkin(7) * t818 + t1291 * t719 + t1296 * t695, pkin(7) * t827 + t1291 * t725 + t1296 * t707, pkin(7) * t771 + t1291 * t678 + t1296 * t664, pkin(7) * t692 + t1291 * t644 + t1296 * t640, t1291 * t875 + t1296 * t792, t1291 * t790 + t1296 * t755, t1291 * t814 + t1296 * t762, t1291 * t874 + t1296 * t791, t1291 * t815 + t1296 * t763, t1291 * t881 + t1296 * t816, pkin(7) * t711 + t1291 * t642 + t1296 * t631, pkin(7) * t714 + t1291 * t643 + t1296 * t632, pkin(7) * t705 + t1291 * t636 + t1296 * t619, pkin(7) * t635 + t1291 * t612 + t1296 * t605, t1291 * t724 + t1296 * t688, t1291 * t686 + t1296 * t658, t1291 * t720 + t1296 * t684, t1291 * t723 + t1296 * t687, t1291 * t721 + t1296 * t685, t1291 * t779 + t1296 * t732, pkin(7) * t650 + t1291 * t615 + t1296 * t606, pkin(7) * t660 + t1291 * t617 + t1296 * t607, pkin(7) * t638 + t1291 * t604 + t1296 * t601, pkin(7) * t603 + t1291 * t598 + t1296 * t597; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1270, t1271, 0, 0, t1248 * t1418 + t1353, t1286 * t1253 + t1284 * t1340, t1286 * t1224 + t1284 * t1336, t1410 * t1417 - t1353, t1286 * t1225 + t1284 * t1337, t1286 * t1384, pkin(1) * t1173 - t1286 * t1201 + t1284 * t1379, pkin(1) * t1163 - t1286 * t1202 + t1284 * t1380, pkin(1) * t1154 + t1284 * t1308, pkin(1) * t1115 + t1140 * t1459, t1286 * t1160 + t1284 * t1325, t1286 * t1100 + t1284 * t1347, t1286 * t1145 + t1284 * t1343, t1286 * t1158 + t1284 * t1326, t1286 * t1146 + t1284 * t1342, t1286 * t1182 + t1284 * t1305, pkin(1) * t1015 + t1286 * t1033 + t1284 * t1310, pkin(1) * t1018 + t1286 * t1041 + t1284 * t1309, pkin(1) * t992 + t1284 * t1304 + t1286 * t949, pkin(1) * t900 + t1284 * t1303 + t1286 * t970, t1284 * t1330 + t1286 * t976, t1284 * t1355 + t1286 * t891, t1286 * t1008 + t1284 * t1350, t1284 * t1331 + t1286 * t975, t1286 * t1009 + t1284 * t1349, t1286 * t1049 + t1284 * t1348, pkin(1) * t878 + t1284 * t1313 + t1286 * t819, pkin(1) * t885 + t1284 * t1312 + t1286 * t825, pkin(1) * t808 + t1284 * t1314 + t1286 * t726, pkin(1) * t717 + t1284 * t1315 + t1286 * t712, t1284 * t1360 + t1286 * t896, t1284 * t1364 + t1286 * t841, t1284 * t1363 + t1286 * t844, t1284 * t1361 + t1286 * t895, t1284 * t1362 + t1286 * t845, t1284 * t1359 + t1286 * t906, pkin(1) * t754 + t1284 * t1317 + t1286 * t670, pkin(1) * t757 + t1284 * t1316 + t1286 * t671, pkin(1) * t751 + t1284 * t1318 + t1286 * t666, pkin(1) * t646 + t1284 * t1319 + t1286 * t625, t1284 * t1369 + t1286 * t759, t1284 * t1375 + t1286 * t701, t1284 * t1372 + t1286 * t742, t1284 * t1370 + t1286 * t758, t1284 * t1371 + t1286 * t743, t1284 * t1368 + t1286 * t812, pkin(1) * t673 + t1284 * t1321 + t1286 * t620, pkin(1) * t681 + t1284 * t1320 + t1286 * t624, pkin(1) * t655 + t1284 * t1322 + t1286 * t614, pkin(1) * t611 + t1284 * t1323 + t1286 * t599;];
tauB_reg  = t1;
