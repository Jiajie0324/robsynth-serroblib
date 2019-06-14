% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRPRRR1
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,d6,theta1,theta3]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 00:09
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRPRRR1_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRR1_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRR1_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPRRR1_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPRRR1_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRPRRR1_invdynB_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 00:08:01
% EndTime: 2019-05-05 00:08:34
% DurationCPUTime: 31.47s
% Computational Cost: add. (196579->911), mult. (375956->1485), div. (0->0), fcn. (280467->14), ass. (0->643)
t852 = cos(qJ(2));
t839 = sin(pkin(11));
t842 = cos(pkin(11));
t808 = g(1) * t842 + g(2) * t839;
t848 = sin(qJ(2));
t807 = g(1) * t839 - t842 * g(2);
t840 = sin(pkin(6));
t843 = cos(pkin(6));
t935 = g(3) - qJDD(1);
t876 = t843 * t807 - t840 * t935;
t718 = -t852 * t808 + t848 * t876;
t854 = qJD(2) ^ 2;
t712 = -t854 * pkin(2) + t718;
t838 = sin(pkin(12));
t841 = cos(pkin(12));
t717 = -t848 * t808 - t852 * t876;
t856 = qJDD(2) * pkin(2) - t717;
t648 = t712 * t838 - t841 * t856;
t649 = t841 * t712 + t838 * t856;
t919 = t648 * t838 + t841 * t649;
t562 = t648 * t841 - t649 * t838;
t957 = t562 * t848;
t983 = t852 * t919 + t957;
t956 = t562 * t852;
t478 = -t848 * t919 + t956;
t845 = sin(qJ(6));
t846 = sin(qJ(5));
t847 = sin(qJ(4));
t850 = cos(qJ(5));
t851 = cos(qJ(4));
t790 = (t846 * t851 + t847 * t850) * qJD(2);
t834 = qJD(4) + qJD(5);
t849 = cos(qJ(6));
t755 = t790 * t845 - t849 * t834;
t757 = t790 * t849 + t834 * t845;
t691 = t757 * t755;
t930 = qJD(2) * qJD(4);
t920 = t851 * t930;
t928 = qJDD(2) * t847;
t797 = t920 + t928;
t829 = t851 * qJDD(2);
t922 = t847 * t930;
t798 = t829 - t922;
t917 = t846 * t797 - t850 * t798;
t697 = -qJD(5) * t790 - t917;
t860 = qJDD(6) - t697;
t968 = -t691 + t860;
t982 = t845 * t968;
t933 = qJD(2) * t847;
t788 = -t850 * t851 * qJD(2) + t846 * t933;
t742 = t790 * t788;
t833 = qJDD(4) + qJDD(5);
t967 = -t742 + t833;
t981 = t846 * t967;
t980 = t849 * t968;
t979 = t850 * t967;
t779 = t834 * t788;
t859 = qJD(5) * t788 - t797 * t850 - t798 * t846;
t978 = t859 + t779;
t775 = t807 * t840 + t843 * t935;
t770 = -qJDD(3) + t775;
t800 = qJDD(2) * t838 + t841 * t854;
t716 = qJ(3) * t800 - t770 * t841;
t801 = qJDD(2) * t841 - t838 * t854;
t912 = -qJ(3) * t801 - t770 * t838;
t977 = t716 * t848 + t912 * t852;
t976 = t716 * t852 - t912 * t848;
t746 = t800 * t848 - t801 * t852;
t878 = t800 * t852 + t801 * t848;
t971 = t878 * t843;
t668 = t746 * t842 + t839 * t971;
t666 = t746 * t839 - t842 * t971;
t975 = t839 * t935;
t974 = t842 * t935;
t731 = t878 * t840;
t652 = -t755 * qJD(6) + t845 * t833 - t849 * t859;
t781 = qJD(6) + t788;
t711 = t781 * t755;
t612 = -t711 + t652;
t918 = -t849 * t833 - t845 * t859;
t609 = (qJD(6) - t781) * t757 + t918;
t674 = (qJD(5) - t834) * t790 + t917;
t753 = t755 ^ 2;
t754 = t757 ^ 2;
t780 = t781 ^ 2;
t786 = t788 ^ 2;
t787 = t790 ^ 2;
t965 = t834 ^ 2;
t964 = pkin(2) * t562;
t963 = pkin(5) * t846;
t654 = t717 * t848 + t718 * t852;
t962 = pkin(7) * t654;
t875 = -pkin(3) * t854 + qJDD(2) * pkin(8) + t649;
t622 = -t847 * t770 + t851 * t875;
t811 = qJD(4) * pkin(4) - pkin(9) * t933;
t836 = t851 ^ 2;
t831 = t836 * t854;
t577 = -pkin(4) * t831 + pkin(9) * t798 - qJD(4) * t811 + t622;
t858 = t847 * t875;
t939 = t847 * t854;
t855 = -t858 - t797 * pkin(9) + qJDD(4) * pkin(4) + (pkin(4) * t939 + pkin(9) * t930 - t770) * t851;
t499 = t577 * t846 - t850 * t855;
t500 = t850 * t577 + t846 * t855;
t437 = -t499 * t850 + t500 * t846;
t961 = t437 * t847;
t960 = t437 * t851;
t740 = pkin(5) * t788 - pkin(10) * t790;
t481 = -t833 * pkin(5) - pkin(10) * t965 + t740 * t790 + t499;
t959 = t481 * t845;
t958 = t481 * t849;
t640 = -qJDD(2) * pkin(3) - t854 * pkin(8) + t648;
t608 = -t798 * pkin(4) - pkin(9) * t831 + t811 * t933 + t640;
t955 = t608 * t846;
t954 = t608 * t850;
t637 = t691 + t860;
t953 = t637 * t845;
t952 = t637 * t849;
t951 = t640 * t847;
t950 = t640 * t851;
t729 = t742 + t833;
t949 = t729 * t846;
t948 = t729 * t850;
t947 = t781 * t845;
t946 = t781 * t849;
t817 = t851 * t939;
t809 = qJDD(4) + t817;
t945 = t809 * t847;
t810 = qJDD(4) - t817;
t944 = t810 * t847;
t943 = t810 * t851;
t942 = t834 * t846;
t941 = t834 * t850;
t835 = t847 ^ 2;
t940 = t835 * t854;
t938 = t848 * t775;
t936 = t852 * t775;
t482 = -pkin(5) * t965 + pkin(10) * t833 - t740 * t788 + t500;
t524 = t978 * pkin(10) + (t790 * t834 - t697) * pkin(5) + t608;
t434 = t849 * t482 + t845 * t524;
t934 = t835 + t836;
t929 = qJDD(2) * t840;
t927 = t846 * t691;
t926 = t850 * t691;
t925 = t838 * t742;
t924 = t841 * t742;
t923 = -pkin(5) * t850 - pkin(4);
t921 = t842 * t929;
t433 = t482 * t845 - t849 * t524;
t438 = t499 * t846 + t850 * t500;
t621 = t851 * t770 + t858;
t531 = t621 * t847 + t851 * t622;
t752 = -t807 * t839 - t842 * t808;
t916 = t838 * t817;
t915 = t841 * t817;
t803 = qJDD(2) * t852 - t848 * t854;
t914 = -pkin(7) * t803 - t938;
t877 = qJDD(2) * t848 + t852 * t854;
t913 = -pkin(7) * t877 + t936;
t378 = t433 * t845 + t434 * t849;
t356 = t378 * t846 - t481 * t850;
t357 = t378 * t850 + t481 * t846;
t329 = -t356 * t847 + t357 * t851;
t377 = -t433 * t849 + t434 * t845;
t310 = t329 * t838 - t377 * t841;
t311 = t329 * t841 + t377 * t838;
t911 = t310 * t852 + t311 * t848;
t380 = t438 * t851 - t961;
t373 = t380 * t838 - t608 * t841;
t374 = t380 * t841 + t608 * t838;
t910 = t373 * t852 + t374 * t848;
t613 = -t711 - t652;
t527 = -t609 * t849 - t613 * t845;
t657 = t753 + t754;
t487 = t527 * t846 + t657 * t850;
t488 = t527 * t850 - t657 * t846;
t427 = -t487 * t847 + t488 * t851;
t525 = -t609 * t845 + t613 * t849;
t397 = t427 * t838 - t525 * t841;
t398 = t427 * t841 + t525 * t838;
t909 = t397 * t852 + t398 * t848;
t611 = (-qJD(6) - t781) * t757 - t918;
t528 = t611 * t849 - t612 * t845;
t690 = -t754 + t753;
t496 = t528 * t846 + t690 * t850;
t497 = t528 * t850 - t690 * t846;
t432 = -t496 * t847 + t497 * t851;
t526 = -t611 * t845 - t612 * t849;
t403 = t432 * t838 + t526 * t841;
t404 = t432 * t841 - t526 * t838;
t908 = t403 * t852 + t404 * t848;
t670 = -t780 - t753;
t567 = t670 * t849 - t982;
t501 = t567 * t846 + t611 * t850;
t502 = t567 * t850 - t611 * t846;
t440 = -t501 * t847 + t502 * t851;
t566 = t670 * t845 + t980;
t410 = t440 * t838 - t566 * t841;
t411 = t440 * t841 + t566 * t838;
t907 = t410 * t852 + t411 * t848;
t688 = -t754 - t780;
t569 = -t688 * t845 - t952;
t504 = t569 * t846 - t612 * t850;
t505 = t569 * t850 + t612 * t846;
t442 = -t504 * t847 + t505 * t851;
t568 = t688 * t849 - t953;
t415 = t442 * t838 - t568 * t841;
t416 = t442 * t841 + t568 * t838;
t906 = t415 * t852 + t416 * t848;
t706 = -t754 + t780;
t584 = -t706 * t845 + t980;
t510 = t584 * t846 + t613 * t850;
t512 = t584 * t850 - t613 * t846;
t446 = -t510 * t847 + t512 * t851;
t582 = -t706 * t849 - t982;
t419 = t446 * t838 + t582 * t841;
t421 = t446 * t841 - t582 * t838;
t905 = t419 * t852 + t421 * t848;
t705 = t753 - t780;
t585 = t705 * t849 - t953;
t511 = t585 * t846 + t609 * t850;
t513 = t585 * t850 - t609 * t846;
t447 = -t511 * t847 + t513 * t851;
t583 = -t705 * t845 - t952;
t420 = t447 * t838 + t583 * t841;
t422 = t447 * t841 - t583 * t838;
t904 = t420 * t852 + t422 * t848;
t651 = -qJD(6) * t757 - t918;
t600 = -t651 * t845 + t755 * t946;
t552 = t600 * t846 + t926;
t554 = t600 * t850 - t927;
t473 = -t552 * t847 + t554 * t851;
t599 = -t651 * t849 - t755 * t947;
t457 = t473 * t838 + t599 * t841;
t459 = t473 * t841 - t599 * t838;
t903 = t457 * t852 + t459 * t848;
t602 = t652 * t849 - t757 * t947;
t553 = t602 * t846 - t926;
t555 = t602 * t850 + t927;
t474 = -t553 * t847 + t555 * t851;
t601 = -t652 * t845 - t757 * t946;
t458 = t474 * t838 + t601 * t841;
t460 = t474 * t841 - t601 * t838;
t902 = t458 * t852 + t460 * t848;
t647 = (-t755 * t849 + t757 * t845) * t781;
t588 = t647 * t846 - t850 * t860;
t589 = t647 * t850 + t846 * t860;
t507 = -t588 * t847 + t589 * t851;
t646 = (t755 * t845 + t757 * t849) * t781;
t469 = t507 * t838 + t646 * t841;
t470 = t507 * t841 - t646 * t838;
t901 = t469 * t852 + t470 * t848;
t483 = t531 * t838 - t640 * t841;
t484 = t531 * t841 + t640 * t838;
t900 = t483 * t852 + t484 * t848;
t678 = -t779 + t859;
t594 = -t674 * t846 + t678 * t850;
t596 = -t674 * t850 - t678 * t846;
t517 = -t594 * t847 + t596 * t851;
t699 = -t786 - t787;
t489 = t517 * t838 - t699 * t841;
t490 = t517 * t841 + t699 * t838;
t899 = t489 * t852 + t490 * t848;
t673 = (qJD(5) + t834) * t790 + t917;
t593 = -t673 * t846 - t850 * t978;
t595 = -t673 * t850 + t846 * t978;
t516 = -t593 * t847 + t595 * t851;
t741 = -t787 + t786;
t493 = t516 * t838 + t741 * t841;
t494 = t516 * t841 - t741 * t838;
t898 = t493 * t852 + t494 * t848;
t727 = -t965 - t786;
t660 = t727 * t846 + t979;
t661 = t727 * t850 - t981;
t573 = -t660 * t847 + t661 * t851;
t533 = t573 * t838 - t673 * t841;
t534 = t573 * t841 + t673 * t838;
t897 = t533 * t852 + t534 * t848;
t769 = -t787 - t965;
t679 = t769 * t850 - t949;
t680 = -t769 * t846 - t948;
t598 = -t679 * t847 + t680 * t851;
t541 = t598 * t838 + t841 * t978;
t542 = t598 * t841 - t838 * t978;
t896 = t541 * t852 + t542 * t848;
t777 = -t787 + t965;
t684 = t777 * t850 + t981;
t686 = -t777 * t846 + t979;
t605 = -t684 * t847 + t686 * t851;
t546 = t605 * t838 + t678 * t841;
t548 = t605 * t841 - t678 * t838;
t895 = t546 * t852 + t548 * t848;
t776 = t786 - t965;
t685 = t776 * t846 + t948;
t687 = t776 * t850 - t949;
t606 = -t685 * t847 + t687 * t851;
t547 = t606 * t838 + t674 * t841;
t549 = t606 * t841 - t674 * t838;
t894 = t547 * t852 + t549 * t848;
t662 = t697 * t850 + t788 * t942;
t663 = -t697 * t846 + t788 * t941;
t580 = -t662 * t847 + t663 * t851;
t556 = t580 * t838 + t924;
t558 = t580 * t841 - t925;
t893 = t556 * t852 + t558 * t848;
t664 = t790 * t941 - t846 * t859;
t665 = -t790 * t942 - t850 * t859;
t581 = -t664 * t847 + t665 * t851;
t557 = t581 * t838 - t924;
t559 = t581 * t841 + t925;
t892 = t557 * t852 + t559 * t848;
t530 = t621 * t851 - t622 * t847;
t703 = (-t788 * t846 - t790 * t850) * t834;
t704 = (-t788 * t850 + t790 * t846) * t834;
t642 = -t703 * t847 + t704 * t851;
t629 = t642 * t838 - t833 * t841;
t630 = t642 * t841 + t833 * t838;
t889 = t629 * t852 + t630 * t848;
t796 = 0.2e1 * t920 + t928;
t799 = t829 - 0.2e1 * t922;
t744 = -t796 * t847 + t799 * t851;
t806 = t831 - t940;
t695 = t744 * t838 + t806 * t841;
t696 = t744 * t841 - t806 * t838;
t888 = t695 * t852 + t696 * t848;
t853 = qJD(4) ^ 2;
t816 = -t831 - t853;
t766 = t816 * t851 - t945;
t707 = t766 * t838 + t799 * t841;
t709 = t766 * t841 - t799 * t838;
t887 = t707 * t852 + t709 * t848;
t814 = -t853 - t940;
t768 = -t814 * t847 - t943;
t708 = t768 * t838 - t796 * t841;
t710 = t768 * t841 + t796 * t838;
t886 = t708 * t852 + t710 * t848;
t653 = t717 * t852 - t718 * t848;
t815 = t831 - t853;
t765 = t815 * t851 - t944;
t719 = t765 * t838 - t829 * t841;
t721 = t765 * t841 + t829 * t838;
t885 = t719 * t852 + t721 * t848;
t795 = t851 * t809;
t813 = t853 - t940;
t767 = -t813 * t847 + t795;
t720 = t767 * t838 - t841 * t928;
t722 = t767 * t841 + t838 * t928;
t884 = t720 * t852 + t722 * t848;
t773 = -t798 * t847 - t836 * t930;
t723 = t773 * t838 - t915;
t725 = t773 * t841 + t916;
t883 = t723 * t852 + t725 * t848;
t774 = t797 * t851 - t835 * t930;
t724 = t774 * t838 + t915;
t726 = t774 * t841 - t916;
t882 = t724 * t852 + t726 * t848;
t802 = t934 * qJDD(2);
t805 = t831 + t940;
t748 = t802 * t838 + t805 * t841;
t749 = t802 * t841 - t805 * t838;
t881 = t748 * t852 + t749 * t848;
t794 = t934 * t930;
t771 = -qJDD(4) * t841 + t794 * t838;
t772 = qJDD(4) * t838 + t794 * t841;
t880 = t771 * t852 + t772 * t848;
t784 = t877 * t843;
t879 = t784 * t842 + t803 * t839;
t738 = t784 * t839 - t803 * t842;
t751 = t807 * t842 - t808 * t839;
t304 = pkin(9) * t357 + (-pkin(10) * t846 + t923) * t377;
t316 = -pkin(9) * t356 + (-pkin(10) * t850 + t963) * t377;
t328 = t356 * t851 + t357 * t847;
t286 = -pkin(8) * t328 - t304 * t847 + t316 * t851;
t299 = -pkin(3) * t328 - pkin(4) * t356 + pkin(5) * t481 - pkin(10) * t378;
t274 = -pkin(2) * t328 + qJ(3) * t311 + t286 * t838 + t299 * t841;
t276 = -qJ(3) * t310 + t286 * t841 - t299 * t838;
t291 = -t310 * t848 + t311 * t852;
t874 = pkin(7) * t291 + t274 * t852 + t276 * t848;
t366 = -pkin(10) * t525 - t377;
t338 = pkin(9) * t488 + t846 * t366 + t525 * t923;
t344 = -pkin(9) * t487 + t366 * t850 + t525 * t963;
t426 = t487 * t851 + t488 * t847;
t305 = -pkin(8) * t426 - t338 * t847 + t344 * t851;
t333 = -pkin(3) * t426 - pkin(4) * t487 - pkin(5) * t657 - pkin(10) * t527 - t378;
t289 = -pkin(2) * t426 + qJ(3) * t398 + t305 * t838 + t333 * t841;
t292 = -qJ(3) * t397 + t305 * t841 - t333 * t838;
t347 = -t397 * t848 + t398 * t852;
t873 = pkin(7) * t347 + t289 * t852 + t292 * t848;
t379 = t438 * t847 + t960;
t418 = -pkin(4) * t608 + pkin(9) * t438;
t332 = -pkin(8) * t379 - pkin(9) * t960 - t418 * t847;
t348 = -pkin(3) * t379 - pkin(4) * t437;
t294 = -pkin(2) * t379 + qJ(3) * t374 + t332 * t838 + t348 * t841;
t303 = -qJ(3) * t373 + t332 * t841 - t348 * t838;
t331 = -t373 * t848 + t374 * t852;
t872 = pkin(7) * t331 + t294 * t852 + t303 * t848;
t408 = -pkin(5) * t566 + t433;
t450 = -pkin(10) * t566 + t959;
t350 = -pkin(4) * t566 + pkin(9) * t502 + t408 * t850 + t450 * t846;
t355 = -pkin(9) * t501 - t408 * t846 + t450 * t850;
t439 = t501 * t851 + t502 * t847;
t318 = -pkin(8) * t439 - t350 * t847 + t355 * t851;
t362 = -pkin(3) * t439 - pkin(4) * t501 - pkin(5) * t611 - pkin(10) * t567 + t958;
t295 = -pkin(2) * t439 + qJ(3) * t411 + t318 * t838 + t362 * t841;
t300 = -qJ(3) * t410 + t318 * t841 - t362 * t838;
t361 = -t410 * t848 + t411 * t852;
t871 = pkin(7) * t361 + t295 * t852 + t300 * t848;
t409 = -pkin(5) * t568 + t434;
t454 = -pkin(10) * t568 + t958;
t352 = -pkin(4) * t568 + pkin(9) * t505 + t409 * t850 + t454 * t846;
t358 = -pkin(9) * t504 - t409 * t846 + t454 * t850;
t441 = t504 * t851 + t505 * t847;
t321 = -pkin(8) * t441 - t352 * t847 + t358 * t851;
t364 = -pkin(3) * t441 - pkin(4) * t504 + pkin(5) * t612 - pkin(10) * t569 - t959;
t296 = -pkin(2) * t441 + qJ(3) * t416 + t321 * t838 + t364 * t841;
t302 = -qJ(3) * t415 + t321 * t841 - t364 * t838;
t365 = -t415 * t848 + t416 * t852;
t870 = pkin(7) * t365 + t296 * t852 + t302 * t848;
t407 = -pkin(4) * t699 + pkin(9) * t596 + t438;
t417 = -pkin(9) * t594 - t437;
t515 = t594 * t851 + t596 * t847;
t349 = -pkin(8) * t515 - t407 * t847 + t417 * t851;
t464 = -pkin(3) * t515 - pkin(4) * t594;
t330 = -pkin(2) * t515 + qJ(3) * t490 + t349 * t838 + t464 * t841;
t334 = -qJ(3) * t489 + t349 * t841 - t464 * t838;
t428 = -t489 * t848 + t490 * t852;
t869 = pkin(7) * t428 + t330 * t852 + t334 * t848;
t518 = -pkin(4) * t673 + pkin(9) * t661 - t954;
t543 = -pkin(9) * t660 + t955;
t572 = t660 * t851 + t661 * t847;
t429 = -pkin(8) * t572 - t518 * t847 + t543 * t851;
t451 = -pkin(3) * t572 - pkin(4) * t660 + t499;
t363 = -pkin(2) * t572 + qJ(3) * t534 + t429 * t838 + t451 * t841;
t372 = -qJ(3) * t533 + t429 * t841 - t451 * t838;
t462 = -t533 * t848 + t534 * t852;
t868 = pkin(7) * t462 + t363 * t852 + t372 * t848;
t521 = pkin(4) * t978 + pkin(9) * t680 + t955;
t551 = -pkin(9) * t679 + t954;
t597 = t679 * t851 + t680 * t847;
t443 = -pkin(8) * t597 - t521 * t847 + t551 * t851;
t461 = -pkin(3) * t597 - pkin(4) * t679 + t500;
t367 = -pkin(2) * t597 + qJ(3) * t542 + t443 * t838 + t461 * t841;
t376 = -qJ(3) * t541 + t443 * t841 - t461 * t838;
t463 = -t541 * t848 + t542 * t852;
t867 = pkin(7) * t463 + t367 * t852 + t376 * t848;
t382 = qJ(3) * t484 - (-pkin(3) * t841 - pkin(8) * t838 - pkin(2)) * t530;
t406 = -qJ(3) * t483 - (pkin(3) * t838 - pkin(8) * t841) * t530;
t424 = -t483 * t848 + t484 * t852;
t866 = pkin(7) * t424 + t382 * t852 + t406 * t848;
t762 = t816 * t847 + t795;
t586 = -pkin(3) * t762 + t621;
t619 = -pkin(8) * t762 + t951;
t485 = -pkin(2) * t762 + qJ(3) * t709 + t586 * t841 + t619 * t838;
t491 = -qJ(3) * t707 - t586 * t838 + t619 * t841;
t644 = -t707 * t848 + t709 * t852;
t865 = pkin(7) * t644 + t485 * t852 + t491 * t848;
t764 = t814 * t851 - t944;
t587 = -pkin(3) * t764 + t622;
t620 = -pkin(8) * t764 + t950;
t486 = -pkin(2) * t764 + qJ(3) * t710 + t587 * t841 + t620 * t838;
t492 = -qJ(3) * t708 - t587 * t838 + t620 * t841;
t645 = -t708 * t848 + t710 * t852;
t864 = pkin(7) * t645 + t486 * t852 + t492 * t848;
t508 = qJ(3) * t749 + t530 * t838;
t509 = -qJ(3) * t748 + t530 * t841;
t683 = -t748 * t848 + t749 * t852;
t863 = pkin(7) * t683 + t508 * t852 + t509 * t848;
t862 = -pkin(7) * t878 - t976;
t861 = pkin(7) * t746 + t977;
t540 = pkin(2) * t770 + qJ(3) * t919;
t857 = pkin(7) * t983 + qJ(3) * t957 + t540 * t852;
t826 = t843 * qJDD(2);
t812 = t839 * t929;
t785 = t803 * t843;
t783 = t803 * t840;
t782 = t877 * t840;
t763 = t813 * t851 + t945;
t761 = t815 * t847 + t943;
t760 = (t797 + t920) * t847;
t759 = (t798 - t922) * t851;
t743 = t796 * t851 + t799 * t847;
t739 = -t785 * t839 - t842 * t877;
t737 = t785 * t842 - t839 * t877;
t735 = t746 * t843;
t732 = t746 * t840;
t692 = -t771 * t848 + t772 * t852;
t689 = t880 * t843;
t682 = -t936 + (t782 * t840 + t784 * t843) * pkin(7);
t681 = -t938 + (-t783 * t840 - t785 * t843) * pkin(7);
t672 = t881 * t843;
t671 = t881 * t840;
t669 = t735 * t839 - t842 * t878;
t667 = -t735 * t842 - t839 * t878;
t659 = -t724 * t848 + t726 * t852;
t658 = -t723 * t848 + t725 * t852;
t656 = -t720 * t848 + t722 * t852;
t655 = -t719 * t848 + t721 * t852;
t650 = t654 * t843;
t641 = t703 * t851 + t704 * t847;
t635 = -pkin(1) * t783 + t840 * t717 + t843 * t913;
t634 = pkin(1) * t782 + t840 * t718 + t843 * t914;
t633 = -t695 * t848 + t696 * t852;
t632 = -pkin(2) * t800 - t649;
t631 = pkin(2) * t801 - t648;
t628 = -t840 * t760 + t843 * t882;
t627 = -t840 * t759 + t843 * t883;
t626 = -t840 * t763 + t843 * t884;
t625 = -t840 * t761 + t843 * t885;
t624 = -t653 * t843 + t840 * t775;
t623 = -t653 * t840 - t843 * t775;
t618 = -t840 * t764 + t843 * t886;
t617 = -t840 * t762 + t843 * t887;
t616 = t843 * t764 + t840 * t886;
t615 = t843 * t762 + t840 * t887;
t604 = t685 * t851 + t687 * t847;
t603 = t684 * t851 + t686 * t847;
t592 = -t672 * t839 + t683 * t842;
t591 = t672 * t842 + t683 * t839;
t590 = -t840 * t743 + t843 * t888;
t579 = t664 * t851 + t665 * t847;
t578 = t662 * t851 + t663 * t847;
t571 = (t731 * t840 + t843 * t971) * pkin(7) + t976;
t570 = (t732 * t840 + t735 * t843) * pkin(7) + t977;
t565 = pkin(2) * t707 + pkin(3) * t799 + pkin(8) * t766 - t950;
t564 = pkin(2) * t708 - pkin(3) * t796 + pkin(8) * t768 + t951;
t550 = -pkin(1) * t623 + t843 * t962;
t545 = -t624 * t839 + t654 * t842;
t544 = t624 * t842 + t654 * t839;
t539 = -t629 * t848 + t630 * t852;
t538 = -t618 * t839 + t645 * t842;
t537 = -t617 * t839 + t644 * t842;
t536 = t618 * t842 + t645 * t839;
t535 = t617 * t842 + t644 * t839;
t532 = (-t623 * t840 - t624 * t843) * pkin(7);
t523 = pkin(1) * t731 - t632 * t840 + t843 * t861;
t522 = pkin(1) * t732 - t631 * t840 + t843 * t862;
t514 = t593 * t851 + t595 * t847;
t506 = t588 * t851 + t589 * t847;
t503 = pkin(2) * t748 + pkin(3) * t805 + pkin(8) * t802 + t531;
t495 = -t840 * t641 + t843 * t889;
t477 = -t557 * t848 + t559 * t852;
t476 = -t556 * t848 + t558 * t852;
t475 = t983 * t843;
t472 = t553 * t851 + t555 * t847;
t471 = t552 * t851 + t554 * t847;
t468 = -t478 * t843 + t840 * t770;
t467 = -t478 * t840 - t843 * t770;
t466 = -t547 * t848 + t549 * t852;
t465 = -t546 * t848 + t548 * t852;
t456 = -t840 * t579 + t843 * t892;
t455 = -t840 * t578 + t843 * t893;
t453 = -t840 * t604 + t843 * t894;
t452 = -t840 * t603 + t843 * t895;
t449 = -t840 * t597 + t843 * t896;
t448 = t843 * t597 + t840 * t896;
t445 = t511 * t851 + t513 * t847;
t444 = t510 * t851 + t512 * t847;
t436 = -t840 * t572 + t843 * t897;
t435 = t843 * t572 + t840 * t897;
t431 = t496 * t851 + t497 * t847;
t430 = -t493 * t848 + t494 * t852;
t425 = pkin(2) * t483 - pkin(3) * t640 + pkin(8) * t531;
t423 = -t508 * t848 + t509 * t852 + (-t671 * t840 - t672 * t843) * pkin(7);
t414 = -t469 * t848 + t470 * t852;
t413 = -t468 * t839 + t842 * t983;
t412 = t468 * t842 + t839 * t983;
t405 = pkin(2) * t541 + pkin(3) * t978 + pkin(8) * t598 + t521 * t851 + t551 * t847;
t402 = -t848 * t486 + t852 * t492 + (-t616 * t840 - t618 * t843) * pkin(7);
t401 = -t848 * t485 + t852 * t491 + (-t615 * t840 - t617 * t843) * pkin(7);
t400 = -t840 * t514 + t843 * t898;
t399 = pkin(2) * t533 - pkin(3) * t673 + pkin(8) * t573 + t518 * t851 + t543 * t847;
t396 = -t840 * t515 + t843 * t899;
t395 = t843 * t515 + t840 * t899;
t394 = t530 * t840 + t843 * t900;
t393 = -t530 * t843 + t840 * t900;
t392 = -t449 * t839 + t463 * t842;
t391 = t449 * t842 + t463 * t839;
t390 = -pkin(1) * t671 - t503 * t840 + t843 * t863;
t389 = -t458 * t848 + t460 * t852;
t388 = -t457 * t848 + t459 * t852;
t387 = -pkin(1) * t616 - t564 * t840 + t843 * t864;
t386 = -pkin(1) * t615 - t565 * t840 + t843 * t865;
t385 = -t840 * t506 + t843 * t901;
t384 = -t436 * t839 + t462 * t842;
t383 = t436 * t842 + t462 * t839;
t381 = qJ(3) * t956 - t540 * t848 + (-t467 * t840 - t468 * t843) * pkin(7);
t375 = -pkin(1) * t467 + t840 * t964 + t843 * t857;
t371 = -t840 * t472 + t843 * t902;
t370 = -t840 * t471 + t843 * t903;
t369 = -t420 * t848 + t422 * t852;
t368 = -t419 * t848 + t421 * t852;
t360 = -t396 * t839 + t428 * t842;
t359 = t396 * t842 + t428 * t839;
t354 = -t394 * t839 + t424 * t842;
t353 = t394 * t842 + t424 * t839;
t351 = -t403 * t848 + t404 * t852;
t346 = -t840 * t445 + t843 * t904;
t345 = -t840 * t444 + t843 * t905;
t343 = -t840 * t441 + t843 * t906;
t342 = t843 * t441 + t840 * t906;
t341 = -t840 * t439 + t843 * t907;
t340 = t843 * t439 + t840 * t907;
t339 = pkin(2) * t489 - pkin(3) * t699 + pkin(8) * t517 + t407 * t851 + t417 * t847;
t337 = -t840 * t431 + t843 * t908;
t336 = -t840 * t426 + t843 * t909;
t335 = t843 * t426 + t840 * t909;
t327 = -t343 * t839 + t365 * t842;
t326 = t343 * t842 + t365 * t839;
t325 = -t341 * t839 + t361 * t842;
t324 = t341 * t842 + t361 * t839;
t323 = -t848 * t367 + t852 * t376 + (-t448 * t840 - t449 * t843) * pkin(7);
t322 = -t848 * t382 + t852 * t406 + (-t393 * t840 - t394 * t843) * pkin(7);
t320 = -t840 * t379 + t843 * t910;
t319 = t843 * t379 + t840 * t910;
t317 = pkin(2) * t373 - pkin(3) * t608 + pkin(8) * t380 - pkin(9) * t961 + t418 * t851;
t315 = -t848 * t363 + t852 * t372 + (-t435 * t840 - t436 * t843) * pkin(7);
t314 = -pkin(1) * t393 - t425 * t840 + t843 * t866;
t313 = -t336 * t839 + t347 * t842;
t312 = t336 * t842 + t347 * t839;
t309 = -pkin(1) * t448 - t405 * t840 + t843 * t867;
t308 = pkin(2) * t415 - pkin(3) * t568 + pkin(8) * t442 + t352 * t851 + t358 * t847;
t307 = -pkin(1) * t435 - t399 * t840 + t843 * t868;
t306 = pkin(2) * t410 - pkin(3) * t566 + pkin(8) * t440 + t350 * t851 + t355 * t847;
t301 = pkin(2) * t397 - pkin(3) * t525 + pkin(8) * t427 + t338 * t851 + t344 * t847;
t298 = -t320 * t839 + t331 * t842;
t297 = t320 * t842 + t331 * t839;
t293 = -t848 * t330 + t852 * t334 + (-t395 * t840 - t396 * t843) * pkin(7);
t290 = -pkin(1) * t395 - t339 * t840 + t843 * t869;
t288 = -t840 * t328 + t843 * t911;
t287 = t843 * t328 + t840 * t911;
t285 = -t848 * t296 + t852 * t302 + (-t342 * t840 - t343 * t843) * pkin(7);
t284 = -t848 * t295 + t852 * t300 + (-t340 * t840 - t341 * t843) * pkin(7);
t283 = pkin(2) * t310 - pkin(3) * t377 + pkin(8) * t329 + t304 * t851 + t316 * t847;
t282 = -t848 * t294 + t852 * t303 + (-t319 * t840 - t320 * t843) * pkin(7);
t281 = -t288 * t839 + t291 * t842;
t280 = t288 * t842 + t291 * t839;
t279 = -pkin(1) * t342 - t308 * t840 + t843 * t870;
t278 = -pkin(1) * t340 - t306 * t840 + t843 * t871;
t277 = -t848 * t289 + t852 * t292 + (-t335 * t840 - t336 * t843) * pkin(7);
t275 = -pkin(1) * t319 - t317 * t840 + t843 * t872;
t273 = -pkin(1) * t335 - t301 * t840 + t843 * t873;
t272 = -t848 * t274 + t852 * t276 + (-t287 * t840 - t288 * t843) * pkin(7);
t271 = -pkin(1) * t287 - t283 * t840 + t843 * t874;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t752, 0, 0, 0, 0, 0, 0, t739, t738, 0, t545, 0, 0, 0, 0, 0, 0, t669, t668, 0, t413, 0, 0, 0, 0, 0, 0, t537, t538, t592, t354, 0, 0, 0, 0, 0, 0, t384, t392, t360, t298, 0, 0, 0, 0, 0, 0, t325, t327, t313, t281; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t751, 0, 0, 0, 0, 0, 0, t737, -t879, 0, t544, 0, 0, 0, 0, 0, 0, t667, t666, 0, t412, 0, 0, 0, 0, 0, 0, t535, t536, t591, t353, 0, 0, 0, 0, 0, 0, t383, t391, t359, t297, 0, 0, 0, 0, 0, 0, t324, t326, t312, t280; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t935, 0, 0, 0, 0, 0, 0, t783, -t782, 0, t623, 0, 0, 0, 0, 0, 0, -t732, -t731, 0, t467, 0, 0, 0, 0, 0, 0, t615, t616, t671, t393, 0, 0, 0, 0, 0, 0, t435, t448, t395, t319, 0, 0, 0, 0, 0, 0, t340, t342, t335, t287; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t975, -t974, -t751, -qJ(1) * t751, 0, 0, -t738, 0, t739, t812, -qJ(1) * t737 - t635 * t839 + t681 * t842, qJ(1) * t879 - t634 * t839 + t682 * t842, -t650 * t839 + t653 * t842, -qJ(1) * t544 + t532 * t842 - t550 * t839, 0, 0, -t668, 0, t669, t812, -qJ(1) * t667 - t522 * t839 + t570 * t842, -qJ(1) * t666 - t523 * t839 + t571 * t842, -t475 * t839 + t478 * t842, -qJ(1) * t412 - t375 * t839 + t381 * t842, -t628 * t839 + t659 * t842, -t590 * t839 + t633 * t842, -t626 * t839 + t656 * t842, -t627 * t839 + t658 * t842, -t625 * t839 + t655 * t842, -t689 * t839 + t692 * t842, -qJ(1) * t535 - t386 * t839 + t401 * t842, -qJ(1) * t536 - t387 * t839 + t402 * t842, -qJ(1) * t591 - t390 * t839 + t423 * t842, -qJ(1) * t353 - t314 * t839 + t322 * t842, -t456 * t839 + t477 * t842, -t400 * t839 + t430 * t842, -t452 * t839 + t465 * t842, -t455 * t839 + t476 * t842, -t453 * t839 + t466 * t842, -t495 * t839 + t539 * t842, -qJ(1) * t383 - t307 * t839 + t315 * t842, -qJ(1) * t391 - t309 * t839 + t323 * t842, -qJ(1) * t359 - t290 * t839 + t293 * t842, -qJ(1) * t297 - t275 * t839 + t282 * t842, -t371 * t839 + t389 * t842, -t337 * t839 + t351 * t842, -t345 * t839 + t368 * t842, -t370 * t839 + t388 * t842, -t346 * t839 + t369 * t842, -t385 * t839 + t414 * t842, -qJ(1) * t324 - t278 * t839 + t284 * t842, -qJ(1) * t326 - t279 * t839 + t285 * t842, -qJ(1) * t312 - t273 * t839 + t277 * t842, -qJ(1) * t280 - t271 * t839 + t272 * t842; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t974, -t975, t752, qJ(1) * t752, 0, 0, t879, 0, t737, -t921, qJ(1) * t739 + t635 * t842 + t681 * t839, qJ(1) * t738 + t634 * t842 + t682 * t839, t650 * t842 + t653 * t839, qJ(1) * t545 + t532 * t839 + t550 * t842, 0, 0, -t666, 0, t667, -t921, qJ(1) * t669 + t522 * t842 + t570 * t839, qJ(1) * t668 + t523 * t842 + t571 * t839, t475 * t842 + t478 * t839, qJ(1) * t413 + t375 * t842 + t381 * t839, t628 * t842 + t659 * t839, t590 * t842 + t633 * t839, t626 * t842 + t656 * t839, t627 * t842 + t658 * t839, t625 * t842 + t655 * t839, t689 * t842 + t692 * t839, qJ(1) * t537 + t386 * t842 + t401 * t839, qJ(1) * t538 + t387 * t842 + t402 * t839, qJ(1) * t592 + t390 * t842 + t423 * t839, qJ(1) * t354 + t314 * t842 + t322 * t839, t456 * t842 + t477 * t839, t400 * t842 + t430 * t839, t452 * t842 + t465 * t839, t455 * t842 + t476 * t839, t453 * t842 + t466 * t839, t495 * t842 + t539 * t839, qJ(1) * t384 + t307 * t842 + t315 * t839, qJ(1) * t392 + t309 * t842 + t323 * t839, qJ(1) * t360 + t290 * t842 + t293 * t839, qJ(1) * t298 + t275 * t842 + t282 * t839, t371 * t842 + t389 * t839, t337 * t842 + t351 * t839, t345 * t842 + t368 * t839, t370 * t842 + t388 * t839, t346 * t842 + t369 * t839, t385 * t842 + t414 * t839, qJ(1) * t325 + t278 * t842 + t284 * t839, qJ(1) * t327 + t279 * t842 + t285 * t839, qJ(1) * t313 + t273 * t842 + t277 * t839, qJ(1) * t281 + t271 * t842 + t272 * t839; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t807, t808, 0, 0, 0, 0, t782, 0, t783, t826, pkin(1) * t785 - t843 * t717 + t840 * t913, -pkin(1) * t784 - t843 * t718 + t840 * t914, t654 * t840, pkin(1) * t624 + t840 * t962, 0, 0, t731, 0, -t732, t826, -pkin(1) * t735 + t631 * t843 + t840 * t862, -pkin(1) * t971 + t632 * t843 + t840 * t861, t983 * t840, pkin(1) * t468 + t840 * t857 - t843 * t964, t843 * t760 + t840 * t882, t843 * t743 + t840 * t888, t843 * t763 + t840 * t884, t843 * t759 + t840 * t883, t843 * t761 + t840 * t885, t880 * t840, pkin(1) * t617 + t565 * t843 + t840 * t865, pkin(1) * t618 + t564 * t843 + t840 * t864, pkin(1) * t672 + t503 * t843 + t840 * t863, pkin(1) * t394 + t425 * t843 + t840 * t866, t843 * t579 + t840 * t892, t843 * t514 + t840 * t898, t843 * t603 + t840 * t895, t843 * t578 + t840 * t893, t843 * t604 + t840 * t894, t843 * t641 + t840 * t889, pkin(1) * t436 + t399 * t843 + t840 * t868, pkin(1) * t449 + t405 * t843 + t840 * t867, pkin(1) * t396 + t339 * t843 + t840 * t869, pkin(1) * t320 + t317 * t843 + t840 * t872, t843 * t472 + t840 * t902, t843 * t431 + t840 * t908, t843 * t444 + t840 * t905, t843 * t471 + t840 * t903, t843 * t445 + t840 * t904, t843 * t506 + t840 * t901, pkin(1) * t341 + t306 * t843 + t840 * t871, pkin(1) * t343 + t308 * t843 + t840 * t870, pkin(1) * t336 + t301 * t843 + t840 * t873, pkin(1) * t288 + t283 * t843 + t840 * t874;];
tauB_reg  = t1;
