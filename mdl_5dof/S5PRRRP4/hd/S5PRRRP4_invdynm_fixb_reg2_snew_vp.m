% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5PRRRP4
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d3,d4,theta1]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 16:46
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5PRRRP4_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRRRP4_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRRRP4_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5PRRRP4_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5PRRRP4_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5PRRRP4_invdynm_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 16:46:33
% EndTime: 2019-12-05 16:46:40
% DurationCPUTime: 8.25s
% Computational Cost: add. (21041->458), mult. (29671->531), div. (0->0), fcn. (17939->8), ass. (0->302)
t826 = qJD(4) ^ 2;
t810 = qJD(2) + qJD(3);
t808 = t810 ^ 2;
t820 = sin(qJ(4));
t813 = t820 ^ 2;
t901 = t813 * t808;
t790 = t826 + t901;
t823 = cos(qJ(4));
t795 = t820 * t808 * t823;
t784 = qJDD(4) - t795;
t882 = t823 * t784;
t738 = -t820 * t790 + t882;
t869 = qJD(4) * t810;
t800 = t823 * t869;
t809 = qJDD(2) + qJDD(3);
t891 = t820 * t809;
t767 = 0.2e1 * t800 + t891;
t821 = sin(qJ(3));
t824 = cos(qJ(3));
t683 = t821 * t738 + t824 * t767;
t686 = t824 * t738 - t821 * t767;
t822 = sin(qJ(2));
t825 = cos(qJ(2));
t635 = t822 * t683 - t825 * t686;
t892 = t820 * t784;
t732 = t823 * t790 + t892;
t817 = sin(pkin(8));
t818 = cos(pkin(8));
t955 = qJ(1) * (t818 * t635 - t817 * t732);
t954 = qJ(1) * (t817 * t635 + t818 * t732);
t631 = t825 * t683 + t822 * t686;
t953 = pkin(1) * t631;
t952 = pkin(5) * t631;
t951 = -pkin(1) * t732 - pkin(5) * t635;
t799 = t820 * t869;
t881 = t823 * t809;
t769 = -0.2e1 * t799 + t881;
t884 = t823 * t769;
t895 = t820 * t767;
t705 = -t884 + t895;
t814 = t823 ^ 2;
t777 = (t813 - t814) * t808;
t672 = t821 * t705 + t824 * t777;
t674 = t824 * t705 - t821 * t777;
t613 = t822 * t672 - t825 * t674;
t885 = t823 * t767;
t894 = t820 * t769;
t702 = t885 + t894;
t950 = t817 * t613 - t818 * t702;
t949 = t818 * t613 + t817 * t702;
t900 = t814 * t808;
t792 = -t826 + t900;
t736 = -t823 * t792 + t892;
t877 = t824 * t809;
t697 = t821 * t736 + t823 * t877;
t700 = t824 * t736 - t821 * t881;
t651 = t822 * t697 - t825 * t700;
t728 = t820 * t792 + t882;
t946 = t817 * t651 - t818 * t728;
t945 = t818 * t651 + t817 * t728;
t944 = pkin(2) * t683;
t943 = pkin(6) * t683;
t942 = -pkin(2) * t732 + pkin(6) * t686;
t612 = t825 * t672 + t822 * t674;
t649 = t825 * t697 + t822 * t700;
t887 = t821 * t809;
t772 = t824 * t808 + t887;
t775 = t821 * t808 - t877;
t709 = t825 * t772 - t822 * t775;
t788 = t817 * g(1) - t818 * g(2);
t727 = pkin(6) * t772 - t824 * t788;
t925 = pkin(6) * t775 - t821 * t788;
t641 = pkin(5) * t709 + t825 * t727 - t822 * t925;
t714 = t822 * t772 + t825 * t775;
t941 = pkin(5) * t714 + t822 * t727 + t825 * t925;
t789 = t818 * g(1) + t817 * g(2);
t815 = g(3) - qJDD(1);
t755 = -t825 * t789 - t822 * t815;
t827 = qJD(2) ^ 2;
t752 = -t827 * pkin(2) + t755;
t754 = -t822 * t789 + t825 * t815;
t833 = qJDD(2) * pkin(2) - t754;
t678 = t821 * t752 - t824 * t833;
t679 = t824 * t752 + t821 * t833;
t857 = t821 * t678 + t824 * t679;
t623 = t824 * t678 - t821 * t679;
t886 = t822 * t623;
t938 = t825 * t857 + t886;
t876 = t825 * t623;
t583 = -t822 * t857 + t876;
t935 = pkin(3) * t732;
t934 = pkin(7) * t732;
t667 = -t808 * pkin(3) + t809 * pkin(7) + t679;
t781 = t823 * t788;
t843 = pkin(4) * t823 + qJ(5) * t820;
t903 = t843 * t808;
t627 = -qJDD(4) * pkin(4) - t826 * qJ(5) + (t667 - t903) * t820 + qJDD(5) + t781;
t783 = qJDD(4) + t795;
t793 = -t826 - t900;
t927 = pkin(4) * t783 + qJ(5) * t793 - t627;
t768 = t800 + t891;
t926 = t768 + t800;
t924 = -pkin(3) * t767 - pkin(7) * t738;
t868 = (qJD(5) * qJD(4));
t806 = 2 * t868;
t659 = t823 * t667 - t820 * t788;
t840 = -t826 * pkin(4) + qJDD(4) * qJ(5) - t823 * t903 + t659;
t625 = t806 + t840;
t870 = t813 + t814;
t776 = t870 * t808;
t610 = pkin(4) * t776 + t625;
t615 = qJ(5) * t776 + t627;
t921 = -t823 * t610 - t820 * t615;
t658 = t820 * t667 + t781;
t595 = t820 * t658 + t823 * t659;
t778 = t818 * t788;
t920 = -t817 * t789 + t778;
t587 = t823 * t625 + t820 * t627;
t666 = -t809 * pkin(3) - t808 * pkin(7) + t678;
t853 = -t799 + t881;
t831 = -t853 * pkin(4) - t926 * qJ(5) + t666;
t902 = t810 * t820;
t620 = (pkin(4) * qJD(4) - (2 * qJD(5))) * t902 + t831;
t566 = t821 * t587 - t824 * t620;
t830 = pkin(7) * t587 + (-pkin(3) - t843) * t620;
t919 = pkin(2) * t566 + t830;
t893 = t820 * t783;
t735 = t823 * t793 - t893;
t682 = t821 * t735 + t824 * t769;
t685 = t824 * t735 - t821 * t769;
t630 = t825 * t682 + t822 * t685;
t917 = pkin(1) * t630;
t915 = pkin(2) * t623;
t883 = t823 * t783;
t729 = t820 * t793 + t883;
t914 = pkin(3) * t729;
t911 = pkin(5) * t630;
t771 = t870 * t809;
t708 = t821 * t771 + t824 * t776;
t712 = t824 * t771 - t821 * t776;
t660 = t825 * t708 + t822 * t712;
t910 = pkin(5) * t660;
t909 = pkin(6) * t682;
t908 = pkin(6) * t708;
t907 = pkin(7) * t729;
t633 = -t822 * t682 + t825 * t685;
t906 = qJ(1) * (t817 * t633 - t818 * t729);
t661 = -t822 * t708 + t825 * t712;
t905 = qJ(1) * t661;
t899 = t817 * t788;
t897 = t817 * t815;
t896 = t818 * t815;
t662 = t820 * t666;
t663 = t823 * t666;
t874 = -pkin(1) * t729 + pkin(5) * t633;
t873 = -pkin(3) * t666 + pkin(7) * t595;
t872 = pkin(3) * t769 + pkin(7) * t735;
t871 = pkin(3) * t776 + pkin(7) * t771;
t865 = t662 + t924;
t864 = -t663 + t872;
t863 = -pkin(2) * t729 + pkin(6) * t685;
t845 = -pkin(2) * t772 - t679;
t636 = pkin(1) * t709 - t845;
t862 = qJ(1) * t714 + t636;
t837 = -pkin(2) * t775 - t678;
t637 = pkin(1) * t714 - t837;
t861 = -qJ(1) * t709 + t637;
t786 = t822 * qJDD(2) + t825 * t827;
t716 = pkin(1) * t786 + t755;
t787 = t825 * qJDD(2) - t822 * t827;
t860 = qJ(1) * t787 - t716;
t717 = -pkin(1) * t787 + t754;
t859 = qJ(1) * t786 - t717;
t856 = t822 * t754 + t825 * t755;
t854 = -t818 * t789 - t899;
t852 = t821 * t795;
t851 = t824 * t795;
t850 = t871 - t921;
t849 = t871 + t595;
t681 = pkin(2) * t682;
t848 = t681 + t864;
t579 = t821 * t595 - t824 * t666;
t846 = pkin(2) * t579 + t873;
t844 = -pkin(4) * t627 + qJ(5) * t625;
t842 = pkin(4) * t820 - qJ(5) * t823;
t750 = pkin(5) * t786 - t825 * t788;
t841 = -pkin(5) * t787 - t822 * t788;
t594 = t823 * t658 - t820 * t659;
t690 = t825 * t754 - t822 * t755;
t707 = pkin(2) * t708;
t839 = -pkin(1) * t660 - t707 - t871;
t838 = t865 - t944;
t829 = 0.2e1 * qJD(5) * t902 - t831;
t602 = -pkin(4) * t799 + qJ(5) * t767 + t829;
t836 = pkin(4) * t885 + t820 * t602 - t924;
t603 = (t769 - t799) * pkin(4) + t829;
t835 = qJ(5) * t894 + t823 * t603 + t872;
t834 = t681 + t835;
t832 = t836 + t944;
t828 = pkin(4) * t790 + qJ(5) * t784 + t840;
t791 = -t826 + t901;
t785 = pkin(1) * t788;
t764 = t842 * t809;
t763 = t870 * t869;
t746 = t821 * qJDD(4) + t824 * t763;
t745 = -t824 * qJDD(4) + t821 * t763;
t741 = t823 * t768 - t813 * t869;
t740 = -t814 * t869 - t820 * t853;
t737 = t820 * t791 + t883;
t731 = -t823 * t791 + t893;
t719 = t926 * t820;
t718 = t820 * t800 - t823 * t853;
t706 = pkin(6) * t712;
t701 = t824 * t737 + t820 * t887;
t698 = t821 * t737 - t820 * t877;
t695 = t824 * t741 - t852;
t694 = t824 * t740 + t852;
t693 = t821 * t741 + t851;
t692 = t821 * t740 - t851;
t676 = -t822 * t745 + t825 * t746;
t675 = t825 * t745 + t822 * t746;
t670 = pkin(5) * t856 + t785;
t669 = t818 * t676;
t668 = t817 * t676;
t657 = pkin(5) * t661;
t654 = t818 * t905;
t653 = -t822 * t698 + t825 * t701;
t650 = t825 * t698 + t822 * t701;
t647 = -t822 * t693 + t825 * t695;
t646 = -t822 * t692 + t825 * t694;
t645 = t825 * t693 + t822 * t695;
t644 = t825 * t692 + t822 * t694;
t643 = t663 + t934;
t642 = t662 - t907;
t629 = t659 + t935;
t628 = t658 - t914;
t618 = pkin(2) * t788 + pkin(6) * t857;
t617 = t818 * t653 + t817 * t731;
t616 = t817 * t653 - t818 * t731;
t607 = t818 * t647 + t817 * t719;
t606 = t818 * t646 - t817 * t718;
t605 = t817 * t647 - t818 * t719;
t604 = t817 * t646 + t818 * t718;
t598 = qJ(1) * (t818 * t633 + t817 * t729);
t597 = -t914 - t927;
t596 = -t828 - (2 * t868) - t935;
t591 = -pkin(4) * t895 + t823 * t602 - t934;
t590 = qJ(5) * t884 - t820 * t603 - t907;
t589 = t824 * t594 - t908;
t588 = t821 * t594 + t706;
t586 = t820 * t625 - t823 * t627;
t580 = t824 * t595 + t821 * t666;
t578 = -t820 * t610 + t823 * t615;
t577 = -t821 * t629 + t824 * t643 + t943;
t576 = -t821 * t628 + t824 * t642 - t909;
t575 = -t838 + t953;
t574 = -t848 - t917;
t573 = t824 * t629 + t821 * t643 - t942;
t572 = t824 * t628 + t821 * t642 + t863;
t571 = t839 - t595;
t570 = t824 * t578 - t821 * t764 - t908;
t569 = t821 * t578 + t824 * t764 + t706;
t568 = pkin(1) * t583 + t915;
t567 = t824 * t587 + t821 * t620;
t565 = -t832 - t953;
t564 = -t834 - t917;
t563 = t839 + t921;
t562 = t824 * t590 - t821 * t597 - t909;
t561 = t824 * t591 - t821 * t596 - t943;
t560 = t821 * t590 + t824 * t597 + t863;
t559 = t821 * t591 + t824 * t596 + t942;
t558 = -pkin(3) * t586 - t844;
t557 = -t822 * t579 + t825 * t580;
t556 = t825 * t579 + t822 * t580;
t555 = pkin(5) * t583 + pkin(6) * t876 - t822 * t618;
t554 = -pkin(7) * t586 + t620 * t842;
t553 = pkin(5) * t938 + pkin(6) * t886 + t825 * t618 + t785;
t552 = -t822 * t588 + t825 * t589 - t910;
t551 = t825 * t588 + t822 * t589 + t657;
t550 = -pkin(6) * t579 - (pkin(3) * t821 - pkin(7) * t824) * t594;
t549 = -t822 * t573 + t825 * t577 + t952;
t548 = -t822 * t572 + t825 * t576 - t911;
t547 = t825 * t573 + t822 * t577 - t951;
t546 = t825 * t572 + t822 * t576 + t874;
t545 = -t822 * t566 + t825 * t567;
t544 = t825 * t566 + t822 * t567;
t543 = -t822 * t569 + t825 * t570 - t910;
t542 = t825 * t569 + t822 * t570 + t657;
t541 = pkin(6) * t580 - (-pkin(3) * t824 - pkin(7) * t821 - pkin(2)) * t594;
t540 = -pkin(1) * t556 - t846;
t539 = -t822 * t560 + t825 * t562 - t911;
t538 = -t822 * t559 + t825 * t561 - t952;
t537 = t825 * t560 + t822 * t562 + t874;
t536 = t825 * t559 + t822 * t561 + t951;
t535 = -pkin(6) * t566 + t824 * t554 - t821 * t558;
t534 = -pkin(2) * t586 + pkin(6) * t567 + t821 * t554 + t824 * t558;
t533 = -pkin(1) * t544 - t919;
t532 = -pkin(5) * t556 - t822 * t541 + t825 * t550;
t531 = pkin(1) * t594 + pkin(5) * t557 + t825 * t541 + t822 * t550;
t530 = -pkin(5) * t544 - t822 * t534 + t825 * t535;
t529 = -pkin(1) * t586 + pkin(5) * t545 + t825 * t534 + t822 * t535;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t897, -t896, -t920, -qJ(1) * t920, 0, 0, t818 * t787, 0, -t818 * t786, t817 * qJDD(2), t859 * t817 + t818 * t841, t818 * t750 + t860 * t817, t818 * t690, -qJ(1) * (t817 * t856 + t778) - (t817 * pkin(1) - t818 * pkin(5)) * t690, 0, 0, -t818 * t714, 0, -t818 * t709, t817 * t809, -t861 * t817 + t818 * t941, t818 * t641 - t862 * t817, t818 * t583, t818 * t555 - t817 * t568 - qJ(1) * (t817 * t938 + t778), t607, t949, t617, t606, t945, t669, t818 * t548 - t817 * t574 - t906, t818 * t549 - t817 * t575 - t954, t818 * t552 + (-t571 - t905) * t817, t818 * t532 - t817 * t540 - qJ(1) * (t817 * t557 + t594 * t818), t607, t617, -t949, t669, -t945, t606, t818 * t539 - t817 * t564 - t906, t818 * t543 + (-t563 - t905) * t817, t818 * t538 - t817 * t565 + t954, t818 * t530 - t817 * t533 - qJ(1) * (t817 * t545 - t818 * t586); 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t896, -t897, t854, qJ(1) * t854, 0, 0, t817 * t787, 0, -t817 * t786, -t818 * qJDD(2), t817 * t841 - t859 * t818, t817 * t750 - t860 * t818, t817 * t690, qJ(1) * (t818 * t856 - t899) - (-t818 * pkin(1) - t817 * pkin(5)) * t690, 0, 0, -t817 * t714, 0, -t817 * t709, -t818 * t809, t817 * t941 + t861 * t818, t817 * t641 + t862 * t818, t817 * t583, t817 * t555 + t818 * t568 + qJ(1) * (t818 * t938 - t899), t605, t950, t616, t604, t946, t668, t817 * t548 + t818 * t574 + t598, t817 * t549 + t818 * t575 + t955, t817 * t552 + t818 * t571 + t654, t817 * t532 + t818 * t540 + qJ(1) * (t818 * t557 - t594 * t817), t605, t616, -t950, t668, -t946, t604, t817 * t539 + t818 * t564 + t598, t817 * t543 + t818 * t563 + t654, t817 * t538 + t818 * t565 - t955, t817 * t530 + t818 * t533 + qJ(1) * (t818 * t545 + t817 * t586); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t788, t789, 0, 0, 0, 0, t786, 0, t787, 0, -t750, t841, t856, t670, 0, 0, t709, 0, -t714, 0, -t641, t941, t938, t553, t645, -t612, t650, t644, -t649, t675, t546, t547, t551, t531, t645, t650, t612, t675, t649, t644, t537, t542, t536, t529; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t815, -t788, 0, 0, 0, t787, 0, -t786, 0, t841, t750, t690, pkin(5) * t690, 0, 0, -t714, 0, -t709, 0, t941, t641, t583, t555, t647, t613, t653, t646, t651, t676, t548, t549, t552, t532, t647, t653, -t613, t676, -t651, t646, t539, t543, t538, t530; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t815, 0, -t789, 0, 0, 0, 0, 0, 0, -qJDD(2), t717, t716, 0, pkin(1) * t690, 0, 0, 0, 0, 0, -t809, t637, t636, 0, t568, -t719, -t702, -t731, t718, -t728, 0, t574, t575, t571, t540, -t719, -t731, t702, 0, t728, t718, t564, t563, t565, t533; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t788, t789, 0, 0, 0, 0, t786, 0, t787, 0, -t750, t841, t856, t670, 0, 0, t709, 0, -t714, 0, -t641, t941, t938, t553, t645, -t612, t650, t644, -t649, t675, t546, t547, t551, t531, t645, t650, t612, t675, t649, t644, t537, t542, t536, t529; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), 0, -t827, 0, 0, -t788, t754, 0, 0, 0, -t775, 0, -t772, 0, t925, t727, t623, pkin(6) * t623, t695, -t674, t701, t694, -t700, t746, t576, t577, t589, t550, t695, t701, t674, t746, t700, t694, t562, t570, t561, t535; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t827, 0, qJDD(2), 0, t788, 0, t755, 0, 0, 0, t772, 0, -t775, 0, -t727, t925, t857, t618, t693, -t672, t698, t692, -t697, t745, t572, t573, t588, t541, t693, t698, t672, t745, t697, t692, t560, t569, t559, t534; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t754, -t755, 0, 0, 0, 0, 0, 0, 0, t809, t837, t845, 0, -t915, t719, t702, t731, -t718, t728, 0, t848, t838, t707 + t849, t846, t719, t731, -t702, 0, -t728, -t718, t834, t707 + t850, t832, t919; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t809, 0, -t808, 0, 0, -t788, t678, 0, t741, -t705, t737, t740, -t736, t763, t642, t643, t594, pkin(7) * t594, t741, t737, t705, t763, t736, t740, t590, t578, t591, t554; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t808, 0, t809, 0, t788, 0, t679, 0, t795, -t777, -t891, -t795, -t881, -qJDD(4), t628, t629, 0, pkin(3) * t594, t795, -t891, t777, -qJDD(4), t881, -t795, t597, t764, t596, t558; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t809, -t678, -t679, 0, 0, t719, t702, t731, -t718, t728, 0, t864, t865, t849, t873, t719, t731, -t702, 0, -t728, -t718, t835, t850, t836, t830; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t768, t769, t783, -t800, t792, t800, 0, t666, t658, 0, t768, t783, -t769, t800, -t792, -t800, qJ(5) * t769, t615, t602, -qJ(5) * t620; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t799, t767, -t791, t853, t784, -t799, -t666, 0, t659, 0, t799, -t791, -t767, -t799, -t784, t853, t603, t610, pkin(4) * t767, -pkin(4) * t620; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t795, t777, t891, t795, t881, qJDD(4), -t658, -t659, 0, 0, -t795, t891, -t777, qJDD(4), -t881, t795, t927, -t764, t806 + t828, t844; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t768, t783, -t769, t800, -t792, -t800, 0, t627, -t620, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t795, t891, -t777, qJDD(4), -t881, t795, -t627, 0, t625, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t799, t791, t767, t799, t784, -t853, t620, -t625, 0, 0;];
m_new_reg = t1;
