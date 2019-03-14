% Calculate inertial parameters regressor of coriolis matrix for
% S6PRPRPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d6,theta1,theta5]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 19:50
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PRPRPR6_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRPR6_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRPR6_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRPR6_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 19:49:48
% EndTime: 2019-03-08 19:49:58
% DurationCPUTime: 10.06s
% Computational Cost: add. (9022->573), mult. (20859->843), div. (0->0), fcn. (23007->10), ass. (0->414)
t451 = sin(pkin(11));
t667 = cos(qJ(6));
t573 = t667 * t451;
t453 = cos(pkin(11));
t455 = sin(qJ(6));
t626 = t455 * t453;
t394 = t573 + t626;
t458 = cos(qJ(4));
t622 = t458 * t394;
t685 = -t622 / 0.2e1;
t639 = t394 * t622;
t627 = t455 * t451;
t419 = t458 * t627;
t440 = t667 * t453;
t370 = t440 * t458 - t419;
t392 = -t440 + t627;
t643 = t370 * t392;
t170 = -t639 / 0.2e1 - t643 / 0.2e1;
t697 = t170 * qJD(6);
t609 = qJD(4) * t394;
t696 = -qJD(2) * t170 + t392 * t609;
t612 = qJD(2) * t370;
t695 = qJD(4) * t170 - t622 * t612;
t445 = t451 ^ 2;
t446 = t453 ^ 2;
t424 = t446 + t445;
t456 = sin(qJ(4));
t449 = t456 ^ 2;
t450 = t458 ^ 2;
t435 = t449 - t450;
t538 = t440 / 0.2e1;
t694 = t538 - t627 / 0.2e1;
t491 = t626 / 0.2e1 + t573 / 0.2e1;
t676 = t394 / 0.2e1;
t693 = t676 + t491;
t692 = t370 ^ 2;
t691 = t394 ^ 2;
t452 = sin(pkin(6));
t457 = sin(qJ(2));
t635 = t452 * t457;
t582 = t451 * t635;
t459 = cos(qJ(2));
t634 = t452 * t459;
t578 = t456 * t634;
t454 = cos(pkin(6));
t632 = t454 * t458;
t382 = -t578 + t632;
t642 = t382 * t453;
t304 = t582 + t642;
t581 = t453 * t635;
t513 = -t382 * t451 + t581;
t171 = t304 * t455 - t513 * t667;
t690 = -t171 / 0.2e1;
t172 = t304 * t667 + t455 * t513;
t689 = t172 / 0.2e1;
t688 = t304 / 0.2e1;
t366 = t394 * t456;
t687 = -t366 / 0.2e1;
t686 = t622 / 0.2e1;
t418 = t456 * t627;
t369 = t440 * t456 - t418;
t684 = t369 / 0.2e1;
t683 = -t370 / 0.2e1;
t682 = t370 / 0.2e1;
t381 = t454 * t456 + t458 * t634;
t681 = t381 / 0.2e1;
t680 = t382 / 0.2e1;
t679 = -t392 / 0.2e1;
t678 = t392 / 0.2e1;
t677 = -t394 / 0.2e1;
t675 = t419 / 0.2e1;
t441 = -pkin(5) * t453 - pkin(4);
t674 = t441 / 0.2e1;
t673 = t453 / 0.2e1;
t672 = -t456 / 0.2e1;
t671 = t456 / 0.2e1;
t670 = -t458 / 0.2e1;
t669 = t458 / 0.2e1;
t460 = -pkin(2) - pkin(8);
t668 = t460 / 0.2e1;
t666 = t451 * pkin(5);
t665 = t456 * pkin(4);
t664 = pkin(9) + qJ(5);
t638 = t394 * t370;
t649 = t622 * t392;
t175 = t638 + t649;
t663 = t175 * qJD(5);
t217 = t381 * t394;
t218 = t381 * t392;
t641 = t382 * t458;
t363 = -t641 / 0.2e1;
t24 = t171 * t686 + t172 * t682 + t217 * t687 + t218 * t684 + t381 * t671 + t363;
t662 = t24 * qJD(4);
t644 = t370 * t366;
t647 = t369 * t622;
t147 = -t647 / 0.2e1 + t644 / 0.2e1;
t661 = t147 * qJD(5);
t658 = t171 * t392;
t138 = t658 / 0.2e1;
t560 = -t658 / 0.2e1;
t26 = t138 + t560;
t660 = qJD(1) * t26;
t659 = qJD(4) * t26;
t657 = t172 * t394;
t656 = t304 * t453;
t536 = -qJ(5) * t458 + t665;
t515 = qJ(3) + t536;
t624 = t456 * t460;
t330 = -t451 * t624 + t453 * t515;
t655 = t330 * t451;
t654 = t330 * t458;
t420 = t453 * t624;
t331 = t451 * t515 + t420;
t653 = t331 * t453;
t652 = t331 * t458;
t625 = t456 * t457;
t360 = (-t451 * t625 + t453 * t459) * t452;
t575 = t667 * t360;
t361 = (t451 * t459 + t453 * t625) * t452;
t628 = t455 * t361;
t197 = t575 - t628;
t574 = t667 * t361;
t629 = t455 * t360;
t198 = t574 + t629;
t580 = t458 * t635;
t328 = t381 * t580;
t36 = -t171 * t197 + t172 * t198 - t328;
t651 = t36 * qJD(1);
t650 = t366 * t456;
t648 = t622 * t458;
t646 = t369 * t392;
t645 = t369 * t456;
t640 = t394 * t366;
t637 = t451 * t456;
t636 = t451 * t458;
t633 = t453 * t456;
t417 = pkin(4) * t458 + qJ(5) * t456;
t401 = t453 * t417;
t551 = -t451 * t460 + pkin(5);
t273 = pkin(9) * t633 + t458 * t551 + t401;
t631 = t455 * t273;
t621 = t458 * t460;
t421 = t453 * t621;
t359 = t451 * t417 + t421;
t303 = pkin(9) * t637 + t359;
t630 = t455 * t303;
t623 = t458 * t370;
t443 = t458 * t456;
t80 = t304 * t361 + t360 * t513 - t328;
t620 = t80 * qJD(1);
t619 = qJD(2) * t147;
t176 = -t639 + t643;
t618 = qJD(2) * t176;
t502 = -t645 / 0.2e1 - t623 / 0.2e1;
t188 = -t502 + t694;
t617 = qJD(2) * t188;
t504 = t650 / 0.2e1 + t648 / 0.2e1;
t189 = -t491 - t504;
t616 = qJD(2) * t189;
t221 = -t648 + t650;
t615 = qJD(2) * t221;
t222 = t623 - t645;
t614 = qJD(2) * t222;
t613 = qJD(2) * t622;
t611 = qJD(2) * t452;
t610 = qJD(4) * t392;
t608 = qJD(4) * t441;
t607 = qJD(4) * t451;
t606 = qJD(4) * t453;
t605 = qJD(5) * t622;
t604 = qJD(5) * t370;
t603 = qJD(6) * t370;
t602 = qJD(6) * t394;
t601 = qJD(6) * t456;
t153 = t644 + t647;
t600 = t153 * qJD(2);
t583 = t451 * t621;
t358 = t401 - t583;
t182 = t654 + (t358 + 0.2e1 * t583) * t456;
t599 = t182 * qJD(2);
t192 = (-t381 * t458 + t382 * t456 + t634) * t635;
t598 = t192 * qJD(1);
t245 = t693 * t456;
t597 = t245 * qJD(2);
t480 = t677 + t491;
t246 = t480 * t456;
t596 = t246 * qJD(2);
t250 = -t418 / 0.2e1 + (t679 + t538) * t456;
t595 = t250 * qJD(2);
t539 = -t440 / 0.2e1;
t251 = t392 * t672 + t456 * t539 + t418 / 0.2e1;
t594 = t251 * qJD(2);
t390 = t424 * t450;
t593 = t390 * qJD(2);
t391 = t424 * t458;
t592 = t391 * qJD(2);
t383 = t392 * qJD(6);
t396 = t435 * t451;
t591 = t396 * qJD(2);
t397 = t435 * t453;
t590 = t397 * qJD(2);
t589 = t424 * qJD(4);
t588 = t435 * qJD(2);
t587 = t456 * qJD(2);
t586 = t456 * qJD(4);
t585 = t458 * qJD(2);
t584 = t458 * qJD(4);
t579 = t460 * t635;
t577 = t667 * t273;
t576 = t667 * t303;
t572 = qJ(3) * t587;
t571 = qJ(3) * t585;
t569 = t392 * t587;
t568 = t394 * t587;
t566 = t451 * t606;
t565 = t394 * t383;
t564 = t451 * t586;
t563 = t451 * t587;
t433 = t457 * t611;
t562 = t459 * t611;
t561 = t453 * t587;
t437 = t456 * t584;
t436 = t456 * t585;
t559 = t304 * t670;
t558 = t641 / 0.2e1;
t557 = -t635 / 0.2e1;
t556 = t635 / 0.2e1;
t554 = t624 / 0.2e1;
t553 = t449 / 0.2e1 + t450 / 0.2e1;
t552 = t664 * t451;
t550 = -t460 + t666;
t549 = t424 * t381;
t548 = 0.2e1 * t453 * t636;
t318 = (-0.1e1 / 0.2e1 + t553) * t635;
t447 = qJD(2) * qJ(3);
t547 = qJD(1) * t318 - t447;
t354 = t370 * t587;
t546 = qJD(4) * t245 + t354;
t545 = qJD(5) * t458 - qJD(3);
t544 = qJD(5) + t608;
t543 = t453 * t436;
t542 = t450 * t556;
t541 = t458 * t557;
t540 = t458 * t556;
t298 = -pkin(9) * t636 + t331;
t463 = t551 * t456 + (-t458 * t664 + qJ(3) + t665) * t453;
t154 = t455 * t298 - t463 * t667;
t155 = t298 * t667 + t455 * t463;
t162 = t577 - t630;
t163 = t576 + t631;
t386 = t550 * t456;
t387 = t550 * t458;
t461 = t162 * t690 + t163 * t689 - t217 * t154 / 0.2e1 + t218 * t155 / 0.2e1 - t386 * t681 + t387 * t680;
t416 = t664 * t453;
t316 = t416 * t455 + t552 * t667;
t317 = t416 * t667 - t455 * t552;
t471 = t197 * t316 / 0.2e1 - t198 * t317 / 0.2e1 + t441 * t540;
t2 = t461 + t471;
t27 = -t154 * t162 + t155 * t163 - t386 * t387;
t535 = t2 * qJD(1) + t27 * qJD(2);
t465 = t217 * t683 + t218 * t685 + t366 * t689 + t369 * t690;
t508 = t197 * t677 + t198 * t679;
t10 = t465 - t508;
t18 = -t154 * t369 + t155 * t366 - t162 * t370 - t163 * t622;
t534 = t10 * qJD(1) + t18 * qJD(2);
t474 = t197 * t687 + t198 * t684 + t542;
t28 = -t657 / 0.2e1 + t560 + t474;
t53 = t154 * t392 + t155 * t394;
t533 = -t28 * qJD(1) + t53 * qJD(2);
t38 = -t154 * t458 + t162 * t456 - t366 * t387 - t386 * t622;
t479 = t217 * t672 + t366 * t681 - t622 * t680;
t40 = (t392 * t557 + t171 / 0.2e1) * t458 + t479;
t532 = -t40 * qJD(1) + t38 * qJD(2);
t39 = t155 * t458 + t163 * t456 + t387 * t369 + t386 * t370;
t478 = t218 * t671 + t369 * t681 + t382 * t683;
t41 = (t394 * t557 + t689) * t458 + t478;
t531 = -t41 * qJD(1) - t39 * qJD(2);
t492 = -t628 / 0.2e1 + t575 / 0.2e1;
t509 = t172 * t672 + t370 * t681;
t57 = t492 - t509;
t92 = -t155 * t456 + t370 * t387;
t530 = qJD(1) * t57 - qJD(2) * t92;
t493 = -t629 / 0.2e1 - t574 / 0.2e1;
t510 = t171 * t671 - t622 * t681;
t58 = t493 - t510;
t91 = -t154 * t456 + t387 * t622;
t529 = qJD(1) * t58 + qJD(2) * t91;
t469 = t451 * t688 + t513 * t673;
t464 = t469 * t456;
t505 = t361 * t673 - t360 * t451 / 0.2e1;
t82 = t464 - t505;
t85 = -t330 * t633 - t331 * t637 + (t358 * t453 + t359 * t451) * t458;
t528 = -t82 * qJD(1) + t85 * qJD(2);
t37 = -t171 * t217 + t172 * t218 + t381 * t382;
t527 = t37 * qJD(1) + t24 * qJD(3);
t374 = (0.1e1 / 0.2e1 - t446 / 0.2e1 - t445 / 0.2e1) * t456;
t489 = t513 * t451;
t468 = t656 / 0.2e1 - t489 / 0.2e1;
t56 = t374 * t381 + t458 * t468 + t363;
t78 = (t382 + t489 - t656) * t381;
t526 = t78 * qJD(1) + t56 * qJD(3);
t194 = t330 * t453 + t331 * t451;
t525 = -t358 * t451 + t359 * t453;
t183 = t652 + (t359 - 0.2e1 * t421) * t456;
t86 = (t451 * t557 + t688 - t642 / 0.2e1) * t458;
t524 = t86 * qJD(1) + t183 * qJD(2);
t467 = t456 * t505 + t542;
t73 = t467 - t469;
t523 = -qJD(1) * t73 + qJD(2) * t194;
t365 = t622 ^ 2;
t193 = t365 - t692;
t99 = -t638 + t649;
t522 = qJD(2) * t193 + qJD(4) * t99;
t385 = t392 ^ 2;
t229 = t385 - t691;
t521 = qJD(2) * t99 + qJD(4) * t229;
t134 = (t557 + t469) * t458;
t187 = t194 * t458;
t520 = qJD(1) * t134 + qJD(2) * t187;
t231 = t365 + t692;
t519 = qJD(2) * t231 + qJD(4) * t175;
t311 = t385 + t691;
t518 = qJD(2) * t175 + qJD(4) * t311;
t517 = -t610 - t613;
t516 = t609 + t612;
t514 = (t668 - t666 / 0.2e1) * t456;
t512 = t171 * t682 + t172 * t685;
t511 = t171 * t676 + t172 * t679;
t507 = t316 * t678 + t317 * t676;
t506 = t653 / 0.2e1 - t655 / 0.2e1;
t503 = t646 / 0.2e1 - t640 / 0.2e1;
t497 = -qJD(4) * t246 + t354 + t603;
t496 = t632 / 0.2e1 - t578 / 0.2e1;
t495 = -t631 / 0.2e1 - t576 / 0.2e1;
t494 = -t630 / 0.2e1 + t577 / 0.2e1;
t488 = t513 * t458;
t136 = t366 * t622 + t369 * t370 - t443;
t462 = t154 * t686 + t155 * t682 + t162 * t687 + t163 * t684 - t386 * t670 + t387 * t671;
t7 = -t462 + t507;
t487 = t24 * qJD(1) - t7 * qJD(2) + t136 * qJD(3);
t184 = t554 - t506;
t470 = -t304 * t359 / 0.2e1 - t513 * t358 / 0.2e1;
t485 = t505 * qJ(5);
t30 = (pkin(4) * t556 + t382 * t668) * t458 + t485 - t184 * t381 + t470;
t79 = -t456 * t621 + (t359 * t671 + t652 / 0.2e1) * t453 + (t358 * t672 - t654 / 0.2e1) * t451;
t93 = -t443 * t460 ^ 2 + t330 * t358 + t331 * t359;
t486 = -t30 * qJD(1) + t93 * qJD(2) + t79 * qJD(3);
t48 = t154 * t370 - t155 * t622;
t49 = t541 - t512;
t484 = qJD(1) * t49 - qJD(2) * t48 - qJD(3) * t147;
t329 = t391 * t456 - t443;
t483 = t56 * qJD(1) + t79 * qJD(2) + t329 * qJD(3);
t148 = t480 * t381;
t247 = t480 * t458;
t476 = t317 * t672 + t370 * t674 + t387 * t676;
t61 = -t476 + t494;
t482 = t148 * qJD(1) + t61 * qJD(2) - t247 * qJD(3);
t149 = (t678 + t694) * t381;
t248 = t675 + (t539 + t679) * t458;
t477 = t316 * t671 + t387 * t679 - t622 * t674;
t62 = -t477 + t495;
t481 = t149 * qJD(1) + t62 * qJD(2) + t248 * qJD(3);
t475 = qJD(4) * t536 - qJD(5) * t456;
t133 = t316 * t394 - t317 * t392;
t164 = t671 + t503;
t466 = t154 * t677 + t155 * t678 + t316 * t683 + t317 * t686;
t33 = t514 + t466;
t51 = t496 - t511;
t473 = qJD(1) * t51 + qJD(2) * t33 + qJD(3) * t164 - qJD(4) * t133;
t130 = -t468 + t496;
t405 = t424 * qJ(5);
t472 = qJD(1) * t130 + qJD(2) * t184 + qJD(3) * t374 - qJD(4) * t405;
t448 = qJ(3) * qJD(3);
t442 = t584 / 0.2e1;
t434 = qJ(3) * t634;
t403 = t450 * t579;
t388 = qJD(6) * t669 + t436;
t375 = (0.1e1 + t424) * t671;
t319 = t553 * t635 + t556;
t252 = t392 * t669 + t458 * t539 + t675;
t249 = -t491 * t458 + t685;
t191 = t502 + t694;
t190 = -t491 + t504;
t186 = -qJD(4) * t250 + t587 * t622;
t185 = t554 + t506;
t165 = t671 - t503;
t151 = t693 * t381;
t150 = (t694 + t679) * t381;
t135 = t451 * t559 - t453 * t488 / 0.2e1 + t541;
t132 = t251 * qJD(4) + (-qJD(6) - t587) * t622;
t131 = t468 + t496;
t98 = t99 * qJD(6);
t89 = t451 * t541 + t453 * t558 + t559;
t88 = t488 / 0.2e1 + t451 * t558 + t453 * t540;
t81 = t464 + t505;
t77 = t79 * qJD(4);
t74 = t467 + t469;
t64 = t476 + t494;
t63 = t477 + t495;
t60 = t492 + t509;
t59 = t493 + t510;
t55 = t56 * qJD(4);
t52 = t496 + t511;
t50 = t541 + t512;
t43 = t172 * t670 + t394 * t541 - t478;
t42 = t171 * t670 + t392 * t541 - t479;
t34 = t514 - t466;
t31 = pkin(4) * t540 + t460 * t363 + t655 * t681 - t470 + t485 + (-t653 / 0.2e1 + t554) * t381;
t29 = t657 / 0.2e1 + t138 + t474;
t25 = t26 * qJD(6);
t9 = t465 + t508;
t8 = t462 + t507;
t1 = t461 - t471;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t192, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t80 + qJD(4) * t78, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t36 + qJD(4) * t37; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t433, -t562, 0, 0, 0, 0, 0, 0, 0, 0, 0, t433, t562 (-pkin(2) * t635 + t434) * qJD(2) + qJD(3) * t635, 0, 0, 0, 0, 0, 0 (t457 * t584 + t459 * t587) * t452 (-t457 * t586 + t459 * t585) * t452 (-t449 - t450) * t433, t598 + (t449 * t579 + t403 + t434) * qJD(2) + t319 * qJD(3), 0, 0, 0, 0, 0, 0 (t360 * t456 - t450 * t582) * qJD(2) + t88 * qJD(4) (-t361 * t456 - t450 * t581) * qJD(2) + t89 * qJD(4), t81 * qJD(4) + (-t360 * t453 - t361 * t451) * t585, t620 + (t330 * t360 + t331 * t361 + t403) * qJD(2) + t74 * qJD(3) + t31 * qJD(4) + t135 * qJD(5), 0, 0, 0, 0, 0, 0 (t197 * t456 - t580 * t622) * qJD(2) + t42 * qJD(4) + t60 * qJD(6) (-t198 * t456 - t370 * t580) * qJD(2) + t43 * qJD(4) + t59 * qJD(6) (-t197 * t370 - t198 * t622) * qJD(2) + t9 * qJD(4), t651 + (-t154 * t197 + t155 * t198 - t387 * t580) * qJD(2) + t29 * qJD(3) + t1 * qJD(4) + t50 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t433, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t319, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t74 + t55, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t29 + t662; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4) * t382 + t433 * t458, qJD(4) * t381 - t433 * t456, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t88 - t382 * t606, qJD(2) * t89 + t382 * t607, t81 * qJD(2) - qJD(4) * t549, t31 * qJD(2) + (-t382 * pkin(4) - qJ(5) * t549) * qJD(4) + t131 * qJD(5) + t526, 0, 0, 0, 0, 0, 0, qJD(2) * t42 + qJD(6) * t151 + t382 * t610, qJD(2) * t43 + qJD(6) * t150 + t382 * t609, t9 * qJD(2) + (-t217 * t394 - t218 * t392) * qJD(4) + t25, t1 * qJD(2) + (-t217 * t316 + t218 * t317 + t382 * t441) * qJD(4) + t52 * qJD(5) + t527; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t135 + qJD(4) * t131, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t50 + qJD(4) * t52; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t60 + qJD(4) * t151 - qJD(6) * t172, qJD(2) * t59 + qJD(4) * t150 + qJD(6) * t171, t659, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t318 - t598, 0, 0, 0, 0, 0, 0, 0, -t86 * qJD(4), t82 * qJD(4), -qJD(3) * t73 - qJD(4) * t30 - qJD(5) * t134 - t620, 0, 0, 0, 0, 0, 0, -qJD(4) * t40 - qJD(6) * t57, -qJD(4) * t41 - qJD(6) * t58, qJD(4) * t10, -qJD(3) * t28 + qJD(4) * t2 - qJD(5) * t49 - t651; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3), t448, -t437, t435 * qJD(4), 0, t437, 0, 0, qJ(3) * t584 + qJD(3) * t456, -qJ(3) * t586 + qJD(3) * t458, 0, t448, -t446 * t437, t548 * t586, -t397 * qJD(4), -t445 * t437, t396 * qJD(4), t437, t182 * qJD(4) - t545 * t633, -t183 * qJD(4) + t545 * t637, -qJD(3) * t391 - qJD(4) * t85 + qJD(5) * t390, qJD(3) * t194 + qJD(4) * t93 - qJD(5) * t187 (-qJD(4) * t369 - qJD(6) * t622) * t370, qJD(4) * t153 + qJD(6) * t193, qJD(4) * t222 - t601 * t622 (-qJD(4) * t366 + t603) * t622, qJD(4) * t221 - t370 * t601, t437, t38 * qJD(4) + t92 * qJD(6) + (-qJD(3) * t392 - t604) * t456, -t39 * qJD(4) - t91 * qJD(6) + (-qJD(3) * t394 + t605) * t456, qJD(3) * t176 + qJD(4) * t18 + qJD(5) * t231, qJD(3) * t53 + qJD(4) * t27 + qJD(5) * t48; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), t447, 0, 0, 0, 0, 0, 0, t587, t585, 0, -t547, 0, 0, 0, 0, 0, 0, t561, -t563, -t592, t523 + t77, 0, 0, 0, 0, 0, 0, qJD(6) * t191 - t569, qJD(6) * t190 - t568, t618 (t366 * t392 + t394 * t369) * qJD(3) + t8 * qJD(4) + t533 + t661; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t436, t588, -t586, t436, -t584, 0, -t460 * t586 + t571, -t460 * t584 - t572, 0, 0 (-t446 * t585 - t566) * t456 (qJD(2) * t548 + (t445 - t446) * qJD(4)) * t456, t451 * t584 - t590 (-t445 * t585 + t566) * t456, t453 * t584 + t591, t436, -t420 * qJD(4) + t451 * t475 + t599, t453 * t475 + t460 * t564 - t524, qJD(4) * t525 - t528 (-pkin(4) * t624 + qJ(5) * t525) * qJD(4) + t185 * qJD(5) + t486, -t369 * t516 + t697, t600 + (t640 + t646) * qJD(4) + t98, qJD(6) * t251 + t394 * t584 + t614, t366 * t517 - t697, qJD(6) * t246 - t392 * t584 + t615, t388 (-t316 * t458 - t366 * t441 - t386 * t392) * qJD(4) - t245 * qJD(5) + t64 * qJD(6) + t532 (-t317 * t458 - t369 * t441 - t386 * t394) * qJD(4) - t250 * qJD(5) + t63 * qJD(6) + t531 (-t162 * t394 - t163 * t392 - t316 * t369 + t317 * t366) * qJD(4) + t534 + t663, t8 * qJD(3) + (-t162 * t316 + t163 * t317 - t386 * t441) * qJD(4) + t34 * qJD(5) + t535; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (-t453 * t585 - t607) * t456 (t451 * t585 - t606) * t456, t593, qJD(4) * t185 - t520, 0, 0, 0, 0, 0, 0, -t546, t186, t519, qJD(4) * t34 - t484; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t695, t522, t132, -t695, -t497, t442, qJD(3) * t191 + qJD(4) * t64 - qJD(6) * t155 - t530, qJD(3) * t190 + qJD(4) * t63 + qJD(6) * t154 - t529, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t318, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t73 + t55, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t28 + t662; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2), -t447, 0, 0, 0, 0, 0, 0, -t587, -t585, 0, t547, 0, 0, 0, 0, 0, 0, -t561, t563, t592, -t523 + t77, 0, 0, 0, 0, 0, 0, -qJD(6) * t188 + t569, -qJD(6) * t189 + t568, -t618, -qJD(4) * t7 - t533 + t661; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t329 * qJD(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t136; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t586, -t584, 0, 0, 0, 0, 0, 0, 0, 0, -t453 * t586, t564, t391 * qJD(4) (qJ(5) * t391 - t665) * qJD(4) + t375 * qJD(5) + t483, 0, 0, 0, 0, 0, 0, qJD(6) * t249 + t392 * t586, qJD(6) * t252 + t394 * t586, -qJD(4) * t176 (t316 * t622 + t370 * t317 + t441 * t456) * qJD(4) + t165 * qJD(5) + t487; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t375 * qJD(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t165 + t619; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t249 - qJD(6) * t369 - t617, qJD(4) * t252 + qJD(6) * t366 - t616, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86 * qJD(2), -t82 * qJD(2), qJD(2) * t30 - qJD(5) * t130 - t526, 0, 0, 0, 0, 0, 0, qJD(2) * t40 - qJD(6) * t148, qJD(2) * t41 - qJD(6) * t149, -qJD(2) * t10 + t25, -qJD(2) * t2 - qJD(5) * t51 - t527; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t436, -t588, 0, -t436, 0, 0, -t571, t572, 0, 0, t446 * t436, -0.2e1 * t451 * t543, t590, t445 * t436, -t591, -t436, -t599, t524, t528, -qJD(5) * t184 - t486, t369 * t612 + t697, t98 - t600, qJD(6) * t250 - t614, t366 * t613 - t697, -qJD(6) * t245 - t615, -t388, qJD(5) * t246 - qJD(6) * t61 - t532, -qJD(5) * t251 - qJD(6) * t62 - t531, -t534 + t663, qJD(3) * t7 - qJD(5) * t33 - t535; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(5) * t374 - t483, 0, 0, 0, 0, 0, 0, qJD(6) * t247, -qJD(6) * t248, 0, -qJD(5) * t164 - t487; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t424 * qJD(5), t405 * qJD(5), -t565, t229 * qJD(6), 0, t565, 0, 0, t441 * t602, -t441 * t383, qJD(5) * t311, qJD(5) * t133; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t589, -t472, 0, 0, 0, 0, 0, 0, t596, -t594, t518, -t473; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t696, t521, -t383 + t595, t696, -t597 - t602, -t585 / 0.2e1, -qJD(6) * t317 + t394 * t608 - t482, qJD(6) * t316 - t392 * t608 - t481, t660, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t134 + qJD(4) * t130, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t49 + qJD(4) * t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t543, -t451 * t436, -t593, qJD(4) * t184 + t520, 0, 0, 0, 0, 0, 0, t497, t132, -t519, qJD(4) * t33 + t484; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t374 * qJD(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t164 - t619; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t589, t472, 0, 0, 0, 0, 0, 0, -t596 + t602, -t383 + t594, -t518, t473; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t516, t517, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t57 + qJD(4) * t148, qJD(2) * t58 + qJD(4) * t149, -t659, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t695, -t522, t186, t695, t546, t442, qJD(3) * t188 + qJD(4) * t61 + t530 - t604, qJD(3) * t189 + qJD(4) * t62 + t529 + t605, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4) * t247 + t617, qJD(4) * t248 + t616, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t696, -t521, -t595, -t696, t597, t585 / 0.2e1, -t394 * t544 + t482, t392 * t544 + t481, -t660, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t516, -t517, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t3;