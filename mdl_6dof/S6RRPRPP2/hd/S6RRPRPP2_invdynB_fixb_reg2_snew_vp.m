% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RRPRPP2
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,theta3]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 12:27
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RRPRPP2_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPP2_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPP2_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPP2_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPP2_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRPRPP2_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 12:26:19
% EndTime: 2019-05-06 12:26:56
% DurationCPUTime: 37.00s
% Computational Cost: add. (63094->731), mult. (144719->987), div. (0->0), fcn. (101952->8), ass. (0->526)
t1015 = sin(qJ(1));
t1018 = cos(qJ(1));
t1014 = sin(qJ(2));
t1017 = cos(qJ(2));
t1010 = sin(pkin(9));
t1011 = cos(pkin(9));
t1013 = sin(qJ(4));
t1016 = cos(qJ(4));
t1073 = qJD(1) * t1017;
t1074 = qJD(1) * t1014;
t973 = t1010 * t1073 + t1011 * t1074;
t941 = -t1016 * qJD(2) + t1013 * t973;
t1135 = t941 ^ 2;
t943 = qJD(2) * t1013 + t1016 * t973;
t940 = t943 ^ 2;
t1162 = t940 + t1135;
t1056 = qJD(2) * t1074;
t1065 = qJDD(1) * t1017;
t1036 = t1056 - t1065;
t1055 = qJD(2) * t1073;
t1067 = qJDD(1) * t1014;
t981 = t1055 + t1067;
t927 = -t1010 * t1036 + t1011 * t981;
t1049 = -t1016 * qJDD(2) + t1013 * t927;
t971 = t1010 * t1074 - t1011 * t1073;
t966 = qJD(4) + t971;
t1032 = (qJD(4) - t966) * t943 + t1049;
t1041 = -t1013 * qJDD(2) - t1016 * t927;
t1031 = qJD(4) * t941 + t1041;
t1127 = t941 * t966;
t1150 = t1031 - t1127;
t719 = t1013 * t1150 + t1016 * t1032;
t668 = t1010 * t719 - t1011 * t1162;
t671 = t1010 * t1162 + t1011 * t719;
t1268 = t1014 * t668 - t1017 * t671;
t713 = t1013 * t1032 - t1016 * t1150;
t1273 = -t1015 * t713 + t1018 * t1268;
t1284 = pkin(6) * t1273;
t1274 = t1015 * t1268 + t1018 * t713;
t1283 = pkin(6) * t1274;
t607 = t1014 * t671 + t1017 * t668;
t1285 = pkin(7) * t607;
t1282 = pkin(1) * t607 + pkin(2) * t668 - pkin(3) * t1162 + pkin(8) * t719;
t1277 = pkin(1) * t713 + pkin(7) * t1268;
t1134 = t966 ^ 2;
t1148 = t1135 - t1134;
t1128 = t941 * t943;
t1050 = t1010 * t981 + t1011 * t1036;
t924 = qJDD(4) + t1050;
t1033 = t924 + t1128;
t1155 = t1016 * t1033;
t773 = t1013 * t1148 + t1155;
t1199 = t1018 * t773;
t1160 = t1013 * t1033;
t1173 = t1016 * t1148 - t1160;
t1206 = t1010 * t1173;
t705 = t1011 * t1032 + t1206;
t1204 = t1011 * t1173;
t709 = t1010 * t1032 - t1204;
t642 = t1014 * t705 + t1017 * t709;
t1281 = t1015 * t642 + t1199;
t820 = t1031 + t1127;
t1106 = t1013 * t820;
t1076 = qJD(4) + t966;
t810 = t1076 * t943 + t1049;
t718 = t1016 * t810 - t1106;
t879 = t940 - t1135;
t871 = t1011 * t879;
t675 = t1010 * t718 + t871;
t1115 = t1010 * t879;
t678 = t1011 * t718 - t1115;
t619 = t1014 * t675 - t1017 * t678;
t1208 = t1016 * t820;
t716 = t1013 * t810 + t1208;
t1280 = t1015 * t619 + t1018 * t716;
t1202 = t1015 * t773;
t1279 = t1018 * t642 - t1202;
t1278 = -t1015 * t716 + t1018 * t619;
t1034 = t924 - t1128;
t1159 = t1013 * t1034;
t899 = t940 - t1134;
t1178 = t1016 * t899 - t1159;
t1154 = t1016 * t1034;
t1177 = t1013 * t899 + t1154;
t1191 = -t1010 * t1150 + t1011 * t1177;
t1193 = t1010 * t1177 + t1011 * t1150;
t641 = t1014 * t1193 - t1017 * t1191;
t1276 = t1015 * t641 - t1018 * t1178;
t1275 = t1015 * t1178 + t1018 * t641;
t1272 = qJ(3) * t668;
t1271 = qJ(3) * t671;
t1269 = -pkin(2) * t713 + t1271;
t1267 = t1014 * t678 + t1017 * t675;
t1266 = t1014 * t709 - t1017 * t705;
t1163 = t940 + t1134;
t1197 = t1016 * t1163 + t1160;
t1227 = t1015 * t1197;
t1196 = -t1013 * t1163 + t1155;
t1228 = t1011 * t1196;
t1221 = t1010 * t820 + t1228;
t1229 = t1010 * t1196;
t1222 = -t1011 * t820 + t1229;
t1237 = -t1014 * t1222 + t1017 * t1221;
t1250 = t1018 * t1237 + t1227;
t1265 = pkin(6) * t1250;
t1226 = t1018 * t1197;
t1251 = t1015 * t1237 - t1226;
t1264 = pkin(6) * t1251;
t1219 = t1014 * t1191 + t1017 * t1193;
t1261 = pkin(8) * t713;
t1149 = -t1134 - t1135;
t1174 = t1013 * t1149 + t1154;
t1203 = t1015 * t1174;
t1172 = t1016 * t1149 - t1159;
t1205 = t1011 * t1172;
t855 = qJD(4) * t943 + t1049;
t912 = t966 * t943;
t814 = t855 + t912;
t1192 = t1010 * t814 + t1205;
t1207 = t1010 * t1172;
t1194 = -t1011 * t814 + t1207;
t1218 = -t1014 * t1194 + t1017 * t1192;
t1238 = t1018 * t1218 + t1203;
t1260 = pkin(6) * t1238;
t1200 = t1018 * t1174;
t1240 = t1015 * t1218 - t1200;
t1259 = pkin(6) * t1240;
t1236 = t1014 * t1221 + t1017 * t1222;
t1258 = pkin(7) * t1236;
t1255 = pkin(3) * t713 + qJ(5) * t1032;
t1232 = pkin(8) * t1196;
t1253 = -pkin(1) * t1236 - pkin(2) * t1222 - t1232;
t1235 = pkin(1) * t1197;
t1252 = pkin(7) * t1237 - t1235;
t1217 = t1014 * t1192 + t1017 * t1194;
t1249 = pkin(7) * t1217;
t1248 = qJ(3) * t1222;
t1213 = pkin(8) * t1172;
t1245 = -pkin(1) * t1217 - pkin(2) * t1194 - t1213;
t1216 = pkin(1) * t1174;
t1243 = pkin(7) * t1218 - t1216;
t1234 = pkin(2) * t1197;
t1242 = qJ(3) * t1221 - t1234;
t1233 = pkin(3) * t1197;
t1231 = pkin(8) * t1197;
t1230 = qJ(3) * t1194;
t1120 = qJD(5) * t966;
t955 = -0.2e1 * t1120;
t1224 = -qJ(5) * t1033 - t1233 + t955;
t1215 = pkin(2) * t1174;
t1223 = qJ(3) * t1192 - t1215;
t1214 = pkin(3) * t1174;
t1212 = pkin(8) * t1174;
t1211 = qJ(5) * t820;
t1210 = qJ(5) * t1162;
t1209 = qJ(6) * t1150;
t1195 = -qJ(5) * t1149 - t1214;
t1082 = t1016 * t966;
t893 = t943 * t1082;
t1164 = t1013 * t1031 - t893;
t1098 = t1013 * t966;
t892 = t943 * t1098;
t1124 = -t1016 * t1031 - t892;
t877 = t1010 * t1128;
t1139 = t1011 * t1124 + t877;
t878 = t1011 * t1128;
t1141 = t1010 * t1124 - t878;
t1168 = -t1014 * t1141 + t1017 * t1139;
t1176 = t1015 * t1168 + t1018 * t1164;
t1062 = t941 * t1098;
t1045 = t893 + t1062;
t1060 = t941 * t1082;
t1044 = t892 - t1060;
t1112 = t1010 * t924;
t1138 = t1011 * t1044 + t1112;
t913 = t1011 * t924;
t1142 = t1010 * t1044 - t913;
t1170 = -t1014 * t1142 + t1017 * t1138;
t1190 = t1015 * t1170 + t1018 * t1045;
t1037 = t1016 * t855 - t1062;
t1038 = t1013 * t855 + t1060;
t1140 = t1011 * t1038 - t877;
t1143 = t1010 * t1038 + t878;
t1167 = -t1014 * t1143 + t1017 * t1140;
t1189 = t1015 * t1167 + t1018 * t1037;
t1171 = -t1015 * t1164 + t1018 * t1168;
t1188 = -t1015 * t1045 + t1018 * t1170;
t1187 = -t1015 * t1037 + t1018 * t1167;
t925 = t973 * t971;
t1147 = -t925 + qJDD(2);
t1184 = t1010 * t1147;
t1181 = t1011 * t1147;
t1122 = qJD(2) * t973;
t884 = t1050 + t1122;
t1169 = t1014 * t1138 + t1017 * t1142;
t1136 = t1014 * t1139 + t1017 * t1141;
t1166 = t1014 * t1140 + t1017 * t1143;
t891 = -pkin(5) * t966 - qJ(6) * t943;
t1151 = t943 * t891 + qJDD(6);
t1008 = t1017 ^ 2;
t1020 = qJD(1) ^ 2;
t1005 = t1008 * t1020;
t1019 = qJD(2) ^ 2;
t998 = -t1005 - t1019;
t1146 = t855 * pkin(4) + t1211;
t1145 = -t855 * pkin(5) + t1151;
t990 = t1015 * g(1) - t1018 * g(2);
t1039 = qJDD(1) * pkin(1) + t990;
t881 = (qJ(3) * t1008 + pkin(7)) * t1020 - pkin(2) * t1036 - qJDD(3) + t1039 - (qJD(2) * pkin(2) - qJ(3) * t1074) * t1074;
t969 = t971 ^ 2;
t970 = t973 ^ 2;
t1133 = 0.2e1 * t943;
t1132 = pkin(4) + pkin(5);
t1130 = pkin(3) * t1010;
t1129 = pkin(4) * t1016;
t991 = g(1) * t1018 + g(2) * t1015;
t1028 = -pkin(1) * t1020 + qJDD(1) * pkin(7) - t991;
t1024 = t1014 * t1028;
t1069 = t1014 * t1020;
t1075 = qJD(1) * qJD(2);
t1021 = -t1024 - t981 * qJ(3) + qJDD(2) * pkin(2) + (pkin(2) * t1069 + qJ(3) * t1075 - g(3)) * t1017;
t951 = -t1014 * g(3) + t1017 * t1028;
t872 = pkin(2) * t998 + qJ(3) * t1065 + t951;
t768 = -0.2e1 * qJD(3) * t971 + t1010 * t1021 + t1011 * t872;
t914 = pkin(3) * t971 - pkin(8) * t973;
t732 = -pkin(3) * t1019 + qJDD(2) * pkin(8) - t914 * t971 + t768;
t1123 = qJD(2) * t971;
t1052 = -t927 + t1123;
t759 = pkin(3) * t884 + t1052 * pkin(8) - t881;
t657 = t1013 * t759 + t1016 * t732;
t1121 = qJD(3) * t973;
t1119 = qJD(6) * t941;
t1114 = t1010 * t881;
t917 = qJDD(2) + t925;
t1113 = t1010 * t917;
t1110 = t1011 * t881;
t1109 = t1011 * t917;
t1051 = t1010 * t872 - t1011 * t1021;
t1040 = -qJDD(2) * pkin(3) - t1019 * pkin(8) + t1051;
t731 = (0.2e1 * qJD(3) + t914) * t973 + t1040;
t1108 = t1013 * t731;
t767 = t1051 + 0.2e1 * t1121;
t681 = t1010 * t768 - t1011 * t767;
t1097 = t1014 * t681;
t975 = t1020 * pkin(7) + t1039;
t1096 = t1014 * t975;
t999 = t1017 * t1069;
t988 = qJDD(2) + t999;
t1095 = t1014 * t988;
t989 = qJDD(2) - t999;
t1094 = t1014 * t989;
t1092 = t1016 * t731;
t1090 = t1016 * t814;
t1081 = t1017 * t681;
t1080 = t1017 * t975;
t982 = -0.2e1 * t1056 + t1065;
t1079 = t1017 * t982;
t1078 = t1017 * t989;
t1072 = qJD(2) * t1010;
t1071 = qJD(2) * t1011;
t1007 = t1014 ^ 2;
t1070 = t1007 * t1020;
t1068 = t1007 + t1008;
t1066 = qJDD(1) * t1015;
t1064 = qJDD(1) * t1018;
t1063 = qJDD(2) * t1018;
t1061 = t1015 * t925;
t1059 = t1018 * t925;
t1058 = -pkin(3) * t1011 - pkin(2);
t876 = pkin(4) * t941 - qJ(5) * t943;
t1057 = -pkin(5) * t941 - t876;
t1054 = qJ(5) * t1013 + pkin(3);
t682 = t1010 * t767 + t1011 * t768;
t656 = t1013 * t732 - t1016 * t759;
t950 = t1017 * g(3) + t1024;
t875 = t1014 * t950 + t1017 * t951;
t937 = -t1015 * t990 - t1018 * t991;
t1048 = t1015 * t999;
t1047 = t1018 * t999;
t985 = -t1015 * t1020 + t1064;
t1046 = -pkin(6) * t985 - g(3) * t1015;
t1043 = pkin(4) * t1134 - t924 * qJ(5) + t941 * t876 - t657;
t597 = t1013 * t657 - t1016 * t656;
t598 = t1013 * t656 + t1016 * t657;
t873 = t1014 * t951 - t1017 * t950;
t1042 = t1015 * t991 - t1018 * t990;
t954 = 0.2e1 * t1120;
t646 = t954 - t1043;
t886 = -t1050 + t1122;
t1035 = -t924 * pkin(4) - qJ(5) * t1134 + qJDD(5) + t656;
t1030 = pkin(5) * t1135 - t966 * t891 + t1043;
t1029 = t943 * t876 + t1035;
t1027 = -t924 * pkin(5) + t1035 + t1209;
t1025 = -t855 * qJ(6) + t1030;
t1023 = qJD(5) * t1133 - t973 * t914 - t1040 - 0.2e1 * t1121 - t1146;
t599 = (-0.2e1 * qJD(6) - t1057) * t943 + t1027;
t650 = (pkin(4) * t966 - 0.2e1 * qJD(5)) * t943 + t731 + t1146;
t631 = (-t814 - t912) * pkin(4) + t1023;
t630 = -pkin(4) * t912 + t1023 - t1211;
t1001 = t1015 * qJDD(2);
t997 = t1005 - t1019;
t996 = -t1019 - t1070;
t995 = t1019 - t1070;
t987 = t1005 - t1070;
t986 = t1005 + t1070;
t984 = t1018 * t1020 + t1066;
t983 = t1068 * qJDD(1);
t980 = 0.2e1 * t1055 + t1067;
t978 = t1017 * t988;
t977 = t1068 * t1075;
t968 = -pkin(6) * t984 + g(3) * t1018;
t958 = -t970 - t1019;
t957 = -t970 + t1019;
t956 = t969 - t1019;
t953 = -t1007 * t1075 + t1017 * t981;
t952 = -t1008 * t1075 + t1014 * t1036;
t949 = -t1014 * t996 - t1078;
t948 = -t1014 * t995 + t978;
t947 = t1017 * t998 - t1095;
t946 = t1017 * t997 - t1094;
t945 = t1017 * t996 - t1094;
t944 = t1014 * t998 + t978;
t931 = -0.2e1 * t1119;
t930 = -t1015 * t986 + t1018 * t983;
t929 = t1015 * t983 + t1018 * t986;
t928 = -t1014 * t980 + t1079;
t923 = -t970 + t969;
t915 = -t1019 - t969;
t908 = (t1010 * t973 - t1011 * t971) * qJD(2);
t907 = (-t1010 * t971 - t1011 * t973) * qJD(2);
t906 = t1015 * t980 + t1018 * t949;
t905 = -t1015 * t982 + t1018 * t947;
t904 = t1015 * t949 - t1018 * t980;
t903 = t1015 * t947 + t1018 * t982;
t895 = -pkin(7) * t945 - t1080;
t894 = -pkin(7) * t944 - t1096;
t890 = -pkin(1) * t945 + t951;
t889 = -pkin(1) * t944 + t950;
t888 = -t927 - t1123;
t882 = -t969 - t970;
t870 = t1011 * t927 - t1072 * t973;
t869 = t1010 * t927 + t1071 * t973;
t868 = t1010 * t1050 + t1071 * t971;
t867 = -t1011 * t1050 + t1072 * t971;
t861 = -t1010 * t958 - t1109;
t860 = -t1010 * t957 + t1181;
t859 = t1011 * t956 - t1113;
t858 = t1011 * t958 - t1113;
t857 = t1011 * t957 + t1184;
t856 = t1010 * t956 + t1109;
t843 = -t1015 * t975 + t1018 * t875;
t842 = t1015 * t875 + t1018 * t975;
t841 = t1011 * t915 - t1184;
t840 = t1010 * t915 + t1181;
t832 = (t1013 * t943 - t1016 * t941) * t966;
t829 = (t1013 * t941 + t1016 * t943) * t966;
t827 = -t1014 * t907 + t1017 * t908;
t826 = -t1010 * t888 + t1011 * t886;
t825 = t1010 * t1052 - t1011 * t884;
t824 = t1010 * t886 + t1011 * t888;
t823 = -t1010 * t884 - t1011 * t1052;
t822 = t1076 * t941 + t1041;
t813 = t855 - t912;
t797 = -qJ(3) * t858 - t1110;
t793 = -t1014 * t869 + t1017 * t870;
t792 = -t1014 * t867 + t1017 * t868;
t791 = -t1014 * t858 + t1017 * t861;
t790 = -t1014 * t857 + t1017 * t860;
t789 = -t1014 * t856 + t1017 * t859;
t788 = t1014 * t861 + t1017 * t858;
t786 = t1011 * t832 + t1112;
t783 = t1010 * t832 - t913;
t769 = -qJ(3) * t840 - t1114;
t750 = -t1014 * t840 + t1017 * t841;
t749 = t1014 * t841 + t1017 * t840;
t748 = pkin(2) * t1052 + qJ(3) * t861 - t1114;
t735 = -pkin(2) * t884 + qJ(3) * t841 + t1110;
t734 = -t1015 * t1052 + t1018 * t791;
t733 = t1015 * t791 + t1018 * t1052;
t730 = -qJ(5) * t814 + qJ(6) * t1034;
t728 = t1015 * t884 + t1018 * t750;
t727 = -t1014 * t824 + t1017 * t826;
t726 = -t1014 * t823 + t1017 * t825;
t725 = t1015 * t750 - t1018 * t884;
t724 = t1014 * t826 + t1017 * t824;
t720 = t1090 - t1106;
t714 = -t1013 * t814 - t1208;
t710 = -t1010 * t813 + t1204;
t704 = t1011 * t813 + t1206;
t698 = -t1010 * t822 - t1228;
t695 = t1011 * t822 - t1229;
t692 = -t1014 * t783 + t1017 * t786;
t689 = t1010 * t810 + t1205;
t686 = -t1011 * t810 + t1207;
t684 = t1015 * t882 + t1018 * t727;
t683 = t1015 * t727 - t1018 * t882;
t679 = t1011 * t720 - t1115;
t676 = t1010 * t720 + t871;
t674 = -qJ(6) * t1033 - t1132 * t820;
t667 = -pkin(1) * t724 - pkin(2) * t824;
t666 = -pkin(1) * t788 - pkin(2) * t858 + t768;
t665 = pkin(2) * t881 + qJ(3) * t682;
t664 = t1092 + t1231;
t655 = t1108 - t1212;
t654 = -pkin(1) * t749 - pkin(2) * t840 + t767;
t653 = -qJ(3) * t824 - t681;
t652 = -pkin(7) * t788 - t1014 * t748 + t1017 * t797;
t651 = -pkin(2) * t882 + qJ(3) * t826 + t682;
t649 = -pkin(4) * t1150 + t1255;
t647 = -pkin(7) * t749 - t1014 * t735 + t1017 * t769;
t645 = t657 + t1233;
t643 = -t1014 * t704 + t1017 * t710;
t638 = t656 - t1214;
t636 = -t1014 * t695 + t1017 * t698;
t633 = t1014 * t698 + t1017 * t695;
t628 = -t1014 * t686 + t1017 * t689;
t625 = t1014 * t689 + t1017 * t686;
t623 = t1132 * t1150 - t1255;
t622 = t1017 * t682 - t1097;
t621 = t1014 * t682 + t1081;
t620 = t1029 + t1210;
t618 = -t1014 * t676 + t1017 * t679;
t616 = pkin(4) * t1162 + t646;
t615 = qJ(6) * t1135 - t1145 + t650;
t614 = -t1015 * t881 + t1018 * t622;
t613 = t1015 * t622 + t1018 * t881;
t606 = -t1025 + t954 + 0.2e1 * t1119;
t604 = t1018 * t636 - t1227;
t601 = t1015 * t636 + t1226;
t595 = t1018 * t628 + t1203;
t592 = t1015 * t628 - t1200;
t590 = (t1163 - t1135) * qJ(6) + t630 + t1145;
t589 = -pkin(4) * t1034 + t1029 + t1195;
t588 = -pkin(4) * t1163 + t1043 + t1224;
t587 = -qJ(5) * t1090 - t1013 * t631 - t1212;
t586 = pkin(4) * t1106 + t1016 * t630 - t1231;
t585 = -pkin(1) * t621 - pkin(2) * t681;
t578 = qJD(6) * t1133 + t1057 * t943 - t1027 - t1209 - t1210;
t577 = (-t814 - t855) * pkin(5) + (-t1149 - t1135) * qJ(6) + t631 + t1151;
t576 = t1010 * t731 + t1011 * t598;
t575 = t1010 * t598 - t1011 * t731;
t574 = -t597 + t1261;
t573 = t931 + t955 - t1132 * t1162 + (-t1032 - t855) * qJ(6) + t1030;
t572 = t1013 * t1029 + t1016 * t646;
t571 = t1013 * t646 - t1016 * t1029;
t570 = -pkin(7) * t724 - t1014 * t651 + t1017 * t653;
t569 = -t1132 * t1163 + t1025 + t1224 + t931;
t568 = -t1034 * t1132 + t1195 + t599;
t567 = -qJ(3) * t695 - t1010 * t645 + t1011 * t664;
t566 = -qJ(3) * t686 - t1010 * t638 + t1011 * t655;
t565 = -pkin(7) * t621 - qJ(3) * t1081 - t1014 * t665;
t564 = -t1013 * t674 + t1016 * t590 - t1231;
t563 = -t1013 * t577 + t1016 * t730 - t1212;
t562 = -pkin(1) * t633 - pkin(2) * t695 - pkin(3) * t822 - t1108 + t1232;
t561 = qJ(3) * t698 + t1010 * t664 + t1011 * t645 + t1234;
t560 = -pkin(1) * t625 - pkin(2) * t686 + pkin(3) * t810 + t1092 - t1213;
t559 = qJ(3) * t689 + t1010 * t655 + t1011 * t638 - t1215;
t558 = -qJ(5) * t615 - qJ(6) * t599;
t557 = -t1013 * t616 + t1016 * t620 + t1261;
t556 = t1013 * t599 + t1016 * t606;
t555 = t1013 * t606 - t1016 * t599;
t554 = t1010 * t650 + t1011 * t572;
t553 = t1010 * t572 - t1011 * t650;
t552 = t1011 * t574 - t1130 * t713 + t1272;
t551 = t1010 * t574 - t1058 * t713 - t1271;
t550 = -t1016 * t631 + t1054 * t814 + t1245;
t549 = -t1013 * t630 - (-pkin(3) - t1129) * t820 + t1253;
t548 = -t1014 * t575 + t1017 * t576;
t547 = t1014 * t576 + t1017 * t575;
t546 = -t1010 * t589 + t1011 * t587 - t1230;
t545 = -pkin(8) * t571 + (pkin(4) * t1013 - qJ(5) * t1016) * t650;
t544 = -qJ(6) * t606 - t1132 * t615;
t543 = -t1010 * t588 + t1011 * t586 - t1248;
t542 = t1282 - t598;
t541 = -pkin(3) * t571 + pkin(4) * t1029 - qJ(5) * t646;
t540 = t1010 * t615 + t1011 * t556;
t539 = t1010 * t556 - t1011 * t615;
t538 = t1010 * t587 + t1011 * t589 + t1223;
t537 = -t1013 * t573 + t1016 * t578 - t1261;
t536 = t1010 * t586 + t1011 * t588 + t1242;
t535 = -t1010 * t649 + t1011 * t557 + t1272;
t534 = pkin(3) * t820 - t1013 * t590 - t1016 * t674 + t1253;
t533 = pkin(3) * t814 - t1013 * t730 - t1016 * t577 + t1245;
t532 = -qJ(3) * t575 + (-pkin(8) * t1011 + t1130) * t597;
t531 = t1010 * t557 + t1011 * t649 - t1269;
t530 = -t1013 * t620 - t1016 * t616 + t1282;
t529 = t1015 * t597 + t1018 * t548;
t528 = t1015 * t548 - t1018 * t597;
t527 = -t1010 * t569 + t1011 * t564 - t1248;
t526 = -t1010 * t568 + t1011 * t563 - t1230;
t525 = t1010 * t564 + t1011 * t569 + t1242;
t524 = t1010 * t563 + t1011 * t568 + t1223;
t523 = -t1014 * t553 + t1017 * t554;
t522 = t1014 * t554 + t1017 * t553;
t521 = -t1010 * t623 + t1011 * t537 - t1272;
t520 = -pkin(7) * t633 - t1014 * t561 + t1017 * t567;
t519 = -pkin(7) * t625 - t1014 * t559 + t1017 * t566;
t518 = qJ(3) * t576 + (-pkin(8) * t1010 + t1058) * t597;
t517 = -t1013 * t578 - t1016 * t573 - t1282;
t516 = t1010 * t537 + t1011 * t623 + t1269;
t515 = -pkin(3) * t555 - qJ(5) * t606 + t1132 * t599;
t514 = -pkin(1) * t547 - pkin(2) * t575 + pkin(3) * t731 - pkin(8) * t598;
t513 = -t1014 * t551 + t1017 * t552 + t1285;
t512 = t1015 * t571 + t1018 * t523;
t511 = t1015 * t523 - t1018 * t571;
t510 = -t1014 * t539 + t1017 * t540;
t509 = t1014 * t540 + t1017 * t539;
t508 = -t1014 * t538 + t1017 * t546 - t1249;
t507 = -t1014 * t536 + t1017 * t543 - t1258;
t506 = -pkin(8) * t555 - t1013 * t544 + t1016 * t558;
t505 = -t1014 * t531 + t1017 * t535 + t1285;
t504 = -qJ(3) * t553 - t1010 * t541 + t1011 * t545;
t503 = t1015 * t555 + t1018 * t510;
t502 = t1015 * t510 - t1018 * t555;
t501 = -t1014 * t525 + t1017 * t527 - t1258;
t500 = -t1014 * t524 + t1017 * t526 - t1249;
t499 = -pkin(2) * t571 + qJ(3) * t554 + t1010 * t545 + t1011 * t541;
t498 = -pkin(1) * t522 - pkin(2) * t553 - pkin(8) * t572 + (t1054 + t1129) * t650;
t497 = -t1014 * t516 + t1017 * t521 - t1285;
t496 = -pkin(7) * t547 - t1014 * t518 + t1017 * t532;
t495 = -qJ(3) * t539 - t1010 * t515 + t1011 * t506;
t494 = -pkin(1) * t509 - pkin(2) * t539 + pkin(3) * t615 - pkin(8) * t556 - t1013 * t558 - t1016 * t544;
t493 = -pkin(2) * t555 + qJ(3) * t540 + t1010 * t506 + t1011 * t515;
t492 = -pkin(7) * t522 - t1014 * t499 + t1017 * t504;
t491 = -pkin(7) * t509 - t1014 * t493 + t1017 * t495;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t984, -t985, 0, t937, 0, 0, 0, 0, 0, 0, t905, t906, t930, t843, 0, 0, 0, 0, 0, 0, t728, t734, t684, t614, 0, 0, 0, 0, 0, 0, t595, t604, t1273, t529, 0, 0, 0, 0, 0, 0, t1238, t1273, t1250, t512, 0, 0, 0, 0, 0, 0, t1238, t1250, -t1273, t503; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t985, -t984, 0, -t1042, 0, 0, 0, 0, 0, 0, t903, t904, t929, t842, 0, 0, 0, 0, 0, 0, t725, t733, t683, t613, 0, 0, 0, 0, 0, 0, t592, t601, t1274, t528, 0, 0, 0, 0, 0, 0, t1240, t1274, t1251, t511, 0, 0, 0, 0, 0, 0, t1240, t1251, -t1274, t502; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t944, t945, 0, t873, 0, 0, 0, 0, 0, 0, t749, t788, t724, t621, 0, 0, 0, 0, 0, 0, t625, t633, -t607, t547, 0, 0, 0, 0, 0, 0, t1217, -t607, t1236, t522, 0, 0, 0, 0, 0, 0, t1217, t1236, t607, t509; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t985, 0, -t984, 0, t1046, -t968, t1042, pkin(6) * t1042, t1018 * t953 - t1048, -t1015 * t987 + t1018 * t928, t1014 * t1066 + t1018 * t948, t1018 * t952 + t1048, t1015 * t1065 + t1018 * t946, t1018 * t977 + t1001, -pkin(6) * t903 - t1015 * t889 + t1018 * t894, -pkin(6) * t904 - t1015 * t890 + t1018 * t895, -pkin(6) * t929 - t1018 * t873, -pkin(6) * t842 + (pkin(1) * t1015 - pkin(7) * t1018) * t873, t1018 * t793 + t1061, -t1015 * t923 + t1018 * t726, -t1015 * t888 + t1018 * t790, t1018 * t792 - t1061, t1015 * t886 + t1018 * t789, t1018 * t827 + t1001, -pkin(6) * t725 - t1015 * t654 + t1018 * t647, -pkin(6) * t733 - t1015 * t666 + t1018 * t652, -pkin(6) * t683 - t1015 * t667 + t1018 * t570, -pkin(6) * t613 - t1015 * t585 + t1018 * t565, t1171, t1278, -t1275, t1187, -t1279, t1188, -pkin(6) * t592 - t1015 * t560 + t1018 * t519, -pkin(6) * t601 - t1015 * t562 + t1018 * t520, -t1015 * t542 + t1018 * t513 - t1283, -pkin(6) * t528 - t1015 * t514 + t1018 * t496, t1171, -t1275, -t1278, t1188, t1279, t1187, -t1015 * t550 + t1018 * t508 - t1259, -t1015 * t530 + t1018 * t505 - t1283, -t1015 * t549 + t1018 * t507 - t1264, -pkin(6) * t511 - t1015 * t498 + t1018 * t492, t1171, -t1015 * t714 + t1018 * t618, t1275, t1187, t1018 * t643 + t1202, -t1015 * t829 + t1018 * t692, -t1015 * t533 + t1018 * t500 - t1259, -t1015 * t534 + t1018 * t501 - t1264, -t1015 * t517 + t1018 * t497 + t1283, -pkin(6) * t502 - t1015 * t494 + t1018 * t491; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t984, 0, t985, 0, t968, t1046, t937, pkin(6) * t937, t1015 * t953 + t1047, t1015 * t928 + t1018 * t987, -t1014 * t1064 + t1015 * t948, t1015 * t952 - t1047, t1015 * t946 - t1017 * t1064, t1015 * t977 - t1063, pkin(6) * t905 + t1015 * t894 + t1018 * t889, pkin(6) * t906 + t1015 * t895 + t1018 * t890, pkin(6) * t930 - t1015 * t873, pkin(6) * t843 + (-pkin(1) * t1018 - pkin(7) * t1015) * t873, t1015 * t793 - t1059, t1015 * t726 + t1018 * t923, t1015 * t790 + t1018 * t888, t1015 * t792 + t1059, t1015 * t789 - t1018 * t886, t1015 * t827 - t1063, pkin(6) * t728 + t1015 * t647 + t1018 * t654, pkin(6) * t734 + t1015 * t652 + t1018 * t666, pkin(6) * t684 + t1015 * t570 + t1018 * t667, pkin(6) * t614 + t1015 * t565 + t1018 * t585, t1176, t1280, -t1276, t1189, -t1281, t1190, pkin(6) * t595 + t1015 * t519 + t1018 * t560, pkin(6) * t604 + t1015 * t520 + t1018 * t562, t1015 * t513 + t1018 * t542 + t1284, pkin(6) * t529 + t1015 * t496 + t1018 * t514, t1176, -t1276, -t1280, t1190, t1281, t1189, t1015 * t508 + t1018 * t550 + t1260, t1015 * t505 + t1018 * t530 + t1284, t1015 * t507 + t1018 * t549 + t1265, pkin(6) * t512 + t1015 * t492 + t1018 * t498, t1176, t1015 * t618 + t1018 * t714, t1276, t1189, t1015 * t643 - t1199, t1015 * t692 + t1018 * t829, t1015 * t500 + t1018 * t533 + t1260, t1015 * t501 + t1018 * t534 + t1265, t1015 * t497 + t1018 * t517 - t1284, pkin(6) * t503 + t1015 * t491 + t1018 * t494; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t990, t991, 0, 0, (t981 + t1055) * t1014, t1014 * t982 + t1017 * t980, t1017 * t995 + t1095, t1079, t1014 * t997 + t1078, 0, pkin(1) * t982 + pkin(7) * t947 + t1080, -pkin(1) * t980 + pkin(7) * t949 - t1096, pkin(1) * t986 + pkin(7) * t983 + t875, pkin(1) * t975 + pkin(7) * t875, t1014 * t870 + t1017 * t869, t1014 * t825 + t1017 * t823, t1014 * t860 + t1017 * t857, t1014 * t868 + t1017 * t867, t1014 * t859 + t1017 * t856, t1014 * t908 + t1017 * t907, -pkin(1) * t884 + pkin(7) * t750 + t1014 * t769 + t1017 * t735, pkin(1) * t1052 + pkin(7) * t791 + t1014 * t797 + t1017 * t748, -pkin(1) * t882 + pkin(7) * t727 + t1014 * t653 + t1017 * t651, pkin(1) * t881 + pkin(7) * t622 - qJ(3) * t1097 + t1017 * t665, t1136, -t1267, t1219, t1166, -t1266, t1169, pkin(7) * t628 + t1014 * t566 + t1017 * t559 - t1216, pkin(7) * t636 + t1014 * t567 + t1017 * t561 + t1235, t1014 * t552 + t1017 * t551 + t1277, -pkin(1) * t597 + pkin(7) * t548 + t1014 * t532 + t1017 * t518, t1136, t1219, t1267, t1169, t1266, t1166, t1014 * t546 + t1017 * t538 + t1243, t1014 * t535 + t1017 * t531 + t1277, t1014 * t543 + t1017 * t536 + t1252, -pkin(1) * t571 + pkin(7) * t523 + t1014 * t504 + t1017 * t499, t1136, t1014 * t679 + t1017 * t676, -t1219, t1166, t1014 * t710 + t1017 * t704, t1014 * t786 + t1017 * t783, t1014 * t526 + t1017 * t524 + t1243, t1014 * t527 + t1017 * t525 + t1252, t1014 * t521 + t1017 * t516 - t1277, -pkin(1) * t555 + pkin(7) * t510 + t1014 * t495 + t1017 * t493;];
tauB_reg  = t1;
