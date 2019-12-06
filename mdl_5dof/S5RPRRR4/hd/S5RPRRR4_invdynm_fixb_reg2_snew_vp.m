% Calculate inertial parameters regressor of inverse dynamics cutting torque vector with Newton-Euler for
% S5RPRRR4
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,d5,theta2]';
%
% Output:
% m_new_reg [(3*6)x(%Nl%*10)]
%   inertial parameter regressor of inverse dynamics cutting torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 18:15
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function m_new_reg = S5RPRRR4_invdynm_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRR4_invdynm_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRR4_invdynm_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRRR4_invdynm_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRRR4_invdynm_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRRR4_invdynm_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_m_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 18:14:51
% EndTime: 2019-12-05 18:15:03
% DurationCPUTime: 12.70s
% Computational Cost: add. (52284->423), mult. (74873->561), div. (0->0), fcn. (44118->10), ass. (0->288)
t806 = qJD(1) + qJD(3);
t802 = qJD(4) + t806;
t799 = t802 ^ 2;
t817 = cos(qJ(4));
t805 = qJDD(1) + qJDD(3);
t800 = qJDD(4) + t805;
t813 = sin(qJ(4));
t867 = t813 * t800;
t762 = t817 * t799 + t867;
t861 = t817 * t800;
t765 = t813 * t799 - t861;
t814 = sin(qJ(3));
t818 = cos(qJ(3));
t699 = t818 * t762 - t814 * t765;
t809 = g(1) - qJDD(2);
t739 = pkin(7) * t762 - t817 * t809;
t892 = pkin(7) * t765 - t813 * t809;
t642 = pkin(6) * t699 + t818 * t739 - t814 * t892;
t704 = t814 * t762 + t818 * t765;
t810 = sin(pkin(9));
t811 = cos(pkin(9));
t652 = t811 * t699 - t810 * t704;
t905 = pkin(6) * t704 + t814 * t739 + t818 * t892;
t582 = qJ(2) * t652 + t811 * t642 - t810 * t905;
t656 = t810 * t699 + t811 * t704;
t815 = sin(qJ(1));
t819 = cos(qJ(1));
t605 = t815 * t652 + t819 * t656;
t919 = qJ(2) * t656 + t810 * t642 + t811 * t905;
t931 = pkin(5) * t605 + t815 * t582 + t819 * t919;
t921 = t819 * t652 - t815 * t656;
t930 = pkin(5) * t921 + t819 * t582 - t815 * t919;
t793 = t819 * g(2) + t815 * g(3);
t779 = qJDD(1) * pkin(1) + t793;
t792 = t815 * g(2) - t819 * g(3);
t821 = qJD(1) ^ 2;
t780 = -t821 * pkin(1) + t792;
t722 = -t811 * t779 + t810 * t780;
t714 = qJDD(1) * pkin(2) - t722;
t723 = t810 * t779 + t811 * t780;
t715 = -t821 * pkin(2) + t723;
t667 = t814 * t714 + t818 * t715;
t804 = t806 ^ 2;
t661 = -t804 * pkin(3) + t667;
t666 = -t818 * t714 + t814 * t715;
t826 = t805 * pkin(3) - t666;
t615 = t813 * t661 - t817 * t826;
t616 = t817 * t661 + t813 * t826;
t848 = t813 * t615 + t817 * t616;
t571 = t817 * t615 - t813 * t616;
t859 = t818 * t571;
t547 = -t814 * t848 + t859;
t865 = t814 * t571;
t895 = t818 * t848 + t865;
t531 = t811 * t547 - t810 * t895;
t915 = t810 * t547 + t811 * t895;
t928 = t815 * t531 + t819 * t915;
t927 = t819 * t531 - t815 * t915;
t773 = t818 * t804 + t814 * t805;
t776 = t814 * t804 - t818 * t805;
t707 = t811 * t773 - t810 * t776;
t743 = pkin(6) * t773 - t818 * t809;
t893 = pkin(6) * t776 - t814 * t809;
t650 = qJ(2) * t707 + t811 * t743 - t810 * t893;
t711 = t810 * t773 + t811 * t776;
t662 = t815 * t707 + t819 * t711;
t904 = qJ(2) * t711 + t810 * t743 + t811 * t893;
t922 = pkin(5) * t662 + t815 * t650 + t819 * t904;
t906 = t819 * t707 - t815 * t711;
t920 = pkin(5) * t906 + t819 * t650 - t815 * t904;
t847 = t814 * t666 + t818 * t667;
t621 = t818 * t666 - t814 * t667;
t871 = t811 * t621;
t575 = -t810 * t847 + t871;
t872 = t810 * t621;
t894 = t811 * t847 + t872;
t914 = t815 * t575 + t819 * t894;
t913 = t819 * t575 - t815 * t894;
t846 = t810 * t722 + t811 * t723;
t671 = t811 * t722 - t810 * t723;
t857 = t819 * t671;
t897 = -t815 * t846 + t857;
t863 = t815 * t671;
t896 = t819 * t846 + t863;
t781 = t810 * qJDD(1) + t811 * t821;
t782 = t811 * qJDD(1) - t810 * t821;
t732 = t815 * t781 - t819 * t782;
t750 = qJ(2) * t781 - t811 * t809;
t831 = -qJ(2) * t782 - t810 * t809;
t890 = pkin(5) * t732 + t815 * t750 + t819 * t831;
t830 = t819 * t781 + t815 * t782;
t889 = pkin(5) * t830 + t819 * t750 - t815 * t831;
t613 = -t799 * pkin(4) + t800 * pkin(8) + t616;
t812 = sin(qJ(5));
t816 = cos(qJ(5));
t603 = t812 * t613 + t816 * t809;
t604 = t816 * t613 - t812 * t809;
t566 = t812 * t603 + t816 * t604;
t876 = pkin(1) * t809;
t875 = pkin(2) * t809;
t807 = t812 ^ 2;
t873 = t807 * t799;
t612 = -t800 * pkin(4) - t799 * pkin(8) + t615;
t609 = t812 * t612;
t787 = t816 * t799 * t812;
t777 = qJDD(5) + t787;
t870 = t812 * t777;
t778 = qJDD(5) - t787;
t869 = t812 * t778;
t868 = t812 * t800;
t610 = t816 * t612;
t862 = t816 * t778;
t794 = t816 * t800;
t568 = pkin(3) * t571;
t856 = -pkin(2) * t547 - t568;
t855 = -pkin(4) * t612 + pkin(8) * t566;
t808 = t816 ^ 2;
t854 = t807 + t808;
t853 = qJD(5) * t802;
t820 = qJD(5) ^ 2;
t784 = -t820 - t873;
t731 = -t812 * t784 - t862;
t791 = t816 * t853;
t755 = 0.2e1 * t791 + t868;
t852 = -pkin(4) * t755 + pkin(8) * t731 + t609;
t795 = t808 * t799;
t786 = -t795 - t820;
t729 = t816 * t786 - t870;
t849 = t812 * t853;
t758 = t794 - 0.2e1 * t849;
t851 = pkin(4) * t758 + pkin(8) * t729 - t610;
t554 = t813 * t566 - t817 * t612;
t850 = pkin(3) * t554 + t855;
t843 = t813 * t787;
t842 = t817 * t787;
t555 = t817 * t566 + t813 * t612;
t539 = t818 * t554 + t814 * t555;
t841 = pkin(2) * t539 + t850;
t761 = t854 * t800;
t766 = t795 + t873;
t840 = pkin(4) * t766 + pkin(8) * t761 + t566;
t680 = t813 * t731 - t817 * t755;
t839 = pkin(3) * t680 + t852;
t679 = t813 * t729 + t817 * t758;
t838 = pkin(3) * t679 + t851;
t788 = t815 * qJDD(1) + t819 * t821;
t837 = pkin(5) * t788 - t819 * g(1);
t836 = -pkin(3) * t765 - t615;
t835 = -pkin(2) * t776 - t666;
t698 = t813 * t761 + t817 * t766;
t834 = pkin(3) * t698 + t840;
t681 = t817 * t729 - t813 * t758;
t631 = t818 * t679 + t814 * t681;
t833 = pkin(2) * t631 + t838;
t682 = t817 * t731 + t813 * t755;
t632 = t818 * t680 + t814 * t682;
t832 = pkin(2) * t632 + t839;
t565 = t816 * t603 - t812 * t604;
t829 = t819 * t792 - t815 * t793;
t828 = -t815 * t792 - t819 * t793;
t827 = -pkin(2) * t704 + t836;
t702 = t817 * t761 - t813 * t766;
t658 = t818 * t698 + t814 * t702;
t825 = pkin(2) * t658 + t834;
t824 = -pkin(2) * t773 - t667;
t823 = -pkin(3) * t762 - t616;
t822 = -pkin(2) * t699 + t823;
t789 = -t819 * qJDD(1) + t815 * t821;
t785 = t795 - t820;
t783 = t820 - t873;
t769 = t816 * t777;
t768 = -pkin(5) * t789 + t815 * g(1);
t767 = -t795 + t873;
t757 = t794 - t849;
t756 = t791 + t868;
t751 = t854 * t853;
t735 = t813 * qJDD(5) + t817 * t751;
t734 = -t817 * qJDD(5) + t813 * t751;
t730 = -t812 * t783 + t769;
t728 = t816 * t785 - t869;
t727 = t816 * t784 - t869;
t726 = t816 * t783 + t870;
t725 = t812 * t786 + t769;
t724 = t812 * t785 + t862;
t721 = t816 * t756 - t807 * t853;
t720 = -t812 * t757 - t808 * t853;
t717 = (t756 + t791) * t812;
t716 = (t757 - t849) * t816;
t694 = pkin(1) * t782 - t722;
t693 = -pkin(1) * t781 - t723;
t692 = -t812 * t755 + t816 * t758;
t691 = t816 * t755 + t812 * t758;
t690 = t817 * t730 + t812 * t867;
t689 = t817 * t728 + t813 * t794;
t688 = t813 * t730 - t812 * t861;
t687 = t813 * t728 - t816 * t861;
t686 = t817 * t721 - t843;
t685 = t817 * t720 + t843;
t684 = t813 * t721 + t842;
t683 = t813 * t720 - t842;
t676 = -t814 * t734 + t818 * t735;
t675 = t818 * t734 + t814 * t735;
t674 = t817 * t692 + t813 * t767;
t673 = t813 * t692 - t817 * t767;
t668 = pkin(1) * t671;
t665 = qJ(2) * t846 + t876;
t659 = -t814 * t698 + t818 * t702;
t646 = -t814 * t688 + t818 * t690;
t645 = -t814 * t687 + t818 * t689;
t644 = t818 * t688 + t814 * t690;
t643 = t818 * t687 + t814 * t689;
t638 = -t814 * t684 + t818 * t686;
t637 = -t814 * t683 + t818 * t685;
t636 = t818 * t684 + t814 * t686;
t635 = t818 * t683 + t814 * t685;
t634 = -t814 * t680 + t818 * t682;
t633 = -t814 * t679 + t818 * t681;
t628 = -pkin(1) * t711 + t835;
t627 = -pkin(1) * t707 + t824;
t626 = -t810 * t675 + t811 * t676;
t625 = t811 * t675 + t810 * t676;
t624 = -t814 * t673 + t818 * t674;
t623 = t818 * t673 + t814 * t674;
t618 = pkin(2) * t621;
t617 = pkin(6) * t847 + t875;
t608 = -t810 * t658 + t811 * t659;
t607 = t811 * t658 + t810 * t659;
t600 = -t810 * t644 + t811 * t646;
t599 = -t810 * t643 + t811 * t645;
t598 = t811 * t644 + t810 * t646;
t597 = t811 * t643 + t810 * t645;
t596 = -t810 * t636 + t811 * t638;
t595 = -t810 * t635 + t811 * t637;
t594 = t811 * t636 + t810 * t638;
t593 = t811 * t635 + t810 * t637;
t592 = -pkin(8) * t727 + t610;
t591 = -pkin(8) * t725 + t609;
t590 = -pkin(4) * t727 + t604;
t589 = -pkin(4) * t725 + t603;
t588 = -t810 * t632 + t811 * t634;
t587 = -t810 * t631 + t811 * t633;
t586 = t811 * t632 + t810 * t634;
t585 = t811 * t631 + t810 * t633;
t584 = -t810 * t623 + t811 * t624;
t583 = t811 * t623 + t810 * t624;
t578 = -pkin(1) * t656 + t827;
t577 = -pkin(1) * t652 + t822;
t567 = pkin(3) * t809 + pkin(7) * t848;
t562 = -pkin(7) * t698 + t817 * t565;
t561 = pkin(7) * t702 + t813 * t565;
t560 = -pkin(1) * t575 - t618;
t559 = -pkin(7) * t680 - t813 * t590 + t817 * t592;
t558 = -pkin(7) * t679 - t813 * t589 + t817 * t591;
t557 = -pkin(3) * t727 + pkin(7) * t682 + t817 * t590 + t813 * t592;
t556 = -pkin(3) * t725 + pkin(7) * t681 + t817 * t589 + t813 * t591;
t552 = pkin(6) * t871 + qJ(2) * t575 - t810 * t617;
t551 = pkin(6) * t872 + qJ(2) * t894 + t811 * t617 + t876;
t550 = pkin(1) * t586 + t832;
t549 = pkin(1) * t585 + t833;
t543 = pkin(1) * t607 + t825;
t542 = -pkin(6) * t658 - t814 * t561 + t818 * t562;
t541 = pkin(6) * t659 + t818 * t561 + t814 * t562;
t540 = -t814 * t554 + t818 * t555;
t537 = -pkin(6) * t632 - t814 * t557 + t818 * t559;
t536 = -pkin(6) * t631 - t814 * t556 + t818 * t558;
t535 = -pkin(2) * t727 + pkin(6) * t634 + t818 * t557 + t814 * t559;
t534 = -pkin(2) * t725 + pkin(6) * t633 + t818 * t556 + t814 * t558;
t533 = -pkin(7) * t554 - (pkin(4) * t813 - pkin(8) * t817) * t565;
t528 = pkin(6) * t547 + pkin(7) * t859 - t814 * t567;
t527 = pkin(6) * t895 + pkin(7) * t865 + t818 * t567 + t875;
t526 = pkin(7) * t555 - (-pkin(4) * t817 - pkin(8) * t813 - pkin(3)) * t565;
t525 = -qJ(2) * t607 - t810 * t541 + t811 * t542;
t524 = qJ(2) * t608 + t811 * t541 + t810 * t542;
t523 = -t810 * t539 + t811 * t540;
t522 = t811 * t539 + t810 * t540;
t521 = -pkin(1) * t531 + t856;
t520 = -qJ(2) * t586 - t810 * t535 + t811 * t537;
t519 = -qJ(2) * t585 - t810 * t534 + t811 * t536;
t518 = -pkin(1) * t727 + qJ(2) * t588 + t811 * t535 + t810 * t537;
t517 = -pkin(1) * t725 + qJ(2) * t587 + t811 * t534 + t810 * t536;
t516 = qJ(2) * t531 - t810 * t527 + t811 * t528;
t515 = qJ(2) * t915 + t811 * t527 + t810 * t528 + t876;
t514 = -pkin(6) * t539 - t814 * t526 + t818 * t533;
t513 = pkin(1) * t522 + t841;
t512 = pkin(2) * t565 + pkin(6) * t540 + t818 * t526 + t814 * t533;
t511 = -qJ(2) * t522 - t810 * t512 + t811 * t514;
t510 = pkin(1) * t565 + qJ(2) * t523 + t811 * t512 + t810 * t514;
t1 = [0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, qJDD(1), t793, -t792, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t694, t693, 0, -t668, 0, 0, 0, 0, 0, t805, t628, t627, 0, t560, 0, 0, 0, 0, 0, t800, t578, t577, 0, t521, t717, t691, t726, t716, t724, 0, t549, t550, t543, t513; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, -t788, 0, t789, 0, t837, t768, -t829, -pkin(5) * t829, 0, 0, -t830, 0, t732, 0, t889, -t890, -t896, -pkin(5) * t896 - qJ(2) * t863 - t819 * t665, 0, 0, -t906, 0, t662, 0, t920, -t922, -t914, -pkin(5) * t914 - t819 * t551 - t815 * t552, 0, 0, -t921, 0, t605, 0, t930, -t931, -t928, -pkin(5) * t928 - t819 * t515 - t815 * t516, -t819 * t594 - t815 * t596, -t819 * t583 - t815 * t584, -t819 * t598 - t815 * t600, -t819 * t593 - t815 * t595, -t819 * t597 - t815 * t599, -t819 * t625 - t815 * t626, -t815 * t519 - t819 * t517 - pkin(5) * (-t815 * t585 + t819 * t587), -t815 * t520 - t819 * t518 - pkin(5) * (-t815 * t586 + t819 * t588), -t815 * t525 - t819 * t524 - pkin(5) * (-t815 * t607 + t819 * t608), -t815 * t511 - t819 * t510 - pkin(5) * (-t815 * t522 + t819 * t523); 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, -t789, 0, -t788, 0, -t768, t837, t828, pkin(5) * t828, 0, 0, -t732, 0, -t830, 0, t890, t889, t897, pkin(5) * t897 + qJ(2) * t857 - t815 * t665, 0, 0, -t662, 0, -t906, 0, t922, t920, t913, pkin(5) * t913 - t815 * t551 + t819 * t552, 0, 0, -t605, 0, -t921, 0, t931, t930, t927, pkin(5) * t927 - t815 * t515 + t819 * t516, -t815 * t594 + t819 * t596, -t815 * t583 + t819 * t584, -t815 * t598 + t819 * t600, -t815 * t593 + t819 * t595, -t815 * t597 + t819 * t599, -t815 * t625 + t819 * t626, t819 * t519 - t815 * t517 + pkin(5) * (-t819 * t585 - t815 * t587), t819 * t520 - t815 * t518 + pkin(5) * (-t819 * t586 - t815 * t588), t819 * t525 - t815 * t524 + pkin(5) * (-t819 * t607 - t815 * t608), t819 * t511 - t815 * t510 + pkin(5) * (-t819 * t522 - t815 * t523); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t821, 0, 0, -g(1), -t793, 0, 0, 0, t782, 0, -t781, 0, t831, t750, t671, qJ(2) * t671, 0, 0, -t711, 0, -t707, 0, t904, t650, t575, t552, 0, 0, -t656, 0, -t652, 0, t919, t582, t531, t516, t596, t584, t600, t595, t599, t626, t519, t520, t525, t511; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t821, 0, qJDD(1), 0, g(1), 0, t792, 0, 0, 0, t781, 0, t782, 0, -t750, t831, t846, t665, 0, 0, t707, 0, -t711, 0, -t650, t904, t894, t551, 0, 0, t652, 0, -t656, 0, -t582, t919, t915, t515, t594, t583, t598, t593, t597, t625, t517, t518, t524, t510; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t793, -t792, 0, 0, 0, 0, 0, 0, 0, qJDD(1), t694, t693, 0, -t668, 0, 0, 0, 0, 0, t805, t628, t627, 0, t560, 0, 0, 0, 0, 0, t800, t578, t577, 0, t521, t717, t691, t726, t716, t724, 0, t549, t550, t543, t513; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), 0, -t821, 0, 0, -t809, t722, 0, 0, 0, -t776, 0, -t773, 0, t893, t743, t621, pkin(6) * t621, 0, 0, -t704, 0, -t699, 0, t905, t642, t547, t528, t638, t624, t646, t637, t645, t676, t536, t537, t542, t514; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t821, 0, qJDD(1), 0, t809, 0, t723, 0, 0, 0, t773, 0, -t776, 0, -t743, t893, t847, t617, 0, 0, t699, 0, -t704, 0, -t642, t905, t895, t527, t636, t623, t644, t635, t643, t675, t534, t535, t541, t512; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t722, -t723, 0, 0, 0, 0, 0, 0, 0, t805, t835, t824, 0, -t618, 0, 0, 0, 0, 0, t800, t827, t822, 0, t856, t717, t691, t726, t716, t724, 0, t833, t832, t825, t841; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t805, 0, -t804, 0, 0, -t809, t666, 0, 0, 0, -t765, 0, -t762, 0, t892, t739, t571, pkin(7) * t571, t686, t674, t690, t685, t689, t735, t558, t559, t562, t533; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t804, 0, t805, 0, t809, 0, t667, 0, 0, 0, t762, 0, -t765, 0, -t739, t892, t848, t567, t684, t673, t688, t683, t687, t734, t556, t557, t561, t526; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t805, -t666, -t667, 0, 0, 0, 0, 0, 0, 0, t800, t836, t823, 0, -t568, t717, t691, t726, t716, t724, 0, t838, t839, t834, t850; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t800, 0, -t799, 0, 0, -t809, t615, 0, t721, t692, t730, t720, t728, t751, t591, t592, t565, pkin(8) * t565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t799, 0, t800, 0, t809, 0, t616, 0, t787, -t767, -t868, -t787, -t794, -qJDD(5), t589, t590, 0, pkin(4) * t565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t800, -t615, -t616, 0, 0, t717, t691, t726, t716, t724, 0, t851, t852, t840, t855; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t756, t758, t777, -t791, t785, t791, 0, t612, t603, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t849, t755, t783, t757, t778, -t849, -t612, 0, t604, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t787, t767, t868, t787, t794, qJDD(5), -t603, -t604, 0, 0;];
m_new_reg = t1;