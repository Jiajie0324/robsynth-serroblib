% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPRRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-06 01:16
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPRRRP2_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP2_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP2_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRRP2_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRRP2_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP2_invdynB_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-06 01:15:24
% EndTime: 2019-05-06 01:15:50
% DurationCPUTime: 20.41s
% Computational Cost: add. (113387->733), mult. (222643->1063), div. (0->0), fcn. (153110->10), ass. (0->525)
t840 = sin(qJ(4));
t841 = sin(qJ(3));
t891 = qJD(1) * qJD(3);
t824 = t841 * t891;
t845 = cos(qJ(3));
t889 = t845 * qJDD(1);
t796 = -t824 + t889;
t787 = -qJDD(4) + t796;
t844 = cos(qJ(4));
t896 = qJD(1) * t841;
t790 = qJD(3) * t840 + t844 * t896;
t868 = qJD(3) * t844 - t840 * t896;
t859 = t868 * t790;
t964 = -t787 + t859;
t970 = t840 * t964;
t969 = t844 * t964;
t842 = sin(qJ(1));
t846 = cos(qJ(1));
t808 = g(1) * t846 + g(2) * t842;
t847 = qJD(1) ^ 2;
t792 = -pkin(1) * t847 - t808;
t835 = sin(pkin(10));
t836 = cos(pkin(10));
t807 = g(1) * t842 - t846 * g(2);
t858 = qJDD(1) * pkin(1) + t807;
t745 = t836 * t792 + t835 * t858;
t723 = -pkin(2) * t847 + qJDD(1) * pkin(7) + t745;
t948 = pkin(3) * t845;
t864 = -pkin(8) * t841 - t948;
t793 = t864 * qJD(1);
t898 = g(3) - qJDD(2);
t823 = t845 * t898;
t952 = qJD(3) ^ 2;
t677 = (qJD(1) * t793 + t723) * t841 - qJDD(3) * pkin(3) - t952 * pkin(8) + t823;
t895 = qJD(1) * t845;
t819 = -qJD(4) + t895;
t763 = -pkin(4) * t819 - pkin(9) * t790;
t881 = t845 * t891;
t890 = qJDD(1) * t841;
t795 = t881 + t890;
t870 = -t844 * qJDD(3) + t840 * t795;
t855 = qJD(4) * t790 + t870;
t865 = t868 ^ 2;
t604 = t855 * pkin(4) - t865 * pkin(9) + t790 * t763 + t677;
t744 = t835 * t792 - t836 * t858;
t873 = t744 * t835 + t836 * t745;
t675 = t744 * t836 - t745 * t835;
t918 = t675 * t842;
t616 = t846 * t873 + t918;
t917 = t675 * t846;
t968 = -t842 * t873 + t917;
t798 = qJDD(1) * t835 + t836 * t847;
t772 = -qJ(2) * t798 + t836 * t898;
t799 = qJDD(1) * t836 - t835 * t847;
t953 = -qJ(2) * t799 - t835 * t898;
t957 = t846 * t798 + t799 * t842;
t967 = -pkin(6) * t957 + t772 * t846 + t842 * t953;
t747 = -t798 * t842 + t846 * t799;
t966 = -pkin(6) * t747 - t772 * t842 + t846 * t953;
t781 = -qJDD(5) + t787;
t839 = sin(qJ(5));
t843 = cos(qJ(5));
t741 = t790 * t839 - t843 * t868;
t743 = t843 * t790 + t839 * t868;
t910 = t741 * t743;
t872 = t781 + t910;
t961 = t872 * pkin(5);
t736 = t868 * qJD(4) + t840 * qJDD(3) + t844 * t795;
t874 = t839 * t736 + t843 * t855;
t644 = -qJD(5) * t743 - t874;
t810 = -qJD(5) + t819;
t707 = -pkin(5) * t810 - qJ(6) * t743;
t739 = t741 ^ 2;
t533 = -t644 * pkin(5) - t739 * qJ(6) + t743 * t707 + qJDD(6) + t604;
t920 = t872 * t839;
t919 = t872 * t843;
t645 = -t741 * qJD(5) + t843 * t736 - t839 * t855;
t715 = t741 * t810;
t958 = t715 + t645;
t774 = t868 * t819;
t698 = -t736 - t774;
t740 = t743 ^ 2;
t809 = t810 ^ 2;
t700 = -t740 - t809;
t660 = t781 - t910;
t922 = t660 * t839;
t625 = t700 * t843 + t922;
t921 = t660 * t843;
t626 = -t700 * t839 + t921;
t558 = t625 * t844 + t626 * t840;
t956 = -pkin(3) * t558 - pkin(4) * t625;
t667 = -t809 - t739;
t598 = t667 * t839 - t919;
t599 = t667 * t843 + t920;
t538 = t598 * t844 + t599 * t840;
t955 = -pkin(3) * t538 - pkin(4) * t598;
t609 = (qJD(5) + t810) * t743 + t874;
t693 = (qJD(4) + t819) * t790 + t870;
t786 = t790 ^ 2;
t816 = t819 ^ 2;
t949 = pkin(3) * t841;
t613 = t715 - t645;
t549 = -t609 * t839 + t613 * t843;
t551 = -t609 * t843 - t613 * t839;
t497 = -t549 * t840 + t551 * t844;
t649 = -t739 - t740;
t473 = t497 * t845 + t649 * t841;
t495 = t549 * t844 + t551 * t840;
t435 = t473 * t835 - t495 * t836;
t436 = t473 * t836 + t495 * t835;
t394 = t435 * t846 + t436 * t842;
t945 = pkin(6) * t394;
t539 = -t598 * t840 + t599 * t844;
t608 = (qJD(5) - t810) * t743 + t874;
t508 = t539 * t845 + t608 * t841;
t464 = t508 * t835 - t538 * t836;
t465 = t508 * t836 + t538 * t835;
t414 = t464 * t846 + t465 * t842;
t944 = pkin(6) * t414;
t559 = -t625 * t840 + t626 * t844;
t518 = t559 * t845 + t841 * t958;
t476 = t518 * t835 - t558 * t836;
t477 = t518 * t836 + t558 * t835;
t420 = t476 * t846 + t477 * t842;
t943 = pkin(6) * t420;
t472 = t497 * t841 - t649 * t845;
t942 = pkin(7) * t472;
t507 = t539 * t841 - t608 * t845;
t941 = pkin(7) * t507;
t517 = t559 * t841 - t845 * t958;
t940 = pkin(7) * t517;
t939 = pkin(8) * t495;
t938 = pkin(8) * t538;
t937 = pkin(8) * t558;
t936 = pkin(9) * t549;
t935 = pkin(9) * t598;
t934 = pkin(9) * t625;
t933 = qJ(2) * t435;
t932 = qJ(2) * t464;
t931 = qJ(2) * t476;
t722 = -qJDD(1) * pkin(2) - t847 * pkin(7) + t744;
t861 = -t796 + t824;
t862 = t795 + t881;
t666 = pkin(3) * t861 - pkin(8) * t862 + t722;
t704 = t845 * t723 - t841 * t898;
t678 = -pkin(3) * t952 + qJDD(3) * pkin(8) + t793 * t895 + t704;
t606 = -t844 * t666 + t840 * t678;
t568 = pkin(4) * t964 + pkin(9) * t698 - t606;
t607 = t840 * t666 + t844 * t678;
t573 = -pkin(4) * t865 - pkin(9) * t855 + t819 * t763 + t607;
t504 = -t843 * t568 + t839 * t573;
t505 = t839 * t568 + t843 * t573;
t453 = -t504 * t843 + t505 * t839;
t928 = t453 * t840;
t927 = t453 * t844;
t883 = t645 * qJ(6) + t504;
t854 = qJ(6) * t715 - t883;
t894 = qJD(6) * t743;
t470 = t854 - 0.2e1 * t894 - t961;
t926 = t470 * t839;
t925 = t470 * t843;
t924 = t604 * t839;
t923 = t604 * t843;
t916 = t677 * t840;
t915 = t677 * t844;
t718 = t787 + t859;
t914 = t718 * t840;
t913 = t718 * t844;
t912 = t722 * t841;
t911 = t722 * t845;
t818 = t845 * t847 * t841;
t805 = -t818 + qJDD(3);
t906 = t805 * t841;
t905 = t805 * t845;
t806 = qJDD(3) + t818;
t904 = t806 * t841;
t903 = t810 * t839;
t902 = t810 * t843;
t831 = t841 ^ 2;
t901 = t831 * t847;
t900 = t840 * t790;
t899 = t844 * t790;
t832 = t845 ^ 2;
t897 = t831 + t832;
t888 = t841 * t910;
t887 = t845 * t910;
t886 = pkin(1) * t435 - pkin(2) * t495 + pkin(7) * t473;
t885 = pkin(1) * t464 - pkin(2) * t538 + pkin(7) * t508;
t884 = pkin(1) * t476 - pkin(2) * t558 + pkin(7) * t518;
t880 = -pkin(1) * t472 + qJ(2) * t436;
t879 = -pkin(1) * t507 + qJ(2) * t465;
t878 = -pkin(1) * t517 + qJ(2) * t477;
t877 = -pkin(4) * t649 + pkin(9) * t551;
t876 = -pkin(4) * t608 + pkin(9) * t599;
t875 = -pkin(4) * t958 + pkin(9) * t626;
t454 = t504 * t839 + t843 * t505;
t702 = t723 * t841 + t823;
t648 = t702 * t841 + t845 * t704;
t756 = -t807 * t842 - t846 * t808;
t867 = t835 * t818;
t866 = t836 * t818;
t696 = -t774 + t736;
t458 = -pkin(3) * t495 - pkin(4) * t549;
t802 = qJDD(1) * t846 - t842 * t847;
t863 = -pkin(6) * t802 - g(3) * t842;
t545 = -t606 * t844 + t607 * t840;
t546 = t606 * t840 + t607 * t844;
t647 = t702 * t845 - t704 * t841;
t755 = t807 * t846 - t808 * t842;
t857 = t841 * t859;
t856 = t845 * t859;
t853 = t644 * qJ(6) - 0.2e1 * qJD(6) * t741 + t810 * t707 + t505;
t852 = -pkin(2) * t472 + pkin(3) * t649 - pkin(8) * t497;
t851 = -pkin(2) * t507 + pkin(3) * t608 - pkin(8) * t539;
t850 = -pkin(2) * t517 + pkin(3) * t958 - pkin(8) * t559;
t829 = t832 * t847;
t815 = -t829 - t952;
t814 = t829 - t952;
t813 = -t901 - t952;
t812 = -t901 + t952;
t804 = t829 - t901;
t803 = t829 + t901;
t801 = qJDD(1) * t842 + t846 * t847;
t800 = t897 * qJDD(1);
t797 = -0.2e1 * t824 + t889;
t794 = 0.2e1 * t881 + t890;
t789 = t845 * t806;
t788 = t897 * t891;
t775 = -pkin(6) * t801 + g(3) * t846;
t769 = -t786 + t816;
t768 = t865 - t816;
t767 = t795 * t845 - t831 * t891;
t766 = -t796 * t841 - t832 * t891;
t765 = qJDD(3) * t835 + t788 * t836;
t764 = -qJDD(3) * t836 + t788 * t835;
t762 = -t813 * t841 - t905;
t761 = -t812 * t841 + t789;
t760 = t815 * t845 - t904;
t759 = t814 * t845 - t906;
t758 = t813 * t845 - t906;
t757 = t815 * t841 + t789;
t754 = -t786 + t865;
t753 = -t786 - t816;
t752 = t800 * t836 - t803 * t835;
t751 = t800 * t835 + t803 * t836;
t746 = -t794 * t841 + t797 * t845;
t738 = -t816 - t865;
t735 = 0.2e1 * t894;
t732 = t767 * t836 - t867;
t731 = t766 * t836 + t867;
t730 = t767 * t835 + t866;
t729 = t766 * t835 - t866;
t728 = t761 * t836 + t835 * t890;
t727 = t759 * t836 + t835 * t889;
t726 = t761 * t835 - t836 * t890;
t725 = t759 * t835 - t836 * t889;
t717 = t865 + t786;
t713 = -t740 + t809;
t712 = t739 - t809;
t711 = t762 * t836 + t794 * t835;
t710 = t760 * t836 - t797 * t835;
t709 = t762 * t835 - t794 * t836;
t708 = t760 * t835 + t797 * t836;
t706 = (-t844 * t868 - t900) * t819;
t705 = (t840 * t868 - t899) * t819;
t703 = t746 * t836 - t804 * t835;
t701 = t746 * t835 + t804 * t836;
t694 = (-qJD(4) + t819) * t790 - t870;
t692 = t736 * t844 + t819 * t900;
t691 = -t736 * t840 + t819 * t899;
t690 = t774 * t844 + t840 * t855;
t689 = -t774 * t840 + t844 * t855;
t688 = -t751 * t842 + t752 * t846;
t687 = t751 * t846 + t752 * t842;
t686 = t706 * t845 - t787 * t841;
t685 = -t740 + t739;
t684 = -pkin(7) * t758 + t911;
t683 = t768 * t844 + t914;
t682 = -t769 * t840 + t969;
t681 = -pkin(7) * t757 + t912;
t680 = -t768 * t840 + t913;
t679 = -t769 * t844 - t970;
t671 = -pkin(2) * t758 + t704;
t670 = -pkin(2) * t757 + t702;
t669 = -t753 * t840 + t913;
t668 = t753 * t844 + t914;
t665 = pkin(1) * t898 + qJ(2) * t873;
t664 = t738 * t844 - t970;
t663 = t738 * t840 + t969;
t657 = (t741 * t843 - t743 * t839) * t810;
t656 = (t741 * t839 + t743 * t843) * t810;
t655 = t845 * t692 - t857;
t654 = t845 * t690 + t857;
t653 = -t709 * t842 + t711 * t846;
t652 = -t708 * t842 + t710 * t846;
t651 = t709 * t846 + t711 * t842;
t650 = t708 * t846 + t710 * t842;
t640 = -t693 * t844 - t698 * t840;
t639 = t694 * t844 - t696 * t840;
t638 = -t693 * t840 + t698 * t844;
t637 = -t694 * t840 - t696 * t844;
t636 = t686 * t836 - t705 * t835;
t635 = t686 * t835 + t705 * t836;
t634 = t683 * t845 - t693 * t841;
t633 = t682 * t845 - t698 * t841;
t632 = t712 * t843 + t922;
t631 = -t713 * t839 - t919;
t630 = t712 * t839 - t921;
t629 = t713 * t843 - t920;
t628 = t669 * t845 + t696 * t841;
t627 = t669 * t841 - t696 * t845;
t624 = -qJ(2) * t751 + t647 * t836;
t623 = qJ(2) * t752 + t647 * t835;
t621 = t664 * t845 - t694 * t841;
t620 = t664 * t841 + t694 * t845;
t619 = t648 * t836 + t722 * t835;
t618 = t648 * t835 - t722 * t836;
t617 = -pkin(8) * t668 + t915;
t614 = t639 * t845 - t754 * t841;
t605 = -pkin(8) * t663 + t916;
t603 = t645 * t843 + t743 * t903;
t602 = t645 * t839 - t743 * t902;
t601 = -t644 * t839 - t741 * t902;
t600 = t644 * t843 - t741 * t903;
t597 = t655 * t836 - t691 * t835;
t596 = t654 * t836 - t689 * t835;
t595 = t655 * t835 + t691 * t836;
t594 = t654 * t835 + t689 * t836;
t592 = t640 * t845 - t717 * t841;
t591 = t640 * t841 + t717 * t845;
t590 = -t656 * t840 + t657 * t844;
t589 = -t656 * t844 - t657 * t840;
t588 = -qJ(2) * t709 - t671 * t835 + t684 * t836;
t587 = -qJ(2) * t708 - t670 * t835 + t681 * t836;
t586 = t634 * t836 - t680 * t835;
t585 = t633 * t836 - t679 * t835;
t584 = t634 * t835 + t680 * t836;
t583 = t633 * t835 + t679 * t836;
t582 = t590 * t845 - t781 * t841;
t581 = t590 * t841 + t781 * t845;
t580 = t628 * t836 + t668 * t835;
t579 = t628 * t835 - t668 * t836;
t578 = -pkin(1) * t758 + qJ(2) * t711 + t671 * t836 + t684 * t835;
t577 = -pkin(1) * t757 + qJ(2) * t710 + t670 * t836 + t681 * t835;
t576 = t621 * t836 + t663 * t835;
t575 = t621 * t835 - t663 * t836;
t574 = -pkin(3) * t668 + t607;
t572 = -pkin(5) * t958 + qJ(6) * t660;
t571 = -pkin(3) * t663 + t606;
t565 = -t630 * t840 + t632 * t844;
t564 = -t629 * t840 + t631 * t844;
t563 = -t630 * t844 - t632 * t840;
t562 = -t629 * t844 - t631 * t840;
t561 = t614 * t836 - t637 * t835;
t560 = t614 * t835 + t637 * t836;
t556 = t592 * t836 + t638 * t835;
t555 = t592 * t835 - t638 * t836;
t554 = t923 - t934;
t553 = -t618 * t842 + t619 * t846;
t552 = t618 * t846 + t619 * t842;
t550 = -t608 * t843 - t839 * t958;
t548 = -t608 * t839 + t843 * t958;
t544 = t924 - t935;
t543 = -t602 * t840 + t603 * t844;
t542 = -t600 * t840 + t601 * t844;
t541 = -t602 * t844 - t603 * t840;
t540 = -t600 * t844 - t601 * t840;
t536 = -pkin(2) * t627 + pkin(3) * t696 - pkin(8) * t669 - t916;
t535 = -pkin(2) * t620 - pkin(3) * t694 - pkin(8) * t664 + t915;
t534 = -qJ(2) * t618 - (pkin(2) * t835 - pkin(7) * t836) * t647;
t532 = t546 * t845 + t677 * t841;
t531 = t546 * t841 - t677 * t845;
t530 = t582 * t836 - t589 * t835;
t529 = t582 * t835 + t589 * t836;
t528 = t543 * t845 + t888;
t527 = t542 * t845 - t888;
t526 = t543 * t841 - t887;
t525 = t542 * t841 + t887;
t524 = t565 * t845 - t609 * t841;
t523 = t564 * t845 - t613 * t841;
t522 = t565 * t841 + t609 * t845;
t521 = t564 * t841 + t613 * t845;
t520 = -qJ(6) * t700 + t533;
t519 = -pkin(8) * t638 - t545;
t516 = -t579 * t842 + t580 * t846;
t515 = t579 * t846 + t580 * t842;
t513 = t875 + t924;
t512 = -t575 * t842 + t576 * t846;
t511 = t575 * t846 + t576 * t842;
t510 = qJ(2) * t619 - (-pkin(2) * t836 - pkin(7) * t835 - pkin(1)) * t647;
t509 = t876 - t923;
t502 = -pkin(7) * t627 - t574 * t841 + t617 * t845;
t501 = -pkin(7) * t620 - t571 * t841 + t605 * t845;
t500 = -t555 * t842 + t556 * t846;
t499 = t555 * t846 + t556 * t842;
t498 = -pkin(5) * t608 + qJ(6) * t667 - t533;
t496 = -t548 * t840 + t550 * t844;
t494 = -t548 * t844 - t550 * t840;
t492 = -pkin(2) * t591 - pkin(3) * t717 - pkin(8) * t640 - t546;
t491 = t524 * t836 - t563 * t835;
t490 = t523 * t836 - t562 * t835;
t489 = t524 * t835 + t563 * t836;
t488 = t523 * t835 + t562 * t836;
t487 = t496 * t845 - t685 * t841;
t486 = t496 * t841 + t685 * t845;
t485 = t532 * t836 + t545 * t835;
t484 = t532 * t835 - t545 * t836;
t483 = -pkin(7) * t591 + t519 * t845 + t638 * t949;
t482 = t528 * t836 - t541 * t835;
t481 = t527 * t836 - t540 * t835;
t480 = t528 * t835 + t541 * t836;
t479 = t527 * t835 + t540 * t836;
t478 = -pkin(5) * t739 + t853;
t469 = -pkin(2) * t531 + pkin(3) * t677 - pkin(8) * t546;
t468 = -t529 * t842 + t530 * t846;
t467 = t529 * t846 + t530 * t842;
t466 = t520 * t843 - t572 * t839 - t934;
t461 = qJ(6) * t919 - t498 * t839 - t935;
t460 = t505 + t956;
t459 = t735 + (-t613 - t715) * qJ(6) + t961 + t883;
t457 = t520 * t839 + t572 * t843 + t875;
t456 = -qJ(6) * t609 + (-t649 - t739) * pkin(5) + t853;
t455 = t504 + t955;
t452 = qJ(6) * t920 + t498 * t843 + t876;
t451 = -pkin(7) * t531 + (-pkin(8) * t845 + t949) * t545;
t450 = -t513 * t840 + t554 * t844 - t937;
t449 = -qJ(2) * t579 + t502 * t836 - t536 * t835;
t448 = -pkin(5) * t613 + t458;
t447 = -pkin(5) * t533 + qJ(6) * t478;
t446 = -qJ(2) * t575 + t501 * t836 - t535 * t835;
t445 = -t509 * t840 + t544 * t844 - t938;
t444 = -pkin(4) * t604 + pkin(9) * t454;
t443 = (-t700 - t739) * pkin(5) + t853 + t956;
t442 = -pkin(1) * t627 + qJ(2) * t580 + t502 * t835 + t536 * t836;
t441 = -pkin(1) * t620 + qJ(2) * t576 + t501 * t835 + t535 * t836;
t440 = -t453 - t936;
t439 = t487 * t836 - t494 * t835;
t438 = t487 * t835 + t494 * t836;
t437 = t735 - t854 + t955 + 0.2e1 * t961;
t432 = -t489 * t842 + t491 * t846;
t431 = -t488 * t842 + t490 * t846;
t430 = t489 * t846 + t491 * t842;
t429 = t488 * t846 + t490 * t842;
t428 = t454 + t877;
t427 = -t484 * t842 + t485 * t846;
t426 = t484 * t846 + t485 * t842;
t425 = -t480 * t842 + t482 * t846;
t424 = -t479 * t842 + t481 * t846;
t423 = t480 * t846 + t482 * t842;
t422 = t479 * t846 + t481 * t842;
t421 = -t476 * t842 + t477 * t846;
t419 = pkin(6) * t421;
t418 = t478 * t843 - t926;
t417 = t478 * t839 + t925;
t416 = -t513 * t844 - t554 * t840 + t850;
t415 = -t464 * t842 + t465 * t846;
t413 = pkin(6) * t415;
t412 = -qJ(2) * t555 + t483 * t836 - t492 * t835;
t411 = -t509 * t844 - t544 * t840 + t851;
t410 = -pkin(1) * t591 + qJ(2) * t556 + t483 * t835 + t492 * t836;
t409 = t454 * t844 - t928;
t408 = t454 * t840 + t927;
t407 = -t457 * t840 + t466 * t844 - t937;
t406 = t409 * t845 + t604 * t841;
t405 = t409 * t841 - t604 * t845;
t404 = -t452 * t840 + t461 * t844 - t938;
t403 = -t456 * t839 + t459 * t843 - t936;
t402 = t456 * t843 + t459 * t839 + t877;
t401 = t450 * t845 - t460 * t841 - t940;
t400 = -qJ(2) * t484 + t451 * t836 - t469 * t835;
t399 = t445 * t845 - t455 * t841 - t941;
t398 = -t457 * t844 - t466 * t840 + t850;
t397 = -t438 * t842 + t439 * t846;
t396 = t438 * t846 + t439 * t842;
t395 = -t435 * t842 + t436 * t846;
t393 = pkin(6) * t395;
t392 = -t452 * t844 - t461 * t840 + t851;
t391 = -pkin(1) * t531 + qJ(2) * t485 + t451 * t835 + t469 * t836;
t390 = -pkin(3) * t408 - pkin(4) * t453;
t389 = -t417 * t840 + t418 * t844;
t388 = t417 * t844 + t418 * t840;
t387 = -t428 * t840 + t440 * t844 - t939;
t386 = -pkin(9) * t417 - qJ(6) * t925 - t447 * t839;
t385 = t389 * t845 + t533 * t841;
t384 = t389 * t841 - t533 * t845;
t383 = t407 * t845 - t443 * t841 - t940;
t382 = -pkin(4) * t533 + pkin(9) * t418 - qJ(6) * t926 + t447 * t843;
t381 = t404 * t845 - t437 * t841 - t941;
t380 = -pkin(8) * t408 - pkin(9) * t927 - t444 * t840;
t379 = t406 * t836 + t408 * t835;
t378 = t406 * t835 - t408 * t836;
t377 = -t428 * t844 - t440 * t840 + t852;
t376 = t401 * t836 - t416 * t835 - t931;
t375 = t387 * t845 - t458 * t841 - t942;
t374 = -t402 * t840 + t403 * t844 - t939;
t373 = t401 * t835 + t416 * t836 + t878;
t372 = t399 * t836 - t411 * t835 - t932;
t371 = -pkin(3) * t388 - pkin(4) * t417 - pkin(5) * t470;
t370 = t399 * t835 + t411 * t836 + t879;
t369 = -t402 * t844 - t403 * t840 + t852;
t368 = t385 * t836 + t388 * t835;
t367 = t385 * t835 - t388 * t836;
t366 = -pkin(2) * t405 + pkin(3) * t604 - pkin(8) * t409 + pkin(9) * t928 - t444 * t844;
t365 = t374 * t845 - t448 * t841 - t942;
t364 = t383 * t836 - t398 * t835 - t931;
t363 = t383 * t835 + t398 * t836 + t878;
t362 = t381 * t836 - t392 * t835 - t932;
t361 = t381 * t835 + t392 * t836 + t879;
t360 = -t378 * t842 + t379 * t846;
t359 = t378 * t846 + t379 * t842;
t358 = -pkin(7) * t405 + t380 * t845 - t390 * t841;
t357 = -pkin(8) * t388 - t382 * t840 + t386 * t844;
t356 = t375 * t836 - t377 * t835 - t933;
t355 = t375 * t835 + t377 * t836 + t880;
t354 = -t367 * t842 + t368 * t846;
t353 = t367 * t846 + t368 * t842;
t352 = -pkin(2) * t384 + pkin(3) * t533 - pkin(8) * t389 - t382 * t844 - t386 * t840;
t351 = t365 * t836 - t369 * t835 - t933;
t350 = t365 * t835 + t369 * t836 + t880;
t349 = -pkin(7) * t384 + t357 * t845 - t371 * t841;
t348 = -qJ(2) * t378 + t358 * t836 - t366 * t835;
t347 = -pkin(1) * t405 + qJ(2) * t379 + t358 * t835 + t366 * t836;
t346 = -qJ(2) * t367 + t349 * t836 - t352 * t835;
t345 = -pkin(1) * t384 + qJ(2) * t368 + t349 * t835 + t352 * t836;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t801, -t802, 0, t756, 0, 0, 0, 0, 0, 0, -t957, -t747, 0, t616, 0, 0, 0, 0, 0, 0, t652, t653, t688, t553, 0, 0, 0, 0, 0, 0, t512, t516, t500, t427, 0, 0, 0, 0, 0, 0, t415, t421, t395, t360, 0, 0, 0, 0, 0, 0, t415, t421, t395, t354; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t802, -t801, 0, t755, 0, 0, 0, 0, 0, 0, t747, -t957, 0, -t968, 0, 0, 0, 0, 0, 0, t650, t651, t687, t552, 0, 0, 0, 0, 0, 0, t511, t515, t499, t426, 0, 0, 0, 0, 0, 0, t414, t420, t394, t359, 0, 0, 0, 0, 0, 0, t414, t420, t394, t353; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t898, 0, 0, 0, 0, 0, 0, t757, t758, 0, -t647, 0, 0, 0, 0, 0, 0, t620, t627, t591, t531, 0, 0, 0, 0, 0, 0, t507, t517, t472, t405, 0, 0, 0, 0, 0, 0, t507, t517, t472, t384; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t802, 0, -t801, 0, t863, -t775, -t755, -pkin(6) * t755, 0, 0, t747, 0, -t957, 0, t966, -t967, t968, pkin(6) * t968 + qJ(2) * t917 - t665 * t842, -t730 * t842 + t732 * t846, -t701 * t842 + t703 * t846, -t726 * t842 + t728 * t846, -t729 * t842 + t731 * t846, -t725 * t842 + t727 * t846, -t764 * t842 + t765 * t846, -pkin(6) * t650 - t577 * t842 + t587 * t846, -pkin(6) * t651 - t578 * t842 + t588 * t846, -pkin(6) * t687 - t623 * t842 + t624 * t846, -pkin(6) * t552 - t510 * t842 + t534 * t846, -t595 * t842 + t597 * t846, -t560 * t842 + t561 * t846, -t583 * t842 + t585 * t846, -t594 * t842 + t596 * t846, -t584 * t842 + t586 * t846, -t635 * t842 + t636 * t846, -pkin(6) * t511 - t441 * t842 + t446 * t846, -pkin(6) * t515 - t442 * t842 + t449 * t846, -pkin(6) * t499 - t410 * t842 + t412 * t846, -pkin(6) * t426 - t391 * t842 + t400 * t846, t425, t397, t431, t424, t432, t468, -t370 * t842 + t372 * t846 - t944, -t373 * t842 + t376 * t846 - t943, -t355 * t842 + t356 * t846 - t945, -pkin(6) * t359 - t347 * t842 + t348 * t846, t425, t397, t431, t424, t432, t468, -t361 * t842 + t362 * t846 - t944, -t363 * t842 + t364 * t846 - t943, -t350 * t842 + t351 * t846 - t945, -pkin(6) * t353 - t345 * t842 + t346 * t846; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t801, 0, t802, 0, t775, t863, t756, pkin(6) * t756, 0, 0, t957, 0, t747, 0, t967, t966, t616, pkin(6) * t616 + qJ(2) * t918 + t665 * t846, t730 * t846 + t732 * t842, t701 * t846 + t703 * t842, t726 * t846 + t728 * t842, t729 * t846 + t731 * t842, t725 * t846 + t727 * t842, t764 * t846 + t765 * t842, pkin(6) * t652 + t577 * t846 + t587 * t842, pkin(6) * t653 + t578 * t846 + t588 * t842, pkin(6) * t688 + t623 * t846 + t624 * t842, pkin(6) * t553 + t510 * t846 + t534 * t842, t595 * t846 + t597 * t842, t560 * t846 + t561 * t842, t583 * t846 + t585 * t842, t594 * t846 + t596 * t842, t584 * t846 + t586 * t842, t635 * t846 + t636 * t842, pkin(6) * t512 + t441 * t846 + t446 * t842, pkin(6) * t516 + t442 * t846 + t449 * t842, pkin(6) * t500 + t410 * t846 + t412 * t842, pkin(6) * t427 + t391 * t846 + t400 * t842, t423, t396, t429, t422, t430, t467, t370 * t846 + t372 * t842 + t413, t373 * t846 + t376 * t842 + t419, t355 * t846 + t356 * t842 + t393, pkin(6) * t360 + t347 * t846 + t348 * t842, t423, t396, t429, t422, t430, t467, t361 * t846 + t362 * t842 + t413, t363 * t846 + t364 * t842 + t419, t350 * t846 + t351 * t842 + t393, pkin(6) * t354 + t345 * t846 + t346 * t842; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t807, t808, 0, 0, 0, 0, 0, 0, 0, qJDD(1), pkin(1) * t799 - t744, -pkin(1) * t798 - t745, 0, -pkin(1) * t675, t862 * t841, t794 * t845 + t797 * t841, t812 * t845 + t904, -t861 * t845, t814 * t841 + t905, 0, pkin(1) * t708 + pkin(2) * t797 + pkin(7) * t760 - t911, pkin(1) * t709 - pkin(2) * t794 + pkin(7) * t762 + t912, pkin(1) * t751 + pkin(2) * t803 + pkin(7) * t800 + t648, pkin(1) * t618 - pkin(2) * t722 + pkin(7) * t648, t841 * t692 + t856, t639 * t841 + t754 * t845, t682 * t841 + t698 * t845, t841 * t690 - t856, t683 * t841 + t693 * t845, t706 * t841 + t787 * t845, pkin(1) * t575 - pkin(2) * t663 + pkin(7) * t621 + t571 * t845 + t605 * t841, pkin(1) * t579 - pkin(2) * t668 + pkin(7) * t628 + t574 * t845 + t617 * t841, pkin(1) * t555 + pkin(7) * t592 + t841 * t519 + (-pkin(2) - t948) * t638, pkin(1) * t484 + pkin(7) * t532 + (-pkin(2) + t864) * t545, t526, t486, t521, t525, t522, t581, t445 * t841 + t455 * t845 + t885, t450 * t841 + t460 * t845 + t884, t387 * t841 + t458 * t845 + t886, pkin(1) * t378 - pkin(2) * t408 + pkin(7) * t406 + t380 * t841 + t390 * t845, t526, t486, t521, t525, t522, t581, t404 * t841 + t437 * t845 + t885, t407 * t841 + t443 * t845 + t884, t374 * t841 + t448 * t845 + t886, pkin(1) * t367 - pkin(2) * t388 + pkin(7) * t385 + t357 * t841 + t371 * t845;];
tauB_reg  = t1;
