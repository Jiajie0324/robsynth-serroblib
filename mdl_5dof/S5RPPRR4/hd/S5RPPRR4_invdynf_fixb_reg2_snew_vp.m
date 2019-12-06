% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RPPRR4
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
%   pkin=[a2,a3,a4,a5,d1,d4,d5,theta2,theta3]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:45
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RPPRR4_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRR4_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRR4_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPPRR4_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRR4_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPPRR4_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:45:51
% EndTime: 2019-12-05 17:45:54
% DurationCPUTime: 3.77s
% Computational Cost: add. (17260->245), mult. (47949->356), div. (0->0), fcn. (33988->10), ass. (0->202)
t1491 = sin(qJ(1));
t1494 = cos(qJ(1));
t1471 = t1494 * g(2) + t1491 * g(3);
t1495 = qJD(1) ^ 2;
t1500 = -t1495 * qJ(2) + qJDD(2) - t1471;
t1486 = sin(pkin(8));
t1488 = cos(pkin(8));
t1506 = -pkin(2) * t1488 - qJ(3) * t1486;
t1534 = qJD(1) * t1486;
t1516 = -0.2e1 * t1534;
t1545 = (-pkin(1) + t1506) * qJDD(1) + t1500 + qJD(3) * t1516;
t1482 = t1486 ^ 2;
t1484 = t1488 ^ 2;
t1522 = t1482 + t1484;
t1463 = t1522 * t1495;
t1528 = t1488 * qJD(1);
t1476 = -qJD(4) + t1528;
t1473 = -qJD(5) + t1476;
t1544 = qJD(5) - t1473;
t1485 = sin(pkin(9));
t1487 = cos(pkin(9));
t1490 = sin(qJ(4));
t1493 = cos(qJ(4));
t1505 = t1485 * t1493 + t1487 * t1490;
t1502 = t1505 * t1486;
t1442 = qJD(1) * t1502;
t1529 = t1486 * t1487;
t1513 = t1493 * t1529;
t1444 = -t1490 * t1485 * t1534 + qJD(1) * t1513;
t1489 = sin(qJ(5));
t1492 = cos(qJ(5));
t1418 = t1492 * t1442 + t1489 * t1444;
t1543 = t1418 ^ 2;
t1420 = -t1489 * t1442 + t1492 * t1444;
t1542 = t1420 ^ 2;
t1541 = t1442 ^ 2;
t1540 = t1444 ^ 2;
t1539 = t1473 ^ 2;
t1538 = t1476 ^ 2;
t1537 = t1485 ^ 2;
t1536 = 2 * qJD(2);
t1535 = t1488 * g(1);
t1533 = t1420 * t1418;
t1532 = t1442 * t1476;
t1531 = t1444 * t1442;
t1530 = t1482 * t1495;
t1527 = t1488 * t1495;
t1460 = t1506 * qJD(1);
t1526 = t1536 + t1460;
t1525 = qJD(4) + t1476;
t1524 = qJD(5) + t1473;
t1470 = t1491 * g(2) - t1494 * g(3);
t1454 = -t1495 * pkin(1) + qJDD(1) * qJ(2) + t1470;
t1437 = -t1486 * g(1) + t1488 * t1454 + t1528 * t1536;
t1423 = t1460 * t1528 + t1437;
t1504 = -pkin(3) * t1488 - pkin(6) * t1529;
t1523 = t1545 * t1487;
t1387 = t1504 * qJDD(1) + (-t1423 + (-pkin(3) * t1482 * t1487 + pkin(6) * t1486 * t1488) * t1495) * t1485 + t1523;
t1397 = t1487 * t1423 + t1545 * t1485;
t1455 = t1504 * qJD(1);
t1515 = t1485 * t1530;
t1520 = t1486 * qJDD(1);
t1388 = t1455 * t1528 + (-pkin(3) * t1515 - pkin(6) * t1520) * t1485 + t1397;
t1363 = t1490 * t1387 + t1493 * t1388;
t1521 = qJDD(1) * t1487;
t1519 = t1491 * qJDD(1);
t1518 = t1494 * qJDD(1);
t1480 = t1488 * qJDD(1);
t1517 = t1480 - qJDD(4);
t1514 = t1485 * t1527;
t1475 = t1486 * t1527;
t1512 = t1485 * t1520;
t1511 = -qJDD(5) + t1517;
t1510 = qJDD(3) + t1535;
t1362 = t1493 * t1387 - t1490 * t1388;
t1503 = -qJDD(1) * t1513 + t1490 * t1512;
t1427 = -t1442 * qJD(4) - t1503;
t1501 = qJDD(1) * t1502;
t1499 = t1444 * qJD(4) + t1501;
t1508 = -t1489 * t1427 - t1492 * t1499;
t1507 = t1487 * t1515;
t1417 = -t1517 - t1531;
t1498 = -t1492 * t1427 + t1489 * t1499;
t1398 = -t1537 * pkin(6) * t1530 + (pkin(3) * qJDD(1) * t1485 + t1454 + (t1455 * t1487 + t1526) * qJD(1)) * t1486 + t1510;
t1483 = t1487 ^ 2;
t1467 = t1491 * t1495 - t1518;
t1466 = t1494 * t1495 + t1519;
t1462 = t1487 * t1475;
t1461 = t1522 * qJDD(1);
t1459 = t1488 * t1463;
t1458 = (-t1482 * t1483 - t1484) * t1495;
t1457 = t1486 * t1463;
t1456 = (-t1482 * t1537 - t1484) * t1495;
t1453 = (t1483 + t1537) * t1530;
t1452 = -t1480 - t1507;
t1451 = t1480 - t1507;
t1450 = qJDD(1) * pkin(1) - t1500;
t1448 = (t1514 - t1521) * t1486;
t1447 = (t1514 + t1521) * t1486;
t1446 = -t1462 - t1512;
t1445 = -t1462 + t1512;
t1436 = qJD(2) * t1516 - t1486 * t1454 - t1535;
t1435 = -t1476 * pkin(4) - t1444 * pkin(7);
t1432 = -t1538 - t1540;
t1431 = t1487 * t1451 - t1485 * t1458;
t1430 = -t1485 * t1452 + t1487 * t1456;
t1429 = t1485 * t1451 + t1487 * t1458;
t1428 = t1487 * t1452 + t1485 * t1456;
t1426 = t1487 * t1446 - t1485 * t1448;
t1425 = t1485 * t1446 + t1487 * t1448;
t1421 = (t1526 * qJD(1) + t1454) * t1486 + t1510;
t1416 = t1517 - t1531;
t1414 = -t1538 - t1541;
t1412 = t1488 * t1431 + t1486 * t1447;
t1411 = t1488 * t1430 + t1486 * t1445;
t1410 = t1486 * t1431 - t1488 * t1447;
t1409 = t1486 * t1430 - t1488 * t1445;
t1408 = -t1540 - t1541;
t1407 = -t1486 * t1436 + t1488 * t1437;
t1406 = t1488 * t1436 + t1486 * t1437;
t1405 = -t1539 - t1542;
t1404 = t1488 * t1426 - t1486 * t1453;
t1403 = t1486 * t1426 + t1488 * t1453;
t1402 = t1525 * t1442 + t1503;
t1401 = t1427 + t1532;
t1400 = -t1525 * t1444 - t1501;
t1399 = (qJD(4) - t1476) * t1444 + t1505 * t1520;
t1396 = -t1485 * t1423 + t1523;
t1395 = t1493 * t1416 - t1490 * t1432;
t1394 = t1490 * t1416 + t1493 * t1432;
t1393 = -t1511 - t1533;
t1392 = t1511 - t1533;
t1391 = t1493 * t1414 - t1490 * t1417;
t1390 = t1490 * t1414 + t1493 * t1417;
t1389 = -t1539 - t1543;
t1383 = -t1542 - t1543;
t1382 = t1493 * t1400 - t1490 * t1402;
t1381 = t1490 * t1400 + t1493 * t1402;
t1380 = t1492 * t1392 - t1489 * t1405;
t1379 = t1489 * t1392 + t1492 * t1405;
t1378 = -t1485 * t1396 + t1487 * t1397;
t1377 = t1487 * t1396 + t1485 * t1397;
t1376 = -t1485 * t1394 + t1487 * t1395;
t1375 = t1487 * t1394 + t1485 * t1395;
t1374 = t1524 * t1418 + t1498;
t1373 = -t1544 * t1418 - t1498;
t1372 = -t1524 * t1420 + t1508;
t1371 = t1544 * t1420 - t1508;
t1370 = t1499 * pkin(4) - t1541 * pkin(7) + t1444 * t1435 + t1398;
t1369 = t1492 * t1389 - t1489 * t1393;
t1368 = t1489 * t1389 + t1492 * t1393;
t1367 = -t1485 * t1390 + t1487 * t1391;
t1366 = t1487 * t1390 + t1485 * t1391;
t1365 = t1488 * t1378 + t1486 * t1421;
t1364 = t1486 * t1378 - t1488 * t1421;
t1361 = t1488 * t1376 + t1486 * t1401;
t1360 = t1486 * t1376 - t1488 * t1401;
t1359 = t1488 * t1367 + t1486 * t1399;
t1358 = t1486 * t1367 - t1488 * t1399;
t1357 = -t1485 * t1381 + t1487 * t1382;
t1356 = t1487 * t1381 + t1485 * t1382;
t1355 = -t1490 * t1379 + t1493 * t1380;
t1354 = t1493 * t1379 + t1490 * t1380;
t1353 = -t1541 * pkin(4) - t1499 * pkin(7) + t1476 * t1435 + t1363;
t1352 = t1488 * t1357 + t1486 * t1408;
t1351 = t1486 * t1357 - t1488 * t1408;
t1350 = (-t1427 + t1532) * pkin(7) + t1417 * pkin(4) + t1362;
t1349 = t1492 * t1372 - t1489 * t1374;
t1348 = t1489 * t1372 + t1492 * t1374;
t1347 = -t1490 * t1368 + t1493 * t1369;
t1346 = t1493 * t1368 + t1490 * t1369;
t1345 = -t1490 * t1362 + t1493 * t1363;
t1344 = t1493 * t1362 + t1490 * t1363;
t1343 = -t1485 * t1354 + t1487 * t1355;
t1342 = t1487 * t1354 + t1485 * t1355;
t1341 = t1489 * t1350 + t1492 * t1353;
t1340 = t1492 * t1350 - t1489 * t1353;
t1339 = -t1490 * t1348 + t1493 * t1349;
t1338 = t1493 * t1348 + t1490 * t1349;
t1337 = -t1485 * t1346 + t1487 * t1347;
t1336 = t1487 * t1346 + t1485 * t1347;
t1335 = t1488 * t1343 + t1486 * t1373;
t1334 = t1486 * t1343 - t1488 * t1373;
t1333 = -t1485 * t1344 + t1487 * t1345;
t1332 = t1487 * t1344 + t1485 * t1345;
t1331 = t1488 * t1337 + t1486 * t1371;
t1330 = t1486 * t1337 - t1488 * t1371;
t1329 = t1488 * t1333 + t1486 * t1398;
t1328 = t1486 * t1333 - t1488 * t1398;
t1327 = -t1489 * t1340 + t1492 * t1341;
t1326 = t1492 * t1340 + t1489 * t1341;
t1325 = -t1485 * t1338 + t1487 * t1339;
t1324 = t1487 * t1338 + t1485 * t1339;
t1323 = t1488 * t1325 + t1486 * t1383;
t1322 = t1486 * t1325 - t1488 * t1383;
t1321 = -t1490 * t1326 + t1493 * t1327;
t1320 = t1493 * t1326 + t1490 * t1327;
t1319 = -t1485 * t1320 + t1487 * t1321;
t1318 = t1487 * t1320 + t1485 * t1321;
t1317 = t1488 * t1319 + t1486 * t1370;
t1316 = t1486 * t1319 - t1488 * t1370;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1406, 0, 0, 0, 0, 0, 0, t1409, t1410, t1403, t1364, 0, 0, 0, 0, 0, 0, t1358, t1360, t1351, t1328, 0, 0, 0, 0, 0, 0, t1330, t1334, t1322, t1316; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1467, t1466, 0, -t1491 * t1470 - t1494 * t1471, 0, 0, 0, 0, 0, 0, t1491 * t1459 - t1488 * t1518, -t1491 * t1457 + t1486 * t1518, -t1491 * t1461 - t1494 * t1463, -t1491 * t1407 - t1494 * t1450, 0, 0, 0, 0, 0, 0, -t1491 * t1411 + t1494 * t1428, -t1491 * t1412 + t1494 * t1429, -t1491 * t1404 + t1494 * t1425, -t1491 * t1365 + t1494 * t1377, 0, 0, 0, 0, 0, 0, -t1491 * t1359 + t1494 * t1366, -t1491 * t1361 + t1494 * t1375, -t1491 * t1352 + t1494 * t1356, -t1491 * t1329 + t1494 * t1332, 0, 0, 0, 0, 0, 0, -t1491 * t1331 + t1494 * t1336, -t1491 * t1335 + t1494 * t1342, -t1491 * t1323 + t1494 * t1324, -t1491 * t1317 + t1494 * t1318; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t1466, t1467, 0, t1494 * t1470 - t1491 * t1471, 0, 0, 0, 0, 0, 0, -t1494 * t1459 - t1488 * t1519, t1494 * t1457 + t1486 * t1519, t1494 * t1461 - t1491 * t1463, t1494 * t1407 - t1491 * t1450, 0, 0, 0, 0, 0, 0, t1494 * t1411 + t1491 * t1428, t1494 * t1412 + t1491 * t1429, t1494 * t1404 + t1491 * t1425, t1494 * t1365 + t1491 * t1377, 0, 0, 0, 0, 0, 0, t1494 * t1359 + t1491 * t1366, t1494 * t1361 + t1491 * t1375, t1494 * t1352 + t1491 * t1356, t1494 * t1329 + t1491 * t1332, 0, 0, 0, 0, 0, 0, t1494 * t1331 + t1491 * t1336, t1494 * t1335 + t1491 * t1342, t1494 * t1323 + t1491 * t1324, t1494 * t1317 + t1491 * t1318; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1495, -qJDD(1), 0, t1470, 0, 0, 0, 0, 0, 0, -t1459, t1457, t1461, t1407, 0, 0, 0, 0, 0, 0, t1411, t1412, t1404, t1365, 0, 0, 0, 0, 0, 0, t1359, t1361, t1352, t1329, 0, 0, 0, 0, 0, 0, t1331, t1335, t1323, t1317; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1495, 0, t1471, 0, 0, 0, 0, 0, 0, t1480, -t1520, t1463, t1450, 0, 0, 0, 0, 0, 0, -t1428, -t1429, -t1425, -t1377, 0, 0, 0, 0, 0, 0, -t1366, -t1375, -t1356, -t1332, 0, 0, 0, 0, 0, 0, -t1336, -t1342, -t1324, -t1318; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1406, 0, 0, 0, 0, 0, 0, t1409, t1410, t1403, t1364, 0, 0, 0, 0, 0, 0, t1358, t1360, t1351, t1328, 0, 0, 0, 0, 0, 0, t1330, t1334, t1322, t1316; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1484 * t1495, t1475, t1480, t1437, 0, 0, 0, 0, 0, 0, t1430, t1431, t1426, t1378, 0, 0, 0, 0, 0, 0, t1367, t1376, t1357, t1333, 0, 0, 0, 0, 0, 0, t1337, t1343, t1325, t1319; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1475, -t1530, -t1520, t1436, 0, 0, 0, 0, 0, 0, -t1445, -t1447, t1453, -t1421, 0, 0, 0, 0, 0, 0, -t1399, -t1401, -t1408, -t1398, 0, 0, 0, 0, 0, 0, -t1371, -t1373, -t1383, -t1370; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1480, t1520, -t1463, -t1450, 0, 0, 0, 0, 0, 0, t1428, t1429, t1425, t1377, 0, 0, 0, 0, 0, 0, t1366, t1375, t1356, t1332, 0, 0, 0, 0, 0, 0, t1336, t1342, t1324, t1318; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1456, t1451, t1446, t1397, 0, 0, 0, 0, 0, 0, t1391, t1395, t1382, t1345, 0, 0, 0, 0, 0, 0, t1347, t1355, t1339, t1321; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1452, t1458, t1448, t1396, 0, 0, 0, 0, 0, 0, t1390, t1394, t1381, t1344, 0, 0, 0, 0, 0, 0, t1346, t1354, t1338, t1320; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1445, t1447, -t1453, t1421, 0, 0, 0, 0, 0, 0, t1399, t1401, t1408, t1398, 0, 0, 0, 0, 0, 0, t1371, t1373, t1383, t1370; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1414, t1416, t1400, t1363, 0, 0, 0, 0, 0, 0, t1369, t1380, t1349, t1327; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1417, t1432, t1402, t1362, 0, 0, 0, 0, 0, 0, t1368, t1379, t1348, t1326; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1399, t1401, t1408, t1398, 0, 0, 0, 0, 0, 0, t1371, t1373, t1383, t1370; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1389, t1392, t1372, t1341; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1393, t1405, t1374, t1340; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1371, t1373, t1383, t1370;];
f_new_reg = t1;