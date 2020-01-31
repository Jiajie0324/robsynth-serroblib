% Calculate inertial parameters regressor of coriolis matrix for
% S5RRRRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4,d5]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 22:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RRRRR9_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR9_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR9_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RRRRR9_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 22:29:58
% EndTime: 2019-12-31 22:30:54
% DurationCPUTime: 40.74s
% Computational Cost: add. (28266->883), mult. (58883->1191), div. (0->0), fcn. (62091->8), ass. (0->645)
t1065 = cos(qJ(5));
t1097 = -pkin(8) - pkin(7);
t707 = cos(qJ(3));
t1103 = t1097 * t707;
t706 = cos(qJ(4));
t1118 = t706 * t1103;
t703 = sin(qJ(4));
t704 = sin(qJ(3));
t882 = t1097 * t704;
t835 = t703 * t882;
t556 = t1118 - t835;
t968 = t706 * t707;
t639 = t703 * t704 - t968;
t468 = t639 * pkin(9) + t556;
t1172 = t1065 * t468;
t453 = t1172 / 0.2e1;
t1140 = t703 * t1103 + t706 * t882;
t969 = t706 * t704;
t975 = t703 * t707;
t643 = t969 + t975;
t1153 = -t643 * pkin(9) + t1140;
t702 = sin(qJ(5));
t1164 = t702 * t1153;
t849 = -t1164 / 0.2e1;
t1180 = t849 + t453;
t1184 = 0.2e1 * t1180;
t626 = t1065 * t643;
t981 = t702 * t639;
t1106 = t626 - t981;
t1090 = t1106 / 0.2e1;
t705 = sin(qJ(2));
t973 = t704 * t705;
t610 = -t703 * t973 + t705 * t968;
t591 = t1065 * t610;
t607 = t643 * t705;
t984 = t702 * t607;
t1107 = t591 - t984;
t1095 = -t1107 / 0.2e1;
t457 = t1065 * t607 + t702 * t610;
t1096 = -t457 / 0.2e1;
t1129 = t1107 / 0.2e1;
t1161 = t1065 * t1153;
t1173 = t702 * t468;
t1174 = t1161 + t1173;
t1132 = -t1174 / 0.2e1;
t708 = cos(qJ(2));
t1053 = t708 * pkin(4);
t1059 = t610 * pkin(9);
t1061 = pkin(6) * t704;
t1054 = t708 * pkin(2);
t744 = (t1097 * t705 - pkin(1) - t1054) * t707;
t712 = (-pkin(3) - t1061) * t708 + t744;
t498 = t706 * t712;
t817 = -t705 * pkin(7) - t1054;
t795 = -pkin(1) + t817;
t966 = t707 * t708;
t895 = pkin(6) * t966;
t593 = t704 * t795 + t895;
t543 = -pkin(8) * t973 + t593;
t977 = t703 * t543;
t356 = -t498 + t977;
t784 = -t356 - t1059;
t743 = t784 - t1053;
t266 = t1065 * t743;
t1060 = t607 * pkin(9);
t529 = t706 * t543;
t711 = t703 * t712;
t357 = t711 + t529;
t303 = t357 - t1060;
t992 = t702 * t303;
t157 = -t266 + t992;
t1133 = t157 / 0.2e1;
t728 = t702 * t743;
t876 = t1065 * t303;
t158 = t876 + t728;
t294 = t1172 - t1164;
t504 = t1065 * t639 + t702 * t643;
t1182 = t158 * t1090 - t1096 * t1174 + t457 * t1132 + t504 * t1133 + (-t1095 - t1129) * t294;
t899 = qJD(3) + qJD(4);
t1094 = -t1161 / 0.2e1;
t1154 = t1094 - t1173 / 0.2e1;
t1178 = 0.2e1 * t1154;
t1067 = -t708 / 0.2e1;
t1177 = -t1172 / 0.2e1;
t823 = t1161 / 0.2e1;
t1171 = t1094 + t823;
t1176 = qJD(2) * t1171;
t1175 = qJD(5) * t1171;
t1086 = -t1140 / 0.2e1;
t1170 = qJD(4) + qJD(5);
t693 = -pkin(3) * t707 - pkin(2);
t1130 = -t693 / 0.2e1;
t649 = pkin(3) * t973 + t705 * pkin(6);
t1131 = -t649 / 0.2e1;
t1169 = t556 * t1067 - t610 * t1130 - t643 * t1131;
t1168 = qJD(3) * t1184;
t1167 = qJD(3) * t1178;
t1056 = t705 * pkin(3);
t1052 = t708 * pkin(7);
t1057 = t705 * pkin(2);
t658 = -t1052 + t1057;
t648 = t707 * t658;
t685 = pkin(6) * t973;
t597 = t685 + t648;
t528 = -pkin(8) * t966 + t1056 + t597;
t500 = t706 * t528;
t645 = t704 * t658;
t971 = t705 * t707;
t896 = pkin(6) * t971;
t598 = t645 - t896;
t972 = t704 * t708;
t547 = -pkin(8) * t972 + t598;
t976 = t703 * t547;
t815 = t500 / 0.2e1 - t976 / 0.2e1;
t200 = t815 + t1169;
t197 = t815 - t1169;
t1166 = t708 * t1086 - t607 * t1130 - t639 * t1131;
t897 = pkin(6) * t972;
t542 = t744 - t897;
t978 = t703 * t542;
t380 = -t529 - t978;
t1146 = t380 + t357;
t1155 = qJD(5) + t899;
t1125 = t1155 * t504;
t1126 = t504 * t708;
t661 = t703 * t972;
t611 = t706 * t966 - t661;
t866 = t1065 * t611;
t609 = t708 * t643;
t983 = t702 * t609;
t756 = -t983 / 0.2e1 + t866 / 0.2e1;
t1135 = -t1126 / 0.2e1 + t756;
t1152 = qJD(1) * t1135;
t131 = -t1152 - t1125;
t499 = t703 * t528;
t537 = t706 * t547;
t847 = -t499 / 0.2e1 - t537 / 0.2e1;
t198 = t847 + t1166;
t199 = t847 - t1166;
t1160 = t899 * t1140;
t970 = t706 * t542;
t381 = t970 - t977;
t1159 = t381 / 0.2e1;
t1158 = t1140 / 0.2e1;
t1124 = t1106 * t708;
t590 = t1065 * t609;
t982 = t702 * t611;
t813 = -t590 / 0.2e1 - t982 / 0.2e1;
t1137 = -t1124 / 0.2e1 + t813;
t1151 = qJD(1) * t1137;
t1134 = t1126 / 0.2e1 + t756;
t1150 = qJD(2) * t1134;
t1136 = t1124 / 0.2e1 + t813;
t1149 = qJD(2) * t1136;
t930 = qJD(1) * t708;
t1148 = qJD(2) * t1137 - t1107 * t930;
t164 = qJD(2) * t1135 - t457 * t930;
t1092 = -t504 / 0.2e1;
t524 = pkin(4) * t607 + t649;
t596 = pkin(4) * t639 + t693;
t1108 = t524 * t1092 + t596 * t1096;
t807 = t1118 / 0.2e1;
t1076 = -t639 / 0.2e1;
t1083 = -t607 / 0.2e1;
t375 = t610 * t1076 + t643 * t1083;
t1147 = t899 * t375;
t1145 = t381 + t356;
t1091 = -t1106 / 0.2e1;
t310 = t380 + t1060;
t874 = t1065 * t310;
t311 = t381 - t1059;
t989 = t702 * t311;
t181 = t874 - t989;
t873 = t1065 * t311;
t990 = t702 * t310;
t182 = t873 + t990;
t1143 = -t181 * t1091 - t182 * t1092 + t1182;
t763 = t702 * t784;
t161 = -t763 - t876;
t742 = t1065 * t784;
t162 = t742 - t992;
t1142 = -t161 * t1091 - t162 * t1092 + t1182;
t1141 = t1090 * t457;
t1115 = -t1107 ^ 2 + t457 ^ 2;
t1139 = qJD(1) * t1115;
t1116 = -t1106 ^ 2 + t504 ^ 2;
t1138 = qJD(2) * t1116;
t1082 = -t610 / 0.2e1;
t1075 = -t643 / 0.2e1;
t1128 = t457 * t899;
t935 = qJD(1) * t1107;
t863 = t457 * t935;
t928 = qJD(2) * t1106;
t860 = t504 * t928;
t1019 = t524 * t457;
t196 = t457 * t1091 + t1092 * t1107;
t1122 = t196 * qJD(5);
t1121 = t457 * qJD(5);
t342 = t524 * t1107;
t1114 = -qJD(1) * t196 + t860;
t926 = qJD(2) * t643;
t1113 = -qJD(1) * t375 + t639 * t926;
t1112 = -qJD(2) * t196 + t863;
t931 = qJD(1) * t610;
t1111 = qJD(2) * t375 - t607 * t931;
t1110 = t1106 * t899;
t842 = t899 * t643;
t1109 = t639 * t842;
t573 = t702 * pkin(4);
t1104 = qJD(5) * t573;
t1100 = t524 * t1091 + t596 * t1095;
t1099 = t1121 + t1128;
t698 = t704 ^ 2;
t700 = t707 ^ 2;
t676 = t700 - t698;
t902 = t705 * qJD(1);
t861 = t707 * t902;
t1098 = qJD(2) * t676 - 0.2e1 * t704 * t861;
t1093 = -t498 / 0.2e1;
t1089 = -t529 / 0.2e1;
t1063 = pkin(4) * t610;
t898 = pkin(3) * t971;
t544 = t898 + t1063;
t1088 = t544 / 0.2e1;
t1087 = t556 / 0.2e1;
t822 = -t591 / 0.2e1;
t1085 = t596 / 0.2e1;
t1062 = pkin(4) * t643;
t1064 = pkin(3) * t704;
t599 = t1062 + t1064;
t1084 = t599 / 0.2e1;
t878 = t706 * pkin(3) + pkin(4);
t659 = t1065 * t878;
t980 = t702 * t703;
t619 = pkin(3) * t980 - t659;
t1081 = t619 / 0.2e1;
t818 = t702 * t878;
t865 = t1065 * t703;
t620 = pkin(3) * t865 + t818;
t1080 = -t620 / 0.2e1;
t821 = -t626 / 0.2e1;
t979 = t702 * t706;
t627 = (t865 + t979) * pkin(3);
t1079 = -t627 / 0.2e1;
t1078 = t627 / 0.2e1;
t864 = t1065 * t706;
t628 = (t864 - t980) * pkin(3);
t1077 = -t628 / 0.2e1;
t1074 = -t661 / 0.2e1;
t1073 = t702 / 0.2e1;
t1072 = -t703 / 0.2e1;
t1071 = -t704 / 0.2e1;
t1070 = -t705 / 0.2e1;
t1069 = t706 / 0.2e1;
t1068 = -t707 / 0.2e1;
t1066 = t708 / 0.2e1;
t1055 = t705 * pkin(4);
t697 = t708 * pkin(6);
t1051 = -qJD(3) / 0.2e1;
t1050 = pkin(3) * qJD(3);
t1049 = pkin(3) * qJD(4);
t1048 = pkin(4) * qJD(4);
t80 = -t457 * t1063 + t161 * t708 - t342;
t1046 = qJD(1) * t80;
t81 = t1063 * t1107 + t162 * t708 - t1019;
t1045 = qJD(1) * t81;
t82 = t181 * t708 - t544 * t457 - t342;
t1044 = qJD(1) * t82;
t83 = t1107 * t544 + t182 * t708 - t1019;
t1043 = qJD(1) * t83;
t368 = t500 - t976;
t292 = -pkin(9) * t611 + t1055 + t368;
t877 = t1065 * t292;
t369 = t537 + t499;
t305 = -pkin(9) * t609 + t369;
t991 = t702 * t305;
t159 = t877 - t991;
t875 = t1065 * t305;
t993 = t702 * t292;
t160 = t875 + t993;
t459 = t590 + t982;
t464 = t866 - t983;
t16 = -t1107 * t159 + t157 * t464 - t158 * t459 - t160 * t457;
t1039 = t16 * qJD(1);
t804 = -t1107 * t158 - t157 * t457;
t17 = -t1107 * t161 - t162 * t457 + t804;
t1038 = t17 * qJD(1);
t18 = -t1107 * t181 - t182 * t457 + t804;
t1037 = t18 * qJD(1);
t650 = pkin(3) * t972 + t697;
t525 = pkin(4) * t609 + t650;
t21 = -t157 * t159 + t158 * t160 + t524 * t525;
t1036 = t21 * qJD(1);
t22 = t524 * t1063 - t157 * t161 + t158 * t162;
t1035 = t22 * qJD(1);
t23 = -t157 * t181 + t158 * t182 + t524 * t544;
t1034 = t23 * qJD(1);
t1033 = t294 * t708;
t1031 = t1174 * t708;
t35 = t157 * t705 + t159 * t708 - t525 * t457 - t524 * t459;
t1029 = t35 * qJD(1);
t36 = t1107 * t525 - t158 * t705 + t160 * t708 + t524 * t464;
t1026 = t36 * qJD(1);
t1025 = t1107 * t702;
t1024 = t1106 * t702;
t592 = -t707 * t795 + t897;
t1010 = t592 * t708;
t1009 = t593 * t708;
t1006 = t619 * t457;
t1005 = t619 * t504;
t1004 = t619 * t708;
t1003 = t620 * t1107;
t1002 = t620 * t1106;
t1001 = t620 * t708;
t1000 = t627 * t708;
t999 = t628 * t708;
t998 = t649 * t607;
t974 = t704 * t607;
t699 = t705 ^ 2;
t967 = t707 * t699;
t76 = t356 * t611 - t357 * t609 - t368 * t610 - t369 * t607;
t965 = t76 * qJD(1);
t79 = -t1145 * t607 - t1146 * t610;
t964 = t79 * qJD(1);
t87 = -t356 * t368 + t357 * t369 + t649 * t650;
t963 = t87 * qJD(1);
t90 = -t356 * t380 + t357 * t381 + t649 * t898;
t962 = t90 * qJD(1);
t253 = t607 * t639 - t643 * t610;
t961 = t899 * t253;
t827 = -t876 / 0.2e1;
t960 = -t728 / 0.2e1 + t827;
t850 = t992 / 0.2e1;
t959 = -t266 / 0.2e1 + t850;
t958 = -t763 / 0.2e1 + t827;
t957 = t850 - t742 / 0.2e1;
t701 = t708 ^ 2;
t677 = t701 - t699;
t104 = -t157 * t708 - t1019;
t950 = qJD(1) * t104;
t105 = -t158 * t708 - t342;
t949 = qJD(1) * t105;
t885 = pkin(3) * t1066;
t207 = t1093 + (t885 + t542 / 0.2e1) * t706;
t948 = qJD(1) * t207;
t535 = t649 * t610;
t221 = t380 * t708 - t607 * t898 - t535;
t947 = qJD(1) * t221;
t222 = t381 * t708 + t610 * t898 - t998;
t946 = qJD(1) * t222;
t244 = -t356 * t708 - t998;
t945 = qJD(1) * t244;
t245 = -t357 * t708 - t535;
t944 = qJD(1) * t245;
t267 = t457 * t705 - t459 * t708;
t943 = qJD(1) * t267;
t268 = -t1107 * t705 + t464 * t708;
t942 = qJD(1) * t268;
t938 = qJD(1) * t457;
t460 = -t705 * t607 + t609 * t708;
t937 = qJD(1) * t460;
t461 = t705 * t610 - t611 * t708;
t936 = qJD(1) * t461;
t520 = -t699 * t1061 - t1010;
t934 = qJD(1) * t520;
t521 = -pkin(6) * t967 - t1009;
t933 = qJD(1) * t521;
t932 = qJD(1) * t607;
t929 = qJD(2) * t504;
t927 = qJD(2) * t596;
t925 = qJD(2) * t693;
t924 = qJD(2) * t704;
t923 = qJD(2) * t707;
t922 = qJD(3) * t704;
t921 = qJD(3) * t707;
t920 = qJD(3) * t708;
t919 = qJD(4) * t693;
t917 = qJD(5) * t1106;
t916 = qJD(5) * t596;
t140 = t356 * t705 + t368 * t708 - t650 * t607 - t649 * t609;
t915 = t140 * qJD(1);
t141 = -t357 * t705 + t369 * t708 + t650 * t610 + t649 * t611;
t914 = t141 * qJD(1);
t180 = -t1107 * t459 - t457 * t464;
t913 = t180 * qJD(1);
t228 = (t597 * t705 - t1010) * t707 + (t598 * t705 + t1009) * t704;
t912 = t228 * qJD(1);
t287 = pkin(6) ^ 2 * t705 * t708 - t592 * t597 + t593 * t598;
t911 = t287 * qJD(1);
t346 = -t607 * t611 - t609 * t610;
t910 = t346 * qJD(1);
t399 = t592 * t705 + (t597 - 0.2e1 * t685) * t708;
t909 = t399 * qJD(1);
t400 = t598 * t708 + (-t593 + 0.2e1 * t895) * t705;
t908 = t400 * qJD(1);
t778 = -t975 / 0.2e1 - t969 / 0.2e1;
t489 = (t1075 + t778) * t708;
t478 = t489 * qJD(1);
t490 = t1074 + (t968 / 0.2e1 + t1076) * t708;
t479 = t490 * qJD(1);
t630 = (t698 / 0.2e1 - t700 / 0.2e1) * t705;
t906 = t630 * qJD(3);
t642 = t677 * t704;
t905 = t642 * qJD(1);
t644 = t701 * t707 - t967;
t904 = t644 * qJD(1);
t903 = t677 * qJD(1);
t901 = t705 * qJD(2);
t900 = t708 * qJD(2);
t894 = -t1065 / 0.2e1;
t893 = t1065 / 0.2e1;
t115 = -t1106 * t1107 + t457 * t504;
t86 = t1091 * t1107 - t1092 * t457 + t1095 * t1106 - t1096 * t504;
t892 = t115 * qJD(5) + t899 * t86;
t891 = pkin(1) * t902;
t890 = pkin(1) * t930;
t889 = t1064 / 0.2e1;
t888 = t1063 / 0.2e1;
t887 = t1062 / 0.2e1;
t886 = t1056 / 0.2e1;
t884 = t1053 / 0.2e1;
t193 = t504 * t1129 + t1141;
t880 = t899 * t193 - t1122;
t194 = t1095 * t504 - t1141;
t879 = t899 * t194 + t1122;
t872 = t1065 * t457;
t867 = t1065 * t504;
t858 = t704 * t923;
t857 = t707 * t901;
t856 = t704 * t920;
t855 = t707 * t920;
t854 = t704 * t921;
t853 = t705 * t900;
t680 = t708 * t902;
t852 = t619 * t1070;
t851 = t620 * t1070;
t848 = t706 * t1066;
t846 = t1065 * qJD(4);
t845 = t1065 * qJD(5);
t844 = t1051 - qJD(4) / 0.2e1;
t843 = pkin(3) * t899;
t840 = t899 * t708;
t839 = t707 * t886;
t838 = -qJD(3) + t930;
t837 = -qJD(5) + t930;
t830 = t704 * t857;
t829 = t699 * t854;
t826 = t876 / 0.2e1;
t825 = -t875 / 0.2e1;
t824 = -t873 / 0.2e1;
t820 = t705 * t893;
t819 = -t864 / 0.2e1;
t814 = t1089 - t978 / 0.2e1;
t710 = t524 * t1084 + t544 * t1085 + (t158 + t181) * t1174 / 0.2e1 - (t157 + t182) * t294 / 0.2e1;
t781 = t160 * t1080 + t159 * t1081;
t2 = t710 + t781;
t56 = t596 * t599;
t812 = t2 * qJD(1) + t56 * qJD(2);
t724 = -(-t1133 - t162 / 0.2e1) * t294 + (t158 + t161) * t1132;
t762 = t160 * t1073 + t159 * t893;
t3 = (t524 * t1075 + t596 * t1082 + t762) * pkin(4) + t724;
t57 = t596 * t1062;
t811 = -t3 * qJD(1) + t57 * qJD(2);
t737 = (-t702 * t459 / 0.2e1 + t464 * t894) * pkin(4);
t7 = t737 + t1142;
t810 = t7 * qJD(1);
t779 = t459 * t1080 + t464 * t1081;
t5 = t779 + t1143;
t809 = t5 * qJD(1);
t808 = -qJD(4) + t838;
t717 = -t1006 / 0.2e1 - t1003 / 0.2e1 + t1107 * t1078 + t457 * t1077;
t739 = (-t1025 / 0.2e1 + t872 / 0.2e1) * pkin(4);
t77 = t739 - t717;
t716 = -t1005 / 0.2e1 - t1002 / 0.2e1 + t1106 * t1078 + t504 * t1077;
t738 = (-t1024 / 0.2e1 + t867 / 0.2e1) * pkin(4);
t91 = t738 - t716;
t805 = qJD(1) * t77 + qJD(2) * t91;
t802 = -t597 * t704 + t598 * t707;
t43 = qJD(2) * t86 + t1139;
t753 = (t609 * t1072 - t706 * t611 / 0.2e1) * pkin(3);
t31 = (t357 / 0.2e1 + t380 / 0.2e1) * t643 + (t1159 + t356 / 0.2e1) * t639 + (-t556 / 0.2e1 + t1087) * t610 + (t1158 + t1086) * t607 + t753;
t801 = t31 * qJD(1);
t48 = qJD(1) * t86 + t1138;
t225 = t693 * t1064;
t718 = t1086 * t1146 + t356 * t1087 + t556 * t1159;
t780 = t369 * t703 / 0.2e1 + t368 * t1069;
t33 = (t649 * t1071 + t971 * t1130 + t780) * pkin(3) + t718;
t800 = -t33 * qJD(1) + t225 * qJD(2);
t406 = t596 * t1106;
t226 = t504 * t599 + t406;
t760 = -t991 / 0.2e1 + t877 / 0.2e1;
t714 = t760 + t1100;
t735 = t294 * t1067 + t457 * t1084 + t504 * t1088;
t27 = t852 + t714 - t735;
t799 = qJD(1) * t27 - qJD(2) * t226;
t407 = t596 * t504;
t227 = t1106 * t599 - t407;
t761 = -t993 / 0.2e1 + t825;
t713 = t761 - t1108;
t733 = t1066 * t1174 + t1084 * t1107 + t1088 * t1106;
t28 = t851 + t713 - t733;
t798 = qJD(1) * t28 - qJD(2) * t227;
t246 = -t504 * t1062 - t406;
t38 = t1033 / 0.2e1 + (t457 * t1075 + t504 * t1082 + t820) * pkin(4) + t714;
t797 = qJD(1) * t38 + qJD(2) * t246;
t247 = -t1062 * t1106 + t407;
t37 = -t1031 / 0.2e1 + (t702 * t1070 + t1075 * t1107 + t1082 * t1106) * pkin(4) + t713;
t796 = qJD(1) * t37 + qJD(2) * t247;
t794 = t838 * t705;
t793 = qJD(2) * t115 + t1139;
t792 = qJD(1) * t115 + t1138;
t146 = (t610 * t1071 + (t643 * t1068 + t1072) * t705) * pkin(3) + t198;
t486 = t643 * t1064 - t639 * t693;
t791 = qJD(1) * t146 - qJD(2) * t486;
t147 = (-t974 / 0.2e1 + (t639 * t1068 + t1069) * t705) * pkin(3) + t197;
t485 = t639 * t1064 + t643 * t693;
t790 = qJD(1) * t147 - qJD(2) * t485;
t709 = -t711 / 0.2e1 + t1089 + t703 * t885;
t205 = t709 - t814;
t546 = -t1118 / 0.2e1 + t807;
t789 = qJD(1) * t205 + qJD(2) * t546;
t401 = t607 ^ 2 - t610 ^ 2;
t191 = qJD(1) * t401 + qJD(2) * t253;
t467 = t639 ^ 2 - t643 ^ 2;
t203 = qJD(1) * t253 + qJD(2) * t467;
t442 = t822 + t591 / 0.2e1;
t502 = t821 + t626 / 0.2e1;
t308 = qJD(1) * t442 + qJD(2) * t502;
t787 = -t659 / 0.2e1 + pkin(4) * t894;
t786 = t1052 / 0.2e1 - t1057 / 0.2e1;
t785 = t702 * t884 + t960;
t765 = t786 * t704;
t540 = t645 / 0.2e1 - t765;
t783 = pkin(2) * t923 - qJD(1) * t540;
t764 = t786 * t707;
t541 = -t648 / 0.2e1 + t764;
t782 = pkin(2) * t924 - qJD(1) * t541;
t734 = -t1067 * t1174 + t1108;
t53 = -t734 + t761;
t777 = qJD(1) * t53 + t504 * t927;
t732 = -t1066 * t294 + t1085 * t1107 + t524 * t1090;
t52 = -t732 + t760;
t776 = qJD(1) * t52 - t1106 * t927;
t775 = t707 * t794;
t109 = qJD(2) * t193 + t1107 * t938;
t116 = qJD(1) * t193 + t1106 * t929;
t111 = qJD(2) * t194 - t863;
t118 = qJD(1) * t194 - t860;
t770 = qJD(1) * t197 - t643 * t925;
t769 = qJD(1) * t198 + t639 * t925;
t565 = -qJD(1) * t630 + t858;
t767 = t1065 * t884 + t959;
t766 = t1155 * t1107;
t759 = -t990 / 0.2e1 + t824;
t758 = -t989 / 0.2e1 + t874 / 0.2e1;
t548 = qJD(1) * t704 * t967 + qJD(2) * t630;
t641 = t676 * t699;
t755 = qJD(1) * t641 + 0.2e1 * t830;
t722 = t158 * t1077 + t157 * t1079 + t162 * t1080 + t161 * t1081;
t741 = (t182 * t1073 + t181 * t893) * pkin(4);
t11 = t741 + t722;
t719 = -(t1077 - t1081) * t294 + (-t1079 + t1080) * t1174;
t740 = (t1073 * t1174 + t294 * t893) * pkin(4);
t25 = t740 + t719;
t378 = t619 * t627 + t620 * t628;
t751 = -t11 * qJD(1) - t25 * qJD(2) + t378 * qJD(3);
t167 = t453 + t1177;
t715 = t763 / 0.2e1 + t826;
t70 = -t1000 / 0.2e1 + t715 + t758;
t750 = qJD(1) * t70 - qJD(2) * t167 + qJD(3) * t627;
t726 = t1164 / 0.2e1;
t169 = t849 + t726;
t66 = t715 + t785;
t749 = qJD(1) * t66 - qJD(2) * t169 - qJD(3) * t573;
t170 = t1177 + t726 + t1180;
t60 = -t1001 / 0.2e1 + t826 + t728 / 0.2e1 + t758;
t748 = qJD(1) * t60 + qJD(2) * t170 + qJD(3) * t620;
t574 = pkin(3) * t819 - t787;
t727 = t742 / 0.2e1;
t68 = t727 - t992 / 0.2e1 + t767;
t747 = -t68 * qJD(1) + t574 * qJD(3) - t1176;
t729 = (-t310 / 0.2e1 - t303 / 0.2e1) * t702 + t824;
t61 = t1004 / 0.2e1 + t266 / 0.2e1 + t729;
t746 = qJD(1) * t61 - qJD(3) * t619 - t1176;
t175 = t823 + t1173 / 0.2e1 + t1154;
t71 = -t999 / 0.2e1 + t727 + t729;
t745 = qJD(1) * t71 - qJD(2) * t175 + qJD(3) * t628;
t731 = t760 - t1100;
t690 = -t902 / 0.2e1;
t689 = t902 / 0.2e1;
t688 = t901 / 0.2e1;
t638 = t705 * t1051 + t680;
t622 = t628 * qJD(4);
t621 = t627 * qJD(4);
t604 = t620 * qJD(5);
t603 = t619 * qJD(5);
t602 = t705 * t844 + t680;
t563 = t680 + (-qJD(5) / 0.2e1 + t844) * t705;
t539 = (t819 + t980) * pkin(3) + t787;
t538 = -t573 / 0.2e1 - t818 / 0.2e1 + (-t865 - t979 / 0.2e1) * pkin(3);
t494 = t685 + t648 / 0.2e1 + t764;
t493 = t896 - t645 / 0.2e1 - t765;
t492 = t643 * t1066 + t778 * t708;
t491 = t639 * t1066 + t707 * t848 + t1074;
t473 = 0.2e1 * t807 - t835;
t419 = 0.2e1 * t821 + t981;
t394 = t489 * qJD(2) - t610 * t930;
t393 = t490 * qJD(2) - t607 * t930;
t367 = 0.2e1 * t822 + t984;
t355 = -t842 - t478;
t354 = -t639 * t899 - t479;
t243 = t492 * qJD(2) + t610 * t808;
t242 = t491 * qJD(2) + t607 * t808;
t223 = qJD(5) * t502 + t1151;
t208 = pkin(3) * t848 + t977 + t1093 - t970 / 0.2e1;
t206 = t709 + t814;
t163 = t442 * qJD(5) + t1148;
t149 = t1056 * t1072 + t610 * t889 + t643 * t839 + t199;
t148 = pkin(3) * t974 / 0.2e1 + t639 * t839 + t706 * t886 + t200;
t130 = qJD(5) * t419 - t1110 - t1151;
t92 = t738 + t716;
t89 = t457 * t808 - t1121 + t1150;
t88 = t367 * qJD(5) + t1107 * t808 + t1149;
t78 = t739 + t717;
t73 = t999 / 0.2e1 + t759 + t957;
t72 = t1000 / 0.2e1 + t758 + t958;
t69 = t767 + t957;
t67 = t785 + t958;
t63 = t1001 / 0.2e1 + t758 + t960;
t62 = -t1004 / 0.2e1 + t759 + t959;
t55 = t732 + t760;
t54 = t734 + t761;
t40 = t1031 / 0.2e1 + t1107 * t887 + t1106 * t888 + t825 + (-t1055 / 0.2e1 - t292 / 0.2e1) * t702 + t1108;
t39 = -t1033 / 0.2e1 + t457 * t887 + t504 * t888 + pkin(4) * t820 + t731;
t34 = pkin(3) * t780 + t649 * t889 + t693 * t839 - t718;
t32 = t1146 * t1075 + t1145 * t1076 + t1140 * t1083 + t607 * t1158 + t753;
t30 = t851 + t733 + t761 + t1108;
t29 = t852 + t731 + t735;
t26 = t740 - t719;
t12 = t741 - t722;
t8 = t737 - t1142;
t6 = t779 - t1143;
t4 = pkin(4) * t762 + t524 * t887 + t596 * t888 - t724;
t1 = t710 - t781;
t9 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t853, t677 * qJD(2), 0, -t853, 0, 0, -pkin(1) * t901, -pkin(1) * t900, 0, 0, t700 * t853 - t829, -t641 * qJD(3) - 0.2e1 * t708 * t830, -t644 * qJD(2) + t705 * t856, t698 * t853 + t829, t642 * qJD(2) + t705 * t855, -t853, -qJD(2) * t399 - qJD(3) * t521, qJD(2) * t400 + qJD(3) * t520, -qJD(2) * t228, qJD(2) * t287, (qJD(2) * t611 - t607 * t899) * t610, qJD(2) * t346 + t401 * t899, t461 * qJD(2) + t607 * t840, (qJD(2) * t609 + t610 * t899) * t607, t460 * qJD(2) + t610 * t840, -t853, -qJD(2) * t140 - qJD(3) * t221 - qJD(4) * t245, qJD(2) * t141 + qJD(3) * t222 + qJD(4) * t244, qJD(2) * t76 + qJD(3) * t79, qJD(2) * t87 + qJD(3) * t90, (qJD(2) * t464 - t1099) * t1107, qJD(2) * t180 + t1115 * t1155, -t268 * qJD(2) + t1099 * t708, (qJD(2) * t459 + t766) * t457, -t267 * qJD(2) + t708 * t766, -t853, -qJD(2) * t35 - qJD(3) * t82 - qJD(4) * t80 - qJD(5) * t105, qJD(2) * t36 + qJD(3) * t83 + qJD(4) * t81 + qJD(5) * t104, qJD(2) * t16 + qJD(3) * t18 + qJD(4) * t17, qJD(2) * t21 + qJD(3) * t23 + qJD(4) * t22; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t680, t903, t900, -t680, -t901, 0, -pkin(6) * t900 - t891, pkin(6) * t901 - t890, 0, 0, -t906 + (t700 * t902 + t858) * t708, t1098 * t708 - 0.2e1 * t705 * t854, t704 * t901 - t904, t906 + (t698 * t902 - t858) * t708, t857 + t905, -t638, -t909 + (t704 * t817 - t895) * qJD(2) + t494 * qJD(3), t908 + (t707 * t817 + t897) * qJD(2) + t493 * qJD(3), qJD(2) * t802 - t912, t911 + (-pkin(2) * t697 + pkin(7) * t802) * qJD(2), (t926 + t931) * t611 + t1147, t910 + (-t609 * t643 - t611 * t639) * qJD(2) + t961, t491 * t899 + t643 * t901 + t936, (qJD(2) * t639 + t932) * t609 - t1147, t492 * t899 - t639 * t901 + t937, -t602, -t915 + (t1140 * t705 + t609 * t693 + t639 * t650) * qJD(2) + t148 * qJD(3) + t200 * qJD(4), t914 + (t556 * t705 + t611 * t693 + t643 * t650) * qJD(2) + t149 * qJD(3) + t199 * qJD(4), t965 + (-t1140 * t611 - t368 * t643 - t369 * t639 + t556 * t609) * qJD(2) + t32 * qJD(3), t963 + (t1140 * t368 - t369 * t556 + t650 * t693) * qJD(2) + t34 * qJD(3), (t928 + t935) * t464 + t879, t913 + (-t1106 * t459 - t464 * t504) * qJD(2) + t892, t1106 * t901 + t1134 * t1155 - t942, (t929 + t938) * t459 + t880, t1136 * t1155 - t504 * t901 - t943, -t563, -t1029 + (t1174 * t705 + t459 * t596 + t504 * t525) * qJD(2) + t29 * qJD(3) + t39 * qJD(4) + t55 * qJD(5), t1026 + (t1106 * t525 + t294 * t705 + t464 * t596) * qJD(2) + t30 * qJD(3) + t40 * qJD(4) + t54 * qJD(5), t1039 + (-t1106 * t159 - t1174 * t464 - t160 * t504 + t294 * t459) * qJD(2) + t6 * qJD(3) + t8 * qJD(4), t1036 + (t1174 * t159 - t160 * t294 + t525 * t596) * qJD(2) + t1 * qJD(3) + t4 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t548, -t755, t704 * t794, t548, t775, t688, qJD(2) * t494 - qJD(3) * t593 - t933, qJD(2) * t493 + qJD(3) * t592 + t934, 0, 0, t1111, t191, t242, -t1111, t243, t688, qJD(2) * t148 + qJD(3) * t380 + qJD(4) * t206 - t947, qJD(2) * t149 - qJD(3) * t381 + qJD(4) * t208 + t946, t964 + t32 * qJD(2) + (t607 * t706 - t610 * t703) * t1050, t962 + t34 * qJD(2) + (t380 * t706 + t381 * t703) * t1050, t111, t43, t89, t109, t88, t688, qJD(2) * t29 + qJD(3) * t181 + qJD(4) * t72 + qJD(5) * t63 - t1044, qJD(2) * t30 - qJD(3) * t182 + qJD(4) * t73 + qJD(5) * t62 + t1043, t1037 + t6 * qJD(2) + (-t1003 - t1006) * qJD(3) + t78 * qJD(4), t1034 + t1 * qJD(2) + (-t181 * t619 + t182 * t620) * qJD(3) + t12 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1111, t191, t242, -t1111, t243, t688, qJD(2) * t200 + qJD(3) * t206 - qJD(4) * t357 - t944, qJD(2) * t199 + qJD(3) * t208 + qJD(4) * t356 + t945, 0, 0, t111, t43, t89, t109, t88, t688, qJD(2) * t39 + qJD(3) * t72 + qJD(4) * t161 + qJD(5) * t67 - t1046, qJD(2) * t40 + qJD(3) * t73 - qJD(4) * t162 + qJD(5) * t69 + t1045, t1038 + t8 * qJD(2) + t78 * qJD(3) + (t872 - t1025) * t1048, t1035 + t4 * qJD(2) + t12 * qJD(3) + (t1065 * t161 + t162 * t702) * t1048; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1112, t793, t457 * t837 - t1128 + t1150, t1112, t1107 * t837 + t367 * t899 + t1149, t688, qJD(2) * t55 + qJD(3) * t63 + qJD(4) * t67 - qJD(5) * t158 - t949, qJD(2) * t54 + qJD(3) * t62 + qJD(4) * t69 + qJD(5) * t157 + t950, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t680, -t903, 0, t680, 0, 0, t891, t890, 0, 0, -t680 * t700 - t906, 0.2e1 * t704 * t775, -t855 + t904, -t680 * t698 + t906, t856 - t905, t638, qJD(3) * t541 + t909, qJD(3) * t540 - t908, t912, -t911, -t611 * t931 + t1147, -t910 + t961, -t490 * t899 - t936, -t609 * t932 - t1147, -t489 * t899 - t937, t602, -qJD(3) * t147 - qJD(4) * t197 + t915, -qJD(3) * t146 - qJD(4) * t198 - t914, -qJD(3) * t31 - t965, -qJD(3) * t33 - t963, -t464 * t935 + t879, t892 - t913, -t1135 * t1155 + t942, -t459 * t938 + t880, -t1137 * t1155 + t943, t563, -qJD(3) * t27 - qJD(4) * t38 - qJD(5) * t52 + t1029, -qJD(3) * t28 - qJD(4) * t37 - qJD(5) * t53 - t1026, -qJD(3) * t5 - qJD(4) * t7 - t1039, qJD(3) * t2 - qJD(4) * t3 - t1036; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t854, t676 * qJD(3), 0, -t854, 0, 0, -pkin(2) * t922, -pkin(2) * t921, 0, 0, -t1109, t899 * t467, 0, t1109, 0, 0, qJD(3) * t485 + t643 * t919, qJD(3) * t486 - t639 * t919, 0, qJD(3) * t225, -t1125 * t1106, t1155 * t1116, 0, (t917 + t1110) * t504, 0, 0, qJD(3) * t226 - qJD(4) * t246 + t1106 * t916, qJD(3) * t227 - qJD(4) * t247 - t504 * t916, 0, qJD(3) * t56 + qJD(4) * t57; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t565, t1098, -t838 * t707, -t565, t838 * t704, t690, -pkin(7) * t921 - t782, pkin(7) * t922 - t783, 0, 0, -t1113, t203, t354, t1113, t355, t690, qJD(3) * t556 + qJD(4) * t473 - t790, -t1160 - t791, (t639 * t706 - t643 * t703) * t1050 - t801, (t1140 * t703 + t556 * t706) * t1050 + t800, t118, t48, t131, t116, t130, t690, qJD(3) * t294 + t1170 * t1184 - t799, -qJD(3) * t1174 + t1170 * t1178 - t798, (-t1002 - t1005) * qJD(3) + t92 * qJD(4) - t809, (t1174 * t620 - t294 * t619) * qJD(3) + t26 * qJD(4) + t812; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1113, t203, t354, t1113, t355, t690, qJD(3) * t473 + qJD(4) * t556 - t770, -t1160 - t769, 0, 0, t118, t48, t131, t116, t130, t690, qJD(4) * t294 + qJD(5) * t1184 + t1168 - t797, -qJD(4) * t1174 + qJD(5) * t1178 + t1167 - t796, t92 * qJD(3) + (t867 - t1024) * t1048 - t810, t26 * qJD(3) + (t1065 * t294 + t1174 * t702) * t1048 + t811; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1114, t792, t131, t1114, t419 * t899 - t1151 - t917, t690, qJD(4) * t1184 + qJD(5) * t294 + t1168 - t776, qJD(4) * t1178 - qJD(5) * t1174 + t1167 - t777, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t548, t755, (-t704 * t902 + t923) * t708, -t548, (-t861 - t924) * t708, t688, -qJD(2) * t541 + t933, -qJD(2) * t540 - t934, 0, 0, -t1111, -t191, t393, t1111, t394, t688, qJD(2) * t147 + qJD(4) * t205 + t947, qJD(2) * t146 + qJD(4) * t207 - t946, qJD(2) * t31 - t964, qJD(2) * t33 - t962, -t111, -t43, t164, -t109, t163, t688, qJD(2) * t27 - qJD(4) * t70 - qJD(5) * t60 + t1044, qJD(2) * t28 - qJD(4) * t71 - qJD(5) * t61 - t1043, qJD(2) * t5 - qJD(4) * t77 - t1037, -qJD(2) * t2 - qJD(4) * t11 - t1034; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t565, -t1098, t707 * t930, t565, -t704 * t930, t689, t782, t783, 0, 0, t1113, -t203, t479, -t1113, t478, t689, qJD(4) * t546 + t790, t791, t801, -t800, -t118, -t48, t1152, -t116, t223, t689, qJD(4) * t167 - qJD(5) * t170 + t799, qJD(4) * t175 + t1175 + t798, -qJD(4) * t91 + t809, -qJD(4) * t25 - t812; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t703 * t1049, -t706 * t1049, 0, 0, 0, 0, 0, 0, 0, 0, -t621 - t604, -t622 + t603, 0, qJD(4) * t378; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t703 * t843 + t789, -t706 * t843 + t948, 0, 0, 0, 0, 0, 0, 0, 0, qJD(5) * t538 - t621 - t750, qJD(5) * t539 - t622 - t745, -t805, (-t1065 * t627 + t628 * t702) * t1048 + t751; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t308, 0, qJD(4) * t538 - t604 - t748, qJD(4) * t539 + t603 - t746, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1111, -t191, t393, t1111, t394, t688, qJD(2) * t197 - qJD(3) * t205 + t944, qJD(2) * t198 - qJD(3) * t207 - t945, 0, 0, -t111, -t43, t164, -t109, t163, t688, qJD(2) * t38 + qJD(3) * t70 + qJD(5) * t66 + t1046, qJD(2) * t37 + qJD(3) * t71 + qJD(5) * t68 - t1045, qJD(2) * t7 + qJD(3) * t77 - t1038, qJD(2) * t3 + qJD(3) * t11 - t1035; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1113, -t203, t479, -t1113, t478, t689, -qJD(3) * t546 + t770, t769, 0, 0, -t118, -t48, t1152, -t116, t223, t689, -qJD(3) * t167 - qJD(5) * t169 + t797, -qJD(3) * t175 + t1175 + t796, qJD(3) * t91 + t810, qJD(3) * t25 - t811; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1050 * t703 - t789, t1050 * t706 - t948, 0, 0, 0, 0, 0, 0, 0, 0, t750 - t1104, -qJD(5) * t574 + t745, t805, -t751; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1104, -pkin(4) * t845, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t308, 0, -t1170 * t573 + t749, (-t846 - t845) * pkin(4) - t747, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1112, -t793, t164, -t1112, -t442 * t899 + t1148, t688, qJD(2) * t52 + qJD(3) * t60 - qJD(4) * t66 + t949, qJD(2) * t53 + qJD(3) * t61 - qJD(4) * t68 - t950, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1114, -t792, t1152, -t1114, -t502 * t899 + t1151, t689, qJD(3) * t170 + qJD(4) * t169 + t776, -t1171 * t899 + t777, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t308, 0, qJD(4) * t573 + t748, qJD(4) * t574 + t746, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t308, 0, t1048 * t702 - t749, pkin(4) * t846 + t747, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t9;