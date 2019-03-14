% Calculate minimal parameter regressor of coriolis matrix for
% S6RPRPRR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta4]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x31]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 04:10
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPRPRR10_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR10_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR10_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRR10_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:09:33
% EndTime: 2019-03-09 04:09:52
% DurationCPUTime: 12.34s
% Computational Cost: add. (7518->580), mult. (16556->770), div. (0->0), fcn. (18422->8), ass. (0->449)
t384 = cos(qJ(3));
t377 = sin(pkin(10));
t380 = sin(qJ(5));
t559 = t380 * t377;
t347 = t384 * t559;
t378 = cos(pkin(10));
t383 = cos(qJ(5));
t366 = t383 * t378;
t307 = t366 * t384 - t347;
t382 = cos(qJ(6));
t300 = t382 * t307;
t285 = -t300 / 0.2e1;
t379 = sin(qJ(6));
t552 = t383 * t377;
t558 = t380 * t378;
t331 = t552 + t558;
t545 = t384 * t331;
t566 = t379 * t545;
t457 = t285 + t566 / 0.2e1;
t329 = -t366 + t559;
t319 = t382 * t329;
t562 = t379 * t331;
t238 = t319 + t562;
t654 = t384 * t238;
t665 = -t654 / 0.2e1 + t457;
t553 = t382 * t331;
t563 = t379 * t329;
t456 = -t553 / 0.2e1 + t563 / 0.2e1;
t381 = sin(qJ(3));
t303 = t331 * t381;
t297 = t382 * t303;
t346 = t381 * t559;
t306 = t366 * t381 - t346;
t565 = t379 * t306;
t437 = t297 + t565;
t407 = t437 * t381;
t298 = t382 * t545;
t564 = t379 * t307;
t198 = t298 + t564;
t661 = t198 * t384;
t674 = -t407 / 0.2e1 - t661 / 0.2e1;
t663 = t456 + t674;
t675 = t663 * qJD(1);
t684 = qJD(3) * t665 + t675;
t664 = t654 / 0.2e1 + t457;
t683 = qJD(3) * t664 - t675;
t668 = qJD(5) + qJD(6);
t662 = t456 - t674;
t682 = qJD(2) * t662;
t681 = qJD(2) * t665;
t451 = -t298 / 0.2e1 - t564 / 0.2e1;
t435 = -t553 + t563;
t653 = t384 * t435;
t667 = -t653 / 0.2e1 + t451;
t680 = qJD(2) * t667;
t666 = t653 / 0.2e1 + t451;
t677 = qJD(3) * t666;
t676 = qJD(3) * t667;
t516 = qJD(4) * t198;
t673 = qJD(2) * t663 + t516;
t607 = pkin(8) + qJ(4);
t343 = t607 * t377;
t344 = t607 * t378;
t267 = -t343 * t380 + t344 * t383;
t207 = -pkin(9) * t329 + t267;
t266 = t383 * t343 + t344 * t380;
t423 = -pkin(9) * t331 - t266;
t94 = t382 * t207 + t379 * t423;
t672 = t668 * t94;
t440 = -t379 * t207 + t382 * t423;
t671 = t668 * t440;
t637 = t300 - t566;
t646 = t198 ^ 2 - t637 ^ 2;
t670 = qJD(1) * t646;
t645 = t238 ^ 2 - t435 ^ 2;
t669 = qJD(3) * t645;
t493 = t381 * qJD(1);
t660 = t198 * t493;
t525 = qJD(1) * t637;
t659 = t198 * t525;
t629 = t435 / 0.2e1;
t658 = t198 * t629;
t521 = qJD(3) * t435;
t657 = t238 * t521;
t385 = -pkin(1) - pkin(7);
t544 = t384 * t385;
t572 = t377 * t384;
t324 = pkin(4) * t572 - t544;
t247 = pkin(5) * t545 + t324;
t656 = t247 * t198;
t655 = t247 * t637;
t367 = -pkin(4) * t378 - pkin(3);
t301 = pkin(5) * t329 + t367;
t623 = -t301 / 0.2e1;
t652 = t623 * t637;
t179 = t637 * t493;
t535 = t668 * t238;
t651 = -t521 + t525;
t650 = qJD(4) * t238;
t649 = qJD(4) * t435;
t648 = qJD(5) * t198;
t647 = qJD(6) * t198;
t634 = t668 * t435;
t644 = -qJD(1) * t198 - qJD(3) * t238;
t643 = t198 / 0.2e1;
t642 = t367 / 0.2e1;
t277 = -t565 / 0.2e1;
t639 = t277 - t297 / 0.2e1;
t299 = t382 * t306;
t567 = t379 * t303;
t638 = -t299 + t567;
t374 = t377 ^ 2;
t375 = t378 ^ 2;
t355 = t375 + t374;
t624 = t299 / 0.2e1;
t636 = -t567 / 0.2e1 + t624;
t609 = t381 * pkin(5);
t610 = t381 * pkin(3);
t448 = -qJ(4) * t384 + t610;
t335 = qJ(2) + t448;
t322 = t378 * t335;
t465 = -t377 * t385 + pkin(4);
t234 = -t378 * t384 * pkin(8) + t381 * t465 + t322;
t372 = t381 * t385;
t348 = t378 * t372;
t272 = t377 * t335 + t348;
t256 = -pkin(8) * t572 + t272;
t128 = -t383 * t234 + t256 * t380;
t91 = -pkin(9) * t307 - t128;
t80 = t91 + t609;
t69 = t382 * t80;
t633 = -t69 / 0.2e1;
t632 = -t80 / 0.2e1;
t631 = t637 / 0.2e1;
t630 = -t238 / 0.2e1;
t628 = -t247 / 0.2e1;
t627 = t247 / 0.2e1;
t625 = -t299 / 0.2e1;
t469 = t300 / 0.2e1;
t622 = -t307 / 0.2e1;
t621 = -t329 / 0.2e1;
t620 = -t331 / 0.2e1;
t619 = t331 / 0.2e1;
t618 = t347 / 0.2e1;
t617 = t366 / 0.2e1;
t616 = t372 / 0.2e1;
t615 = -t381 / 0.2e1;
t614 = t381 / 0.2e1;
t613 = t384 / 0.2e1;
t612 = pkin(5) * t307;
t611 = pkin(5) * t331;
t608 = t384 * pkin(5);
t18 = -t198 * t630 + t238 * t643 + t435 * t631 + t629 * t637;
t23 = t198 * t238 + t435 * t637;
t606 = t18 * qJD(5) + t23 * qJD(6);
t41 = -t238 * t631 + t658;
t42 = t630 * t637 + t658;
t605 = t41 * qJD(5) + t42 * qJD(6);
t604 = pkin(5) * qJD(5);
t603 = pkin(5) * qJD(6);
t345 = pkin(3) * t384 + qJ(4) * t381;
t333 = t378 * t345;
t571 = t378 * t381;
t237 = pkin(8) * t571 + t384 * t465 + t333;
t230 = t383 * t237;
t349 = t378 * t544;
t296 = t377 * t345 + t349;
t573 = t377 * t381;
t261 = pkin(8) * t573 + t296;
t560 = t380 * t261;
t463 = t230 - t560;
t90 = pkin(9) * t306 + t463 + t608;
t602 = t379 * t90;
t601 = t379 * t91;
t129 = t234 * t380 + t256 * t383;
t92 = -pkin(9) * t545 + t129;
t600 = t379 * t92;
t229 = t380 * t237;
t248 = t383 * t261;
t534 = t248 + t229;
t95 = pkin(9) * t303 + t534;
t599 = t379 * t95;
t598 = t382 * t90;
t597 = t382 * t91;
t596 = t382 * t92;
t595 = t382 * t95;
t30 = -t596 - t601;
t15 = t198 * t612 + t30 * t381 + t655;
t594 = qJD(1) * t15;
t31 = t597 - t600;
t16 = t31 * t381 - t612 * t637 + t656;
t593 = qJD(1) * t16;
t26 = -t69 + t600;
t19 = -t26 * t381 + t656;
t592 = qJD(1) * t19;
t27 = t379 * t80 + t596;
t20 = -t27 * t381 + t655;
t591 = qJD(1) * t20;
t29 = (t437 / 0.2e1 + t639) * t384;
t590 = qJD(1) * t29;
t60 = -t128 * t381 + t324 * t545;
t589 = qJD(1) * t60;
t61 = -t129 * t381 + t307 * t324;
t588 = qJD(1) * t61;
t81 = (t638 / 0.2e1 + t636) * t384;
t587 = qJD(1) * t81;
t86 = -t661 + t407;
t586 = qJD(1) * t86;
t550 = t384 * t637;
t583 = t638 * t381;
t87 = t550 + t583;
t585 = qJD(1) * t87;
t582 = t238 * t381;
t323 = -pkin(4) * t573 + t372;
t24 = -t128 * t384 - t324 * t303 + t323 * t545 + t381 * t463;
t581 = t24 * qJD(1);
t580 = t435 * t381;
t25 = t129 * t384 + t324 * t306 - t323 * t307 + t381 * t534;
t579 = t25 * qJD(1);
t271 = -t372 * t377 + t322;
t578 = t271 * t384;
t577 = t272 * t384;
t576 = t303 * t381;
t575 = t545 * t384;
t574 = t306 * t381;
t38 = -t198 * t638 + t437 * t637;
t561 = t38 * qJD(1);
t557 = t381 * t384;
t546 = t384 * t307;
t394 = t637 * t613 - t583 / 0.2e1;
t450 = -t319 / 0.2e1 - t562 / 0.2e1;
t49 = t394 + t450;
t543 = t49 * qJD(1);
t390 = t550 / 0.2e1 + t638 * t615;
t50 = t390 + t450;
t542 = t50 * qJD(1);
t485 = t377 * t544;
t295 = t333 - t485;
t59 = -t271 * t571 - t272 * t573 + (t295 * t378 + t296 * t377) * t384;
t539 = t59 * qJD(1);
t404 = t435 * t615;
t97 = t404 + t639;
t538 = t97 * qJD(1);
t278 = t565 / 0.2e1;
t489 = t278 + t297 / 0.2e1;
t98 = t404 + t489;
t537 = t98 * qJD(1);
t99 = -t580 / 0.2e1 + t489;
t536 = t99 * qJD(1);
t533 = t567 / 0.2e1 + t625;
t532 = qJD(1) * qJ(2);
t472 = t238 * t614;
t110 = -t472 + t533;
t531 = qJD(1) * t110;
t111 = -t472 + t636;
t530 = qJD(1) * t111;
t157 = t271 * t378 + t272 * t377;
t149 = t157 * t384;
t529 = qJD(1) * t149;
t418 = -t574 / 0.2e1 - t546 / 0.2e1;
t449 = t617 - t559 / 0.2e1;
t152 = -t418 + t449;
t528 = qJD(1) * t152;
t417 = t558 / 0.2e1 + t552 / 0.2e1;
t419 = t576 / 0.2e1 + t575 / 0.2e1;
t153 = -t417 - t419;
t527 = qJD(1) * t153;
t526 = qJD(1) * t157;
t203 = -t575 + t576;
t524 = qJD(1) * t203;
t204 = t546 - t574;
t523 = qJD(1) * t204;
t522 = qJD(1) * t307;
t520 = qJD(3) * t301;
t519 = qJD(3) * t331;
t518 = qJD(3) * t367;
t517 = qJD(4) * t637;
t515 = qJD(4) * t545;
t514 = qJD(4) * t307;
t513 = qJD(5) * t637;
t512 = qJD(5) * t331;
t511 = qJD(5) * t381;
t509 = qJD(6) * t301;
t102 = t582 / 0.2e1 + t533;
t508 = t102 * qJD(1);
t127 = t303 * t307 + t306 * t545;
t507 = t127 * qJD(1);
t144 = t578 + (t295 + 0.2e1 * t485) * t381;
t506 = t144 * qJD(1);
t145 = t577 + (t296 - 0.2e1 * t349) * t381;
t505 = t145 * qJD(1);
t193 = t469 + t285;
t503 = t193 * qJD(1);
t221 = (t619 + t417) * t381;
t501 = t221 * qJD(1);
t403 = t619 - t417;
t222 = t403 * t381;
t500 = t222 * qJD(1);
t227 = -t346 / 0.2e1 + (t621 + t617) * t381;
t499 = t227 * qJD(1);
t468 = -t366 / 0.2e1;
t228 = t329 * t615 + t381 * t468 + t346 / 0.2e1;
t498 = t228 * qJD(1);
t376 = t384 ^ 2;
t327 = t355 * t376;
t497 = t327 * qJD(1);
t328 = t355 * t384;
t496 = t328 * qJD(1);
t320 = t329 * qJD(5);
t495 = t355 * qJD(3);
t362 = t381 ^ 2 - t376;
t494 = t362 * qJD(1);
t492 = t381 * qJD(3);
t491 = t384 * qJD(1);
t490 = t384 * qJD(3);
t488 = t612 / 0.2e1;
t487 = t611 / 0.2e1;
t486 = -t609 / 0.2e1;
t484 = -t599 / 0.2e1;
t483 = -t595 / 0.2e1;
t482 = qJ(2) * t493;
t481 = qJ(2) * t491;
t480 = t238 * t493;
t479 = t435 * t493;
t478 = t329 * t493;
t477 = t331 * t493;
t476 = t377 * t492;
t475 = t377 * t493;
t474 = t378 * t493;
t473 = t381 * t491;
t466 = -t229 / 0.2e1 - t248 / 0.2e1;
t464 = pkin(5) * t668;
t294 = t307 * t493;
t462 = qJD(3) * t221 + t294;
t461 = qJD(5) + t493;
t460 = -qJD(6) - t493;
t459 = qJD(4) * t384 - qJD(2);
t458 = qJD(4) + t518;
t455 = t486 + t91 / 0.2e1;
t454 = t608 / 0.2e1 + t90 / 0.2e1;
t453 = t493 + qJD(5) / 0.2e1;
t452 = t230 / 0.2e1 - t560 / 0.2e1;
t246 = -pkin(5) * t303 + t323;
t1 = (t598 - t599) * t381 - t26 * t384 + t246 * t198 - t247 * t437;
t447 = t1 * qJD(1) + t29 * qJD(2);
t2 = (t595 + t602) * t381 + t27 * t384 - t246 * t637 - t247 * t638;
t446 = -t2 * qJD(1) - t81 * qJD(2);
t58 = -t381 * t544 + (t296 * t614 + t577 / 0.2e1) * t378 + (t295 * t615 - t578 / 0.2e1) * t377;
t65 = -t385 ^ 2 * t557 + t271 * t295 + t272 * t296;
t445 = t65 * qJD(1) + t58 * qJD(2);
t444 = qJD(3) * t18 + t670;
t443 = qJD(1) * t18 + t669;
t442 = qJD(3) * t23 + t670;
t441 = qJD(1) * t23 + t669;
t438 = -t295 * t377 + t296 * t378;
t223 = t403 * t384;
t392 = t267 * t615 + t307 * t642 + t324 * t619;
t43 = -t392 + t452;
t434 = t43 * qJD(1) + t223 * qJD(2);
t224 = t618 + (t468 + t621) * t384;
t393 = t266 * t615 + t324 * t329 / 0.2e1 + t545 * t642;
t44 = t393 + t466;
t433 = t44 * qJD(1) + t224 * qJD(2);
t270 = (-0.1e1 + t355) * t557;
t432 = t58 * qJD(1) + t270 * qJD(2);
t156 = -t307 ^ 2 + t545 ^ 2;
t72 = -t331 * t307 + t329 * t545;
t431 = qJD(1) * t156 + qJD(3) * t72;
t208 = t329 ^ 2 - t331 ^ 2;
t430 = qJD(1) * t72 + qJD(3) * t208;
t138 = 0.2e1 * t469 - t566;
t428 = qJD(1) * t138 - t521;
t426 = -qJD(1) * t545 - qJD(3) * t329;
t425 = t519 + t522;
t424 = -t647 - t648;
t422 = -t602 / 0.2e1 + t483;
t421 = t484 + t598 / 0.2e1;
t420 = t271 * t377 / 0.2e1 - t272 * t378 / 0.2e1;
t416 = -qJD(3) * t42 + t659;
t415 = qJD(3) * t41 - t659;
t414 = -qJD(1) * t42 - t657;
t413 = qJD(1) * t41 + t657;
t412 = qJD(3) * t98 - qJD(6) * t193 + t179;
t143 = t307 * t621 - t545 * t619;
t411 = qJD(3) * t143 - t522 * t545;
t410 = -qJD(1) * t143 + t329 * t519;
t409 = qJD(3) * t222 + qJD(5) * t307 + t294;
t386 = t435 * t627 - t615 * t94 + t652;
t4 = (t198 * t620 + t238 * t622 + t382 * t613) * pkin(5) + t386 + t421;
t62 = -t238 * t611 + t301 * t435;
t406 = -t4 * qJD(1) - t62 * qJD(3) - t680;
t387 = -t198 * t623 - t238 * t628 + t440 * t614;
t3 = (-t379 * t384 / 0.2e1 + t637 * t620 - t435 * t622) * pkin(5) + t387 + t422;
t63 = t238 * t301 + t435 * t611;
t405 = -t3 * qJD(1) - t63 * qJD(3) - t681;
t11 = (t632 + t455) * t379;
t192 = t625 + t624;
t402 = t11 * qJD(1) + t192 * qJD(2);
t13 = t455 * t382 + t633;
t190 = t278 + t277;
t401 = t13 * qJD(1) + t190 * qJD(2);
t146 = t616 + t420;
t308 = (0.1e1 / 0.2e1 - t375 / 0.2e1 - t374 / 0.2e1) * t381;
t336 = t355 * qJ(4);
t400 = qJD(1) * t146 + qJD(2) * t308 - qJD(3) * t336;
t395 = -t435 * t628 + t614 * t94 + t652;
t7 = t395 + t421;
t399 = qJD(1) * t7 + t435 * t520 + t680;
t396 = t238 * t627 + t301 * t643 - t440 * t615;
t8 = t396 + t422;
t398 = qJD(1) * t8 + t238 * t520 + t681;
t397 = qJD(3) * t97 + qJD(6) * t138 + t179 + t513;
t391 = qJD(3) * t448 - qJD(4) * t381;
t371 = -t491 / 0.2e1;
t370 = t491 / 0.2e1;
t369 = t490 / 0.2e1;
t363 = t381 * t490;
t325 = t453 * t384;
t309 = (0.1e1 + t355) * t614;
t302 = (qJD(6) / 0.2e1 + t453) * t384;
t226 = -t545 / 0.2e1 - t417 * t384;
t225 = t329 * t613 + t384 * t468 + t618;
t155 = t418 + t449;
t154 = -t417 + t419;
t148 = -qJD(3) * t227 + t493 * t545;
t147 = t616 - t420;
t137 = 0.2e1 * t625 + t567;
t135 = 0.2e1 * t278 + t297;
t134 = t143 * qJD(5);
t112 = t580 / 0.2e1 + t489;
t109 = -t582 / 0.2e1 + t533;
t96 = t228 * qJD(3) - t461 * t545;
t73 = t81 * qJD(3);
t68 = t72 * qJD(5);
t57 = t58 * qJD(3);
t56 = -t390 + t450;
t53 = -t394 + t450;
t46 = t392 + t452;
t45 = -t393 + t466;
t36 = -qJD(3) * t111 + t660;
t28 = t29 * qJD(3);
t21 = t110 * qJD(3) - t198 * t461 - t647;
t14 = t382 * t486 + t600 + t633 - t597 / 0.2e1;
t12 = -t596 - t601 / 0.2e1 + (t486 + t632) * t379;
t10 = -t395 + t421;
t9 = -t396 + t422;
t6 = -t379 * t454 - t435 * t488 + t487 * t637 - t387 + t483;
t5 = t198 * t487 + t238 * t488 + t382 * t454 - t386 + t484;
t17 = [0, 0, 0, 0, qJD(2), qJ(2) * qJD(2), -t363, t362 * qJD(3), 0, 0, 0, qJ(2) * t490 + qJD(2) * t381, -qJ(2) * t492 + qJD(2) * t384, t144 * qJD(3) - t459 * t571, -t145 * qJD(3) + t459 * t573, -qJD(2) * t328 - qJD(3) * t59 + qJD(4) * t327, qJD(2) * t157 + qJD(3) * t65 - qJD(4) * t149 (-qJD(3) * t306 - qJD(5) * t545) * t307, qJD(3) * t127 + qJD(5) * t156, qJD(3) * t204 - t511 * t545, qJD(3) * t203 - t307 * t511, t363, t24 * qJD(3) + t61 * qJD(5) + (-qJD(2) * t329 - t514) * t381, -t25 * qJD(3) - t60 * qJD(5) + (-qJD(2) * t331 + t515) * t381 (qJD(3) * t638 + t424) * t637, qJD(3) * t38 + t646 * t668, t87 * qJD(3) + t381 * t424, t86 * qJD(3) + (-qJD(6) * t637 - t513) * t381, t363, t1 * qJD(3) + t15 * qJD(5) + t20 * qJD(6) + (-qJD(2) * t238 - t517) * t381, -t2 * qJD(3) - t16 * qJD(5) - t19 * qJD(6) + (qJD(2) * t435 + t516) * t381; 0, 0, 0, 0, qJD(1), t532, 0, 0, 0, 0, 0, t493, t491, t474, -t475, -t496, t57 + t526, 0, 0, 0, 0, 0, qJD(5) * t155 - t478, qJD(5) * t154 - t477, 0, 0, 0, 0, 0, qJD(5) * t53 + qJD(6) * t56 + t28 - t480, t662 * t668 + t479 - t73; 0, 0, 0, 0, 0, 0, -t473, t494, -t492, -t490, 0, -t385 * t492 + t481, -t385 * t490 - t482, -t348 * qJD(3) + t377 * t391 + t506, t378 * t391 + t385 * t476 - t505, qJD(3) * t438 - t539 (-pkin(3) * t372 + qJ(4) * t438) * qJD(3) + t147 * qJD(4) + t445, -t306 * t425 + t134, t507 + (t303 * t331 + t306 * t329) * qJD(3) + t68, qJD(5) * t228 + t331 * t490 + t523, -qJD(5) * t222 - t329 * t490 + t524, t325, t581 + (-t266 * t384 - t303 * t367 + t323 * t329) * qJD(3) - t221 * qJD(4) + t46 * qJD(5), -t579 + (-t267 * t384 - t306 * t367 + t323 * t331) * qJD(3) - t227 * qJD(4) + t45 * qJD(5), t638 * t651 + t605, t561 + (-t238 * t638 - t435 * t437) * qJD(3) + t606, qJD(5) * t110 + qJD(6) * t109 - t435 * t490 + t585, -qJD(5) * t97 + qJD(6) * t112 - t238 * t490 + t586, t302 (t238 * t246 - t301 * t437 + t384 * t440) * qJD(3) - t98 * qJD(4) + t5 * qJD(5) + t10 * qJD(6) + t447 (-t246 * t435 + t301 * t638 - t384 * t94) * qJD(3) - t111 * qJD(4) + t6 * qJD(5) + t9 * qJD(6) + t446; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (-qJD(3) * t377 - t378 * t491) * t381 (-qJD(3) * t378 + t377 * t491) * t381, t497, qJD(3) * t147 - t529, 0, 0, 0, 0, 0, -t462, t148, 0, 0, 0, 0, 0, -t412, t36; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t411, t431, t96, -t409, t369, qJD(2) * t155 + qJD(3) * t46 - qJD(5) * t129 + t588, qJD(2) * t154 + qJD(3) * t45 + qJD(5) * t128 - t589, t415, t444, t21, -t397, t369, qJD(2) * t53 + qJD(3) * t5 + qJD(5) * t30 + qJD(6) * t12 + t594, qJD(3) * t6 - qJD(5) * t31 + qJD(6) * t14 - t593 + t682; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t416, t442, t109 * qJD(3) + t198 * t460 - t648, t112 * qJD(3) - t138 * qJD(5) + t460 * t637, t369, qJD(2) * t56 + qJD(3) * t10 + qJD(4) * t193 + qJD(5) * t12 - qJD(6) * t27 + t591, qJD(3) * t9 + qJD(5) * t14 + qJD(6) * t26 - t592 + t682; 0, 0, 0, 0, -qJD(1), -t532, 0, 0, 0, 0, 0, -t493, -t491, -t474, t475, t496, t57 - t526, 0, 0, 0, 0, 0, -qJD(5) * t152 + t478, -qJD(5) * t153 + t477, 0, 0, 0, 0, 0, -qJD(5) * t49 - qJD(6) * t50 + t28 + t480, -t663 * t668 - t479 - t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t270 * qJD(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t492, -t490, -t378 * t492, t476, t328 * qJD(3) (qJ(4) * t328 - t610) * qJD(3) + t309 * qJD(4) + t432, 0, 0, 0, 0, 0, qJD(5) * t226 + t329 * t492, qJD(5) * t225 + t331 * t492, 0, 0, 0, 0, 0, t238 * t492 + t666 * t668 + t590, -t435 * t492 + t664 * t668 - t587; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t309 * qJD(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t226 - qJD(5) * t306 - t528, qJD(3) * t225 + qJD(5) * t303 - t527, 0, 0, 0, 0, 0, qJD(5) * t638 + t137 * qJD(6) - t543 + t677, qJD(5) * t437 + t135 * qJD(6) + t683; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t137 * qJD(5) + qJD(6) * t638 - t542 + t677, t135 * qJD(5) + qJD(6) * t437 + t683; 0, 0, 0, 0, 0, 0, t473, -t494, 0, 0, 0, -t481, t482, -t506, t505, t539, -qJD(4) * t146 - t445, t306 * t522 + t134, t68 - t507, qJD(5) * t227 - t523, -qJD(5) * t221 - t524, -t325, -qJD(4) * t222 - qJD(5) * t43 - t581, -qJD(4) * t228 - qJD(5) * t44 + t579, -t525 * t638 + t605, -t561 + t606, qJD(5) * t111 - qJD(6) * t102 - t585, -qJD(5) * t98 - qJD(6) * t99 - t586, -t302, -qJD(4) * t97 - qJD(5) * t4 - qJD(6) * t7 - t447, -qJD(4) * t110 - qJD(5) * t3 - qJD(6) * t8 - t446; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4) * t308 - t432, 0, 0, 0, 0, 0, -t223 * qJD(5), -t224 * qJD(5), 0, 0, 0, 0, 0, -t667 * t668 - t590, -t665 * t668 + t587; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t355 * qJD(4), t336 * qJD(4), -t331 * t320, t208 * qJD(5), 0, 0, 0, t367 * t512, -t367 * t320, t535 * t435, t668 * t645, 0, 0, 0, -qJD(5) * t62 - t435 * t509, -qJD(5) * t63 - t238 * t509; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t495, -t400, 0, 0, 0, 0, 0, -t500, -t498, 0, 0, 0, 0, 0, -t538, -t531; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t410, t430, -t320 + t499, -t501 - t512, t371, -qJD(5) * t267 + t331 * t518 - t434, qJD(5) * t266 - t329 * t518 - t433, t413, t443, t530 - t535, -t537 + t634, t371, t406 - t672, t405 - t671; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t414, t441, -t508 - t535, -t536 + t634, t371, -t399 - t672, -t398 - t671; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t378 * t473, -t377 * t473, -t497, qJD(3) * t146 + t529, 0, 0, 0, 0, 0, t409, t96, 0, 0, 0, 0, 0, t397, t21; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t308 * qJD(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t495, t400, 0, 0, 0, 0, 0, t500 + t512, -t320 + t498, 0, 0, 0, 0, 0, t538 - t634, t531 - t535; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t425, t426, 0, 0, 0, 0, 0, t651, t644; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t428, t644; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t411, -t431, t148, t462, t369, qJD(2) * t152 + qJD(3) * t43 - t514 - t588, qJD(2) * t153 + qJD(3) * t44 + t515 + t589, -t415, -t444, t36, t412, t369, qJD(2) * t49 + qJD(3) * t4 + qJD(6) * t11 - t517 - t594, qJD(3) * t3 + qJD(6) * t13 + t593 + t673; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t223 + t528, qJD(3) * t224 + t527, 0, 0, 0, 0, 0, qJD(6) * t192 + t543 + t676, qJD(6) * t190 + t684; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t410, -t430, -t499, t501, t370, -t331 * t458 + t434, t329 * t458 + t433, -t413, -t443, -t530, t537, t370, -t406 + t649, -t405 + t650; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t425, -t426, 0, 0, 0, 0, 0, -t651, -t644; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t379 * t603, -t382 * t603; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t503, 0, -t379 * t464 + t402, -t382 * t464 + t401; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t416, -t442, qJD(3) * t102 + t660, qJD(3) * t99 + qJD(5) * t193 + t179, t369, qJD(2) * t50 + qJD(3) * t7 - qJD(4) * t138 - qJD(5) * t11 - t591, qJD(3) * t8 - qJD(5) * t13 + t592 + t673; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(5) * t192 + t542 + t676, -qJD(5) * t190 + t684; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t414, -t441, t508, t536, t370, t399 + t649, t398 + t650; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t428, -t644; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t503, 0, t379 * t604 - t402, t382 * t604 - t401; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t17;