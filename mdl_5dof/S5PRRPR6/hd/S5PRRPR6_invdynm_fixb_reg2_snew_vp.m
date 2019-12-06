% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PRRPR6
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
% Datum: 2019-12-05 16:33
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PRRPR6_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPR6_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRPR6_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRPR6_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRPR6_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5PRRPR6_invdynm_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:33:24
% EndTime: 2019-12-05 16:33:44
% DurationCPUTime: 21.27s
% Computational Cost: add. (124003->765), mult. (258909->1155), div. (0->0), fcn. (186803->12), ass. (0->534)
t1225 = sin(qJ(5));
t1218 = sin(pkin(10));
t1221 = cos(pkin(10));
t1226 = sin(qJ(3));
t1333 = qJD(2) * t1226;
t1176 = -t1221 * qJD(3) + t1218 * t1333;
t1177 = t1218 * qJD(3) + t1221 * t1333;
t1228 = cos(qJ(5));
t1129 = t1228 * t1176 + t1225 * t1177;
t1131 = -t1225 * t1176 + t1228 * t1177;
t1082 = t1131 * t1129;
t1206 = qJD(3) * t1333;
t1229 = cos(qJ(3));
t1308 = t1229 * qJDD(2);
t1186 = -t1206 + t1308;
t1180 = -qJDD(5) + t1186;
t1350 = -t1082 - t1180;
t1357 = t1225 * t1350;
t1356 = t1228 * t1350;
t1223 = cos(pkin(5));
t1220 = sin(pkin(5));
t1339 = g(3) - qJDD(1);
t1300 = t1220 * t1339;
t1219 = sin(pkin(9));
t1222 = cos(pkin(9));
t1301 = t1219 * g(1) - t1222 * g(2);
t1355 = t1223 * t1301 - t1300;
t1193 = t1222 * g(1) + t1219 * g(2);
t1227 = sin(qJ(2));
t1230 = cos(qJ(2));
t1116 = -t1227 * t1193 - t1355 * t1230;
t1120 = -t1230 * t1193 + t1355 * t1227;
t1053 = t1227 * t1116 + t1230 * t1120;
t1035 = t1053 * t1220;
t1331 = t1177 * t1176;
t1255 = -t1186 - t1331;
t1354 = t1218 * t1255;
t1353 = t1219 * t1339;
t1352 = t1221 * t1255;
t1351 = t1222 * t1339;
t1178 = t1220 * t1301;
t1289 = t1223 * t1339 + t1178;
t1254 = t1227 * t1289;
t1253 = t1230 * t1289;
t1316 = t1229 * qJD(2);
t1207 = qJD(3) * t1316;
t1310 = t1226 * qJDD(2);
t1185 = t1207 + t1310;
t1158 = t1218 * qJDD(3) + t1221 * t1185;
t1259 = t1221 * qJDD(3) - t1218 * t1185;
t1051 = -t1129 * qJD(5) + t1228 * t1158 + t1225 * t1259;
t1203 = -qJD(5) + t1316;
t1110 = t1129 * t1203;
t1349 = t1110 + t1051;
t1164 = t1177 * t1316;
t1112 = t1259 - t1164;
t1299 = t1225 * t1158 - t1228 * t1259;
t1007 = (qJD(5) + t1203) * t1131 + t1299;
t1348 = -t1222 * t1193 - t1219 * t1301;
t1347 = -t1219 * t1193 + t1222 * t1301;
t1346 = qJD(3) ^ 2;
t1125 = t1129 ^ 2;
t1126 = t1131 ^ 2;
t1345 = t1176 ^ 2;
t1175 = t1177 ^ 2;
t1201 = t1203 ^ 2;
t1306 = t1176 * t1316;
t1291 = -t1158 + t1306;
t1231 = qJD(2) ^ 2;
t1101 = -t1231 * pkin(2) + qJDD(2) * pkin(7) + t1120;
t1072 = t1229 * t1101 - t1226 * t1289;
t1341 = pkin(3) * t1229;
t1294 = -qJ(4) * t1226 - t1341;
t1183 = t1294 * qJD(2);
t1034 = -t1346 * pkin(3) + qJDD(3) * qJ(4) + t1183 * t1316 + t1072;
t1100 = -qJDD(2) * pkin(2) - t1231 * pkin(7) + t1116;
t1292 = t1185 + t1207;
t1049 = -t1292 * qJ(4) + (-t1186 + t1206) * pkin(3) + t1100;
t973 = 0.2e1 * qJD(4) * t1177 + t1218 * t1034 - t1221 * t1049;
t940 = t1255 * pkin(4) + t1291 * pkin(8) - t973;
t1159 = -pkin(4) * t1316 - t1177 * pkin(8);
t974 = -0.2e1 * qJD(4) * t1176 + t1221 * t1034 + t1218 * t1049;
t953 = -t1345 * pkin(4) + pkin(8) * t1259 + t1159 * t1316 + t974;
t885 = t1225 * t953 - t1228 * t940;
t886 = t1225 * t940 + t1228 * t953;
t846 = t1225 * t886 - t1228 * t885;
t1344 = pkin(4) * t846;
t1011 = -t1110 + t1051;
t955 = -t1007 * t1225 - t1228 * t1011;
t1343 = pkin(4) * t955;
t1342 = pkin(3) * t1226;
t1340 = pkin(6) * t1223;
t1338 = t1218 * t846;
t1337 = t1221 * t846;
t1153 = t1229 * t1289;
t1033 = qJDD(4) + t1153 - t1346 * qJ(4) - qJDD(3) * pkin(3) + (qJD(2) * t1183 + t1101) * t1226;
t985 = -pkin(4) * t1259 - t1345 * pkin(8) + t1177 * t1159 + t1033;
t1336 = t1225 * t985;
t1335 = t1228 * t985;
t1334 = qJD(2) * qJD(3);
t1332 = t1131 * t1203;
t1330 = t1203 * t1225;
t1329 = t1203 * t1228;
t1214 = t1226 ^ 2;
t1328 = t1214 * t1231;
t1327 = t1218 * t1033;
t1117 = t1186 - t1331;
t1326 = t1218 * t1117;
t1324 = t1221 * t1033;
t1323 = t1221 * t1117;
t1054 = -t1082 + t1180;
t1322 = t1225 * t1054;
t1321 = t1226 * t1100;
t1320 = t1226 * t1186;
t1202 = t1226 * t1231 * t1229;
t1194 = qJDD(3) + t1202;
t1319 = t1226 * t1194;
t1195 = qJDD(3) - t1202;
t1318 = t1226 * t1195;
t1317 = t1228 * t1054;
t1315 = t1229 * t1100;
t1314 = t1229 * t1195;
t1215 = t1229 ^ 2;
t1312 = t1214 + t1215;
t1311 = t1220 * qJDD(2);
t1309 = t1227 * qJDD(2);
t1307 = t1230 * qJDD(2);
t1305 = t1226 * t1082;
t1304 = t1226 * t1331;
t1303 = t1229 * t1082;
t1302 = t1229 * t1331;
t901 = t1218 * t973 + t1221 * t974;
t847 = t1225 * t885 + t1228 * t886;
t1071 = t1226 * t1101 + t1153;
t991 = t1226 * t1071 + t1229 * t1072;
t1298 = t1218 * t1306;
t1297 = t1230 * t1202;
t1296 = t1227 * t1202;
t1295 = -pkin(3) * t1033 + qJ(4) * t901;
t1188 = t1312 * qJDD(2);
t1211 = t1215 * t1231;
t1191 = t1211 + t1328;
t1138 = t1230 * t1188 - t1227 * t1191;
t990 = t1229 * t1071 - t1226 * t1072;
t1293 = pkin(6) * t1138 + t1227 * t990;
t900 = t1218 * t974 - t1221 * t973;
t818 = t1221 * t847 - t1338;
t816 = t1226 * t985 + t1229 * t818;
t817 = t1218 * t847 + t1337;
t1288 = t1227 * t816 - t1230 * t817;
t1025 = -t1125 - t1126;
t957 = -t1007 * t1228 + t1225 * t1011;
t890 = -t1218 * t955 + t1221 * t957;
t874 = t1226 * t1025 + t1229 * t890;
t888 = t1218 * t957 + t1221 * t955;
t1287 = t1227 * t874 - t1230 * t888;
t1073 = t1126 - t1125;
t1006 = (qJD(5) - t1203) * t1131 + t1299;
t954 = -t1225 * t1006 + t1228 * t1349;
t956 = -t1228 * t1006 - t1225 * t1349;
t889 = -t1218 * t954 + t1221 * t956;
t881 = t1226 * t1073 + t1229 * t889;
t887 = t1218 * t956 + t1221 * t954;
t1286 = t1227 * t881 - t1230 * t887;
t892 = t1226 * t1033 + t1229 * t901;
t1285 = t1227 * t892 - t1230 * t900;
t1067 = -t1201 - t1125;
t987 = t1225 * t1067 + t1356;
t988 = t1228 * t1067 - t1357;
t930 = -t1218 * t987 + t1221 * t988;
t895 = t1226 * t1006 + t1229 * t930;
t929 = t1218 * t988 + t1221 * t987;
t1284 = t1227 * t895 - t1230 * t929;
t1093 = -t1126 - t1201;
t992 = t1228 * t1093 + t1322;
t993 = -t1225 * t1093 + t1317;
t943 = -t1218 * t992 + t1221 * t993;
t899 = t1226 * t1349 + t1229 * t943;
t942 = t1218 * t993 + t1221 * t992;
t1283 = t1227 * t899 - t1230 * t942;
t1105 = -t1126 + t1201;
t1002 = t1228 * t1105 + t1357;
t1004 = -t1225 * t1105 + t1356;
t951 = -t1218 * t1002 + t1221 * t1004;
t906 = t1226 * t1011 + t1229 * t951;
t949 = t1221 * t1002 + t1218 * t1004;
t1282 = t1227 * t906 - t1230 * t949;
t1104 = t1125 - t1201;
t1003 = t1225 * t1104 - t1317;
t1005 = t1228 * t1104 + t1322;
t952 = -t1218 * t1003 + t1221 * t1005;
t907 = -t1226 * t1007 + t1229 * t952;
t950 = t1221 * t1003 + t1218 * t1005;
t1281 = t1227 * t907 - t1230 * t950;
t1050 = -t1131 * qJD(5) - t1299;
t998 = t1228 * t1050 - t1129 * t1330;
t999 = -t1225 * t1050 - t1129 * t1329;
t946 = -t1218 * t998 + t1221 * t999;
t920 = t1229 * t946 - t1305;
t944 = t1218 * t999 + t1221 * t998;
t1280 = t1227 * t920 - t1230 * t944;
t1000 = t1225 * t1051 - t1131 * t1329;
t1001 = t1228 * t1051 + t1131 * t1330;
t947 = -t1218 * t1000 + t1221 * t1001;
t921 = t1229 * t947 + t1305;
t945 = t1221 * t1000 + t1218 * t1001;
t1279 = t1227 * t921 - t1230 * t945;
t1039 = (t1129 * t1225 + t1131 * t1228) * t1203;
t1040 = (t1129 * t1228 - t1131 * t1225) * t1203;
t980 = -t1218 * t1039 + t1221 * t1040;
t971 = -t1226 * t1180 + t1229 * t980;
t979 = t1221 * t1039 + t1218 * t1040;
t1278 = t1227 * t971 - t1230 * t979;
t1045 = t1218 * t1112 + t1221 * t1291;
t1047 = t1221 * t1112 - t1218 * t1291;
t1108 = t1175 + t1345;
t995 = t1229 * t1047 - t1226 * t1108;
t1277 = -t1045 * t1230 + t1227 * t995;
t1276 = -t1100 * t1230 + t1227 * t991;
t1134 = -t1211 - t1345;
t1062 = t1221 * t1134 - t1354;
t1113 = t1164 + t1259;
t1013 = t1229 * t1062 - t1226 * t1113;
t1061 = t1218 * t1134 + t1352;
t1275 = t1013 * t1227 - t1061 * t1230;
t1115 = t1158 + t1306;
t1048 = t1221 * t1113 - t1218 * t1115;
t1137 = t1175 - t1345;
t1015 = t1229 * t1048 + t1226 * t1137;
t1046 = t1218 * t1113 + t1221 * t1115;
t1274 = t1015 * t1227 - t1046 * t1230;
t1163 = -t1175 - t1211;
t1086 = -t1218 * t1163 + t1323;
t1021 = t1229 * t1086 + t1226 * t1115;
t1083 = t1221 * t1163 + t1326;
t1273 = t1021 * t1227 - t1083 * t1230;
t1162 = -t1175 + t1211;
t1087 = -t1218 * t1162 + t1352;
t1022 = t1229 * t1087 - t1226 * t1291;
t1084 = t1221 * t1162 + t1354;
t1272 = t1022 * t1227 - t1084 * t1230;
t1161 = -t1211 + t1345;
t1088 = t1221 * t1161 + t1326;
t1023 = t1229 * t1088 + t1112 * t1226;
t1085 = t1218 * t1161 - t1323;
t1271 = t1023 * t1227 - t1085 * t1230;
t1097 = -t1218 * t1259 - t1221 * t1306;
t1059 = t1229 * t1097 - t1304;
t1096 = t1221 * t1259 - t1298;
t1270 = t1059 * t1227 - t1096 * t1230;
t1099 = t1221 * t1158 + t1218 * t1164;
t1060 = t1229 * t1099 + t1304;
t1160 = t1221 * t1164;
t1098 = t1218 * t1158 - t1160;
t1269 = t1060 * t1227 - t1098 * t1230;
t1107 = (t1176 * t1221 - t1177 * t1218) * t1316;
t1092 = t1229 * t1107 - t1320;
t1106 = -t1160 - t1298;
t1268 = t1092 * t1227 + t1106 * t1230;
t1052 = t1230 * t1116 - t1227 * t1120;
t1184 = 0.2e1 * t1207 + t1310;
t1187 = -0.2e1 * t1206 + t1308;
t1136 = -t1226 * t1184 + t1229 * t1187;
t1192 = -t1211 + t1328;
t1267 = t1136 * t1227 - t1192 * t1230;
t1200 = -t1211 - t1346;
t1149 = t1229 * t1200 - t1319;
t1266 = t1149 * t1227 + t1187 * t1230;
t1198 = -t1328 - t1346;
t1151 = -t1226 * t1198 - t1314;
t1265 = t1151 * t1227 - t1184 * t1230;
t1261 = t1230 * t1231 + t1309;
t1168 = t1261 * t1223;
t1189 = -t1227 * t1231 + t1307;
t1264 = t1222 * t1168 + t1219 * t1189;
t1263 = t1219 * t1168 - t1222 * t1189;
t1262 = t1188 * t1227 + t1191 * t1230;
t1181 = t1312 * t1334;
t1260 = -qJDD(3) * t1230 + t1181 * t1227;
t1258 = pkin(4) * t987 - t885;
t1199 = t1211 - t1346;
t1148 = t1229 * t1199 - t1318;
t1257 = t1148 * t1227 - t1229 * t1307;
t1182 = t1229 * t1194;
t1197 = -t1328 + t1346;
t1150 = -t1226 * t1197 + t1182;
t1256 = t1150 * t1227 - t1226 * t1307;
t1252 = pkin(4) * t992 - t886;
t838 = -pkin(4) * t985 + pkin(8) * t847;
t805 = -pkin(8) * t1337 - qJ(4) * t817 - t1218 * t838;
t808 = -pkin(3) * t817 - t1344;
t815 = t1226 * t818 - t1229 * t985;
t789 = -pkin(7) * t815 - t1226 * t808 + t1229 * t805;
t1232 = -pkin(3) * t985 - pkin(8) * t1338 + qJ(4) * t818 + t1221 * t838;
t794 = -pkin(2) * t815 - t1232;
t804 = t1227 * t817 + t1230 * t816;
t1251 = pkin(6) * t804 + t1227 * t789 + t1230 * t794;
t833 = -pkin(4) * t1025 + pkin(8) * t957 + t847;
t836 = -pkin(8) * t955 - t846;
t807 = -qJ(4) * t888 - t1218 * t833 + t1221 * t836;
t866 = -pkin(3) * t888 - t1343;
t873 = -t1229 * t1025 + t1226 * t890;
t803 = -pkin(7) * t873 - t1226 * t866 + t1229 * t807;
t1233 = -pkin(3) * t1025 + qJ(4) * t890 + t1218 * t836 + t1221 * t833;
t806 = -pkin(2) * t873 - t1233;
t841 = t1227 * t888 + t1230 * t874;
t1250 = pkin(6) * t841 + t1227 * t803 + t1230 * t806;
t896 = -pkin(4) * t1006 + pkin(8) * t988 - t1335;
t928 = -pkin(8) * t987 + t1336;
t842 = -qJ(4) * t929 - t1218 * t896 + t1221 * t928;
t854 = -pkin(3) * t929 - t1258;
t894 = -t1229 * t1006 + t1226 * t930;
t813 = -pkin(7) * t894 - t1226 * t854 + t1229 * t842;
t1235 = -pkin(3) * t1006 + qJ(4) * t930 + t1218 * t928 + t1221 * t896;
t827 = -pkin(2) * t894 - t1235;
t865 = t1227 * t929 + t1230 * t895;
t1249 = pkin(6) * t865 + t1227 * t813 + t1230 * t827;
t897 = -pkin(4) * t1349 + pkin(8) * t993 + t1336;
t932 = -pkin(8) * t992 + t1335;
t856 = -qJ(4) * t942 - t1218 * t897 + t1221 * t932;
t862 = -pkin(3) * t942 - t1252;
t898 = t1226 * t943 - t1229 * t1349;
t814 = -pkin(7) * t898 - t1226 * t862 + t1229 * t856;
t1234 = -pkin(3) * t1349 + qJ(4) * t943 + t1218 * t932 + t1221 * t897;
t831 = -pkin(2) * t898 - t1234;
t868 = t1227 * t942 + t1230 * t899;
t1248 = pkin(6) * t868 + t1227 * t814 + t1230 * t831;
t891 = -t1229 * t1033 + t1226 * t901;
t837 = -pkin(7) * t891 + (-qJ(4) * t1229 + t1342) * t900;
t857 = -pkin(2) * t891 - t1295;
t863 = t1227 * t900 + t1230 * t892;
t1247 = pkin(6) * t863 + t1227 * t837 + t1230 * t857;
t893 = -qJ(4) * t1045 - t900;
t994 = t1226 * t1047 + t1229 * t1108;
t867 = -pkin(7) * t994 + t1045 * t1342 + t1229 * t893;
t1237 = pkin(3) * t1108 + qJ(4) * t1047 + t901;
t869 = -pkin(2) * t994 - t1237;
t960 = t1227 * t1045 + t1230 * t995;
t1246 = pkin(6) * t960 + t1227 * t867 + t1230 * t869;
t1012 = t1226 * t1062 + t1229 * t1113;
t941 = -pkin(3) * t1061 + t973;
t981 = -qJ(4) * t1061 + t1327;
t882 = -pkin(7) * t1012 - t1226 * t941 + t1229 * t981;
t1241 = pkin(3) * t1113 + qJ(4) * t1062 - t1324;
t917 = -pkin(2) * t1012 - t1241;
t966 = t1230 * t1013 + t1227 * t1061;
t1245 = pkin(6) * t966 + t1227 * t882 + t1230 * t917;
t1018 = t1226 * t1086 - t1229 * t1115;
t948 = -pkin(3) * t1083 + t974;
t986 = -qJ(4) * t1083 + t1324;
t884 = -pkin(7) * t1018 - t1226 * t948 + t1229 * t986;
t1240 = -pkin(3) * t1115 + qJ(4) * t1086 + t1327;
t931 = -pkin(2) * t1018 - t1240;
t976 = t1230 * t1021 + t1227 * t1083;
t1244 = pkin(6) * t976 + t1227 * t884 + t1230 * t931;
t1155 = -t1215 * t1334 - t1320;
t1243 = t1155 * t1227 - t1297;
t1156 = t1229 * t1185 - t1214 * t1334;
t1242 = t1156 * t1227 + t1297;
t1145 = t1226 * t1200 + t1182;
t1031 = -pkin(2) * t1145 + t1071;
t1069 = -pkin(7) * t1145 + t1321;
t1102 = t1230 * t1149 - t1227 * t1187;
t1239 = pkin(6) * t1102 + t1031 * t1230 + t1069 * t1227;
t1147 = t1229 * t1198 - t1318;
t1032 = -pkin(2) * t1147 + t1072;
t1070 = -pkin(7) * t1147 + t1315;
t1103 = t1230 * t1151 + t1227 * t1184;
t1238 = pkin(6) * t1103 + t1032 * t1230 + t1070 * t1227;
t972 = t1227 * t1100 + t1230 * t991;
t1236 = pkin(6) * t972 - (-pkin(2) * t1230 - pkin(7) * t1227) * t990;
t1208 = t1223 * qJDD(2);
t1173 = t1229 * t1186;
t1169 = t1189 * t1223;
t1167 = t1189 * t1220;
t1166 = t1261 * t1220;
t1157 = t1227 * qJDD(3) + t1230 * t1181;
t1146 = t1229 * t1197 + t1319;
t1144 = t1226 * t1199 + t1314;
t1143 = t1292 * t1226;
t1142 = -t1226 * t1207 + t1173;
t1140 = t1260 * t1223;
t1139 = t1260 * t1220;
t1135 = t1229 * t1184 + t1226 * t1187;
t1133 = t1262 * t1223;
t1132 = t1262 * t1220;
t1128 = -t1219 * t1169 - t1222 * t1261;
t1127 = t1222 * t1169 - t1219 * t1261;
t1124 = t1230 * t1156 - t1296;
t1123 = t1230 * t1155 + t1296;
t1122 = t1230 * t1150 + t1226 * t1309;
t1121 = t1230 * t1148 + t1227 * t1308;
t1095 = t1230 * t1136 + t1227 * t1192;
t1091 = t1226 * t1107 + t1173;
t1090 = -t1253 + (t1220 * t1166 + t1223 * t1168) * pkin(6);
t1089 = -t1254 + (-t1220 * t1167 - t1223 * t1169) * pkin(6);
t1081 = -t1220 * t1143 + t1223 * t1242;
t1080 = -t1220 * t1142 + t1223 * t1243;
t1079 = t1223 * t1143 + t1220 * t1242;
t1078 = t1223 * t1142 + t1220 * t1243;
t1077 = -t1220 * t1146 + t1223 * t1256;
t1076 = -t1220 * t1144 + t1223 * t1257;
t1075 = t1223 * t1146 + t1220 * t1256;
t1074 = t1223 * t1144 + t1220 * t1257;
t1066 = -t1220 * t1147 + t1223 * t1265;
t1065 = -t1220 * t1145 + t1223 * t1266;
t1064 = t1223 * t1147 + t1220 * t1265;
t1063 = t1223 * t1145 + t1220 * t1266;
t1058 = t1226 * t1099 - t1302;
t1057 = t1226 * t1097 + t1302;
t1044 = -t1220 * t1135 + t1223 * t1267;
t1043 = t1223 * t1135 + t1220 * t1267;
t1042 = pkin(2) * t1187 + pkin(7) * t1149 - t1315;
t1041 = -pkin(2) * t1184 + pkin(7) * t1151 + t1321;
t1036 = t1053 * t1223;
t1029 = -pkin(1) * t1167 + t1220 * t1116 + t1223 * t1253 - t1261 * t1340;
t1028 = pkin(1) * t1166 + t1220 * t1120 - t1189 * t1340 - t1223 * t1254;
t1027 = pkin(1) * t1169 - t1223 * t1116 + (-pkin(6) * t1261 + t1253) * t1220;
t1026 = -pkin(1) * t1168 - t1223 * t1120 + (-pkin(6) * t1189 - t1254) * t1220;
t1024 = t1230 * t1092 - t1227 * t1106;
t1020 = t1226 * t1088 - t1112 * t1229;
t1019 = t1226 * t1087 + t1229 * t1291;
t1017 = t1220 * t1178 + (t1300 - t1052) * t1223;
t1016 = -t1052 * t1220 - t1223 * t1289;
t1014 = t1226 * t1048 - t1229 * t1137;
t997 = t1230 * t1060 + t1227 * t1098;
t996 = t1230 * t1059 + t1227 * t1096;
t984 = pkin(2) * t1191 + pkin(7) * t1188 + t991;
t983 = -t1220 * t1091 + t1223 * t1268;
t982 = t1223 * t1091 + t1220 * t1268;
t978 = t1230 * t1023 + t1227 * t1085;
t977 = t1230 * t1022 + t1227 * t1084;
t975 = -pkin(2) * t1100 + pkin(7) * t991;
t970 = t1229 * t1180 + t1226 * t980;
t969 = pkin(1) * t1017 + pkin(6) * t1035;
t968 = -pkin(1) * t1016 + t1053 * t1340;
t965 = t1230 * t1015 + t1227 * t1046;
t964 = -t1220 * t1058 + t1223 * t1269;
t963 = -t1220 * t1057 + t1223 * t1270;
t962 = t1223 * t1058 + t1220 * t1269;
t961 = t1223 * t1057 + t1220 * t1270;
t959 = t1230 * t990 + (-t1132 * t1220 - t1133 * t1223) * pkin(6);
t958 = (-t1016 * t1220 - t1017 * t1223) * pkin(6);
t938 = -t1220 * t1020 + t1223 * t1271;
t937 = -t1220 * t1019 + t1223 * t1272;
t936 = -t1220 * t1018 + t1223 * t1273;
t935 = t1223 * t1020 + t1220 * t1271;
t934 = t1223 * t1019 + t1220 * t1272;
t933 = t1223 * t1018 + t1220 * t1273;
t927 = -t1227 * t1032 + t1230 * t1070 + (-t1064 * t1220 - t1066 * t1223) * pkin(6);
t926 = -t1227 * t1031 + t1230 * t1069 + (-t1063 * t1220 - t1065 * t1223) * pkin(6);
t925 = -t1220 * t1014 + t1223 * t1274;
t924 = t1223 * t1014 + t1220 * t1274;
t923 = -t1220 * t1012 + t1223 * t1275;
t922 = t1223 * t1012 + t1220 * t1275;
t919 = t1226 * t947 - t1303;
t918 = t1226 * t946 + t1303;
t916 = t1220 * t990 + t1223 * t1276;
t915 = t1220 * t1276 - t1223 * t990;
t914 = -t1220 * t994 + t1277 * t1223;
t913 = t1277 * t1220 + t1223 * t994;
t912 = t1227 * t979 + t1230 * t971;
t911 = -pkin(1) * t1064 - t1220 * t1041 + t1223 * t1238;
t910 = -pkin(1) * t1063 - t1220 * t1042 + t1223 * t1239;
t909 = pkin(1) * t1066 + t1223 * t1041 + t1220 * t1238;
t908 = pkin(1) * t1065 + t1223 * t1042 + t1220 * t1239;
t905 = t1229 * t1007 + t1226 * t952;
t904 = -t1229 * t1011 + t1226 * t951;
t903 = -pkin(1) * t1132 - t1220 * t984 + t1293 * t1223;
t902 = pkin(1) * t1133 + t1293 * t1220 + t1223 * t984;
t880 = -t1229 * t1073 + t1226 * t889;
t879 = -t1220 * t970 + t1278 * t1223;
t878 = t1278 * t1220 + t1223 * t970;
t877 = t1227 * t945 + t1230 * t921;
t876 = t1227 * t944 + t1230 * t920;
t875 = -pkin(2) * t1083 + pkin(7) * t1021 + t1226 * t986 + t1229 * t948;
t872 = t1227 * t950 + t1230 * t907;
t871 = t1227 * t949 + t1230 * t906;
t870 = -pkin(2) * t1061 + pkin(7) * t1013 + t1226 * t981 + t1229 * t941;
t864 = pkin(7) * t995 + t1226 * t893 + (-pkin(2) - t1341) * t1045;
t861 = -t1220 * t919 + t1279 * t1223;
t860 = -t1220 * t918 + t1280 * t1223;
t859 = t1279 * t1220 + t1223 * t919;
t858 = t1280 * t1220 + t1223 * t918;
t855 = -(pkin(2) * t1227 - pkin(7) * t1230) * t990 + (-t1220 * t915 - t1223 * t916) * pkin(6);
t853 = -t1220 * t905 + t1281 * t1223;
t852 = -t1220 * t904 + t1282 * t1223;
t851 = t1281 * t1220 + t1223 * t905;
t850 = t1282 * t1220 + t1223 * t904;
t849 = -pkin(1) * t915 - t1220 * t975 + t1223 * t1236;
t848 = pkin(1) * t916 + t1220 * t1236 + t1223 * t975;
t845 = -t1220 * t898 + t1283 * t1223;
t844 = t1283 * t1220 + t1223 * t898;
t843 = t1227 * t887 + t1230 * t881;
t840 = -t1220 * t894 + t1284 * t1223;
t839 = t1284 * t1220 + t1223 * t894;
t835 = -t1220 * t891 + t1285 * t1223;
t834 = t1285 * t1220 + t1223 * t891;
t832 = -t1227 * t931 + t1230 * t884 + (-t1220 * t933 - t1223 * t936) * pkin(6);
t830 = -t1227 * t917 + t1230 * t882 + (-t1220 * t922 - t1223 * t923) * pkin(6);
t829 = -t1220 * t880 + t1286 * t1223;
t828 = t1286 * t1220 + t1223 * t880;
t826 = pkin(7) * t892 + (-pkin(2) + t1294) * t900;
t825 = -t1220 * t873 + t1287 * t1223;
t824 = t1287 * t1220 + t1223 * t873;
t823 = -pkin(1) * t933 - t1220 * t875 + t1223 * t1244;
t822 = pkin(1) * t936 + t1220 * t1244 + t1223 * t875;
t821 = -t1227 * t869 + t1230 * t867 + (-t1220 * t913 - t1223 * t914) * pkin(6);
t820 = -pkin(1) * t922 - t1220 * t870 + t1223 * t1245;
t819 = pkin(1) * t923 + t1220 * t1245 + t1223 * t870;
t812 = -pkin(2) * t942 + pkin(7) * t899 + t1226 * t856 + t1229 * t862;
t811 = -pkin(1) * t913 - t1220 * t864 + t1223 * t1246;
t810 = pkin(1) * t914 + t1220 * t1246 + t1223 * t864;
t809 = -pkin(2) * t929 + pkin(7) * t895 + t1226 * t842 + t1229 * t854;
t802 = -t1227 * t857 + t1230 * t837 + (-t1220 * t834 - t1223 * t835) * pkin(6);
t801 = -pkin(2) * t888 + pkin(7) * t874 + t1226 * t807 + t1229 * t866;
t800 = -t1227 * t831 + t1230 * t814 + (-t1220 * t844 - t1223 * t845) * pkin(6);
t799 = -pkin(1) * t834 - t1220 * t826 + t1223 * t1247;
t798 = pkin(1) * t835 + t1220 * t1247 + t1223 * t826;
t797 = -t1227 * t827 + t1230 * t813 + (-t1220 * t839 - t1223 * t840) * pkin(6);
t796 = -t1220 * t815 + t1288 * t1223;
t795 = t1288 * t1220 + t1223 * t815;
t793 = -pkin(1) * t844 - t1220 * t812 + t1223 * t1248;
t792 = pkin(1) * t845 + t1220 * t1248 + t1223 * t812;
t791 = -pkin(1) * t839 - t1220 * t809 + t1223 * t1249;
t790 = pkin(1) * t840 + t1220 * t1249 + t1223 * t809;
t788 = -t1227 * t806 + t1230 * t803 + (-t1220 * t824 - t1223 * t825) * pkin(6);
t787 = -pkin(2) * t817 + pkin(7) * t816 + t1226 * t805 + t1229 * t808;
t786 = -pkin(1) * t824 - t1220 * t801 + t1223 * t1250;
t785 = pkin(1) * t825 + t1220 * t1250 + t1223 * t801;
t784 = -t1227 * t794 + t1230 * t789 + (-t1220 * t795 - t1223 * t796) * pkin(6);
t783 = -pkin(1) * t795 - t1220 * t787 + t1223 * t1251;
t782 = pkin(1) * t796 + t1220 * t1251 + t1223 * t787;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1353, -t1351, -t1347, -qJ(1) * t1347, 0, 0, -t1263, 0, t1128, t1219 * t1311, -qJ(1) * t1127 - t1219 * t1029 + t1222 * t1089, qJ(1) * t1264 - t1219 * t1028 + t1222 * t1090, -t1219 * t1036 + t1222 * t1052, t1222 * t958 - t1219 * t968 - qJ(1) * (t1222 * t1017 + t1219 * t1053), -t1219 * t1081 + t1222 * t1124, -t1219 * t1044 + t1222 * t1095, -t1219 * t1077 + t1222 * t1122, -t1219 * t1080 + t1222 * t1123, -t1219 * t1076 + t1222 * t1121, -t1219 * t1140 + t1222 * t1157, t1222 * t926 - t1219 * t910 - qJ(1) * (t1222 * t1065 + t1219 * t1102), t1222 * t927 - t1219 * t911 - qJ(1) * (t1222 * t1066 + t1219 * t1103), t1222 * t959 - t1219 * t903 - qJ(1) * (t1222 * t1133 + t1219 * t1138), t1222 * t855 - t1219 * t849 - qJ(1) * (t1219 * t972 + t1222 * t916), -t1219 * t964 + t1222 * t997, -t1219 * t925 + t1222 * t965, -t1219 * t937 + t1222 * t977, -t1219 * t963 + t1222 * t996, -t1219 * t938 + t1222 * t978, t1222 * t1024 - t1219 * t983, t1222 * t830 - t1219 * t820 - qJ(1) * (t1219 * t966 + t1222 * t923), t1222 * t832 - t1219 * t823 - qJ(1) * (t1219 * t976 + t1222 * t936), t1222 * t821 - t1219 * t811 - qJ(1) * (t1219 * t960 + t1222 * t914), t1222 * t802 - t1219 * t799 - qJ(1) * (t1219 * t863 + t1222 * t835), -t1219 * t861 + t1222 * t877, -t1219 * t829 + t1222 * t843, -t1219 * t852 + t1222 * t871, -t1219 * t860 + t1222 * t876, -t1219 * t853 + t1222 * t872, -t1219 * t879 + t1222 * t912, t1222 * t797 - t1219 * t791 - qJ(1) * (t1219 * t865 + t1222 * t840), t1222 * t800 - t1219 * t793 - qJ(1) * (t1219 * t868 + t1222 * t845), t1222 * t788 - t1219 * t786 - qJ(1) * (t1219 * t841 + t1222 * t825), t1222 * t784 - t1219 * t783 - qJ(1) * (t1219 * t804 + t1222 * t796); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1351, -t1353, t1348, qJ(1) * t1348, 0, 0, t1264, 0, t1127, -t1222 * t1311, qJ(1) * t1128 + t1222 * t1029 + t1219 * t1089, qJ(1) * t1263 + t1222 * t1028 + t1219 * t1090, t1222 * t1036 + t1219 * t1052, t1219 * t958 + t1222 * t968 + qJ(1) * (-t1219 * t1017 + t1222 * t1053), t1222 * t1081 + t1219 * t1124, t1222 * t1044 + t1219 * t1095, t1222 * t1077 + t1219 * t1122, t1222 * t1080 + t1219 * t1123, t1222 * t1076 + t1219 * t1121, t1222 * t1140 + t1219 * t1157, t1219 * t926 + t1222 * t910 + qJ(1) * (-t1219 * t1065 + t1222 * t1102), t1219 * t927 + t1222 * t911 + qJ(1) * (-t1219 * t1066 + t1222 * t1103), t1219 * t959 + t1222 * t903 + qJ(1) * (-t1219 * t1133 + t1222 * t1138), t1219 * t855 + t1222 * t849 + qJ(1) * (-t1219 * t916 + t1222 * t972), t1219 * t997 + t1222 * t964, t1219 * t965 + t1222 * t925, t1219 * t977 + t1222 * t937, t1219 * t996 + t1222 * t963, t1219 * t978 + t1222 * t938, t1219 * t1024 + t1222 * t983, t1219 * t830 + t1222 * t820 + qJ(1) * (-t1219 * t923 + t1222 * t966), t1219 * t832 + t1222 * t823 + qJ(1) * (-t1219 * t936 + t1222 * t976), t1219 * t821 + t1222 * t811 + qJ(1) * (-t1219 * t914 + t1222 * t960), t1219 * t802 + t1222 * t799 + qJ(1) * (-t1219 * t835 + t1222 * t863), t1219 * t877 + t1222 * t861, t1219 * t843 + t1222 * t829, t1219 * t871 + t1222 * t852, t1219 * t876 + t1222 * t860, t1219 * t872 + t1222 * t853, t1219 * t912 + t1222 * t879, t1219 * t797 + t1222 * t791 + qJ(1) * (-t1219 * t840 + t1222 * t865), t1219 * t800 + t1222 * t793 + qJ(1) * (-t1219 * t845 + t1222 * t868), t1219 * t788 + t1222 * t786 + qJ(1) * (-t1219 * t825 + t1222 * t841), t1219 * t784 + t1222 * t783 + qJ(1) * (-t1219 * t796 + t1222 * t804); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1301, t1193, 0, 0, 0, 0, t1166, 0, t1167, t1208, t1027, t1026, t1035, t969, t1079, t1043, t1075, t1078, t1074, t1139, t908, t909, t902, t848, t962, t924, t934, t961, t935, t982, t819, t822, t810, t798, t859, t828, t850, t858, t851, t878, t790, t792, t785, t782; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1339, -t1301, 0, 0, 0, t1189, 0, -t1261, 0, t1089, t1090, t1052, t958, t1124, t1095, t1122, t1123, t1121, t1157, t926, t927, t959, t855, t997, t965, t977, t996, t978, t1024, t830, t832, t821, t802, t877, t843, t871, t876, t872, t912, t797, t800, t788, t784; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1339, 0, -t1193, 0, 0, 0, t1168, 0, t1169, -t1311, t1029, t1028, t1036, t968, t1081, t1044, t1077, t1080, t1076, t1140, t910, t911, t903, t849, t964, t925, t937, t963, t938, t983, t820, t823, t811, t799, t861, t829, t852, t860, t853, t879, t791, t793, t786, t783; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1301, t1193, 0, 0, 0, 0, t1166, 0, t1167, t1208, t1027, t1026, t1035, t969, t1079, t1043, t1075, t1078, t1074, t1139, t908, t909, t902, t848, t962, t924, t934, t961, t935, t982, t819, t822, t810, t798, t859, t828, t850, t858, t851, t878, t790, t792, t785, t782; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1231, 0, 0, -t1289, t1116, 0, t1156, t1136, t1150, t1155, t1148, t1181, t1069, t1070, t990, pkin(7) * t990, t1060, t1015, t1022, t1059, t1023, t1092, t882, t884, t867, t837, t921, t881, t906, t920, t907, t971, t813, t814, t803, t789; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1231, 0, qJDD(2), 0, t1289, 0, t1120, 0, t1202, -t1192, -t1310, -t1202, -t1308, -qJDD(3), t1031, t1032, 0, pkin(2) * t990, -t1098, -t1046, -t1084, -t1096, -t1085, t1106, t917, t931, t869, t857, -t945, -t887, -t949, -t944, -t950, -t979, t827, t831, t806, t794; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1116, -t1120, 0, 0, t1143, t1135, t1146, t1142, t1144, 0, t1042, t1041, t984, t975, t1058, t1014, t1019, t1057, t1020, t1091, t870, t875, t864, t826, t919, t880, t904, t918, t905, t970, t809, t812, t801, t787; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1185, t1187, t1194, -t1207, t1199, t1207, 0, t1100, t1071, 0, t1099, t1048, t1087, t1097, t1088, t1107, t981, t986, t893, -qJ(4) * t900, t947, t889, t951, t946, t952, t980, t842, t856, t807, t805; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1206, t1184, t1197, t1186, t1195, -t1206, -t1100, 0, t1072, 0, -t1331, -t1137, t1291, t1331, -t1112, t1186, t941, t948, -pkin(3) * t1045, -pkin(3) * t900, -t1082, -t1073, -t1011, t1082, t1007, t1180, t854, t862, t866, t808; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1202, t1192, t1310, t1202, t1308, qJDD(3), -t1071, -t1072, 0, 0, t1098, t1046, t1084, t1096, t1085, -t1106, t1241, t1240, t1237, t1295, t945, t887, t949, t944, t950, t979, t1235, t1234, t1233, t1232; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1158, t1113, t1255, -t1306, t1161, t1306, 0, t1033, t973, 0, t1001, t956, t1004, t999, t1005, t1040, t928, t932, t836, -pkin(8) * t846; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1164, t1115, t1162, t1259, -t1117, t1164, -t1033, 0, t974, 0, t1000, t954, t1002, t998, t1003, t1039, t896, t897, t833, t838; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1331, t1137, -t1291, -t1331, t1112, -t1186, -t973, -t974, 0, 0, t1082, t1073, t1011, -t1082, -t1007, -t1180, t1258, t1252, t1343, t1344; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1051, -t1006, t1350, -t1110, t1104, t1110, 0, t985, t885, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1332, t1349, t1105, t1050, -t1054, t1332, -t985, 0, t886, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1082, t1073, t1011, -t1082, -t1007, -t1180, -t885, -t886, 0, 0;];
m_new_reg = t1;
