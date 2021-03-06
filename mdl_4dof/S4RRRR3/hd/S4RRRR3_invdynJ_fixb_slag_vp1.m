% Calculate vector of inverse dynamics joint torques for
% S4RRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% qJDD [4x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d3,d4]';
% m_mdh [5x1]
%   mass of all robot links (including the base)
% rSges [5x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [5x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% tau [4x1]
%   joint torques of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:24
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S4RRRR3_invdynJ_fixb_slag_vp1(qJ, qJD, qJDD, g, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(7,1),zeros(5,1),zeros(5,3),zeros(5,6)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRRR3_invdynJ_fixb_slag_vp1: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRRR3_invdynJ_fixb_slag_vp1: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4RRRR3_invdynJ_fixb_slag_vp1: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRRR3_invdynJ_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRRR3_invdynJ_fixb_slag_vp1: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [5 1]), ...
  'S4RRRR3_invdynJ_fixb_slag_vp1: m has to be [5x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [5,3]), ...
  'S4RRRR3_invdynJ_fixb_slag_vp1: rSges has to be [5x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [5 6]), ...
  'S4RRRR3_invdynJ_fixb_slag_vp1: Icges has to be [5x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:24:17
% EndTime: 2019-12-31 17:24:35
% DurationCPUTime: 14.73s
% Computational Cost: add. (16208->832), mult. (18159->1077), div. (0->0), fcn. (14444->8), ass. (0->462)
t381 = sin(qJ(2));
t675 = rSges(3,2) * t381;
t380 = qJ(2) + qJ(3);
t365 = qJ(4) + t380;
t340 = sin(t365);
t341 = cos(t365);
t618 = rSges(5,2) * t341;
t255 = rSges(5,1) * t340 + t618;
t382 = sin(qJ(1));
t221 = t255 * t382;
t376 = qJD(2) + qJD(3);
t348 = qJD(4) + t376;
t366 = t382 * rSges(5,3);
t384 = cos(qJ(1));
t325 = t341 * rSges(5,1);
t619 = rSges(5,2) * t340;
t660 = t325 - t619;
t104 = -t348 * t221 + (t384 * t660 + t366) * qJD(1);
t508 = -qJDD(2) - qJDD(3);
t509 = qJD(1) * qJD(4);
t511 = qJD(1) * qJD(2);
t337 = t382 * t511;
t510 = qJD(1) * qJD(3);
t521 = t382 * t510 + t337;
t155 = t382 * t509 + (-qJDD(4) + t508) * t384 + t521;
t191 = t660 * t348;
t212 = t384 * t508 + t521;
t266 = t348 * t384;
t298 = t376 * t384;
t353 = sin(t380);
t288 = -qJDD(2) * t384 + t337;
t383 = cos(qJ(2));
t559 = t383 * qJD(2) ^ 2;
t629 = pkin(2) * t381;
t425 = -pkin(2) * t384 * t559 + t288 * t629;
t374 = t384 * pkin(5);
t312 = pkin(1) * t382 - t374;
t373 = t383 * pkin(2);
t342 = t373 + pkin(1);
t385 = -pkin(6) - pkin(5);
t346 = t384 * t385;
t525 = t382 * t342 + t346;
t198 = t312 - t525;
t540 = t198 - t312;
t377 = -pkin(7) + t385;
t354 = cos(t380);
t339 = pkin(3) * t354;
t506 = t339 + t342;
t531 = -t384 * t377 - t382 * t506;
t147 = t525 + t531;
t573 = t340 * t382;
t300 = rSges(5,2) * t573;
t571 = t341 * t382;
t195 = rSges(5,1) * t571 - t384 * rSges(5,3) - t300;
t555 = t147 - t195;
t458 = t540 + t555;
t372 = t382 * pkin(5);
t617 = pkin(2) * qJD(2);
t505 = t381 * t617;
t322 = t382 * t505;
t515 = qJD(1) * t382;
t523 = t385 * t515 + t322;
t623 = pkin(1) - t342;
t144 = (-t384 * t623 - t372) * qJD(1) - t523;
t313 = t384 * pkin(1) + t372;
t286 = t313 * qJD(1);
t556 = -t144 - t286;
t567 = t354 * t376;
t628 = pkin(3) * t353;
t253 = -t376 * t628 - t505;
t463 = t342 - t506;
t562 = t382 * t377;
t87 = t382 * t253 + (-t384 * t463 - t562) * qJD(1) + t523;
t14 = t155 * t255 - t191 * t266 + (t212 * t353 - t298 * t567) * pkin(3) + t458 * qJDD(1) + (-t104 - t87 + t556) * qJD(1) + t425;
t352 = qJD(2) * t382;
t297 = qJD(3) * t382 + t352;
t265 = qJD(4) * t382 + t297;
t318 = t384 * t342;
t464 = -t382 * t385 + t318;
t199 = t464 - t313;
t258 = t384 * t506;
t520 = t385 - t377;
t148 = t382 * t520 + t258 - t318;
t570 = t341 * t384;
t572 = t340 * t384;
t196 = rSges(5,1) * t570 - rSges(5,2) * t572 + t366;
t554 = t148 + t196;
t500 = -t199 - t554;
t59 = -t297 * t628 - t255 * t265 - t322 + (t313 - t500) * qJD(1);
t674 = (qJD(1) * t59 + t14) * t384;
t599 = Icges(5,6) * t384;
t184 = Icges(5,4) * t571 - Icges(5,2) * t573 - t599;
t324 = Icges(5,4) * t341;
t251 = Icges(5,1) * t340 + t324;
t673 = -t251 * t382 - t184;
t440 = -Icges(5,2) * t340 + t324;
t185 = Icges(5,6) * t382 + t384 * t440;
t672 = -t251 * t384 - t185;
t608 = Icges(5,4) * t340;
t252 = Icges(5,1) * t341 - t608;
t187 = Icges(5,5) * t382 + t252 * t384;
t249 = Icges(5,2) * t341 + t608;
t671 = -t249 * t384 + t187;
t566 = t354 * t382;
t569 = t353 * t382;
t600 = Icges(4,6) * t384;
t202 = Icges(4,4) * t566 - Icges(4,2) * t569 - t600;
t333 = Icges(4,4) * t354;
t276 = Icges(4,1) * t353 + t333;
t670 = -t276 * t382 - t202;
t441 = -Icges(4,2) * t353 + t333;
t203 = Icges(4,6) * t382 + t384 * t441;
t669 = -t276 * t384 - t203;
t609 = Icges(4,4) * t353;
t277 = Icges(4,1) * t354 - t609;
t205 = Icges(4,5) * t382 + t277 * t384;
t274 = Icges(4,2) * t354 + t609;
t668 = -t274 * t384 + t205;
t667 = t251 + t440;
t666 = t276 + t441;
t498 = t353 * t515;
t299 = pkin(3) * t498;
t462 = qJD(1) * t221 - t266 * t660;
t576 = t298 * t354;
t665 = pkin(3) * t576 + t255 * t515 + t299 - t462;
t278 = rSges(4,1) * t353 + rSges(4,2) * t354;
t244 = t278 * t382;
t245 = t278 * t384;
t334 = t354 * rSges(4,1);
t659 = -rSges(4,2) * t353 + t334;
t207 = rSges(4,1) * t566 - rSges(4,2) * t569 - t384 * rSges(4,3);
t367 = t382 * rSges(4,3);
t565 = t354 * t384;
t568 = t353 * t384;
t208 = rSges(4,1) * t565 - rSges(4,2) * t568 + t367;
t513 = qJD(2) * t384;
t548 = -t198 * t352 + t199 * t513;
t68 = t207 * t297 + t208 * t298 + t548;
t494 = t381 * t513;
t460 = pkin(2) * t494;
t415 = -t278 * t298 - t460;
t499 = -t207 + t540;
t73 = qJD(1) * t499 + t415;
t539 = -t199 - t208;
t74 = -t278 * t297 - t322 + (t313 - t539) * qJD(1);
t664 = -(qJD(1) * t244 - t298 * t659) * t73 - t68 * (-t297 * t244 - t245 * t298) - t74 * (-qJD(1) * t245 - t297 * t659);
t514 = qJD(1) * t384;
t421 = rSges(5,3) * t514 + qJD(1) * t300 - t266 * t618;
t503 = t340 * t266;
t103 = (-t341 * t515 - t503) * rSges(5,1) + t421;
t287 = qJDD(2) * t382 + t384 * t511;
t211 = qJDD(3) * t382 + t384 * t510 + t287;
t154 = qJDD(4) * t382 + t384 * t509 + t211;
t347 = pkin(5) * t514;
t143 = -t460 - t347 + (t382 * t623 - t346) * qJD(1);
t530 = qJD(1) * (-pkin(1) * t515 + t347) + qJDD(1) * t313;
t403 = qJD(1) * t143 + qJDD(1) * t199 + (-t287 * t381 - t382 * t559) * pkin(2) + t530;
t235 = t384 * t253;
t86 = t460 + t235 + (t382 * t463 + t384 * t520) * qJD(1);
t15 = -t154 * t255 - t191 * t265 + t554 * qJDD(1) + (t103 + t86) * qJD(1) + (-t211 * t353 - t297 * t567) * pkin(3) + t403;
t663 = t15 * t382;
t291 = qJD(1) * t312;
t661 = qJD(1) * t198 - t291;
t364 = Icges(3,4) * t383;
t442 = -Icges(3,2) * t381 + t364;
t306 = Icges(3,1) * t381 + t364;
t658 = g(1) * t384 + g(2) * t382;
t248 = Icges(5,5) * t341 - Icges(5,6) * t340;
t247 = Icges(5,5) * t340 + Icges(5,6) * t341;
t582 = t247 * t384;
t589 = t185 * t340;
t596 = Icges(5,3) * t384;
t657 = -t348 * t582 + (-t187 * t341 - t248 * t382 + t589 + t596) * qJD(1);
t296 = Icges(5,4) * t573;
t605 = Icges(5,5) * t384;
t186 = Icges(5,1) * t571 - t296 - t605;
t437 = t184 * t340 - t186 * t341;
t183 = Icges(5,3) * t382 + t248 * t384;
t519 = qJD(1) * t183;
t583 = t247 * t382;
t656 = qJD(1) * t437 - t348 * t583 + t519;
t561 = t382 * t383;
t564 = t381 * t382;
t598 = Icges(3,3) * t384;
t229 = Icges(3,5) * t561 - Icges(3,6) * t564 - t598;
t329 = Icges(3,4) * t564;
t607 = Icges(3,5) * t384;
t233 = Icges(3,1) * t561 - t329 - t607;
t601 = Icges(3,6) * t384;
t231 = Icges(3,4) * t561 - Icges(3,2) * t564 - t601;
t585 = t231 * t381;
t433 = -t233 * t383 + t585;
t79 = -t229 * t384 - t382 * t433;
t273 = Icges(4,5) * t354 - Icges(4,6) * t353;
t272 = Icges(4,5) * t353 + Icges(4,6) * t354;
t579 = t272 * t384;
t587 = t203 * t353;
t597 = Icges(4,3) * t384;
t655 = -t376 * t579 + (-t205 * t354 - t273 * t382 + t587 + t597) * qJD(1);
t316 = Icges(4,4) * t569;
t606 = Icges(4,5) * t384;
t204 = Icges(4,1) * t566 - t316 - t606;
t435 = t202 * t353 - t204 * t354;
t201 = Icges(4,3) * t382 + t273 * t384;
t518 = qJD(1) * t201;
t580 = t272 * t382;
t654 = qJD(1) * t435 - t376 * t580 + t518;
t303 = Icges(3,5) * t383 - Icges(3,6) * t381;
t302 = Icges(3,5) * t381 + Icges(3,6) * t383;
t416 = qJD(2) * t302;
t610 = Icges(3,4) * t381;
t307 = Icges(3,1) * t383 - t610;
t234 = Icges(3,5) * t382 + t307 * t384;
t232 = Icges(3,6) * t382 + t384 * t442;
t584 = t232 * t381;
t432 = -t234 * t383 + t584;
t653 = -t384 * t416 + (-t303 * t382 + t432 + t598) * qJD(1);
t230 = Icges(3,3) * t382 + t303 * t384;
t517 = qJD(1) * t230;
t652 = qJD(1) * t433 - t382 * t416 + t517;
t430 = t249 * t340 - t251 * t341;
t651 = qJD(1) * t430 + t248 * t348;
t429 = t274 * t353 - t276 * t354;
t650 = qJD(1) * t429 + t273 * t376;
t304 = Icges(3,2) * t383 + t610;
t427 = t304 * t381 - t306 * t383;
t649 = t427 * qJD(1) + t303 * qJD(2);
t648 = t382 * (-t304 * t384 + t234) - t384 * (-Icges(3,2) * t561 + t233 - t329);
t647 = qJD(1) * t667 + t265 * t671 - t266 * (-Icges(5,2) * t571 + t186 - t296);
t646 = qJD(1) * t666 + t297 * t668 - t298 * (-Icges(4,2) * t566 + t204 - t316);
t645 = t154 / 0.2e1;
t644 = t155 / 0.2e1;
t643 = t211 / 0.2e1;
t642 = t212 / 0.2e1;
t641 = -t265 / 0.2e1;
t640 = t265 / 0.2e1;
t639 = -t266 / 0.2e1;
t638 = t266 / 0.2e1;
t637 = t287 / 0.2e1;
t636 = t288 / 0.2e1;
t635 = -t297 / 0.2e1;
t634 = t297 / 0.2e1;
t633 = -t298 / 0.2e1;
t632 = t298 / 0.2e1;
t631 = t382 / 0.2e1;
t630 = -t384 / 0.2e1;
t625 = -qJD(1) / 0.2e1;
t624 = qJD(1) / 0.2e1;
t622 = rSges(3,1) * t383;
t621 = rSges(3,2) * t383;
t368 = t382 * rSges(3,3);
t407 = -t266 * t255 - t298 * t628 - t460;
t58 = qJD(1) * t458 + t407;
t616 = t382 * t58;
t615 = t73 * t278;
t614 = qJDD(1) / 0.2e1;
t45 = -t147 * t297 + t148 * t298 + t195 * t265 + t196 * t266 + t548;
t595 = qJD(1) * t45;
t308 = rSges(3,1) * t381 + t621;
t495 = t308 * t513;
t522 = rSges(3,2) * t564 + t384 * rSges(3,3);
t236 = rSges(3,1) * t561 - t522;
t533 = -t236 - t312;
t121 = qJD(1) * t533 - t495;
t593 = t121 * t382;
t592 = t121 * t384;
t560 = t383 * t384;
t563 = t381 * t384;
t237 = rSges(3,1) * t560 - rSges(3,2) * t563 + t368;
t173 = t237 + t313;
t122 = qJD(1) * t173 - t308 * t352;
t268 = t308 * t384;
t591 = t122 * t268;
t182 = Icges(5,5) * t571 - Icges(5,6) * t573 - t596;
t590 = t182 * t384;
t200 = Icges(4,5) * t566 - Icges(4,6) * t569 - t597;
t588 = t200 * t384;
t581 = t249 * t348;
t578 = t274 * t376;
t577 = t297 * t354;
t575 = t302 * t382;
t574 = t302 * t384;
t88 = -t382 * t430 - t582;
t558 = t88 * qJD(1);
t95 = -t382 * t429 - t579;
t557 = t95 * qJD(1);
t553 = -t382 * t182 - t186 * t570;
t552 = t382 * t183 + t187 * t570;
t551 = -t382 * t200 - t204 * t565;
t550 = t382 * t201 + t205 * t565;
t547 = t382 * t195 + t384 * t196;
t546 = -t382 * t198 + t384 * t199;
t545 = t382 * t207 + t384 * t208;
t542 = -t382 * t229 - t233 * t560;
t541 = t382 * t230 + t234 * t560;
t528 = rSges(4,2) * t498 + rSges(4,3) * t514;
t527 = -t304 + t307;
t526 = t306 + t442;
t524 = rSges(3,3) * t514 + t515 * t675;
t516 = qJD(1) * t303;
t125 = -t382 * t427 - t574;
t512 = t125 * qJD(1);
t507 = t384 * t103 + t382 * t104 + t195 * t514;
t504 = t383 * t617;
t115 = -rSges(4,2) * t576 + (-t298 * t353 - t354 * t515) * rSges(4,1) + t528;
t116 = -t376 * t244 + (t384 * t659 + t367) * qJD(1);
t502 = t384 * t115 + t382 * t116 + t207 * t514;
t501 = t384 * t143 + t382 * t144 - t198 * t514;
t496 = t381 * t514;
t492 = -pkin(1) - t622;
t491 = t515 / 0.2e1;
t490 = t514 / 0.2e1;
t489 = -t352 / 0.2e1;
t488 = t352 / 0.2e1;
t487 = -t513 / 0.2e1;
t486 = t513 / 0.2e1;
t414 = -t278 - t629;
t485 = (-t382 * t440 + t599) * qJD(1) + t671 * t348;
t484 = t381 * (-t382 ^ 2 - t384 ^ 2);
t483 = qJD(1) * t185 + t186 * t348 - t382 * t581;
t482 = (-t252 * t382 + t605) * qJD(1) + t672 * t348;
t481 = qJD(1) * t187 + t348 * t673;
t480 = (-t382 * t441 + t600) * qJD(1) + t668 * t376;
t479 = qJD(1) * t203 + t204 * t376 - t382 * t578;
t478 = (-t277 * t382 + t606) * qJD(1) + t669 * t376;
t477 = qJD(1) * t205 + t376 * t670;
t222 = t255 * t384;
t476 = -t265 * t221 - t222 * t266;
t151 = t187 * t571;
t475 = t183 * t384 - t151;
t156 = t205 * t566;
t474 = t201 * t384 - t156;
t473 = -t182 + t589;
t472 = t667 * t348;
t471 = t252 * t348 - t581;
t192 = t234 * t561;
t470 = t230 * t384 - t192;
t469 = -t200 + t587;
t468 = -qJD(1) * t222 - t265 * t660;
t467 = t666 * t376;
t466 = t277 * t376 - t578;
t465 = -t229 + t584;
t459 = -t382 * t147 + t384 * t148 + t547;
t457 = -pkin(3) * t567 - t191;
t228 = t659 * t376;
t456 = -t228 - t504;
t455 = t660 + t339;
t292 = -t628 - t629;
t311 = rSges(2,1) * t384 - rSges(2,2) * t382;
t309 = rSges(2,1) * t382 + rSges(2,2) * t384;
t310 = t622 - t675;
t124 = t232 * t383 + t234 * t381;
t417 = qJD(2) * t304;
t134 = -t384 * t417 + (-t382 * t442 + t601) * qJD(1);
t418 = qJD(2) * t306;
t136 = -t384 * t418 + (-t307 * t382 + t607) * qJD(1);
t393 = -qJD(2) * t124 - t134 * t381 + t136 * t383 + t517;
t123 = t231 * t383 + t233 * t381;
t135 = qJD(1) * t232 - t382 * t417;
t137 = qJD(1) * t234 - t382 * t418;
t394 = qJD(1) * t229 - qJD(2) * t123 - t135 * t381 + t137 * t383;
t451 = -(t382 * t652 + t394 * t384) * t384 + (t382 * t653 + t393 * t384) * t382;
t450 = -(t394 * t382 - t384 * t652) * t384 + (t393 * t382 - t384 * t653) * t382;
t449 = -t382 * t59 - t384 * t58;
t448 = -t382 * t74 - t384 * t73;
t80 = -t232 * t564 - t470;
t447 = t382 * t80 - t384 * t79;
t81 = -t231 * t563 - t542;
t82 = -t232 * t563 + t541;
t446 = t382 * t82 - t384 * t81;
t439 = -t122 * t382 - t592;
t140 = -t513 * t621 + (-t383 * t515 - t494) * rSges(3,1) + t524;
t267 = t308 * t382;
t141 = -qJD(2) * t267 + (t310 * t384 + t368) * qJD(1);
t438 = t140 * t384 + t141 * t382;
t90 = t184 * t341 + t186 * t340;
t105 = t202 * t354 + t204 * t353;
t431 = t236 * t382 + t237 * t384;
t428 = t304 * t383 + t306 * t381;
t426 = -t506 - t325;
t424 = -t147 * t514 + t382 * t87 + t384 * t86 + t507;
t423 = -t255 + t292;
t422 = t143 * t513 + t144 * t352 - t287 * t198 - t199 * t288;
t420 = t437 * t382;
t419 = t435 * t382;
t412 = t457 - t504;
t411 = qJD(1) * t248 - t265 * t582 + t266 * t583;
t410 = qJD(1) * t273 - t297 * t579 + t298 * t580;
t409 = t231 * t384 - t232 * t382;
t408 = (-t381 * t526 + t383 * t527) * qJD(1);
t399 = qJD(1) * t182 - t340 * t483 + t341 * t481;
t18 = t382 * t656 + t399 * t384;
t400 = -t340 * t485 + t341 * t482 + t519;
t19 = t382 * t657 + t400 * t384;
t20 = t399 * t382 - t384 * t656;
t21 = t400 * t382 - t384 * t657;
t69 = -t420 - t590;
t70 = -t185 * t573 - t475;
t31 = t265 * t70 - t266 * t69 + t558;
t71 = -t184 * t572 - t553;
t72 = -t185 * t572 + t552;
t89 = -t384 * t430 + t583;
t85 = t89 * qJD(1);
t32 = t265 * t72 - t266 * t71 + t85;
t402 = t672 * t265 - t673 * t266 + (-t249 + t252) * qJD(1);
t389 = -t340 * t647 + t402 * t341;
t396 = qJD(1) * t247 - t340 * t472 + t341 * t471;
t46 = t382 * t651 + t396 * t384;
t47 = t396 * t382 - t384 * t651;
t50 = t340 * t481 + t341 * t483;
t51 = t340 * t482 + t341 * t485;
t91 = t185 * t341 + t187 * t340;
t406 = (qJD(1) * t46 + qJDD(1) * t89 + t154 * t72 + t155 * t71 - t18 * t266 + t19 * t265) * t631 + (t382 * t51 - t384 * t50 + (t382 * t90 + t384 * t91) * qJD(1)) * t624 + (t382 * t411 + t384 * t389) * t641 + (t382 * t389 - t384 * t411) * t638 + (qJD(1) * t47 + qJDD(1) * t88 + t154 * t70 + t155 * t69 - t20 * t266 + t21 * t265) * t630 + (t402 * t340 + t341 * t647) * t625 + t31 * t491 + t32 * t490 + (t382 * t72 - t384 * t71) * t645 + (t382 * t70 - t384 * t69) * t644 + (-t18 * t384 + t19 * t382 + (t382 * t71 + t384 * t72) * qJD(1)) * t640 + (-t20 * t384 + t21 * t382 + (t382 * t69 + t384 * t70) * qJD(1)) * t639 + (t382 * t91 - t384 * t90) * t614;
t405 = t45 * t476 + t468 * t59;
t401 = t669 * t297 - t670 * t298 + (-t274 + t277) * qJD(1);
t398 = qJD(1) * t200 - t353 * t479 + t354 * t477;
t397 = -t353 * t480 + t354 * t478 + t518;
t395 = qJD(1) * t272 - t353 * t467 + t354 * t466;
t281 = t442 * qJD(2);
t282 = t307 * qJD(2);
t392 = qJD(1) * t302 - qJD(2) * t428 - t281 * t381 + t282 * t383;
t391 = -t381 * t648 + t409 * t383;
t106 = t203 * t354 + t205 * t353;
t24 = t382 * t654 + t398 * t384;
t25 = t382 * t655 + t397 * t384;
t26 = t398 * t382 - t384 * t654;
t27 = t397 * t382 - t384 * t655;
t388 = -t353 * t646 + t401 * t354;
t75 = -t419 - t588;
t76 = -t203 * t569 - t474;
t39 = t297 * t76 - t298 * t75 + t557;
t77 = -t202 * t568 - t551;
t78 = -t203 * t568 + t550;
t96 = -t384 * t429 + t580;
t94 = t96 * qJD(1);
t40 = t297 * t78 - t298 * t77 + t94;
t54 = t382 * t650 + t395 * t384;
t55 = t395 * t382 - t384 * t650;
t56 = t353 * t477 + t354 * t479;
t57 = t353 * t478 + t354 * t480;
t390 = (qJD(1) * t54 + qJDD(1) * t96 + t211 * t78 + t212 * t77 - t24 * t298 + t25 * t297) * t631 + (-t105 * t384 + t106 * t382) * t614 + t406 + (t382 * t76 - t384 * t75) * t642 + (t382 * t78 - t384 * t77) * t643 + t40 * t490 + t39 * t491 + (t401 * t353 + t354 * t646) * t625 + (t382 * t388 - t384 * t410) * t632 + (t382 * t410 + t384 * t388) * t635 + (t382 * t57 - t384 * t56 + (t105 * t382 + t106 * t384) * qJD(1)) * t624 + (-t26 * t384 + t27 * t382 + (t382 * t75 + t384 * t76) * qJD(1)) * t633 + (-t24 * t384 + t25 * t382 + (t382 * t77 + t384 * t78) * qJD(1)) * t634 + (qJD(1) * t55 + qJDD(1) * t95 + t211 * t76 + t212 * t75 - t26 * t298 + t27 * t297) * t630;
t283 = t310 * qJD(2);
t270 = t384 * t292;
t269 = t382 * t292;
t214 = pkin(2) * t563 + t270;
t213 = pkin(2) * t564 + t269;
t126 = -t384 * t427 + t575;
t118 = t126 * qJD(1);
t117 = t431 * qJD(2);
t66 = qJD(1) * t140 + qJDD(1) * t237 - t283 * t352 - t287 * t308 + t530;
t65 = -t283 * t513 + t288 * t308 + t533 * qJDD(1) + (-t141 - t286) * qJD(1);
t64 = t392 * t382 - t384 * t649;
t63 = t382 * t649 + t392 * t384;
t62 = -qJD(2) * t432 + t134 * t383 + t136 * t381;
t61 = -qJD(2) * t433 + t135 * t383 + t137 * t381;
t53 = qJD(2) * t446 + t118;
t52 = qJD(2) * t447 + t512;
t42 = qJD(1) * t115 + qJDD(1) * t208 - t211 * t278 - t228 * t297 + t403;
t41 = t212 * t278 - t228 * t298 + t499 * qJDD(1) + (-t116 + t556) * qJD(1) + t425;
t22 = t115 * t298 + t116 * t297 + t207 * t211 - t208 * t212 + t422;
t9 = t103 * t266 + t104 * t265 - t147 * t211 - t148 * t212 + t154 * t195 - t155 * t196 + t297 * t87 + t298 * t86 + t422;
t1 = [(t94 + (t76 + (t202 * t384 + t203 * t382) * t353 + t474 + t551) * t298 + (-t204 * t566 + t588 + t75 + (t202 * t382 - t203 * t384) * t353 + t550) * t297) * t632 + (t85 + (t70 + (t184 * t384 + t185 * t382) * t340 + t475 + t553) * t266 + (-t186 * t571 + t590 + t69 + (t184 * t382 - t185 * t384) * t340 + t552) * t265) * t638 + (t118 + ((t80 - t192 + (t230 + t585) * t384 + t542) * t384 + t541 * t382) * qJD(2)) * t486 - m(2) * (-g(1) * t309 + g(2) * t311) + (t91 + t89) * t645 + (t90 + t88) * t644 + (t106 + t96) * t643 + (t105 + t95) * t642 + (-t558 + (t72 - t420 - t552) * t266 + (t382 * t473 - t151 + t71) * t265 + ((t183 + t437) * t265 + t473 * t266) * t384 + t31) * t641 + (t51 + t46) * t640 + (t126 + t124) * t637 + (t125 + t123) * t636 + (-t557 + (t78 - t419 - t550) * t298 + (t382 * t469 - t156 + t77) * t297 + ((t201 + t435) * t297 + t469 * t298) * t384 + t39) * t635 + (t57 + t54) * t634 + (-t512 + ((t384 * t465 - t541 + t82) * t384 + (t382 * t465 + t470 + t81) * t382) * qJD(2) + t52) * t489 + (t62 + t63) * t488 + (t50 + t47 + t32) * t639 + (t56 + t55 + t40) * t633 + (t61 + t64 + t53) * t487 + (-qJD(2) * t427 + t281 * t383 + t282 * t381 + t340 * t471 + t341 * t472 + t353 * t466 + t354 * t467) * qJD(1) + (-(qJD(1) * t555 + t407 - t58 + t661) * t59 + t59 * (-rSges(5,1) * t503 + t235 + t421) + (t255 * t348 - t253) * t616 + ((t58 * (t426 + t619) - t59 * t377) * t384 + (t58 * (t377 - rSges(5,3)) + t59 * t426) * t382) * qJD(1) + (t15 - g(2)) * (t196 + t258 - t562) + (t14 - g(1)) * (-t195 + t531)) * m(5) + (-(-qJD(1) * t207 + t415 + t661 - t73) * t74 + t73 * t523 + t74 * (-t460 + t528) + (-t245 * t74 + t382 * t615) * t376 + ((-t73 * rSges(4,3) + t74 * (-t342 - t334)) * t382 + (t73 * (-t342 - t659) - t74 * t385) * t384) * qJD(1) + (t42 - g(2)) * (t208 + t464) + (t41 - g(1)) * (-t207 - t525)) * m(4) + (t122 * (t347 + t524) + (t308 * t593 - t591) * qJD(2) + ((-pkin(1) - t310) * t592 + (t121 * (-rSges(3,3) - pkin(5)) + t122 * t492) * t382) * qJD(1) - (-qJD(1) * t236 - t121 - t291 - t495) * t122 + (t66 - g(2)) * t173 + (t65 - g(1)) * (t492 * t382 + t374 + t522)) * m(3) + (t428 + m(2) * (t309 ^ 2 + t311 ^ 2) + t249 * t341 + t251 * t340 + t274 * t354 + t276 * t353 + Icges(2,3)) * qJDD(1); ((-t513 * t575 - t516) * t384 + (t408 + (t384 * t574 + t391) * qJD(2)) * t382) * t486 + ((t79 * t382 + t80 * t384) * qJD(1) + t450) * t487 + ((t381 * t527 + t383 * t526) * qJD(1) + (t409 * t381 + t383 * t648) * qJD(2)) * t625 + t390 + (t382 * t62 - t384 * t61 + (t123 * t382 + t124 * t384) * qJD(1)) * t624 + ((t81 * t382 + t82 * t384) * qJD(1) + t451) * t488 + ((-t352 * t574 + t516) * t382 + (t408 + (t382 * t575 + t391) * qJD(2)) * t384) * t489 + (-t123 * t384 + t124 * t382) * t614 + t446 * t637 + t447 * t636 + (qJD(1) * t64 + qJD(2) * t450 + qJDD(1) * t125 + t287 * t80 + t288 * t79) * t630 + (qJD(1) * t63 + qJD(2) * t451 + qJDD(1) * t126 + t287 * t82 + t288 * t81) * t631 + t52 * t491 + t53 * t490 + (-t59 * (-pkin(3) * t577 + qJD(1) * t214 + t468) - t45 * (t213 * t297 + t214 * t298 + t476) - (-t59 * t496 + (t383 * t449 + t45 * t484) * qJD(2)) * pkin(2) + t9 * (t459 + t546) + t45 * (t424 + t501) + t423 * t674 + (t15 * t423 + t412 * t59 + t500 * t595) * t382 - g(1) * (t270 - t222) - g(2) * (t269 - t221) - g(3) * (t373 + t455) + (qJD(1) * t213 + t412 * t384 + t665) * t58) * m(5) + (-g(3) * (t659 + t373) - t658 * t414 - (-t74 * t496 + (t383 * t448 + t484 * t68) * qJD(2)) * pkin(2) + t22 * (t545 + t546) + t68 * (t501 + t502) + (t456 * t73 + (qJD(1) * t74 + t41) * t414) * t384 + (t42 * t414 + t74 * t456 + (t539 * t68 + t615) * qJD(1)) * t382 + t664) * m(4) + ((qJD(2) * t438 + t236 * t287 - t237 * t288) * t431 + t117 * ((t236 * t384 - t237 * t382) * qJD(1) + t438) + t439 * t283 + (-t66 * t382 - t65 * t384 + (-t122 * t384 + t593) * qJD(1)) * t308 - (t121 * t267 - t591) * qJD(1) - (t117 * (-t267 * t382 - t268 * t384) + t439 * t310) * qJD(2) + g(1) * t268 + g(2) * t267 - g(3) * t310) * m(3); t390 + (-g(3) * t455 - (-t59 * t577 + (-t59 * t514 + t45 * (-t297 * t382 - t298 * t384)) * t353) * pkin(3) - t405 + t9 * t459 + t45 * t424 + (t457 * t59 - t554 * t595) * t382 + (t384 * t457 - t299 + t665) * t58 + (-t658 + t663 + t674) * (-t255 - t628)) * m(5) + (t22 * t545 + t68 * (-t208 * t515 + t502) + t448 * t228 + (-t42 * t382 - t41 * t384 + (t382 * t73 - t384 * t74) * qJD(1)) * t278 + g(1) * t245 + g(2) * t244 - g(3) * t659 + t664) * m(4); t406 + (-t462 * t58 - t405 + t9 * t547 + t45 * (-t196 * t515 + t507) + t449 * t191 + (-t14 * t384 - t663 + (-t384 * t59 + t616) * qJD(1)) * t255 + g(1) * t222 + g(2) * t221 - g(3) * t660) * m(5);];
tau = t1;
