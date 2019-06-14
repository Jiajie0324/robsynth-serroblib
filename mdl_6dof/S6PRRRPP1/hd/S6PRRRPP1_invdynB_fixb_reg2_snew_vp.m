% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRRRPP1
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,theta1,theta5]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 06:40
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRRRPP1_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPP1_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPP1_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRPP1_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRPP1_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRPP1_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 06:38:04
% EndTime: 2019-05-05 06:39:16
% DurationCPUTime: 72.55s
% Computational Cost: add. (168195->869), mult. (338565->1320), div. (0->0), fcn. (247870->12), ass. (0->651)
t1028 = sin(pkin(10));
t1031 = cos(pkin(10));
t1029 = sin(pkin(6));
t1032 = cos(pkin(6));
t1037 = sin(qJ(2));
t1040 = cos(qJ(2));
t1036 = sin(qJ(3));
t1039 = cos(qJ(3));
t1027 = sin(pkin(11));
t1030 = cos(pkin(11));
t1035 = sin(qJ(4));
t1038 = cos(qJ(4));
t1157 = qJD(2) * t1039;
t1131 = qJD(3) * t1157;
t1141 = qJDD(2) * t1036;
t995 = t1131 + t1141;
t1076 = qJDD(3) * t1038 - t1035 * t995;
t1158 = qJD(2) * t1036;
t992 = qJD(3) * t1035 + t1038 * t1158;
t1045 = qJD(4) * t992 - t1076;
t991 = -t1038 * qJD(3) + t1035 * t1158;
t932 = -t991 * qJD(4) + t1035 * qJDD(3) + t1038 * t995;
t1043 = -t1027 * t1045 + t1030 * t932;
t1014 = -qJD(4) + t1157;
t943 = t1027 * t992 + t1030 * t991;
t1162 = t943 * t1014;
t1215 = t1043 + t1162;
t945 = -t1027 * t991 + t1030 * t992;
t1194 = t943 * t945;
t1017 = qJD(3) * t1158;
t1139 = qJDD(2) * t1039;
t996 = -t1017 + t1139;
t988 = -qJDD(4) + t996;
t1047 = t988 - t1194;
t1176 = t1030 * t1047;
t1199 = t1014 ^ 2;
t940 = t945 ^ 2;
t897 = -t940 - t1199;
t759 = t1027 * t897 - t1176;
t1181 = t1027 * t1047;
t770 = t1030 * t897 + t1181;
t676 = t1035 * t770 + t1038 * t759;
t638 = -t1036 * t1215 + t1039 * t676;
t674 = t1035 * t759 - t1038 * t770;
t1103 = t1037 * t638 - t1040 * t674;
t636 = t1036 * t676 + t1039 * t1215;
t540 = -t1029 * t636 + t1032 * t1103;
t577 = t1037 * t674 + t1040 * t638;
t508 = t1028 * t577 + t1031 * t540;
t1397 = qJ(1) * t508;
t516 = t1028 * t540 - t1031 * t577;
t1396 = qJ(1) * t516;
t538 = t1029 * t1103 + t1032 * t636;
t1395 = pkin(7) * (t1029 * t538 + t1032 * t540);
t1394 = pkin(1) * t538;
t1393 = pkin(1) * t540;
t1202 = t943 ^ 2;
t908 = t1202 - t1199;
t778 = t1027 * t908 - t1176;
t784 = t1030 * t908 + t1181;
t707 = t1035 * t778 - t1038 * t784;
t1126 = t1027 * t932 + t1030 * t1045;
t1161 = t945 * t1014;
t802 = t1126 + t1161;
t656 = t1036 * t802 + t1039 * t707;
t703 = t1035 * t784 + t1038 * t778;
t1096 = t1037 * t656 + t1040 * t703;
t652 = t1036 * t707 - t1039 * t802;
t559 = -t1029 * t652 + t1032 * t1096;
t592 = -t1037 * t703 + t1040 * t656;
t1392 = t1028 * t559 - t1031 * t592;
t1072 = t1126 - t1161;
t723 = -t1027 * t1072 + t1030 * t1215;
t1183 = t1027 * t1215;
t725 = t1030 * t1072 + t1183;
t626 = t1035 * t723 + t1038 * t725;
t875 = t940 - t1202;
t619 = -t1036 * t875 + t1039 * t626;
t624 = t1035 * t725 - t1038 * t723;
t1106 = t1037 * t619 - t1040 * t624;
t617 = t1036 * t626 + t1039 * t875;
t525 = -t1029 * t617 + t1032 * t1106;
t554 = t1037 * t624 + t1040 * t619;
t1391 = t1028 * t525 - t1031 * t554;
t1390 = t1028 * t592 + t1031 * t559;
t1389 = t1028 * t554 + t1031 * t525;
t1387 = pkin(7) * t577;
t1380 = t1029 * t1096 + t1032 * t652;
t1379 = t1029 * t1106 + t1032 * t617;
t1378 = pkin(8) * t636;
t1371 = -pkin(2) * t636 - pkin(3) * t1215 - pkin(9) * t676;
t1370 = -pkin(2) * t674 + pkin(8) * t638;
t1048 = -t988 - t1194;
t1180 = t1027 * t1048;
t1212 = -t1199 - t1202;
t1233 = t1030 * t1212 - t1180;
t843 = t1030 * t1048;
t1236 = t1027 * t1212 + t843;
t1252 = t1035 * t1233 + t1038 * t1236;
t1253 = -t1035 * t1236 + t1038 * t1233;
t1282 = t1036 * t1072 + t1039 * t1253;
t1309 = t1037 * t1252 + t1040 * t1282;
t1285 = t1036 * t1253 - t1039 * t1072;
t1311 = t1037 * t1282 - t1040 * t1252;
t1335 = -t1029 * t1285 + t1032 * t1311;
t1348 = t1028 * t1309 + t1031 * t1335;
t1369 = qJ(1) * t1348;
t1213 = t1162 - t1043;
t1235 = -t1027 * t1213 - t1030 * t802;
t1237 = -t1027 * t802 + t1030 * t1213;
t1250 = t1035 * t1235 + t1038 * t1237;
t1251 = -t1035 * t1237 + t1038 * t1235;
t820 = t940 + t1202;
t1281 = -t1036 * t820 + t1039 * t1251;
t1310 = t1037 * t1250 + t1040 * t1281;
t1284 = t1036 * t1251 + t1039 * t820;
t1312 = t1037 * t1281 - t1040 * t1250;
t1334 = -t1029 * t1284 + t1032 * t1312;
t1349 = t1028 * t1310 + t1031 * t1334;
t1368 = qJ(1) * t1349;
t1350 = -t1028 * t1335 + t1031 * t1309;
t1367 = qJ(1) * t1350;
t1351 = -t1028 * t1334 + t1031 * t1310;
t1366 = qJ(1) * t1351;
t1364 = pkin(9) * t674;
t1363 = pkin(1) * t1334;
t1362 = pkin(1) * t1335;
t1337 = t1029 * t1312 + t1032 * t1284;
t1361 = pkin(1) * t1337;
t1338 = t1029 * t1311 + t1032 * t1285;
t1360 = pkin(1) * t1338;
t1353 = -pkin(3) * t674 + pkin(4) * t770;
t1347 = (-t1029 * t1337 - t1032 * t1334) * pkin(7);
t1346 = (-t1029 * t1338 - t1032 * t1335) * pkin(7);
t1345 = pkin(7) * t1309;
t1344 = pkin(7) * t1310;
t909 = -t940 + t1199;
t1222 = t1030 * t909 + t1180;
t1223 = -t1027 * t909 + t843;
t1227 = -t1035 * t1223 - t1038 * t1222;
t1226 = -t1035 * t1222 + t1038 * t1223;
t1257 = -t1036 * t1213 + t1039 * t1226;
t1280 = -t1037 * t1227 + t1040 * t1257;
t1260 = t1036 * t1226 + t1039 * t1213;
t1283 = t1037 * t1257 + t1040 * t1227;
t1313 = -t1029 * t1260 + t1032 * t1283;
t1339 = -t1028 * t1313 + t1031 * t1280;
t1336 = t1028 * t1280 + t1031 * t1313;
t1332 = pkin(8) * t1284;
t1331 = pkin(8) * t1285;
t1330 = qJ(5) * t759;
t1329 = qJ(5) * t770;
t1322 = -pkin(2) * t1284 - pkin(3) * t820 - pkin(9) * t1251;
t1321 = -pkin(2) * t1285 + pkin(3) * t1072 - pkin(9) * t1253;
t1320 = -pkin(2) * t1250 + pkin(8) * t1281;
t1319 = -pkin(2) * t1252 + pkin(8) * t1282;
t1065 = (t1027 * t943 + t1030 * t945) * t1014;
t1151 = t1014 * t1030;
t1133 = t943 * t1151;
t1152 = t1014 * t1027;
t905 = t945 * t1152;
t1117 = -t905 + t1133;
t1208 = -t1035 * t1117 - t1038 * t1065;
t1170 = t1036 * t988;
t1207 = -t1035 * t1065 + t1038 * t1117;
t1230 = t1039 * t1207 - t1170;
t1256 = -t1037 * t1208 + t1040 * t1230;
t973 = t1039 * t988;
t1234 = t1036 * t1207 + t973;
t1259 = t1037 * t1230 + t1040 * t1208;
t1286 = -t1029 * t1234 + t1032 * t1259;
t1318 = -t1028 * t1286 + t1031 * t1256;
t1071 = t1027 * t1126 - t1133;
t1118 = -t1030 * t1126 - t1152 * t943;
t1205 = -t1035 * t1071 - t1038 * t1118;
t1137 = t1036 * t1194;
t1206 = -t1035 * t1118 + t1038 * t1071;
t1231 = t1039 * t1206 - t1137;
t1255 = -t1037 * t1205 + t1040 * t1231;
t1135 = t1039 * t1194;
t1232 = t1036 * t1206 + t1135;
t1258 = t1037 * t1231 + t1040 * t1205;
t1287 = -t1029 * t1232 + t1032 * t1258;
t1317 = -t1028 * t1287 + t1031 * t1255;
t1316 = t1029 * t1283 + t1032 * t1260;
t1315 = t1028 * t1256 + t1031 * t1286;
t1314 = t1028 * t1255 + t1031 * t1287;
t1306 = pkin(9) * t1250;
t1305 = pkin(9) * t1252;
t582 = -pkin(3) * t1250 - pkin(4) * t1237;
t1292 = -pkin(3) * t1252 - pkin(4) * t1236;
t1289 = t1029 * t1258 + t1032 * t1232;
t1288 = t1029 * t1259 + t1032 * t1234;
t1276 = qJ(5) * t1233;
t1275 = qJ(5) * t1236;
t1274 = qJ(5) * t1237;
t1273 = qJ(6) * t1215;
t1201 = t991 ^ 2;
t1200 = qJD(3) ^ 2;
t1041 = qJD(2) ^ 2;
t1003 = g(1) * t1031 + g(2) * t1028;
t1191 = g(3) - qJDD(1);
t1128 = t1029 * t1191;
t1129 = g(1) * t1028 - t1031 * g(2);
t1238 = t1032 * t1129 - t1128;
t921 = -t1040 * t1003 + t1037 * t1238;
t904 = -t1041 * pkin(2) + qJDD(2) * pkin(8) + t921;
t985 = t1029 * t1129;
t1112 = t1032 * t1191 + t985;
t965 = t1039 * t1112;
t1197 = pkin(3) * t1039;
t1119 = -pkin(9) * t1036 - t1197;
t993 = t1119 * qJD(2);
t824 = (qJD(2) * t993 + t904) * t1036 - qJDD(3) * pkin(3) - t1200 * pkin(9) + t965;
t966 = -pkin(4) * t1014 - qJ(5) * t992;
t747 = t1045 * pkin(4) - t1201 * qJ(5) + t966 * t992 + qJDD(5) + t824;
t1268 = pkin(5) * t1126 - t1273 + t747;
t796 = t1027 * t1043 - t1151 * t945;
t797 = t1030 * t1043 + t905;
t720 = -t1035 * t796 + t1038 * t797;
t1121 = t1039 * t720 + t1137;
t717 = -t1035 * t797 - t1038 * t796;
t1261 = t1037 * t1121 + t1040 * t717;
t1254 = pkin(4) * t820 + qJ(5) * t1235;
t1249 = -2 * qJD(6);
t1120 = t1036 * t720 - t1135;
t1204 = -t1029 * t1120 + t1032 * t1261;
t1210 = -t1037 * t717 + t1040 * t1121;
t1229 = t1028 * t1210 + t1031 * t1204;
t1228 = -t1028 * t1204 + t1031 * t1210;
t972 = t991 * t1014;
t895 = t972 - t932;
t893 = t972 + t932;
t920 = -t1037 * t1003 - t1040 * t1238;
t842 = t1037 * t920 + t1040 * t921;
t1224 = t842 * t1029;
t1221 = t1028 * t1191;
t1220 = t1031 * t1191;
t1192 = t991 * t992;
t1046 = -t988 - t1192;
t1219 = t1035 * t1046;
t1067 = t1037 * t1112;
t1217 = t1038 * t1046;
t1066 = t1040 * t1112;
t867 = -t1036 * t1112 + t1039 * t904;
t825 = -pkin(3) * t1200 + qJDD(3) * pkin(9) + t1157 * t993 + t867;
t1114 = t995 + t1131;
t1115 = -t996 + t1017;
t903 = -qJDD(2) * pkin(2) - t1041 * pkin(8) + t920;
t840 = pkin(3) * t1115 - pkin(9) * t1114 + t903;
t745 = t1035 * t825 - t1038 * t840;
t690 = t1046 * pkin(4) + qJ(5) * t895 - t745;
t746 = t1035 * t840 + t1038 * t825;
t698 = -pkin(4) * t1201 - qJ(5) * t1045 + t1014 * t966 + t746;
t1190 = t1027 * t690 + t1030 * t698;
t868 = pkin(5) * t943 - qJ(6) * t945;
t1214 = -t988 * qJ(6) + t1014 * t1249 - t943 * t868 + t1190;
t952 = -t1031 * t1003 - t1028 * t1129;
t890 = (qJD(4) + t1014) * t992 - t1076;
t951 = -t1028 * t1003 + t1031 * t1129;
t1203 = t1029 * t1261 + t1032 * t1120;
t987 = t992 ^ 2;
t1198 = pkin(3) * t1036;
t1196 = pkin(5) * t1030;
t1195 = pkin(7) * t1032;
t1189 = t1027 * t698 - t1030 * t690;
t1188 = qJ(6) * t1030;
t1187 = qJD(5) * t943;
t1186 = qJD(5) * t945;
t1185 = t1027 * t747;
t1178 = t1030 * t747;
t927 = 0.2e1 * t1186;
t604 = t927 + t1189;
t925 = -0.2e1 * t1187;
t605 = t925 + t1190;
t543 = t1027 * t605 - t1030 * t604;
t1175 = t1035 * t543;
t1174 = t1035 * t824;
t917 = t988 - t1192;
t1173 = t1035 * t917;
t1171 = t1036 * t903;
t1168 = t1038 * t543;
t1167 = t1038 * t824;
t1166 = t1038 * t917;
t1164 = t1039 * t903;
t1160 = -t1199 + t820;
t1159 = qJD(2) * qJD(3);
t1013 = t1036 * t1041 * t1039;
t1004 = -t1013 + qJDD(3);
t1155 = t1004 * t1036;
t1154 = t1004 * t1039;
t1005 = qJDD(3) + t1013;
t1153 = t1005 * t1036;
t1150 = t1014 * t1035;
t1149 = t1014 * t1038;
t1023 = t1036 ^ 2;
t1148 = t1023 * t1041;
t1024 = t1039 ^ 2;
t1143 = t1023 + t1024;
t1142 = qJDD(2) * t1029;
t1140 = qJDD(2) * t1037;
t1138 = qJDD(2) * t1040;
t1136 = t1036 * t1192;
t1134 = t1039 * t1192;
t1130 = -qJ(6) * t1027 - pkin(4);
t544 = t1027 * t604 + t1030 * t605;
t866 = t1036 * t904 + t965;
t765 = t1036 * t866 + t1039 * t867;
t1124 = t945 * t868 + qJDD(6) + t1189;
t1123 = t1037 * t1013;
t1122 = t1040 * t1013;
t763 = t1036 * t867 - t1039 * t866;
t1021 = t1024 * t1041;
t1001 = t1021 + t1148;
t998 = t1143 * qJDD(2);
t949 = -t1001 * t1037 + t1040 * t998;
t1116 = pkin(7) * t949 - t1037 * t763;
t1074 = t1040 * t1041 + t1140;
t977 = t1074 * t1032;
t999 = -t1037 * t1041 + t1138;
t1111 = t1028 * t999 + t1031 * t977;
t935 = t1028 * t977 - t1031 * t999;
t661 = t1035 * t746 - t1038 * t745;
t662 = t1035 * t745 + t1038 * t746;
t1073 = t925 + t1214;
t583 = -pkin(5) * t1199 + t1073;
t1070 = t988 * pkin(5) + t1124;
t584 = qJ(6) * t1199 - t1070 - 0.2e1 * t1186;
t530 = t1027 * t583 + t1030 * t584;
t531 = -t1027 * t584 + t1030 * t583;
t485 = -t1035 * t530 + t1038 * t531;
t635 = (-pkin(5) * t1014 + t1249) * t945 + t1268;
t481 = t1036 * t635 + t1039 * t485;
t484 = t1035 * t531 + t1038 * t530;
t1110 = t1037 * t481 - t1040 * t484;
t500 = t1038 * t544 - t1175;
t496 = t1036 * t747 + t1039 * t500;
t499 = t1035 * t544 + t1168;
t1109 = t1037 * t496 - t1040 * t499;
t631 = t1036 * t824 + t1039 * t662;
t1104 = t1037 * t631 - t1040 * t661;
t812 = -t1035 * t895 - t1038 * t890;
t916 = t987 + t1201;
t756 = -t1036 * t916 + t1039 * t812;
t810 = -t1035 * t890 + t1038 * t895;
t1091 = t1037 * t756 - t1040 * t810;
t1090 = t1037 * t765 - t1040 * t903;
t891 = (-qJD(4) + t1014) * t992 + t1076;
t811 = -t1035 * t893 + t1038 * t891;
t953 = -t987 + t1201;
t767 = -t1036 * t953 + t1039 * t811;
t809 = -t1035 * t891 - t1038 * t893;
t1089 = t1037 * t767 + t1040 * t809;
t937 = -t1199 - t1201;
t846 = t1038 * t937 - t1219;
t769 = -t1036 * t891 + t1039 * t846;
t845 = t1035 * t937 + t1217;
t1088 = t1037 * t769 - t1040 * t845;
t948 = -t987 - t1199;
t865 = -t1035 * t948 + t1166;
t775 = t1036 * t893 + t1039 * t865;
t864 = t1038 * t948 + t1173;
t1087 = t1037 * t775 - t1040 * t864;
t971 = -t987 + t1199;
t879 = -t1035 * t971 + t1217;
t786 = -t1036 * t895 + t1039 * t879;
t877 = -t1038 * t971 - t1219;
t1086 = t1037 * t786 + t1040 * t877;
t970 = -t1199 + t1201;
t880 = t1038 * t970 + t1173;
t787 = -t1036 * t890 + t1039 * t880;
t878 = -t1035 * t970 + t1166;
t1085 = t1037 * t787 + t1040 * t878;
t887 = t1035 * t1045 - t1149 * t991;
t828 = t1039 * t887 - t1136;
t886 = t1038 * t1045 + t1150 * t991;
t1084 = t1037 * t828 + t1040 * t886;
t889 = t1038 * t932 + t1150 * t992;
t829 = t1039 * t889 + t1136;
t888 = -t1035 * t932 + t1149 * t992;
t1083 = t1037 * t829 + t1040 * t888;
t901 = (-t1035 * t992 + t1038 * t991) * t1014;
t883 = t1039 * t901 - t1170;
t900 = (-t1035 * t991 - t1038 * t992) * t1014;
t1082 = t1037 * t883 + t1040 * t900;
t1081 = t1037 * t921 - t1040 * t920;
t1011 = -t1021 - t1200;
t961 = t1011 * t1039 - t1153;
t997 = -0.2e1 * t1017 + t1139;
t1080 = t1037 * t961 + t1040 * t997;
t1009 = -t1148 - t1200;
t963 = -t1009 * t1036 - t1154;
t994 = 0.2e1 * t1131 + t1141;
t1079 = t1037 * t963 - t1040 * t994;
t1078 = t1001 * t1040 + t1037 * t998;
t1002 = t1021 - t1148;
t947 = -t1036 * t994 + t1039 * t997;
t1077 = t1002 * t1040 + t1037 * t947;
t989 = t1143 * t1159;
t1075 = -qJDD(3) * t1040 + t1037 * t989;
t1008 = -t1148 + t1200;
t990 = t1039 * t1005;
t962 = -t1008 * t1036 + t990;
t1069 = -t1036 * t1138 + t1037 * t962;
t1010 = t1021 - t1200;
t960 = t1010 * t1039 - t1155;
t1068 = t1037 * t960 - t1039 * t1138;
t486 = qJ(5) * t531 + (t1130 - t1196) * t635;
t501 = -qJ(5) * t530 + (pkin(5) * t1027 - t1188) * t635;
t455 = -pkin(9) * t484 - t1035 * t486 + t1038 * t501;
t465 = -pkin(3) * t484 - pkin(4) * t530 - pkin(5) * t584 - qJ(6) * t583;
t480 = t1036 * t485 - t1039 * t635;
t436 = -pkin(8) * t480 - t1036 * t465 + t1039 * t455;
t447 = -pkin(2) * t480 + pkin(3) * t635 - pkin(9) * t485 - t1035 * t501 - t1038 * t486;
t461 = t1037 * t484 + t1040 * t481;
t1064 = pkin(7) * t461 + t1037 * t436 + t1040 * t447;
t533 = -pkin(4) * t747 + qJ(5) * t544;
t469 = -pkin(9) * t499 - qJ(5) * t1168 - t1035 * t533;
t478 = -pkin(3) * t499 - pkin(4) * t543;
t495 = t1036 * t500 - t1039 * t747;
t448 = -pkin(8) * t495 - t1036 * t478 + t1039 * t469;
t456 = -pkin(2) * t495 + pkin(3) * t747 - pkin(9) * t500 + qJ(5) * t1175 - t1038 * t533;
t468 = t1037 * t499 + t1040 * t496;
t1063 = pkin(7) * t468 + t1037 * t448 + t1040 * t456;
t575 = pkin(5) * t1160 + t1073;
t576 = qJ(6) * t1160 + t1070 + t927;
t512 = t1027 * t576 + t1030 * t575 + t1254;
t513 = -t1027 * t575 + t1030 * t576 - t1274;
t472 = -t1035 * t512 + t1038 * t513 - t1306;
t564 = -pkin(5) * t1213 + qJ(6) * t802 + t582;
t464 = -t1036 * t564 + t1039 * t472 - t1332;
t467 = -t1035 * t513 - t1038 * t512 + t1322;
t1062 = t1037 * t464 + t1040 * t467 + t1344;
t529 = t1254 + t544;
t532 = -t543 - t1274;
t479 = -t1035 * t529 + t1038 * t532 - t1306;
t471 = -t1036 * t582 + t1039 * t479 - t1332;
t474 = -t1035 * t532 - t1038 * t529 + t1322;
t1061 = t1037 * t471 + t1040 * t474 + t1344;
t1042 = 0.2e1 * qJD(6) * t945 - t1268;
t613 = pkin(5) * t1161 + t1042 + t1273;
t563 = t1330 + t1027 * t613 + (pkin(4) + t1196) * t1215;
t572 = -pkin(5) * t1183 + t1030 * t613 + t1329;
t506 = -t1035 * t563 + t1038 * t572 - t1364;
t534 = qJ(6) * t1047 + 0.2e1 * t1187 + (t1199 + t897) * pkin(5) - t1214 + t1353;
t476 = -t1036 * t534 + t1039 * t506 - t1378;
t491 = -t1035 * t572 - t1038 * t563 + t1371;
t1060 = t1037 * t476 + t1040 * t491 + t1387;
t614 = (-t1072 + t1161) * pkin(5) + t1042;
t565 = t1030 * t614 + t1072 * t1130 + t1276;
t574 = -t1027 * t614 - t1072 * t1188 - t1275;
t507 = -t1035 * t565 + t1038 * t574 - t1305;
t537 = t927 + (-t1199 - t1212) * qJ(6) + (-t1048 + t988) * pkin(5) + t1124 + t1292;
t477 = -t1036 * t537 + t1039 * t507 - t1331;
t494 = -t1035 * t574 - t1038 * t565 + t1321;
t1059 = t1037 * t477 + t1040 * t494 + t1345;
t632 = -pkin(4) * t1072 - t1178 + t1276;
t669 = t1185 - t1275;
t545 = -t1035 * t632 + t1038 * t669 - t1305;
t553 = t1292 + t604;
t493 = -t1036 * t553 + t1039 * t545 - t1331;
t519 = -t1035 * t669 - t1038 * t632 + t1321;
t1058 = t1037 * t493 + t1040 * t519 + t1345;
t640 = -pkin(4) * t1215 + t1185 - t1330;
t686 = t1178 - t1329;
t560 = -t1035 * t640 + t1038 * t686 + t1364;
t562 = -t1353 + t605;
t497 = -t1036 * t562 + t1039 * t560 + t1378;
t528 = -t1035 * t686 - t1038 * t640 - t1371;
t1057 = t1037 * t497 + t1040 * t528 - t1387;
t630 = t1036 * t662 - t1039 * t824;
t542 = -pkin(8) * t630 + (-pkin(9) * t1039 + t1198) * t661;
t566 = -pkin(2) * t630 + pkin(3) * t824 - pkin(9) * t662;
t573 = t1037 * t661 + t1040 * t631;
t1056 = pkin(7) * t573 + t1037 * t542 + t1040 * t566;
t621 = -pkin(9) * t810 - t661;
t755 = t1036 * t812 + t1039 * t916;
t579 = -pkin(8) * t755 + t1039 * t621 + t1198 * t810;
t585 = -pkin(2) * t755 - pkin(3) * t916 - pkin(9) * t812 - t662;
t689 = t1037 * t810 + t1040 * t756;
t1055 = pkin(7) * t689 + t1037 * t579 + t1040 * t585;
t699 = -pkin(3) * t845 + t745;
t752 = -pkin(9) * t845 + t1174;
t768 = t1036 * t846 + t1039 * t891;
t603 = -pkin(8) * t768 - t1036 * t699 + t1039 * t752;
t663 = -pkin(2) * t768 - pkin(3) * t891 - pkin(9) * t846 + t1167;
t731 = t1037 * t845 + t1040 * t769;
t1054 = pkin(7) * t731 + t1037 * t603 + t1040 * t663;
t712 = -pkin(3) * t864 + t746;
t754 = -pkin(9) * t864 + t1167;
t772 = t1036 * t865 - t1039 * t893;
t612 = -pkin(8) * t772 - t1036 * t712 + t1039 * t754;
t664 = -pkin(2) * t772 + pkin(3) * t893 - pkin(9) * t865 - t1174;
t732 = t1037 * t864 + t1040 * t775;
t1053 = pkin(7) * t732 + t1037 * t612 + t1040 * t664;
t957 = t1011 * t1036 + t990;
t821 = -pkin(2) * t957 + t866;
t862 = -pkin(8) * t957 + t1171;
t906 = -t1037 * t997 + t1040 * t961;
t1052 = pkin(7) * t906 + t1037 * t862 + t1040 * t821;
t959 = t1009 * t1039 - t1155;
t822 = -pkin(2) * t959 + t867;
t863 = -pkin(8) * t959 + t1164;
t907 = t1037 * t994 + t1040 * t963;
t1051 = pkin(7) * t907 + t1037 * t863 + t1040 * t822;
t967 = -t1024 * t1159 - t1036 * t996;
t1050 = t1037 * t967 - t1122;
t968 = -t1023 * t1159 + t1039 * t995;
t1049 = t1037 * t968 + t1122;
t736 = t1037 * t903 + t1040 * t765;
t1044 = pkin(7) * t736 + (-pkin(2) * t1040 - pkin(8) * t1037) * t763;
t978 = t999 * t1032;
t976 = t999 * t1029;
t975 = t1074 * t1029;
t969 = qJDD(3) * t1037 + t1040 * t989;
t958 = t1008 * t1039 + t1153;
t956 = t1010 * t1036 + t1154;
t955 = t1114 * t1036;
t954 = t1115 * t1039;
t950 = t1075 * t1032;
t946 = t1036 * t997 + t1039 * t994;
t942 = t1078 * t1032;
t941 = t1078 * t1029;
t936 = -t1028 * t978 - t1031 * t1074;
t934 = -t1028 * t1074 + t1031 * t978;
t931 = t1040 * t968 - t1123;
t930 = t1040 * t967 + t1123;
t929 = t1036 * t1140 + t1040 * t962;
t928 = t1037 * t1139 + t1040 * t960;
t899 = -t1002 * t1037 + t1040 * t947;
t885 = -t1066 + (t1029 * t975 + t1032 * t977) * pkin(7);
t884 = -t1067 + (-t1029 * t976 - t1032 * t978) * pkin(7);
t882 = t1036 * t901 + t973;
t874 = -t1028 * t942 + t1031 * t949;
t873 = t1028 * t949 + t1031 * t942;
t872 = -t1029 * t955 + t1032 * t1049;
t871 = t1029 * t954 + t1032 * t1050;
t870 = -t1029 * t958 + t1032 * t1069;
t869 = -t1029 * t956 + t1032 * t1068;
t858 = -t1029 * t959 + t1032 * t1079;
t857 = -t1029 * t957 + t1032 * t1080;
t856 = t1029 * t1079 + t1032 * t959;
t855 = t1029 * t1080 + t1032 * t957;
t839 = -t1029 * t946 + t1032 * t1077;
t834 = pkin(2) * t997 + pkin(8) * t961 - t1164;
t833 = -pkin(2) * t994 + pkin(8) * t963 + t1171;
t830 = t842 * t1032;
t827 = t1036 * t889 - t1134;
t826 = t1036 * t887 + t1134;
t818 = -pkin(1) * t976 + t1029 * t920 + t1032 * t1066 - t1074 * t1195;
t817 = pkin(1) * t975 + t1029 * t921 - t1032 * t1067 - t1195 * t999;
t814 = t1029 * t985 + (t1128 + t1081) * t1032;
t813 = t1029 * t1081 - t1032 * t1112;
t799 = -t1037 * t900 + t1040 * t883;
t791 = -t1028 * t858 + t1031 * t907;
t790 = -t1028 * t857 + t1031 * t906;
t789 = t1028 * t907 + t1031 * t858;
t788 = t1028 * t906 + t1031 * t857;
t781 = t1036 * t880 + t1039 * t890;
t780 = t1036 * t879 + t1039 * t895;
t766 = t1036 * t811 + t1039 * t953;
t762 = -t1037 * t888 + t1040 * t829;
t761 = -t1037 * t886 + t1040 * t828;
t753 = pkin(2) * t1001 + pkin(8) * t998 + t765;
t744 = -t1029 * t882 + t1032 * t1082;
t743 = -pkin(2) * t903 + pkin(8) * t765;
t738 = -t1037 * t878 + t1040 * t787;
t737 = -t1037 * t877 + t1040 * t786;
t735 = -pkin(1) * t813 + t1195 * t842;
t734 = -t1028 * t814 + t1031 * t842;
t733 = t1028 * t842 + t1031 * t814;
t730 = -t1040 * t763 + (-t1029 * t941 - t1032 * t942) * pkin(7);
t729 = (-t1029 * t813 - t1032 * t814) * pkin(7);
t709 = -t1029 * t827 + t1032 * t1083;
t708 = -t1029 * t826 + t1032 * t1084;
t695 = -t1037 * t809 + t1040 * t767;
t673 = -t1037 * t822 + t1040 * t863 + (-t1029 * t856 - t1032 * t858) * pkin(7);
t672 = -t1037 * t821 + t1040 * t862 + (-t1029 * t855 - t1032 * t857) * pkin(7);
t671 = -t1029 * t781 + t1032 * t1085;
t670 = -t1029 * t780 + t1032 * t1086;
t668 = -t1029 * t772 + t1032 * t1087;
t667 = t1029 * t1087 + t1032 * t772;
t666 = -t1029 * t763 + t1032 * t1090;
t665 = t1029 * t1090 + t1032 * t763;
t660 = -t1029 * t768 + t1032 * t1088;
t659 = t1029 * t1088 + t1032 * t768;
t648 = -pkin(1) * t856 - t1029 * t833 + t1032 * t1051;
t647 = -pkin(1) * t855 - t1029 * t834 + t1032 * t1052;
t642 = -pkin(1) * t941 - t1029 * t753 + t1032 * t1116;
t641 = -t1029 * t766 + t1032 * t1089;
t634 = -t1029 * t755 + t1032 * t1091;
t633 = t1029 * t1091 + t1032 * t755;
t616 = -t1028 * t666 + t1031 * t736;
t615 = t1028 * t736 + t1031 * t666;
t611 = -t1028 * t668 + t1031 * t732;
t610 = t1028 * t732 + t1031 * t668;
t595 = -t1028 * t660 + t1031 * t731;
t594 = t1028 * t731 + t1031 * t660;
t593 = -pkin(2) * t864 + pkin(8) * t775 + t1036 * t754 + t1039 * t712;
t588 = -pkin(2) * t845 + pkin(8) * t769 + t1036 * t752 + t1039 * t699;
t581 = -t1028 * t634 + t1031 * t689;
t580 = t1028 * t689 + t1031 * t634;
t571 = pkin(8) * t756 + t1036 * t621 + (-pkin(2) - t1197) * t810;
t561 = (pkin(2) * t1037 - pkin(8) * t1040) * t763 + (-t1029 * t665 - t1032 * t666) * pkin(7);
t552 = -pkin(1) * t665 - t1029 * t743 + t1032 * t1044;
t536 = -t1029 * t630 + t1032 * t1104;
t535 = t1029 * t1104 + t1032 * t630;
t527 = pkin(8) * t631 + (-pkin(2) + t1119) * t661;
t524 = -t1037 * t664 + t1040 * t612 + (-t1029 * t667 - t1032 * t668) * pkin(7);
t518 = -t1037 * t663 + t1040 * t603 + (-t1029 * t659 - t1032 * t660) * pkin(7);
t505 = -pkin(1) * t667 - t1029 * t593 + t1032 * t1053;
t504 = -t1028 * t536 + t1031 * t573;
t503 = t1028 * t573 + t1031 * t536;
t502 = -pkin(1) * t659 - t1029 * t588 + t1032 * t1054;
t498 = -t1037 * t585 + t1040 * t579 + (-t1029 * t633 - t1032 * t634) * pkin(7);
t492 = t1036 * t560 + t1039 * t562 - t1370;
t483 = t1036 * t545 + t1039 * t553 + t1319;
t482 = -pkin(1) * t633 - t1029 * t571 + t1032 * t1055;
t475 = t1036 * t507 + t1039 * t537 + t1319;
t473 = t1036 * t506 + t1039 * t534 + t1370;
t470 = -t1037 * t566 + t1040 * t542 + (-t1029 * t535 - t1032 * t536) * pkin(7);
t466 = t1036 * t479 + t1039 * t582 + t1320;
t463 = -pkin(1) * t535 - t1029 * t527 + t1032 * t1056;
t462 = -t1037 * t528 + t1040 * t497 + t1395;
t460 = t1036 * t472 + t1039 * t564 + t1320;
t459 = -t1037 * t519 + t1040 * t493 + t1346;
t458 = -t1029 * t495 + t1032 * t1109;
t457 = t1029 * t1109 + t1032 * t495;
t454 = -t1037 * t494 + t1040 * t477 + t1346;
t453 = -t1029 * t492 + t1032 * t1057 + t1394;
t452 = -t1037 * t491 + t1040 * t476 - t1395;
t451 = -t1029 * t483 + t1032 * t1058 - t1360;
t450 = -t1029 * t480 + t1032 * t1110;
t449 = t1029 * t1110 + t1032 * t480;
t446 = -t1029 * t475 + t1032 * t1059 - t1360;
t445 = -t1037 * t474 + t1040 * t471 + t1347;
t444 = -t1028 * t458 + t1031 * t468;
t443 = t1028 * t468 + t1031 * t458;
t442 = -t1029 * t473 + t1032 * t1060 - t1394;
t441 = -pkin(2) * t499 + pkin(8) * t496 + t1036 * t469 + t1039 * t478;
t440 = -t1037 * t467 + t1040 * t464 + t1347;
t439 = -t1028 * t450 + t1031 * t461;
t438 = t1028 * t461 + t1031 * t450;
t437 = -t1029 * t466 + t1032 * t1061 - t1361;
t435 = -pkin(2) * t484 + pkin(8) * t481 + t1036 * t455 + t1039 * t465;
t434 = -t1029 * t460 + t1032 * t1062 - t1361;
t433 = -t1037 * t456 + t1040 * t448 + (-t1029 * t457 - t1032 * t458) * pkin(7);
t432 = -pkin(1) * t457 - t1029 * t441 + t1032 * t1063;
t431 = -t1037 * t447 + t1040 * t436 + (-t1029 * t449 - t1032 * t450) * pkin(7);
t430 = -pkin(1) * t449 - t1029 * t435 + t1032 * t1064;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t952, 0, 0, 0, 0, 0, 0, t936, t935, 0, t734, 0, 0, 0, 0, 0, 0, t790, t791, t874, t616, 0, 0, 0, 0, 0, 0, t595, t611, t581, t504, 0, 0, 0, 0, 0, 0, t1350, t516, t1351, t444, 0, 0, 0, 0, 0, 0, t1350, t1351, -t516, t439; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t951, 0, 0, 0, 0, 0, 0, t934, -t1111, 0, t733, 0, 0, 0, 0, 0, 0, t788, t789, t873, t615, 0, 0, 0, 0, 0, 0, t594, t610, t580, t503, 0, 0, 0, 0, 0, 0, t1348, -t508, t1349, t443, 0, 0, 0, 0, 0, 0, t1348, t1349, t508, t438; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1191, 0, 0, 0, 0, 0, 0, t976, -t975, 0, t813, 0, 0, 0, 0, 0, 0, t855, t856, t941, t665, 0, 0, 0, 0, 0, 0, t659, t667, t633, t535, 0, 0, 0, 0, 0, 0, t1338, -t538, t1337, t457, 0, 0, 0, 0, 0, 0, t1338, t1337, t538, t449; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1221, -t1220, -t951, -qJ(1) * t951, 0, 0, -t935, 0, t936, t1028 * t1142, -qJ(1) * t934 - t1028 * t818 + t1031 * t884, qJ(1) * t1111 - t1028 * t817 + t1031 * t885, -t1028 * t830 - t1031 * t1081, -qJ(1) * t733 - t1028 * t735 + t1031 * t729, -t1028 * t872 + t1031 * t931, -t1028 * t839 + t1031 * t899, -t1028 * t870 + t1031 * t929, -t1028 * t871 + t1031 * t930, -t1028 * t869 + t1031 * t928, -t1028 * t950 + t1031 * t969, -qJ(1) * t788 - t1028 * t647 + t1031 * t672, -qJ(1) * t789 - t1028 * t648 + t1031 * t673, -qJ(1) * t873 - t1028 * t642 + t1031 * t730, -qJ(1) * t615 - t1028 * t552 + t1031 * t561, -t1028 * t709 + t1031 * t762, -t1028 * t641 + t1031 * t695, -t1028 * t670 + t1031 * t737, -t1028 * t708 + t1031 * t761, -t1028 * t671 + t1031 * t738, -t1028 * t744 + t1031 * t799, -qJ(1) * t594 - t1028 * t502 + t1031 * t518, -qJ(1) * t610 - t1028 * t505 + t1031 * t524, -qJ(1) * t580 - t1028 * t482 + t1031 * t498, -qJ(1) * t503 - t1028 * t463 + t1031 * t470, t1228, t1391, t1339, t1317, t1392, t1318, -t1028 * t451 + t1031 * t459 - t1369, -t1028 * t453 + t1031 * t462 + t1397, -t1028 * t437 + t1031 * t445 - t1368, -qJ(1) * t443 - t1028 * t432 + t1031 * t433, t1228, t1339, -t1391, t1318, -t1392, t1317, -t1028 * t446 + t1031 * t454 - t1369, -t1028 * t434 + t1031 * t440 - t1368, -t1028 * t442 + t1031 * t452 - t1397, -qJ(1) * t438 - t1028 * t430 + t1031 * t431; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1220, -t1221, t952, qJ(1) * t952, 0, 0, t1111, 0, t934, -t1031 * t1142, qJ(1) * t936 + t1028 * t884 + t1031 * t818, qJ(1) * t935 + t1028 * t885 + t1031 * t817, -t1028 * t1081 + t1031 * t830, qJ(1) * t734 + t1028 * t729 + t1031 * t735, t1028 * t931 + t1031 * t872, t1028 * t899 + t1031 * t839, t1028 * t929 + t1031 * t870, t1028 * t930 + t1031 * t871, t1028 * t928 + t1031 * t869, t1028 * t969 + t1031 * t950, qJ(1) * t790 + t1028 * t672 + t1031 * t647, qJ(1) * t791 + t1028 * t673 + t1031 * t648, qJ(1) * t874 + t1028 * t730 + t1031 * t642, qJ(1) * t616 + t1028 * t561 + t1031 * t552, t1028 * t762 + t1031 * t709, t1028 * t695 + t1031 * t641, t1028 * t737 + t1031 * t670, t1028 * t761 + t1031 * t708, t1028 * t738 + t1031 * t671, t1028 * t799 + t1031 * t744, qJ(1) * t595 + t1028 * t518 + t1031 * t502, qJ(1) * t611 + t1028 * t524 + t1031 * t505, qJ(1) * t581 + t1028 * t498 + t1031 * t482, qJ(1) * t504 + t1028 * t470 + t1031 * t463, t1229, -t1389, t1336, t1314, -t1390, t1315, t1028 * t459 + t1031 * t451 + t1367, t1028 * t462 + t1031 * t453 + t1396, t1028 * t445 + t1031 * t437 + t1366, qJ(1) * t444 + t1028 * t433 + t1031 * t432, t1229, t1336, t1389, t1315, t1390, t1314, t1028 * t454 + t1031 * t446 + t1367, t1028 * t440 + t1031 * t434 + t1366, t1028 * t452 + t1031 * t442 - t1396, qJ(1) * t439 + t1028 * t431 + t1031 * t430; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1129, t1003, 0, 0, 0, 0, t975, 0, t976, t1032 * qJDD(2), pkin(1) * t978 - t1032 * t920 + (-pkin(7) * t1074 + t1066) * t1029, -pkin(1) * t977 - t1032 * t921 + (-pkin(7) * t999 - t1067) * t1029, t1224, pkin(1) * t814 + pkin(7) * t1224, t1029 * t1049 + t1032 * t955, t1029 * t1077 + t1032 * t946, t1029 * t1069 + t1032 * t958, t1029 * t1050 - t1032 * t954, t1029 * t1068 + t1032 * t956, t1075 * t1029, pkin(1) * t857 + t1029 * t1052 + t1032 * t834, pkin(1) * t858 + t1029 * t1051 + t1032 * t833, pkin(1) * t942 + t1029 * t1116 + t1032 * t753, pkin(1) * t666 + t1029 * t1044 + t1032 * t743, t1029 * t1083 + t1032 * t827, t1029 * t1089 + t1032 * t766, t1029 * t1086 + t1032 * t780, t1029 * t1084 + t1032 * t826, t1029 * t1085 + t1032 * t781, t1029 * t1082 + t1032 * t882, pkin(1) * t660 + t1029 * t1054 + t1032 * t588, pkin(1) * t668 + t1029 * t1053 + t1032 * t593, pkin(1) * t634 + t1029 * t1055 + t1032 * t571, pkin(1) * t536 + t1029 * t1056 + t1032 * t527, t1203, -t1379, t1316, t1289, -t1380, t1288, t1029 * t1058 + t1032 * t483 + t1362, t1029 * t1057 + t1032 * t492 - t1393, t1029 * t1061 + t1032 * t466 + t1363, pkin(1) * t458 + t1029 * t1063 + t1032 * t441, t1203, t1316, t1379, t1288, t1380, t1289, t1029 * t1059 + t1032 * t475 + t1362, t1029 * t1062 + t1032 * t460 + t1363, t1029 * t1060 + t1032 * t473 + t1393, pkin(1) * t450 + t1029 * t1064 + t1032 * t435;];
tauB_reg  = t1;
