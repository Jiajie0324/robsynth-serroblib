% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRRPRP1
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
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1,theta4]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 03:41
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRRPRP1_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP1_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP1_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRPRP1_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRP1_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRRPRP1_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 03:40:44
% EndTime: 2019-05-05 03:41:10
% DurationCPUTime: 24.99s
% Computational Cost: add. (147041->854), mult. (321234->1326), div. (0->0), fcn. (236368->12), ass. (0->636)
t858 = sin(qJ(5));
t850 = sin(pkin(11));
t853 = cos(pkin(11));
t862 = cos(qJ(3));
t967 = qJD(2) * t862;
t859 = sin(qJ(3));
t968 = qJD(2) * t859;
t809 = t850 * t967 + t853 * t968;
t861 = cos(qJ(5));
t776 = -t861 * qJD(3) + t809 * t858;
t778 = qJD(3) * t858 + t809 * t861;
t725 = t778 * t776;
t961 = qJD(2) * qJD(3);
t947 = t862 * t961;
t959 = qJDD(2) * t859;
t817 = t947 + t959;
t948 = t859 * t961;
t957 = qJDD(2) * t862;
t884 = t948 - t957;
t936 = t817 * t850 + t853 * t884;
t761 = qJDD(5) + t936;
t938 = -t761 + t725;
t994 = t938 * t858;
t993 = t938 * t861;
t1024 = t938 * pkin(5);
t852 = sin(pkin(6));
t855 = cos(pkin(6));
t851 = sin(pkin(10));
t854 = cos(pkin(10));
t941 = g(1) * t851 - t854 * g(2);
t977 = g(3) - qJDD(1);
t1027 = -t852 * t977 + t855 * t941;
t966 = qJD(3) * t809;
t726 = t936 + t966;
t807 = t850 * t968 - t853 * t967;
t762 = t809 * t807;
t1020 = qJDD(3) - t762;
t1026 = t1020 * t850;
t1025 = t1020 * t853;
t1023 = t851 * t977;
t1022 = t854 * t977;
t800 = qJD(5) + t807;
t741 = t800 * t776;
t764 = t853 * t817 - t850 * t884;
t873 = qJD(5) * t776 - qJDD(3) * t858 - t764 * t861;
t1021 = -t741 - t873;
t865 = qJD(2) ^ 2;
t836 = t859 * t865 * t862;
t826 = qJDD(3) + t836;
t937 = -t861 * qJDD(3) + t858 * t764;
t654 = (qJD(5) - t800) * t778 + t937;
t824 = g(1) * t854 + g(2) * t851;
t770 = -t854 * t824 - t851 * t941;
t769 = -t851 * t824 + t854 * t941;
t774 = t776 ^ 2;
t775 = t778 ^ 2;
t799 = t800 ^ 2;
t801 = t807 ^ 2;
t802 = t809 ^ 2;
t704 = -t799 - t774;
t618 = t704 * t858 - t993;
t1019 = pkin(4) * t618;
t718 = -t775 - t799;
t683 = t725 + t761;
t996 = t683 * t858;
t624 = t718 * t861 - t996;
t1018 = pkin(4) * t624;
t1017 = pkin(4) * t850;
t1016 = pkin(7) * t852;
t1015 = pkin(7) * t855;
t658 = -t741 + t873;
t585 = -t654 * t861 - t658 * t858;
t693 = -t774 - t775;
t553 = t585 * t850 - t693 * t853;
t554 = t585 * t853 + t693 * t850;
t491 = t553 * t862 + t554 * t859;
t1014 = pkin(8) * t491;
t619 = t704 * t861 + t994;
t653 = (qJD(5) + t800) * t778 + t937;
t565 = t619 * t850 - t653 * t853;
t566 = t619 * t853 + t653 * t850;
t503 = t565 * t862 + t566 * t859;
t1013 = pkin(8) * t503;
t995 = t683 * t861;
t625 = -t718 * t858 - t995;
t570 = -t1021 * t853 + t625 * t850;
t571 = t1021 * t850 + t625 * t853;
t507 = t570 * t862 + t571 * t859;
t1012 = pkin(8) * t507;
t583 = -t654 * t858 + t658 * t861;
t1011 = pkin(9) * t583;
t1010 = pkin(9) * t618;
t1009 = pkin(9) * t624;
t492 = -t553 * t859 + t554 * t862;
t860 = sin(qJ(2));
t863 = cos(qJ(2));
t918 = t492 * t860 - t583 * t863;
t420 = -t852 * t491 + t855 * t918;
t464 = t492 * t863 + t583 * t860;
t380 = t420 * t854 + t464 * t851;
t1008 = qJ(1) * t380;
t504 = -t565 * t859 + t566 * t862;
t916 = t504 * t860 - t618 * t863;
t437 = -t852 * t503 + t855 * t916;
t476 = t504 * t863 + t618 * t860;
t393 = t437 * t854 + t476 * t851;
t1007 = qJ(1) * t393;
t508 = -t570 * t859 + t571 * t862;
t915 = t508 * t860 - t624 * t863;
t442 = -t852 * t507 + t855 * t915;
t480 = t508 * t863 + t624 * t860;
t401 = t442 * t854 + t480 * t851;
t1006 = qJ(1) * t401;
t1005 = qJ(4) * t553;
t1004 = qJ(4) * t565;
t1003 = qJ(4) * t570;
t793 = t852 * t941 + t855 * t977;
t744 = t1027 * t860 - t863 * t824;
t867 = -t865 * pkin(2) + qJDD(2) * pkin(8) + t744;
t697 = -t859 * t793 + t862 * t867;
t825 = qJD(3) * pkin(3) - qJ(4) * t968;
t847 = t862 ^ 2;
t844 = t847 * t865;
t666 = -pkin(3) * t844 - qJ(4) * t884 - qJD(3) * t825 + t697;
t696 = t862 * t793 + t859 * t867;
t866 = -t696 + (-t817 + t947) * qJ(4) + t826 * pkin(3);
t580 = -0.2e1 * qJD(4) * t807 + t853 * t666 + t850 * t866;
t747 = pkin(4) * t807 - pkin(9) * t809;
t864 = qJD(3) ^ 2;
t558 = -pkin(4) * t864 + qJDD(3) * pkin(9) - t747 * t807 + t580;
t743 = -t1027 * t863 - t824 * t860;
t734 = -qJDD(2) * pkin(2) - t865 * pkin(8) + t743;
t685 = t884 * pkin(3) - qJ(4) * t844 + t825 * t968 + qJDD(4) + t734;
t963 = t807 * qJD(3);
t934 = -t764 + t963;
t606 = pkin(4) * t726 + t934 * pkin(9) + t685;
t970 = -t858 * t558 + t861 * t606;
t950 = -qJ(6) * t873 - t970;
t886 = -qJ(6) * t741 - t950;
t964 = qJD(6) * t778;
t477 = t886 - 0.2e1 * t964 - t1024;
t1002 = t477 * t858;
t1001 = t477 * t861;
t939 = t666 * t850 - t853 * t866;
t965 = qJD(4) * t809;
t579 = t939 + 0.2e1 * t965;
t524 = -t579 * t853 + t580 * t850;
t1000 = t524 * t859;
t999 = t524 * t862;
t894 = -qJDD(3) * pkin(4) - t864 * pkin(9) + t939;
t935 = (0.2e1 * qJD(4) + t747) * t809;
t557 = t935 + t894;
t998 = t557 * t858;
t997 = t557 * t861;
t992 = t685 * t850;
t991 = t685 * t853;
t990 = t734 * t859;
t989 = t734 * t862;
t752 = qJDD(3) + t762;
t988 = t752 * t850;
t987 = t752 * t853;
t986 = t800 * t858;
t985 = t800 * t861;
t818 = -0.2e1 * t948 + t957;
t779 = t818 * t862;
t984 = t826 * t859;
t827 = qJDD(3) - t836;
t983 = t827 * t859;
t982 = t827 * t862;
t846 = t859 ^ 2;
t981 = t846 * t865;
t979 = t860 * t793;
t978 = t863 * t793;
t976 = pkin(1) * t420 + t464 * t1016;
t975 = pkin(1) * t437 + t476 * t1016;
t974 = pkin(1) * t442 + t480 * t1016;
t973 = -pkin(2) * t583 + pkin(8) * t492;
t972 = -pkin(2) * t618 + pkin(8) * t504;
t971 = -pkin(2) * t624 + pkin(8) * t508;
t522 = t861 * t558 + t858 * t606;
t969 = t846 + t847;
t960 = qJDD(2) * t852;
t958 = qJDD(2) * t860;
t956 = qJDD(2) * t863;
t955 = qJDD(3) * t863;
t954 = t850 * t725;
t953 = t853 * t725;
t952 = t860 * t762;
t951 = t863 * t762;
t949 = -pkin(4) * t853 - pkin(3);
t419 = t855 * t491 + t852 * t918;
t946 = -pkin(1) * t419 + t464 * t1015;
t436 = t855 * t503 + t852 * t916;
t945 = -pkin(1) * t436 + t476 * t1015;
t441 = t855 * t507 + t852 * t915;
t944 = -pkin(1) * t441 + t480 * t1015;
t943 = -pkin(3) * t618 + qJ(4) * t566;
t942 = -pkin(3) * t624 + qJ(4) * t571;
t525 = t579 * t850 + t853 * t580;
t622 = t696 * t859 + t862 * t697;
t933 = t860 * t836;
t932 = t863 * t836;
t621 = t696 * t862 - t697 * t859;
t819 = t969 * qJDD(2);
t822 = t844 + t981;
t767 = t819 * t863 - t822 * t860;
t930 = pkin(7) * t767 + t621 * t860;
t820 = -t860 * t865 + t956;
t929 = -pkin(7) * t820 - t979;
t897 = t863 * t865 + t958;
t928 = -pkin(7) * t897 + t978;
t708 = -qJD(5) * t778 - t937;
t733 = pkin(5) * t800 - qJ(6) * t778;
t885 = t708 * qJ(6) - 0.2e1 * qJD(6) * t776 - t733 * t800 + t522;
t465 = -qJ(6) * t654 + (-t693 - t774) * pkin(5) + t885;
t772 = 0.2e1 * t964;
t470 = t772 + (-t658 + t741) * qJ(6) + t1024 + t950;
t403 = -t465 * t858 + t470 * t861 - t1011;
t546 = -pkin(4) * t583 - pkin(5) * t658;
t552 = qJ(4) * t554;
t375 = -pkin(3) * t583 + t403 * t850 + t546 * t853 + t552;
t376 = t403 * t853 - t546 * t850 - t1005;
t351 = -t375 * t859 + t376 * t862 - t1014;
t871 = -pkin(2) * t491 - pkin(3) * t553 + pkin(4) * t693 - pkin(9) * t585;
t373 = -t465 * t861 - t470 * t858 + t871;
t927 = t351 * t860 + t373 * t863;
t458 = -t1019 + t772 - t886 + 0.2e1 * t1024;
t868 = -t708 * pkin(5) - t774 * qJ(6) + t733 * t778 + qJDD(6) + t894;
t487 = -pkin(5) * t653 + qJ(6) * t704 - t747 * t809 - t868 - 0.2e1 * t965;
t459 = qJ(6) * t993 - t487 * t858 - t1010;
t382 = t458 * t853 + t459 * t850 + t943;
t388 = -t458 * t850 + t459 * t853 - t1004;
t355 = -t382 * t859 + t388 * t862 - t1013;
t870 = -pkin(2) * t503 - pkin(3) * t565 + pkin(4) * t653 - pkin(9) * t619;
t406 = -qJ(6) * t994 - t487 * t861 + t870;
t926 = t355 * t860 + t406 * t863;
t460 = -t1018 + (-t718 - t774) * pkin(5) + t885;
t528 = t935 + t868;
t512 = -qJ(6) * t718 + t528;
t600 = -pkin(5) * t1021 - qJ(6) * t683;
t461 = t512 * t861 - t600 * t858 - t1009;
t387 = t460 * t853 + t461 * t850 + t942;
t391 = -t460 * t850 + t461 * t853 - t1003;
t357 = -t387 * t859 + t391 * t862 - t1012;
t869 = -pkin(2) * t507 - pkin(3) * t570 + pkin(4) * t1021 - pkin(9) * t625;
t412 = -t512 * t858 - t600 * t861 + t869;
t925 = t357 * t860 + t412 * t863;
t454 = t522 * t858 + t861 * t970;
t443 = -t454 - t1011;
t399 = t850 * t443 + t583 * t949 + t552;
t413 = t1017 * t583 + t443 * t853 - t1005;
t359 = -t399 * t859 + t413 * t862 - t1014;
t455 = t522 * t861 - t858 * t970;
t384 = -t455 + t871;
t924 = t359 * t860 + t384 * t863;
t481 = -pkin(5) * t774 + t885;
t428 = t481 * t861 - t1002;
t404 = t428 * t850 - t528 * t853;
t405 = t428 * t853 + t528 * t850;
t363 = -t404 * t859 + t405 * t862;
t427 = t481 * t858 + t1001;
t923 = t363 * t860 - t427 * t863;
t486 = -t970 - t1019;
t529 = t998 - t1010;
t415 = t486 * t853 + t529 * t850 + t943;
t426 = -t486 * t850 + t529 * t853 - t1004;
t367 = -t415 * t859 + t426 * t862 - t1013;
t423 = t870 + t997;
t922 = t367 * t860 + t423 * t863;
t489 = t522 - t1018;
t530 = t997 - t1009;
t416 = t489 * t853 + t530 * t850 + t942;
t430 = -t489 * t850 + t530 * t853 - t1003;
t368 = -t416 * t859 + t430 * t862 - t1012;
t429 = t869 - t998;
t921 = t368 * t860 + t429 * t863;
t438 = t455 * t850 - t557 * t853;
t439 = t455 * t853 + t557 * t850;
t378 = -t438 * t859 + t439 * t862;
t920 = t378 * t860 - t454 * t863;
t457 = t525 * t862 - t1000;
t919 = t457 * t860 - t685 * t863;
t586 = -t1021 * t858 - t653 * t861;
t723 = -t775 + t774;
t561 = t586 * t850 + t723 * t853;
t562 = t586 * t853 - t723 * t850;
t500 = -t561 * t859 + t562 * t862;
t584 = -t1021 * t861 + t653 * t858;
t917 = t500 * t860 + t584 * t863;
t736 = -t775 + t799;
t629 = -t736 * t858 - t993;
t573 = t629 * t850 + t658 * t853;
t575 = t629 * t853 - t658 * t850;
t515 = -t573 * t859 + t575 * t862;
t627 = -t736 * t861 + t994;
t914 = t515 * t860 + t627 * t863;
t735 = t774 - t799;
t630 = t735 * t861 - t996;
t574 = t630 * t850 + t654 * t853;
t576 = t630 * t853 - t654 * t850;
t516 = -t574 * t859 + t576 * t862;
t628 = -t735 * t858 - t995;
t913 = t516 * t860 + t628 * t863;
t648 = -t708 * t858 + t776 * t985;
t608 = t648 * t850 + t953;
t610 = t648 * t853 - t954;
t542 = -t608 * t859 + t610 * t862;
t647 = -t708 * t861 - t776 * t986;
t912 = t542 * t860 + t647 * t863;
t650 = -t778 * t986 - t861 * t873;
t609 = t650 * t850 - t953;
t611 = t650 * t853 + t954;
t543 = -t609 * t859 + t611 * t862;
t649 = -t778 * t985 + t858 * t873;
t911 = t543 * t860 + t649 * t863;
t675 = (-t776 * t861 + t778 * t858) * t800;
t631 = t675 * t850 - t761 * t853;
t632 = t675 * t853 + t761 * t850;
t568 = -t631 * t859 + t632 * t862;
t674 = (t776 * t858 + t778 * t861) * t800;
t910 = t568 * t860 + t674 * t863;
t662 = -t726 * t850 - t853 * t934;
t664 = -t726 * t853 + t850 * t934;
t589 = -t662 * t859 + t664 * t862;
t758 = -t802 + t801;
t909 = t589 * t860 + t758 * t863;
t727 = -t936 + t966;
t729 = -t764 - t963;
t663 = t727 * t850 + t729 * t853;
t665 = t727 * t853 - t729 * t850;
t590 = -t663 * t859 + t665 * t862;
t724 = -t801 - t802;
t908 = t590 * t860 - t724 * t863;
t750 = -t864 - t801;
t686 = t750 * t850 + t1025;
t687 = t750 * t853 - t1026;
t614 = -t686 * t859 + t687 * t862;
t907 = t614 * t860 - t726 * t863;
t906 = t622 * t860 - t734 * t863;
t794 = t801 - t864;
t712 = t794 * t850 + t987;
t715 = t794 * t853 - t988;
t636 = -t712 * t859 + t715 * t862;
t905 = t636 * t860 - t727 * t863;
t795 = -t802 + t864;
t713 = t795 * t853 + t1026;
t716 = -t795 * t850 + t1025;
t637 = -t713 * t859 + t716 * t862;
t904 = t637 * t860 + t729 * t863;
t796 = -t802 - t864;
t714 = t796 * t853 - t988;
t717 = -t796 * t850 - t987;
t638 = -t714 * t859 + t717 * t862;
t903 = t638 * t860 + t863 * t934;
t680 = t743 * t863 - t744 * t860;
t681 = t743 * t860 + t744 * t863;
t816 = 0.2e1 * t947 + t959;
t766 = -t816 * t859 + t779;
t823 = t844 - t981;
t902 = t766 * t860 + t823 * t863;
t835 = -t844 - t864;
t786 = t835 * t862 - t984;
t901 = t786 * t860 + t818 * t863;
t833 = -t864 - t981;
t788 = -t833 * t859 - t982;
t900 = t788 * t860 - t816 * t863;
t805 = t897 * t855;
t899 = t805 * t854 + t820 * t851;
t756 = t805 * t851 - t820 * t854;
t898 = t819 * t860 + t822 * t863;
t739 = (-t807 * t850 - t809 * t853) * qJD(3);
t740 = (-t807 * t853 + t809 * t850) * qJD(3);
t673 = -t739 * t859 + t740 * t862;
t896 = t673 * t860 - t955;
t814 = t969 * t961;
t895 = t814 * t860 - t955;
t719 = t850 * t963 - t853 * t936;
t720 = t850 * t936 + t853 * t963;
t645 = -t719 * t859 + t720 * t862;
t893 = t645 * t860 + t951;
t721 = t764 * t850 + t853 * t966;
t722 = t764 * t853 - t850 * t966;
t646 = -t721 * t859 + t722 * t862;
t892 = t646 * t860 - t951;
t891 = (-t419 * t852 - t420 * t855) * pkin(7);
t890 = (-t436 * t852 - t437 * t855) * pkin(7);
t889 = (-t441 * t852 - t442 * t855) * pkin(7);
t834 = t844 - t864;
t785 = t834 * t862 - t983;
t888 = t785 * t860 - t862 * t956;
t815 = t862 * t826;
t832 = t864 - t981;
t787 = -t832 * t859 + t815;
t887 = t787 * t860 - t859 * t956;
t790 = -t847 * t961 + t859 * t884;
t883 = t790 * t860 - t932;
t791 = t817 * t862 - t846 * t961;
t882 = t791 * t860 + t932;
t448 = -pkin(5) * t528 + qJ(6) * t481;
t370 = -pkin(9) * t427 - qJ(6) * t1001 - t448 * t858;
t389 = -pkin(4) * t427 - pkin(5) * t477;
t343 = -pkin(3) * t427 + qJ(4) * t405 + t370 * t850 + t389 * t853;
t347 = -qJ(4) * t404 + t370 * t853 - t389 * t850;
t362 = t404 * t862 + t405 * t859;
t322 = -pkin(8) * t362 - t343 * t859 + t347 * t862;
t338 = -pkin(2) * t362 - pkin(3) * t404 + pkin(4) * t528 - pkin(9) * t428 + qJ(6) * t1002 - t448 * t861;
t354 = t363 * t863 + t427 * t860;
t881 = pkin(7) * t354 + t322 * t860 + t338 * t863;
t360 = qJ(4) * t439 + (-pkin(9) * t850 + t949) * t454;
t369 = -qJ(4) * t438 + (-pkin(9) * t853 + t1017) * t454;
t377 = t438 * t862 + t439 * t859;
t333 = -pkin(8) * t377 - t360 * t859 + t369 * t862;
t353 = -pkin(2) * t377 - pkin(3) * t438 + pkin(4) * t557 - pkin(9) * t455;
t366 = t378 * t863 + t454 * t860;
t880 = pkin(7) * t366 + t333 * t860 + t353 * t863;
t456 = t525 * t859 + t999;
t501 = -pkin(3) * t685 + qJ(4) * t525;
t397 = -pkin(8) * t456 - qJ(4) * t999 - t501 * t859;
t422 = -pkin(2) * t456 - pkin(3) * t524;
t451 = t457 * t863 + t685 * t860;
t879 = pkin(7) * t451 + t397 * t860 + t422 * t863;
t488 = -pkin(3) * t724 + qJ(4) * t665 + t525;
t496 = -qJ(4) * t663 - t524;
t588 = t663 * t862 + t665 * t859;
t421 = -pkin(8) * t588 - t488 * t859 + t496 * t862;
t547 = -pkin(2) * t588 - pkin(3) * t663;
t564 = t590 * t863 + t724 * t860;
t878 = pkin(7) * t564 + t421 * t860 + t547 * t863;
t592 = -pkin(3) * t726 + qJ(4) * t687 - t991;
t612 = -qJ(4) * t686 + t992;
t613 = t686 * t862 + t687 * t859;
t505 = -pkin(8) * t613 - t592 * t859 + t612 * t862;
t523 = -pkin(2) * t613 - pkin(3) * t686 + t579;
t591 = t614 * t863 + t726 * t860;
t877 = pkin(7) * t591 + t505 * t860 + t523 * t863;
t599 = pkin(3) * t934 + qJ(4) * t717 + t992;
t626 = -qJ(4) * t714 + t991;
t635 = t714 * t862 + t717 * t859;
t520 = -pkin(8) * t635 - t599 * t859 + t626 * t862;
t531 = -pkin(2) * t635 - pkin(3) * t714 + t580;
t603 = t638 * t863 - t860 * t934;
t876 = pkin(7) * t603 + t520 * t860 + t531 * t863;
t782 = t835 * t859 + t815;
t670 = -pkin(2) * t782 + t696;
t694 = -pkin(8) * t782 + t990;
t737 = t786 * t863 - t818 * t860;
t875 = pkin(7) * t737 + t670 * t863 + t694 * t860;
t784 = t833 * t862 - t983;
t671 = -pkin(2) * t784 + t697;
t695 = -pkin(8) * t784 + t989;
t738 = t788 * t863 + t816 * t860;
t874 = pkin(7) * t738 + t671 * t863 + t695 * t860;
t596 = t622 * t863 + t734 * t860;
t872 = pkin(7) * t596 - (-pkin(2) * t863 - pkin(8) * t860) * t621;
t840 = t860 * qJDD(3);
t806 = t820 * t855;
t804 = t820 * t852;
t803 = t897 * t852;
t792 = t814 * t863 + t840;
t783 = t832 * t862 + t984;
t781 = t834 * t859 + t982;
t780 = (t817 + t947) * t859;
t768 = t895 * t855;
t765 = t816 * t862 + t818 * t859;
t760 = t898 * t855;
t759 = t898 * t852;
t757 = -t806 * t851 - t854 * t897;
t755 = t806 * t854 - t851 * t897;
t749 = t791 * t863 - t933;
t748 = t790 * t863 + t933;
t746 = t787 * t863 + t859 * t958;
t745 = t785 * t863 + t860 * t957;
t732 = t766 * t863 - t823 * t860;
t711 = -t978 + (t803 * t852 + t805 * t855) * pkin(7);
t710 = -t979 + (-t804 * t852 - t806 * t855) * pkin(7);
t703 = -t760 * t851 + t767 * t854;
t702 = t760 * t854 + t767 * t851;
t701 = -t852 * t780 + t855 * t882;
t700 = -t852 * t779 + t855 * t883;
t699 = -t852 * t783 + t855 * t887;
t698 = -t852 * t781 + t855 * t888;
t691 = -t852 * t784 + t855 * t900;
t690 = -t852 * t782 + t855 * t901;
t689 = t855 * t784 + t852 * t900;
t688 = t855 * t782 + t852 * t901;
t679 = -t852 * t765 + t855 * t902;
t678 = pkin(2) * t818 + pkin(8) * t786 - t989;
t677 = -pkin(2) * t816 + pkin(8) * t788 + t990;
t676 = t681 * t855;
t672 = t739 * t862 + t740 * t859;
t669 = t673 * t863 + t840;
t668 = -pkin(1) * t804 + t852 * t743 + t855 * t928;
t667 = pkin(1) * t803 + t852 * t744 + t855 * t929;
t652 = -t680 * t855 + t852 * t793;
t651 = -t680 * t852 - t855 * t793;
t644 = t721 * t862 + t722 * t859;
t643 = t719 * t862 + t720 * t859;
t642 = -t691 * t851 + t738 * t854;
t641 = -t690 * t851 + t737 * t854;
t640 = t691 * t854 + t738 * t851;
t639 = t690 * t854 + t737 * t851;
t634 = t713 * t862 + t716 * t859;
t633 = t712 * t862 + t715 * t859;
t617 = t646 * t863 + t952;
t616 = t645 * t863 - t952;
t607 = pkin(2) * t822 + pkin(8) * t819 + t622;
t602 = t637 * t863 - t729 * t860;
t601 = t636 * t863 + t727 * t860;
t598 = -pkin(2) * t734 + pkin(8) * t622;
t597 = -t852 * t672 + t855 * t896;
t595 = -pkin(1) * t651 + t1015 * t681;
t594 = -t652 * t851 + t681 * t854;
t593 = t652 * t854 + t681 * t851;
t587 = t662 * t862 + t664 * t859;
t581 = t863 * t621 + (-t759 * t852 - t760 * t855) * pkin(7);
t577 = (-t651 * t852 - t652 * t855) * pkin(7);
t572 = t589 * t863 - t758 * t860;
t567 = t631 * t862 + t632 * t859;
t560 = -t852 * t644 + t855 * t892;
t559 = -t852 * t643 + t855 * t893;
t551 = -t852 * t635 + t855 * t903;
t550 = -t852 * t634 + t855 * t904;
t549 = -t852 * t633 + t855 * t905;
t548 = t855 * t635 + t852 * t903;
t545 = -t671 * t860 + t695 * t863 + (-t689 * t852 - t691 * t855) * pkin(7);
t544 = -t670 * t860 + t694 * t863 + (-t688 * t852 - t690 * t855) * pkin(7);
t541 = t609 * t862 + t611 * t859;
t540 = t608 * t862 + t610 * t859;
t539 = t621 * t852 + t855 * t906;
t538 = -t621 * t855 + t852 * t906;
t537 = t568 * t863 - t674 * t860;
t536 = -t852 * t613 + t855 * t907;
t535 = t855 * t613 + t852 * t907;
t534 = -pkin(1) * t689 - t677 * t852 + t855 * t874;
t533 = -pkin(1) * t688 - t678 * t852 + t855 * t875;
t532 = -pkin(1) * t759 - t852 * t607 + t855 * t930;
t527 = t543 * t863 - t649 * t860;
t526 = t542 * t863 - t647 * t860;
t519 = -t852 * t587 + t855 * t909;
t518 = -t852 * t588 + t855 * t908;
t517 = t855 * t588 + t852 * t908;
t514 = t574 * t862 + t576 * t859;
t513 = t573 * t862 + t575 * t859;
t511 = -t551 * t851 + t603 * t854;
t510 = t551 * t854 + t603 * t851;
t509 = pkin(2) * t934 + pkin(8) * t638 + t599 * t862 + t626 * t859;
t499 = t561 * t862 + t562 * t859;
t498 = -t539 * t851 + t596 * t854;
t497 = t539 * t854 + t596 * t851;
t495 = -pkin(2) * t726 + pkin(8) * t614 + t592 * t862 + t612 * t859;
t494 = -t536 * t851 + t591 * t854;
t493 = t536 * t854 + t591 * t851;
t485 = -t852 * t567 + t855 * t910;
t484 = t855 * t567 + t852 * t910;
t483 = t516 * t863 - t628 * t860;
t482 = t515 * t863 - t627 * t860;
t473 = -t518 * t851 + t564 * t854;
t472 = t518 * t854 + t564 * t851;
t471 = t500 * t863 - t584 * t860;
t469 = -t852 * t541 + t855 * t911;
t468 = -t852 * t540 + t855 * t912;
t467 = t855 * t541 + t852 * t911;
t466 = t855 * t540 + t852 * t912;
t453 = -t485 * t851 + t537 * t854;
t452 = t485 * t854 + t537 * t851;
t450 = -(pkin(2) * t860 - pkin(8) * t863) * t621 + (-t538 * t852 - t539 * t855) * pkin(7);
t449 = -pkin(1) * t538 - t598 * t852 + t855 * t872;
t447 = -t852 * t514 + t855 * t913;
t446 = -t852 * t513 + t855 * t914;
t445 = t855 * t514 + t852 * t913;
t444 = t855 * t513 + t852 * t914;
t434 = -t469 * t851 + t527 * t854;
t433 = -t468 * t851 + t526 * t854;
t432 = t469 * t854 + t527 * t851;
t431 = t468 * t854 + t526 * t851;
t425 = -t852 * t499 + t855 * t917;
t424 = t855 * t499 + t852 * t917;
t417 = -pkin(2) * t724 + pkin(8) * t590 + t488 * t862 + t496 * t859;
t414 = t863 * t520 - t860 * t531 + (-t548 * t852 - t551 * t855) * pkin(7);
t411 = -t447 * t851 + t483 * t854;
t410 = -t446 * t851 + t482 * t854;
t409 = t447 * t854 + t483 * t851;
t408 = t446 * t854 + t482 * t851;
t407 = t863 * t505 - t860 * t523 + (-t535 * t852 - t536 * t855) * pkin(7);
t402 = -t442 * t851 + t480 * t854;
t400 = qJ(1) * t402;
t398 = -pkin(1) * t548 - t509 * t852 + t855 * t876;
t396 = -t852 * t456 + t855 * t919;
t395 = t855 * t456 + t852 * t919;
t394 = -t437 * t851 + t476 * t854;
t392 = qJ(1) * t394;
t390 = -pkin(2) * t685 + pkin(8) * t457 - qJ(4) * t1000 + t501 * t862;
t386 = -t425 * t851 + t471 * t854;
t385 = t425 * t854 + t471 * t851;
t383 = -pkin(1) * t535 - t495 * t852 + t855 * t877;
t381 = -t420 * t851 + t464 * t854;
t379 = qJ(1) * t381;
t374 = t863 * t421 - t860 * t547 + (-t517 * t852 - t518 * t855) * pkin(7);
t372 = -t396 * t851 + t451 * t854;
t371 = t396 * t854 + t451 * t851;
t365 = t416 * t862 + t430 * t859 + t971;
t364 = t415 * t862 + t426 * t859 + t972;
t361 = -pkin(1) * t517 - t417 * t852 + t855 * t878;
t358 = t399 * t862 + t413 * t859 + t973;
t356 = t387 * t862 + t391 * t859 + t971;
t352 = t382 * t862 + t388 * t859 + t972;
t350 = -t852 * t377 + t855 * t920;
t349 = t855 * t377 + t852 * t920;
t348 = t375 * t862 + t376 * t859 + t973;
t346 = t863 * t368 - t860 * t429 + t889;
t345 = t863 * t367 - t860 * t423 + t890;
t344 = t863 * t397 - t860 * t422 + (-t395 * t852 - t396 * t855) * pkin(7);
t342 = -pkin(1) * t395 - t390 * t852 + t855 * t879;
t341 = -t852 * t362 + t855 * t923;
t340 = t855 * t362 + t852 * t923;
t339 = t863 * t357 - t860 * t412 + t889;
t337 = t863 * t355 - t860 * t406 + t890;
t336 = t863 * t359 - t860 * t384 + t891;
t335 = -t350 * t851 + t366 * t854;
t334 = t350 * t854 + t366 * t851;
t332 = -t365 * t852 + t855 * t921 + t944;
t331 = -t364 * t852 + t855 * t922 + t945;
t330 = -pkin(2) * t454 + pkin(8) * t378 + t360 * t862 + t369 * t859;
t329 = t863 * t351 - t860 * t373 + t891;
t328 = -t356 * t852 + t855 * t925 + t944;
t327 = -t358 * t852 + t855 * t924 + t946;
t326 = -t341 * t851 + t354 * t854;
t325 = t341 * t854 + t354 * t851;
t324 = -t352 * t852 + t855 * t926 + t945;
t323 = -t348 * t852 + t855 * t927 + t946;
t321 = -pkin(2) * t427 + pkin(8) * t363 + t343 * t862 + t347 * t859;
t320 = t863 * t333 - t860 * t353 + (-t349 * t852 - t350 * t855) * pkin(7);
t319 = -pkin(1) * t349 - t330 * t852 + t855 * t880;
t318 = t863 * t322 - t860 * t338 + (-t340 * t852 - t341 * t855) * pkin(7);
t317 = -pkin(1) * t340 - t321 * t852 + t855 * t881;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t770, 0, 0, 0, 0, 0, 0, t757, t756, 0, t594, 0, 0, 0, 0, 0, 0, t641, t642, t703, t498, 0, 0, 0, 0, 0, 0, t494, t511, t473, t372, 0, 0, 0, 0, 0, 0, t394, t402, t381, t335, 0, 0, 0, 0, 0, 0, t394, t402, t381, t326; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t769, 0, 0, 0, 0, 0, 0, t755, -t899, 0, t593, 0, 0, 0, 0, 0, 0, t639, t640, t702, t497, 0, 0, 0, 0, 0, 0, t493, t510, t472, t371, 0, 0, 0, 0, 0, 0, t393, t401, t380, t334, 0, 0, 0, 0, 0, 0, t393, t401, t380, t325; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t977, 0, 0, 0, 0, 0, 0, t804, -t803, 0, t651, 0, 0, 0, 0, 0, 0, t688, t689, t759, t538, 0, 0, 0, 0, 0, 0, t535, t548, t517, t395, 0, 0, 0, 0, 0, 0, t436, t441, t419, t349, 0, 0, 0, 0, 0, 0, t436, t441, t419, t340; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1023, -t1022, -t769, -qJ(1) * t769, 0, 0, -t756, 0, t757, t851 * t960, -qJ(1) * t755 - t668 * t851 + t710 * t854, qJ(1) * t899 - t667 * t851 + t711 * t854, -t676 * t851 + t680 * t854, -qJ(1) * t593 + t577 * t854 - t595 * t851, -t701 * t851 + t749 * t854, -t679 * t851 + t732 * t854, -t699 * t851 + t746 * t854, -t700 * t851 + t748 * t854, -t698 * t851 + t745 * t854, -t768 * t851 + t792 * t854, -qJ(1) * t639 - t533 * t851 + t544 * t854, -qJ(1) * t640 - t534 * t851 + t545 * t854, -qJ(1) * t702 - t532 * t851 + t581 * t854, -qJ(1) * t497 - t449 * t851 + t450 * t854, -t560 * t851 + t617 * t854, -t519 * t851 + t572 * t854, -t550 * t851 + t602 * t854, -t559 * t851 + t616 * t854, -t549 * t851 + t601 * t854, -t597 * t851 + t669 * t854, -qJ(1) * t493 - t383 * t851 + t407 * t854, -qJ(1) * t510 - t398 * t851 + t414 * t854, -qJ(1) * t472 - t361 * t851 + t374 * t854, -qJ(1) * t371 - t342 * t851 + t344 * t854, t434, t386, t410, t433, t411, t453, -t331 * t851 + t345 * t854 - t1007, -t332 * t851 + t346 * t854 - t1006, -t327 * t851 + t336 * t854 - t1008, -qJ(1) * t334 - t319 * t851 + t320 * t854, t434, t386, t410, t433, t411, t453, -t324 * t851 + t337 * t854 - t1007, -t328 * t851 + t339 * t854 - t1006, -t323 * t851 + t329 * t854 - t1008, -qJ(1) * t325 - t317 * t851 + t318 * t854; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1022, -t1023, t770, qJ(1) * t770, 0, 0, t899, 0, t755, -t854 * t960, qJ(1) * t757 + t668 * t854 + t710 * t851, qJ(1) * t756 + t667 * t854 + t711 * t851, t676 * t854 + t680 * t851, qJ(1) * t594 + t577 * t851 + t595 * t854, t701 * t854 + t749 * t851, t679 * t854 + t732 * t851, t699 * t854 + t746 * t851, t700 * t854 + t748 * t851, t698 * t854 + t745 * t851, t768 * t854 + t792 * t851, qJ(1) * t641 + t533 * t854 + t544 * t851, qJ(1) * t642 + t534 * t854 + t545 * t851, qJ(1) * t703 + t532 * t854 + t581 * t851, qJ(1) * t498 + t449 * t854 + t450 * t851, t560 * t854 + t617 * t851, t519 * t854 + t572 * t851, t550 * t854 + t602 * t851, t559 * t854 + t616 * t851, t549 * t854 + t601 * t851, t597 * t854 + t669 * t851, qJ(1) * t494 + t383 * t854 + t407 * t851, qJ(1) * t511 + t398 * t854 + t414 * t851, qJ(1) * t473 + t361 * t854 + t374 * t851, qJ(1) * t372 + t342 * t854 + t344 * t851, t432, t385, t408, t431, t409, t452, t331 * t854 + t345 * t851 + t392, t332 * t854 + t346 * t851 + t400, t327 * t854 + t336 * t851 + t379, qJ(1) * t335 + t319 * t854 + t320 * t851, t432, t385, t408, t431, t409, t452, t324 * t854 + t337 * t851 + t392, t328 * t854 + t339 * t851 + t400, t323 * t854 + t329 * t851 + t379, qJ(1) * t326 + t317 * t854 + t318 * t851; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t941, t824, 0, 0, 0, 0, t803, 0, t804, t855 * qJDD(2), pkin(1) * t806 - t855 * t743 + t852 * t928, -pkin(1) * t805 - t855 * t744 + t852 * t929, t681 * t852, pkin(1) * t652 + t1016 * t681, t855 * t780 + t852 * t882, t855 * t765 + t852 * t902, t855 * t783 + t852 * t887, t855 * t779 + t852 * t883, t855 * t781 + t852 * t888, t895 * t852, pkin(1) * t690 + t678 * t855 + t852 * t875, pkin(1) * t691 + t677 * t855 + t852 * t874, pkin(1) * t760 + t855 * t607 + t852 * t930, pkin(1) * t539 + t598 * t855 + t852 * t872, t855 * t644 + t852 * t892, t855 * t587 + t852 * t909, t855 * t634 + t852 * t904, t855 * t643 + t852 * t893, t855 * t633 + t852 * t905, t855 * t672 + t852 * t896, pkin(1) * t536 + t495 * t855 + t852 * t877, pkin(1) * t551 + t509 * t855 + t852 * t876, pkin(1) * t518 + t417 * t855 + t852 * t878, pkin(1) * t396 + t390 * t855 + t852 * t879, t467, t424, t444, t466, t445, t484, t364 * t855 + t852 * t922 + t975, t365 * t855 + t852 * t921 + t974, t358 * t855 + t852 * t924 + t976, pkin(1) * t350 + t330 * t855 + t852 * t880, t467, t424, t444, t466, t445, t484, t352 * t855 + t852 * t926 + t975, t356 * t855 + t852 * t925 + t974, t348 * t855 + t852 * t927 + t976, pkin(1) * t341 + t321 * t855 + t852 * t881;];
tauB_reg  = t1;
