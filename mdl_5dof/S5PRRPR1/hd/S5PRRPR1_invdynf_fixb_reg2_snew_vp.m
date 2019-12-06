% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5PRRPR1
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
%   pkin=[a2,a3,a4,a5,d2,d3,d5,theta1,theta4]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:16
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5PRRPR1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPR1_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRPR1_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRPR1_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRPR1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRPR1_invdynf_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:16:18
% EndTime: 2019-12-05 16:16:20
% DurationCPUTime: 2.25s
% Computational Cost: add. (7921->155), mult. (11926->242), div. (0->0), fcn. (8589->10), ass. (0->134)
t1146 = qJD(2) + qJD(3);
t1142 = t1146 ^ 2;
t1153 = sin(qJ(3));
t1143 = qJDD(2) + qJDD(3);
t1156 = cos(qJ(3));
t1169 = t1156 * t1143;
t1119 = t1153 * t1142 - t1169;
t1154 = sin(qJ(2));
t1157 = cos(qJ(2));
t1170 = t1153 * t1143;
t1164 = -t1156 * t1142 - t1170;
t1094 = t1157 * t1119 - t1154 * t1164;
t1149 = sin(pkin(8));
t1151 = cos(pkin(8));
t1183 = t1154 * t1119 + t1157 * t1164;
t1189 = t1149 * t1094 + t1151 * t1183;
t1188 = t1151 * t1094 - t1149 * t1183;
t1187 = 2 * qJD(5);
t1148 = sin(pkin(9));
t1150 = cos(pkin(9));
t1152 = sin(qJ(5));
t1155 = cos(qJ(5));
t1184 = -t1148 * t1152 + t1150 * t1155;
t1163 = t1148 * t1155 + t1150 * t1152;
t1109 = t1163 * t1143;
t1144 = t1148 ^ 2;
t1145 = t1150 ^ 2;
t1167 = t1144 + t1145;
t1116 = t1167 * t1142;
t1110 = t1184 * t1146;
t1180 = t1110 ^ 2;
t1112 = t1163 * t1146;
t1179 = t1112 ^ 2;
t1178 = qJD(4) * t1146;
t1177 = t1112 * t1110;
t1176 = t1142 * t1150;
t1175 = t1144 * t1142;
t1174 = t1145 * t1142;
t1173 = t1148 * t1143;
t1136 = t1150 * t1143;
t1128 = t1149 * g(1) - t1151 * g(2);
t1129 = -t1151 * g(1) - t1149 * g(2);
t1105 = t1154 * t1128 + t1157 * t1129;
t1159 = qJD(2) ^ 2;
t1103 = -t1159 * pkin(2) + t1105;
t1104 = t1157 * t1128 - t1154 * t1129;
t1162 = qJDD(2) * pkin(2) + t1104;
t1080 = t1156 * t1103 + t1153 * t1162;
t1147 = -g(3) + qJDD(1);
t1168 = t1150 * t1147 - 0.2e1 * t1148 * t1178;
t1072 = -t1142 * pkin(3) + t1143 * qJ(4) + t1080;
t1063 = t1148 * t1147 + (t1072 + 0.2e1 * t1178) * t1150;
t1079 = -t1153 * t1103 + t1156 * t1162;
t1124 = t1157 * qJDD(2) - t1154 * t1159;
t1125 = -t1154 * qJDD(2) - t1157 * t1159;
t1166 = -t1149 * t1124 + t1151 * t1125;
t1081 = t1184 * t1143;
t1165 = t1151 * t1124 + t1149 * t1125;
t1071 = -t1143 * pkin(3) - t1142 * qJ(4) + qJDD(4) - t1079;
t1158 = qJD(5) ^ 2;
t1126 = t1148 * t1176;
t1115 = t1167 * t1143;
t1114 = t1150 * t1116;
t1113 = t1148 * t1116;
t1106 = -t1158 - t1179;
t1102 = -t1156 * t1114 - t1150 * t1170;
t1101 = t1156 * t1113 + t1148 * t1170;
t1100 = -t1153 * t1114 + t1150 * t1169;
t1099 = t1153 * t1113 - t1148 * t1169;
t1091 = t1156 * t1115 - t1153 * t1116;
t1090 = t1153 * t1115 + t1156 * t1116;
t1089 = t1110 * t1187 + t1109;
t1088 = t1112 * t1187 - t1081;
t1087 = -qJDD(5) + t1177;
t1086 = qJDD(5) + t1177;
t1085 = -t1158 - t1180;
t1084 = -t1154 * t1104 + t1157 * t1105;
t1083 = t1157 * t1104 + t1154 * t1105;
t1082 = -t1179 - t1180;
t1078 = -t1154 * t1100 + t1157 * t1102;
t1077 = -t1154 * t1099 + t1157 * t1101;
t1076 = t1157 * t1100 + t1154 * t1102;
t1075 = t1157 * t1099 + t1154 * t1101;
t1074 = t1155 * t1087 - t1152 * t1106;
t1073 = t1152 * t1087 + t1155 * t1106;
t1069 = -t1154 * t1090 + t1157 * t1091;
t1068 = t1157 * t1090 + t1154 * t1091;
t1067 = t1155 * t1081 + t1152 * t1109;
t1066 = t1152 * t1081 - t1155 * t1109;
t1065 = t1155 * t1085 - t1152 * t1086;
t1064 = t1152 * t1085 + t1155 * t1086;
t1062 = -t1148 * t1072 + t1168;
t1061 = -pkin(4) * t1136 + t1071 + (-t1174 - t1175) * pkin(7);
t1060 = -pkin(4) * t1174 + pkin(7) * t1136 + t1063;
t1059 = (pkin(4) * t1176 - pkin(7) * t1143 - t1072) * t1148 + t1168;
t1058 = -t1153 * t1079 + t1156 * t1080;
t1057 = t1156 * t1079 + t1153 * t1080;
t1056 = -t1148 * t1073 + t1150 * t1074;
t1055 = t1150 * t1073 + t1148 * t1074;
t1054 = -t1148 * t1066 + t1150 * t1067;
t1053 = t1150 * t1066 + t1148 * t1067;
t1052 = -t1148 * t1064 + t1150 * t1065;
t1051 = t1150 * t1064 + t1148 * t1065;
t1050 = -t1148 * t1062 + t1150 * t1063;
t1049 = t1150 * t1062 + t1148 * t1063;
t1048 = t1156 * t1056 + t1153 * t1089;
t1047 = t1153 * t1056 - t1156 * t1089;
t1046 = t1152 * t1059 + t1155 * t1060;
t1045 = t1155 * t1059 - t1152 * t1060;
t1044 = t1156 * t1052 + t1153 * t1088;
t1043 = t1153 * t1052 - t1156 * t1088;
t1042 = t1156 * t1054 + t1153 * t1082;
t1041 = t1153 * t1054 - t1156 * t1082;
t1040 = t1156 * t1050 + t1153 * t1071;
t1039 = t1153 * t1050 - t1156 * t1071;
t1038 = -t1154 * t1057 + t1157 * t1058;
t1037 = t1157 * t1057 + t1154 * t1058;
t1036 = -t1154 * t1047 + t1157 * t1048;
t1035 = t1157 * t1047 + t1154 * t1048;
t1034 = -t1152 * t1045 + t1155 * t1046;
t1033 = t1155 * t1045 + t1152 * t1046;
t1032 = -t1154 * t1043 + t1157 * t1044;
t1031 = t1157 * t1043 + t1154 * t1044;
t1030 = -t1154 * t1041 + t1157 * t1042;
t1029 = t1157 * t1041 + t1154 * t1042;
t1028 = -t1154 * t1039 + t1157 * t1040;
t1027 = t1157 * t1039 + t1154 * t1040;
t1026 = -t1148 * t1033 + t1150 * t1034;
t1025 = t1150 * t1033 + t1148 * t1034;
t1024 = t1156 * t1026 + t1153 * t1061;
t1023 = t1153 * t1026 - t1156 * t1061;
t1022 = -t1154 * t1023 + t1157 * t1024;
t1021 = t1157 * t1023 + t1154 * t1024;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1149 * t1128 + t1151 * t1129, 0, 0, 0, 0, 0, 0, t1166, -t1165, 0, -t1149 * t1083 + t1151 * t1084, 0, 0, 0, 0, 0, 0, t1189, t1188, 0, -t1149 * t1037 + t1151 * t1038, 0, 0, 0, 0, 0, 0, -t1149 * t1076 + t1151 * t1078, -t1149 * t1075 + t1151 * t1077, -t1149 * t1068 + t1151 * t1069, -t1149 * t1027 + t1151 * t1028, 0, 0, 0, 0, 0, 0, -t1149 * t1031 + t1151 * t1032, -t1149 * t1035 + t1151 * t1036, -t1149 * t1029 + t1151 * t1030, -t1149 * t1021 + t1151 * t1022; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1151 * t1128 + t1149 * t1129, 0, 0, 0, 0, 0, 0, t1165, t1166, 0, t1151 * t1083 + t1149 * t1084, 0, 0, 0, 0, 0, 0, -t1188, t1189, 0, t1151 * t1037 + t1149 * t1038, 0, 0, 0, 0, 0, 0, t1151 * t1076 + t1149 * t1078, t1151 * t1075 + t1149 * t1077, t1151 * t1068 + t1149 * t1069, t1151 * t1027 + t1149 * t1028, 0, 0, 0, 0, 0, 0, t1151 * t1031 + t1149 * t1032, t1151 * t1035 + t1149 * t1036, t1151 * t1029 + t1149 * t1030, t1151 * t1021 + t1149 * t1022; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1147, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1147, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1147, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1049, 0, 0, 0, 0, 0, 0, t1051, t1055, t1053, t1025; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1129, 0, 0, 0, 0, 0, 0, t1125, -t1124, 0, t1084, 0, 0, 0, 0, 0, 0, t1183, t1094, 0, t1038, 0, 0, 0, 0, 0, 0, t1078, t1077, t1069, t1028, 0, 0, 0, 0, 0, 0, t1032, t1036, t1030, t1022; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1128, 0, 0, 0, 0, 0, 0, t1124, t1125, 0, t1083, 0, 0, 0, 0, 0, 0, -t1094, t1183, 0, t1037, 0, 0, 0, 0, 0, 0, t1076, t1075, t1068, t1027, 0, 0, 0, 0, 0, 0, t1031, t1035, t1029, t1021; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1147, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1147, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1147, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1049, 0, 0, 0, 0, 0, 0, t1051, t1055, t1053, t1025; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1159, -qJDD(2), 0, t1105, 0, 0, 0, 0, 0, 0, t1164, t1119, 0, t1058, 0, 0, 0, 0, 0, 0, t1102, t1101, t1091, t1040, 0, 0, 0, 0, 0, 0, t1044, t1048, t1042, t1024; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1159, 0, t1104, 0, 0, 0, 0, 0, 0, -t1119, t1164, 0, t1057, 0, 0, 0, 0, 0, 0, t1100, t1099, t1090, t1039, 0, 0, 0, 0, 0, 0, t1043, t1047, t1041, t1023; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1147, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1147, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1049, 0, 0, 0, 0, 0, 0, t1051, t1055, t1053, t1025; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1142, -t1143, 0, t1080, 0, 0, 0, 0, 0, 0, -t1114, t1113, t1115, t1050, 0, 0, 0, 0, 0, 0, t1052, t1056, t1054, t1026; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1143, -t1142, 0, t1079, 0, 0, 0, 0, 0, 0, t1136, -t1173, t1116, -t1071, 0, 0, 0, 0, 0, 0, -t1088, -t1089, -t1082, -t1061; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1147, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1049, 0, 0, 0, 0, 0, 0, t1051, t1055, t1053, t1025; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1174, t1126, t1136, t1063, 0, 0, 0, 0, 0, 0, t1065, t1074, t1067, t1034; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1126, -t1175, -t1173, t1062, 0, 0, 0, 0, 0, 0, t1064, t1073, t1066, t1033; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1136, t1173, -t1116, t1071, 0, 0, 0, 0, 0, 0, t1088, t1089, t1082, t1061; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1085, t1087, t1081, t1046; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1086, t1106, -t1109, t1045; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1088, t1089, t1082, t1061;];
f_new_reg = t1;
