% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRRRPR8
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d4,d6,theta1]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 09:15
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRRRPR8_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR8_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR8_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRPR8_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRPR8_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRPR8_invdynB_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 09:11:12
% EndTime: 2019-05-05 09:12:58
% DurationCPUTime: 103.00s
% Computational Cost: add. (285614->1031), mult. (598639->1666), div. (0->0), fcn. (479186->14), ass. (0->767)
t1080 = sin(pkin(12));
t1083 = cos(pkin(12));
t1082 = sin(pkin(6));
t1085 = cos(pkin(6));
t1089 = sin(qJ(2));
t1093 = cos(qJ(2));
t1081 = sin(pkin(7));
t1084 = cos(pkin(7));
t1088 = sin(qJ(3));
t1092 = cos(qJ(3));
t1087 = sin(qJ(4));
t1091 = cos(qJ(4));
t1277 = qJD(2) * t1084;
t1236 = qJD(3) + t1277;
t1260 = t1081 * t1088;
t1248 = qJD(2) * t1260;
t1032 = t1087 * t1248 - t1091 * t1236;
t1259 = t1081 * t1092;
t1247 = qJD(2) * t1259;
t1067 = -qJD(4) + t1247;
t1270 = t1032 * t1067;
t1252 = t1088 * qJDD(2);
t1276 = qJD(2) * t1092;
t1042 = (qJD(3) * t1276 + t1252) * t1081;
t1073 = qJDD(2) * t1084 + qJDD(3);
t968 = -t1032 * qJD(4) + t1091 * t1042 + t1087 * t1073;
t1333 = t968 + t1270;
t1254 = qJDD(2) * t1081;
t1043 = -qJD(3) * t1248 + t1092 * t1254;
t1038 = -qJDD(4) + t1043;
t1034 = t1087 * t1236 + t1091 * t1248;
t1271 = t1032 * t1034;
t1102 = t1038 - t1271;
t1322 = t1091 * t1102;
t1063 = t1067 ^ 2;
t1310 = t1034 ^ 2;
t981 = t1310 + t1063;
t884 = t1087 * t981 + t1322;
t1205 = t1088 * t884 - t1092 * t1333;
t1324 = t1087 * t1102;
t883 = t1091 * t981 - t1324;
t761 = t1081 * t883 + t1084 * t1205;
t813 = t1088 * t1333 + t1092 * t884;
t1180 = t1089 * t813 + t1093 * t761;
t759 = t1081 * t1205 - t1084 * t883;
t636 = -t1082 * t759 + t1085 * t1180;
t683 = t1089 * t761 - t1093 * t813;
t589 = -t1080 * t683 + t1083 * t636;
t1437 = qJ(1) * t589;
t592 = t1080 * t636 + t1083 * t683;
t1436 = qJ(1) * t592;
t634 = t1082 * t1180 + t1085 * t759;
t1435 = pkin(8) * (t1082 * t634 + t1085 * t636);
t1434 = pkin(1) * t634;
t1433 = pkin(1) * t636;
t1334 = t968 - t1270;
t1001 = -t1310 + t1063;
t1101 = t1038 + t1271;
t1323 = t1091 * t1101;
t892 = t1001 * t1087 + t1323;
t1203 = t1088 * t892 + t1092 * t1334;
t1325 = t1087 * t1101;
t889 = t1001 * t1091 - t1325;
t767 = t1081 * t889 + t1084 * t1203;
t819 = -t1088 * t1334 + t1092 * t892;
t1178 = t1089 * t819 + t1093 * t767;
t763 = t1081 * t1203 - t1084 * t889;
t645 = -t1082 * t763 + t1085 * t1178;
t689 = t1089 * t767 - t1093 * t819;
t1432 = t1080 * t645 + t1083 * t689;
t1431 = -t1080 * t689 + t1083 * t645;
t1429 = pkin(8) * t683;
t1424 = t1082 * t1178 + t1085 * t763;
t1423 = pkin(9) * (t1081 * t759 + t1084 * t761);
t1422 = pkin(2) * t759;
t1421 = pkin(2) * t761;
t1415 = pkin(9) * t813;
t1311 = t1032 ^ 2;
t973 = -t1063 - t1311;
t873 = t1087 * t973 - t1323;
t1410 = pkin(3) * t873;
t1409 = pkin(3) * t883;
t1408 = pkin(10) * t873;
t875 = t1091 * t973 + t1325;
t1407 = pkin(10) * t875;
t1406 = pkin(10) * t883;
t1405 = pkin(10) * t884;
t1404 = t1081 * t873;
t1000 = t1311 - t1063;
t890 = t1000 * t1087 - t1322;
t1401 = t1081 * t890;
t1400 = t1084 * t873;
t1397 = t1084 * t890;
t1396 = t1088 * t875;
t894 = t1000 * t1091 + t1324;
t1395 = t1088 * t894;
t1394 = t1092 * t875;
t1393 = t1092 * t894;
t1263 = t1067 * t1091;
t1235 = -t1087 * t1042 + t1091 * t1073;
t967 = qJD(4) * t1034 - t1235;
t1142 = -t1032 * t1263 + t1087 * t967;
t1246 = t1088 * t1271;
t1316 = t1092 * t1142 - t1246;
t1264 = t1067 * t1087;
t1228 = -t1032 * t1264 - t1091 * t967;
t1245 = t1092 * t1271;
t1319 = t1088 * t1142 + t1245;
t1339 = -t1081 * t1228 + t1084 * t1319;
t1361 = -t1089 * t1339 + t1093 * t1316;
t1341 = t1081 * t1319 + t1084 * t1228;
t1359 = t1089 * t1316 + t1093 * t1339;
t1379 = -t1082 * t1341 + t1085 * t1359;
t1392 = -t1080 * t1379 + t1083 * t1361;
t1227 = t1034 * t1264 + t1091 * t968;
t1315 = t1092 * t1227 + t1246;
t1226 = -t1034 * t1263 + t1087 * t968;
t1318 = t1088 * t1227 - t1245;
t1340 = -t1081 * t1226 + t1084 * t1318;
t1360 = -t1089 * t1340 + t1093 * t1315;
t1342 = t1081 * t1318 + t1084 * t1226;
t1358 = t1089 * t1315 + t1093 * t1340;
t1380 = -t1082 * t1342 + t1085 * t1358;
t1391 = -t1080 * t1380 + t1083 * t1360;
t1390 = t1080 * t1361 + t1083 * t1379;
t1389 = t1080 * t1360 + t1083 * t1380;
t1309 = -2 * qJD(5);
t1135 = (t1032 * t1087 + t1034 * t1091) * t1067;
t1136 = (t1032 * t1091 - t1034 * t1087) * t1067;
t1313 = -t1081 * t1135 + (t1038 * t1092 + t1088 * t1136) * t1084;
t1317 = -t1038 * t1088 + t1092 * t1136;
t1337 = -t1089 * t1313 + t1093 * t1317;
t1314 = t1038 * t1259 + t1084 * t1135 + t1136 * t1260;
t1338 = t1089 * t1317 + t1093 * t1313;
t1362 = -t1082 * t1314 + t1085 * t1338;
t1384 = -t1080 * t1362 + t1083 * t1337;
t1383 = t1082 * t1358 + t1085 * t1342;
t1382 = t1082 * t1359 + t1085 * t1341;
t1381 = t1080 * t1337 + t1083 * t1362;
t949 = t1311 + t1310;
t1378 = pkin(3) * t949;
t1377 = qJ(5) * t1333;
t1376 = t1088 * t949;
t1375 = t1092 * t949;
t1368 = t1087 * t1334;
t1366 = t1091 * t1334;
t1306 = pkin(3) * t1092;
t1232 = -pkin(10) * t1088 - t1306;
t1278 = qJD(2) * t1081;
t1041 = t1232 * t1278;
t1233 = t1236 ^ 2;
t1094 = qJD(2) ^ 2;
t1302 = pkin(9) * t1081;
t1069 = g(1) * t1083 + g(2) * t1080;
t1301 = g(3) - qJDD(1);
t1239 = t1082 * t1301;
t1240 = g(1) * t1080 - t1083 * g(2);
t1100 = t1085 * t1240 - t1239;
t987 = -t1089 * t1069 - t1093 * t1100;
t1097 = qJDD(2) * pkin(2) + t1094 * t1302 - t987;
t1055 = t1082 * t1240;
t1225 = t1085 * t1301 + t1055;
t1343 = -t1081 * t1225 + t1084 * t1097;
t1279 = t1343 * t1092;
t988 = -t1093 * t1069 + t1089 * t1100;
t976 = -t1094 * pkin(2) + pkin(9) * t1254 + t988;
t845 = t1088 * (t1041 * t1278 + t976) - t1073 * pkin(3) - t1233 * pkin(10) - t1279;
t1098 = t967 * pkin(4) - t1377 + t845;
t1364 = t1034 * t1309 + t1098;
t1363 = t1082 * t1338 + t1085 * t1314;
t1086 = sin(qJ(6));
t1090 = cos(qJ(6));
t990 = -t1090 * t1032 - t1067 * t1086;
t992 = t1032 * t1086 - t1067 * t1090;
t936 = t992 * t990;
t964 = qJDD(6) + t968;
t1336 = -t936 + t964;
t1355 = t1086 * t1336;
t1354 = t1087 * t1333;
t1321 = -t1310 + t1311;
t1353 = t1088 * t1321;
t1349 = t1090 * t1336;
t1348 = t1091 * t1333;
t1347 = t1092 * t1321;
t928 = t1089 * t987 + t1093 * t988;
t1335 = t928 * t1082;
t1077 = t1081 ^ 2;
t1262 = t1077 * t1094;
t1159 = qJD(2) * t1236;
t1332 = t1077 * (-t1084 * t1094 + t1159);
t1331 = t1080 * t1301;
t1328 = t1083 * t1301;
t1139 = t1089 * t1225;
t1138 = t1093 * t1225;
t1141 = t1081 * t1159;
t1053 = t1088 * t1141;
t1009 = t1043 - t1053;
t1054 = t1092 * t1141;
t1005 = t1054 + t1042;
t1015 = -t1083 * t1069 - t1080 * t1240;
t1014 = -t1080 * t1069 + t1083 * t1240;
t867 = t1088 * t1343 + t1092 * t976;
t846 = -pkin(3) * t1233 + t1073 * pkin(10) + t1041 * t1247 + t867;
t937 = t1081 * t1097 + t1084 * t1225;
t857 = -pkin(3) * t1009 - pkin(10) * t1005 - t937;
t1300 = -t1087 * t846 + t1091 * t857;
t978 = pkin(4) * t1032 - qJ(5) * t1034;
t1147 = t1038 * pkin(4) - t1063 * qJ(5) + t1034 * t978 + qJDD(5) - t1300;
t678 = pkin(5) * t1334 + t1101 * pkin(11) + t1147;
t1241 = -pkin(4) * t1067 + t1309;
t995 = pkin(5) * t1034 + pkin(11) * t1067;
t687 = -pkin(5) * t1311 + pkin(11) * t967 + (t1241 - t995) * t1034 + t1098;
t1238 = -t1086 * t687 + t1090 * t678;
t616 = t1086 * t678 + t1090 * t687;
t550 = -t1086 * t1238 + t1090 * t616;
t549 = t1086 * t616 + t1090 * t1238;
t989 = t990 ^ 2;
t1312 = t992 ^ 2;
t1026 = qJD(6) + t1034;
t1023 = t1026 ^ 2;
t1308 = pkin(4) + pkin(11);
t1307 = pkin(3) * t1088;
t1305 = pkin(4) * t1087;
t1304 = pkin(4) * t1091;
t1303 = pkin(8) * t1085;
t758 = t1087 * t857 + t1091 * t846;
t1299 = qJ(5) * t1038;
t1298 = t1026 * t990;
t1148 = t1063 * pkin(4) + t1032 * t978 - t758;
t681 = -t1299 - t1311 * pkin(11) - t967 * pkin(5) + (t1309 - t995) * t1067 - t1148;
t1296 = t1086 * t681;
t865 = t936 + t964;
t1295 = t1086 * t865;
t1294 = t1087 * t845;
t1290 = t1088 * t937;
t1288 = t1090 * t681;
t1287 = t1090 * t865;
t1286 = t1091 * t845;
t1012 = t1034 * t1067;
t917 = -t1012 + t967;
t1285 = t1091 * t917;
t1281 = t1092 * t937;
t1078 = t1088 ^ 2;
t1079 = t1092 ^ 2;
t1255 = t1078 + t1079;
t1013 = t1236 * t1255 * t1278;
t1274 = t1013 * t1089;
t1273 = t1026 * t1086;
t1272 = t1026 * t1090;
t1066 = t1088 * t1092 * t1262;
t1039 = -t1066 + t1073;
t1268 = t1039 * t1088;
t1267 = t1039 * t1092;
t1040 = t1066 + t1073;
t1266 = t1040 * t1088;
t1265 = t1040 * t1092;
t1258 = t1081 * t1093;
t1253 = qJDD(2) * t1082;
t1251 = t1087 * t936;
t1250 = t1091 * t936;
t878 = -t990 * qJD(6) - t1090 * t1038 + t1086 * t967;
t1249 = -t1023 - t1312;
t1244 = t1078 * t1262;
t1243 = t1079 * t1262;
t1242 = qJ(5) * t1087 + pkin(3);
t666 = -t1087 * t1300 + t1091 * t758;
t1237 = t1086 * t1038 + t1090 * t967;
t1024 = -t1244 - t1233;
t975 = -t1024 * t1088 - t1267;
t1231 = pkin(9) * t975 - t1290;
t1046 = -t1233 - t1243;
t985 = t1046 * t1092 - t1266;
t1230 = pkin(9) * t985 + t1281;
t665 = t1087 * t758 + t1091 * t1300;
t537 = t1087 * t549 + t1091 * t681;
t1224 = t1088 * t537 - t1092 * t550;
t1105 = 0.2e1 * qJD(5) * t1067 + t1148;
t715 = -t1105 - t1299;
t639 = t1087 * t1147 + t1091 * t715;
t737 = t1034 * t1241 + t1098;
t1223 = t1088 * t639 - t1092 * t737;
t1222 = t1088 * t666 - t1092 * t845;
t1107 = (-qJD(6) + t1026) * t992 + t1237;
t1149 = t878 + t1298;
t738 = t1086 * t1107 - t1090 * t1149;
t879 = -t989 - t1312;
t695 = t1087 * t738 + t1091 * t879;
t741 = t1086 * t1149 + t1090 * t1107;
t1221 = t1088 * t695 - t1092 * t741;
t1150 = t878 - t1298;
t830 = (qJD(6) + t1026) * t992 - t1237;
t739 = t1086 * t830 - t1090 * t1150;
t935 = -t989 + t1312;
t706 = -t1087 * t739 + t1091 * t935;
t740 = t1086 * t1150 + t1090 * t830;
t1220 = t1088 * t706 + t1092 * t740;
t896 = -t1023 - t989;
t797 = t1086 * t896 + t1349;
t717 = t1087 * t797 + t1091 * t830;
t798 = t1090 * t896 - t1355;
t1219 = t1088 * t717 - t1092 * t798;
t802 = t1090 * t1249 - t1295;
t724 = t1087 * t802 + t1091 * t1150;
t803 = -t1086 * t1249 - t1287;
t1218 = t1088 * t724 - t1092 * t803;
t950 = t989 - t1023;
t817 = -t1086 * t950 - t1287;
t733 = -t1087 * t817 + t1091 * t1107;
t816 = -t1090 * t950 + t1295;
t1217 = t1088 * t733 + t1092 * t816;
t951 = t1023 - t1312;
t815 = -t1090 * t951 - t1355;
t734 = -t1087 * t815 + t1091 * t1149;
t818 = t1086 * t951 - t1349;
t1216 = t1088 * t734 + t1092 * t818;
t877 = -qJD(6) * t992 + t1237;
t825 = -t1090 * t877 - t1273 * t990;
t780 = -t1087 * t825 - t1250;
t827 = t1086 * t877 - t1272 * t990;
t1215 = t1088 * t780 + t1092 * t827;
t828 = -t1086 * t878 - t1272 * t992;
t781 = -t1087 * t828 + t1250;
t826 = -t1090 * t878 + t1273 * t992;
t1214 = t1088 * t781 + t1092 * t826;
t871 = (t1086 * t990 + t1090 * t992) * t1026;
t824 = -t1087 * t871 + t1091 * t964;
t872 = (-t1086 * t992 + t1090 * t990) * t1026;
t1213 = t1088 * t824 + t1092 * t872;
t918 = (-qJD(4) - t1067) * t1034 + t1235;
t839 = t1091 * t918 + t1368;
t1212 = t1088 * t839 + t1375;
t919 = (-qJD(4) + t1067) * t1034 + t1235;
t840 = t1091 * t919 - t1354;
t1211 = t1088 * t840 + t1347;
t841 = -t1285 - t1354;
t1210 = t1088 * t841 + t1347;
t920 = -t1012 - t967;
t842 = t1091 * t920 + t1368;
t1209 = t1088 * t842 + t1375;
t866 = t1088 * t976 - t1279;
t1208 = t1088 * t867 - t1092 * t866;
t782 = t1088 * t866 + t1092 * t867;
t1207 = t1092 * t919 + t1396;
t1206 = t1092 * t917 - t1396;
t1201 = -t1092 * t918 + t1395;
t1200 = t1092 * t920 - t1395;
t536 = t1087 * t681 - t1091 * t549;
t486 = -t1081 * t536 + t1084 * t1224;
t503 = t1088 * t550 + t1092 * t537;
t1199 = t1089 * t503 + t1093 * t486;
t638 = t1087 * t715 - t1091 * t1147;
t553 = -t1081 * t638 + t1084 * t1223;
t601 = t1088 * t737 + t1092 * t639;
t1198 = t1089 * t601 + t1093 * t553;
t586 = -t1081 * t665 + t1084 * t1222;
t642 = t1088 * t845 + t1092 * t666;
t1197 = t1089 * t642 + t1093 * t586;
t694 = t1087 * t879 - t1091 * t738;
t597 = -t1081 * t694 + t1084 * t1221;
t633 = t1088 * t741 + t1092 * t695;
t1196 = t1089 * t633 + t1093 * t597;
t705 = t1087 * t935 + t1091 * t739;
t600 = -t1081 * t705 + t1084 * t1220;
t644 = -t1088 * t740 + t1092 * t706;
t1195 = t1089 * t644 + t1093 * t600;
t716 = t1087 * t830 - t1091 * t797;
t614 = -t1081 * t716 + t1084 * t1219;
t660 = t1088 * t798 + t1092 * t717;
t1194 = t1089 * t660 + t1093 * t614;
t723 = t1087 * t1150 - t1091 * t802;
t620 = -t1081 * t723 + t1084 * t1218;
t672 = t1088 * t803 + t1092 * t724;
t1193 = t1089 * t672 + t1093 * t620;
t731 = t1087 * t1107 + t1091 * t817;
t624 = -t1081 * t731 + t1084 * t1217;
t676 = -t1088 * t816 + t1092 * t733;
t1192 = t1089 * t676 + t1093 * t624;
t732 = t1087 * t1149 + t1091 * t815;
t625 = -t1081 * t732 + t1084 * t1216;
t677 = -t1088 * t818 + t1092 * t734;
t1191 = t1089 * t677 + t1093 * t625;
t778 = t1091 * t825 - t1251;
t653 = -t1081 * t778 + t1084 * t1215;
t697 = -t1088 * t827 + t1092 * t780;
t1190 = t1089 * t697 + t1093 * t653;
t779 = t1091 * t828 + t1251;
t654 = -t1081 * t779 + t1084 * t1214;
t698 = -t1088 * t826 + t1092 * t781;
t1189 = t1089 * t698 + t1093 * t654;
t823 = t1087 * t964 + t1091 * t871;
t685 = -t1081 * t823 + t1084 * t1213;
t756 = -t1088 * t872 + t1092 * t824;
t1188 = t1089 * t756 + t1093 * t685;
t835 = t1087 * t918 - t1366;
t712 = -t1081 * t835 + t1084 * t1212;
t785 = t1092 * t839 - t1376;
t1187 = t1089 * t785 + t1093 * t712;
t838 = t1087 * t920 - t1366;
t713 = -t1081 * t838 + t1084 * t1209;
t786 = t1092 * t842 - t1376;
t1186 = t1089 * t786 + t1093 * t713;
t836 = t1087 * t919 + t1348;
t721 = -t1081 * t836 + t1084 * t1211;
t800 = t1092 * t840 - t1353;
t1185 = t1089 * t800 + t1093 * t721;
t837 = -t1087 * t917 + t1348;
t722 = -t1081 * t837 + t1084 * t1210;
t801 = t1092 * t841 - t1353;
t1184 = t1089 * t801 + t1093 * t722;
t748 = t1081 * t937 + t1084 * t1208;
t1183 = t1089 * t782 + t1093 * t748;
t751 = t1084 * t1207 - t1404;
t808 = -t1088 * t919 + t1394;
t1182 = t1089 * t808 + t1093 * t751;
t752 = t1084 * t1206 + t1404;
t809 = -t1088 * t917 - t1394;
t1181 = t1089 * t809 + t1093 * t752;
t769 = t1084 * t1201 - t1401;
t821 = t1088 * t918 + t1393;
t1176 = t1089 * t821 + t1093 * t769;
t770 = t1084 * t1200 + t1401;
t822 = -t1088 * t920 - t1393;
t1175 = t1089 * t822 + t1093 * t770;
t1052 = t1255 * t1262;
t1007 = -t1054 + t1042;
t1008 = t1043 + t1053;
t1157 = -t1007 * t1092 + t1008 * t1088;
t901 = t1081 * t1052 + t1084 * t1157;
t938 = t1007 * t1088 + t1008 * t1092;
t1168 = t1089 * t938 + t1093 * t901;
t1051 = (t1078 - t1079) * t1262;
t1158 = t1005 * t1092 + t1009 * t1088;
t902 = -t1081 * t1051 + t1084 * t1158;
t939 = -t1005 * t1088 + t1009 * t1092;
t1167 = t1089 * t939 + t1093 * t902;
t1006 = (t1252 + (0.2e1 * qJD(3) + t1277) * t1276) * t1081;
t1156 = t1024 * t1092 - t1268;
t915 = -t1081 * t1006 + t1084 * t1156;
t1166 = t1089 * t975 + t1093 * t915;
t1044 = t1233 - t1244;
t1154 = t1044 * t1092 + t1266;
t932 = -t1081 * t1007 + t1084 * t1154;
t983 = -t1044 * t1088 + t1265;
t1165 = t1089 * t983 + t1093 * t932;
t1045 = -t1233 + t1243;
t1155 = t1045 * t1088 + t1267;
t933 = -t1081 * t1008 + t1084 * t1155;
t984 = t1045 * t1092 - t1268;
t1164 = t1089 * t984 + t1093 * t933;
t1153 = t1046 * t1088 + t1265;
t934 = t1081 * t1009 + t1084 * t1153;
t1163 = t1089 * t985 + t1093 * t934;
t1099 = t1081 * t1262 + t1084 * t1141;
t969 = (t1084 * t1043 - t1088 * t1099) * t1092;
t993 = -t1088 * t1043 - t1079 * t1141;
t1162 = t1089 * t993 + t1093 * t969;
t972 = (t1084 * t1042 + t1092 * t1099) * t1088;
t994 = t1092 * t1042 - t1078 * t1141;
t1161 = t1089 * t994 + t1093 * t972;
t1160 = t1089 * t988 - t1093 * t987;
t1151 = qJDD(2) * t1089 + t1093 * t1094;
t1049 = t1151 * t1085;
t1064 = qJDD(2) * t1093 - t1089 * t1094;
t1152 = t1049 * t1083 + t1064 * t1080;
t998 = t1049 * t1080 - t1064 * t1083;
t504 = pkin(5) * t681 - t1308 * t550;
t513 = pkin(5) * t549 - qJ(5) * t550;
t470 = -pkin(10) * t536 - t1087 * t504 + t1091 * t513;
t487 = -pkin(3) * t536 - qJ(5) * t681 + t1308 * t549;
t1118 = pkin(9) * t503 + t1088 * t470 + t1092 * t487;
t468 = -pkin(3) * t550 + pkin(10) * t537 + t1087 * t513 + t1091 * t504;
t485 = t1081 * t1224 + t1084 * t536;
t450 = -pkin(2) * t485 - t1081 * t468 + t1084 * t1118;
t452 = -t1088 * t487 + t1092 * t470 + (-t1081 * t485 - t1084 * t486) * pkin(9);
t469 = -t1089 * t486 + t1093 * t503;
t1134 = pkin(8) * t469 + t1089 * t452 + t1093 * t450;
t531 = pkin(5) * t879 - t1308 * t741 - t550;
t655 = pkin(5) * t738 - qJ(5) * t741;
t515 = -pkin(10) * t694 - t1087 * t531 + t1091 * t655;
t521 = -pkin(3) * t694 - qJ(5) * t879 + t1308 * t738 + t549;
t1117 = pkin(9) * t633 + t1088 * t515 + t1092 * t521;
t508 = -pkin(3) * t741 + pkin(10) * t695 + t1087 * t655 + t1091 * t531;
t596 = t1081 * t1221 + t1084 * t694;
t467 = -pkin(2) * t596 - t1081 * t508 + t1084 * t1117;
t472 = -t1088 * t521 + t1092 * t515 + (-t1081 * t596 - t1084 * t597) * pkin(9);
t548 = -t1089 * t597 + t1093 * t633;
t1133 = pkin(8) * t548 + t1089 * t472 + t1093 * t467;
t579 = pkin(5) * t797 - qJ(5) * t798 + t1238;
t603 = pkin(5) * t830 - t1308 * t798 + t1288;
t529 = -pkin(10) * t716 - t1087 * t603 + t1091 * t579;
t570 = -pkin(3) * t716 - qJ(5) * t830 + t1308 * t797 - t1296;
t1116 = pkin(9) * t660 + t1088 * t529 + t1092 * t570;
t524 = -pkin(3) * t798 + pkin(10) * t717 + t1087 * t579 + t1091 * t603;
t613 = t1081 * t1219 + t1084 * t716;
t474 = -pkin(2) * t613 - t1081 * t524 + t1084 * t1116;
t489 = -t1088 * t570 + t1092 * t529 + (-t1081 * t613 - t1084 * t614) * pkin(9);
t565 = -t1089 * t614 + t1093 * t660;
t1132 = pkin(8) * t565 + t1089 * t489 + t1093 * t474;
t580 = pkin(5) * t802 - qJ(5) * t803 - t616;
t606 = pkin(5) * t1150 - t1308 * t803 - t1296;
t530 = -pkin(10) * t723 - t1087 * t606 + t1091 * t580;
t576 = -pkin(3) * t723 - qJ(5) * t1150 + t1308 * t802 - t1288;
t1115 = pkin(9) * t672 + t1088 * t530 + t1092 * t576;
t526 = -pkin(3) * t803 + pkin(10) * t724 + t1087 * t580 + t1091 * t606;
t619 = t1081 * t1218 + t1084 * t723;
t476 = -pkin(2) * t619 - t1081 * t526 + t1084 * t1115;
t490 = -t1088 * t576 + t1092 * t530 + (-t1081 * t619 - t1084 * t620) * pkin(9);
t569 = -t1089 * t620 + t1093 * t672;
t1131 = pkin(8) * t569 + t1089 * t490 + t1093 * t476;
t566 = -pkin(3) * t638 + pkin(4) * t1147 - qJ(5) * t715;
t575 = -pkin(10) * t638 + (-qJ(5) * t1091 + t1305) * t737;
t1114 = pkin(9) * t601 + t1088 * t575 + t1092 * t566;
t552 = t1081 * t1223 + t1084 * t638;
t555 = pkin(10) * t639 + (-t1242 - t1304) * t737;
t482 = -pkin(2) * t552 - t1081 * t555 + t1084 * t1114;
t488 = -t1088 * t566 + t1092 * t575 + (-t1081 * t552 - t1084 * t553) * pkin(9);
t527 = -t1089 * t553 + t1093 * t601;
t1130 = pkin(8) * t527 + t1089 * t488 + t1093 * t482;
t1103 = pkin(9) * t642 + t1232 * t665;
t585 = t1081 * t1222 + t1084 * t665;
t643 = -pkin(3) * t845 + pkin(10) * t666;
t512 = -pkin(2) * t585 - t1081 * t643 + t1084 * t1103;
t514 = (-pkin(10) * t1092 + t1307) * t665 + (-t1081 * t585 - t1084 * t586) * pkin(9);
t547 = -t1089 * t586 + t1093 * t642;
t1129 = pkin(8) * t547 + t1089 * t514 + t1093 * t512;
t692 = pkin(4) * t949 + t715;
t693 = qJ(5) * t949 + t1147;
t607 = -pkin(10) * t835 - t1087 * t692 + t1091 * t693;
t746 = -pkin(3) * t835 + pkin(4) * t1334 - qJ(5) * t918;
t1113 = pkin(9) * t785 + t1088 * t607 + t1092 * t746;
t602 = pkin(10) * t839 + t1087 * t693 + t1091 * t692 + t1378;
t710 = t1081 * t1212 + t1084 * t835;
t523 = -pkin(2) * t710 - t1081 * t602 + t1084 * t1113;
t546 = -t1088 * t746 + t1092 * t607 + (-t1081 * t710 - t1084 * t712) * pkin(9);
t657 = -t1089 * t712 + t1093 * t785;
t1128 = pkin(8) * t657 + t1089 * t546 + t1093 * t523;
t700 = (t917 - t1012) * pkin(4) + t1364;
t659 = qJ(5) * t1285 - t1087 * t700 + t1408;
t662 = -pkin(4) * t1101 + qJ(5) * t973 - t1147 + t1410;
t1112 = pkin(9) * t809 + t1088 * t659 + t1092 * t662;
t649 = t1091 * t700 + t1242 * t917 - t1407;
t750 = t1081 * t1206 - t1400;
t539 = -pkin(2) * t750 - t1081 * t649 + t1084 * t1112;
t554 = -t1088 * t662 + t1092 * t659 + (-t1081 * t750 - t1084 * t752) * pkin(9);
t680 = -t1089 * t752 + t1093 * t809;
t1127 = pkin(8) * t680 + t1089 * t554 + t1093 * t539;
t641 = -pkin(10) * t838 - t665;
t1106 = pkin(9) * t786 + t1088 * t641 - t1306 * t838;
t632 = pkin(10) * t842 + t1378 + t666;
t711 = t1081 * t1209 + t1084 * t838;
t541 = -pkin(2) * t711 - t1081 * t632 + t1084 * t1106;
t559 = t838 * t1307 + t1092 * t641 + (-t1081 * t711 - t1084 * t713) * pkin(9);
t658 = -t1089 * t713 + t1093 * t786;
t1126 = pkin(8) * t658 + t1089 * t559 + t1093 * t541;
t699 = pkin(4) * t1012 - t1364 + t1377;
t661 = t1091 * t699 - t1305 * t1333 - t1406;
t667 = -t1409 - pkin(4) * t981 + (t1038 + t1102) * qJ(5) + t1105;
t1111 = t1088 * t661 + t1092 * t667 - t1415;
t650 = -t1405 + t1087 * t699 + (pkin(3) + t1304) * t1333;
t543 = -t1081 * t650 + t1084 * t1111 + t1422;
t556 = -t1088 * t667 + t1092 * t661 + t1423;
t1125 = t1089 * t556 + t1093 * t543 + t1429;
t707 = -t1300 - t1410;
t771 = t1294 - t1408;
t1110 = pkin(9) * t808 + t1088 * t771 + t1092 * t707;
t735 = pkin(3) * t919 - t1286 + t1407;
t749 = t1081 * t1207 + t1400;
t568 = -pkin(2) * t749 - t1081 * t735 + t1084 * t1110;
t588 = -t1088 * t707 + t1092 * t771 + (-t1081 * t749 - t1084 * t751) * pkin(9);
t679 = -t1089 * t751 + t1093 * t808;
t1124 = pkin(8) * t679 + t1089 * t588 + t1093 * t568;
t714 = t758 + t1409;
t772 = t1286 + t1406;
t1109 = t1088 * t772 + t1092 * t714 + t1415;
t736 = -pkin(3) * t1333 + t1294 + t1405;
t572 = -t1081 * t736 + t1084 * t1109 - t1422;
t595 = -t1088 * t714 + t1092 * t772 - t1423;
t1123 = t1089 * t595 + t1093 * t572 - t1429;
t747 = t1081 * t1208 - t1084 * t937;
t656 = (-t1081 * t747 - t1084 * t748) * pkin(9);
t673 = -t1089 * t748 + t1093 * t782;
t674 = pkin(9) * t1084 * t782 - pkin(2) * t747;
t1122 = pkin(8) * t673 + t1089 * t656 + t1093 * t674;
t899 = -t1084 * t1052 + t1081 * t1157;
t696 = (-t1081 * t899 - t1084 * t901) * pkin(9) - t1208;
t1108 = pkin(9) * t938 + t782;
t709 = -pkin(2) * t899 + t1084 * t1108;
t847 = -t1089 * t901 + t1093 * t938;
t1121 = pkin(8) * t847 + t1089 * t696 + t1093 * t709;
t914 = t1084 * t1006 + t1081 * t1156;
t743 = -pkin(2) * t914 + t1081 * t867 + t1084 * t1231;
t783 = -t1281 + (-t1081 * t914 - t1084 * t915) * pkin(9);
t858 = -t1089 * t915 + t1093 * t975;
t1120 = pkin(8) * t858 + t1089 * t783 + t1093 * t743;
t931 = -t1084 * t1009 + t1081 * t1153;
t754 = -pkin(2) * t931 + t1081 * t866 + t1084 * t1230;
t784 = -t1290 + (-t1081 * t931 - t1084 * t934) * pkin(9);
t870 = -t1089 * t934 + t1093 * t985;
t1119 = pkin(8) * t870 + t1089 * t784 + t1093 * t754;
t1050 = t1064 * t1085;
t1048 = t1064 * t1082;
t1047 = t1151 * t1082;
t999 = -t1050 * t1080 - t1083 * t1151;
t997 = t1050 * t1083 - t1080 * t1151;
t977 = t1073 * t1081 * t1089 + t1013 * t1093;
t971 = (t1081 * t1042 + t1092 * t1332) * t1088;
t970 = (t1081 * t1043 - t1088 * t1332) * t1092;
t947 = -t1138 + (t1047 * t1082 + t1049 * t1085) * pkin(8);
t946 = -t1139 + (-t1048 * t1082 - t1050 * t1085) * pkin(8);
t945 = t1085 * t1274 + (-t1082 * t1084 - t1085 * t1258) * t1073;
t930 = t1084 * t1008 + t1081 * t1155;
t929 = t1084 * t1007 + t1081 * t1154;
t913 = t928 * t1085;
t900 = t1084 * t1051 + t1081 * t1158;
t898 = -t1089 * t972 + t1093 * t994;
t897 = -t1089 * t969 + t1093 * t993;
t887 = -pkin(1) * t1048 + t1082 * t987 + t1085 * t1138 - t1151 * t1303;
t886 = pkin(1) * t1047 - t1064 * t1303 + t1082 * t988 - t1085 * t1139;
t881 = t1082 * t1055 + (t1239 + t1160) * t1085;
t880 = t1082 * t1160 - t1085 * t1225;
t869 = -t1089 * t933 + t1093 * t984;
t868 = -t1089 * t932 + t1093 * t983;
t854 = -t1082 * t971 + t1085 * t1161;
t853 = -t1082 * t970 + t1085 * t1162;
t848 = -t1089 * t902 + t1093 * t939;
t812 = -pkin(1) * t880 + t1303 * t928;
t811 = -t1080 * t881 + t1083 * t928;
t810 = t1080 * t928 + t1083 * t881;
t807 = -t1082 * t931 + t1085 * t1163;
t806 = -t1082 * t930 + t1085 * t1164;
t805 = -t1082 * t929 + t1085 * t1165;
t804 = t1082 * t1163 + t1085 * t931;
t799 = (-t1082 * t880 - t1085 * t881) * pkin(8);
t796 = -t1082 * t914 + t1085 * t1166;
t795 = t1082 * t1166 + t1085 * t914;
t775 = -t1082 * t900 + t1085 * t1167;
t774 = -t1082 * t899 + t1085 * t1168;
t773 = t1082 * t1168 + t1085 * t899;
t766 = t1081 * t1200 - t1397;
t765 = t1081 * t1201 + t1397;
t753 = pkin(2) * t934 + t1081 * t1230 - t1084 * t866;
t745 = -t1080 * t807 + t1083 * t870;
t744 = t1080 * t870 + t1083 * t807;
t742 = pkin(2) * t915 + t1081 * t1231 - t1084 * t867;
t730 = -t1080 * t796 + t1083 * t858;
t729 = t1080 * t858 + t1083 * t796;
t720 = t1081 * t1210 + t1084 * t837;
t719 = t1081 * t1211 + t1084 * t836;
t708 = pkin(2) * t901 + t1081 * t1108;
t702 = -t1080 * t774 + t1083 * t847;
t701 = t1080 * t847 + t1083 * t774;
t691 = -t1089 * t770 + t1093 * t822;
t690 = -t1089 * t769 + t1093 * t821;
t684 = t1081 * t1213 + t1084 * t823;
t675 = pkin(2) * t748 + t1302 * t782;
t664 = -t1089 * t722 + t1093 * t801;
t663 = -t1089 * t721 + t1093 * t800;
t652 = t1081 * t1214 + t1084 * t779;
t651 = t1081 * t1215 + t1084 * t778;
t648 = -t1082 * t766 + t1085 * t1175;
t647 = -t1082 * t765 + t1085 * t1176;
t640 = -t1089 * t685 + t1093 * t756;
t631 = -t1082 * t750 + t1085 * t1181;
t630 = -t1082 * t749 + t1085 * t1182;
t629 = t1082 * t1181 + t1085 * t750;
t628 = t1082 * t1182 + t1085 * t749;
t627 = -t1082 * t747 + t1085 * t1183;
t626 = t1082 * t1183 + t1085 * t747;
t623 = t1081 * t1216 + t1084 * t732;
t622 = t1081 * t1217 + t1084 * t731;
t621 = -t1089 * t754 + t1093 * t784 + (-t1082 * t804 - t1085 * t807) * pkin(8);
t618 = -t1082 * t720 + t1085 * t1184;
t617 = -t1082 * t719 + t1085 * t1185;
t612 = -t1089 * t743 + t1093 * t783 + (-t1082 * t795 - t1085 * t796) * pkin(8);
t611 = -t1082 * t711 + t1085 * t1186;
t610 = -t1082 * t710 + t1085 * t1187;
t609 = t1082 * t1186 + t1085 * t711;
t608 = t1082 * t1187 + t1085 * t710;
t605 = -t1089 * t654 + t1093 * t698;
t604 = -t1089 * t653 + t1093 * t697;
t599 = t1081 * t1220 + t1084 * t705;
t598 = -pkin(1) * t804 - t1082 * t753 + t1085 * t1119;
t594 = -pkin(1) * t795 - t1082 * t742 + t1085 * t1120;
t593 = -t1082 * t684 + t1085 * t1188;
t587 = -t1089 * t709 + t1093 * t696 + (-t1082 * t773 - t1085 * t774) * pkin(8);
t584 = -t1080 * t631 + t1083 * t680;
t583 = -t1080 * t630 + t1083 * t679;
t582 = t1080 * t680 + t1083 * t631;
t581 = t1080 * t679 + t1083 * t630;
t578 = -t1089 * t625 + t1093 * t677;
t577 = -t1089 * t624 + t1093 * t676;
t574 = -t1080 * t627 + t1083 * t673;
t573 = t1080 * t673 + t1083 * t627;
t571 = t1081 * t1109 + t1084 * t736 + t1421;
t567 = pkin(2) * t751 + t1081 * t1110 + t1084 * t735;
t564 = -pkin(1) * t773 - t1082 * t708 + t1085 * t1121;
t563 = -t1080 * t611 + t1083 * t658;
t562 = -t1080 * t610 + t1083 * t657;
t561 = t1080 * t658 + t1083 * t611;
t560 = t1080 * t657 + t1083 * t610;
t558 = -t1082 * t652 + t1085 * t1189;
t557 = -t1082 * t651 + t1085 * t1190;
t551 = -t1089 * t600 + t1093 * t644;
t545 = -t1082 * t623 + t1085 * t1191;
t544 = -t1082 * t622 + t1085 * t1192;
t542 = t1081 * t1111 + t1084 * t650 - t1421;
t540 = pkin(2) * t713 + t1081 * t1106 + t1084 * t632;
t538 = pkin(2) * t752 + t1081 * t1112 + t1084 * t649;
t535 = -t1082 * t619 + t1085 * t1193;
t534 = t1082 * t1193 + t1085 * t619;
t533 = -t1082 * t613 + t1085 * t1194;
t532 = t1082 * t1194 + t1085 * t613;
t528 = -t1089 * t674 + t1093 * t656 + (-t1082 * t626 - t1085 * t627) * pkin(8);
t525 = -t1082 * t599 + t1085 * t1195;
t522 = pkin(2) * t712 + t1081 * t1113 + t1084 * t602;
t520 = -t1082 * t596 + t1085 * t1196;
t519 = t1082 * t1196 + t1085 * t596;
t518 = -pkin(1) * t626 - t1082 * t675 + t1085 * t1122;
t517 = -t1082 * t585 + t1085 * t1197;
t516 = t1082 * t1197 + t1085 * t585;
t511 = pkin(2) * t586 + t1081 * t1103 + t1084 * t643;
t510 = -t1080 * t535 + t1083 * t569;
t509 = t1080 * t569 + t1083 * t535;
t507 = -t1080 * t533 + t1083 * t565;
t506 = t1080 * t565 + t1083 * t533;
t505 = -t1089 * t572 + t1093 * t595 - t1435;
t502 = -t1089 * t568 + t1093 * t588 + (-t1082 * t628 - t1085 * t630) * pkin(8);
t501 = -t1082 * t552 + t1085 * t1198;
t500 = t1082 * t1198 + t1085 * t552;
t499 = -t1080 * t520 + t1083 * t548;
t498 = t1080 * t548 + t1083 * t520;
t497 = -t1082 * t571 + t1085 * t1123 - t1434;
t496 = -t1080 * t517 + t1083 * t547;
t495 = t1080 * t547 + t1083 * t517;
t494 = -t1089 * t543 + t1093 * t556 + t1435;
t493 = -pkin(1) * t628 - t1082 * t567 + t1085 * t1124;
t492 = -t1089 * t539 + t1093 * t554 + (-t1082 * t629 - t1085 * t631) * pkin(8);
t491 = -t1089 * t541 + t1093 * t559 + (-t1082 * t609 - t1085 * t611) * pkin(8);
t484 = -t1089 * t523 + t1093 * t546 + (-t1082 * t608 - t1085 * t610) * pkin(8);
t483 = -t1082 * t542 + t1085 * t1125 + t1434;
t481 = pkin(2) * t553 + t1081 * t1114 + t1084 * t555;
t480 = -t1080 * t501 + t1083 * t527;
t479 = t1080 * t527 + t1083 * t501;
t478 = -pkin(1) * t629 - t1082 * t538 + t1085 * t1127;
t477 = -pkin(1) * t609 - t1082 * t540 + t1085 * t1126;
t475 = pkin(2) * t620 + t1081 * t1115 + t1084 * t526;
t473 = pkin(2) * t614 + t1081 * t1116 + t1084 * t524;
t471 = -pkin(1) * t608 - t1082 * t522 + t1085 * t1128;
t466 = pkin(2) * t597 + t1081 * t1117 + t1084 * t508;
t465 = -t1089 * t512 + t1093 * t514 + (-t1082 * t516 - t1085 * t517) * pkin(8);
t464 = -pkin(1) * t516 - t1082 * t511 + t1085 * t1129;
t463 = -t1082 * t485 + t1085 * t1199;
t462 = t1082 * t1199 + t1085 * t485;
t461 = -t1089 * t476 + t1093 * t490 + (-t1082 * t534 - t1085 * t535) * pkin(8);
t460 = -t1089 * t474 + t1093 * t489 + (-t1082 * t532 - t1085 * t533) * pkin(8);
t459 = -t1089 * t482 + t1093 * t488 + (-t1082 * t500 - t1085 * t501) * pkin(8);
t458 = -pkin(1) * t534 - t1082 * t475 + t1085 * t1131;
t457 = -pkin(1) * t532 - t1082 * t473 + t1085 * t1132;
t456 = -t1089 * t467 + t1093 * t472 + (-t1082 * t519 - t1085 * t520) * pkin(8);
t455 = -t1080 * t463 + t1083 * t469;
t454 = t1080 * t469 + t1083 * t463;
t453 = -pkin(1) * t500 - t1082 * t481 + t1085 * t1130;
t451 = -pkin(1) * t519 - t1082 * t466 + t1085 * t1133;
t449 = pkin(2) * t486 + t1081 * t1118 + t1084 * t468;
t448 = -t1089 * t450 + t1093 * t452 + (-t1082 * t462 - t1085 * t463) * pkin(8);
t447 = -pkin(1) * t462 - t1082 * t449 + t1085 * t1134;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1015, 0, 0, 0, 0, 0, 0, t999, t998, 0, t811, 0, 0, 0, 0, 0, 0, t745, t730, t702, t574, 0, 0, 0, 0, 0, 0, t583, -t592, t563, t496, 0, 0, 0, 0, 0, 0, t562, t584, t592, t480, 0, 0, 0, 0, 0, 0, t507, t510, t499, t455; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1014, 0, 0, 0, 0, 0, 0, t997, -t1152, 0, t810, 0, 0, 0, 0, 0, 0, t744, t729, t701, t573, 0, 0, 0, 0, 0, 0, t581, t589, t561, t495, 0, 0, 0, 0, 0, 0, t560, t582, -t589, t479, 0, 0, 0, 0, 0, 0, t506, t509, t498, t454; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1301, 0, 0, 0, 0, 0, 0, t1048, -t1047, 0, t880, 0, 0, 0, 0, 0, 0, t804, t795, t773, t626, 0, 0, 0, 0, 0, 0, t628, t634, t609, t516, 0, 0, 0, 0, 0, 0, t608, t629, -t634, t500, 0, 0, 0, 0, 0, 0, t532, t534, t519, t462; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1331, -t1328, -t1014, -qJ(1) * t1014, 0, 0, -t998, 0, t999, t1080 * t1253, -qJ(1) * t997 - t1080 * t887 + t1083 * t946, qJ(1) * t1152 - t1080 * t886 + t1083 * t947, -t1080 * t913 - t1083 * t1160, -qJ(1) * t810 - t1080 * t812 + t1083 * t799, -t1080 * t854 + t1083 * t898, -t1080 * t775 + t1083 * t848, -t1080 * t805 + t1083 * t868, -t1080 * t853 + t1083 * t897, -t1080 * t806 + t1083 * t869, -t1080 * t945 + t1083 * t977, -qJ(1) * t744 - t1080 * t598 + t1083 * t621, -qJ(1) * t729 - t1080 * t594 + t1083 * t612, -qJ(1) * t701 - t1080 * t564 + t1083 * t587, -qJ(1) * t573 - t1080 * t518 + t1083 * t528, t1391, -t1080 * t617 + t1083 * t663, t1432, t1392, -t1080 * t647 + t1083 * t690, t1384, -qJ(1) * t581 - t1080 * t493 + t1083 * t502, -t1080 * t497 + t1083 * t505 - t1437, -qJ(1) * t561 - t1080 * t477 + t1083 * t491, -qJ(1) * t495 - t1080 * t464 + t1083 * t465, t1384, -t1432, -t1080 * t648 + t1083 * t691, t1391, -t1080 * t618 + t1083 * t664, t1392, -qJ(1) * t560 - t1080 * t471 + t1083 * t484, -qJ(1) * t582 - t1080 * t478 + t1083 * t492, -t1080 * t483 + t1083 * t494 + t1437, -qJ(1) * t479 - t1080 * t453 + t1083 * t459, -t1080 * t558 + t1083 * t605, -t1080 * t525 + t1083 * t551, -t1080 * t545 + t1083 * t578, -t1080 * t557 + t1083 * t604, -t1080 * t544 + t1083 * t577, -t1080 * t593 + t1083 * t640, -qJ(1) * t506 - t1080 * t457 + t1083 * t460, -qJ(1) * t509 - t1080 * t458 + t1083 * t461, -qJ(1) * t498 - t1080 * t451 + t1083 * t456, -qJ(1) * t454 - t1080 * t447 + t1083 * t448; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1328, -t1331, t1015, qJ(1) * t1015, 0, 0, t1152, 0, t997, -t1083 * t1253, qJ(1) * t999 + t1080 * t946 + t1083 * t887, qJ(1) * t998 + t1080 * t947 + t1083 * t886, -t1080 * t1160 + t1083 * t913, qJ(1) * t811 + t1080 * t799 + t1083 * t812, t1080 * t898 + t1083 * t854, t1080 * t848 + t1083 * t775, t1080 * t868 + t1083 * t805, t1080 * t897 + t1083 * t853, t1080 * t869 + t1083 * t806, t1080 * t977 + t1083 * t945, qJ(1) * t745 + t1080 * t621 + t1083 * t598, qJ(1) * t730 + t1080 * t612 + t1083 * t594, qJ(1) * t702 + t1080 * t587 + t1083 * t564, qJ(1) * t574 + t1080 * t528 + t1083 * t518, t1389, t1080 * t663 + t1083 * t617, -t1431, t1390, t1080 * t690 + t1083 * t647, t1381, qJ(1) * t583 + t1080 * t502 + t1083 * t493, t1080 * t505 + t1083 * t497 - t1436, qJ(1) * t563 + t1080 * t491 + t1083 * t477, qJ(1) * t496 + t1080 * t465 + t1083 * t464, t1381, t1431, t1080 * t691 + t1083 * t648, t1389, t1080 * t664 + t1083 * t618, t1390, qJ(1) * t562 + t1080 * t484 + t1083 * t471, qJ(1) * t584 + t1080 * t492 + t1083 * t478, t1080 * t494 + t1083 * t483 + t1436, qJ(1) * t480 + t1080 * t459 + t1083 * t453, t1080 * t605 + t1083 * t558, t1080 * t551 + t1083 * t525, t1080 * t578 + t1083 * t545, t1080 * t604 + t1083 * t557, t1080 * t577 + t1083 * t544, t1080 * t640 + t1083 * t593, qJ(1) * t507 + t1080 * t460 + t1083 * t457, qJ(1) * t510 + t1080 * t461 + t1083 * t458, qJ(1) * t499 + t1080 * t456 + t1083 * t451, qJ(1) * t455 + t1080 * t448 + t1083 * t447; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1240, t1069, 0, 0, 0, 0, t1047, 0, t1048, t1085 * qJDD(2), pkin(1) * t1050 - t1085 * t987 + (-pkin(8) * t1151 + t1138) * t1082, -pkin(1) * t1049 - t1085 * t988 + (-pkin(8) * t1064 - t1139) * t1082, t1335, pkin(1) * t881 + pkin(8) * t1335, t1082 * t1161 + t1085 * t971, t1082 * t1167 + t1085 * t900, t1082 * t1165 + t1085 * t929, t1082 * t1162 + t1085 * t970, t1082 * t1164 + t1085 * t930, t1082 * t1274 + (-t1082 * t1258 + t1084 * t1085) * t1073, pkin(1) * t807 + t1082 * t1119 + t1085 * t753, pkin(1) * t796 + t1082 * t1120 + t1085 * t742, pkin(1) * t774 + t1082 * t1121 + t1085 * t708, pkin(1) * t627 + t1082 * t1122 + t1085 * t675, t1383, t1082 * t1185 + t1085 * t719, -t1424, t1382, t1082 * t1176 + t1085 * t765, t1363, pkin(1) * t630 + t1082 * t1124 + t1085 * t567, t1082 * t1123 + t1085 * t571 + t1433, pkin(1) * t611 + t1082 * t1126 + t1085 * t540, pkin(1) * t517 + t1082 * t1129 + t1085 * t511, t1363, t1424, t1082 * t1175 + t1085 * t766, t1383, t1082 * t1184 + t1085 * t720, t1382, pkin(1) * t610 + t1082 * t1128 + t1085 * t522, pkin(1) * t631 + t1082 * t1127 + t1085 * t538, t1082 * t1125 + t1085 * t542 - t1433, pkin(1) * t501 + t1082 * t1130 + t1085 * t481, t1082 * t1189 + t1085 * t652, t1082 * t1195 + t1085 * t599, t1082 * t1191 + t1085 * t623, t1082 * t1190 + t1085 * t651, t1082 * t1192 + t1085 * t622, t1082 * t1188 + t1085 * t684, pkin(1) * t533 + t1082 * t1132 + t1085 * t473, pkin(1) * t535 + t1082 * t1131 + t1085 * t475, pkin(1) * t520 + t1082 * t1133 + t1085 * t466, pkin(1) * t463 + t1082 * t1134 + t1085 * t449;];
tauB_reg  = t1;
