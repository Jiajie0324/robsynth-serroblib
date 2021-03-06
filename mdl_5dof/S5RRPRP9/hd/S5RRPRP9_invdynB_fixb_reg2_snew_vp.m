% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RRPRP9
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
%   pkin=[a2,a3,a4,a5,d1,d2,d4,theta3]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 20:08
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RRPRP9_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPRP9_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPRP9_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RRPRP9_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RRPRP9_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRPRP9_invdynB_fixb_reg2_snew_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 20:07:42
% EndTime: 2019-12-31 20:08:03
% DurationCPUTime: 19.95s
% Computational Cost: add. (39412->564), mult. (86075->787), div. (0->0), fcn. (59235->8), ass. (0->413)
t755 = sin(pkin(8));
t756 = cos(pkin(8));
t758 = sin(qJ(2));
t805 = qJD(1) * t758;
t717 = t755 * qJD(2) + t756 * t805;
t757 = sin(qJ(4));
t760 = cos(qJ(4));
t789 = t756 * qJD(2) - t755 * t805;
t676 = t760 * t717 + t757 * t789;
t673 = t676 ^ 2;
t761 = cos(qJ(2));
t803 = t761 * qJD(1);
t744 = -qJD(4) + t803;
t848 = t744 ^ 2;
t612 = t848 + t673;
t801 = qJD(1) * qJD(2);
t747 = t758 * t801;
t798 = t761 * qJDD(1);
t725 = -t747 + t798;
t718 = -qJDD(4) + t725;
t674 = t757 * t717 - t760 * t789;
t839 = t676 * t674;
t766 = t718 - t839;
t823 = t757 * t766;
t539 = t760 * t612 - t823;
t811 = t760 * t766;
t545 = t757 * t612 + t811;
t488 = t755 * t539 + t756 * t545;
t793 = t761 * t801;
t800 = t758 * qJDD(1);
t724 = t793 + t800;
t697 = t755 * qJDD(2) + t756 * t724;
t774 = t756 * qJDD(2) - t755 * t724;
t765 = -t674 * qJD(4) + t760 * t697 + t757 * t774;
t840 = t674 * t744;
t860 = t765 + t840;
t462 = t761 * t488 + t758 * t860;
t478 = t756 * t539 - t755 * t545;
t759 = sin(qJ(1));
t762 = cos(qJ(1));
t424 = t759 * t462 + t762 * t478;
t961 = pkin(5) * t424;
t426 = t762 * t462 - t759 * t478;
t960 = pkin(5) * t426;
t460 = t758 * t488 - t761 * t860;
t959 = pkin(6) * t460;
t958 = pkin(1) * t460 - pkin(2) * t860 + qJ(3) * t488;
t957 = -pkin(1) * t478 - pkin(6) * t462;
t791 = t757 * t697 - t760 * t774;
t566 = (qJD(4) - t744) * t676 + t791;
t511 = -t757 * t566 + t760 * t860;
t826 = t757 * t860;
t513 = t760 * t566 + t826;
t448 = t755 * t511 + t756 * t513;
t849 = t674 ^ 2;
t616 = t673 - t849;
t435 = t761 * t448 - t758 * t616;
t446 = -t756 * t511 + t755 * t513;
t956 = t759 * t435 - t762 * t446;
t955 = t762 * t435 + t759 * t446;
t651 = t849 - t848;
t558 = t757 * t651 - t811;
t562 = t760 * t651 + t823;
t507 = t755 * t558 - t756 * t562;
t567 = (qJD(4) + t744) * t676 + t791;
t469 = t761 * t507 + t758 * t567;
t503 = t756 * t558 + t755 * t562;
t954 = t759 * t469 + t762 * t503;
t953 = t762 * t469 - t759 * t503;
t859 = t840 - t765;
t888 = -t760 * t567 - t757 * t859;
t889 = -t757 * t567 + t760 * t859;
t903 = t755 * t888 + t756 * t889;
t587 = -t849 - t673;
t904 = -t755 * t889 + t756 * t888;
t923 = t758 * t587 + t761 * t904;
t934 = t759 * t903 + t762 * t923;
t951 = pkin(5) * t934;
t935 = t759 * t923 - t762 * t903;
t950 = pkin(5) * t935;
t949 = qJ(3) * t478;
t942 = -pkin(2) * t478 - pkin(3) * t539;
t940 = t758 * t448 + t761 * t616;
t939 = t758 * t507 - t761 * t567;
t925 = -t761 * t587 + t758 * t904;
t938 = pkin(6) * t925;
t937 = -pkin(1) * t925 + pkin(2) * t587 - qJ(3) * t904;
t936 = -pkin(1) * t903 + pkin(6) * t923;
t931 = pkin(7) * t539;
t930 = pkin(7) * t545;
t929 = qJ(3) * t903;
t423 = -pkin(2) * t903 - pkin(3) * t889;
t652 = -t673 + t848;
t767 = -t718 - t839;
t822 = t757 * t767;
t868 = t760 * t652 + t822;
t601 = t760 * t767;
t869 = -t757 * t652 + t601;
t881 = -t755 * t869 - t756 * t868;
t880 = -t755 * t868 + t756 * t869;
t905 = -t758 * t859 + t761 * t880;
t924 = t759 * t905 + t762 * t881;
t922 = -t759 * t881 + t762 * t905;
t858 = -t848 - t849;
t863 = t760 * t858 - t822;
t866 = t757 * t858 + t601;
t882 = t755 * t863 + t756 * t866;
t921 = pkin(1) * t882;
t919 = pkin(7) * t889;
t918 = qJ(3) * t882;
t883 = -t755 * t866 + t756 * t863;
t917 = qJ(3) * t883;
t914 = t758 * t883;
t912 = t759 * t882;
t911 = t761 * t883;
t909 = t762 * t882;
t908 = -pkin(2) * t882 - pkin(3) * t866;
t907 = -pkin(3) * t587 + pkin(7) * t888;
t906 = t758 * t880 + t761 * t859;
t899 = pkin(7) * t863;
t898 = pkin(7) * t866;
t897 = qJ(5) * t860;
t775 = t789 * t717;
t867 = -t725 + t775;
t896 = t755 * t867;
t895 = t756 * t867;
t736 = t762 * g(1) + t759 * g(2);
t763 = qJD(1) ^ 2;
t711 = -t763 * pkin(1) + qJDD(1) * pkin(6) - t736;
t844 = pkin(2) * t761;
t778 = -qJ(3) * t758 - t844;
t722 = t778 * qJD(1);
t842 = t761 * g(3);
t847 = qJD(2) ^ 2;
t637 = -qJDD(2) * pkin(2) - t847 * qJ(3) + (qJD(1) * t722 + t711) * t758 + qJDD(3) + t842;
t698 = -pkin(3) * t803 - t717 * pkin(7);
t785 = t789 ^ 2;
t579 = -t774 * pkin(3) - t785 * pkin(7) + t717 * t698 + t637;
t600 = -t676 * qJD(4) - t791;
t890 = -t600 * pkin(4) + t579 - t897;
t768 = (t674 * t757 + t676 * t760) * t744;
t836 = t744 * t757;
t646 = t676 * t836;
t835 = t744 * t760;
t795 = t674 * t835;
t779 = -t646 + t795;
t853 = -t755 * t779 - t756 * t768;
t852 = -t755 * t768 + t756 * t779;
t861 = -t758 * t718 + t761 * t852;
t887 = t759 * t861 + t762 * t853;
t772 = -t757 * t600 - t795;
t780 = t760 * t600 - t674 * t836;
t850 = -t755 * t772 - t756 * t780;
t796 = t758 * t839;
t851 = -t755 * t780 + t756 * t772;
t862 = t761 * t851 - t796;
t886 = t759 * t862 + t762 * t850;
t885 = -t759 * t853 + t762 * t861;
t884 = -t759 * t850 + t762 * t862;
t879 = -2 * qJD(5);
t865 = t761 * t718 + t758 * t852;
t794 = t761 * t839;
t864 = t758 * t851 + t794;
t703 = t789 * t803;
t666 = -t697 - t703;
t704 = t717 * t803;
t664 = t774 - t704;
t735 = t759 * g(1) - t762 * g(2);
t710 = qJDD(1) * pkin(1) + t763 * pkin(6) + t735;
t777 = t724 + t793;
t628 = -t777 * qJ(3) + (-t725 + t747) * pkin(2) - t710;
t693 = -t758 * g(3) + t761 * t711;
t638 = -t847 * pkin(2) + qJDD(2) * qJ(3) + t722 * t803 + t693;
t846 = 2 * qJD(3);
t576 = -t756 * t628 + t755 * t638 + t717 * t846;
t525 = pkin(3) * t867 + t666 * pkin(7) - t576;
t577 = t755 * t628 + t756 * t638 + t789 * t846;
t532 = -pkin(3) * t785 + pkin(7) * t774 + t698 * t803 + t577;
t471 = t757 * t525 + t760 * t532;
t615 = t674 * pkin(4) - t676 * qJ(5);
t776 = -t718 * qJ(5) - t674 * t615 + t744 * t879 + t471;
t554 = -t676 * t835 + t757 * t765;
t555 = t760 * t765 + t646;
t496 = -t756 * t554 - t755 * t555;
t499 = -t755 * t554 + t756 * t555;
t781 = t761 * t499 + t796;
t855 = t762 * t496 + t759 * t781;
t854 = -t759 * t496 + t762 * t781;
t716 = t717 ^ 2;
t845 = pkin(2) * t758;
t843 = pkin(4) * t760;
t841 = qJ(5) * t760;
t838 = t676 * t744;
t752 = t758 ^ 2;
t834 = t752 * t763;
t470 = -t760 * t525 + t757 * t532;
t421 = -t760 * t470 + t757 * t471;
t833 = t755 * t421;
t832 = t755 * t637;
t667 = t725 + t775;
t831 = t755 * t667;
t830 = t756 * t421;
t829 = t756 * t637;
t828 = t756 * t667;
t824 = t757 * t579;
t819 = t758 * t710;
t817 = t758 * t725;
t743 = t761 * t763 * t758;
t732 = -t743 + qJDD(2);
t816 = t758 * t732;
t733 = qJDD(2) + t743;
t815 = t758 * t733;
t812 = t760 * t579;
t809 = t761 * t710;
t808 = t761 * t732;
t807 = -t587 - t848;
t753 = t761 ^ 2;
t806 = t752 + t753;
t799 = t759 * qJDD(1);
t797 = t762 * qJDD(1);
t792 = -qJ(5) * t757 - pkin(3);
t422 = t757 * t470 + t760 * t471;
t692 = t758 * t711 + t842;
t631 = t758 * t692 + t761 * t693;
t684 = -t759 * t735 - t762 * t736;
t788 = t759 * t743;
t787 = t762 * t743;
t784 = t676 * t615 + qJDD(5) + t470;
t729 = -t759 * t763 + t797;
t783 = -pkin(5) * t729 - t759 * g(3);
t782 = t758 * t499 - t794;
t517 = -t756 * t576 + t755 * t577;
t518 = t755 * t576 + t756 * t577;
t630 = t761 * t692 - t758 * t693;
t683 = t762 * t735 - t759 * t736;
t771 = t758 * t775;
t770 = t761 * t775;
t769 = t718 * pkin(4) + t784;
t764 = 0.2e1 * qJD(5) * t676 - t890;
t749 = t753 * t763;
t741 = -t749 - t847;
t740 = t749 - t847;
t739 = -t834 - t847;
t738 = -t834 + t847;
t731 = t749 - t834;
t730 = t749 + t834;
t728 = t762 * t763 + t799;
t727 = t806 * qJDD(1);
t726 = -0.2e1 * t747 + t798;
t723 = 0.2e1 * t793 + t800;
t720 = t761 * t733;
t719 = t806 * t801;
t713 = t761 * t725;
t705 = -pkin(5) * t728 + t762 * g(3);
t701 = -t716 - t749;
t700 = -t716 + t749;
t699 = t785 - t749;
t696 = t761 * t724 - t752 * t801;
t695 = -t753 * t801 - t817;
t691 = -t758 * t739 - t808;
t690 = -t758 * t738 + t720;
t689 = t761 * t741 - t815;
t688 = t761 * t740 - t816;
t687 = t761 * t739 - t816;
t686 = t758 * t741 + t720;
t681 = t762 * t727 - t759 * t730;
t680 = t759 * t727 + t762 * t730;
t679 = -t716 + t785;
t678 = -t758 * t723 + t761 * t726;
t677 = -t749 - t785;
t665 = t697 - t703;
t663 = t704 + t774;
t657 = t785 + t716;
t655 = (-t755 * t717 - t756 * t789) * t803;
t654 = (-t756 * t717 + t755 * t789) * t803;
t650 = t762 * t691 + t759 * t723;
t649 = t762 * t689 - t759 * t726;
t648 = t759 * t691 - t762 * t723;
t647 = t759 * t689 + t762 * t726;
t645 = -pkin(6) * t687 - t809;
t644 = -pkin(6) * t686 - t819;
t642 = t756 * t697 + t704 * t755;
t641 = -t755 * t697 + t704 * t756;
t640 = t703 * t756 - t755 * t774;
t639 = -t703 * t755 - t756 * t774;
t636 = -pkin(1) * t687 + t693;
t635 = -pkin(1) * t686 + t692;
t625 = t761 * t655 - t817;
t624 = t756 * t699 + t831;
t623 = -t755 * t700 + t895;
t622 = -t755 * t701 + t828;
t621 = -t755 * t699 + t828;
t620 = -t756 * t700 - t896;
t619 = t756 * t701 + t831;
t614 = t762 * t631 - t759 * t710;
t613 = t759 * t631 + t762 * t710;
t610 = t756 * t677 - t896;
t609 = t755 * t677 + t895;
t608 = t761 * t642 - t771;
t607 = t761 * t640 + t771;
t599 = t756 * t664 - t755 * t666;
t598 = t756 * t663 - t755 * t665;
t597 = t755 * t664 + t756 * t666;
t596 = -t755 * t663 - t756 * t665;
t584 = t761 * t624 + t664 * t758;
t583 = t761 * t623 - t758 * t666;
t582 = t761 * t622 + t758 * t665;
t581 = t758 * t622 - t761 * t665;
t580 = -qJ(3) * t619 + t829;
t578 = t761 * t598 - t758 * t679;
t575 = t761 * t610 - t758 * t663;
t574 = t758 * t610 + t761 * t663;
t565 = -t600 - t838;
t549 = -qJ(3) * t609 + t832;
t548 = t761 * t599 - t758 * t657;
t547 = t758 * t599 + t761 * t657;
t534 = t762 * t582 + t759 * t619;
t533 = t759 * t582 - t762 * t619;
t529 = -pkin(2) * t619 + t577;
t526 = -pkin(2) * t609 + t576;
t522 = t762 * t575 + t759 * t609;
t521 = t759 * t575 - t762 * t609;
t520 = t762 * t548 + t759 * t597;
t519 = t759 * t548 - t762 * t597;
t508 = t812 + t931;
t493 = -pkin(1) * t581 + pkin(2) * t665 - qJ(3) * t622 - t832;
t485 = t824 - t898;
t484 = -pkin(1) * t574 - pkin(2) * t663 - qJ(3) * t610 + t829;
t483 = t761 * t518 + t758 * t637;
t482 = t758 * t518 - t761 * t637;
t477 = -qJ(3) * t597 - t517;
t472 = -pkin(3) * t860 + t824 + t930;
t464 = (-pkin(4) * t744 + t879) * t676 + t890;
t463 = t758 * t565 + t911;
t461 = -t761 * t565 + t914;
t459 = -pkin(3) * t566 - t812 + t899;
t458 = -pkin(6) * t581 - t758 * t529 + t761 * t580;
t457 = t758 * t566 + t911;
t455 = -t761 * t566 + t914;
t453 = -pkin(6) * t574 - t758 * t526 + t761 * t549;
t452 = -pkin(1) * t547 - pkin(2) * t657 - qJ(3) * t599 - t518;
t443 = qJ(5) * t848 - t769;
t442 = -pkin(4) * t848 + t776;
t441 = t764 + (-t565 + t838) * pkin(4);
t440 = pkin(4) * t838 + t764 + t897;
t439 = -pkin(6) * t547 + t761 * t477 + t597 * t845;
t438 = t762 * t483 + t759 * t517;
t437 = t759 * t483 - t762 * t517;
t434 = -pkin(1) * t482 + pkin(2) * t637 - qJ(3) * t518;
t429 = qJ(5) * t807 + t769;
t428 = pkin(4) * t807 + t776;
t427 = t762 * t463 + t912;
t425 = t759 * t463 - t909;
t420 = -t757 * t441 - t565 * t841 - t898;
t419 = t762 * t457 + t912;
t417 = t759 * t457 - t909;
t415 = t471 - t942;
t414 = -pkin(6) * t482 + (-qJ(3) * t761 + t845) * t517;
t413 = -pkin(4) * t826 + t760 * t440 - t931;
t412 = t470 + t908;
t411 = -pkin(3) * t579 + pkin(7) * t422;
t410 = t760 * t441 + t565 * t792 + t899;
t409 = -t755 * t472 + t756 * t508 + t949;
t408 = -t930 + t757 * t440 + (pkin(3) + t843) * t860;
t407 = -pkin(4) * t859 + qJ(5) * t567 + t423;
t406 = -t755 * t459 + t756 * t485 - t918;
t405 = -t421 - t919;
t404 = t760 * t442 - t757 * t443;
t403 = t757 * t442 + t760 * t443;
t402 = (-t858 - t848) * qJ(5) + (-t767 + t718) * pkin(4) + t784 + t908;
t397 = t422 + t907;
t396 = qJ(5) * t766 + (-t612 + t848) * pkin(4) - t776 + t942;
t395 = -t756 * t472 - t755 * t508 - t958;
t394 = -t757 * t428 + t760 * t429 - t919;
t393 = t756 * t422 - t833;
t392 = t755 * t422 + t830;
t391 = -pkin(1) * t455 + pkin(2) * t566 - t756 * t459 - t755 * t485 - t917;
t390 = t760 * t428 + t757 * t429 + t907;
t389 = t761 * t393 + t758 * t579;
t388 = t758 * t393 - t761 * t579;
t387 = -pkin(7) * t403 + (pkin(4) * t757 - t841) * t464;
t386 = -t755 * t410 + t756 * t420 - t918;
t385 = -t755 * t408 + t756 * t413 - t949;
t384 = -t755 * t403 + t756 * t404;
t383 = t756 * t403 + t755 * t404;
t382 = t761 * t409 - t758 * t415 - t959;
t381 = pkin(7) * t404 + (t792 - t843) * t464;
t380 = -pkin(6) * t455 + t761 * t406 - t758 * t412;
t379 = -pkin(2) * t392 - pkin(3) * t421;
t378 = t761 * t384 + t758 * t464;
t377 = t758 * t384 - t761 * t464;
t376 = -pkin(1) * t461 + pkin(2) * t565 - t756 * t410 - t755 * t420 - t917;
t375 = -t756 * t408 - t755 * t413 + t958;
t374 = -t755 * t397 + t756 * t405 - t929;
t373 = -pkin(7) * t830 - qJ(3) * t392 - t755 * t411;
t372 = t762 * t389 + t759 * t392;
t371 = t759 * t389 - t762 * t392;
t370 = -t756 * t397 - t755 * t405 + t937;
t369 = -pkin(6) * t461 + t761 * t386 - t758 * t402;
t368 = -t755 * t390 + t756 * t394 - t929;
t367 = t761 * t385 - t758 * t396 + t959;
t366 = t761 * t374 - t758 * t423 - t938;
t365 = -pkin(2) * t383 - pkin(3) * t403 - pkin(4) * t443 - qJ(5) * t442;
t364 = -t756 * t390 - t755 * t394 + t937;
t363 = t762 * t378 + t759 * t383;
t362 = t759 * t378 - t762 * t383;
t361 = -pkin(1) * t388 + pkin(2) * t579 + pkin(7) * t833 - qJ(3) * t393 - t756 * t411;
t360 = t761 * t368 - t758 * t407 - t938;
t359 = -qJ(3) * t383 - t755 * t381 + t756 * t387;
t358 = -pkin(6) * t388 + t761 * t373 - t758 * t379;
t357 = -pkin(1) * t377 + pkin(2) * t464 - qJ(3) * t384 - t756 * t381 - t755 * t387;
t356 = -pkin(6) * t377 + t761 * t359 - t758 * t365;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t728, -t729, 0, t684, 0, 0, 0, 0, 0, 0, t649, t650, t681, t614, 0, 0, 0, 0, 0, 0, t522, t534, t520, t438, 0, 0, 0, 0, 0, 0, t419, t426, t934, t372, 0, 0, 0, 0, 0, 0, t427, t934, -t426, t363; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t729, -t728, 0, t683, 0, 0, 0, 0, 0, 0, t647, t648, t680, t613, 0, 0, 0, 0, 0, 0, t521, t533, t519, t437, 0, 0, 0, 0, 0, 0, t417, t424, t935, t371, 0, 0, 0, 0, 0, 0, t425, t935, -t424, t362; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, t686, t687, 0, -t630, 0, 0, 0, 0, 0, 0, t574, t581, t547, t482, 0, 0, 0, 0, 0, 0, t455, t460, t925, t388, 0, 0, 0, 0, 0, 0, t461, t925, -t460, t377; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t729, 0, -t728, 0, t783, -t705, -t683, -pkin(5) * t683, t762 * t696 - t788, t762 * t678 - t759 * t731, t762 * t690 + t758 * t799, t762 * t695 + t788, t762 * t688 + t759 * t798, t759 * qJDD(2) + t762 * t719, -pkin(5) * t647 - t759 * t635 + t762 * t644, -pkin(5) * t648 - t759 * t636 + t762 * t645, -pkin(5) * t680 + t762 * t630, -pkin(5) * t613 - (pkin(1) * t759 - pkin(6) * t762) * t630, t762 * t608 - t759 * t641, t762 * t578 - t759 * t596, t762 * t583 - t759 * t620, t762 * t607 - t759 * t639, t762 * t584 - t759 * t621, t762 * t625 - t759 * t654, -pkin(5) * t521 + t762 * t453 - t759 * t484, -pkin(5) * t533 + t762 * t458 - t759 * t493, -pkin(5) * t519 + t762 * t439 - t759 * t452, -pkin(5) * t437 + t762 * t414 - t759 * t434, t854, -t955, t922, t884, -t953, t885, -pkin(5) * t417 + t762 * t380 - t759 * t391, t762 * t382 - t759 * t395 - t961, t762 * t366 - t759 * t370 - t950, -pkin(5) * t371 + t762 * t358 - t759 * t361, t854, t922, t955, t885, t953, t884, -pkin(5) * t425 + t762 * t369 - t759 * t376, t762 * t360 - t759 * t364 - t950, t762 * t367 - t759 * t375 + t961, -pkin(5) * t362 + t762 * t356 - t759 * t357; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t728, 0, t729, 0, t705, t783, t684, pkin(5) * t684, t759 * t696 + t787, t759 * t678 + t762 * t731, t759 * t690 - t758 * t797, t759 * t695 - t787, t759 * t688 - t761 * t797, -t762 * qJDD(2) + t759 * t719, pkin(5) * t649 + t762 * t635 + t759 * t644, pkin(5) * t650 + t762 * t636 + t759 * t645, pkin(5) * t681 + t759 * t630, pkin(5) * t614 - (-pkin(1) * t762 - pkin(6) * t759) * t630, t759 * t608 + t762 * t641, t759 * t578 + t762 * t596, t759 * t583 + t762 * t620, t759 * t607 + t762 * t639, t759 * t584 + t762 * t621, t759 * t625 + t762 * t654, pkin(5) * t522 + t759 * t453 + t762 * t484, pkin(5) * t534 + t759 * t458 + t762 * t493, pkin(5) * t520 + t759 * t439 + t762 * t452, pkin(5) * t438 + t759 * t414 + t762 * t434, t855, -t956, t924, t886, -t954, t887, pkin(5) * t419 + t759 * t380 + t762 * t391, t759 * t382 + t762 * t395 + t960, t759 * t366 + t762 * t370 + t951, pkin(5) * t372 + t759 * t358 + t762 * t361, t855, t924, t956, t887, t954, t886, pkin(5) * t427 + t759 * t369 + t762 * t376, t759 * t360 + t762 * t364 + t951, t759 * t367 + t762 * t375 - t960, pkin(5) * t363 + t759 * t356 + t762 * t357; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t735, t736, 0, 0, t777 * t758, t761 * t723 + t758 * t726, t761 * t738 + t815, -t758 * t793 + t713, t758 * t740 + t808, 0, pkin(1) * t726 + pkin(6) * t689 + t809, -pkin(1) * t723 + pkin(6) * t691 - t819, pkin(1) * t730 + pkin(6) * t727 + t631, pkin(1) * t710 + pkin(6) * t631, t758 * t642 + t770, t758 * t598 + t761 * t679, t758 * t623 + t761 * t666, t758 * t640 - t770, t758 * t624 - t664 * t761, t758 * t655 + t713, -pkin(1) * t609 + pkin(6) * t575 + t761 * t526 + t758 * t549, -pkin(1) * t619 + pkin(6) * t582 + t761 * t529 + t758 * t580, pkin(6) * t548 + t758 * t477 + (-pkin(1) - t844) * t597, pkin(6) * t483 + (-pkin(1) + t778) * t517, t782, -t940, t906, t864, -t939, t865, pkin(6) * t457 + t758 * t406 + t761 * t412 - t921, t758 * t409 + t761 * t415 - t957, t758 * t374 + t761 * t423 + t936, -pkin(1) * t392 + pkin(6) * t389 + t758 * t373 + t761 * t379, t782, t906, t940, t865, t939, t864, pkin(6) * t463 + t758 * t386 + t761 * t402 - t921, t758 * t368 + t761 * t407 + t936, t758 * t385 + t761 * t396 + t957, -pkin(1) * t383 + pkin(6) * t378 + t758 * t359 + t761 * t365;];
tauB_reg = t1;
