% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PPRRRR3
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
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d3,d4,d5,d6,theta1,theta2]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 21:20
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PPRRRR3_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(14,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRRR3_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PPRRRR3_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PPRRRR3_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PPRRRR3_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6PPRRRR3_invdynB_fixb_reg2_snew_vp: pkin has to be [14x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 21:16:24
% EndTime: 2019-05-04 21:17:46
% DurationCPUTime: 83.91s
% Computational Cost: add. (868940->1122), mult. (1673709->1938), div. (0->0), fcn. (1446947->18), ass. (0->833)
t1001 = cos(pkin(6));
t1000 = cos(pkin(7));
t1005 = sin(qJ(3));
t1009 = cos(qJ(3));
t1010 = qJD(3) ^ 2;
t1056 = qJDD(3) * t1005 + t1009 * t1010;
t960 = t1056 * t1000;
t972 = qJDD(3) * t1009 - t1005 * t1010;
t992 = sin(pkin(14));
t997 = cos(pkin(14));
t1119 = t960 * t997 + t972 * t992;
t995 = sin(pkin(7));
t958 = t1056 * t995;
t996 = sin(pkin(6));
t888 = t1001 * t1119 - t996 * t958;
t920 = t960 * t992 - t972 * t997;
t993 = sin(pkin(13));
t998 = cos(pkin(13));
t835 = t888 * t993 + t920 * t998;
t1239 = t888 * t998 - t920 * t993;
t994 = sin(pkin(8));
t1225 = pkin(10) * t994;
t977 = g(1) * t993 - t998 * g(2);
t991 = g(3) - qJDD(1);
t938 = t1001 * t991 + t977 * t996 - qJDD(2);
t1217 = t938 * t995;
t1115 = t1001 * t977 - t991 * t996;
t978 = g(1) * t998 + g(2) * t993;
t910 = -t1115 * t997 - t992 * t978;
t1116 = t1000 * t910 + t1217;
t911 = t1115 * t992 - t997 * t978;
t822 = t1005 * t911 + t1009 * t1116;
t1015 = qJDD(3) * pkin(3) + t1010 * t1225 - t822;
t1002 = sin(qJ(6));
t1003 = sin(qJ(5));
t1007 = cos(qJ(5));
t1004 = sin(qJ(4));
t1178 = qJD(3) * t1004;
t1162 = t994 * t1178;
t999 = cos(pkin(8));
t983 = qJD(3) * t999 + qJD(4);
t945 = t1003 * t983 + t1007 * t1162;
t1175 = qJDD(3) * t1004;
t1008 = cos(qJ(4));
t1177 = qJD(3) * t1008;
t954 = (qJD(4) * t1177 + t1175) * t994;
t982 = qJDD(3) * t999 + qJDD(4);
t1171 = t945 * qJD(5) + t1003 * t954 - t1007 * t982;
t1157 = qJDD(6) + t1171;
t1006 = cos(qJ(6));
t1161 = t994 * t1177;
t975 = -qJD(5) + t1161;
t914 = t1002 * t945 + t1006 * t975;
t916 = -t1002 * t975 + t1006 * t945;
t868 = t916 * t914;
t1232 = -t868 + t1157;
t1236 = t1002 * t1232;
t1235 = t1006 * t1232;
t904 = t995 * t910;
t1159 = t1000 * t938 - t904;
t1234 = t999 * t1015 - t994 * t1159;
t1214 = t945 * t975;
t1233 = t1171 - t1214;
t823 = -t1005 * t1116 + t1009 * t911;
t747 = t1005 * t822 + t1009 * t823;
t739 = t747 * t995;
t943 = t1003 * t1162 - t1007 * t983;
t894 = -t943 * qJD(5) + t1003 * t982 + t1007 * t954;
t929 = t943 * t975;
t857 = t929 + t894;
t1174 = qJDD(3) * t1008;
t979 = qJD(4) * t1162;
t1152 = t1174 * t994 - t979;
t950 = -qJDD(5) + t1152;
t1172 = t914 * qJD(6) + t1002 * t950 - t1006 * t894;
t937 = qJD(6) + t943;
t885 = t937 * t914;
t787 = -t885 - t1172;
t1215 = t943 * t945;
t1017 = -t950 - t1215;
t1231 = t1003 * t1017;
t1114 = t1005 * t1159;
t1230 = t1007 * t1017;
t1113 = t1009 * t1159;
t1228 = t1001 * t958 + t1119 * t996;
t1158 = t1002 * t894 + t1006 * t950;
t784 = (qJD(6) - t937) * t916 + t1158;
t912 = t914 ^ 2;
t913 = t916 ^ 2;
t935 = t937 ^ 2;
t941 = t943 ^ 2;
t942 = t945 ^ 2;
t1227 = t975 ^ 2;
t1226 = t983 ^ 2;
t1224 = pkin(4) * t1004;
t1223 = pkin(4) * t1008;
t1222 = pkin(5) * t1003;
t1221 = pkin(9) * t1000;
t853 = t910 * t992 + t911 * t997;
t1220 = qJ(2) * t853;
t1218 = t938 * t993;
t1216 = t938 * t998;
t1213 = t993 * t991;
t1212 = t996 * t938;
t1210 = t996 * t997;
t1209 = t998 * t991;
t1053 = t1178 * t983 - t1174;
t870 = t999 * t1159;
t1012 = t979 * pkin(4) - t954 * pkin(11) - t870 + (-pkin(11) * t1177 * t983 + pkin(4) * t1053 - t1015) * t994;
t1013 = t1234 * t1004;
t1155 = -pkin(11) * t1004 - t1223;
t1206 = qJD(3) * t994;
t814 = -t1010 * pkin(3) + qJDD(3) * t1225 + t823;
t1156 = t1155 * t1206 ^ 2 + t814;
t703 = -pkin(4) * t1226 + t982 * pkin(11) + t1008 * t1156 + t1013;
t638 = t1003 * t1012 + t1007 * t703;
t902 = pkin(5) * t943 - pkin(12) * t945;
t617 = -pkin(5) * t1227 - pkin(12) * t950 - t902 * t943 + t638;
t1208 = t1234 * t1008;
t702 = -t982 * pkin(4) - t1226 * pkin(11) + t1004 * t1156 - t1208;
t662 = pkin(5) * t1233 - t857 * pkin(12) + t702;
t567 = t1002 * t662 + t1006 * t617;
t989 = t1004 ^ 2;
t990 = t1008 ^ 2;
t1207 = t989 + t990;
t1205 = t1001 * t938;
t1203 = t1001 * t997;
t637 = t1003 * t703 - t1007 * t1012;
t616 = t950 * pkin(5) - pkin(12) * t1227 + t902 * t945 + t637;
t1202 = t1002 * t616;
t806 = t868 + t1157;
t1201 = t1002 * t806;
t1200 = t1002 * t937;
t1199 = t1003 * t702;
t882 = t950 - t1215;
t1198 = t1003 * t882;
t1197 = t1003 * t975;
t770 = t1015 * t994 + t870;
t1196 = t1004 * t770;
t1176 = t1004 * t1010;
t988 = t994 ^ 2;
t1182 = t1008 * t988;
t974 = t1176 * t1182;
t951 = t974 + t982;
t1195 = t1004 * t951;
t952 = -t974 + t982;
t1194 = t1004 * t952;
t1170 = t983 * t1206;
t930 = t1207 * t1170;
t1192 = t1005 * t930;
t1191 = t1006 * t616;
t1190 = t1006 * t806;
t1189 = t1006 * t937;
t1188 = t1007 * t702;
t1187 = t1007 * t882;
t1186 = t1007 * t975;
t1185 = t1008 * t770;
t1184 = t1008 * t951;
t1183 = t1008 * t952;
t1181 = t1009 * t994;
t1180 = t1010 * t988;
t1169 = t1003 * t868;
t1168 = t1004 * t1215;
t1167 = t1007 * t868;
t1166 = t1008 * t1215;
t1165 = t989 * t1180;
t1164 = t990 * t1180;
t1163 = -pkin(5) * t1007 - pkin(4);
t1160 = qJDD(3) * t992 * t995;
t932 = -t977 * t993 - t998 * t978;
t566 = t1002 * t617 - t1006 * t662;
t565 = t1003 * t637 + t1007 * t638;
t936 = -t1165 - t1226;
t900 = -t1004 * t936 - t1183;
t1154 = pkin(10) * t900 - t1196;
t957 = -t1164 - t1226;
t908 = t1008 * t957 - t1195;
t1153 = pkin(10) * t908 + t1185;
t500 = t1002 * t566 + t1006 * t567;
t478 = t1003 * t616 + t1007 * t500;
t499 = t1002 * t567 - t1006 * t566;
t1111 = t1004 * t478 - t1008 * t499;
t477 = t1003 * t500 - t1007 * t616;
t414 = t1111 * t999 - t994 * t477;
t448 = t1004 * t499 + t1008 * t478;
t1086 = t1005 * t448 + t1009 * t414;
t413 = t1111 * t994 + t999 * t477;
t385 = t1000 * t1086 - t995 * t413;
t392 = -t1005 * t414 + t1009 * t448;
t1151 = t385 * t997 + t392 * t992;
t1110 = t1004 * t565 - t1008 * t702;
t564 = t1003 * t638 - t1007 * t637;
t487 = t1110 * t999 - t994 * t564;
t537 = t1004 * t702 + t1008 * t565;
t1085 = t1005 * t537 + t1009 * t487;
t486 = t1110 * t994 + t999 * t564;
t431 = t1000 * t1085 - t995 * t486;
t457 = -t1005 * t487 + t1009 * t537;
t1150 = t431 * t997 + t457 * t992;
t788 = -t885 + t1172;
t707 = -t1002 * t788 - t1006 * t784;
t824 = t912 + t913;
t672 = -t1003 * t824 + t1007 * t707;
t705 = -t1002 * t784 + t1006 * t788;
t1109 = t1004 * t672 - t1008 * t705;
t671 = t1003 * t707 + t1007 * t824;
t561 = t1109 * t999 - t994 * t671;
t602 = t1004 * t705 + t1008 * t672;
t1084 = t1005 * t602 + t1009 * t561;
t560 = t1109 * t994 + t999 * t671;
t474 = t1000 * t1084 - t995 * t560;
t518 = -t1005 * t561 + t1009 * t602;
t1149 = t474 * t997 + t518 * t992;
t786 = (-qJD(6) - t937) * t916 - t1158;
t708 = -t1002 * t787 + t1006 * t786;
t867 = -t913 + t912;
t682 = -t1003 * t867 + t1007 * t708;
t706 = -t1002 * t786 - t1006 * t787;
t1108 = t1004 * t682 + t1008 * t706;
t681 = t1003 * t708 + t1007 * t867;
t569 = t1108 * t999 - t994 * t681;
t608 = -t1004 * t706 + t1008 * t682;
t1083 = t1005 * t608 + t1009 * t569;
t568 = t1108 * t994 + t999 * t681;
t476 = t1000 * t1083 - t995 * t568;
t523 = -t1005 * t569 + t1009 * t608;
t1148 = t476 * t997 + t523 * t992;
t837 = -t935 - t912;
t751 = t1006 * t837 - t1236;
t688 = -t1003 * t786 + t1007 * t751;
t750 = t1002 * t837 + t1235;
t1107 = t1004 * t688 - t1008 * t750;
t687 = t1003 * t751 + t1007 * t786;
t578 = t1107 * t999 - t994 * t687;
t635 = t1004 * t750 + t1008 * t688;
t1082 = t1005 * t635 + t1009 * t578;
t577 = t1107 * t994 + t999 * t687;
t495 = t1000 * t1082 - t995 * t577;
t534 = -t1005 * t578 + t1009 * t635;
t1147 = t495 * t997 + t534 * t992;
t860 = -t913 - t935;
t758 = -t1002 * t860 - t1190;
t692 = t1003 * t787 + t1007 * t758;
t757 = t1006 * t860 - t1201;
t1106 = t1004 * t692 - t1008 * t757;
t691 = t1003 * t758 - t1007 * t787;
t582 = t1106 * t999 - t994 * t691;
t645 = t1004 * t757 + t1008 * t692;
t1081 = t1005 * t645 + t1009 * t582;
t581 = t1106 * t994 + t999 * t691;
t498 = t1000 * t1081 - t995 * t581;
t536 = -t1005 * t582 + t1009 * t645;
t1146 = t498 * t997 + t536 * t992;
t881 = -t913 + t935;
t773 = -t1002 * t881 + t1235;
t699 = -t1003 * t788 + t1007 * t773;
t771 = -t1006 * t881 - t1236;
t1105 = t1004 * t699 + t1008 * t771;
t697 = t1003 * t773 + t1007 * t788;
t590 = t1105 * t999 - t994 * t697;
t648 = -t1004 * t771 + t1008 * t699;
t1080 = t1005 * t648 + t1009 * t590;
t588 = t1105 * t994 + t999 * t697;
t503 = t1000 * t1080 - t995 * t588;
t542 = -t1005 * t590 + t1009 * t648;
t1145 = t503 * t997 + t542 * t992;
t880 = t912 - t935;
t774 = t1006 * t880 - t1201;
t700 = -t1003 * t784 + t1007 * t774;
t772 = -t1002 * t880 - t1190;
t1104 = t1004 * t700 + t1008 * t772;
t698 = t1003 * t774 + t1007 * t784;
t591 = t1104 * t999 - t994 * t698;
t649 = -t1004 * t772 + t1008 * t700;
t1079 = t1005 * t649 + t1009 * t591;
t589 = t1104 * t994 + t999 * t698;
t504 = t1000 * t1079 - t995 * t589;
t543 = -t1005 * t591 + t1009 * t649;
t1144 = t504 * t997 + t543 * t992;
t714 = t1004 * t814 - t1208;
t715 = t1008 * t814 + t1013;
t1103 = t1004 * t715 - t1008 * t714;
t600 = t1103 * t999 + t994 * t770;
t632 = t1004 * t714 + t1008 * t715;
t1078 = t1005 * t632 + t1009 * t600;
t599 = t1103 * t994 - t999 * t770;
t507 = t1000 * t1078 - t995 * t599;
t545 = -t1005 * t600 + t1009 * t632;
t1143 = t507 * t997 + t545 * t992;
t818 = -qJD(6) * t916 - t1158;
t781 = -t1002 * t818 + t1189 * t914;
t734 = t1007 * t781 - t1169;
t780 = -t1006 * t818 - t1200 * t914;
t1102 = t1004 * t734 + t1008 * t780;
t732 = t1003 * t781 + t1167;
t624 = t1102 * t999 - t994 * t732;
t675 = -t1004 * t780 + t1008 * t734;
t1077 = t1005 * t675 + t1009 * t624;
t622 = t1102 * t994 + t999 * t732;
t529 = t1000 * t1077 - t995 * t622;
t570 = -t1005 * t624 + t1009 * t675;
t1142 = t529 * t997 + t570 * t992;
t783 = -t1006 * t1172 - t1200 * t916;
t735 = t1007 * t783 + t1169;
t782 = t1002 * t1172 - t1189 * t916;
t1101 = t1004 * t735 + t1008 * t782;
t733 = t1003 * t783 - t1167;
t625 = t1101 * t999 - t994 * t733;
t676 = -t1004 * t782 + t1008 * t735;
t1076 = t1005 * t676 + t1009 * t625;
t623 = t1101 * t994 + t999 * t733;
t530 = t1000 * t1076 - t995 * t623;
t571 = -t1005 * t625 + t1009 * t676;
t1141 = t530 * t997 + t571 * t992;
t813 = (t1002 * t916 - t1006 * t914) * t937;
t779 = t1003 * t1157 + t1007 * t813;
t812 = (t1002 * t914 + t1006 * t916) * t937;
t1100 = t1004 * t779 + t1008 * t812;
t778 = t1003 * t813 - t1007 * t1157;
t665 = t1100 * t999 - t994 * t778;
t716 = -t1004 * t812 + t1008 * t779;
t1075 = t1005 * t716 + t1009 * t665;
t664 = t1100 * t994 + t999 * t778;
t559 = t1000 * t1075 - t995 * t664;
t607 = -t1005 * t665 + t1009 * t716;
t1140 = t559 * t997 + t607 * t992;
t854 = t1171 + t1214;
t859 = t929 - t894;
t793 = -t1003 * t859 - t1007 * t854;
t879 = t941 + t942;
t1098 = t1004 * t793 + t1008 * t879;
t791 = -t1003 * t854 + t1007 * t859;
t684 = t1098 * t999 - t994 * t791;
t738 = -t1004 * t879 + t1008 * t793;
t1074 = t1005 * t738 + t1009 * t684;
t683 = t1098 * t994 + t999 * t791;
t576 = t1000 * t1074 - t995 * t683;
t627 = -t1005 * t684 + t1009 * t738;
t1139 = t576 * t997 + t627 * t992;
t792 = -t1003 * t857 - t1007 * t1233;
t903 = -t942 + t941;
t1099 = t1004 * t792 + t1008 * t903;
t790 = -t1003 * t1233 + t1007 * t857;
t690 = t1099 * t999 - t994 * t790;
t752 = -t1004 * t903 + t1008 * t792;
t1073 = t1005 * t752 + t1009 * t690;
t689 = t1099 * t994 + t999 * t790;
t580 = t1000 * t1073 - t995 * t689;
t639 = -t1005 * t690 + t1009 * t752;
t1138 = t580 * t997 + t639 * t992;
t899 = -t1227 - t941;
t816 = t1007 * t899 - t1231;
t1097 = t1004 * t816 - t1008 * t1233;
t815 = t1003 * t899 + t1230;
t713 = t1097 * t999 - t994 * t815;
t765 = t1004 * t1233 + t1008 * t816;
t1072 = t1005 * t765 + t1009 * t713;
t712 = t1097 * t994 + t999 * t815;
t596 = t1000 * t1072 - t995 * t712;
t656 = -t1005 * t713 + t1009 * t765;
t1137 = t596 * t997 + t656 * t992;
t905 = -t942 - t1227;
t828 = -t1003 * t905 + t1187;
t1096 = t1004 * t828 - t1008 * t857;
t827 = t1007 * t905 + t1198;
t718 = t1096 * t999 - t994 * t827;
t769 = t1004 * t857 + t1008 * t828;
t1071 = t1005 * t769 + t1009 * t718;
t717 = t1096 * t994 + t999 * t827;
t604 = t1000 * t1071 - t995 * t717;
t663 = -t1005 * t718 + t1009 * t769;
t1136 = t604 * t997 + t663 * t992;
t923 = -t942 + t1227;
t831 = -t1003 * t923 + t1230;
t1095 = t1004 * t831 + t1008 * t859;
t829 = t1007 * t923 + t1231;
t723 = t1095 * t999 - t994 * t829;
t776 = -t1004 * t859 + t1008 * t831;
t1070 = t1005 * t776 + t1009 * t723;
t721 = t1095 * t994 + t999 * t829;
t611 = t1000 * t1070 - t995 * t721;
t667 = -t1005 * t723 + t1009 * t776;
t1135 = t611 * t997 + t667 * t992;
t922 = t941 - t1227;
t832 = t1007 * t922 + t1198;
t1094 = t1004 * t832 + t1008 * t854;
t830 = t1003 * t922 - t1187;
t724 = t1094 * t999 - t994 * t830;
t777 = -t1004 * t854 + t1008 * t832;
t1069 = t1005 * t777 + t1009 * t724;
t722 = t1094 * t994 + t999 * t830;
t612 = t1000 * t1069 - t995 * t722;
t668 = -t1005 * t724 + t1009 * t777;
t1134 = t612 * t997 + t668 * t992;
t846 = t1003 * t1171 - t1186 * t943;
t1055 = t1004 * t846 + t1166;
t845 = -t1007 * t1171 - t1197 * t943;
t744 = t1055 * t999 - t994 * t845;
t803 = t1008 * t846 - t1168;
t1068 = t1005 * t803 + t1009 * t744;
t742 = t1055 * t994 + t999 * t845;
t643 = t1000 * t1068 - t995 * t742;
t694 = -t1005 * t744 + t1009 * t803;
t1133 = t643 * t997 + t694 * t992;
t849 = t1007 * t894 + t1197 * t945;
t1054 = t1004 * t849 - t1166;
t848 = t1003 * t894 - t1186 * t945;
t745 = t1054 * t999 - t994 * t848;
t804 = t1008 * t849 + t1168;
t1067 = t1005 * t804 + t1009 * t745;
t743 = t1054 * t994 + t999 * t848;
t644 = t1000 * t1067 - t995 * t743;
t695 = -t1005 * t745 + t1009 * t804;
t1132 = t644 * t997 + t695 * t992;
t876 = (-t1003 * t945 + t1007 * t943) * t975;
t1093 = t1004 * t876 + t1008 * t950;
t875 = (t1003 * t943 + t1007 * t945) * t975;
t797 = t1093 * t999 - t994 * t875;
t844 = -t1004 * t950 + t1008 * t876;
t1066 = t1005 * t844 + t1009 * t797;
t796 = t1093 * t994 + t999 * t875;
t680 = t1000 * t1066 - t995 * t796;
t731 = -t1005 * t797 + t1009 * t844;
t1131 = t680 * t997 + t731 * t992;
t1065 = t1005 * t823 - t1009 * t822;
t720 = -t995 * t904 + (t1065 + t1217) * t1000;
t1130 = t720 * t997 + t747 * t992;
t965 = t983 * t1161;
t926 = -t965 + t954;
t964 = t983 * t1162;
t927 = t1152 + t964;
t1091 = t1004 * t927 - t1008 * t926;
t963 = t1207 * t1180;
t842 = t1091 * t999 + t994 * t963;
t873 = t1004 * t926 + t1008 * t927;
t1064 = t1005 * t873 + t1009 * t842;
t840 = t1091 * t994 - t999 * t963;
t727 = t1000 * t1064 - t995 * t840;
t794 = -t1005 * t842 + t1009 * t873;
t1129 = t727 * t997 + t794 * t992;
t925 = t965 + t954;
t928 = t1152 - t964;
t1092 = t1004 * t928 + t1008 * t925;
t962 = (t989 - t990) * t1180;
t843 = t1092 * t999 - t994 * t962;
t874 = -t1004 * t925 + t1008 * t928;
t1063 = t1005 * t874 + t1009 * t843;
t841 = t1092 * t994 + t999 * t962;
t728 = t1000 * t1063 - t995 * t841;
t795 = -t1005 * t843 + t1009 * t874;
t1128 = t728 * t997 + t795 * t992;
t740 = t747 * t1000;
t1127 = -t1065 * t992 + t740 * t997;
t1090 = t1008 * t936 - t1194;
t924 = (t1175 + (qJD(4) + t983) * t1177) * t994;
t851 = t1090 * t999 - t994 * t924;
t1062 = t1005 * t900 + t1009 * t851;
t850 = t1090 * t994 + t999 * t924;
t749 = t1000 * t1062 - t995 * t850;
t802 = -t1005 * t851 + t1009 * t900;
t1126 = t749 * t997 + t802 * t992;
t955 = -t1165 + t1226;
t1089 = t1008 * t955 + t1195;
t864 = t1089 * t999 - t994 * t926;
t906 = -t1004 * t955 + t1184;
t1061 = t1005 * t906 + t1009 * t864;
t861 = t1089 * t994 + t999 * t926;
t762 = t1000 * t1061 - t995 * t861;
t809 = -t1005 * t864 + t1009 * t906;
t1125 = t762 * t997 + t809 * t992;
t956 = t1164 - t1226;
t1087 = t1004 * t956 + t1183;
t865 = t1087 * t999 - t994 * t927;
t907 = t1008 * t956 - t1194;
t1060 = t1005 * t907 + t1009 * t865;
t862 = t1087 * t994 + t999 * t927;
t763 = t1000 * t1060 - t995 * t862;
t810 = -t1005 * t865 + t1009 * t907;
t1124 = t763 * t997 + t810 * t992;
t1088 = t1004 * t957 + t1184;
t866 = t1088 * t999 + t994 * t928;
t1059 = t1005 * t908 + t1009 * t866;
t863 = t1088 * t994 - t999 * t928;
t764 = t1000 * t1059 - t995 * t863;
t811 = -t1005 * t866 + t1009 * t908;
t1123 = t764 * t997 + t811 * t992;
t987 = t994 * t988;
t895 = (-t987 * t1176 + (-t1053 * t994 - t979) * t999) * t1008;
t917 = -t1004 * t1152 - t1170 * t990;
t1058 = t1005 * t917 + t1009 * t895;
t1112 = qJD(3) * t983 - t1010 * t999;
t896 = (-t1004 * t1112 * t988 + t1152 * t994) * t1008;
t800 = t1000 * t1058 - t995 * t896;
t838 = -t1005 * t895 + t1009 * t917;
t1122 = t800 * t997 + t838 * t992;
t898 = (t954 * t999 + (t1010 * t987 + t1170 * t999) * t1008) * t1004;
t918 = t1008 * t954 - t1170 * t989;
t1057 = t1005 * t918 + t1009 * t898;
t897 = (t1112 * t1182 + t954 * t994) * t1004;
t801 = t1000 * t1057 - t995 * t897;
t839 = -t1005 * t898 + t1009 * t918;
t1121 = t801 * t997 + t839 * t992;
t878 = -t995 * t999 * t982 + (-t1181 * t982 + t1192) * t1000;
t901 = t1005 * t982 * t994 + t1009 * t930;
t1120 = t878 * t997 + t901 * t992;
t852 = t910 * t997 - t911 * t992;
t961 = t972 * t1000;
t1118 = -t1056 * t992 + t961 * t997;
t931 = t977 * t998 - t978 * t993;
t424 = -pkin(11) * t477 + (-pkin(12) * t1007 + t1222) * t499;
t441 = -pkin(4) * t477 + pkin(5) * t616 - pkin(12) * t500;
t1040 = pkin(10) * t448 + t1004 * t424 + t1008 * t441;
t404 = pkin(11) * t478 + (-pkin(12) * t1003 + t1163) * t499;
t365 = -pkin(3) * t413 + t1040 * t999 - t994 * t404;
t371 = -t1004 * t441 + t1008 * t424 + (-t413 * t994 - t414 * t999) * pkin(10);
t1052 = pkin(9) * t392 + t1005 * t371 + t1009 * t365;
t489 = -pkin(12) * t705 - t499;
t468 = -pkin(11) * t671 + t1007 * t489 + t1222 * t705;
t472 = -pkin(4) * t671 - pkin(5) * t824 - pkin(12) * t707 - t500;
t1039 = pkin(10) * t602 + t1004 * t468 + t1008 * t472;
t460 = pkin(11) * t672 + t1003 * t489 + t1163 * t705;
t396 = -pkin(3) * t560 + t1039 * t999 - t994 * t460;
t407 = -t1004 * t472 + t1008 * t468 + (-t560 * t994 - t561 * t999) * pkin(10);
t1051 = pkin(9) * t518 + t1005 * t407 + t1009 * t396;
t550 = -pkin(5) * t750 + t566;
t587 = -pkin(12) * t750 + t1202;
t492 = -pkin(11) * t687 - t1003 * t550 + t1007 * t587;
t541 = -pkin(4) * t687 - pkin(5) * t786 - pkin(12) * t751 + t1191;
t1038 = pkin(10) * t635 + t1004 * t492 + t1008 * t541;
t480 = -pkin(4) * t750 + pkin(11) * t688 + t1003 * t587 + t1007 * t550;
t410 = -pkin(3) * t577 + t1038 * t999 - t994 * t480;
t438 = -t1004 * t541 + t1008 * t492 + (-t577 * t994 - t578 * t999) * pkin(10);
t1050 = pkin(9) * t534 + t1005 * t438 + t1009 * t410;
t551 = -pkin(5) * t757 + t567;
t592 = -pkin(12) * t757 + t1191;
t493 = -pkin(11) * t691 - t1003 * t551 + t1007 * t592;
t546 = -pkin(4) * t691 + pkin(5) * t787 - pkin(12) * t758 - t1202;
t1037 = pkin(10) * t645 + t1004 * t493 + t1008 * t546;
t483 = -pkin(4) * t757 + pkin(11) * t692 + t1003 * t592 + t1007 * t551;
t416 = -pkin(3) * t581 + t1037 * t999 - t994 * t483;
t443 = -t1004 * t546 + t1008 * t493 + (-t581 * t994 - t582 * t999) * pkin(10);
t1049 = pkin(9) * t536 + t1005 * t443 + t1009 * t416;
t1016 = pkin(10) * t537 + t1155 * t564;
t538 = -pkin(4) * t702 + pkin(11) * t565;
t418 = -pkin(3) * t486 + t1016 * t999 - t994 * t538;
t423 = (-pkin(11) * t1008 + t1224) * t564 + (-t486 * t994 - t487 * t999) * pkin(10);
t1048 = pkin(9) * t457 + t1005 * t423 + t1009 * t418;
t553 = -pkin(11) * t791 - t564;
t1018 = pkin(10) * t738 + t1004 * t553 - t1223 * t791;
t549 = pkin(4) * t879 + pkin(11) * t793 + t565;
t465 = -pkin(3) * t683 + t1018 * t999 - t994 * t549;
t505 = t791 * t1224 + t1008 * t553 + (-t683 * t994 - t684 * t999) * pkin(10);
t1047 = pkin(9) * t627 + t1005 * t505 + t1009 * t465;
t613 = -pkin(4) * t815 + t637;
t666 = -pkin(11) * t815 + t1199;
t1036 = pkin(10) * t765 + t1004 * t666 + t1008 * t613;
t650 = -pkin(4) * t1233 + pkin(11) * t816 - t1188;
t509 = -pkin(3) * t712 + t1036 * t999 - t994 * t650;
t526 = -t1004 * t613 + t1008 * t666 + (-t712 * t994 - t713 * t999) * pkin(10);
t1046 = pkin(9) * t656 + t1005 * t526 + t1009 * t509;
t614 = -pkin(4) * t827 + t638;
t670 = -pkin(11) * t827 + t1188;
t1035 = pkin(10) * t769 + t1004 * t670 + t1008 * t614;
t655 = -pkin(4) * t857 + pkin(11) * t828 + t1199;
t513 = -pkin(3) * t717 + t1035 * t999 - t994 * t655;
t531 = -t1004 * t614 + t1008 * t670 + (-t717 * t994 - t718 * t999) * pkin(10);
t1045 = pkin(9) * t663 + t1005 * t531 + t1009 * t513;
t533 = (-t599 * t994 - t600 * t999) * pkin(10);
t547 = pkin(10) * t632 * t999 - pkin(3) * t599;
t1044 = pkin(9) * t545 + t1005 * t533 + t1009 * t547;
t601 = (-t840 * t994 - t842 * t999) * pkin(10) - t1103;
t1034 = pkin(10) * t873 + t632;
t606 = -pkin(3) * t840 + t1034 * t999;
t1043 = pkin(9) * t794 + t1005 * t601 + t1009 * t606;
t629 = -pkin(3) * t850 + t1154 * t999 + t994 * t715;
t693 = -t1185 + (-t850 * t994 - t851 * t999) * pkin(10);
t1042 = pkin(9) * t802 + t1005 * t693 + t1009 * t629;
t634 = -pkin(3) * t863 + t1153 * t999 + t994 * t714;
t704 = -t1196 + (-t863 * t994 - t866 * t999) * pkin(10);
t1041 = pkin(9) * t811 + t1005 * t704 + t1009 * t634;
t364 = pkin(3) * t414 + t1040 * t994 + t999 * t404;
t384 = t1000 * t413 + t1086 * t995;
t348 = -pkin(2) * t384 + t1000 * t1052 - t995 * t364;
t351 = -t1005 * t365 + t1009 * t371 + (-t1000 * t385 - t384 * t995) * pkin(9);
t366 = -t385 * t992 + t392 * t997;
t1033 = qJ(2) * t366 + t348 * t997 + t351 * t992;
t395 = pkin(3) * t561 + t1039 * t994 + t999 * t460;
t473 = t1000 * t560 + t1084 * t995;
t363 = -pkin(2) * t473 + t1000 * t1051 - t995 * t395;
t375 = -t1005 * t396 + t1009 * t407 + (-t1000 * t474 - t473 * t995) * pkin(9);
t449 = -t474 * t992 + t518 * t997;
t1032 = qJ(2) * t449 + t363 * t997 + t375 * t992;
t417 = pkin(3) * t487 + t1016 * t994 + t999 * t538;
t430 = t1000 * t486 + t1085 * t995;
t368 = -pkin(2) * t430 + t1000 * t1048 - t995 * t417;
t372 = -t1005 * t418 + t1009 * t423 + (-t1000 * t431 - t430 * t995) * pkin(9);
t397 = -t431 * t992 + t457 * t997;
t1031 = qJ(2) * t397 + t368 * t997 + t372 * t992;
t409 = pkin(3) * t578 + t1038 * t994 + t999 * t480;
t494 = t1000 * t577 + t1082 * t995;
t377 = -pkin(2) * t494 + t1000 * t1050 - t995 * t409;
t386 = -t1005 * t410 + t1009 * t438 + (-t1000 * t495 - t494 * t995) * pkin(9);
t458 = -t495 * t992 + t534 * t997;
t1030 = qJ(2) * t458 + t377 * t997 + t386 * t992;
t415 = pkin(3) * t582 + t1037 * t994 + t999 * t483;
t497 = t1000 * t581 + t1081 * t995;
t380 = -pkin(2) * t497 + t1000 * t1049 - t995 * t415;
t387 = -t1005 * t416 + t1009 * t443 + (-t1000 * t498 - t497 * t995) * pkin(9);
t459 = -t498 * t992 + t536 * t997;
t1029 = qJ(2) * t459 + t380 * t997 + t387 * t992;
t464 = pkin(3) * t684 + t1018 * t994 + t999 * t549;
t575 = t1000 * t683 + t1074 * t995;
t399 = -pkin(2) * t575 + t1000 * t1047 - t995 * t464;
t422 = -t1005 * t465 + t1009 * t505 + (-t1000 * t576 - t575 * t995) * pkin(9);
t532 = -t576 * t992 + t627 * t997;
t1028 = qJ(2) * t532 + t399 * t997 + t422 * t992;
t506 = t1000 * t599 + t1078 * t995;
t548 = pkin(3) * t600 + t1225 * t632;
t420 = -pkin(2) * t506 + t1000 * t1044 - t995 * t548;
t427 = -t1005 * t547 + t1009 * t533 + (-t1000 * t507 - t506 * t995) * pkin(9);
t463 = -t507 * t992 + t545 * t997;
t1027 = qJ(2) * t463 + t420 * t997 + t427 * t992;
t508 = pkin(3) * t713 + t1036 * t994 + t999 * t650;
t595 = t1000 * t712 + t1072 * t995;
t426 = -pkin(2) * t595 + t1000 * t1046 - t995 * t508;
t446 = -t1005 * t509 + t1009 * t526 + (-t1000 * t596 - t595 * t995) * pkin(9);
t554 = -t596 * t992 + t656 * t997;
t1026 = qJ(2) * t554 + t426 * t997 + t446 * t992;
t512 = pkin(3) * t718 + t1035 * t994 + t999 * t655;
t603 = t1000 * t717 + t1071 * t995;
t429 = -pkin(2) * t603 + t1000 * t1045 - t995 * t512;
t447 = -t1005 * t513 + t1009 * t531 + (-t1000 * t604 - t603 * t995) * pkin(9);
t557 = -t604 * t992 + t663 * t997;
t1025 = qJ(2) * t557 + t429 * t997 + t447 * t992;
t605 = pkin(3) * t842 + t1034 * t994;
t725 = t1000 * t840 + t1064 * t995;
t485 = -pkin(2) * t725 + t1000 * t1043 - t995 * t605;
t514 = -t1005 * t606 + t1009 * t601 + (-t1000 * t727 - t725 * t995) * pkin(9);
t677 = -t727 * t992 + t794 * t997;
t1024 = qJ(2) * t677 + t485 * t997 + t514 * t992;
t628 = pkin(3) * t851 + t1154 * t994 - t999 * t715;
t748 = t1000 * t850 + t1062 * t995;
t520 = -pkin(2) * t748 + t1000 * t1042 - t995 * t628;
t544 = -t1005 * t629 + t1009 * t693 + (-t1000 * t749 - t748 * t995) * pkin(9);
t696 = -t749 * t992 + t802 * t997;
t1023 = qJ(2) * t696 + t520 * t997 + t544 * t992;
t633 = pkin(3) * t866 + t1153 * t994 - t999 * t714;
t761 = t1000 * t863 + t1059 * t995;
t525 = -pkin(2) * t761 + t1000 * t1041 - t995 * t633;
t552 = -t1005 * t634 + t1009 * t704 + (-t1000 * t764 - t761 * t995) * pkin(9);
t711 = -t764 * t992 + t811 * t997;
t1022 = qJ(2) * t711 + t525 * t997 + t552 * t992;
t719 = -t1000 * t1159 + t1065 * t995;
t640 = (-t1000 * t720 - t719 * t995) * pkin(9);
t657 = -t720 * t992 + t747 * t997;
t658 = -pkin(2) * t719 + t1221 * t747;
t1021 = qJ(2) * t657 + t640 * t992 + t658 * t997;
t755 = pkin(2) * t958 - t1000 * t1114 - t1221 * t972 + t995 * t823;
t826 = -t1113 + (t1000 * t960 + t958 * t995) * pkin(9);
t1020 = qJ(2) * t920 + t755 * t997 + t826 * t992;
t959 = t972 * t995;
t756 = -pkin(2) * t959 + t1000 * t1113 - t1056 * t1221 + t995 * t822;
t825 = -t1114 + (-t1000 * t961 - t959 * t995) * pkin(9);
t921 = -t1056 * t997 - t961 * t992;
t1019 = qJ(2) * t921 + t756 * t997 + t825 * t992;
t949 = (-t1000 * t996 - t1203 * t995) * qJDD(3);
t890 = t1001 * t1118 - t996 * t959;
t887 = t1001 * t959 + t1118 * t996;
t877 = t995 * t1192 + (t1000 * t999 - t1181 * t995) * t982;
t872 = t1203 * t938 + t910 * t996;
t871 = -t1205 * t992 + t911 * t996;
t847 = t853 * t1001;
t836 = -t890 * t993 + t921 * t998;
t834 = t890 * t998 + t921 * t993;
t821 = -t1001 * t852 + t1212;
t820 = -t852 * t996 - t1205;
t817 = -t878 * t992 + t901 * t997;
t799 = t1000 * t897 + t1057 * t995;
t798 = t1000 * t896 + t1058 * t995;
t775 = t1001 * t1120 - t996 * t877;
t768 = -pkin(1) * t820 + t1001 * t1220;
t767 = -t821 * t993 + t853 * t998;
t766 = t821 * t998 + t853 * t993;
t760 = t1000 * t862 + t1060 * t995;
t759 = t1000 * t861 + t1061 * t995;
t754 = pkin(2) * t961 - t1000 * t822 + (-pkin(9) * t1056 + t1113) * t995;
t753 = -pkin(2) * t960 - t1000 * t823 + (-pkin(9) * t972 - t1114) * t995;
t741 = (-t1001 * t821 - t820 * t996) * qJ(2);
t737 = -t801 * t992 + t839 * t997;
t736 = -t800 * t992 + t838 * t997;
t726 = t1000 * t841 + t1063 * t995;
t710 = -t763 * t992 + t810 * t997;
t709 = -t762 * t992 + t809 * t997;
t686 = t1001 * t1121 - t996 * t799;
t685 = t1001 * t1122 - t996 * t798;
t679 = t1000 * t796 + t1066 * t995;
t678 = -t728 * t992 + t795 * t997;
t674 = -t992 * t755 + t997 * t826 + (t1001 * t888 + t1228 * t996) * qJ(2);
t673 = -t992 * t756 + t997 * t825 + (-t1001 * t890 - t887 * t996) * qJ(2);
t669 = -t1065 * t997 - t740 * t992;
t659 = pkin(2) * t720 + pkin(9) * t739;
t654 = t1001 * t1123 - t996 * t761;
t653 = t1001 * t1124 - t996 * t760;
t652 = t1001 * t1125 - t996 * t759;
t651 = t1001 * t761 + t1123 * t996;
t647 = t1001 * t1126 - t996 * t748;
t646 = t1001 * t748 + t1126 * t996;
t642 = t1000 * t743 + t1067 * t995;
t641 = t1000 * t742 + t1068 * t995;
t631 = pkin(1) * t1228 + t1001 * t1020 - t996 * t753;
t630 = -pkin(1) * t887 + t1001 * t1019 - t996 * t754;
t626 = -t680 * t992 + t731 * t997;
t621 = t1001 * t1128 - t996 * t726;
t620 = t1001 * t1129 - t996 * t725;
t619 = t1001 * t725 + t1129 * t996;
t618 = t1001 * t1127 - t996 * t739;
t610 = t1000 * t722 + t1069 * t995;
t609 = t1000 * t721 + t1070 * t995;
t598 = t1001 * t1130 - t996 * t719;
t597 = t1001 * t719 + t1130 * t996;
t594 = -t654 * t993 + t711 * t998;
t593 = t654 * t998 + t711 * t993;
t586 = -t647 * t993 + t696 * t998;
t585 = t647 * t998 + t696 * t993;
t584 = -t644 * t992 + t695 * t997;
t583 = -t643 * t992 + t694 * t997;
t579 = t1000 * t689 + t1073 * t995;
t574 = t1001 * t1131 - t996 * t679;
t573 = -t620 * t993 + t677 * t998;
t572 = t620 * t998 + t677 * t993;
t563 = -t612 * t992 + t668 * t997;
t562 = -t611 * t992 + t667 * t997;
t558 = t1000 * t664 + t1075 * t995;
t556 = -t598 * t993 + t657 * t998;
t555 = t598 * t998 + t657 * t993;
t540 = t1001 * t1132 - t996 * t642;
t539 = t1001 * t1133 - t996 * t641;
t535 = -t580 * t992 + t639 * t997;
t528 = t1000 * t623 + t1076 * t995;
t527 = t1000 * t622 + t1077 * t995;
t524 = pkin(2) * t764 + t1000 * t633 + t1041 * t995;
t522 = t1001 * t1134 - t996 * t610;
t521 = t1001 * t1135 - t996 * t609;
t519 = pkin(2) * t749 + t1000 * t628 + t1042 * t995;
t517 = -t559 * t992 + t607 * t997;
t516 = t1001 * t1136 - t996 * t603;
t515 = t1001 * t603 + t1136 * t996;
t511 = t1001 * t1137 - t996 * t595;
t510 = t1001 * t595 + t1137 * t996;
t502 = t1000 * t589 + t1079 * t995;
t501 = t1000 * t588 + t1080 * t995;
t496 = t1001 * t1138 - t996 * t579;
t491 = t1001 * t1139 - t996 * t575;
t490 = t1001 * t575 + t1139 * t996;
t488 = t997 * t640 - t992 * t658 + (-t1001 * t598 - t597 * t996) * qJ(2);
t484 = pkin(2) * t727 + t1000 * t605 + t1043 * t995;
t482 = -t530 * t992 + t571 * t997;
t481 = -t529 * t992 + t570 * t997;
t479 = -pkin(1) * t597 + t1001 * t1021 - t996 * t659;
t475 = t1000 * t568 + t1083 * t995;
t471 = t1001 * t1140 - t996 * t558;
t470 = -t516 * t993 + t557 * t998;
t469 = t516 * t998 + t557 * t993;
t467 = -t511 * t993 + t554 * t998;
t466 = t511 * t998 + t554 * t993;
t462 = -t504 * t992 + t543 * t997;
t461 = -t503 * t992 + t542 * t997;
t456 = -t992 * t525 + t997 * t552 + (-t1001 * t654 - t651 * t996) * qJ(2);
t455 = -t491 * t993 + t532 * t998;
t454 = t491 * t998 + t532 * t993;
t453 = -t992 * t520 + t997 * t544 + (-t1001 * t647 - t646 * t996) * qJ(2);
t452 = t1001 * t1141 - t996 * t528;
t451 = t1001 * t1142 - t996 * t527;
t450 = -t476 * t992 + t523 * t997;
t445 = t1001 * t1143 - t996 * t506;
t444 = t1001 * t506 + t1143 * t996;
t442 = -pkin(1) * t651 + t1001 * t1022 - t996 * t524;
t440 = t1001 * t1144 - t996 * t502;
t439 = t1001 * t1145 - t996 * t501;
t437 = -t992 * t485 + t997 * t514 + (-t1001 * t620 - t619 * t996) * qJ(2);
t436 = -pkin(1) * t646 + t1001 * t1023 - t996 * t519;
t435 = t1001 * t1146 - t996 * t497;
t434 = t1001 * t497 + t1146 * t996;
t433 = t1001 * t1147 - t996 * t494;
t432 = t1001 * t494 + t1147 * t996;
t428 = pkin(2) * t604 + t1000 * t512 + t1045 * t995;
t425 = pkin(2) * t596 + t1000 * t508 + t1046 * t995;
t421 = t1001 * t1148 - t996 * t475;
t419 = pkin(2) * t507 + t1000 * t548 + t1044 * t995;
t412 = t1001 * t1149 - t996 * t473;
t411 = t1001 * t473 + t1149 * t996;
t408 = -pkin(1) * t619 + t1001 * t1024 - t996 * t484;
t406 = -t445 * t993 + t463 * t998;
t405 = t445 * t998 + t463 * t993;
t403 = -t435 * t993 + t459 * t998;
t402 = t435 * t998 + t459 * t993;
t401 = -t433 * t993 + t458 * t998;
t400 = t433 * t998 + t458 * t993;
t398 = pkin(2) * t576 + t1000 * t464 + t1047 * t995;
t394 = -t412 * t993 + t449 * t998;
t393 = t412 * t998 + t449 * t993;
t391 = -t992 * t429 + t997 * t447 + (-t1001 * t516 - t515 * t996) * qJ(2);
t390 = -t992 * t426 + t997 * t446 + (-t1001 * t511 - t510 * t996) * qJ(2);
t389 = t1001 * t1150 - t996 * t430;
t388 = t1001 * t430 + t1150 * t996;
t383 = -pkin(1) * t515 + t1001 * t1025 - t996 * t428;
t382 = -pkin(1) * t510 + t1001 * t1026 - t996 * t425;
t381 = -t992 * t399 + t997 * t422 + (-t1001 * t491 - t490 * t996) * qJ(2);
t379 = pkin(2) * t498 + t1000 * t415 + t1049 * t995;
t378 = -t992 * t420 + t997 * t427 + (-t1001 * t445 - t444 * t996) * qJ(2);
t376 = pkin(2) * t495 + t1000 * t409 + t1050 * t995;
t374 = -t389 * t993 + t397 * t998;
t373 = t389 * t998 + t397 * t993;
t370 = -pkin(1) * t444 + t1001 * t1027 - t996 * t419;
t369 = -pkin(1) * t490 + t1001 * t1028 - t996 * t398;
t367 = pkin(2) * t431 + t1000 * t417 + t1048 * t995;
t362 = pkin(2) * t474 + t1000 * t395 + t1051 * t995;
t361 = t1001 * t1151 - t996 * t384;
t360 = t1001 * t384 + t1151 * t996;
t359 = -t992 * t380 + t997 * t387 + (-t1001 * t435 - t434 * t996) * qJ(2);
t358 = -t992 * t377 + t997 * t386 + (-t1001 * t433 - t432 * t996) * qJ(2);
t357 = -pkin(1) * t434 + t1001 * t1029 - t996 * t379;
t356 = -t992 * t363 + t997 * t375 + (-t1001 * t412 - t411 * t996) * qJ(2);
t355 = -pkin(1) * t432 + t1001 * t1030 - t996 * t376;
t354 = -t361 * t993 + t366 * t998;
t353 = t361 * t998 + t366 * t993;
t352 = -t992 * t368 + t997 * t372 + (-t1001 * t389 - t388 * t996) * qJ(2);
t350 = -pkin(1) * t411 + t1001 * t1032 - t996 * t362;
t349 = -pkin(1) * t388 + t1001 * t1031 - t996 * t367;
t347 = pkin(2) * t385 + t1000 * t364 + t1052 * t995;
t346 = -t992 * t348 + t997 * t351 + (-t1001 * t361 - t360 * t996) * qJ(2);
t345 = -pkin(1) * t360 + t1001 * t1033 - t996 * t347;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t932, 0, 0, 0, 0, 0, 0, 0, 0, 0, t767, 0, 0, 0, 0, 0, 0, t836, t835, 0, t556, 0, 0, 0, 0, 0, 0, t594, t586, t573, t406, 0, 0, 0, 0, 0, 0, t467, t470, t455, t374, 0, 0, 0, 0, 0, 0, t401, t403, t394, t354; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t931, 0, 0, 0, 0, 0, 0, 0, 0, 0, t766, 0, 0, 0, 0, 0, 0, t834, -t1239, 0, t555, 0, 0, 0, 0, 0, 0, t593, t585, t572, t405, 0, 0, 0, 0, 0, 0, t466, t469, t454, t373, 0, 0, 0, 0, 0, 0, t400, t402, t393, t353; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t991, 0, 0, 0, 0, 0, 0, 0, 0, 0, t820, 0, 0, 0, 0, 0, 0, t887, -t1228, 0, t597, 0, 0, 0, 0, 0, 0, t651, t646, t619, t444, 0, 0, 0, 0, 0, 0, t510, t515, t490, t388, 0, 0, 0, 0, 0, 0, t432, t434, t411, t360; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1213, -t1209, -t931, -qJ(1) * t931, 0, 0, 0, 0, 0, 0, -t1216 * t992 - t872 * t993, -t1216 * t997 - t871 * t993, -t847 * t993 + t852 * t998, -qJ(1) * t766 + t741 * t998 - t768 * t993, 0, 0, -t835, 0, t836, t1160 * t998 - t949 * t993, -qJ(1) * t834 - t630 * t993 + t673 * t998, qJ(1) * t1239 - t631 * t993 + t674 * t998, -t618 * t993 + t669 * t998, -qJ(1) * t555 - t479 * t993 + t488 * t998, -t686 * t993 + t737 * t998, -t621 * t993 + t678 * t998, -t652 * t993 + t709 * t998, -t685 * t993 + t736 * t998, -t653 * t993 + t710 * t998, -t775 * t993 + t817 * t998, -qJ(1) * t593 - t442 * t993 + t456 * t998, -qJ(1) * t585 - t436 * t993 + t453 * t998, -qJ(1) * t572 - t408 * t993 + t437 * t998, -qJ(1) * t405 - t370 * t993 + t378 * t998, -t540 * t993 + t584 * t998, -t496 * t993 + t535 * t998, -t521 * t993 + t562 * t998, -t539 * t993 + t583 * t998, -t522 * t993 + t563 * t998, -t574 * t993 + t626 * t998, -qJ(1) * t466 - t382 * t993 + t390 * t998, -qJ(1) * t469 - t383 * t993 + t391 * t998, -qJ(1) * t454 - t369 * t993 + t381 * t998, -qJ(1) * t373 - t349 * t993 + t352 * t998, -t452 * t993 + t482 * t998, -t421 * t993 + t450 * t998, -t439 * t993 + t461 * t998, -t451 * t993 + t481 * t998, -t440 * t993 + t462 * t998, -t471 * t993 + t517 * t998, -qJ(1) * t400 - t355 * t993 + t358 * t998, -qJ(1) * t402 - t357 * t993 + t359 * t998, -qJ(1) * t393 - t350 * t993 + t356 * t998, -qJ(1) * t353 - t345 * t993 + t346 * t998; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1209, -t1213, t932, qJ(1) * t932, 0, 0, 0, 0, 0, 0, -t1218 * t992 + t872 * t998, -t1218 * t997 + t871 * t998, t847 * t998 + t852 * t993, qJ(1) * t767 + t741 * t993 + t768 * t998, 0, 0, t1239, 0, t834, t1160 * t993 + t949 * t998, qJ(1) * t836 + t630 * t998 + t673 * t993, qJ(1) * t835 + t631 * t998 + t674 * t993, t618 * t998 + t669 * t993, qJ(1) * t556 + t479 * t998 + t488 * t993, t686 * t998 + t737 * t993, t621 * t998 + t678 * t993, t652 * t998 + t709 * t993, t685 * t998 + t736 * t993, t653 * t998 + t710 * t993, t775 * t998 + t817 * t993, qJ(1) * t594 + t442 * t998 + t456 * t993, qJ(1) * t586 + t436 * t998 + t453 * t993, qJ(1) * t573 + t408 * t998 + t437 * t993, qJ(1) * t406 + t370 * t998 + t378 * t993, t540 * t998 + t584 * t993, t496 * t998 + t535 * t993, t521 * t998 + t562 * t993, t539 * t998 + t583 * t993, t522 * t998 + t563 * t993, t574 * t998 + t626 * t993, qJ(1) * t467 + t382 * t998 + t390 * t993, qJ(1) * t470 + t383 * t998 + t391 * t993, qJ(1) * t455 + t369 * t998 + t381 * t993, qJ(1) * t374 + t349 * t998 + t352 * t993, t452 * t998 + t482 * t993, t421 * t998 + t450 * t993, t439 * t998 + t461 * t993, t451 * t998 + t481 * t993, t440 * t998 + t462 * t993, t471 * t998 + t517 * t993, qJ(1) * t401 + t355 * t998 + t358 * t993, qJ(1) * t403 + t357 * t998 + t359 * t993, qJ(1) * t394 + t350 * t998 + t356 * t993, qJ(1) * t354 + t345 * t998 + t346 * t993; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t977, t978, 0, 0, 0, 0, 0, 0, 0, 0, -t1001 * t910 + t1210 * t938, -t1001 * t911 - t1212 * t992, t853 * t996, pkin(1) * t821 + t1220 * t996, 0, 0, t1228, 0, t887, (t1000 * t1001 - t1210 * t995) * qJDD(3), pkin(1) * t890 + t1001 * t754 + t1019 * t996, -pkin(1) * t888 + t1001 * t753 + t1020 * t996, t1001 * t739 + t1127 * t996, pkin(1) * t598 + t1001 * t659 + t1021 * t996, t1001 * t799 + t1121 * t996, t1001 * t726 + t1128 * t996, t1001 * t759 + t1125 * t996, t1001 * t798 + t1122 * t996, t1001 * t760 + t1124 * t996, t1001 * t877 + t1120 * t996, pkin(1) * t654 + t1001 * t524 + t1022 * t996, pkin(1) * t647 + t1001 * t519 + t1023 * t996, pkin(1) * t620 + t1001 * t484 + t1024 * t996, pkin(1) * t445 + t1001 * t419 + t1027 * t996, t1001 * t642 + t1132 * t996, t1001 * t579 + t1138 * t996, t1001 * t609 + t1135 * t996, t1001 * t641 + t1133 * t996, t1001 * t610 + t1134 * t996, t1001 * t679 + t1131 * t996, pkin(1) * t511 + t1001 * t425 + t1026 * t996, pkin(1) * t516 + t1001 * t428 + t1025 * t996, pkin(1) * t491 + t1001 * t398 + t1028 * t996, pkin(1) * t389 + t1001 * t367 + t1031 * t996, t1001 * t528 + t1141 * t996, t1001 * t475 + t1148 * t996, t1001 * t501 + t1145 * t996, t1001 * t527 + t1142 * t996, t1001 * t502 + t1144 * t996, t1001 * t558 + t1140 * t996, pkin(1) * t433 + t1001 * t376 + t1030 * t996, pkin(1) * t435 + t1001 * t379 + t1029 * t996, pkin(1) * t412 + t1001 * t362 + t1032 * t996, pkin(1) * t361 + t1001 * t347 + t1033 * t996;];
tauB_reg  = t1;
