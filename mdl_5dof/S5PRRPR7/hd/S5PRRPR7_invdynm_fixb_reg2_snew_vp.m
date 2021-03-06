% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PRRPR7
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d3,d5,theta1,theta4]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:38
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PRRPR7_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPR7_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRPR7_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRPR7_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRPR7_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5PRRPR7_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:38:08
% EndTime: 2019-12-05 16:38:27
% DurationCPUTime: 20.00s
% Computational Cost: add. (102784->772), mult. (215441->1159), div. (0->0), fcn. (155165->12), ass. (0->538)
t1226 = sin(qJ(5));
t1219 = sin(pkin(10));
t1222 = cos(pkin(10));
t1227 = sin(qJ(3));
t1340 = qJD(2) * t1227;
t1178 = t1219 * qJD(3) + t1222 * t1340;
t1229 = cos(qJ(5));
t1230 = cos(qJ(3));
t1339 = qJD(2) * t1230;
t1136 = t1178 * t1226 + t1229 * t1339;
t1138 = t1178 * t1229 - t1226 * t1339;
t1090 = t1138 * t1136;
t1206 = qJD(3) * t1339;
t1317 = t1227 * qJDD(2);
t1185 = t1206 + t1317;
t1304 = -t1222 * qJDD(3) + t1185 * t1219;
t1151 = qJDD(5) + t1304;
t1357 = -t1090 + t1151;
t1364 = t1226 * t1357;
t1363 = t1229 * t1357;
t1221 = sin(pkin(5));
t1224 = cos(pkin(5));
t1220 = sin(pkin(9));
t1223 = cos(pkin(9));
t1308 = g(1) * t1220 - t1223 * g(2);
t1344 = g(3) - qJDD(1);
t1362 = -t1221 * t1344 + t1224 * t1308;
t1205 = qJD(3) * t1340;
t1316 = t1230 * qJDD(2);
t1303 = -t1205 + t1316;
t1176 = -t1222 * qJD(3) + t1219 * t1340;
t1328 = t1178 * t1176;
t1256 = -t1303 - t1328;
t1361 = t1219 * t1256;
t1360 = t1220 * t1344;
t1359 = t1222 * t1256;
t1358 = t1223 * t1344;
t1327 = t1178 * t1230;
t1162 = qJD(2) * t1327;
t1109 = -t1304 - t1162;
t1314 = pkin(4) * t1222 + pkin(3);
t1129 = pkin(4) * t1176 - pkin(8) * t1178;
t1232 = qJD(2) ^ 2;
t1351 = t1230 ^ 2;
t1213 = t1351 * t1232;
t1192 = g(1) * t1223 + g(2) * t1220;
t1228 = sin(qJ(2));
t1231 = cos(qJ(2));
t1117 = -t1231 * t1192 + t1362 * t1228;
t1098 = -t1232 * pkin(2) + qJDD(2) * pkin(7) + t1117;
t1158 = t1221 * t1308 + t1224 * t1344;
t1063 = t1230 * t1098 - t1227 * t1158;
t1348 = pkin(3) * t1230;
t1296 = -qJ(4) * t1227 - t1348;
t1183 = t1296 * qJD(2);
t1352 = qJD(3) ^ 2;
t1031 = -t1352 * pkin(3) + qJDD(3) * qJ(4) + t1183 * t1339 + t1063;
t1113 = -t1228 * t1192 - t1362 * t1231;
t1097 = -qJDD(2) * pkin(2) - t1232 * pkin(7) + t1113;
t1294 = t1185 + t1206;
t1233 = -t1294 * qJ(4) + (-t1303 + t1205) * pkin(3) + t1097;
t967 = -0.2e1 * qJD(4) * t1176 + t1222 * t1031 + t1219 * t1233;
t938 = -pkin(4) * t1213 - pkin(8) * t1303 - t1176 * t1129 + t967;
t1156 = qJDD(3) * t1219 + t1185 * t1222;
t1150 = t1230 * t1158;
t1298 = -qJDD(3) * pkin(3) - t1352 * qJ(4) + qJDD(4) + t1150;
t1321 = t1227 * t1098;
t976 = t1304 * pkin(4) - t1156 * pkin(8) + t1321 + (t1183 * t1227 + (-pkin(4) * t1178 - pkin(8) * t1176) * t1230) * qJD(2) + t1298;
t888 = t1226 * t938 - t1229 * t976;
t889 = t1226 * t976 + t1229 * t938;
t854 = t1226 * t888 + t1229 * t889;
t1306 = t1219 * t1031 - t1222 * t1233;
t1350 = 0.2e1 * qJD(4);
t937 = t1303 * pkin(4) - pkin(8) * t1213 + (t1350 + t1129) * t1178 + t1306;
t838 = t1219 * t937 + t1222 * t854;
t853 = t1226 * t889 - t1229 * t888;
t1356 = -(pkin(8) * t1219 + t1314) * t853 + qJ(4) * t838;
t1173 = qJD(5) + t1176;
t1305 = -t1226 * t1156 - t1229 * t1303;
t1018 = (-qJD(5) + t1173) * t1138 + t1305;
t1236 = -t1229 * t1156 + t1226 * t1303;
t1076 = -t1136 * qJD(5) - t1236;
t1106 = t1173 * t1136;
t1021 = t1106 + t1076;
t954 = t1018 * t1226 - t1021 * t1229;
t839 = -pkin(8) * t954 - t853;
t1134 = t1136 ^ 2;
t1135 = t1138 ^ 2;
t1059 = t1134 + t1135;
t956 = t1018 * t1229 + t1021 * t1226;
t928 = -t1059 * t1219 + t1222 * t956;
t1355 = qJ(4) * t928 + t1219 * t839 - t1314 * t954;
t1354 = -t1223 * t1192 - t1220 * t1308;
t1353 = -t1220 * t1192 + t1223 * t1308;
t1170 = t1173 ^ 2;
t1174 = t1176 ^ 2;
t1175 = t1178 ^ 2;
t1349 = pkin(3) * t1227;
t1347 = pkin(4) * t1219;
t1047 = t1113 * t1228 + t1117 * t1231;
t1346 = pkin(6) * t1047;
t1343 = t1226 * t937;
t1342 = t1229 * t937;
t1341 = qJD(2) * qJD(3);
t1030 = (qJD(2) * t1183 + t1098) * t1227 + t1298;
t1338 = t1030 * t1219;
t1337 = t1030 * t1222;
t1065 = t1090 + t1151;
t1336 = t1065 * t1226;
t1335 = t1065 * t1229;
t1334 = t1097 * t1227;
t1333 = t1097 * t1230;
t1114 = t1303 - t1328;
t1332 = t1114 * t1219;
t1331 = t1114 * t1222;
t1330 = t1173 * t1226;
t1329 = t1173 * t1229;
t1202 = t1227 * t1232 * t1230;
t1193 = qJDD(3) + t1202;
t1326 = t1193 * t1227;
t1194 = qJDD(3) - t1202;
t1325 = t1194 * t1227;
t1324 = t1194 * t1230;
t1216 = t1227 ^ 2;
t1323 = t1216 * t1232;
t1320 = t1228 * t1158;
t1319 = t1231 * t1158;
t1318 = t1221 * qJDD(2);
t1315 = t1216 + t1351;
t1313 = t1219 * t1090;
t1312 = t1222 * t1090;
t1311 = t1227 * t1328;
t1310 = t1176 * t1327;
t1309 = t1176 * t1339;
t966 = t1178 * t1350 + t1306;
t892 = t1219 * t966 + t1222 * t967;
t1062 = t1150 + t1321;
t985 = t1062 * t1227 + t1230 * t1063;
t1302 = t1219 * t1309;
t1301 = t1228 * t1202;
t1300 = t1231 * t1202;
t1299 = -pkin(4) * t937 + pkin(8) * t854;
t1297 = -pkin(3) * t1030 + qJ(4) * t892;
t1187 = t1315 * qJDD(2);
t1190 = t1213 + t1323;
t1131 = t1187 * t1231 - t1190 * t1228;
t984 = t1062 * t1230 - t1063 * t1227;
t1295 = pkin(6) * t1131 + t1228 * t984;
t1188 = qJDD(2) * t1231 - t1228 * t1232;
t1292 = -pkin(6) * t1188 - t1320;
t1260 = qJDD(2) * t1228 + t1231 * t1232;
t1291 = -pkin(6) * t1260 + t1319;
t891 = t1219 * t967 - t1222 * t966;
t818 = t1227 * t853 + t1230 * t838;
t837 = t1219 * t854 - t1222 * t937;
t1289 = t1228 * t818 - t1231 * t837;
t879 = t1227 * t954 + t1230 * t928;
t927 = t1059 * t1222 + t1219 * t956;
t1288 = t1228 * t879 - t1231 * t927;
t881 = t1030 * t1227 + t1230 * t892;
t1287 = t1228 * t881 - t1231 * t891;
t1089 = t1135 - t1134;
t1075 = -qJD(5) * t1138 + t1305;
t1107 = t1138 * t1173;
t1019 = t1075 - t1107;
t1020 = -t1106 + t1076;
t957 = t1019 * t1229 - t1020 * t1226;
t935 = t1089 * t1219 + t1222 * t957;
t955 = t1019 * t1226 + t1020 * t1229;
t883 = t1227 * t955 + t1230 * t935;
t934 = -t1089 * t1222 + t1219 * t957;
t1286 = t1228 * t883 - t1231 * t934;
t1085 = -t1170 - t1134;
t987 = t1085 * t1229 - t1364;
t940 = -t1019 * t1219 + t1222 * t987;
t986 = t1085 * t1226 + t1363;
t894 = t1227 * t986 + t1230 * t940;
t939 = t1019 * t1222 + t1219 * t987;
t1285 = t1228 * t894 - t1231 * t939;
t1022 = (qJD(5) + t1173) * t1136 + t1236;
t1088 = -t1135 - t1170;
t989 = -t1088 * t1226 - t1335;
t942 = -t1022 * t1219 + t1222 * t989;
t988 = t1088 * t1229 - t1336;
t903 = t1227 * t988 + t1230 * t942;
t941 = t1022 * t1222 + t1219 * t989;
t1284 = t1228 * t903 - t1231 * t941;
t1105 = -t1135 + t1170;
t1000 = -t1105 * t1226 + t1363;
t946 = t1000 * t1222 + t1021 * t1219;
t998 = t1105 * t1229 + t1364;
t910 = t1227 * t998 + t1230 * t946;
t944 = t1000 * t1219 - t1021 * t1222;
t1283 = t1228 * t910 - t1231 * t944;
t1104 = t1134 - t1170;
t1001 = t1104 * t1229 - t1336;
t1017 = -t1075 - t1107;
t947 = t1001 * t1222 - t1017 * t1219;
t999 = t1104 * t1226 + t1335;
t911 = t1227 * t999 + t1230 * t947;
t945 = t1001 * t1219 + t1017 * t1222;
t1282 = t1228 * t911 - t1231 * t945;
t1006 = -t1075 * t1229 - t1136 * t1330;
t1007 = -t1075 * t1226 + t1136 * t1329;
t981 = t1007 * t1222 - t1313;
t931 = -t1006 * t1227 + t1230 * t981;
t978 = t1007 * t1219 + t1312;
t1281 = t1228 * t931 - t1231 * t978;
t1008 = t1076 * t1226 + t1138 * t1329;
t1009 = t1076 * t1229 - t1138 * t1330;
t982 = t1009 * t1222 + t1313;
t932 = t1008 * t1227 + t1230 * t982;
t979 = t1009 * t1219 - t1312;
t1280 = t1228 * t932 - t1231 * t979;
t1045 = (-t1136 * t1229 + t1138 * t1226) * t1173;
t1002 = t1045 * t1219 - t1151 * t1222;
t1003 = t1045 * t1222 + t1151 * t1219;
t1044 = (-t1136 * t1226 - t1138 * t1229) * t1173;
t961 = t1003 * t1230 + t1044 * t1227;
t1279 = -t1002 * t1231 + t1228 * t961;
t1111 = t1156 - t1309;
t1040 = t1109 * t1219 - t1111 * t1222;
t1042 = t1109 * t1222 + t1111 * t1219;
t1103 = t1174 + t1175;
t991 = t1042 * t1230 - t1103 * t1227;
t1278 = -t1040 * t1231 + t1228 * t991;
t1110 = t1162 - t1304;
t1112 = t1156 + t1309;
t1041 = t1110 * t1219 + t1112 * t1222;
t1043 = t1110 * t1222 - t1112 * t1219;
t1130 = t1175 - t1174;
t997 = t1043 * t1230 + t1130 * t1227;
t1277 = -t1041 * t1231 + t1228 * t997;
t1126 = -t1213 - t1174;
t1052 = t1126 * t1219 + t1359;
t1053 = t1126 * t1222 - t1361;
t995 = t1053 * t1230 - t1110 * t1227;
t1276 = -t1052 * t1231 + t1228 * t995;
t1275 = -t1097 * t1231 + t1228 * t985;
t1161 = -t1175 - t1213;
t1080 = -t1161 * t1219 + t1331;
t1013 = t1080 * t1230 + t1112 * t1227;
t1077 = t1161 * t1222 + t1332;
t1273 = t1013 * t1228 - t1077 * t1231;
t1160 = -t1175 + t1213;
t1081 = -t1160 * t1219 + t1359;
t1014 = t1081 * t1230 + t1111 * t1227;
t1078 = t1160 * t1222 + t1361;
t1272 = t1014 * t1228 - t1078 * t1231;
t1159 = t1174 - t1213;
t1082 = t1159 * t1222 + t1332;
t1015 = t1082 * t1230 + t1109 * t1227;
t1079 = t1159 * t1219 - t1331;
t1271 = t1015 * t1228 - t1079 * t1231;
t1094 = t1219 * t1304 - t1222 * t1309;
t1050 = t1094 * t1230 - t1311;
t1093 = -t1222 * t1304 - t1302;
t1270 = t1050 * t1228 - t1093 * t1231;
t1096 = t1156 * t1222 + t1219 * t1162;
t1051 = t1096 * t1230 + t1311;
t1157 = t1222 * t1162;
t1095 = t1156 * t1219 - t1157;
t1269 = t1051 * t1228 - t1095 * t1231;
t1102 = (t1176 * t1222 - t1178 * t1219) * t1339;
t1261 = t1227 * t1303;
t1087 = t1230 * t1102 - t1261;
t1101 = -t1157 - t1302;
t1268 = t1087 * t1228 + t1101 * t1231;
t1046 = t1113 * t1231 - t1117 * t1228;
t1184 = 0.2e1 * t1206 + t1317;
t1186 = -0.2e1 * t1205 + t1316;
t1128 = -t1184 * t1227 + t1186 * t1230;
t1191 = -t1213 + t1323;
t1267 = t1128 * t1228 - t1191 * t1231;
t1200 = -t1213 - t1352;
t1146 = t1200 * t1230 - t1326;
t1266 = t1146 * t1228 + t1186 * t1231;
t1198 = -t1323 - t1352;
t1148 = -t1198 * t1227 - t1324;
t1265 = t1148 * t1228 - t1184 * t1231;
t1165 = t1260 * t1224;
t1264 = t1165 * t1223 + t1188 * t1220;
t1263 = t1165 * t1220 - t1188 * t1223;
t1262 = t1187 * t1228 + t1190 * t1231;
t1181 = t1315 * t1341;
t1259 = -qJDD(3) * t1231 + t1181 * t1228;
t1199 = t1213 - t1352;
t1145 = t1199 * t1230 - t1325;
t1258 = t1145 * t1228 - t1231 * t1316;
t1182 = t1230 * t1193;
t1197 = -t1323 + t1352;
t1147 = -t1197 * t1227 + t1182;
t1257 = t1147 * t1228 - t1231 * t1317;
t1255 = pkin(4) * t1019 + pkin(8) * t987 - t1342;
t1254 = pkin(4) * t1022 + pkin(8) * t989 + t1343;
t805 = -qJ(4) * t837 + (-pkin(8) * t1222 + t1347) * t853;
t813 = -pkin(3) * t837 - t1299;
t817 = t1227 * t838 - t1230 * t853;
t793 = -pkin(7) * t817 - t1227 * t813 + t1230 * t805;
t798 = -pkin(2) * t817 - t1356;
t804 = t1228 * t837 + t1231 * t818;
t1253 = pkin(6) * t804 + t1228 * t793 + t1231 * t798;
t824 = -qJ(4) * t927 + t1222 * t839 + t954 * t1347;
t1239 = pkin(4) * t1059 + pkin(8) * t956 + t854;
t826 = -pkin(3) * t927 - t1239;
t878 = t1227 * t928 - t1230 * t954;
t803 = -pkin(7) * t878 - t1227 * t826 + t1230 * t824;
t812 = -pkin(2) * t878 - t1355;
t855 = t1228 * t927 + t1231 * t879;
t1252 = pkin(6) * t855 + t1228 * t803 + t1231 * t812;
t873 = -pkin(4) * t986 + t888;
t890 = -pkin(8) * t986 + t1343;
t835 = -qJ(4) * t939 - t1219 * t873 + t1222 * t890;
t858 = -pkin(3) * t939 - t1255;
t893 = t1227 * t940 - t1230 * t986;
t810 = -pkin(7) * t893 - t1227 * t858 + t1230 * t835;
t1235 = -pkin(3) * t986 + qJ(4) * t940 + t1219 * t890 + t1222 * t873;
t821 = -pkin(2) * t893 - t1235;
t867 = t1228 * t939 + t1231 * t894;
t1251 = pkin(6) * t867 + t1228 * t810 + t1231 * t821;
t874 = -pkin(4) * t988 + t889;
t895 = -pkin(8) * t988 + t1342;
t836 = -qJ(4) * t941 - t1219 * t874 + t1222 * t895;
t859 = -pkin(3) * t941 - t1254;
t902 = t1227 * t942 - t1230 * t988;
t811 = -pkin(7) * t902 - t1227 * t859 + t1230 * t836;
t1234 = -pkin(3) * t988 + qJ(4) * t942 + t1219 * t895 + t1222 * t874;
t822 = -pkin(2) * t902 - t1234;
t868 = t1228 * t941 + t1231 * t903;
t1250 = pkin(6) * t868 + t1228 * t811 + t1231 * t822;
t880 = -t1030 * t1230 + t1227 * t892;
t832 = -pkin(7) * t880 + (-qJ(4) * t1230 + t1349) * t891;
t847 = -pkin(2) * t880 - t1297;
t852 = t1228 * t891 + t1231 * t881;
t1249 = pkin(6) * t852 + t1228 * t832 + t1231 * t847;
t884 = -qJ(4) * t1040 - t891;
t990 = t1042 * t1227 + t1103 * t1230;
t864 = -pkin(7) * t990 + t1040 * t1349 + t1230 * t884;
t1238 = pkin(3) * t1103 + qJ(4) * t1042 + t892;
t865 = -pkin(2) * t990 - t1238;
t949 = t1040 * t1228 + t1231 * t991;
t1248 = pkin(6) * t949 + t1228 * t864 + t1231 * t865;
t933 = -pkin(3) * t1052 + t966;
t973 = -qJ(4) * t1052 + t1338;
t994 = t1053 * t1227 + t1110 * t1230;
t872 = -pkin(7) * t994 - t1227 * t933 + t1230 * t973;
t1243 = pkin(3) * t1110 + qJ(4) * t1053 - t1337;
t912 = -pkin(2) * t994 - t1243;
t959 = t1052 * t1228 + t1231 * t995;
t1247 = pkin(6) * t959 + t1228 * t872 + t1231 * t912;
t1010 = t1080 * t1227 - t1112 * t1230;
t936 = -pkin(3) * t1077 + t967;
t980 = -qJ(4) * t1077 + t1337;
t875 = -pkin(7) * t1010 - t1227 * t936 + t1230 * t980;
t1242 = -pkin(3) * t1112 + qJ(4) * t1080 + t1338;
t920 = -pkin(2) * t1010 - t1242;
t969 = t1013 * t1231 + t1077 * t1228;
t1246 = pkin(6) * t969 + t1228 * t875 + t1231 * t920;
t1152 = -t1351 * t1341 - t1261;
t1245 = t1152 * t1228 - t1300;
t1153 = t1185 * t1230 - t1216 * t1341;
t1244 = t1153 * t1228 + t1300;
t1142 = t1200 * t1227 + t1182;
t1028 = -pkin(2) * t1142 + t1062;
t1060 = -pkin(7) * t1142 + t1334;
t1099 = t1146 * t1231 - t1186 * t1228;
t1241 = pkin(6) * t1099 + t1028 * t1231 + t1060 * t1228;
t1144 = t1198 * t1230 - t1325;
t1029 = -pkin(2) * t1144 + t1063;
t1061 = -pkin(7) * t1144 + t1333;
t1100 = t1148 * t1231 + t1184 * t1228;
t1240 = pkin(6) * t1100 + t1029 * t1231 + t1061 * t1228;
t965 = t1097 * t1228 + t1231 * t985;
t1237 = pkin(6) * t965 - (-pkin(2) * t1231 - pkin(7) * t1228) * t984;
t1209 = t1224 * qJDD(2);
t1172 = t1230 * t1303;
t1166 = t1188 * t1224;
t1164 = t1188 * t1221;
t1163 = t1260 * t1221;
t1154 = qJDD(3) * t1228 + t1181 * t1231;
t1143 = t1197 * t1230 + t1326;
t1141 = t1199 * t1227 + t1324;
t1140 = t1294 * t1227;
t1139 = -t1227 * t1206 + t1172;
t1133 = t1259 * t1224;
t1132 = t1259 * t1221;
t1127 = t1184 * t1230 + t1186 * t1227;
t1125 = t1262 * t1224;
t1124 = t1262 * t1221;
t1123 = -t1166 * t1220 - t1223 * t1260;
t1122 = t1166 * t1223 - t1220 * t1260;
t1121 = t1153 * t1231 - t1301;
t1120 = t1152 * t1231 + t1301;
t1119 = t1147 * t1231 + t1228 * t1317;
t1118 = t1145 * t1231 + t1228 * t1316;
t1092 = t1128 * t1231 + t1191 * t1228;
t1086 = t1102 * t1227 + t1172;
t1084 = -t1319 + (t1163 * t1221 + t1165 * t1224) * pkin(6);
t1083 = -t1320 + (-t1164 * t1221 - t1166 * t1224) * pkin(6);
t1074 = -t1221 * t1140 + t1224 * t1244;
t1073 = -t1221 * t1139 + t1224 * t1245;
t1072 = t1224 * t1140 + t1221 * t1244;
t1071 = t1224 * t1139 + t1221 * t1245;
t1070 = -t1221 * t1143 + t1224 * t1257;
t1069 = -t1221 * t1141 + t1224 * t1258;
t1068 = t1224 * t1143 + t1221 * t1257;
t1067 = t1224 * t1141 + t1221 * t1258;
t1057 = -t1221 * t1144 + t1224 * t1265;
t1056 = -t1221 * t1142 + t1224 * t1266;
t1055 = t1224 * t1144 + t1221 * t1265;
t1054 = t1224 * t1142 + t1221 * t1266;
t1049 = t1096 * t1227 - t1310;
t1048 = t1094 * t1227 + t1310;
t1039 = -t1221 * t1127 + t1224 * t1267;
t1038 = t1224 * t1127 + t1221 * t1267;
t1037 = pkin(2) * t1186 + pkin(7) * t1146 - t1333;
t1036 = -pkin(2) * t1184 + pkin(7) * t1148 + t1334;
t1033 = t1047 * t1224;
t1032 = t1047 * t1221;
t1026 = -pkin(1) * t1164 + t1221 * t1113 + t1224 * t1291;
t1025 = pkin(1) * t1163 + t1221 * t1117 + t1224 * t1292;
t1024 = pkin(1) * t1166 - t1224 * t1113 + t1221 * t1291;
t1023 = -pkin(1) * t1165 - t1224 * t1117 + t1221 * t1292;
t1016 = t1087 * t1231 - t1101 * t1228;
t1012 = t1082 * t1227 - t1109 * t1230;
t1011 = t1081 * t1227 - t1111 * t1230;
t1005 = -t1046 * t1224 + t1221 * t1158;
t1004 = -t1046 * t1221 - t1224 * t1158;
t996 = t1043 * t1227 - t1130 * t1230;
t993 = t1051 * t1231 + t1095 * t1228;
t992 = t1050 * t1231 + t1093 * t1228;
t977 = pkin(2) * t1190 + pkin(7) * t1187 + t985;
t975 = -t1221 * t1086 + t1224 * t1268;
t974 = t1224 * t1086 + t1221 * t1268;
t971 = t1015 * t1231 + t1079 * t1228;
t970 = t1014 * t1231 + t1078 * t1228;
t968 = -pkin(2) * t1097 + pkin(7) * t985;
t964 = pkin(1) * t1005 + t1221 * t1346;
t963 = -pkin(1) * t1004 + t1224 * t1346;
t960 = t1003 * t1227 - t1044 * t1230;
t958 = t1041 * t1228 + t1231 * t997;
t953 = -t1221 * t1049 + t1224 * t1269;
t952 = -t1221 * t1048 + t1224 * t1270;
t951 = t1224 * t1049 + t1221 * t1269;
t950 = t1224 * t1048 + t1221 * t1270;
t948 = t1231 * t984 + (-t1124 * t1221 - t1125 * t1224) * pkin(6);
t943 = (-t1004 * t1221 - t1005 * t1224) * pkin(6);
t930 = -t1008 * t1230 + t1227 * t982;
t929 = t1006 * t1230 + t1227 * t981;
t926 = -t1221 * t1012 + t1224 * t1271;
t925 = -t1221 * t1011 + t1224 * t1272;
t924 = -t1221 * t1010 + t1224 * t1273;
t923 = t1224 * t1012 + t1221 * t1271;
t922 = t1224 * t1011 + t1221 * t1272;
t921 = t1224 * t1010 + t1221 * t1273;
t919 = t1002 * t1228 + t1231 * t961;
t918 = -t1228 * t1029 + t1231 * t1061 + (-t1055 * t1221 - t1057 * t1224) * pkin(6);
t917 = -t1228 * t1028 + t1231 * t1060 + (-t1054 * t1221 - t1056 * t1224) * pkin(6);
t916 = -t1221 * t996 + t1224 * t1277;
t915 = t1221 * t1277 + t1224 * t996;
t914 = -t1221 * t994 + t1224 * t1276;
t913 = t1221 * t1276 + t1224 * t994;
t909 = t1227 * t947 - t1230 * t999;
t908 = t1227 * t946 - t1230 * t998;
t907 = t1221 * t984 + t1224 * t1275;
t906 = t1221 * t1275 - t1224 * t984;
t905 = -t1221 * t990 + t1224 * t1278;
t904 = t1221 * t1278 + t1224 * t990;
t901 = -pkin(1) * t1055 - t1221 * t1036 + t1224 * t1240;
t900 = -pkin(1) * t1054 - t1221 * t1037 + t1224 * t1241;
t899 = pkin(1) * t1057 + t1224 * t1036 + t1221 * t1240;
t898 = pkin(1) * t1056 + t1224 * t1037 + t1221 * t1241;
t897 = -pkin(1) * t1124 - t1221 * t977 + t1224 * t1295;
t896 = pkin(1) * t1125 + t1221 * t1295 + t1224 * t977;
t886 = t1228 * t979 + t1231 * t932;
t885 = t1228 * t978 + t1231 * t931;
t882 = t1227 * t935 - t1230 * t955;
t877 = -t1221 * t960 + t1224 * t1279;
t876 = t1221 * t1279 + t1224 * t960;
t871 = t1228 * t945 + t1231 * t911;
t870 = t1228 * t944 + t1231 * t910;
t869 = -pkin(2) * t1077 + pkin(7) * t1013 + t1227 * t980 + t1230 * t936;
t866 = -pkin(2) * t1052 + pkin(7) * t995 + t1227 * t973 + t1230 * t933;
t863 = -t1221 * t930 + t1224 * t1280;
t862 = -t1221 * t929 + t1224 * t1281;
t861 = t1221 * t1280 + t1224 * t930;
t860 = t1221 * t1281 + t1224 * t929;
t857 = t1228 * t934 + t1231 * t883;
t856 = pkin(7) * t991 + t1227 * t884 + (-pkin(2) - t1348) * t1040;
t851 = -t1221 * t909 + t1224 * t1282;
t850 = -t1221 * t908 + t1224 * t1283;
t849 = t1221 * t1282 + t1224 * t909;
t848 = t1221 * t1283 + t1224 * t908;
t846 = -t1221 * t902 + t1224 * t1284;
t845 = t1221 * t1284 + t1224 * t902;
t844 = -(pkin(2) * t1228 - pkin(7) * t1231) * t984 + (-t1221 * t906 - t1224 * t907) * pkin(6);
t843 = -t1221 * t893 + t1224 * t1285;
t842 = t1221 * t1285 + t1224 * t893;
t841 = -pkin(1) * t906 - t1221 * t968 + t1224 * t1237;
t840 = pkin(1) * t907 + t1221 * t1237 + t1224 * t968;
t834 = -t1221 * t882 + t1224 * t1286;
t833 = t1221 * t1286 + t1224 * t882;
t831 = -t1221 * t878 + t1224 * t1288;
t830 = t1221 * t1288 + t1224 * t878;
t829 = -t1221 * t880 + t1224 * t1287;
t828 = t1221 * t1287 + t1224 * t880;
t827 = -t1228 * t920 + t1231 * t875 + (-t1221 * t921 - t1224 * t924) * pkin(6);
t825 = -t1228 * t912 + t1231 * t872 + (-t1221 * t913 - t1224 * t914) * pkin(6);
t823 = pkin(7) * t881 + (-pkin(2) + t1296) * t891;
t820 = -pkin(1) * t921 - t1221 * t869 + t1224 * t1246;
t819 = pkin(1) * t924 + t1221 * t1246 + t1224 * t869;
t816 = -t1228 * t865 + t1231 * t864 + (-t1221 * t904 - t1224 * t905) * pkin(6);
t815 = -pkin(1) * t913 - t1221 * t866 + t1224 * t1247;
t814 = pkin(1) * t914 + t1221 * t1247 + t1224 * t866;
t809 = -pkin(2) * t941 + pkin(7) * t903 + t1227 * t836 + t1230 * t859;
t808 = -pkin(2) * t939 + pkin(7) * t894 + t1227 * t835 + t1230 * t858;
t807 = -pkin(1) * t904 - t1221 * t856 + t1224 * t1248;
t806 = pkin(1) * t905 + t1221 * t1248 + t1224 * t856;
t802 = -pkin(2) * t927 + pkin(7) * t879 + t1227 * t824 + t1230 * t826;
t801 = -t1228 * t847 + t1231 * t832 + (-t1221 * t828 - t1224 * t829) * pkin(6);
t800 = -t1221 * t817 + t1224 * t1289;
t799 = t1221 * t1289 + t1224 * t817;
t797 = -t1228 * t822 + t1231 * t811 + (-t1221 * t845 - t1224 * t846) * pkin(6);
t796 = -t1228 * t821 + t1231 * t810 + (-t1221 * t842 - t1224 * t843) * pkin(6);
t795 = -pkin(1) * t828 - t1221 * t823 + t1224 * t1249;
t794 = pkin(1) * t829 + t1221 * t1249 + t1224 * t823;
t792 = -pkin(1) * t845 - t1221 * t809 + t1224 * t1250;
t791 = pkin(1) * t846 + t1221 * t1250 + t1224 * t809;
t790 = -pkin(2) * t837 + pkin(7) * t818 + t1227 * t805 + t1230 * t813;
t789 = -pkin(1) * t842 - t1221 * t808 + t1224 * t1251;
t788 = pkin(1) * t843 + t1221 * t1251 + t1224 * t808;
t787 = -t1228 * t812 + t1231 * t803 + (-t1221 * t830 - t1224 * t831) * pkin(6);
t786 = -pkin(1) * t830 - t1221 * t802 + t1224 * t1252;
t785 = pkin(1) * t831 + t1221 * t1252 + t1224 * t802;
t784 = -t1228 * t798 + t1231 * t793 + (-t1221 * t799 - t1224 * t800) * pkin(6);
t783 = -pkin(1) * t799 - t1221 * t790 + t1224 * t1253;
t782 = pkin(1) * t800 + t1221 * t1253 + t1224 * t790;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1360, -t1358, -t1353, -qJ(1) * t1353, 0, 0, -t1263, 0, t1123, t1220 * t1318, -qJ(1) * t1122 - t1026 * t1220 + t1083 * t1223, qJ(1) * t1264 - t1220 * t1025 + t1223 * t1084, -t1033 * t1220 + t1046 * t1223, t1223 * t943 - t1220 * t963 - qJ(1) * (t1005 * t1223 + t1047 * t1220), -t1074 * t1220 + t1121 * t1223, -t1039 * t1220 + t1092 * t1223, -t1070 * t1220 + t1119 * t1223, -t1073 * t1220 + t1120 * t1223, -t1069 * t1220 + t1118 * t1223, -t1133 * t1220 + t1154 * t1223, t1223 * t917 - t1220 * t900 - qJ(1) * (t1056 * t1223 + t1099 * t1220), t1223 * t918 - t1220 * t901 - qJ(1) * (t1057 * t1223 + t1100 * t1220), t1223 * t948 - t1220 * t897 - qJ(1) * (t1125 * t1223 + t1131 * t1220), t1223 * t844 - t1220 * t841 - qJ(1) * (t1220 * t965 + t1223 * t907), -t1220 * t953 + t1223 * t993, -t1220 * t916 + t1223 * t958, -t1220 * t925 + t1223 * t970, -t1220 * t952 + t1223 * t992, -t1220 * t926 + t1223 * t971, t1016 * t1223 - t1220 * t975, t1223 * t825 - t1220 * t815 - qJ(1) * (t1220 * t959 + t1223 * t914), t1223 * t827 - t1220 * t820 - qJ(1) * (t1220 * t969 + t1223 * t924), t1223 * t816 - t1220 * t807 - qJ(1) * (t1220 * t949 + t1223 * t905), t1223 * t801 - t1220 * t795 - qJ(1) * (t1220 * t852 + t1223 * t829), -t1220 * t863 + t1223 * t886, -t1220 * t834 + t1223 * t857, -t1220 * t850 + t1223 * t870, -t1220 * t862 + t1223 * t885, -t1220 * t851 + t1223 * t871, -t1220 * t877 + t1223 * t919, t1223 * t796 - t1220 * t789 - qJ(1) * (t1220 * t867 + t1223 * t843), t1223 * t797 - t1220 * t792 - qJ(1) * (t1220 * t868 + t1223 * t846), t1223 * t787 - t1220 * t786 - qJ(1) * (t1220 * t855 + t1223 * t831), t1223 * t784 - t1220 * t783 - qJ(1) * (t1220 * t804 + t1223 * t800); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1358, -t1360, t1354, qJ(1) * t1354, 0, 0, t1264, 0, t1122, -t1223 * t1318, qJ(1) * t1123 + t1026 * t1223 + t1083 * t1220, qJ(1) * t1263 + t1223 * t1025 + t1220 * t1084, t1033 * t1223 + t1046 * t1220, t1220 * t943 + t1223 * t963 + qJ(1) * (-t1005 * t1220 + t1047 * t1223), t1074 * t1223 + t1121 * t1220, t1039 * t1223 + t1092 * t1220, t1070 * t1223 + t1119 * t1220, t1073 * t1223 + t1120 * t1220, t1069 * t1223 + t1118 * t1220, t1133 * t1223 + t1154 * t1220, t1220 * t917 + t1223 * t900 + qJ(1) * (-t1056 * t1220 + t1099 * t1223), t1220 * t918 + t1223 * t901 + qJ(1) * (-t1057 * t1220 + t1100 * t1223), t1220 * t948 + t1223 * t897 + qJ(1) * (-t1125 * t1220 + t1131 * t1223), t1220 * t844 + t1223 * t841 + qJ(1) * (-t1220 * t907 + t1223 * t965), t1220 * t993 + t1223 * t953, t1220 * t958 + t1223 * t916, t1220 * t970 + t1223 * t925, t1220 * t992 + t1223 * t952, t1220 * t971 + t1223 * t926, t1016 * t1220 + t1223 * t975, t1220 * t825 + t1223 * t815 + qJ(1) * (-t1220 * t914 + t1223 * t959), t1220 * t827 + t1223 * t820 + qJ(1) * (-t1220 * t924 + t1223 * t969), t1220 * t816 + t1223 * t807 + qJ(1) * (-t1220 * t905 + t1223 * t949), t1220 * t801 + t1223 * t795 + qJ(1) * (-t1220 * t829 + t1223 * t852), t1220 * t886 + t1223 * t863, t1220 * t857 + t1223 * t834, t1220 * t870 + t1223 * t850, t1220 * t885 + t1223 * t862, t1220 * t871 + t1223 * t851, t1220 * t919 + t1223 * t877, t1220 * t796 + t1223 * t789 + qJ(1) * (-t1220 * t843 + t1223 * t867), t1220 * t797 + t1223 * t792 + qJ(1) * (-t1220 * t846 + t1223 * t868), t1220 * t787 + t1223 * t786 + qJ(1) * (-t1220 * t831 + t1223 * t855), t1220 * t784 + t1223 * t783 + qJ(1) * (-t1220 * t800 + t1223 * t804); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1308, t1192, 0, 0, 0, 0, t1163, 0, t1164, t1209, t1024, t1023, t1032, t964, t1072, t1038, t1068, t1071, t1067, t1132, t898, t899, t896, t840, t951, t915, t922, t950, t923, t974, t814, t819, t806, t794, t861, t833, t848, t860, t849, t876, t788, t791, t785, t782; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1344, -t1308, 0, 0, 0, t1188, 0, -t1260, 0, t1083, t1084, t1046, t943, t1121, t1092, t1119, t1120, t1118, t1154, t917, t918, t948, t844, t993, t958, t970, t992, t971, t1016, t825, t827, t816, t801, t886, t857, t870, t885, t871, t919, t796, t797, t787, t784; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1344, 0, -t1192, 0, 0, 0, t1165, 0, t1166, -t1318, t1026, t1025, t1033, t963, t1074, t1039, t1070, t1073, t1069, t1133, t900, t901, t897, t841, t953, t916, t925, t952, t926, t975, t815, t820, t807, t795, t863, t834, t850, t862, t851, t877, t789, t792, t786, t783; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1308, t1192, 0, 0, 0, 0, t1163, 0, t1164, t1209, t1024, t1023, t1032, t964, t1072, t1038, t1068, t1071, t1067, t1132, t898, t899, t896, t840, t951, t915, t922, t950, t923, t974, t814, t819, t806, t794, t861, t833, t848, t860, t849, t876, t788, t791, t785, t782; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1232, 0, 0, -t1158, t1113, 0, t1153, t1128, t1147, t1152, t1145, t1181, t1060, t1061, t984, pkin(7) * t984, t1051, t997, t1014, t1050, t1015, t1087, t872, t875, t864, t832, t932, t883, t910, t931, t911, t961, t810, t811, t803, t793; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1232, 0, qJDD(2), 0, t1158, 0, t1117, 0, t1202, -t1191, -t1317, -t1202, -t1316, -qJDD(3), t1028, t1029, 0, pkin(2) * t984, -t1095, -t1041, -t1078, -t1093, -t1079, t1101, t912, t920, t865, t847, -t979, -t934, -t944, -t978, -t945, -t1002, t821, t822, t812, t798; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1113, -t1117, 0, 0, t1140, t1127, t1143, t1139, t1141, 0, t1037, t1036, t977, t968, t1049, t996, t1011, t1048, t1012, t1086, t866, t869, t856, t823, t930, t882, t908, t929, t909, t960, t808, t809, t802, t790; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1185, t1186, t1193, -t1206, t1199, t1206, 0, t1097, t1062, 0, t1096, t1043, t1081, t1094, t1082, t1102, t973, t980, t884, -qJ(4) * t891, t982, t935, t946, t981, t947, t1003, t835, t836, t824, t805; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1205, t1184, t1197, t1303, t1194, -t1205, -t1097, 0, t1063, 0, -t1328, -t1130, -t1111, t1328, -t1109, t1303, t933, t936, -pkin(3) * t1040, -pkin(3) * t891, -t1008, -t955, -t998, t1006, -t999, -t1044, t858, t859, t826, t813; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1202, t1191, t1317, t1202, t1316, qJDD(3), -t1062, -t1063, 0, 0, t1095, t1041, t1078, t1093, t1079, -t1101, t1243, t1242, t1238, t1297, t979, t934, t944, t978, t945, t1002, t1235, t1234, t1355, t1356; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1156, t1110, t1256, -t1309, t1159, t1309, 0, t1030, t966, 0, t1009, t957, t1000, t1007, t1001, t1045, t890, t895, t839, -pkin(8) * t853; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1162, t1112, t1160, -t1304, -t1114, t1162, -t1030, 0, t967, 0, -t1090, -t1089, -t1021, t1090, t1017, -t1151, t873, t874, -pkin(4) * t954, -pkin(4) * t853; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1328, t1130, t1111, -t1328, t1109, -t1303, -t966, -t967, 0, 0, t1008, t955, t998, -t1006, t999, t1044, t1255, t1254, t1239, t1299; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1076, t1019, t1357, t1106, t1104, -t1106, 0, t937, t888, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1107, t1020, t1105, t1075, t1065, -t1107, -t937, 0, t889, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1090, t1089, t1021, -t1090, -t1017, t1151, -t888, -t889, 0, 0;];
m_new_reg = t1;
