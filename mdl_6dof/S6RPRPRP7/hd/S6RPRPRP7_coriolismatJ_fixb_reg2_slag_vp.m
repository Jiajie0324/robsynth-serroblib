% Calculate inertial parameters regressor of coriolis matrix for
% S6RPRPRP7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta4]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:23
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPRPRP7_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP7_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP7_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRPRP7_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:22:53
% EndTime: 2019-03-09 03:23:06
% DurationCPUTime: 8.89s
% Computational Cost: add. (9723->493), mult. (17163->610), div. (0->0), fcn. (18467->6), ass. (0->399)
t412 = sin(qJ(3));
t415 = -pkin(1) - pkin(7);
t535 = -qJ(4) + t415;
t382 = t535 * t412;
t414 = cos(qJ(3));
t383 = t535 * t414;
t410 = cos(pkin(9));
t592 = sin(pkin(9));
t293 = t382 * t592 - t410 * t383;
t413 = cos(qJ(5));
t628 = t293 * t413;
t631 = t628 / 0.2e1;
t411 = sin(qJ(5));
t629 = t293 * t411;
t630 = t629 / 0.2e1;
t373 = t410 * t382;
t459 = t592 * t383;
t624 = t459 + t373;
t553 = t624 * t411;
t552 = t624 * t413;
t395 = t592 * t412;
t540 = t410 * t414;
t380 = -t395 + t540;
t258 = t413 * t380;
t483 = t411 * t258;
t457 = 0.2e1 * t483;
t458 = t592 * t414;
t541 = t410 * t412;
t378 = t458 + t541;
t398 = pkin(3) * t412 + qJ(2);
t424 = pkin(4) * t378 - pkin(8) * t380 + t398;
t152 = -t413 * t424 + t553;
t123 = qJ(6) * t258 + t152;
t609 = t378 * pkin(5);
t92 = -t123 + t609;
t627 = t123 + t92;
t604 = qJD(3) * pkin(3);
t626 = (-t378 * t410 + t380 * t592) * t604;
t496 = t380 * qJD(1);
t355 = t413 * t496;
t519 = qJD(3) * t411;
t320 = t355 + t519;
t375 = t378 ^ 2;
t376 = t380 ^ 2;
t625 = -t376 - t375;
t486 = t376 - t375;
t453 = t375 / 0.2e1 + t376 / 0.2e1;
t606 = t414 * pkin(3);
t263 = pkin(4) * t380 + pkin(8) * t378 + t606;
t220 = t411 * t263;
t155 = -t628 + t220;
t568 = t155 * t413;
t221 = t413 * t263;
t154 = t221 + t629;
t571 = t154 * t411;
t153 = t411 * t424 + t552;
t572 = t153 * t413;
t573 = t152 * t411;
t618 = -t624 / 0.2e1;
t619 = t293 / 0.2e1;
t12 = (t572 / 0.2e1 + t573 / 0.2e1 + t618) * t380 + (t568 / 0.2e1 - t571 / 0.2e1 + t619) * t378;
t408 = t411 ^ 2;
t409 = t413 ^ 2;
t390 = t408 + t409;
t134 = (-0.1e1 + t390) * t380 * t378;
t510 = t134 * qJD(2);
t623 = -t12 * qJD(1) - t510;
t254 = t411 * t380;
t124 = -qJ(6) * t254 + t153;
t577 = t124 * t413;
t112 = t577 / 0.2e1;
t100 = pkin(5) * t254;
t193 = t293 + t100;
t251 = t411 * t378;
t194 = -pkin(5) * t251 + t624;
t129 = qJ(6) * t251 + t155;
t575 = t129 * t413;
t256 = t413 * t378;
t608 = t380 * pkin(5);
t97 = qJ(6) * t256 + t154 + t608;
t597 = t97 * t411;
t75 = t92 * t254;
t416 = (t112 - t194 / 0.2e1) * t380 + (t575 / 0.2e1 - t597 / 0.2e1 + t193 / 0.2e1) * t378 - t75 / 0.2e1;
t396 = pkin(3) * t592 + pkin(8);
t534 = qJ(6) + t396;
t372 = t534 * t413;
t548 = t372 * t411;
t370 = t534 * t411;
t549 = t370 * t413;
t434 = -t548 / 0.2e1 + t549 / 0.2e1;
t4 = t416 + t434;
t622 = t4 * qJD(1) + t510;
t531 = -t220 / 0.2e1 + t631;
t371 = t540 / 0.2e1 - t395 / 0.2e1;
t621 = pkin(5) / 0.2e1;
t620 = t97 / 0.2e1;
t616 = -t378 / 0.2e1;
t615 = t378 / 0.2e1;
t614 = -t409 / 0.2e1;
t613 = -t411 / 0.2e1;
t612 = -t413 / 0.2e1;
t611 = t413 / 0.2e1;
t610 = pkin(5) * t376;
t607 = t413 * pkin(5);
t605 = t12 * qJD(3);
t5 = t124 * t129 + t193 * t194 + t92 * t97;
t602 = t5 * qJD(1);
t482 = t123 / 0.2e1 + t92 / 0.2e1;
t452 = t482 * t378;
t488 = -t376 / 0.2e1;
t7 = (-t452 + (t488 - 0.1e1 / 0.2e1) * pkin(5)) * t413;
t601 = t7 * qJD(1);
t484 = t609 / 0.2e1;
t437 = t484 + t482;
t8 = t437 * t413;
t600 = t8 * qJD(1);
t599 = t92 * t411;
t598 = t92 * t413;
t596 = t97 * t413;
t595 = t112 - t599 / 0.2e1;
t593 = t254 * qJD(4);
t13 = -t123 * t254 - t75;
t591 = qJD(1) * t13;
t14 = t193 * pkin(5) * t258 - t124 * t627;
t590 = qJD(1) * t14;
t565 = t193 * t380;
t24 = t565 + (-t577 + t599) * t378;
t589 = qJD(1) * t24;
t397 = -pkin(3) * t410 - pkin(4);
t384 = t397 - t607;
t467 = t380 * t384 / 0.2e1;
t547 = t372 * t413;
t550 = t370 * t411;
t418 = (-t547 / 0.2e1 - t550 / 0.2e1) * t378 + t467;
t576 = t129 * t411;
t436 = -t576 / 0.2e1 - t596 / 0.2e1;
t26 = t418 + t436;
t588 = qJD(1) * t26;
t39 = t124 * t411 + t598;
t31 = t39 * t380;
t587 = qJD(1) * t31;
t556 = t293 * t380;
t32 = t556 + (-t572 - t573) * t378;
t586 = qJD(1) * t32;
t585 = qJD(1) * t39;
t40 = -t124 * t378 + (t411 * t610 + t565) * t413;
t584 = qJD(1) * t40;
t41 = t123 * t378 - t193 * t254 + t409 * t610;
t583 = qJD(1) * t41;
t442 = t152 * t413 - t153 * t411;
t582 = qJD(1) * t442;
t63 = t152 * t378 - t254 * t293;
t581 = qJD(1) * t63;
t64 = -t153 * t378 + t258 * t293;
t580 = qJD(1) * t64;
t10 = (t576 + t596) * t380 - t39 * t378;
t579 = t10 * qJD(1);
t15 = t437 * t411;
t574 = t15 * qJD(1);
t570 = t154 * t413;
t569 = t155 * t411;
t562 = t194 * t411;
t564 = t193 * t411;
t17 = (t92 + t562) * t380 + (t97 - t564) * t378;
t567 = t17 * qJD(1);
t18 = (t569 + t570) * t380 + t442 * t378;
t566 = t18 * qJD(1);
t563 = t193 * t413;
t561 = t194 * t413;
t20 = (-t124 + t561) * t380 + (-t129 - t563) * t378;
t560 = t20 * qJD(1);
t27 = (-t152 + t553) * t380 + (t154 - t629) * t378;
t559 = t27 * qJD(1);
t28 = (-t153 + t552) * t380 + (-t155 - t628) * t378;
t558 = t28 * qJD(1);
t460 = t614 - t408 / 0.2e1;
t451 = t460 * t378;
t545 = t380 * t397;
t421 = t396 * t451 + t545 / 0.2e1;
t435 = -t570 / 0.2e1 - t569 / 0.2e1;
t36 = t421 + t435;
t551 = t36 * qJD(1);
t546 = t378 * t397;
t544 = t384 * t411;
t543 = t384 * t413;
t360 = t408 * t378;
t542 = t408 * t380;
t361 = t409 * t378;
t538 = t411 * t413;
t462 = -t293 / 0.2e1 + t619;
t47 = (t624 / 0.2e1 + t618) * t380 + t462 * t378;
t537 = t47 * qJD(1);
t174 = -0.1e1 / 0.2e1 - t453;
t186 = t174 * t413;
t533 = -t186 * qJD(2) + t251 * qJD(4);
t187 = t375 * t612 + t413 * t488 + t611;
t532 = t187 * qJD(2);
t530 = t221 / 0.2e1 + t630;
t268 = t625 * t413;
t520 = qJD(2) * t378;
t529 = -t268 * qJD(4) - t411 * t520;
t196 = t625 * t411;
t528 = -t196 * qJD(4) + t413 * t520;
t392 = t409 - t408;
t133 = -t378 * t624 + t556;
t527 = qJD(1) * t133;
t195 = t486 * t411;
t526 = qJD(1) * t195;
t525 = qJD(1) * t196;
t197 = t486 * t413;
t524 = qJD(1) * t197;
t217 = t378 * t606 + t380 * t398;
t523 = qJD(1) * t217;
t218 = -t378 * t398 + t380 * t606;
t522 = qJD(1) * t218;
t521 = qJD(1) * t398;
t518 = qJD(3) * t413;
t517 = qJD(4) * t413;
t516 = qJD(5) * t124;
t515 = qJD(5) * t372;
t514 = qJD(5) * t411;
t403 = qJD(5) * t413;
t513 = qJD(6) * t411;
t512 = qJD(6) * t413;
t428 = t375 * t460 + t488;
t108 = t428 + t460;
t511 = t108 * qJD(1);
t163 = t174 * t411;
t96 = t163 * qJD(1);
t509 = t174 * qJD(1);
t117 = t186 * qJD(1);
t465 = t380 * t614;
t454 = -t542 / 0.2e1 + t465;
t190 = t454 - t371;
t508 = t190 * qJD(1);
t426 = t592 * t616 - t410 * t380 / 0.2e1;
t211 = (-t414 / 0.2e1 + t426) * pkin(3);
t507 = t211 * qJD(1);
t506 = t486 * qJD(1);
t461 = t408 / 0.2e1 + t614;
t250 = t461 * t380;
t505 = t250 * qJD(5);
t504 = t251 * qJD(1);
t503 = t254 * qJD(1);
t234 = t256 * qJD(1);
t264 = t360 + t361;
t502 = t264 * qJD(1);
t265 = t390 * t376;
t501 = t265 * qJD(1);
t267 = t390 * t380;
t500 = t267 * qJD(1);
t151 = t268 * qJD(1);
t499 = t625 * qJD(1);
t498 = t371 * qJD(1);
t497 = t378 * qJD(1);
t365 = t378 * qJD(3);
t368 = t380 * qJD(3);
t495 = t390 * qJD(3);
t391 = t412 ^ 2 - t414 ^ 2;
t494 = t391 * qJD(1);
t493 = t412 * qJD(1);
t492 = t412 * qJD(3);
t491 = t414 * qJD(1);
t490 = t414 * qJD(3);
t485 = pkin(5) * t514;
t481 = qJ(2) * t493;
t480 = qJ(2) * t491;
t479 = t411 * t497;
t478 = t411 * t518;
t477 = t378 * t403;
t476 = t380 * t514;
t475 = t380 * t403;
t474 = t380 * t513;
t473 = t380 * t512;
t472 = t378 * t496;
t307 = t378 * t368;
t393 = t411 * t403;
t471 = t413 * t497;
t470 = t378 * t512;
t469 = t412 * t490;
t468 = -t564 / 0.2e1;
t466 = -t543 / 0.2e1;
t464 = qJ(6) * t613;
t463 = t256 / 0.2e1;
t290 = t378 * t355;
t160 = qJD(3) * t251 + t290;
t456 = t411 * t484;
t455 = t376 * t393;
t450 = qJD(3) * t457;
t449 = t163 * qJD(2) + t378 * t517;
t448 = t380 * t517;
t447 = -t254 * qJD(3) - t477;
t446 = t290 + t475;
t19 = -t152 * t154 + t153 * t155 + t293 * t624;
t445 = t19 * qJD(1) + t12 * qJD(2);
t65 = t398 * t606;
t444 = t65 * qJD(1) + t47 * qJD(2);
t429 = t380 * t466 + t468;
t1 = t482 * t372 + (t620 + t429) * pkin(5);
t150 = pkin(5) * t544;
t443 = -qJD(1) * t1 + qJD(3) * t150;
t441 = t568 - t571;
t240 = t547 + t550;
t440 = -t380 * t396 - t546;
t29 = t468 + (qJ(6) * t611 + t372 / 0.2e1) * t378 + (t466 + (0.1e1 - t461) * pkin(5)) * t380 + t530;
t322 = pkin(5) * t538 - t544;
t439 = -qJD(1) * t29 - qJD(3) * t322;
t422 = -pkin(5) * t483 - t563 / 0.2e1 + t411 * t467;
t33 = (t464 - t370 / 0.2e1) * t378 + t422 + t531;
t338 = t408 * pkin(5) + t543;
t438 = -qJD(1) * t33 + qJD(3) * t338;
t433 = t396 * t615 - t545 / 0.2e1;
t425 = t433 * t413;
t58 = -t221 / 0.2e1 - t425 + t462 * t411;
t432 = -qJD(1) * t58 - t397 * t519;
t417 = t433 * t411 + t631;
t56 = t417 - t531;
t431 = -qJD(1) * t56 - t397 * t518;
t135 = (-qJD(5) - t497) * t254;
t201 = -qJD(1) * t250 + t478;
t318 = t411 * t496 - t518;
t198 = qJD(5) * t371 + t472;
t171 = qJD(1) * t376 * t538 + qJD(3) * t250;
t266 = t392 * t376;
t177 = qJD(1) * t266 + t450;
t291 = qJD(1) * t457 - qJD(3) * t392;
t427 = t541 / 0.2e1 + t458 / 0.2e1;
t188 = t451 + t427;
t419 = t380 * t434 + t595;
t420 = -t373 / 0.2e1 - t459 / 0.2e1 + t456;
t22 = t419 + t420;
t423 = qJD(1) * t22 - qJD(2) * t188 + qJD(3) * t240;
t407 = qJ(2) * qJD(2);
t406 = qJD(1) * qJ(2);
t394 = t412 * t491;
t385 = t392 * qJD(5);
t357 = t371 * qJD(3);
t354 = t413 * t368;
t319 = -t403 - t471;
t311 = t320 * pkin(5);
t247 = t264 * qJD(4);
t245 = t267 * qJD(2);
t243 = t267 * qJD(3);
t241 = t264 * qJD(3);
t224 = t251 * qJD(5);
t210 = t606 / 0.2e1 + t426 * pkin(3);
t209 = t403 + t234;
t208 = -t504 - t514;
t191 = t361 / 0.2e1 + t360 / 0.2e1 + t427;
t189 = t454 + t371;
t183 = -t307 * t409 - t455;
t182 = -t307 * t408 + t455;
t175 = 0.2e1 * t413 * t135;
t173 = 0.1e1 / 0.2e1 - t453;
t164 = t411 * t453 + t613;
t162 = t164 * qJD(2);
t159 = t409 * t472 - t505;
t158 = -qJD(3) * t256 + t411 * t472;
t157 = t408 * t472 + t505;
t156 = -qJD(5) * t266 + t378 * t450;
t143 = qJD(3) * t197 - t378 * t476;
t142 = -qJD(3) * t195 - t378 * t475;
t139 = qJD(5) * t256 - t524;
t137 = -t224 + t526;
t130 = t134 * qJD(3);
t126 = -t505 + (-t409 * t496 - t478) * t378;
t125 = t505 + (-t408 * t496 + t478) * t378;
t118 = (t360 - t361) * qJD(3) + (-qJD(5) + t497) * t457;
t116 = t447 + t151;
t107 = t428 - t460;
t105 = t108 * qJD(2);
t103 = t108 * qJD(4);
t102 = t107 * qJD(2);
t101 = t107 * qJD(4);
t95 = t368 * t411 + t524;
t94 = t354 - t526;
t93 = -t224 + t354 + t525;
t81 = t447 + t117;
t76 = -qJD(5) * t254 - t365 * t413;
t71 = -qJD(3) * t258 + t378 * t514 - t96;
t62 = qJD(5) * t186 - t471;
t61 = qJD(5) * t187 + t471;
t59 = t630 - t425 + t530;
t57 = t417 + t531;
t45 = -qJD(5) * t258 + t365 * t411;
t44 = t47 * qJD(3);
t38 = -qJD(5) * t163 + t479;
t37 = qJD(5) * t164 - t479;
t35 = t421 - t435;
t34 = t370 * t615 + t378 * t464 - t422 + t531;
t30 = pkin(5) * t465 + qJ(6) * t463 + t372 * t616 + t542 * t621 - t429 + t530 + t608;
t25 = t418 - t436;
t21 = t419 - t420;
t16 = t123 * t613 - t577 / 0.2e1 + t456 + t595;
t9 = t123 * t612 - t598 / 0.2e1 + pkin(5) * t463;
t6 = t607 / 0.2e1 + (pkin(5) * t488 - t452) * t413;
t3 = t416 - t434;
t2 = pkin(5) * t620 + t467 * t607 + t564 * t621 - t627 * t372 / 0.2e1;
t11 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), t407, -t469, t391 * qJD(3), 0, t469, 0, 0, qJ(2) * t490 + qJD(2) * t412, -qJ(2) * t492 + qJD(2) * t414, 0, t407, -t307, -t486 * qJD(3), 0, t307, 0, 0, qJD(3) * t217 + t520, qJD(2) * t380 + qJD(3) * t218, -qJD(4) * t625, qJD(2) * t398 + qJD(3) * t65 + qJD(4) * t133, t183, t156, t143, t182, t142, t307, qJD(3) * t27 + qJD(5) * t64 + t528, qJD(3) * t28 + qJD(5) * t63 + t529, -qJD(3) * t18 - t245, -qJD(2) * t442 + qJD(3) * t19 + qJD(4) * t32, t183, t156, t143, t182, t142, t307, qJD(3) * t17 + qJD(5) * t40 - t380 * t470 + t528, qJD(3) * t20 + qJD(5) * t41 + t378 * t474 + t529, -qJD(3) * t10 - qJD(5) * t13 + qJD(6) * t265 - t245, qJD(2) * t39 + qJD(3) * t5 + qJD(4) * t24 + qJD(5) * t14 - qJD(6) * t31; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(1), t406, 0, 0, 0, 0, 0, 0, t493, t491, 0, t406, 0, 0, 0, 0, 0, 0, t497, t496, 0, qJD(4) * t173 + t44 + t521, 0, 0, 0, 0, 0, 0, t61, t37, -t500, t101 - t582 + t605, 0, 0, 0, 0, 0, 0, t61, t37, -t500, qJD(3) * t3 + qJD(5) * t6 + t101 + t585; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t394, t494, -t492, t394, -t490, 0, -t415 * t492 + t480, -t415 * t490 - t481, 0, 0, -t472, -t506, -t365, t472, -t368, 0, -qJD(3) * t624 + t523, qJD(3) * t293 + t522, -t626 (-t293 * t592 - t410 * t624) * t604 + t210 * qJD(4) + t444, t126, t118, t95, t125, t94, t198, t559 + (t411 * t440 - t552) * qJD(3) + t59 * qJD(5), t558 + (t413 * t440 + t553) * qJD(3) + t57 * qJD(5), qJD(3) * t441 - t566 (t396 * t441 + t397 * t624) * qJD(3) + t35 * qJD(4) + t445, t126, t118, t95, t125, t94, t198, t567 + (-t251 * t384 - t370 * t380 - t561) * qJD(3) + t30 * qJD(5) - t251 * qJD(6), t560 + (-t256 * t384 - t372 * t380 + t562) * qJD(3) + t34 * qJD(5) - t470, -t579 + (t575 - t597 + (t548 - t549) * t378) * qJD(3) + t9 * qJD(5), t602 + t3 * qJD(2) + (t129 * t372 + t194 * t384 - t370 * t97) * qJD(3) + t25 * qJD(4) + t2 * qJD(5) + t21 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t499, qJD(2) * t173 + qJD(3) * t210 + t527, 0, 0, 0, 0, 0, 0, -t525, -t151, 0, qJD(3) * t35 + t102 + t586, 0, 0, 0, 0, 0, 0, -t525, -t151, 0, qJD(3) * t25 + qJD(5) * t16 + qJD(6) * t189 + t102 + t589; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t171, -t177, t135, t171, -t446, t357, qJD(3) * t59 - qJD(5) * t153 + t532 + t580, qJD(3) * t57 + qJD(5) * t152 + t162 + t581, 0, 0, -t171, -t177, t135, t171, -t446, t357, qJD(3) * t30 - t516 + t532 + t584, qJD(3) * t34 + qJD(5) * t123 + t162 + t583, pkin(5) * t476 + qJD(3) * t9 - t591, -pkin(5) * t516 + qJD(2) * t6 + qJD(3) * t2 + qJD(4) * t16 + t590; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t160, t318 * t378, t501, qJD(3) * t21 + qJD(4) * t189 - t587; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(1), -t406, 0, 0, 0, 0, 0, 0, -t493, -t491, 0, -t406, 0, 0, 0, 0, 0, 0, -t497, -t496, 0, qJD(4) * t174 + t44 - t521, 0, 0, 0, 0, 0, 0, t62, t38, t500, t103 + t582 + t605, 0, 0, 0, 0, 0, 0, t62, t38, t500, qJD(3) * t4 + qJD(5) * t7 + t103 - t585; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t130, 0, 0, 0, 0, 0, 0, 0, 0, 0, t130; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t492, -t490, 0, 0, 0, 0, 0, 0, 0, 0, -t365, -t368, 0, t537 + t626, 0, 0, 0, 0, 0, 0, t76, t45, t243 (t267 * t396 + t546) * qJD(3) - t623, 0, 0, 0, 0, 0, 0, t76, t45, t243 (t240 * t380 + t378 * t384) * qJD(3) - t100 * qJD(5) + t191 * qJD(6) + t622; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t509, 0, 0, 0, 0, 0, 0, 0, 0, 0, t511, 0, 0, 0, 0, 0, 0, 0, 0, 0, t511; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t81, t71, 0, 0, 0, 0, 0, 0, 0, 0, t81, t71, 0, -pkin(5) * t477 - qJD(3) * t100 + t601; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t191 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t394, -t494, 0, -t394, 0, 0, -t480, t481, 0, 0, t472, t506, 0, -t472, 0, 0, -qJD(4) * t380 - t523, qJD(4) * t378 - t522, 0, qJD(4) * t211 - t444, t159, t175, t139, t157, t137, -t198, qJD(5) * t58 - t448 - t559, qJD(5) * t56 - t558 + t593, -t247 + t566, qJD(4) * t36 - t445, t159, t175, t139, t157, t137, -t198, -qJD(5) * t29 - t448 - t567, -qJD(5) * t33 - t560 + t593, -qJD(5) * t8 - t247 + t579, -qJD(2) * t4 + qJD(4) * t26 - qJD(5) * t1 + qJD(6) * t22 - t602; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t537, 0, 0, 0, 0, 0, 0, 0, 0, 0, t623, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(6) * t188 - t622; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t393, t385, 0, -t393, 0, 0, t397 * t514, t397 * t403, 0, 0, t393, t385, 0, -t393, 0, 0, -t322 * qJD(5), t338 * qJD(5), t390 * qJD(6), qJD(5) * t150 + qJD(6) * t240; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t496, t497, 0, t507, 0, 0, 0, 0, 0, 0, -t355, t503, -t502, t551, 0, 0, 0, 0, 0, 0, -t355, t503, -t502, t588; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t201, -t291, t209, -t201, t208, -t498, -t396 * t403 - t432, t396 * t514 - t431, 0, 0, t201, -t291, t209, -t201, t208, -t498, t439 - t515, qJD(5) * t370 + t438, -pkin(5) * t403 - t600, -pkin(5) * t515 + t443; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t495, t423; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t368, -t365, t499, -qJD(2) * t174 - qJD(3) * t211 - t527, 0, 0, 0, 0, 0, 0, t93, t116, t241, -qJD(3) * t36 - t105 - t586, 0, 0, 0, 0, 0, 0, t93, t116, t241, -qJD(3) * t26 - qJD(5) * t15 + qJD(6) * t190 - t105 - t589; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t509, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t511, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t511; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t496, -t497, 0, -t507, 0, 0, 0, 0, 0, 0, t355, -t503, t502, -t551, 0, 0, 0, 0, 0, 0, t355, -t503, t502, -t588; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t208, t319, 0, 0, 0, 0, 0, 0, 0, 0, t208, t319, 0, -t485 - t574; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t508; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t171, t177, t158, -t171, t160, t357, -qJD(3) * t58 + t533 - t580, -qJD(3) * t56 + t449 - t581, 0, 0, t171, t177, t158, -t171, t160, t357, qJD(3) * t29 - t473 + t533 - t584, qJD(3) * t33 + t449 + t474 - t583, qJD(3) * t8 + t591, -pkin(5) * t473 - qJD(2) * t7 + qJD(3) * t1 + qJD(4) * t15 - t590; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t117, t96, 0, 0, 0, 0, 0, 0, 0, 0, -t117, t96, 0, -t601; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t201, t291, -t234, t201, t504, t498, t432, t431, 0, 0, -t201, t291, -t234, t201, t504, t498, -t439 - t513, -t438 - t512, t600, -pkin(5) * t513 - t443; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t504, t471, 0, 0, 0, 0, 0, 0, 0, 0, t504, t471, 0, t574; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t320, t318, 0, -t311; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t446, t135, -t501, pkin(5) * t475 - qJD(3) * t22 - qJD(4) * t190 + t587; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t188 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t514, t403, -t495, -t423 + t485; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t508; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t320, -t318, 0, t311; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t11;
