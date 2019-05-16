% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPPRRR6
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 15:58
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPPRRR6_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR6_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR6_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRRR6_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRRR6_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRRR6_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 15:58:45
% EndTime: 2019-05-05 15:58:48
% DurationCPUTime: 2.95s
% Computational Cost: add. (11573->252), mult. (22176->260), div. (0->0), fcn. (13687->8), ass. (0->151)
t1312 = sin(qJ(4));
t1300 = t1312 * qJD(1);
t1294 = t1300 + qJD(5);
t1291 = qJD(6) + t1294;
t1350 = qJD(6) + t1291;
t1319 = qJD(1) ^ 2;
t1313 = sin(qJ(1));
t1317 = cos(qJ(1));
t1290 = -t1317 * g(1) - t1313 * g(2);
t1322 = -qJDD(1) * qJ(2) - 0.2e1 * qJD(2) * qJD(1) - t1290;
t1343 = pkin(1) + qJ(3);
t1270 = t1319 * t1343 - qJDD(3) + t1322;
t1311 = sin(qJ(5));
t1315 = cos(qJ(5));
t1316 = cos(qJ(4));
t1342 = qJD(1) * t1316;
t1277 = -t1315 * qJD(4) + t1311 * t1342;
t1279 = qJD(4) * t1311 + t1315 * t1342;
t1310 = sin(qJ(6));
t1314 = cos(qJ(6));
t1258 = t1314 * t1277 + t1279 * t1310;
t1349 = t1258 ^ 2;
t1260 = -t1277 * t1310 + t1279 * t1314;
t1348 = t1260 ^ 2;
t1276 = t1277 ^ 2;
t1347 = t1279 ^ 2;
t1346 = t1291 ^ 2;
t1345 = t1294 ^ 2;
t1344 = 2 * qJD(3);
t1341 = t1258 * t1260;
t1340 = t1277 * t1279;
t1339 = t1294 * t1277;
t1338 = qJD(5) - t1294;
t1337 = qJD(6) - t1291;
t1333 = qJD(4) * t1300;
t1334 = t1316 * qJDD(1);
t1281 = -t1333 + t1334;
t1309 = t1319 * pkin(7);
t1289 = t1313 * g(1) - t1317 * g(2);
t1323 = t1319 * qJ(2) - qJDD(2) + t1289;
t1320 = qJDD(1) * t1343 + t1323;
t1297 = qJD(4) * t1342;
t1298 = t1312 * qJDD(1);
t1336 = -t1298 - t1297;
t1238 = -t1309 - t1281 * pkin(8) - t1336 * pkin(4) + (t1344 + (pkin(4) * t1316 + pkin(8) * t1312) * qJD(4)) * qJD(1) + t1320;
t1264 = -qJDD(1) * pkin(7) - t1270;
t1256 = -t1316 * g(3) + t1312 * t1264;
t1318 = qJD(4) ^ 2;
t1324 = t1319 * (pkin(4) * t1312 - pkin(8) * t1316);
t1241 = -t1318 * pkin(4) + qJDD(4) * pkin(8) - t1312 * t1324 + t1256;
t1223 = t1311 * t1238 + t1315 * t1241;
t1307 = t1312 ^ 2;
t1308 = t1316 ^ 2;
t1335 = t1307 + t1308;
t1332 = t1312 * t1316 * t1319;
t1331 = qJDD(5) - t1336;
t1222 = t1315 * t1238 - t1311 * t1241;
t1329 = -t1315 * qJDD(4) + t1311 * t1281;
t1253 = -qJD(5) * t1279 - t1329;
t1325 = -t1311 * qJDD(4) - t1315 * t1281;
t1254 = -qJD(5) * t1277 - t1325;
t1330 = t1314 * t1253 - t1310 * t1254;
t1328 = -qJDD(6) - t1331;
t1327 = pkin(5) * t1294 - pkin(9) * t1279;
t1255 = t1312 * g(3) + t1316 * t1264;
t1326 = -t1310 * t1253 - t1314 * t1254;
t1249 = t1331 - t1340;
t1240 = qJDD(4) * pkin(4) + t1318 * pkin(8) - t1316 * t1324 + t1255;
t1269 = qJD(1) * t1344 + t1320;
t1293 = -t1308 * t1319 - t1318;
t1292 = -t1307 * t1319 - t1318;
t1288 = -qJDD(4) - t1332;
t1287 = qJDD(4) - t1332;
t1286 = t1335 * t1319;
t1285 = qJDD(1) * t1313 + t1317 * t1319;
t1284 = qJDD(1) * t1317 - t1313 * t1319;
t1283 = t1335 * qJDD(1);
t1282 = -0.2e1 * t1333 + t1334;
t1280 = t1298 + 0.2e1 * t1297;
t1273 = qJDD(1) * pkin(1) + t1323;
t1272 = pkin(1) * t1319 + t1322;
t1268 = t1288 * t1316 - t1293 * t1312;
t1267 = -t1287 * t1312 + t1292 * t1316;
t1266 = t1288 * t1312 + t1293 * t1316;
t1265 = t1287 * t1316 + t1292 * t1312;
t1263 = -t1309 + t1269;
t1262 = -t1345 - t1347;
t1257 = -t1345 - t1276;
t1250 = -t1331 - t1340;
t1248 = -t1276 - t1347;
t1246 = -t1346 - t1348;
t1245 = t1277 * t1338 + t1325;
t1244 = t1254 - t1339;
t1243 = -t1279 * t1338 - t1329;
t1242 = (qJD(5) + t1294) * t1279 + t1329;
t1235 = t1250 * t1315 - t1262 * t1311;
t1234 = t1250 * t1311 + t1262 * t1315;
t1233 = -t1346 - t1349;
t1232 = -t1255 * t1312 + t1256 * t1316;
t1231 = t1255 * t1316 + t1256 * t1312;
t1230 = -t1249 * t1311 + t1257 * t1315;
t1229 = t1249 * t1315 + t1257 * t1311;
t1228 = t1328 - t1341;
t1227 = -t1328 - t1341;
t1226 = -t1348 - t1349;
t1225 = t1243 * t1315 - t1245 * t1311;
t1224 = t1243 * t1311 + t1245 * t1315;
t1221 = t1235 * t1316 + t1244 * t1312;
t1220 = t1235 * t1312 - t1244 * t1316;
t1219 = t1228 * t1314 - t1246 * t1310;
t1218 = t1228 * t1310 + t1246 * t1314;
t1217 = t1230 * t1316 + t1242 * t1312;
t1216 = t1230 * t1312 - t1242 * t1316;
t1215 = t1253 * pkin(5) + t1276 * pkin(9) - t1279 * t1327 + t1240;
t1214 = t1258 * t1337 + t1326;
t1213 = -t1258 * t1350 - t1326;
t1212 = -t1260 * t1337 + t1330;
t1211 = t1260 * t1350 - t1330;
t1210 = -t1227 * t1310 + t1233 * t1314;
t1209 = t1227 * t1314 + t1233 * t1310;
t1208 = t1225 * t1316 + t1248 * t1312;
t1207 = t1225 * t1312 - t1248 * t1316;
t1206 = -t1276 * pkin(5) + t1253 * pkin(9) - t1294 * t1327 + t1223;
t1205 = (-t1254 - t1339) * pkin(9) + t1249 * pkin(5) + t1222;
t1204 = -t1222 * t1311 + t1223 * t1315;
t1203 = t1222 * t1315 + t1223 * t1311;
t1202 = -t1218 * t1311 + t1219 * t1315;
t1201 = t1218 * t1315 + t1219 * t1311;
t1200 = t1212 * t1314 - t1214 * t1310;
t1199 = t1212 * t1310 + t1214 * t1314;
t1198 = -t1209 * t1311 + t1210 * t1315;
t1197 = t1209 * t1315 + t1210 * t1311;
t1196 = t1204 * t1316 - t1240 * t1312;
t1195 = t1204 * t1312 + t1240 * t1316;
t1194 = t1202 * t1316 + t1213 * t1312;
t1193 = t1202 * t1312 - t1213 * t1316;
t1192 = t1205 * t1310 + t1206 * t1314;
t1191 = t1205 * t1314 - t1206 * t1310;
t1190 = t1198 * t1316 + t1211 * t1312;
t1189 = t1198 * t1312 - t1211 * t1316;
t1188 = -t1199 * t1311 + t1200 * t1315;
t1187 = t1199 * t1315 + t1200 * t1311;
t1186 = t1188 * t1316 + t1226 * t1312;
t1185 = t1188 * t1312 - t1226 * t1316;
t1184 = -t1191 * t1310 + t1192 * t1314;
t1183 = t1191 * t1314 + t1192 * t1310;
t1182 = -t1183 * t1311 + t1184 * t1315;
t1181 = t1183 * t1315 + t1184 * t1311;
t1180 = t1182 * t1316 - t1215 * t1312;
t1179 = t1182 * t1312 + t1215 * t1316;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1285, -t1284, 0, -t1289 * t1313 + t1290 * t1317, 0, 0, 0, 0, 0, 0, 0, t1285, t1284, -t1272 * t1317 - t1273 * t1313, 0, 0, 0, 0, 0, 0, 0, t1284, -t1285, -t1269 * t1313 - t1270 * t1317, 0, 0, 0, 0, 0, 0, t1265 * t1317 - t1280 * t1313, t1266 * t1317 - t1282 * t1313, -t1283 * t1317 + t1286 * t1313, t1231 * t1317 - t1263 * t1313, 0, 0, 0, 0, 0, 0, t1216 * t1317 - t1229 * t1313, t1220 * t1317 - t1234 * t1313, t1207 * t1317 - t1224 * t1313, t1195 * t1317 - t1203 * t1313, 0, 0, 0, 0, 0, 0, t1189 * t1317 - t1197 * t1313, t1193 * t1317 - t1201 * t1313, t1185 * t1317 - t1187 * t1313, t1179 * t1317 - t1181 * t1313; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1284, -t1285, 0, t1289 * t1317 + t1290 * t1313, 0, 0, 0, 0, 0, 0, 0, -t1284, t1285, -t1272 * t1313 + t1273 * t1317, 0, 0, 0, 0, 0, 0, 0, t1285, t1284, t1269 * t1317 - t1270 * t1313, 0, 0, 0, 0, 0, 0, t1265 * t1313 + t1280 * t1317, t1266 * t1313 + t1282 * t1317, -t1283 * t1313 - t1286 * t1317, t1231 * t1313 + t1263 * t1317, 0, 0, 0, 0, 0, 0, t1216 * t1313 + t1229 * t1317, t1220 * t1313 + t1234 * t1317, t1207 * t1313 + t1224 * t1317, t1195 * t1313 + t1203 * t1317, 0, 0, 0, 0, 0, 0, t1189 * t1313 + t1197 * t1317, t1193 * t1313 + t1201 * t1317, t1185 * t1313 + t1187 * t1317, t1179 * t1313 + t1181 * t1317; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1267, t1268, 0, t1232, 0, 0, 0, 0, 0, 0, t1217, t1221, t1208, t1196, 0, 0, 0, 0, 0, 0, t1190, t1194, t1186, t1180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1319, -qJDD(1), 0, t1290, 0, 0, 0, 0, 0, 0, 0, t1319, qJDD(1), -t1272, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1319, -t1270, 0, 0, 0, 0, 0, 0, t1265, t1266, -t1283, t1231, 0, 0, 0, 0, 0, 0, t1216, t1220, t1207, t1195, 0, 0, 0, 0, 0, 0, t1189, t1193, t1185, t1179; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1319, 0, t1289, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1319, t1273, 0, 0, 0, 0, 0, 0, 0, t1319, qJDD(1), t1269, 0, 0, 0, 0, 0, 0, t1280, t1282, -t1286, t1263, 0, 0, 0, 0, 0, 0, t1229, t1234, t1224, t1203, 0, 0, 0, 0, 0, 0, t1197, t1201, t1187, t1181; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1267, t1268, 0, t1232, 0, 0, 0, 0, 0, 0, t1217, t1221, t1208, t1196, 0, 0, 0, 0, 0, 0, t1190, t1194, t1186, t1180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1267, t1268, 0, t1232, 0, 0, 0, 0, 0, 0, t1217, t1221, t1208, t1196, 0, 0, 0, 0, 0, 0, t1190, t1194, t1186, t1180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1319, -qJDD(1), t1272, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1319, t1270, 0, 0, 0, 0, 0, 0, -t1265, -t1266, t1283, -t1231, 0, 0, 0, 0, 0, 0, -t1216, -t1220, -t1207, -t1195, 0, 0, 0, 0, 0, 0, -t1189, -t1193, -t1185, -t1179; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1319, -t1273, 0, 0, 0, 0, 0, 0, 0, -t1319, -qJDD(1), -t1269, 0, 0, 0, 0, 0, 0, -t1280, -t1282, t1286, -t1263, 0, 0, 0, 0, 0, 0, -t1229, -t1234, -t1224, -t1203, 0, 0, 0, 0, 0, 0, -t1197, -t1201, -t1187, -t1181; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1267, t1268, 0, t1232, 0, 0, 0, 0, 0, 0, t1217, t1221, t1208, t1196, 0, 0, 0, 0, 0, 0, t1190, t1194, t1186, t1180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1319, -qJDD(1), -t1269, 0, 0, 0, 0, 0, 0, -t1280, -t1282, t1286, -t1263, 0, 0, 0, 0, 0, 0, -t1229, -t1234, -t1224, -t1203, 0, 0, 0, 0, 0, 0, -t1197, -t1201, -t1187, -t1181; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1319, -t1270, 0, 0, 0, 0, 0, 0, t1265, t1266, -t1283, t1231, 0, 0, 0, 0, 0, 0, t1216, t1220, t1207, t1195, 0, 0, 0, 0, 0, 0, t1189, t1193, t1185, t1179; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1292, t1288, -t1298, t1256, 0, 0, 0, 0, 0, 0, t1230, t1235, t1225, t1204, 0, 0, 0, 0, 0, 0, t1198, t1202, t1188, t1182; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1287, t1293, -t1334, t1255, 0, 0, 0, 0, 0, 0, -t1242, -t1244, -t1248, t1240, 0, 0, 0, 0, 0, 0, -t1211, -t1213, -t1226, t1215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1280, t1282, -t1286, t1263, 0, 0, 0, 0, 0, 0, t1229, t1234, t1224, t1203, 0, 0, 0, 0, 0, 0, t1197, t1201, t1187, t1181; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1257, t1250, t1243, t1223, 0, 0, 0, 0, 0, 0, t1210, t1219, t1200, t1184; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1249, t1262, t1245, t1222, 0, 0, 0, 0, 0, 0, t1209, t1218, t1199, t1183; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1242, t1244, t1248, -t1240, 0, 0, 0, 0, 0, 0, t1211, t1213, t1226, -t1215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1233, t1228, t1212, t1192; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1227, t1246, t1214, t1191; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1211, t1213, t1226, -t1215;];
f_new_reg  = t1;
