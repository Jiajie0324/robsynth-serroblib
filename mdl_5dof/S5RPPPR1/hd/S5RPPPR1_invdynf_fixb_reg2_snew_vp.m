% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RPPPR1
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
%   pkin=[a2,a3,a4,a5,d1,d5,theta2,theta3,theta4]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 11:21
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RPPPR1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPPR1_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPPR1_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPPPR1_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPPR1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPPPR1_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 11:21:09
% EndTime: 2020-01-03 11:21:12
% DurationCPUTime: 2.67s
% Computational Cost: add. (8459->207), mult. (20431->312), div. (0->0), fcn. (13226->10), ass. (0->174)
t1350 = sin(qJ(1));
t1352 = cos(qJ(1));
t1324 = -t1350 * g(2) + t1352 * g(3);
t1353 = qJD(1) ^ 2;
t1312 = -t1353 * pkin(1) + t1324;
t1345 = sin(pkin(7));
t1348 = cos(pkin(7));
t1325 = -t1352 * g(2) - t1350 * g(3);
t1356 = qJDD(1) * pkin(1) + t1325;
t1283 = -t1345 * t1312 + t1348 * t1356;
t1276 = -qJDD(1) * pkin(2) - t1353 * qJ(3) + qJDD(3) - t1283;
t1344 = sin(pkin(8));
t1347 = cos(pkin(8));
t1362 = -pkin(3) * t1347 - qJ(4) * t1344;
t1386 = qJD(1) * t1344;
t1370 = -0.2e1 * t1386;
t1393 = qJD(4) * t1370 + qJDD(1) * t1362 + t1276;
t1338 = t1344 ^ 2;
t1340 = t1347 ^ 2;
t1377 = t1338 + t1340;
t1317 = t1377 * t1353;
t1382 = t1347 * qJD(1);
t1328 = -qJD(5) + t1382;
t1392 = qJD(5) - t1328;
t1343 = sin(pkin(9));
t1346 = cos(pkin(9));
t1349 = sin(qJ(5));
t1351 = cos(qJ(5));
t1360 = t1343 * t1351 + t1346 * t1349;
t1357 = t1360 * t1344;
t1292 = qJD(1) * t1357;
t1391 = t1292 ^ 2;
t1383 = t1344 * t1346;
t1367 = t1351 * t1383;
t1294 = -t1349 * t1343 * t1386 + qJD(1) * t1367;
t1390 = t1294 ^ 2;
t1389 = t1328 ^ 2;
t1388 = 2 * qJD(3);
t1387 = -g(1) + qJDD(2);
t1385 = t1294 * t1292;
t1384 = t1338 * t1353;
t1381 = t1347 * t1353;
t1311 = t1362 * qJD(1);
t1380 = t1388 + t1311;
t1379 = qJD(5) + t1328;
t1378 = t1393 * t1346;
t1284 = t1348 * t1312 + t1345 * t1356;
t1376 = qJDD(1) * t1346;
t1375 = t1344 * qJDD(1);
t1374 = t1345 * qJDD(1);
t1334 = t1347 * qJDD(1);
t1373 = t1348 * qJDD(1);
t1333 = t1347 * t1387;
t1372 = qJDD(4) - t1333;
t1371 = t1334 - qJDD(5);
t1337 = t1343 ^ 2;
t1369 = t1337 * t1384;
t1368 = t1343 * t1381;
t1327 = t1344 * t1381;
t1277 = -t1353 * pkin(2) + qJDD(1) * qJ(3) + t1284;
t1268 = t1347 * t1277 + t1344 * t1387 + t1382 * t1388;
t1255 = t1311 * t1382 + t1268;
t1235 = t1346 * t1255 + t1393 * t1343;
t1366 = t1343 * t1375;
t1314 = -t1348 * t1353 - t1374;
t1315 = -t1345 * t1353 + t1373;
t1364 = t1350 * t1314 + t1352 * t1315;
t1363 = t1343 * t1346 * t1384;
t1361 = t1352 * t1314 - t1350 * t1315;
t1359 = -pkin(4) * t1347 - pkin(6) * t1383;
t1358 = -qJDD(1) * t1367 + t1349 * t1366;
t1339 = t1346 ^ 2;
t1321 = t1352 * qJDD(1) - t1350 * t1353;
t1320 = -t1350 * qJDD(1) - t1352 * t1353;
t1316 = t1346 * t1327;
t1313 = t1377 * qJDD(1);
t1310 = t1347 * t1317;
t1309 = (-t1338 * t1339 - t1340) * t1353;
t1308 = t1344 * t1317;
t1307 = (-t1337 * t1338 - t1340) * t1353;
t1305 = t1359 * qJD(1);
t1301 = (t1337 + t1339) * t1384;
t1300 = -t1334 - t1363;
t1299 = t1334 - t1363;
t1298 = (t1368 - t1376) * t1344;
t1297 = (t1368 + t1376) * t1344;
t1296 = -t1316 - t1366;
t1295 = -t1316 + t1366;
t1291 = -t1348 * t1310 - t1334 * t1345;
t1290 = t1348 * t1308 + t1344 * t1374;
t1289 = -t1345 * t1310 + t1347 * t1373;
t1288 = t1345 * t1308 - t1344 * t1373;
t1286 = t1348 * t1313 - t1345 * t1317;
t1285 = t1345 * t1313 + t1348 * t1317;
t1282 = -t1389 - t1390;
t1281 = t1346 * t1299 - t1343 * t1309;
t1280 = -t1343 * t1300 + t1346 * t1307;
t1279 = t1343 * t1299 + t1346 * t1309;
t1278 = t1346 * t1300 + t1343 * t1307;
t1274 = t1346 * t1296 - t1343 * t1298;
t1273 = t1343 * t1296 + t1346 * t1298;
t1272 = -t1371 - t1385;
t1271 = t1371 - t1385;
t1269 = -t1389 - t1391;
t1267 = qJD(3) * t1370 - t1344 * t1277 + t1333;
t1264 = t1347 * t1281 + t1344 * t1297;
t1263 = t1347 * t1280 + t1344 * t1295;
t1262 = t1344 * t1281 - t1347 * t1297;
t1261 = t1344 * t1280 - t1347 * t1295;
t1260 = -t1390 - t1391;
t1259 = -t1345 * t1283 + t1348 * t1284;
t1258 = t1347 * t1274 - t1344 * t1301;
t1257 = t1348 * t1283 + t1345 * t1284;
t1256 = t1344 * t1274 + t1347 * t1301;
t1254 = (t1380 * qJD(1) + t1277) * t1344 + t1372;
t1253 = t1379 * t1292 + t1358;
t1252 = -t1392 * t1292 - t1358;
t1251 = -qJDD(1) * t1357 - t1379 * t1294;
t1250 = t1392 * t1294 + t1360 * t1375;
t1248 = t1351 * t1271 - t1349 * t1282;
t1247 = t1349 * t1271 + t1351 * t1282;
t1246 = t1351 * t1269 - t1349 * t1272;
t1245 = t1349 * t1269 + t1351 * t1272;
t1244 = t1348 * t1264 + t1345 * t1279;
t1243 = t1348 * t1263 + t1345 * t1278;
t1242 = t1345 * t1264 - t1348 * t1279;
t1241 = t1345 * t1263 - t1348 * t1278;
t1240 = -pkin(6) * t1369 + (pkin(4) * qJDD(1) * t1343 + t1277 + (t1305 * t1346 + t1380) * qJD(1)) * t1344 + t1372;
t1239 = -t1344 * t1267 + t1347 * t1268;
t1238 = t1347 * t1267 + t1344 * t1268;
t1237 = t1348 * t1258 + t1345 * t1273;
t1236 = t1345 * t1258 - t1348 * t1273;
t1234 = -t1343 * t1255 + t1378;
t1233 = t1351 * t1251 - t1349 * t1253;
t1232 = t1349 * t1251 + t1351 * t1253;
t1231 = t1348 * t1239 + t1345 * t1276;
t1230 = t1345 * t1239 - t1348 * t1276;
t1229 = -pkin(4) * t1369 - pkin(6) * t1366 + t1305 * t1382 + t1235;
t1228 = t1359 * qJDD(1) + (-t1255 + (-pkin(4) * t1338 * t1346 + pkin(6) * t1344 * t1347) * t1353) * t1343 + t1378;
t1227 = -t1343 * t1247 + t1346 * t1248;
t1226 = t1346 * t1247 + t1343 * t1248;
t1225 = -t1343 * t1245 + t1346 * t1246;
t1224 = t1346 * t1245 + t1343 * t1246;
t1223 = t1347 * t1227 + t1344 * t1252;
t1222 = t1344 * t1227 - t1347 * t1252;
t1221 = -t1343 * t1234 + t1346 * t1235;
t1220 = t1346 * t1234 + t1343 * t1235;
t1219 = t1347 * t1225 + t1344 * t1250;
t1218 = t1344 * t1225 - t1347 * t1250;
t1217 = -t1343 * t1232 + t1346 * t1233;
t1216 = t1346 * t1232 + t1343 * t1233;
t1215 = t1349 * t1228 + t1351 * t1229;
t1214 = t1351 * t1228 - t1349 * t1229;
t1213 = t1347 * t1221 + t1344 * t1254;
t1212 = t1344 * t1221 - t1347 * t1254;
t1211 = t1347 * t1217 + t1344 * t1260;
t1210 = t1344 * t1217 - t1347 * t1260;
t1209 = t1348 * t1223 + t1345 * t1226;
t1208 = t1345 * t1223 - t1348 * t1226;
t1207 = t1348 * t1219 + t1345 * t1224;
t1206 = t1345 * t1219 - t1348 * t1224;
t1205 = t1348 * t1213 + t1345 * t1220;
t1204 = t1345 * t1213 - t1348 * t1220;
t1203 = t1348 * t1211 + t1345 * t1216;
t1202 = t1345 * t1211 - t1348 * t1216;
t1201 = -t1349 * t1214 + t1351 * t1215;
t1200 = t1351 * t1214 + t1349 * t1215;
t1199 = -t1343 * t1200 + t1346 * t1201;
t1198 = t1346 * t1200 + t1343 * t1201;
t1197 = t1347 * t1199 + t1344 * t1240;
t1196 = t1344 * t1199 - t1347 * t1240;
t1195 = t1348 * t1197 + t1345 * t1198;
t1194 = t1345 * t1197 - t1348 * t1198;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1387, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1238, 0, 0, 0, 0, 0, 0, t1261, t1262, t1256, t1212, 0, 0, 0, 0, 0, 0, t1218, t1222, t1210, t1196; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1321, t1320, 0, t1350 * t1324 + t1352 * t1325, 0, 0, 0, 0, 0, 0, t1364, t1361, 0, t1352 * t1257 + t1350 * t1259, 0, 0, 0, 0, 0, 0, t1352 * t1289 + t1350 * t1291, t1352 * t1288 + t1350 * t1290, t1352 * t1285 + t1350 * t1286, t1352 * t1230 + t1350 * t1231, 0, 0, 0, 0, 0, 0, t1352 * t1241 + t1350 * t1243, t1352 * t1242 + t1350 * t1244, t1352 * t1236 + t1350 * t1237, t1352 * t1204 + t1350 * t1205, 0, 0, 0, 0, 0, 0, t1352 * t1206 + t1350 * t1207, t1352 * t1208 + t1350 * t1209, t1352 * t1202 + t1350 * t1203, t1352 * t1194 + t1350 * t1195; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t1320, t1321, 0, -t1352 * t1324 + t1350 * t1325, 0, 0, 0, 0, 0, 0, -t1361, t1364, 0, t1350 * t1257 - t1352 * t1259, 0, 0, 0, 0, 0, 0, t1350 * t1289 - t1352 * t1291, t1350 * t1288 - t1352 * t1290, t1350 * t1285 - t1352 * t1286, t1350 * t1230 - t1352 * t1231, 0, 0, 0, 0, 0, 0, t1350 * t1241 - t1352 * t1243, t1350 * t1242 - t1352 * t1244, t1350 * t1236 - t1352 * t1237, t1350 * t1204 - t1352 * t1205, 0, 0, 0, 0, 0, 0, t1350 * t1206 - t1352 * t1207, t1350 * t1208 - t1352 * t1209, t1350 * t1202 - t1352 * t1203, t1350 * t1194 - t1352 * t1195; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1353, -qJDD(1), 0, t1324, 0, 0, 0, 0, 0, 0, t1314, -t1315, 0, t1259, 0, 0, 0, 0, 0, 0, t1291, t1290, t1286, t1231, 0, 0, 0, 0, 0, 0, t1243, t1244, t1237, t1205, 0, 0, 0, 0, 0, 0, t1207, t1209, t1203, t1195; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1353, 0, t1325, 0, 0, 0, 0, 0, 0, t1315, t1314, 0, t1257, 0, 0, 0, 0, 0, 0, t1289, t1288, t1285, t1230, 0, 0, 0, 0, 0, 0, t1241, t1242, t1236, t1204, 0, 0, 0, 0, 0, 0, t1206, t1208, t1202, t1194; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1387, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1238, 0, 0, 0, 0, 0, 0, t1261, t1262, t1256, t1212, 0, 0, 0, 0, 0, 0, t1218, t1222, t1210, t1196; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1353, -qJDD(1), 0, t1284, 0, 0, 0, 0, 0, 0, -t1310, t1308, t1313, t1239, 0, 0, 0, 0, 0, 0, t1263, t1264, t1258, t1213, 0, 0, 0, 0, 0, 0, t1219, t1223, t1211, t1197; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1353, 0, t1283, 0, 0, 0, 0, 0, 0, t1334, -t1375, t1317, -t1276, 0, 0, 0, 0, 0, 0, -t1278, -t1279, -t1273, -t1220, 0, 0, 0, 0, 0, 0, -t1224, -t1226, -t1216, -t1198; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1387, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1238, 0, 0, 0, 0, 0, 0, t1261, t1262, t1256, t1212, 0, 0, 0, 0, 0, 0, t1218, t1222, t1210, t1196; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1340 * t1353, t1327, t1334, t1268, 0, 0, 0, 0, 0, 0, t1280, t1281, t1274, t1221, 0, 0, 0, 0, 0, 0, t1225, t1227, t1217, t1199; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1327, -t1384, -t1375, t1267, 0, 0, 0, 0, 0, 0, -t1295, -t1297, t1301, -t1254, 0, 0, 0, 0, 0, 0, -t1250, -t1252, -t1260, -t1240; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1334, t1375, -t1317, t1276, 0, 0, 0, 0, 0, 0, t1278, t1279, t1273, t1220, 0, 0, 0, 0, 0, 0, t1224, t1226, t1216, t1198; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1307, t1299, t1296, t1235, 0, 0, 0, 0, 0, 0, t1246, t1248, t1233, t1201; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1300, t1309, t1298, t1234, 0, 0, 0, 0, 0, 0, t1245, t1247, t1232, t1200; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1295, t1297, -t1301, t1254, 0, 0, 0, 0, 0, 0, t1250, t1252, t1260, t1240; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1269, t1271, t1251, t1215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1272, t1282, t1253, t1214; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1250, t1252, t1260, t1240;];
f_new_reg = t1;
