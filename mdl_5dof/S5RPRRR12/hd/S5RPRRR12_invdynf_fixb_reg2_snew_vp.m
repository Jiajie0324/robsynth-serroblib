% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RPRRR12
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
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:13
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RPRRR12_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR12_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR12_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRR12_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRR12_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRR12_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:13:38
% EndTime: 2019-12-31 19:13:40
% DurationCPUTime: 2.14s
% Computational Cost: add. (8210->216), mult. (16391->255), div. (0->0), fcn. (11010->8), ass. (0->148)
t1182 = sin(qJ(4));
t1183 = sin(qJ(3));
t1186 = cos(qJ(4));
t1187 = cos(qJ(3));
t1150 = (t1182 * t1187 + t1183 * t1186) * qJD(1);
t1149 = qJD(5) + t1150;
t1227 = qJD(5) + t1149;
t1218 = qJD(1) * t1187;
t1203 = qJD(3) * t1218;
t1208 = t1183 * qJDD(1);
t1156 = -t1203 - t1208;
t1179 = t1183 ^ 2;
t1190 = qJD(1) ^ 2;
t1184 = sin(qJ(1));
t1188 = cos(qJ(1));
t1166 = -t1188 * g(1) - t1184 * g(2);
t1193 = -qJDD(1) * qJ(2) - 0.2e1 * qJD(2) * qJD(1) - t1166;
t1197 = qJD(3) * pkin(3) - pkin(7) * t1218;
t1220 = pkin(6) + pkin(1);
t1126 = t1156 * pkin(3) + (t1179 * pkin(7) + t1220) * t1190 - t1197 * t1218 + t1193;
t1219 = qJD(1) * t1183;
t1152 = -t1182 * t1219 + t1186 * t1218;
t1177 = qJD(3) + qJD(4);
t1181 = sin(qJ(5));
t1185 = cos(qJ(5));
t1136 = t1181 * t1152 - t1185 * t1177;
t1226 = t1136 ^ 2;
t1138 = t1185 * t1152 + t1181 * t1177;
t1225 = t1138 ^ 2;
t1224 = t1149 ^ 2;
t1223 = t1150 ^ 2;
t1222 = t1152 ^ 2;
t1221 = t1177 ^ 2;
t1217 = t1138 * t1136;
t1216 = t1152 * t1150;
t1215 = t1179 * t1190;
t1165 = t1184 * g(1) - t1188 * g(2);
t1196 = -t1190 * qJ(2) + qJDD(2) - t1165;
t1146 = -t1220 * qJDD(1) + t1196;
t1214 = t1187 * t1146;
t1213 = t1187 * t1190;
t1212 = qJD(4) - t1177;
t1211 = qJD(4) + t1177;
t1210 = qJD(5) - t1149;
t1135 = -t1187 * g(3) + t1183 * t1146;
t1125 = -pkin(3) * t1215 + t1156 * pkin(7) - qJD(3) * t1197 + t1135;
t1205 = qJD(3) * t1219;
t1207 = t1187 * qJDD(1);
t1157 = -t1205 + t1207;
t1191 = qJDD(3) * pkin(3) - t1157 * pkin(7) + t1214 + (-qJD(3) * pkin(7) * qJD(1) - pkin(3) * t1213 + g(3)) * t1183;
t1106 = t1186 * t1125 + t1182 * t1191;
t1180 = t1187 ^ 2;
t1209 = t1179 + t1180;
t1206 = qJDD(3) + qJDD(4);
t1204 = t1183 * t1213;
t1105 = -t1182 * t1125 + t1186 * t1191;
t1199 = t1182 * t1156 + t1186 * t1157;
t1127 = -t1150 * qJD(4) + t1199;
t1201 = -t1181 * t1127 + t1185 * t1206;
t1200 = -t1186 * t1156 + t1182 * t1157;
t1195 = -t1185 * t1127 - t1181 * t1206;
t1194 = -t1152 * qJD(4) - qJDD(5) - t1200;
t1113 = t1211 * t1152 + t1200;
t1189 = qJD(3) ^ 2;
t1168 = -t1180 * t1190 - t1189;
t1167 = -t1189 - t1215;
t1164 = -qJDD(3) - t1204;
t1163 = qJDD(3) - t1204;
t1162 = t1209 * t1190;
t1161 = t1184 * qJDD(1) + t1188 * t1190;
t1160 = t1188 * qJDD(1) - t1184 * t1190;
t1159 = t1209 * qJDD(1);
t1158 = -0.2e1 * t1205 + t1207;
t1155 = 0.2e1 * t1203 + t1208;
t1148 = qJDD(1) * pkin(1) - t1196;
t1147 = t1190 * pkin(1) + t1193;
t1145 = t1220 * t1190 + t1193;
t1143 = -t1221 - t1222;
t1142 = t1187 * t1164 - t1183 * t1168;
t1141 = -t1183 * t1163 + t1187 * t1167;
t1140 = t1183 * t1164 + t1187 * t1168;
t1139 = t1187 * t1163 + t1183 * t1167;
t1134 = t1183 * g(3) + t1214;
t1133 = t1150 * pkin(4) - t1152 * pkin(8);
t1132 = -t1206 - t1216;
t1131 = t1206 - t1216;
t1130 = -t1221 - t1223;
t1128 = -t1222 - t1223;
t1124 = -t1224 - t1225;
t1120 = -t1183 * t1134 + t1187 * t1135;
t1119 = t1187 * t1134 + t1183 * t1135;
t1118 = t1186 * t1132 - t1182 * t1143;
t1117 = t1182 * t1132 + t1186 * t1143;
t1116 = t1212 * t1150 - t1199;
t1115 = -t1211 * t1150 + t1199;
t1114 = -t1212 * t1152 - t1200;
t1112 = -t1224 - t1226;
t1111 = t1186 * t1130 - t1182 * t1131;
t1110 = t1182 * t1130 + t1186 * t1131;
t1109 = -t1225 - t1226;
t1108 = t1194 - t1217;
t1107 = -t1194 - t1217;
t1104 = t1210 * t1136 + t1195;
t1103 = -t1227 * t1136 - t1195;
t1102 = -t1210 * t1138 + t1201;
t1101 = t1227 * t1138 - t1201;
t1100 = -t1183 * t1117 + t1187 * t1118;
t1099 = t1187 * t1117 + t1183 * t1118;
t1098 = t1186 * t1114 - t1182 * t1116;
t1097 = t1182 * t1114 + t1186 * t1116;
t1096 = -t1183 * t1110 + t1187 * t1111;
t1095 = t1187 * t1110 + t1183 * t1111;
t1094 = t1185 * t1108 - t1181 * t1124;
t1093 = t1181 * t1108 + t1185 * t1124;
t1092 = -t1181 * t1107 + t1185 * t1112;
t1091 = t1185 * t1107 + t1181 * t1112;
t1090 = -t1221 * pkin(4) + t1206 * pkin(8) - t1150 * t1133 + t1106;
t1089 = -t1206 * pkin(4) - t1221 * pkin(8) + t1152 * t1133 - t1105;
t1088 = (t1177 * t1150 - t1127) * pkin(8) + t1113 * pkin(4) - t1126;
t1087 = -t1182 * t1105 + t1186 * t1106;
t1086 = t1186 * t1105 + t1182 * t1106;
t1085 = t1185 * t1102 - t1181 * t1104;
t1084 = t1181 * t1102 + t1185 * t1104;
t1083 = -t1183 * t1097 + t1187 * t1098;
t1082 = t1187 * t1097 + t1183 * t1098;
t1081 = t1186 * t1094 + t1182 * t1103;
t1080 = t1182 * t1094 - t1186 * t1103;
t1079 = t1186 * t1092 + t1182 * t1101;
t1078 = t1182 * t1092 - t1186 * t1101;
t1077 = t1186 * t1085 + t1182 * t1109;
t1076 = t1182 * t1085 - t1186 * t1109;
t1075 = t1181 * t1088 + t1185 * t1090;
t1074 = t1185 * t1088 - t1181 * t1090;
t1073 = -t1183 * t1086 + t1187 * t1087;
t1072 = t1187 * t1086 + t1183 * t1087;
t1071 = -t1183 * t1080 + t1187 * t1081;
t1070 = t1187 * t1080 + t1183 * t1081;
t1069 = -t1183 * t1078 + t1187 * t1079;
t1068 = t1187 * t1078 + t1183 * t1079;
t1067 = -t1183 * t1076 + t1187 * t1077;
t1066 = t1187 * t1076 + t1183 * t1077;
t1065 = -t1181 * t1074 + t1185 * t1075;
t1064 = t1185 * t1074 + t1181 * t1075;
t1063 = t1186 * t1065 + t1182 * t1089;
t1062 = t1182 * t1065 - t1186 * t1089;
t1061 = -t1183 * t1062 + t1187 * t1063;
t1060 = t1187 * t1062 + t1183 * t1063;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1161, -t1160, 0, -t1184 * t1165 + t1188 * t1166, 0, 0, 0, 0, 0, 0, 0, t1161, t1160, -t1188 * t1147 - t1184 * t1148, 0, 0, 0, 0, 0, 0, t1184 * t1139 + t1188 * t1155, t1184 * t1140 + t1188 * t1158, -t1184 * t1159 - t1188 * t1162, t1184 * t1119 - t1188 * t1145, 0, 0, 0, 0, 0, 0, t1184 * t1095 + t1188 * t1113, t1184 * t1099 + t1188 * t1115, t1184 * t1082 + t1188 * t1128, t1184 * t1072 - t1188 * t1126, 0, 0, 0, 0, 0, 0, t1184 * t1068 + t1188 * t1091, t1184 * t1070 + t1188 * t1093, t1184 * t1066 + t1188 * t1084, t1184 * t1060 + t1188 * t1064; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1160, -t1161, 0, t1188 * t1165 + t1184 * t1166, 0, 0, 0, 0, 0, 0, 0, -t1160, t1161, -t1184 * t1147 + t1188 * t1148, 0, 0, 0, 0, 0, 0, -t1188 * t1139 + t1184 * t1155, -t1188 * t1140 + t1184 * t1158, t1188 * t1159 - t1184 * t1162, -t1188 * t1119 - t1184 * t1145, 0, 0, 0, 0, 0, 0, -t1188 * t1095 + t1184 * t1113, -t1188 * t1099 + t1184 * t1115, -t1188 * t1082 + t1184 * t1128, -t1188 * t1072 - t1184 * t1126, 0, 0, 0, 0, 0, 0, -t1188 * t1068 + t1184 * t1091, -t1188 * t1070 + t1184 * t1093, -t1188 * t1066 + t1184 * t1084, -t1188 * t1060 + t1184 * t1064; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1141, t1142, 0, t1120, 0, 0, 0, 0, 0, 0, t1096, t1100, t1083, t1073, 0, 0, 0, 0, 0, 0, t1069, t1071, t1067, t1061; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1190, -qJDD(1), 0, t1166, 0, 0, 0, 0, 0, 0, 0, t1190, qJDD(1), -t1147, 0, 0, 0, 0, 0, 0, t1155, t1158, -t1162, -t1145, 0, 0, 0, 0, 0, 0, t1113, t1115, t1128, -t1126, 0, 0, 0, 0, 0, 0, t1091, t1093, t1084, t1064; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1190, 0, t1165, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1190, t1148, 0, 0, 0, 0, 0, 0, -t1139, -t1140, t1159, -t1119, 0, 0, 0, 0, 0, 0, -t1095, -t1099, -t1082, -t1072, 0, 0, 0, 0, 0, 0, -t1068, -t1070, -t1066, -t1060; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1141, t1142, 0, t1120, 0, 0, 0, 0, 0, 0, t1096, t1100, t1083, t1073, 0, 0, 0, 0, 0, 0, t1069, t1071, t1067, t1061; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1141, t1142, 0, t1120, 0, 0, 0, 0, 0, 0, t1096, t1100, t1083, t1073, 0, 0, 0, 0, 0, 0, t1069, t1071, t1067, t1061; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1190, -qJDD(1), t1147, 0, 0, 0, 0, 0, 0, -t1155, -t1158, t1162, t1145, 0, 0, 0, 0, 0, 0, -t1113, -t1115, -t1128, t1126, 0, 0, 0, 0, 0, 0, -t1091, -t1093, -t1084, -t1064; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1190, -t1148, 0, 0, 0, 0, 0, 0, t1139, t1140, -t1159, t1119, 0, 0, 0, 0, 0, 0, t1095, t1099, t1082, t1072, 0, 0, 0, 0, 0, 0, t1068, t1070, t1066, t1060; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1167, t1164, -t1208, t1135, 0, 0, 0, 0, 0, 0, t1111, t1118, t1098, t1087, 0, 0, 0, 0, 0, 0, t1079, t1081, t1077, t1063; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1163, t1168, -t1207, t1134, 0, 0, 0, 0, 0, 0, t1110, t1117, t1097, t1086, 0, 0, 0, 0, 0, 0, t1078, t1080, t1076, t1062; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1155, t1158, -t1162, -t1145, 0, 0, 0, 0, 0, 0, t1113, t1115, t1128, -t1126, 0, 0, 0, 0, 0, 0, t1091, t1093, t1084, t1064; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1130, t1132, t1114, t1106, 0, 0, 0, 0, 0, 0, t1092, t1094, t1085, t1065; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1131, t1143, t1116, t1105, 0, 0, 0, 0, 0, 0, -t1101, -t1103, -t1109, -t1089; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1113, t1115, t1128, -t1126, 0, 0, 0, 0, 0, 0, t1091, t1093, t1084, t1064; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1112, t1108, t1102, t1075; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1107, t1124, t1104, t1074; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1101, t1103, t1109, t1089;];
f_new_reg = t1;