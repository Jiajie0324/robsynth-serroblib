% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRPRPR5
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6,theta3,theta5]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 14:06
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRPRPR5_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR5_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR5_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR5_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR5_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRPR5_invdynB_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 14:03:35
% EndTime: 2019-05-06 14:04:54
% DurationCPUTime: 74.30s
% Computational Cost: add. (745157->1111), mult. (1981272->1813), div. (0->0), fcn. (1597277->14), ass. (0->801)
t1235 = sin(pkin(12));
t1236 = sin(pkin(11));
t1239 = cos(pkin(11));
t1237 = sin(pkin(6));
t1247 = cos(qJ(2));
t1358 = t1237 * t1247;
t1344 = qJD(1) * t1358;
t1243 = sin(qJ(2));
t1359 = t1237 * t1243;
t1345 = qJD(1) * t1359;
t1191 = t1236 * t1344 + t1239 * t1345;
t1240 = cos(pkin(6));
t1227 = qJD(1) * t1240 + qJD(2);
t1242 = sin(qJ(4));
t1246 = cos(qJ(4));
t1166 = t1191 * t1246 + t1227 * t1242;
t1189 = t1236 * t1345 - t1239 * t1344;
t1185 = qJD(4) + t1189;
t1238 = cos(pkin(12));
t1128 = t1166 * t1235 - t1238 * t1185;
t1130 = t1166 * t1238 + t1185 * t1235;
t1063 = t1130 * t1128;
t1349 = qJDD(1) * t1243;
t1384 = qJD(1) * t1247;
t1198 = (qJD(2) * t1384 + t1349) * t1237;
t1350 = qJDD(1) * t1237;
t1199 = -qJD(2) * t1345 + t1247 * t1350;
t1152 = t1239 * t1198 + t1236 * t1199;
t1226 = qJDD(1) * t1240 + qJDD(2);
t1330 = t1242 * t1152 - t1246 * t1226;
t1092 = qJD(4) * t1166 + t1330;
t1413 = -t1063 + t1092;
t1425 = t1235 * t1413;
t1151 = t1191 * t1189;
t1411 = -t1151 + t1226;
t1424 = t1236 * t1411;
t1423 = t1238 * t1413;
t1422 = t1239 * t1411;
t1241 = sin(qJ(6));
t1257 = qJDD(6) + t1092;
t1245 = cos(qJ(6));
t1057 = t1245 * t1128 + t1130 * t1241;
t1059 = -t1128 * t1241 + t1130 * t1245;
t967 = t1059 * t1057;
t1417 = t1257 - t967;
t1421 = t1241 * t1417;
t1164 = t1191 * t1242 - t1246 * t1227;
t1113 = t1166 * t1164;
t1328 = t1198 * t1236 - t1239 * t1199;
t1324 = qJDD(4) + t1328;
t1412 = -t1113 + t1324;
t1420 = t1242 * t1412;
t1419 = t1245 * t1417;
t1418 = t1246 * t1412;
t1232 = t1237 ^ 2;
t1249 = qJD(1) ^ 2;
t1385 = qJD(1) * t1227;
t1416 = t1232 * (-t1240 * t1249 + t1385);
t1207 = t1227 * t1345;
t1172 = t1199 - t1207;
t1415 = t1240 * t1172;
t1159 = qJD(6) + t1164;
t1023 = t1159 * t1057;
t1093 = -t1164 * qJD(4) + t1246 * t1152 + t1242 * t1226;
t1051 = -t1093 * t1235 + t1238 * t1324;
t1052 = t1238 * t1093 + t1235 * t1324;
t1256 = qJD(6) * t1057 - t1051 * t1241 - t1052 * t1245;
t1414 = -t1023 - t1256;
t1082 = t1164 * t1128;
t984 = -t1082 - t1052;
t982 = -t1082 + t1052;
t1135 = t1185 * t1164;
t1039 = -t1135 + t1093;
t1176 = t1227 * t1189;
t1410 = -t1176 + t1152;
t1208 = t1227 * t1344;
t1169 = t1208 + t1198;
t1244 = sin(qJ(1));
t1248 = cos(qJ(1));
t1221 = g(1) * t1248 + g(2) * t1244;
t1195 = -pkin(1) * t1249 + pkin(8) * t1350 - t1221;
t1220 = t1244 * g(1) - t1248 * g(2);
t1400 = pkin(8) * t1237;
t1254 = qJDD(1) * pkin(1) + t1249 * t1400 + t1220;
t1253 = t1240 * t1254;
t1139 = -g(3) * t1359 + t1247 * t1195 + t1243 * t1253;
t1274 = -pkin(2) * t1227 + qJ(3) * t1345;
t1234 = t1247 ^ 2;
t1361 = t1232 * t1249;
t1336 = t1234 * t1361;
t1079 = -pkin(2) * t1336 + t1199 * qJ(3) + t1227 * t1274 + t1139;
t1329 = -t1243 * t1195 + t1247 * t1253;
t1356 = t1243 * t1249;
t1335 = t1232 * t1356;
t1252 = t1226 * pkin(2) - t1198 * qJ(3) + (pkin(2) * t1335 + (qJ(3) * t1385 - g(3)) * t1237) * t1247 + t1329;
t987 = -0.2e1 * qJD(3) * t1189 + t1239 * t1079 + t1236 * t1252;
t1332 = -t1245 * t1051 + t1241 * t1052;
t873 = (qJD(6) - t1159) * t1059 + t1332;
t1036 = (qJD(4) - t1185) * t1166 + t1330;
t1055 = t1057 ^ 2;
t1056 = t1059 ^ 2;
t1409 = t1128 ^ 2;
t1126 = t1130 ^ 2;
t1157 = t1159 ^ 2;
t1408 = t1164 ^ 2;
t1162 = t1166 ^ 2;
t1407 = t1185 ^ 2;
t1187 = t1189 ^ 2;
t1188 = t1191 ^ 2;
t1406 = t1227 ^ 2;
t1405 = 0.2e1 * qJD(3);
t1404 = pkin(2) * t1237;
t1403 = pkin(2) * t1240;
t1402 = pkin(3) * t1236;
t1401 = pkin(4) * t1242;
t1110 = pkin(4) * t1164 - qJ(5) * t1166;
t1177 = t1240 * g(3) + t1237 * t1254;
t1105 = t1199 * pkin(2) + qJ(3) * t1336 + t1274 * t1345 - qJDD(3) + t1177;
t1368 = t1191 * t1227;
t1114 = t1328 + t1368;
t1251 = t1114 * pkin(3) - pkin(9) * t1410 - t1105;
t1147 = pkin(3) * t1189 - pkin(9) * t1191;
t949 = -pkin(3) * t1406 + pkin(9) * t1226 - t1147 * t1189 + t987;
t887 = t1242 * t1251 + t1246 * t949;
t839 = -pkin(4) * t1407 + qJ(5) * t1324 - t1164 * t1110 + t887;
t1331 = t1236 * t1079 - t1239 * t1252;
t948 = -t1226 * pkin(3) - t1406 * pkin(9) + (t1405 + t1147) * t1191 + t1331;
t865 = -t1039 * qJ(5) + (t1166 * t1185 + t1092) * pkin(4) + t948;
t772 = 0.2e1 * qJD(5) * t1130 + t1235 * t839 - t1238 * t865;
t740 = pkin(5) * t1413 + pkin(10) * t984 - t772;
t1078 = pkin(5) * t1164 - pkin(10) * t1130;
t773 = -0.2e1 * qJD(5) * t1128 + t1235 * t865 + t1238 * t839;
t750 = -pkin(5) * t1409 + pkin(10) * t1051 - t1078 * t1164 + t773;
t674 = t1241 * t740 + t1245 * t750;
t673 = t1241 * t750 - t1245 * t740;
t625 = t1241 * t674 - t1245 * t673;
t1399 = t1235 * t625;
t886 = t1242 * t949 - t1246 * t1251;
t838 = -t1324 * pkin(4) - t1407 * qJ(5) + t1110 * t1166 + qJDD(5) + t886;
t1398 = t1235 * t838;
t997 = t1063 + t1092;
t1397 = t1235 * t997;
t1396 = t1238 * t625;
t1395 = t1238 * t838;
t1394 = t1238 * t997;
t801 = -t1051 * pkin(5) - pkin(10) * t1409 + t1078 * t1130 + t838;
t1393 = t1241 * t801;
t927 = t1257 + t967;
t1392 = t1241 * t927;
t1391 = t1242 * t948;
t986 = t1191 * t1405 + t1331;
t902 = t1236 * t987 - t1239 * t986;
t1390 = t1243 * t902;
t1389 = t1245 * t801;
t1388 = t1245 * t927;
t1387 = t1246 * t948;
t1386 = t1247 * t902;
t1069 = t1113 + t1324;
t1382 = t1069 * t1242;
t1381 = t1069 * t1246;
t1380 = t1092 * t1242;
t1379 = t1105 * t1236;
t1378 = t1105 * t1239;
t1377 = t1130 * t1164;
t1142 = t1151 + t1226;
t1376 = t1142 * t1236;
t1375 = t1142 * t1239;
t1374 = t1159 * t1241;
t1373 = t1159 * t1245;
t1372 = t1164 * t1235;
t1371 = t1164 * t1238;
t1370 = t1185 * t1242;
t1369 = t1185 * t1246;
t1219 = t1247 * t1335;
t1196 = t1219 + t1226;
t1367 = t1196 * t1243;
t1366 = t1196 * t1247;
t1197 = -t1219 + t1226;
t1365 = t1197 * t1243;
t1364 = t1197 * t1247;
t1363 = t1227 * t1236;
t1362 = t1227 * t1239;
t1360 = t1237 * t1226;
t1357 = t1243 * t1177;
t1355 = t1247 * t1177;
t1233 = t1243 ^ 2;
t1351 = t1233 + t1234;
t1348 = -pkin(3) * t1239 - pkin(2);
t1347 = -pkin(4) * t1246 - pkin(3);
t1346 = t1237 * t1385;
t1343 = t1242 * t967;
t1342 = t1246 * t967;
t1341 = t1242 * t1063;
t1340 = t1246 * t1063;
t1339 = t1236 * t1113;
t1338 = t1239 * t1113;
t1337 = t1233 * t1361;
t1334 = t1237 * t1151;
t1333 = t1240 * t1151;
t903 = t1236 * t986 + t1239 * t987;
t626 = t1241 * t673 + t1245 * t674;
t800 = t1242 * t886 + t1246 * t887;
t1180 = -t1220 * t1244 - t1248 * t1221;
t1218 = qJDD(1) * t1248 - t1244 * t1249;
t1327 = -pkin(7) * t1218 - g(3) * t1244;
t1186 = -t1406 - t1337;
t1144 = -t1186 * t1243 - t1364;
t1326 = pkin(8) * t1144 - t1357;
t1203 = -t1406 - t1336;
t1155 = t1203 * t1247 - t1367;
t1325 = pkin(8) * t1155 + t1355;
t694 = t1235 * t773 - t1238 * t772;
t695 = t1235 * t772 + t1238 * t773;
t799 = t1242 * t887 - t1246 * t886;
t599 = t1238 * t626 - t1399;
t595 = t1242 * t801 + t1246 * t599;
t598 = t1235 * t626 + t1396;
t565 = t1236 * t595 - t1239 * t598;
t566 = t1236 * t598 + t1239 * t595;
t1323 = t1243 * t566 + t1247 * t565;
t679 = t1242 * t838 + t1246 * t695;
t638 = t1236 * t679 - t1239 * t694;
t639 = t1236 * t694 + t1239 * t679;
t1322 = t1243 * t639 + t1247 * t638;
t877 = -t1023 + t1256;
t787 = -t1241 * t873 + t1245 * t877;
t789 = -t1241 * t877 - t1245 * t873;
t718 = -t1235 * t787 + t1238 * t789;
t913 = -t1055 - t1056;
t697 = t1242 * t913 + t1246 * t718;
t716 = t1235 * t789 + t1238 * t787;
t655 = t1236 * t697 - t1239 * t716;
t656 = t1236 * t716 + t1239 * t697;
t1321 = t1243 * t656 + t1247 * t655;
t872 = (qJD(6) + t1159) * t1059 + t1332;
t786 = -t1241 * t872 + t1245 * t1414;
t788 = -t1241 * t1414 - t1245 * t872;
t717 = -t1235 * t786 + t1238 * t788;
t964 = -t1056 + t1055;
t709 = -t1242 * t964 + t1246 * t717;
t715 = -t1235 * t788 - t1238 * t786;
t658 = t1236 * t709 + t1239 * t715;
t659 = -t1236 * t715 + t1239 * t709;
t1320 = t1243 * t659 + t1247 * t658;
t950 = -t1157 - t1055;
t846 = t1241 * t950 + t1419;
t847 = t1245 * t950 - t1421;
t776 = -t1235 * t846 + t1238 * t847;
t733 = t1242 * t872 + t1246 * t776;
t775 = t1235 * t847 + t1238 * t846;
t682 = t1236 * t733 - t1239 * t775;
t683 = t1236 * t775 + t1239 * t733;
t1319 = t1243 * t683 + t1247 * t682;
t1005 = -t1056 - t1157;
t878 = t1005 * t1245 - t1392;
t879 = -t1005 * t1241 - t1388;
t793 = -t1235 * t878 + t1238 * t879;
t748 = t1242 * t1414 + t1246 * t793;
t792 = t1235 * t879 + t1238 * t878;
t689 = t1236 * t748 - t1239 * t792;
t690 = t1236 * t792 + t1239 * t748;
t1318 = t1243 * t690 + t1247 * t689;
t1022 = -t1056 + t1157;
t888 = t1022 * t1245 + t1421;
t890 = -t1022 * t1241 + t1419;
t804 = -t1235 * t888 + t1238 * t890;
t755 = -t1242 * t877 + t1246 * t804;
t802 = -t1235 * t890 - t1238 * t888;
t698 = t1236 * t755 + t1239 * t802;
t700 = -t1236 * t802 + t1239 * t755;
t1317 = t1243 * t700 + t1247 * t698;
t1021 = t1055 - t1157;
t889 = t1021 * t1241 + t1388;
t891 = t1021 * t1245 - t1392;
t805 = -t1235 * t889 + t1238 * t891;
t756 = -t1242 * t873 + t1246 * t805;
t803 = -t1235 * t891 - t1238 * t889;
t699 = t1236 * t756 + t1239 * t803;
t701 = -t1236 * t803 + t1239 * t756;
t1316 = t1243 * t701 + t1247 * t699;
t909 = -qJD(6) * t1059 - t1332;
t868 = t1057 * t1374 + t1245 * t909;
t869 = t1057 * t1373 - t1241 * t909;
t784 = -t1235 * t868 + t1238 * t869;
t768 = t1246 * t784 - t1343;
t782 = -t1235 * t869 - t1238 * t868;
t704 = t1236 * t768 + t1239 * t782;
t706 = -t1236 * t782 + t1239 * t768;
t1315 = t1243 * t706 + t1247 * t704;
t870 = t1059 * t1373 - t1241 * t1256;
t871 = -t1059 * t1374 - t1245 * t1256;
t785 = -t1235 * t870 + t1238 * t871;
t769 = t1246 * t785 + t1343;
t783 = -t1235 * t871 - t1238 * t870;
t705 = t1236 * t769 + t1239 * t783;
t707 = -t1236 * t783 + t1239 * t769;
t1314 = t1243 * t707 + t1247 * t705;
t934 = (-t1057 * t1241 - t1059 * t1245) * t1159;
t935 = (-t1057 * t1245 + t1059 * t1241) * t1159;
t842 = -t1235 * t934 + t1238 * t935;
t832 = t1242 * t1257 + t1246 * t842;
t841 = -t1235 * t935 - t1238 * t934;
t764 = t1236 * t832 + t1239 * t841;
t765 = -t1236 * t841 + t1239 * t832;
t1313 = t1243 * t765 + t1247 * t764;
t770 = t1236 * t800 - t1239 * t948;
t771 = t1236 * t948 + t1239 * t800;
t1312 = t1243 * t771 + t1247 * t770;
t1011 = t1126 + t1409;
t979 = -t1051 - t1377;
t901 = -t1235 * t984 - t1238 * t979;
t845 = -t1011 * t1242 + t1246 * t901;
t899 = -t1235 * t979 + t1238 * t984;
t790 = t1236 * t845 - t1239 * t899;
t791 = t1236 * t899 + t1239 * t845;
t1311 = t1243 * t791 + t1247 * t790;
t1062 = -t1126 + t1409;
t980 = t1051 - t1377;
t900 = -t1235 * t982 + t1238 * t980;
t862 = -t1062 * t1242 + t1246 * t900;
t898 = -t1235 * t980 - t1238 * t982;
t797 = t1236 * t862 + t1239 * t898;
t798 = -t1236 * t898 + t1239 * t862;
t1310 = t1243 * t798 + t1247 * t797;
t1029 = -t1408 - t1409;
t915 = t1029 * t1238 - t1425;
t853 = -t1242 * t980 + t1246 * t915;
t914 = t1029 * t1235 + t1423;
t812 = t1236 * t853 - t1239 * t914;
t813 = t1236 * t914 + t1239 * t853;
t1309 = t1243 * t813 + t1247 * t812;
t1060 = -t1126 - t1408;
t930 = -t1060 * t1235 - t1394;
t867 = t1242 * t982 + t1246 * t930;
t929 = t1060 * t1238 - t1397;
t817 = t1236 * t867 - t1239 * t929;
t818 = t1236 * t929 + t1239 * t867;
t1308 = t1243 * t818 + t1247 * t817;
t1081 = -t1126 + t1408;
t945 = -t1081 * t1235 + t1423;
t882 = -t1242 * t984 + t1246 * t945;
t943 = -t1081 * t1238 - t1425;
t824 = t1236 * t882 + t1239 * t943;
t826 = -t1236 * t943 + t1239 * t882;
t1307 = t1243 * t826 + t1247 * t824;
t1080 = -t1408 + t1409;
t946 = t1080 * t1238 - t1397;
t883 = -t1242 * t979 + t1246 * t946;
t944 = -t1080 * t1235 - t1394;
t825 = t1236 * t883 + t1239 * t944;
t827 = -t1236 * t944 + t1239 * t883;
t1306 = t1243 * t827 + t1247 * t825;
t976 = -t1051 * t1235 + t1128 * t1371;
t918 = t1246 * t976 - t1341;
t975 = -t1051 * t1238 - t1128 * t1372;
t854 = t1236 * t918 + t1239 * t975;
t856 = -t1236 * t975 + t1239 * t918;
t1305 = t1243 * t856 + t1247 * t854;
t978 = t1052 * t1238 - t1130 * t1372;
t919 = t1246 * t978 + t1341;
t977 = -t1052 * t1235 - t1130 * t1371;
t855 = t1236 * t919 + t1239 * t977;
t857 = -t1236 * t977 + t1239 * t919;
t1304 = t1243 * t857 + t1247 * t855;
t1006 = (t1128 * t1235 + t1130 * t1238) * t1164;
t1007 = (-t1128 * t1238 + t1130 * t1235) * t1164;
t956 = t1007 * t1246 + t1380;
t896 = t1006 * t1239 + t1236 * t956;
t897 = -t1006 * t1236 + t1239 * t956;
t1303 = t1243 * t897 + t1247 * t896;
t1302 = t1243 * t903 + t1386;
t1077 = t1408 + t1162;
t1040 = -t1135 - t1093;
t954 = -t1036 * t1246 - t1040 * t1242;
t911 = t1077 * t1239 + t1236 * t954;
t912 = -t1077 * t1236 + t1239 * t954;
t1301 = t1243 * t912 + t1247 * t911;
t1111 = -t1162 + t1408;
t1037 = (-qJD(4) - t1185) * t1166 - t1330;
t953 = t1037 * t1246 - t1039 * t1242;
t920 = t1111 * t1239 + t1236 * t953;
t921 = -t1111 * t1236 + t1239 * t953;
t1300 = t1243 * t921 + t1247 * t920;
t1087 = -t1408 - t1407;
t1000 = t1087 * t1246 - t1420;
t924 = t1000 * t1236 + t1037 * t1239;
t925 = t1000 * t1239 - t1037 * t1236;
t1299 = t1243 * t925 + t1247 * t924;
t1100 = -t1162 - t1407;
t1009 = -t1100 * t1242 - t1381;
t931 = t1009 * t1236 - t1039 * t1239;
t932 = t1009 * t1239 + t1039 * t1236;
t1298 = t1243 * t932 + t1247 * t931;
t1134 = -t1162 + t1407;
t1018 = -t1134 * t1242 + t1418;
t938 = t1018 * t1236 + t1040 * t1239;
t940 = t1018 * t1239 - t1040 * t1236;
t1297 = t1243 * t940 + t1247 * t938;
t1133 = t1408 - t1407;
t1019 = t1133 * t1246 - t1382;
t939 = t1019 * t1236 + t1036 * t1239;
t941 = t1019 * t1239 - t1036 * t1236;
t1296 = t1243 * t941 + t1247 * t939;
t1033 = t1164 * t1369 + t1380;
t988 = t1033 * t1236 + t1338;
t990 = t1033 * t1239 - t1339;
t1295 = t1243 * t990 + t1247 * t988;
t1035 = t1093 * t1246 - t1166 * t1370;
t989 = t1035 * t1236 - t1338;
t991 = t1035 * t1239 + t1339;
t1294 = t1243 * t991 + t1247 * t989;
t1067 = (-t1164 * t1246 + t1166 * t1242) * t1185;
t1025 = t1236 * t1067 - t1239 * t1324;
t1026 = t1239 * t1067 + t1236 * t1324;
t1292 = t1025 * t1247 + t1026 * t1243;
t1043 = -t1114 * t1236 + t1239 * t1410;
t1045 = -t1114 * t1239 - t1236 * t1410;
t1291 = t1043 * t1247 + t1045 * t1243;
t1119 = t1176 + t1152;
t1275 = -t1328 + t1368;
t1044 = -t1119 * t1239 + t1236 * t1275;
t1046 = t1119 * t1236 + t1239 * t1275;
t1290 = t1044 * t1247 + t1046 * t1243;
t1140 = -t1406 - t1187;
t1072 = t1140 * t1236 + t1422;
t1073 = t1140 * t1239 - t1424;
t1289 = t1072 * t1247 + t1073 * t1243;
t1158 = -t1188 - t1406;
t1085 = t1158 * t1239 - t1376;
t1086 = -t1158 * t1236 - t1375;
t1288 = t1085 * t1247 + t1086 * t1243;
t1174 = -t1188 + t1406;
t1094 = t1174 * t1239 + t1424;
t1096 = -t1174 * t1236 + t1422;
t1287 = t1094 * t1247 + t1096 * t1243;
t1173 = t1187 - t1406;
t1095 = t1173 * t1236 + t1375;
t1097 = t1173 * t1239 - t1376;
t1286 = t1095 * t1247 + t1097 * t1243;
t1106 = t1189 * t1363 - t1239 * t1328;
t1107 = t1189 * t1362 + t1236 * t1328;
t1285 = t1106 * t1247 + t1107 * t1243;
t1108 = t1152 * t1236 + t1191 * t1362;
t1109 = t1152 * t1239 - t1191 * t1363;
t1284 = t1108 * t1247 + t1109 * t1243;
t1131 = (-t1189 * t1236 - t1191 * t1239) * t1227;
t1132 = (-t1189 * t1239 + t1191 * t1236) * t1227;
t1283 = t1131 * t1247 + t1132 * t1243;
t1138 = g(3) * t1358 - t1329;
t1282 = -t1247 * t1138 + t1243 * t1139;
t1071 = t1138 * t1243 + t1139 * t1247;
t1281 = t1169 * t1247 + t1172 * t1243;
t1170 = -t1208 + t1198;
t1171 = t1199 + t1207;
t1280 = -t1170 * t1247 + t1171 * t1243;
t1279 = t1186 * t1247 - t1365;
t1201 = t1406 - t1337;
t1278 = t1201 * t1247 + t1367;
t1277 = t1203 * t1243 + t1366;
t1202 = -t1406 + t1336;
t1276 = t1202 * t1243 + t1364;
t1179 = t1220 * t1248 - t1221 * t1244;
t618 = -pkin(5) * t801 + pkin(10) * t626;
t567 = -pkin(10) * t1396 - qJ(5) * t598 - t1235 * t618;
t583 = -pkin(4) * t598 - pkin(5) * t625;
t594 = t1242 * t599 - t1246 * t801;
t557 = -pkin(9) * t594 - t1242 * t583 + t1246 * t567;
t562 = -pkin(3) * t594 + pkin(4) * t801 + pkin(10) * t1399 - qJ(5) * t599 - t1238 * t618;
t544 = -pkin(2) * t594 + qJ(3) * t566 + t1236 * t557 + t1239 * t562;
t545 = -qJ(3) * t565 - t1236 * t562 + t1239 * t557;
t559 = -t1243 * t565 + t1247 * t566;
t1273 = pkin(8) * t559 + t1243 * t545 + t1247 * t544;
t613 = -pkin(5) * t913 + pkin(10) * t789 + t626;
t617 = -pkin(10) * t787 - t625;
t584 = -qJ(5) * t716 - t1235 * t613 + t1238 * t617;
t676 = -pkin(4) * t716 - pkin(5) * t787;
t696 = t1242 * t718 - t1246 * t913;
t573 = -pkin(9) * t696 - t1242 * t676 + t1246 * t584;
t579 = -pkin(3) * t696 + pkin(4) * t913 - qJ(5) * t718 - t1235 * t617 - t1238 * t613;
t560 = -pkin(2) * t696 + qJ(3) * t656 + t1236 * t573 + t1239 * t579;
t561 = -qJ(3) * t655 - t1236 * t579 + t1239 * t573;
t609 = -t1243 * t655 + t1247 * t656;
t1272 = pkin(8) * t609 + t1243 * t561 + t1247 * t560;
t644 = -pkin(4) * t775 - pkin(5) * t846 + t673;
t719 = -pkin(5) * t872 + pkin(10) * t847 - t1389;
t745 = -pkin(10) * t846 + t1393;
t647 = -qJ(5) * t775 - t1235 * t719 + t1238 * t745;
t732 = t1242 * t776 - t1246 * t872;
t604 = -pkin(9) * t732 - t1242 * t644 + t1246 * t647;
t619 = -pkin(3) * t732 + pkin(4) * t872 - qJ(5) * t776 - t1235 * t745 - t1238 * t719;
t571 = -pkin(2) * t732 + qJ(3) * t683 + t1236 * t604 + t1239 * t619;
t574 = -qJ(3) * t682 - t1236 * t619 + t1239 * t604;
t635 = -t1243 * t682 + t1247 * t683;
t1271 = pkin(8) * t635 + t1243 * t574 + t1247 * t571;
t678 = t1242 * t695 - t1246 * t838;
t612 = -pkin(9) * t678 + (-qJ(5) * t1246 + t1401) * t694;
t628 = -pkin(3) * t678 + pkin(4) * t838 - qJ(5) * t695;
t572 = -pkin(2) * t678 + qJ(3) * t639 + t1236 * t612 + t1239 * t628;
t581 = -qJ(3) * t638 - t1236 * t628 + t1239 * t612;
t606 = -t1243 * t638 + t1247 * t639;
t1270 = pkin(8) * t606 + t1243 * t581 + t1247 * t572;
t653 = -pkin(4) * t792 - pkin(5) * t878 + t674;
t721 = -pkin(5) * t1414 + pkin(10) * t879 + t1393;
t757 = -pkin(10) * t878 + t1389;
t657 = -qJ(5) * t792 - t1235 * t721 + t1238 * t757;
t747 = t1242 * t793 - t1246 * t1414;
t607 = -pkin(9) * t747 - t1242 * t653 + t1246 * t657;
t622 = -pkin(3) * t747 + pkin(4) * t1414 - qJ(5) * t793 - t1235 * t757 - t1238 * t721;
t575 = -pkin(2) * t747 + qJ(3) * t690 + t1236 * t607 + t1239 * t622;
t582 = -qJ(3) * t689 - t1236 * t622 + t1239 * t607;
t643 = -t1243 * t689 + t1247 * t690;
t1269 = pkin(8) * t643 + t1243 * t582 + t1247 * t575;
t684 = -qJ(5) * t899 - t694;
t844 = t1011 * t1246 + t1242 * t901;
t667 = -pkin(9) * t844 + t1246 * t684 + t1401 * t899;
t668 = -pkin(3) * t844 - pkin(4) * t1011 - qJ(5) * t901 - t695;
t608 = -pkin(2) * t844 + qJ(3) * t791 + t1236 * t667 + t1239 * t668;
t611 = -qJ(3) * t790 - t1236 * t668 + t1239 * t667;
t720 = -t1243 * t790 + t1247 * t791;
t1268 = pkin(8) * t720 + t1243 * t611 + t1247 * t608;
t744 = -pkin(4) * t914 + t772;
t796 = -qJ(5) * t914 + t1398;
t852 = t1242 * t915 + t1246 * t980;
t677 = -pkin(9) * t852 - t1242 * t744 + t1246 * t796;
t729 = -pkin(3) * t852 - pkin(4) * t980 - qJ(5) * t915 + t1395;
t627 = -pkin(2) * t852 + qJ(3) * t813 + t1236 * t677 + t1239 * t729;
t636 = -qJ(3) * t812 - t1236 * t729 + t1239 * t677;
t725 = -t1243 * t812 + t1247 * t813;
t1267 = pkin(8) * t725 + t1243 * t636 + t1247 * t627;
t746 = -pkin(4) * t929 + t773;
t806 = -qJ(5) * t929 + t1395;
t866 = t1242 * t930 - t1246 * t982;
t681 = -pkin(9) * t866 - t1242 * t746 + t1246 * t806;
t735 = -pkin(3) * t866 + pkin(4) * t982 - qJ(5) * t930 - t1398;
t629 = -pkin(2) * t866 + qJ(3) * t818 + t1236 * t681 + t1239 * t735;
t637 = -qJ(3) * t817 - t1236 * t735 + t1239 * t681;
t734 = -t1243 * t817 + t1247 * t818;
t1266 = pkin(8) * t734 + t1243 * t637 + t1247 * t629;
t664 = qJ(3) * t771 + (-pkin(9) * t1236 + t1348) * t799;
t675 = -qJ(3) * t770 + (-pkin(9) * t1239 + t1402) * t799;
t692 = -t1243 * t770 + t1247 * t771;
t1265 = pkin(8) * t692 + t1243 * t675 + t1247 * t664;
t952 = -t1036 * t1242 + t1040 * t1246;
t774 = -pkin(9) * t952 - t799;
t712 = qJ(3) * t912 + t1236 * t774 + t1348 * t952;
t724 = -qJ(3) * t911 + t1239 * t774 + t1402 * t952;
t830 = -t1243 * t911 + t1247 * t912;
t1264 = pkin(8) * t830 + t1243 * t724 + t1247 * t712;
t999 = t1087 * t1242 + t1418;
t834 = -pkin(3) * t999 + t886;
t892 = -pkin(9) * t999 + t1391;
t737 = -pkin(2) * t999 + qJ(3) * t925 + t1236 * t892 + t1239 * t834;
t758 = -qJ(3) * t924 - t1236 * t834 + t1239 * t892;
t836 = -t1243 * t924 + t1247 * t925;
t1263 = pkin(8) * t836 + t1243 * t758 + t1247 * t737;
t1008 = t1100 * t1246 - t1382;
t835 = -pkin(3) * t1008 + t887;
t895 = -pkin(9) * t1008 + t1387;
t741 = -pkin(2) * t1008 + qJ(3) * t932 + t1236 * t895 + t1239 * t835;
t763 = -qJ(3) * t931 - t1236 * t835 + t1239 * t895;
t840 = -t1243 * t931 + t1247 * t932;
t1262 = pkin(8) * t840 + t1243 * t763 + t1247 * t741;
t1127 = -t1187 - t1188;
t843 = -pkin(2) * t1127 + qJ(3) * t1046 + t903;
t860 = -qJ(3) * t1044 - t902;
t961 = -t1044 * t1243 + t1046 * t1247;
t1261 = pkin(8) * t961 + t1243 * t860 + t1247 * t843;
t1013 = -qJ(3) * t1072 - t1379;
t968 = -pkin(2) * t1114 + qJ(3) * t1073 + t1378;
t995 = -t1072 * t1243 + t1073 * t1247;
t1260 = pkin(8) * t995 + t1013 * t1243 + t1247 * t968;
t1012 = -t1085 * t1243 + t1086 * t1247;
t1020 = -qJ(3) * t1085 - t1378;
t974 = -pkin(2) * t1410 + qJ(3) * t1086 - t1379;
t1259 = pkin(8) * t1012 + t1020 * t1243 + t1247 * t974;
t1120 = t1170 * t1243 + t1171 * t1247;
t1258 = pkin(8) * t1120 + t1071;
t819 = t1247 * t903 - t1390;
t884 = pkin(2) * t1105 + qJ(3) * t903;
t1255 = pkin(8) * t819 - qJ(3) * t1390 + t1247 * t884;
t1231 = t1237 * t1232;
t1217 = qJDD(1) * t1244 + t1248 * t1249;
t1210 = t1240 * t1226;
t1205 = t1351 * t1361;
t1204 = (t1233 - t1234) * t1361;
t1200 = -pkin(7) * t1217 + g(3) * t1248;
t1175 = t1351 * t1346;
t1168 = (t1349 + (qJD(2) + t1227) * t1384) * t1237;
t1167 = t1198 * t1247 - t1233 * t1346;
t1163 = -t1199 * t1243 - t1234 * t1346;
t1154 = t1202 * t1247 - t1365;
t1153 = -t1201 * t1243 + t1366;
t1150 = t1188 - t1187;
t1137 = (t1231 * t1247 * t1249 + t1169 * t1240) * t1243;
t1136 = (-t1231 * t1356 + t1415) * t1247;
t1121 = -t1169 * t1243 + t1172 * t1247;
t1104 = t1237 * t1172 + t1240 * t1277;
t1103 = -t1237 * t1171 + t1240 * t1276;
t1102 = -t1237 * t1170 + t1240 * t1278;
t1101 = t1237 * t1277 - t1415;
t1099 = -t1237 * t1168 + t1240 * t1279;
t1098 = t1240 * t1168 + t1237 * t1279;
t1091 = -t1237 * t1204 + t1240 * t1281;
t1090 = t1237 * t1205 + t1240 * t1280;
t1089 = -t1240 * t1205 + t1237 * t1280;
t1084 = t1246 * t1092;
t1066 = (-t1164 * t1242 - t1166 * t1246) * t1185;
t1065 = -t1104 * t1244 + t1155 * t1248;
t1064 = t1104 * t1248 + t1155 * t1244;
t1061 = -t1131 * t1243 + t1132 * t1247;
t1054 = -t1099 * t1244 + t1144 * t1248;
t1053 = t1099 * t1248 + t1144 * t1244;
t1049 = t1237 * t1177 + t1240 * t1282;
t1048 = -t1240 * t1177 + t1237 * t1282;
t1042 = t1240 * t1283 - t1360;
t1034 = t1093 * t1242 + t1166 * t1369;
t1032 = t1164 * t1370 - t1084;
t1031 = -t1108 * t1243 + t1109 * t1247;
t1030 = -t1106 * t1243 + t1107 * t1247;
t1028 = -t1090 * t1244 + t1120 * t1248;
t1027 = t1090 * t1248 + t1120 * t1244;
t1017 = t1133 * t1242 + t1381;
t1016 = t1134 * t1246 + t1420;
t1015 = -t1095 * t1243 + t1097 * t1247;
t1014 = -t1094 * t1243 + t1096 * t1247;
t1010 = -t1357 + (-t1101 * t1237 - t1104 * t1240) * pkin(8);
t1004 = -t1355 + (-t1098 * t1237 - t1099 * t1240) * pkin(8);
t1003 = t1240 * t1284 - t1334;
t1002 = t1240 * t1285 + t1334;
t1001 = -pkin(1) * t1101 + t1237 * t1138 + t1240 * t1325;
t994 = -pkin(1) * t1098 + t1237 * t1139 + t1240 * t1326;
t973 = -t1237 * t1275 + t1240 * t1286;
t972 = -t1237 * t1119 + t1240 * t1287;
t971 = pkin(8) * t1071 * t1240 - pkin(1) * t1048;
t970 = -t1049 * t1244 + t1071 * t1248;
t969 = t1049 * t1248 + t1071 * t1244;
t966 = -t1237 * t1410 + t1240 * t1288;
t965 = t1237 * t1288 + t1240 * t1410;
t963 = -pkin(1) * t1089 + t1240 * t1258;
t962 = (-t1048 * t1237 - t1049 * t1240) * pkin(8);
t960 = -t1043 * t1243 + t1045 * t1247;
t959 = -t1237 * t1114 + t1240 * t1289;
t958 = t1240 * t1114 + t1237 * t1289;
t957 = (-t1089 * t1237 - t1090 * t1240) * pkin(8) - t1282;
t955 = t1007 * t1242 - t1084;
t951 = t1037 * t1242 + t1039 * t1246;
t942 = pkin(2) * t1085 - t987;
t937 = pkin(2) * t1072 - t986;
t936 = -t1025 * t1243 + t1026 * t1247;
t933 = -t1237 * t1150 + t1240 * t1291;
t923 = -t1237 * t1127 + t1240 * t1290;
t922 = t1240 * t1127 + t1237 * t1290;
t917 = t1242 * t978 - t1340;
t916 = t1242 * t976 + t1340;
t908 = -t1243 * t989 + t1247 * t991;
t907 = -t1243 * t988 + t1247 * t990;
t906 = t1012 * t1248 - t1244 * t966;
t905 = t1012 * t1244 + t1248 * t966;
t904 = -t1237 * t1066 + t1240 * t1292;
t894 = -t1244 * t959 + t1248 * t995;
t893 = t1244 * t995 + t1248 * t959;
t881 = t1242 * t946 + t1246 * t979;
t880 = t1242 * t945 + t1246 * t984;
t861 = t1062 * t1246 + t1242 * t900;
t859 = -t1237 * t1034 + t1240 * t1294;
t858 = -t1237 * t1032 + t1240 * t1295;
t851 = -t1243 * t939 + t1247 * t941;
t850 = -t1243 * t938 + t1247 * t940;
t849 = -t1244 * t923 + t1248 * t961;
t848 = t1244 * t961 + t1248 * t923;
t833 = -t1243 * t920 + t1247 * t921;
t831 = t1242 * t842 - t1246 * t1257;
t829 = -t1237 * t1017 + t1240 * t1296;
t828 = -t1237 * t1016 + t1240 * t1297;
t823 = -t1237 * t1008 + t1240 * t1298;
t822 = t1240 * t1008 + t1237 * t1298;
t821 = -t1237 * t999 + t1240 * t1299;
t820 = t1237 * t1299 + t1240 * t999;
t816 = t1247 * t1020 - t1243 * t974 + (-t1237 * t965 - t1240 * t966) * pkin(8);
t815 = pkin(2) * t931 - pkin(3) * t1039 + pkin(9) * t1009 + t1391;
t814 = -t1243 * t896 + t1247 * t897;
t811 = t1237 * t1105 + t1240 * t1302;
t810 = -t1240 * t1105 + t1237 * t1302;
t809 = pkin(2) * t924 + pkin(3) * t1037 + pkin(9) * t1000 - t1387;
t808 = t1247 * t1013 - t1243 * t968 + (-t1237 * t958 - t1240 * t959) * pkin(8);
t807 = -t1237 * t951 + t1240 * t1300;
t795 = -t1237 * t952 + t1240 * t1301;
t794 = t1237 * t1301 + t1240 * t952;
t781 = -pkin(1) * t965 - t1237 * t942 + t1240 * t1259;
t780 = -t1243 * t855 + t1247 * t857;
t779 = -t1243 * t854 + t1247 * t856;
t778 = -pkin(1) * t958 - t1237 * t937 + t1240 * t1260;
t777 = -t1237 * t955 + t1240 * t1303;
t767 = t1242 * t785 - t1342;
t766 = t1242 * t784 + t1342;
t762 = -t1244 * t823 + t1248 * t840;
t761 = t1244 * t840 + t1248 * t823;
t760 = -t1237 * t917 + t1240 * t1304;
t759 = -t1237 * t916 + t1240 * t1305;
t754 = t1242 * t805 + t1246 * t873;
t753 = t1242 * t804 + t1246 * t877;
t752 = -t1244 * t821 + t1248 * t836;
t751 = t1244 * t836 + t1248 * t821;
t743 = -t1243 * t825 + t1247 * t827;
t742 = -t1243 * t824 + t1247 * t826;
t736 = pkin(2) * t911 + pkin(3) * t1077 + pkin(9) * t954 + t800;
t731 = -t1244 * t795 + t1248 * t830;
t730 = t1244 * t830 + t1248 * t795;
t728 = -t1244 * t811 + t1248 * t819;
t727 = t1244 * t819 + t1248 * t811;
t726 = -t1243 * t843 + t1247 * t860 + (-t1237 * t922 - t1240 * t923) * pkin(8);
t723 = -pkin(1) * t922 - t1044 * t1404 + t1240 * t1261;
t722 = -t1243 * t797 + t1247 * t798;
t714 = -t1237 * t881 + t1240 * t1306;
t713 = -t1237 * t880 + t1240 * t1307;
t711 = -t1237 * t866 + t1240 * t1308;
t710 = t1237 * t1308 + t1240 * t866;
t708 = t1242 * t717 + t1246 * t964;
t703 = -t1237 * t852 + t1240 * t1309;
t702 = t1237 * t1309 + t1240 * t852;
t693 = pkin(2) * t770 - pkin(3) * t948 + pkin(9) * t800;
t691 = -t1237 * t861 + t1240 * t1310;
t688 = -t1243 * t764 + t1247 * t765;
t687 = -t1237 * t844 + t1240 * t1311;
t686 = t1237 * t1311 + t1240 * t844;
t685 = -qJ(3) * t1386 - t1243 * t884 + (-t1237 * t810 - t1240 * t811) * pkin(8);
t680 = -pkin(1) * t810 + t1240 * t1255 - t1404 * t902;
t671 = -t1237 * t831 + t1240 * t1313;
t670 = -t1237 * t799 + t1240 * t1312;
t669 = t1237 * t1312 + t1240 * t799;
t666 = -t1244 * t711 + t1248 * t734;
t665 = t1244 * t734 + t1248 * t711;
t663 = -t1244 * t703 + t1248 * t725;
t662 = t1244 * t725 + t1248 * t703;
t661 = pkin(2) * t817 - pkin(3) * t929 + pkin(9) * t867 + t1242 * t806 + t1246 * t746;
t660 = pkin(2) * t812 - pkin(3) * t914 + pkin(9) * t853 + t1242 * t796 + t1246 * t744;
t654 = -t1243 * t741 + t1247 * t763 + (-t1237 * t822 - t1240 * t823) * pkin(8);
t652 = -t1243 * t705 + t1247 * t707;
t651 = -t1243 * t704 + t1247 * t706;
t650 = -t1244 * t687 + t1248 * t720;
t649 = t1244 * t720 + t1248 * t687;
t648 = -t1243 * t737 + t1247 * t758 + (-t1237 * t820 - t1240 * t821) * pkin(8);
t646 = -t1243 * t699 + t1247 * t701;
t645 = -t1243 * t698 + t1247 * t700;
t642 = -pkin(1) * t822 - t1237 * t815 + t1240 * t1262;
t641 = pkin(2) * t790 + pkin(9) * t845 + t1242 * t684 + t1347 * t899;
t640 = -pkin(1) * t820 - t1237 * t809 + t1240 * t1263;
t634 = -t1244 * t670 + t1248 * t692;
t633 = t1244 * t692 + t1248 * t670;
t632 = -t1243 * t712 + t1247 * t724 + (-t1237 * t794 - t1240 * t795) * pkin(8);
t631 = -t1237 * t767 + t1240 * t1314;
t630 = -t1237 * t766 + t1240 * t1315;
t624 = -t1237 * t754 + t1240 * t1316;
t623 = -t1237 * t753 + t1240 * t1317;
t621 = -t1237 * t747 + t1240 * t1318;
t620 = t1237 * t1318 + t1240 * t747;
t616 = -pkin(1) * t794 - t1237 * t736 + t1240 * t1264;
t615 = -t1237 * t732 + t1240 * t1319;
t614 = t1237 * t1319 + t1240 * t732;
t610 = -t1243 * t658 + t1247 * t659;
t605 = -t1237 * t708 + t1240 * t1320;
t603 = -t1237 * t696 + t1240 * t1321;
t602 = t1237 * t1321 + t1240 * t696;
t601 = -t1244 * t621 + t1248 * t643;
t600 = t1244 * t643 + t1248 * t621;
t597 = -t1244 * t615 + t1248 * t635;
t596 = t1244 * t635 + t1248 * t615;
t593 = -t1243 * t664 + t1247 * t675 + (-t1237 * t669 - t1240 * t670) * pkin(8);
t592 = pkin(2) * t689 - pkin(3) * t792 + pkin(9) * t748 + t1242 * t657 + t1246 * t653;
t591 = -t1237 * t678 + t1240 * t1322;
t590 = t1237 * t1322 + t1240 * t678;
t589 = pkin(2) * t682 - pkin(3) * t775 + pkin(9) * t733 + t1242 * t647 + t1246 * t644;
t588 = -pkin(1) * t669 - t1237 * t693 + t1240 * t1265;
t587 = pkin(2) * t638 + pkin(9) * t679 + (-qJ(5) * t1242 + t1347) * t694;
t586 = -t1243 * t629 + t1247 * t637 + (-t1237 * t710 - t1240 * t711) * pkin(8);
t585 = -t1243 * t627 + t1247 * t636 + (-t1237 * t702 - t1240 * t703) * pkin(8);
t580 = -pkin(1) * t710 - t1237 * t661 + t1240 * t1266;
t578 = -pkin(1) * t702 - t1237 * t660 + t1240 * t1267;
t577 = -t1244 * t603 + t1248 * t609;
t576 = t1244 * t609 + t1248 * t603;
t570 = -t1243 * t608 + t1247 * t611 + (-t1237 * t686 - t1240 * t687) * pkin(8);
t569 = -t1244 * t591 + t1248 * t606;
t568 = t1244 * t606 + t1248 * t591;
t564 = -pkin(1) * t686 - t1237 * t641 + t1240 * t1268;
t563 = pkin(2) * t655 - pkin(3) * t716 + pkin(9) * t697 + t1242 * t584 + t1246 * t676;
t558 = -t1243 * t575 + t1247 * t582 + (-t1237 * t620 - t1240 * t621) * pkin(8);
t556 = -t1243 * t571 + t1247 * t574 + (-t1237 * t614 - t1240 * t615) * pkin(8);
t555 = -t1237 * t594 + t1240 * t1323;
t554 = t1237 * t1323 + t1240 * t594;
t553 = -pkin(1) * t620 - t1237 * t592 + t1240 * t1269;
t552 = -t1243 * t572 + t1247 * t581 + (-t1237 * t590 - t1240 * t591) * pkin(8);
t551 = -pkin(1) * t614 - t1237 * t589 + t1240 * t1271;
t550 = -pkin(1) * t590 - t1237 * t587 + t1240 * t1270;
t549 = pkin(2) * t565 - pkin(3) * t598 + pkin(9) * t595 + t1242 * t567 + t1246 * t583;
t548 = -t1244 * t555 + t1248 * t559;
t547 = t1244 * t559 + t1248 * t555;
t546 = -t1243 * t560 + t1247 * t561 + (-t1237 * t602 - t1240 * t603) * pkin(8);
t543 = -pkin(1) * t602 - t1237 * t563 + t1240 * t1272;
t542 = -t1243 * t544 + t1247 * t545 + (-t1237 * t554 - t1240 * t555) * pkin(8);
t541 = -pkin(1) * t554 - t1237 * t549 + t1240 * t1273;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1217, -t1218, 0, t1180, 0, 0, 0, 0, 0, 0, t1065, t1054, t1028, t970, 0, 0, 0, 0, 0, 0, t894, t906, t849, t728, 0, 0, 0, 0, 0, 0, t752, t762, t731, t634, 0, 0, 0, 0, 0, 0, t663, t666, t650, t569, 0, 0, 0, 0, 0, 0, t597, t601, t577, t548; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1218, -t1217, 0, t1179, 0, 0, 0, 0, 0, 0, t1064, t1053, t1027, t969, 0, 0, 0, 0, 0, 0, t893, t905, t848, t727, 0, 0, 0, 0, 0, 0, t751, t761, t730, t633, 0, 0, 0, 0, 0, 0, t662, t665, t649, t568, 0, 0, 0, 0, 0, 0, t596, t600, t576, t547; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1101, t1098, t1089, t1048, 0, 0, 0, 0, 0, 0, t958, t965, t922, t810, 0, 0, 0, 0, 0, 0, t820, t822, t794, t669, 0, 0, 0, 0, 0, 0, t702, t710, t686, t590, 0, 0, 0, 0, 0, 0, t614, t620, t602, t554; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1218, 0, -t1217, 0, t1327, -t1200, -t1179, -pkin(7) * t1179, -t1137 * t1244 + t1167 * t1248, -t1091 * t1244 + t1121 * t1248, -t1102 * t1244 + t1153 * t1248, -t1136 * t1244 + t1163 * t1248, -t1103 * t1244 + t1154 * t1248, t1175 * t1248 + t1244 * t1360, -pkin(7) * t1064 - t1001 * t1244 + t1010 * t1248, -pkin(7) * t1053 + t1004 * t1248 - t1244 * t994, -pkin(7) * t1027 - t1244 * t963 + t1248 * t957, -pkin(7) * t969 - t1244 * t971 + t1248 * t962, -t1003 * t1244 + t1031 * t1248, -t1244 * t933 + t1248 * t960, t1014 * t1248 - t1244 * t972, -t1002 * t1244 + t1030 * t1248, t1015 * t1248 - t1244 * t973, -t1042 * t1244 + t1061 * t1248, -pkin(7) * t893 - t1244 * t778 + t1248 * t808, -pkin(7) * t905 - t1244 * t781 + t1248 * t816, -pkin(7) * t848 - t1244 * t723 + t1248 * t726, -pkin(7) * t727 - t1244 * t680 + t1248 * t685, -t1244 * t859 + t1248 * t908, -t1244 * t807 + t1248 * t833, -t1244 * t828 + t1248 * t850, -t1244 * t858 + t1248 * t907, -t1244 * t829 + t1248 * t851, -t1244 * t904 + t1248 * t936, -pkin(7) * t751 - t1244 * t640 + t1248 * t648, -pkin(7) * t761 - t1244 * t642 + t1248 * t654, -pkin(7) * t730 - t1244 * t616 + t1248 * t632, -pkin(7) * t633 - t1244 * t588 + t1248 * t593, -t1244 * t760 + t1248 * t780, -t1244 * t691 + t1248 * t722, -t1244 * t713 + t1248 * t742, -t1244 * t759 + t1248 * t779, -t1244 * t714 + t1248 * t743, -t1244 * t777 + t1248 * t814, -pkin(7) * t662 - t1244 * t578 + t1248 * t585, -pkin(7) * t665 - t1244 * t580 + t1248 * t586, -pkin(7) * t649 - t1244 * t564 + t1248 * t570, -pkin(7) * t568 - t1244 * t550 + t1248 * t552, -t1244 * t631 + t1248 * t652, -t1244 * t605 + t1248 * t610, -t1244 * t623 + t1248 * t645, -t1244 * t630 + t1248 * t651, -t1244 * t624 + t1248 * t646, -t1244 * t671 + t1248 * t688, -pkin(7) * t596 - t1244 * t551 + t1248 * t556, -pkin(7) * t600 - t1244 * t553 + t1248 * t558, -pkin(7) * t576 - t1244 * t543 + t1248 * t546, -pkin(7) * t547 - t1244 * t541 + t1248 * t542; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1217, 0, t1218, 0, t1200, t1327, t1180, pkin(7) * t1180, t1137 * t1248 + t1167 * t1244, t1091 * t1248 + t1121 * t1244, t1102 * t1248 + t1153 * t1244, t1136 * t1248 + t1163 * t1244, t1103 * t1248 + t1154 * t1244, t1175 * t1244 - t1248 * t1360, pkin(7) * t1065 + t1001 * t1248 + t1010 * t1244, pkin(7) * t1054 + t1004 * t1244 + t1248 * t994, pkin(7) * t1028 + t1244 * t957 + t1248 * t963, pkin(7) * t970 + t1244 * t962 + t1248 * t971, t1003 * t1248 + t1031 * t1244, t1244 * t960 + t1248 * t933, t1014 * t1244 + t1248 * t972, t1002 * t1248 + t1030 * t1244, t1015 * t1244 + t1248 * t973, t1042 * t1248 + t1061 * t1244, pkin(7) * t894 + t1244 * t808 + t1248 * t778, pkin(7) * t906 + t1244 * t816 + t1248 * t781, pkin(7) * t849 + t1244 * t726 + t1248 * t723, pkin(7) * t728 + t1244 * t685 + t1248 * t680, t1244 * t908 + t1248 * t859, t1244 * t833 + t1248 * t807, t1244 * t850 + t1248 * t828, t1244 * t907 + t1248 * t858, t1244 * t851 + t1248 * t829, t1244 * t936 + t1248 * t904, pkin(7) * t752 + t1244 * t648 + t1248 * t640, pkin(7) * t762 + t1244 * t654 + t1248 * t642, pkin(7) * t731 + t1244 * t632 + t1248 * t616, pkin(7) * t634 + t1244 * t593 + t1248 * t588, t1244 * t780 + t1248 * t760, t1244 * t722 + t1248 * t691, t1244 * t742 + t1248 * t713, t1244 * t779 + t1248 * t759, t1244 * t743 + t1248 * t714, t1244 * t814 + t1248 * t777, pkin(7) * t663 + t1244 * t585 + t1248 * t578, pkin(7) * t666 + t1244 * t586 + t1248 * t580, pkin(7) * t650 + t1244 * t570 + t1248 * t564, pkin(7) * t569 + t1244 * t552 + t1248 * t550, t1244 * t652 + t1248 * t631, t1244 * t610 + t1248 * t605, t1244 * t645 + t1248 * t623, t1244 * t651 + t1248 * t630, t1244 * t646 + t1248 * t624, t1244 * t688 + t1248 * t671, pkin(7) * t597 + t1244 * t556 + t1248 * t551, pkin(7) * t601 + t1244 * t558 + t1248 * t553, pkin(7) * t577 + t1244 * t546 + t1248 * t543, pkin(7) * t548 + t1244 * t542 + t1248 * t541; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1220, t1221, 0, 0, (t1198 * t1237 + t1247 * t1416) * t1243, t1240 * t1204 + t1237 * t1281, t1240 * t1170 + t1237 * t1278, (t1199 * t1237 - t1243 * t1416) * t1247, t1240 * t1171 + t1237 * t1276, t1210, pkin(1) * t1104 - t1240 * t1138 + t1237 * t1325, pkin(1) * t1099 - t1240 * t1139 + t1237 * t1326, pkin(1) * t1090 + t1237 * t1258, pkin(1) * t1049 + t1071 * t1400, t1237 * t1284 + t1333, t1240 * t1150 + t1237 * t1291, t1240 * t1119 + t1237 * t1287, t1237 * t1285 - t1333, t1237 * t1286 + t1240 * t1275, t1237 * t1283 + t1210, pkin(1) * t959 + t1237 * t1260 + t1240 * t937, pkin(1) * t966 + t1237 * t1259 + t1240 * t942, pkin(1) * t923 + t1044 * t1403 + t1237 * t1261, pkin(1) * t811 + t1237 * t1255 + t1403 * t902, t1240 * t1034 + t1237 * t1294, t1237 * t1300 + t1240 * t951, t1240 * t1016 + t1237 * t1297, t1240 * t1032 + t1237 * t1295, t1240 * t1017 + t1237 * t1296, t1240 * t1066 + t1237 * t1292, pkin(1) * t821 + t1237 * t1263 + t1240 * t809, pkin(1) * t823 + t1237 * t1262 + t1240 * t815, pkin(1) * t795 + t1237 * t1264 + t1240 * t736, pkin(1) * t670 + t1237 * t1265 + t1240 * t693, t1237 * t1304 + t1240 * t917, t1237 * t1310 + t1240 * t861, t1237 * t1307 + t1240 * t880, t1237 * t1305 + t1240 * t916, t1237 * t1306 + t1240 * t881, t1237 * t1303 + t1240 * t955, pkin(1) * t703 + t1237 * t1267 + t1240 * t660, pkin(1) * t711 + t1237 * t1266 + t1240 * t661, pkin(1) * t687 + t1237 * t1268 + t1240 * t641, pkin(1) * t591 + t1237 * t1270 + t1240 * t587, t1237 * t1314 + t1240 * t767, t1237 * t1320 + t1240 * t708, t1237 * t1317 + t1240 * t753, t1237 * t1315 + t1240 * t766, t1237 * t1316 + t1240 * t754, t1237 * t1313 + t1240 * t831, pkin(1) * t615 + t1237 * t1271 + t1240 * t589, pkin(1) * t621 + t1237 * t1269 + t1240 * t592, pkin(1) * t603 + t1237 * t1272 + t1240 * t563, pkin(1) * t555 + t1237 * t1273 + t1240 * t549;];
tauB_reg  = t1;
