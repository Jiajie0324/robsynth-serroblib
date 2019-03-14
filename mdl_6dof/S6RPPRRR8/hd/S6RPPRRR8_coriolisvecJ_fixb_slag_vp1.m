% Calculate vector of centrifugal and Coriolis load on the joints for
% S6RPPRRR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6,theta3]';
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
% Datum: 2019-03-09 02:36
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RPPRRR8_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR8_coriolisvecJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR8_coriolisvecJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRRR8_coriolisvecJ_fixb_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRRR8_coriolisvecJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPPRRR8_coriolisvecJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPPRRR8_coriolisvecJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:35:25
% EndTime: 2019-03-09 02:36:11
% DurationCPUTime: 38.68s
% Computational Cost: add. (38430->1264), mult. (44346->1680), div. (0->0), fcn. (41503->10), ass. (0->585)
t466 = pkin(10) + qJ(4);
t448 = sin(t466);
t474 = cos(qJ(5));
t475 = cos(qJ(1));
t708 = t474 * t475;
t472 = sin(qJ(5));
t473 = sin(qJ(1));
t710 = t473 * t472;
t368 = -t448 * t710 + t708;
t709 = t473 * t474;
t713 = t472 * t475;
t369 = t448 * t709 + t713;
t449 = cos(t466);
t721 = t449 * t473;
t209 = Icges(6,5) * t369 + Icges(6,6) * t368 - Icges(6,3) * t721;
t370 = t448 * t713 + t709;
t371 = t448 * t708 - t710;
t720 = t449 * t475;
t211 = -Icges(6,5) * t371 + Icges(6,6) * t370 + Icges(6,3) * t720;
t346 = Icges(6,4) * t371;
t214 = Icges(6,2) * t370 + Icges(6,6) * t720 - t346;
t345 = Icges(6,4) * t370;
t216 = Icges(6,1) * t371 - Icges(6,5) * t720 - t345;
t545 = -t214 * t370 - t216 * t371;
t748 = Icges(6,4) * t369;
t212 = Icges(6,2) * t368 - Icges(6,6) * t721 + t748;
t344 = Icges(6,4) * t368;
t215 = Icges(6,1) * t369 - Icges(6,5) * t721 + t344;
t705 = t368 * t212 + t369 * t215;
t852 = t545 + t705 + (-t209 * t473 - t211 * t475) * t449;
t468 = qJ(5) + qJ(6);
t454 = sin(t468);
t711 = t473 * t454;
t455 = cos(t468);
t716 = t455 * t475;
t321 = -t448 * t711 + t716;
t717 = t455 * t473;
t718 = t454 * t475;
t322 = t448 * t717 + t718;
t169 = Icges(7,5) * t322 + Icges(7,6) * t321 - Icges(7,3) * t721;
t323 = t448 * t718 + t717;
t324 = t448 * t716 - t711;
t171 = -Icges(7,5) * t324 + Icges(7,6) * t323 + Icges(7,3) * t720;
t315 = Icges(7,4) * t324;
t174 = Icges(7,2) * t323 + Icges(7,6) * t720 - t315;
t314 = Icges(7,4) * t323;
t176 = Icges(7,1) * t324 - Icges(7,5) * t720 - t314;
t548 = -t174 * t323 - t176 * t324;
t745 = Icges(7,4) * t322;
t172 = Icges(7,2) * t321 - Icges(7,6) * t721 + t745;
t313 = Icges(7,4) * t321;
t175 = Icges(7,1) * t322 - Icges(7,5) * t721 + t313;
t706 = t321 * t172 + t322 * t175;
t851 = t548 + t706 + (-t169 * t473 - t171 * t475) * t449;
t552 = Icges(6,5) * t474 - Icges(6,6) * t472;
t290 = Icges(6,3) * t448 + t449 * t552;
t746 = Icges(6,4) * t474;
t555 = -Icges(6,2) * t472 + t746;
t292 = Icges(6,6) * t448 + t449 * t555;
t747 = Icges(6,4) * t472;
t558 = Icges(6,1) * t474 - t747;
t294 = Icges(6,5) * t448 + t449 * t558;
t115 = t290 * t720 + t292 * t370 - t294 * t371;
t450 = qJD(4) * t475;
t657 = qJD(5) * t473;
t384 = -t449 * t657 + t450;
t74 = t209 * t720 + t370 * t212 - t371 * t215;
t818 = qJD(5) * t448 + qJD(1);
t850 = -t115 * t818 - t384 * t74;
t551 = Icges(7,5) * t455 - Icges(7,6) * t454;
t275 = Icges(7,3) * t448 + t449 * t551;
t743 = Icges(7,4) * t455;
t554 = -Icges(7,2) * t454 + t743;
t277 = Icges(7,6) * t448 + t449 * t554;
t744 = Icges(7,4) * t454;
t557 = Icges(7,1) * t455 - t744;
t279 = Icges(7,5) * t448 + t449 * t557;
t101 = t275 * t720 + t277 * t323 - t279 * t324;
t467 = qJD(5) + qJD(6);
t583 = t467 * t721;
t299 = t450 - t583;
t380 = qJD(6) * t448 + t818;
t68 = t169 * t720 + t323 * t172 - t324 * t175;
t849 = -t101 * t380 - t299 * t68;
t544 = t214 * t472 + t216 * t474;
t87 = t211 * t448 - t449 * t544;
t547 = t174 * t454 + t176 * t455;
t71 = t171 * t448 - t449 * t547;
t67 = -t171 * t721 + t321 * t174 - t176 * t322;
t73 = -t211 * t721 + t368 * t214 - t216 * t369;
t578 = rSges(6,1) * t371 - rSges(6,2) * t370;
t220 = rSges(6,3) * t720 - t578;
t842 = t220 * t818;
t614 = -t450 / 0.2e1;
t664 = qJD(1) * t473;
t619 = -t664 / 0.2e1;
t841 = t448 * t614 + t449 * t619;
t660 = qJD(4) * t473;
t615 = t660 / 0.2e1;
t663 = qJD(1) * t475;
t631 = t449 * t663;
t840 = t448 * t615 - t631 / 0.2e1;
t625 = t449 * t660;
t839 = t448 * t663 + t625;
t626 = t448 * t450;
t838 = t449 * t664 + t626;
t420 = Icges(5,4) * t721;
t723 = t448 * t473;
t742 = Icges(5,5) * t475;
t304 = Icges(5,1) * t723 + t420 + t742;
t749 = Icges(5,4) * t449;
t559 = Icges(5,1) * t448 + t749;
t305 = -Icges(5,5) * t473 + t475 * t559;
t389 = -Icges(5,2) * t448 + t749;
t340 = t389 * t475;
t499 = t473 * (t305 + t340) - t475 * (-Icges(5,2) * t723 + t304 + t420);
t750 = Icges(5,4) * t448;
t556 = Icges(5,2) * t449 + t750;
t302 = Icges(5,6) * t475 + t473 * t556;
t303 = -Icges(5,6) * t473 + t475 * t556;
t391 = Icges(5,1) * t449 - t750;
t342 = t391 * t473;
t343 = t391 * t475;
t500 = t473 * (t303 - t343) - t475 * (t302 - t342);
t837 = -t500 * t448 + t499 * t449;
t780 = pkin(5) * t472;
t635 = -pkin(1) - t780;
t836 = t635 * qJD(1);
t677 = t389 + t559;
t678 = -t556 + t391;
t835 = (t448 * t677 - t449 * t678) * qJD(1);
t575 = rSges(7,1) * t324 - rSges(7,2) * t323;
t180 = rSges(7,3) * t720 - t575;
t425 = pkin(8) * t720;
t722 = t448 * t475;
t357 = pkin(4) * t722 - t425;
t445 = pkin(5) * t474 + pkin(4);
t476 = -pkin(9) - pkin(8);
t719 = t449 * t476;
t676 = t445 * t722 + t475 * t719;
t197 = pkin(5) * t710 + t357 - t676;
t574 = rSges(7,1) * t455 - rSges(7,2) * t454;
t281 = rSges(7,3) * t448 + t449 * t574;
t385 = t449 * t467;
t298 = t385 * t475 + t660;
t656 = qJD(5) * t475;
t383 = t449 * t656 + t660;
t777 = pkin(8) + t476;
t778 = pkin(4) - t445;
t807 = t448 * t777 + t449 * t778;
t834 = t180 * t380 + t197 * t818 - t281 * t298 + t383 * t807;
t831 = 0.2e1 * qJD(4);
t397 = pkin(4) * t449 + pkin(8) * t448;
t363 = t397 * t660;
t471 = -pkin(7) - qJ(3);
t707 = qJ(3) + t471;
t469 = sin(pkin(10));
t714 = t469 * t475;
t360 = pkin(3) * t714 + t473 * t707;
t457 = t475 * qJ(2);
t415 = pkin(1) * t473 - t457;
t735 = qJ(3) * t473;
t610 = -t415 - t735;
t589 = t360 + t610;
t451 = qJD(3) * t475;
t452 = qJD(2) * t473;
t670 = t451 + t452;
t492 = t363 + (t357 + t589) * qJD(1) + t670;
t62 = t492 - t834;
t692 = -t807 + t281;
t830 = t62 * t692;
t683 = t322 * rSges(7,1) + t321 * rSges(7,2);
t178 = -rSges(7,3) * t721 + t683;
t424 = pkin(4) * t723;
t355 = -pkin(8) * t721 + t424;
t439 = pkin(5) * t713;
t642 = t445 * t723 + t473 * t719 + t439;
t196 = -t355 + t642;
t418 = t475 * pkin(1) + t473 * qJ(2);
t715 = t469 * t473;
t435 = pkin(3) * t715;
t638 = t435 + t418;
t734 = qJ(3) * t475;
t588 = -t475 * t707 + t638 + t734;
t453 = qJD(2) * t475;
t603 = qJD(3) * t473 - t453;
t486 = (t355 + t588) * qJD(1) - t397 * t450 + t603;
t63 = t178 * t380 + t196 * t818 - t281 * t299 + t384 * t807 + t486;
t829 = t63 * t692;
t100 = -t275 * t721 + t277 * t321 + t279 * t322;
t828 = t100 * t380 + t298 * t67;
t827 = t448 * t778;
t289 = Icges(6,3) * t449 - t448 * t552;
t541 = t292 * t472 - t294 * t474;
t546 = t212 * t472 - t215 * t474;
t478 = t383 * (-t290 * t475 + t544) + t384 * (t290 * t473 + t546) + t818 * (t289 + t541);
t826 = t478 * t449;
t538 = t303 * t449 + t305 * t448;
t823 = t538 * t475;
t114 = -t290 * t721 + t292 * t368 + t294 * t369;
t822 = t114 * t818 + t383 * t73;
t775 = rSges(4,2) * cos(pkin(10));
t817 = -rSges(4,1) * t715 - t475 * rSges(4,3) - t473 * t775;
t821 = t418 + t734 - t817;
t611 = -rSges(3,2) * t475 + t473 * rSges(3,3);
t820 = t418 + t611;
t577 = rSges(6,1) * t474 - rSges(6,2) * t472;
t296 = rSges(6,3) * t448 + t449 * t577;
t665 = qJD(1) * t448;
t598 = qJD(5) + t665;
t624 = t449 * t450;
t816 = t473 * t598 - t624;
t604 = t467 + t665;
t815 = t473 * t604 - t624;
t814 = t475 * t604 + t625;
t166 = t303 * t448 - t305 * t449;
t200 = qJD(1) * t302 - qJD(4) * t340;
t202 = -qJD(4) * t343 + (t473 * t559 + t742) * qJD(1);
t553 = Icges(5,5) * t448 + Icges(5,6) * t449;
t301 = -Icges(5,3) * t473 + t475 * t553;
t667 = qJD(1) * t301;
t813 = qJD(4) * t166 + t200 * t449 + t202 * t448 + t667;
t374 = t556 * qJD(4);
t375 = t559 * qJD(4);
t387 = Icges(5,5) * t449 - Icges(5,6) * t448;
t812 = qJD(1) * t387 + qJD(4) * (t389 * t448 - t391 * t449) + t374 * t449 + t375 * t448;
t201 = qJD(1) * t303 + t389 * t660;
t203 = qJD(1) * t305 + qJD(4) * t342;
t539 = t302 * t448 - t304 * t449;
t300 = Icges(5,3) * t475 + t473 * t553;
t668 = qJD(1) * t300;
t811 = qJD(4) * t539 - t201 * t449 - t203 * t448 + t668;
t769 = pkin(5) * qJD(5);
t648 = t472 * t769;
t601 = t448 * t648;
t639 = pkin(4) * t624 + pkin(8) * t838;
t647 = t474 * t769;
t724 = t445 * t449;
t112 = t473 * t647 + (t601 + (t448 * t476 - t724) * qJD(4)) * t475 + (t439 + (t719 - t827) * t473) * qJD(1) + t639;
t627 = t448 * t660;
t640 = pkin(4) * t839 + pkin(8) * t627;
t509 = pkin(8) * t631 - t640;
t532 = t818 * t472;
t596 = t445 * t839 + t475 * t647 + t476 * t631;
t659 = qJD(4) * t476;
t113 = (-pkin(5) * t532 - t448 * t659) * t473 + t509 + t596;
t623 = t448 * t657;
t401 = qJD(4) * t623;
t602 = t475 * t467;
t194 = qJD(6) * t627 + t401 + (-t449 * t602 - t660) * qJD(1);
t330 = t448 * t602;
t652 = qJD(1) * qJD(4);
t440 = t475 * t652;
t195 = -qJD(1) * t583 - qJD(4) * t330 + t440;
t282 = -qJD(1) * t383 + t401;
t283 = -qJD(5) * t838 + t440;
t235 = qJD(1) * t424 - t639;
t484 = t235 * t450 + (t509 * t473 + (-t355 * t475 + t357 * t473) * qJD(1)) * qJD(4);
t605 = t448 * t467 + qJD(1);
t535 = t475 * t605;
t145 = -t454 * t815 + t455 * t535;
t146 = t454 * t535 + t455 * t815;
t576 = rSges(7,1) * t146 + rSges(7,2) * t145;
t96 = -rSges(7,3) * t838 + t576;
t534 = t605 * t473;
t147 = -t454 * t814 - t455 * t534;
t148 = -t454 * t534 + t455 * t814;
t645 = t148 * rSges(7,1) + t147 * rSges(7,2) + rSges(7,3) * t627;
t97 = -rSges(7,3) * t631 + t645;
t11 = t112 * t384 - t113 * t383 - t178 * t195 + t180 * t194 - t196 * t283 + t197 * t282 - t298 * t97 + t299 * t96 + t484;
t586 = -t355 * t660 - t357 * t450;
t54 = -t178 * t298 + t180 * t299 - t196 * t383 + t197 * t384 + t586;
t698 = t180 + t197;
t753 = t112 + t96;
t810 = t11 * t698 + t54 * t753;
t274 = Icges(7,3) * t449 - t448 * t551;
t542 = t277 * t454 - t279 * t455;
t549 = t172 * t454 - t175 * t455;
t479 = t298 * (-t275 * t475 + t547) + t299 * (t275 * t473 + t549) + t380 * (t274 + t542);
t809 = -(t169 * t299 + t171 * t298 + t275 * t380) * t448 + t449 * t479;
t311 = (-Icges(7,2) * t455 - t744) * t449;
t490 = t298 * (Icges(7,2) * t324 - t176 + t314) + t299 * (-Icges(7,2) * t322 + t175 + t313) + t380 * (t279 + t311);
t312 = (-Icges(7,1) * t454 - t743) * t449;
t806 = t298 * (-Icges(7,1) * t323 + t174 - t315) + t299 * (-Icges(7,1) * t321 + t172 + t745) + t380 * (t277 - t312);
t338 = (-Icges(6,2) * t474 - t747) * t449;
t488 = t383 * (Icges(6,2) * t371 - t216 + t345) + t384 * (-Icges(6,2) * t369 + t215 + t344) + t818 * (t294 + t338);
t341 = (-Icges(6,1) * t472 - t746) * t449;
t805 = t383 * (-Icges(6,1) * t370 + t214 - t346) + t384 * (-Icges(6,1) * t368 + t212 + t748) + t818 * (t292 - t341);
t804 = t194 / 0.2e1;
t803 = t195 / 0.2e1;
t802 = t282 / 0.2e1;
t801 = t283 / 0.2e1;
t800 = -t298 / 0.2e1;
t799 = t298 / 0.2e1;
t798 = -t299 / 0.2e1;
t797 = t299 / 0.2e1;
t372 = qJD(4) * t385;
t796 = t372 / 0.2e1;
t795 = -t380 / 0.2e1;
t794 = t380 / 0.2e1;
t793 = -t383 / 0.2e1;
t792 = t383 / 0.2e1;
t791 = -t384 / 0.2e1;
t790 = t384 / 0.2e1;
t789 = -t818 / 0.2e1;
t788 = t818 / 0.2e1;
t787 = t448 / 0.2e1;
t786 = t473 / 0.2e1;
t785 = -t475 / 0.2e1;
t783 = rSges(3,2) - pkin(1);
t782 = pkin(3) * t469;
t781 = pkin(4) * t448;
t779 = -pkin(1) + t471;
t774 = rSges(3,3) * t475;
t772 = rSges(6,3) * t449;
t770 = rSges(7,3) * t449;
t511 = t627 - t631;
t91 = Icges(7,5) * t148 + Icges(7,6) * t147 + Icges(7,3) * t511;
t93 = Icges(7,4) * t148 + Icges(7,2) * t147 + Icges(7,6) * t511;
t95 = Icges(7,1) * t148 + Icges(7,4) * t147 + Icges(7,5) * t511;
t21 = (qJD(4) * t549 + t91) * t448 + (qJD(4) * t169 + (-t172 * t467 + t95) * t455 + (-t175 * t467 - t93) * t454) * t449;
t768 = t21 * t299;
t90 = Icges(7,5) * t146 + Icges(7,6) * t145 - Icges(7,3) * t838;
t92 = Icges(7,4) * t146 + Icges(7,2) * t145 - Icges(7,6) * t838;
t94 = Icges(7,1) * t146 + Icges(7,4) * t145 - Icges(7,5) * t838;
t22 = (qJD(4) * t547 + t90) * t448 + (qJD(4) * t171 + (-t174 * t467 + t94) * t455 + (t176 * t467 - t92) * t454) * t449;
t767 = t22 * t298;
t191 = -t818 * t709 + (-t475 * t598 - t625) * t472;
t661 = qJD(4) * t449;
t192 = t598 * t708 + (t474 * t661 - t532) * t473;
t105 = Icges(6,5) * t192 + Icges(6,6) * t191 + Icges(6,3) * t511;
t107 = Icges(6,4) * t192 + Icges(6,2) * t191 + Icges(6,6) * t511;
t109 = Icges(6,1) * t192 + Icges(6,4) * t191 + Icges(6,5) * t511;
t27 = (qJD(4) * t546 + t105) * t448 + (qJD(4) * t209 - t107 * t472 + t109 * t474 + (-t212 * t474 - t215 * t472) * qJD(5)) * t449;
t766 = t27 * t384;
t533 = t475 * t818;
t189 = -t472 * t816 + t474 * t533;
t190 = t472 * t533 + t474 * t816;
t104 = Icges(6,5) * t190 + Icges(6,6) * t189 - Icges(6,3) * t838;
t106 = Icges(6,4) * t190 + Icges(6,2) * t189 - Icges(6,6) * t838;
t108 = Icges(6,1) * t190 + Icges(6,4) * t189 - Icges(6,5) * t838;
t28 = (qJD(4) * t544 + t104) * t448 + (qJD(4) * t211 - t106 * t472 + t108 * t474 + (-t214 * t474 + t216 * t472) * qJD(5)) * t449;
t765 = t28 * t383;
t463 = t475 * rSges(5,3);
t762 = t63 * t196;
t70 = t169 * t448 - t449 * t549;
t761 = t70 * t194;
t760 = t71 * t195;
t680 = t369 * rSges(6,1) + t368 * rSges(6,2);
t218 = -rSges(6,3) * t721 + t680;
t80 = t218 * t818 - t296 * t384 + t486;
t759 = t80 * t296;
t86 = t209 * t448 - t449 * t546;
t758 = t86 * t282;
t757 = t87 * t283;
t662 = qJD(4) * t448;
t646 = rSges(5,2) * t662;
t529 = -rSges(5,3) * qJD(1) - t646;
t641 = rSges(5,1) * t839 + rSges(5,2) * t631;
t207 = t473 * t529 + t641;
t393 = rSges(5,1) * t449 - rSges(5,2) * t448;
t359 = t393 * t660;
t580 = rSges(5,1) * t448 + rSges(5,2) * t449;
t378 = t580 * qJD(4);
t653 = qJD(1) * qJD(3);
t654 = qJD(1) * qJD(2);
t443 = qJ(2) * t663;
t672 = t443 + t452;
t679 = qJD(1) * (-pkin(1) * t664 + t672) + t473 * t654;
t733 = qJ(3) * qJD(1) ^ 2;
t516 = -t473 * t733 + 0.2e1 * t475 * t653 + t679;
t629 = qJ(3) * t664;
t630 = t469 * t663;
t674 = pkin(3) * t630 + t471 * t664;
t508 = qJD(1) * (t629 + t674) + t516;
t98 = t378 * t450 + (t207 + t359) * qJD(1) + t508;
t756 = t98 * t475;
t351 = t393 * t475;
t206 = -qJD(4) * t351 + (t473 * t580 + t463) * qJD(1);
t442 = t475 * t654;
t531 = -0.2e1 * t473 * t653 - t475 * t733 + t442;
t628 = t393 * t450;
t376 = qJD(1) * t418 - t453;
t432 = t471 * t663;
t682 = t432 - (t435 - t734) * qJD(1) - t376;
t99 = -t378 * t660 + (-t206 + t628 + t682) * qJD(1) + t531;
t755 = t99 * t473;
t116 = t275 * t448 - t449 * t542;
t310 = (-Icges(7,5) * t454 - Icges(7,6) * t455) * t449;
t154 = qJD(4) * t274 + t310 * t467;
t276 = Icges(7,6) * t449 - t448 * t554;
t155 = qJD(4) * t276 + t311 * t467;
t278 = Icges(7,5) * t449 - t448 * t557;
t156 = qJD(4) * t278 + t312 * t467;
t51 = (qJD(4) * t542 + t154) * t448 + (qJD(4) * t275 + (-t277 * t467 + t156) * t455 + (-t279 * t467 - t155) * t454) * t449;
t754 = t116 * t372 + t51 * t380;
t752 = -t113 - t97;
t118 = t290 * t448 - t449 * t541;
t335 = (-Icges(6,5) * t472 - Icges(6,6) * t474) * t449;
t186 = qJD(4) * t289 + qJD(5) * t335;
t291 = Icges(6,6) * t449 - t448 * t555;
t187 = qJD(4) * t291 + qJD(5) * t338;
t293 = Icges(6,5) * t449 - t448 * t558;
t188 = qJD(4) * t293 + qJD(5) * t341;
t53 = (qJD(4) * t541 + t186) * t448 + (qJD(4) * t290 - t187 * t472 + t188 * t474 + (-t292 * t474 - t294 * t472) * qJD(5)) * t449;
t658 = qJD(5) * t449;
t620 = qJD(4) * t658;
t751 = t118 * t620 + t53 * t818;
t396 = pkin(8) * t449 - t781;
t379 = qJD(4) * t396;
t726 = t379 * t475;
t725 = t387 * t475;
t336 = t473 * t387;
t712 = t473 * t397;
t280 = -t448 * t574 + t770;
t316 = (-rSges(7,1) * t454 - rSges(7,2) * t455) * t449;
t162 = qJD(4) * t280 + t316 * t467;
t268 = -t449 * t777 + t827;
t208 = qJD(4) * t268 - t449 * t648;
t704 = t162 + t208;
t699 = -t178 - t196;
t693 = -t218 - t355;
t681 = t473 * t379 + t397 * t663;
t649 = t475 * t775;
t675 = rSges(4,1) * t630 + qJD(1) * t649;
t673 = t432 + t453;
t671 = rSges(3,2) * t664 + rSges(3,3) * t663;
t669 = -qJD(1) * t415 + t452;
t666 = qJD(1) * t553;
t537 = t389 * t449 + t391 * t448;
t161 = t475 * t537 - t336;
t655 = t161 * qJD(1);
t651 = -rSges(4,3) - pkin(1) - qJ(3);
t650 = t449 * t780;
t644 = -t355 + t699;
t643 = t192 * rSges(6,1) + t191 * rSges(6,2) + rSges(6,3) * t627;
t122 = t475 * t300 + t302 * t721 + t304 * t723;
t123 = -t475 * t301 - t303 * t721 - t305 * t723;
t306 = rSges(5,1) * t723 + rSges(5,2) * t721 + t463;
t637 = t443 + t670;
t636 = t451 + t669;
t634 = t449 * (-rSges(6,3) - pkin(8));
t622 = -t721 / 0.2e1;
t621 = t720 / 0.2e1;
t617 = t661 / 0.2e1;
t616 = -t660 / 0.2e1;
t229 = rSges(7,1) * t321 - rSges(7,2) * t322;
t230 = rSges(7,1) * t323 + rSges(7,2) * t324;
t609 = -t229 * t298 + t299 * t230;
t608 = t380 * t229 - t299 * t316;
t607 = -t230 * t380 + t298 * t316;
t358 = t397 * t475;
t606 = qJD(1) * t358 + t396 * t660;
t600 = t162 * t721 + t178 * t661 + t281 * t631 + t448 * t97;
t597 = qJD(1) * t360 + t636;
t590 = qJD(5) * t617;
t587 = -t770 + t782;
t585 = -t358 * t450 - t660 * t712;
t584 = qJD(1) * t712 - t396 * t450;
t581 = rSges(4,1) * t469 + t775;
t579 = rSges(6,1) * t190 + rSges(6,2) * t189;
t111 = -rSges(6,3) * t631 + t643;
t295 = -t448 * t577 + t772;
t350 = (-rSges(6,1) * t472 - rSges(6,2) * t474) * t449;
t193 = qJD(4) * t295 + qJD(5) * t350;
t494 = t508 + (-t509 + t363) * qJD(1);
t46 = t111 * t818 - t193 * t384 - t282 * t296 + (t218 * t658 - t726) * qJD(4) + t494;
t110 = -rSges(6,3) * t838 + t579;
t485 = t379 * t660 + t397 * t440 + (-t235 + t682) * qJD(1) + t531;
t47 = -t110 * t818 + t193 * t383 - t220 * t620 + t283 * t296 + t485;
t573 = t46 * t473 + t47 * t475;
t66 = -t169 * t721 + t706;
t572 = t473 * t67 + t475 * t66;
t571 = t473 * t66 - t475 * t67;
t69 = t171 * t720 - t548;
t570 = t473 * t69 + t475 * t68;
t569 = t473 * t68 - t475 * t69;
t568 = t473 * t71 + t475 * t70;
t567 = t473 * t70 - t475 * t71;
t72 = -t209 * t721 + t705;
t566 = t473 * t73 + t475 * t72;
t565 = t473 * t72 - t475 * t73;
t75 = t211 * t720 - t545;
t564 = t473 * t75 + t475 * t74;
t563 = t473 * t74 - t475 * t75;
t562 = t473 * t87 + t475 * t86;
t561 = t473 * t86 - t475 * t87;
t560 = t637 + t674;
t461 = t473 * rSges(5,3);
t307 = t475 * t580 - t461;
t126 = t359 + (t307 + t589) * qJD(1) + t670;
t127 = -t628 + (t306 + t588) * qJD(1) + t603;
t550 = t126 * t473 - t127 * t475;
t543 = t218 * t475 + t220 * t473;
t540 = t302 * t449 + t304 * t448;
t518 = t54 * t196 - t830;
t515 = (t122 * t475 + t123 * t473) * qJD(4);
t286 = t473 * t300;
t124 = -t475 * t540 + t286;
t125 = -t301 * t473 + t823;
t514 = (t124 * t475 + t125 * t473) * qJD(4);
t167 = (-t306 * t473 - t307 * t475) * qJD(4);
t513 = -t772 + t781 + t782;
t512 = t580 + t782;
t506 = t209 * t384 + t211 * t383 + t290 * t818;
t505 = (Icges(7,5) * t321 - Icges(7,6) * t322) * t299 + (Icges(7,5) * t323 + Icges(7,6) * t324) * t298 + t310 * t380;
t504 = (Icges(6,5) * t368 - Icges(6,6) * t369) * t384 + (Icges(6,5) * t370 + Icges(6,6) * t371) * t383 + t335 * t818;
t498 = -qJD(1) * t538 - qJD(4) * t725 + t668;
t497 = qJD(1) * t540 + qJD(4) * t336 + t667;
t496 = t537 * qJD(1) - t553 * qJD(4);
t18 = t113 * t818 - t162 * t299 + t178 * t372 - t194 * t281 - t208 * t384 + t807 * t282 + t380 * t97 + (t196 * t658 - t726) * qJD(4) + t494;
t495 = t18 * (t448 * t178 + t281 * t721) + t54 * (t178 * t838 + t180 * t627);
t493 = qJD(1) * t357 + t363 + t597 - t629;
t14 = t145 * t172 + t146 * t175 - t169 * t838 + t323 * t93 - t324 * t95 + t720 * t91;
t15 = t145 * t174 - t146 * t176 - t171 * t838 + t323 * t92 - t324 * t94 + t720 * t90;
t16 = t147 * t172 + t148 * t175 + t169 * t511 + t321 * t93 + t322 * t95 - t721 * t91;
t17 = t147 * t174 - t148 * t176 + t171 * t511 + t321 * t92 + t322 * t94 - t721 * t90;
t35 = t299 * t66 + t828;
t36 = t298 * t69 - t849;
t39 = t116 * t380 + t298 * t71 + t299 * t70;
t43 = t145 * t277 + t146 * t279 + t154 * t720 + t155 * t323 - t156 * t324 - t275 * t838;
t44 = t147 * t277 + t148 * t279 - t154 * t721 + t155 * t321 + t156 * t322 + t275 * t511;
t5 = t101 * t372 + t14 * t299 + t15 * t298 + t194 * t68 + t195 * t69 + t380 * t43;
t6 = t100 * t372 + t16 * t299 + t17 * t298 + t194 * t66 + t195 * t67 + t380 * t44;
t483 = ((qJD(4) * t569 + t43) * t448 + (-qJD(1) * t570 + qJD(4) * t101 - t14 * t473 + t15 * t475) * t449) * t799 + (t490 * t323 + t324 * t806 + t505 * t720) * t800 + (t321 * t490 - t322 * t806 - t505 * t721) * t798 + ((qJD(4) * t571 + t44) * t448 + (-qJD(1) * t572 + qJD(4) * t100 - t16 * t473 + t17 * t475) * t449) * t797 + (t505 * t448 + (-t454 * t490 - t455 * t806) * t449) * t795 + t6 * t622 + (t100 * t448 - t449 * t571) * t804 + (t101 * t448 - t449 * t569) * t803 + t39 * t617 + t5 * t621 + (t116 * t448 - t449 * t567) * t796 + ((qJD(4) * t567 + t51) * t448 + (-qJD(1) * t568 + qJD(4) * t116 - t21 * t473 + t22 * t475) * t449) * t794 + (t754 + t760 + t761 + t767 + t768) * t787 + t841 * t36 + t840 * t35;
t79 = t296 * t383 + t492 - t842;
t83 = -t218 * t383 + t220 * t384 + t586;
t480 = t83 * t543 + (-t473 * t80 - t475 * t79) * t296;
t416 = rSges(3,2) * t473 + t774;
t365 = t397 * t664;
t349 = t393 * t473;
t348 = t370 * pkin(5);
t347 = t368 * pkin(5);
t331 = -rSges(4,3) * t473 + t475 * t581;
t329 = t467 * t723;
t320 = t475 * t357;
t285 = qJD(1) * t820 - t453;
t284 = t452 + (-t415 + t416) * qJD(1);
t265 = t296 * t475;
t264 = t296 * t473;
t263 = t294 * t475;
t262 = t294 * t473;
t261 = t292 * t475;
t260 = t292 * t473;
t257 = t281 * t475;
t256 = t281 * t473;
t255 = t281 * t720;
t253 = t279 * t475;
t252 = t279 * t473;
t251 = t277 * t475;
t250 = t277 * t473;
t247 = rSges(6,1) * t370 + rSges(6,2) * t371;
t246 = rSges(6,1) * t368 - rSges(6,2) * t369;
t238 = t442 + (-qJD(1) * t611 - t376) * qJD(1);
t237 = qJD(1) * t671 + t679;
t234 = t807 * t475;
t233 = t807 * t473;
t231 = t475 * t235;
t205 = qJD(1) * t821 + t603;
t204 = (t331 + t610) * qJD(1) + t670;
t160 = t473 * t537 + t725;
t158 = (qJD(1) * t817 - t376) * qJD(1) + t531;
t157 = qJD(1) * (-rSges(4,3) * t664 + t675) + t516;
t152 = t160 * qJD(1);
t136 = t162 * t720;
t85 = qJD(4) * t538 - t200 * t448 + t202 * t449;
t84 = -qJD(4) * t540 - t201 * t448 + t203 * t449;
t82 = -t473 * t812 + t496 * t475;
t81 = t496 * t473 + t475 * t812;
t65 = t514 - t655;
t64 = t152 + t515;
t50 = -t186 * t721 + t187 * t368 + t188 * t369 + t191 * t292 + t192 * t294 + t290 * t511;
t49 = t186 * t720 + t187 * t370 - t188 * t371 + t189 * t292 + t190 * t294 - t290 * t838;
t45 = t118 * t818 + t383 * t87 + t384 * t86;
t42 = t383 * t75 - t850;
t41 = t384 * t72 + t822;
t37 = t110 * t384 - t111 * t383 - t218 * t283 + t220 * t282 + t484;
t26 = -t104 * t721 + t106 * t368 + t108 * t369 + t191 * t214 - t192 * t216 + t211 * t511;
t25 = -t105 * t721 + t107 * t368 + t109 * t369 + t191 * t212 + t192 * t215 + t209 * t511;
t24 = t104 * t720 + t106 * t370 - t108 * t371 + t189 * t214 - t190 * t216 - t211 * t838;
t23 = t105 * t720 + t107 * t370 - t109 * t371 + t189 * t212 + t190 * t215 - t209 * t838;
t19 = -t112 * t818 + t162 * t298 - t180 * t372 + t195 * t281 - t197 * t620 + t208 * t383 - t283 * t807 - t380 * t96 + t485;
t10 = t114 * t620 + t25 * t384 + t26 * t383 + t282 * t72 + t283 * t73 + t50 * t818;
t9 = t115 * t620 + t23 * t384 + t24 * t383 + t282 * t74 + t283 * t75 + t49 * t818;
t1 = [(t158 * (rSges(4,1) * t714 + t457 + t649) + t204 * t453 + t157 * t821 + t205 * (t637 + t675) + (-t204 * qJD(3) + t158 * t651) * t473 + (t204 * t651 * t475 + (t204 * (-qJ(2) - t581) + t205 * t651) * t473) * qJD(1) - (-t204 + (t331 - t735) * qJD(1) + t636) * t205) * m(4) + (t85 + t81 + t64) * t615 + (t655 + (t301 * t473 ^ 2 + (-t286 + t123 + (t301 + t540) * t475) * t475) * qJD(4) + t65) * t614 + (qJD(1) * t166 + t82 + t84) * t450 / 0.2e1 + (t238 * (t473 * t783 + t457 + t774) + t284 * t453 + t237 * t820 + t285 * (t671 + t672) + (t284 * t783 * t475 + (t284 * (-rSges(3,3) - qJ(2)) - t285 * pkin(1)) * t473) * qJD(1) - (qJD(1) * t416 - t284 + t669) * t285) * m(3) + t761 / 0.2e1 + t767 / 0.2e1 + (t49 + t41) * t792 + ((-t471 * t475 + t306 + t638) * t98 + (t473 * t779 + t475 * t512 + t457 - t461) * t99 + (t673 + (rSges(5,1) * t661 - pkin(1) * qJD(1) + t529) * t475 + (-qJD(3) + (-qJ(2) - t512) * qJD(1)) * t473) * t126 + (t560 + t641 + (-t646 + (-rSges(5,3) - pkin(1)) * qJD(1)) * t473 + t126 - t359 - (t307 - t735) * qJD(1) - t597) * t127) * m(5) - ((t160 - t539) * t473 + t475 * t161) * t652 / 0.2e1 + t751 + t754 + t760 / 0.2e1 + (t19 * (t457 + t575 + t676) + t18 * (t638 + t642 + t683) + (-t18 * t471 + t19 * t587) * t475 + (t19 * (t471 + t635) - t18 * t770) * t473 + (-t576 + t673 + (-t601 + (t724 + (rSges(7,3) - t476) * t448) * qJD(4) + t836) * t475 + (-qJD(3) - t647 + (-t445 * t448 - qJ(2) - t587 - t719) * qJD(1)) * t473) * t62 + (t560 + t596 + t645 - t770 * t663 + ((-t648 - t659) * t448 + t836) * t473 - t493 + t62 + t834) * t63) * m(7) + (-qJD(4) * t537 + t374 * t448 - t375 * t449) * qJD(1) + (t152 + ((-t124 + t286 + t123) * t473 + (t125 - t823 + (t301 - t540) * t473 + t122) * t475) * qJD(4)) * t616 + t757 / 0.2e1 + t758 / 0.2e1 + (t43 + t35) * t799 + t50 * t790 + t44 * t797 + ((-t66 + t851) * t298 + t36 + t849) * t798 + ((t69 + t851) * t299 + t828) * t800 + (t42 + (-t72 + t852) * t383 + t850) * t791 + ((t75 + t852) * t384 + t822) * t793 + t765 / 0.2e1 + t766 / 0.2e1 + (t47 * (-t425 + t457 + t578) + t79 * (-t579 + t639 + t673) + t46 * (t424 + t638 + t680) + t80 * (t560 + t640 + t643) + (rSges(6,3) * t662 * t79 - t46 * t471 + t47 * t513) * t475 + (-t79 * qJD(3) + t46 * t634 + t47 * t779) * t473 + ((-t79 * pkin(1) + t634 * t80) * t475 + (t79 * (-qJ(2) - t513) - t80 * pkin(1)) * t473) * qJD(1) - (t493 - t79 - t842) * t80 - t759 * t383) * m(6) + t768 / 0.2e1 + t115 * t801 + t114 * t802 + t101 * t803 + t100 * t804; 0.2e1 * (t18 * t785 + t19 * t786) * m(7) + 0.2e1 * (t46 * t785 + t47 * t786) * m(6) + 0.2e1 * (t755 / 0.2e1 - t756 / 0.2e1) * m(5) + 0.2e1 * (t157 * t785 + t158 * t786) * m(4) + 0.2e1 * (t237 * t785 + t238 * t786) * m(3); m(4) * (t157 * t473 + t158 * t475) + m(5) * (t473 * t98 + t475 * t99) + m(6) * t573 + m(7) * (t18 * t473 + t19 * t475); t42 * t656 * t787 + (t515 + t64 + t41 + t35) * t619 + (qJD(1) * t81 + (t473 * (t498 * t473 - t475 * t813) + t475 * (t497 * t473 + t475 * t811) + (-t124 * t473 + t125 * t475) * qJD(1)) * t831 + t5 + t9) * t786 - qJD(1) * ((-t448 * t678 - t449 * t677) * qJD(1) + (t448 * t499 + t449 * t500) * qJD(4)) / 0.2e1 + (-t62 * (-t180 * t385 - t234 * t818 + t257 * t380 + t268 * t383 + t280 * t298 - t281 * t330 + t606) - t63 * (t178 * t385 - t233 * t818 + t256 * t380 - t268 * t384 - t280 * t299 - t281 * t329 + t584) - t54 * (t178 * t330 + t180 * t329 + t233 * t383 + t234 * t384 - t256 * t298 - t257 * t299 + t585) - ((-t197 * t62 + t762) * t449 + (t54 * (t196 * t475 + t197 * t473) - (-t473 * t63 - t475 * t62) * t807) * t448) * qJD(5) + t19 * t712 + t62 * t681 + t63 * t365 - t11 * t320 + t54 * t231 + (t19 * t692 + t62 * t704 + t11 * t644 + t54 * (t509 + t752) + (t829 + t54 * (t357 - t698)) * qJD(1)) * t473 + (t18 * (-t397 - t692) + t63 * (-t379 - t704) + (t54 * t644 + t830) * qJD(1) + t810) * t475) * m(7) - t385 * t39 / 0.2e1 - t329 * t35 / 0.2e1 + t330 * t36 / 0.2e1 - t45 * t658 / 0.2e1 + (-(t126 * t351 + t127 * t349) * qJD(1) - (t167 * (-t349 * t473 - t351 * t475) - t550 * t580) * qJD(4) + 0.2e1 * t167 * (t206 * t475 - t207 * t473 + (-t306 * t475 + t307 * t473) * qJD(1)) - t550 * t378 + (t755 - t756 + (t126 * t475 + t127 * t473) * qJD(1)) * t393) * m(5) + (t514 + t65 + t42 + t36) * t663 / 0.2e1 + ((t336 * t450 - t666) * t475 + (-t835 + (-t475 * t725 - t837) * qJD(4)) * t473) * t614 + ((-t660 * t725 - t666) * t473 + (t835 + (t336 * t473 + t837) * qJD(4)) * t475) * t616 + (-qJD(1) * t561 + t27 * t475 + t28 * t473) * t788 + (-qJD(1) * t565 + t25 * t475 + t26 * t473) * t790 + (-qJD(1) * t563 + t23 * t475 + t24 * t473) * t792 + (-qJD(1) * t567 + t21 * t475 + t22 * t473) * t794 + t568 * t796 + (-qJD(1) * t571 + t16 * t475 + t17 * t473) * t797 + (qJD(1) * t82 + t10 + (t473 * (t473 * t813 + t498 * t475) + t475 * (-t473 * t811 + t497 * t475) + (-t122 * t473 + t123 * t475) * qJD(1)) * t831 + t6) * t475 / 0.2e1 - t41 * t623 / 0.2e1 + t562 * t590 + (-qJD(1) * t569 + t14 * t475 + t15 * t473) * t799 + t564 * t801 + t566 * t802 + t570 * t803 + t572 * t804 + qJD(1) * (t85 * t473 + t84 * t475 + (t166 * t475 + t473 * t539) * qJD(1)) / 0.2e1 + ((t260 * t368 + t262 * t369) * t384 + (-t261 * t368 - t263 * t369) * t383 + (t291 * t368 + t293 * t369) * t818 + (t114 * t449 - t722 * t73) * qJD(5) + ((qJD(5) * t72 + t506) * t448 - t826) * t473) * t791 + ((t260 * t370 - t262 * t371) * t384 + (-t261 * t370 + t263 * t371) * t383 + (t291 * t370 - t293 * t371) * t818 + (t115 * t449 + t723 * t74) * qJD(5) + ((-qJD(5) * t75 - t506) * t448 + t826) * t475) * t793 + (((-t260 * t472 + t262 * t474 + t209) * t384 + (t261 * t472 - t263 * t474 + t211) * t383 + (-t291 * t472 + t293 * t474 + t290) * t818 + t118 * qJD(5)) * t449 + (qJD(5) * t561 + t478) * t448) * t789 + (t47 * t712 + t79 * t681 + t80 * t365 - t37 * t320 + (qJD(1) * t759 + t79 * t193 + t47 * t296 + t37 * t693) * t473 + (t46 * (-t296 - t397) + t80 * (-t193 - t379) + t37 * t220 + t79 * qJD(1) * t296) * t475 - t79 * (t265 * t818 + t295 * t383 + t606) - t80 * (t264 * t818 - t295 * t384 + t584) - ((t218 * t80 - t220 * t79) * t449 + t480 * t448) * qJD(5) + (t231 + (-t111 + t509 + (-t220 + t357) * qJD(1)) * t473 + (qJD(1) * t693 + t110) * t475 + t264 * t383 + t265 * t384 - t585) * t83) * m(6) + ((t250 * t321 + t252 * t322) * t299 + t66 * t329 + (-t251 * t321 - t253 * t322) * t298 - t67 * t330 + (t276 * t321 + t278 * t322) * t380 + t100 * t385 - t809 * t473) * t798 + ((t250 * t323 - t252 * t324) * t299 + t68 * t329 + (-t251 * t323 + t253 * t324) * t298 - t69 * t330 + (t276 * t323 - t278 * t324) * t380 + t101 * t385 + t809 * t475) * t800 + (t116 * t385 + t70 * t329 - t71 * t330 + ((-t250 * t454 + t252 * t455 + t169) * t299 + (t251 * t454 - t253 * t455 + t171) * t298 + (-t276 * t454 + t278 * t455 + t275) * t380) * t449 + t479 * t448) * t795; (t115 * t448 - t449 * t563) * t801 + (t114 * t448 - t449 * t565) * t802 + ((qJD(4) * t565 + t50) * t448 + (-qJD(1) * t566 + qJD(4) * t114 - t25 * t473 + t26 * t475) * t449) * t790 + (t368 * t488 - t369 * t805 - t504 * t721) * t791 + (t118 * t448 - t449 * t561) * t590 + ((qJD(4) * t561 + t53) * t448 + (-qJD(1) * t562 + qJD(4) * t118 - t27 * t473 + t28 * t475) * t449) * t788 + ((qJD(4) * t563 + t49) * t448 + (-qJD(1) * t564 + qJD(4) * t115 - t23 * t473 + t24 * t475) * t449) * t792 + t45 * t617 + t10 * t622 + (t488 * t370 + t371 * t805 + t504 * t720) * t793 + (t504 * t448 + (-t472 * t488 - t474 * t805) * t449) * t789 + (t751 + t757 + t758 + t765 + t766) * t787 + t483 + t9 * t621 + t841 * t42 + t840 * t41 + (-t62 * (-t348 * t818 - t383 * t650 + t607) - t63 * (t347 * t818 + t384 * t650 + t608) - t54 * (-t347 * t383 + t348 * t384 + t609) + t19 * t255 + t62 * t136 + t63 * t600 + (-t19 * t698 - t62 * t753 + t18 * t196 + t63 * t113 + (t518 * t475 + (t54 * t197 - t829) * t473) * qJD(4)) * t448 + ((-t62 * t698 + t762) * qJD(4) + (-t19 * t807 + t62 * t208 + t11 * t699 + t54 * t752 + (-t54 * t698 - t63 * t807) * qJD(1)) * t475 + (qJD(1) * t518 - t18 * t807 + t63 * t208 - t810) * t473) * t449 + t495) * m(7) + (-t79 * (-t247 * t818 + t350 * t383) - t80 * (t246 * t818 - t350 * t384) - t83 * (-t246 * t383 + t247 * t384) + (qJD(4) * t480 - t79 * t110 + t80 * t111 + t46 * t218 - t47 * t220) * t448 + (t79 * (-qJD(4) * t220 + t193 * t475) + t80 * (qJD(4) * t218 + t193 * t473) - t37 * t543 + t83 * (-t110 * t473 - t111 * t475 + t218 * t664 - t220 * t663) + ((-t473 * t79 + t475 * t80) * qJD(1) + t573) * t296) * t449) * m(6); t483 + (t19 * (-t180 * t448 + t255) + (t11 * (-t178 * t475 - t180 * t473) + t54 * (-t180 * t663 - t473 * t96 - t475 * t97)) * t449 + t495 - t54 * t609 + (-t281 * t627 + t600 - t608) * t63 + (-t281 * t626 - t448 * t96 + t136 + (-qJD(4) * t180 - t281 * t664) * t449 - t607) * t62) * m(7);];
tauc  = t1(:);