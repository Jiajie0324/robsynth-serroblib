% Calculate vector of centrifugal and Coriolis load on the joints for
% S6RPPRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,theta2,theta3]';
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
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 02:01
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RPPRRP2_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP2_coriolisvecJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP2_coriolisvecJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRRP2_coriolisvecJ_fixb_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRRP2_coriolisvecJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPPRRP2_coriolisvecJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPPRRP2_coriolisvecJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:00:12
% EndTime: 2019-03-09 02:01:05
% DurationCPUTime: 48.45s
% Computational Cost: add. (38969->953), mult. (36994->1230), div. (0->0), fcn. (35000->10), ass. (0->487)
t816 = Icges(6,1) + Icges(7,1);
t839 = Icges(7,4) + Icges(6,5);
t838 = Icges(6,6) - Icges(7,6);
t416 = sin(qJ(5));
t857 = (Icges(6,4) - Icges(7,5)) * t416;
t815 = Icges(6,2) + Icges(7,3);
t856 = Icges(7,2) + Icges(6,3);
t418 = cos(qJ(5));
t855 = -t416 * t838 + t418 * t839;
t854 = t418 * t816 - t857;
t411 = pkin(10) + qJ(4);
t406 = sin(t411);
t408 = cos(t411);
t684 = Icges(6,4) * t418;
t508 = -Icges(6,2) * t416 + t684;
t853 = t406 * t508 - t408 * t838;
t412 = qJ(1) + pkin(9);
t409 = cos(t412);
t653 = t409 * t416;
t407 = sin(t412);
t655 = t407 * t418;
t313 = t408 * t655 - t653;
t293 = Icges(7,5) * t313;
t652 = t409 * t418;
t656 = t407 * t416;
t312 = t408 * t656 + t652;
t661 = t406 * t407;
t154 = -Icges(7,6) * t661 - Icges(7,3) * t312 - t293;
t296 = Icges(6,4) * t313;
t162 = -Icges(6,2) * t312 + Icges(6,6) * t661 + t296;
t837 = t154 + t162;
t597 = t408 * t652;
t315 = t597 + t656;
t294 = Icges(7,5) * t315;
t314 = t408 * t653 - t655;
t660 = t406 * t409;
t155 = Icges(7,6) * t660 + Icges(7,3) * t314 + t294;
t686 = Icges(6,4) * t315;
t164 = -Icges(6,2) * t314 + Icges(6,6) * t660 + t686;
t836 = t155 - t164;
t156 = Icges(6,5) * t313 - Icges(6,6) * t312 + Icges(6,3) * t661;
t159 = Icges(7,4) * t313 + Icges(7,2) * t661 + Icges(7,6) * t312;
t835 = t156 + t159;
t158 = Icges(6,5) * t315 - Icges(6,6) * t314 + Icges(6,3) * t660;
t161 = Icges(7,4) * t315 + Icges(7,2) * t660 + Icges(7,6) * t314;
t813 = t158 + t161;
t292 = Icges(7,5) * t312;
t165 = Icges(7,1) * t313 + Icges(7,4) * t661 + t292;
t295 = Icges(6,4) * t312;
t169 = -Icges(6,1) * t313 - Icges(6,5) * t661 + t295;
t834 = t165 - t169;
t680 = Icges(7,5) * t314;
t167 = Icges(7,1) * t315 + Icges(7,4) * t660 + t680;
t297 = Icges(6,4) * t314;
t170 = Icges(6,1) * t315 + Icges(6,5) * t660 - t297;
t833 = t167 + t170;
t658 = t406 * t418;
t381 = Icges(7,5) * t658;
t659 = t406 * t416;
t832 = Icges(7,3) * t659 + t381 - t853;
t678 = Icges(7,5) * t418;
t505 = Icges(7,3) * t416 + t678;
t762 = (t505 - t508) * t408 - t838 * t406;
t812 = t406 * t855 - t408 * t856;
t852 = t406 * t856 + t408 * t855;
t761 = t406 * t839 + t854 * t408;
t811 = t854 * t406 - t408 * t839;
t851 = (t418 * t815 + t857) * t406;
t850 = (-t416 * t839 - t838 * t418) * t406;
t415 = -pkin(7) - qJ(3);
t385 = t409 * t415;
t414 = cos(pkin(10));
t405 = pkin(3) * t414 + pkin(2);
t626 = -t407 * t405 - t385;
t417 = sin(qJ(1));
t721 = pkin(1) * t417;
t541 = t626 - t721;
t820 = -t314 * t837 + t834 * t315 + t835 * t660;
t819 = t314 * t836 + t315 * t833 + t660 * t813;
t775 = t314 * t832 + t315 * t811 + t660 * t812;
t849 = qJD(4) * t762 + qJD(5) * t851;
t848 = qJD(4) * t852 + qJD(5) * t850;
t324 = (-Icges(6,1) * t416 - t684) * t406;
t611 = qJD(5) * t406;
t847 = (-Icges(7,1) * t416 + t678) * t611 + qJD(5) * t324 + t761 * qJD(4);
t657 = t407 * t408;
t599 = rSges(5,1) * t657;
t846 = -t599 + t541;
t822 = -t312 * t837 + t834 * t313 + t835 * t661;
t821 = t312 * t836 + t313 * t833 + t661 * t813;
t613 = qJD(4) * t416;
t586 = t406 * t613;
t609 = qJD(5) * t416;
t141 = qJD(1) * t312 - qJD(5) * t597 - t407 * t609 + t409 * t586;
t610 = qJD(5) * t408;
t382 = qJD(1) - t610;
t612 = qJD(4) * t418;
t445 = t382 * t416 - t406 * t612;
t618 = qJD(1) * t408;
t552 = -qJD(5) + t618;
t142 = t409 * t445 - t552 * t655;
t614 = qJD(4) * t409;
t585 = t408 * t614;
t619 = qJD(1) * t407;
t589 = t406 * t619;
t461 = t585 - t589;
t72 = Icges(7,5) * t142 + Icges(7,6) * t461 - Icges(7,3) * t141;
t78 = Icges(6,4) * t142 + Icges(6,2) * t141 + Icges(6,6) * t461;
t845 = t72 - t78;
t608 = qJD(5) * t418;
t617 = qJD(1) * t409;
t143 = -t407 * t586 - t409 * t609 - t418 * t619 + (t407 * t608 + t416 * t617) * t408;
t144 = t407 * t445 + t552 * t652;
t615 = qJD(4) * t408;
t829 = t407 * t615;
t462 = t406 * t617 + t829;
t73 = Icges(7,5) * t144 + Icges(7,6) * t462 + Icges(7,3) * t143;
t79 = Icges(6,4) * t144 - Icges(6,2) * t143 + Icges(6,6) * t462;
t844 = t73 - t79;
t74 = Icges(6,5) * t142 + Icges(6,6) * t141 + Icges(6,3) * t461;
t76 = Icges(7,4) * t142 + Icges(7,2) * t461 - Icges(7,6) * t141;
t843 = t74 + t76;
t75 = Icges(6,5) * t144 - Icges(6,6) * t143 + Icges(6,3) * t462;
t77 = Icges(7,4) * t144 + Icges(7,2) * t462 + Icges(7,6) * t143;
t842 = t75 + t77;
t80 = Icges(7,1) * t142 + Icges(7,4) * t461 - Icges(7,5) * t141;
t82 = Icges(6,1) * t142 + Icges(6,4) * t141 + Icges(6,5) * t461;
t841 = t80 + t82;
t81 = Icges(7,1) * t144 + Icges(7,4) * t462 + Icges(7,5) * t143;
t83 = Icges(6,1) * t144 - Icges(6,4) * t143 + Icges(6,5) * t462;
t840 = t81 + t83;
t776 = t312 * t832 + t313 * t811 + t661 * t812;
t831 = t416 * t832 + t418 * t811;
t804 = t162 * t416 + t169 * t418;
t805 = t154 * t416 - t165 * t418;
t830 = t804 + t805;
t803 = rSges(7,1) + pkin(5);
t419 = cos(qJ(1));
t410 = t419 * pkin(1);
t616 = qJD(4) * t407;
t325 = t409 * t611 + t616;
t326 = -t407 * t611 + t614;
t778 = t819 * t325 - t326 * t820 + t775 * t382;
t825 = -t141 * t832 + t142 * t811 + t314 * t849 + t315 * t847 + t461 * t812 + t660 * t848;
t824 = t143 * t832 + t144 * t811 + t312 * t849 + t313 * t847 + t462 * t812 + t661 * t848;
t798 = t159 * t408;
t66 = -t406 * t805 - t798;
t801 = t156 * t408;
t68 = -t406 * t804 - t801;
t818 = t66 + t68;
t802 = rSges(7,3) + qJ(6);
t291 = qJD(6) * t314;
t795 = -t802 * t312 - t313 * t803;
t651 = rSges(7,2) * t661 - t795;
t828 = t382 * t651 - t291;
t290 = qJD(6) * t312;
t525 = pkin(5) * t418 + qJ(6) * t416;
t526 = rSges(7,1) * t418 + rSges(7,3) * t416;
t634 = -rSges(7,2) * t408 + (t525 + t526) * t406;
t649 = rSges(7,2) * t660 + t314 * t802 + t315 * t803;
t827 = -t325 * t634 + t649 * t382 + t290;
t500 = -t164 * t416 + t170 * t418;
t502 = t155 * t416 + t167 * t418;
t826 = t325 * (-t409 * t812 - t500 - t502) - t326 * (-t407 * t812 + t830) + t382 * (-t831 + t852);
t786 = t141 * t837 + t142 * t834 + t314 * t844 + t315 * t840 + t461 * t835 + t660 * t842;
t785 = -t141 * t836 + t142 * t833 + t314 * t845 + t315 * t841 + t461 * t813 + t660 * t843;
t783 = -t143 * t837 + t144 * t834 + t312 * t844 + t313 * t840 + t462 * t835 + t661 * t842;
t782 = t143 * t836 + t144 * t833 + t312 * t845 + t313 * t841 + t462 * t813 + t661 * t843;
t823 = (qJD(4) * t831 - t848) * t408 + (t847 * t418 + t849 * t416 + (-t416 * t811 + t418 * t832) * qJD(5) + t812 * qJD(4)) * t406;
t67 = -t161 * t408 + t406 * t502;
t69 = -t158 * t408 + t406 * t500;
t817 = t67 + t69;
t768 = t406 * t831 - t408 * t812;
t810 = -t406 * t505 + t853;
t809 = -t850 * t382 + (-t312 * t839 - t313 * t838) * t326 + (t314 * t839 + t315 * t838) * t325;
t420 = qJD(1) ^ 2;
t779 = t821 * t325 - t326 * t822 + t776 * t382;
t713 = rSges(4,2) * sin(pkin(10));
t715 = rSges(4,1) * t414;
t490 = t407 * rSges(4,3) + (-t713 + t715) * t409;
t393 = t407 * qJ(3);
t350 = t409 * pkin(2) + t393;
t562 = t350 + t410;
t793 = t490 + t562;
t654 = t408 * t409;
t370 = pkin(4) * t654;
t309 = pkin(8) * t660 + t370;
t364 = t409 * t405;
t553 = -t407 * t415 + t364;
t542 = t553 - t350 + t562;
t491 = t309 + t542;
t720 = pkin(4) * t406;
t351 = -pkin(8) * t408 + t720;
t392 = qJD(3) * t409;
t631 = -t351 * t616 - t392;
t446 = t491 * qJD(1) + t631;
t45 = t446 + t827;
t558 = t45 * t634;
t607 = qJD(6) * t416;
t377 = t406 * t607;
t719 = pkin(4) * t408;
t352 = pkin(8) * t406 + t719;
t307 = t352 * t407;
t577 = t307 * t616 + t309 * t614 + qJD(2);
t37 = t325 * t651 + t326 * t649 + t377 + t577;
t560 = t37 * t651;
t792 = t558 - t560;
t530 = rSges(6,1) * t313 - rSges(6,2) * t312;
t172 = rSges(6,3) * t661 + t530;
t529 = rSges(6,1) * t418 - rSges(6,2) * t416;
t278 = -rSges(6,3) * t408 + t406 * t529;
t790 = -t172 * t382 - t278 * t326;
t789 = 0.2e1 * qJD(4);
t603 = qJD(4) * qJD(5);
t573 = t408 * t603;
t240 = qJD(1) * t325 + t407 * t573;
t241 = qJD(1) * t326 + t409 * t573;
t574 = t406 * t603;
t788 = t240 * t820 + t241 * t819 + t325 * t785 - t326 * t786 + t382 * t825 + t574 * t775;
t787 = t240 * t822 + t241 * t821 + t325 * t782 - t326 * t783 + t382 * t824 + t574 * t776;
t581 = t408 * t607;
t582 = t406 * t608;
t357 = pkin(8) * t585;
t587 = t406 * t614;
t463 = -t407 * t618 - t587;
t191 = pkin(4) * t463 - pkin(8) * t589 + t357;
t356 = t616 * t720;
t192 = pkin(8) * t462 + qJD(1) * t370 - t356;
t740 = qJD(1) * t307;
t594 = t192 * t616 + (t191 + t740) * t614;
t774 = -t802 * t143 - t144 * t803 - t290;
t716 = rSges(7,2) * t462 - t774;
t773 = rSges(7,2) * t585 - t802 * t141 + t142 * t803 + t291;
t717 = -rSges(7,2) * t589 + t773;
t5 = qJD(6) * t582 + t717 * t326 + t716 * t325 + t651 * t241 - t649 * t240 + (-t309 * t619 + t581) * qJD(4) + t594;
t784 = t5 * t649;
t16 = (-qJD(4) * t805 - t77) * t408 + (qJD(4) * t159 + t416 * t73 + t418 * t81 + (-t154 * t418 - t165 * t416) * qJD(5)) * t406;
t18 = (-qJD(4) * t804 - t75) * t408 + (qJD(4) * t156 - t416 * t79 + t418 * t83 + (-t162 * t418 + t169 * t416) * qJD(5)) * t406;
t781 = t16 + t18;
t17 = (qJD(4) * t502 - t76) * t408 + (qJD(4) * t161 + t416 * t72 + t418 * t80 + (t155 * t418 - t167 * t416) * qJD(5)) * t406;
t19 = (qJD(4) * t500 - t74) * t408 + (qJD(4) * t158 - t416 * t78 + t418 * t82 + (-t164 * t418 - t170 * t416) * qJD(5)) * t406;
t780 = t17 + t19;
t777 = t325 * t817 - t326 * t818 + t382 * t768;
t767 = t810 * t407;
t766 = t810 * t409;
t765 = t811 * t407;
t764 = t811 * t409;
t394 = t409 * qJ(3);
t347 = pkin(2) * t407 - t394;
t242 = t347 + t626;
t337 = qJD(1) * t347;
t763 = qJD(1) * t242 - t337;
t760 = -rSges(5,2) * t661 - t409 * rSges(5,3);
t336 = qJD(4) * t352;
t712 = rSges(7,2) * t406;
t279 = t408 * t526 + t712;
t328 = (-rSges(7,1) * t416 + rSges(7,3) * t418) * t406;
t460 = t408 * t613 + t582;
t648 = t377 + t460 * qJ(6) + (-t406 * t609 + t408 * t612) * pkin(5) + qJD(4) * t279 + qJD(5) * t328;
t759 = t377 - t336 - t648;
t398 = Icges(5,4) * t408;
t509 = -Icges(5,2) * t406 + t398;
t344 = Icges(5,1) * t406 + t398;
t556 = t409 * rSges(3,1) - rSges(3,2) * t407;
t758 = t410 + t556;
t757 = t826 * t406;
t756 = (-t811 + t851) * t382 + (-t313 * t815 + t292 - t295 + t834) * t326 + (t315 * t815 + t297 - t680 - t833) * t325;
t755 = (-Icges(7,1) * t659 + t324 + t381 + t832) * t382 + (t312 * t816 - t293 + t296 + t837) * t326 + (-t314 * t816 + t294 - t686 + t836) * t325;
t754 = t809 * t406;
t753 = t325 * t813 - t326 * t835 + t382 * t812;
t752 = t407 * t818 + t409 * t817;
t751 = t407 * t817 - t409 * t818;
t750 = t407 * t820 + t409 * t819;
t749 = t407 * t819 - t409 * t820;
t748 = t407 * t822 + t409 * t821;
t747 = t407 * t821 - t409 * t822;
t306 = t351 * t407;
t308 = t351 * t409;
t744 = t409 * t191 + t407 * t192 + t306 * t616 + t307 * t617 + t308 * t614;
t743 = t382 * t823 + t574 * t768;
t672 = Icges(5,3) * t409;
t245 = Icges(5,5) * t657 - Icges(5,6) * t661 - t672;
t362 = Icges(5,4) * t661;
t682 = Icges(5,5) * t409;
t249 = Icges(5,1) * t657 - t362 - t682;
t675 = Icges(5,6) * t409;
t247 = Icges(5,4) * t657 - Icges(5,2) * t661 - t675;
t667 = t247 * t406;
t498 = -t249 * t408 + t667;
t98 = -t245 * t409 - t407 * t498;
t341 = Icges(5,5) * t408 - Icges(5,6) * t406;
t340 = Icges(5,5) * t406 + Icges(5,6) * t408;
t469 = qJD(4) * t340;
t687 = Icges(5,4) * t406;
t345 = Icges(5,1) * t408 - t687;
t250 = Icges(5,5) * t407 + t345 * t409;
t248 = Icges(5,6) * t407 + t409 * t509;
t666 = t248 * t406;
t497 = -t250 * t408 + t666;
t738 = -t409 * t469 + (-t341 * t407 + t497 + t672) * qJD(1);
t246 = Icges(5,3) * t407 + t341 * t409;
t621 = qJD(1) * t246;
t737 = qJD(1) * t498 - t407 * t469 + t621;
t342 = Icges(5,2) * t408 + t687;
t493 = t342 * t406 - t344 * t408;
t736 = qJD(1) * t493 + t341 * qJD(4);
t735 = t407 * (-t342 * t409 + t250) - t409 * (-Icges(5,2) * t657 + t249 - t362);
t734 = t240 / 0.2e1;
t733 = t241 / 0.2e1;
t732 = -t325 / 0.2e1;
t731 = t325 / 0.2e1;
t730 = -t326 / 0.2e1;
t729 = t326 / 0.2e1;
t728 = -t382 / 0.2e1;
t727 = t382 / 0.2e1;
t726 = t407 / 0.2e1;
t724 = -t409 / 0.2e1;
t723 = -rSges(7,2) - pkin(8);
t722 = -rSges(6,3) - pkin(8);
t718 = pkin(2) - t405;
t710 = rSges(6,3) * t406;
t708 = t16 * t326;
t707 = t17 * t325;
t706 = t18 * t326;
t705 = t19 * t325;
t176 = t315 * rSges(6,1) - t314 * rSges(6,2) + rSges(6,3) * t660;
t280 = t408 * t529 + t710;
t329 = (-rSges(6,1) * t416 - rSges(6,2) * t418) * t406;
t194 = qJD(4) * t280 + qJD(5) * t329;
t386 = qJ(3) * t617;
t602 = t420 * t721;
t605 = qJD(1) * qJD(3);
t391 = qJD(3) * t407;
t622 = t386 + t391;
t492 = qJD(1) * (-pkin(2) * t619 + t622) + t407 * t605 - t602;
t477 = qJD(1) * (-t386 + (t407 * t718 - t385) * qJD(1)) + t492;
t464 = qJD(1) * t191 + t477;
t478 = -t336 * t407 - t351 * t617;
t596 = t142 * rSges(6,1) + t141 * rSges(6,2) + rSges(6,3) * t585;
t85 = -rSges(6,3) * t589 + t596;
t27 = -t194 * t325 - t241 * t278 + t382 * t85 + (t176 * t611 + t478) * qJD(4) + t464;
t704 = t27 * t409;
t601 = t420 * t410;
t544 = t409 * t605 - t601;
t604 = qJD(1) * qJD(4);
t575 = t407 * t604;
t298 = qJD(1) * t350 - t392;
t372 = t415 * t619;
t640 = t372 - (-t409 * t718 - t393) * qJD(1) - t298;
t437 = t351 * t575 + (-t192 + t640) * qJD(1) + t544;
t664 = t336 * t409;
t531 = rSges(6,1) * t144 - rSges(6,2) * t143;
t87 = rSges(6,3) * t462 + t531;
t28 = -t194 * t326 + t240 * t278 - t382 * t87 + (-t172 * t611 - t664) * qJD(4) + t437;
t703 = t28 * t407;
t399 = t407 * rSges(5,3);
t59 = t176 * t382 - t278 * t325 + t446;
t696 = t407 * t59;
t694 = t66 * t240;
t693 = t67 * t241;
t692 = t68 * t240;
t691 = t69 * t241;
t251 = t599 + t760;
t346 = rSges(5,1) * t406 + rSges(5,2) * t408;
t583 = t346 * t614;
t536 = t391 - t583;
t563 = -t347 - t721;
t543 = t242 + t563;
t102 = (-t251 + t543) * qJD(1) + t536;
t670 = t102 * t407;
t252 = rSges(5,1) * t654 - rSges(5,2) * t660 + t399;
t588 = t346 * t616;
t103 = -t588 - t392 + (t252 + t542) * qJD(1);
t300 = t346 * t409;
t669 = t103 * t300;
t663 = t340 * t407;
t662 = t340 * t409;
t647 = -t194 - t336;
t646 = -t312 * t803 + t313 * t802;
t645 = -t314 * t803 + t315 * t802;
t644 = -t407 * t245 - t249 * t654;
t643 = t407 * t246 + t250 * t654;
t642 = t634 * t407;
t641 = t634 * t409;
t635 = t407 * t307 + t409 * t309;
t633 = -t278 - t351;
t632 = -t525 * t408 - t279;
t630 = -(-pkin(5) * t416 + qJ(6) * t418) * t406 - t328;
t629 = -t342 + t345;
t628 = t344 + t509;
t627 = rSges(5,2) * t589 + rSges(5,3) * t617;
t373 = t407 * t713;
t625 = rSges(4,3) * t617 + qJD(1) * t373;
t624 = t372 + t392;
t623 = t409 * rSges(4,3) + t373;
t620 = qJD(1) * t341;
t132 = -t407 * t493 - t662;
t606 = t132 * qJD(1);
t600 = t407 * t715;
t591 = -t351 - t634;
t590 = t356 + t624;
t576 = -pkin(2) - t715;
t571 = t617 / 0.2e1;
t570 = qJD(4) * t406 / 0.2e1;
t569 = -t616 / 0.2e1;
t568 = t616 / 0.2e1;
t566 = t614 / 0.2e1;
t561 = -t405 - t719;
t535 = -t351 * t614 + t391;
t436 = (-t307 + t543) * qJD(1) + t535;
t44 = -t326 * t634 + t436 - t828;
t559 = t44 * t634;
t217 = t250 * t657;
t555 = t246 * t409 - t217;
t554 = -t245 + t666;
t551 = t364 + t410 + t309;
t538 = qJD(5) * t570;
t537 = -qJD(1) * t308 - t352 * t616;
t348 = rSges(3,1) * t407 + rSges(3,2) * t409;
t532 = rSges(5,1) * t408 - rSges(5,2) * t406;
t504 = -t102 * t409 - t103 * t407;
t499 = t172 * t409 - t176 * t407;
t121 = t247 * t408 + t249 * t406;
t122 = t248 * t408 + t250 * t406;
t496 = t251 * t407 + t252 * t409;
t299 = t346 * t407;
t475 = qJD(1) * t306 - t352 * t614;
t474 = -pkin(4) * t587 + t357 + t391;
t99 = -t248 * t661 - t555;
t472 = (t407 * t99 - t409 * t98) * qJD(4);
t471 = qJD(4) * t344;
t470 = qJD(4) * t342;
t100 = -t247 * t660 - t644;
t101 = -t248 * t660 + t643;
t468 = (-t100 * t409 + t101 * t407) * qJD(4);
t467 = -t352 - t712;
t466 = -t352 - t710;
t459 = t37 * t716 + t5 * t651;
t454 = t535 - t740 + t763;
t453 = -t44 * t651 + t45 * t649;
t452 = -t37 * t649 + t559;
t451 = t247 * t409 - t248 * t407;
t438 = (-t406 * t628 + t408 * t629) * qJD(1);
t151 = rSges(5,1) * t463 - rSges(5,2) * t585 + t627;
t152 = -qJD(4) * t299 + (t409 * t532 + t399) * qJD(1);
t431 = t151 * t409 + t152 * t407 + (t251 * t409 - t252 * t407) * qJD(1);
t58 = t436 + t790;
t60 = t172 * t325 + t176 * t326 + t577;
t428 = t60 * t499 + (t407 * t58 - t409 * t59) * t278;
t148 = qJD(1) * t248 - t407 * t470;
t150 = qJD(1) * t250 - t407 * t471;
t427 = qJD(1) * t245 - qJD(4) * t121 - t148 * t406 + t150 * t408;
t147 = -t409 * t470 + (-t407 * t509 + t675) * qJD(1);
t149 = -t409 * t471 + (-t345 * t407 + t682) * qJD(1);
t426 = -qJD(4) * t122 - t147 * t406 + t149 * t408 + t621;
t333 = t509 * qJD(4);
t334 = t345 * qJD(4);
t425 = qJD(1) * t340 - t333 * t406 + t334 * t408 + (-t342 * t408 - t344 * t406) * qJD(4);
t424 = t452 * t407 - t409 * t792;
t423 = -t406 * t735 + t451 * t408;
t335 = t532 * qJD(4);
t318 = t351 * t619;
t264 = t600 - t623;
t235 = t278 * t409;
t233 = t278 * t407;
t214 = -rSges(6,1) * t314 - rSges(6,2) * t315;
t209 = -rSges(6,1) * t312 - rSges(6,2) * t313;
t180 = qJD(1) * t793 - t392;
t179 = t391 + (-t264 + t563) * qJD(1);
t133 = -t409 * t493 + t663;
t125 = t133 * qJD(1);
t124 = (-qJD(1) * t490 - t298) * qJD(1) + t544;
t123 = qJD(1) * (-qJD(1) * t600 + t625) + t492;
t120 = qJD(4) * t496 + qJD(2);
t71 = -t335 * t614 + (-t152 + t588 + t640) * qJD(1) + t544;
t70 = -t335 * t616 + (t151 - t583) * qJD(1) + t477;
t65 = t425 * t407 - t409 * t736;
t64 = t407 * t736 + t425 * t409;
t63 = -qJD(4) * t497 + t147 * t408 + t149 * t406;
t62 = -qJD(4) * t498 + t148 * t408 + t150 * t406;
t61 = t431 * qJD(4);
t47 = t125 + t468;
t46 = t472 + t606;
t20 = t172 * t241 - t176 * t240 - t309 * t575 + t325 * t87 + t326 * t85 + t594;
t7 = -qJD(6) * t141 - t716 * t382 - t648 * t326 + t634 * t240 + (-t611 * t651 - t664) * qJD(4) + t437;
t6 = qJD(6) * t143 + t717 * t382 - t648 * t325 - t634 * t241 + (t611 * t649 + t478) * qJD(4) + t464;
t1 = [((t122 + t133) * t409 + (t121 + t132) * t407) * t604 / 0.2e1 + m(3) * ((-t348 * t420 - t602) * t758 + (-t601 + (-0.2e1 * t556 - t410 + t758) * t420) * (-t348 - t721)) + (-(-qJD(1) * t721 + t454 - t58 + t790) * t59 + t28 * (-t530 + t541) + t58 * (-t531 + t590) + t27 * (t551 + t176) + t59 * (t474 + t596) + (t58 * t615 * t722 - t27 * t415 + t28 * t466) * t407 + ((-t417 * t59 - t419 * t58) * pkin(1) + (t58 * (-t405 + t466) - t59 * t415) * t409 + (t406 * t722 + t561) * t696) * qJD(1)) * m(6) + t691 / 0.2e1 + t692 / 0.2e1 + t693 / 0.2e1 + t825 * t731 + (t824 + t778) * t730 + t778 * t729 + (t7 * (t541 + t795) + t6 * (t551 + t649) + (-t6 * t415 + t467 * t7) * t407 + t558 * t326 + (t474 + t773 + (-t385 + (t406 * t723 + t561) * t407) * qJD(1) - t454 + t828) * t45 + (t723 * t829 + t590 + t631 + t774 + (-t410 + (-t405 + t467) * t409 + t491) * qJD(1) + t827) * t44) * m(7) + t775 * t733 + t776 * t734 + (-(-t179 - t337 + t391 + (-t264 - t721) * qJD(1)) * t180 + t124 * (t407 * t576 + t394 + t623 - t721) + t179 * t392 + t123 * t793 + t180 * (t622 + t625) + ((-t179 * t419 - t180 * t417) * pkin(1) + t179 * (t576 + t713) * t409 + (t179 * (-rSges(4,3) - qJ(3)) + t180 * t576) * t407) * qJD(1)) * m(4) - (t47 + t62 + t65) * t614 / 0.2e1 + t743 + (-qJD(4) * t493 + t333 * t408 + t334 * t406) * qJD(1) + t694 / 0.2e1 + (t71 * (-t760 + t846) + t70 * (t252 + t410 + t553) + (t346 * t670 - t669) * qJD(4) + (t624 + (-t399 - t410 + (-t405 - t532) * t409) * qJD(1)) * t102 + (t102 - t536 - t763 + t391 + t627 + (t251 + t721 + t846) * qJD(1)) * t103) * m(5) + t707 / 0.2e1 - t708 / 0.2e1 + t705 / 0.2e1 - t706 / 0.2e1 + (t406 * t830 + t798 + t801 + t818) * t325 * t728 + (t125 + ((t99 - t217 + (t246 + t667) * t409 + t644) * t409 + t643 * t407) * qJD(4)) * t566 + (t63 + t64) * t568 + (t46 - t606 + ((t409 * t554 + t101 - t643) * t409 + (t407 * t554 + t100 + t555) * t407) * qJD(4)) * t569; m(5) * t61 + m(6) * t20 + m(7) * t5; 0.2e1 * (t6 * t724 + t7 * t726) * m(7) + 0.2e1 * (-t704 / 0.2e1 + t703 / 0.2e1) * m(6) + 0.2e1 * (t70 * t724 + t71 * t726) * m(5) + 0.2e1 * (t123 * t724 + t124 * t726) * m(4); ((-t614 * t663 - t620) * t409 + (t438 + (t409 * t662 + t423) * qJD(4)) * t407) * t566 + ((-t616 * t662 + t620) * t407 + (t438 + (t407 * t663 + t423) * qJD(4)) * t409) * t569 + qJD(1) * (t407 * t63 - t409 * t62 + (t121 * t407 + t122 * t409) * qJD(1)) / 0.2e1 - qJD(1) * ((t406 * t629 + t408 * t628) * qJD(1) + (t451 * t406 + t408 * t735) * qJD(4)) / 0.2e1 + t747 * t734 + t749 * t733 + ((t775 * t406 + t657 * t820) * qJD(5) + ((qJD(5) * t819 + t753) * t408 + t757) * t409 + (t314 * t762 + t315 * t761) * t382 + (-t314 * t767 + t315 * t765) * t326 + (t314 * t766 - t315 * t764) * t325) * t732 + (qJD(1) * t750 + t407 * t785 - t409 * t786) * t731 + (qJD(1) * t748 + t407 * t782 - t409 * t783) * t730 + ((t776 * t406 + t654 * t821) * qJD(5) + ((qJD(5) * t822 + t753) * t408 + t757) * t407 + (t312 * t762 + t313 * t761) * t382 + (-t312 * t767 + t313 * t765) * t326 + (t312 * t766 - t313 * t764) * t325) * t729 + ((t752 * qJD(5) - t826) * t408 + ((t416 * t762 + t418 * t761 + t812) * t382 + (-t416 * t767 + t418 * t765 - t835) * t326 + (t416 * t766 - t418 * t764 + t813) * t325 + t768 * qJD(5)) * t406) * t728 + (qJD(1) * t752 + t407 * t780 - t409 * t781) * t727 - t777 * t611 / 0.2e1 + t751 * t538 + (t5 * t635 + (qJD(1) * t560 + t7 * t591 + t784) * t409 + (qJD(1) * t559 + t6 * t591 + t459) * t407 - (t406 * t453 + t408 * t424) * qJD(5) + (-t632 * t325 + t641 * t382 + t407 * t759 + t591 * t617 - t537) * t45 + (t717 * t409 + (-t309 - t649) * t619 - t581 + t641 * t326 + t642 * t325 + t744) * t37 + (-t632 * t326 - t642 * t382 + t409 * t759 + t318 - t475) * t44) * m(7) + (-t58 * (t233 * t382 - t280 * t326 + t475) - t59 * (-t235 * t382 - t280 * t325 + t537) - ((-t172 * t58 + t176 * t59) * t406 + t428 * t408) * qJD(5) + t58 * t318 + t20 * t635 + (t20 * t176 + t58 * t647 + (qJD(1) * t59 + t28) * t633) * t409 + (qJD(1) * t278 * t58 + t20 * t172 + t27 * t633 + t59 * t647) * t407 + (t233 * t325 + t235 * t326 + (qJD(1) * t172 + t85) * t409 + (t87 + (-t176 - t309) * qJD(1)) * t407 + t744) * t60) * m(6) + (-(t102 * t299 - t669) * qJD(1) - (t120 * (-t299 * t407 - t300 * t409) + t504 * t532) * qJD(4) + t61 * t496 + t120 * t431 + t504 * t335 + (-t70 * t407 - t71 * t409 + (-t103 * t409 + t670) * qJD(1)) * t346) * m(5) + (qJD(1) * t64 + (-(t407 * t737 + t427 * t409) * t409 + (t407 * t738 + t426 * t409) * t407 + (t100 * t407 + t101 * t409) * qJD(1)) * t789 + t788) * t726 + (qJD(1) * t65 + (-(t427 * t407 - t409 * t737) * t409 + (t426 * t407 - t409 * t738) * t407 + (t98 * t407 + t99 * t409) * qJD(1)) * t789 + t787) * t724 + (t472 + t46 + t779) * t619 / 0.2e1 + (t468 + t47 + t778) * t571 - (t407 * t779 + t409 * t778) * t610 / 0.2e1; (t406 * t748 - t408 * t776) * t734 + (t406 * t750 - t408 * t775) * t733 + (t314 * t756 + t315 * t755 - t409 * t754) * t732 + ((qJD(4) * t750 - t825) * t408 + (-qJD(1) * t749 + qJD(4) * t775 + t407 * t786 + t409 * t785) * t406) * t731 + ((qJD(4) * t748 - t824) * t408 + (-qJD(1) * t747 + qJD(4) * t776 + t407 * t783 + t409 * t782) * t406) * t730 + (t312 * t756 + t313 * t755 - t407 * t754) * t729 + (t809 * t408 + (t416 * t756 + t418 * t755) * t406) * t728 + ((qJD(4) * t752 - t823) * t408 + (-qJD(1) * t751 + qJD(4) * t768 + t407 * t781 + t409 * t780) * t406) * t727 - (t693 + t694 + t707 - t708 + t691 + t692 + t705 - t706 + t743) * t408 / 0.2e1 + t787 * t661 / 0.2e1 + t788 * t660 / 0.2e1 + t777 * t570 + (t406 * t752 - t408 * t768) * t538 + ((qJD(4) * t424 + t44 * t716 - t45 * t717 - t6 * t649 + t651 * t7) * t408 + (t453 * qJD(4) + (qJD(1) * t452 - t45 * t648 - t6 * t634 + t459) * t409 + (qJD(1) * t792 - t37 * t717 + t44 * t648 + t7 * t634 - t784) * t407) * t406 - (t313 * t45 + t315 * t44 + t37 * t658) * qJD(6) - (-t44 * t646 + t45 * t645) * t382 - (t37 * t645 + t44 * t630) * t326 - (t37 * t646 + t45 * t630) * t325) * m(7) + (-t58 * (-t209 * t382 - t326 * t329) - t59 * (t214 * t382 - t325 * t329) - t60 * (t209 * t325 + t214 * t326) + (qJD(4) * t428 + t28 * t172 - t27 * t176 + t58 * t87 - t59 * t85) * t408 + (t58 * (-qJD(4) * t172 + t194 * t407) + t59 * (qJD(4) * t176 - t194 * t409) + t20 * t499 + t60 * (-t172 * t619 - t176 * t617 - t407 * t85 + t409 * t87) + (-t704 + t703 + (t409 * t58 + t696) * qJD(1)) * t278) * t406) * m(6) + t778 * (t408 * t566 - t589 / 0.2e1) + t779 * (t406 * t571 + t408 * t568); (t312 * t6 + t314 * t7 + t5 * t659 + (-t314 * t382 + t325 * t659 + t143) * t45 + (t312 * t382 + t326 * t659 - t141) * t44 + (-t312 * t325 - t314 * t326 + t460) * t37) * m(7);];
tauc  = t1(:);
