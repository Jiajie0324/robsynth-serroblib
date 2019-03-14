% Calculate minimal parameter regressor of coriolis matrix for
% S6RRRRRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x35]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 01:33
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRRRRP6_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP6_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP6_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP6_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 01:31:32
% EndTime: 2019-03-10 01:32:52
% DurationCPUTime: 57.37s
% Computational Cost: add. (38766->1176), mult. (79989->1408), div. (0->0), fcn. (86206->8), ass. (0->856)
t1127 = qJD(4) + qJD(5);
t1338 = cos(qJ(5));
t1339 = cos(qJ(4));
t826 = sin(qJ(3));
t1096 = t1339 * t826;
t825 = sin(qJ(4));
t828 = cos(qJ(3));
t1239 = t825 * t828;
t941 = t1096 + t1239;
t738 = t941 * pkin(10);
t1379 = pkin(8) + pkin(9);
t1037 = t1379 * t1339;
t1010 = t826 * t1037;
t1108 = t825 * t1379;
t1045 = t828 * t1108;
t901 = -t1045 - t1010;
t573 = -t738 + t901;
t1091 = t1338 * t573;
t1095 = t1339 * t828;
t1240 = t825 * t826;
t747 = t1095 - t1240;
t1328 = t747 * pkin(10);
t1046 = t826 * t1108;
t753 = t828 * t1037;
t975 = -t753 + t1046;
t572 = t975 - t1328;
t824 = sin(qJ(5));
t1248 = t824 * t572;
t1213 = t1248 / 0.2e1 + t1091 / 0.2e1;
t1009 = t1379 * t1095;
t652 = t1009 - t1046;
t890 = t652 + t1328;
t1414 = t824 * t890;
t1044 = t1379 * t1239;
t900 = -t1010 - t1044;
t1408 = -t738 + t900;
t1421 = t1338 * t1408;
t857 = -t1421 / 0.2e1 + t1414 / 0.2e1;
t250 = t857 + t1213;
t1495 = qJD(3) * t250;
t251 = t857 - t1213;
t1494 = qJD(3) * t251;
t1493 = t250 * qJD(2);
t1403 = t1338 * t890;
t1425 = t824 * t1408;
t849 = t1425 / 0.2e1 + t1403 / 0.2e1;
t1092 = t1338 * t572;
t1247 = t824 * t573;
t922 = t1247 / 0.2e1 - t1092 / 0.2e1;
t256 = t849 + t922;
t1492 = t256 * qJD(3);
t257 = t849 - t922;
t1151 = t257 * qJD(2);
t1491 = t257 * qJD(3);
t827 = sin(qJ(2));
t1235 = t827 * t828;
t1124 = pkin(7) * t1235;
t829 = cos(qJ(2));
t1237 = t826 * t829;
t1325 = t827 * pkin(2);
t1331 = pkin(8) * t829;
t768 = t1325 - t1331;
t752 = t826 * t768;
t646 = -pkin(9) * t1237 - t1124 + t752;
t1241 = t825 * t646;
t1233 = t828 * t829;
t1324 = t827 * pkin(3);
t754 = t828 * t768;
t1238 = t826 * t827;
t795 = pkin(7) * t1238;
t629 = -pkin(9) * t1233 + t1324 + t754 + t795;
t601 = t1339 * t629;
t1058 = t601 - t1241;
t713 = t747 * t829;
t412 = pkin(4) * t827 - pkin(10) * t713 + t1058;
t378 = t824 * t412;
t600 = t825 * t629;
t638 = t1339 * t646;
t1209 = t638 + t600;
t1412 = t829 * t941;
t429 = -pkin(10) * t1412 + t1209;
t414 = t1338 * t429;
t1224 = t378 / 0.2e1 + t414 / 0.2e1;
t419 = t1421 - t1414;
t1484 = t419 * t829;
t1487 = t1484 / 0.2e1;
t1490 = t1487 - t1224;
t1488 = -t1484 / 0.2e1;
t1489 = t1488 - t1224;
t1128 = qJD(3) + qJD(4);
t1479 = qJD(5) + t1128;
t527 = -t1338 * t941 - t747 * t824;
t1463 = -t527 / 0.2e1;
t711 = -t1095 * t827 + t1238 * t825;
t712 = t941 * t827;
t480 = t1338 * t711 + t824 * t712;
t1464 = -t480 / 0.2e1;
t1409 = -t1338 * t712 + t711 * t824;
t1020 = -pkin(5) * t1409 + qJ(6) * t480;
t1206 = pkin(3) * t1238 + pkin(7) * t827;
t1031 = -pkin(4) * t712 - t1206;
t329 = t1020 - t1031;
t1057 = t1338 * t747 - t824 * t941;
t1428 = pkin(5) * t1057;
t1019 = qJ(6) * t527 - t1428;
t808 = -pkin(3) * t828 - pkin(2);
t696 = -pkin(4) * t747 + t808;
t413 = t1019 + t696;
t1466 = t1463 * t329 + t1464 * t413;
t1444 = t1403 + t1425;
t1475 = t1444 * t829;
t1485 = t1475 / 0.2e1;
t1486 = t1466 + t1485;
t1245 = t824 * t713;
t688 = t1338 * t1412;
t1022 = -t688 / 0.2e1 - t1245 / 0.2e1;
t1459 = t527 * t829;
t1468 = t1459 / 0.2e1 + t1022;
t1483 = qJD(1) * t1468;
t177 = t1479 * t527 - t1483;
t390 = -t1475 / 0.2e1;
t1382 = t480 ^ 2;
t1470 = t1409 ^ 2 - t1382;
t1482 = qJD(1) * t1470;
t1469 = -t1459 / 0.2e1 + t1022;
t1481 = qJD(2) * t1469;
t604 = t527 ^ 2;
t1474 = t1057 ^ 2 - t604;
t1480 = qJD(2) * t1474;
t1418 = t1479 * t1057;
t1426 = t1057 * t829;
t1090 = t1338 * t713;
t904 = t824 * t1412;
t870 = t1090 / 0.2e1 - t904 / 0.2e1;
t1442 = t1426 / 0.2e1 + t870;
t1473 = qJD(1) * t1442;
t1478 = -t1473 + t1418;
t1131 = t829 * qJD(1);
t220 = qJD(2) * t1468 + t1131 * t480;
t1329 = t712 * pkin(10);
t1123 = pkin(7) * t1233;
t1337 = pkin(2) * t829;
t1028 = -pkin(8) * t827 - t1337;
t990 = pkin(1) - t1028;
t693 = -t826 * t990 + t1123;
t892 = -pkin(9) * t1238 + t693;
t1402 = t1339 * t892;
t1332 = pkin(7) * t826;
t910 = (-t1379 * t827 - pkin(1) - t1337) * t828;
t875 = (-pkin(3) - t1332) * t829 + t910;
t866 = t825 * t875;
t471 = t1402 + t866;
t847 = t471 - t1329;
t1404 = t1338 * t847;
t1330 = t711 * pkin(10);
t1413 = t825 * t892;
t858 = t1339 * t875;
t470 = t1413 - t858;
t848 = -t470 + t1330;
t843 = -t829 * pkin(4) + t848;
t839 = t824 * t843;
t211 = t1404 + t839;
t1477 = -t211 / 0.2e1;
t1341 = -t829 / 0.2e1;
t1443 = -t1426 / 0.2e1 + t870;
t1472 = qJD(2) * t1443;
t1471 = t1444 * t1464;
t1467 = qJD(2) * t1442 + t1131 * t1409;
t1462 = t527 / 0.2e1;
t1461 = -t1409 / 0.2e1;
t1460 = t329 * t480;
t1290 = t413 * t527;
t1364 = t1057 / 0.2e1;
t1369 = t1409 / 0.2e1;
t1125 = pkin(7) * t1237;
t643 = t910 - t1125;
t1098 = t1339 * t643;
t492 = t1098 - t1413;
t436 = t492 + t1330;
t1249 = t824 * t436;
t1242 = t825 * t643;
t491 = -t1402 - t1242;
t435 = t491 + t1329;
t428 = t1338 * t435;
t263 = -t428 + t1249;
t1093 = t1338 * t436;
t1250 = t824 * t435;
t264 = t1093 + t1250;
t417 = -t1092 + t1247;
t420 = t1091 + t1248;
t1434 = -t1057 / 0.2e1;
t1232 = t829 * qJ(6);
t202 = t211 - t1232;
t1415 = t824 * t847;
t369 = t1338 * t843;
t210 = t1415 - t369;
t204 = t829 * pkin(5) + t210;
t887 = t1434 * t204 - t1461 * t419 + t1463 * t202 + t1471;
t1458 = -t1364 * t264 - t1369 * t420 - t1463 * t263 - t1464 * t417 + t887;
t846 = t824 * t848;
t216 = t846 + t1404;
t842 = t1338 * t848;
t217 = t842 - t1415;
t1457 = -t1364 * t217 - t1369 * t419 - t1463 * t216 - t1471 + t887;
t458 = t1031 * t480;
t1456 = t1128 * t480;
t266 = t329 * t1409;
t1454 = t480 * qJD(5);
t971 = t1031 * t1409;
t1187 = qJD(1) * t480;
t1088 = t1187 * t1409;
t1452 = t1409 * qJD(6);
t1048 = -qJD(3) + t1131;
t1011 = -qJD(4) + t1048;
t1451 = qJD(5) - t1011;
t1340 = t829 / 0.2e1;
t1033 = t1338 * t1339;
t1243 = t824 * t825;
t737 = (t1033 - t1243) * pkin(3);
t1429 = t1415 / 0.2e1;
t831 = t1429 - t842 / 0.2e1;
t830 = t1340 * t737 + t831;
t923 = t1250 / 0.2e1 + t1093 / 0.2e1;
t109 = t830 + t923;
t1109 = qJD(1) * t109 - qJD(3) * t737 + t1493;
t1018 = pkin(3) * t1033;
t1119 = t1338 * pkin(4);
t1042 = t1119 / 0.2e1;
t1120 = t1339 * pkin(3);
t1034 = t1120 + pkin(4);
t769 = t1338 * t1034;
t974 = t769 / 0.2e1 + t1042;
t668 = -t1018 / 0.2e1 + t974;
t1450 = -qJD(5) * t668 - t1109;
t1126 = pkin(3) * t1243;
t724 = -t769 + t1126;
t837 = -t369 / 0.2e1 + t1429;
t834 = t1341 * t724 + t837;
t89 = t834 + t923;
t1111 = qJD(1) * t89 + qJD(3) * t724 + t1493;
t1449 = qJD(4) * t668 - t1111;
t1140 = t724 * qJD(5);
t640 = -t1126 + t1018 / 0.2e1 + t974;
t1448 = -qJD(4) * t640 + t1111 + t1140;
t1447 = qJD(5) * t640 - t1109;
t1089 = t1338 * t825;
t1054 = pkin(3) * t1089;
t973 = t824 * t1034;
t725 = t1054 + t973;
t1217 = t1249 / 0.2e1 - t428 / 0.2e1;
t1226 = t839 / 0.2e1 + t1404 / 0.2e1;
t1440 = t1341 * t725 + t1226;
t928 = -t1217 + t1440;
t1446 = qJD(1) * t928 + qJD(3) * t725 + t1151;
t1097 = t1339 * t824;
t736 = (t1089 + t1097) * pkin(3);
t1220 = -t846 / 0.2e1 - t1404 / 0.2e1;
t1441 = t1341 * t736 - t1220;
t832 = -t1217 + t1441;
t1445 = qJD(1) * t832 + qJD(3) * t736 + t1151;
t1094 = t1338 * t412;
t1251 = t824 * t429;
t1222 = t1094 / 0.2e1 - t1251 / 0.2e1;
t1323 = t827 * pkin(5);
t1021 = -t1323 / 0.2e1 - t1222;
t466 = -pkin(5) * t527 - qJ(6) * t1057;
t399 = -pkin(5) * t480 - qJ(6) * t1409;
t1380 = pkin(5) / 0.2e1;
t1435 = -t808 / 0.2e1;
t1433 = t1206 / 0.2e1;
t1432 = -t1402 / 0.2e1;
t1430 = t1413 / 0.2e1;
t1289 = t413 * t1057;
t1424 = t1057 * qJD(6);
t1181 = qJD(2) * t527;
t1423 = t1057 * t1181;
t1422 = t1128 * t1409;
t1327 = t824 * pkin(4);
t1207 = -t973 / 0.2e1 - t1327 / 0.2e1;
t772 = -pkin(3) * t1097 / 0.2e1;
t639 = -t1054 + t772 + t1207;
t708 = t725 * qJD(5);
t1420 = qJD(4) * t639 - t1446 - t708;
t727 = t736 * qJD(4);
t1419 = qJD(5) * t639 - t1445 - t727;
t809 = t1327 / 0.2e1;
t1208 = t973 / 0.2e1 + t809;
t667 = t772 + t1208;
t1417 = -qJD(5) * t667 + t1445;
t1416 = qJD(4) * t667 + t1446;
t1348 = -t941 / 0.2e1;
t1267 = t696 * t480;
t970 = t1031 * t527;
t1411 = t970 / 0.2e1 - t1267 / 0.2e1;
t1266 = t696 * t1409;
t969 = t1031 * t1057;
t1410 = -t969 / 0.2e1 + t1266 / 0.2e1;
t1405 = t1128 * t941;
t1053 = t829 * t809;
t835 = -t1220 - t1226;
t101 = t1053 + t835;
t1401 = -qJD(1) * t101 + qJD(3) * t667;
t1043 = t1120 / 0.2e1;
t771 = t824 * t1043;
t661 = t771 - qJ(6) + t1207;
t797 = qJ(6) + t1327;
t1256 = t797 * t829;
t83 = t1256 / 0.2e1 + t1232 / 0.2e1 + t835;
t1400 = -qJD(1) * t83 - qJD(3) * t661;
t710 = qJ(6) + t725;
t1356 = t710 / 0.2e1;
t1377 = qJ(6) / 0.2e1;
t1068 = t1356 + t1377;
t81 = t1068 * t829 + t1217 - t1226;
t1395 = -qJD(1) * t81 + t1151;
t254 = 0.2e1 * t849;
t1102 = -qJD(4) * t254 - qJD(5) * t1444 - t1492;
t1394 = t1433 * t941 + t1435 * t711;
t1393 = t1433 * t747 + t1435 * t712;
t1392 = t1434 * t329 + t1461 * t413;
t966 = t1428 / 0.2e1 + qJ(6) * t1463;
t968 = qJ(6) * t1464 + t1380 * t1409;
t1391 = qJD(3) * t832 + qJD(5) * t101;
t1390 = qJD(3) * t928 - qJD(4) * t101;
t823 = t829 ^ 2;
t532 = t823 + t1382;
t1389 = -t532 * qJD(1) + (qJD(3) + t1127) * t829 - t1181 * t480;
t1132 = t827 * qJD(1);
t1087 = t828 * t1132;
t820 = t826 ^ 2;
t822 = t828 ^ 2;
t787 = t822 - t820;
t1388 = qJD(2) * t787 - 0.2e1 * t1087 * t826;
t102 = t1053 + t1220 - t1226;
t927 = -t1217 - t1440;
t1387 = qJD(3) * t927 + qJD(4) * t102 - qJD(5) * t211;
t926 = -t1217 - t1441;
t1386 = qJD(3) * t926 - qJD(4) * t216 + qJD(5) * t102;
t1385 = -qJD(5) * t1409 - t1422;
t833 = t1042 * t829 + t837;
t103 = -t831 + t833;
t1049 = -qJD(1) * t103 + qJD(3) * t668 + qJD(4) * t1119;
t1384 = -qJD(4) * t832 - qJD(5) * t928;
t1383 = -qJD(3) * t263 + qJD(4) * t926 + qJD(5) * t927;
t1381 = -pkin(5) / 0.2e1;
t1378 = -qJ(6) / 0.2e1;
t1376 = -t204 / 0.2e1;
t1375 = -t329 / 0.2e1;
t1374 = -t413 / 0.2e1;
t1373 = t419 / 0.2e1;
t1372 = -t419 / 0.2e1;
t1371 = -t420 / 0.2e1;
t1370 = -t1444 / 0.2e1;
t1367 = t480 / 0.2e1;
t1359 = -t696 / 0.2e1;
t1335 = pkin(4) * t941;
t815 = t826 * pkin(3);
t698 = t815 + t1335;
t1358 = t698 / 0.2e1;
t1357 = -t710 / 0.2e1;
t1355 = t711 / 0.2e1;
t1354 = -t712 / 0.2e1;
t715 = -pkin(5) + t724;
t1353 = t715 / 0.2e1;
t1352 = t725 / 0.2e1;
t1351 = t736 / 0.2e1;
t1350 = -t737 / 0.2e1;
t1349 = t737 / 0.2e1;
t1347 = -t797 / 0.2e1;
t1346 = t797 / 0.2e1;
t807 = -t1119 - pkin(5);
t1345 = -t807 / 0.2e1;
t1344 = t807 / 0.2e1;
t1343 = t824 / 0.2e1;
t1342 = -t827 / 0.2e1;
t1336 = pkin(4) * t711;
t1326 = t825 * pkin(3);
t1322 = pkin(4) * qJD(5);
t1305 = t216 * t829;
t337 = -t1336 + t399;
t64 = -t1409 * t337 + t1305 - t1460;
t1319 = qJD(1) * t64;
t1298 = t263 * t829;
t796 = pkin(3) * t1235;
t333 = t337 + t796;
t66 = -t1409 * t333 + t1298 - t1460;
t1318 = qJD(1) * t66;
t1306 = t211 * t829;
t71 = -t1409 * t399 + t1306 - t1460;
t1317 = qJD(1) * t71;
t1072 = t210 / 0.2e1 + t1376;
t1073 = t202 / 0.2e1 + t1477;
t899 = -t1057 * t1072 + t1073 * t527;
t559 = t688 + t1245;
t563 = t1090 - t904;
t967 = t1378 * t559 + t1381 * t563;
t12 = t899 - t967;
t1313 = t12 * qJD(1);
t1219 = t414 + t378;
t1236 = t827 * qJ(6);
t208 = t1219 + t1236;
t942 = t1094 - t1251;
t209 = -t942 - t1323;
t755 = pkin(3) * t1237 + pkin(7) * t829;
t627 = pkin(4) * t1412 + t755;
t330 = t559 * pkin(5) - t563 * qJ(6) + t627;
t19 = t202 * t208 + t204 * t209 + t329 * t330;
t1312 = t19 * qJD(1);
t20 = t202 * t217 + t204 * t216 + t329 * t337;
t1311 = t20 * qJD(1);
t21 = t202 * t264 + t204 * t263 + t329 * t333;
t1308 = t21 * qJD(1);
t1307 = t210 * t829;
t1304 = t217 * t829;
t22 = -t202 * t210 + t204 * t211 + t329 * t399;
t1303 = t22 * qJD(1);
t23 = t1409 * t208 - t202 * t559 + t204 * t563 - t209 * t480;
t1302 = t23 * qJD(1);
t24 = -(-t202 + t211) * t480 - (-t204 + t210) * t1409;
t1301 = t24 * qJD(1);
t1005 = t1409 * t204 + t202 * t480;
t25 = t1409 * t217 - t216 * t480 + t1005;
t1300 = t25 * qJD(1);
t26 = t1409 * t264 - t263 * t480 + t1005;
t1299 = t26 * qJD(1);
t1297 = t264 * t829;
t39 = -t202 * t827 + t208 * t829 + t329 * t563 - t330 * t480;
t1293 = t39 * qJD(1);
t40 = -t1409 * t330 - t204 * t827 + t209 * t829 + t329 * t559;
t1292 = t40 * qJD(1);
t1286 = t419 * t827;
t1283 = t420 * t829;
t1281 = t1444 * t827;
t57 = t1031 * t559 + t1409 * t627 + t210 * t827 + t829 * t942;
t1278 = t57 * qJD(1);
t58 = -t1031 * t563 + t1219 * t829 - t211 * t827 - t480 * t627;
t1277 = t58 * qJD(1);
t65 = -t337 * t480 + t1304 + t266;
t1271 = t65 * qJD(1);
t1270 = t900 * t829;
t1269 = t652 * t829;
t67 = -t333 * t480 + t1297 + t266;
t1268 = t67 * qJD(1);
t70 = -t399 * t480 - t1307 + t266;
t1265 = t70 * qJD(1);
t1264 = t710 * t480;
t1263 = t710 * t527;
t1262 = t715 * t1409;
t1261 = t715 * t1057;
t1258 = t797 * t480;
t1257 = t797 * t527;
t1255 = t807 * t1409;
t1254 = t807 * t1057;
t821 = t827 ^ 2;
t1234 = t828 * t821;
t1230 = t1127 * t257;
t359 = t711 * t941 - t712 * t747;
t1227 = t1128 * t359;
t485 = t712 * t1348 - t711 * t747 / 0.2e1;
t1215 = t1128 * t485;
t788 = t823 - t821;
t1205 = qJ(6) * qJD(5);
t116 = -t1336 * t1409 - t1305 - t458;
t1202 = qJD(1) * t116;
t117 = t1336 * t480 + t1304 - t971;
t1201 = qJD(1) * t117;
t1063 = t796 - t1336;
t118 = t1063 * t1409 - t1298 - t458;
t1200 = qJD(1) * t118;
t119 = -t1063 * t480 + t1297 - t971;
t1199 = qJD(1) * t119;
t142 = -t1307 - t971;
t1198 = qJD(1) * t142;
t143 = -t1306 - t458;
t1197 = qJD(1) * t143;
t636 = t1206 * t711;
t327 = t491 * t829 - t712 * t796 + t636;
t1196 = qJD(1) * t327;
t1061 = t1206 * t712;
t328 = t492 * t829 - t711 * t796 - t1061;
t1195 = qJD(1) * t328;
t352 = -t470 * t829 - t1061;
t1194 = qJD(1) * t352;
t353 = -t471 * t829 + t636;
t1193 = qJD(1) * t353;
t370 = -t1409 * t827 - t559 * t829;
t1192 = qJD(1) * t370;
t371 = t480 * t827 + t563 * t829;
t1191 = qJD(1) * t371;
t564 = t712 * t827 - t823 * t941;
t1186 = qJD(1) * t564;
t565 = t711 * t827 + t713 * t829;
t1185 = qJD(1) * t565;
t692 = t828 * t990 + t1125;
t623 = -t1332 * t821 - t692 * t829;
t1184 = qJD(1) * t623;
t624 = -pkin(7) * t1234 - t693 * t829;
t1183 = qJD(1) * t624;
t1182 = qJD(1) * t711;
t1180 = qJD(2) * t696;
t1179 = qJD(2) * t941;
t1178 = qJD(2) * t808;
t1177 = qJD(2) * t826;
t1176 = qJD(2) * t827;
t1175 = qJD(2) * t828;
t1174 = qJD(2) * t829;
t1173 = qJD(3) * t826;
t1172 = qJD(3) * t828;
t1171 = qJD(3) * t829;
t1168 = qJD(4) * t808;
t1164 = qJD(5) * t696;
t1163 = qJD(6) * t527;
t1162 = qJD(6) * t829;
t111 = t202 * t829 - t1460;
t1159 = t111 * qJD(1);
t186 = t1058 * t829 - t1206 * t1412 + t470 * t827 - t712 * t755;
t1158 = t186 * qJD(1);
t187 = t1206 * t713 + t1209 * t829 - t471 * t827 - t711 * t755;
t1157 = t187 * qJD(1);
t261 = t1409 * t563 + t480 * t559;
t1150 = t261 * qJD(1);
t838 = t1430 - t858 / 0.2e1 + t829 * t1043;
t855 = t1430 - t1098 / 0.2e1;
t299 = t838 - t855;
t1149 = t299 * qJD(1);
t462 = t1412 * t711 - t712 * t713;
t1148 = t462 * qJD(1);
t506 = t692 * t827 + (-t795 + t754) * t829;
t1147 = t506 * qJD(1);
t507 = t752 * t829 + (-t693 + t1123) * t827;
t1146 = t507 * qJD(1);
t921 = -t1239 / 0.2e1 - t1096 / 0.2e1;
t589 = (t1348 + t921) * t829;
t578 = t589 * qJD(1);
t920 = t1095 / 0.2e1 - t1240 / 0.2e1;
t590 = (t747 / 0.2e1 + t920) * t829;
t579 = t590 * qJD(1);
t1136 = t737 * qJD(4);
t750 = t788 * t826;
t1135 = t750 * qJD(1);
t751 = t823 * t828 - t1234;
t1134 = t751 * qJD(1);
t1133 = t788 * qJD(1);
t1130 = qJD(6) + t1136;
t814 = qJD(5) * t1119;
t1129 = t814 + qJD(6);
t1122 = -t1338 / 0.2e1;
t1121 = t1338 / 0.2e1;
t1118 = pkin(1) * t1132;
t1117 = pkin(1) * t1131;
t1116 = t824 * t1322;
t1115 = -t1336 / 0.2e1;
t1114 = t1335 / 0.2e1;
t1113 = -t815 / 0.2e1;
t1112 = -t1324 / 0.2e1;
t123 = -0.2e1 * t1462 * t480 + (t1364 - t1434) * t1409;
t153 = t1057 * t1409 - t480 * t527;
t1107 = t153 * qJD(5) + t1128 * t123;
t1106 = -t417 * qJD(3) - t1127 * t256;
t1105 = -qJD(4) * t1444 - qJD(5) * t254 - t1492;
t284 = t1057 * t1464 + t1409 * t1463;
t285 = -t1364 * t480 - t1409 * t1462;
t1101 = t285 * qJD(5) + t1128 * t284;
t1100 = -t1232 / 0.2e1 + t1226;
t1085 = t826 * t1175;
t1084 = t827 * t1175;
t1083 = t826 * t1171;
t1082 = t828 * t1171;
t1081 = t826 * t1172;
t1080 = t827 * t1174;
t1079 = t827 * t1131;
t1077 = t417 * t1340;
t1076 = t1267 / 0.2e1;
t1075 = -t1266 / 0.2e1;
t1074 = t824 * t1342;
t1071 = -t600 / 0.2e1 - t638 / 0.2e1;
t1070 = t1357 + t1352;
t1069 = t1357 + t1346;
t1067 = t1353 + t1345;
t1066 = t724 / 0.2e1 - t715 / 0.2e1;
t1065 = t1339 * qJD(3);
t1064 = t1339 * qJD(4);
t1056 = t1128 * t829;
t1052 = t825 * t1112;
t1051 = t828 * t1112;
t1047 = -qJD(5) + t1131;
t1039 = t1224 + t1392;
t1036 = t826 * t1084;
t1032 = t827 * t1121;
t1030 = t1222 + t1323;
t1029 = t1131 - qJD(3) / 0.2e1;
t1027 = t1224 + t1236;
t1026 = t1068 * t827;
t1025 = (t1346 + t1377) * t827;
t1024 = t601 / 0.2e1 - t1241 / 0.2e1;
t1023 = t1432 - t1242 / 0.2e1;
t1017 = t827 * t1043;
t430 = t1335 + t466;
t415 = t430 + t815;
t853 = t1370 * t264 + t1371 * t202 + t1373 * t263 + t1374 * t333 + t1375 * t415 + t1376 * t417;
t955 = t1353 * t209 + t1356 * t208;
t1 = t853 + t955;
t55 = t1444 * t420 + t413 * t415 - t417 * t419;
t1016 = -qJD(1) * t1 + qJD(2) * t55;
t854 = t1370 * t217 + t1372 * t202 + t1373 * t216 + t1374 * t337 + t1375 * t430 + t1376 * t1444;
t954 = t1344 * t209 + t1346 * t208;
t3 = t854 + t954;
t56 = t413 * t430;
t1015 = -qJD(1) * t3 + qJD(2) * t56;
t952 = t1374 * t399 + t1375 * t466;
t965 = t1377 * t208 + t1381 * t209;
t5 = t1072 * t1444 - t1073 * t419 + t952 + t965;
t63 = t413 * t466;
t1014 = -t5 * qJD(1) + t63 * qJD(2);
t946 = t1353 * t563 + t1357 * t559;
t7 = t946 + t1458;
t74 = (t1444 - t417) * t527 + (-t419 + t420) * t1057;
t1013 = -qJD(1) * t7 + qJD(2) * t74;
t943 = t1344 * t563 + t1347 * t559;
t9 = t943 + t1457;
t1012 = t9 * qJD(1);
t1008 = t1342 * t725 - t1224;
t1007 = t1342 * t724 + t1222;
t1006 = t1071 + t1393;
t148 = -t1057 * t415 - t1290;
t860 = t1434 * t333 + t1461 * t415 + t1077 + t1466;
t29 = (t1353 + t1381) * t827 + t860 - t1222;
t1003 = -qJD(1) * t29 - qJD(2) * t148;
t149 = t415 * t527 - t1289;
t387 = t1283 / 0.2e1;
t905 = t1224 - t1392;
t949 = t1367 * t415 + t1462 * t333;
t27 = t387 + t1026 + t905 - t949;
t1002 = qJD(1) * t27 - qJD(2) * t149;
t150 = -t1057 * t430 - t1290;
t859 = t1434 * t337 + t1461 * t430 + t1486;
t33 = (t1344 + t1381) * t827 + t859 - t1222;
t1001 = -qJD(1) * t33 - qJD(2) * t150;
t151 = t430 * t527 - t1289;
t948 = t1367 * t430 + t1462 * t337;
t31 = t1487 + t1025 + t905 - t948;
t1000 = qJD(1) * t31 - qJD(2) * t151;
t156 = -t1057 * t466 - t1290;
t881 = t1364 * t399 + t1369 * t466 - t1466;
t37 = t1030 + t390 + t881;
t999 = qJD(1) * t37 - qJD(2) * t156;
t157 = t466 * t527 - t1289;
t882 = t1364 * t329 + t1369 * t413 + t1463 * t399 + t1464 * t466;
t35 = t1027 + t1487 + t882;
t998 = qJD(1) * t35 - qJD(2) * t157;
t511 = t696 * t527;
t342 = -t1057 * t698 - t511;
t891 = t1063 * t1434 - t1358 * t1409 + t1077;
t51 = t1076 - t970 / 0.2e1 - t891 + t1007;
t997 = qJD(1) * t51 - qJD(2) * t342;
t512 = t696 * t1057;
t343 = -t527 * t698 + t512;
t388 = -t1283 / 0.2e1;
t903 = t1063 * t1463 - t1358 * t480;
t52 = t388 + t1075 + t969 / 0.2e1 - t903 + t1008;
t996 = qJD(1) * t52 - qJD(2) * t343;
t354 = t1057 * t1335 + t511;
t60 = t390 + t1076 + t1206 * t1462 + (-t1057 * t1355 - t1348 * t1409 - t1354 * t527 + t1032) * pkin(4) + t1222;
t995 = qJD(1) * t60 + qJD(2) * t354;
t355 = t1335 * t527 - t512;
t59 = t1075 + t1206 * t1434 + (t1057 * t1354 - t1348 * t480 - t1355 * t527 + t1074) * pkin(4) + t1489;
t994 = qJD(1) * t59 + qJD(2) * t355;
t992 = -qJD(3) * t89 - qJD(4) * t103;
t991 = qJD(4) * t109 + qJD(5) * t89;
t989 = t1048 * t827;
t945 = -t1350 * t1409 - t1351 * t480;
t113 = t1067 * t1409 - t1069 * t480 + t945;
t944 = -t1057 * t1350 - t1351 * t527;
t129 = t1057 * t1067 - t1069 * t527 + t944;
t988 = qJD(1) * t113 + qJD(2) * t129;
t897 = -t1066 * t1409 - t1070 * t480;
t115 = t897 + t968;
t896 = -t1057 * t1066 - t1070 * t527;
t137 = t896 + t966;
t987 = qJD(1) * t115 + qJD(2) * t137;
t68 = qJD(2) * t123 + t1482;
t75 = qJD(1) * t123 + t1480;
t862 = (-t1122 * t1409 - t1343 * t480) * pkin(4) - t480 * t1347 - t1409 * t1345;
t127 = t862 + t968;
t861 = (-t1057 * t1122 - t1343 * t527) * pkin(4) - t527 * t1347 - t1057 * t1345;
t155 = t861 + t966;
t986 = qJD(1) * t127 + qJD(2) * t155;
t985 = qJD(2) * t153 + t1482;
t984 = qJD(1) * t153 + t1480;
t852 = -t1051 * t941 + t1113 * t711 + t1340 * t901;
t894 = t1071 - t1393;
t190 = t1052 - t852 + t894;
t585 = t747 * t808 + t815 * t941;
t983 = t190 * qJD(1) - t585 * qJD(2);
t856 = t1051 * t747 - t1113 * t712 + t1341 * t975;
t888 = t1024 - t1394;
t191 = t1017 - t856 + t888;
t584 = -t747 * t815 + t808 * t941;
t982 = -t191 * qJD(1) + t584 * qJD(2);
t840 = -t866 / 0.2e1 + t1432 + t1326 * t1340;
t297 = t840 - t1023;
t956 = -t1009 / 0.2e1;
t645 = t753 / 0.2e1 + t956;
t981 = qJD(1) * t297 + qJD(2) * t645;
t508 = -t711 ^ 2 + t712 ^ 2;
t276 = qJD(1) * t508 + qJD(2) * t359;
t571 = t747 ^ 2 - t941 ^ 2;
t295 = qJD(1) * t359 + qJD(2) * t571;
t978 = -qJD(3) * t109 + qJD(5) * t103;
t976 = t1127 * t250;
t972 = t1331 / 0.2e1 - t1325 / 0.2e1;
t964 = t1378 * t217 + t1380 * t216;
t963 = t1378 * t264 + t1380 * t263;
t962 = qJ(6) * t1372 + t1380 * t1444;
t961 = qJ(6) * t1371 + t1380 * t417;
t960 = pkin(5) * t1351 + qJ(6) * t1350;
t959 = -qJD(4) / 0.2e1 + t1029;
t925 = t972 * t826;
t641 = t752 / 0.2e1 - t925;
t958 = pkin(2) * t1175 - qJD(1) * t641;
t924 = t972 * t828;
t642 = -t754 / 0.2e1 + t924;
t957 = pkin(2) * t1177 - qJD(1) * t642;
t953 = t1345 * t263 + t1347 * t264;
t947 = t1345 * t417 + t1347 * t420;
t47 = t1021 + t1486;
t940 = qJD(1) * t47 - t1181 * t413;
t902 = t1031 * t1434 - t1359 * t1409;
t78 = -t902 + t1489;
t939 = qJD(1) * t78 - t1057 * t1180;
t876 = t1031 * t1463 - t1359 * t480 + t390;
t77 = t876 + t1222;
t938 = qJD(1) * t77 + t1180 * t527;
t937 = t828 * t989;
t271 = t1342 - t285;
t936 = qJD(1) * t271 + t1423;
t146 = qJD(2) * t284 - t1088;
t159 = qJD(1) * t284 - t1423;
t935 = -qJD(2) * t285 + t1088;
t934 = -qJD(1) * t285 + t1423;
t289 = -t1269 / 0.2e1 + t888;
t933 = qJD(1) * t289 - t1178 * t941;
t290 = -t1270 / 0.2e1 + t894;
t932 = qJD(1) * t290 - t1178 * t747;
t347 = -qJD(2) * t485 - t1182 * t712;
t368 = -qJD(1) * t485 - t1179 * t747;
t739 = (t820 / 0.2e1 - t822 / 0.2e1) * t827;
t930 = -qJD(1) * t739 + t1085;
t929 = t1024 + t1394;
t919 = qJD(1) * t1234 * t826 + qJD(2) * t739;
t749 = t787 * t821;
t918 = qJD(1) * t749 + 0.2e1 * t1036;
t886 = -t202 * t724 / 0.2e1 + t204 * t1352 + t210 * t1357 + t211 * t1353;
t14 = t886 + t963;
t898 = -t1066 * t1444 - t1070 * t419;
t44 = t898 + t961;
t463 = -t710 * t724 + t715 * t725;
t914 = qJD(1) * t14 + qJD(2) * t44 + qJD(3) * t463;
t885 = t1349 * t202 + t1351 * t204 + t1353 * t216 + t1356 * t217;
t16 = t885 + t953;
t880 = (t1349 + t1353) * t1444 + (-t1351 + t1356) * t419;
t42 = t880 + t947;
t474 = t710 * t737 + t715 * t736;
t913 = qJD(1) * t16 + qJD(2) * t42 + qJD(3) * t474;
t104 = t831 + t833;
t90 = t834 - t923;
t912 = qJD(3) * t90 + qJD(4) * t104 + qJD(5) * t210;
t110 = t830 - t923;
t911 = -qJD(3) * t264 + qJD(4) * t110 + qJD(5) * t90;
t909 = qJD(3) * t110 - qJD(4) * t217 + qJD(5) * t104;
t249 = 0.2e1 * t857;
t908 = -qJD(4) * t249 + qJD(5) * t419 - t1494;
t907 = qJD(4) * t419 - qJD(5) * t249 - t1494;
t906 = qJD(3) * t420 - t1127 * t251;
t865 = (t1121 * t202 + t1343 * t204) * pkin(4) + t210 * t1347 + t211 * t1344;
t18 = t865 + t964;
t863 = (t1121 * t710 + t1343 * t715) * pkin(4) + t724 * t1347 + t725 * t1344;
t324 = t863 + t960;
t864 = (t1121 * t1444 - t1343 * t419) * pkin(4) - t419 * t1347 + t1444 * t1344;
t50 = t864 + t962;
t691 = (t1338 * t797 + t807 * t824) * pkin(4);
t895 = t18 * qJD(1) + t50 * qJD(2) + t324 * qJD(3) + t691 * qJD(4);
t819 = qJ(6) * qJD(6);
t802 = t1176 / 0.2e1;
t801 = -t1132 / 0.2e1;
t800 = t1132 / 0.2e1;
t786 = t797 * qJD(6);
t746 = t1029 * t827;
t733 = t739 * qJD(3);
t723 = t1451 * qJ(6);
t702 = t959 * t827;
t697 = t710 * qJD(6);
t660 = (-qJD(5) / 0.2e1 + t959) * t827;
t628 = qJ(6) + t1054 + t771 + t1208;
t596 = t795 + t754 / 0.2e1 + t924;
t595 = t1124 - t752 / 0.2e1 - t925;
t593 = -t727 - t708;
t592 = -t1341 * t941 + t829 * t921;
t591 = t1341 * t747 + t829 * t920;
t575 = -t753 / 0.2e1 + t956 + t1046;
t574 = t1045 / 0.2e1 + t1044 / 0.2e1 + t1010;
t501 = qJD(2) * t590 - t1131 * t712;
t500 = qJD(2) * t589 + t1131 * t711;
t468 = -t578 - t1405;
t467 = t1128 * t747 - t579;
t457 = t480 * t1163;
t351 = t591 * qJD(2) + t1011 * t712;
t350 = t592 * qJD(2) - t1011 * t711;
t336 = qJD(2) * t604 + t1187 * t527;
t323 = t863 - t960;
t300 = t838 + t855;
t298 = t840 + t1023;
t292 = t1269 / 0.2e1 + t929;
t291 = t1270 / 0.2e1 + t1006;
t272 = t1342 + t285;
t193 = t1052 + t852 + t1006;
t192 = t1017 + t856 + t929;
t154 = t861 - t966;
t136 = t896 - t966;
t128 = t1263 / 0.2e1 + t1261 / 0.2e1 + t1257 / 0.2e1 + t1254 / 0.2e1 + t944;
t126 = t862 - t968;
t125 = t1409 * t1451 + t1472;
t124 = -t1011 * t480 + t1454 + t1481;
t120 = -t1047 * t1409 + t1422 + t1472;
t114 = t897 - t968;
t112 = t1264 / 0.2e1 + t1262 / 0.2e1 + t1258 / 0.2e1 + t1255 / 0.2e1 + t945;
t84 = -t1256 / 0.2e1 - t1220 + t1100;
t82 = t1341 * t710 + t1100 + t1217;
t80 = -t876 + t1222;
t79 = t902 + t1490;
t62 = pkin(4) * t1074 - t1114 * t480 - t1115 * t527 + t1410 + t1490;
t61 = pkin(4) * t1032 - t1057 * t1115 - t1114 * t1409 + t1222 + t1411 + t1485;
t54 = t387 + t903 + t1008 + t1410;
t53 = t891 + t1007 + t1411;
t49 = t864 - t962;
t48 = t390 - t1466 + t1021;
t46 = qJD(4) * t1327 + t1401;
t45 = -t1127 * t1327 - t1401;
t43 = t898 - t961;
t41 = t880 - t947;
t38 = t1030 + t1485 - t881;
t36 = t1027 + t1488 - t882;
t34 = t1342 * t807 - t1021 + t859;
t32 = t1488 + t1025 + t948 + t1039;
t30 = t1342 * t715 - t1021 + t860;
t28 = t388 + t1026 + t949 + t1039;
t17 = t865 - t964;
t15 = t885 - t953;
t13 = t886 - t963;
t11 = t899 + t967;
t10 = t943 - t1457;
t8 = t946 - t1458;
t6 = t210 * t1370 + t202 * t1373 + t419 * t1477 + t204 * t1444 / 0.2e1 - t952 + t965;
t4 = -t854 + t954;
t2 = -t853 + t955;
t69 = [0, 0, 0, t1080, t788 * qJD(2), 0, 0, 0, -pkin(1) * t1176, -pkin(1) * t1174, t1080 * t822 - t1081 * t821, -qJD(3) * t749 - 0.2e1 * t1036 * t829, -qJD(2) * t751 + t1083 * t827, qJD(2) * t750 + t1082 * t827, -t1080, -qJD(2) * t506 - qJD(3) * t624, qJD(2) * t507 + qJD(3) * t623 (-qJD(2) * t713 + t1128 * t712) * t711, qJD(2) * t462 + t1128 * t508, -t565 * qJD(2) + t1056 * t712, -t564 * qJD(2) - t1056 * t711, -t1080, -qJD(2) * t186 - qJD(3) * t327 - qJD(4) * t353, qJD(2) * t187 + qJD(3) * t328 + qJD(4) * t352 -(qJD(2) * t563 - t1385) * t480, qJD(2) * t261 + t1470 * t1479, -t371 * qJD(2) + t1385 * t829, -t370 * qJD(2) + (-t1454 - t1456) * t829, -t1080, -qJD(2) * t57 - qJD(3) * t118 - qJD(4) * t116 - qJD(5) * t143, qJD(2) * t58 + qJD(3) * t119 + qJD(4) * t117 + qJD(5) * t142, qJD(2) * t40 + qJD(3) * t66 + qJD(4) * t64 + qJD(5) * t71 - t1452 * t480, qJD(2) * t23 + qJD(3) * t26 + qJD(4) * t25 + qJD(5) * t24 - t1452 * t829, -qJD(2) * t39 - qJD(3) * t67 - qJD(4) * t65 - qJD(5) * t70 + qJD(6) * t532, qJD(2) * t19 + qJD(3) * t21 + qJD(4) * t20 + qJD(5) * t22 - qJD(6) * t111; 0, 0, 0, t1079, t1133, t1174, -t1176, 0, -pkin(7) * t1174 - t1118, pkin(7) * t1176 - t1117, -t733 + (t1132 * t822 + t1085) * t829, -0.2e1 * t1081 * t827 + t1388 * t829, t1176 * t826 - t1134, t1084 + t1135, -t746, -t1147 + (t1028 * t826 - t1123) * qJD(2) + t596 * qJD(3), t1146 + (t1028 * t828 + t1125) * qJD(2) + t595 * qJD(3) (t1179 - t1182) * t713 + t1215, t1148 + (-t1412 * t941 + t713 * t747) * qJD(2) + t1227, t1128 * t591 + t1176 * t941 - t1185, t1128 * t592 + t1176 * t747 - t1186, -t702, -t1158 + (t1412 * t808 - t755 * t747 + t827 * t900) * qJD(2) + t192 * qJD(3) + t292 * qJD(4), t1157 + (-t652 * t827 + t713 * t808 + t755 * t941) * qJD(2) + t193 * qJD(3) + t291 * qJD(4) (-t1181 - t1187) * t563 + t1101, t1150 + (t1057 * t563 + t527 * t559) * qJD(2) + t1107, -t1176 * t527 + t1443 * t1479 - t1191, t1057 * t1176 + t1469 * t1479 - t1192, -t660, -t1278 + (-t1057 * t627 + t559 * t696 + t1286) * qJD(2) + t53 * qJD(3) + t61 * qJD(4) + t80 * qJD(5), t1277 + (-t527 * t627 + t563 * t696 - t1281) * qJD(2) + t54 * qJD(3) + t62 * qJD(4) + t79 * qJD(5), t1292 + (-t1057 * t330 + t413 * t559 + t1286) * qJD(2) + t30 * qJD(3) + t34 * qJD(4) + t38 * qJD(5) + t272 * qJD(6), t1302 + (t1057 * t208 - t1444 * t559 - t209 * t527 - t419 * t563) * qJD(2) + t8 * qJD(3) + t10 * qJD(4) + t11 * qJD(5) + t1443 * qJD(6), -t1293 + (t330 * t527 - t413 * t563 + t1281) * qJD(2) + t28 * qJD(3) + t32 * qJD(4) + t36 * qJD(5) + t457, t1312 + (t1444 * t208 - t209 * t419 + t330 * t413) * qJD(2) + t2 * qJD(3) + t4 * qJD(4) + t6 * qJD(5) + t48 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t919, -t918, t826 * t989, t937, t802, qJD(2) * t596 - qJD(3) * t693 - t1183, qJD(2) * t595 + qJD(3) * t692 + t1184, -t347, t276, t351, t350, t802, qJD(2) * t192 + qJD(3) * t491 + qJD(4) * t298 - t1196, qJD(2) * t193 - qJD(3) * t492 + qJD(4) * t300 + t1195, t146, t68, t125, t124, t802, qJD(2) * t53 - t1200 + t1383, qJD(2) * t54 + t1199 + t911, qJD(2) * t30 + t1318 + t1383, t1299 + t8 * qJD(2) + (t1262 + t1264) * qJD(3) + t112 * qJD(4) + t114 * qJD(5) + t1452, qJD(2) * t28 - t1162 - t1268 - t911, t1308 + t2 * qJD(2) + (t263 * t715 + t264 * t710) * qJD(3) + t15 * qJD(4) + t13 * qJD(5) + t82 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t347, t276, t351, t350, t802, qJD(2) * t292 + qJD(3) * t298 - qJD(4) * t471 - t1193, qJD(2) * t291 + qJD(3) * t300 + qJD(4) * t470 + t1194, t146, t68, t125, t124, t802, qJD(2) * t61 - t1202 + t1386, qJD(2) * t62 + t1201 + t909, qJD(2) * t34 + t1319 + t1386, t1300 + t10 * qJD(2) + t112 * qJD(3) + (t1255 + t1258) * qJD(4) + t126 * qJD(5) + t1452, qJD(2) * t32 - t1162 - t1271 - t909, t1311 + t4 * qJD(2) + t15 * qJD(3) + (t216 * t807 + t217 * t797) * qJD(4) + t17 * qJD(5) + t84 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t935, t985, t120, -t1047 * t480 + t1456 + t1481, t802, qJD(2) * t80 - t1197 + t1387, qJD(2) * t79 + t1198 + t912, qJD(2) * t38 + t1317 + t1387, t11 * qJD(2) + t114 * qJD(3) + t126 * qJD(4) + qJD(5) * t1020 + t1301 + t1452, qJD(2) * t36 - t1162 - t1265 - t912, t1303 + t6 * qJD(2) + t13 * qJD(3) + t17 * qJD(4) + (-pkin(5) * t211 - qJ(6) * t210) * qJD(5) + t202 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t272 - t1088, t120, -t1389, qJD(2) * t48 + qJD(3) * t82 + qJD(4) * t84 + qJD(5) * t202 - t1159; 0, 0, 0, -t1079, -t1133, 0, 0, 0, t1118, t1117, -t1079 * t822 - t733, 0.2e1 * t826 * t937, -t1082 + t1134, t1083 - t1135, t746, qJD(3) * t642 + t1147, qJD(3) * t641 - t1146, t1182 * t713 + t1215, -t1148 + t1227, -t1128 * t590 + t1185, -t1128 * t589 + t1186, t702, -qJD(3) * t191 - qJD(4) * t289 + t1158, -qJD(3) * t190 - qJD(4) * t290 - t1157, t1187 * t563 + t1101, t1107 - t1150, -t1442 * t1479 + t1191, -t1468 * t1479 + t1192, t660, -qJD(3) * t51 - qJD(4) * t60 - qJD(5) * t77 + t1278, -qJD(3) * t52 - qJD(4) * t59 - qJD(5) * t78 - t1277, qJD(3) * t29 + qJD(4) * t33 - qJD(5) * t37 - qJD(6) * t271 - t1292, -qJD(3) * t7 - qJD(4) * t9 + qJD(5) * t12 - qJD(6) * t1442 - t1302, -qJD(3) * t27 - qJD(4) * t31 - qJD(5) * t35 + t1293 + t457, -qJD(3) * t1 - qJD(4) * t3 - qJD(5) * t5 - qJD(6) * t47 - t1312; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1081, t787 * qJD(3), 0, 0, 0, -pkin(2) * t1173, -pkin(2) * t1172, t747 * t1405, t1128 * t571, 0, 0, 0, qJD(3) * t584 + t1168 * t941, qJD(3) * t585 + t1168 * t747, -t1418 * t527, t1479 * t1474, 0, 0, 0, qJD(3) * t342 - qJD(4) * t354 - t1164 * t527, qJD(3) * t343 - qJD(4) * t355 + t1057 * t1164, qJD(3) * t148 + qJD(4) * t150 + qJD(5) * t156 - t1424 * t527, qJD(3) * t74, qJD(3) * t149 + qJD(4) * t151 + qJD(5) * t157 + qJD(6) * t604, qJD(3) * t55 + qJD(4) * t56 + qJD(5) * t63 + t1163 * t413; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t930, t1388, -t1048 * t828, t1048 * t826, t801, -pkin(8) * t1172 - t957, pkin(8) * t1173 - t958, -t368, t295, t467, t468, t801, qJD(3) * t975 + t575 * qJD(4) + t982, -qJD(3) * t901 + t574 * qJD(4) - t983, t159, t75, t1478, t177, t801, -t997 + t1106, -t906 - t996, -t1003 + t1106 (t1261 + t1263) * qJD(3) + t128 * qJD(4) + t136 * qJD(5) + t1424 + t1013, -t1002 + t906 (t417 * t715 + t420 * t710) * qJD(3) + t41 * qJD(4) + t43 * qJD(5) + t256 * qJD(6) + t1016; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t368, t295, t467, t468, t801, qJD(3) * t575 - qJD(4) * t652 - t933, qJD(3) * t574 - qJD(4) * t900 - t932, t159, t75, t1478, t177, t801, -t995 + t1105, -t907 - t994, -t1001 + t1105, t128 * qJD(3) + (t1254 + t1257) * qJD(4) + t154 * qJD(5) + t1424 - t1012, -t1000 + t907, t41 * qJD(3) + (t1444 * t807 + t419 * t797) * qJD(4) + t49 * qJD(5) + t254 * qJD(6) + t1015; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t934, t984, t1478, t177, t801, -t938 + t1102, -t908 - t939, -t999 + t1102, t136 * qJD(3) + t154 * qJD(4) + qJD(5) * t1019 + t1313 + t1424, t908 - t998, t43 * qJD(3) + t49 * qJD(4) + (-pkin(5) * t1444 + t419 * qJ(6)) * qJD(5) + t1444 * qJD(6) + t1014; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t936, t1478, t336, -t940 - t1102; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t919, t918 (-t1132 * t826 + t1175) * t829 (-t1087 - t1177) * t829, t802, -qJD(2) * t642 + t1183, -qJD(2) * t641 - t1184, t347, -t276, t501, t500, t802, qJD(2) * t191 + qJD(4) * t297 + t1196, qJD(2) * t190 + qJD(4) * t299 - t1195, -t146, -t68, t1467, t220, t802, qJD(2) * t51 + t1200 + t1384, qJD(2) * t52 - t1199 + t991, -qJD(2) * t29 - t1318 + t1384, qJD(2) * t7 + qJD(4) * t113 + qJD(5) * t115 - t1299, qJD(2) * t27 - t1162 + t1268 - t991, qJD(2) * t1 + qJD(4) * t16 + qJD(5) * t14 - qJD(6) * t81 - t1308; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t930, -t1388, t828 * t1131, -t826 * t1131, t800, t957, t958, t368, -t295, t579, t578, t800, qJD(4) * t645 - t982, t983, -t159, -t75, t1473, t1483, t800, t997 - t1230, t976 + t996, t1003 - t1230, qJD(4) * t129 + qJD(5) * t137 - t1013, t1002 - t976, qJD(4) * t42 + qJD(5) * t44 + qJD(6) * t257 - t1016; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4) * t1326, -pkin(3) * t1064, 0, 0, 0, 0, 0, t593, -t1136 + t1140, t593, 0, -t1140 + t1130, qJD(4) * t474 + qJD(5) * t463 + t697; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1128 * t1326 + t981, t1149 + (-t1065 - t1064) * pkin(3), 0, 0, 0, 0, 0, t1419, -t1136 - t1447, t1419, t988, t1130 + t1447 (t736 * t807 + t737 * t797) * qJD(4) + t323 * qJD(5) + t628 * qJD(6) + t913; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1420, t1448, t1420, t987, qJD(6) - t1448, t323 * qJD(4) + (-pkin(5) * t725 - qJ(6) * t724) * qJD(5) + t697 + t914; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1451, qJD(4) * t628 + (qJD(3) + qJD(5)) * t710 + t1395; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t347, -t276, t501, t500, t802, qJD(2) * t289 - qJD(3) * t297 + t1193, qJD(2) * t290 - qJD(3) * t299 - t1194, -t146, -t68, t1467, t220, t802, qJD(2) * t60 + t1202 + t1391, qJD(2) * t59 - t1201 + t978, -qJD(2) * t33 - t1319 + t1391, qJD(2) * t9 - qJD(3) * t113 + qJD(5) * t127 - t1300, qJD(2) * t31 - t1162 + t1271 - t978, qJD(2) * t3 - qJD(3) * t16 + qJD(5) * t18 - qJD(6) * t83 - t1311; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t368, -t295, t579, t578, t800, -qJD(3) * t645 + t933, t932, -t159, -t75, t1473, t1483, t800, t995 + t1491, -t1495 + t994, t1001 + t1491, -qJD(3) * t129 + qJD(5) * t155 + t1012, t1000 + t1495, -qJD(3) * t42 + qJD(5) * t50 - t1015; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t1326 - t981, pkin(3) * t1065 - t1149, 0, 0, 0, 0, 0, t1417, t1450, t1417, -t988, qJD(6) - t1450, qJD(5) * t324 - qJD(6) * t661 - t913; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1116, -t814, -t1116, 0, t1129, qJD(5) * t691 + t786; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t45, -t814 - t1049, t45, t986, t1049 + t1129 (-pkin(5) * t824 + qJ(6) * t1338) * t1322 + t786 + t895; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1451, t1127 * t797 + t1400; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t935, -t985, t1467, t220, t802, qJD(2) * t77 + t1197 + t1390, qJD(2) * t78 - t1198 + t992, qJD(2) * t37 - t1317 + t1390, -qJD(2) * t12 - qJD(3) * t115 - qJD(4) * t127 - t1301, qJD(2) * t35 - t1162 + t1265 - t992, -qJ(6) * t1162 + qJD(2) * t5 - qJD(3) * t14 - qJD(4) * t18 - t1303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t934, -t984, t1473, t1483, t800, t938 + t1491, t939 - t1495, t999 + t1491, -qJD(3) * t137 - qJD(4) * t155 - t1313, t1495 + t998, -qJD(3) * t44 - qJD(4) * t50 - t1014; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1416, t1449, t1416, -t987, qJD(6) - t1449, -qJD(4) * t324 + t819 - t914; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, t1049, t46, -t986, qJD(6) - t1049, t819 - t895; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(6), t819; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1451, t723; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t271 + t1088, t1467, t1389, qJD(2) * t47 + qJD(3) * t81 + qJD(4) * t83 + t1205 * t829 + t1159; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t936, t1473, -t336, t940 - t1491; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1451, -qJD(3) * t710 + qJD(4) * t661 - t1205 - t1395; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1451, -qJD(4) * t797 - t1205 - t1400; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1451, -t723; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t69;