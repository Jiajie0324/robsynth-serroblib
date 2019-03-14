% Calculate minimal parameter regressor of coriolis matrix for
% S6RRRPPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d6,theta4,theta5]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x30]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 15:46
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRRPPR5_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR5_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR5_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRPPR5_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:44:18
% EndTime: 2019-03-09 15:45:33
% DurationCPUTime: 46.07s
% Computational Cost: add. (34154->1112), mult. (82550->1543), div. (0->0), fcn. (95309->12), ass. (0->768)
t743 = sin(qJ(6));
t746 = cos(qJ(6));
t1131 = cos(pkin(11));
t740 = sin(pkin(6));
t745 = sin(qJ(2));
t1066 = t740 * t745;
t742 = cos(pkin(6));
t744 = sin(qJ(3));
t747 = cos(qJ(3));
t672 = t1066 * t744 - t742 * t747;
t674 = t1066 * t747 + t742 * t744;
t739 = sin(pkin(11));
t560 = t1131 * t672 + t674 * t739;
t741 = cos(pkin(12));
t1064 = t741 * t560;
t931 = t1064 / 0.2e1;
t738 = sin(pkin(12));
t1074 = t738 * t560;
t939 = t1074 / 0.2e1;
t1037 = t746 * t738;
t1049 = t743 * t741;
t691 = t1037 + t1049;
t1149 = t691 / 0.2e1;
t942 = t560 * t1149;
t260 = t743 * t931 + t746 * t939 + t942;
t1015 = qJD(1) * t560;
t1069 = t739 * t672;
t650 = t1131 * t674;
t1182 = t650 - t1069;
t1191 = t1182 * t738;
t748 = cos(qJ(2));
t1065 = t740 * t748;
t708 = t741 * t1065;
t1031 = t1191 + t708;
t495 = -t1065 * t738 + t1182 * t741;
t311 = -t1031 * t743 + t746 * t495;
t965 = t1015 * t311;
t1205 = qJD(3) * t260 + t965;
t1202 = t746 * t1031;
t308 = t743 * t495 + t1202;
t964 = t1015 * t308;
t915 = t1131 * t747;
t684 = t739 * t744 - t915;
t1156 = -t684 / 0.2e1;
t1204 = t1156 * t308;
t1176 = -t1202 / 0.2e1;
t1134 = -qJ(4) - pkin(9);
t704 = t1134 * t744;
t1068 = t739 * t704;
t705 = t1134 * t747;
t695 = t1131 * t705;
t1181 = -t695 + t1068;
t1087 = t1181 * t741;
t1067 = t739 * t747;
t916 = t1131 * t744;
t689 = t916 + t1067;
t730 = -t747 * pkin(3) - pkin(2);
t869 = t684 * pkin(4) + t730;
t797 = -qJ(5) * t689 + t869;
t409 = t738 * t797 + t1087;
t1178 = t409 / 0.2e1;
t1201 = t495 / 0.2e1;
t1200 = t560 / 0.2e1;
t1199 = -t1181 / 0.2e1;
t1166 = t1182 / 0.2e1;
t605 = -t1131 * t704 - t705 * t739;
t1198 = t605 * t738;
t1197 = t605 * t741;
t1036 = t746 * t741;
t1050 = t743 * t738;
t686 = -t1036 + t1050;
t1196 = t686 * t560;
t474 = t691 * t689;
t1193 = qJD(2) * t474;
t1192 = t1181 * t738;
t719 = pkin(8) * t1065;
t720 = t742 * t745 * pkin(1);
t679 = t719 + t720;
t646 = pkin(9) * t742 + t679;
t904 = -pkin(2) * t748 - pkin(9) * t745;
t647 = (-pkin(1) + t904) * t740;
t519 = t646 * t744 - t647 * t747;
t438 = -qJ(4) * t674 - t519;
t405 = -pkin(3) * t1065 + t438;
t520 = t646 * t747 + t647 * t744;
t439 = -qJ(4) * t672 + t520;
t918 = t1131 * t439;
t266 = t405 * t739 + t918;
t1190 = t266 / 0.2e1;
t924 = t1036 / 0.2e1;
t815 = t924 - t1050 / 0.2e1;
t1189 = t684 * t815;
t722 = pkin(3) * t739 + qJ(5);
t732 = t738 ^ 2;
t734 = t741 ^ 2;
t920 = t734 / 0.2e1 + t732 / 0.2e1;
t1188 = t722 * t920;
t714 = t732 + t734;
t816 = t1049 / 0.2e1 + t1037 / 0.2e1;
t1138 = pkin(1) * t748;
t677 = pkin(8) * t1066 - t1138 * t742;
t645 = -pkin(2) * t742 + t677;
t573 = pkin(3) * t672 + t645;
t758 = pkin(4) * t560 - qJ(5) * t1182 + t573;
t848 = -qJ(5) * t1065 + t266;
t136 = t738 * t758 + t741 * t848;
t1122 = t136 * t738;
t135 = -t738 * t848 + t741 * t758;
t1123 = t135 * t741;
t1187 = t1122 / 0.2e1 + t1123 / 0.2e1;
t801 = t815 * t560;
t946 = -t1196 / 0.2e1;
t772 = t946 - t801;
t1186 = qJD(3) * t772;
t1185 = qJD(6) * t772;
t1184 = qJD(6) * t474;
t1009 = qJD(2) * t684;
t1183 = t1009 * t474;
t1180 = t689 ^ 2;
t595 = t684 ^ 2 + t1180;
t968 = t744 * t1065;
t616 = t1065 * t915 - t739 * t968;
t1062 = t741 * t616;
t571 = t1066 * t738 + t1062;
t1051 = t743 * t571;
t1071 = t738 * t616;
t706 = t741 * t1066;
t569 = -t706 + t1071;
t549 = t746 * t569;
t1030 = t1051 / 0.2e1 + t549 / 0.2e1;
t1179 = -t308 / 0.2e1;
t1136 = t744 * pkin(3);
t581 = pkin(4) * t689 + qJ(5) * t684 + t1136;
t411 = t581 * t738 - t1197;
t1177 = t411 / 0.2e1;
t575 = t738 * t684;
t531 = -pkin(5) * t575 + t1181;
t1173 = t531 / 0.2e1;
t578 = t738 * t689;
t532 = pkin(5) * t578 + t605;
t1172 = t532 / 0.2e1;
t1171 = -t474 / 0.2e1;
t557 = t686 * t684;
t1170 = t557 / 0.2e1;
t648 = t689 * t1050;
t558 = t1036 * t689 - t648;
t1169 = -t558 / 0.2e1;
t1168 = t558 / 0.2e1;
t1167 = -t1182 / 0.2e1;
t1165 = -t560 / 0.2e1;
t1161 = t1181 / 0.2e1;
t615 = t689 * t1065;
t1159 = -t615 / 0.2e1;
t1158 = t645 / 0.2e1;
t1157 = -t674 / 0.2e1;
t1155 = t684 / 0.2e1;
t1154 = -t686 / 0.2e1;
t1153 = t686 / 0.2e1;
t1152 = -t689 / 0.2e1;
t1151 = t689 / 0.2e1;
t1150 = -t691 / 0.2e1;
t729 = -pkin(3) * t1131 - pkin(4);
t700 = -pkin(5) * t741 + t729;
t1148 = t700 / 0.2e1;
t1147 = -t722 / 0.2e1;
t1146 = t729 / 0.2e1;
t1145 = -t738 / 0.2e1;
t1144 = t738 / 0.2e1;
t1143 = -t739 / 0.2e1;
t1142 = t739 / 0.2e1;
t1141 = -t741 / 0.2e1;
t1140 = t741 / 0.2e1;
t1139 = -t744 / 0.2e1;
t1137 = t674 * pkin(3);
t1135 = pkin(10) + t722;
t1133 = pkin(3) * qJD(3);
t431 = t739 * t439;
t265 = t1131 * t405 - t431;
t256 = pkin(4) * t1065 - t265;
t197 = pkin(5) * t1031 + t256;
t1070 = t739 * t438;
t270 = t918 + t1070;
t205 = -pkin(5) * t1074 + t270;
t348 = t691 * t560;
t100 = -pkin(10) * t1031 + t136;
t749 = t560 * pkin(5) - t495 * pkin(10) + t135;
t53 = t100 * t743 - t746 * t749;
t271 = t1131 * t438 - t431;
t341 = pkin(4) * t1182 + qJ(5) * t560 + t1137;
t162 = -t271 * t738 + t341 * t741;
t101 = pkin(5) * t1182 + pkin(10) * t1064 + t162;
t1047 = t746 * t101;
t163 = t271 * t741 + t341 * t738;
t126 = pkin(10) * t1074 + t163;
t1060 = t743 * t126;
t61 = t1047 - t1060;
t9 = -t1182 * t53 - t197 * t348 + t205 * t308 + t560 * t61;
t1132 = t9 * qJD(1);
t27 = -t197 * t308 + t53 * t560;
t1130 = qJD(1) * t27;
t54 = t746 * t100 + t743 * t749;
t28 = t197 * t311 - t54 * t560;
t1129 = qJD(1) * t28;
t1121 = t136 * t741;
t1124 = t135 * t738;
t43 = t256 * t1182 - (t1121 - t1124) * t560;
t1128 = qJD(1) * t43;
t55 = -t1031 * t136 - t135 * t495;
t1127 = qJD(1) * t55;
t88 = -t1182 * t265 - t266 * t560;
t1126 = qJD(1) * t88;
t1046 = t746 * t126;
t1061 = t743 * t101;
t62 = t1046 + t1061;
t10 = -t1182 * t54 + t1196 * t197 + t205 * t311 - t560 * t62;
t1125 = t10 * qJD(1);
t678 = (pkin(2) * t745 - pkin(9) * t748) * t740;
t665 = t744 * t678;
t666 = t747 * t677;
t1028 = t665 - t666;
t514 = -qJ(4) * t968 + t1028;
t504 = t739 * t514;
t1035 = t747 * t748;
t1048 = t744 * t677;
t667 = t747 * t678;
t912 = t667 + t1048;
t492 = (pkin(3) * t745 - qJ(4) * t1035) * t740 + t912;
t917 = t1131 * t492;
t318 = -t504 + t917;
t300 = -pkin(4) * t1066 - t318;
t241 = pkin(5) * t569 + t300;
t367 = t549 + t1051;
t319 = t1131 * t514 + t492 * t739;
t299 = qJ(5) * t1066 + t319;
t703 = pkin(3) * t968;
t611 = t703 + t679;
t390 = pkin(4) * t615 - qJ(5) * t616 + t611;
t198 = -t299 * t738 + t390 * t741;
t143 = pkin(5) * t615 - pkin(10) * t571 + t198;
t1045 = t746 * t143;
t199 = t299 * t741 + t390 * t738;
t164 = -pkin(10) * t569 + t199;
t1058 = t743 * t164;
t67 = t1045 - t1058;
t15 = t197 * t367 + t241 * t308 - t53 * t615 + t560 * t67;
t1120 = t15 * qJD(1);
t1038 = t746 * t571;
t1052 = t743 * t569;
t368 = t1038 - t1052;
t1044 = t746 * t164;
t1059 = t743 * t143;
t68 = t1044 + t1059;
t16 = t197 * t368 + t241 * t311 - t54 * t615 - t560 * t68;
t1119 = t16 * qJD(1);
t1118 = t198 * t741;
t1117 = t199 * t738;
t23 = t135 * t162 + t136 * t163 + t256 * t270;
t1116 = t23 * qJD(1);
t24 = -t163 * t1031 - t162 * t495 - (-t1122 - t1123) * t560;
t1115 = t24 * qJD(1);
t25 = t135 * t198 + t136 * t199 + t256 * t300;
t1114 = t25 * qJD(1);
t1113 = t256 * t684;
t26 = -t1031 * t199 - t135 * t571 - t136 * t569 - t198 * t495;
t1112 = t26 * qJD(1);
t1111 = t270 * t605;
t1110 = t270 * t689;
t1109 = t308 * t1182;
t1108 = t311 * t1182;
t33 = t1031 * t270 - t1074 * t256 + t1182 * t135 + t162 * t560;
t1107 = t33 * qJD(1);
t34 = -t1064 * t256 - t1182 * t136 - t163 * t560 + t270 * t495;
t1106 = t34 * qJD(1);
t1105 = t348 * t560;
t1104 = t1196 * t560;
t1103 = t368 * t691;
t408 = t741 * t797 - t1192;
t1102 = t408 * t738;
t1101 = t409 * t741;
t41 = t1031 * t300 + t135 * t615 + t198 * t560 + t256 * t569;
t1100 = t41 * qJD(1);
t410 = t581 * t741 + t1198;
t1099 = t410 * t741;
t1098 = t411 * t738;
t42 = -t136 * t615 - t199 * t560 + t256 * t571 + t300 * t495;
t1097 = t42 * qJD(1);
t52 = (t265 - t271) * t560 + (-t266 + t270) * t1182;
t1096 = t52 * qJD(1);
t553 = t691 * t684;
t1095 = t553 * t684;
t1094 = t474 * t689;
t1093 = t557 * t684;
t1092 = t558 * t689;
t1091 = t1182 * t605;
t60 = -t1182 * t318 - t265 * t616 - t266 * t615 - t319 * t560;
t1090 = t60 * qJD(1);
t1086 = t605 * t689;
t63 = t1137 * t573 - t265 * t270 + t266 * t271;
t1085 = t63 * qJD(1);
t1084 = t645 * t747;
t66 = t265 * t318 + t266 * t319 + t573 * t611;
t1083 = t66 * qJD(1);
t1081 = t686 * t615;
t1080 = t689 * t686;
t1079 = t689 * t741;
t1078 = t691 * t615;
t733 = t740 ^ 2;
t737 = t748 ^ 2;
t1077 = t733 * t737;
t1076 = t733 * t745;
t1075 = t738 * t495;
t1072 = t738 * t615;
t1063 = t741 * t615;
t340 = pkin(10) * t684 * t741 + pkin(5) * t689 + t410;
t1057 = t743 * t340;
t365 = pkin(10) * t575 + t411;
t1056 = t743 * t365;
t1043 = t746 * t340;
t1042 = t746 * t365;
t81 = -t1196 * t308 + t311 * t348;
t1034 = t81 * qJD(1);
t82 = -t308 * t368 - t311 * t367;
t1033 = t82 * qJD(1);
t835 = t1168 * t1196 + t1170 * t311;
t85 = -t1103 / 0.2e1 + t835;
t1032 = t85 * qJD(1);
t1027 = t916 / 0.2e1 + t1067 / 0.2e1;
t717 = -t744 ^ 2 + t747 ^ 2;
t127 = t1105 + t1109;
t1026 = qJD(1) * t127;
t128 = t1105 - t1109;
t1025 = qJD(1) * t128;
t129 = t1104 + t1108;
t1024 = qJD(1) * t129;
t130 = -t1104 + t1108;
t1023 = qJD(1) * t130;
t914 = t741 * t1031;
t204 = (-t914 + t1075) * t560;
t1022 = qJD(1) * t204;
t209 = -t1031 * t1182 - t1074 * t560;
t1021 = qJD(1) * t209;
t210 = t1064 * t560 + t1182 * t495;
t1020 = qJD(1) * t210;
t1019 = qJD(1) * t311;
t356 = -t1065 * t519 - t645 * t672;
t1018 = qJD(1) * t356;
t357 = -t1065 * t520 - t645 * t674;
t1017 = qJD(1) * t357;
t922 = t1165 + t1200;
t360 = t922 * t738;
t1016 = qJD(1) * t360;
t610 = t1027 * t1065;
t1014 = qJD(1) * t610;
t1013 = qJD(1) * t674;
t1012 = qJD(1) * t742;
t1011 = qJD(1) * t748;
t1010 = qJD(2) * t558;
t1008 = qJD(2) * t689;
t1007 = qJD(2) * t744;
t1006 = qJD(2) * t747;
t1005 = qJD(2) * t748;
t415 = (t1149 + t816) * t684;
t1003 = qJD(3) * t415;
t1002 = qJD(3) * t686;
t1001 = qJD(3) * t689;
t1000 = qJD(3) * t691;
t999 = qJD(3) * t700;
t998 = qJD(3) * t741;
t997 = qJD(3) * t744;
t996 = qJD(3) * t747;
t995 = qJD(4) * t741;
t994 = qJD(5) * t560;
t993 = qJD(5) * t684;
t992 = qJD(6) * t560;
t991 = qJD(6) * t684;
t990 = qJD(6) * t691;
t834 = t1155 * t311 + t1200 * t558;
t117 = t834 - t1030;
t989 = t117 * qJD(1);
t817 = -t1052 / 0.2e1 + t1038 / 0.2e1;
t837 = -t1200 * t474 + t1204;
t118 = t817 - t837;
t988 = t118 * qJD(1);
t146 = -t308 * t615 - t367 * t560;
t987 = t146 * qJD(1);
t147 = t311 * t615 + t368 * t560;
t986 = t147 * qJD(1);
t783 = (t914 / 0.2e1 - t1075 / 0.2e1) * t684;
t824 = t1141 * t571 + t1145 * t569;
t179 = t783 - t824;
t985 = t179 * qJD(1);
t934 = -t1066 / 0.2e1;
t948 = t560 * t1151;
t949 = t1031 * t1156;
t224 = -t949 - t1062 / 0.2e1 + (t948 + t934) * t738;
t984 = t224 * qJD(1);
t239 = t1065 * t912 + t1066 * t519 - t645 * t968 - t672 * t679;
t983 = t239 * qJD(1);
t240 = t679 * t674 + (-t520 * t745 + (t1028 + t1084) * t748) * t740;
t982 = t240 * qJD(1);
t259 = -t560 * t816 + t942;
t981 = t259 * qJD(3);
t362 = t922 * t741;
t980 = t362 * qJD(1);
t414 = (t1149 - t816) * t684;
t979 = t414 * qJD(3);
t445 = -t672 * t747 - t674 * t744;
t506 = t445 * t1065;
t978 = t506 * qJD(1);
t584 = -t1066 * t672 + t1077 * t744;
t977 = t584 * qJD(1);
t585 = -t1066 * t674 + t1077 * t747;
t976 = t585 * qJD(1);
t608 = pkin(1) * t1076 + t679 * t742;
t975 = t608 * qJD(1);
t609 = t1138 * t733 - t677 * t742;
t974 = t609 * qJD(1);
t973 = t610 * qJD(6);
t676 = t686 * qJD(6);
t688 = (-t745 ^ 2 + t737) * t733;
t972 = t688 * qJD(1);
t971 = t740 * qJD(3);
t970 = t1137 / 0.2e1;
t969 = t1136 / 0.2e1;
t967 = t740 * t1035;
t966 = -t1131 / 0.2e1;
t963 = t495 * t1015;
t962 = t1031 * t1015;
t961 = t740 * t1011;
t960 = t684 * t1008;
t959 = t738 * t1008;
t958 = t740 * t1005;
t957 = t748 * t971;
t956 = t689 * t993;
t955 = t733 * t1011;
t954 = qJD(2) * t1066;
t951 = -t1113 / 0.2e1;
t950 = t1110 / 0.2e1;
t945 = t1081 / 0.2e1;
t944 = t684 * t1154;
t943 = -t1079 / 0.2e1;
t941 = -t1078 / 0.2e1;
t940 = t1078 / 0.2e1;
t938 = -t1074 / 0.2e1;
t937 = -t1072 / 0.2e1;
t936 = -t578 / 0.2e1;
t935 = t578 / 0.2e1;
t933 = t1066 / 0.2e1;
t932 = t560 * t1141;
t930 = -t1064 / 0.2e1;
t929 = -t1063 / 0.2e1;
t927 = t1050 / 0.2e1;
t923 = 0.2e1 * t1201;
t921 = t665 / 0.2e1 - t666 / 0.2e1;
t919 = t1135 * t738;
t911 = qJD(2) + t1012;
t910 = -qJD(6) - t1015;
t909 = -qJD(6) - t1009;
t908 = qJD(5) + t999;
t907 = t1005 * t1076;
t906 = t745 * t955;
t905 = t747 * t961;
t903 = 0.2e1 * t1200 * t684;
t902 = t920 * t689;
t901 = -t918 / 0.2e1 - t1070 / 0.2e1;
t900 = -t695 / 0.2e1 + t1068 / 0.2e1;
t899 = t706 / 0.2e1 - t1071 / 0.2e1;
t550 = -t1069 / 0.2e1 + t650 / 0.2e1;
t898 = -t1191 / 0.2e1 - t708 / 0.2e1 - t1031 / 0.2e1;
t897 = t703 / 0.2e1 + t719 / 0.2e1 + t720 / 0.2e1;
t896 = -qJD(3) + t961;
t364 = -pkin(10) * t578 + t409;
t754 = t684 * pkin(5) - t1192 + ((-pkin(10) - qJ(5)) * t689 + t869) * t741;
t200 = t364 * t743 - t746 * t754;
t202 = t1043 - t1056;
t751 = -t197 * t553 / 0.2e1 + t200 * t1167 + t202 * t1200 + t205 * t474 / 0.2e1 + t53 * t1152 + t308 * t1173 - t348 * t1172 + t61 * t1155;
t675 = t1135 * t741;
t570 = t675 * t743 + t746 * t919;
t778 = t1148 * t367 + t1153 * t241 + t1159 * t570;
t2 = t751 - t778;
t64 = -t200 * t689 + t202 * t684 + t474 * t531 - t532 * t553;
t895 = qJD(1) * t2 + qJD(2) * t64;
t201 = t746 * t364 + t743 * t754;
t203 = t1042 + t1057;
t750 = t1152 * t54 + t1156 * t62 + t1165 * t203 + t1167 * t201 + t1168 * t205 + t1170 * t197 + t1172 * t1196 + t1173 * t311;
t572 = t746 * t675 - t743 * t919;
t777 = t1148 * t368 + t1149 * t241 + t1159 * t572;
t4 = t750 - t777;
t65 = -t201 * t689 - t203 * t684 + t531 * t558 + t532 * t557;
t894 = qJD(1) * t4 + qJD(2) * t65;
t752 = t135 * t410 / 0.2e1 + t136 * t1177 + t162 * t408 / 0.2e1 + t163 * t1178 + t256 * t1161 + t1111 / 0.2e1;
t842 = t1140 * t199 + t1145 * t198;
t771 = t1146 * t300 + t722 * t842;
t5 = -t752 + t771;
t97 = t1181 * t605 + t408 * t410 + t409 * t411;
t893 = -t5 * qJD(1) + t97 * qJD(2);
t798 = -t560 * t1178 + t136 * t1156 - t198 / 0.2e1;
t799 = t408 * t1200 + t135 * t1155 - t199 / 0.2e1;
t800 = t1031 * t1177 + t1201 * t410;
t7 = (t1147 * t569 + t1151 * t162 - t799) * t741 + (t722 * t571 / 0.2e1 + t163 * t1151 + t798) * t738 + t800;
t888 = -t408 * t741 - t409 * t738;
t95 = (t1098 + t1099) * t689 + t888 * t684;
t892 = -qJD(1) * t7 - qJD(2) * t95;
t779 = t1148 * t311 + t1149 * t197 + t1165 * t572;
t822 = -t1060 / 0.2e1 + t1047 / 0.2e1;
t29 = -t779 + t822;
t775 = t1148 * t558 + t1149 * t532 + t1156 * t572;
t818 = -t1056 / 0.2e1 + t1043 / 0.2e1;
t89 = -t775 + t818;
t891 = t29 * qJD(1) + t89 * qJD(2);
t780 = t1154 * t197 + t1179 * t700 + t1200 * t570;
t823 = -t1061 / 0.2e1 - t1046 / 0.2e1;
t30 = -t780 + t823;
t776 = -t1148 * t474 + t1154 * t532 + t1155 * t570;
t819 = -t1057 / 0.2e1 - t1042 / 0.2e1;
t90 = -t776 + t819;
t890 = t30 * qJD(1) + t90 * qJD(2);
t889 = -t162 * t738 + t163 * t741;
t887 = -t410 * t738 + t411 * t741;
t886 = -t1182 * t722 - t560 * t729;
t885 = -t684 * t729 - t689 * t722;
t106 = t200 * t684 - t474 * t532;
t770 = t1155 * t53 + t1171 * t197 + t1179 * t532 + t1200 * t200;
t821 = -t1059 / 0.2e1 - t1044 / 0.2e1;
t12 = -t770 + t821;
t884 = qJD(1) * t12 - qJD(2) * t106;
t107 = -t201 * t684 + t532 * t558;
t769 = t1156 * t54 + t1165 * t201 + t1168 * t197 + t1172 * t311;
t820 = -t1058 / 0.2e1 + t1045 / 0.2e1;
t11 = -t769 + t820;
t883 = qJD(1) * t11 - qJD(2) * t107;
t152 = (t408 + t1192) * t689 + (t410 - t1198) * t684;
t753 = t1031 * t1199 + t1152 * t135 + t1156 * t162 + t1165 * t410 + t1167 * t408;
t760 = t615 * t1147 + t605 * t1200 - t1110 / 0.2e1 + t1113 / 0.2e1;
t839 = t1141 * t300 + t1146 * t569;
t19 = t738 * t760 + t753 + t839;
t882 = -t19 * qJD(1) + t152 * qJD(2);
t153 = (-t409 + t1087) * t689 + (-t411 - t1197) * t684;
t755 = t1151 * t136 + t1155 * t163 + t1166 * t409 + t1199 * t495 + t1200 * t411;
t840 = t1144 * t300 + t1146 * t571;
t20 = t741 * t760 + t755 + t840;
t881 = -t20 * qJD(1) + t153 * qJD(2);
t841 = t256 * t1151 + t1091 / 0.2e1;
t18 = t738 * t799 + t741 * t798 + t841;
t189 = t1086 + (-t1101 + t1102) * t684;
t880 = qJD(1) * t18 + qJD(2) * t189;
t782 = t1146 * t689 - t1188 * t684;
t828 = -t1099 / 0.2e1 - t1098 / 0.2e1;
t188 = t782 + t828;
t781 = t1146 * t1182 - t1188 * t560;
t843 = t1141 * t162 + t1145 * t163;
t57 = t781 + t843;
t879 = qJD(1) * t57 + qJD(2) * t188;
t211 = t888 * t689;
t774 = t504 / 0.2e1 - t917 / 0.2e1 + pkin(4) * t934;
t827 = t1031 * t1178 + t1201 * t408;
t37 = t1187 * t689 + t774 + t827;
t878 = qJD(1) * t37 - qJD(2) * t211;
t761 = t1166 * t1181 + t1182 * t1199;
t789 = (t1143 * t615 + t616 * t966) * pkin(3);
t39 = (t1190 - t270 / 0.2e1) * t689 + (t271 / 0.2e1 - t265 / 0.2e1) * t684 + t789 + t761;
t877 = t39 * qJD(1);
t229 = -t474 * t557 + t553 * t558;
t766 = t311 * t553 / 0.2e1 + t1196 * t1171 + t557 * t1179 - t348 * t1169;
t830 = t1150 * t367 + t1154 * t368;
t47 = t766 - t830;
t876 = qJD(1) * t47 + qJD(2) * t229;
t298 = t1136 * t730;
t768 = t265 * t1161 + t605 * t1190 - t1111 / 0.2e1 + t271 * t1199;
t806 = t319 * t1142 + t318 * t1131 / 0.2e1;
t35 = (t1139 * t573 + t1157 * t730 + t806) * pkin(3) + t768;
t875 = -t35 * qJD(1) + t298 * qJD(2);
t328 = -t1094 + t1095;
t825 = t1151 * t308 - t1167 * t474;
t832 = -t1156 * t348 - t1165 * t553;
t762 = -t825 + t832;
t74 = t945 + t762;
t874 = -qJD(1) * t74 - qJD(2) * t328;
t329 = t1094 + t1095;
t763 = t825 + t832;
t76 = t945 + t763;
t873 = qJD(1) * t76 + qJD(2) * t329;
t330 = t1092 + t1093;
t831 = t1156 * t1196 + t1165 * t557;
t833 = t1151 * t311 + t1166 * t558;
t764 = -t831 + t833;
t78 = t941 + t764;
t872 = -qJD(1) * t78 - qJD(2) * t330;
t331 = t1092 - t1093;
t765 = t831 + t833;
t80 = t940 + t765;
t871 = qJD(1) * t80 + qJD(2) * t331;
t369 = -t1181 * t684 + t1086;
t767 = t265 * t1151 + t266 * t1155 - t1091 / 0.2e1 - t560 * t1199;
t69 = t767 + t897;
t870 = -qJD(1) * t69 + qJD(2) * t369;
t132 = (-t738 * t898 + t741 * t923) * t689;
t442 = t714 * t1180;
t868 = qJD(1) * t132 + qJD(2) * t442;
t790 = t1151 * t1182 + t903;
t756 = t1031 * t1151 + t738 * t790;
t140 = t929 + t756;
t513 = t595 * t738;
t867 = qJD(1) * t140 + qJD(2) * t513;
t759 = t1151 * t495 + t741 * t790;
t142 = t1072 / 0.2e1 + t759;
t583 = t595 * t741;
t866 = qJD(1) * t142 + qJD(2) * t583;
t186 = 0.2e1 * t1166 * t689 + t903;
t230 = t1182 ^ 2 + t560 ^ 2;
t865 = qJD(1) * t230 + qJD(2) * t186;
t864 = qJD(1) * t186 + qJD(2) * t595;
t826 = -t1031 * t1144 - t1140 * t495;
t242 = -t826 + t550;
t508 = -t902 - t1027;
t863 = qJD(1) * t242 - qJD(2) * t508;
t862 = -qJD(1) * t259 - qJD(2) * t414;
t180 = qJD(1) * t260 + qJD(2) * t415;
t261 = t1196 / 0.2e1 - t801;
t416 = (t1153 - t815) * t684;
t861 = qJD(1) * t261 + qJD(2) * t416;
t417 = (t1154 - t815) * t684;
t860 = -qJD(1) * t772 - qJD(2) * t417;
t263 = -t560 * t927 + t746 * t931 + t946;
t418 = t944 + t1189;
t859 = qJD(1) * t263 + qJD(2) * t418;
t322 = t1182 * t686;
t858 = qJD(1) * t322 + qJD(2) * t1080;
t325 = t691 * t1182;
t857 = qJD(1) * t325 + t1193;
t805 = -t1142 * t560 + t1182 * t966;
t326 = (t1157 + t805) * pkin(3);
t804 = t1143 * t684 + t689 * t966;
t545 = (t1139 + t804) * pkin(3);
t856 = qJD(1) * t326 + qJD(2) * t545;
t855 = qJD(1) * t1191 + qJD(2) * t578;
t366 = t714 * t560;
t582 = t714 * t684;
t854 = qJD(1) * t366 + qJD(2) * t582;
t509 = t672 ^ 2 - t674 ^ 2;
t853 = qJD(1) * t509 + qJD(2) * t445;
t852 = qJD(1) * t445 + qJD(2) * t717;
t851 = qJD(1) * t550 + qJD(2) * t1027;
t850 = t1007 + t1013;
t173 = t738 * t923 + t741 * t898;
t849 = qJD(1) * t173 + qJD(3) * t714;
t847 = t740 * t904;
t773 = pkin(2) * t672 / 0.2e1 + t1084 / 0.2e1 - pkin(9) * t968 / 0.2e1;
t352 = t773 + t921;
t846 = pkin(2) * t1006 - qJD(1) * t352;
t807 = pkin(2) * t1157 + pkin(9) * t967 / 0.2e1;
t354 = -t667 / 0.2e1 + (t1158 - t677 / 0.2e1) * t744 + t807;
t845 = pkin(2) * t1007 - qJD(1) * t354;
t844 = -t1121 / 0.2e1 + t1124 / 0.2e1;
t838 = t1080 * t1165 - t1156 * t311;
t836 = -t1165 * t474 - t1204;
t829 = t1101 / 0.2e1 - t1102 / 0.2e1;
t116 = t838 + t1030;
t814 = qJD(1) * t116 - t1009 * t1080;
t119 = t817 - t836;
t813 = qJD(1) * t119 - t1183;
t551 = t672 * t1139 + t674 * t747 / 0.2e1;
t812 = -qJD(2) * t551 + t1013 * t672;
t811 = qJD(1) * t551 + t1006 * t744;
t809 = -t1155 * t495 + t689 * t932;
t226 = t809 + t899;
t808 = -qJD(1) * t226 + t741 * t960;
t72 = t308 * t474 - t311 * t558;
t86 = t308 * t686 - t311 * t691;
t96 = t308 ^ 2 - t311 ^ 2;
t802 = qJD(1) * t96 + qJD(2) * t72 + qJD(3) * t86;
t207 = -t829 + t900;
t757 = (-t1031 * t1140 - t1145 * t495) * t722 - t844;
t45 = t757 + t901;
t622 = t714 * t722;
t796 = qJD(1) * t45 - qJD(2) * t207 + qJD(3) * t622;
t228 = t474 * t686 - t558 * t691;
t296 = t474 ^ 2 - t558 ^ 2;
t795 = qJD(1) * t72 + qJD(2) * t296 + qJD(3) * t228;
t548 = t686 ^ 2 - t691 ^ 2;
t794 = qJD(1) * t86 + qJD(2) * t228 + qJD(3) * t548;
t190 = t1031 ^ 2 + t495 ^ 2;
t793 = qJD(1) * t190 + qJD(2) * t132 + qJD(3) * t173;
t174 = -t743 * t898 - t746 * t923;
t372 = t648 / 0.2e1 + (t927 - t1036) * t689;
t792 = qJD(1) * t174 + qJD(2) * t372 - t1000;
t175 = -t743 * t923 + 0.2e1 * t1176;
t791 = qJD(1) * t175 - t1002 - t1193;
t105 = t1169 * t308 + t1171 * t311;
t151 = t1150 * t308 + t1154 * t311;
t788 = -qJD(2) * t105 - qJD(3) * t151 + t1019 * t308;
t323 = -t1149 * t474 + t1154 * t558;
t787 = qJD(1) * t105 + qJD(3) * t323 - t1010 * t474;
t786 = -qJD(1) * t151 - qJD(2) * t323 + t1000 * t686;
t320 = t1155 * t1182 + t948;
t785 = qJD(2) * t320 + qJD(6) * t550 + t1015 * t1182;
t784 = qJD(1) * t320 + qJD(6) * t1027 + t960;
t709 = qJD(2) * t933;
t671 = t1027 * qJD(3);
t651 = (t955 - t971 / 0.2e1) * t745;
t563 = -t1081 / 0.2e1;
t547 = t551 * qJD(3);
t544 = pkin(3) * t804 + t969;
t507 = -t902 + t1027;
t441 = t445 * qJD(3);
t440 = (qJD(1) * t1182 + t1008) * t741;
t419 = t944 - t1189;
t407 = t414 * qJD(6);
t406 = t415 * qJD(6);
t396 = qJD(2) * t610 + qJD(3) * t550;
t375 = -t648 / 0.2e1 + (t924 - t815) * t689;
t361 = t932 + t930;
t359 = t1145 * t560 + t938;
t355 = t744 * t1158 + t1048 / 0.2e1 + t667 / 0.2e1 + t807;
t353 = t773 - t921;
t327 = pkin(3) * t805 + t970;
t317 = t323 * qJD(6);
t316 = t320 * qJD(3);
t258 = t259 * qJD(6);
t257 = t260 * qJD(6);
t243 = t826 + t550;
t225 = t809 - t899;
t223 = t560 * t935 - t949 + t1062 / 0.2e1 + t738 * t933;
t222 = t228 * qJD(6);
t208 = t829 + t900;
t187 = t782 - t828;
t185 = t186 * qJD(4);
t178 = t783 + t824;
t176 = t1176 + t1202 / 0.2e1;
t172 = t173 * qJD(5);
t171 = -t180 - t990;
t150 = t151 * qJD(6);
t141 = t937 + t759;
t139 = t1063 / 0.2e1 + t756;
t131 = t132 * qJD(5);
t123 = -t834 - t1030;
t122 = t817 + t836;
t121 = t817 + t837;
t120 = -t838 + t1030;
t104 = t105 * qJD(6);
t92 = t775 + t818;
t91 = t776 + t819;
t84 = t1103 / 0.2e1 + t835;
t83 = t86 * qJD(6);
t79 = t941 + t765;
t77 = t940 + t764;
t75 = t563 + t763;
t73 = t563 + t762;
t71 = t72 * qJD(6);
t70 = -t767 + t897;
t56 = t781 - t843;
t46 = t766 + t830;
t44 = t757 - t901;
t40 = t1152 * t266 + t1155 * t265 + t1156 * t271 - t761 + t789 + t950;
t38 = t135 * t943 + t136 * t936 + t774 - t827;
t36 = pkin(3) * t806 + t573 * t969 + t730 * t970 - t768;
t32 = t779 + t822;
t31 = t780 + t823;
t22 = t605 * t930 + t722 * t929 - t755 + t840 + (t950 + t951) * t741;
t21 = t270 * t935 + t605 * t938 + t722 * t937 + t738 * t951 - t753 + t839;
t17 = t1117 / 0.2e1 + t1118 / 0.2e1 + t844 * t684 - t829 * t560 + t841;
t14 = t769 + t820;
t13 = t770 + t821;
t8 = t409 * t939 + t163 * t936 + t408 * t931 + t162 * t943 + (t1141 * t569 + t1144 * t571) * t722 - t800 + t842 + t1187 * t684;
t6 = t752 + t771;
t3 = t750 + t777;
t1 = t751 + t778;
t48 = [0, 0, 0, t907, t688 * qJD(2), t742 * t958, -t742 * t954, 0, -t608 * qJD(2), -t609 * qJD(2) (-qJD(3) * t672 + t747 * t958) * t674, qJD(2) * t506 + qJD(3) * t509, -qJD(2) * t585 + t672 * t957, qJD(2) * t584 + t674 * t957, -t907, -qJD(2) * t239 - qJD(3) * t357, qJD(2) * t240 + qJD(3) * t356, qJD(2) * t60 + qJD(3) * t52 + qJD(4) * t230, qJD(2) * t66 + qJD(3) * t63 + qJD(4) * t88, qJD(2) * t41 + qJD(3) * t33 - qJD(4) * t209 - t495 * t994, qJD(2) * t42 + qJD(3) * t34 + qJD(4) * t210 + t1031 * t994, qJD(2) * t26 + qJD(3) * t24 - qJD(4) * t204 + qJD(5) * t190, qJD(2) * t25 + qJD(3) * t23 + qJD(4) * t43 + qJD(5) * t55 (qJD(2) * t368 + qJD(3) * t1196 - qJD(6) * t308) * t311, qJD(2) * t82 + qJD(3) * t81 + qJD(6) * t96, qJD(2) * t147 + qJD(3) * t129 - t308 * t992, qJD(2) * t146 + qJD(3) * t128 - t311 * t992 (qJD(2) * t615 + qJD(3) * t1182) * t560, qJD(2) * t15 + qJD(3) * t9 + qJD(4) * t127 + qJD(6) * t28 - t311 * t994, qJD(2) * t16 + qJD(3) * t10 + qJD(4) * t130 + qJD(6) * t27 + t308 * t994; 0, 0, 0, t906, t972, t911 * t1065, -t911 * t1066, 0, -qJD(2) * t679 - t975, qJD(2) * t677 - t974, t850 * t967 + t547, t717 * t958 + t441 + t978, t744 * t954 - t976, t747 * t954 + t977, -t651, -t983 + (-t679 * t747 + t744 * t847) * qJD(2) + t355 * qJD(3), t982 + (t679 * t744 + t747 * t847) * qJD(2) + t353 * qJD(3), t1090 + (-t1181 * t615 - t318 * t689 - t319 * t684 + t605 * t616) * qJD(2) + t40 * qJD(3) + t185, t1083 + (t1181 * t319 - t318 * t605 + t611 * t730) * qJD(2) + t36 * qJD(3) + t70 * qJD(4), t1100 + (t198 * t684 + t300 * t578 + t408 * t615 + t569 * t605) * qJD(2) + t21 * qJD(3) + t139 * qJD(4) + t225 * qJD(5), t1097 + (t1079 * t300 - t199 * t684 - t409 * t615 + t571 * t605) * qJD(2) + t22 * qJD(3) + t141 * qJD(4) + t223 * qJD(5), t1112 + (-t408 * t571 - t409 * t569 + (-t1117 - t1118) * t689) * qJD(2) + t8 * qJD(3) + t178 * qJD(4) + t131, t1114 + (t198 * t408 + t199 * t409 + t300 * t605) * qJD(2) + t6 * qJD(3) + t17 * qJD(4) + t38 * qJD(5), t84 * qJD(3) + t104 + (t1010 + t1019) * t368, t1033 + (-t367 * t558 - t368 * t474) * qJD(2) + t46 * qJD(3) + t71, t986 + (t368 * t684 + t558 * t615) * qJD(2) + t77 * qJD(3) + t121 * qJD(6), t987 + (-t367 * t684 - t474 * t615) * qJD(2) + t73 * qJD(3) + t123 * qJD(6), t973 + t316 + (t1009 + t1015) * t615, t1120 + (-t200 * t615 + t241 * t474 + t367 * t532 + t67 * t684) * qJD(2) + t1 * qJD(3) + t75 * qJD(4) + t120 * qJD(5) + t14 * qJD(6), t1119 + (-t201 * t615 + t241 * t558 + t368 * t532 - t68 * t684) * qJD(2) + t3 * qJD(3) + t79 * qJD(4) + t122 * qJD(5) + t13 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t812, t853, t896 * t672, t896 * t674, t709, qJD(2) * t355 - qJD(3) * t520 - t1017, qJD(2) * t353 + qJD(3) * t519 + t1018, t1096 + t40 * qJD(2) + (t1131 * t560 - t1182 * t739) * t1133, t1085 + t36 * qJD(2) + (-t1131 * t270 + t271 * t739) * t1133 + t327 * qJD(4), t1107 + t21 * qJD(2) + (-t270 * t741 + t738 * t886) * qJD(3) + t359 * qJD(5), t1106 + t22 * qJD(2) + (t270 * t738 + t741 * t886) * qJD(3) + t361 * qJD(5), qJD(2) * t8 + qJD(3) * t889 + t1115 + t172, t1116 + t6 * qJD(2) + (t270 * t729 + t722 * t889) * qJD(3) + t56 * qJD(4) + t44 * qJD(5), t84 * qJD(2) + t150 + (t1000 + t1019) * t1196, t1034 + t46 * qJD(2) + (-t1196 * t686 + t348 * t691) * qJD(3) + t83, qJD(2) * t77 + t1000 * t1182 + t1024 + t1185, qJD(2) * t73 - t1002 * t1182 + t1025 - t258, t785, t1132 + t1 * qJD(2) + (-t1182 * t570 + t205 * t686 - t348 * t700) * qJD(3) - t260 * qJD(5) + t32 * qJD(6), t1125 + t3 * qJD(2) + (-t1182 * t572 + t1196 * t700 + t205 * t691) * qJD(3) - t263 * qJD(5) + t31 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t865, qJD(2) * t70 + qJD(3) * t327 + t1126, qJD(2) * t139 - t1021, qJD(2) * t141 + t1020, qJD(2) * t178 - t1022, qJD(2) * t17 + qJD(3) * t56 + qJD(5) * t243 + t1128, 0, 0, 0, 0, 0, qJD(2) * t75 + t1026 - t258, qJD(2) * t79 + t1023 - t1185; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t225 + qJD(3) * t359 - t963, qJD(2) * t223 + qJD(3) * t361 + t962, t793, qJD(2) * t38 + qJD(3) * t44 + qJD(4) * t243 + t1127, 0, 0, 0, 0, 0, qJD(2) * t120 - t1205, qJD(2) * t122 - qJD(3) * t263 + qJD(6) * t176 + t964; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t788, t802, t121 * qJD(2) + t308 * t910 + t1186, t123 * qJD(2) + t311 * t910 - t981, t396, qJD(2) * t14 + qJD(3) * t32 - qJD(4) * t259 - qJD(6) * t54 + t1129, qJD(2) * t13 + qJD(3) * t31 - qJD(4) * t772 + qJD(5) * t176 + qJD(6) * t53 + t1130; 0, 0, 0, -t906, -t972, -t742 * t961, t1012 * t1066, 0, t975, t974, -t674 * t905 + t547, t441 - t978, -t747 * t957 + t976, t744 * t957 - t977, t651, qJD(3) * t354 + t983, qJD(3) * t352 - t982, -qJD(3) * t39 - t1090 + t185, -qJD(3) * t35 - qJD(4) * t69 - t1083, -qJD(3) * t19 + qJD(4) * t140 + qJD(5) * t226 - t1100, -qJD(3) * t20 + qJD(4) * t142 + qJD(5) * t224 - t1097, -qJD(3) * t7 + qJD(4) * t179 - t1112 + t131, -qJD(3) * t5 + qJD(4) * t18 - qJD(5) * t37 - t1114, qJD(3) * t85 - t1019 * t368 + t104, qJD(3) * t47 - t1033 + t71, qJD(3) * t78 - qJD(6) * t118 - t986, qJD(3) * t74 - qJD(6) * t117 - t987, -t1015 * t615 + t316 - t973, qJD(3) * t2 + qJD(4) * t76 - qJD(5) * t116 - qJD(6) * t11 - t1120, qJD(3) * t4 + qJD(4) * t80 - qJD(5) * t119 - qJD(6) * t12 - t1119; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t744 * t996, t717 * qJD(3), 0, 0, 0, -pkin(2) * t997, -pkin(2) * t996, qJD(4) * t595, qJD(3) * t298 + qJD(4) * t369, qJD(3) * t152 + qJD(4) * t513 - t741 * t956, qJD(3) * t153 + qJD(4) * t583 + t738 * t956, -qJD(3) * t95 + qJD(5) * t442, qJD(3) * t97 + qJD(4) * t189 + qJD(5) * t211 (qJD(3) * t557 - t1184) * t558, qJD(3) * t229 + qJD(6) * t296, qJD(3) * t330 - t474 * t991, qJD(3) * t328 - t558 * t991, t684 * t1001, qJD(3) * t64 + qJD(4) * t329 + qJD(6) * t107 + t1080 * t993, qJD(3) * t65 + qJD(4) * t331 + qJD(6) * t106 + t474 * t993; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t811, t852, -t896 * t747, t896 * t744, qJD(1) * t934, -pkin(9) * t996 - t845, pkin(9) * t997 - t846 (t1131 * t684 - t689 * t739) * t1133 - t877 (-t1131 * t1181 - t605 * t739) * t1133 + t544 * qJD(4) + t875 (t738 * t885 - t1087) * qJD(3) - t575 * qJD(5) + t882, qJD(3) * t1192 + (qJD(3) * t885 - t993) * t741 + t881, qJD(3) * t887 + t892 (t1181 * t729 + t722 * t887) * qJD(3) + t187 * qJD(4) + t208 * qJD(5) + t893, t1032 + t317 + (t1000 + t1010) * t557 (t553 * t691 - t557 * t686) * qJD(3) + t222 + t876, qJD(6) * t419 + t1000 * t689 - t872, -t1001 * t686 - t407 - t874, t784 (t531 * t686 - t553 * t700 - t570 * t689) * qJD(3) - t415 * qJD(5) + t92 * qJD(6) + t895 (t531 * t691 + t557 * t700 - t572 * t689) * qJD(3) - t418 * qJD(5) + t91 * qJD(6) + t894; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t864, qJD(3) * t544 + t870, t867, t866, t985, qJD(3) * t187 + qJD(5) * t507 + t880, 0, 0, 0, 0, 0, -t407 + t873, -qJD(6) * t417 + t871; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t575 - t808, t984 + (t959 - t998) * t684, t868, qJD(3) * t208 + qJD(4) * t507 - t878, 0, 0, 0, 0, 0, qJD(6) * t375 - t1003 - t814, -qJD(3) * t418 - t813; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t787, t795, t419 * qJD(3) + t474 * t909 - t988, t558 * t909 - t979 - t989, t671 - t1014, qJD(3) * t92 - qJD(4) * t414 + qJD(5) * t375 - qJD(6) * t201 - t883, qJD(3) * t91 - qJD(4) * t417 + qJD(6) * t200 - t884; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t812, -t853 (-qJD(1) * t672 + t1006) * t1065, -t850 * t1065, t709, -qJD(2) * t354 + t1017, -qJD(2) * t352 - t1018, qJD(2) * t39 - t1096, qJD(2) * t35 + qJD(4) * t326 - t1085, qJD(2) * t19 + qJD(5) * t360 - t1182 * t995 - t1107, qJD(2) * t20 + qJD(4) * t1191 + qJD(5) * t362 - t1106, qJD(2) * t7 - qJD(4) * t366 - t1115 + t172, qJD(2) * t5 + qJD(4) * t57 + qJD(5) * t45 - t1116, -qJD(2) * t85 - t1019 * t1196 + t150, -qJD(2) * t47 - t1034 + t83, -qJD(2) * t78 - qJD(6) * t261 - t1024, -qJD(2) * t74 - t1025 - t257, -t785, -qJD(2) * t2 + qJD(4) * t322 - qJD(5) * t259 - qJD(6) * t29 - t1132, -qJD(2) * t4 + qJD(4) * t325 - qJD(5) * t772 - qJD(6) * t30 - t1125; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t811, -t852, t905, -t744 * t961, qJD(1) * t933, t845, t846, t877, qJD(4) * t545 - t875, -t689 * t995 - t882, qJD(4) * t578 - t881, -qJD(4) * t582 - t892, qJD(4) * t188 - qJD(5) * t207 - t893, -t1010 * t557 - t1032 + t317, t222 - t876, -qJD(6) * t416 + t872, -t406 + t874, -t784, qJD(4) * t1080 - qJD(5) * t414 - qJD(6) * t89 - t895, qJD(4) * t474 - qJD(5) * t417 - qJD(6) * t90 - t894; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t714 * qJD(5), t622 * qJD(5), -t691 * t676, t548 * qJD(6), 0, 0, 0, t700 * t990, -t700 * t676; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t856, -t440, t855, -t854, t879, 0, 0, 0, 0, 0, t858, t857; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1016, t980, t849, t796, 0, 0, 0, 0, 0, t862, t860; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t786, t794, -t676 - t861, t171, -t851, -qJD(6) * t572 + t691 * t999 - t891, qJD(6) * t570 - t686 * t999 - t890; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t865, qJD(2) * t69 - qJD(3) * t326 - t1126, -qJD(2) * t140 + t1182 * t998 + t1021, -qJD(2) * t142 - qJD(3) * t1191 - t1020, -qJD(2) * t179 + qJD(3) * t366 + t1022, -qJD(2) * t18 - qJD(3) * t57 - qJD(5) * t242 - t1128, 0, 0, 0, 0, 0, -qJD(2) * t76 - qJD(3) * t322 - t1026 - t257, -qJD(2) * t80 - qJD(3) * t325 - qJD(6) * t263 - t1023; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t864, -qJD(3) * t545 - t870, t689 * t998 - t867, -qJD(3) * t578 - t866, qJD(3) * t582 - t985, -qJD(3) * t188 + qJD(5) * t508 - t880, 0, 0, 0, 0, 0, -qJD(3) * t1080 - t406 - t873, -qJD(3) * t474 - qJD(6) * t418 - t871; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t856, t440, -t855, t854, -t879, 0, 0, 0, 0, 0, -t858, -t857; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t863, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t171, -t859 + t676; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2) * t226 - qJD(3) * t360 + t963, -qJD(2) * t224 - qJD(3) * t362 - t962, -t793, qJD(2) * t37 - qJD(3) * t45 + qJD(4) * t242 - t1127, 0, 0, 0, 0, 0, qJD(2) * t116 - qJD(6) * t174 + t965 + t981, qJD(2) * t119 + qJD(6) * t175 + t1186 - t964; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t808, -t684 * t959 - t984, -t868, qJD(3) * t207 - qJD(4) * t508 + t878, 0, 0, 0, 0, 0, -qJD(6) * t372 + t814 + t979, qJD(3) * t417 - t1184 + t813; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1016, -t980, -t849, -t796, 0, 0, 0, 0, 0, -t862 + t990, -t676 - t860; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t863, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t792, t791; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t788, -t802, qJD(2) * t118 + qJD(3) * t261 + t964, qJD(2) * t117 + t1205, t396, qJD(2) * t11 + qJD(3) * t29 + qJD(4) * t260 + qJD(5) * t174 - t1129, qJD(2) * t12 + qJD(3) * t30 + qJD(4) * t263 - qJD(5) * t175 - t1130; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t787, -t795, qJD(3) * t416 + t1183 + t988, t1009 * t558 + t1003 + t989, t671 + t1014, qJD(3) * t89 + qJD(4) * t415 + qJD(5) * t372 + t883, qJD(3) * t90 + qJD(4) * t418 + qJD(5) * t474 + t884; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t786, -t794, t861, t180, t851, -t691 * t908 + t891, t686 * t908 + t890; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t180, t859; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t792, -t791; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t48;