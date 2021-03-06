% Calculate inertial parameters regressor of coriolis matrix for
% S6PRRPPR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d6,theta1,theta5]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 21:21
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PRRPPR5_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPPR5_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPPR5_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPPR5_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 21:21:12
% EndTime: 2019-03-08 21:21:29
% DurationCPUTime: 11.13s
% Computational Cost: add. (9543->595), mult. (20738->830), div. (0->0), fcn. (22661->10), ass. (0->436)
t445 = cos(pkin(11));
t671 = cos(qJ(6));
t559 = t671 * t445;
t443 = sin(pkin(11));
t447 = sin(qJ(6));
t633 = t447 * t443;
t375 = t559 - t633;
t365 = t375 * qJD(6);
t448 = sin(qJ(3));
t408 = t448 * t559;
t542 = -t633 / 0.2e1;
t678 = t375 / 0.2e1;
t469 = t408 / 0.2e1 + (t542 + t678) * t448;
t695 = t469 * qJD(2);
t716 = -t365 - t695;
t441 = t448 ^ 2;
t450 = cos(qJ(3));
t442 = t450 ^ 2;
t715 = t441 + t442;
t446 = -pkin(3) - qJ(5);
t638 = t446 * t450;
t528 = -pkin(2) + t638;
t630 = t448 * qJ(4);
t644 = t443 * t448;
t692 = pkin(4) + pkin(8);
t288 = t445 * (t528 - t630) + t692 * t644;
t658 = t288 * t443;
t645 = t443 * qJ(4);
t707 = t445 * t692;
t505 = t645 + t707;
t287 = -t443 * t528 + t448 * t505;
t659 = t287 * t445;
t495 = -t659 / 0.2e1 - t658 / 0.2e1;
t578 = -pkin(8) / 0.2e1 - pkin(4) / 0.2e1;
t532 = t578 * t448;
t130 = t532 - t495;
t631 = t447 * t448;
t342 = t443 * t631 - t408;
t560 = t671 * t443;
t632 = t447 * t445;
t372 = t560 + t632;
t345 = t372 * t448;
t517 = t342 * t372 + t345 * t375;
t714 = qJD(4) * t517;
t541 = t631 / 0.2e1;
t674 = t448 / 0.2e1;
t238 = t443 * t541 - t408 / 0.2e1 + t375 * t674;
t713 = qJD(6) * t238;
t409 = t450 * t559;
t343 = t450 * t633 - t409;
t346 = t372 * t450;
t680 = t372 / 0.2e1;
t166 = t343 * t678 + t346 * t680;
t712 = t166 * qJD(6);
t589 = t375 * qJD(3);
t711 = -qJD(2) * t166 + t372 * t589;
t614 = qJD(2) * t346;
t710 = -qJD(3) * t166 + t343 * t614;
t665 = cos(pkin(6));
t423 = t665 * t450;
t444 = sin(pkin(6));
t449 = sin(qJ(2));
t642 = t444 * t449;
t569 = t448 * t642;
t358 = -t423 + t569;
t451 = cos(qJ(2));
t640 = t444 * t451;
t567 = t443 * t640;
t504 = t358 * t445 + t567;
t709 = -t504 / 0.2e1;
t708 = pkin(9) - t446;
t436 = t443 ^ 2;
t438 = t445 ^ 2;
t412 = t436 + t438;
t416 = t442 - t441;
t706 = (t450 * t708 + pkin(2)) * t443 + (pkin(5) + t505) * t448;
t537 = t665 * t448;
t641 = t444 * t450;
t568 = t449 * t641;
t359 = t537 + t568;
t213 = t359 * t375;
t214 = t359 * t372;
t686 = t346 / 0.2e1;
t688 = t343 / 0.2e1;
t705 = t213 * t686 + t214 * t688;
t704 = t589 - t614;
t477 = -t560 / 0.2e1 - t632 / 0.2e1;
t466 = t680 + t477;
t243 = t466 * t450;
t703 = qJD(2) * t243 + t589;
t591 = t372 * qJD(3);
t615 = qJD(2) * t343;
t702 = t591 - t615;
t677 = t409 / 0.2e1;
t679 = -t375 / 0.2e1;
t242 = t677 + (t542 + t679) * t450;
t701 = qJD(2) * t242 + t591;
t606 = qJD(5) * t448;
t609 = qJD(4) * t450;
t700 = t609 - t606;
t144 = (-t287 * t443 + t288 * t445) * t448;
t566 = t445 * t640;
t649 = t358 * t443;
t299 = -t566 + t649;
t676 = t445 / 0.2e1;
t458 = t299 * t676 + t443 * t709;
t455 = t458 * t448;
t629 = t448 * t451;
t330 = (-t443 * t449 + t445 * t629) * t444;
t331 = (t443 * t629 + t445 * t449) * t444;
t493 = t331 * t443 / 0.2e1 + t330 * t676;
t81 = t455 + t493;
t625 = t81 * qJD(1);
t699 = -qJD(2) * t144 - t625;
t435 = pkin(3) * t448;
t664 = qJ(4) * t450;
t403 = t435 - t664;
t368 = qJ(5) * t448 + t403;
t433 = t450 * pkin(8);
t434 = t450 * pkin(4);
t407 = t433 + t434;
t383 = t407 * t445;
t293 = -t368 * t443 + t383;
t294 = t445 * t368 + t407 * t443;
t643 = t443 * t450;
t65 = t287 * t644 - t293 * t643 + (-t288 * t448 + t294 * t450) * t445;
t698 = t65 * qJD(2) - t625;
t681 = -t372 / 0.2e1;
t697 = t681 + t477;
t696 = qJD(6) * t469;
t580 = t448 * qJD(3);
t694 = t346 ^ 2;
t369 = t372 ^ 2;
t693 = t375 ^ 2;
t167 = t299 * t447 - t504 * t671;
t691 = t167 / 0.2e1;
t168 = t299 * t671 + t447 * t504;
t690 = t168 / 0.2e1;
t384 = t708 * t443;
t538 = t708 * t445;
t296 = -t384 * t671 - t447 * t538;
t689 = -t296 / 0.2e1;
t687 = -t346 / 0.2e1;
t685 = -t358 / 0.2e1;
t684 = t358 / 0.2e1;
t683 = -t359 / 0.2e1;
t682 = t359 / 0.2e1;
t675 = -t448 / 0.2e1;
t673 = -t450 / 0.2e1;
t672 = t450 / 0.2e1;
t670 = pkin(9) * t448;
t669 = t445 * pkin(5);
t647 = t375 * t346;
t648 = t372 * t343;
t173 = -t647 - t648;
t667 = t173 * qJD(5);
t165 = t648 / 0.2e1 + t647 / 0.2e1;
t666 = t165 * qJD(5);
t226 = t450 * pkin(5) + t383 + (-t368 - t670) * t443;
t564 = t671 * t226;
t235 = t445 * t670 + t294;
t636 = t447 * t235;
t111 = t564 - t636;
t663 = t111 * t375;
t563 = t671 * t235;
t637 = t447 * t226;
t112 = t563 + t637;
t662 = t112 * t372;
t661 = t213 * t375;
t660 = t214 * t372;
t657 = t293 * t445;
t656 = t294 * t443;
t655 = t299 * t443;
t562 = t671 * t330;
t634 = t447 * t331;
t202 = t562 - t634;
t561 = t671 * t331;
t635 = t447 * t330;
t203 = t561 + t635;
t565 = t450 * t640;
t533 = t359 * t565;
t34 = -t167 * t202 + t168 * t203 + t533;
t654 = t34 * qJD(1);
t653 = t342 * t296;
t295 = -t384 * t447 + t538 * t671;
t652 = t345 * t295;
t35 = -t167 * t213 + t168 * t214 - t358 * t359;
t651 = t35 * qJD(1);
t650 = t358 * qJ(4);
t646 = t444 ^ 2 * t449;
t639 = t445 * t450;
t475 = t504 * t445;
t75 = (-t358 + t475 + t655) * t359;
t627 = t75 * qJD(1);
t76 = t299 * t331 + t330 * t504 + t533;
t626 = t76 * qJD(1);
t624 = t81 * qJD(2);
t82 = t455 - t493;
t623 = t82 * qJD(2);
t622 = t715 * pkin(8) * t640;
t150 = t342 * t343 + t345 * t346;
t620 = qJD(2) * t150;
t215 = -t342 * t448 + t343 * t450;
t619 = qJD(2) * t215;
t216 = t345 * t448 - t346 * t450;
t618 = qJD(2) * t216;
t613 = qJD(2) * t448;
t612 = qJD(2) * t449;
t419 = pkin(5) * t443 + qJ(4);
t611 = qJD(3) * t419;
t610 = qJD(4) * t441;
t608 = qJD(5) * t343;
t607 = qJD(5) * t346;
t605 = qJD(6) * t346;
t604 = qJD(6) * t448;
t571 = t692 * t450;
t101 = t287 * t450 + (t293 + (-t571 - t407) * t445) * t448;
t603 = t101 * qJD(2);
t151 = t342 * t346 + t343 * t345;
t602 = t151 * qJD(2);
t183 = (-t646 + (t358 * t448 + t359 * t450) * t444) * t451;
t601 = t183 * qJD(1);
t570 = t444 * t629;
t184 = -t358 * t570 + (-t359 * t641 + t646) * t451;
t600 = t184 * qJD(1);
t599 = t238 * qJD(2);
t245 = t372 * t675 + t445 * t541 + t560 * t674;
t596 = t245 * qJD(2);
t246 = t697 * t448;
t232 = t246 * qJD(2);
t527 = -pkin(3) * t450 - t630;
t389 = -pkin(2) + t527;
t308 = t389 * t450 + t403 * t448;
t595 = t308 * qJD(2);
t309 = -t389 * t448 + t403 * t450;
t594 = t309 * qJD(2);
t344 = t412 * t450 * t448;
t593 = t344 * qJD(2);
t592 = t359 * qJD(3);
t362 = t372 * qJD(6);
t374 = t412 * t442;
t590 = t374 * qJD(2);
t377 = t416 * t443;
t588 = t377 * qJD(2);
t378 = t416 * t445;
t587 = t378 * qJD(2);
t539 = -t436 / 0.2e1 - t438 / 0.2e1;
t388 = -0.1e1 / 0.2e1 + t539;
t586 = t388 * qJD(3);
t585 = t412 * qJD(3);
t584 = t416 * qJD(2);
t583 = t441 * qJD(2);
t582 = t443 * qJD(3);
t581 = t445 * qJD(3);
t579 = t450 * qJD(2);
t432 = t450 * qJD(3);
t576 = pkin(5) * t639;
t575 = pkin(2) * t613;
t574 = pkin(2) * t579;
t573 = pkin(8) * t580;
t572 = t692 * t448;
t558 = t342 * t613;
t556 = t345 * t613;
t554 = t443 * t581;
t553 = t443 * t432;
t552 = t372 * t365;
t551 = t389 * t613;
t550 = t443 * t583;
t549 = t445 * t583;
t548 = qJD(2) * t640;
t418 = t448 * t432;
t417 = t448 * t579;
t545 = -t640 / 0.2e1;
t544 = t640 / 0.2e1;
t543 = -t639 / 0.2e1;
t540 = t433 / 0.2e1 + t434 / 0.2e1;
t370 = t412 * t446;
t536 = -0.2e1 * t443 * t639;
t329 = t346 * t613;
t535 = qJD(3) * t469 - t329;
t534 = qJD(5) + t611;
t531 = t445 * t417;
t530 = t450 * t544;
t529 = -t369 / 0.2e1 - t693 / 0.2e1;
t233 = -pkin(9) * t639 + t288;
t109 = t447 * t233 - t671 * t706;
t110 = t671 * t233 + t447 * t706;
t356 = (-t669 - t692) * t448;
t357 = t576 + t407;
t17 = -t109 * t111 + t110 * t112 + t356 * t357;
t452 = -t167 * t111 / 0.2e1 + t112 * t690 - t213 * t109 / 0.2e1 + t214 * t110 / 0.2e1 + t357 * t685 + t356 * t682;
t460 = t202 * t295 / 0.2e1 + t203 * t689 + t450 * t419 * t545;
t2 = t452 + t460;
t526 = t2 * qJD(1) + t17 * qJD(2);
t497 = t202 * t678 + t203 * t680;
t502 = t345 * t691 - t168 * t342 / 0.2e1;
t31 = t497 + t502;
t11 = t31 + t705;
t38 = -t109 * t345 + t110 * t342;
t12 = t111 * t346 + t112 * t343 - t38;
t525 = t11 * qJD(1) + t12 * qJD(2);
t453 = -t299 * t294 / 0.2e1 + t407 * t684 + t293 * t709;
t454 = qJ(4) * t530 + t446 * t493;
t19 = -t130 * t359 + t453 + t454;
t66 = t287 * t293 + t288 * t294 - t407 * t572;
t524 = -t19 * qJD(1) + t66 * qJD(2);
t523 = -t31 * qJD(1) + t38 * qJD(2);
t36 = -t109 * t450 + t111 * t448 + t342 * t357 - t343 * t356;
t465 = t213 * t675 + t342 * t683 + t343 * t685;
t40 = (t372 * t544 + t691) * t450 + t465;
t522 = -t40 * qJD(1) + t36 * qJD(2);
t37 = t110 * t450 + t112 * t448 - t357 * t345 + t356 * t346;
t464 = t214 * t674 + t345 * t683 + t346 * t685;
t41 = (t375 * t544 + t690) * t450 + t464;
t521 = -t41 * qJD(1) - t37 * qJD(2);
t479 = -t634 / 0.2e1 + t562 / 0.2e1;
t498 = t168 * t675 + t346 * t683;
t55 = t479 - t498;
t78 = -t110 * t448 - t346 * t357;
t520 = qJD(1) * t55 - qJD(2) * t78;
t480 = -t635 / 0.2e1 - t561 / 0.2e1;
t499 = t167 * t674 + t343 * t682;
t56 = t480 - t499;
t77 = -t109 * t448 - t357 * t343;
t519 = qJD(1) * t56 + qJD(2) * t77;
t518 = t656 + t657;
t478 = t542 + t559 / 0.2e1;
t146 = (t679 + t478) * t359;
t462 = t296 * t675 + t357 * t678 + t419 * t687;
t481 = -t636 / 0.2e1 + t564 / 0.2e1;
t48 = -t462 + t481;
t516 = t146 * qJD(1) + t48 * qJD(2);
t147 = t466 * t359;
t463 = t295 * t674 + t357 * t681 + t419 * t688;
t482 = -t637 / 0.2e1 - t563 / 0.2e1;
t49 = -t463 + t482;
t515 = t147 * qJD(1) + t49 * qJD(2);
t102 = t288 * t450 - t407 * t644 + (-t443 * t571 + t294) * t448;
t157 = (t445 * t544 + t299 / 0.2e1 - t649 / 0.2e1) * t450;
t514 = t157 * qJD(1) + t102 * qJD(2);
t128 = (t544 + t458) * t450;
t145 = -t287 * t643 + t288 * t639;
t513 = qJD(1) * t128 + qJD(2) * t145;
t103 = t647 - t648;
t341 = t343 ^ 2;
t189 = t341 - t694;
t512 = qJD(2) * t189 + qJD(3) * t103;
t228 = t369 - t693;
t511 = qJD(2) * t103 + qJD(3) * t228;
t186 = -0.1e1 / 0.2e1 + t529;
t510 = qJD(2) * t165 + qJD(3) * t186;
t234 = t341 + t694;
t509 = qJD(2) * t234 + qJD(3) * t173;
t301 = t369 + t693;
t508 = qJD(2) * t173 + qJD(3) * t301;
t507 = t423 / 0.2e1 - t569 / 0.2e1;
t506 = t664 / 0.2e1 - t435 / 0.2e1;
t503 = -t663 / 0.2e1 - t662 / 0.2e1;
t501 = t167 * t687 + t168 * t688;
t500 = t167 * t678 + t168 * t681;
t496 = -t661 / 0.2e1 - t660 / 0.2e1;
t494 = -t657 / 0.2e1 - t656 / 0.2e1;
t142 = (t403 / 0.2e1 + t506) * t640;
t492 = -t389 * t403 * qJD(2) + t142 * qJD(1);
t487 = t450 * t606 + t610;
t141 = t494 + t540;
t468 = t537 / 0.2e1 + t568 / 0.2e1;
t188 = t359 * t539 + t468;
t439 = qJD(3) * qJ(4);
t486 = qJD(1) * t188 + qJD(2) * t141 + t439;
t485 = qJD(3) * t238 - t329 - t605;
t483 = (-t669 / 0.2e1 + t578) * t448;
t476 = -t358 * qJD(3) + t450 * t548;
t300 = t448 * t548 + t592;
t108 = t295 * t375 - t296 * t372;
t457 = t109 * t679 + t110 * t680 + t295 * t686 + t343 * t689;
t23 = t483 + t457;
t53 = -t500 + t507;
t474 = -qJD(1) * t53 - qJD(2) * t23 + qJD(3) * t108;
t456 = t653 / 0.2e1 - t652 / 0.2e1 + t576 / 0.2e1 + t540;
t28 = t456 + t503;
t70 = t468 + t496;
t473 = qJD(1) * t70 + qJD(2) * t28 + t611;
t39 = -t109 * t346 + t110 * t343;
t45 = t530 - t501;
t472 = qJD(1) * t45 - qJD(2) * t39 - qJD(4) * t165;
t459 = -t655 / 0.2e1 - t475 / 0.2e1;
t123 = -t459 + t507;
t471 = -qJD(1) * t123 - qJD(2) * t130 - qJD(3) * t370;
t467 = t504 * t672;
t461 = qJD(3) * t527 + t609;
t32 = t497 - t502;
t440 = qJ(4) * qJD(4);
t429 = pkin(8) * t432;
t424 = t432 / 0.2e1;
t415 = t445 * t432;
t404 = t416 * qJD(3);
t387 = 0.1e1 / 0.2e1 + t539;
t371 = qJD(6) * t672 + t417;
t340 = t715 * t548;
t335 = (t449 * t579 + t451 * t580) * t444;
t334 = (-t432 * t451 + t448 * t612) * t444;
t244 = t450 * t477 + t687;
t241 = t375 * t672 + t450 * t542 + t677;
t231 = t246 * qJD(6);
t230 = t245 * qJD(6);
t190 = -t362 + t232;
t187 = t412 * t682 + t468;
t185 = 0.1e1 / 0.2e1 + t529;
t178 = -qJD(3) * t246 - t343 * t613;
t159 = t299 * t673 + t445 * t530 + t643 * t684;
t158 = t358 * t543 + t443 * t530 + t467;
t149 = (t478 + t678) * t359;
t148 = t697 * t359;
t143 = t403 * t545 + t506 * t640;
t140 = -t494 + t540;
t131 = t532 + t495;
t129 = t299 * t543 + t443 * t467 + t530;
t125 = t245 * qJD(3) + (qJD(6) + t613) * t343;
t124 = t459 + t507;
t100 = t103 * qJD(6);
t69 = t468 - t496;
t58 = t479 + t498;
t57 = t480 + t499;
t54 = t500 + t507;
t51 = t462 + t481;
t50 = t463 + t482;
t46 = t530 + t501;
t43 = t168 * t673 + t375 * t530 - t464;
t42 = t167 * t673 + t372 * t530 - t465;
t27 = t456 - t503;
t24 = t483 - t457;
t20 = -t453 + t454 + (-t572 + t658 + t659) * t682;
t10 = -t32 + t705;
t1 = t452 - t460;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t183, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2) * t184, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t76 + qJD(3) * t75, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t34 + qJD(3) * t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t444 * t612, -t548, 0, 0, 0, 0, 0, 0, 0, 0, -t335, t334, t340, t601 + (-pkin(2) * t642 + t622) * qJD(2), 0, 0, 0, 0, 0, 0, t340, t335, -t334, -t600 + (t389 * t642 + t622) * qJD(2) + t143 * qJD(3) + qJD(4) * t570, 0, 0, 0, 0, 0, 0 (t330 * t448 + t442 * t566) * qJD(2) + t158 * qJD(3) (-t331 * t448 - t442 * t567) * qJD(2) + t159 * qJD(3), t82 * qJD(3) + (t330 * t443 - t331 * t445) * t579, t626 + (t330 * t287 + t331 * t288 + t407 * t565) * qJD(2) + t20 * qJD(3) - t82 * qJD(4) + t129 * qJD(5), 0, 0, 0, 0, 0, 0 (t202 * t448 - t343 * t565) * qJD(2) + t42 * qJD(3) + t58 * qJD(6) (-t203 * t448 - t346 * t565) * qJD(2) + t43 * qJD(3) + t57 * qJD(6) (t202 * t346 + t203 * t343) * qJD(2) + t10 * qJD(3), t654 + (-t202 * t109 + t203 * t110 + t357 * t565) * qJD(2) + t1 * qJD(3) + t32 * qJD(4) + t46 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t300, -t476, 0, 0, 0, 0, 0, 0, 0, 0, 0, t300, t476, t143 * qJD(2) + (-pkin(3) * t359 - t650) * qJD(3) + t359 * qJD(4), 0, 0, 0, 0, 0, 0, qJD(2) * t158 - t358 * t582, qJD(2) * t159 - t358 * t581, -t412 * t592 + t623, t627 + t20 * qJD(2) + (t359 * t370 - t650) * qJD(3) + t187 * qJD(4) + t124 * qJD(5), 0, 0, 0, 0, 0, 0, qJD(2) * t42 + qJD(6) * t149 - t358 * t591, qJD(2) * t43 + qJD(6) * t148 - t358 * t589, t10 * qJD(2) + (-t660 - t661) * qJD(3), t651 + t1 * qJD(2) + (-t213 * t295 + t214 * t296 - t358 * t419) * qJD(3) + t69 * qJD(4) + t54 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t300, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t187 - t623, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t32 + qJD(3) * t69; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t129 + qJD(3) * t124, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t46 + qJD(3) * t54; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t58 + qJD(3) * t149 - qJD(6) * t168, qJD(2) * t57 + qJD(3) * t148 + qJD(6) * t167, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t601, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t142 + t600, 0, 0, 0, 0, 0, 0, 0, -t157 * qJD(3), t81 * qJD(3), -qJD(3) * t19 - qJD(4) * t81 - qJD(5) * t128 - t626, 0, 0, 0, 0, 0, 0, -qJD(3) * t40 - qJD(6) * t55, -qJD(3) * t41 - qJD(6) * t56, qJD(3) * t11, qJD(3) * t2 - qJD(4) * t31 - qJD(5) * t45 - t654; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t418, t404, 0, -t418, 0, 0, -pkin(2) * t580, -pkin(2) * t432, 0, 0, 0, 0, 0, t418, t404, -t418, 0, qJD(3) * t309 - t448 * t609, -qJD(3) * t308 + t610 (qJD(3) * t403 - qJD(4) * t448) * t389, -t436 * t418, t536 * t580, -t377 * qJD(3), -t438 * t418, -t378 * qJD(3), t418, t101 * qJD(3) + t443 * t487, -t102 * qJD(3) + t445 * t487, -qJD(3) * t65 + qJD(4) * t344 + qJD(5) * t374, qJD(3) * t66 - qJD(4) * t144 - qJD(5) * t145 (-qJD(3) * t345 - qJD(6) * t343) * t346, qJD(3) * t151 + qJD(6) * t189, qJD(3) * t216 + t343 * t604 (-qJD(3) * t342 + t605) * t343, qJD(3) * t215 + t346 * t604, t418, t36 * qJD(3) + t78 * qJD(6) + (qJD(4) * t345 + t607) * t448, -t37 * qJD(3) - t77 * qJD(6) + (-qJD(4) * t342 - t608) * t448, qJD(3) * t12 + qJD(4) * t150 + qJD(5) * t234, qJD(3) * t17 + qJD(4) * t38 + qJD(5) * t39; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t417, t584, t432, -t417, -t580, 0, -t429 - t575, t573 - t574, 0, 0, 0, -t432, t580, t417, t584, -t417, t461, t429 + t594, -t573 - t595, pkin(8) * t461 - t492 (-t436 * t579 + t554) * t448 (qJD(2) * t536 + (-t436 + t438) * qJD(3)) * t448, t415 - t588 (-t438 * t579 - t554) * t448, -t553 - t587, t417, -t692 * t443 * t580 + t603 + ((t638 - t630) * qJD(3) + t700) * t445 (t645 - t707) * t580 - t514 + (-qJD(3) * t638 - t700) * t443, -qJD(3) * t518 - t698 (-qJ(4) * t572 + t446 * t518) * qJD(3) + t140 * qJD(4) + t131 * qJD(5) + t524, t345 * t704 + t712, t602 + (-t342 * t375 - t345 * t372) * qJD(3) + t100, t375 * t432 + t230 + t618, t342 * t702 - t712, -t372 * t432 + t619 - t713, t371 (-t295 * t450 + t342 * t419 + t356 * t372) * qJD(3) + t241 * qJD(4) - t469 * qJD(5) + t51 * qJD(6) + t522 (-t296 * t450 + t345 * t419 + t356 * t375) * qJD(3) + t244 * qJD(4) - t246 * qJD(5) + t50 * qJD(6) + t521 (t652 - t653 - t662 - t663) * qJD(3) - t714 + t525 + t667 (-t111 * t295 + t112 * t296 + t356 * t419) * qJD(3) + t27 * qJD(4) + t24 * qJD(5) + t526; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t432, -t417, t583, t429 - t551, 0, 0, 0, 0, 0, 0, t415 + t550, t549 - t553, t593, qJD(3) * t140 + t699, 0, 0, 0, 0, 0, 0, qJD(3) * t241 + t230 + t556, qJD(3) * t244 - t558 - t713, -qJD(3) * t517 + t620, t27 * qJD(3) + t523 + t666 + t714; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (t443 * t579 - t581) * t448 (t445 * t579 + t582) * t448, t590, qJD(3) * t131 - t513, 0, 0, 0, 0, 0, 0, -t535, t178, t509, qJD(3) * t24 - t472; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t710, t512, t125, t710, -t485, t424, qJD(3) * t51 + qJD(4) * t245 - qJD(6) * t110 - t520, qJD(3) * t50 - qJD(4) * t238 + qJD(6) * t109 - t519, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t142, 0, 0, 0, 0, 0, 0, 0, t157 * qJD(2), -t624, qJD(2) * t19 + qJD(4) * t188 - qJD(5) * t123 - t627, 0, 0, 0, 0, 0, 0, qJD(2) * t40 - qJD(6) * t146, qJD(2) * t41 - qJD(6) * t147, -qJD(2) * t11, -qJD(2) * t2 + qJD(4) * t70 - qJD(5) * t53 - t651; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t417, -t584, 0, t417, 0, 0, t575, t574, 0, 0, 0, 0, 0, -t417, -t584, t417, 0, -t594, t595, t492, t436 * t417, 0.2e1 * t443 * t531, t588, t438 * t417, t587, -t417, -t603, t514, t698, qJD(4) * t141 - qJD(5) * t130 - t524, t345 * t614 + t712, t100 - t602, t231 - t618, t342 * t615 - t712, -t619 - t696, -t371, qJD(4) * t242 - qJD(5) * t238 - qJD(6) * t48 - t522, qJD(4) * t243 - qJD(5) * t245 - qJD(6) * t49 - t521, -t525 + t667, qJD(4) * t28 - qJD(5) * t23 - t526; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t440, 0, 0, 0, 0, 0, 0, qJD(4) * t443, qJD(4) * t445, t412 * qJD(5), -qJD(5) * t370 + t440, -t552, t228 * qJD(6), 0, t552, 0, 0, qJD(4) * t372 + t365 * t419, qJD(4) * t375 - t362 * t419, qJD(5) * t301, qJD(4) * t419 + qJD(5) * t108; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t439, 0, 0, 0, 0, 0, 0, t582, t581, 0, qJD(5) * t387 + t486, 0, 0, 0, 0, 0, 0, t701, t703, 0, qJD(5) * t185 + t473; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t585, qJD(4) * t387 + t471, 0, 0, 0, 0, 0, 0, -t599, -t596, t508, qJD(4) * t185 + t474; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t711, t511, t190, t711, t716, -t579 / 0.2e1, -qJD(6) * t296 + t419 * t589 - t516, qJD(6) * t295 - t419 * t591 - t515, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t188 + t624, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t31 - qJD(3) * t70; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t417, -t583, t551, 0, 0, 0, 0, 0, 0, -t550, -t549, -t593, -qJD(3) * t141 - t699, 0, 0, 0, 0, 0, 0, -qJD(3) * t242 + t231 - t556, -qJD(3) * t243 + t558 - t696, -t620, -qJD(3) * t28 - t523 + t666; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3), -t439, 0, 0, 0, 0, 0, 0, -t582, -t581, 0, qJD(5) * t388 - t486, 0, 0, 0, 0, 0, 0, -t701, -t703, 0, qJD(5) * t186 - t473; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t586, 0, 0, 0, 0, 0, 0, 0, 0, 0, t510; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t190, t716, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t128 + qJD(3) * t123, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t45 + qJD(3) * t53; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t443 * t417, -t531, -t590, qJD(3) * t130 + t513, 0, 0, 0, 0, 0, 0, t485, t125, -t509, qJD(3) * t23 + t472; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t585, -qJD(4) * t388 - t471, 0, 0, 0, 0, 0, 0, t365 + t599, -t362 + t596, -t508, -qJD(4) * t186 - t474; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t586, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t510; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t704, -t702, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t55 + qJD(3) * t146, qJD(2) * t56 + qJD(3) * t147, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t710, -t512, t178, -t710, t535, t424, qJD(3) * t48 - qJD(4) * t246 + t520 + t607, qJD(3) * t49 + qJD(4) * t469 + t519 - t608, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t711, -t511, -t232, -t711, t695, t579 / 0.2e1, -t375 * t534 + t516, t372 * t534 + t515, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t232, t695, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t704, t702, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t3;
