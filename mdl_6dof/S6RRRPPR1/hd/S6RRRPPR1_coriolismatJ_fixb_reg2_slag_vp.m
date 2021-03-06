% Calculate inertial parameters regressor of coriolis matrix for
% S6RRRPPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta4,theta5]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 15:23
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRRPPR1_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR1_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR1_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPPR1_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:23:12
% EndTime: 2019-03-09 15:23:54
% DurationCPUTime: 30.17s
% Computational Cost: add. (47345->816), mult. (90339->1037), div. (0->0), fcn. (109988->10), ass. (0->649)
t869 = qJD(2) + qJD(3);
t1067 = cos(pkin(10));
t698 = sin(qJ(3));
t700 = cos(qJ(2));
t1075 = cos(qJ(3));
t699 = sin(qJ(2));
t860 = t1075 * t699;
t667 = t698 * t700 + t860;
t1110 = -pkin(8) - pkin(7);
t674 = t1110 * t700;
t815 = -t1110 * t860 - t698 * t674;
t1122 = -t667 * qJ(4) - t815;
t960 = t698 * t699;
t619 = -t1075 * t674 + t1110 * t960;
t665 = -t1075 * t700 + t960;
t546 = -t665 * qJ(4) + t619;
t695 = sin(pkin(10));
t221 = -t1067 * t1122 + t695 * t546;
t1185 = t869 * t221;
t591 = t1067 * t665 + t667 * t695;
t694 = sin(pkin(11));
t973 = t694 * t591;
t573 = pkin(5) * t973;
t1130 = t695 * t1122;
t522 = t1067 * t546;
t795 = -t522 / 0.2e1 - t1130 / 0.2e1;
t1184 = -t573 / 0.2e1 - t795;
t1156 = t522 + t1130;
t696 = cos(pkin(11));
t1163 = t1156 * t696;
t647 = t1067 * t667;
t969 = t695 * t665;
t1123 = t647 - t969;
t688 = -t700 * pkin(2) - pkin(1);
t631 = t665 * pkin(3) + t688;
t733 = t591 * pkin(4) + t631;
t712 = -qJ(5) * t1123 + t733;
t209 = t694 * t712 + t1163;
t1047 = t209 * t696;
t1171 = t694 * t1156;
t208 = t696 * t712 - t1171;
t1049 = t208 * t694;
t763 = -t1049 / 0.2e1 + t1047 / 0.2e1;
t1177 = -t763 - t795;
t1183 = qJD(1) * t1177;
t1182 = qJD(5) * t1177;
t1176 = -t795 + t763;
t1181 = t1176 * qJD(5);
t1169 = t1156 * t1123 - t221 * t591;
t1180 = -t209 * t1123 + t1169 * t696;
t1179 = t208 * t1123 + t1169 * t694;
t1074 = cos(qJ(6));
t1145 = t694 * t1123;
t179 = -pkin(9) * t1145 + t209;
t697 = sin(qJ(6));
t701 = -t1171 + t591 * pkin(5) + ((-pkin(9) - qJ(5)) * t1123 + t733) * t696;
t108 = -t1074 * t701 + t179 * t697;
t855 = t1074 * t694;
t961 = t697 * t696;
t664 = t855 + t961;
t1083 = t664 / 0.2e1;
t854 = t1074 * t696;
t962 = t697 * t694;
t746 = t854 - t962;
t1086 = t746 / 0.2e1;
t109 = t1074 * t179 + t697 * t701;
t1070 = t108 * t1083 + t1086 * t109;
t1178 = -t1070 + t1184;
t1175 = t1070 + t1184;
t1157 = t1156 - t573;
t285 = pkin(5) * t1145 + t221;
t1174 = t1157 * t285;
t1173 = t1157 * t664;
t1172 = t1157 * t746;
t1170 = t221 * t1156;
t548 = t591 * t962;
t408 = -t591 * t854 + t548;
t549 = t1123 * t962;
t409 = t1123 * t854 - t549;
t1166 = -t109 * t1123 + t1157 * t409 + t285 * t408;
t1146 = t664 * t1123;
t404 = t664 * t591;
t1165 = -t108 * t1123 + t1146 * t1157 - t285 * t404;
t683 = -pkin(3) * t1067 - pkin(4);
t1021 = t1156 * t683;
t1162 = t221 * t694;
t1161 = t221 * t696;
t1139 = t1123 * qJD(1);
t1158 = t591 * t1139;
t1154 = t1146 * qJD(1);
t1126 = t869 * t664;
t206 = -t1083 * t1146 + t1086 * t409;
t1153 = qJD(1) * t206 + t746 * t1126;
t990 = t1123 ^ 2;
t1151 = t591 / 0.2e1;
t1149 = qJD(1) * t591;
t866 = t1075 * pkin(2);
t687 = t866 + pkin(3);
t816 = t1067 * t698;
t643 = pkin(2) * t816 + t695 * t687;
t634 = qJ(5) + t643;
t681 = t695 * pkin(3) + qJ(5);
t692 = t694 ^ 2;
t693 = t696 ^ 2;
t825 = t693 / 0.2e1 + t692 / 0.2e1;
t1148 = (t634 + t681) * t825;
t1147 = t206 * qJD(6);
t1144 = t746 * t1123;
t834 = t962 / 0.2e1;
t222 = t549 / 0.2e1 + (t834 - t854) * t1123;
t1141 = -qJD(1) * t222 + t1126;
t1127 = t869 * t746;
t1138 = t1127 - t1154;
t915 = qJD(1) * t409;
t1136 = -t1146 * t915 + t206 * t869;
t1135 = t869 * t815;
t1134 = t869 * t619;
t1133 = t1146 ^ 2;
t1107 = t1146 / 0.2e1;
t734 = t961 / 0.2e1 + t855 / 0.2e1;
t838 = t591 * t1083;
t277 = -t591 * t734 + t838;
t1132 = t277 * t869;
t278 = t1151 * t664 + t838;
t1131 = t278 * t869;
t851 = t1146 * t1149;
t978 = t746 * t591;
t839 = t978 / 0.2e1;
t800 = t854 / 0.2e1;
t943 = t548 / 0.2e1 - t591 * t800;
t788 = t839 + t943;
t1129 = t788 * t869;
t1128 = t869 * t1123;
t677 = t692 + t693;
t1125 = t869 * t677;
t1119 = qJD(6) * t1146;
t1118 = qJD(6) * t788;
t589 = -t969 / 0.2e1 + t647 / 0.2e1;
t135 = (t409 / 0.2e1 + t1144 / 0.2e1) * t664 - 0.2e1 * t1107 * t746;
t145 = t1144 * t409 + t1133;
t1116 = qJD(1) * t145 + t135 * t869;
t152 = -t1146 * t746 - t664 * t409;
t171 = -t409 ^ 2 + t1133;
t1115 = qJD(1) * t171 + t152 * t869;
t1111 = t664 ^ 2;
t1112 = t746 ^ 2;
t525 = -t1111 + t1112;
t139 = qJD(1) * t152 + t525 * t869;
t602 = t1111 + t1112;
t125 = qJD(1) * t135 + t602 * t869;
t1072 = t667 * pkin(3);
t400 = pkin(4) * t1123 + qJ(5) * t591 + t1072;
t691 = t699 * pkin(2);
t388 = t400 + t691;
t215 = t694 * t388 - t1161;
t1109 = -t215 / 0.2e1;
t217 = t694 * t400 - t1161;
t1108 = t217 / 0.2e1;
t690 = t696 * pkin(9);
t609 = t696 * t634 + t690;
t824 = (-pkin(9) - t634) * t694;
t456 = -t1074 * t824 + t609 * t697;
t1106 = -t456 / 0.2e1;
t1105 = t456 / 0.2e1;
t457 = t1074 * t609 + t697 * t824;
t1104 = t457 / 0.2e1;
t1073 = pkin(2) * t698;
t680 = t695 * t1073;
t656 = t1067 * t866 - t680;
t523 = t664 * t656;
t1103 = t523 / 0.2e1;
t524 = t746 * t656;
t1102 = t524 / 0.2e1;
t967 = t696 * t681;
t649 = t690 + t967;
t823 = (-pkin(9) - t681) * t694;
t568 = -t1074 * t823 + t649 * t697;
t1101 = -t568 / 0.2e1;
t1100 = t568 / 0.2e1;
t570 = t1074 * t649 + t697 * t823;
t1099 = -t570 / 0.2e1;
t1098 = t570 / 0.2e1;
t1096 = -t591 / 0.2e1;
t1071 = t696 * pkin(5);
t642 = t1067 * t687 - t680;
t635 = -pkin(4) - t642;
t622 = t635 - t1071;
t1093 = t622 / 0.2e1;
t1092 = -t634 / 0.2e1;
t1091 = t635 / 0.2e1;
t1090 = t642 / 0.2e1;
t1089 = -t643 / 0.2e1;
t861 = t1075 * t695;
t655 = (t861 + t816) * pkin(2);
t1088 = t655 / 0.2e1;
t1087 = -t656 / 0.2e1;
t1085 = -t746 / 0.2e1;
t1084 = -t664 / 0.2e1;
t671 = t683 - t1071;
t1082 = -t671 / 0.2e1;
t1081 = t671 / 0.2e1;
t1080 = t681 / 0.2e1;
t1077 = -t694 / 0.2e1;
t1076 = t695 / 0.2e1;
t1069 = pkin(3) * qJD(3);
t1068 = qJD(2) * pkin(2);
t715 = t1093 * t1123 + t1104 * t408 - t1105 * t404;
t214 = t696 * t388 + t1162;
t968 = t696 * t591;
t799 = pkin(5) * t1123 + pkin(9) * t968;
t162 = t214 + t799;
t859 = t1074 * t162;
t867 = pkin(9) * t973;
t184 = t867 + t215;
t964 = t697 * t184;
t112 = t859 - t964;
t857 = t1074 * t184;
t966 = t697 * t162;
t113 = t857 + t966;
t765 = t1084 * t113 + t1085 * t112;
t32 = t715 + t765;
t1066 = qJD(1) * t32;
t36 = t108 * t1144 - t109 * t1146;
t1065 = qJD(1) * t36;
t56 = t108 * t591 - t1146 * t285;
t1064 = qJD(1) * t56;
t57 = -t109 * t591 + t285 * t409;
t1063 = qJD(1) * t57;
t1016 = t221 * t1123;
t65 = t1016 - (t1047 - t1049) * t591;
t1062 = qJD(1) * t65;
t786 = t108 * t408 + t109 * t404;
t10 = -t112 * t409 - t113 * t1146 + t786;
t1060 = t10 * qJD(1);
t216 = t696 * t400 + t1162;
t163 = t216 + t799;
t858 = t1074 * t163;
t187 = t867 + t217;
t963 = t697 * t187;
t114 = t858 - t963;
t856 = t1074 * t187;
t965 = t697 * t163;
t115 = t856 + t965;
t11 = -t114 * t409 - t1146 * t115 + t786;
t1057 = t11 * qJD(1);
t1056 = t112 * t664;
t1055 = t113 * t746;
t1054 = t114 * t664;
t1053 = t115 * t746;
t14 = -t108 * t112 + t109 * t113 + t1174;
t1052 = t14 * qJD(1);
t15 = -t108 * t114 + t109 * t115 + t1174;
t1051 = t15 * qJD(1);
t1046 = t214 * t694;
t1045 = t214 * t696;
t1044 = t215 * t694;
t1043 = t215 * t696;
t1042 = t216 * t694;
t1041 = t216 * t696;
t1040 = t217 * t694;
t1039 = t217 * t696;
t23 = t112 * t591 + t1165;
t1038 = t23 * qJD(1);
t24 = -t113 * t591 + t1166;
t1037 = t24 * qJD(1);
t25 = t114 * t591 + t1165;
t1036 = t25 * qJD(1);
t26 = -t115 * t591 + t1166;
t1035 = t26 * qJD(1);
t1030 = t285 * t746;
t1029 = t285 * t664;
t33 = -t108 * t404 + t109 * t408 + t1123 * t285;
t1028 = t33 * qJD(1);
t38 = t208 * t214 + t209 * t215 + t1170;
t1027 = t38 * qJD(1);
t39 = t208 * t216 + t209 * t217 + t1170;
t1026 = t39 * qJD(1);
t1014 = t221 * t655;
t783 = t208 * t696 + t209 * t694;
t740 = t783 * t591;
t40 = (t1044 + t1045) * t1123 - t740;
t1013 = t40 * qJD(1);
t1012 = t404 * t409;
t1011 = t404 * t591;
t1010 = t1146 * t408;
t1009 = t1146 * t1123;
t1008 = t408 * t591;
t1007 = t408 * t746;
t1006 = t409 * t1123;
t41 = (t1040 + t1041) * t1123 - t740;
t1005 = t41 * qJD(1);
t1004 = t456 * t408;
t1003 = t456 * t1123;
t1002 = t456 * t664;
t1001 = t457 * t404;
t1000 = t457 * t1123;
t999 = t457 * t746;
t998 = t568 * t408;
t997 = t568 * t1123;
t996 = t568 * t664;
t995 = t570 * t404;
t994 = t570 * t1123;
t993 = t570 * t746;
t58 = t214 * t591 + t1179;
t992 = t58 * qJD(1);
t59 = -t215 * t591 + t1180;
t991 = t59 * qJD(1);
t989 = t1123 * t634;
t988 = t1123 * t695;
t987 = t591 ^ 2;
t986 = t591 * t635;
t60 = t216 * t591 + t1179;
t984 = t60 * qJD(1);
t61 = -t217 * t591 + t1180;
t983 = t61 * qJD(1);
t982 = t622 * t404;
t981 = t622 * t408;
t980 = t642 * t591;
t979 = t643 * t1123;
t977 = t664 * t404;
t976 = t665 * t667;
t975 = t671 * t404;
t974 = t671 * t408;
t797 = t591 * t825;
t718 = t1091 * t1123 - t634 * t797;
t762 = -t1045 / 0.2e1 - t1044 / 0.2e1;
t71 = t718 + t762;
t959 = t71 * qJD(1);
t717 = -t681 * t797 + t1123 * t683 / 0.2e1;
t761 = -t1041 / 0.2e1 - t1040 / 0.2e1;
t99 = t717 + t761;
t958 = t99 * qJD(1);
t131 = t135 * qJD(5);
t138 = -t977 + t1007;
t956 = t138 * qJD(4) + t131;
t303 = t523 * t664 + t524 * t746;
t597 = t602 * qJD(5);
t954 = t303 * qJD(3) + t597;
t953 = t278 * qJD(5);
t952 = -qJD(4) * t1144 - t277 * qJD(5);
t801 = -t854 / 0.2e1;
t281 = -t591 * t801 - t548 / 0.2e1 + t839;
t951 = t281 * qJD(5);
t950 = qJD(4) * t1146 - qJD(5) * t788;
t835 = -t968 / 0.2e1;
t439 = t1096 * t696 + t835;
t949 = t439 * qJD(5);
t828 = t1096 + t1151;
t440 = t828 * t696;
t948 = qJD(4) * t1145 + t440 * qJD(5);
t569 = t677 * t656;
t672 = t677 * qJD(5);
t942 = t569 * qJD(3) + t672;
t905 = qJD(2) * t696;
t941 = (qJD(3) * t696 + t905) * t1123;
t747 = t1087 * t591 + t1088 * t1123;
t706 = -(t1091 - t683 / 0.2e1) * t591 + (t1092 + t1080) * t1123 + t747;
t104 = t694 * t706;
t940 = qJD(1) * t104;
t124 = t783 * t1123;
t939 = qJD(1) * t124;
t937 = qJD(1) * t138;
t146 = -t1010 - t1012;
t935 = qJD(1) * t146;
t147 = -t1010 + t1012;
t934 = qJD(1) * t147;
t170 = -t1156 * t591 + t1016;
t932 = qJD(1) * t170;
t173 = -t1009 + t1011;
t930 = qJD(1) * t173;
t174 = t1009 + t1011;
t929 = qJD(1) * t174;
t175 = t1006 + t1008;
t928 = qJD(1) * t175;
t176 = t1006 - t1008;
t927 = qJD(1) * t176;
t756 = -t1084 * t1146 - t1085 * t1144;
t180 = t756 + t589;
t926 = qJD(1) * t180;
t265 = t987 + t990;
t260 = t265 * t696;
t921 = qJD(1) * t260;
t473 = t631 * t1123;
t632 = t691 + t1072;
t313 = t591 * t632 + t473;
t920 = qJD(1) * t313;
t474 = t631 * t591;
t314 = t1123 * t632 - t474;
t919 = qJD(1) * t314;
t332 = -t1072 * t591 - t473;
t918 = qJD(1) * t332;
t333 = -t1072 * t1123 + t474;
t917 = qJD(1) * t333;
t579 = t665 * t691 + t667 * t688;
t914 = qJD(1) * t579;
t580 = -t665 * t688 + t667 * t691;
t913 = qJD(1) * t580;
t910 = qJD(1) * t688;
t909 = qJD(1) * t700;
t908 = qJD(2) * t655;
t907 = qJD(2) * t746;
t906 = qJD(2) * t664;
t904 = qJD(2) * t699;
t903 = qJD(2) * t700;
t902 = qJD(3) * t671;
t901 = qJD(3) * t688;
t898 = qJD(5) * t591;
t897 = qJD(6) * t591;
t896 = qJD(6) * t664;
t129 = t631 * t632;
t893 = t129 * qJD(1);
t130 = t1072 * t631;
t892 = t130 * qJD(1);
t709 = t980 / 0.2e1 - t979 / 0.2e1 + t747;
t817 = t1067 * t591;
t723 = (-t988 / 0.2e1 + t817 / 0.2e1) * pkin(3);
t153 = t723 - t709;
t891 = t153 * qJD(1);
t256 = t677 * t990;
t889 = t256 * qJD(1);
t778 = -t987 + t990;
t257 = t778 * t694;
t248 = t257 * qJD(1);
t258 = t265 * t694;
t888 = t258 * qJD(1);
t259 = t778 * t696;
t249 = t259 * qJD(1);
t887 = t265 * qJD(1);
t886 = t778 * qJD(1);
t276 = t277 * qJD(1);
t267 = t278 * qJD(1);
t279 = -t978 / 0.2e1 + t943;
t268 = t279 * qJD(1);
t271 = t788 * qJD(1);
t885 = t281 * qJD(1);
t748 = -t1089 * t591 + t1090 * t1123;
t648 = t1072 / 0.2e1;
t868 = t648 + t691 / 0.2e1;
t288 = t748 + t868;
t884 = t288 * qJD(1);
t304 = t688 * t691;
t883 = t304 * qJD(1);
t796 = t825 * t1123;
t306 = -t796 - t589;
t882 = t306 * qJD(1);
t881 = t1144 * qJD(1);
t863 = -t1067 / 0.2e1;
t732 = -t1076 * t591 + t1123 * t863;
t379 = (-t667 / 0.2e1 + t732) * pkin(3);
t879 = t379 * qJD(1);
t878 = t1145 * qJD(1);
t438 = t828 * t694;
t877 = t438 * qJD(1);
t876 = t440 * qJD(1);
t575 = t692 * t591;
t576 = t693 * t591;
t443 = t575 + t576;
t875 = t443 * qJD(1);
t547 = t665 ^ 2 - t667 ^ 2;
t874 = t547 * qJD(1);
t873 = t589 * qJD(1);
t583 = t1123 * qJD(4);
t644 = t655 * qJD(3);
t653 = t746 * qJD(6);
t678 = -t699 ^ 2 + t700 ^ 2;
t870 = t678 * qJD(1);
t865 = pkin(1) * t699 * qJD(1);
t864 = pkin(1) * t909;
t302 = t1083 * t524 - t1086 * t523;
t862 = t302 * qJD(3);
t853 = t1144 * t1149;
t849 = t665 * t910;
t848 = t667 * t910;
t847 = t1123 * t898;
t453 = t1123 * t1149;
t845 = t664 * t653;
t844 = qJD(1) * t976;
t843 = t699 * t903;
t842 = t1043 / 0.2e1;
t841 = -t1030 / 0.2e1;
t840 = -t1029 / 0.2e1;
t837 = -t973 / 0.2e1;
t836 = t681 * t1077;
t830 = t1105 + t1101;
t829 = -t457 / 0.2e1 + t1098;
t827 = t1093 + t1082;
t826 = t1081 + t1093;
t822 = t1075 * qJD(2);
t821 = t1075 * qJD(3);
t627 = t677 * t681;
t317 = qJD(6) * t589 + t1158;
t601 = t869 * t667;
t812 = t869 * t696;
t450 = t869 * t591;
t808 = t869 * t694;
t807 = -qJD(6) - t1149;
t806 = t694 * t1158;
t805 = t696 * t1158;
t804 = t692 * t453;
t803 = t693 * t453;
t794 = t438 * qJD(5) - t583 * t696;
t792 = t694 * t812;
t262 = t591 * t1128;
t791 = t1123 * t450;
t789 = t696 * t694 * t453;
t753 = -t1102 * t1146 + t1103 * t409;
t4 = (-t114 / 0.2e1 + t112 / 0.2e1) * t664 - (-t115 / 0.2e1 + t113 / 0.2e1) * t746 + t830 * t408 - t829 * t404 + t753;
t787 = -qJD(1) * t4 - qJD(2) * t303;
t782 = t1043 - t1046;
t781 = t1039 - t1042;
t777 = -t986 - t989;
t776 = -t1123 * t681 - t591 * t683;
t759 = t1156 * t1091 + t1014 / 0.2e1;
t22 = -t1021 / 0.2e1 + (t634 * t1108 + t209 * t656 / 0.2e1 + t681 * t1109) * t696 + (t1080 * t214 + t1087 * t208 + t1092 * t216) * t694 + t759;
t307 = t569 * t634 + t635 * t655;
t775 = t22 * qJD(1) + t307 * qJD(2);
t231 = t999 + t1002;
t758 = -t1104 * t1146 - t1106 * t1144;
t27 = -t758 + t1178;
t774 = qJD(1) * t27 - qJD(2) * t231;
t714 = t1081 * t1123 + t1098 * t408 - t1100 * t404;
t764 = t1084 * t115 + t1085 * t114;
t35 = t714 + t764;
t773 = -qJD(1) * t35 + qJD(2) * t302;
t454 = -t642 * t655 + t643 * t656;
t702 = -t1014 / 0.2e1 - t221 * t1089 + (t1090 + t1087) * t1156;
t724 = (-t1076 * t221 + t1156 * t863) * pkin(3);
t62 = t724 + t702;
t772 = t62 * qJD(1) - t454 * qJD(2);
t55 = (t1108 + t1109) * t696 + (-t216 / 0.2e1 + t214 / 0.2e1) * t694;
t771 = -qJD(1) * t55 - qJD(2) * t569;
t502 = t677 * t634;
t770 = -qJD(2) * t502 + t1183;
t768 = qJD(2) * t656;
t760 = t1039 / 0.2e1 - t1042 / 0.2e1;
t757 = -t1099 * t1146 - t1100 * t1144;
t755 = -t1093 * t1146 + t1151 * t456;
t754 = t1093 * t409 + t1096 * t457;
t752 = t1107 * t655 - t1151 * t523;
t751 = t1088 * t409 + t1096 * t524;
t750 = -t1081 * t1146 + t1151 * t568;
t749 = t1081 * t409 + t1096 * t570;
t737 = -t964 / 0.2e1 + t859 / 0.2e1;
t42 = t840 + t737 - t754;
t745 = qJD(1) * t42 - t622 * t906;
t739 = -t966 / 0.2e1 - t857 / 0.2e1;
t43 = t841 + t739 - t755;
t744 = qJD(1) * t43 - t622 * t907;
t47 = -t1123 * t830 - t404 * t827 + t752;
t743 = -qJD(1) * t47 + t655 * t907;
t49 = t1123 * t829 + t408 * t827 + t751;
t742 = -qJD(1) * t49 - t655 * t906;
t107 = t696 * t706;
t741 = -qJD(1) * t107 - t694 * t908;
t738 = -t965 / 0.2e1 - t856 / 0.2e1;
t736 = -t963 / 0.2e1 + t858 / 0.2e1;
t735 = t834 + t801;
t164 = t456 * t523 + t457 * t524 + t622 * t655;
t703 = t108 * t1103 + t1088 * t285 + t109 * t1102 + t1093 * t1157 + t1104 * t115 + t1106 * t114;
t716 = t1082 * t1157 + t1099 * t113 + t1100 * t112;
t2 = t703 + t716;
t728 = t2 * qJD(1) + t164 * qJD(2) + t302 * qJD(4);
t713 = (t861 / 0.2e1 + t816 / 0.2e1) * pkin(2);
t155 = (t1101 + t1106) * t664 - (t1098 + t1104) * t746 + t713;
t29 = t757 + t1178;
t322 = t993 + t996;
t726 = -qJD(1) * t29 - qJD(2) * t155 + qJD(3) * t322;
t401 = t713 - t1148;
t725 = qJD(2) * t401 - qJD(3) * t627 + t1183;
t722 = t735 * t656;
t721 = t734 * t656;
t309 = -t664 * t826 - t721;
t50 = t840 + t736 - t749;
t720 = qJD(1) * t50 + qJD(2) * t309 - t664 * t902;
t310 = -t746 * t826 + t722;
t51 = t841 + t738 - t750;
t719 = qJD(1) * t51 + qJD(2) * t310 - t746 * t902;
t708 = -t989 / 0.2e1 - t986 / 0.2e1 + t747;
t679 = t699 * t909;
t654 = t664 * qJD(5);
t652 = t746 * qJD(5);
t645 = t656 * qJD(3);
t630 = t694 * t644;
t600 = t869 * t665;
t599 = t664 * t644;
t598 = t746 * t644;
t586 = t591 * qJD(4);
t567 = t696 * t1139;
t519 = t525 * qJD(6);
t444 = t869 * t589;
t441 = -0.2e1 * t789;
t437 = t1077 * t591 + t837;
t433 = t443 * qJD(4);
t416 = t437 * qJD(5);
t402 = t713 + t1148;
t380 = pkin(3) * t732 + t648;
t312 = t1081 * t664 + t1083 * t622 - t721;
t311 = -t1082 * t746 + t1086 * t622 + t722;
t305 = -t796 + t589;
t289 = -t748 + t868;
t274 = t277 * qJD(6);
t272 = t278 * qJD(6);
t255 = t1029 / 0.2e1;
t254 = t1030 / 0.2e1;
t236 = -t267 - t896;
t235 = t653 - t268;
t234 = t653 + t271;
t233 = t276 + t896;
t229 = (t1139 * t693 + t696 * t808) * t591;
t228 = (t1139 * t692 - t792) * t591;
t225 = -t549 / 0.2e1 + (t800 + t735) * t1123;
t219 = 0.2e1 * t795;
t186 = t1123 * t808 + t249;
t185 = -t248 + t941;
t181 = -t756 + t589;
t172 = 0.2e1 * t789 + t869 * (t575 - t576);
t156 = t713 + t996 / 0.2e1 + t993 / 0.2e1 + t1002 / 0.2e1 + t999 / 0.2e1;
t154 = t723 + t709;
t151 = t152 * qJD(6);
t144 = -t408 * t915 + t1147;
t143 = t1154 * t404 - t1147;
t142 = -qJD(6) * t279 - t928;
t141 = -t272 - t930;
t123 = t1123 * t1126 + t1118 + t928;
t122 = t1123 * t1127 - t274 + t930;
t106 = t1171 - t1123 * t967 / 0.2e1 + t683 * t835 + t708 * t696;
t105 = t1123 * t836 + t683 * t837 + t708 * t694 - t1163;
t98 = t717 - t761;
t73 = t1147 + (t1126 + t915) * t408;
t72 = t1138 * t404 - t1147;
t70 = t718 - t762;
t64 = t151 - t934;
t63 = t724 - t702;
t54 = t842 - t1046 / 0.2e1 + t760;
t53 = t255 + t736 + t749;
t52 = t254 + t738 + t750;
t48 = -t1000 / 0.2e1 + t981 / 0.2e1 + t1173 - t994 / 0.2e1 + t974 / 0.2e1 + t751;
t46 = -t1003 / 0.2e1 - t982 / 0.2e1 - t1172 - t997 / 0.2e1 - t975 / 0.2e1 + t752;
t45 = t255 + t737 + t754;
t44 = t254 + t739 + t755;
t37 = t934 + t151 + t869 * (t977 + t1007);
t34 = t714 - t764;
t31 = t715 - t765;
t30 = -t757 + t1175;
t28 = t758 + t1175;
t21 = t681 * t842 + t214 * t836 + t1021 / 0.2e1 + t763 * t656 + t760 * t634 + t759;
t3 = t1001 / 0.2e1 + t1053 / 0.2e1 + t1004 / 0.2e1 - t1054 / 0.2e1 + t995 / 0.2e1 + t1055 / 0.2e1 + t998 / 0.2e1 - t1056 / 0.2e1 + t753;
t1 = t703 - t716;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t843, t678 * qJD(2), 0, -t843, 0, 0, -pkin(1) * t904, -pkin(1) * t903, 0, 0, -t665 * t601, t869 * t547, 0, t869 * t976, 0, 0, qJD(2) * t579 + t667 * t901, qJD(2) * t580 - t665 * t901, 0, qJD(2) * t304, -t791, -t869 * t778, 0, t262, 0, 0, qJD(2) * t313 - qJD(3) * t332, qJD(2) * t314 - qJD(3) * t333, qJD(4) * t265, qJD(2) * t129 + qJD(3) * t130 + qJD(4) * t170, -t693 * t791, 0.2e1 * t1123 * t591 * t792, t869 * t259, -t692 * t791, -t869 * t257, t262, qJD(2) * t58 + qJD(3) * t60 + qJD(4) * t258 - t696 * t847, qJD(2) * t59 + qJD(3) * t61 + qJD(4) * t260 + t694 * t847, -qJD(2) * t40 - qJD(3) * t41 + qJD(5) * t256, qJD(2) * t38 + qJD(3) * t39 + qJD(4) * t65 - qJD(5) * t124 (t408 * t869 - t1119) * t409, qJD(6) * t171 + t147 * t869, -t1146 * t897 + t175 * t869 (qJD(6) * t409 - t404 * t869) * t1146, t173 * t869 - t409 * t897, t262, qJD(2) * t23 + qJD(3) * t25 + qJD(4) * t174 + qJD(6) * t57 - t1144 * t898, qJD(2) * t24 + qJD(3) * t26 + qJD(4) * t176 + qJD(6) * t56 + t1146 * t898, qJD(2) * t10 + qJD(3) * t11 + qJD(4) * t146 + qJD(5) * t145, qJD(2) * t14 + qJD(3) * t15 + qJD(4) * t33 + qJD(5) * t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t679, t870, t903, -t679, -t904, 0, -pkin(7) * t903 - t865, pkin(7) * t904 - t864, 0, 0, -t844, t874, -t600, t844, -t601, 0, -t1134 + t914, t1135 + t913 (t1075 * t665 - t667 * t698) * t1068, t883 + (-t1075 * t619 - t698 * t815) * t1068, -t453, -t886, -t450, t1158, -t1128, 0, -qJD(2) * t1156 + qJD(3) * t219 + t920, t1185 + t919 (-t979 + t980) * qJD(2) + t154 * qJD(3), t893 + (-t1156 * t642 - t221 * t643) * qJD(2) + t63 * qJD(3) + t289 * qJD(4), -t229, t172, t186, -t228, t185, t1158, t992 + (t694 * t777 - t1163) * qJD(2) + t105 * qJD(3) + t416, t991 + (t696 * t777 + t1171) * qJD(2) + t106 * qJD(3) + t949, qJD(2) * t782 + t54 * qJD(3) - t1013, t1027 + (t1156 * t635 + t634 * t782) * qJD(2) + t21 * qJD(3) + t70 * qJD(4) + t1181, t73, t37, t123, t72, t122, t317, t1038 + (-t1003 - t982 - t1172) * qJD(2) + t46 * qJD(3) + t45 * qJD(6) - t953, t1037 + (-t1000 + t981 + t1173) * qJD(2) + t48 * qJD(3) + t44 * qJD(6) - t951, t1060 + (t1001 + t1004 + t1055 - t1056) * qJD(2) + t3 * qJD(3) + t131, t1052 + (-t112 * t456 + t113 * t457 + t1157 * t622) * qJD(2) + t1 * qJD(3) + t31 * qJD(4) + t28 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t844, t874, -t600, t844, -t601, 0, -t1134 + t848, t1135 - t849, 0, 0, -t453, -t886, -t450, t1158, -t1128, 0, qJD(2) * t219 - qJD(3) * t1156 - t918, t1185 - t917, t154 * qJD(2) + (t817 - t988) * t1069, t892 + t63 * qJD(2) + (-t1067 * t1156 - t221 * t695) * t1069 + t380 * qJD(4), -t229, t172, t186, -t228, t185, t1158, t984 + t105 * qJD(2) + (t694 * t776 - t1163) * qJD(3) + t416, t983 + t106 * qJD(2) + (t696 * t776 + t1171) * qJD(3) + t949, t54 * qJD(2) + qJD(3) * t781 - t1005, t1026 + t21 * qJD(2) + (t681 * t781 + t1021) * qJD(3) + t98 * qJD(4) + t1181, t73, t37, t123, t72, t122, t317, t1036 + t46 * qJD(2) + (-t975 - t997 - t1172) * qJD(3) + t53 * qJD(6) - t953, t1035 + t48 * qJD(2) + (t974 - t994 + t1173) * qJD(3) + t52 * qJD(6) - t951, t1057 + t3 * qJD(2) + (t1053 + t995 + t998 - t1054) * qJD(3) + t131, t1051 + t1 * qJD(2) + (-t114 * t568 + t115 * t570 + t1157 * t671) * qJD(3) + t34 * qJD(4) + t30 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t887, qJD(2) * t289 + qJD(3) * t380 + t932, 0, 0, 0, 0, 0, 0, t888, t921, 0, qJD(2) * t70 + qJD(3) * t98 + qJD(5) * t305 + t1062, 0, 0, 0, 0, 0, 0, -t274 + t929, t927 - t1118, t935, t1028 + t31 * qJD(2) + t34 * qJD(3) + (t404 * t746 + t408 * t664) * qJD(4) + t181 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t437 * t869 - t805, t439 * t869 + t806, t889, qJD(4) * t305 + t1176 * t869 - t939, 0, 0, 0, 0, 0, 0, qJD(6) * t225 - t1131 - t853, -t281 * t869 + t851, t1116, qJD(2) * t28 + qJD(3) * t30 + qJD(4) * t181 + t1065; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1136, t1115, t1146 * t807 + t1129, -t1136, t409 * t807 - t1132, t444, qJD(2) * t45 + qJD(3) * t53 - qJD(4) * t277 + qJD(5) * t225 - qJD(6) * t109 + t1063, qJD(2) * t44 + qJD(3) * t52 - qJD(4) * t788 + qJD(6) * t108 + t1064, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t679, -t870, 0, t679, 0, 0, t865, t864, 0, 0, t844, -t874, 0, -t844, 0, 0, -t914, -t913, 0, -t883, t453, t886, 0, -t1158, 0, 0, -t583 - t920, t586 - t919, -qJD(3) * t153, -qJD(3) * t62 - qJD(4) * t288 - t893, t803, t441, -t249, t804, t248, -t1158, qJD(3) * t104 + t794 - t992, qJD(3) * t107 + t948 - t991, qJD(3) * t55 + t1013 - t433, qJD(3) * t22 + qJD(4) * t71 - t1027 - t1182, t144, t64, t142, t143, t141, -t317, qJD(3) * t47 - qJD(6) * t42 - t1038 + t952, qJD(3) * t49 - qJD(6) * t43 - t1037 + t950, qJD(3) * t4 - t1060 + t956, qJD(3) * t2 + qJD(4) * t32 - qJD(5) * t27 - t1052; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t1073, -pkin(2) * t821, 0, 0, 0, 0, 0, 0, 0, 0, -t644, -t645, 0, t454 * qJD(3), 0, 0, 0, 0, 0, 0, -t696 * t644, t630, t942, qJD(3) * t307 + qJD(5) * t502, t845, t519, 0, -t845, 0, 0, t622 * t896 - t598, t622 * t653 + t599, t954, qJD(3) * t164 + qJD(5) * t231; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t869 * t1073 (-t822 - t821) * pkin(2), 0, 0, 0, 0, 0, 0, 0, 0, -t644 - t908, -t645 - t768, -t891 (-t1067 * t655 + t656 * t695) * t1069 - t772, 0, 0, 0, 0, 0, 0, -t655 * t812 + t940, t630 - t741, -t771 + t942 (t627 * t656 + t655 * t683) * qJD(3) + t402 * qJD(5) + t775, t845, t519, 0, -t845, 0, 0, qJD(6) * t312 - t598 - t743, qJD(6) * t311 + t599 - t742, -t787 + t954 (t523 * t568 + t524 * t570 + t655 * t671) * qJD(3) + t156 * qJD(5) + t728; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1139, t1149, 0, -t884, 0, 0, 0, 0, 0, 0, -t567, t878, -t875, t959, 0, 0, 0, 0, 0, 0, -t881, t1154, t937, t862 + t1066; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t877, t876, t1125, qJD(3) * t402 - t770, 0, 0, 0, 0, 0, 0, -t276, -t271, t125, qJD(3) * t156 - t774; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1153, t139, t235, -t1153, t236, -t873, qJD(3) * t312 - qJD(6) * t457 - t745, qJD(3) * t311 + qJD(6) * t456 - t744, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t844, -t874, 0, -t844, 0, 0, -t848, t849, 0, 0, t453, t886, 0, -t1158, 0, 0, -t583 + t918, t586 + t917, qJD(2) * t153, qJD(2) * t62 + qJD(4) * t379 - t892, t803, t441, -t249, t804, t248, -t1158, -qJD(2) * t104 + t794 - t984, -qJD(2) * t107 + t948 - t983, -qJD(2) * t55 + t1005 - t433, -qJD(2) * t22 + qJD(4) * t99 - t1026 - t1182, t144, t64, t142, t143, t141, -t317, -qJD(2) * t47 - qJD(6) * t50 - t1036 + t952, -qJD(2) * t49 - qJD(6) * t51 - t1035 + t950, -qJD(2) * t4 - t1057 + t956, -qJD(2) * t2 + qJD(4) * t35 - qJD(5) * t29 - t1051; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t698 * t1068, pkin(2) * t822, 0, 0, 0, 0, 0, 0, 0, 0, t908, t768, t891, t772, 0, 0, 0, 0, 0, 0, t655 * t905 - t940, t741, t672 + t771, -qJD(5) * t401 - t775, t845, t519, 0, -t845, 0, 0, -qJD(6) * t309 + t743, -qJD(6) * t310 + t742, t597 + t787, -qJD(5) * t155 - t728; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t672, t627 * qJD(5), t845, t519, 0, -t845, 0, 0, t671 * t896, t671 * t653, t597, qJD(5) * t322; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1139, t1149, 0, t879, 0, 0, 0, 0, 0, 0, -t567, t878, -t875, t958, 0, 0, 0, 0, 0, 0, -t881, t1154, t937, -t773; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t877, t876, t1125, -t725, 0, 0, 0, 0, 0, 0, -t276, -t271, t125, t726; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1153, t139, t235, -t1153, t236, -t873, -qJD(6) * t570 - t720, qJD(6) * t568 - t719, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1128, -t450, -t887, qJD(2) * t288 - qJD(3) * t379 - t932, 0, 0, 0, 0, 0, 0, -t888 + t941, -t1145 * t869 - t921, t869 * t443, -qJD(2) * t71 - qJD(3) * t99 + qJD(5) * t306 - t1062, 0, 0, 0, 0, 0, 0, t1144 * t869 - t272 - t929, -qJD(6) * t281 - t1146 * t869 - t927, -t138 * t869 - t935, -qJD(2) * t32 - qJD(3) * t35 - qJD(5) * t180 - t1028; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1139, -t1149, 0, t884, 0, 0, 0, 0, 0, 0, t567, -t878, t875, -t959, 0, 0, 0, 0, 0, 0, t881, -t1154, -t937, t862 - t1066; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1139, -t1149, 0, -t879, 0, 0, 0, 0, 0, 0, t567, -t878, t875, -t958, 0, 0, 0, 0, 0, 0, t881, -t1154, -t937, t773; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t882, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t926; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t236, -t653 - t885, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t438 * t869 + t805, -t440 * t869 - t806, -t889, -qJD(4) * t306 + t1177 * t869 + t939, 0, 0, 0, 0, 0, 0, -qJD(6) * t222 + t1132 + t853, -t1119 - t851 + t1129, -t1116, qJD(2) * t27 + qJD(3) * t29 + qJD(4) * t180 - t1065; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t877, -t876, -t1125, qJD(3) * t401 + t770, 0, 0, 0, 0, 0, 0, t233, t234, -t125, qJD(3) * t155 + t774; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t877, -t876, -t1125, t725, 0, 0, 0, 0, 0, 0, t233, t234, -t125, -t726; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t882, 0, 0, 0, 0, 0, 0, 0, 0, 0, t926; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1141, t1138, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1136, -t1115, t279 * t869 + t851, t1136, t1149 * t409 + t1131, t444, qJD(2) * t42 + qJD(3) * t50 + qJD(4) * t278 + qJD(5) * t222 - t1063, qJD(2) * t43 + qJD(3) * t51 + qJD(4) * t281 + qJD(5) * t1146 - t1064, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1153, -t139, t268, t1153, t267, t873, qJD(3) * t309 - t654 + t745, qJD(3) * t310 - t652 + t744, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1153, -t139, t268, t1153, t267, t873, -t654 + t720, -t652 + t719, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t267, t885, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1141, -t1138, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t5;
