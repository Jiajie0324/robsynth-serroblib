% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRPRRP1
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d4,d5,theta1,theta3]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 23:33
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRPRRP1_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPRRP1_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPRRP1_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPRRP1_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPRRP1_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6PRPRRP1_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 23:32:37
% EndTime: 2019-05-04 23:33:01
% DurationCPUTime: 20.72s
% Computational Cost: add. (94272->746), mult. (177630->1153), div. (0->0), fcn. (129143->12), ass. (0->557)
t726 = sin(pkin(10));
t729 = cos(pkin(10));
t698 = g(1) * t729 + g(2) * t726;
t735 = sin(qJ(2));
t738 = cos(qJ(2));
t697 = g(1) * t726 - t729 * g(2);
t727 = sin(pkin(6));
t730 = cos(pkin(6));
t835 = g(3) - qJDD(1);
t889 = -t730 * t697 + t727 * t835;
t610 = -t738 * t698 - t735 * t889;
t739 = qJD(2) ^ 2;
t600 = -t739 * pkin(2) + t610;
t725 = sin(pkin(11));
t728 = cos(pkin(11));
t609 = -t698 * t735 + t738 * t889;
t752 = qJDD(2) * pkin(2) - t609;
t548 = t728 * t600 + t725 * t752;
t539 = -pkin(3) * t739 + qJDD(2) * pkin(8) + t548;
t665 = t697 * t727 + t730 * t835;
t658 = -qJDD(3) + t665;
t737 = cos(qJ(4));
t646 = t737 * t658;
t734 = sin(qJ(4));
t872 = pkin(4) * t737;
t799 = -pkin(9) * t734 - t872;
t685 = t799 * qJD(2);
t877 = qJD(4) ^ 2;
t491 = (qJD(2) * t685 + t539) * t734 - qJDD(4) * pkin(4) - t877 * pkin(9) + t646;
t547 = t600 * t725 - t728 * t752;
t805 = t547 * t725 + t728 * t548;
t471 = t547 * t728 - t548 * t725;
t854 = t471 * t738;
t412 = -t735 * t805 + t854;
t855 = t471 * t735;
t890 = t738 * t805 + t855;
t825 = qJD(2) * qJD(4);
t713 = t734 * t825;
t822 = qJDD(2) * t737;
t688 = -t713 + t822;
t679 = -qJDD(5) + t688;
t733 = sin(qJ(5));
t736 = cos(qJ(5));
t829 = qJD(2) * t734;
t682 = -t736 * qJD(4) + t733 * t829;
t684 = qJD(4) * t733 + t736 * t829;
t845 = t682 * t684;
t804 = t679 + t845;
t886 = t804 * pkin(5);
t813 = t737 * t825;
t823 = qJDD(2) * t734;
t687 = t813 + t823;
t803 = -t736 * qJDD(4) + t687 * t733;
t622 = -qJD(5) * t684 - t803;
t828 = qJD(2) * t737;
t709 = -qJD(5) + t828;
t657 = -pkin(5) * t709 - qJ(6) * t684;
t677 = t682 ^ 2;
t446 = -t622 * pkin(5) - t677 * qJ(6) + t657 * t684 + qJDD(6) + t491;
t690 = qJDD(2) * t725 + t728 * t739;
t605 = qJ(3) * t690 - t658 * t728;
t691 = qJDD(2) * t728 - t725 * t739;
t794 = -qJ(3) * t691 - t658 * t725;
t888 = t605 * t735 + t794 * t738;
t887 = t605 * t738 - t794 * t735;
t637 = t690 * t735 - t691 * t738;
t763 = t690 * t738 + t691 * t735;
t881 = t763 * t730;
t564 = t637 * t729 + t726 * t881;
t562 = t637 * t726 - t729 * t881;
t885 = t726 * t835;
t884 = t729 * t835;
t847 = t804 * t733;
t846 = t804 * t736;
t624 = t763 * t727;
t667 = t682 * t709;
t742 = qJD(5) * t682 - qJDD(4) * t733 - t687 * t736;
t878 = t667 - t742;
t583 = (qJD(5) + t709) * t684 + t803;
t678 = t684 ^ 2;
t707 = t709 ^ 2;
t876 = pkin(2) * t471;
t633 = -t707 - t677;
t553 = t633 * t733 - t846;
t875 = pkin(4) * t553;
t641 = -t678 - t707;
t606 = t679 - t845;
t849 = t606 * t733;
t560 = t641 * t736 + t849;
t874 = pkin(4) * t560;
t873 = pkin(4) * t734;
t871 = pkin(7) * t727;
t870 = pkin(7) * t730;
t587 = t667 + t742;
t524 = -t583 * t736 - t587 * t733;
t601 = -t677 - t678;
t479 = t524 * t734 - t601 * t737;
t869 = pkin(8) * t479;
t554 = t633 * t736 + t847;
t582 = (qJD(5) - t709) * t684 + t803;
t495 = t554 * t734 - t582 * t737;
t868 = pkin(8) * t495;
t848 = t606 * t736;
t561 = -t641 * t733 + t848;
t503 = t561 * t734 - t737 * t878;
t867 = pkin(8) * t503;
t522 = -t583 * t733 + t587 * t736;
t866 = pkin(9) * t522;
t865 = pkin(9) * t553;
t864 = pkin(9) * t560;
t480 = t524 * t737 + t601 * t734;
t434 = t480 * t725 - t522 * t728;
t435 = t480 * t728 + t522 * t725;
t784 = t434 * t738 + t435 * t735;
t356 = -t727 * t479 + t730 * t784;
t379 = -t434 * t735 + t435 * t738;
t310 = t356 * t729 + t379 * t726;
t863 = qJ(1) * t310;
t496 = t554 * t737 + t582 * t734;
t450 = t496 * t725 - t553 * t728;
t453 = t496 * t728 + t553 * t725;
t782 = t450 * t738 + t453 * t735;
t371 = -t727 * t495 + t730 * t782;
t392 = -t450 * t735 + t453 * t738;
t322 = t371 * t729 + t392 * t726;
t862 = qJ(1) * t322;
t504 = t561 * t737 + t734 * t878;
t459 = t504 * t725 - t560 * t728;
t460 = t504 * t728 + t560 * t725;
t781 = t459 * t738 + t460 * t735;
t376 = -t727 * t503 + t730 * t781;
t398 = -t459 * t735 + t460 * t738;
t331 = t376 * t729 + t398 * t726;
t861 = qJ(1) * t331;
t860 = qJ(3) * t434;
t859 = qJ(3) * t450;
t858 = qJ(3) * t459;
t517 = t737 * t539 - t734 * t658;
t492 = -pkin(4) * t877 + qJDD(4) * pkin(9) + t685 * t828 + t517;
t538 = -qJDD(2) * pkin(3) - t739 * pkin(8) + t547;
t795 = -t688 + t713;
t796 = t687 + t813;
t502 = pkin(4) * t795 - pkin(9) * t796 + t538;
t831 = -t733 * t492 + t736 * t502;
t816 = -qJ(6) * t742 - t831;
t757 = qJ(6) * t667 - t816;
t827 = qJD(6) * t684;
t409 = t757 - 0.2e1 * t827 - t886;
t857 = t409 * t733;
t856 = t409 * t736;
t853 = t491 * t733;
t852 = t491 * t736;
t851 = t538 * t734;
t850 = t538 * t737;
t708 = t734 * t739 * t737;
t699 = qJDD(4) + t708;
t844 = t699 * t734;
t700 = qJDD(4) - t708;
t843 = t700 * t734;
t842 = t700 * t737;
t841 = t709 * t733;
t840 = t709 * t736;
t721 = t734 ^ 2;
t839 = t721 * t739;
t837 = t735 * t665;
t836 = t738 * t665;
t834 = pkin(1) * t356 + t379 * t871;
t833 = pkin(1) * t371 + t392 * t871;
t832 = pkin(1) * t376 + t398 * t871;
t431 = t736 * t492 + t733 * t502;
t722 = t737 ^ 2;
t830 = t721 + t722;
t824 = qJDD(2) * t727;
t821 = t734 * t845;
t820 = t737 * t845;
t819 = pkin(2) * t434 - pkin(3) * t522 + pkin(8) * t480;
t818 = pkin(2) * t450 - pkin(3) * t553 + pkin(8) * t496;
t817 = pkin(2) * t459 - pkin(3) * t560 + pkin(8) * t504;
t814 = t729 * t824;
t355 = t730 * t479 + t727 * t784;
t812 = -pkin(1) * t355 + t379 * t870;
t370 = t730 * t495 + t727 * t782;
t811 = -pkin(1) * t370 + t392 * t870;
t375 = t730 * t503 + t727 * t781;
t810 = -pkin(1) * t375 + t398 * t870;
t809 = -pkin(2) * t479 + qJ(3) * t435;
t808 = -pkin(2) * t495 + qJ(3) * t453;
t807 = -pkin(2) * t503 + qJ(3) * t460;
t516 = t539 * t734 + t646;
t443 = t516 * t734 + t737 * t517;
t643 = -t697 * t726 - t729 * t698;
t801 = t725 * t708;
t800 = t728 * t708;
t693 = qJDD(2) * t738 - t735 * t739;
t798 = -pkin(7) * t693 - t837;
t761 = qJDD(2) * t735 + t738 * t739;
t797 = -pkin(7) * t761 + t836;
t756 = t622 * qJ(6) - 0.2e1 * qJD(6) * t682 + t657 * t709 + t431;
t389 = -qJ(6) * t583 + (-t601 - t677) * pkin(5) + t756;
t674 = 0.2e1 * t827;
t393 = t674 + (-t587 - t667) * qJ(6) + t886 + t816;
t325 = -t389 * t733 + t393 * t736 - t866;
t475 = -pkin(4) * t522 - pkin(5) * t587;
t303 = t325 * t737 - t475 * t734 - t869;
t755 = -pkin(3) * t479 + pkin(4) * t601 - pkin(9) * t524;
t314 = -t389 * t736 - t393 * t733 + t755;
t280 = t303 * t725 + t314 * t728 + t809;
t282 = t303 * t728 - t314 * t725 - t860;
t793 = t280 * t738 + t282 * t735;
t372 = t431 * t733 + t736 * t831;
t365 = -t372 - t866;
t336 = t365 * t737 + t522 * t873 - t869;
t373 = t431 * t736 - t733 * t831;
t343 = -t373 + t755;
t284 = t336 * t725 + t343 * t728 + t809;
t285 = t336 * t728 - t343 * t725 - t860;
t792 = t284 * t738 + t285 * t735;
t387 = t674 - t757 - t875 + 0.2e1 * t886;
t424 = -pkin(5) * t582 + qJ(6) * t633 - t446;
t394 = qJ(6) * t846 - t424 * t733 - t865;
t318 = -t387 * t734 + t394 * t737 - t868;
t754 = -pkin(3) * t495 + pkin(4) * t582 - pkin(9) * t554;
t366 = -qJ(6) * t847 - t424 * t736 + t754;
t286 = t318 * t725 + t366 * t728 + t808;
t288 = t318 * t728 - t366 * t725 - t859;
t791 = t286 * t738 + t288 * t735;
t388 = -t874 + (-t641 - t677) * pkin(5) + t756;
t440 = -qJ(6) * t641 + t446;
t537 = -pkin(5) * t878 + qJ(6) * t606;
t395 = t440 * t736 - t537 * t733 - t864;
t324 = -t388 * t734 + t395 * t737 - t867;
t753 = -pkin(3) * t503 + pkin(4) * t878 - pkin(9) * t561;
t367 = -t440 * t733 - t537 * t736 + t753;
t287 = t324 * t725 + t367 * t728 + t807;
t289 = t324 * t728 - t367 * t725 - t858;
t790 = t287 * t738 + t289 * t735;
t411 = -pkin(5) * t677 + t756;
t348 = t411 * t736 - t857;
t329 = t348 * t737 + t446 * t734;
t347 = t411 * t733 + t856;
t291 = t329 * t725 - t347 * t728;
t292 = t329 * t728 + t347 * t725;
t789 = t291 * t738 + t292 * t735;
t414 = -t831 - t875;
t447 = t853 - t865;
t353 = -t414 * t734 + t447 * t737 - t868;
t403 = t754 + t852;
t297 = t353 * t725 + t403 * t728 + t808;
t301 = t353 * t728 - t403 * t725 - t859;
t788 = t297 * t738 + t301 * t735;
t415 = t431 - t874;
t456 = t852 - t864;
t360 = -t415 * t734 + t456 * t737 - t867;
t404 = t753 - t853;
t298 = t360 * t725 + t404 * t728 + t807;
t305 = t360 * t728 - t404 * t725 - t858;
t787 = t298 * t738 + t305 * t735;
t358 = t373 * t737 + t491 * t734;
t307 = t358 * t725 - t372 * t728;
t308 = t358 * t728 + t372 * t725;
t786 = t307 * t738 + t308 * t735;
t416 = t443 * t725 - t538 * t728;
t417 = t443 * t728 + t538 * t725;
t785 = t416 * t738 + t417 * t735;
t523 = -t582 * t736 - t733 * t878;
t644 = -t678 + t677;
t490 = t523 * t737 - t644 * t734;
t521 = t582 * t733 - t736 * t878;
t436 = t490 * t725 + t521 * t728;
t437 = t490 * t728 - t521 * t725;
t783 = t436 * t738 + t437 * t735;
t664 = -t678 + t707;
t570 = -t664 * t733 - t846;
t508 = t570 * t737 - t587 * t734;
t568 = -t664 * t736 + t847;
t465 = t508 * t725 + t568 * t728;
t467 = t508 * t728 - t568 * t725;
t780 = t465 * t738 + t467 * t735;
t663 = t677 - t707;
t571 = t663 * t736 + t849;
t509 = t571 * t737 - t583 * t734;
t569 = -t663 * t733 + t848;
t466 = t509 * t725 + t569 * t728;
t468 = t509 * t728 - t569 * t725;
t779 = t466 * t738 + t468 * t735;
t578 = -t622 * t733 - t682 * t840;
t545 = t578 * t737 - t821;
t577 = -t622 * t736 + t682 * t841;
t481 = t545 * t725 + t577 * t728;
t483 = t545 * t728 - t577 * t725;
t776 = t481 * t738 + t483 * t735;
t580 = t684 * t841 - t736 * t742;
t546 = t580 * t737 + t821;
t579 = t684 * t840 + t733 * t742;
t482 = t546 * t725 + t579 * t728;
t484 = t546 * t728 - t579 * t725;
t775 = t482 * t738 + t484 * t735;
t442 = t516 * t737 - t517 * t734;
t592 = (t682 * t736 - t684 * t733) * t709;
t573 = t592 * t737 - t679 * t734;
t591 = (-t682 * t733 - t684 * t736) * t709;
t518 = t573 * t725 + t591 * t728;
t519 = t573 * t728 - t591 * t725;
t774 = t518 * t738 + t519 * t735;
t686 = 0.2e1 * t813 + t823;
t689 = -0.2e1 * t713 + t822;
t635 = -t686 * t734 + t689 * t737;
t719 = t722 * t739;
t696 = t719 - t839;
t589 = t635 * t725 + t696 * t728;
t590 = t635 * t728 - t696 * t725;
t773 = t589 * t738 + t590 * t735;
t706 = -t719 - t877;
t654 = t706 * t737 - t844;
t596 = t654 * t725 + t689 * t728;
t598 = t654 * t728 - t689 * t725;
t772 = t596 * t738 + t598 * t735;
t704 = -t839 - t877;
t656 = -t704 * t734 - t842;
t597 = t656 * t725 - t686 * t728;
t599 = t656 * t728 + t686 * t725;
t771 = t597 * t738 + t599 * t735;
t550 = t609 * t738 - t610 * t735;
t551 = t609 * t735 + t610 * t738;
t705 = t719 - t877;
t653 = t705 * t737 - t843;
t614 = t653 * t725 - t728 * t822;
t616 = t653 * t728 + t725 * t822;
t770 = t614 * t738 + t616 * t735;
t681 = t737 * t699;
t703 = -t839 + t877;
t655 = -t703 * t734 + t681;
t615 = t655 * t725 - t728 * t823;
t617 = t655 * t728 + t725 * t823;
t769 = t615 * t738 + t617 * t735;
t661 = -t688 * t734 - t722 * t825;
t618 = t661 * t725 - t800;
t620 = t661 * t728 + t801;
t768 = t618 * t738 + t620 * t735;
t662 = t687 * t737 - t721 * t825;
t619 = t662 * t725 + t800;
t621 = t662 * t728 - t801;
t767 = t619 * t738 + t621 * t735;
t692 = t830 * qJDD(2);
t695 = t719 + t839;
t639 = t692 * t725 + t695 * t728;
t640 = t692 * t728 - t695 * t725;
t766 = t639 * t738 + t640 * t735;
t680 = t830 * t825;
t659 = -qJDD(4) * t728 + t680 * t725;
t660 = qJDD(4) * t725 + t680 * t728;
t765 = t659 * t738 + t660 * t735;
t670 = t761 * t730;
t764 = t670 * t729 + t693 * t726;
t631 = t670 * t726 - t693 * t729;
t642 = t697 * t729 - t698 * t726;
t760 = (-t355 * t727 - t356 * t730) * pkin(7);
t759 = (-t370 * t727 - t371 * t730) * pkin(7);
t758 = (-t375 * t727 - t376 * t730) * pkin(7);
t368 = -pkin(5) * t446 + qJ(6) * t411;
t293 = -pkin(9) * t347 - qJ(6) * t856 - t368 * t733;
t316 = -pkin(4) * t347 - pkin(5) * t409;
t328 = t348 * t734 - t446 * t737;
t273 = -pkin(8) * t328 + t293 * t737 - t316 * t734;
t281 = -pkin(3) * t328 + pkin(4) * t446 - pkin(9) * t348 + qJ(6) * t857 - t368 * t736;
t250 = -pkin(2) * t328 + qJ(3) * t292 + t273 * t725 + t281 * t728;
t252 = -qJ(3) * t291 + t273 * t728 - t281 * t725;
t277 = -t291 * t735 + t292 * t738;
t751 = pkin(7) * t277 + t250 * t738 + t252 * t735;
t357 = t373 * t734 - t491 * t737;
t290 = -pkin(8) * t357 + (-pkin(9) * t737 + t873) * t372;
t299 = -pkin(3) * t357 + pkin(4) * t491 - pkin(9) * t373;
t263 = -pkin(2) * t357 + qJ(3) * t308 + t290 * t725 + t299 * t728;
t268 = -qJ(3) * t307 + t290 * t728 - t299 * t725;
t283 = -t307 * t735 + t308 * t738;
t750 = pkin(7) * t283 + t263 * t738 + t268 * t735;
t317 = qJ(3) * t417 - (-pkin(3) * t728 - pkin(8) * t725 - pkin(2)) * t442;
t344 = -qJ(3) * t416 - (pkin(3) * t725 - pkin(8) * t728) * t442;
t361 = -t416 * t735 + t417 * t738;
t749 = pkin(7) * t361 + t317 * t738 + t344 * t735;
t650 = t706 * t734 + t681;
t485 = -pkin(3) * t650 + t516;
t514 = -pkin(8) * t650 + t851;
t418 = -pkin(2) * t650 + qJ(3) * t598 + t485 * t728 + t514 * t725;
t422 = -qJ(3) * t596 - t485 * t725 + t514 * t728;
t541 = -t596 * t735 + t598 * t738;
t748 = pkin(7) * t541 + t418 * t738 + t422 * t735;
t652 = t704 * t737 - t843;
t486 = -pkin(3) * t652 + t517;
t515 = -pkin(8) * t652 + t850;
t419 = -pkin(2) * t652 + qJ(3) * t599 + t486 * t728 + t515 * t725;
t423 = -qJ(3) * t597 - t486 * t725 + t515 * t728;
t542 = -t597 * t735 + t599 * t738;
t747 = pkin(7) * t542 + t419 * t738 + t423 * t735;
t428 = qJ(3) * t640 + t442 * t725;
t429 = -qJ(3) * t639 + t442 * t728;
t576 = -t639 * t735 + t640 * t738;
t746 = pkin(7) * t576 + t428 * t738 + t429 * t735;
t745 = -pkin(7) * t763 - t887;
t744 = pkin(7) * t637 + t888;
t461 = pkin(2) * t658 + qJ(3) * t805;
t741 = pkin(7) * t890 + qJ(3) * t855 + t461 * t738;
t714 = t730 * qJDD(2);
t702 = t726 * t824;
t671 = t693 * t730;
t669 = t693 * t727;
t668 = t761 * t727;
t651 = t703 * t737 + t844;
t649 = t705 * t734 + t842;
t648 = t796 * t734;
t647 = t795 * t737;
t634 = t686 * t737 + t689 * t734;
t632 = -t671 * t726 - t729 * t761;
t630 = t671 * t729 - t726 * t761;
t628 = t637 * t730;
t625 = t637 * t727;
t588 = -t659 * t735 + t660 * t738;
t581 = t765 * t730;
t575 = -t836 + (t668 * t727 + t670 * t730) * pkin(7);
t574 = -t837 + (-t669 * t727 - t671 * t730) * pkin(7);
t572 = t592 * t734 + t679 * t737;
t567 = t766 * t730;
t566 = t766 * t727;
t565 = t628 * t726 - t729 * t763;
t563 = -t628 * t729 - t726 * t763;
t558 = -t619 * t735 + t621 * t738;
t557 = -t618 * t735 + t620 * t738;
t556 = -t615 * t735 + t617 * t738;
t555 = -t614 * t735 + t616 * t738;
t549 = t551 * t730;
t544 = t580 * t734 - t820;
t543 = t578 * t734 + t820;
t535 = -pkin(1) * t669 + t609 * t727 + t730 * t797;
t534 = pkin(1) * t668 + t610 * t727 + t730 * t798;
t533 = -t589 * t735 + t590 * t738;
t532 = -pkin(2) * t690 - t548;
t531 = pkin(2) * t691 - t547;
t530 = -t648 * t727 + t730 * t767;
t529 = t647 * t727 + t730 * t768;
t528 = -t651 * t727 + t730 * t769;
t527 = -t649 * t727 + t730 * t770;
t526 = -t550 * t730 + t665 * t727;
t525 = -t550 * t727 - t665 * t730;
t513 = -t652 * t727 + t730 * t771;
t512 = -t650 * t727 + t730 * t772;
t511 = t652 * t730 + t727 * t771;
t510 = t650 * t730 + t727 * t772;
t507 = t571 * t734 + t583 * t737;
t506 = t570 * t734 + t587 * t737;
t498 = -t567 * t726 + t576 * t729;
t497 = t567 * t729 + t576 * t726;
t494 = -t634 * t727 + t730 * t773;
t489 = t523 * t734 + t644 * t737;
t478 = (t624 * t727 + t730 * t881) * pkin(7) + t887;
t477 = (t625 * t727 + t628 * t730) * pkin(7) + t888;
t474 = pkin(2) * t596 + pkin(3) * t689 + pkin(8) * t654 - t850;
t473 = pkin(2) * t597 - pkin(3) * t686 + pkin(8) * t656 + t851;
t464 = -pkin(1) * t525 + t551 * t870;
t463 = -t526 * t726 + t551 * t729;
t462 = t526 * t729 + t551 * t726;
t455 = -t513 * t726 + t542 * t729;
t454 = -t512 * t726 + t541 * t729;
t452 = t513 * t729 + t542 * t726;
t451 = t512 * t729 + t541 * t726;
t445 = (-t525 * t727 - t526 * t730) * pkin(7);
t444 = -t518 * t735 + t519 * t738;
t439 = pkin(1) * t624 - t532 * t727 + t730 * t744;
t438 = pkin(1) * t625 - t531 * t727 + t730 * t745;
t427 = pkin(2) * t639 + pkin(3) * t695 + pkin(8) * t692 + t443;
t426 = -t572 * t727 + t730 * t774;
t425 = t572 * t730 + t727 * t774;
t421 = -t482 * t735 + t484 * t738;
t420 = -t481 * t735 + t483 * t738;
t410 = t890 * t730;
t408 = -t466 * t735 + t468 * t738;
t407 = -t465 * t735 + t467 * t738;
t406 = -t412 * t730 + t658 * t727;
t405 = -t412 * t727 - t658 * t730;
t402 = -t544 * t727 + t730 * t775;
t401 = -t543 * t727 + t730 * t776;
t400 = t544 * t730 + t727 * t775;
t399 = t543 * t730 + t727 * t776;
t386 = -t507 * t727 + t730 * t779;
t385 = -t506 * t727 + t730 * t780;
t384 = t507 * t730 + t727 * t779;
t383 = t506 * t730 + t727 * t780;
t382 = -t436 * t735 + t437 * t738;
t381 = -t426 * t726 + t444 * t729;
t380 = t426 * t729 + t444 * t726;
t364 = -t727 * t489 + t730 * t783;
t363 = t730 * t489 + t727 * t783;
t362 = pkin(2) * t416 - pkin(3) * t538 + pkin(8) * t443;
t359 = -t428 * t735 + t429 * t738 + (-t566 * t727 - t567 * t730) * pkin(7);
t352 = -t402 * t726 + t421 * t729;
t351 = -t401 * t726 + t420 * t729;
t350 = t402 * t729 + t421 * t726;
t349 = t401 * t729 + t420 * t726;
t346 = -t406 * t726 + t729 * t890;
t345 = t406 * t729 + t726 * t890;
t342 = -t419 * t735 + t423 * t738 + (-t511 * t727 - t513 * t730) * pkin(7);
t341 = -t418 * t735 + t422 * t738 + (-t510 * t727 - t512 * t730) * pkin(7);
t340 = -t386 * t726 + t408 * t729;
t339 = -t385 * t726 + t407 * t729;
t338 = t386 * t729 + t408 * t726;
t337 = t385 * t729 + t407 * t726;
t335 = t442 * t727 + t730 * t785;
t334 = -t442 * t730 + t727 * t785;
t333 = t415 * t737 + t456 * t734 + t817;
t332 = -t376 * t726 + t398 * t729;
t330 = qJ(1) * t332;
t327 = -pkin(1) * t566 - t427 * t727 + t730 * t746;
t326 = t414 * t737 + t447 * t734 + t818;
t323 = -t371 * t726 + t392 * t729;
t321 = qJ(1) * t323;
t320 = -pkin(1) * t511 - t473 * t727 + t730 * t747;
t319 = -pkin(1) * t510 - t474 * t727 + t730 * t748;
t315 = qJ(3) * t854 - t461 * t735 + (-t405 * t727 - t406 * t730) * pkin(7);
t313 = -t364 * t726 + t382 * t729;
t312 = t364 * t729 + t382 * t726;
t311 = -t356 * t726 + t379 * t729;
t309 = qJ(1) * t311;
t306 = t388 * t737 + t395 * t734 + t817;
t304 = t365 * t734 - t522 * t872 + t819;
t302 = -pkin(1) * t405 + t727 * t876 + t730 * t741;
t300 = t387 * t737 + t394 * t734 + t818;
t296 = -t335 * t726 + t361 * t729;
t295 = t335 * t729 + t361 * t726;
t294 = t325 * t734 + t475 * t737 + t819;
t279 = -t727 * t357 + t730 * t786;
t278 = t730 * t357 + t727 * t786;
t276 = pkin(2) * t307 + pkin(8) * t358 + (-pkin(3) + t799) * t372;
t275 = -t317 * t735 + t344 * t738 + (-t334 * t727 - t335 * t730) * pkin(7);
t274 = -t298 * t735 + t305 * t738 + t758;
t272 = -t297 * t735 + t301 * t738 + t759;
t271 = -pkin(1) * t334 - t362 * t727 + t730 * t749;
t270 = -t727 * t328 + t730 * t789;
t269 = t730 * t328 + t727 * t789;
t267 = -t333 * t727 + t730 * t787 + t810;
t266 = -t326 * t727 + t730 * t788 + t811;
t265 = -t287 * t735 + t289 * t738 + t758;
t264 = -t286 * t735 + t288 * t738 + t759;
t262 = -t284 * t735 + t285 * t738 + t760;
t261 = -t279 * t726 + t283 * t729;
t260 = t279 * t729 + t283 * t726;
t259 = -t306 * t727 + t730 * t790 + t810;
t258 = -t300 * t727 + t730 * t791 + t811;
t257 = pkin(2) * t291 - pkin(3) * t347 + pkin(8) * t329 + t293 * t734 + t316 * t737;
t256 = -t304 * t727 + t730 * t792 + t812;
t255 = -t280 * t735 + t282 * t738 + t760;
t254 = -t270 * t726 + t277 * t729;
t253 = t270 * t729 + t277 * t726;
t251 = -t294 * t727 + t730 * t793 + t812;
t249 = -t263 * t735 + t268 * t738 + (-t278 * t727 - t279 * t730) * pkin(7);
t248 = -pkin(1) * t278 - t276 * t727 + t730 * t750;
t247 = -t250 * t735 + t252 * t738 + (-t269 * t727 - t270 * t730) * pkin(7);
t246 = -pkin(1) * t269 - t257 * t727 + t730 * t751;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t643, 0, 0, 0, 0, 0, 0, t632, t631, 0, t463, 0, 0, 0, 0, 0, 0, t565, t564, 0, t346, 0, 0, 0, 0, 0, 0, t454, t455, t498, t296, 0, 0, 0, 0, 0, 0, t323, t332, t311, t261, 0, 0, 0, 0, 0, 0, t323, t332, t311, t254; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t642, 0, 0, 0, 0, 0, 0, t630, -t764, 0, t462, 0, 0, 0, 0, 0, 0, t563, t562, 0, t345, 0, 0, 0, 0, 0, 0, t451, t452, t497, t295, 0, 0, 0, 0, 0, 0, t322, t331, t310, t260, 0, 0, 0, 0, 0, 0, t322, t331, t310, t253; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t835, 0, 0, 0, 0, 0, 0, t669, -t668, 0, t525, 0, 0, 0, 0, 0, 0, -t625, -t624, 0, t405, 0, 0, 0, 0, 0, 0, t510, t511, t566, t334, 0, 0, 0, 0, 0, 0, t370, t375, t355, t278, 0, 0, 0, 0, 0, 0, t370, t375, t355, t269; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t885, -t884, -t642, -qJ(1) * t642, 0, 0, -t631, 0, t632, t702, -qJ(1) * t630 - t535 * t726 + t574 * t729, qJ(1) * t764 - t534 * t726 + t575 * t729, -t549 * t726 + t550 * t729, -qJ(1) * t462 + t445 * t729 - t464 * t726, 0, 0, -t564, 0, t565, t702, -qJ(1) * t563 - t438 * t726 + t477 * t729, -qJ(1) * t562 - t439 * t726 + t478 * t729, -t410 * t726 + t412 * t729, -qJ(1) * t345 - t302 * t726 + t315 * t729, -t530 * t726 + t558 * t729, -t494 * t726 + t533 * t729, -t528 * t726 + t556 * t729, -t529 * t726 + t557 * t729, -t527 * t726 + t555 * t729, -t581 * t726 + t588 * t729, -qJ(1) * t451 - t319 * t726 + t341 * t729, -qJ(1) * t452 - t320 * t726 + t342 * t729, -qJ(1) * t497 - t327 * t726 + t359 * t729, -qJ(1) * t295 - t271 * t726 + t275 * t729, t352, t313, t339, t351, t340, t381, -t266 * t726 + t272 * t729 - t862, -t267 * t726 + t274 * t729 - t861, -t256 * t726 + t262 * t729 - t863, -qJ(1) * t260 - t248 * t726 + t249 * t729, t352, t313, t339, t351, t340, t381, -t258 * t726 + t264 * t729 - t862, -t259 * t726 + t265 * t729 - t861, -t251 * t726 + t255 * t729 - t863, -qJ(1) * t253 - t246 * t726 + t247 * t729; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t884, -t885, t643, qJ(1) * t643, 0, 0, t764, 0, t630, -t814, qJ(1) * t632 + t535 * t729 + t574 * t726, qJ(1) * t631 + t534 * t729 + t575 * t726, t549 * t729 + t550 * t726, qJ(1) * t463 + t445 * t726 + t464 * t729, 0, 0, -t562, 0, t563, -t814, qJ(1) * t565 + t438 * t729 + t477 * t726, qJ(1) * t564 + t439 * t729 + t478 * t726, t410 * t729 + t412 * t726, qJ(1) * t346 + t302 * t729 + t315 * t726, t530 * t729 + t558 * t726, t494 * t729 + t533 * t726, t528 * t729 + t556 * t726, t529 * t729 + t557 * t726, t527 * t729 + t555 * t726, t581 * t729 + t588 * t726, qJ(1) * t454 + t319 * t729 + t341 * t726, qJ(1) * t455 + t320 * t729 + t342 * t726, qJ(1) * t498 + t327 * t729 + t359 * t726, qJ(1) * t296 + t271 * t729 + t275 * t726, t350, t312, t337, t349, t338, t380, t266 * t729 + t272 * t726 + t321, t267 * t729 + t274 * t726 + t330, t256 * t729 + t262 * t726 + t309, qJ(1) * t261 + t248 * t729 + t249 * t726, t350, t312, t337, t349, t338, t380, t258 * t729 + t264 * t726 + t321, t259 * t729 + t265 * t726 + t330, t251 * t729 + t255 * t726 + t309, qJ(1) * t254 + t246 * t729 + t247 * t726; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t697, t698, 0, 0, 0, 0, t668, 0, t669, t714, pkin(1) * t671 - t609 * t730 + t727 * t797, -pkin(1) * t670 - t610 * t730 + t727 * t798, t551 * t727, pkin(1) * t526 + t551 * t871, 0, 0, t624, 0, -t625, t714, -pkin(1) * t628 + t531 * t730 + t727 * t745, -pkin(1) * t881 + t532 * t730 + t727 * t744, t890 * t727, pkin(1) * t406 + t727 * t741 - t730 * t876, t648 * t730 + t727 * t767, t634 * t730 + t727 * t773, t651 * t730 + t727 * t769, -t647 * t730 + t727 * t768, t649 * t730 + t727 * t770, t765 * t727, pkin(1) * t512 + t474 * t730 + t727 * t748, pkin(1) * t513 + t473 * t730 + t727 * t747, pkin(1) * t567 + t427 * t730 + t727 * t746, pkin(1) * t335 + t362 * t730 + t727 * t749, t400, t363, t383, t399, t384, t425, t326 * t730 + t727 * t788 + t833, t333 * t730 + t727 * t787 + t832, t304 * t730 + t727 * t792 + t834, pkin(1) * t279 + t276 * t730 + t727 * t750, t400, t363, t383, t399, t384, t425, t300 * t730 + t727 * t791 + t833, t306 * t730 + t727 * t790 + t832, t294 * t730 + t727 * t793 + t834, pkin(1) * t270 + t257 * t730 + t727 * t751;];
tauB_reg  = t1;
