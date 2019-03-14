% Calculate minimal parameter regressor of coriolis matrix for
% S6RPRRRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x30]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 06:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPRRRP6_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP6_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP6_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP6_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 06:16:47
% EndTime: 2019-03-09 06:17:10
% DurationCPUTime: 13.20s
% Computational Cost: add. (17670->588), mult. (35059->785), div. (0->0), fcn. (40623->8), ass. (0->463)
t443 = cos(qJ(4));
t702 = pkin(8) + pkin(9);
t422 = t702 * t443;
t442 = cos(qJ(5));
t417 = t442 * t422;
t440 = sin(qJ(4));
t421 = t702 * t440;
t439 = sin(qJ(5));
t609 = t439 * t421;
t346 = t417 - t609;
t412 = t439 * t440 - t442 * t443;
t286 = -qJ(6) * t412 + t346;
t733 = -t286 / 0.2e1;
t437 = sin(pkin(10));
t438 = cos(pkin(10));
t441 = sin(qJ(3));
t681 = cos(qJ(3));
t408 = t437 * t441 - t438 * t681;
t730 = -t408 / 0.2e1;
t428 = -pkin(2) * t438 - pkin(1);
t534 = t681 * t437;
t605 = t441 * t438;
t410 = t534 + t605;
t501 = pkin(3) * t408 - pkin(8) * t410;
t304 = t428 + t501;
t667 = pkin(7) + qJ(2);
t419 = t667 * t437;
t405 = t441 * t419;
t420 = t667 * t438;
t407 = t681 * t420;
t337 = t407 - t405;
t606 = t440 * t337;
t193 = -t443 * t304 + t606;
t602 = t443 * t410;
t168 = -pkin(9) * t602 - t193;
t671 = t408 * pkin(4);
t151 = t168 + t671;
t149 = t442 * t151;
t624 = t337 * t443;
t194 = t440 * t304 + t624;
t308 = t440 * t410;
t169 = -pkin(9) * t308 + t194;
t612 = t439 * t169;
t108 = -t149 + t612;
t295 = -t308 * t439 + t442 * t602;
t277 = t295 * qJ(6);
t77 = -t108 - t277;
t61 = pkin(5) * t408 + t77;
t734 = t61 * t733;
t732 = t295 * t733;
t336 = t681 * t419 + t420 * t441;
t262 = pkin(4) * t308 + t336;
t603 = t442 * t440;
t608 = t439 * t443;
t414 = t603 + t608;
t687 = -t414 / 0.2e1;
t431 = -pkin(4) * t443 - pkin(3);
t724 = -t431 / 0.2e1;
t731 = -t262 * t687 - t295 * t724 + t346 * t730;
t167 = t442 * t169;
t109 = t439 * t151 + t167;
t222 = t410 * t414;
t656 = qJ(6) * t222;
t78 = t109 - t656;
t613 = t439 * t168;
t113 = -t167 - t613;
t88 = t113 + t656;
t729 = t78 + t88;
t311 = t443 * t408;
t674 = pkin(8) * t408;
t680 = pkin(3) * t410;
t326 = t674 + t680;
t318 = t443 * t326;
t625 = t336 * t440;
t160 = t410 * pkin(4) + pkin(9) * t311 + t318 + t625;
t156 = t442 * t160;
t306 = t440 * t408;
t317 = t440 * t326;
t325 = t336 * t443;
t592 = t325 - t317;
t179 = pkin(9) * t306 - t592;
t611 = t439 * t179;
t496 = t156 / 0.2e1 - t611 / 0.2e1;
t42 = t496 + t731;
t39 = t496 - t731;
t512 = t442 * t421 + t439 * t422;
t715 = -t414 * qJ(6) - t512;
t723 = t715 / 0.2e1;
t722 = t723 - t715 / 0.2e1;
t92 = t722 * t414;
t688 = -t412 / 0.2e1;
t726 = -t222 * t724 - t262 * t688 + t512 * t730;
t556 = t410 * qJD(1);
t328 = t408 * t556;
t395 = t534 / 0.2e1 + t605 / 0.2e1;
t716 = t395 * qJD(4) + t328;
t552 = qJD(4) + qJD(5);
t155 = t439 * t160;
t172 = t442 * t179;
t520 = -t155 / 0.2e1 - t172 / 0.2e1;
t40 = t520 + t726;
t41 = t520 - t726;
t721 = 0.2e1 * t440;
t719 = t722 * t78;
t718 = t412 * t552;
t399 = t408 ^ 2;
t400 = t410 ^ 2;
t714 = -t400 - t399;
t551 = t400 - t399;
t713 = qJD(5) * t395 + t716;
t710 = t78 * t687 + t732;
t690 = -t222 / 0.2e1;
t691 = t222 / 0.2e1;
t709 = t61 * t412 / 0.2e1 + t710 + (t690 + t691) * t715;
t435 = t440 ^ 2;
t436 = t443 ^ 2;
t426 = t436 - t435;
t514 = t602 * t721;
t457 = qJD(1) * t514 - t426 * qJD(3);
t708 = t552 * t512;
t707 = t295 ^ 2;
t411 = t412 ^ 2;
t706 = t414 ^ 2;
t705 = -pkin(5) / 0.2e1;
t704 = -t61 / 0.2e1;
t356 = t439 * t306;
t536 = t442 * t311;
t294 = t356 - t536;
t513 = t156 - t611;
t75 = pkin(5) * t410 - qJ(6) * t294 + t513;
t703 = t75 / 0.2e1;
t701 = t88 * pkin(5);
t700 = -t149 / 0.2e1;
t699 = -t151 / 0.2e1;
t522 = -t167 / 0.2e1;
t692 = t286 / 0.2e1;
t676 = pkin(5) * t412;
t355 = t431 + t676;
t689 = -t355 / 0.2e1;
t686 = t414 / 0.2e1;
t521 = -t417 / 0.2e1;
t668 = t442 * pkin(4);
t430 = pkin(5) + t668;
t685 = -t430 / 0.2e1;
t684 = -t440 / 0.2e1;
t683 = t442 / 0.2e1;
t682 = -t443 / 0.2e1;
t679 = pkin(5) * t222;
t678 = pkin(5) * t294;
t677 = pkin(5) * t295;
t675 = pkin(5) * t414;
t673 = t286 * pkin(5);
t291 = t414 * t408;
t672 = t291 * pkin(5);
t670 = t439 * pkin(4);
t669 = t440 * pkin(4);
t658 = t78 * t412;
t659 = t61 * t414;
t666 = -t659 / 0.2e1 - t658 / 0.2e1;
t665 = t61 - t77;
t663 = pkin(4) * qJD(4);
t662 = pkin(4) * qJD(5);
t661 = pkin(5) * qJD(5);
t660 = pkin(5) * qJD(6);
t12 = t665 * t222;
t654 = qJD(1) * t12;
t173 = t262 + t679;
t15 = t173 * t677 - t665 * t78;
t653 = qJD(1) * t15;
t452 = -t291 * t723 + t294 * t733 + t410 * t689;
t597 = t172 + t155;
t84 = qJ(6) * t291 + t597;
t473 = t686 * t84 + t688 * t75;
t24 = t452 + t473;
t652 = qJD(1) * t24;
t28 = -t222 * t78 - t295 * t61;
t651 = qJD(1) * t28;
t544 = -t671 / 0.2e1;
t503 = t544 + t168 / 0.2e1;
t35 = t442 * t503 + t700;
t650 = qJD(1) * t35;
t550 = pkin(4) * t602;
t638 = t262 * t295;
t37 = t113 * t408 + t222 * t550 + t638;
t649 = qJD(1) * t37;
t604 = t442 * t168;
t114 = t604 - t612;
t639 = t262 * t222;
t38 = -t114 * t408 + t295 * t550 - t639;
t648 = qJD(1) * t38;
t45 = t108 * t408 - t639;
t647 = qJD(1) * t45;
t46 = -t109 * t408 + t638;
t646 = qJD(1) * t46;
t381 = pkin(4) * t306;
t263 = -t381 + t337;
t174 = t263 - t672;
t11 = t173 * t174 + t61 * t75 + t78 * t84;
t645 = t11 * qJD(1);
t13 = -t222 * t84 + t291 * t78 - t294 * t61 - t295 * t75;
t644 = t13 * qJD(1);
t89 = t114 - t277;
t14 = -t729 * t295 + (t61 - t89) * t222;
t643 = t14 * qJD(1);
t477 = t550 + t677;
t16 = t173 * t477 + t61 * t88 + t78 * t89;
t642 = t16 * qJD(1);
t25 = t173 * t410 + t291 * t61 + t294 * t78;
t641 = t25 * qJD(1);
t26 = -t108 * t410 + t222 * t263 - t262 * t291 + t408 * t513;
t640 = t26 * qJD(1);
t27 = -t109 * t410 + t262 * t294 + t263 * t295 - t408 * t597;
t635 = t27 * qJD(1);
t633 = t291 * t295;
t632 = t291 * t408;
t631 = t222 * t294;
t630 = t222 * t410;
t629 = t294 * t408;
t628 = t294 * t412;
t627 = t295 * t410;
t626 = t295 * t412;
t621 = t412 * t222;
t620 = t412 * t408;
t619 = t414 * t291;
t618 = t414 * t222;
t617 = t414 * t295;
t616 = t430 * t414;
t610 = t439 * t412;
t607 = t440 * t222;
t68 = t318 * t408 + (-t193 + t606) * t410;
t601 = t68 * qJD(1);
t69 = (-t194 + t624) * t410 + (t592 - t325) * t408;
t600 = t69 * qJD(1);
t117 = -t617 + t621;
t599 = t552 * t117;
t241 = -t618 / 0.2e1;
t529 = -t626 / 0.2e1;
t147 = t241 + t529;
t598 = t552 * t147;
t469 = t608 / 0.2e1 + t603 / 0.2e1;
t206 = (t686 + t469) * t408;
t595 = t552 * t206;
t211 = (t469 + t687) * t408;
t594 = t552 * t211;
t591 = -t356 / 0.2e1 + t536 / 0.2e1;
t528 = t442 * t730;
t590 = t356 / 0.2e1 + t443 * t528;
t423 = t437 ^ 2 + t438 ^ 2;
t100 = -t619 - t628;
t589 = qJD(1) * t100;
t118 = -t631 - t633;
t588 = qJD(1) * t118;
t131 = -t194 * t408 + t336 * t602;
t587 = qJD(1) * t131;
t134 = t618 / 0.2e1 + t529 + t395;
t586 = qJD(1) * t134;
t143 = -t630 + t632;
t585 = qJD(1) * t143;
t144 = t630 + t632;
t584 = qJD(1) * t144;
t145 = t627 + t629;
t583 = qJD(1) * t145;
t146 = t627 - t629;
t582 = qJD(1) * t146;
t250 = t551 * t440;
t581 = qJD(1) * t250;
t251 = t714 * t440;
t580 = qJD(1) * t251;
t252 = t551 * t443;
t579 = qJD(1) * t252;
t578 = qJD(1) * t295;
t577 = qJD(2) * t443;
t575 = qJD(3) * t414;
t574 = qJD(3) * t431;
t573 = qJD(3) * t443;
t572 = qJD(4) * t440;
t571 = qJD(4) * t443;
t570 = qJD(5) * t431;
t119 = -t631 + t633;
t569 = t119 * qJD(1);
t130 = t193 * t408 - t308 * t336;
t568 = t130 * qJD(1);
t196 = t206 * qJD(1);
t526 = t620 / 0.2e1;
t207 = t526 + t590;
t197 = t207 * qJD(1);
t527 = -t620 / 0.2e1;
t208 = t527 + t591;
t199 = t208 * qJD(1);
t220 = t410 * t412;
t566 = t220 * qJD(1);
t565 = t222 * qJD(1);
t564 = t551 * qJD(1);
t563 = t306 * qJD(1);
t562 = t308 * qJD(1);
t561 = t311 * qJD(1);
t316 = t714 * t443;
t560 = t316 * qJD(1);
t559 = t395 * qJD(1);
t557 = t408 * qJD(1);
t392 = t408 * qJD(3);
t555 = t410 * qJD(3);
t418 = t423 * qJ(2);
t554 = t418 * qJD(1);
t553 = t423 * qJD(1);
t517 = t692 + t733;
t93 = -t412 * t517 + t92;
t549 = t93 * qJD(4) + t92 * qJD(5);
t548 = t414 * t661;
t547 = t439 * t662;
t546 = t677 / 0.2e1;
t391 = t675 / 0.2e1;
t545 = -t672 / 0.2e1;
t543 = -t670 / 0.2e1;
t542 = t670 / 0.2e1;
t541 = t669 / 0.2e1;
t540 = t668 / 0.2e1;
t539 = t77 / 0.2e1 + t704;
t538 = t78 / 0.2e1 + t88 / 0.2e1;
t537 = t89 / 0.2e1 + t704;
t535 = t658 / 0.2e1;
t533 = t440 * t573;
t532 = t408 * t571;
t327 = t408 * t555;
t531 = t440 * t571;
t530 = t443 * t556;
t525 = -t616 / 0.2e1;
t524 = t439 * t690;
t523 = -t610 / 0.2e1;
t516 = t317 / 0.2e1 - t325 / 0.2e1;
t515 = pkin(4) * t552;
t508 = t552 * t408;
t507 = t552 * t414;
t506 = t550 / 0.2e1;
t505 = qJD(1) * t428 + qJD(2);
t504 = -qJD(4) - t557;
t502 = t540 + t685;
t500 = t669 + t675;
t498 = qJD(3) * t514;
t461 = -t291 * t543 + t294 * t685;
t5 = t222 * t722 + t295 * t517 + t412 * t537 + t414 * t538 + t461;
t495 = t5 * qJD(1);
t445 = t77 * t688 + t709 - t710;
t8 = t678 / 0.2e1 + t445;
t494 = qJD(1) * t8;
t493 = -qJD(5) + t504;
t462 = -t291 * t685 + t294 * t542;
t17 = t412 * t538 - t414 * t537 + t462;
t489 = -t17 * qJD(1) + t93 * qJD(3);
t455 = t686 * t77 + t535 + t666;
t20 = t545 + t455;
t488 = -qJD(1) * t20 - qJD(3) * t92;
t142 = -t286 * t412 - t414 * t715;
t456 = -t381 / 0.2e1 - t405 / 0.2e1 + t407 / 0.2e1 + t545;
t470 = t286 * t691 + t295 * t723;
t21 = t535 + t659 / 0.2e1 + t456 + t470;
t487 = -qJD(1) * t21 + qJD(3) * t142;
t29 = (t295 * t684 + (-t439 / 0.2e1 + t414 * t682) * t410) * pkin(4) + t40;
t303 = -t412 * t431 + t414 * t669;
t486 = t29 * qJD(1) - t303 * qJD(3);
t30 = (-t607 / 0.2e1 + (t412 * t682 + t683) * t410) * pkin(4) + t39;
t302 = t412 * t669 + t414 * t431;
t485 = -t30 * qJD(1) + t302 * qJD(3);
t33 = t522 + t167 / 0.2e1 + (t699 + t503) * t439;
t344 = t521 + t417 / 0.2e1;
t484 = qJD(1) * t33 + qJD(3) * t344;
t483 = t504 * t443;
t288 = t222 ^ 2;
t136 = t288 - t707;
t49 = qJD(1) * t136 + qJD(3) * t117;
t287 = t411 - t706;
t105 = qJD(1) * t117 + qJD(3) * t287;
t121 = (t685 + t705) * t295 + (t524 - t602 / 0.2e1) * pkin(4);
t390 = -t675 / 0.2e1;
t217 = t525 + t390 + (t523 + t684) * pkin(4);
t482 = qJD(1) * t121 + qJD(3) * t217;
t475 = t705 - t502;
t129 = t475 * t222;
t245 = t475 * t412;
t481 = qJD(1) * t129 + qJD(3) * t245;
t150 = t617 + t621;
t192 = t288 + t707;
t480 = qJD(1) * t192 + qJD(3) * t150;
t338 = t411 + t706;
t479 = qJD(1) * t150 + qJD(3) * t338;
t478 = t575 + t578;
t476 = t674 / 0.2e1 + t680 / 0.2e1;
t474 = t502 * t414;
t449 = t476 * t440 + t325 / 0.2e1;
t124 = t449 + t516;
t472 = pkin(3) * t573 - t124 * qJD(1);
t460 = t476 * t443;
t126 = -t318 / 0.2e1 - t460;
t471 = pkin(3) * t440 * qJD(3) - t126 * qJD(1);
t468 = qJD(1) * t39 - t414 * t574;
t467 = qJD(1) * t40 + t412 * t574;
t466 = t410 * t483;
t111 = qJD(3) * t147 - t222 * t578;
t123 = -qJD(1) * t147 + t412 * t575;
t305 = (t435 / 0.2e1 - t436 / 0.2e1) * t410;
t465 = -t305 * qJD(1) + t533;
t464 = t430 * t703 + t542 * t84;
t459 = qJD(1) * t400 * t440 * t443 + t305 * qJD(3);
t315 = t426 * t400;
t458 = t315 * qJD(1) + t498;
t444 = t173 * t500 / 0.2e1 + t734 + t89 * t692 + t477 * t355 / 0.2e1 + t729 * t723;
t1 = -t444 + t464;
t107 = t355 * t500;
t454 = -t1 * qJD(1) + t93 * qJD(2) + t107 * qJD(3);
t110 = t355 * t675;
t3 = -t719 - t539 * t286 + (t173 * t687 + t295 * t689 + t703) * pkin(5);
t453 = -qJD(1) * t3 + qJD(2) * t92 + qJD(3) * t110;
t447 = (t439 * t539 + t683 * t78) * pkin(4) + t78 * t685;
t10 = -t701 / 0.2e1 + t447;
t247 = t391 + t474;
t380 = (-t430 + t668) * t670;
t446 = (t286 * t683 + t439 * t722) * pkin(4) + t286 * t685;
t87 = t673 / 0.2e1 + t446;
t450 = -qJD(1) * t10 - qJD(2) * t247 - qJD(3) * t87 - qJD(4) * t380;
t385 = t395 * qJD(3);
t379 = t443 * t555;
t299 = t306 * qJD(4);
t298 = t305 * qJD(4);
t290 = 0.2e1 * t521 + t609;
t271 = -t563 - t572;
t246 = t390 + t474;
t244 = t676 / 0.2e1 - t502 * t412;
t216 = pkin(4) * t523 + t391 + t525 + t541;
t215 = t478 * pkin(5);
t210 = t526 + t591;
t209 = t527 + t590;
t205 = t211 * qJD(2);
t200 = t210 * qJD(2);
t198 = t208 * qJD(2);
t195 = t206 * qJD(2);
t159 = -t507 - t196;
t158 = -t199 + t718;
t157 = -t197 - t718;
t141 = t150 * qJD(6);
t135 = t241 + t626 / 0.2e1 + t395;
t133 = qJD(3) * t206 + t295 * t557;
t132 = qJD(3) * t207 + t222 * t557;
t128 = t679 / 0.2e1 - t502 * t222;
t127 = t625 + t318 / 0.2e1 - t460;
t125 = t449 - t516;
t120 = pkin(4) * t524 + t295 * t685 + t506 + t546;
t104 = qJD(3) * t211 + t295 * t493;
t103 = qJD(3) * t209 + t222 * t493;
t86 = -t673 / 0.2e1 + t446;
t36 = pkin(4) * t528 + t612 + t700 - t604 / 0.2e1;
t34 = 0.2e1 * t522 - t613 / 0.2e1 + (t544 + t699) * t439;
t32 = t295 * t541 + t410 * t543 + t414 * t506 + t41;
t31 = pkin(4) * t607 / 0.2e1 + t412 * t506 + t410 * t540 + t42;
t23 = -t452 + t473;
t22 = t456 - t470 + t666;
t19 = t672 / 0.2e1 + t455;
t18 = t686 * t89 + t688 * t88 + t462 + t666;
t9 = t701 / 0.2e1 + t447;
t7 = -t678 / 0.2e1 + t445;
t6 = t88 * t687 + t89 * t688 + t461 + t709 - t732;
t4 = pkin(5) * t703 + t173 * t391 + t355 * t546 + t77 * t692 + t719 + t734;
t2 = t444 + t464;
t43 = [0, 0, 0, 0, 0, t423 * qJD(2), t418 * qJD(2), -t327, -t551 * qJD(3), 0, 0, 0, t428 * t555, -t428 * t392, -t327 * t436 - t400 * t531, -t315 * qJD(4) + t408 * t498, -t408 * t410 * t572 + qJD(3) * t252, -t250 * qJD(3) - t410 * t532, t327, -qJD(2) * t251 + qJD(3) * t68 + qJD(4) * t131, -qJD(2) * t316 + qJD(3) * t69 + qJD(4) * t130 (qJD(3) * t294 - t222 * t552) * t295, qJD(3) * t119 + t136 * t552, qJD(3) * t145 - t222 * t508, qJD(3) * t143 - t295 * t508, t327, qJD(2) * t144 + qJD(3) * t26 + qJD(4) * t37 + qJD(5) * t46, qJD(2) * t146 + qJD(3) * t27 + qJD(4) * t38 + qJD(5) * t45, qJD(2) * t118 + qJD(3) * t13 + qJD(4) * t14 + qJD(5) * t12 + qJD(6) * t192, qJD(2) * t25 + qJD(3) * t11 + qJD(4) * t16 + qJD(5) * t15 + qJD(6) * t28; 0, 0, 0, 0, 0, t553, t554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t580, -t560, 0, 0, 0, 0, 0, t584 + t594, t210 * t552 + t582, t588, t641 + (-t291 * t412 + t294 * t414) * qJD(2) + t23 * qJD(3) + t18 * qJD(4) + t19 * qJD(5) + t135 * qJD(6); 0, 0, 0, 0, 0, 0, 0, -t328, -t564, -t392, -t555, 0, -qJD(3) * t337 + t428 * t556, qJD(3) * t336 - t428 * t557, -t298 + (-t436 * t556 - t533) * t408, t408 * t457 - 0.2e1 * t410 * t531, t440 * t555 + t579, t379 - t581, t716, t601 + (t440 * t501 - t624) * qJD(3) + t127 * qJD(4), t600 + (t443 * t501 + t606) * qJD(3) + t125 * qJD(4), t294 * t478 + t598, t569 + (t619 - t628) * qJD(3) + t599, t209 * t552 + t414 * t555 + t583, -t412 * t555 + t585 + t594, t713, t640 + (t263 * t412 - t291 * t431 - t410 * t512) * qJD(3) + t31 * qJD(4) + t42 * qJD(5), t635 + (t263 * t414 + t294 * t431 - t346 * t410) * qJD(3) + t32 * qJD(4) + t41 * qJD(5), t644 + (t286 * t291 - t294 * t715 - t412 * t84 - t414 * t75) * qJD(3) + t6 * qJD(4) + t7 * qJD(5) + t141, t645 + t23 * qJD(2) + (t174 * t355 + t286 * t84 + t715 * t75) * qJD(3) + t2 * qJD(4) + t4 * qJD(5) + t22 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t459, -t458, t504 * t308, t466, t385, qJD(3) * t127 - qJD(4) * t194 + t587, qJD(3) * t125 + qJD(4) * t193 + t568, t111, t49, t103, t104, t385, qJD(3) * t31 + qJD(4) * t113 + qJD(5) * t34 + t205 + t649, qJD(3) * t32 - qJD(4) * t114 + qJD(5) * t36 + t200 + t648, t643 + t6 * qJD(3) + (t222 * t430 - t295 * t670) * qJD(4) + t128 * qJD(5), t642 + t18 * qJD(2) + t2 * qJD(3) + (t430 * t88 + t670 * t89) * qJD(4) + t9 * qJD(5) + t120 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t111, t49, t103, t104, t385, qJD(3) * t42 + qJD(4) * t34 - qJD(5) * t109 + t205 + t646, qJD(3) * t41 + qJD(4) * t36 + qJD(5) * t108 + t200 + t647, qJD(3) * t7 + qJD(4) * t128 + t222 * t661 + t654, qJD(2) * t19 + qJD(3) * t4 + qJD(4) * t9 - t661 * t78 + t653; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t480, qJD(2) * t135 + qJD(3) * t22 + qJD(4) * t120 + t651; 0, 0, 0, 0, 0, -t553, -t554, 0, 0, 0, 0, 0, t555, -t392, 0, 0, 0, 0, 0, -t299 + t379 + t580, -t308 * qJD(3) - t532 + t560, 0, 0, 0, 0, 0, -qJD(3) * t220 - t584 - t595, -qJD(3) * t222 - t208 * t552 - t582, -qJD(3) * t100 - t588, qJD(3) * t24 - qJD(4) * t17 + qJD(5) * t20 - qJD(6) * t134 - t641; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t556, -t557, 0, 0, 0, 0, 0, t530, -t562, 0, 0, 0, 0, 0, -t566, -t565, -t589, t549 + t652; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t271, t483, 0, 0, 0, 0, 0, t159, t158, 0 (-pkin(4) * t610 - t616) * qJD(4) + t246 * qJD(5) + t489; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t159, t158, 0, qJD(4) * t246 - t488 - t548; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t586; 0, 0, 0, 0, 0, 0, 0, t328, t564, 0, 0, 0, -t505 * t410, t505 * t408, t328 * t436 - t298, t466 * t721, qJD(4) * t311 - t579, -t299 + t581, -t716, t126 * qJD(4) - t410 * t577 - t601, qJD(2) * t308 + qJD(4) * t124 - t600, -t294 * t578 + t598, -t569 + t599, -t207 * t552 - t583, -t585 - t595, -t713, qJD(2) * t220 - qJD(4) * t30 - qJD(5) * t39 - t640, qJD(2) * t222 - qJD(4) * t29 - qJD(5) * t40 - t635, qJD(2) * t100 - qJD(4) * t5 + qJD(5) * t8 + t141 - t644, -qJD(2) * t24 - qJD(4) * t1 - qJD(5) * t3 - qJD(6) * t21 - t645; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t556, t557, 0, 0, 0, 0, 0, -t530, t562, 0, 0, 0, 0, 0, t566, t565, t589, t549 - t652; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t531, t426 * qJD(4), 0, 0, 0, -pkin(3) * t572, -pkin(3) * t571, -t412 * t507, t552 * t287, 0, 0, 0, qJD(4) * t302 + t414 * t570, qJD(4) * t303 - t412 * t570, qJD(6) * t338, qJD(4) * t107 + qJD(5) * t110 + qJD(6) * t142; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t465, -t457, t561 + t571, t271, -t559, -pkin(8) * t571 - t471, pkin(8) * t572 - t472, -t123, t105, t157, t159, -t559, -qJD(4) * t346 + t290 * qJD(5) + t485, -t486 + t708 (t430 * t412 - t414 * t670) * qJD(4) + t244 * qJD(5) - t495 (-t286 * t430 + t670 * t715) * qJD(4) + t86 * qJD(5) + t216 * qJD(6) + t454; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t123, t105, t157, t159, -t559, qJD(4) * t290 - qJD(5) * t346 - t468, -t467 + t708, qJD(4) * t244 + t412 * t661 + t494, qJD(4) * t86 - t286 * t661 + t453; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t479, qJD(4) * t216 + t487; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t459, t458, -qJD(3) * t311 + t328 * t440, t306 * qJD(3) + t408 * t530, t385, qJD(2) * t306 - qJD(3) * t126 - t587, -t124 * qJD(3) + t408 * t577 - t568, -t111, -t49, t132, t133, t385, qJD(3) * t30 + qJD(5) * t33 + t195 - t649, qJD(3) * t29 + qJD(5) * t35 + t198 - t648, qJD(3) * t5 + qJD(5) * t129 - t643, qJD(2) * t17 + qJD(3) * t1 + qJD(5) * t10 + qJD(6) * t121 - t642; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t563, t443 * t557, 0, 0, 0, 0, 0, t196, t199, 0, qJD(5) * t247 - t489; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t465, t457, -t561, t563, t559, t471, t472, t123, -t105, t197, t196, t559, qJD(5) * t344 - t485, t486, qJD(5) * t245 + t495, qJD(5) * t87 + qJD(6) * t217 - t454; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t547, -t442 * t662, 0, t380 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t439 * t515 + t484, -t442 * t515 + t650, t481, -pkin(5) * t547 - t450; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t482; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t111, -t49, t132, t133, t385, qJD(3) * t39 - qJD(4) * t33 + t195 - t646, qJD(3) * t40 - qJD(4) * t35 + t198 - t647, -qJD(3) * t8 - qJD(4) * t129 - t654, -qJD(2) * t20 + qJD(3) * t3 - qJD(4) * t10 - t295 * t660 - t653; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t196, t199, 0, -qJD(4) * t247 + t488; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t123, -t105, t197, t196, t559, -qJD(4) * t344 + t468, t467, -qJD(4) * t245 - t494, -qJD(4) * t87 - t414 * t660 - t453; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t439 * t663 - t484, t442 * t663 - t650, -t481, t450; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t480, qJD(2) * t134 + qJD(3) * t21 - qJD(4) * t121 + t295 * t661 - t651; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t586; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t479, -qJD(4) * t217 - t487 + t548; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t482; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t43;