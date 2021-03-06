% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RRPPR8
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5,theta4]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:39
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RRPPR8_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPR8_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPPR8_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRPPR8_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPPR8_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPPR8_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:39:47
% EndTime: 2019-12-31 19:39:49
% DurationCPUTime: 2.51s
% Computational Cost: add. (9584->228), mult. (22149->269), div. (0->0), fcn. (13799->8), ass. (0->156)
t1352 = cos(qJ(2));
t1373 = qJD(2) * t1352;
t1361 = qJD(1) * t1373;
t1349 = sin(qJ(2));
t1364 = t1349 * qJDD(1);
t1315 = t1361 + t1364;
t1377 = qJD(1) * t1349;
t1335 = qJD(2) * t1377;
t1363 = t1352 * qJDD(1);
t1316 = -t1335 + t1363;
t1346 = sin(pkin(8));
t1347 = cos(pkin(8));
t1284 = t1347 * t1315 - t1346 * t1316;
t1306 = (-t1346 * t1349 - t1347 * t1352) * qJD(1);
t1375 = qJD(2) * t1306;
t1269 = -t1284 - t1375;
t1355 = qJD(1) ^ 2;
t1368 = t1352 * t1355;
t1330 = t1349 * t1368;
t1324 = qJDD(2) - t1330;
t1343 = t1349 ^ 2;
t1354 = qJD(2) ^ 2;
t1328 = t1343 * t1355 + t1354;
t1291 = t1352 * t1324 - t1349 * t1328;
t1314 = 0.2e1 * t1361 + t1364;
t1350 = sin(qJ(1));
t1353 = cos(qJ(1));
t1386 = t1350 * t1291 + t1353 * t1314;
t1385 = t1353 * t1291 - t1350 * t1314;
t1339 = qJD(2) - qJD(5);
t1384 = qJD(5) - t1339;
t1376 = qJD(1) * t1352;
t1308 = -t1346 * t1376 + t1347 * t1377;
t1348 = sin(qJ(5));
t1351 = cos(qJ(5));
t1275 = -t1351 * t1306 + t1348 * t1308;
t1383 = t1275 ^ 2;
t1277 = t1348 * t1306 + t1351 * t1308;
t1382 = t1277 ^ 2;
t1305 = t1306 ^ 2;
t1381 = t1308 ^ 2;
t1380 = t1339 ^ 2;
t1379 = 2 * qJD(3);
t1378 = t1352 * g(3);
t1374 = qJD(2) * t1308;
t1372 = t1277 * t1275;
t1371 = t1308 * t1306;
t1344 = t1352 ^ 2;
t1370 = t1344 * t1355;
t1366 = qJD(5) + t1339;
t1365 = t1343 + t1344;
t1362 = -qJDD(2) + qJDD(5);
t1326 = -t1353 * g(1) - t1350 * g(2);
t1311 = -t1355 * pkin(1) + qJDD(1) * pkin(6) + t1326;
t1294 = -t1349 * g(3) + t1352 * t1311;
t1313 = (-pkin(2) * t1352 - qJ(3) * t1349) * qJD(1);
t1264 = -t1354 * pkin(2) + qJDD(2) * qJ(3) + qJD(2) * t1379 + t1313 * t1376 + t1294;
t1322 = -qJD(2) * pkin(3) - qJ(4) * t1377;
t1255 = -pkin(3) * t1370 - t1316 * qJ(4) + qJD(2) * t1322 + t1264;
t1357 = -qJDD(2) * pkin(2) - t1354 * qJ(3) + qJDD(3) + t1378;
t1360 = qJD(1) * t1313 + t1311;
t1256 = -qJDD(2) * pkin(3) + (-t1315 + t1361) * qJ(4) + (-pkin(3) * t1368 + t1360) * t1349 + t1357;
t1229 = 0.2e1 * qJD(4) * t1306 + t1347 * t1255 + t1346 * t1256;
t1325 = t1350 * g(1) - t1353 * g(2);
t1283 = -t1346 * t1315 - t1347 * t1316;
t1359 = t1351 * t1283 - t1348 * t1284;
t1280 = -qJDD(2) + t1371;
t1228 = -0.2e1 * qJD(4) * t1308 - t1346 * t1255 + t1347 * t1256;
t1358 = -t1348 * t1283 - t1351 * t1284;
t1288 = t1349 * t1324 + t1352 * t1328;
t1310 = qJDD(1) * pkin(1) + t1355 * pkin(6) + t1325;
t1356 = t1310 + (t1316 - t1335) * pkin(2);
t1248 = t1315 * qJ(3) + qJDD(4) + t1316 * pkin(3) - qJ(4) * t1370 + (qJ(3) * t1373 + (t1379 + t1322) * t1349) * qJD(1) + t1356;
t1329 = -t1354 - t1370;
t1323 = qJDD(2) + t1330;
t1321 = t1365 * t1355;
t1320 = -t1350 * qJDD(1) - t1353 * t1355;
t1319 = t1353 * qJDD(1) - t1350 * t1355;
t1318 = t1365 * qJDD(1);
t1317 = -0.2e1 * t1335 + t1363;
t1296 = -t1354 - t1381;
t1295 = -qJD(2) * pkin(4) - t1308 * pkin(7);
t1293 = -t1349 * t1311 - t1378;
t1290 = -t1349 * t1323 + t1352 * t1329;
t1287 = t1352 * t1323 + t1349 * t1329;
t1286 = t1353 * t1318 - t1350 * t1321;
t1285 = t1350 * t1318 + t1353 * t1321;
t1279 = qJDD(2) + t1371;
t1278 = -t1354 - t1305;
t1274 = t1353 * t1290 - t1350 * t1317;
t1273 = t1350 * t1290 + t1353 * t1317;
t1271 = t1360 * t1349 + t1357;
t1270 = -t1380 - t1382;
t1268 = t1284 - t1375;
t1267 = t1283 - t1374;
t1266 = -t1283 - t1374;
t1265 = -t1305 - t1381;
t1263 = -t1349 * t1293 + t1352 * t1294;
t1262 = t1352 * t1293 + t1349 * t1294;
t1261 = t1377 * t1379 + (t1315 + t1361) * qJ(3) + t1356;
t1260 = t1347 * t1279 - t1346 * t1296;
t1259 = t1346 * t1279 + t1347 * t1296;
t1258 = t1347 * t1278 - t1346 * t1280;
t1257 = t1346 * t1278 + t1347 * t1280;
t1254 = t1362 - t1372;
t1253 = -t1362 - t1372;
t1250 = -t1380 - t1383;
t1247 = t1352 * t1264 + t1349 * t1271;
t1246 = t1349 * t1264 - t1352 * t1271;
t1245 = t1347 * t1267 - t1346 * t1269;
t1244 = t1346 * t1267 + t1347 * t1269;
t1243 = -t1382 - t1383;
t1242 = t1349 * t1259 + t1352 * t1260;
t1241 = -t1352 * t1259 + t1349 * t1260;
t1240 = t1351 * t1253 - t1348 * t1270;
t1239 = t1348 * t1253 + t1351 * t1270;
t1238 = t1366 * t1275 + t1358;
t1237 = -t1384 * t1275 - t1358;
t1236 = -t1366 * t1277 + t1359;
t1235 = t1384 * t1277 - t1359;
t1234 = t1349 * t1257 + t1352 * t1258;
t1233 = -t1352 * t1257 + t1349 * t1258;
t1232 = t1351 * t1250 - t1348 * t1254;
t1231 = t1348 * t1250 + t1351 * t1254;
t1230 = -t1283 * pkin(4) - t1305 * pkin(7) + t1308 * t1295 + t1248;
t1227 = t1349 * t1244 + t1352 * t1245;
t1226 = -t1352 * t1244 + t1349 * t1245;
t1225 = -t1305 * pkin(4) + t1283 * pkin(7) + qJD(2) * t1295 + t1229;
t1224 = t1280 * pkin(4) + t1269 * pkin(7) + t1228;
t1223 = -t1346 * t1239 + t1347 * t1240;
t1222 = t1347 * t1239 + t1346 * t1240;
t1221 = t1351 * t1236 - t1348 * t1238;
t1220 = t1348 * t1236 + t1351 * t1238;
t1219 = -t1346 * t1231 + t1347 * t1232;
t1218 = t1347 * t1231 + t1346 * t1232;
t1217 = -t1346 * t1228 + t1347 * t1229;
t1216 = t1347 * t1228 + t1346 * t1229;
t1215 = t1348 * t1224 + t1351 * t1225;
t1214 = t1351 * t1224 - t1348 * t1225;
t1213 = t1349 * t1222 + t1352 * t1223;
t1212 = -t1352 * t1222 + t1349 * t1223;
t1211 = -t1346 * t1220 + t1347 * t1221;
t1210 = t1347 * t1220 + t1346 * t1221;
t1209 = t1349 * t1218 + t1352 * t1219;
t1208 = -t1352 * t1218 + t1349 * t1219;
t1207 = t1349 * t1216 + t1352 * t1217;
t1206 = -t1352 * t1216 + t1349 * t1217;
t1205 = -t1348 * t1214 + t1351 * t1215;
t1204 = t1351 * t1214 + t1348 * t1215;
t1203 = t1349 * t1210 + t1352 * t1211;
t1202 = -t1352 * t1210 + t1349 * t1211;
t1201 = -t1346 * t1204 + t1347 * t1205;
t1200 = t1347 * t1204 + t1346 * t1205;
t1199 = t1349 * t1200 + t1352 * t1201;
t1198 = -t1352 * t1200 + t1349 * t1201;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1320, -t1319, 0, -t1350 * t1325 + t1353 * t1326, 0, 0, 0, 0, 0, 0, t1274, -t1385, t1286, t1353 * t1263 - t1350 * t1310, 0, 0, 0, 0, 0, 0, t1274, t1286, t1385, t1353 * t1247 - t1350 * t1261, 0, 0, 0, 0, 0, 0, t1353 * t1234 - t1350 * t1266, t1353 * t1242 - t1350 * t1268, t1353 * t1227 - t1350 * t1265, t1353 * t1207 - t1350 * t1248, 0, 0, 0, 0, 0, 0, t1353 * t1209 - t1350 * t1235, t1353 * t1213 - t1350 * t1237, t1353 * t1203 - t1350 * t1243, t1353 * t1199 - t1350 * t1230; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1319, t1320, 0, t1353 * t1325 + t1350 * t1326, 0, 0, 0, 0, 0, 0, t1273, -t1386, t1285, t1350 * t1263 + t1353 * t1310, 0, 0, 0, 0, 0, 0, t1273, t1285, t1386, t1350 * t1247 + t1353 * t1261, 0, 0, 0, 0, 0, 0, t1350 * t1234 + t1353 * t1266, t1350 * t1242 + t1353 * t1268, t1350 * t1227 + t1353 * t1265, t1350 * t1207 + t1353 * t1248, 0, 0, 0, 0, 0, 0, t1350 * t1209 + t1353 * t1235, t1350 * t1213 + t1353 * t1237, t1350 * t1203 + t1353 * t1243, t1350 * t1199 + t1353 * t1230; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1287, -t1288, 0, t1262, 0, 0, 0, 0, 0, 0, t1287, 0, t1288, t1246, 0, 0, 0, 0, 0, 0, t1233, t1241, t1226, t1206, 0, 0, 0, 0, 0, 0, t1208, t1212, t1202, t1198; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1355, -qJDD(1), 0, t1326, 0, 0, 0, 0, 0, 0, t1290, -t1291, t1318, t1263, 0, 0, 0, 0, 0, 0, t1290, t1318, t1291, t1247, 0, 0, 0, 0, 0, 0, t1234, t1242, t1227, t1207, 0, 0, 0, 0, 0, 0, t1209, t1213, t1203, t1199; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1355, 0, t1325, 0, 0, 0, 0, 0, 0, t1317, -t1314, t1321, t1310, 0, 0, 0, 0, 0, 0, t1317, t1321, t1314, t1261, 0, 0, 0, 0, 0, 0, t1266, t1268, t1265, t1248, 0, 0, 0, 0, 0, 0, t1235, t1237, t1243, t1230; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1287, -t1288, 0, t1262, 0, 0, 0, 0, 0, 0, t1287, 0, t1288, t1246, 0, 0, 0, 0, 0, 0, t1233, t1241, t1226, t1206, 0, 0, 0, 0, 0, 0, t1208, t1212, t1202, t1198; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1329, -t1324, t1363, t1294, 0, 0, 0, 0, 0, 0, t1329, t1363, t1324, t1264, 0, 0, 0, 0, 0, 0, t1258, t1260, t1245, t1217, 0, 0, 0, 0, 0, 0, t1219, t1223, t1211, t1201; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1323, -t1328, -t1364, t1293, 0, 0, 0, 0, 0, 0, t1323, -t1364, t1328, -t1271, 0, 0, 0, 0, 0, 0, -t1257, -t1259, -t1244, -t1216, 0, 0, 0, 0, 0, 0, -t1218, -t1222, -t1210, -t1200; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1317, t1314, -t1321, -t1310, 0, 0, 0, 0, 0, 0, -t1317, -t1321, -t1314, -t1261, 0, 0, 0, 0, 0, 0, -t1266, -t1268, -t1265, -t1248, 0, 0, 0, 0, 0, 0, -t1235, -t1237, -t1243, -t1230; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1329, t1363, t1324, t1264, 0, 0, 0, 0, 0, 0, t1258, t1260, t1245, t1217, 0, 0, 0, 0, 0, 0, t1219, t1223, t1211, t1201; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1317, -t1321, -t1314, -t1261, 0, 0, 0, 0, 0, 0, -t1266, -t1268, -t1265, -t1248, 0, 0, 0, 0, 0, 0, -t1235, -t1237, -t1243, -t1230; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1323, t1364, -t1328, t1271, 0, 0, 0, 0, 0, 0, t1257, t1259, t1244, t1216, 0, 0, 0, 0, 0, 0, t1218, t1222, t1210, t1200; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1278, t1279, t1267, t1229, 0, 0, 0, 0, 0, 0, t1232, t1240, t1221, t1205; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1280, t1296, t1269, t1228, 0, 0, 0, 0, 0, 0, t1231, t1239, t1220, t1204; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1266, t1268, t1265, t1248, 0, 0, 0, 0, 0, 0, t1235, t1237, t1243, t1230; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1250, t1253, t1236, t1215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1254, t1270, t1238, t1214; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1235, t1237, t1243, t1230;];
f_new_reg = t1;
