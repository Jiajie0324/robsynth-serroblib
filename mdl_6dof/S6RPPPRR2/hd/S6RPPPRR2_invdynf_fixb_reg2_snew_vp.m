% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPPPRR2
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
%   pkin=[a2,a3,a4,a5,a6,d1,d5,d6,theta2,theta4]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 13:37
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPPPRR2_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPPRR2_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPPRR2_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPPRR2_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPPRR2_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPPRR2_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 13:37:03
% EndTime: 2019-05-05 13:37:06
% DurationCPUTime: 3.59s
% Computational Cost: add. (12254->242), mult. (26156->310), div. (0->0), fcn. (17828->10), ass. (0->172)
t1533 = sin(qJ(1));
t1536 = cos(qJ(1));
t1505 = t1533 * g(1) - t1536 * g(2);
t1497 = qJDD(1) * pkin(1) + t1505;
t1506 = -t1536 * g(1) - t1533 * g(2);
t1538 = qJD(1) ^ 2;
t1498 = -t1538 * pkin(1) + t1506;
t1526 = sin(pkin(9));
t1528 = cos(pkin(9));
t1471 = t1528 * t1497 - t1526 * t1498;
t1463 = -qJDD(1) * pkin(2) - t1538 * qJ(3) + qJDD(3) - t1471;
t1554 = -qJDD(1) * qJ(4) - (2 * qJD(4) * qJD(1)) + t1463;
t1525 = sin(pkin(10));
t1527 = cos(pkin(10));
t1532 = sin(qJ(5));
t1535 = cos(qJ(5));
t1487 = (-t1525 * t1532 + t1527 * t1535) * qJD(1);
t1571 = t1487 * qJD(5);
t1546 = t1525 * t1535 + t1527 * t1532;
t1581 = t1546 * qJDD(1);
t1584 = -qJDD(6) - t1571 - t1581;
t1485 = t1546 * qJD(1);
t1518 = t1525 ^ 2;
t1519 = t1527 ^ 2;
t1561 = t1518 + t1519;
t1583 = t1561 * t1538;
t1483 = qJD(6) + t1485;
t1582 = qJD(6) + t1483;
t1560 = t1526 * qJDD(1);
t1500 = t1528 * t1538 + t1560;
t1559 = t1528 * qJDD(1);
t1501 = t1526 * t1538 - t1559;
t1550 = t1533 * t1500 + t1536 * t1501;
t1552 = t1536 * t1500 - t1533 * t1501;
t1580 = -t1538 * qJ(4) + qJDD(4);
t1531 = sin(qJ(6));
t1534 = cos(qJ(6));
t1479 = -t1534 * qJD(5) + t1531 * t1487;
t1578 = t1479 ^ 2;
t1481 = t1531 * qJD(5) + t1534 * t1487;
t1577 = t1481 ^ 2;
t1576 = t1483 ^ 2;
t1575 = t1485 ^ 2;
t1574 = t1487 ^ 2;
t1573 = t1481 * t1479;
t1572 = t1485 * qJD(5);
t1570 = t1487 * t1485;
t1569 = t1518 * t1538;
t1522 = -g(3) + qJDD(2);
t1568 = t1525 * t1522;
t1567 = t1525 * t1538;
t1562 = qJD(6) - t1483;
t1455 = t1527 * t1522 + t1525 * t1554;
t1511 = t1525 * qJDD(1);
t1446 = -pkin(4) * t1569 - pkin(7) * t1511 + t1455;
t1541 = -t1568 + (-pkin(4) * t1567 - pkin(7) * qJDD(1) + t1554) * t1527;
t1423 = t1535 * t1446 + t1532 * t1541;
t1472 = t1526 * t1497 + t1528 * t1498;
t1512 = t1527 * qJDD(1);
t1557 = 0.2e1 * t1571;
t1556 = t1527 * t1567;
t1555 = t1525 * pkin(4) + qJ(3);
t1422 = -t1532 * t1446 + t1535 * t1541;
t1547 = -t1532 * t1511 + t1512 * t1535;
t1470 = t1547 - t1572;
t1553 = t1534 * qJDD(5) - t1531 * t1470;
t1545 = -t1531 * qJDD(5) - t1534 * t1470;
t1544 = -t1538 * pkin(2) + (2 * qJD(3) * qJD(1)) + t1472;
t1462 = qJDD(1) * qJ(3) + t1544;
t1542 = -pkin(7) * t1583 + t1544 + t1580;
t1537 = qJD(5) ^ 2;
t1504 = -t1533 * qJDD(1) - t1536 * t1538;
t1503 = t1536 * qJDD(1) - t1533 * t1538;
t1499 = t1561 * qJDD(1);
t1496 = t1525 * t1583;
t1495 = t1527 * t1583;
t1482 = -t1537 - t1574;
t1478 = -t1526 * t1495 + t1527 * t1559;
t1477 = -t1526 * t1496 + t1525 * t1559;
t1476 = t1528 * t1495 + t1512 * t1526;
t1475 = t1528 * t1496 + t1525 * t1560;
t1474 = -t1526 * t1499 - t1528 * t1583;
t1473 = t1528 * t1499 - t1526 * t1583;
t1469 = t1547 - 0.2e1 * t1572;
t1468 = t1581 + t1557;
t1467 = -qJDD(5) - t1570;
t1466 = qJDD(5) - t1570;
t1465 = -t1537 - t1575;
t1464 = t1485 * pkin(5) - t1487 * pkin(8);
t1459 = t1462 + t1580;
t1457 = -t1574 - t1575;
t1454 = t1527 * t1554 - t1568;
t1453 = -t1576 - t1577;
t1452 = t1535 * t1467 - t1532 * t1482;
t1451 = t1532 * t1467 + t1535 * t1482;
t1450 = t1555 * qJDD(1) + t1542;
t1449 = -t1576 - t1578;
t1448 = -t1526 * t1471 + t1528 * t1472;
t1447 = t1528 * t1471 + t1526 * t1472;
t1445 = -t1577 - t1578;
t1444 = t1532 * t1547 - t1535 * t1581;
t1443 = -t1532 * t1581 - t1535 * t1547;
t1441 = t1535 * t1465 - t1532 * t1466;
t1440 = t1532 * t1465 + t1535 * t1466;
t1437 = -t1573 + t1584;
t1436 = -t1573 - t1584;
t1435 = t1528 * t1462 + t1526 * t1463;
t1434 = t1526 * t1462 - t1528 * t1463;
t1433 = t1479 * t1562 + t1545;
t1432 = -t1479 * t1582 - t1545;
t1431 = -t1481 * t1562 + t1553;
t1430 = t1481 * t1582 - t1553;
t1429 = -t1525 * t1454 + t1527 * t1455;
t1428 = t1527 * t1454 + t1525 * t1455;
t1427 = -t1525 * t1451 + t1527 * t1452;
t1426 = t1527 * t1451 + t1525 * t1452;
t1425 = t1534 * t1437 - t1531 * t1453;
t1424 = t1531 * t1437 + t1534 * t1453;
t1421 = -t1525 * t1443 + t1527 * t1444;
t1420 = t1527 * t1443 + t1525 * t1444;
t1419 = -t1531 * t1436 + t1534 * t1449;
t1418 = t1534 * t1436 + t1531 * t1449;
t1417 = -t1525 * t1440 + t1527 * t1441;
t1416 = t1527 * t1440 + t1525 * t1441;
t1415 = t1526 * t1426 + t1528 * t1469;
t1414 = -t1528 * t1426 + t1526 * t1469;
t1413 = pkin(5) * t1557 + (-t1470 + t1572) * pkin(8) + (pkin(5) * t1546 + t1555) * qJDD(1) + t1542;
t1412 = t1526 * t1428 + t1528 * t1459;
t1411 = -t1528 * t1428 + t1526 * t1459;
t1410 = t1526 * t1416 + t1528 * t1468;
t1409 = -t1528 * t1416 + t1526 * t1468;
t1408 = -t1537 * pkin(5) + qJDD(5) * pkin(8) - t1485 * t1464 + t1423;
t1407 = -qJDD(5) * pkin(5) - t1537 * pkin(8) + t1487 * t1464 - t1422;
t1406 = t1526 * t1420 + t1528 * t1457;
t1405 = -t1528 * t1420 + t1526 * t1457;
t1404 = t1534 * t1431 - t1531 * t1433;
t1403 = t1531 * t1431 + t1534 * t1433;
t1402 = t1535 * t1425 + t1532 * t1432;
t1401 = t1532 * t1425 - t1535 * t1432;
t1400 = t1535 * t1419 + t1532 * t1430;
t1399 = t1532 * t1419 - t1535 * t1430;
t1398 = t1535 * t1404 + t1532 * t1445;
t1397 = t1532 * t1404 - t1535 * t1445;
t1396 = -t1532 * t1422 + t1535 * t1423;
t1395 = t1535 * t1422 + t1532 * t1423;
t1394 = t1534 * t1408 + t1531 * t1413;
t1393 = -t1531 * t1408 + t1534 * t1413;
t1392 = -t1525 * t1401 + t1527 * t1402;
t1391 = t1527 * t1401 + t1525 * t1402;
t1390 = -t1525 * t1399 + t1527 * t1400;
t1389 = t1527 * t1399 + t1525 * t1400;
t1388 = -t1525 * t1397 + t1527 * t1398;
t1387 = t1527 * t1397 + t1525 * t1398;
t1386 = -t1525 * t1395 + t1527 * t1396;
t1385 = t1527 * t1395 + t1525 * t1396;
t1384 = t1526 * t1391 + t1528 * t1424;
t1383 = -t1528 * t1391 + t1526 * t1424;
t1382 = t1526 * t1385 + t1528 * t1450;
t1381 = -t1528 * t1385 + t1526 * t1450;
t1380 = t1526 * t1389 + t1528 * t1418;
t1379 = -t1528 * t1389 + t1526 * t1418;
t1378 = -t1531 * t1393 + t1534 * t1394;
t1377 = t1534 * t1393 + t1531 * t1394;
t1376 = t1526 * t1387 + t1528 * t1403;
t1375 = -t1528 * t1387 + t1526 * t1403;
t1374 = t1535 * t1378 + t1532 * t1407;
t1373 = t1532 * t1378 - t1535 * t1407;
t1372 = -t1525 * t1373 + t1527 * t1374;
t1371 = t1527 * t1373 + t1525 * t1374;
t1370 = t1526 * t1371 + t1528 * t1377;
t1369 = -t1528 * t1371 + t1526 * t1377;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1504, -t1503, 0, -t1533 * t1505 + t1536 * t1506, 0, 0, 0, 0, 0, 0, -t1552, t1550, 0, -t1533 * t1447 + t1536 * t1448, 0, 0, 0, 0, 0, 0, 0, t1552, -t1550, -t1533 * t1434 + t1536 * t1435, 0, 0, 0, 0, 0, 0, -t1533 * t1475 + t1536 * t1477, -t1533 * t1476 + t1536 * t1478, -t1533 * t1473 + t1536 * t1474, -t1533 * t1411 + t1536 * t1412, 0, 0, 0, 0, 0, 0, -t1533 * t1409 + t1536 * t1410, -t1533 * t1414 + t1536 * t1415, -t1533 * t1405 + t1536 * t1406, -t1533 * t1381 + t1536 * t1382, 0, 0, 0, 0, 0, 0, -t1533 * t1379 + t1536 * t1380, -t1533 * t1383 + t1536 * t1384, -t1533 * t1375 + t1536 * t1376, -t1533 * t1369 + t1536 * t1370; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1503, t1504, 0, t1536 * t1505 + t1533 * t1506, 0, 0, 0, 0, 0, 0, -t1550, -t1552, 0, t1536 * t1447 + t1533 * t1448, 0, 0, 0, 0, 0, 0, 0, t1550, t1552, t1536 * t1434 + t1533 * t1435, 0, 0, 0, 0, 0, 0, t1536 * t1475 + t1533 * t1477, t1536 * t1476 + t1533 * t1478, t1536 * t1473 + t1533 * t1474, t1536 * t1411 + t1533 * t1412, 0, 0, 0, 0, 0, 0, t1536 * t1409 + t1533 * t1410, t1536 * t1414 + t1533 * t1415, t1536 * t1405 + t1533 * t1406, t1536 * t1381 + t1533 * t1382, 0, 0, 0, 0, 0, 0, t1536 * t1379 + t1533 * t1380, t1536 * t1383 + t1533 * t1384, t1536 * t1375 + t1533 * t1376, t1536 * t1369 + t1533 * t1370; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1522, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1522, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1429, 0, 0, 0, 0, 0, 0, t1417, t1427, t1421, t1386, 0, 0, 0, 0, 0, 0, t1390, t1392, t1388, t1372; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1538, -qJDD(1), 0, t1506, 0, 0, 0, 0, 0, 0, -t1500, t1501, 0, t1448, 0, 0, 0, 0, 0, 0, 0, t1500, -t1501, t1435, 0, 0, 0, 0, 0, 0, t1477, t1478, t1474, t1412, 0, 0, 0, 0, 0, 0, t1410, t1415, t1406, t1382, 0, 0, 0, 0, 0, 0, t1380, t1384, t1376, t1370; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1538, 0, t1505, 0, 0, 0, 0, 0, 0, -t1501, -t1500, 0, t1447, 0, 0, 0, 0, 0, 0, 0, t1501, t1500, t1434, 0, 0, 0, 0, 0, 0, t1475, t1476, t1473, t1411, 0, 0, 0, 0, 0, 0, t1409, t1414, t1405, t1381, 0, 0, 0, 0, 0, 0, t1379, t1383, t1375, t1369; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1522, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1522, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1429, 0, 0, 0, 0, 0, 0, t1417, t1427, t1421, t1386, 0, 0, 0, 0, 0, 0, t1390, t1392, t1388, t1372; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1538, -qJDD(1), 0, t1472, 0, 0, 0, 0, 0, 0, 0, t1538, qJDD(1), t1462, 0, 0, 0, 0, 0, 0, t1511, t1512, -t1583, t1459, 0, 0, 0, 0, 0, 0, t1468, t1469, t1457, t1450, 0, 0, 0, 0, 0, 0, t1418, t1424, t1403, t1377; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1538, 0, t1471, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1538, -t1463, 0, 0, 0, 0, 0, 0, t1496, t1495, t1499, -t1428, 0, 0, 0, 0, 0, 0, -t1416, -t1426, -t1420, -t1385, 0, 0, 0, 0, 0, 0, -t1389, -t1391, -t1387, -t1371; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1522, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1522, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1429, 0, 0, 0, 0, 0, 0, t1417, t1427, t1421, t1386, 0, 0, 0, 0, 0, 0, t1390, t1392, t1388, t1372; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1522, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1429, 0, 0, 0, 0, 0, 0, t1417, t1427, t1421, t1386, 0, 0, 0, 0, 0, 0, t1390, t1392, t1388, t1372; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1538, -qJDD(1), -t1462, 0, 0, 0, 0, 0, 0, -t1511, -t1512, t1583, -t1459, 0, 0, 0, 0, 0, 0, -t1468, -t1469, -t1457, -t1450, 0, 0, 0, 0, 0, 0, -t1418, -t1424, -t1403, -t1377; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1538, t1463, 0, 0, 0, 0, 0, 0, -t1496, -t1495, -t1499, t1428, 0, 0, 0, 0, 0, 0, t1416, t1426, t1420, t1385, 0, 0, 0, 0, 0, 0, t1389, t1391, t1387, t1371; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1569, -t1556, -t1511, t1455, 0, 0, 0, 0, 0, 0, t1441, t1452, t1444, t1396, 0, 0, 0, 0, 0, 0, t1400, t1402, t1398, t1374; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1556, -t1519 * t1538, -t1512, t1454, 0, 0, 0, 0, 0, 0, t1440, t1451, t1443, t1395, 0, 0, 0, 0, 0, 0, t1399, t1401, t1397, t1373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1511, t1512, -t1583, t1459, 0, 0, 0, 0, 0, 0, t1468, t1469, t1457, t1450, 0, 0, 0, 0, 0, 0, t1418, t1424, t1403, t1377; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1465, t1467, -t1581, t1423, 0, 0, 0, 0, 0, 0, t1419, t1425, t1404, t1378; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1466, t1482, -t1547, t1422, 0, 0, 0, 0, 0, 0, -t1430, -t1432, -t1445, -t1407; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1468, t1469, t1457, t1450, 0, 0, 0, 0, 0, 0, t1418, t1424, t1403, t1377; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1449, t1437, t1431, t1394; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1436, t1453, t1433, t1393; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1430, t1432, t1445, t1407;];
f_new_reg  = t1;
