% Calculate time derivative of joint inertia matrix for
% S6RPRRPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d6,theta2,theta5]';
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
% MqD [6x6]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 05:18
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RPRRPR6_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR6_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPR6_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRRPR6_inertiaDJ_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRRPR6_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRRPR6_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRRPR6_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 05:15:27
% EndTime: 2019-03-09 05:16:08
% DurationCPUTime: 24.03s
% Computational Cost: add. (61812->1145), mult. (57462->1564), div. (0->0), fcn. (54521->12), ass. (0->554)
t421 = pkin(10) + qJ(3);
t411 = sin(t421);
t413 = cos(t421);
t423 = qJ(4) + pkin(11);
t412 = sin(t423);
t414 = cos(t423);
t503 = Icges(6,5) * t414 - Icges(6,6) * t412;
t317 = -Icges(6,3) * t413 + t411 * t503;
t430 = sin(qJ(4));
t432 = cos(qJ(4));
t504 = Icges(5,5) * t432 - Icges(5,6) * t430;
t323 = -Icges(5,3) * t413 + t411 * t504;
t723 = t317 + t323;
t668 = Icges(6,4) * t414;
t507 = -Icges(6,2) * t412 + t668;
t318 = -Icges(6,6) * t413 + t411 * t507;
t670 = Icges(5,4) * t432;
t508 = -Icges(5,2) * t430 + t670;
t324 = -Icges(5,6) * t413 + t411 * t508;
t722 = -t318 * t412 - t324 * t430;
t721 = -qJD(1) * t411 / 0.2e1;
t671 = Icges(5,4) * t430;
t513 = Icges(5,1) * t432 - t671;
t325 = -Icges(5,5) * t413 + t411 * t513;
t669 = Icges(6,4) * t412;
t512 = Icges(6,1) * t414 - t669;
t319 = -Icges(6,5) * t413 + t411 * t512;
t654 = t319 * t414;
t720 = t723 * t413 + (-t325 * t432 - t654 - t722) * t411;
t433 = cos(qJ(1));
t594 = qJD(3) * t413;
t551 = t594 / 0.2e1;
t431 = sin(qJ(1));
t597 = qJD(1) * t431;
t567 = t411 * t597;
t719 = t433 * t551 - t567 / 0.2e1;
t596 = qJD(1) * t433;
t552 = t596 / 0.2e1;
t718 = t411 * t552 + t431 * t551;
t598 = qJD(1) * t413;
t541 = -qJD(4) + t598;
t467 = t541 * t433;
t593 = qJD(3) * t431;
t558 = t411 * t593;
t443 = t558 - t467;
t560 = t413 * t593;
t447 = t411 * t596 + t560;
t590 = qJD(4) * t411;
t241 = (-Icges(6,2) * t414 - t669) * t590 + (Icges(6,6) * t411 + t413 * t507) * qJD(3);
t264 = (-Icges(5,2) * t432 - t671) * t590 + (Icges(5,6) * t411 + t413 * t508) * qJD(3);
t717 = -t241 * t412 - t264 * t430;
t632 = t431 * t414;
t639 = t413 * t433;
t349 = -t412 * t639 + t632;
t633 = t431 * t412;
t638 = t414 * t433;
t350 = t413 * t638 + t633;
t640 = t411 * t433;
t248 = Icges(6,5) * t350 + Icges(6,6) * t349 + Icges(6,3) * t640;
t250 = Icges(6,4) * t350 + Icges(6,2) * t349 + Icges(6,6) * t640;
t252 = Icges(6,1) * t350 + Icges(6,4) * t349 + Icges(6,5) * t640;
t481 = -t250 * t412 + t252 * t414;
t121 = -t248 * t413 + t411 * t481;
t630 = t431 * t432;
t636 = t430 * t433;
t359 = -t413 * t636 + t630;
t629 = t432 * t433;
t631 = t431 * t430;
t360 = t413 * t629 + t631;
t280 = Icges(5,5) * t360 + Icges(5,6) * t359 + Icges(5,3) * t640;
t282 = Icges(5,4) * t360 + Icges(5,2) * t359 + Icges(5,6) * t640;
t284 = Icges(5,1) * t360 + Icges(5,4) * t359 + Icges(5,5) * t640;
t477 = -t282 * t430 + t284 * t432;
t145 = -t280 * t413 + t411 * t477;
t626 = t121 + t145;
t347 = -t413 * t633 - t638;
t348 = -t412 * t433 + t413 * t632;
t641 = t411 * t431;
t247 = Icges(6,5) * t348 + Icges(6,6) * t347 + Icges(6,3) * t641;
t249 = Icges(6,4) * t348 + Icges(6,2) * t347 + Icges(6,6) * t641;
t251 = Icges(6,1) * t348 + Icges(6,4) * t347 + Icges(6,5) * t641;
t482 = -t249 * t412 + t251 * t414;
t120 = -t247 * t413 + t411 * t482;
t357 = -t413 * t631 - t629;
t358 = t413 * t630 - t636;
t279 = Icges(5,5) * t358 + Icges(5,6) * t357 + Icges(5,3) * t641;
t281 = Icges(5,4) * t358 + Icges(5,2) * t357 + Icges(5,6) * t641;
t283 = Icges(5,1) * t358 + Icges(5,4) * t357 + Icges(5,5) * t641;
t478 = -t281 * t430 + t283 * t432;
t144 = -t279 * t413 + t411 * t478;
t627 = t120 + t144;
t716 = t431 * t627 + t433 * t626;
t240 = (-Icges(6,5) * t412 - Icges(6,6) * t414) * t590 + (Icges(6,3) * t411 + t413 * t503) * qJD(3);
t242 = (-Icges(6,1) * t412 - t668) * t590 + (Icges(6,5) * t411 + t413 * t512) * qJD(3);
t263 = (-Icges(5,5) * t430 - Icges(5,6) * t432) * t590 + (Icges(5,3) * t411 + t413 * t504) * qJD(3);
t265 = (-Icges(5,1) * t430 - t670) * t590 + (Icges(5,5) * t411 + t413 * t513) * qJD(3);
t592 = qJD(3) * t432;
t595 = qJD(3) * t411;
t715 = t594 * t654 + t723 * t595 + (t242 * t414 + t265 * t432) * t411 + (qJD(3) * t722 + t325 * t592 - t240 - t263) * t413;
t542 = -qJD(4) * t413 + qJD(1);
t470 = t431 * t542;
t230 = t412 * t443 + t414 * t470;
t231 = t412 * t470 - t414 * t443;
t149 = Icges(6,5) * t231 + Icges(6,6) * t230 + Icges(6,3) * t447;
t151 = Icges(6,4) * t231 + Icges(6,2) * t230 + Icges(6,6) * t447;
t153 = Icges(6,1) * t231 + Icges(6,4) * t230 + Icges(6,5) * t447;
t39 = (qJD(3) * t482 - t149) * t413 + (qJD(3) * t247 - t151 * t412 + t153 * t414 + (-t249 * t414 - t251 * t412) * qJD(4)) * t411;
t268 = t430 * t443 + t432 * t470;
t468 = t542 * t430;
t269 = t432 * t467 + (-t411 * t592 + t468) * t431;
t170 = Icges(5,5) * t269 + Icges(5,6) * t268 + Icges(5,3) * t447;
t172 = Icges(5,4) * t269 + Icges(5,2) * t268 + Icges(5,6) * t447;
t174 = Icges(5,1) * t269 + Icges(5,4) * t268 + Icges(5,5) * t447;
t47 = (qJD(3) * t478 - t170) * t413 + (qJD(3) * t279 - t172 * t430 + t174 * t432 + (-t281 * t432 - t283 * t430) * qJD(4)) * t411;
t714 = -t39 - t47;
t591 = qJD(3) * t433;
t557 = t411 * t591;
t441 = t431 * t541 + t557;
t469 = t433 * t542;
t228 = t412 * t441 + t414 * t469;
t229 = t412 * t469 - t414 * t441;
t559 = t413 * t591;
t446 = t559 - t567;
t148 = Icges(6,5) * t229 + Icges(6,6) * t228 + Icges(6,3) * t446;
t150 = Icges(6,4) * t229 + Icges(6,2) * t228 + Icges(6,6) * t446;
t152 = Icges(6,1) * t229 + Icges(6,4) * t228 + Icges(6,5) * t446;
t40 = (qJD(3) * t481 - t148) * t413 + (qJD(3) * t248 - t150 * t412 + t152 * t414 + (-t250 * t414 - t252 * t412) * qJD(4)) * t411;
t266 = t430 * t441 + t432 * t469;
t267 = -t432 * t441 + t433 * t468;
t169 = Icges(5,5) * t267 + Icges(5,6) * t266 + Icges(5,3) * t446;
t171 = Icges(5,4) * t267 + Icges(5,2) * t266 + Icges(5,6) * t446;
t173 = Icges(5,1) * t267 + Icges(5,4) * t266 + Icges(5,5) * t446;
t48 = (qJD(3) * t477 - t169) * t413 + (qJD(3) * t280 - t171 * t430 + t173 * t432 + (-t282 * t432 - t284 * t430) * qJD(4)) * t411;
t713 = t40 + t48;
t157 = t317 * t641 + t318 * t347 + t319 * t348;
t181 = t323 * t641 + t324 * t357 + t325 * t358;
t126 = t279 * t641 + t281 * t357 + t283 * t358;
t127 = t280 * t641 + t282 * t357 + t284 * t358;
t490 = t126 * t431 + t127 * t433;
t112 = t247 * t641 + t249 * t347 + t251 * t348;
t113 = t248 * t641 + t250 * t347 + t252 * t348;
t496 = t112 * t431 + t113 * t433;
t712 = (-t157 - t181) * t413 + (t490 + t496) * t411;
t158 = t317 * t640 + t349 * t318 + t350 * t319;
t182 = t323 * t640 + t359 * t324 + t360 * t325;
t128 = t279 * t640 + t359 * t281 + t360 * t283;
t129 = t280 * t640 + t359 * t282 + t360 * t284;
t488 = t128 * t431 + t129 * t433;
t114 = t247 * t640 + t349 * t249 + t350 * t251;
t115 = t248 * t640 + t349 * t250 + t350 * t252;
t494 = t114 * t431 + t115 * t433;
t680 = (-t158 - t182) * t413 + (t488 + t494) * t411;
t673 = Icges(4,4) * t411;
t515 = Icges(4,1) * t413 - t673;
t338 = Icges(4,5) * t431 + t433 * t515;
t645 = t338 * t413;
t672 = Icges(4,4) * t413;
t510 = -Icges(4,2) * t411 + t672;
t336 = Icges(4,6) * t431 + t433 * t510;
t650 = t336 * t411;
t473 = -t645 + t650;
t711 = t431 * t473;
t337 = -Icges(4,5) * t433 + t431 * t515;
t647 = t337 * t413;
t335 = -Icges(4,6) * t433 + t431 * t510;
t652 = t335 * t411;
t474 = -t647 + t652;
t709 = t433 * t474;
t418 = t431 * rSges(4,3);
t704 = -rSges(4,2) * t640 + t418;
t703 = -t318 * t414 - t319 * t412;
t702 = -t413 * t626 + t680;
t505 = Icges(4,5) * t413 - Icges(4,6) * t411;
t333 = -Icges(4,3) * t433 + t431 * t505;
t422 = qJD(4) + qJD(6);
t544 = -t422 + t598;
t701 = t431 * t544 + t557;
t700 = t433 * t544 - t558;
t427 = cos(pkin(10));
t466 = rSges(3,1) * t427 - rSges(3,2) * sin(pkin(10)) + pkin(1);
t675 = rSges(3,3) + qJ(2);
t322 = t431 * t675 + t433 * t466;
t699 = 2 * m(4);
t698 = 2 * m(5);
t697 = 2 * m(6);
t696 = 2 * m(7);
t695 = m(6) / 0.2e1;
t694 = m(7) / 0.2e1;
t693 = -t413 / 0.2e1;
t692 = t431 / 0.2e1;
t691 = t433 / 0.2e1;
t690 = -rSges(5,3) - pkin(8);
t375 = rSges(4,1) * t411 + rSges(4,2) * t413;
t689 = m(4) * t375;
t688 = pkin(3) * t413;
t687 = pkin(4) * t430;
t686 = pkin(5) * t414;
t685 = pkin(8) * t411;
t419 = t432 * pkin(4);
t409 = t419 + pkin(3);
t682 = pkin(3) - t409;
t428 = -qJ(5) - pkin(8);
t681 = pkin(8) + t428;
t679 = ((-t324 * t432 - t325 * t430 + t703) * qJD(4) + t717) * t411 + t715;
t678 = rSges(4,1) * t413;
t677 = rSges(6,3) * t411;
t676 = rSges(7,3) * t411;
t420 = -pkin(9) + t428;
t674 = -rSges(7,3) + t420;
t415 = qJ(6) + t423;
t406 = sin(t415);
t667 = Icges(7,4) * t406;
t407 = cos(t415);
t666 = Icges(7,4) * t407;
t521 = -t348 * rSges(6,1) - t347 * rSges(6,2);
t254 = rSges(6,3) * t641 - t521;
t661 = t254 * t433;
t524 = -t358 * rSges(5,1) - t357 * rSges(5,2);
t285 = rSges(5,3) * t641 - t524;
t659 = t285 * t433;
t511 = Icges(7,1) * t407 - t667;
t314 = -Icges(7,5) * t413 + t411 * t511;
t658 = t314 * t407;
t651 = t335 * t413;
t649 = t336 * t413;
t648 = t337 * t411;
t646 = t338 * t411;
t384 = pkin(5) * t412 + t687;
t373 = t384 * qJD(4);
t644 = t373 * t413;
t383 = t409 + t686;
t643 = t383 * t411;
t642 = t411 * t422;
t429 = -pkin(7) - qJ(2);
t637 = t429 * t433;
t635 = t431 * t406;
t634 = t431 * t407;
t545 = -t413 * t422 + qJD(1);
t471 = t433 * t545;
t210 = t406 * t701 + t407 * t471;
t211 = t406 * t471 - t407 * t701;
t577 = t211 * rSges(7,1) + t210 * rSges(7,2) + rSges(7,3) * t559;
t138 = -rSges(7,3) * t567 + t577;
t374 = (t419 + t686) * qJD(4);
t535 = -t373 * t639 + t431 * t374 + t384 * t596 + t420 * t567;
t405 = pkin(4) * t636;
t588 = qJD(4) * t432;
t584 = pkin(4) * t588;
t568 = qJD(1) * t405 + t428 * t567 + t431 * t584;
t589 = qJD(4) * t430;
t585 = pkin(4) * t589;
t601 = t420 - t428;
t604 = t383 - t409;
t628 = -t604 * t557 + (-t604 * t597 + (-qJD(3) * t601 + t585) * t433) * t413 + t535 - t568 + t138;
t472 = t431 * t545;
t212 = -t406 * t700 + t407 * t472;
t213 = t406 * t472 + t407 * t700;
t519 = t213 * rSges(7,1) + t212 * rSges(7,2);
t139 = rSges(7,3) * t447 + t519;
t329 = -t407 * t433 - t413 * t635;
t330 = -t406 * t433 + t413 * t634;
t518 = -t330 * rSges(7,1) - t329 * rSges(7,2);
t238 = rSges(7,3) * t641 - t518;
t625 = t139 * t640 + t238 * t559;
t575 = t229 * rSges(6,1) + t228 * rSges(6,2) + rSges(6,3) * t559;
t154 = -rSges(6,3) * t567 + t575;
t391 = pkin(8) * t559;
t587 = qJD(5) * t411;
t392 = t433 * t587;
t534 = t392 + t568;
t166 = -t391 + (pkin(8) * t597 + t591 * t682) * t411 + ((-qJD(3) * t428 - t585) * t433 + t682 * t597) * t413 + t534;
t624 = -t154 - t166;
t390 = pkin(3) * t558;
t404 = pkin(4) * t631;
t553 = t682 * t413;
t458 = -t553 - t685;
t543 = t413 * t585;
t516 = t409 * t558 + t428 * t447 + t431 * t543 + t433 * t584;
t167 = t390 + (-pkin(8) * t594 + t587) * t431 + (t433 * t458 + t404) * qJD(1) - t516;
t603 = t428 * t641 + t405;
t271 = t431 * t458 - t603;
t623 = t167 * t640 + t271 * t559;
t622 = t720 * t595;
t549 = t604 * t413;
t453 = -t411 * t420 + t549;
t205 = -t384 * t433 + t431 * t453 + t603;
t621 = t205 + t238;
t548 = t601 * t411;
t605 = -t409 * t639 - t404;
t606 = t383 * t639 + t431 * t384;
t206 = -t433 * t548 + t605 + t606;
t331 = -t406 * t639 + t634;
t332 = t407 * t639 + t635;
t239 = t332 * rSges(7,1) + t331 * rSges(7,2) + rSges(7,3) * t640;
t620 = t206 + t239;
t517 = rSges(7,1) * t407 - rSges(7,2) * t406;
t316 = -rSges(7,3) * t413 + t411 * t517;
t619 = t239 * t595 + t316 * t567;
t520 = rSges(6,1) * t414 - rSges(6,2) * t412;
t243 = (-rSges(6,1) * t412 - rSges(6,2) * t414) * t590 + (t413 * t520 + t677) * qJD(3);
t556 = t411 * t589;
t256 = -pkin(4) * t556 - qJD(5) * t413 + (-t411 * t681 - t553) * qJD(3);
t618 = -t243 - t256;
t399 = pkin(3) * t639;
t355 = pkin(8) * t640 + t399;
t465 = -t428 * t640 - t605;
t272 = t465 - t355;
t311 = -t411 * t682 + t413 * t681;
t308 = t311 * t597;
t617 = t272 * t595 + t411 * t308;
t616 = -t254 - t271;
t255 = t350 * rSges(6,1) + t349 * rSges(6,2) + rSges(6,3) * t640;
t615 = -t255 - t272;
t614 = t413 * t271 + t311 * t641;
t523 = rSges(5,1) * t432 - rSges(5,2) * t430;
t270 = (-rSges(5,1) * t430 - rSges(5,2) * t432) * t590 + (rSges(5,3) * t411 + t413 * t523) * qJD(3);
t528 = t685 + t688;
t366 = t528 * qJD(3);
t613 = -t270 - t366;
t286 = t360 * rSges(5,1) + t359 * rSges(5,2) + rSges(5,3) * t640;
t612 = -t286 - t355;
t287 = t411 * t604 + t413 * t601;
t611 = t287 + t316;
t187 = t413 * t238 + t316 * t641;
t377 = pkin(3) * t411 - pkin(8) * t413;
t356 = t377 * t597;
t610 = t308 + t356;
t320 = -rSges(6,3) * t413 + t411 * t520;
t609 = -t311 - t320;
t328 = -rSges(5,3) * t413 + t411 * t523;
t608 = -t328 - t377;
t354 = t528 * t431;
t607 = t431 * t354 + t433 * t355;
t417 = qJD(2) * t433;
t602 = t429 * t597 + t417;
t600 = t431 ^ 2 + t433 ^ 2;
t334 = Icges(4,3) * t431 + t433 * t505;
t599 = qJD(1) * t334;
t491 = t126 * t433 - t127 * t431;
t497 = t112 * t433 - t113 * t431;
t583 = -t497 / 0.2e1 - t491 / 0.2e1;
t489 = t128 * t433 - t129 * t431;
t495 = t114 * t433 - t115 * t431;
t582 = -t495 / 0.2e1 - t489 / 0.2e1;
t581 = -t166 - t628;
t201 = (-t373 + t585) * t411 + (t549 - t548) * qJD(3);
t222 = (-rSges(7,1) * t406 - rSges(7,2) * t407) * t642 + (t413 * t517 + t676) * qJD(3);
t580 = -t201 - t222 - t256;
t579 = -t271 - t621;
t578 = -t272 - t620;
t574 = -t366 + t618;
t572 = t267 * rSges(5,1) + t266 * rSges(5,2) + rSges(5,3) * t559;
t571 = -t311 - t611;
t570 = t431 * (pkin(8) * t447 + qJD(1) * t399 - t390) + t433 * (-pkin(8) * t567 + t391 + (-t413 * t597 - t557) * pkin(3)) + t354 * t596;
t569 = -t377 + t609;
t565 = t320 * t597;
t564 = t328 * t597;
t506 = -Icges(7,2) * t406 + t666;
t313 = -Icges(7,6) * t413 + t411 * t506;
t563 = t313 * t594;
t555 = t641 / 0.2e1;
t554 = t640 / 0.2e1;
t550 = t609 * t433;
t289 = t608 * t433;
t408 = pkin(2) * t427 + pkin(1);
t547 = -t383 * t413 - t408;
t546 = t433 * t408 - t431 * t429;
t540 = t413 * t139 + t222 * t641 + t316 * t447;
t539 = t413 * t167 + t256 * t641 + t311 * t447;
t538 = -t366 + t580;
t537 = t431 * t271 + t433 * t272 + t607;
t536 = -t377 + t571;
t529 = t571 * t433;
t200 = t569 * t433;
t502 = Icges(7,5) * t407 - Icges(7,6) * t406;
t312 = -Icges(7,3) * t413 + t411 * t502;
t175 = -t312 * t413 + (-t313 * t406 + t658) * t411;
t232 = Icges(7,5) * t330 + Icges(7,6) * t329 + Icges(7,3) * t641;
t234 = Icges(7,4) * t330 + Icges(7,2) * t329 + Icges(7,6) * t641;
t236 = Icges(7,1) * t330 + Icges(7,4) * t329 + Icges(7,5) * t641;
t484 = -t234 * t406 + t236 * t407;
t116 = -t232 * t413 + t411 * t484;
t233 = Icges(7,5) * t332 + Icges(7,6) * t331 + Icges(7,3) * t640;
t235 = Icges(7,4) * t332 + Icges(7,2) * t331 + Icges(7,6) * t640;
t237 = Icges(7,1) * t332 + Icges(7,4) * t331 + Icges(7,5) * t640;
t483 = -t235 * t406 + t237 * t407;
t117 = -t233 * t413 + t411 * t483;
t492 = t116 * t431 + t117 * t433;
t147 = t312 * t640 + t331 * t313 + t332 * t314;
t133 = Icges(7,5) * t213 + Icges(7,6) * t212 + Icges(7,3) * t447;
t135 = Icges(7,4) * t213 + Icges(7,2) * t212 + Icges(7,6) * t447;
t137 = Icges(7,1) * t213 + Icges(7,4) * t212 + Icges(7,5) * t447;
t26 = t133 * t640 + t331 * t135 + t332 * t137 + t210 * t234 + t211 * t236 + t232 * t446;
t132 = Icges(7,5) * t211 + Icges(7,6) * t210 + Icges(7,3) * t446;
t134 = Icges(7,4) * t211 + Icges(7,2) * t210 + Icges(7,6) * t446;
t136 = Icges(7,1) * t211 + Icges(7,4) * t210 + Icges(7,5) * t446;
t27 = t132 * t640 + t331 * t134 + t332 * t136 + t210 * t235 + t211 * t237 + t233 * t446;
t104 = t232 * t640 + t331 * t234 + t332 * t236;
t105 = t233 * t640 + t331 * t235 + t332 * t237;
t498 = t104 * t431 + t105 * t433;
t499 = t104 * t433 - t105 * t431;
t219 = (-Icges(7,5) * t406 - Icges(7,6) * t407) * t642 + (Icges(7,3) * t411 + t413 * t502) * qJD(3);
t220 = (-Icges(7,2) * t407 - t667) * t642 + (Icges(7,6) * t411 + t413 * t506) * qJD(3);
t221 = (-Icges(7,1) * t406 - t666) * t642 + (Icges(7,5) * t411 + t413 * t511) * qJD(3);
t62 = t210 * t313 + t211 * t314 + t219 * t640 + t331 * t220 + t332 * t221 + t312 * t446;
t5 = (qJD(3) * t498 - t62) * t413 + (qJD(1) * t499 + qJD(3) * t147 + t26 * t431 + t27 * t433) * t411;
t146 = t312 * t641 + t313 * t329 + t314 * t330;
t102 = t232 * t641 + t234 * t329 + t236 * t330;
t103 = t233 * t641 + t235 * t329 + t237 * t330;
t500 = t102 * t431 + t103 * t433;
t54 = -t146 * t413 + t411 * t500;
t55 = -t147 * t413 + t411 * t498;
t28 = t133 * t641 + t329 * t135 + t330 * t137 + t212 * t234 + t213 * t236 + t232 * t447;
t29 = t132 * t641 + t329 * t134 + t330 * t136 + t212 * t235 + t213 * t237 + t233 * t447;
t501 = t102 * t433 - t103 * t431;
t63 = t212 * t313 + t213 * t314 + t219 * t641 + t329 * t220 + t330 * t221 + t312 * t447;
t6 = (qJD(3) * t500 - t63) * t413 + (qJD(1) * t501 + qJD(3) * t146 + t28 * t431 + t29 * t433) * t411;
t527 = t5 * t640 + t55 * t559 + t6 * t641 + (-t175 * t413 + t411 * t492) * t595 + t447 * t54;
t526 = -rSges(4,2) * t411 + t678;
t525 = t269 * rSges(5,1) + t268 * rSges(5,2);
t522 = t231 * rSges(6,1) + t230 * rSges(6,2);
t509 = Icges(4,2) * t413 + t673;
t493 = t116 * t433 - t117 * t431;
t445 = t411 * t674 + t547;
t179 = (t384 - t429) * t433 + t445 * t431 + t518;
t180 = -t420 * t640 + t239 + t546 + t606;
t487 = t179 * t433 + t180 * t431;
t188 = -t413 * t239 - t316 * t640;
t486 = t187 * t433 + t188 * t431;
t459 = -t409 * t413 - t408 - t677;
t437 = t431 * t459 - t637;
t190 = t437 + t521 + t603;
t191 = t465 + t546 + t255;
t485 = t190 * t433 + t191 * t431;
t476 = -t286 * t431 + t659;
t475 = -t431 * t285 - t286 * t433;
t342 = rSges(4,1) * t639 + t704;
t163 = t536 * t433;
t71 = t228 * t318 + t229 * t319 + t240 * t640 + t349 * t241 + t350 * t242 + t317 * t446;
t82 = t263 * t640 + t359 * t264 + t360 * t265 + t266 * t324 + t267 * t325 + t323 * t446;
t464 = t48 / 0.2e1 + t40 / 0.2e1 + t71 / 0.2e1 + t82 / 0.2e1;
t72 = t230 * t318 + t231 * t319 + t240 * t641 + t347 * t241 + t348 * t242 + t317 * t447;
t83 = t263 * t641 + t357 * t264 + t358 * t265 + t268 * t324 + t269 * t325 + t323 * t447;
t463 = t72 / 0.2e1 + t83 / 0.2e1 + t47 / 0.2e1 + t39 / 0.2e1;
t462 = -t413 * t627 + t712;
t461 = -t408 - t526;
t460 = t433 * t166 + t431 * t167 + t271 * t596 + t570;
t457 = t144 / 0.2e1 + t120 / 0.2e1 + t181 / 0.2e1 + t157 / 0.2e1;
t456 = t145 / 0.2e1 + t121 / 0.2e1 + t182 / 0.2e1 + t158 / 0.2e1;
t455 = qJD(3) * t375;
t454 = t431 * t615 + t661;
t451 = qJD(3) * t509;
t450 = qJD(3) * (-Icges(4,5) * t411 - Icges(4,6) * t413);
t449 = (-t413 * t420 - t643) * qJD(3);
t448 = t411 * t690 - t408 - t688;
t444 = t205 * t433 + t431 * t578;
t14 = qJD(1) * t498 - t26 * t433 + t27 * t431;
t15 = qJD(1) * t500 - t28 * t433 + t29 * t431;
t33 = (qJD(3) * t484 - t133) * t413 + (qJD(3) * t232 + (-t234 * t422 + t137) * t407 + (-t236 * t422 - t135) * t406) * t411;
t34 = (qJD(3) * t483 - t132) * t413 + (qJD(3) * t233 + (-t235 * t422 + t136) * t407 + (-t237 * t422 - t134) * t406) * t411;
t440 = t5 * t692 + t15 * t555 + t14 * t554 + (qJD(1) * t492 - t33 * t433 + t34 * t431) * t693 - t433 * t6 / 0.2e1 + t54 * t597 / 0.2e1 + t55 * t552 - t493 * t595 / 0.2e1 - t719 * t499 - t718 * t501;
t439 = rSges(4,2) * t567 + rSges(4,3) * t596 - t433 * t455;
t438 = -t413 * t219 + t312 * t595 + t594 * t658 + (t221 * t411 - t313 * t642) * t407;
t436 = t431 * t448 - t637;
t321 = -t431 * t466 + t433 * t675;
t168 = t175 * t595;
t76 = (-t563 + (-t314 * t422 - t220) * t411) * t406 + t438;
t9 = t168 + (qJD(3) * t492 - t76) * t413 + (qJD(1) * t493 + t33 * t431 + t34 * t433) * t411;
t435 = -t413 * t9 - t55 * t567 + t527;
t434 = t168 + (t33 + t63) * t555 + (t34 + t62) * t554 + (t117 + t147) * t719 + (t116 + t146) * t718;
t416 = qJD(2) * t431;
t365 = t526 * qJD(3);
t362 = t505 * qJD(3);
t341 = -rSges(4,3) * t433 + t431 * t526;
t307 = t342 + t546;
t306 = (rSges(4,3) - t429) * t433 + t461 * t431;
t305 = -qJD(1) * t322 + t417;
t304 = qJD(1) * t321 + t416;
t288 = t608 * t431;
t274 = t431 * t450 + t599;
t273 = -qJD(1) * t333 + t433 * t450;
t246 = t271 * t640;
t218 = t238 * t640;
t215 = t375 * t593 + (t433 * t461 - t418) * qJD(1) + t602;
t214 = t416 + (-t637 + (-t408 - t678) * t431) * qJD(1) + t439;
t203 = t546 - t612;
t202 = t436 + t524;
t199 = t569 * t431;
t198 = -t413 * t286 - t328 * t640;
t197 = t285 * t413 + t328 * t641;
t196 = t431 * t334 - t433 * t473;
t195 = t431 * t333 - t709;
t194 = -t334 * t433 - t711;
t193 = -t333 * t433 - t431 * t474;
t186 = t476 * t411;
t184 = qJD(1) * t289 + t431 * t613;
t183 = t433 * t613 + t356 + t564;
t177 = rSges(5,3) * t447 + t525;
t176 = -rSges(5,3) * t567 + t572;
t162 = t536 * t431;
t161 = -t239 * t641 + t218;
t156 = -t475 + t607;
t155 = rSges(6,3) * t447 + t522;
t125 = t448 * t596 + t560 * t690 + t390 - t525 + t602;
t124 = -pkin(3) * t557 + qJD(1) * t436 + t391 + t416 + t572;
t123 = t411 * t550 + t413 * t615;
t122 = t254 * t413 + t320 * t641 + t614;
t119 = -t374 * t433 + (t449 - t644) * t431 + ((t384 - t687) * t431 + t453 * t433) * qJD(1) + t516;
t107 = qJD(1) * t200 + t431 * t574;
t106 = t433 * t574 + t565 + t610;
t101 = t411 * t454 + t246;
t100 = (-rSges(6,3) * t594 - t587) * t431 + (t433 * t459 - t404) * qJD(1) + t516 - t522 + t602;
t99 = t416 + (-t543 + (-t409 * t411 - t413 * t428) * qJD(3)) * t433 + t437 * qJD(1) + t534 + t575;
t98 = t431 * t254 + t255 * t433 + t537;
t97 = (t328 * t593 + t177) * t413 + (-qJD(3) * t285 + t431 * t270 + t328 * t596) * t411;
t96 = (-t328 * t591 - t176) * t413 + (qJD(3) * t286 - t270 * t433 + t564) * t411;
t95 = (qJD(1) * t445 + t374) * t433 + (-qJD(1) * t384 - t587 + t644 + (t413 * t674 + t643) * qJD(3)) * t431 - t519 + t602;
t94 = t392 + t416 + t433 * t449 + (-t637 + (t547 - t676) * t431) * qJD(1) + t535 + t577;
t93 = t411 * t529 + t413 * t578;
t92 = t205 * t413 + t287 * t641 + t187 + t614;
t90 = qJD(1) * t163 + t431 * t538;
t89 = t433 * t538 + t597 * t611 + t610;
t86 = -t238 * t595 + t540;
t85 = -t222 * t640 + (-t316 * t591 - t138) * t413 + t619;
t81 = t411 * t444 + t218 + t246;
t80 = t431 * t621 + t433 * t620 + t537;
t73 = t476 * t594 + (qJD(1) * t475 - t176 * t431 + t177 * t433) * t411;
t70 = t176 * t433 + t431 * t177 + (t431 * t612 + t659) * qJD(1) + t570;
t56 = -t239 * t560 + (-t138 * t431 + (-t431 * t238 - t239 * t433) * qJD(1)) * t411 + t625;
t46 = (t320 * t593 + t155) * t413 + (qJD(3) * t616 + t431 * t243 + t320 * t596) * t411 + t539;
t45 = (qJD(3) * t550 + t624) * t413 + (qJD(3) * t255 + t433 * t618 + t565) * t411 + t617;
t44 = t169 * t641 + t357 * t171 + t358 * t173 + t268 * t282 + t269 * t284 + t280 * t447;
t43 = t170 * t641 + t357 * t172 + t358 * t174 + t268 * t281 + t269 * t283 + t279 * t447;
t42 = t169 * t640 + t359 * t171 + t360 * t173 + t266 * t282 + t267 * t284 + t280 * t446;
t41 = t170 * t640 + t359 * t172 + t360 * t174 + t266 * t281 + t267 * t283 + t279 * t446;
t38 = t148 * t641 + t347 * t150 + t348 * t152 + t230 * t250 + t231 * t252 + t248 * t447;
t37 = t149 * t641 + t347 * t151 + t348 * t153 + t230 * t249 + t231 * t251 + t247 * t447;
t36 = t148 * t640 + t349 * t150 + t350 * t152 + t228 * t250 + t229 * t252 + t248 * t446;
t35 = t149 * t640 + t349 * t151 + t350 * t153 + t228 * t249 + t229 * t251 + t247 * t446;
t30 = t154 * t433 + t431 * t155 + (t661 + (-t355 + t615) * t431) * qJD(1) + t460;
t25 = t454 * t594 + (t155 * t433 + t624 * t431 + (t431 * t616 + t433 * t615) * qJD(1)) * t411 + t623;
t24 = (t287 * t593 + t119) * t413 + (qJD(3) * t579 + t431 * t201 + t287 * t596) * t411 + t539 + t540;
t23 = (qJD(3) * t206 + t287 * t597 + t433 * t580) * t411 + (qJD(3) * t529 + t581) * t413 + t617 + t619;
t22 = t628 * t433 + (t119 + t139) * t431 + (t621 * t433 + (-t355 + t578) * t431) * qJD(1) + t460;
t21 = qJD(1) * t490 - t43 * t433 + t44 * t431;
t20 = qJD(1) * t488 - t41 * t433 + t42 * t431;
t19 = t444 * t594 + (t119 * t433 + t581 * t431 + (t431 * t579 + t433 * t578) * qJD(1)) * t411 + t623 + t625;
t18 = qJD(1) * t496 - t37 * t433 + t38 * t431;
t17 = qJD(1) * t494 - t35 * t433 + t36 * t431;
t11 = (qJD(3) * t490 - t83) * t413 + (qJD(1) * t491 + qJD(3) * t181 + t43 * t431 + t433 * t44) * t411;
t10 = (qJD(3) * t488 - t82) * t413 + (qJD(1) * t489 + qJD(3) * t182 + t41 * t431 + t42 * t433) * t411;
t8 = (qJD(3) * t496 - t72) * t413 + (qJD(1) * t497 + qJD(3) * t157 + t37 * t431 + t38 * t433) * t411;
t7 = (qJD(3) * t494 - t71) * t413 + (qJD(1) * t495 + qJD(3) * t158 + t35 * t431 + t36 * t433) * t411;
t1 = [t438 + (t100 * t190 + t191 * t99) * t697 + (t124 * t203 + t125 * t202) * t698 + (t214 * t307 + t215 * t306) * t699 + (t179 * t95 + t180 * t94) * t696 + 0.2e1 * m(3) * (t304 * t322 + t305 * t321) - t325 * t556 + (-t509 + t515) * t595 + (Icges(4,1) * t411 + t510 + t672) * t594 + t703 * t590 + (-t314 * t642 - t563) * t406 + (-t220 * t406 - t324 * t588 + t717) * t411 + t715; m(7) * (qJD(1) * t487 + t431 * t95 - t433 * t94) + m(5) * (-t124 * t433 + t431 * t125 + (t202 * t433 + t203 * t431) * qJD(1)) + m(6) * (qJD(1) * t485 + t431 * t100 - t433 * t99) + m(4) * (-t214 * t433 + t431 * t215 + (t306 * t433 + t307 * t431) * qJD(1)) + m(3) * (-t304 * t433 + t431 * t305 + (t321 * t433 + t322 * t431) * qJD(1)); 0; m(5) * (t124 * t288 + t125 * t289 + t183 * t202 + t184 * t203) + m(7) * (t162 * t94 + t163 * t95 + t179 * t89 + t180 * t90) + m(6) * (t100 * t200 + t106 * t190 + t107 * t191 + t199 * t99) + ((qJD(1) * t336 - t431 * t451) * t693 + t338 * t721 - t63 / 0.2e1 - t33 / 0.2e1 + m(4) * (-t215 * t375 - t306 * t365) + t362 * t691 + (t652 / 0.2e1 - t647 / 0.2e1) * qJD(3) - t463) * t433 + ((-qJD(1) * t335 - t433 * t451) * t413 / 0.2e1 + t337 * t721 + t62 / 0.2e1 + t34 / 0.2e1 + m(4) * (-t214 * t375 - t307 * t365) + t362 * t692 + (-t650 / 0.2e1 + t645 / 0.2e1) * qJD(3) + t464) * t431 + ((-t307 * t689 + t649 / 0.2e1 + t646 / 0.2e1 + t147 / 0.2e1 + t117 / 0.2e1 + t456) * t433 + (t306 * t689 + t651 / 0.2e1 + t648 / 0.2e1 + t146 / 0.2e1 + t116 / 0.2e1 + t457) * t431) * qJD(1); m(5) * (t183 * t431 - t184 * t433 + (t288 * t431 + t289 * t433) * qJD(1)) + m(6) * (t106 * t431 - t107 * t433 + (t199 * t431 + t200 * t433) * qJD(1)) + m(7) * (t89 * t431 - t433 * t90 + (t162 * t431 + t163 * t433) * qJD(1)); t431 * t14 - t433 * t15 + (t162 * t90 + t163 * t89 + t22 * t80) * t696 + (t106 * t200 + t107 * t199 + t30 * t98) * t697 + t431 * t20 - t433 * t18 + (t156 * t70 + t183 * t289 + t184 * t288) * t698 - t433 * t21 + t431 * t17 + t431 * ((t431 * t273 + (t195 + t711) * qJD(1)) * t431 + (t196 * qJD(1) + (t335 * t594 + t337 * t595) * t433 + (-t274 + (-t646 - t649) * qJD(3) + (t334 - t474) * qJD(1)) * t431) * t433) - t433 * ((t433 * t274 + (t194 + t709) * qJD(1)) * t433 + (t193 * qJD(1) + (-t336 * t594 - t338 * t595 + t599) * t431 + (-t273 + (t648 + t651) * qJD(3) - t473 * qJD(1)) * t433) * t431) + ((t431 * t341 + t342 * t433) * ((qJD(1) * t341 + t439) * t433 + (-t431 * t455 + (-t342 + t704) * qJD(1)) * t431) + t600 * t375 * t365) * t699 + (-t193 * t433 + t194 * t431 - t491 - t497 - t501) * t597 + (-t195 * t433 + t196 * t431 - t489 - t495 - t499) * t596; m(7) * (t179 * t24 + t180 * t23 + t92 * t95 + t93 * t94) + m(6) * (t100 * t122 + t123 * t99 + t190 * t46 + t191 * t45) + m(5) * (t124 * t198 + t125 * t197 + t202 * t97 + t203 * t96) + t434 + (-t76 + (t431 * t457 + t433 * t456) * qJD(3) - t679) * t413 + (t464 * t433 + t463 * t431 + (-t431 * t456 + t433 * t457) * qJD(1)) * t411 - t622; m(5) * (t97 * t431 - t433 * t96 + (t197 * t433 + t198 * t431) * qJD(1)) + m(6) * (t46 * t431 - t433 * t45 + (t122 * t433 + t123 * t431) * qJD(1)) + m(7) * (-t23 * t433 + t24 * t431 + (t431 * t93 + t433 * t92) * qJD(1)); t440 + ((-t431 * t582 + t433 * t583) * qJD(1) + (t18 + t21) * t692 + (t17 + t20) * t691 + (t431 * t626 - t433 * t627) * qJD(3) / 0.2e1) * t411 + m(5) * (t156 * t73 + t183 * t197 + t184 * t198 + t186 * t70 + t288 * t96 + t289 * t97) + m(7) * (t162 * t23 + t163 * t24 + t19 * t80 + t22 * t81 + t89 * t92 + t90 * t93) + m(6) * (t101 * t30 + t106 * t122 + t107 * t123 + t199 * t45 + t200 * t46 + t25 * t98) + (t10 / 0.2e1 + t7 / 0.2e1 + t583 * t594) * t431 + (-t11 / 0.2e1 - t8 / 0.2e1 + t582 * t594) * t433 + (qJD(1) * t716 + t713 * t431 + t714 * t433) * t693 + (t431 * t712 + t680 * t433) * qJD(1) / 0.2e1; (t19 * t81 + t23 * t93 + t24 * t92) * t696 + (t101 * t25 + t122 * t46 + t123 * t45) * t697 + (t186 * t73 + t197 * t97 + t198 * t96) * t698 + (-t9 + t679 * t413 + (t462 * t431 + t433 * t702) * qJD(3) + t622) * t413 + ((t10 + t7) * t433 + (t11 + t8) * t431 + (t714 * t431 - t713 * t433) * t413 + (t716 * t411 + t413 * t720) * qJD(3) + (t462 * t433 + (-t55 - t702) * t431) * qJD(1)) * t411 + t527; 0.2e1 * (t485 * t695 + t487 * t694) * t594 + 0.2e1 * ((-t179 * t597 + t180 * t596 + t431 * t94 + t433 * t95) * t694 + (t100 * t433 - t190 * t597 + t191 * t596 + t431 * t99) * t695) * t411; 0; 0.2e1 * ((t162 * t593 + t163 * t591 - t22) * t694 + (t199 * t593 + t200 * t591 - t30) * t695) * t413 + 0.2e1 * ((qJD(3) * t80 + t162 * t596 - t163 * t597 + t431 * t90 + t433 * t89) * t694 + (qJD(3) * t98 + t106 * t433 + t107 * t431 + t199 * t596 - t200 * t597) * t695) * t411; 0.2e1 * ((t591 * t92 + t593 * t93 - t19) * t694 + (t122 * t591 + t123 * t593 - t25) * t695) * t413 + 0.2e1 * ((qJD(3) * t81 + t23 * t431 + t24 * t433 + t596 * t93 - t597 * t92) * t694 + (qJD(3) * t101 - t122 * t597 + t123 * t596 + t431 * t45 + t433 * t46) * t695) * t411; 0.4e1 * (t695 + t694) * (-0.1e1 + t600) * t411 * t594; t434 - t76 * t413 + m(7) * (t179 * t86 + t180 * t85 + t187 * t95 + t188 * t94); m(7) * (qJD(1) * t486 + t86 * t431 - t433 * t85); t440 + m(7) * (t161 * t22 + t162 * t85 + t163 * t86 + t187 * t89 + t188 * t90 + t56 * t80); m(7) * (t161 * t19 + t187 * t24 + t188 * t23 + t56 * t81 + t85 * t93 + t86 * t92) + t435; m(7) * ((qJD(3) * t486 - t56) * t413 + (qJD(3) * t161 + t431 * t85 + t433 * t86 + (-t187 * t431 + t188 * t433) * qJD(1)) * t411); (t161 * t56 + t187 * t86 + t188 * t85) * t696 + t435;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;
