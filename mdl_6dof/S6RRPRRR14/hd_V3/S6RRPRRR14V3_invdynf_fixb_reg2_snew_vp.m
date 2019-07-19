% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RRPRRR14V3
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
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[dummy]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 03:56
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RRPRRR14V3_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(1,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR14V3_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR14V3_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRR14V3_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRR14V3_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S6RRPRRR14V3_invdynf_fixb_reg2_snew_vp: pkin has to be [1x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 03:55:07
% EndTime: 2019-05-07 03:55:12
% DurationCPUTime: 4.45s
% Computational Cost: add. (15078->269), mult. (28940->323), div. (0->0), fcn. (22718->10), ass. (0->205)
t1413 = sin(qJ(2));
t1418 = cos(qJ(2));
t1420 = qJD(1) ^ 2;
t1396 = t1418 * t1420 * t1413;
t1390 = qJDD(2) - t1396;
t1451 = t1413 ^ 2;
t1461 = qJD(2) ^ 2;
t1393 = t1451 * t1420 + t1461;
t1366 = t1390 * t1418 - t1393 * t1413;
t1448 = qJD(1) * t1418;
t1430 = qJD(2) * t1448;
t1432 = t1413 * qJDD(1);
t1381 = 0.2e1 * t1430 + t1432;
t1414 = sin(qJ(1));
t1419 = cos(qJ(1));
t1464 = t1366 * t1414 + t1381 * t1419;
t1463 = t1366 * t1419 - t1381 * t1414;
t1412 = sin(qJ(4));
t1417 = cos(qJ(4));
t1449 = qJD(1) * t1413;
t1378 = qJD(2) * t1412 + t1417 * t1449;
t1397 = -qJD(4) + t1448;
t1411 = sin(qJ(5));
t1416 = cos(qJ(5));
t1359 = t1378 * t1411 + t1416 * t1397;
t1355 = qJD(6) + t1359;
t1462 = qJD(6) + t1355;
t1361 = t1378 * t1416 - t1397 * t1411;
t1376 = -t1417 * qJD(2) + t1412 * t1449;
t1373 = qJD(5) + t1376;
t1410 = sin(qJ(6));
t1415 = cos(qJ(6));
t1335 = t1361 * t1410 - t1415 * t1373;
t1460 = t1335 ^ 2;
t1337 = t1361 * t1415 + t1373 * t1410;
t1459 = t1337 ^ 2;
t1458 = t1355 ^ 2;
t1457 = t1359 ^ 2;
t1456 = t1361 ^ 2;
t1455 = t1373 ^ 2;
t1454 = t1376 ^ 2;
t1453 = t1378 ^ 2;
t1452 = t1397 ^ 2;
t1450 = 2 * qJD(3);
t1382 = t1430 + t1432;
t1391 = t1414 * g(1) - g(2) * t1419;
t1348 = t1449 * t1450 + t1391 + (t1382 + t1430) * qJ(3);
t1392 = -g(1) * t1419 - g(2) * t1414;
t1371 = -t1413 * g(3) + t1418 * t1392;
t1351 = t1390 * qJ(3) + qJD(2) * t1450 + t1371;
t1324 = -t1348 * t1412 + t1351 * t1417;
t1370 = -g(3) * t1418 - t1392 * t1413;
t1356 = -t1393 * qJ(3) + qJDD(3) - t1370;
t1313 = t1324 * t1411 - t1416 * t1356;
t1447 = t1313 * t1411;
t1446 = t1313 * t1416;
t1323 = t1417 * t1348 + t1351 * t1412;
t1445 = t1323 * t1412;
t1444 = t1323 * t1417;
t1443 = t1335 * t1337;
t1442 = t1356 * t1413;
t1441 = t1359 * t1361;
t1440 = t1376 * t1378;
t1437 = t1391 * t1414;
t1435 = qJD(4) + t1397;
t1434 = qJD(5) - t1373;
t1433 = qJD(6) - t1355;
t1409 = t1418 ^ 2;
t1431 = t1409 + t1451;
t1402 = qJD(2) * t1449;
t1405 = t1418 * qJDD(1);
t1429 = t1405 - qJDD(4) - t1402;
t1424 = -t1412 * qJDD(2) - t1417 * t1382;
t1349 = -qJD(4) * t1376 - t1424;
t1425 = -t1416 * t1349 + t1411 * t1429;
t1318 = -qJD(5) * t1359 - t1425;
t1426 = -t1417 * qJDD(2) + t1412 * t1382;
t1423 = qJD(4) * t1378 + qJDD(5) + t1426;
t1428 = -t1410 * t1318 + t1415 * t1423;
t1427 = t1411 * t1349 + t1416 * t1429;
t1363 = t1390 * t1413 + t1393 * t1418;
t1422 = -qJD(5) * t1361 - qJDD(6) - t1427;
t1421 = -t1415 * t1318 - t1410 * t1423;
t1394 = -t1409 * t1420 - t1461;
t1389 = qJDD(2) + t1396;
t1387 = t1431 * t1420;
t1386 = -qJDD(1) * t1414 - t1419 * t1420;
t1385 = qJDD(1) * t1419 - t1414 * t1420;
t1384 = t1431 * qJDD(1);
t1383 = t1405 - 0.2e1 * t1402;
t1380 = t1419 * t1391;
t1365 = -t1389 * t1413 + t1394 * t1418;
t1362 = t1389 * t1418 + t1394 * t1413;
t1358 = t1384 * t1419 - t1387 * t1414;
t1357 = t1384 * t1414 + t1387 * t1419;
t1354 = -t1452 - t1453;
t1353 = t1418 * t1356;
t1350 = -t1452 - t1454;
t1346 = -t1429 - t1440;
t1345 = t1429 - t1440;
t1343 = -t1453 - t1454;
t1341 = -t1370 * t1413 + t1371 * t1418;
t1340 = t1370 * t1418 + t1371 * t1413;
t1339 = t1365 * t1419 - t1383 * t1414;
t1338 = t1365 * t1414 + t1383 * t1419;
t1334 = t1435 * t1376 + t1424;
t1333 = t1376 * t1397 + t1349;
t1332 = -t1435 * t1378 - t1426;
t1331 = (qJD(4) - t1397) * t1378 + t1426;
t1330 = -t1455 - t1456;
t1329 = t1351 * t1418 + t1442;
t1328 = t1351 * t1413 - t1353;
t1327 = -t1455 - t1457;
t1326 = t1345 * t1417 - t1354 * t1412;
t1325 = t1345 * t1412 + t1354 * t1417;
t1321 = -t1346 * t1412 + t1350 * t1417;
t1320 = t1346 * t1417 + t1350 * t1412;
t1319 = -t1456 - t1457;
t1317 = -t1423 - t1441;
t1316 = t1423 - t1441;
t1315 = -t1458 - t1459;
t1314 = t1324 * t1416 + t1356 * t1411;
t1312 = t1332 * t1417 - t1334 * t1412;
t1311 = t1332 * t1412 + t1334 * t1417;
t1310 = t1434 * t1359 + t1425;
t1309 = -t1373 * t1359 + t1318;
t1308 = -t1434 * t1361 - t1427;
t1307 = (qJD(5) + t1373) * t1361 + t1427;
t1306 = -t1458 - t1460;
t1305 = t1326 * t1418 + t1333 * t1413;
t1304 = t1326 * t1413 - t1333 * t1418;
t1303 = t1321 * t1418 + t1331 * t1413;
t1302 = t1321 * t1413 - t1331 * t1418;
t1301 = -t1459 - t1460;
t1300 = t1317 * t1416 - t1330 * t1411;
t1299 = t1317 * t1411 + t1330 * t1416;
t1298 = t1324 * t1417 + t1445;
t1297 = t1324 * t1412 - t1444;
t1296 = t1312 * t1418 + t1343 * t1413;
t1295 = t1312 * t1413 - t1343 * t1418;
t1294 = -t1316 * t1411 + t1327 * t1416;
t1293 = t1316 * t1416 + t1327 * t1411;
t1292 = t1422 - t1443;
t1291 = -t1422 - t1443;
t1290 = t1298 * t1418 + t1442;
t1289 = t1314 * t1415 + t1323 * t1410;
t1288 = t1298 * t1413 - t1353;
t1287 = -t1314 * t1410 + t1323 * t1415;
t1286 = t1314 * t1416 + t1447;
t1285 = t1314 * t1411 - t1446;
t1284 = t1433 * t1335 + t1421;
t1283 = -t1335 * t1462 - t1421;
t1282 = -t1433 * t1337 + t1428;
t1281 = t1337 * t1462 - t1428;
t1280 = t1308 * t1416 - t1310 * t1411;
t1279 = t1308 * t1411 + t1310 * t1416;
t1278 = t1300 * t1417 + t1309 * t1412;
t1277 = t1300 * t1412 - t1309 * t1417;
t1276 = t1292 * t1415 - t1315 * t1410;
t1275 = t1292 * t1410 + t1315 * t1415;
t1274 = t1294 * t1417 + t1307 * t1412;
t1273 = t1294 * t1412 - t1307 * t1417;
t1272 = t1286 * t1417 + t1445;
t1271 = t1286 * t1412 - t1444;
t1270 = -t1291 * t1410 + t1306 * t1415;
t1269 = t1291 * t1415 + t1306 * t1410;
t1268 = t1280 * t1417 + t1319 * t1412;
t1267 = t1280 * t1412 - t1319 * t1417;
t1266 = -t1287 * t1410 + t1289 * t1415;
t1265 = t1287 * t1415 + t1289 * t1410;
t1264 = t1278 * t1418 + t1299 * t1413;
t1263 = t1278 * t1413 - t1299 * t1418;
t1262 = t1274 * t1418 + t1293 * t1413;
t1261 = t1274 * t1413 - t1293 * t1418;
t1260 = t1266 * t1416 + t1447;
t1259 = t1266 * t1411 - t1446;
t1258 = t1282 * t1415 - t1284 * t1410;
t1257 = t1282 * t1410 + t1284 * t1415;
t1256 = t1272 * t1418 + t1285 * t1413;
t1255 = t1272 * t1413 - t1285 * t1418;
t1254 = t1276 * t1416 + t1283 * t1411;
t1253 = t1276 * t1411 - t1283 * t1416;
t1252 = t1270 * t1416 + t1281 * t1411;
t1251 = t1270 * t1411 - t1281 * t1416;
t1250 = t1268 * t1418 + t1279 * t1413;
t1249 = t1268 * t1413 - t1279 * t1418;
t1248 = t1258 * t1416 + t1301 * t1411;
t1247 = t1258 * t1411 - t1301 * t1416;
t1246 = t1254 * t1417 + t1275 * t1412;
t1245 = t1254 * t1412 - t1275 * t1417;
t1244 = t1252 * t1417 + t1269 * t1412;
t1243 = t1252 * t1412 - t1269 * t1417;
t1242 = t1260 * t1417 + t1265 * t1412;
t1241 = t1260 * t1412 - t1265 * t1417;
t1240 = t1248 * t1417 + t1257 * t1412;
t1239 = t1248 * t1412 - t1257 * t1417;
t1238 = t1246 * t1418 + t1253 * t1413;
t1237 = t1246 * t1413 - t1253 * t1418;
t1236 = t1242 * t1418 + t1259 * t1413;
t1235 = t1242 * t1413 - t1259 * t1418;
t1234 = t1244 * t1418 + t1251 * t1413;
t1233 = t1244 * t1413 - t1251 * t1418;
t1232 = t1240 * t1418 + t1247 * t1413;
t1231 = t1240 * t1413 - t1247 * t1418;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1386, -t1385, 0, t1392 * t1419 - t1437, 0, 0, 0, 0, 0, 0, t1339, -t1463, t1358, t1341 * t1419 - t1437, 0, 0, 0, 0, 0, 0, t1339, t1358, t1463, t1329 * t1419 - t1348 * t1414, 0, 0, 0, 0, 0, 0, t1303 * t1419 + t1320 * t1414, t1305 * t1419 + t1325 * t1414, t1296 * t1419 + t1311 * t1414, t1290 * t1419 + t1297 * t1414, 0, 0, 0, 0, 0, 0, t1262 * t1419 + t1273 * t1414, t1264 * t1419 + t1277 * t1414, t1250 * t1419 + t1267 * t1414, t1256 * t1419 + t1271 * t1414, 0, 0, 0, 0, 0, 0, t1234 * t1419 + t1243 * t1414, t1238 * t1419 + t1245 * t1414, t1232 * t1419 + t1239 * t1414, t1236 * t1419 + t1241 * t1414; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1385, t1386, 0, t1392 * t1414 + t1380, 0, 0, 0, 0, 0, 0, t1338, -t1464, t1357, t1341 * t1414 + t1380, 0, 0, 0, 0, 0, 0, t1338, t1357, t1464, t1329 * t1414 + t1348 * t1419, 0, 0, 0, 0, 0, 0, t1303 * t1414 - t1320 * t1419, t1305 * t1414 - t1325 * t1419, t1296 * t1414 - t1311 * t1419, t1290 * t1414 - t1297 * t1419, 0, 0, 0, 0, 0, 0, t1262 * t1414 - t1273 * t1419, t1264 * t1414 - t1277 * t1419, t1250 * t1414 - t1267 * t1419, t1256 * t1414 - t1271 * t1419, 0, 0, 0, 0, 0, 0, t1234 * t1414 - t1243 * t1419, t1238 * t1414 - t1245 * t1419, t1232 * t1414 - t1239 * t1419, t1236 * t1414 - t1241 * t1419; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1362, -t1363, 0, t1340, 0, 0, 0, 0, 0, 0, t1362, 0, t1363, t1328, 0, 0, 0, 0, 0, 0, t1302, t1304, t1295, t1288, 0, 0, 0, 0, 0, 0, t1261, t1263, t1249, t1255, 0, 0, 0, 0, 0, 0, t1233, t1237, t1231, t1235; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1420, -qJDD(1), 0, t1392, 0, 0, 0, 0, 0, 0, t1365, -t1366, t1384, t1341, 0, 0, 0, 0, 0, 0, t1365, t1384, t1366, t1329, 0, 0, 0, 0, 0, 0, t1303, t1305, t1296, t1290, 0, 0, 0, 0, 0, 0, t1262, t1264, t1250, t1256, 0, 0, 0, 0, 0, 0, t1234, t1238, t1232, t1236; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1420, 0, t1391, 0, 0, 0, 0, 0, 0, t1383, -t1381, t1387, t1391, 0, 0, 0, 0, 0, 0, t1383, t1387, t1381, t1348, 0, 0, 0, 0, 0, 0, -t1320, -t1325, -t1311, -t1297, 0, 0, 0, 0, 0, 0, -t1273, -t1277, -t1267, -t1271, 0, 0, 0, 0, 0, 0, -t1243, -t1245, -t1239, -t1241; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1362, -t1363, 0, t1340, 0, 0, 0, 0, 0, 0, t1362, 0, t1363, t1328, 0, 0, 0, 0, 0, 0, t1302, t1304, t1295, t1288, 0, 0, 0, 0, 0, 0, t1261, t1263, t1249, t1255, 0, 0, 0, 0, 0, 0, t1233, t1237, t1231, t1235; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1394, -t1390, t1405, t1371, 0, 0, 0, 0, 0, 0, t1394, t1405, t1390, t1351, 0, 0, 0, 0, 0, 0, t1321, t1326, t1312, t1298, 0, 0, 0, 0, 0, 0, t1274, t1278, t1268, t1272, 0, 0, 0, 0, 0, 0, t1244, t1246, t1240, t1242; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1389, -t1393, -t1432, t1370, 0, 0, 0, 0, 0, 0, t1389, -t1432, t1393, -t1356, 0, 0, 0, 0, 0, 0, -t1331, -t1333, -t1343, -t1356, 0, 0, 0, 0, 0, 0, -t1293, -t1299, -t1279, -t1285, 0, 0, 0, 0, 0, 0, -t1251, -t1253, -t1247, -t1259; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1383, t1381, -t1387, -t1391, 0, 0, 0, 0, 0, 0, -t1383, -t1387, -t1381, -t1348, 0, 0, 0, 0, 0, 0, t1320, t1325, t1311, t1297, 0, 0, 0, 0, 0, 0, t1273, t1277, t1267, t1271, 0, 0, 0, 0, 0, 0, t1243, t1245, t1239, t1241; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1394, t1405, t1390, t1351, 0, 0, 0, 0, 0, 0, t1321, t1326, t1312, t1298, 0, 0, 0, 0, 0, 0, t1274, t1278, t1268, t1272, 0, 0, 0, 0, 0, 0, t1244, t1246, t1240, t1242; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1383, -t1387, -t1381, -t1348, 0, 0, 0, 0, 0, 0, t1320, t1325, t1311, t1297, 0, 0, 0, 0, 0, 0, t1273, t1277, t1267, t1271, 0, 0, 0, 0, 0, 0, t1243, t1245, t1239, t1241; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1389, t1432, -t1393, t1356, 0, 0, 0, 0, 0, 0, t1331, t1333, t1343, t1356, 0, 0, 0, 0, 0, 0, t1293, t1299, t1279, t1285, 0, 0, 0, 0, 0, 0, t1251, t1253, t1247, t1259; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1350, t1345, t1332, t1324, 0, 0, 0, 0, 0, 0, t1294, t1300, t1280, t1286, 0, 0, 0, 0, 0, 0, t1252, t1254, t1248, t1260; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1346, t1354, t1334, -t1323, 0, 0, 0, 0, 0, 0, -t1307, -t1309, -t1319, -t1323, 0, 0, 0, 0, 0, 0, -t1269, -t1275, -t1257, -t1265; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1331, t1333, t1343, t1356, 0, 0, 0, 0, 0, 0, t1293, t1299, t1279, t1285, 0, 0, 0, 0, 0, 0, t1251, t1253, t1247, t1259; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1327, t1317, t1308, t1314, 0, 0, 0, 0, 0, 0, t1270, t1276, t1258, t1266; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1316, t1330, t1310, -t1313, 0, 0, 0, 0, 0, 0, -t1281, -t1283, -t1301, -t1313; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1307, t1309, t1319, t1323, 0, 0, 0, 0, 0, 0, t1269, t1275, t1257, t1265; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1306, t1292, t1282, t1289; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1291, t1315, t1284, t1287; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1281, t1283, t1301, t1313;];
f_new_reg  = t1;