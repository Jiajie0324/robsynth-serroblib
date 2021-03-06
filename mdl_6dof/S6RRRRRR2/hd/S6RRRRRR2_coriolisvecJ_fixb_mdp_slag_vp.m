% Calculate minimal parameter regressor of Coriolis joint torque vector for
% S6RRRRRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5,d6]';
% MDP [38x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRRRRR2_convert_par2_MPV_fixb.m
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 03:38
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RRRRRR2_coriolisvecJ_fixb_mdp_slag_vp(qJ, qJD, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(38,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR2_coriolisvecJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRR2_coriolisvecJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRRR2_coriolisvecJ_fixb_mdp_slag_vp: pkin has to be [11x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [38 1]), ...
  'S6RRRRRR2_coriolisvecJ_fixb_mdp_slag_vp: MDP has to be [38x1] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 03:36:08
% EndTime: 2019-03-10 03:36:27
% DurationCPUTime: 12.62s
% Computational Cost: add. (13373->585), mult. (33151->759), div. (0->0), fcn. (26050->10), ass. (0->273)
t712 = sin(qJ(3));
t713 = sin(qJ(2));
t799 = qJD(1) * t713;
t778 = t712 * t799;
t717 = cos(qJ(3));
t718 = cos(qJ(2));
t798 = qJD(1) * t718;
t780 = t717 * t798;
t654 = -t778 + t780;
t655 = -t712 * t798 - t717 * t799;
t711 = sin(qJ(4));
t716 = cos(qJ(4));
t623 = t716 * t654 + t655 * t711;
t854 = qJD(5) + qJD(6);
t890 = -t623 + t854;
t709 = sin(qJ(6));
t710 = sin(qJ(5));
t714 = cos(qJ(6));
t715 = cos(qJ(5));
t668 = t709 * t710 - t714 * t715;
t889 = t890 * t668;
t826 = t709 * t715;
t670 = t710 * t714 + t826;
t888 = t890 * t670;
t793 = qJD(5) * t715;
t874 = t623 * t715;
t887 = t793 - t874;
t875 = t623 * t710;
t787 = pkin(11) * t875;
t853 = pkin(7) + pkin(8);
t685 = t853 * t718;
t674 = qJD(1) * t685;
t660 = t717 * t674;
t683 = t853 * t713;
t672 = qJD(1) * t683;
t845 = qJD(2) * pkin(2);
t662 = -t672 + t845;
t740 = -t662 * t712 - t660;
t848 = pkin(9) * t654;
t598 = -t740 + t848;
t593 = t711 * t598;
t651 = t655 * pkin(9);
t656 = t712 * t674;
t766 = t717 * t662 - t656;
t597 = t651 + t766;
t542 = t597 * t716 - t593;
t795 = qJD(4) * t716;
t869 = -pkin(3) * t795 + t542;
t741 = t654 * t711 - t716 * t655;
t576 = pkin(4) * t741 - pkin(10) * t623;
t851 = pkin(3) * t655;
t560 = t576 - t851;
t701 = pkin(2) * t799;
t555 = t560 + t701;
t763 = t672 * t712 - t660;
t603 = t763 - t848;
t805 = -t717 * t672 - t656;
t604 = t651 + t805;
t698 = pkin(2) * t717 + pkin(3);
t796 = qJD(4) * t711;
t825 = t711 * t712;
t809 = t603 * t711 + t604 * t716 - t698 * t795 - (-t712 * t796 + (t716 * t717 - t825) * qJD(3)) * pkin(2);
t886 = -t715 * t555 + t710 * t809;
t794 = qJD(5) * t710;
t859 = (t794 - t875) * pkin(5);
t754 = pkin(5) * t741 - pkin(11) * t874;
t706 = qJD(2) + qJD(3);
t671 = t712 * t718 + t713 * t717;
t855 = qJD(1) * t671;
t722 = t706 * t855;
t782 = qJD(2) * t853;
t755 = qJD(1) * t782;
t664 = t718 * t755;
t797 = qJD(3) * t712;
t764 = -t712 * t664 - t674 * t797;
t663 = t713 * t755;
t860 = t717 * (qJD(3) * t662 - t663);
t539 = -pkin(9) * t722 + t764 + t860;
t788 = qJD(1) * qJD(2);
t777 = t718 * t788;
t628 = qJD(3) * t780 - t706 * t778 + t717 * t777;
t765 = t712 * t663 - t717 * t664;
t725 = qJD(3) * t740 + t765;
t540 = -pkin(9) * t628 + t725;
t587 = pkin(3) * t706 + t597;
t471 = t711 * t539 - t716 * t540 + t587 * t796 + t598 * t795;
t704 = qJD(4) + t706;
t601 = t704 * t710 + t715 * t741;
t530 = t716 * t628 + t654 * t795 + t655 * t796 - t711 * t722;
t841 = t530 * t710;
t507 = t601 * qJD(5) + t841;
t457 = pkin(5) * t507 + t471;
t533 = t587 * t716 - t593;
t527 = -pkin(4) * t704 - t533;
t599 = -t715 * t704 + t710 * t741;
t508 = pkin(5) * t599 + t527;
t885 = t457 * t670 - t889 * t508;
t884 = t457 * t668 + t888 * t508;
t531 = qJD(4) * t741 + t628 * t711 + t716 * t722;
t526 = t715 * t531;
t789 = -qJD(5) + t623;
t870 = t789 * t710;
t883 = -t789 * t870 + t526;
t882 = -t715 * t560 + t710 * t869;
t610 = qJD(6) - t789;
t881 = t670 * t531 - t889 * t610;
t880 = -t668 * t531 - t888 * t610;
t524 = t710 * t531;
t813 = -t789 * t793 + t524;
t879 = t789 * t874 + t813;
t506 = t715 * t530 + t704 * t793 - t741 * t794;
t791 = qJD(6) * t714;
t784 = t714 * t506 - t709 * t507 - t599 * t791;
t792 = qJD(6) * t709;
t463 = -t601 * t792 + t784;
t742 = t599 * t709 - t714 * t601;
t770 = t506 * t709 + t714 * t507;
t464 = -qJD(6) * t742 + t770;
t504 = t506 * t710;
t838 = t601 * t709;
t545 = t714 * t599 + t838;
t878 = (t887 * t601 + t504) * MDP(25) + t463 * t670 * MDP(32) + (-t463 * t668 - t670 * t464 + t889 * t545) * MDP(33) + (t506 * t715 - t710 * t507 - t887 * t599 + t601 * t870) * MDP(26) + (t889 * MDP(32) + t888 * MDP(33)) * t742;
t877 = t545 * t610;
t876 = t610 * t742;
t594 = t716 * t598;
t534 = t711 * t587 + t594;
t528 = pkin(10) * t704 + t534;
t700 = -pkin(2) * t718 - pkin(1);
t681 = t700 * qJD(1);
t636 = -pkin(3) * t654 + t681;
t552 = -pkin(4) * t623 - pkin(10) * t741 + t636;
t496 = t528 * t715 + t552 * t710;
t483 = -pkin(11) * t599 + t496;
t478 = t483 * t792;
t868 = t508 * t545 + t478;
t768 = t540 * t711 - t598 * t796;
t470 = t716 * (qJD(4) * t587 + t539) + t768;
t605 = pkin(3) * t722 + qJD(2) * t701;
t481 = t531 * pkin(4) - t530 * pkin(10) + t605;
t480 = t715 * t481;
t724 = -qJD(5) * t496 - t470 * t710 + t480;
t447 = pkin(5) * t531 - pkin(11) * t506 + t724;
t732 = t715 * t470 + t710 * t481 - t528 * t794 + t552 * t793;
t448 = -pkin(11) * t507 + t732;
t772 = t714 * t447 - t709 * t448;
t867 = t508 * t742 + t772;
t866 = t531 * MDP(36) + (-t545 ^ 2 + t742 ^ 2) * MDP(33) - t545 * MDP(32) * t742;
t865 = -0.2e1 * t788;
t862 = MDP(4) * t713;
t861 = MDP(5) * (t713 ^ 2 - t718 ^ 2);
t669 = t712 * t713 - t717 * t718;
t631 = -t669 * t711 + t671 * t716;
t577 = t670 * t631;
t541 = t597 * t711 + t594;
t753 = pkin(3) * t796 - t541;
t827 = t683 * t717;
t613 = -pkin(9) * t671 - t685 * t712 - t827;
t739 = t683 * t712 - t685 * t717;
t614 = -pkin(9) * t669 - t739;
t572 = -t613 * t716 + t711 * t614;
t824 = t712 * t716;
t806 = t603 * t716 - t604 * t711 + t698 * t796 + (t712 * t795 + (t711 * t717 + t824) * qJD(3)) * pkin(2);
t858 = t710 * t560 + t715 * t869;
t857 = MDP(29) * t789 - MDP(36) * t610;
t856 = t710 * t555 + t715 * t809;
t852 = -pkin(10) - pkin(11);
t850 = pkin(3) * t716;
t849 = pkin(5) * t715;
t650 = pkin(2) * t824 + t698 * t711 + pkin(10);
t847 = -pkin(11) - t650;
t696 = pkin(3) * t711 + pkin(10);
t846 = -pkin(11) - t696;
t495 = -t528 * t710 + t715 * t552;
t482 = -pkin(11) * t601 + t495;
t475 = -pkin(5) * t789 + t482;
t844 = t475 * t714;
t843 = t483 * t714;
t842 = t527 * t623;
t630 = t716 * t669 + t671 * t711;
t634 = t706 * t669;
t730 = t671 * qJD(3);
t635 = t671 * qJD(2) + t730;
t556 = -qJD(4) * t630 - t634 * t716 - t635 * t711;
t840 = t556 * t710;
t839 = t556 * t715;
t834 = t623 * t636;
t830 = t631 * t710;
t829 = t631 * t715;
t828 = t681 * t655;
t719 = qJD(2) ^ 2;
t823 = t713 * t719;
t573 = t613 * t711 + t614 * t716;
t566 = t715 * t573;
t822 = t718 * t719;
t720 = qJD(1) ^ 2;
t821 = t718 * t720;
t522 = t527 * t793;
t817 = t471 * t710 + t522;
t812 = t715 * t533 + t710 * t576;
t644 = pkin(3) * t669 + t700;
t571 = pkin(4) * t630 - pkin(10) * t631 + t644;
t808 = t710 * t571 + t566;
t807 = t859 + t806;
t804 = t859 + t753;
t790 = t741 * MDP(18);
t703 = t713 * t845;
t699 = -pkin(4) - t849;
t781 = qJD(5) * t852;
t779 = t631 * t794;
t776 = -pkin(2) * t706 - t662;
t625 = pkin(3) * t635 + t703;
t775 = qJD(5) * t847;
t774 = qJD(5) * t846;
t773 = pkin(1) * t865;
t771 = -t471 * t715 + t527 * t794;
t769 = -t533 * t710 + t715 * t576;
t758 = qJD(6) * t475 + t448;
t649 = pkin(2) * t825 - t698 * t716 - pkin(4);
t752 = -t534 + t859;
t751 = t496 * t741 + t817;
t705 = t715 * pkin(11);
t666 = t696 * t715 + t705;
t750 = qJD(6) * t666 - t715 * t774 + t754 - t882;
t638 = t650 * t715 + t705;
t749 = qJD(6) * t638 - t715 * t775 + t754 - t886;
t684 = pkin(10) * t715 + t705;
t748 = qJD(6) * t684 - t715 * t781 + t754 + t769;
t665 = t846 * t710;
t747 = -qJD(6) * t665 - t710 * t774 - t787 + t858;
t637 = t847 * t710;
t746 = -qJD(6) * t637 - t710 * t775 - t787 + t856;
t682 = t852 * t710;
t745 = -qJD(6) * t682 - t710 * t781 - t787 + t812;
t454 = t475 * t709 + t843;
t744 = -t531 * t650 - t842;
t743 = -t531 * t696 - t842;
t738 = -t495 * t741 + t771;
t737 = -t681 * t654 - t764;
t736 = t631 * t793 + t840;
t735 = -t779 + t839;
t734 = -t636 * t741 - t471;
t673 = t713 * t782;
t675 = t718 * t782;
t733 = -qJD(3) * t827 - t717 * t673 - t712 * t675 - t685 * t797;
t564 = -pkin(9) * t635 + t733;
t723 = qJD(3) * t739 + t673 * t712 - t717 * t675;
t565 = pkin(9) * t634 + t723;
t486 = -qJD(4) * t572 + t564 * t716 + t565 * t711;
t557 = qJD(4) * t631 - t634 * t711 + t716 * t635;
t493 = pkin(4) * t557 - pkin(10) * t556 + t625;
t731 = t715 * t486 + t710 * t493 + t571 * t793 - t573 * t794;
t453 = -t483 * t709 + t844;
t729 = -t453 * t741 + t884;
t728 = t454 * t741 + t885;
t487 = qJD(4) * t573 + t564 * t711 - t565 * t716;
t721 = t655 * t654 * MDP(11) - t623 * t790 + (t741 * t742 + t881) * MDP(34) + (t545 * t741 + t880) * MDP(35) + (t599 * t741 + t883) * MDP(28) + (-t601 * t741 + t879) * MDP(27) + (-t623 * t704 + t530) * MDP(20) + (t704 * t741 - t531) * MDP(21) + (-t623 ^ 2 + t741 ^ 2) * MDP(19) + (-t654 * t706 + t628) * MDP(13) + (-t655 * t706 - t722) * MDP(14) + (-t654 ^ 2 + t655 ^ 2) * MDP(12) + t857 * t741 + t878;
t697 = -pkin(4) - t850;
t679 = t699 - t850;
t642 = t649 - t849;
t641 = t701 - t851;
t578 = t668 * t631;
t563 = t715 * t571;
t523 = pkin(5) * t830 + t572;
t513 = t531 * t630;
t497 = -pkin(11) * t830 + t808;
t492 = t715 * t493;
t490 = pkin(5) * t630 - pkin(11) * t829 - t573 * t710 + t563;
t467 = t556 * t826 - t709 * t779 - t792 * t830 + (t829 * t854 + t840) * t714;
t466 = -t668 * t556 - t577 * t854;
t465 = pkin(5) * t736 + t487;
t450 = -pkin(11) * t736 + t731;
t449 = -pkin(11) * t839 + pkin(5) * t557 - t486 * t710 + t492 + (-t566 + (pkin(11) * t631 - t571) * t710) * qJD(5);
t1 = [(t530 * t644 + t556 * t636 + t605 * t631 + t625 * t741) * MDP(24) + (t530 * t631 + t556 * t741) * MDP(18) + 0.2e1 * t777 * t862 + (-t454 * t557 - t457 * t578 + t523 * t463 - t465 * t742 + t508 * t466 + t478 * t630 + (-(-qJD(6) * t497 + t449) * t610 - t490 * t531 - t447 * t630) * t709 + (-(qJD(6) * t490 + t450) * t610 - t497 * t531 - t758 * t630) * t714) * MDP(38) + (-t463 * t578 - t466 * t742) * MDP(32) + (-t463 * t577 + t464 * t578 - t466 * t545 + t467 * t742) * MDP(33) + (t463 * t630 + t466 * t610 - t531 * t578 - t557 * t742) * MDP(34) + (-(-t573 * t793 + t492) * t789 + t563 * t531 + (-t528 * t793 + t480) * t630 + t495 * t557 + t487 * t599 + t572 * t507 + t631 * t522 + (-(-qJD(5) * t571 - t486) * t789 - t573 * t531 + (-qJD(5) * t552 - t470) * t630 + t471 * t631 + t527 * t556) * t710) * MDP(30) + (t506 * t630 + t526 * t631 + t557 * t601 - t735 * t789) * MDP(27) + (-t507 * t630 - t524 * t631 - t557 * t599 + t736 * t789) * MDP(28) + (t471 * t829 + t487 * t601 - t496 * t557 + t572 * t506 + t527 * t735 - t531 * t808 - t630 * t732 + t731 * t789) * MDP(31) + (-t557 * t789 + t513) * MDP(29) + (-t530 * t630 - t531 * t631 + t556 * t623 - t557 * t741) * MDP(19) + (t531 * t644 + t557 * t636 + t605 * t630 - t623 * t625) * MDP(23) + (-t654 * t703 + t681 * t635 + (t700 * t730 + (t713 * pkin(2) * t669 + t671 * t700) * qJD(2)) * qJD(1)) * MDP(16) + (MDP(20) * t556 - MDP(21) * t557 - MDP(23) * t487 - MDP(24) * t486) * t704 + (t700 * t628 - t681 * t634 + (-t655 + t855) * t703) * MDP(17) + (-t634 * MDP(13) - t635 * MDP(14) + t723 * MDP(16) - t733 * MDP(17)) * t706 + (t628 * t671 + t634 * t655) * MDP(11) + (-t628 * t669 - t634 * t654 + t655 * t635 - t671 * t722) * MDP(12) + t861 * t865 + MDP(6) * t822 + ((t449 * t714 - t450 * t709) * t610 + (t490 * t714 - t497 * t709) * t531 + t772 * t630 + t453 * t557 + t465 * t545 + t523 * t464 + t457 * t577 + t508 * t467 + ((-t490 * t709 - t497 * t714) * t610 - t454 * t630) * qJD(6)) * MDP(37) + (-pkin(7) * t822 + t713 * t773) * MDP(9) - MDP(7) * t823 + (pkin(7) * t823 + t718 * t773) * MDP(10) + (t506 * t829 + t601 * t735) * MDP(25) + ((-t599 * t715 - t601 * t710) * t556 + (-t504 - t507 * t715 + (t599 * t710 - t601 * t715) * qJD(5)) * t631) * MDP(26) + (t557 * t610 + t513) * MDP(36) + (-t464 * t630 - t467 * t610 - t531 * t577 - t545 * t557) * MDP(35); (-t641 * t741 + t704 * t809 - t470 - t834) * MDP(24) + (t649 * t507 + t744 * t710 + t806 * t599 - (-t650 * t793 + t886) * t789 + t738) * MDP(30) + (t649 * t506 + t744 * t715 + t806 * t601 - (t650 * t794 + t856) * t789 + t751) * MDP(31) + (t623 * t641 - t704 * t806 + t734) * MDP(23) + (t655 * t701 + t805 * t706 + (qJD(3) * t776 + t663) * t717 + t737) * MDP(17) + (t654 * t701 + t828 - t763 * t706 + (t712 * t776 - t660) * qJD(3) + t765) * MDP(16) + ((t637 * t714 - t638 * t709) * t531 + t642 * t464 + (t709 * t746 - t714 * t749) * t610 + t807 * t545 + t729) * MDP(37) + t721 - t821 * t862 + t720 * t861 + (-(t637 * t709 + t638 * t714) * t531 + t642 * t463 + (t709 * t749 + t714 * t746) * t610 - t807 * t742 + t728) * MDP(38) + (MDP(9) * t713 * t720 + MDP(10) * t821) * pkin(1); (t697 * t506 + t743 * t715 + t753 * t601 - (t696 * t794 + t858) * t789 + t751) * MDP(31) + (t541 * t704 + (-t623 * t655 - t704 * t796) * pkin(3) + t734) * MDP(23) + ((t665 * t714 - t666 * t709) * t531 + t679 * t464 + (t709 * t747 - t714 * t750) * t610 + t804 * t545 + t729) * MDP(37) + (t741 * t851 + t542 * t704 - t834 + (-t539 + (-pkin(3) * t704 - t587) * qJD(4)) * t716 - t768) * MDP(24) + (t697 * t507 + t743 * t710 + t753 * t599 - (-t696 * t793 + t882) * t789 + t738) * MDP(30) + (-t706 * t740 + t725 + t828) * MDP(16) + (t706 * t766 + t737 - t860) * MDP(17) + t721 + (-(t665 * t709 + t666 * t714) * t531 + t679 * t463 + (t709 * t750 + t714 * t747) * t610 - t804 * t742 + t728) * MDP(38); t530 * MDP(20) - t531 * MDP(21) + (t534 * t704 - t471) * MDP(23) + (t533 * t704 - t470) * MDP(24) + t879 * MDP(27) + t883 * MDP(28) + (-pkin(4) * t507 - pkin(10) * t813 - t527 * t875 - t534 * t599 + t769 * t789 + t771) * MDP(30) + (-pkin(4) * t506 - t812 * t789 - t534 * t601 - t527 * t874 + (-t789 * t794 - t526) * pkin(10) + t817) * MDP(31) + t881 * MDP(34) + t880 * MDP(35) + ((t682 * t714 - t684 * t709) * t531 + t699 * t464 + (t709 * t745 - t714 * t748) * t610 + t752 * t545 + t884) * MDP(37) + (-(t682 * t709 + t684 * t714) * t531 + t699 * t463 + (t709 * t748 + t714 * t745) * t610 - t752 * t742 + t885) * MDP(38) - (MDP(19) * t623 + t704 * MDP(20) + t636 * MDP(24) + t790) * t623 + (MDP(19) * t741 + MDP(21) * t704 - t636 * MDP(23) - t601 * MDP(27) + t599 * MDP(28) - t495 * MDP(30) + t496 * MDP(31) + MDP(34) * t742 + t545 * MDP(35) - t453 * MDP(37) + t454 * MDP(38) + t857) * t741 + t878; t601 * t599 * MDP(25) + (-t599 ^ 2 + t601 ^ 2) * MDP(26) + (-t599 * t789 + t506) * MDP(27) + (-t841 + (-qJD(5) - t789) * t601) * MDP(28) + t531 * MDP(29) + (-t496 * t789 - t527 * t601 + t724) * MDP(30) + (-t495 * t789 + t527 * t599 - t732) * MDP(31) + (t463 + t877) * MDP(34) + (-t464 - t876) * MDP(35) + (-(-t482 * t709 - t843) * t610 - t454 * qJD(6) + (t531 * t714 - t545 * t601 - t610 * t792) * pkin(5) + t867) * MDP(37) + ((-t483 * t610 - t447) * t709 + (t482 * t610 - t758) * t714 + (-t531 * t709 + t601 * t742 - t610 * t791) * pkin(5) + t868) * MDP(38) + t866; (t784 + t877) * MDP(34) + (-t770 - t876) * MDP(35) + (t454 * t610 + t867) * MDP(37) + (-t709 * t447 - t714 * t448 + t453 * t610 + t868) * MDP(38) + (-MDP(34) * t838 + MDP(35) * t742 - MDP(37) * t454 - MDP(38) * t844) * qJD(6) + t866;];
tauc  = t1;
