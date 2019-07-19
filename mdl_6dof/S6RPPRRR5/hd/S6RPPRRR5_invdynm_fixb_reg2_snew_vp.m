% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S6RPPRRR5
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6]';
%
% Output:
% m_new_reg [(3*7)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 15:51
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S6RPPRRR5_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR5_invdynm_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR5_invdynm_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRRR5_invdynm_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRRR5_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRRR5_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 15:50:57
% EndTime: 2019-05-05 15:51:13
% DurationCPUTime: 17.03s
% Computational Cost: add. (73132->694), mult. (144166->811), div. (0->0), fcn. (90505->8), ass. (0->441)
t1029 = sin(qJ(5));
t1021 = qJDD(4) + qJDD(5);
t1030 = sin(qJ(4));
t1033 = cos(qJ(5));
t1034 = cos(qJ(4));
t974 = (t1029 * t1034 + t1030 * t1033) * qJD(1);
t1146 = qJD(1) * t1034;
t1147 = qJD(1) * t1030;
t976 = -t1029 * t1147 + t1033 * t1146;
t1167 = t976 * t974;
t1195 = t1021 - t1167;
t1198 = t1029 * t1195;
t1197 = t1033 * t1195;
t1141 = qJD(4) + qJD(5);
t1105 = t1141 * t974;
t1118 = qJD(4) * t1146;
t1137 = t1030 * qJDD(1);
t1051 = -t1118 - t1137;
t1119 = qJD(4) * t1147;
t1136 = t1034 * qJDD(1);
t986 = -t1119 + t1136;
t899 = -t974 * qJD(5) + t1029 * t1051 + t1033 * t986;
t1196 = t899 - t1105;
t1028 = sin(qJ(6));
t1032 = cos(qJ(6));
t935 = t1028 * t976 - t1032 * t1141;
t937 = t1028 * t1141 + t1032 * t976;
t895 = t937 * t935;
t1117 = t1029 * t986 - t1033 * t1051;
t898 = -t976 * qJD(5) - t1117;
t896 = qJDD(6) - t898;
t1192 = -t895 + t896;
t1194 = t1028 * t1192;
t1193 = t1032 * t1192;
t1135 = t1141 ^ 2;
t1022 = qJDD(1) * qJ(2);
t1031 = sin(qJ(1));
t1035 = cos(qJ(1));
t999 = t1035 * g(1) + t1031 * g(2);
t1061 = 0.2e1 * qJD(2) * qJD(1) - t999;
t1049 = qJDD(3) + t1061;
t1045 = t1022 + t1049;
t1038 = qJD(1) ^ 2;
t1172 = pkin(1) + qJ(3);
t1190 = t1038 * t1172;
t1041 = -qJDD(1) * pkin(7) + t1045 - t1190;
t1040 = t1034 * t1041;
t1142 = t1034 * t1038;
t1148 = qJD(1) * qJD(4);
t1039 = t1040 - t986 * pkin(8) + qJDD(4) * pkin(4) + (-pkin(4) * t1142 - pkin(8) * t1148 + g(3)) * t1030;
t1023 = t1030 ^ 2;
t1144 = t1023 * t1038;
t917 = t1034 * g(3) - t1030 * t1041;
t997 = qJD(4) * pkin(4) - pkin(8) * t1146;
t886 = -pkin(4) * t1144 + pkin(8) * t1051 - qJD(4) * t997 - t917;
t823 = t1029 * t1039 + t1033 * t886;
t918 = pkin(5) * t974 - pkin(9) * t976;
t781 = -pkin(5) * t1135 + t1021 * pkin(9) - t974 * t918 + t823;
t1104 = t1141 * t976;
t1026 = t1038 * pkin(7);
t998 = t1031 * g(1) - t1035 * g(2);
t1083 = -qJDD(2) + t998;
t1048 = t1038 * qJ(2) + t1083;
t1042 = qJDD(1) * t1172 + t1048;
t1178 = 2 * qJD(3);
t893 = -pkin(8) * t1144 - t1026 - t1051 * pkin(4) + (t1034 * t997 + t1178) * qJD(1) + t1042;
t782 = -t1196 * pkin(9) + (-t898 + t1104) * pkin(5) + t893;
t728 = t1028 * t781 - t1032 * t782;
t729 = t1028 * t782 + t1032 * t781;
t697 = t1028 * t728 + t1032 * t729;
t916 = t1030 * g(3) + t1040;
t866 = -t1030 * t916 - t1034 * t917;
t1177 = pkin(2) + pkin(3);
t865 = -t1030 * t917 + t1034 * t916;
t1191 = t1177 * t865;
t1134 = qJD(1) * t1178;
t1189 = 0.2e1 * qJDD(1) * qJ(3) + t1134;
t822 = t1029 * t886 - t1033 * t1039;
t762 = t1029 * t823 - t1033 * t822;
t1152 = t1034 * t762;
t763 = t1029 * t822 + t1033 * t823;
t719 = t1030 * t763 + t1152;
t761 = pkin(4) * t762;
t1188 = -t1177 * t719 - t761;
t880 = qJD(4) * t976 - t1117;
t883 = t1105 + t899;
t815 = t1029 * t880 - t1033 * t883;
t817 = t1029 * t883 + t1033 * t880;
t758 = t1030 * t817 + t1034 * t815;
t811 = pkin(4) * t815;
t1187 = -t1177 * t758 - t811;
t1037 = qJD(4) ^ 2;
t1002 = -t1037 - t1144;
t1006 = t1030 * t1142;
t996 = qJDD(4) - t1006;
t1149 = t1034 * t996;
t943 = t1002 * t1030 + t1149;
t1186 = -t1177 * t943 - t916;
t1024 = t1034 ^ 2;
t1143 = t1024 * t1038;
t1004 = -t1037 - t1143;
t995 = qJDD(4) + t1006;
t1158 = t1030 * t995;
t945 = t1004 * t1034 - t1158;
t1185 = -t1177 * t945 - t917;
t1103 = t1032 * t1021 - t1028 * t899;
t966 = qJD(6) + t974;
t839 = (-qJD(6) + t966) * t937 + t1103;
t1071 = -t1028 * t1021 - t1032 * t899;
t1047 = -qJD(6) * t935 - t1071;
t906 = t966 * t935;
t841 = t1047 + t906;
t769 = t1028 * t841 + t1032 * t839;
t932 = t935 ^ 2;
t933 = t937 ^ 2;
t859 = t932 + t933;
t1095 = pkin(5) * t859 + pkin(9) * t769 + t697;
t737 = t1029 * t769 + t1033 * t859;
t1078 = pkin(4) * t737 + t1095;
t738 = -t1029 * t859 + t1033 * t769;
t702 = t1030 * t738 + t1034 * t737;
t1184 = -t1177 * t702 - t1078;
t972 = t974 ^ 2;
t912 = -t1135 - t972;
t862 = t1029 * t912 + t1197;
t1084 = -pkin(4) * t862 + t822;
t863 = t1033 * t912 - t1198;
t796 = t1030 * t863 + t1034 * t862;
t1183 = -t1177 * t796 + t1084;
t780 = -t1021 * pkin(5) - pkin(9) * t1135 + t918 * t976 + t822;
t776 = t1032 * t780;
t964 = t966 ^ 2;
t871 = -t964 - t932;
t790 = t1032 * t871 - t1194;
t857 = -qJD(6) * t937 + t1103;
t907 = t966 * t937;
t838 = t857 - t907;
t1132 = pkin(5) * t838 + pkin(9) * t790 - t776;
t744 = t1029 * t790 + t1033 * t838;
t1093 = -pkin(4) * t744 - t1132;
t745 = -t1029 * t838 + t1033 * t790;
t707 = t1030 * t745 + t1034 * t744;
t1182 = -t1177 * t707 + t1093;
t775 = t1028 * t780;
t849 = t895 + t896;
t1156 = t1032 * t849;
t891 = -t933 - t964;
t794 = -t1028 * t891 - t1156;
t842 = (qJD(6) + t966) * t935 + t1071;
t1133 = pkin(5) * t842 + pkin(9) * t794 + t775;
t748 = t1029 * t794 + t1033 * t842;
t1094 = pkin(4) * t748 + t1133;
t749 = -t1029 * t842 + t1033 * t794;
t710 = t1030 * t749 + t1034 * t748;
t1181 = -t1177 * t710 - t1094;
t914 = t1167 + t1021;
t1161 = t1029 * t914;
t973 = t976 ^ 2;
t951 = -t973 - t1135;
t884 = t1033 * t951 - t1161;
t1130 = -pkin(4) * t884 + t823;
t1153 = t1033 * t914;
t885 = -t1029 * t951 - t1153;
t818 = t1030 * t885 + t1034 * t884;
t1180 = -t1177 * t818 + t1130;
t1166 = -pkin(5) * t780 + pkin(9) * t697;
t689 = t1029 * t697 - t1033 * t780;
t1131 = -pkin(4) * t689 - t1166;
t690 = t1029 * t780 + t1033 * t697;
t665 = t1030 * t690 + t1034 * t689;
t1179 = -t1177 * t665 + t1131;
t952 = t1042 + t1134;
t1176 = pkin(2) * t952;
t1138 = qJDD(1) * t1035;
t991 = -t1031 * t1038 + t1138;
t1175 = pkin(6) * t991;
t1139 = qJDD(1) * t1031;
t992 = t1035 * t1038 + t1139;
t1174 = pkin(6) * t992;
t1173 = pkin(7) * t865;
t1171 = pkin(7) - qJ(2);
t1170 = pkin(1) * t1038;
t1169 = pkin(5) * t1029;
t1168 = qJDD(1) * pkin(1);
t931 = -t1026 + t952;
t1165 = -pkin(3) * t931 + pkin(7) * t866;
t1164 = t1028 * t849;
t1163 = t1028 * t966;
t1162 = t1029 * t893;
t1160 = t1030 * t762;
t924 = t1030 * t931;
t985 = 0.2e1 * t1118 + t1137;
t941 = t1030 * t985;
t1157 = t1030 * t996;
t1155 = t1032 * t966;
t1154 = t1033 * t893;
t1151 = t1034 * t931;
t1150 = t1034 * t995;
t1140 = t1023 + t1024;
t993 = t1140 * t1038;
t1129 = pkin(3) * t993 + t866;
t950 = -t1004 * t1030 - t1150;
t987 = -0.2e1 * t1119 + t1136;
t1128 = -pkin(3) * t987 + pkin(7) * t950 + t924;
t947 = t1002 * t1034 - t1157;
t1127 = -pkin(3) * t985 + pkin(7) * t947 - t1151;
t1126 = t935 * t1163;
t1125 = t1029 * t895;
t1124 = t1031 * t1167;
t1123 = t1033 * t895;
t1122 = t1035 * t1167;
t1121 = -pkin(5) * t1033 - pkin(4);
t1120 = -pkin(7) * t945 + t1151;
t696 = t1028 * t729 - t1032 * t728;
t657 = pkin(8) * t690 + (-pkin(9) * t1029 + t1121) * t696;
t662 = -pkin(8) * t689 + (-pkin(9) * t1033 + t1169) * t696;
t1116 = -t1030 * t657 + t1034 * t662;
t767 = t1028 * t839 - t1032 * t841;
t687 = -pkin(9) * t767 - t696;
t668 = pkin(8) * t738 + t1029 * t687 + t1121 * t767;
t673 = -pkin(8) * t737 + t1033 * t687 + t1169 * t767;
t1115 = -t1030 * t668 + t1034 * t673;
t789 = t1028 * t871 + t1193;
t716 = -pkin(5) * t789 + t728;
t734 = -pkin(9) * t789 + t775;
t677 = -pkin(4) * t789 + pkin(8) * t745 + t1029 * t734 + t1033 * t716;
t683 = -pkin(8) * t744 - t1029 * t716 + t1033 * t734;
t1114 = -t1030 * t677 + t1034 * t683;
t793 = t1032 * t891 - t1164;
t718 = -pkin(5) * t793 + t729;
t735 = -pkin(9) * t793 + t776;
t679 = -pkin(4) * t793 + pkin(8) * t749 + t1029 * t735 + t1033 * t718;
t686 = -pkin(8) * t748 - t1029 * t718 + t1033 * t735;
t1113 = -t1030 * t679 + t1034 * t686;
t900 = -t972 - t973;
t722 = -pkin(4) * t900 + pkin(8) * t817 + t763;
t725 = -pkin(8) * t815 - t762;
t1112 = -t1030 * t722 + t1034 * t725;
t878 = (0.2e1 * qJD(5) + qJD(4)) * t976 + t1117;
t773 = -pkin(4) * t878 + pkin(8) * t863 - t1154;
t810 = -pkin(8) * t862 + t1162;
t1111 = -t1030 * t773 + t1034 * t810;
t779 = -pkin(4) * t1196 + pkin(8) * t885 + t1162;
t836 = -pkin(8) * t884 + t1154;
t1110 = -t1030 * t779 + t1034 * t836;
t1043 = -t1022 - t1061;
t953 = -qJDD(3) + t1043 + t1190;
t1108 = -t1031 * t952 - t1035 * t953;
t962 = t1043 + t1170;
t965 = t1048 + t1168;
t1107 = -t1031 * t965 - t1035 * t962;
t1106 = -t1031 * t998 - t1035 * t999;
t1102 = t1029 * t1141;
t1101 = t1033 * t1141;
t666 = -t1030 * t689 + t1034 * t690;
t1100 = -pkin(3) * t696 + pkin(7) * t666 + t1030 * t662 + t1034 * t657;
t703 = -t1030 * t737 + t1034 * t738;
t1099 = -pkin(3) * t767 + pkin(7) * t703 + t1030 * t673 + t1034 * t668;
t708 = -t1030 * t744 + t1034 * t745;
t1098 = -pkin(3) * t789 + pkin(7) * t708 + t1030 * t683 + t1034 * t677;
t711 = -t1030 * t748 + t1034 * t749;
t1097 = -pkin(3) * t793 + pkin(7) * t711 + t1030 * t686 + t1034 * t679;
t760 = -t1030 * t815 + t1034 * t817;
t1096 = -pkin(3) * t900 + pkin(7) * t760 + t1030 * t725 + t1034 * t722;
t797 = -t1030 * t862 + t1034 * t863;
t1092 = -pkin(3) * t878 + pkin(7) * t797 + t1030 * t810 + t1034 * t773;
t819 = -t1030 * t884 + t1034 * t885;
t1091 = -pkin(3) * t1196 + pkin(7) * t819 + t1030 * t836 + t1034 * t779;
t1090 = pkin(2) * t931 - t1165;
t1089 = t1031 * t1006;
t1088 = t1035 * t1006;
t1087 = pkin(2) * t953 - qJ(3) * g(3);
t1086 = g(3) * t1031 + t1175;
t1085 = g(3) * t1035 - t1174;
t1082 = t974 * t1102;
t1081 = t976 * t1102;
t1080 = t974 * t1101;
t1079 = t976 * t1101;
t1077 = -pkin(7) * t943 + t924;
t1076 = pkin(2) * t987 - t1128;
t1075 = pkin(2) * t985 - t1127;
t1074 = t1031 * t953 - t1035 * t952;
t1073 = t1031 * t962 - t1035 * t965;
t1072 = t1031 * t999 - t1035 * t998;
t1069 = -pkin(7) * t665 + t1116;
t1068 = -pkin(7) * t702 + t1115;
t1067 = -pkin(7) * t707 + t1114;
t1066 = -pkin(7) * t710 + t1113;
t1065 = -pkin(7) * t758 + t1112;
t1064 = -pkin(7) * t796 + t1111;
t1063 = -pkin(7) * t818 + t1110;
t990 = t1140 * qJDD(1);
t1062 = pkin(7) * t990 - t865;
t740 = -pkin(4) * t893 + pkin(8) * t763;
t1060 = -pkin(8) * t1152 - t1030 * t740;
t1059 = pkin(2) * t696 - t1100;
t1058 = pkin(2) * t767 - t1099;
t1057 = pkin(2) * t789 - t1098;
t1056 = pkin(2) * t793 - t1097;
t1055 = pkin(2) * t900 - t1096;
t1054 = pkin(2) * t878 - t1092;
t1053 = pkin(2) * t1196 - t1091;
t720 = t1034 * t763 - t1160;
t1052 = -pkin(3) * t893 + pkin(7) * t720 - pkin(8) * t1160 + t1034 * t740;
t1015 = pkin(2) * t1038 - g(3);
t1050 = -pkin(2) * t1139 - t1035 * t1015 - t1174;
t978 = -t1083 - 0.2e1 * t1168;
t1046 = -pkin(7) * t719 + t1060;
t1044 = pkin(2) * t893 - t1052;
t1036 = pkin(1) * g(3);
t1027 = qJ(2) * g(3);
t1025 = pkin(2) * qJDD(1);
t1017 = 0.2e1 * t1022;
t1003 = t1037 - t1143;
t1001 = -t1037 + t1144;
t994 = (-t1023 + t1024) * t1038;
t984 = pkin(3) * t990;
t982 = t1140 * t1148;
t971 = t1017 + t1061;
t963 = t1017 + t1049;
t959 = -t978 + t1189;
t958 = -t973 + t1135;
t957 = t972 - t1135;
t956 = t1024 * t1148 + t1030 * t986;
t955 = t1023 * t1148 + t1034 * t1051;
t949 = -t1003 * t1030 + t1149;
t948 = (t986 - t1119) * t1034;
t946 = t1001 * t1034 - t1158;
t944 = t1003 * t1034 + t1157;
t942 = t1001 * t1030 + t1150;
t940 = pkin(2) * t990 + t984;
t934 = -pkin(2) * t1138 + t1015 * t1031 - t1175;
t928 = t1027 - t1176;
t923 = -t1030 * t987 - t1034 * t985;
t922 = t1034 * t987 - t941;
t920 = t1036 - t1087;
t919 = t973 - t972;
t908 = pkin(1) * t965 - qJ(2) * t962;
t905 = -t933 + t964;
t904 = t932 - t964;
t903 = -t1080 + t1081;
t902 = -t1082 - t1079;
t901 = t937 * t1155;
t894 = t933 - t932;
t890 = t1033 * t957 - t1161;
t889 = -t1029 * t958 + t1197;
t888 = t1029 * t957 + t1153;
t887 = t1033 * t958 + t1198;
t870 = t1033 * t899 - t1081;
t869 = t1029 * t899 + t1079;
t868 = -t1029 * t898 + t1080;
t867 = t1033 * t898 + t1082;
t864 = -qJ(2) * t953 + t1172 * t952;
t855 = (t1028 * t937 - t1032 * t935) * t966;
t854 = -t901 - t1126;
t853 = -t1030 * t902 + t1034 * t903;
t852 = t1030 * t903 + t1034 * t902;
t851 = -pkin(2) * t993 - t1129;
t847 = -qJ(2) * t950 - t1076;
t846 = -qJ(2) * t947 - t1075;
t845 = -t1171 * t945 + t1172 * t987 + t1151;
t844 = -t1171 * t943 + t1172 * t985 + t924;
t843 = t1171 * t990 - t1172 * t993 - t865;
t840 = t1047 - t906;
t837 = -t857 - t907;
t833 = -t1030 * t888 + t1034 * t890;
t832 = -t1030 * t887 + t1034 * t889;
t831 = t1030 * t890 + t1034 * t888;
t830 = t1030 * t889 + t1034 * t887;
t827 = t1032 * t1047 - t1163 * t937;
t826 = -t1028 * t1047 - t901;
t825 = -t1028 * t857 + t1155 * t935;
t824 = t1032 * t857 + t1126;
t821 = -t1172 * t950 - t1185;
t820 = -t1172 * t947 - t1186;
t816 = -t1029 * t1196 - t1033 * t878;
t814 = -t1029 * t878 + t1033 * t1196;
t807 = t1029 * t896 + t1033 * t855;
t806 = t1029 * t855 - t1033 * t896;
t805 = t1032 * t904 - t1164;
t804 = -t1028 * t905 + t1193;
t803 = t1028 * t904 + t1156;
t802 = t1032 * t905 + t1194;
t801 = -t1030 * t869 + t1034 * t870;
t800 = -t1030 * t867 + t1034 * t868;
t799 = t1030 * t870 + t1034 * t869;
t798 = t1030 * t868 + t1034 * t867;
t786 = t1033 * t827 + t1125;
t785 = t1033 * t825 - t1125;
t784 = t1029 * t827 - t1123;
t783 = t1029 * t825 + t1123;
t771 = -qJ(2) * t866 - t1090;
t770 = -t1171 * t865 + t1172 * t931;
t768 = -t1028 * t840 + t1032 * t838;
t766 = t1028 * t838 + t1032 * t840;
t759 = -t1030 * t814 + t1034 * t816;
t757 = t1030 * t816 + t1034 * t814;
t756 = -t1029 * t837 + t1033 * t805;
t755 = t1029 * t841 + t1033 * t804;
t754 = t1029 * t805 + t1033 * t837;
t753 = t1029 * t804 - t1033 * t841;
t751 = -t1030 * t806 + t1034 * t807;
t750 = t1030 * t807 + t1034 * t806;
t746 = -t1172 * t866 + t1191;
t742 = t1029 * t894 + t1033 * t768;
t741 = t1029 * t768 - t1033 * t894;
t733 = -t1030 * t784 + t1034 * t786;
t732 = -t1030 * t783 + t1034 * t785;
t731 = t1030 * t786 + t1034 * t784;
t730 = t1030 * t785 + t1034 * t783;
t715 = -t1030 * t754 + t1034 * t756;
t714 = -t1030 * t753 + t1034 * t755;
t713 = t1030 * t756 + t1034 * t754;
t712 = t1030 * t755 + t1034 * t753;
t705 = -t1030 * t741 + t1034 * t742;
t704 = t1030 * t742 + t1034 * t741;
t700 = -qJ(2) * t819 - t1053;
t699 = -t1171 * t818 + t1172 * t1196 + t1110;
t698 = -t1172 * t819 - t1180;
t693 = -qJ(2) * t797 - t1054;
t692 = -t1171 * t796 + t1172 * t878 + t1111;
t691 = -t1172 * t797 - t1183;
t680 = -t1172 * t760 - t1187;
t675 = -qJ(2) * t760 - t1055;
t674 = -t1171 * t758 + t1172 * t900 + t1112;
t670 = -qJ(2) * t720 - t1044;
t669 = -t1171 * t719 + t1172 * t893 + t1060;
t663 = -t1172 * t720 - t1188;
t659 = -t1172 * t711 - t1181;
t658 = -t1172 * t708 - t1182;
t655 = -qJ(2) * t711 - t1056;
t654 = -t1171 * t710 + t1172 * t793 + t1113;
t653 = -t1172 * t703 - t1184;
t652 = -qJ(2) * t708 - t1057;
t651 = -t1171 * t707 + t1172 * t789 + t1114;
t650 = -qJ(2) * t703 - t1058;
t649 = -t1171 * t702 + t1172 * t767 + t1115;
t648 = -t1172 * t666 - t1179;
t647 = -qJ(2) * t666 - t1059;
t646 = -t1171 * t665 + t1172 * t696 + t1116;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t991, 0, -t992, 0, -t1086, -t1085, t1072, pkin(6) * t1072, 0, -t991, t992, 0, 0, 0, t1073, t1086, t1085, pkin(6) * t1073 + (-pkin(1) * t1031 + qJ(2) * t1035) * g(3), 0, t992, t991, 0, 0, 0, t1074, t1050, t934, pkin(6) * t1074 - t1031 * t920 + t1035 * t928, t1035 * t956 - t1089, -t1031 * t994 + t1035 * t922, -t1031 * t1136 + t1035 * t944, t1035 * t955 + t1089, t1031 * t1137 + t1035 * t942, -qJDD(4) * t1031 - t1035 * t982, t1035 * t846 - t1031 * t820 - pkin(6) * (t1031 * t943 + t1035 * t985), t1035 * t847 - t1031 * t821 - pkin(6) * (t1031 * t945 + t1035 * t987), -t1035 * t851 + t1031 * t940 - pkin(6) * (-t1031 * t990 - t1035 * t993), t1035 * t771 - t1031 * t746 - pkin(6) * (t1031 * t865 + t1035 * t931), t1035 * t799 - t1124, -t1031 * t919 + t1035 * t757, -t1031 * t883 + t1035 * t830, t1035 * t798 + t1124, -t1031 * t880 + t1035 * t831, -t1021 * t1031 + t1035 * t852, t1035 * t693 - t1031 * t691 - pkin(6) * (t1031 * t796 + t1035 * t878), t1035 * t700 - t1031 * t698 - pkin(6) * (t1031 * t818 + t1035 * t1196), t1035 * t675 - t1031 * t680 - pkin(6) * (t1031 * t758 + t1035 * t900), t1035 * t670 - t1031 * t663 - pkin(6) * (t1031 * t719 + t1035 * t893), t1031 * t826 + t1035 * t731, -t1031 * t766 + t1035 * t704, -t1031 * t802 + t1035 * t712, -t1031 * t824 + t1035 * t730, -t1031 * t803 + t1035 * t713, -t1031 * t854 + t1035 * t750, t1035 * t652 - t1031 * t658 - pkin(6) * (t1031 * t707 + t1035 * t789), t1035 * t655 - t1031 * t659 - pkin(6) * (t1031 * t710 + t1035 * t793), t1035 * t650 - t1031 * t653 - pkin(6) * (t1031 * t702 + t1035 * t767), t1035 * t647 - t1031 * t648 - pkin(6) * (t1031 * t665 + t1035 * t696); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t992, 0, t991, 0, t1085, -t1086, t1106, pkin(6) * t1106, 0, -t992, -t991, 0, 0, 0, t1107, -t1085, t1086, pkin(6) * t1107 + (pkin(1) * t1035 + qJ(2) * t1031) * g(3), 0, -t991, t992, 0, 0, 0, t1108, -t934, t1050, pkin(6) * t1108 + t1031 * t928 + t1035 * t920, t1031 * t956 + t1088, t1031 * t922 + t1035 * t994, t1031 * t944 + t1035 * t1136, t1031 * t955 - t1088, t1031 * t942 - t1035 * t1137, qJDD(4) * t1035 - t1031 * t982, t1031 * t846 + t1035 * t820 + pkin(6) * (-t1031 * t985 + t1035 * t943), t1031 * t847 + t1035 * t821 + pkin(6) * (-t1031 * t987 + t1035 * t945), -t1031 * t851 - t1035 * t940 + pkin(6) * (t1031 * t993 - t1035 * t990), t1031 * t771 + t1035 * t746 + pkin(6) * (-t1031 * t931 + t1035 * t865), t1031 * t799 + t1122, t1031 * t757 + t1035 * t919, t1031 * t830 + t1035 * t883, t1031 * t798 - t1122, t1031 * t831 + t1035 * t880, t1021 * t1035 + t1031 * t852, t1031 * t693 + t1035 * t691 + pkin(6) * (-t1031 * t878 + t1035 * t796), t1031 * t700 + t1035 * t698 + pkin(6) * (-t1031 * t1196 + t1035 * t818), t1031 * t675 + t1035 * t680 + pkin(6) * (-t1031 * t900 + t1035 * t758), t1031 * t670 + t1035 * t663 + pkin(6) * (-t1031 * t893 + t1035 * t719), t1031 * t731 - t1035 * t826, t1031 * t704 + t1035 * t766, t1031 * t712 + t1035 * t802, t1031 * t730 + t1035 * t824, t1031 * t713 + t1035 * t803, t1031 * t750 + t1035 * t854, t1031 * t652 + t1035 * t658 + pkin(6) * (-t1031 * t789 + t1035 * t707), t1031 * t655 + t1035 * t659 + pkin(6) * (-t1031 * t793 + t1035 * t710), t1031 * t650 + t1035 * t653 + pkin(6) * (-t1031 * t767 + t1035 * t702), t1031 * t647 + t1035 * t648 + pkin(6) * (-t1031 * t696 + t1035 * t665); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t998, t999, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t978, t971, t908, qJDD(1), 0, 0, 0, 0, 0, 0, t963, t959, t864, t948, t923, t949, t941, t946, 0, t844, t845, t843, t770, t801, t759, t832, t800, t833, t853, t692, t699, t674, t669, t733, t705, t714, t732, t715, t751, t651, t654, t649, t646; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t1038, 0, 0, -g(3), -t998, 0, 0, -qJDD(1), t1038, 0, 0, 0, -t965, 0, g(3), t1027, 0, t1038, qJDD(1), 0, 0, 0, -t952, -t1015, -t1025, t928, t956, t922, t944, t955, t942, -t982, t846, t847, -t851, t771, t799, t757, t830, t798, t831, t852, t693, t700, t675, t670, t731, t704, t712, t730, t713, t750, t652, t655, t650, t647; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1038, 0, qJDD(1), 0, g(3), 0, -t999, 0, 0, -t1038, -qJDD(1), 0, 0, 0, -t962, -g(3), 0, t1036, 0, -qJDD(1), t1038, 0, 0, 0, -t953, t1025, -t1015, t920, t1006, t994, t1136, -t1006, -t1137, qJDD(4), t820, t821, -t940, t746, t1167, t919, t883, -t1167, t880, t1021, t691, t698, t680, t663, -t826, t766, t802, t824, t803, t854, t658, t659, t653, t648; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t998, t999, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t978, t971, t908, qJDD(1), 0, 0, 0, 0, 0, 0, t963, t959, t864, t948, t923, t949, t941, t946, 0, t844, t845, t843, t770, t801, t759, t832, t800, t833, t853, t692, t699, t674, t669, t733, t705, t714, t732, t715, t751, t651, t654, t649, t646; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, -t965, -t962, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t1045 - t1170, t965 + t1189, qJ(3) * t952, t948, t923, t949, t941, t946, 0, qJ(3) * t985 + t1077, qJ(3) * t987 + t1120, -qJ(3) * t993 + t1062, qJ(3) * t931 - t1173, t801, t759, t832, t800, t833, t853, qJ(3) * t878 + t1064, qJ(3) * t1196 + t1063, qJ(3) * t900 + t1065, qJ(3) * t893 + t1046, t733, t705, t714, t732, t715, t751, qJ(3) * t789 + t1067, qJ(3) * t793 + t1066, qJ(3) * t767 + t1068, qJ(3) * t696 + t1069; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1038, 0, 0, 0, t965, 0, -g(3), 0, 0, -t1038, -qJDD(1), 0, 0, 0, t952, t1015, t1025, t1176, -t956, -t922, -t944, -t955, -t942, t982, t1075, t1076, t851, t1090, -t799, -t757, -t830, -t798, -t831, -t852, t1054, t1053, t1055, t1044, -t731, -t704, -t712, -t730, -t713, -t750, t1057, t1056, t1058, t1059; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1038, qJDD(1), 0, 0, 0, t962, g(3), 0, 0, 0, qJDD(1), -t1038, 0, 0, 0, t953, -t1025, t1015, t1087, -t1006, -t994, -t1136, t1006, t1137, -qJDD(4), qJ(3) * t947 + t1186, qJ(3) * t950 + t1185, t940, qJ(3) * t866 - t1191, -t1167, -t919, -t883, t1167, -t880, -t1021, qJ(3) * t797 + t1183, qJ(3) * t819 + t1180, qJ(3) * t760 + t1187, qJ(3) * t720 + t1188, t826, -t766, -t802, -t824, -t803, -t854, qJ(3) * t708 + t1182, qJ(3) * t711 + t1181, qJ(3) * t703 + t1184, qJ(3) * t666 + t1179; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, -t953, t952, 0, t948, t923, t949, t941, t946, 0, t1077, t1120, t1062, -t1173, t801, t759, t832, t800, t833, t853, t1064, t1063, t1065, t1046, t733, t705, t714, t732, t715, t751, t1067, t1066, t1068, t1069; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t1038, 0, 0, 0, t953, 0, -g(3), 0, -t1006, -t994, -t1136, t1006, t1137, -qJDD(4), -pkin(3) * t943 - t916, -pkin(3) * t945 - t917, t984, -pkin(3) * t865, -t1167, -t919, -t883, t1167, -t880, -t1021, -pkin(3) * t796 + t1084, -pkin(3) * t818 + t1130, -pkin(3) * t758 - t811, -pkin(3) * t719 - t761, t826, -t766, -t802, -t824, -t803, -t854, -pkin(3) * t707 + t1093, -pkin(3) * t710 - t1094, -pkin(3) * t702 - t1078, -pkin(3) * t665 + t1131; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1038, qJDD(1), 0, 0, 0, -t952, g(3), 0, 0, t956, t922, t944, t955, t942, -t982, t1127, t1128, t1129, t1165, t799, t757, t830, t798, t831, t852, t1092, t1091, t1096, t1052, t731, t704, t712, t730, t713, t750, t1098, t1097, t1099, t1100; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t986, -t985, t996, t1119, t1001, -t1119, 0, t931, -t916, 0, t870, t816, t889, t868, t890, t903, t810, t836, t725, -pkin(8) * t762, t786, t742, t755, t785, t756, t807, t683, t686, t673, t662; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1118, t987, t1003, t1051, t995, -t1118, -t931, 0, -t917, 0, t869, t814, t887, t867, t888, t902, t773, t779, t722, t740, t784, t741, t753, t783, t754, t806, t677, t679, t668, t657; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1006, t994, t1136, -t1006, -t1137, qJDD(4), t916, t917, 0, 0, t1167, t919, t883, -t1167, t880, t1021, -t1084, -t1130, t811, t761, -t826, t766, t802, t824, t803, t854, -t1093, t1094, t1078, -t1131; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t899, -t878, t1195, t1105, t957, -t1105, 0, t893, t822, 0, t827, t768, t804, t825, t805, t855, t734, t735, t687, -pkin(9) * t696; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1104, t1196, t958, t898, t914, -t1104, -t893, 0, t823, 0, -t895, -t894, -t841, t895, t837, -t896, t716, t718, -pkin(5) * t767, -pkin(5) * t696; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1167, t919, t883, -t1167, t880, t1021, -t822, -t823, 0, 0, -t826, t766, t802, t824, t803, t854, t1132, t1133, t1095, t1166; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1047, t838, t1192, t906, t904, -t906, 0, t780, t728, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t907, t840, t905, t857, t849, -t907, -t780, 0, t729, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t895, t894, t841, -t895, -t837, t896, -t728, -t729, 0, 0;];
m_new_reg  = t1;