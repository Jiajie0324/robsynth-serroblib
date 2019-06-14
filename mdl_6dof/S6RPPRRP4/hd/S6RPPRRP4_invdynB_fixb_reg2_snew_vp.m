% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPPRRP4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,theta3]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 14:56
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPPRRP4_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP4_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP4_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRRP4_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRRP4_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRRP4_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 14:55:11
% EndTime: 2019-05-05 14:55:33
% DurationCPUTime: 16.63s
% Computational Cost: add. (28726->565), mult. (52392->752), div. (0->0), fcn. (28595->8), ass. (0->382)
t654 = sin(qJ(5));
t657 = cos(qJ(5));
t655 = sin(qJ(4));
t702 = qJD(1) * t655;
t608 = -t654 * qJD(4) + t657 * t702;
t658 = cos(qJ(4));
t698 = qJD(1) * qJD(4);
t690 = t658 * t698;
t697 = qJDD(1) * t655;
t612 = -t690 - t697;
t687 = -t657 * qJDD(4) + t612 * t654;
t633 = qJD(1) * t658 + qJD(5);
t700 = -qJD(5) - t633;
t503 = t608 * t700 + t687;
t606 = qJD(4) * t657 + t654 * t702;
t673 = -qJDD(4) * t654 - t612 * t657;
t664 = qJD(5) * t606 - t673;
t709 = t633 * t606;
t754 = t709 + t664;
t726 = t754 * t654;
t445 = -t503 * t657 - t726;
t603 = t608 ^ 2;
t745 = t606 ^ 2;
t557 = t603 - t745;
t417 = t445 * t658 + t557 * t655;
t438 = -t503 * t654 + t657 * t754;
t650 = sin(pkin(9));
t651 = cos(pkin(9));
t364 = t417 * t650 - t438 * t651;
t367 = t417 * t651 + t438 * t650;
t656 = sin(qJ(1));
t659 = cos(qJ(1));
t846 = t364 * t659 - t367 * t656;
t845 = t364 * t656 + t367 * t659;
t744 = t633 ^ 2;
t580 = t745 - t744;
t560 = t606 * t608;
t637 = t655 * t698;
t696 = qJDD(1) * t658;
t614 = t637 - t696;
t604 = qJDD(5) - t614;
t757 = t560 + t604;
t723 = t757 * t654;
t484 = t580 * t657 - t723;
t505 = (qJD(5) - t633) * t608 - t687;
t431 = t484 * t658 + t505 * t655;
t722 = t757 * t657;
t481 = t580 * t654 + t722;
t391 = t431 * t650 - t481 * t651;
t394 = t431 * t651 + t481 * t650;
t844 = t391 * t659 - t394 * t656;
t843 = t391 * t656 + t394 * t659;
t755 = t709 - t664;
t787 = t505 * t654 + t755 * t657;
t756 = t603 + t745;
t786 = t505 * t657 - t755 * t654;
t802 = -t655 * t756 + t658 * t786;
t813 = t650 * t787 + t651 * t802;
t815 = t650 * t802 - t651 * t787;
t837 = t656 * t813 - t659 * t815;
t842 = pkin(6) * t837;
t838 = t656 * t815 + t659 * t813;
t841 = pkin(6) * t838;
t742 = pkin(1) + pkin(2);
t804 = t655 * t786 + t658 * t756;
t840 = -qJ(3) * t813 + t742 * t804;
t839 = qJ(2) * t804 - qJ(3) * t815;
t581 = -t603 + t744;
t758 = -t560 + t604;
t721 = t758 * t654;
t790 = -t581 * t657 - t721;
t720 = t758 * t657;
t789 = -t581 * t654 + t720;
t801 = -t655 * t755 + t658 * t789;
t814 = -t650 * t790 + t651 * t801;
t816 = -t650 * t801 - t651 * t790;
t836 = -t656 * t816 + t659 * t814;
t835 = t656 * t814 + t659 * t816;
t834 = -pkin(7) * t802 + qJ(2) * t813 - t742 * t815;
t546 = t744 + t603;
t470 = t546 * t657 + t723;
t833 = pkin(3) * t470;
t832 = pkin(4) * t470;
t830 = pkin(7) * t804;
t829 = pkin(8) * t470;
t476 = t546 * t654 - t722;
t828 = pkin(8) * t476;
t826 = t470 * t650;
t825 = t470 * t651;
t824 = t476 * t655;
t823 = t476 * t658;
t819 = -pkin(3) * t804 - pkin(4) * t756 - pkin(8) * t786;
t818 = t445 * t655 - t557 * t658;
t817 = t484 * t655 - t505 * t658;
t812 = pkin(8) * t787;
t803 = -t655 * t789 - t658 * t755;
t753 = -t744 - t745;
t768 = t654 * t753 + t720;
t800 = pkin(3) * t768;
t799 = pkin(4) * t768;
t767 = t657 * t753 - t721;
t798 = pkin(8) * t767;
t797 = pkin(8) * t768;
t794 = t650 * t768;
t793 = t651 * t768;
t792 = t655 * t767;
t791 = t658 * t767;
t660 = qJD(1) ^ 2;
t695 = t650 * qJDD(1);
t615 = t651 * t660 - t695;
t616 = qJDD(1) * t651 + t650 * t660;
t549 = t659 * t615 + t616 * t656;
t648 = g(3) + qJDD(3);
t585 = qJ(3) * t616 + t648 * t650;
t674 = qJ(3) * t615 + t648 * t651;
t788 = -pkin(6) * t549 + t585 * t656 + t659 * t674;
t544 = qJD(5) * t608 - t687;
t707 = t633 * t654;
t692 = t606 * t707;
t669 = -t544 * t657 + t692;
t706 = t633 * t657;
t691 = t606 * t706;
t670 = -t544 * t654 - t691;
t694 = t655 * t560;
t748 = t658 * t670 - t694;
t769 = -t650 * t669 + t651 * t748;
t771 = -t650 * t748 - t651 * t669;
t785 = -t656 * t771 + t659 * t769;
t784 = t656 * t769 + t659 * t771;
t573 = t608 * t706;
t679 = -t573 - t692;
t572 = t608 * t707;
t680 = -t572 + t691;
t747 = t604 * t655 + t658 * t680;
t770 = -t650 * t679 + t651 * t747;
t772 = -t650 * t747 - t651 * t679;
t783 = -t656 * t772 + t659 * t770;
t782 = t656 * t770 + t659 * t772;
t781 = 2 * qJD(6);
t779 = qJ(6) * t754;
t688 = -t615 * t656 + t659 * t616;
t773 = -pkin(6) * t688 + t585 * t659 - t656 * t674;
t645 = qJDD(1) * qJ(2);
t626 = g(1) * t659 + g(2) * t656;
t672 = 0.2e1 * qJD(2) * qJD(1) - t626;
t667 = t645 + t672;
t577 = -t660 * t742 + t667;
t625 = g(1) * t656 - t659 * g(2);
t678 = -qJDD(2) + t625;
t665 = -qJ(2) * t660 - t678;
t661 = -qJDD(1) * t742 + t665;
t511 = t577 * t650 - t651 * t661;
t512 = t651 * t577 + t650 * t661;
t449 = t511 * t651 - t512 * t650;
t450 = t511 * t650 + t512 * t651;
t381 = t449 * t659 + t450 * t656;
t766 = t449 * t656 - t450 * t659;
t497 = -t654 * t664 + t573;
t498 = t657 * t664 + t572;
t681 = t658 * t498 + t694;
t751 = -t497 * t650 + t651 * t681;
t752 = -t497 * t651 - t650 * t681;
t765 = -t656 * t752 + t659 * t751;
t764 = t656 * t751 + t659 * t752;
t500 = qJDD(1) * pkin(3) - t660 * pkin(7) + t511;
t676 = -t614 - t637;
t677 = -t612 + t690;
t453 = pkin(4) * t676 + pkin(8) * t677 + t500;
t501 = -pkin(3) * t660 - qJDD(1) * pkin(7) + t512;
t489 = t658 * t501 + t655 * t648;
t740 = pkin(4) * t658;
t682 = pkin(8) * t655 + t740;
t668 = t660 * t682;
t743 = qJD(4) ^ 2;
t467 = -pkin(4) * t743 + qJDD(4) * pkin(8) - t658 * t668 + t489;
t399 = t654 * t453 + t657 * t467;
t548 = -pkin(5) * t606 + qJ(6) * t608;
t675 = t604 * qJ(6) + t606 * t548 + t633 * t781 + t399;
t693 = t658 * t560;
t750 = -t655 * t670 - t693;
t749 = t604 * t658 - t655 * t680;
t741 = pkin(4) * t655;
t739 = pkin(5) * t657;
t738 = qJ(6) * t657;
t737 = qJDD(1) * pkin(1);
t488 = t501 * t655 - t658 * t648;
t466 = -qJDD(4) * pkin(4) - t743 * pkin(8) - t655 * t668 + t488;
t736 = t466 * t654;
t735 = t466 * t657;
t732 = t500 * t655;
t731 = t500 * t658;
t632 = t658 * t660 * t655;
t622 = qJDD(4) + t632;
t713 = t622 * t655;
t712 = t622 * t658;
t623 = qJDD(4) - t632;
t711 = t623 * t655;
t710 = t623 * t658;
t708 = t633 * t608;
t646 = t655 ^ 2;
t705 = t646 * t660;
t398 = -t657 * t453 + t654 * t467;
t704 = t756 - t744;
t647 = t658 ^ 2;
t703 = -t646 - t647;
t689 = qJ(6) * t654 + pkin(4);
t591 = -pkin(1) * t660 + t667;
t592 = -t665 + t737;
t524 = t659 * t591 - t592 * t656;
t563 = -t625 * t656 - t659 * t626;
t686 = t650 * t632;
t685 = t651 * t632;
t683 = -t608 * t548 + qJDD(6) + t398;
t618 = qJDD(1) * t656 + t659 * t660;
t594 = -pkin(6) * t618 + g(3) * t659;
t619 = qJDD(1) * t659 - t656 * t660;
t593 = pkin(6) * t619 + g(3) * t656;
t352 = -t398 * t657 + t399 * t654;
t353 = t398 * t654 + t399 * t657;
t423 = t488 * t658 - t489 * t655;
t424 = t488 * t655 + t489 * t658;
t523 = t591 * t656 + t592 * t659;
t562 = t625 * t659 - t626 * t656;
t671 = -t498 * t655 + t693;
t666 = -pkin(5) * t604 + t683;
t663 = -t544 * pkin(5) + t466 - t779;
t662 = -0.2e1 * qJD(6) * t608 - t663;
t642 = t647 * t660;
t630 = -t642 - t743;
t629 = t642 - t743;
t628 = -t705 - t743;
t627 = -t705 + t743;
t621 = t642 - t705;
t620 = t642 + t705;
t617 = t703 * qJDD(1);
t613 = 0.2e1 * t637 - t696;
t611 = 0.2e1 * t690 + t697;
t605 = t703 * t698;
t579 = t612 * t658 + t646 * t698;
t578 = -t614 * t655 + t647 * t698;
t575 = qJDD(4) * t650 + t605 * t651;
t574 = qJDD(4) * t651 - t605 * t650;
t569 = -t628 * t655 - t710;
t568 = -t627 * t655 + t712;
t567 = t630 * t658 - t713;
t566 = t629 * t658 - t711;
t565 = t628 * t658 - t711;
t564 = t630 * t655 + t712;
t554 = t617 * t651 - t620 * t650;
t553 = t617 * t650 + t620 * t651;
t547 = t611 * t655 + t613 * t658;
t543 = t579 * t651 - t686;
t542 = t578 * t651 + t686;
t541 = -t579 * t650 - t685;
t540 = -t578 * t650 + t685;
t539 = t568 * t651 - t655 * t695;
t538 = t566 * t651 - t658 * t695;
t537 = -t568 * t650 - t651 * t697;
t536 = -t566 * t650 - t651 * t696;
t522 = t569 * t651 - t611 * t650;
t521 = t567 * t651 - t613 * t650;
t520 = t569 * t650 + t611 * t651;
t519 = t567 * t650 + t613 * t651;
t514 = t547 * t651 - t621 * t650;
t513 = -t547 * t650 - t621 * t651;
t508 = t606 * t700 + t673;
t502 = -t544 - t708;
t492 = t553 * t656 + t554 * t659;
t491 = -t553 * t659 + t554 * t656;
t469 = -pkin(7) * t565 + t731;
t468 = -pkin(7) * t564 + t732;
t463 = -pkin(3) * t565 + t489;
t462 = -pkin(3) * t564 + t488;
t457 = t520 * t656 + t522 * t659;
t456 = t519 * t656 + t521 * t659;
t455 = -t520 * t659 + t522 * t656;
t454 = -t519 * t659 + t521 * t656;
t446 = qJ(2) * t648 + qJ(3) * t449;
t437 = -qJ(3) * t450 + t648 * t742;
t428 = t502 * t655 + t791;
t427 = -t508 * t655 + t823;
t426 = -t502 * t658 + t792;
t425 = t508 * t658 + t824;
t421 = t503 * t655 + t791;
t420 = -t655 * t754 - t823;
t419 = -t503 * t658 + t792;
t418 = t658 * t754 - t824;
t403 = t735 + t829;
t402 = -qJ(3) * t553 + t423 * t651;
t401 = -qJ(3) * t554 - t423 * t650;
t400 = t736 - t797;
t397 = t424 * t651 + t500 * t650;
t396 = t424 * t650 - t500 * t651;
t387 = (-pkin(5) * t633 + t781) * t608 + t663;
t386 = t428 * t651 + t794;
t385 = t427 * t651 - t826;
t384 = t428 * t650 - t793;
t383 = t427 * t650 + t825;
t380 = t421 * t651 + t794;
t379 = t420 * t651 + t826;
t378 = t421 * t650 - t793;
t377 = t420 * t650 - t825;
t376 = -pkin(4) * t787 - pkin(5) * t755 - qJ(6) * t505;
t375 = qJ(2) * t565 - qJ(3) * t520 - t463 * t650 + t469 * t651;
t374 = qJ(2) * t564 - qJ(3) * t519 - t462 * t650 + t468 * t651;
t373 = qJ(6) * t744 - t666;
t372 = -pkin(5) * t744 + t675;
t371 = t399 + t832;
t370 = t398 - t799;
t369 = (-t502 + t708) * pkin(5) + t662;
t368 = pkin(5) * t708 + t662 + t779;
t363 = -qJ(3) * t522 - t463 * t651 - t469 * t650 + t565 * t742;
t362 = -qJ(3) * t521 - t462 * t651 - t468 * t650 + t564 * t742;
t357 = qJ(6) * t704 + t666;
t356 = pkin(5) * t704 + t675;
t355 = -pkin(3) * t425 - pkin(4) * t508 - t736 - t828;
t354 = -pkin(3) * t419 + pkin(4) * t503 + t735 - t798;
t351 = -t799 + (-t753 - t744) * qJ(6) + (-t758 - t604) * pkin(5) + t683;
t350 = t396 * t656 + t397 * t659;
t349 = -t396 * t659 + t397 * t656;
t348 = -t369 * t654 - t502 * t738 - t797;
t347 = -pkin(5) * t726 + t368 * t657 - t829;
t346 = -t832 - qJ(6) * t757 + (-t546 + t744) * pkin(5) - t675;
t345 = t384 * t656 + t386 * t659;
t344 = t383 * t656 + t385 * t659;
t343 = -t384 * t659 + t386 * t656;
t342 = -t383 * t659 + t385 * t656;
t341 = t378 * t656 + t380 * t659;
t340 = t377 * t656 + t379 * t659;
t339 = -t378 * t659 + t380 * t656;
t338 = -t377 * t659 + t379 * t656;
t337 = t353 * t658 + t466 * t655;
t336 = t353 * t655 - t466 * t658;
t335 = -t352 - t812;
t334 = t372 * t657 - t373 * t654;
t333 = t372 * t654 + t373 * t657;
t332 = -pkin(7) * t425 - t371 * t655 + t403 * t658;
t327 = -pkin(7) * t419 - t370 * t655 + t400 * t658;
t326 = -pkin(3) * t426 - t369 * t657 + t502 * t689 - t798;
t325 = -pkin(3) * t418 + t828 - t368 * t654 + (-pkin(4) - t739) * t754;
t324 = -qJ(3) * t396 - (pkin(3) * t650 - pkin(7) * t651 + qJ(2)) * t423;
t323 = -t353 + t819;
t322 = -t356 * t654 + t357 * t657 - t812;
t321 = t334 * t658 + t387 * t655;
t320 = t334 * t655 - t387 * t658;
t319 = -qJ(3) * t397 - (pkin(3) * t651 + pkin(7) * t650 + t742) * t423;
t318 = t335 * t658 + t741 * t787 - t830;
t317 = t337 * t651 + t352 * t650;
t316 = t337 * t650 - t352 * t651;
t315 = -t356 * t657 - t357 * t654 + t819;
t314 = -pkin(7) * t426 + t348 * t658 - t351 * t655;
t313 = -pkin(3) * t336 + pkin(4) * t466 - pkin(8) * t353;
t312 = -pkin(8) * t333 + (pkin(5) * t654 - t738) * t387;
t311 = -pkin(7) * t418 - t346 * t655 + t347 * t658;
t310 = -pkin(4) * t333 - pkin(5) * t373 - qJ(6) * t372;
t309 = t322 * t658 - t376 * t655 - t830;
t308 = -pkin(7) * t336 + (-pkin(8) * t658 + t741) * t352;
t307 = t321 * t651 + t333 * t650;
t306 = t321 * t650 - t333 * t651;
t305 = qJ(2) * t425 - qJ(3) * t383 + t332 * t651 - t355 * t650;
t304 = qJ(2) * t419 - qJ(3) * t378 + t327 * t651 - t354 * t650;
t303 = -qJ(3) * t385 - t332 * t650 - t355 * t651 + t425 * t742;
t302 = -qJ(3) * t380 - t327 * t650 - t354 * t651 + t419 * t742;
t301 = t316 * t656 + t317 * t659;
t300 = -t316 * t659 + t317 * t656;
t299 = qJ(2) * t426 - qJ(3) * t384 + t314 * t651 - t326 * t650;
t298 = -pkin(3) * t320 - pkin(8) * t334 + (t689 + t739) * t387;
t297 = t318 * t651 - t323 * t650 + t839;
t296 = qJ(2) * t418 - qJ(3) * t377 + t311 * t651 - t325 * t650;
t295 = -qJ(3) * t386 - t314 * t650 - t326 * t651 + t426 * t742;
t294 = -qJ(3) * t379 - t311 * t650 - t325 * t651 + t418 * t742;
t293 = -t318 * t650 - t323 * t651 + t840;
t292 = t309 * t651 - t315 * t650 + t839;
t291 = t306 * t656 + t307 * t659;
t290 = -t306 * t659 + t307 * t656;
t289 = -t309 * t650 - t315 * t651 + t840;
t288 = -pkin(7) * t320 - t310 * t655 + t312 * t658;
t287 = qJ(2) * t336 - qJ(3) * t316 + t308 * t651 - t313 * t650;
t286 = -qJ(3) * t317 - t308 * t650 - t313 * t651 + t336 * t742;
t285 = qJ(2) * t320 - qJ(3) * t306 + t288 * t651 - t298 * t650;
t284 = -qJ(3) * t307 - t288 * t650 - t298 * t651 + t320 * t742;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t618, -t619, 0, t563, 0, 0, 0, 0, 0, 0, -t618, 0, t619, t524, 0, 0, 0, 0, 0, 0, -t549, t688, 0, -t766, 0, 0, 0, 0, 0, 0, t456, t457, t492, t350, 0, 0, 0, 0, 0, 0, t341, t344, t838, t301, 0, 0, 0, 0, 0, 0, t345, t838, t340, t291; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t619, -t618, 0, t562, 0, 0, 0, 0, 0, 0, t619, 0, t618, t523, 0, 0, 0, 0, 0, 0, t688, t549, 0, t381, 0, 0, 0, 0, 0, 0, t454, t455, t491, t349, 0, 0, 0, 0, 0, 0, t339, t342, t837, t300, 0, 0, 0, 0, 0, 0, t343, t837, t338, t290; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t648, 0, 0, 0, 0, 0, 0, -t564, -t565, 0, t423, 0, 0, 0, 0, 0, 0, -t419, -t425, -t804, -t336, 0, 0, 0, 0, 0, 0, -t426, -t804, -t418, -t320; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t619, 0, -t618, 0, -t593, -t594, -t562, -pkin(6) * t562, 0, t619, 0, 0, t618, 0, -t593, -t523, t594, -pkin(6) * t523 + (-pkin(1) * t656 + qJ(2) * t659) * g(3), 0, 0, -t688, 0, -t549, 0, t773, t788, t381, -pkin(6) * t381 - t437 * t656 + t446 * t659, -t541 * t656 + t543 * t659, -t513 * t656 + t514 * t659, -t537 * t656 + t539 * t659, -t540 * t656 + t542 * t659, -t536 * t656 + t538 * t659, -t574 * t656 + t575 * t659, -pkin(6) * t454 - t362 * t656 + t374 * t659, -pkin(6) * t455 - t363 * t656 + t375 * t659, -pkin(6) * t491 - t401 * t656 + t402 * t659, -pkin(6) * t349 - t319 * t656 + t324 * t659, t765, t845, t836, t785, t843, t783, -pkin(6) * t339 - t302 * t656 + t304 * t659, -pkin(6) * t342 - t303 * t656 + t305 * t659, -t293 * t656 + t297 * t659 - t842, -pkin(6) * t300 - t286 * t656 + t287 * t659, t765, t836, -t845, t783, -t843, t785, -pkin(6) * t343 - t295 * t656 + t299 * t659, -t289 * t656 + t292 * t659 - t842, -pkin(6) * t338 - t294 * t656 + t296 * t659, -pkin(6) * t290 - t284 * t656 + t285 * t659; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t618, 0, t619, 0, t594, -t593, t563, pkin(6) * t563, 0, t618, 0, 0, -t619, 0, t594, t524, t593, pkin(6) * t524 + (pkin(1) * t659 + qJ(2) * t656) * g(3), 0, 0, -t549, 0, t688, 0, t788, -t773, t766, -pkin(6) * t766 + t437 * t659 + t446 * t656, t541 * t659 + t543 * t656, t513 * t659 + t514 * t656, t537 * t659 + t539 * t656, t540 * t659 + t542 * t656, t536 * t659 + t538 * t656, t574 * t659 + t575 * t656, pkin(6) * t456 + t362 * t659 + t374 * t656, pkin(6) * t457 + t363 * t659 + t375 * t656, pkin(6) * t492 + t401 * t659 + t402 * t656, pkin(6) * t350 + t319 * t659 + t324 * t656, t764, -t846, t835, t784, -t844, t782, pkin(6) * t341 + t302 * t659 + t304 * t656, pkin(6) * t344 + t303 * t659 + t305 * t656, t293 * t659 + t297 * t656 + t841, pkin(6) * t301 + t286 * t659 + t287 * t656, t764, t835, t846, t782, t844, t784, pkin(6) * t345 + t295 * t659 + t299 * t656, t289 * t659 + t292 * t656 + t841, pkin(6) * t340 + t294 * t659 + t296 * t656, pkin(6) * t291 + t284 * t659 + t285 * t656; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t625, t626, 0, 0, 0, 0, 0, qJDD(1), 0, 0, t678 + 0.2e1 * t737, 0, 0.2e1 * t645 + t672, pkin(1) * t592 + qJ(2) * t591, 0, 0, 0, 0, 0, qJDD(1), -qJ(2) * t615 + t616 * t742 + t511, qJ(2) * t616 + t615 * t742 + t512, 0, qJ(2) * t450 + t449 * t742, t677 * t655, t611 * t658 - t613 * t655, -t627 * t658 - t713, t676 * t658, -t629 * t655 - t710, 0, -pkin(3) * t613 - pkin(7) * t567 + qJ(2) * t521 - t519 * t742 + t731, -pkin(3) * t611 - pkin(7) * t569 + qJ(2) * t522 - t520 * t742 - t732, -pkin(3) * t620 - pkin(7) * t617 + qJ(2) * t554 - t553 * t742 - t424, pkin(3) * t500 - pkin(7) * t424 + qJ(2) * t397 - t396 * t742, t671, -t818, t803, t750, -t817, t749, -pkin(7) * t421 + qJ(2) * t380 - t370 * t658 - t378 * t742 - t400 * t655 + t800, -pkin(7) * t427 + qJ(2) * t385 - t371 * t658 - t383 * t742 - t403 * t655 - t833, -t335 * t655 + (pkin(3) + t740) * t787 + t834, -pkin(7) * t337 + qJ(2) * t317 - t742 * t316 + (pkin(3) + t682) * t352, t671, t803, t818, t749, t817, t750, -pkin(7) * t428 + qJ(2) * t386 - t348 * t655 - t351 * t658 - t384 * t742 + t800, pkin(3) * t787 - t322 * t655 - t376 * t658 + t834, -pkin(7) * t420 + qJ(2) * t379 - t346 * t658 - t347 * t655 - t377 * t742 + t833, pkin(3) * t333 - pkin(7) * t321 + qJ(2) * t307 - t306 * t742 - t310 * t658 - t312 * t655;];
tauB_reg  = t1;
