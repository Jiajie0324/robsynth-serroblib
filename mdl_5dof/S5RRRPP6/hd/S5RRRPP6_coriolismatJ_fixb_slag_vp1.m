% Calculate matrix of centrifugal and coriolis load on the joints for
% S5RRRPP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,theta4]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [6x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% Cq [5x5]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:03
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5RRRPP6_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPP6_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPP6_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRPP6_coriolismatJ_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRPP6_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRPP6_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRPP6_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:00:02
% EndTime: 2019-12-31 21:01:31
% DurationCPUTime: 76.01s
% Computational Cost: add. (93544->1271), mult. (143322->1704), div. (0->0), fcn. (156415->8), ass. (0->721)
t808 = sin(qJ(2));
t809 = sin(qJ(1));
t1095 = t808 * t809;
t802 = qJ(3) + pkin(8);
t794 = sin(t802);
t812 = cos(qJ(1));
t1081 = t812 * t794;
t811 = cos(qJ(2));
t1089 = t809 * t811;
t795 = cos(t802);
t694 = t1089 * t795 - t1081;
t675 = Icges(6,5) * t694;
t693 = t1089 * t794 + t795 * t812;
t511 = -Icges(6,6) * t1095 - Icges(6,3) * t693 - t675;
t513 = Icges(5,5) * t694 - Icges(5,6) * t693 + Icges(5,3) * t1095;
t516 = Icges(6,4) * t694 + Icges(6,2) * t1095 + Icges(6,6) * t693;
t678 = Icges(5,4) * t694;
t519 = -Icges(5,2) * t693 + Icges(5,6) * t1095 + t678;
t674 = Icges(6,5) * t693;
t522 = Icges(6,1) * t694 + Icges(6,4) * t1095 + t674;
t677 = Icges(5,4) * t693;
t526 = -Icges(5,1) * t694 - Icges(5,5) * t1095 + t677;
t810 = cos(qJ(3));
t1086 = t810 * t812;
t807 = sin(qJ(3));
t736 = t807 * t1089 + t1086;
t1080 = t812 * t807;
t737 = t1089 * t810 - t1080;
t570 = Icges(4,5) * t737 - Icges(4,6) * t736 + Icges(4,3) * t1095;
t730 = Icges(4,4) * t737;
t573 = -Icges(4,2) * t736 + Icges(4,6) * t1095 + t730;
t729 = Icges(4,4) * t736;
t577 = -Icges(4,1) * t737 - Icges(4,5) * t1095 + t729;
t1349 = -t573 * t736 - t577 * t737 + (t522 - t526) * t694 + (-t511 - t519) * t693 + (t513 + t516 + t570) * t1095;
t1093 = t808 * t812;
t1085 = t811 * t812;
t1092 = t809 * t794;
t696 = t1085 * t795 + t1092;
t676 = Icges(6,5) * t696;
t695 = t1081 * t811 - t809 * t795;
t512 = Icges(6,6) * t1093 + Icges(6,3) * t695 + t676;
t515 = Icges(5,5) * t696 - Icges(5,6) * t695 + Icges(5,3) * t1093;
t518 = Icges(6,4) * t696 + Icges(6,2) * t1093 + Icges(6,6) * t695;
t1132 = Icges(5,4) * t696;
t521 = -Icges(5,2) * t695 + Icges(5,6) * t1093 + t1132;
t1126 = Icges(6,5) * t695;
t524 = Icges(6,1) * t696 + Icges(6,4) * t1093 + t1126;
t679 = Icges(5,4) * t695;
t527 = Icges(5,1) * t696 + Icges(5,5) * t1093 - t679;
t738 = -t811 * t1080 + t809 * t810;
t1091 = t809 * t807;
t739 = t1085 * t810 + t1091;
t572 = Icges(4,5) * t739 + Icges(4,6) * t738 + Icges(4,3) * t1093;
t1135 = Icges(4,4) * t739;
t575 = Icges(4,2) * t738 + Icges(4,6) * t1093 + t1135;
t731 = Icges(4,4) * t738;
t578 = Icges(4,1) * t739 + Icges(4,5) * t1093 + t731;
t1348 = -t736 * t575 + t737 * t578 + (t524 + t527) * t694 + (t512 - t521) * t693 + (t515 + t518 + t572) * t1095;
t1138 = rSges(6,3) + qJ(5);
t1204 = rSges(6,1) + pkin(4);
t1321 = t1138 * t695 + t1204 * t696;
t1032 = rSges(6,2) * t1093 + t1321;
t1259 = -t1138 * t693 - t1204 * t694;
t1322 = rSges(6,2) * t1095 - t1259;
t1158 = pkin(2) * t811;
t806 = -qJ(4) - pkin(7);
t1154 = pkin(7) + t806;
t1261 = t1154 * t808;
t793 = pkin(3) * t810 + pkin(2);
t976 = pkin(3) * t1080;
t925 = -t793 * t1089 + t976;
t579 = (t1158 + t1261) * t809 + t925;
t1156 = pkin(7) * t808;
t775 = t806 * t1093;
t1155 = pkin(2) - t793;
t942 = t1155 * t811;
t975 = pkin(3) * t1091;
t580 = t975 - t775 + (-t942 - t1156) * t812;
t773 = t1156 + t1158;
t804 = t809 ^ 2;
t805 = t812 ^ 2;
t986 = t804 + t805;
t995 = t986 * t773;
t932 = -t809 * t579 + t812 * t580 + t995;
t211 = t1032 * t812 + t1322 * t809 + t932;
t1264 = -t694 * rSges(5,1) + t693 * rSges(5,2);
t531 = -rSges(5,3) * t1095 + t1264;
t907 = t696 * rSges(5,1) - t695 * rSges(5,2);
t533 = rSges(5,3) * t1093 + t907;
t283 = -t531 * t809 + t533 * t812 + t932;
t733 = t738 * pkin(3);
t989 = t736 * pkin(3);
t1004 = t812 * t733 - t809 * t989;
t1029 = t1138 * t696 - t1204 * t695;
t1030 = t1138 * t694 - t1204 * t693;
t288 = t1029 * t812 + t1030 * t809 + t1004;
t563 = -rSges(5,1) * t693 - rSges(5,2) * t694;
t568 = -t695 * rSges(5,1) - t696 * rSges(5,2);
t383 = t809 * t563 + t568 * t812 + t1004;
t1263 = -t737 * rSges(4,1) + t736 * rSges(4,2);
t582 = -rSges(4,3) * t1095 + t1263;
t910 = t739 * rSges(4,1) + t738 * rSges(4,2);
t583 = rSges(4,3) * t1093 + t910;
t397 = -t582 * t809 + t583 * t812 + t995;
t772 = pkin(2) * t808 - pkin(7) * t811;
t1343 = t1138 * t794 + t1204 * t795;
t1296 = t1343 * t808;
t1334 = rSges(6,2) * t811 - t1296;
t1260 = t1155 * t808;
t651 = t1154 * t811 - t1260;
t959 = t651 - t1334;
t930 = t772 + t959;
t433 = t930 * t809;
t435 = t930 * t812;
t604 = -rSges(4,1) * t736 - rSges(4,2) * t737;
t605 = rSges(4,1) * t738 - rSges(4,2) * t739;
t446 = t809 * t604 + t605 * t812;
t1145 = rSges(5,1) * t795;
t906 = -rSges(5,2) * t794 + t1145;
t667 = -rSges(5,3) * t811 + t808 * t906;
t1014 = t651 + t667;
t958 = t772 + t1014;
t476 = t958 * t809;
t478 = t958 * t812;
t767 = t808 * t975;
t999 = (t1138 * t795 - t1204 * t794) * t808;
t503 = -t809 * t999 + t767;
t968 = t808 * t1080;
t770 = pkin(3) * t968;
t937 = t999 * t812;
t504 = t770 - t937;
t1146 = rSges(4,1) * t810;
t909 = -rSges(4,2) * t807 + t1146;
t849 = t909 * t808;
t720 = -rSges(4,3) * t811 + t849;
t998 = t720 + t772;
t590 = t998 * t809;
t592 = t998 * t812;
t717 = (-rSges(5,1) * t794 - rSges(5,2) * t795) * t808;
t607 = -t717 * t809 + t767;
t608 = -t717 * t812 + t770;
t749 = (-rSges(4,1) * t807 - rSges(4,2) * t810) * t808;
t1347 = -m(5) * (t283 * t383 - t476 * t607 - t478 * t608) - m(4) * (t397 * t446 + (t590 * t809 + t592 * t812) * t749) - m(6) * (t211 * t288 - t433 * t503 - t435 * t504);
t1020 = t1334 * t809;
t801 = t812 * pkin(6);
t869 = t801 + t925;
t438 = (-pkin(1) + (-rSges(5,3) + t806) * t808) * t809 + t869 + t1264;
t1141 = rSges(5,3) * t808;
t1157 = pkin(3) * t807;
t868 = (pkin(6) + t1157) * t809 - t775;
t941 = t793 * t811 + pkin(1);
t439 = (t941 + t1141) * t812 + t868 + t907;
t1048 = t438 * t1085 + t439 * t1089;
t1339 = (-pkin(1) + (-rSges(6,2) + t806) * t808) * t809 + t869 + t1259;
t1144 = rSges(6,2) * t808;
t389 = (t941 + t1144) * t812 + t868 + t1321;
t1052 = t1085 * t1339 + t389 * t1089;
t1234 = m(6) / 0.2e1;
t1236 = m(5) / 0.2e1;
t1099 = t806 * t811;
t787 = rSges(6,2) * t1085;
t447 = t787 + (-t1099 + (-t1343 - t793) * t808) * t812;
t991 = t806 * t1089 + t793 * t1095;
t448 = t991 - t1020;
t1104 = t667 * t809;
t508 = t991 + t1104;
t992 = t808 * rSges(5,2) * t1081 + rSges(5,3) * t1085;
t509 = (-t1099 + (-t793 - t1145) * t808) * t812 + t992;
t1075 = ((t447 * t809 + t448 * t812) * t808 + t1052) * t1234 + ((t508 * t812 + t509 * t809) * t808 + t1048) * t1236;
t1076 = (-t433 * t1093 + t1095 * t435 + t1052) * t1234 + (-t476 * t1093 + t1095 * t478 + t1048) * t1236;
t23 = t1076 - t1075;
t1346 = t23 * qJD(1);
t1100 = t794 * t808;
t1119 = Icges(6,6) * t811;
t1124 = Icges(6,5) * t795;
t771 = t808 * t1124;
t653 = Icges(6,3) * t1100 - t1119 + t771;
t897 = Icges(6,4) * t795 + Icges(6,6) * t794;
t657 = -Icges(6,2) * t811 + t808 * t897;
t1125 = Icges(6,5) * t794;
t900 = Icges(6,1) * t795 + t1125;
t661 = -Icges(6,4) * t811 + t808 * t900;
t399 = t1095 * t657 + t653 * t693 + t661 * t694;
t894 = Icges(5,5) * t795 - Icges(5,6) * t794;
t655 = -Icges(5,3) * t811 + t808 * t894;
t1130 = Icges(5,4) * t795;
t898 = -Icges(5,2) * t794 + t1130;
t659 = -Icges(5,6) * t811 + t808 * t898;
t1131 = Icges(5,4) * t794;
t901 = Icges(5,1) * t795 - t1131;
t663 = -Icges(5,5) * t811 + t808 * t901;
t400 = t1095 * t655 - t659 * t693 + t663 * t694;
t895 = Icges(4,5) * t810 - Icges(4,6) * t807;
t697 = -Icges(4,3) * t811 + t808 * t895;
t1133 = Icges(4,4) * t810;
t899 = -Icges(4,2) * t807 + t1133;
t701 = -Icges(4,6) * t811 + t808 * t899;
t1134 = Icges(4,4) * t807;
t902 = Icges(4,1) * t810 - t1134;
t705 = -Icges(4,5) * t811 + t808 * t902;
t416 = t1095 * t697 - t701 * t736 + t705 * t737;
t1284 = t399 + t400 + t416;
t1345 = t1348 * t812 + t1349 * t809;
t1213 = t808 / 0.2e1;
t1212 = t809 / 0.2e1;
t1210 = -t811 / 0.2e1;
t1277 = -t812 / 0.2e1;
t1341 = t1339 * t693 - t389 * t695;
t1344 = t1341 * m(6) * qJD(1);
t921 = t1210 * t1284 + t1213 * t1345;
t1342 = t389 * t1234;
t1108 = t570 * t811;
t1318 = t573 * t807 + t577 * t810;
t379 = t1318 * t808 + t1108;
t1111 = t516 * t811;
t1320 = t511 * t794 - t522 * t795;
t344 = t1320 * t808 + t1111;
t1113 = t513 * t811;
t1319 = t519 * t794 + t526 * t795;
t347 = t1319 * t808 + t1113;
t403 = t1093 * t657 + t695 * t653 + t696 * t661;
t314 = t516 * t1093 - t695 * t511 + t696 * t522;
t315 = t518 * t1093 + t695 * t512 + t696 * t524;
t889 = t809 * t314 + t315 * t812;
t1329 = -t403 * t811 + t808 * t889;
t404 = t1093 * t655 - t695 * t659 + t696 * t663;
t316 = t513 * t1093 - t695 * t519 - t696 * t526;
t317 = t515 * t1093 - t695 * t521 + t696 * t527;
t888 = t809 * t316 + t317 * t812;
t1330 = -t404 * t811 + t808 * t888;
t418 = t1093 * t697 + t738 * t701 + t739 * t705;
t357 = t570 * t1093 + t738 * t573 - t739 * t577;
t358 = t572 * t1093 + t738 * t575 + t739 * t578;
t884 = t809 * t357 + t358 * t812;
t1331 = -t418 * t811 + t808 * t884;
t919 = t1331 / 0.2e1 + t1329 / 0.2e1 + t1330 / 0.2e1;
t1336 = -t531 - t579;
t1335 = -t579 + t1322;
t1333 = -t344 - t347 - t379;
t1110 = t518 * t811;
t880 = t512 * t794 + t524 * t795;
t345 = t808 * t880 - t1110;
t1112 = t515 * t811;
t878 = -t521 * t794 + t527 * t795;
t348 = t808 * t878 - t1112;
t1107 = t572 * t811;
t876 = -t575 * t807 + t578 * t810;
t380 = t808 * t876 - t1107;
t1332 = t345 + t348 + t380;
t472 = t720 * t1095 - t582 * t811;
t1328 = -t357 * t812 + t358 * t809;
t1327 = -t316 * t812 + t317 * t809;
t1326 = -t314 * t812 + t315 * t809;
t505 = t693 * t1093 - t695 * t1095;
t1161 = m(6) * t505;
t1325 = -t1161 / 0.2e1;
t499 = t1161 / 0.2e1;
t411 = t733 + t1029;
t1324 = t411 * t809;
t1323 = t439 * t1236;
t1317 = -m(4) / 0.2e1;
t1316 = -m(5) / 0.2e1;
t1315 = -m(6) / 0.2e1;
t1305 = t720 * t809;
t699 = Icges(3,5) * t1089 - Icges(3,6) * t1095 - Icges(3,3) * t812;
t782 = Icges(3,4) * t1095;
t707 = Icges(3,1) * t1089 - Icges(3,5) * t812 - t782;
t1016 = -t707 * t1085 - t809 * t699;
t703 = Icges(3,4) * t1089 - Icges(3,2) * t1095 - Icges(3,6) * t812;
t1123 = Icges(3,2) * t808;
t799 = Icges(3,4) * t811;
t704 = Icges(3,6) * t809 + (t799 - t1123) * t812;
t1136 = Icges(3,4) * t808;
t761 = Icges(3,1) * t811 - t1136;
t708 = Icges(3,5) * t809 + t761 * t812;
t644 = t708 * t1089;
t757 = Icges(3,5) * t811 - Icges(3,6) * t808;
t700 = Icges(3,3) * t809 + t812 * t757;
t936 = t812 * t700 - t644;
t1304 = -t1093 * t703 - t1095 * t704 - t1016 - t936;
t1028 = -t568 - t733;
t1303 = t1028 * t809;
t1203 = rSges(4,3) + pkin(7);
t1257 = t1203 * t808 + pkin(1) + t1158;
t481 = -t1257 * t809 + t1263 + t801;
t964 = t580 + t1032;
t1267 = t811 * t964;
t287 = t1093 * t959 + t1267;
t281 = t287 * t1093;
t545 = t811 * t579;
t940 = t1322 * t811;
t625 = t651 * t1095;
t960 = -t1095 * t1334 + t625;
t286 = -t545 + t940 + t960;
t1031 = t533 + t580;
t1262 = t1031 * t811;
t362 = t1014 * t1093 + t1262;
t354 = t362 * t1093;
t1018 = t667 * t1095 + t625;
t1109 = t531 * t811;
t361 = t1018 - t545 - t1109;
t1077 = (-t1095 * t286 - t281) * t1234 + (-t1095 * t361 - t354) * t1236;
t1054 = t1336 * t811 + t1018 - t361;
t285 = t1335 * t811 + t960;
t1059 = t285 - t286;
t1152 = (-t281 + (t1059 * t809 + t287 * t812) * t808) * t1234 + (-t354 + (t1054 * t809 + t362 * t812) * t808) * t1236;
t1293 = t1077 - t1152;
t1055 = t361 * t1085 - t362 * t1089;
t1060 = t286 * t1085 - t287 * t1089;
t1084 = t812 * t579;
t537 = t808 * t1084;
t232 = -t537 + (t1322 * t812 - t809 * t964) * t808;
t309 = -t537 + (-t1031 * t809 - t531 * t812) * t808;
t753 = t986 * t808;
t1079 = (t232 * t753 + t1060) * t1234 + (t309 * t753 + t1055) * t1236;
t788 = pkin(2) * t1095;
t924 = pkin(7) * t1089 - t788;
t600 = -t924 - t991;
t1022 = -t811 * t1084 + t600 * t1093;
t1019 = -t1296 * t812 + t787;
t791 = pkin(7) * t1085;
t601 = -t791 + (-t1099 + t1260) * t812;
t961 = -t601 - t1019;
t141 = (t1020 * t808 + t940) * t812 + (t808 * t961 - t1267) * t809 + t1022;
t1007 = t1343 * t811 + t1144;
t652 = -t942 - t1261;
t962 = t651 * t1089 + t652 * t1095 + t811 * t600;
t166 = (t1007 * t809 - t1335) * t808 + t962;
t543 = t808 * t580;
t957 = -t652 - t1007;
t167 = t543 + (t812 * t957 + t1032) * t808 + (-t812 * t959 + t961) * t811;
t624 = -t1093 * t1145 + t992;
t1021 = -t601 - t624;
t190 = (-t1104 * t808 - t1109) * t812 + (t1021 * t808 - t1262) * t809 + t1022;
t669 = t811 * t906 + t1141;
t244 = (t669 * t809 - t1336) * t808 + t962;
t1013 = -t652 - t669;
t245 = t543 + (t1013 * t812 + t533) * t808 + (-t1014 * t812 + t1021) * t811;
t1153 = (-t811 * t141 + (t166 * t812 + t167 * t809 + t232) * t808 + t1060) * t1234 + (-t811 * t190 + (t244 * t812 + t245 * t809 + t309) * t808 + t1055) * t1236;
t1292 = t1079 - t1153;
t893 = Icges(6,3) * t794 + t1124;
t834 = -t808 * t893 + t1119;
t609 = t834 * t809;
t617 = t661 * t809;
t861 = t657 * t809 - t1320;
t247 = t861 * t811 + (t609 * t794 - t617 * t795 + t516) * t808;
t615 = t659 * t809;
t619 = t663 * t809;
t859 = -t655 * t809 + t1319;
t249 = -t859 * t811 + (t615 * t794 - t619 * t795 + t513) * t808;
t634 = t701 * t809;
t636 = t705 * t809;
t857 = -t697 * t809 + t1318;
t277 = -t857 * t811 + (t634 * t807 - t636 * t810 + t570) * t808;
t1291 = t247 + t249 + t277;
t610 = t834 * t812;
t618 = t661 * t812;
t860 = t657 * t812 + t880;
t248 = t860 * t811 + (t610 * t794 - t618 * t795 + t518) * t808;
t616 = t659 * t812;
t620 = t663 * t812;
t858 = -t655 * t812 - t878;
t250 = -t858 * t811 + (t616 * t794 - t620 * t795 + t515) * t808;
t635 = t701 * t812;
t637 = t705 * t812;
t856 = -t697 * t812 - t876;
t278 = -t856 * t811 + (t635 * t807 - t637 * t810 + t572) * t808;
t1290 = t248 + t250 + t278;
t1039 = Icges(6,3) * t694 - t522 - t674;
t1043 = -Icges(6,1) * t693 - t511 + t675;
t553 = -Icges(6,4) * t693 + Icges(6,6) * t694;
t256 = -t553 * t811 + (t1039 * t794 + t1043 * t795) * t808;
t1037 = Icges(5,2) * t694 + t526 + t677;
t1041 = -Icges(5,1) * t693 - t519 - t678;
t551 = -Icges(5,5) * t693 - Icges(5,6) * t694;
t258 = -t551 * t811 + (t1037 * t794 + t1041 * t795) * t808;
t1025 = -Icges(4,2) * t737 - t577 - t729;
t1027 = -Icges(4,1) * t736 - t573 - t730;
t594 = -Icges(4,5) * t736 - Icges(4,6) * t737;
t302 = -t594 * t811 + (-t1025 * t807 + t1027 * t810) * t808;
t1289 = t256 + t258 + t302;
t1038 = Icges(6,3) * t696 - t1126 - t524;
t1042 = -Icges(6,1) * t695 + t512 + t676;
t554 = -Icges(6,4) * t695 + Icges(6,6) * t696;
t257 = -t554 * t811 + (t1038 * t794 + t1042 * t795) * t808;
t1036 = Icges(5,2) * t696 - t527 + t679;
t1040 = -Icges(5,1) * t695 - t1132 - t521;
t552 = -Icges(5,5) * t695 - Icges(5,6) * t696;
t259 = -t552 * t811 + (t1036 * t794 + t1040 * t795) * t808;
t1024 = -Icges(4,2) * t739 + t578 + t731;
t1026 = Icges(4,1) * t738 - t1135 - t575;
t595 = Icges(4,5) * t738 - Icges(4,6) * t739;
t303 = -t595 * t811 + (-t1024 * t807 + t1026 * t810) * t808;
t1288 = t257 + t259 + t303;
t654 = Icges(6,6) * t808 + t811 * t893;
t662 = Icges(6,4) * t808 + t811 * t900;
t1105 = t657 * t811;
t658 = Icges(6,2) * t808 + t811 * t897;
t873 = t794 * t653 + t795 * t661;
t855 = -t658 + t873;
t824 = -t808 * t855 + t1105;
t297 = t654 * t693 + t662 * t694 + t809 * t824;
t660 = Icges(5,6) * t808 + t811 * t898;
t664 = Icges(5,5) * t808 + t811 * t901;
t1106 = t655 * t811;
t656 = Icges(5,3) * t808 + t811 * t894;
t872 = -t794 * t659 + t795 * t663;
t854 = t656 - t872;
t825 = t808 * t854 + t1106;
t298 = -t660 * t693 + t664 * t694 + t809 * t825;
t702 = Icges(4,6) * t808 + t811 * t899;
t706 = Icges(4,5) * t808 + t811 * t902;
t1102 = t697 * t811;
t698 = Icges(4,3) * t808 + t811 * t895;
t1088 = t810 * t705;
t1098 = t807 * t701;
t871 = t1088 - t1098;
t853 = t698 - t871;
t823 = t808 * t853 + t1102;
t339 = -t702 * t736 + t706 * t737 + t809 * t823;
t1287 = -t297 - t298 - t339;
t299 = t695 * t654 + t696 * t662 + t812 * t824;
t300 = -t695 * t660 + t696 * t664 + t812 * t825;
t340 = t738 * t702 + t739 * t706 + t812 * t823;
t1286 = t299 + t300 + t340;
t332 = t855 * t811 + (t654 * t794 + t795 * t662 + t657) * t808;
t333 = -t854 * t811 + (-t660 * t794 + t795 * t664 + t655) * t808;
t1087 = t810 * t706;
t1097 = t807 * t702;
t374 = -t853 * t811 + (t1087 + t697 - t1097) * t808;
t1285 = t374 + t333 + t332;
t1283 = t403 + t404 + t418;
t427 = t808 * t873 - t1105;
t428 = t808 * t872 - t1106;
t449 = t808 * t871 - t1102;
t1282 = t427 + t428 + t449;
t1281 = t1332 * t812 + t1333 * t809;
t1280 = -t808 / 0.2e1;
t1279 = -t809 / 0.2e1;
t1278 = t811 / 0.2e1;
t1206 = t812 / 0.2e1;
t1094 = t808 * t811;
t1233 = m(6) / 0.4e1;
t1235 = m(5) / 0.4e1;
t988 = t986 * t1094;
t1265 = (t1235 + t1233) * (t988 - t1094);
t982 = qJD(2) * t812;
t410 = -t1030 + t989;
t483 = -t563 + t989;
t1058 = (m(6) * (t410 * t812 + t1324) + m(5) * (t483 * t812 - t1303)) * t1213;
t1066 = (-t811 * t288 + (t503 * t809 + t504 * t812) * t808) * t1234 + (-t811 * t383 + (t607 * t809 + t608 * t812) * t808) * t1236;
t1256 = t247 / 0.2e1 + t249 / 0.2e1 + t277 / 0.2e1;
t1255 = -t248 / 0.2e1 - t250 / 0.2e1 - t278 / 0.2e1;
t482 = t809 * pkin(6) + t1257 * t812 + t910;
t1254 = (t1339 * t504 + t389 * t503 - t410 * t435 - t411 * t433) * t1315 + (t1028 * t476 + t438 * t608 + t439 * t607 - t478 * t483) * t1316 + (-t590 * t605 + t592 * t604 + (-t481 * t812 - t482 * t809) * t749) * t1317;
t722 = rSges(4,3) * t808 + t811 * t909;
t395 = (t722 * t809 + t582) * t808;
t990 = rSges(4,2) * t968 + rSges(4,3) * t1085;
t639 = -rSges(4,1) * t1086 * t808 + t990;
t396 = (-t720 * t812 - t639) * t811 + (-t722 * t812 + t583) * t808;
t474 = t1093 * t720 + t811 * t583;
t585 = t788 + (-t1203 * t811 + t849) * t809;
t586 = t791 + (-pkin(2) - t1146) * t1093 + t990;
t1253 = (t395 * t481 + t396 * t482 + t472 * t585 - t474 * t586) * t1317 + (t1339 * t166 + t167 * t389 + t286 * t448 - t287 * t447) * t1315 + (t244 * t438 + t245 * t439 + t361 * t508 - t362 * t509) * t1316;
t1252 = -t1054 * t476 * t1316 - t1059 * t433 * t1315;
t1137 = Icges(3,1) * t808;
t947 = t663 / 0.2e1 + t661 / 0.2e1;
t949 = t659 / 0.2e1 - t653 / 0.2e1;
t1250 = t794 * t949 - t795 * t947 + t656 / 0.2e1 + t658 / 0.2e1 + t698 / 0.2e1 - t799 + t1123 / 0.2e1 - t1137 / 0.2e1 + t1098 / 0.2e1 - t1088 / 0.2e1;
t758 = Icges(3,2) * t811 + t1136;
t1249 = (t660 / 0.2e1 - t654 / 0.2e1) * t794 - (t664 / 0.2e1 + t662 / 0.2e1) * t795 - t655 / 0.2e1 - t657 / 0.2e1 - t697 / 0.2e1 + t758 / 0.2e1 - t761 / 0.2e1 + t1097 / 0.2e1 - t1087 / 0.2e1;
t709 = (Icges(6,3) * t795 - t1125) * t808;
t712 = (-Icges(5,2) * t795 - t1131) * t808;
t713 = -Icges(6,1) * t1100 + t771;
t714 = (-Icges(5,1) * t794 - t1130) * t808;
t743 = (-Icges(4,2) * t810 - t1134) * t808;
t746 = (-Icges(4,1) * t807 - t1133) * t808;
t1248 = -t794 * (t712 / 0.2e1 - t709 / 0.2e1 + t947) + t795 * (t714 / 0.2e1 + t713 / 0.2e1 - t949) - (t705 / 0.2e1 + t743 / 0.2e1) * t807 + (t746 / 0.2e1 - t701 / 0.2e1) * t810;
t744 = -Icges(3,2) * t1089 - t782;
t745 = t758 * t812;
t903 = -t799 - t1137;
t747 = t903 * t809;
t748 = t903 * t812;
t1247 = ((-t704 + t748) * t809 + (t703 - t747) * t812) * t811 + ((t707 + t744) * t812 + (-t708 + t745) * t809) * t808;
t1246 = t811 ^ 2;
t1245 = 0.2e1 * t808;
t1244 = 0.2e1 * qJD(1);
t1243 = 0.4e1 * qJD(1);
t1242 = 0.2e1 * qJD(2);
t1240 = 2 * qJD(3);
t1239 = 4 * qJD(3);
t1238 = m(4) / 0.2e1;
t1229 = m(5) * (t190 * t309 + t244 * t361 - t245 * t362);
t1227 = m(5) * t1054 * t362;
t892 = -t286 * t812 + t287 * t809;
t1224 = m(6) * (t695 * t166 + t693 * t167 + (t232 * t811 + (t141 + t892) * t808) * t794);
t1222 = m(6) * (t141 * t232 + t166 * t286 - t167 * t287);
t1220 = m(6) * t1059 * t287;
t539 = t809 * t693 + t695 * t812;
t803 = t808 ^ 2;
t602 = t1092 * t803 + t693 * t811;
t603 = -t1081 * t803 - t811 * t695;
t1219 = m(6) * (t1100 * t892 + t505 * t211 + t232 * t539 - t603 * t433 - t602 * t435);
t270 = t695 * t287;
t1061 = -t286 * t693 - t270;
t1218 = m(6) * (t285 * t693 + t1061 + t270);
t1215 = m(6) * (-t433 * t694 - t435 * t696 + t503 * t693 + t504 * t695 + (t211 * t795 + t288 * t794) * t808);
t1207 = -t812 / 0.4e1;
t1147 = rSges(3,1) * t811;
t943 = pkin(1) + t1147;
t987 = rSges(3,2) * t1095 + t812 * rSges(3,3);
t630 = -t809 * t943 + t801 + t987;
t784 = rSges(3,2) * t1093;
t631 = -t784 + t943 * t812 + (rSges(3,3) + pkin(6)) * t809;
t763 = rSges(3,1) * t808 + rSges(3,2) * t811;
t750 = t763 * t809;
t751 = t763 * t812;
t1202 = m(3) * (t630 * t750 - t631 * t751);
t875 = -t582 * t812 - t583 * t809;
t359 = t875 * t811 + (-t1305 * t812 - t639 * t809) * t808;
t424 = t875 * t808;
t1201 = m(4) * (t359 * t424 + t395 * t472 - t396 * t474);
t1195 = m(4) * (t481 * t585 + t482 * t586);
t1194 = m(4) * (-t481 * t604 + t482 * t605);
t1185 = m(5) * (-t1028 * t439 + t438 * t483);
t1184 = m(5) * (t438 * t508 + t439 * t509);
t431 = t439 * t1093;
t1182 = m(5) * (-t1095 * t438 + t431);
t1180 = m(6) * (t1339 * t602 + t389 * t603 + t1061);
t1176 = m(6) * (t1339 * t696 + t389 * t694 + t410 * t695 + t411 * t693);
t847 = (-t1339 * t812 - t389 * t809) * t1100;
t1174 = m(6) * (-t695 * t433 + t693 * t435 + t847);
t1172 = m(6) * (t693 * t447 + t695 * t448 + t847);
t1171 = m(6) * (t1339 * t410 + t389 * t411);
t1168 = m(6) * (t1339 * t448 + t389 * t447);
t386 = t389 * t1093;
t1166 = m(6) * (-t1095 * t1339 + t386);
t1017 = t695 * t1085 + t693 * t1089;
t1164 = m(6) * ((-t1246 + (0.1e1 - t986) * t803) * t794 + t1017);
t1163 = m(6) * (t1100 * t753 + t1017);
t1101 = t794 * t803;
t1162 = m(6) * (-t1101 * t986 - t539 * t811);
t1150 = m(6) * qJD(2);
t1149 = m(6) * qJD(3);
t1148 = m(6) * qJD(5);
t1096 = t808 * t703;
t1049 = -t435 * t1085 - t433 * t1089;
t1046 = -t478 * t1085 - t476 * t1089;
t1015 = t708 * t1085 + t809 * t700;
t1012 = t653 + t713;
t1011 = -t659 + t714;
t1010 = -t661 + t709;
t1009 = -t663 - t712;
t1003 = -t701 + t746;
t1001 = t705 + t743;
t997 = -t722 - t773;
t996 = t809 * t924 + t812 * (-pkin(2) * t1093 + t791);
t985 = qJD(1) * t808;
t984 = qJD(1) * t811;
t983 = qJD(2) * t809;
t981 = qJD(3) * t808;
t980 = qJD(3) * t811;
t846 = m(6) * (t694 * t809 + t696 * t812 - t795 * t811);
t874 = t602 * t812 + t603 * t809;
t307 = t811 * t1325 + (t874 * t1233 - t846 / 0.4e1) * t1245;
t979 = t307 * qJD(4);
t977 = t803 * t1157;
t458 = (t794 * t811 - t539) * t1100;
t974 = t458 * t1148;
t956 = -t773 + t1013;
t953 = t1095 / 0.4e1;
t935 = t808 * t704 - t699;
t931 = t809 * t600 + t812 * t601 + t996;
t929 = -t773 + t957;
t829 = -t808 * t861 + t1111;
t213 = t609 * t693 - t617 * t694 + t809 * t829;
t828 = -t808 * t860 + t1110;
t214 = t610 * t693 - t618 * t694 + t809 * t828;
t831 = t808 * t859 + t1113;
t215 = t615 * t693 - t619 * t694 + t809 * t831;
t830 = t808 * t858 + t1112;
t216 = t616 * t693 - t620 * t694 + t809 * t830;
t827 = t808 * t857 + t1108;
t261 = t634 * t736 - t636 * t737 + t809 * t827;
t826 = t808 * t856 + t1107;
t262 = t635 * t736 - t637 * t737 + t809 * t826;
t928 = (t1287 + t1345) * t1278 + ((t214 + t216 + t262) * t812 + (t213 + t215 + t261) * t809 + t1284) * t1213;
t927 = (t1290 * t812 + t1291 * t809 + t1282) * t1280 + (t1281 - t1285) * t1210;
t217 = t695 * t609 - t696 * t617 + t812 * t829;
t218 = t695 * t610 - t696 * t618 + t812 * t828;
t219 = t695 * t615 - t696 * t619 + t812 * t831;
t220 = t695 * t616 - t696 * t620 + t812 * t830;
t263 = -t738 * t634 - t739 * t636 + t812 * t827;
t264 = -t738 * t635 - t739 * t637 + t812 * t826;
t926 = (t884 + t889 + t888 - t1286) * t1278 + ((t218 + t220 + t264) * t812 + (t217 + t219 + t263) * t809 + t1283) * t1213;
t88 = m(5) * (t283 * t753 + t1046) + m(6) * (t211 * t753 + t1049);
t221 = t1039 * t693 + t1043 * t694 + t1095 * t553;
t222 = t1038 * t693 + t1042 * t694 + t1095 * t554;
t223 = t1037 * t693 + t1041 * t694 + t1095 * t551;
t224 = t1036 * t693 + t1040 * t694 + t1095 * t552;
t265 = -t1025 * t736 + t1027 * t737 + t1095 * t594;
t266 = -t1024 * t736 + t1026 * t737 + t1095 * t595;
t923 = (t222 + t224 + t266) * t1279 + (t221 + t223 + t265) * t1206;
t225 = t1039 * t695 + t1043 * t696 + t1093 * t553;
t226 = t1038 * t695 + t1042 * t696 + t1093 * t554;
t227 = t1037 * t695 + t1041 * t696 + t1093 * t551;
t228 = t1036 * t695 + t1040 * t696 + t1093 * t552;
t267 = t1025 * t738 + t1027 * t739 + t1093 * t594;
t268 = t1024 * t738 + t1026 * t739 + t1093 * t595;
t922 = (t225 + t227 + t267) * t1277 + (t226 + t228 + t268) * t1212;
t920 = t1278 * t1282 + t1280 * t1281;
t915 = t256 / 0.2e1 + t258 / 0.2e1 + t302 / 0.2e1;
t914 = -t257 / 0.2e1 - t259 / 0.2e1 - t303 / 0.2e1;
t710 = (-Icges(5,5) * t794 - Icges(5,6) * t795) * t808;
t711 = (-Icges(6,4) * t794 + Icges(6,6) * t795) * t808;
t740 = (-Icges(4,5) * t807 - Icges(4,6) * t810) * t808;
t912 = t740 / 0.2e1 + t710 / 0.2e1 + t711 / 0.2e1;
t896 = -Icges(3,5) * t808 - Icges(3,6) * t811;
t882 = t433 * t809 + t435 * t812;
t843 = -t923 - t928;
t842 = t922 - t926;
t453 = -t1093 * t704 + t1015;
t820 = t1015 * t1279 + t453 * t1212 + (-t644 + (t700 + t1096) * t812 + t1016 + t1304) * t1277;
t819 = (-t809 * (-t811 * t707 + t1096) - t812 * t699) * t1277 + (t812 * t935 - t1015 + t453) * t1206 + (t809 * t935 + t1304 + t936) * t1212;
t323 = t1010 * t693 + t1012 * t694 + t1095 * t711;
t324 = t1009 * t693 + t1011 * t694 + t1095 * t710;
t325 = t1010 * t695 + t1012 * t696 + t1093 * t711;
t326 = t1009 * t695 + t1011 * t696 + t1093 * t710;
t367 = -t1001 * t736 + t1003 * t737 + t1095 * t740;
t368 = t1001 * t738 + t1003 * t739 + t1093 * t740;
t816 = -t1254 + (t325 + t326 + t368 + t1288) * t809 / 0.4e1 + (t323 + t324 + t367 + t1289) * t1207;
t814 = -t1252 + (-t1095 / 0.4e1 + t953) * (t1328 + t1327 + t1326) + (t1207 + t812 / 0.4e1) * (t1331 + t1330 + t1329);
t813 = -t1253 + t1282 * t1213 + t1285 * t1210 + (-t1287 + t1291) * t953 + (t1286 + t1290) * t1093 / 0.4e1 + (t1284 + t1333) * t1089 / 0.4e1 + (t1283 + t1332) * t1085 / 0.4e1;
t769 = t803 * t976;
t765 = -rSges(3,2) * t808 + t1147;
t742 = t896 * t812;
t741 = t896 * t809;
t691 = t811 * t989;
t670 = t989 * t1093;
t593 = t997 * t812;
t591 = t997 * t809;
t502 = 0.4e1 * t1265;
t486 = -t1093 * t749 - t811 * t605;
t485 = t1095 * t749 + t604 * t811;
t479 = t956 * t812;
t477 = t956 * t809;
t445 = t1162 / 0.2e1;
t444 = t1163 / 0.2e1;
t441 = (t604 * t812 - t605 * t809) * t808;
t436 = t929 * t812;
t434 = t929 * t809;
t426 = t1101 * t795 + t693 * t694 + t695 * t696;
t425 = t1164 / 0.2e1;
t419 = -t1305 * t809 + t639 * t812 + t996;
t413 = t1028 * t811 - t1093 * t717 + t769;
t412 = t563 * t811 - t691 + (t717 * t808 - t977) * t809;
t405 = -t811 * t740 + (-t1001 * t807 + t1003 * t810) * t808;
t377 = -t811 * t710 + (t1009 * t794 + t1011 * t795) * t808;
t376 = -t811 * t711 + (t1010 * t794 + t1012 * t795) * t808;
t375 = -t670 + (t563 * t812 + t1303) * t808;
t351 = 0.2e1 * t1325;
t350 = t1325 + t499;
t349 = 0.2e1 * t499;
t342 = -t411 * t811 - t808 * t937 + t769;
t341 = -t691 + t1030 * t811 + (t808 * t999 - t977) * t809;
t334 = -t1104 * t809 + t624 * t812 + t931;
t306 = (-t811 * t505 + t808 * t874) * t1234 + t846 * t1213;
t282 = t1019 * t812 + t1020 * t809 + t931;
t276 = -t670 + (t1030 * t812 - t1324) * t808;
t273 = t444 + t425 - t1162 / 0.2e1;
t272 = t445 + t444 - t1164 / 0.2e1;
t271 = t445 + t425 - t1163 / 0.2e1;
t154 = t1166 + t1182;
t148 = t1172 / 0.2e1;
t143 = t1174 / 0.2e1;
t127 = -t263 * t812 + t264 * t809;
t126 = -t261 * t812 + t262 * t809;
t125 = t1176 / 0.2e1;
t121 = t1100 * t882 + t211 * t539;
t113 = -t219 * t812 + t220 * t809;
t112 = -t217 * t812 + t218 * t809;
t111 = -t215 * t812 + t216 * t809;
t110 = -t213 * t812 + t214 * t809;
t109 = -t368 * t811 + (t267 * t809 + t268 * t812) * t808;
t108 = -t367 * t811 + (t265 * t809 + t266 * t812) * t808;
t99 = t1180 / 0.2e1;
t97 = -t326 * t811 + (t227 * t809 + t228 * t812) * t808;
t96 = -t325 * t811 + (t225 * t809 + t226 * t812) * t808;
t95 = -t324 * t811 + (t223 * t809 + t224 * t812) * t808;
t94 = -t323 * t811 + (t221 * t809 + t222 * t812) * t808;
t89 = t232 * t505 + t286 * t602 - t287 * t603;
t86 = t1215 / 0.2e1;
t57 = t1218 / 0.2e1;
t48 = t1248 * t808 - t912 * t811 + t1171 + t1185 + t1194;
t42 = t1219 / 0.2e1;
t37 = -t1249 * t808 - t1250 * t811 + t1168 + t1184 + t1195 + t1202;
t34 = t148 - t1174 / 0.2e1;
t33 = t143 + t148;
t32 = t143 - t1172 / 0.2e1;
t25 = t1224 / 0.2e1;
t24 = t1075 + t1076;
t19 = t125 + t57 - t1180 / 0.2e1;
t18 = t99 + t125 - t1218 / 0.2e1;
t17 = t99 + t57 - t1176 / 0.2e1;
t16 = t1058 + t1293;
t15 = t1077 + t1152 - t1058;
t14 = t1058 - t1293;
t13 = t86 + t25 - t1219 / 0.2e1;
t12 = t42 + t86 - t1224 / 0.2e1;
t11 = t42 + t25 - t1215 / 0.2e1;
t10 = t809 * t922 + t812 * t923 - t1347;
t9 = t1079 + t1153 - t1066;
t8 = t1066 + t1292;
t7 = t1066 - t1292;
t6 = t809 * t819 + t812 * t820;
t5 = -t1220 - t1227;
t4 = t1201 + t1229 + t1222 + (t809 * t921 + t812 * t919 + t927) * t811 + (t809 * t928 + t812 * t926 - t920) * t808;
t3 = t816 + t813 + t1252;
t2 = t814 + t816 + (-t449 / 0.2e1 - t428 / 0.2e1 - t427 / 0.2e1 + (-t340 / 0.4e1 - t300 / 0.4e1 - t299 / 0.4e1 - t278 / 0.4e1 - t250 / 0.4e1 - t248 / 0.4e1) * t812 + (-t277 / 0.4e1 - t249 / 0.4e1 - t247 / 0.4e1 - t339 / 0.4e1 - t298 / 0.4e1 - t297 / 0.4e1) * t809) * t808 + (t374 / 0.2e1 + t333 / 0.2e1 + t332 / 0.2e1 + (-t380 / 0.4e1 - t348 / 0.4e1 - t345 / 0.4e1 - t418 / 0.4e1 - t404 / 0.4e1 - t403 / 0.4e1) * t812 + (t347 / 0.4e1 + t344 / 0.4e1 - t416 / 0.4e1 - t400 / 0.4e1 - t399 / 0.4e1 + t379 / 0.4e1) * t809) * t811 + t1253;
t1 = t814 + t813 + (t367 / 0.4e1 + t324 / 0.4e1 + t323 / 0.4e1 + t302 / 0.4e1 + t258 / 0.4e1 + t256 / 0.4e1) * t812 + (-t368 / 0.4e1 - t326 / 0.4e1 - t325 / 0.4e1 - t303 / 0.4e1 - t259 / 0.4e1 - t257 / 0.4e1) * t809 + t1254;
t20 = [t37 * qJD(2) + t48 * qJD(3) + t154 * qJD(4) - t1148 * t1341, t37 * qJD(1) + t3 * qJD(3) + t24 * qJD(4) + t33 * qJD(5) + ((t481 * t593 + t482 * t591 - t585 * t592 - t586 * t590) * t1238 + (t438 * t479 + t439 * t477 - t476 * t509 - t478 * t508) * t1236 + (t1339 * t436 + t389 * t434 - t433 * t447 - t435 * t448) * t1234) * t1242 + (-t339 / 0.2e1 + (t703 / 0.2e1 - t747 / 0.2e1) * t808 - t820 - t297 / 0.2e1 + m(3) * (-t630 * t765 - t750 * t763) + t757 * t1206 + (-t707 / 0.2e1 - t744 / 0.2e1) * t811 - t298 / 0.2e1 - t1256) * t982 + (t340 / 0.2e1 + t299 / 0.2e1 - t819 + m(3) * (-t631 * t765 + t751 * t763) + t757 * t1212 + t300 / 0.2e1 + (-t704 / 0.2e1 + t748 / 0.2e1) * t808 + (t708 / 0.2e1 - t745 / 0.2e1) * t811 - t1255) * t983, t48 * qJD(1) + t3 * qJD(2) + t16 * qJD(4) + t18 * qJD(5) + (t1227 / 0.4e1 + t1220 / 0.4e1) * t1239 + ((-t472 * t604 - t474 * t605 + t481 * t485 + t482 * t486) * t1238 + (t1028 * t362 + t361 * t483 + t412 * t438 + t413 * t439) * t1236 + (t1339 * t341 + t286 * t410 - t287 * t411 + t342 * t389) * t1234) * t1240 + (-t377 - t405 - t376) * t980 + ((t325 / 0.2e1 + t326 / 0.2e1 + t368 / 0.2e1 - t914) * t812 + (t324 / 0.2e1 + t367 / 0.2e1 + t323 / 0.2e1 + t915) * t809) * t981, qJD(1) * t154 + qJD(2) * t24 + qJD(3) * t16 + qJD(5) * t350, t33 * qJD(2) + t18 * qJD(3) + t350 * qJD(4) - t1344; t6 * qJD(2) + t2 * qJD(3) + t23 * qJD(4) + t32 * qJD(5) + (-t1202 / 0.4e1 - t1195 / 0.4e1 - t1184 / 0.4e1 - t1168 / 0.4e1) * t1243 + t1250 * t984 + t1249 * t985, t6 * qJD(1) + t10 * qJD(3) + t88 * qJD(4) + t121 * t1148 - (t805 * t741 + (-t812 * t742 + t1247) * t809 + t111 + t110 + t126) * t982 / 0.2e1 + (m(3) * ((t809 * (rSges(3,1) * t1089 - t987) + t812 * (rSges(3,1) * t1085 + t809 * rSges(3,3) - t784)) * (-t809 * t750 - t751 * t812) + t986 * t765 * t763) + m(6) * (t211 * t282 - t433 * t434 - t435 * t436) + m(5) * (t283 * t334 - t476 * t477 - t478 * t479) + m(4) * (t397 * t419 - t590 * t591 - t592 * t593) + (t804 * t742 + (-t809 * t741 + t1247) * t812 + t112 + t127 + t113) * t1212) * qJD(2), t2 * qJD(1) + t10 * qJD(2) + t8 * qJD(4) + t12 * qJD(5) + (-t1201 / 0.4e1 - t1229 / 0.4e1 - t1222 / 0.4e1) * t1239 + ((t441 * t397 + t424 * t446 - t485 * t592 - t486 * t590 + (-t472 * t812 + t474 * t809) * t749) * t1238 + (t283 * t375 + t309 * t383 + t361 * t608 - t362 * t607 - t412 * t478 - t413 * t476) * t1236 + (t211 * t276 + t232 * t288 + t286 * t504 - t287 * t503 - t341 * t435 - t342 * t433) * t1234) * t1240 + ((t915 - t919) * t812 + (t914 - t921) * t809 - t927) * t980 + (t809 * t843 + t812 * t842 + t920) * t981 + ((-t108 / 0.2e1 - t94 / 0.2e1 - t95 / 0.2e1) * t812 + (t109 / 0.2e1 + t96 / 0.2e1 + t97 / 0.2e1) * t809) * qJD(3), t1346 + t88 * qJD(2) + t8 * qJD(3) + (-0.4e1 * t1265 + 0.2e1 * (t1234 + t1236) * (-t753 * t811 + t988)) * qJD(4) + t272 * qJD(5), t32 * qJD(1) + t12 * qJD(3) + t272 * qJD(4) + t1150 * t121 - t974; t1 * qJD(2) + t5 * qJD(3) + t15 * qJD(4) + t17 * qJD(5) + t912 * t984 + (-t1194 / 0.4e1 - t1185 / 0.4e1 - t1171 / 0.4e1) * t1243 + (t1054 * t1323 + t1059 * t1342) * t1244 - t1248 * t985, t1 * qJD(1) + t4 * qJD(3) + t9 * qJD(4) + t11 * qJD(5) + ((t359 * t397 - t395 * t592 - t396 * t590 + t419 * t424 + t472 * t593 - t474 * t591) * t1238 + (t190 * t283 - t244 * t478 - t245 * t476 + t309 * t334 + t361 * t479 - t362 * t477) * t1236 + (t141 * t211 - t166 * t435 - t167 * t433 + t232 * t282 + t286 * t436 - t287 * t434) * t1234) * t1242 + ((t1326 / 0.2e1 + t1327 / 0.2e1 + t1328 / 0.2e1 + t1256) * t811 + t843) * t982 + (-t842 + (t1348 * t1212 + t1277 * t1349 + t1255) * t811) * t983 + (((t127 / 0.2e1 + t112 / 0.2e1 + t113 / 0.2e1 + t344 / 0.2e1 + t347 / 0.2e1 + t379 / 0.2e1) * t812 + (t380 / 0.2e1 + t348 / 0.2e1 + t345 / 0.2e1 + t126 / 0.2e1 + t110 / 0.2e1 + t111 / 0.2e1) * t809) * t808 + t1347) * qJD(2), t5 * qJD(1) + t4 * qJD(2) + (t377 / 0.2e1 + t405 / 0.2e1 + t376 / 0.2e1) * qJD(3) * t1246 + (m(4) * (t424 * t441 + t472 * t485 - t474 * t486) / 0.4e1 + (t309 * t375 + t361 * t412 - t362 * t413) * t1235 + (t232 * t276 + t286 * t341 - t287 * t342) * t1233) * t1239 + t89 * t1148 + ((t95 + t108 + t94) * t1212 + (t1288 * t812 + t1289 * t809) * t1210 + (t109 + t96 + t97) * t1206) * t981, qJD(1) * t15 + qJD(2) * t9 + qJD(5) * t307, t17 * qJD(1) + t11 * qJD(2) + t89 * t1149 + t979 + (t1100 * t505 + t602 * t695 + t603 * t693 - t426) * t1148; -t23 * qJD(2) + t14 * qJD(3) + t351 * qJD(5) + (-t1182 / 0.4e1 - t1166 / 0.4e1) * t1243 + (t431 * t1236 + t386 * t1234 + (-t1323 - t1342) * t1093) * t1244, -t1346 + (m(6) * (-t811 * t282 + t1049) + m(5) * (-t811 * t334 + t1046) + ((t434 * t809 + t436 * t812 + t211) * t1234 + (t477 * t809 + t479 * t812 + t283) * t1236) * t1245 - t88) * qJD(2) + t7 * qJD(3) + t502 * qJD(4) + t271 * qJD(5), t14 * qJD(1) + t7 * qJD(2) + ((-t811 * t375 + (t412 * t812 + t413 * t809) * t808) * t1236 + (-t811 * t276 + (t341 * t812 + t342 * t809) * t808) * t1234) * t1240 + t306 * qJD(5), t502 * qJD(2), qJD(1) * t351 + qJD(2) * t271 + qJD(3) * t306; t34 * qJD(2) + t19 * qJD(3) + t349 * qJD(4) + t1344, t34 * qJD(1) + (t693 * t434 + t695 * t436 - t121 + (t211 * t811 + (t282 + t882) * t808) * t794) * t1150 + t13 * qJD(3) + t273 * qJD(4) + t974, t19 * qJD(1) + t13 * qJD(2) + (t286 * t696 - t287 * t694 + t341 * t695 + t342 * t693 + (t232 * t795 + t276 * t794) * t808 - t89) * t1149 - t979 + t426 * t1148, qJD(1) * t349 + qJD(2) * t273 - qJD(3) * t307, 0.4e1 * (t458 * qJD(2) / 0.4e1 + t426 * qJD(3) / 0.4e1) * m(6);];
Cq = t20;