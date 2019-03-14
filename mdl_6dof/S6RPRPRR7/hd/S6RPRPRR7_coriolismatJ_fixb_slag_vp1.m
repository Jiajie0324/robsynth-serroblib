% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RPRPRR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta4]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% rSges [7x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [7x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% Cq [6x6]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:56
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RPRPRR7_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR7_coriolismatJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR7_coriolismatJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRR7_coriolismatJ_fixb_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRR7_coriolismatJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRPRR7_coriolismatJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRPRR7_coriolismatJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:54:59
% EndTime: 2019-03-09 03:55:40
% DurationCPUTime: 33.22s
% Computational Cost: add. (108678->934), mult. (101290->1237), div. (0->0), fcn. (107987->10), ass. (0->566)
t732 = qJ(3) + pkin(10);
t717 = qJ(5) + t732;
t711 = sin(t717);
t712 = cos(t717);
t651 = rSges(6,1) * t712 - rSges(6,2) * t711;
t741 = cos(qJ(1));
t611 = t651 * t741;
t582 = t741 * t611;
t738 = sin(qJ(1));
t934 = t712 * t738;
t940 = t711 * t738;
t609 = rSges(6,1) * t934 - rSges(6,2) * t940;
t1102 = t738 * t609 + t582;
t804 = rSges(6,1) * t711 + rSges(6,2) * t712;
t755 = -t738 * rSges(6,3) + t741 * t804;
t553 = t741 * t755;
t946 = t738 * t804;
t565 = rSges(6,3) * t741 + t946;
t735 = -qJ(4) - pkin(7);
t713 = t741 * t735;
t737 = sin(qJ(3));
t928 = t737 * t738;
t644 = pkin(3) * t928 - pkin(7) * t741 - t713;
t715 = sin(t732);
t985 = pkin(4) * t715;
t988 = pkin(3) * t737;
t680 = t985 + t988;
t852 = -pkin(8) + t735;
t709 = t741 * t852;
t878 = t709 - t713 - (t680 - t988) * t738 - t644;
t986 = pkin(3) * t741;
t850 = t737 * t986;
t616 = t741 * (t850 + (pkin(7) + t735) * t738);
t858 = t741 * t680 + t738 * t852;
t880 = t741 * (t738 * t735 + t850 - t858) - t616;
t283 = -t553 + (-t565 + t878) * t738 + t880;
t716 = cos(t732);
t740 = cos(qJ(3));
t987 = pkin(3) * t740;
t681 = pkin(4) * t716 + t987;
t522 = (t651 + t681) * t741;
t503 = t741 * t522;
t918 = t738 * t740;
t710 = pkin(3) * t918;
t930 = t716 * t738;
t856 = pkin(4) * t930 + t710;
t520 = t651 * t738 + t856;
t193 = -t1102 * t283 - t503 * t804 - t520 * t946;
t739 = cos(qJ(6));
t917 = t739 * t741;
t736 = sin(qJ(6));
t920 = t738 * t736;
t637 = -t711 * t920 + t917;
t919 = t738 * t739;
t929 = t736 * t741;
t638 = t711 * t919 + t929;
t468 = t638 * rSges(7,1) + t637 * rSges(7,2) - rSges(7,3) * t934;
t1103 = -pkin(9) * t934 + t468;
t883 = -pkin(5) * t940 - t1103;
t639 = t711 * t929 + t919;
t640 = t711 * t917 - t920;
t1101 = t640 * rSges(7,1) - t639 * rSges(7,2);
t932 = t712 * t741;
t469 = -rSges(7,3) * t932 + t1101;
t691 = pkin(9) * t932;
t939 = t711 * t741;
t888 = (-pkin(5) * t939 - t469 + t691) * t741;
t219 = (t878 + t883) * t738 + t880 + t888;
t933 = t712 * t739;
t935 = t712 * t736;
t1123 = -rSges(7,1) * t933 + rSges(7,2) * t935;
t516 = rSges(7,3) * t940 - t1123 * t738;
t879 = -pkin(5) * t934 - pkin(9) * t940 - t516;
t517 = -rSges(7,3) * t939 + t1123 * t741;
t1124 = -pkin(5) * t932 - pkin(9) * t939 + t517;
t881 = t1124 * t741;
t319 = t738 * t879 + t881;
t802 = rSges(7,1) * t739 - rSges(7,2) * t736;
t552 = rSges(7,3) * t711 + t712 * t802;
t535 = t738 * t552;
t653 = pkin(5) * t712 + pkin(9) * t711;
t456 = t738 * t653 + t535;
t423 = t856 + t456;
t874 = t552 + t653;
t425 = (t681 + t874) * t741;
t981 = rSges(7,3) * t712;
t551 = -t711 * t802 + t981;
t534 = t738 * t551;
t984 = pkin(5) * t711;
t652 = pkin(9) * t712 - t984;
t455 = t738 * t652 + t534;
t875 = -t551 - t652;
t457 = t875 * t741;
t91 = t219 * t319 + t423 * t455 - t425 * t457;
t1153 = m(6) * t193 + m(7) * t91;
t718 = t741 * qJ(2);
t1120 = -t738 * pkin(1) + t718;
t770 = t1120 + t858;
t1121 = (-t981 + t984) * t741 - t691 + t770 + t1101;
t910 = qJ(2) + t680;
t989 = pkin(1) * t741;
t358 = t989 - t709 + (t910 + t984) * t738 + t1103;
t489 = rSges(7,1) * t637 - rSges(7,2) * t638;
t490 = rSges(7,1) * t639 + rSges(7,2) * t640;
t966 = Icges(7,4) * t739;
t794 = -Icges(7,2) * t736 + t966;
t545 = Icges(7,6) * t711 + t712 * t794;
t967 = Icges(7,4) * t736;
t798 = Icges(7,1) * t739 - t967;
t547 = Icges(7,5) * t711 + t712 * t798;
t603 = (-Icges(7,2) * t739 - t967) * t712;
t606 = (-Icges(7,1) * t736 - t966) * t712;
t600 = (-Icges(7,5) * t736 - Icges(7,6) * t739) * t712;
t943 = t711 * t600;
t134 = (-(t547 / 0.2e1 + t603 / 0.2e1) * t736 + (t606 / 0.2e1 - t545 / 0.2e1) * t739) * t712 + m(7) * (-t1121 * t490 + t358 * t489) + t943 / 0.2e1;
t1152 = t134 * qJD(1);
t459 = Icges(7,5) * t638 + Icges(7,6) * t637 - Icges(7,3) * t934;
t968 = Icges(7,4) * t638;
t462 = Icges(7,2) * t637 - Icges(7,6) * t934 + t968;
t617 = Icges(7,4) * t637;
t465 = Icges(7,1) * t638 - Icges(7,5) * t934 + t617;
t262 = t459 * t932 + t639 * t462 - t640 * t465;
t1151 = t262 * t741;
t1150 = t738 * t262;
t619 = Icges(7,4) * t640;
t464 = Icges(7,2) * t639 + Icges(7,6) * t932 - t619;
t618 = Icges(7,4) * t639;
t466 = Icges(7,1) * t640 - Icges(7,5) * t932 - t618;
t1140 = t464 * t736 + t466 * t739;
t461 = -Icges(7,5) * t640 + Icges(7,6) * t639 + Icges(7,3) * t932;
t953 = t461 * t711;
t277 = t1140 * t712 - t953;
t1054 = t738 / 0.2e1;
t1053 = -t741 / 0.2e1;
t1073 = m(7) / 0.2e1;
t1074 = m(6) / 0.2e1;
t1075 = m(5) / 0.2e1;
t1076 = m(4) / 0.2e1;
t671 = rSges(5,1) * t716 - rSges(5,2) * t715;
t807 = (t671 + t987) * t741;
t1108 = t738 * t807;
t662 = t738 * t681;
t523 = t609 + t662;
t664 = t741 * t681;
t524 = t664 + t611;
t392 = -t523 * t741 + t738 * t524;
t407 = -t879 + t662;
t408 = -t1124 + t664;
t700 = rSges(4,1) * t740 - rSges(4,2) * t737;
t660 = t700 * t738;
t661 = t700 * t741;
t518 = -t660 * t741 + t738 * t661;
t931 = t715 * t738;
t810 = rSges(5,1) * t930 - rSges(5,2) * t931;
t566 = t710 + t810;
t812 = (-t407 * t741 + t738 * t408) * t1073 + t392 * t1074 + (-t566 * t741 + t1108) * t1075 + t518 * t1076;
t584 = t671 * t738 + t710;
t834 = (t423 * t741 - t425 * t738) * t1073 + (t520 * t741 - t522 * t738) * t1074 + (t584 * t741 - t1108) * t1075;
t62 = t834 - t812;
t1149 = qJD(1) * t62;
t1107 = t741 * t807;
t412 = t741 * t425;
t832 = (-t423 * t738 - t412) * t1073 + (-t520 * t738 - t503) * t1074 + (-t584 * t738 - t1107) * t1075;
t835 = (t738 * t407 + t408 * t741) * t1073 + (t738 * t523 + t524 * t741) * t1074 + (t738 * t566 + t1107) * t1075;
t67 = t835 - t832;
t1148 = t67 * qJD(1);
t733 = t738 ^ 2;
t734 = t741 ^ 2;
t706 = t733 + t734;
t1115 = m(6) * t706;
t458 = t874 * t741;
t892 = (-t456 * t738 - t458 * t741) * t1073 - t651 * t1115 / 0.2e1;
t893 = -t1073 * t319 + t1102 * t1074;
t136 = t893 - t892;
t1147 = t136 * qJD(1);
t782 = -t639 * t464 - t640 * t466;
t889 = t637 * t462 + t638 * t465;
t1146 = t889 + (-t459 * t738 - t461 * t741) * t712 + t782;
t1052 = t741 / 0.2e1;
t1055 = -t738 / 0.2e1;
t970 = Icges(6,4) * t711;
t795 = Icges(6,2) * t712 + t970;
t562 = -Icges(6,6) * t738 + t741 * t795;
t969 = Icges(6,4) * t712;
t799 = Icges(6,1) * t711 + t969;
t564 = -Icges(6,5) * t738 + t741 * t799;
t1104 = (t562 * t712 + t564 * t711) * t741;
t261 = -t461 * t934 + t637 * t464 - t466 * t638;
t1112 = t261 * t738;
t260 = -t459 * t934 + t889;
t159 = t260 * t741 + t1112;
t263 = t461 * t932 - t782;
t160 = t263 * t738 + t1151;
t1128 = t160 * t1053 + t1054 * t159;
t561 = Icges(6,6) * t741 + t738 * t795;
t682 = Icges(6,4) * t934;
t563 = Icges(6,1) * t940 + Icges(6,5) * t741 + t682;
t777 = -t561 * t712 - t563 * t711;
t1143 = t741 * t777;
t788 = Icges(6,5) * t711 + Icges(6,6) * t712;
t1131 = t738 * t788;
t360 = t741 * (Icges(6,3) * t741 + t1131) + t561 * t934 + t563 * t940;
t1129 = t741 * t788;
t560 = -Icges(6,3) * t738 + t1129;
t361 = -t741 * t560 - t562 * t934 - t564 * t940;
t363 = -t738 * t560 + t1104;
t905 = t263 + t1146;
t54 = t741 * t905 + t1112;
t902 = -t260 + t1146;
t55 = t738 * t902 - t1151;
t756 = (t360 * t741 + t361 * t738) * t1055 + ((t361 - t1143) * t738 + (t363 - t1104 + (t560 + t777) * t738 + t360) * t741 + t54) * t1054 + (t363 * t738 + t733 * t560 + t55 + (t361 + (t560 - t777) * t741 + t1143) * t741) * t1052 - t1128;
t1145 = t469 * t711 + t552 * t932;
t647 = -Icges(6,2) * t711 + t969;
t1142 = t647 + t799;
t1141 = Icges(4,5) * t740 + Icges(5,5) * t716 - Icges(4,6) * t737 - Icges(5,6) * t715;
t1139 = -t711 / 0.2e1;
t1058 = t711 / 0.2e1;
t1138 = -t712 / 0.2e1;
t1137 = t712 / 0.2e1;
t1136 = t738 / 0.4e1;
t1135 = t741 / 0.4e1;
t1134 = t160 + t55;
t787 = Icges(7,5) * t739 - Icges(7,6) * t736;
t543 = Icges(7,3) * t711 + t712 * t787;
t318 = t543 * t932 + t639 * t545 - t640 * t547;
t1133 = t318 * t711;
t512 = t545 * t738;
t514 = t547 * t738;
t783 = -t462 * t736 + t465 * t739;
t761 = t543 * t738 - t783;
t203 = (-t512 * t736 + t514 * t739 + t459) * t712 + t761 * t711;
t542 = Icges(7,3) * t712 - t711 * t787;
t950 = t547 * t739;
t951 = t545 * t736;
t778 = t950 - t951;
t759 = t542 - t778;
t952 = t543 * t711;
t1092 = t712 * t759 - t952;
t544 = Icges(7,6) * t712 - t711 * t794;
t546 = Icges(7,5) * t712 - t711 * t798;
t232 = -t1092 * t738 + t544 * t637 + t546 * t638;
t1127 = t203 + t232;
t513 = t545 * t741;
t515 = t547 * t741;
t760 = -t543 * t741 + t1140;
t204 = (t513 * t736 - t515 * t739 + t461) * t712 + t760 * t711;
t233 = t1092 * t741 + t639 * t544 - t640 * t546;
t1126 = t204 + t233;
t1125 = -t1121 * t738 + t741 * t358;
t447 = -t709 + (rSges(6,3) + pkin(1)) * t741 + (t804 + t910) * t738;
t435 = t741 * t447;
t446 = t755 + t770;
t808 = t435 * t804 - t446 * t946;
t895 = t1121 * t455 + t457 * t358;
t908 = (-t407 * t458 + t408 * t456 + t895) * t1073 + (t392 * t651 + t808) * t1074;
t909 = (-t1124 * t423 + t425 * t879 + t895) * t1073 + (t520 * t611 - t522 * t609 + t808) * t1074;
t1122 = t908 - t909;
t805 = rSges(5,1) * t715 + rSges(5,2) * t716;
t1098 = t805 + t988;
t585 = t1098 * t741;
t853 = qJD(3) + qJD(5);
t870 = t647 * t741 + t564;
t871 = -Icges(6,2) * t940 + t563 + t682;
t649 = Icges(6,1) * t712 - t970;
t872 = -t649 * t741 + t562;
t873 = -t649 * t738 + t561;
t1119 = -(t738 * t872 - t741 * t873) * t711 + (t738 * t870 - t741 * t871) * t712;
t971 = Icges(5,4) * t716;
t667 = -Icges(5,2) * t715 + t971;
t973 = Icges(4,4) * t740;
t695 = -Icges(4,2) * t737 + t973;
t800 = Icges(5,1) * t715 + t971;
t801 = Icges(4,1) * t737 + t973;
t1118 = (t801 / 0.2e1 + t695 / 0.2e1) * t740 + (t800 / 0.2e1 + t667 / 0.2e1) * t716;
t240 = (-t544 * t736 + t546 * t739 + t543) * t712 + t759 * t711;
t955 = t459 * t711;
t276 = t712 * t783 + t955;
t316 = -t543 * t934 + t545 * t637 + t547 * t638;
t343 = t712 * t778 + t952;
t1116 = t240 * t1058 + t343 * t1137 + (t276 + t316) * t940 / 0.4e1 - (-t277 + t318) * t939 / 0.4e1;
t1111 = t261 * t741;
t974 = Icges(4,4) * t737;
t797 = Icges(4,2) * t740 + t974;
t625 = -Icges(4,6) * t738 + t741 * t797;
t627 = -Icges(4,5) * t738 + t741 * t801;
t1106 = (t625 * t740 + t627 * t737) * t741;
t972 = Icges(5,4) * t715;
t796 = Icges(5,2) * t716 + t972;
t592 = -Icges(5,6) * t738 + t741 * t796;
t594 = -Icges(5,5) * t738 + t741 * t800;
t1105 = (t592 * t716 + t594 * t715) * t741;
t1100 = t1141 * t741;
t1099 = t1141 * t738;
t288 = t738 * t883 + t888;
t129 = t288 * t319 + t456 * t455 - t458 * t457;
t438 = -t565 * t738 - t553;
t279 = -t651 * t706 * t804 - t1102 * t438;
t1097 = m(6) * t279 + m(7) * t129;
t483 = Icges(7,5) * t637 - Icges(7,6) * t638;
t885 = -Icges(7,2) * t638 + t465 + t617;
t887 = -Icges(7,1) * t637 + t462 + t968;
t205 = -t483 * t934 + t637 * t885 - t638 * t887;
t484 = Icges(7,5) * t639 + Icges(7,6) * t640;
t884 = Icges(7,2) * t640 - t466 + t618;
t886 = -Icges(7,1) * t639 + t464 - t619;
t206 = -t484 * t934 + t637 * t884 - t638 * t886;
t98 = t205 * t741 + t206 * t738;
t207 = t483 * t932 + t639 * t885 + t640 * t887;
t208 = t484 * t932 + t639 * t884 + t640 * t886;
t99 = t207 * t741 + t208 * t738;
t983 = t1052 * t98 + t1054 * t99;
t471 = -t609 * t741 + t738 * t611;
t894 = (-t1124 * t738 + t741 * t879) * t1073 + t471 * t1074;
t1091 = t712 * t760 - t953;
t1090 = t712 * t761 - t955;
t1089 = t711 * t1142 - t712 * (-t795 + t649);
t876 = t547 + t603;
t877 = t545 - t606;
t252 = -t600 * t934 + t637 * t876 - t638 * t877;
t253 = t600 * t932 + t639 * t876 + t640 * t877;
t221 = t484 * t711 + (-t736 * t884 - t739 * t886) * t712;
t959 = t221 * t738;
t220 = t483 * t711 + (-t736 * t885 - t739 * t887) * t712;
t960 = t220 * t741;
t813 = t960 / 0.4e1 + t959 / 0.4e1 + t253 * t1136 + t252 * t1135;
t308 = t316 * t711;
t38 = t308 + (-t738 * t905 + t1111) * t712;
t39 = -t1133 + (t741 * t902 + t1150) * t712;
t785 = t263 * t741 - t1150;
t116 = t712 * t785 + t1133;
t915 = t741 * t116;
t786 = -t260 * t738 + t1111;
t115 = t712 * t786 + t308;
t926 = t738 * t115;
t1085 = t915 / 0.4e1 - t926 / 0.4e1 + t39 * t1135 + t38 * t1136;
t861 = t695 * t741 + t627;
t697 = Icges(4,1) * t740 - t974;
t863 = -t697 * t741 + t625;
t866 = t667 * t741 + t594;
t669 = Icges(5,1) * t716 - t972;
t868 = -t669 * t741 + t592;
t1083 = t715 * t868 - t716 * t866 + t737 * t863 - t740 * t861;
t707 = Icges(4,4) * t918;
t626 = Icges(4,1) * t928 + Icges(4,5) * t741 + t707;
t862 = -Icges(4,2) * t928 + t626 + t707;
t624 = Icges(4,6) * t741 + t738 * t797;
t864 = -t697 * t738 + t624;
t702 = Icges(5,4) * t930;
t593 = Icges(5,1) * t931 + Icges(5,5) * t741 + t702;
t867 = -Icges(5,2) * t931 + t593 + t702;
t591 = Icges(5,6) * t741 + t738 * t796;
t869 = -t669 * t738 + t591;
t1082 = t715 * t869 - t716 * t867 + t737 * t864 - t740 * t862;
t749 = -t544 * t935 / 0.2e1 + t546 * t933 / 0.2e1 + t543 * t1137 + (t950 + t649) * t1139 + t1142 * t1138 + (t951 + t542 + t795) * t1058;
t1081 = 0.2e1 * t706;
t1080 = 0.4e1 * qJD(1);
t1079 = 2 * qJD(3);
t1077 = 2 * qJD(5);
t1072 = -pkin(1) - pkin(7);
t780 = t468 * t741 - t469 * t738;
t329 = t780 * t712;
t367 = t468 * t711 + t535 * t712;
t836 = t1145 * t455 - t329 * t319 + t367 * t457;
t246 = (-t516 * t741 - t517 * t738) * t712 + t780 * t711;
t280 = (t468 + t534) * t712 + (t516 - t535) * t711;
t281 = (t551 * t741 + t469) * t712 + (-t552 * t741 - t517) * t711;
t837 = t246 * t219 - t280 * t425 + t281 * t423;
t1071 = m(7) * (t836 + t837);
t42 = t246 * t288 - t280 * t458 + t281 * t456 + t836;
t1069 = m(7) * t42;
t383 = t738 * t489 - t490 * t741;
t610 = (-rSges(7,1) * t736 - rSges(7,2) * t739) * t712;
t949 = t610 * t738;
t897 = -t288 * t383 + t456 * t949;
t899 = -t219 * t383 + t423 * t949;
t948 = t610 * t741;
t1066 = m(7) * ((t425 + t458) * t948 + t897 + t899);
t898 = t1121 * t281 + t280 * t358;
t1065 = m(7) * (t1145 * t408 + t367 * t407 + t898);
t1064 = m(7) * (t1145 * t281 - t246 * t329 + t280 * t367);
t1063 = m(7) * (-t1124 * t1145 - t367 * t879 + t898);
t1060 = t706 / 0.2e1;
t1051 = m(3) * ((rSges(3,3) * t741 + t1120) * t741 + (t989 + (rSges(3,3) + qJ(2)) * t738) * t738);
t806 = rSges(4,1) * t737 + rSges(4,2) * t740;
t754 = -t738 * rSges(4,3) + t741 * t806;
t540 = t1072 * t738 + t718 + t754;
t541 = (rSges(4,3) - t1072) * t741 + (qJ(2) + t806) * t738;
t1050 = m(4) * (t540 * t661 + t541 * t660);
t1049 = m(4) * (t540 * t741 + t541 * t738);
t729 = t738 * rSges(5,3);
t478 = t718 - t729 + (-pkin(1) + t735) * t738 + t585;
t479 = -t713 + (rSges(5,3) + pkin(1)) * t741 + (qJ(2) + t1098) * t738;
t1047 = m(5) * (t478 * t807 + t479 * t566);
t1046 = m(5) * (-t478 * t738 + t741 * t479);
t1045 = m(5) * (t478 * t741 + t738 * t479);
t1033 = m(6) * (t446 * t524 + t447 * t523);
t1031 = m(6) * (t446 * t611 + t447 * t609);
t1030 = m(6) * (-t446 * t738 + t435);
t1029 = m(6) * (t446 * t741 + t738 * t447);
t809 = t1125 * t610;
t1015 = m(7) * (-t423 * t490 - t425 * t489 - t809);
t1014 = m(7) * (-t456 * t490 - t458 * t489 - t809);
t1011 = m(7) * (t280 * t738 + t281 * t741);
t1010 = m(7) * (t1121 * t408 + t358 * t407);
t1009 = m(7) * (-t1121 * t1124 - t358 * t879);
t1008 = m(7) * t1125;
t1007 = m(7) * (t1121 * t741 + t738 * t358);
t1006 = m(7) * (-t1145 * t738 + t367 * t741);
t1005 = m(7) * (t1145 * t741 + t367 * t738);
t996 = m(7) * (t455 * t741 + t738 * t457);
t994 = m(7) * (t456 * t741 - t458 * t738);
t381 = -t489 * t741 - t738 * t490;
t991 = m(7) * t381;
t990 = m(7) * t383;
t982 = m(7) * qJD(6);
t962 = t203 * t741;
t961 = t204 * t738;
t957 = t277 * t741;
t758 = m(7) * (-t280 * t741 + t281 * t738);
t769 = m(7) * t610 * t1060;
t153 = t758 / 0.2e1 + t769;
t286 = m(7) * (t455 * t738 - t457 * t741) - t804 * t1115;
t907 = t286 * qJD(5) + t153 * qJD(6);
t846 = -t1011 / 0.2e1;
t154 = -t758 / 0.2e1 + t769;
t855 = t154 * qJD(2);
t906 = qJD(4) * t846 + t855;
t845 = t1011 / 0.2e1;
t901 = qJD(5) * t996 + qJD(6) * t845;
t900 = t853 * t845;
t421 = (-m(7) / 0.2e1 - m(6) / 0.2e1 - m(5) / 0.2e1) * t1081;
t854 = t421 * qJD(1);
t851 = t1066 / 0.2e1 + t983;
t784 = -t276 * t738 - t957;
t128 = t343 * t711 + t712 * t784;
t188 = -t1090 * t738 + t512 * t637 + t514 * t638;
t189 = -t1091 * t738 - t513 * t637 - t515 * t638;
t27 = (-t188 * t738 + t189 * t741 + t316) * t712 + (t232 - t786) * t711;
t190 = t1090 * t741 + t639 * t512 - t640 * t514;
t191 = t1091 * t741 - t639 * t513 + t640 * t515;
t28 = (-t190 * t738 + t191 * t741 + t318) * t712 + (t233 - t785) * t711;
t40 = (-t203 * t738 + t204 * t741 + t343) * t712 + (t240 - t784) * t711;
t13 = t1064 + (t27 * t1055 + t28 * t1052 + t128 / 0.2e1) * t712 + (t926 / 0.2e1 - t915 / 0.2e1 + t40 / 0.2e1) * t711;
t844 = qJD(4) * t845 + t13 * qJD(6) - t855;
t839 = -t115 / 0.2e1 + t38 / 0.2e1;
t838 = -t39 / 0.2e1 - t116 / 0.2e1;
t790 = Icges(5,5) * t715 + Icges(5,6) * t716;
t589 = Icges(5,3) * t741 + t738 * t790;
t377 = t741 * t589 + t591 * t930 + t593 * t931;
t590 = -Icges(5,3) * t738 + t741 * t790;
t378 = -t741 * t590 - t592 * t930 - t594 * t931;
t792 = Icges(4,5) * t737 + Icges(4,6) * t740;
t622 = Icges(4,3) * t741 + t738 * t792;
t402 = t741 * t622 + t624 * t918 + t626 * t928;
t623 = -Icges(4,3) * t738 + t741 * t792;
t403 = -t741 * t623 - t625 * t918 - t627 * t928;
t826 = -t934 / 0.2e1;
t825 = -t934 / 0.4e1;
t824 = t934 / 0.4e1;
t823 = -t932 / 0.4e1;
t822 = t932 / 0.2e1;
t821 = t932 / 0.4e1;
t816 = t806 * t706;
t789 = Icges(6,5) * t712 - Icges(6,6) * t711;
t601 = t738 * t789;
t602 = t789 * t741;
t88 = t188 * t741 + t189 * t738;
t89 = t190 * t741 + t191 * t738;
t814 = (t89 - t733 * t602 + (t738 * t601 + t1119) * t741) * t1054 + (t88 + t734 * t601 + (-t741 * t602 - t1119) * t738) * t1052;
t811 = t706 * t987;
t519 = (-t804 - t680) * t738;
t705 = t741 * t985;
t521 = t705 + (t804 + t988) * t741;
t779 = t519 * t738 - t521 * t741;
t775 = t562 * t711 - t564 * t712;
t774 = -t591 * t716 - t593 * t715;
t772 = -t624 * t740 - t626 * t737;
t766 = t1145 * t949 + t329 * t383 - t367 * t948;
t765 = t741 * (t740 * t986 - t664) - t811;
t753 = t1134 * t825 + t159 * t823 + t54 * t821 + t1085;
t752 = t27 * t1052 + t28 * t1054 + t89 * t822 + t88 * t826 + (t276 * t741 - t277 * t738) * t1137 + (t961 + t962) * t1058 - t983 + t1128 * t711;
t750 = t1126 * t821 + t1127 * t825 + t1116;
t74 = t252 * t711 + (-t205 * t738 + t206 * t741) * t712;
t75 = t253 * t711 + (-t207 * t738 + t208 * t741) * t712;
t748 = t128 * t1138 + t27 * t934 / 0.2e1 - t28 * t932 / 0.2e1 - t1064 + t75 * t1054 + t74 * t1052 + t98 * t826 + t99 * t822 + (t926 + t40) * t1139 + (t915 + t959 + t960) * t1058;
t746 = t962 / 0.2e1 + t961 / 0.2e1 + (t1089 * t741 + t711 * t870 + t712 * t872 - t1131 + t233) * t1054 + (-t1089 * t738 - t711 * t871 - t712 * t873 - t1129 + t232) * t1052 - t756;
t745 = -t749 - t957 / 0.2e1 + t775 * t1053 + (t775 + t277) * t1052;
t744 = t1134 * t824 + t159 * t821 + t54 * t823 - t1085 + t750 + t813;
t743 = t1126 * t823 + t1127 * t824 - t1116 + t753 + t813;
t742 = t750 + t753 - t813;
t599 = -t710 + t662;
t596 = t738 * t622;
t583 = t1098 * t738;
t556 = t738 * t589;
t424 = t705 + (t875 + t988) * t741;
t422 = -t738 * t680 + t455;
t420 = (-m(7) / 0.4e1 - m(6) / 0.4e1 - m(5) / 0.4e1) * t1081 + (m(5) + m(6) + m(7)) * t1060;
t405 = -t738 * t623 + t1106;
t404 = t741 * t772 + t596;
t391 = -t711 * t490 + t610 * t932;
t390 = t489 * t711 + t610 * t934;
t380 = -t738 * t590 + t1105;
t379 = t741 * t774 + t556;
t375 = t990 / 0.2e1;
t374 = t991 / 0.2e1;
t359 = t381 * t712;
t344 = -t582 + (-t599 - t609) * t738 + t765;
t340 = t994 / 0.2e1;
t295 = t404 * t741 + t405 * t738;
t294 = t402 * t741 + t403 * t738;
t284 = (t943 + (-t736 * t876 - t739 * t877) * t712) * t711;
t272 = t379 * t741 + t380 * t738;
t271 = t377 * t741 + t378 * t738;
t266 = (-t599 + t879) * t738 + t765 + t881;
t259 = t1005 / 0.2e1;
t258 = t1006 / 0.2e1;
t179 = qJD(6) * t846;
t171 = t458 * t948 + t897;
t163 = t340 - t894;
t162 = -t994 / 0.2e1 + t894;
t161 = t340 + t894;
t144 = t154 * qJD(6);
t142 = t1008 + t1030 + t1046;
t140 = t1014 / 0.2e1;
t139 = t733 * t623 + (t403 - t596 + (t623 - t772) * t741) * t741;
t138 = (-t404 + t596 + t403) * t738 + (t405 - t1106 + (t623 + t772) * t738 + t402) * t741;
t135 = t892 + t893;
t132 = t1015 / 0.2e1;
t125 = t412 * t610 + t899;
t122 = t1007 + t1029 + t1045 + t1049 + t1051;
t120 = t733 * t590 + (t378 - t556 + (t590 - t774) * t741) * t741;
t119 = (-t379 + t556 + t378) * t738 + (t380 - t1105 + (t590 + t774) * t738 + t377) * t741;
t87 = t259 - t991 / 0.2e1;
t86 = t258 - t990 / 0.2e1;
t85 = t375 + t258;
t84 = t375 - t1006 / 0.2e1;
t83 = t374 + t259;
t82 = t374 - t1005 / 0.2e1;
t77 = t1009 + t749 + t1031;
t70 = t1063 / 0.2e1;
t68 = t832 + t835;
t63 = t1065 / 0.2e1;
t60 = t812 + t834;
t45 = t749 + (-t669 / 0.2e1 + t796 / 0.2e1) * t715 + t1050 + t1047 + t1033 + t1010 + (-t697 / 0.2e1 + t797 / 0.2e1) * t737 - t1118;
t41 = t1069 / 0.2e1;
t29 = t1071 / 0.2e1;
t22 = m(7) * t171 + t983;
t21 = m(7) * t125 + t983;
t20 = t814 + t1097;
t19 = t20 * qJD(5);
t18 = t814 + t1153;
t17 = (t738 * t838 + t741 * t839) * t712;
t16 = t41 - t1071 / 0.2e1 + t851;
t15 = t29 - t1069 / 0.2e1 + t851;
t11 = t756 + t1122;
t10 = t756 - t1122;
t9 = (t139 / 0.2e1 + t120 / 0.2e1 + t272 / 0.2e1 + t295 / 0.2e1) * t741 + (-t294 / 0.2e1 - t271 / 0.2e1 + t119 / 0.2e1 + t138 / 0.2e1) * t738 + t756;
t8 = t746 + t908 + t909;
t7 = t29 + t41 - t1066 / 0.2e1 + t752;
t6 = t70 + t744 + t140;
t5 = t70 + t742 - t1014 / 0.2e1;
t4 = t743 + t140 - t1063 / 0.2e1;
t3 = t132 + t744 + t63;
t2 = t742 + t63 - t1015 / 0.2e1;
t1 = t132 + t743 - t1065 / 0.2e1;
t12 = [t122 * qJD(2) + t45 * qJD(3) + t142 * qJD(4) + t77 * qJD(5) + t134 * qJD(6), qJD(1) * t122 + qJD(3) * t60 + qJD(4) * t420 + qJD(5) * t161 + qJD(6) * t83, t45 * qJD(1) + t60 * qJD(2) + t68 * qJD(4) + t8 * qJD(5) + t3 * qJD(6) + ((-t478 * t583 + t479 * t585 + (-t566 + t584) * t807) * t1075 + (t446 * t519 + t447 * t521 + t520 * t524 - t522 * t523) * t1074 + (t1121 * t422 + t358 * t424 - t407 * t425 + t408 * t423) * t1073 + (t518 * t700 - (t540 * t738 - t541 * t741) * t806) * t1076) * t1079 + (t746 + (t119 + t138) * t1055 + (-t715 * t867 - t716 * t869 - t737 * t862 - t740 * t864) * t1052 + (-t792 - t790) * (t733 / 0.2e1 + t734 / 0.2e1) + (t715 * t866 + t716 * t868 + t737 * t861 + t740 * t863 + t271 + t294) * t1054 + (t139 + t120 + t272 + t295) * t1053) * qJD(3), qJD(1) * t142 + qJD(2) * t420 + qJD(3) * t68 + qJD(5) * t135 + qJD(6) * t85, t77 * qJD(1) + t161 * qJD(2) + t8 * qJD(3) + t135 * qJD(4) + t746 * qJD(5) + t6 * qJD(6) + ((-t1124 * t456 + t458 * t879 + t895) * t1073 + (t471 * t651 + t808) * t1074) * t1077, t1152 + t83 * qJD(2) + t3 * qJD(3) + t85 * qJD(4) + t6 * qJD(5) + (m(7) * (t1121 * t391 - t1145 * t490 + t358 * t390 + t367 * t489) + t284 + ((t221 / 0.2e1 + t253 / 0.2e1 - t839) * t741 + (-t220 / 0.2e1 - t252 / 0.2e1 - t838) * t738) * t712) * qJD(6); -t62 * qJD(3) + t421 * qJD(4) + t162 * qJD(5) + t82 * qJD(6) + (-t1007 / 0.4e1 - t1029 / 0.4e1 - t1045 / 0.4e1 - t1049 / 0.4e1 - t1051 / 0.4e1) * t1080, 0, -t1149 + ((-t583 * t738 - t585 * t741) * t1075 + t779 * t1074 + (t422 * t738 - t424 * t741) * t1073 - t816 * t1076) * t1079 + t907, t854, qJD(1) * t162 + qJD(3) * t286 + t907, t82 * qJD(1) + (-t390 * t741 + t391 * t738) * t982 + t853 * t153; (t745 + (-t796 + t669) * t715 / 0.2e1 + (-t797 + t697) * t737 / 0.2e1 + t1118) * qJD(1) + t62 * qJD(2) + t9 * qJD(3) - t67 * qJD(4) + t10 * qJD(5) + t1 * qJD(6) + (-t1050 / 0.4e1 - t1047 / 0.4e1 - t1033 / 0.4e1 - t1010 / 0.4e1) * t1080, t144 + t1149, t9 * qJD(1) + (m(7) * (t219 * t266 + t422 * t423 - t424 * t425) + m(6) * (t283 * t344 + t519 * t520 - t521 * t522) + m(5) * (-t584 * t583 - t807 * t585 + (-t741 * (t741 * t805 - t729) - t616 + (-t741 * rSges(5,3) - t738 * t805 - t644) * t738) * (-t671 * t734 - t738 * t810 - t811)) + m(4) * ((-t741 * t754 + (-t741 * rSges(4,3) - t738 * t806) * t738) * (-t738 * t660 - t661 * t741) - t700 * t816) + t814 + ((t1082 * t741 + (-t1083 + t1099) * t738) * t741 - t1100 * t733) * t1054 + ((t1083 * t738 + (-t1082 - t1100) * t741) * t738 + t1099 * t734) * t1052) * qJD(3) + t18 * qJD(5) + t21 * qJD(6), t179 - t1148, t10 * qJD(1) + t18 * qJD(3) + t15 * qJD(6) + ((t129 + t91) * t1073 + (t193 + t279) * t1074) * t1077 + (t814 - t1097) * qJD(5), t1 * qJD(1) + t21 * qJD(3) + t15 * qJD(5) + (m(7) * (t359 * t219 - t390 * t425 + t391 * t423 + t766) + t748) * qJD(6) + t906; -t421 * qJD(2) + t67 * qJD(3) + t136 * qJD(5) + t84 * qJD(6) + (-t1008 / 0.4e1 - t1030 / 0.4e1 - t1046 / 0.4e1) * t1080, -t854, t1148 + ((t422 * t741 + t738 * t424) * t1073 + (t519 * t741 + t738 * t521) * t1074 + (-t583 * t741 + t738 * t585) * t1075) * t1079 + t901, 0, qJD(3) * t996 + t1147 + t901, t84 * qJD(1) + (t390 * t738 + t391 * t741) * t982 + t900; t745 * qJD(1) + t163 * qJD(2) + t11 * qJD(3) - t136 * qJD(4) + t756 * qJD(5) + t4 * qJD(6) + (-t1009 / 0.4e1 - t1031 / 0.4e1) * t1080, qJD(1) * t163 + t144, t11 * qJD(1) + t19 + t16 * qJD(6) + ((t266 * t288 + t422 * t456 - t424 * t458 + t91) * t1073 + (t438 * t344 + t651 * t779 + t193) * t1074) * t1079 + (t814 - t1153) * qJD(3), t179 - t1147, qJD(1) * t756 + qJD(3) * t20 + qJD(6) * t22 + t19, t4 * qJD(1) + t16 * qJD(3) + t22 * qJD(5) + (m(7) * (t359 * t288 - t390 * t458 + t391 * t456 + t766) + t748) * qJD(6) + t906; t87 * qJD(2) + t2 * qJD(3) + t86 * qJD(4) + t5 * qJD(5) + t17 * qJD(6) - t1152, qJD(1) * t87 - t154 * t853, t2 * qJD(1) + ((t1145 * t422 - t266 * t329 + t367 * t424 - t125 + t837) * m(7) + t752) * qJD(3) + t7 * qJD(5) + t844, qJD(1) * t86 + t900, t5 * qJD(1) + t7 * qJD(3) + ((t42 - t171) * m(7) + t752) * qJD(5) + t844, t17 * qJD(1) + (t284 * t1058 + m(7) * (t1145 * t391 - t329 * t359 + t367 * t390) + (t74 * t1055 + t75 * t1052 + (-t220 * t738 + t221 * t741) * t1058) * t712) * qJD(6) + t853 * t13;];
Cq  = t12;