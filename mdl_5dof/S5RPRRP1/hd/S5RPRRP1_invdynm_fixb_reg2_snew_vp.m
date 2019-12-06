% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RPRRP1
% Use Code from Maple symbolic Code Generation
%
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% qJDD [5x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:00
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RPRRP1_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(7,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP1_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP1_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRP1_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRP1_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RPRRP1_invdynm_fixb_reg2_snew_vp: pkin has to be [7x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:00:12
% EndTime: 2019-12-05 18:00:19
% DurationCPUTime: 7.76s
% Computational Cost: add. (24899->500), mult. (51225->536), div. (0->0), fcn. (32209->6), ass. (0->337)
t789 = qJDD(3) + qJDD(4);
t794 = sin(qJ(4));
t795 = sin(qJ(3));
t797 = cos(qJ(4));
t798 = cos(qJ(3));
t755 = (-t794 * t798 - t795 * t797) * qJD(1);
t873 = qJD(1) * t798;
t757 = -t794 * t795 * qJD(1) + t797 * t873;
t905 = t757 * t755;
t932 = t789 + t905;
t935 = t932 * pkin(4);
t896 = t794 * t932;
t886 = t797 * t932;
t753 = t755 ^ 2;
t790 = qJD(3) + qJD(4);
t788 = t790 ^ 2;
t705 = -t788 - t753;
t660 = t794 * t705 + t886;
t661 = t797 * t705 - t896;
t614 = t798 * t660 + t795 * t661;
t612 = pkin(2) * t614;
t659 = pkin(3) * t660;
t784 = t798 * qJDD(1);
t870 = qJD(1) * qJD(3);
t861 = t795 * t870;
t764 = t784 - t861;
t860 = t798 * t870;
t868 = t795 * qJDD(1);
t822 = -t860 - t868;
t698 = t755 * qJD(4) + t797 * t764 + t794 * t822;
t801 = qJD(1) ^ 2;
t796 = sin(qJ(1));
t799 = cos(qJ(1));
t773 = t796 * g(1) - t799 * g(2);
t843 = qJDD(2) - t773;
t820 = -t801 * qJ(2) + t843;
t926 = pkin(6) + pkin(1);
t808 = -t926 * qJDD(1) + t820;
t805 = t798 * t808;
t882 = t798 * t801;
t691 = t805 - t764 * pkin(7) + qJDD(3) * pkin(3) + (-pkin(3) * t882 - pkin(7) * t870 + g(3)) * t795;
t716 = t798 * g(3) - t795 * t808;
t800 = qJD(3) ^ 2;
t792 = t795 ^ 2;
t901 = t792 * t801;
t776 = -t800 - t901;
t692 = t776 * pkin(3) - pkin(7) * t868 - t716;
t644 = -t797 * t691 + t794 * t692;
t904 = t790 * t755;
t809 = -qJ(5) * t904 + 0.2e1 * qJD(5) * t757 + t644 - t935;
t594 = t698 * qJ(5) + t809;
t807 = -t594 + t935;
t806 = t659 + t807;
t934 = -t612 - t806;
t933 = t698 + t904;
t741 = t790 * t757;
t852 = -t794 * t764 + t797 * t822;
t824 = t757 * qJD(4) - t852;
t674 = t741 + t824;
t931 = -pkin(1) * t614 + qJ(2) * t674;
t754 = t757 ^ 2;
t730 = -t754 - t788;
t707 = -t905 + t789;
t897 = t794 * t707;
t680 = t797 * t730 - t897;
t887 = t797 * t707;
t681 = -t794 * t730 - t887;
t633 = t798 * t680 + t795 * t681;
t930 = -pkin(1) * t633 + qJ(2) * t933;
t676 = (-qJD(4) + t790) * t757 + t852;
t679 = -t904 + t698;
t629 = t794 * t676 - t797 * t679;
t631 = t797 * t676 + t794 * t679;
t586 = t798 * t629 + t795 * t631;
t699 = -t753 - t754;
t929 = -pkin(1) * t586 + qJ(2) * t699;
t715 = t795 * g(3) + t805;
t682 = t798 * t715 - t795 * t716;
t839 = t790 * pkin(4) - t757 * qJ(5);
t928 = -t757 * t839 - qJDD(5);
t774 = t799 * g(1) + t796 * g(2);
t791 = qJDD(1) * qJ(2);
t834 = t774 - t791;
t927 = -(t792 * pkin(7) + t926) * t801 - pkin(3) * t822 + (qJD(3) * pkin(3) - pkin(7) * t873) * t873 - t834;
t588 = -t795 * t629 + t798 * t631;
t925 = pkin(1) * t588;
t615 = -t795 * t660 + t798 * t661;
t924 = pkin(1) * t615;
t634 = -t795 * t680 + t798 * t681;
t923 = pkin(1) * t634;
t922 = pkin(2) * t682;
t869 = qJD(2) * qJD(1);
t865 = -0.2e1 * t869;
t810 = t834 + t865;
t733 = t926 * t801 + t810;
t921 = pkin(2) * t733;
t793 = t798 ^ 2;
t874 = t792 + t793;
t766 = t874 * qJDD(1);
t920 = pkin(2) * t766;
t919 = pkin(5) * (-t799 * t586 + t796 * t699);
t918 = pkin(5) * (-t799 * t614 + t796 * t674);
t917 = pkin(5) * (-t799 * t633 + t796 * t933);
t916 = pkin(6) * t586;
t915 = pkin(6) * t614;
t914 = pkin(6) * t633;
t913 = pkin(7) * t629;
t912 = pkin(7) * t660;
t911 = pkin(7) * t680;
t910 = t824 * pkin(4);
t909 = qJ(2) * t615;
t908 = qJ(2) * t634;
t907 = qJDD(1) * pkin(1);
t903 = t790 * t794;
t902 = t790 * t797;
t900 = t793 * t801;
t899 = t794 * t594;
t693 = t865 - t927;
t898 = t794 * t693;
t645 = t794 * t691 + t797 * t692;
t591 = -t797 * t644 + t794 * t645;
t895 = t795 * t591;
t893 = t795 * t733;
t763 = 0.2e1 * t860 + t868;
t720 = t795 * t763;
t779 = t795 * t882;
t771 = qJDD(3) + t779;
t892 = t795 * t771;
t772 = qJDD(3) - t779;
t891 = t795 * t772;
t890 = t796 * t766;
t889 = t797 * t594;
t888 = t797 * t693;
t885 = t798 * t591;
t719 = t798 * t733;
t884 = t798 * t771;
t883 = t798 * t772;
t881 = t799 * t766;
t880 = -pkin(2) * t699 + pkin(6) * t588;
t583 = pkin(2) * t586;
t624 = pkin(3) * t629;
t879 = -t583 - t624;
t872 = qJD(5) * t755;
t743 = 0.2e1 * t872;
t838 = t753 * pkin(4) + qJ(5) * t824 + t790 * t839 - t645;
t597 = t743 - t838;
t562 = t794 * t597 - t889;
t593 = pkin(4) * t594;
t878 = pkin(3) * t562 - t593;
t877 = -pkin(2) * t674 + pkin(6) * t615;
t876 = -pkin(2) * t933 + pkin(6) * t634;
t669 = pkin(4) * t679;
t875 = -t669 + t624;
t867 = t796 * qJDD(1);
t866 = t799 * qJDD(1);
t864 = t796 * t905;
t863 = t799 * t905;
t673 = pkin(3) * t680;
t862 = -t673 + t645;
t592 = t794 * t644 + t797 * t645;
t559 = t795 * t592 + t885;
t590 = pkin(3) * t591;
t859 = -pkin(2) * t559 - t590;
t858 = -pkin(3) * t699 + pkin(7) * t631;
t857 = -pkin(3) * t674 + pkin(7) * t661;
t856 = -pkin(3) * t933 + pkin(7) * t681;
t563 = t797 * t597 + t899;
t802 = t693 + t928;
t616 = t753 * qJ(5) + t802 - t910;
t569 = pkin(4) * t616 + qJ(5) * t597;
t537 = pkin(3) * t616 + pkin(7) * t563 + qJ(5) * t899 + t797 * t569;
t544 = -pkin(7) * t562 + qJ(5) * t889 - t794 * t569;
t855 = -t795 * t537 + t798 * t544;
t742 = t801 * pkin(1) + t810;
t746 = -t820 + t907;
t853 = -t799 * t742 - t796 * t746;
t851 = -t796 * t773 - t799 * t774;
t849 = t796 * t779;
t848 = t799 * t779;
t626 = pkin(2) * t633;
t847 = -t626 + t862;
t545 = t798 * t562 + t795 * t563;
t846 = -pkin(2) * t545 - t878;
t767 = -t796 * t801 + t866;
t845 = pkin(5) * t767 + t796 * g(3);
t768 = t799 * t801 + t867;
t844 = -pkin(5) * t768 + t799 * g(3);
t553 = -qJ(2) * t588 - t879;
t842 = t644 - t659;
t841 = pkin(2) * t763 - t719;
t765 = t784 - 0.2e1 * t861;
t840 = pkin(2) * t765 + t893;
t683 = -t795 * t715 - t798 * t716;
t837 = t796 * t742 - t799 * t746;
t836 = t799 * t773 - t796 * t774;
t778 = -t800 - t900;
t724 = t798 * t778 - t892;
t835 = -pkin(2) * t724 - t716;
t833 = -t612 + t842;
t581 = pkin(3) * t693 + pkin(7) * t592;
t832 = -pkin(7) * t885 - t795 * t581;
t575 = -pkin(4) * t699 + qJ(5) * t676 + t597;
t580 = (t679 + t698) * qJ(5) + t809;
t547 = t797 * t575 + t794 * t580 + t858;
t549 = -t794 * t575 + t797 * t580 - t913;
t831 = -t795 * t547 + t798 * t549 - t916;
t589 = (t753 + t705) * qJ(5) + (-t824 - t674) * pkin(4) + t802;
t565 = -qJ(5) * t896 + t797 * t589 + t857;
t572 = -qJ(5) * t886 - t794 * t589 - t912;
t830 = -t795 * t565 + t798 * t572 - t915;
t566 = t592 + t858;
t570 = -t591 - t913;
t829 = -t795 * t566 + t798 * t570 - t916;
t786 = 0.2e1 * t869;
t610 = t786 + t910 + (-t753 - t730) * qJ(5) + t927 - t928;
t648 = -pkin(4) * t933 - qJ(5) * t707;
t567 = t794 * t610 + t797 * t648 + t856;
t574 = t797 * t610 - t794 * t648 - t911;
t828 = -t795 * t567 + t798 * t574 - t914;
t604 = t857 + t888;
t635 = -t898 - t912;
t827 = -t795 * t604 + t798 * t635 - t915;
t605 = t856 - t898;
t643 = -t888 - t911;
t826 = -t795 * t605 + t798 * t643 - t914;
t825 = pkin(4) * t730 + t838;
t821 = -0.2e1 * t872 + t825;
t819 = t798 * t547 + t795 * t549 + t880;
t818 = t798 * t565 + t795 * t572 + t877;
t817 = t798 * t566 + t795 * t570 + t880;
t816 = t798 * t567 + t795 * t574 + t876;
t815 = t798 * t604 + t795 * t635 + t877;
t814 = t798 * t605 + t795 * t643 + t876;
t813 = -pkin(2) * t616 - t798 * t537 - t795 * t544;
t812 = t673 + t821;
t811 = -pkin(2) * t693 + pkin(7) * t895 - t798 * t581;
t722 = t795 * t776 + t883;
t803 = -pkin(2) * t722 - t715;
t777 = t800 - t900;
t775 = -t800 + t901;
t770 = (-t792 + t793) * t801;
t769 = t874 * t801;
t761 = t874 * t870;
t760 = t843 - 0.2e1 * t907;
t752 = -t774 + t786 + 0.2e1 * t791;
t737 = -t754 + t788;
t736 = t753 - t788;
t735 = t795 * t764 + t793 * t870;
t734 = t792 * t870 + t798 * t822;
t729 = -t795 * t778 - t884;
t728 = -t795 * t777 + t883;
t727 = (t764 - t861) * t798;
t726 = t798 * t776 - t891;
t725 = t798 * t775 - t892;
t723 = t798 * t777 + t891;
t721 = t795 * t775 + t884;
t714 = -t798 * t763 - t795 * t765;
t713 = t798 * t765 - t720;
t709 = t754 - t753;
t702 = pkin(1) * t746 - qJ(2) * t742;
t701 = (t755 * t797 + t757 * t794) * t790;
t700 = (t755 * t794 - t757 * t797) * t790;
t687 = t797 * t736 - t897;
t686 = -t794 * t737 + t886;
t685 = t794 * t736 + t887;
t684 = t797 * t737 + t896;
t675 = -t741 + t824;
t666 = t797 * t698 - t757 * t903;
t665 = t794 * t698 + t757 * t902;
t664 = -t755 * t902 + t794 * t824;
t663 = -t755 * t903 - t797 * t824;
t662 = pkin(2) * t769 + t683;
t657 = -qJ(2) * t729 - t835;
t656 = -qJ(2) * t726 - t803;
t655 = -t926 * t726 + t841;
t654 = -t926 * t729 + t840;
t653 = qJ(2) * t765 - t926 * t724 - t719;
t652 = qJ(2) * t763 - t926 * t722 - t893;
t651 = -t795 * t700 + t798 * t701;
t650 = t798 * t700 + t795 * t701;
t649 = -qJ(2) * t769 + t926 * t766 - t682;
t647 = t796 * t650 + t799 * t789;
t646 = -t799 * t650 + t796 * t789;
t640 = -qJ(2) * t683 + t922;
t639 = -t795 * t685 + t798 * t687;
t638 = -t795 * t684 + t798 * t686;
t637 = t798 * t685 + t795 * t687;
t636 = t798 * t684 + t795 * t686;
t630 = -t797 * t674 - t794 * t933;
t628 = -t794 * t674 + t797 * t933;
t622 = -t926 * t683 - t921;
t621 = -t795 * t665 + t798 * t666;
t620 = -t795 * t663 + t798 * t664;
t619 = t798 * t665 + t795 * t666;
t618 = t798 * t663 + t795 * t664;
t617 = -qJ(2) * t733 - t926 * t682;
t609 = t796 * t619 - t863;
t608 = t796 * t618 + t863;
t607 = -t799 * t619 - t864;
t606 = -t799 * t618 + t864;
t603 = t796 * t636 + t799 * t679;
t602 = t796 * t637 - t799 * t675;
t601 = -t799 * t636 + t796 * t679;
t600 = -t799 * t637 - t796 * t675;
t598 = pkin(5) * (t796 * t633 + t799 * t933);
t595 = pkin(5) * (t796 * t614 + t799 * t674);
t587 = -t795 * t628 + t798 * t630;
t585 = t798 * t628 + t795 * t630;
t579 = t796 * t585 + t799 * t709;
t578 = -t799 * t585 + t796 * t709;
t576 = pkin(5) * (t796 * t586 + t799 * t699);
t564 = -t847 - t908;
t560 = t798 * t592 - t895;
t558 = -t833 - t909;
t557 = t626 + t812 - t908;
t556 = -t814 - t923;
t555 = t826 + t930;
t554 = -t909 - t934;
t552 = -t815 - t924;
t551 = t827 + t931;
t550 = t553 - t669;
t546 = -t795 * t562 + t798 * t563;
t542 = -t816 - t923;
t541 = t828 + t930;
t540 = -t818 - t924;
t539 = t830 + t931;
t538 = -qJ(2) * t560 - t859;
t536 = -t817 - t925;
t535 = t829 + t929;
t534 = -t926 * t560 + t811;
t533 = -qJ(2) * t693 - t926 * t559 + t832;
t532 = -t819 - t925;
t531 = t831 + t929;
t530 = -qJ(2) * t546 - t846;
t529 = -t926 * t546 + t813;
t528 = -qJ(2) * t616 - t926 * t545 + t855;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t767, 0, -t768, 0, -t845, -t844, -t836, -pkin(5) * t836, 0, -t767, t768, 0, 0, 0, t837, t845, t844, pkin(5) * t837 + (-t796 * pkin(1) + t799 * qJ(2)) * g(3), t796 * t735 + t848, t796 * t713 + t799 * t770, t796 * t723 + t798 * t866, t796 * t734 - t848, t796 * t721 - t795 * t866, t799 * qJDD(3) - t796 * t761, t799 * t656 - t796 * t655 - pkin(5) * (-t799 * t722 + t796 * t763), t799 * t657 - t796 * t654 - pkin(5) * (-t799 * t724 + t796 * t765), -pkin(2) * t881 + t796 * t662 - pkin(5) * (-t796 * t769 + t881), t799 * t640 - t796 * t622 - pkin(5) * (-t799 * t682 - t796 * t733), t609, t579, t603, t608, t602, t647, -t796 * t552 + t799 * t558 - t918, -t796 * t556 + t799 * t564 - t917, -t796 * t536 + t799 * t553 - t919, t799 * t538 - t796 * t534 - pkin(5) * (-t799 * t559 - t796 * t693), t609, t579, t603, t608, t602, t647, -t796 * t540 + t799 * t554 - t918, -t796 * t542 + t799 * t557 - t917, -t796 * t532 + t799 * t550 - t919, t799 * t530 - t796 * t529 - pkin(5) * (-t799 * t545 - t796 * t616); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t768, 0, t767, 0, t844, -t845, t851, pkin(5) * t851, 0, -t768, -t767, 0, 0, 0, t853, -t844, t845, pkin(5) * t853 + (t799 * pkin(1) + t796 * qJ(2)) * g(3), -t799 * t735 + t849, -t799 * t713 + t796 * t770, -t799 * t723 + t784 * t796, -t799 * t734 - t849, -t799 * t721 - t795 * t867, t796 * qJDD(3) + t799 * t761, t796 * t656 + t799 * t655 + pkin(5) * (t796 * t722 + t799 * t763), t796 * t657 + t799 * t654 + pkin(5) * (t796 * t724 + t799 * t765), -pkin(2) * t890 - t799 * t662 + pkin(5) * (-t799 * t769 - t890), t796 * t640 + t799 * t622 + pkin(5) * (t796 * t682 - t799 * t733), t607, t578, t601, t606, t600, t646, t799 * t552 + t796 * t558 + t595, t799 * t556 + t796 * t564 + t598, t799 * t536 + t796 * t553 + t576, t796 * t538 + t799 * t534 + pkin(5) * (t796 * t559 - t799 * t693), t607, t578, t601, t606, t600, t646, t799 * t540 + t796 * t554 + t595, t799 * t542 + t796 * t557 + t598, t799 * t532 + t796 * t550 + t576, t796 * t530 + t799 * t529 + pkin(5) * (t796 * t545 - t799 * t616); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t773, t774, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t760, t752, t702, t727, t714, t728, t720, t725, 0, t652, t653, t649, t617, t621, t587, t638, t620, t639, t651, t551, t555, t535, t533, t621, t587, t638, t620, t639, t651, t539, t541, t531, t528; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t801, 0, 0, -g(3), -t773, 0, 0, -qJDD(1), t801, 0, 0, 0, -t746, 0, g(3), qJ(2) * g(3), t779, t770, t784, -t779, -t868, qJDD(3), t656, t657, -t920, t640, -t905, t709, t679, t905, -t675, t789, t558, t564, t553, t538, -t905, t709, t679, t905, -t675, t789, t554, t557, t550, t530; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t801, 0, qJDD(1), 0, g(3), 0, -t774, 0, 0, -t801, -qJDD(1), 0, 0, 0, -t742, -g(3), 0, pkin(1) * g(3), -t735, -t713, -t723, -t734, -t721, t761, t655, t654, -t662, t622, -t619, -t585, -t636, -t618, -t637, -t650, t552, t556, t536, t534, -t619, -t585, -t636, -t618, -t637, -t650, t540, t542, t532, t529; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t773, t774, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t760, t752, t702, t727, t714, t728, t720, t725, 0, t652, t653, t649, t617, t621, t587, t638, t620, t639, t651, t551, t555, t535, t533, t621, t587, t638, t620, t639, t651, t539, t541, t531, t528; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, -t746, -t742, 0, t727, t714, t728, t720, t725, 0, -pkin(6) * t722 - t893, -pkin(6) * t724 - t719, pkin(6) * t766 - t682, -pkin(6) * t682, t621, t587, t638, t620, t639, t651, t827, t826, t829, -pkin(6) * t559 + t832, t621, t587, t638, t620, t639, t651, t830, t828, t831, -pkin(6) * t545 + t855; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t801, 0, 0, 0, t746, 0, -g(3), 0, -t779, -t770, -t784, t779, t868, -qJDD(3), t803, t835, t920, -t922, t905, -t709, -t679, -t905, t675, -t789, t833, t847, t879, t859, t905, -t709, -t679, -t905, t675, -t789, t934, -t626 - t673 + t743 - t825, -t583 - t875, t846; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t801, qJDD(1), 0, 0, 0, t742, g(3), 0, 0, t735, t713, t723, t734, t721, -t761, pkin(6) * t726 - t841, pkin(6) * t729 - t840, t662, pkin(6) * t683 + t921, t619, t585, t636, t618, t637, t650, t815, t814, t817, pkin(6) * t560 - t811, t619, t585, t636, t618, t637, t650, t818, t816, t819, pkin(6) * t546 - t813; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t764, -t763, t772, t861, t775, -t861, 0, -t733, -t715, 0, t666, t630, t686, t664, t687, t701, t635, t643, t570, -pkin(7) * t591, t666, t630, t686, t664, t687, t701, t572, t574, t549, t544; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t860, t765, t777, t822, t771, -t860, t733, 0, -t716, 0, t665, t628, t684, t663, t685, t700, t604, t605, t566, t581, t665, t628, t684, t663, t685, t700, t565, t567, t547, t537; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t779, t770, t784, -t779, -t868, qJDD(3), t715, t716, 0, 0, -t905, t709, t679, t905, -t675, t789, -t842, -t862, t624, t590, -t905, t709, t679, t905, -t675, t789, t806, t812, t875, t878; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t698, -t674, t932, -t904, t736, t904, 0, -t693, t644, 0, t698, -t674, t932, -t904, t736, t904, -qJ(5) * t932, t610, t580, qJ(5) * t594; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t741, t933, t737, -t824, t707, -t741, t693, 0, t645, 0, t741, t933, t737, -t824, t707, -t741, t589, t648, t575, t569; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t905, t709, t679, t905, -t675, t789, -t644, -t645, 0, 0, -t905, t709, t679, t905, -t675, t789, t807, t821, -t669, -t593; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t698, -t674, t932, -t904, t736, t904, 0, -t616, t594, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t741, t933, t737, -t824, t707, -t741, t616, 0, t597, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t905, t709, t679, t905, -t675, t789, -t594, -t597, 0, 0;];
m_new_reg = t1;