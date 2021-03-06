% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRRPRR7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 18:43
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRPRR7_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR7_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR7_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRR7_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRR7_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRPRR7_invdynJ_fixb_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 18:39:36
% EndTime: 2019-03-09 18:40:32
% DurationCPUTime: 35.54s
% Computational Cost: add. (45138->961), mult. (110896->1275), div. (0->0), fcn. (90952->18), ass. (0->431)
t401 = cos(qJ(6));
t530 = qJD(6) * t401;
t398 = sin(qJ(3));
t394 = cos(pkin(6));
t537 = qJD(1) * t394;
t478 = qJD(2) + t537;
t399 = sin(qJ(2));
t393 = sin(pkin(6));
t538 = qJD(1) * t393;
t503 = t399 * t538;
t609 = cos(qJ(3));
t272 = t398 * t503 - t609 * t478;
t449 = t398 * t478;
t510 = t393 * t609;
t468 = qJD(1) * t510;
t274 = t399 * t468 + t449;
t392 = sin(pkin(12));
t581 = cos(pkin(12));
t198 = -t581 * t272 - t392 * t274;
t608 = cos(qJ(5));
t195 = t198 * t608;
t397 = sin(qJ(5));
t435 = -t392 * t272 + t274 * t581;
t139 = -t397 * t435 + t195;
t652 = t139 * t401;
t666 = t530 - t652;
t396 = sin(qJ(6));
t402 = cos(qJ(2));
t502 = t402 * t538;
t353 = -qJD(3) + t502;
t443 = -qJD(5) + t353;
t427 = t401 * t443;
t635 = t198 * t397 + t435 * t608;
t123 = t396 * t635 + t427;
t528 = qJD(1) * qJD(2);
t495 = t399 * t528;
t466 = t393 * t495;
t525 = qJDD(1) * t402;
t368 = t393 * t525;
t523 = t368 - qJDD(3);
t297 = t466 - t523;
t420 = qJDD(5) + t297;
t531 = qJD(6) * t396;
t451 = t402 * t468;
t527 = qJDD(1) * t394;
t470 = qJDD(2) + t527;
t474 = t399 * t510;
t636 = qJD(3) * t272;
t190 = -qJD(2) * t451 - qJDD(1) * t474 - t398 * t470 + t636;
t497 = qJD(3) * t609;
t551 = t398 * t402;
t500 = qJD(2) * t551;
t526 = qJDD(1) * t399;
t191 = qJD(3) * t449 + t393 * (qJD(1) * (t399 * t497 + t500) + t398 * t526) - t609 * t470;
t131 = -t190 * t392 + t581 * t191;
t132 = -t190 * t581 - t392 * t191;
t534 = qJD(5) * t397;
t63 = -qJD(5) * t195 + t397 * t131 - t608 * t132 + t435 * t534;
t39 = qJD(6) * t427 - t396 * t420 + t401 * t63 + t531 * t635;
t125 = -t396 * t443 + t401 * t635;
t533 = qJD(6) * t125;
t40 = -t396 * t63 - t401 * t420 + t533;
t585 = -t123 * t530 - t396 * t40;
t651 = qJD(6) - t139;
t660 = t651 * t396;
t626 = t125 * t660;
t665 = t123 * t652 - t401 * t39 + t585 - t626;
t485 = t608 * t131 + t397 * t132;
t642 = t635 * qJD(5);
t64 = t485 + t642;
t366 = pkin(8) * t502;
t518 = pkin(1) * t537;
t477 = qJD(2) * t518;
t493 = t393 * t526;
t517 = pkin(1) * t527;
t475 = pkin(8) * t493 + qJD(2) * t366 + t399 * t477 - t402 * t517;
t205 = -pkin(2) * t470 + t475;
t141 = t191 * pkin(3) + qJDD(4) + t205;
t594 = t131 * pkin(4);
t85 = t141 + t594;
t16 = t64 * pkin(5) + t63 * pkin(11) + t85;
t305 = t399 * t518 + t366;
t258 = pkin(9) * t478 + t305;
t450 = -pkin(2) * t402 - pkin(9) * t399 - pkin(1);
t292 = t450 * t393;
t266 = qJD(1) * t292;
t188 = -t258 * t398 + t609 * t266;
t158 = -qJ(4) * t274 + t188;
t147 = -pkin(3) * t353 + t158;
t189 = t258 * t609 + t398 * t266;
t159 = -t272 * qJ(4) + t189;
t155 = t392 * t159;
t103 = t581 * t147 - t155;
t630 = pkin(10) * t435;
t80 = -pkin(4) * t353 + t103 - t630;
t157 = t581 * t159;
t104 = t392 * t147 + t157;
t638 = t198 * pkin(10);
t84 = t104 + t638;
t48 = t397 * t80 + t608 * t84;
t46 = -pkin(11) * t443 + t48;
t302 = -pkin(8) * t503 + t402 * t518;
t257 = -pkin(2) * t478 - t302;
t196 = t272 * pkin(3) + qJD(4) + t257;
t142 = -pkin(4) * t198 + t196;
t69 = -pkin(5) * t139 - pkin(11) * t635 + t142;
t454 = t396 * t46 - t401 * t69;
t513 = pkin(8) * t368 + t399 * t517 + t402 * t477;
t223 = -pkin(8) * t466 + t513;
t204 = pkin(9) * t470 + t223;
t464 = pkin(2) * t399 - pkin(9) * t402;
t441 = t464 * qJD(2);
t210 = (qJD(1) * t441 + qJDD(1) * t450) * t393;
t111 = -qJD(3) * t189 - t398 * t204 + t609 * t210;
t77 = t297 * pkin(3) + t190 * qJ(4) - t274 * qJD(4) + t111;
t535 = qJD(3) * t398;
t433 = -t609 * t204 - t398 * t210 + t258 * t535 - t266 * t497;
t82 = -qJ(4) * t191 - qJD(4) * t272 - t433;
t41 = -t392 * t82 + t581 * t77;
t25 = pkin(4) * t297 - pkin(10) * t132 + t41;
t42 = t392 * t77 + t581 * t82;
t29 = -pkin(10) * t131 + t42;
t496 = qJD(5) * t608;
t9 = t397 * t25 + t608 * t29 + t80 * t496 - t84 * t534;
t7 = pkin(11) * t420 + t9;
t2 = -t454 * qJD(6) + t396 * t16 + t401 * t7;
t588 = t454 * t651;
t664 = t2 + t588;
t303 = t464 * t538;
t213 = -t398 * t302 + t609 * t303;
t506 = t609 * qJ(4);
t355 = pkin(9) * t609 + t506;
t663 = -(pkin(3) * t399 - t402 * t506) * t538 - t213 - qJD(3) * t355 - t398 * qJD(4);
t214 = t609 * t302 + t398 * t303;
t395 = -qJ(4) - pkin(9);
t354 = t395 * t398;
t472 = t398 * t502;
t662 = -qJ(4) * t472 - qJD(3) * t354 - qJD(4) * t609 + t214;
t36 = t40 * t401;
t661 = t123 * t660 - t36;
t328 = t392 * t609 + t398 * t581;
t251 = t328 * t502;
t413 = qJD(3) * t328;
t617 = t251 - t413;
t424 = t392 * t398 - t581 * t609;
t252 = t424 * t502;
t616 = -qJD(3) * t424 + t252;
t575 = t139 ^ 2;
t576 = t635 ^ 2;
t659 = -t575 + t576;
t18 = t396 * t69 + t401 * t46;
t3 = -qJD(6) * t18 + t401 * t16 - t396 * t7;
t658 = t18 * t651 + t3;
t34 = t39 * t396;
t656 = t125 * t666 - t34;
t61 = qJDD(6) + t64;
t57 = t396 * t61;
t578 = t125 * t635;
t655 = t651 * t666 + t57 - t578;
t47 = -t397 * t84 + t608 * t80;
t45 = pkin(5) * t443 - t47;
t654 = t139 * t45;
t625 = t139 * t443;
t653 = -t63 + t625;
t572 = t635 * t139;
t620 = t662 * t392 + t581 * t663;
t619 = t392 * t663 - t662 * t581;
t92 = pkin(5) * t635 - pkin(11) * t139;
t610 = cos(qJ(1));
t508 = t610 * t399;
t400 = sin(qJ(1));
t549 = t400 * t402;
t321 = t394 * t508 + t549;
t389 = qJ(3) + pkin(12);
t385 = qJ(5) + t389;
t378 = sin(t385);
t379 = cos(t385);
t511 = t393 * t610;
t229 = t321 * t379 - t378 * t511;
t507 = t610 * t402;
t550 = t399 * t400;
t323 = -t394 * t550 + t507;
t554 = t393 * t400;
t233 = t323 * t379 + t378 * t554;
t555 = t393 * t399;
t268 = t378 * t394 + t379 * t555;
t431 = -g(1) * t233 - g(2) * t229 - g(3) * t268;
t650 = -t142 * t139 - t431 - t9;
t504 = t581 * pkin(3);
t380 = t504 + pkin(4);
t603 = pkin(3) * t392;
t313 = t397 * t380 + t608 * t603;
t106 = -t392 * t158 - t157;
t417 = t106 - t638;
t107 = t581 * t158 - t155;
t91 = t107 - t630;
t582 = t313 * qJD(5) - t397 * t91 + t417 * t608;
t649 = t48 + t582;
t648 = -pkin(4) * t503 - t616 * pkin(10) + t620;
t647 = -t617 * pkin(10) - t619;
t439 = t635 * t353;
t646 = -t439 - t485;
t580 = t123 * t635;
t643 = t651 * t635;
t408 = t608 * t424;
t524 = qJD(3) + qJD(5);
t164 = t328 * t534 + t397 * t413 + t408 * t524;
t181 = -t397 * t251 - t252 * t608;
t547 = t164 + t181;
t415 = t397 * t424;
t546 = -qJD(5) * t415 + t328 * t496 + t397 * t616 - t608 * t617;
t618 = -t305 + (-t472 + t535) * pkin(3);
t232 = t323 * t378 - t379 * t554;
t267 = -t378 * t555 + t379 * t394;
t482 = -t321 * t378 - t379 * t511;
t432 = g(1) * t232 - g(2) * t482 - g(3) * t267;
t490 = -t608 * t25 + t397 * t29;
t10 = -qJD(5) * t48 - t490;
t8 = -pkin(5) * t420 - t10;
t425 = t432 - t8;
t641 = t635 * t18 - t425 * t396 + t45 * t530;
t640 = t45 * t531 + t635 * t454;
t639 = -t142 * t635 + t432 - t490;
t255 = t581 * t354 - t355 * t392;
t217 = -pkin(10) * t328 + t255;
t256 = t392 * t354 + t581 * t355;
t218 = -pkin(10) * t424 + t256;
t591 = t217 * t496 - t218 * t534 + t648 * t397 - t647 * t608;
t637 = t435 * t198;
t542 = -t617 * pkin(4) + t618;
t634 = pkin(11) * t503 - t591;
t633 = t546 * pkin(5) + t547 * pkin(11) + t542;
t369 = pkin(8) * t555;
t605 = pkin(1) * t402;
t324 = t394 * t605 - t369;
t306 = qJD(2) * t324;
t320 = -t394 * t507 + t550;
t632 = t229 * t396 - t320 * t401;
t631 = t229 * t401 + t320 * t396;
t152 = t397 * t217 + t218 * t608;
t590 = -qJD(5) * t152 + t647 * t397 + t648 * t608;
t553 = t393 * t402;
t606 = pkin(1) * t399;
t325 = pkin(8) * t553 + t394 * t606;
t291 = pkin(9) * t394 + t325;
t206 = -t291 * t398 + t609 * t292;
t318 = t394 * t398 + t474;
t168 = -pkin(3) * t553 - qJ(4) * t318 + t206;
t207 = t609 * t291 + t398 * t292;
t317 = -t394 * t609 + t398 * t555;
t177 = -qJ(4) * t317 + t207;
t119 = t392 * t168 + t581 * t177;
t219 = t317 * t581 + t318 * t392;
t101 = -pkin(10) * t219 + t119;
t118 = t581 * t168 - t177 * t392;
t220 = -t392 * t317 + t318 * t581;
t97 = -pkin(4) * t553 - pkin(10) * t220 + t118;
t628 = t608 * t101 + t397 * t97;
t312 = t380 * t608 - t397 * t603;
t284 = t312 * qJD(5);
t50 = t397 * t417 + t608 * t91;
t583 = t284 - t50;
t58 = t401 * t61;
t627 = t531 * t651 - t58;
t322 = t394 * t549 + t508;
t461 = g(1) * t322 + g(2) * t320;
t615 = g(3) * t553 - t461;
t623 = t615 * t378;
t621 = t189 * t353 - t111;
t307 = qJD(2) * t325;
t242 = -t323 * t398 + t400 * t510;
t469 = t610 * t609;
t559 = t321 * t398;
t613 = -g(2) * (-t393 * t469 - t559) + g(3) * t317 - g(1) * t242;
t239 = qJD(3) * t318 + t393 * t500;
t509 = t402 * t609;
t240 = qJD(2) * t393 * t509 - qJD(3) * t317;
t176 = -t392 * t239 + t240 * t581;
t536 = qJD(2) * t399;
t501 = t393 * t536;
t304 = t393 * t441;
t150 = -qJD(3) * t207 + t609 * t304 - t398 * t306;
t116 = pkin(3) * t501 - t240 * qJ(4) - t318 * qJD(4) + t150;
t149 = -t291 * t535 + t292 * t497 + t398 * t304 + t609 * t306;
t120 = -qJ(4) * t239 - qJD(4) * t317 + t149;
t73 = t581 * t116 - t120 * t392;
t56 = pkin(4) * t501 - pkin(10) * t176 + t73;
t175 = t239 * t581 + t392 * t240;
t74 = t392 * t116 + t581 * t120;
t62 = -pkin(10) * t175 + t74;
t14 = -qJD(5) * t628 - t397 * t62 + t56 * t608;
t403 = qJD(1) ^ 2;
t611 = qJD(2) ^ 2;
t388 = t393 ^ 2;
t607 = pkin(1) * t388;
t604 = pkin(3) * t274;
t595 = g(3) * t393;
t1 = t2 * t401;
t234 = t328 * t397 + t408;
t235 = t328 * t608 - t415;
t519 = t609 * pkin(3);
t381 = t519 + pkin(2);
t281 = pkin(4) * t424 - t381;
t148 = t234 * pkin(5) - t235 * pkin(11) + t281;
t98 = t148 * t401 - t152 * t396;
t593 = qJD(6) * t98 + t633 * t396 - t634 * t401;
t99 = t148 * t396 + t152 * t401;
t592 = -qJD(6) * t99 + t634 * t396 + t633 * t401;
t589 = pkin(5) * t503 - t590;
t579 = t125 * t123;
t570 = t435 * t353;
t569 = t198 * t353;
t568 = t435 ^ 2;
t567 = t235 * t396;
t566 = t235 * t401;
t565 = t272 * t353;
t564 = t274 * t272;
t563 = t274 * t353;
t383 = sin(t389);
t560 = t321 * t383;
t558 = t379 * t396;
t557 = t379 * t401;
t556 = t388 * t403;
t552 = t396 * t402;
t548 = t401 * t402;
t384 = cos(t389);
t339 = pkin(4) * t384 + t519;
t335 = pkin(2) + t339;
t387 = -pkin(10) + t395;
t545 = -t320 * t335 - t321 * t387;
t544 = -t322 * t335 - t323 * t387;
t338 = pkin(3) * t398 + pkin(4) * t383;
t543 = -t323 * t338 + t339 * t554;
t541 = -t338 * t555 + t394 * t339;
t540 = t610 * pkin(1) + pkin(8) * t554;
t390 = t399 ^ 2;
t391 = t402 ^ 2;
t539 = t390 - t391;
t532 = qJD(6) * t651;
t520 = g(1) * t610;
t516 = t402 * t556;
t515 = t393 * t548;
t358 = t393 * t552;
t514 = t398 * t554;
t512 = t191 * t609;
t505 = t609 * t297;
t498 = t393 * t394 * t403;
t494 = t402 * t528;
t491 = -t400 * pkin(1) + pkin(8) * t511;
t161 = pkin(4) * t435 + t604;
t72 = t161 + t92;
t20 = t396 * t72 + t401 * t50;
t488 = t284 * t401 - t20;
t486 = qJDD(5) - t523;
t162 = t181 * t396 - t401 * t503;
t484 = t164 * t396 + t162;
t163 = t181 * t401 + t396 * t503;
t483 = t164 * t401 + t163;
t481 = t321 * t384 - t383 * t511;
t476 = t399 * t516;
t359 = t398 * t511;
t471 = t353 * t503;
t467 = t399 * t494;
t463 = pkin(5) * t379 + pkin(11) * t378;
t462 = g(1) * t482 + g(2) * t232;
t460 = g(1) * t320 - g(2) * t322;
t459 = g(1) * t323 + g(2) * t321;
t458 = t321 * t609 - t359;
t300 = pkin(11) + t313;
t456 = -t300 * t61 - t654;
t455 = t18 * t396 - t401 * t454;
t52 = -pkin(11) * t553 + t628;
t153 = t219 * t608 + t220 * t397;
t154 = -t397 * t219 + t220 * t608;
t290 = t369 + (-pkin(2) - t605) * t394;
t225 = pkin(3) * t317 + t290;
t160 = pkin(4) * t219 + t225;
t78 = pkin(5) * t153 - pkin(11) * t154 + t160;
t27 = t396 * t78 + t401 * t52;
t26 = -t396 * t52 + t401 * t78;
t452 = -t322 * t387 + t323 * t335 + t338 * t554 + t540;
t448 = t139 * t660 - t627;
t446 = -t321 * t338 - t339 * t511;
t445 = g(2) * t400 + t520;
t53 = -t397 * t101 + t608 * t97;
t143 = t154 * t396 + t515;
t13 = -t101 * t534 + t397 * t56 + t97 * t496 + t608 * t62;
t440 = t320 * t387 - t321 * t335 + t338 * t511 + t491;
t438 = t198 ^ 2;
t437 = t399 * t198;
t434 = t494 + t526;
t430 = t235 * t530 - t484;
t429 = -t235 * t531 - t483;
t428 = -t398 * t297 + t353 * t497;
t426 = t1 + t431;
t422 = -g(3) * t555 - t459;
t418 = -0.2e1 * t495 + 0.2e1 * t525;
t416 = -t205 - t615;
t411 = t451 - t497;
t201 = pkin(3) * t239 + t307;
t407 = -t433 * t609 + t422;
t406 = -qJD(6) * t455 - t3 * t396 + t1;
t133 = pkin(4) * t175 + t201;
t404 = t141 + t615;
t299 = -pkin(5) - t312;
t298 = t335 * t553;
t261 = t267 * pkin(5);
t243 = t323 * t609 + t514;
t237 = t323 * t384 + t383 * t554;
t236 = -t323 * t383 + t384 * t554;
t227 = t232 * pkin(5);
t226 = t482 * pkin(5);
t211 = (-t297 * t402 - t353 * t536) * t393;
t185 = t233 * t401 + t322 * t396;
t184 = -t233 * t396 + t322 * t401;
t151 = -t217 * t608 + t218 * t397;
t144 = t154 * t401 - t358;
t88 = qJD(5) * t154 + t175 * t608 + t397 * t176;
t87 = t397 * t175 - t176 * t608 + t219 * t496 + t220 * t534;
t66 = -qJD(6) * t358 + t154 * t530 - t396 * t87 - t401 * t501;
t65 = qJD(6) * t143 - t396 * t501 + t401 * t87;
t51 = pkin(5) * t553 - t53;
t32 = pkin(5) * t88 + pkin(11) * t87 + t133;
t22 = t396 * t92 + t401 * t47;
t21 = -t396 * t47 + t401 * t92;
t19 = -t396 * t50 + t401 * t72;
t12 = -pkin(5) * t501 - t14;
t11 = pkin(11) * t501 + t13;
t5 = -qJD(6) * t27 - t11 * t396 + t32 * t401;
t4 = qJD(6) * t26 + t11 * t401 + t32 * t396;
t6 = [0, 0, 0, 0, 0, qJDD(1), g(1) * t400 - g(2) * t610, t445, 0, 0 (qJDD(1) * t390 + 0.2e1 * t467) * t388, 0.2e1 * (t399 * t525 - t528 * t539) * t388 (t399 * qJDD(2) + 0.2e1 * t394 * t434 + t402 * t611) * t393 (qJDD(1) * t391 - 0.2e1 * t467) * t388 (t402 * qJDD(2) + t394 * t418 - t399 * t611) * t393, t470 * t394, g(1) * t321 - g(2) * t323 - t307 * t478 + t324 * t470 - t394 * t475 + t418 * t607, -t223 * t394 - t306 * t478 - t325 * t470 - 0.2e1 * t434 * t607 - t460 ((-t302 * qJD(2) + qJDD(1) * t325 + t223) * t402 + (-qJD(2) * t305 - qJDD(1) * t324 + t475) * t399 - t445) * t393, t388 * qJDD(1) * pkin(1) ^ 2 - g(1) * t491 - g(2) * t540 + t223 * t325 - t302 * t307 + t305 * t306 - t324 * t475, -t190 * t318 + t240 * t274, t190 * t317 - t191 * t318 - t239 * t274 - t240 * t272, -t240 * t353 + t297 * t318 + (t190 * t402 + t274 * t536) * t393, t191 * t317 + t239 * t272, t239 * t353 - t297 * t317 + (t191 * t402 - t272 * t536) * t393, t211, -t150 * t353 + t206 * t297 + t307 * t272 + t290 * t191 + t205 * t317 + t257 * t239 + g(1) * t458 - g(2) * t243 + (-t111 * t402 + t188 * t536) * t393, -g(1) * t559 - g(2) * t242 + t149 * t353 - t290 * t190 + t205 * t318 - t207 * t297 + t257 * t240 + t307 * t274 + (-g(1) * t469 - t189 * t536 - t402 * t433) * t393, -t111 * t318 - t149 * t272 - t150 * t274 - t188 * t240 - t189 * t239 + t190 * t206 - t191 * t207 + t317 * t433 + t460, -t433 * t207 + t189 * t149 + t111 * t206 + t188 * t150 + t205 * t290 + t257 * t307 - g(1) * (-pkin(2) * t321 - pkin(9) * t320 + t491) - g(2) * (pkin(2) * t323 + pkin(9) * t322 + t540) t132 * t220 + t176 * t435, -t220 * t131 - t132 * t219 - t175 * t435 + t176 * t198, -t176 * t353 + t220 * t297 + (-t132 * t402 + t435 * t536) * t393, t131 * t219 - t175 * t198, t175 * t353 - t219 * t297 + (qJD(2) * t437 + t131 * t402) * t393, t211, -t73 * t353 + t118 * t297 - t201 * t198 + t225 * t131 + t141 * t219 + t196 * t175 + g(1) * t481 - g(2) * t237 + (t103 * t536 - t402 * t41) * t393, -g(1) * t560 - g(2) * t236 - t119 * t297 + t225 * t132 + t141 * t220 + t196 * t176 + t201 * t435 + t74 * t353 + (-t104 * t536 - t384 * t520 + t42 * t402) * t393, -t103 * t176 - t104 * t175 - t118 * t132 - t119 * t131 + t198 * t74 - t42 * t219 - t41 * t220 - t435 * t73 + t460, t42 * t119 + t104 * t74 + t41 * t118 + t103 * t73 + t141 * t225 + t196 * t201 - g(1) * (pkin(3) * t359 + t320 * t395 - t321 * t381 + t491) - g(2) * (pkin(3) * t514 - t322 * t395 + t323 * t381 + t540) -t154 * t63 - t635 * t87, -t139 * t87 + t153 * t63 - t154 * t64 - t635 * t88, -t87 * t524 + t154 * t486 + (t635 * t536 + t63 * t402 + (t154 * t536 + t402 * t87) * qJD(1)) * t393, -t139 * t88 + t153 * t64, -t88 * t524 - t153 * t486 + (t139 * t536 + t64 * t402 + (-t153 * t536 + t402 * t88) * qJD(1)) * t393 (-t486 * t402 + (-0.2e1 * t502 + t524) * t536) * t393, t14 * t524 + t53 * t486 - t133 * t139 + t160 * t64 + t85 * t153 + t142 * t88 + g(1) * t229 - g(2) * t233 + (t47 * t536 - t10 * t402 + (-t14 * t402 + t53 * t536) * qJD(1)) * t393, -t13 * t524 - t628 * t486 + t133 * t635 - t160 * t63 + t85 * t154 - t142 * t87 + (-t48 * t536 + t9 * t402 + (t13 * t402 - t536 * t628) * qJD(1)) * t393 + t462, -t10 * t154 + t13 * t139 - t14 * t635 - t153 * t9 + t47 * t87 - t48 * t88 + t53 * t63 - t628 * t64 + t460, -g(1) * t440 - g(2) * t452 + t10 * t53 + t48 * t13 + t142 * t133 + t47 * t14 + t85 * t160 + t628 * t9, -t125 * t65 - t144 * t39, t123 * t65 - t125 * t66 + t143 * t39 - t144 * t40, t125 * t88 + t144 * t61 - t153 * t39 - t65 * t651, t123 * t66 + t143 * t40, -t123 * t88 - t143 * t61 - t153 * t40 - t651 * t66, t153 * t61 + t651 * t88, g(1) * t631 - g(2) * t185 + t12 * t123 + t8 * t143 + t3 * t153 + t26 * t61 + t51 * t40 + t45 * t66 - t454 * t88 + t5 * t651, -g(1) * t632 - g(2) * t184 + t12 * t125 + t8 * t144 - t2 * t153 - t18 * t88 - t27 * t61 - t51 * t39 - t4 * t651 - t45 * t65, -t123 * t4 - t125 * t5 - t143 * t2 - t144 * t3 - t18 * t66 + t26 * t39 - t27 * t40 - t454 * t65 - t462, t2 * t27 + t18 * t4 + t3 * t26 - t454 * t5 + t8 * t51 + t45 * t12 - g(1) * (-pkin(5) * t229 + pkin(11) * t482 + t440) - g(2) * (pkin(5) * t233 + pkin(11) * t232 + t452); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t476, t539 * t556, -t402 * t498 + t493, t476, t399 * t498 + t368, t470, t305 * t478 + t556 * t606 - t475 - t615, pkin(1) * t516 + t302 * t478 + (pkin(8) * t528 + g(3)) * t555 + t459 - t513, 0, 0, -t190 * t398 - t274 * t411, -t190 * t609 + t411 * t272 + (-t191 + t563) * t398 (-t274 * t399 + t353 * t509) * t538 - t428, -t398 * t565 - t512, t353 * t535 + t505 + (t272 * t399 - t353 * t551) * t538, t471, t257 * t535 - pkin(2) * t191 + t213 * t353 - t305 * t272 + t428 * pkin(9) + (-g(3) * t509 + (-t188 * t399 - t257 * t551) * qJD(1)) * t393 + (-t205 + t461) * t609, -pkin(9) * t505 + t257 * t497 + pkin(2) * t190 - t214 * t353 - t305 * t274 + (t189 * t399 - t257 * t509) * t538 + (-pkin(9) * qJD(3) * t353 - t416) * t398, t213 * t274 + t214 * t272 + t411 * t188 + (t274 * t497 - t512) * pkin(9) + ((-t190 + t636) * pkin(9) + t621) * t398 + t407, -t188 * t213 - t189 * t214 - t257 * t305 + t416 * pkin(2) + (-t111 * t398 + (-t188 * t609 - t189 * t398) * qJD(3) + t407) * pkin(9), t132 * t328 + t435 * t616, -t328 * t131 - t132 * t424 + t198 * t616 + t435 * t617, t328 * t297 - t353 * t616 - t435 * t503, t131 * t424 + t198 * t617, -t297 * t424 - t353 * t617 - t437 * t538, t471, -t103 * t503 - t381 * t131 + t141 * t424 - t196 * t617 - t198 * t618 + t255 * t297 - t353 * t620 - t384 * t615, t104 * t503 - t381 * t132 + t141 * t328 + t196 * t616 - t256 * t297 + t353 * t619 + t383 * t615 + t435 * t618, -t103 * t616 + t104 * t617 - t256 * t131 - t255 * t132 + t198 * t619 - t41 * t328 - t42 * t424 - t435 * t620 + t422, t42 * t256 + t41 * t255 - t141 * t381 - g(1) * (-t322 * t381 - t323 * t395) - g(2) * (-t320 * t381 - t321 * t395) - (t381 * t402 - t395 * t399) * t595 + t618 * t196 + t619 * t104 + t620 * t103, -t235 * t63 - t547 * t635, -t139 * t547 + t234 * t63 - t235 * t64 - t546 * t635, t235 * t420 + t443 * t547 - t503 * t635, -t139 * t546 + t234 * t64, -t139 * t503 - t234 * t420 + t443 * t546, t443 * t503, -t139 * t542 + t142 * t546 - t151 * t420 + t85 * t234 + t281 * t64 - t379 * t615 - t443 * t590 - t47 * t503, -t142 * t547 - t152 * t420 + t85 * t235 - t281 * t63 + t443 * t591 + t48 * t503 + t542 * t635 + t623, -t10 * t235 + t139 * t591 - t151 * t63 - t152 * t64 - t234 * t9 + t47 * t547 - t48 * t546 - t590 * t635 + t422, t9 * t152 - t10 * t151 + t85 * t281 - g(1) * t544 - g(2) * t545 - g(3) * (-t387 * t555 + t298) + t591 * t48 + t590 * t47 + t542 * t142, t125 * t429 - t39 * t566, t484 * t125 + t483 * t123 + (t34 - t36 + (t123 * t396 - t125 * t401) * qJD(6)) * t235, t125 * t546 - t234 * t39 + t429 * t651 + t566 * t61, t123 * t430 + t40 * t567, -t123 * t546 - t234 * t40 - t430 * t651 - t567 * t61, t234 * t61 + t546 * t651, t98 * t61 + t3 * t234 + t151 * t40 + t8 * t567 - g(1) * (-t322 * t557 + t323 * t396) - g(2) * (-t320 * t557 + t321 * t396) - (t379 * t548 + t396 * t399) * t595 - t546 * t454 + t592 * t651 + t589 * t123 + t430 * t45, -t99 * t61 - t2 * t234 - t151 * t39 + t8 * t566 - g(1) * (t322 * t558 + t323 * t401) - g(2) * (t320 * t558 + t321 * t401) - (-t379 * t552 + t399 * t401) * t595 - t546 * t18 - t593 * t651 + t589 * t125 + t429 * t45, t162 * t18 - t163 * t454 + t39 * t98 - t40 * t99 + t455 * t164 - t592 * t125 - t593 * t123 - t623 + (-t2 * t396 - t3 * t401 + (-t18 * t401 - t396 * t454) * qJD(6)) * t235, t2 * t99 + t3 * t98 + t8 * t151 - g(1) * (-t322 * t463 + t544) - g(2) * (-t320 * t463 + t545) - g(3) * t298 + t589 * t45 - (-t387 * t399 + t402 * t463) * t595 + t593 * t18 - t592 * t454; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t564, -t272 ^ 2 + t274 ^ 2, -t190 - t565, -t564, -t191 - t563, t297, -t257 * t274 + t613 - t621, g(1) * t243 + g(2) * t458 + g(3) * t318 - t188 * t353 + t257 * t272 + t433, 0, 0, -t637, -t438 + t568, t132 + t569, t637, -t131 - t570, t297, t106 * t353 - t196 * t435 - g(1) * t236 - g(2) * (-t384 * t511 - t560) - g(3) * (-t383 * t555 + t384 * t394) + (t198 * t274 + t297 * t581) * pkin(3) + t41, -t107 * t353 - t196 * t198 + g(1) * t237 + g(2) * t481 - g(3) * (-t383 * t394 - t384 * t555) + (-t274 * t435 - t297 * t392) * pkin(3) - t42 (-t131 * t392 - t132 * t581) * pkin(3) + (t104 + t106) * t435 + (-t107 + t103) * t198, pkin(3) * t613 - t103 * t106 - t104 * t107 - t196 * t604 + t41 * t504 + t42 * t603, -t572, t659, t653, t572, t646, t420, -t649 * qJD(5) + t139 * t161 + t312 * t420 + t582 * t353 + t639, -t161 * t635 - t313 * t420 + t443 * t583 + t650, t312 * t63 - t313 * t64 + t649 * t635 + (t47 + t583) * t139, -g(1) * t543 - g(2) * t446 - g(3) * t541 + t10 * t312 - t142 * t161 + t9 * t313 - t47 * t582 + t48 * t583, t656, t665, t655, t661, t448 + t580, -t643, -t651 * t19 + t299 * t40 + t582 * t123 + (-t284 * t651 + t456) * t396 + (-t300 * t532 + t425) * t401 + t640, -t299 * t39 + t456 * t401 + t582 * t125 + (t300 * t531 - t488) * t651 + t641, t123 * t20 + t125 * t19 + (-t123 * t284 - t139 * t454 - t300 * t40 + (t125 * t300 + t454) * qJD(6)) * t401 + (t125 * t284 + t139 * t18 - t300 * t39 - t3 + (t123 * t300 - t18) * qJD(6)) * t396 + t426, t8 * t299 - g(1) * (pkin(11) * t233 - t227 + t543) - g(2) * (t229 * pkin(11) + t226 + t446) - g(3) * (pkin(11) * t268 + t261 + t541) + t582 * t45 + t488 * t18 - (-t284 * t396 - t19) * t454 + t406 * t300; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t131 - t570, t132 - t569, -t438 - t568, t103 * t435 - t104 * t198 + t404, 0, 0, 0, 0, 0, 0, -t439 + t485 + 0.2e1 * t642, -t63 - t625, -t575 - t576, -t48 * t139 + t47 * t635 + t404 + t594, 0, 0, 0, 0, 0, 0, t448 - t580, -t401 * t651 ^ 2 - t57 - t578 (t123 * t139 + t39) * t401 + t626 + t585, t664 * t396 + t658 * t401 - t635 * t45 + t615; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t572, t659, t653, t572, t646, t420, -t353 * t48 + t639, -t443 * t47 + t650, 0, 0, t656, t665, t655, t661, -t651 * t660 + t58 + t580, -t643, -pkin(5) * t40 - t123 * t48 - t651 * t21 + (-pkin(11) * t61 - t654) * t396 + (-pkin(11) * t532 + t425) * t401 + t640, pkin(5) * t39 + pkin(11) * t627 - t125 * t48 + t22 * t651 - t45 * t652 + t641, t123 * t22 + t125 * t21 + (t588 + (-t40 + t533) * pkin(11)) * t401 + ((qJD(6) * t123 - t39) * pkin(11) - t658) * t396 + t426, -t8 * pkin(5) + g(1) * t227 - g(2) * t226 - g(3) * t261 + t454 * t21 - t18 * t22 - t45 * t48 + (t406 + t431) * pkin(11); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t579, -t123 ^ 2 + t125 ^ 2, t123 * t651 - t39, -t579, t125 * t651 - t40, t61, -t45 * t125 - g(1) * t184 + g(2) * t632 - g(3) * (-t268 * t396 - t515) + t658, t45 * t123 + g(1) * t185 + g(2) * t631 - g(3) * (-t268 * t401 + t358) - t664, 0, 0;];
tau_reg  = t6;
