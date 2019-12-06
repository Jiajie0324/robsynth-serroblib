% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5PPRRR4
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,alpha3,d3,d4,d5,theta1,theta2]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:20
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5PPRRR4_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRRR4_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PPRRR4_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PPRRR4_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PPRRR4_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S5PPRRR4_invdynf_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:20:35
% EndTime: 2019-12-05 15:20:38
% DurationCPUTime: 3.34s
% Computational Cost: add. (17794->209), mult. (32717->347), div. (0->0), fcn. (27286->14), ass. (0->191)
t1405 = sin(pkin(10));
t1409 = cos(pkin(10));
t1387 = -t1409 * g(1) - t1405 * g(2);
t1404 = sin(pkin(11));
t1408 = cos(pkin(11));
t1386 = t1405 * g(1) - t1409 * g(2);
t1401 = -g(3) + qJDD(1);
t1407 = sin(pkin(5));
t1411 = cos(pkin(5));
t1425 = t1386 * t1411 + t1401 * t1407;
t1351 = -t1404 * t1387 + t1425 * t1408;
t1369 = -t1407 * t1386 + t1411 * t1401 + qJDD(2);
t1406 = sin(pkin(6));
t1410 = cos(pkin(6));
t1464 = t1351 * t1410 + t1369 * t1406;
t1418 = cos(qJ(4));
t1455 = t1418 * qJD(3);
t1393 = -qJD(5) + t1455;
t1463 = qJD(5) - t1393;
t1414 = sin(qJ(5));
t1417 = cos(qJ(5));
t1415 = sin(qJ(4));
t1459 = qJD(3) * t1415;
t1375 = -t1417 * qJD(4) + t1414 * t1459;
t1462 = t1375 ^ 2;
t1377 = t1414 * qJD(4) + t1417 * t1459;
t1461 = t1377 ^ 2;
t1460 = t1393 ^ 2;
t1456 = t1377 * t1375;
t1454 = qJD(5) + t1393;
t1352 = t1408 * t1387 + t1425 * t1404;
t1416 = sin(qJ(3));
t1419 = cos(qJ(3));
t1320 = t1419 * t1352 + t1464 * t1416;
t1421 = qJD(3) ^ 2;
t1316 = -t1421 * pkin(3) + qJDD(3) * pkin(8) + t1320;
t1336 = -t1406 * t1351 + t1410 * t1369;
t1304 = t1418 * t1316 + t1415 * t1336;
t1399 = t1415 ^ 2;
t1400 = t1418 ^ 2;
t1453 = t1399 + t1400;
t1452 = t1415 * qJDD(3);
t1451 = qJD(4) * t1459;
t1450 = qJD(4) * t1455;
t1380 = t1450 + t1452;
t1449 = t1417 * qJDD(4) - t1414 * t1380;
t1397 = t1418 * qJDD(3);
t1448 = -t1397 + 0.2e1 * t1451;
t1447 = t1416 * t1352 - t1464 * t1419;
t1378 = (-pkin(4) * t1418 - pkin(9) * t1415) * qJD(3);
t1420 = qJD(4) ^ 2;
t1297 = -t1420 * pkin(4) + qJDD(4) * pkin(9) + t1378 * t1455 + t1304;
t1315 = -qJDD(3) * pkin(3) - t1421 * pkin(8) + t1447;
t1305 = (-t1380 - t1450) * pkin(9) + t1448 * pkin(4) + t1315;
t1285 = -t1414 * t1297 + t1417 * t1305;
t1286 = t1417 * t1297 + t1414 * t1305;
t1275 = -t1414 * t1285 + t1417 * t1286;
t1335 = t1418 * t1336;
t1296 = -t1335 - qJDD(4) * pkin(4) - t1420 * pkin(9) + (qJD(3) * t1378 + t1316) * t1415;
t1264 = t1415 * t1275 - t1418 * t1296;
t1265 = t1418 * t1275 + t1415 * t1296;
t1274 = t1417 * t1285 + t1414 * t1286;
t1445 = t1265 * t1416 - t1274 * t1419;
t1257 = -t1406 * t1264 + t1445 * t1410;
t1260 = t1419 * t1265 + t1416 * t1274;
t1446 = t1257 * t1408 + t1260 * t1404;
t1303 = -t1415 * t1316 + t1335;
t1283 = t1418 * t1303 + t1415 * t1304;
t1284 = -t1415 * t1303 + t1418 * t1304;
t1442 = t1284 * t1416 - t1315 * t1419;
t1271 = -t1406 * t1283 + t1442 * t1410;
t1280 = t1419 * t1284 + t1416 * t1315;
t1444 = t1271 * t1408 + t1280 * t1404;
t1343 = -t1454 * t1377 + t1449;
t1423 = -t1414 * qJDD(4) - t1417 * t1380;
t1345 = t1454 * t1375 + t1423;
t1322 = t1417 * t1343 - t1414 * t1345;
t1353 = -t1461 - t1462;
t1306 = t1415 * t1322 - t1418 * t1353;
t1307 = t1418 * t1322 + t1415 * t1353;
t1321 = t1414 * t1343 + t1417 * t1345;
t1438 = t1307 * t1416 - t1321 * t1419;
t1282 = -t1406 * t1306 + t1438 * t1410;
t1293 = t1419 * t1307 + t1416 * t1321;
t1443 = t1282 * t1408 + t1293 * t1404;
t1422 = -qJDD(5) + t1397 - t1451;
t1355 = -t1422 - t1456;
t1358 = -t1460 - t1462;
t1327 = -t1414 * t1355 + t1417 * t1358;
t1342 = t1463 * t1377 - t1449;
t1308 = t1415 * t1327 - t1418 * t1342;
t1309 = t1418 * t1327 + t1415 * t1342;
t1326 = t1417 * t1355 + t1414 * t1358;
t1437 = t1309 * t1416 - t1326 * t1419;
t1288 = -t1406 * t1308 + t1437 * t1410;
t1295 = t1419 * t1309 + t1416 * t1326;
t1441 = t1288 * t1408 + t1295 * t1404;
t1354 = t1422 - t1456;
t1363 = -t1460 - t1461;
t1333 = t1417 * t1354 - t1414 * t1363;
t1344 = -t1463 * t1375 - t1423;
t1310 = t1415 * t1333 - t1418 * t1344;
t1311 = t1418 * t1333 + t1415 * t1344;
t1332 = t1414 * t1354 + t1417 * t1363;
t1436 = t1311 * t1416 - t1332 * t1419;
t1290 = -t1406 * t1310 + t1436 * t1410;
t1298 = t1419 * t1311 + t1416 * t1332;
t1440 = t1290 * t1408 + t1298 * t1404;
t1435 = t1320 * t1416 - t1419 * t1447;
t1292 = -t1406 * t1336 + t1435 * t1410;
t1294 = t1419 * t1320 + t1416 * t1447;
t1439 = t1292 * t1408 + t1294 * t1404;
t1392 = t1415 * t1421 * t1418;
t1388 = qJDD(4) + t1392;
t1391 = -t1400 * t1421 - t1420;
t1365 = t1418 * t1388 + t1415 * t1391;
t1367 = -t1415 * t1388 + t1418 * t1391;
t1430 = t1367 * t1416 - t1419 * t1448;
t1330 = -t1406 * t1365 + t1430 * t1410;
t1349 = t1419 * t1367 + t1416 * t1448;
t1434 = t1330 * t1408 + t1349 * t1404;
t1389 = -qJDD(4) + t1392;
t1390 = -t1399 * t1421 - t1420;
t1366 = t1415 * t1389 + t1418 * t1390;
t1368 = t1418 * t1389 - t1415 * t1390;
t1379 = 0.2e1 * t1450 + t1452;
t1429 = t1368 * t1416 - t1379 * t1419;
t1331 = -t1406 * t1366 + t1429 * t1410;
t1350 = t1419 * t1368 + t1416 * t1379;
t1433 = t1331 * t1408 + t1350 * t1404;
t1432 = t1351 * t1408 + t1352 * t1404;
t1382 = t1453 * qJDD(3);
t1385 = t1453 * t1421;
t1426 = t1382 * t1416 + t1385 * t1419;
t1360 = t1426 * t1410;
t1364 = t1419 * t1382 - t1416 * t1385;
t1431 = t1360 * t1408 + t1364 * t1404;
t1384 = -t1416 * qJDD(3) - t1419 * t1421;
t1373 = t1384 * t1410;
t1424 = t1419 * qJDD(3) - t1416 * t1421;
t1428 = t1373 * t1408 - t1404 * t1424;
t1374 = t1424 * t1410;
t1427 = t1374 * t1408 + t1384 * t1404;
t1372 = t1424 * t1406;
t1371 = t1384 * t1406;
t1359 = t1426 * t1406;
t1357 = -t1404 * t1374 + t1408 * t1384;
t1356 = -t1404 * t1373 - t1408 * t1424;
t1341 = -t1407 * t1372 + t1427 * t1411;
t1340 = -t1407 * t1371 + t1428 * t1411;
t1339 = t1411 * t1372 + t1427 * t1407;
t1338 = t1411 * t1371 + t1428 * t1407;
t1337 = -t1404 * t1360 + t1408 * t1364;
t1329 = t1410 * t1366 + t1429 * t1406;
t1328 = t1410 * t1365 + t1430 * t1406;
t1325 = -t1404 * t1351 + t1408 * t1352;
t1324 = -t1407 * t1359 + t1431 * t1411;
t1323 = t1411 * t1359 + t1431 * t1407;
t1318 = -t1407 * t1369 + t1432 * t1411;
t1317 = t1411 * t1369 + t1432 * t1407;
t1314 = -t1404 * t1331 + t1408 * t1350;
t1313 = -t1404 * t1330 + t1408 * t1349;
t1302 = -t1407 * t1329 + t1433 * t1411;
t1301 = -t1407 * t1328 + t1434 * t1411;
t1300 = t1411 * t1329 + t1433 * t1407;
t1299 = t1411 * t1328 + t1434 * t1407;
t1291 = t1410 * t1336 + t1435 * t1406;
t1289 = t1410 * t1310 + t1436 * t1406;
t1287 = t1410 * t1308 + t1437 * t1406;
t1281 = t1410 * t1306 + t1438 * t1406;
t1279 = -t1404 * t1292 + t1408 * t1294;
t1278 = -t1404 * t1290 + t1408 * t1298;
t1277 = -t1404 * t1288 + t1408 * t1295;
t1276 = -t1404 * t1282 + t1408 * t1293;
t1273 = -t1407 * t1291 + t1439 * t1411;
t1272 = t1411 * t1291 + t1439 * t1407;
t1270 = t1410 * t1283 + t1442 * t1406;
t1269 = -t1407 * t1289 + t1440 * t1411;
t1268 = t1411 * t1289 + t1440 * t1407;
t1267 = -t1407 * t1287 + t1441 * t1411;
t1266 = t1411 * t1287 + t1441 * t1407;
t1263 = -t1407 * t1281 + t1443 * t1411;
t1262 = t1411 * t1281 + t1443 * t1407;
t1261 = -t1404 * t1271 + t1408 * t1280;
t1259 = -t1407 * t1270 + t1444 * t1411;
t1258 = t1411 * t1270 + t1444 * t1407;
t1256 = t1410 * t1264 + t1445 * t1406;
t1255 = -t1404 * t1257 + t1408 * t1260;
t1254 = -t1407 * t1256 + t1446 * t1411;
t1253 = t1411 * t1256 + t1446 * t1407;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1405 * t1386 + t1409 * t1387, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1405 * t1318 + t1409 * t1325, 0, 0, 0, 0, 0, 0, -t1405 * t1341 + t1409 * t1357, -t1405 * t1340 + t1409 * t1356, 0, -t1405 * t1273 + t1409 * t1279, 0, 0, 0, 0, 0, 0, -t1405 * t1301 + t1409 * t1313, -t1405 * t1302 + t1409 * t1314, -t1405 * t1324 + t1409 * t1337, -t1405 * t1259 + t1409 * t1261, 0, 0, 0, 0, 0, 0, -t1405 * t1267 + t1409 * t1277, -t1405 * t1269 + t1409 * t1278, -t1405 * t1263 + t1409 * t1276, -t1405 * t1254 + t1409 * t1255; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1409 * t1386 + t1405 * t1387, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1409 * t1318 + t1405 * t1325, 0, 0, 0, 0, 0, 0, t1409 * t1341 + t1405 * t1357, t1409 * t1340 + t1405 * t1356, 0, t1409 * t1273 + t1405 * t1279, 0, 0, 0, 0, 0, 0, t1409 * t1301 + t1405 * t1313, t1409 * t1302 + t1405 * t1314, t1409 * t1324 + t1405 * t1337, t1409 * t1259 + t1405 * t1261, 0, 0, 0, 0, 0, 0, t1409 * t1267 + t1405 * t1277, t1409 * t1269 + t1405 * t1278, t1409 * t1263 + t1405 * t1276, t1409 * t1254 + t1405 * t1255; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1401, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1317, 0, 0, 0, 0, 0, 0, t1339, t1338, 0, t1272, 0, 0, 0, 0, 0, 0, t1299, t1300, t1323, t1258, 0, 0, 0, 0, 0, 0, t1266, t1268, t1262, t1253; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1387, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1325, 0, 0, 0, 0, 0, 0, t1357, t1356, 0, t1279, 0, 0, 0, 0, 0, 0, t1313, t1314, t1337, t1261, 0, 0, 0, 0, 0, 0, t1277, t1278, t1276, t1255; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1386, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1318, 0, 0, 0, 0, 0, 0, t1341, t1340, 0, t1273, 0, 0, 0, 0, 0, 0, t1301, t1302, t1324, t1259, 0, 0, 0, 0, 0, 0, t1267, t1269, t1263, t1254; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1401, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1317, 0, 0, 0, 0, 0, 0, t1339, t1338, 0, t1272, 0, 0, 0, 0, 0, 0, t1299, t1300, t1323, t1258, 0, 0, 0, 0, 0, 0, t1266, t1268, t1262, t1253; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1352, 0, 0, 0, 0, 0, 0, t1384, -t1424, 0, t1294, 0, 0, 0, 0, 0, 0, t1349, t1350, t1364, t1280, 0, 0, 0, 0, 0, 0, t1295, t1298, t1293, t1260; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1351, 0, 0, 0, 0, 0, 0, t1374, t1373, 0, t1292, 0, 0, 0, 0, 0, 0, t1330, t1331, t1360, t1271, 0, 0, 0, 0, 0, 0, t1288, t1290, t1282, t1257; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1369, 0, 0, 0, 0, 0, 0, t1372, t1371, 0, t1291, 0, 0, 0, 0, 0, 0, t1328, t1329, t1359, t1270, 0, 0, 0, 0, 0, 0, t1287, t1289, t1281, t1256; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1421, -qJDD(3), 0, t1320, 0, 0, 0, 0, 0, 0, t1367, t1368, t1382, t1284, 0, 0, 0, 0, 0, 0, t1309, t1311, t1307, t1265; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(3), -t1421, 0, -t1447, 0, 0, 0, 0, 0, 0, -t1448, -t1379, t1385, -t1315, 0, 0, 0, 0, 0, 0, -t1326, -t1332, -t1321, -t1274; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1336, 0, 0, 0, 0, 0, 0, t1365, t1366, 0, t1283, 0, 0, 0, 0, 0, 0, t1308, t1310, t1306, t1264; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1391, t1389, t1397, t1304, 0, 0, 0, 0, 0, 0, t1327, t1333, t1322, t1275; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1388, t1390, -t1452, t1303, 0, 0, 0, 0, 0, 0, -t1342, -t1344, -t1353, -t1296; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1448, t1379, -t1385, t1315, 0, 0, 0, 0, 0, 0, t1326, t1332, t1321, t1274; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1358, t1354, t1343, t1286; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1355, t1363, t1345, t1285; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1342, t1344, t1353, t1296;];
f_new_reg = t1;
