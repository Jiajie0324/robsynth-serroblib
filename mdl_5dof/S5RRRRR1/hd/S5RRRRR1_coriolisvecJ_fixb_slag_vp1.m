% Calculate vector of centrifugal and Coriolis load on the joints for
% S5RRRRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [6x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d5]';
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
% tauc [5x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:52
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5RRRRR1_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(6,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR1_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR1_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [6 1]), ...
  'S5RRRRR1_coriolisvecJ_fixb_slag_vp1: pkin has to be [6x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRR1_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRRR1_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRRR1_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:49:46
% EndTime: 2019-12-05 18:50:48
% DurationCPUTime: 40.97s
% Computational Cost: add. (42690->1230), mult. (43752->1617), div. (0->0), fcn. (39363->10), ass. (0->644)
t479 = sin(qJ(2));
t822 = rSges(3,2) * t479;
t477 = qJ(2) + qJ(3);
t475 = qJ(4) + t477;
t470 = cos(t475);
t483 = cos(qJ(1));
t775 = t470 * t483;
t469 = sin(t475);
t778 = t469 * t483;
t619 = rSges(5,1) * t775 - rSges(5,2) * t778;
t480 = sin(qJ(1));
t818 = rSges(5,3) * t480;
t295 = t619 - t818;
t476 = qJD(2) + qJD(3);
t472 = qJD(4) + t476;
t401 = t472 * t483;
t713 = qJD(1) * t480;
t387 = -rSges(5,1) * t469 - rSges(5,2) * t470;
t755 = t483 * t387;
t763 = t480 * t387;
t774 = t472 * t480;
t905 = t295 * t713 + t401 * t755 + t763 * t774;
t478 = sin(qJ(5));
t481 = cos(qJ(5));
t581 = -Icges(6,5) * t481 + Icges(6,6) * t478;
t263 = Icges(6,3) * t470 + t469 * t581;
t799 = Icges(6,4) * t481;
t585 = Icges(6,2) * t478 - t799;
t265 = Icges(6,6) * t470 + t469 * t585;
t800 = Icges(6,4) * t478;
t428 = t469 * t800;
t779 = t469 * t481;
t795 = Icges(6,5) * t470;
t267 = -Icges(6,1) * t779 + t428 + t795;
t753 = t483 * t481;
t761 = t480 * t478;
t373 = t470 * t761 - t753;
t760 = t480 * t481;
t767 = t478 * t483;
t374 = t470 * t760 + t767;
t780 = t469 * t480;
t114 = t263 * t780 - t265 * t373 + t267 * t374;
t705 = qJD(5) * t483;
t292 = t469 * t705 - t774;
t707 = qJD(5) * t470;
t436 = qJD(1) + t707;
t194 = Icges(6,5) * t374 - Icges(6,6) * t373 + Icges(6,3) * t780;
t340 = Icges(6,4) * t374;
t197 = -Icges(6,2) * t373 + Icges(6,6) * t780 + t340;
t339 = Icges(6,4) * t373;
t201 = -Icges(6,1) * t374 - Icges(6,5) * t780 + t339;
t86 = t194 * t780 - t197 * t373 - t201 * t374;
t375 = -t470 * t767 - t760;
t376 = t470 * t753 - t761;
t196 = Icges(6,5) * t376 + Icges(6,6) * t375 + Icges(6,3) * t778;
t801 = Icges(6,4) * t376;
t199 = Icges(6,2) * t375 + Icges(6,6) * t778 + t801;
t341 = Icges(6,4) * t375;
t202 = Icges(6,1) * t376 + Icges(6,5) * t778 + t341;
t87 = t196 * t780 - t373 * t199 + t374 * t202;
t706 = qJD(5) * t480;
t878 = -t469 * t706 - t401;
t32 = t114 * t436 + t292 * t87 - t86 * t878;
t115 = t263 * t778 + t265 * t375 + t267 * t376;
t88 = t194 * t778 + t375 * t197 - t201 * t376;
t89 = t196 * t778 + t375 * t199 + t376 * t202;
t33 = t115 * t436 + t292 * t89 - t878 * t88;
t579 = t197 * t478 + t201 * t481;
t97 = t194 * t470 + t469 * t579;
t833 = pkin(2) * t479;
t697 = qJD(2) * t833;
t473 = sin(t477);
t832 = pkin(3) * t473;
t386 = -t476 * t832 - t697;
t458 = t480 * t697;
t482 = cos(qJ(2));
t471 = t482 * pkin(2) + pkin(1);
t474 = cos(t477);
t831 = pkin(3) * t474;
t565 = t471 + t831;
t555 = -t471 + t565;
t712 = qJD(1) * t483;
t182 = t480 * t386 + t555 * t712 + t458;
t768 = t476 * t480;
t701 = t768 * t832;
t901 = -t182 - t701;
t205 = t376 * rSges(6,1) + t375 * rSges(6,2) + rSges(6,3) * t778;
t332 = pkin(4) * t775 + pkin(6) * t778;
t900 = t205 + t332;
t603 = -rSges(6,1) * t481 + rSges(6,2) * t478;
t271 = rSges(6,3) * t470 + t469 * t603;
t830 = pkin(4) * t469;
t389 = pkin(6) * t470 - t830;
t899 = t271 + t389;
t769 = t474 * t483;
t772 = t473 * t483;
t819 = rSges(4,3) * t480;
t312 = rSges(4,1) * t769 - rSges(4,2) * t772 - t819;
t607 = rSges(4,1) * t473 + rSges(4,2) * t474;
t371 = t607 * t480;
t372 = t607 * t483;
t431 = t476 * t483;
t898 = t312 * t713 - t371 * t768 - t372 * t431;
t776 = t470 * t480;
t792 = Icges(5,6) * t483;
t281 = Icges(5,4) * t776 - Icges(5,2) * t780 + t792;
t802 = Icges(5,4) * t470;
t383 = -Icges(5,1) * t469 - t802;
t897 = -t383 * t480 + t281;
t586 = -Icges(5,2) * t469 + t802;
t282 = -Icges(5,6) * t480 + t483 * t586;
t896 = -t383 * t483 + t282;
t803 = Icges(5,4) * t469;
t591 = Icges(5,1) * t470 - t803;
t284 = -Icges(5,5) * t480 + t483 * t591;
t381 = -Icges(5,2) * t470 - t803;
t895 = -t381 * t483 - t284;
t770 = t474 * t480;
t773 = t473 * t480;
t793 = Icges(4,6) * t483;
t306 = Icges(4,4) * t770 - Icges(4,2) * t773 + t793;
t804 = Icges(4,4) * t474;
t412 = -Icges(4,1) * t473 - t804;
t894 = -t412 * t480 + t306;
t587 = -Icges(4,2) * t473 + t804;
t307 = -Icges(4,6) * t480 + t483 * t587;
t893 = -t412 * t483 + t307;
t805 = Icges(4,4) * t473;
t592 = Icges(4,1) * t474 - t805;
t309 = -Icges(4,5) * t480 + t483 * t592;
t410 = -Icges(4,2) * t474 - t805;
t892 = -t410 * t483 - t309;
t454 = t483 * t471;
t835 = pkin(1) * t483;
t407 = t454 - t835;
t368 = t407 * t713;
t891 = t368 - (t480 ^ 2 + t483 ^ 2) * t697;
t890 = t381 + t591;
t889 = t410 + t592;
t888 = t586 - t383;
t887 = t587 - t412;
t392 = t483 * t565;
t301 = -t454 + t392;
t260 = t301 * t713;
t886 = t260 + t905;
t885 = t32 * t480 + t33 * t483;
t604 = -rSges(6,1) * t374 + rSges(6,2) * t373;
t203 = rSges(6,3) * t780 - t604;
t709 = qJD(2) * t483;
t678 = t479 * t709;
t630 = pkin(2) * t678;
t884 = -t203 * t436 - t271 * t878 + t401 * t389 - t630;
t883 = 0.2e1 * qJD(2);
t829 = t470 * pkin(4);
t616 = pkin(6) * t469 + t829;
t330 = t616 * t480;
t742 = -t203 - t330;
t424 = -t832 - t833;
t658 = t424 + t833;
t316 = t658 * t483;
t710 = qJD(2) * t482;
t527 = (-t479 * t712 - t480 * t710) * pkin(2);
t881 = qJD(1) * t316 + t527;
t315 = t658 * t480;
t880 = t315 * t768 + t316 * t431 + t891;
t696 = pkin(2) * t710;
t879 = t483 * t696;
t876 = qJD(1) * t424;
t391 = t480 * t565;
t453 = t480 * t471;
t300 = t453 - t391;
t277 = qJD(1) * t300;
t378 = t431 * t832;
t836 = pkin(1) * t480;
t406 = -t453 + t836;
t385 = qJD(1) * t406;
t875 = t277 + t385 - t378;
t629 = qJD(1) * t470 + qJD(5);
t694 = t469 * t401;
t874 = t480 * t629 + t694;
t379 = -Icges(5,5) * t469 - Icges(5,6) * t470;
t319 = t379 * t483;
t582 = Icges(5,5) * t470 - Icges(5,6) * t469;
t784 = t282 * t469;
t789 = Icges(5,3) * t483;
t873 = -t472 * t319 + (-t284 * t470 + t480 * t582 + t784 + t789) * qJD(1);
t318 = t379 * t480;
t429 = Icges(5,4) * t780;
t796 = Icges(5,5) * t483;
t283 = Icges(5,1) * t776 - t429 + t796;
t574 = t281 * t469 - t283 * t470;
t280 = -Icges(5,3) * t480 + t483 * t582;
t719 = qJD(1) * t280;
t872 = qJD(1) * t574 - t318 * t472 - t719;
t408 = -Icges(4,5) * t473 - Icges(4,6) * t474;
t362 = t408 * t483;
t583 = Icges(4,5) * t474 - Icges(4,6) * t473;
t783 = t307 * t473;
t790 = Icges(4,3) * t483;
t871 = -t476 * t362 + (-t309 * t474 + t480 * t583 + t783 + t790) * qJD(1);
t361 = t408 * t480;
t452 = Icges(4,4) * t773;
t797 = Icges(4,5) * t483;
t308 = Icges(4,1) * t770 - t452 + t797;
t572 = t306 * t473 - t308 * t474;
t305 = -Icges(4,3) * t480 + t483 * t583;
t718 = qJD(1) * t305;
t870 = qJD(1) * t572 - t361 * t476 - t718;
t439 = -Icges(3,5) * t479 - Icges(3,6) * t482;
t542 = qJD(2) * t439;
t807 = Icges(3,4) * t479;
t593 = Icges(3,1) * t482 - t807;
t352 = -Icges(3,5) * t480 + t483 * t593;
t806 = Icges(3,4) * t482;
t588 = -Icges(3,2) * t479 + t806;
t350 = -Icges(3,6) * t480 + t483 * t588;
t782 = t350 * t479;
t569 = -t352 * t482 + t782;
t584 = Icges(3,5) * t482 - Icges(3,6) * t479;
t791 = Icges(3,3) * t483;
t869 = -t483 * t542 + (t480 * t584 + t569 + t791) * qJD(1);
t759 = t480 * t482;
t766 = t479 * t480;
t794 = Icges(3,6) * t483;
t349 = Icges(3,4) * t759 - Icges(3,2) * t766 + t794;
t464 = Icges(3,4) * t766;
t798 = Icges(3,5) * t483;
t351 = Icges(3,1) * t759 - t464 + t798;
t570 = t349 * t479 - t351 * t482;
t348 = -Icges(3,3) * t480 + t483 * t584;
t715 = qJD(1) * t348;
t868 = qJD(1) * t570 - t480 * t542 - t715;
t568 = t381 * t469 - t383 * t470;
t867 = qJD(1) * t568 + t582 * t472;
t567 = t410 * t473 - t412 * t474;
t866 = qJD(1) * t567 + t583 * t476;
t441 = -Icges(3,2) * t482 - t807;
t443 = -Icges(3,1) * t479 - t806;
t566 = t441 * t479 - t443 * t482;
t865 = t566 * qJD(1) + t584 * qJD(2);
t771 = t474 * t476;
t545 = -pkin(3) * t771 - t696;
t864 = t545 * t483 + t879;
t863 = -t349 * t483 + t350 * t480;
t516 = t292 * (-Icges(6,2) * t376 + t202 + t341) - t878 * (-Icges(6,2) * t374 - t201 - t339) + t436 * (Icges(6,2) * t779 + t267 + t428);
t589 = Icges(6,1) * t478 + t799;
t862 = t292 * (-Icges(6,1) * t375 + t199 + t801) - t878 * (Icges(6,1) * t373 + t197 + t340) + t436 * (-t589 * t469 + t265);
t861 = qJD(1) * t890 + t401 * t897 - t774 * t896;
t860 = qJD(1) * t889 + t431 * t894 - t768 * t893;
t675 = t470 * t706;
t211 = qJD(1) * t292 + t472 * t675;
t859 = t211 / 0.2e1;
t674 = t470 * t705;
t212 = qJD(1) * t878 + t472 * t674;
t858 = t212 / 0.2e1;
t857 = -t292 / 0.2e1;
t856 = t292 / 0.2e1;
t855 = t878 / 0.2e1;
t854 = -t878 / 0.2e1;
t594 = qJD(1) * t472;
t356 = t480 * t594;
t853 = -t356 / 0.2e1;
t357 = t483 * t594;
t852 = -t357 / 0.2e1;
t851 = t774 / 0.2e1;
t850 = -t774 / 0.2e1;
t849 = -t401 / 0.2e1;
t848 = t401 / 0.2e1;
t628 = qJD(1) * t476;
t416 = t480 * t628;
t847 = -t416 / 0.2e1;
t417 = t483 * t628;
t846 = -t417 / 0.2e1;
t845 = t768 / 0.2e1;
t844 = -t768 / 0.2e1;
t843 = -t431 / 0.2e1;
t842 = t431 / 0.2e1;
t841 = -t436 / 0.2e1;
t840 = t436 / 0.2e1;
t839 = -t480 / 0.2e1;
t838 = t483 / 0.2e1;
t837 = -rSges(6,3) - pkin(6);
t834 = pkin(1) * qJD(1) ^ 2;
t828 = -qJD(1) / 0.2e1;
t827 = qJD(1) / 0.2e1;
t826 = pkin(1) - t471;
t825 = rSges(3,1) * t482;
t824 = rSges(4,1) * t474;
t823 = rSges(5,1) * t470;
t821 = rSges(5,2) * t469;
t820 = rSges(3,3) * t480;
t817 = rSges(6,3) * t469;
t563 = t436 * t481;
t695 = t469 * t774;
t175 = -t480 * t563 + (-t483 * t629 + t695) * t478;
t564 = t436 * t478;
t176 = t629 * t753 + (-t472 * t779 - t564) * t480;
t536 = t469 * t712 + t470 * t774;
t102 = Icges(6,5) * t176 + Icges(6,6) * t175 + Icges(6,3) * t536;
t104 = Icges(6,4) * t176 + Icges(6,2) * t175 + Icges(6,6) * t536;
t106 = Icges(6,1) * t176 + Icges(6,4) * t175 + Icges(6,5) * t536;
t24 = (t472 * t579 + t102) * t470 + (t104 * t478 - t106 * t481 - t194 * t472 + (t197 * t481 - t201 * t478) * qJD(5)) * t469;
t816 = t24 * t878;
t173 = t478 * t874 - t483 * t563;
t174 = -t481 * t874 - t483 * t564;
t683 = t469 * t713;
t693 = t470 * t401;
t535 = -t683 + t693;
t101 = Icges(6,5) * t174 + Icges(6,6) * t173 + Icges(6,3) * t535;
t103 = Icges(6,4) * t174 + Icges(6,2) * t173 + Icges(6,6) * t535;
t105 = Icges(6,1) * t174 + Icges(6,4) * t173 + Icges(6,5) * t535;
t578 = t199 * t478 - t202 * t481;
t25 = (t472 * t578 + t101) * t470 + (t103 * t478 - t105 * t481 - t196 * t472 + (t199 * t481 + t202 * t478) * qJD(5)) * t469;
t815 = t25 * t292;
t661 = t406 - t836;
t623 = t300 + t661;
t76 = -t378 + (-t330 + t623) * qJD(1) + t884;
t810 = t483 * t76;
t809 = t97 * t211;
t98 = t196 * t470 + t469 * t578;
t808 = t98 * t212;
t698 = rSges(4,1) * t770;
t311 = -rSges(4,2) * t773 + rSges(4,3) * t483 + t698;
t537 = -t431 * t607 - t630;
t130 = (-t311 + t661) * qJD(1) + t537;
t787 = t130 * t480;
t656 = rSges(3,2) * t766 - rSges(3,3) * t483;
t699 = rSges(3,1) * t759;
t354 = -t656 + t699;
t609 = rSges(3,1) * t479 + rSges(3,2) * t482;
t405 = t609 * t709;
t215 = -t405 + (-t354 - t836) * qJD(1);
t786 = t215 * t480;
t758 = t482 * t483;
t655 = rSges(3,1) * t758 - t820;
t765 = t479 * t483;
t355 = -rSges(3,2) * t765 + t655;
t711 = qJD(2) * t480;
t679 = t609 * t711;
t216 = -t679 + (t355 + t835) * qJD(1);
t404 = t609 * t483;
t785 = t216 * t404;
t393 = t439 * t480;
t394 = t439 * t483;
t781 = t469 * t472;
t777 = t470 * t472;
t554 = t603 * t470;
t602 = rSges(6,1) * t478 + rSges(6,2) * t481;
t150 = t472 * t554 + (-rSges(6,3) * t472 + qJD(5) * t602) * t469;
t145 = t480 * t150;
t764 = t480 * t271;
t762 = t480 * t389;
t757 = t482 * qJD(2) ^ 2;
t146 = t483 * t150;
t756 = t483 * t271;
t313 = t483 * t348;
t754 = t483 * t389;
t690 = t174 * rSges(6,1) + t173 * rSges(6,2) + rSges(6,3) * t693;
t107 = -rSges(6,3) * t683 + t690;
t402 = pkin(6) * t693;
t682 = t470 * t713;
t184 = -pkin(6) * t683 + t402 + (-t682 - t694) * pkin(4);
t752 = -t107 - t184;
t605 = -t176 * rSges(6,1) - t175 * rSges(6,2);
t108 = rSges(6,3) * t536 - t605;
t185 = t536 * pkin(6) + (t470 * t712 - t695) * pkin(4);
t751 = -t108 - t185;
t297 = t616 * t472;
t750 = -t483 * t297 + t146;
t749 = t900 * t713;
t299 = -t712 * t826 - t458;
t748 = -t182 - t299;
t608 = -rSges(4,2) * t473 + t824;
t193 = -t476 * t371 + (t483 * t608 - t819) * qJD(1);
t747 = -t193 - t299;
t740 = t483 * t280 + t284 * t776;
t739 = t483 * t305 + t309 * t770;
t606 = -t821 + t823;
t288 = t606 * t472;
t681 = t473 * t713;
t432 = pkin(3) * t681;
t735 = -t483 * t288 + t432;
t732 = t352 * t759 + t313;
t654 = rSges(5,2) * t780 - rSges(5,3) * t483;
t294 = rSges(5,1) * t776 - t654;
t731 = -t294 + t300;
t730 = -t295 - t301;
t727 = -t311 + t406;
t722 = t441 + t593;
t721 = t588 - t443;
t717 = qJD(1) * t763;
t716 = qJD(1) * t762;
t714 = qJD(1) * t584;
t708 = qJD(5) * t469;
t143 = -t480 * t568 + t319;
t704 = t143 * qJD(1);
t157 = -t480 * t567 + t362;
t703 = t157 * qJD(1);
t213 = -t480 * t566 + t394;
t702 = t213 * qJD(1);
t700 = t431 * t831;
t377 = t768 * t831;
t353 = t483 * t386;
t181 = -t555 * t713 + t353 + t630;
t692 = -t181 + t752;
t691 = t432 + t750;
t171 = t472 * t763 + (t483 * t606 - t818) * qJD(1);
t689 = -t171 + t748;
t688 = t260 + t749;
t687 = -t185 + t748;
t686 = t300 + t742;
t685 = -t301 - t900;
t684 = t406 + t731;
t677 = t472 * t708;
t538 = t401 * t387 - t630;
t116 = -t378 + (-t294 + t623) * qJD(1) + t538;
t673 = t116 * qJD(1) * t387;
t672 = -t781 / 0.2e1;
t669 = -pkin(1) - t825;
t668 = -t713 / 0.2e1;
t667 = -t712 / 0.2e1;
t665 = t711 / 0.2e1;
t664 = -t709 / 0.2e1;
t660 = t407 + t835;
t659 = -t607 - t833;
t653 = -(-t480 * t586 - t792) * qJD(1) + t895 * t472;
t652 = -qJD(1) * t282 - t283 * t472 - t381 * t774;
t651 = -(-t480 * t591 - t796) * qJD(1) + t896 * t472;
t650 = -qJD(1) * t284 + t472 * t897;
t649 = -(-t480 * t587 - t793) * qJD(1) + t892 * t476;
t648 = -qJD(1) * t307 - t308 * t476 - t410 * t768;
t647 = -(-t480 * t592 - t797) * qJD(1) + t893 * t476;
t646 = -qJD(1) * t309 + t476 * t894;
t279 = Icges(5,5) * t776 - Icges(5,6) * t780 + t789;
t642 = t279 + t784;
t641 = t888 * t472;
t640 = t890 * t472;
t304 = Icges(4,5) * t770 - Icges(4,6) * t773 + t790;
t639 = t304 + t783;
t638 = qJD(1) * t755 - t606 * t774;
t637 = t887 * t476;
t636 = t889 * t476;
t635 = -qJD(1) * t372 - t608 * t768;
t347 = Icges(3,5) * t759 - Icges(3,6) * t766 + t791;
t634 = -t347 - t782;
t423 = rSges(5,2) * t683;
t170 = -rSges(5,1) * t682 + t423 + (-rSges(5,3) * qJD(1) + t387 * t472) * t483;
t633 = -qJD(1) * t294 - t170;
t632 = qJD(1) * t371 - t431 * t608;
t631 = t712 * t832;
t627 = t406 + t686;
t626 = qJD(5) * t672;
t257 = t401 * t606;
t625 = -t257 - t700;
t624 = -t458 - t701;
t622 = t301 + t660;
t338 = t608 * t476;
t618 = -t338 - t696;
t617 = t76 * t899 * qJD(1);
t615 = -t281 * t778 + t283 * t775;
t614 = -t306 * t772 + t308 * t769;
t613 = -t349 * t765 + t351 * t758;
t612 = -t377 + t638;
t610 = -t822 + t825;
t601 = -t480 * t87 + t483 * t86;
t600 = t480 * t86 + t483 * t87;
t599 = -t480 * t89 + t483 * t88;
t598 = t480 * t88 + t483 * t89;
t597 = -t480 * t98 + t483 * t97;
t596 = t480 * t97 + t483 * t98;
t421 = t610 * qJD(2);
t595 = -qJD(2) * t421 - t834;
t590 = -Icges(6,1) * t481 + t800;
t580 = Icges(6,5) * t478 + Icges(6,6) * t481;
t577 = t203 * t483 - t205 * t480;
t576 = t215 * t483 + t216 * t480;
t575 = t265 * t478 - t267 * t481;
t152 = -t281 * t470 - t283 * t469;
t177 = -t306 * t474 - t308 * t473;
t209 = -t349 * t482 - t351 * t479;
t210 = -t350 * t482 - t352 * t479;
t118 = t263 * t470 + t469 * t575;
t548 = t581 * t470;
t147 = t472 * t548 + (-Icges(6,3) * t472 + qJD(5) * t580) * t469;
t549 = t585 * t470;
t148 = t472 * t549 + (-Icges(6,6) * t472 + (Icges(6,2) * t481 + t800) * qJD(5)) * t469;
t550 = t590 * t470;
t149 = t472 * t550 + (-Icges(6,5) * t472 + qJD(5) * t589) * t469;
t46 = (t472 * t575 + t147) * t470 + (t148 * t478 - t149 * t481 - t263 * t472 + (t265 * t481 + t267 * t478) * qJD(5)) * t469;
t561 = -t118 * t677 + t46 * t436;
t557 = -t280 + t574;
t556 = -t305 + t572;
t552 = t609 * qJD(2);
t272 = t554 - t817;
t551 = t203 * t708 + t271 * t675 - t272 * t878 - t401 * t616 - t436 * t764;
t249 = t284 * t775;
t547 = -t483 * t642 + t249;
t256 = t309 * t769;
t546 = -t483 * t639 + t256;
t544 = qJD(2) * t443;
t543 = qJD(2) * t441;
t132 = t347 * t483 - t480 * t570;
t133 = -t350 * t766 + t732;
t541 = (t132 * t483 - t133 * t480) * qJD(2);
t134 = -t347 * t480 + t613;
t291 = t352 * t758;
t135 = -t348 * t480 - t350 * t765 + t291;
t540 = (t134 * t483 - t135 * t480) * qJD(2);
t206 = (-t354 * t480 - t355 * t483) * qJD(2);
t539 = (t406 * t480 - t407 * t483) * qJD(2);
t534 = -t194 * t878 + t196 * t292 + t263 * t436;
t533 = -(-Icges(6,5) * t373 - Icges(6,6) * t374) * t878 + (Icges(6,5) * t375 - Icges(6,6) * t376) * t292 + t580 * t469 * t436;
t532 = -t565 - t823;
t531 = -qJD(1) * t582 + t318 * t401 - t319 * t774;
t530 = -qJD(1) * t583 + t361 * t431 - t362 * t768;
t529 = t203 * t674 + t292 * t764 - t401 * t754 + t756 * t878 - t762 * t774;
t528 = -(-t441 * t483 - t352) * t480 + (Icges(3,2) * t759 - t351 + t464) * t483;
t526 = qJD(1) * t458 + (-pkin(2) * t757 - t834) * t483;
t117 = t387 * t774 + (t295 + t622) * qJD(1) + t624;
t298 = t713 * t826 - t630;
t501 = qJD(1) * t298 + (-qJD(1) * t678 - t480 * t757) * pkin(2) - t480 * t834;
t494 = qJD(1) * t181 - t476 * t377 - t417 * t832 + t501;
t66 = qJD(1) * t170 - t288 * t774 + t357 * t387 + t494;
t495 = (t416 * t473 - t431 * t771) * pkin(3) + t526;
t67 = qJD(1) * t689 - t288 * t401 - t356 * t387 + t495;
t525 = t117 * (-t480 * t288 + t387 * t712) + t66 * t763 + t67 * t755;
t524 = t469 * t533;
t522 = t469 * t590 + t795;
t521 = t551 - t700;
t520 = (t479 * t721 - t482 * t722) * qJD(1);
t519 = t300 * t768 - t301 * t431 + t539;
t518 = (t368 - t299 * t480 + (-t298 + t385) * t483) * qJD(2);
t514 = -t895 * t774 + (Icges(5,2) * t776 - t283 + t429) * t401 + t888 * qJD(1);
t513 = -t892 * t768 + (Icges(4,2) * t770 - t308 + t452) * t431 + t887 * qJD(1);
t512 = -t205 * t675 + t529;
t511 = qJD(1) * (t469 * t837 - t565 - t829);
t26 = qJD(1) * t184 + t107 * t436 - t150 * t292 - t205 * t677 - t212 * t271 - t297 * t774 + t357 * t389 + t494;
t27 = qJD(1) * t687 - t436 * t108 - t150 * t878 + t203 * t677 + t211 * t271 - t401 * t297 - t356 * t389 + t495;
t77 = t205 * t436 - t271 * t292 + t389 * t774 + (t332 + t622) * qJD(1) + t624;
t508 = t26 * (t762 + t764) + t27 * (t754 + t756) + t77 * (-t480 * t297 + t712 * t899 + t145);
t507 = -qJD(1) * t279 + t469 * t652 - t470 * t650;
t506 = t469 * t653 - t470 * t651 - t719;
t505 = -qJD(1) * t304 + t473 * t648 - t474 * t646;
t504 = t473 * t649 - t474 * t647 - t718;
t503 = -qJD(1) * t379 + t469 * t641 - t470 * t640;
t502 = -qJD(1) * t408 + t473 * t637 - t474 * t636;
t226 = qJD(1) * t350 + t480 * t543;
t228 = qJD(1) * t352 + t480 * t544;
t500 = -qJD(1) * t347 + qJD(2) * t209 - t226 * t479 + t228 * t482;
t225 = t483 * t543 + (-t480 * t588 - t794) * qJD(1);
t227 = t483 * t544 + (-t480 * t593 - t798) * qJD(1);
t499 = qJD(2) * t210 - t225 * t479 + t227 * t482 - t715;
t419 = t588 * qJD(2);
t420 = t593 * qJD(2);
t498 = -qJD(1) * t439 + t419 * t479 - t420 * t482 + (-t441 * t482 - t443 * t479) * qJD(2);
t497 = -t272 * t292 - t616 * t774 + t436 * t756 + qJD(1) * t754 + (-t205 * t469 - t470 * t756) * qJD(5);
t496 = -t377 + t497;
t493 = -t181 * t431 - t182 * t768 + t417 * t300 + t301 * t416 + t518;
t492 = t528 * t479 + t482 * t863;
t120 = t279 * t483 - t480 * t574;
t121 = -t282 * t780 + t740;
t122 = -t279 * t480 + t615;
t123 = -t280 * t480 - t282 * t778 + t249;
t153 = -t282 * t470 - t284 * t469;
t20 = t102 * t778 + t104 * t375 + t106 * t376 + t173 * t197 - t174 * t201 + t194 * t535;
t21 = t101 * t778 + t103 * t375 + t105 * t376 + t173 * t199 + t174 * t202 + t196 * t535;
t22 = t102 * t780 - t104 * t373 + t106 * t374 + t175 * t197 - t176 * t201 + t194 * t536;
t23 = t101 * t780 - t103 * t373 + t105 * t374 + t175 * t199 + t176 * t202 + t196 * t536;
t237 = t265 * t480;
t238 = t265 * t483;
t239 = t522 * t480;
t240 = t522 * t483;
t266 = -Icges(6,6) * t469 + t549;
t268 = -Icges(6,5) * t469 + t550;
t38 = t147 * t778 + t148 * t375 + t149 * t376 + t173 * t265 + t174 * t267 + t263 * t535;
t3 = -t115 * t677 - t20 * t878 + t21 * t292 + t211 * t88 + t212 * t89 + t38 * t436;
t37 = t118 * t436 + t292 * t98 - t878 * t97;
t39 = t147 * t780 - t148 * t373 + t149 * t374 + t175 * t265 + t176 * t267 + t263 * t536;
t4 = -t114 * t677 + t211 * t86 + t212 * t87 - t22 * t878 + t23 * t292 + t39 * t436;
t488 = t514 * t469 - t470 * t861;
t490 = (t263 * t483 + t578) * t292 - (t263 * t480 + t579) * t878 + (-Icges(6,3) * t469 + t548 + t575) * t436;
t489 = t490 * t469;
t49 = t480 * t872 + t507 * t483;
t50 = t480 * t873 + t506 * t483;
t51 = t507 * t480 - t483 * t872;
t52 = t506 * t480 - t483 * t873;
t63 = t120 * t401 - t121 * t774 + t704;
t144 = -t483 * t568 - t318;
t136 = t144 * qJD(1);
t64 = t122 * t401 - t123 * t774 + t136;
t78 = t480 * t867 + t503 * t483;
t79 = t503 * t480 - t483 * t867;
t82 = t469 * t650 + t470 * t652;
t83 = t469 * t651 + t470 * t653;
t491 = (t469 * t861 + t514 * t470) * t828 + t37 * t708 / 0.2e1 + t597 * t626 + (-t480 * t83 + t483 * t82 + (-t152 * t480 - t153 * t483) * qJD(1)) * t827 + (-qJD(1) * t596 + t24 * t483 - t25 * t480) * t840 + (((t238 * t478 - t240 * t481 - t196) * t292 - (t237 * t478 - t239 * t481 - t194) * t878 + (t266 * t478 - t268 * t481 - t263) * t436 - t118 * qJD(5)) * t469 + (qJD(5) * t596 + t490) * t470) * t841 + (-t480 * t52 + t483 * t51 + (-t120 * t480 - t121 * t483) * qJD(1)) * t848 + (t480 * t488 + t483 * t531) * t849 + (-t480 * t50 + t483 * t49 + (-t122 * t480 - t123 * t483) * qJD(1)) * t850 + (-t480 * t531 + t483 * t488) * t851 + (t122 * t483 - t123 * t480) * t852 + (t120 * t483 - t121 * t480) * t853 + (-qJD(1) * t600 + t22 * t483 - t23 * t480) * t854 + ((-t238 * t373 + t240 * t374) * t292 - (-t237 * t373 + t239 * t374) * t878 + (-t266 * t373 + t268 * t374) * t436 + (-t114 * t469 + t775 * t87) * qJD(5) + ((qJD(5) * t86 + t534) * t470 + t489) * t480) * t855 + (-qJD(1) * t598 + t20 * t483 - t21 * t480) * t856 + ((t238 * t375 + t240 * t376) * t292 - (t237 * t375 + t239 * t376) * t878 + (t266 * t375 + t268 * t376) * t436 + (-t115 * t469 + t776 * t88) * qJD(5) + ((qJD(5) * t89 + t534) * t470 + t489) * t483) * t857 + t599 * t858 + t601 * t859 + (qJD(1) * t78 - t122 * t356 - t123 * t357 + t401 * t49 - t50 * t774 + t3) * t839 + (qJD(1) * t79 - t120 * t356 - t121 * t357 + t401 * t51 - t52 * t774 + t4) * t838 + (t63 + t32) * t668 + (t64 + t33) * t667 - t885 * t707 / 0.2e1;
t487 = t513 * t473 - t474 * t860;
t124 = t304 * t483 - t480 * t572;
t125 = -t307 * t773 + t739;
t126 = -t304 * t480 + t614;
t127 = -t305 * t480 - t307 * t772 + t256;
t178 = -t307 * t474 - t309 * t473;
t55 = t480 * t870 + t505 * t483;
t56 = t480 * t871 + t504 * t483;
t57 = t505 * t480 - t483 * t870;
t58 = t504 * t480 - t483 * t871;
t74 = t124 * t431 - t125 * t768 + t703;
t158 = -t483 * t567 - t361;
t154 = t158 * qJD(1);
t75 = t126 * t431 - t127 * t768 + t154;
t92 = t480 * t866 + t502 * t483;
t93 = t502 * t480 - t483 * t866;
t95 = t473 * t646 + t474 * t648;
t96 = t473 * t647 + t474 * t649;
t486 = (t473 * t860 + t513 * t474) * t828 + (-t480 * t56 + t483 * t55 + (-t126 * t480 - t127 * t483) * qJD(1)) * t844 + (t126 * t483 - t127 * t480) * t846 + (t124 * t483 - t125 * t480) * t847 + t75 * t667 + t74 * t668 + (-t480 * t530 + t483 * t487) * t845 + t491 + (qJD(1) * t93 - t124 * t416 - t125 * t417 + t431 * t57 - t58 * t768) * t838 + (-t480 * t58 + t483 * t57 + (-t124 * t480 - t125 * t483) * qJD(1)) * t842 + (t480 * t487 + t483 * t530) * t843 + (qJD(1) * t92 - t126 * t416 - t127 * t417 + t431 * t55 - t56 * t768) * t839 + (-t480 * t96 + t483 * t95 + (-t177 * t480 - t178 * t483) * qJD(1)) * t827;
t457 = t713 * t822;
t425 = rSges(4,2) * t681;
t403 = t609 * t480;
t367 = t483 * t378;
t326 = t602 * t469;
t232 = -t480 * t552 + (t483 * t610 - t820) * qJD(1);
t231 = -qJD(1) * t699 + t457 + (-rSges(3,3) * qJD(1) - t552) * t483;
t230 = rSges(6,1) * t375 - rSges(6,2) * t376;
t229 = -rSges(6,1) * t373 - rSges(6,2) * t374;
t214 = -t483 * t566 - t393;
t207 = t214 * qJD(1);
t192 = -qJD(1) * t698 + t425 + (-rSges(4,3) * qJD(1) - t476 * t607) * t483;
t131 = -t607 * t768 - t458 + (t312 + t660) * qJD(1);
t129 = t595 * t483 + (-t232 + t679) * qJD(1);
t128 = t595 * t480 + (t231 - t405) * qJD(1);
t119 = -t311 * t768 - t312 * t431 + t539;
t113 = t498 * t480 - t483 * t865;
t112 = t480 * t865 + t498 * t483;
t111 = qJD(2) * t569 - t225 * t482 - t227 * t479;
t110 = qJD(2) * t570 - t226 * t482 - t228 * t479;
t100 = qJD(1) * t747 - t338 * t431 + t416 * t607 + t526;
t99 = qJD(1) * t192 - t338 * t768 - t417 * t607 + t501;
t94 = -t294 * t774 - t295 * t401 + t519;
t85 = t207 + t540;
t84 = t541 + t702;
t65 = -t192 * t431 - t193 * t768 - t311 * t417 + t312 * t416 + t518;
t59 = t203 * t292 + t205 * t878 - t330 * t774 - t332 * t401 + t519;
t35 = -t170 * t401 - t171 * t774 - t294 * t357 + t295 * t356 + t493;
t15 = t107 * t878 + t108 * t292 - t184 * t401 - t185 * t774 + t203 * t212 - t205 * t211 - t330 * t357 + t332 * t356 + t493;
t1 = [(t469 * t640 + t470 * t641 + t473 * t636 + t474 * t637 + qJD(2) * t566 + t419 * t482 + t420 * t479 + m(3) * ((t215 * rSges(3,3) + t216 * t669) * t480 + (t215 * (-pkin(1) - t610) - t216 * rSges(3,3)) * t483)) * qJD(1) + (t144 + t153) * t852 + (t207 + ((-t133 + t613 + t732) * t483 + (-t132 - t291 + (t348 - t570) * t480) * t480) * qJD(2)) * t664 + (t96 + t92) * t844 + (t39 + t33) * t854 + ((t210 + t214) * t483 + (t209 + t213) * t480) * qJD(2) * t828 + t561 + t815 / 0.2e1 - t816 / 0.2e1 + t808 / 0.2e1 + t809 / 0.2e1 + m(3) * (t129 * (t480 * t669 + t656) + t128 * ((pkin(1) - t822) * t483 + t655) + t216 * t457 + (t609 * t786 - t785) * qJD(2)) + (t83 + t78) * t850 + (t157 + t177) * t847 + t33 * t855 + (t143 + t152) * t853 + (-(-t130 + t385 + (-t311 - t836) * qJD(1) + t537) * t131 + t100 * (-t311 - t453) + t130 * t458 + t99 * (t312 + t454) + t131 * (t425 - t630) + (-t131 * t372 + t607 * t787) * t476 + ((t130 * rSges(4,3) + t131 * (-t471 - t824)) * t480 + (t130 * (-t471 - t608) - t131 * rSges(4,3)) * t483) * qJD(1)) * m(4) + (t158 + t178) * t846 + (t82 + t79 + t64) * t848 + (t95 + t93 + t75) * t842 + (-t702 + ((t483 * t634 - t135 + t291) * t483 + (t480 * t634 - t134 - t313 + t732) * t480) * qJD(2) + t84) * t665 + (t27 * (-t391 + t604) + t76 * t605 + t26 * (t392 + t900) + t511 * t810 + (t27 * (-t616 - t817) + (-t386 + (t470 * t837 + t830) * t472) * t76) * t480 + (t76 - (-t330 - t836) * qJD(1) - t875 - pkin(4) * t694 + t353 + t402 + t690 + t511 * t480 - t884) * t77) * m(6) + (-(-t116 + (-t294 - t836) * qJD(1) + t538 + t875) * t117 + t67 * (-t391 + t654) + t66 * (t392 + t619) + t117 * (-rSges(5,1) * t694 - rSges(5,2) * t693 + t353 + t423) + (-t67 * t823 + t116 * (rSges(5,1) * t781 + rSges(5,2) * t777 - t386) - t66 * rSges(5,3)) * t480 + ((t116 * rSges(5,3) + t117 * t532) * t480 + (t116 * (t532 + t821) - t117 * rSges(5,3)) * t483) * qJD(1)) * m(5) + t38 * t856 + t115 * t858 + t114 * t859 + (t110 + t113 + t85) * t709 / 0.2e1 - (t111 + t112) * t711 / 0.2e1 + (t136 + (-t121 + t615 + t740) * t401 - (t120 + t547) * t774 + (-t401 * t642 - t557 * t774) * t480) * t849 + (-t704 + (-t123 + t547) * t401 - (t483 * t574 + t122 - t740) * t774 + (t401 * t557 - t642 * t774) * t480 + t63) * t851 + (t154 + (-t125 + t614 + t739) * t431 - (t124 + t546) * t768 + (-t431 * t639 - t556 * t768) * t480) * t843 + (-t703 + (-t127 + t546) * t431 - (t483 * t572 + t126 - t739) * t768 + (t431 * t556 - t639 * t768) * t480 + t74) * t845; ((t479 * t722 + t482 * t721) * qJD(1) + (-t479 * t863 + t528 * t482) * qJD(2)) * t828 + ((t394 * t711 + t714) * t480 + (t520 + (-t480 * t393 + t492) * qJD(2)) * t483) * t665 + t486 + ((t393 * t709 - t714) * t483 + (t520 + (-t483 * t394 + t492) * qJD(2)) * t480) * t664 + (t110 * t483 - t111 * t480 + (-t209 * t480 - t210 * t483) * qJD(1)) * t827 + (qJD(1) * t112 + (-t480 * (t480 * t869 + t499 * t483) + t483 * (t480 * t868 + t500 * t483) + (-t134 * t480 - t135 * t483) * qJD(1)) * t883) * t839 + (qJD(1) * t113 + (-t480 * (t499 * t480 - t483 * t869) + t483 * (t500 * t480 - t483 * t868) + (-t132 * t480 - t133 * t483) * qJD(1)) * t883) * t838 + (t541 + t84) * t668 + (t85 + t540) * t667 + ((t15 * t627 + t26 * t424 + t77 * t545 - t617) * t480 + (t27 * t424 + t15 * (-t407 + t685) + t77 * t876) * t483 + t508 - t77 * (t496 + t881) + (t691 - (-t315 - t762) * qJD(1) - t521 + t864) * t76 + (t688 + (-t108 + t687) * t480 + (qJD(1) * t627 - t298 + t692) * t483 - t512 + t880) * t59) * m(6) + ((t117 * t545 + t35 * t684 + t424 * t66 - t673) * t480 + (t67 * t424 + t35 * (-t407 + t730) + t117 * t876) * t483 + t525 - t117 * (t612 + t881) + (t689 * t480 + (qJD(1) * t684 - t170 - t181 - t298) * t483 + t880 + t886) * t94 + (t735 - (-t315 - t763) * qJD(1) - t625 + t864) * t116) * m(5) + ((t131 * t618 + t65 * t727 + t659 * t99) * t480 + (t65 * (-t312 - t407) + (qJD(1) * t131 + t100) * t659) * t483 - t131 * (t527 + t635) + (t483 * t618 + t607 * t713 - t632 + t879) * t130 + (t747 * t480 + (qJD(1) * t727 - t192 - t298) * t483 + t891 + t898) * t119) * m(4) + (0.2e1 * t206 * (-t231 * t483 - t232 * t480 + (-t354 * t483 + t355 * t480) * qJD(1)) - t576 * t421 - (t128 * t480 + t129 * t483 + (t216 * t483 - t786) * qJD(1)) * t609 - (t215 * t403 - t785) * qJD(1) - (t206 * (t403 * t480 + t404 * t483) - t576 * t610) * qJD(2)) * m(3); t486 + (-t76 * (t432 + t521 - t716) - t77 * (t496 - t631) + t76 * t691 + (t15 * t686 - t617 + (-t26 * t473 - t77 * t771) * pkin(3)) * t480 + (t15 * t685 + (-t76 * t771 + (-qJD(1) * t77 - t27) * t473) * pkin(3)) * t483 + t508 + (-t367 - t529 + t688 + (qJD(1) * t686 + t692) * t483 + (t205 * t707 + t751 + t901) * t480) * t59) * m(6) + (-t116 * (t432 + t625 - t717) - t117 * (t612 - t631) + t116 * t735 + (-t673 + t35 * t731 + (-t117 * t771 - t473 * t66) * pkin(3)) * t480 + (t35 * t730 + (-t116 * t771 + (-qJD(1) * t117 - t67) * t473) * pkin(3)) * t483 + t525 + (-t367 + (-t181 + t633 + t277) * t483 + (-t171 + t901) * t480 + t886) * t94) * m(5) + (t65 * (-t311 * t480 - t312 * t483) - (t130 * t483 + t131 * t480) * t338 - (t100 * t483 + t99 * t480 + (t131 * t483 - t787) * qJD(1)) * t607 - t130 * t632 - t131 * t635 + (-t193 * t480 + (-qJD(1) * t311 - t192) * t483 + t898) * t119) * m(4); t491 + ((t15 * t742 - t617) * t480 - t15 * t900 * t483 + t508 - t77 * t497 + (t750 - t551 + t716) * t76 + (t749 + t751 * t480 + (qJD(1) * t742 + t752) * t483 - t512) * t59) * m(6) + (t35 * (-t294 * t480 - t295 * t483) - (t116 * t483 + t117 * t480) * t288 + (t66 * t480 + t67 * t483 + (-t116 * t480 + t117 * t483) * qJD(1)) * t387 - t116 * (-t257 - t717) - t117 * t638 + (-t171 * t480 + t483 * t633 + t905) * t94) * m(5); t469 * t33 * t668 + (t115 * t470 + t469 * t598) * t858 + ((t472 * t598 + t38) * t470 + (qJD(1) * t599 - t115 * t472 + t20 * t480 + t21 * t483) * t469) * t856 + t4 * t780 / 0.2e1 + (t114 * t470 + t469 * t600) * t859 + ((t472 * t600 + t39) * t470 + (qJD(1) * t601 - t114 * t472 + t22 * t480 + t23 * t483) * t469) * t854 + t37 * t672 + t470 * (t561 + t808 + t809 + t815 - t816) / 0.2e1 + (t118 * t470 + t469 * t596) * t626 + ((t472 * t596 + t46) * t470 + (qJD(1) * t597 - t118 * t472 + t24 * t480 + t25 * t483) * t469) * t840 + (t375 * t516 - t376 * t862 + t483 * t524) * t857 + (-t373 * t516 - t374 * t862 + t480 * t524) * t855 + (t533 * t470 + (t516 * t478 + t481 * t862) * t469) * t841 + (qJD(1) * t32 + t3) * t778 / 0.2e1 + t885 * t777 / 0.2e1 + ((t77 * t107 - t76 * t108 - t27 * t203 + t26 * t205 + (t59 * t577 + (t480 * t76 - t483 * t77) * t271) * t472) * t470 + (t76 * (t203 * t472 + t145) + t77 * (-t205 * t472 - t146) + t15 * t577 + t59 * (-t107 * t480 + t108 * t483 - t203 * t713 - t205 * t712) + (-t26 * t483 + t27 * t480 + (t480 * t77 + t810) * qJD(1)) * t271) * t469 - t76 * (-t229 * t436 - t326 * t878) - t77 * (t230 * t436 - t292 * t326) - t59 * (t229 * t292 + t230 * t878)) * m(6);];
tauc = t1(:);
