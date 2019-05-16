% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPPRPR3
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta2,theta5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 14:10
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPPRPR3_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR3_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR3_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRPR3_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRPR3_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRPR3_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 14:10:43
% EndTime: 2019-05-05 14:10:46
% DurationCPUTime: 3.87s
% Computational Cost: add. (13559->256), mult. (28292->327), div. (0->0), fcn. (18440->10), ass. (0->185)
t1595 = sin(pkin(10));
t1597 = cos(pkin(10));
t1603 = sin(qJ(4));
t1606 = cos(qJ(4));
t1553 = (t1595 * t1606 + t1597 * t1603) * qJD(1);
t1552 = qJD(6) + t1553;
t1650 = qJD(6) + t1552;
t1596 = sin(pkin(9));
t1598 = cos(pkin(9));
t1609 = qJD(1) ^ 2;
t1570 = qJDD(1) * t1596 + t1598 * t1609;
t1571 = -t1598 * qJDD(1) + t1596 * t1609;
t1604 = sin(qJ(1));
t1607 = cos(qJ(1));
t1616 = t1570 * t1604 + t1607 * t1571;
t1618 = t1607 * t1570 - t1571 * t1604;
t1555 = (-t1595 * t1603 + t1597 * t1606) * qJD(1);
t1602 = sin(qJ(6));
t1605 = cos(qJ(6));
t1542 = -t1605 * qJD(4) + t1555 * t1602;
t1649 = t1542 ^ 2;
t1544 = qJD(4) * t1602 + t1555 * t1605;
t1648 = t1544 ^ 2;
t1647 = t1552 ^ 2;
t1646 = t1553 ^ 2;
t1645 = t1555 ^ 2;
t1644 = 2 * qJD(3);
t1643 = 2 * qJD(5);
t1642 = qJD(1) * qJD(4);
t1641 = qJD(1) * t1606;
t1640 = qJD(4) * t1553;
t1639 = qJD(4) * t1555;
t1638 = t1542 * t1544;
t1637 = t1553 * t1555;
t1590 = t1603 ^ 2;
t1634 = t1590 * t1609;
t1579 = t1604 * g(1) - g(2) * t1607;
t1564 = qJDD(1) * pkin(1) + t1579;
t1580 = -g(1) * t1607 - g(2) * t1604;
t1565 = -pkin(1) * t1609 + t1580;
t1537 = t1598 * t1564 - t1565 * t1596;
t1532 = -qJDD(1) * pkin(2) - t1609 * qJ(3) + qJDD(3) - t1537;
t1529 = -qJDD(1) * pkin(7) + t1532;
t1633 = t1606 * t1529;
t1632 = t1606 * t1609;
t1629 = qJD(6) - t1552;
t1538 = t1596 * t1564 + t1598 * t1565;
t1592 = -g(3) + qJDD(2);
t1517 = t1603 * t1529 + t1606 * t1592;
t1591 = t1606 ^ 2;
t1628 = t1590 + t1591;
t1627 = t1603 * qJDD(1);
t1626 = t1606 * qJDD(1);
t1625 = t1603 * t1642;
t1624 = qJD(4) * t1641;
t1623 = t1603 * t1632;
t1567 = -t1624 - t1627;
t1576 = qJD(4) * pkin(4) - qJ(5) * t1641;
t1503 = -pkin(4) * t1634 + qJ(5) * t1567 - qJD(4) * t1576 + t1517;
t1568 = -t1625 + t1626;
t1610 = qJDD(4) * pkin(4) - t1568 * qJ(5) + t1633 + (-pkin(4) * t1632 - qJ(5) * t1642 - t1592) * t1603;
t1476 = t1597 * t1503 - t1553 * t1643 + t1595 * t1610;
t1539 = t1567 * t1595 + t1568 * t1597;
t1622 = -t1539 + t1640;
t1621 = t1595 * t1503 - t1597 * t1610;
t1620 = t1605 * qJDD(4) - t1602 * t1539;
t1619 = -t1597 * t1567 + t1568 * t1595;
t1614 = -qJDD(6) - t1619;
t1612 = -t1602 * qJDD(4) - t1605 * t1539;
t1611 = -t1609 * pkin(2) + qJDD(1) * qJ(3) + t1538;
t1519 = t1619 + t1639;
t1531 = qJD(1) * t1644 + t1611;
t1600 = t1609 * pkin(7);
t1506 = -qJ(5) * t1634 - t1567 * pkin(4) + qJDD(5) - t1600 + (t1576 * t1606 + t1644) * qJD(1) + t1611;
t1608 = qJD(4) ^ 2;
t1582 = -t1591 * t1609 - t1608;
t1581 = -t1608 - t1634;
t1578 = -qJDD(4) - t1623;
t1577 = qJDD(4) - t1623;
t1575 = t1628 * t1609;
t1574 = -qJDD(1) * t1604 - t1607 * t1609;
t1573 = qJDD(1) * t1607 - t1604 * t1609;
t1572 = t1628 * qJDD(1);
t1569 = -0.2e1 * t1625 + t1626;
t1566 = 0.2e1 * t1624 + t1627;
t1549 = -t1608 - t1645;
t1548 = t1578 * t1606 - t1582 * t1603;
t1547 = -t1577 * t1603 + t1581 * t1606;
t1546 = t1578 * t1603 + t1582 * t1606;
t1545 = t1577 * t1606 + t1581 * t1603;
t1541 = -t1572 * t1596 - t1575 * t1598;
t1540 = t1572 * t1598 - t1575 * t1596;
t1536 = -qJDD(4) - t1637;
t1535 = qJDD(4) - t1637;
t1534 = -t1608 - t1646;
t1533 = pkin(5) * t1553 - pkin(8) * t1555;
t1528 = t1546 * t1596 + t1569 * t1598;
t1527 = t1545 * t1596 + t1566 * t1598;
t1526 = -t1546 * t1598 + t1569 * t1596;
t1525 = -t1545 * t1598 + t1566 * t1596;
t1524 = t1531 - t1600;
t1522 = -t1539 - t1640;
t1520 = -t1619 + t1639;
t1518 = -t1645 - t1646;
t1516 = -t1603 * t1592 + t1633;
t1515 = -t1647 - t1648;
t1514 = t1536 * t1597 - t1549 * t1595;
t1513 = t1536 * t1595 + t1549 * t1597;
t1512 = -t1647 - t1649;
t1511 = -t1537 * t1596 + t1538 * t1598;
t1510 = t1537 * t1598 + t1538 * t1596;
t1509 = -t1648 - t1649;
t1508 = t1534 * t1597 - t1535 * t1595;
t1507 = t1534 * t1595 + t1535 * t1597;
t1505 = t1614 - t1638;
t1504 = -t1614 - t1638;
t1499 = t1531 * t1598 + t1532 * t1596;
t1498 = t1531 * t1596 - t1532 * t1598;
t1497 = t1520 * t1597 - t1522 * t1595;
t1496 = t1520 * t1595 + t1522 * t1597;
t1495 = t1629 * t1542 + t1612;
t1494 = -t1542 * t1650 - t1612;
t1493 = -t1629 * t1544 + t1620;
t1492 = t1544 * t1650 - t1620;
t1491 = -t1516 * t1603 + t1517 * t1606;
t1490 = t1516 * t1606 + t1517 * t1603;
t1489 = -t1513 * t1603 + t1514 * t1606;
t1488 = t1513 * t1606 + t1514 * t1603;
t1487 = t1505 * t1605 - t1515 * t1602;
t1486 = t1505 * t1602 + t1515 * t1605;
t1485 = -t1504 * t1602 + t1512 * t1605;
t1484 = t1504 * t1605 + t1512 * t1602;
t1483 = -t1507 * t1603 + t1508 * t1606;
t1482 = t1507 * t1606 + t1508 * t1603;
t1481 = t1490 * t1596 + t1524 * t1598;
t1480 = -t1490 * t1598 + t1524 * t1596;
t1479 = t1519 * pkin(5) + t1622 * pkin(8) + t1506;
t1478 = t1488 * t1596 - t1598 * t1622;
t1477 = -t1488 * t1598 - t1596 * t1622;
t1475 = -0.2e1 * qJD(5) * t1555 - t1621;
t1474 = -t1496 * t1603 + t1497 * t1606;
t1473 = t1496 * t1606 + t1497 * t1603;
t1472 = t1482 * t1596 + t1519 * t1598;
t1471 = -t1482 * t1598 + t1519 * t1596;
t1470 = t1493 * t1605 - t1495 * t1602;
t1469 = t1493 * t1602 + t1495 * t1605;
t1468 = -pkin(5) * t1608 + qJDD(4) * pkin(8) - t1533 * t1553 + t1476;
t1467 = -qJDD(4) * pkin(5) - t1608 * pkin(8) + (t1643 + t1533) * t1555 + t1621;
t1466 = t1487 * t1597 + t1494 * t1595;
t1465 = t1487 * t1595 - t1494 * t1597;
t1464 = t1485 * t1597 + t1492 * t1595;
t1463 = t1485 * t1595 - t1492 * t1597;
t1462 = t1473 * t1596 + t1518 * t1598;
t1461 = -t1473 * t1598 + t1518 * t1596;
t1460 = t1470 * t1597 + t1509 * t1595;
t1459 = t1470 * t1595 - t1509 * t1597;
t1458 = -t1475 * t1595 + t1476 * t1597;
t1457 = t1475 * t1597 + t1476 * t1595;
t1456 = t1468 * t1605 + t1479 * t1602;
t1455 = -t1468 * t1602 + t1479 * t1605;
t1454 = -t1465 * t1603 + t1466 * t1606;
t1453 = t1465 * t1606 + t1466 * t1603;
t1452 = -t1463 * t1603 + t1464 * t1606;
t1451 = t1463 * t1606 + t1464 * t1603;
t1450 = -t1459 * t1603 + t1460 * t1606;
t1449 = t1459 * t1606 + t1460 * t1603;
t1448 = t1453 * t1596 + t1486 * t1598;
t1447 = -t1453 * t1598 + t1486 * t1596;
t1446 = t1451 * t1596 + t1484 * t1598;
t1445 = -t1451 * t1598 + t1484 * t1596;
t1444 = -t1457 * t1603 + t1458 * t1606;
t1443 = t1457 * t1606 + t1458 * t1603;
t1442 = t1449 * t1596 + t1469 * t1598;
t1441 = -t1449 * t1598 + t1469 * t1596;
t1440 = t1443 * t1596 + t1506 * t1598;
t1439 = -t1443 * t1598 + t1506 * t1596;
t1438 = -t1455 * t1602 + t1456 * t1605;
t1437 = t1455 * t1605 + t1456 * t1602;
t1436 = t1438 * t1597 + t1467 * t1595;
t1435 = t1438 * t1595 - t1467 * t1597;
t1434 = -t1435 * t1603 + t1436 * t1606;
t1433 = t1435 * t1606 + t1436 * t1603;
t1432 = t1433 * t1596 + t1437 * t1598;
t1431 = -t1433 * t1598 + t1437 * t1596;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1574, -t1573, 0, -t1579 * t1604 + t1580 * t1607, 0, 0, 0, 0, 0, 0, -t1618, t1616, 0, -t1510 * t1604 + t1511 * t1607, 0, 0, 0, 0, 0, 0, 0, t1618, -t1616, -t1498 * t1604 + t1499 * t1607, 0, 0, 0, 0, 0, 0, -t1525 * t1604 + t1527 * t1607, -t1526 * t1604 + t1528 * t1607, -t1540 * t1604 + t1541 * t1607, -t1480 * t1604 + t1481 * t1607, 0, 0, 0, 0, 0, 0, -t1471 * t1604 + t1472 * t1607, -t1477 * t1604 + t1478 * t1607, -t1461 * t1604 + t1462 * t1607, -t1439 * t1604 + t1440 * t1607, 0, 0, 0, 0, 0, 0, -t1445 * t1604 + t1446 * t1607, -t1447 * t1604 + t1448 * t1607, -t1441 * t1604 + t1442 * t1607, -t1431 * t1604 + t1432 * t1607; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1573, t1574, 0, t1579 * t1607 + t1580 * t1604, 0, 0, 0, 0, 0, 0, -t1616, -t1618, 0, t1510 * t1607 + t1511 * t1604, 0, 0, 0, 0, 0, 0, 0, t1616, t1618, t1498 * t1607 + t1499 * t1604, 0, 0, 0, 0, 0, 0, t1525 * t1607 + t1527 * t1604, t1526 * t1607 + t1528 * t1604, t1540 * t1607 + t1541 * t1604, t1480 * t1607 + t1481 * t1604, 0, 0, 0, 0, 0, 0, t1471 * t1607 + t1472 * t1604, t1477 * t1607 + t1478 * t1604, t1461 * t1607 + t1462 * t1604, t1439 * t1607 + t1440 * t1604, 0, 0, 0, 0, 0, 0, t1445 * t1607 + t1446 * t1604, t1447 * t1607 + t1448 * t1604, t1441 * t1607 + t1442 * t1604, t1431 * t1607 + t1432 * t1604; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1592, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1592, 0, 0, 0, 0, 0, 0, t1547, t1548, 0, t1491, 0, 0, 0, 0, 0, 0, t1483, t1489, t1474, t1444, 0, 0, 0, 0, 0, 0, t1452, t1454, t1450, t1434; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1609, -qJDD(1), 0, t1580, 0, 0, 0, 0, 0, 0, -t1570, t1571, 0, t1511, 0, 0, 0, 0, 0, 0, 0, t1570, -t1571, t1499, 0, 0, 0, 0, 0, 0, t1527, t1528, t1541, t1481, 0, 0, 0, 0, 0, 0, t1472, t1478, t1462, t1440, 0, 0, 0, 0, 0, 0, t1446, t1448, t1442, t1432; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1609, 0, t1579, 0, 0, 0, 0, 0, 0, -t1571, -t1570, 0, t1510, 0, 0, 0, 0, 0, 0, 0, t1571, t1570, t1498, 0, 0, 0, 0, 0, 0, t1525, t1526, t1540, t1480, 0, 0, 0, 0, 0, 0, t1471, t1477, t1461, t1439, 0, 0, 0, 0, 0, 0, t1445, t1447, t1441, t1431; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1592, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1592, 0, 0, 0, 0, 0, 0, t1547, t1548, 0, t1491, 0, 0, 0, 0, 0, 0, t1483, t1489, t1474, t1444, 0, 0, 0, 0, 0, 0, t1452, t1454, t1450, t1434; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1609, -qJDD(1), 0, t1538, 0, 0, 0, 0, 0, 0, 0, t1609, qJDD(1), t1531, 0, 0, 0, 0, 0, 0, t1566, t1569, -t1575, t1524, 0, 0, 0, 0, 0, 0, t1519, -t1622, t1518, t1506, 0, 0, 0, 0, 0, 0, t1484, t1486, t1469, t1437; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1609, 0, t1537, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1609, -t1532, 0, 0, 0, 0, 0, 0, -t1545, -t1546, t1572, -t1490, 0, 0, 0, 0, 0, 0, -t1482, -t1488, -t1473, -t1443, 0, 0, 0, 0, 0, 0, -t1451, -t1453, -t1449, -t1433; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1592, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1592, 0, 0, 0, 0, 0, 0, t1547, t1548, 0, t1491, 0, 0, 0, 0, 0, 0, t1483, t1489, t1474, t1444, 0, 0, 0, 0, 0, 0, t1452, t1454, t1450, t1434; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1592, 0, 0, 0, 0, 0, 0, t1547, t1548, 0, t1491, 0, 0, 0, 0, 0, 0, t1483, t1489, t1474, t1444, 0, 0, 0, 0, 0, 0, t1452, t1454, t1450, t1434; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1609, -qJDD(1), -t1531, 0, 0, 0, 0, 0, 0, -t1566, -t1569, t1575, -t1524, 0, 0, 0, 0, 0, 0, -t1519, t1622, -t1518, -t1506, 0, 0, 0, 0, 0, 0, -t1484, -t1486, -t1469, -t1437; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1609, t1532, 0, 0, 0, 0, 0, 0, t1545, t1546, -t1572, t1490, 0, 0, 0, 0, 0, 0, t1482, t1488, t1473, t1443, 0, 0, 0, 0, 0, 0, t1451, t1453, t1449, t1433; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1581, t1578, -t1627, t1517, 0, 0, 0, 0, 0, 0, t1508, t1514, t1497, t1458, 0, 0, 0, 0, 0, 0, t1464, t1466, t1460, t1436; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1577, t1582, -t1626, t1516, 0, 0, 0, 0, 0, 0, t1507, t1513, t1496, t1457, 0, 0, 0, 0, 0, 0, t1463, t1465, t1459, t1435; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1566, t1569, -t1575, t1524, 0, 0, 0, 0, 0, 0, t1519, -t1622, t1518, t1506, 0, 0, 0, 0, 0, 0, t1484, t1486, t1469, t1437; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1534, t1536, t1520, t1476, 0, 0, 0, 0, 0, 0, t1485, t1487, t1470, t1438; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1535, t1549, t1522, t1475, 0, 0, 0, 0, 0, 0, -t1492, -t1494, -t1509, -t1467; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1519, -t1622, t1518, t1506, 0, 0, 0, 0, 0, 0, t1484, t1486, t1469, t1437; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1512, t1505, t1493, t1456; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1504, t1515, t1495, t1455; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1492, t1494, t1509, t1467;];
f_new_reg  = t1;
