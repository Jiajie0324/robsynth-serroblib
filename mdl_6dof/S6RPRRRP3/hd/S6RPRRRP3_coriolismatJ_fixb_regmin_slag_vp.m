% Calculate minimal parameter regressor of coriolis matrix for
% S6RPRRRP3
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
% cmat_reg [(6*%NQJ)%x29]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 06:06
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPRRRP3_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP3_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP3_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP3_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 06:05:20
% EndTime: 2019-03-09 06:05:45
% DurationCPUTime: 14.35s
% Computational Cost: add. (12823->691), mult. (25864->874), div. (0->0), fcn. (25868->8), ass. (0->505)
t513 = cos(qJ(3));
t785 = t513 * pkin(8);
t510 = sin(qJ(3));
t789 = t510 * pkin(3);
t467 = -t785 + t789;
t512 = cos(qJ(4));
t455 = t512 * t467;
t486 = sin(pkin(10)) * pkin(1) + pkin(7);
t509 = sin(qJ(4));
t724 = t509 * t510;
t457 = t486 * t724;
t714 = t512 * t513;
t297 = t510 * pkin(4) - pkin(9) * t714 + t455 + t457;
t508 = sin(qJ(5));
t260 = t508 * t297;
t453 = t509 * t467;
t720 = t510 * t512;
t641 = t486 * t720;
t723 = t509 * t513;
t326 = -pkin(9) * t723 + t453 - t641;
t511 = cos(qJ(5));
t309 = t511 * t326;
t700 = t260 / 0.2e1 + t309 / 0.2e1;
t716 = t511 * t512;
t421 = -t508 * t724 + t510 * t716;
t744 = t421 * qJ(6);
t717 = t511 * t509;
t725 = t508 * t512;
t450 = t717 + t725;
t418 = t450 * t510;
t793 = t418 * pkin(5);
t590 = -t744 + t793;
t796 = pkin(4) * t509;
t611 = t486 + t796;
t592 = t611 * t510;
t200 = t592 + t590;
t726 = t508 * t509;
t446 = -t716 + t726;
t809 = -t446 / 0.2e1;
t795 = pkin(4) * t512;
t498 = -pkin(3) - t795;
t739 = t450 * qJ(6);
t791 = t446 * pkin(5);
t589 = -t739 + t791;
t310 = t498 + t589;
t847 = -t310 / 0.2e1;
t827 = t200 * t809 + t418 * t847;
t823 = -pkin(9) - pkin(8);
t466 = t823 * t512;
t643 = t823 * t509;
t610 = -t508 * t466 - t511 * t643;
t844 = t610 * t513;
t851 = -t844 / 0.2e1;
t854 = t700 + t827 + t851;
t731 = t498 * t418;
t850 = t844 / 0.2e1;
t853 = t731 / 0.2e1 - t700 + t850;
t852 = t700 - t827 + t850;
t564 = -t592 / 0.2e1;
t73 = t851 + t446 * t564 - t731 / 0.2e1 - t700;
t652 = qJD(4) + qJD(5);
t814 = -t610 / 0.2e1;
t849 = t418 * t814;
t537 = -t511 * t466 + t508 * t643;
t837 = t537 * t513;
t340 = t837 / 0.2e1;
t806 = t450 / 0.2e1;
t810 = t421 / 0.2e1;
t552 = t200 * t806 + t310 * t810;
t835 = t340 + t552;
t718 = t511 * t297;
t727 = t508 * t326;
t698 = t718 / 0.2e1 - t727 / 0.2e1;
t788 = t510 * pkin(5);
t591 = -t788 / 0.2e1 - t698;
t488 = -cos(pkin(10)) * pkin(1) - pkin(2);
t786 = t513 * pkin(3);
t595 = -t510 * pkin(8) - t786;
t526 = t595 + t488;
t465 = t513 * t486;
t640 = t512 * t465;
t333 = t509 * t526 + t640;
t290 = -pkin(9) * t724 + t333;
t257 = t511 * t290;
t528 = t510 * t823 + t488;
t738 = t486 * t509;
t612 = -pkin(4) - t738;
t145 = t257 + t528 * t725 + (t508 * (-pkin(3) * t512 + t612) - qJ(6)) * t513;
t522 = (t528 - t786) * t512;
t519 = t513 * t612 + t522;
t237 = t511 * t519;
t728 = t508 * t290;
t154 = -t237 + t728;
t146 = pkin(5) * t513 + t154;
t839 = t537 / 0.2e1;
t848 = t145 * t814 + t146 * t839;
t840 = -t537 / 0.2e1;
t815 = t610 / 0.2e1;
t341 = -t837 / 0.2e1;
t838 = t418 * t652;
t845 = t421 * t652;
t507 = t513 ^ 2;
t825 = t421 ^ 2;
t379 = t507 + t825;
t606 = t652 * t513;
t682 = qJD(3) * t450;
t843 = -t379 * qJD(1) - t421 * t682 + t606;
t546 = -t725 / 0.2e1 - t717 / 0.2e1;
t300 = (t806 + t546) * t513;
t666 = t300 * qJD(2);
t836 = t652 * t537;
t842 = -t666 - t836;
t841 = t652 * t610;
t798 = -t513 / 0.2e1;
t619 = t446 * t798;
t797 = t513 / 0.2e1;
t621 = t508 * t797;
t800 = -t511 / 0.2e1;
t303 = t509 * t621 + t714 * t800 + t619;
t663 = t303 * qJD(2);
t681 = qJD(3) * t498;
t563 = t592 / 0.2e1;
t72 = t446 * t563 + t853;
t834 = qJD(1) * t72 + t446 * t681 + t663;
t296 = -t446 * t498 + t450 * t796;
t790 = t508 * pkin(4);
t647 = -t790 / 0.2e1;
t648 = -t795 / 0.2e1;
t808 = t446 / 0.2e1;
t811 = -t421 / 0.2e1;
t48 = t796 * t811 + (t450 * t648 + t611 * t808 + t647) * t510 + t853;
t833 = qJD(1) * t48 - qJD(3) * t296 + t663;
t343 = pkin(5) * t450 + qJ(6) * t446;
t758 = t310 * t446;
t144 = -t343 * t450 + t758;
t747 = t418 * qJ(6);
t794 = pkin(5) * t421;
t258 = t747 + t794;
t807 = -t450 / 0.2e1;
t549 = t258 * t807 + t343 * t811;
t722 = t510 * qJ(6);
t26 = -t549 + t722 + t854;
t545 = t716 / 0.2e1 - t726 / 0.2e1;
t301 = (t808 + t545) * t513;
t665 = t301 * qJD(2);
t832 = qJD(1) * t26 - qJD(3) * t144 + t665;
t314 = t343 + t796;
t136 = -t314 * t450 + t758;
t651 = pkin(4) * t720;
t214 = t258 + t651;
t551 = t214 * t806 + t314 * t810;
t487 = qJ(6) + t790;
t804 = t487 / 0.2e1;
t821 = qJ(6) / 0.2e1;
t594 = (t804 + t821) * t510;
t22 = t594 + t551 + t854;
t831 = qJD(1) * t22 - qJD(3) * t136 + t665;
t642 = t509 * t465;
t289 = t522 - t642;
t817 = -t237 / 0.2e1;
t66 = t817 + (pkin(4) * t797 + t289 / 0.2e1) * t511;
t783 = pkin(4) * qJD(4);
t645 = t66 * qJD(1) - t511 * t783;
t829 = t537 * qJD(6);
t828 = t421 * t840 + t849;
t504 = t509 ^ 2;
t506 = t512 ^ 2;
t480 = t506 - t504;
t658 = t510 * qJD(1);
t633 = t512 * t658;
t826 = qJD(3) * t480 - 0.2e1 * t509 * t633;
t445 = t450 ^ 2;
t824 = -pkin(5) / 0.2e1;
t822 = -qJ(6) / 0.2e1;
t820 = t145 / 0.2e1;
t819 = t146 / 0.2e1;
t818 = t200 / 0.2e1;
t812 = t418 / 0.2e1;
t805 = -t487 / 0.2e1;
t787 = t511 * pkin(4);
t497 = -pkin(5) - t787;
t803 = t497 / 0.2e1;
t802 = t508 / 0.2e1;
t801 = -t510 / 0.2e1;
t799 = t511 / 0.2e1;
t420 = t450 * t513;
t792 = t420 * pkin(5);
t782 = pkin(4) * qJD(5);
t423 = t513 * t446;
t562 = t420 * t822 - t423 * t824;
t616 = t154 / 0.2e1 - t146 / 0.2e1;
t517 = t508 * t519;
t155 = t517 + t257;
t618 = t820 - t155 / 0.2e1;
t8 = -t446 * t616 + t450 * t618 + t562;
t781 = t8 * qJD(1);
t729 = t508 * t289;
t164 = t257 + t729;
t516 = -t517 / 0.2e1 - t257 / 0.2e1;
t515 = pkin(4) * t621 + t516;
t593 = t257 / 0.2e1 + t729 / 0.2e1;
t65 = t515 - t593;
t780 = -t164 * qJD(4) + t65 * qJD(5);
t779 = t65 * qJD(4) - t155 * qJD(5);
t762 = t200 * t421;
t767 = t164 * t513;
t42 = t214 * t418 + t762 + t767;
t777 = qJD(1) * t42;
t768 = t155 * t513;
t45 = t258 * t418 + t762 + t768;
t776 = qJD(1) * t45;
t307 = t421 * t592;
t80 = -t418 * t651 - t307 - t767;
t775 = qJD(1) * t80;
t719 = t511 * t289;
t165 = t719 - t728;
t766 = t165 * t513;
t81 = t766 + (-t418 * t611 + t421 * t795) * t510;
t774 = qJD(1) * t81;
t769 = t154 * t513;
t93 = -t418 * t592 - t769;
t773 = qJD(1) * t93;
t94 = -t307 - t768;
t772 = qJD(1) * t94;
t13 = t258 * t798 - t418 * t618 - t421 * t616;
t771 = t13 * qJD(1);
t615 = t165 / 0.2e1 + t819;
t617 = t820 - t164 / 0.2e1;
t14 = t214 * t798 - t418 * t617 + t421 * t615;
t770 = t14 * qJD(1);
t18 = (-t145 + t155) * t421 + (-t146 + t154) * t418;
t765 = t18 * qJD(1);
t19 = (-t145 + t164) * t421 + (-t146 - t165) * t418;
t764 = t19 * qJD(1);
t691 = t309 + t260;
t166 = t691 + t722;
t582 = t718 - t727;
t167 = -t582 - t788;
t20 = -t145 * t420 - t146 * t423 - t166 * t418 + t167 * t421;
t763 = t20 * qJD(1);
t430 = pkin(4) * t723 + t465;
t742 = t423 * qJ(6);
t201 = t430 + t742 + t792;
t31 = -t146 * t510 + t167 * t513 + t200 * t420 + t201 * t418;
t760 = t31 * qJD(1);
t757 = t310 * t450;
t753 = t610 * t510;
t750 = t537 * t510;
t39 = t691 * t513 + t430 * t421 + (-t423 * t611 - t155) * t510;
t748 = t39 * qJD(1);
t745 = t420 * t450;
t176 = t200 * t418;
t43 = t214 * t421 - t176 + t766;
t741 = t43 * qJD(1);
t44 = t258 * t421 - t176 - t769;
t740 = t44 * qJD(1);
t737 = t487 * t418;
t736 = t487 * t421;
t735 = t487 * t450;
t734 = t497 * t418;
t733 = t497 * t421;
t732 = t497 * t446;
t730 = t498 * t421;
t505 = t510 ^ 2;
t715 = t512 * t505;
t713 = t513 * t314;
t712 = t513 * t343;
t514 = -t516 + (qJ(6) + t487) * t798;
t52 = -t514 + t593;
t711 = t52 * qJD(1);
t64 = t515 + t593;
t710 = t64 * qJD(1);
t708 = t66 * qJD(4);
t707 = t66 * qJD(5);
t69 = t145 * t513 + t762;
t706 = t69 * qJD(1);
t134 = t418 * t446 - t421 * t450;
t704 = t652 * t134;
t192 = -t418 * t806 + t421 * t809;
t702 = t652 * t192;
t694 = t652 * t303;
t302 = (t809 + t545) * t513;
t693 = t652 * t302;
t692 = t652 * t300;
t479 = t505 - t507;
t688 = qJ(6) * qJD(5);
t332 = -t512 * t526 + t642;
t215 = -t332 * t513 - t505 * t738;
t686 = qJD(1) * t215;
t216 = -t333 * t513 - t486 * t715;
t685 = qJD(1) * t216;
t242 = -t421 * t510 - t423 * t513;
t684 = qJD(1) * t242;
t683 = qJD(1) * t421;
t680 = qJD(3) * t509;
t679 = qJD(3) * t512;
t678 = qJD(4) * t509;
t677 = qJD(4) * t512;
t676 = qJD(4) * t513;
t675 = qJD(5) * t498;
t674 = qJD(6) * t513;
t171 = t332 * t510 + (-t457 + t455) * t513;
t672 = t171 * qJD(1);
t172 = t453 * t513 + (-t333 + t640) * t510;
t671 = t172 * qJD(1);
t181 = t418 * t423 - t420 * t421;
t670 = t181 * qJD(1);
t241 = t510 * t418 - t420 * t513;
t669 = t241 * qJD(1);
t620 = t511 * t797;
t622 = t450 * t798;
t298 = t509 * t620 + t512 * t621 + t622;
t668 = t298 * qJD(3);
t299 = (t807 + t546) * t513;
t264 = t299 * qJD(1);
t667 = t299 * qJD(3);
t268 = t302 * qJD(1);
t664 = t302 * qJD(3);
t269 = t303 * qJD(3);
t662 = t418 * qJD(6);
t412 = t421 * qJD(6);
t435 = t446 * qJD(6);
t449 = t479 * t509;
t661 = t449 * qJD(1);
t452 = t507 * t512 - t715;
t660 = t452 * qJD(1);
t659 = t479 * qJD(1);
t657 = t510 * qJD(3);
t656 = t510 * qJD(4);
t655 = t513 * qJD(1);
t654 = t513 * qJD(3);
t501 = t511 * t782;
t653 = t501 + qJD(6);
t650 = t508 * t782;
t649 = t796 / 0.2e1;
t646 = t787 / 0.2e1;
t305 = t513 * t546 + t622;
t170 = t305 * qJD(3) - t845;
t429 = t446 * t657;
t637 = t305 * t652 + t429;
t636 = t418 * t683;
t635 = t418 * t655;
t634 = t421 * t655;
t632 = t446 * t682;
t631 = t509 * t679;
t630 = t509 * t676;
t629 = t512 * t676;
t428 = t450 * t657;
t628 = t488 * t658;
t627 = t488 * t655;
t626 = t509 * t677;
t625 = t510 * t654;
t624 = t512 * t657;
t623 = t510 * t655;
t614 = t814 + t815;
t613 = t839 + t840;
t607 = t652 * t450;
t605 = t651 / 0.2e1;
t604 = -qJD(4) + t655;
t603 = t145 * t807 + t146 * t809 + t828;
t600 = t450 * t563 + t730 / 0.2e1 + t698;
t599 = t509 * t624;
t597 = t698 + t788;
t596 = t655 - qJD(4) / 0.2e1;
t547 = t420 * t805 - t423 * t803;
t6 = t418 * t614 + t421 * t613 + t446 * t615 + t450 * t617 + t547;
t588 = t6 * qJD(1);
t469 = -qJD(5) + t604;
t586 = -t730 / 0.2e1 + t698;
t12 = t166 * t810 + t167 * t812 + t201 * t798 + t420 * t819 - t423 * t820 + t510 * t818;
t15 = t145 * t166 + t146 * t167 + t200 * t201;
t585 = t15 * qJD(1) + t12 * qJD(2);
t16 = -t145 * t154 + t146 * t155 + t200 * t258;
t584 = t16 * qJD(1) + t13 * qJD(2);
t17 = t145 * t165 + t146 * t164 + t200 * t214;
t583 = t17 * qJD(1) + t14 * qJD(2);
t168 = t418 * t420 - t421 * t423 - t510 * t513;
t581 = t12 * qJD(1) + t168 * qJD(2);
t38 = t154 * t510 - t430 * t418 - t420 * t592 + t513 * t582;
t580 = t38 * qJD(1);
t30 = -t145 * t510 + t166 * t513 - t200 * t423 + t201 * t421;
t579 = t30 * qJD(1);
t557 = t805 + t790 / 0.2e1 + t821;
t565 = t824 - t787 / 0.2e1 - t497 / 0.2e1;
t115 = t446 * t565 + t450 * t557;
t85 = t418 * t565 + t421 * t557;
t578 = qJD(1) * t85 + qJD(3) * t115;
t135 = t314 * t446 + t757;
t523 = t214 * t808 + t314 * t812 + t835;
t24 = (t803 + t824) * t510 + t523 - t698;
t577 = -qJD(1) * t24 - qJD(3) * t135;
t143 = t343 * t446 + t757;
t534 = t341 - t552;
t550 = t258 * t808 + t343 * t812;
t28 = t534 - t550 + t597;
t575 = qJD(1) * t28 - qJD(3) * t143;
t295 = t446 * t796 + t450 * t498;
t538 = -t418 * t649 + t341;
t49 = (t446 * t648 + t611 * t807 + t646) * t510 + t538 + t586;
t573 = qJD(1) * t49 - qJD(3) * t295;
t67 = pkin(4) * t620 + t728 + t817 - t719 / 0.2e1;
t571 = t67 * qJD(4) + t154 * qJD(5);
t570 = -t165 * qJD(4) + t67 * qJD(5);
t569 = t604 * t510;
t202 = t418 ^ 2 - t825;
t77 = qJD(1) * t202 + qJD(3) * t134;
t259 = t446 ^ 2 - t445;
t82 = qJD(1) * t134 + qJD(3) * t259;
t566 = t785 / 0.2e1 - t789 / 0.2e1;
t561 = t164 * pkin(5) / 0.2e1 + t165 * t822;
t560 = t166 * t821 + t167 * t824;
t559 = pkin(5) * t839 - t610 * t822;
t558 = -t792 / 0.2e1 - t742 / 0.2e1;
t536 = t566 * t509;
t350 = t453 / 0.2e1 - t536;
t556 = pkin(3) * t679 - qJD(1) * t350;
t535 = t566 * t512;
t351 = -t455 / 0.2e1 + t535;
t555 = pkin(3) * t680 - qJD(1) * t351;
t554 = t166 * t804 + t167 * t803;
t553 = -t200 * t343 / 0.2e1 + t258 * t847;
t548 = t420 * t803 - t423 * t804;
t71 = t450 * t564 + t341 + t586;
t543 = qJD(1) * t71 - t450 * t681;
t542 = t512 * t569;
t187 = t801 - t192;
t541 = qJD(1) * t187 + t632;
t118 = qJD(3) * t192 - t636;
t139 = -qJD(1) * t192 + t632;
t436 = (t504 / 0.2e1 - t506 / 0.2e1) * t510;
t539 = -qJD(1) * t436 + t631;
t533 = qJD(1) * t509 * t715 + qJD(3) * t436;
t448 = t480 * t505;
t532 = qJD(1) * t448 + 0.2e1 * t599;
t518 = t164 * t815 + t165 * t839 + t314 * t818 + t214 * t310 / 0.2e1 + t848;
t2 = -t518 + t554;
t32 = t713 / 0.2e1 - t614 * t421 + t613 * t418 + t548;
t68 = t310 * t314;
t530 = -t2 * qJD(1) - t32 * qJD(2) + t68 * qJD(3);
t34 = t712 / 0.2e1 + t558;
t4 = t537 * t616 + t610 * t618 + t553 + t560;
t70 = t310 * t343;
t529 = -t4 * qJD(1) - t34 * qJD(2) + t70 * qJD(3);
t40 = t591 + t835;
t525 = qJD(1) * t40 + qJD(2) * t298 + t310 * t682;
t521 = (t145 * t799 + t146 * t802) * pkin(4) + t154 * t805 + t155 * t803;
t11 = t521 + t561;
t398 = (t487 * t511 + t497 * t508) * pkin(4);
t520 = (t537 * t799 + t610 * t802) * pkin(4) + t610 * t805 + t537 * t803;
t57 = t520 + t559;
t86 = -t418 * t557 + t421 * t565;
t524 = t11 * qJD(1) - t86 * qJD(2) + t57 * qJD(3) + t398 * qJD(4);
t503 = qJ(6) * qJD(6);
t492 = -t658 / 0.2e1;
t491 = t658 / 0.2e1;
t490 = t657 / 0.2e1;
t483 = t509 * t657;
t478 = t487 * qJD(6);
t444 = t469 * qJ(6);
t443 = t596 * t510;
t431 = t436 * qJD(4);
t415 = (-qJD(5) / 0.2e1 + t596) * t510;
t331 = t423 * t446;
t325 = t450 * t412;
t304 = t513 * t545 + t619;
t265 = t300 * qJD(3);
t252 = t457 + t455 / 0.2e1 + t535;
t251 = t641 - t453 / 0.2e1 - t536;
t213 = qJD(3) * t445 + t450 * t683;
t196 = -t635 + t664;
t195 = -t634 + t667;
t188 = t801 + t192;
t186 = -t446 * t652 - t268;
t185 = -t607 - t264;
t169 = -t664 + t838;
t157 = qJD(3) * t301;
t123 = t635 - t269 - t838;
t122 = t634 - t668 - t845;
t114 = -t735 / 0.2e1 - t732 / 0.2e1 - t739 / 0.2e1 + t791 / 0.2e1 + (t446 * t800 + t450 * t802) * pkin(4);
t95 = qJD(3) * t304 - t838;
t87 = -t737 / 0.2e1 + t421 * t646 + t733 / 0.2e1 - t418 * t647 - t747 / 0.2e1 - t794 / 0.2e1;
t84 = -t736 / 0.2e1 - t734 / 0.2e1 - t744 / 0.2e1 + t793 / 0.2e1 + (-t418 * t799 + t421 * t802) * pkin(4);
t74 = t340 + t600;
t63 = t64 * qJD(4);
t58 = t64 * qJD(5);
t56 = t520 - t559;
t53 = t514 + t593;
t51 = t421 * t649 + t450 * t605 + t510 * t647 + t73;
t50 = t446 * t605 + t510 * t646 - t538 + t600;
t47 = t508 * t783 - t710;
t46 = -t652 * t790 + t710;
t41 = t534 + t591;
t35 = -t712 / 0.2e1 + t558;
t33 = -t610 * t810 - t713 / 0.2e1 + t537 * t812 + t548 + t421 * t815 + t418 * t840;
t29 = t550 + t597 + t835;
t27 = t549 + t722 + t852;
t25 = t497 * t801 + t523 - t591;
t23 = t594 - t551 + t852;
t10 = t521 - t561;
t9 = t154 * t808 + t155 * t806 + t562 + t603 - t828;
t7 = t164 * t806 + t165 * t809 + t537 * t810 + t547 + t603 - t849;
t5 = t154 * t840 + t155 * t815 - t553 + t560 + t848;
t3 = t518 + t554;
t1 = qJD(3) * t12 + qJD(4) * t14 + qJD(5) * t13;
t21 = [0, 0, 0, 0, t625, -t479 * qJD(3), 0, 0, 0, t488 * t657, t488 * t654, -t505 * t626 + t506 * t625, -t448 * qJD(4) - 0.2e1 * t513 * t599, -t452 * qJD(3) + t510 * t630, -t449 * qJD(3) + t510 * t629, -t625, -qJD(3) * t171 - qJD(4) * t216, qJD(3) * t172 + qJD(4) * t215 (-qJD(3) * t423 - t838) * t421, t181 * qJD(3) + t202 * t652, -t242 * qJD(3) + t418 * t606, -t241 * qJD(3) + t421 * t606, -t625, -qJD(3) * t38 - qJD(4) * t80 - qJD(5) * t94, qJD(3) * t39 + qJD(4) * t81 + qJD(5) * t93, qJD(3) * t31 + qJD(4) * t42 + qJD(5) * t45 - t412 * t418, t20 * qJD(3) + t19 * qJD(4) + t18 * qJD(5) + t513 * t662, -qJD(3) * t30 - qJD(4) * t43 - qJD(5) * t44 + qJD(6) * t379, qJD(3) * t15 + qJD(4) * t17 + qJD(5) * t16 - qJD(6) * t69; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, t623, -t659, t654, -t657, 0, -t486 * t654 + t628, t486 * t657 + t627, -t431 + (t506 * t658 + t631) * t513, -0.2e1 * t510 * t626 + t513 * t826, t483 - t660, t624 - t661, -t443, -t672 + (t509 * t595 - t640) * qJD(3) + t252 * qJD(4), t671 + (t512 * t595 + t642) * qJD(3) + t251 * qJD(4) -(t682 + t683) * t423 + t702, t670 + (t331 - t745) * qJD(3) + t704, t428 - t684 - t694, -t298 * t652 - t429 - t669, -t415 (t420 * t498 + t430 * t446 - t753) * qJD(3) + t50 * qJD(4) + t74 * qJD(5) - t580, t748 + (-t423 * t498 + t430 * t450 - t750) * qJD(3) + t51 * qJD(4) + t73 * qJD(5), t760 + (t201 * t446 + t310 * t420 - t753) * qJD(3) + t25 * qJD(4) + t29 * qJD(5) + t188 * qJD(6), t763 + (-t166 * t446 + t167 * t450 - t420 * t537 - t423 * t610) * qJD(3) + t7 * qJD(4) + t9 * qJD(5) - t303 * qJD(6) (-t201 * t450 + t310 * t423 + t750) * qJD(3) + t23 * qJD(4) + t27 * qJD(5) + t325 - t579 (t166 * t537 + t167 * t610 + t201 * t310) * qJD(3) + t3 * qJD(4) + t5 * qJD(5) + t41 * qJD(6) + t585; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t533, -t532, t509 * t569, t542, t490, qJD(3) * t252 - qJD(4) * t333 - t685, qJD(3) * t251 + qJD(4) * t332 + t686, t118, t77, t123, t122, t490, qJD(3) * t50 - t775 + t780, qJD(3) * t51 + t570 + t774, qJD(3) * t25 + t777 + t780, t764 + t7 * qJD(3) + (-t734 - t736) * qJD(4) + t84 * qJD(5) - t662, t23 * qJD(3) - t570 - t674 - t741, t3 * qJD(3) + (t164 * t497 + t165 * t487) * qJD(4) + t10 * qJD(5) + t53 * qJD(6) + t583; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t118, t77, t123, t122, t490, qJD(3) * t74 - t772 + t779, qJD(3) * t73 + t571 + t773, qJD(3) * t29 + t776 + t779, t9 * qJD(3) + t84 * qJD(4) + qJD(5) * t590 - t662 + t765, t27 * qJD(3) - t571 - t674 - t740, t5 * qJD(3) + t10 * qJD(4) + (-pkin(5) * t155 - qJ(6) * t154) * qJD(5) + t145 * qJD(6) + t584; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t188 - t636, t123, -t843, qJD(3) * t41 + qJD(4) * t53 + qJD(5) * t145 - t706; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t168 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, -t657, -t654, 0, 0, 0, 0, 0, -t624 - t630, t483 - t629, 0, 0, 0, 0, 0, t637, t428 - t693, t637 (t331 + t745) * qJD(3), t304 * t652 - t428 (t310 * t510 + t420 * t610 - t423 * t537) * qJD(3) + t33 * qJD(4) + t35 * qJD(5) - t299 * qJD(6) + t581; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t509 * t654 - t512 * t656, t509 * t656 - t512 * t654, 0, 0, 0, 0, 0, t170, t169, t170, 0, t95, t770 + t33 * qJD(3) + (t733 - t737) * qJD(4) + t87 * qJD(5) + t412; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t170, t169, t170, 0, t95, t35 * qJD(3) + t87 * qJD(4) - qJD(5) * t258 + t412 + t771; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t667 + t845; 0, 0, 0, 0, -t623, t659, 0, 0, 0, -t628, -t627, -t506 * t623 - t431, 0.2e1 * t509 * t542, -t629 + t660, t630 + t661, t443, qJD(4) * t351 + t672, qJD(4) * t350 - t671, t423 * t683 + t702, -t670 + t704, t684 - t693, -t299 * t652 + t669, t415, -qJD(4) * t49 - qJD(5) * t71 + t580, -qJD(4) * t48 - qJD(5) * t72 - t748, qJD(4) * t24 - qJD(5) * t28 - qJD(6) * t187 - t760, -qJD(4) * t6 - qJD(5) * t8 - qJD(6) * t302 - t763, -qJD(4) * t22 - qJD(5) * t26 + t325 + t579, -qJD(4) * t2 - qJD(5) * t4 - qJD(6) * t40 - t585; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t692, -t694, -t692, 0, -t301 * t652, -qJD(4) * t32 - qJD(5) * t34 - qJD(6) * t298 - t581; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t626, t480 * qJD(4), 0, 0, 0, -pkin(3) * t678, -pkin(3) * t677, -t446 * t607, t652 * t259, 0, 0, 0, qJD(4) * t295 + t450 * t675, qJD(4) * t296 - t446 * t675, qJD(4) * t135 + qJD(5) * t143 - t435 * t450, 0, qJD(4) * t136 + qJD(5) * t144 + qJD(6) * t445, qJD(4) * t68 + qJD(5) * t70 - qJD(6) * t757; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t539, t826, -t604 * t512, t604 * t509, t492, -pkin(8) * t677 - t555, pkin(8) * t678 - t556, -t139, t82, t186, t185, t492, -t573 + t842, t841 - t833, -t577 + t842 (-t732 - t735) * qJD(4) + t114 * qJD(5) - t588 - t435, -t841 - t831 (-t487 * t610 + t497 * t537) * qJD(4) + t56 * qJD(5) + t829 + t530; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t139, t82, t186, t185, t492, -t543 + t842, t841 - t834, -t575 + t842, t114 * qJD(4) + qJD(5) * t589 - t435 - t781, -t841 - t832, t56 * qJD(4) + (-pkin(5) * t537 - qJ(6) * t610) * qJD(5) + t829 + t529; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t541, t186, t213, -t525 + t836; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t533, t532 (-t509 * t658 + t679) * t513 (-t633 - t680) * t513, t490, -qJD(3) * t351 + t685, -qJD(3) * t350 - t686, -t118, -t77, t196, t195, t490, qJD(3) * t49 + t58 + t775, qJD(3) * t48 + t707 - t774, -qJD(3) * t24 + t58 - t777, qJD(3) * t6 + qJD(5) * t85 - t764, t22 * qJD(3) - t674 - t707 + t741, qJD(3) * t2 + qJD(5) * t11 - qJD(6) * t52 - t583; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t265, t269, t265, 0, t157, qJD(3) * t32 - qJD(5) * t86 - t770; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t539, -t826, t512 * t655, -t509 * t655, t491, t555, t556, t139, -t82, t268, t264, t491, t573 + t666, t833, t577 + t666, qJD(5) * t115 + t588, t831, qJD(5) * t57 - t530; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t650, -t501, -t650, 0, t653, qJD(5) * t398 + t478; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t46, -t501 + t645, t46, t578, -t645 + t653, t478 + (-pkin(5) * t508 + qJ(6) * t511) * t782 + t524; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t469, t487 * t652 - t711; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t118, -t77, t196, t195, t490, qJD(3) * t71 - t63 + t772, qJD(3) * t72 - t708 - t773, qJD(3) * t28 - t63 - t776, qJD(3) * t8 - qJD(4) * t85 - t765, t26 * qJD(3) - t674 + t708 + t740, -qJ(6) * t674 + t4 * qJD(3) - t11 * qJD(4) - t584; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t265, t269, t265, 0, t157, qJD(3) * t34 + qJD(4) * t86 - t771; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t139, -t82, t268, t264, t491, t543 + t666, t834, t575 + t666, -qJD(4) * t115 + t781, t832, -qJD(4) * t57 - t529; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t47, -t645, t47, -t578, qJD(6) + t645, t503 - t524; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(6), t503; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t469, -t444; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t187 + t636, t196, t843, t40 * qJD(3) + t52 * qJD(4) + t513 * t688 + t706; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t668; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t541, t268, -t213, t525; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t469, -qJD(4) * t487 - t688 + t711; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t469, t444; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t21;
