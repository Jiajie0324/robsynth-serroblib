% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RPRRP3
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 11:48
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RPRRP3_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP3_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP3_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRP3_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP3_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP3_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 11:48:10
% EndTime: 2020-01-03 11:48:12
% DurationCPUTime: 2.02s
% Computational Cost: add. (6554->165), mult. (13463->228), div. (0->0), fcn. (8785->8), ass. (0->134)
t1228 = qJD(3) + qJD(4);
t1266 = qJD(4) + t1228;
t1235 = sin(qJ(4));
t1238 = cos(qJ(4));
t1239 = cos(qJ(3));
t1259 = qJD(1) * t1239;
t1236 = sin(qJ(3));
t1260 = qJD(1) * t1236;
t1197 = t1235 * t1260 - t1238 * t1259;
t1265 = t1197 ^ 2;
t1199 = (t1235 * t1239 + t1236 * t1238) * qJD(1);
t1264 = t1199 ^ 2;
t1263 = t1228 ^ 2;
t1262 = t1239 ^ 2;
t1261 = -2 * qJD(5);
t1258 = t1199 * t1197;
t1242 = qJD(1) ^ 2;
t1257 = t1262 * t1242;
t1256 = qJD(4) - t1228;
t1237 = sin(qJ(1));
t1240 = cos(qJ(1));
t1216 = -t1237 * g(2) + t1240 * g(3);
t1203 = -t1242 * pkin(1) + t1216;
t1232 = sin(pkin(8));
t1233 = cos(pkin(8));
t1217 = -t1240 * g(2) - t1237 * g(3);
t1244 = qJDD(1) * pkin(1) + t1217;
t1183 = t1233 * t1203 + t1232 * t1244;
t1178 = -t1242 * pkin(2) + qJDD(1) * pkin(6) + t1183;
t1230 = -g(1) + qJDD(2);
t1169 = -t1236 * t1178 + t1239 * t1230;
t1250 = qJD(3) * t1259;
t1255 = t1236 * qJDD(1);
t1205 = t1250 + t1255;
t1221 = t1239 * t1242 * t1236;
t1213 = qJDD(3) + t1221;
t1155 = (-t1205 + t1250) * pkin(7) + t1213 * pkin(3) + t1169;
t1170 = t1239 * t1178 + t1236 * t1230;
t1215 = qJD(3) * pkin(3) - pkin(7) * t1260;
t1251 = qJD(3) * t1260;
t1254 = t1239 * qJDD(1);
t1245 = -t1251 + t1254;
t1156 = -pkin(3) * t1257 + t1245 * pkin(7) - qJD(3) * t1215 + t1170;
t1141 = t1235 * t1155 + t1238 * t1156;
t1253 = -qJDD(3) - qJDD(4);
t1229 = t1236 ^ 2;
t1252 = t1229 + t1262;
t1140 = t1238 * t1155 - t1235 * t1156;
t1182 = -t1232 * t1203 + t1233 * t1244;
t1249 = t1235 * t1205 - t1238 * t1245;
t1207 = -t1232 * qJDD(1) - t1233 * t1242;
t1208 = t1233 * qJDD(1) - t1232 * t1242;
t1248 = t1237 * t1207 + t1240 * t1208;
t1180 = -t1253 - t1258;
t1247 = t1240 * t1207 - t1237 * t1208;
t1177 = -qJDD(1) * pkin(2) - t1242 * pkin(6) - t1182;
t1246 = -t1199 * qJD(4) - t1249;
t1243 = -t1238 * t1205 - t1235 * t1245;
t1161 = -t1245 * pkin(3) - pkin(7) * t1257 + t1215 * t1260 + t1177;
t1165 = t1256 * t1197 + t1243;
t1241 = qJD(3) ^ 2;
t1219 = -t1241 - t1257;
t1218 = -t1229 * t1242 - t1241;
t1214 = -qJDD(3) + t1221;
t1212 = t1252 * t1242;
t1211 = t1240 * qJDD(1) - t1237 * t1242;
t1210 = -t1237 * qJDD(1) - t1240 * t1242;
t1209 = t1252 * qJDD(1);
t1206 = -0.2e1 * t1251 + t1254;
t1204 = 0.2e1 * t1250 + t1255;
t1191 = t1228 * pkin(4) - t1199 * qJ(5);
t1190 = -t1263 - t1264;
t1189 = t1239 * t1214 - t1236 * t1218;
t1188 = -t1236 * t1213 + t1239 * t1219;
t1187 = t1236 * t1214 + t1239 * t1218;
t1186 = t1239 * t1213 + t1236 * t1219;
t1185 = t1233 * t1209 - t1232 * t1212;
t1184 = t1232 * t1209 + t1233 * t1212;
t1181 = t1253 - t1258;
t1179 = -t1263 - t1265;
t1175 = t1233 * t1189 + t1232 * t1204;
t1174 = t1233 * t1188 - t1232 * t1206;
t1173 = t1232 * t1189 - t1233 * t1204;
t1172 = t1232 * t1188 + t1233 * t1206;
t1171 = -t1264 - t1265;
t1167 = t1238 * t1181 - t1235 * t1190;
t1166 = t1235 * t1181 + t1238 * t1190;
t1164 = -t1266 * t1197 - t1243;
t1163 = -t1256 * t1199 - t1249;
t1162 = t1266 * t1199 + t1249;
t1160 = -t1232 * t1182 + t1233 * t1183;
t1159 = t1233 * t1182 + t1232 * t1183;
t1158 = t1238 * t1179 - t1235 * t1180;
t1157 = t1235 * t1179 + t1238 * t1180;
t1151 = -t1236 * t1169 + t1239 * t1170;
t1150 = t1239 * t1169 + t1236 * t1170;
t1149 = -t1236 * t1166 + t1239 * t1167;
t1148 = t1239 * t1166 + t1236 * t1167;
t1147 = t1238 * t1163 - t1235 * t1165;
t1146 = t1235 * t1163 + t1238 * t1165;
t1145 = t1233 * t1151 + t1232 * t1177;
t1144 = t1232 * t1151 - t1233 * t1177;
t1143 = -t1236 * t1157 + t1239 * t1158;
t1142 = t1239 * t1157 + t1236 * t1158;
t1139 = -t1246 * pkin(4) - t1265 * qJ(5) + t1199 * t1191 + qJDD(5) + t1161;
t1138 = t1233 * t1149 + t1232 * t1164;
t1137 = t1232 * t1149 - t1233 * t1164;
t1136 = t1233 * t1143 + t1232 * t1162;
t1135 = t1232 * t1143 - t1233 * t1162;
t1134 = -t1228 * t1191 + t1246 * qJ(5) + (-pkin(4) * t1197 + t1261) * t1197 + t1141;
t1133 = -t1236 * t1146 + t1239 * t1147;
t1132 = t1239 * t1146 + t1236 * t1147;
t1131 = t1180 * pkin(4) + t1165 * qJ(5) + t1199 * t1261 + t1140;
t1130 = -t1235 * t1140 + t1238 * t1141;
t1129 = t1238 * t1140 + t1235 * t1141;
t1128 = t1233 * t1133 + t1232 * t1171;
t1127 = t1232 * t1133 - t1233 * t1171;
t1126 = t1237 * t1137 - t1240 * t1138;
t1125 = t1240 * t1137 + t1237 * t1138;
t1124 = t1237 * t1135 - t1240 * t1136;
t1123 = t1240 * t1135 + t1237 * t1136;
t1122 = -t1235 * t1131 + t1238 * t1134;
t1121 = t1238 * t1131 + t1235 * t1134;
t1120 = -t1236 * t1129 + t1239 * t1130;
t1119 = t1239 * t1129 + t1236 * t1130;
t1118 = t1237 * t1127 - t1240 * t1128;
t1117 = t1240 * t1127 + t1237 * t1128;
t1116 = t1233 * t1120 + t1232 * t1161;
t1115 = t1232 * t1120 - t1233 * t1161;
t1114 = -t1236 * t1121 + t1239 * t1122;
t1113 = t1239 * t1121 + t1236 * t1122;
t1112 = t1233 * t1114 + t1232 * t1139;
t1111 = t1232 * t1114 - t1233 * t1139;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1230, 0, 0, 0, 0, 0, 0, t1186, t1187, 0, t1150, 0, 0, 0, 0, 0, 0, t1142, t1148, t1132, t1119, 0, 0, 0, 0, 0, 0, t1142, t1148, t1132, t1113; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1211, t1210, 0, t1237 * t1216 + t1240 * t1217, 0, 0, 0, 0, 0, 0, t1248, t1247, 0, t1240 * t1159 + t1237 * t1160, 0, 0, 0, 0, 0, 0, t1240 * t1172 + t1237 * t1174, t1240 * t1173 + t1237 * t1175, t1240 * t1184 + t1237 * t1185, t1240 * t1144 + t1237 * t1145, 0, 0, 0, 0, 0, 0, t1123, t1125, t1117, t1240 * t1115 + t1237 * t1116, 0, 0, 0, 0, 0, 0, t1123, t1125, t1117, t1240 * t1111 + t1237 * t1112; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t1210, t1211, 0, -t1240 * t1216 + t1237 * t1217, 0, 0, 0, 0, 0, 0, -t1247, t1248, 0, t1237 * t1159 - t1240 * t1160, 0, 0, 0, 0, 0, 0, t1237 * t1172 - t1240 * t1174, t1237 * t1173 - t1240 * t1175, t1237 * t1184 - t1240 * t1185, t1237 * t1144 - t1240 * t1145, 0, 0, 0, 0, 0, 0, t1124, t1126, t1118, t1237 * t1115 - t1240 * t1116, 0, 0, 0, 0, 0, 0, t1124, t1126, t1118, t1237 * t1111 - t1240 * t1112; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1242, -qJDD(1), 0, t1216, 0, 0, 0, 0, 0, 0, t1207, -t1208, 0, t1160, 0, 0, 0, 0, 0, 0, t1174, t1175, t1185, t1145, 0, 0, 0, 0, 0, 0, t1136, t1138, t1128, t1116, 0, 0, 0, 0, 0, 0, t1136, t1138, t1128, t1112; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1242, 0, t1217, 0, 0, 0, 0, 0, 0, t1208, t1207, 0, t1159, 0, 0, 0, 0, 0, 0, t1172, t1173, t1184, t1144, 0, 0, 0, 0, 0, 0, t1135, t1137, t1127, t1115, 0, 0, 0, 0, 0, 0, t1135, t1137, t1127, t1111; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1230, 0, 0, 0, 0, 0, 0, t1186, t1187, 0, t1150, 0, 0, 0, 0, 0, 0, t1142, t1148, t1132, t1119, 0, 0, 0, 0, 0, 0, t1142, t1148, t1132, t1113; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1242, -qJDD(1), 0, t1183, 0, 0, 0, 0, 0, 0, t1188, t1189, t1209, t1151, 0, 0, 0, 0, 0, 0, t1143, t1149, t1133, t1120, 0, 0, 0, 0, 0, 0, t1143, t1149, t1133, t1114; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1242, 0, t1182, 0, 0, 0, 0, 0, 0, t1206, -t1204, t1212, -t1177, 0, 0, 0, 0, 0, 0, -t1162, -t1164, -t1171, -t1161, 0, 0, 0, 0, 0, 0, -t1162, -t1164, -t1171, -t1139; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1230, 0, 0, 0, 0, 0, 0, t1186, t1187, 0, t1150, 0, 0, 0, 0, 0, 0, t1142, t1148, t1132, t1119, 0, 0, 0, 0, 0, 0, t1142, t1148, t1132, t1113; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1219, t1214, t1254, t1170, 0, 0, 0, 0, 0, 0, t1158, t1167, t1147, t1130, 0, 0, 0, 0, 0, 0, t1158, t1167, t1147, t1122; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1213, t1218, -t1255, t1169, 0, 0, 0, 0, 0, 0, t1157, t1166, t1146, t1129, 0, 0, 0, 0, 0, 0, t1157, t1166, t1146, t1121; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1206, t1204, -t1212, t1177, 0, 0, 0, 0, 0, 0, t1162, t1164, t1171, t1161, 0, 0, 0, 0, 0, 0, t1162, t1164, t1171, t1139; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1179, t1181, t1163, t1141, 0, 0, 0, 0, 0, 0, t1179, t1181, t1163, t1134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1180, t1190, t1165, t1140, 0, 0, 0, 0, 0, 0, t1180, t1190, t1165, t1131; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1162, t1164, t1171, t1161, 0, 0, 0, 0, 0, 0, t1162, t1164, t1171, t1139; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1179, t1181, t1163, t1134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1180, t1190, t1165, t1131; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1162, t1164, t1171, t1139;];
f_new_reg = t1;
