% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRPRPR3
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta3,theta5]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 13:20
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRPRPR3_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR3_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR3_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR3_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR3_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRPR3_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 13:18:37
% EndTime: 2019-05-06 13:19:20
% DurationCPUTime: 43.27s
% Computational Cost: add. (413408->946), mult. (965889->1465), div. (0->0), fcn. (717400->12), ass. (0->655)
t1094 = cos(qJ(2));
t1149 = qJD(2) * t1094;
t1115 = qJD(1) * t1149;
t1090 = sin(qJ(2));
t1129 = qJDD(1) * t1090;
t1052 = t1115 + t1129;
t1075 = t1094 * qJDD(1);
t1154 = qJD(1) * t1090;
t1120 = qJD(2) * t1154;
t1053 = t1075 - t1120;
t1084 = sin(pkin(10));
t1086 = cos(pkin(10));
t1006 = t1052 * t1086 + t1053 * t1084;
t1153 = qJD(1) * t1094;
t1044 = t1084 * t1153 + t1086 * t1154;
t1089 = sin(qJ(4));
t1093 = cos(qJ(4));
t1017 = -t1093 * qJD(2) + t1044 * t1089;
t1114 = t1017 * qJD(4) - t1089 * qJDD(2) - t1093 * t1006;
t1042 = t1084 * t1154 - t1086 * t1153;
t1038 = qJD(4) + t1042;
t992 = t1038 * t1017;
t917 = -t992 + t1114;
t1083 = sin(pkin(11));
t1108 = t1052 * t1084 - t1086 * t1053;
t1003 = qJDD(4) + t1108;
t1018 = qJD(2) * t1089 + t1044 * t1093;
t1085 = cos(pkin(11));
t959 = t1085 * t1017 + t1018 * t1083;
t961 = -t1017 * t1083 + t1018 * t1085;
t912 = t961 * t959;
t1190 = t1003 - t912;
t1200 = t1083 * t1190;
t1004 = t1044 * t1042;
t1187 = qJDD(2) - t1004;
t1199 = t1084 * t1187;
t1198 = t1085 * t1190;
t1197 = t1086 * t1187;
t1088 = sin(qJ(6));
t1101 = qJDD(6) + t1003;
t1092 = cos(qJ(6));
t901 = t1088 * t961 + t1092 * t959;
t903 = -t1088 * t959 + t1092 * t961;
t825 = t903 * t901;
t1188 = t1101 - t825;
t1196 = t1088 * t1188;
t973 = t1018 * t1017;
t1189 = t1003 - t973;
t1195 = t1089 * t1189;
t1194 = t1092 * t1188;
t1193 = t1093 * t1189;
t1150 = qJD(2) * t1044;
t974 = t1108 + t1150;
t1104 = t1093 * qJDD(2) - t1089 * t1006;
t1099 = qJD(4) * t1018 - t1104;
t1112 = -t1083 * t1114 + t1085 * t1099;
t881 = -t1083 * t1099 - t1085 * t1114;
t779 = -qJD(6) * t901 - t1088 * t1112 + t1092 * t881;
t1033 = qJD(6) + t1038;
t882 = t1033 * t901;
t1192 = t779 - t882;
t938 = t1038 * t959;
t848 = -t938 - t881;
t1191 = -t938 + t881;
t916 = -t992 - t1114;
t1110 = t1088 * t881 + t1092 * t1112;
t739 = (qJD(6) - t1033) * t903 + t1110;
t913 = (qJD(4) - t1038) * t1018 - t1104;
t1081 = t1094 ^ 2;
t1102 = qJD(2) * pkin(2) - qJ(3) * t1154;
t1091 = sin(qJ(1));
t1095 = cos(qJ(1));
t1062 = g(1) * t1091 - t1095 * g(2);
t1103 = qJDD(1) * pkin(1) + t1062;
t1185 = qJD(1) ^ 2;
t971 = pkin(2) * t1053 - t1102 * t1154 + (qJ(3) * t1081 + pkin(7)) * t1185 - qJDD(3) + t1103;
t899 = t901 ^ 2;
t900 = t903 ^ 2;
t1186 = t959 ^ 2;
t957 = t961 ^ 2;
t1184 = qJD(2) ^ 2;
t1183 = t1017 ^ 2;
t1016 = t1018 ^ 2;
t1032 = t1033 ^ 2;
t1182 = t1038 ^ 2;
t1040 = t1042 ^ 2;
t1041 = t1044 ^ 2;
t1181 = 2 * qJD(3);
t1180 = pkin(3) * t1084;
t1179 = t1094 * g(3);
t1063 = g(1) * t1095 + t1091 * g(2);
t1100 = qJDD(1) * pkin(7) - t1063;
t1096 = -t1090 * t1100 - t1179 - t1052 * qJ(3) + qJDD(2) * pkin(2) + (qJ(3) * t1149 + (pkin(2) * t1094 + pkin(1)) * t1154) * qJD(1);
t1098 = -pkin(1) * t1185 + t1100;
t1026 = -t1090 * g(3) + t1094 * t1098;
t1078 = t1081 * t1185;
t966 = -pkin(2) * t1078 + t1053 * qJ(3) - qJD(2) * t1102 + t1026;
t886 = -0.2e1 * qJD(3) * t1042 + t1084 * t1096 + t1086 * t966;
t994 = pkin(3) * t1042 - pkin(8) * t1044;
t851 = -pkin(3) * t1184 + qJDD(2) * pkin(8) - t1042 * t994 + t886;
t1151 = qJD(2) * t1042;
t1109 = -t1006 + t1151;
t870 = pkin(3) * t974 + t1109 * pkin(8) - t971;
t787 = t1089 * t851 - t1093 * t870;
t744 = t1189 * pkin(4) + qJ(5) * t917 - t787;
t788 = t1089 * t870 + t1093 * t851;
t981 = pkin(4) * t1038 - qJ(5) * t1018;
t751 = -pkin(4) * t1183 - qJ(5) * t1099 - t1038 * t981 + t788;
t662 = 0.2e1 * qJD(5) * t961 + t1083 * t751 - t1085 * t744;
t637 = pkin(5) * t1190 + pkin(9) * t848 - t662;
t663 = -0.2e1 * qJD(5) * t959 + t1083 * t744 + t1085 * t751;
t930 = pkin(5) * t1038 - pkin(9) * t961;
t642 = -pkin(5) * t1186 - pkin(9) * t1112 - t1038 * t930 + t663;
t578 = t1088 * t637 + t1092 * t642;
t1178 = t1038 * t961;
t577 = t1088 * t642 - t1092 * t637;
t537 = t1088 * t578 - t1092 * t577;
t1177 = t1083 * t537;
t1111 = t1084 * t966 - t1086 * t1096;
t850 = -qJDD(2) * pkin(3) - t1184 * pkin(8) + (t1181 + t994) * t1044 + t1111;
t785 = t1099 * pkin(4) - t1183 * qJ(5) + t1018 * t981 + qJDD(5) + t850;
t1176 = t1083 * t785;
t874 = t1003 + t912;
t1175 = t1083 * t874;
t1174 = t1084 * t971;
t998 = qJDD(2) + t1004;
t1173 = t1084 * t998;
t1172 = t1085 * t537;
t1171 = t1085 * t785;
t1170 = t1085 * t874;
t1169 = t1086 * t971;
t1168 = t1086 * t998;
t708 = pkin(5) * t1112 - pkin(9) * t1186 + t930 * t961 + t785;
t1167 = t1088 * t708;
t806 = t1101 + t825;
t1166 = t1088 * t806;
t598 = t1083 * t663 - t1085 * t662;
t1165 = t1089 * t598;
t1164 = t1089 * t850;
t928 = t1003 + t973;
t1163 = t1089 * t928;
t885 = t1044 * t1181 + t1111;
t808 = t1084 * t886 - t1086 * t885;
t1162 = t1090 * t808;
t1161 = t1092 * t708;
t1160 = t1092 * t806;
t1159 = t1093 * t598;
t1158 = t1093 * t850;
t1157 = t1093 * t928;
t1156 = t1094 * t808;
t1155 = qJD(1) * qJD(2);
t1080 = t1090 ^ 2;
t1152 = t1185 * t1080;
t1148 = t1003 * t1084;
t1147 = t1033 * t1088;
t1146 = t1033 * t1092;
t1145 = t1038 * t1083;
t1144 = t1038 * t1085;
t1143 = t1038 * t1089;
t1142 = t1038 * t1093;
t1141 = t1042 * t1084;
t1140 = t1042 * t1086;
t1139 = t1044 * t1084;
t1138 = t1044 * t1086;
t1046 = pkin(7) * t1185 + t1103;
t1137 = t1046 * t1090;
t1136 = t1046 * t1094;
t1071 = t1094 * t1185 * t1090;
t1060 = qJDD(2) + t1071;
t1135 = t1060 * t1090;
t1061 = qJDD(2) - t1071;
t1134 = t1061 * t1090;
t1133 = t1061 * t1094;
t1130 = t1080 + t1081;
t1128 = qJDD(1) * t1095;
t1127 = qJDD(2) * t1095;
t1126 = t1091 * qJDD(1);
t1125 = t1084 * t825;
t1124 = t1084 * t912;
t1123 = t1086 * t825;
t1122 = t1086 * t912;
t1121 = -pkin(3) * t1086 - pkin(2);
t1119 = t1084 * t973;
t1118 = t1086 * t973;
t1117 = t1095 * t1004;
t1116 = t1091 * t1004;
t599 = t1083 * t662 + t1085 * t663;
t809 = t1084 * t885 + t1086 * t886;
t538 = t1088 * t577 + t1092 * t578;
t1025 = t1090 * t1098 + t1179;
t969 = t1025 * t1090 + t1094 * t1026;
t1015 = -t1062 * t1091 - t1095 * t1063;
t1107 = t1095 * t1071;
t1106 = t1091 * t1071;
t1057 = -t1091 * t1185 + t1128;
t1105 = -pkin(6) * t1057 - g(3) * t1091;
t704 = t1089 * t788 - t1093 * t787;
t705 = t1089 * t787 + t1093 * t788;
t968 = t1025 * t1094 - t1026 * t1090;
t1014 = t1062 * t1095 - t1091 * t1063;
t845 = -t1112 + t1178;
t976 = -t1108 + t1150;
t1074 = t1091 * qJDD(2);
t1070 = -t1078 - t1184;
t1069 = t1078 - t1184;
t1068 = -t1152 - t1184;
t1067 = -t1152 + t1184;
t1059 = t1078 - t1152;
t1058 = t1078 + t1152;
t1056 = t1095 * t1185 + t1126;
t1055 = t1130 * qJDD(1);
t1054 = t1075 - 0.2e1 * t1120;
t1051 = 0.2e1 * t1115 + t1129;
t1049 = t1094 * t1060;
t1048 = t1130 * t1155;
t1039 = -pkin(6) * t1056 + g(3) * t1095;
t1031 = -t1041 - t1184;
t1030 = -t1041 + t1184;
t1029 = t1040 - t1184;
t1028 = t1052 * t1094 - t1080 * t1155;
t1027 = -t1053 * t1090 - t1081 * t1155;
t1024 = -t1068 * t1090 - t1133;
t1023 = -t1067 * t1090 + t1049;
t1022 = t1070 * t1094 - t1135;
t1021 = t1069 * t1094 - t1134;
t1020 = t1068 * t1094 - t1134;
t1019 = t1070 * t1090 + t1049;
t1010 = t1055 * t1095 - t1091 * t1058;
t1009 = t1091 * t1055 + t1058 * t1095;
t1007 = -t1051 * t1090 + t1054 * t1094;
t1002 = t1040 - t1041;
t995 = -t1040 - t1184;
t993 = t1086 * t1003;
t991 = (t1139 - t1140) * qJD(2);
t990 = (-t1138 - t1141) * qJD(2);
t989 = t1024 * t1095 + t1091 * t1051;
t988 = t1022 * t1095 - t1091 * t1054;
t987 = t1091 * t1024 - t1051 * t1095;
t986 = t1091 * t1022 + t1054 * t1095;
t985 = -t1016 + t1182;
t984 = -t1182 + t1183;
t983 = -pkin(7) * t1020 - t1136;
t982 = -pkin(7) * t1019 - t1137;
t980 = -pkin(1) * t1020 + t1026;
t979 = -pkin(1) * t1019 + t1025;
t978 = -t1006 - t1151;
t972 = -t1040 - t1041;
t970 = -t1016 + t1183;
t965 = -qJD(2) * t1139 + t1006 * t1086;
t964 = qJD(2) * t1138 + t1006 * t1084;
t963 = qJD(2) * t1140 + t1084 * t1108;
t962 = qJD(2) * t1141 - t1086 * t1108;
t950 = -t1016 - t1182;
t949 = -t1031 * t1084 - t1168;
t948 = -t1030 * t1084 + t1197;
t947 = t1029 * t1086 - t1173;
t946 = t1031 * t1086 - t1173;
t945 = t1030 * t1086 + t1199;
t944 = t1029 * t1084 + t1168;
t941 = -t1182 - t1183;
t937 = t1016 + t1183;
t936 = -t1091 * t1046 + t1095 * t969;
t935 = t1046 * t1095 + t1091 * t969;
t934 = -t957 + t1182;
t933 = -t1182 + t1186;
t932 = t1086 * t995 - t1199;
t931 = t1084 * t995 + t1197;
t926 = (-t1017 * t1093 + t1018 * t1089) * t1038;
t925 = (t1017 * t1089 + t1018 * t1093) * t1038;
t924 = -t1090 * t990 + t1094 * t991;
t923 = -t957 - t1182;
t922 = -t1084 * t978 + t1086 * t976;
t921 = t1084 * t1109 - t1086 * t974;
t920 = t1084 * t976 + t1086 * t978;
t919 = -t1084 * t974 - t1086 * t1109;
t914 = (-qJD(4) - t1038) * t1018 + t1104;
t911 = -t1018 * t1143 - t1093 * t1114;
t910 = -t1018 * t1142 + t1089 * t1114;
t909 = t1017 * t1142 + t1089 * t1099;
t908 = -t1017 * t1143 + t1093 * t1099;
t907 = -t957 + t1186;
t906 = -qJ(3) * t946 - t1169;
t905 = -t1090 * t964 + t1094 * t965;
t904 = -t1090 * t962 + t1094 * t963;
t898 = -t1090 * t946 + t1094 * t949;
t897 = -t1090 * t945 + t1094 * t948;
t896 = -t1090 * t944 + t1094 * t947;
t895 = t1090 * t949 + t1094 * t946;
t894 = t1086 * t926 + t1148;
t893 = t1084 * t926 - t993;
t892 = -t1182 - t1186;
t891 = t1093 * t984 - t1163;
t890 = -t1089 * t985 + t1193;
t889 = -t1089 * t984 - t1157;
t888 = -t1093 * t985 - t1195;
t887 = -qJ(3) * t931 - t1174;
t879 = -t900 + t1032;
t878 = t899 - t1032;
t872 = -t1089 * t950 - t1157;
t871 = t1093 * t950 - t1163;
t867 = (t1083 * t961 - t1085 * t959) * t1038;
t866 = (-t1083 * t959 - t1085 * t961) * t1038;
t865 = t1093 * t941 - t1195;
t864 = t1089 * t941 + t1193;
t863 = -t900 - t1032;
t862 = -t1090 * t931 + t1094 * t932;
t861 = t1090 * t932 + t1094 * t931;
t860 = pkin(2) * t1109 + qJ(3) * t949 - t1174;
t859 = t1086 * t911 + t1119;
t858 = t1086 * t909 - t1119;
t857 = t1084 * t911 - t1118;
t856 = t1084 * t909 + t1118;
t855 = -t957 - t1186;
t854 = -pkin(2) * t974 + qJ(3) * t932 + t1169;
t853 = -t1091 * t1109 + t1095 * t898;
t852 = t1091 * t898 + t1095 * t1109;
t843 = t1112 + t1178;
t842 = t1091 * t974 + t1095 * t862;
t841 = -t1090 * t920 + t1094 * t922;
t840 = -t1090 * t919 + t1094 * t921;
t839 = t1091 * t862 - t1095 * t974;
t838 = t1090 * t922 + t1094 * t920;
t837 = t1085 * t881 - t1145 * t961;
t836 = t1083 * t881 + t1144 * t961;
t835 = t1083 * t1112 + t1144 * t959;
t834 = -t1085 * t1112 + t1145 * t959;
t833 = -t1089 * t917 - t1093 * t913;
t832 = -t1089 * t916 + t1093 * t914;
t831 = -t1089 * t913 + t1093 * t917;
t830 = -t1089 * t914 - t1093 * t916;
t829 = t1085 * t933 - t1175;
t828 = -t1083 * t934 + t1198;
t827 = t1083 * t933 + t1170;
t826 = t1085 * t934 + t1200;
t824 = -t900 + t899;
t823 = -t1083 * t923 - t1170;
t822 = t1085 * t923 - t1175;
t821 = -t1084 * t913 + t1086 * t891;
t820 = -t1084 * t917 + t1086 * t890;
t819 = t1084 * t891 + t1086 * t913;
t818 = t1084 * t890 + t1086 * t917;
t817 = -t1032 - t899;
t816 = t1084 * t916 + t1086 * t872;
t815 = t1084 * t872 - t1086 * t916;
t814 = -t1090 * t893 + t1094 * t894;
t813 = -t1084 * t914 + t1086 * t865;
t812 = t1084 * t865 + t1086 * t914;
t811 = t1091 * t972 + t1095 * t841;
t810 = t1091 * t841 - t1095 * t972;
t804 = -t1084 * t970 + t1086 * t832;
t803 = t1084 * t832 + t1086 * t970;
t802 = (t1088 * t903 - t1092 * t901) * t1033;
t801 = (-t1088 * t901 - t1092 * t903) * t1033;
t800 = t1085 * t892 - t1200;
t799 = t1083 * t892 + t1198;
t798 = -t1084 * t937 + t1086 * t833;
t797 = t1084 * t833 + t1086 * t937;
t796 = -t1089 * t866 + t1093 * t867;
t795 = -t1089 * t867 - t1093 * t866;
t794 = -pkin(1) * t838 - pkin(2) * t920;
t793 = -pkin(1) * t895 - pkin(2) * t946 + t886;
t792 = pkin(2) * t971 + qJ(3) * t809;
t791 = -pkin(8) * t871 + t1158;
t790 = -t1090 * t857 + t1094 * t859;
t789 = -t1090 * t856 + t1094 * t858;
t786 = -pkin(8) * t864 + t1164;
t784 = t1086 * t796 + t1148;
t783 = t1084 * t796 - t993;
t782 = -t899 - t900;
t781 = -pkin(1) * t861 - pkin(2) * t931 + t885;
t780 = -qJ(3) * t920 - t808;
t778 = -qJD(6) * t903 - t1110;
t777 = t1092 * t878 - t1166;
t776 = -t1088 * t879 + t1194;
t775 = t1088 * t878 + t1160;
t774 = t1092 * t879 + t1196;
t773 = -pkin(7) * t895 - t1090 * t860 + t1094 * t906;
t772 = -pkin(2) * t972 + qJ(3) * t922 + t809;
t771 = -t1083 * t848 + t1085 * t845;
t770 = -t1083 * t1191 - t1085 * t843;
t769 = t1083 * t845 + t1085 * t848;
t768 = -t1083 * t843 + t1085 * t1191;
t767 = -t1088 * t863 - t1160;
t766 = t1092 * t863 - t1166;
t765 = -t1089 * t836 + t1093 * t837;
t764 = -t1089 * t834 + t1093 * t835;
t763 = -t1089 * t837 - t1093 * t836;
t762 = -t1089 * t835 - t1093 * t834;
t761 = -t1089 * t827 + t1093 * t829;
t760 = -t1089 * t826 + t1093 * t828;
t759 = -t1089 * t829 - t1093 * t827;
t758 = -t1089 * t828 - t1093 * t826;
t757 = -pkin(7) * t861 - t1090 * t854 + t1094 * t887;
t756 = -t1089 * t822 + t1093 * t823;
t755 = t1089 * t823 + t1093 * t822;
t754 = -pkin(3) * t871 + t788;
t753 = -t1090 * t819 + t1094 * t821;
t752 = -t1090 * t818 + t1094 * t820;
t750 = -pkin(3) * t864 + t787;
t748 = -t1090 * t815 + t1094 * t816;
t747 = t1090 * t816 + t1094 * t815;
t746 = t1092 * t817 - t1196;
t745 = t1088 * t817 + t1194;
t743 = -t779 - t882;
t738 = (qJD(6) + t1033) * t903 + t1110;
t735 = -t1090 * t812 + t1094 * t813;
t734 = t1090 * t813 + t1094 * t812;
t733 = t1092 * t779 - t1147 * t903;
t732 = t1088 * t779 + t1146 * t903;
t731 = -t1088 * t778 + t1146 * t901;
t730 = t1092 * t778 + t1147 * t901;
t729 = t1094 * t809 - t1162;
t728 = t1090 * t809 + t1156;
t727 = t1086 * t765 + t1124;
t726 = t1086 * t764 - t1124;
t725 = t1084 * t765 - t1122;
t724 = t1084 * t764 + t1122;
t723 = -t1090 * t803 + t1094 * t804;
t722 = -t1083 * t801 + t1085 * t802;
t721 = t1083 * t802 + t1085 * t801;
t720 = -t1089 * t799 + t1093 * t800;
t719 = t1089 * t800 + t1093 * t799;
t718 = -qJ(5) * t822 + t1171;
t717 = -t1091 * t971 + t1095 * t729;
t716 = t1091 * t729 + t1095 * t971;
t715 = -t1090 * t797 + t1094 * t798;
t714 = t1090 * t798 + t1094 * t797;
t713 = -qJ(5) * t799 + t1176;
t712 = t1084 * t845 + t1086 * t761;
t711 = -t1084 * t848 + t1086 * t760;
t710 = t1084 * t761 - t1086 * t845;
t709 = t1084 * t760 + t1086 * t848;
t707 = t1091 * t871 + t1095 * t748;
t706 = t1091 * t748 - t1095 * t871;
t703 = t1091 * t864 + t1095 * t735;
t702 = t1091 * t735 - t1095 * t864;
t701 = -t1090 * t783 + t1094 * t784;
t700 = t1084 * t1191 + t1086 * t756;
t699 = t1084 * t756 - t1086 * t1191;
t698 = t1084 * t843 + t1086 * t720;
t697 = t1084 * t720 - t1086 * t843;
t696 = -pkin(4) * t1191 + qJ(5) * t823 + t1176;
t695 = -pkin(1) * t728 - pkin(2) * t808;
t694 = t1091 * t831 + t1095 * t715;
t693 = t1091 * t715 - t1095 * t831;
t692 = -t1083 * t775 + t1085 * t777;
t691 = -t1083 * t774 + t1085 * t776;
t690 = t1083 * t777 + t1085 * t775;
t689 = t1083 * t776 + t1085 * t774;
t688 = -pkin(4) * t843 + qJ(5) * t800 - t1171;
t687 = -t1089 * t769 + t1093 * t771;
t686 = -t1089 * t768 + t1093 * t770;
t685 = t1089 * t771 + t1093 * t769;
t684 = -t1089 * t770 - t1093 * t768;
t683 = -t1083 * t766 + t1085 * t767;
t682 = t1083 * t767 + t1085 * t766;
t681 = t1084 * t850 + t1086 * t705;
t680 = t1084 * t705 - t1086 * t850;
t679 = -pkin(8) * t831 - t704;
t678 = -t1084 * t907 + t1086 * t686;
t677 = t1084 * t686 + t1086 * t907;
t676 = -pkin(7) * t838 - t1090 * t772 + t1094 * t780;
t675 = t1084 * t855 + t1086 * t687;
t674 = t1084 * t687 - t1086 * t855;
t673 = -t1083 * t745 + t1085 * t746;
t672 = t1083 * t746 + t1085 * t745;
t671 = -t1088 * t743 - t1092 * t739;
t670 = -t1088 * t1192 - t1092 * t738;
t669 = -t1088 * t739 + t1092 * t743;
t668 = -t1088 * t738 + t1092 * t1192;
t667 = -t1083 * t732 + t1085 * t733;
t666 = -t1083 * t730 + t1085 * t731;
t665 = t1083 * t733 + t1085 * t732;
t664 = t1083 * t731 + t1085 * t730;
t660 = -qJ(3) * t815 - t1084 * t754 + t1086 * t791;
t659 = -pkin(9) * t766 + t1161;
t658 = -qJ(3) * t812 - t1084 * t750 + t1086 * t786;
t657 = -t1090 * t725 + t1094 * t727;
t656 = -t1090 * t724 + t1094 * t726;
t655 = -t1089 * t721 + t1093 * t722;
t654 = -t1089 * t722 - t1093 * t721;
t653 = -pkin(7) * t728 - qJ(3) * t1156 - t1090 * t792;
t652 = t1084 * t1101 + t1086 * t655;
t651 = t1084 * t655 - t1086 * t1101;
t650 = -pkin(9) * t745 + t1167;
t649 = -pkin(1) * t747 - pkin(2) * t815 + pkin(3) * t916 - pkin(8) * t872 - t1164;
t648 = -pkin(2) * t871 + qJ(3) * t816 + t1084 * t791 + t1086 * t754;
t647 = -pkin(1) * t734 - pkin(2) * t812 - pkin(3) * t914 - pkin(8) * t865 + t1158;
t646 = -pkin(2) * t864 + qJ(3) * t813 + t1084 * t786 + t1086 * t750;
t645 = -pkin(3) * t685 - pkin(4) * t769;
t644 = -t1090 * t710 + t1094 * t712;
t643 = -t1090 * t709 + t1094 * t711;
t640 = -t1090 * t699 + t1094 * t700;
t639 = t1090 * t700 + t1094 * t699;
t638 = -qJ(3) * t797 + t1086 * t679 + t1180 * t831;
t634 = -t1090 * t697 + t1094 * t698;
t633 = t1090 * t698 + t1094 * t697;
t632 = -pkin(5) * t1192 + pkin(9) * t767 + t1167;
t631 = qJ(3) * t798 + t1084 * t679 + t1121 * t831;
t630 = -t1089 * t690 + t1093 * t692;
t629 = -t1089 * t689 + t1093 * t691;
t628 = -t1089 * t692 - t1093 * t690;
t627 = -t1089 * t691 - t1093 * t689;
t626 = -t1089 * t682 + t1093 * t683;
t625 = t1089 * t683 + t1093 * t682;
t624 = -pkin(5) * t738 + pkin(9) * t746 - t1161;
t623 = -t1090 * t680 + t1094 * t681;
t622 = t1090 * t681 + t1094 * t680;
t621 = -pkin(3) * t755 - pkin(4) * t822 + t663;
t620 = -pkin(1) * t714 - pkin(2) * t797 - pkin(3) * t937 - pkin(8) * t833 - t705;
t619 = -pkin(8) * t755 - t1089 * t696 + t1093 * t718;
t618 = t1091 * t755 + t1095 * t640;
t617 = t1091 * t640 - t1095 * t755;
t616 = -pkin(3) * t719 - pkin(4) * t799 + t662;
t615 = -t1090 * t677 + t1094 * t678;
t614 = -pkin(8) * t719 - t1089 * t688 + t1093 * t713;
t613 = -t1090 * t674 + t1094 * t675;
t612 = t1090 * t675 + t1094 * t674;
t611 = -t1089 * t672 + t1093 * t673;
t610 = t1089 * t673 + t1093 * t672;
t609 = t1091 * t719 + t1095 * t634;
t608 = t1091 * t634 - t1095 * t719;
t607 = -t1083 * t669 + t1085 * t671;
t606 = -t1083 * t668 + t1085 * t670;
t605 = t1083 * t671 + t1085 * t669;
t604 = t1083 * t670 + t1085 * t668;
t603 = -t1089 * t665 + t1093 * t667;
t602 = -t1089 * t664 + t1093 * t666;
t601 = -t1089 * t667 - t1093 * t665;
t600 = -t1089 * t666 - t1093 * t664;
t597 = -t1084 * t739 + t1086 * t630;
t596 = -t1084 * t743 + t1086 * t629;
t595 = t1084 * t630 + t1086 * t739;
t594 = t1084 * t629 + t1086 * t743;
t593 = -qJ(3) * t680 + (-pkin(8) * t1086 + t1180) * t704;
t592 = t1084 * t1192 + t1086 * t626;
t591 = t1084 * t626 - t1086 * t1192;
t590 = -t1090 * t651 + t1094 * t652;
t589 = t1086 * t603 + t1125;
t588 = t1086 * t602 - t1125;
t587 = t1084 * t603 - t1123;
t586 = t1084 * t602 + t1123;
t585 = t1091 * t704 + t1095 * t623;
t584 = t1091 * t623 - t1095 * t704;
t583 = -pkin(4) * t785 + qJ(5) * t599;
t582 = -qJ(5) * t769 - t598;
t581 = t1084 * t738 + t1086 * t611;
t580 = t1084 * t611 - t1086 * t738;
t579 = -pkin(4) * t855 + qJ(5) * t771 + t599;
t575 = -pkin(7) * t747 - t1090 * t648 + t1094 * t660;
t574 = -pkin(7) * t734 - t1090 * t646 + t1094 * t658;
t573 = t1091 * t685 + t1095 * t613;
t572 = t1091 * t613 - t1095 * t685;
t571 = qJ(3) * t681 + (-pkin(8) * t1084 + t1121) * t704;
t570 = -pkin(1) * t622 - pkin(2) * t680 + pkin(3) * t850 - pkin(8) * t705;
t569 = -qJ(5) * t682 - t1083 * t632 + t1085 * t659;
t568 = -pkin(7) * t714 - t1090 * t631 + t1094 * t638;
t567 = -qJ(5) * t672 - t1083 * t624 + t1085 * t650;
t566 = -pkin(4) * t1192 + qJ(5) * t683 + t1083 * t659 + t1085 * t632;
t565 = -pkin(1) * t639 - pkin(2) * t699 + pkin(3) * t1191 - pkin(8) * t756 - t1089 * t718 - t1093 * t696;
t564 = -t1089 * t605 + t1093 * t607;
t563 = -t1089 * t604 + t1093 * t606;
t562 = t1089 * t607 + t1093 * t605;
t561 = -t1089 * t606 - t1093 * t604;
t560 = t1093 * t599 - t1165;
t559 = t1089 * t599 + t1159;
t558 = -qJ(3) * t699 - t1084 * t621 + t1086 * t619;
t557 = -t1090 * t595 + t1094 * t597;
t556 = -t1090 * t594 + t1094 * t596;
t555 = -pkin(4) * t738 + qJ(5) * t673 + t1083 * t650 + t1085 * t624;
t554 = -t1084 * t824 + t1086 * t563;
t553 = t1084 * t563 + t1086 * t824;
t552 = -t1090 * t591 + t1094 * t592;
t551 = t1090 * t592 + t1094 * t591;
t550 = -pkin(1) * t633 - pkin(2) * t697 + pkin(3) * t843 - pkin(8) * t720 - t1089 * t713 - t1093 * t688;
t549 = t1084 * t782 + t1086 * t564;
t548 = t1084 * t564 - t1086 * t782;
t547 = t1084 * t785 + t1086 * t560;
t546 = t1084 * t560 - t1086 * t785;
t545 = -qJ(3) * t697 - t1084 * t616 + t1086 * t614;
t544 = -t1090 * t587 + t1094 * t589;
t543 = -t1090 * t586 + t1094 * t588;
t542 = -pkin(2) * t755 + qJ(3) * t700 + t1084 * t619 + t1086 * t621;
t541 = -pkin(2) * t719 + qJ(3) * t698 + t1084 * t614 + t1086 * t616;
t540 = -t1090 * t580 + t1094 * t581;
t539 = t1090 * t581 + t1094 * t580;
t536 = -pkin(3) * t625 - pkin(4) * t682 - pkin(5) * t766 + t578;
t535 = -pkin(8) * t685 - t1089 * t579 + t1093 * t582;
t534 = t1091 * t625 + t1095 * t552;
t533 = t1091 * t552 - t1095 * t625;
t532 = -pkin(5) * t708 + pkin(9) * t538;
t531 = -pkin(3) * t610 - pkin(4) * t672 - pkin(5) * t745 + t577;
t530 = -pkin(3) * t559 - pkin(4) * t598;
t529 = -pkin(9) * t669 - t537;
t528 = -pkin(7) * t622 - t1090 * t571 + t1094 * t593;
t527 = -pkin(5) * t782 + pkin(9) * t671 + t538;
t526 = t1091 * t610 + t1095 * t540;
t525 = t1091 * t540 - t1095 * t610;
t524 = -pkin(3) * t562 - pkin(4) * t605 - pkin(5) * t669;
t523 = -qJ(3) * t674 - t1084 * t645 + t1086 * t535;
t522 = -pkin(8) * t559 - qJ(5) * t1159 - t1089 * t583;
t521 = -t1090 * t553 + t1094 * t554;
t520 = -t1090 * t548 + t1094 * t549;
t519 = t1090 * t549 + t1094 * t548;
t518 = -pkin(2) * t685 + qJ(3) * t675 + t1084 * t535 + t1086 * t645;
t517 = -t1090 * t546 + t1094 * t547;
t516 = t1090 * t547 + t1094 * t546;
t515 = -pkin(1) * t612 - pkin(2) * t674 + pkin(3) * t855 - pkin(8) * t687 - t1089 * t582 - t1093 * t579;
t514 = -pkin(8) * t625 - t1089 * t566 + t1093 * t569;
t513 = -pkin(8) * t610 - t1089 * t555 + t1093 * t567;
t512 = -pkin(7) * t639 - t1090 * t542 + t1094 * t558;
t511 = t1085 * t538 - t1177;
t510 = t1083 * t538 + t1172;
t509 = -pkin(7) * t633 - t1090 * t541 + t1094 * t545;
t508 = t1091 * t562 + t1095 * t520;
t507 = t1091 * t520 - t1095 * t562;
t506 = t1091 * t559 + t1095 * t517;
t505 = t1091 * t517 - t1095 * t559;
t504 = -qJ(5) * t605 - t1083 * t527 + t1085 * t529;
t503 = -pkin(4) * t782 + qJ(5) * t607 + t1083 * t529 + t1085 * t527;
t502 = -pkin(1) * t551 - pkin(2) * t591 + pkin(3) * t1192 - pkin(8) * t626 - t1089 * t569 - t1093 * t566;
t501 = -qJ(3) * t591 - t1084 * t536 + t1086 * t514;
t500 = -pkin(1) * t539 - pkin(2) * t580 + pkin(3) * t738 - pkin(8) * t611 - t1089 * t567 - t1093 * t555;
t499 = -pkin(2) * t625 + qJ(3) * t592 + t1084 * t514 + t1086 * t536;
t498 = -qJ(3) * t580 - t1084 * t531 + t1086 * t513;
t497 = -pkin(7) * t612 - t1090 * t518 + t1094 * t523;
t496 = -qJ(3) * t546 - t1084 * t530 + t1086 * t522;
t495 = -pkin(2) * t610 + qJ(3) * t581 + t1084 * t513 + t1086 * t531;
t494 = -t1089 * t510 + t1093 * t511;
t493 = t1089 * t511 + t1093 * t510;
t492 = -pkin(9) * t1172 - qJ(5) * t510 - t1083 * t532;
t491 = t1084 * t708 + t1086 * t494;
t490 = t1084 * t494 - t1086 * t708;
t489 = -pkin(1) * t516 - pkin(2) * t546 + pkin(3) * t785 - pkin(8) * t560 + qJ(5) * t1165 - t1093 * t583;
t488 = -pkin(4) * t708 - pkin(9) * t1177 + qJ(5) * t511 + t1085 * t532;
t487 = -pkin(2) * t559 + qJ(3) * t547 + t1084 * t522 + t1086 * t530;
t486 = -pkin(8) * t562 - t1089 * t503 + t1093 * t504;
t485 = -pkin(3) * t493 - pkin(4) * t510 - pkin(5) * t537;
t484 = -pkin(7) * t551 - t1090 * t499 + t1094 * t501;
t483 = -t1090 * t490 + t1094 * t491;
t482 = t1090 * t491 + t1094 * t490;
t481 = -pkin(7) * t539 - t1090 * t495 + t1094 * t498;
t480 = -qJ(3) * t548 - t1084 * t524 + t1086 * t486;
t479 = -pkin(1) * t519 - pkin(2) * t548 + pkin(3) * t782 - pkin(8) * t564 - t1089 * t504 - t1093 * t503;
t478 = -pkin(2) * t562 + qJ(3) * t549 + t1084 * t486 + t1086 * t524;
t477 = -pkin(7) * t516 - t1090 * t487 + t1094 * t496;
t476 = t1091 * t493 + t1095 * t483;
t475 = t1091 * t483 - t1095 * t493;
t474 = -pkin(8) * t493 - t1089 * t488 + t1093 * t492;
t473 = -pkin(7) * t519 - t1090 * t478 + t1094 * t480;
t472 = -qJ(3) * t490 - t1084 * t485 + t1086 * t474;
t471 = -pkin(1) * t482 - pkin(2) * t490 + pkin(3) * t708 - pkin(8) * t494 - t1089 * t492 - t1093 * t488;
t470 = -pkin(2) * t493 + qJ(3) * t491 + t1084 * t474 + t1086 * t485;
t469 = -pkin(7) * t482 - t1090 * t470 + t1094 * t472;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t1056, -t1057, 0, t1015, 0, 0, 0, 0, 0, 0, t988, t989, t1010, t936, 0, 0, 0, 0, 0, 0, t842, t853, t811, t717, 0, 0, 0, 0, 0, 0, t703, t707, t694, t585, 0, 0, 0, 0, 0, 0, t609, t618, t573, t506, 0, 0, 0, 0, 0, 0, t526, t534, t508, t476; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t1057, -t1056, 0, t1014, 0, 0, 0, 0, 0, 0, t986, t987, t1009, t935, 0, 0, 0, 0, 0, 0, t839, t852, t810, t716, 0, 0, 0, 0, 0, 0, t702, t706, t693, t584, 0, 0, 0, 0, 0, 0, t608, t617, t572, t505, 0, 0, 0, 0, 0, 0, t525, t533, t507, t475; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t1019, t1020, 0, -t968, 0, 0, 0, 0, 0, 0, t861, t895, t838, t728, 0, 0, 0, 0, 0, 0, t734, t747, t714, t622, 0, 0, 0, 0, 0, 0, t633, t639, t612, t516, 0, 0, 0, 0, 0, 0, t539, t551, t519, t482; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t1057, 0, -t1056, 0, t1105, -t1039, -t1014, -pkin(6) * t1014, t1028 * t1095 - t1106, t1007 * t1095 - t1091 * t1059, t1023 * t1095 + t1090 * t1126, t1027 * t1095 + t1106, t1021 * t1095 + t1075 * t1091, t1048 * t1095 + t1074, -pkin(6) * t986 - t1091 * t979 + t1095 * t982, -pkin(6) * t987 - t1091 * t980 + t1095 * t983, -pkin(6) * t1009 + t1095 * t968, -pkin(6) * t935 - (pkin(1) * t1091 - pkin(7) * t1095) * t968, t1095 * t905 + t1116, -t1091 * t1002 + t1095 * t840, -t1091 * t978 + t1095 * t897, t1095 * t904 - t1116, t1091 * t976 + t1095 * t896, t1095 * t924 + t1074, -pkin(6) * t839 - t1091 * t781 + t1095 * t757, -pkin(6) * t852 - t1091 * t793 + t1095 * t773, -pkin(6) * t810 - t1091 * t794 + t1095 * t676, -pkin(6) * t716 - t1091 * t695 + t1095 * t653, -t1091 * t910 + t1095 * t790, -t1091 * t830 + t1095 * t723, -t1091 * t888 + t1095 * t752, -t1091 * t908 + t1095 * t789, -t1091 * t889 + t1095 * t753, -t1091 * t925 + t1095 * t814, -pkin(6) * t702 - t1091 * t647 + t1095 * t574, -pkin(6) * t706 - t1091 * t649 + t1095 * t575, -pkin(6) * t693 - t1091 * t620 + t1095 * t568, -pkin(6) * t584 - t1091 * t570 + t1095 * t528, -t1091 * t763 + t1095 * t657, -t1091 * t684 + t1095 * t615, -t1091 * t758 + t1095 * t643, -t1091 * t762 + t1095 * t656, -t1091 * t759 + t1095 * t644, -t1091 * t795 + t1095 * t701, -pkin(6) * t608 - t1091 * t550 + t1095 * t509, -pkin(6) * t617 - t1091 * t565 + t1095 * t512, -pkin(6) * t572 - t1091 * t515 + t1095 * t497, -pkin(6) * t505 - t1091 * t489 + t1095 * t477, -t1091 * t601 + t1095 * t544, -t1091 * t561 + t1095 * t521, -t1091 * t627 + t1095 * t556, -t1091 * t600 + t1095 * t543, -t1091 * t628 + t1095 * t557, -t1091 * t654 + t1095 * t590, -pkin(6) * t525 - t1091 * t500 + t1095 * t481, -pkin(6) * t533 - t1091 * t502 + t1095 * t484, -pkin(6) * t507 - t1091 * t479 + t1095 * t473, -pkin(6) * t475 - t1091 * t471 + t1095 * t469; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t1056, 0, t1057, 0, t1039, t1105, t1015, pkin(6) * t1015, t1091 * t1028 + t1107, t1091 * t1007 + t1059 * t1095, t1091 * t1023 - t1090 * t1128, t1091 * t1027 - t1107, t1091 * t1021 - t1075 * t1095, t1091 * t1048 - t1127, pkin(6) * t988 + t1091 * t982 + t1095 * t979, pkin(6) * t989 + t1091 * t983 + t1095 * t980, pkin(6) * t1010 + t1091 * t968, pkin(6) * t936 - (-pkin(1) * t1095 - pkin(7) * t1091) * t968, t1091 * t905 - t1117, t1002 * t1095 + t1091 * t840, t1091 * t897 + t1095 * t978, t1091 * t904 + t1117, t1091 * t896 - t1095 * t976, t1091 * t924 - t1127, pkin(6) * t842 + t1091 * t757 + t1095 * t781, pkin(6) * t853 + t1091 * t773 + t1095 * t793, pkin(6) * t811 + t1091 * t676 + t1095 * t794, pkin(6) * t717 + t1091 * t653 + t1095 * t695, t1091 * t790 + t1095 * t910, t1091 * t723 + t1095 * t830, t1091 * t752 + t1095 * t888, t1091 * t789 + t1095 * t908, t1091 * t753 + t1095 * t889, t1091 * t814 + t1095 * t925, pkin(6) * t703 + t1091 * t574 + t1095 * t647, pkin(6) * t707 + t1091 * t575 + t1095 * t649, pkin(6) * t694 + t1091 * t568 + t1095 * t620, pkin(6) * t585 + t1091 * t528 + t1095 * t570, t1091 * t657 + t1095 * t763, t1091 * t615 + t1095 * t684, t1091 * t643 + t1095 * t758, t1091 * t656 + t1095 * t762, t1091 * t644 + t1095 * t759, t1091 * t701 + t1095 * t795, pkin(6) * t609 + t1091 * t509 + t1095 * t550, pkin(6) * t618 + t1091 * t512 + t1095 * t565, pkin(6) * t573 + t1091 * t497 + t1095 * t515, pkin(6) * t506 + t1091 * t477 + t1095 * t489, t1091 * t544 + t1095 * t601, t1091 * t521 + t1095 * t561, t1091 * t556 + t1095 * t627, t1091 * t543 + t1095 * t600, t1091 * t557 + t1095 * t628, t1091 * t590 + t1095 * t654, pkin(6) * t526 + t1091 * t481 + t1095 * t500, pkin(6) * t534 + t1091 * t484 + t1095 * t502, pkin(6) * t508 + t1091 * t473 + t1095 * t479, pkin(6) * t476 + t1091 * t469 + t1095 * t471; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t1062, t1063, 0, 0, (t1052 + t1115) * t1090, t1051 * t1094 + t1054 * t1090, t1067 * t1094 + t1135, (t1053 - t1120) * t1094, t1069 * t1090 + t1133, 0, pkin(1) * t1054 + pkin(7) * t1022 + t1136, -pkin(1) * t1051 + pkin(7) * t1024 - t1137, pkin(1) * t1058 + pkin(7) * t1055 + t969, pkin(1) * t1046 + pkin(7) * t969, t1090 * t965 + t1094 * t964, t1090 * t921 + t1094 * t919, t1090 * t948 + t1094 * t945, t1090 * t963 + t1094 * t962, t1090 * t947 + t1094 * t944, t1090 * t991 + t1094 * t990, -pkin(1) * t974 + pkin(7) * t862 + t1090 * t887 + t1094 * t854, pkin(1) * t1109 + pkin(7) * t898 + t1090 * t906 + t1094 * t860, -pkin(1) * t972 + pkin(7) * t841 + t1090 * t780 + t1094 * t772, pkin(1) * t971 + pkin(7) * t729 - qJ(3) * t1162 + t1094 * t792, t1090 * t859 + t1094 * t857, t1090 * t804 + t1094 * t803, t1090 * t820 + t1094 * t818, t1090 * t858 + t1094 * t856, t1090 * t821 + t1094 * t819, t1090 * t894 + t1094 * t893, -pkin(1) * t864 + pkin(7) * t735 + t1090 * t658 + t1094 * t646, -pkin(1) * t871 + pkin(7) * t748 + t1090 * t660 + t1094 * t648, -pkin(1) * t831 + pkin(7) * t715 + t1090 * t638 + t1094 * t631, -pkin(1) * t704 + pkin(7) * t623 + t1090 * t593 + t1094 * t571, t1090 * t727 + t1094 * t725, t1090 * t678 + t1094 * t677, t1090 * t711 + t1094 * t709, t1090 * t726 + t1094 * t724, t1090 * t712 + t1094 * t710, t1090 * t784 + t1094 * t783, -pkin(1) * t719 + pkin(7) * t634 + t1090 * t545 + t1094 * t541, -pkin(1) * t755 + pkin(7) * t640 + t1090 * t558 + t1094 * t542, -pkin(1) * t685 + pkin(7) * t613 + t1090 * t523 + t1094 * t518, -pkin(1) * t559 + pkin(7) * t517 + t1090 * t496 + t1094 * t487, t1090 * t589 + t1094 * t587, t1090 * t554 + t1094 * t553, t1090 * t596 + t1094 * t594, t1090 * t588 + t1094 * t586, t1090 * t597 + t1094 * t595, t1090 * t652 + t1094 * t651, -pkin(1) * t610 + pkin(7) * t540 + t1090 * t498 + t1094 * t495, -pkin(1) * t625 + pkin(7) * t552 + t1090 * t501 + t1094 * t499, -pkin(1) * t562 + pkin(7) * t520 + t1090 * t480 + t1094 * t478, -pkin(1) * t493 + pkin(7) * t483 + t1090 * t472 + t1094 * t470;];
tauB_reg  = t1;