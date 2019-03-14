% Calculate minimal parameter regressor of Coriolis joint torque vector for
% S6RRRRRP8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5]';
% MDP [35x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRRRRP8_convert_par2_MPV_fixb.m
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 01:59
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RRRRRP8_coriolisvecJ_fixb_mdp_slag_vp(qJ, qJD, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(35,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP8_coriolisvecJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP8_coriolisvecJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRP8_coriolisvecJ_fixb_mdp_slag_vp: pkin has to be [11x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [35 1]), ...
  'S6RRRRRP8_coriolisvecJ_fixb_mdp_slag_vp: MDP has to be [35x1] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 01:56:19
% EndTime: 2019-03-10 01:56:47
% DurationCPUTime: 17.53s
% Computational Cost: add. (19570->705), mult. (49754->919), div. (0->0), fcn. (39390->10), ass. (0->269)
t703 = sin(qJ(2));
t706 = cos(qJ(3));
t707 = cos(qJ(2));
t698 = sin(pkin(6));
t795 = qJD(1) * t703;
t769 = t698 * t795;
t699 = cos(pkin(6));
t796 = qJD(1) * t699;
t778 = pkin(1) * t796;
t645 = -pkin(8) * t769 + t707 * t778;
t725 = (pkin(2) * t703 - pkin(9) * t707) * t698;
t646 = qJD(1) * t725;
t702 = sin(qJ(3));
t753 = -t645 * t702 + t646 * t706;
t846 = -pkin(10) - pkin(9);
t770 = qJD(3) * t846;
t797 = qJD(1) * t698;
t820 = t706 * t707;
t885 = (pkin(3) * t703 - pkin(10) * t820) * t797 + t753 - t706 * t770;
t794 = qJD(1) * t707;
t768 = t698 * t794;
t745 = t702 * t768;
t800 = t645 * t706 + t646 * t702;
t884 = pkin(10) * t745 + t702 * t770 - t800;
t701 = sin(qJ(4));
t705 = cos(qJ(4));
t657 = t701 * t702 - t705 * t706;
t779 = qJD(3) + qJD(4);
t605 = t779 * t657;
t616 = t657 * t768;
t804 = -t605 + t616;
t658 = t701 * t706 + t702 * t705;
t803 = (-t768 + t779) * t658;
t704 = cos(qJ(5));
t786 = qJD(5) * t704;
t686 = qJD(2) + t796;
t630 = t686 * t706 - t702 * t769;
t631 = t686 * t702 + t706 * t769;
t730 = t630 * t705 - t631 * t701;
t875 = t730 * t704;
t883 = t786 - t875;
t679 = t846 * t702;
t680 = t846 * t706;
t728 = t679 * t705 + t680 * t701;
t882 = qJD(4) * t728 - t701 * t885 + t705 * t884;
t683 = t703 * t778;
t648 = pkin(8) * t768 + t683;
t791 = qJD(3) * t702;
t858 = -t648 + (-t745 + t791) * pkin(3);
t700 = sin(qJ(5));
t729 = t630 * t701 + t631 * t705;
t780 = qJD(1) * qJD(2);
t762 = t698 * t780;
t744 = t703 * t762;
t787 = qJD(5) * t700;
t742 = qJD(3) * t769;
t743 = t707 * t762;
t790 = qJD(3) * t706;
t602 = t686 * t790 - t702 * t742 + t706 * t743;
t771 = t686 * t791 + t702 * t743 + t706 * t742;
t713 = t705 * t602 - t701 * t771;
t709 = qJD(4) * t730 + t713;
t678 = -qJD(3) + t768;
t726 = -qJD(4) + t678;
t871 = -qJD(5) * t726 + t709;
t489 = -t700 * t744 - t704 * t871 + t729 * t787;
t487 = t489 * t700;
t490 = t700 * t871 - t704 * t744 + t729 * t786;
t755 = t701 * t602 + t705 * t771;
t526 = qJD(4) * t729 + t755;
t522 = t704 * t526;
t563 = t700 * t729 + t704 * t726;
t565 = -t700 * t726 + t704 * t729;
t520 = t700 * t526;
t870 = -qJD(5) + t730;
t809 = -t786 * t870 + t520;
t879 = t870 * t700;
t881 = MDP(22) * t744 - t755 * MDP(21) + (t678 * t730 + t713) * MDP(20) - t730 ^ 2 * MDP(19) + (-MDP(18) * t730 + t729 * MDP(19) - MDP(21) * t678 + MDP(29) * t870) * t729 + (t565 * t883 - t487) * MDP(25) + (-t565 * t729 + t870 * t875 + t809) * MDP(27) + (-t489 * t704 - t700 * t490 - t563 * t883 + t565 * t879) * MDP(26) + (t563 * t729 - t870 * t879 + t522) * MDP(28);
t614 = pkin(9) * t686 + t648;
t643 = (-pkin(2) * t707 - pkin(9) * t703 - pkin(1)) * t698;
t625 = qJD(1) * t643;
t578 = -t614 * t702 + t625 * t706;
t553 = -pkin(10) * t631 + t578;
t544 = -pkin(3) * t678 + t553;
t579 = t614 * t706 + t625 * t702;
t554 = pkin(10) * t630 + t579;
t549 = t701 * t554;
t499 = t544 * t705 - t549;
t495 = pkin(4) * t726 - t499;
t471 = pkin(5) * t563 - qJ(6) * t565 + t495;
t880 = t471 * t870;
t874 = pkin(11) * t769 - t882;
t878 = -pkin(4) * t803 + pkin(11) * t804 - t858;
t618 = t679 * t701 - t680 * t705;
t872 = qJD(4) * t618 + t701 * t884 + t705 * t885;
t540 = pkin(4) * t729 - pkin(11) * t730;
t613 = -pkin(2) * t686 - t645;
t592 = -pkin(3) * t630 + t613;
t647 = qJD(2) * t725;
t638 = qJD(1) * t647;
t822 = t698 * t703;
t687 = pkin(8) * t822;
t844 = pkin(1) * t707;
t649 = (t699 * t844 - t687) * qJD(2);
t639 = qJD(1) * t649;
t711 = -qJD(3) * t579 + t638 * t706 - t639 * t702;
t510 = pkin(3) * t744 - pkin(10) * t602 + t711;
t723 = -t614 * t791 + t625 * t790 + t638 * t702 + t639 * t706;
t517 = -pkin(10) * t771 + t723;
t788 = qJD(4) * t705;
t789 = qJD(4) * t701;
t747 = -t510 * t701 - t517 * t705 - t544 * t788 + t554 * t789;
t869 = -t592 * t730 + t747;
t738 = pkin(5) * t700 - qJ(6) * t704;
t868 = -pkin(5) * t787 + qJ(6) * t786 + qJD(6) * t700 + t730 * t738;
t695 = t698 ^ 2;
t865 = -0.2e1 * t695 * t780;
t863 = pkin(5) * t729;
t862 = MDP(5) * (t703 ^ 2 - t707 ^ 2);
t861 = qJ(6) * t729;
t455 = pkin(11) * t744 - t747;
t640 = pkin(8) * t743 + qJD(2) * t683;
t577 = pkin(3) * t771 + t640;
t474 = pkin(4) * t526 - pkin(11) * t709 + t577;
t550 = t705 * t554;
t500 = t544 * t701 + t550;
t496 = -pkin(11) * t726 + t500;
t511 = -pkin(4) * t730 - pkin(11) * t729 + t592;
t446 = t455 * t704 + t474 * t700 - t496 * t787 + t511 * t786;
t841 = qJ(6) * t526;
t443 = -qJD(6) * t870 + t446 + t841;
t748 = t455 * t700 - t474 * t704 + t496 * t786 + t511 * t787;
t842 = pkin(5) * t526;
t445 = t748 - t842;
t860 = t443 * t704 + t445 * t700;
t504 = t553 * t701 + t550;
t741 = pkin(3) * t789 - t504;
t653 = t699 * t702 + t706 * t822;
t821 = t698 * t707;
t845 = pkin(1) * t703;
t642 = pkin(8) * t821 + (pkin(9) + t845) * t699;
t754 = -t642 * t702 + t643 * t706;
t561 = -pkin(3) * t821 - pkin(10) * t653 + t754;
t652 = -t699 * t706 + t702 * t822;
t801 = t642 * t706 + t643 * t702;
t571 = -pkin(10) * t652 + t801;
t807 = t561 * t701 + t571 * t705;
t514 = -pkin(11) * t821 + t807;
t597 = t652 * t705 + t653 * t701;
t598 = -t652 * t701 + t653 * t705;
t641 = t687 + (-pkin(2) - t844) * t699;
t601 = pkin(3) * t652 + t641;
t535 = pkin(4) * t597 - pkin(11) * t598 + t601;
t859 = t514 * t704 + t535 * t700;
t806 = pkin(4) * t769 + t872;
t693 = -pkin(3) * t706 - pkin(2);
t603 = pkin(4) * t657 - pkin(11) * t658 + t693;
t802 = t603 * t700 + t618 * t704;
t857 = -t603 * t786 + t618 * t787 + t700 * t878 + t704 * t874;
t746 = t510 * t705 - t517 * t701 - t544 * t789 - t554 * t788;
t456 = -pkin(4) * t744 - t746;
t450 = pkin(5) * t490 + qJ(6) * t489 - qJD(6) * t565 + t456;
t465 = -t496 * t700 + t511 * t704;
t781 = qJD(6) - t465;
t461 = pkin(5) * t870 + t781;
t856 = -t450 * t704 + t461 * t729 + t471 * t787;
t466 = t496 * t704 + t511 * t700;
t462 = -qJ(6) * t870 + t466;
t855 = -t450 * t700 - t462 * t729;
t854 = -t456 * t704 - t465 * t729 + t495 * t787;
t853 = t456 * t700 + t466 * t729 + t495 * t786;
t850 = -t592 * t729 + t746;
t766 = qJD(2) * t821;
t608 = -qJD(3) * t652 + t706 * t766;
t712 = -qJD(3) * t801 + t647 * t706 - t649 * t702;
t793 = qJD(2) * t703;
t767 = t698 * t793;
t528 = pkin(3) * t767 - pkin(10) * t608 + t712;
t607 = qJD(3) * t653 + t702 * t766;
t722 = -t642 * t791 + t643 * t790 + t647 * t702 + t649 * t706;
t533 = -pkin(10) * t607 + t722;
t721 = t528 * t701 + t533 * t705 + t561 * t788 - t571 * t789;
t458 = pkin(11) * t767 + t721;
t538 = -qJD(4) * t597 - t607 * t701 + t608 * t705;
t539 = qJD(4) * t598 + t607 * t705 + t608 * t701;
t650 = pkin(1) * t699 * t793 + pkin(8) * t766;
t593 = pkin(3) * t607 + t650;
t480 = pkin(4) * t539 - pkin(11) * t538 + t593;
t849 = -qJD(5) * t859 - t458 * t700 + t480 * t704;
t847 = t565 ^ 2;
t843 = pkin(3) * t705;
t839 = t466 * t870;
t838 = t490 * t704;
t691 = pkin(3) * t701 + pkin(11);
t837 = t526 * t691;
t836 = t563 * t565;
t835 = t563 * t700;
t834 = t565 * t704;
t833 = t730 * t700;
t830 = t630 * t678;
t829 = t631 * t678;
t827 = t658 * t700;
t826 = t658 * t704;
t825 = t678 * t702;
t824 = t678 * t706;
t708 = qJD(1) ^ 2;
t823 = t695 * t708;
t818 = t500 + t868;
t817 = -t741 + t868;
t816 = -qJ(6) * t803 - qJD(6) * t657 + t857;
t815 = pkin(5) * t803 - qJD(5) * t802 + t874 * t700 - t704 * t878;
t594 = -t616 * t700 - t704 * t769;
t595 = -t616 * t704 + t700 * t769;
t739 = pkin(5) * t704 + qJ(6) * t700;
t814 = pkin(5) * t594 - qJ(6) * t595 + t738 * t605 - (qJD(5) * t739 - qJD(6) * t704) * t658 - t806;
t813 = t499 * t704 + t540 * t700;
t505 = t553 * t705 - t549;
t529 = pkin(3) * t631 + t540;
t812 = t505 * t704 + t529 * t700;
t792 = qJD(2) * t706;
t784 = qJD(2) - t686;
t775 = pkin(3) * t788;
t774 = t700 * t821;
t773 = t461 * t786 + t860;
t765 = t691 * t787;
t764 = t695 * t794;
t759 = t561 * t705 - t571 * t701;
t757 = t605 * t700 + t594;
t756 = -t605 * t704 - t595;
t749 = t695 * t703 * t707 * MDP(4);
t740 = pkin(1) * t865;
t513 = pkin(4) * t821 - t759;
t736 = t461 * t700 + t462 * t704;
t735 = -t495 * t730 - t837;
t734 = -t499 * t700 + t540 * t704;
t732 = -t514 * t700 + t535 * t704;
t731 = t603 * t704 - t618 * t700;
t670 = -pkin(4) - t739;
t727 = t528 * t705 - t533 * t701 - t561 * t789 - t571 * t788;
t584 = t598 * t700 + t704 * t821;
t724 = t471 * t565 + t748;
t720 = t458 * t704 + t480 * t700 - t514 * t787 + t535 * t786;
t718 = t658 * t786 - t757;
t717 = t658 * t787 - t756;
t716 = t809 * pkin(11);
t715 = t726 * t698;
t459 = -pkin(4) * t767 - t727;
t710 = (t461 * t704 - t462 * t700) * qJD(5) + t860;
t692 = -pkin(4) - t843;
t655 = t670 - t843;
t585 = t598 * t704 - t774;
t574 = t658 * t738 - t728;
t552 = -pkin(5) * t657 - t731;
t551 = qJ(6) * t657 + t802;
t518 = pkin(5) * t565 + qJ(6) * t563;
t502 = -qJD(5) * t774 + t538 * t700 + t598 * t786 - t704 * t767;
t501 = qJD(5) * t584 - t538 * t704 - t700 * t767;
t481 = pkin(5) * t584 - qJ(6) * t585 + t513;
t476 = -pkin(5) * t597 - t732;
t475 = qJ(6) * t597 + t859;
t469 = -t563 * t870 - t489;
t468 = -t734 - t863;
t467 = t813 + t861;
t464 = t505 * t700 - t529 * t704 - t863;
t463 = t812 + t861;
t451 = pkin(5) * t502 + qJ(6) * t501 - qJD(6) * t585 + t459;
t449 = -pkin(5) * t539 - t849;
t448 = qJ(6) * t539 + qJD(6) * t597 + t720;
t1 = [(-t639 * t699 - t649 * t686 + t707 * t740) * MDP(10) + (-t640 * t699 - t650 * t686 + t703 * t740) * MDP(9) + (t722 * t678 + t650 * t631 + t641 * t602 + t640 * t653 + t613 * t608 + (t723 * t707 + (-qJD(1) * t801 - t579) * t793) * t698) * MDP(17) + (-t608 * t678 + (-t602 * t707 + (qJD(1) * t653 + t631) * t793) * t698) * MDP(13) + (t607 * t678 + (t771 * t707 + (-qJD(1) * t652 + t630) * t793) * t698) * MDP(14) + (-t712 * t678 - t650 * t630 + t641 * t771 + t640 * t652 + t613 * t607 + (-t711 * t707 + (qJD(1) * t754 + t578) * t793) * t698) * MDP(16) + 0.2e1 * t749 * t780 + (-t602 * t652 - t631 * t607 + t608 * t630 - t653 * t771) * MDP(12) + (-t500 * t767 + t592 * t538 + t577 * t598 + t593 * t729 + t601 * t709 + t721 * t726 - t744 * t807 - t747 * t821) * MDP(24) + (t538 * t779 + (-t709 * t707 + t729 * t793 + (-t538 * t707 + t598 * t793) * qJD(1)) * t698) * MDP(20) + (t538 * t729 + t598 * t709) * MDP(18) + (MDP(6) * t766 - MDP(7) * t767) * (t686 + t796) + (-t727 * t726 - t746 * t821 - t593 * t730 + t601 * t526 + t577 * t597 + t592 * t539 + (qJD(1) * t759 + t499) * t767) * MDP(23) + (-t539 * t779 + (t730 * t793 + t526 * t707 + (t539 * t707 - t597 * t793) * qJD(1)) * t698) * MDP(21) + (-t598 * t526 + t538 * t730 - t539 * t729 - t597 * t709) * MDP(19) + (-t490 * t597 + t502 * t870 - t526 * t584 - t539 * t563) * MDP(28) + (-t489 * t597 + t501 * t870 + t526 * t585 + t539 * t565) * MDP(27) + (t443 * t597 - t448 * t870 - t450 * t585 - t451 * t565 + t462 * t539 + t471 * t501 + t475 * t526 + t481 * t489) * MDP(34) + (t526 * t597 - t539 * t870) * MDP(29) + (-t445 * t597 + t449 * t870 + t450 * t584 + t451 * t563 - t461 * t539 + t471 * t502 - t476 * t526 + t481 * t490) * MDP(32) + (t456 * t584 + t459 * t563 + t465 * t539 + t513 * t490 + t495 * t502 + t732 * t526 - t597 * t748 - t849 * t870) * MDP(30) + (-t446 * t597 + t456 * t585 + t459 * t565 - t466 * t539 - t513 * t489 - t495 * t501 - t526 * t859 + t720 * t870) * MDP(31) + (-t678 * t698 - t764) * MDP(15) * t793 + (-t715 - t764) * MDP(22) * t793 + t862 * t865 + (t602 * t653 + t608 * t631) * MDP(11) + (t489 * t584 - t490 * t585 + t501 * t563 - t502 * t565) * MDP(26) + (-t443 * t584 + t445 * t585 - t448 * t563 + t449 * t565 - t461 * t501 - t462 * t502 - t475 * t490 - t476 * t489) * MDP(33) + (-t489 * t585 - t501 * t565) * MDP(25) + (t443 * t475 + t445 * t476 + t448 * t462 + t449 * t461 + t450 * t481 + t451 * t471) * MDP(35); (pkin(8) * t744 + t645 * t686 + (-t699 * t780 + t823) * t844) * MDP(10) + (t648 * t686 + t823 * t845 - t640) * MDP(9) + (t757 * t565 - t756 * t563 + (t487 - t838 + (-t834 + t835) * qJD(5)) * t658) * MDP(26) + ((t602 - t830) * t706 + (-t771 + t829) * t702) * MDP(12) + (-pkin(2) * t602 + t640 * t702 - t800 * t678 - t648 * t631 + (-pkin(9) * t825 + t613 * t706) * qJD(3) + (-t613 * t820 + (-pkin(9) * t792 + t579) * t703) * t797) * MDP(17) + (-t489 * t826 - t565 * t717) * MDP(25) + (t602 * t702 - t631 * t824) * MDP(11) + (-pkin(2) * t771 - t640 * t706 + t753 * t678 + t648 * t630 + (pkin(9) * t824 + t613 * t702) * qJD(3) + (-t578 * t703 + (-pkin(9) * t793 - t613 * t707) * t702) * t797) * MDP(16) + (t678 * t791 + (-t707 * t825 + (-t630 + t792) * t703) * t797) * MDP(14) + (-t678 * t790 + (t678 * t820 + (qJD(2) * t702 - t631) * t703) * t797) * MDP(13) + (-t489 * t552 - t490 * t551 - t815 * t565 + t816 * t563 + t757 * t462 + t756 * t461 + (-qJD(5) * t736 - t443 * t700 + t445 * t704) * t658) * MDP(33) + (t443 * t551 + t445 * t552 + t450 * t574 - t461 * t815 - t462 * t816 - t471 * t814) * MDP(35) + (t577 * t658 + t804 * t592 - t618 * t744 + t693 * t709 + t726 * t882 + t858 * t729) * MDP(24) + MDP(22) * t715 * t795 + t784 * MDP(6) * t768 + ((-t804 * t707 + (qJD(2) * t658 - t729) * t703) * t797 + t804 * t779) * MDP(20) - t708 * t749 + (t658 * t709 + t729 * t804) * MDP(18) + (t693 * t526 + t577 * t657 + t803 * t592 + t872 * t726 - t730 * t858) * MDP(23) + ((t803 * t707 + (-qJD(2) * t657 - t730) * t703) * t797 - t803 * t779) * MDP(21) + (-t658 * t526 - t657 * t709 - t729 * t803 + t730 * t804) * MDP(19) + (t443 * t657 - t450 * t826 + t462 * t803 + t471 * t717 + t489 * t574 + t526 * t551 + t565 * t814 + t816 * t870) * MDP(34) + (-t445 * t657 + t450 * t827 - t461 * t803 + t471 * t718 + t490 * t574 - t526 * t552 - t563 * t814 - t815 * t870) * MDP(32) + (-t490 * t657 - t520 * t658 - t563 * t803 + t718 * t870) * MDP(28) + (-t489 * t657 + t522 * t658 + t565 * t803 + t717 * t870) * MDP(27) + (t526 * t657 - t803 * t870) * MDP(29) + (-t446 * t657 + t456 * t826 - t803 * t466 + t489 * t728 - t717 * t495 - t802 * t526 + t806 * t565 - t857 * t870) * MDP(31) + t823 * t862 + (t731 * t526 - t748 * t657 - t728 * t490 + t456 * t827 - ((-qJD(5) * t618 - t878) * t704 + (-qJD(5) * t603 + t874) * t700) * t870 + t806 * t563 + t803 * t465 + t718 * t495) * MDP(30) + (-t784 * MDP(7) + (qJD(2) * t728 - t499) * MDP(23) + t500 * MDP(24) + t678 * MDP(15)) * t769; (t602 + t830) * MDP(13) + (-t771 - t829) * MDP(14) + (t450 * t655 - t461 * t464 - t462 * t463 - t471 * t817 + t691 * t710 + t736 * t775) * MDP(35) + (-t578 * t678 - t613 * t630 - t723) * MDP(17) + MDP(15) * t744 + (-t579 * t678 - t613 * t631 + t711) * MDP(16) - t631 * t630 * MDP(11) + (-t630 ^ 2 + t631 ^ 2) * MDP(12) + (-t692 * t489 + t735 * t704 + t741 * t565 - (-t704 * t775 + t765 + t812) * t870 + t853) * MDP(31) + (t692 * t490 + t735 * t700 + t741 * t563 - ((-qJD(5) * t691 - t529) * t704 + (t505 - t775) * t700) * t870 + t854) * MDP(30) + (t489 * t655 - (-t463 - t765) * t870 + t817 * t565 + (-t775 * t870 + t837 + t880) * t704 + t855) * MDP(34) + (t463 * t563 - t464 * t565 + (-t563 * t775 - t461 * t730 + (qJD(5) * t565 - t490) * t691) * t704 + (t565 * t775 + t462 * t730 - t489 * t691 + (t563 * t691 - t462) * qJD(5)) * t700 + t773) * MDP(33) + (t490 * t655 + (-t471 * t730 - t837) * t700 - t817 * t563 - (-t691 * t786 - t700 * t775 + t464) * t870 + t856) * MDP(32) + (-t505 * t726 + (-t631 * t729 - t701 * t744 + t726 * t788) * pkin(3) + t869) * MDP(24) + (-t504 * t726 + (t631 * t730 + t705 * t744 + t726 * t789) * pkin(3) + t850) * MDP(23) + t881; (-t500 * t726 + t850) * MDP(23) + (-t499 * t726 + t869) * MDP(24) + (-pkin(4) * t490 - t495 * t833 - t500 * t563 + t734 * t870 - t716 + t854) * MDP(30) + (pkin(4) * t489 - t813 * t870 - t500 * t565 - t495 * t875 + (-t787 * t870 - t522) * pkin(11) + t853) * MDP(31) + (-t468 * t870 - t471 * t833 + t490 * t670 - t563 * t818 - t716 + t856) * MDP(32) + (-t461 * t875 + t467 * t563 - t468 * t565 + t462 * t879 + (-t487 - t838 + (t834 + t835) * qJD(5)) * pkin(11) + t773) * MDP(33) + (t489 * t670 - (-pkin(11) * t787 - t467) * t870 + t818 * t565 + (pkin(11) * t526 + t880) * t704 + t855) * MDP(34) + (pkin(11) * t710 + t450 * t670 - t461 * t468 - t462 * t467 - t471 * t818) * MDP(35) + t881; MDP(25) * t836 + (-t563 ^ 2 + t847) * MDP(26) + t469 * MDP(27) + (-t565 * t870 - t490) * MDP(28) + t526 * MDP(29) + (-t495 * t565 - t748 - t839) * MDP(30) + (-t465 * t870 + t495 * t563 - t446) * MDP(31) + (-t518 * t563 - t724 - t839 + 0.2e1 * t842) * MDP(32) + (pkin(5) * t489 - qJ(6) * t490 + (t462 - t466) * t565 + (t461 - t781) * t563) * MDP(33) + (0.2e1 * t841 - t471 * t563 + t518 * t565 - (0.2e1 * qJD(6) - t465) * t870 + t446) * MDP(34) + (-pkin(5) * t445 + qJ(6) * t443 - t461 * t466 + t462 * t781 - t471 * t518) * MDP(35); (-t526 + t836) * MDP(32) + t469 * MDP(33) + (-t870 ^ 2 - t847) * MDP(34) + (t462 * t870 + t724 - t842) * MDP(35);];
tauc  = t1;