% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RPPRP2
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d4,theta2,theta3]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:49
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RPPRP2_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRP2_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRP2_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPPRP2_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRP2_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRP2_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:49:53
% EndTime: 2019-12-31 17:49:55
% DurationCPUTime: 2.67s
% Computational Cost: add. (4796->172), mult. (10742->215), div. (0->0), fcn. (7047->8), ass. (0->118)
t1444 = sin(pkin(8));
t1446 = cos(pkin(8));
t1448 = sin(qJ(4));
t1450 = cos(qJ(4));
t1411 = (-t1444 * t1448 + t1446 * t1450) * qJD(1);
t1460 = t1444 * t1450 + t1446 * t1448;
t1413 = t1460 * qJD(1);
t1476 = t1413 * t1411;
t1388 = -qJDD(4) + t1476;
t1408 = t1413 ^ 2;
t1452 = qJD(4) ^ 2;
t1482 = -t1408 - t1452;
t1364 = t1388 * t1448 + t1450 * t1482;
t1366 = t1388 * t1450 - t1448 * t1482;
t1336 = t1364 * t1444 - t1366 * t1446;
t1445 = sin(pkin(7));
t1447 = cos(pkin(7));
t1410 = t1460 * qJDD(1);
t1491 = 2 * qJD(4);
t1458 = t1411 * t1491 + t1410;
t1318 = t1336 * t1445 + t1447 * t1458;
t1319 = t1336 * t1447 - t1445 * t1458;
t1449 = sin(qJ(1));
t1451 = cos(qJ(1));
t1503 = t1318 * t1451 + t1319 * t1449;
t1502 = t1318 * t1449 - t1319 * t1451;
t1436 = t1446 * qJDD(1);
t1467 = t1444 * qJDD(1);
t1462 = t1436 * t1450 - t1448 * t1467;
t1477 = t1413 * qJD(4);
t1389 = -t1462 + 0.2e1 * t1477;
t1387 = qJDD(4) + t1476;
t1391 = t1411 ^ 2;
t1483 = -t1391 - t1452;
t1488 = -t1387 * t1448 + t1450 * t1483;
t1489 = t1387 * t1450 + t1448 * t1483;
t1493 = -t1444 * t1489 + t1446 * t1488;
t1498 = t1389 * t1445 + t1447 * t1493;
t1499 = -t1389 * t1447 + t1445 * t1493;
t1501 = -t1449 * t1499 + t1451 * t1498;
t1500 = t1449 * t1498 + t1451 * t1499;
t1344 = t1364 * t1446 + t1366 * t1444;
t1373 = t1408 + t1391;
t1480 = t1410 * t1448 + t1450 * t1462;
t1481 = -t1410 * t1450 + t1448 * t1462;
t1487 = -t1444 * t1481 + t1446 * t1480;
t1494 = -t1373 * t1445 + t1447 * t1487;
t1495 = t1373 * t1447 + t1445 * t1487;
t1497 = -t1449 * t1495 + t1451 * t1494;
t1496 = t1449 * t1494 + t1451 * t1495;
t1492 = t1444 * t1488 + t1446 * t1489;
t1428 = -g(1) * t1451 - g(2) * t1449;
t1453 = qJD(1) ^ 2;
t1420 = -pkin(1) * t1453 + t1428;
t1427 = g(1) * t1449 - g(2) * t1451;
t1459 = qJDD(1) * pkin(1) + t1427;
t1393 = t1420 * t1447 + t1445 * t1459;
t1490 = -pkin(2) * t1453 + qJDD(1) * qJ(3) + 0.2e1 * qJD(1) * qJD(3) + t1393;
t1486 = t1444 * t1480 + t1446 * t1481;
t1438 = t1446 ^ 2;
t1454 = t1444 ^ 2;
t1468 = t1438 + t1454;
t1424 = t1468 * t1453;
t1475 = t1438 * t1453;
t1441 = -g(3) + qJDD(2);
t1473 = t1446 * t1441;
t1472 = t1446 * t1453;
t1469 = t1454 * t1453;
t1369 = t1444 * t1441 + t1446 * t1490;
t1362 = -pkin(3) * t1475 + pkin(6) * t1436 + t1369;
t1457 = t1473 + (pkin(3) * t1472 - pkin(6) * qJDD(1) - t1490) * t1444;
t1340 = t1362 * t1450 + t1448 * t1457;
t1466 = t1445 * qJDD(1);
t1465 = t1447 * qJDD(1);
t1339 = -t1362 * t1448 + t1450 * t1457;
t1392 = -t1445 * t1420 + t1447 * t1459;
t1422 = -t1447 * t1453 - t1466;
t1423 = -t1445 * t1453 + t1465;
t1463 = t1422 * t1451 - t1423 * t1449;
t1461 = t1422 * t1449 + t1423 * t1451;
t1375 = -qJDD(1) * pkin(2) - qJ(3) * t1453 + qJDD(3) - t1392;
t1367 = -pkin(3) * t1436 + t1375 + (-t1469 - t1475) * pkin(6);
t1429 = t1444 * t1472;
t1426 = -qJDD(1) * t1449 - t1451 * t1453;
t1425 = qJDD(1) * t1451 - t1449 * t1453;
t1421 = t1468 * qJDD(1);
t1419 = t1446 * t1424;
t1418 = t1444 * t1424;
t1399 = -t1419 * t1447 - t1436 * t1445;
t1398 = t1418 * t1447 + t1444 * t1466;
t1397 = -t1419 * t1445 + t1446 * t1465;
t1396 = t1418 * t1445 - t1444 * t1465;
t1395 = t1421 * t1447 - t1424 * t1445;
t1394 = t1421 * t1445 + t1424 * t1447;
t1382 = -pkin(4) * t1411 - qJ(5) * t1413;
t1368 = -t1444 * t1490 + t1473;
t1360 = -t1392 * t1445 + t1393 * t1447;
t1359 = t1392 * t1447 + t1393 * t1445;
t1348 = -t1368 * t1444 + t1369 * t1446;
t1347 = t1368 * t1446 + t1369 * t1444;
t1332 = t1348 * t1447 + t1375 * t1445;
t1331 = t1348 * t1445 - t1375 * t1447;
t1326 = -(t1462 - t1477) * pkin(4) + (pkin(4) * qJD(4) - (2 * qJD(5))) * t1413 + t1367 - t1458 * qJ(5);
t1323 = -qJDD(4) * pkin(4) - qJ(5) * t1452 + t1382 * t1413 + qJDD(5) - t1339;
t1322 = -pkin(4) * t1452 + qJDD(4) * qJ(5) + (qJD(5) * t1491) + t1382 * t1411 + t1340;
t1317 = -t1339 * t1448 + t1340 * t1450;
t1316 = t1339 * t1450 + t1340 * t1448;
t1315 = t1322 * t1450 + t1323 * t1448;
t1314 = t1322 * t1448 - t1323 * t1450;
t1313 = -t1316 * t1444 + t1317 * t1446;
t1312 = t1316 * t1446 + t1317 * t1444;
t1311 = t1313 * t1447 + t1367 * t1445;
t1310 = t1313 * t1445 - t1367 * t1447;
t1309 = -t1314 * t1444 + t1315 * t1446;
t1308 = t1314 * t1446 + t1315 * t1444;
t1307 = t1309 * t1447 + t1326 * t1445;
t1306 = t1309 * t1445 - t1326 * t1447;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1426, -t1425, 0, -t1427 * t1449 + t1428 * t1451, 0, 0, 0, 0, 0, 0, t1463, -t1461, 0, -t1359 * t1449 + t1360 * t1451, 0, 0, 0, 0, 0, 0, -t1397 * t1449 + t1399 * t1451, -t1396 * t1449 + t1398 * t1451, -t1394 * t1449 + t1395 * t1451, -t1331 * t1449 + t1332 * t1451, 0, 0, 0, 0, 0, 0, t1501, t1502, t1497, -t1310 * t1449 + t1311 * t1451, 0, 0, 0, 0, 0, 0, t1501, t1497, -t1502, -t1306 * t1449 + t1307 * t1451; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1425, t1426, 0, t1427 * t1451 + t1428 * t1449, 0, 0, 0, 0, 0, 0, t1461, t1463, 0, t1359 * t1451 + t1360 * t1449, 0, 0, 0, 0, 0, 0, t1397 * t1451 + t1399 * t1449, t1396 * t1451 + t1398 * t1449, t1394 * t1451 + t1395 * t1449, t1331 * t1451 + t1332 * t1449, 0, 0, 0, 0, 0, 0, t1500, -t1503, t1496, t1310 * t1451 + t1311 * t1449, 0, 0, 0, 0, 0, 0, t1500, t1496, t1503, t1306 * t1451 + t1307 * t1449; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1441, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1347, 0, 0, 0, 0, 0, 0, t1492, t1344, t1486, t1312, 0, 0, 0, 0, 0, 0, t1492, t1486, -t1344, t1308; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1453, -qJDD(1), 0, t1428, 0, 0, 0, 0, 0, 0, t1422, -t1423, 0, t1360, 0, 0, 0, 0, 0, 0, t1399, t1398, t1395, t1332, 0, 0, 0, 0, 0, 0, t1498, -t1319, t1494, t1311, 0, 0, 0, 0, 0, 0, t1498, t1494, t1319, t1307; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1453, 0, t1427, 0, 0, 0, 0, 0, 0, t1423, t1422, 0, t1359, 0, 0, 0, 0, 0, 0, t1397, t1396, t1394, t1331, 0, 0, 0, 0, 0, 0, t1499, -t1318, t1495, t1310, 0, 0, 0, 0, 0, 0, t1499, t1495, t1318, t1306; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1441, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1347, 0, 0, 0, 0, 0, 0, t1492, t1344, t1486, t1312, 0, 0, 0, 0, 0, 0, t1492, t1486, -t1344, t1308; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1453, -qJDD(1), 0, t1393, 0, 0, 0, 0, 0, 0, -t1419, t1418, t1421, t1348, 0, 0, 0, 0, 0, 0, t1493, -t1336, t1487, t1313, 0, 0, 0, 0, 0, 0, t1493, t1487, t1336, t1309; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1453, 0, t1392, 0, 0, 0, 0, 0, 0, t1436, -t1467, t1424, -t1375, 0, 0, 0, 0, 0, 0, -t1389, -t1458, t1373, -t1367, 0, 0, 0, 0, 0, 0, -t1389, t1373, t1458, -t1326; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1441, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1347, 0, 0, 0, 0, 0, 0, t1492, t1344, t1486, t1312, 0, 0, 0, 0, 0, 0, t1492, t1486, -t1344, t1308; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1475, t1429, t1436, t1369, 0, 0, 0, 0, 0, 0, t1488, t1366, t1480, t1317, 0, 0, 0, 0, 0, 0, t1488, t1480, -t1366, t1315; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1429, -t1469, -t1467, t1368, 0, 0, 0, 0, 0, 0, t1489, t1364, t1481, t1316, 0, 0, 0, 0, 0, 0, t1489, t1481, -t1364, t1314; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1436, t1467, -t1424, t1375, 0, 0, 0, 0, 0, 0, t1389, t1458, -t1373, t1367, 0, 0, 0, 0, 0, 0, t1389, -t1373, -t1458, t1326; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1483, t1388, t1462, t1340, 0, 0, 0, 0, 0, 0, t1483, t1462, -t1388, t1322; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1387, t1482, -t1410, t1339, 0, 0, 0, 0, 0, 0, t1387, -t1410, -t1482, -t1323; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1389, t1458, -t1373, t1367, 0, 0, 0, 0, 0, 0, t1389, -t1373, -t1458, t1326; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1483, t1462, -t1388, t1322; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1389, -t1373, -t1458, t1326; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1387, t1410, t1482, t1323;];
f_new_reg = t1;
