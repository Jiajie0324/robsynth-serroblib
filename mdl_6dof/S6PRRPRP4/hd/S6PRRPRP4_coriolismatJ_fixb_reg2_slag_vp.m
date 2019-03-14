% Calculate inertial parameters regressor of coriolis matrix for
% S6PRRPRP4
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
% Datum: 2019-03-08 21:44
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PRRPRP4_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP4_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP4_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRRPRP4_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 21:44:05
% EndTime: 2019-03-08 21:44:19
% DurationCPUTime: 9.30s
% Computational Cost: add. (5615->530), mult. (12642->721), div. (0->0), fcn. (12316->8), ass. (0->422)
t432 = sin(qJ(3));
t427 = t432 ^ 2;
t435 = cos(qJ(3));
t429 = t435 ^ 2;
t675 = t427 + t429;
t661 = pkin(4) + pkin(8);
t437 = -pkin(3) - pkin(9);
t587 = t435 * t437;
t596 = t432 * qJ(4);
t321 = -pkin(2) - t596 + t587;
t431 = sin(qJ(5));
t434 = cos(qJ(5));
t674 = t661 * t432;
t226 = t321 * t431 - t434 * t674;
t227 = t434 * t321 + t431 * t674;
t93 = (t226 * t431 + t227 * t434) * t432;
t589 = t434 * t435;
t191 = -qJ(6) * t589 + t227;
t597 = t431 * t435;
t190 = -qJ(6) * t597 + t226;
t181 = t432 * pkin(5) - t190;
t626 = t181 * t431;
t70 = (-t191 * t434 + t626) * t432;
t673 = t181 + t190;
t414 = t431 * qJD(3);
t539 = t435 * qJD(2);
t515 = t434 * t539;
t338 = t414 + t515;
t422 = pkin(3) * t432;
t634 = qJ(4) * t435;
t363 = t422 - t634;
t328 = pkin(9) * t432 + t363;
t420 = t435 * pkin(8);
t421 = t435 * pkin(4);
t368 = t420 + t421;
t346 = t368 * t434;
t595 = t432 * qJ(6);
t644 = t435 * pkin(5);
t188 = t644 + t346 + (-t328 - t595) * t431;
t304 = t434 * t328;
t345 = t368 * t431;
t230 = t304 + t345;
t594 = t432 * t434;
t195 = qJ(6) * t594 + t230;
t490 = t420 / 0.2e1 + t421 / 0.2e1;
t350 = (-qJ(6) + t437) * t434;
t609 = t350 * t432;
t500 = t609 / 0.2e1;
t601 = t431 * qJ(6);
t349 = t431 * t437 - t601;
t611 = t349 * t432;
t501 = -t611 / 0.2e1;
t526 = t644 / 0.2e1;
t41 = (t500 - t195 / 0.2e1) * t431 + (t501 + t526 - t188 / 0.2e1) * t434 + t490;
t635 = cos(pkin(6));
t487 = t635 * t432;
t433 = sin(qJ(2));
t430 = sin(pkin(6));
t603 = t430 * t435;
t520 = t433 * t603;
t311 = t487 + t520;
t446 = t487 / 0.2e1 + t520 / 0.2e1;
t428 = t434 ^ 2;
t426 = t431 ^ 2;
t653 = -t426 / 0.2e1;
t489 = t653 - t428 / 0.2e1;
t145 = t311 * t489 + t446;
t550 = t145 * qJD(1);
t646 = t431 * pkin(5);
t402 = qJ(4) + t646;
t566 = qJD(3) * t402;
t672 = qJD(2) * t41 + t550 + t566;
t415 = t434 * qJD(3);
t670 = t431 * t539 - t415;
t424 = qJD(3) * qJ(4);
t622 = t230 * t431;
t599 = t431 * t328;
t229 = t346 - t599;
t623 = t229 * t434;
t461 = -t623 / 0.2e1 - t622 / 0.2e1;
t85 = t461 + t490;
t669 = qJD(2) * t85 + t424 + t550;
t436 = cos(qJ(2));
t588 = t434 * t436;
t492 = t588 / 0.2e1;
t401 = t635 * t435;
t604 = t430 * t433;
t521 = t432 * t604;
t310 = -t401 + t521;
t614 = t310 * t431;
t518 = t430 * t588;
t235 = t518 - t614;
t658 = -t235 / 0.2e1;
t123 = (t430 * t492 + t658 - t614 / 0.2e1) * t435;
t553 = t123 * qJD(1);
t524 = t661 * t435;
t598 = t431 * t432;
t67 = t227 * t435 - t368 * t598 + (-t431 * t524 + t230) * t432;
t668 = -t67 * qJD(2) - t553;
t309 = pkin(5) * t589 + t368;
t645 = t434 * pkin(5);
t308 = (-t645 - t661) * t432;
t618 = t308 * t431;
t51 = t195 * t432 - t309 * t598 + (t191 + t618) * t435;
t667 = -t51 * qJD(2) - t553;
t32 = -t229 * t597 + t230 * t589 - t93;
t591 = t433 * t434;
t593 = t432 * t436;
t274 = (t431 * t593 + t591) * t430;
t650 = -t432 / 0.2e1;
t503 = t235 * t650;
t602 = t430 * t436;
t519 = t431 * t602;
t613 = t310 * t434;
t234 = t519 + t613;
t504 = t234 * t650;
t592 = t433 * t431;
t273 = (t432 * t588 - t592) * t430;
t656 = t273 / 0.2e1;
t57 = (t503 + t656) * t434 + (t504 + t274 / 0.2e1) * t431;
t583 = t57 * qJD(1);
t666 = t32 * qJD(2) - t583;
t665 = -qJD(2) * t93 - t583;
t24 = -t188 * t597 + t195 * t589 + t70;
t664 = -t24 * qJD(2) + t583;
t663 = -qJD(2) * t70 + t583;
t662 = -t190 * t431 / 0.2e1 - t626 / 0.2e1;
t382 = t426 - t428;
t284 = qJD(3) * t382 + 0.2e1 * t431 * t515;
t660 = t188 / 0.2e1;
t659 = -t234 / 0.2e1;
t657 = t235 / 0.2e1;
t655 = t311 / 0.2e1;
t654 = -t349 / 0.2e1;
t652 = t428 / 0.2e1;
t651 = t431 / 0.2e1;
t649 = -t434 / 0.2e1;
t648 = t434 / 0.2e1;
t647 = t435 / 0.2e1;
t458 = t273 * t648 + t274 * t651;
t459 = t235 * t649 + t431 * t659;
t58 = t432 * t459 - t458;
t517 = t435 * t602;
t50 = t234 * t273 - t235 * t274 + t311 * t517;
t585 = t50 * qJD(1);
t643 = -t58 * qJD(4) + t585;
t642 = -t57 * qJD(4) - t585;
t144 = t311 * t652 + t426 * t655 + t446;
t620 = t235 * t431;
t621 = t234 * t434;
t47 = (-t310 - t620 + t621) * t311;
t586 = t47 * qJD(1);
t639 = t144 * qJD(4) + t586;
t638 = t145 * qJD(4) - t586;
t565 = qJD(4) * t432;
t445 = (-t592 / 0.2e1 + t432 * t492) * t430;
t496 = t597 / 0.2e1;
t478 = t311 * t496;
t451 = t503 + t478;
t86 = t445 + t451;
t579 = t86 * qJD(1);
t637 = t431 * t565 + t579;
t418 = qJD(4) * t434;
t497 = -t598 / 0.2e1;
t444 = (-t591 / 0.2e1 + t436 * t497) * t430;
t494 = -t589 / 0.2e1;
t452 = t311 * t494 + t504;
t87 = t444 - t452;
t578 = t87 * qJD(1);
t636 = t432 * t418 + t578;
t375 = pkin(5) * t497;
t16 = t375 + t662;
t633 = qJD(2) * t16;
t26 = t673 * t589;
t632 = qJD(2) * t26;
t374 = pkin(5) * t598 / 0.2e1;
t27 = t374 - t662;
t631 = qJD(2) * t27;
t630 = qJD(2) * t57;
t97 = -t191 * t432 + (-t309 * t435 - t429 * t645) * t431;
t627 = qJD(2) * t97;
t617 = t308 * t434;
t616 = t309 * t434;
t615 = t310 * qJ(4);
t610 = t349 * t435;
t608 = t350 * t435;
t607 = t402 * t431;
t42 = (t181 + t617) * t435 + (t188 - t616) * t432;
t606 = t42 * qJD(2);
t605 = t430 ^ 2 * t433;
t600 = t431 * t227;
t590 = t434 * t226;
t582 = t58 * qJD(2);
t66 = -t226 * t435 + (t229 + (-t524 - t368) * t434) * t432;
t581 = t66 * qJD(2);
t577 = t675 * pkin(8) * t602;
t498 = t602 / 0.2e1;
t122 = (t431 * t498 + t659 + t613 / 0.2e1) * t435;
t554 = t122 * qJD(1);
t564 = qJD(4) * t435;
t576 = t434 * t564 - t554;
t381 = t426 + t428;
t383 = t429 - t427;
t105 = -t426 * t429 * pkin(5) - t190 * t432 + t309 * t589;
t575 = qJD(2) * t105;
t153 = -t226 * t432 + t368 * t589;
t574 = qJD(2) * t153;
t154 = -t227 * t432 - t368 * t597;
t573 = qJD(2) * t154;
t340 = t383 * t431;
t572 = qJD(2) * t340;
t343 = t383 * t434;
t571 = qJD(2) * t343;
t570 = qJD(2) * t432;
t569 = qJD(2) * t433;
t568 = qJD(2) * t434;
t567 = qJD(3) * t311;
t417 = qJD(4) * t431;
t563 = qJD(5) * t191;
t562 = qJD(5) * t235;
t561 = qJD(5) * t349;
t560 = qJD(5) * t431;
t559 = qJD(5) * t432;
t558 = qJD(5) * t434;
t557 = qJD(5) * t437;
t556 = qJD(6) * t434;
t555 = qJD(6) * t435;
t137 = (-t605 + (t310 * t432 + t311 * t435) * t430) * t436;
t552 = t137 * qJD(1);
t522 = t430 * t593;
t138 = -t310 * t522 + (-t311 * t603 + t605) * t436;
t551 = t138 * qJD(1);
t476 = -pkin(3) * t435 - t596;
t351 = -pkin(2) + t476;
t239 = t351 * t435 + t363 * t432;
t549 = t239 * qJD(2);
t240 = -t351 * t432 + t363 * t435;
t548 = t240 * qJD(2);
t301 = t381 * t435 * t432;
t547 = t301 * qJD(2);
t488 = t652 + t653;
t325 = t488 * t435;
t546 = t325 * qJD(5);
t341 = t381 * t429;
t545 = t341 * qJD(2);
t358 = -0.1e1 / 0.2e1 + t489;
t544 = t358 * qJD(3);
t543 = t381 * qJD(3);
t542 = t383 * qJD(2);
t541 = t427 * qJD(2);
t540 = t432 * qJD(3);
t416 = t435 * qJD(3);
t538 = t435 * qJD(5);
t537 = pkin(4) / 0.2e1 + pkin(8) / 0.2e1;
t295 = -t599 / 0.2e1;
t536 = t295 + t346 / 0.2e1;
t296 = -t304 / 0.2e1;
t535 = t296 - t345 / 0.2e1;
t534 = pkin(5) * t597;
t532 = pkin(2) * t570;
t531 = pkin(2) * t539;
t530 = pkin(5) * t560;
t529 = pkin(8) * t540;
t528 = t645 / 0.2e1;
t527 = -t644 / 0.2e1;
t514 = t431 * t415;
t513 = t431 * t416;
t512 = t431 * t538;
t511 = t434 * t538;
t510 = t431 * t555;
t509 = t351 * t570;
t508 = qJD(2) * t602;
t390 = t432 * t416;
t389 = t432 * t539;
t396 = t434 * t416;
t394 = t431 * t558;
t507 = t432 * t556;
t502 = -t616 / 0.2e1;
t499 = -t602 / 0.2e1;
t495 = -t595 / 0.2e1;
t493 = t589 / 0.2e1;
t491 = t190 / 0.2e1 + t181 / 0.2e1;
t485 = t431 * t527;
t484 = qJD(5) + t570;
t481 = t431 * t396;
t480 = t429 * t394;
t477 = t435 * t498;
t19 = t181 * t188 + t191 * t195 + t308 * t309;
t438 = (t191 * t651 + t181 * t648 + t308 / 0.2e1) * t311 + t234 * t660 + t195 * t658 - t310 * t309 / 0.2e1;
t441 = -t273 * t350 / 0.2e1 + t274 * t654 + t435 * t402 * t499;
t2 = t438 + t441;
t475 = t2 * qJD(1) + t19 * qJD(2);
t25 = -t191 * t673 - t309 * t534;
t6 = -t491 * t235 + (t656 + t478) * pkin(5);
t474 = -qJD(1) * t6 + qJD(2) * t25;
t33 = -t226 * t229 + t227 * t230 - t368 * t674;
t440 = qJ(4) * t477 + t437 * t458;
t443 = t229 * t659 + t230 * t657 + t310 * t368 / 0.2e1;
t4 = (-t600 / 0.2e1 + t590 / 0.2e1 + t537 * t432) * t311 + t440 + t443;
t473 = -t4 * qJD(1) + t33 * qJD(2);
t71 = -t181 * t597 + t191 * t589;
t74 = (t498 + t459) * t435;
t472 = -qJD(1) * t74 - qJD(2) * t71;
t146 = t402 * t645;
t450 = t402 * t496 + t502;
t8 = t491 * t349 + (t660 + t450) * pkin(5);
t471 = -qJD(2) * t8 + qJD(3) * t146;
t468 = t622 + t623;
t231 = t349 * t431 + t350 * t434;
t303 = (t402 + t646) * t434;
t64 = t502 + (-t601 / 0.2e1 + t349 / 0.2e1) * t432 + (t607 / 0.2e1 + (0.1e1 - t488) * pkin(5)) * t435 + t536;
t467 = -qJD(2) * t64 + qJD(3) * t303;
t323 = t428 * pkin(5) - t607;
t457 = t309 * t651 + t500;
t68 = (t495 + (t646 + t402 / 0.2e1) * t435) * t434 + t457 + t535;
t466 = -qJD(2) * t68 + qJD(3) * t323;
t464 = -t541 - t559;
t463 = t401 / 0.2e1 - t521 / 0.2e1;
t462 = t634 / 0.2e1 - t422 / 0.2e1;
t460 = -t621 / 0.2e1 + t620 / 0.2e1;
t456 = t437 * t650 - t634 / 0.2e1;
t76 = (t363 / 0.2e1 + t462) * t602;
t455 = -t351 * t363 * qJD(2) + t76 * qJD(1);
t298 = t484 * t597;
t209 = (t328 / 0.2e1 + t456) * t431;
t454 = -qJ(4) * t415 - t209 * qJD(2);
t448 = t456 * t434;
t210 = t304 / 0.2e1 + t448;
t453 = qJ(4) * t414 - t210 * qJD(2);
t255 = qJD(2) * t325 + t514;
t449 = -qJD(3) * t310 + t435 * t508;
t233 = t432 * t508 + t567;
t244 = t429 * t431 * t568 - qJD(3) * t325;
t342 = t382 * t429;
t251 = -qJD(2) * t342 + 0.2e1 * t481;
t439 = (-t191 / 0.2e1 + t608 / 0.2e1) * t431 + (-t610 / 0.2e1 - t181 / 0.2e1) * t434;
t38 = (t528 + t537) * t432 + t439;
t72 = -t460 + t463;
t447 = -qJD(1) * t72 + qJD(2) * t38 - qJD(3) * t231;
t442 = qJD(3) * t476 + t564;
t425 = qJ(4) * qJD(4);
t411 = pkin(8) * t416;
t406 = -t539 / 0.2e1;
t405 = t539 / 0.2e1;
t404 = t416 / 0.2e1;
t393 = t432 * t568;
t391 = t427 * t418;
t388 = t431 * t570;
t386 = t427 * t417;
t365 = t383 * qJD(3);
t364 = t382 * qJD(5);
t357 = 0.1e1 / 0.2e1 + t489;
t337 = -t393 - t558;
t336 = -t388 - t560;
t329 = t389 + t538 / 0.2e1;
t322 = t670 * pkin(5);
t319 = t464 * t434;
t318 = t434 * t541 - t513;
t317 = t464 * t431;
t316 = t431 * t541 + t396;
t300 = t484 * t589;
t299 = t338 * t432;
t297 = t389 * t431 - t415 * t432;
t286 = t301 * qJD(4);
t283 = t675 * t508;
t276 = -t390 * t428 - t480;
t275 = -t390 * t426 + t480;
t272 = (t433 * t539 + t436 * t540) * t430;
t271 = (-t416 * t436 + t432 * t569) * t430;
t266 = -t432 * t558 + t571;
t265 = -t513 - t571;
t264 = -t431 * t559 + t572;
t263 = t396 - t572;
t253 = -qJD(3) * t343 + t432 * t512;
t250 = -qJD(3) * t340 - t432 * t511;
t249 = 0.2e1 * t434 * t298;
t246 = t389 * t428 + t546;
t243 = t389 * t426 - t546;
t238 = -qJD(5) * t342 - 0.2e1 * t432 * t481;
t197 = t546 + (-t428 * t539 - t514) * t432;
t196 = -t546 + (-t426 * t539 + t514) * t432;
t194 = -t284 * t432 + 0.2e1 * t435 * t394;
t158 = -t345 + t296 + t448;
t157 = t431 * t456 + t295 + t346;
t125 = t235 * t647 + t310 * t496 + t434 * t477;
t124 = t234 * t647 + t310 * t494 + t431 * t477;
t109 = t123 * qJD(2);
t107 = t122 * qJD(2);
t89 = t445 - t451;
t88 = t444 + t452;
t84 = -t461 + t490;
t80 = t87 * qJD(2);
t78 = t86 * qJD(2);
t77 = t363 * t499 + t462 * t602;
t75 = t234 * t496 + t235 * t493 + t477;
t73 = t460 + t463;
t69 = t402 * t494 + (t495 - t534) * t434 - t457 + t535;
t65 = t426 * t527 + t428 * t526 + t431 * t495 - t450 + t501 + t536 + t644;
t63 = qJD(2) * t125 - t310 * t415 - t311 * t560;
t62 = qJD(2) * t124 - t310 * t414 + t311 * t558;
t44 = qJD(2) * t89 + t311 * t415 + t562;
t43 = qJD(2) * t88 - qJD(5) * t234 - t311 * t414;
t40 = pkin(5) * t493 + t195 * t651 + t188 * t648 + (t349 * t649 + t350 * t651) * t432 + t490;
t39 = -pkin(5) * t594 / 0.2e1 + t439 + t661 * t650;
t31 = -qJD(3) * t123 - qJD(5) * t87;
t30 = -qJD(3) * t122 - qJD(5) * t86;
t28 = t374 + t662;
t23 = t311 * t645;
t22 = (-t274 * t432 - t429 * t519) * qJD(2) + t125 * qJD(3) + t88 * qJD(5);
t21 = (t273 * t432 + t429 * t518) * qJD(2) + t124 * qJD(3) + t89 * qJD(5);
t18 = qJD(3) * t57;
t17 = t375 - t662;
t15 = -t381 * t567 + t582;
t12 = qJD(3) * t144 - t582;
t11 = -qJD(3) * t145 + t630;
t10 = t58 * qJD(3) + (t273 * t431 - t274 * t434) * t539;
t9 = pkin(5) * t660 + t309 * t528 + t402 * t485 + t654 * t673;
t7 = pkin(5) * t656 + t311 * t485 + t657 * t673;
t5 = -t311 * t590 / 0.2e1 + t440 - t443 + (t600 - t674) * t655;
t3 = qJD(2) * t50 + qJD(3) * t47;
t1 = t438 - t441;
t13 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t137, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2) * t138, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t430 * t569, -t508, 0, 0, 0, 0, 0, 0, 0, 0, -t272, t271, t283, t552 + (-pkin(2) * t604 + t577) * qJD(2), 0, 0, 0, 0, 0, 0, t283, t272, -t271, -t551 + (t351 * t604 + t577) * qJD(2) + t77 * qJD(3) + qJD(4) * t522, 0, 0, 0, 0, 0, 0, t21, t22, t10 (-t226 * t273 + t227 * t274 + t368 * t517) * qJD(2) + t5 * qJD(3) + t643, 0, 0, 0, 0, 0, 0, t21, t22, t10 (t181 * t273 + t191 * t274 + t309 * t517) * qJD(2) + t1 * qJD(3) + t7 * qJD(5) + t75 * qJD(6) + t643; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t233, -t449, 0, 0, 0, 0, 0, 0, 0, 0, 0, t233, t449, t77 * qJD(2) + (-pkin(3) * t311 - t615) * qJD(3) + t311 * qJD(4), 0, 0, 0, 0, 0, 0, t62, t63, t15, t5 * qJD(2) + (t311 * t381 * t437 - t615) * qJD(3) + t639, 0, 0, 0, 0, 0, 0, t62, t63, t15, t1 * qJD(2) + (t231 * t311 - t310 * t402) * qJD(3) + t23 * qJD(5) + t73 * qJD(6) + t639; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t233, 0, 0, 0, 0, 0, 0, 0, 0, 0, t12, 0, 0, 0, 0, 0, 0, 0, 0, 0, t12; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, t43, 0, 0, 0, 0, 0, 0, 0, 0, t44, t43, 0, pkin(5) * t562 + qJD(2) * t7 + qJD(3) * t23; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t75 + qJD(3) * t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t552, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t76 + t551, 0, 0, 0, 0, 0, 0, t30, t31, t18, -qJD(3) * t4 + t642, 0, 0, 0, 0, 0, 0, t30, t31, t18, qJD(3) * t2 - qJD(5) * t6 - qJD(6) * t74 + t642; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t390, t365, 0, -t390, 0, 0, -pkin(2) * t540, -pkin(2) * t416, 0, 0, 0, 0, 0, t390, t365, -t390, 0, qJD(3) * t240 - t432 * t564, -qJD(3) * t239 + qJD(4) * t427 (qJD(3) * t363 - t565) * t351, t275, t238, t250, t276, t253, t390, qJD(3) * t66 + qJD(5) * t154 + t386, -qJD(3) * t67 - qJD(5) * t153 + t391, -qJD(3) * t32 + t286, qJD(3) * t33 - qJD(4) * t93, t275, t238, t250, t276, t253, t390, qJD(3) * t42 + qJD(5) * t97 + t432 * t510 + t386, -qJD(3) * t51 - qJD(5) * t105 + t435 * t507 + t391, -qJD(3) * t24 + qJD(5) * t26 + qJD(6) * t341 + t286, qJD(3) * t19 + qJD(4) * t70 + qJD(5) * t25 - qJD(6) * t71; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t389, t542, t416, -t389, -t540, 0, -t411 - t532, t529 - t531, 0, 0, 0, -t416, t540, t389, t542, -t389, t442, t411 + t548, -t529 - t549, pkin(8) * t442 - t455, t196, t194, t263, t197, t265, t329, t581 + (t434 * t587 + (-qJ(4) * t434 - t431 * t661) * t432) * qJD(3) + t157 * qJD(5) + t576 (-t431 * t587 + (qJ(4) * t431 - t434 * t661) * t432) * qJD(3) - t431 * t564 + t158 * qJD(5) + t668, -qJD(3) * t468 - t666 (-qJ(4) * t674 + t437 * t468) * qJD(3) + t84 * qJD(4) + t473, t196, t194, t263, t197, t265, t329, t606 + (-t402 * t594 + t608 + t618) * qJD(3) + t65 * qJD(5) - t507 + t576 (-t610 + t617) * qJD(3) + t69 * qJD(5) + (-t564 + (qJD(6) + t566) * t432) * t431 + t667 ((-t188 + t611) * t434 + (-t195 - t609) * t431) * qJD(3) + t17 * qJD(5) + t664 (t188 * t350 + t195 * t349 + t308 * t402) * qJD(3) + t40 * qJD(4) + t9 * qJD(5) + t39 * qJD(6) + t475; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t416, -t389, t541, t411 - t509, 0, 0, 0, 0, 0, 0, t316, t318, t547, qJD(3) * t84 + t665, 0, 0, 0, 0, 0, 0, t316, t318, t547, qJD(3) * t40 + qJD(5) * t28 - t663; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t244, t251, -t300, -t244, t298, t404, qJD(3) * t157 - qJD(5) * t227 + t573 - t579, qJD(3) * t158 + qJD(5) * t226 - t574 - t578, 0, 0, t244, t251, -t300, -t244, t298, t404, qJD(3) * t65 - t563 - t579 + t627, qJD(3) * t69 + qJD(5) * t190 - t575 - t578, pkin(5) * t511 + qJD(3) * t17 + t632, -pkin(5) * t563 + qJD(3) * t9 + qJD(4) * t28 + t474; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t297, t299, t545, qJD(3) * t39 + t472; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t76, 0, 0, 0, 0, 0, 0, t107, t109, -t630, qJD(2) * t4 + t638, 0, 0, 0, 0, 0, 0, t107, t109, -t630, -qJD(2) * t2 - qJD(6) * t72 + t638; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t389, -t542, 0, t389, 0, 0, t532, t531, 0, 0, 0, 0, 0, -t389, -t542, t389, 0, -t548, t549, t455, t243, t249, t264, t246, t266, -t329, qJD(5) * t209 + t554 - t581, qJD(5) * t210 - t668, t666, qJD(4) * t85 - t473, t243, t249, t264, t246, t266, -t329, -qJD(5) * t64 + t554 - t606, -qJD(5) * t68 - t667, -qJD(5) * t16 - t664, qJD(4) * t41 - qJD(5) * t8 + qJD(6) * t38 - t475; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t425, -t394, t364, 0, t394, 0, 0, qJ(4) * t558 + t417, -qJ(4) * t560 + t418, 0, t425, -t394, t364, 0, t394, 0, 0, qJD(5) * t303 + t417, qJD(5) * t323 + t418, qJD(6) * t381, qJD(4) * t402 + qJD(5) * t146 - qJD(6) * t231; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t424, 0, 0, 0, 0, 0, 0, t414, t415, 0, t669, 0, 0, 0, 0, 0, 0, t414, t415, 0, qJD(6) * t357 + t672; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t255, t284, t336, t255, t337, t406, -t431 * t557 - t454, -t434 * t557 - t453, 0, 0, -t255, t284, t336, t255, t337, t406, t467 - t561, -qJD(5) * t350 + t466, t530 - t633, -pkin(5) * t561 + t471; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t543, qJD(4) * t357 + t447; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t11, 0, 0, 0, 0, 0, 0, 0, 0, 0, t11; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t389, -t541, t509, 0, 0, 0, 0, 0, 0, t317, t319, -t547, -qJD(3) * t85 - t665, 0, 0, 0, 0, 0, 0, t317, t319, -t547, -qJD(3) * t41 - qJD(5) * t27 + t663; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3), -t424, 0, 0, 0, 0, 0, 0, -t414, -t415, 0, -t669, 0, 0, 0, 0, 0, 0, -t414, -t415, 0, qJD(6) * t358 - t672; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t336, t337, 0, 0, 0, 0, 0, 0, 0, 0, t336, t337, 0, -t530 - t631; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t544; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t78, t80, 0, 0, 0, 0, 0, 0, 0, 0, t78, t80, 0, qJD(2) * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t244, -t251, t299, t244, -t297, t404, -qJD(3) * t209 - t573 + t637, -qJD(3) * t210 + t574 + t636, 0, 0, -t244, -t251, t299, t244, -t297, t404, qJD(3) * t64 + t510 - t627 + t637, qJD(3) * t68 + t434 * t555 + t575 + t636, qJD(3) * t16 - t632, pkin(5) * t510 + qJD(3) * t8 + qJD(4) * t27 - t474; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t255, -t284, t388, -t255, t393, t405, t454, t453, 0, 0, t255, -t284, t388, -t255, t393, t405, -t467 - t556, qJD(6) * t431 - t466, t633, -pkin(5) * t556 - t471; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t388, t393, 0, 0, 0, 0, 0, 0, 0, 0, t388, t393, 0, t631; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t670, t338, 0, t322; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t74 + qJD(3) * t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t298, -t300, -t545, -pkin(5) * t512 - qJD(3) * t38 - t472; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t558, -t560, -t543, pkin(5) * t558 - qJD(4) * t358 - t447; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t544; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t670, -t338, 0, -t322; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t13;