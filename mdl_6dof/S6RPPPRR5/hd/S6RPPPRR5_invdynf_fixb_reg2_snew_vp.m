% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S6RPPPRR5
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d5,d6,theta4]';
%
% Output:
% f_new_reg [(3*7)x(7*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 13:51
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S6RPPPRR5_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPPRR5_invdynf_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPPRR5_invdynf_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPPRR5_invdynf_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPPRR5_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPPRR5_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 13:51:05
% EndTime: 2019-05-05 13:51:07
% DurationCPUTime: 2.33s
% Computational Cost: add. (6323->223), mult. (10991->216), div. (0->0), fcn. (5234->8), ass. (0->125)
t1174 = cos(qJ(5));
t1194 = t1174 * qJD(1);
t1150 = -qJD(6) + t1194;
t1204 = qJD(6) - t1150;
t1177 = qJD(1) ^ 2;
t1172 = sin(qJ(1));
t1175 = cos(qJ(1));
t1146 = -t1175 * g(1) - t1172 * g(2);
t1199 = -0.2e1 * qJD(1);
t1179 = -qJDD(1) * qJ(2) + qJD(2) * t1199 - t1146;
t1198 = pkin(1) + qJ(3);
t1122 = t1177 * t1198 - qJDD(3) + t1179;
t1145 = t1172 * g(1) - t1175 * g(2);
t1185 = qJDD(2) - t1145;
t1203 = qJD(3) * t1199 - t1198 * qJDD(1) + t1185;
t1170 = sin(qJ(6));
t1173 = cos(qJ(6));
t1171 = sin(qJ(5));
t1196 = qJD(1) * t1171;
t1130 = -t1173 * qJD(5) + t1170 * t1196;
t1202 = t1130 ^ 2;
t1132 = t1170 * qJD(5) + t1173 * t1196;
t1201 = t1132 ^ 2;
t1200 = t1150 ^ 2;
t1197 = t1177 * qJ(2);
t1195 = t1132 * t1130;
t1193 = qJD(6) + t1150;
t1115 = (-pkin(3) - qJ(2)) * t1177 + t1203;
t1116 = qJDD(1) * pkin(3) - t1122;
t1167 = sin(pkin(9));
t1168 = cos(pkin(9));
t1096 = t1168 * t1115 + t1167 * t1116;
t1094 = -t1177 * pkin(4) + qJDD(1) * pkin(7) + t1096;
t1165 = g(3) - qJDD(4);
t1088 = t1174 * t1094 - t1171 * t1165;
t1163 = t1171 ^ 2;
t1164 = t1174 ^ 2;
t1192 = t1163 + t1164;
t1191 = t1171 * qJDD(1);
t1190 = qJD(5) * t1196;
t1189 = qJD(5) * t1194;
t1188 = -t1167 * t1115 + t1168 * t1116;
t1137 = t1168 * qJDD(1) - t1167 * t1177;
t1138 = t1167 * qJDD(1) + t1168 * t1177;
t1187 = t1175 * t1137 - t1172 * t1138;
t1135 = t1189 + t1191;
t1186 = t1173 * qJDD(5) - t1170 * t1135;
t1156 = t1174 * qJDD(1);
t1184 = -t1156 + 0.2e1 * t1190;
t1183 = t1172 * t1137 + t1175 * t1138;
t1182 = -t1170 * qJDD(5) - t1173 * t1135;
t1181 = -qJDD(6) + t1156 - t1190;
t1093 = -qJDD(1) * pkin(4) - t1177 * pkin(7) - t1188;
t1176 = qJD(5) ^ 2;
t1153 = t1174 * t1165;
t1149 = t1174 * t1177 * t1171;
t1148 = -t1164 * t1177 - t1176;
t1147 = -t1163 * t1177 - t1176;
t1144 = -qJDD(5) + t1149;
t1143 = qJDD(5) + t1149;
t1142 = t1192 * t1177;
t1141 = t1172 * qJDD(1) + t1175 * t1177;
t1140 = t1175 * qJDD(1) - t1172 * t1177;
t1139 = t1192 * qJDD(1);
t1134 = 0.2e1 * t1189 + t1191;
t1133 = (-pkin(5) * t1174 - pkin(8) * t1171) * qJD(1);
t1125 = qJDD(1) * pkin(1) - t1185 + t1197;
t1124 = t1177 * pkin(1) + t1179;
t1121 = t1197 - t1203;
t1120 = t1174 * t1144 - t1171 * t1147;
t1119 = -t1171 * t1143 + t1174 * t1148;
t1118 = t1171 * t1144 + t1174 * t1147;
t1117 = t1174 * t1143 + t1171 * t1148;
t1114 = -t1200 - t1201;
t1113 = t1168 * t1139 - t1167 * t1142;
t1112 = t1167 * t1139 + t1168 * t1142;
t1108 = -t1200 - t1202;
t1107 = -t1181 - t1195;
t1106 = t1181 - t1195;
t1105 = -t1201 - t1202;
t1104 = t1168 * t1120 + t1167 * t1134;
t1103 = t1168 * t1119 + t1167 * t1184;
t1102 = t1167 * t1120 - t1168 * t1134;
t1101 = t1167 * t1119 - t1168 * t1184;
t1100 = t1130 * t1193 + t1182;
t1099 = -t1204 * t1130 - t1182;
t1098 = -t1132 * t1193 + t1186;
t1097 = t1204 * t1132 - t1186;
t1090 = t1173 * t1106 - t1170 * t1114;
t1089 = t1170 * t1106 + t1173 * t1114;
t1087 = -t1171 * t1094 - t1153;
t1085 = -t1170 * t1107 + t1173 * t1108;
t1084 = t1173 * t1107 + t1170 * t1108;
t1082 = -t1176 * pkin(5) + qJDD(5) * pkin(8) + t1133 * t1194 + t1088;
t1081 = t1153 - qJDD(5) * pkin(5) - t1176 * pkin(8) + (qJD(1) * t1133 + t1094) * t1171;
t1080 = (-t1135 - t1189) * pkin(8) + t1184 * pkin(5) + t1093;
t1079 = t1173 * t1098 - t1170 * t1100;
t1078 = t1170 * t1098 + t1173 * t1100;
t1076 = t1168 * t1096 - t1167 * t1188;
t1075 = t1167 * t1096 + t1168 * t1188;
t1074 = t1174 * t1090 + t1171 * t1099;
t1073 = t1171 * t1090 - t1174 * t1099;
t1072 = t1174 * t1085 + t1171 * t1097;
t1071 = t1171 * t1085 - t1174 * t1097;
t1070 = -t1171 * t1087 + t1174 * t1088;
t1069 = t1174 * t1087 + t1171 * t1088;
t1068 = t1174 * t1079 + t1171 * t1105;
t1067 = t1171 * t1079 - t1174 * t1105;
t1066 = t1170 * t1080 + t1173 * t1082;
t1065 = t1173 * t1080 - t1170 * t1082;
t1064 = t1168 * t1074 + t1167 * t1089;
t1063 = t1167 * t1074 - t1168 * t1089;
t1062 = t1168 * t1072 + t1167 * t1084;
t1061 = t1167 * t1072 - t1168 * t1084;
t1060 = t1168 * t1070 + t1167 * t1093;
t1059 = t1167 * t1070 - t1168 * t1093;
t1058 = t1168 * t1068 + t1167 * t1078;
t1057 = t1167 * t1068 - t1168 * t1078;
t1056 = -t1170 * t1065 + t1173 * t1066;
t1055 = t1173 * t1065 + t1170 * t1066;
t1053 = t1174 * t1056 + t1171 * t1081;
t1052 = t1171 * t1056 - t1174 * t1081;
t1051 = t1168 * t1053 + t1167 * t1055;
t1050 = t1167 * t1053 - t1168 * t1055;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1141, -t1140, 0, -t1172 * t1145 + t1175 * t1146, 0, 0, 0, 0, 0, 0, 0, t1141, t1140, -t1175 * t1124 - t1172 * t1125, 0, 0, 0, 0, 0, 0, t1140, 0, -t1141, -t1172 * t1121 - t1175 * t1122, 0, 0, 0, 0, 0, 0, t1187, -t1183, 0, t1175 * t1075 + t1172 * t1076, 0, 0, 0, 0, 0, 0, t1175 * t1101 + t1172 * t1103, t1175 * t1102 + t1172 * t1104, t1175 * t1112 + t1172 * t1113, t1175 * t1059 + t1172 * t1060, 0, 0, 0, 0, 0, 0, t1175 * t1061 + t1172 * t1062, t1175 * t1063 + t1172 * t1064, t1175 * t1057 + t1172 * t1058, t1175 * t1050 + t1172 * t1051; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1140, -t1141, 0, t1175 * t1145 + t1172 * t1146, 0, 0, 0, 0, 0, 0, 0, -t1140, t1141, -t1172 * t1124 + t1175 * t1125, 0, 0, 0, 0, 0, 0, t1141, 0, t1140, t1175 * t1121 - t1172 * t1122, 0, 0, 0, 0, 0, 0, t1183, t1187, 0, t1172 * t1075 - t1175 * t1076, 0, 0, 0, 0, 0, 0, t1172 * t1101 - t1175 * t1103, t1172 * t1102 - t1175 * t1104, t1172 * t1112 - t1175 * t1113, t1172 * t1059 - t1175 * t1060, 0, 0, 0, 0, 0, 0, t1172 * t1061 - t1175 * t1062, t1172 * t1063 - t1175 * t1064, t1172 * t1057 - t1175 * t1058, t1172 * t1050 - t1175 * t1051; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1165, 0, 0, 0, 0, 0, 0, t1117, t1118, 0, t1069, 0, 0, 0, 0, 0, 0, t1071, t1073, t1067, t1052; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1177, -qJDD(1), 0, t1146, 0, 0, 0, 0, 0, 0, 0, t1177, qJDD(1), -t1124, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1177, -t1122, 0, 0, 0, 0, 0, 0, t1137, -t1138, 0, t1075, 0, 0, 0, 0, 0, 0, t1101, t1102, t1112, t1059, 0, 0, 0, 0, 0, 0, t1061, t1063, t1057, t1050; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1177, 0, t1145, 0, 0, 0, 0, 0, 0, 0, -qJDD(1), t1177, t1125, 0, 0, 0, 0, 0, 0, t1177, 0, qJDD(1), t1121, 0, 0, 0, 0, 0, 0, t1138, t1137, 0, -t1076, 0, 0, 0, 0, 0, 0, -t1103, -t1104, -t1113, -t1060, 0, 0, 0, 0, 0, 0, -t1062, -t1064, -t1058, -t1051; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1165, 0, 0, 0, 0, 0, 0, t1117, t1118, 0, t1069, 0, 0, 0, 0, 0, 0, t1071, t1073, t1067, t1052; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1165, 0, 0, 0, 0, 0, 0, t1117, t1118, 0, t1069, 0, 0, 0, 0, 0, 0, t1071, t1073, t1067, t1052; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1177, -qJDD(1), t1124, 0, 0, 0, 0, 0, 0, -qJDD(1), 0, t1177, t1122, 0, 0, 0, 0, 0, 0, -t1137, t1138, 0, -t1075, 0, 0, 0, 0, 0, 0, -t1101, -t1102, -t1112, -t1059, 0, 0, 0, 0, 0, 0, -t1061, -t1063, -t1057, -t1050; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1177, -t1125, 0, 0, 0, 0, 0, 0, -t1177, 0, -qJDD(1), -t1121, 0, 0, 0, 0, 0, 0, -t1138, -t1137, 0, t1076, 0, 0, 0, 0, 0, 0, t1103, t1104, t1113, t1060, 0, 0, 0, 0, 0, 0, t1062, t1064, t1058, t1051; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1177, 0, -qJDD(1), -t1121, 0, 0, 0, 0, 0, 0, -t1138, -t1137, 0, t1076, 0, 0, 0, 0, 0, 0, t1103, t1104, t1113, t1060, 0, 0, 0, 0, 0, 0, t1062, t1064, t1058, t1051; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1165, 0, 0, 0, 0, 0, 0, -t1117, -t1118, 0, -t1069, 0, 0, 0, 0, 0, 0, -t1071, -t1073, -t1067, -t1052; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1177, -t1122, 0, 0, 0, 0, 0, 0, t1137, -t1138, 0, t1075, 0, 0, 0, 0, 0, 0, t1101, t1102, t1112, t1059, 0, 0, 0, 0, 0, 0, t1061, t1063, t1057, t1050; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1177, -qJDD(1), 0, t1096, 0, 0, 0, 0, 0, 0, t1119, t1120, t1139, t1070, 0, 0, 0, 0, 0, 0, t1072, t1074, t1068, t1053; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1177, 0, t1188, 0, 0, 0, 0, 0, 0, -t1184, -t1134, t1142, -t1093, 0, 0, 0, 0, 0, 0, -t1084, -t1089, -t1078, -t1055; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1165, 0, 0, 0, 0, 0, 0, t1117, t1118, 0, t1069, 0, 0, 0, 0, 0, 0, t1071, t1073, t1067, t1052; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1148, t1144, t1156, t1088, 0, 0, 0, 0, 0, 0, t1085, t1090, t1079, t1056; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1143, t1147, -t1191, t1087, 0, 0, 0, 0, 0, 0, -t1097, -t1099, -t1105, -t1081; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1184, t1134, -t1142, t1093, 0, 0, 0, 0, 0, 0, t1084, t1089, t1078, t1055; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1108, t1106, t1098, t1066; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1107, t1114, t1100, t1065; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1097, t1099, t1105, t1081;];
f_new_reg  = t1;
