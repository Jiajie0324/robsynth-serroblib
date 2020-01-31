% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RPPRP2
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
%   pkin=[a2,a3,a4,a5,d1,d4,theta2,theta3]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:49
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RPPRP2_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRP2_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRP2_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPPRP2_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRP2_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRP2_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:49:39
% EndTime: 2019-12-31 17:49:53
% DurationCPUTime: 14.45s
% Computational Cost: add. (29265->527), mult. (65733->652), div. (0->0), fcn. (42642->8), ass. (0->368)
t1120 = sin(qJ(1));
t1122 = cos(qJ(1));
t1114 = sin(pkin(8));
t1099 = t1114 * qJDD(1);
t1116 = cos(pkin(8));
t1102 = t1116 * qJDD(1);
t1119 = sin(qJ(4));
t1121 = cos(qJ(4));
t1061 = t1119 * t1099 - t1121 * t1102;
t1115 = sin(pkin(7));
t1117 = cos(pkin(7));
t1123 = qJD(4) ^ 2;
t1196 = qJD(1) * t1114;
t1063 = -t1121 * t1116 * qJD(1) + t1119 * t1196;
t1213 = t1063 ^ 2;
t1045 = t1213 - t1123;
t1140 = t1114 * t1121 + t1116 * t1119;
t1065 = t1140 * qJD(1);
t1192 = t1065 * t1063;
t1223 = qJDD(4) + t1192;
t1178 = t1121 * t1223;
t945 = t1119 * t1045 + t1178;
t1185 = t1119 * t1223;
t951 = t1121 * t1045 - t1185;
t892 = t1114 * t945 - t1116 * t951;
t867 = -t1117 * t1061 + t1115 * t892;
t870 = t1115 * t1061 + t1117 * t892;
t1305 = t1120 * t870 + t1122 * t867;
t1304 = t1120 * t867 - t1122 * t870;
t1060 = t1065 ^ 2;
t1006 = t1123 + t1060;
t928 = t1121 * t1006 + t1185;
t956 = t1119 * t1006 - t1178;
t890 = t1114 * t956 - t1116 * t928;
t1303 = pkin(1) * t890;
t1302 = pkin(2) * t890;
t1301 = qJ(3) * t890;
t896 = t1114 * t928 + t1116 * t956;
t1300 = qJ(3) * t896;
t1299 = t1115 * t896;
t1298 = t1117 * t896;
t1297 = pkin(3) * t928;
t1296 = pkin(6) * t928;
t1295 = pkin(6) * t956;
t1062 = t1140 * qJDD(1);
t1240 = -t1121 * t1061 + t1119 * t1062;
t1241 = -t1119 * t1061 - t1121 * t1062;
t1253 = -t1114 * t1241 + t1116 * t1240;
t978 = -t1213 - t1060;
t1272 = t1115 * t1253 - t1117 * t978;
t1294 = pkin(1) * t1272;
t1193 = t1065 * qJD(4);
t1012 = t1061 + 0.2e1 * t1193;
t1224 = qJDD(4) - t1192;
t1184 = t1119 * t1224;
t1225 = -t1213 - t1123;
t1235 = t1121 * t1225 - t1184;
t993 = t1121 * t1224;
t1243 = t1119 * t1225 + t993;
t1255 = -t1114 * t1243 + t1116 * t1235;
t1274 = -t1117 * t1012 + t1115 * t1255;
t1293 = pkin(1) * t1274;
t1292 = qJ(2) * t1272;
t1291 = qJ(2) * t1274;
t1046 = t1060 - t1123;
t1246 = t1119 * t1046 + t993;
t1259 = -t1121 * t1046 + t1184;
t1273 = -t1114 * t1259 + t1116 * t1246;
t1290 = t1115 * t1273;
t1289 = t1117 * t1273;
t1252 = t1114 * t1240 + t1116 * t1241;
t1269 = t1115 * t978 + t1117 * t1253;
t1288 = -pkin(1) * t1252 + qJ(2) * t1269;
t1254 = t1114 * t1235 + t1116 * t1243;
t1270 = t1115 * t1012 + t1117 * t1255;
t1287 = -pkin(1) * t1254 + qJ(2) * t1270;
t885 = t1114 * t951 + t1116 * t945;
t1286 = pkin(5) * (-t1120 * t1272 + t1122 * t1269);
t1285 = pkin(5) * (t1120 * t1269 + t1122 * t1272);
t1284 = pkin(5) * (-t1120 * t1274 + t1122 * t1270);
t1283 = pkin(5) * (t1120 * t1270 + t1122 * t1274);
t1280 = pkin(2) * t1252;
t1279 = pkin(2) * t1254;
t1278 = qJ(3) * t1252;
t1277 = qJ(3) * t1254;
t1276 = -pkin(2) * t1012 + qJ(3) * t1255;
t1275 = -pkin(2) * t978 + qJ(3) * t1253;
t1271 = t1114 * t1246 + t1116 * t1259;
t1211 = pkin(3) * t1241;
t1267 = pkin(3) * t1243;
t1266 = pkin(6) * t1235;
t1265 = pkin(6) * t1241;
t1264 = pkin(6) * t1243;
t1087 = t1122 * g(1) + t1120 * g(2);
t1214 = qJD(1) ^ 2;
t1076 = -t1214 * pkin(1) - t1087;
t1086 = t1120 * g(1) - t1122 * g(2);
t1137 = qJDD(1) * pkin(1) + t1086;
t1021 = t1115 * t1076 - t1117 * t1137;
t1022 = t1117 * t1076 + t1115 * t1137;
t1159 = t1115 * t1021 + t1117 * t1022;
t940 = t1117 * t1021 - t1115 * t1022;
t1199 = t1120 * t940;
t1258 = t1122 * t1159 + t1199;
t1197 = t1122 * t940;
t1257 = -t1120 * t1159 + t1197;
t1256 = -pkin(3) * t978 + pkin(6) * t1240;
t1170 = t1115 * t1192;
t1013 = t1061 + t1193;
t1055 = qJD(4) * t1063;
t1168 = t1121 * t1055;
t1135 = t1119 * t1013 + t1168;
t1194 = t1063 * t1119;
t1149 = qJD(4) * t1194 - t1121 * t1013;
t1218 = -t1114 * t1149 + t1116 * t1135;
t1236 = t1117 * t1218 - t1170;
t1169 = t1117 * t1192;
t1238 = t1115 * t1218 + t1169;
t1251 = -t1120 * t1238 + t1122 * t1236;
t1250 = t1120 * t1236 + t1122 * t1238;
t1191 = t1065 * t1121;
t1133 = (-t1191 - t1194) * qJD(4);
t1039 = t1119 * t1193;
t1146 = t1039 - t1168;
t1219 = -t1114 * t1133 + t1116 * t1146;
t1237 = -t1117 * qJDD(4) + t1115 * t1219;
t1239 = t1115 * qJDD(4) + t1117 * t1219;
t1249 = t1120 * t1239 + t1122 * t1237;
t1248 = -t1120 * t1237 + t1122 * t1239;
t1015 = t1062 - t1055;
t975 = -t1055 + t1015;
t1247 = qJ(5) * t975;
t1227 = t1060 - t1213;
t1245 = t1115 * t1227;
t1244 = t1117 * t1227;
t1126 = t1116 ^ 2;
t1104 = t1126 * t1214;
t1124 = t1114 ^ 2;
t1176 = t1124 * t1214;
t1082 = t1104 + t1176;
t1174 = t1115 * qJDD(1);
t1079 = t1117 * t1214 + t1174;
t1111 = g(3) - qJDD(2);
t1043 = qJ(2) * t1079 - t1117 * t1111;
t1173 = t1117 * qJDD(1);
t1080 = -t1115 * t1214 + t1173;
t1144 = -qJ(2) * t1080 - t1115 * t1111;
t1226 = t1122 * t1079 + t1120 * t1080;
t1242 = pkin(5) * t1226 + t1122 * t1043 - t1120 * t1144;
t1027 = -t1120 * t1079 + t1122 * t1080;
t1234 = -pkin(5) * t1027 + t1120 * t1043 + t1122 * t1144;
t1222 = t1214 * (t1124 + t1126);
t1072 = t1116 * t1222;
t1165 = t1116 * t1173;
t1031 = -t1115 * t1072 + t1165;
t1033 = t1117 * t1072 + t1115 * t1102;
t1233 = t1122 * t1031 - t1120 * t1033;
t1232 = t1120 * t1031 + t1122 * t1033;
t1093 = t1116 * t1111;
t992 = -t1214 * pkin(2) + qJDD(1) * qJ(3) + t1022;
t1164 = 0.2e1 * qJD(1) * qJD(3) + t992;
t969 = t1114 * t1164 + t1093;
t1190 = t1114 * t1111;
t970 = t1116 * t1164 - t1190;
t910 = t1114 * t969 + t1116 * t970;
t1220 = t1114 * t1146 + t1116 * t1133;
t1217 = t1114 * t1135 + t1116 * t1149;
t966 = qJD(4) * t1191 + t1119 * t1015;
t967 = t1121 * t1015 - t1039;
t905 = -t1114 * t966 + t1116 * t967;
t1147 = t1115 * t905 - t1169;
t1148 = t1117 * t905 + t1170;
t1216 = t1120 * t1148 + t1122 * t1147;
t1215 = -t1120 * t1147 + t1122 * t1148;
t1187 = t1116 * t1214;
t1208 = pkin(6) * qJDD(1);
t943 = -0.2e1 * qJD(3) * t1196 - t1093 + (pkin(3) * t1187 - t1208 - t992) * t1114;
t944 = -pkin(3) * t1104 - t1190 + (t1164 + t1208) * t1116;
t873 = t1119 * t944 - t1121 * t943;
t874 = t1119 * t943 + t1121 * t944;
t806 = t1119 * t874 - t1121 * t873;
t1212 = pkin(3) * t806;
t1210 = pkin(4) * t1121;
t1195 = qJD(5) * qJD(4);
t1105 = 0.2e1 * t1195;
t1000 = t1063 * pkin(4) - t1065 * qJ(5);
t1145 = -t1123 * pkin(4) + qJDD(4) * qJ(5) - t1063 * t1000 + t874;
t820 = t1105 + t1145;
t822 = -qJDD(4) * pkin(4) - t1123 * qJ(5) + t1065 * t1000 + qJDD(5) + t873;
t1207 = -pkin(4) * t822 + qJ(5) * t820;
t989 = -qJDD(1) * pkin(2) - t1214 * qJ(3) + qJDD(3) + t1021;
t1206 = -pkin(2) * t989 + qJ(3) * t910;
t1205 = t1114 * t806;
t982 = t1114 * t989;
t1204 = t1115 * t989;
t1203 = t1116 * t806;
t983 = t1116 * t989;
t1202 = t1117 * t989;
t968 = -pkin(3) * t1102 - t1082 * pkin(6) + t989;
t1201 = t1119 * t968;
t1200 = t1119 * t975;
t1198 = t1121 * t968;
t1183 = t1119 * t1012;
t1177 = t1121 * t1012;
t1175 = -pkin(4) * t1062 - qJ(5) * t1061;
t1171 = pkin(2) * t1102 - qJ(3) * t1072 - t983;
t1089 = t1114 * t1187;
t1167 = -qJ(5) * t1119 - pkin(3);
t1166 = t1114 * t1102;
t807 = t1119 * t873 + t1121 * t874;
t791 = t1119 * t822 + t1121 * t820;
t1130 = t1013 * pkin(4) - t1247 + t968;
t832 = (pkin(4) * qJD(4) - 0.2e1 * qJD(5)) * t1065 + t1130;
t759 = pkin(6) * t791 + (t1167 - t1210) * t832;
t790 = t1119 * t820 - t1121 * t822;
t766 = -t1114 * t790 + t1116 * t791;
t769 = -pkin(6) * t790 + (pkin(4) * t1119 - qJ(5) * t1121) * t832;
t1163 = -pkin(2) * t832 + qJ(3) * t766 + t1114 * t769 + t1116 * t759;
t808 = -pkin(4) * t978 + t820;
t809 = -qJ(5) * t978 + t822;
t775 = t1119 * t809 + t1121 * t808 + t1256;
t780 = -t1119 * t808 + t1121 * t809 - t1265;
t1162 = t1114 * t780 + t1116 * t775 + t1275;
t1128 = 0.2e1 * qJD(5) * t1065 - t1130;
t810 = -pkin(4) * t1193 + t1128 + t1247;
t786 = -t1295 + t1119 * t810 + (pkin(3) + t1210) * t975;
t796 = -pkin(4) * t1200 + t1121 * t810 - t1296;
t1161 = pkin(2) * t975 + t1114 * t796 + t1116 * t786 - t1300;
t788 = t1256 + t807;
t797 = -t806 - t1265;
t1160 = t1114 * t797 + t1116 * t788 + t1275;
t1158 = -t1120 * t1086 - t1122 * t1087;
t816 = (-t1012 - t1193) * pkin(4) + t1128;
t800 = t1167 * t1012 + t1121 * t816 + t1266;
t805 = -qJ(5) * t1177 - t1119 * t816 - t1264;
t1157 = t1114 * t805 + t1116 * t800 + t1276;
t834 = -pkin(3) * t1012 - t1198 + t1266;
t878 = t1201 - t1264;
t1156 = t1114 * t878 + t1116 * t834 + t1276;
t1014 = t1062 - 0.2e1 * t1055;
t859 = -pkin(3) * t1014 + t1201 + t1295;
t906 = t1198 + t1296;
t1155 = -pkin(2) * t1014 + t1114 * t906 + t1116 * t859 + t1300;
t1098 = t1124 * qJDD(1);
t1101 = t1126 * qJDD(1);
t1077 = t1101 + t1098;
t1154 = pkin(2) * t1082 + qJ(3) * t1077 + t910;
t1153 = pkin(3) * t790 + t1207;
t1152 = -t874 - t1297;
t1151 = t1175 + t1211;
t1085 = t1122 * qJDD(1) - t1120 * t1214;
t1150 = -pkin(5) * t1085 - t1120 * g(3);
t908 = t1114 * t970 - t1116 * t969;
t1035 = t1079 * t1116 * t1114;
t1036 = -t1115 * t1089 + t1114 * t1165;
t1143 = t1122 * t1035 + t1120 * t1036;
t1142 = t1120 * t1035 - t1122 * t1036;
t1141 = t1122 * t1086 - t1120 * t1087;
t1071 = t1114 * t1222;
t1139 = -pkin(2) * t1099 + qJ(3) * t1071 + t982;
t1138 = -t873 + t1267;
t778 = t1116 * t807 - t1205;
t801 = -pkin(3) * t968 + pkin(6) * t807;
t1136 = -pkin(2) * t968 - pkin(6) * t1205 + qJ(3) * t778 + t1116 * t801;
t1134 = pkin(4) * t1006 + qJ(5) * t1223 + t1145;
t1132 = t1134 + t1297;
t1131 = pkin(4) * t1224 + qJ(5) * t1225 - t822;
t1129 = t1131 + t1267;
t1088 = 0.2e1 * t1166;
t1084 = t1120 * qJDD(1) + t1122 * t1214;
t1083 = -t1104 + t1176;
t1078 = t1101 - t1098;
t1057 = -pkin(5) * t1084 + t1122 * g(3);
t1032 = t1117 * t1071 + t1114 * t1174;
t1029 = t1115 * t1071 - t1114 * t1173;
t1026 = t1117 * t1078 + t1115 * t1083;
t1025 = t1117 * t1077 - t1115 * t1082;
t1024 = t1115 * t1078 - t1117 * t1083;
t1023 = t1115 * t1077 + t1117 * t1082;
t981 = -pkin(1) * t1079 - t1022;
t980 = pkin(1) * t1080 - t1021;
t974 = t1055 + t1015;
t958 = -t1120 * t1029 + t1122 * t1032;
t957 = t1122 * t1029 + t1120 * t1032;
t937 = pkin(1) * t940;
t934 = -t1119 * t1014 - t1177;
t932 = t1121 * t1014 - t1183;
t926 = pkin(1) * t1111 + qJ(2) * t1159;
t918 = pkin(1) * t1031 + t1171;
t917 = pkin(1) * t1029 + t1139;
t916 = t1177 + t1200;
t915 = -t1121 * t975 + t1183;
t902 = t1114 * t967 + t1116 * t966;
t882 = -qJ(2) * t1029 - t1115 * t970 + t1116 * t1202;
t881 = -qJ(2) * t1031 + t1114 * t1202 - t1115 * t969;
t880 = qJ(2) * t1032 + t1115 * t983 + t1117 * t970;
t879 = -qJ(2) * t1033 + t1114 * t1204 + t1117 * t969;
t871 = t1115 * t1062 + t1289;
t868 = -t1117 * t1062 + t1290;
t865 = -qJ(2) * t1023 - t1117 * t908;
t864 = qJ(2) * t1025 - t1115 * t908;
t863 = -t1114 * t932 + t1116 * t934;
t861 = t1114 * t934 + t1116 * t932;
t842 = -t1151 - t1280;
t841 = t1117 * t910 + t1204;
t840 = t1115 * t910 - t1202;
t839 = t1115 * t1014 + t1298;
t837 = -t1117 * t1014 + t1299;
t835 = pkin(1) * t1023 + t1154;
t830 = t1115 * t974 + t1289;
t829 = -t1117 * t974 + t1290;
t828 = -t1114 * t915 + t1116 * t916;
t827 = t1114 * t916 + t1116 * t915;
t826 = t1117 * t863 + t1245;
t825 = t1115 * t863 - t1244;
t815 = -t1115 * t975 - t1298;
t814 = t1117 * t975 - t1299;
t813 = t1117 * t828 - t1245;
t812 = t1115 * t828 + t1244;
t811 = -t1211 - t1280;
t803 = pkin(1) * t840 + t1206;
t802 = -t1152 - t1302;
t793 = -t1138 - t1279;
t792 = -qJ(2) * t840 + (pkin(2) * t1115 - qJ(3) * t1117) * t908;
t789 = -t1114 * t859 + t1116 * t906 - t1301;
t784 = -t1129 - t1279;
t783 = -t1114 * t834 + t1116 * t878 - t1277;
t782 = -t1132 - 0.2e1 * t1195 + t1302;
t781 = qJ(2) * t841 + (-pkin(2) * t1117 - qJ(3) * t1115 - pkin(1)) * t908;
t777 = t1114 * t807 + t1203;
t773 = pkin(1) * t837 + t1155;
t772 = t1115 * t968 + t1117 * t778;
t771 = t1115 * t778 - t1117 * t968;
t770 = t1156 + t1293;
t767 = -t1114 * t800 + t1116 * t805 - t1277;
t765 = t1114 * t791 + t1116 * t790;
t763 = -pkin(2) * t777 - t1212;
t762 = -qJ(2) * t837 - t1115 * t802 + t1117 * t789;
t761 = -t1114 * t788 + t1116 * t797 - t1278;
t760 = -t1114 * t786 + t1116 * t796 + t1301;
t757 = t1157 + t1293;
t756 = t1115 * t832 + t1117 * t766;
t755 = t1115 * t766 - t1117 * t832;
t754 = qJ(2) * t839 + t1115 * t789 + t1117 * t802 - t1303;
t753 = -t1115 * t793 + t1117 * t783 - t1291;
t752 = t1160 + t1294;
t751 = t1115 * t783 + t1117 * t793 + t1287;
t750 = pkin(1) * t814 + t1161;
t749 = -pkin(6) * t1203 - qJ(3) * t777 - t1114 * t801;
t748 = -t1114 * t775 + t1116 * t780 - t1278;
t747 = -t1115 * t811 + t1117 * t761 - t1292;
t746 = -t1115 * t784 + t1117 * t767 - t1291;
t745 = t1162 + t1294;
t744 = t1115 * t761 + t1117 * t811 + t1288;
t743 = -t1115 * t842 + t1117 * t748 - t1292;
t742 = t1115 * t767 + t1117 * t784 + t1287;
t741 = t1115 * t748 + t1117 * t842 + t1288;
t740 = -pkin(2) * t765 - t1153;
t739 = -qJ(2) * t814 - t1115 * t782 + t1117 * t760;
t738 = qJ(2) * t815 + t1115 * t760 + t1117 * t782 + t1303;
t737 = pkin(1) * t771 + t1136;
t736 = -qJ(3) * t765 - t1114 * t759 + t1116 * t769;
t735 = -qJ(2) * t771 - t1115 * t763 + t1117 * t749;
t734 = -pkin(1) * t777 + qJ(2) * t772 + t1115 * t749 + t1117 * t763;
t733 = pkin(1) * t755 + t1163;
t732 = -qJ(2) * t755 - t1115 * t740 + t1117 * t736;
t731 = -pkin(1) * t765 + qJ(2) * t756 + t1115 * t736 + t1117 * t740;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1085, 0, -t1084, 0, t1150, -t1057, -t1141, -pkin(5) * t1141, 0, 0, t1027, 0, -t1226, 0, t1234, t1242, t1257, pkin(5) * t1257 + qJ(2) * t1197 - t1120 * t926, -t1142, -t1120 * t1024 + t1122 * t1026, t958, t1142, t1232, 0, -pkin(5) * t1233 - t1120 * t879 + t1122 * t881, -pkin(5) * t957 - t1120 * t880 + t1122 * t882, t1122 * t865 - t1120 * t864 - pkin(5) * (t1122 * t1023 + t1120 * t1025), t1122 * t792 - t1120 * t781 - pkin(5) * (t1120 * t841 + t1122 * t840), t1215, -t1120 * t825 + t1122 * t826, -t1120 * t868 + t1122 * t871, t1251, t1304, t1248, -t1120 * t751 + t1122 * t753 - t1283, t1122 * t762 - t1120 * t754 - pkin(5) * (t1120 * t839 + t1122 * t837), -t1120 * t744 + t1122 * t747 - t1285, t1122 * t735 - t1120 * t734 - pkin(5) * (t1120 * t772 + t1122 * t771), t1215, -t1120 * t829 + t1122 * t830, -t1120 * t812 + t1122 * t813, t1248, -t1304, t1251, -t1120 * t742 + t1122 * t746 - t1283, -t1120 * t741 + t1122 * t743 - t1285, t1122 * t739 - t1120 * t738 - pkin(5) * (t1120 * t815 + t1122 * t814), t1122 * t732 - t1120 * t731 - pkin(5) * (t1120 * t756 + t1122 * t755); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1084, 0, t1085, 0, t1057, t1150, t1158, pkin(5) * t1158, 0, 0, t1226, 0, t1027, 0, -t1242, t1234, t1258, pkin(5) * t1258 + qJ(2) * t1199 + t1122 * t926, t1143, t1122 * t1024 + t1120 * t1026, t957, -t1143, -t1233, 0, -pkin(5) * t1232 + t1120 * t881 + t1122 * t879, pkin(5) * t958 + t1120 * t882 + t1122 * t880, t1120 * t865 + t1122 * t864 + pkin(5) * (-t1120 * t1023 + t1122 * t1025), t1120 * t792 + t1122 * t781 + pkin(5) * (-t1120 * t840 + t1122 * t841), t1216, t1120 * t826 + t1122 * t825, t1120 * t871 + t1122 * t868, t1250, -t1305, t1249, t1120 * t753 + t1122 * t751 + t1284, t1120 * t762 + t1122 * t754 + pkin(5) * (-t1120 * t837 + t1122 * t839), t1120 * t747 + t1122 * t744 + t1286, t1120 * t735 + t1122 * t734 + pkin(5) * (-t1120 * t771 + t1122 * t772), t1216, t1120 * t830 + t1122 * t829, t1120 * t813 + t1122 * t812, t1249, t1305, t1250, t1120 * t746 + t1122 * t742 + t1284, t1120 * t743 + t1122 * t741 + t1286, t1120 * t739 + t1122 * t738 + pkin(5) * (-t1120 * t814 + t1122 * t815), t1120 * t732 + t1122 * t731 + pkin(5) * (-t1120 * t755 + t1122 * t756); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1086, t1087, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t980, t981, 0, -t937, t1098, t1088, 0, t1101, 0, 0, t918, t917, t835, t803, t902, t861, t1271, t1217, t885, t1220, t770, t773, t752, t737, t902, t1271, t827, t1220, -t885, t1217, t757, t745, t750, t733; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1214, 0, 0, -g(3), -t1086, 0, 0, 0, t1080, 0, -t1079, 0, t1144, t1043, t940, qJ(2) * t940, t1036, t1026, t1032, -t1036, t1033, 0, t881, t882, t865, t792, t1148, t826, t871, t1236, -t870, t1239, t753, t762, t747, t735, t1148, t830, t813, t1239, t870, t1236, t746, t743, t739, t732; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1214, 0, qJDD(1), 0, g(3), 0, -t1087, 0, 0, 0, t1079, 0, t1080, 0, -t1043, t1144, t1159, t926, t1035, t1024, t1029, -t1035, -t1031, 0, t879, t880, t864, t781, t1147, t825, t868, t1238, -t867, t1237, t751, t754, t744, t734, t1147, t829, t812, t1237, t867, t1238, t742, t741, t738, t731; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1086, t1087, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t980, t981, 0, -t937, t1098, t1088, 0, t1101, 0, 0, t918, t917, t835, t803, t902, t861, t1271, t1217, t885, t1220, t770, t773, t752, t737, t902, t1271, t827, t1220, -t885, t1217, t757, t745, t750, t733; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1214, 0, 0, -t1111, t1021, 0, t1166, t1078, t1071, -t1166, t1072, 0, t982, t983, -t908, -qJ(3) * t908, t905, t863, t1273, t1218, -t892, t1219, t783, t789, t761, t749, t905, t1273, t828, t1219, t892, t1218, t767, t748, t760, t736; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1214, 0, qJDD(1), 0, t1111, 0, t1022, 0, t1089, -t1083, -t1099, -t1089, -t1102, 0, t969, t970, 0, -pkin(2) * t908, -t1192, -t1227, -t1062, t1192, t1061, -qJDD(4), t793, t802, t811, t763, -t1192, -t974, t1227, -qJDD(4), -t1061, t1192, t784, t842, t782, t740; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1021, -t1022, 0, 0, t1098, t1088, 0, t1101, 0, 0, t1171, t1139, t1154, t1206, t902, t861, t1271, t1217, t885, t1220, t1156, t1155, t1160, t1136, t902, t1271, t827, t1220, -t885, t1217, t1157, t1162, t1161, t1163; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1099, t1102, t1089, 0, t1104, 0, 0, t989, t969, 0, t967, t934, t1246, t1135, t951, t1146, t878, t906, t797, -pkin(6) * t806, t967, t1246, t916, t1146, -t951, t1135, t805, t780, t796, t769; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1099, -t1176, t1102, -t1089, 0, -t989, 0, t970, 0, t966, t932, t1259, t1149, t945, t1133, t834, t859, t788, t801, t966, t1259, t915, t1133, -t945, t1149, t800, t775, t786, t759; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1089, t1083, t1099, t1089, t1102, 0, -t969, -t970, 0, 0, t1192, t1227, t1062, -t1192, -t1061, qJDD(4), t1138, t1152, t1211, t1212, t1192, t974, -t1227, qJDD(4), t1061, -t1192, t1129, t1151, t1105 + t1132, t1153; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1015, -t1012, t1224, t1055, t1045, -t1055, 0, t968, t873, 0, t1015, t1224, t1012, -t1055, -t1045, t1055, -qJ(5) * t1012, t809, t810, -qJ(5) * t832; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1193, t1014, -t1046, -t1013, t1223, -t1193, -t968, 0, t874, 0, t1193, -t1046, -t975, -t1193, -t1223, -t1013, t816, t808, pkin(4) * t975, -pkin(4) * t832; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1192, t1227, t1062, -t1192, -t1061, qJDD(4), -t873, -t874, 0, 0, t1192, t974, -t1227, qJDD(4), t1061, -t1192, t1131, t1175, t1105 + t1134, t1207; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1015, t1224, t1012, -t1055, -t1045, t1055, 0, t822, -t832, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1192, t974, -t1227, qJDD(4), t1061, -t1192, -t822, 0, t820, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1193, t1046, t975, t1193, t1223, t1013, t832, -t820, 0, 0;];
m_new_reg = t1;