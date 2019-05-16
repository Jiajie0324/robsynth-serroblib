% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6PRPRRP5
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,theta1]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 23:58
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6PRPRRP5_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRP5_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRP5_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPRRP5_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPRRP5_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRPRRP5_invdynf_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 23:57:46
% EndTime: 2019-05-04 23:57:50
% DurationCPUTime: 3.36s
% Computational Cost: add. (10190->228), mult. (19507->290), div. (0->0), fcn. (13499->10), ass. (0->170)
t1579 = sin(pkin(10));
t1581 = cos(pkin(10));
t1555 = g(1) * t1579 - g(2) * t1581;
t1576 = -g(3) + qJDD(1);
t1580 = sin(pkin(6));
t1582 = cos(pkin(6));
t1635 = t1555 * t1582 + t1576 * t1580;
t1586 = sin(qJ(4));
t1621 = t1586 * qJD(2);
t1565 = qJD(5) + t1621;
t1634 = qJD(5) + t1565;
t1587 = sin(qJ(2));
t1590 = cos(qJ(2));
t1591 = qJD(2) ^ 2;
t1552 = qJDD(2) * t1590 - t1587 * t1591;
t1633 = qJD(4) ^ 2;
t1585 = sin(qJ(5));
t1588 = cos(qJ(5));
t1589 = cos(qJ(4));
t1626 = qJD(2) * t1589;
t1544 = -t1588 * qJD(4) + t1585 * t1626;
t1632 = t1544 ^ 2;
t1546 = qJD(4) * t1585 + t1588 * t1626;
t1631 = t1546 ^ 2;
t1630 = t1565 ^ 2;
t1629 = 2 * qJD(3);
t1628 = -2 * qJD(6);
t1627 = t1591 * pkin(8);
t1625 = t1544 * t1546;
t1534 = -t1555 * t1580 + t1576 * t1582;
t1622 = t1580 * t1534;
t1619 = qJD(5) - t1565;
t1556 = -g(1) * t1581 - g(2) * t1579;
t1519 = -t1556 * t1587 + t1590 * t1635;
t1513 = -qJDD(2) * pkin(2) - t1591 * qJ(3) + qJDD(3) - t1519;
t1592 = -qJDD(2) * pkin(8) + t1513;
t1498 = t1589 * t1534 + t1586 * t1592;
t1547 = (pkin(4) * t1586 - pkin(9) * t1589) * qJD(2);
t1490 = -pkin(4) * t1633 + qJDD(4) * pkin(9) - t1547 * t1621 + t1498;
t1614 = qJD(4) * t1621;
t1615 = t1589 * qJDD(2);
t1549 = -t1614 + t1615;
t1520 = t1590 * t1556 + t1587 * t1635;
t1593 = -t1591 * pkin(2) + qJDD(2) * qJ(3) + t1520;
t1566 = qJD(4) * t1626;
t1567 = t1586 * qJDD(2);
t1618 = -t1567 - t1566;
t1493 = -t1627 - t1549 * pkin(9) - t1618 * pkin(4) + (t1629 + (pkin(4) * t1589 + pkin(9) * t1586) * qJD(4)) * qJD(2) + t1593;
t1471 = t1588 * t1490 + t1585 * t1493;
t1574 = t1586 ^ 2;
t1575 = t1589 ^ 2;
t1617 = t1574 + t1575;
t1613 = t1586 * t1589 * t1591;
t1612 = -qJDD(5) + t1618;
t1470 = -t1585 * t1490 + t1588 * t1493;
t1497 = -t1534 * t1586 + t1589 * t1592;
t1611 = -t1588 * qJDD(4) + t1585 * t1549;
t1595 = -t1585 * qJDD(4) - t1588 * t1549;
t1508 = t1544 * t1619 + t1595;
t1517 = -t1612 - t1625;
t1464 = pkin(5) * t1517 + qJ(6) * t1508 + t1546 * t1628 + t1470;
t1533 = pkin(5) * t1565 - qJ(6) * t1546;
t1594 = -qJD(5) * t1546 - t1611;
t1465 = -t1565 * t1533 + t1594 * qJ(6) + (-pkin(5) * t1544 + t1628) * t1544 + t1471;
t1449 = -t1464 * t1585 + t1465 * t1588;
t1489 = -qJDD(4) * pkin(4) - pkin(9) * t1633 + t1547 * t1626 - t1497;
t1472 = -pkin(5) * t1594 - qJ(6) * t1632 + t1533 * t1546 + qJDD(6) + t1489;
t1442 = t1449 * t1586 - t1472 * t1589;
t1448 = t1464 * t1588 + t1465 * t1585;
t1610 = -t1442 * t1590 + t1448 * t1587;
t1457 = -t1470 * t1585 + t1471 * t1588;
t1452 = t1457 * t1586 - t1489 * t1589;
t1456 = t1470 * t1588 + t1471 * t1585;
t1609 = -t1452 * t1590 + t1456 * t1587;
t1506 = -t1546 * t1619 - t1611;
t1484 = t1506 * t1588 - t1508 * t1585;
t1516 = -t1631 - t1632;
t1473 = t1484 * t1586 - t1516 * t1589;
t1483 = t1506 * t1585 + t1508 * t1588;
t1608 = -t1473 * t1590 + t1483 * t1587;
t1475 = t1497 * t1589 + t1498 * t1586;
t1512 = qJD(2) * t1629 + t1593;
t1511 = t1512 - t1627;
t1607 = -t1475 * t1590 + t1511 * t1587;
t1522 = -t1630 - t1632;
t1496 = -t1517 * t1585 + t1522 * t1588;
t1505 = t1546 * t1634 + t1611;
t1477 = t1496 * t1586 - t1505 * t1589;
t1495 = t1517 * t1588 + t1522 * t1585;
t1606 = -t1477 * t1590 + t1495 * t1587;
t1518 = t1612 - t1625;
t1525 = -t1630 - t1631;
t1504 = t1518 * t1588 - t1525 * t1585;
t1507 = -t1544 * t1634 - t1595;
t1479 = t1504 * t1586 - t1507 * t1589;
t1503 = t1518 * t1585 + t1525 * t1588;
t1605 = -t1479 * t1590 + t1503 * t1587;
t1604 = t1512 * t1587 - t1513 * t1590;
t1603 = t1519 * t1590 + t1520 * t1587;
t1557 = qJDD(4) - t1613;
t1563 = -t1574 * t1591 - t1633;
t1528 = t1557 * t1589 + t1563 * t1586;
t1548 = t1567 + 0.2e1 * t1566;
t1602 = -t1528 * t1590 + t1548 * t1587;
t1558 = -qJDD(4) - t1613;
t1564 = -t1575 * t1591 - t1633;
t1529 = t1558 * t1586 + t1564 * t1589;
t1550 = -0.2e1 * t1614 + t1615;
t1601 = -t1529 * t1590 + t1550 * t1587;
t1553 = qJDD(2) * t1587 + t1590 * t1591;
t1538 = t1553 * t1582;
t1600 = t1538 * t1581 + t1552 * t1579;
t1599 = t1538 * t1579 - t1552 * t1581;
t1539 = t1552 * t1582;
t1598 = -t1539 * t1581 + t1553 * t1579;
t1597 = -t1539 * t1579 - t1553 * t1581;
t1551 = t1617 * qJDD(2);
t1554 = t1617 * t1591;
t1596 = t1551 * t1590 - t1554 * t1587;
t1537 = t1552 * t1580;
t1536 = t1553 * t1580;
t1531 = t1558 * t1589 - t1564 * t1586;
t1530 = -t1557 * t1586 + t1563 * t1589;
t1527 = t1582 * t1534;
t1526 = -t1551 * t1587 - t1554 * t1590;
t1524 = t1596 * t1582;
t1523 = t1596 * t1580;
t1515 = t1529 * t1587 + t1550 * t1590;
t1514 = t1528 * t1587 + t1548 * t1590;
t1502 = -t1580 * t1531 + t1582 * t1601;
t1501 = -t1580 * t1530 + t1582 * t1602;
t1500 = t1582 * t1531 + t1580 * t1601;
t1499 = t1582 * t1530 + t1580 * t1602;
t1494 = -t1519 * t1587 + t1520 * t1590;
t1488 = t1512 * t1590 + t1513 * t1587;
t1486 = t1582 * t1603 - t1622;
t1485 = t1580 * t1603 + t1527;
t1482 = t1582 * t1604 - t1622;
t1481 = t1580 * t1604 + t1527;
t1480 = t1504 * t1589 + t1507 * t1586;
t1478 = t1496 * t1589 + t1505 * t1586;
t1476 = -t1497 * t1586 + t1498 * t1589;
t1474 = t1484 * t1589 + t1516 * t1586;
t1469 = t1479 * t1587 + t1503 * t1590;
t1468 = t1475 * t1587 + t1511 * t1590;
t1467 = t1477 * t1587 + t1495 * t1590;
t1466 = t1473 * t1587 + t1483 * t1590;
t1463 = -t1580 * t1480 + t1582 * t1605;
t1462 = t1582 * t1480 + t1580 * t1605;
t1461 = -t1580 * t1478 + t1582 * t1606;
t1460 = t1582 * t1478 + t1580 * t1606;
t1459 = -t1580 * t1476 + t1582 * t1607;
t1458 = t1582 * t1476 + t1580 * t1607;
t1455 = -t1580 * t1474 + t1582 * t1608;
t1454 = t1582 * t1474 + t1580 * t1608;
t1453 = t1457 * t1589 + t1489 * t1586;
t1451 = -t1463 * t1579 + t1469 * t1581;
t1450 = t1463 * t1581 + t1469 * t1579;
t1447 = -t1461 * t1579 + t1467 * t1581;
t1446 = t1461 * t1581 + t1467 * t1579;
t1445 = -t1455 * t1579 + t1466 * t1581;
t1444 = t1455 * t1581 + t1466 * t1579;
t1443 = t1449 * t1589 + t1472 * t1586;
t1441 = t1452 * t1587 + t1456 * t1590;
t1440 = t1442 * t1587 + t1448 * t1590;
t1439 = -t1580 * t1453 + t1582 * t1609;
t1438 = t1582 * t1453 + t1580 * t1609;
t1437 = -t1580 * t1443 + t1582 * t1610;
t1436 = t1582 * t1443 + t1580 * t1610;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1555 * t1579 + t1556 * t1581, 0, 0, 0, 0, 0, 0, t1597, t1599, 0, -t1486 * t1579 + t1494 * t1581, 0, 0, 0, 0, 0, 0, 0, -t1597, -t1599, -t1482 * t1579 + t1488 * t1581, 0, 0, 0, 0, 0, 0, -t1501 * t1579 + t1514 * t1581, -t1502 * t1579 + t1515 * t1581, -t1524 * t1579 + t1526 * t1581, -t1459 * t1579 + t1468 * t1581, 0, 0, 0, 0, 0, 0, t1447, t1451, t1445, -t1439 * t1579 + t1441 * t1581, 0, 0, 0, 0, 0, 0, t1447, t1451, t1445, -t1437 * t1579 + t1440 * t1581; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1555 * t1581 + t1556 * t1579, 0, 0, 0, 0, 0, 0, -t1598, -t1600, 0, t1486 * t1581 + t1494 * t1579, 0, 0, 0, 0, 0, 0, 0, t1598, t1600, t1482 * t1581 + t1488 * t1579, 0, 0, 0, 0, 0, 0, t1501 * t1581 + t1514 * t1579, t1502 * t1581 + t1515 * t1579, t1524 * t1581 + t1526 * t1579, t1459 * t1581 + t1468 * t1579, 0, 0, 0, 0, 0, 0, t1446, t1450, t1444, t1439 * t1581 + t1441 * t1579, 0, 0, 0, 0, 0, 0, t1446, t1450, t1444, t1437 * t1581 + t1440 * t1579; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1576, 0, 0, 0, 0, 0, 0, t1537, -t1536, 0, t1485, 0, 0, 0, 0, 0, 0, 0, -t1537, t1536, t1481, 0, 0, 0, 0, 0, 0, t1499, t1500, t1523, t1458, 0, 0, 0, 0, 0, 0, t1460, t1462, t1454, t1438, 0, 0, 0, 0, 0, 0, t1460, t1462, t1454, t1436; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1556, 0, 0, 0, 0, 0, 0, -t1553, -t1552, 0, t1494, 0, 0, 0, 0, 0, 0, 0, t1553, t1552, t1488, 0, 0, 0, 0, 0, 0, t1514, t1515, t1526, t1468, 0, 0, 0, 0, 0, 0, t1467, t1469, t1466, t1441, 0, 0, 0, 0, 0, 0, t1467, t1469, t1466, t1440; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1555, 0, 0, 0, 0, 0, 0, t1539, -t1538, 0, t1486, 0, 0, 0, 0, 0, 0, 0, -t1539, t1538, t1482, 0, 0, 0, 0, 0, 0, t1501, t1502, t1524, t1459, 0, 0, 0, 0, 0, 0, t1461, t1463, t1455, t1439, 0, 0, 0, 0, 0, 0, t1461, t1463, t1455, t1437; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1576, 0, 0, 0, 0, 0, 0, t1537, -t1536, 0, t1485, 0, 0, 0, 0, 0, 0, 0, -t1537, t1536, t1481, 0, 0, 0, 0, 0, 0, t1499, t1500, t1523, t1458, 0, 0, 0, 0, 0, 0, t1460, t1462, t1454, t1438, 0, 0, 0, 0, 0, 0, t1460, t1462, t1454, t1436; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1591, -qJDD(2), 0, t1520, 0, 0, 0, 0, 0, 0, 0, t1591, qJDD(2), t1512, 0, 0, 0, 0, 0, 0, t1548, t1550, -t1554, t1511, 0, 0, 0, 0, 0, 0, t1495, t1503, t1483, t1456, 0, 0, 0, 0, 0, 0, t1495, t1503, t1483, t1448; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1591, 0, t1519, 0, 0, 0, 0, 0, 0, 0, -qJDD(2), t1591, -t1513, 0, 0, 0, 0, 0, 0, -t1528, -t1529, t1551, -t1475, 0, 0, 0, 0, 0, 0, -t1477, -t1479, -t1473, -t1452, 0, 0, 0, 0, 0, 0, -t1477, -t1479, -t1473, -t1442; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1534, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1534, 0, 0, 0, 0, 0, 0, t1530, t1531, 0, t1476, 0, 0, 0, 0, 0, 0, t1478, t1480, t1474, t1453, 0, 0, 0, 0, 0, 0, t1478, t1480, t1474, t1443; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1534, 0, 0, 0, 0, 0, 0, t1530, t1531, 0, t1476, 0, 0, 0, 0, 0, 0, t1478, t1480, t1474, t1453, 0, 0, 0, 0, 0, 0, t1478, t1480, t1474, t1443; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1591, -qJDD(2), -t1512, 0, 0, 0, 0, 0, 0, -t1548, -t1550, t1554, -t1511, 0, 0, 0, 0, 0, 0, -t1495, -t1503, -t1483, -t1456, 0, 0, 0, 0, 0, 0, -t1495, -t1503, -t1483, -t1448; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1591, t1513, 0, 0, 0, 0, 0, 0, t1528, t1529, -t1551, t1475, 0, 0, 0, 0, 0, 0, t1477, t1479, t1473, t1452, 0, 0, 0, 0, 0, 0, t1477, t1479, t1473, t1442; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1563, t1558, -t1567, t1498, 0, 0, 0, 0, 0, 0, t1496, t1504, t1484, t1457, 0, 0, 0, 0, 0, 0, t1496, t1504, t1484, t1449; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1557, t1564, -t1615, t1497, 0, 0, 0, 0, 0, 0, -t1505, -t1507, -t1516, -t1489, 0, 0, 0, 0, 0, 0, -t1505, -t1507, -t1516, -t1472; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1548, t1550, -t1554, t1511, 0, 0, 0, 0, 0, 0, t1495, t1503, t1483, t1456, 0, 0, 0, 0, 0, 0, t1495, t1503, t1483, t1448; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1522, t1518, t1506, t1471, 0, 0, 0, 0, 0, 0, t1522, t1518, t1506, t1465; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1517, t1525, t1508, t1470, 0, 0, 0, 0, 0, 0, t1517, t1525, t1508, t1464; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1505, t1507, t1516, t1489, 0, 0, 0, 0, 0, 0, t1505, t1507, t1516, t1472; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1522, t1518, t1506, t1465; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1517, t1525, t1508, t1464; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1505, t1507, t1516, t1472;];
f_new_reg  = t1;
