% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPPRRP5
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 14:59
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPPRRP5_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP5_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP5_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRRP5_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRRP5_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPPRRP5_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 14:58:50
% EndTime: 2019-05-05 14:58:53
% DurationCPUTime: 2.32s
% Computational Cost: add. (4986->209), mult. (9561->191), div. (0->0), fcn. (5524->6), ass. (0->111)
t1186 = sin(qJ(4));
t1207 = t1186 * qJD(1);
t1170 = qJD(5) + t1207;
t1216 = qJD(5) + t1170;
t1192 = qJD(1) ^ 2;
t1187 = sin(qJ(1));
t1190 = cos(qJ(1));
t1167 = -t1190 * g(1) - t1187 * g(2);
t1194 = -qJDD(1) * qJ(2) - 0.2e1 * qJD(2) * qJD(1) - t1167;
t1211 = pkin(1) + qJ(3);
t1148 = t1192 * t1211 - qJDD(3) + t1194;
t1185 = sin(qJ(5));
t1188 = cos(qJ(5));
t1189 = cos(qJ(4));
t1209 = qJD(1) * t1189;
t1154 = -t1188 * qJD(4) + t1185 * t1209;
t1153 = t1154 ^ 2;
t1156 = t1185 * qJD(4) + t1188 * t1209;
t1215 = t1156 ^ 2;
t1214 = t1170 ^ 2;
t1213 = 2 * qJD(3);
t1212 = -2 * qJD(6);
t1210 = pkin(4) * t1186;
t1208 = t1156 * t1154;
t1206 = qJD(5) - t1170;
t1202 = qJD(4) * t1207;
t1203 = t1189 * qJDD(1);
t1158 = -t1202 + t1203;
t1173 = qJD(4) * t1209;
t1184 = t1192 * pkin(7);
t1166 = t1187 * g(1) - t1190 * g(2);
t1195 = t1192 * qJ(2) - qJDD(2) + t1166;
t1123 = t1173 * pkin(4) - t1158 * pkin(8) - t1184 + (t1210 + t1211) * qJDD(1) + (t1213 + (pkin(4) * t1189 + pkin(8) * t1186) * qJD(4)) * qJD(1) + t1195;
t1142 = -qJDD(1) * pkin(7) - t1148;
t1137 = -t1189 * g(3) + t1186 * t1142;
t1191 = qJD(4) ^ 2;
t1196 = t1192 * (-pkin(8) * t1189 + t1210);
t1126 = -t1191 * pkin(4) + qJDD(4) * pkin(8) - t1186 * t1196 + t1137;
t1112 = t1185 * t1123 + t1188 * t1126;
t1182 = t1186 ^ 2;
t1183 = t1189 ^ 2;
t1205 = t1182 + t1183;
t1204 = t1186 * qJDD(1);
t1201 = t1186 * t1192 * t1189;
t1111 = t1188 * t1123 - t1185 * t1126;
t1200 = -t1188 * qJDD(4) + t1185 * t1158;
t1199 = t1170 * pkin(5) - t1156 * qJ(6);
t1136 = t1186 * g(3) + t1189 * t1142;
t1198 = -qJDD(5) - t1173 - t1204;
t1197 = -t1185 * qJDD(4) - t1188 * t1158;
t1132 = -t1198 - t1208;
t1130 = t1154 * t1206 + t1197;
t1125 = qJDD(4) * pkin(4) + t1191 * pkin(8) - t1189 * t1196 + t1136;
t1147 = qJD(1) * t1213 + qJDD(1) * t1211 + t1195;
t1169 = -t1183 * t1192 - t1191;
t1168 = -t1182 * t1192 - t1191;
t1165 = -qJDD(4) - t1201;
t1164 = qJDD(4) - t1201;
t1163 = t1205 * t1192;
t1162 = t1187 * qJDD(1) + t1190 * t1192;
t1161 = t1190 * qJDD(1) - t1187 * t1192;
t1160 = t1205 * qJDD(1);
t1159 = -0.2e1 * t1202 + t1203;
t1157 = 0.2e1 * t1173 + t1204;
t1151 = qJDD(1) * pkin(1) + t1195;
t1150 = t1192 * pkin(1) + t1194;
t1146 = t1189 * t1165 - t1186 * t1169;
t1145 = -t1186 * t1164 + t1189 * t1168;
t1144 = t1186 * t1165 + t1189 * t1169;
t1143 = t1189 * t1164 + t1186 * t1168;
t1141 = -t1184 + t1147;
t1140 = -t1214 - t1215;
t1138 = -t1214 - t1153;
t1135 = -t1156 * qJD(5) - t1200;
t1133 = t1198 - t1208;
t1131 = -t1153 - t1215;
t1129 = -t1216 * t1154 - t1197;
t1128 = -t1156 * t1206 - t1200;
t1127 = t1216 * t1156 + t1200;
t1120 = t1188 * t1133 - t1185 * t1140;
t1119 = t1185 * t1133 + t1188 * t1140;
t1118 = -t1186 * t1136 + t1189 * t1137;
t1117 = t1189 * t1136 + t1186 * t1137;
t1116 = -t1185 * t1132 + t1188 * t1138;
t1115 = t1188 * t1132 + t1185 * t1138;
t1114 = t1188 * t1128 - t1185 * t1130;
t1113 = t1185 * t1128 + t1188 * t1130;
t1110 = t1189 * t1120 + t1186 * t1129;
t1109 = t1186 * t1120 - t1189 * t1129;
t1108 = t1189 * t1116 + t1186 * t1127;
t1107 = t1186 * t1116 - t1189 * t1127;
t1106 = t1135 * pkin(5) + t1153 * qJ(6) - t1156 * t1199 - qJDD(6) + t1125;
t1105 = t1189 * t1114 + t1186 * t1131;
t1104 = t1186 * t1114 - t1189 * t1131;
t1103 = t1190 * t1109 - t1187 * t1119;
t1102 = t1187 * t1109 + t1190 * t1119;
t1101 = -t1153 * pkin(5) + t1135 * qJ(6) + t1154 * t1212 - t1170 * t1199 + t1112;
t1100 = t1190 * t1107 - t1187 * t1115;
t1099 = t1187 * t1107 + t1190 * t1115;
t1098 = pkin(5) * t1132 + qJ(6) * t1130 + t1156 * t1212 + t1111;
t1097 = -t1185 * t1111 + t1188 * t1112;
t1096 = t1188 * t1111 + t1185 * t1112;
t1095 = t1190 * t1104 - t1187 * t1113;
t1094 = t1187 * t1104 + t1190 * t1113;
t1093 = t1189 * t1097 - t1186 * t1125;
t1092 = t1186 * t1097 + t1189 * t1125;
t1091 = -t1185 * t1098 + t1188 * t1101;
t1090 = t1188 * t1098 + t1185 * t1101;
t1089 = t1189 * t1091 - t1186 * t1106;
t1088 = t1186 * t1091 + t1189 * t1106;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1162, -t1161, 0, -t1187 * t1166 + t1190 * t1167, 0, 0, 0, 0, 0, 0, 0, t1162, t1161, -t1190 * t1150 - t1187 * t1151, 0, 0, 0, 0, 0, 0, 0, t1161, -t1162, -t1187 * t1147 - t1190 * t1148, 0, 0, 0, 0, 0, 0, t1190 * t1143 - t1187 * t1157, t1190 * t1144 - t1187 * t1159, -t1190 * t1160 + t1187 * t1163, t1190 * t1117 - t1187 * t1141, 0, 0, 0, 0, 0, 0, t1100, t1103, t1095, t1190 * t1092 - t1187 * t1096, 0, 0, 0, 0, 0, 0, t1100, t1103, t1095, t1190 * t1088 - t1187 * t1090; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1161, -t1162, 0, t1190 * t1166 + t1187 * t1167, 0, 0, 0, 0, 0, 0, 0, -t1161, t1162, -t1187 * t1150 + t1190 * t1151, 0, 0, 0, 0, 0, 0, 0, t1162, t1161, t1190 * t1147 - t1187 * t1148, 0, 0, 0, 0, 0, 0, t1187 * t1143 + t1190 * t1157, t1187 * t1144 + t1190 * t1159, -t1187 * t1160 - t1190 * t1163, t1187 * t1117 + t1190 * t1141, 0, 0, 0, 0, 0, 0, t1099, t1102, t1094, t1187 * t1092 + t1190 * t1096, 0, 0, 0, 0, 0, 0, t1099, t1102, t1094, t1187 * t1088 + t1190 * t1090; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1145, t1146, 0, t1118, 0, 0, 0, 0, 0, 0, t1108, t1110, t1105, t1093, 0, 0, 0, 0, 0, 0, t1108, t1110, t1105, t1089; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1192, -qJDD(1), 0, t1167, 0, 0, 0, 0, 0, 0, 0, t1192, qJDD(1), -t1150, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1192, -t1148, 0, 0, 0, 0, 0, 0, t1143, t1144, -t1160, t1117, 0, 0, 0, 0, 0, 0, t1107, t1109, t1104, t1092, 0, 0, 0, 0, 0, 0, t1107, t1109, t1104, t1088; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1192, 0, t1166, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1192, t1151, 0, 0, 0, 0, 0, 0, 0, t1192, qJDD(1), t1147, 0, 0, 0, 0, 0, 0, t1157, t1159, -t1163, t1141, 0, 0, 0, 0, 0, 0, t1115, t1119, t1113, t1096, 0, 0, 0, 0, 0, 0, t1115, t1119, t1113, t1090; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1145, t1146, 0, t1118, 0, 0, 0, 0, 0, 0, t1108, t1110, t1105, t1093, 0, 0, 0, 0, 0, 0, t1108, t1110, t1105, t1089; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1145, t1146, 0, t1118, 0, 0, 0, 0, 0, 0, t1108, t1110, t1105, t1093, 0, 0, 0, 0, 0, 0, t1108, t1110, t1105, t1089; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1192, -qJDD(1), t1150, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1192, t1148, 0, 0, 0, 0, 0, 0, -t1143, -t1144, t1160, -t1117, 0, 0, 0, 0, 0, 0, -t1107, -t1109, -t1104, -t1092, 0, 0, 0, 0, 0, 0, -t1107, -t1109, -t1104, -t1088; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1192, -t1151, 0, 0, 0, 0, 0, 0, 0, -t1192, -qJDD(1), -t1147, 0, 0, 0, 0, 0, 0, -t1157, -t1159, t1163, -t1141, 0, 0, 0, 0, 0, 0, -t1115, -t1119, -t1113, -t1096, 0, 0, 0, 0, 0, 0, -t1115, -t1119, -t1113, -t1090; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1145, t1146, 0, t1118, 0, 0, 0, 0, 0, 0, t1108, t1110, t1105, t1093, 0, 0, 0, 0, 0, 0, t1108, t1110, t1105, t1089; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1192, -qJDD(1), -t1147, 0, 0, 0, 0, 0, 0, -t1157, -t1159, t1163, -t1141, 0, 0, 0, 0, 0, 0, -t1115, -t1119, -t1113, -t1096, 0, 0, 0, 0, 0, 0, -t1115, -t1119, -t1113, -t1090; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1192, -t1148, 0, 0, 0, 0, 0, 0, t1143, t1144, -t1160, t1117, 0, 0, 0, 0, 0, 0, t1107, t1109, t1104, t1092, 0, 0, 0, 0, 0, 0, t1107, t1109, t1104, t1088; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1168, t1165, -t1204, t1137, 0, 0, 0, 0, 0, 0, t1116, t1120, t1114, t1097, 0, 0, 0, 0, 0, 0, t1116, t1120, t1114, t1091; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1164, t1169, -t1203, t1136, 0, 0, 0, 0, 0, 0, -t1127, -t1129, -t1131, t1125, 0, 0, 0, 0, 0, 0, -t1127, -t1129, -t1131, t1106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1157, t1159, -t1163, t1141, 0, 0, 0, 0, 0, 0, t1115, t1119, t1113, t1096, 0, 0, 0, 0, 0, 0, t1115, t1119, t1113, t1090; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1138, t1133, t1128, t1112, 0, 0, 0, 0, 0, 0, t1138, t1133, t1128, t1101; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1132, t1140, t1130, t1111, 0, 0, 0, 0, 0, 0, t1132, t1140, t1130, t1098; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1127, t1129, t1131, -t1125, 0, 0, 0, 0, 0, 0, t1127, t1129, t1131, -t1106; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1138, t1133, t1128, t1101; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1132, t1140, t1130, t1098; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1127, t1129, t1131, -t1106;];
f_new_reg  = t1;
