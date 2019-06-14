% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRRPRP4
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d5,theta1]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 04:05
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRRPRP4_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRP4_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRP4_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRPRP4_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRP4_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6PRRPRP4_invdynB_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 04:04:40
% EndTime: 2019-05-05 04:05:08
% DurationCPUTime: 24.77s
% Computational Cost: add. (52684->697), mult. (106670->1007), div. (0->0), fcn. (68723->10), ass. (0->532)
t750 = sin(qJ(3));
t739 = t750 ^ 2;
t756 = qJD(2) ^ 2;
t733 = t739 * t756;
t755 = qJD(3) ^ 2;
t720 = -t733 - t755;
t753 = cos(qJ(3));
t844 = t750 * t753 * t756;
t716 = qJDD(3) - t844;
t888 = t716 * t750;
t651 = -t720 * t753 + t888;
t744 = sin(pkin(6));
t746 = cos(pkin(6));
t872 = t753 * t716;
t659 = t720 * t750 + t872;
t854 = qJD(2) * qJD(3);
t838 = t753 * t854;
t851 = qJDD(2) * t750;
t704 = 0.2e1 * t838 + t851;
t751 = sin(qJ(2));
t754 = cos(qJ(2));
t797 = t659 * t751 + t704 * t754;
t551 = -t744 * t651 + t746 * t797;
t604 = t659 * t754 - t704 * t751;
t743 = sin(pkin(10));
t745 = cos(pkin(10));
t494 = t551 * t745 + t604 * t743;
t970 = qJ(1) * t494;
t499 = t551 * t743 - t604 * t745;
t969 = qJ(1) * t499;
t547 = t746 * t651 + t744 * t797;
t968 = pkin(7) * (t547 * t744 + t551 * t746);
t740 = t753 ^ 2;
t735 = t740 * t756;
t722 = -t735 - t755;
t715 = qJDD(3) + t844;
t873 = t753 * t715;
t648 = t722 * t750 + t873;
t889 = t715 * t750;
t657 = -t722 * t753 + t889;
t839 = t750 * t854;
t849 = qJDD(2) * t753;
t707 = -0.2e1 * t839 + t849;
t798 = t657 * t751 - t707 * t754;
t550 = t744 * t648 + t746 * t798;
t603 = t657 * t754 + t707 * t751;
t493 = t550 * t745 + t603 * t743;
t967 = qJ(1) * t493;
t496 = t550 * t743 - t603 * t745;
t966 = qJ(1) * t496;
t965 = pkin(1) * t547;
t964 = pkin(1) * t551;
t546 = -t746 * t648 + t744 * t798;
t963 = pkin(7) * (t546 * t744 + t550 * t746);
t719 = -t733 + t755;
t650 = t719 * t753 + t889;
t658 = -t719 * t750 + t873;
t848 = qJDD(2) * t754;
t779 = t658 * t751 - t750 * t848;
t566 = -t744 * t650 + t746 * t779;
t850 = qJDD(2) * t751;
t617 = t658 * t754 + t750 * t850;
t962 = t566 * t743 - t617 * t745;
t961 = t566 * t745 + t617 * t743;
t959 = pkin(1) * t546;
t958 = pkin(1) * t550;
t721 = t735 - t755;
t646 = t721 * t750 + t872;
t655 = -t721 * t753 + t888;
t780 = t655 * t751 + t753 * t848;
t565 = t744 * t646 + t746 * t780;
t616 = t655 * t754 - t751 * t849;
t957 = t565 * t743 - t616 * t745;
t956 = t565 * t745 + t616 * t743;
t954 = pkin(7) * t604;
t949 = t746 * t650 + t744 * t779;
t749 = sin(qJ(5));
t752 = cos(qJ(5));
t857 = qJD(2) * t753;
t698 = qJD(3) * t749 + t752 * t857;
t700 = qJD(3) * t752 - t749 * t857;
t643 = t700 * t698;
t705 = t838 + t851;
t690 = qJDD(5) + t705;
t927 = t643 - t690;
t948 = pkin(5) * t927;
t947 = pkin(7) * t603;
t942 = -t746 * t646 + t744 * t780;
t941 = pkin(2) * t648;
t940 = pkin(8) * t648;
t939 = pkin(8) * t659;
t917 = pkin(3) + pkin(9);
t934 = pkin(2) * t651;
t933 = pkin(8) * t651;
t932 = pkin(8) * t657;
t876 = t749 * t927;
t896 = t927 * t752;
t926 = t705 + t838;
t833 = g(1) * t743 - t745 * g(2);
t870 = g(3) - qJDD(1);
t925 = -t744 * t870 + t746 * t833;
t924 = t743 * t870;
t923 = t745 * t870;
t688 = t698 ^ 2;
t858 = qJD(2) * t750;
t726 = qJD(5) + t858;
t723 = t726 ^ 2;
t628 = -t723 - t688;
t543 = t628 * t749 - t896;
t544 = t628 * t752 + t876;
t922 = pkin(4) * t543 - qJ(4) * t544;
t689 = t700 ^ 2;
t847 = t689 + t723;
t609 = t643 + t690;
t877 = t749 * t609;
t559 = -t752 * t847 - t877;
t897 = t609 * t752;
t560 = t749 * t847 - t897;
t921 = pkin(4) * t559 - qJ(4) * t560;
t714 = g(1) * t745 + g(2) * t743;
t612 = -t754 * t714 + t751 * t925;
t601 = -t756 * pkin(2) + qJDD(2) * pkin(8) + t612;
t671 = t744 * t833 + t746 * t870;
t561 = t750 * t601 + t753 * t671;
t904 = qJ(4) * t750;
t916 = pkin(3) * t753;
t825 = -t904 - t916;
t702 = t825 * qJD(2);
t786 = -qJDD(3) * pkin(3) - t755 * qJ(4) + t702 * t858 + qJDD(4) + t561;
t491 = -t715 * pkin(9) + (t705 - t838) * pkin(4) + t786;
t706 = -t839 + t849;
t718 = pkin(4) * t858 - qJD(3) * pkin(9);
t611 = -t714 * t751 - t754 * t925;
t600 = -qJDD(2) * pkin(2) - t756 * pkin(8) + t611;
t760 = -t706 * pkin(3) - qJ(4) * t926 + t600;
t918 = -2 * qJD(4);
t831 = pkin(3) * qJD(3) + t918;
t502 = -pkin(4) * t735 - pkin(9) * t706 + (-t718 + t831) * t858 + t760;
t863 = -t752 * t491 + t749 * t502;
t883 = t726 * t698;
t919 = qJ(6) * t883 + 0.2e1 * qJD(6) * t700 + t863 + t948;
t434 = t749 * t491 + t752 * t502;
t829 = t749 * qJDD(3) + t752 * t706;
t621 = -qJD(5) * t700 - t829;
t664 = pkin(5) * t726 - qJ(6) * t700;
t777 = t621 * qJ(6) - 0.2e1 * qJD(6) * t698 - t726 * t664 + t434;
t640 = -t745 * t714 - t743 * t833;
t639 = -t743 * t714 + t745 * t833;
t374 = t752 * t434 + t749 * t863;
t373 = t749 * t434 - t752 * t863;
t915 = pkin(7) * t744;
t914 = pkin(7) * t746;
t622 = -t698 * qJD(5) + t752 * qJDD(3) - t749 * t706;
t593 = -t622 - t883;
t766 = (-qJD(5) + t726) * t700 - t829;
t507 = t593 * t752 + t749 * t766;
t607 = -t688 - t689;
t461 = -t507 * t753 + t607 * t750;
t913 = pkin(8) * t461;
t589 = (qJD(5) + t726) * t700 + t829;
t479 = -t543 * t753 + t589 * t750;
t912 = pkin(8) * t479;
t790 = t622 - t883;
t482 = -t559 * t753 + t750 * t790;
t911 = pkin(8) * t482;
t462 = t507 * t750 + t607 * t753;
t509 = -t749 * t593 + t752 * t766;
t810 = t462 * t751 - t509 * t754;
t384 = -t744 * t461 + t746 * t810;
t427 = t462 * t754 + t509 * t751;
t343 = t384 * t745 + t427 * t743;
t910 = qJ(1) * t343;
t480 = t543 * t750 + t589 * t753;
t807 = t480 * t751 - t544 * t754;
t402 = -t744 * t479 + t746 * t807;
t442 = t480 * t754 + t544 * t751;
t354 = t402 * t745 + t442 * t743;
t909 = qJ(1) * t354;
t483 = t559 * t750 + t753 * t790;
t806 = t483 * t751 - t560 * t754;
t409 = -t744 * t482 + t746 * t806;
t447 = t483 * t754 + t560 * t751;
t359 = t409 * t745 + t447 * t743;
t908 = qJ(1) * t359;
t859 = t739 + t740;
t709 = t859 * qJDD(2);
t712 = t733 + t735;
t794 = t709 * t751 + t712 * t754;
t630 = t794 * t746;
t636 = t709 * t754 - t712 * t751;
t572 = t630 * t745 + t636 * t743;
t907 = qJ(1) * t572;
t404 = -qJ(6) * t622 - t919;
t903 = t404 * t752;
t861 = -t753 * t601 + t750 * t671;
t468 = t561 * t753 + t750 * t861;
t902 = t468 * t751;
t776 = t755 * pkin(3) - t702 * t857 + t861;
t761 = qJDD(3) * qJ(4) - t776;
t759 = t706 * pkin(4) - pkin(9) * t735 + t761;
t830 = ((2 * qJD(4)) + t718) * qJD(3);
t490 = t830 + t759;
t901 = t490 * t749;
t900 = t490 * t752;
t899 = t600 * t750;
t898 = t600 * t753;
t895 = t704 * t750;
t891 = t707 * t753;
t882 = t726 * t749;
t881 = t726 * t752;
t879 = t749 * t404;
t875 = t751 * t671;
t871 = t754 * t671;
t869 = pkin(1) * t384 + t427 * t915;
t868 = pkin(1) * t402 + t442 * t915;
t867 = pkin(1) * t409 + t447 * t915;
t866 = -pkin(2) * t509 + pkin(8) * t462;
t865 = -pkin(2) * t544 + pkin(8) * t480;
t864 = -pkin(2) * t560 + pkin(8) * t483;
t862 = pkin(1) * t630 + t636 * t915;
t860 = pkin(2) * t712 + pkin(8) * t709;
t853 = qJD(4) * qJD(3);
t852 = qJDD(2) * t744;
t846 = t750 * t643;
t845 = t753 * t643;
t383 = t746 * t461 + t744 * t810;
t837 = -pkin(1) * t383 + t427 * t914;
t401 = t746 * t479 + t744 * t807;
t836 = -pkin(1) * t401 + t442 * t914;
t408 = t746 * t482 + t744 * t806;
t835 = -pkin(1) * t408 + t447 * t914;
t629 = t794 * t744;
t834 = -pkin(1) * t629 + t636 * t914;
t438 = pkin(4) * t507 - qJ(4) * t509;
t469 = t561 * t750 - t753 * t861;
t828 = t751 * t844;
t827 = t754 * t844;
t824 = pkin(3) * t750 - qJ(4) * t753;
t710 = -t751 * t756 + t848;
t823 = -pkin(7) * t710 - t875;
t793 = t754 * t756 + t850;
t822 = -pkin(7) * t793 + t871;
t385 = qJ(6) * t766 + (-t607 - t688) * pkin(5) + t777;
t392 = (-t593 + t622) * qJ(6) + t919;
t787 = pkin(4) * t607 - t509 * t917;
t328 = -t385 * t752 - t392 * t749 + t787;
t424 = pkin(5) * t593 + t438;
t318 = -t328 * t750 + t424 * t753 - t913;
t765 = -pkin(2) * t461 - qJ(4) * t607 + t507 * t917;
t320 = t385 * t749 - t392 * t752 + t765;
t820 = t318 * t751 + t320 * t754;
t364 = t404 + t922 - t948;
t737 = -0.2e1 * t853;
t757 = -t621 * pkin(5) - t688 * qJ(6) + t700 * t664 + qJDD(6) + t759;
t422 = -pkin(5) * t589 + qJ(6) * t628 - qJD(3) * t718 + t737 - t757;
t789 = pkin(4) * t589 - t544 * t917;
t365 = -qJ(6) * t876 - t422 * t752 + t789;
t323 = t364 * t753 - t365 * t750 - t912;
t764 = -pkin(2) * t479 - qJ(4) * t589 + t543 * t917;
t347 = -qJ(6) * t896 + t422 * t749 + t764;
t819 = t323 * t751 + t347 * t754;
t446 = t830 + t757;
t436 = qJ(6) * t847 + t446;
t526 = -pkin(5) * t790 - qJ(6) * t609;
t788 = pkin(4) * t790 - t560 * t917;
t367 = -t436 * t749 - t526 * t752 + t788;
t372 = (t688 - t847) * pkin(5) - t777 + t921;
t324 = -t367 * t750 + t372 * t753 - t911;
t763 = -pkin(2) * t482 - qJ(4) * t790 + t559 * t917;
t350 = -t436 * t752 + t526 * t749 + t763;
t818 = t324 * t751 + t350 * t754;
t341 = -t374 + t787;
t325 = -t341 * t750 + t438 * t753 - t913;
t334 = t373 + t765;
t817 = t325 * t751 + t334 * t754;
t410 = -t688 * pkin(5) + t777;
t345 = t410 * t749 + t903;
t336 = t345 * t750 + t446 * t753;
t346 = t410 * t752 - t879;
t816 = t336 * t751 - t346 * t754;
t393 = -t863 + t922;
t411 = t789 + t900;
t337 = t393 * t753 - t411 * t750 - t912;
t377 = t764 - t901;
t815 = t337 * t751 + t377 * t754;
t394 = -t434 + t921;
t418 = t788 - t901;
t338 = t394 * t753 - t418 * t750 - t911;
t379 = t763 - t900;
t814 = t338 * t751 + t379 * t754;
t352 = t373 * t750 + t490 * t753;
t813 = t352 * t751 - t374 * t754;
t523 = t761 + 0.2e1 * t853;
t517 = pkin(3) * t712 + t523;
t518 = qJ(4) * t712 + t786;
t443 = -t517 * t750 + t518 * t753;
t701 = t824 * qJDD(2);
t812 = t443 * t751 + t701 * t754;
t455 = t523 * t753 + t750 * t786;
t532 = t831 * t858 + t760;
t811 = t455 * t751 - t532 * t754;
t809 = t469 * t751 - t600 * t754;
t508 = t589 * t749 - t752 * t790;
t641 = t689 - t688;
t471 = -t508 * t750 + t641 * t753;
t510 = t589 * t752 + t749 * t790;
t808 = t471 * t751 + t510 * t754;
t669 = -t689 + t723;
t574 = -t669 * t752 + t876;
t488 = -t574 * t750 - t593 * t753;
t576 = t669 * t749 + t896;
t805 = t488 * t751 + t576 * t754;
t668 = t688 - t723;
t575 = -t668 * t749 - t897;
t489 = -t575 * t750 + t753 * t766;
t577 = -t668 * t752 + t877;
t804 = t489 * t751 + t577 * t754;
t582 = -t621 * t752 - t698 * t882;
t530 = -t582 * t750 - t845;
t583 = t621 * t749 - t698 * t881;
t803 = t530 * t751 + t583 * t754;
t584 = -t622 * t749 - t700 * t881;
t531 = -t584 * t750 + t845;
t585 = -t622 * t752 + t700 * t882;
t802 = t531 * t751 + t585 * t754;
t598 = (t698 * t749 + t700 * t752) * t726;
t579 = -t598 * t750 + t690 * t753;
t599 = (t698 * t752 - t700 * t749) * t726;
t801 = t579 * t751 + t599 * t754;
t538 = t611 * t754 - t612 * t751;
t539 = t611 * t751 + t612 * t754;
t635 = t891 - t895;
t713 = -t733 + t735;
t800 = t635 * t751 + t713 * t754;
t676 = t793 * t746;
t795 = t676 * t745 + t710 * t743;
t626 = t676 * t743 - t710 * t745;
t693 = t859 * t854;
t792 = -qJDD(3) * t754 + t693 * t751;
t785 = (-t383 * t744 - t384 * t746) * pkin(7);
t784 = (-t401 * t744 - t402 * t746) * pkin(7);
t783 = (-t408 * t744 - t409 * t746) * pkin(7);
t782 = (-t629 * t744 - t630 * t746) * pkin(7);
t665 = -t706 * t750 - t740 * t854;
t775 = t665 * t751 - t827;
t666 = t705 * t753 - t739 * t854;
t774 = t666 * t751 + t827;
t363 = -pkin(5) * t446 + qJ(6) * t410;
t307 = pkin(4) * t446 + qJ(6) * t879 - t346 * t917 - t363 * t752;
t313 = pkin(4) * t345 + pkin(5) * t404 - qJ(4) * t346;
t335 = -t345 * t753 + t446 * t750;
t288 = -pkin(8) * t335 - t307 * t750 + t313 * t753;
t295 = -pkin(2) * t335 - qJ(4) * t446 + qJ(6) * t903 + t345 * t917 + t363 * t749;
t317 = t336 * t754 + t346 * t751;
t773 = pkin(7) * t317 + t288 * t751 + t295 * t754;
t327 = pkin(4) * t490 - t374 * t917;
t330 = pkin(4) * t373 - qJ(4) * t374;
t351 = -t373 * t753 + t490 * t750;
t302 = -pkin(8) * t351 - t327 * t750 + t330 * t753;
t314 = -pkin(2) * t351 - qJ(4) * t490 + t373 * t917;
t326 = t352 * t754 + t374 * t751;
t772 = pkin(7) * t326 + t302 * t751 + t314 * t754;
t454 = t523 * t750 - t753 * t786;
t396 = -pkin(2) * t454 + pkin(3) * t786 - qJ(4) * t523;
t399 = -pkin(8) * t454 + t532 * t824;
t423 = t455 * t754 + t532 * t751;
t771 = pkin(7) * t423 + t396 * t754 + t399 * t751;
t758 = t858 * t918 + t760;
t520 = (-t707 + t839) * pkin(3) + t758;
t472 = -qJ(4) * t891 - t520 * t750 + t940;
t476 = pkin(3) * t715 + qJ(4) * t722 - t786 + t941;
t770 = t472 * t751 + t476 * t754 + t947;
t519 = -pkin(3) * t839 + qJ(4) * t704 - t758;
t473 = -pkin(3) * t895 + t519 * t753 - t933;
t474 = -t934 + pkin(3) * t720 + t737 + (-qJDD(3) - t716) * qJ(4) + t776;
t769 = t473 * t751 + t474 * t754 + t954;
t524 = t561 - t941;
t557 = t899 - t940;
t768 = t524 * t754 + t557 * t751 - t947;
t525 = -t861 + t934;
t558 = t898 + t933;
t767 = t525 * t754 + t558 * t751 - t954;
t451 = t469 * t754 + t600 * t751;
t762 = pkin(7) * t451 - (-pkin(2) * t754 - pkin(8) * t751) * t468;
t677 = t710 * t746;
t675 = t710 * t744;
t674 = t793 * t744;
t667 = qJDD(3) * t751 + t693 * t754;
t645 = t926 * t750;
t644 = (t706 - t839) * t753;
t638 = t792 * t746;
t637 = t792 * t744;
t634 = t704 * t753 + t707 * t750;
t627 = -t677 * t743 - t745 * t793;
t625 = t677 * t745 - t743 * t793;
t620 = t666 * t754 - t828;
t619 = t665 * t754 + t828;
t597 = t635 * t754 - t713 * t751;
t588 = -t638 * t743 + t667 * t745;
t587 = t638 * t745 + t667 * t743;
t581 = -t871 + (t674 * t744 + t676 * t746) * pkin(7);
t580 = -t875 + (-t675 * t744 - t677 * t746) * pkin(7);
t578 = t598 * t753 + t690 * t750;
t573 = -t630 * t743 + t636 * t745;
t571 = -t744 * t645 + t746 * t774;
t570 = -t744 * t644 + t746 * t775;
t569 = t746 * t645 + t744 * t774;
t568 = t746 * t644 + t744 * t775;
t563 = qJ(1) * t573;
t537 = -t744 * t634 + t746 * t800;
t536 = t746 * t634 + t744 * t800;
t535 = pkin(2) * t707 - t898 - t932;
t534 = -pkin(2) * t704 + t899 - t939;
t533 = t539 * t746;
t529 = t584 * t753 + t846;
t528 = t582 * t753 - t846;
t522 = -pkin(1) * t675 + t611 * t744 + t746 * t822;
t521 = pkin(1) * t674 + t612 * t744 + t746 * t823;
t516 = -t571 * t743 + t620 * t745;
t515 = -t570 * t743 + t619 * t745;
t514 = t571 * t745 + t620 * t743;
t513 = t570 * t745 + t619 * t743;
t512 = -t538 * t746 + t744 * t671;
t511 = -t538 * t744 - t746 * t671;
t503 = t579 * t754 - t599 * t751;
t487 = t575 * t753 + t750 * t766;
t486 = t574 * t753 - t593 * t750;
t478 = -t537 * t743 + t597 * t745;
t477 = t537 * t745 + t597 * t743;
t470 = t508 * t753 + t641 * t750;
t466 = t531 * t754 - t585 * t751;
t465 = t530 * t754 - t583 * t751;
t464 = t939 + t519 * t750 + (pkin(2) + t916) * t704;
t463 = t932 + t520 * t753 + (-pkin(2) - t904) * t707;
t459 = t469 + t860;
t458 = -t744 * t578 + t746 * t801;
t457 = t746 * t578 + t744 * t801;
t456 = -pkin(2) * t600 + pkin(8) * t469;
t453 = t489 * t754 - t577 * t751;
t452 = t488 * t754 - t576 * t751;
t450 = -pkin(1) * t511 + t539 * t914;
t449 = -t512 * t743 + t539 * t745;
t448 = t512 * t745 + t539 * t743;
t441 = t754 * t468 + t782;
t437 = (-t511 * t744 - t512 * t746) * pkin(7);
t435 = t517 * t753 + t518 * t750 + t860;
t432 = -t744 * t529 + t746 * t802;
t431 = -t744 * t528 + t746 * t803;
t430 = t746 * t529 + t744 * t802;
t429 = t746 * t528 + t744 * t803;
t428 = t471 * t754 - t510 * t751;
t421 = -t458 * t743 + t503 * t745;
t420 = t458 * t745 + t503 * t743;
t419 = t443 * t754 - t701 * t751 + t782;
t417 = -t525 * t751 + t558 * t754 + t968;
t416 = -t524 * t751 + t557 * t754 + t963;
t415 = -t744 * t487 + t746 * t804;
t414 = -t744 * t486 + t746 * t805;
t413 = t746 * t487 + t744 * t804;
t412 = t746 * t486 + t744 * t805;
t406 = t468 * t744 + t746 * t809;
t405 = -t468 * t746 + t744 * t809;
t398 = -t534 * t744 + t746 * t767 + t965;
t397 = -t535 * t744 + t746 * t768 + t959;
t395 = -t459 * t744 + t746 * t902 + t834;
t391 = -t432 * t743 + t466 * t745;
t390 = -t431 * t743 + t465 * t745;
t389 = t432 * t745 + t466 * t743;
t388 = t431 * t745 + t465 * t743;
t387 = -t744 * t470 + t746 * t808;
t386 = t746 * t470 + t744 * t808;
t382 = t472 * t754 - t476 * t751 - t963;
t380 = t473 * t754 - t474 * t751 - t968;
t378 = pkin(8) * t455 + (-pkin(2) + t825) * t532;
t376 = -t744 * t454 + t746 * t811;
t375 = t746 * t454 + t744 * t811;
t371 = -t415 * t743 + t453 * t745;
t370 = -t414 * t743 + t452 * t745;
t369 = t415 * t745 + t453 * t743;
t368 = t414 * t745 + t452 * t743;
t366 = -t435 * t744 + t746 * t812 + t834;
t362 = -t406 * t743 + t451 * t745;
t361 = t406 * t745 + t451 * t743;
t360 = -t409 * t743 + t447 * t745;
t358 = qJ(1) * t360;
t357 = -t463 * t744 + t746 * t770 - t959;
t356 = -t464 * t744 + t746 * t769 - t965;
t355 = -t402 * t743 + t442 * t745;
t353 = qJ(1) * t355;
t349 = -t387 * t743 + t428 * t745;
t348 = t387 * t745 + t428 * t743;
t344 = -t384 * t743 + t427 * t745;
t342 = qJ(1) * t344;
t340 = -t376 * t743 + t423 * t745;
t339 = t376 * t745 + t423 * t743;
t333 = t394 * t750 + t418 * t753 + t864;
t332 = t393 * t750 + t411 * t753 + t865;
t331 = -(pkin(2) * t751 - pkin(8) * t754) * t468 + (-t405 * t744 - t406 * t746) * pkin(7);
t329 = -pkin(1) * t405 - t456 * t744 + t746 * t762;
t322 = t367 * t753 + t372 * t750 + t864;
t321 = t341 * t753 + t438 * t750 + t866;
t319 = t364 * t750 + t365 * t753 + t865;
t316 = t328 * t753 + t424 * t750 + t866;
t315 = -t396 * t751 + t399 * t754 + (-t375 * t744 - t376 * t746) * pkin(7);
t312 = -t744 * t351 + t746 * t813;
t311 = t746 * t351 + t744 * t813;
t310 = t338 * t754 - t379 * t751 + t783;
t309 = -pkin(1) * t375 - t378 * t744 + t746 * t771;
t308 = t337 * t754 - t377 * t751 + t784;
t306 = -t744 * t335 + t746 * t816;
t305 = t746 * t335 + t744 * t816;
t304 = t324 * t754 - t350 * t751 + t783;
t303 = t323 * t754 - t347 * t751 + t784;
t301 = -t333 * t744 + t746 * t814 + t835;
t300 = -t332 * t744 + t746 * t815 + t836;
t299 = -t312 * t743 + t326 * t745;
t298 = t312 * t745 + t326 * t743;
t297 = t325 * t754 - t334 * t751 + t785;
t296 = -pkin(2) * t374 + pkin(8) * t352 + t327 * t753 + t330 * t750;
t294 = -t322 * t744 + t746 * t818 + t835;
t293 = t318 * t754 - t320 * t751 + t785;
t292 = -t319 * t744 + t746 * t819 + t836;
t291 = -t321 * t744 + t746 * t817 + t837;
t290 = -t306 * t743 + t317 * t745;
t289 = t306 * t745 + t317 * t743;
t287 = -t316 * t744 + t746 * t820 + t837;
t286 = -pkin(2) * t346 + pkin(8) * t336 + t307 * t753 + t313 * t750;
t285 = t302 * t754 - t314 * t751 + (-t311 * t744 - t312 * t746) * pkin(7);
t284 = -pkin(1) * t311 - t296 * t744 + t746 * t772;
t283 = t288 * t754 - t295 * t751 + (-t305 * t744 - t306 * t746) * pkin(7);
t282 = -pkin(1) * t305 - t286 * t744 + t746 * t773;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t640, 0, 0, 0, 0, 0, 0, t627, t626, 0, t449, 0, 0, 0, 0, 0, 0, t496, t499, t573, t362, 0, 0, 0, 0, 0, 0, t573, -t496, -t499, t340, 0, 0, 0, 0, 0, 0, t355, t360, t344, t299, 0, 0, 0, 0, 0, 0, t355, t360, t344, t290; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t639, 0, 0, 0, 0, 0, 0, t625, -t795, 0, t448, 0, 0, 0, 0, 0, 0, -t493, -t494, t572, t361, 0, 0, 0, 0, 0, 0, t572, t493, t494, t339, 0, 0, 0, 0, 0, 0, t354, t359, t343, t298, 0, 0, 0, 0, 0, 0, t354, t359, t343, t289; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t870, 0, 0, 0, 0, 0, 0, t675, -t674, 0, t511, 0, 0, 0, 0, 0, 0, -t546, -t547, t629, t405, 0, 0, 0, 0, 0, 0, t629, t546, t547, t375, 0, 0, 0, 0, 0, 0, t401, t408, t383, t311, 0, 0, 0, 0, 0, 0, t401, t408, t383, t305; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t924, -t923, -t639, -qJ(1) * t639, 0, 0, -t626, 0, t627, t743 * t852, -qJ(1) * t625 - t522 * t743 + t580 * t745, qJ(1) * t795 - t521 * t743 + t581 * t745, -t533 * t743 + t538 * t745, -qJ(1) * t448 + t437 * t745 - t450 * t743, t516, t478, -t962, t515, t957, t588, -t397 * t743 + t416 * t745 + t967, -t398 * t743 + t417 * t745 + t970, -t395 * t743 + t441 * t745 - t907, -qJ(1) * t361 - t329 * t743 + t331 * t745, t588, t962, -t957, t516, t478, t515, -t366 * t743 + t419 * t745 - t907, -t357 * t743 + t382 * t745 - t967, -t356 * t743 + t380 * t745 - t970, -qJ(1) * t339 - t309 * t743 + t315 * t745, t391, t349, t370, t390, t371, t421, -t300 * t743 + t308 * t745 - t909, -t301 * t743 + t310 * t745 - t908, -t291 * t743 + t297 * t745 - t910, -qJ(1) * t298 - t284 * t743 + t285 * t745, t391, t349, t370, t390, t371, t421, -t292 * t743 + t303 * t745 - t909, -t294 * t743 + t304 * t745 - t908, -t287 * t743 + t293 * t745 - t910, -qJ(1) * t289 - t282 * t743 + t283 * t745; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t923, -t924, t640, qJ(1) * t640, 0, 0, t795, 0, t625, -t745 * t852, qJ(1) * t627 + t522 * t745 + t580 * t743, qJ(1) * t626 + t521 * t745 + t581 * t743, t533 * t745 + t538 * t743, qJ(1) * t449 + t437 * t743 + t450 * t745, t514, t477, t961, t513, -t956, t587, t397 * t745 + t416 * t743 + t966, t398 * t745 + t417 * t743 + t969, t395 * t745 + t441 * t743 + t563, qJ(1) * t362 + t329 * t745 + t331 * t743, t587, -t961, t956, t514, t477, t513, t366 * t745 + t419 * t743 + t563, t357 * t745 + t382 * t743 - t966, t356 * t745 + t380 * t743 - t969, qJ(1) * t340 + t309 * t745 + t315 * t743, t389, t348, t368, t388, t369, t420, t300 * t745 + t308 * t743 + t353, t301 * t745 + t310 * t743 + t358, t291 * t745 + t297 * t743 + t342, qJ(1) * t299 + t284 * t745 + t285 * t743, t389, t348, t368, t388, t369, t420, t292 * t745 + t303 * t743 + t353, t294 * t745 + t304 * t743 + t358, t287 * t745 + t293 * t743 + t342, qJ(1) * t290 + t282 * t745 + t283 * t743; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t833, t714, 0, 0, 0, 0, t674, 0, t675, t746 * qJDD(2), pkin(1) * t677 - t611 * t746 + t744 * t822, -pkin(1) * t676 - t612 * t746 + t744 * t823, t539 * t744, pkin(1) * t512 + t539 * t915, t569, t536, t949, t568, -t942, t637, t535 * t746 + t744 * t768 - t958, t534 * t746 + t744 * t767 - t964, t459 * t746 + t744 * t902 + t862, pkin(1) * t406 + t456 * t746 + t744 * t762, t637, -t949, t942, t569, t536, t568, t435 * t746 + t744 * t812 + t862, t463 * t746 + t744 * t770 + t958, t464 * t746 + t744 * t769 + t964, pkin(1) * t376 + t378 * t746 + t744 * t771, t430, t386, t412, t429, t413, t457, t332 * t746 + t744 * t815 + t868, t333 * t746 + t744 * t814 + t867, t321 * t746 + t744 * t817 + t869, pkin(1) * t312 + t296 * t746 + t744 * t772, t430, t386, t412, t429, t413, t457, t319 * t746 + t744 * t819 + t868, t322 * t746 + t744 * t818 + t867, t316 * t746 + t744 * t820 + t869, pkin(1) * t306 + t286 * t746 + t744 * t773;];
tauB_reg  = t1;
