% Calculate inertial parameters regressor of coriolis matrix for
% S5PRRRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d2,d3,d4,d5,theta1]';
% 
% Output:
% cmat_reg [(5*5)x(5*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 17:22
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5PRRRR9_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRR9_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRR9_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5PRRRR9_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 17:21:17
% EndTime: 2019-12-05 17:21:41
% DurationCPUTime: 14.86s
% Computational Cost: add. (9975->577), mult. (24327->871), div. (0->0), fcn. (26215->10), ass. (0->423)
t504 = cos(qJ(3));
t733 = t504 * pkin(8);
t500 = sin(qJ(3));
t738 = t500 * pkin(3);
t466 = -t733 + t738;
t503 = cos(qJ(4));
t453 = t503 * t466;
t499 = sin(qJ(4));
t687 = t499 * t500;
t484 = pkin(7) * t687;
t414 = t484 + t453;
t672 = t503 * t504;
t737 = t500 * pkin(4);
t332 = -pkin(9) * t672 + t414 + t737;
t502 = cos(qJ(5));
t682 = t502 * t332;
t451 = t499 * t466;
t685 = t500 * t503;
t632 = pkin(7) * t685;
t415 = t451 - t632;
t686 = t499 * t504;
t349 = -pkin(9) * t686 + t415;
t498 = sin(qJ(5));
t692 = t498 * t349;
t663 = t682 / 0.2e1 - t692 / 0.2e1;
t774 = -pkin(9) - pkin(8);
t465 = t774 * t503;
t625 = t774 * t499;
t369 = -t502 * t465 + t498 * t625;
t741 = pkin(4) * t499;
t621 = pkin(7) + t741;
t454 = t621 * t500;
t492 = -t503 * pkin(4) - pkin(3);
t743 = -t504 / 0.2e1;
t676 = t502 * t499;
t688 = t498 * t503;
t449 = t676 + t688;
t752 = t449 / 0.2e1;
t675 = t502 * t503;
t422 = -t498 * t687 + t500 * t675;
t757 = -t422 / 0.2e1;
t789 = t369 * t743 - t454 * t752 + t492 * t757;
t68 = t663 - t789;
t65 = t663 + t789;
t497 = sin(pkin(5));
t501 = sin(qJ(2));
t697 = t497 * t501;
t727 = cos(pkin(5));
t430 = t500 * t697 - t727 * t504;
t756 = -t430 / 0.2e1;
t813 = t430 / 0.2e1;
t505 = cos(qJ(2));
t696 = t497 * t505;
t622 = t503 * t696;
t431 = t727 * t500 + t504 * t697;
t705 = t431 * t499;
t343 = t622 + t705;
t623 = t499 * t696;
t704 = t431 * t503;
t344 = -t623 + t704;
t565 = t498 * t343 - t502 * t344;
t767 = -t565 / 0.2e1;
t593 = -t498 * t465 - t502 * t625;
t795 = -t593 / 0.2e1;
t594 = t502 * t343 + t498 * t344;
t771 = -t594 / 0.2e1;
t635 = qJD(4) + qJD(5);
t736 = t504 * pkin(3);
t521 = (t774 * t500 - pkin(2) - t736) * t503;
t739 = t499 * pkin(7);
t508 = (-pkin(4) - t739) * t504 + t521;
t300 = t502 * t508;
t577 = -t500 * pkin(8) - t736;
t555 = -pkin(2) + t577;
t631 = pkin(7) * t672;
t405 = t499 * t555 + t631;
t346 = -pkin(9) * t687 + t405;
t693 = t498 * t346;
t198 = -t300 + t693;
t633 = pkin(7) * t686;
t345 = t521 - t633;
t681 = t502 * t345;
t222 = t681 - t693;
t803 = t198 + t222;
t507 = t498 * t508;
t680 = t502 * t346;
t199 = t507 + t680;
t694 = t498 * t345;
t221 = -t680 - t694;
t802 = t199 + t221;
t671 = t504 * t505;
t683 = t501 * t503;
t400 = (-t499 * t671 + t683) * t497;
t678 = t502 * t400;
t684 = t501 * t499;
t401 = (t503 * t671 + t684) * t497;
t690 = t498 * t401;
t540 = -t690 / 0.2e1 + t678 / 0.2e1;
t810 = t422 * t813 + t504 * t767;
t797 = t540 - t810;
t812 = qJD(1) * t797;
t677 = t502 * t401;
t691 = t498 * t400;
t541 = -t691 / 0.2e1 - t677 / 0.2e1;
t419 = t449 * t500;
t809 = t419 * t756 + t504 * t771;
t799 = t541 - t809;
t811 = qJD(1) * t799;
t689 = t498 * t499;
t445 = -t675 + t689;
t754 = -t445 / 0.2e1;
t758 = -t419 / 0.2e1;
t801 = t454 * t754 + t492 * t758 + t504 * t795;
t539 = t688 / 0.2e1 + t676 / 0.2e1;
t753 = -t449 / 0.2e1;
t174 = (t753 + t539) * t430;
t808 = qJD(2) * t797 + t174 * qJD(3);
t602 = t675 / 0.2e1;
t538 = t602 - t689 / 0.2e1;
t175 = (t445 / 0.2e1 + t538) * t430;
t807 = qJD(2) * t799 + t175 * qJD(3);
t177 = (t539 + t752) * t430;
t798 = t540 + t810;
t806 = qJD(2) * t798 + t177 * qJD(3) + t565 * t635;
t176 = (t538 + t754) * t430;
t800 = t541 + t809;
t805 = qJD(2) * t800 + t176 * qJD(3) + t594 * t635;
t215 = -t419 * t752 + t422 * t754;
t804 = t635 * t215;
t679 = t502 * t349;
t603 = -t679 / 0.2e1;
t695 = t498 * t332;
t542 = -t695 / 0.2e1 + t603;
t66 = t542 - t801;
t796 = -t369 / 0.2e1;
t794 = t593 / 0.2e1;
t793 = t594 / 0.2e1;
t657 = qJD(3) * t449;
t788 = -t215 * qJD(2) + t445 * t657;
t660 = qJD(2) * t422;
t787 = t215 * qJD(3) - t419 * t660;
t648 = t175 * qJD(1);
t786 = t593 * t635 - t648;
t783 = t635 * t369;
t592 = t635 * t449;
t782 = t445 * t592;
t649 = t174 * qJD(1);
t656 = qJD(3) * t492;
t780 = t65 * qJD(2) - t449 * t656 + t649;
t277 = t445 * t741 + t492 * t449;
t744 = t503 / 0.2e1;
t600 = t445 * t744;
t748 = -t499 / 0.2e1;
t606 = t419 * t748;
t746 = -t502 / 0.2e1;
t51 = (-t606 + (t600 + t746) * t500) * pkin(4) - t65;
t779 = -t51 * qJD(2) - t277 * qJD(3) + t649;
t493 = t499 ^ 2;
t495 = t503 ^ 2;
t477 = t495 - t493;
t638 = t500 * qJD(2);
t620 = t503 * t638;
t778 = t477 * qJD(3) - 0.2e1 * t499 * t620;
t773 = t198 / 0.2e1;
t772 = t199 / 0.2e1;
t768 = t565 / 0.2e1;
t766 = t221 / 0.2e1;
t765 = -t300 / 0.2e1;
t764 = t343 / 0.2e1;
t763 = t345 / 0.2e1;
t755 = t431 / 0.2e1;
t468 = t498 * t686;
t751 = -t468 / 0.2e1;
t750 = -t498 / 0.2e1;
t749 = t498 / 0.2e1;
t747 = -t500 / 0.2e1;
t745 = t502 / 0.2e1;
t742 = t504 / 0.2e1;
t740 = t431 * pkin(7);
t735 = t504 * pkin(4);
t734 = t504 * pkin(7);
t732 = -qJD(4) / 0.2e1;
t597 = t768 + t767;
t598 = t793 + t771;
t26 = t598 * t419 + t597 * t422;
t731 = t26 * qJD(4);
t31 = t598 * t445 + t597 * t449;
t730 = t31 * qJD(4);
t729 = pkin(4) * qJD(4);
t728 = pkin(4) * qJD(5);
t718 = t343 * t504;
t245 = t678 - t690;
t246 = t677 + t691;
t624 = t500 * t696;
t588 = t430 * t624;
t39 = -t245 * t594 - t246 * t565 + t588;
t711 = t39 * qJD(1);
t257 = t430 * t449;
t258 = t430 * t445;
t40 = -t257 * t594 - t258 * t565 + t430 * t431;
t710 = t40 * qJD(1);
t534 = t503 * t555;
t404 = -t534 + t633;
t709 = t404 * t504;
t708 = t405 * t504;
t267 = t430 * t499;
t703 = t454 * t419;
t702 = t454 * t422;
t674 = t503 * t405;
t494 = t500 ^ 2;
t673 = t503 * t494;
t604 = t685 / 0.2e1;
t626 = t734 / 0.2e1;
t75 = (t735 + t499 * t626 - t534 / 0.2e1 + pkin(9) * t604 + t763) * t498;
t670 = t75 * qJD(2);
t627 = t735 / 0.2e1;
t77 = t765 + (t627 + t763) * t502;
t669 = t77 * qJD(2);
t89 = (-t343 * t499 - t344 * t503 + t431) * t430;
t668 = t89 * qJD(1);
t90 = -t343 * t400 + t344 * t401 + t588;
t667 = t90 * qJD(1);
t117 = t419 * t445 - t449 * t422;
t666 = t635 * t117;
t496 = t504 ^ 2;
t478 = t496 - t494;
t661 = qJD(2) * t419;
t659 = qJD(2) * t497;
t658 = qJD(2) * t504;
t655 = qJD(3) * t499;
t654 = qJD(3) * t503;
t653 = qJD(4) * t499;
t652 = qJD(4) * t503;
t651 = qJD(4) * t504;
t650 = qJD(5) * t492;
t421 = t449 * t504;
t423 = t502 * t672 - t468;
t179 = -t423 * t419 - t422 * t421;
t647 = t179 * qJD(2);
t226 = (t430 * t500 + t431 * t504 - t697) * t696;
t646 = t226 * qJD(1);
t260 = t419 * t500 - t421 * t504;
t645 = t260 * qJD(2);
t261 = -t422 * t500 + t423 * t504;
t644 = t261 * qJD(2);
t285 = (t753 - t539) * t504;
t274 = t285 * qJD(2);
t286 = t751 + (t602 + t754) * t504;
t275 = t286 * qJD(2);
t643 = t431 * qJD(3);
t432 = (t493 / 0.2e1 - t495 / 0.2e1) * t500;
t642 = t432 * qJD(4);
t448 = t478 * t499;
t641 = t448 * qJD(2);
t450 = t503 * t496 - t673;
t640 = t450 * qJD(2);
t639 = t478 * qJD(2);
t637 = t500 * qJD(3);
t636 = t504 * qJD(3);
t634 = pkin(4) * t685;
t630 = pkin(2) * t638;
t629 = pkin(2) * t658;
t628 = t741 / 0.2e1;
t619 = t499 * t651;
t618 = t503 * t651;
t615 = t505 * t659;
t614 = t499 * t652;
t613 = t499 * t654;
t612 = t500 * t636;
t481 = t504 * t638;
t611 = t503 * t637;
t610 = t344 * t743;
t609 = -t267 / 0.2e1;
t608 = -t696 / 0.2e1;
t607 = t696 / 0.2e1;
t605 = -t685 / 0.2e1;
t601 = t502 * t742;
t599 = -t671 / 0.2e1;
t596 = pkin(4) * t635;
t595 = (-t493 - t495) * t430;
t591 = t635 * t504;
t590 = pkin(4) * t604;
t589 = -qJD(4) + t658;
t586 = t494 * t614;
t584 = t499 * t611;
t583 = t430 * t605;
t582 = t500 * t608;
t581 = t445 * t607;
t580 = t449 * t607;
t579 = t499 * t607;
t578 = t503 * t608;
t208 = t682 - t692;
t211 = t679 + t695;
t455 = t621 * t504;
t506 = t208 * t771 + t211 * t767 - t257 * t198 / 0.2e1 + t258 * t772 + t455 * t813 + t454 * t755;
t514 = t245 * t794 + t246 * t796 + t492 * t582;
t2 = t506 + t514;
t32 = -t198 * t208 + t199 * t211 + t454 * t455;
t576 = t2 * qJD(1) + t32 * qJD(2);
t512 = t199 * t793 + t222 * t768 + t565 * t773 + t594 * t766;
t546 = t245 * t745 + t246 * t749;
t3 = (t583 + t546) * pkin(4) + t512;
t35 = -t198 * t221 + t199 * t222 + t454 * t634;
t575 = -t3 * qJD(1) + t35 * qJD(2);
t574 = -qJD(5) + t589;
t510 = t257 * t757 + t258 * t758 + t421 * t768 + t423 * t793;
t547 = t245 * t753 + t246 * t754;
t16 = t510 - t547;
t24 = t198 * t423 - t199 * t421 - t208 * t422 - t211 * t419;
t572 = t16 * qJD(1) + t24 * qJD(2);
t27 = -t803 * t419 - t802 * t422;
t571 = t26 * qJD(1) + t27 * qJD(2);
t518 = t257 * t742 - t419 * t755 + t421 * t756;
t41 = (t581 + t793) * t500 + t518;
t47 = -t198 * t500 - t208 * t504 + t455 * t419 + t454 * t421;
t570 = -t41 * qJD(1) + t47 * qJD(2);
t517 = t258 * t743 + t423 * t756 + t431 * t757;
t42 = (t580 + t767) * t500 + t517;
t48 = -t199 * t500 + t211 * t504 + t455 * t422 + t454 * t423;
t569 = -t42 * qJD(1) + t48 * qJD(2);
t93 = -t221 * t504 + t419 * t634 + t702;
t568 = -qJD(2) * t93 + t812;
t94 = t222 * t504 + t422 * t634 - t703;
t567 = -qJD(2) * t94 + t811;
t566 = qJD(2) * t26 + qJD(3) * t31;
t564 = -t414 * t499 + t415 * t503;
t103 = (t414 * t500 - t709) * t503 + (t415 * t500 + t708) * t499;
t92 = (t718 / 0.2e1 - t401 / 0.2e1) * t503 + (t610 + t400 / 0.2e1) * t499;
t563 = t92 * qJD(1) - t103 * qJD(2);
t111 = -t198 * t504 - t703;
t562 = -qJD(2) * t111 + t811;
t112 = t199 * t504 + t702;
t561 = -qJD(2) * t112 + t812;
t136 = t504 * pkin(7) ^ 2 * t500 - t404 * t414 + t405 * t415;
t543 = t400 * t748 + t401 * t744;
t525 = t543 * pkin(8);
t544 = t414 * t764 - t344 * t415 / 0.2e1;
t33 = pkin(3) * t582 + t740 * t747 + t525 + (t674 / 0.2e1 + t499 * t404 / 0.2e1 - t734 / 0.2e1) * t430 + t544;
t560 = -t33 * qJD(1) + t136 * qJD(2);
t227 = t404 * t500 + (t414 - 0.2e1 * t484) * t504;
t98 = (t578 + t764 - t705 / 0.2e1) * t500;
t559 = -t98 * qJD(1) - t227 * qJD(2);
t228 = t415 * t504 + (-t405 + 0.2e1 * t631) * t500;
t97 = (t579 + t344 / 0.2e1 - t704 / 0.2e1) * t500;
t558 = -t97 * qJD(1) + t228 * qJD(2);
t278 = -t492 * t445 + t449 * t741;
t49 = (t422 * t748 + (t503 * t753 + t750) * t500) * pkin(4) + t66;
t556 = t49 * qJD(2) - t278 * qJD(3);
t554 = t589 * t500;
t520 = (t499 * t599 + t683 / 0.2e1) * t497;
t530 = t610 + t583;
t158 = t520 + t530;
t327 = -pkin(7) * t673 - t708;
t553 = t158 * qJD(1) + t327 * qJD(2);
t519 = (t503 * t599 - t684 / 0.2e1) * t497;
t531 = -t718 / 0.2e1 + t500 * t609;
t159 = t519 - t531;
t326 = -t494 * t739 - t709;
t552 = t159 * qJD(1) - t326 * qJD(2);
t229 = t419 ^ 2 - t422 ^ 2;
t55 = qJD(2) * t229 + qJD(3) * t117;
t271 = t445 ^ 2 - t449 ^ 2;
t73 = qJD(2) * t117 + qJD(3) * t271;
t551 = t733 / 0.2e1 - t738 / 0.2e1;
t533 = t551 * t499;
t341 = t451 / 0.2e1 - t533;
t550 = pkin(3) * t654 - t341 * qJD(2);
t532 = t551 * t503;
t342 = -t453 / 0.2e1 + t532;
t549 = pkin(3) * t655 - t342 * qJD(2);
t548 = t208 * t745 + t211 * t749;
t545 = t257 * t745 + t258 * t749;
t537 = t66 * qJD(2) + t445 * t656;
t535 = t503 * t554;
t373 = -t432 * qJD(2) + t613;
t350 = t499 * qJD(2) * t673 + t432 * qJD(3);
t447 = t477 * t494;
t527 = t447 * qJD(2) + 0.2e1 * t584;
t524 = (t421 * t750 + t423 * t746) * pkin(4);
t13 = (t609 + t545) * pkin(4);
t513 = t802 * t794 + t803 * t796;
t7 = (t454 * t748 + t492 * t605 + t548) * pkin(4) + t513;
t96 = t492 * t741;
t523 = -t13 * qJD(1) - t7 * qJD(2) + t96 * qJD(3);
t5 = (t772 + t766) * t449 + (t222 / 0.2e1 + t773) * t445 + (t369 / 0.2e1 + t796) * t422 + (t795 + t794) * t419 + t524;
t522 = t31 * qJD(1) - t5 * qJD(2);
t489 = -t638 / 0.2e1;
t488 = t638 / 0.2e1;
t487 = t637 / 0.2e1;
t464 = t494 * pkin(7) * t696;
t440 = t500 * t732 + t481;
t416 = t481 + (t732 - qJD(5) / 0.2e1) * t500;
t296 = t484 + t453 / 0.2e1 + t532;
t295 = t632 - t451 / 0.2e1 - t533;
t288 = t449 * t742 - t539 * t504;
t287 = t445 * t742 + t503 * t601 + t751;
t269 = t430 * t503;
t225 = t285 * qJD(3) - t422 * t658;
t224 = t286 * qJD(3) - t419 * t658;
t197 = -t592 - t274;
t196 = -t635 * t445 - t275;
t161 = t520 - t530;
t160 = t519 + t531;
t110 = t288 * qJD(3) + t422 * t574;
t109 = t287 * qJD(3) + t419 * t574;
t100 = t344 * t747 + t431 * t604 + t500 * t579;
t99 = t343 * t747 + t500 * t578 + t687 * t755;
t91 = (t343 * t744 + t344 * t748) * t504 + t543;
t78 = pkin(4) * t601 + t693 + t765 - t681 / 0.2e1;
t76 = t498 * t627 - t680 - t507 / 0.2e1 - t694 / 0.2e1;
t67 = t542 + t801;
t52 = t422 * t628 + t449 * t590 + t603 + (-t737 / 0.2e1 - t332 / 0.2e1) * t498 + t801;
t50 = t737 * t745 + (t500 * t600 - t606) * pkin(4) + t68;
t44 = t500 * t580 - t565 * t747 - t517;
t43 = t500 * t581 + t594 * t747 - t518;
t34 = t674 * t756 + t404 * t609 + t430 * t626 + (t740 / 0.2e1 + pkin(3) * t608) * t500 + t525 - t544;
t15 = t510 + t547;
t14 = t545 * pkin(4) + t430 * t628;
t8 = t548 * pkin(4) + t454 * t628 + t492 * t590 - t513;
t6 = t419 * t795 - t593 * t758 + t802 * t753 + t803 * t754 + t524;
t4 = t546 * pkin(4) + t430 * t590 - t512;
t1 = t506 - t514;
t9 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t226, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t90 + qJD(3) * t89, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t39 + qJD(3) * t40; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t501 * t659, -t615, 0, 0, 0, 0, 0, 0, 0, 0, (-t501 * t658 - t505 * t637) * t497, (t501 * t638 - t505 * t636) * t497, (t494 + t496) * t615, t646 + (t464 + (pkin(7) * t496 * t505 - pkin(2) * t501) * t497) * qJD(2), 0, 0, 0, 0, 0, 0, (-t400 * t504 + t494 * t623) * qJD(2) + t99 * qJD(3) + t161 * qJD(4), (t401 * t504 + t494 * t622) * qJD(2) + t100 * qJD(3) + t160 * qJD(4), t91 * qJD(3) + (-t400 * t503 - t401 * t499) * t638, t667 + (-t400 * t404 + t401 * t405 + t464) * qJD(2) + t34 * qJD(3), 0, 0, 0, 0, 0, 0, (-t245 * t504 + t419 * t624) * qJD(2) + t43 * qJD(3) + t635 * t798, (t246 * t504 + t422 * t624) * qJD(2) + t44 * qJD(3) + t635 * t800, (-t245 * t422 - t246 * t419) * qJD(2) + t15 * qJD(3) + t731, t711 + (-t245 * t198 + t246 * t199 + t454 * t624) * qJD(2) + t1 * qJD(3) + t4 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t500 * t615 - t643, t430 * qJD(3) - t504 * t615, 0, 0, 0, 0, 0, 0, 0, 0, t99 * qJD(2) + t267 * qJD(4) - t503 * t643, t100 * qJD(2) + t269 * qJD(4) + t499 * t643, t91 * qJD(2) + qJD(3) * t595, t668 + t34 * qJD(2) + (-t431 * pkin(3) + pkin(8) * t595) * qJD(3), 0, 0, 0, 0, 0, 0, t43 * qJD(2) + t177 * t635 + t445 * t643, t44 * qJD(2) + t176 * t635 + t449 * t643, t15 * qJD(2) + (-t257 * t449 - t258 * t445) * qJD(3) + t730, t710 + t1 * qJD(2) + (-t257 * t593 + t258 * t369 + t431 * t492) * qJD(3) + t14 * qJD(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t161 * qJD(2) + t267 * qJD(3) - t344 * qJD(4), t160 * qJD(2) + t269 * qJD(3) + t343 * qJD(4), 0, 0, 0, 0, 0, 0, 0, 0, t806, t805, t566, t4 * qJD(2) + t14 * qJD(3) + (-t498 * t594 + t502 * t565) * t729; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t806, t805, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t646, 0, 0, 0, 0, 0, 0, -qJD(3) * t98 - qJD(4) * t158, -qJD(3) * t97 - qJD(4) * t159, qJD(3) * t92, -qJD(3) * t33 - t667, 0, 0, 0, 0, 0, 0, -qJD(3) * t41 - t635 * t797, -qJD(3) * t42 - t635 * t799, qJD(3) * t16 + t731, qJD(3) * t2 - qJD(4) * t3 - t711; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t612, t478 * qJD(3), 0, -t612, 0, 0, -pkin(2) * t637, -pkin(2) * t636, 0, 0, t495 * t612 - t586, -t447 * qJD(4) - 0.2e1 * t504 * t584, -t450 * qJD(3) + t500 * t619, t493 * t612 + t586, t448 * qJD(3) + t500 * t618, -t612, -t227 * qJD(3) - t327 * qJD(4), t228 * qJD(3) + t326 * qJD(4), -qJD(3) * t103, qJD(3) * t136, (qJD(3) * t423 - t419 * t635) * t422, qJD(3) * t179 + t229 * t635, -t261 * qJD(3) + t419 * t591, (qJD(3) * t421 + t422 * t635) * t419, -t260 * qJD(3) + t422 * t591, -t612, qJD(3) * t47 + qJD(4) * t93 + qJD(5) * t112, qJD(3) * t48 + qJD(4) * t94 + qJD(5) * t111, qJD(3) * t24 + qJD(4) * t27, qJD(3) * t32 + qJD(4) * t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t481, t639, t636, -t481, -t637, 0, -pkin(7) * t636 - t630, pkin(7) * t637 - t629, 0, 0, -t642 + (t495 * t638 + t613) * t504, -0.2e1 * t500 * t614 + t778 * t504, t499 * t637 - t640, t642 + (t493 * t638 - t613) * t504, t611 + t641, -t440, (t499 * t577 - t631) * qJD(3) + t296 * qJD(4) + t559, (t503 * t577 + t633) * qJD(3) + t295 * qJD(4) + t558, qJD(3) * t564 + t563, (-pkin(3) * t734 + pkin(8) * t564) * qJD(3) + t560, (t657 + t660) * t423 + t804, t647 + (-t449 * t421 - t423 * t445) * qJD(3) + t666, t287 * t635 + t449 * t637 - t644, (qJD(3) * t445 + t661) * t421 - t804, t288 * t635 - t445 * t637 - t645, -t416, (t492 * t421 + t455 * t445 - t500 * t593) * qJD(3) + t50 * qJD(4) + t68 * qJD(5) + t570, (-t369 * t500 + t492 * t423 + t455 * t449) * qJD(3) + t52 * qJD(4) + t67 * qJD(5) + t569, (-t208 * t449 - t211 * t445 - t369 * t421 + t423 * t593) * qJD(3) + t6 * qJD(4) + t572, (-t208 * t593 + t211 * t369 + t455 * t492) * qJD(3) + t8 * qJD(4) + t576; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t350, -t527, t499 * t554, t350, t535, t487, t296 * qJD(3) - t405 * qJD(4) - t553, t295 * qJD(3) + t404 * qJD(4) - t552, 0, 0, t787, t55, t109, -t787, t110, t487, qJD(3) * t50 + qJD(4) * t221 + qJD(5) * t76 - t568, qJD(3) * t52 - qJD(4) * t222 + qJD(5) * t78 - t567, t6 * qJD(3) + (t419 * t502 - t422 * t498) * t729 + t571, t8 * qJD(3) + (t221 * t502 + t222 * t498) * t729 + t575; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t787, t55, t109, -t787, t110, t487, qJD(3) * t68 + qJD(4) * t76 - qJD(5) * t199 - t561, qJD(3) * t67 + qJD(4) * t78 + qJD(5) * t198 - t562, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t98, qJD(2) * t97, -qJD(2) * t92, qJD(2) * t33 - t668, 0, 0, 0, 0, 0, 0, qJD(2) * t41 - t174 * t635, qJD(2) * t42 - t175 * t635, -qJD(2) * t16 + t730, -qJD(2) * t2 - qJD(4) * t13 - t710; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t481, -t639, 0, t481, 0, 0, t630, t629, 0, 0, -t481 * t495 - t642, 0.2e1 * t499 * t535, -t618 + t640, -t481 * t493 + t642, t619 - t641, t440, t342 * qJD(4) - t559, t341 * qJD(4) - t558, -t563, -t560, -t423 * t660 + t804, -t647 + t666, -t286 * t635 + t644, -t421 * t661 - t804, -t285 * t635 + t645, t416, qJD(4) * t51 - qJD(5) * t65 - t570, -qJD(4) * t49 - qJD(5) * t66 - t569, -qJD(4) * t5 - t572, -qJD(4) * t7 - t576; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t614, t477 * qJD(4), 0, -t614, 0, 0, -pkin(3) * t653, -pkin(3) * t652, 0, 0, -t782, t635 * t271, 0, t782, 0, 0, t277 * qJD(4) + t449 * t650, t278 * qJD(4) - t445 * t650, 0, qJD(4) * t96; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t373, t778, -t589 * t503, -t373, t589 * t499, t489, -pkin(8) * t652 - t549, pkin(8) * t653 - t550, 0, 0, -t788, t73, t196, t788, t197, t489, -t779 - t783, -t556 + t786, (t445 * t502 - t449 * t498) * t729 + t522, (-t369 * t502 - t498 * t593) * t729 + t523; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t788, t73, t196, t788, t197, t489, -t780 - t783, -t537 + t786, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t158, qJD(2) * t159, 0, 0, 0, 0, 0, 0, 0, 0, t808, t807, -t566, qJD(2) * t3 + qJD(3) * t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t350, t527, (-t499 * t638 + t654) * t504, -t350, (-t620 - t655) * t504, t487, -t342 * qJD(3) + t553, -t341 * qJD(3) + t552, 0, 0, -t787, -t55, t224, t787, t225, t487, -qJD(3) * t51 + qJD(5) * t75 + t568, qJD(3) * t49 + qJD(5) * t77 + t567, qJD(3) * t5 - t571, qJD(3) * t7 - t575; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t373, -t778, t503 * t658, t373, -t499 * t658, t488, t549, t550, 0, 0, t788, -t73, t275, -t788, t274, t488, t779, t648 + t556, -t522, -t523; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t498 * t728, -t502 * t728, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t498 * t596 + t670, -t502 * t596 + t669, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t808, t807, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t787, -t55, t224, t787, t225, t487, qJD(3) * t65 - qJD(4) * t75 + t561, qJD(3) * t66 - qJD(4) * t77 + t562, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t788, -t73, t275, -t788, t274, t488, t780, t648 + t537, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t498 * t729 - t670, t502 * t729 - t669, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t9;
