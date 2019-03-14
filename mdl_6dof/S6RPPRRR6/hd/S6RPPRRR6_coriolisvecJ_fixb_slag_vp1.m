% Calculate vector of centrifugal and Coriolis load on the joints for
% S6RPPRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6]';
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
% Datum: 2019-03-09 02:32
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RPPRRR6_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR6_coriolisvecJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR6_coriolisvecJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRRR6_coriolisvecJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRRR6_coriolisvecJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPPRRR6_coriolisvecJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPPRRR6_coriolisvecJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:30:33
% EndTime: 2019-03-09 02:31:16
% DurationCPUTime: 39.42s
% Computational Cost: add. (24503->1250), mult. (43900->1674), div. (0->0), fcn. (41125->8), ass. (0->566)
t450 = sin(qJ(4));
t452 = cos(qJ(5));
t454 = cos(qJ(1));
t672 = t454 * t452;
t449 = sin(qJ(5));
t451 = sin(qJ(1));
t680 = t451 * t449;
t333 = t450 * t680 - t672;
t679 = t451 * t452;
t685 = t449 * t454;
t334 = t450 * t679 + t685;
t453 = cos(qJ(4));
t678 = t451 * t453;
t198 = -Icges(6,5) * t334 + Icges(6,6) * t333 + Icges(6,3) * t678;
t683 = t450 * t454;
t335 = -t449 * t683 - t679;
t336 = t450 * t672 - t680;
t676 = t453 * t454;
t199 = Icges(6,5) * t336 + Icges(6,6) * t335 - Icges(6,3) * t676;
t320 = Icges(6,4) * t334;
t200 = -Icges(6,2) * t333 - Icges(6,6) * t678 + t320;
t319 = Icges(6,4) * t333;
t204 = -Icges(6,1) * t334 + Icges(6,5) * t678 + t319;
t527 = t200 * t333 + t204 * t334;
t704 = Icges(6,4) * t336;
t202 = Icges(6,2) * t335 - Icges(6,6) * t676 + t704;
t321 = Icges(6,4) * t335;
t205 = Icges(6,1) * t336 - Icges(6,5) * t676 + t321;
t665 = t335 * t202 + t336 * t205;
t803 = t527 + t665 + (-t198 * t451 - t199 * t454) * t453;
t448 = qJ(5) + qJ(6);
t439 = cos(t448);
t673 = t454 * t439;
t438 = sin(t448);
t681 = t451 * t438;
t309 = t450 * t681 - t673;
t684 = t450 * t451;
t310 = t438 * t454 + t439 * t684;
t163 = -Icges(7,5) * t310 + Icges(7,6) * t309 + Icges(7,3) * t678;
t311 = -t438 * t683 - t439 * t451;
t312 = t450 * t673 - t681;
t164 = Icges(7,5) * t312 + Icges(7,6) * t311 - Icges(7,3) * t676;
t286 = Icges(7,4) * t310;
t165 = -Icges(7,2) * t309 - Icges(7,6) * t678 + t286;
t285 = Icges(7,4) * t309;
t169 = -Icges(7,1) * t310 + Icges(7,5) * t678 + t285;
t530 = t165 * t309 + t169 * t310;
t701 = Icges(7,4) * t312;
t167 = Icges(7,2) * t311 - Icges(7,6) * t676 + t701;
t287 = Icges(7,4) * t311;
t170 = Icges(7,1) * t312 - Icges(7,5) * t676 + t287;
t668 = t311 * t167 + t312 * t170;
t802 = t530 + t668 + (-t163 * t451 - t164 * t454) * t453;
t666 = t335 * t200 - t204 * t336;
t667 = -t333 * t202 + t334 * t205;
t801 = -t666 - t453 * (t198 * t454 - t199 * t451) - t667;
t669 = t311 * t165 - t169 * t312;
t670 = -t309 * t167 + t310 * t170;
t800 = -t669 - t453 * (t163 * t454 - t164 * t451) - t670;
t534 = Icges(5,5) * t450 + Icges(5,6) * t453;
t296 = -Icges(5,3) * t451 + t454 * t534;
t706 = Icges(5,4) * t450;
t537 = Icges(5,2) * t453 + t706;
t299 = Icges(5,6) * t454 + t451 * t537;
t705 = Icges(5,4) * t453;
t540 = Icges(5,1) * t450 + t705;
t303 = Icges(5,5) * t454 + t451 * t540;
t521 = t299 * t453 + t303 * t450;
t799 = t296 + t521;
t526 = t200 * t449 + t204 * t452;
t84 = -t450 * t198 - t453 * t526;
t529 = t165 * t438 + t169 * t439;
t70 = -t450 * t163 - t453 * t529;
t208 = rSges(6,1) * t334 - rSges(6,2) * t333 - rSges(6,3) * t678;
t434 = qJD(5) * t450;
t417 = qJD(1) + t434;
t796 = t208 * t417;
t793 = t451 * t454;
t533 = Icges(6,5) * t452 - Icges(6,6) * t449;
t294 = Icges(6,3) * t450 + t453 * t533;
t702 = Icges(6,4) * t452;
t536 = -Icges(6,2) * t449 + t702;
t298 = Icges(6,6) * t450 + t453 * t536;
t703 = Icges(6,4) * t449;
t539 = Icges(6,1) * t452 - t703;
t302 = Icges(6,5) * t450 + t453 * t539;
t481 = t294 * t678 + t298 * t333 - t302 * t334;
t792 = t481 * t417;
t623 = qJD(6) * t450;
t375 = t417 + t623;
t532 = Icges(7,5) * t439 - Icges(7,6) * t438;
t277 = Icges(7,3) * t450 + t453 * t532;
t699 = Icges(7,4) * t439;
t535 = -Icges(7,2) * t438 + t699;
t279 = Icges(7,6) * t450 + t453 * t535;
t700 = Icges(7,4) * t438;
t538 = Icges(7,1) * t439 - t700;
t281 = Icges(7,5) * t450 + t453 * t538;
t482 = t277 * t678 + t279 * t309 - t281 * t310;
t791 = t482 * t375;
t625 = qJD(4) * t454;
t583 = t625 / 0.2e1;
t629 = qJD(1) * t451;
t602 = t453 * t629;
t790 = t450 * t583 + t602 / 0.2e1;
t627 = qJD(4) * t451;
t586 = t627 / 0.2e1;
t628 = qJD(1) * t454;
t588 = -t628 / 0.2e1;
t789 = t450 * t586 + t453 * t588;
t428 = pkin(5) * t452 + pkin(4);
t733 = pkin(4) - t428;
t594 = t733 * t450;
t455 = -pkin(9) - pkin(8);
t675 = t453 * t455;
t788 = t594 - t675;
t599 = t450 * t625;
t487 = t599 + t602;
t776 = -t451 * rSges(4,2) - t454 * rSges(4,3);
t389 = t454 * pkin(1) + t451 * qJ(2);
t777 = t454 * qJ(3) + t389;
t787 = t777 - t776;
t171 = rSges(7,1) * t310 - rSges(7,2) * t309 - rSges(7,3) * t678;
t420 = pkin(8) * t678;
t616 = pkin(4) * t684;
t352 = -t420 + t616;
t421 = pkin(5) * t685;
t608 = -t428 * t684 - t451 * t675 - t421;
t211 = t352 + t608;
t732 = -pkin(8) - t455;
t275 = t450 * t732 - t453 * t733;
t555 = rSges(7,1) * t439 - rSges(7,2) * t438;
t283 = rSges(7,3) * t450 + t453 * t555;
t624 = qJD(5) * t453;
t411 = t451 * t624;
t499 = qJD(6) * t678 - t625;
t292 = -t411 - t499;
t364 = -t411 + t625;
t784 = t171 * t375 - t211 * t417 - t275 * t364 - t283 * t292;
t781 = 0.2e1 * qJD(4);
t652 = t312 * rSges(7,1) + t311 * rSges(7,2);
t173 = -rSges(7,3) * t676 + t652;
t422 = pkin(4) * t683;
t354 = -pkin(8) * t676 + t422;
t644 = t428 * t683 + t454 * t675;
t212 = -pkin(5) * t680 - t354 + t644;
t447 = qJD(5) + qJD(6);
t291 = -t447 * t676 - t627;
t363 = -t454 * t624 - t627;
t491 = (-t352 * t451 - t354 * t454) * qJD(4);
t52 = t171 * t291 - t173 * t292 - t211 * t363 - t212 * t364 + t491;
t660 = t173 + t212;
t780 = t52 * t660;
t736 = pkin(4) * t453;
t393 = pkin(8) * t450 + t736;
t437 = qJD(2) * t454;
t636 = pkin(7) * t629 + t437;
t464 = (qJD(4) * t393 + qJD(3)) * t451 + (t354 + t777) * qJD(1) - t636;
t63 = t173 * t375 + t212 * t417 - t275 * t363 - t283 * t291 + t464;
t654 = t275 + t283;
t779 = t63 * t654;
t580 = -rSges(3,2) * t454 + t451 * rSges(3,3);
t778 = t389 + t580;
t295 = Icges(5,3) * t454 + t451 * t534;
t559 = rSges(5,1) * t450 + rSges(5,2) * t453;
t306 = rSges(5,3) * t454 + t451 * t559;
t630 = qJD(1) * t450;
t568 = qJD(5) + t630;
t597 = t453 * t625;
t773 = t451 * t568 - t597;
t572 = t447 + t630;
t772 = t451 * t572 - t597;
t626 = qJD(4) * t453;
t598 = t451 * t626;
t771 = t454 * t572 + t598;
t379 = Icges(5,5) * t453 - Icges(5,6) * t450;
t494 = qJD(4) * t379;
t300 = -Icges(5,6) * t451 + t454 * t537;
t412 = Icges(5,4) * t676;
t698 = Icges(5,5) * t451;
t304 = Icges(5,1) * t683 + t412 - t698;
t520 = t300 * t453 + t304 * t450;
t770 = t454 * t494 + (-t295 + t520) * qJD(1);
t769 = qJD(1) * t799 + t451 * t494;
t381 = -Icges(5,2) * t450 + t705;
t383 = Icges(5,1) * t453 - t706;
t519 = t381 * t453 + t383 * t450;
t768 = t519 * qJD(1) - t534 * qJD(4);
t601 = t453 * t628;
t407 = pkin(8) * t601;
t514 = t417 * t449;
t723 = pkin(5) * qJD(5);
t613 = t452 * t723;
t112 = t407 + (-qJD(1) * t788 + t613) * t454 + (-pkin(5) * t514 + qJD(4) * t275) * t451;
t724 = rSges(7,3) * t453;
t282 = -t450 * t555 + t724;
t318 = (-rSges(7,1) * t438 - rSges(7,2) * t439) * t453;
t161 = qJD(4) * t282 + t318 * t447;
t618 = qJD(4) * qJD(5);
t592 = t450 * t618;
t394 = t451 * t592;
t590 = qJD(4) * t623;
t206 = qJD(1) * t291 + t451 * t590 + t394;
t274 = t453 * t732 + t594;
t614 = t449 * t723;
t230 = qJD(4) * t274 - t453 * t614;
t272 = qJD(1) * t363 + t394;
t377 = t447 * t453;
t362 = qJD(4) * t377;
t600 = t450 * t627;
t243 = pkin(8) * t600 - t407 + (t450 * t628 + t598) * pkin(4);
t322 = qJD(1) * t389 - t437;
t737 = pkin(4) * t450;
t392 = pkin(8) * t453 - t737;
t372 = qJD(4) * t392;
t456 = qJD(1) ^ 2;
t677 = t451 * t456;
t432 = pkin(7) * t677;
t621 = qJD(1) * qJD(2);
t424 = t454 * t621;
t620 = qJD(1) * qJD(3);
t639 = -0.2e1 * t451 * t620 + t424;
t671 = t454 * t456;
t513 = -qJ(3) * t671 + t639;
t460 = t372 * t625 + t432 + (-t393 * t627 - t243 - t322) * qJD(1) + t513;
t591 = t453 * t618;
t488 = t600 - t601;
t571 = t447 * t450;
t573 = -qJD(1) - t571;
t518 = t451 * t573;
t140 = -t438 * t771 + t439 * t518;
t141 = t438 * t518 + t439 * t771;
t556 = rSges(7,1) * t141 + rSges(7,2) * t140;
t93 = rSges(7,3) * t488 + t556;
t22 = -t112 * t417 + t161 * t292 - t171 * t362 + t206 * t283 + t211 * t591 + t230 * t364 + t272 * t275 - t375 * t93 + t460;
t359 = t393 * t625;
t442 = t454 * qJ(2);
t385 = pkin(1) * t451 - t442;
t694 = qJ(3) * t451;
t554 = -pkin(7) * t454 - t694;
t512 = -t385 + t554;
t435 = qJD(3) * t454;
t436 = qJD(2) * t451;
t635 = t435 + t436;
t476 = t359 + (-t352 + t512) * qJD(1) + t635;
t62 = t476 - t784;
t664 = t161 + t230;
t767 = t22 * t654 + t62 * t664;
t766 = t451 * (-Icges(5,2) * t683 + t304 + t412) - t454 * (t381 * t451 + t303);
t276 = Icges(7,3) * t453 - t450 * t532;
t523 = t279 * t438 - t281 * t439;
t528 = t167 * t438 - t170 * t439;
t765 = t291 * (t277 * t454 + t528) + t292 * (t277 * t451 + t529) + t375 * (t276 + t523);
t316 = (-Icges(7,2) * t439 - t700) * t453;
t764 = t291 * (-Icges(7,2) * t312 + t170 + t287) + t292 * (-Icges(7,2) * t310 - t169 - t285) + t375 * (t281 + t316);
t293 = Icges(6,3) * t453 - t450 * t533;
t522 = t298 * t449 - t302 * t452;
t525 = t202 * t449 - t205 * t452;
t763 = -t363 * (t294 * t454 + t525) - t364 * (t294 * t451 + t526) - t417 * (t293 + t522);
t343 = (-Icges(6,2) * t452 - t703) * t453;
t762 = t363 * (-Icges(6,2) * t336 + t205 + t321) + t364 * (-Icges(6,2) * t334 - t204 - t319) + t417 * (t302 + t343);
t761 = t206 / 0.2e1;
t641 = qJD(1) * t411 + t454 * t592;
t207 = qJD(1) * t499 + t454 * t590 + t641;
t760 = t207 / 0.2e1;
t759 = t272 / 0.2e1;
t619 = qJD(1) * qJD(4);
t593 = t454 * t619;
t273 = -t593 + t641;
t758 = t273 / 0.2e1;
t757 = -t291 / 0.2e1;
t756 = t291 / 0.2e1;
t755 = -t292 / 0.2e1;
t754 = t292 / 0.2e1;
t753 = -t363 / 0.2e1;
t752 = t363 / 0.2e1;
t751 = -t364 / 0.2e1;
t750 = t364 / 0.2e1;
t749 = -t375 / 0.2e1;
t748 = t375 / 0.2e1;
t747 = -t417 / 0.2e1;
t746 = t417 / 0.2e1;
t745 = t450 / 0.2e1;
t743 = t451 / 0.2e1;
t742 = -t454 / 0.2e1;
t740 = rSges(3,2) - pkin(1);
t739 = -rSges(5,3) - pkin(7);
t738 = -rSges(6,3) - pkin(8);
t735 = pkin(5) * t449;
t734 = -pkin(1) - qJ(3);
t730 = rSges(4,2) * t454;
t729 = rSges(5,2) * t450;
t728 = rSges(3,3) * t454;
t727 = rSges(5,3) * t451;
t725 = rSges(6,3) * t453;
t87 = Icges(7,5) * t141 + Icges(7,6) * t140 + Icges(7,3) * t488;
t89 = Icges(7,4) * t141 + Icges(7,2) * t140 + Icges(7,6) * t488;
t91 = Icges(7,1) * t141 + Icges(7,4) * t140 + Icges(7,5) * t488;
t18 = (qJD(4) * t529 + t87) * t450 + (-qJD(4) * t163 + (-t165 * t447 + t91) * t439 + (t169 * t447 - t89) * t438) * t453;
t722 = t18 * t292;
t517 = t454 * t573;
t138 = t438 * t772 + t439 * t517;
t139 = t438 * t517 - t439 * t772;
t86 = Icges(7,5) * t139 + Icges(7,6) * t138 + Icges(7,3) * t487;
t88 = Icges(7,4) * t139 + Icges(7,2) * t138 + Icges(7,6) * t487;
t90 = Icges(7,1) * t139 + Icges(7,4) * t138 + Icges(7,5) * t487;
t19 = (qJD(4) * t528 + t86) * t450 + (qJD(4) * t164 + (-t167 * t447 + t90) * t439 + (-t170 * t447 - t88) * t438) * t453;
t721 = t19 * t291;
t720 = t22 * t451;
t515 = t452 * t417;
t182 = -t451 * t515 + (-t454 * t568 - t598) * t449;
t183 = t568 * t672 + (t452 * t626 - t514) * t451;
t104 = Icges(6,5) * t183 + Icges(6,6) * t182 + Icges(6,3) * t488;
t106 = Icges(6,4) * t183 + Icges(6,2) * t182 + Icges(6,6) * t488;
t108 = Icges(6,1) * t183 + Icges(6,4) * t182 + Icges(6,5) * t488;
t27 = (qJD(4) * t526 + t104) * t450 + (-qJD(4) * t198 - t106 * t449 + t108 * t452 + (-t200 * t452 + t204 * t449) * qJD(5)) * t453;
t719 = t27 * t364;
t180 = t449 * t773 - t454 * t515;
t181 = -t452 * t773 - t454 * t514;
t103 = Icges(6,5) * t181 + Icges(6,6) * t180 + Icges(6,3) * t487;
t105 = Icges(6,4) * t181 + Icges(6,2) * t180 + Icges(6,6) * t487;
t107 = Icges(6,1) * t181 + Icges(6,4) * t180 + Icges(6,5) * t487;
t28 = (qJD(4) * t525 + t103) * t450 + (qJD(4) * t199 - t105 * t449 + t107 * t452 + (-t202 * t452 - t205 * t449) * qJD(5)) * t453;
t718 = t28 * t363;
t109 = t181 * rSges(6,1) + t180 * rSges(6,2) + rSges(6,3) * t487;
t647 = t336 * rSges(6,1) + t335 * rSges(6,2);
t210 = -rSges(6,3) * t676 + t647;
t557 = rSges(6,1) * t452 - rSges(6,2) * t449;
t305 = -t450 * t557 + t725;
t350 = (-rSges(6,1) * t449 - rSges(6,2) * t452) * t453;
t224 = qJD(4) * t305 + qJD(5) * t350;
t307 = rSges(6,3) * t450 + t453 * t557;
t607 = pkin(4) * t597 + pkin(8) * t487;
t242 = -qJD(1) * t616 + t607;
t425 = qJ(2) * t628;
t638 = t425 + t436;
t648 = qJD(1) * (-pkin(1) * t629 + t638) + t451 * t621;
t609 = 0.2e1 * t454 * t620 + t648;
t469 = qJD(1) * t242 + t372 * t627 + t393 * t593 + t456 * t554 + t609;
t46 = t109 * t417 + t210 * t591 - t224 * t363 - t273 * t307 + t469;
t717 = t46 * t454;
t558 = rSges(6,1) * t183 + rSges(6,2) * t182;
t110 = rSges(6,3) * t488 + t558;
t47 = -t110 * t417 - t208 * t591 + t224 * t364 + t272 * t307 + t460;
t716 = t47 * t451;
t715 = t63 * t212;
t714 = t70 * t206;
t71 = t164 * t450 - t453 * t528;
t713 = t71 * t207;
t81 = t210 * t417 - t307 * t363 + t464;
t712 = t81 * t307;
t711 = t84 * t272;
t85 = t199 * t450 - t453 * t525;
t710 = t85 * t273;
t709 = -t112 - t93;
t117 = t277 * t450 - t453 * t523;
t315 = (-Icges(7,5) * t438 - Icges(7,6) * t439) * t453;
t155 = qJD(4) * t276 + t315 * t447;
t278 = Icges(7,6) * t453 - t450 * t535;
t156 = qJD(4) * t278 + t316 * t447;
t280 = Icges(7,5) * t453 - t450 * t538;
t317 = (-Icges(7,1) * t438 - t699) * t453;
t157 = qJD(4) * t280 + t317 * t447;
t51 = (qJD(4) * t523 + t155) * t450 + (qJD(4) * t277 + (-t279 * t447 + t157) * t439 + (-t281 * t447 - t156) * t438) * t453;
t708 = t117 * t362 + t51 * t375;
t121 = t294 * t450 - t453 * t522;
t340 = (-Icges(6,5) * t449 - Icges(6,6) * t452) * t453;
t213 = qJD(4) * t293 + qJD(5) * t340;
t297 = Icges(6,6) * t453 - t450 * t536;
t216 = qJD(4) * t297 + qJD(5) * t343;
t301 = Icges(6,5) * t453 - t450 * t539;
t346 = (-Icges(6,1) * t449 - t702) * t453;
t219 = qJD(4) * t301 + qJD(5) * t346;
t54 = (qJD(4) * t522 + t213) * t450 + (qJD(4) * t294 - t216 * t449 + t219 * t452 + (-t298 * t452 - t302 * t449) * qJD(5)) * t453;
t707 = t121 * t591 + t54 * t417;
t687 = t295 * t451;
t686 = t295 * t454;
t341 = t379 * t451;
t342 = t379 * t454;
t682 = t451 * t393;
t284 = t454 * t296;
t674 = t454 * t393;
t661 = -t171 + t211;
t657 = -t208 - t352;
t656 = t299 * t676 + t303 * t683;
t655 = t300 * t676 + t304 * t683;
t646 = qJD(1) * t674 + t392 * t627;
t645 = t451 * t372 + t393 * t628;
t643 = -t537 + t383;
t642 = -t381 - t540;
t640 = rSges(5,1) * t683 + rSges(5,2) * t676;
t637 = rSges(3,2) * t629 + rSges(3,3) * t628;
t634 = -qJD(1) * t385 + t436;
t329 = qJD(1) * t352;
t631 = qJD(1) * t534;
t184 = t451 * t519 + t342;
t622 = t184 * qJD(1);
t617 = -rSges(4,3) + t734;
t615 = t453 * t735;
t92 = t139 * rSges(7,1) + t138 * rSges(7,2) + rSges(7,3) * t487;
t612 = t161 * t676 + t173 * t626 + t450 * t92;
t611 = qJD(4) * t729;
t610 = -t352 + t661;
t120 = t300 * t678 + t304 * t684 + t284;
t606 = t425 + t635;
t605 = t435 + t634;
t603 = -pkin(7) - t735;
t313 = t354 * t629;
t388 = rSges(5,1) * t453 - t729;
t356 = t388 * t625;
t596 = -t678 / 0.2e1;
t595 = -t676 / 0.2e1;
t585 = t626 / 0.2e1;
t584 = -t625 / 0.2e1;
t578 = -rSges(4,3) * t451 - t694 + t730;
t195 = -rSges(7,1) * t309 - rSges(7,2) * t310;
t196 = rSges(7,1) * t311 - rSges(7,2) * t312;
t577 = t291 * t195 - t196 * t292;
t576 = t375 * t196 - t291 * t318;
t575 = -t195 * t375 + t292 * t318;
t574 = -qJD(1) * t682 + t392 * t625;
t570 = t171 * t487 + t173 * t601 + t92 * t678;
t567 = t734 - t737;
t66 = t163 * t678 - t530;
t67 = -t164 * t678 + t670;
t553 = t451 * t67 - t454 * t66;
t552 = t451 * t66 + t454 * t67;
t68 = t163 * t676 + t669;
t69 = -t164 * t676 + t668;
t551 = t451 * t69 - t454 * t68;
t550 = t451 * t68 + t454 * t69;
t549 = t451 * t71 - t454 * t70;
t548 = t451 * t70 + t454 * t71;
t72 = t198 * t678 - t527;
t73 = -t199 * t678 + t667;
t547 = t451 * t73 - t454 * t72;
t546 = t451 * t72 + t454 * t73;
t74 = t198 * t676 + t666;
t75 = -t199 * t676 + t665;
t545 = t451 * t75 - t454 * t74;
t544 = t451 * t74 + t454 * t75;
t543 = t451 * t85 - t454 * t84;
t542 = t451 * t84 + t454 * t85;
t349 = t388 * t451;
t226 = qJD(4) * t349 + (t454 * t559 - t727) * qJD(1);
t370 = t559 * qJD(4);
t516 = -qJ(3) * t456 - qJD(4) * t370;
t100 = t432 + t516 * t454 + (-t388 * t627 - t226 - t322) * qJD(1) + t639;
t399 = rSges(5,1) * t597;
t225 = -rSges(5,2) * t599 - qJD(1) * t306 + t399;
t99 = -pkin(7) * t671 + t516 * t451 + (t225 + t356) * qJD(1) + t609;
t541 = t100 * t454 + t451 * t99;
t133 = t356 + (-t306 + t512) * qJD(1) + t635;
t308 = t640 - t727;
t134 = (qJD(4) * t388 + qJD(3)) * t451 + (t308 + t777) * qJD(1) - t636;
t531 = t133 * t454 + t134 * t451;
t524 = t208 * t454 - t210 * t451;
t178 = -t299 * t450 + t303 * t453;
t179 = -t300 * t450 + t304 * t453;
t324 = t335 * pkin(5);
t361 = t428 * t597;
t111 = -t455 * t599 + t361 + qJD(5) * t324 + (t451 * t788 - t421) * qJD(1) - t607;
t477 = (t313 - t243 * t451 + (-t242 - t329) * t454) * qJD(4);
t11 = -t111 * t364 + t112 * t363 + t171 * t207 - t173 * t206 - t211 * t273 - t212 * t272 + t291 * t93 - t292 * t92 + t477;
t21 = t111 * t417 - t161 * t291 + t173 * t362 - t207 * t283 + t212 * t591 - t230 * t363 - t273 * t275 + t375 * t92 + t469;
t501 = t11 * t173 * t678 + t21 * (t450 * t173 + t283 * t676);
t500 = -t52 * t211 - t779;
t497 = -t559 + t734;
t496 = qJD(4) * t383;
t495 = qJD(4) * t381;
t119 = t451 * t521 + t686;
t493 = (t119 * t454 - t120 * t451) * qJD(4);
t122 = t656 - t687;
t123 = -t296 * t451 + t655;
t492 = (t122 * t454 - t123 * t451) * qJD(4);
t174 = (-t306 * t451 - t308 * t454) * qJD(4);
t490 = -t428 * t450 - t675 + t734;
t489 = -t625 * t674 - t627 * t682;
t486 = (-Icges(7,5) * t309 - Icges(7,6) * t310) * t292 + (Icges(7,5) * t311 - Icges(7,6) * t312) * t291 + t315 * t375;
t485 = -t198 * t364 + t199 * t363 + t294 * t417;
t484 = (-Icges(6,5) * t333 - Icges(6,6) * t334) * t364 + (Icges(6,5) * t335 - Icges(6,6) * t336) * t363 + t340 * t417;
t483 = -t299 * t454 + t300 * t451;
t480 = t453 * t486;
t479 = t453 * t484;
t478 = (t450 * t642 + t453 * t643) * qJD(1);
t475 = qJD(1) * t554 - t329 + t359 + t605;
t474 = (Icges(7,1) * t311 - t167 - t701) * t291 + (-Icges(7,1) * t309 - t165 - t286) * t292 + (-t279 + t317) * t375;
t472 = (Icges(6,1) * t335 - t202 - t704) * t363 + (-Icges(6,1) * t333 - t200 - t320) * t364 + (-t298 + t346) * t417;
t102 = -t277 * t676 + t279 * t311 + t281 * t312;
t14 = t138 * t165 - t139 * t169 - t163 * t487 + t311 * t89 + t312 * t91 - t676 * t87;
t15 = t138 * t167 + t139 * t170 + t164 * t487 + t311 * t88 + t312 * t90 - t676 * t86;
t16 = t140 * t165 - t141 * t169 - t163 * t488 - t309 * t89 + t310 * t91 - t678 * t87;
t17 = t140 * t167 + t141 * t170 + t164 * t488 - t309 * t88 + t310 * t90 - t678 * t86;
t35 = t291 * t67 + t292 * t66 - t791;
t98 = t102 * t375;
t36 = t291 * t69 + t292 * t68 + t98;
t39 = t117 * t375 + t291 * t71 + t292 * t70;
t43 = t138 * t279 + t139 * t281 - t155 * t676 + t156 * t311 + t157 * t312 + t277 * t487;
t44 = t140 * t279 + t141 * t281 - t155 * t678 - t156 * t309 + t157 * t310 + t277 * t488;
t5 = t102 * t362 + t14 * t292 + t15 * t291 + t206 * t68 + t207 * t69 + t375 * t43;
t6 = t16 * t292 + t17 * t291 + t206 * t66 + t207 * t67 - t362 * t482 + t375 * t44;
t468 = ((qJD(4) * t550 + t43) * t450 + (qJD(1) * t551 + qJD(4) * t102 - t14 * t451 - t15 * t454) * t453) * t756 + (t311 * t764 + t474 * t312 - t454 * t480) * t757 + (-t309 * t764 + t310 * t474 - t451 * t480) * t755 + ((qJD(4) * t552 + t44) * t450 + (qJD(1) * t553 - qJD(4) * t482 - t16 * t451 - t17 * t454) * t453) * t754 + (t486 * t450 + (-t438 * t764 + t439 * t474) * t453) * t749 + t6 * t596 + (-t450 * t482 - t453 * t552) * t761 + (t102 * t450 - t453 * t550) * t760 + t39 * t585 + t5 * t595 + t362 * (t117 * t450 - t453 * t548) / 0.2e1 + ((qJD(4) * t548 + t51) * t450 + (qJD(1) * t549 + qJD(4) * t117 - t18 * t451 - t19 * t454) * t453) * t748 + (t708 + t713 + t714 + t721 + t722) * t745 + t790 * t36 + t789 * t35;
t79 = t208 * t363 - t210 * t364 + t491;
t80 = t307 * t364 + t476 - t796;
t465 = t79 * t524 + (t451 * t80 - t454 * t81) * t307;
t366 = t537 * qJD(4);
t367 = t540 * qJD(4);
t461 = -qJD(1) * t379 - t366 * t453 - t367 * t450 + (-t381 * t450 + t383 * t453) * qJD(4);
t459 = t483 * t450 - t453 * t766;
t458 = t763 * t453;
t457 = (-t163 * t292 + t164 * t291 + t277 * t375) * t450 - t765 * t453;
t431 = rSges(4,2) * t628;
t386 = rSges(3,2) * t451 + t728;
t351 = t388 * t454;
t339 = t454 * t372;
t332 = t454 * t571;
t331 = t451 * t571;
t323 = t333 * pkin(5);
t265 = t307 * t454;
t264 = t307 * t451;
t263 = t302 * t454;
t262 = t302 * t451;
t261 = t298 * t454;
t260 = t298 * t451;
t257 = qJD(1) * t778 - t437;
t256 = t436 + (-t385 + t386) * qJD(1);
t254 = t283 * t600;
t253 = t283 * t454;
t252 = t283 * t451;
t251 = t281 * t454;
t250 = t281 * t451;
t249 = t279 * t454;
t248 = t279 * t451;
t241 = t275 * t454;
t240 = t275 * t451;
t239 = rSges(6,1) * t335 - rSges(6,2) * t336;
t238 = -rSges(6,1) * t333 - rSges(6,2) * t334;
t229 = qJD(1) * t787 + qJD(3) * t451 - t437;
t228 = (-t385 + t578) * qJD(1) + t635;
t223 = t424 + (-qJD(1) * t580 - t322) * qJD(1);
t222 = qJD(1) * t637 + t648;
t185 = t454 * t519 - t341;
t175 = t185 * qJD(1);
t160 = (qJD(1) * t776 - t322) * qJD(1) + t513;
t159 = -qJ(3) * t677 + qJD(1) * (-rSges(4,3) * t629 + t431) + t609;
t116 = -t294 * t676 + t298 * t335 + t302 * t336;
t113 = t116 * t417;
t97 = t461 * t451 + t454 * t768;
t96 = -t451 * t768 + t461 * t454;
t95 = -qJD(4) * t520 - (-qJD(1) * t299 + t454 * t495) * t450 + (-qJD(1) * t303 + t454 * t496) * t453;
t94 = -qJD(4) * t521 - (qJD(1) * t300 + t451 * t495) * t450 + (t451 * t496 + (t454 * t540 - t698) * qJD(1)) * t453;
t65 = t175 + t492;
t64 = t493 + t622;
t50 = t182 * t298 + t183 * t302 - t213 * t678 - t216 * t333 + t219 * t334 + t294 * t488;
t49 = t180 * t298 + t181 * t302 - t213 * t676 + t216 * t335 + t219 * t336 + t294 * t487;
t45 = t121 * t417 + t363 * t85 + t364 * t84;
t41 = t363 * t75 + t364 * t74 + t113;
t40 = t363 * t73 + t364 * t72 - t792;
t37 = -t109 * t364 + t110 * t363 + t208 * t273 - t210 * t272 + t477;
t26 = -t103 * t678 - t105 * t333 + t107 * t334 + t182 * t202 + t183 * t205 + t199 * t488;
t25 = -t104 * t678 - t106 * t333 + t108 * t334 + t182 * t200 - t183 * t204 - t198 * t488;
t24 = -t103 * t676 + t105 * t335 + t107 * t336 + t180 * t202 + t181 * t205 + t199 * t487;
t23 = -t104 * t676 + t106 * t335 + t108 * t336 + t180 * t200 - t181 * t204 - t198 * t487;
t10 = t25 * t364 + t26 * t363 + t272 * t72 + t273 * t73 + t417 * t50 - t481 * t591;
t9 = t116 * t591 + t23 * t364 + t24 * t363 + t272 * t74 + t273 * t75 + t417 * t49;
t1 = [-((t178 + t184) * t451 + (t179 + t185) * t454) * t619 / 0.2e1 + (t175 + (t656 * t454 + (t451 * t799 - t119 - t655) * t451) * qJD(4)) * t584 + (-t622 + ((-t123 + t655 - t686) * t454 + (t120 - t122 - t284 - t687) * t451) * qJD(4) + t64) * t586 + (-(t475 - t80 - t796) * t81 - t712 * t364 + t47 * (-t208 + t420 + t442) + t80 * (t407 - t558 + t636) + t46 * (t422 + t777 + t647) + t81 * (t109 + t606 + t607) + (-t47 * pkin(7) + t46 * t738 * t453 + (t80 * (t567 + t725) - t81 * pkin(7)) * qJD(1)) * t454 + (-t46 * pkin(7) + (qJD(1) * t81 + t47) * t567 + (-qJD(3) + (t450 * t738 - t736) * qJD(4) - qJ(2) * qJD(1)) * t80) * t451) * m(6) + (-(qJD(1) * t578 - t228 + t605) * t229 + t160 * (t442 + t730) + t228 * t437 + t159 * t787 + t229 * (t431 + t606) + (-t228 * qJD(3) + t160 * t617) * t451 + (t228 * t617 * t454 + (t228 * (-rSges(4,2) - qJ(2)) + t229 * t617) * t451) * qJD(1)) * m(4) + t707 + t713 / 0.2e1 + t714 / 0.2e1 + t710 / 0.2e1 + t711 / 0.2e1 + (t35 + t791 + (-t69 + t802) * t292 + (t68 + t800) * t291) * t757 + (t98 + (-t67 - t800) * t292 + (t66 + t802) * t291) * t755 + (t40 + t792 + (-t75 + t803) * t364 + (t74 + t801) * t363) * t753 + (t113 + (-t73 - t801) * t364 + (t72 + t803) * t363) * t751 + t708 + (-qJD(4) * t519 + t366 * t450 - t367 * t453) * qJD(1) + (t44 + t36) * t754 - (t95 + t96) * t627 / 0.2e1 + t43 * t756 + t116 * t758 + t102 * t760 + t49 * t752 + (t50 + t41) * t750 + (t223 * (t451 * t740 + t442 + t728) + t256 * t437 + t222 * t778 + t257 * (t637 + t638) + (t256 * t740 * t454 + (t256 * (-rSges(3,3) - qJ(2)) - t257 * pkin(1)) * t451) * qJD(1) - (qJD(1) * t386 - t256 + t634) * t257) * m(3) + (t94 + t97 + t65) * t583 + (t22 * (-t171 + t442 + t608) + t21 * (t777 + t644 + t652) + (-t22 * pkin(7) - t21 * t724) * t454 + (t21 * t603 + t22 * t734) * t451 + (-t556 + t636 + (-t613 + (t490 + t724) * qJD(1)) * t454 + (t450 * t614 - qJD(3) + (-t428 * t453 + (-rSges(7,3) + t455) * t450) * qJD(4) + (-qJ(2) + t735) * qJD(1)) * t451) * t62 + (-t475 + t62 + t361 + t92 + t606 + ((-qJD(4) * t455 - t614) * t450 + t603 * qJD(1)) * t454 + (qJD(1) * t490 - t613) * t451 + t784) * t63) * m(7) - t482 * t761 - t481 * t759 + (-(-t133 + t356 + (-t306 + t554) * qJD(1) + t605) * t134 + t100 * t442 + t133 * t636 + t99 * (t777 + t640) + t134 * (t399 + t606) + (t100 * t739 - t134 * t611 + (t133 * t497 + t134 * t739) * qJD(1)) * t454 + (t100 * t497 + t133 * (-rSges(5,1) * t626 - qJD(3) + t611) + t99 * t739 + (t133 * (rSges(5,3) - qJ(2)) + t134 * t497) * qJD(1)) * t451) * m(5) + t718 / 0.2e1 + t719 / 0.2e1 + t721 / 0.2e1 + t722 / 0.2e1; 0.2e1 * (t21 * t742 + t720 / 0.2e1) * m(7) + 0.2e1 * (t716 / 0.2e1 - t717 / 0.2e1) * m(6) + 0.2e1 * (t100 * t743 + t742 * t99) * m(5) + 0.2e1 * (t159 * t742 + t160 * t743) * m(4) + 0.2e1 * (t222 * t742 + t223 * t743) * m(3); m(4) * (t159 * t451 + t160 * t454) + m(5) * t541 + m(6) * (t451 * t46 + t454 * t47) + m(7) * (t21 * t451 + t22 * t454); -(qJD(1) * t96 + (t451 ^ 2 * t770 - t769 * t793 + (-t122 * t451 - t123 * t454) * qJD(1)) * t781 + t5 + t9) * t451 / 0.2e1 + (qJD(1) * t97 + t10 + (-t770 * t793 + t769 * t454 ^ 2 + (-t119 * t451 - t120 * t454) * qJD(1)) * t781 + t6) * t454 / 0.2e1 + (t492 + t65 + t41 + t36) * t588 - t543 * t591 / 0.2e1 - t273 * t545 / 0.2e1 - t272 * t547 / 0.2e1 - t362 * t549 / 0.2e1 - t207 * t551 / 0.2e1 - t206 * t553 / 0.2e1 + qJD(1) * (-t95 * t451 + t94 * t454 + (-t178 * t451 - t179 * t454) * qJD(1)) / 0.2e1 + (0.2e1 * t174 * (-t225 * t454 - t226 * t451 + (-t306 * t454 + t308 * t451) * qJD(1)) - t531 * t370 + ((-t133 * t451 + t134 * t454) * qJD(1) + t541) * t388 - (-t133 * t349 + t134 * t351) * qJD(1) - (t174 * (-t349 * t451 - t351 * t454) - t531 * t559) * qJD(4)) * m(5) + ((t342 * t627 + t631) * t451 + (t478 + (-t341 * t451 + t459) * qJD(4)) * t454) * t586 + ((t341 * t625 - t631) * t454 + (t478 + (-t342 * t454 + t459) * qJD(4)) * t451) * t584 + (t22 * t674 + t62 * t339 + t21 * t682 + t63 * t645 + t52 * t313 + (t11 * (-t354 - t660) + t52 * (-t111 - t242 - t92) + (t52 * t610 + t779) * qJD(1) + t767) * t454 + (t21 * t654 + t63 * t664 + t11 * t610 + t52 * (-t243 + t709) + (t62 * (-t393 - t654) + t780) * qJD(1)) * t451 - t62 * (-t171 * t377 - t240 * t417 - t252 * t375 + t274 * t364 + t282 * t292 + t283 * t331 + t574) - t63 * (t173 * t377 + t241 * t417 + t253 * t375 - t274 * t363 - t282 * t291 - t283 * t332 + t646) - t52 * (t171 * t332 - t173 * t331 + t240 * t363 - t241 * t364 + t252 * t291 - t253 * t292 + t489) - ((t211 * t62 + t715) * t453 + (t52 * (-t211 * t454 - t212 * t451) + (t451 * t62 - t454 * t63) * t275) * t450) * qJD(5)) * m(7) - t377 * t39 / 0.2e1 - (t40 * t451 + t41 * t454) * t434 / 0.2e1 - (t493 + t64 + t40 + t35) * t629 / 0.2e1 + (t47 * t674 + t80 * t339 + t46 * t682 + t81 * t645 + (t47 * t307 + t80 * t224 + t37 * (-t210 - t354) + t712 * qJD(1)) * t454 + (t46 * t307 + t81 * t224 + t37 * t657 + t80 * (-t307 - t393) * qJD(1)) * t451 - t80 * (-t264 * t417 + t305 * t364 + t574) - t81 * (t265 * t417 - t305 * t363 + t646) - ((-t208 * t80 + t210 * t81) * t453 + t465 * t450) * qJD(5) + (t313 + (qJD(1) * t657 - t109 - t242) * t454 + (qJD(1) * t210 - t110 - t243) * t451 - t264 * t363 + t265 * t364 - t489) * t79) * m(6) + (-qJD(1) * t550 + t14 * t454 - t15 * t451) * t756 + ((t249 * t311 + t251 * t312) * t291 + t69 * t332 + (t248 * t311 + t250 * t312) * t292 + t68 * t331 + (t278 * t311 + t280 * t312) * t375 + t102 * t377 + t457 * t454) * t757 + (-qJD(1) * t542 + t27 * t454 - t28 * t451) * t746 + (-qJD(1) * t548 + t18 * t454 - t19 * t451) * t748 + (-qJD(1) * t546 + t25 * t454 - t26 * t451) * t750 + (-qJD(1) * t544 + t23 * t454 - t24 * t451) * t752 + ((t261 * t335 + t263 * t336) * t363 + (t260 * t335 + t262 * t336) * t364 + (t297 * t335 + t301 * t336) * t417 + (t116 * t453 + t684 * t74) * qJD(5) + ((qJD(5) * t75 + t485) * t450 + t458) * t454) * t753 + (-qJD(1) * t552 + t16 * t454 - t17 * t451) * t754 - t332 * t36 / 0.2e1 - t331 * t35 / 0.2e1 - qJD(1) * ((-t450 * t643 + t453 * t642) * qJD(1) + (t450 * t766 + t483 * t453) * qJD(4)) / 0.2e1 + ((-t249 * t309 + t251 * t310) * t291 + t67 * t332 + (-t248 * t309 + t250 * t310) * t292 + t66 * t331 + (-t278 * t309 + t280 * t310) * t375 - t482 * t377 + t457 * t451) * t755 + ((-t261 * t333 + t263 * t334) * t363 + (-t260 * t333 + t262 * t334) * t364 + (-t297 * t333 + t301 * t334) * t417 + (-t453 * t481 + t683 * t73) * qJD(5) + ((qJD(5) * t72 + t485) * t450 + t458) * t451) * t751 + (t117 * t377 + t70 * t331 + t71 * t332 + ((-t249 * t438 + t251 * t439 + t164) * t291 + (-t248 * t438 + t250 * t439 - t163) * t292 + (-t278 * t438 + t280 * t439 + t277) * t375) * t453 + t765 * t450) * t749 + (((-t261 * t449 + t263 * t452 + t199) * t363 + (-t260 * t449 + t262 * t452 - t198) * t364 + (-t297 * t449 + t301 * t452 + t294) * t417 + t121 * qJD(5)) * t453 + (qJD(5) * t542 - t763) * t450) * t747 - t45 * t624 / 0.2e1; (-t450 * t481 - t453 * t546) * t759 + (t707 + t710 + t711 + t718 + t719) * t745 + t468 + (t335 * t762 + t472 * t336 - t454 * t479) * t753 + t10 * t596 + ((qJD(4) * t546 + t50) * t450 + (qJD(1) * t547 - qJD(4) * t481 - t25 * t451 - t26 * t454) * t453) * t750 + ((qJD(4) * t544 + t49) * t450 + (qJD(1) * t545 + qJD(4) * t116 - t23 * t451 - t24 * t454) * t453) * t752 + (-t333 * t762 + t334 * t472 - t451 * t479) * t751 + (t484 * t450 + (-t449 * t762 + t452 * t472) * t453) * t747 + t9 * t595 + (t116 * t450 - t453 * t544) * t758 + ((qJD(4) * t542 + t54) * t450 + (qJD(1) * t543 + qJD(4) * t121 - t27 * t451 - t28 * t454) * t453) * t746 + (qJD(5) * (t121 * t450 - t453 * t542) + t45) * t585 + t790 * t41 + t789 * t40 + (-t62 * (t323 * t417 - t364 * t615 + t575) - t63 * (t324 * t417 + t363 * t615 + t576) - t52 * (-t323 * t363 - t324 * t364 + t577) + t62 * t254 + t63 * t612 + t52 * t570 + (t22 * t661 + t62 * t709 + t21 * t212 + t63 * t111 + (t500 * t454 + (t62 * t275 - t780) * t451) * qJD(4)) * t450 + ((t62 * t661 + t715) * qJD(4) + (t21 * t275 + t63 * t230 + t11 * t661 + t52 * t709 + (t52 * t212 - t62 * t654) * qJD(1)) * t454 + (qJD(1) * t500 + t11 * t212 + t52 * t111 - t767) * t451) * t453 + t501) * m(7) + ((qJD(4) * t465 + t81 * t109 - t80 * t110 - t47 * t208 + t46 * t210) * t450 + (t80 * (-qJD(4) * t208 - t224 * t451) + t81 * (qJD(4) * t210 + t224 * t454) - t37 * t524 + t79 * (t109 * t451 - t110 * t454 + t208 * t629 + t210 * t628) + (-t716 + t717 + (-t451 * t81 - t454 * t80) * qJD(1)) * t307) * t453 - t80 * (-t238 * t417 + t350 * t364) - t81 * (t239 * t417 - t350 * t363) - t79 * (t238 * t363 - t239 * t364)) * m(6); t468 + (-t22 * t171 * t450 + t62 * (-t450 * t93 + t254) + t63 * (-t283 * t599 + t612) + t52 * (-t173 * t600 + t570) + (t62 * (-qJD(4) * t171 - t161 * t451) + (-t11 * t171 - t52 * t93) * t454 + (-t720 + (-t451 * t63 - t454 * t62) * qJD(1)) * t283) * t453 + t501 - t52 * t577 - t575 * t62 - t576 * t63) * m(7);];
tauc  = t1(:);