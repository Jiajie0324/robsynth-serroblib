% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRRPRP5
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,theta4]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 07:58
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRRPRP5_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP5_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP5_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRP5_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRP5_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP5_invdynB_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 07:56:05
% EndTime: 2019-05-07 07:57:10
% DurationCPUTime: 61.62s
% Computational Cost: add. (228140->818), mult. (480145->1180), div. (0->0), fcn. (351719->10), ass. (0->588)
t1155 = sin(qJ(1));
t1159 = cos(qJ(1));
t1154 = sin(qJ(2));
t1158 = cos(qJ(2));
t1149 = sin(pkin(10));
t1150 = cos(pkin(10));
t1153 = sin(qJ(3));
t1157 = cos(qJ(3));
t1234 = qJD(1) * t1154;
t1111 = qJD(2) * t1153 + t1157 * t1234;
t1233 = qJD(1) * t1158;
t1193 = qJD(2) * t1233;
t1205 = qJDD(1) * t1154;
t1115 = t1193 + t1205;
t1172 = t1157 * qJDD(2) - t1153 * t1115;
t1165 = qJD(3) * t1111 - t1172;
t1110 = -t1157 * qJD(2) + t1153 * t1234;
t1192 = t1110 * qJD(3) - t1153 * qJDD(2) - t1157 * t1115;
t1001 = -t1149 * t1165 - t1150 * t1192;
t1069 = t1110 * t1150 + t1111 * t1149;
t1070 = -t1110 * t1149 + t1111 * t1150;
t1152 = sin(qJ(5));
t1156 = cos(qJ(5));
t1012 = t1156 * t1069 + t1070 * t1152;
t1188 = -t1149 * t1192 + t1150 * t1165;
t1201 = -t1012 * qJD(5) + t1156 * t1001 - t1152 * t1188;
t1137 = -qJD(3) + t1233;
t1129 = -qJD(5) + t1137;
t989 = t1012 * t1129;
t1285 = t989 + t1201;
t1140 = qJD(2) * t1234;
t1203 = qJDD(1) * t1158;
t1116 = -t1140 + t1203;
t1107 = -qJDD(3) + t1116;
t1102 = -qJDD(5) + t1107;
t1014 = -t1069 * t1152 + t1070 * t1156;
t1231 = t1012 * t1014;
t1163 = t1102 - t1231;
t1247 = t1152 * t1163;
t1011 = t1014 ^ 2;
t1264 = t1129 ^ 2;
t939 = t1264 + t1011;
t852 = t1156 * t939 - t1247;
t1239 = t1156 * t1163;
t882 = t1152 * t939 + t1239;
t805 = t1149 * t882 - t1150 * t852;
t807 = t1149 * t852 + t1150 * t882;
t722 = t1153 * t805 - t1157 * t807;
t691 = -t1154 * t1285 + t1158 * t722;
t740 = t1153 * t807 + t1157 * t805;
t646 = t1155 * t691 + t1159 * t740;
t1402 = pkin(6) * t646;
t648 = -t1155 * t740 + t1159 * t691;
t1401 = pkin(6) * t648;
t689 = t1154 * t722 + t1158 * t1285;
t1400 = pkin(7) * t689;
t1399 = -pkin(1) * t689 - pkin(2) * t1285 - pkin(8) * t722;
t1398 = pkin(1) * t740 + pkin(7) * t691;
t1190 = t1152 * t1001 + t1156 * t1188;
t1166 = (-qJD(5) - t1129) * t1014 - t1190;
t1267 = t1012 ^ 2;
t986 = t1267 - t1264;
t891 = t1152 * t986 - t1239;
t895 = t1156 * t986 + t1247;
t812 = t1149 * t895 + t1150 * t891;
t815 = t1149 * t891 - t1150 * t895;
t751 = t1153 * t812 + t1157 * t815;
t709 = -t1154 * t1166 + t1158 * t751;
t748 = t1153 * t815 - t1157 * t812;
t1397 = t1155 * t709 - t1159 * t748;
t858 = (qJD(5) - t1129) * t1014 + t1190;
t785 = -t1152 * t858 + t1156 * t1285;
t1249 = t1152 * t1285;
t788 = t1156 * t858 + t1249;
t724 = t1149 * t788 - t1150 * t785;
t728 = t1149 * t785 + t1150 * t788;
t665 = t1153 * t724 - t1157 * t728;
t942 = t1011 - t1267;
t657 = t1154 * t942 + t1158 * t665;
t661 = t1153 * t728 + t1157 * t724;
t1396 = t1155 * t657 + t1159 * t661;
t1395 = t1155 * t748 + t1159 * t709;
t1394 = -t1155 * t661 + t1159 * t657;
t1392 = pkin(8) * t740;
t1385 = pkin(2) * t740 + pkin(3) * t805 - pkin(4) * t852;
t1383 = t1154 * t751 + t1158 * t1166;
t1382 = t1154 * t665 - t1158 * t942;
t1381 = qJ(4) * t805;
t1379 = pkin(3) * t1285 - qJ(4) * t807;
t1286 = t989 - t1201;
t1274 = -t1152 * t1286 + t1156 * t1166;
t1276 = t1152 * t1166 + t1156 * t1286;
t1295 = t1149 * t1274 + t1150 * t1276;
t1296 = -t1149 * t1276 + t1150 * t1274;
t1310 = t1153 * t1296 + t1157 * t1295;
t1309 = -t1153 * t1295 + t1157 * t1296;
t910 = -t1267 - t1011;
t1341 = t1154 * t910 + t1158 * t1309;
t1360 = t1155 * t1310 + t1159 * t1341;
t1378 = pkin(6) * t1360;
t1362 = t1155 * t1341 - t1159 * t1310;
t1377 = pkin(6) * t1362;
t1375 = pkin(9) * t852;
t1374 = pkin(9) * t882;
t1164 = -t1102 - t1231;
t1246 = t1152 * t1164;
t1279 = -t1264 - t1267;
t1297 = t1156 * t1279 - t1246;
t928 = t1156 * t1164;
t1298 = t1152 * t1279 + t928;
t1313 = t1149 * t1297 + t1150 * t1298;
t1314 = -t1149 * t1298 + t1150 * t1297;
t1338 = t1153 * t1314 + t1157 * t1313;
t1373 = pkin(1) * t1338;
t1345 = t1154 * t1309 - t1158 * t910;
t1372 = pkin(7) * t1345;
t1337 = -t1153 * t1313 + t1157 * t1314;
t1371 = pkin(8) * t1337;
t1370 = pkin(8) * t1338;
t1369 = t1154 * t1337;
t1368 = t1155 * t1338;
t1367 = t1158 * t1337;
t1366 = t1159 * t1338;
t1365 = -pkin(1) * t1345 + pkin(2) * t910 - pkin(8) * t1309;
t1364 = -pkin(2) * t1338 - pkin(3) * t1313 - pkin(4) * t1298;
t1363 = -pkin(1) * t1310 + pkin(7) * t1341;
t987 = -t1011 + t1264;
t1287 = t1156 * t987 + t1246;
t1288 = -t1152 * t987 + t928;
t1293 = -t1149 * t1287 + t1150 * t1288;
t1294 = t1149 * t1288 + t1150 * t1287;
t1311 = -t1153 * t1293 - t1157 * t1294;
t1312 = -t1153 * t1294 + t1157 * t1293;
t1342 = -t1154 * t1286 + t1158 * t1312;
t1361 = t1155 * t1342 + t1159 * t1311;
t1359 = -t1155 * t1311 + t1159 * t1342;
t1357 = pkin(8) * t1310;
t1356 = qJ(4) * t1313;
t1355 = qJ(4) * t1314;
t630 = -pkin(2) * t1310 - pkin(3) * t1295 - pkin(4) * t1276;
t1346 = t1154 * t1312 + t1158 * t1286;
t1169 = (t1012 * t1152 + t1014 * t1156) * t1129;
t1213 = t1129 * t1156;
t1198 = t1012 * t1213;
t1214 = t1129 * t1152;
t984 = t1014 * t1214;
t1177 = -t984 + t1198;
t1271 = -t1149 * t1169 + t1150 * t1177;
t1272 = t1149 * t1177 + t1150 * t1169;
t1289 = -t1153 * t1271 - t1157 * t1272;
t1290 = -t1153 * t1272 + t1157 * t1271;
t1316 = -t1102 * t1154 + t1158 * t1290;
t1344 = t1155 * t1316 + t1159 * t1289;
t903 = -qJD(5) * t1014 - t1190;
t1171 = -t1152 * t903 - t1198;
t1178 = -t1012 * t1214 + t1156 * t903;
t1269 = t1149 * t1171 + t1150 * t1178;
t1270 = -t1149 * t1178 + t1150 * t1171;
t1292 = -t1153 * t1270 - t1157 * t1269;
t1200 = t1154 * t1231;
t1291 = -t1153 * t1269 + t1157 * t1270;
t1317 = t1158 * t1291 - t1200;
t1343 = t1155 * t1317 + t1159 * t1292;
t1340 = -t1155 * t1289 + t1159 * t1316;
t1339 = -t1155 * t1292 + t1159 * t1317;
t1334 = pkin(9) * t1297;
t1333 = pkin(9) * t1298;
t1332 = qJ(4) * t1295;
t1331 = qJ(6) * t1285;
t1047 = -pkin(4) * t1137 - pkin(9) * t1070;
t1266 = t1069 ^ 2;
t1127 = g(1) * t1159 + g(2) * t1155;
t1160 = qJD(1) ^ 2;
t1100 = -pkin(1) * t1160 + qJDD(1) * pkin(7) - t1127;
t1261 = pkin(2) * t1158;
t1182 = -pkin(8) * t1154 - t1261;
t1113 = t1182 * qJD(1);
t1259 = t1158 * g(3);
t1268 = qJD(2) ^ 2;
t1043 = (qJD(1) * t1113 + t1100) * t1154 - qJDD(2) * pkin(2) - pkin(8) * t1268 + t1259;
t1085 = -pkin(3) * t1137 - qJ(4) * t1111;
t1265 = t1110 ^ 2;
t951 = t1165 * pkin(3) - t1265 * qJ(4) + t1111 * t1085 + qJDD(4) + t1043;
t856 = t1188 * pkin(4) - t1266 * pkin(9) + t1070 * t1047 + t951;
t1326 = -t903 * pkin(5) - t1331 + t856;
t1321 = -pkin(4) * t910 + pkin(9) * t1274;
t1319 = t1158 * t1102 + t1154 * t1290;
t1199 = t1158 * t1231;
t1318 = t1154 * t1291 + t1199;
t1315 = -pkin(3) * t910 + qJ(4) * t1296;
t1308 = -2 * qJD(6);
t1303 = pkin(9) * t1276;
t1092 = t1110 * t1137;
t1032 = t1092 + t1192;
t1225 = t1069 * t1070;
t1168 = -t1107 - t1225;
t1284 = t1149 * t1168;
t1283 = t1150 * t1168;
t1218 = t1110 * t1111;
t1167 = -t1107 - t1218;
t1282 = t1153 * t1167;
t1281 = t1157 * t1167;
t1055 = t1069 * t1137;
t969 = t1055 - t1001;
t1280 = t1055 + t1001;
t1033 = t1192 - t1092;
t1126 = t1155 * g(1) - t1159 * g(2);
t1099 = qJDD(1) * pkin(1) + t1160 * pkin(7) + t1126;
t1175 = -t1116 + t1140;
t1176 = t1115 + t1193;
t1027 = pkin(2) * t1175 - pkin(8) * t1176 - t1099;
t1087 = -g(3) * t1154 + t1158 * t1100;
t1044 = -pkin(2) * t1268 + qJDD(2) * pkin(8) + t1113 * t1233 + t1087;
t974 = -t1157 * t1027 + t1153 * t1044;
t916 = t1167 * pkin(3) + qJ(4) * t1032 - t974;
t975 = t1153 * t1027 + t1157 * t1044;
t919 = -pkin(3) * t1265 - qJ(4) * t1165 + t1137 * t1085 + t975;
t828 = 0.2e1 * qJD(4) * t1070 + t1149 * t919 - t1150 * t916;
t794 = t1168 * pkin(4) + pkin(9) * t969 - t828;
t829 = -0.2e1 * qJD(4) * t1069 + t1149 * t916 + t1150 * t919;
t800 = -pkin(4) * t1266 - pkin(9) * t1188 + t1137 * t1047 + t829;
t734 = t1152 * t794 + t1156 * t800;
t941 = pkin(5) * t1012 - qJ(6) * t1014;
t1174 = -t1102 * qJ(6) - t1012 * t941 + t1129 * t1308 + t734;
t850 = -t1014 * t1213 + t1152 * t1201;
t851 = t1156 * t1201 + t984;
t775 = t1149 * t851 + t1150 * t850;
t778 = -t1149 * t850 + t1150 * t851;
t719 = -t1153 * t775 + t1157 * t778;
t1180 = t1158 * t719 + t1200;
t716 = -t1153 * t778 - t1157 * t775;
t1275 = t1155 * t1180 + t1159 * t716;
t1028 = (qJD(3) + t1137) * t1111 - t1172;
t1273 = -t1155 * t716 + t1159 * t1180;
t1068 = t1070 ^ 2;
t1106 = t1111 ^ 2;
t1263 = t1137 ^ 2;
t1262 = pkin(2) * t1154;
t1260 = pkin(5) * t1156;
t733 = t1152 * t800 - t1156 * t794;
t1258 = qJ(6) * t1156;
t668 = t1152 * t734 - t1156 * t733;
t1257 = t1149 * t668;
t1256 = t1149 * t951;
t997 = t1107 - t1225;
t1255 = t1149 * t997;
t1254 = t1150 * t668;
t1253 = t1150 * t951;
t1252 = t1150 * t997;
t1251 = t1152 * t856;
t758 = t1149 * t829 - t1150 * t828;
t1244 = t1153 * t758;
t1241 = t1156 * t856;
t1238 = t1157 * t758;
t1236 = -t1264 - t910;
t1235 = qJD(1) * qJD(2);
t1230 = t1014 * t1129;
t1229 = t1043 * t1153;
t1228 = t1043 * t1157;
t1057 = t1107 - t1218;
t1227 = t1057 * t1153;
t1226 = t1057 * t1157;
t1223 = t1070 * t1137;
t1222 = t1099 * t1154;
t1221 = t1099 * t1158;
t1219 = t1107 * t1154;
t1136 = t1158 * t1160 * t1154;
t1124 = -t1136 + qJDD(2);
t1217 = t1124 * t1154;
t1216 = t1124 * t1158;
t1125 = qJDD(2) + t1136;
t1215 = t1125 * t1154;
t1212 = t1137 * t1149;
t1211 = t1137 * t1150;
t1210 = t1137 * t1153;
t1209 = t1137 * t1157;
t1146 = t1154 ^ 2;
t1208 = t1146 * t1160;
t1147 = t1158 ^ 2;
t1206 = t1146 + t1147;
t1204 = qJDD(1) * t1155;
t1202 = qJDD(1) * t1159;
t1197 = t1154 * t1225;
t1196 = t1158 * t1225;
t1195 = t1154 * t1218;
t1194 = t1158 * t1218;
t1191 = -qJ(6) * t1152 - pkin(4);
t759 = t1149 * t828 + t1150 * t829;
t669 = t1152 * t733 + t1156 * t734;
t1086 = t1154 * t1100 + t1259;
t1036 = t1086 * t1154 + t1158 * t1087;
t1078 = -t1126 * t1155 - t1159 * t1127;
t1186 = t1014 * t941 + qJDD(6) + t733;
t1185 = t1155 * t1136;
t1184 = t1159 * t1136;
t1121 = -t1155 * t1160 + t1202;
t1181 = -pkin(6) * t1121 - g(3) * t1155;
t1179 = t1154 * t719 - t1199;
t908 = t1153 * t975 - t1157 * t974;
t909 = t1153 * t974 + t1157 * t975;
t1035 = t1086 * t1158 - t1087 * t1154;
t1077 = t1126 * t1159 - t1127 * t1155;
t1170 = t1102 * pkin(5) + t1186;
t965 = t1188 + t1223;
t1161 = 0.2e1 * qJD(6) * t1014 - t1326;
t1144 = t1147 * t1160;
t1134 = -t1144 - t1268;
t1133 = t1144 - t1268;
t1132 = -t1208 - t1268;
t1131 = -t1208 + t1268;
t1123 = t1144 - t1208;
t1122 = t1144 + t1208;
t1120 = t1159 * t1160 + t1204;
t1119 = t1206 * qJDD(1);
t1117 = -0.2e1 * t1140 + t1203;
t1114 = 0.2e1 * t1193 + t1205;
t1109 = t1158 * t1125;
t1108 = t1206 * t1235;
t1098 = t1158 * t1107;
t1096 = -pkin(6) * t1120 + g(3) * t1159;
t1091 = -t1106 + t1263;
t1090 = -t1263 + t1265;
t1089 = t1115 * t1158 - t1146 * t1235;
t1088 = -t1116 * t1154 - t1147 * t1235;
t1084 = -t1132 * t1154 - t1216;
t1083 = -t1131 * t1154 + t1109;
t1082 = t1134 * t1158 - t1215;
t1081 = t1133 * t1158 - t1217;
t1080 = t1132 * t1158 - t1217;
t1079 = t1134 * t1154 + t1109;
t1075 = -t1106 + t1265;
t1074 = t1119 * t1159 - t1122 * t1155;
t1073 = t1119 * t1155 + t1122 * t1159;
t1072 = -t1106 - t1263;
t1071 = -t1114 * t1154 + t1117 * t1158;
t1067 = -t1263 - t1265;
t1056 = t1106 + t1265;
t1053 = -t1068 + t1263;
t1052 = -t1263 + t1266;
t1051 = t1084 * t1159 + t1114 * t1155;
t1050 = t1082 * t1159 - t1117 * t1155;
t1049 = t1084 * t1155 - t1114 * t1159;
t1048 = t1082 * t1155 + t1117 * t1159;
t1046 = -pkin(7) * t1080 - t1221;
t1045 = -pkin(7) * t1079 - t1222;
t1042 = (t1110 * t1157 - t1111 * t1153) * t1137;
t1041 = (-t1110 * t1153 - t1111 * t1157) * t1137;
t1040 = -t1068 - t1263;
t1038 = -pkin(1) * t1080 + t1087;
t1037 = -pkin(1) * t1079 + t1086;
t1029 = (-qJD(3) + t1137) * t1111 + t1172;
t1024 = t1111 * t1210 - t1157 * t1192;
t1023 = t1111 * t1209 + t1153 * t1192;
t1022 = -t1110 * t1209 + t1153 * t1165;
t1021 = t1110 * t1210 + t1157 * t1165;
t1020 = t1042 * t1158 - t1219;
t1019 = t1090 * t1157 + t1227;
t1018 = -t1091 * t1153 + t1281;
t1017 = -t1090 * t1153 + t1226;
t1016 = -t1091 * t1157 - t1282;
t1015 = -t1068 + t1266;
t1008 = -t1072 * t1153 + t1226;
t1007 = t1072 * t1157 + t1227;
t1006 = -t1263 - t1266;
t1004 = t1036 * t1159 - t1099 * t1155;
t1003 = t1036 * t1155 + t1099 * t1159;
t996 = t1067 * t1157 - t1282;
t995 = t1067 * t1153 + t1281;
t982 = (t1069 * t1150 - t1070 * t1149) * t1137;
t981 = (t1069 * t1149 + t1070 * t1150) * t1137;
t978 = t1024 * t1158 + t1195;
t977 = t1022 * t1158 - t1195;
t976 = -t1068 - t1266;
t973 = -t1028 * t1157 - t1032 * t1153;
t972 = t1029 * t1157 + t1033 * t1153;
t971 = -t1028 * t1153 + t1032 * t1157;
t970 = -t1029 * t1153 + t1033 * t1157;
t964 = t1188 - t1223;
t963 = -pkin(8) * t1007 + t1228;
t962 = t1001 * t1150 + t1070 * t1212;
t961 = t1001 * t1149 - t1070 * t1211;
t960 = -t1069 * t1211 + t1149 * t1188;
t959 = -t1069 * t1212 - t1150 * t1188;
t958 = t1019 * t1158 - t1028 * t1154;
t957 = t1018 * t1158 - t1032 * t1154;
t956 = t1052 * t1150 + t1255;
t955 = -t1053 * t1149 + t1283;
t954 = t1052 * t1149 - t1252;
t953 = t1053 * t1150 + t1284;
t952 = -pkin(8) * t995 + t1229;
t950 = t1008 * t1158 - t1033 * t1154;
t949 = -t1040 * t1149 + t1252;
t948 = t1008 * t1154 + t1033 * t1158;
t947 = t1040 * t1150 + t1255;
t946 = -t1029 * t1154 + t1158 * t996;
t945 = t1029 * t1158 + t1154 * t996;
t940 = -t1075 * t1154 + t1158 * t972;
t932 = t1006 * t1150 - t1284;
t931 = t1006 * t1149 + t1283;
t930 = -t1056 * t1154 + t1158 * t973;
t929 = t1056 * t1158 + t1154 * t973;
t923 = -t1153 * t981 + t1157 * t982;
t922 = -t1153 * t982 - t1157 * t981;
t921 = -pkin(2) * t1007 + t975;
t920 = -pkin(2) * t995 + t974;
t917 = t1158 * t923 - t1219;
t913 = t1007 * t1155 + t1159 * t950;
t912 = -t1007 * t1159 + t1155 * t950;
t905 = t1155 * t995 + t1159 * t946;
t904 = t1155 * t946 - t1159 * t995;
t899 = -t1149 * t969 - t1150 * t965;
t898 = -t1149 * t1280 - t1150 * t964;
t897 = -t1149 * t965 + t1150 * t969;
t896 = -t1149 * t964 + t1150 * t1280;
t887 = -t1153 * t961 + t1157 * t962;
t886 = -t1153 * t959 + t1157 * t960;
t885 = -t1153 * t962 - t1157 * t961;
t884 = -t1153 * t960 - t1157 * t959;
t879 = -t1153 * t954 + t1157 * t956;
t878 = -t1153 * t953 + t1157 * t955;
t877 = -t1153 * t956 - t1157 * t954;
t876 = -t1153 * t955 - t1157 * t953;
t875 = t1043 * t1154 + t1158 * t909;
t874 = -t1043 * t1158 + t1154 * t909;
t873 = -qJ(4) * t947 + t1253;
t872 = -t1153 * t947 + t1157 * t949;
t871 = t1153 * t949 + t1157 * t947;
t870 = t1155 * t971 + t1159 * t930;
t869 = t1155 * t930 - t1159 * t971;
t868 = -qJ(4) * t931 + t1256;
t867 = -pkin(1) * t948 - pkin(2) * t1033 - pkin(8) * t1008 - t1229;
t859 = -t903 - t1230;
t845 = -pkin(1) * t945 - pkin(2) * t1029 - pkin(8) * t996 + t1228;
t844 = t1158 * t887 + t1197;
t843 = t1158 * t886 - t1197;
t842 = -t1153 * t931 + t1157 * t932;
t841 = t1153 * t932 + t1157 * t931;
t840 = -pkin(8) * t971 - t908;
t835 = -t1154 * t965 + t1158 * t879;
t834 = -t1154 * t969 + t1158 * t878;
t833 = -pkin(3) * t1280 + qJ(4) * t949 + t1256;
t832 = t1154 * t1280 + t1158 * t872;
t831 = t1154 * t872 - t1158 * t1280;
t830 = -pkin(3) * t964 + qJ(4) * t932 - t1253;
t826 = -pkin(7) * t948 - t1154 * t921 + t1158 * t963;
t825 = t1154 * t964 + t1158 * t842;
t824 = t1154 * t842 - t1158 * t964;
t823 = -pkin(7) * t945 - t1154 * t920 + t1158 * t952;
t822 = -t1153 * t897 + t1157 * t899;
t821 = -t1153 * t896 + t1157 * t898;
t820 = t1153 * t899 + t1157 * t897;
t819 = -t1153 * t898 - t1157 * t896;
t818 = t1155 * t908 + t1159 * t875;
t817 = t1155 * t875 - t1159 * t908;
t804 = -pkin(1) * t929 - pkin(2) * t1056 - pkin(8) * t973 - t909;
t803 = -pkin(1) * t874 + pkin(2) * t1043 - pkin(8) * t909;
t802 = -t1015 * t1154 + t1158 * t821;
t801 = t1241 + t1375;
t799 = t1154 * t976 + t1158 * t822;
t798 = t1154 * t822 - t1158 * t976;
t795 = -pkin(7) * t929 + t1158 * t840 + t1262 * t971;
t783 = t1251 - t1333;
t772 = t1155 * t871 + t1159 * t832;
t771 = t1155 * t832 - t1159 * t871;
t764 = -pkin(7) * t874 + (-pkin(8) * t1158 + t1262) * t908;
t763 = -pkin(2) * t820 - pkin(3) * t897;
t762 = t1155 * t841 + t1159 * t825;
t761 = t1155 * t825 - t1159 * t841;
t760 = -pkin(2) * t871 - pkin(3) * t947 + t829;
t757 = -pkin(4) * t1285 + t1251 + t1374;
t756 = -pkin(2) * t841 - pkin(3) * t931 + t828;
t755 = -pkin(8) * t871 - t1153 * t833 + t1157 * t873;
t754 = -pkin(4) * t858 - t1241 + t1334;
t753 = -pkin(3) * t951 + qJ(4) * t759;
t744 = (-pkin(5) * t1129 + t1308) * t1014 + t1326;
t739 = -pkin(8) * t841 - t1153 * t830 + t1157 * t868;
t738 = t1155 * t820 + t1159 * t799;
t737 = t1155 * t799 - t1159 * t820;
t736 = -qJ(4) * t897 - t758;
t735 = -pkin(3) * t976 + qJ(4) * t899 + t759;
t706 = (-t859 + t1230) * pkin(5) + t1161;
t705 = pkin(5) * t1230 + t1161 + t1331;
t704 = t1154 * t859 + t1367;
t702 = -t1158 * t859 + t1369;
t696 = -pkin(1) * t831 + pkin(2) * t1280 - pkin(8) * t872 - t1153 * t873 - t1157 * t833;
t695 = qJ(6) * t1264 - t1170;
t694 = -pkin(5) * t1264 + t1174;
t693 = -pkin(1) * t824 + pkin(2) * t964 - pkin(8) * t842 - t1153 * t868 - t1157 * t830;
t692 = t1154 * t858 + t1367;
t690 = -t1158 * t858 + t1369;
t688 = qJ(6) * t1236 + t1170;
t687 = pkin(5) * t1236 + t1174;
t686 = t1157 * t759 - t1244;
t685 = t1153 * t759 + t1238;
t684 = t1154 * t951 + t1158 * t686;
t683 = t1154 * t686 - t1158 * t951;
t682 = -t1152 * t706 - t1258 * t859 - t1333;
t681 = -pkin(5) * t1249 + t1156 * t705 - t1375;
t680 = -t1149 * t757 + t1150 * t801 - t1381;
t679 = -pkin(7) * t831 - t1154 * t760 + t1158 * t755;
t678 = t1156 * t706 + t1191 * t859 + t1334;
t677 = -t1149 * t754 + t1150 * t783 - t1356;
t676 = -t1374 + t1152 * t705 - (-pkin(4) - t1260) * t1285;
t675 = t1149 * t801 + t1150 * t757 - t1379;
t674 = t1159 * t704 + t1368;
t672 = t1155 * t704 - t1366;
t670 = -pkin(7) * t824 - t1154 * t756 + t1158 * t739;
t659 = -pkin(3) * t858 + t1149 * t783 + t1150 * t754 + t1355;
t658 = -pkin(2) * t685 - pkin(3) * t758;
t651 = -pkin(4) * t856 + pkin(9) * t669;
t650 = -pkin(8) * t820 - t1153 * t735 + t1157 * t736;
t649 = t1159 * t692 + t1368;
t647 = t1155 * t692 - t1366;
t645 = -t1152 * t695 + t1156 * t694;
t644 = t1152 * t694 + t1156 * t695;
t643 = -t1385 + t734;
t642 = -t668 - t1303;
t641 = t1321 + t669;
t640 = t1364 + t733;
t639 = -pkin(1) * t798 + pkin(2) * t976 - pkin(8) * t822 - t1153 * t736 - t1157 * t735;
t638 = (-t1264 - t1279) * qJ(6) + (t1102 - t1164) * pkin(5) + t1186 + t1364;
t637 = -pkin(8) * t685 - qJ(4) * t1238 - t1153 * t753;
t636 = t1155 * t685 + t1159 * t684;
t635 = t1155 * t684 - t1159 * t685;
t634 = -t1152 * t687 + t1156 * t688 - t1303;
t633 = qJ(6) * t1163 + (t1264 - t939) * pkin(5) - t1174 + t1385;
t632 = -pkin(7) * t798 - t1154 * t763 + t1158 * t650;
t631 = t1152 * t688 + t1156 * t687 + t1321;
t629 = -t1149 * t678 + t1150 * t682 - t1356;
t628 = t1150 * t669 - t1257;
t627 = t1149 * t669 + t1254;
t626 = -t1149 * t676 + t1150 * t681 + t1381;
t625 = -pkin(3) * t859 + t1149 * t682 + t1150 * t678 + t1355;
t624 = -pkin(9) * t644 + (pkin(5) * t1152 - t1258) * t744;
t623 = -pkin(5) * t1286 - qJ(6) * t1166 + t630;
t622 = t1149 * t681 + t1150 * t676 + t1379;
t617 = -t1153 * t675 + t1157 * t680 - t1392;
t616 = -pkin(1) * t683 + pkin(2) * t951 - pkin(8) * t686 + qJ(4) * t1244 - t1157 * t753;
t615 = -t1149 * t644 + t1150 * t645;
t614 = t1149 * t645 + t1150 * t644;
t613 = pkin(9) * t645 + (t1191 - t1260) * t744;
t612 = -t1153 * t659 + t1157 * t677 - t1370;
t611 = -t1153 * t680 - t1157 * t675 - t1399;
t610 = -t1149 * t641 + t1150 * t642 - t1332;
t609 = t1149 * t642 + t1150 * t641 + t1315;
t608 = -pkin(1) * t690 + pkin(2) * t858 - t1153 * t677 - t1157 * t659 - t1371;
t607 = -pkin(7) * t683 - t1154 * t658 + t1158 * t637;
t606 = -t1149 * t631 + t1150 * t634 - t1332;
t605 = -t1154 * t643 + t1158 * t617 + t1400;
t604 = t1149 * t634 + t1150 * t631 + t1315;
t603 = -t1153 * t627 + t1157 * t628;
t602 = t1153 * t628 + t1157 * t627;
t601 = -pkin(9) * t1254 - qJ(4) * t627 - t1149 * t651;
t600 = t1154 * t856 + t1158 * t603;
t599 = t1154 * t603 - t1158 * t856;
t598 = -pkin(3) * t856 - pkin(9) * t1257 + qJ(4) * t628 + t1150 * t651;
t597 = -t1153 * t625 + t1157 * t629 - t1370;
t596 = -pkin(7) * t690 - t1154 * t640 + t1158 * t612;
t595 = -t1153 * t622 + t1157 * t626 + t1392;
t594 = -t1153 * t614 + t1157 * t615;
t593 = t1153 * t615 + t1157 * t614;
t592 = -pkin(1) * t702 + pkin(2) * t859 - t1153 * t629 - t1157 * t625 - t1371;
t591 = t1154 * t744 + t1158 * t594;
t590 = t1154 * t594 - t1158 * t744;
t589 = -t1153 * t626 - t1157 * t622 + t1399;
t588 = -pkin(7) * t702 - t1154 * t638 + t1158 * t597;
t587 = -qJ(4) * t614 - t1149 * t613 + t1150 * t624;
t586 = -t1154 * t633 + t1158 * t595 - t1400;
t585 = -pkin(2) * t602 - pkin(3) * t627 - pkin(4) * t668;
t584 = -pkin(3) * t744 + qJ(4) * t615 + t1149 * t624 + t1150 * t613;
t583 = -t1153 * t609 + t1157 * t610 - t1357;
t582 = t1155 * t602 + t1159 * t600;
t581 = t1155 * t600 - t1159 * t602;
t580 = -t1153 * t610 - t1157 * t609 + t1365;
t579 = -t1153 * t604 + t1157 * t606 - t1357;
t578 = -pkin(2) * t593 - pkin(3) * t614 - pkin(4) * t644 - pkin(5) * t695 - qJ(6) * t694;
t577 = t1155 * t593 + t1159 * t591;
t576 = t1155 * t591 - t1159 * t593;
t575 = -t1153 * t606 - t1157 * t604 + t1365;
t574 = -t1154 * t630 + t1158 * t583 - t1372;
t573 = -t1154 * t623 + t1158 * t579 - t1372;
t572 = -pkin(8) * t602 - t1153 * t598 + t1157 * t601;
t571 = -pkin(1) * t599 + pkin(2) * t856 - pkin(8) * t603 - t1153 * t601 - t1157 * t598;
t570 = -pkin(8) * t593 - t1153 * t584 + t1157 * t587;
t569 = -pkin(7) * t599 - t1154 * t585 + t1158 * t572;
t568 = -pkin(1) * t590 + pkin(2) * t744 - pkin(8) * t594 - t1153 * t587 - t1157 * t584;
t567 = -pkin(7) * t590 - t1154 * t578 + t1158 * t570;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1120, -t1121, 0, t1078, 0, 0, 0, 0, 0, 0, t1050, t1051, t1074, t1004, 0, 0, 0, 0, 0, 0, t905, t913, t870, t818, 0, 0, 0, 0, 0, 0, t762, t772, t738, t636, 0, 0, 0, 0, 0, 0, t649, -t648, t1360, t582, 0, 0, 0, 0, 0, 0, t674, t1360, t648, t577; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1121, -t1120, 0, t1077, 0, 0, 0, 0, 0, 0, t1048, t1049, t1073, t1003, 0, 0, 0, 0, 0, 0, t904, t912, t869, t817, 0, 0, 0, 0, 0, 0, t761, t771, t737, t635, 0, 0, 0, 0, 0, 0, t647, -t646, t1362, t581, 0, 0, 0, 0, 0, 0, t672, t1362, t646, t576; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1079, t1080, 0, -t1035, 0, 0, 0, 0, 0, 0, t945, t948, t929, t874, 0, 0, 0, 0, 0, 0, t824, t831, t798, t683, 0, 0, 0, 0, 0, 0, t690, -t689, t1345, t599, 0, 0, 0, 0, 0, 0, t702, t1345, t689, t590; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1121, 0, -t1120, 0, t1181, -t1096, -t1077, -pkin(6) * t1077, t1089 * t1159 - t1185, t1071 * t1159 - t1123 * t1155, t1083 * t1159 + t1154 * t1204, t1088 * t1159 + t1185, t1081 * t1159 + t1155 * t1203, qJDD(2) * t1155 + t1108 * t1159, -pkin(6) * t1048 - t1037 * t1155 + t1045 * t1159, -pkin(6) * t1049 - t1038 * t1155 + t1046 * t1159, -pkin(6) * t1073 + t1035 * t1159, -pkin(6) * t1003 - (pkin(1) * t1155 - pkin(7) * t1159) * t1035, -t1023 * t1155 + t1159 * t978, -t1155 * t970 + t1159 * t940, -t1016 * t1155 + t1159 * t957, -t1021 * t1155 + t1159 * t977, -t1017 * t1155 + t1159 * t958, t1020 * t1159 - t1041 * t1155, -pkin(6) * t904 - t1155 * t845 + t1159 * t823, -pkin(6) * t912 - t1155 * t867 + t1159 * t826, -pkin(6) * t869 - t1155 * t804 + t1159 * t795, -pkin(6) * t817 - t1155 * t803 + t1159 * t764, -t1155 * t885 + t1159 * t844, -t1155 * t819 + t1159 * t802, -t1155 * t876 + t1159 * t834, -t1155 * t884 + t1159 * t843, -t1155 * t877 + t1159 * t835, -t1155 * t922 + t1159 * t917, -pkin(6) * t761 - t1155 * t693 + t1159 * t670, -pkin(6) * t771 - t1155 * t696 + t1159 * t679, -pkin(6) * t737 - t1155 * t639 + t1159 * t632, -pkin(6) * t635 - t1155 * t616 + t1159 * t607, t1273, t1394, t1359, t1339, -t1395, t1340, -pkin(6) * t647 - t1155 * t608 + t1159 * t596, -t1155 * t611 + t1159 * t605 + t1402, -t1155 * t580 + t1159 * t574 - t1377, -pkin(6) * t581 - t1155 * t571 + t1159 * t569, t1273, t1359, -t1394, t1340, t1395, t1339, -pkin(6) * t672 - t1155 * t592 + t1159 * t588, -t1155 * t575 + t1159 * t573 - t1377, -t1155 * t589 + t1159 * t586 - t1402, -pkin(6) * t576 - t1155 * t568 + t1159 * t567; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1120, 0, t1121, 0, t1096, t1181, t1078, pkin(6) * t1078, t1089 * t1155 + t1184, t1071 * t1155 + t1123 * t1159, t1083 * t1155 - t1154 * t1202, t1088 * t1155 - t1184, t1081 * t1155 - t1158 * t1202, -qJDD(2) * t1159 + t1108 * t1155, pkin(6) * t1050 + t1037 * t1159 + t1045 * t1155, pkin(6) * t1051 + t1038 * t1159 + t1046 * t1155, pkin(6) * t1074 + t1035 * t1155, pkin(6) * t1004 - (-pkin(1) * t1159 - pkin(7) * t1155) * t1035, t1023 * t1159 + t1155 * t978, t1155 * t940 + t1159 * t970, t1016 * t1159 + t1155 * t957, t1021 * t1159 + t1155 * t977, t1017 * t1159 + t1155 * t958, t1020 * t1155 + t1041 * t1159, pkin(6) * t905 + t1155 * t823 + t1159 * t845, pkin(6) * t913 + t1155 * t826 + t1159 * t867, pkin(6) * t870 + t1155 * t795 + t1159 * t804, pkin(6) * t818 + t1155 * t764 + t1159 * t803, t1155 * t844 + t1159 * t885, t1155 * t802 + t1159 * t819, t1155 * t834 + t1159 * t876, t1155 * t843 + t1159 * t884, t1155 * t835 + t1159 * t877, t1155 * t917 + t1159 * t922, pkin(6) * t762 + t1155 * t670 + t1159 * t693, pkin(6) * t772 + t1155 * t679 + t1159 * t696, pkin(6) * t738 + t1155 * t632 + t1159 * t639, pkin(6) * t636 + t1155 * t607 + t1159 * t616, t1275, t1396, t1361, t1343, -t1397, t1344, pkin(6) * t649 + t1155 * t596 + t1159 * t608, t1155 * t605 + t1159 * t611 - t1401, t1155 * t574 + t1159 * t580 + t1378, pkin(6) * t582 + t1155 * t569 + t1159 * t571, t1275, t1361, -t1396, t1344, t1397, t1343, pkin(6) * t674 + t1155 * t588 + t1159 * t592, t1155 * t573 + t1159 * t575 + t1378, t1155 * t586 + t1159 * t589 + t1401, pkin(6) * t577 + t1155 * t567 + t1159 * t568; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1126, t1127, 0, 0, t1176 * t1154, t1114 * t1158 + t1117 * t1154, t1131 * t1158 + t1215, -t1175 * t1158, t1133 * t1154 + t1216, 0, pkin(1) * t1117 + pkin(7) * t1082 + t1221, -pkin(1) * t1114 + pkin(7) * t1084 - t1222, pkin(1) * t1122 + pkin(7) * t1119 + t1036, pkin(1) * t1099 + pkin(7) * t1036, t1024 * t1154 - t1194, t1075 * t1158 + t1154 * t972, t1018 * t1154 + t1032 * t1158, t1022 * t1154 + t1194, t1019 * t1154 + t1028 * t1158, t1042 * t1154 + t1098, -pkin(1) * t995 + pkin(7) * t946 + t1154 * t952 + t1158 * t920, -pkin(1) * t1007 + pkin(7) * t950 + t1154 * t963 + t1158 * t921, pkin(7) * t930 + t1154 * t840 + (-pkin(1) - t1261) * t971, pkin(7) * t875 + (-pkin(1) + t1182) * t908, t1154 * t887 - t1196, t1015 * t1158 + t1154 * t821, t1154 * t878 + t1158 * t969, t1154 * t886 + t1196, t1154 * t879 + t1158 * t965, t1154 * t923 + t1098, -pkin(1) * t841 + pkin(7) * t825 + t1154 * t739 + t1158 * t756, -pkin(1) * t871 + pkin(7) * t832 + t1154 * t755 + t1158 * t760, -pkin(1) * t820 + pkin(7) * t799 + t1154 * t650 + t1158 * t763, -pkin(1) * t685 + pkin(7) * t684 + t1154 * t637 + t1158 * t658, t1179, t1382, t1346, t1318, -t1383, t1319, pkin(7) * t692 + t1154 * t612 + t1158 * t640 - t1373, t1154 * t617 + t1158 * t643 - t1398, t1154 * t583 + t1158 * t630 + t1363, -pkin(1) * t602 + pkin(7) * t600 + t1154 * t572 + t1158 * t585, t1179, t1346, -t1382, t1319, t1383, t1318, pkin(7) * t704 + t1154 * t597 + t1158 * t638 - t1373, t1154 * t579 + t1158 * t623 + t1363, t1154 * t595 + t1158 * t633 + t1398, -pkin(1) * t593 + pkin(7) * t591 + t1154 * t570 + t1158 * t578;];
tauB_reg  = t1;
