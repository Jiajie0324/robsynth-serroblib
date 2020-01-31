% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S5RPRPR12
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2,theta4]';
% 
% Output:
% tauB_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S5RPRPR12_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(5,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR12_invdynB_fixb_reg2_snew_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR12_invdynB_fixb_reg2_snew_vp: qJD has to be [5x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [5 1]), ...
  'S5RPRPR12_invdynB_fixb_reg2_snew_vp: qJDD has to be [5x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S5RPRPR12_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRPR12_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:30:29
% EndTime: 2019-12-31 18:30:44
% DurationCPUTime: 14.87s
% Computational Cost: add. (70380->631), mult. (174888->975), div. (0->0), fcn. (130718->10), ass. (0->437)
t723 = sin(qJ(1));
t726 = cos(qJ(1));
t701 = t726 * g(1) + t723 * g(2);
t806 = -(2 * qJD(2) * qJD(1)) + t701;
t717 = sin(pkin(9));
t718 = sin(pkin(8));
t720 = cos(pkin(8));
t722 = sin(qJ(3));
t725 = cos(qJ(3));
t736 = t718 * t725 + t720 * t722;
t690 = t736 * qJD(1);
t719 = cos(pkin(9));
t666 = -t719 * qJD(3) + t717 * t690;
t669 = t717 * qJD(3) + t719 * t690;
t620 = t669 * t666;
t752 = qJDD(1) * t720;
t773 = t718 * t722;
t686 = qJDD(1) * t773 - t725 * t752;
t755 = t690 * qJD(3);
t646 = t686 + t755;
t796 = -t620 + t646;
t805 = t717 * t796;
t804 = t719 * t796;
t721 = sin(qJ(5));
t724 = cos(qJ(5));
t615 = t724 * t666 + t721 * t669;
t617 = -t721 * t666 + t724 * t669;
t563 = t617 * t615;
t732 = qJDD(5) + t646;
t798 = -t563 + t732;
t803 = t721 * t798;
t688 = (-t720 * t725 + t773) * qJD(1);
t652 = t690 * t688;
t794 = qJDD(3) - t652;
t802 = t722 * t794;
t801 = t724 * t798;
t800 = t725 * t794;
t727 = qJD(1) ^ 2;
t799 = -(t727 * pkin(1)) + qJDD(1) * qJ(2) - t806;
t700 = t723 * g(1) - t726 * g(2);
t737 = -qJDD(2) + t700;
t742 = pkin(2) * t720 + pkin(1);
t713 = t718 ^ 2;
t714 = t720 ^ 2;
t757 = t713 + t714;
t641 = t742 * qJDD(1) + (t757 * pkin(6) + qJ(2)) * t727 + t737;
t680 = qJD(5) + t688;
t596 = t680 * t615;
t756 = t688 * qJD(3);
t795 = t736 * qJDD(1);
t648 = t795 - t756;
t628 = t719 * qJDD(3) - t717 * t648;
t629 = t717 * qJDD(3) + t719 * t648;
t733 = t615 * qJD(5) - t721 * t628 - t724 * t629;
t797 = -t596 - t733;
t635 = t688 * t666;
t582 = -t635 - t629;
t581 = -t635 + t629;
t792 = t727 * t757;
t739 = -t724 * t628 + t721 * t629;
t498 = (qJD(5) - t680) * t617 + t739;
t613 = t615 ^ 2;
t614 = t617 ^ 2;
t790 = t666 ^ 2;
t661 = t669 ^ 2;
t679 = t680 ^ 2;
t789 = t688 ^ 2;
t685 = t690 ^ 2;
t788 = qJD(3) ^ 2;
t787 = pkin(3) * t722;
t786 = t720 * g(3);
t785 = qJDD(1) * pkin(1);
t784 = t680 * t721;
t783 = t680 * t724;
t782 = t688 * t669;
t781 = t688 * t717;
t780 = t688 * t719;
t779 = t713 * t727;
t710 = t714 * t727;
t654 = -t718 * g(3) + t799 * t720;
t632 = -pkin(2) * t710 + pkin(6) * t752 + t654;
t730 = -t786 + (t742 * t727 + (-pkin(6) - qJ(2)) * qJDD(1) + t806) * t718;
t567 = t725 * t632 + t722 * t730;
t638 = t688 * pkin(3) - t690 * qJ(4);
t533 = -t788 * pkin(3) + qJDD(3) * qJ(4) - t688 * t638 + t567;
t546 = (-t648 + t756) * qJ(4) + (t646 + t755) * pkin(3) - t641;
t462 = 0.2e1 * qJD(4) * t669 + t717 * t533 - t719 * t546;
t431 = pkin(4) * t796 + t582 * pkin(7) - t462;
t463 = -0.2e1 * qJD(4) * t666 + t719 * t533 + t717 * t546;
t627 = t688 * pkin(4) - t669 * pkin(7);
t446 = -t790 * pkin(4) + t628 * pkin(7) - t688 * t627 + t463;
t384 = -t724 * t431 + t721 * t446;
t385 = t721 * t431 + t724 * t446;
t354 = -t724 * t384 + t721 * t385;
t778 = t717 * t354;
t566 = t722 * t632 - t725 * t730;
t530 = -qJDD(3) * pkin(3) - t788 * qJ(4) + t690 * t638 + qJDD(4) + t566;
t777 = t717 * t530;
t585 = t620 + t646;
t776 = t717 * t585;
t511 = -t725 * t566 + t722 * t567;
t775 = t718 * t511;
t774 = t718 * t720;
t772 = t719 * t354;
t771 = t719 * t530;
t770 = t719 * t585;
t769 = t720 * t511;
t471 = -t628 * pkin(4) - t790 * pkin(7) + t669 * t627 + t530;
t768 = t721 * t471;
t538 = t563 + t732;
t767 = t721 * t538;
t766 = t722 * t641;
t643 = qJDD(3) + t652;
t765 = t722 * t643;
t764 = t722 * t646;
t681 = t727 * qJ(2) + t737 + t785;
t763 = t723 * t681;
t762 = t724 * t471;
t761 = t724 * t538;
t760 = t725 * t641;
t759 = t725 * t643;
t758 = t726 * t681;
t751 = t723 * qJDD(1);
t750 = t726 * qJDD(1);
t748 = t722 * t563;
t747 = t722 * t620;
t746 = t723 * t652;
t745 = t725 * t563;
t744 = t725 * t620;
t743 = t726 * t652;
t741 = -pkin(3) * t725 - pkin(2);
t740 = t681 + t785;
t355 = t721 * t384 + t724 * t385;
t512 = t722 * t566 + t725 * t567;
t653 = t799 * t718 + t786;
t600 = t718 * t653 + t720 * t654;
t670 = -t723 * t700 - t726 * t701;
t699 = -t723 * t727 + t750;
t738 = -pkin(5) * t699 - t723 * g(3);
t410 = -t719 * t462 + t717 * t463;
t411 = t717 * t462 + t719 * t463;
t599 = t720 * t653 - t718 * t654;
t668 = t726 * t700 - t723 * t701;
t698 = t726 * t727 + t751;
t578 = -t628 - t782;
t692 = t720 * t792;
t663 = -t723 * t692 + t720 * t750;
t735 = t726 * t692 + t720 * t751;
t708 = t714 * qJDD(1);
t706 = t713 * qJDD(1);
t697 = t710 - t779;
t696 = t710 + t779;
t695 = t708 - t706;
t694 = t708 + t706;
t691 = t718 * t792;
t682 = -pkin(5) * t698 + t726 * g(3);
t675 = -t685 - t788;
t674 = -t685 + t788;
t673 = t789 - t788;
t672 = t699 * t774;
t671 = t698 * t774;
t664 = t726 * t691 + t718 * t751;
t662 = t723 * t691 - t718 * t750;
t656 = t726 * t694 - t723 * t696;
t655 = t723 * t694 + t726 * t696;
t650 = -t685 + t789;
t647 = t795 - 0.2e1 * t756;
t645 = t686 + 0.2e1 * t755;
t640 = -t789 - t788;
t637 = t725 * t646;
t634 = (-t688 * t725 + t690 * t722) * qJD(3);
t633 = (-t688 * t722 - t690 * t725) * qJD(3);
t631 = -t661 + t789;
t630 = -t789 + t790;
t621 = -t789 - t685;
t618 = -t661 + t790;
t612 = t725 * t648 - t722 * t755;
t611 = t722 * t648 + t725 * t755;
t610 = t725 * t756 + t764;
t609 = t722 * t756 - t637;
t608 = -t661 - t789;
t607 = -t722 * t675 - t759;
t606 = -t722 * t674 + t800;
t605 = t725 * t673 - t765;
t604 = t725 * t675 - t765;
t603 = t725 * t674 + t802;
t602 = t722 * t673 + t759;
t601 = -t789 - t790;
t595 = -t725 * t645 - t722 * t647;
t594 = -t686 * t725 + t722 * t795;
t593 = -t722 * t645 + t725 * t647;
t592 = -t686 * t722 - t725 * t795;
t591 = -t614 + t679;
t590 = t613 - t679;
t589 = t725 * t640 - t802;
t588 = t722 * t640 + t800;
t587 = t661 + t790;
t579 = t628 - t782;
t577 = (-t666 * t719 + t669 * t717) * t688;
t576 = (t666 * t717 + t669 * t719) * t688;
t575 = -t718 * t633 + t720 * t634;
t574 = t719 * t629 - t669 * t781;
t573 = -t717 * t629 - t669 * t780;
t572 = -t717 * t628 + t666 * t780;
t571 = -t719 * t628 - t666 * t781;
t570 = t726 * t600 - t763;
t569 = t723 * t600 + t758;
t568 = -t614 - t679;
t564 = -pkin(6) * t604 - t760;
t562 = -t614 + t613;
t561 = -pkin(6) * t588 - t766;
t560 = -t718 * t611 + t720 * t612;
t559 = -t718 * t609 + t720 * t610;
t558 = -t718 * t604 + t720 * t607;
t557 = -t718 * t603 + t720 * t606;
t556 = -t718 * t602 + t720 * t605;
t555 = t720 * t604 + t718 * t607;
t554 = t725 * t577 + t764;
t553 = t722 * t577 - t637;
t552 = -t679 - t613;
t551 = t719 * t630 - t776;
t550 = -t717 * t631 + t804;
t549 = -t717 * t630 - t770;
t548 = -t719 * t631 - t805;
t547 = -pkin(2) * t647 + pkin(6) * t607 - t766;
t543 = t725 * t574 + t747;
t542 = t725 * t572 - t747;
t541 = t722 * t574 - t744;
t540 = t722 * t572 + t744;
t536 = -t717 * t608 - t770;
t535 = t719 * t608 - t776;
t534 = -pkin(2) * t645 + pkin(6) * t589 + t760;
t531 = -t617 * qJD(5) - t739;
t529 = (-t615 * t724 + t617 * t721) * t680;
t528 = (-t615 * t721 - t617 * t724) * t680;
t526 = -t718 * t593 + t720 * t595;
t525 = -t718 * t592 + t720 * t594;
t524 = t720 * t592 + t718 * t594;
t523 = t719 * t601 - t805;
t522 = t717 * t601 + t804;
t521 = -t718 * t588 + t720 * t589;
t520 = t720 * t588 + t718 * t589;
t519 = t726 * t558 + t723 * t647;
t518 = t723 * t558 - t726 * t647;
t517 = -t613 - t614;
t516 = -t578 * t719 - t717 * t582;
t515 = t719 * t579 - t717 * t581;
t514 = -t578 * t717 + t719 * t582;
t513 = -t717 * t579 - t719 * t581;
t510 = t726 * t521 + t723 * t645;
t509 = t723 * t521 - t726 * t645;
t508 = t726 * t525 + t723 * t621;
t507 = t723 * t525 - t726 * t621;
t506 = t725 * t551 - t722 * t578;
t505 = t725 * t550 - t722 * t582;
t504 = t722 * t551 + t725 * t578;
t503 = t722 * t550 + t725 * t582;
t502 = -t596 + t733;
t497 = (qJD(5) + t680) * t617 + t739;
t496 = pkin(2) * t641 + pkin(6) * t512;
t495 = t724 * t590 - t767;
t494 = -t721 * t591 + t801;
t493 = t721 * t590 + t761;
t492 = t724 * t591 + t803;
t491 = -t617 * t784 - t724 * t733;
t490 = t617 * t783 - t721 * t733;
t489 = -t721 * t531 + t615 * t783;
t488 = t724 * t531 + t615 * t784;
t487 = -pkin(1) * t524 - pkin(2) * t592;
t486 = t725 * t515 - t722 * t618;
t485 = t722 * t515 + t725 * t618;
t484 = t725 * t536 + t581 * t722;
t483 = t722 * t536 - t581 * t725;
t482 = -t721 * t568 - t761;
t481 = t724 * t568 - t767;
t480 = t725 * t523 - t722 * t579;
t479 = t722 * t523 + t725 * t579;
t478 = t725 * t516 - t722 * t587;
t477 = t722 * t516 + t725 * t587;
t476 = -t718 * t553 + t720 * t554;
t475 = -pkin(6) * t592 - t511;
t474 = -pkin(1) * t555 - pkin(2) * t604 + t567;
t473 = t724 * t552 - t803;
t472 = t721 * t552 + t801;
t470 = -t718 * t541 + t720 * t543;
t469 = -t718 * t540 + t720 * t542;
t468 = -qJ(4) * t535 + t771;
t467 = -t717 * t528 + t719 * t529;
t466 = -t719 * t528 - t717 * t529;
t465 = -qJ(4) * t522 + t777;
t464 = -pkin(2) * t621 + pkin(6) * t594 + t512;
t461 = -pkin(1) * t520 - pkin(2) * t588 + t566;
t460 = t725 * t467 + t722 * t732;
t459 = t722 * t467 - t725 * t732;
t458 = -qJ(2) * t555 - t718 * t547 + t720 * t564;
t457 = t720 * t512 - t775;
t456 = t718 * t512 + t769;
t455 = -qJ(2) * t520 - t718 * t534 + t720 * t561;
t454 = t726 * t457 - t723 * t641;
t453 = t723 * t457 + t726 * t641;
t452 = -t718 * t504 + t720 * t506;
t451 = -t718 * t503 + t720 * t505;
t450 = -t498 * t724 - t721 * t502;
t449 = -t724 * t497 - t721 * t797;
t448 = -t498 * t721 + t724 * t502;
t447 = -t721 * t497 + t724 * t797;
t444 = -t717 * t493 + t719 * t495;
t443 = -t717 * t492 + t719 * t494;
t442 = -t719 * t493 - t717 * t495;
t441 = -t719 * t492 - t717 * t494;
t440 = -t717 * t490 + t719 * t491;
t439 = -t717 * t488 + t719 * t489;
t438 = -t719 * t490 - t717 * t491;
t437 = -t719 * t488 - t717 * t489;
t436 = -t718 * t485 + t720 * t486;
t435 = -pkin(3) * t535 + t463;
t434 = -pkin(3) * t522 + t462;
t433 = -t718 * t483 + t720 * t484;
t432 = t720 * t483 + t718 * t484;
t428 = -t717 * t481 + t719 * t482;
t427 = t719 * t481 + t717 * t482;
t426 = -t718 * t479 + t720 * t480;
t425 = t720 * t479 + t718 * t480;
t424 = -t718 * t477 + t720 * t478;
t423 = t720 * t477 + t718 * t478;
t422 = -pkin(7) * t481 + t762;
t421 = -t717 * t472 + t719 * t473;
t420 = t719 * t472 + t717 * t473;
t419 = -pkin(7) * t472 + t768;
t418 = t725 * t440 + t748;
t417 = t725 * t439 - t748;
t416 = t722 * t440 - t745;
t415 = t722 * t439 + t745;
t414 = -pkin(1) * t456 - pkin(2) * t511;
t413 = t726 * t433 + t723 * t535;
t412 = t723 * t433 - t726 * t535;
t409 = t726 * t426 + t723 * t522;
t408 = t723 * t426 - t726 * t522;
t407 = t725 * t444 - t722 * t498;
t406 = t725 * t443 - t722 * t502;
t405 = t722 * t444 + t725 * t498;
t404 = t722 * t443 + t725 * t502;
t403 = t726 * t424 + t723 * t514;
t402 = t723 * t424 - t726 * t514;
t401 = -t718 * t459 + t720 * t460;
t400 = t725 * t428 + t722 * t797;
t399 = t722 * t428 - t725 * t797;
t398 = -qJ(2) * t524 - t718 * t464 + t720 * t475;
t397 = -pkin(4) * t797 + pkin(7) * t482 + t768;
t396 = -pkin(4) * t497 + pkin(7) * t473 - t762;
t395 = t725 * t421 + t722 * t497;
t394 = t722 * t421 - t725 * t497;
t393 = t725 * t411 + t722 * t530;
t392 = t722 * t411 - t725 * t530;
t391 = -pkin(6) * t769 - qJ(2) * t456 - t718 * t496;
t390 = -qJ(4) * t514 - t410;
t389 = -t717 * t448 + t719 * t450;
t388 = -t717 * t447 + t719 * t449;
t387 = t719 * t448 + t717 * t450;
t386 = -t719 * t447 - t717 * t449;
t382 = -pkin(6) * t483 - t722 * t435 + t725 * t468;
t381 = t725 * t388 - t722 * t562;
t380 = t722 * t388 + t725 * t562;
t379 = -pkin(6) * t479 - t722 * t434 + t725 * t465;
t378 = t725 * t389 + t722 * t517;
t377 = t722 * t389 - t725 * t517;
t376 = -pkin(1) * t432 - pkin(2) * t483 + pkin(3) * t581 - qJ(4) * t536 - t777;
t375 = -pkin(1) * t425 - pkin(2) * t479 - pkin(3) * t579 - qJ(4) * t523 + t771;
t374 = -pkin(2) * t535 + pkin(6) * t484 + t725 * t435 + t722 * t468;
t373 = -t718 * t416 + t720 * t418;
t372 = -t718 * t415 + t720 * t417;
t371 = -pkin(2) * t522 + pkin(6) * t480 + t725 * t434 + t722 * t465;
t370 = -pkin(6) * t477 + t725 * t390 + t514 * t787;
t369 = -pkin(3) * t387 - pkin(4) * t448;
t368 = -t718 * t405 + t720 * t407;
t367 = -t718 * t404 + t720 * t406;
t366 = pkin(6) * t478 + t722 * t390 + t741 * t514;
t365 = -t718 * t399 + t720 * t400;
t364 = t720 * t399 + t718 * t400;
t363 = -t718 * t394 + t720 * t395;
t362 = t720 * t394 + t718 * t395;
t361 = -t718 * t392 + t720 * t393;
t360 = t720 * t392 + t718 * t393;
t359 = -pkin(1) * t423 - pkin(2) * t477 - pkin(3) * t587 - qJ(4) * t516 - t411;
t358 = -pkin(3) * t427 - pkin(4) * t481 + t385;
t357 = -qJ(4) * t427 - t717 * t397 + t719 * t422;
t356 = -pkin(3) * t420 - pkin(4) * t472 + t384;
t353 = -qJ(4) * t420 - t717 * t396 + t719 * t419;
t352 = t726 * t365 + t723 * t427;
t351 = t723 * t365 - t726 * t427;
t350 = -t718 * t380 + t720 * t381;
t349 = -pkin(6) * t392 + (-qJ(4) * t725 + t787) * t410;
t348 = -t718 * t377 + t720 * t378;
t347 = t720 * t377 + t718 * t378;
t346 = t726 * t363 + t723 * t420;
t345 = t723 * t363 - t726 * t420;
t344 = -pkin(4) * t471 + pkin(7) * t355;
t343 = t726 * t361 + t723 * t410;
t342 = t723 * t361 - t726 * t410;
t341 = -pkin(7) * t448 - t354;
t340 = -pkin(4) * t517 + pkin(7) * t450 + t355;
t339 = -qJ(2) * t432 - t718 * t374 + t720 * t382;
t338 = -qJ(2) * t425 - t718 * t371 + t720 * t379;
t337 = pkin(6) * t393 + (-qJ(4) * t722 + t741) * t410;
t336 = t726 * t348 + t723 * t387;
t335 = t723 * t348 - t726 * t387;
t334 = -qJ(2) * t423 - t718 * t366 + t720 * t370;
t333 = -pkin(1) * t360 - pkin(2) * t392 + pkin(3) * t530 - qJ(4) * t411;
t332 = t719 * t355 - t778;
t331 = t717 * t355 + t772;
t330 = t725 * t332 + t722 * t471;
t329 = t722 * t332 - t725 * t471;
t328 = -pkin(1) * t364 - pkin(2) * t399 + pkin(3) * t797 - qJ(4) * t428 - t719 * t397 - t717 * t422;
t327 = -pkin(6) * t399 + t725 * t357 - t722 * t358;
t326 = -pkin(6) * t394 + t725 * t353 - t722 * t356;
t325 = -pkin(1) * t362 - pkin(2) * t394 + pkin(3) * t497 - qJ(4) * t421 - t719 * t396 - t717 * t419;
t324 = -pkin(2) * t427 + pkin(6) * t400 + t722 * t357 + t725 * t358;
t323 = -pkin(2) * t420 + pkin(6) * t395 + t722 * t353 + t725 * t356;
t322 = -pkin(3) * t331 - pkin(4) * t354;
t321 = -qJ(4) * t387 - t717 * t340 + t719 * t341;
t320 = -qJ(2) * t360 - t718 * t337 + t720 * t349;
t319 = -pkin(7) * t772 - qJ(4) * t331 - t717 * t344;
t318 = -t718 * t329 + t720 * t330;
t317 = t720 * t329 + t718 * t330;
t316 = -pkin(6) * t377 + t725 * t321 - t722 * t369;
t315 = -pkin(2) * t387 + pkin(6) * t378 + t722 * t321 + t725 * t369;
t314 = -pkin(1) * t347 - pkin(2) * t377 + pkin(3) * t517 - qJ(4) * t389 - t719 * t340 - t717 * t341;
t313 = -qJ(2) * t364 - t718 * t324 + t720 * t327;
t312 = -qJ(2) * t362 - t718 * t323 + t720 * t326;
t311 = t726 * t318 + t723 * t331;
t310 = t723 * t318 - t726 * t331;
t309 = -pkin(6) * t329 + t725 * t319 - t722 * t322;
t308 = -qJ(2) * t347 - t718 * t315 + t720 * t316;
t307 = -pkin(1) * t317 - pkin(2) * t329 + pkin(3) * t471 + pkin(7) * t778 - qJ(4) * t332 - t719 * t344;
t306 = -pkin(2) * t331 + pkin(6) * t330 + t722 * t319 + t725 * t322;
t305 = -qJ(2) * t317 - t718 * t306 + t720 * t309;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t698, -t699, 0, t670, 0, 0, 0, 0, 0, 0, -t735, t664, t656, t570, 0, 0, 0, 0, 0, 0, t510, t519, t508, t454, 0, 0, 0, 0, 0, 0, t409, t413, t403, t343, 0, 0, 0, 0, 0, 0, t346, t352, t336, t311; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t699, -t698, 0, t668, 0, 0, 0, 0, 0, 0, t663, t662, t655, t569, 0, 0, 0, 0, 0, 0, t509, t518, t507, t453, 0, 0, 0, 0, 0, 0, t408, t412, t402, t342, 0, 0, 0, 0, 0, 0, t345, t351, t335, t310; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t599, 0, 0, 0, 0, 0, 0, t520, t555, t524, t456, 0, 0, 0, 0, 0, 0, t425, t432, t423, t360, 0, 0, 0, 0, 0, 0, t362, t364, t347, t317; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t699, 0, -t698, 0, t738, -t682, -t668, -pkin(5) * t668, t672, t726 * t695 - t723 * t697, t664, -t672, t735, 0, -pkin(5) * t663 - t723 * t653 - t718 * t758, -pkin(5) * t662 - t723 * t654 - t720 * t758, -pkin(5) * t655 + t726 * t599, -pkin(5) * t569 - (pkin(1) * t723 - qJ(2) * t726) * t599, t726 * t560 + t746, t726 * t526 - t723 * t650, t726 * t557 + t723 * t795, t726 * t559 - t746, t726 * t556 - t723 * t686, t723 * qJDD(3) + t726 * t575, -pkin(5) * t509 + t726 * t455 - t723 * t461, -pkin(5) * t518 + t726 * t458 - t723 * t474, -pkin(5) * t507 + t726 * t398 - t723 * t487, -pkin(5) * t453 + t726 * t391 - t723 * t414, t726 * t470 - t723 * t573, t726 * t436 - t723 * t513, t726 * t451 - t723 * t548, t726 * t469 - t723 * t571, t726 * t452 - t723 * t549, t726 * t476 - t723 * t576, -pkin(5) * t408 + t726 * t338 - t723 * t375, -pkin(5) * t412 + t726 * t339 - t723 * t376, -pkin(5) * t402 + t726 * t334 - t723 * t359, -pkin(5) * t342 + t726 * t320 - t723 * t333, t726 * t373 - t723 * t438, t726 * t350 - t723 * t386, t726 * t367 - t723 * t441, t726 * t372 - t723 * t437, t726 * t368 - t723 * t442, t726 * t401 - t723 * t466, -pkin(5) * t345 + t726 * t312 - t723 * t325, -pkin(5) * t351 + t726 * t313 - t723 * t328, -pkin(5) * t335 + t726 * t308 - t723 * t314, -pkin(5) * t310 + t726 * t305 - t723 * t307; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t698, 0, t699, 0, t682, t738, t670, pkin(5) * t670, t671, t723 * t695 + t726 * t697, t662, -t671, -t663, 0, -pkin(5) * t735 + t726 * t653 - t718 * t763, pkin(5) * t664 + t726 * t654 - t720 * t763, pkin(5) * t656 + t723 * t599, pkin(5) * t570 - (-pkin(1) * t726 - qJ(2) * t723) * t599, t723 * t560 - t743, t723 * t526 + t726 * t650, t723 * t557 - t726 * t795, t723 * t559 + t743, t723 * t556 + t726 * t686, -t726 * qJDD(3) + t723 * t575, pkin(5) * t510 + t723 * t455 + t726 * t461, pkin(5) * t519 + t723 * t458 + t726 * t474, pkin(5) * t508 + t723 * t398 + t726 * t487, pkin(5) * t454 + t723 * t391 + t726 * t414, t723 * t470 + t726 * t573, t723 * t436 + t726 * t513, t723 * t451 + t726 * t548, t723 * t469 + t726 * t571, t723 * t452 + t726 * t549, t723 * t476 + t726 * t576, pkin(5) * t409 + t723 * t338 + t726 * t375, pkin(5) * t413 + t723 * t339 + t726 * t376, pkin(5) * t403 + t723 * t334 + t726 * t359, pkin(5) * t343 + t723 * t320 + t726 * t333, t723 * t373 + t726 * t438, t723 * t350 + t726 * t386, t723 * t367 + t726 * t441, t723 * t372 + t726 * t437, t723 * t368 + t726 * t442, t723 * t401 + t726 * t466, pkin(5) * t346 + t723 * t312 + t726 * t325, pkin(5) * t352 + t723 * t313 + t726 * t328, pkin(5) * t336 + t723 * t308 + t726 * t314, pkin(5) * t311 + t723 * t305 + t726 * t307; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t700, t701, 0, 0, t706, 0.2e1 * t718 * t752, 0, t708, 0, 0, -qJ(2) * t692 + t720 * t740, qJ(2) * t691 - t718 * t740, pkin(1) * t696 + qJ(2) * t694 + t600, pkin(1) * t681 + qJ(2) * t600, t720 * t611 + t718 * t612, t720 * t593 + t718 * t595, t720 * t603 + t718 * t606, t720 * t609 + t718 * t610, t720 * t602 + t718 * t605, t720 * t633 + t718 * t634, -pkin(1) * t645 + qJ(2) * t521 + t720 * t534 + t718 * t561, -pkin(1) * t647 + qJ(2) * t558 + t720 * t547 + t718 * t564, -pkin(1) * t621 + qJ(2) * t525 + t720 * t464 + t718 * t475, pkin(1) * t641 - pkin(6) * t775 + qJ(2) * t457 + t720 * t496, t720 * t541 + t718 * t543, t720 * t485 + t718 * t486, t720 * t503 + t718 * t505, t720 * t540 + t718 * t542, t720 * t504 + t718 * t506, t720 * t553 + t718 * t554, -pkin(1) * t522 + qJ(2) * t426 + t720 * t371 + t718 * t379, -pkin(1) * t535 + qJ(2) * t433 + t720 * t374 + t718 * t382, -pkin(1) * t514 + qJ(2) * t424 + t720 * t366 + t718 * t370, -pkin(1) * t410 + qJ(2) * t361 + t720 * t337 + t718 * t349, t720 * t416 + t718 * t418, t720 * t380 + t718 * t381, t720 * t404 + t718 * t406, t720 * t415 + t718 * t417, t720 * t405 + t718 * t407, t720 * t459 + t718 * t460, -pkin(1) * t420 + qJ(2) * t363 + t720 * t323 + t718 * t326, -pkin(1) * t427 + qJ(2) * t365 + t720 * t324 + t718 * t327, -pkin(1) * t387 + qJ(2) * t348 + t720 * t315 + t718 * t316, -pkin(1) * t331 + qJ(2) * t318 + t720 * t306 + t718 * t309;];
tauB_reg = t1;