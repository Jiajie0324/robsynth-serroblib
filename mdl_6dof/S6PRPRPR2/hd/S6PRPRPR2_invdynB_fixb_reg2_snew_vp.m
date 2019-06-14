% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRPRPR2
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d6,theta1,theta3,theta5]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 22:25
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRPRPR2_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRPR2_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRPR2_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPRPR2_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPRPR2_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRPRPR2_invdynB_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 22:23:50
% EndTime: 2019-05-04 22:24:23
% DurationCPUTime: 31.65s
% Computational Cost: add. (200029->908), mult. (396411->1476), div. (0->0), fcn. (291714->14), ass. (0->644)
t842 = cos(qJ(2));
t830 = sin(pkin(10));
t834 = cos(pkin(10));
t799 = g(1) * t834 + g(2) * t830;
t839 = sin(qJ(2));
t825 = g(3) - qJDD(1);
t831 = sin(pkin(6));
t798 = g(1) * t830 - t834 * g(2);
t835 = cos(pkin(6));
t933 = t798 * t835;
t968 = t825 * t831 - t933;
t707 = -t842 * t799 - t839 * t968;
t843 = qJD(2) ^ 2;
t691 = -t843 * pkin(2) + t707;
t829 = sin(pkin(11));
t833 = cos(pkin(11));
t703 = -t799 * t839 + t842 * t968;
t861 = qJDD(2) * pkin(2) - t703;
t625 = t829 * t691 - t833 * t861;
t626 = t833 * t691 + t829 * t861;
t907 = t625 * t829 + t833 * t626;
t537 = t625 * t833 - t626 * t829;
t946 = t537 * t839;
t973 = t842 * t907 + t946;
t945 = t537 * t842;
t463 = -t839 * t907 + t945;
t791 = qJDD(2) * t829 + t833 * t843;
t813 = t835 * t825;
t762 = t798 * t831 + t813;
t898 = -qJDD(3) + t762;
t696 = -qJ(3) * t791 + t833 * t898;
t792 = qJDD(2) * t833 - t829 * t843;
t959 = -qJ(3) * t792 - t829 * t898;
t972 = -t839 * t696 + t842 * t959;
t971 = -t696 * t842 - t839 * t959;
t734 = t791 * t839 - t792 * t842;
t864 = t791 * t842 + t792 * t839;
t961 = t864 * t835;
t654 = t734 * t834 + t830 * t961;
t652 = t734 * t830 - t834 * t961;
t828 = sin(pkin(12));
t838 = sin(qJ(4));
t917 = qJD(2) * qJD(4);
t814 = t838 * t917;
t841 = cos(qJ(4));
t914 = qJDD(2) * t841;
t789 = -t814 + t914;
t832 = cos(pkin(12));
t920 = qJD(2) * t838;
t779 = -t832 * qJD(4) + t828 * t920;
t781 = qJD(4) * t828 + t832 * t920;
t935 = t779 * t781;
t862 = -t789 - t935;
t967 = t828 * t862;
t966 = t832 * t862;
t837 = sin(qJ(6));
t783 = -qJDD(6) + t789;
t840 = cos(qJ(6));
t727 = t840 * t779 + t781 * t837;
t729 = -t779 * t837 + t781 * t840;
t936 = t727 * t729;
t846 = -t783 - t936;
t965 = t837 * t846;
t963 = t840 * t846;
t716 = t864 * t831;
t919 = qJD(2) * t841;
t810 = -qJD(6) + t919;
t693 = t727 * t810;
t908 = t841 * t917;
t915 = qJDD(2) * t838;
t788 = t908 + t915;
t760 = qJDD(4) * t828 + t788 * t832;
t905 = -t832 * qJDD(4) + t788 * t828;
t845 = qJD(6) * t727 - t760 * t840 + t837 * t905;
t960 = t693 - t845;
t766 = t779 * t919;
t702 = -t760 + t766;
t767 = t781 * t919;
t699 = -t905 - t767;
t906 = t837 * t760 + t840 * t905;
t590 = (qJD(6) + t810) * t729 + t906;
t721 = t727 ^ 2;
t722 = t729 ^ 2;
t958 = t779 ^ 2;
t778 = t781 ^ 2;
t808 = t810 ^ 2;
t957 = qJD(4) ^ 2;
t956 = pkin(2) * t537;
t955 = pkin(4) * t838;
t954 = pkin(4) * t841;
t637 = t703 * t839 + t707 * t842;
t953 = pkin(7) * t637;
t621 = -pkin(3) * t843 + qJDD(2) * pkin(8) + t626;
t588 = t841 * t621 - t838 * t898;
t902 = -qJ(5) * t838 - t954;
t786 = t902 * qJD(2);
t557 = -pkin(4) * t957 + qJDD(4) * qJ(5) + t786 * t919 + t588;
t620 = -qJDD(2) * pkin(3) - t843 * pkin(8) + t625;
t899 = t788 + t908;
t563 = -t899 * qJ(5) + (-t789 + t814) * pkin(4) + t620;
t488 = 0.2e1 * qJD(5) * t781 + t828 * t557 - t832 * t563;
t461 = t862 * pkin(5) + pkin(9) * t702 - t488;
t489 = -0.2e1 * qJD(5) * t779 + t832 * t557 + t828 * t563;
t761 = -pkin(5) * t919 - pkin(9) * t781;
t471 = -pkin(5) * t958 - pkin(9) * t905 + t761 * t919 + t489;
t402 = -t840 * t461 + t471 * t837;
t403 = t837 * t461 + t840 * t471;
t349 = -t402 * t840 + t403 * t837;
t950 = t349 * t828;
t949 = t349 * t832;
t742 = t841 * t898;
t556 = qJDD(5) + t742 - t957 * qJ(5) - qJDD(4) * pkin(4) + (qJD(2) * t786 + t621) * t838;
t523 = pkin(5) * t905 - pkin(9) * t958 + t781 * t761 + t556;
t948 = t523 * t837;
t947 = t523 * t840;
t944 = t556 * t828;
t943 = t556 * t832;
t942 = t620 * t838;
t941 = t620 * t841;
t638 = t783 - t936;
t940 = t638 * t837;
t939 = t638 * t840;
t704 = t789 - t935;
t938 = t704 * t828;
t937 = t704 * t832;
t934 = t789 * t838;
t809 = t838 * t843 * t841;
t800 = qJDD(4) + t809;
t932 = t800 * t838;
t801 = qJDD(4) - t809;
t931 = t801 * t838;
t930 = t801 * t841;
t929 = t810 * t837;
t928 = t810 * t840;
t823 = t838 ^ 2;
t927 = t823 * t843;
t925 = t830 * t825;
t924 = t834 * t825;
t923 = t839 * t762;
t922 = t842 * t762;
t824 = t841 ^ 2;
t921 = t823 + t824;
t916 = qJDD(2) * t831;
t913 = t838 * t936;
t912 = t841 * t936;
t911 = t838 * t935;
t910 = t841 * t935;
t909 = t834 * t916;
t350 = t402 * t837 + t840 * t403;
t587 = t621 * t838 + t742;
t509 = t587 * t838 + t841 * t588;
t740 = -t798 * t830 - t834 * t799;
t904 = t829 * t809;
t903 = t833 * t809;
t794 = qJDD(2) * t842 - t839 * t843;
t901 = -pkin(7) * t794 - t923;
t863 = qJDD(2) * t839 + t842 * t843;
t900 = -pkin(7) * t863 + t922;
t320 = t350 * t832 - t950;
t316 = t320 * t841 + t523 * t838;
t319 = t350 * t828 + t949;
t286 = t316 * t829 - t319 * t833;
t287 = t316 * t833 + t319 * t829;
t897 = t286 * t842 + t287 * t839;
t419 = t488 * t828 + t489 * t832;
t400 = t419 * t841 + t556 * t838;
t418 = -t488 * t832 + t489 * t828;
t353 = t400 * t829 - t418 * t833;
t354 = t400 * t833 + t418 * t829;
t896 = t353 * t842 + t354 * t839;
t594 = t693 + t845;
t511 = -t590 * t837 + t594 * t840;
t513 = -t590 * t840 - t594 * t837;
t434 = -t511 * t828 + t513 * t832;
t616 = -t721 - t722;
t417 = t434 * t841 + t616 * t838;
t432 = t511 * t832 + t513 * t828;
t368 = t417 * t829 - t432 * t833;
t369 = t417 * t833 + t432 * t829;
t895 = t368 * t842 + t369 * t839;
t589 = (qJD(6) - t810) * t729 + t906;
t510 = -t589 * t837 + t840 * t960;
t512 = -t589 * t840 - t837 * t960;
t433 = -t510 * t828 + t512 * t832;
t658 = -t722 + t721;
t427 = t433 * t841 - t658 * t838;
t431 = -t510 * t832 - t512 * t828;
t372 = t427 * t829 + t431 * t833;
t373 = t427 * t833 - t431 * t829;
t894 = t372 * t842 + t373 * t839;
t651 = -t808 - t721;
t549 = t651 * t837 + t963;
t550 = t651 * t840 - t965;
t484 = -t549 * t828 + t550 * t832;
t442 = t484 * t841 + t589 * t838;
t483 = t549 * t832 + t550 * t828;
t395 = t442 * t829 - t483 * t833;
t396 = t442 * t833 + t483 * t829;
t893 = t395 * t842 + t396 * t839;
t672 = -t722 - t808;
t564 = t672 * t840 + t940;
t565 = -t672 * t837 + t939;
t494 = -t564 * t828 + t565 * t832;
t449 = t494 * t841 + t838 * t960;
t493 = t564 * t832 + t565 * t828;
t410 = t449 * t829 - t493 * t833;
t411 = t449 * t833 + t493 * t829;
t892 = t410 * t842 + t411 * t839;
t687 = -t722 + t808;
t576 = t687 * t840 + t965;
t578 = -t687 * t837 + t963;
t503 = -t576 * t828 + t578 * t832;
t453 = t503 * t841 - t594 * t838;
t501 = -t576 * t832 - t578 * t828;
t412 = t453 * t829 + t501 * t833;
t414 = t453 * t833 - t501 * t829;
t891 = t412 * t842 + t414 * t839;
t686 = t721 - t808;
t577 = t686 * t837 - t939;
t579 = t686 * t840 + t940;
t504 = -t577 * t828 + t579 * t832;
t454 = t504 * t841 - t590 * t838;
t502 = -t577 * t832 - t579 * t828;
t413 = t454 * t829 + t502 * t833;
t415 = t454 * t833 - t502 * t829;
t890 = t413 * t842 + t415 * t839;
t634 = -qJD(6) * t729 - t906;
t572 = t634 * t840 - t727 * t929;
t573 = -t634 * t837 - t727 * t928;
t499 = -t572 * t828 + t573 * t832;
t481 = t499 * t841 - t913;
t497 = -t572 * t832 - t573 * t828;
t420 = t481 * t829 + t497 * t833;
t422 = t481 * t833 - t497 * t829;
t889 = t420 * t842 + t422 * t839;
t574 = -t729 * t928 - t837 * t845;
t575 = t729 * t929 - t840 * t845;
t500 = -t574 * t828 + t575 * t832;
t482 = t500 * t841 + t913;
t498 = -t574 * t832 - t575 * t828;
t421 = t482 * t829 + t498 * t833;
t423 = t482 * t833 - t498 * t829;
t888 = t421 * t842 + t423 * t839;
t628 = (t727 * t837 + t729 * t840) * t810;
t629 = (t727 * t840 - t729 * t837) * t810;
t548 = -t628 * t828 + t629 * t832;
t534 = t548 * t841 - t783 * t838;
t547 = -t628 * t832 - t629 * t828;
t457 = t534 * t829 + t547 * t833;
t458 = t534 * t833 - t547 * t829;
t887 = t457 * t842 + t458 * t839;
t473 = t509 * t829 - t620 * t833;
t474 = t509 * t833 + t620 * t829;
t886 = t473 * t842 + t474 * t839;
t632 = t699 * t832 - t702 * t828;
t690 = t778 + t958;
t567 = t632 * t841 - t690 * t838;
t630 = t699 * t828 + t702 * t832;
t521 = t567 * t829 - t630 * t833;
t522 = t567 * t833 + t630 * t829;
t885 = t521 * t842 + t522 * t839;
t700 = t767 - t905;
t701 = t760 + t766;
t633 = t700 * t832 - t701 * t828;
t736 = -t778 + t958;
t598 = t633 * t841 - t736 * t838;
t631 = -t700 * t828 - t701 * t832;
t526 = t598 * t829 + t631 * t833;
t527 = t598 * t833 - t631 * t829;
t884 = t526 * t842 + t527 * t839;
t820 = t824 * t843;
t730 = -t820 - t958;
t648 = t730 * t832 - t967;
t596 = t648 * t841 - t700 * t838;
t647 = t730 * t828 + t966;
t528 = t596 * t829 - t647 * t833;
t529 = t596 * t833 + t647 * t829;
t883 = t528 * t842 + t529 * t839;
t765 = -t778 - t820;
t662 = -t765 * t828 + t937;
t608 = t662 * t841 + t701 * t838;
t659 = t765 * t832 + t938;
t539 = t608 * t829 - t659 * t833;
t542 = t608 * t833 + t659 * t829;
t880 = t539 * t842 + t542 * t839;
t764 = -t778 + t820;
t663 = -t764 * t828 + t966;
t609 = t663 * t841 - t702 * t838;
t660 = -t764 * t832 - t967;
t540 = t609 * t829 + t660 * t833;
t543 = t609 * t833 - t660 * t829;
t879 = t540 * t842 + t543 * t839;
t763 = -t820 + t958;
t664 = t763 * t832 + t938;
t610 = t664 * t841 + t699 * t838;
t661 = -t763 * t828 + t937;
t541 = t610 * t829 + t661 * t833;
t544 = t610 * t833 - t661 * t829;
t878 = t541 * t842 + t544 * t839;
t676 = -t766 * t832 + t828 * t905;
t643 = t676 * t841 - t911;
t675 = t766 * t828 + t832 * t905;
t568 = t643 * t829 + t675 * t833;
t570 = t643 * t833 - t675 * t829;
t877 = t568 * t842 + t570 * t839;
t678 = t760 * t832 + t767 * t828;
t644 = t678 * t841 + t911;
t677 = -t760 * t828 + t767 * t832;
t569 = t644 * t829 + t677 * t833;
t571 = t644 * t833 - t677 * t829;
t876 = t569 * t842 + t571 * t839;
t508 = t587 * t841 - t588 * t838;
t689 = (t779 * t832 - t781 * t828) * t919;
t669 = t689 * t841 - t934;
t688 = (-t779 * t828 - t781 * t832) * t919;
t611 = t669 * t829 + t688 * t833;
t612 = t669 * t833 - t688 * t829;
t875 = t611 * t842 + t612 * t839;
t787 = 0.2e1 * t908 + t915;
t790 = -0.2e1 * t814 + t914;
t732 = -t787 * t838 + t790 * t841;
t797 = t820 - t927;
t673 = t732 * t829 + t797 * t833;
t674 = t732 * t833 - t797 * t829;
t874 = t673 * t842 + t674 * t839;
t807 = -t820 - t957;
t751 = t807 * t841 - t932;
t682 = t751 * t829 + t790 * t833;
t684 = t751 * t833 - t790 * t829;
t873 = t682 * t842 + t684 * t839;
t805 = -t927 - t957;
t753 = -t805 * t838 - t930;
t683 = t753 * t829 - t787 * t833;
t685 = t753 * t833 + t787 * t829;
t872 = t683 * t842 + t685 * t839;
t636 = t703 * t842 - t707 * t839;
t806 = t820 - t957;
t750 = t806 * t841 - t931;
t708 = t750 * t829 - t833 * t914;
t710 = t750 * t833 + t829 * t914;
t871 = t708 * t842 + t710 * t839;
t785 = t841 * t800;
t804 = -t927 + t957;
t752 = -t804 * t838 + t785;
t709 = t752 * t829 - t833 * t915;
t711 = t752 * t833 + t829 * t915;
t870 = t709 * t842 + t711 * t839;
t757 = -t824 * t917 - t934;
t712 = t757 * t829 - t903;
t714 = t757 * t833 + t904;
t869 = t712 * t842 + t714 * t839;
t758 = t788 * t841 - t823 * t917;
t713 = t758 * t829 + t903;
t715 = t758 * t833 - t904;
t868 = t713 * t842 + t715 * t839;
t793 = t921 * qJDD(2);
t796 = t820 + t927;
t737 = t793 * t829 + t796 * t833;
t738 = t793 * t833 - t796 * t829;
t867 = t737 * t842 + t738 * t839;
t784 = t921 * t917;
t755 = -qJDD(4) * t833 + t784 * t829;
t756 = qJDD(4) * t829 + t784 * t833;
t866 = t755 * t842 + t756 * t839;
t771 = t863 * t835;
t865 = t771 * t834 + t794 * t830;
t725 = t771 * t830 - t794 * t834;
t739 = t798 * t834 - t799 * t830;
t339 = -pkin(5) * t523 + pkin(9) * t350;
t288 = -pkin(9) * t949 - qJ(5) * t319 - t339 * t828;
t301 = -pkin(4) * t319 - pkin(5) * t349;
t315 = t320 * t838 - t523 * t841;
t277 = -pkin(8) * t315 + t288 * t841 - t301 * t838;
t281 = -pkin(3) * t315 + pkin(4) * t523 + pkin(9) * t950 - qJ(5) * t320 - t339 * t832;
t263 = -pkin(2) * t315 + qJ(3) * t287 + t277 * t829 + t281 * t833;
t264 = -qJ(3) * t286 + t277 * t833 - t281 * t829;
t278 = -t286 * t839 + t287 * t842;
t860 = pkin(7) * t278 + t263 * t842 + t264 * t839;
t334 = -pkin(5) * t616 + pkin(9) * t513 + t350;
t338 = -pkin(9) * t511 - t349;
t304 = -qJ(5) * t432 - t334 * t828 + t338 * t832;
t398 = -pkin(4) * t432 - pkin(5) * t511;
t416 = t434 * t838 - t616 * t841;
t291 = -pkin(8) * t416 + t304 * t841 - t398 * t838;
t299 = -pkin(3) * t416 + pkin(4) * t616 - qJ(5) * t434 - t334 * t832 - t338 * t828;
t279 = -pkin(2) * t416 + qJ(3) * t369 + t291 * t829 + t299 * t833;
t280 = -qJ(3) * t368 + t291 * t833 - t299 * t829;
t327 = -t368 * t839 + t369 * t842;
t859 = pkin(7) * t327 + t279 * t842 + t280 * t839;
t361 = -pkin(4) * t483 - pkin(5) * t549 + t402;
t435 = -pkin(5) * t589 + pkin(9) * t550 - t947;
t460 = -pkin(9) * t549 + t948;
t366 = -qJ(5) * t483 - t435 * t828 + t460 * t832;
t441 = t484 * t838 - t589 * t841;
t321 = -pkin(8) * t441 - t361 * t838 + t366 * t841;
t335 = -pkin(3) * t441 + pkin(4) * t589 - qJ(5) * t484 - t435 * t832 - t460 * t828;
t289 = -pkin(2) * t441 + qJ(3) * t396 + t321 * t829 + t335 * t833;
t292 = -qJ(3) * t395 + t321 * t833 - t335 * t829;
t345 = -t395 * t839 + t396 * t842;
t858 = pkin(7) * t345 + t289 * t842 + t292 * t839;
t399 = t419 * t838 - t556 * t841;
t333 = -pkin(8) * t399 + (-qJ(5) * t841 + t955) * t418;
t348 = -pkin(3) * t399 + pkin(4) * t556 - qJ(5) * t419;
t290 = -pkin(2) * t399 + qJ(3) * t354 + t333 * t829 + t348 * t833;
t298 = -qJ(3) * t353 + t333 * t833 - t348 * t829;
t325 = -t353 * t839 + t354 * t842;
t857 = pkin(7) * t325 + t290 * t842 + t298 * t839;
t367 = -pkin(4) * t493 - pkin(5) * t564 + t403;
t440 = -pkin(5) * t960 + pkin(9) * t565 + t948;
t472 = -pkin(9) * t564 + t947;
t371 = -qJ(5) * t493 - t440 * t828 + t472 * t832;
t448 = t494 * t838 - t841 * t960;
t326 = -pkin(8) * t448 - t367 * t838 + t371 * t841;
t344 = -pkin(3) * t448 + pkin(4) * t960 - qJ(5) * t494 - t440 * t832 - t472 * t828;
t293 = -pkin(2) * t448 + qJ(3) * t411 + t326 * t829 + t344 * t833;
t297 = -qJ(3) * t410 + t326 * t833 - t344 * t829;
t355 = -t410 * t839 + t411 * t842;
t856 = pkin(7) * t355 + t293 * t842 + t297 * t839;
t409 = -qJ(5) * t630 - t418;
t566 = t632 * t838 + t690 * t841;
t388 = -pkin(8) * t566 + t409 * t841 + t630 * t955;
t390 = -pkin(3) * t566 - pkin(4) * t690 - qJ(5) * t632 - t419;
t329 = -pkin(2) * t566 + qJ(3) * t522 + t388 * t829 + t390 * t833;
t332 = -qJ(3) * t521 + t388 * t833 - t390 * t829;
t443 = -t521 * t839 + t522 * t842;
t855 = pkin(7) * t443 + t329 * t842 + t332 * t839;
t462 = -pkin(4) * t647 + t488;
t515 = -qJ(5) * t647 + t944;
t595 = t648 * t838 + t700 * t841;
t404 = -pkin(8) * t595 - t462 * t838 + t515 * t841;
t450 = -pkin(3) * t595 - pkin(4) * t700 - qJ(5) * t648 + t943;
t351 = -pkin(2) * t595 + qJ(3) * t529 + t404 * t829 + t450 * t833;
t357 = -qJ(3) * t528 + t404 * t833 - t450 * t829;
t445 = -t528 * t839 + t529 * t842;
t854 = pkin(7) * t445 + t351 * t842 + t357 * t839;
t468 = -pkin(4) * t659 + t489;
t524 = -qJ(5) * t659 + t943;
t605 = t662 * t838 - t701 * t841;
t408 = -pkin(8) * t605 - t468 * t838 + t524 * t841;
t469 = -pkin(3) * t605 + pkin(4) * t701 - qJ(5) * t662 - t944;
t356 = -pkin(2) * t605 + qJ(3) * t542 + t408 * t829 + t469 * t833;
t360 = -qJ(3) * t539 + t408 * t833 - t469 * t829;
t465 = -t539 * t839 + t542 * t842;
t853 = pkin(7) * t465 + t356 * t842 + t360 * t839;
t370 = qJ(3) * t474 - (-pkin(3) * t833 - pkin(8) * t829 - pkin(2)) * t508;
t389 = -qJ(3) * t473 - (pkin(3) * t829 - pkin(8) * t833) * t508;
t406 = -t473 * t839 + t474 * t842;
t852 = pkin(7) * t406 + t370 * t842 + t389 * t839;
t747 = t807 * t838 + t785;
t554 = -pkin(3) * t747 + t587;
t585 = -pkin(8) * t747 + t942;
t477 = -pkin(2) * t747 + qJ(3) * t684 + t554 * t833 + t585 * t829;
t485 = -qJ(3) * t682 - t554 * t829 + t585 * t833;
t623 = -t682 * t839 + t684 * t842;
t851 = pkin(7) * t623 + t477 * t842 + t485 * t839;
t749 = t805 * t841 - t931;
t555 = -pkin(3) * t749 + t588;
t586 = -pkin(8) * t749 + t941;
t478 = -pkin(2) * t749 + qJ(3) * t685 + t555 * t833 + t586 * t829;
t486 = -qJ(3) * t683 - t555 * t829 + t586 * t833;
t624 = -t683 * t839 + t685 * t842;
t850 = pkin(7) * t624 + t478 * t842 + t486 * t839;
t491 = qJ(3) * t738 + t508 * t829;
t492 = -qJ(3) * t737 + t508 * t833;
t667 = -t737 * t839 + t738 * t842;
t849 = pkin(7) * t667 + t491 * t842 + t492 * t839;
t848 = -pkin(7) * t864 - t971;
t847 = pkin(7) * t734 + t972;
t525 = pkin(2) * t898 + qJ(3) * t907;
t844 = pkin(7) * t973 + qJ(3) * t946 + t525 * t842;
t816 = t835 * qJDD(2);
t803 = t830 * t916;
t776 = t841 * t789;
t772 = t794 * t835;
t770 = t794 * t831;
t769 = t863 * t831;
t748 = t804 * t841 + t932;
t746 = t806 * t838 + t930;
t745 = t899 * t838;
t744 = -t838 * t908 + t776;
t731 = t787 * t841 + t790 * t838;
t726 = -t772 * t830 - t834 * t863;
t724 = t772 * t834 - t830 * t863;
t720 = t734 * t835;
t717 = t734 * t831;
t671 = -t755 * t839 + t756 * t842;
t670 = t866 * t835;
t668 = t689 * t838 + t776;
t666 = -t922 + (t769 * t831 + t771 * t835) * pkin(7);
t665 = -t923 + (-t770 * t831 - t772 * t835) * pkin(7);
t657 = t867 * t835;
t656 = t867 * t831;
t655 = t720 * t830 - t834 * t864;
t653 = -t720 * t834 - t830 * t864;
t650 = -t713 * t839 + t715 * t842;
t649 = -t712 * t839 + t714 * t842;
t646 = -t709 * t839 + t711 * t842;
t645 = -t708 * t839 + t710 * t842;
t642 = t678 * t838 - t910;
t641 = t676 * t838 + t910;
t627 = t637 * t835;
t618 = -pkin(1) * t770 + t831 * t703 + t835 * t900;
t617 = pkin(1) * t769 + t831 * t707 + t835 * t901;
t615 = -t673 * t839 + t674 * t842;
t614 = -pkin(2) * t791 - t626;
t613 = pkin(2) * t792 - t625;
t607 = t664 * t838 - t699 * t841;
t606 = t663 * t838 + t702 * t841;
t604 = -t831 * t745 + t835 * t868;
t603 = -t831 * t744 + t835 * t869;
t602 = -t831 * t748 + t835 * t870;
t601 = -t831 * t746 + t835 * t871;
t600 = -t636 * t835 + t831 * t762;
t599 = -t636 * t831 - t835 * t762;
t597 = t633 * t838 + t736 * t841;
t584 = -t831 * t749 + t835 * t872;
t583 = -t831 * t747 + t835 * t873;
t582 = t835 * t749 + t831 * t872;
t581 = t835 * t747 + t831 * t873;
t562 = -t657 * t830 + t667 * t834;
t561 = t657 * t834 + t667 * t830;
t558 = -t831 * t731 + t835 * t874;
t552 = (t716 * t831 + t835 * t961) * pkin(7) + t971;
t551 = (t717 * t831 + t720 * t835) * pkin(7) + t972;
t546 = pkin(2) * t682 + pkin(3) * t790 + pkin(8) * t751 - t941;
t545 = pkin(2) * t683 - pkin(3) * t787 + pkin(8) * t753 + t942;
t533 = t548 * t838 + t783 * t841;
t532 = -pkin(1) * t599 + t835 * t953;
t531 = -t600 * t830 + t637 * t834;
t530 = t600 * t834 + t637 * t830;
t520 = -t611 * t839 + t612 * t842;
t519 = -t584 * t830 + t624 * t834;
t518 = -t583 * t830 + t623 * t834;
t517 = t584 * t834 + t624 * t830;
t516 = t583 * t834 + t623 * t830;
t514 = (-t599 * t831 - t600 * t835) * pkin(7);
t506 = pkin(1) * t716 - t831 * t614 + t835 * t847;
t505 = pkin(1) * t717 - t831 * t613 + t835 * t848;
t496 = -t569 * t839 + t571 * t842;
t495 = -t568 * t839 + t570 * t842;
t490 = -t831 * t668 + t835 * t875;
t487 = pkin(2) * t737 + pkin(3) * t796 + pkin(8) * t793 + t509;
t480 = t500 * t838 - t912;
t479 = t499 * t838 + t912;
t476 = -t831 * t642 + t835 * t876;
t475 = -t831 * t641 + t835 * t877;
t467 = -t541 * t839 + t544 * t842;
t466 = -t540 * t839 + t543 * t842;
t459 = t973 * t835;
t452 = t504 * t838 + t590 * t841;
t451 = t503 * t838 + t594 * t841;
t447 = -t463 * t835 + t831 * t898;
t446 = t835 * (qJDD(3) - t813) + (-t463 - t933) * t831;
t444 = -t526 * t839 + t527 * t842;
t439 = -t831 * t607 + t835 * t878;
t438 = -t831 * t606 + t835 * t879;
t437 = -t831 * t605 + t835 * t880;
t436 = t835 * t605 + t831 * t880;
t430 = -t831 * t595 + t835 * t883;
t429 = t835 * t595 + t831 * t883;
t428 = -t831 * t597 + t835 * t884;
t426 = t433 * t838 + t658 * t841;
t425 = -t831 * t566 + t835 * t885;
t424 = t835 * t566 + t831 * t885;
t407 = pkin(2) * t473 - pkin(3) * t620 + pkin(8) * t509;
t405 = -t839 * t491 + t842 * t492 + (-t656 * t831 - t657 * t835) * pkin(7);
t397 = -t457 * t839 + t458 * t842;
t394 = -t447 * t830 + t834 * t973;
t393 = t447 * t834 + t830 * t973;
t392 = -t437 * t830 + t465 * t834;
t391 = t437 * t834 + t465 * t830;
t387 = -t839 * t478 + t842 * t486 + (-t582 * t831 - t584 * t835) * pkin(7);
t386 = -t839 * t477 + t842 * t485 + (-t581 * t831 - t583 * t835) * pkin(7);
t385 = pkin(2) * t539 - pkin(3) * t659 + pkin(8) * t608 + t468 * t841 + t524 * t838;
t384 = -t430 * t830 + t445 * t834;
t383 = t430 * t834 + t445 * t830;
t382 = t508 * t831 + t835 * t886;
t381 = -t508 * t835 + t831 * t886;
t380 = -t831 * t533 + t835 * t887;
t379 = pkin(2) * t528 - pkin(3) * t647 + pkin(8) * t596 + t462 * t841 + t515 * t838;
t378 = -pkin(1) * t656 - t831 * t487 + t835 * t849;
t377 = -t425 * t830 + t443 * t834;
t376 = t425 * t834 + t443 * t830;
t375 = -pkin(1) * t582 - t831 * t545 + t835 * t850;
t374 = -pkin(1) * t581 - t831 * t546 + t835 * t851;
t365 = pkin(2) * t521 + pkin(8) * t567 + t838 * t409 + (-pkin(3) - t954) * t630;
t364 = -t421 * t839 + t423 * t842;
t363 = -t420 * t839 + t422 * t842;
t362 = qJ(3) * t945 - t839 * t525 + (-t446 * t831 - t447 * t835) * pkin(7);
t359 = -t413 * t839 + t415 * t842;
t358 = -t412 * t839 + t414 * t842;
t352 = -pkin(1) * t446 + t831 * t956 + t835 * t844;
t347 = -t831 * t480 + t835 * t888;
t346 = -t831 * t479 + t835 * t889;
t343 = -t382 * t830 + t406 * t834;
t342 = t382 * t834 + t406 * t830;
t341 = -t831 * t452 + t835 * t890;
t340 = -t831 * t451 + t835 * t891;
t337 = -t831 * t448 + t835 * t892;
t336 = t835 * t448 + t831 * t892;
t331 = -t831 * t441 + t835 * t893;
t330 = t835 * t441 + t831 * t893;
t328 = -t372 * t839 + t373 * t842;
t324 = -t831 * t426 + t835 * t894;
t323 = -t831 * t416 + t835 * t895;
t322 = t835 * t416 + t831 * t895;
t318 = -t337 * t830 + t355 * t834;
t317 = t337 * t834 + t355 * t830;
t314 = -t831 * t399 + t835 * t896;
t313 = t835 * t399 + t831 * t896;
t312 = -t839 * t356 + t842 * t360 + (-t436 * t831 - t437 * t835) * pkin(7);
t311 = -t331 * t830 + t345 * t834;
t310 = t331 * t834 + t345 * t830;
t309 = pkin(2) * t410 - pkin(3) * t493 + pkin(8) * t449 + t367 * t841 + t371 * t838;
t308 = -t839 * t351 + t842 * t357 + (-t429 * t831 - t430 * t835) * pkin(7);
t307 = -t839 * t370 + t842 * t389 + (-t381 * t831 - t382 * t835) * pkin(7);
t306 = pkin(2) * t353 + pkin(8) * t400 + (-pkin(3) + t902) * t418;
t305 = pkin(2) * t395 - pkin(3) * t483 + pkin(8) * t442 + t361 * t841 + t366 * t838;
t303 = -pkin(1) * t381 - t831 * t407 + t835 * t852;
t302 = -pkin(1) * t436 - t831 * t385 + t835 * t853;
t300 = -pkin(1) * t429 - t831 * t379 + t835 * t854;
t296 = -t323 * t830 + t327 * t834;
t295 = t323 * t834 + t327 * t830;
t294 = -t839 * t329 + t842 * t332 + (-t424 * t831 - t425 * t835) * pkin(7);
t285 = -t314 * t830 + t325 * t834;
t284 = t314 * t834 + t325 * t830;
t283 = -pkin(1) * t424 - t831 * t365 + t835 * t855;
t282 = pkin(2) * t368 - pkin(3) * t432 + pkin(8) * t417 + t304 * t838 + t398 * t841;
t276 = -t839 * t293 + t842 * t297 + (-t336 * t831 - t337 * t835) * pkin(7);
t275 = -t839 * t289 + t842 * t292 + (-t330 * t831 - t331 * t835) * pkin(7);
t274 = -t831 * t315 + t835 * t897;
t273 = t835 * t315 + t831 * t897;
t272 = -pkin(1) * t336 - t831 * t309 + t835 * t856;
t271 = -t839 * t290 + t842 * t298 + (-t313 * t831 - t314 * t835) * pkin(7);
t270 = -pkin(1) * t330 - t831 * t305 + t835 * t858;
t269 = -pkin(1) * t313 - t831 * t306 + t835 * t857;
t268 = pkin(2) * t286 - pkin(3) * t319 + pkin(8) * t316 + t288 * t838 + t301 * t841;
t267 = -t274 * t830 + t278 * t834;
t266 = t274 * t834 + t278 * t830;
t265 = -t839 * t279 + t842 * t280 + (-t322 * t831 - t323 * t835) * pkin(7);
t262 = -pkin(1) * t322 - t831 * t282 + t835 * t859;
t261 = -t839 * t263 + t842 * t264 + (-t273 * t831 - t274 * t835) * pkin(7);
t260 = -pkin(1) * t273 - t831 * t268 + t835 * t860;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t740, 0, 0, 0, 0, 0, 0, t726, t725, 0, t531, 0, 0, 0, 0, 0, 0, t655, t654, 0, t394, 0, 0, 0, 0, 0, 0, t518, t519, t562, t343, 0, 0, 0, 0, 0, 0, t384, t392, t377, t285, 0, 0, 0, 0, 0, 0, t311, t318, t296, t267; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t739, 0, 0, 0, 0, 0, 0, t724, -t865, 0, t530, 0, 0, 0, 0, 0, 0, t653, t652, 0, t393, 0, 0, 0, 0, 0, 0, t516, t517, t561, t342, 0, 0, 0, 0, 0, 0, t383, t391, t376, t284, 0, 0, 0, 0, 0, 0, t310, t317, t295, t266; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t825, 0, 0, 0, 0, 0, 0, t770, -t769, 0, t599, 0, 0, 0, 0, 0, 0, -t717, -t716, 0, t446, 0, 0, 0, 0, 0, 0, t581, t582, t656, t381, 0, 0, 0, 0, 0, 0, t429, t436, t424, t313, 0, 0, 0, 0, 0, 0, t330, t336, t322, t273; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t925, -t924, -t739, -qJ(1) * t739, 0, 0, -t725, 0, t726, t803, -qJ(1) * t724 - t618 * t830 + t665 * t834, qJ(1) * t865 - t617 * t830 + t666 * t834, -t627 * t830 + t636 * t834, -qJ(1) * t530 + t514 * t834 - t532 * t830, 0, 0, -t654, 0, t655, t803, -qJ(1) * t653 - t505 * t830 + t551 * t834, -qJ(1) * t652 - t506 * t830 + t552 * t834, -t459 * t830 + t463 * t834, -qJ(1) * t393 - t352 * t830 + t362 * t834, -t604 * t830 + t650 * t834, -t558 * t830 + t615 * t834, -t602 * t830 + t646 * t834, -t603 * t830 + t649 * t834, -t601 * t830 + t645 * t834, -t670 * t830 + t671 * t834, -qJ(1) * t516 - t374 * t830 + t386 * t834, -qJ(1) * t517 - t375 * t830 + t387 * t834, -qJ(1) * t561 - t378 * t830 + t405 * t834, -qJ(1) * t342 - t303 * t830 + t307 * t834, -t476 * t830 + t496 * t834, -t428 * t830 + t444 * t834, -t438 * t830 + t466 * t834, -t475 * t830 + t495 * t834, -t439 * t830 + t467 * t834, -t490 * t830 + t520 * t834, -qJ(1) * t383 - t300 * t830 + t308 * t834, -qJ(1) * t391 - t302 * t830 + t312 * t834, -qJ(1) * t376 - t283 * t830 + t294 * t834, -qJ(1) * t284 - t269 * t830 + t271 * t834, -t347 * t830 + t364 * t834, -t324 * t830 + t328 * t834, -t340 * t830 + t358 * t834, -t346 * t830 + t363 * t834, -t341 * t830 + t359 * t834, -t380 * t830 + t397 * t834, -qJ(1) * t310 - t270 * t830 + t275 * t834, -qJ(1) * t317 - t272 * t830 + t276 * t834, -qJ(1) * t295 - t262 * t830 + t265 * t834, -qJ(1) * t266 - t260 * t830 + t261 * t834; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t924, -t925, t740, qJ(1) * t740, 0, 0, t865, 0, t724, -t909, qJ(1) * t726 + t618 * t834 + t665 * t830, qJ(1) * t725 + t617 * t834 + t666 * t830, t627 * t834 + t636 * t830, qJ(1) * t531 + t514 * t830 + t532 * t834, 0, 0, -t652, 0, t653, -t909, qJ(1) * t655 + t505 * t834 + t551 * t830, qJ(1) * t654 + t506 * t834 + t552 * t830, t459 * t834 + t463 * t830, qJ(1) * t394 + t352 * t834 + t362 * t830, t604 * t834 + t650 * t830, t558 * t834 + t615 * t830, t602 * t834 + t646 * t830, t603 * t834 + t649 * t830, t601 * t834 + t645 * t830, t670 * t834 + t671 * t830, qJ(1) * t518 + t374 * t834 + t386 * t830, qJ(1) * t519 + t375 * t834 + t387 * t830, qJ(1) * t562 + t378 * t834 + t405 * t830, qJ(1) * t343 + t303 * t834 + t307 * t830, t476 * t834 + t496 * t830, t428 * t834 + t444 * t830, t438 * t834 + t466 * t830, t475 * t834 + t495 * t830, t439 * t834 + t467 * t830, t490 * t834 + t520 * t830, qJ(1) * t384 + t300 * t834 + t308 * t830, qJ(1) * t392 + t302 * t834 + t312 * t830, qJ(1) * t377 + t283 * t834 + t294 * t830, qJ(1) * t285 + t269 * t834 + t271 * t830, t347 * t834 + t364 * t830, t324 * t834 + t328 * t830, t340 * t834 + t358 * t830, t346 * t834 + t363 * t830, t341 * t834 + t359 * t830, t380 * t834 + t397 * t830, qJ(1) * t311 + t270 * t834 + t275 * t830, qJ(1) * t318 + t272 * t834 + t276 * t830, qJ(1) * t296 + t262 * t834 + t265 * t830, qJ(1) * t267 + t260 * t834 + t261 * t830; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t798, t799, 0, 0, 0, 0, t769, 0, t770, t816, pkin(1) * t772 - t835 * t703 + t831 * t900, -pkin(1) * t771 - t835 * t707 + t831 * t901, t637 * t831, pkin(1) * t600 + t831 * t953, 0, 0, t716, 0, -t717, t816, -pkin(1) * t720 + t835 * t613 + t831 * t848, -pkin(1) * t961 + t835 * t614 + t831 * t847, t973 * t831, pkin(1) * t447 + t831 * t844 - t835 * t956, t835 * t745 + t831 * t868, t835 * t731 + t831 * t874, t835 * t748 + t831 * t870, t835 * t744 + t831 * t869, t835 * t746 + t831 * t871, t866 * t831, pkin(1) * t583 + t835 * t546 + t831 * t851, pkin(1) * t584 + t835 * t545 + t831 * t850, pkin(1) * t657 + t835 * t487 + t831 * t849, pkin(1) * t382 + t835 * t407 + t831 * t852, t835 * t642 + t831 * t876, t835 * t597 + t831 * t884, t835 * t606 + t831 * t879, t835 * t641 + t831 * t877, t835 * t607 + t831 * t878, t835 * t668 + t831 * t875, pkin(1) * t430 + t835 * t379 + t831 * t854, pkin(1) * t437 + t835 * t385 + t831 * t853, pkin(1) * t425 + t835 * t365 + t831 * t855, pkin(1) * t314 + t835 * t306 + t831 * t857, t835 * t480 + t831 * t888, t835 * t426 + t831 * t894, t835 * t451 + t831 * t891, t835 * t479 + t831 * t889, t835 * t452 + t831 * t890, t835 * t533 + t831 * t887, pkin(1) * t331 + t835 * t305 + t831 * t858, pkin(1) * t337 + t835 * t309 + t831 * t856, pkin(1) * t323 + t835 * t282 + t831 * t859, pkin(1) * t274 + t835 * t268 + t831 * t860;];
tauB_reg  = t1;
