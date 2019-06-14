% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRRRPR3
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d4,d6,theta1]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 07:33
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRRRPR3_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRPR3_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRPR3_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRRPR3_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRRPR3_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRRPR3_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 07:31:09
% EndTime: 2019-05-05 07:31:55
% DurationCPUTime: 48.86s
% Computational Cost: add. (129760->900), mult. (263227->1412), div. (0->0), fcn. (190841->12), ass. (0->657)
t945 = sin(qJ(3));
t1056 = qJD(2) * t945;
t944 = sin(qJ(4));
t948 = cos(qJ(4));
t949 = cos(qJ(3));
t892 = -t948 * t949 * qJD(2) + t1056 * t944;
t894 = (t944 * t949 + t945 * t948) * qJD(2);
t1075 = t894 * t892;
t934 = qJDD(3) + qJDD(4);
t1144 = t934 - t1075;
t1165 = t1144 * t944;
t1103 = t894 ^ 2;
t935 = qJD(3) + qJD(4);
t933 = t935 ^ 2;
t873 = -t933 + t1103;
t781 = t873 * t948 - t1165;
t1164 = t1144 * t948;
t784 = t873 * t944 + t1164;
t686 = t781 * t949 - t784 * t945;
t939 = sin(pkin(6));
t1193 = t686 * t939;
t941 = cos(pkin(6));
t1192 = t686 * t941;
t689 = t781 * t945 + t784 * t949;
t946 = sin(qJ(2));
t1191 = t689 * t946;
t950 = cos(qJ(2));
t1190 = t689 * t950;
t1145 = t1075 + t934;
t1163 = t1145 * t944;
t861 = t1103 + t933;
t773 = t861 * t948 + t1163;
t1162 = t1145 * t948;
t775 = -t861 * t944 + t1162;
t676 = t773 * t949 + t775 * t945;
t1189 = pkin(8) * t676;
t679 = t773 * t945 - t775 * t949;
t1188 = pkin(8) * t679;
t1187 = t676 * t939;
t1186 = t676 * t941;
t1185 = t679 * t946;
t1184 = t679 * t950;
t1104 = t892 ^ 2;
t872 = t933 - t1104;
t782 = -t872 * t944 + t1162;
t787 = t872 * t948 + t1163;
t687 = t782 * t949 - t787 * t945;
t1183 = t687 * t939;
t1182 = t687 * t941;
t692 = t782 * t945 + t787 * t949;
t1181 = t692 * t946;
t1180 = t692 * t950;
t1179 = -pkin(2) * t676 - pkin(3) * t773;
t1177 = pkin(9) * t773;
t1176 = pkin(9) * t775;
t818 = -t933 - t1104;
t734 = t818 * t944 + t1164;
t737 = -t818 * t948 + t1165;
t645 = t734 * t949 - t737 * t945;
t1175 = pkin(8) * t645;
t648 = t734 * t945 + t737 * t949;
t1174 = pkin(8) * t648;
t1173 = t645 * t939;
t1172 = t645 * t941;
t1171 = t648 * t946;
t1170 = t648 * t950;
t1169 = -pkin(2) * t645 - pkin(3) * t734;
t1167 = pkin(9) * t734;
t1166 = pkin(9) * t737;
t978 = (-t892 * t944 - t894 * t948) * t935;
t979 = (-t892 * t948 + t894 * t944) * t935;
t1110 = -t945 * t978 + t949 * t979;
t1161 = t1110 * t946 - t934 * t950;
t1044 = t946 * t1075;
t1068 = t935 * t944;
t1053 = qJD(2) * qJD(3);
t1040 = t949 * t1053;
t1051 = qJDD(2) * t945;
t902 = t1040 + t1051;
t1041 = t945 * t1053;
t1049 = qJDD(2) * t949;
t977 = t1041 - t1049;
t957 = t948 * t902 - t944 * t977;
t802 = -t892 * qJD(4) + t957;
t1028 = -t1068 * t894 + t948 * t802;
t1067 = t935 * t948;
t1030 = t1067 * t894 + t944 * t802;
t1107 = t1028 * t949 - t1030 * t945;
t1122 = t1107 * t950 + t1044;
t1106 = t1028 * t945 + t1030 * t949;
t1043 = t950 * t1075;
t1124 = t1107 * t946 - t1043;
t1140 = -t1106 * t939 + t1124 * t941;
t938 = sin(pkin(11));
t940 = cos(pkin(11));
t1160 = t1122 * t940 - t1140 * t938;
t1159 = t1122 * t938 + t1140 * t940;
t1033 = t902 * t944 + t948 * t977;
t801 = qJD(4) * t894 + t1033;
t1029 = t1068 * t892 - t948 * t801;
t983 = t1067 * t892 + t801 * t944;
t1108 = -t1029 * t945 + t949 * t983;
t1121 = t1108 * t950 - t1044;
t1109 = t1029 * t949 + t945 * t983;
t1123 = t1108 * t946 + t1043;
t1142 = -t1109 * t939 + t1123 * t941;
t1158 = t1121 * t940 - t1142 * t938;
t1157 = t1121 * t938 + t1142 * t940;
t1143 = t1109 * t941 + t1123 * t939;
t1141 = t1106 * t941 + t1124 * t939;
t1111 = t945 * t979 + t949 * t978;
t1119 = -t1111 * t939 + t1161 * t941;
t1120 = t1110 * t950 + t934 * t946;
t1139 = t1119 * t940 + t1120 * t938;
t1138 = -t1119 * t938 + t1120 * t940;
t1112 = -t1104 - t1103;
t1137 = pkin(2) * t1112;
t1136 = pkin(3) * t1112;
t876 = t935 * t892;
t1116 = -t876 + t802;
t1131 = t1112 * t946;
t1130 = t1112 * t950;
t1113 = -t1103 + t1104;
t1129 = t1113 * t946;
t1128 = t1113 * t950;
t943 = sin(qJ(6));
t947 = cos(qJ(6));
t848 = -t947 * t892 + t935 * t943;
t850 = t892 * t943 + t935 * t947;
t789 = t850 * t848;
t797 = qJDD(6) + t802;
t1117 = -t789 + t797;
t1127 = t1117 * t943;
t1126 = t1117 * t947;
t1038 = g(1) * t938 - t940 * g(2);
t1057 = g(3) - qJDD(1);
t1125 = t941 * t1038 - t939 * t1057;
t1118 = t1111 * t941 + t1161 * t939;
t772 = -t876 - t802;
t1115 = t938 * t1057;
t1114 = t940 * t1057;
t911 = g(1) * t940 + g(2) * t938;
t846 = -t1038 * t938 - t940 * t911;
t817 = t1125 * t946 - t950 * t911;
t952 = qJD(2) ^ 2;
t807 = -t952 * pkin(2) + qJDD(2) * pkin(8) + t817;
t869 = t1038 * t939 + t1057 * t941;
t754 = t807 * t945 + t949 * t869;
t920 = t945 * t952 * t949;
t912 = qJDD(3) + t920;
t711 = (-t902 + t1040) * pkin(9) + t912 * pkin(3) - t754;
t755 = t949 * t807 - t945 * t869;
t915 = qJD(3) * pkin(3) - pkin(9) * t1056;
t1102 = t949 ^ 2;
t931 = t1102 * t952;
t712 = -pkin(3) * t931 - pkin(9) * t977 - qJD(3) * t915 + t755;
t617 = -t948 * t711 + t944 * t712;
t829 = pkin(4) * t892 - qJ(5) * t894;
t982 = -t934 * pkin(4) - t933 * qJ(5) + t894 * t829 + qJDD(5) + t617;
t553 = -pkin(5) * t772 - pkin(10) * t1144 + t982;
t1101 = -2 * qJD(5);
t1037 = pkin(4) * t935 + t1101;
t865 = pkin(5) * t894 - pkin(10) * t935;
t816 = -t1125 * t950 - t911 * t946;
t806 = -qJDD(2) * pkin(2) - t952 * pkin(8) + t816;
t738 = t977 * pkin(3) - pkin(9) * t931 + t1056 * t915 + t806;
t956 = t801 * pkin(4) - qJ(5) * t1116 + t738;
t576 = t956 + (t1037 - t865) * t894 - pkin(5) * t1104 + pkin(10) * t801;
t1035 = t553 * t947 - t943 * t576;
t487 = t553 * t943 + t576 * t947;
t448 = -t1035 * t943 + t947 * t487;
t447 = t1035 * t947 + t943 * t487;
t845 = t1038 * t940 - t938 * t911;
t847 = t848 ^ 2;
t1105 = t850 ^ 2;
t882 = qJD(6) + t894;
t880 = t882 ^ 2;
t1100 = 2 * qJD(5);
t1099 = pkin(4) + pkin(10);
t1098 = pkin(4) * t944;
t1097 = pkin(4) * t948;
t732 = t816 * t946 + t817 * t950;
t1096 = pkin(7) * t732;
t1095 = qJ(5) * t934;
t618 = t944 * t711 + t948 * t712;
t537 = -t617 * t948 + t618 * t944;
t1094 = t537 * t945;
t1093 = t537 * t949;
t990 = -t933 * pkin(4) - t829 * t892 + t618;
t554 = t1095 - t801 * pkin(5) - t1104 * pkin(10) + (t1100 + t865) * t935 + t990;
t1092 = t554 * t943;
t1091 = t554 * t947;
t716 = t789 + t797;
t1090 = t716 * t947;
t1089 = t738 * t944;
t1088 = t738 * t948;
t1074 = t894 * t935;
t765 = t801 + t1074;
t1087 = t765 * t948;
t1086 = t806 * t945;
t1085 = t806 * t949;
t1078 = t848 * t882;
t1077 = t882 * t943;
t1076 = t882 * t947;
t903 = -0.2e1 * t1041 + t1049;
t851 = t903 * t949;
t1073 = t912 * t945;
t913 = qJDD(3) - t920;
t1072 = t913 * t945;
t1071 = t913 * t949;
t936 = t945 ^ 2;
t1066 = t936 * t952;
t1061 = t943 * t716;
t1060 = t946 * t869;
t1058 = t950 * t869;
t1055 = qJD(4) - t935;
t1054 = qJD(4) + t935;
t1052 = qJDD(2) * t939;
t1050 = qJDD(2) * t946;
t1048 = qJDD(2) * t950;
t1047 = t936 + t1102;
t1046 = t944 * t789;
t1045 = t948 * t789;
t730 = -t848 * qJD(6) + t943 * t801 + t947 * t934;
t1042 = -t880 - t1105;
t1039 = qJ(5) * t944 + pkin(3);
t538 = t617 * t944 + t948 * t618;
t664 = t754 * t945 + t949 * t755;
t1034 = -t947 * t801 + t934 * t943;
t1032 = t946 * t920;
t1031 = t950 * t920;
t663 = t754 * t949 - t755 * t945;
t904 = t1047 * qJDD(2);
t907 = t931 + t1066;
t843 = t904 * t950 - t907 * t946;
t1026 = pkin(7) * t843 + t663 * t946;
t905 = -t946 * t952 + t1048;
t1025 = -pkin(7) * t905 - t1060;
t992 = t950 * t952 + t1050;
t1024 = -pkin(7) * t992 + t1058;
t434 = -t447 * t948 + t554 * t944;
t435 = t447 * t944 + t554 * t948;
t398 = -t434 * t945 + t435 * t949;
t1023 = t398 * t946 - t448 * t950;
t959 = t1101 * t935 - t990;
t603 = -t959 + t1095;
t523 = t603 * t944 - t948 * t982;
t524 = t603 * t948 + t944 * t982;
t460 = -t523 * t945 + t524 * t949;
t612 = t1037 * t894 + t956;
t1022 = t460 * t946 - t612 * t950;
t477 = t538 * t949 - t1094;
t1021 = t477 * t946 - t738 * t950;
t960 = (-qJD(6) + t882) * t850 - t1034;
t988 = t730 + t1078;
t605 = t943 * t960 - t947 * t988;
t733 = -t847 - t1105;
t565 = -t605 * t948 + t733 * t944;
t566 = t605 * t944 + t733 * t948;
t490 = -t565 * t945 + t566 * t949;
t607 = t943 * t988 + t947 * t960;
t1020 = t490 * t946 - t607 * t950;
t693 = (qJD(6) + t882) * t850 + t1034;
t989 = t730 - t1078;
t606 = t693 * t943 - t947 * t989;
t788 = -t847 + t1105;
t580 = t606 * t948 + t788 * t944;
t581 = -t606 * t944 + t788 * t948;
t492 = -t580 * t945 + t581 * t949;
t608 = t693 * t947 + t943 * t989;
t1019 = t492 * t946 + t608 * t950;
t756 = -t880 - t847;
t640 = t943 * t756 + t1126;
t583 = -t640 * t948 + t693 * t944;
t584 = t640 * t944 + t693 * t948;
t502 = -t583 * t945 + t584 * t949;
t641 = t756 * t947 - t1127;
t1018 = t502 * t946 - t641 * t950;
t643 = t1042 * t947 - t1061;
t585 = -t643 * t948 + t944 * t989;
t586 = t643 * t944 + t948 * t989;
t508 = -t585 * t945 + t586 * t949;
t644 = -t1042 * t943 - t1090;
t1017 = t508 * t946 - t644 * t950;
t812 = t847 - t880;
t659 = -t812 * t943 - t1090;
t591 = t659 * t948 + t944 * t960;
t593 = -t659 * t944 + t948 * t960;
t512 = -t591 * t945 + t593 * t949;
t661 = -t812 * t947 + t1061;
t1016 = t512 * t946 + t661 * t950;
t813 = t880 - t1105;
t658 = -t813 * t947 - t1127;
t592 = t948 * t658 + t944 * t988;
t594 = -t944 * t658 + t948 * t988;
t513 = -t592 * t945 + t594 * t949;
t660 = t813 * t943 - t1126;
t1015 = t513 * t946 + t660 * t950;
t729 = -qJD(6) * t850 - t1034;
t680 = -t1077 * t848 - t729 * t947;
t632 = t680 * t948 - t1046;
t634 = -t680 * t944 - t1045;
t551 = -t632 * t945 + t634 * t949;
t681 = -t1076 * t848 + t729 * t943;
t1014 = t551 * t946 + t681 * t950;
t682 = -t1076 * t850 - t730 * t943;
t633 = t682 * t948 + t1046;
t635 = -t682 * t944 + t1045;
t552 = -t633 * t945 + t635 * t949;
t683 = t1077 * t850 - t730 * t947;
t1013 = t552 * t946 + t683 * t950;
t723 = (t848 * t943 + t850 * t947) * t882;
t666 = t723 * t948 + t797 * t944;
t667 = -t723 * t944 + t797 * t948;
t588 = -t666 * t945 + t667 * t949;
t724 = (t848 * t947 - t850 * t943) * t882;
t1012 = t588 * t946 + t724 * t950;
t764 = t1055 * t894 + t1033;
t769 = -t1055 * t892 + t957;
t668 = -t764 * t944 - t769 * t948;
t672 = -t764 * t948 + t769 * t944;
t599 = -t668 * t945 + t672 * t949;
t1011 = t599 * t946 - t1130;
t763 = t1054 * t894 + t1033;
t669 = t1116 * t948 - t763 * t944;
t673 = -t1116 * t944 - t763 * t948;
t600 = -t669 * t945 + t673 * t949;
t1010 = t600 * t946 + t1128;
t955 = -t1054 * t892 + t957;
t670 = -t765 * t944 + t948 * t955;
t674 = -t944 * t955 - t1087;
t601 = -t670 * t945 + t674 * t949;
t1009 = t601 * t946 + t1128;
t766 = -t801 + t1074;
t671 = t766 * t944 + t772 * t948;
t675 = t766 * t948 - t772 * t944;
t602 = -t671 * t945 + t675 * t949;
t1008 = t602 * t946 - t1130;
t1007 = -t763 * t950 - t1171;
t1006 = t765 * t950 + t1171;
t1005 = t664 * t946 - t806 * t950;
t1004 = t950 * t955 - t1185;
t1003 = -t1116 * t950 + t1185;
t1002 = t772 * t950 + t1191;
t1001 = t769 * t950 - t1191;
t1000 = t764 * t950 - t1181;
t999 = t766 * t950 + t1181;
t731 = t816 * t950 - t817 * t946;
t901 = 0.2e1 * t1040 + t1051;
t841 = -t901 * t945 + t851;
t908 = t931 - t1066;
t998 = t841 * t946 + t908 * t950;
t951 = qJD(3) ^ 2;
t919 = -t931 - t951;
t858 = t919 * t949 - t1073;
t997 = t858 * t946 + t903 * t950;
t917 = -t951 - t1066;
t860 = -t917 * t945 - t1071;
t996 = t860 * t946 - t901 * t950;
t885 = t992 * t941;
t995 = t885 * t940 + t905 * t938;
t832 = t885 * t938 - t905 * t940;
t994 = t904 * t946 + t907 * t950;
t899 = t1047 * t1053;
t991 = -qJDD(3) * t950 + t899 * t946;
t918 = t931 - t951;
t857 = t918 * t949 - t1072;
t981 = -t1048 * t949 + t857 * t946;
t900 = t949 * t912;
t916 = t951 - t1066;
t859 = -t916 * t945 + t900;
t980 = -t1048 * t945 + t859 * t946;
t866 = -t1053 * t1102 + t945 * t977;
t976 = t866 * t946 - t1031;
t867 = -t1053 * t936 + t902 * t949;
t975 = t867 * t946 + t1031;
t402 = pkin(5) * t554 - t1099 * t448;
t407 = pkin(5) * t447 - qJ(5) * t448;
t377 = -pkin(3) * t448 + pkin(9) * t435 + t402 * t948 + t407 * t944;
t381 = -pkin(9) * t434 - t402 * t944 + t407 * t948;
t397 = t434 * t949 + t435 * t945;
t366 = -pkin(8) * t397 - t377 * t945 + t381 * t949;
t380 = -pkin(2) * t397 - pkin(3) * t434 - qJ(5) * t554 + t1099 * t447;
t391 = t398 * t950 + t448 * t946;
t974 = pkin(7) * t391 + t366 * t946 + t380 * t950;
t427 = pkin(5) * t733 - t1099 * t607 - t448;
t529 = pkin(5) * t605 - qJ(5) * t607;
t403 = -pkin(3) * t607 + pkin(9) * t566 + t427 * t948 + t529 * t944;
t406 = -pkin(9) * t565 - t427 * t944 + t529 * t948;
t489 = t565 * t949 + t566 * t945;
t384 = -pkin(8) * t489 - t403 * t945 + t406 * t949;
t405 = -pkin(2) * t489 - pkin(3) * t565 - qJ(5) * t733 + t1099 * t605 + t447;
t471 = t490 * t950 + t607 * t946;
t973 = pkin(7) * t471 + t384 * t946 + t405 * t950;
t463 = pkin(5) * t640 - qJ(5) * t641 + t1035;
t478 = pkin(5) * t693 - t1099 * t641 + t1091;
t415 = -pkin(3) * t641 + pkin(9) * t584 + t463 * t944 + t478 * t948;
t421 = -pkin(9) * t583 + t463 * t948 - t478 * t944;
t501 = t583 * t949 + t584 * t945;
t389 = -pkin(8) * t501 - t415 * t945 + t421 * t949;
t437 = -pkin(2) * t501 - pkin(3) * t583 - qJ(5) * t693 + t1099 * t640 - t1092;
t481 = t502 * t950 + t641 * t946;
t972 = pkin(7) * t481 + t389 * t946 + t437 * t950;
t464 = pkin(5) * t643 - qJ(5) * t644 - t487;
t480 = pkin(5) * t989 - t1099 * t644 - t1092;
t416 = -pkin(3) * t644 + pkin(9) * t586 + t464 * t944 + t480 * t948;
t423 = -pkin(9) * t585 + t464 * t948 - t480 * t944;
t507 = t585 * t949 + t586 * t945;
t390 = -pkin(8) * t507 - t416 * t945 + t423 * t949;
t438 = -pkin(2) * t507 - pkin(3) * t585 - qJ(5) * t989 + t1099 * t643 - t1091;
t483 = t508 * t950 + t644 * t946;
t971 = pkin(7) * t483 + t390 * t946 + t438 * t950;
t455 = pkin(9) * t524 + (-t1039 - t1097) * t612;
t459 = t523 * t949 + t524 * t945;
t466 = -pkin(9) * t523 + (-qJ(5) * t948 + t1098) * t612;
t400 = -pkin(8) * t459 - t455 * t945 + t466 * t949;
t422 = -pkin(2) * t459 - pkin(3) * t523 + pkin(4) * t982 - qJ(5) * t603;
t451 = t460 * t950 + t612 * t946;
t970 = pkin(7) * t451 + t400 * t946 + t422 * t950;
t577 = -pkin(4) * t1112 + t603;
t582 = -qJ(5) * t1112 + t982;
t479 = pkin(9) * t672 + t577 * t948 + t582 * t944 - t1136;
t482 = -pkin(9) * t668 - t577 * t944 + t582 * t948;
t595 = t668 * t949 + t672 * t945;
t429 = -pkin(8) * t595 - t479 * t945 + t482 * t949;
t522 = -pkin(2) * t595 - pkin(3) * t668 + pkin(4) * t769 + qJ(5) * t764;
t571 = t599 * t950 + t1131;
t969 = pkin(7) * t571 + t429 * t946 + t522 * t950;
t476 = t538 * t945 + t1093;
t531 = -pkin(3) * t738 + pkin(9) * t538;
t436 = -pkin(8) * t476 - pkin(9) * t1093 - t531 * t945;
t454 = -pkin(2) * t476 - pkin(3) * t537;
t472 = t477 * t950 + t738 * t946;
t968 = pkin(7) * t472 + t436 * t946 + t454 * t950;
t506 = pkin(9) * t675 - t1136 + t538;
t521 = -pkin(9) * t671 - t537;
t598 = t671 * t949 + t675 * t945;
t444 = -pkin(8) * t598 - t506 * t945 + t521 * t949;
t539 = -pkin(2) * t598 - pkin(3) * t671;
t572 = t602 * t950 + t1131;
t967 = pkin(7) * t572 + t444 * t946 + t539 * t950;
t953 = -t1100 * t894 + t956;
t590 = (t765 + t1074) * pkin(4) + t953;
t530 = t1039 * t765 + t590 * t948 + t1166;
t535 = qJ(5) * t1087 - t590 * t944 + t1167;
t458 = -t530 * t945 + t535 * t949 + t1175;
t509 = pkin(4) * t1144 + qJ(5) * t818 - t1169 - t982;
t611 = -t765 * t946 + t1170;
t966 = pkin(7) * t611 + t458 * t946 + t509 * t950;
t589 = -pkin(4) * t1074 + qJ(5) * t955 - t953;
t533 = t1176 + t589 * t944 + (pkin(3) + t1097) * t955;
t536 = -t1098 * t955 + t589 * t948 - t1177;
t461 = -t533 * t945 + t536 * t949 - t1189;
t526 = -pkin(4) * t861 + (-t1145 - t934) * qJ(5) + t959 + t1179;
t619 = -t946 * t955 - t1184;
t965 = pkin(7) * t619 + t461 * t946 + t526 * t950;
t614 = -pkin(3) * t763 - t1088 - t1166;
t649 = t1089 - t1167;
t525 = -t614 * t945 + t649 * t949 - t1175;
t534 = t1169 + t617;
t610 = t763 * t946 - t1170;
t964 = pkin(7) * t610 + t525 * t946 + t534 * t950;
t615 = -pkin(3) * t1116 + t1089 - t1176;
t665 = t1088 + t1177;
t532 = -t615 * t945 + t665 * t949 + t1189;
t540 = -t1179 + t618;
t620 = t1116 * t946 + t1184;
t963 = pkin(7) * t620 + t532 * t946 + t540 * t950;
t854 = t919 * t945 + t900;
t717 = -pkin(2) * t854 + t754;
t744 = -pkin(8) * t854 + t1086;
t814 = t858 * t950 - t903 * t946;
t962 = pkin(7) * t814 + t717 * t950 + t744 * t946;
t856 = t917 * t949 - t1072;
t718 = -pkin(2) * t856 + t755;
t745 = -pkin(8) * t856 + t1085;
t815 = t860 * t950 + t901 * t946;
t961 = pkin(7) * t815 + t718 * t950 + t745 * t946;
t630 = t664 * t950 + t806 * t946;
t958 = pkin(7) * t630 - (-pkin(2) * t950 - pkin(8) * t946) * t663;
t886 = t905 * t941;
t884 = t905 * t939;
t883 = t992 * t939;
t868 = qJDD(3) * t946 + t899 * t950;
t855 = t916 * t949 + t1073;
t853 = t918 * t945 + t1071;
t852 = (t902 + t1040) * t945;
t844 = t991 * t941;
t840 = t901 * t949 + t903 * t945;
t835 = t994 * t941;
t834 = t994 * t939;
t833 = -t886 * t938 - t940 * t992;
t831 = t886 * t940 - t938 * t992;
t822 = t867 * t950 - t1032;
t821 = t866 * t950 + t1032;
t820 = t1050 * t945 + t859 * t950;
t819 = t1049 * t946 + t857 * t950;
t803 = t841 * t950 - t908 * t946;
t778 = -t1058 + (t883 * t939 + t885 * t941) * pkin(7);
t777 = -t1060 + (-t884 * t939 - t886 * t941) * pkin(7);
t762 = -t835 * t938 + t843 * t940;
t761 = t835 * t940 + t843 * t938;
t760 = -t852 * t939 + t941 * t975;
t759 = -t851 * t939 + t941 * t976;
t758 = -t855 * t939 + t941 * t980;
t757 = -t853 * t939 + t941 * t981;
t742 = -t856 * t939 + t941 * t996;
t741 = -t854 * t939 + t941 * t997;
t740 = t856 * t941 + t939 * t996;
t739 = t854 * t941 + t939 * t997;
t728 = -t840 * t939 + t941 * t998;
t727 = pkin(2) * t903 + pkin(8) * t858 - t1085;
t726 = -pkin(2) * t901 + pkin(8) * t860 + t1086;
t725 = t732 * t941;
t714 = -pkin(1) * t884 + t1024 * t941 + t816 * t939;
t713 = pkin(1) * t883 + t1025 * t941 + t817 * t939;
t703 = -t731 * t941 + t869 * t939;
t702 = -t731 * t939 - t869 * t941;
t701 = -t742 * t938 + t815 * t940;
t700 = -t741 * t938 + t814 * t940;
t699 = t742 * t940 + t815 * t938;
t698 = t741 * t940 + t814 * t938;
t642 = pkin(2) * t907 + pkin(8) * t904 + t664;
t631 = -pkin(2) * t806 + pkin(8) * t664;
t629 = -pkin(1) * t702 + t1096 * t941;
t628 = -t766 * t946 + t1180;
t627 = -t764 * t946 - t1180;
t626 = -t769 * t946 - t1190;
t625 = -t772 * t946 + t1190;
t624 = -t703 * t938 + t732 * t940;
t623 = t703 * t940 + t732 * t938;
t613 = t950 * t663 + (-t834 * t939 - t835 * t941) * pkin(7);
t609 = (-t702 * t939 - t703 * t941) * pkin(7);
t597 = t670 * t949 + t674 * t945;
t596 = t669 * t949 + t673 * t945;
t587 = t666 * t949 + t667 * t945;
t579 = t601 * t950 - t1129;
t578 = t600 * t950 - t1129;
t574 = -t718 * t946 + t745 * t950 + (-t740 * t939 - t742 * t941) * pkin(7);
t573 = -t717 * t946 + t744 * t950 + (-t739 * t939 - t741 * t941) * pkin(7);
t570 = t941 * t999 + t1183;
t569 = t1000 * t941 - t1183;
t568 = t1001 * t941 - t1193;
t567 = t1002 * t941 + t1193;
t560 = t1003 * t941 + t1187;
t559 = t1004 * t941 - t1187;
t558 = t1003 * t939 - t1186;
t557 = t1004 * t939 + t1186;
t556 = t1005 * t941 + t663 * t939;
t555 = t1005 * t939 - t663 * t941;
t550 = t633 * t949 + t635 * t945;
t549 = t632 * t949 + t634 * t945;
t548 = -pkin(1) * t740 - t726 * t939 + t941 * t961;
t547 = -pkin(1) * t739 - t727 * t939 + t941 * t962;
t546 = t588 * t950 - t724 * t946;
t545 = -pkin(1) * t834 + t1026 * t941 - t642 * t939;
t544 = t1006 * t941 + t1173;
t543 = t1007 * t941 - t1173;
t542 = t1006 * t939 - t1172;
t541 = t1007 * t939 + t1172;
t528 = t552 * t950 - t683 * t946;
t527 = t551 * t950 - t681 * t946;
t520 = -t556 * t938 + t630 * t940;
t519 = t556 * t940 + t630 * t938;
t518 = -pkin(2) * t1116 + t615 * t949 + t665 * t945 + t1188;
t517 = -t560 * t938 + t620 * t940;
t516 = -t559 * t938 + t619 * t940;
t515 = t560 * t940 + t620 * t938;
t514 = t559 * t940 + t619 * t938;
t511 = t592 * t949 + t594 * t945;
t510 = t591 * t949 + t593 * t945;
t505 = t1009 * t941 - t597 * t939;
t504 = t1010 * t941 - t596 * t939;
t503 = -pkin(2) * t763 + t614 * t949 + t649 * t945 - t1174;
t500 = t1008 * t941 - t598 * t939;
t499 = t1011 * t941 - t595 * t939;
t498 = t1008 * t939 + t598 * t941;
t497 = t1011 * t939 + t595 * t941;
t496 = -t544 * t938 + t611 * t940;
t495 = -t543 * t938 + t610 * t940;
t494 = t544 * t940 + t611 * t938;
t493 = t543 * t940 + t610 * t938;
t491 = t580 * t949 + t581 * t945;
t488 = t1012 * t941 - t587 * t939;
t485 = t513 * t950 - t660 * t946;
t484 = t512 * t950 - t661 * t946;
t475 = t492 * t950 - t608 * t946;
t474 = t1013 * t941 - t550 * t939;
t473 = t1014 * t941 - t549 * t939;
t470 = -t500 * t938 + t572 * t940;
t469 = -t499 * t938 + t571 * t940;
t468 = t500 * t940 + t572 * t938;
t467 = t499 * t940 + t571 * t938;
t465 = -(pkin(2) * t946 - pkin(8) * t950) * t663 + (-t555 * t939 - t556 * t941) * pkin(7);
t462 = -pkin(1) * t555 - t631 * t939 + t941 * t958;
t457 = pkin(2) * t955 + t533 * t949 + t536 * t945 - t1188;
t456 = pkin(2) * t765 + t530 * t949 + t535 * t945 + t1174;
t453 = t1015 * t941 - t511 * t939;
t452 = t1016 * t941 - t510 * t939;
t450 = t1017 * t941 - t507 * t939;
t449 = t1017 * t939 + t507 * t941;
t446 = t1018 * t941 - t501 * t939;
t445 = t1018 * t939 + t501 * t941;
t443 = pkin(8) * t602 + t506 * t949 + t521 * t945 - t1137;
t442 = t1019 * t941 - t491 * t939;
t441 = t532 * t950 - t540 * t946 + (-t558 * t939 - t560 * t941) * pkin(7);
t440 = t1020 * t941 - t489 * t939;
t439 = t1020 * t939 + t489 * t941;
t433 = t1021 * t941 - t939 * t476;
t432 = t1021 * t939 + t476 * t941;
t431 = t525 * t950 - t534 * t946 + (-t541 * t939 - t543 * t941) * pkin(7);
t430 = -pkin(2) * t738 + pkin(8) * t477 - pkin(9) * t1094 + t531 * t949;
t428 = pkin(8) * t599 + t479 * t949 + t482 * t945 - t1137;
t426 = -pkin(1) * t558 - t518 * t939 + t941 * t963;
t425 = -t450 * t938 + t483 * t940;
t424 = t450 * t940 + t483 * t938;
t420 = -t446 * t938 + t481 * t940;
t419 = t446 * t940 + t481 * t938;
t418 = -pkin(1) * t541 - t503 * t939 + t941 * t964;
t417 = t461 * t950 - t526 * t946 + (-t557 * t939 - t559 * t941) * pkin(7);
t414 = t1022 * t941 - t939 * t459;
t413 = t1022 * t939 + t941 * t459;
t412 = t458 * t950 - t509 * t946 + (-t542 * t939 - t544 * t941) * pkin(7);
t411 = -t440 * t938 + t471 * t940;
t410 = t440 * t940 + t471 * t938;
t409 = -t433 * t938 + t472 * t940;
t408 = t433 * t940 + t472 * t938;
t404 = t444 * t950 - t539 * t946 + (-t498 * t939 - t500 * t941) * pkin(7);
t401 = -pkin(1) * t557 - t457 * t939 + t941 * t965;
t399 = -pkin(1) * t542 - t456 * t939 + t941 * t966;
t396 = -pkin(2) * t612 + pkin(8) * t460 + t455 * t949 + t466 * t945;
t395 = t429 * t950 - t522 * t946 + (-t497 * t939 - t499 * t941) * pkin(7);
t394 = -t414 * t938 + t451 * t940;
t393 = t414 * t940 + t451 * t938;
t392 = -pkin(1) * t498 - t443 * t939 + t941 * t967;
t388 = -pkin(2) * t644 + pkin(8) * t508 + t416 * t949 + t423 * t945;
t387 = -pkin(1) * t497 - t428 * t939 + t941 * t969;
t386 = -pkin(2) * t641 + pkin(8) * t502 + t415 * t949 + t421 * t945;
t385 = t436 * t950 - t454 * t946 + (-t432 * t939 - t433 * t941) * pkin(7);
t383 = -pkin(2) * t607 + pkin(8) * t490 + t403 * t949 + t406 * t945;
t382 = -pkin(1) * t432 - t430 * t939 + t941 * t968;
t379 = t1023 * t941 - t939 * t397;
t378 = t1023 * t939 + t941 * t397;
t376 = t390 * t950 - t438 * t946 + (-t449 * t939 - t450 * t941) * pkin(7);
t375 = t389 * t950 - t437 * t946 + (-t445 * t939 - t446 * t941) * pkin(7);
t374 = t400 * t950 - t422 * t946 + (-t413 * t939 - t414 * t941) * pkin(7);
t373 = -pkin(1) * t413 - t396 * t939 + t941 * t970;
t372 = t384 * t950 - t405 * t946 + (-t439 * t939 - t440 * t941) * pkin(7);
t371 = -t379 * t938 + t391 * t940;
t370 = t379 * t940 + t391 * t938;
t369 = -pkin(1) * t449 - t388 * t939 + t941 * t971;
t368 = -pkin(1) * t445 - t386 * t939 + t941 * t972;
t367 = -pkin(1) * t439 - t383 * t939 + t941 * t973;
t365 = -pkin(2) * t448 + pkin(8) * t398 + t377 * t949 + t381 * t945;
t364 = t366 * t950 - t380 * t946 + (-t378 * t939 - t379 * t941) * pkin(7);
t363 = -pkin(1) * t378 - t365 * t939 + t941 * t974;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t846, 0, 0, 0, 0, 0, 0, t833, t832, 0, t624, 0, 0, 0, 0, 0, 0, t700, t701, t762, t520, 0, 0, 0, 0, 0, 0, t495, t517, t470, t409, 0, 0, 0, 0, 0, 0, t469, t496, t516, t394, 0, 0, 0, 0, 0, 0, t420, t425, t411, t371; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t845, 0, 0, 0, 0, 0, 0, t831, -t995, 0, t623, 0, 0, 0, 0, 0, 0, t698, t699, t761, t519, 0, 0, 0, 0, 0, 0, t493, t515, t468, t408, 0, 0, 0, 0, 0, 0, t467, t494, t514, t393, 0, 0, 0, 0, 0, 0, t419, t424, t410, t370; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t1057, 0, 0, 0, 0, 0, 0, t884, -t883, 0, t702, 0, 0, 0, 0, 0, 0, t739, t740, t834, t555, 0, 0, 0, 0, 0, 0, t541, t558, t498, t432, 0, 0, 0, 0, 0, 0, t497, t542, t557, t413, 0, 0, 0, 0, 0, 0, t445, t449, t439, t378; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1115, -t1114, -t845, -qJ(1) * t845, 0, 0, -t832, 0, t833, t938 * t1052, -qJ(1) * t831 - t714 * t938 + t777 * t940, qJ(1) * t995 - t713 * t938 + t778 * t940, -t725 * t938 + t731 * t940, -qJ(1) * t623 + t609 * t940 - t629 * t938, -t760 * t938 + t822 * t940, -t728 * t938 + t803 * t940, -t758 * t938 + t820 * t940, -t759 * t938 + t821 * t940, -t757 * t938 + t819 * t940, -t844 * t938 + t868 * t940, -qJ(1) * t698 - t547 * t938 + t573 * t940, -qJ(1) * t699 - t548 * t938 + t574 * t940, -qJ(1) * t761 - t545 * t938 + t613 * t940, -qJ(1) * t519 - t462 * t938 + t465 * t940, t1160, -t504 * t938 + t578 * t940, -t567 * t938 + t625 * t940, t1158, -t569 * t938 + t627 * t940, t1138, -qJ(1) * t493 - t418 * t938 + t431 * t940, -qJ(1) * t515 - t426 * t938 + t441 * t940, -qJ(1) * t468 - t392 * t938 + t404 * t940, -qJ(1) * t408 - t382 * t938 + t385 * t940, t1138, -t568 * t938 + t626 * t940, -t570 * t938 + t628 * t940, t1160, -t505 * t938 + t579 * t940, t1158, -qJ(1) * t467 - t387 * t938 + t395 * t940, -qJ(1) * t494 - t399 * t938 + t412 * t940, -qJ(1) * t514 - t401 * t938 + t417 * t940, -qJ(1) * t393 - t373 * t938 + t374 * t940, -t474 * t938 + t528 * t940, -t442 * t938 + t475 * t940, -t453 * t938 + t485 * t940, -t473 * t938 + t527 * t940, -t452 * t938 + t484 * t940, -t488 * t938 + t546 * t940, -qJ(1) * t419 - t368 * t938 + t375 * t940, -qJ(1) * t424 - t369 * t938 + t376 * t940, -qJ(1) * t410 - t367 * t938 + t372 * t940, -qJ(1) * t370 - t363 * t938 + t364 * t940; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1114, -t1115, t846, qJ(1) * t846, 0, 0, t995, 0, t831, -t940 * t1052, qJ(1) * t833 + t714 * t940 + t777 * t938, qJ(1) * t832 + t713 * t940 + t778 * t938, t725 * t940 + t731 * t938, qJ(1) * t624 + t609 * t938 + t629 * t940, t760 * t940 + t822 * t938, t728 * t940 + t803 * t938, t758 * t940 + t820 * t938, t759 * t940 + t821 * t938, t757 * t940 + t819 * t938, t844 * t940 + t868 * t938, qJ(1) * t700 + t547 * t940 + t573 * t938, qJ(1) * t701 + t548 * t940 + t574 * t938, qJ(1) * t762 + t545 * t940 + t613 * t938, qJ(1) * t520 + t462 * t940 + t465 * t938, t1159, t504 * t940 + t578 * t938, t567 * t940 + t625 * t938, t1157, t569 * t940 + t627 * t938, t1139, qJ(1) * t495 + t418 * t940 + t431 * t938, qJ(1) * t517 + t426 * t940 + t441 * t938, qJ(1) * t470 + t392 * t940 + t404 * t938, qJ(1) * t409 + t382 * t940 + t385 * t938, t1139, t568 * t940 + t626 * t938, t570 * t940 + t628 * t938, t1159, t505 * t940 + t579 * t938, t1157, qJ(1) * t469 + t387 * t940 + t395 * t938, qJ(1) * t496 + t399 * t940 + t412 * t938, qJ(1) * t516 + t401 * t940 + t417 * t938, qJ(1) * t394 + t373 * t940 + t374 * t938, t474 * t940 + t528 * t938, t442 * t940 + t475 * t938, t453 * t940 + t485 * t938, t473 * t940 + t527 * t938, t452 * t940 + t484 * t938, t488 * t940 + t546 * t938, qJ(1) * t420 + t368 * t940 + t375 * t938, qJ(1) * t425 + t369 * t940 + t376 * t938, qJ(1) * t411 + t367 * t940 + t372 * t938, qJ(1) * t371 + t363 * t940 + t364 * t938; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t1038, t911, 0, 0, 0, 0, t883, 0, t884, t941 * qJDD(2), pkin(1) * t886 + t1024 * t939 - t816 * t941, -pkin(1) * t885 + t1025 * t939 - t817 * t941, t732 * t939, pkin(1) * t703 + t1096 * t939, t852 * t941 + t939 * t975, t840 * t941 + t939 * t998, t855 * t941 + t939 * t980, t851 * t941 + t939 * t976, t853 * t941 + t939 * t981, t991 * t939, pkin(1) * t741 + t727 * t941 + t939 * t962, pkin(1) * t742 + t726 * t941 + t939 * t961, pkin(1) * t835 + t1026 * t939 + t642 * t941, pkin(1) * t556 + t631 * t941 + t939 * t958, t1141, t1010 * t939 + t596 * t941, t1002 * t939 - t1192, t1143, t1000 * t939 + t1182, t1118, pkin(1) * t543 + t503 * t941 + t939 * t964, pkin(1) * t560 + t518 * t941 + t939 * t963, pkin(1) * t500 + t443 * t941 + t939 * t967, pkin(1) * t433 + t430 * t941 + t939 * t968, t1118, t1001 * t939 + t1192, t939 * t999 - t1182, t1141, t1009 * t939 + t597 * t941, t1143, pkin(1) * t499 + t428 * t941 + t939 * t969, pkin(1) * t544 + t456 * t941 + t939 * t966, pkin(1) * t559 + t457 * t941 + t939 * t965, pkin(1) * t414 + t396 * t941 + t939 * t970, t1013 * t939 + t550 * t941, t1019 * t939 + t491 * t941, t1015 * t939 + t511 * t941, t1014 * t939 + t549 * t941, t1016 * t939 + t510 * t941, t1012 * t939 + t587 * t941, pkin(1) * t446 + t386 * t941 + t939 * t972, pkin(1) * t450 + t388 * t941 + t939 * t971, pkin(1) * t440 + t383 * t941 + t939 * t973, pkin(1) * t379 + t365 * t941 + t939 * t974;];
tauB_reg  = t1;
