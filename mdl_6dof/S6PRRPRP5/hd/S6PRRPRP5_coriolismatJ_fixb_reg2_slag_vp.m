% Calculate inertial parameters regressor of coriolis matrix for
% S6PRRPRP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 21:49
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PRRPRP5_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP5_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP5_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRRPRP5_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 21:49:23
% EndTime: 2019-03-08 21:49:38
% DurationCPUTime: 10.50s
% Computational Cost: add. (5370->556), mult. (12224->696), div. (0->0), fcn. (11912->8), ass. (0->427)
t394 = sin(pkin(6));
t396 = sin(qJ(3));
t400 = cos(qJ(2));
t569 = t396 * t400;
t506 = t394 * t569;
t398 = cos(qJ(5));
t392 = t398 ^ 2;
t395 = sin(qJ(5));
t390 = t395 ^ 2;
t634 = -t390 / 0.2e1;
t680 = t634 - t392 / 0.2e1;
t421 = t680 * t506;
t576 = t394 * t400;
t505 = t398 * t576;
t317 = t396 * t505;
t397 = sin(qJ(2));
t578 = t394 * t397;
t245 = t395 * t578 - t317;
t629 = -t398 / 0.2e1;
t567 = t397 * t398;
t246 = (t395 * t569 + t567) * t394;
t689 = t246 / 0.2e1;
t435 = t245 * t629 + t395 * t689;
t406 = t421 + t435;
t621 = cos(pkin(6));
t474 = t621 * t396;
t399 = cos(qJ(3));
t577 = t394 * t399;
t285 = t397 * t577 + t474;
t284 = t396 * t578 - t399 * t621;
t507 = t395 * t576;
t439 = t284 * t398 + t507;
t440 = -t284 * t395 + t505;
t504 = t399 * t576;
t649 = -t245 * t439 - t246 * t440 + t285 * t504;
t679 = t649 * qJD(1);
t691 = -qJD(4) * t406 - t679;
t413 = t421 - t435;
t690 = -t413 * qJD(4) + t679;
t486 = t577 / 0.2e1;
t418 = t474 / 0.2e1 + t397 * t486;
t633 = t392 / 0.2e1;
t639 = t285 / 0.2e1;
t120 = t285 * t633 + t390 * t639 + t418;
t549 = t390 + t392;
t438 = (-0.1e1 + t549) * t285 * t284;
t651 = t438 * qJD(1);
t688 = t120 * qJD(4) + t651;
t657 = qJD(2) * t413;
t687 = t120 * qJD(3) - t657;
t121 = t285 * t680 + t418;
t686 = t121 * qJD(4) - t651;
t658 = qJD(2) * t406;
t685 = -t121 * qJD(3) + t658;
t543 = qJD(3) * t285;
t684 = -t549 * t543 + t657;
t378 = t398 * qJD(3);
t683 = t440 * qJD(5) + t285 * t378;
t391 = t396 ^ 2;
t393 = t399 ^ 2;
t682 = t391 + t393;
t566 = t398 * qJ(6);
t335 = -t395 * pkin(5) + t566;
t519 = t395 * qJD(6);
t447 = qJD(5) * t335 + t519;
t401 = -pkin(3) - pkin(9);
t563 = t399 * t401;
t570 = t396 * qJ(4);
t295 = -pkin(2) - t570 + t563;
t644 = pkin(4) + pkin(8);
t672 = t644 * t396;
t193 = t295 * t395 - t398 * t672;
t641 = -t193 / 0.2e1;
t624 = t396 * pkin(5);
t175 = t193 - t624;
t643 = t175 / 0.2e1;
t477 = t641 + t643;
t630 = t396 / 0.2e1;
t565 = t398 * t295;
t673 = t395 * t644;
t172 = t565 + (qJ(6) + t673) * t396;
t194 = t395 * t672 + t565;
t650 = t194 / 0.2e1 - t172 / 0.2e1;
t15 = (qJ(6) * t630 - t650) * t398 + (-t624 / 0.2e1 + t477) * t395;
t606 = t15 * qJD(2);
t681 = t447 + t606;
t376 = t395 * qJD(3);
t534 = qJD(5) * t398;
t465 = t400 * t486;
t564 = t398 * t399;
t481 = -t564 / 0.2e1;
t626 = t399 / 0.2e1;
t648 = t284 * t481 + t395 * t465 + t439 * t626;
t678 = qJD(2) * t648 - t284 * t376 + t285 * t534;
t677 = qJD(2) * t649 + qJD(3) * t438;
t676 = qJD(3) * t648 + (-t245 * t396 + t393 * t505) * qJD(2);
t674 = t440 / 0.2e1;
t72 = (t193 * t395 + t194 * t398) * t396;
t571 = t395 * t399;
t483 = t571 / 0.2e1;
t631 = -t396 / 0.2e1;
t411 = t285 * t483 + t440 * t631;
t487 = -t578 / 0.2e1;
t446 = t317 / 0.2e1 + t395 * t487;
t67 = t411 - t446;
t671 = -t67 * qJD(2) + t683;
t350 = t393 - t391;
t379 = t399 * qJD(3);
t355 = t395 * t379;
t312 = t350 * t398;
t523 = t312 * qJD(2);
t670 = -t523 - t355;
t669 = t396 * t534 - t523;
t381 = t399 * qJ(6);
t362 = t395 * t381;
t364 = pkin(5) * t564;
t382 = t399 * pkin(8);
t384 = t399 * pkin(4);
t476 = t382 / 0.2e1 + t384 / 0.2e1;
t434 = t362 / 0.2e1 + t364 / 0.2e1 + t476;
t340 = t382 + t384;
t315 = t340 * t398;
t385 = pkin(3) * t396;
t619 = qJ(4) * t399;
t336 = t385 - t619;
t301 = pkin(9) * t396 + t336;
t573 = t395 * t301;
t196 = t315 - t573;
t383 = t399 * pkin(5);
t180 = -t196 - t383;
t599 = t180 * t398;
t279 = t398 * t301;
t314 = t340 * t395;
t197 = t279 + t314;
t178 = t381 + t197;
t601 = t178 * t395;
t437 = -t601 / 0.2e1 + t599 / 0.2e1;
t47 = t434 + t437;
t529 = t121 * qJD(1);
t320 = qJ(4) - t335;
t542 = qJD(3) * t320;
t668 = qJD(2) * t47 + t529 + t542;
t388 = qJD(3) * qJ(4);
t594 = t197 * t395;
t595 = t196 * t398;
t436 = -t595 / 0.2e1 - t594 / 0.2e1;
t62 = t436 + t476;
t667 = qJD(2) * t62 + t388 + t529;
t597 = t193 * t396;
t126 = t340 * t564 - t597;
t585 = t285 * t399;
t586 = t284 * t396;
t65 = (t586 / 0.2e1 + t585 / 0.2e1 + t487) * t398;
t558 = t65 * qJD(1);
t666 = -qJD(2) * t126 - t558;
t68 = t411 + t446;
t556 = t68 * qJD(1);
t550 = t362 + t364;
t234 = t340 + t550;
t603 = t172 * t396;
t84 = t234 * t571 + t603;
t665 = qJD(2) * t84 + t556;
t292 = t335 * t399;
t582 = t292 * t395;
t593 = t234 * t398;
t53 = -t597 + (t582 + t593) * t399;
t664 = qJD(2) * t53 + t558;
t602 = t172 * t398;
t54 = (t175 * t395 + t602) * t396;
t653 = t406 * qJD(1);
t663 = qJD(2) * t54 + t653;
t19 = -t196 * t571 + t197 * t564 - t72;
t662 = t19 * qJD(2) - t653;
t661 = -qJD(2) * t72 - t653;
t17 = (t178 * t399 - t603) * t398 + (-t175 * t396 + t180 * t399) * t395;
t660 = t17 * qJD(2) - t653;
t596 = t194 * t396;
t52 = -t596 + (-t234 * t395 + t292 * t398) * t399;
t659 = qJD(2) * t52 - t556;
t656 = qJD(3) * t406;
t518 = t396 * qJD(3);
t349 = t390 - t392;
t546 = qJD(2) * t396;
t647 = 0.2e1 * t395 * t564 * (-qJD(5) + t546) + t349 * t518;
t517 = t399 * qJD(2);
t646 = qJD(3) * t413 + (-t245 * t395 - t246 * t398) * t517;
t480 = t564 / 0.2e1;
t572 = t395 * t396;
t485 = t572 / 0.2e1;
t64 = t439 * t630 + t285 * t480 + t394 * t567 / 0.2e1 + t485 * t576;
t645 = t64 * qJD(2) + qJD(5) * t439 + t285 * t376;
t642 = t180 / 0.2e1;
t640 = t284 / 0.2e1;
t638 = -t292 / 0.2e1;
t637 = t292 / 0.2e1;
t636 = t301 / 0.2e1;
t575 = t395 * qJ(6);
t625 = pkin(5) * t398;
t334 = t575 + t625;
t635 = t334 / 0.2e1;
t632 = -t395 / 0.2e1;
t628 = t398 / 0.2e1;
t627 = -t399 / 0.2e1;
t620 = qJ(4) * t284;
t424 = t440 * t193;
t109 = t424 / 0.2e1;
t10 = t440 * t641 + t109;
t618 = qJD(1) * t10;
t617 = qJD(2) * t10;
t607 = qJD(5) * t65;
t463 = t477 * t395;
t16 = pkin(5) * t485 - t398 * t650 + t566 * t631 + t463;
t605 = t16 * qJD(5);
t574 = t395 * t194;
t18 = -t172 * t571 + (t574 + (t175 - t193) * t398) * t399;
t600 = t18 * qJD(2);
t233 = (-t334 - t644) * t396;
t25 = t172 * t399 + t178 * t396 + (t233 * t399 - t234 * t396) * t395;
t590 = t25 * qJD(2);
t26 = (t233 * t398 - t175) * t399 + (-t180 - t593) * t396;
t589 = t26 * qJD(2);
t580 = t320 * t398;
t579 = t394 ^ 2 * t397;
t568 = t396 * t401;
t509 = t644 * t399;
t48 = -t193 * t399 + (t196 + (-t509 - t340) * t398) * t396;
t560 = t48 * qJD(2);
t49 = t194 * t399 - t340 * t572 + (-t395 * t509 + t197) * t396;
t559 = t49 * qJD(2);
t557 = t65 * qJD(2);
t555 = t68 * qJD(2);
t554 = t549 * t285 * t401;
t265 = -t573 / 0.2e1;
t552 = t265 + t315 / 0.2e1;
t551 = t682 * pkin(8) * t576;
t309 = t350 * t395;
t547 = qJD(2) * t309;
t545 = qJD(2) * t397;
t544 = qJD(2) * t398;
t380 = qJD(4) * t395;
t541 = qJD(4) * t396;
t540 = qJD(4) * t398;
t539 = qJD(4) * t399;
t538 = qJD(5) * t193;
t536 = qJD(5) * t395;
t535 = qJD(5) * t396;
t533 = qJD(5) * t401;
t532 = qJD(6) * t398;
t112 = (-t579 + (t585 + t586) * t394) * t400;
t531 = t112 * qJD(1);
t113 = -t284 * t506 + (-t285 * t577 + t579) * t400;
t530 = t113 * qJD(1);
t461 = -pkin(3) * t399 - t570;
t321 = -pkin(2) + t461;
t209 = t321 * t399 + t336 * t396;
t528 = t209 * qJD(2);
t210 = -t321 * t396 + t336 * t399;
t527 = t210 * qJD(2);
t275 = t549 * t399 * t396;
t526 = t275 * qJD(2);
t475 = t633 + t634;
t296 = t475 * t399;
t525 = t296 * qJD(5);
t522 = t349 * qJD(5);
t521 = t350 * qJD(2);
t520 = t391 * qJD(2);
t377 = t396 * qJD(6);
t516 = t399 * qJD(5);
t515 = -t314 / 0.2e1 - t381;
t513 = pkin(2) * t546;
t512 = pkin(2) * t517;
t511 = pkin(8) * t518;
t482 = t568 / 0.2e1;
t503 = -t593 / 0.2e1 + t320 * t483 + t395 * t482;
t502 = t398 * t517;
t501 = t391 * t540;
t500 = t396 * t540;
t499 = t395 * t533;
t497 = t396 * t516;
t496 = t398 * t533;
t495 = t398 * t519;
t494 = t321 * t546;
t493 = qJD(2) * t576;
t492 = t395 * t546;
t357 = t396 * t379;
t356 = t396 * t517;
t359 = t395 * t534;
t358 = t395 * t378;
t491 = t396 * t544;
t490 = t399 * t532;
t489 = t395 * t639;
t488 = t285 * t629;
t484 = -t571 / 0.2e1;
t479 = t401 * t629;
t276 = (-0.1e1 / 0.2e1 + t475) * t399;
t471 = qJD(2) * t276 + t358;
t225 = qJD(2) * t296 + t358;
t327 = t395 * t393 * t544;
t215 = qJD(3) * t296 - t327;
t363 = qJD(5) + t546;
t469 = qJD(4) - t532;
t468 = t395 * t502;
t467 = t399 * t358;
t466 = t393 * t359;
t462 = 0.2e1 * t467;
t404 = t178 * t674 + t234 * t640 + t439 * t642;
t423 = t435 * t401;
t408 = t320 * t465 + t423;
t1 = (t172 * t632 - t233 / 0.2e1 + t175 * t628) * t285 + t404 + t408;
t11 = t172 * t178 + t175 * t180 + t233 * t234;
t460 = -t1 * qJD(1) + t11 * qJD(2);
t12 = -t172 * t193 + t175 * t194 + t234 * t292;
t402 = t285 * t638 + t439 * t650 + t440 * t643;
t443 = -t245 * pkin(5) / 0.2e1 + qJ(6) * t689;
t5 = -t424 / 0.2e1 + t402 + t443;
t459 = -t5 * qJD(1) + t12 * qJD(2);
t20 = -t193 * t196 + t194 * t197 - t340 * t672;
t403 = t340 * t640 + t197 * t674 - t439 * t196 / 0.2e1;
t409 = qJ(4) * t465 + t423;
t3 = (-t574 / 0.2e1 + t193 * t628 + (pkin(4) / 0.2e1 + pkin(8) / 0.2e1) * t396) * t285 + t403 + t409;
t458 = -t3 * qJD(1) + t20 * qJD(2);
t457 = qJ(4) * t481 + t396 * t479;
t456 = -t599 + t601;
t454 = t594 + t595;
t127 = -t340 * t571 - t596;
t410 = t285 * t484 + t440 * t630;
t63 = -t410 + t446;
t452 = -qJD(1) * t63 + qJD(2) * t127;
t205 = t334 * t395 + t580;
t300 = -t315 / 0.2e1;
t329 = t568 * t632;
t427 = t334 * t480 + t593 / 0.2e1 + t320 * t484 + t329;
t39 = -t383 + t300 + (t637 + t636) * t395 + t427;
t451 = -t39 * qJD(2) - t205 * qJD(3);
t206 = -t320 * t395 + t334 * t398;
t267 = -t279 / 0.2e1;
t407 = (t334 * t626 + t234 / 0.2e1) * t395 + (t320 * t626 + t482 + t638) * t398;
t33 = t267 + t407 + t515;
t450 = -t33 * qJD(2) + t206 * qJD(3);
t307 = t363 * t395;
t448 = t520 + t535;
t445 = t619 / 0.2e1 - t385 / 0.2e1;
t444 = -t178 * qJ(6) / 0.2e1 + pkin(5) * t642;
t442 = t575 / 0.2e1 + t625 / 0.2e1;
t55 = (t336 / 0.2e1 + t445) * t576;
t433 = -t321 * t336 * qJD(2) + t55 * qJD(1);
t51 = t383 / 0.2e1 + t503 + t552;
t431 = -t51 * qJD(2) + t320 * t378;
t430 = -qJD(5) * t15 - t377 * t395;
t269 = t399 * t307;
t173 = t329 + (-t619 / 0.2e1 + t636) * t395;
t429 = -qJ(4) * t378 - t173 * qJD(2);
t266 = t279 / 0.2e1;
t174 = t266 + t457;
t428 = qJ(4) * t376 - t174 * qJD(2);
t426 = -qJD(3) * t284 + t399 * t493;
t198 = t396 * t493 + t543;
t370 = t390 * t393;
t311 = t392 * t393 - t370;
t221 = qJD(2) * t311 + t462;
t258 = qJD(3) * t349 + 0.2e1 * t468;
t425 = -qJD(3) * t312 + t395 * t497;
t96 = t398 * t504;
t420 = qJD(2) * (t246 * t396 + t393 * t507) - qJD(3) * t96 + qJD(5) * t64;
t419 = -qJD(5) * t311 + t396 * t462;
t23 = (-t334 / 0.2e1 + t442) * t285;
t405 = t194 * t479 + (t602 / 0.2e1 + t463) * t401 + t234 * t635 + t320 * t637;
t8 = t405 + t444;
t417 = -t23 * qJD(1) + t8 * qJD(2) + t334 * t542;
t416 = qJD(3) * t461 + t539;
t415 = -qJD(2) * t96 + t284 * t378 + t285 * t536;
t326 = t391 + t370;
t414 = -qJD(2) * t326 + t467 - t535;
t389 = qJ(4) * qJD(4);
t375 = pkin(8) * t379;
t369 = -t517 / 0.2e1;
t368 = t517 / 0.2e1;
t367 = t379 / 0.2e1;
t361 = t398 * t539;
t360 = t398 * t379;
t354 = t395 * t541;
t353 = t391 * t380;
t345 = t398 * t563;
t337 = t350 * qJD(3);
t325 = t363 * qJ(6);
t308 = t363 * t398;
t302 = t356 + t516 / 0.2e1;
t290 = t448 * t398;
t289 = t398 * t520 - t355;
t288 = t448 * t395;
t287 = t395 * t520 + t360;
t286 = -qJD(3) * t392 + t468;
t277 = t390 * t626 + t392 * t627 + t627;
t271 = t363 * t564;
t270 = (t502 + t376) * t396;
t268 = (t395 * t517 - t378) * t396;
t260 = t275 * qJD(4);
t257 = t682 * t493;
t249 = -t357 * t392 - t466;
t248 = -t357 * t390 + t466;
t244 = (t397 * t517 + t400 * t518) * t394;
t243 = (-t379 * t400 + t396 * t545) * t394;
t236 = -t395 * t535 + t547;
t235 = t360 - t547;
t228 = t398 * t269;
t220 = -qJD(3) * t309 - t398 * t497;
t216 = t356 * t392 + t525;
t213 = t356 * t390 - t525;
t191 = t194 * qJD(5);
t155 = t525 + (-t392 * t517 - t358) * t396;
t154 = -t525 + (-t390 * t517 + t358) * t396;
t129 = -t314 + t267 + t457;
t128 = qJ(4) * t484 + t265 + t315 + t329;
t66 = t410 + t446;
t61 = -t436 + t476;
t56 = (-t336 / 0.2e1 + t445) * t576;
t50 = t573 / 0.2e1 + t300 - t383 / 0.2e1 + t503;
t46 = t434 - t437;
t38 = t582 / 0.2e1 + t383 + t427 + t552;
t32 = t266 + t407 - t515;
t24 = (t442 + t635) * t285;
t9 = t10 * qJD(5);
t7 = t405 - t444;
t6 = t109 - t402 + t443;
t4 = t193 * t488 + t194 * t489 - t639 * t672 - t403 + t409;
t2 = t172 * t489 + t175 * t488 + t233 * t639 - t404 + t408;
t13 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t112 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t113 * qJD(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t677, 0, 0, 0, 0, 0, 0, 0, 0, 0, t677; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t394 * t545, -t493, 0, 0, 0, 0, 0, 0, 0, 0, -t244, t243, t257, t531 + (-pkin(2) * t578 + t551) * qJD(2), 0, 0, 0, 0, 0, 0, t257, t244, -t243, -t530 + (t321 * t578 + t551) * qJD(2) + t56 * qJD(3) + qJD(4) * t506, 0, 0, 0, 0, 0, 0, t66 * qJD(5) + t676, -t420, t646 (t193 * t245 + t194 * t246 + t340 * t504) * qJD(2) + t4 * qJD(3) + t9 + t690, 0, 0, 0, 0, 0, 0, -t67 * qJD(5) + t676, t646, t420 (t172 * t246 + t175 * t245 + t234 * t504) * qJD(2) + t2 * qJD(3) + t6 * qJD(5) + t67 * qJD(6) + t690; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t198, -t426, 0, 0, 0, 0, 0, 0, 0, 0, 0, t198, t426, t56 * qJD(2) + (-pkin(3) * t285 - t620) * qJD(3) + t285 * qJD(4), 0, 0, 0, 0, 0, 0, t678, -t415, t684, t4 * qJD(2) + (t554 - t620) * qJD(3) + t688, 0, 0, 0, 0, 0, 0, t678, t684, t415, t2 * qJD(2) + (-t284 * t320 + t554) * qJD(3) + t24 * qJD(5) - t285 * t532 + t688; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t198, 0, 0, 0, 0, 0, 0, 0, 0, 0, t687, 0, 0, 0, 0, 0, 0, 0, 0, 0, t687; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t66 + t683, -t645, 0, t617, 0, 0, 0, 0, 0, 0, t671, 0, t645, t6 * qJD(2) + t24 * qJD(3) + (pkin(5) * t440 + qJ(6) * t439) * qJD(5) - t440 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t671; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t531, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t55 + t530, 0, 0, 0, 0, 0, 0, -qJD(5) * t63, -t607, t656, -qJD(3) * t3 + t691 + t9, 0, 0, 0, 0, 0, 0, -qJD(5) * t68, t656, t607, -qJD(3) * t1 - qJD(5) * t5 + qJD(6) * t68 + t691; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t357, t337, 0, -t357, 0, 0, -pkin(2) * t518, -pkin(2) * t379, 0, 0, 0, 0, 0, t357, t337, -t357, 0, qJD(3) * t210 - t396 * t539, -qJD(3) * t209 + qJD(4) * t391 (qJD(3) * t336 - t541) * t321, t248, -t419, t220, t249, t425, t357, qJD(3) * t48 + qJD(5) * t127 + t353, -qJD(3) * t49 - qJD(5) * t126 + t501, -qJD(3) * t19 + t260, qJD(3) * t20 - qJD(4) * t72, t248, t220, t419, t357, -t425, t249, qJD(3) * t26 + qJD(5) * t52 + t393 * t495 + t353, -qJD(3) * t17 - qJD(5) * t18 - t396 * t490 + t260, qJD(3) * t25 + qJD(5) * t53 + qJD(6) * t326 - t501, qJD(3) * t11 - qJD(4) * t54 + qJD(5) * t12 + qJD(6) * t84; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t356, t521, t379, -t356, -t518, 0, -t375 - t513, t511 - t512, 0, 0, 0, -t379, t518, t356, t521, -t356, t416, t375 + t527, -t511 - t528, pkin(8) * t416 - t433, t154, -t647, t235, t155, t670, t302, t560 + (t345 + (-qJ(4) * t398 - t673) * t396) * qJD(3) + t361 + t128 * qJD(5), -t559 + (-t395 * t563 + (qJ(4) * t395 - t398 * t644) * t396) * qJD(3) - t395 * t539 + t129 * qJD(5), -qJD(3) * t454 - t662 (-qJ(4) * t672 + t401 * t454) * qJD(3) + t61 * qJD(4) + t458, t154, t235, t647, t302, -t670, t155, t589 + (t233 * t395 - t396 * t580 + t345) * qJD(3) + t361 + t38 * qJD(5) + t277 * qJD(6), -qJD(3) * t456 - t605 - t660, -t233 * t378 + t590 + t32 * qJD(5) + (-t320 * t518 + (qJD(3) * t401 + t469) * t399) * t395 (t233 * t320 + t401 * t456) * qJD(3) + t46 * qJD(4) + t7 * qJD(5) + t50 * qJD(6) + t460; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t379, -t356, t520, t375 - t494, 0, 0, 0, 0, 0, 0, t287, t289, t526, qJD(3) * t61 + t661, 0, 0, 0, 0, 0, 0, t287, t526, -t289, qJD(3) * t46 + t605 - t663; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t215, t221, -t271, t215, t269, t367, qJD(3) * t128 - t191 + t452, qJD(3) * t129 + t538 + t666, 0, t618, -t215, -t271, -t221, t367, -t269, t215, qJD(3) * t38 - t191 + t659, -t16 * qJD(3) + qJD(5) * t550 - t490 - t600, qJD(3) * t32 + t377 - t538 + t664, t7 * qJD(3) + t16 * qJD(4) + (-pkin(5) * t194 - qJ(6) * t193) * qJD(5) + t172 * qJD(6) + t459; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t277 + t327, -t271, -t414, qJD(3) * t50 + qJD(5) * t172 + t665; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t55, 0, 0, 0, 0, 0, 0, 0, 0, -t658, qJD(2) * t3 + t686, 0, 0, 0, 0, 0, 0, 0, -t658, 0, qJD(2) * t1 - qJD(5) * t23 + t686; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t356, -t521, 0, t356, 0, 0, t513, t512, 0, 0, 0, 0, 0, -t356, -t521, t356, 0, -t527, t528, t433, t213, 0.2e1 * t228, t236, t216, -t669, -t302, qJD(5) * t173 - t560, qJD(5) * t174 + t559, t662, qJD(4) * t62 - t458, t213, t236, -0.2e1 * t228, -t302, t669, t216, qJD(5) * t39 - qJD(6) * t276 - t589, t430 + t660, qJD(5) * t33 - t395 * t490 - t590, qJD(4) * t47 + qJD(5) * t8 + qJD(6) * t51 - t460; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t389, -t359, t522, 0, t359, 0, 0, qJ(4) * t534 + t380, -qJ(4) * t536 + t540, 0, t389, -t359, 0, -t522, 0, 0, t359, qJD(5) * t205 + t380 - t495, 0, -qJD(5) * t206 + qJD(6) * t392 - t540 (qJD(5) * t334 + t469) * t320; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t388, 0, 0, 0, 0, 0, 0, t376, t378, 0, t667, 0, 0, 0, 0, 0, 0, t376, 0, -t378, t668; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t225, t258, -t307, t225, -t308, t369, -t429 - t499, -t428 - t496, 0, 0, -t225, -t307, -t258, t369, t308, t225, -t451 - t499, -t681, -t450 + t496, t401 * t447 + t417; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t471, -t307, -t286, -t431 + t499; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t685, 0, 0, 0, 0, 0, 0, 0, 0, 0, t685; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t356, -t520, t494, 0, 0, 0, 0, 0, 0, -t288, -t290, -t526, -qJD(3) * t62 - t661, 0, 0, 0, 0, 0, 0, -t288, -t526, t290, -qJD(3) * t47 - t430 + t663; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3), -t388, 0, 0, 0, 0, 0, 0, -t376, -t378, 0, -t667, 0, 0, 0, 0, 0, 0, -t376, 0, t378, -t668; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t307, -t308, 0, 0, 0, 0, 0, 0, 0, 0, -t307, 0, t308, t681; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t307; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t63 * qJD(2), t557, 0, -t617, 0, 0, 0, 0, 0, 0, t555, 0, -t557, qJD(2) * t5 + qJD(3) * t23; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t215, -t221, t270, -t215, -t268, t367, -qJD(3) * t173 + t354 - t452, -qJD(3) * t174 + t500 - t666, 0, -t618, t215, t270, t221, t367, t268, -t215, -qJD(3) * t39 + t354 - t659, qJD(3) * t15 + t600, -qJD(3) * t33 + t377 - t500 - t664, qJ(6) * t377 - qJD(3) * t8 - qJD(4) * t15 - t459; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t225, -t258, t492, -t225, t491, t368, t429, t428, 0, 0, t225, t492, t258, t368, -t491, -t225, t451, t606, t450, -t417; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t492, t491, 0, 0, 0, 0, 0, 0, 0, 0, t492, 0, -t491, -t606; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(6), qJ(6) * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t363, t325; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t555; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t276 - t327, t270, t414, -qJ(6) * t535 - qJD(3) * t51 - t354 - t665; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t471, t492, t286, t431; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t492; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t363, -t325; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t13;
