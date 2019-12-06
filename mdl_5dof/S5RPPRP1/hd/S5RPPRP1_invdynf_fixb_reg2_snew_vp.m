% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RPPRP1
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
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:36
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RPPRP1_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPPRP1_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPPRP1_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPPRP1_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPPRP1_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPPRP1_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:36:49
% EndTime: 2019-12-05 17:36:50
% DurationCPUTime: 1.74s
% Computational Cost: add. (4179->168), mult. (9290->230), div. (0->0), fcn. (5585->8), ass. (0->131)
t1171 = -2 * qJD(5);
t1142 = qJD(1) ^ 2;
t1134 = sin(pkin(8));
t1128 = t1134 ^ 2;
t1136 = cos(pkin(8));
t1129 = t1136 ^ 2;
t1161 = t1128 + t1129;
t1109 = t1161 * t1142;
t1163 = t1136 * qJD(1);
t1117 = -qJD(4) + t1163;
t1170 = t1117 ^ 2;
t1169 = 2 * qJD(3);
t1168 = -g(1) + qJDD(2);
t1167 = qJD(1) * t1134;
t1138 = sin(qJ(4));
t1166 = qJD(1) * t1138;
t1140 = cos(qJ(4));
t1165 = qJD(1) * t1140;
t1164 = t1128 * t1142;
t1149 = -pkin(3) * t1136 - pkin(6) * t1134;
t1104 = t1149 * qJD(1);
t1162 = t1169 + t1104;
t1139 = sin(qJ(1));
t1141 = cos(qJ(1));
t1112 = t1139 * g(2) - t1141 * g(3);
t1105 = -t1142 * pkin(1) + t1112;
t1135 = sin(pkin(7));
t1137 = cos(pkin(7));
t1113 = t1141 * g(2) + t1139 * g(3);
t1148 = qJDD(1) * pkin(1) + t1113;
t1085 = t1137 * t1105 + t1135 * t1148;
t1079 = -t1142 * pkin(2) + qJDD(1) * qJ(3) + t1085;
t1069 = t1136 * t1079 + t1134 * t1168 + t1163 * t1169;
t1063 = t1104 * t1163 + t1069;
t1084 = -t1135 * t1105 + t1137 * t1148;
t1078 = -qJDD(1) * pkin(2) - t1142 * qJ(3) + qJDD(3) - t1084;
t1072 = t1149 * qJDD(1) + t1078;
t1049 = t1140 * t1063 + t1138 * t1072;
t1160 = qJDD(1) * t1138;
t1159 = qJDD(1) * t1140;
t1158 = t1134 * qJDD(1);
t1157 = t1135 * qJDD(1);
t1123 = t1136 * qJDD(1);
t1156 = t1137 * qJDD(1);
t1155 = -t1123 + qJDD(4);
t1154 = t1117 * t1166;
t1153 = t1134 * t1165;
t1152 = t1140 * t1164;
t1131 = t1138 ^ 2;
t1151 = t1131 * t1164;
t1150 = t1138 * t1152;
t1107 = -t1137 * t1142 - t1157;
t1108 = -t1135 * t1142 + t1156;
t1147 = t1141 * t1107 - t1139 * t1108;
t1146 = -t1139 * t1107 - t1141 * t1108;
t1145 = -qJD(4) * t1165 - t1160;
t1132 = t1140 ^ 2;
t1122 = t1136 * t1168;
t1116 = t1136 * t1142 * t1134;
t1114 = t1134 * qJD(4) * t1166;
t1111 = -t1141 * qJDD(1) + t1139 * t1142;
t1110 = t1139 * qJDD(1) + t1141 * t1142;
t1106 = t1161 * qJDD(1);
t1103 = t1136 * t1109;
t1102 = t1134 * t1109;
t1098 = (t1131 + t1132) * t1164;
t1097 = -t1151 - t1170;
t1096 = -t1150 + t1155;
t1095 = -t1150 - t1155;
t1094 = -t1117 * pkin(4) - qJ(5) * t1153;
t1092 = -t1132 * t1164 - t1170;
t1091 = -t1137 * t1103 - t1135 * t1123;
t1090 = t1137 * t1102 + t1134 * t1157;
t1089 = -t1135 * t1103 + t1136 * t1156;
t1088 = t1135 * t1102 - t1134 * t1156;
t1087 = t1137 * t1106 - t1135 * t1109;
t1086 = t1135 * t1106 + t1137 * t1109;
t1083 = t1114 + (t1154 - t1159) * t1134;
t1082 = -t1114 + (t1154 + t1159) * t1134;
t1081 = (-t1160 + (-qJD(4) - t1117) * t1165) * t1134;
t1080 = (t1160 + (qJD(4) - t1117) * t1165) * t1134;
t1077 = -t1138 * t1096 + t1140 * t1097;
t1076 = t1140 * t1096 + t1138 * t1097;
t1074 = -t1138 * t1092 + t1140 * t1095;
t1073 = t1140 * t1092 + t1138 * t1095;
t1071 = t1140 * t1072;
t1068 = -0.2e1 * qJD(3) * t1167 - t1134 * t1079 + t1122;
t1067 = t1140 * t1081 - t1138 * t1083;
t1066 = t1138 * t1081 + t1140 * t1083;
t1065 = -t1135 * t1084 + t1137 * t1085;
t1064 = t1137 * t1084 + t1135 * t1085;
t1062 = -t1122 + (t1162 * qJD(1) + t1079) * t1134;
t1060 = t1136 * t1077 + t1134 * t1080;
t1059 = t1134 * t1077 - t1136 * t1080;
t1058 = t1136 * t1074 + t1134 * t1082;
t1057 = t1134 * t1074 - t1136 * t1082;
t1056 = t1136 * t1067 - t1134 * t1098;
t1055 = t1134 * t1067 + t1136 * t1098;
t1054 = -t1134 * t1068 + t1136 * t1069;
t1053 = t1136 * t1068 + t1134 * t1069;
t1052 = -qJ(5) * t1151 + qJDD(5) - t1122 + (-t1145 * pkin(4) + t1079 + (t1094 * t1140 + t1162) * qJD(1)) * t1134;
t1051 = t1137 * t1060 + t1135 * t1076;
t1050 = t1135 * t1060 - t1137 * t1076;
t1048 = -t1138 * t1063 + t1071;
t1047 = t1137 * t1058 + t1135 * t1073;
t1046 = t1135 * t1058 - t1137 * t1073;
t1045 = t1137 * t1054 + t1135 * t1078;
t1044 = t1135 * t1054 - t1137 * t1078;
t1043 = t1137 * t1056 + t1135 * t1066;
t1042 = t1135 * t1056 - t1137 * t1066;
t1041 = -pkin(4) * t1151 + t1117 * t1094 + (t1145 * qJ(5) + t1166 * t1171) * t1134 + t1049;
t1040 = t1071 - (t1140 * t1158 - t1114) * qJ(5) + t1155 * pkin(4) + t1153 * t1171 + (t1117 * qJ(5) * t1167 - pkin(4) * t1152 - t1063) * t1138;
t1039 = -t1139 * t1050 + t1141 * t1051;
t1038 = -t1141 * t1050 - t1139 * t1051;
t1037 = -t1138 * t1048 + t1140 * t1049;
t1036 = t1140 * t1048 + t1138 * t1049;
t1035 = -t1139 * t1046 + t1141 * t1047;
t1034 = -t1141 * t1046 - t1139 * t1047;
t1033 = t1136 * t1037 + t1134 * t1062;
t1032 = t1134 * t1037 - t1136 * t1062;
t1031 = -t1139 * t1042 + t1141 * t1043;
t1030 = -t1141 * t1042 - t1139 * t1043;
t1029 = -t1138 * t1040 + t1140 * t1041;
t1028 = t1140 * t1040 + t1138 * t1041;
t1027 = t1136 * t1029 + t1134 * t1052;
t1026 = t1134 * t1029 - t1136 * t1052;
t1025 = t1137 * t1033 + t1135 * t1036;
t1024 = t1135 * t1033 - t1137 * t1036;
t1023 = t1137 * t1027 + t1135 * t1028;
t1022 = t1135 * t1027 - t1137 * t1028;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1168, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1053, 0, 0, 0, 0, 0, 0, t1059, t1057, t1055, t1032, 0, 0, 0, 0, 0, 0, t1059, t1057, t1055, t1026; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1111, t1110, 0, -t1139 * t1112 - t1141 * t1113, 0, 0, 0, 0, 0, 0, t1146, -t1147, 0, -t1141 * t1064 - t1139 * t1065, 0, 0, 0, 0, 0, 0, -t1141 * t1089 - t1139 * t1091, -t1141 * t1088 - t1139 * t1090, -t1141 * t1086 - t1139 * t1087, -t1141 * t1044 - t1139 * t1045, 0, 0, 0, 0, 0, 0, t1038, t1034, t1030, -t1141 * t1024 - t1139 * t1025, 0, 0, 0, 0, 0, 0, t1038, t1034, t1030, -t1141 * t1022 - t1139 * t1023; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, -t1110, t1111, 0, t1141 * t1112 - t1139 * t1113, 0, 0, 0, 0, 0, 0, t1147, t1146, 0, -t1139 * t1064 + t1141 * t1065, 0, 0, 0, 0, 0, 0, -t1139 * t1089 + t1141 * t1091, -t1139 * t1088 + t1141 * t1090, -t1139 * t1086 + t1141 * t1087, -t1139 * t1044 + t1141 * t1045, 0, 0, 0, 0, 0, 0, t1039, t1035, t1031, -t1139 * t1024 + t1141 * t1025, 0, 0, 0, 0, 0, 0, t1039, t1035, t1031, -t1139 * t1022 + t1141 * t1023; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1142, -qJDD(1), 0, t1112, 0, 0, 0, 0, 0, 0, t1107, -t1108, 0, t1065, 0, 0, 0, 0, 0, 0, t1091, t1090, t1087, t1045, 0, 0, 0, 0, 0, 0, t1051, t1047, t1043, t1025, 0, 0, 0, 0, 0, 0, t1051, t1047, t1043, t1023; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1142, 0, t1113, 0, 0, 0, 0, 0, 0, t1108, t1107, 0, t1064, 0, 0, 0, 0, 0, 0, t1089, t1088, t1086, t1044, 0, 0, 0, 0, 0, 0, t1050, t1046, t1042, t1024, 0, 0, 0, 0, 0, 0, t1050, t1046, t1042, t1022; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1168, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1053, 0, 0, 0, 0, 0, 0, t1059, t1057, t1055, t1032, 0, 0, 0, 0, 0, 0, t1059, t1057, t1055, t1026; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1142, -qJDD(1), 0, t1085, 0, 0, 0, 0, 0, 0, -t1103, t1102, t1106, t1054, 0, 0, 0, 0, 0, 0, t1060, t1058, t1056, t1033, 0, 0, 0, 0, 0, 0, t1060, t1058, t1056, t1027; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1142, 0, t1084, 0, 0, 0, 0, 0, 0, t1123, -t1158, t1109, -t1078, 0, 0, 0, 0, 0, 0, -t1076, -t1073, -t1066, -t1036, 0, 0, 0, 0, 0, 0, -t1076, -t1073, -t1066, -t1028; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1168, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1053, 0, 0, 0, 0, 0, 0, t1059, t1057, t1055, t1032, 0, 0, 0, 0, 0, 0, t1059, t1057, t1055, t1026; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1129 * t1142, t1116, t1123, t1069, 0, 0, 0, 0, 0, 0, t1077, t1074, t1067, t1037, 0, 0, 0, 0, 0, 0, t1077, t1074, t1067, t1029; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1116, -t1164, -t1158, t1068, 0, 0, 0, 0, 0, 0, -t1080, -t1082, t1098, -t1062, 0, 0, 0, 0, 0, 0, -t1080, -t1082, t1098, -t1052; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1123, t1158, -t1109, t1078, 0, 0, 0, 0, 0, 0, t1076, t1073, t1066, t1036, 0, 0, 0, 0, 0, 0, t1076, t1073, t1066, t1028; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1097, t1095, t1081, t1049, 0, 0, 0, 0, 0, 0, t1097, t1095, t1081, t1041; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1096, t1092, t1083, t1048, 0, 0, 0, 0, 0, 0, t1096, t1092, t1083, t1040; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1080, t1082, -t1098, t1062, 0, 0, 0, 0, 0, 0, t1080, t1082, -t1098, t1052; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1097, t1095, t1081, t1041; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1096, t1092, t1083, t1040; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1080, t1082, -t1098, t1052;];
f_new_reg = t1;