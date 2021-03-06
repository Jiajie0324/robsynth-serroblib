% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRRRPP3
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,theta1]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 06:56
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRRRPP3_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPP3_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPP3_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRPP3_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRPP3_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRRRPP3_invdynB_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 06:54:08
% EndTime: 2019-05-05 06:55:03
% DurationCPUTime: 49.44s
% Computational Cost: add. (62436->802), mult. (121317->1157), div. (0->0), fcn. (84682->10), ass. (0->604)
t911 = sin(qJ(3));
t1018 = qJD(2) * t911;
t910 = sin(qJ(4));
t913 = cos(qJ(4));
t864 = qJD(3) * t910 + t1018 * t913;
t1081 = t864 ^ 2;
t914 = cos(qJ(3));
t1017 = qJD(2) * t914;
t891 = -qJD(4) + t1017;
t889 = t891 ^ 2;
t1096 = t889 + t1081;
t862 = -t913 * qJD(3) + t1018 * t910;
t1037 = t862 * t864;
t1008 = qJDD(2) * t914;
t1012 = qJD(2) * qJD(3);
t894 = t911 * t1012;
t869 = -t894 + t1008;
t859 = -qJDD(4) + t869;
t926 = t859 - t1037;
t1109 = t913 * t926;
t693 = t1096 * t910 + t1109;
t1149 = t693 * t911;
t1013 = qJD(4) - t891;
t1002 = t914 * t1012;
t1010 = qJDD(2) * t911;
t868 = t1002 + t1010;
t946 = t910 * qJDD(3) + t913 * t868;
t750 = t1013 * t862 - t946;
t609 = t750 * t914 + t1149;
t905 = sin(pkin(6));
t907 = cos(pkin(6));
t1108 = t926 * t910;
t1117 = t1096 * t913 - t1108;
t915 = cos(qJ(2));
t1146 = t1117 * t915;
t1148 = t693 * t914;
t612 = -t750 * t911 + t1148;
t912 = sin(qJ(2));
t967 = t612 * t912 + t1146;
t517 = -t905 * t609 + t907 * t967;
t1147 = t1117 * t912;
t559 = t612 * t915 - t1147;
t904 = sin(pkin(10));
t906 = cos(pkin(10));
t466 = t517 * t906 + t559 * t904;
t1273 = qJ(1) * t466;
t470 = t517 * t904 - t559 * t906;
t1272 = qJ(1) * t470;
t514 = t907 * t609 + t905 * t967;
t1271 = pkin(7) * (t514 * t905 + t517 * t907);
t1270 = pkin(1) * t514;
t1269 = pkin(1) * t517;
t997 = -t913 * qJDD(3) + t910 * t868;
t787 = qJD(4) * t864 + t997;
t840 = t864 * t891;
t1107 = t787 - t840;
t925 = t859 + t1037;
t1047 = t925 * t910;
t1082 = t862 ^ 2;
t1097 = -t889 - t1082;
t1137 = t1097 * t913 + t1047;
t1177 = t1137 * t911;
t611 = -t1107 * t914 + t1177;
t1046 = t925 * t913;
t1136 = t1097 * t910 - t1046;
t1178 = t1136 * t915;
t1176 = t1137 * t914;
t614 = t1107 * t911 + t1176;
t965 = t614 * t912 - t1178;
t519 = -t905 * t611 + t907 * t965;
t1179 = t1136 * t912;
t561 = t614 * t915 + t1179;
t463 = t519 * t904 - t561 * t906;
t1268 = qJ(1) * t463;
t468 = t519 * t906 + t561 * t904;
t1267 = qJ(1) * t468;
t833 = t889 - t1082;
t1121 = t913 * t833 - t1108;
t1141 = t1121 * t911;
t744 = (-qJD(4) - t891) * t864 - t997;
t620 = t744 * t914 + t1141;
t711 = t833 * t910 + t1109;
t1142 = t711 * t915;
t1140 = t1121 * t914;
t624 = t744 * t911 - t1140;
t961 = t624 * t912 + t1142;
t525 = t905 * t620 + t907 * t961;
t1143 = t711 * t912;
t569 = t624 * t915 - t1143;
t1266 = t525 * t904 - t569 * t906;
t1265 = t525 * t906 + t569 * t904;
t834 = -t889 + t1081;
t714 = -t834 * t910 + t1046;
t1036 = t862 * t891;
t924 = qJD(4) * t862 - t946;
t751 = t1036 + t924;
t615 = t714 * t911 - t751 * t914;
t621 = t714 * t914 + t751 * t911;
t708 = -t834 * t913 - t1047;
t964 = t621 * t912 + t708 * t915;
t522 = -t905 * t615 + t907 * t964;
t566 = t621 * t915 - t708 * t912;
t1218 = t522 * t904 - t566 * t906;
t1264 = t522 * t906 + t566 * t904;
t516 = t907 * t611 + t905 * t965;
t1262 = pkin(7) * (t516 * t905 + t519 * t907);
t807 = -t1082 + t1081;
t1155 = t807 * t914;
t1102 = t1036 - t924;
t1058 = t1102 * t910;
t742 = t1013 * t864 + t997;
t643 = -t742 * t913 - t1058;
t598 = t643 * t911 - t1155;
t1156 = t807 * t911;
t601 = t643 * t914 + t1156;
t1057 = t1102 * t913;
t637 = t742 * t910 - t1057;
t972 = t601 * t912 + t637 * t915;
t492 = -t905 * t598 + t907 * t972;
t540 = t601 * t915 - t637 * t912;
t1261 = t492 * t904 - t540 * t906;
t1260 = t492 * t906 + t540 * t904;
t1259 = pkin(1) * t516;
t1258 = pkin(1) * t519;
t1257 = pkin(7) * t559;
t1250 = -t907 * t620 + t905 * t961;
t1249 = t907 * t615 + t905 * t964;
t1055 = t751 * t913;
t1172 = t744 * t910 + t1055;
t768 = t1082 + t1081;
t1158 = t768 * t911;
t1056 = t751 * t910;
t1173 = t913 * t744 - t1056;
t1186 = t1173 * t914 - t1158;
t1199 = t1172 * t912 + t1186 * t915;
t1157 = t768 * t914;
t1187 = t1173 * t911 + t1157;
t1200 = -t1172 * t915 + t1186 * t912;
t1219 = -t1187 * t905 + t1200 * t907;
t1227 = t1199 * t904 + t1219 * t906;
t1245 = qJ(1) * t1227;
t1228 = t1199 * t906 - t1219 * t904;
t1244 = qJ(1) * t1228;
t1243 = t907 * t598 + t905 * t972;
t1242 = pkin(7) * t561;
t1241 = pkin(8) * t609;
t1240 = pkin(1) * t1219;
t1220 = t1187 * t907 + t1200 * t905;
t1239 = pkin(1) * t1220;
t1164 = pkin(9) * t693;
t1230 = pkin(2) * t609 + t1164;
t1165 = pkin(2) * t1117;
t1229 = -pkin(8) * t612 - t1165;
t1226 = (-t1219 * t907 - t1220 * t905) * pkin(7);
t1225 = pkin(7) * t1199;
t1216 = pkin(8) * t611;
t1215 = pkin(8) * t1187;
t1180 = pkin(9) * t1137;
t1206 = pkin(2) * t611 + t1180;
t1183 = pkin(2) * t1136;
t1205 = pkin(8) * t614 - t1183;
t1166 = pkin(3) * t768;
t1204 = -pkin(2) * t1187 - pkin(9) * t1173 - t1166;
t1203 = -pkin(2) * t1172 + pkin(8) * t1186;
t1197 = pkin(3) * t1117;
t1163 = pkin(9) * t1117;
t1196 = pkin(9) * t1172;
t1189 = -pkin(3) * t1172 - qJ(5) * t744;
t1182 = pkin(3) * t1136;
t1181 = pkin(9) * t1136;
t1171 = qJ(5) * t1097 + t1182;
t1038 = t859 * t911;
t1031 = t891 * t913;
t1004 = t862 * t1031;
t1032 = t891 * t910;
t825 = t864 * t1032;
t988 = -t825 + t1004;
t1091 = t914 * t988 - t1038;
t826 = t862 * t1032;
t827 = t864 * t1031;
t1020 = -t826 - t827;
t1106 = t1020 * t912;
t1118 = t1091 * t915 - t1106;
t841 = t914 * t859;
t1094 = t911 * t988 + t841;
t1105 = t1020 * t915;
t1119 = t1091 * t912 + t1105;
t1133 = -t1094 * t905 + t1119 * t907;
t1168 = t1118 * t906 - t1133 * t904;
t1167 = t1118 * t904 + t1133 * t906;
t1162 = (t1107 - t840) * pkin(4);
t1161 = qJ(5) * t768;
t1154 = qJ(5) * t1102;
t1006 = t911 * t1037;
t945 = t787 * t910 - t1004;
t1092 = t914 * t945 - t1006;
t1100 = t787 * t913 + t826;
t1110 = t1092 * t915 - t1100 * t912;
t1153 = t1110 * t904;
t1152 = t1110 * t906;
t1021 = -t913 * t924 + t825;
t1087 = t1021 * t914 + t1006;
t1099 = t910 * t924 + t827;
t1111 = t1087 * t915 - t1099 * t912;
t1151 = t1111 * t904;
t1150 = t1111 * t906;
t1080 = qJD(3) ^ 2;
t1000 = g(1) * t904 - t906 * g(2);
t1022 = g(3) - qJDD(1);
t1132 = t907 * t1000 - t905 * t1022;
t876 = g(1) * t906 + g(2) * t904;
t777 = t1132 * t912 - t915 * t876;
t916 = qJD(2) ^ 2;
t761 = -t916 * pkin(2) + qJDD(2) * pkin(8) + t777;
t836 = t1000 * t905 + t1022 * t907;
t823 = t914 * t836;
t1077 = pkin(3) * t914;
t993 = -pkin(9) * t911 - t1077;
t866 = t993 * qJD(2);
t654 = (qJD(2) * t866 + t761) * t911 - qJDD(3) * pkin(3) - t1080 * pkin(9) + t823;
t920 = t787 * pkin(4) - t1154 + t654;
t918 = 0.2e1 * qJD(5) * t864 - t920;
t1015 = qJD(5) * t891;
t1135 = qJ(5) * t926 + 0.2e1 * t1015 - t1197;
t1134 = t1094 * t907 + t1119 * t905;
t1005 = t914 * t1037;
t1088 = t1021 * t911 - t1005;
t1130 = t1088 * t905;
t1129 = t1088 * t907;
t1093 = t911 * t945 + t1005;
t1128 = t1093 * t905;
t1127 = t1093 * t907;
t1025 = t907 * t915;
t1026 = t907 * t912;
t1085 = t1025 * t1099 + t1026 * t1087 - t1130;
t1115 = t1085 * t906 + t1151;
t1114 = -t1085 * t904 + t1150;
t1086 = t1025 * t1100 + t1026 * t1092 - t1128;
t1113 = t1086 * t906 + t1153;
t1112 = -t1086 * t904 + t1152;
t1104 = t904 * t1022;
t1103 = t906 * t1022;
t1098 = t1082 * pkin(5) - 0.2e1 * qJD(6) * t862;
t806 = -t1000 * t904 - t906 * t876;
t805 = t1000 * t906 - t904 * t876;
t1027 = t905 * t915;
t1028 = t905 * t912;
t1084 = t1027 * t1100 + t1028 * t1092 + t1127;
t1083 = t1027 * t1099 + t1028 * t1087 + t1129;
t1079 = 0.2e1 * qJD(6);
t1078 = pkin(3) * t911;
t1076 = pkin(4) * t891;
t1075 = pkin(4) * t910;
t1074 = pkin(4) * t913;
t776 = -t1132 * t915 - t876 * t912;
t676 = t776 * t912 + t777 * t915;
t1073 = pkin(7) * t676;
t1072 = pkin(4) + qJ(6);
t1069 = qJ(6) * t787;
t1068 = t654 * t910;
t1067 = t654 * t913;
t1062 = t1107 * t913;
t760 = -qJDD(2) * pkin(2) - t916 * pkin(8) + t776;
t1052 = t760 * t911;
t1051 = t760 * t914;
t890 = t911 * t916 * t914;
t877 = -t890 + qJDD(3);
t1035 = t877 * t911;
t1034 = t877 * t914;
t878 = qJDD(3) + t890;
t1033 = t878 * t911;
t900 = t911 ^ 2;
t1030 = t900 * t916;
t1024 = t912 * t836;
t1023 = t915 * t836;
t697 = t914 * t761 - t911 * t836;
t655 = -pkin(3) * t1080 + qJDD(3) * pkin(9) + t1017 * t866 + t697;
t982 = -t869 + t894;
t983 = t868 + t1002;
t674 = pkin(3) * t982 - pkin(9) * t983 + t760;
t577 = t913 * t655 + t910 * t674;
t901 = t914 ^ 2;
t1019 = t900 + t901;
t1011 = qJDD(2) * t905;
t1009 = qJDD(2) * t912;
t1007 = qJDD(2) * t915;
t1001 = -qJ(5) * t910 - pkin(3);
t999 = -0.2e1 * qJD(5) - t1076;
t576 = t655 * t910 - t913 * t674;
t696 = t761 * t911 + t823;
t596 = t696 * t911 + t914 * t697;
t995 = t912 * t890;
t994 = t915 * t890;
t595 = t696 * t914 - t697 * t911;
t871 = t1019 * qJDD(2);
t898 = t901 * t916;
t874 = t898 + t1030;
t803 = t871 * t915 - t874 * t912;
t986 = pkin(7) * t803 + t595 * t912;
t872 = -t912 * t916 + t1007;
t985 = -pkin(7) * t872 - t1024;
t948 = t915 * t916 + t1009;
t984 = -pkin(7) * t948 + t1023;
t799 = pkin(4) * t862 - qJ(5) * t864;
t981 = t889 * pkin(4) + t859 * qJ(5) + t862 * t799 - t577;
t922 = t859 * pkin(4) - t889 * qJ(5) + t799 * t864 + qJDD(5) + t576;
t919 = -t924 * pkin(5) + qJ(6) * t925 + t922;
t520 = (-pkin(5) * t862 + t1079) * t891 + t919;
t881 = -0.2e1 * t1015;
t824 = pkin(5) * t864 + qJ(6) * t891;
t921 = t787 * pkin(5) + qJ(6) * t1082 + t824 * t891 - qJDD(6) + t981;
t521 = t881 - t921;
t450 = t520 * t910 + t521 * t913;
t530 = t1069 + (-t824 + t999) * t864 + t920 - t1098;
t427 = t450 * t914 + t530 * t911;
t449 = -t520 * t913 + t521 * t910;
t980 = t427 * t912 - t449 * t915;
t550 = t881 - t981;
t478 = t550 * t913 + t910 * t922;
t558 = t864 * t999 + t920;
t447 = t478 * t914 + t558 * t911;
t477 = t550 * t910 - t913 * t922;
t979 = t447 * t912 - t477 * t915;
t509 = t576 * t910 + t577 * t913;
t482 = t509 * t914 + t654 * t911;
t508 = -t576 * t913 + t577 * t910;
t978 = t482 * t912 - t508 * t915;
t745 = -t787 - t840;
t645 = t745 * t913 - t1056;
t586 = t645 * t914 - t1158;
t639 = t745 * t910 + t1055;
t975 = t586 * t912 - t639 * t915;
t974 = t596 * t912 - t760 * t915;
t644 = -t1058 - t1062;
t602 = t644 * t914 + t1156;
t638 = t1107 * t910 - t1057;
t971 = t602 * t912 + t638 * t915;
t606 = -t1102 * t911 - t1148;
t970 = t606 * t912 - t1146;
t607 = t742 * t911 + t1176;
t969 = t607 * t912 - t1178;
t625 = -t745 * t911 + t1140;
t960 = t625 * t912 - t1142;
t958 = t1092 * t912 + t1100 * t915;
t957 = t1087 * t912 + t1099 * t915;
t758 = (t862 * t913 - t864 * t910) * t891;
t724 = t758 * t914 - t1038;
t955 = t724 * t912 + t1105;
t675 = t776 * t915 - t777 * t912;
t867 = 0.2e1 * t1002 + t1010;
t870 = -0.2e1 * t894 + t1008;
t798 = -t867 * t911 + t870 * t914;
t875 = t898 - t1030;
t953 = t798 * t912 + t875 * t915;
t888 = -t898 - t1080;
t819 = t888 * t914 - t1033;
t952 = t819 * t912 + t870 * t915;
t886 = -t1030 - t1080;
t821 = -t886 * t911 - t1034;
t951 = t821 * t912 - t867 * t915;
t844 = t948 * t907;
t950 = t844 * t906 + t872 * t904;
t791 = t844 * t904 - t872 * t906;
t949 = t871 * t912 + t874 * t915;
t860 = t1019 * t1012;
t947 = -qJDD(3) * t915 + t860 * t912;
t887 = t898 - t1080;
t818 = t887 * t914 - t1035;
t944 = -t1007 * t914 + t818 * t912;
t861 = t914 * t878;
t885 = -t1030 + t1080;
t820 = -t885 * t911 + t861;
t943 = -t1007 * t911 + t820 * t912;
t828 = -t1012 * t901 - t869 * t911;
t942 = t828 * t912 - t994;
t829 = -t1012 * t900 + t868 * t914;
t941 = t829 * t912 + t994;
t429 = pkin(5) * t521 - t1072 * t530;
t452 = pkin(5) * t520 - qJ(5) * t530;
t393 = -pkin(9) * t449 - t429 * t910 + t452 * t913;
t403 = -pkin(3) * t449 - qJ(5) * t521 + t1072 * t520;
t426 = t450 * t911 - t530 * t914;
t370 = -pkin(8) * t426 + t393 * t914 - t403 * t911;
t378 = -pkin(2) * t426 + pkin(3) * t530 - pkin(9) * t450 - t429 * t913 - t452 * t910;
t404 = t427 * t915 + t449 * t912;
t940 = pkin(7) * t404 + t370 * t912 + t378 * t915;
t428 = -pkin(3) * t477 + pkin(4) * t922 - qJ(5) * t550;
t431 = -pkin(9) * t477 + (-qJ(5) * t913 + t1075) * t558;
t446 = t478 * t911 - t558 * t914;
t391 = -pkin(8) * t446 - t428 * t911 + t431 * t914;
t402 = -pkin(2) * t446 - pkin(9) * t478 + (-t1001 + t1074) * t558;
t416 = t447 * t915 + t477 * t912;
t939 = pkin(7) * t416 + t391 * t912 + t402 * t915;
t480 = pkin(5) * t744 + t1072 * t768 + t521;
t490 = t1161 + t891 * t1079 + (-t751 - t1036) * pkin(5) + t919;
t423 = -t480 * t910 + t490 * t913 - t1196;
t533 = -t1072 * t751 + t1189;
t409 = t423 * t914 - t533 * t911 - t1215;
t417 = -t480 * t913 - t490 * t910 + t1204;
t938 = t409 * t912 + t417 * t915 + t1225;
t917 = t918 + t1098;
t496 = -t1069 - pkin(5) * t1096 + t1154 + (t824 + t1076) * t864 + t917;
t593 = -pkin(5) * t926 + t1072 * t1102;
t454 = t496 * t913 - t593 * t910 - t1163;
t476 = -t1072 * t1096 + t1135 + t921;
t603 = t1102 * t914 - t1149;
t414 = -pkin(8) * t603 + t454 * t914 - t476 * t911;
t437 = -pkin(2) * t603 - pkin(3) * t1102 - t496 * t910 - t593 * t913 + t1164;
t555 = t606 * t915 + t1147;
t937 = pkin(7) * t555 + t414 * t912 + t437 * t915;
t483 = t824 * t864 + (-t1107 - t787) * qJ(6) + pkin(5) * t1097 - t1162 + t917;
t653 = pkin(5) * t925 - qJ(5) * t1107;
t456 = -t483 * t910 + t653 * t913 - t1181;
t475 = t1072 * t925 - t1171 + t520;
t415 = t456 * t914 - t475 * t911 - t1216;
t438 = pkin(3) * t1107 - t483 * t913 - t653 * t910 - t1206;
t936 = t415 * t912 + t438 * t915 + t1242;
t481 = t509 * t911 - t654 * t914;
t418 = -pkin(8) * t481 + (-pkin(9) * t914 + t1078) * t508;
t433 = -pkin(2) * t481 + pkin(3) * t654 - pkin(9) * t509;
t436 = t482 * t915 + t508 * t912;
t935 = pkin(7) * t436 + t418 * t912 + t433 * t915;
t531 = pkin(4) * t768 + t550;
t532 = t922 + t1161;
t448 = -t531 * t910 + t532 * t913 - t1196;
t553 = -pkin(4) * t751 + t1189;
t420 = t448 * t914 - t553 * t911 - t1215;
t434 = -t531 * t913 - t532 * t910 + t1204;
t934 = t420 * t912 + t434 * t915 + t1225;
t538 = -t918 + t1162;
t494 = qJ(5) * t1062 - t538 * t910 + t1181;
t497 = -pkin(4) * t925 + t1171 - t922;
t430 = t494 * t914 - t497 * t911 + t1216;
t457 = t1001 * t1107 - t538 * t913 + t1206;
t933 = t430 * t912 + t457 * t915 - t1242;
t537 = pkin(4) * t840 - qJ(5) * t750 + t918;
t495 = t1075 * t750 + t537 * t913 - t1163;
t498 = -pkin(4) * t1096 + t1135 + t981;
t432 = t495 * t914 - t498 * t911 + t1241;
t464 = -t537 * t910 - (-pkin(3) - t1074) * t750 + t1230;
t932 = t432 * t912 + t464 * t915 - t1257;
t479 = -pkin(9) * t639 - t508;
t583 = t645 * t911 + t1157;
t439 = -pkin(8) * t583 + t1078 * t639 + t479 * t914;
t451 = -pkin(2) * t583 - pkin(9) * t645 - t1166 - t509;
t536 = t586 * t915 + t639 * t912;
t931 = pkin(7) * t536 + t439 * t912 + t451 * t915;
t542 = t576 - t1182;
t578 = t1068 - t1181;
t604 = -t742 * t914 + t1177;
t465 = -pkin(8) * t604 - t542 * t911 + t578 * t914;
t510 = -pkin(2) * t604 + pkin(3) * t742 + t1067 - t1180;
t556 = t607 * t915 + t1179;
t930 = pkin(7) * t556 + t465 * t912 + t510 * t915;
t549 = t577 + t1197;
t580 = t1067 + t1163;
t472 = -t549 * t911 + t580 * t914 - t1241;
t511 = -pkin(3) * t750 - t1068 - t1230;
t929 = t472 * t912 + t511 * t915 + t1257;
t815 = t888 * t911 + t861;
t650 = -pkin(2) * t815 + t696;
t688 = -pkin(8) * t815 + t1052;
t762 = t819 * t915 - t870 * t912;
t928 = pkin(7) * t762 + t650 * t915 + t688 * t912;
t817 = t886 * t914 - t1035;
t651 = -pkin(2) * t817 + t697;
t689 = -pkin(8) * t817 + t1051;
t763 = t821 * t915 + t867 * t912;
t927 = pkin(7) * t763 + t651 * t915 + t689 * t912;
t565 = t596 * t915 + t760 * t912;
t923 = pkin(7) * t565 - (-pkin(2) * t915 - pkin(8) * t912) * t595;
t845 = t872 * t907;
t843 = t872 * t905;
t842 = t948 * t905;
t830 = qJDD(3) * t912 + t860 * t915;
t816 = t885 * t914 + t1033;
t814 = t887 * t911 + t1034;
t813 = t983 * t911;
t812 = t982 * t914;
t804 = t947 * t907;
t797 = t867 * t914 + t870 * t911;
t796 = t949 * t907;
t795 = t949 * t905;
t792 = -t845 * t904 - t906 * t948;
t790 = t845 * t906 - t904 * t948;
t786 = t829 * t915 - t995;
t785 = t828 * t915 + t995;
t784 = t1009 * t911 + t820 * t915;
t783 = t1008 * t912 + t818 * t915;
t753 = t798 * t915 - t875 * t912;
t727 = -t1023 + (t842 * t905 + t844 * t907) * pkin(7);
t726 = -t1024 + (-t843 * t905 - t845 * t907) * pkin(7);
t721 = t758 * t911 + t841;
t703 = -t796 * t904 + t803 * t906;
t702 = t796 * t906 + t803 * t904;
t701 = -t905 * t813 + t907 * t941;
t700 = t905 * t812 + t907 * t942;
t699 = -t905 * t816 + t907 * t943;
t698 = -t905 * t814 + t907 * t944;
t686 = -t905 * t817 + t907 * t951;
t685 = -t905 * t815 + t907 * t952;
t684 = t907 * t817 + t905 * t951;
t683 = t907 * t815 + t905 * t952;
t673 = -t905 * t797 + t907 * t953;
t672 = pkin(2) * t870 + pkin(8) * t819 - t1051;
t671 = -pkin(2) * t867 + pkin(8) * t821 + t1052;
t668 = t676 * t907;
t649 = -pkin(1) * t843 + t776 * t905 + t907 * t984;
t648 = pkin(1) * t842 + t777 * t905 + t907 * t985;
t647 = -t675 * t907 + t905 * t836;
t646 = -t675 * t905 - t907 * t836;
t632 = t724 * t915 - t1106;
t630 = -t686 * t904 + t763 * t906;
t629 = -t685 * t904 + t762 * t906;
t628 = t686 * t906 + t763 * t904;
t627 = t685 * t906 + t762 * t904;
t619 = t745 * t914 + t1141;
t599 = t644 * t911 - t1155;
t579 = pkin(2) * t874 + pkin(8) * t871 + t596;
t574 = -t905 * t721 + t907 * t955;
t572 = -pkin(2) * t760 + pkin(8) * t596;
t570 = t625 * t915 + t1143;
t564 = -pkin(1) * t646 + t1073 * t907;
t563 = -t647 * t904 + t676 * t906;
t562 = t647 * t906 + t676 * t904;
t554 = t915 * t595 + (-t795 * t905 - t796 * t907) * pkin(7);
t552 = (-t646 * t905 - t647 * t907) * pkin(7);
t548 = t907 * t957 - t1130;
t545 = t907 * t958 - t1128;
t541 = t602 * t915 - t638 * t912;
t529 = -t651 * t912 + t689 * t915 + (-t684 * t905 - t686 * t907) * pkin(7);
t528 = -t650 * t912 + t688 * t915 + (-t683 * t905 - t685 * t907) * pkin(7);
t526 = -t905 * t619 + t907 * t960;
t513 = t595 * t905 + t907 * t974;
t512 = -t595 * t907 + t905 * t974;
t506 = -t905 * t604 + t907 * t969;
t505 = -t905 * t603 + t907 * t970;
t503 = t907 * t604 + t905 * t969;
t502 = t907 * t603 + t905 * t970;
t501 = -pkin(1) * t684 - t671 * t905 + t907 * t927;
t500 = -pkin(1) * t683 - t672 * t905 + t907 * t928;
t499 = -pkin(1) * t795 - t579 * t905 + t907 * t986;
t493 = -t905 * t599 + t907 * t971;
t489 = -t905 * t583 + t907 * t975;
t486 = t907 * t583 + t905 * t975;
t474 = -t513 * t904 + t565 * t906;
t473 = t513 * t906 + t565 * t904;
t462 = -t506 * t904 + t556 * t906;
t461 = -t505 * t904 + t555 * t906;
t459 = t506 * t906 + t556 * t904;
t458 = t505 * t906 + t555 * t904;
t455 = t549 * t914 + t580 * t911 - t1229;
t453 = pkin(8) * t607 + t542 * t914 + t578 * t911 - t1183;
t445 = -t489 * t904 + t536 * t906;
t442 = t489 * t906 + t536 * t904;
t435 = pkin(8) * t586 + t479 * t911 + (-pkin(2) - t1077) * t639;
t425 = t495 * t911 + t498 * t914 + t1229;
t424 = -(pkin(2) * t912 - pkin(8) * t915) * t595 + (-t512 * t905 - t513 * t907) * pkin(7);
t422 = t494 * t911 + t497 * t914 - t1205;
t421 = -pkin(1) * t512 - t572 * t905 + t907 * t923;
t419 = t448 * t911 + t553 * t914 + t1203;
t413 = -t905 * t481 + t907 * t978;
t412 = t907 * t481 + t905 * t978;
t411 = t456 * t911 + t475 * t914 + t1205;
t410 = pkin(8) * t606 + t454 * t911 + t476 * t914 - t1165;
t408 = pkin(8) * t482 + (-pkin(2) + t993) * t508;
t407 = t423 * t911 + t533 * t914 + t1203;
t406 = t472 * t915 - t511 * t912 - t1271;
t405 = t465 * t915 - t510 * t912 + (-t503 * t905 - t506 * t907) * pkin(7);
t401 = -t905 * t446 + t907 * t979;
t400 = t907 * t446 + t905 * t979;
t399 = -t455 * t905 + t907 * t929 - t1270;
t398 = -t413 * t904 + t436 * t906;
t397 = t413 * t906 + t436 * t904;
t396 = -pkin(1) * t503 - t453 * t905 + t907 * t930;
t395 = t432 * t915 - t464 * t912 + t1271;
t394 = t430 * t915 - t457 * t912 + t1262;
t392 = t439 * t915 - t451 * t912 + (-t486 * t905 - t489 * t907) * pkin(7);
t390 = -t905 * t426 + t907 * t980;
t389 = t907 * t426 + t905 * t980;
t388 = t415 * t915 - t438 * t912 - t1262;
t387 = t414 * t915 - t437 * t912 + (-t502 * t905 - t505 * t907) * pkin(7);
t386 = t420 * t915 - t434 * t912 + t1226;
t385 = -pkin(1) * t486 - t435 * t905 + t907 * t931;
t384 = -t425 * t905 + t907 * t932 + t1270;
t383 = -pkin(2) * t477 + pkin(8) * t447 + t428 * t914 + t431 * t911;
t382 = -t422 * t905 + t907 * t933 + t1259;
t381 = -t401 * t904 + t416 * t906;
t380 = t401 * t906 + t416 * t904;
t379 = t409 * t915 - t417 * t912 + t1226;
t377 = -t419 * t905 + t907 * t934 - t1239;
t376 = -t411 * t905 + t907 * t936 - t1259;
t375 = -pkin(1) * t502 - t410 * t905 + t907 * t937;
t374 = -t390 * t904 + t404 * t906;
t373 = t390 * t906 + t404 * t904;
t372 = t418 * t915 - t433 * t912 + (-t412 * t905 - t413 * t907) * pkin(7);
t371 = -t407 * t905 + t907 * t938 - t1239;
t369 = -pkin(2) * t449 + pkin(8) * t427 + t393 * t911 + t403 * t914;
t368 = -pkin(1) * t412 - t408 * t905 + t907 * t935;
t367 = t391 * t915 - t402 * t912 + (-t400 * t905 - t401 * t907) * pkin(7);
t366 = -pkin(1) * t400 - t383 * t905 + t907 * t939;
t365 = t370 * t915 - t378 * t912 + (-t389 * t905 - t390 * t907) * pkin(7);
t364 = -pkin(1) * t389 - t369 * t905 + t907 * t940;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t806, 0, 0, 0, 0, 0, 0, t792, t791, 0, t563, 0, 0, 0, 0, 0, 0, t629, t630, t703, t474, 0, 0, 0, 0, 0, 0, t462, -t470, t445, t398, 0, 0, 0, 0, 0, 0, t1228, t463, t470, t381, 0, 0, 0, 0, 0, 0, t1228, t461, -t463, t374; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t805, 0, 0, 0, 0, 0, 0, t790, -t950, 0, t562, 0, 0, 0, 0, 0, 0, t627, t628, t702, t473, 0, 0, 0, 0, 0, 0, t459, t466, t442, t397, 0, 0, 0, 0, 0, 0, t1227, -t468, -t466, t380, 0, 0, 0, 0, 0, 0, t1227, t458, t468, t373; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1022, 0, 0, 0, 0, 0, 0, t843, -t842, 0, t646, 0, 0, 0, 0, 0, 0, t683, t684, t795, t512, 0, 0, 0, 0, 0, 0, t503, t514, t486, t412, 0, 0, 0, 0, 0, 0, t1220, -t516, -t514, t400, 0, 0, 0, 0, 0, 0, t1220, t502, t516, t389; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1104, -t1103, -t805, -qJ(1) * t805, 0, 0, -t791, 0, t792, t904 * t1011, -qJ(1) * t790 - t649 * t904 + t726 * t906, qJ(1) * t950 - t648 * t904 + t727 * t906, -t668 * t904 + t675 * t906, -qJ(1) * t562 + t552 * t906 - t564 * t904, -t701 * t904 + t786 * t906, -t673 * t904 + t753 * t906, -t699 * t904 + t784 * t906, -t700 * t904 + t785 * t906, -t698 * t904 + t783 * t906, -t804 * t904 + t830 * t906, -qJ(1) * t627 - t500 * t904 + t528 * t906, -qJ(1) * t628 - t501 * t904 + t529 * t906, -qJ(1) * t702 - t499 * t904 + t554 * t906, -qJ(1) * t473 - t421 * t904 + t424 * t906, t1114, -t1261, t1218, -t545 * t904 + t1152, -t1266, t1168, -qJ(1) * t459 - t396 * t904 + t405 * t906, -t399 * t904 + t406 * t906 - t1273, -qJ(1) * t442 - t385 * t904 + t392 * t906, -qJ(1) * t397 - t368 * t904 + t372 * t906, -t574 * t904 + t632 * t906, -t1218, -t526 * t904 + t570 * t906, -t548 * t904 + t1150, -t493 * t904 + t541 * t906, t1112, -t377 * t904 + t386 * t906 - t1245, -t382 * t904 + t394 * t906 + t1267, -t384 * t904 + t395 * t906 + t1273, -qJ(1) * t380 - t366 * t904 + t367 * t906, t1168, t1266, t1218, t1112, t1261, t1114, -t371 * t904 + t379 * t906 - t1245, -qJ(1) * t458 - t375 * t904 + t387 * t906, -t376 * t904 + t388 * t906 - t1267, -qJ(1) * t373 - t364 * t904 + t365 * t906; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1103, -t1104, t806, qJ(1) * t806, 0, 0, t950, 0, t790, -t906 * t1011, qJ(1) * t792 + t649 * t906 + t726 * t904, qJ(1) * t791 + t648 * t906 + t727 * t904, t668 * t906 + t675 * t904, qJ(1) * t563 + t552 * t904 + t564 * t906, t701 * t906 + t786 * t904, t673 * t906 + t753 * t904, t699 * t906 + t784 * t904, t700 * t906 + t785 * t904, t698 * t906 + t783 * t904, t804 * t906 + t830 * t904, qJ(1) * t629 + t500 * t906 + t528 * t904, qJ(1) * t630 + t501 * t906 + t529 * t904, qJ(1) * t703 + t499 * t906 + t554 * t904, qJ(1) * t474 + t421 * t906 + t424 * t904, t1115, t1260, -t1264, t545 * t906 + t1153, t1265, t1167, qJ(1) * t462 + t396 * t906 + t405 * t904, t399 * t906 + t406 * t904 - t1272, qJ(1) * t445 + t385 * t906 + t392 * t904, qJ(1) * t398 + t368 * t906 + t372 * t904, t574 * t906 + t632 * t904, t1264, t526 * t906 + t570 * t904, t548 * t906 + t1151, t493 * t906 + t541 * t904, t1113, t377 * t906 + t386 * t904 + t1244, t382 * t906 + t394 * t904 + t1268, t384 * t906 + t395 * t904 + t1272, qJ(1) * t381 + t366 * t906 + t367 * t904, t1167, -t1265, -t1264, t1113, -t1260, t1115, t371 * t906 + t379 * t904 + t1244, qJ(1) * t461 + t375 * t906 + t387 * t904, t376 * t906 + t388 * t904 - t1268, qJ(1) * t374 + t364 * t906 + t365 * t904; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1000, t876, 0, 0, 0, 0, t842, 0, t843, t907 * qJDD(2), pkin(1) * t845 - t776 * t907 + t905 * t984, -pkin(1) * t844 - t777 * t907 + t905 * t985, t676 * t905, pkin(1) * t647 + t1073 * t905, t907 * t813 + t905 * t941, t907 * t797 + t905 * t953, t907 * t816 + t905 * t943, -t907 * t812 + t905 * t942, t907 * t814 + t905 * t944, t947 * t905, pkin(1) * t685 + t672 * t907 + t905 * t928, pkin(1) * t686 + t671 * t907 + t905 * t927, pkin(1) * t796 + t579 * t907 + t905 * t986, pkin(1) * t513 + t572 * t907 + t905 * t923, t1083, t1243, -t1249, t905 * t958 + t1127, t1250, t1134, pkin(1) * t506 + t453 * t907 + t905 * t930, t455 * t907 + t905 * t929 + t1269, pkin(1) * t489 + t435 * t907 + t905 * t931, pkin(1) * t413 + t408 * t907 + t905 * t935, t907 * t721 + t905 * t955, t1249, t907 * t619 + t905 * t960, t905 * t957 + t1129, t907 * t599 + t905 * t971, t1084, t419 * t907 + t905 * t934 + t1240, t422 * t907 + t905 * t933 - t1258, t425 * t907 + t905 * t932 - t1269, pkin(1) * t401 + t383 * t907 + t905 * t939, t1134, -t1250, -t1249, t1084, -t1243, t1083, t407 * t907 + t905 * t938 + t1240, pkin(1) * t505 + t410 * t907 + t905 * t937, t411 * t907 + t905 * t936 + t1258, pkin(1) * t390 + t369 * t907 + t905 * t940;];
tauB_reg  = t1;
