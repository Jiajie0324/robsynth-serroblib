% Calculate minimal parameter regressor of coriolis matrix for
% S6RRRRPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x33]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 22:25
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRRRPR6_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR6_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR6_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR6_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 22:23:22
% EndTime: 2019-03-09 22:24:36
% DurationCPUTime: 56.36s
% Computational Cost: add. (33327->866), mult. (71717->1141), div. (0->0), fcn. (81218->10), ass. (0->652)
t864 = qJD(3) + qJD(4);
t1177 = qJD(6) + t864;
t683 = sin(qJ(3));
t686 = cos(qJ(4));
t934 = t686 * t683;
t682 = sin(qJ(4));
t687 = cos(qJ(3));
t955 = t682 * t687;
t791 = t934 + t955;
t1082 = pkin(8) + pkin(9);
t633 = t1082 * t683;
t634 = t1082 * t687;
t826 = t686 * t633 + t682 * t634;
t1089 = -qJ(5) * t791 - t826;
t620 = t686 * t634;
t957 = t682 * t633;
t553 = t620 - t957;
t933 = t686 * t687;
t956 = t682 * t683;
t612 = -t933 + t956;
t471 = -qJ(5) * t612 + t553;
t679 = sin(pkin(11));
t680 = cos(pkin(11));
t1131 = t680 * t1089 - t679 * t471;
t511 = t679 * t612 - t680 * t791;
t1142 = t511 * pkin(10) + t1131;
t351 = t679 * t1089 + t680 * t471;
t512 = -t612 * t680 - t679 * t791;
t298 = pkin(10) * t512 + t351;
t681 = sin(qJ(6));
t685 = cos(qJ(6));
t1170 = -t685 * t1142 + t681 * t298;
t1172 = t1177 * t1170;
t138 = t681 * t1142 + t685 * t298;
t1173 = t1177 * t138;
t688 = cos(qJ(2));
t1047 = -t688 / 0.2e1;
t1171 = t1047 * t138;
t1046 = t688 / 0.2e1;
t1168 = t1046 * t1170;
t250 = t681 * t511 + t685 * t512;
t850 = t1177 * t250;
t684 = sin(qJ(2));
t587 = t612 * t684;
t588 = t791 * t684;
t447 = t587 * t680 + t588 * t679;
t449 = t679 * t587 - t680 * t588;
t189 = t681 * t447 + t685 * t449;
t323 = qJD(5) * t189;
t373 = qJD(5) * t250;
t1073 = t1131 / 0.2e1;
t1151 = t1073 * t449;
t1147 = qJD(1) * t189 + qJD(2) * t250;
t1053 = -t791 / 0.2e1;
t1138 = -t685 * t511 + t681 * t512;
t891 = qJD(2) * t1138;
t1139 = -t685 * t447 + t681 * t449;
t897 = qJD(1) * t1139;
t1144 = t891 + t897;
t824 = t864 * t1139;
t370 = t1138 * qJD(5);
t322 = t1139 * qJD(5);
t1140 = qJD(6) * t1139 + t824;
t1071 = -t1138 / 0.2e1;
t1128 = t250 / 0.2e1;
t1130 = -t1071 * t189 + t1128 * t1139;
t78 = qJD(1) * t1130 + t250 * t891;
t62 = qJD(2) * t1130 + t189 * t897;
t1085 = t1177 * t1138;
t1067 = -t447 / 0.2e1;
t1137 = t351 * t1067;
t1118 = -t1139 ^ 2 + t189 ^ 2;
t1134 = qJD(1) * t1118;
t1117 = -t1138 ^ 2 + t250 ^ 2;
t1133 = qJD(2) * t1117;
t669 = -t687 * pkin(3) - pkin(2);
t1101 = -t669 / 0.2e1;
t954 = t683 * t684;
t911 = pkin(3) * t954 + t684 * pkin(7);
t1132 = t1047 * t553 + t911 * t1053 - t587 * t1101;
t1045 = pkin(7) * t683;
t812 = -pkin(2) * t688 - t684 * pkin(8);
t626 = -pkin(1) + t812;
t611 = t687 * t626;
t952 = t684 * t687;
t816 = -pkin(9) * t952 + t611;
t523 = (-pkin(3) - t1045) * t688 + t816;
t507 = t686 * t523;
t929 = t687 * t688;
t859 = pkin(7) * t929;
t570 = t683 * t626 + t859;
t543 = -pkin(9) * t954 + t570;
t959 = t682 * t543;
t384 = -t507 + t959;
t580 = t587 * qJ(5);
t352 = -t384 + t580;
t340 = -pkin(4) * t688 + t352;
t1032 = qJ(5) * t588;
t531 = t686 * t543;
t385 = t682 * t523 + t531;
t353 = t385 - t1032;
t341 = t679 * t353;
t195 = t680 * t340 - t341;
t1129 = t195 / 0.2e1;
t1126 = t189 * t250;
t866 = t688 * qJD(1);
t1125 = t189 * t866;
t528 = t588 * pkin(4) + t911;
t368 = -pkin(5) * t449 + t528;
t1017 = t368 * t189;
t575 = t612 * pkin(4) + t669;
t405 = -pkin(5) * t512 + t575;
t1103 = t405 / 0.2e1;
t1120 = t189 * t1103;
t1037 = t684 * pkin(3);
t1036 = t688 * pkin(8);
t1038 = t684 * pkin(2);
t635 = -t1036 + t1038;
t621 = t687 * t635;
t656 = pkin(7) * t954;
t530 = -pkin(9) * t929 + t1037 + t621 + t656;
t510 = t686 * t530;
t618 = t683 * t635;
t858 = pkin(7) * t952;
t953 = t683 * t688;
t547 = -pkin(9) * t953 + t618 - t858;
t958 = t682 * t547;
t806 = t510 / 0.2e1 - t958 / 0.2e1;
t256 = t806 + t1132;
t259 = t806 - t1132;
t1048 = -t684 / 0.2e1;
t1063 = -t512 / 0.2e1;
t1064 = -t511 / 0.2e1;
t1066 = -t449 / 0.2e1;
t343 = t680 * t353;
t199 = -t352 * t679 - t343;
t200 = t680 * t352 - t341;
t196 = t679 * t340 + t343;
t707 = t196 * t1064 + t512 * t1129 + t1137 + t1151;
t1113 = -t1063 * t200 - t1064 * t199 - t1066 * t1131 + t1137 - t707;
t1074 = -t351 / 0.2e1;
t860 = pkin(7) * t953;
t542 = t816 - t860;
t960 = t682 * t542;
t396 = -t531 - t960;
t358 = t396 + t1032;
t935 = t686 * t542;
t397 = t935 - t959;
t359 = t397 + t580;
t217 = t679 * t358 + t680 * t359;
t1080 = t217 / 0.2e1;
t216 = t680 * t358 - t359 * t679;
t1081 = t216 / 0.2e1;
t1112 = -t1074 * t447 - t1080 * t512 - t1081 * t511 - t1151 + t707;
t317 = t1139 * t866;
t218 = t368 * t1139;
t1039 = t679 * pkin(4);
t658 = t680 * pkin(4) + pkin(5);
t595 = t1039 * t685 + t681 * t658;
t444 = t447 * pkin(10);
t702 = -t688 * pkin(5) + t195 + t444;
t699 = t681 * t702;
t1044 = pkin(10) * t449;
t711 = t196 + t1044;
t703 = t685 * t711;
t689 = t699 / 0.2e1 + t703 / 0.2e1;
t1110 = t1047 * t595 + t689;
t668 = t686 * pkin(3) + pkin(4);
t982 = t679 * t682;
t592 = -pkin(3) * t982 + t680 * t668;
t586 = pkin(5) + t592;
t980 = t680 * t682;
t594 = pkin(3) * t980 + t668 * t679;
t463 = t681 * t586 + t685 * t594;
t1109 = t1047 * t463 + t689;
t632 = t685 * t658;
t593 = t1039 * t681 - t632;
t698 = t685 * t702;
t704 = t681 * t711;
t690 = -t704 / 0.2e1 + t698 / 0.2e1;
t1108 = t1047 * t593 - t690;
t937 = t685 * t586;
t462 = t681 * t594 - t937;
t1107 = t1047 * t462 - t690;
t1102 = -t612 / 0.2e1;
t1106 = t1047 * t826 + t1101 * t588 + t1102 * t911;
t1105 = t368 / 0.2e1;
t590 = t791 * t688;
t591 = t612 * t688;
t448 = -t590 * t680 + t591 * t679;
t442 = t685 * t448;
t450 = -t590 * t679 - t591 * t680;
t965 = t681 * t450;
t808 = t442 / 0.2e1 - t965 / 0.2e1;
t841 = t1138 * t1047;
t204 = t841 - t808;
t1098 = qJD(2) * t204 + t1140 - t317;
t1040 = t791 * pkin(4);
t414 = -pkin(5) * t511 + t1040;
t1068 = -t414 / 0.2e1;
t1042 = t587 * pkin(4);
t811 = -pkin(5) * t447 - t1042;
t920 = t1128 * t368 + t1120;
t1097 = t1047 * t1170 - t1068 * t1139 - t1071 * t811 + t920;
t921 = t1103 * t1139 + t1105 * t1138;
t1096 = t1046 * t138 + t1068 * t189 - t1128 * t811 + t921;
t509 = t682 * t530;
t539 = t686 * t547;
t833 = -t509 / 0.2e1 - t539 / 0.2e1;
t258 = t833 + t1106;
t257 = t833 - t1106;
t827 = t510 - t958;
t344 = pkin(4) * t684 + qJ(5) * t591 + t827;
t912 = t539 + t509;
t357 = -qJ(5) * t590 + t912;
t197 = t680 * t344 - t357 * t679;
t152 = pkin(5) * t684 - pkin(10) * t450 + t197;
t951 = t685 * t152;
t198 = t679 * t344 + t680 * t357;
t157 = pkin(10) * t448 + t198;
t978 = t681 * t157;
t924 = t951 / 0.2e1 - t978 / 0.2e1;
t1094 = t1048 * t462 + t924;
t950 = t685 * t157;
t979 = t681 * t152;
t925 = -t979 / 0.2e1 - t950 / 0.2e1;
t1093 = t1048 * t463 + t925;
t939 = t685 * t450;
t966 = t681 * t448;
t913 = t966 / 0.2e1 + t939 / 0.2e1;
t1086 = t1177 * t189;
t675 = t683 ^ 2;
t677 = t687 ^ 2;
t648 = t677 - t675;
t868 = t684 * qJD(1);
t849 = t687 * t868;
t1084 = qJD(2) * t648 - 0.2e1 * t683 * t849;
t1083 = t864 * t826;
t1075 = -t1139 / 0.2e1;
t657 = pkin(3) * t952;
t380 = t657 + t811;
t1070 = t380 / 0.2e1;
t672 = t683 * pkin(3);
t406 = t414 + t672;
t1069 = t406 / 0.2e1;
t1065 = -t507 / 0.2e1;
t1062 = -t523 / 0.2e1;
t839 = -t531 / 0.2e1;
t1061 = -t586 / 0.2e1;
t1060 = t587 / 0.2e1;
t1059 = -t592 / 0.2e1;
t1058 = -t594 / 0.2e1;
t1057 = t594 / 0.2e1;
t600 = (-t679 * t686 - t980) * pkin(3);
t1056 = -t600 / 0.2e1;
t601 = (t680 * t686 - t982) * pkin(3);
t1055 = -t601 / 0.2e1;
t1054 = t601 / 0.2e1;
t838 = -t620 / 0.2e1;
t1052 = -t632 / 0.2e1;
t1051 = t679 / 0.2e1;
t1050 = t680 / 0.2e1;
t1049 = t683 / 0.2e1;
t1041 = t590 * pkin(4);
t1035 = pkin(3) * qJD(3);
t1034 = pkin(3) * qJD(4);
t1033 = pkin(4) * qJD(4);
t158 = t199 - t1044;
t949 = t685 * t158;
t159 = t444 + t200;
t976 = t681 * t159;
t89 = t949 - t976;
t45 = t189 * t811 + t688 * t89 - t218;
t1030 = qJD(1) * t45;
t948 = t685 * t159;
t977 = t681 * t158;
t90 = t948 + t977;
t46 = t1139 * t811 + t90 * t688 + t1017;
t1029 = qJD(1) * t46;
t169 = t216 - t1044;
t947 = t685 * t169;
t170 = t444 + t217;
t974 = t681 * t170;
t92 = t947 - t974;
t47 = t189 * t380 + t688 * t92 - t218;
t1028 = qJD(1) * t47;
t946 = t685 * t170;
t975 = t681 * t169;
t93 = t946 + t975;
t48 = t1139 * t380 + t688 * t93 + t1017;
t1027 = qJD(1) * t48;
t85 = t704 - t698;
t58 = -t688 * t85 + t1017;
t1026 = qJD(1) * t58;
t86 = t703 + t699;
t59 = -t688 * t86 - t218;
t1025 = qJD(1) * t59;
t91 = t195 * t447 + t196 * t449;
t1024 = qJD(1) * t91;
t328 = -t442 + t965;
t654 = pkin(3) * t953;
t674 = t688 * pkin(7);
t622 = t674 + t654;
t529 = t622 + t1041;
t369 = -pkin(5) * t448 + t529;
t17 = (t951 - t978) * t688 + t85 * t684 + t369 * t189 - t368 * t328;
t1023 = t17 * qJD(1);
t331 = t939 + t966;
t18 = (t950 + t979) * t688 - t86 * t684 + t369 * t1139 + t368 * t331;
t1022 = t18 * qJD(1);
t1014 = t1138 * t405;
t1013 = t250 * t688;
t1012 = t250 * t405;
t1011 = t1138 * t688;
t41 = -t195 * t450 + t196 * t448 + t197 * t447 + t198 * t449;
t1008 = t41 * qJD(1);
t795 = -t195 * t449 + t196 * t447;
t42 = t199 * t447 + t200 * t449 + t795;
t1007 = t42 * qJD(1);
t43 = t216 * t447 + t217 * t449 + t795;
t1006 = t43 * qJD(1);
t44 = t195 * t197 + t196 * t198 + t528 * t529;
t1005 = t44 * qJD(1);
t1004 = t447 * t679;
t1003 = t449 * t680;
t49 = -t1042 * t528 + t195 * t199 + t196 * t200;
t998 = t49 * qJD(1);
t585 = t685 * t600;
t961 = t681 * t601;
t491 = -t585 + t961;
t997 = t491 * t688;
t936 = t685 * t601;
t962 = t681 * t600;
t492 = t936 + t962;
t996 = t492 * t688;
t544 = t657 - t1042;
t50 = t195 * t216 + t196 * t217 + t528 * t544;
t995 = t50 * qJD(1);
t994 = t511 * t679;
t993 = t512 * t680;
t990 = t592 * t449;
t989 = t592 * t512;
t987 = t594 * t447;
t986 = t594 * t511;
t932 = t687 * t612;
t931 = t687 * t791;
t676 = t684 ^ 2;
t930 = t687 * t676;
t97 = -t1139 * t328 + t189 * t331;
t928 = t97 * qJD(1);
t923 = -t977 / 0.2e1 - t948 / 0.2e1;
t922 = -t976 / 0.2e1 + t949 / 0.2e1;
t324 = t587 * t791 + t588 * t612;
t915 = t864 * t324;
t389 = t1053 * t588 + t612 * t1060;
t914 = t864 * t389;
t678 = t688 ^ 2;
t649 = t678 - t676;
t187 = -t189 * t684 - t328 * t688;
t910 = qJD(1) * t187;
t188 = -t1139 * t684 + t331 * t688;
t909 = qJD(1) * t188;
t908 = qJD(1) * t204;
t205 = t841 + t808;
t907 = qJD(1) * t205;
t206 = -t1011 / 0.2e1 + t808;
t906 = qJD(1) * t206;
t207 = t1013 / 0.2e1 + t913;
t905 = qJD(1) * t207;
t840 = t250 * t1046;
t209 = t840 + t913;
t904 = qJD(1) * t209;
t210 = t840 - t913;
t903 = qJD(1) * t210;
t852 = pkin(3) * t1046;
t814 = t852 + t542 / 0.2e1;
t268 = t686 * t814 + t1065;
t902 = qJD(1) * t268;
t537 = t911 * t587;
t299 = t396 * t688 - t588 * t657 + t537;
t901 = qJD(1) * t299;
t830 = t911 * t588;
t300 = t397 * t688 - t587 * t657 - t830;
t900 = qJD(1) * t300;
t311 = -t384 * t688 - t830;
t899 = qJD(1) * t311;
t312 = -t385 * t688 + t537;
t898 = qJD(1) * t312;
t460 = t588 * t684 - t590 * t688;
t896 = qJD(1) * t460;
t461 = t587 * t684 - t591 * t688;
t895 = qJD(1) * t461;
t569 = -t611 + t860;
t524 = -t1045 * t676 - t569 * t688;
t894 = qJD(1) * t524;
t525 = -pkin(7) * t930 - t570 * t688;
t893 = qJD(1) * t525;
t892 = qJD(1) * t587;
t890 = qJD(2) * t405;
t889 = qJD(2) * t791;
t888 = qJD(2) * t669;
t887 = qJD(2) * t683;
t886 = qJD(2) * t687;
t885 = qJD(3) * t683;
t884 = qJD(3) * t687;
t883 = qJD(3) * t688;
t882 = qJD(4) * t669;
t878 = qJD(6) * t405;
t181 = t384 * t684 - t622 * t588 - t590 * t911 + t688 * t827;
t877 = t181 * qJD(1);
t182 = -t385 * t684 - t622 * t587 - t591 * t911 + t688 * t912;
t876 = t182 * qJD(1);
t379 = t587 * t590 + t588 * t591;
t874 = t379 * qJD(1);
t402 = t569 * t684 + (-t656 + t621) * t688;
t873 = t402 * qJD(1);
t403 = t618 * t688 + (-t570 + t859) * t684;
t872 = t403 * qJD(1);
t753 = -t955 / 0.2e1 - t934 / 0.2e1;
t499 = (t1053 + t753) * t688;
t489 = t499 * qJD(1);
t752 = t933 / 0.2e1 - t956 / 0.2e1;
t500 = (t1102 + t752) * t688;
t490 = t500 * qJD(1);
t616 = t649 * t683;
t871 = t616 * qJD(1);
t617 = t678 * t687 - t930;
t870 = t617 * qJD(1);
t869 = t649 * qJD(1);
t867 = t684 * qJD(2);
t865 = t688 * qJD(2);
t573 = -t1042 / 0.2e1;
t863 = t573 + t657 / 0.2e1;
t599 = t1040 / 0.2e1;
t862 = t599 + t672 / 0.2e1;
t55 = t1126 / 0.2e1 + t1139 * t1071 + t189 * t1128 + t1138 * t1075;
t65 = -t1138 * t1139 + t1126;
t861 = t65 * qJD(6) + t55 * t864;
t857 = pkin(1) * t868;
t856 = pkin(1) * t866;
t855 = -t672 / 0.2e1;
t851 = t1177 * t1130;
t848 = t683 * t886;
t847 = t687 * t867;
t846 = t683 * t883;
t845 = t687 * t883;
t844 = t683 * t884;
t843 = t684 * t865;
t842 = t684 * t866;
t837 = t169 / 0.2e1 - t158 / 0.2e1;
t836 = -t170 / 0.2e1 + t159 / 0.2e1;
t832 = -t658 / 0.2e1 + t1061;
t831 = pkin(3) * t864;
t823 = t864 * t588;
t822 = t864 * t791;
t821 = -qJD(3) + t866;
t820 = -qJD(6) + t866;
t818 = t683 * t847;
t815 = t1039 / 0.2e1 + t1057;
t813 = t866 - qJD(3) / 0.2e1;
t583 = t672 + t1040;
t695 = t195 * t1074 + t196 * t1073 + t1131 * t1081 + t351 * t1080 + t528 * t583 / 0.2e1 + t544 * t575 / 0.2e1;
t766 = t1058 * t198 + t1059 * t197;
t2 = t695 + t766;
t94 = t575 * t583;
t805 = t2 * qJD(1) + t94 * qJD(2);
t709 = -(t196 + t199) * t1131 / 0.2e1 + (t1129 - t200 / 0.2e1) * t351;
t765 = t1050 * t197 + t1051 * t198;
t3 = (t1053 * t528 + t1060 * t575 + t765) * pkin(4) + t709;
t95 = t1040 * t575;
t804 = -t3 * qJD(1) + t95 * qJD(2);
t760 = t1057 * t448 + t1059 * t450;
t5 = t760 + t1112;
t803 = t5 * qJD(1);
t726 = (t448 * t1051 - t680 * t450 / 0.2e1) * pkin(4);
t7 = t726 - t1113;
t802 = t7 * qJD(1);
t801 = -qJD(4) + t821;
t798 = t1048 * t595 + t925;
t797 = t1048 * t593 + t924;
t21 = qJD(2) * t55 + t1134;
t713 = -t1069 * t189 - t1070 * t250 - t1171 + t921;
t10 = t713 - t1094;
t125 = -t250 * t406 + t1014;
t790 = -qJD(1) * t10 - qJD(2) * t125;
t712 = t1069 * t1139 + t1070 * t1138 - t1168 + t920;
t11 = t712 - t1093;
t126 = t1138 * t406 + t1012;
t789 = -qJD(1) * t11 - qJD(2) * t126;
t27 = qJD(1) * t55 + t1133;
t788 = qJD(2) * t65 + t1134;
t13 = t797 - t1096;
t133 = -t250 * t414 + t1014;
t787 = -t13 * qJD(1) + t133 * qJD(2);
t134 = t1138 * t414 + t1012;
t14 = t798 - t1097;
t786 = -t14 * qJD(1) + t134 * qJD(2);
t139 = t1131 * t511 + t351 * t512;
t708 = t1063 * t196 + t1064 * t195 + t1066 * t351 + t1067 * t1131;
t770 = t654 / 0.2e1 + t674 / 0.2e1 + t1041 / 0.2e1;
t51 = t708 + t770;
t785 = qJD(1) * t51 - qJD(2) * t139;
t784 = qJD(1) * t65 + t1133;
t783 = t821 * t684;
t694 = t990 / 0.2e1 - t987 / 0.2e1 + t447 * t1056 + t449 * t1055;
t728 = (-t1003 / 0.2e1 + t1004 / 0.2e1) * pkin(4);
t102 = t728 + t694;
t693 = t512 * t1055 - t986 / 0.2e1 + t511 * t1056 + t989 / 0.2e1;
t727 = (-t993 / 0.2e1 + t994 / 0.2e1) * pkin(4);
t115 = t727 + t693;
t782 = qJD(1) * t102 + qJD(2) * t115;
t112 = t447 * t511 + t449 * t512;
t203 = t447 ^ 2 + t449 ^ 2;
t781 = qJD(1) * t203 + qJD(2) * t112;
t270 = t511 ^ 2 + t512 ^ 2;
t780 = qJD(1) * t112 + qJD(2) * t270;
t183 = (t587 * t1049 + (-t682 / 0.2e1 - t931 / 0.2e1) * t684) * pkin(3) + t257;
t494 = -t612 * t669 + t672 * t791;
t779 = t183 * qJD(1) - t494 * qJD(2);
t184 = (-t588 * t1049 + (t686 / 0.2e1 - t932 / 0.2e1) * t684) * pkin(3) + t256;
t493 = t612 * t672 + t669 * t791;
t778 = -t184 * qJD(1) + t493 * qJD(2);
t764 = t1058 * t449 + t1059 * t447;
t236 = t764 + t863;
t762 = t1058 * t512 + t1059 * t511;
t291 = t762 + t862;
t775 = qJD(1) * t236 + qJD(2) * t291;
t266 = t839 + t531 / 0.2e1 + (t1062 + t814) * t682;
t546 = t838 + t620 / 0.2e1;
t774 = qJD(1) * t266 + qJD(2) * t546;
t763 = t1050 * t447 + t1051 * t449;
t301 = (t1060 + t763) * pkin(4);
t761 = t1050 * t511 + t1051 * t512;
t338 = (t1053 + t761) * pkin(4);
t773 = qJD(1) * t301 + qJD(2) * t338;
t404 = -t587 ^ 2 + t588 ^ 2;
t234 = qJD(1) * t404 + qJD(2) * t324;
t472 = t612 ^ 2 - t791 ^ 2;
t264 = qJD(1) * t324 + qJD(2) * t472;
t772 = t1036 / 0.2e1 - t1038 / 0.2e1;
t771 = t815 * t685;
t769 = -qJD(4) / 0.2e1 + t813;
t735 = t772 * t683;
t540 = t618 / 0.2e1 - t735;
t768 = pkin(2) * t886 - qJD(1) * t540;
t734 = t772 * t687;
t541 = -t621 / 0.2e1 + t734;
t767 = pkin(2) * t887 - qJD(1) * t541;
t759 = -t975 / 0.2e1 - t946 / 0.2e1;
t758 = -t974 / 0.2e1 + t947 / 0.2e1;
t717 = t1071 * t368 + t1075 * t405 + t1171;
t23 = t717 + t924;
t751 = qJD(1) * t23 - t1138 * t890;
t718 = -t1105 * t250 - t1120 + t1168;
t24 = t718 + t925;
t750 = qJD(1) * t24 - t250 * t890;
t749 = t687 * t783;
t746 = qJD(1) * t256 - t791 * t888;
t745 = qJD(1) * t257 + t612 * t888;
t308 = -qJD(2) * t389 - t588 * t892;
t332 = qJD(1) * t389 - t612 * t889;
t603 = (t675 / 0.2e1 - t677 / 0.2e1) * t684;
t744 = -qJD(1) * t603 + t848;
t87 = qJD(2) * t205 - t317;
t733 = qJD(1) * t683 * t930 + qJD(2) * t603;
t615 = t648 * t676;
t732 = qJD(1) * t615 + 0.2e1 * t818;
t730 = (t1050 * t216 + t1051 * t217) * pkin(4);
t729 = (-t1050 * t351 + t1051 * t1131) * pkin(4);
t706 = t1055 * t196 + t1056 * t195 + t1058 * t200 + t1059 * t199;
t19 = t730 + t706;
t386 = t592 * t600 + t594 * t601;
t705 = (t1056 + t1058) * t1131 + (t1055 - t1059) * t351;
t60 = t729 + t705;
t725 = t19 * qJD(1) + t60 * qJD(2) - t386 * qJD(3);
t29 = t758 + t1109;
t724 = qJD(1) * t29 + qJD(3) * t463;
t30 = t759 - t1107;
t723 = qJD(1) * t30 - qJD(3) * t462;
t37 = -t997 / 0.2e1 + t837 * t685 + t836 * t681;
t722 = qJD(1) * t37 + qJD(3) * t491;
t38 = -t996 / 0.2e1 + t836 * t685 - t837 * t681;
t721 = qJD(1) * t38 + qJD(3) * t492;
t313 = t1052 + (t1061 + t1054) * t685 + (t600 / 0.2e1 + t815) * t681;
t34 = t923 - t1108;
t716 = qJD(1) * t34 - qJD(3) * t313 - qJD(4) * t593;
t315 = -t585 / 0.2e1 - t771 + (t1054 + t832) * t681;
t33 = t922 + t1110;
t715 = qJD(1) * t33 - qJD(3) * t315 + qJD(4) * t595;
t663 = -t868 / 0.2e1;
t662 = t868 / 0.2e1;
t661 = t867 / 0.2e1;
t610 = t813 * t684;
t598 = t603 * qJD(3);
t584 = t769 * t684;
t582 = t595 * qJD(6);
t581 = t593 * qJD(6);
t555 = (-qJD(6) / 0.2e1 + t769) * t684;
t504 = t656 + t621 / 0.2e1 + t734;
t503 = t858 - t618 / 0.2e1 - t735;
t502 = -t1047 * t791 + t688 * t753;
t501 = t1046 * t612 + t688 * t752;
t476 = 0.2e1 * t838 + t957;
t474 = t492 * qJD(4);
t473 = t491 * qJD(4);
t446 = t463 * qJD(6);
t445 = t462 * qJD(6);
t399 = t500 * qJD(2) - t588 * t866;
t398 = t499 * qJD(2) + t587 * t866;
t383 = -t822 - t489;
t382 = -t612 * t864 - t490;
t339 = pkin(4) * t761 + t599;
t316 = -t961 / 0.2e1 + t585 / 0.2e1 - t771 + t832 * t681;
t314 = t1052 - t937 / 0.2e1 - t936 / 0.2e1 - t962 / 0.2e1 + t815 * t681;
t310 = t501 * qJD(2) + t588 * t801;
t309 = t502 * qJD(2) - t587 * t801;
t302 = pkin(4) * t763 + t573;
t292 = -t762 + t862;
t269 = t686 * t852 + t959 + t1065 - t935 / 0.2e1;
t267 = 0.2e1 * t839 - t960 / 0.2e1 + (t852 + t1062) * t682;
t237 = -t764 + t863;
t211 = t1011 / 0.2e1 + t808;
t208 = -t1013 / 0.2e1 + t913;
t186 = t587 * t855 - (-t931 + t682) * t1037 / 0.2e1 + t258;
t185 = -t588 * t855 + (t932 + t686) * t1037 / 0.2e1 + t259;
t116 = t727 - t693;
t111 = t112 * qJD(5);
t103 = t728 - t694;
t88 = t209 * qJD(2) + t1125;
t83 = t850 - t904;
t82 = -t1085 - t907;
t61 = t729 - t705;
t57 = -t210 * qJD(2) + (qJD(6) - t801) * t189;
t52 = -t708 + t770;
t40 = t996 / 0.2e1 + t759 + t923;
t39 = t997 / 0.2e1 + t758 + t922;
t36 = t922 - t1110;
t35 = t923 + t1108;
t32 = t758 - t1109;
t31 = t759 + t1107;
t26 = -t717 + t924;
t25 = -t718 + t925;
t20 = t730 - t706;
t16 = t798 + t1097;
t15 = t797 + t1096;
t12 = t712 + t1093;
t9 = t713 + t1094;
t8 = t726 + t1113;
t6 = t760 - t1112;
t4 = pkin(4) * t765 + t528 * t599 + t573 * t575 - t709;
t1 = t695 - t766;
t22 = [0, 0, 0, t843, t649 * qJD(2), 0, 0, 0, -pkin(1) * t867, -pkin(1) * t865, -t676 * t844 + t677 * t843, -t615 * qJD(3) - 0.2e1 * t688 * t818, -t617 * qJD(2) + t684 * t846, t616 * qJD(2) + t684 * t845, -t843, -qJD(2) * t402 - qJD(3) * t525, qJD(2) * t403 + qJD(3) * t524 (qJD(2) * t591 + t823) * t587, qJD(2) * t379 + t404 * t864, -t461 * qJD(2) + t688 * t823, -t587 * t688 * t864 - t460 * qJD(2), -t843, -qJD(2) * t181 - qJD(3) * t299 - qJD(4) * t312, qJD(2) * t182 + qJD(3) * t300 + qJD(4) * t311, qJD(2) * t41 + qJD(3) * t43 + qJD(4) * t42 + qJD(5) * t203, qJD(2) * t44 + qJD(3) * t50 + qJD(4) * t49 + qJD(5) * t91 (qJD(2) * t331 + t1086) * t1139, qJD(2) * t97 + t1118 * t1177, -t188 * qJD(2) - t1086 * t688, -t187 * qJD(2) + t1140 * t688, -t843, -t17 * qJD(2) - t47 * qJD(3) - t45 * qJD(4) - t59 * qJD(6) + t322 * t688, t18 * qJD(2) + t48 * qJD(3) + t46 * qJD(4) + t58 * qJD(6) + t323 * t688; 0, 0, 0, t842, t869, t865, -t867, 0, -pkin(7) * t865 - t857, pkin(7) * t867 - t856, -t598 + (t677 * t868 + t848) * t688, t1084 * t688 - 0.2e1 * t684 * t844, t683 * t867 - t870, t847 + t871, -t610, -t873 + (t683 * t812 - t859) * qJD(2) + t504 * qJD(3), t872 + (t687 * t812 + t860) * qJD(2) + t503 * qJD(3) -(t889 - t892) * t591 + t914, t874 + (-t590 * t791 + t591 * t612) * qJD(2) + t915, t501 * t864 + t791 * t867 - t895, t502 * t864 - t612 * t867 - t896, -t584, -t877 + (t590 * t669 + t612 * t622 - t684 * t826) * qJD(2) + t185 * qJD(3) + t259 * qJD(4), t876 + (-t553 * t684 - t591 * t669 + t622 * t791) * qJD(2) + t186 * qJD(3) + t258 * qJD(4), t1008 + (-t1131 * t450 + t197 * t511 + t198 * t512 + t351 * t448) * qJD(2) + t6 * qJD(3) + t8 * qJD(4) + t111, t1005 + (t1131 * t197 + t198 * t351 + t529 * t575) * qJD(2) + t1 * qJD(3) + t4 * qJD(4) + t52 * qJD(5), t1144 * t331 + t851, t928 + (-t1138 * t328 + t250 * t331) * qJD(2) + t861, qJD(6) * t208 + t1138 * t867 - t210 * t864 - t909, qJD(6) * t211 - t204 * t864 + t250 * t867 - t910, -t555, -t1023 + (-t1170 * t684 - t250 * t369 + t328 * t405) * qJD(2) + t9 * qJD(3) + t15 * qJD(4) - t205 * qJD(5) + t26 * qJD(6), t1022 + (t1138 * t369 - t138 * t684 + t331 * t405) * qJD(2) + t12 * qJD(3) + t16 * qJD(4) + t209 * qJD(5) + t25 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t733, -t732, t683 * t783, t749, t661, qJD(2) * t504 - qJD(3) * t570 - t893, qJD(2) * t503 + qJD(3) * t569 + t894, -t308, t234, t310, t309, t661, qJD(2) * t185 + qJD(3) * t396 + qJD(4) * t267 - t901, qJD(2) * t186 - qJD(3) * t397 + qJD(4) * t269 + t900, t1006 + t6 * qJD(2) + (t987 - t990) * qJD(3) + t103 * qJD(4), t995 + t1 * qJD(2) + (t216 * t592 + t217 * t594) * qJD(3) + t20 * qJD(4) + t237 * qJD(5), t62, t21, t57, -t1098, t661, qJD(2) * t9 + qJD(3) * t92 + qJD(4) * t39 + qJD(6) * t32 - t1028, qJD(2) * t12 - qJD(3) * t93 + qJD(4) * t40 + qJD(6) * t31 + t1027; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t308, t234, t310, t309, t661, qJD(2) * t259 + qJD(3) * t267 - qJD(4) * t385 - t898, qJD(2) * t258 + qJD(3) * t269 + qJD(4) * t384 + t899, t1007 + t8 * qJD(2) + t103 * qJD(3) + (-t1003 + t1004) * t1033, t998 + t4 * qJD(2) + t20 * qJD(3) + t302 * qJD(5) + (t199 * t680 + t200 * t679) * t1033, t62, t21, t57, -t1098, t661, qJD(2) * t15 + qJD(3) * t39 + qJD(4) * t89 + qJD(6) * t36 - t1030, qJD(2) * t16 + qJD(3) * t40 - qJD(4) * t90 + qJD(6) * t35 + t1029; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t781, qJD(2) * t52 + qJD(3) * t237 + qJD(4) * t302 + t1024, 0, 0, 0, 0, 0, -t87, t88; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t62, t788, t208 * qJD(2) + (-t820 + t864) * t189, t211 * qJD(2) + t1139 * t820 - t824, t661, qJD(2) * t26 + qJD(3) * t32 + qJD(4) * t36 - qJD(6) * t86 - t1025, qJD(2) * t25 + qJD(3) * t31 + qJD(4) * t35 + qJD(6) * t85 + t1026; 0, 0, 0, -t842, -t869, 0, 0, 0, t857, t856, -t677 * t842 - t598, 0.2e1 * t683 * t749, -t845 + t870, t846 - t871, t610, qJD(3) * t541 + t873, qJD(3) * t540 - t872, -t591 * t892 + t914, -t874 + t915, -t500 * t864 + t895, -t499 * t864 + t896, t584, -qJD(3) * t184 - qJD(4) * t256 + t877, -qJD(3) * t183 - qJD(4) * t257 - t876, -qJD(3) * t5 - qJD(4) * t7 - t1008 + t111, qJD(3) * t2 - qJD(4) * t3 - qJD(5) * t51 - t1005, -t331 * t897 + t851, t861 - t928, -qJD(6) * t207 - t209 * t864 + t909, -qJD(6) * t206 - t205 * t864 + t910, t555, qJD(3) * t10 - qJD(4) * t13 - qJD(5) * t204 - qJD(6) * t23 + t1023, qJD(3) * t11 - qJD(4) * t14 + qJD(5) * t210 - qJD(6) * t24 - t1022; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t844, t648 * qJD(3), 0, 0, 0, -pkin(2) * t885, -pkin(2) * t884, -t612 * t822, t864 * t472, 0, 0, 0, qJD(3) * t493 + t791 * t882, qJD(3) * t494 - t612 * t882, qJD(5) * t270, qJD(3) * t94 + qJD(4) * t95 + qJD(5) * t139, t850 * t1138, t1177 * t1117, 0, 0, 0, qJD(3) * t125 + qJD(4) * t133 + t1138 * t878, qJD(3) * t126 + qJD(4) * t134 + t250 * t878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t744, t1084, -t821 * t687, t821 * t683, t663, -pkin(8) * t884 - t767, pkin(8) * t885 - t768, t332, t264, t382, t383, t663, -qJD(3) * t553 + t476 * qJD(4) + t778, t1083 - t779 (t986 - t989) * qJD(3) + t116 * qJD(4) - t803 (t1131 * t594 - t351 * t592) * qJD(3) + t61 * qJD(4) + t292 * qJD(5) + t805, t78, t27, t83, t82, t663, -t790 - t1173, -t789 + t1172; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t332, t264, t382, t383, t663, qJD(3) * t476 - qJD(4) * t553 - t746, t1083 - t745, t116 * qJD(3) + (-t993 + t994) * t1033 - t802, t61 * qJD(3) + t339 * qJD(5) + (t1131 * t679 - t351 * t680) * t1033 + t804, t78, t27, t83, t82, t663, -t1173 + t787, t1172 + t786; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t780, qJD(3) * t292 + qJD(4) * t339 - t785, 0, 0, 0, 0, 0, -t908, t903; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t78, t784, -t905 + t850, -t1085 - t906, t663, -t1173 - t751, t1172 - t750; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t733, t732 (-t683 * t868 + t886) * t688 (-t849 - t887) * t688, t661, -qJD(2) * t541 + t893, -qJD(2) * t540 - t894, t308, -t234, t399, t398, t661, qJD(2) * t184 + qJD(4) * t266 + t901, qJD(2) * t183 + qJD(4) * t268 - t900, qJD(2) * t5 - qJD(4) * t102 - t1006, -qJD(2) * t2 - qJD(4) * t19 - qJD(5) * t236 - t995, -t62, -t21, t88, t87, t661, -qJD(2) * t10 - qJD(4) * t37 - qJD(6) * t29 + t1028 - t322, -qJD(2) * t11 - qJD(4) * t38 - qJD(6) * t30 - t1027 - t323; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t744, -t1084, t687 * t866, -t683 * t866, t662, t767, t768, -t332, -t264, t490, t489, t662, qJD(4) * t546 - t778, t779, -qJD(4) * t115 + t803, -qJD(4) * t60 - qJD(5) * t291 - t805, -t78, -t27, t904, t907, t662, -t370 + t790, -t373 + t789; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t682 * t1034, -t686 * t1034, 0, t386 * qJD(4), 0, 0, 0, 0, 0, -t473 - t446, -t474 + t445; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t682 * t831 + t774, -t686 * t831 + t902, -t782 (t600 * t680 + t601 * t679) * t1033 - t725, 0, 0, 0, 0, 0, qJD(6) * t316 - t473 - t722, qJD(6) * t314 - t474 - t721; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t775, 0, 0, 0, 0, 0, -t1144, -t1147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t316 - t446 - t724, qJD(4) * t314 + t445 - t723; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t308, -t234, t399, t398, t661, qJD(2) * t256 - qJD(3) * t266 + t898, qJD(2) * t257 - qJD(3) * t268 - t899, qJD(2) * t7 + qJD(3) * t102 - t1007, qJD(2) * t3 + qJD(3) * t19 + qJD(5) * t301 - t998, -t62, -t21, t88, t87, t661, qJD(2) * t13 + qJD(3) * t37 - qJD(6) * t33 + t1030 - t322, qJD(2) * t14 + qJD(3) * t38 - qJD(6) * t34 - t1029 - t323; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t332, -t264, t490, t489, t662, -qJD(3) * t546 + t746, t745, qJD(3) * t115 + t802, qJD(3) * t60 + qJD(5) * t338 - t804, -t78, -t27, t904, t907, t662, -t370 - t787, -t373 - t786; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1035 * t682 - t774, t1035 * t686 - t902, t782, t725, 0, 0, 0, 0, 0, qJD(6) * t315 + t722, qJD(6) * t313 + t721; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t582, t581; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t773, 0, 0, 0, 0, 0, -t1144, -t1147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t582 - t715, t581 - t716; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t781, qJD(2) * t51 + qJD(3) * t236 - qJD(4) * t301 - t1024, 0, 0, 0, 0, 0, t1098, t57; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t780, qJD(3) * t291 - qJD(4) * t338 + t785, 0, 0, 0, 0, 0, t1085 + t908, t850 - t903; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t775, 0, 0, 0, 0, 0, t1144, t1147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t773, 0, 0, 0, 0, 0, t1144, t1147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1144, t1147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t62, -t788, t207 * qJD(2) + t1125, t206 * qJD(2) - t317, t661, qJD(2) * t23 + qJD(3) * t29 + qJD(4) * t33 + t1025 - t322, qJD(2) * t24 + qJD(3) * t30 + qJD(4) * t34 - t1026 - t323; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t78, -t784, t905, t906, t662, -t370 + t751, -t373 + t750; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4) * t315 + t724, -qJD(4) * t313 + t723; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t715, t716; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1144, -t1147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t22;
