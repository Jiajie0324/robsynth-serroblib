% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRRPRP2
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1,theta4]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 03:50
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRRPRP2_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP2_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP2_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRPRP2_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRP2_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPRP2_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 03:47:53
% EndTime: 2019-05-05 03:48:53
% DurationCPUTime: 60.69s
% Computational Cost: add. (144856->894), mult. (315375->1377), div. (0->0), fcn. (231767->12), ass. (0->659)
t992 = cos(qJ(3));
t1103 = qJD(2) * t992;
t989 = sin(qJ(3));
t1104 = qJD(2) * t989;
t980 = sin(pkin(11));
t983 = cos(pkin(11));
t939 = t1103 * t980 + t1104 * t983;
t988 = sin(qJ(5));
t991 = cos(qJ(5));
t905 = -t991 * qJD(3) + t939 * t988;
t907 = qJD(3) * t988 + t939 * t991;
t848 = t907 * t905;
t1095 = qJD(2) * qJD(3);
t1081 = t989 * t1095;
t1091 = qJDD(2) * t992;
t1016 = t1081 - t1091;
t1080 = t992 * t1095;
t1093 = qJDD(2) * t989;
t947 = t1080 + t1093;
t1074 = t983 * t1016 + t947 * t980;
t891 = qJDD(5) + t1074;
t1171 = t848 + t891;
t1132 = t1171 * t988;
t937 = -t983 * t1103 + t1104 * t980;
t930 = qJD(5) + t937;
t1151 = t930 ^ 2;
t1152 = t905 ^ 2;
t860 = t1152 - t1151;
t730 = t860 * t991 - t1132;
t894 = -t1016 * t980 + t983 * t947;
t1075 = -t991 * qJDD(3) + t894 * t988;
t764 = (qJD(5) - t930) * t907 + t1075;
t662 = t730 * t980 + t764 * t983;
t666 = t730 * t983 - t764 * t980;
t588 = t662 * t989 - t666 * t992;
t1131 = t1171 * t991;
t728 = t860 * t988 + t1131;
t990 = sin(qJ(2));
t993 = cos(qJ(2));
t1046 = t588 * t990 + t728 * t993;
t585 = t662 * t992 + t666 * t989;
t982 = sin(pkin(6));
t985 = cos(pkin(6));
t512 = t1046 * t985 + t585 * t982;
t545 = t588 * t993 - t728 * t990;
t981 = sin(pkin(10));
t984 = cos(pkin(10));
t1305 = t512 * t981 - t545 * t984;
t1304 = t512 * t984 + t545 * t981;
t1119 = t905 * t930;
t1027 = -t988 * qJDD(3) - t991 * t894;
t999 = qJD(5) * t905 + t1027;
t1201 = t1119 + t999;
t1135 = t1201 * t988;
t1096 = qJD(5) + t930;
t763 = t1096 * t907 + t1075;
t677 = -t763 * t991 + t1135;
t904 = t907 ^ 2;
t844 = t904 - t1152;
t642 = t677 * t980 - t844 * t983;
t644 = t677 * t983 + t844 * t980;
t566 = t642 * t989 - t644 * t992;
t679 = -t1201 * t991 - t763 * t988;
t1054 = t566 * t990 + t679 * t993;
t565 = t642 * t992 + t644 * t989;
t492 = t1054 * t985 + t565 * t982;
t531 = t566 * t993 - t679 * t990;
t1303 = t492 * t981 - t531 * t984;
t1302 = t492 * t984 + t531 * t981;
t1297 = t1046 * t982 - t585 * t985;
t1296 = t1054 * t982 - t565 * t985;
t1163 = -t1119 + t999;
t1198 = t1163 * t991 - t764 * t988;
t1162 = t904 + t1152;
t1197 = -t1163 * t988 - t764 * t991;
t1222 = -t1162 * t980 + t1197 * t983;
t1223 = t1162 * t983 + t1197 * t980;
t1243 = t1222 * t992 - t1223 * t989;
t1263 = t1198 * t990 + t1243 * t993;
t1242 = t1222 * t989 + t1223 * t992;
t1264 = -t1198 * t993 + t1243 * t990;
t1276 = -t1242 * t982 + t1264 * t985;
t1284 = t1263 * t981 + t1276 * t984;
t1291 = qJ(1) * t1284;
t1285 = t1263 * t984 - t1276 * t981;
t1290 = qJ(1) * t1285;
t1289 = pkin(1) * t1276;
t1277 = t1242 * t985 + t1264 * t982;
t1288 = pkin(1) * t1277;
t1172 = -t848 + t891;
t1130 = t1172 * t988;
t861 = -t904 + t1151;
t1200 = -t861 * t991 - t1130;
t1129 = t1172 * t991;
t1199 = -t861 * t988 + t1129;
t1224 = -t1163 * t980 + t1199 * t983;
t1225 = t1163 * t983 + t1199 * t980;
t1241 = t1224 * t992 - t1225 * t989;
t1265 = -t1200 * t990 + t1241 * t993;
t1240 = t1224 * t989 + t1225 * t992;
t1266 = t1200 * t993 + t1241 * t990;
t1274 = -t1240 * t982 + t1266 * t985;
t1287 = t1265 * t984 - t1274 * t981;
t1286 = t1265 * t981 + t1274 * t984;
t1283 = (-t1276 * t985 - t1277 * t982) * pkin(7);
t1282 = pkin(7) * t1263;
t1275 = t1240 * t985 + t1266 * t982;
t1273 = pkin(8) * t1242;
t1268 = -pkin(2) * t1242 - pkin(3) * t1223 - pkin(4) * t1162 - pkin(9) * t1197;
t1267 = -pkin(2) * t1198 + pkin(8) * t1243;
t838 = -t904 - t1151;
t720 = t838 * t991 - t1132;
t1262 = pkin(2) * t720;
t1261 = pkin(3) * t720;
t1260 = pkin(4) * t720;
t715 = t838 * t988 + t1131;
t1259 = pkin(9) * t715;
t1258 = pkin(9) * t720;
t1257 = t715 * t980;
t1256 = t715 * t983;
t1255 = t720 * t990;
t1254 = t720 * t993;
t1251 = qJ(4) * t1222;
t1250 = qJ(4) * t1223;
t1249 = qJ(6) * t1201;
t1115 = t930 * t988;
t1086 = t905 * t1115;
t1114 = t930 * t991;
t857 = t907 * t1114;
t1065 = t857 + t1086;
t1085 = t905 * t1114;
t856 = t907 * t1115;
t1066 = t856 - t1085;
t1155 = t1066 * t983 + t891 * t980;
t1158 = t1066 * t980 - t983 * t891;
t1178 = t1155 * t992 - t1158 * t989;
t1195 = -t1065 * t990 + t1178 * t993;
t1177 = t1155 * t989 + t1158 * t992;
t1196 = t1065 * t993 + t1178 * t990;
t1218 = -t1177 * t982 + t1196 * t985;
t1247 = t1195 * t984 - t1218 * t981;
t1246 = t1195 * t981 + t1218 * t984;
t828 = -qJD(5) * t907 - t1075;
t1020 = -t828 * t991 - t1086;
t1021 = -t828 * t988 + t1085;
t1088 = t980 * t848;
t1156 = t1021 * t983 - t1088;
t1087 = t983 * t848;
t1157 = t1021 * t980 + t1087;
t1176 = t1156 * t992 - t1157 * t989;
t1193 = -t1020 * t990 + t1176 * t993;
t1175 = t1156 * t989 + t1157 * t992;
t1194 = t1020 * t993 + t1176 * t990;
t1220 = -t1175 * t982 + t1194 * t985;
t1245 = t1193 * t984 - t1220 * t981;
t1244 = t1193 * t981 + t1220 * t984;
t1238 = pkin(9) * t1198;
t760 = -t991 * t999 - t856;
t1067 = t983 * t760 + t1088;
t1068 = t980 * t760 - t1087;
t1154 = t1067 * t992 - t1068 * t989;
t757 = t988 * t999 - t857;
t1227 = t1154 * t990 + t757 * t993;
t1221 = t1175 * t985 + t1194 * t982;
t1219 = t1177 * t985 + t1196 * t982;
t1160 = -t1151 - t1152;
t1181 = t1160 * t988 + t1129;
t1217 = pkin(2) * t1181;
t1216 = pkin(3) * t1181;
t1215 = pkin(4) * t1181;
t1180 = t1160 * t991 - t1130;
t1214 = pkin(9) * t1180;
t1213 = pkin(9) * t1181;
t1205 = t1180 * t980;
t1204 = t1180 * t983;
t1203 = t1181 * t990;
t1202 = t1181 * t993;
t1153 = t1067 * t989 + t1068 * t992;
t1174 = -t1153 * t982 + t1227 * t985;
t1179 = t1154 * t993 - t757 * t990;
t1192 = t1174 * t984 + t1179 * t981;
t1191 = -t1174 * t981 + t1179 * t984;
t1190 = 2 * qJD(6);
t892 = t939 * t937;
t1161 = qJDD(3) - t892;
t1188 = t1161 * t980;
t1187 = t1161 * t983;
t1078 = g(1) * t981 - t984 * g(2);
t1107 = g(3) - qJDD(1);
t1182 = t985 * t1078 - t982 * t1107;
t1101 = qJD(3) * t939;
t849 = t1074 + t1101;
t1173 = t1153 * t985 + t1227 * t982;
t1166 = t981 * t1107;
t1165 = t984 * t1107;
t1150 = qJD(2) ^ 2;
t966 = t989 * t1150 * t992;
t956 = qJDD(3) + t966;
t922 = t1078 * t982 + t1107 * t985;
t954 = g(1) * t984 + g(2) * t981;
t871 = t1182 * t990 - t993 * t954;
t996 = -pkin(2) * t1150 + qJDD(2) * pkin(8) + t871;
t817 = -t989 * t922 + t992 * t996;
t955 = qJD(3) * pkin(3) - qJ(4) * t1104;
t977 = t992 ^ 2;
t974 = t977 * t1150;
t779 = -pkin(3) * t974 - qJ(4) * t1016 - qJD(3) * t955 + t817;
t816 = t992 * t922 + t989 * t996;
t995 = -t816 + (t1080 - t947) * qJ(4) + t956 * pkin(3);
t670 = -0.2e1 * qJD(4) * t937 + t983 * t779 + t980 * t995;
t875 = pkin(4) * t937 - pkin(9) * t939;
t994 = qJD(3) ^ 2;
t638 = -pkin(4) * t994 + qJDD(3) * pkin(9) - t875 * t937 + t670;
t1098 = t937 * qJD(3);
t1073 = -t894 + t1098;
t870 = -t1182 * t993 - t954 * t990;
t858 = -qJDD(2) * pkin(2) - t1150 * pkin(8) + t870;
t802 = t1016 * pkin(3) - qJ(4) * t974 + t1104 * t955 + qJDD(4) + t858;
t698 = pkin(4) * t849 + t1073 * pkin(9) + t802;
t595 = t991 * t638 + t988 * t698;
t843 = pkin(5) * t905 - qJ(6) * t907;
t1060 = t891 * qJ(6) + t1190 * t930 - t905 * t843 + t595;
t1159 = -t828 * pkin(5) + t1249;
t900 = -t1078 * t981 - t984 * t954;
t899 = t1078 * t984 - t981 * t954;
t931 = t937 ^ 2;
t932 = t939 ^ 2;
t1149 = pkin(4) * t980;
t1148 = pkin(5) * t991;
t796 = t870 * t990 + t871 * t993;
t1147 = pkin(7) * t796;
t1146 = qJ(6) * t991;
t1076 = t779 * t980 - t983 * t995;
t1100 = qJD(4) * t939;
t669 = t1076 + 0.2e1 * t1100;
t597 = -t669 * t983 + t670 * t980;
t1145 = t597 * t989;
t1144 = t597 * t992;
t1024 = -qJDD(3) * pkin(4) - t994 * pkin(9) + t1076;
t637 = (0.2e1 * qJD(4) + t875) * t939 + t1024;
t1143 = t637 * t988;
t1142 = t637 * t991;
t1128 = t802 * t980;
t1127 = t802 * t983;
t1126 = t858 * t989;
t1125 = t858 * t992;
t881 = qJDD(3) + t892;
t1122 = t881 * t980;
t1121 = t881 * t983;
t1118 = t907 * t930;
t1117 = t922 * t990;
t1116 = t922 * t993;
t948 = -0.2e1 * t1081 + t1091;
t908 = t948 * t992;
t1113 = t956 * t989;
t957 = qJDD(3) - t966;
t1112 = t957 * t989;
t1111 = t957 * t992;
t594 = t988 * t638 - t991 * t698;
t1106 = t1162 - t1151;
t976 = t989 ^ 2;
t1105 = t976 + t977;
t1102 = t1150 * t976;
t1094 = qJDD(2) * t982;
t1092 = qJDD(2) * t990;
t1090 = qJDD(2) * t993;
t1089 = qJDD(3) * t993;
t1084 = t990 * t892;
t1083 = t993 * t892;
t1082 = -pkin(4) * t983 - pkin(3);
t1079 = qJ(6) * t988 + pkin(4);
t598 = t669 * t980 + t983 * t670;
t719 = t816 * t989 + t992 * t817;
t1071 = t990 * t966;
t1070 = t993 * t966;
t1069 = t907 * t843 + qJDD(6) + t594;
t718 = t816 * t992 - t817 * t989;
t949 = t1105 * qJDD(2);
t952 = t974 + t1102;
t897 = t949 * t993 - t952 * t990;
t1063 = pkin(7) * t897 + t718 * t990;
t950 = -t1150 * t990 + t1090;
t1062 = -pkin(7) * t950 - t1117;
t1025 = t1150 * t993 + t1092;
t1061 = -pkin(7) * t1025 + t1116;
t552 = -pkin(5) * t1151 + t1060;
t1017 = -pkin(5) * t891 + t1069;
t559 = qJ(6) * t1151 - t1017;
t504 = t552 * t991 - t559 * t988;
t578 = (pkin(5) * t930 - (2 * qJD(6))) * t907 + t637 + t1159;
t477 = t504 * t980 - t578 * t983;
t478 = t504 * t983 + t578 * t980;
t434 = -t477 * t989 + t478 * t992;
t503 = t552 * t988 + t559 * t991;
t1059 = t434 * t990 - t503 * t993;
t518 = t594 * t988 + t595 * t991;
t501 = t518 * t980 - t637 * t983;
t502 = t518 * t983 + t637 * t980;
t446 = -t501 * t989 + t502 * t992;
t517 = -t594 * t991 + t595 * t988;
t1058 = t446 * t990 - t517 * t993;
t520 = t598 * t992 - t1145;
t1057 = t520 * t990 - t802 * t993;
t646 = -t1201 * t983 + t1257;
t648 = t1201 * t980 + t1256;
t571 = -t646 * t989 + t648 * t992;
t1052 = t571 * t990 + t1254;
t647 = -t763 * t983 + t1205;
t649 = t763 * t980 + t1204;
t572 = -t647 * t989 + t649 * t992;
t1051 = t572 * t990 - t1202;
t771 = t1096 * t905 + t1027;
t654 = t771 * t983 - t1257;
t656 = -t771 * t980 - t1256;
t576 = -t654 * t989 + t656 * t992;
t1050 = t576 * t990 - t1254;
t765 = -t828 + t1118;
t655 = -t765 * t983 + t1205;
t657 = t765 * t980 + t1204;
t577 = -t655 * t989 + t657 * t992;
t1049 = t577 * t990 - t1202;
t775 = -t1073 * t983 - t849 * t980;
t777 = t1073 * t980 - t849 * t983;
t682 = -t775 * t989 + t777 * t992;
t888 = -t932 + t931;
t1040 = t682 * t990 + t888 * t993;
t850 = -t1074 + t1101;
t852 = -t894 - t1098;
t776 = t850 * t980 + t852 * t983;
t778 = t850 * t983 - t852 * t980;
t683 = -t776 * t989 + t778 * t992;
t846 = -t931 - t932;
t1039 = t683 * t990 - t846 * t993;
t878 = -t994 - t931;
t805 = t878 * t980 + t1187;
t806 = t878 * t983 - t1188;
t710 = -t805 * t989 + t806 * t992;
t1038 = t710 * t990 - t849 * t993;
t1037 = t719 * t990 - t858 * t993;
t924 = t931 - t994;
t831 = t924 * t980 + t1121;
t834 = t924 * t983 - t1122;
t740 = -t831 * t989 + t834 * t992;
t1036 = t740 * t990 - t850 * t993;
t925 = -t932 + t994;
t832 = t925 * t983 + t1188;
t835 = -t925 * t980 + t1187;
t741 = -t832 * t989 + t835 * t992;
t1035 = t741 * t990 + t852 * t993;
t926 = -t932 - t994;
t833 = t926 * t983 - t1122;
t836 = -t926 * t980 - t1121;
t742 = -t833 * t989 + t836 * t992;
t1034 = t1073 * t993 + t742 * t990;
t795 = t870 * t993 - t871 * t990;
t946 = 0.2e1 * t1080 + t1093;
t896 = -t946 * t989 + t908;
t953 = t974 - t1102;
t1033 = t896 * t990 + t953 * t993;
t965 = -t974 - t994;
t915 = t965 * t992 - t1113;
t1032 = t915 * t990 + t948 * t993;
t963 = -t994 - t1102;
t917 = -t963 * t989 - t1111;
t1031 = t917 * t990 - t946 * t993;
t935 = t1025 * t985;
t1030 = t935 * t984 + t950 * t981;
t886 = t935 * t981 - t950 * t984;
t1029 = t949 * t990 + t952 * t993;
t865 = (-t937 * t980 - t939 * t983) * qJD(3);
t866 = (-t937 * t983 + t939 * t980) * qJD(3);
t786 = -t865 * t989 + t866 * t992;
t1028 = t786 * t990 - t1089;
t944 = t1105 * t1095;
t1026 = t944 * t990 - t1089;
t839 = -t1074 * t983 + t1098 * t980;
t840 = t1074 * t980 + t1098 * t983;
t751 = -t839 * t989 + t840 * t992;
t1023 = t751 * t990 + t1083;
t841 = t1101 * t983 + t894 * t980;
t842 = -t1101 * t980 + t894 * t983;
t752 = -t841 * t989 + t842 * t992;
t1022 = t752 * t990 - t1083;
t964 = t974 - t994;
t914 = t964 * t992 - t1112;
t1019 = -t1090 * t992 + t914 * t990;
t945 = t992 * t956;
t962 = t994 - t1102;
t916 = -t962 * t989 + t945;
t1018 = -t1090 * t989 + t916 * t990;
t919 = t1016 * t989 - t1095 * t977;
t1015 = t919 * t990 - t1070;
t920 = -t1095 * t976 + t947 * t992;
t1014 = t920 * t990 + t1070;
t447 = -pkin(4) * t503 - pkin(5) * t559 - qJ(6) * t552;
t453 = -pkin(9) * t503 + (pkin(5) * t988 - t1146) * t578;
t413 = -pkin(3) * t503 + qJ(4) * t478 + t447 * t983 + t453 * t980;
t417 = -qJ(4) * t477 - t447 * t980 + t453 * t983;
t433 = t477 * t992 + t478 * t989;
t392 = -pkin(8) * t433 - t413 * t989 + t417 * t992;
t412 = -pkin(2) * t433 - pkin(3) * t477 - pkin(9) * t504 + (t1079 + t1148) * t578;
t427 = t434 * t993 + t503 * t990;
t1013 = pkin(7) * t427 + t392 * t990 + t412 * t993;
t430 = qJ(4) * t502 + (-pkin(9) * t980 + t1082) * t517;
t439 = -qJ(4) * t501 + (-pkin(9) * t983 + t1149) * t517;
t445 = t501 * t992 + t502 * t989;
t403 = -pkin(8) * t445 - t430 * t989 + t439 * t992;
t423 = -pkin(2) * t445 - pkin(3) * t501 + pkin(4) * t637 - pkin(9) * t518;
t436 = t446 * t993 + t517 * t990;
t1012 = pkin(7) * t436 + t403 * t990 + t423 * t993;
t537 = pkin(5) * t1106 + t1060;
t540 = qJ(6) * t1106 + t1017;
t480 = -t537 * t988 + t540 * t991 - t1238;
t604 = -pkin(4) * t1198 - pkin(5) * t1163 + qJ(6) * t764;
t444 = -pkin(3) * t1198 + t480 * t980 + t604 * t983 + t1251;
t448 = t480 * t983 - t604 * t980 - t1250;
t421 = -t444 * t989 + t448 * t992 - t1273;
t443 = -t537 * t991 - t540 * t988 + t1268;
t1011 = t421 * t990 + t443 * t993 + t1282;
t521 = t1260 - qJ(6) * t1171 + (t838 + t1151) * pkin(5) - t1060;
t997 = t1190 * t907 - t875 * t939 - t1024 - 0.2e1 * t1100 - t1159;
t541 = -pkin(5) * t1118 - t1249 + t997;
t522 = pkin(5) * t1135 + t541 * t991 + t1258;
t454 = qJ(4) * t648 + t521 * t983 + t522 * t980 + t1261;
t458 = -qJ(4) * t646 - t521 * t980 + t522 * t983;
t569 = t646 * t992 + t648 * t989;
t425 = -pkin(8) * t569 - t454 * t989 + t458 * t992;
t474 = -pkin(2) * t569 - pkin(3) * t646 - t1259 - t541 * t988 - (-pkin(4) - t1148) * t1201;
t535 = t571 * t993 - t1255;
t1010 = pkin(7) * t535 + t425 * t990 + t474 * t993;
t542 = (-t765 - t1118) * pkin(5) + t997;
t523 = -t1146 * t765 - t542 * t988 - t1213;
t524 = -t1215 + (-t1160 - t1151) * qJ(6) + (-t1172 - t891) * pkin(5) + t1069;
t455 = qJ(4) * t657 + t523 * t980 + t524 * t983 - t1216;
t459 = -qJ(4) * t655 + t523 * t983 - t524 * t980;
t575 = t655 * t992 + t657 * t989;
t426 = -pkin(8) * t575 - t455 * t989 + t459 * t992;
t475 = -pkin(2) * t575 - pkin(3) * t655 + t1079 * t765 - t542 * t991 - t1214;
t539 = t577 * t993 + t1203;
t1009 = pkin(7) * t539 + t426 * t990 + t475 * t993;
t509 = -t517 - t1238;
t469 = t1082 * t1198 + t509 * t980 + t1251;
t479 = t1149 * t1198 + t509 * t983 - t1250;
t429 = -t469 * t989 + t479 * t992 - t1273;
t457 = t1268 - t518;
t1008 = t429 * t990 + t457 * t993 + t1282;
t549 = t594 - t1215;
t603 = t1143 - t1213;
t482 = qJ(4) * t649 + t549 * t983 + t603 * t980 - t1216;
t494 = -qJ(4) * t647 - t549 * t980 + t603 * t983;
t570 = t647 * t992 + t649 * t989;
t437 = -pkin(8) * t570 - t482 * t989 + t494 * t992;
t491 = -pkin(2) * t570 - pkin(3) * t647 + pkin(4) * t763 + t1142 - t1214;
t536 = t572 * t993 + t1203;
t1007 = pkin(7) * t536 + t437 * t990 + t491 * t993;
t551 = t595 - t1260;
t605 = t1142 - t1258;
t483 = qJ(4) * t656 + t551 * t983 + t605 * t980 - t1261;
t496 = -qJ(4) * t654 - t551 * t980 + t605 * t983;
t574 = t654 * t992 + t656 * t989;
t438 = -pkin(8) * t574 - t483 * t989 + t496 * t992;
t495 = -pkin(2) * t574 - pkin(3) * t654 - pkin(4) * t771 - t1143 + t1259;
t538 = t576 * t993 + t1255;
t1006 = pkin(7) * t538 + t438 * t990 + t495 * t993;
t519 = t598 * t989 + t1144;
t568 = -pkin(3) * t802 + qJ(4) * t598;
t467 = -pkin(8) * t519 - qJ(4) * t1144 - t568 * t989;
t490 = -pkin(2) * t519 - pkin(3) * t597;
t516 = t520 * t993 + t802 * t990;
t1005 = pkin(7) * t516 + t467 * t990 + t490 * t993;
t550 = -pkin(3) * t846 + qJ(4) * t778 + t598;
t561 = -qJ(4) * t776 - t597;
t681 = t776 * t992 + t778 * t989;
t489 = -pkin(8) * t681 - t550 * t989 + t561 * t992;
t626 = -pkin(2) * t681 - pkin(3) * t776;
t645 = t683 * t993 + t846 * t990;
t1004 = pkin(7) * t645 + t489 * t990 + t626 * t993;
t685 = -pkin(3) * t849 + qJ(4) * t806 - t1127;
t708 = -qJ(4) * t805 + t1128;
t709 = t805 * t992 + t806 * t989;
t573 = -pkin(8) * t709 - t685 * t989 + t708 * t992;
t596 = -pkin(2) * t709 - pkin(3) * t805 + t669;
t684 = t710 * t993 + t849 * t990;
t1003 = pkin(7) * t684 + t573 * t990 + t596 * t993;
t692 = pkin(3) * t1073 + qJ(4) * t836 + t1128;
t724 = -qJ(4) * t833 + t1127;
t739 = t833 * t992 + t836 * t989;
t593 = -pkin(8) * t739 - t692 * t989 + t724 * t992;
t606 = -pkin(2) * t739 - pkin(3) * t833 + t670;
t695 = -t1073 * t990 + t742 * t993;
t1002 = pkin(7) * t695 + t593 * t990 + t606 * t993;
t911 = t965 * t989 + t945;
t783 = -pkin(2) * t911 + t816;
t814 = -pkin(8) * t911 + t1126;
t863 = t915 * t993 - t948 * t990;
t1001 = pkin(7) * t863 + t783 * t993 + t814 * t990;
t913 = t963 * t992 - t1112;
t784 = -pkin(2) * t913 + t817;
t815 = -pkin(8) * t913 + t1125;
t864 = t917 * t993 + t946 * t990;
t1000 = pkin(7) * t864 + t784 * t993 + t815 * t990;
t689 = t719 * t993 + t858 * t990;
t998 = pkin(7) * t689 - (-pkin(2) * t993 - pkin(8) * t990) * t718;
t970 = t990 * qJDD(3);
t936 = t950 * t985;
t934 = t950 * t982;
t933 = t1025 * t982;
t921 = t944 * t993 + t970;
t912 = t962 * t992 + t1113;
t910 = t964 * t989 + t1111;
t909 = (t947 + t1080) * t989;
t898 = t1026 * t985;
t895 = t946 * t992 + t948 * t989;
t890 = t1029 * t985;
t889 = t1029 * t982;
t887 = -t1025 * t984 - t936 * t981;
t885 = -t1025 * t981 + t936 * t984;
t877 = t920 * t993 - t1071;
t876 = t919 * t993 + t1071;
t874 = t1092 * t989 + t916 * t993;
t873 = t1091 * t990 + t914 * t993;
t855 = t896 * t993 - t953 * t990;
t830 = -t1116 + (t933 * t982 + t935 * t985) * pkin(7);
t829 = -t1117 + (-t934 * t982 - t936 * t985) * pkin(7);
t823 = -t890 * t981 + t897 * t984;
t822 = t890 * t984 + t897 * t981;
t821 = t1014 * t985 - t909 * t982;
t820 = t1015 * t985 - t908 * t982;
t819 = t1018 * t985 - t912 * t982;
t818 = t1019 * t985 - t910 * t982;
t810 = t1031 * t985 - t913 * t982;
t809 = t1032 * t985 - t911 * t982;
t808 = t1031 * t982 + t913 * t985;
t807 = t1032 * t982 + t911 * t985;
t794 = t1033 * t985 - t895 * t982;
t793 = pkin(2) * t948 + pkin(8) * t915 - t1125;
t792 = -pkin(2) * t946 + pkin(8) * t917 + t1126;
t791 = t796 * t985;
t785 = t865 * t992 + t866 * t989;
t782 = t786 * t993 + t970;
t781 = -pkin(1) * t934 + t1061 * t985 + t870 * t982;
t780 = pkin(1) * t933 + t1062 * t985 + t871 * t982;
t762 = -t795 * t985 + t922 * t982;
t761 = -t795 * t982 - t922 * t985;
t750 = t841 * t992 + t842 * t989;
t749 = t839 * t992 + t840 * t989;
t746 = -t810 * t981 + t864 * t984;
t745 = -t809 * t981 + t863 * t984;
t744 = t810 * t984 + t864 * t981;
t743 = t809 * t984 + t863 * t981;
t738 = t832 * t992 + t835 * t989;
t737 = t831 * t992 + t834 * t989;
t712 = t752 * t993 + t1084;
t711 = t751 * t993 - t1084;
t699 = pkin(2) * t952 + pkin(8) * t949 + t719;
t694 = t741 * t993 - t852 * t990;
t693 = t740 * t993 + t850 * t990;
t691 = -pkin(2) * t858 + pkin(8) * t719;
t690 = t1028 * t985 - t785 * t982;
t688 = -pkin(1) * t761 + t1147 * t985;
t687 = -t762 * t981 + t796 * t984;
t686 = t762 * t984 + t796 * t981;
t680 = t775 * t992 + t777 * t989;
t671 = t718 * t993 + (-t889 * t982 - t890 * t985) * pkin(7);
t667 = (-t761 * t982 - t762 * t985) * pkin(7);
t658 = t682 * t993 - t888 * t990;
t640 = t1022 * t985 - t750 * t982;
t639 = t1023 * t985 - t749 * t982;
t630 = t1034 * t985 - t739 * t982;
t629 = t1035 * t985 - t738 * t982;
t628 = t1036 * t985 - t737 * t982;
t627 = t1034 * t982 + t739 * t985;
t625 = -t784 * t990 + t815 * t993 + (-t808 * t982 - t810 * t985) * pkin(7);
t624 = -t783 * t990 + t814 * t993 + (-t807 * t982 - t809 * t985) * pkin(7);
t615 = t1037 * t985 + t718 * t982;
t614 = t1037 * t982 - t718 * t985;
t611 = t1038 * t985 - t709 * t982;
t610 = t1038 * t982 + t709 * t985;
t609 = -pkin(1) * t808 + t1000 * t985 - t792 * t982;
t608 = -pkin(1) * t807 + t1001 * t985 - t793 * t982;
t607 = -pkin(1) * t889 + t1063 * t985 - t699 * t982;
t592 = t1040 * t985 - t680 * t982;
t591 = t1039 * t985 - t681 * t982;
t590 = t1039 * t982 + t681 * t985;
t581 = -t630 * t981 + t695 * t984;
t580 = t630 * t984 + t695 * t981;
t579 = pkin(2) * t1073 + pkin(8) * t742 + t692 * t992 + t724 * t989;
t563 = -t615 * t981 + t689 * t984;
t562 = t615 * t984 + t689 * t981;
t560 = -pkin(2) * t849 + pkin(8) * t710 + t685 * t992 + t708 * t989;
t558 = -t611 * t981 + t684 * t984;
t557 = t611 * t984 + t684 * t981;
t534 = -t591 * t981 + t645 * t984;
t533 = t591 * t984 + t645 * t981;
t515 = -(pkin(2) * t990 - pkin(8) * t993) * t718 + (-t614 * t982 - t615 * t985) * pkin(7);
t514 = -pkin(1) * t614 - t691 * t982 + t985 * t998;
t508 = t1049 * t985 - t575 * t982;
t507 = t1050 * t985 - t574 * t982;
t506 = t1049 * t982 + t575 * t985;
t505 = t1050 * t982 + t574 * t985;
t500 = t1051 * t985 - t570 * t982;
t499 = t1052 * t985 - t569 * t982;
t498 = t1051 * t982 + t570 * t985;
t497 = t1052 * t982 + t569 * t985;
t484 = -pkin(2) * t846 + pkin(8) * t683 + t550 * t992 + t561 * t989;
t481 = t593 * t993 - t606 * t990 + (-t627 * t982 - t630 * t985) * pkin(7);
t476 = t573 * t993 - t596 * t990 + (-t610 * t982 - t611 * t985) * pkin(7);
t473 = -t508 * t981 + t539 * t984;
t472 = -t507 * t981 + t538 * t984;
t471 = t508 * t984 + t539 * t981;
t470 = t507 * t984 + t538 * t981;
t468 = -pkin(1) * t627 + t1002 * t985 - t579 * t982;
t466 = t1057 * t985 - t519 * t982;
t465 = t1057 * t982 + t519 * t985;
t464 = -t500 * t981 + t536 * t984;
t463 = -t499 * t981 + t535 * t984;
t462 = t500 * t984 + t536 * t981;
t461 = t499 * t984 + t535 * t981;
t460 = -pkin(2) * t802 + pkin(8) * t520 - qJ(4) * t1145 + t568 * t992;
t456 = -pkin(1) * t610 + t1003 * t985 - t560 * t982;
t442 = t489 * t993 - t626 * t990 + (-t590 * t982 - t591 * t985) * pkin(7);
t441 = -t466 * t981 + t516 * t984;
t440 = t466 * t984 + t516 * t981;
t435 = pkin(8) * t576 + t483 * t992 + t496 * t989 - t1262;
t432 = pkin(8) * t572 + t482 * t992 + t494 * t989 - t1217;
t431 = -pkin(1) * t590 + t1004 * t985 - t484 * t982;
t428 = t469 * t992 + t479 * t989 + t1267;
t424 = pkin(8) * t577 + t455 * t992 + t459 * t989 - t1217;
t422 = pkin(8) * t571 + t454 * t992 + t458 * t989 + t1262;
t420 = t444 * t992 + t448 * t989 + t1267;
t419 = t1058 * t985 - t445 * t982;
t418 = t1058 * t982 + t445 * t985;
t416 = t438 * t993 - t495 * t990 + (-t505 * t982 - t507 * t985) * pkin(7);
t415 = t437 * t993 - t491 * t990 + (-t498 * t982 - t500 * t985) * pkin(7);
t414 = t467 * t993 - t490 * t990 + (-t465 * t982 - t466 * t985) * pkin(7);
t411 = t1059 * t985 - t433 * t982;
t410 = t1059 * t982 + t433 * t985;
t409 = -pkin(1) * t465 + t1005 * t985 - t460 * t982;
t408 = t426 * t993 - t475 * t990 + (-t506 * t982 - t508 * t985) * pkin(7);
t407 = t425 * t993 - t474 * t990 + (-t497 * t982 - t499 * t985) * pkin(7);
t406 = t429 * t993 - t457 * t990 + t1283;
t405 = -t419 * t981 + t436 * t984;
t404 = t419 * t984 + t436 * t981;
t402 = -pkin(1) * t505 + t1006 * t985 - t435 * t982;
t401 = -pkin(1) * t498 + t1007 * t985 - t432 * t982;
t400 = -pkin(2) * t517 + pkin(8) * t446 + t430 * t992 + t439 * t989;
t399 = t421 * t993 - t443 * t990 + t1283;
t398 = -t411 * t981 + t427 * t984;
t397 = t411 * t984 + t427 * t981;
t396 = t1008 * t985 - t428 * t982 - t1288;
t395 = -pkin(1) * t506 + t1009 * t985 - t424 * t982;
t394 = -pkin(1) * t497 + t1010 * t985 - t422 * t982;
t393 = t1011 * t985 - t420 * t982 - t1288;
t391 = -pkin(2) * t503 + pkin(8) * t434 + t413 * t992 + t417 * t989;
t390 = t403 * t993 - t423 * t990 + (-t418 * t982 - t419 * t985) * pkin(7);
t389 = -pkin(1) * t418 + t1012 * t985 - t400 * t982;
t388 = t392 * t993 - t412 * t990 + (-t410 * t982 - t411 * t985) * pkin(7);
t387 = -pkin(1) * t410 + t1013 * t985 - t391 * t982;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t900, 0, 0, 0, 0, 0, 0, t887, t886, 0, t687, 0, 0, 0, 0, 0, 0, t745, t746, t823, t563, 0, 0, 0, 0, 0, 0, t558, t581, t534, t441, 0, 0, 0, 0, 0, 0, t464, t472, t1285, t405, 0, 0, 0, 0, 0, 0, t473, t1285, t463, t398; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t899, 0, 0, 0, 0, 0, 0, t885, -t1030, 0, t686, 0, 0, 0, 0, 0, 0, t743, t744, t822, t562, 0, 0, 0, 0, 0, 0, t557, t580, t533, t440, 0, 0, 0, 0, 0, 0, t462, t470, t1284, t404, 0, 0, 0, 0, 0, 0, t471, t1284, t461, t397; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1107, 0, 0, 0, 0, 0, 0, t934, -t933, 0, t761, 0, 0, 0, 0, 0, 0, t807, t808, t889, t614, 0, 0, 0, 0, 0, 0, t610, t627, t590, t465, 0, 0, 0, 0, 0, 0, t498, t505, t1277, t418, 0, 0, 0, 0, 0, 0, t506, t1277, t497, t410; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1166, -t1165, -t899, -qJ(1) * t899, 0, 0, -t886, 0, t887, t981 * t1094, -qJ(1) * t885 - t781 * t981 + t829 * t984, qJ(1) * t1030 - t780 * t981 + t830 * t984, -t791 * t981 + t795 * t984, -qJ(1) * t686 + t667 * t984 - t688 * t981, -t821 * t981 + t877 * t984, -t794 * t981 + t855 * t984, -t819 * t981 + t874 * t984, -t820 * t981 + t876 * t984, -t818 * t981 + t873 * t984, -t898 * t981 + t921 * t984, -qJ(1) * t743 - t608 * t981 + t624 * t984, -qJ(1) * t744 - t609 * t981 + t625 * t984, -qJ(1) * t822 - t607 * t981 + t671 * t984, -qJ(1) * t562 - t514 * t981 + t515 * t984, -t640 * t981 + t712 * t984, -t592 * t981 + t658 * t984, -t629 * t981 + t694 * t984, -t639 * t981 + t711 * t984, -t628 * t981 + t693 * t984, -t690 * t981 + t782 * t984, -qJ(1) * t557 - t456 * t981 + t476 * t984, -qJ(1) * t580 - t468 * t981 + t481 * t984, -qJ(1) * t533 - t431 * t981 + t442 * t984, -qJ(1) * t440 - t409 * t981 + t414 * t984, t1191, t1303, t1287, t1245, t1305, t1247, -qJ(1) * t462 - t401 * t981 + t415 * t984, -qJ(1) * t470 - t402 * t981 + t416 * t984, -t396 * t981 + t406 * t984 - t1291, -qJ(1) * t404 - t389 * t981 + t390 * t984, t1191, t1287, -t1303, t1247, -t1305, t1245, -qJ(1) * t471 - t395 * t981 + t408 * t984, -t393 * t981 + t399 * t984 - t1291, -qJ(1) * t461 - t394 * t981 + t407 * t984, -qJ(1) * t397 - t387 * t981 + t388 * t984; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1165, -t1166, t900, qJ(1) * t900, 0, 0, t1030, 0, t885, -t984 * t1094, qJ(1) * t887 + t781 * t984 + t829 * t981, qJ(1) * t886 + t780 * t984 + t830 * t981, t791 * t984 + t795 * t981, qJ(1) * t687 + t667 * t981 + t688 * t984, t821 * t984 + t877 * t981, t794 * t984 + t855 * t981, t819 * t984 + t874 * t981, t820 * t984 + t876 * t981, t818 * t984 + t873 * t981, t898 * t984 + t921 * t981, qJ(1) * t745 + t608 * t984 + t624 * t981, qJ(1) * t746 + t609 * t984 + t625 * t981, qJ(1) * t823 + t607 * t984 + t671 * t981, qJ(1) * t563 + t514 * t984 + t515 * t981, t640 * t984 + t712 * t981, t592 * t984 + t658 * t981, t629 * t984 + t694 * t981, t639 * t984 + t711 * t981, t628 * t984 + t693 * t981, t690 * t984 + t782 * t981, qJ(1) * t558 + t456 * t984 + t476 * t981, qJ(1) * t581 + t468 * t984 + t481 * t981, qJ(1) * t534 + t431 * t984 + t442 * t981, qJ(1) * t441 + t409 * t984 + t414 * t981, t1192, -t1302, t1286, t1244, -t1304, t1246, qJ(1) * t464 + t401 * t984 + t415 * t981, qJ(1) * t472 + t402 * t984 + t416 * t981, t396 * t984 + t406 * t981 + t1290, qJ(1) * t405 + t389 * t984 + t390 * t981, t1192, t1286, t1302, t1246, t1304, t1244, qJ(1) * t473 + t395 * t984 + t408 * t981, t393 * t984 + t399 * t981 + t1290, qJ(1) * t463 + t394 * t984 + t407 * t981, qJ(1) * t398 + t387 * t984 + t388 * t981; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1078, t954, 0, 0, 0, 0, t933, 0, t934, t985 * qJDD(2), pkin(1) * t936 + t1061 * t982 - t870 * t985, -pkin(1) * t935 + t1062 * t982 - t871 * t985, t796 * t982, pkin(1) * t762 + t1147 * t982, t1014 * t982 + t909 * t985, t1033 * t982 + t895 * t985, t1018 * t982 + t912 * t985, t1015 * t982 + t908 * t985, t1019 * t982 + t910 * t985, t1026 * t982, pkin(1) * t809 + t1001 * t982 + t793 * t985, pkin(1) * t810 + t1000 * t982 + t792 * t985, pkin(1) * t890 + t1063 * t982 + t699 * t985, pkin(1) * t615 + t691 * t985 + t982 * t998, t1022 * t982 + t750 * t985, t1040 * t982 + t680 * t985, t1035 * t982 + t738 * t985, t1023 * t982 + t749 * t985, t1036 * t982 + t737 * t985, t1028 * t982 + t785 * t985, pkin(1) * t611 + t1003 * t982 + t560 * t985, pkin(1) * t630 + t1002 * t982 + t579 * t985, pkin(1) * t591 + t1004 * t982 + t484 * t985, pkin(1) * t466 + t1005 * t982 + t460 * t985, t1173, -t1296, t1275, t1221, -t1297, t1219, pkin(1) * t500 + t1007 * t982 + t432 * t985, pkin(1) * t507 + t1006 * t982 + t435 * t985, t1008 * t982 + t428 * t985 + t1289, pkin(1) * t419 + t1012 * t982 + t400 * t985, t1173, t1275, t1296, t1219, t1297, t1221, pkin(1) * t508 + t1009 * t982 + t424 * t985, t1011 * t982 + t420 * t985 + t1289, pkin(1) * t499 + t1010 * t982 + t422 * t985, pkin(1) * t411 + t1013 * t982 + t391 * t985;];
tauB_reg  = t1;
