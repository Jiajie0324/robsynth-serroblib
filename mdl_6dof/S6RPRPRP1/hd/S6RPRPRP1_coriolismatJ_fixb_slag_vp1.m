% Calculate matrix of centrifugal and coriolis load on the joints for
% S6RPRPRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2,theta4]';
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
% Datum: 2019-03-09 03:03
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S6RPRPRP1_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP1_coriolismatJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP1_coriolismatJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRP1_coriolismatJ_fixb_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRP1_coriolismatJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRPRP1_coriolismatJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRPRP1_coriolismatJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:01:23
% EndTime: 2019-03-09 03:02:12
% DurationCPUTime: 43.52s
% Computational Cost: add. (107044->931), mult. (89862->1267), div. (0->0), fcn. (96632->10), ass. (0->534)
t634 = qJ(3) + pkin(10);
t631 = cos(t634);
t635 = qJ(1) + pkin(9);
t632 = cos(t635);
t640 = cos(qJ(5));
t849 = t632 * t640;
t630 = sin(t635);
t637 = sin(qJ(5));
t861 = t630 * t637;
t547 = t631 * t861 + t849;
t851 = t632 * t637;
t859 = t630 * t640;
t548 = t631 * t859 - t851;
t629 = sin(t634);
t865 = t629 * t630;
t389 = Icges(7,5) * t548 - Icges(7,6) * t547 + Icges(7,3) * t865;
t392 = Icges(6,5) * t548 - Icges(6,6) * t547 + Icges(6,3) * t865;
t533 = Icges(7,4) * t548;
t395 = -Icges(7,2) * t547 + Icges(7,6) * t865 + t533;
t536 = Icges(6,4) * t548;
t398 = -Icges(6,2) * t547 + Icges(6,6) * t865 + t536;
t532 = Icges(7,4) * t547;
t402 = -Icges(7,1) * t548 - Icges(7,5) * t865 + t532;
t535 = Icges(6,4) * t547;
t405 = -Icges(6,1) * t548 - Icges(6,5) * t865 + t535;
t1103 = (t389 + t392) * t865 + (-t402 - t405) * t548 + (-t395 - t398) * t547;
t549 = -t631 * t851 + t859;
t550 = t631 * t849 + t861;
t863 = t629 * t632;
t391 = Icges(7,5) * t550 + Icges(7,6) * t549 + Icges(7,3) * t863;
t394 = Icges(6,5) * t550 + Icges(6,6) * t549 + Icges(6,3) * t863;
t889 = Icges(7,4) * t550;
t397 = Icges(7,2) * t549 + Icges(7,6) * t863 + t889;
t892 = Icges(6,4) * t550;
t400 = Icges(6,2) * t549 + Icges(6,6) * t863 + t892;
t534 = Icges(7,4) * t549;
t403 = Icges(7,1) * t550 + Icges(7,5) * t863 + t534;
t537 = Icges(6,4) * t549;
t406 = Icges(6,1) * t550 + Icges(6,5) * t863 + t537;
t1102 = (t391 + t394) * t865 + (t403 + t406) * t548 + (-t397 - t400) * t547;
t1076 = rSges(7,1) + pkin(5);
t368 = rSges(7,2) * t548 + t1076 * t547;
t369 = -t550 * rSges(7,2) + t1076 * t549;
t1062 = t368 * t630 - t369 * t632;
t435 = -rSges(6,1) * t547 - rSges(6,2) * t548;
t437 = rSges(6,1) * t549 - rSges(6,2) * t550;
t323 = t435 * t630 + t437 * t632;
t979 = m(7) / 0.2e1;
t983 = -m(6) / 0.2e1;
t833 = t1062 * t979 + t323 * t983;
t1006 = -t548 * rSges(6,1) + t547 * rSges(6,2);
t411 = -rSges(6,3) * t865 + t1006;
t903 = rSges(6,1) * t640;
t723 = -rSges(6,2) * t637 + t903;
t670 = t723 * t629;
t522 = -rSges(6,3) * t631 + t670;
t1081 = -t411 * t631 + t522 * t865;
t724 = t550 * rSges(6,1) + t549 * rSges(6,2);
t413 = rSges(6,3) * t863 + t724;
t333 = t413 * t631 + t522 * t863;
t1009 = -t1081 * t632 + t333 * t630;
t624 = pkin(5) * t640 + pkin(4);
t911 = pkin(4) - t624;
t1014 = t629 * t911;
t902 = rSges(7,1) * t640;
t720 = -rSges(7,2) * t637 + t902;
t636 = -qJ(6) - pkin(8);
t910 = pkin(8) + t636;
t1063 = t629 * t720 + (-rSges(7,3) + t910) * t631;
t805 = -t1014 + t1063;
t1015 = t629 * t910;
t862 = t630 * t631;
t1090 = t548 * rSges(7,1) - t547 * rSges(7,2) - pkin(5) * t851 + t624 * t862;
t914 = pkin(4) * t631;
t827 = -(t914 + t1015) * t630 + rSges(7,3) * t865 + t1090;
t1089 = t631 * t827 + t805 * t865;
t1003 = t550 * rSges(7,1) + t549 * rSges(7,2) + pkin(5) * t861 - t636 * t863;
t746 = t911 * t631;
t912 = pkin(8) * t629;
t826 = (-t746 - t912) * t632 + rSges(7,3) * t863 + t1003;
t244 = t631 * t826 + t805 * t863;
t838 = t1009 * t983 + (t1089 * t632 - t244 * t630) * t979;
t15 = t838 - t833;
t1101 = qJD(1) * t15;
t710 = Icges(7,5) * t640 - Icges(7,6) * t637;
t503 = -Icges(7,3) * t631 + t629 * t710;
t887 = Icges(7,4) * t640;
t714 = -Icges(7,2) * t637 + t887;
t509 = -Icges(7,6) * t631 + t629 * t714;
t888 = Icges(7,4) * t637;
t716 = Icges(7,1) * t640 - t888;
t515 = -Icges(7,5) * t631 + t629 * t716;
t289 = t503 * t865 - t509 * t547 + t515 * t548;
t711 = Icges(6,5) * t640 - Icges(6,6) * t637;
t505 = -Icges(6,3) * t631 + t629 * t711;
t890 = Icges(6,4) * t640;
t715 = -Icges(6,2) * t637 + t890;
t511 = -Icges(6,6) * t631 + t629 * t715;
t891 = Icges(6,4) * t637;
t717 = Icges(6,1) * t640 - t891;
t517 = -Icges(6,5) * t631 + t629 * t717;
t290 = t505 * t865 - t511 * t547 + t517 * t548;
t1040 = t289 + t290;
t1100 = t1102 * t632 + t1103 * t630;
t961 = t629 / 0.2e1;
t960 = t630 / 0.2e1;
t958 = -t631 / 0.2e1;
t956 = -t632 / 0.2e1;
t638 = sin(qJ(3));
t916 = pkin(3) * t638;
t743 = pkin(4) * t629 - pkin(8) * t631 + t916;
t727 = t522 + t743;
t385 = t727 * t630;
t387 = t727 * t632;
t1008 = t630 * t385 + t387 * t632;
t583 = t912 + t914;
t627 = t630 ^ 2;
t628 = t632 ^ 2;
t790 = t627 + t628;
t909 = -qJ(4) - pkin(7);
t610 = t630 * t909;
t623 = t632 * pkin(7);
t641 = cos(qJ(3));
t915 = pkin(3) * t641;
t625 = pkin(2) + t915;
t792 = -t630 * t625 - t632 * t909;
t808 = -t630 * (pkin(2) * t630 - t623 + t792) + t632 * (-t630 * pkin(7) - t610 + (-pkin(2) + t625) * t632);
t733 = t583 * t790 + t808;
t151 = t630 * t827 + t632 * t826 + t733;
t198 = -t411 * t630 + t413 * t632 + t733;
t692 = t743 + t805;
t340 = t692 * t630;
t342 = t692 * t632;
t731 = (rSges(7,2) * t640 + t1076 * t637) * t629;
t461 = t731 * t630;
t462 = t731 * t632;
t565 = (-rSges(6,1) * t637 - rSges(6,2) * t640) * t629;
t1099 = -m(6) * (t1008 * t565 + t198 * t323) - m(7) * (-t1062 * t151 - t340 * t461 - t342 * t462);
t1098 = Icges(4,3) + Icges(5,3);
t773 = t1040 * t958 + t1100 * t961;
t422 = -Icges(7,5) * t547 - Icges(7,6) * t548;
t424 = -Icges(6,5) * t547 - Icges(6,6) * t548;
t1097 = t422 + t424;
t423 = Icges(7,5) * t549 - Icges(7,6) * t550;
t425 = Icges(6,5) * t549 - Icges(6,6) * t550;
t1096 = t423 + t425;
t573 = Icges(5,5) * t631 - Icges(5,6) * t629;
t595 = Icges(4,5) * t641 - Icges(4,6) * t638;
t1095 = (t573 + t595) * t632 + t1098 * t630;
t858 = t630 * t641;
t860 = t630 * t638;
t1068 = -Icges(4,5) * t858 - Icges(5,5) * t862 + Icges(4,6) * t860 + Icges(5,6) * t865 + t1098 * t632;
t818 = -Icges(6,2) * t550 + t406 + t537;
t820 = -Icges(7,2) * t550 + t403 + t534;
t1094 = t818 + t820;
t819 = -Icges(6,2) * t548 - t405 - t535;
t821 = -Icges(7,2) * t548 - t402 - t532;
t1093 = t819 + t821;
t822 = Icges(6,1) * t549 - t400 - t892;
t824 = Icges(7,1) * t549 - t397 - t889;
t1092 = t822 + t824;
t823 = -Icges(6,1) * t547 - t398 - t536;
t825 = -Icges(7,1) * t547 - t395 - t533;
t1091 = t823 + t825;
t293 = t503 * t863 + t509 * t549 + t515 * t550;
t218 = t389 * t863 + t549 * t395 - t402 * t550;
t219 = t391 * t863 + t549 * t397 + t550 * t403;
t706 = t218 * t630 + t219 * t632;
t1079 = -t631 * t293 + t629 * t706;
t294 = t505 * t863 + t511 * t549 + t517 * t550;
t220 = t392 * t863 + t549 * t398 - t405 * t550;
t221 = t394 * t863 + t549 * t400 + t550 * t406;
t705 = t220 * t630 + t221 * t632;
t1080 = -t631 * t294 + t629 * t705;
t761 = t1080 / 0.2e1 + t1079 / 0.2e1;
t1059 = t398 * t637 + t405 * t640;
t873 = t392 * t631;
t257 = t1059 * t629 + t873;
t1060 = t395 * t637 + t402 * t640;
t875 = t389 * t631;
t254 = t1060 * t629 + t875;
t580 = rSges(5,1) * t629 + rSges(5,2) * t631;
t668 = t580 + t916;
t1011 = t668 * t632;
t1012 = t668 * t630;
t1028 = t1011 * t632 + t1012 * t630;
t898 = -rSges(7,3) + t636;
t360 = (t916 + t898 * t631 + (t624 + t720) * t629) * t630;
t772 = t629 * t851;
t855 = t631 * t632;
t794 = rSges(7,2) * t772 + rSges(7,3) * t855;
t854 = t631 * t636;
t361 = (-t916 - t854 + (-t624 - t902) * t629) * t632 + t794;
t592 = pkin(4) * t865;
t951 = rSges(6,3) + pkin(8);
t366 = t592 + (-t631 * t951 + t670 + t916) * t630;
t593 = pkin(8) * t855;
t793 = rSges(6,2) * t772 + rSges(6,3) * t855;
t367 = t593 + (-t916 + (-pkin(4) - t903) * t629) * t632 + t793;
t982 = m(6) / 0.2e1;
t984 = m(5) / 0.2e1;
t767 = (t360 * t630 - t361 * t632) * t979 + (t366 * t630 - t367 * t632) * t982 + t1028 * t984;
t768 = (-t630 * t340 - t342 * t632) * t979 + t1008 * t983 - m(5) * t1028 / 0.2e1;
t57 = t768 - t767;
t1086 = qJD(1) * t57;
t1084 = -t254 - t257;
t701 = -t397 * t637 + t403 * t640;
t874 = t391 * t631;
t255 = t629 * t701 - t874;
t699 = -t400 * t637 + t406 * t640;
t872 = t394 * t631;
t258 = t629 * t699 - t872;
t1083 = t255 + t258;
t893 = Icges(5,4) * t629;
t577 = Icges(5,1) * t631 - t893;
t489 = Icges(5,5) * t630 + t577 * t632;
t894 = Icges(4,4) * t638;
t599 = Icges(4,1) * t641 - t894;
t520 = Icges(4,5) * t630 + t599 * t632;
t1082 = -t489 * t862 - t520 * t858;
t261 = (t368 * t632 + t369 * t630) * t629;
t1078 = -t220 * t632 + t221 * t630;
t1077 = -t218 * t632 + t219 * t630;
t918 = sin(qJ(1)) * pkin(1);
t728 = t792 - t918;
t1031 = t865 * t898 - t1090 + t728;
t917 = cos(qJ(1)) * pkin(1);
t745 = -t610 + t917;
t900 = rSges(7,3) * t629;
t307 = (t624 * t631 + t625 + t900) * t632 + t745 + t1003;
t200 = -t1031 * t865 + t307 * t863;
t1075 = t200 * m(7) * qJD(1);
t1074 = t1091 * t548 - t1093 * t547 + t1097 * t865;
t1073 = t1092 * t548 - t1094 * t547 + t1096 * t865;
t1072 = t1091 * t550 + t1093 * t549 + t1097 * t863;
t1071 = t1092 * t550 + t1094 * t549 + t1096 * t863;
t552 = (-Icges(7,5) * t637 - Icges(7,6) * t640) * t629;
t556 = (-Icges(7,2) * t640 - t888) * t629;
t799 = t515 + t556;
t560 = (-Icges(7,1) * t637 - t887) * t629;
t801 = -t509 + t560;
t245 = -t547 * t799 + t548 * t801 + t552 * t865;
t553 = (-Icges(6,5) * t637 - Icges(6,6) * t640) * t629;
t557 = (-Icges(6,2) * t640 - t891) * t629;
t798 = t517 + t557;
t561 = (-Icges(6,1) * t637 - t890) * t629;
t800 = -t511 + t561;
t246 = -t547 * t798 + t548 * t800 + t553 * t865;
t1070 = -t245 - t246;
t247 = t549 * t799 + t550 * t801 + t552 * t863;
t248 = t549 * t798 + t550 * t800 + t553 * t863;
t1069 = -t248 - t247;
t1067 = -Icges(4,5) * t638 - Icges(5,5) * t629 - Icges(4,6) * t641 - Icges(5,6) * t631;
t1066 = t1095 * t632 + t1082;
t848 = t632 * t641;
t1034 = t1095 * t630 + t489 * t855 + t520 * t848;
t587 = Icges(5,4) * t865;
t488 = Icges(5,1) * t862 - Icges(5,5) * t632 - t587;
t606 = Icges(4,4) * t860;
t519 = Icges(4,1) * t858 - Icges(4,5) * t632 - t606;
t1065 = t1068 * t630 - t488 * t855 - t519 * t848;
t486 = Icges(5,4) * t862 - Icges(5,2) * t865 - Icges(5,6) * t632;
t513 = Icges(4,4) * t858 - Icges(4,2) * t860 - Icges(4,6) * t632;
t1064 = t486 * t629 + t513 * t638;
t996 = -t629 * t951 - t914;
t1030 = t630 * t996 + t1006 + t728;
t329 = (t625 - t996) * t632 + t724 + t745;
t1010 = -t1030 * t632 - t329 * t630;
t980 = -m(7) / 0.2e1;
t1050 = t522 * t630;
t449 = t509 * t630;
t453 = t515 * t630;
t680 = -t503 * t630 + t1060;
t178 = -t680 * t631 + (t449 * t637 - t453 * t640 + t389) * t629;
t451 = t511 * t630;
t455 = t517 * t630;
t678 = -t505 * t630 + t1059;
t180 = -t678 * t631 + (t451 * t637 - t455 * t640 + t392) * t629;
t1047 = t178 + t180;
t450 = t509 * t632;
t454 = t515 * t632;
t679 = -t503 * t632 - t701;
t179 = -t679 * t631 + (t450 * t637 - t454 * t640 + t391) * t629;
t452 = t511 * t632;
t456 = t517 * t632;
t677 = -t505 * t632 - t699;
t181 = -t677 * t631 + (t452 * t637 - t456 * t640 + t394) * t629;
t1046 = t179 + t181;
t187 = -t422 * t631 + (-t637 * t821 + t640 * t825) * t629;
t189 = -t424 * t631 + (-t637 * t819 + t640 * t823) * t629;
t1045 = t187 + t189;
t188 = -t423 * t631 + (-t637 * t820 + t640 * t824) * t629;
t190 = -t425 * t631 + (-t637 * t818 + t640 * t822) * t629;
t1044 = t188 + t190;
t510 = Icges(7,6) * t629 + t631 * t714;
t516 = Icges(7,5) * t629 + t631 * t716;
t504 = Icges(7,3) * t629 + t631 * t710;
t696 = -t637 * t509 + t640 * t515;
t676 = t504 - t696;
t869 = t503 * t631;
t652 = t629 * t676 + t869;
t208 = -t510 * t547 + t516 * t548 + t630 * t652;
t512 = Icges(6,6) * t629 + t631 * t715;
t518 = Icges(6,5) * t629 + t631 * t717;
t506 = Icges(6,3) * t629 + t631 * t711;
t695 = -t637 * t511 + t640 * t517;
t675 = t506 - t695;
t868 = t505 * t631;
t651 = t629 * t675 + t868;
t209 = -t512 * t547 + t518 * t548 + t630 * t651;
t1043 = t208 + t209;
t210 = t510 * t549 + t516 * t550 + t632 * t652;
t211 = t512 * t549 + t518 * t550 + t632 * t651;
t1042 = t210 + t211;
t259 = -t676 * t631 + (-t637 * t510 + t640 * t516 + t503) * t629;
t260 = -t675 * t631 + (-t637 * t512 + t640 * t518 + t505) * t629;
t1041 = t259 + t260;
t1039 = t293 + t294;
t334 = t629 * t696 - t869;
t335 = t629 * t695 - t868;
t1038 = t334 + t335;
t620 = Icges(5,4) * t631;
t883 = Icges(5,2) * t629;
t487 = Icges(5,6) * t630 + (t620 - t883) * t632;
t633 = Icges(4,4) * t641;
t597 = -Icges(4,2) * t638 + t633;
t514 = Icges(4,6) * t630 + t597 * t632;
t850 = t632 * t638;
t1037 = -t487 * t863 - t514 * t850 + t1034;
t1036 = t1083 * t632 + t1084 * t630;
t1035 = t487 * t629 + t514 * t638 + t1068;
t596 = Icges(4,2) * t641 + t894;
t1032 = (t599 / 0.2e1 - t596 / 0.2e1) * t638;
t1029 = -t486 * t863 - t487 * t865 - t513 * t850 - t514 * t860 - t1065 - t1066;
t1027 = -t629 / 0.2e1;
t1026 = -t630 / 0.2e1;
t1025 = t631 / 0.2e1;
t1024 = t632 / 0.2e1;
t1021 = t1070 * t631 + (t1073 * t632 + t1074 * t630) * t629;
t1020 = t1069 * t631 + (t1071 * t632 + t1072 * t630) * t629;
t1005 = t1067 * t630;
t1004 = t1067 * t632;
t598 = Icges(4,1) * t638 + t633;
t1002 = t178 / 0.2e1 + t180 / 0.2e1;
t1001 = -t179 / 0.2e1 - t181 / 0.2e1;
t999 = (t1010 * t565 - t385 * t437 + t387 * t435) * t983 + (t1031 * t462 + t307 * t461 - t340 * t369 - t342 * t368) * t980;
t804 = t631 * t720 - t1015 - t746 + t900;
t815 = t592 + (-t624 * t629 - t1063) * t630;
t153 = (t630 * t805 + t815) * t631 + (t630 * t804 - t827) * t629;
t771 = t629 * t849;
t814 = -t593 + (-t854 + t1014) * t632 - rSges(7,1) * t771 + t794;
t154 = (-t632 * t805 - t814) * t631 + (-t632 * t804 + t826) * t629;
t525 = rSges(6,3) * t629 + t631 * t723;
t262 = (t525 * t630 + t411) * t629;
t460 = -rSges(6,1) * t771 + t793;
t263 = (-t522 * t632 - t460) * t631 + (-t525 * t632 + t413) * t629;
t998 = (t1031 * t153 + t1089 * t360 + t154 * t307 - t244 * t361) * t980 + (t1030 * t262 + t1081 * t366 + t263 * t329 - t333 * t367) * t983;
t574 = Icges(5,2) * t631 + t893;
t529 = t574 * t632;
t895 = Icges(5,1) * t629;
t718 = -t620 - t895;
t531 = t718 * t632;
t995 = (-t489 + t529) * t865 + (-t487 + t531) * t862;
t751 = t517 / 0.2e1 + t515 / 0.2e1;
t753 = t511 / 0.2e1 + t509 / 0.2e1;
t994 = -t637 * (t557 / 0.2e1 + t556 / 0.2e1 + t751) - t640 * (-t561 / 0.2e1 - t560 / 0.2e1 + t753);
t528 = -Icges(5,2) * t862 - t587;
t530 = t718 * t630;
t558 = -Icges(4,2) * t858 - t606;
t562 = t598 * t630;
t993 = t629 * (t488 + t528) + t631 * (t486 - t530) + (t513 + t562) * t641 + (t519 + t558) * t638;
t992 = t637 * t753 - t640 * t751 + t504 / 0.2e1 + t506 / 0.2e1 - t620 + t883 / 0.2e1 - t895 / 0.2e1;
t991 = t637 * (t512 / 0.2e1 + t510 / 0.2e1) - t640 * (t518 / 0.2e1 + t516 / 0.2e1) - t503 / 0.2e1 - t505 / 0.2e1 + t574 / 0.2e1 - t577 / 0.2e1;
t989 = 0.4e1 * qJD(1);
t988 = 2 * qJD(3);
t986 = 2 * qJD(5);
t985 = 4 * qJD(5);
t698 = -t411 * t632 - t413 * t630;
t213 = t698 * t631 + (-t1050 * t632 - t460 * t630) * t629;
t286 = t698 * t629;
t976 = m(6) * (t1081 * t262 + t213 * t286 - t263 * t333);
t666 = -t630 * t826 + t632 * t827;
t111 = t666 * t631 + (-t630 * t814 + t632 * t815) * t629;
t194 = t666 * t629;
t837 = t1089 * t855 - t244 * t862;
t971 = m(7) * (-t111 * t631 + (t153 * t632 + t154 * t630 + t194) * t629 + t837);
t970 = m(7) * (t1089 * t153 + t111 * t194 - t154 * t244);
t551 = t790 * t629;
t963 = m(7) * (t194 * t551 + t837);
t955 = -t632 / 0.4e1;
t905 = rSges(4,1) * t641;
t747 = pkin(2) + t905;
t791 = rSges(4,2) * t860 + t632 * rSges(4,3);
t439 = -t630 * t747 + t623 + t791 - t918;
t608 = rSges(4,2) * t850;
t440 = t917 - t608 + t747 * t632 + (rSges(4,3) + pkin(7)) * t630;
t600 = rSges(4,1) * t638 + rSges(4,2) * t641;
t566 = t600 * t630;
t567 = t600 * t632;
t950 = m(4) * (t439 * t566 - t440 * t567);
t690 = rSges(5,1) * t862 - rSges(5,2) * t865 - t632 * rSges(5,3);
t414 = -t690 + t728;
t741 = -rSges(5,2) * t863 + t630 * rSges(5,3);
t904 = rSges(5,1) * t631;
t415 = (t625 + t904) * t632 + t741 + t745;
t948 = m(5) * (-t1011 * t415 + t1012 * t414);
t947 = m(5) * (t414 * t632 + t415 * t630);
t940 = m(6) * (t1030 * t366 + t329 * t367);
t939 = m(6) * (-t1030 * t435 + t329 * t437);
t938 = m(6) * t1010;
t832 = t1031 * t855 + t307 * t862;
t931 = m(7) * (-t340 * t863 + t342 * t865 + t832);
t930 = m(7) * (-t1089 * t865 - t244 * t863);
t929 = m(7) * ((t360 * t632 + t361 * t630) * t629 + t832);
t927 = m(7) * (t1031 * t360 + t307 * t361);
t926 = m(7) * (t1031 * t368 + t307 * t369);
t925 = m(7) * (t1062 * t631 + (t461 * t630 + t462 * t632) * t629);
t924 = m(7) * (t1031 * t632 + t307 * t630);
t920 = m(7) * t261;
t418 = m(7) * t551;
t907 = m(7) * qJD(3);
t906 = m(7) * qJD(6);
t864 = t629 * t631;
t830 = -t340 * t862 - t342 * t855;
t795 = t790 * t864;
t789 = qJD(1) * t629;
t788 = qJD(1) * t631;
t787 = qJD(3) * t630;
t786 = qJD(3) * t632;
t785 = qJD(5) * t629;
t784 = qJD(5) * t631;
t782 = t418 * qJD(1);
t476 = (t551 / 0.2e1 + t1027) * m(7);
t781 = t476 * qJD(2);
t656 = t629 * t680 + t875;
t155 = t449 * t547 - t453 * t548 + t630 * t656;
t655 = t629 * t679 + t874;
t156 = t450 * t547 - t454 * t548 + t630 * t655;
t654 = t629 * t678 + t873;
t157 = t451 * t547 - t455 * t548 + t630 * t654;
t653 = t629 * t677 + t872;
t158 = t452 * t547 - t456 * t548 + t630 * t653;
t778 = ((t156 + t158) * t632 + (t155 + t157) * t630 + t1040) * t961 + (-t1043 + t1100) * t1025;
t159 = -t449 * t549 - t453 * t550 + t632 * t656;
t160 = -t450 * t549 - t454 * t550 + t632 * t655;
t161 = -t451 * t549 - t455 * t550 + t632 * t654;
t162 = -t452 * t549 - t456 * t550 + t632 * t653;
t777 = ((t160 + t162) * t632 + (t159 + t161) * t630 + t1039) * t961 + (t705 + t706 - t1042) * t1025;
t776 = (t1036 - t1041) * t958 + (t1046 * t632 + t1047 * t630 + t1038) * t1027;
t775 = t1024 * t1074 + t1026 * t1073;
t774 = t1071 * t960 + t1072 * t956;
t765 = t865 / 0.4e1;
t760 = t1025 * t1038 + t1027 * t1036;
t756 = t187 / 0.2e1 + t189 / 0.2e1;
t755 = -t188 / 0.2e1 - t190 / 0.2e1;
t749 = t553 / 0.2e1 + t552 / 0.2e1;
t748 = t573 / 0.2e1 + t595 / 0.2e1;
t744 = rSges(5,2) * t629 - t904 - t915;
t742 = -t583 - t915;
t732 = t790 * t916;
t726 = -t525 + t742;
t645 = (t262 * t630 - t263 * t632) * t983 + (t153 * t630 - t154 * t632) * t980;
t667 = (-t461 * t632 + t462 * t630) * t979;
t54 = t667 + t645;
t61 = 0.2e1 * (t111 / 0.4e1 + t1062 / 0.4e1) * m(7) + 0.2e1 * (t213 / 0.4e1 - t323 / 0.4e1) * m(6);
t709 = -t61 * qJD(2) + t54 * qJD(4);
t691 = t742 - t804;
t689 = -t775 - t778;
t688 = t774 - t777;
t686 = t731 * t629;
t669 = t630 * (pkin(8) * t862 - t592) + t632 * (-pkin(4) * t863 + t593) - t732;
t559 = t596 * t632;
t563 = t598 * t632;
t664 = (-t514 - t563) * t641 + (-t520 + t559) * t638;
t657 = -t999 + (t1044 - t1069) * t630 / 0.4e1 + (t1045 - t1070) * t955;
t650 = (t1068 * t632 + (t488 * t631 + t519 * t641 - t1064) * t630) * t956 + (t1035 * t632 - t1034 + t1037) * t1024 + (t1035 * t630 + t1029 + t1066) * t960;
t649 = t1037 * t960 + t1034 * t1026 + ((t1064 + t1095) * t632 + t1029 + t1065 + t1082) * t956;
t644 = (-t865 / 0.4e1 + t765) * (t1077 + t1078) + (t955 + t632 / 0.4e1) * (t1079 + t1080);
t643 = -t998 + t1038 * t961 + t1041 * t958 + (t1043 + t1047) * t765 + (t1042 + t1046) * t863 / 0.4e1 + (t1040 + t1084) * t862 / 0.4e1 + (t1039 + t1083) * t855 / 0.4e1;
t602 = -rSges(4,2) * t638 + t905;
t494 = t744 * t632;
t492 = t744 * t630;
t475 = t418 / 0.2e1 + m(7) * t961;
t441 = t795 - t864;
t421 = -t566 * t630 - t567 * t632;
t388 = t726 * t632;
t386 = t726 * t630;
t362 = -t580 * t790 - t732;
t346 = -t437 * t631 - t565 * t863;
t345 = t435 * t631 + t565 * t865;
t343 = t691 * t632;
t341 = t691 * t630;
t313 = (t435 * t632 - t437 * t630) * t629;
t303 = -t369 * t631 + t632 * t686;
t302 = -t368 * t631 - t630 * t686;
t278 = -t631 * t553 + (-t637 * t798 + t640 * t800) * t629;
t277 = -t631 * t552 + (-t637 * t799 + t640 * t801) * t629;
t269 = t920 / 0.2e1;
t268 = -t1050 * t630 + t460 * t632 + t669;
t195 = t925 / 0.2e1;
t192 = t630 * t815 + t632 * t814 + t669;
t133 = t929 / 0.2e1;
t132 = t930 / 0.2e1;
t116 = t931 / 0.2e1;
t106 = t924 - t938 + t947;
t93 = t151 * t551 + t830;
t82 = t963 / 0.2e1;
t80 = -t161 * t632 + t162 * t630;
t79 = -t159 * t632 + t160 * t630;
t78 = -t157 * t632 + t158 * t630;
t77 = -t155 * t632 + t156 * t630;
t63 = t629 * t994 - t749 * t631 + t926 + t939;
t62 = (t213 + t323) * t982 + (t111 - t1062) * t979;
t56 = t767 + t768;
t53 = t667 - t645;
t39 = t116 - t929 / 0.2e1;
t38 = t116 + t133;
t37 = t133 - t931 / 0.2e1;
t27 = (t598 / 0.2e1 + t597 / 0.2e1) * t641 + t1032 + t950 + t948 + t940 + t927 - t992 * t631 - t991 * t629;
t21 = t132 + t269;
t20 = t132 - t920 / 0.2e1;
t19 = t269 - t930 / 0.2e1;
t16 = t971 / 0.2e1;
t13 = t833 + t838;
t10 = t82 + t195 - t971 / 0.2e1;
t9 = t82 + t16 - t925 / 0.2e1;
t8 = t195 + t16 - t963 / 0.2e1;
t7 = t630 * t774 + t632 * t775 - t1099;
t5 = t630 * t650 + t632 * t649;
t4 = t976 + t970 + (t630 * t773 + t632 * t761 + t776) * t631 + (t630 * t778 + t632 * t777 - t760) * t629;
t3 = t657 + t643;
t2 = t643 + (t246 / 0.4e1 + t245 / 0.4e1 + t189 / 0.4e1 + t187 / 0.4e1) * t632 + (-t248 / 0.4e1 - t247 / 0.4e1 - t190 / 0.4e1 - t188 / 0.4e1) * t630 + t644 + t999;
t1 = t657 + (-t335 / 0.2e1 - t334 / 0.2e1 + (-t211 / 0.4e1 - t210 / 0.4e1 - t181 / 0.4e1 - t179 / 0.4e1) * t632 + (-t209 / 0.4e1 - t208 / 0.4e1 - t180 / 0.4e1 - t178 / 0.4e1) * t630) * t629 + (t260 / 0.2e1 + t259 / 0.2e1 + (-t294 / 0.4e1 - t293 / 0.4e1 - t258 / 0.4e1 - t255 / 0.4e1) * t632 + (-t290 / 0.4e1 - t289 / 0.4e1 + t257 / 0.4e1 + t254 / 0.4e1) * t630) * t631 + t644 + t998;
t6 = [t27 * qJD(3) + t106 * qJD(4) + t63 * qJD(5) + t200 * t906, 0, t27 * qJD(1) + t56 * qJD(4) + t3 * qJD(5) + t38 * qJD(6) + ((t1030 * t388 + t329 * t386 - t366 * t387 - t367 * t385) * t982 + (t1031 * t343 + t307 * t341 - t340 * t361 - t342 * t360) * t979 + (t414 * t494 + t415 * t492) * t984) * t988 + (-t209 / 0.2e1 - t649 - t208 / 0.2e1 + t748 * t632 + m(4) * (-t439 * t602 - t566 * t600) + (t486 / 0.2e1 - t530 / 0.2e1) * t629 + (-t488 / 0.2e1 - t528 / 0.2e1) * t631 + (t513 / 0.2e1 + t562 / 0.2e1) * t638 + (-t519 / 0.2e1 - t558 / 0.2e1) * t641 - t1002) * t786 + (t211 / 0.2e1 + t210 / 0.2e1 - t650 + (t520 / 0.2e1 - t559 / 0.2e1) * t641 + (-t563 / 0.2e1 - t514 / 0.2e1) * t638 + (t489 / 0.2e1 - t529 / 0.2e1) * t631 + (t531 / 0.2e1 - t487 / 0.2e1) * t629 + m(4) * (-t440 * t602 + t567 * t600) + t748 * t630 - t1001) * t787, qJD(1) * t106 + qJD(3) * t56 + qJD(5) * t13, t63 * qJD(1) + t3 * qJD(3) + t13 * qJD(4) + t21 * qJD(6) + ((t1031 * t302 + t1089 * t368 - t244 * t369 + t303 * t307) * t979 + (t1030 * t345 - t1081 * t435 + t329 * t346 - t333 * t437) * t982) * t986 + (-t277 - t278) * t784 + ((t248 / 0.2e1 + t247 / 0.2e1 - t755) * t632 + (t246 / 0.2e1 + t245 / 0.2e1 + t756) * t630) * t785, t38 * qJD(3) + t21 * qJD(5) + t1075; 0, 0, t62 * qJD(5) + t475 * qJD(6) + (m(4) * t421 / 0.2e1 + t362 * t984 + t268 * t982 + t192 * t979) * t988, 0, t62 * qJD(3) + (-t261 * t979 + t313 * t982) * t986, t475 * qJD(3); t5 * qJD(3) + t57 * qJD(4) + t1 * qJD(5) + t39 * qJD(6) + (-t950 / 0.4e1 - t948 / 0.4e1 - t940 / 0.4e1 - t927 / 0.4e1) * t989 + t992 * t788 + t991 * t789 + (-(t598 + t597) * t641 / 0.2e1 - t1032) * qJD(1), -qJD(5) * t61 + qJD(6) * t476, t5 * qJD(1) + t7 * qJD(5) + t93 * t906 + (m(7) * (t151 * t192 - t340 * t341 - t342 * t343) + m(6) * (t198 * t268 - t385 * t386 - t387 * t388) + m(5) * ((t630 * t690 + t632 * (rSges(5,1) * t855 + t741) + t808) * t362 - t1012 * t492 - t1011 * t494) + m(4) * (t600 * t602 * t790 + (t630 * (rSges(4,1) * t858 - t791) + t632 * (rSges(4,1) * t848 + t630 * rSges(4,3) - t608)) * t421) + (t80 + t79 + (t993 * t632 + (t664 - t1005) * t630 + t995) * t632 + t1004 * t627) * t960 + (t78 + t77 + (t664 * t630 + (t993 - t1004) * t632 + t995) * t630 + t1005 * t628) * t956) * qJD(3), qJD(5) * t54 + t1086, t1 * qJD(1) + t7 * qJD(3) + (t1020 * t960 + t1021 * t956) * qJD(5) + t10 * qJD(6) + (-t976 / 0.4e1 - t970 / 0.4e1) * t985 + ((t1009 * t565 + t198 * t313 + t286 * t323 - t345 * t387 - t346 * t385) * t982 + (-t1062 * t194 + t1089 * t462 - t151 * t261 - t244 * t461 - t302 * t342 - t303 * t340) * t979) * t986 + ((t756 - t761) * t632 + (t755 - t773) * t630 - t776) * t784 + (t630 * t689 + t632 * t688 + t760) * t785 + t709, t39 * qJD(1) + t781 + t93 * t907 + t10 * qJD(5) + (-t551 * t631 - t441 + t795) * t906; -t57 * qJD(3) - t15 * qJD(5) - t418 * qJD(6) + (-t924 / 0.4e1 + t938 / 0.4e1 - t947 / 0.4e1) * t989, 0, -t1086 + t53 * qJD(5) + ((-t341 * t632 + t343 * t630) * t979 + (-t386 * t632 + t388 * t630) * t982 + (-t492 * t632 + t494 * t630) * t984) * t988, 0, -t1101 + t53 * qJD(3) + ((t345 * t630 - t346 * t632) * t982 + (t302 * t630 - t303 * t632) * t979) * t986, -t782; t2 * qJD(3) + t15 * qJD(4) + t20 * qJD(6) + t749 * t788 + (-t926 / 0.4e1 - t939 / 0.4e1) * t989 - t994 * t789, qJD(3) * t61, t2 * qJD(1) + t4 * qJD(5) + t9 * qJD(6) + ((t1089 * t343 + t111 * t151 - t153 * t342 - t154 * t340 + t192 * t194 - t244 * t341) * t979 + (t1081 * t388 + t198 * t213 - t262 * t387 - t263 * t385 + t268 * t286 - t333 * t386) * t982) * t988 + ((t1077 / 0.2e1 + t1078 / 0.2e1 + t1002) * t631 + t689) * t786 + ((t1102 * t960 + t1103 * t956 + t1001) * t631 - t688) * t787 - t709 + (((t80 / 0.2e1 + t79 / 0.2e1 + t254 / 0.2e1 + t257 / 0.2e1) * t632 + (t258 / 0.2e1 + t255 / 0.2e1 + t78 / 0.2e1 + t77 / 0.2e1) * t630) * t629 + t1099) * qJD(3), -qJD(3) * t54 + t1101, t4 * qJD(3) + ((t1089 * t302 - t194 * t261 - t244 * t303) * m(7) / 0.4e1 + (t1081 * t345 + t286 * t313 - t333 * t346) * m(6) / 0.4e1) * t985 + (t278 / 0.2e1 + t277 / 0.2e1) * qJD(5) * t631 ^ 2 + (t1021 * t960 + (t1044 * t632 + t1045 * t630) * t958 + t1020 * t1024) * t785, qJD(1) * t20 + qJD(3) * t9; t37 * qJD(3) + t418 * qJD(4) + t19 * qJD(5) - t1075, -t476 * qJD(3), t37 * qJD(1) - t781 + (-t192 * t631 + (t341 * t630 + t343 * t632 + t151) * t629 - t93 + t830) * t907 + t8 * qJD(5) + t441 * t906, t782, t19 * qJD(1) + t8 * qJD(3) + m(7) * (t261 * t631 + (t302 * t632 + t303 * t630) * t629) * qJD(5), t441 * t907;];
Cq  = t6;
