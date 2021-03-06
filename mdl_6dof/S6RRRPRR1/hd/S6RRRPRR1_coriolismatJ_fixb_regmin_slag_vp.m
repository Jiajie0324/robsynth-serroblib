% Calculate minimal parameter regressor of coriolis matrix for
% S6RRRPRR1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6,theta4]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x33]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 18:05
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRRPRR1_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR1_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR1_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRR1_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 18:04:15
% EndTime: 2019-03-09 18:04:47
% DurationCPUTime: 21.13s
% Computational Cost: add. (24437->604), mult. (47438->792), div. (0->0), fcn. (58504->10), ass. (0->474)
t447 = sin(qJ(6));
t448 = sin(qJ(5));
t449 = sin(qJ(3));
t450 = sin(qJ(2));
t452 = cos(qJ(2));
t730 = cos(qJ(3));
t423 = -t449 * t450 + t452 * t730;
t589 = t730 * t450;
t668 = t449 * t452;
t497 = t589 + t668;
t703 = sin(pkin(11));
t704 = cos(pkin(11));
t466 = t703 * t423 + t497 * t704;
t752 = pkin(7) + pkin(8);
t432 = t752 * t452;
t425 = t730 * t432;
t431 = t752 * t450;
t669 = t449 * t431;
t762 = -t425 + t669;
t352 = -t423 * qJ(4) + t762;
t360 = t730 * t431 + t449 * t432;
t760 = -t497 * qJ(4) - t360;
t776 = t703 * t352 + t760 * t704;
t785 = -pkin(9) * t466 + t776;
t796 = t448 * t785;
t729 = cos(qJ(5));
t758 = t704 * t423 - t497 * t703;
t775 = t704 * t352 - t760 * t703;
t784 = -t758 * pkin(9) + t775;
t804 = t729 * t784;
t819 = -t804 + t796;
t841 = t447 * t819;
t843 = t841 / 0.2e1;
t854 = 0.2e1 * t843;
t451 = cos(qJ(6));
t839 = t451 * t819;
t844 = -t839 / 0.2e1;
t853 = 0.2e1 * t844;
t605 = qJD(2) + qJD(3);
t793 = t729 * t785;
t751 = -t793 / 0.2e1;
t805 = t448 * t784;
t836 = -t805 / 0.2e1 + t751;
t852 = 0.2e1 * t836;
t770 = t448 * t758;
t772 = t729 * t466;
t778 = t772 + t770;
t788 = t451 * t778;
t565 = -t788 / 0.2e1;
t305 = t448 * t466 - t729 * t758;
t795 = t451 * t305;
t808 = t795 / 0.2e1;
t851 = pkin(5) * t808 + pkin(10) * t565 + t854;
t734 = -t447 / 0.2e1;
t568 = t305 * t734;
t790 = t447 * t778;
t570 = -t790 / 0.2e1;
t850 = -pkin(5) * t568 + pkin(10) * t570 + t853;
t540 = t605 * t305;
t615 = t305 * qJD(5);
t768 = t615 + t540;
t809 = -t795 / 0.2e1;
t816 = t809 + t808;
t830 = qJD(6) * t816;
t688 = t305 ^ 2;
t791 = t778 ^ 2;
t802 = -t688 + t791;
t821 = t802 * t451;
t832 = qJD(1) * t821;
t849 = t830 + t832;
t825 = -t804 / 0.2e1;
t454 = t796 / 0.2e1 + t825;
t535 = t804 / 0.2e1;
t817 = -t796 / 0.2e1 + t535;
t838 = t454 + t817;
t848 = qJD(1) * t838;
t835 = t817 - t454;
t847 = qJD(5) * t835;
t846 = qJD(5) * t852;
t829 = qJD(5) + t605;
t296 = t778 * qJD(4);
t845 = -qJD(5) * t838 - t296;
t834 = qJD(1) * t305;
t534 = t793 / 0.2e1;
t820 = t534 + t751;
t833 = qJD(1) * t820;
t822 = t802 * t447;
t831 = qJD(1) * t822;
t299 = t305 * qJD(4);
t440 = -t452 * pkin(2) - pkin(1);
t400 = -t423 * pkin(3) + t440;
t310 = -pkin(4) * t758 + t400;
t531 = t305 * pkin(5) - pkin(10) * t778;
t455 = t310 + t531;
t57 = -t451 * t455 + t841;
t810 = t778 * t819;
t828 = t447 * t810 - t57 * t778;
t58 = t447 * t455 + t839;
t827 = t451 * t810 - t58 * t778;
t826 = qJD(5) * t820 + t299;
t801 = t793 + t805;
t815 = t802 * qJD(1);
t705 = t801 * t451;
t732 = -t451 / 0.2e1;
t812 = t732 * t801 - t705 / 0.2e1;
t706 = t801 * t447;
t811 = t734 * t801 - t706 / 0.2e1;
t781 = t778 * qJD(1);
t573 = t305 * t781;
t777 = t770 / 0.2e1 + t772 / 0.2e1;
t803 = qJD(6) * t777 + t573;
t725 = t778 * pkin(5);
t726 = t305 * pkin(10);
t166 = t725 + t726;
t799 = t305 / 0.2e1;
t798 = t790 / 0.2e1;
t749 = t778 / 0.2e1;
t782 = t777 * qJD(1);
t169 = 0.2e1 * t777;
t541 = t605 * t778;
t65 = -t169 * qJD(5) - t541;
t446 = t451 ^ 2;
t756 = t447 ^ 2;
t542 = t756 / 0.2e1 - t446 / 0.2e1;
t137 = t542 * t778;
t604 = -qJD(3) - qJD(5);
t544 = qJD(2) - t604;
t679 = t447 * t451;
t763 = t544 * t679;
t115 = -t137 * qJD(1) + t763;
t767 = -0.2e1 * t778;
t601 = -t446 + t756;
t766 = t601 * t544;
t154 = 0.2e1 * t809;
t761 = t605 * t360;
t576 = qJD(1) * t679;
t759 = t137 * t544 + t576 * t791;
t755 = pkin(5) / 0.2e1;
t746 = -t305 / 0.2e1;
t439 = pkin(2) * t730 + pkin(3);
t545 = t703 * t449;
t411 = -pkin(2) * t545 + t704 * t439;
t408 = pkin(4) + t411;
t399 = t729 * t408;
t547 = t704 * t449;
t413 = pkin(2) * t547 + t439 * t703;
t343 = t448 * t413 - t399;
t332 = -pkin(5) + t343;
t745 = -t332 / 0.2e1;
t582 = t729 * t413;
t344 = t448 * t408 + t582;
t333 = pkin(10) + t344;
t744 = t333 / 0.2e1;
t743 = t344 / 0.2e1;
t416 = (-t703 * t730 - t547) * pkin(2);
t407 = t729 * t416;
t417 = (t704 * t730 - t545) * pkin(2);
t670 = t448 * t417;
t374 = -t407 + t670;
t742 = -t374 / 0.2e1;
t438 = pkin(3) * t704 + pkin(4);
t429 = t729 * t438;
t580 = t703 * pkin(3);
t412 = t448 * t580 - t429;
t409 = -pkin(5) + t412;
t741 = -t409 / 0.2e1;
t516 = t729 * t580;
t414 = t448 * t438 + t516;
t410 = pkin(10) + t414;
t740 = -t410 / 0.2e1;
t739 = -t411 / 0.2e1;
t738 = -t413 / 0.2e1;
t737 = t414 / 0.2e1;
t736 = t416 / 0.2e1;
t735 = -t417 / 0.2e1;
t536 = -t425 / 0.2e1;
t733 = t447 / 0.2e1;
t731 = t451 / 0.2e1;
t728 = pkin(2) * t449;
t727 = pkin(5) * t447;
t445 = t450 * pkin(2);
t723 = pkin(3) * qJD(3);
t581 = t729 * t417;
t671 = t448 * t416;
t375 = t581 + t671;
t459 = t375 * t799 - (t409 / 0.2e1 + t745) * t305 + (t742 + t740 + t744) * t778;
t7 = t844 + t839 / 0.2e1 + t459 * t447;
t722 = qJD(1) * t7;
t487 = t497 * pkin(3);
t318 = pkin(4) * t466 + t487;
t113 = t318 + t166;
t112 = t445 + t113;
t1 = t112 * t795 + t828;
t721 = t1 * qJD(1);
t142 = t447 * t305;
t2 = -t112 * t142 + t827;
t720 = t2 * qJD(1);
t3 = t113 * t795 + t828;
t719 = t3 * qJD(1);
t4 = -t113 * t142 + t827;
t717 = t4 * qJD(1);
t5 = (-t57 + t841) * t778 + t166 * t795;
t714 = t5 * qJD(1);
t6 = (-t58 + t839) * t778 - t166 * t142;
t711 = t6 * qJD(1);
t27 = t305 * t57 + t790 * t801;
t702 = qJD(1) * t27;
t28 = -t305 * t58 - t788 * t801;
t701 = qJD(1) * t28;
t559 = t799 + t746;
t63 = t601 * t559;
t700 = qJD(1) * t63;
t520 = t688 + t791;
t68 = t520 * t447;
t698 = qJD(1) * t68;
t311 = t445 + t318;
t690 = t778 * t310;
t76 = t305 * t311 + t690;
t696 = qJD(1) * t76;
t687 = t305 * t310;
t77 = t311 * t778 - t687;
t695 = qJD(1) * t77;
t92 = t305 * t318 + t690;
t694 = qJD(1) * t92;
t93 = t318 * t778 - t687;
t693 = qJD(1) * t93;
t558 = t343 / 0.2e1 + t745;
t472 = (-t333 / 0.2e1 + t743) * t778 + t558 * t305;
t508 = pkin(5) * t746 + pkin(10) * t749;
t462 = t472 + t508;
t11 = t447 * t462;
t692 = t11 * qJD(1);
t689 = t778 * t410;
t686 = t409 * t305;
t685 = t374 * t451;
t684 = t411 * t758;
t683 = t413 * t466;
t681 = t440 * t423;
t59 = t400 * (t445 + t487);
t662 = t59 * qJD(1);
t60 = t400 * t487;
t661 = t60 * qJD(1);
t70 = t520 * t451;
t660 = t70 * qJD(1);
t453 = t684 / 0.2e1 + t683 / 0.2e1 + t466 * t736 + t758 * t735;
t550 = t758 * t704;
t551 = t466 * t703;
t473 = (-t551 / 0.2e1 - t550 / 0.2e1) * pkin(3);
t74 = t473 + t453;
t658 = t74 * qJD(1);
t331 = t344 * qJD(5);
t358 = t374 * qJD(3);
t653 = -t358 - t331;
t100 = -t466 * t776 - t758 * t775;
t652 = qJD(1) * t100;
t121 = t559 * t679;
t651 = qJD(1) * t121;
t649 = qJD(1) * t310;
t648 = qJD(1) * t452;
t647 = qJD(2) * t447;
t646 = qJD(2) * t450;
t645 = qJD(2) * t451;
t644 = qJD(2) * t452;
t643 = qJD(3) * t447;
t642 = qJD(3) * t451;
t641 = qJD(5) * t451;
t640 = qJD(6) * t447;
t444 = qJD(6) * t451;
t635 = t790 * qJD(1);
t140 = (t749 - t778 / 0.2e1) * t447;
t634 = t140 * qJD(1);
t561 = 0.2e1 * t749;
t141 = t561 * t447;
t633 = t141 * qJD(1);
t632 = t142 * qJD(1);
t560 = 0.2e1 * t799;
t144 = t560 * t447;
t130 = t144 * qJD(1);
t149 = t561 * t451;
t630 = t149 * qJD(1);
t629 = t795 * qJD(1);
t153 = t560 * t451;
t133 = t153 * qJD(1);
t628 = t154 * qJD(1);
t159 = t601 * t791;
t627 = t159 * qJD(1);
t624 = t169 * qJD(1);
t172 = t466 ^ 2 + t758 ^ 2;
t621 = t172 * qJD(1);
t500 = -t466 * t739 + t738 * t758;
t415 = t487 / 0.2e1;
t603 = t415 + t445 / 0.2e1;
t186 = t500 + t603;
t620 = t186 * qJD(1);
t591 = t703 / 0.2e1;
t592 = t704 / 0.2e1;
t475 = -t466 * t592 + t591 * t758;
t253 = (-t589 / 0.2e1 - t668 / 0.2e1 + t475) * pkin(3);
t619 = t253 * qJD(1);
t613 = t778 * qJD(5);
t357 = t423 ^ 2 - t497 ^ 2;
t612 = t357 * qJD(1);
t376 = -t423 * t445 + t440 * t497;
t609 = t376 * qJD(1);
t377 = t445 * t497 + t681;
t608 = t377 * qJD(1);
t387 = t536 + t425 / 0.2e1;
t607 = t387 * qJD(1);
t406 = t414 * qJD(5);
t436 = -t450 ^ 2 + t452 ^ 2;
t606 = t436 * qJD(1);
t600 = pkin(1) * t450 * qJD(1);
t599 = pkin(1) * t648;
t590 = t149 * qJD(5) + (t642 + t645) * t778;
t579 = t305 * t649;
t578 = t778 * t649;
t577 = t446 * t781;
t575 = t451 * t296;
t574 = qJD(6) * t305 * t778;
t171 = t778 * t834;
t572 = qJD(1) * t681;
t437 = t447 * t444;
t571 = t450 * t648;
t323 = t332 * t733;
t566 = t375 * t734;
t562 = t375 * t732;
t557 = -t399 / 0.2e1 - t429 / 0.2e1;
t556 = t412 / 0.2e1 + t741;
t555 = t737 + t743;
t554 = -t438 / 0.2e1 - t408 / 0.2e1;
t553 = t730 * qJD(2);
t552 = t730 * qJD(3);
t539 = t605 * t447;
t537 = t778 * t576;
t533 = t755 + t558;
t532 = t755 + t556;
t529 = -0.2e1 * t537;
t528 = 0.2e1 * t537;
t526 = -t375 / 0.2e1 + t741 + t745;
t525 = t742 + t555;
t522 = t305 * t537;
t518 = -t332 * t305 - t333 * t778;
t517 = -t686 - t689;
t471 = (t740 + t737) * t778 + t556 * t305;
t461 = t471 + t508;
t15 = t447 * t461;
t219 = t525 * t451;
t515 = qJD(1) * t15 - qJD(2) * t219;
t309 = t411 * t416 + t413 * t417;
t467 = (-t416 / 0.2e1 + t738) * t776 + (t739 - t735) * t775;
t474 = (t591 * t776 + t592 * t775) * pkin(3);
t39 = t474 + t467;
t514 = t39 * qJD(1) - t309 * qJD(2);
t513 = -qJD(2) * t343 - t833;
t512 = qJD(2) * t344 + t848;
t42 = t535 + t825;
t511 = -qJD(1) * t42 + qJD(2) * t374;
t50 = t534 + t805 / 0.2e1 + t836;
t510 = -qJD(1) * t50 + qJD(2) * t375;
t509 = t778 * (-qJD(6) - t834);
t507 = t726 / 0.2e1 + t725 / 0.2e1;
t506 = t580 / 0.2e1 + t413 / 0.2e1;
t9 = t843 - t841 / 0.2e1 + t459 * t451;
t503 = qJD(1) * t9 - t374 * t647;
t502 = -t689 / 0.2e1 - t686 / 0.2e1;
t501 = t305 * t744 + t745 * t778;
t499 = t410 * t799 + t741 * t778;
t14 = t451 * t462;
t496 = -qJD(1) * t14 - t344 * t647;
t486 = t112 / 0.2e1 + t501;
t19 = t447 * t486;
t495 = -qJD(1) * t19 - t332 * t645;
t21 = t451 * t486;
t494 = qJD(1) * t21 - t332 * t647;
t492 = t166 / 0.2e1 + t507;
t485 = t113 / 0.2e1 + t499;
t484 = qJD(1) * t497;
t483 = t497 * qJD(3);
t227 = t581 / 0.2e1 + (t736 + t506) * t448 + t557;
t482 = -qJD(2) * t227 - qJD(3) * t412 - t833;
t470 = -t582 / 0.2e1 - t516 / 0.2e1;
t229 = -t407 / 0.2e1 + (t417 / 0.2e1 + t554) * t448 + t470;
t481 = -qJD(2) * t229 + qJD(3) * t414 + t848;
t480 = t768 * t778;
t479 = t440 * t484;
t18 = t451 * t461;
t218 = t525 * t447;
t478 = -qJD(1) * t18 - qJD(2) * t218 - t414 * t643;
t213 = t526 * t447;
t25 = t451 * t485;
t477 = qJD(1) * t25 + qJD(2) * t213 - t409 * t643;
t214 = t526 * t451;
t23 = t447 * t485;
t476 = -qJD(1) * t23 + qJD(2) * t214 - t409 * t642;
t231 = t533 * t447;
t319 = t532 * t447;
t32 = t492 * t451;
t469 = qJD(1) * t32 + qJD(2) * t231 + qJD(3) * t319 + qJD(5) * t727;
t232 = t533 * t451;
t30 = t492 * t447;
t320 = t532 * t451;
t468 = pkin(5) * t641 - qJD(1) * t30 + qJD(2) * t232 + qJD(3) * t320;
t443 = pkin(5) * t732;
t442 = -t727 / 0.2e1;
t430 = t601 * qJD(6);
t405 = t412 * qJD(5);
t398 = t447 * t406;
t391 = t409 * t731;
t390 = t409 * t733;
t385 = t423 * t484;
t384 = t605 * t497;
t383 = t605 * t423;
t361 = 0.2e1 * t536 + t669;
t359 = t375 * qJD(3);
t349 = t447 * t358;
t330 = t343 * qJD(5);
t329 = t447 * t331;
t324 = t332 * t731;
t322 = t412 * t731 + t391 + t443;
t321 = t412 * t733 + t390 + t442;
t292 = t451 * t781;
t261 = t437 * t767;
t254 = pkin(3) * t475 + t415;
t234 = t343 * t731 + t324 + t443;
t233 = t343 * t733 + t323 + t442;
t230 = -t670 / 0.2e1 + t407 / 0.2e1 + t554 * t448 + t470;
t228 = -t581 / 0.2e1 - t671 / 0.2e1 + t506 * t448 + t557;
t222 = t529 - t766;
t221 = t528 + t766;
t220 = -t685 / 0.2e1 - t555 * t451;
t217 = t374 * t733 + t447 * t555;
t216 = t391 + t324 + t562;
t215 = t390 + t323 + t566;
t187 = -t500 + t603;
t147 = t798 + t570;
t146 = 0.2e1 * t798;
t145 = -t142 / 0.2e1 - t568;
t129 = t145 * qJD(6);
t128 = t144 * qJD(6);
t124 = t790 * qJD(4);
t122 = t137 * qJD(6);
t120 = t154 * t447;
t119 = t444 + t133;
t118 = -t130 - t640;
t117 = t437 + t651;
t116 = t437 - t651;
t101 = t829 * t777;
t75 = t473 - t453;
t64 = t305 * t542 + t446 * t746 + t756 * t799;
t62 = -t430 - t700;
t61 = -t430 + t700;
t56 = -qJD(5) * t121 + t171 * t446 - t122;
t43 = 0.2e1 * t817;
t41 = qJD(5) * t63 + t261 - 0.2e1 * t522;
t40 = t474 - t467;
t38 = -qJD(5) * t140 + qJD(6) * t153 - t832;
t37 = -t128 + t831;
t36 = qJD(5) * t120 - t122 - (t451 * t539 + t577) * t305;
t35 = qJD(5) * t146 + t539 * t778 + t849;
t34 = t129 + t590 - t831;
t33 = t166 * t731 - t451 * t507 - t706;
t31 = t166 * t734 + t447 * t507 - t705;
t29 = qJD(5) * t64 + t540 * t601 + t261 + 0.2e1 * t522;
t26 = t113 * t731 - t451 * t499 + t811;
t24 = t113 * t734 + t447 * t499 + t812;
t22 = t112 * t731 - t451 * t501 + t811;
t20 = t112 * t734 + t447 * t501 + t812;
t17 = t451 * t471 + t851;
t16 = t447 * t471 + t850;
t13 = t451 * t472 + t851;
t12 = t447 * t472 + t850;
t10 = t305 * t562 + t333 * t565 + t374 * t788 / 0.2e1 + t332 * t809 + t854 + t502 * t451;
t8 = t333 * t570 + t374 * t798 + t447 * t502 + t853 + (-t323 + t566) * t305;
t44 = [0, 0, 0, t450 * t644, t436 * qJD(2), 0, 0, 0, -pkin(1) * t646, -pkin(1) * t644 (qJD(2) * t497 + t483) * t423, t605 * t357, 0, 0, 0, t376 * qJD(2) + t440 * t483, qJD(2) * t377 + qJD(3) * t681, qJD(4) * t172, qJD(2) * t59 + qJD(3) * t60 + qJD(4) * t100, -t480, -t829 * t802, 0, 0, 0, qJD(2) * t76 + qJD(3) * t92 + t310 * t613, qJD(2) * t77 + qJD(3) * t93 - t310 * t615, -t437 * t791 - t446 * t480, 0.2e1 * t447 * t768 * t788 + t159 * qJD(6), -t447 * t574 + t821 * t829, -t451 * t574 - t822 * t829 (t541 + t613) * t305, qJD(2) * t1 + qJD(3) * t3 + qJD(4) * t68 + qJD(5) * t5 + qJD(6) * t28, qJD(2) * t2 + qJD(3) * t4 + qJD(4) * t70 + qJD(5) * t6 + qJD(6) * t27; 0, 0, 0, t571, t606, t644, -t646, 0, -pkin(7) * t644 - t600, pkin(7) * t646 - t599, t385, t612, t383, -t384, 0, qJD(2) * t762 + t361 * qJD(3) + t609, t608 + t761 (-t683 - t684) * qJD(2) + t75 * qJD(3), t662 + (t411 * t775 + t413 * t776) * qJD(2) + t40 * qJD(3) + t187 * qJD(4), -t171, -t815, -t768, t65, 0, -qJD(2) * t819 + qJD(3) * t43 + t696 + t847, -qJD(2) * t801 + qJD(3) * t852 + t695 + t846, t36, t29, t35, t34, t803, t721 + (t447 * t518 - t839) * qJD(2) + t8 * qJD(3) + t12 * qJD(5) + t22 * qJD(6), t720 + (t451 * t518 + t841) * qJD(2) + t10 * qJD(3) + t13 * qJD(5) + t20 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t385, t612, t383, -t384, 0, t361 * qJD(2) + qJD(3) * t762 + t479, t572 + t761, t75 * qJD(2) + (-t551 - t550) * t723, t661 + t40 * qJD(2) + (t703 * t776 + t704 * t775) * t723 + t254 * qJD(4), -t171, -t815, -t768, t65, 0, qJD(2) * t43 - qJD(3) * t819 + t694 + t847, qJD(2) * t852 - qJD(3) * t801 + t693 + t846, t36, t29, t35, t34, t803, t719 + t8 * qJD(2) + (t447 * t517 - t839) * qJD(3) + t16 * qJD(5) + t26 * qJD(6), t717 + t10 * qJD(2) + (t451 * t517 + t841) * qJD(3) + t17 * qJD(5) + t24 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t621, qJD(2) * t187 + qJD(3) * t254 + t652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t129 + t698, t147 * qJD(5) + t660 + t830; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t573, -t815, -t768, -t169 * t605 - t613, 0, -qJD(5) * t819 + t605 * t835 + t578, -qJD(5) * t801 + t605 * t852 - t579, -t122 + (-t447 * t641 - t577) * t305 + t605 * t120, t261 + t605 * t64 + (qJD(5) * t601 + t528) * t305, t146 * t605 + t447 * t613 + t849, t149 * t605 + t451 * t613 - t831, t803, t714 + t12 * qJD(2) + t16 * qJD(3) + (t447 * t531 - t839) * qJD(5) + t33 * qJD(6), t711 + t13 * qJD(2) + t17 * qJD(3) + t147 * qJD(4) + (t451 * t531 + t841) * qJD(5) + t31 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t759, t763 * t767 + t627, t447 * t509 + t816 * t829, t145 * t605 + t451 * t509, t101, qJD(2) * t22 + qJD(3) * t26 + qJD(4) * t145 + qJD(5) * t33 - qJD(6) * t58 + t701, qJD(2) * t20 + qJD(3) * t24 + qJD(4) * t816 + qJD(5) * t31 + qJD(6) * t57 + t702; 0, 0, 0, -t571, -t606, 0, 0, 0, t600, t599, -t385, -t612, 0, 0, 0, qJD(3) * t387 - t609, -t608, -qJD(3) * t74, -qJD(3) * t39 - qJD(4) * t186 - t662, t171, t815, 0, 0, 0, qJD(3) * t42 - t696 + t845, qJD(3) * t50 - t695 + t826, t56, t41, t38, t37, -t803, -qJD(3) * t7 + qJD(5) * t11 - qJD(6) * t21 - t575 - t721, -qJD(3) * t9 + qJD(5) * t14 + qJD(6) * t19 + t124 - t720; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t728, -pkin(2) * t552, 0, t309 * qJD(3), 0, 0, 0, 0, 0, t653, -t359 + t330, t437, -t430, 0, 0, 0, t332 * t640 + t451 * t653, t332 * t444 + t329 + t349; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t605 * t728 + t607 (-t553 - t552) * pkin(2), -t658 (t416 * t704 + t417 * t703) * t723 - t514, 0, 0, 0, 0, 0, qJD(5) * t230 - t358 - t511, qJD(5) * t228 - t359 - t510, t437, -t430, 0, 0, 0, qJD(5) * t220 + qJD(6) * t215 - t605 * t685 - t722, qJD(5) * t217 + qJD(6) * t216 + t349 - t503; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t620, 0, 0, 0, 0, 0, -t781, t834, 0, 0, 0, 0, 0, -t292, t635; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t230 - t331 - t512, qJD(3) * t228 + t330 - t513, t116, t61, -t634, 0, 0, t692 + t220 * qJD(3) + t233 * qJD(6) + (-qJD(2) - qJD(5)) * t451 * t344, qJD(3) * t217 + qJD(6) * t234 + t329 - t496; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t115, t222, t119, t118, -t782, qJD(3) * t215 + qJD(5) * t233 - t333 * t444 - t494, qJD(3) * t216 + qJD(5) * t234 + t333 * t640 - t495; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t385, -t612, 0, 0, 0, -t387 * qJD(2) - t479, -t572, qJD(2) * t74, qJD(2) * t39 + qJD(4) * t253 - t661, t171, t815, 0, 0, 0, -qJD(2) * t42 - t694 + t845, -qJD(2) * t50 - t693 + t826, t56, t41, t38, t37, -t803, qJD(2) * t7 + qJD(5) * t15 - qJD(6) * t25 - t575 - t719, qJD(2) * t9 + qJD(5) * t18 + qJD(6) * t23 + t124 - t717; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t728 - t607, pkin(2) * t553, t658, t514, 0, 0, 0, 0, 0, qJD(5) * t229 + t511, qJD(5) * t227 + t510, t437, -t430, 0, 0, 0, -qJD(5) * t219 - qJD(6) * t213 + t374 * t645 + t722, qJD(5) * t218 - qJD(6) * t214 + t503; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t406, t405, t437, -t430, 0, 0, 0, -t406 * t451 + t409 * t640, t409 * t444 + t398; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t619, 0, 0, 0, 0, 0, -t781, t834, 0, 0, 0, 0, 0, -t292, t635; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t406 - t481, t405 - t482, t116, t61, -t634, 0, 0, t414 * t451 * t604 + qJD(6) * t321 + t515, qJD(6) * t322 + t398 - t478; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t115, t222, t119, t118, -t782, qJD(5) * t321 - t410 * t444 - t477, qJD(5) * t322 + t410 * t640 - t476; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t621, qJD(2) * t186 - qJD(3) * t253 - t652, 0, 0, 0, 0, 0, -t65, -t768, 0, 0, 0, 0, 0, -t128 + t590 - t698, -t141 * qJD(5) + t154 * qJD(6) - t605 * t790 - t660; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t620, 0, 0, 0, 0, 0, t781, -t834, 0, 0, 0, 0, 0, t292, -t635; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t619, 0, 0, 0, 0, 0, t781, -t834, 0, 0, 0, 0, 0, t292, -t635; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t624, -t834, 0, 0, 0, 0, 0, t630, -t633; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t118, -t444 + t628; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t573, t815, 0, 0, 0, -qJD(4) * t169 + t605 * t838 - t578, -t605 * t820 + t299 + t579, t121 * t605 + t446 * t573 - t122, t305 * t529 - t605 * t63 + t261, qJD(6) * t795 + t140 * t605 - t832, -t142 * qJD(6) + t831, -t803, -qJD(2) * t11 - qJD(3) * t15 - qJD(4) * t149 - qJD(6) * t32 - t714, -qJD(2) * t14 - qJD(3) * t18 + qJD(4) * t141 + qJD(6) * t30 - t711; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t229 + t512, -qJD(3) * t227 + t513, t117, t62, t634, 0, 0, qJD(3) * t219 - qJD(6) * t231 + t344 * t645 - t692, -qJD(3) * t218 - qJD(6) * t232 + t496; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t481, t482, t117, t62, t634, 0, 0, -qJD(6) * t319 + t414 * t642 - t515, -qJD(6) * t320 + t478; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t624, t834, 0, 0, 0, 0, 0, -t630, t633; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t437, -t430, 0, 0, 0, -pkin(5) * t640, -pkin(5) * t444; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t115, t222, t444 + t629, -t632 - t640, -t782, -pkin(10) * t444 - t469, pkin(10) * t640 - t468; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t759, 0.2e1 * t763 * t778 - t627, -qJD(5) * t795 - t153 * t605 + t447 * t573, t142 * qJD(5) + t144 * t605 + t451 * t573, t101, qJD(2) * t21 + qJD(3) * t25 + qJD(4) * t144 + qJD(5) * t32 - t701, -qJD(2) * t19 - qJD(3) * t23 - qJD(4) * t154 - qJD(5) * t30 - t702; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t115, t221, -t133, t130, t782, qJD(3) * t213 + qJD(5) * t231 + t494, qJD(3) * t214 + qJD(5) * t232 + t495; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t115, t221, -t133, t130, t782, qJD(5) * t319 + t477, qJD(5) * t320 + t476; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t130, -t628; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t115, t221, -t629, t632, t782, t469, t468; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t44;
