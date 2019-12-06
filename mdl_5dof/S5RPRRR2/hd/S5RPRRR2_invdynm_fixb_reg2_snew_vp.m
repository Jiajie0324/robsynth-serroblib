% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RPRRR2
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5,theta2]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:13
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RPRRR2_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR2_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR2_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRR2_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRR2_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR2_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:12:52
% EndTime: 2019-12-05 18:13:13
% DurationCPUTime: 21.86s
% Computational Cost: add. (196007->694), mult. (490268->994), div. (0->0), fcn. (381165->10), ass. (0->482)
t1236 = sin(qJ(5));
t1235 = cos(pkin(9));
t1238 = sin(qJ(3));
t1242 = cos(qJ(3));
t1234 = sin(pkin(9));
t1316 = qJD(1) * t1234;
t1200 = -t1242 * t1235 * qJD(1) + t1238 * t1316;
t1258 = t1234 * t1242 + t1235 * t1238;
t1202 = t1258 * qJD(1);
t1237 = sin(qJ(4));
t1241 = cos(qJ(4));
t1164 = t1241 * t1200 + t1237 * t1202;
t1166 = -t1237 * t1200 + t1241 * t1202;
t1240 = cos(qJ(5));
t1117 = t1240 * t1164 + t1236 * t1166;
t1119 = -t1236 * t1164 + t1240 * t1166;
t1057 = t1119 * t1117;
t1230 = qJDD(3) + qJDD(4);
t1221 = qJDD(5) + t1230;
t1336 = -t1057 + t1221;
t1343 = t1236 * t1336;
t1125 = t1166 * t1164;
t1334 = -t1125 + t1230;
t1342 = t1237 * t1334;
t1180 = t1202 * t1200;
t1332 = qJDD(3) - t1180;
t1341 = t1238 * t1332;
t1340 = t1240 * t1336;
t1339 = t1241 * t1334;
t1338 = t1242 * t1332;
t1223 = t1234 * qJDD(1);
t1225 = t1235 * qJDD(1);
t1198 = t1238 * t1223 - t1242 * t1225;
t1313 = t1202 * qJD(3);
t1175 = -t1198 - t1313;
t1193 = t1200 * qJD(3);
t1199 = t1258 * qJDD(1);
t1177 = -t1193 + t1199;
t1270 = -t1241 * t1175 + t1237 * t1177;
t1097 = -t1166 * qJD(4) - t1270;
t1098 = -t1164 * qJD(4) + t1237 * t1175 + t1241 * t1177;
t1012 = -t1117 * qJD(5) + t1236 * t1097 + t1240 * t1098;
t1233 = qJD(3) + qJD(4);
t1227 = qJD(5) + t1233;
t1111 = t1227 * t1117;
t1337 = t1012 - t1111;
t1155 = t1233 * t1164;
t1335 = t1098 - t1155;
t1069 = t1098 + t1155;
t1231 = t1234 ^ 2;
t1232 = t1235 ^ 2;
t1333 = t1231 + t1232;
t1245 = qJD(1) ^ 2;
t1331 = t1245 * t1333;
t1271 = -t1240 * t1097 + t1236 * t1098;
t983 = (qJD(5) - t1227) * t1119 + t1271;
t1065 = (qJD(4) - t1233) * t1166 + t1270;
t1115 = t1117 ^ 2;
t1116 = t1119 ^ 2;
t1162 = t1164 ^ 2;
t1163 = t1166 ^ 2;
t1196 = t1200 ^ 2;
t1197 = t1202 ^ 2;
t1220 = t1227 ^ 2;
t1229 = t1233 ^ 2;
t1239 = sin(qJ(1));
t1243 = cos(qJ(1));
t1214 = t1243 * g(1) + t1239 * g(2);
t1203 = -t1245 * pkin(1) + qJDD(1) * qJ(2) - t1214;
t1300 = t1235 * t1245;
t1326 = pkin(6) * qJDD(1);
t1327 = t1235 * g(3);
t1151 = -t1327 - 0.2e1 * qJD(2) * t1316 + (pkin(2) * t1300 - t1203 - t1326) * t1234;
t1226 = t1232 * t1245;
t1272 = 0.2e1 * qJD(1) * qJD(2) + t1203;
t1328 = t1234 * g(3);
t1158 = -pkin(2) * t1226 - t1328 + (t1272 + t1326) * t1235;
t1102 = -t1242 * t1151 + t1238 * t1158;
t1103 = t1238 * t1151 + t1242 * t1158;
t1038 = -t1242 * t1102 + t1238 * t1103;
t1330 = pkin(2) * t1038;
t1128 = -t1198 * t1238 - t1242 * t1199;
t1329 = pkin(2) * t1128;
t1325 = qJDD(1) * pkin(1);
t1046 = (-t1177 - t1193) * pkin(7) + t1332 * pkin(3) - t1102;
t1265 = qJD(3) * pkin(3) - t1202 * pkin(7);
t1056 = -t1196 * pkin(3) + t1175 * pkin(7) - qJD(3) * t1265 + t1103;
t998 = -t1241 * t1046 + t1237 * t1056;
t958 = t1334 * pkin(4) - t1069 * pkin(8) - t998;
t1264 = t1233 * pkin(4) - t1166 * pkin(8);
t999 = t1237 * t1046 + t1241 * t1056;
t960 = -t1162 * pkin(4) + t1097 * pkin(8) - t1233 * t1264 + t999;
t908 = t1236 * t960 - t1240 * t958;
t909 = t1236 * t958 + t1240 * t960;
t875 = t1236 * t909 - t1240 * t908;
t1318 = t1241 * t875;
t876 = t1236 * t908 + t1240 * t909;
t846 = t1237 * t876 + t1318;
t874 = pkin(4) * t875;
t1324 = pkin(3) * t846 + t874;
t986 = t1012 + t1111;
t932 = -t1236 * t983 - t1240 * t986;
t934 = t1236 * t986 - t1240 * t983;
t891 = t1237 * t934 + t1241 * t932;
t930 = pkin(4) * t932;
t1323 = pkin(3) * t891 + t930;
t1213 = t1239 * g(1) - t1243 * g(2);
t1262 = -qJDD(2) + t1213;
t1170 = (pkin(2) * t1235 + pkin(1)) * qJDD(1) + (pkin(6) * t1333 + qJ(2)) * t1245 + t1262;
t1089 = t1175 * pkin(3) + t1196 * pkin(7) - t1202 * t1265 + t1170;
t996 = t1097 * pkin(4) + t1162 * pkin(8) - t1166 * t1264 + t1089;
t1322 = t1236 * t996;
t1321 = t1237 * t875;
t941 = t1237 * t999 - t1241 * t998;
t1320 = t1238 * t941;
t1319 = t1240 * t996;
t1317 = t1242 * t941;
t1315 = t1200 * t1238;
t1314 = t1200 * t1242;
t1312 = t1202 * t1238;
t1311 = t1202 * t1242;
t1310 = t1227 * t1119;
t1309 = t1227 * t1236;
t1308 = t1227 * t1240;
t1307 = t1231 * t1245;
t1306 = t1233 * t1166;
t1305 = t1233 * t1237;
t1304 = t1233 * t1241;
t1303 = t1234 * t1038;
t1302 = t1234 * t1235;
t1301 = t1235 * t1038;
t1049 = t1057 + t1221;
t1299 = t1236 * t1049;
t1298 = t1237 * t1089;
t1122 = t1125 + t1230;
t1297 = t1237 * t1122;
t1296 = t1238 * t1170;
t1172 = qJDD(3) + t1180;
t1295 = t1238 * t1172;
t1194 = t1245 * qJ(2) + t1262 + t1325;
t1294 = t1239 * t1194;
t1293 = t1240 * t1049;
t1292 = t1241 * t1089;
t1291 = t1241 * t1122;
t1290 = t1242 * t1170;
t1289 = t1242 * t1172;
t1288 = t1243 * t1194;
t1285 = t1239 * qJDD(1);
t1284 = t1243 * qJDD(1);
t942 = t1237 * t998 + t1241 * t999;
t897 = t1238 * t942 + t1317;
t939 = pkin(3) * t941;
t1283 = pkin(2) * t897 + t939;
t1282 = t1239 * t1057;
t1281 = t1239 * t1125;
t1280 = t1239 * t1180;
t1279 = t1243 * t1057;
t1278 = t1243 * t1125;
t1277 = t1243 * t1180;
t1149 = -t1163 - t1229;
t1076 = t1241 * t1149 - t1297;
t1276 = pkin(3) * t1076 - t999;
t1014 = -t1065 * t1237 - t1241 * t1069;
t1010 = pkin(3) * t1014;
t1016 = -t1065 * t1241 + t1237 * t1069;
t953 = t1242 * t1014 + t1238 * t1016;
t1275 = pkin(2) * t953 + t1010;
t1274 = t1234 * t1225;
t1273 = t1194 + t1325;
t1039 = t1238 * t1102 + t1242 * t1103;
t1181 = t1272 * t1234 + t1327;
t1182 = t1272 * t1235 - t1328;
t1134 = t1234 * t1181 + t1235 * t1182;
t1269 = -t1239 * t1213 - t1243 * t1214;
t847 = t1241 * t876 - t1321;
t826 = t1238 * t847 + t1242 * t846;
t1268 = pkin(2) * t826 + t1324;
t893 = -t1237 * t932 + t1241 * t934;
t854 = t1238 * t893 + t1242 * t891;
t1267 = pkin(2) * t854 + t1323;
t1244 = qJD(3) ^ 2;
t1189 = -t1197 - t1244;
t1137 = t1242 * t1189 - t1295;
t1266 = pkin(2) * t1137 - t1103;
t1212 = -t1239 * t1245 + t1284;
t1263 = -pkin(5) * t1212 - t1239 * g(3);
t1047 = -t1220 - t1115;
t1001 = t1236 * t1047 + t1340;
t1261 = pkin(4) * t1001 - t908;
t1120 = -t1229 - t1162;
t1053 = t1237 * t1120 + t1339;
t1260 = pkin(3) * t1053 - t998;
t1133 = t1235 * t1181 - t1234 * t1182;
t1259 = t1243 * t1213 - t1239 * t1214;
t1211 = t1243 * t1245 + t1285;
t1077 = -t1237 * t1149 - t1291;
t1020 = t1242 * t1076 + t1238 * t1077;
t1257 = pkin(2) * t1020 + t1276;
t1002 = t1240 * t1047 - t1343;
t944 = t1241 * t1001 + t1237 * t1002;
t1256 = pkin(3) * t944 + t1261;
t1169 = -t1244 - t1196;
t1126 = t1238 * t1169 + t1338;
t1255 = pkin(2) * t1126 - t1102;
t1101 = -t1116 - t1220;
t1023 = t1240 * t1101 - t1299;
t1254 = pkin(4) * t1023 - t909;
t1205 = t1235 * t1331;
t1253 = -t1239 * t1205 + t1235 * t1284;
t1252 = t1243 * t1205 + t1235 * t1285;
t1054 = t1241 * t1120 - t1342;
t1003 = t1242 * t1053 + t1238 * t1054;
t1251 = pkin(2) * t1003 + t1260;
t1024 = -t1236 * t1101 - t1293;
t964 = t1241 * t1023 + t1237 * t1024;
t1250 = pkin(3) * t964 + t1254;
t945 = -t1237 * t1001 + t1241 * t1002;
t899 = t1238 * t945 + t1242 * t944;
t1249 = pkin(2) * t899 + t1256;
t965 = -t1237 * t1023 + t1241 * t1024;
t913 = t1238 * t965 + t1242 * t964;
t1248 = pkin(2) * t913 + t1250;
t1224 = t1232 * qJDD(1);
t1222 = t1231 * qJDD(1);
t1216 = t1234 * t1300;
t1215 = 0.2e1 * t1274;
t1210 = -t1226 + t1307;
t1209 = t1226 + t1307;
t1208 = t1224 - t1222;
t1207 = t1224 + t1222;
t1204 = t1234 * t1331;
t1195 = -pkin(5) * t1211 + t1243 * g(3);
t1188 = -t1197 + t1244;
t1187 = t1196 - t1244;
t1186 = t1212 * t1302;
t1185 = t1211 * t1302;
t1184 = t1243 * t1204 + t1234 * t1285;
t1183 = t1239 * t1204 - t1234 * t1284;
t1179 = t1197 - t1196;
t1176 = -0.2e1 * t1193 + t1199;
t1174 = t1198 + 0.2e1 * t1313;
t1161 = (t1312 - t1314) * qJD(3);
t1160 = (-t1311 - t1315) * qJD(3);
t1157 = -qJ(2) * t1205 + t1273 * t1235;
t1156 = qJ(2) * t1204 - t1273 * t1234;
t1153 = -t1163 + t1229;
t1152 = t1162 - t1229;
t1146 = -t1196 - t1197;
t1144 = -qJD(3) * t1312 + t1242 * t1177;
t1143 = qJD(3) * t1311 + t1238 * t1177;
t1142 = qJD(3) * t1314 - t1238 * t1175;
t1141 = qJD(3) * t1315 + t1242 * t1175;
t1140 = -t1238 * t1189 - t1289;
t1139 = -t1238 * t1188 + t1338;
t1138 = t1242 * t1187 - t1295;
t1136 = t1242 * t1188 + t1341;
t1135 = t1238 * t1187 + t1289;
t1131 = -t1242 * t1174 - t1238 * t1176;
t1130 = -t1198 * t1242 + t1238 * t1199;
t1129 = -t1238 * t1174 + t1242 * t1176;
t1127 = t1242 * t1169 - t1341;
t1124 = t1163 - t1162;
t1113 = pkin(1) * t1194 + qJ(2) * t1134;
t1110 = -t1234 * t1160 + t1235 * t1161;
t1109 = t1235 * t1160 + t1234 * t1161;
t1108 = -t1116 + t1220;
t1107 = t1115 - t1220;
t1106 = (-t1164 * t1241 + t1166 * t1237) * t1233;
t1105 = (-t1164 * t1237 - t1166 * t1241) * t1233;
t1104 = pkin(1) * t1209 + qJ(2) * t1207 + t1134;
t1099 = -pkin(6) * t1137 - t1290;
t1096 = -pkin(6) * t1126 - t1296;
t1095 = -t1162 - t1163;
t1093 = -t1234 * t1143 + t1235 * t1144;
t1092 = -t1234 * t1141 + t1235 * t1142;
t1091 = t1235 * t1143 + t1234 * t1144;
t1090 = t1235 * t1141 + t1234 * t1142;
t1088 = -t1234 * t1137 + t1235 * t1140;
t1087 = -t1234 * t1136 + t1235 * t1139;
t1086 = -t1234 * t1135 + t1235 * t1138;
t1085 = t1235 * t1137 + t1234 * t1140;
t1084 = t1235 * t1136 + t1234 * t1139;
t1083 = t1235 * t1135 + t1234 * t1138;
t1082 = t1241 * t1152 - t1297;
t1081 = -t1237 * t1153 + t1339;
t1080 = t1237 * t1152 + t1291;
t1079 = t1241 * t1153 + t1342;
t1078 = -pkin(2) * t1176 + pkin(6) * t1140 - t1296;
t1074 = -pkin(2) * t1174 + pkin(6) * t1127 + t1290;
t1073 = -t1234 * t1129 + t1235 * t1131;
t1072 = -t1234 * t1128 + t1235 * t1130;
t1071 = t1235 * t1129 + t1234 * t1131;
t1070 = t1235 * t1128 + t1234 * t1130;
t1064 = (qJD(4) + t1233) * t1166 + t1270;
t1063 = -t1234 * t1126 + t1235 * t1127;
t1062 = t1235 * t1126 + t1234 * t1127;
t1061 = t1241 * t1098 - t1166 * t1305;
t1060 = t1237 * t1098 + t1166 * t1304;
t1059 = -t1237 * t1097 + t1164 * t1304;
t1058 = t1241 * t1097 + t1164 * t1305;
t1055 = t1116 - t1115;
t1045 = (-t1117 * t1240 + t1119 * t1236) * t1227;
t1044 = (-t1117 * t1236 - t1119 * t1240) * t1227;
t1041 = -t1238 * t1105 + t1242 * t1106;
t1040 = t1242 * t1105 + t1238 * t1106;
t1037 = pkin(2) * t1170 + pkin(6) * t1039;
t1036 = -pkin(1) * t1070 - t1329;
t1035 = -t1115 - t1116;
t1034 = -pkin(7) * t1076 - t1292;
t1033 = -pkin(6) * t1128 - t1038;
t1032 = -t1238 * t1080 + t1242 * t1082;
t1031 = -t1238 * t1079 + t1242 * t1081;
t1030 = t1242 * t1080 + t1238 * t1082;
t1029 = t1242 * t1079 + t1238 * t1081;
t1028 = t1240 * t1107 - t1299;
t1027 = -t1236 * t1108 + t1340;
t1026 = t1236 * t1107 + t1293;
t1025 = t1240 * t1108 + t1343;
t1021 = -t1238 * t1076 + t1242 * t1077;
t1019 = -pkin(1) * t1085 - t1266;
t1018 = -pkin(7) * t1053 - t1298;
t1017 = -pkin(2) * t1146 + pkin(6) * t1130 + t1039;
t1015 = -t1241 * t1064 - t1237 * t1335;
t1013 = -t1237 * t1064 + t1241 * t1335;
t1011 = -t1119 * qJD(5) - t1271;
t1009 = -pkin(1) * t1062 - t1255;
t1008 = -t1238 * t1060 + t1242 * t1061;
t1007 = -t1238 * t1058 + t1242 * t1059;
t1006 = t1242 * t1060 + t1238 * t1061;
t1005 = t1242 * t1058 + t1238 * t1059;
t1004 = -t1238 * t1053 + t1242 * t1054;
t995 = -qJ(2) * t1085 - t1234 * t1078 + t1235 * t1099;
t994 = -t1237 * t1044 + t1241 * t1045;
t993 = t1241 * t1044 + t1237 * t1045;
t992 = -t1234 * t1040 + t1235 * t1041;
t991 = t1235 * t1040 + t1234 * t1041;
t990 = t1235 * t1039 - t1303;
t989 = t1234 * t1039 + t1301;
t988 = -pkin(1) * t1176 + qJ(2) * t1088 + t1235 * t1078 + t1234 * t1099;
t982 = (qJD(5) + t1227) * t1119 + t1271;
t981 = t1240 * t1012 - t1119 * t1309;
t980 = t1236 * t1012 + t1119 * t1308;
t979 = -t1236 * t1011 + t1117 * t1308;
t978 = t1240 * t1011 + t1117 * t1309;
t977 = -pkin(3) * t1335 + pkin(7) * t1077 - t1298;
t976 = -qJ(2) * t1062 - t1234 * t1074 + t1235 * t1096;
t975 = -pkin(3) * t1064 + pkin(7) * t1054 + t1292;
t974 = -pkin(1) * t1174 + qJ(2) * t1063 + t1235 * t1074 + t1234 * t1096;
t973 = -t1237 * t1026 + t1241 * t1028;
t972 = -t1237 * t1025 + t1241 * t1027;
t971 = t1241 * t1026 + t1237 * t1028;
t970 = t1241 * t1025 + t1237 * t1027;
t969 = -t1234 * t1030 + t1235 * t1032;
t968 = -t1234 * t1029 + t1235 * t1031;
t967 = t1235 * t1030 + t1234 * t1032;
t966 = t1235 * t1029 + t1234 * t1031;
t962 = -t1234 * t1020 + t1235 * t1021;
t961 = t1235 * t1020 + t1234 * t1021;
t959 = -pkin(1) * t989 - t1330;
t956 = -pkin(8) * t1023 - t1319;
t955 = -t1238 * t1014 + t1242 * t1016;
t954 = -t1238 * t1013 + t1242 * t1015;
t952 = t1242 * t1013 + t1238 * t1015;
t951 = -t1234 * t1006 + t1235 * t1008;
t950 = -t1234 * t1005 + t1235 * t1007;
t949 = t1235 * t1006 + t1234 * t1008;
t948 = t1235 * t1005 + t1234 * t1007;
t947 = -t1234 * t1003 + t1235 * t1004;
t946 = t1235 * t1003 + t1234 * t1004;
t940 = -pkin(8) * t1001 - t1322;
t938 = -qJ(2) * t1070 - t1234 * t1017 + t1235 * t1033;
t937 = -t1238 * t993 + t1242 * t994;
t936 = t1238 * t994 + t1242 * t993;
t935 = -pkin(1) * t1146 + qJ(2) * t1072 + t1235 * t1017 + t1234 * t1033;
t933 = -t1236 * t1337 - t1240 * t982;
t931 = -t1236 * t982 + t1240 * t1337;
t929 = -pkin(6) * t1301 - qJ(2) * t989 - t1234 * t1037;
t928 = -t1237 * t980 + t1241 * t981;
t927 = -t1237 * t978 + t1241 * t979;
t926 = t1237 * t981 + t1241 * t980;
t925 = t1237 * t979 + t1241 * t978;
t924 = pkin(3) * t1089 + pkin(7) * t942;
t923 = pkin(1) * t1170 - pkin(6) * t1303 + qJ(2) * t990 + t1235 * t1037;
t922 = -pkin(6) * t1020 + t1242 * t1034 - t1238 * t977;
t921 = -pkin(7) * t1014 - t941;
t920 = -pkin(4) * t1337 + pkin(8) * t1024 - t1322;
t919 = -t1238 * t971 + t1242 * t973;
t918 = -t1238 * t970 + t1242 * t972;
t917 = t1238 * t973 + t1242 * t971;
t916 = t1238 * t972 + t1242 * t970;
t915 = -pkin(6) * t1003 + t1242 * t1018 - t1238 * t975;
t914 = -t1238 * t964 + t1242 * t965;
t912 = -pkin(2) * t1335 + pkin(6) * t1021 + t1238 * t1034 + t1242 * t977;
t911 = -pkin(4) * t982 + pkin(8) * t1002 + t1319;
t910 = -pkin(3) * t1095 + pkin(7) * t1016 + t942;
t906 = -pkin(2) * t1064 + pkin(6) * t1004 + t1238 * t1018 + t1242 * t975;
t905 = -t1234 * t953 + t1235 * t955;
t904 = -t1234 * t952 + t1235 * t954;
t903 = t1234 * t955 + t1235 * t953;
t902 = t1234 * t954 + t1235 * t952;
t901 = -pkin(1) * t961 - t1257;
t900 = -t1238 * t944 + t1242 * t945;
t898 = t1242 * t942 - t1320;
t896 = -t1234 * t936 + t1235 * t937;
t895 = t1234 * t937 + t1235 * t936;
t894 = -pkin(1) * t946 - t1251;
t892 = -t1237 * t931 + t1241 * t933;
t890 = t1237 * t933 + t1241 * t931;
t888 = -t1238 * t926 + t1242 * t928;
t887 = -t1238 * t925 + t1242 * t927;
t886 = t1238 * t928 + t1242 * t926;
t885 = t1238 * t927 + t1242 * t925;
t884 = -t1234 * t917 + t1235 * t919;
t883 = -t1234 * t916 + t1235 * t918;
t882 = t1234 * t919 + t1235 * t917;
t881 = t1234 * t918 + t1235 * t916;
t880 = -t1234 * t913 + t1235 * t914;
t879 = t1234 * t914 + t1235 * t913;
t878 = -pkin(7) * t964 - t1237 * t920 + t1241 * t956;
t877 = -pkin(1) * t903 - t1275;
t873 = -pkin(7) * t944 - t1237 * t911 + t1241 * t940;
t872 = -qJ(2) * t961 - t1234 * t912 + t1235 * t922;
t871 = -pkin(3) * t1337 + pkin(7) * t965 + t1237 * t956 + t1241 * t920;
t870 = pkin(4) * t996 + pkin(8) * t876;
t869 = -pkin(1) * t1335 + qJ(2) * t962 + t1234 * t922 + t1235 * t912;
t868 = -pkin(6) * t953 - t1238 * t910 + t1242 * t921;
t867 = -t1234 * t899 + t1235 * t900;
t866 = t1234 * t900 + t1235 * t899;
t865 = -t1234 * t897 + t1235 * t898;
t864 = t1234 * t898 + t1235 * t897;
t863 = -pkin(2) * t1095 + pkin(6) * t955 + t1238 * t921 + t1242 * t910;
t862 = -pkin(3) * t982 + pkin(7) * t945 + t1237 * t940 + t1241 * t911;
t861 = -pkin(6) * t897 - pkin(7) * t1317 - t1238 * t924;
t860 = -qJ(2) * t946 - t1234 * t906 + t1235 * t915;
t859 = pkin(2) * t1089 + pkin(6) * t898 - pkin(7) * t1320 + t1242 * t924;
t858 = -pkin(8) * t932 - t875;
t857 = -pkin(1) * t1064 + qJ(2) * t947 + t1234 * t915 + t1235 * t906;
t856 = -t1238 * t891 + t1242 * t893;
t855 = -t1238 * t890 + t1242 * t892;
t853 = t1238 * t892 + t1242 * t890;
t852 = -t1234 * t886 + t1235 * t888;
t851 = -t1234 * t885 + t1235 * t887;
t850 = t1234 * t888 + t1235 * t886;
t849 = t1234 * t887 + t1235 * t885;
t848 = -pkin(4) * t1035 + pkin(8) * t934 + t876;
t844 = -pkin(1) * t864 - t1283;
t843 = -pkin(1) * t879 - t1248;
t842 = -pkin(6) * t913 - t1238 * t871 + t1242 * t878;
t841 = -pkin(2) * t1337 + pkin(6) * t914 + t1238 * t878 + t1242 * t871;
t840 = -pkin(1) * t866 - t1249;
t839 = -t1234 * t854 + t1235 * t856;
t838 = -t1234 * t853 + t1235 * t855;
t837 = t1234 * t856 + t1235 * t854;
t836 = t1234 * t855 + t1235 * t853;
t835 = -pkin(6) * t899 - t1238 * t862 + t1242 * t873;
t834 = -qJ(2) * t903 - t1234 * t863 + t1235 * t868;
t833 = -pkin(1) * t1095 + qJ(2) * t905 + t1234 * t868 + t1235 * t863;
t832 = -pkin(2) * t982 + pkin(6) * t900 + t1238 * t873 + t1242 * t862;
t831 = -pkin(7) * t891 - t1237 * t848 + t1241 * t858;
t830 = -pkin(3) * t1035 + pkin(7) * t893 + t1237 * t858 + t1241 * t848;
t829 = -qJ(2) * t864 - t1234 * t859 + t1235 * t861;
t828 = pkin(1) * t1089 + qJ(2) * t865 + t1234 * t861 + t1235 * t859;
t827 = -t1238 * t846 + t1242 * t847;
t825 = -pkin(7) * t846 - pkin(8) * t1318 - t1237 * t870;
t824 = pkin(3) * t996 + pkin(7) * t847 - pkin(8) * t1321 + t1241 * t870;
t823 = -pkin(1) * t837 - t1267;
t822 = -qJ(2) * t879 - t1234 * t841 + t1235 * t842;
t821 = -pkin(1) * t1337 + qJ(2) * t880 + t1234 * t842 + t1235 * t841;
t820 = -qJ(2) * t866 - t1234 * t832 + t1235 * t835;
t819 = -pkin(1) * t982 + qJ(2) * t867 + t1234 * t835 + t1235 * t832;
t818 = -t1234 * t826 + t1235 * t827;
t817 = t1234 * t827 + t1235 * t826;
t816 = -pkin(6) * t854 - t1238 * t830 + t1242 * t831;
t815 = -pkin(2) * t1035 + pkin(6) * t856 + t1238 * t831 + t1242 * t830;
t814 = -pkin(6) * t826 - t1238 * t824 + t1242 * t825;
t813 = pkin(2) * t996 + pkin(6) * t827 + t1238 * t825 + t1242 * t824;
t812 = -pkin(1) * t817 - t1268;
t811 = -qJ(2) * t837 - t1234 * t815 + t1235 * t816;
t810 = -pkin(1) * t1035 + qJ(2) * t839 + t1234 * t816 + t1235 * t815;
t809 = -qJ(2) * t817 - t1234 * t813 + t1235 * t814;
t808 = pkin(1) * t996 + qJ(2) * t818 + t1234 * t814 + t1235 * t813;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1212, 0, -t1211, 0, t1263, -t1195, -t1259, -pkin(5) * t1259, t1186, t1243 * t1208 + t1239 * t1210, t1184, -t1186, t1252, 0, -pkin(5) * t1253 - t1239 * t1181 - t1234 * t1288, -pkin(5) * t1183 - t1239 * t1182 - t1235 * t1288, t1243 * t1133 - pkin(5) * (t1239 * t1207 + t1243 * t1209), -pkin(5) * (t1239 * t1134 + t1288) - (t1239 * pkin(1) - t1243 * qJ(2)) * t1133, t1243 * t1093 + t1280, t1243 * t1073 + t1239 * t1179, t1243 * t1087 + t1239 * t1199, t1243 * t1092 - t1280, t1243 * t1086 - t1239 * t1198, t1239 * qJDD(3) + t1243 * t1110, t1243 * t976 - t1239 * t1009 - pkin(5) * (t1239 * t1063 - t1243 * t1174), t1243 * t995 - t1239 * t1019 - pkin(5) * (t1239 * t1088 - t1243 * t1176), t1243 * t938 - t1239 * t1036 - pkin(5) * (t1239 * t1072 - t1243 * t1146), t1243 * t929 - t1239 * t959 - pkin(5) * (t1243 * t1170 + t1239 * t990), t1243 * t951 + t1281, t1239 * t1124 + t1243 * t904, t1239 * t1069 + t1243 * t968, t1243 * t950 - t1281, -t1239 * t1065 + t1243 * t969, t1239 * t1230 + t1243 * t992, t1243 * t860 - t1239 * t894 - pkin(5) * (-t1243 * t1064 + t1239 * t947), t1243 * t872 - t1239 * t901 - pkin(5) * (t1239 * t962 - t1243 * t1335), t1243 * t834 - t1239 * t877 - pkin(5) * (-t1243 * t1095 + t1239 * t905), t1243 * t829 - t1239 * t844 - pkin(5) * (t1243 * t1089 + t1239 * t865), t1243 * t852 + t1282, t1239 * t1055 + t1243 * t838, t1239 * t986 + t1243 * t883, t1243 * t851 - t1282, -t1239 * t983 + t1243 * t884, t1239 * t1221 + t1243 * t896, t1243 * t820 - t1239 * t840 - pkin(5) * (t1239 * t867 - t1243 * t982), t1243 * t822 - t1239 * t843 - pkin(5) * (t1239 * t880 - t1243 * t1337), t1243 * t811 - t1239 * t823 - pkin(5) * (-t1243 * t1035 + t1239 * t839), t1243 * t809 - t1239 * t812 - pkin(5) * (t1239 * t818 + t1243 * t996); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1211, 0, t1212, 0, t1195, t1263, t1269, pkin(5) * t1269, t1185, t1239 * t1208 - t1243 * t1210, t1183, -t1185, -t1253, 0, -pkin(5) * t1252 + t1243 * t1181 - t1234 * t1294, pkin(5) * t1184 + t1243 * t1182 - t1235 * t1294, t1239 * t1133 + pkin(5) * (t1243 * t1207 - t1239 * t1209), pkin(5) * (t1243 * t1134 - t1294) - (-t1243 * pkin(1) - t1239 * qJ(2)) * t1133, t1239 * t1093 - t1277, t1239 * t1073 - t1243 * t1179, t1239 * t1087 - t1243 * t1199, t1239 * t1092 + t1277, t1239 * t1086 + t1243 * t1198, -t1243 * qJDD(3) + t1239 * t1110, t1239 * t976 + t1243 * t1009 + pkin(5) * (t1243 * t1063 + t1239 * t1174), t1239 * t995 + t1243 * t1019 + pkin(5) * (t1243 * t1088 + t1239 * t1176), t1239 * t938 + t1243 * t1036 + pkin(5) * (t1243 * t1072 + t1239 * t1146), t1239 * t929 + t1243 * t959 + pkin(5) * (-t1239 * t1170 + t1243 * t990), t1239 * t951 - t1278, -t1243 * t1124 + t1239 * t904, -t1243 * t1069 + t1239 * t968, t1239 * t950 + t1278, t1243 * t1065 + t1239 * t969, -t1243 * t1230 + t1239 * t992, t1239 * t860 + t1243 * t894 + pkin(5) * (t1239 * t1064 + t1243 * t947), t1239 * t872 + t1243 * t901 + pkin(5) * (t1239 * t1335 + t1243 * t962), t1239 * t834 + t1243 * t877 + pkin(5) * (t1239 * t1095 + t1243 * t905), t1239 * t829 + t1243 * t844 + pkin(5) * (-t1239 * t1089 + t1243 * t865), t1239 * t852 - t1279, -t1243 * t1055 + t1239 * t838, t1239 * t883 - t1243 * t986, t1239 * t851 + t1279, t1239 * t884 + t1243 * t983, -t1243 * t1221 + t1239 * t896, t1239 * t820 + t1243 * t840 + pkin(5) * (t1239 * t982 + t1243 * t867), t1239 * t822 + t1243 * t843 + pkin(5) * (t1239 * t1337 + t1243 * t880), t1239 * t811 + t1243 * t823 + pkin(5) * (t1239 * t1035 + t1243 * t839), t1239 * t809 + t1243 * t812 + pkin(5) * (-t1239 * t996 + t1243 * t818); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1213, t1214, 0, 0, t1222, t1215, 0, t1224, 0, 0, t1157, t1156, t1104, t1113, t1091, t1071, t1084, t1090, t1083, t1109, t974, t988, t935, t923, t949, t902, t966, t948, t967, t991, t857, t869, t833, t828, t850, t836, t881, t849, t882, t895, t819, t821, t810, t808; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1245, 0, 0, -g(3), -t1213, 0, t1274, t1208, t1204, -t1274, t1205, 0, -t1234 * t1194, -t1235 * t1194, t1133, qJ(2) * t1133, t1093, t1073, t1087, t1092, t1086, t1110, t976, t995, t938, t929, t951, t904, t968, t950, t969, t992, t860, t872, t834, t829, t852, t838, t883, t851, t884, t896, t820, t822, t811, t809; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1245, 0, qJDD(1), 0, g(3), 0, -t1214, 0, t1216, -t1210, -t1223, -t1216, -t1225, 0, t1181, t1182, 0, pkin(1) * t1133, -t1180, -t1179, -t1199, t1180, t1198, -qJDD(3), t1009, t1019, t1036, t959, -t1125, -t1124, -t1069, t1125, t1065, -t1230, t894, t901, t877, t844, -t1057, -t1055, -t986, t1057, t983, -t1221, t840, t843, t823, t812; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1213, t1214, 0, 0, t1222, t1215, 0, t1224, 0, 0, t1157, t1156, t1104, t1113, t1091, t1071, t1084, t1090, t1083, t1109, t974, t988, t935, t923, t949, t902, t966, t948, t967, t991, t857, t869, t833, t828, t850, t836, t881, t849, t882, t895, t819, t821, t810, t808; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1223, t1225, t1216, 0, t1226, 0, 0, -t1194, t1181, 0, t1144, t1131, t1139, t1142, t1138, t1161, t1096, t1099, t1033, -pkin(6) * t1038, t1008, t954, t1031, t1007, t1032, t1041, t915, t922, t868, t861, t888, t855, t918, t887, t919, t937, t835, t842, t816, t814; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1223, -t1307, t1225, -t1216, 0, t1194, 0, t1182, 0, t1143, t1129, t1136, t1141, t1135, t1160, t1074, t1078, t1017, t1037, t1006, t952, t1029, t1005, t1030, t1040, t906, t912, t863, t859, t886, t853, t916, t885, t917, t936, t832, t841, t815, t813; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1216, t1210, t1223, t1216, t1225, 0, -t1181, -t1182, 0, 0, t1180, t1179, t1199, -t1180, -t1198, qJDD(3), t1255, t1266, t1329, t1330, t1125, t1124, t1069, -t1125, -t1065, t1230, t1251, t1257, t1275, t1283, t1057, t1055, t986, -t1057, -t983, t1221, t1249, t1248, t1267, t1268; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1177, -t1174, t1332, t1193, t1187, -t1193, 0, -t1170, t1102, 0, t1061, t1015, t1081, t1059, t1082, t1106, t1018, t1034, t921, -pkin(7) * t941, t928, t892, t972, t927, t973, t994, t873, t878, t831, t825; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1313, t1176, t1188, t1175, t1172, -t1313, t1170, 0, t1103, 0, t1060, t1013, t1079, t1058, t1080, t1105, t975, t977, t910, t924, t926, t890, t970, t925, t971, t993, t862, t871, t830, t824; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1180, t1179, t1199, -t1180, -t1198, qJDD(3), -t1102, -t1103, 0, 0, t1125, t1124, t1069, -t1125, -t1065, t1230, t1260, t1276, t1010, t939, t1057, t1055, t986, -t1057, -t983, t1221, t1256, t1250, t1323, t1324; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1098, -t1064, t1334, t1155, t1152, -t1155, 0, -t1089, t998, 0, t981, t933, t1027, t979, t1028, t1045, t940, t956, t858, -pkin(8) * t875; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1306, t1335, t1153, t1097, t1122, -t1306, t1089, 0, t999, 0, t980, t931, t1025, t978, t1026, t1044, t911, t920, t848, t870; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1125, t1124, t1069, -t1125, -t1065, t1230, -t998, -t999, 0, 0, t1057, t1055, t986, -t1057, -t983, t1221, t1261, t1254, t930, t874; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1012, -t982, t1336, t1111, t1107, -t1111, 0, -t996, t908, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1310, t1337, t1108, t1011, t1049, -t1310, t996, 0, t909, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1057, t1055, t986, -t1057, -t983, t1221, -t908, -t909, 0, 0;];
m_new_reg = t1;
