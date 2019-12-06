% Calculate vector of centrifugal and Coriolis load on the joints for
% S5PRRPR4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d5,theta1,theta4]';
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
% Datum: 2019-12-05 16:24
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5PRRPR4_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRPR4_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRPR4_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRRPR4_coriolisvecJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRRPR4_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRRPR4_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5PRRPR4_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:21:29
% EndTime: 2019-12-05 16:23:10
% DurationCPUTime: 73.32s
% Computational Cost: add. (28497->1115), mult. (39701->1579), div. (0->0), fcn. (37927->10), ass. (0->511)
t434 = qJ(3) + pkin(9);
t425 = sin(t434);
t426 = cos(t434);
t436 = cos(pkin(8));
t435 = sin(pkin(8));
t441 = cos(qJ(2));
t673 = t435 * t441;
t333 = -t425 * t673 - t426 * t436;
t334 = -t436 * t425 + t426 * t673;
t439 = sin(qJ(2));
t674 = t435 * t439;
t167 = Icges(5,5) * t334 + Icges(5,6) * t333 + Icges(5,3) * t674;
t440 = cos(qJ(3));
t668 = t440 * t441;
t438 = sin(qJ(3));
t672 = t436 * t438;
t377 = t435 * t668 - t672;
t669 = t438 * t441;
t516 = t435 * t669 + t436 * t440;
t214 = Icges(4,5) * t377 - Icges(4,6) * t516 + Icges(4,3) * t674;
t772 = t167 + t214;
t670 = t436 * t441;
t335 = -t425 * t670 + t426 * t435;
t336 = t425 * t435 + t426 * t670;
t671 = t436 * t439;
t168 = Icges(5,5) * t336 + Icges(5,6) * t335 + Icges(5,3) * t671;
t675 = t435 * t438;
t379 = t436 * t668 + t675;
t517 = -t435 * t440 + t436 * t669;
t215 = Icges(4,5) * t379 - Icges(4,6) * t517 + Icges(4,3) * t671;
t771 = t168 + t215;
t804 = Icges(4,3) + Icges(5,3);
t536 = Icges(5,5) * t426 - Icges(5,6) * t425;
t303 = -Icges(5,3) * t441 + t439 * t536;
t537 = Icges(4,5) * t440 - Icges(4,6) * t438;
t344 = -Icges(4,3) * t441 + t439 * t537;
t797 = -t344 - t303;
t803 = (-Icges(4,5) * t438 - Icges(5,5) * t425 - Icges(4,6) * t440 - Icges(5,6) * t426) * t439;
t699 = Icges(5,4) * t336;
t170 = Icges(5,2) * t335 + Icges(5,6) * t671 + t699;
t319 = Icges(5,4) * t335;
t172 = Icges(5,1) * t336 + Icges(5,5) * t671 + t319;
t703 = Icges(4,4) * t379;
t217 = -Icges(4,2) * t517 + Icges(4,6) * t671 + t703;
t371 = Icges(4,4) * t517;
t219 = Icges(4,1) * t379 + Icges(4,5) * t671 - t371;
t781 = t170 * t333 + t172 * t334 - t217 * t516 + t219 * t377 + t771 * t674;
t700 = Icges(5,4) * t334;
t169 = Icges(5,2) * t333 + Icges(5,6) * t674 + t700;
t318 = Icges(5,4) * t333;
t171 = Icges(5,1) * t334 + Icges(5,5) * t674 + t318;
t704 = Icges(4,4) * t377;
t216 = -Icges(4,2) * t516 + Icges(4,6) * t674 + t704;
t370 = Icges(4,4) * t516;
t218 = Icges(4,1) * t377 + Icges(4,5) * t674 - t370;
t780 = t169 * t335 + t171 * t336 - t216 * t517 + t218 * t379 + t772 * t671;
t782 = t169 * t333 + t171 * t334 - t216 * t516 + t218 * t377 + t772 * t674;
t754 = t170 * t335 + t172 * t336 - t217 * t517 + t219 * t379 + t771 * t671;
t697 = Icges(5,4) * t426;
t540 = -Icges(5,2) * t425 + t697;
t305 = -Icges(5,6) * t441 + t439 * t540;
t698 = Icges(5,4) * t425;
t545 = Icges(5,1) * t426 - t698;
t307 = -Icges(5,5) * t441 + t439 * t545;
t701 = Icges(4,4) * t440;
t541 = -Icges(4,2) * t438 + t701;
t346 = -Icges(4,6) * t441 + t439 * t541;
t702 = Icges(4,4) * t438;
t546 = Icges(4,1) * t440 - t702;
t348 = -Icges(4,5) * t441 + t439 * t546;
t802 = t305 * t333 + t307 * t334 - t346 * t516 + t348 * t377 - t797 * t674;
t801 = t305 * t335 + t307 * t336 - t346 * t517 + t348 * t379 - t797 * t671;
t628 = qJD(2) * t439;
t600 = t435 * t628;
t250 = -qJD(3) * t334 + t425 * t600;
t251 = qJD(3) * t333 - t426 * t600;
t277 = -qJD(3) * t377 + t438 * t600;
t596 = t440 * t628;
t278 = -qJD(3) * t516 - t435 * t596;
t627 = qJD(2) * t441;
t599 = t435 * t627;
t800 = Icges(4,5) * t278 + Icges(5,5) * t251 + Icges(4,6) * t277 + Icges(5,6) * t250 + t804 * t599;
t597 = t436 * t628;
t252 = -qJD(3) * t336 + t425 * t597;
t253 = qJD(3) * t335 - t426 * t597;
t279 = -qJD(3) * t379 + t438 * t597;
t280 = -qJD(3) * t517 - t436 * t596;
t598 = t436 * t627;
t799 = Icges(4,5) * t280 + Icges(5,5) * t253 + Icges(4,6) * t279 + Icges(5,6) * t252 + t804 * t598;
t304 = Icges(5,3) * t439 + t441 * t536;
t345 = Icges(4,3) * t439 + t441 * t537;
t798 = t803 * qJD(3) + (t304 + t345) * qJD(2);
t796 = t781 * t436;
t795 = t780 * t435;
t431 = t435 ^ 2;
t432 = t436 ^ 2;
t744 = t431 + t432;
t794 = m(3) * qJD(2) ^ 2 * (rSges(3,1) * t439 + rSges(3,2) * t441) * t744;
t793 = -t798 * t439 + t797 * t627;
t792 = t799 * t439 + t771 * t627;
t791 = t800 * t439 + t772 * t627;
t790 = t754 * t436 + t795;
t789 = t782 * t435 + t796;
t407 = pkin(2) * t439 - pkin(6) * t441;
t506 = qJD(2) * t407;
t368 = t435 * t506;
t369 = t436 * t506;
t788 = -t435 * t368 - t436 * t369 + t744 * t506;
t787 = t801 * t439;
t786 = t802 * t439;
t429 = t440 * pkin(3);
t302 = qJ(4) * t439 + t429 * t441;
t225 = -pkin(3) * t672 + t302 * t435;
t626 = qJD(3) * t439;
t416 = t435 * t626;
t629 = qJD(2) * t436;
t395 = t416 - t629;
t485 = qJ(4) * t441 - t429 * t439;
t625 = qJD(3) * t441;
t785 = t225 * t625 - t395 * t485;
t428 = qJD(4) * t439;
t412 = t435 * t428;
t714 = pkin(3) * qJD(3);
t617 = t438 * t714;
t447 = qJD(2) * t485 - t441 * t617;
t616 = t440 * t714;
t145 = t435 * t447 - t436 * t616 + t412;
t414 = t436 * t428;
t146 = t435 * t616 + t436 * t447 + t414;
t417 = t436 * t626;
t424 = qJD(2) * t435;
t394 = t424 + t417;
t775 = t394 * t435;
t784 = t435 * t145 - t485 * t775 - t428 + t788 + (t146 - t785) * t436;
t783 = -t395 * t436 + t775;
t120 = Icges(5,4) * t251 + Icges(5,2) * t250 + Icges(5,6) * t599;
t122 = Icges(5,1) * t251 + Icges(5,4) * t250 + Icges(5,5) * t599;
t138 = Icges(4,4) * t278 + Icges(4,2) * t277 + Icges(4,6) * t599;
t140 = Icges(4,1) * t278 + Icges(4,4) * t277 + Icges(4,5) * t599;
t762 = t120 * t333 + t122 * t334 - t138 * t516 + t140 * t377 + t169 * t250 + t171 * t251 + t216 * t277 + t218 * t278 + t435 * t791;
t121 = Icges(5,4) * t253 + Icges(5,2) * t252 + Icges(5,6) * t598;
t123 = Icges(5,1) * t253 + Icges(5,4) * t252 + Icges(5,5) * t598;
t139 = Icges(4,4) * t280 + Icges(4,2) * t279 + Icges(4,6) * t598;
t141 = Icges(4,1) * t280 + Icges(4,4) * t279 + Icges(4,5) * t598;
t761 = t121 * t333 + t123 * t334 - t139 * t516 + t141 * t377 + t170 * t250 + t172 * t251 + t217 * t277 + t219 * t278 + t435 * t792;
t760 = t120 * t335 + t122 * t336 - t138 * t517 + t140 * t379 + t169 * t252 + t171 * t253 + t216 * t279 + t218 * t280 + t436 * t791;
t759 = t121 * t335 + t123 * t336 - t139 * t517 + t141 * t379 + t170 * t252 + t172 * t253 + t217 * t279 + t219 * t280 + t436 * t792;
t531 = -t169 * t425 + t171 * t426;
t83 = -t167 * t441 + t439 * t531;
t528 = -t216 * t438 + t218 * t440;
t90 = -t214 * t441 + t439 * t528;
t779 = t83 + t90;
t530 = -t170 * t425 + t172 * t426;
t84 = -t168 * t441 + t439 * t530;
t527 = -t217 * t438 + t219 * t440;
t91 = -t215 * t441 + t439 * t527;
t778 = t84 + t91;
t306 = Icges(5,6) * t439 + t441 * t540;
t351 = (-Icges(5,2) * t426 - t698) * t439;
t191 = qJD(2) * t306 + qJD(3) * t351;
t308 = Icges(5,5) * t439 + t441 * t545;
t352 = (-Icges(5,1) * t425 - t697) * t439;
t192 = qJD(2) * t308 + qJD(3) * t352;
t347 = Icges(4,6) * t439 + t441 * t541;
t389 = (-Icges(4,2) * t440 - t702) * t439;
t231 = qJD(2) * t347 + qJD(3) * t389;
t349 = Icges(4,5) * t439 + t441 * t546;
t390 = (-Icges(4,1) * t438 - t701) * t439;
t232 = qJD(2) * t349 + qJD(3) * t390;
t770 = (-t191 * t335 - t192 * t336 + t231 * t517 - t232 * t379 - t252 * t305 - t253 * t307 - t279 * t346 - t280 * t348 + t436 * t793) * t441 + (t441 * t790 + t787) * qJD(2);
t769 = (-t191 * t333 - t192 * t334 + t231 * t516 - t232 * t377 - t250 * t305 - t251 * t307 - t277 * t346 - t278 * t348 + t435 * t793) * t441 + (t441 * t789 + t786) * qJD(2);
t524 = -t305 * t425 + t307 * t426;
t678 = t303 * t441;
t117 = t439 * t524 - t678;
t522 = -t346 * t438 + t348 * t440;
t677 = t344 * t441;
t128 = t439 * t522 - t677;
t767 = t117 + t128;
t766 = t803 * t625 + (Icges(4,5) * t516 - Icges(5,5) * t333 + Icges(4,6) * t377 + Icges(5,6) * t334) * t395 + (Icges(4,5) * t517 - Icges(5,5) * t335 + Icges(4,6) * t379 + Icges(5,6) * t336) * t394;
t551 = t90 * t435 + t91 * t436;
t554 = t83 * t435 + t84 * t436;
t765 = t551 + t554;
t764 = t769 * qJD(3) + t761 * t394 + t395 * t762;
t763 = qJD(3) * t770 + t394 * t759 + t395 * t760;
t748 = ((t528 + t531) * qJD(2) - t800) * t441 + (-t120 * t425 + t122 * t426 - t138 * t438 + t140 * t440 + (-t169 * t426 - t171 * t425 - t216 * t440 - t218 * t438) * qJD(3) + t772 * qJD(2)) * t439;
t747 = ((t527 + t530) * qJD(2) - t799) * t441 + (-t121 * t425 + t123 * t426 - t139 * t438 + t141 * t440 + (-t170 * t426 - t172 * t425 - t217 * t440 - t219 * t438) * qJD(3) + t771 * qJD(2)) * t439;
t758 = t394 * t781 + t395 * t782 - t625 * t802;
t757 = t394 * t754 + t395 * t780 - t625 * t801;
t621 = t128 * qJD(3);
t622 = t117 * qJD(3);
t756 = (-t621 - t622) * t441 + t779 * t395 + t778 * t394;
t507 = t345 - t522;
t508 = t304 - t524;
t740 = -(-t303 * t436 - t530) * t394 - (-t303 * t435 - t531) * t395;
t741 = -(-t344 * t436 - t527) * t394 - (-t344 * t435 - t528) * t395;
t752 = (-t740 - t741 + (-t507 - t508) * t625) * t439;
t751 = t394 * t771 + t395 * t772;
t750 = -t677 - t678;
t705 = Icges(3,4) * t441;
t706 = Icges(3,4) * t439;
t749 = -(-Icges(3,2) * t441 - t706) * t628 + (-Icges(3,1) * t439 - t705) * t627;
t372 = t516 * pkin(3);
t401 = pkin(4) * t426 + t429;
t743 = t767 * t628 + (t798 * t441 + (t191 * t425 - t192 * t426 + t231 * t438 - t232 * t440 + (t305 * t426 + t307 * t425 + t346 * t440 + t348 * t438) * qJD(3)) * t439 + ((-t522 - t524) * t441 + t797 * t439 + t765) * qJD(2)) * t441;
t742 = t766 * t439;
t427 = qJ(5) + t434;
t420 = sin(t427);
t421 = cos(t427);
t535 = Icges(6,5) * t421 - Icges(6,6) * t420;
t291 = -Icges(6,3) * t441 + t439 * t535;
t693 = Icges(6,4) * t421;
t539 = -Icges(6,2) * t420 + t693;
t293 = -Icges(6,6) * t441 + t439 * t539;
t694 = Icges(6,4) * t420;
t544 = Icges(6,1) * t421 - t694;
t295 = -Icges(6,5) * t441 + t439 * t544;
t561 = rSges(6,1) * t421 - rSges(6,2) * t420;
t297 = -rSges(6,3) * t441 + t439 * t561;
t562 = rSges(5,1) * t426 - rSges(5,2) * t425;
t309 = -rSges(5,3) * t441 + t439 * t562;
t563 = rSges(4,1) * t440 - rSges(4,2) * t438;
t354 = -rSges(4,3) * t441 + t439 * t563;
t631 = t401 - t429;
t236 = -pkin(7) * t441 + t439 * t631;
t292 = Icges(6,3) * t439 + t441 * t535;
t623 = qJD(5) * t439;
t327 = t436 * t623 + t394;
t328 = t435 * t623 + t395;
t525 = -t293 * t420 + t295 * t421;
t313 = -t420 * t670 + t421 * t435;
t314 = t420 * t435 + t421 * t670;
t695 = Icges(6,4) * t314;
t160 = Icges(6,2) * t313 + Icges(6,6) * t671 + t695;
t300 = Icges(6,4) * t313;
t162 = Icges(6,1) * t314 + Icges(6,5) * t671 + t300;
t533 = -t160 * t420 + t162 * t421;
t311 = -t420 * t673 - t421 * t436;
t312 = -t436 * t420 + t421 * t673;
t696 = Icges(6,4) * t312;
t159 = Icges(6,2) * t311 + Icges(6,6) * t674 + t696;
t299 = Icges(6,4) * t311;
t161 = Icges(6,1) * t312 + Icges(6,5) * t674 + t299;
t534 = -t159 * t420 + t161 * t421;
t433 = qJD(3) + qJD(5);
t579 = t433 * t441;
t737 = t327 * (-t291 * t436 - t533) + t328 * (-t291 * t435 - t534) - t579 * (t292 - t525);
t322 = (-Icges(6,2) * t421 - t694) * t439;
t460 = t327 * (-Icges(6,2) * t314 + t162 + t300) + t328 * (-Icges(6,2) * t312 + t161 + t299) - t579 * (t295 + t322);
t454 = t394 * (-Icges(4,2) * t379 + t219 - t371) + t395 * (-Icges(4,2) * t377 + t218 - t370) - t625 * (t348 + t389);
t456 = t394 * (-Icges(5,2) * t336 + t172 + t319) + t395 * (-Icges(5,2) * t334 + t171 + t318) - t625 * (t307 + t351);
t736 = -t327 / 0.2e1;
t735 = t327 / 0.2e1;
t734 = -t328 / 0.2e1;
t733 = t328 / 0.2e1;
t578 = qJD(2) * t433;
t550 = t441 * t578;
t356 = t435 * t550;
t732 = t356 / 0.2e1;
t357 = t436 * t550;
t731 = t357 / 0.2e1;
t730 = -t394 / 0.2e1;
t729 = t394 / 0.2e1;
t728 = -t395 / 0.2e1;
t727 = t395 / 0.2e1;
t396 = t439 * t578;
t726 = t396 / 0.2e1;
t725 = t579 / 0.2e1;
t724 = -t579 / 0.2e1;
t721 = -t441 / 0.2e1;
t720 = pkin(3) * t438;
t237 = pkin(7) * t439 + t441 * t631;
t400 = pkin(4) * t425 + t720;
t585 = -t400 + t720;
t133 = t237 * t436 - t435 * t585;
t165 = rSges(6,1) * t314 + rSges(6,2) * t313 + rSges(6,3) * t671;
t604 = t407 * t424;
t564 = t412 - t604;
t644 = -t236 + t485;
t226 = pkin(3) * t675 + t302 * t436;
t660 = -t133 - t226;
t59 = -t165 * t579 - t297 * t327 + t394 * t644 + t625 * t660 + t564;
t709 = t59 * t133;
t132 = t237 * t435 + t436 * t585;
t681 = t132 * t436;
t173 = rSges(5,1) * t334 + rSges(5,2) * t333 + rSges(5,3) * t674;
t680 = t173 * t436;
t679 = t226 * t435;
t408 = pkin(2) * t441 + pkin(6) * t439;
t399 = qJD(2) * t408;
t676 = t399 * t436;
t566 = -t400 * qJD(3) + t617;
t446 = -qJD(2) * t236 + t441 * t566;
t565 = -qJD(3) * t401 + t616;
t101 = -t435 * t565 + t436 * t446;
t667 = -t101 - t146;
t496 = -t433 * t435 + t597;
t613 = t433 * t670;
t222 = t420 * t496 - t421 * t613;
t223 = -t420 * t613 - t421 * t496;
t112 = rSges(6,1) * t223 + rSges(6,2) * t222 + rSges(6,3) * t598;
t666 = t101 + t112;
t495 = t433 * t436 + t600;
t614 = t433 * t673;
t220 = t420 * t495 - t421 * t614;
t221 = -t420 * t614 - t421 * t495;
t111 = rSges(6,1) * t221 + rSges(6,2) * t220 + rSges(6,3) * t599;
t164 = rSges(6,1) * t312 + rSges(6,2) * t311 + rSges(6,3) * t674;
t665 = t111 * t671 + t164 * t598;
t125 = rSges(5,1) * t253 + rSges(5,2) * t252 + rSges(5,3) * t598;
t664 = -t125 - t146;
t177 = t225 * t598;
t663 = t145 * t671 + t177;
t662 = -t132 - t225;
t661 = t132 + t164;
t659 = t133 + t165;
t144 = qJD(2) * t237 + t439 * t566;
t624 = qJD(4) * t441;
t229 = qJD(2) * t302 - t439 * t617 - t624;
t658 = -t144 - t229;
t653 = -t173 - t225;
t174 = rSges(5,1) * t336 + rSges(5,2) * t335 + rSges(5,3) * t671;
t652 = -t174 - t226;
t651 = t400 * t670 - t401 * t435;
t310 = rSges(5,3) * t439 + t441 * t562;
t353 = (-rSges(5,1) * t425 - rSges(5,2) * t426) * t439;
t197 = qJD(2) * t310 + qJD(3) * t353;
t650 = -t197 - t229;
t649 = t441 * t225 - t485 * t674;
t648 = -rSges(5,1) * t335 + rSges(5,2) * t336 + t517 * pkin(3);
t355 = rSges(4,3) * t439 + t441 * t563;
t391 = (-rSges(4,1) * t438 - rSges(4,2) * t440) * t439;
t235 = qJD(2) * t355 + qJD(3) * t391;
t645 = -t235 - t399;
t643 = t441 * t164 + t297 * t674;
t641 = t485 - t309;
t639 = -t368 * t424 - t369 * t629;
t633 = -t354 - t407;
t386 = t408 * t435;
t387 = t408 * t436;
t632 = t435 * t386 + t436 * t387;
t620 = qJD(2) * qJD(3);
t619 = qJD(2) * qJD(4);
t618 = t439 * t720;
t612 = -t146 - t666;
t298 = rSges(6,3) * t439 + t441 * t561;
t324 = (-rSges(6,1) * t420 - rSges(6,2) * t421) * t439;
t156 = qJD(2) * t298 + t324 * t433;
t611 = t441 * t111 + t156 * t674 + t297 * t599;
t610 = -t226 - t659;
t273 = t485 * t599;
t609 = t441 * t145 + t229 * t674 - t273;
t608 = -t156 + t658;
t607 = -t399 + t650;
t606 = -t297 + t644;
t605 = -t407 + t641;
t603 = t407 * t629;
t602 = t408 * t424;
t601 = t408 * t629;
t199 = t226 * t626;
t595 = t674 / 0.2e1;
t594 = t671 / 0.2e1;
t593 = t386 * t424 + t387 * t629 + qJD(1);
t592 = t441 * t620;
t591 = t441 * t619;
t590 = t628 / 0.2e1;
t589 = t627 / 0.2e1;
t587 = -t625 / 0.2e1;
t586 = t625 / 0.2e1;
t584 = t620 / 0.2e1;
t193 = rSges(6,1) * t311 - rSges(6,2) * t312;
t194 = rSges(6,1) * t313 - rSges(6,2) * t314;
t583 = t327 * t193 - t194 * t328;
t582 = -t194 * t579 - t324 * t327;
t581 = t193 * t579 + t328 * t324;
t577 = -qJD(3) * t273 + t145 * t625 + t395 * t229 + t436 * t591;
t575 = -t399 + t608;
t574 = t435 * t225 + t436 * t226 + t632;
t573 = -t407 + t606;
t572 = t435 * t589;
t571 = t436 * t589;
t568 = t439 * t584;
t567 = t441 * t584;
t124 = rSges(5,1) * t251 + rSges(5,2) * t250 + rSges(5,3) * t599;
t549 = qJD(3) * t177 + t394 * t145 + t439 * t619 + t639;
t23 = t124 * t394 + t664 * t395 + (t435 * t652 + t680) * t592 + t549;
t487 = t394 * t225 + t593 - t624;
t65 = t173 * t394 + t395 * t652 + t487;
t560 = t65 * t124 + t23 * t173;
t157 = Icges(6,5) * t312 + Icges(6,6) * t311 + Icges(6,3) * t674;
t69 = t157 * t674 + t159 * t311 + t161 * t312;
t158 = Icges(6,5) * t314 + Icges(6,6) * t313 + Icges(6,3) * t671;
t70 = t158 * t674 + t160 * t311 + t162 * t312;
t559 = t435 * t69 + t436 * t70;
t71 = t157 * t671 + t159 * t313 + t161 * t314;
t72 = t158 * t671 + t160 * t313 + t162 * t314;
t558 = t435 * t71 + t436 * t72;
t81 = -t157 * t441 + t439 * t534;
t82 = -t158 * t441 + t439 * t533;
t555 = t435 * t81 + t436 * t82;
t548 = Icges(3,1) * t441 - t706;
t543 = -Icges(3,2) * t439 + t705;
t538 = -Icges(3,5) * t439 - Icges(3,6) * t441;
t227 = rSges(4,1) * t377 - rSges(4,2) * t516 + rSges(4,3) * t674;
t228 = rSges(4,1) * t379 - rSges(4,2) * t517 + rSges(4,3) * t671;
t526 = t227 * t436 - t228 * t435;
t520 = t435 * t567;
t519 = t436 * t567;
t518 = qJD(2) * t199 - t399 * t424 + t435 * t591;
t105 = Icges(6,5) * t221 + Icges(6,6) * t220 + Icges(6,3) * t599;
t505 = t105 * t439 + t157 * t627;
t106 = Icges(6,5) * t223 + Icges(6,6) * t222 + Icges(6,3) * t598;
t504 = t106 * t439 + t158 * t627;
t321 = (-Icges(6,5) * t420 - Icges(6,6) * t421) * t439;
t153 = qJD(2) * t292 + t321 * t433;
t499 = t153 * t439 + t291 * t627;
t79 = t394 * t641 + t625 * t652 + t564;
t491 = t414 - t603 + t785;
t80 = t173 * t625 + t309 * t395 + t491;
t494 = t79 * t174 + t653 * t80;
t89 = t227 * t394 - t228 * t395 + t593;
t492 = t89 * t526;
t323 = (-Icges(6,1) * t420 - t693) * t439;
t488 = qJD(2) * t538;
t484 = (Icges(6,5) * t311 - Icges(6,6) * t312) * t328 + (Icges(6,5) * t313 - Icges(6,6) * t314) * t327 - t321 * t579;
t483 = t395 * t302 + t436 * t624 - t601;
t480 = -t302 * t394 + t435 * t624 + t199 - t602;
t477 = t439 * t484;
t296 = Icges(6,5) * t439 + t441 * t544;
t294 = Icges(6,6) * t439 + t441 * t539;
t104 = -t291 * t441 + t439 * t525;
t107 = Icges(6,4) * t221 + Icges(6,2) * t220 + Icges(6,6) * t599;
t109 = Icges(6,1) * t221 + Icges(6,4) * t220 + Icges(6,5) * t599;
t19 = (qJD(2) * t534 - t105) * t441 + (qJD(2) * t157 + (-t159 * t433 + t109) * t421 + (-t161 * t433 - t107) * t420) * t439;
t108 = Icges(6,4) * t223 + Icges(6,2) * t222 + Icges(6,6) * t598;
t110 = Icges(6,1) * t223 + Icges(6,4) * t222 + Icges(6,5) * t598;
t20 = (qJD(2) * t533 - t106) * t441 + (qJD(2) * t158 + (-t160 * t433 + t110) * t421 + (-t162 * t433 - t108) * t420) * t439;
t92 = t291 * t674 + t293 * t311 + t295 * t312;
t24 = t327 * t70 + t328 * t69 - t579 * t92;
t93 = t291 * t671 + t293 * t313 + t295 * t314;
t25 = t327 * t72 + t328 * t71 - t579 * t93;
t28 = t107 * t311 + t109 * t312 + t159 * t220 + t161 * t221 + t435 * t505;
t29 = t108 * t311 + t110 * t312 + t160 * t220 + t162 * t221 + t435 * t504;
t154 = qJD(2) * t294 + t322 * t433;
t155 = qJD(2) * t296 + t323 * t433;
t55 = t154 * t311 + t155 * t312 + t220 * t293 + t221 * t295 + t435 * t499;
t3 = t328 * t28 + t29 * t327 + t356 * t69 + t357 * t70 + t396 * t92 - t55 * t579;
t30 = t107 * t313 + t109 * t314 + t159 * t222 + t161 * t223 + t436 * t505;
t31 = t108 * t313 + t110 * t314 + t160 * t222 + t162 * t223 + t436 * t504;
t37 = -t104 * t579 + t327 * t82 + t328 * t81;
t56 = t154 * t313 + t155 * t314 + t222 * t293 + t223 * t295 + t436 * t499;
t4 = t30 * t328 + t327 * t31 + t356 * t71 + t357 * t72 + t396 * t93 - t56 * t579;
t461 = (Icges(6,1) * t313 - t160 - t695) * t327 + (Icges(6,1) * t311 - t159 - t696) * t328 - (-t293 + t323) * t579;
t58 = (qJD(2) * t525 - t153) * t441 + (qJD(2) * t291 + (-t293 * t433 + t155) * t421 + (-t295 * t433 - t154) * t420) * t439;
t462 = t3 * t595 + t4 * t594 + (t313 * t460 + t314 * t461 + t436 * t477) * t736 + (t311 * t460 + t312 * t461 + t435 * t477) * t734 + (-t484 * t441 + (-t420 * t460 + t461 * t421) * t439) * t725 + t24 * t572 + t25 * t571 + (t439 * t559 - t441 * t92) * t732 + (t439 * t558 - t441 * t93) * t731 + t37 * t590 + (-t104 * t441 + t439 * t555) * t726 + (t104 * t396 + t19 * t328 + t20 * t327 + t356 * t81 + t357 * t82 - t579 * t58) * t721 + (-t441 * t56 + (t30 * t435 + t31 * t436) * t439 + (t439 * t93 + t441 * t558) * qJD(2)) * t735 + (-t441 * t55 + (t28 * t435 + t29 * t436) * t439 + (t439 * t92 + t441 * t559) * qJD(2)) * t733 + (-t441 * t58 + (t19 * t435 + t20 * t436) * t439 + (t104 * t439 + t441 * t555) * qJD(2)) * t724;
t459 = (-(-Icges(3,6) * t436 + t435 * t543) * t441 - (-Icges(3,5) * t436 + t435 * t548) * t439) * qJD(2) + t749 * t435;
t458 = (-(Icges(3,6) * t435 + t436 * t543) * t441 - (Icges(3,5) * t435 + t436 * t548) * t439) * qJD(2) + t749 * t436;
t457 = (Icges(5,1) * t335 - t170 - t699) * t394 + (Icges(5,1) * t333 - t169 - t700) * t395 - (-t305 + t352) * t625;
t455 = (-Icges(4,1) * t517 - t217 - t703) * t394 + (-Icges(4,1) * t516 - t216 - t704) * t395 - (-t346 + t390) * t625;
t443 = (t157 * t328 + t158 * t327 - t291 * t579) * t441 + t737 * t439;
t402 = t433 * t439;
t381 = t538 * t436;
t380 = t538 * t435;
t375 = t436 * t579;
t374 = t435 * t579;
t361 = t436 * t488;
t360 = t435 * t488;
t337 = t394 * t618;
t320 = t585 * t439;
t317 = t372 * t625;
t290 = (-t395 + t416) * t441;
t289 = (t394 - t417) * t441;
t286 = t348 * t436;
t285 = t348 * t435;
t284 = t346 * t436;
t283 = t346 * t435;
t275 = t394 * t372;
t269 = t307 * t436;
t268 = t307 * t435;
t267 = t305 * t436;
t266 = t305 * t435;
t261 = t297 * t436;
t260 = t297 * t435;
t259 = t295 * t436;
t258 = t295 * t435;
t257 = t293 * t436;
t256 = t293 * t435;
t249 = -rSges(4,1) * t517 - rSges(4,2) * t379;
t248 = -rSges(4,1) * t516 - rSges(4,2) * t377;
t234 = t783 * t439;
t212 = rSges(5,1) * t333 - rSges(5,2) * t334;
t201 = t226 * t628;
t195 = t225 * t671;
t179 = -t400 * t673 - t401 * t436 + t372;
t150 = t165 * t628;
t149 = t164 * t671;
t143 = rSges(4,1) * t280 + rSges(4,2) * t279 + rSges(4,3) * t598;
t142 = rSges(4,1) * t278 + rSges(4,2) * t277 + rSges(4,3) * t599;
t116 = t227 * t625 + t354 * t395 - t603;
t115 = -t228 * t625 - t354 * t394 - t604;
t100 = t435 * t446 + t436 * t565;
t74 = t142 * t625 + t235 * t395 + (-t676 + (-t227 * t439 + t354 * t673) * qJD(3)) * qJD(2);
t73 = -t143 * t625 - t235 * t394 + (-t399 * t435 + (t228 * t439 - t354 * t670) * qJD(3)) * qJD(2);
t64 = t142 * t394 - t143 * t395 + t526 * t592 + t639;
t60 = t132 * t625 + t164 * t579 + t236 * t395 + t297 * t328 + t491;
t46 = t124 * t625 + t197 * t395 + (-t676 + (t309 * t673 + t439 * t653) * qJD(3)) * qJD(2) + t577;
t45 = t650 * t394 + (t174 * t628 + (t629 * t641 + t664) * t441) * qJD(3) + t518;
t43 = t132 * t394 + t164 * t327 - t165 * t328 + t395 * t660 + t487;
t17 = t100 * t625 + t111 * t579 + t144 * t395 + t156 * t328 - t164 * t396 + t297 * t356 + (-t676 + (t236 * t673 + t439 * t662) * qJD(3)) * qJD(2) + t577;
t16 = -t112 * t579 - t156 * t327 + t165 * t396 - t297 * t357 + t658 * t394 + (t133 * t628 + (t629 * t644 + t667) * t441) * qJD(3) + t518;
t13 = t100 * t394 + t111 * t327 - t112 * t328 + t164 * t357 - t165 * t356 + t667 * t395 + (t435 * t660 + t681) * t592 + t549;
t1 = [m(4) * t64 + m(5) * t23 + m(6) * t13 - t794; (t435 * t759 - t436 * t760) * t729 + (t435 * t761 - t436 * t762) * t727 + (t4 + t763) * t435 / 0.2e1 - (t3 + t764) * t436 / 0.2e1 - t756 * t626 / 0.2e1 + (((t267 * t425 - t269 * t426 + t168) * t394 + (t266 * t425 - t268 * t426 + t167) * t395 + t622) * t439 + ((t508 * t441 + (t306 * t425 - t308 * t426 - t303) * t439 + t554) * qJD(3) + t740) * t441 + ((t284 * t438 - t286 * t440 + t215) * t394 + (t283 * t438 - t285 * t440 + t214) * t395 + t621) * t439 + ((t507 * t441 + (t347 * t438 - t349 * t440 - t344) * t439 + t551) * qJD(3) + t741) * t441) * t586 + (t104 * t402 + t81 * t374 + t82 * t375 - t737 * t441 + ((t257 * t420 - t259 * t421 + t158) * t327 + (t256 * t420 - t258 * t421 + t157) * t328 - (-t294 * t420 + t296 * t421 + t291) * t579) * t439) * t725 + ((-t257 * t313 - t259 * t314) * t327 + t72 * t375 + (-t256 * t313 - t258 * t314) * t328 + t71 * t374 - (t294 * t313 + t296 * t314) * t579 + t93 * t402 + t443 * t436) * t736 + ((-t257 * t311 - t259 * t312) * t327 + t70 * t375 + (-t256 * t311 - t258 * t312) * t328 + t69 * t374 - (t294 * t311 + t296 * t312) * t579 + t92 * t402 + t443 * t435) * t734 + (t435 * t781 - t436 * t782) * t520 + (-t744 + 0.1e1) * (rSges(3,1) * t441 - rSges(3,2) * t439) * t794 + (-t30 * t436 + t31 * t435) * t735 - (t381 * qJD(2) * t431 - t380 * t435 * t629) * t424 / 0.2e1 - t374 * t24 / 0.2e1 - t375 * t25 / 0.2e1 + (t435 * (t361 * t435 + t436 * t458) - t436 * (t360 * t435 + t436 * t459)) * t424 + (t13 * t574 + (t13 * t659 + t17 * t573 + t575 * t60) * t436 + (t13 * t661 + t16 * t573 + t59 * t575) * t435 - t60 * (-t164 * t402 + t237 * t395 - t260 * t579 + t297 * t374 + t298 * t328 + t483) - t59 * (t165 * t402 - t237 * t394 + t261 * t579 - t297 * t375 - t298 * t327 + t480) - (t60 * t662 + t709) * t626 + (t666 * t436 + (t100 + t111) * t435 - t164 * t375 + t165 * t374 + t260 * t327 - t261 * t328 - (-t133 * t435 - t679 + t681) * t625 + t783 * t236 + t784) * t43) * m(6) + (t23 * t574 + (t23 * t174 + t46 * t605 + t607 * t80) * t436 + (t45 * t605 + t607 * t79 + t560) * t435 - t80 * (t310 * t395 + t483) - t79 * (-t310 * t394 + t480) - t494 * t626 + (t125 * t436 - (-t174 * t435 - t679 + t680) * t625 + t783 * t309 + t784) * t65) * m(5) + (t380 * qJD(2) * t432 - t381 * t424 * t436) * t629 / 0.2e1 + (t435 * t778 - t436 * t779) * t568 + (t754 * t435 - t436 * t780) * t519 + ((-t748 + t757) * t436 + (t747 + t758) * t435) * t587 - (t435 * (-t361 * t436 + t435 * t458) - (-t360 * t436 + t435 * t459) * t436) * t629 + (-t19 * t436 + t20 * t435) * t724 + (t435 * t82 - t436 * t81) * t726 + (t435 * t72 - t436 * t71) * t731 + (t435 * t70 - t436 * t69) * t732 + (-t28 * t436 + t29 * t435) * t733 + (t64 * t632 + (t116 * t645 + t64 * t228 + t633 * t74) * t436 + (t115 * t645 + t64 * t227 + t633 * t73) * t435 - t116 * (t355 * t395 - t601) - t115 * (-t355 * t394 - t602) - ((t115 * t228 - t116 * t227) * t439 + t492 * t441) * qJD(3) + (t142 * t435 + t143 * t436 + t354 * t783 + t788) * t89) * m(4) + (((-t306 * t335 - t308 * t336 + t347 * t517 - t349 * t379 + t795) * t441 + t787) * qJD(3) + (((t750 + t754) * qJD(3) + t751) * t441 + t752) * t436 + (-t266 * t335 - t268 * t336 + t283 * t517 - t285 * t379) * t395 + (-t267 * t335 - t269 * t336 + t284 * t517 - t286 * t379) * t394) * t730 + (((-t306 * t333 - t308 * t334 + t347 * t516 - t349 * t377 + t796) * t441 + t786) * qJD(3) + (((t750 + t782) * qJD(3) + t751) * t441 + t752) * t435 + (-t266 * t333 - t268 * t334 + t283 * t516 - t285 * t377) * t395 + (-t267 * t333 - t269 * t334 + t284 * t516 - t286 * t377) * t394) * t728 - t402 * t37 / 0.2e1; t462 + (t335 * t456 + t336 * t457 + t379 * t455 - t436 * t742 - t454 * t517) * t730 + ((t435 * t760 + t436 * t759) * t439 + t770) * t729 + (t333 * t456 + t334 * t457 + t377 * t455 - t435 * t742 - t454 * t516) * t728 + ((t435 * t762 + t436 * t761) * t439 + t769) * t727 + (qJD(3) * t743 + t394 * t747 + t395 * t748) * t721 + t764 * t595 + t763 * t594 + t756 * t590 + ((t435 * t748 + t436 * t747) * t439 + t743) * t587 + (t766 * t441 + (-t425 * t456 + t457 * t426 - t438 * t454 + t455 * t440) * t439) * t586 + t758 * t572 + t757 * t571 + (t439 * t765 - t441 * t767) * t568 + (t439 * t789 - t441 * t802) * t520 + (t439 * t790 - t441 * t801) * t519 + (t17 * (t643 + t649) + t60 * (t609 + t611) + t59 * (t150 + t201) + t13 * (t149 + t195) + t43 * (t663 + t665) + (t17 * t132 + t60 * t100 + t16 * t610 + t59 * t612 + ((t43 * t132 + t59 * t606) * t436 + (t60 * t236 + t43 * t610) * t435) * qJD(2)) * t441 + ((t60 * (-t225 - t661) + t709) * qJD(2) + (t43 * t100 + t13 * t132 + t16 * t606 + t59 * t608) * t436 + (t13 * t610 + t60 * t144 + t17 * t236 + t43 * t612) * t435) * t439 - t60 * (t179 * t625 - t317 + t581) - t59 * (-t320 * t394 + t625 * t651 + t337 + t582) - t43 * (t179 * t394 - t275 + t583) - (t60 * (t320 - t618) + t43 * t651) * t395) * m(6) + (-t80 * (t212 * t625 - t317) - t79 * (-t353 * t394 + t625 * t648 + t337) - t65 * (t212 * t394 - t275) - (t80 * (t353 - t618) + t65 * t648) * t395 + t46 * t649 + t80 * t609 + t79 * t201 + t23 * t195 + t65 * t663 + (t46 * t173 + t80 * t124 + t45 * t652 + t79 * t664 + ((t65 * t173 + t641 * t79) * t436 + (t80 * t309 + t65 * t652) * t435) * qJD(2)) * t441 + (t494 * qJD(2) + (t45 * t641 + t650 * t79 + t560) * t436 + (t80 * t197 + t23 * t652 + t46 * t309 + t65 * t664) * t435) * t439) * m(5) + (-t116 * (t248 * t625 + t391 * t395) - t115 * (-t249 * t625 - t391 * t394) - t89 * (t248 * t394 - t249 * t395) + (-t115 * t143 + t116 * t142 + t74 * t227 - t73 * t228 + (t492 + (-t115 * t436 + t116 * t435) * t354) * qJD(2)) * t441 + (t116 * (-qJD(2) * t227 + t235 * t435) + t115 * (qJD(2) * t228 - t235 * t436) + t64 * t526 + t89 * (t142 * t436 - t143 * t435) + (t435 * t74 - t436 * t73) * t354) * t439) * m(4); m(5) * (-t23 * t441 + t45 * t674 + t46 * t671) + m(6) * (-t13 * t441 + t16 * t674 + t17 * t671) - m(5) * (t234 * t65 + t289 * t79 + t290 * t80) - m(6) * (t234 * t43 + t289 * t59 + t290 * t60) + 0.2e1 * (m(5) * (t439 * t65 + t670 * t80 + t673 * t79) / 0.2e1 + m(6) * (t43 * t439 + t59 * t673 + t60 * t670) / 0.2e1) * qJD(2); t462 + (t17 * t643 + t16 * (-t165 * t441 - t297 * t671) + t13 * (-t165 * t674 + t149) + (-t164 * t628 - t581 + t611) * t60 + (-t582 - t112 * t441 + t150 + (-t156 * t439 - t297 * t627) * t436) * t59 + (-t583 + (-t112 * t439 - t165 * t627) * t435 + t665) * t43) * m(6);];
tauc = t1(:);
