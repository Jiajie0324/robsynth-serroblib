% Calculate minimal parameter regressor of Coriolis joint torque vector for
% S6RRPRPR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6,theta3,theta5]';
% MDP [32x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRPRPR9_convert_par2_MPV_fixb.m
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 11:03
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RRPRPR9_coriolisvecJ_fixb_mdp_slag_vp(qJ, qJD, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1),zeros(32,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR9_coriolisvecJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR9_coriolisvecJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRPR9_coriolisvecJ_fixb_mdp_slag_vp: pkin has to be [12x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [32 1]), ...
  'S6RRPRPR9_coriolisvecJ_fixb_mdp_slag_vp: MDP has to be [32x1] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 11:01:29
% EndTime: 2019-03-09 11:01:51
% DurationCPUTime: 13.76s
% Computational Cost: add. (13316->623), mult. (35777->862), div. (0->0), fcn. (29314->12), ass. (0->248)
t676 = cos(pkin(6));
t743 = qJD(1) * t676;
t660 = qJD(2) + t743;
t672 = sin(pkin(11));
t675 = cos(pkin(11));
t679 = sin(qJ(2));
t673 = sin(pkin(6));
t744 = qJD(1) * t673;
t729 = t679 * t744;
t611 = t660 * t675 - t672 * t729;
t612 = t660 * t672 + t675 * t729;
t678 = sin(qJ(4));
t681 = cos(qJ(4));
t559 = -t681 * t611 + t612 * t678;
t555 = qJD(6) + t559;
t682 = cos(qJ(2));
t742 = qJD(1) * t682;
t728 = t673 * t742;
t653 = -qJD(4) + t728;
t671 = sin(pkin(12));
t674 = cos(pkin(12));
t699 = t611 * t678 + t612 * t681;
t531 = t674 * t653 + t671 * t699;
t680 = cos(qJ(6));
t533 = -t653 * t671 + t674 * t699;
t677 = sin(qJ(6));
t774 = t533 * t677;
t788 = -t680 * t531 - t774;
t794 = t555 * t788;
t637 = t671 * t680 + t674 * t677;
t630 = t637 * qJD(6);
t748 = t637 * t559 + t630;
t759 = t681 * t675;
t636 = t672 * t678 - t759;
t761 = t673 * t682;
t687 = t636 * t761;
t600 = qJD(1) * t687;
t631 = t636 * qJD(4);
t747 = -t631 + t600;
t638 = t672 * t681 + t675 * t678;
t688 = t638 * t761;
t746 = -qJD(1) * t688 + t638 * qJD(4);
t706 = pkin(2) * t679 - qJ(3) * t682;
t623 = t706 * t744;
t732 = pkin(1) * t743;
t624 = -pkin(8) * t729 + t682 * t732;
t570 = t675 * t623 - t624 * t672;
t760 = t675 * t682;
t689 = (pkin(3) * t679 - pkin(9) * t760) * t673;
t542 = qJD(1) * t689 + t570;
t571 = t672 * t623 + t675 * t624;
t713 = t672 * t728;
t550 = -pkin(9) * t713 + t571;
t778 = pkin(9) + qJ(3);
t647 = t778 * t672;
t649 = t778 * t675;
t698 = -t647 * t681 - t649 * t678;
t793 = -qJD(3) * t636 + qJD(4) * t698 - t678 * t542 - t681 * t550;
t685 = qJD(2) * t688;
t779 = qJD(4) * t699;
t511 = qJD(1) * t685 + t779;
t635 = t671 * t677 - t680 * t674;
t782 = t555 * t635;
t792 = t637 * t511 - t555 * t782;
t791 = qJ(5) * t729 - t793;
t625 = pkin(8) * t728 + t679 * t732;
t592 = pkin(3) * t713 + t625;
t790 = -pkin(4) * t746 + qJ(5) * t747 + qJD(5) * t638 + t592;
t789 = -t635 * t511 - t555 * t748;
t700 = t531 * t677 - t533 * t680;
t786 = t555 * t700;
t785 = t559 * t653;
t598 = -t647 * t678 + t649 * t681;
t783 = qJD(3) * t638 + qJD(4) * t598 + t542 * t681 - t678 * t550;
t572 = -t600 * t671 - t674 * t729;
t719 = -t631 * t671 - t572;
t573 = -t600 * t674 + t671 * t729;
t718 = -t631 * t674 - t573;
t668 = t673 ^ 2;
t734 = qJD(1) * qJD(2);
t781 = -0.2e1 * t668 * t734;
t780 = MDP(5) * (t679 ^ 2 - t682 ^ 2);
t758 = -t671 * t791 + t790 * t674;
t757 = t790 * t671 + t674 * t791;
t756 = pkin(4) * t729 + t783;
t777 = pkin(10) + qJ(5);
t776 = t511 * t671;
t775 = t511 * t674;
t601 = qJ(3) * t660 + t625;
t620 = (-pkin(2) * t682 - qJ(3) * t679 - pkin(1)) * t673;
t606 = qJD(1) * t620;
t543 = -t601 * t672 + t675 * t606;
t773 = t543 * t679;
t544 = t675 * t601 + t672 * t606;
t772 = t544 * t679;
t771 = t559 * t671;
t770 = t559 * t674;
t766 = t638 * t671;
t765 = t638 * t674;
t683 = qJD(1) ^ 2;
t764 = t668 * t683;
t763 = t672 * t682;
t762 = t673 * t679;
t494 = -pkin(3) * t728 - pkin(9) * t612 + t543;
t604 = (qJD(2) * t706 - qJD(3) * t679) * t673;
t588 = qJD(1) * t604;
t724 = t673 * t734;
t711 = t679 * t724;
t731 = pkin(1) * qJD(2) * t676;
t716 = qJD(1) * t731;
t692 = -pkin(8) * t711 + t682 * t716;
t589 = qJD(3) * t660 + t692;
t537 = t675 * t588 - t589 * t672;
t686 = qJD(2) * t689;
t497 = qJD(1) * t686 + t537;
t512 = pkin(9) * t611 + t544;
t538 = t672 * t588 + t675 * t589;
t710 = t682 * t724;
t697 = t672 * t710;
t513 = -pkin(9) * t697 + t538;
t739 = qJD(4) * t681;
t740 = qJD(4) * t678;
t691 = -t494 * t739 - t678 * t497 + t512 * t740 - t681 * t513;
t416 = qJ(5) * t711 - qJD(5) * t653 - t691;
t510 = t611 * t739 + t710 * t759 + (-qJD(4) * t612 - t697) * t678;
t618 = pkin(8) * t710 + t679 * t716;
t584 = pkin(3) * t697 + t618;
t439 = pkin(4) * t511 - qJ(5) * t510 - qJD(5) * t699 + t584;
t406 = t674 * t416 + t671 * t439;
t741 = qJD(2) * t679;
t727 = t673 * t741;
t696 = -pkin(8) * t727 + t682 * t731;
t610 = qJD(3) * t676 + t696;
t548 = t675 * t604 - t610 * t672;
t517 = t548 + t686;
t619 = pkin(8) * t761 + (pkin(1) * t679 + qJ(3)) * t676;
t564 = -t619 * t672 + t675 * t620;
t628 = t672 * t676 + t675 * t762;
t520 = -pkin(3) * t761 - pkin(9) * t628 + t564;
t549 = t672 * t604 + t675 * t610;
t726 = qJD(2) * t761;
t712 = t672 * t726;
t536 = -pkin(9) * t712 + t549;
t565 = t675 * t619 + t672 * t620;
t627 = t672 * t762 - t676 * t675;
t541 = -pkin(9) * t627 + t565;
t690 = t678 * t517 + t520 * t739 + t681 * t536 - t541 * t740;
t426 = (qJ(5) * t741 - qJD(5) * t682) * t673 + t690;
t574 = t681 * t627 + t628 * t678;
t527 = -qJD(2) * t687 - qJD(4) * t574;
t575 = -t627 * t678 + t628 * t681;
t528 = qJD(4) * t575 + t685;
t626 = pkin(8) * t726 + t679 * t731;
t593 = pkin(3) * t712 + t626;
t445 = pkin(4) * t528 - qJ(5) * t527 - qJD(5) * t575 + t593;
t409 = t674 * t426 + t671 * t445;
t452 = t678 * t494 + t681 * t512;
t449 = -qJ(5) * t653 + t452;
t594 = -pkin(2) * t660 + qJD(3) - t624;
t556 = -pkin(3) * t611 + t594;
t456 = pkin(4) * t559 - qJ(5) * t699 + t556;
t420 = t674 * t449 + t671 * t456;
t451 = t494 * t681 - t678 * t512;
t477 = pkin(4) * t699 + qJ(5) * t559;
t430 = t674 * t451 + t671 * t477;
t752 = t678 * t520 + t681 * t541;
t458 = -qJ(5) * t761 + t752;
t622 = pkin(8) * t762 + (-pkin(1) * t682 - pkin(2)) * t676;
t580 = pkin(3) * t627 + t622;
t470 = pkin(4) * t574 - qJ(5) * t575 + t580;
t434 = t674 * t458 + t671 * t470;
t754 = t572 * t677 - t573 * t680 - t630 * t638 + t631 * t635;
t737 = qJD(6) * t680;
t738 = qJD(6) * t677;
t753 = -t680 * t572 - t573 * t677 - t631 * t637 + t737 * t765 - t738 * t766;
t750 = pkin(5) * t719 + t756;
t667 = -pkin(3) * t675 - pkin(2);
t581 = pkin(4) * t636 - qJ(5) * t638 + t667;
t523 = t671 * t581 + t674 * t598;
t736 = qJD(2) - t660;
t448 = pkin(4) * t653 + qJD(5) - t451;
t735 = -qJD(5) + t448;
t733 = pkin(1) * t764;
t484 = t510 * t671 - t674 * t711;
t485 = t510 * t674 + t671 * t711;
t730 = -t677 * t484 + t680 * t485 - t531 * t737;
t405 = -t416 * t671 + t674 * t439;
t402 = pkin(5) * t511 - pkin(10) * t485 + t405;
t403 = -pkin(10) * t484 + t406;
t723 = t680 * t402 - t403 * t677;
t408 = -t426 * t671 + t674 * t445;
t419 = -t449 * t671 + t674 * t456;
t429 = -t451 * t671 + t674 * t477;
t433 = -t458 * t671 + t674 * t470;
t722 = t680 * t484 + t677 * t485;
t721 = t520 * t681 - t678 * t541;
t522 = t674 * t581 - t598 * t671;
t715 = t668 * t679 * t682 * MDP(4);
t714 = t494 * t740 - t681 * t497 + t512 * t739 + t678 * t513;
t709 = pkin(1) * t781;
t459 = pkin(4) * t761 - t721;
t498 = -pkin(10) * t766 + t523;
t708 = -pkin(5) * t746 + pkin(10) * t718 + qJD(6) * t498 + t758;
t480 = pkin(5) * t636 - pkin(10) * t765 + t522;
t707 = pkin(10) * t719 - qJD(6) * t480 + t757;
t705 = t402 * t677 + t403 * t680;
t704 = -t405 * t674 - t406 * t671;
t410 = pkin(5) * t559 - pkin(10) * t533 + t419;
t412 = -pkin(10) * t531 + t420;
t399 = t410 * t680 - t412 * t677;
t400 = t410 * t677 + t412 * t680;
t554 = t575 * t674 - t671 * t761;
t417 = pkin(5) * t574 - pkin(10) * t554 + t433;
t553 = t575 * t671 + t674 * t761;
t424 = -pkin(10) * t553 + t434;
t703 = t417 * t680 - t424 * t677;
t702 = t417 * t677 + t424 * t680;
t701 = t419 * t671 - t420 * t674;
t473 = t680 * t553 + t554 * t677;
t474 = -t553 * t677 + t554 * t680;
t695 = t517 * t681 - t520 * t740 - t678 * t536 - t541 * t739;
t648 = t777 * t674;
t694 = pkin(5) * t699 + pkin(10) * t770 + qJD(5) * t671 + qJD(6) * t648 + t429;
t646 = t777 * t671;
t693 = pkin(10) * t771 - qJD(5) * t674 + qJD(6) * t646 + t430;
t421 = -t533 * t738 + t730;
t418 = -pkin(4) * t711 + t714;
t427 = -pkin(4) * t727 - t695;
t684 = -qJ(3) * t741 + (-pkin(2) * qJD(2) + qJD(3) - t594) * t682;
t422 = -qJD(6) * t700 + t722;
t666 = -pkin(5) * t674 - pkin(4);
t577 = t635 * t638;
t576 = t637 * t638;
t569 = pkin(5) * t766 - t698;
t507 = t527 * t674 + t671 * t727;
t506 = t527 * t671 - t674 * t727;
t446 = pkin(5) * t553 + t459;
t440 = -pkin(5) * t771 + t452;
t436 = pkin(5) * t531 + t448;
t432 = qJD(6) * t474 + t680 * t506 + t507 * t677;
t431 = -qJD(6) * t473 - t506 * t677 + t507 * t680;
t414 = pkin(5) * t506 + t427;
t411 = pkin(5) * t484 + t418;
t407 = -pkin(10) * t506 + t409;
t404 = pkin(5) * t528 - pkin(10) * t507 + t408;
t398 = -qJD(6) * t400 + t723;
t397 = qJD(6) * t399 + t705;
t1 = [(t421 * t574 + t431 * t555 + t474 * t511 - t528 * t700) * MDP(28) + (-(qJD(6) * t703 + t404 * t677 + t407 * t680) * t555 - t702 * t511 - t397 * t574 - t400 * t528 - t414 * t700 + t446 * t421 + t411 * t474 + t436 * t431) * MDP(32) + (t421 * t474 - t431 * t700) * MDP(26) + (MDP(6) * t726 - MDP(7) * t727) * (t660 + t743) + (t690 * t653 + t593 * t699 + t580 * t510 + t584 * t575 + t556 * t527 + (-t691 * t682 + (-qJD(1) * t752 - t452) * t741) * t673) * MDP(21) + (-t527 * t653 + (-t510 * t682 + (qJD(1) * t575 + t699) * t741) * t673) * MDP(17) + (t510 * t575 + t527 * t699) * MDP(15) + (-t510 * t574 - t511 * t575 - t527 * t559 - t528 * t699) * MDP(16) + (-t421 * t473 - t422 * t474 + t431 * t788 + t432 * t700) * MDP(27) + ((-qJD(6) * t702 + t404 * t680 - t407 * t677) * t555 + t703 * t511 + t398 * t574 + t399 * t528 - t414 * t788 + t446 * t422 + t411 * t473 + t436 * t432) * MDP(31) + (-t422 * t574 - t432 * t555 - t473 * t511 + t528 * t788) * MDP(29) + (t612 * t626 + t618 * t628 + ((qJD(1) * t549 + t538) * t682 + (t594 * t760 - t772 + (-t565 * t679 + t622 * t760) * qJD(1)) * qJD(2)) * t673) * MDP(12) + (-t611 * t626 + t618 * t627 + ((-qJD(1) * t548 - t537) * t682 + (t594 * t763 + t773 + (t564 * t679 + t622 * t763) * qJD(1)) * qJD(2)) * t673) * MDP(11) + (t528 * t653 + (t511 * t682 + (-qJD(1) * t574 - t559) * t741) * t673) * MDP(18) + (-t695 * t653 + t593 * t559 + t580 * t511 + t584 * t574 + t556 * t528 + (t714 * t682 + (qJD(1) * t721 + t451) * t741) * t673) * MDP(20) + 0.2e1 * t715 * t734 + (-t537 * t628 - t538 * t627 - t548 * t612 + t549 * t611 + (-t543 * t675 - t544 * t672 + (-t564 * t675 - t565 * t672) * qJD(1)) * t726) * MDP(13) + (-t653 * t673 - t668 * t742) * MDP(19) * t741 + t780 * t781 + (-t660 * t696 - t676 * t692 + t682 * t709) * MDP(10) + (-t618 * t676 - t626 * t660 + t679 * t709) * MDP(9) + (t405 * t433 + t406 * t434 + t408 * t419 + t409 * t420 + t418 * t459 + t427 * t448) * MDP(25) + (-t405 * t554 - t406 * t553 - t408 * t533 - t409 * t531 - t419 * t507 - t420 * t506 - t433 * t485 - t434 * t484) * MDP(24) + (t511 * t574 + t528 * t555) * MDP(30) + (t405 * t574 + t408 * t559 + t418 * t553 + t419 * t528 + t427 * t531 + t433 * t511 + t448 * t506 + t459 * t484) * MDP(22) + (-t406 * t574 - t409 * t559 + t418 * t554 - t420 * t528 + t427 * t533 - t434 * t511 + t448 * t507 + t459 * t485) * MDP(23) + (t537 * t564 + t538 * t565 + t543 * t548 + t544 * t549 + t594 * t626 + t618 * t622) * MDP(14); (t653 * MDP(19) + (-qJD(2) * t598 + t452) * MDP(21) + (qJD(2) * t698 - t451) * MDP(20) + (qJD(2) * t638 - t699) * MDP(17) + (-qJD(2) * t636 + t559) * MDP(18) - t736 * MDP(7)) * t729 + (-t406 * t636 + t418 * t765 - t420 * t746 + t448 * t718 - t485 * t698 - t511 * t523 + t533 * t756 + t559 * t757) * MDP(23) + (t405 * t636 + t418 * t766 + t419 * t746 + t448 * t719 - t484 * t698 + t511 * t522 + t531 * t756 - t559 * t758) * MDP(22) + (t405 * t522 + t406 * t523 - t418 * t698 - t419 * t758 - t420 * t757 + t448 * t756) * MDP(25) + (t667 * t511 + t746 * t556 - t592 * t559 + t584 * t636) * MDP(20) + (-t421 * t577 - t700 * t754) * MDP(26) + (-(t480 * t677 + t498 * t680) * t511 - t397 * t636 + t569 * t421 - t411 * t577 + (t677 * t708 + t680 * t707) * t555 - t750 * t700 + t754 * t436 - t746 * t400) * MDP(32) + (t421 * t636 - t511 * t577 + t555 * t754 - t700 * t746) * MDP(28) + (t667 * t510 + t747 * t556 + t584 * t638 - t592 * t699) * MDP(21) + (t510 * t638 + t699 * t747) * MDP(15) + (-t510 * t636 - t511 * t638 - t559 * t747 - t699 * t746) * MDP(16) + ((t480 * t680 - t498 * t677) * t511 + t398 * t636 + t569 * t422 + t411 * t576 + (t677 * t707 - t680 * t708) * t555 - t750 * t788 + t753 * t436 + t746 * t399) * MDP(31) + (-t422 * t636 - t511 * t576 - t555 * t753 + t746 * t788) * MDP(29) + (-t421 * t576 + t422 * t577 + t700 * t753 + t754 * t788) * MDP(27) + (-pkin(2) * t618 - t543 * t570 - t544 * t571 - t594 * t625 + (-t543 * t672 + t544 * t675) * qJD(3) + (-t537 * t672 + t538 * t675) * qJ(3)) * MDP(14) + (-t612 * t625 + t618 * t672 + (-t571 * t682 + t675 * t684 + t772) * t744) * MDP(12) + (t611 * t625 - t618 * t675 + (t570 * t682 + t672 * t684 - t773) * t744) * MDP(11) + (-t419 * t718 - t420 * t719 - t484 * t523 - t485 * t522 + t531 * t757 + t533 * t758 + t638 * t704) * MDP(24) + (t625 * t660 + t679 * t733 - t618) * MDP(9) + (t511 * t636 + t555 * t746) * MDP(30) + (t624 * t660 + t682 * t733 - t692) * MDP(10) + (t570 * t612 - t571 * t611 + (qJD(3) * t611 + t543 * t728 + t538) * t675 + (qJD(3) * t612 + t544 * t728 - t537) * t672) * MDP(13) - t683 * t715 + t736 * MDP(6) * t728 + t764 * t780 + (-t747 * MDP(17) + t746 * MDP(18) + t783 * MDP(20) + MDP(21) * t793) * t653; (-t611 ^ 2 - t612 ^ 2) * MDP(13) + (t543 * t612 - t544 * t611 + t618) * MDP(14) + (-t653 * t699 + t511) * MDP(20) + (t510 + t785) * MDP(21) + (-t531 * t699 - t559 * t771 + t775) * MDP(22) + (-t533 * t699 - t559 * t770 - t776) * MDP(23) + (-t484 * t671 - t485 * t674 - (t531 * t674 - t533 * t671) * t559) * MDP(24) + (-t448 * t699 - t559 * t701 - t704) * MDP(25) + (t699 * t788 + t789) * MDP(31) + (t699 * t700 - t792) * MDP(32) + ((qJD(2) * t672 - t612) * MDP(11) + (qJD(2) * t675 - t611) * MDP(12)) * t728; -t559 ^ 2 * MDP(16) + (t510 - t785) * MDP(17) + (-t638 * t710 - t779) * MDP(18) + MDP(19) * t711 + (-t452 * t653 - t714) * MDP(20) + (-t451 * t653 + t556 * t559 + t691) * MDP(21) + (-qJ(5) * t776 - pkin(4) * t484 - t418 * t674 - t452 * t531 + (t671 * t735 - t429) * t559) * MDP(22) + (-qJ(5) * t775 - pkin(4) * t485 + t418 * t671 - t452 * t533 + (t674 * t735 + t430) * t559) * MDP(23) + (t429 * t533 + t430 * t531 + (-qJ(5) * t484 - qJD(5) * t531 - t419 * t559 + t406) * t674 + (qJ(5) * t485 + qJD(5) * t533 - t420 * t559 - t405) * t671) * MDP(24) + (-pkin(4) * t418 - t419 * t429 - t420 * t430 - t448 * t452 - t701 * qJD(5) + (-t405 * t671 + t406 * t674) * qJ(5)) * MDP(25) + (t421 * t637 + t700 * t782) * MDP(26) + (-t421 * t635 - t422 * t637 + t700 * t748 - t782 * t788) * MDP(27) + t792 * MDP(28) + t789 * MDP(29) + ((-t646 * t680 - t648 * t677) * t511 + t666 * t422 + t411 * t635 + t440 * t788 + (t677 * t693 - t680 * t694) * t555 + t748 * t436) * MDP(31) + (-(-t646 * t677 + t648 * t680) * t511 + t666 * t421 + t411 * t637 + t440 * t700 + (t677 * t694 + t680 * t693) * t555 - t782 * t436) * MDP(32) + (MDP(15) * t559 + MDP(16) * t699 - MDP(18) * t653 - MDP(20) * t556 - MDP(22) * t419 + MDP(23) * t420 + MDP(28) * t700 - MDP(29) * t788 - MDP(30) * t555 - MDP(31) * t399 + MDP(32) * t400) * t699; (t533 * t559 + t484) * MDP(22) + (-t531 * t559 + t485) * MDP(23) + (-t531 ^ 2 - t533 ^ 2) * MDP(24) + (t419 * t533 + t420 * t531 + t418) * MDP(25) + (t422 - t786) * MDP(31) + (t421 + t794) * MDP(32); t700 * t788 * MDP(26) + (t700 ^ 2 - t788 ^ 2) * MDP(27) + (t730 - t794) * MDP(28) + (-t722 - t786) * MDP(29) + t511 * MDP(30) + (t400 * t555 + t436 * t700 + t723) * MDP(31) + (t399 * t555 - t436 * t788 - t705) * MDP(32) + (-MDP(28) * t774 + MDP(29) * t700 - MDP(31) * t400 - MDP(32) * t399) * qJD(6);];
tauc  = t1;