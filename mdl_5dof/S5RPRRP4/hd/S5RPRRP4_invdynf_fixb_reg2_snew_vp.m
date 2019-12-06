% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RPRRP4
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:07
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RPRRP4_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP4_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP4_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRP4_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP4_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP4_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:07:33
% EndTime: 2019-12-05 18:07:35
% DurationCPUTime: 2.42s
% Computational Cost: add. (8523->205), mult. (20990->274), div. (0->0), fcn. (14498->8), ass. (0->158)
t1320 = qJD(1) ^ 2;
t1312 = sin(pkin(8));
t1309 = t1312 ^ 2;
t1313 = cos(pkin(8));
t1310 = t1313 ^ 2;
t1341 = t1309 + t1310;
t1292 = t1341 * t1320;
t1307 = t1313 * qJDD(1);
t1337 = t1307 - qJDD(3);
t1331 = -qJDD(4) + t1337;
t1314 = sin(qJ(4));
t1315 = sin(qJ(3));
t1317 = cos(qJ(4));
t1318 = cos(qJ(3));
t1350 = qJD(1) * t1312;
t1274 = (-t1314 * t1318 - t1315 * t1317) * t1350;
t1347 = qJD(1) * t1318;
t1334 = t1312 * t1347;
t1348 = qJD(1) * t1315;
t1335 = t1312 * t1348;
t1276 = -t1314 * t1335 + t1317 * t1334;
t1346 = t1274 * t1276;
t1252 = -t1331 + t1346;
t1358 = t1274 ^ 2;
t1357 = t1276 ^ 2;
t1349 = qJD(1) * t1313;
t1303 = -qJD(3) + t1349;
t1299 = -qJD(4) + t1303;
t1356 = t1299 ^ 2;
t1355 = t1303 ^ 2;
t1354 = t1315 ^ 2;
t1353 = 2 * qJD(2);
t1352 = -2 * qJD(5);
t1351 = g(1) * t1313;
t1345 = t1274 * t1299;
t1344 = t1309 * t1320;
t1328 = -pkin(2) * t1313 - pkin(6) * t1312;
t1290 = t1328 * qJD(1);
t1343 = t1353 + t1290;
t1342 = qJD(4) + t1299;
t1316 = sin(qJ(1));
t1319 = cos(qJ(1));
t1296 = t1316 * g(2) - g(3) * t1319;
t1287 = -pkin(1) * t1320 + qJDD(1) * qJ(2) + t1296;
t1269 = -g(1) * t1312 + t1313 * t1287 + t1349 * t1353;
t1255 = t1290 * t1349 + t1269;
t1297 = g(2) * t1319 + g(3) * t1316;
t1325 = -qJ(2) * t1320 + qJDD(2) - t1297;
t1271 = (-pkin(1) + t1328) * qJDD(1) + t1325;
t1263 = t1318 * t1271;
t1298 = qJD(3) * t1335;
t1338 = t1312 * qJDD(1);
t1283 = t1318 * t1338 - t1298;
t1332 = t1318 * t1344;
t1225 = t1263 - t1283 * pkin(7) - t1337 * pkin(3) + (pkin(7) * t1303 * t1350 - pkin(3) * t1332 - t1255) * t1315;
t1241 = t1318 * t1255 + t1315 * t1271;
t1280 = -pkin(3) * t1303 - pkin(7) * t1334;
t1340 = qJDD(1) * t1315;
t1326 = (-qJD(3) * t1347 - t1340) * t1312;
t1333 = t1354 * t1344;
t1226 = -pkin(3) * t1333 + pkin(7) * t1326 + t1303 * t1280 + t1241;
t1210 = t1314 * t1225 + t1317 * t1226;
t1339 = qJDD(1) * t1318;
t1336 = t1303 * t1348;
t1209 = t1317 * t1225 - t1314 * t1226;
t1330 = t1283 * t1314 - t1317 * t1326;
t1329 = t1315 * t1332;
t1327 = -qJD(4) * t1276 - t1330;
t1324 = t1317 * t1283 + t1314 * t1326;
t1229 = t1351 - pkin(3) * t1326 - pkin(7) * t1333 + (t1287 + (t1280 * t1318 + t1343) * qJD(1)) * t1312;
t1323 = t1274 * qJD(4) + t1324;
t1311 = t1318 ^ 2;
t1302 = t1313 * t1320 * t1312;
t1294 = -qJDD(1) * t1319 + t1316 * t1320;
t1293 = qJDD(1) * t1316 + t1319 * t1320;
t1291 = t1341 * qJDD(1);
t1289 = t1313 * t1292;
t1288 = t1312 * t1292;
t1286 = (t1311 + t1354) * t1344;
t1285 = -t1333 - t1355;
t1284 = qJDD(1) * pkin(1) - t1325;
t1282 = -t1329 - t1337;
t1281 = -t1329 + t1337;
t1272 = -t1311 * t1344 - t1355;
t1268 = -0.2e1 * qJD(2) * t1350 - t1287 * t1312 - t1351;
t1267 = -t1298 + (t1336 + t1339) * t1312;
t1266 = (-t1340 + (-qJD(3) - t1303) * t1347) * t1312;
t1265 = (t1340 + (qJD(3) - t1303) * t1347) * t1312;
t1264 = t1298 + (t1336 - t1339) * t1312;
t1261 = -pkin(4) * t1299 - qJ(5) * t1276;
t1260 = -t1356 - t1357;
t1259 = -t1282 * t1315 + t1285 * t1318;
t1258 = t1282 * t1318 + t1285 * t1315;
t1257 = -t1272 * t1315 + t1281 * t1318;
t1256 = t1272 * t1318 + t1281 * t1315;
t1254 = t1351 + (t1343 * qJD(1) + t1287) * t1312;
t1251 = t1331 + t1346;
t1250 = -t1356 - t1358;
t1249 = -t1357 - t1358;
t1247 = -t1268 * t1312 + t1269 * t1313;
t1246 = t1268 * t1313 + t1269 * t1312;
t1245 = -t1264 * t1315 + t1266 * t1318;
t1244 = t1264 * t1318 + t1266 * t1315;
t1243 = t1259 * t1313 + t1265 * t1312;
t1242 = t1259 * t1312 - t1265 * t1313;
t1240 = -t1315 * t1255 + t1263;
t1239 = t1257 * t1313 + t1267 * t1312;
t1238 = t1257 * t1312 - t1267 * t1313;
t1237 = t1245 * t1313 - t1286 * t1312;
t1236 = t1245 * t1312 + t1286 * t1313;
t1235 = -t1342 * t1274 - t1324;
t1234 = t1323 - t1345;
t1233 = -t1342 * t1276 - t1330;
t1232 = (qJD(4) - t1299) * t1276 + t1330;
t1231 = t1251 * t1317 - t1260 * t1314;
t1230 = t1251 * t1314 + t1260 * t1317;
t1228 = t1250 * t1317 - t1252 * t1314;
t1227 = t1250 * t1314 + t1252 * t1317;
t1221 = -t1240 * t1315 + t1241 * t1318;
t1220 = t1240 * t1318 + t1241 * t1315;
t1219 = t1233 * t1317 - t1235 * t1314;
t1218 = t1233 * t1314 + t1235 * t1317;
t1217 = -t1230 * t1315 + t1231 * t1318;
t1216 = t1230 * t1318 + t1231 * t1315;
t1215 = -t1227 * t1315 + t1228 * t1318;
t1214 = t1227 * t1318 + t1228 * t1315;
t1213 = t1221 * t1313 + t1254 * t1312;
t1212 = t1221 * t1312 - t1254 * t1313;
t1211 = -t1327 * pkin(4) - t1358 * qJ(5) + t1261 * t1276 + qJDD(5) + t1229;
t1208 = t1217 * t1313 + t1234 * t1312;
t1207 = t1217 * t1312 - t1234 * t1313;
t1206 = t1215 * t1313 + t1232 * t1312;
t1205 = t1215 * t1312 - t1232 * t1313;
t1204 = -t1218 * t1315 + t1219 * t1318;
t1203 = t1218 * t1318 + t1219 * t1315;
t1202 = t1299 * t1261 + t1327 * qJ(5) - (pkin(4) * t1274 + t1352) * t1274 + t1210;
t1201 = t1276 * t1352 + t1209 + (-t1323 - t1345) * qJ(5) + t1252 * pkin(4);
t1200 = t1204 * t1313 + t1249 * t1312;
t1199 = t1204 * t1312 - t1249 * t1313;
t1198 = t1208 * t1319 + t1216 * t1316;
t1197 = -t1208 * t1316 + t1216 * t1319;
t1196 = t1206 * t1319 + t1214 * t1316;
t1195 = -t1206 * t1316 + t1214 * t1319;
t1194 = -t1209 * t1314 + t1210 * t1317;
t1193 = t1209 * t1317 + t1210 * t1314;
t1192 = t1200 * t1319 + t1203 * t1316;
t1191 = -t1200 * t1316 + t1203 * t1319;
t1190 = -t1201 * t1314 + t1202 * t1317;
t1189 = t1201 * t1317 + t1202 * t1314;
t1188 = -t1193 * t1315 + t1194 * t1318;
t1187 = t1193 * t1318 + t1194 * t1315;
t1186 = t1188 * t1313 + t1229 * t1312;
t1185 = t1188 * t1312 - t1229 * t1313;
t1184 = -t1189 * t1315 + t1190 * t1318;
t1183 = t1189 * t1318 + t1190 * t1315;
t1182 = t1184 * t1313 + t1211 * t1312;
t1181 = t1184 * t1312 - t1211 * t1313;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1246, 0, 0, 0, 0, 0, 0, t1242, t1238, t1236, t1212, 0, 0, 0, 0, 0, 0, t1205, t1207, t1199, t1185, 0, 0, 0, 0, 0, 0, t1205, t1207, t1199, t1181; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1294, t1293, 0, -t1296 * t1316 - t1297 * t1319, 0, 0, 0, 0, 0, 0, t1289 * t1316 - t1319 * t1307, -t1288 * t1316 + t1319 * t1338, -t1291 * t1316 - t1292 * t1319, -t1247 * t1316 - t1284 * t1319, 0, 0, 0, 0, 0, 0, -t1243 * t1316 + t1258 * t1319, -t1239 * t1316 + t1256 * t1319, -t1237 * t1316 + t1244 * t1319, -t1213 * t1316 + t1220 * t1319, 0, 0, 0, 0, 0, 0, t1195, t1197, t1191, -t1186 * t1316 + t1187 * t1319, 0, 0, 0, 0, 0, 0, t1195, t1197, t1191, -t1182 * t1316 + t1183 * t1319; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t1293, t1294, 0, t1296 * t1319 - t1297 * t1316, 0, 0, 0, 0, 0, 0, -t1289 * t1319 - t1316 * t1307, t1288 * t1319 + t1316 * t1338, t1291 * t1319 - t1292 * t1316, t1247 * t1319 - t1284 * t1316, 0, 0, 0, 0, 0, 0, t1243 * t1319 + t1258 * t1316, t1239 * t1319 + t1256 * t1316, t1237 * t1319 + t1244 * t1316, t1213 * t1319 + t1220 * t1316, 0, 0, 0, 0, 0, 0, t1196, t1198, t1192, t1186 * t1319 + t1187 * t1316, 0, 0, 0, 0, 0, 0, t1196, t1198, t1192, t1182 * t1319 + t1183 * t1316; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1320, -qJDD(1), 0, t1296, 0, 0, 0, 0, 0, 0, -t1289, t1288, t1291, t1247, 0, 0, 0, 0, 0, 0, t1243, t1239, t1237, t1213, 0, 0, 0, 0, 0, 0, t1206, t1208, t1200, t1186, 0, 0, 0, 0, 0, 0, t1206, t1208, t1200, t1182; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1320, 0, t1297, 0, 0, 0, 0, 0, 0, t1307, -t1338, t1292, t1284, 0, 0, 0, 0, 0, 0, -t1258, -t1256, -t1244, -t1220, 0, 0, 0, 0, 0, 0, -t1214, -t1216, -t1203, -t1187, 0, 0, 0, 0, 0, 0, -t1214, -t1216, -t1203, -t1183; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1246, 0, 0, 0, 0, 0, 0, t1242, t1238, t1236, t1212, 0, 0, 0, 0, 0, 0, t1205, t1207, t1199, t1185, 0, 0, 0, 0, 0, 0, t1205, t1207, t1199, t1181; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1310 * t1320, t1302, t1307, t1269, 0, 0, 0, 0, 0, 0, t1259, t1257, t1245, t1221, 0, 0, 0, 0, 0, 0, t1215, t1217, t1204, t1188, 0, 0, 0, 0, 0, 0, t1215, t1217, t1204, t1184; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1302, -t1344, -t1338, t1268, 0, 0, 0, 0, 0, 0, -t1265, -t1267, t1286, -t1254, 0, 0, 0, 0, 0, 0, -t1232, -t1234, -t1249, -t1229, 0, 0, 0, 0, 0, 0, -t1232, -t1234, -t1249, -t1211; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1307, t1338, -t1292, -t1284, 0, 0, 0, 0, 0, 0, t1258, t1256, t1244, t1220, 0, 0, 0, 0, 0, 0, t1214, t1216, t1203, t1187, 0, 0, 0, 0, 0, 0, t1214, t1216, t1203, t1183; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1285, t1281, t1266, t1241, 0, 0, 0, 0, 0, 0, t1228, t1231, t1219, t1194, 0, 0, 0, 0, 0, 0, t1228, t1231, t1219, t1190; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1282, t1272, t1264, t1240, 0, 0, 0, 0, 0, 0, t1227, t1230, t1218, t1193, 0, 0, 0, 0, 0, 0, t1227, t1230, t1218, t1189; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1265, t1267, -t1286, t1254, 0, 0, 0, 0, 0, 0, t1232, t1234, t1249, t1229, 0, 0, 0, 0, 0, 0, t1232, t1234, t1249, t1211; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1250, t1251, t1233, t1210, 0, 0, 0, 0, 0, 0, t1250, t1251, t1233, t1202; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1252, t1260, t1235, t1209, 0, 0, 0, 0, 0, 0, t1252, t1260, t1235, t1201; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1232, t1234, t1249, t1229, 0, 0, 0, 0, 0, 0, t1232, t1234, t1249, t1211; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1250, t1251, t1233, t1202; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1252, t1260, t1235, t1201; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1232, t1234, t1249, t1211;];
f_new_reg = t1;