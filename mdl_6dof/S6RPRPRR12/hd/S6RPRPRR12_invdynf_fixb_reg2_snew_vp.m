% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPRPRR12
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 20:47
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPRPRR12_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR12_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR12_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPRR12_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRR12_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRR12_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 20:47:25
% EndTime: 2019-05-05 20:47:28
% DurationCPUTime: 3.69s
% Computational Cost: add. (12468->288), mult. (25316->282), div. (0->0), fcn. (14995->8), ass. (0->169)
t1516 = sin(qJ(3));
t1520 = cos(qJ(3));
t1523 = qJD(1) ^ 2;
t1548 = t1520 * t1523;
t1540 = t1516 * t1548;
t1491 = -qJDD(3) + t1540;
t1522 = qJD(3) ^ 2;
t1512 = t1516 ^ 2;
t1549 = t1512 * t1523;
t1496 = -t1522 - t1549;
t1463 = t1491 * t1520 - t1496 * t1516;
t1506 = t1516 * qJDD(1);
t1558 = qJD(1) * t1520;
t1539 = qJD(3) * t1558;
t1482 = -t1506 - 0.2e1 * t1539;
t1517 = sin(qJ(1));
t1521 = cos(qJ(1));
t1571 = t1463 * t1517 + t1482 * t1521;
t1570 = t1463 * t1521 - t1482 * t1517;
t1492 = qJDD(3) + t1540;
t1513 = t1520 ^ 2;
t1497 = -t1513 * t1523 - t1522;
t1464 = t1492 * t1516 - t1497 * t1520;
t1559 = qJD(1) * t1516;
t1505 = qJD(3) * t1559;
t1542 = t1520 * qJDD(1);
t1485 = -0.2e1 * t1505 + t1542;
t1569 = t1464 * t1517 - t1485 * t1521;
t1568 = t1464 * t1521 + t1485 * t1517;
t1515 = sin(qJ(5));
t1519 = cos(qJ(5));
t1478 = qJD(3) * t1515 - t1519 * t1559;
t1480 = qJD(3) * t1519 + t1515 * t1559;
t1514 = sin(qJ(6));
t1518 = cos(qJ(6));
t1454 = t1518 * t1478 + t1480 * t1514;
t1567 = t1454 ^ 2;
t1456 = -t1478 * t1514 + t1480 * t1518;
t1566 = t1456 ^ 2;
t1477 = t1478 ^ 2;
t1565 = t1480 ^ 2;
t1501 = qJD(5) + t1558;
t1495 = qJD(6) + t1501;
t1564 = t1495 ^ 2;
t1563 = t1501 ^ 2;
t1562 = pkin(1) + pkin(7);
t1561 = pkin(3) + pkin(8);
t1560 = t1516 * g(3);
t1557 = qJD(2) * qJD(1);
t1556 = qJD(4) * t1520;
t1555 = t1454 * t1456;
t1554 = t1478 * t1480;
t1547 = qJD(5) - t1501;
t1546 = qJD(5) + t1501;
t1545 = qJD(6) - t1495;
t1544 = qJD(6) + t1495;
t1483 = t1506 + t1539;
t1484 = -t1505 + t1542;
t1494 = -t1521 * g(1) - t1517 * g(2);
t1531 = -qJDD(1) * qJ(2) - t1494;
t1527 = -pkin(3) * t1539 + t1531 + (t1484 - t1505) * qJ(4);
t1532 = pkin(4) * t1558 - qJD(3) * pkin(8);
t1423 = 0.2e1 * t1557 - 0.2e1 * qJD(1) * t1556 - t1532 * t1558 + t1561 * t1483 + (-pkin(4) * t1512 - t1562) * t1523 - t1527;
t1481 = (pkin(3) * t1516 - qJ(4) * t1520) * qJD(1);
t1493 = t1517 * g(1) - t1521 * g(2);
t1529 = -t1523 * qJ(2) + qJDD(2) - t1493;
t1526 = -t1562 * qJDD(1) + t1529;
t1525 = t1520 * t1526;
t1524 = t1522 * qJ(4) - t1481 * t1558 - qJDD(4) + t1525;
t1428 = t1484 * pkin(4) - t1561 * qJDD(3) + (pkin(4) * qJD(1) * qJD(3) + pkin(8) * t1548 - g(3)) * t1516 - t1524;
t1402 = t1519 * t1423 + t1515 * t1428;
t1543 = t1512 + t1513;
t1541 = t1562 * t1523;
t1458 = -t1520 * g(3) + t1516 * t1526;
t1401 = -t1515 * t1423 + t1519 * t1428;
t1537 = t1515 * qJDD(3) - t1519 * t1483;
t1451 = -qJD(5) * t1480 - t1537;
t1533 = t1519 * qJDD(3) + t1515 * t1483;
t1452 = -qJD(5) * t1478 + t1533;
t1538 = t1518 * t1451 - t1514 * t1452;
t1536 = pkin(5) * t1501 - pkin(9) * t1480;
t1535 = qJDD(5) + t1484;
t1534 = -t1514 * t1451 - t1518 * t1452;
t1466 = t1491 * t1516 + t1496 * t1520;
t1468 = t1492 * t1520 + t1497 * t1516;
t1530 = -qJDD(6) - t1535;
t1447 = t1535 - t1554;
t1528 = t1531 - 0.2e1 * t1557;
t1443 = t1522 * pkin(3) - qJDD(3) * qJ(4) - 0.2e1 * qJD(4) * qJD(3) + t1481 * t1559 - t1458;
t1427 = t1483 * pkin(4) + pkin(8) * t1549 - qJD(3) * t1532 + t1443;
t1490 = t1543 * t1523;
t1489 = qJDD(1) * t1517 + t1521 * t1523;
t1488 = qJDD(1) * t1521 - t1517 * t1523;
t1487 = t1543 * qJDD(1);
t1473 = qJDD(1) * pkin(1) - t1529;
t1472 = t1523 * pkin(1) + t1528;
t1471 = t1541 + t1528;
t1461 = -t1487 * t1517 - t1490 * t1521;
t1460 = t1487 * t1521 - t1490 * t1517;
t1459 = -t1563 - t1565;
t1457 = t1525 + t1560;
t1453 = -t1563 - t1477;
t1448 = -t1535 - t1554;
t1446 = -t1477 - t1565;
t1445 = -t1564 - t1566;
t1444 = qJDD(3) * pkin(3) + t1524 + t1560;
t1442 = t1547 * t1478 - t1533;
t1441 = -t1546 * t1478 + t1533;
t1440 = -t1547 * t1480 - t1537;
t1439 = t1546 * t1480 + t1537;
t1438 = -t1457 * t1516 + t1458 * t1520;
t1437 = t1457 * t1520 + t1458 * t1516;
t1436 = -t1483 * pkin(3) + t1541 + 0.2e1 * (-qJD(2) + t1556) * qJD(1) + t1527;
t1435 = t1448 * t1519 - t1459 * t1515;
t1434 = t1448 * t1515 + t1459 * t1519;
t1433 = -t1564 - t1567;
t1432 = -t1447 * t1515 + t1453 * t1519;
t1431 = t1447 * t1519 + t1453 * t1515;
t1430 = t1530 - t1555;
t1429 = -t1530 - t1555;
t1424 = -t1566 - t1567;
t1421 = -t1443 * t1520 - t1444 * t1516;
t1420 = -t1443 * t1516 + t1444 * t1520;
t1419 = t1440 * t1519 - t1442 * t1515;
t1418 = t1440 * t1515 + t1442 * t1519;
t1417 = t1434 * t1516 + t1441 * t1520;
t1416 = -t1434 * t1520 + t1441 * t1516;
t1415 = t1430 * t1518 - t1445 * t1514;
t1414 = t1430 * t1514 + t1445 * t1518;
t1413 = t1431 * t1516 + t1439 * t1520;
t1412 = -t1431 * t1520 + t1439 * t1516;
t1411 = t1545 * t1454 + t1534;
t1410 = -t1544 * t1454 - t1534;
t1409 = -t1545 * t1456 + t1538;
t1408 = t1544 * t1456 - t1538;
t1407 = -t1429 * t1514 + t1433 * t1518;
t1406 = t1429 * t1518 + t1433 * t1514;
t1405 = t1418 * t1516 + t1446 * t1520;
t1404 = -t1418 * t1520 + t1446 * t1516;
t1403 = t1451 * pkin(5) + t1477 * pkin(9) - t1480 * t1536 + t1427;
t1400 = -t1477 * pkin(5) + t1451 * pkin(9) - t1501 * t1536 + t1402;
t1399 = -t1414 * t1515 + t1415 * t1519;
t1398 = t1414 * t1519 + t1415 * t1515;
t1397 = (-t1478 * t1501 - t1452) * pkin(9) + t1447 * pkin(5) + t1401;
t1396 = t1409 * t1518 - t1411 * t1514;
t1395 = t1409 * t1514 + t1411 * t1518;
t1394 = -t1406 * t1515 + t1407 * t1519;
t1393 = t1406 * t1519 + t1407 * t1515;
t1392 = -t1401 * t1515 + t1402 * t1519;
t1391 = t1401 * t1519 + t1402 * t1515;
t1390 = t1398 * t1516 + t1410 * t1520;
t1389 = -t1398 * t1520 + t1410 * t1516;
t1388 = t1391 * t1516 - t1427 * t1520;
t1387 = -t1391 * t1520 - t1427 * t1516;
t1386 = t1393 * t1516 + t1408 * t1520;
t1385 = -t1393 * t1520 + t1408 * t1516;
t1384 = t1397 * t1514 + t1400 * t1518;
t1383 = t1397 * t1518 - t1400 * t1514;
t1382 = -t1395 * t1515 + t1396 * t1519;
t1381 = t1395 * t1519 + t1396 * t1515;
t1380 = t1381 * t1516 + t1424 * t1520;
t1379 = -t1381 * t1520 + t1424 * t1516;
t1378 = -t1383 * t1514 + t1384 * t1518;
t1377 = t1383 * t1518 + t1384 * t1514;
t1376 = -t1377 * t1515 + t1378 * t1519;
t1375 = t1377 * t1519 + t1378 * t1515;
t1374 = t1375 * t1516 - t1403 * t1520;
t1373 = -t1375 * t1520 - t1403 * t1516;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1489, -t1488, 0, -t1493 * t1517 + t1494 * t1521, 0, 0, 0, 0, 0, 0, 0, t1489, t1488, -t1472 * t1521 - t1473 * t1517, 0, 0, 0, 0, 0, 0, -t1571, -t1569, t1461, t1437 * t1517 - t1471 * t1521, 0, 0, 0, 0, 0, 0, t1461, t1571, t1569, t1420 * t1517 - t1436 * t1521, 0, 0, 0, 0, 0, 0, t1412 * t1517 + t1432 * t1521, t1416 * t1517 + t1435 * t1521, t1404 * t1517 + t1419 * t1521, t1387 * t1517 + t1392 * t1521, 0, 0, 0, 0, 0, 0, t1385 * t1517 + t1394 * t1521, t1389 * t1517 + t1399 * t1521, t1379 * t1517 + t1382 * t1521, t1373 * t1517 + t1376 * t1521; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1488, -t1489, 0, t1493 * t1521 + t1494 * t1517, 0, 0, 0, 0, 0, 0, 0, -t1488, t1489, -t1472 * t1517 + t1473 * t1521, 0, 0, 0, 0, 0, 0, t1570, t1568, t1460, -t1437 * t1521 - t1471 * t1517, 0, 0, 0, 0, 0, 0, t1460, -t1570, -t1568, -t1420 * t1521 - t1436 * t1517, 0, 0, 0, 0, 0, 0, -t1412 * t1521 + t1432 * t1517, -t1416 * t1521 + t1435 * t1517, -t1404 * t1521 + t1419 * t1517, -t1387 * t1521 + t1392 * t1517, 0, 0, 0, 0, 0, 0, -t1385 * t1521 + t1394 * t1517, -t1389 * t1521 + t1399 * t1517, -t1379 * t1521 + t1382 * t1517, -t1373 * t1521 + t1376 * t1517; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1466, -t1468, 0, t1438, 0, 0, 0, 0, 0, 0, 0, -t1466, t1468, t1421, 0, 0, 0, 0, 0, 0, t1413, t1417, t1405, t1388, 0, 0, 0, 0, 0, 0, t1386, t1390, t1380, t1374; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1523, -qJDD(1), 0, t1494, 0, 0, 0, 0, 0, 0, 0, t1523, qJDD(1), -t1472, 0, 0, 0, 0, 0, 0, -t1482, t1485, -t1490, -t1471, 0, 0, 0, 0, 0, 0, -t1490, t1482, -t1485, -t1436, 0, 0, 0, 0, 0, 0, t1432, t1435, t1419, t1392, 0, 0, 0, 0, 0, 0, t1394, t1399, t1382, t1376; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1523, 0, t1493, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1523, t1473, 0, 0, 0, 0, 0, 0, t1463, t1464, t1487, -t1437, 0, 0, 0, 0, 0, 0, t1487, -t1463, -t1464, -t1420, 0, 0, 0, 0, 0, 0, -t1412, -t1416, -t1404, -t1387, 0, 0, 0, 0, 0, 0, -t1385, -t1389, -t1379, -t1373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1466, -t1468, 0, t1438, 0, 0, 0, 0, 0, 0, 0, -t1466, t1468, t1421, 0, 0, 0, 0, 0, 0, t1413, t1417, t1405, t1388, 0, 0, 0, 0, 0, 0, t1386, t1390, t1380, t1374; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1466, -t1468, 0, t1438, 0, 0, 0, 0, 0, 0, 0, -t1466, t1468, t1421, 0, 0, 0, 0, 0, 0, t1413, t1417, t1405, t1388, 0, 0, 0, 0, 0, 0, t1386, t1390, t1380, t1374; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1523, -qJDD(1), t1472, 0, 0, 0, 0, 0, 0, t1482, -t1485, t1490, t1471, 0, 0, 0, 0, 0, 0, t1490, -t1482, t1485, t1436, 0, 0, 0, 0, 0, 0, -t1432, -t1435, -t1419, -t1392, 0, 0, 0, 0, 0, 0, -t1394, -t1399, -t1382, -t1376; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1523, -t1473, 0, 0, 0, 0, 0, 0, -t1463, -t1464, -t1487, t1437, 0, 0, 0, 0, 0, 0, -t1487, t1463, t1464, t1420, 0, 0, 0, 0, 0, 0, t1412, t1416, t1404, t1387, 0, 0, 0, 0, 0, 0, t1385, t1389, t1379, t1373; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1496, -t1492, -t1506, t1458, 0, 0, 0, 0, 0, 0, -t1506, -t1496, t1492, -t1443, 0, 0, 0, 0, 0, 0, t1439, t1441, t1446, -t1427, 0, 0, 0, 0, 0, 0, t1408, t1410, t1424, -t1403; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1491, t1497, -t1542, t1457, 0, 0, 0, 0, 0, 0, -t1542, t1491, -t1497, t1444, 0, 0, 0, 0, 0, 0, -t1431, -t1434, -t1418, -t1391, 0, 0, 0, 0, 0, 0, -t1393, -t1398, -t1381, -t1375; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1482, t1485, -t1490, -t1471, 0, 0, 0, 0, 0, 0, -t1490, t1482, -t1485, -t1436, 0, 0, 0, 0, 0, 0, t1432, t1435, t1419, t1392, 0, 0, 0, 0, 0, 0, t1394, t1399, t1382, t1376; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1490, t1482, -t1485, -t1436, 0, 0, 0, 0, 0, 0, t1432, t1435, t1419, t1392, 0, 0, 0, 0, 0, 0, t1394, t1399, t1382, t1376; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1506, t1496, -t1492, t1443, 0, 0, 0, 0, 0, 0, -t1439, -t1441, -t1446, t1427, 0, 0, 0, 0, 0, 0, -t1408, -t1410, -t1424, t1403; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1542, -t1491, t1497, -t1444, 0, 0, 0, 0, 0, 0, t1431, t1434, t1418, t1391, 0, 0, 0, 0, 0, 0, t1393, t1398, t1381, t1375; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1453, t1448, t1440, t1402, 0, 0, 0, 0, 0, 0, t1407, t1415, t1396, t1378; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1447, t1459, t1442, t1401, 0, 0, 0, 0, 0, 0, t1406, t1414, t1395, t1377; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1439, t1441, t1446, -t1427, 0, 0, 0, 0, 0, 0, t1408, t1410, t1424, -t1403; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1433, t1430, t1409, t1384; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1429, t1445, t1411, t1383; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1408, t1410, t1424, -t1403;];
f_new_reg  = t1;
