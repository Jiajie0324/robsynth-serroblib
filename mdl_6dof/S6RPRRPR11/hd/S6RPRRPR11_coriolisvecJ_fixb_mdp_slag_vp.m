% Calculate minimal parameter regressor of Coriolis joint torque vector for
% S6RPRRPR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d4,d6,theta2,theta5]';
% MDP [32x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RPRRPR11_convert_par2_MPV_fixb.m
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 05:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RPRRPR11_coriolisvecJ_fixb_mdp_slag_vp(qJ, qJD, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1),zeros(32,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPR11_coriolisvecJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPR11_coriolisvecJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRRPR11_coriolisvecJ_fixb_mdp_slag_vp: pkin has to be [13x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [32 1]), ...
  'S6RPRRPR11_coriolisvecJ_fixb_mdp_slag_vp: MDP has to be [32x1] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 05:44:55
% EndTime: 2019-03-09 05:45:19
% DurationCPUTime: 14.59s
% Computational Cost: add. (18365->624), mult. (60898->878), div. (0->0), fcn. (52542->14), ass. (0->247)
t638 = sin(pkin(12));
t640 = sin(pkin(6));
t642 = cos(pkin(12));
t645 = sin(qJ(3));
t639 = sin(pkin(7));
t756 = cos(pkin(6));
t703 = t756 * t639;
t755 = cos(pkin(7));
t704 = t645 * t755;
t759 = cos(qJ(3));
t575 = t640 * (t638 * t759 + t642 * t704) + t645 * t703;
t568 = qJD(1) * t575;
t647 = cos(qJ(4));
t722 = qJD(1) * t640;
t707 = t642 * t722;
t616 = t639 * t707;
t680 = t756 * t755;
t761 = qJD(1) * t680 + qJD(3) - t616;
t589 = t647 * t761;
t644 = sin(qJ(4));
t536 = t568 * t644 - t589;
t535 = qJD(6) + t536;
t538 = t647 * t568 + t644 * t761;
t637 = sin(pkin(13));
t641 = cos(pkin(13));
t708 = t638 * t722;
t686 = t755 * t759;
t672 = t642 * t686;
t673 = t759 * t703;
t775 = t640 * t672 + t673;
t768 = qJD(1) * t775 - t645 * t708;
t777 = t768 - qJD(4);
t514 = t538 * t637 + t641 * t777;
t646 = cos(qJ(6));
t516 = t538 * t641 - t637 * t777;
t643 = sin(qJ(6));
t750 = t516 * t643;
t773 = -t646 * t514 - t750;
t778 = t535 * t773;
t662 = t638 * t704 - t642 * t759;
t658 = t640 * t662;
t588 = qJD(1) * t658;
t705 = qJD(3) * t759;
t776 = t639 * t705 + t588;
t701 = qJD(1) * t756;
t690 = pkin(1) * t701;
t597 = qJ(2) * t707 + t638 * t690;
t740 = t640 * t642;
t656 = (t740 * t755 + t703) * pkin(9);
t557 = qJD(1) * t656 + t597;
t549 = t759 * t557;
t744 = t638 * t639;
t590 = (-pkin(2) * t642 - pkin(9) * t744 - pkin(1)) * t640;
t584 = qJD(1) * t590 + qJD(2);
t625 = t642 * t690;
t743 = t638 * t640;
t651 = t756 * pkin(2) + (-pkin(9) * t755 - qJ(2)) * t743;
t563 = qJD(1) * t651 + t625;
t702 = t755 * t563;
t741 = t639 * t645;
t508 = t584 * t741 + t645 * t702 + t549;
t774 = qJD(5) * t644 + t508 + t777 * (pkin(4) * t644 - qJ(5) * t647);
t675 = t514 * t643 - t516 * t646;
t772 = t535 * t675;
t604 = t644 * t741 - t647 * t755;
t693 = t639 * t708;
t770 = qJD(4) * t604 + t644 * t693 - t647 * t776;
t660 = t638 * t686 + t642 * t645;
t657 = t640 * t660;
t587 = qJD(1) * t657;
t720 = qJD(3) * t645;
t769 = -t639 * t720 + t587;
t767 = t777 * t644;
t766 = (t638 ^ 2 + t642 ^ 2) * MDP(6) * t640 ^ 2;
t533 = pkin(3) * t568 - pkin(10) * t768;
t709 = t639 * t759;
t764 = -t645 * t557 + t563 * t686 + t584 * t709;
t733 = t644 * t533 + t647 * t764;
t453 = qJ(5) * t568 + t733;
t719 = qJD(4) * t644;
t713 = pkin(10) * t719;
t736 = t774 * t641 + (-t453 - t713) * t637;
t765 = t641 * t453 + t637 * t774;
t710 = pkin(1) * t756;
t724 = qJ(2) * t740 + t638 * t710;
t571 = t656 + t724;
t629 = t642 * t710;
t576 = t629 + t651;
t763 = -t645 * t571 + t576 * t686 + t590 * t709;
t567 = t575 * qJD(3);
t556 = qJD(1) * t567;
t762 = t645 * (t584 * t639 + t702) + t549;
t760 = MDP(4) * t638 + MDP(5) * t642;
t758 = pkin(5) * t644;
t757 = pkin(11) + qJ(5);
t555 = t768 * qJD(3);
t737 = t644 * t555;
t512 = qJD(4) * t538 + t737;
t753 = qJ(5) * t512;
t653 = qJD(2) * t658;
t473 = -qJD(1) * t653 + qJD(3) * t764;
t534 = -t563 * t639 + t755 * t584;
t479 = -pkin(3) * t768 - pkin(10) * t568 + t534;
t483 = pkin(10) * t761 + t508;
t721 = qJD(2) * t640;
t691 = t721 * t744;
t522 = pkin(3) * t556 - pkin(10) * t555 + qJD(1) * t691;
t718 = qJD(4) * t647;
t694 = t644 * t473 + t479 * t719 + t483 * t718 - t647 * t522;
t410 = -pkin(4) * t556 + t694;
t752 = t410 * t637;
t751 = t410 * t641;
t749 = t536 * t777;
t748 = t536 * t637;
t747 = t538 * t777;
t746 = t637 * t643;
t745 = t637 * t647;
t742 = t638 * t645;
t739 = t641 * t644;
t738 = t641 * t647;
t664 = t647 * t473 + t479 * t718 - t483 * t719 + t644 * t522;
t406 = qJ(5) * t556 - qJD(5) * t777 + t664;
t652 = qJD(2) * t657;
t474 = qJD(1) * t652 + t762 * qJD(3);
t511 = qJD(4) * t589 + t647 * t555 - t568 * t719;
t429 = t512 * pkin(4) - t511 * qJ(5) - t538 * qJD(5) + t474;
t397 = t641 * t406 + t637 * t429;
t574 = t640 * t742 - t775;
t493 = qJD(3) * t763 - t653;
t539 = -t576 * t639 + t755 * t590;
t499 = pkin(3) * t574 - pkin(10) * t575 + t539;
t601 = t639 * t740 - t680;
t650 = t759 * t571 + (t576 * t755 + t590 * t639) * t645;
t506 = -t601 * pkin(10) + t650;
t566 = (t673 + (t672 - t742) * t640) * qJD(3);
t526 = pkin(3) * t567 - pkin(10) * t566 + t691;
t663 = t647 * t493 + t499 * t718 - t506 * t719 + t644 * t526;
t414 = qJ(5) * t567 + qJD(5) * t574 + t663;
t494 = qJD(3) * t650 + t652;
t541 = t575 * t647 - t601 * t644;
t520 = qJD(4) * t541 + t566 * t644;
t540 = t575 * t644 + t601 * t647;
t521 = -qJD(4) * t540 + t566 * t647;
t434 = t520 * pkin(4) - t521 * qJ(5) - t541 * qJD(5) + t494;
t399 = t641 * t414 + t637 * t434;
t735 = t641 * t713 + t765;
t443 = t644 * t479 + t647 * t483;
t439 = -qJ(5) * t777 + t443;
t482 = -pkin(3) * t761 - t764;
t449 = t536 * pkin(4) - t538 * qJ(5) + t482;
t409 = t641 * t439 + t637 * t449;
t442 = t479 * t647 - t644 * t483;
t497 = pkin(4) * t538 + qJ(5) * t536;
t431 = t641 * t442 + t637 * t497;
t734 = t644 * t499 + t647 * t506;
t445 = qJ(5) * t574 + t734;
t505 = t601 * pkin(3) - t763;
t455 = t540 * pkin(4) - t541 * qJ(5) + t505;
t418 = t641 * t445 + t637 * t455;
t732 = -t637 * t770 + t641 * t769;
t731 = t637 * t769 + t641 * t770;
t528 = -t641 * t568 + t745 * t768;
t529 = t568 * t637 + t738 * t768;
t611 = -t646 * t641 + t746;
t612 = t637 * t646 + t641 * t643;
t717 = qJD(6) * t644;
t730 = t528 * t643 - t529 * t646 - t611 * t718 - t612 * t717;
t716 = qJD(6) * t646;
t729 = -t646 * t528 - t529 * t643 + t612 * t718 + t716 * t739 - t717 * t746;
t605 = t644 * t755 + t647 * t741;
t728 = qJD(4) * t605 + t644 * t776 + t647 * t693;
t727 = t535 * t611;
t726 = t535 * t612;
t503 = t644 * t764;
t454 = -pkin(4) * t568 - t533 * t647 + t503;
t711 = pkin(5) * t637 + pkin(10);
t725 = -pkin(5) * t528 + t711 * t718 - t454;
t618 = -pkin(4) * t647 - qJ(5) * t644 - pkin(3);
t592 = pkin(10) * t738 + t637 * t618;
t438 = pkin(4) * t777 + qJD(5) - t442;
t714 = -qJD(5) + t438;
t469 = t511 * t637 - t641 * t556;
t470 = t511 * t641 + t556 * t637;
t712 = -t643 * t469 + t646 * t470 - t514 * t716;
t396 = -t406 * t637 + t641 * t429;
t392 = pkin(5) * t512 - pkin(11) * t470 + t396;
t393 = -pkin(11) * t469 + t397;
t700 = t646 * t392 - t393 * t643;
t398 = -t414 * t637 + t641 * t434;
t408 = -t439 * t637 + t641 * t449;
t430 = -t442 * t637 + t641 * t497;
t417 = -t445 * t637 + t641 * t455;
t699 = t646 * t469 + t643 * t470;
t698 = t499 * t647 - t644 * t506;
t695 = t777 * t647;
t583 = -pkin(11) * t637 * t644 + t592;
t684 = -pkin(11) * t529 + qJD(6) * t583 + t768 * t758 - (-pkin(11) * t738 + t758) * qJD(4) + t736;
t609 = t641 * t618;
t572 = -pkin(11) * t739 + t609 + (-pkin(10) * t637 - pkin(5)) * t647;
t683 = -pkin(11) * t528 - qJD(6) * t572 - (-pkin(10) * t739 - pkin(11) * t745) * qJD(4) + t765;
t580 = t641 * t605 - t637 * t709;
t682 = qJD(6) * t580 + t732;
t579 = -t637 * t605 - t641 * t709;
t681 = -qJD(6) * t579 + t731;
t678 = t392 * t643 + t393 * t646;
t400 = pkin(5) * t536 - pkin(11) * t516 + t408;
t402 = -pkin(11) * t514 + t409;
t389 = t400 * t646 - t402 * t643;
t390 = t400 * t643 + t402 * t646;
t524 = t541 * t641 + t574 * t637;
t403 = pkin(5) * t540 - pkin(11) * t524 + t417;
t523 = t541 * t637 - t574 * t641;
t407 = -pkin(11) * t523 + t418;
t677 = t403 * t646 - t407 * t643;
t676 = t403 * t643 + t407 * t646;
t462 = t646 * t523 + t524 * t643;
t463 = -t523 * t643 + t524 * t646;
t674 = (-qJ(2) * t708 + t625) * t638 - t597 * t642;
t671 = -t644 * t493 - t499 * t719 - t506 * t718 + t526 * t647;
t446 = -pkin(4) * t574 - t698;
t621 = t757 * t641;
t669 = pkin(11) * t536 * t641 + pkin(5) * t538 + qJD(5) * t637 + qJD(6) * t621 + t430;
t620 = t757 * t637;
t668 = pkin(11) * t748 - qJD(5) * t641 + qJD(6) * t620 + t431;
t666 = -pkin(10) * t556 - t482 * t777;
t415 = -qJD(6) * t750 + t712;
t420 = -pkin(4) * t567 - t671;
t416 = -qJD(6) * t675 + t699;
t633 = -pkin(5) * t641 - pkin(4);
t614 = t711 * t644;
t599 = t611 * t644;
t598 = t612 * t644;
t591 = -pkin(10) * t745 + t609;
t488 = t521 * t641 + t567 * t637;
t487 = t521 * t637 - t567 * t641;
t436 = -pkin(5) * t748 + t443;
t435 = pkin(5) * t523 + t446;
t426 = pkin(5) * t514 + t438;
t423 = qJD(6) * t463 + t646 * t487 + t488 * t643;
t422 = -qJD(6) * t462 - t487 * t643 + t488 * t646;
t404 = pkin(5) * t487 + t420;
t401 = pkin(5) * t469 + t410;
t395 = -pkin(11) * t487 + t399;
t394 = pkin(5) * t520 - pkin(11) * t488 + t398;
t388 = -qJD(6) * t390 + t700;
t387 = qJD(6) * t389 + t678;
t1 = [(t473 * t601 - t493 * t761 + t534 * t566 + t539 * t555 + 0.2e1 * t568 * t691) * MDP(14) + (-t555 * t601 + t566 * t761) * MDP(10) + (t556 * t601 - t567 * t761) * MDP(11) + (-0.2e1 * t760 * t701 + ((t642 * t724 + (qJ(2) * t743 - t629) * t638) * qJD(1) - t674) * MDP(7)) * t721 + (-t512 * t574 + t520 * t777 - t536 * t567 - t540 * t556) * MDP(18) + (t511 * t574 - t521 * t777 + t538 * t567 + t541 * t556) * MDP(17) + (t556 * t574 - t567 * t777) * MDP(19) + (-t443 * t567 + t474 * t541 + t482 * t521 + t494 * t538 + t505 * t511 - t556 * t734 - t574 * t664 + t663 * t777) * MDP(21) + (t442 * t567 + t474 * t540 + t482 * t520 + t494 * t536 + t505 * t512 + t556 * t698 - t574 * t694 - t671 * t777) * MDP(20) + (-t416 * t540 - t423 * t535 - t462 * t512 + t520 * t773) * MDP(29) + (-t415 * t462 - t416 * t463 + t422 * t773 + t423 * t675) * MDP(27) + ((-qJD(6) * t676 + t394 * t646 - t395 * t643) * t535 + t677 * t512 + t388 * t540 + t389 * t520 - t404 * t773 + t435 * t416 + t401 * t462 + t426 * t423) * MDP(31) + (t512 * t540 + t520 * t535) * MDP(30) + (t396 * t540 + t398 * t536 + t408 * t520 + t410 * t523 + t417 * t512 + t420 * t514 + t438 * t487 + t446 * t469) * MDP(22) + (-t397 * t540 - t399 * t536 - t409 * t520 + t410 * t524 - t418 * t512 + t420 * t516 + t438 * t488 + t446 * t470) * MDP(23) + (-t511 * t540 - t512 * t541 - t520 * t538 - t521 * t536) * MDP(16) + (t511 * t541 + t521 * t538) * MDP(15) + (-t396 * t524 - t397 * t523 - t398 * t516 - t399 * t514 - t408 * t488 - t409 * t487 - t417 * t470 - t418 * t469) * MDP(24) + (-t494 * t761 + t474 * t601 + t539 * t556 + t534 * t567 + (qJD(1) * t574 - t768) * t691) * MDP(13) + (-t555 * t574 - t556 * t575 + t566 * t768 - t567 * t568) * MDP(9) + (t555 * t575 + t566 * t568) * MDP(8) + (t396 * t417 + t397 * t418 + t398 * t408 + t399 * t409 + t410 * t446 + t420 * t438) * MDP(25) + 0.2e1 * qJD(2) * qJD(1) * t766 + (t415 * t540 + t422 * t535 + t463 * t512 - t520 * t675) * MDP(28) + (t415 * t463 - t422 * t675) * MDP(26) + (-(qJD(6) * t677 + t394 * t643 + t395 * t646) * t535 - t676 * t512 - t387 * t540 - t390 * t520 - t404 * t675 + t435 * t415 + t401 * t463 + t426 * t422) * MDP(32); t674 * MDP(7) * t722 + (t755 * t556 + t587 * t761 + (t708 * t768 - t720 * t761) * t639) * MDP(13) + (t755 * t555 - t588 * t761 + (-t568 * t708 - t705 * t761) * t639) * MDP(14) + (-t512 * t709 - t536 * t769 - t604 * t556 + t728 * t777) * MDP(20) + (-t511 * t709 - t538 * t769 - t605 * t556 - t770 * t777) * MDP(21) + (t469 * t604 + t512 * t579 + t514 * t728 - t536 * t732) * MDP(22) + (t470 * t604 - t512 * t580 + t516 * t728 + t536 * t731) * MDP(23) + (-t469 * t580 - t470 * t579 + t514 * t731 + t516 * t732) * MDP(24) + (t396 * t579 + t397 * t580 - t408 * t732 - t409 * t731 + t410 * t604 + t438 * t728) * MDP(25) + ((t579 * t646 - t580 * t643) * t512 + t604 * t416 + (t643 * t681 - t646 * t682) * t535 - t728 * t773) * MDP(31) + (-(t579 * t643 + t580 * t646) * t512 + t604 * t415 + (t643 * t682 + t646 * t681) * t535 - t728 * t675) * MDP(32) + (t640 * t756 * t760 - t766) * qJD(1) ^ 2; (t556 * t647 - t767 * t777) * MDP(18) + (-pkin(3) * t512 - t474 * t647 - t508 * t536 - (t503 + (-pkin(10) * qJD(4) - t533) * t647) * t777 + t666 * t644) * MDP(20) + (-pkin(3) * t511 + t474 * t644 - t508 * t538 - (t713 + t733) * t777 + t666 * t647) * MDP(21) + (-t438 * t528 - t454 * t514 + t512 * t591 - t736 * t536 + (-t396 + (pkin(10) * t514 + t438 * t637) * qJD(4)) * t647 + (pkin(10) * t469 - t408 * t777 + t752) * t644) * MDP(22) + (-t438 * t529 - t454 * t516 - t512 * t592 + t735 * t536 + (t397 + (pkin(10) * t516 + t438 * t641) * qJD(4)) * t647 + (pkin(10) * t470 + t409 * t777 + t751) * t644) * MDP(23) + (t408 * t529 + t409 * t528 - t469 * t592 - t470 * t591 + (-t396 * t641 - t397 * t637) * t644 + t736 * t516 + t735 * t514 + (-t408 * t641 - t409 * t637) * t718) * MDP(24) + (t396 * t591 + t397 * t592 - t438 * t454 - t735 * t409 - t736 * t408 + (t410 * t644 + t438 * t718) * pkin(10)) * MDP(25) + (-t415 * t599 - t675 * t730) * MDP(26) + (-t415 * t598 + t416 * t599 + t675 * t729 + t730 * t773) * MDP(27) + (-t415 * t647 - t512 * t599 + t535 * t730 + t675 * t767) * MDP(28) + (t416 * t647 - t512 * t598 - t535 * t729 - t767 * t773) * MDP(29) + (-t512 * t647 - t535 * t767) * MDP(30) + ((t572 * t646 - t583 * t643) * t512 - t388 * t647 + t614 * t416 + t401 * t598 + (t643 * t683 - t646 * t684) * t535 - t725 * t773 + t729 * t426 - t389 * t767) * MDP(31) + (-(t572 * t643 + t583 * t646) * t512 + t387 * t647 + t614 * t415 - t401 * t599 + (t643 * t684 + t646 * t683) * t535 - t725 * t675 + t730 * t426 + t390 * t767) * MDP(32) - t768 ^ 2 * MDP(9) + (-t761 * t768 + t555) * MDP(10) - MDP(11) * t556 + (-t508 * t616 + (t508 * t680 - t660 * t721) * qJD(1) + (t508 - t762) * qJD(3)) * MDP(13) + (-t764 * t616 - t534 * t768 + (t662 * t721 + t680 * t764) * qJD(1)) * MDP(14) + (t511 * t644 - t538 * t695) * MDP(15) + ((t511 + t749) * t647 + (-t512 + t747) * t644) * MDP(16) + (t556 * t644 + t695 * t777) * MDP(17) + (MDP(11) * t761 - t534 * MDP(13) - t538 * MDP(17) + t536 * MDP(18) + MDP(19) * t777 - t442 * MDP(20) + t443 * MDP(21) - MDP(8) * t768 + MDP(9) * t568) * t568; -t536 ^ 2 * MDP(16) + (t511 - t749) * MDP(17) + (-t737 - t747) * MDP(18) + t556 * MDP(19) + (-t443 * t777 - t694) * MDP(20) + (-t442 * t777 + t482 * t536 - t664) * MDP(21) + (-t637 * t753 - pkin(4) * t469 - t751 - t443 * t514 + (t637 * t714 - t430) * t536) * MDP(22) + (-t641 * t753 - pkin(4) * t470 + t752 - t443 * t516 + (t641 * t714 + t431) * t536) * MDP(23) + (t430 * t516 + t431 * t514 + (-qJ(5) * t469 - qJD(5) * t514 - t408 * t536 + t397) * t641 + (qJ(5) * t470 + qJD(5) * t516 - t409 * t536 - t396) * t637) * MDP(24) + (-pkin(4) * t410 - t408 * t430 - t409 * t431 - t438 * t443 + (-t408 * t637 + t409 * t641) * qJD(5) + (-t396 * t637 + t397 * t641) * qJ(5)) * MDP(25) + (t415 * t612 + t675 * t727) * MDP(26) + (-t415 * t611 - t416 * t612 + t675 * t726 - t727 * t773) * MDP(27) + (t512 * t612 - t535 * t727) * MDP(28) + (-t512 * t611 - t535 * t726) * MDP(29) + ((-t620 * t646 - t621 * t643) * t512 + t633 * t416 + t401 * t611 + t436 * t773 + (t643 * t668 - t646 * t669) * t535 + t726 * t426) * MDP(31) + (-(-t620 * t643 + t621 * t646) * t512 + t633 * t415 + t401 * t612 + t436 * t675 + (t643 * t669 + t646 * t668) * t535 - t727 * t426) * MDP(32) + (MDP(15) * t536 + MDP(16) * t538 - MDP(18) * qJD(4) - MDP(20) * t482 - MDP(22) * t408 + MDP(23) * t409 + MDP(28) * t675 - MDP(29) * t773 - MDP(30) * t535 - MDP(31) * t389 + MDP(32) * t390) * t538; (t516 * t536 + t469) * MDP(22) + (-t514 * t536 + t470) * MDP(23) + (-t514 ^ 2 - t516 ^ 2) * MDP(24) + (t408 * t516 + t409 * t514 + t410) * MDP(25) + (t416 - t772) * MDP(31) + (t415 + t778) * MDP(32); t675 * t773 * MDP(26) + (t675 ^ 2 - t773 ^ 2) * MDP(27) + (t712 - t778) * MDP(28) + (-t699 - t772) * MDP(29) + t512 * MDP(30) + (t390 * t535 + t426 * t675 + t700) * MDP(31) + (t389 * t535 - t426 * t773 - t678) * MDP(32) + (-MDP(28) * t750 + MDP(29) * t675 - MDP(31) * t390 - MDP(32) * t389) * qJD(6);];
tauc  = t1;
