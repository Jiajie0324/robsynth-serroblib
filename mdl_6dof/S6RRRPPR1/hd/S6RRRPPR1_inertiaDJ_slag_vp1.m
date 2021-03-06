% Calculate time derivative of joint inertia matrix for
% S6RRRPPR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta4,theta5]';
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
% Datum: 2019-03-09 15:23
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRRPPR1_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR1_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR1_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPPR1_inertiaDJ_slag_vp1: pkin has to be [11x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPPR1_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRRPPR1_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRRPPR1_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:21:15
% EndTime: 2019-03-09 15:21:55
% DurationCPUTime: 25.16s
% Computational Cost: add. (44286->1066), mult. (37609->1407), div. (0->0), fcn. (34311->12), ass. (0->538)
t428 = sin(qJ(1));
t430 = cos(qJ(1));
t423 = qJ(2) + qJ(3);
t408 = pkin(10) + t423;
t399 = sin(t408);
t400 = cos(t408);
t503 = Icges(5,5) * t400 - Icges(5,6) * t399;
t297 = Icges(5,3) * t428 + t430 * t503;
t411 = sin(t423);
t412 = cos(t423);
t504 = Icges(4,5) * t412 - Icges(4,6) * t411;
t319 = Icges(4,3) * t428 + t430 * t504;
t726 = t297 + t319;
t354 = Icges(5,5) * t399 + Icges(5,6) * t400;
t366 = Icges(4,5) * t411 + Icges(4,6) * t412;
t723 = t354 + t366;
t658 = Icges(5,4) * t399;
t355 = Icges(5,2) * t400 + t658;
t657 = Icges(5,4) * t400;
t356 = Icges(5,1) * t399 + t657;
t660 = Icges(4,4) * t411;
t367 = Icges(4,2) * t412 + t660;
t659 = Icges(4,4) * t412;
t368 = Icges(4,1) * t411 + t659;
t725 = t355 * t399 - t356 * t400 + t367 * t411 - t368 * t412;
t414 = t428 * rSges(4,3);
t672 = rSges(4,1) * t412;
t529 = -rSges(4,2) * t411 + t672;
t330 = t430 * t529 + t414;
t420 = qJD(2) + qJD(3);
t508 = -Icges(5,2) * t399 + t657;
t316 = t508 * t420;
t514 = Icges(5,1) * t400 - t658;
t317 = t514 * t420;
t509 = -Icges(4,2) * t411 + t659;
t338 = t509 * t420;
t515 = Icges(4,1) * t412 - t660;
t339 = t515 * t420;
t631 = t368 * t420;
t632 = t367 * t420;
t633 = t356 * t420;
t634 = t355 * t420;
t722 = (t339 - t632) * t412 + (-t338 - t631) * t411 + (t317 - t634) * t400 + (-t316 - t633) * t399 + t723 * qJD(1);
t431 = -pkin(8) - pkin(7);
t427 = sin(qJ(2));
t587 = qJD(2) * t427;
t581 = pkin(2) * t587;
t720 = qJD(1) * t431 + t581;
t419 = pkin(11) + qJ(6);
t407 = cos(t419);
t406 = sin(t419);
t655 = Icges(7,4) * t407;
t506 = -Icges(7,2) * t406 + t655;
t626 = t400 * t420;
t656 = Icges(7,4) * t406;
t168 = t506 * t626 + (Icges(7,6) * t420 + (-Icges(7,2) * t407 - t656) * qJD(6)) * t399;
t277 = -Icges(7,6) * t400 + t399 * t506;
t512 = Icges(7,1) * t407 - t656;
t278 = -Icges(7,5) * t400 + t399 * t512;
t719 = -t168 * t406 + (-t277 * t407 - t278 * t406) * qJD(6);
t718 = (t503 + t504) * t420 + t725 * qJD(1);
t590 = qJD(1) * t428;
t425 = cos(pkin(11));
t613 = t425 * t428;
t424 = sin(pkin(11));
t614 = t424 * t430;
t348 = t400 * t613 - t614;
t612 = t425 * t430;
t615 = t424 * t428;
t469 = t400 * t615 + t612;
t628 = t399 * t428;
t225 = Icges(6,4) * t348 - Icges(6,2) * t469 + Icges(6,6) * t628;
t227 = Icges(6,1) * t348 - Icges(6,4) * t469 + Icges(6,5) * t628;
t296 = -Icges(5,3) * t430 + t428 * t503;
t318 = -Icges(4,3) * t430 + t428 * t504;
t349 = -t400 * t614 + t613;
t350 = t400 * t612 + t615;
t223 = Icges(6,5) * t348 - Icges(6,6) * t469 + Icges(6,3) * t628;
t627 = t399 * t430;
t577 = t223 * t627;
t298 = -Icges(5,6) * t430 + t428 * t508;
t300 = -Icges(5,5) * t430 + t428 * t514;
t490 = t298 * t399 - t300 * t400;
t705 = t430 * t490;
t320 = -Icges(4,6) * t430 + t428 * t509;
t322 = -Icges(4,5) * t430 + t428 * t515;
t488 = t320 * t411 - t322 * t412;
t706 = t430 * t488;
t717 = -t225 * t349 - t227 * t350 - t577 + t705 + t706 + (-t296 - t318) * t428;
t226 = Icges(6,4) * t350 + Icges(6,2) * t349 + Icges(6,6) * t627;
t228 = Icges(6,1) * t350 + Icges(6,4) * t349 + Icges(6,5) * t627;
t321 = Icges(4,6) * t428 + t430 * t509;
t323 = Icges(4,5) * t428 + t430 * t515;
t487 = t321 * t411 - t323 * t412;
t299 = Icges(5,6) * t428 + t430 * t508;
t301 = Icges(5,5) * t428 + t430 * t514;
t489 = t299 * t399 - t301 * t400;
t224 = Icges(6,5) * t350 + Icges(6,6) * t349 + Icges(6,3) * t627;
t575 = t224 * t627;
t716 = t226 * t349 + t228 * t350 + t575 + (-t487 - t489) * t430 + t726 * t428;
t358 = rSges(5,1) * t399 + rSges(5,2) * t400;
t467 = t358 * t420;
t401 = pkin(5) * t425 + pkin(4);
t675 = pkin(4) - t401;
t715 = t399 * t675;
t426 = -pkin(9) - qJ(5);
t610 = qJ(5) + t426;
t714 = t400 * t610;
t713 = t400 * t675;
t429 = cos(qJ(2));
t388 = rSges(3,1) * t427 + rSges(3,2) * t429;
t465 = qJD(2) * t388;
t712 = t428 * t465;
t661 = Icges(3,4) * t429;
t511 = -Icges(3,2) * t427 + t661;
t344 = Icges(3,6) * t428 + t430 * t511;
t662 = Icges(3,4) * t427;
t517 = Icges(3,1) * t429 - t662;
t346 = Icges(3,5) * t428 + t430 * t517;
t485 = t344 * t427 - t346 * t429;
t711 = t428 * t485;
t710 = t428 * t487;
t709 = t428 * t489;
t402 = t429 * pkin(2) + pkin(1);
t676 = pkin(1) - t402;
t708 = t428 * t676;
t343 = -Icges(3,6) * t430 + t428 * t511;
t345 = -Icges(3,5) * t430 + t428 * t517;
t486 = t343 * t427 - t345 * t429;
t707 = t430 * t486;
t501 = Icges(7,5) * t407 - Icges(7,6) * t406;
t167 = t501 * t626 + (Icges(7,3) * t420 + (-Icges(7,5) * t406 - Icges(7,6) * t407) * qJD(6)) * t399;
t643 = t277 * t406;
t704 = -t420 * t643 - t167;
t522 = rSges(7,1) * t407 - rSges(7,2) * t406;
t172 = t522 * t626 + (rSges(7,3) * t420 + (-rSges(7,1) * t406 - rSges(7,2) * t407) * qJD(6)) * t399;
t444 = -t399 * t610 - t713;
t703 = -t444 * t420 - t172;
t620 = t407 * t430;
t623 = t406 * t428;
t325 = -t400 * t623 - t620;
t621 = t407 * t428;
t622 = t406 * t430;
t326 = t400 * t621 - t622;
t523 = -rSges(7,1) * t326 - rSges(7,2) * t325;
t203 = rSges(7,3) * t628 - t523;
t327 = -t400 * t622 + t621;
t328 = t400 * t620 + t623;
t204 = t328 * rSges(7,1) + t327 * rSges(7,2) + rSges(7,3) * t627;
t702 = -t428 * t203 - t430 * t204;
t263 = t714 - t715;
t279 = -rSges(7,3) * t400 + t399 * t522;
t701 = -t263 - t279;
t700 = qJD(1) * t296;
t699 = qJD(1) * t318;
t505 = Icges(3,5) * t429 - Icges(3,6) * t427;
t341 = -Icges(3,3) * t430 + t428 * t505;
t537 = qJD(1) * t400 - qJD(6);
t616 = t420 * t430;
t572 = t399 * t616;
t698 = t428 * t537 + t572;
t265 = qJD(1) * t469 + t424 * t572;
t266 = -qJD(1) * t348 - t425 * t572;
t559 = t399 * t590;
t571 = t400 * t616;
t450 = -t559 + t571;
t138 = Icges(6,5) * t266 + Icges(6,6) * t265 + Icges(6,3) * t450;
t617 = t420 * t428;
t573 = t399 * t617;
t267 = qJD(1) * t349 + t424 * t573;
t268 = qJD(1) * t350 - t425 * t573;
t589 = qJD(1) * t430;
t451 = t399 * t589 + t400 * t617;
t139 = Icges(6,5) * t268 + Icges(6,6) * t267 + Icges(6,3) * t451;
t697 = -(t139 * t399 + t223 * t626) * t430 + (t138 * t399 + t224 * t626) * t428;
t696 = t430 * t537 - t573;
t418 = -qJ(4) + t431;
t595 = t418 - t431;
t375 = pkin(3) * t412 + t402;
t601 = t375 - t402;
t271 = t428 * t601 + t430 * t595;
t692 = 2 * m(3);
t691 = 2 * m(4);
t690 = 2 * m(5);
t689 = 2 * m(6);
t688 = 2 * m(7);
t421 = t428 ^ 2;
t422 = t430 ^ 2;
t687 = m(6) / 0.2e1;
t686 = m(7) / 0.2e1;
t685 = t428 / 0.2e1;
t684 = -t430 / 0.2e1;
t683 = m(3) * t388;
t668 = rSges(4,2) * t412;
t370 = rSges(4,1) * t411 + t668;
t682 = m(4) * t370;
t681 = pkin(2) * t427;
t680 = pkin(3) * t411;
t679 = pkin(4) * t400;
t678 = pkin(5) * t424;
t677 = t428 * pkin(7);
t417 = t430 * pkin(7);
t674 = -pkin(7) - t431;
t673 = rSges(3,1) * t429;
t671 = rSges(5,1) * t400;
t670 = rSges(3,2) * t427;
t667 = rSges(3,3) * t430;
t538 = -qJD(6) * t400 + qJD(1);
t480 = t428 * t538;
t181 = -t406 * t696 + t407 * t480;
t182 = t406 * t480 + t407 * t696;
t103 = Icges(7,5) * t182 + Icges(7,6) * t181 + Icges(7,3) * t451;
t105 = Icges(7,4) * t182 + Icges(7,2) * t181 + Icges(7,6) * t451;
t107 = Icges(7,1) * t182 + Icges(7,4) * t181 + Icges(7,5) * t451;
t194 = Icges(7,5) * t326 + Icges(7,6) * t325 + Icges(7,3) * t628;
t196 = Icges(7,4) * t326 + Icges(7,2) * t325 + Icges(7,6) * t628;
t198 = Icges(7,1) * t326 + Icges(7,4) * t325 + Icges(7,5) * t628;
t497 = -t196 * t406 + t198 * t407;
t23 = (t420 * t497 - t103) * t400 + (-t105 * t406 + t107 * t407 + t194 * t420 + (-t196 * t407 - t198 * t406) * qJD(6)) * t399;
t666 = t23 * t430;
t479 = t430 * t538;
t179 = t406 * t698 + t407 * t479;
t180 = t406 * t479 - t407 * t698;
t102 = Icges(7,5) * t180 + Icges(7,6) * t179 + Icges(7,3) * t450;
t104 = Icges(7,4) * t180 + Icges(7,2) * t179 + Icges(7,6) * t450;
t106 = Icges(7,1) * t180 + Icges(7,4) * t179 + Icges(7,5) * t450;
t195 = Icges(7,5) * t328 + Icges(7,6) * t327 + Icges(7,3) * t627;
t197 = Icges(7,4) * t328 + Icges(7,2) * t327 + Icges(7,6) * t627;
t199 = Icges(7,1) * t328 + Icges(7,4) * t327 + Icges(7,5) * t627;
t496 = -t197 * t406 + t199 * t407;
t24 = (t420 * t496 - t102) * t400 + (-t104 * t406 + t106 * t407 + t195 * t420 + (-t197 * t407 - t199 * t406) * qJD(6)) * t399;
t665 = t24 * t428;
t415 = t428 * rSges(3,3);
t413 = t428 * rSges(5,3);
t664 = -rSges(6,3) - qJ(5);
t663 = -rSges(7,3) + t426;
t645 = qJ(5) * t399;
t640 = t278 * t407;
t340 = t529 * t420;
t639 = t340 * t428;
t638 = t343 * t429;
t637 = t344 * t429;
t636 = t345 * t427;
t635 = t346 * t427;
t630 = t399 * t401;
t629 = t399 * t420;
t625 = t400 * t426;
t624 = t400 * t430;
t619 = t411 * t420;
t618 = t412 * t420;
t611 = t430 * t418;
t361 = t430 * t375;
t389 = t430 * t402;
t272 = -t428 * t595 + t361 - t389;
t609 = t428 * t271 + t430 * t272;
t306 = rSges(5,1) * t624 - rSges(5,2) * t627 + t413;
t608 = -t272 - t306;
t383 = pkin(4) * t624;
t332 = qJ(5) * t627 + t383;
t607 = -t272 - t332;
t313 = t430 * t431 + t417 - t708;
t314 = -t430 * pkin(1) + t428 * t674 + t389;
t606 = t428 * t313 + t430 * t314;
t329 = -t430 * rSges(4,3) + t428 * t529;
t231 = t428 * t329 + t430 * t330;
t357 = pkin(4) * t399 - qJ(5) * t400;
t558 = t411 * t590;
t384 = pkin(3) * t558;
t605 = t357 * t590 + t384;
t604 = t358 * t590 + t384;
t359 = -pkin(3) * t619 - t581;
t603 = qJD(4) * t428 + t430 * t359;
t579 = qJD(1) * t678;
t602 = t426 * t559 + t430 * t579;
t600 = rSges(5,2) * t559 + rSges(5,3) * t589;
t599 = rSges(4,2) * t558 + rSges(4,3) * t589;
t598 = qJD(4) * t430 + t418 * t590;
t597 = t720 * t428;
t596 = t430 * t673 + t415;
t594 = t421 + t422;
t593 = qJD(1) * t297;
t592 = qJD(1) * t319;
t342 = Icges(3,3) * t428 + t430 * t505;
t591 = qJD(1) * t342;
t586 = qJD(2) * t429;
t585 = qJD(5) * t399;
t583 = pkin(3) * t618;
t396 = pkin(5) * t615;
t582 = t430 * t670;
t580 = pkin(2) * t586;
t578 = t223 * t628;
t576 = t224 * t628;
t276 = -Icges(7,3) * t400 + t399 * t501;
t113 = t276 * t628 + t277 * t325 + t278 * t326;
t81 = -t194 * t400 + t399 * t497;
t570 = t113 / 0.2e1 + t81 / 0.2e1;
t114 = t276 * t627 + t277 * t327 + t278 * t328;
t82 = -t195 * t400 + t399 * t496;
t569 = t114 / 0.2e1 + t82 / 0.2e1;
t169 = t512 * t626 + (Icges(7,5) * t420 + (-Icges(7,1) * t406 - t655) * qJD(6)) * t399;
t568 = t399 * t407 * t169 + t276 * t629 + t626 * t640;
t539 = t430 * t581;
t567 = t428 * (t359 * t428 + t589 * t601 + t597 - t598) + t430 * (-qJD(1) * t271 + t539 + t603) + t271 * t589;
t566 = t180 * rSges(7,1) + t179 * rSges(7,2) + rSges(7,3) * t571;
t466 = t370 * t420;
t565 = t428 * (qJD(1) * t330 - t428 * t466) + t430 * (-t616 * t668 + (-t411 * t616 - t412 * t590) * rSges(4,1) + t599) + t329 * t589;
t230 = t350 * rSges(6,1) + t349 * rSges(6,2) + rSges(6,3) * t627;
t564 = -t230 + t607;
t563 = t428 * ((-t430 * t676 - t677) * qJD(1) - t597) + t430 * (-t539 + (t430 * t674 + t708) * qJD(1)) + t313 * t589;
t562 = t266 * rSges(6,1) + t265 * rSges(6,2) + rSges(6,3) * t571;
t525 = rSges(6,1) * t425 - rSges(6,2) * t424;
t285 = -rSges(6,3) * t400 + t399 * t525;
t561 = t285 * t590 + t605;
t377 = t430 * t585;
t560 = t377 + t603;
t557 = t427 * t590;
t264 = t279 * t590;
t556 = t626 / 0.2e1;
t555 = t590 / 0.2e1;
t554 = t589 / 0.2e1;
t553 = -t370 - t681;
t552 = -t357 - t680;
t551 = -t358 - t680;
t209 = -qJD(1) * t298 - t430 * t634;
t550 = t301 * t420 + t209;
t210 = qJD(1) * t299 - t428 * t634;
t549 = t300 * t420 + t210;
t211 = -qJD(1) * t300 - t430 * t633;
t548 = -t299 * t420 + t211;
t212 = qJD(1) * t301 - t428 * t633;
t547 = t298 * t420 - t212;
t235 = -qJD(1) * t320 - t430 * t632;
t546 = t323 * t420 + t235;
t236 = qJD(1) * t321 - t428 * t632;
t545 = t322 * t420 + t236;
t237 = -qJD(1) * t322 - t430 * t631;
t544 = -t321 * t420 + t237;
t238 = qJD(1) * t323 - t428 * t631;
t543 = t320 * t420 - t238;
t542 = -t428 * t418 + t361;
t541 = -t400 * t401 - t375;
t540 = -t359 - t585;
t475 = t401 * t624 - t426 * t627 + t396;
t219 = t475 - t332;
t536 = -t204 - t219 + t607;
t535 = t263 * t590 + t264 + t605;
t528 = -rSges(5,2) * t399 + t671;
t305 = -rSges(5,3) * t430 + t428 * t528;
t121 = t428 * t305 + t430 * t306 + t609;
t331 = (t645 + t679) * t428;
t534 = t428 * t331 + t430 * t332 + t609;
t280 = qJ(5) * t629 + (pkin(4) * t420 - qJD(5)) * t400;
t533 = -t280 - t583;
t532 = -t285 + t552;
t531 = -t680 - t681;
t530 = -t670 + t673;
t527 = rSges(6,1) * t268 + rSges(6,2) * t267;
t526 = -rSges(6,1) * t348 + rSges(6,2) * t469;
t524 = rSges(7,1) * t182 + rSges(7,2) * t181;
t69 = t194 * t628 + t196 * t325 + t198 * t326;
t70 = t195 * t628 + t197 * t325 + t199 * t326;
t47 = t428 * t70 - t430 * t69;
t521 = t428 * t69 + t430 * t70;
t71 = t194 * t627 + t196 * t327 + t198 * t328;
t72 = t195 * t627 + t197 * t327 + t199 * t328;
t48 = t428 * t72 - t430 * t71;
t520 = t428 * t71 + t430 * t72;
t519 = t428 * t82 - t430 * t81;
t518 = t428 * t81 + t430 * t82;
t516 = Icges(3,1) * t427 + t661;
t513 = Icges(6,1) * t425 - Icges(6,4) * t424;
t510 = Icges(3,2) * t429 + t662;
t507 = Icges(6,4) * t425 - Icges(6,2) * t424;
t502 = Icges(6,5) * t425 - Icges(6,6) * t424;
t449 = t399 * t663 + t541;
t125 = (-t418 + t678) * t430 + t449 * t428 + t523;
t126 = t475 + t542 + t204;
t500 = t125 * t430 + t126 * t428;
t129 = t203 * t400 + t279 * t628;
t130 = -t204 * t400 - t279 * t627;
t499 = t129 * t430 + t130 * t428;
t453 = t399 * t664 - t375 - t679;
t437 = t428 * t453 - t611;
t148 = t437 + t526;
t149 = t542 + t230 + t332;
t498 = t148 * t430 + t149 * t428;
t495 = t203 * t430 - t204 * t428;
t494 = -t225 * t424 + t227 * t425;
t493 = -t226 * t424 + t228 * t425;
t260 = (rSges(6,3) * t399 + t400 * t525) * t420;
t482 = -t260 + t533;
t481 = t552 + t701;
t478 = -pkin(1) - t530;
t477 = -t357 + t531;
t476 = -t358 + t531;
t193 = t532 * t430;
t474 = -t402 - t529;
t473 = -t375 - t528;
t362 = qJ(5) * t571;
t365 = pkin(4) * t573;
t452 = -t400 * t590 - t572;
t472 = t428 * (qJ(5) * t451 + qJD(1) * t383 + t428 * t585 - t365) + t430 * (pkin(4) * t452 - qJ(5) * t559 + t362 + t377) + t331 * t589 + t567;
t471 = t428 * (-t428 * t467 + (t430 * t528 + t413) * qJD(1)) + t430 * (rSges(5,1) * t452 - rSges(5,2) * t571 + t600) + t305 * t589 + t567;
t229 = rSges(6,3) * t628 - t526;
t68 = t428 * t229 + t430 * t230 + t534;
t468 = t533 + t703;
t464 = -t285 + t477;
t459 = t420 * t366;
t458 = t420 * t354;
t457 = -t580 - t583;
t456 = qJD(2) * t516;
t455 = qJD(2) * t510;
t454 = qJD(2) * (-Icges(3,5) * t427 - Icges(3,6) * t429);
t134 = t481 * t430;
t274 = t476 * t430;
t448 = t477 + t701;
t446 = -t280 + t457;
t324 = t528 * t420;
t445 = -t324 + t457;
t218 = -pkin(5) * t614 + t428 * t444;
t59 = t428 * t218 + t430 * t219 + t534 - t702;
t178 = t464 * t430;
t443 = -t260 + t446;
t442 = t428 * (rSges(6,3) * t451 + t527) + t430 * (-rSges(6,3) * t559 + t562) + t229 * t589 + t472;
t128 = t448 * t430;
t17 = t103 * t627 + t105 * t327 + t107 * t328 + t179 * t196 + t180 * t198 + t194 * t450;
t18 = t102 * t627 + t104 * t327 + t106 * t328 + t179 * t197 + t180 * t199 + t195 * t450;
t36 = t167 * t627 + t168 * t327 + t169 * t328 + t179 * t277 + t180 * t278 + t276 * t450;
t3 = (t420 * t520 - t36) * t400 + (-qJD(1) * t48 + t420 * t114 + t17 * t428 + t18 * t430) * t399;
t31 = -t113 * t400 + t399 * t521;
t32 = -t114 * t400 + t399 * t520;
t19 = t103 * t628 + t105 * t325 + t107 * t326 + t181 * t196 + t182 * t198 + t194 * t451;
t20 = t102 * t628 + t104 * t325 + t106 * t326 + t181 * t197 + t182 * t199 + t195 * t451;
t37 = t167 * t628 + t168 * t325 + t169 * t326 + t181 * t277 + t182 * t278 + t276 * t451;
t4 = (t420 * t521 - t37) * t400 + (-qJD(1) * t47 + t113 * t420 + t19 * t428 + t20 * t430) * t399;
t8 = qJD(1) * t520 - t17 * t430 + t18 * t428;
t9 = qJD(1) * t521 - t19 * t430 + t20 * t428;
t441 = t3 * t685 + t4 * t684 - t400 * (qJD(1) * t518 + t665 - t666) / 0.2e1 + t31 * t555 + t32 * t554 + t9 * t628 / 0.2e1 + t519 * t629 / 0.2e1 + t8 * t627 / 0.2e1 + (t430 * t556 - t559 / 0.2e1) * t48 + (t399 * t554 + t428 * t556) * t47;
t440 = t446 + t703;
t439 = rSges(3,2) * t557 + rSges(3,3) * t589 - t430 * t465;
t140 = Icges(6,4) * t266 + Icges(6,2) * t265 + Icges(6,6) * t450;
t141 = Icges(6,4) * t268 + Icges(6,2) * t267 + Icges(6,6) * t451;
t142 = Icges(6,1) * t266 + Icges(6,4) * t265 + Icges(6,5) * t450;
t143 = Icges(6,1) * t268 + Icges(6,4) * t267 + Icges(6,5) * t451;
t144 = -t296 * t430 - t428 * t490;
t145 = -t297 * t430 - t709;
t150 = -t318 * t430 - t428 * t488;
t151 = -t319 * t430 - t710;
t207 = -t430 * t458 - t700;
t208 = -t428 * t458 + t593;
t233 = -t430 * t459 - t699;
t234 = -t428 * t459 + t592;
t83 = -t225 * t469 + t227 * t348 + t578;
t84 = -t226 * t469 + t228 * t348 + t576;
t438 = (t8 + (t140 * t349 + t142 * t350 + t226 * t265 + t228 * t266 + (t207 + t233) * t428) * t428 + (-t141 * t349 - t143 * t350 - t225 * t265 - t227 * t266 + t697 + (-t550 * t399 + t548 * t400 - t546 * t411 + t544 * t412 - t208 - t234) * t428 + (t210 * t399 - t212 * t400 + t236 * t411 - t238 * t412 + t298 * t626 + t300 * t629 + t320 * t618 + t322 * t619 - t699 - t700) * t430 + (t578 + (-t490 - t488 + t726) * t428 + t716) * qJD(1)) * t430) * t428 + (t428 * t716 + t430 * t717 + t48) * t589 + (t47 + (-t144 - t150 - t83) * t430 + (-t576 + t709 + t710 - t717 + t84 + t145 + t151) * t428) * t590;
t108 = -rSges(7,3) * t559 + t566;
t109 = rSges(7,3) * t451 + t524;
t436 = t472 + (t203 + t218) * t589 + (t108 - t362 + (-t625 + t715) * t616 + (t645 + t713) * t590 + t602) * t430 + (t109 + t365 + (-t630 - t714) * t617 + (t430 * t444 + t396) * qJD(1)) * t428;
t12 = (t141 * t469 - t143 * t348 - t225 * t267 - t227 * t268 + (t84 - t577) * qJD(1)) * t430 + (-t140 * t469 + t142 * t348 + t226 * t267 + t228 * t268 + (t83 + t575) * qJD(1) + t697) * t428;
t16 = (t208 * t430 + (t145 + t705) * qJD(1)) * t430 + (t144 * qJD(1) + (-t209 * t399 + t211 * t400 - t299 * t626 - t301 * t629 + t593) * t428 + (-t207 + t547 * t400 + t549 * t399 + (-t296 - t489) * qJD(1)) * t430) * t428;
t27 = (t234 * t430 + (t151 + t706) * qJD(1)) * t430 + (t150 * qJD(1) + (-t235 * t411 + t237 * t412 - t321 * t618 - t323 * t619 + t592) * t428 + (-t233 + t543 * t412 + t545 * t411 + (-t318 - t487) * qJD(1)) * t430) * t428;
t433 = t438 + (-t9 - t27 - t16 - t12) * t430;
t247 = (Icges(6,3) * t399 + t400 * t502) * t420;
t248 = (Icges(6,6) * t399 + t400 * t507) * t420;
t249 = (Icges(6,5) * t399 + t400 * t513) * t420;
t281 = -Icges(6,3) * t400 + t399 * t502;
t282 = -Icges(6,6) * t400 + t399 * t507;
t283 = -Icges(6,5) * t400 + t399 * t513;
t432 = t665 / 0.2e1 - t666 / 0.2e1 + (t247 * t627 + t248 * t349 + t249 * t350 + t265 * t282 + t266 * t283 + t281 * t450 + t411 * t544 + t412 * t546 + t36 + t722 * t430 + t718 * t428 + (t420 * t493 - t138 + t550) * t400 + (-t140 * t424 + t142 * t425 + t224 * t420 + t548) * t399) * t685 + (t247 * t628 - t248 * t469 + t249 * t348 + t267 * t282 + t268 * t283 + t281 * t451 - t411 * t543 + t412 * t545 + t37 - t718 * t430 + t722 * t428 + (t420 * t494 - t139 + t549) * t400 + (-t141 * t424 + t143 * t425 + t223 * t420 - t547) * t399) * t684 + (t281 * t628 - t282 * t469 + t283 * t348 + t320 * t412 + t322 * t411 + t113 + t81 - t723 * t430 - t725 * t428 + (-t223 + t298) * t400 + (t300 + t494) * t399) * t555 + (t281 * t627 + t282 * t349 + t283 * t350 + t321 * t412 + t323 * t411 + t114 + t82 - t725 * t430 + t723 * t428 + (-t224 + t299) * t400 + (t301 + t493) * t399) * t554;
t395 = pkin(2) * t557;
t374 = t530 * qJD(2);
t353 = -t582 + t596;
t352 = t428 * t530 - t667;
t312 = t553 * t430;
t311 = t553 * t428;
t293 = t677 + (pkin(1) - t670) * t430 + t596;
t292 = t428 * t478 + t417 + t667;
t289 = t551 * t430;
t288 = t551 * t428;
t273 = t476 * t428;
t270 = -t428 * t431 + t330 + t389;
t269 = (rSges(4,3) - t431) * t430 + t474 * t428;
t255 = t428 * t454 + t591;
t254 = -qJD(1) * t341 + t430 * t454;
t243 = t306 + t542;
t242 = (rSges(5,3) - t418) * t430 + t473 * t428;
t240 = t712 + ((-rSges(3,3) - pkin(7)) * t428 + t478 * t430) * qJD(1);
t239 = (t417 + (-pkin(1) - t673) * t428) * qJD(1) + t439;
t214 = -t370 * t589 - t639 + (-t427 * t589 - t428 * t586) * pkin(2);
t213 = t370 * t590 + t395 + (-t340 - t580) * t430;
t192 = t532 * t428;
t177 = t464 * t428;
t174 = -t358 * t589 - t324 * t428 + (-t411 * t589 - t412 * t617) * pkin(3);
t173 = (-t324 - t583) * t430 + t604;
t166 = t342 * t428 - t430 * t485;
t165 = t341 * t428 - t707;
t164 = -t342 * t430 - t711;
t163 = -t341 * t430 - t428 * t486;
t162 = t370 * t617 + (t430 * t474 - t414) * qJD(1) + t597;
t161 = (-t402 - t672) * t590 + (-t466 - t720) * t430 + t599;
t155 = qJD(1) * t274 + t428 * t445;
t154 = t430 * t445 + t395 + t604;
t137 = (-t359 + t467) * t428 + (t430 * t473 - t413) * qJD(1) + t598;
t136 = -t430 * t467 + (-t611 + (-t375 - t671) * t428) * qJD(1) + t600 + t603;
t135 = t231 + t606;
t133 = t481 * t428;
t127 = t448 * t428;
t122 = -t276 * t400 + (t640 - t643) * t399;
t120 = t495 * t399;
t119 = t122 * t629;
t116 = qJD(1) * t193 + t428 * t482;
t115 = t430 * t482 + t561;
t112 = -t330 * t590 + t565;
t99 = qJD(1) * t178 + t428 * t443;
t98 = t430 * t443 + t395 + t561;
t91 = t121 + t606;
t78 = t365 + (t626 * t664 + t540) * t428 + t453 * t589 - t527 + t598;
t77 = -pkin(4) * t572 + qJD(1) * t437 + t362 + t560 + t562;
t67 = qJD(1) * t134 + t428 * t468;
t66 = t430 * t468 + t535;
t65 = t68 + t606;
t64 = t449 * t589 + (-t579 + (t400 * t663 + t630) * t420 + t540) * t428 - t524 + t598;
t63 = (-t625 - t630) * t616 + (-t611 + (-rSges(7,3) * t399 + t541) * t428) * qJD(1) + t560 + t566 + t602;
t62 = (-t314 - t330) * t590 + t563 + t565;
t61 = qJD(1) * t128 + t428 * t440;
t60 = t430 * t440 + t395 + t535;
t56 = (t279 * t617 + t109) * t400 + (t172 * t428 - t203 * t420 + t279 * t589) * t399;
t55 = (-t279 * t616 - t108) * t400 + (-t172 * t430 + t204 * t420 + t264) * t399;
t54 = t590 * t608 + t471;
t53 = t59 + t606;
t49 = t399 * t719 + t704 * t400 + t568;
t38 = (-t314 + t608) * t590 + t471 + t563;
t33 = t495 * t626 + (qJD(1) * t702 - t108 * t428 + t109 * t430) * t399;
t28 = t564 * t590 + t442;
t25 = (-t314 + t564) * t590 + t442 + t563;
t14 = t536 * t590 + t436;
t13 = t436 + (-t314 + t536) * t590 + t563;
t1 = [t568 + (t125 * t64 + t126 * t63) * t688 + (t148 * t78 + t149 * t77) * t689 + (t136 * t243 + t137 * t242) * t690 + (t161 * t270 + t162 * t269) * t691 + (t239 * t293 + t240 * t292) * t692 + t368 * t618 + t412 * t338 + t411 * t339 - t367 * t619 + (t281 - t355) * t629 + (t517 - t510) * t587 + (t511 + t516) * t586 + (-t282 * t424 + t283 * t425 + t356) * t626 + (t316 - t247 + t704) * t400 + (-t248 * t424 + t249 * t425 + t317 + t719) * t399; (t421 / 0.2e1 + t422 / 0.2e1) * t505 * qJD(2) + m(4) * (t161 * t311 + t162 * t312 + t213 * t269 + t214 * t270) + m(5) * (t136 * t273 + t137 * t274 + t154 * t242 + t155 * t243) + m(6) * (t148 * t98 + t149 * t99 + t177 * t77 + t178 * t78) + m(7) * (t125 * t60 + t126 * t61 + t127 * t63 + t128 * t64) + ((-t293 * t683 + t637 / 0.2e1 + t635 / 0.2e1) * t430 + (t292 * t683 + t638 / 0.2e1 + t636 / 0.2e1) * t428) * qJD(1) + (-qJD(2) * t486 + (qJD(1) * t344 - t428 * t455) * t429 + (qJD(1) * t346 - t428 * t456) * t427) * t684 + (-qJD(2) * t485 + (-qJD(1) * t343 - t430 * t455) * t429 + (-qJD(1) * t345 - t430 * t456) * t427) * t685 + m(3) * ((-t239 * t428 - t240 * t430) * t388 + (-t292 * t430 - t293 * t428) * t374) + t432; t428 * ((t254 * t428 + (t165 + t711) * qJD(1)) * t428 + (t166 * qJD(1) + (t343 * t586 + t345 * t587) * t430 + (-t255 + (-t635 - t637) * qJD(2) + (t342 - t486) * qJD(1)) * t428) * t430) + t438 + (-t163 * t430 + t164 * t428) * t590 + (-t165 * t430 + t166 * t428) * t589 + (t135 * t62 + t213 * t312 + t214 * t311) * t691 + (t154 * t274 + t155 * t273 + t38 * t91) * t690 + (t177 * t99 + t178 * t98 + t25 * t65) * t689 + (t127 * t61 + t128 * t60 + t13 * t53) * t688 - t430 * ((t255 * t430 + (t164 + t707) * qJD(1)) * t430 + (t163 * qJD(1) + (-t344 * t586 - t346 * t587 + t591) * t428 + (-t254 + (t636 + t638) * qJD(2) - t485 * qJD(1)) * t430) * t428) + ((t352 * t428 + t353 * t430) * ((qJD(1) * t352 + t439) * t430 + (-t712 + (-t353 - t582 + t415) * qJD(1)) * t428) + t594 * t388 * t374) * t692 - t430 * t27 - t430 * t16 - t430 * t12 - t430 * t9; (-t161 * t428 - t162 * t430 + (t269 * t428 - t270 * t430) * qJD(1)) * t682 + m(4) * (-t269 * t430 - t270 * t428) * t340 + m(5) * (t136 * t288 + t137 * t289 + t173 * t242 + t174 * t243) + m(6) * (t115 * t148 + t116 * t149 + t192 * t77 + t193 * t78) + m(7) * (t125 * t66 + t126 * t67 + t133 * t63 + t134 * t64) + t432; m(4) * (-t312 * t340 * t430 + t112 * t135 + t231 * t62 - t311 * t639) + t433 + m(7) * (t127 * t67 + t128 * t66 + t13 * t59 + t133 * t61 + t134 * t60 + t14 * t53) + m(6) * (t115 * t178 + t116 * t177 + t192 * t99 + t193 * t98 + t25 * t68 + t28 * t65) + m(5) * (t121 * t38 + t154 * t289 + t155 * t288 + t173 * t274 + t174 * t273 + t54 * t91) + (-t213 * t430 - t214 * t428 + (-t311 * t430 + t312 * t428) * qJD(1)) * t682; t433 + (t340 * t370 * t594 + t112 * t231) * t691 + (t133 * t67 + t134 * t66 + t14 * t59) * t688 + (t121 * t54 + t173 * t289 + t174 * t288) * t690 + (t115 * t193 + t116 * t192 + t28 * t68) * t689; m(7) * (qJD(1) * t500 + t428 * t64 - t430 * t63) + m(6) * (qJD(1) * t498 + t428 * t78 - t430 * t77) + m(5) * (-t136 * t430 + t137 * t428 + (t242 * t430 + t243 * t428) * qJD(1)); m(7) * (t428 * t60 - t430 * t61 + (t127 * t428 + t128 * t430) * qJD(1)) + m(6) * (t428 * t98 - t430 * t99 + (t177 * t428 + t178 * t430) * qJD(1)) + m(5) * (t154 * t428 - t155 * t430 + (t273 * t428 + t274 * t430) * qJD(1)); m(7) * (t428 * t66 - t430 * t67 + (t133 * t428 + t134 * t430) * qJD(1)) + m(5) * (t173 * t428 - t174 * t430 + (t288 * t428 + t289 * t430) * qJD(1)) + m(6) * (t115 * t428 - t116 * t430 + (t192 * t428 + t193 * t430) * qJD(1)); 0; 0.2e1 * (t498 * t687 + t500 * t686) * t626 + 0.2e1 * ((-t125 * t590 + t126 * t589 + t428 * t63 + t430 * t64) * t686 + (-t148 * t590 + t149 * t589 + t428 * t77 + t430 * t78) * t687) * t399; 0.2e1 * ((t127 * t617 + t128 * t616 - t13) * t686 + (t177 * t617 + t178 * t616 - t25) * t687) * t400 + 0.2e1 * ((t127 * t589 - t128 * t590 + t420 * t53 + t428 * t61 + t430 * t60) * t686 + (t177 * t589 - t178 * t590 + t420 * t65 + t428 * t99 + t430 * t98) * t687) * t399; 0.2e1 * ((t133 * t617 + t134 * t616 - t14) * t686 + (t192 * t617 + t193 * t616 - t28) * t687) * t400 + 0.2e1 * ((t133 * t589 - t134 * t590 + t420 * t59 + t428 * t67 + t430 * t66) * t686 + (t115 * t430 + t116 * t428 + t192 * t589 - t193 * t590 + t420 * t68) * t687) * t399; 0; 0.4e1 * (t687 + t686) * (-0.1e1 + t594) * t399 * t626; m(7) * (t125 * t56 + t126 * t55 + t129 * t64 + t130 * t63) + t119 + (-t49 + (t428 * t570 + t430 * t569) * t420) * t400 + ((t36 / 0.2e1 + t24 / 0.2e1) * t430 + (t37 / 0.2e1 + t23 / 0.2e1) * t428 + (-t428 * t569 + t430 * t570) * qJD(1)) * t399; m(7) * (t120 * t13 + t127 * t55 + t128 * t56 + t129 * t60 + t130 * t61 + t33 * t53) + t441; m(7) * (t120 * t14 + t129 * t66 + t130 * t67 + t133 * t55 + t134 * t56 + t33 * t59) + t441; m(7) * (qJD(1) * t499 + t428 * t56 - t430 * t55); m(7) * ((t420 * t499 - t33) * t400 + (t120 * t420 + t428 * t55 + t430 * t56 + (-t129 * t428 + t130 * t430) * qJD(1)) * t399); (t120 * t33 + t129 * t56 + t130 * t55) * t688 + (t49 * t400 - t119 + (t428 * t31 + t430 * t32 - t400 * t518) * t420) * t400 + (t430 * t3 + t428 * t4 + t518 * t629 + (-t122 * t420 - t23 * t428 - t24 * t430) * t400 + (t430 * t31 - t428 * t32 + t400 * t519) * qJD(1)) * t399;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;
