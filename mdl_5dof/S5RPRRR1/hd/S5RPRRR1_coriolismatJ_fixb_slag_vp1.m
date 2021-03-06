% Calculate matrix of centrifugal and coriolis load on the joints for
% S5RPRRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [1x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[dummy]';
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
% Datum: 2019-12-05 18:10
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5RPRRR1_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(1,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR1_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR1_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [1 1]), ...
  'S5RPRRR1_coriolismatJ_fixb_slag_vp1: pkin has to be [1x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRR1_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRRR1_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RPRRR1_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:08:41
% EndTime: 2019-12-05 18:09:49
% DurationCPUTime: 55.03s
% Computational Cost: add. (96570->1184), mult. (251182->1745), div. (0->0), fcn. (304234->8), ass. (0->623)
t647 = sin(qJ(3));
t989 = t647 / 0.2e1;
t648 = sin(qJ(1));
t986 = t648 / 0.2e1;
t651 = cos(qJ(3));
t984 = -t651 / 0.2e1;
t652 = cos(qJ(1));
t982 = -t652 / 0.2e1;
t981 = -t652 / 0.4e1;
t646 = sin(qJ(4));
t850 = t652 * t646;
t650 = cos(qJ(4));
t857 = t650 * t651;
t598 = t648 * t857 - t850;
t645 = sin(qJ(5));
t649 = cos(qJ(5));
t873 = t647 * t649;
t542 = -t598 * t645 + t648 * t873;
t874 = t647 * t648;
t543 = t598 * t649 + t645 * t874;
t863 = t648 * t651;
t597 = t646 * t863 + t650 * t652;
t434 = Icges(6,5) * t543 + Icges(6,6) * t542 + Icges(6,3) * t597;
t936 = Icges(6,4) * t543;
t437 = Icges(6,2) * t542 + Icges(6,6) * t597 + t936;
t537 = Icges(6,4) * t542;
t440 = Icges(6,1) * t543 + Icges(6,5) * t597 + t537;
t271 = t434 * t597 + t437 * t542 + t440 * t543;
t852 = t651 * t652;
t865 = t648 * t646;
t602 = t650 * t852 + t865;
t871 = t647 * t652;
t546 = -t602 * t645 + t649 * t871;
t547 = t602 * t649 + t645 * t871;
t864 = t648 * t650;
t601 = t651 * t850 - t864;
t436 = Icges(6,5) * t547 + Icges(6,6) * t546 + Icges(6,3) * t601;
t935 = Icges(6,4) * t547;
t439 = Icges(6,2) * t546 + Icges(6,6) * t601 + t935;
t538 = Icges(6,4) * t546;
t442 = Icges(6,1) * t547 + Icges(6,5) * t601 + t538;
t272 = t436 * t597 + t439 * t542 + t442 * t543;
t727 = t271 * t648 + t272 * t652;
t853 = t651 * t645;
t872 = t647 * t650;
t596 = t649 * t872 - t853;
t694 = t645 * t872 + t649 * t651;
t876 = t646 * t647;
t503 = Icges(6,5) * t596 - Icges(6,6) * t694 + Icges(6,3) * t876;
t934 = Icges(6,4) * t596;
t508 = -Icges(6,2) * t694 + Icges(6,6) * t876 + t934;
t588 = Icges(6,4) * t694;
t513 = Icges(6,1) * t596 + Icges(6,5) * t876 - t588;
t336 = t503 * t597 + t508 * t542 + t513 * t543;
t914 = t336 * t651;
t139 = t647 * t727 - t914;
t985 = t648 / 0.4e1;
t1101 = t139 * t985;
t525 = -Icges(6,5) * t694 - Icges(6,6) * t596;
t1100 = t525 * t876;
t729 = Icges(5,5) * t650 - Icges(5,6) * t646;
t572 = -Icges(5,3) * t651 + t647 * t729;
t937 = Icges(5,4) * t650;
t732 = -Icges(5,2) * t646 + t937;
t576 = -Icges(5,6) * t651 + t647 * t732;
t938 = Icges(5,4) * t646;
t734 = Icges(5,1) * t650 - t938;
t580 = -Icges(5,5) * t651 + t647 * t734;
t413 = t572 * t874 - t576 * t597 + t580 * t598;
t505 = Icges(5,5) * t598 - Icges(5,6) * t597 + Icges(5,3) * t874;
t590 = Icges(5,4) * t598;
t510 = -Icges(5,2) * t597 + Icges(5,6) * t874 + t590;
t589 = Icges(5,4) * t597;
t516 = -Icges(5,1) * t598 - Icges(5,5) * t874 + t589;
t352 = t505 * t874 - t510 * t597 - t516 * t598;
t507 = Icges(5,5) * t602 - Icges(5,6) * t601 + Icges(5,3) * t871;
t939 = Icges(5,4) * t602;
t512 = -Icges(5,2) * t601 + Icges(5,6) * t871 + t939;
t591 = Icges(5,4) * t601;
t517 = Icges(5,1) * t602 + Icges(5,5) * t871 - t591;
t353 = t507 * t874 - t512 * t597 + t517 * t598;
t724 = t352 * t648 + t353 * t652;
t774 = t139 / 0.2e1 + t413 * t984 + t724 * t989;
t778 = t874 / 0.4e1;
t779 = -t874 / 0.4e1;
t1099 = t779 + t778;
t996 = t597 / 0.4e1;
t998 = -t597 / 0.4e1;
t1098 = t998 + t996;
t1097 = -m(6) / 0.4e1;
t415 = t572 * t871 - t576 * t601 + t580 * t602;
t354 = t505 * t871 - t510 * t601 - t516 * t602;
t355 = t507 * t871 - t512 * t601 + t517 * t602;
t723 = t354 * t648 + t355 * t652;
t1080 = -t415 * t651 + t647 * t723;
t273 = t434 * t601 + t437 * t546 + t440 * t547;
t274 = t436 * t601 + t439 * t546 + t442 * t547;
t726 = t273 * t648 + t274 * t652;
t338 = t503 * t601 + t508 * t546 + t513 * t547;
t913 = t338 * t651;
t1094 = t647 * t726 - t913;
t773 = t1094 / 0.2e1 + t1080 / 0.2e1;
t129 = t271 * t597 + t272 * t601 + t336 * t876;
t165 = -t271 * t652 + t272 * t648;
t1090 = qJD(1) * t1097;
t1093 = t273 * t597 + t274 * t601 + t338 * t876;
t1092 = -t273 * t652 + t274 * t648;
t1091 = -m(5) / 0.4e1;
t518 = rSges(6,1) * t596 - rSges(6,2) * t694 + rSges(6,3) * t876;
t443 = rSges(6,1) * t543 + rSges(6,2) * t542 + rSges(6,3) * t597;
t902 = t443 * t651;
t1088 = t518 * t874 + t902;
t1075 = t510 * t646 + t516 * t650;
t897 = t505 * t651;
t377 = t1075 * t647 + t897;
t299 = -t434 * t876 + t437 * t694 - t440 * t596;
t1087 = qJD(1) * t1091;
t637 = t652 * qJ(2);
t429 = -t443 + t637;
t1081 = -t443 * t876 + t518 * t597;
t1079 = -t354 * t652 + t355 * t648;
t1077 = -m(5) / 0.2e1;
t519 = rSges(5,1) * t598 - rSges(5,2) * t597 + rSges(5,3) * t874;
t498 = -t519 + t637;
t740 = rSges(5,1) * t650 - rSges(5,2) * t646;
t585 = -rSges(5,3) * t651 + t647 * t740;
t1076 = t519 * t651 + t585 * t874;
t1012 = m(5) / 0.4e1;
t1010 = m(6) / 0.4e1;
t1072 = t1092 / 0.4e1;
t993 = t601 / 0.4e1;
t983 = -t651 / 0.4e1;
t803 = 0.2e1 * m(6);
t1071 = -t803 / 0.4e1;
t1063 = -t299 + t336;
t300 = t436 * t876 - t439 * t694 + t442 * t596;
t1062 = t300 + t338;
t578 = Icges(4,4) * t863 - Icges(4,2) * t874 - Icges(4,6) * t652;
t641 = Icges(4,4) * t651;
t931 = Icges(4,2) * t647;
t579 = Icges(4,6) * t648 + (t641 - t931) * t652;
t940 = Icges(4,4) * t647;
t621 = Icges(4,1) * t651 - t940;
t583 = Icges(4,5) * t648 + t621 * t652;
t560 = t583 * t863;
t617 = Icges(4,5) * t651 - Icges(4,6) * t647;
t575 = Icges(4,3) * t648 + t617 * t652;
t749 = t575 * t652 - t560;
t574 = Icges(4,5) * t863 - Icges(4,6) * t874 - Icges(4,3) * t652;
t630 = Icges(4,4) * t874;
t582 = Icges(4,1) * t863 - Icges(4,5) * t652 - t630;
t819 = -t648 * t574 - t582 * t852;
t1061 = -t578 * t871 - t579 * t874 - t749 - t819;
t681 = rSges(6,1) * t547 + rSges(6,2) * t546 + rSges(6,3) * t601;
t676 = t651 * t681;
t388 = t518 * t871 + t676;
t906 = t388 * t648;
t1038 = t1088 * t652 - t906;
t304 = 0.2e1 * t1038;
t522 = rSges(5,1) * t602 - rSges(5,2) * t601 + rSges(5,3) * t871;
t456 = t522 * t651 + t585 * t871;
t900 = t456 * t648;
t1039 = t1076 * t652 - t900;
t372 = 0.2e1 * t1039;
t839 = t1010 * t304 + t1012 * t372;
t1016 = -0.2e1 * t652;
t845 = (t1016 * t1088 + t304 + 0.2e1 * t906) * t1010 + (t1016 * t1076 + t372 + 0.2e1 * t900) * t1012;
t1060 = t839 - t845;
t531 = -Icges(6,1) * t694 - t934;
t1059 = (t531 / 0.2e1 - t508 / 0.2e1) * t596;
t1044 = t585 * t652;
t870 = t648 * qJ(2);
t428 = t681 + t870;
t568 = t694 * t648;
t569 = t596 * t648;
t796 = t647 * t865;
t489 = -rSges(6,1) * t569 + rSges(6,2) * t568 - rSges(6,3) * t796;
t570 = t694 * t652;
t571 = t596 * t652;
t795 = t647 * t850;
t490 = -rSges(6,1) * t571 + rSges(6,2) * t570 - rSges(6,3) * t795;
t497 = t522 + t870;
t558 = rSges(5,1) * t647 * t864 - rSges(5,2) * t796 - rSges(5,3) * t863;
t742 = rSges(4,1) * t852 - rSges(4,2) * t871;
t564 = (rSges(4,3) + qJ(2)) * t648 + t742;
t705 = rSges(4,1) * t863 - rSges(4,2) * t874 - rSges(4,3) * t652;
t565 = t637 - t705;
t573 = Icges(5,3) * t647 + t651 * t729;
t624 = rSges(4,1) * t647 + rSges(4,2) * t651;
t613 = t624 * t648;
t614 = t624 * t652;
t760 = t576 / 0.2e1 - t503 / 0.2e1;
t859 = t650 * t580;
t600 = t645 * t647 + t649 * t857;
t880 = t600 * t513;
t599 = -t650 * t853 + t873;
t881 = t599 * t508;
t875 = t646 * t651;
t514 = Icges(6,1) * t600 + Icges(6,4) * t599 + Icges(6,5) * t875;
t884 = t596 * t514;
t509 = Icges(6,4) * t600 + Icges(6,2) * t599 + Icges(6,6) * t875;
t886 = t694 * t509;
t941 = Icges(4,1) * t647;
t1056 = (t646 * t760 + t573 / 0.2e1 - t641 + t931 / 0.2e1 - t941 / 0.2e1 - t859 / 0.2e1) * t651 - t881 / 0.2e1 - t880 / 0.2e1 + t886 / 0.2e1 - t884 / 0.2e1 - (-t564 * t614 + t565 * t613) * m(4) - m(5) * (-t1044 * t497 + t498 * t558) - m(6) * (t428 * t490 - t429 * t489);
t643 = t648 ^ 2;
t1053 = m(4) / 0.2e1;
t1052 = -t647 / 0.2e1;
t1051 = -t648 / 0.2e1;
t1050 = t651 / 0.2e1;
t980 = t652 / 0.2e1;
t521 = rSges(6,1) * t600 + rSges(6,2) * t599 + rSges(6,3) * t875;
t894 = t518 * t648;
t751 = t489 + t894;
t311 = t521 * t597 + (-t647 * t751 - t902) * t646;
t893 = t518 * t652;
t750 = t490 + t893;
t312 = -t601 * t521 + (t647 * t750 + t676) * t646;
t198 = 0.2e1 * t311 * t648 - 0.2e1 * t312 * t652;
t1049 = m(6) * t198 * qJD(2);
t526 = -Icges(5,5) * t597 - Icges(5,6) * t598;
t822 = Icges(5,2) * t598 + t516 + t589;
t825 = -Icges(5,1) * t597 - t510 - t590;
t307 = t526 * t874 + t597 * t822 + t598 * t825;
t527 = -Icges(5,5) * t601 - Icges(5,6) * t602;
t821 = Icges(5,2) * t602 - t517 + t591;
t824 = -Icges(5,1) * t601 - t512 - t939;
t308 = t527 * t874 + t597 * t821 + t598 * t824;
t603 = (-Icges(5,5) * t646 - Icges(5,6) * t650) * t647;
t606 = (-Icges(5,2) * t650 - t938) * t647;
t815 = -t580 - t606;
t609 = (-Icges(5,1) * t646 - t937) * t647;
t817 = -t576 + t609;
t364 = t597 * t815 + t598 * t817 + t603 * t874;
t731 = -Icges(6,4) * t649 + Icges(6,2) * t645;
t477 = Icges(6,6) * t598 + t597 * t731;
t733 = -Icges(6,1) * t649 + Icges(6,4) * t645;
t479 = Icges(6,5) * t598 + t597 * t733;
t728 = -Icges(6,5) * t649 + Icges(6,6) * t645;
t690 = Icges(6,3) * t598 + t437 * t645 - t440 * t649 + t597 * t728;
t185 = t434 * t598 + t477 * t542 + t479 * t543 + t597 * t690;
t478 = Icges(6,6) * t602 + t601 * t731;
t480 = Icges(6,5) * t602 + t601 * t733;
t689 = Icges(6,3) * t602 + t439 * t645 - t442 * t649 + t601 * t728;
t186 = t436 * t598 + t478 * t542 + t480 * t543 + t597 * t689;
t551 = (Icges(6,6) * t650 + t646 * t731) * t647;
t554 = (Icges(6,5) * t650 + t646 * t733) * t647;
t548 = (Icges(6,3) * t650 + t646 * t728) * t647;
t862 = t649 * t513;
t877 = t645 * t508;
t688 = t548 - t862 + t877;
t255 = t503 * t598 + t542 * t551 + t543 * t554 + t597 * t688;
t68 = -t255 * t651 + (t185 * t648 + t186 * t652) * t647;
t1048 = t68 - t364 * t651 + (t307 * t648 + t308 * t652) * t647;
t309 = t526 * t871 + t601 * t822 + t602 * t825;
t310 = t527 * t871 + t601 * t821 + t602 * t824;
t365 = t601 * t815 + t602 * t817 + t603 * t871;
t187 = t434 * t602 + t477 * t546 + t479 * t547 + t601 * t690;
t188 = t436 * t602 + t478 * t546 + t480 * t547 + t601 * t689;
t256 = t503 * t602 + t546 * t551 + t547 * t554 + t601 * t688;
t69 = -t256 * t651 + (t187 * t648 + t188 * t652) * t647;
t1047 = t69 - t365 * t651 + (t309 * t648 + t310 * t652) * t647;
t528 = -Icges(6,2) * t596 - t588;
t823 = t513 + t528;
t1043 = t694 * t823;
t979 = t652 / 0.4e1;
t1040 = t1094 * t979 + t1101;
t381 = t518 * t601 - t681 * t876;
t908 = t381 * t648;
t1037 = t1081 * t652 - t908;
t739 = -rSges(6,1) * t649 + rSges(6,2) * t645;
t465 = rSges(6,1) * t542 - rSges(6,2) * t543;
t534 = -rSges(6,1) * t694 - rSges(6,2) * t596;
t410 = t465 * t651 + t534 * t874;
t466 = rSges(6,1) * t546 - rSges(6,2) * t547;
t411 = -t466 * t651 - t534 * t871;
t826 = -t508 + t531;
t306 = t596 * t826 - t1043 + t1100;
t915 = t306 * t651;
t1035 = t915 / 0.2e1 + (-t1088 * t465 - t388 * t466 + t410 * t429 + t411 * t428) * t1071;
t481 = rSges(6,3) * t598 + t597 * t739;
t482 = rSges(6,3) * t602 + t601 * t739;
t395 = t481 * t648 + t482 * t652;
t535 = -rSges(5,1) * t597 - rSges(5,2) * t598;
t536 = -rSges(5,1) * t601 - rSges(5,2) * t602;
t445 = t535 * t648 + t536 * t652;
t835 = t1071 * t395 + t1077 * t445;
t557 = (rSges(6,3) * t650 + t646 * t739) * t647;
t612 = (-rSges(5,1) * t646 - rSges(5,2) * t650) * t647;
t720 = t428 * t648 + t429 * t652;
t682 = 0.2e1 * t720;
t711 = t535 * t652 - t536 * t648;
t715 = t497 * t648 + t498 * t652;
t717 = t481 * t652 - t482 * t648;
t802 = 0.2e1 * t518;
t1034 = (-t557 * t682 + t717 * t802) * t1097 + (0.2e1 * t585 * t711 - 0.2e1 * t612 * t715) * t1091;
t892 = t521 * t648;
t322 = t751 * t651 + (-t443 + t892) * t647;
t891 = t521 * t652;
t323 = -t750 * t651 + (t681 - t891) * t647;
t587 = rSges(5,3) * t647 + t651 * t740;
t392 = (t585 * t648 - t558) * t651 + (t587 * t648 - t519) * t647;
t393 = (-t587 * t652 + t522) * t647;
t1033 = (-t1088 * t489 + t322 * t429 + t323 * t428 - t388 * t490) * t1071 + (t1044 * t456 + t1076 * t558 + t392 * t498 + t393 * t497) * t1077;
t504 = Icges(6,5) * t600 + Icges(6,6) * t599 + Icges(6,3) * t875;
t577 = Icges(5,6) * t647 + t651 * t732;
t618 = Icges(4,2) * t651 + t940;
t581 = Icges(5,5) * t647 + t651 * t734;
t858 = t650 * t581;
t1028 = t646 * (t577 / 0.2e1 - t504 / 0.2e1) - t572 / 0.2e1 + t618 / 0.2e1 - t621 / 0.2e1 - t858 / 0.2e1;
t659 = t443 * t652 - t648 * t681;
t270 = t489 * t601 - t490 * t597 - t659 * t876;
t716 = t489 * t652 - t490 * t648;
t284 = t647 * t716 + t651 * t659;
t483 = -Icges(6,5) * t569 + Icges(6,6) * t568 - Icges(6,3) * t796;
t485 = -Icges(6,4) * t569 + Icges(6,2) * t568 - Icges(6,6) * t796;
t487 = -Icges(6,1) * t569 + Icges(6,4) * t568 - Icges(6,5) * t796;
t193 = -t434 * t796 + t437 * t568 - t440 * t569 + t483 * t597 + t485 * t542 + t487 * t543;
t484 = -Icges(6,5) * t571 + Icges(6,6) * t570 - Icges(6,3) * t795;
t486 = -Icges(6,4) * t571 + Icges(6,2) * t570 - Icges(6,6) * t795;
t488 = -Icges(6,1) * t571 + Icges(6,4) * t570 - Icges(6,5) * t795;
t194 = -t436 * t796 + t439 * t568 - t442 * t569 + t484 * t597 + t486 * t542 + t488 * t543;
t242 = -t503 * t796 + t504 * t597 + t508 * t568 + t509 * t542 - t513 * t569 + t514 * t543;
t693 = -t242 + t727;
t34 = t693 * t651 + (t193 * t648 + t194 * t652 + t336) * t647;
t342 = t443 * t601 - t597 * t681;
t195 = -t434 * t795 + t437 * t570 - t440 * t571 + t483 * t601 + t485 * t546 + t487 * t547;
t196 = -t436 * t795 + t439 * t570 - t442 * t571 + t484 * t601 + t486 * t546 + t488 * t547;
t243 = -t503 * t795 + t504 * t601 + t508 * t570 + t509 * t546 - t513 * t571 + t514 * t547;
t692 = -t243 + t726;
t35 = t692 * t651 + (t195 * t648 + t196 * t652 + t338) * t647;
t350 = t659 * t647;
t1027 = (t1081 * t322 + t1088 * t311 + t270 * t350 + t284 * t342 - t312 * t388 - t323 * t381) * t1071 - t601 * t35 / 0.4e1 + t34 * t998;
t1026 = -t646 * (t862 / 0.2e1 - t877 / 0.2e1 + t580 / 0.2e1 + t606 / 0.2e1 - t548 / 0.2e1) - t650 * (-t609 / 0.2e1 + t760);
t358 = t443 * t648 + t652 * t681;
t1020 = 0.2e1 * t358;
t460 = Icges(6,5) * t546 - Icges(6,6) * t547;
t830 = -Icges(6,2) * t547 + t442 + t538;
t832 = Icges(6,1) * t546 - t439 - t935;
t235 = t460 * t876 + t596 * t832 - t694 * t830;
t919 = t235 * t648;
t459 = Icges(6,5) * t542 - Icges(6,6) * t543;
t831 = -Icges(6,2) * t543 + t440 + t537;
t833 = Icges(6,1) * t542 - t437 - t936;
t234 = t459 * t876 + t596 * t833 - t694 * t831;
t920 = t234 * t652;
t142 = t919 - t920;
t718 = t465 * t652 - t466 * t648;
t384 = t718 * t647;
t389 = t465 * t648 + t466 * t652;
t212 = t459 * t597 + t542 * t831 + t543 * t833;
t213 = t460 * t597 + t542 * t830 + t543 * t832;
t268 = t525 * t597 + t542 * t823 + t543 * t826;
t78 = -t268 * t651 + (t212 * t648 + t213 * t652) * t647;
t214 = t459 * t601 + t546 * t831 + t547 * t833;
t215 = t460 * t601 + t546 * t830 + t547 * t832;
t269 = t525 * t601 + t546 * t823 + t547 * t826;
t79 = -t269 * t651 + (t214 * t648 + t215 * t652) * t647;
t1025 = (0.2e1 * t350 * t389 + t384 * t1020 - 0.2e1 * t1038 * t534 + (-t410 * t652 - t411 * t648) * t802) * t1010 + t142 * t983 + t78 * t981 + t79 * t985;
t258 = t443 * t602 + t481 * t601 - t482 * t597 - t598 * t681;
t30 = t185 * t597 + t186 * t601 + t271 * t598 + t272 * t602 + (t255 * t646 + t336 * t650) * t647;
t31 = t187 * t597 + t188 * t601 + t273 * t598 + t274 * t602 + (t256 * t646 + t338 * t650) * t647;
t315 = t518 * t598 + t557 * t597 + (-t443 * t650 - t481 * t646) * t647;
t316 = -t602 * t518 - t601 * t557 + (t482 * t646 + t650 * t681) * t647;
t96 = -t185 * t652 + t186 * t648;
t97 = -t187 * t652 + t188 * t648;
t1024 = (t258 * t1020 + 0.2e1 * t342 * t395 - 0.2e1 * t1037 * t557 + (-t315 * t652 - t316 * t648) * t802) * t1010 + t602 * t1072 + t598 * t165 / 0.4e1 + t30 * t981 + t31 * t985 + t97 * t993 + t96 * t996;
t607 = -Icges(4,2) * t863 - t630;
t608 = t618 * t652;
t735 = -t641 - t941;
t610 = t735 * t648;
t611 = t735 * t652;
t1023 = (t652 * (t578 - t610) + (-t579 + t611) * t648) * t651 + (t652 * (t582 + t607) + (-t583 + t608) * t648) * t647;
t644 = t652 ^ 2;
t1019 = 0.4e1 * t358;
t424 = t519 * t648 + t522 * t652;
t1017 = 0.4e1 * t424;
t1013 = m(5) / 0.2e1;
t1011 = -m(6) / 0.2e1;
t1003 = (-t1081 * t489 + t311 * t429 + t312 * t428 - t381 * t490) * t803;
t329 = -t526 * t651 + (t646 * t822 + t650 * t825) * t647;
t1002 = t329 / 0.2e1;
t1001 = t336 / 0.4e1;
t1000 = t338 / 0.4e1;
t997 = t597 / 0.2e1;
t995 = t598 / 0.2e1;
t994 = t601 / 0.2e1;
t992 = t602 / 0.2e1;
t991 = -t646 / 0.4e1;
t990 = t646 / 0.2e1;
t988 = t647 / 0.4e1;
t987 = -t648 / 0.4e1;
t972 = (-t1081 * t481 + t315 * t429 + t316 * t428 - t381 * t482) * t803;
t281 = 0.2e1 * t1037;
t969 = m(6) * (t1016 * t1081 + t281 + 0.2e1 * t908);
t967 = m(6) * (-t534 * t682 + t718 * t802);
t965 = m(6) * t281;
t963 = t389 * t803;
t960 = m(5) * qJD(3);
t959 = m(5) * qJD(4);
t957 = m(6) * qJD(3);
t956 = m(6) * qJD(4);
t955 = m(6) * qJD(5);
t93 = -t915 + (t234 * t648 + t235 * t652) * t647;
t944 = t651 * t93;
t208 = t437 * t599 + t440 * t600 - t485 * t694 + t487 * t596 + (t434 * t651 + t483 * t647) * t646;
t926 = t208 * t597;
t209 = t439 * t599 + t442 * t600 - t486 * t694 + t488 * t596 + (t436 * t651 + t484 * t647) * t646;
t925 = t209 * t601;
t216 = -t477 * t694 + t479 * t596 + (t434 * t650 + t646 * t690) * t647;
t924 = t216 * t597;
t923 = t216 * t652;
t217 = -t478 * t694 + t480 * t596 + (t436 * t650 + t646 * t689) * t647;
t922 = t217 * t601;
t921 = t217 * t648;
t883 = t596 * t554;
t885 = t694 * t551;
t293 = -t885 + t883 + (t650 * t503 + t646 * t688) * t647;
t918 = t293 * t646;
t917 = t299 * t598;
t916 = t300 * t602;
t351 = t503 * t876 - t508 * t694 + t513 * t596;
t912 = t351 * t650;
t911 = t351 * t651;
t899 = t490 * t652;
t896 = t507 * t651;
t890 = t1044 * t652;
t889 = t572 * t651;
t887 = t578 * t647;
t878 = t614 * t652;
t869 = t648 * t129;
t868 = t648 * t489;
t867 = t648 * t558;
t866 = t648 * t613;
t149 = -t299 * t597 + t300 * t601 + t351 * t876;
t861 = t650 * t149;
t182 = t299 * t652 + t300 * t648;
t860 = t650 * t182;
t855 = t651 * t149;
t854 = t651 * t603;
t851 = t652 * t1093;
t818 = t575 * t648 + t583 * t852;
t813 = t643 + t644;
t812 = qJD(1) * t647;
t811 = qJD(3) * t648;
t810 = qJD(3) * t652;
t809 = qJD(4) * t647;
t808 = qJD(4) * t651;
t151 = (t1011 * t323 + t1077 * t393) * t652 + (t392 * t1013 + m(6) * t322 / 0.2e1) * t648;
t807 = t151 * qJD(2);
t153 = ((-t316 / 0.2e1 + t411 / 0.2e1) * t652 + (t315 / 0.2e1 - t410 / 0.2e1) * t648) * m(6);
t806 = t153 * qJD(2);
t799 = t198 * t1010;
t552 = t576 * t648;
t555 = t580 * t648;
t687 = -t572 * t648 + t1075;
t665 = t647 * t687 + t897;
t294 = t552 * t597 - t555 * t598 + t648 * t665;
t553 = t576 * t652;
t556 = t580 * t652;
t713 = -t512 * t646 + t517 * t650;
t686 = -t572 * t652 - t713;
t664 = t647 * t686 + t896;
t295 = t553 * t597 - t556 * t598 + t648 * t664;
t708 = -t576 * t646 + t859;
t685 = t573 - t708;
t663 = t647 * t685 + t889;
t343 = -t577 * t597 + t581 * t598 + t648 * t663;
t798 = t34 / 0.2e1 + (-t343 + t724) * t1050 + (t294 * t648 + t295 * t652 + t413) * t989;
t296 = t601 * t552 - t602 * t555 + t652 * t665;
t297 = t601 * t553 - t602 * t556 + t652 * t664;
t344 = -t601 * t577 + t602 * t581 + t652 * t663;
t797 = t35 / 0.2e1 + (-t344 + t723) * t1050 + (t296 * t648 + t297 * t652 + t415) * t989;
t320 = -t687 * t651 + (t552 * t646 - t555 * t650 + t505) * t647;
t321 = -t686 * t651 + (t553 * t646 - t556 * t650 + t507) * t647;
t371 = -t685 * t651 + (-t577 * t646 + t572 + t858) * t647;
t447 = t647 * t708 - t889;
t261 = t881 - t886 + t880 + t884 + (t503 * t651 + t504 * t647) * t646;
t725 = -t299 * t648 + t300 * t652;
t691 = -t261 + t725;
t51 = t691 * t651 + (t208 * t648 + t209 * t652 + t351) * t647;
t378 = t647 * t713 - t896;
t722 = -t377 * t648 + t378 * t652;
t794 = (-t371 + t722) * t984 + (t320 * t648 + t321 * t652 + t447) * t1052 - t51 / 0.2e1;
t787 = t1072 - t1092 / 0.4e1;
t785 = -t96 / 0.2e1 + t307 * t980 + t308 * t1051;
t784 = t97 / 0.2e1 + t309 * t982 + t310 * t986;
t348 = t351 * t989;
t781 = t876 / 0.2e1;
t780 = t876 / 0.4e1;
t777 = t871 / 0.4e1;
t776 = t863 / 0.4e1;
t128 = t851 / 0.4e1;
t155 = t647 * t725 - t911;
t772 = -t155 / 0.2e1 + t447 * t1050 + t722 * t1052;
t768 = -t242 / 0.4e1 - t208 / 0.4e1;
t767 = -t243 / 0.4e1 - t209 / 0.4e1;
t766 = -t255 / 0.4e1 - t216 / 0.4e1;
t765 = -t256 / 0.4e1 - t217 / 0.4e1;
t764 = t268 / 0.4e1 + t234 / 0.4e1;
t763 = -t269 / 0.4e1 - t235 / 0.4e1;
t762 = t1001 - t299 / 0.4e1;
t761 = t1000 + t300 / 0.4e1;
t758 = t643 / 0.2e1 + t644 / 0.2e1;
t748 = t579 * t647 - t574;
t745 = 0.4e1 * t813;
t744 = t646 * t779;
t743 = t876 * t981;
t738 = t967 / 0.4e1 - t920 / 0.4e1 + t919 / 0.4e1 + t269 * t985 + t268 * t981;
t737 = t518 * t745;
t736 = t585 * t745;
t730 = -Icges(4,5) * t647 - Icges(4,6) * t651;
t712 = t519 * t652 - t522 * t648;
t710 = t1044 * t648 - t558 * t652;
t709 = t564 * t648 + t565 * t652;
t120 = -t212 * t652 + t213 * t648;
t121 = -t214 * t652 + t215 * t648;
t704 = t120 * t778 + t121 * t777 + t1025;
t703 = -t709 * m(4) - m(3) * ((rSges(3,3) + qJ(2)) * t643 + (rSges(3,3) * t652 + t637) * t652);
t702 = t784 - t797;
t701 = -t785 - t798;
t26 = t193 * t597 + t194 * t601 + (-t647 * t693 + t914) * t646;
t27 = t195 * t597 + t196 * t601 + (-t647 * t692 + t913) * t646;
t700 = t26 * t997 + t27 * t994;
t697 = -t1035 + (t234 + t268) * t778 + (t235 + t269) * t777;
t684 = t120 * t982 + t121 * t986;
t49 = t926 + t925 + (-t647 * t691 + t911) * t646;
t680 = -t851 / 0.2e1 - t869 / 0.2e1 + t49 / 0.2e1;
t122 = t921 - t923;
t677 = t122 * t780 + t860 * t988 + t1024;
t451 = -t579 * t871 + t818;
t675 = (-t648 * (-t582 * t651 + t887) - t574 * t652) * t982 + (t652 * t748 + t451 - t818) * t980 + (t648 * t748 + t1061 + t749) * t986;
t674 = t818 * t1051 + t451 * t986 + (-t560 + (t575 + t887) * t652 + t819 + t1061) * t982;
t673 = -t129 * t985 + t1093 * t981 + t869 / 0.4e1 + t128 + t1098 * t1092;
t239 = (-t868 / 0.2e1 - t899 / 0.2e1 + t758 * t518) * m(6) + (t867 / 0.2e1 + t890 / 0.2e1 + t758 * t585) * m(5) + (t866 / 0.2e1 + t878 / 0.2e1 + t758 * t624) * m(4);
t672 = qJD(1) * t239 + qJD(4) * t151 + qJD(5) * t799;
t671 = t854 / 0.2e1 - t883 / 0.2e1 + t885 / 0.2e1;
t330 = -t527 * t651 + (t646 * t821 + t650 * t824) * t647;
t667 = -t923 / 0.4e1 + t921 / 0.4e1 - t1034 + (t256 + t330 + t365) * t985 + (t255 + t329 + t364) * t981;
t666 = t1093 * t1099 + t1094 * t1098;
t662 = t926 / 0.4e1 + t925 / 0.4e1 + t242 * t996 + t243 * t993 + t261 * t781 + t351 * t875 / 0.2e1 + t1003 / 0.4e1 + t1063 * t744 + t1062 * t743;
t660 = t972 / 0.4e1 + t924 / 0.4e1 + t922 / 0.4e1 + t255 * t996 + t256 * t993 - t917 / 0.4e1 + t916 / 0.4e1 + t293 * t781 + t598 * t1001 + t602 * t1000 + t650 * t348;
t658 = t129 * t776 + t651 * t128 + t139 * t744 + t1094 * t743 + t149 * t988 + t155 * t875 / 0.4e1 + t26 * t778 + t27 * t777 + t49 * t983 + t51 * t780 - t1027;
t657 = t1093 * t992 + t129 * t995 + t30 * t997 + t31 * t994;
t655 = t1080 * t979 + t1040 + (t1094 + t1080) * t981 - t1101 + t1099 * (t1079 + t1092);
t653 = t447 * t989 - t1033 + t348 + (t261 + t371) * t984 + (t208 + t242 + t320 + t343) * t778 + (t209 + t243 + t321 + t344) * t777 + (-t377 + t413 + t1063) * t776 + (t378 + t415 + t1062) * t852 / 0.4e1;
t626 = rSges(4,1) * t651 - rSges(4,2) * t647;
t605 = t730 * t652;
t604 = t730 * t648;
t468 = -t536 * t651 - t612 * t871;
t467 = t535 * t651 + t612 * t874;
t458 = -t867 - t890;
t427 = t711 * t647;
t419 = -t482 * t651 - t557 * t871;
t418 = t481 * t651 + t557 * t874;
t417 = t712 * t647;
t412 = 0.4e1 * t715;
t401 = -t854 + (t646 * t815 + t650 * t817) * t647;
t400 = t868 + t899;
t399 = t466 * t876 - t534 * t601;
t398 = -t465 * t876 + t534 * t597;
t391 = t717 * t647;
t385 = -t963 / 0.4e1;
t367 = t465 * t601 - t466 * t597;
t357 = t647 * t710 + t651 * t712;
t356 = 0.4e1 * t497 * t536 - 0.4e1 * t498 * t535;
t347 = 0.4e1 * t720;
t319 = t1017 * t445 + t612 * t736;
t302 = t306 * t876;
t288 = 0.4e1 * t428 * t482 - 0.4e1 * t429 * t481;
t285 = 0.4e1 * t428 * t466 - 0.4e1 * t429 * t465;
t279 = t965 / 0.4e1;
t245 = t1010 * t347 + t1012 * t412 - t703;
t238 = (t490 * t1011 - t1044 * t1077 + t1053 * t614) * t652 + (t489 * t1011 + t558 * t1013 + t1053 * t613) * t648 - (m(4) * t624 + m(5) * t585 + m(6) * t518) * t813 / 0.2e1;
t229 = t1019 * t395 + t557 * t737;
t222 = t1019 * t389 + t534 * t737;
t197 = qJD(3) * t799;
t180 = -t296 * t652 + t297 * t648;
t179 = -t294 * t652 + t295 * t648;
t178 = t525 * t781 + t285 * t1010 + t1059 - (t513 / 0.2e1 + t528 / 0.2e1) * t694;
t171 = t969 / 0.4e1;
t158 = 0.4e1 * t1076 * t392 + 0.4e1 * t357 * t417 - 0.4e1 * t393 * t456;
t154 = ((-t316 - t411) * t652 + (t315 + t410) * t648) * t803 / 0.4e1;
t150 = t151 * qJD(3);
t143 = 0.4e1 * t1088 * t410 + 0.4e1 * t350 * t384 - 0.4e1 * t388 * t411;
t136 = t1010 * t288 + t1012 * t356 + t1026 * t647 - t671;
t115 = -t208 * t652 + t209 * t648;
t113 = t279 + t171 + t963 / 0.4e1;
t112 = t385 + t279 - t969 / 0.4e1;
t111 = t385 + t171 - t965 / 0.4e1;
t104 = -t1028 * t647 - t1056;
t103 = -t195 * t652 + t196 * t648;
t102 = -t193 * t652 + t194 * t648;
t92 = t234 * t597 + t235 * t601 + t302;
t83 = 0.4e1 * t1088 * t322 + 0.4e1 * t284 * t350 - 0.4e1 * t323 * t388;
t82 = -t293 * t651 + (t216 * t648 + t217 * t652) * t647;
t75 = 0.4e1 * t1081 * t311 + 0.4e1 * t270 * t342 - 0.4e1 * t312 * t381;
t74 = t214 * t597 + t215 * t601 + t269 * t876;
t73 = t212 * t597 + t213 * t601 + t268 * t876;
t72 = 0.4e1 * t1081 * t315 + 0.4e1 * t258 * t342 - 0.4e1 * t316 * t381;
t65 = t839 + t845 - t835;
t64 = t835 - t1060;
t63 = t835 + t1060;
t52 = t924 + t922 - t917 + t916 + (t912 + t918) * t647;
t23 = t1010 * t222 + t684;
t20 = t1010 * t229 + t1012 * t319 + t648 * t784 + t652 * t785;
t19 = t143 * t1010 - t944 / 0.2e1 + (t78 * t986 + t79 * t980) * t647;
t17 = t648 * t675 + t652 * t674;
t16 = t72 * t1010 + (t861 / 0.2e1 + t52 * t990) * t647 + t657;
t15 = t75 * t1010 + (t855 / 0.2e1 + t680 * t647) * t646 + t700;
t13 = t158 * t1012 + t83 * t1010 + (t648 * t774 + t652 * t773 + t794) * t651 + (t648 * t798 + t652 * t797 - t772) * t647;
t12 = t597 * t787 + t662 + t738;
t11 = t673 + t662 + t763 * t648 + t764 * t652 - t967 / 0.4e1;
t10 = t673 + (-t911 / 0.2e1 + (-t261 / 0.2e1 + t761 * t652 + t762 * t648) * t647) * t646 + t768 * t597 + t767 * t601 - t1003 / 0.4e1 + t738;
t9 = t660 + t697;
t8 = -t762 * t598 + t765 * t601 - t761 * t602 + t666 + t766 * t597 + (-t918 / 0.2e1 - t912 / 0.2e1) * t647 - t972 / 0.4e1 + t697;
t7 = t666 + t660 + (-t648 * t764 + t652 * t763) * t647 + t1035;
t6 = t787 * t874 + t653 + t667;
t5 = t655 + (-t351 / 0.2e1 - t447 / 0.2e1 + (-t344 / 0.4e1 - t321 / 0.4e1 + t767) * t652 + (-t343 / 0.4e1 - t320 / 0.4e1 + t768) * t648) * t647 + (t371 / 0.2e1 + t261 / 0.2e1 + (-t415 / 0.4e1 - t378 / 0.4e1 - t761) * t652 + (-t413 / 0.4e1 + t377 / 0.4e1 - t762) * t648) * t651 + t667 + t1033;
t4 = t655 + (t364 / 0.4e1 + t329 / 0.4e1 - t766) * t652 + (-t365 / 0.4e1 - t330 / 0.4e1 + t765) * t648 + t653 + t1034;
t3 = t677 + (t49 / 0.4e1 + t155 * t991 - t869 / 0.4e1 - t851 / 0.4e1) * t651 + (-t149 / 0.4e1 + t26 * t987 + t27 * t981 + (-t51 / 0.4e1 + t1040) * t646) * t647 + t704 + t1027;
t2 = t658 + (t120 * t987 + t121 * t981) * t647 + t677 - t1025;
t1 = t658 + (t122 * t991 - t860 / 0.4e1) * t647 + t704 - t1024;
t14 = [qJD(2) * t245 + qJD(3) * t104 + qJD(4) * t136 + qJD(5) * t178, qJD(1) * t245 + qJD(3) * t238 + qJD(4) * t63 + qJD(5) * t112, t104 * qJD(1) + t238 * qJD(2) + t6 * qJD(4) + t12 * qJD(5) + (-t343 / 0.2e1 - t242 / 0.2e1 - t208 / 0.2e1 - t320 / 0.2e1 + t617 * t980 + (-t582 / 0.2e1 - t607 / 0.2e1) * t651 + (t578 / 0.2e1 - t610 / 0.2e1) * t647 - t674) * t810 + (t344 / 0.2e1 + t243 / 0.2e1 + t209 / 0.2e1 + t321 / 0.2e1 + t617 * t986 + (t583 / 0.2e1 - t608 / 0.2e1) * t651 + (-t579 / 0.2e1 + t611 / 0.2e1) * t647 - t675) * t811 + (t518 * t716 - t521 * t720) * t957 + (t585 * t710 - t587 * t715) * t960 + (-t709 * t626 + (-t613 * t652 + t614 * t648) * t624) * qJD(3) * m(4), t136 * qJD(1) + t63 * qJD(2) + t6 * qJD(3) + t9 * qJD(5) + (-t401 - t293) * t808 + (-t1088 * t481 - t388 * t482 + t418 * t429 + t419 * t428) * t956 + (-t1076 * t535 - t456 * t536 + t467 * t498 + t468 * t497) * t959 + ((t256 / 0.2e1 + t217 / 0.2e1 + t330 / 0.2e1 + t365 / 0.2e1) * t652 + (t255 / 0.2e1 + t216 / 0.2e1 + t364 / 0.2e1 + t1002) * t648) * t809, t178 * qJD(1) + t112 * qJD(2) + t12 * qJD(3) + t9 * qJD(4) + (-t1081 * t465 - t381 * t466 + t398 * t429 + t399 * t428) * t955 + (t302 + (t269 / 0.2e1 + t235 / 0.2e1) * t601 + (t268 / 0.2e1 + t234 / 0.2e1) * t597) * qJD(5); t703 * qJD(1) + t239 * qJD(3) + t64 * qJD(4) + t111 * qJD(5) + t1087 * t412 + t1090 * t347, 0, t672, t64 * qJD(1) + t150 + ((-m(5) * t468 - m(6) * t419) * t652 + (m(5) * t467 + m(6) * t418) * t648) * qJD(4) + t154 * qJD(5), t111 * qJD(1) + t197 + t154 * qJD(4) + (t398 * t648 - t399 * t652) * qJD(5) * t803 / 0.2e1; qJD(1) * t1056 - t239 * qJD(2) + t17 * qJD(3) + t5 * qJD(4) + t10 * qJD(5) + t1028 * t812, -t672, t17 * qJD(1) + t20 * qJD(4) + t23 * qJD(5) + (m(4) * (0.4e1 * (t648 * t705 + t652 * (rSges(4,3) * t648 + t742)) * (-t866 - t878) + t626 * t624 * t745) / 0.4e1 + (t1019 * t400 + t521 * t737) * t1010 + (t1017 * t458 + t587 * t736) * t1012 + (t643 * t605 + (-t648 * t604 + t1023) * t652 + t103 + t180) * t986 + (t179 + t644 * t604 + (-t652 * t605 + t1023) * t648 + t102) * t982) * qJD(3), t5 * qJD(1) - t807 + t20 * qJD(3) + (t1047 * t986 + t1048 * t982) * qJD(4) + t3 * qJD(5) + (-t122 / 0.2e1 + (t1002 - t773) * t652 + (-t330 / 0.2e1 - t774) * t648 - t794) * t808 + (t350 * t395 + t391 * t358 - t83 / 0.4e1 - t1038 * t557 + (-t418 * t652 - t419 * t648) * t518) * t956 + (t417 * t445 + t427 * t424 - t158 / 0.4e1 - t1039 * t612 + (-t467 * t652 - t468 * t648) * t585) * t959 + (t648 * t701 + t652 * t702 + t772) * t809, t10 * qJD(1) + t23 * qJD(3) + t3 * qJD(4) - t1049 / 0.4e1 + (t120 * t997 + t121 * t994 + t73 * t982 + t74 * t986 - t700 + (-t855 / 0.2e1 + (t142 / 0.2e1 - t680) * t647) * t646 + (-t398 * t893 - t399 * t894 + t342 * t389 + t367 * t358 - t75 / 0.4e1 - t1037 * t534) * m(6)) * qJD(5); qJD(1) * t671 + qJD(2) * t65 + qJD(3) * t4 + qJD(5) * t8 - t1026 * t812 + t1087 * t356 + t1090 * t288, qJD(1) * t65 - qJD(5) * t153 + t150, t4 * qJD(1) + t807 + (t115 * t984 + t182 * t989) * qJD(3) + t13 * qJD(4) + t1 * qJD(5) + ((t320 / 0.2e1 + t1092 / 0.2e1 + t1079 / 0.2e1) * t651 + (t377 / 0.2e1 + t180 / 0.2e1 + t103 / 0.2e1) * t647 + t701) * t810 + ((-t321 / 0.2e1 + t165 / 0.2e1 + t352 * t982 + t353 * t986) * t651 + (t378 / 0.2e1 + t179 / 0.2e1 + t102 / 0.2e1) * t647 - t702) * t811 + (-t229 / 0.4e1 + t284 * t358 + t350 * t400 - t1038 * t521 + (-t322 * t652 - t323 * t648) * t518) * t957 + (-t319 / 0.4e1 + t357 * t424 + t417 * t458 - t1039 * t587 + (-t392 * t652 - t393 * t648) * t585) * t960, t13 * qJD(3) + ((t1088 * t418 + t350 * t391 - t388 * t419) * m(6) + t82 * t984 + t651 ^ 2 * t401 / 0.2e1 + (t1076 * t467 + t417 * t427 - t456 * t468) * m(5)) * qJD(4) + t19 * qJD(5) + ((t329 * t648 + t330 * t652) * t984 + t1048 * t986 + t1047 * t980) * t809, t8 * qJD(1) - t806 + t1 * qJD(3) + t19 * qJD(4) + (t342 * t384 + t350 * t367 + t1081 * t410 - t381 * t411 + t1088 * t398 - t388 * t399 - t72 / 0.4e1) * t955 + (t78 * t997 + t79 * t994 + t92 * t984 - t657 + (t74 * t980 + t73 * t986 - t861 / 0.2e1 + (-t52 / 0.2e1 + t93 / 0.2e1) * t646) * t647) * qJD(5); t113 * qJD(2) + t11 * qJD(3) + t7 * qJD(4) + t285 * t1090 + (-t1100 / 0.2e1 + t1043 / 0.2e1 - t1059) * qJD(1), qJD(1) * t113 + qJD(4) * t153 + t197, t11 * qJD(1) + t2 * qJD(4) + t15 * qJD(5) + t1049 / 0.4e1 + (t102 * t997 + t103 * t994 + t26 * t982 + t27 * t986 - t684 + (t182 * t1050 + (t115 / 0.2e1 + t165 * t1051 + t1092 * t982) * t647) * t646 + (-t311 * t893 - t312 * t894 - t1081 * t891 + t381 * t892 + t270 * t358 + t342 * t400 - t222 / 0.4e1) * m(6)) * qJD(3), t7 * qJD(1) + t806 + t2 * qJD(3) + (t52 * t984 + t139 * t995 + t68 * t997 + t1094 * t992 + t69 * t994 + t944 / 0.2e1) * qJD(4) + t16 * qJD(5) + (t650 * t155 / 0.2e1 + t82 * t990 + (t31 / 0.2e1 - t79 / 0.2e1) * t652 + (t30 / 0.2e1 - t78 / 0.2e1) * t648) * t809 + (t258 * t350 + t315 * t1088 - t316 * t388 + t342 * t391 + t1081 * t418 - t381 * t419 - t143 / 0.4e1) * t956, t15 * qJD(3) + t16 * qJD(4) + ((t1081 * t398 + t342 * t367 - t381 * t399) * m(6) + t74 * t994 + t73 * t997 + t92 * t781) * qJD(5);];
Cq = t14;
