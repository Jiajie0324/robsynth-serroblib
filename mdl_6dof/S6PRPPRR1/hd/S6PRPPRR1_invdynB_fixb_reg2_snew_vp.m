% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PRPPRR1
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d5,d6,theta1,theta3,theta4]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 21:43
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PRPPRR1_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRPPRR1_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRPPRR1_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRPPRR1_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRPPRR1_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRPPRR1_invdynB_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 21:42:19
% EndTime: 2019-05-04 21:42:52
% DurationCPUTime: 32.73s
% Computational Cost: add. (164977->846), mult. (341514->1386), div. (0->0), fcn. (263015->14), ass. (0->597)
t765 = cos(pkin(12));
t761 = sin(pkin(12));
t756 = t761 ^ 2;
t757 = t765 ^ 2;
t888 = qJD(2) ^ 2;
t889 = t888 * (t756 + t757);
t727 = t765 * t889;
t762 = sin(pkin(11));
t766 = cos(pkin(11));
t853 = qJDD(2) * t766;
t844 = t765 * t853;
t694 = -t727 * t762 + t844;
t854 = qJDD(2) * t765;
t696 = t727 * t766 + t762 * t854;
t772 = sin(qJ(2));
t775 = cos(qJ(2));
t635 = t694 * t772 + t696 * t775;
t763 = sin(pkin(10));
t767 = cos(pkin(10));
t768 = cos(pkin(6));
t808 = t694 * t775 - t696 * t772;
t913 = t808 * t768;
t916 = t635 * t767 + t763 * t913;
t552 = -t635 * t763 + t767 * t913;
t764 = sin(pkin(6));
t623 = t808 * t764;
t912 = 2 * qJD(4);
t738 = g(1) * t763 - t767 * g(2);
t864 = g(3) - qJDD(1);
t801 = t768 * t738 - t764 * t864;
t839 = t767 * g(1) + t763 * g(2);
t659 = t772 * t801 - t775 * t839;
t651 = -pkin(2) * t888 + t659;
t658 = -t772 * t839 - t775 * t801;
t782 = qJDD(2) * pkin(2) - t658;
t587 = t762 * t651 - t766 * t782;
t588 = t766 * t651 + t762 * t782;
t841 = t587 * t762 + t766 * t588;
t505 = t587 * t766 - t588 * t762;
t880 = t505 * t772;
t911 = t775 * t841 + t880;
t879 = t505 * t775;
t432 = -t772 * t841 + t879;
t856 = qJDD(2) * t762;
t731 = t766 * t888 + t856;
t868 = t761 * t765;
t704 = t731 * t868;
t846 = t888 * t868;
t705 = t761 * t844 - t762 * t846;
t642 = t704 * t772 - t705 * t775;
t910 = t642 * t763;
t909 = t642 * t767;
t770 = sin(qJ(6));
t771 = sin(qJ(5));
t774 = cos(qJ(5));
t804 = t761 * t774 + t765 * t771;
t725 = t804 * qJD(2);
t773 = cos(qJ(6));
t701 = -t773 * qJD(5) + t725 * t770;
t703 = qJD(5) * t770 + t725 * t773;
t646 = t703 * t701;
t857 = qJDD(2) * t761;
t717 = t771 * t857 - t774 * t854;
t861 = t725 * qJD(5);
t673 = -t717 - t861;
t784 = qJDD(6) - t673;
t892 = -t646 + t784;
t908 = t770 * t892;
t723 = (t761 * t771 - t765 * t774) * qJD(2);
t681 = t725 * t723;
t890 = qJDD(5) - t681;
t907 = t771 * t890;
t906 = t773 * t892;
t905 = t774 * t890;
t750 = t757 * t888;
t863 = t888 * t756;
t734 = t750 + t863;
t781 = qJDD(2) * qJ(4) + t588;
t904 = -pkin(3) * t888 + qJD(2) * t912 + t781;
t707 = t738 * t764 + t768 * t864;
t706 = -qJDD(3) + t707;
t657 = qJ(3) * t731 - t706 * t766;
t732 = -t762 * t888 + t853;
t836 = -qJ(3) * t732 - t706 * t762;
t903 = t657 * t772 + t775 * t836;
t902 = t775 * t657 - t772 * t836;
t687 = t731 * t772 - t732 * t775;
t805 = t731 * t775 + t732 * t772;
t893 = t805 * t768;
t611 = t687 * t767 + t763 * t893;
t609 = t687 * t763 - t767 * t893;
t901 = t763 * t864;
t807 = t704 * t775 + t705 * t772;
t900 = t764 * t807;
t899 = t767 * t864;
t898 = t768 * t807;
t664 = t805 * t764;
t714 = qJD(6) + t723;
t650 = t714 * t701;
t862 = t723 * qJD(5);
t891 = t804 * qJDD(2);
t675 = t891 - t862;
t848 = t701 * qJD(6) - t770 * qJDD(5) - t773 * t675;
t577 = t848 + t650;
t840 = -t773 * qJDD(5) + t770 * t675;
t572 = (qJD(6) - t714) * t703 + t840;
t699 = t701 ^ 2;
t700 = t703 ^ 2;
t713 = t714 ^ 2;
t715 = t723 ^ 2;
t716 = t725 ^ 2;
t887 = pkin(2) * t505;
t886 = pkin(5) * t771;
t598 = t658 * t772 + t659 * t775;
t885 = pkin(7) * t598;
t760 = qJDD(2) * pkin(3);
t548 = -t761 * t706 + t765 * t904;
t541 = -pkin(4) * t750 + pkin(8) * t854 + t548;
t867 = t765 * t706;
t779 = pkin(4) * t846 - pkin(8) * t857 - t761 * t904 - t867;
t457 = t541 * t771 - t774 * t779;
t458 = t774 * t541 + t771 * t779;
t391 = -t457 * t774 + t458 * t771;
t884 = t391 * t761;
t883 = t391 * t765;
t662 = pkin(5) * t723 - pkin(9) * t725;
t776 = qJD(5) ^ 2;
t439 = -qJDD(5) * pkin(5) - t776 * pkin(9) + t662 * t725 + t457;
t882 = t439 * t770;
t881 = t439 * t773;
t585 = -t888 * qJ(4) + qJDD(4) + t587 - t760;
t569 = -pkin(4) * t854 - pkin(8) * t734 + t585;
t878 = t569 * t771;
t877 = t569 * t774;
t876 = t585 * t762;
t875 = t585 * t766;
t595 = t646 + t784;
t874 = t595 * t770;
t873 = t595 * t773;
t670 = qJDD(5) + t681;
t872 = t670 * t771;
t871 = t670 * t774;
t870 = t714 * t770;
t869 = t714 * t773;
t866 = t772 * t707;
t865 = t775 * t707;
t440 = -pkin(5) * t776 + qJDD(5) * pkin(9) - t662 * t723 + t458;
t489 = (-t675 + t862) * pkin(9) + (-t673 + t861) * pkin(5) + t569;
t397 = t773 * t440 + t770 * t489;
t858 = qJDD(2) * t756;
t855 = qJDD(2) * t764;
t747 = t757 * qJDD(2);
t748 = t768 * qJDD(2);
t852 = t771 * t646;
t851 = t774 * t646;
t850 = t762 * t681;
t849 = t766 * t681;
t847 = -pkin(5) * t774 - pkin(4);
t845 = t761 * t854;
t843 = t767 * t855;
t842 = -t585 + t760;
t396 = t440 * t770 - t773 * t489;
t392 = t457 * t771 + t774 * t458;
t547 = t867 + ((-pkin(3) * qJD(2) + t912) * qJD(2) + t781) * t761;
t465 = t547 * t761 + t765 * t548;
t690 = -t738 * t763 - t767 * t839;
t736 = qJDD(2) * t775 - t772 * t888;
t838 = -pkin(7) * t736 - t866;
t803 = qJDD(2) * t772 + t775 * t888;
t837 = -pkin(7) * t803 + t865;
t346 = t396 * t770 + t397 * t773;
t322 = t346 * t771 - t439 * t774;
t323 = t346 * t774 + t439 * t771;
t295 = -t322 * t761 + t323 * t765;
t345 = -t396 * t773 + t397 * t770;
t276 = t295 * t762 - t345 * t766;
t277 = t295 * t766 + t345 * t762;
t835 = t276 * t775 + t277 * t772;
t342 = t392 * t765 - t884;
t333 = t342 * t762 - t569 * t766;
t334 = t342 * t766 + t569 * t762;
t834 = t333 * t775 + t334 * t772;
t576 = -t650 + t848;
t485 = -t572 * t773 - t576 * t770;
t606 = t699 + t700;
t451 = t485 * t771 + t606 * t774;
t452 = t485 * t774 - t606 * t771;
t390 = -t451 * t761 + t452 * t765;
t483 = -t572 * t770 + t576 * t773;
t358 = t390 * t762 - t483 * t766;
t359 = t390 * t766 + t483 * t762;
t833 = t358 * t775 + t359 * t772;
t574 = (-qJD(6) - t714) * t703 - t840;
t486 = t574 * t773 + t577 * t770;
t644 = -t700 + t699;
t459 = t486 * t771 + t644 * t774;
t460 = t486 * t774 - t644 * t771;
t401 = -t459 * t761 + t460 * t765;
t484 = -t574 * t770 + t577 * t773;
t365 = t401 * t762 + t484 * t766;
t366 = t401 * t766 - t484 * t762;
t832 = t365 * t775 + t366 * t772;
t615 = -t713 - t699;
t523 = t615 * t773 - t908;
t461 = t523 * t771 + t574 * t774;
t462 = t523 * t774 - t574 * t771;
t404 = -t461 * t761 + t462 * t765;
t522 = t615 * t770 + t906;
t377 = t404 * t762 - t522 * t766;
t378 = t404 * t766 + t522 * t762;
t831 = t377 * t775 + t378 * t772;
t633 = -t700 - t713;
t533 = -t633 * t770 - t873;
t472 = t533 * t771 + t577 * t774;
t473 = t533 * t774 - t577 * t771;
t406 = -t472 * t761 + t473 * t765;
t532 = t633 * t773 - t874;
t380 = t406 * t762 - t532 * t766;
t381 = t406 * t766 + t532 * t762;
t830 = t380 * t775 + t381 * t772;
t649 = -t700 + t713;
t545 = -t649 * t770 + t906;
t476 = t545 * t771 + t576 * t774;
t478 = t545 * t774 - t576 * t771;
t413 = -t476 * t761 + t478 * t765;
t543 = -t649 * t773 - t908;
t385 = t413 * t762 + t543 * t766;
t387 = t413 * t766 - t543 * t762;
t829 = t385 * t775 + t387 * t772;
t648 = t699 - t713;
t546 = t648 * t773 - t874;
t477 = t546 * t771 + t572 * t774;
t479 = t546 * t774 - t572 * t771;
t414 = -t477 * t761 + t479 * t765;
t544 = -t648 * t770 - t873;
t386 = t414 * t762 + t544 * t766;
t388 = t414 * t766 - t544 * t762;
t828 = t386 * t775 + t388 * t772;
t613 = -qJD(6) * t703 - t840;
t566 = -t613 * t770 + t701 * t869;
t508 = t566 * t771 + t851;
t510 = t566 * t774 - t852;
t443 = -t508 * t761 + t510 * t765;
t565 = -t613 * t773 - t701 * t870;
t418 = t443 * t762 + t565 * t766;
t420 = t443 * t766 - t565 * t762;
t827 = t418 * t775 + t420 * t772;
t568 = -t703 * t870 - t773 * t848;
t509 = t568 * t771 - t851;
t511 = t568 * t774 + t852;
t444 = -t509 * t761 + t511 * t765;
t567 = -t703 * t869 + t770 * t848;
t419 = t444 * t762 + t567 * t766;
t421 = t444 * t766 - t567 * t762;
t826 = t419 * t775 + t421 * t772;
t434 = t465 * t762 - t875;
t435 = t465 * t766 + t876;
t825 = t434 * t775 + t435 * t772;
t592 = (-t701 * t773 + t703 * t770) * t714;
t549 = t592 * t771 - t774 * t784;
t550 = t592 * t774 + t771 * t784;
t467 = -t549 * t761 + t550 * t765;
t591 = (t701 * t770 + t703 * t773) * t714;
t436 = t467 * t762 + t591 * t766;
t437 = t467 * t766 - t591 * t762;
t824 = t436 * t775 + t437 * t772;
t602 = -t717 * t771 - t774 * t891;
t604 = -t717 * t774 + t771 * t891;
t526 = -t602 * t761 + t604 * t765;
t645 = -t715 - t716;
t492 = t526 * t762 - t645 * t766;
t493 = t526 * t766 + t645 * t762;
t823 = t492 * t775 + t493 * t772;
t663 = -t776 - t715;
t600 = t663 * t771 + t905;
t601 = t663 * t774 - t907;
t521 = -t600 * t761 + t601 * t765;
t672 = t717 + 0.2e1 * t861;
t498 = t521 * t762 - t672 * t766;
t499 = t521 * t766 + t672 * t762;
t822 = t498 * t775 + t499 * t772;
t674 = t891 - 0.2e1 * t862;
t603 = -t672 * t771 + t674 * t774;
t605 = -t672 * t774 - t674 * t771;
t527 = -t603 * t761 + t605 * t765;
t680 = -t716 + t715;
t500 = t527 * t762 + t680 * t766;
t501 = t527 * t766 - t680 * t762;
t821 = t500 * t775 + t501 * t772;
t710 = -t716 - t776;
t629 = t710 * t774 - t872;
t632 = -t710 * t771 - t871;
t560 = -t629 * t761 + t632 * t765;
t512 = t560 * t762 - t674 * t766;
t513 = t560 * t766 + t674 * t762;
t818 = t512 * t775 + t513 * t772;
t637 = t673 * t774 + t771 * t862;
t638 = -t673 * t771 + t774 * t862;
t563 = -t637 * t761 + t638 * t765;
t514 = t563 * t762 + t849;
t516 = t563 * t766 - t850;
t817 = t514 * t775 + t516 * t772;
t639 = t675 * t771 + t774 * t861;
t640 = t675 * t774 - t771 * t861;
t564 = -t639 * t761 + t640 * t765;
t515 = t564 * t762 - t849;
t517 = t564 * t766 + t850;
t816 = t515 * t775 + t517 * t772;
t708 = t715 - t776;
t627 = t708 * t771 + t871;
t630 = t708 * t774 - t872;
t558 = -t627 * t761 + t630 * t765;
t528 = t558 * t762 + t717 * t766;
t530 = t558 * t766 - t717 * t762;
t815 = t528 * t775 + t530 * t772;
t709 = -t716 + t776;
t628 = t709 * t774 + t907;
t631 = -t709 * t771 + t905;
t559 = -t628 * t761 + t631 * t765;
t529 = t559 * t762 - t766 * t891;
t531 = t559 * t766 + t762 * t891;
t814 = t529 * t775 + t531 * t772;
t464 = t547 * t765 - t548 * t761;
t652 = (-t723 * t771 - t725 * t774) * qJD(5);
t653 = (-t723 * t774 + t725 * t771) * qJD(5);
t590 = -t652 * t761 + t653 * t765;
t583 = -qJDD(5) * t766 + t590 * t762;
t584 = qJDD(5) * t762 + t590 * t766;
t813 = t583 * t775 + t584 * t772;
t597 = t658 * t775 - t659 * t772;
t729 = t747 + t858;
t682 = t729 * t762 + t734 * t766;
t684 = t729 * t766 - t734 * t762;
t812 = t682 * t775 + t684 * t772;
t730 = t747 - t858;
t735 = t750 - t863;
t683 = t730 * t762 + t735 * t766;
t685 = t730 * t766 - t735 * t762;
t811 = t683 * t775 + t685 * t772;
t726 = t761 * t889;
t692 = t726 * t762 - t761 * t853;
t695 = t726 * t766 + t761 * t856;
t810 = t692 * t775 + t695 * t772;
t721 = t803 * t768;
t806 = t721 * t767 + t736 * t763;
t678 = t721 * t763 - t736 * t767;
t270 = pkin(8) * t323 + (-pkin(9) * t771 + t847) * t345;
t286 = -pkin(8) * t322 + (-pkin(9) * t774 + t886) * t345;
t294 = t322 * t765 + t323 * t761;
t252 = -qJ(4) * t294 - t270 * t761 + t286 * t765;
t264 = -pkin(3) * t294 - pkin(4) * t322 + pkin(5) * t439 - pkin(9) * t346;
t240 = -pkin(2) * t294 + qJ(3) * t277 + t252 * t762 + t264 * t766;
t242 = -qJ(3) * t276 + t252 * t766 - t264 * t762;
t256 = -t276 * t772 + t277 * t775;
t799 = pkin(7) * t256 + t240 * t775 + t242 * t772;
t331 = -pkin(9) * t483 - t345;
t303 = pkin(8) * t452 + t771 * t331 + t483 * t847;
t309 = -pkin(8) * t451 + t331 * t774 + t483 * t886;
t389 = t451 * t765 + t452 * t761;
t271 = -qJ(4) * t389 - t303 * t761 + t309 * t765;
t298 = -pkin(3) * t389 - pkin(4) * t451 - pkin(5) * t606 - pkin(9) * t485 - t346;
t255 = -pkin(2) * t389 + qJ(3) * t359 + t271 * t762 + t298 * t766;
t257 = -qJ(3) * t358 + t271 * t766 - t298 * t762;
t316 = -t358 * t772 + t359 * t775;
t798 = pkin(7) * t316 + t255 * t775 + t257 * t772;
t341 = t392 * t761 + t883;
t379 = -pkin(4) * t569 + pkin(8) * t392;
t297 = -pkin(8) * t883 - qJ(4) * t341 - t379 * t761;
t313 = -pkin(3) * t341 - pkin(4) * t391;
t259 = -pkin(2) * t341 + qJ(3) * t334 + t297 * t762 + t313 * t766;
t268 = -qJ(3) * t333 + t297 * t766 - t313 * t762;
t296 = -t333 * t772 + t334 * t775;
t797 = pkin(7) * t296 + t259 * t775 + t268 * t772;
t372 = -pkin(5) * t522 + t396;
t409 = -pkin(9) * t522 + t882;
t317 = -pkin(4) * t522 + pkin(8) * t462 + t372 * t774 + t409 * t771;
t321 = -pkin(8) * t461 - t372 * t771 + t409 * t774;
t403 = t461 * t765 + t462 * t761;
t287 = -qJ(4) * t403 - t317 * t761 + t321 * t765;
t326 = -pkin(3) * t403 - pkin(4) * t461 - pkin(5) * t574 - pkin(9) * t523 + t881;
t262 = -pkin(2) * t403 + qJ(3) * t378 + t287 * t762 + t326 * t766;
t265 = -qJ(3) * t377 + t287 * t766 - t326 * t762;
t327 = -t377 * t772 + t378 * t775;
t796 = pkin(7) * t327 + t262 * t775 + t265 * t772;
t375 = -pkin(5) * t532 + t397;
t410 = -pkin(9) * t532 + t881;
t318 = -pkin(4) * t532 + pkin(8) * t473 + t375 * t774 + t410 * t771;
t324 = -pkin(8) * t472 - t375 * t771 + t410 * t774;
t405 = t472 * t765 + t473 * t761;
t288 = -qJ(4) * t405 - t318 * t761 + t324 * t765;
t328 = -pkin(3) * t405 - pkin(4) * t472 - pkin(5) * t577 - pkin(9) * t533 - t882;
t263 = -pkin(2) * t405 + qJ(3) * t381 + t288 * t762 + t328 * t766;
t266 = -qJ(3) * t380 + t288 * t766 - t328 * t762;
t329 = -t380 * t772 + t381 * t775;
t795 = pkin(7) * t329 + t263 * t775 + t266 * t772;
t376 = -pkin(4) * t645 + pkin(8) * t604 + t392;
t384 = -pkin(8) * t602 - t391;
t524 = t602 * t765 + t604 * t761;
t320 = -qJ(4) * t524 - t376 * t761 + t384 * t765;
t481 = -pkin(3) * t524 - pkin(4) * t602;
t302 = -pkin(2) * t524 + qJ(3) * t493 + t320 * t762 + t481 * t766;
t304 = -qJ(3) * t492 + t320 * t766 - t481 * t762;
t426 = -t492 * t772 + t493 * t775;
t794 = pkin(7) * t426 + t302 * t775 + t304 * t772;
t482 = -pkin(4) * t672 + pkin(8) * t601 - t877;
t502 = -pkin(8) * t600 + t878;
t520 = t600 * t765 + t601 * t761;
t395 = -qJ(4) * t520 - t482 * t761 + t502 * t765;
t407 = -pkin(3) * t520 - pkin(4) * t600 + t457;
t325 = -pkin(2) * t520 + qJ(3) * t499 + t395 * t762 + t407 * t766;
t332 = -qJ(3) * t498 + t395 * t766 - t407 * t762;
t429 = -t498 * t772 + t499 * t775;
t793 = pkin(7) * t429 + t325 * t775 + t332 * t772;
t490 = -pkin(4) * t674 + pkin(8) * t632 + t878;
t507 = -pkin(8) * t629 + t877;
t557 = t629 * t765 + t632 * t761;
t408 = -qJ(4) * t557 - t490 * t761 + t507 * t765;
t415 = -pkin(3) * t557 - pkin(4) * t629 + t458;
t335 = -pkin(2) * t557 + qJ(3) * t513 + t408 * t762 + t415 * t766;
t344 = -qJ(3) * t512 + t408 * t766 - t415 * t762;
t445 = -t512 * t772 + t513 * t775;
t792 = pkin(7) * t445 + t335 * t775 + t344 * t772;
t343 = qJ(3) * t435 - (-pkin(3) * t766 - qJ(4) * t762 - pkin(2)) * t464;
t357 = -qJ(3) * t434 - (pkin(3) * t762 - qJ(4) * t766) * t464;
t370 = -t434 * t772 + t435 * t775;
t791 = pkin(7) * t370 + t343 * t775 + t357 * t772;
t453 = qJ(3) * t684 + t464 * t762;
t454 = -qJ(3) * t682 + t464 * t766;
t616 = -t682 * t772 + t684 * t775;
t790 = pkin(7) * t616 + t453 * t775 + t454 * t772;
t468 = -qJ(3) * t696 + t547 * t766 + t761 * t876;
t470 = -qJ(3) * t694 - t547 * t762 + t761 * t875;
t789 = -pkin(7) * t635 + t468 * t775 + t470 * t772;
t469 = qJ(3) * t695 + t548 * t766 + t765 * t876;
t471 = -qJ(3) * t692 - t548 * t762 + t765 * t875;
t634 = -t692 * t772 + t695 * t775;
t788 = pkin(7) * t634 + t469 * t775 + t471 * t772;
t787 = -pkin(7) * t805 - t902;
t786 = pkin(7) * t687 + t903;
t491 = pkin(2) * t706 + qJ(3) * t841;
t785 = pkin(7) * t911 + qJ(3) * t880 + t491 * t775;
t783 = -t767 * t738 + t763 * t839;
t739 = t763 * t855;
t722 = t736 * t768;
t720 = t736 * t764;
t719 = t803 * t764;
t679 = -t722 * t763 - t767 * t803;
t677 = t722 * t767 - t763 * t803;
t668 = t687 * t768;
t665 = t687 * t764;
t624 = t810 * t768;
t622 = t810 * t764;
t621 = -t865 + (t719 * t764 + t721 * t768) * pkin(7);
t620 = -t866 + (-t720 * t764 - t722 * t768) * pkin(7);
t619 = -t747 * t764 - t898;
t618 = -t756 * t855 + t898;
t617 = -t683 * t772 + t685 * t775;
t612 = t668 * t763 - t767 * t805;
t610 = -t668 * t767 - t763 * t805;
t608 = t812 * t768;
t607 = t812 * t764;
t599 = -0.2e1 * t764 * t845 + t768 * t811;
t593 = t598 * t768;
t589 = t652 * t765 + t653 * t761;
t581 = -pkin(1) * t720 + t764 * t658 + t768 * t837;
t580 = pkin(1) * t719 + t764 * t659 + t768 * t838;
t579 = -pkin(2) * t731 - t588;
t578 = pkin(2) * t732 - t587;
t571 = -t597 * t768 + t764 * t707;
t570 = -t597 * t764 - t768 * t707;
t562 = t639 * t765 + t640 * t761;
t561 = t637 * t765 + t638 * t761;
t556 = t628 * t765 + t631 * t761;
t555 = t627 * t765 + t630 * t761;
t553 = -t624 * t763 + t634 * t767;
t551 = t624 * t767 + t634 * t763;
t540 = -t608 * t763 + t616 * t767;
t539 = t608 * t767 + t616 * t763;
t535 = pkin(2) * t694 - qJ(4) * t727 + t765 * t842;
t534 = pkin(2) * t692 + qJ(4) * t726 - t761 * t842;
t525 = t603 * t765 + t605 * t761;
t519 = (t664 * t764 + t768 * t893) * pkin(7) + t902;
t518 = (t665 * t764 + t668 * t768) * pkin(7) + t903;
t497 = -pkin(1) * t570 + t768 * t885;
t496 = -t571 * t763 + t598 * t767;
t495 = t571 * t767 + t598 * t763;
t494 = -t583 * t772 + t584 * t775;
t480 = (-t570 * t764 - t571 * t768) * pkin(7);
t475 = pkin(1) * t664 - t764 * t579 + t768 * t786;
t474 = pkin(1) * t665 - t764 * t578 + t768 * t787;
t466 = t549 * t765 + t550 * t761;
t455 = -t764 * t589 + t768 * t813;
t450 = -t529 * t772 + t531 * t775;
t449 = -t528 * t772 + t530 * t775;
t448 = pkin(2) * t682 + pkin(3) * t734 + qJ(4) * t729 + t465;
t447 = -t515 * t772 + t517 * t775;
t446 = -t514 * t772 + t516 * t775;
t442 = t509 * t765 + t511 * t761;
t441 = t508 * t765 + t510 * t761;
t431 = t911 * t768;
t430 = -t500 * t772 + t501 * t775;
t428 = -t432 * t768 + t764 * t706;
t427 = -t432 * t764 - t768 * t706;
t425 = -t764 * t556 + t768 * t814;
t424 = -t764 * t555 + t768 * t815;
t423 = -t764 * t562 + t768 * t816;
t422 = -t764 * t561 + t768 * t817;
t417 = -t764 * t557 + t768 * t818;
t416 = t768 * t557 + t764 * t818;
t412 = t477 * t765 + t479 * t761;
t411 = t476 * t765 + t478 * t761;
t402 = -t764 * t525 + t768 * t821;
t400 = t459 * t765 + t460 * t761;
t399 = -t764 * t520 + t768 * t822;
t398 = t768 * t520 + t764 * t822;
t394 = -t764 * t524 + t768 * t823;
t393 = t768 * t524 + t764 * t823;
t383 = -t772 * t469 + t775 * t471 + (-t622 * t764 - t624 * t768) * pkin(7);
t382 = -t772 * t468 + t775 * t470 + (-t623 * t764 - t768 * t913) * pkin(7);
t374 = pkin(2) * t512 - pkin(3) * t674 + qJ(4) * t560 + t490 * t765 + t507 * t761;
t373 = -t436 * t772 + t437 * t775;
t371 = pkin(2) * t434 - pkin(3) * t585 + qJ(4) * t465;
t369 = -t772 * t453 + t775 * t454 + (-t607 * t764 - t608 * t768) * pkin(7);
t368 = -t428 * t763 + t767 * t911;
t367 = t428 * t767 + t763 * t911;
t364 = -pkin(1) * t622 - t764 * t534 + t768 * t788;
t363 = -pkin(1) * t623 - t764 * t535 + t768 * t789;
t362 = pkin(2) * t498 - pkin(3) * t672 + qJ(4) * t521 + t482 * t765 + t502 * t761;
t361 = -t417 * t763 + t445 * t767;
t360 = t417 * t767 + t445 * t763;
t356 = -t419 * t772 + t421 * t775;
t355 = -t418 * t772 + t420 * t775;
t354 = -t399 * t763 + t429 * t767;
t353 = t399 * t767 + t429 * t763;
t352 = -t764 * t466 + t768 * t824;
t351 = -t394 * t763 + t426 * t767;
t350 = t394 * t767 + t426 * t763;
t349 = t464 * t764 + t768 * t825;
t348 = -t464 * t768 + t764 * t825;
t347 = -pkin(1) * t607 - t764 * t448 + t768 * t790;
t340 = qJ(3) * t879 - t772 * t491 + (-t427 * t764 - t428 * t768) * pkin(7);
t339 = -t386 * t772 + t388 * t775;
t338 = -t385 * t772 + t387 * t775;
t337 = -t764 * t442 + t768 * t826;
t336 = -t764 * t441 + t768 * t827;
t330 = -pkin(1) * t427 + t764 * t887 + t768 * t785;
t319 = -t365 * t772 + t366 * t775;
t315 = -t349 * t763 + t370 * t767;
t314 = t349 * t767 + t370 * t763;
t312 = -t764 * t412 + t768 * t828;
t311 = -t764 * t411 + t768 * t829;
t310 = pkin(2) * t492 - pkin(3) * t645 + qJ(4) * t526 + t376 * t765 + t384 * t761;
t308 = -t764 * t405 + t768 * t830;
t307 = t768 * t405 + t764 * t830;
t306 = -t764 * t403 + t768 * t831;
t305 = t768 * t403 + t764 * t831;
t301 = -t764 * t400 + t768 * t832;
t300 = -t764 * t389 + t768 * t833;
t299 = t768 * t389 + t764 * t833;
t293 = -t308 * t763 + t329 * t767;
t292 = t308 * t767 + t329 * t763;
t291 = -t306 * t763 + t327 * t767;
t290 = t306 * t767 + t327 * t763;
t289 = -t772 * t335 + t775 * t344 + (-t416 * t764 - t417 * t768) * pkin(7);
t285 = -t764 * t341 + t768 * t834;
t284 = t768 * t341 + t764 * t834;
t283 = pkin(2) * t333 - pkin(3) * t569 - pkin(8) * t884 + qJ(4) * t342 + t379 * t765;
t282 = -t772 * t325 + t775 * t332 + (-t398 * t764 - t399 * t768) * pkin(7);
t281 = -t300 * t763 + t316 * t767;
t280 = t300 * t767 + t316 * t763;
t279 = -pkin(1) * t416 - t764 * t374 + t768 * t792;
t278 = -t772 * t343 + t775 * t357 + (-t348 * t764 - t349 * t768) * pkin(7);
t275 = pkin(2) * t380 - pkin(3) * t532 + qJ(4) * t406 + t318 * t765 + t324 * t761;
t274 = -pkin(1) * t398 - t764 * t362 + t768 * t793;
t273 = pkin(2) * t377 - pkin(3) * t522 + qJ(4) * t404 + t317 * t765 + t321 * t761;
t272 = -pkin(1) * t348 - t764 * t371 + t768 * t791;
t269 = -t772 * t302 + t775 * t304 + (-t393 * t764 - t394 * t768) * pkin(7);
t267 = pkin(2) * t358 - pkin(3) * t483 + qJ(4) * t390 + t303 * t765 + t309 * t761;
t261 = -t285 * t763 + t296 * t767;
t260 = t285 * t767 + t296 * t763;
t258 = -pkin(1) * t393 - t764 * t310 + t768 * t794;
t254 = -t764 * t294 + t768 * t835;
t253 = t768 * t294 + t764 * t835;
t251 = -t772 * t263 + t775 * t266 + (-t307 * t764 - t308 * t768) * pkin(7);
t250 = -t772 * t262 + t775 * t265 + (-t305 * t764 - t306 * t768) * pkin(7);
t249 = pkin(2) * t276 - pkin(3) * t345 + qJ(4) * t295 + t270 * t765 + t286 * t761;
t248 = -t254 * t763 + t256 * t767;
t247 = t254 * t767 + t256 * t763;
t246 = -pkin(1) * t307 - t764 * t275 + t768 * t795;
t245 = -t772 * t259 + t775 * t268 + (-t284 * t764 - t285 * t768) * pkin(7);
t244 = -pkin(1) * t305 - t764 * t273 + t768 * t796;
t243 = -t772 * t255 + t775 * t257 + (-t299 * t764 - t300 * t768) * pkin(7);
t241 = -pkin(1) * t284 - t764 * t283 + t768 * t797;
t239 = -pkin(1) * t299 - t764 * t267 + t768 * t798;
t238 = -t772 * t240 + t775 * t242 + (-t253 * t764 - t254 * t768) * pkin(7);
t237 = -pkin(1) * t253 - t764 * t249 + t768 * t799;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t690, 0, 0, 0, 0, 0, 0, t679, t678, 0, t496, 0, 0, 0, 0, 0, 0, t612, t611, 0, t368, 0, 0, 0, 0, 0, 0, -t916, t553, t540, t315, 0, 0, 0, 0, 0, 0, t354, t361, t351, t261, 0, 0, 0, 0, 0, 0, t291, t293, t281, t248; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t783, 0, 0, 0, 0, 0, 0, t677, -t806, 0, t495, 0, 0, 0, 0, 0, 0, t610, t609, 0, t367, 0, 0, 0, 0, 0, 0, t552, t551, t539, t314, 0, 0, 0, 0, 0, 0, t353, t360, t350, t260, 0, 0, 0, 0, 0, 0, t290, t292, t280, t247; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t864, 0, 0, 0, 0, 0, 0, t720, -t719, 0, t570, 0, 0, 0, 0, 0, 0, -t665, -t664, 0, t427, 0, 0, 0, 0, 0, 0, t623, t622, t607, t348, 0, 0, 0, 0, 0, 0, t398, t416, t393, t284, 0, 0, 0, 0, 0, 0, t305, t307, t299, t253; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t901, -t899, t783, qJ(1) * t783, 0, 0, -t678, 0, t679, t739, -qJ(1) * t677 - t581 * t763 + t620 * t767, qJ(1) * t806 - t580 * t763 + t621 * t767, -t593 * t763 + t597 * t767, -qJ(1) * t495 + t480 * t767 - t497 * t763, 0, 0, -t611, 0, t612, t739, -qJ(1) * t610 - t474 * t763 + t518 * t767, -qJ(1) * t609 - t475 * t763 + t519 * t767, -t431 * t763 + t432 * t767, -qJ(1) * t367 - t330 * t763 + t340 * t767, -t618 * t763 - t909, -t599 * t763 + t617 * t767, t553, -t619 * t763 + t909, t916, 0, -qJ(1) * t552 - t363 * t763 + t382 * t767, -qJ(1) * t551 - t364 * t763 + t383 * t767, -qJ(1) * t539 - t347 * t763 + t369 * t767, -qJ(1) * t314 - t272 * t763 + t278 * t767, -t423 * t763 + t447 * t767, -t402 * t763 + t430 * t767, -t425 * t763 + t450 * t767, -t422 * t763 + t446 * t767, -t424 * t763 + t449 * t767, -t455 * t763 + t494 * t767, -qJ(1) * t353 - t274 * t763 + t282 * t767, -qJ(1) * t360 - t279 * t763 + t289 * t767, -qJ(1) * t350 - t258 * t763 + t269 * t767, -qJ(1) * t260 - t241 * t763 + t245 * t767, -t337 * t763 + t356 * t767, -t301 * t763 + t319 * t767, -t311 * t763 + t338 * t767, -t336 * t763 + t355 * t767, -t312 * t763 + t339 * t767, -t352 * t763 + t373 * t767, -qJ(1) * t290 - t244 * t763 + t250 * t767, -qJ(1) * t292 - t246 * t763 + t251 * t767, -qJ(1) * t280 - t239 * t763 + t243 * t767, -qJ(1) * t247 - t237 * t763 + t238 * t767; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t899, -t901, t690, qJ(1) * t690, 0, 0, t806, 0, t677, -t843, qJ(1) * t679 + t581 * t767 + t620 * t763, qJ(1) * t678 + t580 * t767 + t621 * t763, t593 * t767 + t597 * t763, qJ(1) * t496 + t480 * t763 + t497 * t767, 0, 0, -t609, 0, t610, -t843, qJ(1) * t612 + t474 * t767 + t518 * t763, qJ(1) * t611 + t475 * t767 + t519 * t763, t431 * t767 + t432 * t763, qJ(1) * t368 + t330 * t767 + t340 * t763, t618 * t767 - t910, t599 * t767 + t617 * t763, t551, t619 * t767 + t910, -t552, 0, -qJ(1) * t916 + t363 * t767 + t382 * t763, qJ(1) * t553 + t364 * t767 + t383 * t763, qJ(1) * t540 + t347 * t767 + t369 * t763, qJ(1) * t315 + t272 * t767 + t278 * t763, t423 * t767 + t447 * t763, t402 * t767 + t430 * t763, t425 * t767 + t450 * t763, t422 * t767 + t446 * t763, t424 * t767 + t449 * t763, t455 * t767 + t494 * t763, qJ(1) * t354 + t274 * t767 + t282 * t763, qJ(1) * t361 + t279 * t767 + t289 * t763, qJ(1) * t351 + t258 * t767 + t269 * t763, qJ(1) * t261 + t241 * t767 + t245 * t763, t337 * t767 + t356 * t763, t301 * t767 + t319 * t763, t311 * t767 + t338 * t763, t336 * t767 + t355 * t763, t312 * t767 + t339 * t763, t352 * t767 + t373 * t763, qJ(1) * t291 + t244 * t767 + t250 * t763, qJ(1) * t293 + t246 * t767 + t251 * t763, qJ(1) * t281 + t239 * t767 + t243 * t763, qJ(1) * t248 + t237 * t767 + t238 * t763; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t738, t839, 0, 0, 0, 0, t719, 0, t720, t748, pkin(1) * t722 - t768 * t658 + t764 * t837, -pkin(1) * t721 - t768 * t659 + t764 * t838, t598 * t764, pkin(1) * t571 + t764 * t885, 0, 0, t664, 0, -t665, t748, -pkin(1) * t668 + t768 * t578 + t764 * t787, -pkin(1) * t893 + t768 * t579 + t764 * t786, t911 * t764, pkin(1) * t428 + t764 * t785 - t768 * t887, t748 * t756 + t900, t764 * t811 + 0.2e1 * t768 * t845, t622, t748 * t757 - t900, -t623, 0, pkin(1) * t913 + t768 * t535 + t764 * t789, pkin(1) * t624 + t768 * t534 + t764 * t788, pkin(1) * t608 + t768 * t448 + t764 * t790, pkin(1) * t349 + t768 * t371 + t764 * t791, t768 * t562 + t764 * t816, t768 * t525 + t764 * t821, t768 * t556 + t764 * t814, t768 * t561 + t764 * t817, t768 * t555 + t764 * t815, t768 * t589 + t764 * t813, pkin(1) * t399 + t768 * t362 + t764 * t793, pkin(1) * t417 + t768 * t374 + t764 * t792, pkin(1) * t394 + t768 * t310 + t764 * t794, pkin(1) * t285 + t768 * t283 + t764 * t797, t768 * t442 + t764 * t826, t768 * t400 + t764 * t832, t768 * t411 + t764 * t829, t768 * t441 + t764 * t827, t768 * t412 + t764 * t828, t768 * t466 + t764 * t824, pkin(1) * t306 + t768 * t273 + t764 * t796, pkin(1) * t308 + t768 * t275 + t764 * t795, pkin(1) * t300 + t768 * t267 + t764 * t798, pkin(1) * t254 + t768 * t249 + t764 * t799;];
tauB_reg  = t1;