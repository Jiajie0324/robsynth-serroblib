% Calculate inertial parameters regressor of inverse dynamics cutting forces vector with Newton-Euler for
% S5RPRRP5
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
% Datum: 2019-12-31 18:41
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function f_new_reg = S5RPRRP5_invdynf_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP5_invdynf_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP5_invdynf_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRP5_invdynf_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP5_invdynf_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP5_invdynf_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_f_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:41:17
% EndTime: 2019-12-31 18:41:19
% DurationCPUTime: 1.87s
% Computational Cost: add. (4348->152), mult. (6675->182), div. (0->0), fcn. (3817->8), ass. (0->104)
t1128 = qJD(1) + qJD(3);
t1126 = t1128 ^ 2;
t1136 = sin(qJ(4));
t1139 = cos(qJ(4));
t1115 = t1139 * t1126 * t1136;
t1107 = qJDD(4) - t1115;
t1130 = t1136 ^ 2;
t1142 = qJD(4) ^ 2;
t1112 = t1130 * t1126 + t1142;
t1090 = t1139 * t1107 - t1136 * t1112;
t1127 = qJDD(1) + qJDD(3);
t1156 = t1136 * t1127;
t1157 = t1128 * t1139;
t1162 = 2 * qJD(4);
t1095 = t1157 * t1162 + t1156;
t1137 = sin(qJ(3));
t1140 = cos(qJ(3));
t1069 = t1137 * t1090 + t1140 * t1095;
t1072 = t1140 * t1090 - t1137 * t1095;
t1134 = sin(pkin(8));
t1135 = cos(pkin(8));
t1052 = t1135 * t1069 + t1134 * t1072;
t1056 = t1134 * t1069 - t1135 * t1072;
t1138 = sin(qJ(1));
t1141 = cos(qJ(1));
t1168 = t1141 * t1052 - t1138 * t1056;
t1167 = t1138 * t1052 + t1141 * t1056;
t1102 = t1137 * t1126 - t1140 * t1127;
t1147 = -t1140 * t1126 - t1137 * t1127;
t1079 = t1135 * t1102 - t1134 * t1147;
t1161 = t1134 * t1102 + t1135 * t1147;
t1166 = t1138 * t1079 + t1141 * t1161;
t1165 = t1141 * t1079 - t1138 * t1161;
t1158 = t1128 * t1136;
t1154 = t1139 * t1127;
t1116 = t1138 * g(1) - t1141 * g(2);
t1145 = qJDD(1) * pkin(1) + t1116;
t1117 = -t1141 * g(1) - t1138 * g(2);
t1143 = qJD(1) ^ 2;
t1146 = -t1143 * pkin(1) + t1117;
t1085 = t1134 * t1145 + t1135 * t1146;
t1083 = -t1143 * pkin(2) + t1085;
t1084 = -t1134 * t1146 + t1135 * t1145;
t1144 = qJDD(1) * pkin(2) + t1084;
t1065 = t1140 * t1083 + t1137 * t1144;
t1061 = -t1126 * pkin(3) + t1127 * pkin(7) + t1065;
t1132 = -g(3) + qJDD(2);
t1058 = t1139 * t1061 + t1136 * t1132;
t1131 = t1139 ^ 2;
t1152 = t1130 + t1131;
t1151 = qJD(4) * t1158;
t1064 = -t1137 * t1083 + t1140 * t1144;
t1108 = -t1134 * qJDD(1) - t1135 * t1143;
t1109 = t1135 * qJDD(1) - t1134 * t1143;
t1149 = t1141 * t1108 - t1138 * t1109;
t1087 = t1136 * t1107 + t1139 * t1112;
t1148 = t1138 * t1108 + t1141 * t1109;
t1060 = -t1127 * pkin(3) - t1126 * pkin(7) - t1064;
t1122 = t1139 * t1132;
t1113 = -t1131 * t1126 - t1142;
t1111 = -t1138 * qJDD(1) - t1141 * t1143;
t1110 = t1141 * qJDD(1) - t1138 * t1143;
t1106 = qJDD(4) + t1115;
t1104 = t1152 * t1126;
t1099 = t1152 * t1127;
t1096 = -0.2e1 * t1151 + t1154;
t1094 = (-pkin(4) * t1139 - qJ(5) * t1136) * t1128;
t1089 = -t1136 * t1106 + t1139 * t1113;
t1086 = t1139 * t1106 + t1136 * t1113;
t1082 = t1140 * t1099 - t1137 * t1104;
t1081 = t1137 * t1099 + t1140 * t1104;
t1071 = t1140 * t1089 - t1137 * t1096;
t1068 = t1137 * t1089 + t1140 * t1096;
t1067 = -t1134 * t1084 + t1135 * t1085;
t1066 = t1135 * t1084 + t1134 * t1085;
t1063 = -t1134 * t1081 + t1135 * t1082;
t1062 = t1135 * t1081 + t1134 * t1082;
t1057 = -t1136 * t1061 + t1122;
t1054 = -t1134 * t1068 + t1135 * t1071;
t1051 = t1135 * t1068 + t1134 * t1071;
t1050 = qJDD(5) - t1122 - t1142 * qJ(5) - qJDD(4) * pkin(4) + (t1094 * t1128 + t1061) * t1136;
t1049 = -t1142 * pkin(4) + qJDD(4) * qJ(5) + (qJD(5) * t1162) + t1094 * t1157 + t1058;
t1048 = -(-t1151 + t1154) * pkin(4) + (pkin(4) * qJD(4) - (2 * qJD(5))) * t1158 + t1060 - t1095 * qJ(5);
t1047 = -t1137 * t1064 + t1140 * t1065;
t1046 = t1140 * t1064 + t1137 * t1065;
t1045 = -t1138 * t1062 + t1141 * t1063;
t1044 = t1141 * t1062 + t1138 * t1063;
t1043 = -t1136 * t1057 + t1139 * t1058;
t1042 = t1139 * t1057 + t1136 * t1058;
t1041 = -t1138 * t1051 + t1141 * t1054;
t1040 = t1141 * t1051 + t1138 * t1054;
t1039 = t1139 * t1049 + t1136 * t1050;
t1038 = t1136 * t1049 - t1139 * t1050;
t1037 = t1140 * t1043 + t1137 * t1060;
t1036 = t1137 * t1043 - t1140 * t1060;
t1035 = -t1134 * t1046 + t1135 * t1047;
t1034 = t1135 * t1046 + t1134 * t1047;
t1033 = t1140 * t1039 + t1137 * t1048;
t1032 = t1137 * t1039 - t1140 * t1048;
t1031 = -t1134 * t1036 + t1135 * t1037;
t1030 = t1135 * t1036 + t1134 * t1037;
t1029 = -t1134 * t1032 + t1135 * t1033;
t1028 = t1135 * t1032 + t1134 * t1033;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, t1111, -t1110, 0, -t1138 * t1116 + t1141 * t1117, 0, 0, 0, 0, 0, 0, t1149, -t1148, 0, -t1138 * t1066 + t1141 * t1067, 0, 0, 0, 0, 0, 0, t1166, t1165, 0, -t1138 * t1034 + t1141 * t1035, 0, 0, 0, 0, 0, 0, t1041, t1167, t1045, -t1138 * t1030 + t1141 * t1031, 0, 0, 0, 0, 0, 0, t1041, t1045, -t1167, -t1138 * t1028 + t1141 * t1029; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1110, t1111, 0, t1141 * t1116 + t1138 * t1117, 0, 0, 0, 0, 0, 0, t1148, t1149, 0, t1141 * t1066 + t1138 * t1067, 0, 0, 0, 0, 0, 0, -t1165, t1166, 0, t1141 * t1034 + t1138 * t1035, 0, 0, 0, 0, 0, 0, t1040, -t1168, t1044, t1141 * t1030 + t1138 * t1031, 0, 0, 0, 0, 0, 0, t1040, t1044, t1168, t1141 * t1028 + t1138 * t1029; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1132, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1132, 0, 0, 0, 0, 0, 0, t1086, -t1087, 0, t1042, 0, 0, 0, 0, 0, 0, t1086, 0, t1087, t1038; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1143, -qJDD(1), 0, t1117, 0, 0, 0, 0, 0, 0, t1108, -t1109, 0, t1067, 0, 0, 0, 0, 0, 0, t1161, t1079, 0, t1035, 0, 0, 0, 0, 0, 0, t1054, t1056, t1063, t1031, 0, 0, 0, 0, 0, 0, t1054, t1063, -t1056, t1029; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1143, 0, t1116, 0, 0, 0, 0, 0, 0, t1109, t1108, 0, t1066, 0, 0, 0, 0, 0, 0, -t1079, t1161, 0, t1034, 0, 0, 0, 0, 0, 0, t1051, -t1052, t1062, t1030, 0, 0, 0, 0, 0, 0, t1051, t1062, t1052, t1028; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t1132, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1132, 0, 0, 0, 0, 0, 0, t1086, -t1087, 0, t1042, 0, 0, 0, 0, 0, 0, t1086, 0, t1087, t1038; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1143, -qJDD(1), 0, t1085, 0, 0, 0, 0, 0, 0, t1147, t1102, 0, t1047, 0, 0, 0, 0, 0, 0, t1071, -t1072, t1082, t1037, 0, 0, 0, 0, 0, 0, t1071, t1082, t1072, t1033; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1143, 0, t1084, 0, 0, 0, 0, 0, 0, -t1102, t1147, 0, t1046, 0, 0, 0, 0, 0, 0, t1068, -t1069, t1081, t1036, 0, 0, 0, 0, 0, 0, t1068, t1081, t1069, t1032; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1132, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1132, 0, 0, 0, 0, 0, 0, t1086, -t1087, 0, t1042, 0, 0, 0, 0, 0, 0, t1086, 0, t1087, t1038; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1126, -t1127, 0, t1065, 0, 0, 0, 0, 0, 0, t1089, -t1090, t1099, t1043, 0, 0, 0, 0, 0, 0, t1089, t1099, t1090, t1039; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1127, -t1126, 0, t1064, 0, 0, 0, 0, 0, 0, t1096, -t1095, t1104, -t1060, 0, 0, 0, 0, 0, 0, t1096, t1104, t1095, -t1048; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1132, 0, 0, 0, 0, 0, 0, t1086, -t1087, 0, t1042, 0, 0, 0, 0, 0, 0, t1086, 0, t1087, t1038; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1113, -t1107, t1154, t1058, 0, 0, 0, 0, 0, 0, t1113, t1154, t1107, t1049; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1106, -t1112, -t1156, t1057, 0, 0, 0, 0, 0, 0, t1106, -t1156, t1112, -t1050; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1096, t1095, -t1104, t1060, 0, 0, 0, 0, 0, 0, -t1096, -t1104, -t1095, t1048; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1113, t1154, t1107, t1049; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1096, -t1104, -t1095, t1048; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1106, t1156, -t1112, t1050;];
f_new_reg = t1;