% Calculate inertial parameters regressor of coriolis matrix for
% S6PRPRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,theta1,theta3]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 20:03
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PRPRRP2_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRP2_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRP2_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRRP2_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 20:03:13
% EndTime: 2019-03-08 20:03:26
% DurationCPUTime: 8.79s
% Computational Cost: add. (6756->521), mult. (17059->695), div. (0->0), fcn. (18259->10), ass. (0->399)
t413 = cos(qJ(5));
t407 = t413 ^ 2;
t414 = cos(qJ(4));
t399 = t407 * t414;
t410 = sin(qJ(5));
t405 = t410 ^ 2;
t582 = t405 * t414;
t681 = t399 + t582;
t557 = -t405 - t407;
t411 = sin(qJ(4));
t574 = t411 * t414;
t301 = (-0.1e1 - t557) * t574;
t409 = sin(pkin(11));
t412 = sin(qJ(2));
t618 = sin(pkin(6));
t619 = cos(pkin(11));
t479 = t619 * t618;
t630 = cos(qJ(2));
t487 = t618 * t630;
t316 = t409 * t487 + t412 * t479;
t620 = cos(pkin(6));
t257 = t316 * t411 - t414 * t620;
t597 = t257 * t411;
t494 = t412 * t618;
t315 = t409 * t494 - t479 * t630;
t588 = t315 * t410;
t258 = t316 * t414 + t411 * t620;
t595 = t258 * t413;
t162 = t588 + t595;
t604 = t162 * t413;
t587 = t315 * t413;
t596 = t258 * t410;
t161 = -t587 + t596;
t607 = t161 * t410;
t637 = -t407 / 0.2e1;
t644 = -t258 / 0.2e1;
t416 = (t604 / 0.2e1 + t644 + t607 / 0.2e1) * t414 + (t637 + 0.1e1 / 0.2e1 - t405 / 0.2e1) * t597;
t680 = qJD(1) * t416 + t301 * qJD(3);
t307 = t316 * t413;
t578 = t410 * t414;
t176 = -t315 * t578 - t307;
t569 = t413 * t414;
t586 = t316 * t410;
t177 = -t315 * t569 + t586;
t632 = t413 / 0.2e1;
t635 = t410 / 0.2e1;
t448 = t176 * t635 + t177 * t632;
t392 = -pkin(2) * t619 - pkin(3);
t625 = t411 * pkin(9);
t446 = t392 - t625;
t391 = pkin(2) * t409 + pkin(8);
t571 = t413 * t391;
t627 = t410 * pkin(4);
t229 = t410 * t446 + (-qJ(6) + t571 - t627) * t414;
t624 = t414 * pkin(4);
t430 = t446 - t624;
t321 = t413 * t430;
t231 = -t321 + (t391 * t410 + pkin(5)) * t414;
t573 = t413 * qJ(6);
t629 = pkin(5) * t410;
t365 = -t573 + t629;
t291 = (t365 + t391) * t414;
t435 = t229 * t632 - t291 / 0.2e1 + t231 * t635;
t576 = t411 * t391;
t357 = t410 * t576;
t623 = t414 * pkin(9);
t626 = t411 * pkin(4);
t367 = -t623 + t626;
t572 = t413 * t367;
t286 = t357 + t572;
t403 = t411 * pkin(5);
t259 = -t286 - t403;
t594 = t259 * t410;
t355 = t410 * t367;
t287 = -t411 * t571 + t355;
t402 = t411 * qJ(6);
t254 = t287 + t402;
t599 = t254 * t413;
t579 = t410 * t411;
t388 = pkin(5) * t579;
t290 = t388 + (t391 - t573) * t411;
t643 = t290 / 0.2e1;
t28 = t435 * t414 + (t599 / 0.2e1 + t643 + t594 / 0.2e1) * t411;
t679 = t28 * qJD(2) + t680;
t535 = t411 * qJD(4);
t512 = t413 * t535;
t408 = t414 ^ 2;
t406 = t411 ^ 2;
t580 = t410 * t406;
t353 = t408 * t410 - t580;
t540 = t353 * qJD(2);
t678 = t540 + t512;
t550 = qJD(5) * t414;
t521 = t410 * t550;
t677 = t540 - t521;
t592 = t287 * t411;
t593 = t286 * t411;
t568 = t414 * t391;
t524 = t413 * t568;
t252 = t410 * t430 + t524;
t600 = t252 * t414;
t525 = t410 * t568;
t251 = -t321 + t525;
t601 = t251 * t414;
t44 = (t592 / 0.2e1 + t600 / 0.2e1) * t413 + (-t593 / 0.2e1 + t601 / 0.2e1) * t410 + (t406 / 0.2e1 - t408 / 0.2e1) * t391;
t676 = -t44 * qJD(2) - t680;
t575 = t411 * t413;
t602 = t229 * t414;
t121 = t290 * t575 + t602;
t501 = t575 / 0.2e1;
t603 = t162 * t414;
t445 = t603 / 0.2e1 + t257 * t501;
t505 = -t578 / 0.2e1;
t54 = t315 * t505 - t307 / 0.2e1 + t445;
t565 = t54 * qJD(1);
t675 = t121 * qJD(2) + t565;
t101 = t287 * t414 + (-t252 + 0.2e1 * t524) * t411;
t650 = -t162 / 0.2e1;
t482 = t650 + t595 / 0.2e1;
t35 = (t588 / 0.2e1 + t482) * t411;
t584 = t35 * qJD(1);
t674 = t101 * qJD(2) + t584;
t182 = -t391 * t580 - t601;
t651 = -t161 / 0.2e1;
t483 = t651 - t587 / 0.2e1;
t52 = t483 * t414 + (-t597 / 0.2e1 + t316 / 0.2e1) * t410;
t566 = t52 * qJD(1);
t673 = -qJD(2) * t182 - t566;
t125 = t257 * t410;
t504 = t578 / 0.2e1;
t559 = t315 * t504 + t307 / 0.2e1;
t428 = t445 + t559;
t672 = qJD(2) * t428 + t125 * qJD(4) - t162 * qJD(5);
t478 = t413 * pkin(5) + t410 * qJ(6);
t336 = t478 * t411;
t92 = -t290 * t579 + t336 * t575 - t601;
t671 = t92 * qJD(2) + t566;
t464 = t290 * t414 + t291 * t411;
t61 = -t229 * t411 + t254 * t414 + t413 * t464;
t670 = -t61 * qJD(2) - t584;
t585 = t336 * t410;
t590 = t290 * t413;
t91 = t600 + (t585 + t590) * t411;
t669 = -qJD(2) * t91 - t565;
t606 = t161 * t414;
t649 = -t176 / 0.2e1;
t417 = (t606 / 0.2e1 - t177 / 0.2e1) * t413 + (-t603 / 0.2e1 + t649) * t410;
t667 = qJD(1) * t417;
t181 = t315 * t414;
t508 = t181 / 0.2e1;
t421 = (t508 + t448) * t411;
t666 = qJD(1) * t421;
t427 = (-t596 / 0.2e1 - t483) * t411;
t665 = qJD(1) * t427;
t664 = qJD(2) * t417;
t663 = qJD(2) * t427;
t662 = qJD(4) * t417;
t661 = qJD(4) * t427;
t532 = t414 * qJD(2);
t660 = 0.2e1 * t410 * t575 * (qJD(5) + t532) + (-t399 + t582) * qJD(4);
t636 = -t410 / 0.2e1;
t418 = (t161 * t632 + t162 * t636) * t414 + t448;
t555 = qJD(4) * t257;
t659 = qJD(2) * t418 + t557 * t555;
t506 = t579 / 0.2e1;
t634 = -t411 / 0.2e1;
t423 = t161 * t634 + t258 * t506 + t315 * t501 + (t504 + t505) * t257;
t553 = qJD(4) * t413;
t658 = qJD(2) * t423 + t125 * qJD(5) - t258 * t553;
t536 = t411 * qJD(2);
t657 = qJD(4) * t418 + (t176 * t413 - t177 * t410) * t536;
t437 = (t258 - t604 - t607) * t257;
t656 = qJD(1) * t437 + qJD(3) * t416;
t179 = t315 * t411;
t431 = t161 * t176 + t162 * t177 - t179 * t257;
t655 = qJD(1) * t431 + qJD(3) * t421;
t654 = qJD(2) * t421 + qJD(4) * t416;
t653 = qJD(2) * t431 + qJD(4) * t437;
t652 = qJD(4) * t423 + qJD(5) * t428 + (t176 * t414 - t315 * t580) * qJD(2);
t648 = t229 / 0.2e1;
t647 = t252 / 0.2e1;
t646 = -t254 / 0.2e1;
t645 = t257 / 0.2e1;
t642 = -t336 / 0.2e1;
t641 = -t357 / 0.2e1;
t640 = t365 / 0.2e1;
t639 = -t367 / 0.2e1;
t638 = t391 / 0.2e1;
t633 = t411 / 0.2e1;
t631 = -t414 / 0.2e1;
t497 = t251 / 0.2e1 - t231 / 0.2e1;
t498 = t648 - t252 / 0.2e1;
t422 = -t410 * t498 - t413 * t497;
t39 = t336 * t631 + t411 * t422;
t622 = t28 * qJD(4) + t39 * qJD(5);
t621 = t44 * qJD(4);
t605 = t162 * t251;
t87 = -t605 / 0.2e1;
t10 = t87 + t605 / 0.2e1;
t617 = qJD(1) * t10;
t614 = qJD(2) * t10;
t613 = qJD(2) * t35;
t612 = qJD(2) * t39;
t611 = qJD(2) * t52;
t610 = qJD(2) * t54;
t598 = t257 * t336;
t127 = t257 * t413;
t591 = t290 * t410;
t589 = t315 * t391;
t360 = -pkin(4) - t478;
t583 = t360 * t410;
t499 = qJ(6) * t631;
t41 = t252 * t636 + (t499 + t648) * t410 + (pkin(5) * t631 + t497) * t413;
t581 = t41 * qJD(2);
t577 = t411 * t360;
t570 = t413 * t406;
t45 = ((t229 - t252) * t413 + (t231 - t251) * t410) * t411;
t567 = t45 * qJD(2);
t57 = (-t258 * t414 + t316 - t597) * t315;
t564 = t57 * qJD(1);
t560 = t557 * pkin(9) * t257;
t558 = t681 * pkin(9);
t554 = qJD(4) * t410;
t552 = qJD(5) * t410;
t551 = qJD(5) * t413;
t549 = qJD(6) * t410;
t548 = qJD(6) * t414;
t545 = t251 * qJD(5);
t543 = t315 * qJD(2);
t495 = t405 / 0.2e1 + t637;
t341 = t495 * t411;
t542 = t341 * qJD(5);
t354 = t408 * t413 - t570;
t539 = t354 * qJD(2);
t377 = t407 - t405;
t538 = t377 * qJD(5);
t378 = t408 - t406;
t537 = t378 * qJD(2);
t534 = t411 * qJD(5);
t533 = t413 * qJD(6);
t531 = t414 * qJD(4);
t530 = t641 - t403;
t529 = pkin(9) * t552;
t528 = pkin(9) * t551;
t527 = t315 * pkin(4) / 0.2e1;
t526 = t623 / 0.2e1;
t523 = t392 * t532;
t522 = t413 * t536;
t520 = t413 * t550;
t519 = t410 * t533;
t518 = t392 * t536;
t382 = t410 * t551;
t517 = t411 * t549;
t381 = t410 * t553;
t516 = t410 * t532;
t515 = t410 * t548;
t514 = t411 * t531;
t513 = t411 * t532;
t510 = -t125 / 0.2e1;
t509 = -t127 / 0.2e1;
t507 = -t579 / 0.2e1;
t503 = t577 / 0.2e1;
t502 = -t575 / 0.2e1;
t500 = -t569 / 0.2e1;
t496 = t641 - t403 / 0.2e1;
t324 = (-0.1e1 / 0.2e1 + t495) * t411;
t493 = qJD(2) * t324 - t381;
t292 = qJD(2) * t341 - t381;
t363 = t410 * qJD(2) * t570;
t272 = qJD(4) * t341 + t363;
t386 = -qJD(5) + t532;
t491 = t410 * t522;
t490 = t406 * t382;
t489 = t410 * t512;
t485 = -t624 - t625;
t484 = 0.2e1 * t489;
t481 = t365 * t633 + t643;
t477 = -t360 * t414 + t625;
t46 = -t231 * t569 - t259 * t575 + (t254 * t411 + t602) * t410;
t474 = -t46 * qJD(2) + t667;
t60 = (t593 - t601) * t413 + (t592 + t600) * t410;
t473 = -t60 * qJD(2) + t667;
t62 = -t231 * t411 + t259 * t414 + t410 * t464;
t472 = t62 * qJD(2) - t665;
t467 = qJD(4) * t35 + qJD(5) * t52;
t466 = t594 + t599;
t465 = -t286 * t410 + t287 * t413;
t100 = t251 * t411 + (t286 - 0.2e1 * t357) * t414;
t462 = -t100 * qJD(2) - t665;
t183 = -t391 * t570 - t600;
t51 = -t445 + t559;
t461 = qJD(1) * t51 + qJD(2) * t183;
t267 = t360 * t413 + t365 * t410;
t343 = -t355 / 0.2e1;
t371 = pkin(9) * t504;
t79 = t371 - t585 / 0.2e1 - t590 / 0.2e1 - t402 + t343 + (t583 / 0.2e1 + (-t365 / 0.2e1 + t638) * t413) * t411;
t460 = -qJD(2) * t79 + qJD(4) * t267;
t268 = t365 * t413 - t583;
t454 = t503 + t526;
t442 = t642 + t454;
t450 = t481 * t410;
t81 = t450 + (t639 + t442) * t413 + t530;
t459 = -qJD(2) * t81 + qJD(4) * t268;
t458 = t386 * t411;
t457 = t526 - t626 / 0.2e1;
t456 = pkin(5) * t649 + t177 * qJ(6) / 0.2e1;
t455 = qJ(6) * t646 + t259 * pkin(5) / 0.2e1;
t453 = t573 / 0.2e1 - t629 / 0.2e1;
t342 = t355 / 0.2e1;
t372 = pkin(9) * t505;
t260 = pkin(4) * t506 + t342 + t372;
t452 = pkin(4) * t553 - qJD(2) * t260;
t261 = (t639 + t457) * t413;
t451 = pkin(4) * t554 - qJD(2) * t261;
t449 = t161 * t286 / 0.2e1 + t287 * t650;
t93 = t591 / 0.2e1 + (t639 + t454) * t413 + t496;
t447 = qJD(2) * t93 + t360 * t554;
t320 = t413 * t458;
t398 = t407 * t406;
t351 = t405 * t406 - t398;
t284 = -qJD(2) * t351 + t484;
t310 = -qJD(4) * t377 + 0.2e1 * t491;
t444 = t353 * qJD(4) + t411 * t520;
t443 = t448 * pkin(9);
t441 = t640 + t453;
t419 = t443 - t315 * t577 / 0.2e1;
t426 = t162 * t646 + t259 * t651 + t290 * t644;
t1 = t257 * t435 + t419 + t426;
t37 = t229 * t254 + t231 * t259 + t290 * t291;
t440 = -t1 * qJD(1) + t37 * qJD(2) + t28 * qJD(3);
t40 = -t229 * t251 + t231 * t252 + t290 * t336;
t5 = -t598 / 0.2e1 + t497 * t162 + t498 * t161 + t456;
t439 = -t5 * qJD(1) + t40 * qJD(2) + t39 * qJD(3);
t69 = t391 ^ 2 * t574 - t251 * t286 + t252 * t287;
t7 = t411 * t527 + t576 * t644 + t443 + (t252 * t632 + t251 * t635 - t568 / 0.2e1) * t257 + t449;
t438 = -t7 * qJD(1) + t69 * qJD(2) + t44 * qJD(3);
t34 = t315 * t507 + t411 * t482;
t53 = -t606 / 0.2e1 + t257 * t507 + t413 * t508 - t586 / 0.2e1;
t434 = qJD(2) * (t177 * t414 - t315 * t570) + qJD(4) * t34 + qJD(5) * t53;
t433 = qJD(2) * t53 + qJD(4) * t127 + qJD(5) * t161;
t432 = -t351 * qJD(5) + t414 * t484;
t429 = qJD(2) * t34 + qJD(5) * t127 + t258 * t554;
t425 = -qJD(5) * t478 + t533;
t362 = t408 + t398;
t424 = t362 * qJD(2) + t489 - t550;
t415 = t422 * pkin(9) + t290 * t640 + t336 * t360 / 0.2e1;
t12 = t415 + t455;
t19 = t441 * t257;
t255 = t441 * t414;
t420 = t360 * t365 * qJD(4) + t19 * qJD(1) + t12 * qJD(2) - t255 * qJD(3);
t396 = -t536 / 0.2e1;
t395 = t536 / 0.2e1;
t394 = t535 / 0.2e1;
t385 = t413 * t531;
t384 = t413 * t532;
t383 = t410 * t535;
t364 = t413 * t517;
t361 = t386 * qJ(6);
t350 = -t384 + t551;
t349 = t386 * t410;
t346 = (t532 - qJD(5) / 0.2e1) * t411;
t344 = t572 / 0.2e1;
t339 = t681 * qJD(4);
t334 = -t383 + t520;
t333 = t410 * t531 + t413 * t534;
t332 = -t512 - t521;
t331 = t410 * t534 - t385;
t330 = qJD(4) * t405 + t491;
t325 = t405 * t634 + t407 * t633 + t634;
t319 = (t522 + t554) * t414;
t318 = -t410 * t513 + t385;
t317 = t410 * t458;
t309 = t407 * t514 - t490;
t308 = t405 * t514 + t490;
t304 = t383 - t539;
t303 = -t520 + t539;
t302 = t410 * t320;
t285 = -t354 * qJD(4) + t411 * t521;
t280 = t301 * qJD(4);
t271 = -t407 * t513 - t542;
t270 = -t405 * t513 + t542;
t266 = t406 * t589;
t256 = t365 * t631 + t414 * t453;
t247 = t252 * qJD(5);
t218 = -t542 + (t407 * t536 + t381) * t414;
t217 = t542 + (t405 * t536 - t381) * t414;
t191 = t413 * t457 + t344 + t357;
t190 = t372 + t343 + (t627 / 0.2e1 + t571) * t411;
t94 = pkin(9) * t500 + t360 * t502 - t591 / 0.2e1 - t572 / 0.2e1 + t496;
t80 = t413 * t442 + t344 + t450 - t530;
t78 = t371 + t402 + t391 * t502 + t342 - t481 * t413 + (t503 + t642) * t410;
t42 = -t251 * t413 / 0.2e1 + t229 * t636 + t231 * t632 + pkin(5) * t500 + (t647 + t499) * t410;
t20 = (-t453 + t640) * t257;
t11 = t415 - t455;
t9 = t10 * qJD(5);
t8 = t252 * t509 + t251 * t510 + t568 * t645 + (t258 * t638 + t527) * t411 + t443 - t449;
t6 = t229 * t651 + t87 + t598 / 0.2e1 + t162 * t231 / 0.2e1 + t161 * t647 + t456;
t2 = t229 * t509 + t231 * t510 + t291 * t645 + t419 - t426;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t57, 0, 0, 0, 0, 0, 0, 0, 0, 0, t653, 0, 0, 0, 0, 0, 0, 0, 0, 0, t653; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2) * t494, -qJD(2) * t487, 0, 0, 0, 0, 0, 0, 0, 0, -t316 * qJD(2), t543, 0 (-t315 * t409 - t316 * t619) * qJD(2) * pkin(2), 0, 0, 0, 0, 0, 0, t179 * qJD(4) - t316 * t532, qJD(4) * t181 + t316 * t536 (-t406 - t408) * t543, t564 + (t316 * t392 - t408 * t589 - t266) * qJD(2), 0, 0, 0, 0, 0, 0, t652, t434, t657 (t176 * t251 + t177 * t252 - t266) * qJD(2) + t8 * qJD(4) + t9 + t655, 0, 0, 0, 0, 0, 0, t652, t657, -t434 (t176 * t231 + t177 * t229 - t179 * t290) * qJD(2) + t2 * qJD(4) + t6 * qJD(5) - t428 * qJD(6) + t655; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t654, 0, 0, 0, 0, 0, 0, 0, 0, 0, t654; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t179 - qJD(4) * t258, qJD(2) * t181 + t555, 0, 0, 0, 0, 0, 0, 0, 0, t658, t429, t659, t8 * qJD(2) + (-pkin(4) * t258 + t560) * qJD(4) + t656, 0, 0, 0, 0, 0, 0, t658, t659, -t429, t2 * qJD(2) + (t258 * t360 + t560) * qJD(4) + t20 * qJD(5) - t125 * qJD(6) + t656; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t672, t433, 0, t614, 0, 0, 0, 0, 0, 0, t672, 0, -t433, t6 * qJD(2) + t20 * qJD(4) + (-pkin(5) * t162 - qJ(6) * t161) * qJD(5) + t162 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t672; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t564, 0, 0, 0, 0, 0, 0, -qJD(5) * t51 - t661, t467, t662, -qJD(4) * t7 - t655 + t9, 0, 0, 0, 0, 0, 0, qJD(5) * t54 - t661, t662, -t467, -qJD(4) * t1 - qJD(5) * t5 - qJD(6) * t54 - t655; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t514, t378 * qJD(4), 0, -t514, 0, 0, t392 * t535, t392 * t531, 0, 0, t309, -t432, t285, t308, t444, -t514, -qJD(4) * t100 - qJD(5) * t183, qJD(4) * t101 + qJD(5) * t182, -qJD(4) * t60, qJD(4) * t69, t309, t285, t432, -t514, -t444, t308, qJD(4) * t62 + qJD(5) * t91 - t406 * t519, -t46 * qJD(4) - t45 * qJD(5) + t411 * t515, -qJD(4) * t61 - qJD(5) * t92 + qJD(6) * t362, qJD(4) * t37 + qJD(5) * t40 - qJD(6) * t121; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t666 + t621, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t666 + t622; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t513, t537, t531, -t513, -t535, 0, -t391 * t531 + t518, t391 * t535 + t523, 0, 0, t218, -t660, t304, t217, t678, -t346 (t410 * t485 - t524) * qJD(4) + t191 * qJD(5) + t462 (t413 * t485 + t525) * qJD(4) + t190 * qJD(5) + t674, qJD(4) * t465 + t473 (-pkin(4) * t568 + pkin(9) * t465) * qJD(4) + t438, t218, t304, t660, -t346, -t678, t217 (-t291 * t413 - t410 * t477) * qJD(4) + t80 * qJD(5) + t325 * qJD(6) + t472, qJD(4) * t466 + t42 * qJD(5) + t474 (-t291 * t410 + t413 * t477) * qJD(4) + t78 * qJD(5) + t364 + t670 (pkin(9) * t466 + t291 * t360) * qJD(4) + t11 * qJD(5) + t94 * qJD(6) + t440; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t272, -t284, t317, t272, t320, t394, qJD(4) * t191 - t247 - t461, qJD(4) * t190 + t545 - t673, 0, t617, -t272, t317, t284, t394, -t320, t272, qJD(4) * t80 - t247 - t669, -t567 + t42 * qJD(4) + (-t411 * t573 + t388) * qJD(5) - t517, t78 * qJD(4) - t545 - t548 - t671, t11 * qJD(4) + (-pkin(5) * t252 - qJ(6) * t251) * qJD(5) + t229 * qJD(6) + t439; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t325 - t363, t317, t424, qJD(4) * t94 + qJD(5) * t229 - t675; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t654, 0, 0, 0, 0, 0, 0, 0, 0, 0, t654; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t666 + t621, 0, 0, 0, 0, 0, 0, 0, 0, 0, t666 + t622; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t280, 0, 0, 0, 0, 0, 0, 0, 0, 0, t280; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t535, -t531, 0, 0, 0, 0, 0, 0, 0, 0, t332, -t334, t339 (t558 - t626) * qJD(4) - t676, 0, 0, 0, 0, 0, 0, t332, t339, t334 (t558 + t577) * qJD(4) + t256 * qJD(5) + t515 + t679; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t333, t331, 0, 0, 0, 0, 0, 0, 0, 0, -t333, 0, -t331, qJD(4) * t256 - qJD(5) * t336 + t411 * t533 + t612; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t333; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t663, -t613, -t664, qJD(2) * t7 - t656, 0, 0, 0, 0, 0, 0, t663, -t664, t613, qJD(2) * t1 + qJD(5) * t19 - t656; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t513, -t537, 0, t513, 0, 0, -t518, -t523, 0, 0, t271, 0.2e1 * t302, t303, t270, -t677, t346, qJD(5) * t261 - t462, qJD(5) * t260 - t674, -t473, -t438, t271, t303, -0.2e1 * t302, t346, t677, t270, qJD(5) * t81 - qJD(6) * t324 - t472, -t41 * qJD(5) - t414 * t533 - t474, qJD(5) * t79 + t364 - t670, qJD(5) * t12 - qJD(6) * t93 - t440; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t676, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(5) * t255 - t679; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t382, t538, 0, -t382, 0, 0, -pkin(4) * t552, -pkin(4) * t551, 0, 0, t382, 0, -t538, 0, 0, -t382, -qJD(5) * t268 + t519, 0, -qJD(5) * t267 + qJD(6) * t405 (qJD(5) * t365 - t549) * t360; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t292, -t310, t350, t292, t349, t396, -t451 - t528, -t452 + t529, 0, 0, -t292, t350, t310, t396, -t349, t292, -t459 - t528, t425 - t581, -t460 - t529, pkin(9) * t425 + t420; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t493, t350, t330, -t447 + t528; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t51, -t611, 0, -t614, 0, 0, 0, 0, 0, 0, -t610, 0, t611, qJD(2) * t5 - qJD(4) * t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t272, t284, t318, -t272, -t319, t394, -qJD(4) * t261 + t461, -qJD(4) * t260 + t673, 0, -t617, t272, t318, -t284, t394, t319, -t272, -qJD(4) * t81 + t669, qJD(4) * t41 + t567, -t79 * qJD(4) - t548 + t671, -qJ(6) * t548 - t12 * qJD(4) - t439; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t255 - t612; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t292, t310, t384, -t292, -t516, t395, t451, t452, 0, 0, t292, t384, -t310, t395, t516, -t292, t459, t581, t460, -t420; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(6), qJ(6) * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t386, -t361; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t610; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t324 + t363, t318, -t424, qJ(6) * t550 + t93 * qJD(4) + t675; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t493, t384, -t330, t447; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t386, t361; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t3;
