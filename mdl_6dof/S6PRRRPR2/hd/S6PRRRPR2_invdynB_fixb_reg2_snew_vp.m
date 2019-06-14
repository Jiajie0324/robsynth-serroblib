% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRRRPR2
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d6,theta1,theta5]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 07:18
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRRRPR2_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR2_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR2_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRPR2_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRPR2_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRRPR2_invdynB_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 07:16:51
% EndTime: 2019-05-05 07:17:38
% DurationCPUTime: 42.83s
% Computational Cost: add. (362112->1012), mult. (734950->1653), div. (0->0), fcn. (550810->14), ass. (0->722)
t1021 = sin(pkin(12));
t1017 = qJD(3) + qJD(4);
t1024 = cos(pkin(12));
t1029 = sin(qJ(4));
t1030 = sin(qJ(3));
t1033 = cos(qJ(4));
t1034 = cos(qJ(3));
t980 = (t1029 * t1034 + t1030 * t1033) * qJD(2);
t945 = -t1024 * t1017 + t1021 * t980;
t947 = t1017 * t1021 + t1024 * t980;
t896 = t947 * t945;
t1131 = qJD(2) * t1030;
t1112 = qJD(3) * t1131;
t1121 = qJDD(2) * t1034;
t1058 = t1112 - t1121;
t1130 = qJD(2) * t1034;
t1111 = qJD(3) * t1130;
t1123 = qJDD(2) * t1030;
t987 = t1111 + t1123;
t1106 = t1029 * t987 + t1033 * t1058;
t901 = qJD(4) * t980 + t1106;
t1176 = -t896 + t901;
t1183 = t1021 * t1176;
t1182 = t1024 * t1176;
t1028 = sin(qJ(6));
t1043 = qJDD(6) + t901;
t1032 = cos(qJ(6));
t889 = t1028 * t947 + t1032 * t945;
t891 = -t1028 * t945 + t1032 * t947;
t807 = t891 * t889;
t1174 = t1043 - t807;
t1181 = t1028 * t1174;
t1016 = qJDD(3) + qJDD(4);
t978 = t1029 * t1131 - t1033 * t1130;
t933 = t980 * t978;
t1173 = -t933 + t1016;
t1180 = t1029 * t1173;
t1179 = t1032 * t1174;
t1178 = t1033 * t1173;
t1023 = sin(pkin(6));
t1026 = cos(pkin(6));
t1022 = sin(pkin(11));
t1025 = cos(pkin(11));
t1110 = g(1) * t1022 - t1025 * g(2);
t1163 = g(3) - qJDD(1);
t1177 = -t1023 * t1163 + t1026 * t1110;
t902 = -t978 * qJD(4) - t1029 * t1058 + t1033 * t987;
t893 = t1021 * t1016 + t1024 * t902;
t913 = t978 * t945;
t825 = -t913 - t893;
t824 = -t913 + t893;
t967 = t1017 * t978;
t874 = -t967 + t902;
t892 = t1024 * t1016 - t1021 * t902;
t1040 = qJD(6) * t889 - t1028 * t892 - t1032 * t893;
t969 = qJD(6) + t978;
t848 = t969 * t889;
t1175 = -t1040 - t848;
t1172 = t1022 * t1163;
t1171 = t1025 * t1163;
t1168 = qJD(2) ^ 2;
t1005 = t1030 * t1168 * t1034;
t995 = qJDD(3) + t1005;
t994 = g(1) * t1025 + g(2) * t1022;
t943 = -t1022 * t1110 - t1025 * t994;
t876 = (qJD(4) - t1017) * t980 + t1106;
t1107 = t1028 * t893 - t1032 * t892;
t718 = (qJD(6) - t969) * t891 + t1107;
t942 = -t1022 * t994 + t1025 * t1110;
t886 = t889 ^ 2;
t887 = t891 ^ 2;
t1170 = t945 ^ 2;
t944 = t947 ^ 2;
t968 = t969 ^ 2;
t1169 = t978 ^ 2;
t977 = t980 ^ 2;
t1167 = t1017 ^ 2;
t1031 = sin(qJ(2));
t1035 = cos(qJ(2));
t914 = -t1031 * t994 - t1035 * t1177;
t915 = t1031 * t1177 - t1035 * t994;
t842 = t1031 * t914 + t1035 * t915;
t1166 = pkin(7) * t842;
t1165 = pkin(4) * t1029;
t1164 = t947 * t978;
t1038 = -pkin(2) * t1168 + qJDD(2) * pkin(8) + t915;
t963 = t1023 * t1110 + t1026 * t1163;
t862 = t1030 * t1038 + t1034 * t963;
t1037 = -t862 + (t1111 - t987) * pkin(9) + t995 * pkin(3);
t1019 = t1034 ^ 2;
t1014 = t1019 * t1168;
t863 = -t1030 * t963 + t1034 * t1038;
t998 = qJD(3) * pkin(3) - pkin(9) * t1131;
t818 = -pkin(3) * t1014 - pkin(9) * t1058 - qJD(3) * t998 + t863;
t741 = t1029 * t1037 + t1033 * t818;
t924 = pkin(4) * t978 - qJ(5) * t980;
t708 = -pkin(4) * t1167 + qJ(5) * t1016 - t924 * t978 + t741;
t906 = -qJDD(2) * pkin(2) - t1168 * pkin(8) + t914;
t850 = t1058 * pkin(3) - pkin(9) * t1014 + t1131 * t998 + t906;
t739 = -t874 * qJ(5) + (t1017 * t980 + t901) * pkin(4) + t850;
t648 = 0.2e1 * qJD(5) * t947 + t1021 * t708 - t1024 * t739;
t597 = pkin(5) * t1176 + pkin(10) * t825 - t648;
t649 = -0.2e1 * qJD(5) * t945 + t1021 * t739 + t1024 * t708;
t905 = pkin(5) * t978 - pkin(10) * t947;
t609 = -pkin(5) * t1170 + pkin(10) * t892 - t905 * t978 + t649;
t541 = t1028 * t597 + t1032 * t609;
t540 = t1028 * t609 - t1032 * t597;
t483 = t1028 * t541 - t1032 * t540;
t1162 = t1021 * t483;
t740 = t1029 * t818 - t1033 * t1037;
t707 = -t1016 * pkin(4) - t1167 * qJ(5) + t924 * t980 + qJDD(5) + t740;
t1161 = t1021 * t707;
t828 = t896 + t901;
t1160 = t1021 * t828;
t1159 = t1021 * t978;
t1157 = t1024 * t483;
t1156 = t1024 * t707;
t1155 = t1024 * t828;
t1154 = t1024 * t978;
t661 = -t892 * pkin(5) - pkin(10) * t1170 + t905 * t947 + t707;
t1153 = t1028 * t661;
t764 = t1043 + t807;
t1152 = t1028 * t764;
t1151 = t1028 * t969;
t1150 = t1029 * t850;
t1149 = t1029 * t901;
t922 = t933 + t1016;
t1148 = t1029 * t922;
t662 = t1029 * t741 - t1033 * t740;
t1147 = t1030 * t662;
t1146 = t1030 * t906;
t1145 = t1030 * t995;
t996 = qJDD(3) - t1005;
t1144 = t1030 * t996;
t1143 = t1031 * t963;
t1142 = t1032 * t661;
t1141 = t1032 * t764;
t1140 = t1032 * t969;
t1139 = t1033 * t850;
t1138 = t1033 * t922;
t1137 = t1034 * t662;
t1136 = t1034 * t906;
t988 = -0.2e1 * t1112 + t1121;
t948 = t1034 * t988;
t1135 = t1034 * t996;
t1134 = t1035 * t963;
t1132 = qJD(2) * qJD(3);
t1018 = t1030 ^ 2;
t1129 = t1168 * t1018;
t1128 = t1017 * t1029;
t1127 = t1017 * t1033;
t1125 = t1018 + t1019;
t1124 = qJDD(2) * t1023;
t1122 = qJDD(2) * t1031;
t1120 = qJDD(2) * t1035;
t1119 = t1029 * t807;
t1118 = t1029 * t896;
t1117 = t1031 * t933;
t1116 = t1033 * t807;
t1115 = t1033 * t896;
t1114 = t1035 * t933;
t1113 = -pkin(4) * t1033 - pkin(3);
t484 = t1028 * t540 + t1032 * t541;
t663 = t1029 * t740 + t1033 * t741;
t787 = t1030 * t862 + t1034 * t863;
t1105 = t1031 * t1005;
t1104 = t1035 * t1005;
t785 = t1030 * t863 - t1034 * t862;
t989 = t1125 * qJDD(2);
t992 = t1014 + t1129;
t940 = -t1031 * t992 + t1035 * t989;
t1103 = pkin(7) * t940 - t1031 * t785;
t990 = -t1031 * t1168 + t1120;
t1102 = -pkin(7) * t990 - t1143;
t1063 = t1035 * t1168 + t1122;
t1101 = -pkin(7) * t1063 + t1134;
t568 = t1021 * t649 - t1024 * t648;
t569 = t1021 * t648 + t1024 * t649;
t972 = t1063 * t1026;
t1099 = t1022 * t990 + t1025 * t972;
t927 = t1022 * t972 - t1025 * t990;
t454 = t1024 * t484 - t1162;
t446 = t1029 * t454 - t1033 * t661;
t447 = t1029 * t661 + t1033 * t454;
t419 = -t1030 * t446 + t1034 * t447;
t453 = t1021 * t484 + t1157;
t1098 = t1031 * t419 - t1035 * t453;
t549 = t1029 * t569 - t1033 * t707;
t550 = t1029 * t707 + t1033 * t569;
t488 = -t1030 * t549 + t1034 * t550;
t1097 = t1031 * t488 - t1035 * t568;
t722 = t1040 - t848;
t640 = -t1028 * t718 + t1032 * t722;
t642 = -t1028 * t722 - t1032 * t718;
t566 = -t1021 * t640 + t1024 * t642;
t759 = -t886 - t887;
t556 = t1029 * t566 - t1033 * t759;
t557 = t1029 * t759 + t1033 * t566;
t490 = -t1030 * t556 + t1034 * t557;
t564 = t1021 * t642 + t1024 * t640;
t1096 = t1031 * t490 - t1035 * t564;
t717 = (qJD(6) + t969) * t891 + t1107;
t641 = -t1028 * t717 + t1032 * t1175;
t643 = -t1028 * t1175 - t1032 * t717;
t567 = -t1021 * t641 + t1024 * t643;
t806 = -t887 + t886;
t560 = t1029 * t567 + t1033 * t806;
t561 = -t1029 * t806 + t1033 * t567;
t494 = -t1030 * t560 + t1034 * t561;
t565 = -t1021 * t643 - t1024 * t641;
t1095 = t1031 * t494 + t1035 * t565;
t797 = -t968 - t886;
t692 = t1028 * t797 + t1179;
t693 = t1032 * t797 - t1181;
t615 = -t1021 * t692 + t1024 * t693;
t576 = t1029 * t615 - t1033 * t717;
t577 = t1029 * t717 + t1033 * t615;
t519 = -t1030 * t576 + t1034 * t577;
t614 = t1021 * t693 + t1024 * t692;
t1094 = t1031 * t519 - t1035 * t614;
t834 = -t887 - t968;
t711 = t1032 * t834 - t1152;
t712 = -t1028 * t834 - t1141;
t635 = -t1021 * t711 + t1024 * t712;
t580 = t1029 * t635 - t1033 * t1175;
t581 = t1029 * t1175 + t1033 * t635;
t524 = -t1030 * t580 + t1034 * t581;
t634 = t1021 * t712 + t1024 * t711;
t1093 = t1031 * t524 - t1035 * t634;
t845 = -t887 + t968;
t727 = t1032 * t845 + t1181;
t729 = -t1028 * t845 + t1179;
t652 = -t1021 * t727 + t1024 * t729;
t585 = t1029 * t652 + t1033 * t722;
t587 = -t1029 * t722 + t1033 * t652;
t530 = -t1030 * t585 + t1034 * t587;
t650 = -t1021 * t729 - t1024 * t727;
t1092 = t1031 * t530 + t1035 * t650;
t844 = t886 - t968;
t728 = t1028 * t844 + t1141;
t730 = t1032 * t844 - t1152;
t653 = -t1021 * t728 + t1024 * t730;
t586 = t1029 * t653 + t1033 * t718;
t588 = -t1029 * t718 + t1033 * t653;
t531 = -t1030 * t586 + t1034 * t588;
t651 = -t1021 * t730 - t1024 * t728;
t1091 = t1031 * t531 + t1035 * t651;
t757 = -qJD(6) * t891 - t1107;
t713 = t1032 * t757 + t1151 * t889;
t714 = -t1028 * t757 + t1140 * t889;
t638 = -t1021 * t713 + t1024 * t714;
t605 = t1029 * t638 + t1116;
t607 = t1033 * t638 - t1119;
t545 = -t1030 * t605 + t1034 * t607;
t636 = -t1021 * t714 - t1024 * t713;
t1090 = t1031 * t545 + t1035 * t636;
t715 = -t1028 * t1040 + t1140 * t891;
t716 = -t1032 * t1040 - t1151 * t891;
t639 = -t1021 * t715 + t1024 * t716;
t606 = t1029 * t639 - t1116;
t608 = t1033 * t639 + t1119;
t546 = -t1030 * t606 + t1034 * t608;
t637 = -t1021 * t716 - t1024 * t715;
t1089 = t1031 * t546 + t1035 * t637;
t579 = t1034 * t663 - t1147;
t1088 = t1031 * t579 - t1035 * t850;
t774 = (-t1028 * t889 - t1032 * t891) * t969;
t775 = (t1028 * t891 - t1032 * t889) * t969;
t690 = -t1021 * t774 + t1024 * t775;
t672 = t1029 * t690 - t1033 * t1043;
t673 = t1029 * t1043 + t1033 * t690;
t590 = -t1030 * t672 + t1034 * t673;
t689 = -t1021 * t775 - t1024 * t774;
t1087 = t1031 * t590 + t1035 * t689;
t821 = -t892 - t1164;
t746 = -t1021 * t825 - t1024 * t821;
t843 = t944 + t1170;
t694 = t1029 * t746 + t1033 * t843;
t695 = -t1029 * t843 + t1033 * t746;
t620 = -t1030 * t694 + t1034 * t695;
t744 = -t1021 * t821 + t1024 * t825;
t1086 = t1031 * t620 - t1035 * t744;
t864 = -t1169 - t1170;
t761 = t1024 * t864 - t1183;
t823 = t892 - t1164;
t702 = t1029 * t761 + t1033 * t823;
t703 = -t1029 * t823 + t1033 * t761;
t624 = -t1030 * t702 + t1034 * t703;
t760 = t1021 * t864 + t1182;
t1085 = t1031 * t624 - t1035 * t760;
t894 = -t944 - t1169;
t771 = -t1021 * t894 - t1155;
t705 = t1029 * t771 - t1033 * t824;
t706 = t1029 * t824 + t1033 * t771;
t631 = -t1030 * t705 + t1034 * t706;
t770 = t1024 * t894 - t1160;
t1084 = t1031 * t631 - t1035 * t770;
t747 = -t1021 * t824 + t1024 * t823;
t895 = -t944 + t1170;
t709 = t1029 * t747 + t1033 * t895;
t710 = -t1029 * t895 + t1033 * t747;
t633 = -t1030 * t709 + t1034 * t710;
t745 = -t1021 * t823 - t1024 * t824;
t1083 = t1031 * t633 + t1035 * t745;
t910 = -t944 + t1169;
t783 = -t1021 * t910 + t1182;
t723 = t1029 * t783 + t1033 * t825;
t725 = -t1029 * t825 + t1033 * t783;
t646 = -t1030 * t723 + t1034 * t725;
t781 = -t1024 * t910 - t1183;
t1082 = t1031 * t646 + t1035 * t781;
t909 = -t1169 + t1170;
t784 = t1024 * t909 - t1160;
t724 = t1029 * t784 + t1033 * t821;
t726 = -t1029 * t821 + t1033 * t784;
t647 = -t1030 * t724 + t1034 * t726;
t782 = -t1021 * t909 - t1155;
t1081 = t1031 * t647 + t1035 * t782;
t811 = -t1021 * t892 + t1154 * t945;
t766 = t1029 * t811 + t1115;
t768 = t1033 * t811 - t1118;
t684 = -t1030 * t766 + t1034 * t768;
t810 = -t1024 * t892 - t1159 * t945;
t1080 = t1031 * t684 + t1035 * t810;
t813 = t1024 * t893 - t1159 * t947;
t767 = t1029 * t813 - t1115;
t769 = t1033 * t813 + t1118;
t685 = -t1030 * t767 + t1034 * t769;
t812 = -t1021 * t893 - t1154 * t947;
t1079 = t1031 * t685 + t1035 * t812;
t836 = (t1021 * t947 - t1024 * t945) * t978;
t898 = t1033 * t901;
t789 = t1029 * t836 - t898;
t790 = t1033 * t836 + t1149;
t697 = -t1030 * t789 + t1034 * t790;
t835 = (t1021 * t945 + t1024 * t947) * t978;
t1078 = t1031 * t697 + t1035 * t835;
t871 = (qJD(4) + t1017) * t980 + t1106;
t791 = -t1029 * t871 + t1033 * t874;
t793 = -t1029 * t874 - t1033 * t871;
t700 = -t1030 * t791 + t1034 * t793;
t931 = -t977 + t1169;
t1077 = t1031 * t700 + t1035 * t931;
t875 = -t967 - t902;
t792 = -t1029 * t876 + t1033 * t875;
t794 = -t1029 * t875 - t1033 * t876;
t701 = -t1030 * t792 + t1034 * t794;
t904 = -t1169 - t977;
t1076 = t1031 * t701 - t1035 * t904;
t916 = -t1169 - t1167;
t846 = t1029 * t916 + t1178;
t847 = t1033 * t916 - t1180;
t773 = -t1030 * t846 + t1034 * t847;
t1075 = t1031 * t773 - t1035 * t871;
t1074 = t1031 * t787 - t1035 * t906;
t958 = -t977 - t1167;
t877 = t1033 * t958 - t1148;
t878 = -t1029 * t958 - t1138;
t796 = -t1030 * t877 + t1034 * t878;
t1073 = t1031 * t796 - t1035 * t874;
t965 = -t977 + t1167;
t881 = t1033 * t965 + t1180;
t883 = -t1029 * t965 + t1178;
t800 = -t1030 * t881 + t1034 * t883;
t1072 = t1031 * t800 + t1035 * t875;
t964 = t1169 - t1167;
t882 = t1029 * t964 + t1138;
t884 = t1033 * t964 - t1148;
t801 = -t1030 * t882 + t1034 * t884;
t1071 = t1031 * t801 + t1035 * t876;
t1070 = t1031 * t915 - t1035 * t914;
t986 = 0.2e1 * t1111 + t1123;
t935 = -t1030 * t986 + t948;
t993 = t1014 - t1129;
t1069 = t1031 * t935 + t1035 * t993;
t1036 = qJD(3) ^ 2;
t1002 = -t1014 - t1036;
t955 = t1002 * t1034 - t1145;
t1068 = t1031 * t955 + t1035 * t988;
t1000 = -t1036 - t1129;
t957 = -t1000 * t1030 - t1135;
t1067 = t1031 * t957 - t1035 * t986;
t1066 = t1031 * t989 + t1035 * t992;
t907 = (-t1029 * t978 - t1033 * t980) * t1017;
t908 = (t1029 * t980 - t1033 * t978) * t1017;
t833 = -t1030 * t907 + t1034 * t908;
t1065 = -t1016 * t1035 + t1031 * t833;
t984 = t1125 * t1132;
t1064 = -qJDD(3) * t1035 + t1031 * t984;
t858 = t1128 * t978 - t898;
t859 = t1127 * t978 + t1149;
t779 = -t1030 * t858 + t1034 * t859;
t1062 = t1031 * t779 + t1114;
t860 = t1029 * t902 + t1127 * t980;
t861 = t1033 * t902 - t1128 * t980;
t780 = -t1030 * t860 + t1034 * t861;
t1061 = t1031 * t780 - t1114;
t985 = t1034 * t995;
t999 = t1036 - t1129;
t956 = -t1030 * t999 + t985;
t1060 = -t1030 * t1120 + t1031 * t956;
t1001 = t1014 - t1036;
t954 = t1001 * t1034 - t1144;
t1059 = t1031 * t954 - t1034 * t1120;
t481 = -pkin(5) * t661 + pkin(10) * t484;
t422 = -pkin(10) * t1157 - qJ(5) * t453 - t1021 * t481;
t433 = -pkin(4) * t453 - pkin(5) * t483;
t402 = -pkin(3) * t453 + pkin(9) * t447 + t1029 * t422 + t1033 * t433;
t409 = -pkin(9) * t446 - t1029 * t433 + t1033 * t422;
t418 = t1030 * t447 + t1034 * t446;
t395 = -pkin(8) * t418 - t1030 * t402 + t1034 * t409;
t403 = -pkin(2) * t418 - pkin(3) * t446 + pkin(4) * t661 + pkin(10) * t1162 - qJ(5) * t454 - t1024 * t481;
t412 = t1031 * t453 + t1035 * t419;
t1057 = pkin(7) * t412 + t1031 * t395 + t1035 * t403;
t475 = -pkin(5) * t759 + pkin(10) * t642 + t484;
t478 = -pkin(10) * t640 - t483;
t434 = -qJ(5) * t564 - t1021 * t475 + t1024 * t478;
t526 = -pkin(4) * t564 - pkin(5) * t640;
t421 = -pkin(3) * t564 + pkin(9) * t557 + t1029 * t434 + t1033 * t526;
t425 = -pkin(9) * t556 - t1029 * t526 + t1033 * t434;
t489 = t1030 * t557 + t1034 * t556;
t411 = -pkin(8) * t489 - t1030 * t421 + t1034 * t425;
t420 = -pkin(2) * t489 - pkin(3) * t556 + pkin(4) * t759 - qJ(5) * t566 - t1021 * t478 - t1024 * t475;
t473 = t1031 * t564 + t1035 * t490;
t1056 = pkin(7) * t473 + t1031 * t411 + t1035 * t420;
t571 = -pkin(5) * t717 + pkin(10) * t693 - t1142;
t593 = -pkin(10) * t692 + t1153;
t492 = -qJ(5) * t614 - t1021 * t571 + t1024 * t593;
t495 = -pkin(4) * t614 - pkin(5) * t692 + t540;
t443 = -pkin(3) * t614 + pkin(9) * t577 + t1029 * t492 + t1033 * t495;
t452 = -pkin(9) * t576 - t1029 * t495 + t1033 * t492;
t518 = t1030 * t577 + t1034 * t576;
t414 = -pkin(8) * t518 - t1030 * t443 + t1034 * t452;
t455 = -pkin(2) * t518 - pkin(3) * t576 + pkin(4) * t717 - qJ(5) * t615 - t1021 * t593 - t1024 * t571;
t491 = t1031 * t614 + t1035 * t519;
t1055 = pkin(7) * t491 + t1031 * t414 + t1035 * t455;
t574 = -pkin(5) * t1175 + pkin(10) * t712 + t1153;
t598 = -pkin(10) * t711 + t1142;
t500 = -qJ(5) * t634 - t1021 * t574 + t1024 * t598;
t501 = -pkin(4) * t634 - pkin(5) * t711 + t541;
t451 = -pkin(3) * t634 + pkin(9) * t581 + t1029 * t500 + t1033 * t501;
t457 = -pkin(9) * t580 - t1029 * t501 + t1033 * t500;
t523 = t1030 * t581 + t1034 * t580;
t417 = -pkin(8) * t523 - t1030 * t451 + t1034 * t457;
t458 = -pkin(2) * t523 - pkin(3) * t580 + pkin(4) * t1175 - qJ(5) * t635 - t1021 * t598 - t1024 * t574;
t502 = t1031 * t634 + t1035 * t524;
t1054 = pkin(7) * t502 + t1031 * t417 + t1035 * t458;
t460 = pkin(9) * t550 + (-qJ(5) * t1029 + t1113) * t568;
t477 = -pkin(9) * t549 + (-qJ(5) * t1033 + t1165) * t568;
t487 = t1030 * t550 + t1034 * t549;
t427 = -pkin(8) * t487 - t1030 * t460 + t1034 * t477;
t456 = -pkin(2) * t487 - pkin(3) * t549 + pkin(4) * t707 - qJ(5) * t569;
t469 = t1031 * t568 + t1035 * t488;
t1053 = pkin(7) * t469 + t1031 * t427 + t1035 * t456;
t555 = -qJ(5) * t744 - t568;
t510 = pkin(9) * t695 + t1029 * t555 + t1113 * t744;
t521 = -pkin(9) * t694 + t1033 * t555 + t1165 * t744;
t619 = t1030 * t695 + t1034 * t694;
t462 = -pkin(8) * t619 - t1030 * t510 + t1034 * t521;
t499 = -pkin(2) * t619 - pkin(3) * t694 - pkin(4) * t843 - qJ(5) * t746 - t569;
t582 = t1031 * t744 + t1035 * t620;
t1052 = pkin(7) * t582 + t1031 * t462 + t1035 * t499;
t599 = -pkin(4) * t760 + t648;
t656 = -qJ(5) * t760 + t1161;
t525 = -pkin(3) * t760 + pkin(9) * t703 + t1029 * t656 + t1033 * t599;
t534 = -pkin(9) * t702 - t1029 * t599 + t1033 * t656;
t623 = t1030 * t703 + t1034 * t702;
t472 = -pkin(8) * t623 - t1030 * t525 + t1034 * t534;
t537 = -pkin(2) * t623 - pkin(3) * t702 - pkin(4) * t823 - qJ(5) * t761 + t1156;
t592 = t1031 * t760 + t1035 * t624;
t1051 = pkin(7) * t592 + t1031 * t472 + t1035 * t537;
t601 = -pkin(4) * t770 + t649;
t660 = -qJ(5) * t770 + t1156;
t527 = -pkin(3) * t770 + pkin(9) * t706 + t1029 * t660 + t1033 * t601;
t538 = -pkin(9) * t705 - t1029 * t601 + t1033 * t660;
t630 = t1030 * t706 + t1034 * t705;
t474 = -pkin(8) * t630 - t1030 * t527 + t1034 * t538;
t542 = -pkin(2) * t630 - pkin(3) * t705 + pkin(4) * t824 - qJ(5) * t771 - t1161;
t596 = t1031 * t770 + t1035 * t631;
t1050 = pkin(7) * t596 + t1031 * t474 + t1035 * t542;
t578 = t1030 * t663 + t1137;
t654 = -pkin(3) * t850 + pkin(9) * t663;
t520 = -pkin(8) * t578 - pkin(9) * t1137 - t1030 * t654;
t552 = -pkin(2) * t578 - pkin(3) * t662;
t575 = t1031 * t850 + t1035 * t579;
t1049 = pkin(7) * t575 + t1031 * t520 + t1035 * t552;
t618 = -pkin(3) * t904 + pkin(9) * t794 + t663;
t628 = -pkin(9) * t792 - t662;
t699 = t1030 * t794 + t1034 * t792;
t533 = -pkin(8) * t699 - t1030 * t618 + t1034 * t628;
t664 = -pkin(2) * t699 - pkin(3) * t792;
t686 = t1031 * t904 + t1035 * t701;
t1048 = pkin(7) * t686 + t1031 * t533 + t1035 * t664;
t734 = -pkin(3) * t871 + pkin(9) * t847 - t1139;
t772 = t1030 * t847 + t1034 * t846;
t776 = -pkin(9) * t846 + t1150;
t629 = -pkin(8) * t772 - t1030 * t734 + t1034 * t776;
t659 = -pkin(2) * t772 - pkin(3) * t846 + t740;
t732 = t1031 * t871 + t1035 * t773;
t1047 = pkin(7) * t732 + t1031 * t629 + t1035 * t659;
t737 = -pkin(3) * t874 + pkin(9) * t878 + t1150;
t788 = -pkin(9) * t877 + t1139;
t795 = t1030 * t878 + t1034 * t877;
t655 = -pkin(8) * t795 - t1030 * t737 + t1034 * t788;
t665 = -pkin(2) * t795 - pkin(3) * t877 + t741;
t742 = t1031 * t874 + t1035 * t796;
t1046 = pkin(7) * t742 + t1031 * t655 + t1035 * t665;
t951 = t1002 * t1030 + t985;
t830 = -pkin(2) * t951 + t862;
t856 = -pkin(8) * t951 + t1146;
t911 = -t1031 * t988 + t1035 * t955;
t1045 = pkin(7) * t911 + t1031 * t856 + t1035 * t830;
t953 = t1000 * t1034 - t1144;
t831 = -pkin(2) * t953 + t863;
t857 = -pkin(8) * t953 + t1136;
t912 = t1031 * t986 + t1035 * t957;
t1044 = pkin(7) * t912 + t1031 * t857 + t1035 * t831;
t960 = -t1019 * t1132 + t1030 * t1058;
t1042 = t1031 * t960 - t1104;
t961 = -t1018 * t1132 + t1034 * t987;
t1041 = t1031 * t961 + t1104;
t753 = t1031 * t906 + t1035 * t787;
t1039 = pkin(7) * t753 + (-pkin(2) * t1035 - pkin(8) * t1031) * t785;
t973 = t990 * t1026;
t971 = t990 * t1023;
t970 = t1063 * t1023;
t962 = qJDD(3) * t1031 + t1035 * t984;
t952 = t1034 * t999 + t1145;
t950 = t1001 * t1030 + t1135;
t949 = (t987 + t1111) * t1030;
t941 = t1064 * t1026;
t934 = t1030 * t988 + t1034 * t986;
t930 = t1066 * t1026;
t929 = t1066 * t1023;
t928 = -t1022 * t973 - t1025 * t1063;
t926 = -t1022 * t1063 + t1025 * t973;
t920 = t1035 * t961 - t1105;
t919 = t1035 * t960 + t1105;
t918 = t1030 * t1122 + t1035 * t956;
t917 = t1031 * t1121 + t1035 * t954;
t903 = -t1031 * t993 + t1035 * t935;
t880 = -t1134 + (t1023 * t970 + t1026 * t972) * pkin(7);
t879 = -t1143 + (-t1023 * t971 - t1026 * t973) * pkin(7);
t870 = -t1022 * t930 + t1025 * t940;
t869 = t1022 * t940 + t1025 * t930;
t868 = -t1023 * t949 + t1026 * t1041;
t867 = -t1023 * t948 + t1026 * t1042;
t866 = -t1023 * t952 + t1026 * t1060;
t865 = -t1023 * t950 + t1026 * t1059;
t854 = -t1023 * t953 + t1026 * t1067;
t853 = -t1023 * t951 + t1026 * t1068;
t852 = t1023 * t1067 + t1026 * t953;
t851 = t1023 * t1068 + t1026 * t951;
t840 = -t1023 * t934 + t1026 * t1069;
t839 = pkin(2) * t988 + pkin(8) * t955 - t1136;
t838 = -pkin(2) * t986 + pkin(8) * t957 + t1146;
t837 = t842 * t1026;
t832 = t1030 * t908 + t1034 * t907;
t820 = -pkin(1) * t971 + t1023 * t914 + t1026 * t1101;
t819 = pkin(1) * t970 + t1023 * t915 + t1026 * t1102;
t814 = t1016 * t1031 + t1035 * t833;
t809 = t1023 * t963 + t1026 * t1070;
t808 = t1023 * t1070 - t1026 * t963;
t805 = -t1022 * t854 + t1025 * t912;
t804 = -t1022 * t853 + t1025 * t911;
t803 = t1022 * t912 + t1025 * t854;
t802 = t1022 * t911 + t1025 * t853;
t799 = t1030 * t884 + t1034 * t882;
t798 = t1030 * t883 + t1034 * t881;
t778 = t1030 * t861 + t1034 * t860;
t777 = t1030 * t859 + t1034 * t858;
t762 = pkin(2) * t992 + pkin(8) * t989 + t787;
t756 = t1035 * t780 + t1117;
t755 = t1035 * t779 - t1117;
t754 = -pkin(2) * t906 + pkin(8) * t787;
t752 = -pkin(1) * t808 + t1026 * t1166;
t751 = -t1031 * t876 + t1035 * t801;
t750 = -t1031 * t875 + t1035 * t800;
t749 = -t1022 * t809 + t1025 * t842;
t748 = t1022 * t842 + t1025 * t809;
t743 = -t1023 * t832 + t1026 * t1065;
t733 = -t1035 * t785 + (-t1023 * t929 - t1026 * t930) * pkin(7);
t731 = (-t1023 * t808 - t1026 * t809) * pkin(7);
t698 = t1030 * t793 + t1034 * t791;
t696 = t1030 * t790 + t1034 * t789;
t691 = -t1031 * t931 + t1035 * t700;
t688 = -t1031 * t831 + t1035 * t857 + (-t1023 * t852 - t1026 * t854) * pkin(7);
t687 = -t1031 * t830 + t1035 * t856 + (-t1023 * t851 - t1026 * t853) * pkin(7);
t683 = t1030 * t769 + t1034 * t767;
t682 = t1030 * t768 + t1034 * t766;
t681 = -t1023 * t799 + t1026 * t1071;
t680 = -t1023 * t798 + t1026 * t1072;
t679 = -t1023 * t778 + t1026 * t1061;
t678 = -t1023 * t777 + t1026 * t1062;
t677 = -t1023 * t795 + t1026 * t1073;
t676 = t1023 * t1073 + t1026 * t795;
t675 = -t1023 * t785 + t1026 * t1074;
t674 = t1023 * t1074 + t1026 * t785;
t671 = -t1031 * t835 + t1035 * t697;
t670 = -pkin(1) * t852 - t1023 * t838 + t1026 * t1044;
t669 = -pkin(1) * t851 - t1023 * t839 + t1026 * t1045;
t668 = -pkin(1) * t929 - t1023 * t762 + t1026 * t1103;
t667 = -t1023 * t772 + t1026 * t1075;
t666 = t1023 * t1075 + t1026 * t772;
t658 = -t1031 * t812 + t1035 * t685;
t657 = -t1031 * t810 + t1035 * t684;
t645 = t1030 * t726 + t1034 * t724;
t644 = t1030 * t725 + t1034 * t723;
t632 = t1030 * t710 + t1034 * t709;
t627 = -t1022 * t675 + t1025 * t753;
t626 = t1022 * t753 + t1025 * t675;
t625 = -pkin(2) * t874 + pkin(8) * t796 + t1030 * t788 + t1034 * t737;
t622 = -t1022 * t677 + t1025 * t742;
t621 = t1022 * t742 + t1025 * t677;
t617 = -t1023 * t698 + t1026 * t1077;
t616 = -pkin(2) * t871 + pkin(8) * t773 + t1030 * t776 + t1034 * t734;
t613 = -t1023 * t699 + t1026 * t1076;
t612 = t1023 * t1076 + t1026 * t699;
t611 = -t1022 * t667 + t1025 * t732;
t610 = t1022 * t732 + t1025 * t667;
t603 = -t1031 * t782 + t1035 * t647;
t602 = -t1031 * t781 + t1035 * t646;
t600 = -t1023 * t696 + t1026 * t1078;
t591 = -t1031 * t745 + t1035 * t633;
t589 = t1030 * t673 + t1034 * t672;
t584 = -t1023 * t683 + t1026 * t1079;
t583 = -t1023 * t682 + t1026 * t1080;
t573 = -t1022 * t613 + t1025 * t686;
t572 = t1022 * t686 + t1025 * t613;
t570 = (pkin(2) * t1031 - pkin(8) * t1035) * t785 + (-t1023 * t674 - t1026 * t675) * pkin(7);
t563 = -pkin(1) * t674 - t1023 * t754 + t1026 * t1039;
t562 = -t1031 * t689 + t1035 * t590;
t559 = -t1023 * t645 + t1026 * t1081;
t558 = -t1023 * t644 + t1026 * t1082;
t554 = -t1023 * t630 + t1026 * t1084;
t553 = t1023 * t1084 + t1026 * t630;
t551 = -t1023 * t632 + t1026 * t1083;
t548 = -t1023 * t623 + t1026 * t1085;
t547 = t1023 * t1085 + t1026 * t623;
t544 = t1030 * t608 + t1034 * t606;
t543 = t1030 * t607 + t1034 * t605;
t536 = -t1023 * t619 + t1026 * t1086;
t535 = t1023 * t1086 + t1026 * t619;
t532 = -pkin(2) * t904 + pkin(8) * t701 + t1030 * t628 + t1034 * t618;
t529 = t1030 * t588 + t1034 * t586;
t528 = t1030 * t587 + t1034 * t585;
t522 = -t1031 * t665 + t1035 * t655 + (-t1023 * t676 - t1026 * t677) * pkin(7);
t517 = -t1023 * t578 + t1026 * t1088;
t516 = t1023 * t1088 + t1026 * t578;
t515 = -t1031 * t659 + t1035 * t629 + (-t1023 * t666 - t1026 * t667) * pkin(7);
t514 = -t1023 * t589 + t1026 * t1087;
t513 = -pkin(2) * t850 + pkin(8) * t579 - pkin(9) * t1147 + t1034 * t654;
t512 = -t1031 * t637 + t1035 * t546;
t511 = -t1031 * t636 + t1035 * t545;
t509 = -t1022 * t554 + t1025 * t596;
t508 = t1022 * t596 + t1025 * t554;
t507 = -pkin(1) * t676 - t1023 * t625 + t1026 * t1046;
t506 = -t1031 * t651 + t1035 * t531;
t505 = -t1031 * t650 + t1035 * t530;
t504 = -t1022 * t548 + t1025 * t592;
t503 = t1022 * t592 + t1025 * t548;
t498 = -t1022 * t536 + t1025 * t582;
t497 = t1022 * t582 + t1025 * t536;
t496 = -pkin(1) * t666 - t1023 * t616 + t1026 * t1047;
t493 = t1030 * t561 + t1034 * t560;
t486 = -t1022 * t517 + t1025 * t575;
t485 = t1022 * t575 + t1025 * t517;
t482 = -t1031 * t664 + t1035 * t533 + (-t1023 * t612 - t1026 * t613) * pkin(7);
t480 = -t1023 * t544 + t1026 * t1089;
t479 = -t1023 * t543 + t1026 * t1090;
t476 = -t1031 * t565 + t1035 * t494;
t471 = -t1023 * t529 + t1026 * t1091;
t470 = -t1023 * t528 + t1026 * t1092;
t468 = -pkin(2) * t770 + pkin(8) * t631 + t1030 * t538 + t1034 * t527;
t467 = -pkin(2) * t760 + pkin(8) * t624 + t1030 * t534 + t1034 * t525;
t466 = -t1023 * t523 + t1026 * t1093;
t465 = t1023 * t1093 + t1026 * t523;
t464 = -t1023 * t518 + t1026 * t1094;
t463 = t1023 * t1094 + t1026 * t518;
t461 = -pkin(1) * t612 - t1023 * t532 + t1026 * t1048;
t459 = -pkin(2) * t744 + pkin(8) * t620 + t1030 * t521 + t1034 * t510;
t450 = -t1023 * t493 + t1026 * t1095;
t449 = -t1022 * t466 + t1025 * t502;
t448 = t1022 * t502 + t1025 * t466;
t445 = -t1023 * t489 + t1026 * t1096;
t444 = t1023 * t1096 + t1026 * t489;
t442 = -t1023 * t487 + t1026 * t1097;
t441 = t1023 * t1097 + t1026 * t487;
t440 = -t1022 * t464 + t1025 * t491;
t439 = t1022 * t491 + t1025 * t464;
t438 = -t1031 * t552 + t1035 * t520 + (-t1023 * t516 - t1026 * t517) * pkin(7);
t437 = -t1031 * t542 + t1035 * t474 + (-t1023 * t553 - t1026 * t554) * pkin(7);
t436 = -t1031 * t537 + t1035 * t472 + (-t1023 * t547 - t1026 * t548) * pkin(7);
t435 = -pkin(1) * t516 - t1023 * t513 + t1026 * t1049;
t432 = -t1031 * t499 + t1035 * t462 + (-t1023 * t535 - t1026 * t536) * pkin(7);
t431 = -t1022 * t445 + t1025 * t473;
t430 = t1022 * t473 + t1025 * t445;
t429 = -t1022 * t442 + t1025 * t469;
t428 = t1022 * t469 + t1025 * t442;
t426 = -pkin(1) * t553 - t1023 * t468 + t1026 * t1050;
t424 = -pkin(1) * t547 - t1023 * t467 + t1026 * t1051;
t423 = -pkin(2) * t568 + pkin(8) * t488 + t1030 * t477 + t1034 * t460;
t416 = -pkin(2) * t634 + pkin(8) * t524 + t1030 * t457 + t1034 * t451;
t415 = -pkin(1) * t535 - t1023 * t459 + t1026 * t1052;
t413 = -pkin(2) * t614 + pkin(8) * t519 + t1030 * t452 + t1034 * t443;
t410 = -t1031 * t458 + t1035 * t417 + (-t1023 * t465 - t1026 * t466) * pkin(7);
t408 = -pkin(2) * t564 + pkin(8) * t490 + t1030 * t425 + t1034 * t421;
t407 = -t1031 * t455 + t1035 * t414 + (-t1023 * t463 - t1026 * t464) * pkin(7);
t406 = -t1031 * t456 + t1035 * t427 + (-t1023 * t441 - t1026 * t442) * pkin(7);
t405 = -t1023 * t418 + t1026 * t1098;
t404 = t1023 * t1098 + t1026 * t418;
t401 = -pkin(1) * t465 - t1023 * t416 + t1026 * t1054;
t400 = -pkin(1) * t441 - t1023 * t423 + t1026 * t1053;
t399 = -pkin(1) * t463 - t1023 * t413 + t1026 * t1055;
t398 = -t1022 * t405 + t1025 * t412;
t397 = t1022 * t412 + t1025 * t405;
t396 = -t1031 * t420 + t1035 * t411 + (-t1023 * t444 - t1026 * t445) * pkin(7);
t394 = -pkin(1) * t444 - t1023 * t408 + t1026 * t1056;
t393 = -pkin(2) * t453 + pkin(8) * t419 + t1030 * t409 + t1034 * t402;
t392 = -t1031 * t403 + t1035 * t395 + (-t1023 * t404 - t1026 * t405) * pkin(7);
t391 = -pkin(1) * t404 - t1023 * t393 + t1026 * t1057;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t943, 0, 0, 0, 0, 0, 0, t928, t927, 0, t749, 0, 0, 0, 0, 0, 0, t804, t805, t870, t627, 0, 0, 0, 0, 0, 0, t611, t622, t573, t486, 0, 0, 0, 0, 0, 0, t504, t509, t498, t429, 0, 0, 0, 0, 0, 0, t440, t449, t431, t398; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t942, 0, 0, 0, 0, 0, 0, t926, -t1099, 0, t748, 0, 0, 0, 0, 0, 0, t802, t803, t869, t626, 0, 0, 0, 0, 0, 0, t610, t621, t572, t485, 0, 0, 0, 0, 0, 0, t503, t508, t497, t428, 0, 0, 0, 0, 0, 0, t439, t448, t430, t397; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1163, 0, 0, 0, 0, 0, 0, t971, -t970, 0, t808, 0, 0, 0, 0, 0, 0, t851, t852, t929, t674, 0, 0, 0, 0, 0, 0, t666, t676, t612, t516, 0, 0, 0, 0, 0, 0, t547, t553, t535, t441, 0, 0, 0, 0, 0, 0, t463, t465, t444, t404; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1172, -t1171, -t942, -qJ(1) * t942, 0, 0, -t927, 0, t928, t1022 * t1124, -qJ(1) * t926 - t1022 * t820 + t1025 * t879, qJ(1) * t1099 - t1022 * t819 + t1025 * t880, -t1022 * t837 - t1025 * t1070, -qJ(1) * t748 - t1022 * t752 + t1025 * t731, -t1022 * t868 + t1025 * t920, -t1022 * t840 + t1025 * t903, -t1022 * t866 + t1025 * t918, -t1022 * t867 + t1025 * t919, -t1022 * t865 + t1025 * t917, -t1022 * t941 + t1025 * t962, -qJ(1) * t802 - t1022 * t669 + t1025 * t687, -qJ(1) * t803 - t1022 * t670 + t1025 * t688, -qJ(1) * t869 - t1022 * t668 + t1025 * t733, -qJ(1) * t626 - t1022 * t563 + t1025 * t570, -t1022 * t679 + t1025 * t756, -t1022 * t617 + t1025 * t691, -t1022 * t680 + t1025 * t750, -t1022 * t678 + t1025 * t755, -t1022 * t681 + t1025 * t751, -t1022 * t743 + t1025 * t814, -qJ(1) * t610 - t1022 * t496 + t1025 * t515, -qJ(1) * t621 - t1022 * t507 + t1025 * t522, -qJ(1) * t572 - t1022 * t461 + t1025 * t482, -qJ(1) * t485 - t1022 * t435 + t1025 * t438, -t1022 * t584 + t1025 * t658, -t1022 * t551 + t1025 * t591, -t1022 * t558 + t1025 * t602, -t1022 * t583 + t1025 * t657, -t1022 * t559 + t1025 * t603, -t1022 * t600 + t1025 * t671, -qJ(1) * t503 - t1022 * t424 + t1025 * t436, -qJ(1) * t508 - t1022 * t426 + t1025 * t437, -qJ(1) * t497 - t1022 * t415 + t1025 * t432, -qJ(1) * t428 - t1022 * t400 + t1025 * t406, -t1022 * t480 + t1025 * t512, -t1022 * t450 + t1025 * t476, -t1022 * t470 + t1025 * t505, -t1022 * t479 + t1025 * t511, -t1022 * t471 + t1025 * t506, -t1022 * t514 + t1025 * t562, -qJ(1) * t439 - t1022 * t399 + t1025 * t407, -qJ(1) * t448 - t1022 * t401 + t1025 * t410, -qJ(1) * t430 - t1022 * t394 + t1025 * t396, -qJ(1) * t397 - t1022 * t391 + t1025 * t392; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1171, -t1172, t943, qJ(1) * t943, 0, 0, t1099, 0, t926, -t1025 * t1124, qJ(1) * t928 + t1022 * t879 + t1025 * t820, qJ(1) * t927 + t1022 * t880 + t1025 * t819, -t1022 * t1070 + t1025 * t837, qJ(1) * t749 + t1022 * t731 + t1025 * t752, t1022 * t920 + t1025 * t868, t1022 * t903 + t1025 * t840, t1022 * t918 + t1025 * t866, t1022 * t919 + t1025 * t867, t1022 * t917 + t1025 * t865, t1022 * t962 + t1025 * t941, qJ(1) * t804 + t1022 * t687 + t1025 * t669, qJ(1) * t805 + t1022 * t688 + t1025 * t670, qJ(1) * t870 + t1022 * t733 + t1025 * t668, qJ(1) * t627 + t1022 * t570 + t1025 * t563, t1022 * t756 + t1025 * t679, t1022 * t691 + t1025 * t617, t1022 * t750 + t1025 * t680, t1022 * t755 + t1025 * t678, t1022 * t751 + t1025 * t681, t1022 * t814 + t1025 * t743, qJ(1) * t611 + t1022 * t515 + t1025 * t496, qJ(1) * t622 + t1022 * t522 + t1025 * t507, qJ(1) * t573 + t1022 * t482 + t1025 * t461, qJ(1) * t486 + t1022 * t438 + t1025 * t435, t1022 * t658 + t1025 * t584, t1022 * t591 + t1025 * t551, t1022 * t602 + t1025 * t558, t1022 * t657 + t1025 * t583, t1022 * t603 + t1025 * t559, t1022 * t671 + t1025 * t600, qJ(1) * t504 + t1022 * t436 + t1025 * t424, qJ(1) * t509 + t1022 * t437 + t1025 * t426, qJ(1) * t498 + t1022 * t432 + t1025 * t415, qJ(1) * t429 + t1022 * t406 + t1025 * t400, t1022 * t512 + t1025 * t480, t1022 * t476 + t1025 * t450, t1022 * t505 + t1025 * t470, t1022 * t511 + t1025 * t479, t1022 * t506 + t1025 * t471, t1022 * t562 + t1025 * t514, qJ(1) * t440 + t1022 * t407 + t1025 * t399, qJ(1) * t449 + t1022 * t410 + t1025 * t401, qJ(1) * t431 + t1022 * t396 + t1025 * t394, qJ(1) * t398 + t1022 * t392 + t1025 * t391; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1110, t994, 0, 0, 0, 0, t970, 0, t971, t1026 * qJDD(2), pkin(1) * t973 + t1023 * t1101 - t1026 * t914, -pkin(1) * t972 + t1023 * t1102 - t1026 * t915, t842 * t1023, pkin(1) * t809 + t1023 * t1166, t1023 * t1041 + t1026 * t949, t1023 * t1069 + t1026 * t934, t1023 * t1060 + t1026 * t952, t1023 * t1042 + t1026 * t948, t1023 * t1059 + t1026 * t950, t1064 * t1023, pkin(1) * t853 + t1023 * t1045 + t1026 * t839, pkin(1) * t854 + t1023 * t1044 + t1026 * t838, pkin(1) * t930 + t1023 * t1103 + t1026 * t762, pkin(1) * t675 + t1023 * t1039 + t1026 * t754, t1023 * t1061 + t1026 * t778, t1023 * t1077 + t1026 * t698, t1023 * t1072 + t1026 * t798, t1023 * t1062 + t1026 * t777, t1023 * t1071 + t1026 * t799, t1023 * t1065 + t1026 * t832, pkin(1) * t667 + t1023 * t1047 + t1026 * t616, pkin(1) * t677 + t1023 * t1046 + t1026 * t625, pkin(1) * t613 + t1023 * t1048 + t1026 * t532, pkin(1) * t517 + t1023 * t1049 + t1026 * t513, t1023 * t1079 + t1026 * t683, t1023 * t1083 + t1026 * t632, t1023 * t1082 + t1026 * t644, t1023 * t1080 + t1026 * t682, t1023 * t1081 + t1026 * t645, t1023 * t1078 + t1026 * t696, pkin(1) * t548 + t1023 * t1051 + t1026 * t467, pkin(1) * t554 + t1023 * t1050 + t1026 * t468, pkin(1) * t536 + t1023 * t1052 + t1026 * t459, pkin(1) * t442 + t1023 * t1053 + t1026 * t423, t1023 * t1089 + t1026 * t544, t1023 * t1095 + t1026 * t493, t1023 * t1092 + t1026 * t528, t1023 * t1090 + t1026 * t543, t1023 * t1091 + t1026 * t529, t1023 * t1087 + t1026 * t589, pkin(1) * t464 + t1023 * t1055 + t1026 * t413, pkin(1) * t466 + t1023 * t1054 + t1026 * t416, pkin(1) * t445 + t1023 * t1056 + t1026 * t408, pkin(1) * t405 + t1023 * t1057 + t1026 * t393;];
tauB_reg  = t1;
