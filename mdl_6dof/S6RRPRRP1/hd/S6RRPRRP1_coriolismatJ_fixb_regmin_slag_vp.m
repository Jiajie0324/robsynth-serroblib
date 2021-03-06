% Calculate minimal parameter regressor of coriolis matrix for
% S6RRPRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d5,theta3]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x28]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 11:42
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRPRRP1_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP1_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP1_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRRP1_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 11:41:18
% EndTime: 2019-03-09 11:41:44
% DurationCPUTime: 14.33s
% Computational Cost: add. (18321->570), mult. (34815->756), div. (0->0), fcn. (41109->8), ass. (0->455)
t649 = cos(qJ(4));
t391 = sin(pkin(10));
t394 = sin(qJ(2));
t396 = cos(qJ(2));
t623 = cos(pkin(10));
t360 = t391 * t396 + t394 * t623;
t640 = -qJ(3) - pkin(7);
t370 = t640 * t394;
t372 = t640 * t396;
t679 = t623 * t370 + t391 * t372;
t692 = -pkin(8) * t360 + t679;
t704 = t649 * t692;
t324 = t391 * t370 - t623 * t372;
t359 = -t391 * t394 + t396 * t623;
t254 = -pkin(8) * t359 - t324;
t393 = sin(qJ(4));
t707 = t393 * t254;
t150 = t704 + t707;
t395 = cos(qJ(5));
t728 = t395 * t150;
t487 = -t728 / 0.2e1;
t353 = t649 * t360;
t583 = t393 * t359;
t681 = t353 + t583;
t308 = -t649 * t359 + t393 * t360;
t695 = t395 * t308;
t392 = sin(qJ(5));
t729 = t392 * t150;
t732 = pkin(5) * t681 + qJ(6) * t695 - t729;
t696 = t392 * t681;
t116 = pkin(5) * t696 - t150;
t697 = t392 * t308;
t705 = t649 * t254;
t706 = t393 * t692;
t715 = -t705 + t706;
t723 = -pkin(5) * t697 + t715;
t731 = t116 * t723;
t730 = t150 * t308;
t710 = t695 / 0.2e1;
t711 = -t695 / 0.2e1;
t714 = t711 + t710;
t720 = qJD(5) * t714;
t602 = t308 ^ 2;
t701 = t681 ^ 2;
t703 = t701 - t602;
t717 = t703 * t395;
t722 = qJD(1) * t717;
t727 = t720 + t722;
t514 = qJD(2) + qJD(4);
t726 = 0.2e1 * t392;
t725 = t715 * t392;
t724 = t715 * t395;
t718 = t703 * t392;
t721 = qJD(1) * t718;
t643 = t308 * pkin(5);
t580 = t395 * t681;
t502 = -pkin(2) * t396 - pkin(1);
t336 = -t359 * pkin(3) + t502;
t644 = pkin(9) * t681;
t453 = t308 * pkin(4) - t644;
t409 = t336 + t453;
t93 = -t395 * t409 + t725;
t85 = -qJ(6) * t580 - t93;
t61 = t85 + t643;
t674 = -t61 / 0.2e1;
t505 = t85 / 0.2e1 + t674;
t712 = pkin(5) * t710 + t505 * t395;
t719 = t712 * qJD(5);
t671 = -t704 / 0.2e1;
t687 = t681 * qJD(1);
t492 = t308 * t687;
t458 = t353 / 0.2e1;
t678 = t458 + t583 / 0.2e1;
t716 = qJD(5) * t678 + t492;
t713 = t703 * qJD(1);
t575 = t706 / 0.2e1 - t705 / 0.2e1;
t483 = t696 / 0.2e1;
t390 = t395 ^ 2;
t698 = t390 * t308;
t284 = -t698 / 0.2e1;
t285 = t698 / 0.2e1;
t708 = qJ(6) * t697;
t641 = t681 * pkin(4);
t642 = t308 * pkin(9);
t192 = t641 + t642;
t700 = -t308 / 0.2e1;
t668 = t308 / 0.2e1;
t455 = pkin(2) * t623 + pkin(3);
t648 = pkin(2) * t391;
t350 = t393 * t648 - t649 * t455;
t660 = t350 / 0.2e1;
t670 = t681 / 0.2e1;
t94 = t392 * t409 + t724;
t86 = -qJ(6) * t696 + t94;
t447 = t86 * t392 + t61 * t395;
t694 = t447 * t308;
t693 = t514 * t308;
t691 = qJD(1) * t308;
t690 = qJD(3) * t308;
t688 = t678 * qJD(1);
t686 = 0.2e1 * t681;
t685 = -t61 + t85;
t389 = t392 ^ 2;
t378 = t390 - t389;
t684 = t378 * t514;
t377 = t389 + t390;
t683 = t514 * t377;
t182 = 0.2e1 * t711;
t430 = t393 * t455;
t465 = t649 * t648;
t351 = t465 + t430;
t345 = pkin(9) + t351;
t578 = qJ(6) + t345;
t326 = t578 * t395;
t597 = t326 * t395;
t314 = t597 / 0.2e1;
t325 = t578 * t392;
t600 = t325 * t392;
t682 = t314 + t600 / 0.2e1;
t639 = -qJ(6) - pkin(9);
t371 = t639 * t395;
t594 = t371 * t395;
t357 = -t594 / 0.2e1;
t369 = t639 * t392;
t596 = t369 * t392;
t680 = t357 - t596 / 0.2e1;
t344 = -pkin(4) + t350;
t661 = -t344 / 0.2e1;
t470 = t660 + t661;
t659 = t351 / 0.2e1;
t405 = (-t345 / 0.2e1 + t659) * t681 + t470 * t308;
t677 = -t644 / 0.2e1 + t405;
t653 = -t390 / 0.2e1;
t654 = t389 / 0.2e1;
t165 = (t654 + t653) * t681;
t557 = qJD(1) * t395;
t495 = t392 * t557;
t676 = t165 * t514 + t495 * t701;
t388 = t394 * pkin(2);
t337 = pkin(3) * t360 + t388;
t152 = t337 + t192;
t146 = t395 * t152;
t62 = t146 + t732;
t673 = t62 / 0.2e1;
t191 = t395 * t192;
t70 = t191 + t732;
t672 = t70 / 0.2e1;
t666 = -t681 / 0.2e1;
t665 = -t325 / 0.2e1;
t664 = -t326 / 0.2e1;
t663 = t326 / 0.2e1;
t646 = pkin(5) * t395;
t332 = t344 - t646;
t662 = t332 / 0.2e1;
t658 = t369 / 0.2e1;
t657 = t371 / 0.2e1;
t656 = -t371 / 0.2e1;
t382 = -pkin(4) - t646;
t655 = -t382 / 0.2e1;
t652 = -t392 / 0.2e1;
t651 = t392 / 0.2e1;
t647 = pkin(5) * t392;
t628 = t86 * t395;
t635 = t61 * t392;
t638 = -t635 / 0.2e1 + t628 / 0.2e1;
t637 = pkin(5) * qJD(5);
t636 = qJD(2) * pkin(2);
t634 = t62 * t392;
t633 = t62 * t395;
t145 = t392 * t152;
t576 = t728 + t145;
t87 = t576 + t708;
t7 = t61 * t62 + t86 * t87 + t731;
t632 = t7 * qJD(1);
t631 = t70 * t392;
t630 = t70 * t395;
t190 = t392 * t192;
t577 = -t728 - t190;
t92 = -t577 + t708;
t8 = t61 * t70 + t86 * t92 + t731;
t629 = t8 * qJD(1);
t627 = t87 * t392;
t626 = t87 * t395;
t625 = t92 * t392;
t624 = t92 * t395;
t457 = pkin(5) * t668 - t85 / 0.2e1;
t11 = (t674 - t457) * t395;
t622 = qJD(1) * t11;
t512 = pkin(5) * t580;
t14 = t116 * t512 + t685 * t86;
t621 = qJD(1) * t14;
t15 = (-t643 / 0.2e1 + t505) * t395;
t620 = qJD(1) * t15;
t17 = t685 * t696;
t619 = qJD(1) * t17;
t23 = t116 * t681 - (t628 - t635) * t308;
t618 = qJD(1) * t23;
t402 = -t308 * t682 + t662 * t681;
t429 = -t633 / 0.2e1 - t627 / 0.2e1;
t29 = t402 + t429;
t617 = qJD(1) * t29;
t400 = -t308 * t680 + t382 * t670;
t428 = -t630 / 0.2e1 - t625 / 0.2e1;
t32 = t400 + t428;
t616 = qJD(1) * t32;
t34 = t447 * t681;
t615 = qJD(1) * t34;
t398 = t644 / 0.2e1 + pkin(4) * t700 + t405;
t35 = t392 * t398;
t614 = qJD(1) * t35;
t43 = t150 * t696 + t308 * t93;
t613 = qJD(1) * t43;
t44 = -t150 * t580 - t308 * t94;
t612 = qJD(1) * t44;
t13 = (t627 + t633) * t681 - t694;
t611 = t13 * qJD(1);
t18 = (t625 + t630) * t681 - t694;
t607 = t18 * qJD(1);
t443 = t681 * t715 + t730;
t26 = t146 * t308 - t93 * t681 + (t443 - t730) * t392;
t606 = t26 * qJD(1);
t27 = -t308 * t576 + t395 * t443 - t681 * t94;
t605 = t27 * qJD(1);
t30 = t191 * t308 + (-t93 + t725) * t681;
t604 = t30 * qJD(1);
t31 = (-t94 + t724) * t681 + (t577 + t728) * t308;
t601 = t31 * qJD(1);
t599 = t325 * t395;
t598 = t326 * t392;
t595 = t369 * t395;
t588 = t392 * t371;
t252 = t377 * t350;
t374 = t377 * qJD(6);
t573 = -t252 * qJD(4) + t374;
t471 = 0.2e1 * t670;
t177 = t471 * t395;
t551 = qJD(2) * t395;
t572 = t177 * qJD(4) + t551 * t681;
t300 = t389 * t308;
t274 = -t300 / 0.2e1;
t484 = t308 * t654;
t450 = t285 + t484;
t101 = t284 + t274 + t450;
t571 = qJD(1) * t101;
t442 = t602 + t701;
t107 = t442 * t392;
t569 = qJD(1) * t107;
t109 = t442 * t395;
t567 = qJD(1) * t109;
t121 = t308 * t337 + t336 * t681;
t566 = qJD(1) * t121;
t122 = -t308 * t336 + t337 * t681;
t565 = qJD(1) * t122;
t156 = t324 * t359 - t360 * t679;
t562 = qJD(1) * t156;
t158 = (t700 + t668) * t395 * t392;
t561 = qJD(1) * t158;
t189 = t378 * t701;
t560 = qJD(1) * t189;
t558 = qJD(1) * t336;
t556 = qJD(1) * t396;
t555 = qJD(2) * t681;
t553 = qJD(2) * t392;
t552 = qJD(2) * t394;
t550 = qJD(2) * t396;
t549 = qJD(3) * t681;
t547 = qJD(4) * t681;
t546 = qJD(4) * t336;
t545 = qJD(4) * t392;
t544 = qJD(4) * t395;
t543 = qJD(5) * t392;
t387 = qJD(5) * t395;
t275 = t300 / 0.2e1;
t104 = t285 + t275 + t450;
t542 = t104 * qJD(1);
t118 = t388 * t502;
t540 = t118 * qJD(1);
t349 = -t353 / 0.2e1;
t460 = t389 * t666 + t653 * t681;
t120 = -t583 / 0.2e1 + t349 + t460;
t539 = t120 * qJD(1);
t537 = t165 * qJD(1);
t536 = t696 * qJD(1);
t472 = t670 + t666;
t168 = t472 * t392;
t535 = t168 * qJD(1);
t169 = t471 * t392;
t534 = t169 * qJD(1);
t533 = t697 * qJD(1);
t172 = t700 * t726;
t162 = t172 * qJD(1);
t176 = t472 * t395;
t532 = t176 * qJD(1);
t531 = t177 * qJD(1);
t530 = t695 * qJD(1);
t181 = 0.2e1 * t710;
t529 = t181 * qJD(1);
t528 = t182 * qJD(1);
t187 = t300 + t698;
t527 = t187 * qJD(1);
t188 = t377 * t701;
t526 = t188 * qJD(1);
t222 = 0.2e1 * t458 + t583;
t524 = t222 * qJD(1);
t411 = (t391 * t359 / 0.2e1 - t623 * t360 / 0.2e1) * pkin(2);
t251 = -t388 / 0.2e1 + t411;
t523 = t251 * qJD(1);
t305 = t458 + t349;
t520 = t305 * qJD(1);
t519 = t305 * qJD(4);
t318 = t359 ^ 2 + t360 ^ 2;
t516 = t318 * qJD(1);
t341 = t351 * qJD(4);
t379 = -t394 ^ 2 + t396 ^ 2;
t515 = t379 * qJD(1);
t511 = pkin(1) * t394 * qJD(1);
t510 = pkin(1) * t556;
t509 = pkin(5) * t387;
t508 = qJD(6) * t647;
t507 = t647 / 0.2e1;
t504 = t635 / 0.2e1;
t503 = -t628 / 0.2e1;
t498 = t308 * t558;
t497 = t681 * t558;
t496 = t390 * t687;
t494 = t681 * t543;
t493 = t681 * t387;
t491 = t681 * t691;
t380 = t392 * t387;
t490 = t394 * t556;
t489 = t395 * t687;
t488 = t116 * t652;
t482 = -t697 / 0.2e1;
t481 = t697 / 0.2e1;
t480 = t350 * t651;
t479 = t588 / 0.2e1;
t476 = -t580 / 0.2e1;
t475 = t728 / 0.2e1 + t190 / 0.2e1;
t474 = t487 - t145 / 0.2e1;
t467 = t514 * t395;
t466 = t514 * t392;
t464 = t512 / 0.2e1;
t463 = pkin(5) * t481;
t461 = t681 * t495;
t459 = t284 + t484;
t454 = pkin(4) / 0.2e1 + t470;
t452 = -0.2e1 * t461;
t451 = 0.2e1 * t461;
t449 = t392 * t467;
t448 = t395 * t466;
t446 = t308 * t461;
t439 = -t597 - t600;
t112 = t332 * t351 + t350 * t439;
t397 = (t503 + t504) * t350 + t116 * t659 + t723 * t662 + t70 * t665 + t92 * t663;
t410 = t723 * t655 - t62 * t369 / 0.2e1 + t87 * t657;
t2 = t397 + t410;
t445 = t2 * qJD(1) + t112 * qJD(2);
t9 = (t92 / 0.2e1 - t87 / 0.2e1) * t395 + (-t70 / 0.2e1 + t673) * t392 + ((t665 - t658) * t395 + (t663 - t656) * t392) * t308;
t444 = -qJD(1) * t9 + qJD(2) * t252;
t440 = -t344 * t308 - t345 * t681;
t438 = t594 + t596;
t403 = t463 - t575;
t427 = t598 / 0.2e1 - t599 / 0.2e1;
t408 = -t427 * t681 + t638;
t22 = t403 + t408;
t437 = qJD(1) * t22 - qJD(2) * t439;
t96 = t671 + t704 / 0.2e1;
t436 = -qJD(1) * t96 - qJD(2) * t350;
t435 = qJD(2) * t351;
t434 = t681 * (-qJD(5) - t691);
t433 = qJD(4) * t222 + t555;
t431 = t642 / 0.2e1 + t641 / 0.2e1;
t426 = t345 * t668 + t681 * t661;
t401 = t392 * t426 + t487;
t39 = t401 - t474;
t425 = -qJD(1) * t39 - t344 * t551;
t417 = t426 * t395;
t41 = -t146 / 0.2e1 - t417;
t424 = -qJD(1) * t41 - t344 * t553;
t38 = t395 * t398;
t423 = -qJD(1) * t38 - t351 * t553;
t420 = t693 * t681;
t419 = t431 * t395;
t113 = t332 * t647;
t202 = t314 - t597 / 0.2e1;
t3 = -t505 * t326 + (t332 * t476 + t488 + t673) * pkin(5);
t416 = -qJD(1) * t3 + qJD(2) * t113 + qJD(3) * t202;
t399 = t430 / 0.2e1 + t465 / 0.2e1;
t125 = (t657 + t664) * t395 + (t658 + t665) * t392 + t399;
t407 = (t479 - t595 / 0.2e1) * t681 + t638;
t25 = t308 * t507 + t407 - t575;
t415 = qJD(1) * t25 - qJD(2) * t125 - qJD(4) * t438;
t19 = t392 * t457 + t504;
t320 = t357 + t594 / 0.2e1;
t414 = qJD(1) * t19 - qJD(2) * t202 - qJD(4) * t320;
t225 = t454 * t392;
t47 = -t191 / 0.2e1 - t419;
t413 = pkin(4) * t545 - qJD(1) * t47 + qJD(2) * t225;
t226 = t454 * t395;
t404 = t392 * t431 + t487;
t45 = t404 + t475;
t412 = pkin(4) * t544 - qJD(1) * t45 + qJD(2) * t226;
t224 = t382 * t647;
t5 = t505 * t371 + (t382 * t476 + t488 + t672) * pkin(5);
t90 = (t660 + t655 - t332 / 0.2e1) * t647;
t406 = -qJD(1) * t5 - qJD(2) * t90 + qJD(3) * t320 + qJD(4) * t224;
t386 = pkin(5) * t543;
t375 = t378 * qJD(5);
t340 = t350 * qJD(4);
t335 = t392 * t341;
t317 = t320 * qJD(5);
t253 = -0.2e1 * t681 * t380;
t250 = t388 / 0.2e1 + t411;
t228 = (-pkin(4) / 0.2e1 + t344 / 0.2e1 + t660) * t395;
t227 = pkin(4) * t652 + t344 * t651 + t480;
t223 = (t557 * t681 + t466) * pkin(5);
t205 = t452 + t684;
t204 = t451 - t684;
t201 = t202 * qJD(5);
t186 = t514 * t678;
t175 = t483 - t696 / 0.2e1;
t174 = 0.2e1 * t483;
t173 = t482 + t481;
t164 = t176 * qJD(4);
t161 = t173 * qJD(5);
t160 = t172 * qJD(5);
t159 = t165 * qJD(5);
t157 = t182 * t392;
t155 = t162 - t543;
t144 = t448 - t537;
t143 = -t449 + t537;
t126 = t399 + t680 + t682;
t119 = t678 + t460;
t114 = t116 * t507;
t103 = t285 + t274 + t459;
t102 = t284 + t275 + t459;
t98 = -0.2e1 * t575;
t97 = -t707 + 0.2e1 * t671;
t91 = pkin(5) * t480 + (t332 + t382) * t507;
t48 = -t729 + t191 / 0.2e1 - t419;
t46 = t404 - t475;
t42 = -t729 + t146 / 0.2e1 - t417;
t40 = t401 + t474;
t37 = pkin(4) * t710 + t677 * t395 + t725;
t36 = pkin(4) * t481 + t677 * t392 - t724;
t33 = t400 - t428;
t28 = t402 - t429;
t24 = pkin(5) * t482 + t407 + t575;
t21 = -t403 + t408;
t20 = t651 * t85 + t463 + t503 + t638;
t10 = t624 / 0.2e1 - t631 / 0.2e1 + t626 / 0.2e1 + t369 * t710 - t634 / 0.2e1 + (-t479 + t427) * t308;
t6 = pkin(5) * t672 + t382 * t464 + t61 * t657 + t656 * t85 + t114;
t4 = pkin(5) * t673 + t332 * t464 + t61 * t664 + t663 * t85 + t114;
t1 = t397 - t410;
t12 = [0, 0, 0, t394 * t550, t379 * qJD(2), 0, 0, 0, -pkin(1) * t552, -pkin(1) * t550, qJD(3) * t318, qJD(2) * t118 + qJD(3) * t156, -t420, -t514 * t703, 0, 0, 0, qJD(2) * t121 + t546 * t681, qJD(2) * t122 - t308 * t546, -t380 * t701 - t390 * t420, t580 * t693 * t726 - qJD(5) * t189, -t308 * t494 + t514 * t717, -t308 * t493 - t514 * t718 (t547 + t555) * t308, qJD(2) * t26 + qJD(3) * t107 + qJD(4) * t30 + qJD(5) * t44, qJD(2) * t27 + qJD(3) * t109 + qJD(4) * t31 + qJD(5) * t43, -qJD(2) * t13 - qJD(4) * t18 - qJD(5) * t17 + qJD(6) * t188, qJD(2) * t7 + qJD(3) * t23 + qJD(4) * t8 + qJD(5) * t14 - qJD(6) * t34; 0, 0, 0, t490, t515, t550, -t552, 0, -pkin(7) * t550 - t511, pkin(7) * t552 - t510 (-t359 * t623 - t360 * t391) * t636, t540 + (-t324 * t623 + t391 * t679) * t636 + t250 * qJD(3), -t491, -t713, -t693, -t433, 0, -qJD(2) * t715 + qJD(4) * t98 + t566, -qJD(2) * t150 + qJD(4) * t97 + t565, qJD(4) * t157 - t159 - (t392 * t551 + t496) * t308, 0.2e1 * t446 + (t300 - t698) * qJD(2) + t102 * qJD(4) + t253, qJD(4) * t174 + t553 * t681 + t727, t161 - t721 + t572, t716, t606 + (t392 * t440 - t724) * qJD(2) + t36 * qJD(4) + t42 * qJD(5), t605 + (t395 * t440 + t725) * qJD(2) + t37 * qJD(4) + t40 * qJD(5), -t611 + (-t634 + t626 - (-t598 + t599) * t308) * qJD(2) + t10 * qJD(4) + t719, t632 + (-t325 * t62 + t326 * t87 + t332 * t723) * qJD(2) + t28 * qJD(3) + t1 * qJD(4) + t4 * qJD(5) + t21 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t516, qJD(2) * t250 + t562, 0, 0, 0, 0, 0, t519, 0, 0, 0, 0, 0, 0, t161 - t164 + t569, qJD(4) * t175 + t567 + t720, t103 * qJD(4), qJD(2) * t28 + qJD(4) * t33 + qJD(5) * t20 + qJD(6) * t119 + t618; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t492, -t713, -t693, -qJD(2) * t222 - t547, 0, qJD(2) * t98 + qJD(3) * t305 - qJD(4) * t715 + t497, qJD(2) * t97 - qJD(4) * t150 - t498, qJD(2) * t157 - t159 + (-t392 * t544 - t496) * t308, t102 * qJD(2) + t253 + (-qJD(4) * t378 + t451) * t308, qJD(2) * t174 + t545 * t681 + t727, qJD(2) * t177 + t544 * t681 - t721, t716, t604 + t36 * qJD(2) - t176 * qJD(3) + (t392 * t453 - t724) * qJD(4) + t48 * qJD(5), t601 + t37 * qJD(2) + t175 * qJD(3) + (t395 * t453 + t725) * qJD(4) + t46 * qJD(5), -t607 + t10 * qJD(2) + t103 * qJD(3) + (-t631 + t624 + (-t588 + t595) * t308) * qJD(4) + t719, t629 + t1 * qJD(2) + t33 * qJD(3) + (t369 * t70 - t371 * t92 + t382 * t723) * qJD(4) + t6 * qJD(5) + t24 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t676, -t449 * t686 - t560, t392 * t434 + t514 * t714, qJD(2) * t173 + t395 * t434, t186, qJD(2) * t42 + qJD(3) * t173 + qJD(4) * t48 - qJD(5) * t94 + t612, qJD(2) * t40 + qJD(3) * t714 + qJD(4) * t46 + qJD(5) * t93 + t613, pkin(5) * t494 + t514 * t712 - t619, qJD(2) * t4 + qJD(3) * t20 + qJD(4) * t6 - t637 * t86 + t621; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t526, qJD(2) * t21 + qJD(3) * t119 + qJD(4) * t24 - t615; 0, 0, 0, -t490, -t515, 0, 0, 0, t511, t510, 0, qJD(3) * t251 - t540, t491, t713, 0, -t519, 0, -t549 - t566, qJD(4) * t96 - t565 + t690, qJD(4) * t158 + t390 * t491 - t159, qJD(4) * t101 + t253 - 0.2e1 * t446, -qJD(4) * t168 + qJD(5) * t181 - t722, t160 - t164 + t721, -t716, qJD(4) * t35 + qJD(5) * t41 - t395 * t549 - t606, qJD(3) * t696 + qJD(4) * t38 + qJD(5) * t39 - t605, -qJD(3) * t187 + qJD(4) * t9 + qJD(5) * t11 + t611, qJD(3) * t29 + qJD(4) * t2 - qJD(5) * t3 + qJD(6) * t22 - t632; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t341, t340, t380, t375, 0, 0, 0, -t341 * t395 + t344 * t543, t344 * t387 + t335, t573, qJD(4) * t112 + qJD(5) * t113 - qJD(6) * t439; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t523, 0, 0, 0, 0, 0, -t687, t691, 0, 0, 0, 0, 0, -t489, t536, -t527, t201 + t617; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t520, 0, -t341 - t435, t340 - t436, t380 + t561, t375 + t571, -t535, -t532, 0, qJD(5) * t227 - t351 * t467 + t614, qJD(5) * t228 + t335 - t423, -t444 + t573 (t350 * t438 + t351 * t382) * qJD(4) + t91 * qJD(5) + t126 * qJD(6) + t445; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t144, t205, t387 + t529, t155, -t688, qJD(4) * t227 - t345 * t387 - t424, qJD(4) * t228 + t345 * t543 - t425, -t509 + t622, qJD(4) * t91 - t326 * t637 + t416; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t683, qJD(4) * t126 + t437; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t516, -qJD(2) * t251 - t562, 0, 0, 0, 0, 0, t433, -t693, 0, 0, 0, 0, 0, t160 - t569 + t572, -qJD(2) * t696 - qJD(4) * t169 + qJD(5) * t182 - t567, qJD(2) * t187 + qJD(4) * t104, -qJD(2) * t29 - qJD(4) * t32 - qJD(5) * t19 + qJD(6) * t120 - t618; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t523, 0, 0, 0, 0, 0, t687, -t691, 0, 0, 0, 0, 0, t489, -t536, t527, t201 - t617; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t524, -t691, 0, 0, 0, 0, 0, t531, -t534, t542, t317 - t616; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t155, -t387 + t528, 0, -t386 - t414; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t539; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t492, t713, 0, t305 * qJD(2), 0, -qJD(3) * t222 - t497, -qJD(2) * t96 + t498 + t690, -qJD(2) * t158 + t390 * t492 - t159, -qJD(2) * t101 + t308 * t452 + t253, qJD(2) * t168 + qJD(5) * t695 - t722, qJD(2) * t176 - qJD(5) * t697 + t721, -t716, -qJD(2) * t35 - qJD(3) * t177 + qJD(5) * t47 - t604, -qJD(2) * t38 + qJD(3) * t169 + qJD(5) * t45 - t601, -qJD(2) * t9 - qJD(3) * t104 + qJD(5) * t15 + t607, -qJD(2) * t2 + qJD(3) * t32 - qJD(5) * t5 + qJD(6) * t25 - t629; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t520, 0, t435, t436, t380 - t561, t375 - t571, t535, t532, 0, -qJD(5) * t225 + t351 * t551 - t614, -qJD(5) * t226 + t423, t374 + t444, -qJD(5) * t90 - qJD(6) * t125 - t445; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t524, t691, 0, 0, 0, 0, 0, -t531, t534, -t542, t317 + t616; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t380, t375, 0, 0, 0, -pkin(4) * t543, -pkin(4) * t387, t374, qJD(5) * t224 - qJD(6) * t438; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t144, t205, t387 + t530, -t533 - t543, -t688, -pkin(9) * t387 - t413, pkin(9) * t543 - t412, -t509 + t620, t371 * t637 + t406; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t683, t415; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t676, t448 * t686 + t560, -qJD(2) * t181 - qJD(4) * t695 + t392 * t492, -qJD(2) * t172 + qJD(4) * t697 + t395 * t492, t186, -qJD(2) * t41 - qJD(3) * t172 - qJD(4) * t47 - t612, -qJD(2) * t39 - qJD(3) * t182 - qJD(4) * t45 - t613, -qJD(2) * t11 - qJD(4) * t15 + t619, qJD(2) * t3 + qJD(3) * t19 + qJD(4) * t5 - qJD(6) * t512 - t621; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t143, t204, -t529, -t162, t688, qJD(4) * t225 + t424, qJD(4) * t226 + t425, -t622, qJD(4) * t90 - t416 - t508; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t162, -t528, 0, t414; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t143, t204, -t530, t533, t688, t413, t412, -t620, -t406 - t508; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t223; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t526, pkin(5) * t493 - qJD(2) * t22 - qJD(3) * t120 - qJD(4) * t25 + t615; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t683, qJD(4) * t125 + t386 - t437; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t539; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t683, t386 - t415; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t223; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t12;
