% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
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
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:39
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RRRPR1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR1_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR1_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRPR1_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRPR1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRPR1_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:39:47
% EndTime: 2019-12-05 18:39:51
% DurationCPUTime: 4.73s
% Computational Cost: add. (37615->253), mult. (86851->356), div. (0->0), fcn. (63190->10), ass. (0->204)
t1610 = qJD(2) + qJD(3);
t1605 = qJD(5) + t1610;
t1658 = qJD(5) + t1605;
t1609 = qJDD(2) + qJDD(3);
t1616 = sin(qJ(3));
t1620 = cos(qJ(3));
t1621 = cos(qJ(2));
t1649 = qJD(1) * t1621;
t1617 = sin(qJ(2));
t1650 = qJD(1) * t1617;
t1580 = t1616 * t1650 - t1620 * t1649;
t1582 = (t1616 * t1621 + t1617 * t1620) * qJD(1);
t1646 = t1582 * t1580;
t1567 = t1609 - t1646;
t1613 = sin(pkin(9));
t1614 = cos(pkin(9));
t1563 = t1614 * t1580 + t1613 * t1582;
t1565 = -t1613 * t1580 + t1614 * t1582;
t1647 = t1565 * t1563;
t1534 = t1609 - t1647;
t1615 = sin(qJ(5));
t1619 = cos(qJ(5));
t1530 = t1619 * t1563 + t1615 * t1565;
t1657 = t1530 ^ 2;
t1532 = -t1615 * t1563 + t1619 * t1565;
t1656 = t1532 ^ 2;
t1561 = t1563 ^ 2;
t1655 = t1565 ^ 2;
t1579 = t1580 ^ 2;
t1654 = t1582 ^ 2;
t1653 = t1605 ^ 2;
t1652 = t1610 ^ 2;
t1651 = -2 * qJD(4);
t1648 = t1532 * t1530;
t1645 = t1610 * t1563;
t1644 = t1610 * t1565;
t1643 = t1610 * t1580;
t1612 = t1621 ^ 2;
t1624 = qJD(1) ^ 2;
t1642 = t1612 * t1624;
t1618 = sin(qJ(1));
t1622 = cos(qJ(1));
t1598 = -t1622 * g(1) - t1618 * g(2);
t1584 = -t1624 * pkin(1) + qJDD(1) * pkin(6) + t1598;
t1641 = t1617 * t1584;
t1640 = t1617 * t1624;
t1639 = qJD(3) - t1610;
t1638 = qJD(5) - t1605;
t1634 = qJD(2) * t1649;
t1636 = t1617 * qJDD(1);
t1588 = t1634 + t1636;
t1547 = qJDD(2) * pkin(2) - t1588 * pkin(7) - t1641 + (qJD(2) * pkin(7) * qJD(1) + pkin(2) * t1640 - g(3)) * t1621;
t1575 = -t1617 * g(3) + t1621 * t1584;
t1606 = t1621 * qJDD(1);
t1635 = qJD(2) * t1650;
t1589 = t1606 - t1635;
t1626 = qJD(2) * pkin(2) - pkin(7) * t1650;
t1550 = -pkin(2) * t1642 + t1589 * pkin(7) - qJD(2) * t1626 + t1575;
t1523 = t1616 * t1547 + t1620 * t1550;
t1611 = t1617 ^ 2;
t1637 = t1611 + t1612;
t1522 = t1620 * t1547 - t1616 * t1550;
t1627 = -t1620 * t1588 - t1616 * t1589;
t1553 = -t1580 * qJD(3) - t1627;
t1500 = (-t1553 - t1643) * qJ(4) + t1567 * pkin(3) + t1522;
t1631 = t1616 * t1588 - t1620 * t1589;
t1552 = -t1582 * qJD(3) - t1631;
t1629 = t1610 * pkin(3) - t1582 * qJ(4);
t1502 = -t1579 * pkin(3) + t1552 * qJ(4) - t1610 * t1629 + t1523;
t1477 = t1613 * t1500 + t1614 * t1502 + t1563 * t1651;
t1597 = t1618 * g(1) - t1622 * g(2);
t1633 = -qJDD(5) - t1609;
t1525 = t1614 * t1552 - t1613 * t1553;
t1526 = t1613 * t1552 + t1614 * t1553;
t1632 = t1619 * t1525 - t1615 * t1526;
t1514 = -t1526 - t1645;
t1630 = t1610 * pkin(4) - t1565 * pkin(8);
t1476 = t1614 * t1500 - t1613 * t1502 + t1565 * t1651;
t1628 = -t1615 * t1525 - t1619 * t1526;
t1625 = qJDD(1) * pkin(1) + t1597;
t1555 = t1589 * pkin(2) - t1626 * t1650 + (pkin(7) * t1612 + pkin(6)) * t1624 + t1625;
t1510 = t1552 * pkin(3) + t1579 * qJ(4) - t1582 * t1629 - qJDD(4) + t1555;
t1623 = qJD(2) ^ 2;
t1603 = t1621 * t1640;
t1601 = -t1623 - t1642;
t1600 = -t1611 * t1624 - t1623;
t1596 = -qJDD(2) + t1603;
t1595 = qJDD(2) + t1603;
t1594 = t1637 * t1624;
t1593 = -t1618 * qJDD(1) - t1622 * t1624;
t1592 = t1622 * qJDD(1) - t1618 * t1624;
t1591 = t1637 * qJDD(1);
t1590 = t1606 - 0.2e1 * t1635;
t1587 = 0.2e1 * t1634 + t1636;
t1583 = t1624 * pkin(6) + t1625;
t1574 = -t1621 * g(3) - t1641;
t1573 = -t1652 - t1654;
t1572 = t1621 * t1596 - t1617 * t1600;
t1571 = -t1617 * t1595 + t1621 * t1601;
t1570 = t1617 * t1596 + t1621 * t1600;
t1569 = t1621 * t1595 + t1617 * t1601;
t1568 = -t1609 - t1646;
t1566 = -t1652 - t1579;
t1556 = -t1652 - t1655;
t1554 = -t1579 - t1654;
t1549 = -t1617 * t1574 + t1621 * t1575;
t1548 = t1621 * t1574 + t1617 * t1575;
t1543 = t1620 * t1568 - t1616 * t1573;
t1542 = t1616 * t1568 + t1620 * t1573;
t1541 = t1639 * t1580 + t1627;
t1540 = t1553 - t1643;
t1539 = -t1639 * t1582 - t1631;
t1538 = (qJD(3) + t1610) * t1582 + t1631;
t1537 = t1620 * t1566 - t1616 * t1567;
t1536 = t1616 * t1566 + t1620 * t1567;
t1535 = -t1609 - t1647;
t1533 = -t1652 - t1561;
t1527 = -t1653 - t1656;
t1521 = -t1561 - t1655;
t1520 = t1614 * t1535 - t1613 * t1556;
t1519 = t1613 * t1535 + t1614 * t1556;
t1518 = -t1617 * t1542 + t1621 * t1543;
t1517 = t1621 * t1542 + t1617 * t1543;
t1516 = t1620 * t1539 - t1616 * t1541;
t1515 = t1616 * t1539 + t1620 * t1541;
t1513 = t1526 - t1645;
t1512 = t1525 + t1644;
t1511 = -t1525 + t1644;
t1509 = -t1617 * t1536 + t1621 * t1537;
t1508 = t1621 * t1536 + t1617 * t1537;
t1507 = t1614 * t1533 - t1613 * t1534;
t1506 = t1613 * t1533 + t1614 * t1534;
t1505 = t1633 - t1648;
t1504 = -t1633 - t1648;
t1503 = -t1653 - t1657;
t1497 = -t1616 * t1522 + t1620 * t1523;
t1496 = t1620 * t1522 + t1616 * t1523;
t1495 = -t1656 - t1657;
t1494 = t1619 * t1505 - t1615 * t1527;
t1493 = t1615 * t1505 + t1619 * t1527;
t1492 = -t1616 * t1519 + t1620 * t1520;
t1491 = t1620 * t1519 + t1616 * t1520;
t1490 = -t1617 * t1515 + t1621 * t1516;
t1489 = t1621 * t1515 + t1617 * t1516;
t1488 = t1614 * t1512 - t1613 * t1514;
t1487 = t1613 * t1512 + t1614 * t1514;
t1486 = -t1616 * t1506 + t1620 * t1507;
t1485 = t1620 * t1506 + t1616 * t1507;
t1484 = t1619 * t1503 - t1615 * t1504;
t1483 = t1615 * t1503 + t1619 * t1504;
t1482 = t1525 * pkin(4) + t1561 * pkin(8) - t1565 * t1630 + t1510;
t1481 = t1638 * t1530 + t1628;
t1480 = -t1658 * t1530 - t1628;
t1479 = -t1638 * t1532 + t1632;
t1478 = t1658 * t1532 - t1632;
t1475 = -t1617 * t1496 + t1621 * t1497;
t1474 = t1621 * t1496 + t1617 * t1497;
t1473 = -t1613 * t1493 + t1614 * t1494;
t1472 = t1614 * t1493 + t1613 * t1494;
t1471 = -t1617 * t1491 + t1621 * t1492;
t1470 = t1621 * t1491 + t1617 * t1492;
t1469 = -t1616 * t1487 + t1620 * t1488;
t1468 = t1620 * t1487 + t1616 * t1488;
t1467 = -t1561 * pkin(4) + t1525 * pkin(8) - t1610 * t1630 + t1477;
t1466 = -t1617 * t1485 + t1621 * t1486;
t1465 = t1621 * t1485 + t1617 * t1486;
t1464 = t1534 * pkin(4) + t1514 * pkin(8) + t1476;
t1463 = -t1613 * t1483 + t1614 * t1484;
t1462 = t1614 * t1483 + t1613 * t1484;
t1461 = t1619 * t1479 - t1615 * t1481;
t1460 = t1615 * t1479 + t1619 * t1481;
t1459 = -t1613 * t1476 + t1614 * t1477;
t1458 = t1614 * t1476 + t1613 * t1477;
t1457 = -t1616 * t1472 + t1620 * t1473;
t1456 = t1620 * t1472 + t1616 * t1473;
t1455 = -t1617 * t1468 + t1621 * t1469;
t1454 = t1621 * t1468 + t1617 * t1469;
t1453 = t1615 * t1464 + t1619 * t1467;
t1452 = t1619 * t1464 - t1615 * t1467;
t1451 = -t1616 * t1462 + t1620 * t1463;
t1450 = t1620 * t1462 + t1616 * t1463;
t1449 = -t1613 * t1460 + t1614 * t1461;
t1448 = t1614 * t1460 + t1613 * t1461;
t1447 = -t1616 * t1458 + t1620 * t1459;
t1446 = t1620 * t1458 + t1616 * t1459;
t1445 = -t1617 * t1456 + t1621 * t1457;
t1444 = t1621 * t1456 + t1617 * t1457;
t1443 = -t1615 * t1452 + t1619 * t1453;
t1442 = t1619 * t1452 + t1615 * t1453;
t1441 = -t1617 * t1450 + t1621 * t1451;
t1440 = t1621 * t1450 + t1617 * t1451;
t1439 = -t1616 * t1448 + t1620 * t1449;
t1438 = t1620 * t1448 + t1616 * t1449;
t1437 = -t1617 * t1446 + t1621 * t1447;
t1436 = t1621 * t1446 + t1617 * t1447;
t1435 = -t1613 * t1442 + t1614 * t1443;
t1434 = t1614 * t1442 + t1613 * t1443;
t1433 = -t1617 * t1438 + t1621 * t1439;
t1432 = t1621 * t1438 + t1617 * t1439;
t1431 = -t1616 * t1434 + t1620 * t1435;
t1430 = t1620 * t1434 + t1616 * t1435;
t1429 = -t1617 * t1430 + t1621 * t1431;
t1428 = t1621 * t1430 + t1617 * t1431;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1593, -t1592, 0, -t1618 * t1597 + t1622 * t1598, 0, 0, 0, 0, 0, 0, t1622 * t1571 - t1618 * t1590, t1622 * t1572 + t1618 * t1587, t1622 * t1591 - t1618 * t1594, t1622 * t1549 - t1618 * t1583, 0, 0, 0, 0, 0, 0, t1622 * t1509 + t1618 * t1538, t1622 * t1518 + t1618 * t1540, t1622 * t1490 + t1618 * t1554, t1622 * t1475 - t1618 * t1555, 0, 0, 0, 0, 0, 0, t1622 * t1466 + t1618 * t1511, t1622 * t1471 + t1618 * t1513, t1622 * t1455 + t1618 * t1521, t1622 * t1437 - t1618 * t1510, 0, 0, 0, 0, 0, 0, t1622 * t1441 + t1618 * t1478, t1622 * t1445 + t1618 * t1480, t1622 * t1433 + t1618 * t1495, t1622 * t1429 - t1618 * t1482; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1592, t1593, 0, t1622 * t1597 + t1618 * t1598, 0, 0, 0, 0, 0, 0, t1618 * t1571 + t1622 * t1590, t1618 * t1572 - t1622 * t1587, t1618 * t1591 + t1622 * t1594, t1618 * t1549 + t1622 * t1583, 0, 0, 0, 0, 0, 0, t1618 * t1509 - t1622 * t1538, t1618 * t1518 - t1622 * t1540, t1618 * t1490 - t1622 * t1554, t1618 * t1475 + t1622 * t1555, 0, 0, 0, 0, 0, 0, t1618 * t1466 - t1622 * t1511, t1618 * t1471 - t1622 * t1513, t1618 * t1455 - t1622 * t1521, t1618 * t1437 + t1622 * t1510, 0, 0, 0, 0, 0, 0, t1618 * t1441 - t1622 * t1478, t1618 * t1445 - t1622 * t1480, t1618 * t1433 - t1622 * t1495, t1618 * t1429 + t1622 * t1482; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1569, t1570, 0, t1548, 0, 0, 0, 0, 0, 0, t1508, t1517, t1489, t1474, 0, 0, 0, 0, 0, 0, t1465, t1470, t1454, t1436, 0, 0, 0, 0, 0, 0, t1440, t1444, t1432, t1428; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1624, -qJDD(1), 0, t1598, 0, 0, 0, 0, 0, 0, t1571, t1572, t1591, t1549, 0, 0, 0, 0, 0, 0, t1509, t1518, t1490, t1475, 0, 0, 0, 0, 0, 0, t1466, t1471, t1455, t1437, 0, 0, 0, 0, 0, 0, t1441, t1445, t1433, t1429; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1624, 0, t1597, 0, 0, 0, 0, 0, 0, t1590, -t1587, t1594, t1583, 0, 0, 0, 0, 0, 0, -t1538, -t1540, -t1554, t1555, 0, 0, 0, 0, 0, 0, -t1511, -t1513, -t1521, t1510, 0, 0, 0, 0, 0, 0, -t1478, -t1480, -t1495, t1482; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1569, t1570, 0, t1548, 0, 0, 0, 0, 0, 0, t1508, t1517, t1489, t1474, 0, 0, 0, 0, 0, 0, t1465, t1470, t1454, t1436, 0, 0, 0, 0, 0, 0, t1440, t1444, t1432, t1428; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1601, t1596, t1606, t1575, 0, 0, 0, 0, 0, 0, t1537, t1543, t1516, t1497, 0, 0, 0, 0, 0, 0, t1486, t1492, t1469, t1447, 0, 0, 0, 0, 0, 0, t1451, t1457, t1439, t1431; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1595, t1600, -t1636, t1574, 0, 0, 0, 0, 0, 0, t1536, t1542, t1515, t1496, 0, 0, 0, 0, 0, 0, t1485, t1491, t1468, t1446, 0, 0, 0, 0, 0, 0, t1450, t1456, t1438, t1430; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1590, t1587, -t1594, -t1583, 0, 0, 0, 0, 0, 0, t1538, t1540, t1554, -t1555, 0, 0, 0, 0, 0, 0, t1511, t1513, t1521, -t1510, 0, 0, 0, 0, 0, 0, t1478, t1480, t1495, -t1482; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1566, t1568, t1539, t1523, 0, 0, 0, 0, 0, 0, t1507, t1520, t1488, t1459, 0, 0, 0, 0, 0, 0, t1463, t1473, t1449, t1435; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1567, t1573, t1541, t1522, 0, 0, 0, 0, 0, 0, t1506, t1519, t1487, t1458, 0, 0, 0, 0, 0, 0, t1462, t1472, t1448, t1434; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1538, t1540, t1554, -t1555, 0, 0, 0, 0, 0, 0, t1511, t1513, t1521, -t1510, 0, 0, 0, 0, 0, 0, t1478, t1480, t1495, -t1482; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1533, t1535, t1512, t1477, 0, 0, 0, 0, 0, 0, t1484, t1494, t1461, t1443; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1534, t1556, t1514, t1476, 0, 0, 0, 0, 0, 0, t1483, t1493, t1460, t1442; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1511, t1513, t1521, -t1510, 0, 0, 0, 0, 0, 0, t1478, t1480, t1495, -t1482; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1503, t1505, t1479, t1453; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1504, t1527, t1481, t1452; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1478, t1480, t1495, -t1482;];
f_new_reg = t1;