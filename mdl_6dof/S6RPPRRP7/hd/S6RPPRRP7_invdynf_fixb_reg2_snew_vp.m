% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPPRRP7
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
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 15:05
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPPRRP7_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP7_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP7_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRRP7_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRRP7_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRRP7_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 15:05:09
% EndTime: 2019-05-05 15:05:12
% DurationCPUTime: 3.60s
% Computational Cost: add. (12917->238), mult. (29660->264), div. (0->0), fcn. (21317->8), ass. (0->153)
t1498 = qJD(1) ^ 2;
t1494 = sin(qJ(1));
t1497 = cos(qJ(1));
t1471 = t1494 * g(1) - t1497 * g(2);
t1508 = qJDD(2) - t1471;
t1506 = -t1498 * qJ(2) + t1508;
t1529 = -2 * qJD(1);
t1516 = qJD(3) * t1529;
t1527 = pkin(1) + qJ(3);
t1540 = -qJDD(1) * t1527 + t1506 + t1516;
t1489 = sin(pkin(9));
t1479 = t1489 * qJDD(1);
t1472 = -t1497 * g(1) - t1494 * g(2);
t1505 = -qJDD(1) * qJ(2) + (qJD(2) * t1529) - t1472;
t1504 = -qJDD(3) + t1505;
t1485 = t1489 ^ 2;
t1490 = cos(pkin(9));
t1486 = t1490 ^ 2;
t1519 = t1485 + t1486;
t1440 = -pkin(3) * t1479 + (pkin(7) * t1519 + t1527) * t1498 + t1504;
t1493 = sin(qJ(4));
t1496 = cos(qJ(4));
t1462 = (t1489 * t1496 + t1490 * t1493) * qJD(1);
t1539 = t1519 * t1498;
t1459 = qJD(5) + t1462;
t1538 = qJD(5) + t1459;
t1535 = qJD(4) ^ 2;
t1464 = (-t1489 * t1493 + t1490 * t1496) * qJD(1);
t1492 = sin(qJ(5));
t1495 = cos(qJ(5));
t1451 = -t1495 * qJD(4) + t1492 * t1464;
t1534 = t1451 ^ 2;
t1453 = t1492 * qJD(4) + t1495 * t1464;
t1533 = t1453 ^ 2;
t1532 = t1459 ^ 2;
t1531 = t1462 ^ 2;
t1530 = t1464 ^ 2;
t1528 = -2 * qJD(6);
t1526 = t1489 * g(3);
t1525 = t1453 * t1451;
t1524 = t1462 * qJD(4);
t1458 = t1464 * qJD(4);
t1523 = t1464 * t1462;
t1522 = t1485 * t1498;
t1521 = qJD(5) - t1459;
t1442 = -t1490 * g(3) + t1489 * t1540;
t1437 = -pkin(3) * t1522 - pkin(7) * t1479 + t1442;
t1501 = t1526 + (t1516 + (-pkin(3) * t1489 - qJ(2)) * t1498 + (-pkin(7) - t1527) * qJDD(1) + t1508) * t1490;
t1417 = t1496 * t1437 + t1493 * t1501;
t1443 = t1462 * pkin(4) - t1464 * pkin(8);
t1398 = -pkin(4) * t1535 + qJDD(4) * pkin(8) - t1462 * t1443 + t1417;
t1480 = t1490 * qJDD(1);
t1511 = -t1493 * t1479 + t1480 * t1496;
t1449 = t1511 - t1524;
t1520 = t1496 * t1479 + t1493 * t1480;
t1514 = -t1458 - t1520;
t1409 = (-t1449 + t1524) * pkin(8) + (-t1514 + t1458) * pkin(4) - t1440;
t1385 = t1495 * t1398 + t1492 * t1409;
t1518 = t1494 * qJDD(1);
t1517 = t1497 * qJDD(1);
t1515 = t1489 * t1498 * t1490;
t1384 = -t1492 * t1398 + t1495 * t1409;
t1416 = -t1493 * t1437 + t1496 * t1501;
t1513 = -t1495 * qJDD(4) + t1492 * t1449;
t1512 = -qJDD(5) + t1514;
t1509 = -t1492 * qJDD(4) - t1495 * t1449;
t1507 = -t1453 * qJD(5) - t1513;
t1418 = -t1512 - t1525;
t1397 = -qJDD(4) * pkin(4) - pkin(8) * t1535 + t1464 * t1443 - t1416;
t1415 = t1451 * t1521 + t1509;
t1470 = t1497 * t1498 + t1518;
t1469 = -t1494 * t1498 + t1517;
t1467 = t1519 * qJDD(1);
t1466 = t1489 * t1539;
t1465 = t1490 * t1539;
t1460 = qJDD(1) * pkin(1) - t1506;
t1457 = t1498 * pkin(1) + t1505;
t1456 = -t1530 - t1535;
t1455 = t1498 * t1527 + t1504;
t1448 = t1511 - 0.2e1 * t1524;
t1447 = 0.2e1 * t1458 + t1520;
t1446 = -qJDD(4) - t1523;
t1445 = qJDD(4) - t1523;
t1444 = -t1531 - t1535;
t1441 = t1490 * t1540 + t1526;
t1438 = t1459 * pkin(5) - t1453 * qJ(6);
t1436 = -t1530 - t1531;
t1434 = t1514 + t1458;
t1431 = -t1532 - t1533;
t1430 = t1496 * t1446 - t1493 * t1456;
t1429 = t1493 * t1446 + t1496 * t1456;
t1428 = -t1532 - t1534;
t1426 = -t1533 - t1534;
t1425 = t1496 * t1434 + t1493 * t1511;
t1424 = t1493 * t1434 - t1496 * t1511;
t1423 = t1496 * t1444 - t1493 * t1445;
t1422 = t1493 * t1444 + t1496 * t1445;
t1421 = -t1489 * t1441 + t1490 * t1442;
t1420 = t1490 * t1441 + t1489 * t1442;
t1419 = t1512 - t1525;
t1414 = -t1451 * t1538 - t1509;
t1413 = -t1453 * t1521 - t1513;
t1412 = t1453 * t1538 + t1513;
t1411 = -t1489 * t1429 + t1490 * t1430;
t1410 = t1490 * t1429 + t1489 * t1430;
t1406 = t1495 * t1419 - t1492 * t1431;
t1405 = t1492 * t1419 + t1495 * t1431;
t1404 = -t1489 * t1424 + t1490 * t1425;
t1403 = t1490 * t1424 + t1489 * t1425;
t1402 = -t1492 * t1418 + t1495 * t1428;
t1401 = t1495 * t1418 + t1492 * t1428;
t1400 = -t1489 * t1422 + t1490 * t1423;
t1399 = t1490 * t1422 + t1489 * t1423;
t1395 = -t1493 * t1416 + t1496 * t1417;
t1394 = t1496 * t1416 + t1493 * t1417;
t1393 = t1495 * t1413 - t1492 * t1415;
t1392 = t1492 * t1413 + t1495 * t1415;
t1391 = t1496 * t1406 + t1493 * t1414;
t1390 = t1493 * t1406 - t1496 * t1414;
t1389 = t1496 * t1402 + t1493 * t1412;
t1388 = t1493 * t1402 - t1496 * t1412;
t1387 = t1496 * t1393 + t1493 * t1426;
t1386 = t1493 * t1393 - t1496 * t1426;
t1383 = -pkin(5) * t1507 - qJ(6) * t1534 + t1453 * t1438 + qJDD(6) + t1397;
t1382 = -t1489 * t1394 + t1490 * t1395;
t1381 = t1490 * t1394 + t1489 * t1395;
t1380 = -t1459 * t1438 + t1507 * qJ(6) + (-pkin(5) * t1451 + t1528) * t1451 + t1385;
t1379 = pkin(5) * t1418 + qJ(6) * t1415 + t1453 * t1528 + t1384;
t1378 = -t1489 * t1390 + t1490 * t1391;
t1377 = t1490 * t1390 + t1489 * t1391;
t1376 = -t1489 * t1388 + t1490 * t1389;
t1375 = t1490 * t1388 + t1489 * t1389;
t1374 = -t1489 * t1386 + t1490 * t1387;
t1373 = t1490 * t1386 + t1489 * t1387;
t1372 = -t1492 * t1384 + t1495 * t1385;
t1371 = t1495 * t1384 + t1492 * t1385;
t1370 = t1494 * t1377 + t1497 * t1405;
t1369 = -t1497 * t1377 + t1494 * t1405;
t1368 = t1494 * t1375 + t1497 * t1401;
t1367 = -t1497 * t1375 + t1494 * t1401;
t1366 = t1496 * t1372 + t1493 * t1397;
t1365 = t1493 * t1372 - t1496 * t1397;
t1364 = t1494 * t1373 + t1497 * t1392;
t1363 = -t1497 * t1373 + t1494 * t1392;
t1362 = -t1492 * t1379 + t1495 * t1380;
t1361 = t1495 * t1379 + t1492 * t1380;
t1360 = t1496 * t1362 + t1493 * t1383;
t1359 = t1493 * t1362 - t1496 * t1383;
t1358 = -t1489 * t1365 + t1490 * t1366;
t1357 = t1490 * t1365 + t1489 * t1366;
t1356 = -t1489 * t1359 + t1490 * t1360;
t1355 = t1490 * t1359 + t1489 * t1360;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1470, -t1469, 0, -t1494 * t1471 + t1497 * t1472, 0, 0, 0, 0, 0, 0, 0, t1470, t1469, -t1497 * t1457 - t1494 * t1460, 0, 0, 0, 0, 0, 0, -t1494 * t1466 + t1489 * t1517, -t1494 * t1465 + t1490 * t1517, -t1494 * t1467 - t1497 * t1539, t1494 * t1420 - t1497 * t1455, 0, 0, 0, 0, 0, 0, t1494 * t1399 + t1497 * t1447, t1494 * t1410 + t1497 * t1448, t1494 * t1403 + t1497 * t1436, t1494 * t1381 - t1497 * t1440, 0, 0, 0, 0, 0, 0, t1368, t1370, t1364, t1494 * t1357 + t1497 * t1371, 0, 0, 0, 0, 0, 0, t1368, t1370, t1364, t1494 * t1355 + t1497 * t1361; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1469, -t1470, 0, t1497 * t1471 + t1494 * t1472, 0, 0, 0, 0, 0, 0, 0, -t1469, t1470, -t1494 * t1457 + t1497 * t1460, 0, 0, 0, 0, 0, 0, t1497 * t1466 + t1489 * t1518, t1497 * t1465 + t1490 * t1518, t1497 * t1467 - t1494 * t1539, -t1497 * t1420 - t1494 * t1455, 0, 0, 0, 0, 0, 0, -t1497 * t1399 + t1494 * t1447, -t1497 * t1410 + t1494 * t1448, -t1497 * t1403 + t1494 * t1436, -t1497 * t1381 - t1494 * t1440, 0, 0, 0, 0, 0, 0, t1367, t1369, t1363, -t1497 * t1357 + t1494 * t1371, 0, 0, 0, 0, 0, 0, t1367, t1369, t1363, -t1497 * t1355 + t1494 * t1361; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1421, 0, 0, 0, 0, 0, 0, t1400, t1411, t1404, t1382, 0, 0, 0, 0, 0, 0, t1376, t1378, t1374, t1358, 0, 0, 0, 0, 0, 0, t1376, t1378, t1374, t1356; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1498, -qJDD(1), 0, t1472, 0, 0, 0, 0, 0, 0, 0, t1498, qJDD(1), -t1457, 0, 0, 0, 0, 0, 0, t1479, t1480, -t1539, -t1455, 0, 0, 0, 0, 0, 0, t1447, t1448, t1436, -t1440, 0, 0, 0, 0, 0, 0, t1401, t1405, t1392, t1371, 0, 0, 0, 0, 0, 0, t1401, t1405, t1392, t1361; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1498, 0, t1471, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1498, t1460, 0, 0, 0, 0, 0, 0, t1466, t1465, t1467, -t1420, 0, 0, 0, 0, 0, 0, -t1399, -t1410, -t1403, -t1381, 0, 0, 0, 0, 0, 0, -t1375, -t1377, -t1373, -t1357, 0, 0, 0, 0, 0, 0, -t1375, -t1377, -t1373, -t1355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1421, 0, 0, 0, 0, 0, 0, t1400, t1411, t1404, t1382, 0, 0, 0, 0, 0, 0, t1376, t1378, t1374, t1358, 0, 0, 0, 0, 0, 0, t1376, t1378, t1374, t1356; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1421, 0, 0, 0, 0, 0, 0, t1400, t1411, t1404, t1382, 0, 0, 0, 0, 0, 0, t1376, t1378, t1374, t1358, 0, 0, 0, 0, 0, 0, t1376, t1378, t1374, t1356; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1498, -qJDD(1), t1457, 0, 0, 0, 0, 0, 0, -t1479, -t1480, t1539, t1455, 0, 0, 0, 0, 0, 0, -t1447, -t1448, -t1436, t1440, 0, 0, 0, 0, 0, 0, -t1401, -t1405, -t1392, -t1371, 0, 0, 0, 0, 0, 0, -t1401, -t1405, -t1392, -t1361; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1498, -t1460, 0, 0, 0, 0, 0, 0, -t1466, -t1465, -t1467, t1420, 0, 0, 0, 0, 0, 0, t1399, t1410, t1403, t1381, 0, 0, 0, 0, 0, 0, t1375, t1377, t1373, t1357, 0, 0, 0, 0, 0, 0, t1375, t1377, t1373, t1355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1522, -t1515, -t1479, t1442, 0, 0, 0, 0, 0, 0, t1423, t1430, t1425, t1395, 0, 0, 0, 0, 0, 0, t1389, t1391, t1387, t1366, 0, 0, 0, 0, 0, 0, t1389, t1391, t1387, t1360; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1515, -t1486 * t1498, -t1480, t1441, 0, 0, 0, 0, 0, 0, t1422, t1429, t1424, t1394, 0, 0, 0, 0, 0, 0, t1388, t1390, t1386, t1365, 0, 0, 0, 0, 0, 0, t1388, t1390, t1386, t1359; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1479, t1480, -t1539, -t1455, 0, 0, 0, 0, 0, 0, t1447, t1448, t1436, -t1440, 0, 0, 0, 0, 0, 0, t1401, t1405, t1392, t1371, 0, 0, 0, 0, 0, 0, t1401, t1405, t1392, t1361; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1444, t1446, t1434, t1417, 0, 0, 0, 0, 0, 0, t1402, t1406, t1393, t1372, 0, 0, 0, 0, 0, 0, t1402, t1406, t1393, t1362; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1445, t1456, -t1511, t1416, 0, 0, 0, 0, 0, 0, -t1412, -t1414, -t1426, -t1397, 0, 0, 0, 0, 0, 0, -t1412, -t1414, -t1426, -t1383; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1447, t1448, t1436, -t1440, 0, 0, 0, 0, 0, 0, t1401, t1405, t1392, t1371, 0, 0, 0, 0, 0, 0, t1401, t1405, t1392, t1361; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1428, t1419, t1413, t1385, 0, 0, 0, 0, 0, 0, t1428, t1419, t1413, t1380; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1418, t1431, t1415, t1384, 0, 0, 0, 0, 0, 0, t1418, t1431, t1415, t1379; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1412, t1414, t1426, t1397, 0, 0, 0, 0, 0, 0, t1412, t1414, t1426, t1383; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1428, t1419, t1413, t1380; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1418, t1431, t1415, t1379; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1412, t1414, t1426, t1383;];
f_new_reg  = t1;
