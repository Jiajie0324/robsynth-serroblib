% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RPRPR12
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
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2,theta4]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RPRPR12_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR12_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR12_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRPR12_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRPR12_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRPR12_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:30:44
% EndTime: 2019-12-31 18:31:00
% DurationCPUTime: 17.60s
% Computational Cost: add. (125301->698), mult. (311347->987), div. (0->0), fcn. (232485->10), ass. (0->478)
t1245 = sin(pkin(9));
t1246 = sin(pkin(8));
t1248 = cos(pkin(8));
t1250 = sin(qJ(3));
t1253 = cos(qJ(3));
t1276 = t1246 * t1253 + t1248 * t1250;
t1218 = t1276 * qJD(1);
t1247 = cos(pkin(9));
t1197 = -t1247 * qJD(3) + t1245 * t1218;
t1198 = t1245 * qJD(3) + t1247 * t1218;
t1153 = t1198 * t1197;
t1235 = t1246 * qJDD(1);
t1237 = t1248 * qJDD(1);
t1214 = t1250 * t1235 - t1253 * t1237;
t1321 = t1218 * qJD(3);
t1181 = t1214 + t1321;
t1351 = -t1153 + t1181;
t1359 = t1245 * t1351;
t1358 = t1247 * t1351;
t1249 = sin(qJ(5));
t1252 = cos(qJ(5));
t1148 = t1252 * t1197 + t1249 * t1198;
t1150 = -t1249 * t1197 + t1252 * t1198;
t1092 = t1150 * t1148;
t1174 = qJDD(5) + t1181;
t1353 = -t1092 + t1174;
t1357 = t1249 * t1353;
t1216 = (t1246 * t1250 - t1248 * t1253) * qJD(1);
t1187 = t1218 * t1216;
t1349 = qJDD(3) - t1187;
t1356 = t1250 * t1349;
t1355 = t1252 * t1353;
t1354 = t1253 * t1349;
t1255 = qJD(1) ^ 2;
t1251 = sin(qJ(1));
t1254 = cos(qJ(1));
t1228 = t1251 * g(1) - t1254 * g(2);
t1278 = -qJDD(2) + t1228;
t1299 = pkin(2) * t1248 + pkin(1);
t1241 = t1246 ^ 2;
t1242 = t1248 ^ 2;
t1302 = t1241 + t1242;
t1176 = t1299 * qJDD(1) + (t1302 * pkin(6) + qJ(2)) * t1255 + t1278;
t1239 = t1242 * t1255;
t1229 = t1254 * g(1) + t1251 * g(2);
t1263 = -0.2e1 * qJD(2) * qJD(1) + t1229;
t1260 = -t1255 * pkin(1) - t1263;
t1336 = t1246 * g(3);
t1350 = (pkin(6) + qJ(2)) * qJDD(1);
t1167 = -pkin(2) * t1239 - t1336 + (t1260 + t1350) * t1248;
t1335 = t1248 * g(3);
t1258 = -t1335 + (t1299 * t1255 + t1263 - t1350) * t1246;
t1096 = t1253 * t1167 + t1250 * t1258;
t1173 = t1216 * pkin(3) - t1218 * qJ(4);
t1345 = qJD(3) ^ 2;
t1058 = -t1345 * pkin(3) + qJDD(3) * qJ(4) - t1216 * t1173 + t1096;
t1206 = t1216 * qJD(3);
t1215 = t1276 * qJDD(1);
t1183 = -t1206 + t1215;
t1071 = (-t1183 + t1206) * qJ(4) + (t1181 + t1321) * pkin(3) - t1176;
t979 = 0.2e1 * qJD(4) * t1198 + t1245 * t1058 - t1247 * t1071;
t980 = -0.2e1 * qJD(4) * t1197 + t1247 * t1058 + t1245 * t1071;
t923 = t1245 * t979 + t1247 * t980;
t1162 = t1245 * qJDD(3) + t1247 * t1183;
t1275 = t1247 * qJDD(3) - t1245 * t1183;
t1056 = -t1148 * qJD(5) + t1252 * t1162 + t1249 * t1275;
t1208 = qJD(5) + t1216;
t1129 = t1208 * t1148;
t1352 = -t1129 + t1056;
t1170 = t1216 * t1197;
t1113 = t1162 - t1170;
t1114 = t1162 + t1170;
t1171 = t1216 * t1198;
t1112 = t1275 + t1171;
t1347 = t1255 * t1302;
t1287 = t1249 * t1162 - t1252 * t1275;
t1021 = (qJD(5) - t1208) * t1150 + t1287;
t1146 = t1148 ^ 2;
t1147 = t1150 ^ 2;
t1344 = t1197 ^ 2;
t1194 = t1198 ^ 2;
t1207 = t1208 ^ 2;
t1343 = t1216 ^ 2;
t1213 = t1218 ^ 2;
t944 = pkin(4) * t1351 - t1114 * pkin(7) - t979;
t1161 = t1216 * pkin(4) - t1198 * pkin(7);
t960 = -t1344 * pkin(4) + pkin(7) * t1275 - t1216 * t1161 + t980;
t893 = t1249 * t960 - t1252 * t944;
t894 = t1249 * t944 + t1252 * t960;
t859 = t1249 * t894 - t1252 * t893;
t1342 = pkin(4) * t859;
t1024 = t1129 + t1056;
t962 = -t1021 * t1249 - t1252 * t1024;
t1341 = pkin(4) * t962;
t1095 = t1250 * t1167 - t1253 * t1258;
t1030 = -t1253 * t1095 + t1250 * t1096;
t1339 = pkin(2) * t1030;
t1125 = -t1214 * t1250 - t1253 * t1215;
t1338 = pkin(2) * t1125;
t1337 = pkin(3) * t1250;
t1334 = qJDD(1) * pkin(1);
t1333 = t1245 * t859;
t1332 = t1247 * t859;
t1054 = -qJDD(3) * pkin(3) - t1345 * qJ(4) + t1218 * t1173 + qJDD(4) + t1095;
t991 = -pkin(4) * t1275 - t1344 * pkin(7) + t1198 * t1161 + t1054;
t1331 = t1249 * t991;
t1330 = t1252 * t991;
t1329 = -pkin(3) * t1054 + qJ(4) * t923;
t1328 = t1208 * t1150;
t1327 = t1208 * t1249;
t1326 = t1208 * t1252;
t1325 = t1216 * t1245;
t1324 = t1216 * t1247;
t1323 = t1216 * t1250;
t1322 = t1216 * t1253;
t1320 = t1218 * t1250;
t1319 = t1218 * t1253;
t1318 = t1241 * t1255;
t1048 = t1245 * t1054;
t1117 = t1153 + t1181;
t1317 = t1245 * t1117;
t1316 = t1246 * t1030;
t1315 = t1246 * t1248;
t1049 = t1247 * t1054;
t1314 = t1247 * t1117;
t1313 = t1248 * t1030;
t1063 = t1092 + t1174;
t1312 = t1249 * t1063;
t1311 = t1250 * t1176;
t1178 = qJDD(3) + t1187;
t1310 = t1250 * t1178;
t1309 = t1250 * t1181;
t1209 = t1255 * qJ(2) + t1278 + t1334;
t1308 = t1251 * t1209;
t1307 = t1252 * t1063;
t1306 = t1253 * t1176;
t1305 = t1253 * t1178;
t1304 = t1254 * t1209;
t1301 = t1251 * qJDD(1);
t1300 = t1254 * qJDD(1);
t1298 = -pkin(3) * t1253 - pkin(2);
t1297 = t1250 * t1092;
t1296 = t1250 * t1153;
t1295 = t1251 * t1187;
t1294 = t1253 * t1092;
t1293 = t1253 * t1153;
t1292 = t1254 * t1187;
t1141 = -t1194 - t1343;
t1061 = -t1245 * t1141 - t1314;
t1291 = -pkin(3) * t1113 + qJ(4) * t1061 + t1048;
t1134 = -t1343 - t1344;
t1043 = t1247 * t1134 - t1359;
t1111 = -t1171 + t1275;
t1290 = pkin(3) * t1111 + qJ(4) * t1043 - t1049;
t1289 = t1246 * t1237;
t1288 = t1209 + t1334;
t860 = t1249 * t893 + t1252 * t894;
t1031 = t1250 * t1095 + t1253 * t1096;
t1259 = qJDD(1) * qJ(2) + t1260;
t1188 = t1246 * t1259 + t1335;
t1189 = t1248 * t1259 - t1336;
t1133 = t1246 * t1188 + t1248 * t1189;
t1286 = -t1251 * t1228 - t1254 * t1229;
t1038 = -t1146 - t1147;
t964 = -t1021 * t1252 + t1249 * t1024;
t848 = -pkin(4) * t1038 + pkin(7) * t964 + t860;
t850 = -pkin(7) * t962 - t859;
t899 = -t1245 * t962 + t1247 * t964;
t1285 = -pkin(3) * t1038 + qJ(4) * t899 + t1245 * t850 + t1247 * t848;
t1020 = (qJD(5) + t1208) * t1150 + t1287;
t1077 = -t1207 - t1146;
t993 = t1252 * t1077 - t1357;
t908 = -pkin(4) * t1020 + pkin(7) * t993 - t1330;
t992 = t1249 * t1077 + t1355;
t930 = -pkin(7) * t992 + t1331;
t933 = -t1245 * t992 + t1247 * t993;
t1284 = -pkin(3) * t1020 + qJ(4) * t933 + t1245 * t930 + t1247 * t908;
t1098 = -t1147 - t1207;
t1003 = -t1249 * t1098 - t1307;
t911 = -pkin(4) * t1352 + pkin(7) * t1003 + t1331;
t1002 = t1252 * t1098 - t1312;
t935 = -pkin(7) * t1002 + t1330;
t942 = -t1245 * t1002 + t1247 * t1003;
t1283 = -pkin(3) * t1352 + qJ(4) * t942 + t1245 * t935 + t1247 * t911;
t1036 = t1247 * t1112 + t1245 * t1114;
t1120 = t1194 + t1344;
t1282 = pkin(3) * t1120 + qJ(4) * t1036 + t923;
t903 = -t1253 * t1054 + t1250 * t923;
t1281 = pkin(2) * t903 + t1329;
t1203 = -t1213 - t1345;
t1137 = t1253 * t1203 - t1310;
t1280 = pkin(2) * t1137 - t1096;
t1227 = -t1251 * t1255 + t1300;
t1279 = -pkin(5) * t1227 - t1251 * g(3);
t922 = t1245 * t980 - t1247 * t979;
t1132 = t1248 * t1188 - t1246 * t1189;
t1277 = t1254 * t1228 - t1251 * t1229;
t1226 = t1254 * t1255 + t1301;
t1000 = t1250 * t1043 + t1253 * t1111;
t1274 = pkin(2) * t1000 + t1290;
t1004 = t1250 * t1061 - t1113 * t1253;
t1273 = pkin(2) * t1004 + t1291;
t1272 = pkin(4) * t992 - t893;
t1175 = -t1343 - t1345;
t1121 = t1250 * t1175 + t1354;
t1271 = pkin(2) * t1121 - t1095;
t838 = t1247 * t860 - t1333;
t852 = -pkin(4) * t991 + pkin(7) * t860;
t1270 = -pkin(3) * t991 - pkin(7) * t1333 + qJ(4) * t838 + t1247 * t852;
t906 = -t1253 * t1020 + t1250 * t933;
t1269 = pkin(2) * t906 + t1284;
t913 = t1250 * t942 - t1253 * t1352;
t1268 = pkin(2) * t913 + t1283;
t886 = -t1253 * t1038 + t1250 * t899;
t1267 = pkin(2) * t886 + t1285;
t998 = t1250 * t1036 + t1253 * t1120;
t1266 = pkin(2) * t998 + t1282;
t1220 = t1248 * t1347;
t1265 = -t1251 * t1220 + t1248 * t1300;
t1264 = t1254 * t1220 + t1248 * t1301;
t1262 = pkin(4) * t1002 - t894;
t834 = t1250 * t838 - t1253 * t991;
t1261 = pkin(2) * t834 + t1270;
t1236 = t1242 * qJDD(1);
t1234 = t1241 * qJDD(1);
t1231 = t1255 * t1315;
t1230 = 0.2e1 * t1289;
t1225 = -t1239 + t1318;
t1224 = t1239 + t1318;
t1223 = t1236 - t1234;
t1222 = t1236 + t1234;
t1219 = t1246 * t1347;
t1210 = -pkin(5) * t1226 + t1254 * g(3);
t1202 = -t1213 + t1345;
t1201 = t1343 - t1345;
t1200 = t1227 * t1315;
t1199 = t1226 * t1315;
t1196 = t1254 * t1219 + t1246 * t1301;
t1195 = t1251 * t1219 - t1246 * t1300;
t1185 = t1213 - t1343;
t1182 = -0.2e1 * t1206 + t1215;
t1180 = t1214 + 0.2e1 * t1321;
t1172 = t1253 * t1181;
t1169 = (t1320 - t1322) * qJD(3);
t1168 = (-t1319 - t1323) * qJD(3);
t1166 = -qJ(2) * t1220 + t1288 * t1248;
t1165 = qJ(2) * t1219 - t1288 * t1246;
t1164 = -t1194 + t1343;
t1163 = -t1343 + t1344;
t1154 = -t1343 - t1213;
t1151 = t1194 - t1344;
t1145 = -qJD(3) * t1320 + t1253 * t1183;
t1144 = qJD(3) * t1319 + t1250 * t1183;
t1143 = qJD(3) * t1322 + t1309;
t1142 = qJD(3) * t1323 - t1172;
t1140 = -t1250 * t1203 - t1305;
t1139 = -t1250 * t1202 + t1354;
t1138 = t1253 * t1201 - t1310;
t1136 = t1253 * t1202 + t1356;
t1135 = t1250 * t1201 + t1305;
t1128 = -t1253 * t1180 - t1250 * t1182;
t1127 = -t1214 * t1253 + t1250 * t1215;
t1126 = -t1250 * t1180 + t1253 * t1182;
t1124 = -t1147 + t1207;
t1123 = t1146 - t1207;
t1122 = t1253 * t1175 - t1356;
t1107 = pkin(1) * t1209 + qJ(2) * t1133;
t1106 = (-t1197 * t1247 + t1198 * t1245) * t1216;
t1105 = (-t1197 * t1245 - t1198 * t1247) * t1216;
t1104 = -t1246 * t1168 + t1248 * t1169;
t1103 = t1248 * t1168 + t1246 * t1169;
t1102 = t1247 * t1162 - t1198 * t1325;
t1101 = t1245 * t1162 + t1198 * t1324;
t1100 = t1197 * t1324 - t1245 * t1275;
t1099 = -t1197 * t1325 - t1247 * t1275;
t1097 = pkin(1) * t1224 + qJ(2) * t1222 + t1133;
t1093 = -pkin(6) * t1137 - t1306;
t1091 = t1147 - t1146;
t1090 = -pkin(6) * t1121 - t1311;
t1089 = -t1246 * t1144 + t1248 * t1145;
t1088 = -t1246 * t1142 + t1248 * t1143;
t1087 = t1248 * t1144 + t1246 * t1145;
t1086 = t1248 * t1142 + t1246 * t1143;
t1085 = -t1246 * t1137 + t1248 * t1140;
t1084 = -t1246 * t1136 + t1248 * t1139;
t1083 = -t1246 * t1135 + t1248 * t1138;
t1082 = t1248 * t1137 + t1246 * t1140;
t1081 = t1248 * t1136 + t1246 * t1139;
t1080 = t1248 * t1135 + t1246 * t1138;
t1079 = t1253 * t1106 + t1309;
t1078 = t1250 * t1106 - t1172;
t1076 = t1247 * t1163 - t1317;
t1075 = -t1245 * t1164 + t1358;
t1074 = t1245 * t1163 + t1314;
t1073 = t1247 * t1164 + t1359;
t1072 = -pkin(2) * t1182 + pkin(6) * t1140 - t1311;
t1068 = t1253 * t1102 + t1296;
t1067 = t1253 * t1100 - t1296;
t1066 = t1250 * t1102 - t1293;
t1065 = t1250 * t1100 + t1293;
t1060 = t1247 * t1141 - t1317;
t1059 = -pkin(2) * t1180 + pkin(6) * t1122 + t1306;
t1055 = -t1150 * qJD(5) - t1287;
t1052 = (-t1148 * t1252 + t1150 * t1249) * t1208;
t1051 = (-t1148 * t1249 - t1150 * t1252) * t1208;
t1047 = -t1246 * t1126 + t1248 * t1128;
t1046 = -t1246 * t1125 + t1248 * t1127;
t1045 = t1248 * t1126 + t1246 * t1128;
t1044 = t1248 * t1125 + t1246 * t1127;
t1042 = t1245 * t1134 + t1358;
t1041 = -t1246 * t1121 + t1248 * t1122;
t1040 = t1248 * t1121 + t1246 * t1122;
t1035 = t1247 * t1111 - t1245 * t1113;
t1034 = t1245 * t1112 - t1247 * t1114;
t1033 = t1245 * t1111 + t1247 * t1113;
t1029 = t1253 * t1076 + t1112 * t1250;
t1028 = t1253 * t1075 + t1250 * t1114;
t1027 = t1250 * t1076 - t1112 * t1253;
t1026 = t1250 * t1075 - t1253 * t1114;
t1017 = pkin(2) * t1176 + pkin(6) * t1031;
t1016 = t1252 * t1123 - t1312;
t1015 = -t1249 * t1124 + t1355;
t1014 = t1249 * t1123 + t1307;
t1013 = t1252 * t1124 + t1357;
t1012 = t1252 * t1056 - t1150 * t1327;
t1011 = t1249 * t1056 + t1150 * t1326;
t1010 = -t1249 * t1055 + t1148 * t1326;
t1009 = t1252 * t1055 + t1148 * t1327;
t1008 = -pkin(1) * t1044 - t1338;
t1007 = t1253 * t1035 + t1250 * t1151;
t1006 = t1250 * t1035 - t1253 * t1151;
t1005 = t1253 * t1061 + t1113 * t1250;
t1001 = t1253 * t1043 - t1250 * t1111;
t999 = t1253 * t1036 - t1250 * t1120;
t997 = -t1246 * t1078 + t1248 * t1079;
t996 = t1248 * t1078 + t1246 * t1079;
t995 = -pkin(6) * t1125 - t1030;
t994 = -pkin(1) * t1082 - t1280;
t989 = -t1246 * t1066 + t1248 * t1068;
t988 = -t1246 * t1065 + t1248 * t1067;
t987 = t1248 * t1066 + t1246 * t1068;
t986 = t1248 * t1065 + t1246 * t1067;
t985 = -qJ(4) * t1060 + t1049;
t984 = -t1245 * t1051 + t1247 * t1052;
t983 = t1247 * t1051 + t1245 * t1052;
t982 = -qJ(4) * t1042 + t1048;
t981 = -pkin(2) * t1154 + pkin(6) * t1127 + t1031;
t976 = -pkin(1) * t1040 - t1271;
t975 = t1250 * t1174 + t1253 * t984;
t974 = -t1253 * t1174 + t1250 * t984;
t973 = -qJ(2) * t1082 - t1246 * t1072 + t1248 * t1093;
t972 = t1248 * t1031 - t1316;
t971 = t1246 * t1031 + t1313;
t970 = -pkin(1) * t1182 + qJ(2) * t1085 + t1248 * t1072 + t1246 * t1093;
t969 = -qJ(2) * t1040 - t1246 * t1059 + t1248 * t1090;
t968 = -t1246 * t1027 + t1248 * t1029;
t967 = -t1246 * t1026 + t1248 * t1028;
t966 = t1248 * t1027 + t1246 * t1029;
t965 = t1248 * t1026 + t1246 * t1028;
t963 = -t1252 * t1020 - t1249 * t1352;
t961 = -t1249 * t1020 + t1252 * t1352;
t959 = -pkin(1) * t1180 + qJ(2) * t1041 + t1248 * t1059 + t1246 * t1090;
t958 = -t1245 * t1014 + t1247 * t1016;
t957 = -t1245 * t1013 + t1247 * t1015;
t956 = t1247 * t1014 + t1245 * t1016;
t955 = t1247 * t1013 + t1245 * t1015;
t954 = -t1245 * t1011 + t1247 * t1012;
t953 = -t1245 * t1009 + t1247 * t1010;
t952 = t1247 * t1011 + t1245 * t1012;
t951 = t1247 * t1009 + t1245 * t1010;
t950 = -t1246 * t1006 + t1248 * t1007;
t949 = t1248 * t1006 + t1246 * t1007;
t948 = -pkin(3) * t1060 + t980;
t947 = -pkin(3) * t1042 + t979;
t946 = -t1246 * t1004 + t1248 * t1005;
t945 = t1248 * t1004 + t1246 * t1005;
t941 = t1247 * t1002 + t1245 * t1003;
t939 = -t1246 * t1000 + t1248 * t1001;
t938 = t1248 * t1000 + t1246 * t1001;
t937 = -t1246 * t998 + t1248 * t999;
t936 = t1246 * t999 + t1248 * t998;
t932 = t1245 * t993 + t1247 * t992;
t928 = t1253 * t954 + t1297;
t927 = t1253 * t953 - t1297;
t926 = t1250 * t954 - t1294;
t925 = t1250 * t953 + t1294;
t924 = -pkin(1) * t971 - t1339;
t920 = -t1250 * t1021 + t1253 * t958;
t919 = t1250 * t1024 + t1253 * t957;
t918 = t1253 * t1021 + t1250 * t958;
t917 = -t1253 * t1024 + t1250 * t957;
t916 = -t1246 * t974 + t1248 * t975;
t915 = t1246 * t975 + t1248 * t974;
t914 = t1250 * t1352 + t1253 * t942;
t912 = -qJ(2) * t1044 - t1246 * t981 + t1248 * t995;
t909 = -pkin(1) * t1154 + qJ(2) * t1046 + t1246 * t995 + t1248 * t981;
t907 = t1250 * t1020 + t1253 * t933;
t904 = t1250 * t1054 + t1253 * t923;
t902 = -pkin(6) * t1313 - qJ(2) * t971 - t1246 * t1017;
t901 = -qJ(4) * t1034 - t922;
t900 = pkin(1) * t1176 - pkin(6) * t1316 + qJ(2) * t972 + t1248 * t1017;
t898 = -t1245 * t961 + t1247 * t963;
t897 = t1245 * t964 + t1247 * t962;
t896 = t1245 * t963 + t1247 * t961;
t891 = -pkin(6) * t1004 - t1250 * t948 + t1253 * t985;
t890 = t1250 * t1091 + t1253 * t898;
t889 = -t1253 * t1091 + t1250 * t898;
t888 = -pkin(6) * t1000 - t1250 * t947 + t1253 * t982;
t887 = t1250 * t1038 + t1253 * t899;
t885 = -pkin(1) * t945 - t1273;
t884 = -pkin(1) * t938 - t1274;
t883 = -pkin(2) * t1060 + pkin(6) * t1005 + t1250 * t985 + t1253 * t948;
t882 = -t1246 * t926 + t1248 * t928;
t881 = -t1246 * t925 + t1248 * t927;
t880 = t1246 * t928 + t1248 * t926;
t879 = t1246 * t927 + t1248 * t925;
t878 = -pkin(2) * t1042 + pkin(6) * t1001 + t1250 * t982 + t1253 * t947;
t877 = -pkin(6) * t998 + t1034 * t1337 + t1253 * t901;
t876 = -pkin(3) * t897 - t1341;
t875 = -t1246 * t918 + t1248 * t920;
t874 = -t1246 * t917 + t1248 * t919;
t873 = t1246 * t920 + t1248 * t918;
t872 = t1246 * t919 + t1248 * t917;
t871 = pkin(6) * t999 + t1298 * t1034 + t1250 * t901;
t870 = -t1246 * t913 + t1248 * t914;
t869 = t1246 * t914 + t1248 * t913;
t868 = -t1246 * t906 + t1248 * t907;
t867 = t1246 * t907 + t1248 * t906;
t866 = -t1246 * t903 + t1248 * t904;
t865 = t1246 * t904 + t1248 * t903;
t864 = -pkin(1) * t936 - t1266;
t863 = -pkin(3) * t941 - t1262;
t862 = -qJ(4) * t941 - t1245 * t911 + t1247 * t935;
t861 = -pkin(3) * t932 - t1272;
t858 = -qJ(4) * t932 - t1245 * t908 + t1247 * t930;
t857 = -t1246 * t889 + t1248 * t890;
t856 = t1246 * t890 + t1248 * t889;
t855 = -pkin(6) * t903 + (-qJ(4) * t1253 + t1337) * t922;
t854 = -t1246 * t886 + t1248 * t887;
t853 = t1246 * t887 + t1248 * t886;
t846 = -qJ(2) * t945 - t1246 * t883 + t1248 * t891;
t845 = -qJ(2) * t938 - t1246 * t878 + t1248 * t888;
t844 = pkin(6) * t904 + (-qJ(4) * t1250 + t1298) * t922;
t843 = -pkin(1) * t1060 + qJ(2) * t946 + t1246 * t891 + t1248 * t883;
t842 = -pkin(1) * t1042 + qJ(2) * t939 + t1246 * t888 + t1248 * t878;
t841 = -qJ(2) * t936 - t1246 * t871 + t1248 * t877;
t840 = -pkin(1) * t865 - t1281;
t839 = -pkin(1) * t1034 + qJ(2) * t937 + t1246 * t877 + t1248 * t871;
t837 = t1245 * t860 + t1332;
t835 = t1250 * t991 + t1253 * t838;
t833 = -pkin(1) * t869 - t1268;
t832 = -pkin(6) * t913 - t1250 * t863 + t1253 * t862;
t831 = -pkin(6) * t906 - t1250 * t861 + t1253 * t858;
t830 = -pkin(1) * t867 - t1269;
t829 = -pkin(2) * t941 + pkin(6) * t914 + t1250 * t862 + t1253 * t863;
t828 = -pkin(2) * t932 + pkin(6) * t907 + t1250 * t858 + t1253 * t861;
t827 = -pkin(3) * t837 - t1342;
t826 = -qJ(4) * t897 - t1245 * t848 + t1247 * t850;
t825 = -qJ(2) * t865 - t1246 * t844 + t1248 * t855;
t824 = -pkin(1) * t922 + qJ(2) * t866 + t1246 * t855 + t1248 * t844;
t823 = -pkin(7) * t1332 - qJ(4) * t837 - t1245 * t852;
t822 = -t1246 * t834 + t1248 * t835;
t821 = t1246 * t835 + t1248 * t834;
t820 = -pkin(6) * t886 - t1250 * t876 + t1253 * t826;
t819 = -pkin(2) * t897 + pkin(6) * t887 + t1250 * t826 + t1253 * t876;
t818 = -pkin(1) * t853 - t1267;
t817 = -qJ(2) * t869 - t1246 * t829 + t1248 * t832;
t816 = -pkin(1) * t941 + qJ(2) * t870 + t1246 * t832 + t1248 * t829;
t815 = -qJ(2) * t867 - t1246 * t828 + t1248 * t831;
t814 = -pkin(1) * t932 + qJ(2) * t868 + t1246 * t831 + t1248 * t828;
t813 = -pkin(6) * t834 - t1250 * t827 + t1253 * t823;
t812 = -qJ(2) * t853 - t1246 * t819 + t1248 * t820;
t811 = -pkin(1) * t897 + qJ(2) * t854 + t1246 * t820 + t1248 * t819;
t810 = -pkin(1) * t821 - t1261;
t809 = -pkin(2) * t837 + pkin(6) * t835 + t1250 * t823 + t1253 * t827;
t808 = -qJ(2) * t821 - t1246 * t809 + t1248 * t813;
t807 = -pkin(1) * t837 + qJ(2) * t822 + t1246 * t813 + t1248 * t809;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1227, 0, -t1226, 0, t1279, -t1210, -t1277, -pkin(5) * t1277, t1200, t1254 * t1223 + t1251 * t1225, t1196, -t1200, t1264, 0, -pkin(5) * t1265 - t1251 * t1188 - t1246 * t1304, -pkin(5) * t1195 - t1251 * t1189 - t1248 * t1304, t1254 * t1132 - pkin(5) * (t1251 * t1222 + t1254 * t1224), -pkin(5) * (t1251 * t1133 + t1304) - (t1251 * pkin(1) - t1254 * qJ(2)) * t1132, t1254 * t1089 + t1295, t1254 * t1047 + t1251 * t1185, t1254 * t1084 + t1251 * t1215, t1254 * t1088 - t1295, t1254 * t1083 - t1251 * t1214, t1251 * qJDD(3) + t1254 * t1104, t1254 * t969 - t1251 * t976 - pkin(5) * (t1251 * t1041 - t1254 * t1180), t1254 * t973 - t1251 * t994 - pkin(5) * (t1251 * t1085 - t1254 * t1182), t1254 * t912 - t1251 * t1008 - pkin(5) * (t1251 * t1046 - t1254 * t1154), t1254 * t902 - t1251 * t924 - pkin(5) * (t1254 * t1176 + t1251 * t972), t1251 * t1101 + t1254 * t989, t1251 * t1033 + t1254 * t950, t1251 * t1073 + t1254 * t967, -t1251 * t1099 + t1254 * t988, t1251 * t1074 + t1254 * t968, t1251 * t1105 + t1254 * t997, t1254 * t845 - t1251 * t884 - pkin(5) * (-t1254 * t1042 + t1251 * t939), t1254 * t846 - t1251 * t885 - pkin(5) * (-t1254 * t1060 + t1251 * t946), t1254 * t841 - t1251 * t864 - pkin(5) * (-t1254 * t1034 + t1251 * t937), t1254 * t825 - t1251 * t840 - pkin(5) * (t1251 * t866 - t1254 * t922), t1251 * t952 + t1254 * t882, t1251 * t896 + t1254 * t857, t1251 * t955 + t1254 * t874, t1251 * t951 + t1254 * t881, t1251 * t956 + t1254 * t875, t1251 * t983 + t1254 * t916, t1254 * t815 - t1251 * t830 - pkin(5) * (t1251 * t868 - t1254 * t932), t1254 * t817 - t1251 * t833 - pkin(5) * (t1251 * t870 - t1254 * t941), t1254 * t812 - t1251 * t818 - pkin(5) * (t1251 * t854 - t1254 * t897), t1254 * t808 - t1251 * t810 - pkin(5) * (t1251 * t822 - t1254 * t837); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1226, 0, t1227, 0, t1210, t1279, t1286, pkin(5) * t1286, t1199, t1251 * t1223 - t1254 * t1225, t1195, -t1199, -t1265, 0, -pkin(5) * t1264 + t1254 * t1188 - t1246 * t1308, pkin(5) * t1196 + t1254 * t1189 - t1248 * t1308, t1251 * t1132 + pkin(5) * (t1254 * t1222 - t1251 * t1224), pkin(5) * (t1254 * t1133 - t1308) - (-t1254 * pkin(1) - t1251 * qJ(2)) * t1132, t1251 * t1089 - t1292, t1251 * t1047 - t1254 * t1185, t1251 * t1084 - t1254 * t1215, t1251 * t1088 + t1292, t1251 * t1083 + t1254 * t1214, -t1254 * qJDD(3) + t1251 * t1104, t1251 * t969 + t1254 * t976 + pkin(5) * (t1254 * t1041 + t1251 * t1180), t1251 * t973 + t1254 * t994 + pkin(5) * (t1254 * t1085 + t1251 * t1182), t1251 * t912 + t1254 * t1008 + pkin(5) * (t1254 * t1046 + t1251 * t1154), t1251 * t902 + t1254 * t924 + pkin(5) * (-t1251 * t1176 + t1254 * t972), -t1254 * t1101 + t1251 * t989, -t1254 * t1033 + t1251 * t950, -t1254 * t1073 + t1251 * t967, t1254 * t1099 + t1251 * t988, -t1254 * t1074 + t1251 * t968, -t1254 * t1105 + t1251 * t997, t1251 * t845 + t1254 * t884 + pkin(5) * (t1251 * t1042 + t1254 * t939), t1251 * t846 + t1254 * t885 + pkin(5) * (t1251 * t1060 + t1254 * t946), t1251 * t841 + t1254 * t864 + pkin(5) * (t1251 * t1034 + t1254 * t937), t1251 * t825 + t1254 * t840 + pkin(5) * (t1251 * t922 + t1254 * t866), t1251 * t882 - t1254 * t952, t1251 * t857 - t1254 * t896, t1251 * t874 - t1254 * t955, t1251 * t881 - t1254 * t951, t1251 * t875 - t1254 * t956, t1251 * t916 - t1254 * t983, t1251 * t815 + t1254 * t830 + pkin(5) * (t1251 * t932 + t1254 * t868), t1251 * t817 + t1254 * t833 + pkin(5) * (t1251 * t941 + t1254 * t870), t1251 * t812 + t1254 * t818 + pkin(5) * (t1251 * t897 + t1254 * t854), t1251 * t808 + t1254 * t810 + pkin(5) * (t1251 * t837 + t1254 * t822); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1228, t1229, 0, 0, t1234, t1230, 0, t1236, 0, 0, t1166, t1165, t1097, t1107, t1087, t1045, t1081, t1086, t1080, t1103, t959, t970, t909, t900, t987, t949, t965, t986, t966, t996, t842, t843, t839, t824, t880, t856, t872, t879, t873, t915, t814, t816, t811, t807; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1255, 0, 0, -g(3), -t1228, 0, t1289, t1223, t1219, -t1289, t1220, 0, -t1246 * t1209, -t1248 * t1209, t1132, qJ(2) * t1132, t1089, t1047, t1084, t1088, t1083, t1104, t969, t973, t912, t902, t989, t950, t967, t988, t968, t997, t845, t846, t841, t825, t882, t857, t874, t881, t875, t916, t815, t817, t812, t808; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1255, 0, qJDD(1), 0, g(3), 0, -t1229, 0, t1231, -t1225, -t1235, -t1231, -t1237, 0, t1188, t1189, 0, pkin(1) * t1132, -t1187, -t1185, -t1215, t1187, t1214, -qJDD(3), t976, t994, t1008, t924, -t1101, -t1033, -t1073, t1099, -t1074, -t1105, t884, t885, t864, t840, -t952, -t896, -t955, -t951, -t956, -t983, t830, t833, t818, t810; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1228, t1229, 0, 0, t1234, t1230, 0, t1236, 0, 0, t1166, t1165, t1097, t1107, t1087, t1045, t1081, t1086, t1080, t1103, t959, t970, t909, t900, t987, t949, t965, t986, t966, t996, t842, t843, t839, t824, t880, t856, t872, t879, t873, t915, t814, t816, t811, t807; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1235, t1237, t1231, 0, t1239, 0, 0, -t1209, t1188, 0, t1145, t1128, t1139, t1143, t1138, t1169, t1090, t1093, t995, -pkin(6) * t1030, t1068, t1007, t1028, t1067, t1029, t1079, t888, t891, t877, t855, t928, t890, t919, t927, t920, t975, t831, t832, t820, t813; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1235, -t1318, t1237, -t1231, 0, t1209, 0, t1189, 0, t1144, t1126, t1136, t1142, t1135, t1168, t1059, t1072, t981, t1017, t1066, t1006, t1026, t1065, t1027, t1078, t878, t883, t871, t844, t926, t889, t917, t925, t918, t974, t828, t829, t819, t809; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1231, t1225, t1235, t1231, t1237, 0, -t1188, -t1189, 0, 0, t1187, t1185, t1215, -t1187, -t1214, qJDD(3), t1271, t1280, t1338, t1339, t1101, t1033, t1073, -t1099, t1074, t1105, t1274, t1273, t1266, t1281, t952, t896, t955, t951, t956, t983, t1269, t1268, t1267, t1261; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1183, -t1180, t1349, t1206, t1201, -t1206, 0, -t1176, t1095, 0, t1102, t1035, t1075, t1100, t1076, t1106, t982, t985, t901, -qJ(4) * t922, t954, t898, t957, t953, t958, t984, t858, t862, t826, t823; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1321, t1182, t1202, -t1181, t1178, -t1321, t1176, 0, t1096, 0, -t1153, -t1151, -t1114, t1153, -t1112, -t1181, t947, t948, -pkin(3) * t1034, -pkin(3) * t922, -t1092, -t1091, -t1024, t1092, t1021, -t1174, t861, t863, t876, t827; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1187, t1185, t1215, -t1187, -t1214, qJDD(3), -t1095, -t1096, 0, 0, t1101, t1033, t1073, -t1099, t1074, t1105, t1290, t1291, t1282, t1329, t952, t896, t955, t951, t956, t983, t1284, t1283, t1285, t1270; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1162, t1111, t1351, t1170, t1163, -t1170, 0, t1054, t979, 0, t1012, t963, t1015, t1010, t1016, t1052, t930, t935, t850, -pkin(7) * t859; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1171, t1113, t1164, t1275, t1117, -t1171, -t1054, 0, t980, 0, t1011, t961, t1013, t1009, t1014, t1051, t908, t911, t848, t852; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1153, t1151, t1114, -t1153, t1112, t1181, -t979, -t980, 0, 0, t1092, t1091, t1024, -t1092, -t1021, t1174, t1272, t1262, t1341, t1342; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1056, -t1020, t1353, t1129, t1123, -t1129, 0, t991, t893, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1328, t1352, t1124, t1055, t1063, -t1328, -t991, 0, t894, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1092, t1091, t1024, -t1092, -t1021, t1174, -t893, -t894, 0, 0;];
m_new_reg = t1;