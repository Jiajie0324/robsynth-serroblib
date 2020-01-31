% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S4RRPR7
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [4x1]
%   Generalized joint coordinates (joint angles)
% qJD [4x1]
%   Generalized joint velocities
% qJDD [4x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,d1,d2,d4,theta3]';
%
% Output:
% m_new_reg [(3*5)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 17:07
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S4RRPR7_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(4,1),zeros(4,1),zeros(4,1),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [4 1]), ...
  'S4RRPR7_invdynm_fixb_reg2_snew_vp: qJ has to be [4x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [4 1]), ...
  'S4RRPR7_invdynm_fixb_reg2_snew_vp: qJD has to be [4x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [4 1]), ...
  'S4RRPR7_invdynm_fixb_reg2_snew_vp: qJDD has to be [4x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S4RRPR7_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S4RRPR7_invdynm_fixb_reg2_snew_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 17:06:54
% EndTime: 2019-12-31 17:07:00
% DurationCPUTime: 6.57s
% Computational Cost: add. (26902->485), mult. (62254->671), div. (0->0), fcn. (41835->8), ass. (0->335)
t839 = sin(pkin(7));
t840 = cos(pkin(7));
t846 = cos(qJ(2));
t890 = qJD(1) * t846;
t843 = sin(qJ(2));
t891 = qJD(1) * t843;
t798 = t839 * t891 - t840 * t890;
t800 = t839 * t890 + t840 * t891;
t760 = t800 * t798;
t916 = qJDD(2) - t760;
t921 = t839 * t916;
t920 = t840 * t916;
t842 = sin(qJ(4));
t845 = cos(qJ(4));
t768 = -t845 * qJD(2) + t842 * t800;
t770 = t842 * qJD(2) + t845 * t800;
t737 = t770 * t768;
t885 = qJD(1) * qJD(2);
t829 = t846 * t885;
t884 = t843 * qJDD(1);
t808 = t829 + t884;
t832 = t846 * qJDD(1);
t873 = t843 * t885;
t809 = t832 - t873;
t869 = t839 * t808 - t840 * t809;
t759 = qJDD(4) + t869;
t917 = -t737 + t759;
t919 = t842 * t917;
t918 = t845 * t917;
t889 = qJD(2) * t800;
t738 = t869 + t889;
t886 = qJD(3) * t798;
t788 = -0.2e1 * t886;
t844 = sin(qJ(1));
t847 = cos(qJ(1));
t819 = t847 * g(1) + t844 * g(2);
t849 = qJD(1) ^ 2;
t853 = -t849 * pkin(1) + qJDD(1) * pkin(5) - t819;
t782 = -t843 * g(3) + t846 * t853;
t837 = t846 ^ 2;
t834 = t837 * t849;
t856 = qJD(2) * pkin(2) - qJ(3) * t891;
t730 = -pkin(2) * t834 + t809 * qJ(3) - qJD(2) * t856 + t782;
t851 = t843 * t853;
t899 = t843 * t849;
t850 = -t851 - t808 * qJ(3) + qJDD(2) * pkin(2) + (pkin(2) * t899 + qJ(3) * t885 - g(3)) * t846;
t893 = t840 * t730 + t839 * t850;
t662 = t788 + t893;
t753 = t798 * pkin(3) - t800 * pkin(6);
t848 = qJD(2) ^ 2;
t643 = -t848 * pkin(3) + qJDD(2) * pkin(6) - t798 * t753 + t662;
t818 = t844 * g(1) - t847 * g(2);
t857 = qJDD(1) * pkin(1) + t818;
t735 = t809 * pkin(2) + (qJ(3) * t837 + pkin(5)) * t849 - t856 * t891 - qJDD(3) + t857;
t762 = t840 * t808 + t839 * t809;
t792 = qJD(2) * t798;
t741 = t762 - t792;
t656 = t738 * pkin(3) - t741 * pkin(6) - t735;
t604 = t842 * t643 - t845 * t656;
t605 = t845 * t643 + t842 * t656;
t577 = t842 * t604 + t845 * t605;
t766 = t768 ^ 2;
t767 = t770 ^ 2;
t794 = qJD(4) + t798;
t793 = t794 ^ 2;
t796 = t798 ^ 2;
t797 = t800 ^ 2;
t915 = 0.2e1 * qJD(3);
t871 = t839 * t730 - t840 * t850;
t661 = t800 * t915 + t871;
t618 = -t840 * t661 + t839 * t662;
t914 = pkin(2) * t618;
t740 = -t869 + t889;
t742 = t762 + t792;
t694 = t839 * t740 - t840 * t742;
t913 = pkin(2) * t694;
t912 = pkin(3) * t839;
t911 = t794 * t842;
t910 = t794 * t845;
t836 = t843 ^ 2;
t909 = t836 * t849;
t908 = t839 * t735;
t756 = qJDD(2) + t760;
t907 = t839 * t756;
t906 = t840 * t735;
t905 = t840 * t756;
t642 = -qJDD(2) * pkin(3) - t848 * pkin(6) + (t915 + t753) * t800 + t871;
t639 = t842 * t642;
t702 = t737 + t759;
t904 = t842 * t702;
t903 = t843 * t618;
t802 = t849 * pkin(5) + t857;
t902 = t843 * t802;
t827 = t846 * t899;
t816 = qJDD(2) + t827;
t901 = t843 * t816;
t817 = qJDD(2) - t827;
t900 = t843 * t817;
t640 = t845 * t642;
t898 = t845 * t702;
t897 = t846 * t618;
t896 = t846 * t802;
t895 = t846 * t817;
t894 = -pkin(3) * t642 + pkin(6) * t577;
t892 = t836 + t837;
t888 = qJD(2) * t839;
t887 = qJD(2) * t840;
t883 = t844 * qJDD(1);
t882 = t847 * qJDD(1);
t881 = t847 * qJDD(2);
t880 = t839 * t737;
t879 = t840 * t737;
t878 = t844 * t760;
t877 = t847 * t760;
t720 = -t767 - t793;
t659 = -t842 * t720 - t898;
t858 = -t842 * qJDD(2) - t845 * t762;
t692 = (qJD(4) + t794) * t768 + t858;
t876 = pkin(3) * t692 + pkin(6) * t659 + t639;
t711 = -t793 - t766;
t654 = t845 * t711 - t919;
t870 = t845 * qJDD(2) - t842 * t762;
t712 = -t770 * qJD(4) + t870;
t752 = t794 * t770;
t688 = t712 - t752;
t875 = pkin(3) * t688 + pkin(6) * t654 - t640;
t874 = -pkin(3) * t840 - pkin(2);
t619 = t839 * t661 + t840 * t662;
t781 = t846 * g(3) + t851;
t733 = t843 * t781 + t846 * t782;
t868 = -t844 * t818 - t847 * t819;
t867 = t844 * t827;
t866 = t847 * t827;
t689 = (-qJD(4) + t794) * t770 + t870;
t713 = -t768 * qJD(4) - t858;
t751 = t794 * t768;
t691 = t713 + t751;
t634 = t845 * t689 + t842 * t691;
t708 = t766 + t767;
t865 = pkin(3) * t708 + pkin(6) * t634 + t577;
t572 = t839 * t577 - t840 * t642;
t864 = pkin(2) * t572 + t894;
t787 = -t797 - t848;
t716 = t840 * t787 - t907;
t863 = pkin(2) * t716 - t893;
t813 = -t844 * t849 + t882;
t862 = -pkin(4) * t813 - t844 * g(3);
t576 = -t845 * t604 + t842 * t605;
t732 = t846 * t781 - t843 * t782;
t861 = t847 * t818 - t844 * t819;
t620 = t839 * t654 + t840 * t688;
t860 = pkin(2) * t620 + t875;
t624 = t839 * t659 + t840 * t692;
t859 = pkin(2) * t624 + t876;
t614 = t839 * t634 + t840 * t708;
t855 = pkin(2) * t614 + t865;
t754 = -t848 - t796;
t704 = t839 * t754 + t920;
t854 = pkin(2) * t704 - t661;
t830 = t844 * qJDD(2);
t826 = -t834 - t848;
t825 = t834 - t848;
t824 = -t848 - t909;
t823 = t848 - t909;
t815 = -t834 + t909;
t814 = t834 + t909;
t812 = t847 * t849 + t883;
t811 = t892 * qJDD(1);
t810 = t832 - 0.2e1 * t873;
t807 = 0.2e1 * t829 + t884;
t805 = t846 * t816;
t804 = t892 * t885;
t795 = -pkin(4) * t812 + t847 * g(3);
t786 = -t797 + t848;
t785 = t796 - t848;
t784 = t846 * t808 - t836 * t885;
t783 = -t843 * t809 - t837 * t885;
t780 = -t843 * t824 - t895;
t779 = -t843 * t823 + t805;
t778 = t846 * t826 - t901;
t777 = t846 * t825 - t900;
t776 = t846 * t824 - t900;
t775 = t846 * t823 + t901;
t774 = t843 * t826 + t805;
t773 = t843 * t825 + t895;
t772 = (t808 + t829) * t843;
t771 = (t809 - t873) * t846;
t764 = -t843 * t807 + t846 * t810;
t763 = t846 * t807 + t843 * t810;
t758 = t797 - t796;
t750 = (-t798 * t840 + t800 * t839) * qJD(2);
t749 = (-t798 * t839 - t800 * t840) * qJD(2);
t748 = -t767 + t793;
t747 = t766 - t793;
t746 = -pkin(5) * t776 - t896;
t745 = -pkin(5) * t774 - t902;
t744 = -pkin(1) * t776 + t782;
t743 = -pkin(1) * t774 + t781;
t736 = -t796 - t797;
t734 = t767 - t766;
t729 = t840 * t762 - t800 * t888;
t728 = t839 * t762 + t800 * t887;
t727 = t798 * t887 + t839 * t869;
t726 = t798 * t888 - t840 * t869;
t724 = pkin(1) * t810 + pkin(5) * t778 + t896;
t723 = -pkin(1) * t807 + pkin(5) * t780 - t902;
t719 = -t839 * t787 - t905;
t718 = -t839 * t786 + t920;
t717 = t840 * t785 - t907;
t715 = t840 * t786 + t921;
t714 = t839 * t785 + t905;
t709 = pkin(1) * t802 + pkin(5) * t733;
t707 = pkin(1) * t814 + pkin(5) * t811 + t733;
t705 = t840 * t754 - t921;
t700 = (-t768 * t845 + t770 * t842) * t794;
t699 = (-t768 * t842 - t770 * t845) * t794;
t698 = -t843 * t749 + t846 * t750;
t697 = t846 * t749 + t843 * t750;
t696 = t840 * t740 + t839 * t742;
t695 = -t840 * t738 - t839 * t741;
t693 = -t839 * t738 + t840 * t741;
t690 = t713 - t751;
t687 = -t712 - t752;
t684 = t845 * t713 - t770 * t911;
t683 = t842 * t713 + t770 * t910;
t682 = -t842 * t712 + t768 * t910;
t681 = -t845 * t712 - t768 * t911;
t680 = -qJ(3) * t716 - t906;
t679 = -t843 * t728 + t846 * t729;
t678 = -t843 * t726 + t846 * t727;
t677 = t846 * t728 + t843 * t729;
t676 = t846 * t726 + t843 * t727;
t675 = -t843 * t716 + t846 * t719;
t674 = -t843 * t715 + t846 * t718;
t673 = -t843 * t714 + t846 * t717;
t672 = t846 * t716 + t843 * t719;
t671 = t846 * t715 + t843 * t718;
t670 = t846 * t714 + t843 * t717;
t669 = t840 * t700 + t839 * t759;
t668 = t839 * t700 - t840 * t759;
t667 = t845 * t747 - t904;
t666 = -t842 * t748 + t918;
t665 = t842 * t747 + t898;
t664 = t845 * t748 + t919;
t663 = -qJ(3) * t704 - t908;
t658 = t845 * t720 - t904;
t653 = t842 * t711 + t918;
t651 = -t843 * t704 + t846 * t705;
t650 = t846 * t704 + t843 * t705;
t649 = -pkin(2) * t741 + qJ(3) * t719 - t908;
t648 = t840 * t684 + t880;
t647 = t840 * t682 - t880;
t646 = t839 * t684 - t879;
t645 = t839 * t682 + t879;
t644 = -pkin(2) * t738 + qJ(3) * t705 + t906;
t638 = -t843 * t694 + t846 * t696;
t637 = -t843 * t693 + t846 * t695;
t636 = t846 * t694 + t843 * t696;
t635 = t846 * t693 + t843 * t695;
t633 = t845 * t688 - t842 * t690;
t632 = t842 * t689 - t845 * t691;
t631 = t842 * t688 + t845 * t690;
t629 = t840 * t667 - t839 * t687;
t628 = t840 * t666 + t839 * t691;
t627 = t839 * t667 + t840 * t687;
t626 = t839 * t666 - t840 * t691;
t625 = t840 * t659 - t839 * t692;
t623 = -t843 * t668 + t846 * t669;
t622 = t846 * t668 + t843 * t669;
t621 = t840 * t654 - t839 * t688;
t617 = t840 * t633 + t839 * t734;
t616 = t839 * t633 - t840 * t734;
t615 = t840 * t634 - t839 * t708;
t613 = -pkin(1) * t636 - t913;
t612 = -pkin(1) * t672 + t788 - t863;
t611 = pkin(2) * t735 + qJ(3) * t619;
t610 = -pkin(6) * t658 + t640;
t609 = -t843 * t646 + t846 * t648;
t608 = -t843 * t645 + t846 * t647;
t607 = t846 * t646 + t843 * t648;
t606 = t846 * t645 + t843 * t647;
t601 = -pkin(6) * t653 + t639;
t600 = -pkin(1) * t650 - t854;
t599 = -qJ(3) * t694 - t618;
t598 = -pkin(5) * t672 - t843 * t649 + t846 * t680;
t597 = -pkin(2) * t736 + qJ(3) * t696 + t619;
t596 = -pkin(1) * t741 + pkin(5) * t675 + t846 * t649 + t843 * t680;
t595 = -pkin(5) * t650 - t843 * t644 + t846 * t663;
t594 = -pkin(3) * t658 + t605;
t593 = -t843 * t627 + t846 * t629;
t592 = -t843 * t626 + t846 * t628;
t591 = t846 * t627 + t843 * t629;
t590 = t846 * t626 + t843 * t628;
t589 = -pkin(3) * t653 + t604;
t588 = -pkin(1) * t738 + pkin(5) * t651 + t846 * t644 + t843 * t663;
t587 = -t843 * t624 + t846 * t625;
t586 = t846 * t624 + t843 * t625;
t585 = -t843 * t620 + t846 * t621;
t584 = t846 * t620 + t843 * t621;
t583 = t846 * t619 - t903;
t582 = t843 * t619 + t897;
t581 = -t843 * t616 + t846 * t617;
t580 = t846 * t616 + t843 * t617;
t579 = -t843 * t614 + t846 * t615;
t578 = t846 * t614 + t843 * t615;
t574 = -pkin(1) * t582 - t914;
t573 = t840 * t577 + t839 * t642;
t571 = -pkin(6) * t632 - t576;
t570 = -pkin(5) * t636 - t843 * t597 + t846 * t599;
t569 = -pkin(1) * t736 + pkin(5) * t638 + t846 * t597 + t843 * t599;
t568 = -qJ(3) * t624 - t839 * t594 + t840 * t610;
t567 = -qJ(3) * t620 - t839 * t589 + t840 * t601;
t566 = -pkin(5) * t582 - qJ(3) * t897 - t843 * t611;
t565 = pkin(1) * t735 + pkin(5) * t583 - qJ(3) * t903 + t846 * t611;
t564 = -pkin(1) * t586 - t859;
t563 = -pkin(2) * t658 + qJ(3) * t625 + t840 * t594 + t839 * t610;
t562 = -pkin(1) * t584 - t860;
t561 = -pkin(2) * t653 + qJ(3) * t621 + t840 * t589 + t839 * t601;
t560 = -qJ(3) * t614 + t840 * t571 + t632 * t912;
t559 = qJ(3) * t615 + t839 * t571 + t874 * t632;
t558 = -t843 * t572 + t846 * t573;
t557 = t846 * t572 + t843 * t573;
t556 = -pkin(1) * t578 - t855;
t555 = -qJ(3) * t572 + (-pkin(6) * t840 + t912) * t576;
t554 = -pkin(5) * t586 - t843 * t563 + t846 * t568;
t553 = -pkin(5) * t584 - t843 * t561 + t846 * t567;
t552 = qJ(3) * t573 + (-pkin(6) * t839 + t874) * t576;
t551 = -pkin(1) * t658 + pkin(5) * t587 + t846 * t563 + t843 * t568;
t550 = -pkin(1) * t653 + pkin(5) * t585 + t846 * t561 + t843 * t567;
t549 = -pkin(1) * t557 - t864;
t548 = -pkin(5) * t578 - t843 * t559 + t846 * t560;
t547 = -pkin(1) * t632 + pkin(5) * t579 + t846 * t559 + t843 * t560;
t546 = -pkin(5) * t557 - t843 * t552 + t846 * t555;
t545 = -pkin(1) * t576 + pkin(5) * t558 + t846 * t552 + t843 * t555;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t813, 0, -t812, 0, t862, -t795, -t861, -pkin(4) * t861, t847 * t784 - t867, t847 * t764 + t844 * t815, t847 * t779 + t843 * t883, t847 * t783 + t867, t847 * t777 + t844 * t832, t847 * t804 + t830, t847 * t745 - t844 * t743 - pkin(4) * (t844 * t778 + t847 * t810), t847 * t746 - t844 * t744 - pkin(4) * (t844 * t780 - t847 * t807), t847 * t732 - pkin(4) * (t844 * t811 + t847 * t814), -pkin(4) * (t844 * t733 + t847 * t802) - (t844 * pkin(1) - t847 * pkin(5)) * t732, t847 * t679 + t878, t847 * t637 + t844 * t758, t847 * t674 + t844 * t742, t847 * t678 - t878, t847 * t673 + t740 * t844, t847 * t698 + t830, t847 * t595 - t844 * t600 - pkin(4) * (t844 * t651 - t847 * t738), t847 * t598 - t844 * t612 - pkin(4) * (t844 * t675 - t847 * t741), t847 * t570 - t844 * t613 - pkin(4) * (t844 * t638 - t847 * t736), t847 * t566 - t844 * t574 - pkin(4) * (t844 * t583 + t847 * t735), t847 * t609 + t844 * t683, t847 * t581 + t844 * t631, t847 * t592 + t844 * t664, t847 * t608 - t844 * t681, t847 * t593 + t844 * t665, t847 * t623 + t844 * t699, t847 * t553 - t844 * t562 - pkin(4) * (t844 * t585 - t847 * t653), t847 * t554 - t844 * t564 - pkin(4) * (t844 * t587 - t847 * t658), t847 * t548 - t844 * t556 - pkin(4) * (t844 * t579 - t847 * t632), t847 * t546 - t844 * t549 - pkin(4) * (t844 * t558 - t847 * t576); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t812, 0, t813, 0, t795, t862, t868, pkin(4) * t868, t844 * t784 + t866, t844 * t764 - t847 * t815, t844 * t779 - t843 * t882, t844 * t783 - t866, t844 * t777 - t846 * t882, t844 * t804 - t881, t844 * t745 + t847 * t743 + pkin(4) * (t847 * t778 - t844 * t810), t844 * t746 + t847 * t744 + pkin(4) * (t847 * t780 + t844 * t807), t844 * t732 + pkin(4) * (t847 * t811 - t844 * t814), pkin(4) * (t847 * t733 - t844 * t802) - (-t847 * pkin(1) - t844 * pkin(5)) * t732, t844 * t679 - t877, t844 * t637 - t847 * t758, t844 * t674 - t847 * t742, t844 * t678 + t877, t844 * t673 - t740 * t847, t844 * t698 - t881, t844 * t595 + t847 * t600 + pkin(4) * (t847 * t651 + t844 * t738), t844 * t598 + t847 * t612 + pkin(4) * (t847 * t675 + t844 * t741), t844 * t570 + t847 * t613 + pkin(4) * (t847 * t638 + t844 * t736), t844 * t566 + t847 * t574 + pkin(4) * (t847 * t583 - t844 * t735), t844 * t609 - t847 * t683, t844 * t581 - t847 * t631, t844 * t592 - t847 * t664, t844 * t608 + t847 * t681, t844 * t593 - t847 * t665, t844 * t623 - t847 * t699, t844 * t553 + t847 * t562 + pkin(4) * (t847 * t585 + t844 * t653), t844 * t554 + t847 * t564 + pkin(4) * (t847 * t587 + t844 * t658), t844 * t548 + t847 * t556 + pkin(4) * (t847 * t579 + t844 * t632), t844 * t546 + t847 * t549 + pkin(4) * (t847 * t558 + t844 * t576); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t818, t819, 0, 0, t772, t763, t775, t771, t773, 0, t724, t723, t707, t709, t677, t635, t671, t676, t670, t697, t588, t596, t569, t565, t607, t580, t590, t606, t591, t622, t550, t551, t547, t545; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t849, 0, 0, -g(3), -t818, 0, t784, t764, t779, t783, t777, t804, t745, t746, t732, pkin(5) * t732, t679, t637, t674, t678, t673, t698, t595, t598, t570, t566, t609, t581, t592, t608, t593, t623, t553, t554, t548, t546; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t849, 0, qJDD(1), 0, g(3), 0, -t819, 0, t827, -t815, -t884, -t827, -t832, -qJDD(2), t743, t744, 0, pkin(1) * t732, -t760, -t758, -t742, t760, -t740, -qJDD(2), t600, t612, t613, t574, -t683, -t631, -t664, t681, -t665, -t699, t562, t564, t556, t549; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t818, t819, 0, 0, t772, t763, t775, t771, t773, 0, t724, t723, t707, t709, t677, t635, t671, t676, t670, t697, t588, t596, t569, t565, t607, t580, t590, t606, t591, t622, t550, t551, t547, t545; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t808, t810, t816, -t829, t825, t829, 0, -t802, t781, 0, t729, t695, t718, t727, t717, t750, t663, t680, t599, -qJ(3) * t618, t648, t617, t628, t647, t629, t669, t567, t568, t560, t555; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t873, t807, t823, t809, t817, -t873, t802, 0, t782, 0, t728, t693, t715, t726, t714, t749, t644, t649, t597, t611, t646, t616, t626, t645, t627, t668, t561, t563, t559, t552; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t827, t815, t884, t827, t832, qJDD(2), -t781, -t782, 0, 0, t760, t758, t742, -t760, t740, qJDD(2), t854, t863 + 0.2e1 * t886, t913, t914, t683, t631, t664, -t681, t665, t699, t860, t859, t855, t864; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t762, -t738, t916, t792, t785, -t792, 0, -t735, t661, 0, t684, t633, t666, t682, t667, t700, t601, t610, t571, -pkin(6) * t576; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t889, t741, t786, -t869, t756, -t889, t735, 0, t662, 0, -t737, -t734, -t691, t737, t687, -t759, t589, t594, -pkin(3) * t632, -pkin(3) * t576; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t760, t758, t742, -t760, t740, qJDD(2), -t661, -t662, 0, 0, t683, t631, t664, -t681, t665, t699, t875, t876, t865, t894; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t713, t688, t917, t751, t747, -t751, 0, t642, t604, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t752, t690, t748, t712, t702, -t752, -t642, 0, t605, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t737, t734, t691, -t737, -t687, t759, -t604, -t605, 0, 0;];
m_new_reg = t1;