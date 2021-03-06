% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RPRRP4
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
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2020-01-03 11:51
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RPRRP4_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP4_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP4_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRP4_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP4_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP4_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2020-01-03 11:50:46
% EndTime: 2020-01-03 11:51:01
% DurationCPUTime: 15.68s
% Computational Cost: add. (50491->610), mult. (124700->758), div. (0->0), fcn. (85705->8), ass. (0->428)
t1051 = cos(pkin(8));
t1115 = t1051 * qJDD(1);
t1033 = -qJDD(3) + t1115;
t1022 = -qJDD(4) + t1033;
t1052 = sin(qJ(4));
t1053 = sin(qJ(3));
t1055 = cos(qJ(4));
t1056 = cos(qJ(3));
t1050 = sin(pkin(8));
t1128 = qJD(1) * t1050;
t988 = (-t1052 * t1056 - t1053 * t1055) * t1128;
t1127 = qJD(1) * t1056;
t1104 = t1050 * t1127;
t1121 = t1050 * t1053;
t1105 = qJD(1) * t1121;
t990 = -t1052 * t1105 + t1055 * t1104;
t1157 = t990 * t988;
t1185 = t1022 - t1157;
t1188 = t1185 * pkin(4);
t1144 = t1052 * t1185;
t1135 = t1055 * t1185;
t1034 = t1051 * qJD(1) - qJD(3);
t1026 = -qJD(4) + t1034;
t1129 = t988 * t1026;
t1046 = t1050 ^ 2;
t1124 = t1034 * qJD(1);
t1103 = t1050 * t1124;
t1058 = qJD(1) ^ 2;
t1118 = t1056 * t1058;
t1054 = sin(qJ(1));
t1057 = cos(qJ(1));
t1023 = t1054 * g(2) - t1057 * g(3);
t1004 = -t1058 * pkin(1) + qJDD(1) * qJ(2) - t1023;
t1165 = pkin(2) * t1051;
t1088 = -pkin(6) * t1050 - t1165;
t1009 = t1088 * qJD(1);
t1182 = 2 * qJD(2);
t1085 = t1004 + (t1182 + t1009) * qJD(1);
t1164 = t1050 * g(1);
t937 = t1051 * t1085 - t1164;
t1024 = t1057 * g(2) + t1054 * g(3);
t1049 = qJDD(1) * pkin(1);
t997 = -t1058 * qJ(2) + qJDD(2) + t1024 - t1049;
t975 = qJDD(1) * t1088 + t997;
t961 = t1056 * t975;
t1038 = t1050 * qJDD(1);
t1030 = t1056 * t1038;
t996 = -qJD(3) * t1105 + t1030;
t1062 = -t1033 * pkin(3) - t996 * pkin(7) + t961 + (-pkin(3) * t1046 * t1118 + pkin(7) * t1103 - t937) * t1053;
t1123 = t1046 * t1058;
t1183 = t1053 ^ 2;
t1032 = t1183 * t1123;
t1116 = qJDD(1) * t1053;
t1079 = qJD(3) * t1127 + t1116;
t1067 = t1079 * t1050;
t904 = t1053 * t975 + t1056 * t937;
t993 = -t1034 * pkin(3) - pkin(7) * t1104;
t863 = -pkin(3) * t1032 - pkin(7) * t1067 + t1034 * t993 + t904;
t817 = t1052 * t863 - t1055 * t1062;
t1066 = qJ(5) * t1129 + 0.2e1 * qJD(5) * t990 + t1188 + t817;
t924 = t988 * qJD(4) - t1052 * t1067 + t1055 * t996;
t784 = t924 * qJ(5) + t1066;
t1063 = -t784 - t1188;
t1021 = t1026 ^ 2;
t986 = t988 ^ 2;
t931 = -t1021 - t986;
t868 = t1052 * t931 - t1135;
t867 = pkin(3) * t868;
t1187 = t1063 + t867;
t1186 = t924 - t1129;
t1005 = t1053 * t1103;
t965 = t1005 + t996;
t955 = t1056 * t965;
t1097 = t1052 * t996 + t1055 * t1067;
t884 = (qJD(4) + t1026) * t990 + t1097;
t923 = -t990 * qJD(4) - t1097;
t959 = -t1026 * pkin(4) - t990 * qJ(5);
t1184 = -t923 * pkin(4) - t986 * qJ(5) + t990 * t959 + qJDD(5);
t987 = t990 ^ 2;
t1031 = t1034 ^ 2;
t887 = t1129 + t924;
t846 = -t1052 * t884 - t1055 * t887;
t848 = t1052 * t887 - t1055 * t884;
t794 = -t1053 * t846 + t1056 * t848;
t925 = -t986 - t987;
t780 = t1050 * t794 - t1051 * t925;
t1181 = pkin(1) * t780;
t869 = t1055 * t931 + t1144;
t830 = -t1053 * t868 + t1056 * t869;
t883 = (qJD(4) - t1026) * t990 + t1097;
t800 = t1050 * t830 - t1051 * t883;
t1180 = pkin(1) * t800;
t932 = t1022 + t1157;
t1145 = t1052 * t932;
t953 = -t987 - t1021;
t878 = t1055 * t953 + t1145;
t1136 = t1055 * t932;
t879 = -t1052 * t953 + t1136;
t842 = -t1053 * t878 + t1056 * t879;
t806 = t1050 * t842 - t1051 * t1186;
t1179 = pkin(1) * t806;
t829 = t1053 * t869 + t1056 * t868;
t1178 = pkin(2) * t829;
t840 = t1053 * t879 + t1056 * t878;
t1177 = pkin(2) * t840;
t818 = t1052 * t1062 + t1055 * t863;
t761 = t1052 * t818 - t1055 * t817;
t1176 = pkin(3) * t761;
t781 = t1050 * t925 + t1051 * t794;
t792 = t1053 * t848 + t1056 * t846;
t1175 = pkin(5) * (-t1054 * t792 - t1057 * t781);
t801 = t1050 * t883 + t1051 * t830;
t1174 = pkin(5) * (-t1054 * t829 - t1057 * t801);
t807 = t1050 * t1186 + t1051 * t842;
t1173 = pkin(5) * (-t1054 * t840 - t1057 * t807);
t1172 = pkin(6) * t792;
t1171 = pkin(6) * t829;
t1170 = pkin(6) * t840;
t1169 = pkin(7) * t846;
t1168 = pkin(7) * t868;
t1167 = pkin(7) * t878;
t1166 = pkin(2) * t1050;
t1163 = t1051 * g(1);
t1162 = qJ(2) * t780;
t1161 = qJ(2) * t800;
t1160 = qJ(2) * t806;
t1156 = -pkin(1) * t792 + qJ(2) * t781;
t1155 = -pkin(2) * t925 + pkin(6) * t794;
t1154 = -pkin(1) * t829 + qJ(2) * t801;
t1153 = -pkin(1) * t840 + qJ(2) * t807;
t1152 = -pkin(2) * t883 + pkin(6) * t830;
t1151 = -pkin(2) * t1186 + pkin(6) * t842;
t1150 = qJD(5) * t988;
t1148 = t1026 * t990;
t1147 = t1052 * t784;
t1090 = pkin(3) * t1067 - pkin(7) * t1032 + t1163;
t1096 = -t1056 * t993 - t1009;
t875 = (t1004 + (t1182 - t1096) * qJD(1)) * t1050 + t1090;
t1146 = t1052 * t875;
t1143 = t1053 * t761;
t936 = t1050 * t1085 + t1163;
t1142 = t1053 * t936;
t1101 = t1053 * t1118;
t1019 = t1046 * t1101;
t994 = -t1019 + t1033;
t1141 = t1053 * t994;
t995 = -t1019 - t1033;
t1140 = t1053 * t995;
t1139 = t1054 * t997;
t1138 = t1055 * t784;
t1137 = t1055 * t875;
t1134 = t1056 * t761;
t1133 = t1056 * t936;
t1132 = t1056 * t994;
t1131 = t1056 * t995;
t1130 = t1057 * t997;
t1126 = t1026 * t1052;
t1125 = t1026 * t1055;
t1122 = t1050 * t1051;
t1120 = t1050 * t1054;
t1119 = t1050 * t1057;
t1114 = t1054 * qJDD(1);
t1113 = t1057 * qJDD(1);
t877 = pkin(3) * t878;
t1112 = t877 - t818;
t1111 = t1050 * t1157;
t1110 = t1051 * t1157;
t844 = pkin(3) * t846;
t757 = -pkin(2) * t792 - t844;
t1087 = t986 * pkin(4) - t923 * qJ(5) - t1026 * t959 - t818;
t978 = 0.2e1 * t1150;
t787 = t978 - t1087;
t738 = t1052 * t787 - t1138;
t783 = pkin(4) * t784;
t1109 = pkin(3) * t738 - t783;
t1108 = -pkin(3) * t925 + pkin(7) * t848;
t1107 = -pkin(3) * t883 + pkin(7) * t869;
t1106 = -pkin(3) * t1186 + pkin(7) * t879;
t1048 = t1056 ^ 2;
t1102 = t1048 * t1123;
t1100 = t1050 * t1115;
t1099 = -t997 + t1049;
t1083 = t1057 * t1058 + t1114;
t1098 = -pkin(5) * t1083 + t1057 * g(1);
t1094 = qJD(1) * t1182 + t1004;
t970 = t1094 * t1050 + t1163;
t971 = t1094 * t1051 - t1164;
t917 = t1050 * t970 + t1051 * t971;
t762 = t1052 * t817 + t1055 * t818;
t903 = t1053 * t937 - t961;
t854 = t1053 * t903 + t1056 * t904;
t1095 = qJD(1) * (qJD(3) - t1034);
t1093 = -t1054 * t1023 - t1057 * t1024;
t1045 = t1050 * t1046;
t1092 = t1045 * t1101;
t1091 = -pkin(2) * t936 + pkin(6) * t854;
t1089 = t817 - t867;
t915 = t1050 * t971 - t1051 * t970;
t853 = t1053 * t904 - t1056 * t903;
t1086 = t1051 * t1019;
t1084 = t1057 * t1023 - t1054 * t1024;
t1018 = -t1054 * t1058 + t1113;
t1082 = pkin(4) * t953 + t1087;
t1080 = t877 + t1082;
t1060 = t1051 ^ 2;
t1008 = (t1046 + t1060) * t1051 * t1058;
t1078 = -t1054 * t1008 + t1051 * t1113;
t1077 = t1057 * t1008 + t1051 * t1114;
t981 = -t1102 - t1031;
t939 = -t1053 * t981 + t1132;
t966 = t1095 * t1121 - t1030;
t1076 = pkin(2) * t966 + pkin(6) * t939 + t1142;
t1000 = -t1032 - t1031;
t952 = t1056 * t1000 - t1140;
t1006 = t1056 * t1103;
t964 = t1006 - t1067;
t1075 = pkin(2) * t964 + pkin(6) * t952 - t1133;
t758 = -pkin(4) * t925 - qJ(5) * t884 + t787;
t766 = (t887 + t924) * qJ(5) + t1066;
t729 = t1052 * t766 + t1055 * t758 + t1108;
t731 = -t1052 * t758 + t1055 * t766 - t1169;
t1074 = t1053 * t731 + t1056 * t729 + t1155;
t745 = t1108 + t762;
t747 = -t761 - t1169;
t1073 = t1053 * t747 + t1056 * t745 + t1155;
t795 = -pkin(4) * t883 + qJ(5) * t931 - 0.2e1 * qJD(2) * t1128 + (t1096 * qJD(1) - t1004) * t1050 - t1090 - t1184;
t754 = qJ(5) * t1144 + t1055 * t795 + t1107;
t764 = qJ(5) * t1135 - t1052 * t795 - t1168;
t1072 = t1053 * t764 + t1056 * t754 + t1152;
t824 = t875 + t1184;
t815 = -qJ(5) * t953 + t824;
t857 = -pkin(4) * t1186 + qJ(5) * t932;
t755 = t1052 * t815 + t1055 * t857 + t1106;
t767 = -t1052 * t857 + t1055 * t815 - t1167;
t1071 = t1053 * t767 + t1056 * t755 + t1151;
t803 = t1107 - t1137;
t832 = t1146 - t1168;
t1070 = t1053 * t832 + t1056 * t803 + t1152;
t810 = t1106 + t1146;
t841 = t1137 - t1167;
t1069 = t1053 * t841 + t1056 * t810 + t1151;
t1002 = t1032 + t1102;
t962 = t1005 - t996;
t963 = t1006 + t1067;
t913 = -t1053 * t962 - t1056 * t963;
t1068 = pkin(2) * t1002 + pkin(6) * t913 + t854;
t739 = t1055 * t787 + t1147;
t752 = -pkin(4) * t824 + qJ(5) * t787;
t714 = -pkin(3) * t824 + pkin(7) * t739 + qJ(5) * t1147 + t1055 * t752;
t717 = -pkin(7) * t738 + qJ(5) * t1138 - t1052 * t752;
t723 = -t1053 * t738 + t1056 * t739;
t1065 = -pkin(2) * t824 + pkin(6) * t723 + t1053 * t717 + t1056 * t714;
t736 = t1056 * t762 - t1143;
t753 = -pkin(3) * t875 + pkin(7) * t762;
t1064 = -pkin(2) * t875 + pkin(6) * t736 - pkin(7) * t1143 + t1056 * t753;
t1040 = t1060 * t1058;
t1039 = t1060 * qJDD(1);
t1037 = t1046 * qJDD(1);
t1029 = t1058 * t1122;
t1025 = 0.2e1 * t1100;
t1015 = -t1040 + t1123;
t1014 = t1040 + t1123;
t1013 = t1051 * t1033;
t1012 = t1039 - t1037;
t1011 = t1039 + t1037;
t1007 = (t1050 * t1060 + t1045) * t1058;
t1003 = -t1032 + t1102;
t1001 = t1031 - t1102;
t999 = t1032 - t1031;
t998 = pkin(5) * t1018 + t1054 * g(1);
t985 = t1018 * t1122;
t984 = t1083 * t1122;
t979 = -0.2e1 * t1150;
t977 = -t1057 * t1007 - t1050 * t1114;
t976 = t1054 * t1007 - t1050 * t1113;
t974 = (-t1048 - t1183) * t1103;
t968 = -t987 + t1021;
t967 = t986 - t1021;
t957 = -t1048 * t1103 + t1053 * t996;
t956 = (-t1056 * t1079 - t1183 * t1124) * t1050;
t954 = (t1056 * t1095 + t1116) * t1121;
t951 = t1056 * t999 + t1141;
t950 = -t1053 * t1001 + t1131;
t949 = t1053 * t1000 + t1131;
t948 = t1053 * t999 - t1132;
t947 = t1056 * t1001 + t1140;
t943 = -qJ(2) * t1008 + t1099 * t1051;
t942 = qJ(2) * t1007 - t1099 * t1050;
t940 = t987 - t986;
t938 = t1056 * t981 + t1141;
t930 = t1051 * t955 + t1092;
t929 = t1051 * t954 - t1092;
t927 = t1050 * t955 - t1086;
t926 = t1050 * t954 + t1086;
t922 = (-t1052 * t990 - t1055 * t988) * t1026;
t921 = (-t1052 * t988 + t1055 * t990) * t1026;
t914 = -t1053 * t965 + t1056 * t964;
t912 = t1053 * t964 + t955;
t911 = -t1053 * t963 + t1056 * t962;
t910 = -t1050 * t964 + t1051 * t952;
t909 = -t1050 * t963 + t1051 * t951;
t908 = -t1050 * t962 + t1051 * t950;
t907 = t1050 * t952 + t1051 * t964;
t906 = t1050 * t951 + t1051 * t963;
t905 = t1050 * t950 + t1051 * t962;
t901 = -t1050 * t966 + t1051 * t939;
t900 = t1050 * t939 + t1051 * t966;
t899 = -pkin(1) * t997 + qJ(2) * t917;
t898 = t1055 * t967 + t1145;
t897 = -t1052 * t968 - t1135;
t896 = t1052 * t967 - t1136;
t895 = t1055 * t968 - t1144;
t894 = pkin(1) * t1014 + qJ(2) * t1011 + t917;
t893 = -pkin(6) * t949 + t1142;
t892 = t1050 * t1003 + t1051 * t914;
t891 = -t1050 * t1002 + t1051 * t913;
t890 = -t1051 * t1003 + t1050 * t914;
t889 = t1051 * t1002 + t1050 * t913;
t880 = pkin(4) * t887;
t874 = -pkin(6) * t938 + t1133;
t873 = t1055 * t924 + t990 * t1126;
t872 = t1052 * t924 - t990 * t1125;
t871 = -t1052 * t923 + t988 * t1125;
t870 = t1055 * t923 + t988 * t1126;
t865 = -pkin(2) * t949 + t903;
t864 = -pkin(2) * t938 + t904;
t862 = -t1053 * t921 + t1056 * t922;
t861 = t1053 * t922 + t1056 * t921;
t856 = -t1050 * t1022 + t1051 * t862;
t855 = t1051 * t1022 + t1050 * t862;
t852 = -t1053 * t896 + t1056 * t898;
t851 = -t1053 * t895 + t1056 * t897;
t850 = t1053 * t898 + t1056 * t896;
t849 = t1053 * t897 + t1056 * t895;
t847 = -t1052 * t1186 - t1055 * t883;
t845 = -t1052 * t883 + t1055 * t1186;
t837 = -pkin(1) * t907 - t1075;
t836 = -t1053 * t872 + t1056 * t873;
t835 = -t1053 * t870 + t1056 * t871;
t834 = t1053 * t873 + t1056 * t872;
t833 = t1053 * t871 + t1056 * t870;
t831 = -pkin(1) * t900 - t1076;
t828 = t1050 * t936 + t1051 * t854;
t827 = t1050 * t854 - t1051 * t936;
t823 = -pkin(6) * t911 - t853;
t822 = t1051 * t836 - t1111;
t821 = t1051 * t835 + t1111;
t820 = t1050 * t836 + t1110;
t819 = t1050 * t835 - t1110;
t814 = -t1050 * t884 + t1051 * t852;
t813 = t1050 * t887 + t1051 * t851;
t812 = t1050 * t852 + t1051 * t884;
t811 = t1050 * t851 - t1051 * t887;
t809 = -t1054 * t861 - t1057 * t856;
t808 = t1054 * t856 - t1057 * t861;
t804 = -qJ(2) * t907 - t1050 * t865 + t1051 * t893;
t802 = -qJ(2) * t900 - t1050 * t864 + t1051 * t874;
t798 = -pkin(1) * t949 + qJ(2) * t910 + t1050 * t893 + t1051 * t865;
t797 = -pkin(1) * t889 - t1068;
t796 = -pkin(1) * t938 + qJ(2) * t901 + t1050 * t874 + t1051 * t864;
t793 = -t1053 * t845 + t1056 * t847;
t791 = t1053 * t847 + t1056 * t845;
t788 = -qJ(2) * t889 + t1051 * t823 + t911 * t1166;
t786 = t1050 * t940 + t1051 * t793;
t785 = t1050 * t793 - t1051 * t940;
t782 = -pkin(1) * t827 - t1091;
t778 = -t1054 * t834 - t1057 * t822;
t777 = -t1054 * t833 - t1057 * t821;
t776 = t1054 * t822 - t1057 * t834;
t775 = t1054 * t821 - t1057 * t833;
t774 = -t1054 * t850 - t1057 * t814;
t773 = -t1054 * t849 - t1057 * t813;
t772 = t1054 * t814 - t1057 * t850;
t771 = t1054 * t813 - t1057 * t849;
t770 = qJ(2) * t891 + t1050 * t823 + (-pkin(1) - t1165) * t911;
t768 = pkin(5) * (t1054 * t807 - t1057 * t840);
t763 = pkin(5) * (t1054 * t801 - t1057 * t829);
t760 = -t1112 - t1177;
t759 = -qJ(2) * t827 + (-pkin(6) * t1051 + t1166) * t853;
t756 = t1089 - t1178;
t751 = t757 + t880;
t750 = -t1053 * t810 + t1056 * t841 - t1170;
t749 = qJ(2) * t828 + (-pkin(1) + t1088) * t853;
t748 = -t1053 * t803 + t1056 * t832 - t1171;
t746 = -t1080 + t978 - t1177;
t744 = -t1178 - t1187;
t743 = -t1054 * t791 - t1057 * t786;
t742 = t1054 * t786 - t1057 * t791;
t740 = pkin(5) * (t1054 * t781 - t1057 * t792);
t737 = -t1069 - t1179;
t735 = t1053 * t762 + t1134;
t734 = -t1070 - t1180;
t733 = t1050 * t875 + t1051 * t736;
t732 = t1050 * t736 - t1051 * t875;
t730 = -t1053 * t755 + t1056 * t767 - t1170;
t728 = -t1053 * t754 + t1056 * t764 - t1171;
t727 = -t1050 * t760 + t1051 * t750 - t1160;
t726 = -pkin(2) * t735 - t1176;
t725 = -t1050 * t756 + t1051 * t748 - t1161;
t724 = -t1071 - t1179;
t722 = t1053 * t739 + t1056 * t738;
t721 = t1050 * t750 + t1051 * t760 + t1153;
t720 = -t1072 - t1180;
t719 = t1050 * t748 + t1051 * t756 + t1154;
t718 = -t1053 * t745 + t1056 * t747 - t1172;
t716 = t1050 * t824 + t1051 * t723;
t715 = t1050 * t723 - t1051 * t824;
t713 = -pkin(6) * t735 - pkin(7) * t1134 - t1053 * t753;
t712 = -t1050 * t746 + t1051 * t730 - t1160;
t711 = -t1073 - t1181;
t710 = -t1050 * t744 + t1051 * t728 - t1161;
t709 = t1050 * t730 + t1051 * t746 + t1153;
t708 = t1050 * t728 + t1051 * t744 + t1154;
t707 = -t1050 * t757 + t1051 * t718 - t1162;
t706 = -pkin(2) * t722 - t1109;
t705 = -t1053 * t729 + t1056 * t731 - t1172;
t704 = t1050 * t718 + t1051 * t757 + t1156;
t703 = -t1074 - t1181;
t702 = -pkin(1) * t732 - t1064;
t701 = -t1050 * t751 + t1051 * t705 - t1162;
t700 = t1050 * t705 + t1051 * t751 + t1156;
t699 = -qJ(2) * t732 - t1050 * t726 + t1051 * t713;
t698 = -pkin(6) * t722 - t1053 * t714 + t1056 * t717;
t697 = -pkin(1) * t735 + qJ(2) * t733 + t1050 * t713 + t1051 * t726;
t696 = -pkin(1) * t715 - t1065;
t695 = -qJ(2) * t715 - t1050 * t706 + t1051 * t698;
t694 = -pkin(1) * t722 + qJ(2) * t716 + t1050 * t698 + t1051 * t706;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), -t1024, t1023, 0, 0, t1037, t1025, 0, t1039, 0, 0, t943, t942, t894, t899, t927, t890, t905, t926, t906, t1013, t798, t796, t770, t749, t820, t785, t811, t819, t812, t855, t719, t721, t704, t697, t820, t785, t811, t819, t812, t855, t708, t709, t700, t694; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1083, 0, t1018, 0, t1098, -t998, -t1084, -pkin(5) * t1084, t984, t1054 * t1012 - t1057 * t1015, t976, -t984, -t1078, 0, -pkin(5) * t1077 + t1057 * t970 + t997 * t1120, -pkin(5) * t977 + t1051 * t1139 + t1057 * t971, -t1054 * t915 - pkin(5) * (-t1057 * t1011 + t1054 * t1014), -pkin(5) * (-t1057 * t917 - t1139) + (-t1057 * pkin(1) - t1054 * qJ(2)) * t915, t1054 * t930 - t1057 * t957, t1054 * t892 - t1057 * t912, t1054 * t908 - t1057 * t947, t1054 * t929 - t1057 * t956, t1054 * t909 - t1057 * t948, -t1033 * t1120 + t1057 * t974, t1054 * t804 + t1057 * t837 - pkin(5) * (-t1054 * t949 - t1057 * t910), t1054 * t802 + t1057 * t831 - pkin(5) * (-t1054 * t938 - t1057 * t901), t1054 * t788 + t1057 * t797 - pkin(5) * (-t1054 * t911 - t1057 * t891), t1054 * t759 + t1057 * t782 - pkin(5) * (-t1054 * t853 - t1057 * t828), t776, t742, t771, t775, t772, t808, t1054 * t725 + t1057 * t734 - t1174, t1054 * t727 + t1057 * t737 - t1173, t1054 * t707 + t1057 * t711 - t1175, t1054 * t699 + t1057 * t702 - pkin(5) * (-t1054 * t735 - t1057 * t733), t776, t742, t771, t775, t772, t808, t1054 * t710 + t1057 * t720 - t1174, t1054 * t712 + t1057 * t724 - t1173, t1054 * t701 + t1057 * t703 - t1175, t1054 * t695 + t1057 * t696 - pkin(5) * (-t1054 * t722 - t1057 * t716); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, -t1018, 0, t1083, 0, t998, t1098, t1093, pkin(5) * t1093, -t985, -t1057 * t1012 - t1054 * t1015, t977, t985, -t1077, 0, pkin(5) * t1078 + t1054 * t970 - t997 * t1119, pkin(5) * t976 - t1051 * t1130 + t1054 * t971, t1057 * t915 + pkin(5) * (t1054 * t1011 + t1057 * t1014), pkin(5) * (t1054 * t917 - t1130) + (-t1054 * pkin(1) + t1057 * qJ(2)) * t915, -t1054 * t957 - t1057 * t930, -t1054 * t912 - t1057 * t892, -t1054 * t947 - t1057 * t908, -t1054 * t956 - t1057 * t929, -t1054 * t948 - t1057 * t909, t1033 * t1119 + t1054 * t974, -t1057 * t804 + t1054 * t837 + pkin(5) * (t1054 * t910 - t1057 * t949), -t1057 * t802 + t1054 * t831 + pkin(5) * (t1054 * t901 - t1057 * t938), -t1057 * t788 + t1054 * t797 + pkin(5) * (t1054 * t891 - t1057 * t911), -t1057 * t759 + t1054 * t782 + pkin(5) * (t1054 * t828 - t1057 * t853), t778, t743, t773, t777, t774, t809, t1054 * t734 - t1057 * t725 + t763, t1054 * t737 - t1057 * t727 + t768, t1054 * t711 - t1057 * t707 + t740, -t1057 * t699 + t1054 * t702 + pkin(5) * (t1054 * t733 - t1057 * t735), t778, t743, t773, t777, t774, t809, t1054 * t720 - t1057 * t710 + t763, t1054 * t724 - t1057 * t712 + t768, t1054 * t703 - t1057 * t701 + t740, -t1057 * t695 + t1054 * t696 + pkin(5) * (t1054 * t716 - t1057 * t722); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1058, 0, 0, -g(1), t1024, 0, t1100, t1012, t1007, -t1100, t1008, 0, t1050 * t997, t1051 * t997, -t915, -qJ(2) * t915, t930, t892, t908, t929, t909, -t1050 * t1033, t804, t802, t788, t759, t822, t786, t813, t821, t814, t856, t725, t727, t707, t699, t822, t786, t813, t821, t814, t856, t710, t712, t701, t695; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1058, 0, qJDD(1), 0, g(1), 0, -t1023, 0, t1029, -t1015, -t1038, -t1029, -t1115, 0, t970, t971, 0, -pkin(1) * t915, -t957, -t912, -t947, -t956, -t948, t974, t837, t831, t797, t782, -t834, -t791, -t849, -t833, -t850, -t861, t734, t737, t711, t702, -t834, -t791, -t849, -t833, -t850, -t861, t720, t724, t703, t696; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1024, t1023, 0, 0, t1037, t1025, 0, t1039, 0, 0, t943, t942, t894, t899, t927, t890, t905, t926, t906, t1013, t798, t796, t770, t749, t820, t785, t811, t819, t812, t855, t719, t721, t704, t697, t820, t785, t811, t819, t812, t855, t708, t709, t700, t694; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1038, t1115, t1029, 0, t1040, 0, 0, t997, t970, 0, t955, t914, t950, t954, t951, 0, t893, t874, t823, -pkin(6) * t853, t836, t793, t851, t835, t852, t862, t748, t750, t718, t713, t836, t793, t851, t835, t852, t862, t728, t730, t705, t698; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1038, -t1123, t1115, -t1029, 0, -t997, 0, t971, 0, -t1019, -t1003, t962, t1019, t963, t1033, t865, t864, -pkin(2) * t911, -pkin(2) * t853, t1157, -t940, -t887, -t1157, t884, t1022, t756, t760, t757, t726, t1157, -t940, -t887, -t1157, t884, t1022, t744, t746, t751, t706; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1029, t1015, t1038, t1029, t1115, 0, -t970, -t971, 0, 0, t957, t912, t947, t956, t948, -t974, t1075, t1076, t1068, t1091, t834, t791, t849, t833, t850, t861, t1070, t1069, t1073, t1064, t834, t791, t849, t833, t850, t861, t1072, t1071, t1074, t1065; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t996, t964, t995, -t1005, t999, t1005, 0, t936, t903, 0, t873, t847, t897, t871, t898, t922, t832, t841, t747, -pkin(7) * t761, t873, t847, t897, t871, t898, t922, t764, t767, t731, t717; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1006, t965, t1001, -t1067, -t994, t1006, -t936, 0, t904, 0, t872, t845, t895, t870, t896, t921, t803, t810, t745, t753, t872, t845, t895, t870, t896, t921, t754, t755, t729, t714; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1019, t1003, -t962, -t1019, -t963, -t1033, -t903, -t904, 0, 0, -t1157, t940, t887, t1157, -t884, -t1022, -t1089, t1112, t844, t1176, -t1157, t940, t887, t1157, -t884, -t1022, t1187, t979 + t1080, -t880 + t844, t1109; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t924, -t883, -t1185, t1129, t967, -t1129, 0, t875, t817, 0, t924, -t883, -t1185, t1129, t967, -t1129, qJ(5) * t1185, t815, t766, qJ(5) * t784; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1148, t1186, t968, t923, -t932, t1148, -t875, 0, t818, 0, -t1148, t1186, t968, t923, -t932, t1148, t795, t857, t758, t752; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1157, t940, t887, t1157, -t884, -t1022, -t817, -t818, 0, 0, -t1157, t940, t887, t1157, -t884, -t1022, t1063, t979 + t1082, -t880, -t783; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t924, -t883, -t1185, t1129, t967, -t1129, 0, t824, t784, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1148, t1186, t968, t923, -t932, t1148, -t824, 0, t787, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1157, t940, t887, t1157, -t884, -t1022, -t784, -t787, 0, 0;];
m_new_reg = t1;
