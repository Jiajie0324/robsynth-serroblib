% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RRRPR3
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
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:43
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RRRPR3_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR3_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR3_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRPR3_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRPR3_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR3_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:43:48
% EndTime: 2019-12-05 18:43:51
% DurationCPUTime: 3.22s
% Computational Cost: add. (23366->217), mult. (31717->314), div. (0->0), fcn. (21339->10), ass. (0->179)
t1480 = qJD(1) + qJD(2);
t1477 = t1480 ^ 2;
t1478 = qJDD(1) + qJDD(2);
t1486 = sin(qJ(2));
t1490 = cos(qJ(2));
t1457 = t1486 * t1477 - t1490 * t1478;
t1487 = sin(qJ(1));
t1491 = cos(qJ(1));
t1497 = -t1490 * t1477 - t1486 * t1478;
t1527 = t1487 * t1457 + t1491 * t1497;
t1526 = t1491 * t1457 - t1487 * t1497;
t1479 = qJD(3) + qJD(5);
t1523 = qJD(5) + t1479;
t1482 = sin(pkin(9));
t1483 = cos(pkin(9));
t1489 = cos(qJ(3));
t1509 = t1480 * t1489;
t1485 = sin(qJ(3));
t1510 = t1480 * t1485;
t1443 = t1482 * t1510 - t1483 * t1509;
t1445 = (t1482 * t1489 + t1483 * t1485) * t1480;
t1484 = sin(qJ(5));
t1488 = cos(qJ(5));
t1417 = t1488 * t1443 + t1484 * t1445;
t1522 = t1417 ^ 2;
t1419 = -t1484 * t1443 + t1488 * t1445;
t1521 = t1419 ^ 2;
t1520 = t1443 ^ 2;
t1519 = t1445 ^ 2;
t1518 = t1479 ^ 2;
t1517 = t1489 ^ 2;
t1516 = -2 * qJD(4);
t1515 = qJD(3) * t1443;
t1514 = qJD(3) * t1445;
t1513 = t1419 * t1417;
t1512 = t1445 * t1443;
t1511 = t1477 * t1485;
t1470 = t1487 * g(2) - t1491 * g(3);
t1493 = qJD(1) ^ 2;
t1460 = -t1493 * pkin(1) + t1470;
t1471 = t1491 * g(2) + t1487 * g(3);
t1495 = qJDD(1) * pkin(1) + t1471;
t1432 = t1490 * t1460 + t1486 * t1495;
t1426 = -t1477 * pkin(2) + t1478 * pkin(7) + t1432;
t1508 = t1485 * t1426;
t1507 = t1485 * t1478;
t1506 = t1489 * t1478;
t1505 = t1517 * t1477;
t1504 = qJD(5) - t1479;
t1503 = -qJDD(3) - qJDD(5);
t1481 = t1485 ^ 2;
t1502 = t1481 + t1517;
t1501 = qJD(3) * t1510;
t1500 = qJD(3) * t1509;
t1449 = t1500 + t1507;
t1397 = qJDD(3) * pkin(3) - t1449 * qJ(4) - t1508 + (qJD(3) * t1480 * qJ(4) + pkin(3) * t1511 - g(1)) * t1489;
t1416 = -t1485 * g(1) + t1489 * t1426;
t1461 = qJD(3) * pkin(3) - qJ(4) * t1510;
t1496 = -t1501 + t1506;
t1398 = -pkin(3) * t1505 + t1496 * qJ(4) - qJD(3) * t1461 + t1416;
t1368 = t1482 * t1397 + t1483 * t1398 + t1443 * t1516;
t1428 = t1483 * t1449 + t1482 * t1496;
t1408 = -t1428 - t1515;
t1498 = t1482 * t1449 - t1483 * t1496;
t1499 = -t1484 * t1428 - t1488 * t1498;
t1431 = -t1486 * t1460 + t1490 * t1495;
t1422 = qJDD(3) - t1512;
t1367 = t1483 * t1397 - t1482 * t1398 + t1445 * t1516;
t1425 = -t1478 * pkin(2) - t1477 * pkin(7) - t1431;
t1494 = -t1488 * t1428 + t1484 * t1498;
t1399 = -t1496 * pkin(3) - qJ(4) * t1505 + t1461 * t1510 + qJDD(4) + t1425;
t1492 = qJD(3) ^ 2;
t1469 = t1489 * t1511;
t1468 = -t1492 - t1505;
t1467 = -t1481 * t1477 - t1492;
t1465 = -t1491 * qJDD(1) + t1487 * t1493;
t1464 = t1487 * qJDD(1) + t1491 * t1493;
t1463 = -qJDD(3) + t1469;
t1462 = qJDD(3) + t1469;
t1459 = t1502 * t1477;
t1454 = t1502 * t1478;
t1450 = -0.2e1 * t1501 + t1506;
t1448 = 0.2e1 * t1500 + t1507;
t1438 = -t1492 - t1519;
t1437 = qJD(3) * pkin(4) - t1445 * pkin(8);
t1436 = t1489 * t1463 - t1485 * t1467;
t1435 = -t1485 * t1462 + t1489 * t1468;
t1434 = t1485 * t1463 + t1489 * t1467;
t1433 = t1489 * t1462 + t1485 * t1468;
t1430 = t1490 * t1454 - t1486 * t1459;
t1429 = t1486 * t1454 + t1490 * t1459;
t1423 = -qJDD(3) - t1512;
t1421 = -t1492 - t1520;
t1415 = -t1489 * g(1) - t1508;
t1413 = t1490 * t1436 + t1486 * t1448;
t1412 = t1490 * t1435 - t1486 * t1450;
t1411 = t1486 * t1436 - t1490 * t1448;
t1410 = t1486 * t1435 + t1490 * t1450;
t1409 = -t1518 - t1521;
t1407 = t1428 - t1515;
t1406 = -t1498 + t1514;
t1405 = t1498 + t1514;
t1404 = -t1519 - t1520;
t1403 = -t1486 * t1431 + t1490 * t1432;
t1402 = t1490 * t1431 + t1486 * t1432;
t1401 = t1483 * t1423 - t1482 * t1438;
t1400 = t1482 * t1423 + t1483 * t1438;
t1393 = t1483 * t1421 - t1482 * t1422;
t1392 = t1482 * t1421 + t1483 * t1422;
t1391 = t1503 - t1513;
t1390 = -t1503 - t1513;
t1389 = -t1518 - t1522;
t1388 = -t1485 * t1415 + t1489 * t1416;
t1387 = t1489 * t1415 + t1485 * t1416;
t1386 = t1483 * t1406 - t1482 * t1408;
t1385 = t1482 * t1406 + t1483 * t1408;
t1384 = -t1521 - t1522;
t1383 = t1490 * t1388 + t1486 * t1425;
t1382 = t1486 * t1388 - t1490 * t1425;
t1381 = -t1485 * t1400 + t1489 * t1401;
t1380 = t1489 * t1400 + t1485 * t1401;
t1379 = t1488 * t1391 - t1484 * t1409;
t1378 = t1484 * t1391 + t1488 * t1409;
t1377 = t1504 * t1417 + t1494;
t1376 = -t1523 * t1417 - t1494;
t1375 = -t1504 * t1419 + t1499;
t1374 = t1523 * t1419 - t1499;
t1373 = t1498 * pkin(4) - t1520 * pkin(8) + t1445 * t1437 + t1399;
t1372 = -t1485 * t1392 + t1489 * t1393;
t1371 = t1489 * t1392 + t1485 * t1393;
t1370 = t1488 * t1389 - t1484 * t1390;
t1369 = t1484 * t1389 + t1488 * t1390;
t1366 = t1490 * t1381 + t1486 * t1407;
t1365 = t1486 * t1381 - t1490 * t1407;
t1364 = t1490 * t1372 + t1486 * t1405;
t1363 = t1486 * t1372 - t1490 * t1405;
t1362 = -t1485 * t1385 + t1489 * t1386;
t1361 = t1489 * t1385 + t1485 * t1386;
t1360 = -t1520 * pkin(4) - t1498 * pkin(8) - qJD(3) * t1437 + t1368;
t1359 = t1422 * pkin(4) + t1408 * pkin(8) + t1367;
t1358 = -t1482 * t1378 + t1483 * t1379;
t1357 = t1483 * t1378 + t1482 * t1379;
t1356 = t1490 * t1362 + t1486 * t1404;
t1355 = t1486 * t1362 - t1490 * t1404;
t1354 = t1488 * t1375 - t1484 * t1377;
t1353 = t1484 * t1375 + t1488 * t1377;
t1352 = -t1482 * t1369 + t1483 * t1370;
t1351 = t1483 * t1369 + t1482 * t1370;
t1350 = -t1482 * t1367 + t1483 * t1368;
t1349 = t1483 * t1367 + t1482 * t1368;
t1348 = t1484 * t1359 + t1488 * t1360;
t1347 = t1488 * t1359 - t1484 * t1360;
t1346 = -t1485 * t1357 + t1489 * t1358;
t1345 = t1489 * t1357 + t1485 * t1358;
t1344 = -t1482 * t1353 + t1483 * t1354;
t1343 = t1483 * t1353 + t1482 * t1354;
t1342 = -t1485 * t1351 + t1489 * t1352;
t1341 = t1489 * t1351 + t1485 * t1352;
t1340 = -t1485 * t1349 + t1489 * t1350;
t1339 = t1489 * t1349 + t1485 * t1350;
t1338 = t1490 * t1346 + t1486 * t1376;
t1337 = t1486 * t1346 - t1490 * t1376;
t1336 = t1490 * t1340 + t1486 * t1399;
t1335 = t1486 * t1340 - t1490 * t1399;
t1334 = t1490 * t1342 + t1486 * t1374;
t1333 = t1486 * t1342 - t1490 * t1374;
t1332 = -t1484 * t1347 + t1488 * t1348;
t1331 = t1488 * t1347 + t1484 * t1348;
t1330 = -t1485 * t1343 + t1489 * t1344;
t1329 = t1489 * t1343 + t1485 * t1344;
t1328 = t1490 * t1330 + t1486 * t1384;
t1327 = t1486 * t1330 - t1490 * t1384;
t1326 = -t1482 * t1331 + t1483 * t1332;
t1325 = t1483 * t1331 + t1482 * t1332;
t1324 = -t1485 * t1325 + t1489 * t1326;
t1323 = t1489 * t1325 + t1485 * t1326;
t1322 = t1490 * t1324 + t1486 * t1373;
t1321 = t1486 * t1324 - t1490 * t1373;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1433, t1434, 0, t1387, 0, 0, 0, 0, 0, 0, t1371, t1380, t1361, t1339, 0, 0, 0, 0, 0, 0, t1341, t1345, t1329, t1323; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1465, t1464, 0, -t1487 * t1470 - t1491 * t1471, 0, 0, 0, 0, 0, 0, t1526, -t1527, 0, -t1491 * t1402 - t1487 * t1403, 0, 0, 0, 0, 0, 0, -t1491 * t1410 - t1487 * t1412, -t1491 * t1411 - t1487 * t1413, -t1491 * t1429 - t1487 * t1430, -t1491 * t1382 - t1487 * t1383, 0, 0, 0, 0, 0, 0, -t1491 * t1363 - t1487 * t1364, -t1491 * t1365 - t1487 * t1366, -t1491 * t1355 - t1487 * t1356, -t1491 * t1335 - t1487 * t1336, 0, 0, 0, 0, 0, 0, -t1491 * t1333 - t1487 * t1334, -t1491 * t1337 - t1487 * t1338, -t1491 * t1327 - t1487 * t1328, -t1491 * t1321 - t1487 * t1322; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t1464, t1465, 0, t1491 * t1470 - t1487 * t1471, 0, 0, 0, 0, 0, 0, t1527, t1526, 0, -t1487 * t1402 + t1491 * t1403, 0, 0, 0, 0, 0, 0, -t1487 * t1410 + t1491 * t1412, -t1487 * t1411 + t1491 * t1413, -t1487 * t1429 + t1491 * t1430, -t1487 * t1382 + t1491 * t1383, 0, 0, 0, 0, 0, 0, -t1487 * t1363 + t1491 * t1364, -t1487 * t1365 + t1491 * t1366, -t1487 * t1355 + t1491 * t1356, -t1487 * t1335 + t1491 * t1336, 0, 0, 0, 0, 0, 0, -t1487 * t1333 + t1491 * t1334, -t1487 * t1337 + t1491 * t1338, -t1487 * t1327 + t1491 * t1328, -t1487 * t1321 + t1491 * t1322; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1493, -qJDD(1), 0, t1470, 0, 0, 0, 0, 0, 0, t1497, t1457, 0, t1403, 0, 0, 0, 0, 0, 0, t1412, t1413, t1430, t1383, 0, 0, 0, 0, 0, 0, t1364, t1366, t1356, t1336, 0, 0, 0, 0, 0, 0, t1334, t1338, t1328, t1322; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1493, 0, t1471, 0, 0, 0, 0, 0, 0, -t1457, t1497, 0, t1402, 0, 0, 0, 0, 0, 0, t1410, t1411, t1429, t1382, 0, 0, 0, 0, 0, 0, t1363, t1365, t1355, t1335, 0, 0, 0, 0, 0, 0, t1333, t1337, t1327, t1321; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1433, t1434, 0, t1387, 0, 0, 0, 0, 0, 0, t1371, t1380, t1361, t1339, 0, 0, 0, 0, 0, 0, t1341, t1345, t1329, t1323; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1477, -t1478, 0, t1432, 0, 0, 0, 0, 0, 0, t1435, t1436, t1454, t1388, 0, 0, 0, 0, 0, 0, t1372, t1381, t1362, t1340, 0, 0, 0, 0, 0, 0, t1342, t1346, t1330, t1324; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1478, -t1477, 0, t1431, 0, 0, 0, 0, 0, 0, t1450, -t1448, t1459, -t1425, 0, 0, 0, 0, 0, 0, -t1405, -t1407, -t1404, -t1399, 0, 0, 0, 0, 0, 0, -t1374, -t1376, -t1384, -t1373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1433, t1434, 0, t1387, 0, 0, 0, 0, 0, 0, t1371, t1380, t1361, t1339, 0, 0, 0, 0, 0, 0, t1341, t1345, t1329, t1323; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1468, t1463, t1506, t1416, 0, 0, 0, 0, 0, 0, t1393, t1401, t1386, t1350, 0, 0, 0, 0, 0, 0, t1352, t1358, t1344, t1326; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1462, t1467, -t1507, t1415, 0, 0, 0, 0, 0, 0, t1392, t1400, t1385, t1349, 0, 0, 0, 0, 0, 0, t1351, t1357, t1343, t1325; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1450, t1448, -t1459, t1425, 0, 0, 0, 0, 0, 0, t1405, t1407, t1404, t1399, 0, 0, 0, 0, 0, 0, t1374, t1376, t1384, t1373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1421, t1423, t1406, t1368, 0, 0, 0, 0, 0, 0, t1370, t1379, t1354, t1332; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1422, t1438, t1408, t1367, 0, 0, 0, 0, 0, 0, t1369, t1378, t1353, t1331; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1405, t1407, t1404, t1399, 0, 0, 0, 0, 0, 0, t1374, t1376, t1384, t1373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1389, t1391, t1375, t1348; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1390, t1409, t1377, t1347; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1374, t1376, t1384, t1373;];
f_new_reg = t1;
