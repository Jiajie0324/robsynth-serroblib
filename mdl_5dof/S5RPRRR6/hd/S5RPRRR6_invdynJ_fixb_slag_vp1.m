% Calculate vector of inverse dynamics joint torques for
% S5RPRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5,theta2]';
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
% tau [5x1]
%   joint torques of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:02
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S5RPRRR6_invdynJ_fixb_slag_vp1(qJ, qJD, qJDD, g, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR6_invdynJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR6_invdynJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRR6_invdynJ_fixb_slag_vp1: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRR6_invdynJ_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR6_invdynJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRRR6_invdynJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRRR6_invdynJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RPRRR6_invdynJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:00:57
% EndTime: 2019-12-31 19:01:39
% DurationCPUTime: 34.42s
% Computational Cost: add. (33481->1033), mult. (30324->1368), div. (0->0), fcn. (27715->10), ass. (0->525)
t437 = qJ(1) + pkin(9);
t430 = cos(t437);
t445 = -pkin(7) - pkin(6);
t400 = t430 * t445;
t443 = cos(qJ(3));
t434 = t443 * pkin(3);
t425 = t434 + pkin(2);
t429 = sin(t437);
t634 = -t429 * t425 - t400;
t441 = sin(qJ(1));
t738 = pkin(1) * t441;
t799 = t634 - t738;
t438 = qJ(3) + qJ(4);
t432 = cos(t438);
t680 = t429 * t432;
t606 = rSges(5,1) * t680;
t798 = -t606 + t799;
t444 = cos(qJ(1));
t435 = t444 * pkin(1);
t334 = rSges(3,1) * t429 + rSges(3,2) * t430;
t323 = -t334 - t738;
t439 = sin(qJ(5));
t664 = t432 * t439;
t442 = cos(qJ(5));
t670 = t430 * t442;
t298 = t429 * t664 + t670;
t663 = t432 * t442;
t672 = t430 * t439;
t299 = t429 * t663 - t672;
t544 = t299 * rSges(6,1) - t298 * rSges(6,2);
t431 = sin(t438);
t681 = t429 * t431;
t165 = -rSges(6,3) * t681 - t544;
t436 = qJD(3) + qJD(4);
t331 = t430 * t436;
t616 = qJD(5) * t431;
t264 = -t429 * t616 + t331;
t728 = rSges(6,1) * t442;
t543 = -rSges(6,2) * t439 + t728;
t274 = -rSges(6,3) * t432 + t431 * t543;
t734 = t431 * pkin(4);
t348 = -pkin(8) * t432 + t734;
t615 = qJD(5) * t432;
t392 = qJD(1) - t615;
t440 = sin(qJ(3));
t618 = qJD(3) * t440;
t588 = t430 * t618;
t560 = pkin(3) * t588;
t797 = t392 * t165 - t264 * t274 - t331 * t348 - t560;
t155 = Icges(6,5) * t299 - Icges(6,6) * t298 + Icges(6,3) * t681;
t278 = Icges(6,4) * t299;
t158 = -Icges(6,2) * t298 + Icges(6,6) * t681 + t278;
t277 = Icges(6,4) * t298;
t162 = -Icges(6,1) * t299 - Icges(6,5) * t681 + t277;
t795 = t158 * t439 + t162 * t442;
t74 = -t155 * t432 - t431 * t795;
t447 = qJD(1) ^ 2;
t607 = t447 * t435;
t796 = -t544 + t799;
t405 = qJD(3) * t429;
t330 = qJD(4) * t429 + t405;
t263 = t430 * t616 + t330;
t65 = t155 * t681 - t158 * t298 - t162 * t299;
t677 = t429 * t442;
t300 = -t430 * t664 + t677;
t679 = t429 * t439;
t301 = t430 * t663 + t679;
t674 = t430 * t431;
t157 = Icges(6,5) * t301 + Icges(6,6) * t300 + Icges(6,3) * t674;
t709 = Icges(6,4) * t301;
t160 = Icges(6,2) * t300 + Icges(6,6) * t674 + t709;
t279 = Icges(6,4) * t300;
t163 = Icges(6,1) * t301 + Icges(6,5) * t674 + t279;
t66 = t157 * t681 - t298 * t160 + t299 * t163;
t523 = Icges(6,5) * t442 - Icges(6,6) * t439;
t267 = -Icges(6,3) * t432 + t431 * t523;
t707 = Icges(6,4) * t442;
t525 = -Icges(6,2) * t439 + t707;
t269 = -Icges(6,6) * t432 + t431 * t525;
t708 = Icges(6,4) * t439;
t529 = Icges(6,1) * t442 - t708;
t271 = -Icges(6,5) * t432 + t431 * t529;
t95 = t267 * t681 - t269 * t298 + t271 * t299;
t28 = t263 * t66 - t264 * t65 + t392 * t95;
t67 = t155 * t674 + t300 * t158 - t162 * t301;
t68 = t157 * t674 + t300 * t160 + t301 * t163;
t96 = t267 * t674 + t269 * t300 + t271 * t301;
t29 = t263 * t68 - t264 * t67 + t96 * t392;
t608 = -qJDD(3) - qJDD(4);
t609 = qJDD(5) * t431;
t614 = qJD(5) * t436;
t611 = qJD(1) * qJD(3);
t395 = t429 * t611;
t610 = qJD(1) * qJD(4);
t628 = t429 * t610 + t395;
t119 = (t432 * t614 + t609) * t429 + (qJD(1) * t616 + t608) * t430 + t628;
t542 = -rSges(6,1) * t439 - rSges(6,2) * t442;
t665 = t432 * t436;
t172 = t543 * t665 + (rSges(6,3) * t436 + qJD(5) * t542) * t431;
t599 = t429 * t665;
t622 = qJD(1) * t431;
t482 = t430 * t622 + t599;
t668 = t431 * t436;
t600 = t429 * t668;
t621 = qJD(1) * t432;
t176 = t482 * pkin(8) + (t430 * t621 - t600) * pkin(4);
t242 = t430 * t608 + t628;
t424 = t432 * pkin(4);
t772 = t431 * pkin(8) + t424;
t307 = t772 * t436;
t315 = -qJDD(5) * t432 + t431 * t614 + qJDD(1);
t327 = -qJDD(3) * t430 + t395;
t662 = t443 * qJD(3) ^ 2;
t737 = pkin(3) * t440;
t473 = -pkin(3) * t430 * t662 + t327 * t737 - t607;
t293 = t772 * t429;
t418 = t430 * pkin(6);
t338 = pkin(2) * t429 - t418;
t237 = t338 + t634;
t574 = -t338 - t738;
t556 = t237 + t574;
t504 = -t293 + t556;
t417 = t429 * pkin(6);
t602 = pkin(3) * t618;
t373 = t429 * t602;
t624 = qJD(1) * t429;
t632 = t445 * t624 + t373;
t731 = pkin(2) - t425;
t194 = (-t430 * t731 - t417) * qJD(1) - t632;
t339 = t430 * pkin(2) + t417;
t325 = t339 * qJD(1);
t656 = -t194 - t325;
t667 = t431 * t439;
t471 = t392 * t442 + t436 * t667;
t559 = -qJD(5) + t621;
t139 = t429 * t471 - t559 * t672;
t666 = t431 * t442;
t470 = t392 * t439 - t436 * t666;
t140 = t429 * t470 + t559 * t670;
t545 = rSges(6,1) * t140 + rSges(6,2) * t139;
t90 = rSges(6,3) * t482 + t545;
t22 = t119 * t274 + t165 * t315 - t172 * t264 + t242 * t348 - t307 * t331 - t392 * t90 + (-t176 + t656) * qJD(1) + t504 * qJDD(1) + t473;
t166 = t301 * rSges(6,1) + t300 * rSges(6,2) + rSges(6,3) * t674;
t673 = t430 * t432;
t295 = pkin(4) * t673 + pkin(8) * t674;
t562 = t430 * t425 - t429 * t445;
t238 = t562 - t339;
t573 = t339 + t435;
t555 = t238 + t573;
t64 = t166 * t392 - t263 * t274 - t330 * t348 - t373 + (t295 + t555) * qJD(1);
t791 = t430 * (qJD(1) * t64 + t22);
t790 = -t165 + t293;
t789 = t166 + t295;
t700 = Icges(5,6) * t430;
t246 = Icges(5,4) * t680 - Icges(5,2) * t681 - t700;
t420 = Icges(5,4) * t432;
t344 = Icges(5,1) * t431 + t420;
t788 = -t344 * t429 - t246;
t526 = -Icges(5,2) * t431 + t420;
t247 = Icges(5,6) * t429 + t430 * t526;
t787 = -t344 * t430 - t247;
t710 = Icges(5,4) * t431;
t345 = Icges(5,1) * t432 - t710;
t249 = Icges(5,5) * t429 + t345 * t430;
t342 = Icges(5,2) * t432 + t710;
t786 = -t342 * t430 + t249;
t785 = t274 + t348;
t784 = t344 + t526;
t605 = rSges(6,1) * t666;
t604 = rSges(6,2) * t667;
t638 = rSges(6,3) * t680 + t429 * t604;
t220 = -t429 * t605 + t638;
t637 = rSges(6,3) * t673 + t430 * t604;
t221 = -t430 * t605 + t637;
t421 = t431 * rSges(6,3);
t275 = rSges(6,1) * t663 - rSges(6,2) * t664 + t421;
t368 = pkin(8) * t680;
t292 = -pkin(4) * t681 + t368;
t370 = pkin(8) * t673;
t294 = -pkin(4) * t674 + t370;
t619 = qJD(3) * t430;
t584 = -t237 * t405 + t238 * t619 + qJD(2);
t58 = -t165 * t263 + t166 * t264 + t293 * t330 + t295 * t331 + t584;
t586 = t430 * t615;
t587 = t429 * t615;
t783 = -t58 * (-t165 * t586 - t166 * t587 + t263 * t220 + t221 * t264 + t330 * t292 + t294 * t331) - t64 * (qJD(1) * t294 + t166 * t616 + t392 * t221 - t263 * t275 - t274 * t586 - t330 * t772) - g(1) * (t370 + t637) - g(2) * (t368 + t638);
t360 = Icges(5,4) * t681;
t705 = Icges(5,5) * t430;
t248 = Icges(5,1) * t680 - t360 - t705;
t690 = t246 * t431;
t514 = -t248 * t432 + t690;
t489 = t514 * t429;
t341 = Icges(5,5) * t432 - Icges(5,6) * t431;
t245 = Icges(5,3) * t429 + t341 * t430;
t654 = t429 * t245 + t249 * t673;
t782 = -t489 - t654;
t781 = qJD(1) * t292 - t165 * t616 + t220 * t392 + t264 * t275 - t274 * t587 + t331 * t772 + t785 * t624;
t780 = t28 * t429 + t29 * t430;
t346 = rSges(5,1) * t431 + rSges(5,2) * t432;
t290 = t346 * t429;
t291 = t346 * t430;
t773 = t432 * rSges(5,1) - rSges(5,2) * t431;
t774 = -rSges(5,2) * t681 - t430 * rSges(5,3);
t250 = t606 + t774;
t412 = t429 * rSges(5,3);
t251 = rSges(5,1) * t673 - rSges(5,2) * t674 + t412;
t80 = t250 * t330 + t251 * t331 + t584;
t484 = -t331 * t346 - t560;
t505 = -t250 + t556;
t97 = qJD(1) * t505 + t484;
t98 = -t330 * t346 - t373 + (t251 + t555) * qJD(1);
t779 = -(qJD(1) * t290 - t331 * t773) * t97 - t80 * (-t330 * t290 - t291 * t331) - t98 * (-qJD(1) * t291 - t330 * t773);
t776 = t431 * (-pkin(4) - t728);
t329 = qJD(1) * t338;
t775 = qJD(1) * t237 - t329;
t413 = t429 * rSges(4,3);
t669 = t430 * t443;
t671 = t430 * t440;
t266 = rSges(4,1) * t669 - rSges(4,2) * t671 + t413;
t205 = t266 + t573;
t335 = t430 * rSges(3,1) - rSges(3,2) * t429;
t324 = t335 + t435;
t433 = Icges(4,4) * t443;
t527 = -Icges(4,2) * t440 + t433;
t379 = Icges(4,1) * t440 + t433;
t770 = g(1) * t430 + g(2) * t429;
t676 = t429 * t443;
t678 = t429 * t440;
t698 = Icges(4,3) * t430;
t257 = Icges(4,5) * t676 - Icges(4,6) * t678 - t698;
t388 = Icges(4,4) * t678;
t706 = Icges(4,5) * t430;
t261 = Icges(4,1) * t676 - t388 - t706;
t701 = Icges(4,6) * t430;
t259 = Icges(4,4) * t676 - Icges(4,2) * t678 - t701;
t688 = t259 * t440;
t512 = -t261 * t443 + t688;
t105 = -t430 * t257 - t429 * t512;
t340 = Icges(5,5) * t431 + Icges(5,6) * t432;
t685 = t340 * t430;
t689 = t247 * t431;
t697 = Icges(5,3) * t430;
t768 = -t436 * t685 + (-t249 * t432 - t341 * t429 + t689 + t697) * qJD(1);
t627 = qJD(1) * t245;
t686 = t340 * t429;
t767 = qJD(1) * t514 - t436 * t686 + t627;
t376 = Icges(4,5) * t443 - Icges(4,6) * t440;
t375 = Icges(4,5) * t440 + Icges(4,6) * t443;
t486 = qJD(3) * t375;
t711 = Icges(4,4) * t440;
t380 = Icges(4,1) * t443 - t711;
t262 = Icges(4,5) * t429 + t380 * t430;
t260 = Icges(4,6) * t429 + t430 * t527;
t687 = t260 * t440;
t511 = -t262 * t443 + t687;
t766 = -t430 * t486 + (-t376 * t429 + t511 + t698) * qJD(1);
t258 = Icges(4,3) * t429 + t376 * t430;
t626 = qJD(1) * t258;
t765 = qJD(1) * t512 - t429 * t486 + t626;
t508 = t342 * t431 - t344 * t432;
t764 = qJD(1) * t508 + t341 * t436;
t377 = Icges(4,2) * t443 + t711;
t506 = t377 * t440 - t379 * t443;
t763 = t506 * qJD(1) + t376 * qJD(3);
t643 = -Icges(4,2) * t676 + t261 - t388;
t645 = t379 * t429 + t259;
t762 = -t440 * t643 - t443 * t645;
t490 = t523 * t432;
t509 = -t269 * t439 + t271 * t442;
t517 = -t160 * t439 + t163 * t442;
t761 = t263 * (-t267 * t430 - t517) - t264 * (-t267 * t429 + t795) + t392 * (Icges(6,3) * t431 + t490 - t509);
t524 = -Icges(6,2) * t442 - t708;
t760 = t263 * (-Icges(6,2) * t301 + t163 + t279) - t264 * (-Icges(6,2) * t299 - t162 - t277) + t392 * (t524 * t431 + t271);
t759 = qJD(1) * t784 + t330 * t786 - t331 * (-Icges(5,2) * t680 + t248 - t360);
t326 = qJDD(3) * t429 + t430 * t611;
t241 = qJDD(4) * t429 + t430 * t610 + t326;
t593 = t429 * t622;
t597 = t430 * t665;
t480 = -t593 + t597;
t118 = qJD(5) * t480 + t430 * t609 + t241;
t758 = t118 / 0.2e1;
t757 = t119 / 0.2e1;
t756 = t241 / 0.2e1;
t755 = t242 / 0.2e1;
t754 = -t263 / 0.2e1;
t753 = t263 / 0.2e1;
t752 = -t264 / 0.2e1;
t751 = t264 / 0.2e1;
t750 = t315 / 0.2e1;
t749 = t326 / 0.2e1;
t748 = t327 / 0.2e1;
t747 = -t330 / 0.2e1;
t746 = t330 / 0.2e1;
t745 = -t331 / 0.2e1;
t744 = t331 / 0.2e1;
t743 = -t392 / 0.2e1;
t742 = t392 / 0.2e1;
t741 = t429 / 0.2e1;
t740 = -t430 / 0.2e1;
t739 = -rSges(6,3) - pkin(8);
t733 = -qJD(1) / 0.2e1;
t732 = qJD(1) / 0.2e1;
t109 = -t267 * t432 + t431 * t509;
t522 = -Icges(6,5) * t439 - Icges(6,6) * t442;
t167 = t436 * t490 + (Icges(6,3) * t436 + qJD(5) * t522) * t431;
t491 = t525 * t432;
t168 = t436 * t491 + (Icges(6,6) * t436 + qJD(5) * t524) * t431;
t492 = t529 * t432;
t528 = -Icges(6,1) * t439 - t707;
t169 = t436 * t492 + (Icges(6,5) * t436 + qJD(5) * t528) * t431;
t47 = (t436 * t509 - t167) * t432 + (-t168 * t439 + t169 * t442 + t267 * t436 + (-t269 * t442 - t271 * t439) * qJD(5)) * t431;
t730 = t109 * t315 + t47 * t392;
t729 = rSges(4,1) * t443;
t84 = Icges(6,5) * t140 + Icges(6,6) * t139 + Icges(6,3) * t482;
t86 = Icges(6,4) * t140 + Icges(6,2) * t139 + Icges(6,6) * t482;
t88 = Icges(6,1) * t140 + Icges(6,4) * t139 + Icges(6,5) * t482;
t20 = (-t436 * t795 - t84) * t432 + (t155 * t436 - t439 * t86 + t442 * t88 + (-t158 * t442 + t162 * t439) * qJD(5)) * t431;
t725 = t20 * t264;
t137 = t430 * t471 + t559 * t679;
t138 = t430 * t470 - t559 * t677;
t83 = Icges(6,5) * t138 + Icges(6,6) * t137 + Icges(6,3) * t480;
t85 = Icges(6,4) * t138 + Icges(6,2) * t137 + Icges(6,6) * t480;
t87 = Icges(6,1) * t138 + Icges(6,4) * t137 + Icges(6,5) * t480;
t21 = (t436 * t517 - t83) * t432 + (t157 * t436 - t439 * t85 + t442 * t87 + (-t160 * t442 - t163 * t439) * qJD(5)) * t431;
t724 = t21 * t263;
t718 = t429 * t64;
t717 = t430 * t98;
t716 = t74 * t119;
t75 = -t157 * t432 + t431 * t517;
t715 = t75 * t118;
t714 = qJDD(1) / 0.2e1;
t695 = qJD(1) * t58;
t629 = rSges(4,2) * t678 + t430 * rSges(4,3);
t265 = rSges(4,1) * t676 - t629;
t554 = -t265 + t574;
t381 = rSges(4,1) * t440 + rSges(4,2) * t443;
t589 = t381 * t619;
t130 = qJD(1) * t554 - t589;
t693 = t130 * t429;
t692 = t130 * t430;
t131 = qJD(1) * t205 - t381 * t405;
t317 = t381 * t430;
t691 = t131 * t317;
t684 = t342 * t436;
t683 = t375 * t429;
t682 = t375 * t430;
t657 = -t172 - t307;
t244 = Icges(5,5) * t680 - Icges(5,6) * t681 - t697;
t655 = -t429 * t244 - t248 * t673;
t652 = -t429 * t237 + t430 * t238;
t651 = t429 * t250 + t430 * t251;
t650 = -t429 * t257 - t261 * t669;
t649 = t429 * t258 + t262 * t669;
t644 = -t379 * t430 - t260;
t642 = -t377 * t430 + t262;
t623 = qJD(1) * t430;
t635 = rSges(5,2) * t593 + rSges(5,3) * t623;
t620 = qJD(1) * t440;
t633 = rSges(4,2) * t429 * t620 + rSges(4,3) * t623;
t631 = -t377 + t380;
t630 = t379 + t527;
t625 = qJD(1) * t376;
t617 = qJD(3) * t443;
t128 = -t429 * t508 - t685;
t613 = t128 * qJD(1);
t186 = -t429 * t506 - t682;
t612 = t186 * qJD(1);
t601 = pkin(3) * t617;
t598 = t430 * t668;
t481 = -t429 * t621 - t598;
t149 = rSges(5,1) * t481 - rSges(5,2) * t597 + t635;
t493 = t346 * t436;
t150 = -t429 * t493 + (t430 * t773 + t412) * qJD(1);
t596 = t430 * t149 + t429 * t150 + t250 * t623;
t595 = t138 * rSges(6,1) + t137 * rSges(6,2) + rSges(6,3) * t597;
t401 = pkin(6) * t623;
t193 = -t560 - t401 + (t429 * t731 - t400) * qJD(1);
t594 = t430 * t193 + t429 * t194 - t237 * t623;
t591 = t430 * t620;
t583 = -pkin(2) - t729;
t581 = t624 / 0.2e1;
t580 = t623 / 0.2e1;
t579 = -t405 / 0.2e1;
t578 = t405 / 0.2e1;
t577 = -t619 / 0.2e1;
t576 = t619 / 0.2e1;
t483 = -t346 - t737;
t572 = t440 * (-t429 ^ 2 - t430 ^ 2);
t571 = (-t429 * t526 + t700) * qJD(1) + t786 * t436;
t570 = qJD(1) * t247 + t248 * t436 - t429 * t684;
t569 = (-t345 * t429 + t705) * qJD(1) + t787 * t436;
t568 = qJD(1) * t249 + t436 * t788;
t234 = t262 * t676;
t567 = t430 * t258 - t234;
t566 = -t244 + t689;
t565 = -t257 + t687;
t564 = t784 * t436;
t563 = t345 * t436 - t684;
t558 = t429 * t790 + t430 * t789;
t557 = qJDD(1) * t435 - t447 * t738;
t552 = -t785 - t737;
t306 = t773 * t436;
t551 = -t306 - t601;
t206 = t249 * t680;
t549 = t247 * t681 - t206;
t548 = t435 + t562;
t384 = rSges(2,1) * t444 - rSges(2,2) * t441;
t382 = rSges(2,1) * t441 + rSges(2,2) * t444;
t383 = -rSges(4,2) * t440 + t729;
t152 = t260 * t443 + t262 * t440;
t487 = qJD(3) * t377;
t182 = -t430 * t487 + (-t429 * t527 + t701) * qJD(1);
t488 = qJD(3) * t379;
t184 = -t430 * t488 + (-t380 * t429 + t706) * qJD(1);
t454 = -qJD(3) * t152 - t182 * t440 + t184 * t443 + t626;
t151 = t259 * t443 + t261 * t440;
t183 = qJD(1) * t260 - t429 * t487;
t185 = qJD(1) * t262 - t429 * t488;
t455 = qJD(1) * t257 - qJD(3) * t151 - t183 * t440 + t185 * t443;
t541 = t429 * (t429 * t766 + t454 * t430) - t430 * (t429 * t765 + t455 * t430);
t540 = t429 * (t454 * t429 - t430 * t766) - t430 * (t455 * t429 - t430 * t765);
t63 = qJD(1) * t504 + t797;
t539 = t430 * t63 + t718;
t538 = t429 * t66 - t430 * t65;
t537 = t429 * t65 + t430 * t66;
t536 = t429 * t68 - t430 * t67;
t535 = t429 * t67 + t430 * t68;
t534 = t429 * t75 - t430 * t74;
t533 = t429 * t74 + t430 * t75;
t532 = -t429 * t98 - t430 * t97;
t106 = -t260 * t678 - t567;
t521 = -t105 * t430 + t106 * t429;
t107 = -t259 * t671 - t650;
t108 = -t260 * t671 + t649;
t520 = -t107 * t430 + t108 * t429;
t519 = -t131 * t429 - t692;
t516 = -t165 * t430 - t166 * t429;
t189 = -rSges(4,2) * t430 * t617 + (-t443 * t624 - t588) * rSges(4,1) + t633;
t316 = t381 * t429;
t190 = -qJD(3) * t316 + (t383 * t430 + t413) * qJD(1);
t515 = t189 * t430 + t190 * t429;
t116 = t246 * t432 + t248 * t431;
t510 = t265 * t429 + t266 * t430;
t507 = t377 * t443 + t379 * t440;
t503 = -t601 + t657;
t333 = pkin(8) * t597;
t175 = pkin(4) * t481 - pkin(8) * t593 + t333;
t89 = -rSges(6,3) * t593 + t595;
t502 = t790 * t623 + (t175 + t89) * t430 + (t176 + t90) * t429;
t500 = t431 * t739 - t424;
t494 = qJD(1) * (-pkin(2) * t624 + t401) + qJDD(1) * t339 + t557;
t485 = t193 * t619 + t194 * t405 - t326 * t237 - t238 * t327 + qJDD(2);
t479 = t275 + t772;
t477 = -t155 * t264 + t157 * t263 + t267 * t392;
t476 = (-Icges(6,5) * t298 - Icges(6,6) * t299) * t264 - (Icges(6,5) * t300 - Icges(6,6) * t301) * t263 - t522 * t431 * t392;
t475 = qJD(1) * t341 - t330 * t685 + t331 * t686;
t474 = -t440 * t642 + t443 * t644;
t472 = t431 * t476;
t464 = (-t440 * t630 + t443 * t631) * qJD(1);
t461 = (Icges(6,1) * t300 - t160 - t709) * t263 - (-Icges(6,1) * t298 - t158 - t278) * t264 + (t528 * t431 - t269) * t392;
t459 = t787 * t330 - t788 * t331 + (-t342 + t345) * qJD(1);
t458 = qJD(1) * t244 - t431 * t570 + t432 * t568;
t457 = -t431 * t571 + t432 * t569 + t627;
t456 = qJD(1) * t340 - t431 * t564 + t432 * t563;
t351 = t527 * qJD(3);
t352 = t380 * qJD(3);
t453 = qJD(1) * t375 - qJD(3) * t507 - t351 * t440 + t352 * t443;
t452 = qJD(1) * t193 + qJDD(1) * t238 + (-t326 * t440 - t429 * t662) * pkin(3) + t494;
t100 = -t244 * t430 - t489;
t101 = -t245 * t430 - t549;
t102 = -t246 * t674 - t655;
t103 = -t247 * t674 + t654;
t117 = t247 * t432 + t249 * t431;
t129 = -t430 * t508 + t686;
t16 = t137 * t158 - t138 * t162 + t155 * t480 + t300 * t86 + t301 * t88 + t674 * t84;
t17 = t137 * t160 + t138 * t163 + t157 * t480 + t300 * t85 + t301 * t87 + t674 * t83;
t18 = t139 * t158 - t140 * t162 + t155 * t482 - t298 * t86 + t299 * t88 + t681 * t84;
t19 = t139 * t160 + t140 * t163 + t157 * t482 - t298 * t85 + t299 * t87 + t681 * t83;
t211 = t269 * t429;
t212 = t269 * t430;
t213 = t271 * t429;
t214 = t271 * t430;
t270 = Icges(6,6) * t431 + t491;
t272 = Icges(6,5) * t431 + t492;
t38 = t137 * t269 + t138 * t271 + t167 * t674 + t168 * t300 + t169 * t301 + t267 * t480;
t3 = t118 * t68 + t119 * t67 - t16 * t264 + t17 * t263 + t315 * t96 + t38 * t392;
t32 = t109 * t392 + t263 * t75 - t264 * t74;
t39 = t139 * t269 + t140 * t271 + t167 * t681 - t168 * t298 + t169 * t299 + t267 * t482;
t4 = t118 * t66 + t119 * t65 - t18 * t264 + t19 * t263 + t315 * t95 + t39 * t392;
t41 = t429 * t767 + t458 * t430;
t42 = t429 * t768 + t457 * t430;
t43 = t458 * t429 - t430 * t767;
t44 = t457 * t429 - t430 * t768;
t449 = -t431 * t759 + t459 * t432;
t450 = t761 * t431;
t56 = -t100 * t331 + t101 * t330 + t613;
t121 = t129 * qJD(1);
t57 = -t102 * t331 + t103 * t330 + t121;
t69 = t431 * t568 + t432 * t570;
t70 = t431 * t569 + t432 * t571;
t71 = t429 * t764 + t456 * t430;
t72 = t456 * t429 - t430 * t764;
t451 = -t32 * t616 / 0.2e1 + t538 * t757 + t536 * t758 + t534 * t750 + ((t212 * t298 - t214 * t299) * t263 - (t211 * t298 - t213 * t299) * t264 + (-t270 * t298 + t272 * t299) * t392 + (t431 * t95 + t66 * t673) * qJD(5) + ((qJD(5) * t65 + t477) * t432 + t450) * t429) * t751 + (qJD(1) * t537 - t18 * t430 + t19 * t429) * t752 + (qJD(1) * t535 - t16 * t430 + t17 * t429) * t753 + ((-t212 * t300 - t214 * t301) * t263 - (-t211 * t300 - t213 * t301) * t264 + (t270 * t300 + t272 * t301) * t392 + (t431 * t96 + t67 * t680) * qJD(5) + ((qJD(5) * t68 + t477) * t432 + t450) * t430) * t754 + (-t100 * t430 + t101 * t429) * t755 + (-t102 * t430 + t103 * t429) * t756 + (qJD(1) * t533 - t20 * t430 + t21 * t429) * t742 + (t429 * t449 - t430 * t475) * t744 + (t429 * t44 - t43 * t430 + (t100 * t429 + t101 * t430) * qJD(1)) * t745 + (-t41 * t430 + t42 * t429 + (t102 * t429 + t103 * t430) * qJD(1)) * t746 + (t429 * t475 + t430 * t449) * t747 + (t429 * t70 - t430 * t69 + (t116 * t429 + t117 * t430) * qJD(1)) * t732 + (-t116 * t430 + t117 * t429) * t714 + (t459 * t431 + t432 * t759) * t733 + (((t212 * t439 - t214 * t442 + t157) * t263 - (t211 * t439 - t213 * t442 + t155) * t264 + (-t270 * t439 + t272 * t442 + t267) * t392 + t109 * qJD(5)) * t431 + (qJD(5) * t533 - t761) * t432) * t743 + (qJD(1) * t71 + qJDD(1) * t129 + t102 * t242 + t103 * t241 + t330 * t42 - t331 * t41 + t3) * t741 + (qJD(1) * t72 + qJDD(1) * t128 + t100 * t242 + t101 * t241 + t330 * t44 - t331 * t43 + t4) * t740 + (t56 + t28) * t581 + (t57 + t29) * t580 - t780 * t615 / 0.2e1;
t354 = t383 * qJD(3);
t321 = t542 * t431;
t203 = rSges(6,1) * t300 - rSges(6,2) * t301;
t202 = -rSges(6,1) * t298 - rSges(6,2) * t299;
t187 = -t430 * t506 + t683;
t177 = t187 * qJD(1);
t127 = qJD(3) * t510 + qJD(2);
t93 = t453 * t429 - t430 * t763;
t92 = t429 * t763 + t453 * t430;
t79 = qJD(1) * t189 + qJDD(1) * t266 - t326 * t381 - t354 * t405 + t494;
t78 = -t607 - t354 * t619 + t327 * t381 + (-t190 - t325) * qJD(1) + t554 * qJDD(1);
t77 = -qJD(3) * t511 + t182 * t443 + t184 * t440;
t76 = -t512 * qJD(3) + t183 * t443 + t185 * t440;
t73 = qJD(3) * t515 + t265 * t326 - t266 * t327 + qJDD(2);
t62 = qJD(3) * t520 + t177;
t61 = qJD(3) * t521 + t612;
t55 = qJD(1) * t149 + qJDD(1) * t251 - t241 * t346 - t306 * t330 + t452;
t54 = t242 * t346 - t306 * t331 + (-t150 + t656) * qJD(1) + t505 * qJDD(1) + t473;
t37 = t149 * t331 + t150 * t330 + t241 * t250 - t242 * t251 + t485;
t23 = qJD(1) * t175 + qJDD(1) * t295 - t118 * t274 + t166 * t315 - t172 * t263 - t241 * t348 - t307 * t330 + t392 * t89 + t452;
t15 = -t118 * t165 - t119 * t166 + t175 * t331 + t176 * t330 + t241 * t293 - t242 * t295 + t263 * t90 + t264 * t89 + t485;
t1 = [(t61 - t612 + ((t430 * t565 + t108 - t649) * t430 + (t429 * t565 + t107 + t567) * t429) * qJD(3)) * t579 + (t131 * (t401 + t633) + (t381 * t693 - t691) * qJD(3) + ((-t130 * t444 - t131 * t441) * pkin(1) + (-pkin(2) - t383) * t692 + (t130 * (-rSges(4,3) - pkin(6)) + t131 * t583) * t429) * qJD(1) - (-t589 - t130 - t329 + (-t265 - t738) * qJD(1)) * t131 + (t79 - g(2)) * t205 + (t78 - g(1)) * (t583 * t429 + t418 + t629 - t738)) * m(4) + (t128 + t116) * t755 + (t186 + t151) * t748 + (-qJD(3) * t506 + t351 * t443 + t352 * t440 + t431 * t563 + t432 * t564) * qJD(1) + (t70 + t71) * t746 + (t77 + t92) * t578 + (t187 + t152) * t749 + t715 / 0.2e1 + t716 / 0.2e1 + (t117 + t129) * t756 + (m(3) * (t323 ^ 2 + t335 * t324) + t507 + m(2) * (t382 ^ 2 + t384 ^ 2) + Icges(2,3) + Icges(3,3) + t342 * t432 + t344 * t431) * qJDD(1) + (t62 + t76 + t93) * t577 - m(2) * (-g(1) * t382 + g(2) * t384) + t95 * t757 + t96 * t758 + t39 * t752 + t38 * t753 + (-(-t63 + (-t293 - t738) * qJD(1) + t775 + t797) * t64 - (t500 * t429 + t796) * g(1) + t22 * t796 + t63 * (-t545 + t632) + t64 * (-pkin(4) * t598 + t333 - t560 + t595) + (t22 * t500 + t63 * (t432 * t739 + t734) * t436) * t429 + ((-t441 * t64 - t444 * t63) * pkin(1) + (t63 * (-t425 - t772 - t421) - t64 * t445) * t430 + (-t425 + t500) * t718) * qJD(1) + (t23 - g(2)) * (t548 + t789)) * m(6) + t724 / 0.2e1 - t725 / 0.2e1 + (t69 + t72 + t57) * t745 + t730 + (t56 - t613 + (t103 + t782) * t331 + (t566 * t429 + t102 - t206) * t330 + ((t245 + t514) * t330 + t566 * t331) * t430) * t747 + (t177 + ((t106 - t234 + (t258 + t688) * t430 + t650) * t430 + t649 * t429) * qJD(3)) * t576 + (t751 + t752) * t29 + ((-t493 - t602) * t717 + (rSges(5,1) * t600 + rSges(5,2) * t599 + t632 + (-t412 - t435 + (-t425 - t773) * t430) * qJD(1)) * t97 + (t635 + t97 - t484 - t775 + (t250 + t738 + t798) * qJD(1)) * t98 + (t55 - g(2)) * (t251 + t548) + (t54 - g(1)) * (-t774 + t798)) * m(5) + ((-t334 * t447 - g(2) + t557) * t324 + (-g(1) - t607 + (-0.2e1 * t335 - t435 + t324) * t447) * t323) * m(3) + (t121 + (t101 + (t245 + t690) * t430 + t549 + t655) * t331 + (-t430 * t566 + t100 - t782) * t330) * t744; m(3) * qJDD(2) + m(4) * t73 + m(5) * t37 + m(6) * t15 + (-m(3) - m(4) - m(5) - m(6)) * g(3); ((t440 * t631 + t443 * t630) * qJD(1) + ((t429 * t642 - t430 * t643) * t443 + (t429 * t644 + t430 * t645) * t440) * qJD(3)) * t733 + t61 * t581 + t451 + ((-t619 * t683 - t625) * t430 + (t464 + (t474 * t429 + (t682 - t762) * t430) * qJD(3)) * t429) * t576 + (qJD(1) * t92 + qJD(3) * t541 + qJDD(1) * t187 + t107 * t327 + t108 * t326) * t741 + (qJD(1) * t93 + qJD(3) * t540 + qJDD(1) * t186 + t105 * t327 + t106 * t326) * t740 + ((-t405 * t682 + t625) * t429 + (t464 + (-t762 * t430 + (t683 + t474) * t429) * qJD(3)) * t430) * t579 + ((t105 * t429 + t106 * t430) * qJD(1) + t540) * t577 + ((t107 * t429 + t108 * t430) * qJD(1) + t541) * t578 + t520 * t749 + t521 * t748 + (-t151 * t430 + t152 * t429) * t714 + t62 * t580 + (t429 * t77 - t430 * t76 + (t151 * t429 + t152 * t430) * qJD(1)) * t732 + (t15 * (t558 + t652) + t58 * (t502 + t594) + t552 * t791 + (t23 * t552 + t64 * t503 + (-t238 - t789) * t695) * t429 - g(3) * (t434 + t479) - t770 * (-t737 + t776) - (-t64 * t591 + (-t443 * t539 + t572 * t58) * qJD(3)) * pkin(3) + (t430 * t503 + t781) * t63 + t783) * m(6) + (-(-t98 * t591 + (t443 * t532 + t572 * t80) * qJD(3)) * pkin(3) + t37 * (t651 + t652) + t80 * (t594 + t596) + (t551 * t97 + (qJD(1) * t98 + t54) * t483) * t430 + (t55 * t483 + t98 * t551 + (t97 * t346 + t80 * (-t238 - t251)) * qJD(1)) * t429 - g(3) * (t773 + t434) - t770 * t483 + t779) * m(5) + (g(1) * t317 + g(2) * t316 - g(3) * t383 + t73 * t510 + t127 * ((t265 * t430 - t266 * t429) * qJD(1) + t515) + t519 * t354 + (-t79 * t429 - t78 * t430 + (-t131 * t430 + t693) * qJD(1)) * t381 - (t130 * t316 - t691) * qJD(1) - (t127 * (-t316 * t429 - t317 * t430) + t519 * t383) * qJD(3)) * m(4); t451 + (t15 * t558 + t58 * t502 - t785 * t791 + (-t23 * t785 + t64 * t657 - t695 * t789) * t429 - g(3) * t479 - t770 * t776 + (t430 * t657 + t781) * t63 + t783) * m(6) + (g(1) * t291 + g(2) * t290 - g(3) * t773 + t37 * t651 + t80 * (-t251 * t624 + t596) + t532 * t306 + (-t55 * t429 - t54 * t430 + (t429 * t97 - t717) * qJD(1)) * t346 + t779) * m(5); -t29 * t593 / 0.2e1 + t3 * t674 / 0.2e1 + (t431 * t535 - t432 * t96) * t758 + ((t436 * t535 - t38) * t432 + (-qJD(1) * t536 + t16 * t429 + t17 * t430 + t436 * t96) * t431) * t753 + t431 * t28 * t580 + t4 * t681 / 0.2e1 + (t431 * t537 - t432 * t95) * t757 + ((t436 * t537 - t39) * t432 + (-qJD(1) * t538 + t18 * t429 + t19 * t430 + t436 * t95) * t431) * t752 + t32 * t668 / 0.2e1 - t432 * (t715 + t716 + t724 - t725 + t730) / 0.2e1 + (-t109 * t432 + t431 * t533) * t750 + ((t436 * t533 - t47) * t432 + (-qJD(1) * t534 + t109 * t436 + t20 * t429 + t21 * t430) * t431) * t742 + (t300 * t760 + t461 * t301 - t430 * t472) * t754 + (-t298 * t760 + t299 * t461 - t429 * t472) * t751 + (t476 * t432 + (-t439 * t760 + t442 * t461) * t431) * t743 + t780 * t665 / 0.2e1 + ((-t22 * t165 - t23 * t166 + t63 * t90 - t64 * t89 + (t58 * t516 + (t429 * t63 - t430 * t64) * t274) * t436) * t432 + (t63 * (t165 * t436 + t172 * t429) + t64 * (t166 * t436 - t172 * t430) + t15 * t516 + t58 * (t165 * t624 - t166 * t623 - t429 * t89 + t430 * t90) + (qJD(1) * t539 + t22 * t429 - t23 * t430) * t274) * t431 - t63 * (-t202 * t392 - t264 * t321) - t64 * (t203 * t392 - t263 * t321) - t58 * (t202 * t263 + t203 * t264) - g(1) * t203 - g(2) * t202 - g(3) * t321) * m(6);];
tau = t1;