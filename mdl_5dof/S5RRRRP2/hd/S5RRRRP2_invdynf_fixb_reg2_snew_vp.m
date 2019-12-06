% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RRRRP2
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
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:48
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RRRRP2_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP2_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRP2_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRRRP2_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRRRP2_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP2_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:48:47
% EndTime: 2019-12-05 18:48:49
% DurationCPUTime: 2.27s
% Computational Cost: add. (10372->171), mult. (13463->234), div. (0->0), fcn. (8785->8), ass. (0->138)
t1267 = qJD(1) + qJD(2);
t1264 = t1267 ^ 2;
t1265 = qJDD(1) + qJDD(2);
t1271 = sin(qJ(2));
t1275 = cos(qJ(2));
t1244 = t1271 * t1264 - t1275 * t1265;
t1272 = sin(qJ(1));
t1276 = cos(qJ(1));
t1283 = -t1275 * t1264 - t1271 * t1265;
t1307 = t1272 * t1244 + t1276 * t1283;
t1306 = t1276 * t1244 - t1272 * t1283;
t1266 = qJD(3) + qJD(4);
t1303 = qJD(4) + t1266;
t1269 = sin(qJ(4));
t1273 = cos(qJ(4));
t1274 = cos(qJ(3));
t1294 = t1267 * t1274;
t1270 = sin(qJ(3));
t1295 = t1267 * t1270;
t1230 = t1269 * t1295 - t1273 * t1294;
t1302 = t1230 ^ 2;
t1232 = (t1269 * t1274 + t1270 * t1273) * t1267;
t1301 = t1232 ^ 2;
t1300 = t1266 ^ 2;
t1299 = t1274 ^ 2;
t1298 = -2 * qJD(5);
t1297 = t1232 * t1230;
t1296 = t1264 * t1270;
t1257 = t1272 * g(2) - t1276 * g(3);
t1278 = qJD(1) ^ 2;
t1247 = -t1278 * pkin(1) + t1257;
t1258 = t1276 * g(2) + t1272 * g(3);
t1280 = qJDD(1) * pkin(1) + t1258;
t1221 = t1275 * t1247 + t1271 * t1280;
t1217 = -t1264 * pkin(2) + t1265 * pkin(7) + t1221;
t1293 = t1270 * t1217;
t1292 = t1270 * t1265;
t1291 = t1274 * t1265;
t1290 = t1299 * t1264;
t1289 = qJD(4) - t1266;
t1285 = qJD(3) * t1294;
t1236 = t1285 + t1292;
t1193 = qJDD(3) * pkin(3) - t1236 * pkin(8) - t1293 + (qJD(3) * t1267 * pkin(8) + pkin(3) * t1296 - g(1)) * t1274;
t1211 = -t1270 * g(1) + t1274 * t1217;
t1250 = qJD(3) * pkin(3) - pkin(8) * t1295;
t1286 = qJD(3) * t1295;
t1282 = -t1286 + t1291;
t1194 = -pkin(3) * t1290 + t1282 * pkin(8) - qJD(3) * t1250 + t1211;
t1179 = t1269 * t1193 + t1273 * t1194;
t1288 = -qJDD(3) - qJDD(4);
t1268 = t1270 ^ 2;
t1287 = t1268 + t1299;
t1178 = t1273 * t1193 - t1269 * t1194;
t1284 = t1269 * t1236 - t1273 * t1282;
t1220 = -t1271 * t1247 + t1275 * t1280;
t1214 = -t1288 - t1297;
t1216 = -t1265 * pkin(2) - t1264 * pkin(7) - t1220;
t1281 = -t1232 * qJD(4) - t1284;
t1279 = -t1273 * t1236 - t1269 * t1282;
t1195 = -t1282 * pkin(3) - pkin(8) * t1290 + t1250 * t1295 + t1216;
t1199 = t1289 * t1230 + t1279;
t1277 = qJD(3) ^ 2;
t1256 = t1274 * t1296;
t1254 = -t1277 - t1290;
t1253 = -t1268 * t1264 - t1277;
t1252 = -t1276 * qJDD(1) + t1272 * t1278;
t1251 = t1272 * qJDD(1) + t1276 * t1278;
t1249 = -qJDD(3) + t1256;
t1248 = qJDD(3) + t1256;
t1246 = t1287 * t1264;
t1241 = t1287 * t1265;
t1237 = -0.2e1 * t1286 + t1291;
t1235 = 0.2e1 * t1285 + t1292;
t1227 = t1266 * pkin(4) - t1232 * qJ(5);
t1226 = -t1300 - t1301;
t1225 = t1274 * t1249 - t1270 * t1253;
t1224 = -t1270 * t1248 + t1274 * t1254;
t1223 = t1270 * t1249 + t1274 * t1253;
t1222 = t1274 * t1248 + t1270 * t1254;
t1219 = t1275 * t1241 - t1271 * t1246;
t1218 = t1271 * t1241 + t1275 * t1246;
t1215 = t1288 - t1297;
t1213 = -t1300 - t1302;
t1210 = -t1274 * g(1) - t1293;
t1209 = t1275 * t1225 + t1271 * t1235;
t1208 = t1275 * t1224 - t1271 * t1237;
t1207 = t1271 * t1225 - t1275 * t1235;
t1206 = t1271 * t1224 + t1275 * t1237;
t1205 = -t1301 - t1302;
t1203 = -t1271 * t1220 + t1275 * t1221;
t1202 = t1275 * t1220 + t1271 * t1221;
t1201 = t1273 * t1215 - t1269 * t1226;
t1200 = t1269 * t1215 + t1273 * t1226;
t1198 = -t1303 * t1230 - t1279;
t1197 = -t1289 * t1232 - t1284;
t1196 = t1303 * t1232 + t1284;
t1189 = t1273 * t1213 - t1269 * t1214;
t1188 = t1269 * t1213 + t1273 * t1214;
t1187 = -t1270 * t1210 + t1274 * t1211;
t1186 = t1274 * t1210 + t1270 * t1211;
t1185 = t1275 * t1187 + t1271 * t1216;
t1184 = t1271 * t1187 - t1275 * t1216;
t1183 = -t1270 * t1200 + t1274 * t1201;
t1182 = t1274 * t1200 + t1270 * t1201;
t1181 = t1273 * t1197 - t1269 * t1199;
t1180 = t1269 * t1197 + t1273 * t1199;
t1177 = -t1270 * t1188 + t1274 * t1189;
t1176 = t1274 * t1188 + t1270 * t1189;
t1175 = -t1281 * pkin(4) - t1302 * qJ(5) + t1232 * t1227 + qJDD(5) + t1195;
t1174 = t1275 * t1183 + t1271 * t1198;
t1173 = t1271 * t1183 - t1275 * t1198;
t1172 = t1275 * t1177 + t1271 * t1196;
t1171 = t1271 * t1177 - t1275 * t1196;
t1170 = -t1266 * t1227 + t1281 * qJ(5) + (-pkin(4) * t1230 + t1298) * t1230 + t1179;
t1169 = t1214 * pkin(4) + t1199 * qJ(5) + t1232 * t1298 + t1178;
t1168 = -t1270 * t1180 + t1274 * t1181;
t1167 = t1274 * t1180 + t1270 * t1181;
t1166 = -t1269 * t1178 + t1273 * t1179;
t1165 = t1273 * t1178 + t1269 * t1179;
t1164 = t1275 * t1168 + t1271 * t1205;
t1163 = t1271 * t1168 - t1275 * t1205;
t1162 = -t1272 * t1173 + t1276 * t1174;
t1161 = -t1276 * t1173 - t1272 * t1174;
t1160 = -t1272 * t1171 + t1276 * t1172;
t1159 = -t1276 * t1171 - t1272 * t1172;
t1158 = -t1269 * t1169 + t1273 * t1170;
t1157 = t1273 * t1169 + t1269 * t1170;
t1156 = -t1270 * t1165 + t1274 * t1166;
t1155 = t1274 * t1165 + t1270 * t1166;
t1154 = t1275 * t1156 + t1271 * t1195;
t1153 = t1271 * t1156 - t1275 * t1195;
t1152 = -t1272 * t1163 + t1276 * t1164;
t1151 = -t1276 * t1163 - t1272 * t1164;
t1150 = -t1270 * t1157 + t1274 * t1158;
t1149 = t1274 * t1157 + t1270 * t1158;
t1148 = t1275 * t1150 + t1271 * t1175;
t1147 = t1271 * t1150 - t1275 * t1175;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1222, t1223, 0, t1186, 0, 0, 0, 0, 0, 0, t1176, t1182, t1167, t1155, 0, 0, 0, 0, 0, 0, t1176, t1182, t1167, t1149; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1252, t1251, 0, -t1272 * t1257 - t1276 * t1258, 0, 0, 0, 0, 0, 0, t1306, -t1307, 0, -t1276 * t1202 - t1272 * t1203, 0, 0, 0, 0, 0, 0, -t1276 * t1206 - t1272 * t1208, -t1276 * t1207 - t1272 * t1209, -t1276 * t1218 - t1272 * t1219, -t1276 * t1184 - t1272 * t1185, 0, 0, 0, 0, 0, 0, t1159, t1161, t1151, -t1276 * t1153 - t1272 * t1154, 0, 0, 0, 0, 0, 0, t1159, t1161, t1151, -t1276 * t1147 - t1272 * t1148; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t1251, t1252, 0, t1276 * t1257 - t1272 * t1258, 0, 0, 0, 0, 0, 0, t1307, t1306, 0, -t1272 * t1202 + t1276 * t1203, 0, 0, 0, 0, 0, 0, -t1272 * t1206 + t1276 * t1208, -t1272 * t1207 + t1276 * t1209, -t1272 * t1218 + t1276 * t1219, -t1272 * t1184 + t1276 * t1185, 0, 0, 0, 0, 0, 0, t1160, t1162, t1152, -t1272 * t1153 + t1276 * t1154, 0, 0, 0, 0, 0, 0, t1160, t1162, t1152, -t1272 * t1147 + t1276 * t1148; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1278, -qJDD(1), 0, t1257, 0, 0, 0, 0, 0, 0, t1283, t1244, 0, t1203, 0, 0, 0, 0, 0, 0, t1208, t1209, t1219, t1185, 0, 0, 0, 0, 0, 0, t1172, t1174, t1164, t1154, 0, 0, 0, 0, 0, 0, t1172, t1174, t1164, t1148; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1278, 0, t1258, 0, 0, 0, 0, 0, 0, -t1244, t1283, 0, t1202, 0, 0, 0, 0, 0, 0, t1206, t1207, t1218, t1184, 0, 0, 0, 0, 0, 0, t1171, t1173, t1163, t1153, 0, 0, 0, 0, 0, 0, t1171, t1173, t1163, t1147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1222, t1223, 0, t1186, 0, 0, 0, 0, 0, 0, t1176, t1182, t1167, t1155, 0, 0, 0, 0, 0, 0, t1176, t1182, t1167, t1149; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1264, -t1265, 0, t1221, 0, 0, 0, 0, 0, 0, t1224, t1225, t1241, t1187, 0, 0, 0, 0, 0, 0, t1177, t1183, t1168, t1156, 0, 0, 0, 0, 0, 0, t1177, t1183, t1168, t1150; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1265, -t1264, 0, t1220, 0, 0, 0, 0, 0, 0, t1237, -t1235, t1246, -t1216, 0, 0, 0, 0, 0, 0, -t1196, -t1198, -t1205, -t1195, 0, 0, 0, 0, 0, 0, -t1196, -t1198, -t1205, -t1175; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1222, t1223, 0, t1186, 0, 0, 0, 0, 0, 0, t1176, t1182, t1167, t1155, 0, 0, 0, 0, 0, 0, t1176, t1182, t1167, t1149; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1254, t1249, t1291, t1211, 0, 0, 0, 0, 0, 0, t1189, t1201, t1181, t1166, 0, 0, 0, 0, 0, 0, t1189, t1201, t1181, t1158; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1248, t1253, -t1292, t1210, 0, 0, 0, 0, 0, 0, t1188, t1200, t1180, t1165, 0, 0, 0, 0, 0, 0, t1188, t1200, t1180, t1157; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1237, t1235, -t1246, t1216, 0, 0, 0, 0, 0, 0, t1196, t1198, t1205, t1195, 0, 0, 0, 0, 0, 0, t1196, t1198, t1205, t1175; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1213, t1215, t1197, t1179, 0, 0, 0, 0, 0, 0, t1213, t1215, t1197, t1170; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1214, t1226, t1199, t1178, 0, 0, 0, 0, 0, 0, t1214, t1226, t1199, t1169; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1196, t1198, t1205, t1195, 0, 0, 0, 0, 0, 0, t1196, t1198, t1205, t1175; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1213, t1215, t1197, t1170; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1214, t1226, t1199, t1169; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1196, t1198, t1205, t1175;];
f_new_reg = t1;
