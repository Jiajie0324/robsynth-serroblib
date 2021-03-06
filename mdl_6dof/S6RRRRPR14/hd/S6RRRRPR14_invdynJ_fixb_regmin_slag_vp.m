% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRRRPR14
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
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d2,d3,d4,d6,theta5]';
% 
% Output:
% tau_reg [6x35]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 00:33
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRRPR14_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR14_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR14_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPR14_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPR14_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RRRRPR14_invdynJ_fixb_regmin_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 00:25:39
% EndTime: 2019-03-10 00:26:36
% DurationCPUTime: 27.81s
% Computational Cost: add. (37598->936), mult. (107910->1328), div. (0->0), fcn. (91482->18), ass. (0->398)
t435 = cos(qJ(2));
t620 = cos(pkin(6));
t563 = pkin(1) * t620;
t414 = t435 * t563;
t404 = qJD(1) * t414;
t432 = sin(qJ(2));
t427 = sin(pkin(6));
t619 = cos(pkin(7));
t489 = t427 * (-pkin(10) * t619 - pkin(9));
t472 = t432 * t489;
t309 = qJD(1) * t472 + t404;
t413 = t432 * t563;
t445 = t435 * t489 - t413;
t310 = t445 * qJD(1);
t426 = sin(pkin(7));
t633 = pkin(10) * t426;
t494 = pkin(2) * t432 - t435 * t633;
t582 = qJD(1) * t427;
t347 = t494 * t582;
t638 = cos(qJ(3));
t516 = t619 * t638;
t431 = sin(qJ(3));
t607 = t426 * t431;
t478 = pkin(2) * t516 - pkin(10) * t607;
t546 = t431 * t619;
t675 = t478 * qJD(3) - t638 * t309 - t310 * t546 - t347 * t607;
t461 = -t432 * t546 + t435 * t638;
t343 = t461 * t427;
t327 = qJD(1) * t343;
t554 = qJD(3) * t638;
t526 = t426 * t554;
t674 = t526 - t327;
t228 = -t310 * t426 + t619 * t347;
t459 = t431 * t435 + t432 * t516;
t342 = t459 * t427;
t326 = qJD(1) * t342;
t673 = pkin(3) * t326 - pkin(11) * t327 + t228 - (pkin(3) * t431 - pkin(11) * t638) * t426 * qJD(3);
t557 = t432 * t582;
t530 = t426 * t557;
t672 = pkin(11) * t530 - t675;
t639 = cos(qJ(1));
t518 = t620 * t639;
t637 = sin(qJ(1));
t366 = t432 * t518 + t435 * t637;
t471 = t637 * t432 - t435 * t518;
t561 = t427 * t639;
t663 = t426 * t561 + t471 * t619;
t242 = -t366 * t638 + t431 * t663;
t430 = sin(qJ(4));
t434 = cos(qJ(4));
t547 = t427 * t619;
t641 = t426 * t471 - t639 * t547;
t193 = t242 * t434 - t430 * t641;
t239 = t366 * t431 + t638 * t663;
t422 = pkin(13) + qJ(6);
t419 = sin(t422);
t420 = cos(t422);
t671 = t193 * t419 + t239 * t420;
t670 = t193 * t420 - t239 * t419;
t545 = t435 * t619;
t460 = t431 * t545 + t432 * t638;
t451 = t460 * t427;
t543 = t620 * qJD(1);
t500 = t543 + qJD(2);
t480 = t426 * t500;
t466 = t431 * t480;
t273 = qJD(1) * t451 + t466;
t604 = t427 * t435;
t569 = t426 * t604;
t449 = qJD(1) * t569 - t500 * t619 - qJD(3);
t321 = t434 * t449;
t213 = t273 * t430 + t321;
t212 = qJD(6) + t213;
t215 = t434 * t273 - t430 * t449;
t425 = sin(pkin(13));
t428 = cos(pkin(13));
t495 = t435 * t516;
t485 = t427 * t495;
t529 = t431 * t557;
t647 = qJD(1) * t485 + t638 * t480 - t529;
t667 = t647 - qJD(4);
t167 = t215 * t425 + t428 * t667;
t433 = cos(qJ(6));
t169 = t215 * t428 - t425 * t667;
t429 = sin(qJ(6));
t617 = t169 * t429;
t655 = -t433 * t167 - t617;
t669 = t212 * t655;
t364 = t430 * t607 - t434 * t619;
t590 = qJD(4) * t364 + t430 * t530 - t434 * t674;
t606 = t426 * t434;
t365 = t430 * t619 + t431 * t606;
t589 = qJD(4) * t365 + t430 * t674 + t434 * t530;
t562 = t426 * t638;
t584 = pkin(2) * t546 + pkin(10) * t562;
t668 = t584 * qJD(3) - t431 * t309 + t310 * t516;
t580 = qJD(3) * t431;
t555 = t426 * t580;
t656 = t326 - t555;
t559 = t638 * t347;
t587 = -(-pkin(3) * t557 - t559) * t426 + t668;
t353 = pkin(11) * t619 + t584;
t354 = (-pkin(3) * t638 - pkin(11) * t431 - pkin(2)) * t426;
t578 = qJD(4) * t434;
t579 = qJD(4) * t430;
t664 = t353 * t579 - t354 * t578 + t430 * t673 + t672 * t434;
t192 = t242 * t430 + t434 * t641;
t662 = -t353 * t578 - t354 * t579 + t672 * t430 - t434 * t673;
t421 = t427 ^ 2;
t661 = 0.2e1 * t421;
t660 = -qJ(5) * t326 + (qJ(5) * t580 - qJD(5) * t638) * t426 - t664;
t463 = pkin(9) * t604 + t413;
t521 = t427 * t545;
t265 = t463 * qJD(1) + (qJD(1) * t521 + t480) * pkin(10);
t448 = pkin(2) * t620 + t472;
t270 = qJD(2) * pkin(2) + qJD(1) * t448 + t404;
t493 = pkin(2) * t435 + t432 * t633;
t486 = -pkin(1) - t493;
t334 = t486 * t427;
t322 = qJD(1) * t334;
t159 = t638 * t265 + t270 * t546 + t322 * t607;
t659 = qJD(5) * t430 + t159 + t667 * (pkin(4) * t430 - qJ(5) * t434);
t658 = pkin(4) * t589 + qJ(5) * t590 - t365 * qJD(5) + t587;
t654 = pkin(1) * t661;
t502 = t167 * t429 - t169 * t433;
t653 = t212 * t502;
t594 = -t425 * t590 + t428 * t656;
t593 = -t425 * t656 - t428 * t590;
t574 = qJDD(1) * t432;
t551 = t427 * t574;
t575 = qJD(1) * qJD(2);
t552 = t435 * t575;
t648 = t427 * t552 + t551;
t534 = t620 * qJDD(1);
t406 = t534 + qJDD(2);
t437 = qJD(2) * t459 + qJD(3) * t460;
t182 = qJD(3) * t466 - qJDD(1) * t485 - t406 * t562 + t427 * (qJD(1) * t437 + t431 * t574);
t627 = -t425 * t660 + t428 * t658;
t626 = t425 * t658 + t428 * t660;
t624 = pkin(4) * t656 - t662;
t572 = pkin(11) * t579;
t158 = -t431 * t265 + t270 * t516 + t322 * t562;
t201 = pkin(3) * t273 - pkin(11) * t647;
t597 = t434 * t158 + t430 * t201;
t91 = qJ(5) * t273 + t597;
t623 = -t659 * t428 + (t572 + t91) * t425;
t646 = t425 * t659 + t428 * t91;
t645 = t667 * t430;
t517 = t620 * t637;
t455 = t432 * t639 + t435 * t517;
t560 = t427 * t637;
t643 = -t426 * t560 + t455 * t619;
t178 = qJDD(4) + t182;
t642 = -pkin(4) * t178 + qJDD(5);
t367 = -t432 * t517 + t435 * t639;
t243 = t367 * t431 + t638 * t643;
t544 = t620 * t426;
t497 = t638 * t544;
t601 = t431 * t432;
t299 = t427 * t601 - t485 - t497;
t474 = g(1) * t243 + g(2) * t239 + g(3) * t299;
t538 = qJDD(1) * t619;
t508 = t435 * t538;
t542 = t619 * qJD(2);
t181 = t431 * t427 * t508 + qJD(3) * t647 + t406 * t607 - t542 * t529 + t638 * t648;
t553 = t432 * t575;
t525 = t427 * t553;
t573 = qJDD(1) * t435;
t550 = t427 * t573;
t279 = t406 * t619 + qJDD(3) + (t525 - t550) * t426;
t101 = qJD(4) * t215 + t430 * t181 - t434 * t279;
t100 = -qJD(4) * t321 + t434 * t181 - t273 * t579 + t430 * t279;
t73 = t100 * t425 - t428 * t178;
t74 = t100 * t428 + t178 * t425;
t21 = -qJD(6) * t502 + t429 * t74 + t433 * t73;
t436 = qJD(1) ^ 2;
t634 = pkin(5) * t430;
t629 = pkin(12) + qJ(5);
t210 = -t270 * t426 + t619 * t322;
t134 = -pkin(3) * t647 - pkin(11) * t273 + t210;
t141 = -pkin(11) * t449 + t159;
t527 = qJD(2) * t563;
t498 = qJD(1) * t527;
t523 = pkin(1) * t534;
t565 = pkin(9) * t550 + t432 * t523 + t435 * t498;
t462 = -pkin(9) * t525 + t565;
t509 = qJD(1) * t542;
t207 = (t406 * t426 + (-t432 * t509 + t508) * t427) * pkin(10) + t462;
t464 = -t432 * t498 + t435 * t523;
t483 = -t552 - t574;
t465 = t483 * pkin(9);
t211 = t406 * pkin(2) + ((-t432 * t538 - t435 * t509) * pkin(10) + t465) * t427 + t464;
t469 = t494 * qJD(2);
t245 = (qJD(1) * t469 + qJDD(1) * t486) * t427;
t490 = qJD(3) * t516;
t458 = -t638 * t207 - t211 * t546 - t245 * t607 + t265 * t580 - t270 * t490 - t322 * t526;
t59 = pkin(11) * t279 - t458;
t148 = -t211 * t426 + t619 * t245;
t66 = pkin(3) * t182 - pkin(11) * t181 + t148;
t18 = t134 * t578 - t141 * t579 + t430 * t66 + t434 * t59;
t16 = qJ(5) * t178 - qJD(5) * t667 + t18;
t515 = qJD(3) * t546;
t71 = -t431 * t207 + t211 * t516 + t245 * t562 - t265 * t554 - t270 * t515 - t322 * t555;
t60 = -pkin(3) * t279 - t71;
t25 = pkin(4) * t101 - qJ(5) * t100 - qJD(5) * t215 + t60;
t7 = t428 * t16 + t425 * t25;
t522 = t431 * t544;
t224 = qJD(3) * t522 + t427 * t437;
t291 = (t521 + t544) * pkin(10) + t463;
t306 = t414 + t448;
t405 = t435 * t527;
t311 = qJD(2) * t472 + t405;
t312 = t445 * qJD(2);
t348 = t427 * t469;
t457 = -t291 * t580 + t306 * t490 + t638 * t311 + t312 * t546 + t334 * t526 + t348 * t607;
t581 = qJD(2) * t427;
t556 = t432 * t581;
t528 = t426 * t556;
t106 = pkin(11) * t528 + t457;
t225 = qJD(3) * t497 + ((t495 - t601) * qJD(3) + t461 * qJD(2)) * t427;
t229 = -t312 * t426 + t619 * t348;
t122 = pkin(3) * t224 - pkin(11) * t225 + t229;
t223 = -t306 * t426 + t619 * t334;
t300 = t522 + t451;
t154 = pkin(3) * t299 - pkin(11) * t300 + t223;
t361 = -t619 * t620 + t569;
t568 = t638 * t291 + t306 * t546 + t334 * t607;
t162 = -pkin(11) * t361 + t568;
t482 = t434 * t106 + t430 * t122 + t154 * t578 - t162 * t579;
t29 = qJ(5) * t224 + qJD(5) * t299 + t482;
t452 = -t291 * t554 - t306 * t515 - t431 * t311 + t312 * t516 - t334 * t555;
t558 = t638 * t348;
t107 = (-pkin(3) * t556 - t558) * t426 - t452;
t235 = t300 * t434 - t361 * t430;
t146 = qJD(4) * t235 + t225 * t430 - t434 * t528;
t234 = t300 * t430 + t361 * t434;
t147 = -qJD(4) * t234 + t225 * t434 + t430 * t528;
t43 = t146 * pkin(4) - t147 * qJ(5) - t235 * qJD(5) + t107;
t14 = t428 * t29 + t425 * t43;
t78 = t430 * t134 + t434 * t141;
t65 = -qJ(5) * t667 + t78;
t140 = pkin(3) * t449 - t158;
t82 = t213 * pkin(4) - t215 * qJ(5) + t140;
t33 = t425 * t82 + t428 * t65;
t596 = t430 * t154 + t434 * t162;
t84 = qJ(5) * t299 + t596;
t446 = -t431 * t291 + t306 * t516 + t334 * t562;
t161 = t361 * pkin(3) - t446;
t98 = t234 * pkin(4) - t235 * qJ(5) + t161;
t47 = t425 * t98 + t428 * t84;
t628 = pkin(11) * qJD(4);
t625 = pkin(5) * t594 + t624;
t622 = -t428 * t572 - t646;
t609 = t425 * t434;
t197 = -t428 * t273 + t609 * t647;
t564 = pkin(5) * t425 + pkin(11);
t152 = t430 * t158;
t92 = -pkin(4) * t273 - t201 * t434 + t152;
t621 = -pkin(5) * t197 + t564 * t578 - t92;
t145 = pkin(4) * t215 + qJ(5) * t213;
t77 = t134 * t434 - t430 * t141;
t52 = t425 * t145 + t428 * t77;
t618 = qJ(5) * t101;
t616 = t213 * t667;
t615 = t213 * t425;
t614 = t215 * t667;
t613 = t419 * t434;
t612 = t420 * t434;
t611 = t421 * t436;
t610 = t425 * t429;
t608 = t426 * t430;
t605 = t427 * t432;
t603 = t428 * t430;
t602 = t428 * t434;
t62 = pkin(4) * t667 + qJD(5) - t77;
t600 = -qJD(5) + t62;
t307 = t425 * t365 + t428 * t562;
t308 = t428 * t365 - t425 * t562;
t220 = t433 * t307 + t308 * t429;
t599 = -qJD(6) * t220 - t429 * t594 + t433 * t593;
t221 = -t307 * t429 + t308 * t433;
t598 = qJD(6) * t221 + t429 * t593 + t433 * t594;
t352 = -pkin(3) * t619 - t478;
t233 = t364 * pkin(4) - t365 * qJ(5) + t352;
t588 = t434 * t353 + t430 * t354;
t236 = -qJ(5) * t562 + t588;
t165 = t425 * t233 + t428 * t236;
t198 = t273 * t425 + t602 * t647;
t378 = -t433 * t428 + t610;
t379 = t425 * t433 + t428 * t429;
t577 = qJD(6) * t430;
t592 = t197 * t429 - t198 * t433 - t378 * t578 - t379 * t577;
t576 = qJD(6) * t433;
t591 = -t433 * t197 - t198 * t429 + t379 * t578 + t576 * t603 - t577 * t610;
t586 = t212 * t378;
t585 = t212 * t379;
t492 = pkin(4) * t434 + qJ(5) * t430 + pkin(3);
t336 = pkin(11) * t602 - t425 * t492;
t423 = t432 ^ 2;
t583 = -t435 ^ 2 + t423;
t571 = t435 * t611;
t570 = t426 * t605;
t6 = -t16 * t425 + t428 * t25;
t13 = -t29 * t425 + t428 * t43;
t32 = -t425 * t65 + t428 * t82;
t46 = -t425 * t84 + t428 * t98;
t51 = t428 * t145 - t425 * t77;
t541 = t154 * t434 - t430 * t162;
t164 = t428 * t233 - t236 * t425;
t539 = -t430 * t353 + t354 * t434;
t535 = t667 * t434;
t533 = t134 * t579 + t141 * t578 + t430 * t59 - t434 * t66;
t123 = pkin(5) * t364 - pkin(12) * t308 + t164;
t520 = pkin(12) * t594 - qJD(6) * t123 - t626;
t139 = -pkin(12) * t307 + t165;
t519 = -pkin(5) * t589 + pkin(12) * t593 + qJD(6) * t139 - t627;
t514 = t427 * t436 * t620;
t244 = t367 * t638 - t431 * t643;
t438 = -t426 * t455 - t547 * t637;
t194 = t244 * t430 + t434 * t438;
t513 = g(1) * t192 + g(2) * t194;
t4 = pkin(5) * t101 - pkin(12) * t74 + t6;
t5 = -pkin(12) * t73 + t7;
t512 = t429 * t4 + t433 * t5;
t315 = -pkin(12) * t425 * t430 + t336;
t511 = -pkin(12) * t198 + qJD(6) * t315 + t647 * t634 - (-pkin(12) * t602 + t634) * qJD(4) - t623;
t372 = t428 * t492;
t288 = -pkin(12) * t603 - t372 + (-pkin(11) * t425 - pkin(5)) * t434;
t510 = -pkin(12) * t197 - qJD(6) * t288 - (-pkin(11) * t603 - pkin(12) * t609) * qJD(4) + t646;
t238 = pkin(4) * t562 - t539;
t26 = pkin(5) * t213 - pkin(12) * t169 + t32;
t27 = -pkin(12) * t167 + t33;
t9 = t26 * t433 - t27 * t429;
t10 = t26 * t429 + t27 * t433;
t189 = t235 * t428 + t299 * t425;
t31 = pkin(5) * t234 - pkin(12) * t189 + t46;
t188 = t235 * t425 - t299 * t428;
t34 = -pkin(12) * t188 + t47;
t504 = t31 * t433 - t34 * t429;
t503 = t31 * t429 + t34 * t433;
t117 = t433 * t188 + t189 * t429;
t118 = -t188 * t429 + t189 * t433;
t499 = 0.2e1 * t543 + qJD(2);
t491 = -t430 * t106 + t122 * t434 - t154 * t579 - t162 * t578;
t85 = -pkin(4) * t299 - t541;
t396 = t629 * t428;
t488 = pkin(12) * t213 * t428 + pkin(5) * t215 + qJD(5) * t425 + qJD(6) * t396 + t51;
t395 = t629 * t425;
t487 = pkin(12) * t615 - qJD(5) * t428 + qJD(6) * t395 + t52;
t20 = -qJD(6) * t617 - t167 * t576 - t429 * t73 + t433 * t74;
t484 = -pkin(11) * t178 - t140 * t667;
t479 = t427 * (t534 + t406);
t477 = g(1) * t194 - g(2) * t192 + g(3) * t234;
t195 = t244 * t434 - t430 * t438;
t476 = -g(1) * t195 + g(2) * t193 - g(3) * t235;
t261 = -t366 * t546 - t471 * t638;
t216 = t261 * t430 - t366 * t606;
t263 = -t367 * t546 - t455 * t638;
t218 = t263 * t430 - t367 * t606;
t274 = t343 * t430 - t434 * t570;
t475 = -g(1) * t218 - g(2) * t216 - g(3) * t274;
t473 = g(1) * t244 - g(2) * t242 + g(3) * t300;
t17 = t533 + t642;
t468 = -t17 + t477;
t467 = t474 - t60;
t30 = -pkin(4) * t224 - t491;
t2 = -qJD(6) * t10 + t433 * t4 - t429 * t5;
t450 = t477 - t533;
t444 = qJD(3) * t449;
t442 = t500 * t463;
t441 = t449 * t570;
t417 = -pkin(5) * t428 - pkin(4);
t383 = t564 * t430;
t356 = t378 * t430;
t355 = t379 * t430;
t335 = -pkin(11) * t609 - t372;
t275 = t343 * t434 + t430 * t570;
t262 = t367 * t516 - t431 * t455;
t260 = t366 * t516 - t431 * t471;
t219 = t263 * t434 + t367 * t608;
t217 = t261 * t434 + t366 * t608;
t199 = pkin(5) * t307 + t238;
t131 = t195 * t420 + t243 * t419;
t130 = -t195 * t419 + t243 * t420;
t113 = t147 * t428 + t224 * t425;
t112 = t147 * t425 - t224 * t428;
t99 = qJDD(6) + t101;
t58 = pkin(5) * t188 + t85;
t57 = -pkin(5) * t615 + t78;
t48 = pkin(5) * t167 + t62;
t36 = qJD(6) * t118 + t433 * t112 + t113 * t429;
t35 = -qJD(6) * t117 - t112 * t429 + t113 * t433;
t22 = pkin(5) * t112 + t30;
t12 = pkin(5) * t73 + t17;
t11 = -pkin(12) * t112 + t14;
t8 = pkin(5) * t146 - pkin(12) * t113 + t13;
t1 = t9 * qJD(6) + t512;
t3 = [qJDD(1), g(1) * t637 - g(2) * t639, g(1) * t639 + g(2) * t637 (qJDD(1) * t423 + 0.2e1 * t432 * t552) * t421 (t432 * t573 - t575 * t583) * t661, t435 * t499 * t581 + t432 * t479, t435 * t479 - t499 * t556, t406 * t620, -qJD(2) * t442 + (-pkin(9) * t605 + t414) * t406 + (t427 * t465 + t464) * t620 + g(1) * t366 - g(2) * t367 + (t573 - t553) * t654 -(-pkin(9) * t556 + t405) * t500 - t463 * t406 - t462 * t620 - g(1) * t471 + g(2) * t455 + t483 * t654, t181 * t300 + t225 * t273, -t181 * t299 - t182 * t300 - t224 * t273 + t225 * t647, -t181 * t361 - t225 * t449 + t273 * t528 + t300 * t279, t182 * t361 + t224 * t449 - t299 * t279 + t528 * t647, -qJD(2) * t441 - t279 * t361 -(t426 * t558 + t452) * t449 + t446 * t279 - t71 * t361 + t158 * t528 - t229 * t647 + t223 * t182 + t148 * t299 + t210 * t224 - g(1) * t242 - g(2) * t244, -g(1) * t239 + g(2) * t243 + t148 * t300 - t159 * t528 + t223 * t181 + t210 * t225 + t229 * t273 - t279 * t568 - t361 * t458 + t449 * t457, t100 * t235 + t147 * t215, -t100 * t234 - t101 * t235 - t146 * t215 - t147 * t213, t100 * t299 - t147 * t667 + t178 * t235 + t215 * t224, -t101 * t299 + t146 * t667 - t178 * t234 - t213 * t224, t178 * t299 - t224 * t667, -g(1) * t193 - g(2) * t195 + t161 * t101 + t107 * t213 + t140 * t146 + t178 * t541 + t77 * t224 + t60 * t234 - t299 * t533 - t491 * t667, t161 * t100 + t107 * t215 + t140 * t147 - t178 * t596 - t18 * t299 - t78 * t224 + t60 * t235 + t482 * t667 + t513, t13 * t213 + t46 * t101 + t6 * t234 + t32 * t146 + t30 * t167 + t85 * t73 + t17 * t188 + t62 * t112 - g(1) * (t193 * t428 - t239 * t425) - g(2) * (t195 * t428 + t243 * t425) -t14 * t213 - t47 * t101 - t7 * t234 - t33 * t146 + t30 * t169 + t85 * t74 + t17 * t189 + t62 * t113 - g(1) * (-t193 * t425 - t239 * t428) - g(2) * (-t195 * t425 + t243 * t428) -t112 * t33 - t113 * t32 - t13 * t169 - t14 * t167 - t188 * t7 - t189 * t6 - t46 * t74 - t47 * t73 - t513, t7 * t47 + t33 * t14 + t6 * t46 + t32 * t13 + t17 * t85 + t62 * t30 - g(1) * (-pkin(1) * t637 - t366 * pkin(2) + t242 * pkin(3) + t193 * pkin(4) + pkin(9) * t561 - pkin(11) * t239 + t192 * qJ(5)) - g(2) * (pkin(1) * t639 + t367 * pkin(2) + t244 * pkin(3) + t195 * pkin(4) + pkin(9) * t560 + t243 * pkin(11) + t194 * qJ(5)) + (g(1) * t641 + g(2) * t438) * pkin(10), t118 * t20 - t35 * t502, -t117 * t20 - t118 * t21 + t35 * t655 + t36 * t502, t118 * t99 - t146 * t502 + t20 * t234 + t212 * t35, -t117 * t99 + t146 * t655 - t21 * t234 - t212 * t36, t146 * t212 + t234 * t99 (-qJD(6) * t503 - t11 * t429 + t433 * t8) * t212 + t504 * t99 + t2 * t234 + t9 * t146 - t22 * t655 + t58 * t21 + t12 * t117 + t48 * t36 - g(1) * t670 - g(2) * t131 -(qJD(6) * t504 + t11 * t433 + t429 * t8) * t212 - t503 * t99 - t1 * t234 - t10 * t146 - t22 * t502 + t58 * t20 + t12 * t118 + t48 * t35 + g(1) * t671 - g(2) * t130; 0, 0, 0, -t432 * t571, t583 * t611, -t435 * t514 + t551, t432 * t514 + t550, t406, pkin(1) * t432 * t611 - pkin(9) * t648 + g(1) * t455 + g(2) * t471 - g(3) * t604 + qJD(1) * t442 + t464 (-pkin(9) * t557 + t404) * t543 + pkin(1) * t571 + g(1) * t367 + g(2) * t366 + g(3) * t605 + t404 * qJD(2) - t565, t181 * t607 + t273 * t674, -t327 * t647 + t273 * t326 + (t638 * t181 - t182 * t431 + (-t273 * t431 + t638 * t647) * qJD(3)) * t426, t181 * t619 + t327 * t449 + (-t273 * t557 + t431 * t279 - t444 * t638) * t426, -t182 * t619 - t326 * t449 + (t279 * t638 + t431 * t444 - t557 * t647) * t426, qJD(1) * t441 + t279 * t619, -t426 * pkin(2) * t182 - g(1) * t263 - g(2) * t261 - g(3) * t343 - t148 * t562 - t158 * t530 - t656 * t210 + t228 * t647 + t478 * t279 + t71 * t619 + (t426 * t559 + t668) * t449, -t584 * t279 + t458 * t619 - t228 * t273 - t210 * t327 + g(1) * t262 + g(2) * t260 + g(3) * t342 + (-pkin(2) * t181 + t148 * t431 + t159 * t557 + t210 * t554) * t426 + t675 * t449, t100 * t365 - t215 * t590, -t100 * t364 - t101 * t365 + t213 * t590 - t215 * t589, -t100 * t562 + t365 * t178 - t215 * t656 + t590 * t667, t101 * t562 - t364 * t178 + t213 * t656 + t589 * t667, -t178 * t562 + t656 * t667, t539 * t178 + t352 * t101 + t60 * t364 - t77 * t326 - g(1) * t219 - g(2) * t217 - g(3) * t275 + (t533 * t638 + t580 * t77) * t426 - t662 * t667 + t587 * t213 + t589 * t140, -t588 * t178 + t352 * t100 + t60 * t365 + t78 * t326 + (t18 * t638 - t580 * t78) * t426 - t664 * t667 + t587 * t215 - t590 * t140 - t475, t164 * t101 + t6 * t364 + t238 * t73 + t17 * t307 - g(1) * (t219 * t428 + t262 * t425) - g(2) * (t217 * t428 + t260 * t425) - g(3) * (t275 * t428 + t342 * t425) + t594 * t62 + t589 * t32 + t627 * t213 + t624 * t167, -t165 * t101 - t7 * t364 + t238 * t74 + t17 * t308 - g(1) * (-t219 * t425 + t262 * t428) - g(2) * (-t217 * t425 + t260 * t428) - g(3) * (-t275 * t425 + t342 * t428) + t593 * t62 - t589 * t33 - t626 * t213 + t624 * t169, -t164 * t74 - t165 * t73 - t167 * t626 - t169 * t627 - t307 * t7 - t308 * t6 - t32 * t593 - t33 * t594 + t475, t7 * t165 + t6 * t164 + t17 * t238 - g(1) * (-pkin(2) * t455 + t263 * pkin(3) + t219 * pkin(4) + t262 * pkin(11) + t218 * qJ(5) + t367 * t633) - g(2) * (-pkin(2) * t471 + t261 * pkin(3) + t217 * pkin(4) + t260 * pkin(11) + t216 * qJ(5) + t366 * t633) - g(3) * (pkin(3) * t343 + pkin(4) * t275 + pkin(11) * t342 + qJ(5) * t274 + t427 * t493) + t624 * t62 + t626 * t33 + t627 * t32, t20 * t221 - t502 * t599, -t20 * t220 - t21 * t221 + t502 * t598 + t599 * t655, t20 * t364 + t212 * t599 + t221 * t99 - t502 * t589, -t21 * t364 - t212 * t598 - t220 * t99 + t589 * t655, t212 * t589 + t364 * t99 (t123 * t433 - t139 * t429) * t99 + t2 * t364 + t199 * t21 + t12 * t220 - g(1) * (t219 * t420 + t262 * t419) - g(2) * (t217 * t420 + t260 * t419) - g(3) * (t275 * t420 + t342 * t419) - t625 * t655 + t589 * t9 + t598 * t48 + (t429 * t520 - t433 * t519) * t212 -(t123 * t429 + t139 * t433) * t99 - t1 * t364 + t199 * t20 + t12 * t221 - g(1) * (-t219 * t419 + t262 * t420) - g(2) * (-t217 * t419 + t260 * t420) - g(3) * (-t275 * t419 + t342 * t420) - t625 * t502 + t599 * t48 + (t429 * t519 + t433 * t520) * t212 - t589 * t10; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t273 * t647, t273 ^ 2 - t647 ^ 2, t449 * t647 + t181, -t273 * t449 - t182, t279, -t159 * t449 - t210 * t273 + t474 + t71, -t158 * t449 - t210 * t647 + t458 + t473, t100 * t430 - t215 * t535 (t100 + t616) * t434 + (-t101 + t614) * t430, t178 * t430 - t215 * t273 + t535 * t667, t178 * t434 + t213 * t273 - t645 * t667, t667 * t273, -pkin(3) * t101 - t152 * t667 - t159 * t213 - t77 * t273 + t484 * t430 + (-(-t201 - t628) * t667 + t467) * t434, -pkin(3) * t100 - t597 * t667 + t78 * t273 - t159 * t215 + t484 * t434 + (-t628 * t667 - t467) * t430, t335 * t101 - t92 * t167 - t62 * t197 + t623 * t213 - t473 * t425 + (-t6 + (pkin(11) * t167 + t425 * t62) * qJD(4) + t474 * t428) * t434 + (pkin(11) * t73 + t17 * t425 - t32 * t667) * t430, -t336 * t101 - t92 * t169 - t62 * t198 - t622 * t213 - t473 * t428 + (t7 + (pkin(11) * t169 + t428 * t62) * qJD(4) - t474 * t425) * t434 + (pkin(11) * t74 + t17 * t428 + t33 * t667) * t430, t197 * t33 + t198 * t32 - t335 * t74 - t336 * t73 - t623 * t169 - t622 * t167 + (-t32 * t428 - t33 * t425) * t578 + (-t425 * t7 - t428 * t6 + t474) * t430, t6 * t335 + t7 * t336 - t62 * t92 + t622 * t33 + t623 * t32 + (t17 * t430 + t578 * t62 - t473) * pkin(11) + t474 * t492, -t20 * t356 - t502 * t592, -t20 * t355 + t21 * t356 + t502 * t591 + t592 * t655, -t20 * t434 + t212 * t592 - t356 * t99 + t502 * t645, t21 * t434 - t212 * t591 - t355 * t99 - t645 * t655, -t212 * t645 - t434 * t99 (t288 * t433 - t315 * t429) * t99 - t2 * t434 + t383 * t21 + t12 * t355 - g(1) * (-t243 * t612 + t244 * t419) - g(2) * (-t239 * t612 - t242 * t419) - g(3) * (-t299 * t612 + t300 * t419) - t621 * t655 + t591 * t48 - t9 * t645 + (t429 * t510 - t433 * t511) * t212 -(t288 * t429 + t315 * t433) * t99 + t1 * t434 + t383 * t20 - t12 * t356 - g(1) * (t243 * t613 + t244 * t420) - g(2) * (t239 * t613 - t242 * t420) - g(3) * (t299 * t613 + t300 * t420) - t621 * t502 + t592 * t48 + (t429 * t511 + t433 * t510) * t212 + t10 * t645; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t215 * t213, -t213 ^ 2 + t215 ^ 2, t100 - t616, -t101 - t614, t178, -t140 * t215 - t667 * t78 + t450, t140 * t213 - t667 * t77 - t18 - t476, -t425 * t618 - pkin(4) * t73 - t167 * t78 - t215 * t32 + (t425 * t600 - t51) * t213 + t468 * t428, -t428 * t618 - pkin(4) * t74 - t169 * t78 + t215 * t33 + (t428 * t600 + t52) * t213 - t468 * t425, t167 * t52 + t169 * t51 + (-qJ(5) * t73 - qJD(5) * t167 - t213 * t32 + t7) * t428 + (qJ(5) * t74 + qJD(5) * t169 - t213 * t33 - t6) * t425 + t476, -t32 * t51 - t33 * t52 - t62 * t78 + (-t32 * t425 + t33 * t428) * qJD(5) + t468 * pkin(4) + (-t425 * t6 + t428 * t7 + t476) * qJ(5), t20 * t379 + t502 * t586, -t20 * t378 - t21 * t379 + t502 * t585 - t586 * t655, -t212 * t586 + t215 * t502 + t379 * t99, -t212 * t585 - t215 * t655 - t378 * t99, -t212 * t215 (-t395 * t433 - t396 * t429) * t99 + t417 * t21 + t12 * t378 - t9 * t215 + t57 * t655 + t585 * t48 + (t429 * t487 - t433 * t488) * t212 + t477 * t420 -(-t395 * t429 + t396 * t433) * t99 + t417 * t20 + t12 * t379 + t10 * t215 + t57 * t502 - t586 * t48 + (t429 * t488 + t433 * t487) * t212 - t477 * t419; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t169 * t213 + t73, -t167 * t213 + t74, -t167 ^ 2 - t169 ^ 2, t167 * t33 + t169 * t32 - t450 + t642, 0, 0, 0, 0, 0, t21 - t653, t20 + t669; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t502 * t655, t502 ^ 2 - t655 ^ 2, t20 - t669, -t21 - t653, t99, t10 * t212 + t48 * t502 - g(1) * t130 - g(2) * t671 - g(3) * (-t235 * t419 + t299 * t420) + t2, -t48 * t655 + g(1) * t131 - g(2) * t670 - g(3) * (-t235 * t420 - t299 * t419) - t512 + (t212 - qJD(6)) * t9;];
tau_reg  = t3;
