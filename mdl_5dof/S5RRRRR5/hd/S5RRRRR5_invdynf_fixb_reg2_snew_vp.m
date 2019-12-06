% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RRRRR5
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
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4,d5]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:59
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RRRRR5_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR5_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR5_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRRR5_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRR5_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR5_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:59:08
% EndTime: 2019-12-05 18:59:11
% DurationCPUTime: 2.64s
% Computational Cost: add. (14328->190), mult. (15217->267), div. (0->0), fcn. (9583->10), ass. (0->155)
t1275 = qJD(1) + qJD(2);
t1271 = qJD(3) + t1275;
t1269 = t1271 ^ 2;
t1273 = qJDD(1) + qJDD(2);
t1270 = qJDD(3) + t1273;
t1280 = sin(qJ(3));
t1285 = cos(qJ(3));
t1244 = t1280 * t1269 - t1285 * t1270;
t1281 = sin(qJ(2));
t1286 = cos(qJ(2));
t1295 = -t1285 * t1269 - t1280 * t1270;
t1219 = t1286 * t1244 - t1281 * t1295;
t1282 = sin(qJ(1));
t1287 = cos(qJ(1));
t1320 = t1281 * t1244 + t1286 * t1295;
t1324 = t1282 * t1219 + t1287 * t1320;
t1323 = t1287 * t1219 - t1282 * t1320;
t1272 = t1275 ^ 2;
t1251 = t1281 * t1272 - t1286 * t1273;
t1294 = -t1286 * t1272 - t1281 * t1273;
t1319 = t1282 * t1251 + t1287 * t1294;
t1318 = t1287 * t1251 - t1282 * t1294;
t1274 = qJD(4) + qJD(5);
t1313 = qJD(5) + t1274;
t1278 = sin(qJ(5));
t1283 = cos(qJ(5));
t1284 = cos(qJ(4));
t1306 = t1271 * t1284;
t1279 = sin(qJ(4));
t1307 = t1271 * t1279;
t1233 = t1278 * t1307 - t1283 * t1306;
t1312 = t1233 ^ 2;
t1235 = (t1278 * t1284 + t1279 * t1283) * t1271;
t1311 = t1235 ^ 2;
t1310 = t1274 ^ 2;
t1309 = t1235 * t1233;
t1308 = t1269 * t1279;
t1277 = t1284 ^ 2;
t1305 = t1277 * t1269;
t1264 = t1287 * g(2) + t1282 * g(3);
t1292 = qJDD(1) * pkin(1) + t1264;
t1263 = t1282 * g(2) - t1287 * g(3);
t1289 = qJD(1) ^ 2;
t1293 = -t1289 * pkin(1) + t1263;
t1226 = t1281 * t1292 + t1286 * t1293;
t1224 = -t1272 * pkin(2) + t1226;
t1225 = -t1281 * t1293 + t1286 * t1292;
t1290 = t1273 * pkin(2) + t1225;
t1204 = t1285 * t1224 + t1280 * t1290;
t1198 = -t1269 * pkin(3) + t1270 * pkin(8) + t1204;
t1304 = t1279 * t1198;
t1303 = t1279 * t1270;
t1302 = qJD(5) - t1274;
t1276 = t1279 ^ 2;
t1301 = t1276 + t1277;
t1300 = -qJDD(4) - qJDD(5);
t1299 = qJD(4) * t1307;
t1298 = qJD(4) * t1306;
t1191 = -t1279 * g(1) + t1284 * t1198;
t1203 = -t1280 * t1224 + t1285 * t1290;
t1239 = t1298 + t1303;
t1266 = t1284 * t1270;
t1296 = -t1266 + t1299;
t1297 = -t1278 * t1239 - t1283 * t1296;
t1197 = -t1270 * pkin(3) - t1269 * pkin(8) - t1203;
t1291 = -t1283 * t1239 + t1278 * t1296;
t1288 = qJD(4) ^ 2;
t1261 = -t1287 * qJDD(1) + t1282 * t1289;
t1260 = t1282 * qJDD(1) + t1287 * t1289;
t1259 = t1284 * t1308;
t1257 = -t1288 - t1305;
t1256 = -t1276 * t1269 - t1288;
t1255 = qJD(4) * pkin(4) - pkin(9) * t1307;
t1254 = -qJDD(4) + t1259;
t1253 = qJDD(4) + t1259;
t1246 = t1301 * t1269;
t1241 = t1301 * t1270;
t1240 = t1266 - 0.2e1 * t1299;
t1238 = 0.2e1 * t1298 + t1303;
t1231 = -t1310 - t1311;
t1230 = t1284 * t1254 - t1279 * t1256;
t1229 = -t1279 * t1253 + t1284 * t1257;
t1228 = t1279 * t1254 + t1284 * t1256;
t1227 = t1284 * t1253 + t1279 * t1257;
t1218 = t1285 * t1241 - t1280 * t1246;
t1215 = t1280 * t1241 + t1285 * t1246;
t1214 = t1300 - t1309;
t1213 = -t1300 - t1309;
t1212 = -t1310 - t1312;
t1211 = t1285 * t1230 + t1280 * t1238;
t1210 = t1285 * t1229 - t1280 * t1240;
t1209 = t1280 * t1230 - t1285 * t1238;
t1208 = t1280 * t1229 + t1285 * t1240;
t1207 = -t1311 - t1312;
t1206 = -t1281 * t1225 + t1286 * t1226;
t1205 = t1286 * t1225 + t1281 * t1226;
t1202 = t1283 * t1214 - t1278 * t1231;
t1201 = t1278 * t1214 + t1283 * t1231;
t1200 = -t1281 * t1215 + t1286 * t1218;
t1199 = t1286 * t1215 + t1281 * t1218;
t1196 = t1302 * t1233 + t1291;
t1195 = -t1313 * t1233 - t1291;
t1194 = -t1302 * t1235 + t1297;
t1193 = t1313 * t1235 - t1297;
t1190 = -t1284 * g(1) - t1304;
t1189 = t1283 * t1212 - t1278 * t1213;
t1188 = t1278 * t1212 + t1283 * t1213;
t1187 = -t1281 * t1209 + t1286 * t1211;
t1186 = -t1281 * t1208 + t1286 * t1210;
t1185 = t1286 * t1209 + t1281 * t1211;
t1184 = t1286 * t1208 + t1281 * t1210;
t1183 = t1296 * pkin(4) - pkin(9) * t1305 + t1255 * t1307 + t1197;
t1182 = -pkin(4) * t1305 - t1296 * pkin(9) - qJD(4) * t1255 + t1191;
t1181 = qJDD(4) * pkin(4) - t1239 * pkin(9) - t1304 + (qJD(4) * t1271 * pkin(9) + pkin(4) * t1308 - g(1)) * t1284;
t1180 = -t1280 * t1203 + t1285 * t1204;
t1179 = t1285 * t1203 + t1280 * t1204;
t1178 = -t1279 * t1201 + t1284 * t1202;
t1177 = t1284 * t1201 + t1279 * t1202;
t1176 = t1283 * t1194 - t1278 * t1196;
t1175 = t1278 * t1194 + t1283 * t1196;
t1174 = -t1279 * t1190 + t1284 * t1191;
t1173 = t1284 * t1190 + t1279 * t1191;
t1172 = -t1279 * t1188 + t1284 * t1189;
t1171 = t1284 * t1188 + t1279 * t1189;
t1170 = t1285 * t1178 + t1280 * t1195;
t1169 = t1280 * t1178 - t1285 * t1195;
t1168 = t1278 * t1181 + t1283 * t1182;
t1167 = t1283 * t1181 - t1278 * t1182;
t1166 = t1285 * t1174 + t1280 * t1197;
t1165 = t1280 * t1174 - t1285 * t1197;
t1164 = t1285 * t1172 + t1280 * t1193;
t1163 = t1280 * t1172 - t1285 * t1193;
t1162 = -t1281 * t1179 + t1286 * t1180;
t1161 = t1286 * t1179 + t1281 * t1180;
t1160 = -t1279 * t1175 + t1284 * t1176;
t1159 = t1284 * t1175 + t1279 * t1176;
t1158 = t1285 * t1160 + t1280 * t1207;
t1157 = t1280 * t1160 - t1285 * t1207;
t1156 = -t1281 * t1169 + t1286 * t1170;
t1155 = t1286 * t1169 + t1281 * t1170;
t1154 = -t1278 * t1167 + t1283 * t1168;
t1153 = t1283 * t1167 + t1278 * t1168;
t1152 = -t1281 * t1165 + t1286 * t1166;
t1151 = t1286 * t1165 + t1281 * t1166;
t1150 = -t1281 * t1163 + t1286 * t1164;
t1149 = t1286 * t1163 + t1281 * t1164;
t1148 = -t1281 * t1157 + t1286 * t1158;
t1147 = t1286 * t1157 + t1281 * t1158;
t1146 = -t1279 * t1153 + t1284 * t1154;
t1145 = t1284 * t1153 + t1279 * t1154;
t1144 = t1285 * t1146 + t1280 * t1183;
t1143 = t1280 * t1146 - t1285 * t1183;
t1142 = -t1281 * t1143 + t1286 * t1144;
t1141 = t1286 * t1143 + t1281 * t1144;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1227, t1228, 0, t1173, 0, 0, 0, 0, 0, 0, t1171, t1177, t1159, t1145; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1261, t1260, 0, -t1282 * t1263 - t1287 * t1264, 0, 0, 0, 0, 0, 0, t1318, -t1319, 0, -t1287 * t1205 - t1282 * t1206, 0, 0, 0, 0, 0, 0, t1323, -t1324, 0, -t1287 * t1161 - t1282 * t1162, 0, 0, 0, 0, 0, 0, -t1287 * t1184 - t1282 * t1186, -t1287 * t1185 - t1282 * t1187, -t1287 * t1199 - t1282 * t1200, -t1287 * t1151 - t1282 * t1152, 0, 0, 0, 0, 0, 0, -t1287 * t1149 - t1282 * t1150, -t1287 * t1155 - t1282 * t1156, -t1287 * t1147 - t1282 * t1148, -t1287 * t1141 - t1282 * t1142; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t1260, t1261, 0, t1287 * t1263 - t1282 * t1264, 0, 0, 0, 0, 0, 0, t1319, t1318, 0, -t1282 * t1205 + t1287 * t1206, 0, 0, 0, 0, 0, 0, t1324, t1323, 0, -t1282 * t1161 + t1287 * t1162, 0, 0, 0, 0, 0, 0, -t1282 * t1184 + t1287 * t1186, -t1282 * t1185 + t1287 * t1187, -t1282 * t1199 + t1287 * t1200, -t1282 * t1151 + t1287 * t1152, 0, 0, 0, 0, 0, 0, -t1282 * t1149 + t1287 * t1150, -t1282 * t1155 + t1287 * t1156, -t1282 * t1147 + t1287 * t1148, -t1282 * t1141 + t1287 * t1142; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1289, -qJDD(1), 0, t1263, 0, 0, 0, 0, 0, 0, t1294, t1251, 0, t1206, 0, 0, 0, 0, 0, 0, t1320, t1219, 0, t1162, 0, 0, 0, 0, 0, 0, t1186, t1187, t1200, t1152, 0, 0, 0, 0, 0, 0, t1150, t1156, t1148, t1142; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1289, 0, t1264, 0, 0, 0, 0, 0, 0, -t1251, t1294, 0, t1205, 0, 0, 0, 0, 0, 0, -t1219, t1320, 0, t1161, 0, 0, 0, 0, 0, 0, t1184, t1185, t1199, t1151, 0, 0, 0, 0, 0, 0, t1149, t1155, t1147, t1141; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1227, t1228, 0, t1173, 0, 0, 0, 0, 0, 0, t1171, t1177, t1159, t1145; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1272, -t1273, 0, t1226, 0, 0, 0, 0, 0, 0, t1295, t1244, 0, t1180, 0, 0, 0, 0, 0, 0, t1210, t1211, t1218, t1166, 0, 0, 0, 0, 0, 0, t1164, t1170, t1158, t1144; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1273, -t1272, 0, t1225, 0, 0, 0, 0, 0, 0, -t1244, t1295, 0, t1179, 0, 0, 0, 0, 0, 0, t1208, t1209, t1215, t1165, 0, 0, 0, 0, 0, 0, t1163, t1169, t1157, t1143; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1227, t1228, 0, t1173, 0, 0, 0, 0, 0, 0, t1171, t1177, t1159, t1145; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1269, -t1270, 0, t1204, 0, 0, 0, 0, 0, 0, t1229, t1230, t1241, t1174, 0, 0, 0, 0, 0, 0, t1172, t1178, t1160, t1146; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1270, -t1269, 0, t1203, 0, 0, 0, 0, 0, 0, t1240, -t1238, t1246, -t1197, 0, 0, 0, 0, 0, 0, -t1193, -t1195, -t1207, -t1183; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1227, t1228, 0, t1173, 0, 0, 0, 0, 0, 0, t1171, t1177, t1159, t1145; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1257, t1254, t1266, t1191, 0, 0, 0, 0, 0, 0, t1189, t1202, t1176, t1154; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1253, t1256, -t1303, t1190, 0, 0, 0, 0, 0, 0, t1188, t1201, t1175, t1153; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1240, t1238, -t1246, t1197, 0, 0, 0, 0, 0, 0, t1193, t1195, t1207, t1183; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1212, t1214, t1194, t1168; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1213, t1231, t1196, t1167; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1193, t1195, t1207, t1183;];
f_new_reg = t1;
