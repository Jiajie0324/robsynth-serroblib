% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PRRRR7
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
%   pkin=[a2,a3,a4,a5,d2,d3,d4,d5,theta1]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:13
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PRRRR7_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR7_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRR7_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRRR7_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRR7_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRRR7_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:13:23
% EndTime: 2019-12-05 17:13:38
% DurationCPUTime: 15.90s
% Computational Cost: add. (91762->656), mult. (193387->919), div. (0->0), fcn. (137898->10), ass. (0->441)
t1074 = sin(qJ(5));
t1067 = qJDD(3) + qJDD(4);
t1061 = qJDD(5) + t1067;
t1075 = sin(qJ(4));
t1079 = cos(qJ(4));
t1080 = cos(qJ(3));
t1140 = qJD(2) * t1080;
t1076 = sin(qJ(3));
t1141 = qJD(2) * t1076;
t1026 = t1075 * t1141 - t1079 * t1140;
t1027 = (t1075 * t1080 + t1076 * t1079) * qJD(2);
t1078 = cos(qJ(5));
t970 = t1026 * t1078 + t1027 * t1074;
t972 = -t1026 * t1074 + t1027 * t1078;
t919 = t972 * t970;
t1169 = -t919 + t1061;
t1175 = t1074 * t1169;
t988 = t1027 * t1026;
t1167 = -t988 + t1067;
t1174 = t1075 * t1167;
t1173 = t1078 * t1169;
t1172 = t1079 * t1167;
t1116 = qJD(3) * t1141;
t1123 = t1080 * qJDD(2);
t1096 = 0.2e1 * t1116 - t1123;
t1000 = t1096 * t1080;
t1058 = qJD(3) * t1140;
t1125 = t1076 * qJDD(2);
t1037 = t1058 + t1125;
t1097 = -t1116 + t1123;
t1108 = t1075 * t1037 - t1079 * t1097;
t1098 = qJD(4) * t1027 + t1108;
t947 = -qJD(4) * t1026 + t1037 * t1079 + t1075 * t1097;
t873 = -qJD(5) * t970 - t1074 * t1098 + t1078 * t947;
t1068 = qJD(3) + qJD(4);
t1062 = qJD(5) + t1068;
t960 = t1062 * t970;
t1171 = -t960 + t873;
t1022 = t1068 * t1026;
t1170 = -t1022 + t947;
t1168 = -t947 - t1022;
t1071 = sin(pkin(9));
t1158 = g(3) - qJDD(1);
t1166 = t1071 * t1158;
t1072 = cos(pkin(9));
t1165 = t1072 * t1158;
t1044 = g(1) * t1071 - g(2) * t1072;
t1029 = t1072 * t1044;
t1045 = g(1) * t1072 + g(2) * t1071;
t1164 = -t1045 * t1071 + t1029;
t1110 = t1074 * t947 + t1078 * t1098;
t851 = (qJD(5) - t1062) * t972 + t1110;
t929 = (qJD(4) - t1068) * t1027 + t1108;
t968 = t970 ^ 2;
t969 = t972 ^ 2;
t1163 = qJD(2) ^ 2;
t1162 = t1026 ^ 2;
t1025 = t1027 ^ 2;
t1060 = t1062 ^ 2;
t1066 = t1068 ^ 2;
t1161 = t1080 ^ 2;
t1053 = t1076 * t1163 * t1080;
t1046 = qJDD(3) + t1053;
t1077 = sin(qJ(2));
t1081 = cos(qJ(2));
t1020 = -t1045 * t1081 - t1077 * t1158;
t995 = -pkin(2) * t1163 + qJDD(2) * pkin(6) + t1020;
t962 = t1044 * t1080 + t1076 * t995;
t920 = (-t1037 + t1058) * pkin(7) + t1046 * pkin(3) - t962;
t1048 = qJD(3) * pkin(3) - pkin(7) * t1141;
t1064 = t1161 * t1163;
t965 = -t1044 * t1076 + t1080 * t995;
t925 = -pkin(3) * t1064 + pkin(7) * t1097 - qJD(3) * t1048 + t965;
t865 = t1075 * t925 - t1079 * t920;
t868 = t1075 * t920 + t1079 * t925;
t811 = t1075 * t868 - t1079 * t865;
t1160 = pkin(3) * t811;
t876 = -t1075 * t929 + t1079 * t1168;
t1159 = pkin(3) * t876;
t1012 = pkin(4) * t1068 - pkin(8) * t1027;
t1019 = -t1045 * t1077 + t1081 * t1158;
t994 = -qJDD(2) * pkin(2) - pkin(6) * t1163 + t1019;
t941 = -pkin(3) * t1097 - pkin(7) * t1064 + t1048 * t1141 + t994;
t863 = pkin(4) * t1098 - pkin(8) * t1162 + t1012 * t1027 + t941;
t1157 = t1074 * t863;
t911 = t919 + t1061;
t1156 = t1074 * t911;
t825 = pkin(4) * t1167 + pkin(8) * t1168 - t865;
t827 = -pkin(4) * t1162 - pkin(8) * t1098 - t1012 * t1068 + t868;
t779 = t1074 * t827 - t1078 * t825;
t780 = t1074 * t825 + t1078 * t827;
t739 = t1074 * t780 - t1078 * t779;
t1155 = t1075 * t739;
t1154 = t1075 * t941;
t983 = t988 + t1067;
t1153 = t1075 * t983;
t1152 = t1076 * t811;
t1151 = t1076 * t994;
t1150 = t1078 * t863;
t1149 = t1078 * t911;
t1148 = t1079 * t739;
t1147 = t1079 * t941;
t1146 = t1079 * t983;
t1145 = t1080 * t811;
t1144 = t1080 * t994;
t1143 = t972 * t1062;
t1142 = qJD(2) * qJD(3);
t1139 = t1027 * t1068;
t1138 = t1062 * t1074;
t1137 = t1062 * t1078;
t1136 = t1068 * t1075;
t1135 = t1068 * t1079;
t1069 = t1076 ^ 2;
t1134 = t1069 * t1163;
t1133 = t1071 * t1044;
t1131 = t1076 * t1046;
t1047 = qJDD(3) - t1053;
t1130 = t1076 * t1047;
t1129 = t1080 * t1046;
t1128 = t1080 * t1047;
t1124 = t1077 * qJDD(2);
t1122 = t1081 * qJDD(2);
t1121 = t1069 + t1161;
t1120 = t1077 * t919;
t1119 = t1081 * t919;
t740 = t1074 * t779 + t1078 * t780;
t711 = t1075 * t740 + t1148;
t738 = pkin(4) * t739;
t1118 = pkin(3) * t711 + t738;
t854 = t960 + t873;
t798 = -t1074 * t851 - t1078 * t854;
t800 = t1074 * t854 - t1078 * t851;
t755 = t1075 * t800 + t1079 * t798;
t796 = pkin(4) * t798;
t1117 = pkin(3) * t755 + t796;
t1115 = t1077 * t988;
t1114 = t1081 * t988;
t1039 = t1121 * qJDD(2);
t1042 = t1064 + t1134;
t906 = t1076 * t962 + t1080 * t965;
t1092 = pkin(2) * t1042 + pkin(6) * t1039 + t906;
t992 = t1039 * t1077 + t1042 * t1081;
t871 = -pkin(1) * t992 - t1092;
t993 = t1039 * t1081 - t1042 * t1077;
t1113 = qJ(1) * t993 + t871;
t1040 = t1081 * t1163 + t1124;
t1041 = -t1077 * t1163 + t1122;
t986 = -pkin(1) * t1041 + t1019;
t1112 = qJ(1) * t1040 - t986;
t987 = pkin(1) * t1040 + t1020;
t1111 = qJ(1) * t1041 - t987;
t812 = t1075 * t865 + t1079 * t868;
t1109 = t1019 * t1077 + t1020 * t1081;
t1107 = -t1045 * t1072 - t1133;
t1010 = -t1025 - t1066;
t934 = t1010 * t1079 - t1153;
t1106 = pkin(3) * t934 - t868;
t1105 = t1077 * t1053;
t1104 = t1081 * t1053;
t1103 = -pkin(2) * t994 + pkin(6) * t906;
t909 = -t1060 - t968;
t859 = t1074 * t909 + t1173;
t1102 = pkin(4) * t859 - t779;
t999 = pkin(5) * t1040 - t1044 * t1081;
t1101 = -pkin(5) * t1041 - t1044 * t1077;
t904 = t1076 * t965 - t1080 * t962;
t953 = t1019 * t1081 - t1020 * t1077;
t973 = -t1066 - t1162;
t913 = t1075 * t973 + t1172;
t1100 = pkin(3) * t913 - t865;
t945 = -t969 - t1060;
t882 = t1078 * t945 - t1156;
t1099 = pkin(4) * t882 - t780;
t860 = t1078 * t909 - t1175;
t803 = t1075 * t860 + t1079 * t859;
t1095 = pkin(3) * t803 + t1102;
t1082 = qJD(3) ^ 2;
t1052 = -t1064 - t1082;
t1007 = t1052 * t1080 - t1131;
t1094 = -pkin(2) * t1096 + pkin(6) * t1007 - t1144;
t1050 = -t1082 - t1134;
t1009 = -t1050 * t1076 - t1128;
t1036 = 0.2e1 * t1058 + t1125;
t1093 = -pkin(2) * t1036 + pkin(6) * t1009 + t1151;
t883 = -t1074 * t945 - t1149;
t818 = t1075 * t883 + t1079 * t882;
t1091 = pkin(3) * t818 + t1099;
t712 = t1079 * t740 - t1155;
t734 = -pkin(4) * t863 + pkin(8) * t740;
t694 = -pkin(3) * t863 + pkin(7) * t712 - pkin(8) * t1155 + t1079 * t734;
t698 = -pkin(7) * t711 - pkin(8) * t1148 - t1075 * t734;
t700 = -t1076 * t711 + t1080 * t712;
t1090 = -pkin(2) * t863 + pkin(6) * t700 + t1076 * t698 + t1080 * t694;
t897 = -t968 - t969;
t724 = -pkin(4) * t897 + pkin(8) * t800 + t740;
t726 = -pkin(8) * t798 - t739;
t757 = -t1075 * t798 + t1079 * t800;
t702 = -pkin(3) * t897 + pkin(7) * t757 + t1075 * t726 + t1079 * t724;
t703 = -pkin(7) * t755 - t1075 * t724 + t1079 * t726;
t722 = -t1076 * t755 + t1080 * t757;
t1089 = -pkin(2) * t897 + pkin(6) * t722 + t1076 * t703 + t1080 * t702;
t850 = (qJD(5) + t1062) * t972 + t1110;
t776 = -pkin(4) * t850 + pkin(8) * t860 - t1150;
t804 = -t1075 * t859 + t1079 * t860;
t807 = -pkin(8) * t859 + t1157;
t727 = -pkin(3) * t850 + pkin(7) * t804 + t1075 * t807 + t1079 * t776;
t732 = -pkin(7) * t803 - t1075 * t776 + t1079 * t807;
t767 = -t1076 * t803 + t1080 * t804;
t1088 = -pkin(2) * t850 + pkin(6) * t767 + t1076 * t732 + t1080 * t727;
t782 = -pkin(4) * t1171 + pkin(8) * t883 + t1157;
t813 = -pkin(8) * t882 + t1150;
t819 = -t1075 * t882 + t1079 * t883;
t730 = -pkin(3) * t1171 + pkin(7) * t819 + t1075 * t813 + t1079 * t782;
t736 = -pkin(7) * t818 - t1075 * t782 + t1079 * t813;
t771 = -t1076 * t818 + t1080 * t819;
t1087 = -pkin(2) * t1171 + pkin(6) * t771 + t1076 * t736 + t1080 * t730;
t878 = -t1075 * t1168 - t1079 * t929;
t950 = -t1025 - t1162;
t781 = -pkin(3) * t950 + pkin(7) * t878 + t812;
t784 = -pkin(7) * t876 - t811;
t817 = -t1076 * t876 + t1080 * t878;
t1086 = -pkin(2) * t950 + pkin(6) * t817 + t1076 * t784 + t1080 * t781;
t914 = t1079 * t973 - t1174;
t928 = (qJD(4) + t1068) * t1027 + t1108;
t832 = -pkin(3) * t928 + pkin(7) * t914 - t1147;
t862 = -t1076 * t913 + t1080 * t914;
t874 = -pkin(7) * t913 + t1154;
t1085 = -pkin(2) * t928 + pkin(6) * t862 + t1076 * t874 + t1080 * t832;
t935 = -t1010 * t1075 - t1146;
t839 = -pkin(3) * t1170 + pkin(7) * t935 + t1154;
t880 = -t1076 * t934 + t1080 * t935;
t892 = -pkin(7) * t934 + t1147;
t1084 = -pkin(2) * t1170 + pkin(6) * t880 + t1076 * t892 + t1080 * t839;
t769 = t1080 * t812 - t1152;
t797 = -pkin(3) * t941 + pkin(7) * t812;
t1083 = -pkin(2) * t941 + pkin(6) * t769 - pkin(7) * t1152 + t1080 * t797;
t1051 = t1064 - t1082;
t1049 = t1082 - t1134;
t1043 = -t1064 + t1134;
t1035 = t1121 * t1142;
t1018 = -t1025 + t1066;
t1017 = -t1066 + t1162;
t1016 = qJDD(3) * t1077 + t1035 * t1081;
t1015 = t1037 * t1080 - t1069 * t1142;
t1014 = -qJDD(3) * t1081 + t1035 * t1077;
t1013 = -t1076 * t1097 - t1142 * t1161;
t1008 = -t1049 * t1076 + t1129;
t1006 = t1051 * t1080 - t1130;
t1005 = t1050 * t1080 - t1130;
t1004 = t1049 * t1080 + t1131;
t1003 = t1052 * t1076 + t1129;
t1002 = t1051 * t1076 + t1128;
t1001 = (t1037 + t1058) * t1076;
t990 = -t1036 * t1076 - t1000;
t989 = t1036 * t1080 - t1076 * t1096;
t985 = t1025 - t1162;
t981 = t1015 * t1081 - t1105;
t980 = t1013 * t1081 + t1105;
t979 = t1015 * t1077 + t1104;
t978 = t1013 * t1077 - t1104;
t977 = t1008 * t1081 + t1076 * t1124;
t976 = t1006 * t1081 + t1077 * t1123;
t975 = t1008 * t1077 - t1076 * t1122;
t974 = t1006 * t1077 - t1080 * t1122;
t967 = t1009 * t1081 + t1036 * t1077;
t966 = t1007 * t1081 + t1077 * t1096;
t964 = t1009 * t1077 - t1036 * t1081;
t963 = t1007 * t1077 - t1081 * t1096;
t959 = -t969 + t1060;
t958 = t968 - t1060;
t957 = (-t1026 * t1079 + t1027 * t1075) * t1068;
t956 = (-t1026 * t1075 - t1027 * t1079) * t1068;
t949 = t1043 * t1077 + t1081 * t990;
t948 = -t1043 * t1081 + t1077 * t990;
t943 = -pkin(6) * t1005 + t1144;
t942 = -pkin(6) * t1003 + t1151;
t940 = pkin(1) * t1044 + pkin(5) * t1109;
t939 = t1017 * t1079 - t1153;
t938 = -t1018 * t1075 + t1172;
t937 = t1017 * t1075 + t1146;
t936 = t1018 * t1079 + t1174;
t927 = -pkin(2) * t1005 + t965;
t926 = -pkin(2) * t1003 + t962;
t924 = -t1027 * t1136 + t1079 * t947;
t923 = t1027 * t1135 + t1075 * t947;
t922 = t1026 * t1135 + t1075 * t1098;
t921 = t1026 * t1136 - t1079 * t1098;
t917 = t969 - t968;
t908 = (t1074 * t972 - t1078 * t970) * t1062;
t907 = (-t1074 * t970 - t1078 * t972) * t1062;
t903 = -t1076 * t956 + t1080 * t957;
t902 = t1076 * t957 + t1080 * t956;
t901 = t1067 * t1077 + t1081 * t903;
t900 = -t1067 * t1081 + t1077 * t903;
t899 = -pkin(1) * t963 - t1094;
t898 = -pkin(1) * t964 - t1093;
t896 = -pkin(5) * t992 - t1081 * t904;
t895 = pkin(5) * t993 - t1077 * t904;
t894 = t1077 * t994 + t1081 * t906;
t893 = t1077 * t906 - t1081 * t994;
t891 = -t1076 * t937 + t1080 * t939;
t890 = -t1076 * t936 + t1080 * t938;
t889 = t1076 * t939 + t1080 * t937;
t888 = t1076 * t938 + t1080 * t936;
t887 = t1078 * t958 - t1156;
t886 = -t1074 * t959 + t1173;
t885 = t1074 * t958 + t1149;
t884 = t1078 * t959 + t1175;
t879 = t1076 * t935 + t1080 * t934;
t877 = -t1075 * t1170 - t1079 * t928;
t875 = -t1075 * t928 + t1079 * t1170;
t872 = -qJD(5) * t972 - t1110;
t870 = -t1076 * t923 + t1080 * t924;
t869 = -t1076 * t921 + t1080 * t922;
t867 = t1076 * t924 + t1080 * t923;
t866 = t1076 * t922 + t1080 * t921;
t861 = t1076 * t914 + t1080 * t913;
t857 = -pkin(5) * t964 - t1077 * t927 + t1081 * t943;
t856 = -pkin(5) * t963 - t1077 * t926 + t1081 * t942;
t849 = -t1075 * t907 + t1079 * t908;
t848 = t1075 * t908 + t1079 * t907;
t847 = t1081 * t870 + t1115;
t846 = t1081 * t869 - t1115;
t845 = t1078 * t873 - t1138 * t972;
t844 = t1077 * t870 - t1114;
t843 = t1077 * t869 + t1114;
t842 = t1074 * t873 + t1137 * t972;
t841 = -t1074 * t872 + t1137 * t970;
t840 = t1078 * t872 + t1138 * t970;
t838 = -pkin(1) * t1005 + pkin(5) * t967 + t1077 * t943 + t1081 * t927;
t837 = -pkin(1) * t1003 + pkin(5) * t966 + t1077 * t942 + t1081 * t926;
t836 = -t1077 * t929 + t1081 * t891;
t835 = -t1077 * t1168 + t1081 * t890;
t834 = t1077 * t891 + t1081 * t929;
t833 = t1077 * t890 + t1081 * t1168;
t831 = t1077 * t1170 + t1081 * t880;
t830 = t1077 * t880 - t1081 * t1170;
t829 = t1077 * t928 + t1081 * t862;
t828 = t1077 * t862 - t1081 * t928;
t826 = -pkin(1) * t893 - t1103;
t823 = -t1075 * t885 + t1079 * t887;
t822 = -t1075 * t884 + t1079 * t886;
t821 = t1075 * t887 + t1079 * t885;
t820 = t1075 * t886 + t1079 * t884;
t816 = -t1076 * t875 + t1080 * t877;
t815 = t1076 * t878 + t1080 * t876;
t814 = t1076 * t877 + t1080 * t875;
t810 = -pkin(5) * t893 + (pkin(2) * t1077 - pkin(6) * t1081) * t904;
t809 = t1077 * t985 + t1081 * t816;
t808 = t1077 * t816 - t1081 * t985;
t806 = t1077 * t950 + t1081 * t817;
t805 = t1077 * t817 - t1081 * t950;
t802 = -pkin(2) * t879 - t1106;
t801 = -t1074 * t1171 - t1078 * t850;
t799 = -t1074 * t850 + t1078 * t1171;
t795 = -t1076 * t848 + t1080 * t849;
t794 = t1076 * t849 + t1080 * t848;
t793 = -t1075 * t842 + t1079 * t845;
t792 = -t1075 * t840 + t1079 * t841;
t791 = t1075 * t845 + t1079 * t842;
t790 = t1075 * t841 + t1079 * t840;
t789 = -pkin(2) * t861 - t1100;
t788 = t1061 * t1077 + t1081 * t795;
t787 = -t1061 * t1081 + t1077 * t795;
t786 = pkin(5) * t894 + (-pkin(2) * t1081 - pkin(6) * t1077 - pkin(1)) * t904;
t785 = -pkin(2) * t815 - t1159;
t783 = -pkin(6) * t879 - t1076 * t839 + t1080 * t892;
t777 = -pkin(6) * t861 - t1076 * t832 + t1080 * t874;
t775 = -t1076 * t821 + t1080 * t823;
t774 = -t1076 * t820 + t1080 * t822;
t773 = t1076 * t823 + t1080 * t821;
t772 = t1076 * t822 + t1080 * t820;
t770 = t1076 * t819 + t1080 * t818;
t768 = t1076 * t812 + t1145;
t766 = t1076 * t804 + t1080 * t803;
t765 = t1077 * t941 + t1081 * t769;
t764 = t1077 * t769 - t1081 * t941;
t763 = -t1077 * t851 + t1081 * t775;
t762 = t1077 * t854 + t1081 * t774;
t761 = t1077 * t775 + t1081 * t851;
t760 = t1077 * t774 - t1081 * t854;
t759 = -pkin(1) * t830 - t1084;
t758 = -t1075 * t799 + t1079 * t801;
t756 = t1075 * t801 + t1079 * t799;
t754 = t1077 * t1171 + t1081 * t771;
t753 = t1077 * t771 - t1081 * t1171;
t752 = -t1076 * t791 + t1080 * t793;
t751 = -t1076 * t790 + t1080 * t792;
t750 = t1076 * t793 + t1080 * t791;
t749 = t1076 * t792 + t1080 * t790;
t748 = -pkin(1) * t828 - t1085;
t747 = t1081 * t752 + t1120;
t746 = t1081 * t751 - t1120;
t745 = t1077 * t752 - t1119;
t744 = t1077 * t751 + t1119;
t743 = t1077 * t850 + t1081 * t767;
t742 = t1077 * t767 - t1081 * t850;
t741 = -pkin(2) * t768 - t1160;
t737 = -pkin(5) * t830 - t1077 * t802 + t1081 * t783;
t735 = -pkin(5) * t828 - t1077 * t789 + t1081 * t777;
t733 = -pkin(1) * t879 + pkin(5) * t831 + t1077 * t783 + t1081 * t802;
t731 = -pkin(6) * t815 - t1076 * t781 + t1080 * t784;
t729 = -pkin(1) * t861 + pkin(5) * t829 + t1077 * t777 + t1081 * t789;
t728 = -pkin(6) * t768 - pkin(7) * t1145 - t1076 * t797;
t725 = -pkin(2) * t770 - t1091;
t723 = -t1076 * t756 + t1080 * t758;
t721 = t1076 * t758 + t1080 * t756;
t720 = t1076 * t757 + t1080 * t755;
t719 = t1077 * t917 + t1081 * t723;
t718 = t1077 * t723 - t1081 * t917;
t717 = t1077 * t897 + t1081 * t722;
t716 = t1077 * t722 - t1081 * t897;
t715 = -pkin(1) * t805 - t1086;
t714 = -pkin(2) * t766 - t1095;
t713 = -pkin(5) * t805 - t1077 * t785 + t1081 * t731;
t710 = -pkin(1) * t764 - t1083;
t709 = -pkin(1) * t815 + pkin(5) * t806 + t1077 * t731 + t1081 * t785;
t708 = -pkin(2) * t720 - t1117;
t707 = -pkin(6) * t770 - t1076 * t730 + t1080 * t736;
t706 = -pkin(5) * t764 - t1077 * t741 + t1081 * t728;
t705 = -pkin(6) * t766 - t1076 * t727 + t1080 * t732;
t704 = -pkin(1) * t768 + pkin(5) * t765 + t1077 * t728 + t1081 * t741;
t701 = -pkin(1) * t753 - t1087;
t699 = t1076 * t712 + t1080 * t711;
t697 = t1077 * t863 + t1081 * t700;
t696 = t1077 * t700 - t1081 * t863;
t695 = -pkin(1) * t742 - t1088;
t693 = -pkin(5) * t753 - t1077 * t725 + t1081 * t707;
t692 = -pkin(1) * t770 + pkin(5) * t754 + t1077 * t707 + t1081 * t725;
t691 = -pkin(5) * t742 - t1077 * t714 + t1081 * t705;
t690 = -pkin(1) * t766 + pkin(5) * t743 + t1077 * t705 + t1081 * t714;
t689 = -pkin(2) * t699 - t1118;
t688 = -pkin(6) * t720 - t1076 * t702 + t1080 * t703;
t687 = -pkin(1) * t716 - t1089;
t686 = -pkin(6) * t699 - t1076 * t694 + t1080 * t698;
t685 = -pkin(5) * t716 - t1077 * t708 + t1081 * t688;
t684 = -pkin(1) * t720 + pkin(5) * t717 + t1077 * t688 + t1081 * t708;
t683 = -pkin(1) * t696 - t1090;
t682 = -pkin(5) * t696 - t1077 * t689 + t1081 * t686;
t681 = -pkin(1) * t699 + pkin(5) * t697 + t1077 * t686 + t1081 * t689;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1166, -t1165, -t1164, -qJ(1) * t1164, 0, 0, t1072 * t1041, 0, -t1072 * t1040, t1071 * qJDD(2), t1071 * t1112 + t1072 * t1101, t1071 * t1111 + t1072 * t999, t1072 * t953, -qJ(1) * (t1071 * t1109 + t1029) - (pkin(1) * t1071 - pkin(5) * t1072) * t953, t1001 * t1071 + t1072 * t981, t1071 * t989 + t1072 * t949, t1004 * t1071 + t1072 * t977, -t1000 * t1071 + t1072 * t980, t1002 * t1071 + t1072 * t976, t1072 * t1016, t1072 * t856 - t1071 * t899 - qJ(1) * (-t1003 * t1072 + t1071 * t966), t1072 * t857 - t1071 * t898 - qJ(1) * (-t1005 * t1072 + t1071 * t967), -t1071 * t1113 + t1072 * t896, t1072 * t810 - t1071 * t826 - qJ(1) * (t1071 * t894 - t1072 * t904), t1071 * t867 + t1072 * t847, t1071 * t814 + t1072 * t809, t1071 * t888 + t1072 * t835, t1071 * t866 + t1072 * t846, t1071 * t889 + t1072 * t836, t1071 * t902 + t1072 * t901, t1072 * t735 - t1071 * t748 - qJ(1) * (t1071 * t829 - t1072 * t861), t1072 * t737 - t1071 * t759 - qJ(1) * (t1071 * t831 - t1072 * t879), t1072 * t713 - t1071 * t715 - qJ(1) * (t1071 * t806 - t1072 * t815), t1072 * t706 - t1071 * t710 - qJ(1) * (t1071 * t765 - t1072 * t768), t1071 * t750 + t1072 * t747, t1071 * t721 + t1072 * t719, t1071 * t772 + t1072 * t762, t1071 * t749 + t1072 * t746, t1071 * t773 + t1072 * t763, t1071 * t794 + t1072 * t788, t1072 * t691 - t1071 * t695 - qJ(1) * (t1071 * t743 - t1072 * t766), t1072 * t693 - t1071 * t701 - qJ(1) * (t1071 * t754 - t1072 * t770), t1072 * t685 - t1071 * t687 - qJ(1) * (t1071 * t717 - t1072 * t720), t1072 * t682 - t1071 * t683 - qJ(1) * (t1071 * t697 - t1072 * t699); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1165, -t1166, t1107, qJ(1) * t1107, 0, 0, t1071 * t1041, 0, -t1071 * t1040, -t1072 * qJDD(2), t1071 * t1101 - t1072 * t1112, t1071 * t999 - t1072 * t1111, t1071 * t953, qJ(1) * (t1072 * t1109 - t1133) - (-pkin(1) * t1072 - pkin(5) * t1071) * t953, -t1001 * t1072 + t1071 * t981, t1071 * t949 - t1072 * t989, -t1004 * t1072 + t1071 * t977, t1000 * t1072 + t1071 * t980, -t1002 * t1072 + t1071 * t976, t1071 * t1016, t1071 * t856 + t1072 * t899 + qJ(1) * (t1003 * t1071 + t1072 * t966), t1071 * t857 + t1072 * t898 + qJ(1) * (t1005 * t1071 + t1072 * t967), t1071 * t896 + t1072 * t1113, t1071 * t810 + t1072 * t826 + qJ(1) * (t1071 * t904 + t1072 * t894), t1071 * t847 - t1072 * t867, t1071 * t809 - t1072 * t814, t1071 * t835 - t1072 * t888, t1071 * t846 - t1072 * t866, t1071 * t836 - t1072 * t889, t1071 * t901 - t1072 * t902, t1071 * t735 + t1072 * t748 + qJ(1) * (t1071 * t861 + t1072 * t829), t1071 * t737 + t1072 * t759 + qJ(1) * (t1071 * t879 + t1072 * t831), t1071 * t713 + t1072 * t715 + qJ(1) * (t1071 * t815 + t1072 * t806), t1071 * t706 + t1072 * t710 + qJ(1) * (t1071 * t768 + t1072 * t765), t1071 * t747 - t1072 * t750, t1071 * t719 - t1072 * t721, t1071 * t762 - t1072 * t772, t1071 * t746 - t1072 * t749, t1071 * t763 - t1072 * t773, t1071 * t788 - t1072 * t794, t1071 * t691 + t1072 * t695 + qJ(1) * (t1071 * t766 + t1072 * t743), t1071 * t693 + t1072 * t701 + qJ(1) * (t1071 * t770 + t1072 * t754), t1071 * t685 + t1072 * t687 + qJ(1) * (t1071 * t720 + t1072 * t717), t1071 * t682 + t1072 * t683 + qJ(1) * (t1071 * t699 + t1072 * t697); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1044, t1045, 0, 0, 0, 0, t1040, 0, t1041, 0, -t999, t1101, t1109, t940, t979, t948, t975, t978, t974, t1014, t837, t838, t895, t786, t844, t808, t833, t843, t834, t900, t729, t733, t709, t704, t745, t718, t760, t744, t761, t787, t690, t692, t684, t681; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1158, -t1044, 0, 0, 0, t1041, 0, -t1040, 0, t1101, t999, t953, pkin(5) * t953, t981, t949, t977, t980, t976, t1016, t856, t857, t896, t810, t847, t809, t835, t846, t836, t901, t735, t737, t713, t706, t747, t719, t762, t746, t763, t788, t691, t693, t685, t682; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1158, 0, -t1045, 0, 0, 0, 0, 0, 0, -qJDD(2), t986, t987, 0, pkin(1) * t953, -t1001, -t989, -t1004, t1000, -t1002, 0, t899, t898, t871, t826, -t867, -t814, -t888, -t866, -t889, -t902, t748, t759, t715, t710, -t750, -t721, -t772, -t749, -t773, -t794, t695, t701, t687, t683; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1044, t1045, 0, 0, 0, 0, t1040, 0, t1041, 0, -t999, t1101, t1109, t940, t979, t948, t975, t978, t974, t1014, t837, t838, t895, t786, t844, t808, t833, t843, t834, t900, t729, t733, t709, t704, t745, t718, t760, t744, t761, t787, t690, t692, t684, t681; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t1163, 0, 0, -t1044, t1019, 0, t1015, t990, t1008, t1013, t1006, t1035, t942, t943, -t904, -pkin(6) * t904, t870, t816, t890, t869, t891, t903, t777, t783, t731, t728, t752, t723, t774, t751, t775, t795, t705, t707, t688, t686; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1163, 0, qJDD(2), 0, t1044, 0, t1020, 0, t1053, -t1043, -t1125, -t1053, -t1123, -qJDD(3), t926, t927, 0, -pkin(2) * t904, -t988, -t985, t1168, t988, t929, -t1067, t789, t802, t785, t741, -t919, -t917, -t854, t919, t851, -t1061, t714, t725, t708, t689; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t1019, -t1020, 0, 0, t1001, t989, t1004, -t1000, t1002, 0, t1094, t1093, t1092, t1103, t867, t814, t888, t866, t889, t902, t1085, t1084, t1086, t1083, t750, t721, t772, t749, t773, t794, t1088, t1087, t1089, t1090; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1037, -t1096, t1046, -t1058, t1051, t1058, 0, t994, t962, 0, t924, t877, t938, t922, t939, t957, t874, t892, t784, -pkin(7) * t811, t793, t758, t822, t792, t823, t849, t732, t736, t703, t698; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1116, t1036, t1049, t1097, t1047, -t1116, -t994, 0, t965, 0, t923, t875, t936, t921, t937, t956, t832, t839, t781, t797, t791, t756, t820, t790, t821, t848, t727, t730, t702, t694; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1053, t1043, t1125, t1053, t1123, qJDD(3), -t962, -t965, 0, 0, t988, t985, -t1168, -t988, -t929, t1067, t1100, t1106, t1159, t1160, t919, t917, t854, -t919, -t851, t1061, t1095, t1091, t1117, t1118; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t947, -t928, t1167, t1022, t1017, -t1022, 0, t941, t865, 0, t845, t801, t886, t841, t887, t908, t807, t813, t726, -pkin(8) * t739; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1139, t1170, t1018, -t1098, t983, -t1139, -t941, 0, t868, 0, t842, t799, t884, t840, t885, t907, t776, t782, t724, t734; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t988, t985, -t1168, -t988, -t929, t1067, -t865, -t868, 0, 0, t919, t917, t854, -t919, -t851, t1061, t1102, t1099, t796, t738; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t873, -t850, t1169, t960, t958, -t960, 0, t863, t779, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1143, t1171, t959, t872, t911, -t1143, -t863, 0, t780, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t919, t917, t854, -t919, -t851, t1061, -t779, -t780, 0, 0;];
m_new_reg = t1;