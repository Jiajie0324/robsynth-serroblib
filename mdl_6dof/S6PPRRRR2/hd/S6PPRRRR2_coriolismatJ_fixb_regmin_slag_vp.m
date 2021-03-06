% Calculate minimal parameter regressor of coriolis matrix for
% S6PPRRRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d4,d5,d6,theta1,theta2]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x26]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 19:06
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PPRRRR2_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRRR2_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PPRRRR2_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PPRRRR2_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 19:05:27
% EndTime: 2019-03-08 19:05:46
% DurationCPUTime: 9.17s
% Computational Cost: add. (5787->495), mult. (16436->802), div. (0->0), fcn. (19171->14), ass. (0->413)
t547 = qJD(5) + qJD(6);
t395 = cos(qJ(4));
t645 = -t395 / 0.2e1;
t392 = sin(qJ(3));
t629 = sin(pkin(6));
t520 = sin(pkin(13)) * t629;
t643 = cos(qJ(3));
t388 = sin(pkin(7));
t495 = cos(pkin(13)) * t629;
t630 = cos(pkin(7));
t631 = cos(pkin(6));
t672 = t631 * t388 + t630 * t495;
t249 = t392 * t672 + t643 * t520;
t391 = sin(qJ(4));
t426 = -t388 * t495 + t630 * t631;
t421 = t249 * t391 - t395 * t426;
t680 = -t421 / 0.2e1;
t611 = t388 * t392;
t498 = t391 * t611 - t395 * t630;
t679 = -t498 / 0.2e1;
t390 = sin(qJ(5));
t393 = cos(qJ(6));
t585 = t393 * t390;
t389 = sin(qJ(6));
t394 = cos(qJ(5));
t601 = t389 * t394;
t492 = t585 + t601;
t678 = t492 * t391;
t656 = pkin(10) + pkin(11);
t353 = t656 * t390;
t354 = t656 * t394;
t280 = -t389 * t353 + t393 * t354;
t481 = t498 * t394;
t449 = t481 / 0.2e1;
t482 = t498 * t390;
t450 = t482 / 0.2e1;
t419 = t389 * t449 + t393 * t450;
t477 = t498 * t492;
t124 = -t477 / 0.2e1 + t419;
t417 = t421 * t394;
t410 = t417 / 0.2e1;
t418 = t421 * t390;
t412 = t418 / 0.2e1;
t398 = t389 * t410 + t393 * t412;
t413 = t421 * t492;
t49 = -t413 / 0.2e1 + t398;
t635 = t49 * qJD(1) + t124 * qJD(2);
t677 = -t280 * t547 - t635;
t493 = -t393 * t353 - t389 * t354;
t454 = t389 * t482;
t420 = -t454 / 0.2e1 + t393 * t449;
t584 = t393 * t394;
t602 = t389 * t390;
t334 = -t584 + t602;
t478 = t498 * t334;
t125 = t478 / 0.2e1 + t420;
t411 = -t418 / 0.2e1;
t399 = t389 * t411 + t393 * t410;
t414 = t421 * t334;
t50 = t414 / 0.2e1 + t399;
t634 = t50 * qJD(1) + t125 * qJD(2);
t676 = -t493 * t547 - t634;
t642 = pkin(5) * t390;
t539 = pkin(9) + t642;
t500 = t539 * t391;
t486 = -t500 / 0.2e1;
t641 = pkin(5) * t394;
t382 = -pkin(4) - t641;
t613 = t382 * t678;
t675 = t334 * t486 - t613 / 0.2e1;
t599 = t390 * t391;
t312 = t389 * t599 - t391 * t584;
t614 = t382 * t312;
t674 = -t492 * t486 - t614 / 0.2e1;
t644 = t395 / 0.2e1;
t673 = (t644 + t645) * t498;
t248 = t392 * t520 - t643 * t672;
t621 = t248 * t394;
t181 = t249 * t395 + t391 * t426;
t624 = t181 * t390;
t104 = -t621 + t624;
t622 = t248 * t390;
t623 = t181 * t394;
t105 = t622 + t623;
t17 = t393 * t104 + t389 * t105;
t671 = t17 * t645 + t678 * t680;
t18 = t389 * t104 - t393 * t105;
t670 = t18 * t645 + t312 * t680;
t538 = t388 * t643;
t512 = t394 * t538;
t320 = t391 * t630 + t395 * t611;
t600 = t390 * t320;
t264 = t512 + t600;
t513 = t390 * t538;
t583 = t394 * t320;
t265 = -t513 + t583;
t100 = t389 * t264 - t393 * t265;
t669 = t100 * t645 + t312 * t679;
t99 = t393 * t264 + t389 * t265;
t668 = t645 * t99 + t678 * t679;
t597 = t390 * t395;
t619 = t249 * t394;
t135 = t248 * t597 + t619;
t593 = t393 * t135;
t581 = t394 * t395;
t620 = t249 * t390;
t136 = -t248 * t581 + t620;
t609 = t389 * t136;
t471 = -t609 / 0.2e1 + t593 / 0.2e1;
t403 = t471 - t670;
t667 = qJD(3) * t403 + t49 * qJD(4);
t592 = t393 * t136;
t610 = t389 * t135;
t472 = -t610 / 0.2e1 - t592 / 0.2e1;
t402 = t472 - t671;
t666 = qJD(3) * t402 + t50 * qJD(4);
t537 = t395 * t643;
t594 = t392 * t394;
t299 = (-t390 * t537 + t594) * t388;
t587 = t393 * t299;
t598 = t390 * t392;
t300 = (t394 * t537 + t598) * t388;
t603 = t389 * t300;
t467 = -t603 / 0.2e1 + t587 / 0.2e1;
t405 = t467 - t669;
t665 = qJD(3) * t405 + t124 * qJD(4);
t586 = t393 * t300;
t604 = t389 * t299;
t468 = -t604 / 0.2e1 - t586 / 0.2e1;
t404 = t468 - t668;
t664 = qJD(3) * t404 + t125 * qJD(4);
t383 = t390 ^ 2;
t385 = t394 ^ 2;
t367 = t385 - t383;
t551 = t391 * qJD(3);
t536 = t394 * t551;
t663 = qJD(4) * t367 - 0.2e1 * t390 * t536;
t662 = qJD(1) * t402 + qJD(2) * t404;
t661 = qJD(1) * t403 + qJD(2) * t405;
t425 = t472 + t671;
t51 = -t414 / 0.2e1 + t399;
t660 = qJD(3) * t425 + t51 * qJD(4) + t17 * t547;
t424 = t471 + t670;
t52 = t413 / 0.2e1 + t398;
t659 = qJD(3) * t424 + t52 * qJD(4) + t18 * t547;
t126 = -t478 / 0.2e1 + t420;
t423 = t468 + t668;
t658 = qJD(3) * t423 + t126 * qJD(4) + t547 * t99;
t127 = t477 / 0.2e1 + t419;
t422 = t467 + t669;
t657 = qJD(3) * t422 + t127 * qJD(4) + t100 * t547;
t655 = t678 / 0.2e1;
t315 = t492 * t395;
t654 = t315 / 0.2e1;
t316 = t334 * t395;
t653 = -t316 / 0.2e1;
t652 = -t320 / 0.2e1;
t651 = t334 / 0.2e1;
t650 = -t492 / 0.2e1;
t649 = t390 / 0.2e1;
t648 = -t391 / 0.2e1;
t647 = t391 / 0.2e1;
t646 = t394 / 0.2e1;
t640 = t391 * pkin(4);
t639 = t391 * pkin(5);
t638 = t395 * pkin(10);
t637 = pkin(5) * qJD(5);
t636 = pkin(5) * qJD(6);
t138 = t248 * t391;
t140 = t248 * t395;
t618 = t493 * t395;
t617 = t280 * t395;
t616 = t312 * t391;
t615 = t678 * t391;
t384 = t391 ^ 2;
t612 = t384 * t390;
t355 = -t638 + t640;
t341 = t394 * t355;
t372 = pkin(9) * t599;
t252 = -pkin(11) * t581 + t341 + t372 + t639;
t608 = t389 * t252;
t499 = -pkin(4) * t395 - t391 * pkin(10);
t347 = -pkin(3) + t499;
t329 = t394 * t347;
t595 = t391 * t394;
t504 = -pkin(11) * t595 + t329;
t546 = pkin(9) * t597;
t266 = t504 - t546;
t607 = t389 * t266;
t544 = pkin(9) * t581;
t304 = t390 * t347 + t544;
t267 = -pkin(11) * t599 + t304;
t606 = t389 * t267;
t340 = t390 * t355;
t545 = pkin(9) * t595;
t270 = -pkin(11) * t597 + t340 - t545;
t605 = t389 * t270;
t591 = t393 * t252;
t590 = t393 * t266;
t589 = t393 * t267;
t588 = t393 * t270;
t582 = t394 * t384;
t245 = (-pkin(9) * t390 - pkin(5)) * t395 + t504;
t502 = pkin(5) * t644 - t245 / 0.2e1;
t483 = t266 / 0.2e1 + t502;
t69 = t483 * t389;
t578 = t69 * qJD(3);
t71 = t483 * t393;
t577 = t71 * qJD(3);
t103 = t312 * t492 + t334 * t678;
t574 = t547 * t103;
t158 = t312 * t651 - t492 * t655;
t573 = t547 * t158;
t386 = t395 ^ 2;
t366 = t384 - t386;
t572 = qJD(3) * t312;
t571 = qJD(4) * t181;
t570 = qJD(4) * t492;
t569 = qJD(4) * t382;
t568 = qJD(4) * t390;
t567 = qJD(4) * t394;
t566 = qJD(5) * t390;
t565 = qJD(5) * t394;
t564 = qJD(5) * t395;
t563 = qJD(6) * t382;
t134 = t312 * t315 + t316 * t678;
t558 = t134 * qJD(3);
t187 = -t315 * t395 + t615;
t557 = t187 * qJD(3);
t188 = -t316 * t395 + t616;
t556 = t188 * qJD(3);
t466 = -t601 / 0.2e1 - t585 / 0.2e1;
t212 = (t650 + t466) * t395;
t200 = t212 * qJD(3);
t465 = t584 / 0.2e1 - t602 / 0.2e1;
t213 = (-t334 / 0.2e1 + t465) * t395;
t201 = t213 * qJD(3);
t555 = t320 * qJD(4);
t338 = t366 * t390;
t554 = t338 * qJD(3);
t339 = t386 * t394 - t582;
t553 = t339 * qJD(3);
t552 = t366 * qJD(3);
t550 = t391 * qJD(4);
t549 = t395 * qJD(3);
t548 = t395 * qJD(4);
t543 = pkin(3) * t549;
t542 = pkin(3) * t551;
t541 = t642 / 0.2e1;
t540 = -t641 / 0.2e1;
t535 = t390 * t567;
t534 = t394 * t550;
t533 = t390 * t564;
t532 = t394 * t564;
t531 = t390 * t565;
t530 = t391 * t548;
t529 = t391 * t549;
t528 = -t138 / 0.2e1;
t527 = t140 / 0.2e1;
t526 = -t617 / 0.2e1;
t525 = -t605 / 0.2e1;
t524 = t599 / 0.2e1;
t523 = t595 / 0.2e1;
t522 = -t588 / 0.2e1;
t521 = qJD(4) * t643;
t518 = pkin(5) * t547;
t517 = t547 * t678;
t516 = t547 * t492;
t515 = -qJD(5) + t549;
t514 = t391 * t538;
t511 = t390 * t534;
t509 = t334 * t528;
t508 = -t248 * t678 / 0.2e1;
t507 = qJD(3) * t538;
t506 = -t538 / 0.2e1;
t505 = -t537 / 0.2e1;
t503 = t639 / 0.2e1 + t252 / 0.2e1;
t501 = t549 - qJD(5) / 0.2e1;
t497 = t622 / 0.2e1 - t105 / 0.2e1;
t496 = t621 / 0.2e1 + t104 / 0.2e1;
t494 = -qJD(6) + t515;
t491 = t514 / 0.2e1;
t490 = t394 * t506;
t202 = t334 * t642 + t382 * t492;
t427 = -t541 * t678 + t526;
t469 = t525 + t591 / 0.2e1;
t431 = t614 / 0.2e1 + t469;
t46 = (t393 * pkin(5) / 0.2e1 + t334 * t540 + t539 * t650) * t391 + t427 + t431;
t489 = -t46 * qJD(3) + t202 * qJD(4);
t203 = -t334 * t382 + t492 * t642;
t428 = t312 * t541 + t493 * t645;
t470 = -t608 / 0.2e1 + t522;
t430 = t613 / 0.2e1 + t470;
t45 = (-t389 * pkin(5) / 0.2e1 + t641 * t650 + t539 * t651) * t391 + t428 + t430;
t488 = -t45 * qJD(3) + t203 * qJD(4);
t487 = t515 * t391;
t182 = -t312 ^ 2 + t678 ^ 2;
t53 = qJD(3) * t182 + qJD(4) * t103;
t193 = t334 ^ 2 - t492 ^ 2;
t67 = qJD(3) * t103 + qJD(4) * t193;
t485 = t500 / 0.2e1;
t484 = t638 / 0.2e1 - t640 / 0.2e1;
t453 = t484 * t390;
t262 = t340 / 0.2e1 - t453;
t476 = pkin(4) * t567 - qJD(3) * t262;
t452 = t484 * t394;
t263 = -t341 / 0.2e1 + t452;
t475 = pkin(4) * t568 - qJD(3) * t263;
t474 = t334 * t491;
t473 = t506 * t678;
t64 = -t618 / 0.2e1 + t334 * t485 + t430;
t464 = qJD(3) * t64 + t334 * t569;
t63 = -t485 * t492 + t431 + t526;
t463 = qJD(3) * t63 - t492 * t569;
t462 = t394 * t487;
t86 = -qJD(4) * t158 - t572 * t678;
t106 = qJD(3) * t158 - t334 * t570;
t321 = (t383 / 0.2e1 - t385 / 0.2e1) * t391;
t461 = -qJD(3) * t321 + t535;
t456 = t390 * t506 - t265 / 0.2e1;
t455 = t490 + t264 / 0.2e1;
t447 = t498 * t648;
t446 = t498 * t646;
t444 = qJD(3) * t390 * t582 + qJD(4) * t321;
t337 = t367 * t384;
t443 = qJD(3) * t337 + 0.2e1 * t511;
t396 = t181 * t655 + t421 * t654 + (t389 * t417 + t393 * t418) * t645 + t17 * t648;
t1 = t509 - t396;
t400 = -t678 * t652 + (t389 * t481 + t393 * t482) * t645 + t99 * t648 + t498 * t654;
t23 = t474 - t400;
t152 = -t393 * t245 + t606;
t343 = t539 * t395;
t33 = (t591 - t605) * t395 + t152 * t391 - t343 * t678 - t315 * t500;
t441 = -t1 * qJD(1) - t23 * qJD(2) - t33 * qJD(3);
t397 = -t181 * t312 / 0.2e1 + t421 * t653 + (t389 * t418 - t393 * t417) * t644 + t18 * t647;
t2 = t508 - t397;
t401 = t312 * t652 + (-t393 * t481 + t454) * t644 + t100 * t647 + t498 * t653;
t24 = -t473 - t401;
t153 = t389 * t245 + t589;
t34 = (t588 + t608) * t395 - t343 * t312 + (-t316 * t539 - t153) * t391;
t440 = -t2 * qJD(1) - t24 * qJD(2) + t34 * qJD(3);
t171 = -t589 - t607;
t260 = t312 * t500;
t75 = -pkin(5) * t595 * t678 + t171 * t395 + t260;
t439 = qJD(3) * t75 + t661;
t90 = -t153 * t395 + t260;
t438 = qJD(3) * t90 + t661;
t89 = -t152 * t395 - t500 * t678;
t437 = -qJD(3) * t89 + t662;
t172 = t590 - t606;
t76 = t172 * t395 + (-t312 * t641 - t539 * t678) * t391;
t436 = -qJD(3) * t76 + t662;
t13 = (-t623 / 0.2e1 - t497) * t391;
t180 = t340 * t395 + (-t304 + t544) * t391;
t81 = (-t583 / 0.2e1 - t456) * t391;
t435 = -t13 * qJD(1) - t81 * qJD(2) + t180 * qJD(3);
t14 = (-t624 / 0.2e1 + t496) * t391;
t303 = -t329 + t546;
t179 = t303 * t391 + (-t372 + t341) * t395;
t82 = (-t600 / 0.2e1 + t455) * t391;
t434 = -t14 * qJD(1) - t82 * qJD(2) - t179 * qJD(3);
t429 = t611 / 0.2e1 + t447;
t108 = t394 * t429 + t395 * t456;
t408 = t421 * t648;
t406 = t249 / 0.2e1 + t408;
t19 = t394 * t406 + t395 * t497;
t247 = -pkin(9) * t582 - t304 * t395;
t433 = qJD(1) * t19 + qJD(2) * t108 + qJD(3) * t247;
t109 = -t390 * t429 + t395 * t455;
t20 = -t390 * t406 + t395 * t496;
t246 = -pkin(9) * t612 - t303 * t395;
t432 = qJD(1) * t20 + qJD(2) * t109 - qJD(3) * t246;
t409 = t421 * t649;
t407 = t421 * t646;
t377 = -t551 / 0.2e1;
t376 = t551 / 0.2e1;
t375 = t550 / 0.2e1;
t328 = t501 * t391;
t319 = t321 * qJD(5);
t311 = (-qJD(6) / 0.2e1 + t501) * t391;
t223 = t372 + t341 / 0.2e1 + t452;
t222 = t545 - t340 / 0.2e1 - t453;
t215 = t395 * t466 - t492 * t645;
t214 = t334 * t644 + t395 * t465;
t192 = t446 + t449;
t191 = t498 * t649 + t450;
t174 = t213 * qJD(4) - t549 * t678;
t173 = t212 * qJD(4) + t312 * t549;
t151 = -t516 - t200;
t150 = -t334 * t547 - t201;
t111 = t265 * t644 + t391 * t446 + (t390 * t505 + t594 / 0.2e1) * t388;
t110 = t264 * t645 + t390 * t447 + (t394 * t505 - t598 / 0.2e1) * t388;
t88 = t214 * qJD(4) + t494 * t678;
t87 = t215 * qJD(4) - t312 * t494;
t84 = t265 * t648 + t320 * t523 + t390 * t491 + t394 * t673;
t83 = t264 * t648 + t320 * t524 + t390 * t673 + t391 * t490;
t80 = t407 + t410;
t78 = t409 + t412;
t72 = t606 - t590 / 0.2e1 + t502 * t393;
t70 = -t589 - t607 / 0.2e1 + t502 * t389;
t66 = t617 / 0.2e1 + t469 + t674;
t65 = t618 / 0.2e1 + t470 + t675;
t48 = -t389 * t503 - t540 * t678 - t428 + t522 + t675;
t47 = pkin(5) * t334 * t523 + t393 * t503 - t427 + t525 + t674;
t26 = -t473 + t401;
t25 = t474 + t400;
t22 = t105 * t644 + t391 * t407 + t390 * t527 + t619 / 0.2e1;
t21 = t104 * t645 + t390 * t408 + t394 * t527 - t620 / 0.2e1;
t16 = t105 * t648 + t181 * t523 + t390 * t528 + t395 * t407 - t417 * t644;
t15 = t104 * t648 + t181 * t524 + t248 * t523 + (t409 + t411) * t395;
t4 = t508 + t397;
t3 = t509 + t396;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, -t249 * qJD(3), t248 * qJD(3), 0, 0, 0, 0, 0, t138 * qJD(4) - t249 * t549, qJD(4) * t140 + t249 * t551, 0, 0, 0, 0, 0 (-t135 * t395 - t248 * t612) * qJD(3) + t15 * qJD(4) + t22 * qJD(5) (t136 * t395 - t248 * t582) * qJD(3) + t16 * qJD(4) + t21 * qJD(5), 0, 0, 0, 0, 0 (-(t593 - t609) * t395 - t248 * t615) * qJD(3) + t3 * qJD(4) + t547 * t424 ((t592 + t610) * t395 + t248 * t616) * qJD(3) + t4 * qJD(4) + t547 * t425; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t138 - t571, t140 * qJD(3) + qJD(4) * t421, 0, 0, 0, 0, 0, qJD(3) * t15 + qJD(5) * t78 - t181 * t567, qJD(3) * t16 + qJD(5) * t80 + t181 * t568, 0, 0, 0, 0, 0, t3 * qJD(3) + t334 * t571 + t52 * t547, t4 * qJD(3) + t181 * t570 + t51 * t547; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t22 + qJD(4) * t78 - qJD(5) * t105, qJD(3) * t21 + qJD(4) * t80 + qJD(5) * t104, 0, 0, 0, 0, 0, t659, t660; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t659, t660; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, -qJD(3) * t611, -t507, 0, 0, 0, 0, 0 (-t391 * t521 - t392 * t549) * t388 (t392 * t551 - t395 * t521) * t388, 0, 0, 0, 0, 0 (-t299 * t395 + t384 * t513) * qJD(3) + t83 * qJD(4) + t111 * qJD(5) (t300 * t395 + t384 * t512) * qJD(3) + t84 * qJD(4) + t110 * qJD(5), 0, 0, 0, 0, 0 (-(t587 - t603) * t395 + t678 * t514) * qJD(3) + t25 * qJD(4) + t547 * t422 ((t586 + t604) * t395 - t312 * t514) * qJD(3) + t26 * qJD(4) + t547 * t423; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t391 * t507 - t555, qJD(4) * t498 - t395 * t507, 0, 0, 0, 0, 0, qJD(3) * t83 + qJD(5) * t191 - t394 * t555, qJD(3) * t84 + qJD(5) * t192 + t390 * t555, 0, 0, 0, 0, 0, t25 * qJD(3) + t127 * t547 + t334 * t555, t26 * qJD(3) + t126 * t547 + t492 * t555; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t111 + qJD(4) * t191 - qJD(5) * t265, qJD(3) * t110 + qJD(4) * t192 + qJD(5) * t264, 0, 0, 0, 0, 0, t657, t658; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t657, t658; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4) * t14 - qJD(5) * t19, -qJD(4) * t13 - qJD(5) * t20, 0, 0, 0, 0, 0, -qJD(4) * t1 - t403 * t547, -qJD(4) * t2 - t402 * t547; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4) * t82 - qJD(5) * t108, -qJD(4) * t81 - qJD(5) * t109, 0, 0, 0, 0, 0, -qJD(4) * t23 - t405 * t547, -qJD(4) * t24 - t404 * t547; 0, 0, 0, 0, 0, t530, -t366 * qJD(4), 0, 0, 0, -pkin(3) * t550, -pkin(3) * t548, -t384 * t531 + t385 * t530, -t337 * qJD(5) - 0.2e1 * t395 * t511, -t339 * qJD(4) + t391 * t533, -t338 * qJD(4) + t391 * t532, -t530, -qJD(4) * t179 - qJD(5) * t247, qJD(4) * t180 + qJD(5) * t246 (qJD(4) * t316 + t517) * t312, t134 * qJD(4) + t182 * t547, -t188 * qJD(4) + t395 * t517, -t312 * t395 * t547 - t187 * qJD(4), -t530, -qJD(4) * t33 - qJD(5) * t75 - qJD(6) * t90, qJD(4) * t34 + qJD(5) * t76 + qJD(6) * t89; 0, 0, 0, 0, 0, t529, -t552, t548, -t550, 0, -pkin(9) * t548 - t542, pkin(9) * t550 - t543, -t319 + (t385 * t551 + t535) * t395, -0.2e1 * t391 * t531 + t395 * t663, t390 * t550 - t553, t534 - t554, -t328 (t390 * t499 - t544) * qJD(4) + t223 * qJD(5) + t434 (t394 * t499 + t546) * qJD(4) + t222 * qJD(5) + t435 -(t570 - t572) * t316 + t573, t558 + (-t315 * t492 + t316 * t334) * qJD(4) + t574, t214 * t547 + t492 * t550 - t556, t215 * t547 - t334 * t550 - t557, -t311 (t315 * t382 + t334 * t343 + t391 * t493) * qJD(4) + t47 * qJD(5) + t66 * qJD(6) + t441 (-t280 * t391 - t316 * t382 + t343 * t492) * qJD(4) + t48 * qJD(5) + t65 * qJD(6) + t440; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t444, -t443, t390 * t487, t462, t375, qJD(4) * t223 - qJD(5) * t304 - t433, qJD(4) * t222 + qJD(5) * t303 - t432, -t86, t53, t88, t87, t375, qJD(4) * t47 + qJD(5) * t171 + qJD(6) * t70 - t439, qJD(4) * t48 - qJD(5) * t172 + qJD(6) * t72 - t436; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t86, t53, t88, t87, t375, qJD(4) * t66 + qJD(5) * t70 - qJD(6) * t153 - t438, qJD(4) * t65 + qJD(5) * t72 + qJD(6) * t152 - t437; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t14, qJD(3) * t13, 0, 0, 0, 0, 0, t1 * qJD(3) - t49 * t547, t2 * qJD(3) - t50 * t547; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t82, qJD(3) * t81, 0, 0, 0, 0, 0, t23 * qJD(3) - t124 * t547, t24 * qJD(3) - t125 * t547; 0, 0, 0, 0, 0, -t529, t552, 0, 0, 0, t542, t543, -t385 * t529 - t319, 0.2e1 * t390 * t462, -t532 + t553, t533 + t554, t328, qJD(5) * t263 - t434, qJD(5) * t262 - t435, -t316 * t572 + t573, -t558 + t574, -t213 * t547 + t556, -t212 * t547 + t557, t311, -qJD(5) * t46 - qJD(6) * t63 - t441, -qJD(5) * t45 - qJD(6) * t64 - t440; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t531, t367 * qJD(5), 0, 0, 0, -pkin(4) * t566, -pkin(4) * t565, -t334 * t516, t547 * t193, 0, 0, 0, qJD(5) * t202 + t492 * t563, qJD(5) * t203 - t334 * t563; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t461, t663, -t515 * t394, t515 * t390, t377, -pkin(10) * t565 - t475, pkin(10) * t566 - t476, t106, t67, t150, t151, t377, t489 + t677, t488 + t676; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t106, t67, t150, t151, t377, -t463 + t677, -t464 + t676; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t19, qJD(3) * t20, 0, 0, 0, 0, 0, t667, t666; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t108, qJD(3) * t109, 0, 0, 0, 0, 0, t665, t664; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t444, t443 (-t390 * t551 + t567) * t395 (-t536 - t568) * t395, t375, -qJD(4) * t263 + t433, -qJD(4) * t262 + t432, t86, -t53, t174, t173, t375, qJD(4) * t46 + qJD(6) * t69 + t439, qJD(4) * t45 + qJD(6) * t71 + t436; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t461, -t663, t394 * t549, -t390 * t549, t376, t475, t476, -t106, -t67, t201, t200, t376, -t489 + t635, -t488 + t634; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t389 * t636, -t393 * t636; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t389 * t518 + t578, -t393 * t518 + t577; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t667, t666; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t665, t664; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86, -t53, t174, t173, t375, qJD(4) * t63 - qJD(5) * t69 + t438, qJD(4) * t64 - qJD(5) * t71 + t437; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t106, -t67, t201, t200, t376, t463 + t635, t464 + t634; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t389 * t637 - t578, t393 * t637 - t577; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t5;
