% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PRRPP3
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
%   pkin=[a2,a3,a4,a5,d2,d3,theta1,theta4]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:14
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PRRPP3_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPP3_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRPP3_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRPP3_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRPP3_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRPP3_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:14:02
% EndTime: 2019-12-05 16:14:20
% DurationCPUTime: 18.99s
% Computational Cost: add. (27016->574), mult. (57917->680), div. (0->0), fcn. (37272->8), ass. (0->391)
t1170 = sin(pkin(7));
t1172 = cos(pkin(7));
t1175 = sin(qJ(2));
t1177 = cos(qJ(2));
t1174 = sin(qJ(3));
t1176 = cos(qJ(3));
t1276 = qJD(2) * t1176;
t1154 = qJD(3) * t1276;
t1239 = t1174 * qJDD(2);
t1130 = t1154 + t1239;
t1169 = sin(pkin(8));
t1171 = cos(pkin(8));
t1099 = t1169 * qJDD(3) + t1171 * t1130;
t1277 = qJD(2) * t1174;
t1118 = -t1171 * qJD(3) + t1169 * t1277;
t1272 = t1118 * t1176;
t1232 = qJD(2) * t1272;
t1190 = t1099 + t1232;
t1120 = t1169 * qJD(3) + t1171 * t1277;
t1116 = t1120 ^ 2;
t1165 = t1176 ^ 2;
t1178 = qJD(2) ^ 2;
t1161 = t1165 * t1178;
t1062 = t1161 + t1116;
t1074 = t1120 * t1118;
t1153 = qJD(3) * t1277;
t1237 = t1176 * qJDD(2);
t1131 = -t1153 + t1237;
t1304 = -t1074 + t1131;
t1258 = t1171 * t1304;
t999 = t1169 * t1062 + t1258;
t952 = t1174 * t1190 + t1176 * t999;
t1266 = t1169 * t1304;
t981 = t1171 * t1062 - t1266;
t904 = -t1175 * t981 + t1177 * t952;
t946 = t1174 * t999 - t1176 * t1190;
t1420 = qJ(1) * (t1170 * t946 + t1172 * t904);
t1419 = qJ(1) * (t1170 * t904 - t1172 * t946);
t898 = t1175 * t952 + t1177 * t981;
t1418 = pkin(1) * t898;
t1417 = pkin(5) * t898;
t1416 = pkin(1) * t946 - pkin(5) * t904;
t1286 = t1118 ^ 2;
t1105 = t1286 - t1161;
t1004 = t1171 * t1105 + t1266;
t1098 = -t1171 * qJDD(3) + t1169 * t1130;
t1271 = t1120 * t1176;
t1109 = qJD(2) * t1271;
t1041 = t1098 + t1109;
t957 = t1176 * t1004 - t1174 * t1041;
t998 = t1169 * t1105 - t1258;
t909 = t1175 * t998 + t1177 * t957;
t951 = t1174 * t1004 + t1176 * t1041;
t1415 = t1170 * t909 - t1172 * t951;
t1413 = t1170 * t951 + t1172 * t909;
t1302 = t1116 - t1286;
t1042 = t1098 - t1109;
t1260 = t1171 * t1042;
t1268 = t1169 * t1190;
t969 = t1260 + t1268;
t942 = -t1174 * t1302 + t1176 * t969;
t1269 = t1169 * t1042;
t967 = t1171 * t1190 - t1269;
t888 = -t1175 * t967 + t1177 * t942;
t940 = t1174 * t969 + t1176 * t1302;
t1411 = t1170 * t888 - t1172 * t940;
t1410 = t1170 * t940 + t1172 * t888;
t1408 = pkin(2) * t946;
t1407 = pkin(6) * t946;
t1402 = -pkin(2) * t981 - pkin(6) * t952;
t903 = t1175 * t957 - t1177 * t998;
t1191 = t1099 - t1232;
t1338 = -t1169 * t1041 - t1171 * t1191;
t1301 = t1116 + t1286;
t1337 = -t1171 * t1041 + t1169 * t1191;
t1350 = -t1174 * t1301 + t1176 * t1337;
t1373 = t1175 * t1350 - t1177 * t1338;
t1401 = pkin(1) * t1373;
t1400 = pkin(5) * t1373;
t1353 = t1174 * t1337 + t1176 * t1301;
t1371 = t1175 * t1338 + t1177 * t1350;
t1397 = -pkin(1) * t1353 + pkin(5) * t1371;
t886 = t1175 * t942 + t1177 * t967;
t1106 = t1116 - t1161;
t1305 = -t1074 - t1131;
t1257 = t1171 * t1305;
t1340 = t1169 * t1106 + t1257;
t1354 = t1174 * t1340 - t1176 * t1191;
t1265 = t1169 * t1305;
t1341 = -t1171 * t1106 + t1265;
t1351 = t1174 * t1191 + t1176 * t1340;
t1370 = t1175 * t1341 + t1177 * t1351;
t1396 = t1170 * t1370 - t1172 * t1354;
t1395 = t1170 * t1354 + t1172 * t1370;
t1394 = qJ(1) * (t1170 * t1371 - t1172 * t1353);
t1393 = qJ(1) * (t1170 * t1353 + t1172 * t1371);
t1391 = pkin(3) * t981;
t1299 = -t1286 - t1161;
t1320 = t1169 * t1299 + t1257;
t1318 = t1171 * t1299 - t1265;
t1331 = t1174 * t1042 + t1176 * t1318;
t1352 = t1175 * t1331 - t1177 * t1320;
t1390 = pkin(1) * t1352;
t1388 = pkin(2) * t1353;
t1387 = pkin(5) * t1352;
t1386 = pkin(6) * t1350;
t1385 = pkin(6) * t1353;
t1384 = qJ(4) * t981;
t1383 = qJ(4) * t999;
t1332 = -t1176 * t1042 + t1174 * t1318;
t1349 = t1175 * t1320 + t1177 * t1331;
t1374 = -pkin(1) * t1332 + pkin(5) * t1349;
t1372 = t1175 * t1351 - t1177 * t1341;
t1369 = qJ(1) * (t1170 * t1349 - t1172 * t1332);
t1368 = qJ(1) * (t1170 * t1332 + t1172 * t1349);
t1366 = pkin(2) * t1332;
t1365 = pkin(3) * t1338;
t1364 = pkin(6) * t1332;
t1363 = qJ(4) * t1338;
t1356 = -pkin(2) * t1320 + pkin(6) * t1331;
t1355 = pkin(3) * t1301 + qJ(4) * t1337;
t1347 = pkin(3) * t1320;
t1346 = qJ(4) * t1320;
t1339 = -pkin(3) * t1042 + qJ(4) * t1318;
t1194 = (t1118 * t1171 - t1120 * t1169) * t1276;
t1293 = t1176 * t1131 + t1174 * t1194;
t1100 = t1171 * t1109;
t1221 = t1169 * t1232;
t1034 = t1100 + t1221;
t1250 = t1174 * t1131;
t1291 = t1176 * t1194 - t1250;
t1313 = t1175 * t1034 + t1177 * t1291;
t1336 = t1170 * t1313 - t1172 * t1293;
t1196 = t1169 * t1098 - t1171 * t1232;
t1230 = t1118 * t1271;
t1292 = t1174 * t1196 + t1230;
t1020 = t1171 * t1098 + t1221;
t1231 = t1174 * t1074;
t1290 = t1176 * t1196 - t1231;
t1315 = -t1175 * t1020 + t1177 * t1290;
t1335 = t1170 * t1315 - t1172 * t1292;
t1334 = t1170 * t1293 + t1172 * t1313;
t1333 = t1170 * t1292 + t1172 * t1315;
t1329 = pkin(4) * t1042;
t1025 = t1171 * t1099 + t1169 * t1109;
t1201 = t1174 * t1025 - t1230;
t1024 = t1169 * t1099 - t1100;
t1209 = t1176 * t1025 + t1231;
t1289 = t1175 * t1024 + t1177 * t1209;
t1319 = t1170 * t1289 - t1172 * t1201;
t1317 = t1170 * t1201 + t1172 * t1289;
t1316 = t1177 * t1020 + t1175 * t1290;
t1314 = -t1177 * t1034 + t1175 * t1291;
t1139 = t1172 * g(1) + t1170 * g(2);
t1166 = g(3) - qJDD(1);
t1102 = -t1177 * t1139 - t1175 * t1166;
t1076 = -t1178 * pkin(2) + qJDD(2) * pkin(6) + t1102;
t1283 = pkin(3) * t1176;
t1213 = -qJ(4) * t1174 - t1283;
t1128 = t1213 * qJD(2);
t1306 = (qJD(2) * t1128 + t1076) * t1174;
t1275 = qJD(4) * t1118;
t1111 = -0.2e1 * t1275;
t1233 = qJD(5) * t1276;
t1303 = t1111 - 0.2e1 * t1233;
t1138 = t1170 * g(1) - t1172 * g(2);
t1121 = t1172 * t1138;
t1300 = -t1170 * t1139 + t1121;
t1234 = pkin(4) * t1171 + pkin(3);
t1065 = t1118 * pkin(4) - t1120 * qJ(5);
t1101 = -t1175 * t1139 + t1177 * t1166;
t1075 = -qJDD(2) * pkin(2) - t1178 * pkin(6) + t1101;
t1210 = -t1131 + t1153;
t1211 = t1130 + t1154;
t991 = pkin(3) * t1210 - qJ(4) * t1211 + t1075;
t1031 = t1176 * t1076 - t1174 * t1138;
t1287 = qJD(3) ^ 2;
t992 = -t1287 * pkin(3) + qJDD(3) * qJ(4) + t1128 * t1276 + t1031;
t1281 = t1169 * t991 + t1171 * t992;
t1206 = -pkin(4) * t1161 - t1131 * qJ(5) - t1118 * t1065 + t1281;
t883 = t1206 + t1303;
t1228 = t1169 * t992 - t1171 * t991;
t1200 = t1131 * pkin(4) - qJ(5) * t1161 + qJDD(5) + t1228;
t1225 = (0.2e1 * qJD(4) + t1065) * t1120;
t885 = t1225 + t1200;
t861 = t1169 * t885 + t1171 * t883;
t1273 = qJD(5) * t1120;
t1125 = t1176 * t1138;
t1218 = -qJDD(3) * pkin(3) - t1287 * qJ(4) + qJDD(4) + t1125;
t1195 = t1099 * qJ(5) - t1218 - t1329;
t1251 = t1174 * t1076;
t1295 = -qJD(2) * (qJ(5) * t1272 - t1128 * t1174) - t1195 + t1251;
t913 = -0.2e1 * t1273 + t1295;
t1298 = -(qJ(5) * t1169 + t1234) * t913 + qJ(4) * t861;
t1274 = qJD(4) * t1120;
t915 = t1228 + 0.2e1 * t1274;
t916 = t1111 + t1281;
t873 = t1169 * t915 + t1171 * t916;
t990 = t1218 + t1306;
t865 = t1174 * t990 + t1176 * t873;
t872 = t1169 * t916 - t1171 * t915;
t1297 = -(pkin(2) - t1213) * t872 + pkin(6) * t865;
t863 = -t872 - t1363;
t1296 = t1386 + t1174 * t863 - (pkin(2) + t1283) * t1338;
t1294 = -t1177 * t1024 + t1175 * t1209;
t1110 = 0.2e1 * t1273;
t894 = t1110 - t1306 + (t1190 + t1232) * qJ(5) + t1195;
t1288 = t1169 * t894 + t1190 * t1234 - t1383;
t1284 = pkin(3) * t1174;
t1280 = t1169 * t990;
t1279 = t1171 * t990;
t1278 = qJD(2) * qJD(3);
t1164 = t1174 ^ 2;
t1270 = t1164 * t1178;
t1263 = t1170 * t1138;
t1261 = t1170 * t1166;
t1255 = t1172 * t1166;
t1252 = t1174 * t1075;
t1147 = t1174 * t1178 * t1176;
t1140 = qJDD(3) + t1147;
t1249 = t1174 * t1140;
t1141 = qJDD(3) - t1147;
t1248 = t1174 * t1141;
t1244 = t1176 * t1075;
t1242 = t1176 * t1140;
t1241 = t1176 * t1141;
t1240 = t1164 + t1165;
t1238 = t1175 * qJDD(2);
t1236 = t1177 * qJDD(2);
t1133 = t1240 * qJDD(2);
t1136 = t1161 + t1270;
t1072 = t1177 * t1133 - t1175 * t1136;
t1071 = t1175 * t1133 + t1177 * t1136;
t1028 = t1125 + t1251;
t964 = t1174 * t1028 + t1176 * t1031;
t1192 = pkin(2) * t1136 + pkin(6) * t1133 + t964;
t918 = -pkin(1) * t1071 - t1192;
t1229 = qJ(1) * t1072 + t918;
t1135 = -t1175 * t1178 + t1236;
t1063 = -pkin(1) * t1135 + t1101;
t1134 = t1177 * t1178 + t1238;
t1227 = qJ(1) * t1134 - t1063;
t1064 = pkin(1) * t1134 + t1102;
t1226 = qJ(1) * t1135 - t1064;
t1223 = t1175 * t1101 + t1177 * t1102;
t1222 = -t1172 * t1139 - t1263;
t1220 = t1175 * t1147;
t1219 = t1177 * t1147;
t1217 = -pkin(2) * t1075 + pkin(6) * t964;
t1216 = -pkin(3) * t990 + qJ(4) * t873;
t1215 = -pkin(4) * t885 + qJ(5) * t883;
t1212 = -pkin(4) * t1191 - qJ(5) * t1041;
t1080 = pkin(5) * t1134 - t1177 * t1138;
t1208 = -pkin(5) * t1135 - t1175 * t1138;
t963 = t1176 * t1028 - t1174 * t1031;
t1018 = t1177 * t1101 - t1175 * t1102;
t1203 = -t1279 + t1339;
t1146 = -t1161 - t1287;
t1088 = t1176 * t1146 - t1249;
t1132 = -0.2e1 * t1153 + t1237;
t1199 = pkin(2) * t1132 + pkin(6) * t1088 - t1244;
t1144 = -t1270 - t1287;
t1090 = -t1174 * t1144 - t1241;
t1129 = 0.2e1 * t1154 + t1239;
t1198 = -pkin(2) * t1129 + pkin(6) * t1090 + t1252;
t1197 = -pkin(3) * t1190 + t1280 + t1383;
t1193 = t1355 + t873;
t860 = t1169 * t883 - t1171 * t885;
t841 = -pkin(3) * t860 - t1215;
t845 = -qJ(4) * t860 + (pkin(4) * t1169 - qJ(5) * t1171) * t913;
t854 = t1174 * t913 + t1176 * t861;
t1189 = -pkin(2) * t860 + pkin(6) * t854 + t1174 * t845 + t1176 * t841;
t875 = pkin(4) * t1301 + t883;
t876 = qJ(5) * t1301 + t885;
t852 = -t1169 * t875 + t1171 * t876 - t1363;
t912 = -t1212 - t1365;
t1188 = -pkin(2) * t1338 + t1174 * t852 + t1176 * t912 + t1386;
t1181 = pkin(4) * t1062 - qJ(5) * t1304 + t1206;
t866 = -t1181 + 0.2e1 * t1233 + 0.2e1 * t1275 - t1391;
t868 = -pkin(4) * t1268 + t1171 * t894 - t1384;
t1187 = t1174 * t868 + t1176 * t866 + t1402;
t1179 = -pkin(4) * t1305 - qJ(5) * t1299 + t1200;
t867 = t1179 + t1225 - t1347;
t895 = t1110 - t1295 - t1329;
t870 = -qJ(5) * t1260 - t1169 * t895 - t1346;
t1186 = t1174 * t870 + t1176 * t867 + t1356;
t878 = t915 - t1347;
t917 = t1280 - t1346;
t1185 = t1174 * t917 + t1176 * t878 + t1356;
t884 = t916 + t1391;
t919 = t1279 + t1384;
t1184 = t1174 * t919 + t1176 * t884 - t1402;
t1183 = t1169 * t876 + t1171 * t875 + t1355;
t1182 = -qJ(5) * t1269 + t1171 * t895 + t1339;
t1145 = t1161 - t1287;
t1143 = -t1270 + t1287;
t1137 = -t1161 + t1270;
t1127 = t1240 * t1278;
t1097 = t1175 * qJDD(3) + t1177 * t1127;
t1096 = t1176 * t1130 - t1164 * t1278;
t1095 = -t1177 * qJDD(3) + t1175 * t1127;
t1094 = -t1165 * t1278 - t1250;
t1089 = -t1174 * t1143 + t1242;
t1087 = t1176 * t1145 - t1248;
t1086 = t1176 * t1144 - t1248;
t1085 = t1176 * t1143 + t1249;
t1084 = t1174 * t1146 + t1242;
t1083 = t1174 * t1145 + t1241;
t1082 = t1211 * t1174;
t1081 = t1210 * t1176;
t1067 = -t1174 * t1129 + t1176 * t1132;
t1066 = t1176 * t1129 + t1174 * t1132;
t1060 = t1177 * t1096 - t1220;
t1059 = t1177 * t1094 + t1220;
t1058 = t1175 * t1096 + t1219;
t1057 = t1175 * t1094 - t1219;
t1056 = t1177 * t1089 + t1174 * t1238;
t1055 = t1177 * t1087 + t1175 * t1237;
t1054 = t1175 * t1089 - t1174 * t1236;
t1053 = t1175 * t1087 - t1176 * t1236;
t1033 = t1177 * t1090 + t1175 * t1129;
t1032 = t1177 * t1088 - t1175 * t1132;
t1030 = t1175 * t1090 - t1177 * t1129;
t1029 = t1175 * t1088 + t1177 * t1132;
t1015 = t1177 * t1067 + t1175 * t1137;
t1014 = t1175 * t1067 - t1177 * t1137;
t1011 = -pkin(6) * t1086 + t1244;
t1010 = -pkin(6) * t1084 + t1252;
t1009 = pkin(1) * t1138 + pkin(5) * t1223;
t989 = -pkin(2) * t1086 + t1031;
t988 = -pkin(2) * t1084 + t1028;
t945 = -pkin(1) * t1029 - t1199;
t944 = -pkin(1) * t1030 - t1198;
t935 = -pkin(5) * t1071 + t1177 * t963;
t934 = pkin(5) * t1072 + t1175 * t963;
t933 = t1175 * t1075 + t1177 * t964;
t932 = -t1177 * t1075 + t1175 * t964;
t911 = -pkin(5) * t1030 + t1177 * t1011 - t1175 * t989;
t910 = -pkin(5) * t1029 + t1177 * t1010 - t1175 * t988;
t897 = -pkin(1) * t1086 + pkin(5) * t1033 + t1175 * t1011 + t1177 * t989;
t896 = -pkin(1) * t1084 + pkin(5) * t1032 + t1175 * t1010 + t1177 * t988;
t877 = -pkin(1) * t932 - t1217;
t874 = -t1197 - t1408;
t871 = -t1203 - t1366;
t869 = -pkin(5) * t932 - (pkin(2) * t1175 - pkin(6) * t1177) * t963;
t864 = t1174 * t873 - t1176 * t990;
t862 = pkin(5) * t933 - (-pkin(2) * t1177 - pkin(6) * t1175 - pkin(1)) * t963;
t859 = -t1182 - t1366;
t858 = -t1174 * t884 + t1176 * t919 - t1407;
t857 = -t1288 + t1408;
t856 = -t1174 * t878 + t1176 * t917 - t1364;
t855 = -t1193 - t1388;
t853 = t1174 * t861 - t1176 * t913;
t851 = t1176 * t863 + t1284 * t1338 - t1385;
t850 = t1175 * t872 + t1177 * t865;
t849 = t1175 * t865 - t1177 * t872;
t848 = -t1184 - t1418;
t847 = -pkin(2) * t864 - t1216;
t846 = -t1174 * t867 + t1176 * t870 - t1364;
t844 = -t1183 - t1388;
t843 = -t1185 - t1390;
t842 = -t1174 * t866 + t1176 * t868 + t1407;
t840 = -t1174 * t912 + t1176 * t852 - t1385;
t839 = -t1296 - t1401;
t838 = -t1175 * t874 + t1177 * t858 - t1417;
t837 = -pkin(6) * t864 + (-qJ(4) * t1176 + t1284) * t872;
t836 = -t1186 - t1390;
t835 = -t1175 * t871 + t1177 * t856 - t1387;
t834 = t1175 * t858 + t1177 * t874 - t1416;
t833 = t1175 * t860 + t1177 * t854;
t832 = t1175 * t854 - t1177 * t860;
t831 = -t1187 + t1418;
t830 = t1175 * t856 + t1177 * t871 + t1374;
t829 = -t1188 - t1401;
t828 = -t1175 * t855 + t1177 * t851 - t1400;
t827 = -t1175 * t859 + t1177 * t846 - t1387;
t826 = -t1175 * t857 + t1177 * t842 + t1417;
t825 = t1175 * t846 + t1177 * t859 + t1374;
t824 = -pkin(2) * t853 - t1298;
t823 = t1175 * t851 + t1177 * t855 + t1397;
t822 = t1175 * t842 + t1177 * t857 + t1416;
t821 = -t1175 * t844 + t1177 * t840 - t1400;
t820 = -pkin(1) * t849 - t1297;
t819 = t1175 * t840 + t1177 * t844 + t1397;
t818 = -pkin(6) * t853 - t1174 * t841 + t1176 * t845;
t817 = -pkin(5) * t849 - t1175 * t847 + t1177 * t837;
t816 = -pkin(1) * t864 + pkin(5) * t850 + t1175 * t837 + t1177 * t847;
t815 = -pkin(1) * t832 - t1189;
t814 = -pkin(5) * t832 - t1175 * t824 + t1177 * t818;
t813 = -pkin(1) * t853 + pkin(5) * t833 + t1175 * t818 + t1177 * t824;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1261, -t1255, -t1300, -qJ(1) * t1300, 0, 0, t1172 * t1135, 0, -t1172 * t1134, t1170 * qJDD(2), t1170 * t1227 + t1172 * t1208, t1172 * t1080 + t1170 * t1226, t1172 * t1018, -qJ(1) * (t1170 * t1223 + t1121) - (t1170 * pkin(1) - t1172 * pkin(5)) * t1018, t1172 * t1060 + t1170 * t1082, t1172 * t1015 + t1170 * t1066, t1172 * t1056 + t1170 * t1085, t1172 * t1059 - t1170 * t1081, t1172 * t1055 + t1170 * t1083, t1172 * t1097, t1172 * t910 - t1170 * t945 - qJ(1) * (t1170 * t1032 - t1172 * t1084), t1172 * t911 - t1170 * t944 - qJ(1) * (t1170 * t1033 - t1172 * t1086), -t1170 * t1229 + t1172 * t935, t1172 * t869 - t1170 * t877 - qJ(1) * (t1170 * t933 + t1172 * t963), t1317, -t1410, t1395, t1333, t1413, t1334, -t1170 * t843 + t1172 * t835 - t1369, -t1170 * t848 + t1172 * t838 - t1419, -t1170 * t839 + t1172 * t828 - t1394, t1172 * t817 - t1170 * t820 - qJ(1) * (t1170 * t850 - t1172 * t864), t1317, t1395, t1410, t1334, -t1413, t1333, -t1170 * t836 + t1172 * t827 - t1369, -t1170 * t829 + t1172 * t821 - t1394, -t1170 * t831 + t1172 * t826 + t1419, t1172 * t814 - t1170 * t815 - qJ(1) * (t1170 * t833 - t1172 * t853); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1255, -t1261, t1222, qJ(1) * t1222, 0, 0, t1170 * t1135, 0, -t1170 * t1134, -t1172 * qJDD(2), t1170 * t1208 - t1227 * t1172, t1170 * t1080 - t1172 * t1226, t1170 * t1018, qJ(1) * (t1172 * t1223 - t1263) - (-t1172 * pkin(1) - t1170 * pkin(5)) * t1018, t1170 * t1060 - t1172 * t1082, t1170 * t1015 - t1172 * t1066, t1170 * t1056 - t1172 * t1085, t1170 * t1059 + t1172 * t1081, t1170 * t1055 - t1172 * t1083, t1170 * t1097, t1170 * t910 + t1172 * t945 + qJ(1) * (t1172 * t1032 + t1170 * t1084), t1170 * t911 + t1172 * t944 + qJ(1) * (t1172 * t1033 + t1170 * t1086), t1170 * t935 + t1172 * t1229, t1170 * t869 + t1172 * t877 + qJ(1) * (-t1170 * t963 + t1172 * t933), t1319, -t1411, t1396, t1335, t1415, t1336, t1170 * t835 + t1172 * t843 + t1368, t1170 * t838 + t1172 * t848 + t1420, t1170 * t828 + t1172 * t839 + t1393, t1170 * t817 + t1172 * t820 + qJ(1) * (t1170 * t864 + t1172 * t850), t1319, t1396, t1411, t1336, -t1415, t1335, t1170 * t827 + t1172 * t836 + t1368, t1170 * t821 + t1172 * t829 + t1393, t1170 * t826 + t1172 * t831 - t1420, t1170 * t814 + t1172 * t815 + qJ(1) * (t1170 * t853 + t1172 * t833); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1138, t1139, 0, 0, 0, 0, t1134, 0, t1135, 0, -t1080, t1208, t1223, t1009, t1058, t1014, t1054, t1057, t1053, t1095, t896, t897, t934, t862, t1294, -t886, t1372, t1316, t903, t1314, t830, t834, t823, t816, t1294, t1372, t886, t1314, -t903, t1316, t825, t819, t822, t813; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1166, -t1138, 0, 0, 0, t1135, 0, -t1134, 0, t1208, t1080, t1018, pkin(5) * t1018, t1060, t1015, t1056, t1059, t1055, t1097, t910, t911, t935, t869, t1289, -t888, t1370, t1315, t909, t1313, t835, t838, t828, t817, t1289, t1370, t888, t1313, -t909, t1315, t827, t821, t826, t814; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1166, 0, -t1139, 0, 0, 0, 0, 0, 0, -qJDD(2), t1063, t1064, 0, pkin(1) * t1018, -t1082, -t1066, -t1085, t1081, -t1083, 0, t945, t944, t918, t877, -t1201, t940, -t1354, -t1292, -t951, -t1293, t843, t848, t839, t820, -t1201, -t1354, -t940, -t1293, t951, -t1292, t836, t829, t831, t815; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1138, t1139, 0, 0, 0, 0, t1134, 0, t1135, 0, -t1080, t1208, t1223, t1009, t1058, t1014, t1054, t1057, t1053, t1095, t896, t897, t934, t862, t1294, -t886, t1372, t1316, t903, t1314, t830, t834, t823, t816, t1294, t1372, t886, t1314, -t903, t1316, t825, t819, t822, t813; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1178, 0, 0, -t1138, t1101, 0, t1096, t1067, t1089, t1094, t1087, t1127, t1010, t1011, t963, pkin(6) * t963, t1209, -t942, t1351, t1290, t957, t1291, t856, t858, t851, t837, t1209, t1351, t942, t1291, -t957, t1290, t846, t840, t842, t818; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1178, 0, qJDD(2), 0, t1138, 0, t1102, 0, t1147, -t1137, -t1239, -t1147, -t1237, -qJDD(3), t988, t989, 0, pkin(2) * t963, -t1024, -t967, -t1341, t1020, -t998, -t1034, t871, t874, t855, t847, -t1024, -t1341, t967, -t1034, t998, t1020, t859, t844, t857, t824; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1101, -t1102, 0, 0, t1082, t1066, t1085, -t1081, t1083, 0, t1199, t1198, t1192, t1217, t1201, -t940, t1354, t1292, t951, t1293, t1185, t1184, t1296, t1297, t1201, t1354, t940, t1293, -t951, t1292, t1186, t1188, t1187, t1189; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1130, t1132, t1140, -t1154, t1145, t1154, 0, t1075, t1028, 0, t1025, -t969, t1340, t1196, t1004, t1194, t917, t919, t863, -qJ(4) * t872, t1025, t1340, t969, t1194, -t1004, t1196, t870, t852, t868, t845; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1153, t1129, t1143, t1131, t1141, -t1153, -t1075, 0, t1031, 0, -t1074, -t1302, -t1191, t1074, t1041, t1131, t878, t884, -t1365, -pkin(3) * t872, -t1074, -t1191, t1302, t1131, -t1041, t1074, t867, t912, t866, t841; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1147, t1137, t1239, t1147, t1237, qJDD(3), -t1028, -t1031, 0, 0, t1024, t967, t1341, -t1020, t998, t1034, t1203, t1197, t1193, t1216, t1024, t1341, -t967, t1034, -t998, -t1020, t1182, t1183, t1288, t1298; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1099, -t1042, t1305, -t1232, t1105, t1232, 0, t990, t915, 0, t1099, t1305, t1042, t1232, -t1105, -t1232, -qJ(5) * t1042, t876, t894, -qJ(5) * t913; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1109, t1190, -t1106, -t1098, -t1304, t1109, -t990, 0, t916, 0, -t1109, -t1106, -t1190, t1109, t1304, -t1098, t895, t875, pkin(4) * t1190, -pkin(4) * t913; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1074, t1302, t1191, -t1074, -t1041, -t1131, -t915, -t916, 0, 0, t1074, t1191, -t1302, -t1131, t1041, -t1074, -t1120 * t1065 - t1179 - 0.2e1 * t1274, t1212, t1181 + t1303, t1215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1099, t1305, t1042, t1232, -t1105, -t1232, 0, t885, -t913, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1074, t1191, -t1302, -t1131, t1041, -t1074, -t885, 0, t883, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1109, t1106, t1190, -t1109, -t1304, t1098, t913, -t883, 0, 0;];
m_new_reg = t1;