% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPPRPR8
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta3]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 14:39
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPPRPR8_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR8_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR8_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRPR8_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRPR8_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRPR8_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 14:38:43
% EndTime: 2019-05-05 14:39:03
% DurationCPUTime: 18.93s
% Computational Cost: add. (31474->586), mult. (73244->818), div. (0->0), fcn. (50562->8), ass. (0->398)
t673 = qJD(4) ^ 2;
t664 = sin(pkin(9));
t665 = cos(pkin(9));
t668 = sin(qJ(4));
t671 = cos(qJ(4));
t637 = (-t664 * t668 + t665 * t671) * qJD(1);
t752 = t637 ^ 2;
t613 = t752 - t673;
t692 = t664 * t671 + t665 * t668;
t635 = t692 * qJD(1);
t742 = t637 * t635;
t787 = qJDD(4) - t742;
t798 = t668 * t787;
t518 = t671 * t613 - t798;
t796 = t671 * t787;
t523 = t668 * t613 + t796;
t462 = t665 * t518 - t664 * t523;
t669 = sin(qJ(1));
t821 = t669 * t462;
t672 = cos(qJ(1));
t820 = t672 * t462;
t612 = t752 + t673;
t786 = qJDD(4) + t742;
t799 = t668 * t786;
t516 = t671 * t612 + t799;
t797 = t671 * t786;
t522 = -t668 * t612 + t797;
t461 = t665 * t516 + t664 * t522;
t746 = -qJ(3) - pkin(1);
t819 = t461 * t746;
t466 = t664 * t516 - t665 * t522;
t818 = t466 * t746;
t753 = t635 ^ 2;
t608 = t753 - t673;
t514 = t668 * t608 + t797;
t521 = -t671 * t608 + t799;
t460 = t665 * t514 - t664 * t521;
t817 = t669 * t460;
t816 = t669 * t461;
t815 = t672 * t460;
t814 = t672 * t461;
t813 = pkin(2) * t461 + pkin(3) * t516 + qJ(2) * t466;
t812 = t664 * t518 + t665 * t523;
t810 = pkin(7) * t516;
t809 = pkin(7) * t522;
t808 = t664 * t514 + t665 * t521;
t571 = -t673 - t753;
t500 = t668 * t571 + t796;
t503 = -t671 * t571 + t798;
t437 = t665 * t500 - t664 * t503;
t807 = t437 * t746;
t440 = t664 * t500 + t665 * t503;
t806 = t440 * t746;
t805 = t669 * t437;
t804 = t672 * t437;
t803 = -pkin(2) * t437 - pkin(3) * t500 - qJ(2) * t440;
t801 = pkin(7) * t500;
t800 = pkin(7) * t503;
t714 = qJDD(1) * t665;
t715 = qJDD(1) * t664;
t634 = -t668 * t715 + t671 * t714;
t719 = t635 * qJD(4);
t581 = t634 - t719;
t789 = t581 - t719;
t768 = t789 * qJ(5);
t788 = t581 + t719;
t674 = qJD(1) ^ 2;
t648 = t669 * g(1) - t672 * g(2);
t696 = qJDD(2) - t648;
t682 = -t674 * qJ(2) + t696;
t701 = -0.2e1 * qJD(1) * qJD(3) + qJDD(1) * t746 + t682;
t763 = -t753 - t752;
t784 = pkin(2) * t763;
t783 = pkin(3) * t763;
t782 = qJ(2) * t763;
t667 = sin(qJ(6));
t670 = cos(qJ(6));
t598 = t667 * qJD(4) - t670 * t635;
t600 = t670 * qJD(4) + t667 * t635;
t550 = t600 * t598;
t567 = qJDD(6) + t581;
t766 = -t550 + t567;
t781 = t667 * t766;
t780 = t669 * t763;
t764 = t752 - t753;
t779 = t669 * t764;
t778 = t670 * t766;
t777 = t672 * t763;
t776 = t672 * t764;
t661 = t664 ^ 2;
t662 = t665 ^ 2;
t721 = t661 + t662;
t775 = -pkin(3) * t715 + t674 * (pkin(7) * t721 - t746);
t686 = (-t635 * t668 - t637 * t671) * qJD(4);
t687 = (-t635 * t671 + t637 * t668) * qJD(4);
t759 = -t664 * t687 - t665 * t686;
t774 = t669 * qJDD(4) + t672 * t759;
t773 = t672 * qJDD(4) - t669 * t759;
t707 = t672 * t742;
t620 = t637 * qJD(4);
t693 = t671 * t581 - t620 * t668;
t695 = t668 * t581 + t620 * t671;
t754 = -t664 * t693 - t665 * t695;
t772 = -t669 * t754 + t707;
t762 = t692 * qJDD(1);
t579 = t762 + t620;
t688 = t668 * t579 + t671 * t719;
t694 = -t671 * t579 + t668 * t719;
t756 = -t664 * t688 - t665 * t694;
t771 = -t669 * t756 - t707;
t709 = t669 * t742;
t770 = t672 * t754 + t709;
t769 = t672 * t756 - t709;
t767 = t721 * t674;
t765 = pkin(4) * t620 - 0.2e1 * qJD(5) * t637;
t570 = -t665 * g(3) + t664 * t701;
t758 = -t664 * t686 + t665 * t687;
t757 = -t664 * t694 + t665 * t688;
t755 = -t664 * t695 + t665 * t693;
t596 = t598 ^ 2;
t597 = t600 ^ 2;
t623 = qJD(6) + t637;
t621 = t623 ^ 2;
t751 = 0.2e1 * qJD(5);
t750 = pkin(4) + pkin(8);
t749 = pkin(3) * t674;
t748 = pkin(4) * t671;
t747 = t664 * g(3);
t745 = qJDD(1) * pkin(1);
t744 = t623 * t667;
t743 = t623 * t670;
t547 = t747 + (-pkin(7) * qJDD(1) - t664 * t749 + t701) * t665;
t551 = -pkin(7) * t715 - t661 * t749 + t570;
t488 = -t671 * t547 + t668 * t551;
t489 = t668 * t547 + t671 * t551;
t416 = -t671 * t488 + t668 * t489;
t741 = t664 * t416;
t740 = t664 * t665;
t739 = t665 * t416;
t606 = t637 * pkin(5) - qJD(4) * pkin(8);
t566 = t635 * pkin(4) - t637 * qJ(5);
t689 = -t673 * pkin(4) - t635 * t566 + t489;
t713 = qJDD(4) * qJ(5);
t405 = t713 - t579 * pkin(5) - t753 * pkin(8) + (t751 + t606) * qJD(4) + t689;
t738 = t667 * t405;
t496 = t550 + t567;
t737 = t667 * t496;
t736 = t668 * t789;
t649 = t672 * g(1) + t669 * g(2);
t663 = qJDD(1) * qJ(2);
t690 = t649 - t663;
t685 = -qJDD(3) + t690;
t716 = qJD(2) * qJD(1);
t679 = t685 - 0.2e1 * t716;
t561 = t679 + t775;
t735 = t668 * t561;
t642 = t721 * qJDD(1);
t731 = t669 * t642;
t730 = t670 * t405;
t729 = t670 * t496;
t539 = t620 + t579;
t728 = t671 * t539;
t727 = t671 * t561;
t723 = t672 * t642;
t722 = t661 - t662;
t718 = qJD(6) + t623;
t712 = t669 * qJDD(1);
t711 = t672 * qJDD(1);
t710 = t668 * t550;
t708 = t671 * t550;
t705 = qJ(5) * t668 + pkin(3);
t659 = 0.2e1 * t716;
t678 = t659 - t685 + t765 - t768 - t775;
t398 = -pkin(5) * t753 + t579 * t750 - t637 * t606 + t678;
t699 = t637 * t566 + qJDD(5) + t488;
t684 = -qJDD(4) * pkin(4) + t699;
t436 = t673 * qJ(5) - t684;
t400 = pkin(5) * t788 - pkin(8) * t787 - t436;
t364 = t667 * t398 - t670 * t400;
t417 = t668 * t488 + t671 * t489;
t615 = -t674 * pkin(1) + t659 - t690;
t624 = -t682 + t745;
t555 = t672 * t615 - t669 * t624;
t595 = -t669 * t648 - t672 * t649;
t602 = -t674 * t746 + t679;
t702 = -t602 + t663;
t700 = t667 * qJDD(4) - t670 * t579;
t646 = -t669 * t674 + t711;
t698 = pkin(6) * t646 + t669 * g(3);
t647 = t672 * t674 + t712;
t697 = -pkin(6) * t647 + t672 * g(3);
t365 = t670 * t398 + t667 * t400;
t333 = -t670 * t364 + t667 * t365;
t334 = t667 * t364 + t670 * t365;
t569 = t665 * t701 + t747;
t498 = t665 * t569 + t664 * t570;
t499 = -t664 * t569 + t665 * t570;
t554 = t669 * t615 + t672 * t624;
t594 = t672 * t648 - t669 * t649;
t691 = t670 * qJDD(4) + t667 * t579;
t640 = t664 * t767;
t592 = -t669 * t640 + t664 * t711;
t590 = t672 * t640 + t664 * t712;
t681 = (-qJD(6) + t623) * t600 - t700;
t512 = -t598 * qJD(6) + t691;
t680 = qJD(4) * t751 + t689;
t435 = t680 + t713;
t677 = -t579 * pkin(4) + t561 - t765;
t644 = t722 * t674;
t643 = t722 * qJDD(1);
t639 = t665 * t767;
t605 = t647 * t740;
t604 = t646 * t740;
t593 = -t669 * t639 + t665 * t711;
t591 = t672 * t639 + t665 * t712;
t589 = -t672 * t767 - t731;
t588 = -t669 * t767 + t723;
t583 = pkin(2) * t715 - t665 * t602;
t582 = pkin(2) * t714 + t664 * t602;
t580 = t634 - 0.2e1 * t719;
t578 = t762 + 0.2e1 * t620;
t556 = t623 * t598;
t553 = -t597 + t621;
t552 = t596 - t621;
t544 = -pkin(2) * t640 + t569;
t543 = -pkin(2) * t639 - t570;
t542 = t597 - t596;
t538 = -t620 + t579;
t526 = -t597 - t621;
t513 = -t621 - t596;
t511 = -t600 * qJD(6) - t700;
t510 = -t596 - t597;
t509 = t668 * t788 - t671 * t762;
t508 = -t671 * t578 - t668 * t580;
t507 = -t671 * t538 + t668 * t634;
t506 = -t668 * t762 - t671 * t788;
t505 = -t668 * t578 + t671 * t580;
t504 = -t668 * t538 - t671 * t634;
t494 = (-t598 * t670 + t600 * t667) * t623;
t493 = (t598 * t667 + t600 * t670) * t623;
t492 = -pkin(2) * t767 - t499;
t487 = -t727 + t810;
t485 = t669 * t498 - t672 * t602;
t484 = -t672 * t498 - t669 * t602;
t483 = -t728 - t736;
t482 = -t668 * t539 + t671 * t789;
t481 = -t598 * t718 + t691;
t480 = t512 + t556;
t479 = t512 - t556;
t476 = t600 * t718 + t700;
t475 = t670 * t512 - t600 * t744;
t474 = -t667 * t512 - t600 * t743;
t473 = -t667 * t511 + t598 * t743;
t472 = -t670 * t511 - t598 * t744;
t471 = -t735 - t801;
t458 = -t668 * t493 + t671 * t567;
t457 = t671 * t493 + t668 * t567;
t456 = t670 * t552 - t737;
t455 = -t667 * t553 + t778;
t454 = -t667 * t552 - t729;
t453 = -t670 * t553 - t781;
t452 = -pkin(3) * t580 - t735 - t809;
t451 = -t667 * t526 - t729;
t450 = t670 * t526 - t737;
t449 = -t664 * t506 + t665 * t509;
t448 = -t664 * t504 + t665 * t507;
t447 = t665 * t506 + t664 * t509;
t446 = -t665 * t505 - t664 * t508;
t445 = t665 * t504 + t664 * t507;
t444 = -pkin(3) * t578 + t727 - t800;
t443 = t670 * t513 - t781;
t442 = t667 * t513 + t778;
t441 = pkin(2) * t498 - qJ(2) * t499;
t434 = t677 + t768;
t433 = t672 * t580 - t816;
t432 = t669 * t580 + t814;
t431 = -t668 * t474 + t708;
t430 = -t668 * t472 - t708;
t429 = t671 * t474 + t710;
t428 = t671 * t472 - t710;
t427 = -pkin(2) * t602 + t499 * t746;
t426 = -t672 * t789 + t816;
t425 = -t669 * t789 - t814;
t424 = t672 * t578 + t805;
t423 = t669 * t578 - t804;
t422 = t669 * t445 + t777;
t421 = t669 * t447 + t777;
t420 = -t672 * t445 + t780;
t419 = -t672 * t447 + t780;
t418 = (-t763 - t673) * qJ(5) + t684;
t415 = -pkin(4) * t763 + t435;
t414 = -t672 * t539 - t805;
t413 = -t669 * t539 + t804;
t412 = (t539 + t579) * pkin(4) + t678;
t411 = t677 + 0.2e1 * t768;
t410 = -t665 * t482 - t664 * t483;
t409 = t667 * t480 + t670 * t681;
t408 = -t670 * t476 - t667 * t479;
t407 = -t670 * t480 + t667 * t681;
t406 = t667 * t476 - t670 * t479;
t404 = -t668 * t453 + t671 * t480;
t403 = -t668 * t454 + t671 * t681;
t402 = t671 * t453 + t668 * t480;
t401 = t671 * t454 + t668 * t681;
t397 = pkin(3) * t561 + pkin(7) * t417;
t396 = t668 * t450 + t671 * t481;
t395 = -t671 * t450 + t668 * t481;
t394 = -t665 * t457 - t664 * t458;
t393 = t668 * t442 + t671 * t476;
t392 = -t671 * t442 + t668 * t476;
t391 = -t668 * t406 + t671 * t542;
t390 = t671 * t406 + t668 * t542;
t389 = -pkin(7) * t504 - t416;
t388 = t668 * t407 + t671 * t510;
t387 = -t671 * t407 + t668 * t510;
t386 = t671 * t435 - t668 * t436;
t385 = t668 * t435 + t671 * t436;
t384 = pkin(7) * t507 + t417 - t783;
t383 = -pkin(4) * t736 + t671 * t411 - t810;
t382 = -t665 * t429 - t664 * t431;
t381 = -t665 * t428 - t664 * t430;
t380 = qJ(5) * t728 - t668 * t412 + t801;
t379 = pkin(2) * t445 + pkin(3) * t504 - qJ(2) * t448;
t378 = t809 + t668 * t411 + (pkin(3) + t748) * t789;
t377 = t671 * t412 + t539 * t705 + t800;
t376 = -t489 - t813;
t375 = t665 * t417 - t741;
t374 = t664 * t417 + t739;
t373 = pkin(5) * t407 - qJ(5) * t409;
t372 = pkin(2) * t447 + pkin(3) * t506 - pkin(4) * t788 - qJ(2) * t449 - qJ(5) * t762;
t371 = t669 * t374 - t672 * t561;
t370 = -t672 * t374 - t669 * t561;
t369 = -t488 - t803;
t368 = -t665 * t402 - t664 * t404;
t367 = -t665 * t401 - t664 * t403;
t366 = -pkin(7) * t506 - t668 * t415 + t671 * t418;
t363 = pkin(4) * t612 + (qJDD(4) + t786) * qJ(5) + t680 + t813;
t362 = -t664 * t395 + t665 * t396;
t361 = t665 * t395 + t664 * t396;
t360 = pkin(2) * t580 - t665 * t452 - t664 * t487 + t818;
t359 = -t664 * t392 + t665 * t393;
t358 = t665 * t392 + t664 * t393;
t357 = pkin(7) * t509 + t671 * t415 + t668 * t418 - t783;
t356 = -t665 * t390 - t664 * t391;
t355 = -t664 * t387 + t665 * t388;
t354 = t665 * t387 + t664 * t388;
t353 = (-t571 - t673) * qJ(5) + (-qJDD(4) - t787) * pkin(4) + t699 + t803;
t352 = pkin(2) * t578 - t665 * t444 - t664 * t471 - t806;
t351 = pkin(5) * t481 - t451 * t750 - t738;
t350 = pkin(5) * t476 - t443 * t750 + t730;
t349 = -t664 * t385 + t665 * t386;
t348 = t665 * t385 + t664 * t386;
t347 = -pkin(7) * t385 + (-pkin(4) * t668 + qJ(5) * t671) * t434;
t346 = t669 * t361 + t672 * t451;
t345 = -t672 * t361 + t669 * t451;
t344 = t669 * t358 + t672 * t443;
t343 = -t672 * t358 + t669 * t443;
t342 = pkin(5) * t450 - qJ(5) * t451 - t365;
t341 = pkin(5) * t442 - qJ(5) * t443 - t364;
t340 = pkin(7) * t386 + (t705 + t748) * t434;
t339 = t669 * t348 - t672 * t434;
t338 = -t672 * t348 - t669 * t434;
t337 = t669 * t354 + t672 * t409;
t336 = -t672 * t354 + t669 * t409;
t335 = -t665 * t384 - t664 * t389 + t448 * t746 + t784;
t332 = -pkin(2) * t789 - t665 * t378 - t664 * t383 - t818;
t331 = pkin(2) * t374 + pkin(3) * t416 - qJ(2) * t375;
t330 = -pkin(2) * t539 - t665 * t377 - t664 * t380 + t806;
t329 = t668 * t333 + t671 * t405;
t328 = -t671 * t333 + t668 * t405;
t327 = -pkin(2) * t561 + pkin(7) * t741 + t375 * t746 - t665 * t397;
t326 = -t665 * t357 - t664 * t366 + t449 * t746 + t784;
t325 = pkin(5) * t510 - t409 * t750 - t334;
t324 = -pkin(7) * t395 + t671 * t342 - t668 * t351;
t323 = -pkin(7) * t392 + t671 * t341 - t668 * t350;
t322 = -pkin(3) * t451 + pkin(7) * t396 + t668 * t342 + t671 * t351;
t321 = -pkin(3) * t443 + pkin(7) * t393 + t668 * t341 + t671 * t350;
t320 = pkin(2) * t361 + pkin(3) * t395 - qJ(2) * t362 + qJ(5) * t481 - t450 * t750 + t730;
t319 = pkin(2) * t348 + pkin(3) * t385 + pkin(4) * t436 - qJ(2) * t349 + qJ(5) * t435;
t318 = pkin(2) * t358 + pkin(3) * t392 - qJ(2) * t359 + qJ(5) * t476 - t442 * t750 + t738;
t317 = pkin(5) * t333 - qJ(5) * t334;
t316 = pkin(5) * t405 - t334 * t750;
t315 = -pkin(7) * t387 - t668 * t325 + t671 * t373;
t314 = -t664 * t328 + t665 * t329;
t313 = t665 * t328 + t664 * t329;
t312 = -pkin(3) * t409 + pkin(7) * t388 + t671 * t325 + t668 * t373;
t311 = -pkin(2) * t434 - t665 * t340 - t664 * t347 + t349 * t746;
t310 = pkin(2) * t354 + pkin(3) * t387 - qJ(2) * t355 + qJ(5) * t510 - t407 * t750 - t333;
t309 = t669 * t313 + t672 * t334;
t308 = -t672 * t313 + t669 * t334;
t307 = pkin(2) * t451 - t665 * t322 - t664 * t324 + t362 * t746;
t306 = pkin(2) * t443 - t665 * t321 - t664 * t323 + t359 * t746;
t305 = -pkin(7) * t328 - t668 * t316 + t671 * t317;
t304 = pkin(2) * t409 - t665 * t312 - t664 * t315 + t355 * t746;
t303 = -pkin(3) * t334 + pkin(7) * t329 + t671 * t316 + t668 * t317;
t302 = pkin(2) * t313 + pkin(3) * t328 - qJ(2) * t314 + qJ(5) * t405 - t333 * t750;
t301 = pkin(2) * t334 - t665 * t303 - t664 * t305 + t314 * t746;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t647, -t646, 0, t595, 0, 0, 0, 0, 0, 0, 0, t647, t646, t555, 0, 0, 0, 0, 0, 0, t592, t593, t589, t485, 0, 0, 0, 0, 0, 0, t424, t433, t422, t371, 0, 0, 0, 0, 0, 0, t421, t414, t426, t339, 0, 0, 0, 0, 0, 0, t344, t346, t337, t309; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t646, -t647, 0, t594, 0, 0, 0, 0, 0, 0, 0, -t646, t647, t554, 0, 0, 0, 0, 0, 0, t590, t591, t588, t484, 0, 0, 0, 0, 0, 0, t423, t432, t420, t370, 0, 0, 0, 0, 0, 0, t419, t413, t425, t338, 0, 0, 0, 0, 0, 0, t343, t345, t336, t308; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t499, 0, 0, 0, 0, 0, 0, -t440, t466, t448, t375, 0, 0, 0, 0, 0, 0, t449, t440, -t466, t349, 0, 0, 0, 0, 0, 0, t359, t362, t355, t314; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t646, 0, -t647, 0, -t698, -t697, -t594, -pkin(6) * t594, 0, -t646, t647, 0, 0, 0, -t554, t698, t697, -pkin(6) * t554 + (-pkin(1) * t669 + qJ(2) * t672) * g(3), t605, -t669 * t643 - t672 * t644, t593, -t605, -t592, 0, -pkin(6) * t590 + t672 * t544 - t669 * t583, -pkin(6) * t591 + t672 * t543 - t669 * t582, -pkin(2) * t723 - pkin(6) * t588 - t669 * t492, -pkin(6) * t484 - t669 * t427 + t672 * t441, t772, -t669 * t446 + t776, t672 * t634 - t821, t771, -t672 * t762 + t817, t773, -pkin(6) * t423 - t669 * t352 + t672 * t369, -pkin(6) * t432 - t669 * t360 + t672 * t376, -pkin(6) * t420 - t669 * t335 + t672 * t379, -pkin(6) * t370 - t669 * t327 + t672 * t331, t773, -t672 * t788 + t821, t672 * t538 - t817, t772, -t669 * t410 + t776, t771, -pkin(6) * t419 - t669 * t326 + t672 * t372, -pkin(6) * t413 - t669 * t330 + t672 * t353, -pkin(6) * t425 - t669 * t332 + t672 * t363, -pkin(6) * t338 - t669 * t311 + t672 * t319, -t669 * t382 + t672 * t475, -t669 * t356 + t672 * t408, -t669 * t368 + t672 * t455, -t669 * t381 + t672 * t473, -t669 * t367 + t672 * t456, -t669 * t394 + t672 * t494, -pkin(6) * t343 - t669 * t306 + t672 * t318, -pkin(6) * t345 - t669 * t307 + t672 * t320, -pkin(6) * t336 - t669 * t304 + t672 * t310, -pkin(6) * t308 - t669 * t301 + t672 * t302; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t647, 0, t646, 0, t697, -t698, t595, pkin(6) * t595, 0, -t647, -t646, 0, 0, 0, t555, -t697, t698, pkin(6) * t555 + (pkin(1) * t672 + qJ(2) * t669) * g(3), -t604, t672 * t643 - t669 * t644, t591, t604, -t590, 0, pkin(6) * t592 + t669 * t544 + t672 * t583, pkin(6) * t593 + t669 * t543 + t672 * t582, -pkin(2) * t731 + pkin(6) * t589 + t672 * t492, pkin(6) * t485 + t672 * t427 + t669 * t441, t770, t672 * t446 + t779, t669 * t634 + t820, t769, -t669 * t762 - t815, t774, pkin(6) * t424 + t672 * t352 + t669 * t369, pkin(6) * t433 + t672 * t360 + t669 * t376, pkin(6) * t422 + t672 * t335 + t669 * t379, pkin(6) * t371 + t672 * t327 + t669 * t331, t774, -t669 * t788 - t820, t669 * t538 + t815, t770, t672 * t410 + t779, t769, pkin(6) * t421 + t672 * t326 + t669 * t372, pkin(6) * t414 + t672 * t330 + t669 * t353, pkin(6) * t426 + t672 * t332 + t669 * t363, pkin(6) * t339 + t672 * t311 + t669 * t319, t672 * t382 + t669 * t475, t672 * t356 + t669 * t408, t672 * t368 + t669 * t455, t672 * t381 + t669 * t473, t672 * t367 + t669 * t456, t672 * t394 + t669 * t494, pkin(6) * t344 + t672 * t306 + t669 * t318, pkin(6) * t346 + t672 * t307 + t669 * t320, pkin(6) * t337 + t672 * t304 + t669 * t310, pkin(6) * t309 + t672 * t301 + t669 * t302; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t648, t649, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t696 - 0.2e1 * t745, -t649 + t659 + 0.2e1 * t663, pkin(1) * t624 + qJ(2) * t615, t662 * qJDD(1), -0.2e1 * t664 * t714, 0, t661 * qJDD(1), 0, 0, -t640 * t746 + t664 * t702, -t639 * t746 + t665 * t702, -qJ(2) * t767 - t642 * t746 - t498, -qJ(2) * t602 + t498 * t746, t755, -t664 * t505 + t665 * t508, t812, t757, -t808, t758, qJ(2) * t578 - t664 * t444 + t665 * t471 + t807, qJ(2) * t580 - t664 * t452 + t665 * t487 - t819, -t664 * t384 + t665 * t389 + t445 * t746 + t782, -pkin(7) * t739 - qJ(2) * t561 + t374 * t746 - t664 * t397, t758, -t812, t808, t755, -t664 * t482 + t665 * t483, t757, -t664 * t357 + t665 * t366 + t447 * t746 + t782, -qJ(2) * t539 - t664 * t377 + t665 * t380 - t807, -qJ(2) * t789 - t664 * t378 + t665 * t383 + t819, -qJ(2) * t434 - t664 * t340 + t665 * t347 + t348 * t746, -t664 * t429 + t665 * t431, -t664 * t390 + t665 * t391, -t664 * t402 + t665 * t404, -t664 * t428 + t665 * t430, -t664 * t401 + t665 * t403, -t664 * t457 + t665 * t458, qJ(2) * t443 - t664 * t321 + t665 * t323 + t358 * t746, qJ(2) * t451 - t664 * t322 + t665 * t324 + t361 * t746, qJ(2) * t409 - t664 * t312 + t665 * t315 + t354 * t746, qJ(2) * t334 - t664 * t303 + t665 * t305 + t313 * t746;];
tauB_reg  = t1;
