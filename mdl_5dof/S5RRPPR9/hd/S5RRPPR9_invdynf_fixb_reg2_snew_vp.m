% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RRPPR9
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
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:42
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RRPPR9_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPR9_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPPR9_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRPPR9_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPPR9_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRPPR9_invdynf_fixb_reg2_snew_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:42:08
% EndTime: 2019-12-31 19:42:10
% DurationCPUTime: 1.89s
% Computational Cost: add. (2962->219), mult. (6481->200), div. (0->0), fcn. (3363->6), ass. (0->121)
t1141 = sin(qJ(2));
t1144 = cos(qJ(2));
t1147 = qJD(1) ^ 2;
t1163 = t1144 * t1147 * t1141;
t1112 = qJDD(2) + t1163;
t1113 = qJDD(2) - t1163;
t1135 = t1141 ^ 2;
t1146 = qJD(2) ^ 2;
t1117 = t1135 * t1147 + t1146;
t1087 = t1144 * t1113 - t1141 * t1117;
t1182 = qJD(2) * t1144;
t1164 = qJD(1) * t1182;
t1167 = t1141 * qJDD(1);
t1103 = 0.2e1 * t1164 + t1167;
t1142 = sin(qJ(1));
t1145 = cos(qJ(1));
t1072 = t1142 * t1087 + t1145 * t1103;
t1074 = t1145 * t1087 - t1142 * t1103;
t1136 = t1144 ^ 2;
t1179 = t1136 * t1147;
t1118 = t1146 + t1179;
t1088 = t1141 * t1112 + t1144 * t1118;
t1178 = t1141 * qJD(1);
t1126 = qJD(2) * t1178;
t1166 = t1144 * qJDD(1);
t1106 = -0.2e1 * t1126 + t1166;
t1192 = t1142 * t1088 - t1145 * t1106;
t1191 = t1145 * t1088 + t1142 * t1106;
t1140 = sin(qJ(5));
t1143 = cos(qJ(5));
t1183 = qJD(1) * t1144;
t1098 = -t1143 * qJD(2) + t1140 * t1183;
t1190 = t1098 ^ 2;
t1099 = t1140 * qJD(2) + t1143 * t1183;
t1189 = t1099 ^ 2;
t1120 = qJD(5) + t1178;
t1188 = t1120 ^ 2;
t1187 = 2 * qJD(3);
t1186 = pkin(4) + qJ(3);
t1105 = -t1126 + t1166;
t1185 = t1105 * pkin(2);
t1184 = t1144 * g(3);
t1181 = qJDD(2) * qJ(3);
t1180 = t1098 * t1099;
t1115 = -t1145 * g(1) - t1142 * g(2);
t1095 = -t1147 * pkin(1) + qJDD(1) * pkin(6) + t1115;
t1177 = t1141 * t1095;
t1172 = -qJD(2) * pkin(3) - qJ(4) * t1178 + t1187;
t1101 = (-pkin(2) * t1144 - qJ(3) * t1141) * qJD(1);
t1171 = -(2 * qJD(4)) + t1101;
t1170 = qJD(5) - t1120;
t1169 = qJD(5) + t1120;
t1092 = -t1141 * g(3) + t1144 * t1095;
t1168 = t1135 + t1136;
t1165 = qJ(4) * t1182;
t1162 = -(pkin(4) * t1141 + pkin(7) * t1144) * qJD(1) + t1171;
t1161 = -t1146 * pkin(2) + t1092;
t1160 = -t1188 - t1189;
t1114 = t1142 * g(1) - t1145 * g(2);
t1159 = t1172 * t1141;
t1158 = -t1140 * qJDD(2) - t1143 * t1105;
t1104 = t1164 + t1167;
t1094 = qJDD(1) * pkin(1) + t1147 * pkin(6) + t1114;
t1152 = -pkin(2) * t1126 + t1094;
t1148 = t1105 * pkin(3) - qJ(4) * t1179 + qJDD(4) + t1152;
t1049 = (pkin(2) + pkin(7)) * t1105 + t1186 * t1104 + (t1159 + (-pkin(7) * t1141 + t1186 * t1144) * qJD(2)) * qJD(1) + t1148;
t1155 = -qJDD(2) * pkin(2) - t1146 * qJ(3) + qJDD(3) + t1184;
t1149 = -t1112 * pkin(3) - t1104 * qJ(4) + t1155 + t1177;
t1053 = -t1146 * pkin(4) - qJDD(2) * pkin(7) + (t1162 * t1141 + t1165) * qJD(1) + t1149;
t1157 = t1143 * t1049 - t1140 * t1053;
t1107 = t1168 * qJDD(1);
t1110 = t1168 * t1147;
t1082 = t1145 * t1107 - t1142 * t1110;
t1081 = t1142 * t1107 + t1145 * t1110;
t1085 = t1144 * t1112 - t1141 * t1118;
t1083 = t1141 * t1113 + t1144 * t1117;
t1156 = -t1143 * qJDD(2) + t1140 * t1105;
t1154 = -qJDD(5) - t1104;
t1153 = -t1170 * t1098 - t1158;
t1151 = -t1154 - t1180;
t1150 = -pkin(3) * t1179 - t1105 * qJ(4) + t1172 * qJD(2) + t1161;
t1109 = -t1142 * qJDD(1) - t1145 * t1147;
t1108 = t1145 * qJDD(1) - t1142 * t1147;
t1091 = -t1177 - t1184;
t1079 = -t1188 - t1190;
t1078 = t1154 - t1180;
t1077 = -t1189 - t1190;
t1071 = (qJD(1) * t1101 + t1095) * t1141 + t1155;
t1070 = qJD(2) * t1187 + t1101 * t1183 + t1161 + t1181;
t1069 = -t1141 * t1091 + t1144 * t1092;
t1068 = t1144 * t1091 + t1141 * t1092;
t1067 = t1169 * t1098 + t1158;
t1066 = t1170 * t1099 + t1156;
t1065 = -t1169 * t1099 - t1156;
t1063 = t1178 * t1187 + t1185 + (t1104 + t1164) * qJ(3) + t1152;
t1062 = t1143 * t1078 - t1140 * t1160;
t1061 = t1140 * t1078 + t1143 * t1160;
t1060 = t1143 * t1079 - t1140 * t1151;
t1059 = t1140 * t1079 + t1143 * t1151;
t1058 = (t1171 * t1141 + t1165) * qJD(1) + t1149;
t1057 = t1171 * t1183 + t1150 + t1181;
t1056 = t1185 + t1104 * qJ(3) + (qJ(3) * t1182 + t1159) * qJD(1) + t1148;
t1055 = t1144 * t1070 + t1141 * t1071;
t1054 = t1141 * t1070 - t1144 * t1071;
t1052 = -t1146 * pkin(7) + t1186 * qJDD(2) + t1162 * t1183 + t1150;
t1051 = t1143 * t1066 - t1140 * t1153;
t1050 = t1140 * t1066 + t1143 * t1153;
t1048 = t1141 * t1062 + t1144 * t1067;
t1047 = -t1144 * t1062 + t1141 * t1067;
t1046 = t1141 * t1060 + t1144 * t1065;
t1045 = -t1144 * t1060 + t1141 * t1065;
t1044 = t1141 * t1051 + t1144 * t1077;
t1043 = -t1144 * t1051 + t1141 * t1077;
t1042 = t1144 * t1057 + t1141 * t1058;
t1041 = t1141 * t1057 - t1144 * t1058;
t1040 = t1140 * t1049 + t1143 * t1053;
t1038 = t1143 * t1040 - t1140 * t1157;
t1037 = t1140 * t1040 + t1143 * t1157;
t1036 = t1141 * t1038 + t1144 * t1052;
t1035 = -t1144 * t1038 + t1141 * t1052;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1109, -t1108, 0, -t1142 * t1114 + t1145 * t1115, 0, 0, 0, 0, 0, 0, -t1191, -t1074, t1082, t1145 * t1069 - t1142 * t1094, 0, 0, 0, 0, 0, 0, -t1191, t1082, t1074, t1145 * t1055 - t1142 * t1063, 0, 0, 0, 0, 0, 0, t1074, t1191, -t1082, t1145 * t1042 - t1142 * t1056, 0, 0, 0, 0, 0, 0, t1145 * t1046 - t1142 * t1059, t1145 * t1048 - t1142 * t1061, t1145 * t1044 - t1142 * t1050, t1145 * t1036 - t1142 * t1037; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1108, t1109, 0, t1145 * t1114 + t1142 * t1115, 0, 0, 0, 0, 0, 0, -t1192, -t1072, t1081, t1142 * t1069 + t1145 * t1094, 0, 0, 0, 0, 0, 0, -t1192, t1081, t1072, t1142 * t1055 + t1145 * t1063, 0, 0, 0, 0, 0, 0, t1072, t1192, -t1081, t1142 * t1042 + t1145 * t1056, 0, 0, 0, 0, 0, 0, t1142 * t1046 + t1145 * t1059, t1142 * t1048 + t1145 * t1061, t1142 * t1044 + t1145 * t1050, t1142 * t1036 + t1145 * t1037; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1085, -t1083, 0, t1068, 0, 0, 0, 0, 0, 0, t1085, 0, t1083, t1054, 0, 0, 0, 0, 0, 0, t1083, -t1085, 0, t1041, 0, 0, 0, 0, 0, 0, t1045, t1047, t1043, t1035; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1147, -qJDD(1), 0, t1115, 0, 0, 0, 0, 0, 0, -t1088, -t1087, t1107, t1069, 0, 0, 0, 0, 0, 0, -t1088, t1107, t1087, t1055, 0, 0, 0, 0, 0, 0, t1087, t1088, -t1107, t1042, 0, 0, 0, 0, 0, 0, t1046, t1048, t1044, t1036; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1147, 0, t1114, 0, 0, 0, 0, 0, 0, t1106, -t1103, t1110, t1094, 0, 0, 0, 0, 0, 0, t1106, t1110, t1103, t1063, 0, 0, 0, 0, 0, 0, t1103, -t1106, -t1110, t1056, 0, 0, 0, 0, 0, 0, t1059, t1061, t1050, t1037; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1085, -t1083, 0, t1068, 0, 0, 0, 0, 0, 0, t1085, 0, t1083, t1054, 0, 0, 0, 0, 0, 0, t1083, -t1085, 0, t1041, 0, 0, 0, 0, 0, 0, t1045, t1047, t1043, t1035; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1118, -t1113, t1166, t1092, 0, 0, 0, 0, 0, 0, -t1118, t1166, t1113, t1070, 0, 0, 0, 0, 0, 0, t1113, t1118, -t1166, t1057, 0, 0, 0, 0, 0, 0, t1065, t1067, t1077, t1052; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1112, -t1117, -t1167, t1091, 0, 0, 0, 0, 0, 0, t1112, -t1167, t1117, -t1071, 0, 0, 0, 0, 0, 0, t1117, -t1112, t1167, -t1058, 0, 0, 0, 0, 0, 0, -t1060, -t1062, -t1051, -t1038; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1106, t1103, -t1110, -t1094, 0, 0, 0, 0, 0, 0, -t1106, -t1110, -t1103, -t1063, 0, 0, 0, 0, 0, 0, -t1103, t1106, t1110, -t1056, 0, 0, 0, 0, 0, 0, -t1059, -t1061, -t1050, -t1037; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1118, t1166, t1113, t1070, 0, 0, 0, 0, 0, 0, t1113, t1118, -t1166, t1057, 0, 0, 0, 0, 0, 0, t1065, t1067, t1077, t1052; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1106, -t1110, -t1103, -t1063, 0, 0, 0, 0, 0, 0, -t1103, t1106, t1110, -t1056, 0, 0, 0, 0, 0, 0, -t1059, -t1061, -t1050, -t1037; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1112, t1167, -t1117, t1071, 0, 0, 0, 0, 0, 0, -t1117, t1112, -t1167, t1058, 0, 0, 0, 0, 0, 0, t1060, t1062, t1051, t1038; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1117, t1112, -t1167, t1058, 0, 0, 0, 0, 0, 0, t1060, t1062, t1051, t1038; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1113, -t1118, t1166, -t1057, 0, 0, 0, 0, 0, 0, -t1065, -t1067, -t1077, -t1052; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1103, -t1106, -t1110, t1056, 0, 0, 0, 0, 0, 0, t1059, t1061, t1050, t1037; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1079, t1078, t1066, t1040; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1151, t1160, t1153, t1157; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1065, t1067, t1077, t1052;];
f_new_reg = t1;