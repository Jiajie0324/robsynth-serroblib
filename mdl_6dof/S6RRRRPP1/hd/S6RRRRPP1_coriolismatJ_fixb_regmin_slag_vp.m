% Calculate minimal parameter regressor of coriolis matrix for
% S6RRRRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,theta5]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x30]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 20:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRRRPP1_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP1_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP1_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP1_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 20:46:51
% EndTime: 2019-03-09 20:47:32
% DurationCPUTime: 25.95s
% Computational Cost: add. (31060->969), mult. (60233->1163), div. (0->0), fcn. (67435->8), ass. (0->720)
t868 = qJD(2) + qJD(3);
t652 = cos(pkin(10));
t655 = cos(qJ(4));
t935 = t652 * t655;
t651 = sin(pkin(10));
t653 = sin(qJ(4));
t941 = t651 * t653;
t597 = -t935 + t941;
t936 = t652 * t653;
t940 = t651 * t655;
t599 = t936 + t940;
t648 = t655 * qJ(5);
t621 = t655 * pkin(9) + t648;
t603 = t652 * t621;
t1033 = -qJ(5) - pkin(9);
t813 = t1033 * t653;
t790 = t651 * t813;
t1132 = t603 + t790;
t1068 = -t1132 / 0.2e1;
t1169 = t1132 / 0.2e1;
t817 = t1169 + t1068;
t503 = t621 * t651 - t652 * t813;
t1070 = t503 / 0.2e1;
t1170 = -t503 / 0.2e1;
t818 = t1170 + t1070;
t1045 = sin(qJ(3));
t863 = t1045 * pkin(2);
t640 = t863 + pkin(9);
t586 = t655 * t640 + t648;
t559 = t652 * t586;
t808 = (-qJ(5) - t640) * t653;
t785 = t651 * t808;
t1135 = t559 + t785;
t1076 = -t1135 / 0.2e1;
t1168 = t1135 / 0.2e1;
t822 = t1168 + t1076;
t448 = t586 * t651 - t652 * t808;
t1078 = t448 / 0.2e1;
t1171 = -t448 / 0.2e1;
t823 = t1171 + t1078;
t662 = (-t817 - t822) * t599 + (-t818 - t823) * t597;
t1117 = t662 * qJD(4);
t590 = t599 ^ 2;
t1133 = t597 ^ 2 + t590;
t1159 = t1133 * qJD(5);
t1046 = cos(qJ(3));
t855 = t653 * t1046;
t793 = t652 * t855;
t854 = t655 * t1046;
t536 = (t651 * t854 + t793) * pkin(2);
t537 = (-t651 * t855 + t652 * t854) * pkin(2);
t760 = t536 * t599 - t537 * t597;
t1172 = qJD(3) * t760 + t1159;
t1179 = t1117 + t1172;
t1064 = -t597 / 0.2e1;
t1062 = -t599 / 0.2e1;
t1061 = t599 / 0.2e1;
t1091 = -pkin(8) - pkin(7);
t654 = sin(qJ(2));
t623 = t1091 * t654;
t656 = cos(qJ(2));
t624 = t1091 * t656;
t780 = -t1045 * t624 - t1046 * t623;
t1166 = t780 * t655;
t831 = t1166 / 0.2e1;
t637 = t1045 * t656;
t638 = t1046 * t654;
t606 = -t638 - t637;
t437 = t599 * t606;
t1178 = t437 * t818;
t1177 = t437 * t823;
t930 = t655 * t606;
t440 = t606 * t941 - t652 * t930;
t1176 = t440 * t817;
t1175 = t440 * t822;
t1167 = t780 * t653;
t604 = t1045 * t654 - t1046 * t656;
t466 = t655 * t604;
t1174 = -t606 * pkin(4) + qJ(5) * t466 + t1167;
t1173 = t1117 + t1159;
t463 = t653 * t604;
t566 = pkin(4) * t463;
t608 = t1045 * t623;
t610 = t1046 * t624;
t911 = -t610 + t608;
t1134 = -t566 + t911;
t436 = t599 * t604;
t1043 = t436 * pkin(5);
t546 = t651 * t463;
t439 = -t466 * t652 + t546;
t976 = t439 * qJ(6);
t1131 = -t976 - t1043 + t1134;
t945 = t606 * t653;
t403 = -pkin(4) * t945 + t780;
t204 = -t437 * pkin(5) - t440 * qJ(6) + t403;
t1165 = t1131 * t204;
t1164 = t1131 * t597;
t1163 = t1131 * t599;
t1162 = t1134 * t403;
t1034 = t655 * pkin(4);
t864 = t1046 * pkin(2);
t641 = -t864 - pkin(3);
t620 = t641 - t1034;
t1161 = t1134 * t620;
t1142 = t868 * t606;
t778 = t604 * t1142;
t1143 = t868 * t599;
t879 = t440 * qJD(1);
t301 = t1143 + t879;
t435 = t440 ^ 2;
t1137 = t437 ^ 2 + t435;
t1160 = qJD(5) * t1137;
t1158 = t1068 * t437 + t1170 * t440;
t1157 = t437 * t1076 + t1171 * t440;
t1141 = t911 * t653;
t1036 = t606 * pkin(9);
t1040 = t604 * pkin(3);
t643 = -t656 * pkin(2) - pkin(1);
t752 = t643 + t1040;
t718 = t752 + t1036;
t332 = -t655 * t718 + t1141;
t255 = qJ(5) * t930 - t332;
t236 = pkin(4) * t604 + t255;
t1140 = t911 * t655;
t256 = t1140 + (-t1033 * t606 + t752) * t653;
t999 = t256 * t651;
t150 = t236 * t652 - t999;
t232 = t651 * t236;
t937 = t652 * t256;
t151 = t937 + t232;
t1139 = t1062 * t150 + t1064 * t151;
t948 = t604 * qJ(6);
t125 = t151 + t948;
t126 = -pkin(5) * t604 - t150;
t1146 = t1061 * t126 + t1064 * t125;
t1156 = (t332 - t1141) * t606;
t333 = t653 * t718 + t1140;
t1155 = (t333 - t1140) * t606;
t1154 = -t1131 * t437 + t126 * t606 - t204 * t436;
t1153 = -t1131 * t440 - t125 * t606 - t204 * t439;
t1094 = t604 ^ 2;
t354 = t435 + t1094;
t872 = t604 * qJD(4);
t1152 = t354 * qJD(1) + t1143 * t440 + t872;
t588 = t638 / 0.2e1 + t637 / 0.2e1;
t1063 = t597 / 0.2e1;
t740 = t1062 * t437 + t1063 * t440;
t211 = t740 - t588;
t157 = t211 * qJD(1) + t1143 * t597;
t1151 = t868 * t780;
t766 = -t437 * t597 + t440 * t599;
t1150 = t766 * qJD(1) + t1133 * t868;
t1149 = qJD(1) * t1137 + t766 * t868;
t1148 = 0.2e1 * t606;
t1147 = 0.2e1 * t653;
t642 = -pkin(3) - t1034;
t458 = t597 * pkin(5) - t599 * qJ(6) + t642;
t1073 = t458 / 0.2e1;
t428 = -t864 + t458;
t1082 = t428 / 0.2e1;
t820 = t1073 + t1082;
t1145 = t599 * t820;
t487 = t868 * t604;
t944 = t651 * t255;
t165 = t937 + t944;
t166 = t255 * t652 - t999;
t1138 = t165 * t1061 + t166 * t1064;
t1037 = t606 * pkin(5);
t636 = -pkin(4) * t652 - pkin(5);
t1055 = t636 / 0.2e1;
t1136 = t606 * t1055 - t1037 / 0.2e1;
t1130 = -t976 / 0.2e1 - t1043 / 0.2e1;
t1060 = -t604 / 0.2e1;
t946 = t606 * t640;
t947 = t604 * t641;
t1129 = t1040 / 0.2e1 + t946 / 0.2e1 - t947 / 0.2e1 + (t1046 * t1060 - t1045 * t606 / 0.2e1) * pkin(2);
t1128 = qJD(2) * t760;
t968 = t1135 * t597;
t973 = t448 * t599;
t763 = -t968 + t973;
t1127 = qJD(2) * t763;
t794 = t863 / 0.2e1;
t669 = t794 + (t1170 + t1171) * t599 + (t1169 + t1168) * t597;
t1126 = qJD(3) * t669;
t954 = t1132 * t597;
t957 = t503 * t599;
t674 = -t954 / 0.2e1 - t968 / 0.2e1 + t957 / 0.2e1 + t973 / 0.2e1 + t794;
t1125 = qJD(3) * t674;
t1120 = qJD(5) * t669;
t761 = -t954 + t957;
t1119 = qJD(5) * t761;
t1118 = qJD(5) * t763;
t1116 = t674 * qJD(5);
t1114 = t766 * qJD(5);
t601 = t606 ^ 2;
t867 = t601 - t1094;
t1038 = t606 * pkin(3);
t1039 = t604 * pkin(9);
t489 = -t1038 + t1039;
t474 = t655 * t489;
t242 = t474 + t1174;
t241 = t651 * t242;
t856 = qJ(5) * t463;
t473 = t653 * t489;
t914 = t1166 - t473;
t276 = t856 - t914;
t262 = t652 * t276;
t1113 = t262 / 0.2e1 + t241 / 0.2e1;
t1044 = pkin(2) * t654;
t469 = t489 + t1044;
t454 = t655 * t469;
t240 = t454 + t1174;
t233 = t651 * t240;
t453 = t653 * t469;
t915 = -t453 + t1166;
t261 = t856 - t915;
t250 = t652 * t261;
t1112 = t250 / 0.2e1 + t233 / 0.2e1;
t1058 = -t610 / 0.2e1;
t1111 = t1058 - t1158;
t1110 = t1058 + t1158;
t1109 = t1058 + t1157;
t865 = pkin(4) * t930;
t551 = -t865 / 0.2e1;
t634 = pkin(4) * t651 + qJ(6);
t1057 = -t634 / 0.2e1;
t814 = t1057 - qJ(6) / 0.2e1;
t857 = pkin(5) / 0.2e1 - t636 / 0.2e1;
t141 = t437 * t814 + t440 * t857 + t551;
t1035 = t653 * pkin(4);
t644 = t1035 / 0.2e1;
t274 = -t597 * t814 + t599 * t857 + t644;
t1108 = qJD(1) * t141 + t274 * t868;
t329 = t546 / 0.2e1 + (-t935 / 0.2e1 + t1063) * t604;
t880 = t437 * qJD(1);
t355 = t604 * t880;
t1107 = t329 * t868 - t355;
t330 = -t546 / 0.2e1 + (t935 / 0.2e1 + t1063) * t604;
t1106 = -qJD(4) * t437 + t330 * t868 - t355;
t1049 = -t652 / 0.2e1;
t1050 = t651 / 0.2e1;
t730 = t1049 * t440 + t1050 * t437;
t828 = t930 / 0.2e1;
t222 = (t828 + t730) * pkin(4);
t1047 = -t653 / 0.2e1;
t1051 = -t651 / 0.2e1;
t729 = t1049 * t599 + t1051 * t597;
t401 = (t1047 + t729) * pkin(4);
t1105 = qJD(1) * t222 + t401 * t868;
t1093 = t653 ^ 2;
t650 = t655 ^ 2;
t462 = (-t1093 / 0.2e1 + t650 / 0.2e1) * t606;
t932 = t653 * t655;
t850 = qJD(1) * t932;
t1104 = t462 * t868 + t601 * t850;
t1103 = t597 * t868 - t880;
t866 = -t650 + t1093;
t430 = -0.2e1 * t606 * t850 + t866 * t868;
t1100 = t1175 + t1177;
t1099 = t1176 + t1178;
t671 = -t1070 * t1135 + t503 * t1168;
t1042 = t440 * pkin(5);
t977 = t437 * qJ(6);
t239 = -t865 - t977 + t1042;
t1041 = t599 * pkin(5);
t949 = t597 * qJ(6);
t459 = t1035 + t949 + t1041;
t1098 = t239 * t1061 + t204 * t1064 + t459 * t440 / 0.2e1;
t1097 = qJD(2) * t662;
t1096 = qJD(3) * t662;
t1095 = -qJD(2) * t669 + qJD(3) * t761;
t1092 = -pkin(3) / 0.2e1;
t1090 = -t150 / 0.2e1;
t1089 = -t151 / 0.2e1;
t1088 = -t165 / 0.2e1;
t1087 = t166 / 0.2e1;
t1081 = -t437 / 0.2e1;
t1074 = -t458 / 0.2e1;
t1066 = t536 / 0.2e1;
t1065 = t537 / 0.2e1;
t830 = t559 / 0.2e1;
t829 = t603 / 0.2e1;
t1059 = t604 / 0.2e1;
t595 = t610 / 0.2e1;
t1056 = t634 / 0.2e1;
t1054 = t640 / 0.2e1;
t1053 = t641 / 0.2e1;
t1052 = -t642 / 0.2e1;
t1048 = t652 / 0.2e1;
t1032 = pkin(3) * qJD(3);
t1031 = pkin(4) * qJD(4);
t1007 = t204 * t440;
t61 = -t165 * t604 - t239 * t437 + t1007;
t1030 = qJD(1) * t61;
t62 = t166 * t604 - t204 * t437 - t239 * t440;
t1029 = qJD(1) * t62;
t63 = t125 * t437 + t126 * t440;
t1028 = qJD(1) * t63;
t68 = -t150 * t440 + t151 * t437;
t1027 = qJD(1) * t68;
t73 = t125 * t604 - t1007;
t1026 = qJD(1) * t73;
t153 = t250 + t233;
t585 = t606 * qJ(6);
t132 = -t585 + t153;
t1023 = t132 * t597;
t939 = t652 * t240;
t943 = t651 * t261;
t152 = t939 - t943;
t133 = -t152 + t1037;
t1022 = t133 * t599;
t160 = t262 + t241;
t137 = -t585 + t160;
t1021 = t137 * t597;
t938 = t652 * t242;
t942 = t651 * t276;
t159 = t938 - t942;
t140 = -t159 + t1037;
t1020 = t140 * t599;
t1017 = t152 * t599;
t1016 = t153 * t597;
t1015 = t159 * t599;
t1014 = t160 * t597;
t1013 = t165 * t448;
t1012 = t165 * t503;
t1011 = t166 * t1135;
t1010 = t166 * t1132;
t1006 = t204 * t459;
t1004 = t204 * t599;
t25 = t125 * t132 + t126 * t133 + t1165;
t1000 = t25 * qJD(1);
t26 = t125 * t137 + t126 * t140 + t1165;
t998 = t26 * qJD(1);
t27 = t125 * t166 + t126 * t165 + t204 * t239;
t997 = t27 * qJD(1);
t770 = t125 * t436 + t126 * t439;
t28 = t132 * t437 + t133 * t440 + t770;
t996 = t28 * qJD(1);
t29 = t137 * t437 + t140 * t440 + t770;
t995 = t29 * qJD(1);
t30 = (-t125 + t165) * t440 - (-t126 - t166) * t437;
t994 = t30 * qJD(1);
t767 = -t150 * t439 + t151 * t436;
t31 = -t152 * t440 + t153 * t437 + t767;
t993 = t31 * qJD(1);
t32 = -t159 * t440 + t160 * t437 + t767;
t992 = t32 * qJD(1);
t33 = (-t151 + t165) * t440 - (t150 - t166) * t437;
t991 = t33 * qJD(1);
t34 = t150 * t152 + t151 * t153 + t1162;
t990 = t34 * qJD(1);
t35 = t150 * t159 + t151 * t160 + t1162;
t989 = t35 * qJD(1);
t36 = -t150 * t165 + t151 * t166 - t403 * t865;
t988 = t36 * qJD(1);
t37 = t132 * t604 + t1153;
t987 = t37 * qJD(1);
t38 = -t133 * t604 + t1154;
t986 = t38 * qJD(1);
t39 = t137 * t604 + t1153;
t985 = t39 * qJD(1);
t40 = -t140 * t604 + t1154;
t984 = t40 * qJD(1);
t983 = t428 * t436;
t982 = t428 * t439;
t981 = t428 * t440;
t980 = t428 * t459;
t979 = t428 * t597;
t978 = t428 * t599;
t975 = t448 * t439;
t972 = t448 * t606;
t967 = t1135 * t606;
t966 = t458 * t436;
t965 = t458 * t439;
t964 = t458 * t440;
t963 = t458 * t597;
t962 = t458 * t599;
t960 = t459 * t458;
t959 = t503 * t439;
t956 = t503 * t606;
t953 = t1132 * t606;
t82 = t454 * t604 + t1156;
t929 = t82 * qJD(1);
t83 = t1155 + (t915 - t1166) * t604;
t928 = t83 * qJD(1);
t84 = t474 * t604 + t1156;
t927 = t84 * qJD(1);
t85 = t1155 + (t914 - t1166) * t604;
t926 = t85 * qJD(1);
t728 = -t940 / 0.2e1 - t936 / 0.2e1;
t328 = (t1061 + t728) * t604;
t925 = -t328 * qJD(5) - t211 * qJD(6);
t212 = -t740 - t588;
t331 = t1060 * t599 + t604 * t728;
t924 = t331 * qJD(5) + t212 * qJD(6);
t923 = -t330 * qJD(6) + t1114;
t922 = -t329 * qJD(6) + t1114;
t579 = t599 * qJD(6);
t921 = t274 * qJD(4) - t579;
t353 = t440 * t579;
t918 = -t330 * qJD(5) + t353;
t917 = -t329 * qJD(5) + t353;
t916 = (-t597 * t636 - t599 * t634) * qJD(4) - qJD(6) * t597;
t495 = t597 * t579;
t809 = t1045 * qJD(3);
t798 = pkin(2) * t809;
t913 = t597 * t798 - t495;
t578 = t590 * qJD(6);
t912 = -t599 * t798 + t578;
t788 = t854 / 0.2e1;
t910 = (t651 * t788 + t793 / 0.2e1) * pkin(2);
t796 = -t864 / 0.2e1;
t775 = t655 * t796;
t789 = -t855 / 0.2e1;
t776 = pkin(2) * t789;
t909 = t651 * t775 + t652 * t776;
t207 = t332 * t604 + t780 * t945;
t906 = qJD(1) * t207;
t208 = -t333 * t604 - t780 * t930;
t905 = qJD(1) * t208;
t451 = t1044 * t604 - t606 * t643;
t901 = qJD(1) * t451;
t452 = -t1044 * t606 - t604 * t643;
t900 = qJD(1) * t452;
t899 = qJD(1) * t604;
t898 = qJD(1) * t606;
t897 = qJD(1) * t643;
t896 = qJD(1) * t656;
t895 = qJD(2) * t641;
t894 = qJD(3) * t643;
t893 = qJD(4) * t597;
t892 = qJD(4) * t653;
t891 = qJD(4) * t655;
t890 = qJD(5) * t440;
t889 = qJD(5) * t604;
t888 = qJD(6) * t437;
t749 = -t641 / 0.2e1 + t796;
t795 = -t863 / 0.2e1;
t660 = (t1054 + t795 - pkin(9) / 0.2e1) * t606 + (t1092 + t749) * t604;
t161 = t653 * t660;
t887 = t161 * qJD(1);
t315 = t328 * qJD(1);
t307 = t329 * qJD(1);
t310 = t330 * qJD(1);
t385 = t867 * t653;
t883 = t385 * qJD(1);
t386 = t867 * t655;
t882 = t386 * qJD(1);
t881 = t867 * qJD(1);
t878 = t462 * qJD(1);
t877 = t463 * qJD(1);
t457 = t466 * qJD(1);
t472 = t866 * t601;
t876 = t472 * qJD(1);
t507 = t595 + t1058;
t875 = t507 * qJD(1);
t874 = t588 * qJD(1);
t873 = t599 * qJD(5);
t582 = t604 * qJD(6);
t630 = -t654 ^ 2 + t656 ^ 2;
t871 = t630 * qJD(1);
t870 = t654 * qJD(2);
t869 = t656 * qJD(2);
t862 = pkin(1) * t654 * qJD(1);
t861 = pkin(1) * t896;
t858 = t1037 / 0.2e1;
t853 = t437 * t879;
t852 = t604 * t897;
t851 = t606 * t897;
t849 = t606 * t872;
t501 = t604 * t898;
t633 = t653 * t891;
t848 = t654 * t896;
t846 = -t1011 / 0.2e1;
t845 = -t1010 / 0.2e1;
t844 = -t1006 / 0.2e1;
t843 = t1004 / 0.2e1;
t842 = t403 * t1047;
t826 = -t232 / 0.2e1 - t937 / 0.2e1;
t825 = t1082 + t1074;
t824 = t1078 + t1170;
t821 = -t453 / 0.2e1 + t831;
t819 = t473 / 0.2e1 - t1166 / 0.2e1;
t815 = -t566 / 0.2e1 + t608 / 0.2e1;
t812 = t1046 * qJD(2);
t811 = t1046 * qJD(3);
t810 = t1045 * qJD(2);
t297 = t1135 * t436;
t807 = t297 + t975;
t335 = t1132 * t436;
t806 = t335 + t959;
t805 = t1132 * t537 + t536 * t503;
t801 = t868 * t655;
t799 = qJD(4) + t899;
t797 = pkin(2) * t810;
t786 = t857 * t606;
t784 = t1036 + t1040;
t782 = t937 / 0.2e1 + t944 / 0.2e1;
t781 = -t585 / 0.2e1 + t606 * t1057;
t779 = t653 * t801;
t777 = t868 * t932;
t673 = t125 * t1171 + t126 * t1168 + t1013 / 0.2e1 + t239 * t1082;
t747 = t1055 * t133 + t1056 * t132;
t3 = t846 + t844 - t673 + t747;
t774 = -t3 * qJD(1) + qJD(2) * t980;
t178 = t1035 * t620;
t688 = t150 * t1168 - t448 * t1089 - t1013 / 0.2e1;
t745 = t1048 * t152 + t1050 * t153;
t9 = t846 + (t620 * t828 + t745 + t842) * pkin(4) + t688;
t773 = -t9 * qJD(1) + t178 * qJD(2);
t764 = t1135 * t537 + t448 * t536;
t180 = t428 * t863 + t764;
t658 = t1065 * t125 + t1066 * t126 + t1078 * t140 + t1082 * t1131 + t1168 * t137 + t204 * t794;
t689 = t1068 * t132 + t1074 * t1131 + t1170 * t133;
t2 = t658 + t689;
t772 = t2 * qJD(1) + t180 * qJD(2);
t195 = t620 * t863 + t764;
t657 = t536 * t1090 + t151 * t1065 + t159 * t1171 + t160 * t1168 + t1161 / 0.2e1 + t403 * t794;
t686 = t1052 * t1134 + t1068 * t153 + t1070 * t152;
t8 = t657 + t686;
t771 = t8 * qJD(1) + t195 * qJD(2);
t759 = t946 - t947;
t714 = t297 / 0.2e1 + t440 * t1066 + t437 * t1065;
t668 = t824 * t439 - t335 / 0.2e1 + t714;
t14 = (t140 / 0.2e1 - t133 / 0.2e1) * t599 + (-t137 / 0.2e1 + t132 / 0.2e1) * t597 + t668;
t758 = -qJD(1) * t14 - t1128;
t18 = (-t159 / 0.2e1 + t152 / 0.2e1) * t599 + (-t160 / 0.2e1 + t153 / 0.2e1) * t597 + t668;
t757 = -qJD(1) * t18 - t1128;
t376 = t459 * t597;
t225 = t376 + t978;
t685 = t1063 * t239 + t1081 * t459 + t843;
t665 = t981 / 0.2e1 + t1135 * t1060 + t685;
t732 = t943 / 0.2e1 - t939 / 0.2e1;
t48 = t786 + t665 + t732;
t756 = -qJD(1) * t48 - qJD(2) * t225;
t377 = t459 * t599;
t226 = -t377 + t979;
t670 = t781 + t1098;
t743 = -t1059 * t448 + t1081 * t428;
t45 = t670 - t743 + t1112;
t755 = qJD(1) * t45 - qJD(2) * t226;
t690 = t815 + t1130;
t666 = t690 - t1146;
t41 = t666 + t1109;
t754 = -qJD(1) * t41 + t1127;
t684 = t815 - t1139;
t53 = t684 + t1109;
t753 = qJD(1) * t53 - t1127;
t751 = t606 * t799;
t748 = t1039 / 0.2e1 - t1038 / 0.2e1;
t746 = t1055 * t140 + t1056 * t137;
t744 = t1048 * t159 + t1050 * t160;
t742 = -t981 / 0.2e1 + t1135 * t1059;
t741 = -t978 / 0.2e1 - t962 / 0.2e1;
t738 = -t1059 * t503 + t1074 * t437;
t737 = -t964 / 0.2e1 + t1132 * t1059;
t736 = t1055 * t536 + t1056 * t537;
t735 = t1049 * t536 + t1050 * t537;
t734 = t1055 * t439 - t1057 * t436;
t733 = t1053 * t606 + t1054 * t604;
t731 = t942 / 0.2e1 - t938 / 0.2e1;
t692 = t858 + t732;
t64 = t843 + t692 - t742;
t727 = -qJD(1) * t64 - qJD(2) * t978;
t726 = t655 * t751;
t678 = t653 * t733 + t831;
t182 = t678 - t821;
t725 = -qJD(1) * t182 - t655 * t895;
t715 = t733 * t655;
t184 = -t454 / 0.2e1 - t715;
t724 = -qJD(1) * t184 - t653 * t895;
t396 = -qJD(4) * t588 + t501;
t723 = pkin(3) / 0.2e1 + t749;
t721 = t748 * t655;
t720 = t779 * t1148;
t719 = (t1049 * t439 - t1051 * t436) * pkin(4);
t717 = t781 - t1098;
t672 = t125 * t1170 + t126 * t1169 + t1012 / 0.2e1 + t239 * t1073;
t5 = t845 + t844 - t672 + t746;
t66 = -t459 * t820 + t671 + t736;
t716 = -t5 * qJD(1) - t66 * qJD(2) + qJD(3) * t960;
t687 = t150 * t1169 - t503 * t1089 - t1012 / 0.2e1;
t11 = t845 + (t642 * t828 + t744 + t842) * pkin(4) + t687;
t213 = t1035 * t642;
t78 = ((t1052 - t620 / 0.2e1) * t653 + t735) * pkin(4) + t671;
t713 = -t11 * qJD(1) - t78 * qJD(2) + t213 * qJD(3);
t661 = (t125 / 0.2e1 + t1088) * t599 + (t1087 + t126 / 0.2e1) * t597 + t734;
t682 = t1175 - t1177;
t15 = t661 + t682;
t712 = qJD(1) * t15 - t1096;
t659 = (t151 / 0.2e1 + t1088) * t599 + (t1087 + t1090) * t597 + t719;
t19 = t659 + t682;
t711 = qJD(1) * t19 - t1096;
t681 = t1176 - t1178;
t21 = t661 + t681;
t710 = qJD(1) * t21 - t1097;
t23 = t659 + t681;
t709 = qJD(1) * t23 - t1097;
t43 = t666 + t1110;
t708 = -qJD(1) * t43 + t1095;
t59 = t684 + t1110;
t707 = -qJD(1) * t59 + t1095;
t167 = -t376 + t909 - t1145;
t234 = t376 + t962;
t664 = t964 / 0.2e1 + t1132 * t1060 + t685;
t52 = t786 + t664 + t731;
t706 = -qJD(1) * t52 + qJD(2) * t167 - qJD(3) * t234;
t676 = (t651 * t789 + t652 * t788) * pkin(2);
t168 = -t597 * t820 + t377 + t676;
t235 = -t377 + t963;
t49 = t670 - t738 + t1113;
t705 = qJD(1) * t49 + qJD(2) * t168 - qJD(3) * t235;
t704 = t1060 * t536 + t437 * t795;
t703 = t1059 * t537 + t440 * t795;
t56 = -t436 * t825 + t606 * t824 + t704;
t702 = -t56 * qJD(1) - t597 * t797;
t58 = (t1076 + t1169) * t606 - t825 * t439 + t703;
t701 = -t58 * qJD(1) + t599 * t797;
t164 = t655 * t660;
t700 = -t164 * qJD(1) - t653 * t797;
t679 = t653 * t748 + t831;
t197 = t679 + t819;
t524 = t723 * t655;
t696 = -qJD(1) * t197 + qJD(2) * t524 + t1032 * t655;
t199 = -t474 / 0.2e1 - t721;
t523 = t723 * t653;
t695 = -qJD(1) * t199 + qJD(2) * t523 + t1032 * t653;
t694 = (-t810 - t809) * pkin(2);
t201 = t910 + t1145;
t691 = t858 + t731;
t69 = t843 + t691 - t737;
t693 = -qJD(1) * t69 - qJD(2) * t201 - qJD(3) * t962;
t683 = t125 * t1062 + t126 * t1064 + t1138 + t734;
t443 = t830 - t559 / 0.2e1;
t497 = t829 - t603 / 0.2e1;
t71 = t604 * t814 + t782 + t826;
t680 = qJD(1) * t71 - qJD(2) * t443 - qJD(3) * t497 - qJD(4) * t634;
t677 = t1058 + t815 - t1157;
t675 = t151 * t1062 + t150 * t1063 + t1138 + t719;
t667 = t335 / 0.2e1 + t975 / 0.2e1 + t959 / 0.2e1 + t714;
t628 = t653 * t798;
t622 = t866 * qJD(4);
t576 = t597 * qJD(5);
t526 = t775 + (t1053 + t1092) * t655;
t525 = pkin(3) * t1047 + t1053 * t653 + t776;
t470 = t868 * t588;
t455 = t462 * qJD(4);
t442 = (t597 * t652 - t599 * t651) * t1031;
t433 = 0.2e1 * t595 - t608;
t425 = t457 + t891;
t424 = -t877 - t892;
t423 = 0.2e1 * t829 + t790;
t400 = pkin(4) * t729 + t644;
t390 = t401 * qJD(4);
t389 = t401 * qJD(5);
t388 = t400 * qJD(4);
t387 = t400 * qJD(5);
t378 = t403 * t644;
t366 = t777 - t878;
t365 = -t779 + t878;
t346 = t726 * t1147;
t345 = 0.2e1 * t830 + t785;
t334 = -t501 * t650 - t455;
t275 = t597 * t1057 + t599 * t1055 + t644 + t949 / 0.2e1 + t1041 / 0.2e1;
t268 = t274 * qJD(5);
t267 = t275 * qJD(4);
t266 = t275 * qJD(5);
t260 = qJD(4) * t466 - t882;
t259 = -qJD(4) * t463 + t883;
t254 = -t307 - t893;
t253 = t310 + t893;
t252 = qJD(4) * t599 + t315;
t251 = t590 * t868 + t599 * t879;
t221 = pkin(4) * t730 + t551;
t220 = -t455 + (t650 * t898 - t779) * t604;
t215 = -t1142 * t653 + t882;
t214 = -t606 * t801 - t883;
t206 = (qJD(4) - t899) * t930 * t1147 + t866 * t487;
t202 = t741 + t910;
t200 = t1167 + t474 / 0.2e1 - t721;
t198 = t679 - t819;
t191 = -t1004 / 0.2e1;
t185 = t1167 + t454 / 0.2e1 - t715;
t183 = t678 + t821;
t181 = t1006 / 0.2e1;
t170 = -t377 + t963 / 0.2e1 + t979 / 0.2e1 + t676;
t169 = t376 - t741 + t909;
t163 = pkin(9) * t828 + t1129 * t655 + t1141;
t162 = -t1140 + pkin(9) * t945 / 0.2e1 + t1129 * t653;
t142 = t437 * t1056 + t440 * t1055 + t551 - t977 / 0.2e1 + t1042 / 0.2e1;
t124 = t1010 / 0.2e1;
t111 = t1011 / 0.2e1;
t79 = pkin(4) * t735 - t671 + (t620 + t642) * t644;
t72 = t604 * t1056 + t948 / 0.2e1 + t782 - t826;
t70 = t191 + t691 + t737;
t67 = t960 / 0.2e1 + t980 / 0.2e1 - t671 + t736;
t65 = t191 + t692 + t742;
t60 = t815 + t1111 + t1139;
t57 = -t967 / 0.2e1 - t982 / 0.2e1 - t1163 - t953 / 0.2e1 - t965 / 0.2e1 + t703;
t55 = -t983 / 0.2e1 + t1164 + t972 / 0.2e1 - t966 / 0.2e1 + t956 / 0.2e1 + t704;
t54 = t677 + t1139;
t51 = t664 - t731 + t1136;
t50 = t717 + t738 + t1113;
t47 = t665 - t732 + t1136;
t46 = t717 + t743 + t1112;
t44 = t690 + t1111 + t1146;
t42 = t677 + t1130 + t1146;
t24 = t675 + t1099;
t22 = t683 + t1099;
t20 = t675 + t1100;
t17 = -t1014 / 0.2e1 - t1015 / 0.2e1 - t1016 / 0.2e1 - t1017 / 0.2e1 + t667;
t16 = t683 + t1100;
t13 = -t1021 / 0.2e1 + t1020 / 0.2e1 - t1023 / 0.2e1 + t1022 / 0.2e1 + t667;
t12 = pkin(4) * t744 + t551 * t642 + t124 + t378 - t687;
t10 = pkin(4) * t745 + t551 * t620 + t111 + t378 - t688;
t7 = t657 - t686;
t6 = t124 + t181 + t672 + t746;
t4 = t111 + t181 + t673 + t747;
t1 = t658 - t689;
t74 = [0, 0, 0, t654 * t869, t630 * qJD(2), 0, 0, 0, -pkin(1) * t870, -pkin(1) * t869, t778, -t868 * t867, 0, 0, 0, qJD(2) * t451 - t606 * t894, qJD(2) * t452 - t604 * t894, -t601 * t633 + t650 * t778, t472 * qJD(4) - t604 * t720, t386 * t868 + t653 * t849, -t385 * t868 + t655 * t849, -t778, qJD(2) * t82 + qJD(3) * t84 + qJD(4) * t208, qJD(2) * t83 + qJD(3) * t85 + qJD(4) * t207, qJD(2) * t31 + qJD(3) * t32 + qJD(4) * t33 + t1160, qJD(2) * t34 + qJD(3) * t35 + qJD(4) * t36 + qJD(5) * t68, t38 * qJD(2) + t40 * qJD(3) + t61 * qJD(4) + (t888 - t889) * t440, qJD(2) * t28 + qJD(3) * t29 + qJD(4) * t30 + t437 * t582 + t1160, qJD(2) * t37 + qJD(3) * t39 + qJD(4) * t62 + qJD(6) * t354 + t437 * t889, qJD(2) * t25 + qJD(3) * t26 + qJD(4) * t27 + qJD(5) * t63 + qJD(6) * t73; 0, 0, 0, t848, t871, t869, -t870, 0, -pkin(7) * t869 - t862, pkin(7) * t870 - t861, t501, -t881, -t487, t1142, 0, -qJD(2) * t911 + qJD(3) * t433 + t901, t1151 + t900, t220, t206, t215, t214, -t396, t929 + (t653 * t759 - t1140) * qJD(2) + t162 * qJD(3) + t185 * qJD(4), t928 + (t655 * t759 + t1141) * qJD(2) + t163 * qJD(3) + t183 * qJD(4), t993 + (-t1016 + t807 - t1017) * qJD(2) + t17 * qJD(3) + t20 * qJD(4) + t1114, t990 + (t1135 * t153 - t152 * t448 + t1161) * qJD(2) + t7 * qJD(3) + t10 * qJD(4) + t54 * qJD(5), t986 + (t972 - t983 + t1164) * qJD(2) + t55 * qJD(3) + t47 * qJD(4) + t924, t996 + (t1022 + t807 - t1023) * qJD(2) + t13 * qJD(3) + t16 * qJD(4) + t923, t987 + (-t967 - t982 - t1163) * qJD(2) + t57 * qJD(3) + t46 * qJD(4) + t917, t1000 + (t1131 * t428 + t1135 * t132 + t133 * t448) * qJD(2) + t1 * qJD(3) + t4 * qJD(4) + t42 * qJD(5) + t65 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t501, -t881, -t487, t1142, 0, qJD(2) * t433 - qJD(3) * t911 - t851, t1151 - t852, t220, t206, t215, t214, -t396, t927 + t162 * qJD(2) + (t653 * t784 - t1140) * qJD(3) + t200 * qJD(4), t926 + t163 * qJD(2) + (t655 * t784 + t1141) * qJD(3) + t198 * qJD(4), t992 + t17 * qJD(2) + (-t1014 + t806 - t1015) * qJD(3) + t24 * qJD(4) + t1114, t989 + t7 * qJD(2) + (t1132 * t160 + t1134 * t642 - t159 * t503) * qJD(3) + t12 * qJD(4) + t60 * qJD(5), t984 + t55 * qJD(2) + (t956 - t966 + t1164) * qJD(3) + t51 * qJD(4) + t924, t995 + t13 * qJD(2) + (t1020 + t806 - t1021) * qJD(3) + t22 * qJD(4) + t923, t985 + t57 * qJD(2) + (-t953 - t965 - t1163) * qJD(3) + t50 * qJD(4) + t917, t998 + t1 * qJD(2) + (t1131 * t458 + t1132 * t137 + t140 * t503) * qJD(3) + t6 * qJD(4) + t44 * qJD(5) + t70 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1104, t1148 * t777 + t876, t653 * t751, t726, t470, qJD(2) * t185 + qJD(3) * t200 - qJD(4) * t333 + t905, qJD(2) * t183 + qJD(3) * t198 + qJD(4) * t332 + t906, t991 + t20 * qJD(2) + t24 * qJD(3) + (-t437 * t652 - t440 * t651) * t1031, t988 + t10 * qJD(2) + t12 * qJD(3) + t221 * qJD(5) + (-t165 * t652 + t166 * t651) * t1031, qJD(2) * t47 + qJD(3) * t51 - qJD(4) * t165 + t1030, t994 + t16 * qJD(2) + t22 * qJD(3) + (t437 * t636 - t440 * t634) * qJD(4) + t888, qJD(2) * t46 + qJD(3) * t50 + qJD(4) * t166 + t1029 + t582, t997 + t4 * qJD(2) + t6 * qJD(3) + (t165 * t636 + t166 * t634) * qJD(4) + t142 * qJD(5) + t72 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1149, qJD(2) * t54 + qJD(3) * t60 + qJD(4) * t221 + t1027, t331 * t868 - t604 * t879, t1149, -t1107, qJD(2) * t42 + qJD(3) * t44 + qJD(4) * t142 + t1028; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t212 * t868 + t853, -t1106, t1152, qJD(2) * t65 + qJD(3) * t70 + qJD(4) * t72 + t1026; 0, 0, 0, -t848, -t871, 0, 0, 0, t862, t861, -t501, t881, 0, 0, 0, qJD(3) * t507 - t901, -t900, t334, t346, t260, t259, t396, qJD(3) * t161 + qJD(4) * t184 - t929, qJD(3) * t164 + qJD(4) * t182 - t928, qJD(3) * t18 - qJD(4) * t19 + t1114 - t993, qJD(3) * t8 - qJD(4) * t9 - qJD(5) * t53 - t990, qJD(3) * t56 + qJD(4) * t48 + t925 - t986, qJD(3) * t14 - qJD(4) * t15 + t922 - t996, qJD(3) * t58 - qJD(4) * t45 + t918 - t987, qJD(3) * t2 - qJD(4) * t3 - qJD(5) * t41 - qJD(6) * t64 - t1000; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t798, -pkin(2) * t811, t633, -t622, 0, 0, 0, t641 * t892 - t655 * t798, t641 * t891 + t628, t1172, qJD(3) * t195 + qJD(4) * t178 + t1118, qJD(4) * t225 + t913, t1172, qJD(4) * t226 + t912, qJD(3) * t180 + qJD(4) * t980 - t428 * t579 + t1118; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t694 + t875 (-t812 - t811) * pkin(2), t633, -t622, 0, 0, 0, t525 * qJD(4) + t655 * t694 + t887, t526 * qJD(4) + t628 - t700, -t757 + t1179 (t642 * t863 + t805) * qJD(3) + t79 * qJD(4) + t1116 + t771, t169 * qJD(4) - t702 + t913, -t758 + t1179, t170 * qJD(4) - t701 + t912 (t458 * t863 + t805) * qJD(3) + t67 * qJD(4) + t1116 + t202 * qJD(6) + t772; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t366, -t430, t425, t424, -t874, qJD(3) * t525 - t640 * t891 - t724, qJD(3) * t526 + t640 * t892 - t725, t442 - t711, t79 * qJD(3) + t387 + (-t1135 * t652 - t448 * t651) * t1031 + t773, qJD(3) * t169 - qJD(4) * t1135 - t756, -t712 + t916, qJD(3) * t170 - qJD(4) * t448 - t755, t67 * qJD(3) + (t1135 * t636 - t448 * t634) * qJD(4) + t266 + t345 * qJD(6) + t774; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1150, t388 - t753 + t1125, -t315, t1150, -t310, t267 + t754 + t1125; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t157, t254, t251, qJD(3) * t202 + qJD(4) * t345 + t727; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t501, t881, 0, 0, 0, -qJD(2) * t507 + t851, t852, t334, t346, t260, t259, t396, -qJD(2) * t161 + qJD(4) * t199 - t927, -qJD(2) * t164 + qJD(4) * t197 - t926, -qJD(2) * t18 - qJD(4) * t23 + t1114 - t992, -qJD(2) * t8 - qJD(4) * t11 - qJD(5) * t59 - t989, -qJD(2) * t56 + qJD(4) * t52 + t925 - t984, -qJD(2) * t14 - qJD(4) * t21 + t922 - t995, -qJD(2) * t58 - qJD(4) * t49 + t918 - t985, -qJD(2) * t2 - qJD(4) * t5 - qJD(5) * t43 - qJD(6) * t69 - t998; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t797 - t875, pkin(2) * t812, t633, -t622, 0, 0, 0, -t523 * qJD(4) + t655 * t797 - t887, -t524 * qJD(4) + t700, t757 + t1173, -qJD(4) * t78 - t1120 - t771, -t167 * qJD(4) - t495 + t702, t758 + t1173, -t168 * qJD(4) + t578 + t701, -qJD(4) * t66 - qJD(6) * t201 - t1120 - t772; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t633, -t622, 0, 0, 0, -pkin(3) * t892, -pkin(3) * t891, t1159, qJD(4) * t213 + t1119, qJD(4) * t234 - t495, t1159, qJD(4) * t235 + t578, qJD(4) * t960 - t458 * t579 + t1119; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t366, -t430, t425, t424, -t874, -pkin(9) * t891 - t695, pkin(9) * t892 - t696, t442 - t709, t387 + (-t1132 * t652 - t503 * t651) * t1031 + t713, -qJD(4) * t1132 - t706, -t710 + t916, -qJD(4) * t503 - t705 (t1132 * t636 - t503 * t634) * qJD(4) + t266 + t423 * qJD(6) + t716; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1150, t388 + t707, -t315, t1150, -t310, t267 + t708; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t157, t254, t251, qJD(4) * t423 + t693; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1104, -t720 - t876, -t466 * t868 - t501 * t653, t463 * t868 - t501 * t655, t470, -qJD(2) * t184 - qJD(3) * t199 - t905, -qJD(2) * t182 - qJD(3) * t197 - t906, qJD(2) * t19 + qJD(3) * t23 - t991, qJD(2) * t9 + qJD(3) * t11 + qJD(5) * t222 - t988, -qJD(2) * t48 - qJD(3) * t52 - t1030 - t890, qJD(2) * t15 + qJD(3) * t21 - t994, qJD(2) * t45 + qJD(3) * t49 + qJD(5) * t437 - t1029 + t582, qJD(2) * t3 + qJD(3) * t5 - qJD(5) * t141 - qJD(6) * t71 - t997; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t365, t430, -t457, t877, t874, qJD(3) * t523 + t724, qJD(3) * t524 + t725, t711, qJD(3) * t78 + t389 - t773, qJD(3) * t167 + t756 - t873, t712, qJD(3) * t168 - t576 + t755, qJD(3) * t66 + qJD(6) * t443 - t268 - t774; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t365, t430, -t457, t877, t874, t695, t696, t709, t389 - t713, -t873 + t706, t710, -t576 + t705, qJD(6) * t497 - t268 - t716; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(6), t634 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1105, -t301, 0, -t1103, -t1108; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t799, -t680; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1149, qJD(2) * t53 + qJD(3) * t59 - qJD(4) * t222 - t1027, t328 * t868 + t440 * t799, -t1149, t1106, qJD(2) * t41 + qJD(3) * t43 + qJD(4) * t141 - qJD(6) * t440 - t1028; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1150, -t390 + t753 + t1126, t252, -t1150, t253, -t754 + t921 + t1126; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1150, -t390 - t707, t252, -t1150, t253, -t708 + t921; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1105, t301, 0, t1103, t1108; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t301; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t211 * t868 - t853, t1107, -t1152, qJD(2) * t64 + qJD(3) * t69 + qJD(4) * t71 - t1026 + t890; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t157, t307, -t251, qJD(3) * t201 - qJD(4) * t443 - t727 + t873; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t157, t307, -t251, -qJD(4) * t497 - t693 + t873; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t799, t680; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t301; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t74;
