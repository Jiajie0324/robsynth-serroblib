% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5PRPRP2
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
%   pkin=[a2,a3,a4,a5,d2,d4,theta1,theta3]';
%
% Output:
% f_new_reg [(3*6)x(6*10)]
%   inertial parameter regressor of inverse dynamics cutting forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:31
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5PRPRP2_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRP2_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRP2_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRPRP2_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRPRP2_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRPRP2_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:31:27
% EndTime: 2019-12-05 15:31:29
% DurationCPUTime: 1.83s
% Computational Cost: add. (3706->158), mult. (8577->224), div. (0->0), fcn. (5577->8), ass. (0->127)
t1159 = -2 * qJD(5);
t1132 = qJD(2) ^ 2;
t1124 = sin(pkin(8));
t1117 = t1124 ^ 2;
t1126 = cos(pkin(8));
t1118 = t1126 ^ 2;
t1150 = t1117 + t1118;
t1101 = t1150 * t1132;
t1152 = t1126 * qJD(2);
t1109 = -qJD(4) + t1152;
t1158 = t1109 ^ 2;
t1157 = 2 * qJD(3);
t1156 = qJD(2) * t1124;
t1128 = sin(qJ(4));
t1155 = qJD(2) * t1128;
t1130 = cos(qJ(4));
t1154 = qJD(2) * t1130;
t1153 = t1117 * t1132;
t1137 = -pkin(3) * t1126 - pkin(6) * t1124;
t1099 = t1137 * qJD(2);
t1151 = t1157 + t1099;
t1125 = sin(pkin(7));
t1127 = cos(pkin(7));
t1104 = t1125 * g(1) - t1127 * g(2);
t1105 = -t1127 * g(1) - t1125 * g(2);
t1129 = sin(qJ(2));
t1131 = cos(qJ(2));
t1081 = t1129 * t1104 + t1131 * t1105;
t1073 = -t1132 * pkin(2) + qJDD(2) * qJ(3) + t1081;
t1122 = -g(3) + qJDD(1);
t1063 = t1126 * t1073 + t1124 * t1122 + t1152 * t1157;
t1059 = t1099 * t1152 + t1063;
t1080 = t1131 * t1104 - t1129 * t1105;
t1072 = -qJDD(2) * pkin(2) - t1132 * qJ(3) + qJDD(3) - t1080;
t1068 = t1137 * qJDD(2) + t1072;
t1046 = t1130 * t1059 + t1128 * t1068;
t1149 = qJDD(2) * t1128;
t1148 = qJDD(2) * t1130;
t1147 = t1124 * qJDD(2);
t1146 = t1129 * qJDD(2);
t1145 = t1131 * qJDD(2);
t1115 = t1126 * qJDD(2);
t1144 = -t1115 + qJDD(4);
t1143 = t1109 * t1155;
t1142 = t1124 * t1154;
t1141 = t1130 * t1153;
t1120 = t1128 ^ 2;
t1140 = t1120 * t1153;
t1102 = -t1129 * t1132 + t1145;
t1103 = -t1131 * t1132 - t1146;
t1139 = -t1125 * t1102 + t1127 * t1103;
t1138 = t1128 * t1141;
t1136 = t1127 * t1102 + t1125 * t1103;
t1135 = -qJD(4) * t1154 - t1149;
t1121 = t1130 ^ 2;
t1114 = t1126 * t1122;
t1108 = t1124 * t1132 * t1126;
t1106 = t1124 * qJD(4) * t1155;
t1100 = t1150 * qJDD(2);
t1095 = t1126 * t1101;
t1094 = t1124 * t1101;
t1092 = (t1120 + t1121) * t1153;
t1091 = -t1140 - t1158;
t1090 = -t1138 + t1144;
t1089 = -t1138 - t1144;
t1088 = -t1109 * pkin(4) - qJ(5) * t1142;
t1086 = -t1121 * t1153 - t1158;
t1085 = -t1131 * t1095 - t1126 * t1146;
t1084 = t1131 * t1094 + t1124 * t1146;
t1083 = -t1129 * t1095 + t1126 * t1145;
t1082 = t1129 * t1094 - t1124 * t1145;
t1079 = t1131 * t1100 - t1129 * t1101;
t1078 = t1129 * t1100 + t1131 * t1101;
t1077 = t1106 + (t1143 - t1148) * t1124;
t1076 = -t1106 + (t1143 + t1148) * t1124;
t1075 = (-t1149 + (-qJD(4) - t1109) * t1154) * t1124;
t1074 = (t1149 + (qJD(4) - t1109) * t1154) * t1124;
t1070 = -t1128 * t1090 + t1130 * t1091;
t1069 = t1130 * t1090 + t1128 * t1091;
t1067 = -t1128 * t1086 + t1130 * t1089;
t1066 = t1130 * t1086 + t1128 * t1089;
t1065 = t1130 * t1068;
t1062 = -0.2e1 * qJD(3) * t1156 - t1124 * t1073 + t1114;
t1061 = -t1129 * t1080 + t1131 * t1081;
t1060 = t1131 * t1080 + t1129 * t1081;
t1058 = -t1114 + (t1151 * qJD(2) + t1073) * t1124;
t1056 = t1130 * t1075 - t1128 * t1077;
t1055 = t1128 * t1075 + t1130 * t1077;
t1054 = t1126 * t1070 + t1124 * t1074;
t1053 = t1124 * t1070 - t1126 * t1074;
t1052 = t1126 * t1067 + t1124 * t1076;
t1051 = t1124 * t1067 - t1126 * t1076;
t1050 = t1126 * t1056 - t1124 * t1092;
t1049 = t1124 * t1056 + t1126 * t1092;
t1048 = -t1124 * t1062 + t1126 * t1063;
t1047 = t1126 * t1062 + t1124 * t1063;
t1045 = -t1128 * t1059 + t1065;
t1044 = -qJ(5) * t1140 + qJDD(5) - t1114 + (-t1135 * pkin(4) + t1073 + (t1088 * t1130 + t1151) * qJD(2)) * t1124;
t1043 = t1131 * t1054 + t1129 * t1069;
t1042 = t1129 * t1054 - t1131 * t1069;
t1041 = t1131 * t1052 + t1129 * t1066;
t1040 = t1129 * t1052 - t1131 * t1066;
t1039 = t1131 * t1048 + t1129 * t1072;
t1038 = t1129 * t1048 - t1131 * t1072;
t1037 = t1131 * t1050 + t1129 * t1055;
t1036 = t1129 * t1050 - t1131 * t1055;
t1035 = -pkin(4) * t1140 + t1109 * t1088 + (t1135 * qJ(5) + t1155 * t1159) * t1124 + t1046;
t1034 = t1065 - (t1130 * t1147 - t1106) * qJ(5) + t1144 * pkin(4) + t1142 * t1159 + (t1109 * qJ(5) * t1156 - pkin(4) * t1141 - t1059) * t1128;
t1033 = -t1128 * t1045 + t1130 * t1046;
t1032 = t1130 * t1045 + t1128 * t1046;
t1031 = -t1125 * t1042 + t1127 * t1043;
t1030 = t1127 * t1042 + t1125 * t1043;
t1029 = -t1125 * t1040 + t1127 * t1041;
t1028 = t1127 * t1040 + t1125 * t1041;
t1027 = t1126 * t1033 + t1124 * t1058;
t1026 = t1124 * t1033 - t1126 * t1058;
t1025 = -t1125 * t1036 + t1127 * t1037;
t1024 = t1127 * t1036 + t1125 * t1037;
t1023 = -t1128 * t1034 + t1130 * t1035;
t1022 = t1130 * t1034 + t1128 * t1035;
t1021 = t1126 * t1023 + t1124 * t1044;
t1020 = t1124 * t1023 - t1126 * t1044;
t1019 = t1131 * t1027 + t1129 * t1032;
t1018 = t1129 * t1027 - t1131 * t1032;
t1017 = t1131 * t1021 + t1129 * t1022;
t1016 = t1129 * t1021 - t1131 * t1022;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1125 * t1104 + t1127 * t1105, 0, 0, 0, 0, 0, 0, t1139, -t1136, 0, -t1125 * t1060 + t1127 * t1061, 0, 0, 0, 0, 0, 0, -t1125 * t1083 + t1127 * t1085, -t1125 * t1082 + t1127 * t1084, -t1125 * t1078 + t1127 * t1079, -t1125 * t1038 + t1127 * t1039, 0, 0, 0, 0, 0, 0, t1031, t1029, t1025, -t1125 * t1018 + t1127 * t1019, 0, 0, 0, 0, 0, 0, t1031, t1029, t1025, -t1125 * t1016 + t1127 * t1017; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1127 * t1104 + t1125 * t1105, 0, 0, 0, 0, 0, 0, t1136, t1139, 0, t1127 * t1060 + t1125 * t1061, 0, 0, 0, 0, 0, 0, t1127 * t1083 + t1125 * t1085, t1127 * t1082 + t1125 * t1084, t1127 * t1078 + t1125 * t1079, t1127 * t1038 + t1125 * t1039, 0, 0, 0, 0, 0, 0, t1030, t1028, t1024, t1127 * t1018 + t1125 * t1019, 0, 0, 0, 0, 0, 0, t1030, t1028, t1024, t1127 * t1016 + t1125 * t1017; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1122, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1122, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1047, 0, 0, 0, 0, 0, 0, t1053, t1051, t1049, t1026, 0, 0, 0, 0, 0, 0, t1053, t1051, t1049, t1020; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1105, 0, 0, 0, 0, 0, 0, t1103, -t1102, 0, t1061, 0, 0, 0, 0, 0, 0, t1085, t1084, t1079, t1039, 0, 0, 0, 0, 0, 0, t1043, t1041, t1037, t1019, 0, 0, 0, 0, 0, 0, t1043, t1041, t1037, t1017; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1104, 0, 0, 0, 0, 0, 0, t1102, t1103, 0, t1060, 0, 0, 0, 0, 0, 0, t1083, t1082, t1078, t1038, 0, 0, 0, 0, 0, 0, t1042, t1040, t1036, t1018, 0, 0, 0, 0, 0, 0, t1042, t1040, t1036, t1016; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1122, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1122, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1047, 0, 0, 0, 0, 0, 0, t1053, t1051, t1049, t1026, 0, 0, 0, 0, 0, 0, t1053, t1051, t1049, t1020; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1132, -qJDD(2), 0, t1081, 0, 0, 0, 0, 0, 0, -t1095, t1094, t1100, t1048, 0, 0, 0, 0, 0, 0, t1054, t1052, t1050, t1027, 0, 0, 0, 0, 0, 0, t1054, t1052, t1050, t1021; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1132, 0, t1080, 0, 0, 0, 0, 0, 0, t1115, -t1147, t1101, -t1072, 0, 0, 0, 0, 0, 0, -t1069, -t1066, -t1055, -t1032, 0, 0, 0, 0, 0, 0, -t1069, -t1066, -t1055, -t1022; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1122, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1047, 0, 0, 0, 0, 0, 0, t1053, t1051, t1049, t1026, 0, 0, 0, 0, 0, 0, t1053, t1051, t1049, t1020; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1118 * t1132, t1108, t1115, t1063, 0, 0, 0, 0, 0, 0, t1070, t1067, t1056, t1033, 0, 0, 0, 0, 0, 0, t1070, t1067, t1056, t1023; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1108, -t1153, -t1147, t1062, 0, 0, 0, 0, 0, 0, -t1074, -t1076, t1092, -t1058, 0, 0, 0, 0, 0, 0, -t1074, -t1076, t1092, -t1044; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1115, t1147, -t1101, t1072, 0, 0, 0, 0, 0, 0, t1069, t1066, t1055, t1032, 0, 0, 0, 0, 0, 0, t1069, t1066, t1055, t1022; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1091, t1089, t1075, t1046, 0, 0, 0, 0, 0, 0, t1091, t1089, t1075, t1035; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1090, t1086, t1077, t1045, 0, 0, 0, 0, 0, 0, t1090, t1086, t1077, t1034; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1074, t1076, -t1092, t1058, 0, 0, 0, 0, 0, 0, t1074, t1076, -t1092, t1044; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1091, t1089, t1075, t1035; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1090, t1086, t1077, t1034; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1074, t1076, -t1092, t1044;];
f_new_reg = t1;
