% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRRRRP4
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d5,theta1]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 09:59
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRRRRP4_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRP4_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRRP4_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRRP4_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRRP4_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRRP4_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 09:56:11
% EndTime: 2019-05-05 09:57:31
% DurationCPUTime: 75.06s
% Computational Cost: add. (176537->880), mult. (344673->1345), div. (0->0), fcn. (254174->12), ass. (0->652)
t1019 = sin(pkin(11));
t1021 = cos(pkin(11));
t1020 = sin(pkin(6));
t1022 = cos(pkin(6));
t1028 = sin(qJ(2));
t1032 = cos(qJ(2));
t1027 = sin(qJ(3));
t1031 = cos(qJ(3));
t1025 = sin(qJ(5));
t1029 = cos(qJ(5));
t1026 = sin(qJ(4));
t1030 = cos(qJ(4));
t1142 = qJD(2) * t1031;
t1122 = qJD(3) * t1142;
t1133 = qJDD(2) * t1027;
t984 = t1122 + t1133;
t1066 = t1030 * qJDD(3) - t1026 * t984;
t1143 = qJD(2) * t1027;
t981 = qJD(3) * t1026 + t1030 * t1143;
t1039 = qJD(4) * t981 - t1066;
t980 = -t1030 * qJD(3) + t1026 * t1143;
t1124 = t980 * qJD(4) - t1026 * qJDD(3) - t1030 * t984;
t931 = t1025 * t981 + t1029 * t980;
t1035 = -t931 * qJD(5) - t1025 * t1039 - t1029 * t1124;
t1006 = -qJD(4) + t1142;
t998 = -qJD(5) + t1006;
t1182 = t931 * t998;
t1203 = t1035 + t1182;
t933 = -t1025 * t980 + t1029 * t981;
t1183 = t931 * t933;
t1009 = qJD(3) * t1143;
t1131 = qJDD(2) * t1031;
t985 = -t1009 + t1131;
t977 = -qJDD(4) + t985;
t971 = -qJDD(5) + t977;
t1036 = t971 - t1183;
t1154 = t1029 * t1036;
t1189 = t998 ^ 2;
t930 = t933 ^ 2;
t888 = -t930 - t1189;
t752 = t1025 * t888 - t1154;
t1169 = t1025 * t1036;
t777 = t1029 * t888 + t1169;
t677 = t1026 * t777 + t1030 * t752;
t625 = -t1027 * t1203 + t1031 * t677;
t675 = t1026 * t752 - t1030 * t777;
t1094 = t1028 * t625 - t1032 * t675;
t623 = t1027 * t677 + t1031 * t1203;
t533 = -t1020 * t623 + t1022 * t1094;
t567 = t1028 * t675 + t1032 * t625;
t499 = t1019 * t567 + t1021 * t533;
t1364 = qJ(1) * t499;
t512 = t1019 * t533 - t1021 * t567;
t1363 = qJ(1) * t512;
t531 = t1020 * t1094 + t1022 * t623;
t1362 = pkin(7) * (t1020 * t531 + t1022 * t533);
t1361 = pkin(1) * t531;
t1360 = pkin(1) * t533;
t1191 = t931 ^ 2;
t900 = t1191 - t1189;
t786 = t1025 * t900 - t1154;
t790 = t1029 * t900 + t1169;
t715 = t1026 * t786 - t1030 * t790;
t1117 = -t1025 * t1124 + t1029 * t1039;
t763 = (qJD(5) + t998) * t933 + t1117;
t643 = t1027 * t763 + t1031 * t715;
t711 = t1026 * t790 + t1030 * t786;
t1087 = t1028 * t643 + t1032 * t711;
t639 = t1027 * t715 - t1031 * t763;
t551 = -t1020 * t639 + t1022 * t1087;
t591 = -t1028 * t711 + t1032 * t643;
t1359 = t1019 * t551 - t1021 * t591;
t762 = (qJD(5) - t998) * t933 + t1117;
t691 = -t1025 * t762 + t1029 * t1203;
t1171 = t1025 * t1203;
t692 = t1029 * t762 + t1171;
t603 = t1026 * t691 + t1030 * t692;
t870 = t930 - t1191;
t587 = -t1027 * t870 + t1031 * t603;
t602 = t1026 * t692 - t1030 * t691;
t1096 = t1028 * t587 - t1032 * t602;
t585 = t1027 * t603 + t1031 * t870;
t507 = -t1020 * t585 + t1022 * t1096;
t529 = t1028 * t602 + t1032 * t587;
t1358 = t1019 * t507 - t1021 * t529;
t1357 = t1019 * t591 + t1021 * t551;
t1356 = t1019 * t529 + t1021 * t507;
t1354 = pkin(7) * t567;
t1347 = t1020 * t1087 + t1022 * t639;
t1346 = t1020 * t1096 + t1022 * t585;
t1345 = pkin(8) * t623;
t1202 = t1182 - t1035;
t1241 = -t1025 * t1202 - t1029 * t763;
t1242 = -t1025 * t763 + t1029 * t1202;
t1261 = t1026 * t1241 + t1030 * t1242;
t1262 = -t1026 * t1242 + t1030 * t1241;
t815 = t930 + t1191;
t1288 = -t1027 * t815 + t1031 * t1262;
t1306 = t1028 * t1261 + t1032 * t1288;
t1289 = t1027 * t1262 + t1031 * t815;
t1307 = t1028 * t1288 - t1032 * t1261;
t1315 = -t1020 * t1289 + t1022 * t1307;
t1331 = t1019 * t1306 + t1021 * t1315;
t1344 = qJ(1) * t1331;
t1332 = -t1019 * t1315 + t1021 * t1306;
t1343 = qJ(1) * t1332;
t1336 = -pkin(2) * t623 - pkin(3) * t1203 - pkin(9) * t677;
t1335 = -pkin(2) * t675 + pkin(8) * t625;
t1334 = pkin(1) * t1315;
t1316 = t1020 * t1307 + t1022 * t1289;
t1333 = pkin(1) * t1316;
t1330 = (-t1020 * t1316 - t1022 * t1315) * pkin(7);
t1328 = pkin(9) * t675;
t1327 = pkin(7) * t1306;
t1318 = -pkin(3) * t675 + pkin(4) * t777;
t1314 = pkin(8) * t1289;
t1311 = -pkin(2) * t1289 - pkin(3) * t815 - pkin(9) * t1262;
t1310 = -pkin(2) * t1261 + pkin(8) * t1288;
t1037 = -t971 - t1183;
t1168 = t1025 * t1037;
t901 = -t930 + t1189;
t1208 = t1029 * t901 + t1168;
t838 = t1029 * t1037;
t1209 = -t1025 * t901 + t838;
t1212 = -t1026 * t1209 - t1030 * t1208;
t1211 = -t1026 * t1208 + t1030 * t1209;
t1237 = -t1027 * t1202 + t1031 * t1211;
t1263 = -t1028 * t1212 + t1032 * t1237;
t1240 = t1027 * t1211 + t1031 * t1202;
t1264 = t1028 * t1237 + t1032 * t1212;
t1290 = -t1020 * t1240 + t1022 * t1264;
t1309 = -t1019 * t1290 + t1021 * t1263;
t1308 = t1019 * t1263 + t1021 * t1290;
t1304 = pkin(10) * t752;
t1303 = pkin(10) * t777;
t1301 = pkin(9) * t1261;
t564 = -pkin(3) * t1261 - pkin(4) * t1242;
t1057 = (t1025 * t931 + t1029 * t933) * t998;
t1153 = t1029 * t998;
t1127 = t931 * t1153;
t1166 = t1025 * t998;
t896 = t933 * t1166;
t1110 = -t896 + t1127;
t1197 = -t1026 * t1110 - t1030 * t1057;
t1196 = -t1026 * t1057 + t1030 * t1110;
t1215 = -t1027 * t971 + t1031 * t1196;
t1236 = -t1028 * t1197 + t1032 * t1215;
t1219 = t1027 * t1196 + t1031 * t971;
t1239 = t1028 * t1215 + t1032 * t1197;
t1265 = -t1020 * t1219 + t1022 * t1239;
t1295 = -t1019 * t1265 + t1021 * t1236;
t809 = -qJD(5) * t933 - t1117;
t1063 = -t1025 * t809 - t1127;
t1112 = t1029 * t809 - t1166 * t931;
t1194 = -t1026 * t1063 - t1030 * t1112;
t1129 = t1027 * t1183;
t1195 = -t1026 * t1112 + t1030 * t1063;
t1216 = t1031 * t1195 - t1129;
t1235 = -t1028 * t1194 + t1032 * t1216;
t1126 = t1031 * t1183;
t1218 = t1027 * t1195 + t1126;
t1238 = t1028 * t1216 + t1032 * t1194;
t1266 = -t1020 * t1218 + t1022 * t1238;
t1294 = -t1019 * t1266 + t1021 * t1235;
t1293 = t1020 * t1264 + t1022 * t1240;
t1292 = t1019 * t1236 + t1021 * t1265;
t1291 = t1019 * t1235 + t1021 * t1266;
t1201 = -t1189 - t1191;
t1217 = t1029 * t1201 - t1168;
t1220 = t1025 * t1201 + t838;
t1233 = t1026 * t1217 + t1030 * t1220;
t1287 = pkin(2) * t1233;
t1285 = pkin(9) * t1233;
t1234 = -t1026 * t1220 + t1030 * t1217;
t1284 = pkin(9) * t1234;
t1283 = pkin(10) * t1242;
t1274 = t1027 * t1234;
t1273 = t1028 * t1233;
t1272 = t1031 * t1234;
t1271 = t1032 * t1233;
t1270 = -pkin(3) * t1233 - pkin(4) * t1220;
t1269 = pkin(4) * t815 + pkin(10) * t1241;
t1268 = t1020 * t1238 + t1022 * t1218;
t1267 = t1020 * t1239 + t1022 * t1219;
t1257 = pkin(10) * t1217;
t1256 = pkin(10) * t1220;
t1255 = qJ(6) * t1203;
t1190 = t980 ^ 2;
t1188 = qJD(3) ^ 2;
t1033 = qJD(2) ^ 2;
t1178 = g(3) - qJDD(1);
t1119 = t1020 * t1178;
t1120 = g(1) * t1019 - t1021 * g(2);
t1221 = t1022 * t1120 - t1119;
t993 = g(1) * t1021 + g(2) * t1019;
t912 = t1028 * t1221 - t1032 * t993;
t895 = -t1033 * pkin(2) + qJDD(2) * pkin(8) + t912;
t974 = t1020 * t1120;
t1102 = t1022 * t1178 + t974;
t953 = t1031 * t1102;
t1186 = pkin(3) * t1031;
t1108 = -pkin(9) * t1027 - t1186;
t982 = t1108 * qJD(2);
t819 = (qJD(2) * t982 + t895) * t1027 - qJDD(3) * pkin(3) - t1188 * pkin(9) + t953;
t954 = -pkin(4) * t1006 - pkin(10) * t981;
t742 = t1039 * pkin(4) - t1190 * pkin(10) + t981 * t954 + t819;
t1250 = -t809 * pkin(5) - t1255 + t742;
t758 = t1025 * t1035 - t1153 * t933;
t759 = t1029 * t1035 + t896;
t686 = -t1026 * t758 + t1030 * t759;
t1111 = t1031 * t686 + t1129;
t683 = -t1026 * t759 - t1030 * t758;
t1243 = t1028 * t1111 + t1032 * t683;
t1232 = -2 * qJD(6);
t960 = t980 * t1006;
t886 = t960 + t1124;
t1109 = t1027 * t686 - t1126;
t1193 = -t1020 * t1109 + t1022 * t1243;
t1198 = -t1028 * t683 + t1032 * t1111;
t1214 = t1019 * t1198 + t1021 * t1193;
t1213 = -t1019 * t1193 + t1021 * t1198;
t911 = -t1028 * t993 - t1032 * t1221;
t837 = t1028 * t911 + t1032 * t912;
t1210 = t837 * t1020;
t884 = t960 - t1124;
t1207 = t1019 * t1178;
t1206 = t1021 * t1178;
t1180 = t980 * t981;
t1040 = -t977 - t1180;
t1205 = t1026 * t1040;
t1059 = t1028 * t1102;
t1204 = t1030 * t1040;
t1058 = t1032 * t1102;
t858 = -t1027 * t1102 + t1031 * t895;
t820 = -pkin(3) * t1188 + qJDD(3) * pkin(9) + t1142 * t982 + t858;
t1104 = t984 + t1122;
t1105 = -t985 + t1009;
t894 = -qJDD(2) * pkin(2) - t1033 * pkin(8) + t911;
t835 = pkin(3) * t1105 - pkin(9) * t1104 + t894;
t736 = t1026 * t820 - t1030 * t835;
t699 = t1040 * pkin(4) + pkin(10) * t886 - t736;
t737 = t1026 * t835 + t1030 * t820;
t708 = -pkin(4) * t1190 - pkin(10) * t1039 + t1006 * t954 + t737;
t619 = t1025 * t699 + t1029 * t708;
t865 = pkin(5) * t931 - qJ(6) * t933;
t1107 = -t971 * qJ(6) + t1232 * t998 - t931 * t865 + t619;
t940 = -t1019 * t1120 - t1021 * t993;
t881 = (qJD(4) + t1006) * t981 - t1066;
t939 = -t1019 * t993 + t1021 * t1120;
t1192 = t1020 * t1243 + t1022 * t1109;
t976 = t981 ^ 2;
t1004 = t1006 ^ 2;
t1187 = pkin(3) * t1027;
t1185 = pkin(5) * t1029;
t1184 = pkin(7) * t1022;
t1181 = t933 * t998;
t618 = t1025 * t708 - t1029 * t699;
t1177 = t815 - t1189;
t1176 = qJ(6) * t1029;
t1173 = t1025 * t742;
t554 = t1025 * t619 - t1029 * t618;
t1165 = t1026 * t554;
t1164 = t1026 * t819;
t908 = t977 - t1180;
t1163 = t1026 * t908;
t1161 = t1027 * t894;
t1005 = t1027 * t1033 * t1031;
t994 = -t1005 + qJDD(3);
t1159 = t1027 * t994;
t995 = qJDD(3) + t1005;
t1158 = t1027 * t995;
t1156 = t1029 * t742;
t1152 = t1030 * t554;
t1151 = t1030 * t819;
t1150 = t1030 * t908;
t1148 = t1031 * t894;
t1147 = t1031 * t994;
t1144 = qJD(2) * qJD(3);
t1141 = t1006 * t1026;
t1140 = t1006 * t1030;
t1015 = t1027 ^ 2;
t1139 = t1015 * t1033;
t1016 = t1031 ^ 2;
t1135 = t1015 + t1016;
t1134 = qJDD(2) * t1020;
t1132 = qJDD(2) * t1028;
t1130 = qJDD(2) * t1032;
t1128 = t1027 * t1180;
t1125 = t1031 * t1180;
t1121 = -qJ(6) * t1025 - pkin(4);
t555 = t1025 * t618 + t1029 * t619;
t857 = t1027 * t895 + t953;
t772 = t1027 * t857 + t1031 * t858;
t1115 = t933 * t865 + qJDD(6) + t618;
t1114 = t1028 * t1005;
t1113 = t1032 * t1005;
t770 = t1027 * t858 - t1031 * t857;
t988 = t1135 * qJDD(2);
t1013 = t1016 * t1033;
t991 = t1013 + t1139;
t937 = -t1028 * t991 + t1032 * t988;
t1106 = pkin(7) * t937 - t1028 * t770;
t1064 = t1032 * t1033 + t1132;
t966 = t1064 * t1022;
t989 = -t1028 * t1033 + t1130;
t1101 = t1019 * t989 + t1021 * t966;
t923 = t1019 * t966 - t1021 * t989;
t660 = t1026 * t737 - t1030 * t736;
t661 = t1026 * t736 + t1030 * t737;
t593 = -pkin(5) * t1189 + t1107;
t1062 = t971 * pkin(5) + t1115;
t594 = qJ(6) * t1189 - t1062;
t522 = t1025 * t593 + t1029 * t594;
t523 = -t1025 * t594 + t1029 * t593;
t484 = -t1026 * t522 + t1030 * t523;
t620 = (-pkin(5) * t998 + t1232) * t933 + t1250;
t476 = t1027 * t620 + t1031 * t484;
t483 = t1026 * t523 + t1030 * t522;
t1100 = t1028 * t476 - t1032 * t483;
t495 = t1030 * t555 - t1165;
t490 = t1027 * t742 + t1031 * t495;
t494 = t1026 * t555 + t1152;
t1099 = t1028 * t490 - t1032 * t494;
t626 = t1027 * t762 + t1272;
t1093 = t1028 * t626 - t1271;
t628 = t1027 * t819 + t1031 * t661;
t1092 = t1028 * t628 - t1032 * t660;
t761 = -t809 - t1181;
t635 = t1027 * t761 + t1272;
t1090 = t1028 * t635 - t1271;
t803 = -t1026 * t886 - t1030 * t881;
t907 = t976 + t1190;
t747 = -t1027 * t907 + t1031 * t803;
t801 = -t1026 * t881 + t1030 * t886;
t1081 = t1028 * t747 - t1032 * t801;
t1080 = t1028 * t772 - t1032 * t894;
t882 = (-qJD(4) + t1006) * t981 + t1066;
t802 = -t1026 * t884 + t1030 * t882;
t941 = -t976 + t1190;
t774 = -t1027 * t941 + t1031 * t802;
t800 = -t1026 * t882 - t1030 * t884;
t1079 = t1028 * t774 + t1032 * t800;
t925 = -t1004 - t1190;
t845 = t1030 * t925 - t1205;
t776 = -t1027 * t882 + t1031 * t845;
t844 = t1026 * t925 + t1204;
t1078 = t1028 * t776 - t1032 * t844;
t936 = -t976 - t1004;
t856 = -t1026 * t936 + t1150;
t782 = t1027 * t884 + t1031 * t856;
t855 = t1030 * t936 + t1163;
t1077 = t1028 * t782 - t1032 * t855;
t959 = -t976 + t1004;
t868 = -t1026 * t959 + t1204;
t793 = -t1027 * t886 + t1031 * t868;
t866 = -t1030 * t959 - t1205;
t1076 = t1028 * t793 + t1032 * t866;
t958 = -t1004 + t1190;
t869 = t1030 * t958 + t1163;
t794 = -t1027 * t881 + t1031 * t869;
t867 = -t1026 * t958 + t1150;
t1075 = t1028 * t794 + t1032 * t867;
t878 = t1026 * t1039 - t1140 * t980;
t823 = t1031 * t878 - t1128;
t877 = t1030 * t1039 + t1141 * t980;
t1074 = t1028 * t823 + t1032 * t877;
t880 = -t1030 * t1124 + t1141 * t981;
t824 = t1031 * t880 + t1128;
t879 = t1026 * t1124 + t1140 * t981;
t1073 = t1028 * t824 + t1032 * t879;
t892 = (-t1026 * t981 + t1030 * t980) * t1006;
t873 = -t1027 * t977 + t1031 * t892;
t891 = (-t1026 * t980 - t1030 * t981) * t1006;
t1072 = t1028 * t873 + t1032 * t891;
t1071 = t1028 * t912 - t1032 * t911;
t983 = 0.2e1 * t1122 + t1133;
t986 = -0.2e1 * t1009 + t1131;
t935 = -t1027 * t983 + t1031 * t986;
t992 = t1013 - t1139;
t1070 = t1028 * t935 + t1032 * t992;
t1003 = -t1013 - t1188;
t949 = t1003 * t1031 - t1158;
t1069 = t1028 * t949 + t1032 * t986;
t1001 = -t1139 - t1188;
t951 = -t1001 * t1027 - t1147;
t1068 = t1028 * t951 - t1032 * t983;
t1067 = t1028 * t988 + t1032 * t991;
t978 = t1135 * t1144;
t1065 = -qJDD(3) * t1032 + t1028 * t978;
t1000 = -t1139 + t1188;
t979 = t1031 * t995;
t950 = -t1000 * t1027 + t979;
t1061 = -t1027 * t1130 + t1028 * t950;
t1002 = t1013 - t1188;
t948 = t1002 * t1031 - t1159;
t1060 = t1028 * t948 - t1031 * t1130;
t481 = pkin(10) * t523 + (t1121 - t1185) * t620;
t488 = -pkin(10) * t522 + (pkin(5) * t1025 - t1176) * t620;
t446 = -pkin(9) * t483 - t1026 * t481 + t1030 * t488;
t457 = -pkin(3) * t483 - pkin(4) * t522 - pkin(5) * t594 - qJ(6) * t593;
t475 = t1027 * t484 - t1031 * t620;
t428 = -pkin(8) * t475 - t1027 * t457 + t1031 * t446;
t436 = -pkin(2) * t475 + pkin(3) * t620 - pkin(9) * t484 - t1026 * t488 - t1030 * t481;
t454 = t1028 * t483 + t1032 * t476;
t1056 = pkin(7) * t454 + t1028 * t428 + t1032 * t436;
t535 = -pkin(4) * t742 + pkin(10) * t555;
t462 = -pkin(9) * t494 - pkin(10) * t1152 - t1026 * t535;
t474 = -pkin(3) * t494 - pkin(4) * t554;
t489 = t1027 * t495 - t1031 * t742;
t439 = -pkin(8) * t489 - t1027 * t474 + t1031 * t462;
t447 = -pkin(2) * t489 + pkin(3) * t742 - pkin(9) * t495 + pkin(10) * t1165 - t1030 * t535;
t461 = t1028 * t494 + t1032 * t490;
t1055 = pkin(7) * t461 + t1028 * t439 + t1032 * t447;
t569 = pkin(5) * t1177 + t1107;
t570 = qJ(6) * t1177 + t1062;
t509 = t1025 * t570 + t1029 * t569 + t1269;
t514 = -t1025 * t569 + t1029 * t570 - t1283;
t464 = -t1026 * t509 + t1030 * t514 - t1301;
t536 = -pkin(5) * t1202 + qJ(6) * t763 + t564;
t453 = -t1027 * t536 + t1031 * t464 - t1314;
t458 = -t1026 * t514 - t1030 * t509 + t1311;
t1054 = t1028 * t453 + t1032 * t458 + t1327;
t520 = t1269 + t555;
t521 = -t554 - t1283;
t469 = -t1026 * t520 + t1030 * t521 - t1301;
t459 = -t1027 * t564 + t1031 * t469 - t1314;
t465 = -t1026 * t521 - t1030 * t520 + t1311;
t1053 = t1028 * t459 + t1032 * t465 + t1327;
t1034 = 0.2e1 * qJD(6) * t933 - t1250;
t595 = pkin(5) * t1181 + t1034 + t1255;
t544 = t1304 + t1025 * t595 + (pkin(4) + t1185) * t1203;
t560 = -pkin(5) * t1171 + t1029 * t595 + t1303;
t487 = -t1026 * t544 + t1030 * t560 - t1328;
t528 = qJ(6) * t1036 + (t888 + t1189) * pkin(5) - t1107 + t1318;
t467 = -t1027 * t528 + t1031 * t487 - t1345;
t478 = -t1026 * t560 - t1030 * t544 + t1336;
t1052 = t1028 * t467 + t1032 * t478 + t1354;
t597 = (-t761 + t1181) * pkin(5) + t1034;
t553 = t1029 * t597 + t1121 * t761 + t1257;
t562 = -t1025 * t597 - t1176 * t761 - t1256;
t492 = -t1026 * t553 + t1030 * t562 - t1285;
t538 = (-t1201 - t1189) * qJ(6) + (-t1037 + t971) * pkin(5) + t1115 + t1270;
t633 = -t1031 * t761 + t1274;
t468 = -pkin(8) * t633 - t1027 * t538 + t1031 * t492;
t480 = -pkin(2) * t633 + pkin(3) * t761 - t1026 * t562 - t1030 * t553 - t1284;
t579 = t1032 * t635 + t1273;
t1051 = pkin(7) * t579 + t1028 * t468 + t1032 * t480;
t621 = -pkin(4) * t762 - t1156 + t1257;
t668 = t1173 - t1256;
t539 = -t1026 * t621 + t1030 * t668 - t1285;
t558 = t1270 + t618;
t624 = -t1031 * t762 + t1274;
t485 = -pkin(8) * t624 - t1027 * t558 + t1031 * t539;
t515 = -pkin(2) * t624 + pkin(3) * t762 - t1026 * t668 - t1030 * t621 - t1284;
t568 = t1032 * t626 + t1273;
t1050 = pkin(7) * t568 + t1028 * t485 + t1032 * t515;
t629 = -pkin(4) * t1203 + t1173 - t1304;
t687 = t1156 - t1303;
t557 = -t1026 * t629 + t1030 * t687 + t1328;
t561 = -t1318 + t619;
t486 = -t1027 * t561 + t1031 * t557 + t1345;
t517 = -t1026 * t687 - t1030 * t629 - t1336;
t1049 = t1028 * t486 + t1032 * t517 - t1354;
t627 = t1027 * t661 - t1031 * t819;
t537 = -pkin(8) * t627 + (-pkin(9) * t1031 + t1187) * t660;
t563 = -pkin(2) * t627 + pkin(3) * t819 - pkin(9) * t661;
t566 = t1028 * t660 + t1032 * t628;
t1048 = pkin(7) * t566 + t1028 * t537 + t1032 * t563;
t622 = -pkin(9) * t801 - t660;
t746 = t1027 * t803 + t1031 * t907;
t571 = -pkin(8) * t746 + t1031 * t622 + t1187 * t801;
t584 = -pkin(2) * t746 - pkin(3) * t907 - pkin(9) * t803 - t661;
t698 = t1028 * t801 + t1032 * t747;
t1047 = pkin(7) * t698 + t1028 * t571 + t1032 * t584;
t707 = -pkin(3) * t844 + t736;
t743 = -pkin(9) * t844 + t1164;
t775 = t1027 * t845 + t1031 * t882;
t611 = -pkin(8) * t775 - t1027 * t707 + t1031 * t743;
t662 = -pkin(2) * t775 - pkin(3) * t882 - pkin(9) * t845 + t1151;
t722 = t1028 * t844 + t1032 * t776;
t1046 = pkin(7) * t722 + t1028 * t611 + t1032 * t662;
t719 = -pkin(3) * t855 + t737;
t745 = -pkin(9) * t855 + t1151;
t781 = t1027 * t856 - t1031 * t884;
t614 = -pkin(8) * t781 - t1027 * t719 + t1031 * t745;
t663 = -pkin(2) * t781 + pkin(3) * t884 - pkin(9) * t856 - t1164;
t723 = t1028 * t855 + t1032 * t782;
t1045 = pkin(7) * t723 + t1028 * t614 + t1032 * t663;
t945 = t1003 * t1027 + t979;
t816 = -pkin(2) * t945 + t857;
t853 = -pkin(8) * t945 + t1161;
t897 = -t1028 * t986 + t1032 * t949;
t1044 = pkin(7) * t897 + t1028 * t853 + t1032 * t816;
t947 = t1001 * t1031 - t1159;
t817 = -pkin(2) * t947 + t858;
t854 = -pkin(8) * t947 + t1148;
t898 = t1028 * t983 + t1032 * t951;
t1043 = pkin(7) * t898 + t1028 * t854 + t1032 * t817;
t955 = -t1016 * t1144 - t1027 * t985;
t1042 = t1028 * t955 - t1113;
t956 = -t1015 * t1144 + t1031 * t984;
t1041 = t1028 * t956 + t1113;
t731 = t1028 * t894 + t1032 * t772;
t1038 = pkin(7) * t731 + (-pkin(2) * t1032 - pkin(8) * t1028) * t770;
t967 = t989 * t1022;
t965 = t989 * t1020;
t964 = t1064 * t1020;
t957 = qJDD(3) * t1028 + t1032 * t978;
t946 = t1000 * t1031 + t1158;
t944 = t1002 * t1027 + t1147;
t943 = t1104 * t1027;
t942 = t1105 * t1031;
t938 = t1065 * t1022;
t934 = t1027 * t986 + t1031 * t983;
t927 = t1067 * t1022;
t926 = t1067 * t1020;
t924 = -t1019 * t967 - t1021 * t1064;
t922 = -t1019 * t1064 + t1021 * t967;
t918 = t1032 * t956 - t1114;
t917 = t1032 * t955 + t1114;
t916 = t1027 * t1132 + t1032 * t950;
t915 = t1028 * t1131 + t1032 * t948;
t890 = -t1028 * t992 + t1032 * t935;
t875 = -t1058 + (t1020 * t964 + t1022 * t966) * pkin(7);
t874 = -t1059 + (-t1020 * t965 - t1022 * t967) * pkin(7);
t872 = t1027 * t892 + t1031 * t977;
t864 = -t1019 * t927 + t1021 * t937;
t863 = t1019 * t937 + t1021 * t927;
t862 = -t1020 * t943 + t1022 * t1041;
t861 = t1020 * t942 + t1022 * t1042;
t860 = -t1020 * t946 + t1022 * t1061;
t859 = -t1020 * t944 + t1022 * t1060;
t849 = -t1020 * t947 + t1022 * t1068;
t848 = -t1020 * t945 + t1022 * t1069;
t847 = t1020 * t1068 + t1022 * t947;
t846 = t1020 * t1069 + t1022 * t945;
t834 = -t1020 * t934 + t1022 * t1070;
t833 = pkin(2) * t986 + pkin(8) * t949 - t1148;
t832 = -pkin(2) * t983 + pkin(8) * t951 + t1161;
t825 = t837 * t1022;
t822 = t1027 * t880 - t1125;
t821 = t1027 * t878 + t1125;
t811 = -pkin(1) * t965 + t1020 * t911 + t1022 * t1058 - t1064 * t1184;
t810 = pkin(1) * t964 + t1020 * t912 - t1022 * t1059 - t1184 * t989;
t805 = t1020 * t974 + (t1119 + t1071) * t1022;
t804 = t1020 * t1071 - t1022 * t1102;
t799 = -t1028 * t891 + t1032 * t873;
t798 = -t1019 * t849 + t1021 * t898;
t797 = -t1019 * t848 + t1021 * t897;
t796 = t1019 * t898 + t1021 * t849;
t795 = t1019 * t897 + t1021 * t848;
t792 = t1027 * t869 + t1031 * t881;
t791 = t1027 * t868 + t1031 * t886;
t773 = t1027 * t802 + t1031 * t941;
t749 = -t1028 * t879 + t1032 * t824;
t748 = -t1028 * t877 + t1032 * t823;
t744 = pkin(2) * t991 + pkin(8) * t988 + t772;
t735 = -t1020 * t872 + t1022 * t1072;
t734 = -pkin(2) * t894 + pkin(8) * t772;
t733 = -t1028 * t867 + t1032 * t794;
t732 = -t1028 * t866 + t1032 * t793;
t726 = -pkin(1) * t804 + t1184 * t837;
t725 = -t1019 * t805 + t1021 * t837;
t724 = t1019 * t837 + t1021 * t805;
t721 = -t1032 * t770 + (-t1020 * t926 - t1022 * t927) * pkin(7);
t720 = (-t1020 * t804 - t1022 * t805) * pkin(7);
t718 = -t1020 * t822 + t1022 * t1073;
t717 = -t1020 * t821 + t1022 * t1074;
t704 = -t1028 * t800 + t1032 * t774;
t672 = -t1028 * t817 + t1032 * t854 + (-t1020 * t847 - t1022 * t849) * pkin(7);
t671 = -t1028 * t816 + t1032 * t853 + (-t1020 * t846 - t1022 * t848) * pkin(7);
t670 = -t1020 * t792 + t1022 * t1075;
t669 = -t1020 * t791 + t1022 * t1076;
t667 = -t1020 * t781 + t1022 * t1077;
t666 = t1020 * t1077 + t1022 * t781;
t665 = -t1020 * t770 + t1022 * t1080;
t664 = t1020 * t1080 + t1022 * t770;
t659 = -t1020 * t775 + t1022 * t1078;
t658 = t1020 * t1078 + t1022 * t775;
t647 = -pkin(1) * t847 - t1020 * t832 + t1022 * t1043;
t646 = -pkin(1) * t846 - t1020 * t833 + t1022 * t1044;
t645 = -pkin(1) * t926 - t1020 * t744 + t1022 * t1106;
t636 = -t1020 * t773 + t1022 * t1079;
t631 = -t1020 * t746 + t1022 * t1081;
t630 = t1020 * t1081 + t1022 * t746;
t616 = -t1019 * t665 + t1021 * t731;
t615 = t1019 * t731 + t1021 * t665;
t613 = -t1019 * t667 + t1021 * t723;
t612 = t1019 * t723 + t1021 * t667;
t608 = -t1019 * t659 + t1021 * t722;
t607 = t1019 * t722 + t1021 * t659;
t598 = -pkin(2) * t855 + pkin(8) * t782 + t1027 * t745 + t1031 * t719;
t596 = -pkin(2) * t844 + pkin(8) * t776 + t1027 * t743 + t1031 * t707;
t573 = -t1019 * t631 + t1021 * t698;
t572 = t1019 * t698 + t1021 * t631;
t565 = pkin(8) * t747 + t1027 * t622 + (-pkin(2) - t1186) * t801;
t559 = (pkin(2) * t1028 - pkin(8) * t1032) * t770 + (-t1020 * t664 - t1022 * t665) * pkin(7);
t556 = -pkin(1) * t664 - t1020 * t734 + t1022 * t1038;
t543 = -t1020 * t633 + t1022 * t1090;
t541 = t1020 * t1090 + t1022 * t633;
t534 = -t1020 * t624 + t1022 * t1093;
t532 = t1020 * t1093 + t1022 * t624;
t527 = -t1020 * t627 + t1022 * t1092;
t526 = t1020 * t1092 + t1022 * t627;
t519 = pkin(8) * t628 + (-pkin(2) + t1108) * t660;
t518 = -t1028 * t663 + t1032 * t614 + (-t1020 * t666 - t1022 * t667) * pkin(7);
t516 = -t1028 * t662 + t1032 * t611 + (-t1020 * t658 - t1022 * t659) * pkin(7);
t513 = -t1019 * t543 + t1021 * t579;
t511 = t1019 * t579 + t1021 * t543;
t502 = -t1019 * t534 + t1021 * t568;
t500 = t1019 * t568 + t1021 * t534;
t498 = -pkin(1) * t666 - t1020 * t598 + t1022 * t1045;
t497 = -t1019 * t527 + t1021 * t566;
t496 = t1019 * t566 + t1021 * t527;
t493 = -pkin(1) * t658 - t1020 * t596 + t1022 * t1046;
t491 = -t1028 * t584 + t1032 * t571 + (-t1020 * t630 - t1022 * t631) * pkin(7);
t482 = t1027 * t557 + t1031 * t561 - t1335;
t479 = pkin(8) * t626 + t1027 * t539 + t1031 * t558 - t1287;
t477 = -pkin(1) * t630 - t1020 * t565 + t1022 * t1047;
t466 = pkin(8) * t635 + t1027 * t492 + t1031 * t538 - t1287;
t463 = t1027 * t487 + t1031 * t528 + t1335;
t460 = -t1028 * t563 + t1032 * t537 + (-t1020 * t526 - t1022 * t527) * pkin(7);
t456 = t1027 * t469 + t1031 * t564 + t1310;
t455 = -pkin(1) * t526 - t1020 * t519 + t1022 * t1048;
t452 = -t1028 * t517 + t1032 * t486 + t1362;
t451 = -t1020 * t489 + t1022 * t1099;
t450 = t1020 * t1099 + t1022 * t489;
t449 = t1027 * t464 + t1031 * t536 + t1310;
t448 = -t1028 * t515 + t1032 * t485 + (-t1020 * t532 - t1022 * t534) * pkin(7);
t445 = -t1020 * t482 + t1022 * t1049 + t1361;
t444 = -t1020 * t475 + t1022 * t1100;
t443 = t1020 * t1100 + t1022 * t475;
t442 = -t1028 * t480 + t1032 * t468 + (-t1020 * t541 - t1022 * t543) * pkin(7);
t441 = -pkin(1) * t532 - t1020 * t479 + t1022 * t1050;
t440 = -t1028 * t478 + t1032 * t467 - t1362;
t438 = -t1019 * t451 + t1021 * t461;
t437 = t1019 * t461 + t1021 * t451;
t435 = -pkin(2) * t494 + pkin(8) * t490 + t1027 * t462 + t1031 * t474;
t434 = -pkin(1) * t541 - t1020 * t466 + t1022 * t1051;
t433 = -t1028 * t465 + t1032 * t459 + t1330;
t432 = -t1020 * t463 + t1022 * t1052 - t1361;
t431 = -t1019 * t444 + t1021 * t454;
t430 = t1019 * t454 + t1021 * t444;
t429 = -t1028 * t458 + t1032 * t453 + t1330;
t427 = -t1020 * t456 + t1022 * t1053 - t1333;
t426 = -pkin(2) * t483 + pkin(8) * t476 + t1027 * t446 + t1031 * t457;
t425 = -t1020 * t449 + t1022 * t1054 - t1333;
t424 = -t1028 * t447 + t1032 * t439 + (-t1020 * t450 - t1022 * t451) * pkin(7);
t423 = -pkin(1) * t450 - t1020 * t435 + t1022 * t1055;
t422 = -t1028 * t436 + t1032 * t428 + (-t1020 * t443 - t1022 * t444) * pkin(7);
t421 = -pkin(1) * t443 - t1020 * t426 + t1022 * t1056;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t940, 0, 0, 0, 0, 0, 0, t924, t923, 0, t725, 0, 0, 0, 0, 0, 0, t797, t798, t864, t616, 0, 0, 0, 0, 0, 0, t608, t613, t573, t497, 0, 0, 0, 0, 0, 0, t502, t512, t1332, t438, 0, 0, 0, 0, 0, 0, t513, t1332, -t512, t431; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t939, 0, 0, 0, 0, 0, 0, t922, -t1101, 0, t724, 0, 0, 0, 0, 0, 0, t795, t796, t863, t615, 0, 0, 0, 0, 0, 0, t607, t612, t572, t496, 0, 0, 0, 0, 0, 0, t500, -t499, t1331, t437, 0, 0, 0, 0, 0, 0, t511, t1331, t499, t430; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1178, 0, 0, 0, 0, 0, 0, t965, -t964, 0, t804, 0, 0, 0, 0, 0, 0, t846, t847, t926, t664, 0, 0, 0, 0, 0, 0, t658, t666, t630, t526, 0, 0, 0, 0, 0, 0, t532, -t531, t1316, t450, 0, 0, 0, 0, 0, 0, t541, t1316, t531, t443; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1207, -t1206, -t939, -qJ(1) * t939, 0, 0, -t923, 0, t924, t1019 * t1134, -qJ(1) * t922 - t1019 * t811 + t1021 * t874, qJ(1) * t1101 - t1019 * t810 + t1021 * t875, -t1019 * t825 - t1021 * t1071, -qJ(1) * t724 - t1019 * t726 + t1021 * t720, -t1019 * t862 + t1021 * t918, -t1019 * t834 + t1021 * t890, -t1019 * t860 + t1021 * t916, -t1019 * t861 + t1021 * t917, -t1019 * t859 + t1021 * t915, -t1019 * t938 + t1021 * t957, -qJ(1) * t795 - t1019 * t646 + t1021 * t671, -qJ(1) * t796 - t1019 * t647 + t1021 * t672, -qJ(1) * t863 - t1019 * t645 + t1021 * t721, -qJ(1) * t615 - t1019 * t556 + t1021 * t559, -t1019 * t718 + t1021 * t749, -t1019 * t636 + t1021 * t704, -t1019 * t669 + t1021 * t732, -t1019 * t717 + t1021 * t748, -t1019 * t670 + t1021 * t733, -t1019 * t735 + t1021 * t799, -qJ(1) * t607 - t1019 * t493 + t1021 * t516, -qJ(1) * t612 - t1019 * t498 + t1021 * t518, -qJ(1) * t572 - t1019 * t477 + t1021 * t491, -qJ(1) * t496 - t1019 * t455 + t1021 * t460, t1213, t1358, t1309, t1294, t1359, t1295, -qJ(1) * t500 - t1019 * t441 + t1021 * t448, -t1019 * t445 + t1021 * t452 + t1364, -t1019 * t427 + t1021 * t433 - t1344, -qJ(1) * t437 - t1019 * t423 + t1021 * t424, t1213, t1309, -t1358, t1295, -t1359, t1294, -qJ(1) * t511 - t1019 * t434 + t1021 * t442, -t1019 * t425 + t1021 * t429 - t1344, -t1019 * t432 + t1021 * t440 - t1364, -qJ(1) * t430 - t1019 * t421 + t1021 * t422; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1206, -t1207, t940, qJ(1) * t940, 0, 0, t1101, 0, t922, -t1021 * t1134, qJ(1) * t924 + t1019 * t874 + t1021 * t811, qJ(1) * t923 + t1019 * t875 + t1021 * t810, -t1019 * t1071 + t1021 * t825, qJ(1) * t725 + t1019 * t720 + t1021 * t726, t1019 * t918 + t1021 * t862, t1019 * t890 + t1021 * t834, t1019 * t916 + t1021 * t860, t1019 * t917 + t1021 * t861, t1019 * t915 + t1021 * t859, t1019 * t957 + t1021 * t938, qJ(1) * t797 + t1019 * t671 + t1021 * t646, qJ(1) * t798 + t1019 * t672 + t1021 * t647, qJ(1) * t864 + t1019 * t721 + t1021 * t645, qJ(1) * t616 + t1019 * t559 + t1021 * t556, t1019 * t749 + t1021 * t718, t1019 * t704 + t1021 * t636, t1019 * t732 + t1021 * t669, t1019 * t748 + t1021 * t717, t1019 * t733 + t1021 * t670, t1019 * t799 + t1021 * t735, qJ(1) * t608 + t1019 * t516 + t1021 * t493, qJ(1) * t613 + t1019 * t518 + t1021 * t498, qJ(1) * t573 + t1019 * t491 + t1021 * t477, qJ(1) * t497 + t1019 * t460 + t1021 * t455, t1214, -t1356, t1308, t1291, -t1357, t1292, qJ(1) * t502 + t1019 * t448 + t1021 * t441, t1019 * t452 + t1021 * t445 + t1363, t1019 * t433 + t1021 * t427 + t1343, qJ(1) * t438 + t1019 * t424 + t1021 * t423, t1214, t1308, t1356, t1292, t1357, t1291, qJ(1) * t513 + t1019 * t442 + t1021 * t434, t1019 * t429 + t1021 * t425 + t1343, t1019 * t440 + t1021 * t432 - t1363, qJ(1) * t431 + t1019 * t422 + t1021 * t421; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1120, t993, 0, 0, 0, 0, t964, 0, t965, t1022 * qJDD(2), pkin(1) * t967 - t1022 * t911 + (-pkin(7) * t1064 + t1058) * t1020, -pkin(1) * t966 - t1022 * t912 + (-pkin(7) * t989 - t1059) * t1020, t1210, pkin(1) * t805 + pkin(7) * t1210, t1020 * t1041 + t1022 * t943, t1020 * t1070 + t1022 * t934, t1020 * t1061 + t1022 * t946, t1020 * t1042 - t1022 * t942, t1020 * t1060 + t1022 * t944, t1065 * t1020, pkin(1) * t848 + t1020 * t1044 + t1022 * t833, pkin(1) * t849 + t1020 * t1043 + t1022 * t832, pkin(1) * t927 + t1020 * t1106 + t1022 * t744, pkin(1) * t665 + t1020 * t1038 + t1022 * t734, t1020 * t1073 + t1022 * t822, t1020 * t1079 + t1022 * t773, t1020 * t1076 + t1022 * t791, t1020 * t1074 + t1022 * t821, t1020 * t1075 + t1022 * t792, t1020 * t1072 + t1022 * t872, pkin(1) * t659 + t1020 * t1046 + t1022 * t596, pkin(1) * t667 + t1020 * t1045 + t1022 * t598, pkin(1) * t631 + t1020 * t1047 + t1022 * t565, pkin(1) * t527 + t1020 * t1048 + t1022 * t519, t1192, -t1346, t1293, t1268, -t1347, t1267, pkin(1) * t534 + t1020 * t1050 + t1022 * t479, t1020 * t1049 + t1022 * t482 - t1360, t1020 * t1053 + t1022 * t456 + t1334, pkin(1) * t451 + t1020 * t1055 + t1022 * t435, t1192, t1293, t1346, t1267, t1347, t1268, pkin(1) * t543 + t1020 * t1051 + t1022 * t466, t1020 * t1054 + t1022 * t449 + t1334, t1020 * t1052 + t1022 * t463 + t1360, pkin(1) * t444 + t1020 * t1056 + t1022 * t426;];
tauB_reg  = t1;
