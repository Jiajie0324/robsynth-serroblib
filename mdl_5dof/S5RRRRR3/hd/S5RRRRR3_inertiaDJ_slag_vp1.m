% Calculate time derivative of joint inertia matrix for
% S5RRRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [5x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a3,a4,a5,d1,d4]';
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
% MqD [5x5]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:57
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5RRRRR3_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRR3_inertiaDJ_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRR3_inertiaDJ_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [5 1]), ...
  'S5RRRRR3_inertiaDJ_slag_vp1: pkin has to be [5x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRR3_inertiaDJ_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRRR3_inertiaDJ_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRRR3_inertiaDJ_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:55:08
% EndTime: 2019-12-05 18:55:38
% DurationCPUTime: 16.35s
% Computational Cost: add. (54507->913), mult. (58419->1274), div. (0->0), fcn. (56582->10), ass. (0->481)
t411 = qJ(4) + qJ(5);
t403 = cos(t411);
t412 = qJ(2) + qJ(3);
t404 = cos(t412);
t418 = cos(qJ(1));
t401 = sin(t411);
t415 = sin(qJ(1));
t581 = t415 * t401;
t336 = -t403 * t418 - t404 * t581;
t580 = t415 * t403;
t337 = -t401 * t418 + t404 * t580;
t402 = sin(t412);
t591 = t402 * t415;
t243 = Icges(6,5) * t337 + Icges(6,6) * t336 + Icges(6,3) * t591;
t245 = Icges(6,4) * t337 + Icges(6,2) * t336 + Icges(6,6) * t591;
t247 = Icges(6,1) * t337 + Icges(6,4) * t336 + Icges(6,5) * t591;
t463 = -t245 * t401 + t247 * t403;
t122 = -t243 * t404 + t402 * t463;
t475 = Icges(6,5) * t403 - Icges(6,6) * t401;
t309 = -Icges(6,3) * t404 + t402 * t475;
t610 = Icges(6,4) * t403;
t479 = -Icges(6,2) * t401 + t610;
t310 = -Icges(6,6) * t404 + t402 * t479;
t611 = Icges(6,4) * t401;
t484 = Icges(6,1) * t403 - t611;
t311 = -Icges(6,5) * t404 + t402 * t484;
t162 = t309 * t591 + t310 * t336 + t311 * t337;
t664 = -t162 - t122;
t588 = t404 * t418;
t338 = -t401 * t588 + t580;
t339 = t403 * t588 + t581;
t590 = t402 * t418;
t244 = Icges(6,5) * t339 + Icges(6,6) * t338 + Icges(6,3) * t590;
t246 = Icges(6,4) * t339 + Icges(6,2) * t338 + Icges(6,6) * t590;
t248 = Icges(6,1) * t339 + Icges(6,4) * t338 + Icges(6,5) * t590;
t462 = -t246 * t401 + t248 * t403;
t123 = -t244 * t404 + t402 * t462;
t163 = t309 * t590 + t338 * t310 + t339 * t311;
t663 = -t163 - t123;
t555 = qJD(1) * t415;
t530 = t402 * t555;
t407 = qJD(4) + qJD(5);
t509 = -t404 * t407 + qJD(1);
t450 = t418 * t509;
t556 = qJD(1) * t404;
t508 = -t407 + t556;
t408 = qJD(2) + qJD(3);
t585 = t408 * t418;
t540 = t402 * t585;
t645 = t415 * t508 + t540;
t220 = t645 * t401 + t403 * t450;
t221 = t401 * t450 - t645 * t403;
t538 = t404 * t585;
t537 = t221 * rSges(6,1) + t220 * rSges(6,2) + rSges(6,3) * t538;
t148 = -rSges(6,3) * t530 + t537;
t413 = sin(qJ(4));
t545 = pkin(3) * qJD(4) * t418;
t583 = t413 * t418;
t549 = pkin(3) * t583;
t416 = cos(qJ(4));
t550 = qJD(4) * t416;
t561 = t415 * pkin(3) * t550 + qJD(1) * t549;
t399 = pkin(3) * t416 + pkin(2);
t628 = pkin(2) - t399;
t662 = t148 + t628 * t540 + (-t413 * t545 + t628 * t555) * t404 + t561;
t490 = -t337 * rSges(6,1) - t336 * rSges(6,2);
t251 = rSges(6,3) * t591 - t490;
t519 = t404 * t628;
t304 = -t415 * t519 - t549;
t661 = t251 + t304;
t409 = t415 ^ 2;
t410 = t418 ^ 2;
t559 = t409 + t410;
t589 = t404 * t408;
t522 = t589 / 0.2e1;
t660 = -t418 * t522 + t530 / 0.2e1;
t554 = qJD(1) * t418;
t517 = t554 / 0.2e1;
t659 = -t402 * t517 - t415 * t522;
t587 = t408 * t415;
t539 = t404 * t587;
t433 = t402 * t554 + t539;
t414 = sin(qJ(2));
t417 = cos(qJ(2));
t496 = rSges(3,1) * t417 - rSges(3,2) * t414;
t658 = t418 * rSges(3,3) - t415 * t496;
t616 = Icges(3,4) * t417;
t483 = -Icges(3,2) * t414 + t616;
t348 = Icges(3,6) * t415 + t418 * t483;
t617 = Icges(3,4) * t414;
t488 = Icges(3,1) * t417 - t617;
t350 = Icges(3,5) * t415 + t418 * t488;
t453 = t348 * t414 - t350 * t417;
t657 = t415 * t453;
t614 = Icges(4,4) * t404;
t481 = -Icges(4,2) * t402 + t614;
t325 = Icges(4,6) * t415 + t418 * t481;
t615 = Icges(4,4) * t402;
t486 = Icges(4,1) * t404 - t615;
t327 = Icges(4,5) * t415 + t418 * t486;
t455 = t325 * t402 - t327 * t404;
t656 = t415 * t455;
t347 = -Icges(3,6) * t418 + t415 * t483;
t349 = -Icges(3,5) * t418 + t415 * t488;
t454 = t347 * t414 - t349 * t417;
t654 = t418 * t454;
t324 = -Icges(4,6) * t418 + t415 * t481;
t326 = -Icges(4,5) * t418 + t415 * t486;
t456 = t324 * t402 - t326 * t404;
t653 = t418 * t456;
t252 = t339 * rSges(6,1) + t338 * rSges(6,2) + rSges(6,3) * t590;
t652 = -t415 * t251 - t418 * t252;
t476 = Icges(5,5) * t416 - Icges(5,6) * t413;
t239 = t476 * t589 + (Icges(5,3) * t408 + (-Icges(5,5) * t413 - Icges(5,6) * t416) * qJD(4)) * t402;
t612 = Icges(5,4) * t416;
t480 = -Icges(5,2) * t413 + t612;
t317 = -Icges(5,6) * t404 + t402 * t480;
t602 = t317 * t413;
t651 = -t408 * t602 - t239;
t577 = t416 * t418;
t579 = t415 * t413;
t359 = -t404 * t579 - t577;
t578 = t415 * t416;
t360 = t404 * t578 - t583;
t493 = -rSges(5,1) * t360 - rSges(5,2) * t359;
t279 = rSges(5,3) * t591 - t493;
t361 = -t404 * t583 + t578;
t362 = t404 * t577 + t579;
t280 = t362 * rSges(5,1) + t361 * rSges(5,2) + rSges(5,3) * t590;
t650 = -t415 * t279 - t418 * t280;
t552 = qJD(2) * t417;
t649 = -t414 * t554 - t415 * t552;
t621 = t415 * rSges(3,3);
t352 = t418 * t496 + t621;
t648 = -t352 * t415 - t418 * t658;
t477 = Icges(4,5) * t404 - Icges(4,6) * t402;
t322 = -Icges(4,3) * t418 + t415 * t477;
t647 = qJD(1) * t322;
t478 = Icges(3,5) * t417 - Icges(3,6) * t414;
t345 = -Icges(3,3) * t418 + t415 * t478;
t506 = -qJD(4) + t556;
t646 = t415 * t506 + t540;
t541 = t402 * t587;
t644 = t418 * t508 - t541;
t364 = Icges(4,2) * t404 + t615;
t365 = Icges(4,1) * t402 + t614;
t452 = t364 * t402 - t365 * t404;
t643 = qJD(1) * t452 + t477 * t408;
t642 = 2 * m(3);
t641 = 2 * m(4);
t640 = 2 * m(5);
t639 = 2 * m(6);
t638 = -t404 / 0.2e1;
t637 = t415 / 0.2e1;
t636 = -t418 / 0.2e1;
t635 = -rSges(5,3) - pkin(5);
t634 = -rSges(6,3) - pkin(5);
t381 = rSges(3,1) * t414 + rSges(3,2) * t417;
t633 = m(3) * t381;
t367 = rSges(4,1) * t402 + rSges(4,2) * t404;
t632 = m(4) * t367;
t631 = pkin(1) * t414;
t630 = pkin(1) * t417;
t629 = pkin(2) * t404;
t626 = rSges(4,1) * t404;
t624 = rSges(4,3) * t418;
t451 = t415 * t509;
t222 = -t644 * t401 + t403 * t451;
t223 = t401 * t451 + t644 * t403;
t143 = Icges(6,5) * t223 + Icges(6,6) * t222 + Icges(6,3) * t433;
t145 = Icges(6,4) * t223 + Icges(6,2) * t222 + Icges(6,6) * t433;
t147 = Icges(6,1) * t223 + Icges(6,4) * t222 + Icges(6,5) * t433;
t36 = (t408 * t463 - t143) * t404 + (t243 * t408 + (-t245 * t407 + t147) * t403 + (-t247 * t407 - t145) * t401) * t402;
t623 = t36 * t418;
t432 = -t530 + t538;
t142 = Icges(6,5) * t221 + Icges(6,6) * t220 + Icges(6,3) * t432;
t144 = Icges(6,4) * t221 + Icges(6,2) * t220 + Icges(6,6) * t432;
t146 = Icges(6,1) * t221 + Icges(6,4) * t220 + Icges(6,5) * t432;
t37 = (t408 * t462 - t142) * t404 + (t244 * t408 + (-t246 * t407 + t146) * t403 + (-t248 * t407 - t144) * t401) * t402;
t622 = t37 * t415;
t405 = t415 * rSges(4,3);
t507 = -qJD(4) * t404 + qJD(1);
t448 = t416 * t507;
t257 = t415 * t448 + (-t418 * t506 + t541) * t413;
t447 = t507 * t413;
t586 = t408 * t416;
t258 = t506 * t577 + (-t402 * t586 + t447) * t415;
t167 = Icges(5,5) * t258 + Icges(5,6) * t257 + Icges(5,3) * t433;
t169 = Icges(5,4) * t258 + Icges(5,2) * t257 + Icges(5,6) * t433;
t171 = Icges(5,1) * t258 + Icges(5,4) * t257 + Icges(5,5) * t433;
t273 = Icges(5,5) * t360 + Icges(5,6) * t359 + Icges(5,3) * t591;
t275 = Icges(5,4) * t360 + Icges(5,2) * t359 + Icges(5,6) * t591;
t277 = Icges(5,1) * t360 + Icges(5,4) * t359 + Icges(5,5) * t591;
t461 = -t275 * t413 + t277 * t416;
t45 = (t408 * t461 - t167) * t404 + (-t169 * t413 + t171 * t416 + t273 * t408 + (-t275 * t416 - t277 * t413) * qJD(4)) * t402;
t619 = t45 * t418;
t255 = t646 * t413 + t418 * t448;
t256 = -t646 * t416 + t418 * t447;
t166 = Icges(5,5) * t256 + Icges(5,6) * t255 + Icges(5,3) * t432;
t168 = Icges(5,4) * t256 + Icges(5,2) * t255 + Icges(5,6) * t432;
t170 = Icges(5,1) * t256 + Icges(5,4) * t255 + Icges(5,5) * t432;
t274 = Icges(5,5) * t362 + Icges(5,6) * t361 + Icges(5,3) * t590;
t276 = Icges(5,4) * t362 + Icges(5,2) * t361 + Icges(5,6) * t590;
t278 = Icges(5,1) * t362 + Icges(5,4) * t361 + Icges(5,5) * t590;
t460 = -t276 * t413 + t278 * t416;
t46 = (t408 * t460 - t166) * t404 + (-t168 * t413 + t170 * t416 + t274 * t408 + (-t276 * t416 - t278 * t413) * qJD(4)) * t402;
t618 = t46 * t415;
t613 = Icges(5,4) * t413;
t603 = t311 * t403;
t601 = t347 * t417;
t600 = t348 * t417;
t599 = t349 * t414;
t598 = t350 * t414;
t595 = t364 * t408;
t594 = t365 * t408;
t593 = t402 * t407;
t592 = t402 * t408;
t240 = t480 * t589 + (Icges(5,6) * t408 + (-Icges(5,2) * t416 - t613) * qJD(4)) * t402;
t584 = t413 * t240;
t495 = -rSges(4,2) * t402 + t626;
t343 = t495 * t408;
t582 = t415 * t343;
t576 = t417 * t418;
t491 = t223 * rSges(6,1) + t222 * rSges(6,2);
t149 = rSges(6,3) * t433 + t491;
t575 = t149 * t590 + t251 * t538;
t489 = rSges(6,1) * t403 - rSges(6,2) * t401;
t219 = t489 * t589 + (rSges(6,3) * t408 + (-rSges(6,1) * t401 - rSges(6,2) * t403) * t407) * t402;
t551 = qJD(4) * t413;
t525 = t402 * t551;
t298 = -pkin(3) * t525 - t408 * t519;
t573 = -t219 - t298;
t312 = -rSges(6,3) * t404 + t402 * t489;
t301 = t312 * t555;
t572 = t252 * t592 + t402 * t301;
t492 = rSges(5,1) * t416 - rSges(5,2) * t413;
t242 = t492 * t589 + (rSges(5,3) * t408 + (-rSges(5,1) * t413 - rSges(5,2) * t416) * qJD(4)) * t402;
t498 = pkin(5) * t402 + t629;
t344 = t498 * t408;
t571 = -t242 - t344;
t386 = pkin(2) * t588;
t396 = pkin(3) * t579;
t563 = t399 * t588 + t396;
t305 = -t386 + t563;
t569 = -t252 - t305;
t385 = pkin(5) * t590;
t356 = t386 + t385;
t568 = -t280 - t356;
t186 = t404 * t251 + t312 * t591;
t319 = -rSges(5,3) * t404 + t402 * t492;
t308 = t319 * t555;
t368 = pkin(2) * t402 - pkin(5) * t404;
t358 = t368 * t555;
t567 = t308 + t358;
t357 = t628 * t402;
t566 = -t312 + t357;
t328 = t415 * t495 - t624;
t329 = rSges(4,1) * t588 - rSges(4,2) * t590 + t405;
t259 = t415 * t328 + t418 * t329;
t565 = -t319 - t368;
t355 = t498 * t415;
t564 = t415 * t355 + t418 * t356;
t562 = rSges(4,2) * t530 + rSges(4,3) * t554;
t560 = t559 * t630;
t323 = Icges(4,3) * t415 + t418 * t477;
t558 = qJD(1) * t323;
t346 = Icges(3,3) * t415 + t418 * t478;
t557 = qJD(1) * t346;
t553 = qJD(2) * t414;
t548 = pkin(1) * t553;
t547 = pkin(1) * t552;
t546 = pkin(3) * t551;
t544 = t310 * t589;
t542 = t399 * t592;
t536 = -t344 + t573;
t485 = Icges(5,1) * t416 - t613;
t241 = t485 * t589 + (Icges(5,5) * t408 + (-Icges(5,1) * t413 - t612) * qJD(4)) * t402;
t316 = -Icges(5,3) * t404 + t402 * t476;
t318 = -Icges(5,5) * t404 + t402 * t485;
t535 = t402 * t416 * t241 + t404 * t318 * t586 + t316 * t592;
t534 = t256 * rSges(5,1) + t255 * rSges(5,2) + rSges(5,3) * t538;
t375 = pkin(2) * t541;
t376 = pkin(5) * t538;
t434 = -t404 * t555 - t540;
t533 = t415 * (pkin(5) * t433 + qJD(1) * t386 - t375) + t418 * (pkin(2) * t434 - pkin(5) * t530 + t376) + t355 * t554;
t333 = t357 * t555;
t532 = t301 - t333 + t358;
t531 = -t368 + t566;
t527 = t415 * t553;
t524 = t591 / 0.2e1;
t523 = t590 / 0.2e1;
t138 = -t273 * t404 + t402 * t461;
t180 = t316 * t591 + t317 * t359 + t318 * t360;
t521 = t138 / 0.2e1 + t180 / 0.2e1;
t139 = -t274 * t404 + t402 * t460;
t181 = t316 * t590 + t361 * t317 + t362 * t318;
t520 = t181 / 0.2e1 + t139 / 0.2e1;
t518 = t555 / 0.2e1;
t516 = -t367 - t631;
t515 = -t368 - t631;
t514 = t566 * t418;
t282 = t565 * t418;
t262 = -t324 * qJD(1) - t418 * t595;
t513 = t327 * t408 + t262;
t263 = qJD(1) * t325 - t415 * t595;
t512 = t326 * t408 + t263;
t264 = -t326 * qJD(1) - t418 * t594;
t511 = -t325 * t408 + t264;
t265 = qJD(1) * t327 - t415 * t594;
t510 = t324 * t408 - t265;
t505 = t404 * t149 + t219 * t591 + t433 * t312;
t161 = t564 - t650;
t500 = -t319 + t515;
t499 = -t344 - t547;
t211 = t531 * t418;
t182 = -t309 * t404 + (-t310 * t401 + t603) * t402;
t469 = t122 * t415 + t123 * t418;
t25 = t143 * t590 + t338 * t145 + t339 * t147 + t220 * t245 + t221 * t247 + t243 * t432;
t26 = t142 * t590 + t338 * t144 + t339 * t146 + t220 * t246 + t221 * t248 + t244 * t432;
t107 = t243 * t590 + t338 * t245 + t339 * t247;
t108 = t244 * t590 + t338 * t246 + t339 * t248;
t471 = t107 * t415 + t108 * t418;
t472 = t107 * t418 - t108 * t415;
t212 = t475 * t589 + (Icges(6,3) * t408 + (-Icges(6,5) * t401 - Icges(6,6) * t403) * t407) * t402;
t213 = t479 * t589 + (Icges(6,6) * t408 + (-Icges(6,2) * t403 - t611) * t407) * t402;
t214 = t484 * t589 + (Icges(6,5) * t408 + (-Icges(6,1) * t401 - t610) * t407) * t402;
t62 = t212 * t590 + t338 * t213 + t339 * t214 + t220 * t310 + t221 * t311 + t309 * t432;
t5 = (t408 * t471 - t62) * t404 + (qJD(1) * t472 + t163 * t408 + t25 * t415 + t26 * t418) * t402;
t105 = t243 * t591 + t245 * t336 + t247 * t337;
t106 = t244 * t591 + t246 * t336 + t248 * t337;
t473 = t105 * t415 + t106 * t418;
t55 = -t162 * t404 + t402 * t473;
t56 = -t163 * t404 + t402 * t471;
t27 = t143 * t591 + t336 * t145 + t337 * t147 + t222 * t245 + t223 * t247 + t243 * t433;
t28 = t142 * t591 + t336 * t144 + t337 * t146 + t222 * t246 + t223 * t248 + t244 * t433;
t474 = t105 * t418 - t106 * t415;
t63 = t212 * t591 + t336 * t213 + t337 * t214 + t222 * t310 + t223 * t311 + t309 * t433;
t6 = (t408 * t473 - t63) * t404 + (qJD(1) * t474 + t162 * t408 + t27 * t415 + t28 * t418) * t402;
t497 = t5 * t590 + t56 * t538 + t6 * t591 + (-t182 * t404 + t402 * t469) * t592 + t433 * t55;
t494 = t258 * rSges(5,1) + t257 * rSges(5,2);
t487 = Icges(3,1) * t414 + t616;
t482 = Icges(3,2) * t417 + t617;
t363 = Icges(4,5) * t402 + Icges(4,6) * t404;
t470 = t122 * t418 - t123 * t415;
t126 = t273 * t591 + t275 * t359 + t277 * t360;
t127 = t274 * t591 + t276 * t359 + t278 * t360;
t468 = t126 * t418 - t127 * t415;
t467 = t126 * t415 + t127 * t418;
t128 = t273 * t590 + t361 * t275 + t362 * t277;
t129 = t274 * t590 + t361 * t276 + t362 * t278;
t466 = t128 * t418 - t129 * t415;
t465 = t128 * t415 + t129 * t418;
t464 = t138 * t415 + t139 * t418;
t459 = t279 * t418 - t280 * t415;
t449 = t515 + t566;
t446 = t559 * t548;
t445 = -t242 + t499;
t268 = t500 * t418;
t102 = t415 * t304 + t418 * t305 + t564 - t652;
t444 = t367 * t408;
t443 = t499 + t573;
t440 = t408 * t363;
t439 = t304 * t418 + t569 * t415;
t136 = -t329 * t555 + t415 * (-t415 * t444 + (t418 * t495 + t405) * qJD(1)) + t418 * (rSges(4,1) * t434 - rSges(4,2) * t538 + t562) + t328 * t554;
t438 = qJD(2) * t487;
t437 = qJD(2) * t482;
t436 = qJD(2) * (-Icges(3,5) * t414 - Icges(3,6) * t417);
t202 = t449 * t418;
t435 = -t495 - t630;
t15 = qJD(1) * t471 - t25 * t418 + t26 * t415;
t190 = -t322 * t418 - t415 * t456;
t191 = -t323 * t418 - t656;
t192 = t415 * t322 - t653;
t193 = t415 * t323 - t418 * t455;
t39 = t167 * t590 + t361 * t169 + t362 * t171 + t255 * t275 + t256 * t277 + t273 * t432;
t40 = t166 * t590 + t361 * t168 + t362 * t170 + t255 * t276 + t256 * t278 + t274 * t432;
t21 = qJD(1) * t465 - t39 * t418 + t40 * t415;
t260 = -t418 * t440 - t647;
t261 = -t415 * t440 + t558;
t431 = (-t190 * t418 - t468 - t474) * t555 + (-t192 * t418 - t466 - t472) * t554 + (t15 + t21 + t191 * t555 + t193 * t554 + (t193 * qJD(1) + (t263 * t402 - t265 * t404 + t324 * t589 + t326 * t592 - t647) * t418) * t418 + ((t192 + t656) * qJD(1) + (-t261 + t511 * t404 - t513 * t402 + (t323 - t456) * qJD(1)) * t418 + t415 * t260) * t415) * t415;
t430 = t635 * t402 - t629 - t630;
t429 = -t399 * t404 + t634 * t402 - t630;
t428 = qJD(1) * t430;
t16 = qJD(1) * t473 - t27 * t418 + t28 * t415;
t427 = t15 * t523 + t16 * t524 + t5 * t637 + t6 * t636 + (qJD(1) * t469 + t622 - t623) * t638 + t55 * t518 + t56 * t517 - t470 * t592 / 0.2e1 + t660 * t472 + t659 * t474;
t426 = t429 * t415;
t425 = -t404 * t212 + t309 * t592 + t589 * t603 + (t214 * t402 - t310 * t593) * t403;
t172 = -rSges(5,3) * t530 + t534;
t173 = rSges(5,3) * t433 + t494;
t67 = t418 * t172 + t415 * t173 + t279 * t554 + t568 * t555 + t533;
t179 = t182 * t592;
t83 = (-t544 + (-t311 * t407 - t213) * t402) * t401 + t425;
t7 = t179 + (t408 * t469 - t83) * t404 + (qJD(1) * t470 + t36 * t415 + t37 * t418) * t402;
t424 = -t404 * t7 - t530 * t56 + t497;
t423 = t179 + (t36 + t63) * t524 + (t37 + t62) * t523 + t663 * t660 + t664 * t659;
t41 = t167 * t591 + t359 * t169 + t360 * t171 + t257 * t275 + t258 * t277 + t273 * t433;
t42 = t166 * t591 + t359 * t168 + t360 * t170 + t257 * t276 + t258 * t278 + t274 * t433;
t22 = qJD(1) * t467 - t41 * t418 + t42 * t415;
t30 = (t418 * t261 + (t191 + t653) * qJD(1)) * t418 + (t190 * qJD(1) + (-t262 * t402 + t264 * t404 - t325 * t589 - t327 * t592 + t558) * t415 + (-t260 + t510 * t404 + t512 * t402 + (-t322 - t455) * qJD(1)) * t418) * t415;
t422 = (-t16 - t22 - t30) * t418 + t431;
t341 = t481 * t408;
t342 = t486 * t408;
t421 = qJD(1) * t363 + (t342 - t595) * t404 + (-t341 - t594) * t402;
t199 = -t399 * t541 + t375 - t519 * t554 + (qJD(4) * t359 + t413 * t555) * pkin(3);
t38 = (-t356 + t569) * t555 + t533 + t661 * t554 + t662 * t418 + (t149 + t199) * t415;
t81 = t239 * t590 + t361 * t240 + t362 * t241 + t255 * t317 + t256 * t318 + t316 * t432;
t10 = (t408 * t465 - t81) * t404 + (qJD(1) * t466 + t408 * t181 + t39 * t415 + t40 * t418) * t402;
t82 = t239 * t591 + t359 * t240 + t360 * t241 + t257 * t317 + t258 * t318 + t316 * t433;
t11 = (t408 * t467 - t82) * t404 + (qJD(1) * t468 + t408 * t180 + t41 * t415 + t418 * t42) * t402;
t68 = -t180 * t404 + t402 * t467;
t69 = -t181 * t404 + t402 * t465;
t420 = t10 * t637 + t11 * t636 + t21 * t523 + t22 * t524 + (qJD(1) * t464 + t618 - t619) * t638 + t427 + t68 * t518 + t69 * t517 + (-t138 * t418 + t139 * t415) * t592 / 0.2e1 + t660 * t466 + t659 * t468;
t419 = -t623 / 0.2e1 + t622 / 0.2e1 - t619 / 0.2e1 + t618 / 0.2e1 + (t402 * t511 + t404 * t513 + t643 * t415 + t421 * t418 + t62 + t81) * t637 + (-t402 * t510 + t404 * t512 + t421 * t415 - t643 * t418 + t63 + t82) * t636 + (t324 * t404 + t326 * t402 - t363 * t418 - t415 * t452 + t138 + t180 - t664) * t518 + (t325 * t404 + t327 * t402 + t415 * t363 - t418 * t452 + t139 + t181 - t663) * t517;
t398 = pkin(1) * t576;
t392 = t555 * t631;
t391 = pkin(1) * t527;
t374 = t496 * qJD(2);
t321 = t516 * t418;
t320 = t516 * t415;
t307 = t329 + t398;
t306 = t415 * t435 + t624;
t291 = -rSges(3,1) * t527 + (rSges(3,1) * t576 + t621) * qJD(1) + t649 * rSges(3,2);
t290 = -t381 * t418 * qJD(2) + t658 * qJD(1);
t285 = t415 * t436 + t557;
t284 = -qJD(1) * t345 + t418 * t436;
t281 = t565 * t415;
t267 = t500 * t415;
t236 = t649 * pkin(1) - t367 * t554 - t582;
t235 = t367 * t555 + t392 + (-t343 - t547) * t418;
t232 = t251 * t590;
t224 = t560 + t259;
t218 = t391 + t367 * t587 + (t418 * t435 - t405) * qJD(1);
t217 = (-t626 - t630) * t555 + (-t444 - t548) * t418 + t562;
t210 = t531 * t415;
t209 = t398 - t568;
t208 = t415 * t430 + t493;
t207 = t415 * t346 - t418 * t453;
t206 = t415 * t345 - t654;
t205 = -t346 * t418 - t657;
t204 = -t345 * t418 - t415 * t454;
t201 = t449 * t415;
t197 = -t404 * t280 - t319 * t590;
t196 = t279 * t404 + t319 * t591;
t189 = t398 + t385 + t252 + t563;
t188 = t426 + t490 + t549;
t187 = -t404 * t252 - t312 * t590;
t185 = -t316 * t404 + (t318 * t416 - t602) * t402;
t184 = t185 * t592;
t183 = t459 * t402;
t176 = -t252 * t591 + t232;
t175 = qJD(1) * t282 + t571 * t415;
t174 = t571 * t418 + t567;
t158 = qJD(1) * t268 + t415 * t445;
t157 = t418 * t445 + t392 + t567;
t152 = t402 * t514 + t569 * t404;
t151 = t304 * t404 - t357 * t591 + t186;
t150 = t161 + t560;
t132 = -t446 + t136;
t121 = t418 * t428 + t635 * t539 + t375 + t391 - t494;
t120 = t376 + (-pkin(2) * t592 - t548) * t418 + t415 * t428 + t534;
t115 = t402 * t439 + t232;
t110 = qJD(1) * t211 + t536 * t415;
t109 = t536 * t418 + t532;
t104 = qJD(1) * t202 + t415 * t443;
t103 = t418 * t443 + t392 + t532;
t101 = t102 + t560;
t100 = t416 * t545 + t391 + (t542 + (t634 * t408 + t546) * t404) * t415 + (t418 * t429 - t396) * qJD(1) - t491;
t99 = t376 + (-t404 * t546 - t542 - t548) * t418 + qJD(1) * t426 + t537 + t561;
t98 = (t319 * t587 + t173) * t404 + (t415 * t242 - t279 * t408 + t319 * t554) * t402;
t97 = (-t319 * t585 - t172) * t404 + (-t242 * t418 + t280 * t408 + t308) * t402;
t95 = t651 * t404 + (-t584 + (-t317 * t416 - t318 * t413) * qJD(4)) * t402 + t535;
t92 = -t251 * t592 + t505;
t91 = -t219 * t590 + (-t312 * t585 - t148) * t404 + t572;
t70 = t459 * t589 + (t650 * qJD(1) - t172 * t415 + t173 * t418) * t402;
t59 = -t446 + t67;
t54 = -t252 * t539 + (t652 * qJD(1) - t148 * t415) * t402 + t575;
t48 = (-t357 * t587 + t199) * t404 + (t415 * t298 - t357 * t554 - t408 * t661) * t402 + t505;
t47 = (t408 * t514 - t662) * t404 + (t305 * t408 + t573 * t418 - t333) * t402 + t572;
t35 = -t446 + t38;
t24 = t439 * t589 + (t199 * t418 - t662 * t415 + (-t415 * t661 + t569 * t418) * qJD(1)) * t402 + t575;
t1 = [-t318 * t525 + t535 + t425 - t364 * t592 + t365 * t589 + (t100 * t188 + t189 * t99) * t639 + (t120 * t209 + t121 * t208) * t640 + (t217 * t307 + t218 * t306) * t641 + (t290 * t352 - t291 * t658) * t642 + (-t482 + t488) * t553 + (t483 + t487) * t552 + (-t311 * t593 - t544) * t401 + (t341 + t651) * t404 + (-t401 * t213 - t317 * t550 + t342 - t584) * t402; t419 + m(6) * (t100 * t202 + t103 * t188 + t104 * t189 + t201 * t99) + m(5) * (t120 * t267 + t121 * t268 + t157 * t208 + t158 * t209) + m(4) * (t217 * t320 + t218 * t321 + t235 * t306 + t236 * t307) + (-qJD(2) * t454 + (qJD(1) * t348 - t415 * t437) * t417 + (qJD(1) * t350 - t415 * t438) * t414) * t636 + (-qJD(2) * t453 + (-t347 * qJD(1) - t418 * t437) * t417 + (-t349 * qJD(1) - t418 * t438) * t414) * t637 + m(3) * ((-t290 * t415 + t291 * t418) * t381 + t648 * t374) + (t410 / 0.2e1 + t409 / 0.2e1) * t478 * qJD(2) + ((-t352 * t633 + t600 / 0.2e1 + t598 / 0.2e1) * t418 + (t601 / 0.2e1 + t599 / 0.2e1 + t658 * t633) * t415) * qJD(1); (t101 * t35 + t103 * t202 + t104 * t201) * t639 + (t150 * t59 + t157 * t268 + t158 * t267) * t640 + (t132 * t224 + t235 * t321 + t236 * t320) * t641 - t418 * t16 - t418 * t22 - t418 * t30 + t431 - t418 * ((t418 * t285 + (t205 + t654) * qJD(1)) * t418 + (t204 * qJD(1) + (-t348 * t552 - t350 * t553 + t557) * t415 + (-t284 + (t599 + t601) * qJD(2) - t453 * qJD(1)) * t418) * t415) + t415 * ((t415 * t284 + (t206 + t657) * qJD(1)) * t415 + (t207 * qJD(1) + (t347 * t552 + t349 * t553) * t418 + (-t285 + (-t598 - t600) * qJD(2) + (t346 - t454) * qJD(1)) * t415) * t418) + (-t206 * t418 + t207 * t415) * t554 + (-t204 * t418 + t205 * t415) * t555 + ((t352 * t418 - t415 * t658) * (t648 * qJD(1) + t418 * t290 + t415 * t291) + t559 * t381 * t374) * t642; t419 + m(6) * (t100 * t211 + t109 * t188 + t110 * t189 + t210 * t99) + m(5) * (t120 * t281 + t121 * t282 + t174 * t208 + t175 * t209) + (-t217 * t415 - t218 * t418 + (t306 * t415 - t307 * t418) * qJD(1)) * t632 + m(4) * (-t306 * t418 - t307 * t415) * t343; t422 + m(4) * (-t321 * t343 * t418 + t259 * t132 + t136 * t224 - t320 * t582) + (-t235 * t418 - t236 * t415 + (-t320 * t418 + t321 * t415) * qJD(1)) * t632 + m(6) * (t101 * t38 + t102 * t35 + t103 * t211 + t104 * t210 + t109 * t202 + t110 * t201) + m(5) * (t150 * t67 + t157 * t282 + t158 * t281 + t161 * t59 + t174 * t268 + t175 * t267); (t102 * t38 + t109 * t211 + t110 * t210) * t639 + (t161 * t67 + t174 * t282 + t175 * t281) * t640 + (t343 * t367 * t559 + t136 * t259) * t641 + t422; t184 + ((t46 / 0.2e1 + t81 / 0.2e1) * t418 + (t45 / 0.2e1 + t82 / 0.2e1) * t415 + (-t415 * t520 + t418 * t521) * qJD(1)) * t402 + t423 + m(6) * (t100 * t151 + t152 * t99 + t188 * t48 + t189 * t47) + m(5) * (t120 * t197 + t121 * t196 + t208 * t98 + t209 * t97) + (-t83 - t95 + (t415 * t521 + t418 * t520) * t408) * t404; m(6) * (t101 * t24 + t103 * t151 + t104 * t152 + t115 * t35 + t201 * t47 + t202 * t48) + m(5) * (t150 * t70 + t157 * t196 + t158 * t197 + t183 * t59 + t267 * t97 + t268 * t98) + t420; m(6) * (t102 * t24 + t109 * t151 + t110 * t152 + t115 * t38 + t210 * t47 + t211 * t48) + m(5) * (t161 * t70 + t174 * t196 + t175 * t197 + t183 * t67 + t281 * t97 + t282 * t98) + t420; (t115 * t24 + t151 * t48 + t152 * t47) * t639 + (t183 * t70 + t196 * t98 + t197 * t97) * t640 + (t95 * t404 - t184 - t7 + (-t404 * t464 + t415 * t68 + t418 * t69) * t408) * t404 + (t415 * t11 + t418 * t10 + t464 * t592 + (-t185 * t408 - t45 * t415 - t46 * t418) * t404 + ((-t138 * t404 + t68) * t418 + (t139 * t404 - t56 - t69) * t415) * qJD(1)) * t402 + t497; t423 - t83 * t404 + m(6) * (t100 * t186 + t187 * t99 + t188 * t92 + t189 * t91); t427 + m(6) * (t101 * t54 + t103 * t186 + t104 * t187 + t176 * t35 + t201 * t91 + t202 * t92); t427 + m(6) * (t102 * t54 + t109 * t186 + t110 * t187 + t176 * t38 + t210 * t91 + t211 * t92); m(6) * (t115 * t54 + t151 * t92 + t152 * t91 + t176 * t24 + t186 * t48 + t187 * t47) + t424; (t176 * t54 + t186 * t92 + t187 * t91) * t639 + t424;];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t1(1), t1(2), t1(4), t1(7), t1(11); t1(2), t1(3), t1(5), t1(8), t1(12); t1(4), t1(5), t1(6), t1(9), t1(13); t1(7), t1(8), t1(9), t1(10), t1(14); t1(11), t1(12), t1(13), t1(14), t1(15);];
Mq = res;
