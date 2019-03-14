% Calculate minimal parameter regressor of coriolis matrix for
% S6RRRPRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x35]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 18:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRRPRR3_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR3_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR3_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRR3_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 18:13:27
% EndTime: 2019-03-09 18:13:57
% DurationCPUTime: 17.82s
% Computational Cost: add. (11882->664), mult. (22720->824), div. (0->0), fcn. (25800->8), ass. (0->510)
t791 = -pkin(5) / 0.2e1;
t470 = cos(qJ(6));
t472 = cos(qJ(2));
t468 = sin(qJ(3));
t469 = sin(qJ(2));
t695 = t468 * t469;
t763 = cos(qJ(3));
t411 = t472 * t763 - t695;
t592 = t763 * t469;
t412 = t468 * t472 + t592;
t467 = sin(qJ(5));
t471 = cos(qJ(5));
t802 = t471 * t411 + t467 * t412;
t820 = t470 * t802;
t392 = t471 * t412;
t699 = t467 * t411;
t329 = -t392 + t699;
t821 = t470 * t329;
t835 = -t821 / 0.2e1;
t789 = -pkin(8) - pkin(7);
t430 = t789 * t472;
t657 = -t763 * t430 + t789 * t695;
t799 = -t411 * pkin(9) + t657;
t818 = t471 * t799;
t552 = -t468 * t430 - t789 * t592;
t275 = -t412 * pkin(9) + t552;
t823 = t467 * t275;
t138 = t818 + t823;
t466 = sin(qJ(6));
t852 = t466 * t138;
t854 = -t852 / 0.2e1;
t871 = pkin(10) * t835 + t791 * t820 + 0.2e1 * t854;
t769 = -t466 / 0.2e1;
t572 = t802 * t769;
t824 = t466 * t329;
t833 = -t824 / 0.2e1;
t851 = t470 * t138;
t855 = t851 / 0.2e1;
t870 = pkin(5) * t572 + pkin(10) * t833 + 0.2e1 * t855;
t866 = t852 / 0.2e1;
t869 = t854 + t866;
t867 = -t851 / 0.2e1;
t868 = t855 + t867;
t463 = qJD(2) + qJD(3);
t861 = qJD(5) - t463;
t819 = t471 * t275;
t822 = t467 * t799;
t828 = -t819 + t822;
t841 = t466 * t828;
t125 = t841 / 0.2e1;
t126 = -t841 / 0.2e1;
t848 = t125 + t126;
t839 = t470 * t828;
t127 = t839 / 0.2e1;
t128 = -t839 / 0.2e1;
t847 = t127 + t128;
t786 = t819 / 0.2e1;
t532 = t786 - t822 / 0.2e1;
t560 = -t819 / 0.2e1;
t838 = t822 / 0.2e1 + t560;
t845 = -t838 + t532;
t865 = qJD(5) * t845;
t812 = t823 / 0.2e1 + t818 / 0.2e1;
t856 = 0.2e1 * t812;
t864 = qJD(5) * t856;
t328 = t329 ^ 2;
t524 = t802 ^ 2 - t328;
t849 = t524 * t470;
t863 = t849 * qJD(1);
t850 = t524 * t466;
t862 = t850 * qJD(1);
t453 = -t472 * pkin(2) - pkin(1);
t718 = t412 * qJ(4);
t507 = -t453 + t718;
t790 = pkin(3) + pkin(4);
t222 = t411 * t790 + t507;
t535 = pkin(5) * t802 + pkin(10) * t329;
t477 = t222 + t535;
t41 = -t470 * t477 + t852;
t853 = t138 * t329;
t860 = -t41 * t329 + t466 * t853;
t42 = t466 * t477 + t851;
t859 = -t42 * t329 + t470 * t853;
t858 = 0.2e1 * t126;
t857 = 0.2e1 * t128;
t600 = t763 * pkin(2);
t452 = -t600 - pkin(3);
t530 = -pkin(4) + t452;
t493 = t467 * t530;
t757 = t468 * pkin(2);
t448 = qJ(4) + t757;
t681 = t471 * t448;
t370 = t493 + t681;
t365 = -pkin(10) + t370;
t593 = t763 * t467;
t694 = t468 * t471;
t402 = (t593 - t694) * pkin(2);
t846 = t365 + t402;
t836 = t820 / 0.2e1;
t837 = t836 - t820 / 0.2e1;
t844 = qJD(6) * t837;
t843 = t524 * qJD(1);
t164 = 0.2e1 * t836;
t563 = t821 / 0.2e1;
t427 = t471 * t530;
t697 = t467 * t448;
t369 = -t427 + t697;
t364 = pkin(5) + t369;
t721 = t364 * t466;
t352 = t721 / 0.2e1;
t591 = t763 * t471;
t696 = t467 * t468;
t403 = (t591 + t696) * pkin(2);
t570 = t403 * t769;
t830 = t352 + t570;
t613 = t329 * qJD(5);
t829 = -t463 * t329 + t613;
t760 = pkin(5) * t329;
t761 = t802 * pkin(10);
t174 = -t760 + t761;
t614 = t802 * qJD(5);
t806 = t463 * t802;
t815 = t806 - t614;
t465 = t470 ^ 2;
t793 = t466 ^ 2;
t551 = t793 / 0.2e1 - t465 / 0.2e1;
t155 = t551 * t329;
t624 = t155 * qJD(6);
t645 = qJD(1) * t329;
t817 = t802 * t645;
t827 = t465 * t817 - t624;
t780 = -t329 / 0.2e1;
t825 = t802 / 0.2e1;
t604 = qJD(3) - qJD(5);
t553 = qJD(2) + t604;
t706 = t466 * t470;
t803 = t553 * t706;
t103 = -t155 * qJD(1) + t803;
t322 = t699 / 0.2e1 - t392 / 0.2e1;
t814 = qJD(6) * t322;
t813 = t322 * qJD(1);
t801 = t465 - t793;
t171 = t801 * t328;
t810 = t171 * qJD(1) + 0.2e1 * t329 * t803;
t809 = t463 * t552;
t808 = t402 / 0.2e1;
t807 = t801 * t553;
t800 = t467 * t780 - t471 * t802;
t797 = t657 * qJD(4);
t584 = qJD(1) * t706;
t796 = -t155 * t553 - t328 * t584;
t795 = t463 * t657;
t410 = t412 ^ 2;
t792 = pkin(3) / 0.2e1;
t788 = -qJ(4) / 0.2e1;
t787 = qJ(4) / 0.2e1;
t784 = t329 / 0.2e1;
t782 = -t802 / 0.2e1;
t779 = -t364 / 0.2e1;
t778 = t365 / 0.2e1;
t777 = t369 / 0.2e1;
t776 = t370 / 0.2e1;
t454 = t471 * t790;
t705 = t467 * qJ(4);
t421 = t454 + t705;
t417 = pkin(5) + t421;
t775 = -t417 / 0.2e1;
t594 = t467 * t790;
t686 = t471 * qJ(4);
t422 = -t594 + t686;
t418 = -pkin(10) + t422;
t774 = -t418 / 0.2e1;
t773 = t421 / 0.2e1;
t772 = t422 / 0.2e1;
t771 = -t448 / 0.2e1;
t770 = t452 / 0.2e1;
t768 = t466 / 0.2e1;
t767 = t468 / 0.2e1;
t766 = -t470 / 0.2e1;
t765 = t470 / 0.2e1;
t762 = pkin(2) * t469;
t759 = t411 * pkin(3);
t756 = pkin(2) * qJD(3);
t338 = t412 * pkin(3) - t411 * qJ(4);
t248 = -pkin(4) * t412 - t338;
t94 = t248 - t174;
t93 = t94 - t762;
t1 = t820 * t93 + t860;
t755 = t1 * qJD(1);
t708 = t466 * t802;
t2 = -t708 * t93 + t859;
t754 = t2 * qJD(1);
t3 = t820 * t94 + t860;
t753 = t3 * qJD(1);
t4 = -t708 * t94 + t859;
t752 = t4 * qJD(1);
t5 = t174 * t820 - (-t41 + t852) * t329;
t749 = t5 * qJD(1);
t473 = t403 * t825 + (t417 / 0.2e1 + t779) * t802 + (t808 + t774 + t778) * t329;
t9 = t470 * t473 + t869;
t748 = t9 * qJD(1);
t28 = t41 * t802 + t824 * t828;
t747 = qJD(1) * t28;
t29 = -t42 * t802 - t821 * t828;
t746 = qJD(1) * t29;
t231 = t248 - t762;
t727 = t222 * t329;
t63 = t231 * t802 + t727;
t745 = qJD(1) * t63;
t726 = t222 * t802;
t64 = -t231 * t329 + t726;
t744 = qJD(1) * t64;
t69 = t248 * t802 + t727;
t743 = qJD(1) * t69;
t70 = -t248 * t329 + t726;
t742 = qJD(1) * t70;
t556 = t825 + t782;
t557 = t784 + t780;
t482 = -t467 * t557 + t471 * t556;
t73 = t482 * t466;
t741 = qJD(1) * t73;
t75 = t482 * t470;
t740 = qJD(1) * t75;
t79 = t801 * t556;
t739 = qJD(1) * t79;
t481 = -(-t365 / 0.2e1 + t776) * t329 + (t777 + t779) * t802;
t506 = pkin(5) * t825 + pkin(10) * t784;
t475 = t481 + t506;
t11 = t466 * t475;
t738 = t11 * qJD(1);
t14 = t470 * t475;
t730 = t14 * qJD(1);
t499 = -t329 * t779 + t778 * t802;
t490 = t93 / 0.2e1 + t499;
t19 = t490 * t466 + t847;
t729 = t19 * qJD(1);
t21 = -t490 * t470 + t848;
t728 = t21 * qJD(1);
t320 = -t507 - t759;
t725 = t320 * t411;
t724 = t320 * t412;
t723 = t329 * t418;
t722 = t802 * t417;
t720 = t364 * t470;
t719 = t370 * t466;
t717 = t417 * t466;
t716 = t417 * t470;
t715 = t422 * t466;
t714 = t448 * t412;
t713 = t452 * t411;
t53 = t532 + t838;
t679 = t53 * qJD(1);
t326 = t338 + t762;
t61 = t320 * t326;
t678 = t61 * qJD(1);
t62 = t320 * t338;
t677 = t62 * qJD(1);
t536 = t771 + t757 / 0.2e1;
t97 = (t787 + t536) * t412 + (t600 / 0.2e1 + t770 + t792) * t411;
t672 = t97 * qJD(1);
t388 = t402 * qJD(3);
t459 = t467 * qJD(4);
t443 = t470 * t459;
t660 = t470 * t388 + t443;
t659 = t388 + t459;
t460 = t471 * qJD(4);
t658 = t403 * qJD(3) + t460;
t638 = qJD(3) * t466;
t641 = qJD(2) * t466;
t656 = (t638 + t641) * t467;
t637 = qJD(3) * t470;
t640 = qJD(2) * t470;
t655 = (t637 + t640) * t467;
t109 = -t326 * t411 + t724;
t654 = qJD(1) * t109;
t110 = -t326 * t412 - t725;
t653 = qJD(1) * t110;
t129 = -t338 * t411 + t724;
t652 = qJD(1) * t129;
t130 = -t338 * t412 - t725;
t651 = qJD(1) * t130;
t262 = t467 * t835;
t144 = t467 * t563 + t262;
t650 = qJD(1) * t144;
t146 = t556 * t706;
t649 = qJD(1) * t146;
t309 = -t411 * t762 + t412 * t453;
t648 = qJD(1) * t309;
t310 = t411 * t453 + t412 * t762;
t647 = qJD(1) * t310;
t646 = qJD(1) * t802;
t644 = qJD(1) * t412;
t643 = qJD(1) * t453;
t642 = qJD(1) * t472;
t639 = qJD(3) * t453;
t636 = qJD(4) * t412;
t635 = qJD(5) * t370;
t634 = qJD(5) * t466;
t633 = qJD(5) * t467;
t632 = qJD(5) * t470;
t631 = qJD(6) * t466;
t630 = qJD(6) * t470;
t629 = qJD(6) * t471;
t494 = t467 * t825 + t471 * t780;
t486 = t412 / 0.2e1 + t494;
t105 = t486 * t466;
t627 = t105 * qJD(1);
t108 = t486 * t470;
t626 = t108 * qJD(1);
t156 = t557 * t466;
t623 = t156 * qJD(1);
t555 = 0.2e1 * t825;
t157 = t555 * t466;
t150 = t157 * qJD(1);
t293 = -t708 / 0.2e1;
t159 = 0.2e1 * t293;
t622 = t159 * qJD(1);
t162 = t557 * t470;
t621 = t162 * qJD(1);
t620 = t164 * qJD(1);
t166 = t555 * t470;
t153 = t166 * qJD(1);
t257 = t411 ^ 2 - t410;
t618 = t257 * qJD(1);
t611 = t410 * qJD(1);
t400 = t411 * qJD(4);
t610 = t801 * qJD(6);
t438 = -t469 ^ 2 + t472 ^ 2;
t609 = t438 * qJD(1);
t608 = t469 * qJD(2);
t607 = t472 * qJD(2);
t458 = qJD(3) * t600;
t606 = t458 + qJD(4);
t605 = qJD(2) - qJD(5);
t601 = t763 / 0.2e1;
t599 = pkin(1) * t469 * qJD(1);
t598 = pkin(1) * t642;
t597 = t468 * t756;
t596 = t777 + t791;
t595 = t773 + t791;
t590 = t222 * t646;
t589 = t222 * t645;
t588 = t320 * t644;
t587 = t465 * t645;
t586 = t411 * t643;
t585 = t412 * t643;
t583 = t802 * t636;
t582 = qJD(6) * t802 * t329;
t580 = t802 * t644;
t579 = t329 * t644;
t349 = t411 * t644;
t442 = t466 * t630;
t578 = t469 * t642;
t573 = t708 / 0.2e1;
t568 = t694 / 0.2e1;
t561 = t403 * t766;
t554 = -t427 / 0.2e1 + t454 / 0.2e1;
t549 = t463 * t466;
t548 = t463 * t470;
t336 = t463 * t411;
t425 = t463 * t467;
t426 = t463 * t471;
t545 = t605 * t370;
t544 = t604 * t422;
t543 = t329 * t442;
t542 = t466 * t580;
t540 = t329 * t584;
t539 = t470 * t580;
t538 = -t591 / 0.2e1;
t534 = 0.2e1 * t540;
t533 = -0.2e1 * t540;
t531 = t808 + t772 + t776;
t529 = t553 * t471;
t528 = t802 * t540;
t6 = -t174 * t708 - (-t42 + t851) * t329;
t525 = t6 * qJD(1) + t144 * qJD(4);
t523 = -t329 * t365 + t364 * t802;
t522 = t722 - t723;
t480 = -(t774 + t772) * t329 + (t773 + t775) * t802;
t474 = t480 + t506;
t15 = t466 * t474 + t868;
t181 = t531 * t470;
t521 = t15 * qJD(1) + t181 * qJD(2);
t384 = t717 / 0.2e1;
t176 = t384 + t830;
t498 = -t329 * t775 + t418 * t825;
t489 = t94 / 0.2e1 + t498;
t26 = -t489 * t470 + t848;
t520 = -t26 * qJD(1) + t176 * qJD(2);
t354 = t720 / 0.2e1;
t386 = t716 / 0.2e1;
t177 = t561 + t386 + t354;
t24 = t489 * t466 + t847;
t519 = -t24 * qJD(1) + t177 * qJD(2);
t18 = t470 * t474 + t869;
t180 = t531 * t466;
t518 = t18 * qJD(1) - t180 * qJD(2);
t223 = t594 + (t788 + t771) * t471 + pkin(2) * t568;
t517 = t223 * qJD(2);
t224 = pkin(2) * t538 + (t787 - t536) * t467 + t554;
t51 = t560 + t786;
t516 = t51 * qJD(1) - t224 * qJD(2);
t366 = (t448 * t763 + t452 * t468) * pkin(2);
t476 = (t552 * t767 + t601 * t657) * pkin(2) + t552 * t771 + t657 * t770;
t502 = -t552 * t788 + t657 * t792;
t46 = t476 + t502;
t515 = t46 * qJD(1) + t366 * qJD(2);
t514 = qJD(2) * t402;
t513 = qJD(2) * t403;
t512 = t329 * (-qJD(6) - t646);
t509 = qJD(2) * t364 - t460;
t508 = qJD(3) * t417 - t460;
t505 = t761 / 0.2e1 - t760 / 0.2e1;
t7 = t466 * t473 + t868;
t501 = qJD(1) * t7 - t402 * t640;
t500 = -t723 / 0.2e1 + t722 / 0.2e1;
t100 = t329 * t646 + t814;
t492 = -t817 - t814;
t491 = t174 / 0.2e1 + t505;
t485 = t815 * t329;
t484 = t466 * t633 - t470 * t629 - t656;
t483 = -t466 * t629 - t467 * t632 + t655;
t353 = -t721 / 0.2e1;
t200 = t466 * t596 + t353;
t385 = -t717 / 0.2e1;
t305 = t466 * t595 + t385;
t34 = -t470 * t491 + t848;
t479 = pkin(5) * t634 - qJD(1) * t34 + qJD(2) * t200 + qJD(3) * t305;
t355 = -t720 / 0.2e1;
t201 = t470 * t596 + t355;
t387 = -t716 / 0.2e1;
t306 = t470 * t595 + t387;
t32 = t466 * t491 + t847;
t478 = pkin(5) * t632 - qJD(1) * t32 + qJD(2) * t201 + qJD(3) * t306;
t464 = qJ(4) * qJD(4);
t457 = qJD(2) * t600;
t456 = pkin(5) * t765;
t455 = pkin(5) * t768;
t439 = t466 * t459;
t436 = t463 * qJ(4);
t435 = t448 * qJD(4);
t399 = -qJD(5) * t471 + t426;
t398 = t425 - t633;
t337 = t463 * t412;
t319 = qJD(2) * t757;
t308 = t421 * t765 + t386 + t456;
t307 = t421 * t768 + t384 + t455;
t256 = 0.2e1 * t543;
t255 = -0.2e1 * t543;
t254 = t463 * t757;
t226 = t686 / 0.2e1 - t594 / 0.2e1 + t681 / 0.2e1 + t493 / 0.2e1 + (-t593 / 0.2e1 + t568) * pkin(2);
t225 = -t705 / 0.2e1 - t697 / 0.2e1 + (t538 - t696 / 0.2e1) * pkin(2) - t554;
t203 = t369 * t765 + t354 + t456;
t202 = t369 * t768 + t352 + t455;
t183 = t402 * t766 + (t370 + t422) * t765;
t182 = -t715 / 0.2e1 - t719 / 0.2e1 + t402 * t768;
t179 = t387 + t355 + t561;
t178 = t385 + t353 + t570;
t173 = t534 - t807;
t172 = t533 + t807;
t167 = 0.2e1 * t563;
t160 = t293 + t573;
t158 = t573 + t572;
t145 = t466 * t164;
t142 = t144 * qJD(5);
t140 = -t153 - t630;
t139 = t150 + t631;
t132 = -t442 - t649;
t131 = -t442 + t649;
t107 = t412 * t765 - t470 * t494;
t106 = t412 * t769 + t466 * t494;
t96 = -t714 / 0.2e1 + t713 / 0.2e1 - t718 / 0.2e1 - t759 / 0.2e1 + (t411 * t601 + t412 * t767) * pkin(2);
t95 = t861 * t322;
t80 = t465 * t825 - t551 * t802 + t782 * t793;
t76 = t470 * t800 + t262;
t74 = t466 * t800 + t467 * t833;
t72 = -t610 - t739;
t71 = -t610 + t739;
t68 = t75 * qJD(4);
t67 = t76 * qJD(4);
t66 = t74 * qJD(4);
t65 = t73 * qJD(4);
t60 = -t656 - t740;
t59 = t655 - t741;
t55 = 0.2e1 * t838;
t47 = -0.2e1 * t812;
t45 = t476 - t502;
t44 = -t484 + t740;
t43 = -t483 + t741;
t40 = qJD(5) * t146 + t827;
t39 = qJD(5) * t79 + t255 - 0.2e1 * t528;
t38 = -qJD(5) * t156 - qJD(6) * t166 - t863;
t37 = -qJD(5) * t162 + qJD(6) * t157 + t862;
t36 = t145 * qJD(5) - t624 + (-t466 * t548 - t587) * t802;
t35 = t174 * t765 - t470 * t505 + 0.2e1 * t125;
t33 = t174 * t769 + t466 * t505 + 0.2e1 * t127;
t31 = qJD(5) * t824 - t329 * t549 + t844 + t863;
t30 = t167 * qJD(5) + t158 * qJD(6) - t329 * t548 - t862;
t27 = -t498 * t470 + t94 * t765 + t858;
t25 = t498 * t466 + t94 * t769 + t857;
t23 = t80 * qJD(5) - t801 * t806 + t255 + 0.2e1 * t528;
t22 = -t499 * t470 + t93 * t765 + t858;
t20 = t499 * t466 + t93 * t769 + t857;
t17 = t470 * t480 + t871;
t16 = t466 * t480 + t870;
t13 = t481 * t470 + t871;
t12 = t481 * t466 + t870;
t10 = t364 * t836 + t470 * t500 + t561 * t802 + t835 * t846 + 0.2e1 * t866;
t8 = t466 * t500 + t802 * t830 + t833 * t846 + 0.2e1 * t867;
t48 = [0, 0, 0, t469 * t607, t438 * qJD(2), 0, 0, 0, -pkin(1) * t608, -pkin(1) * t607, t412 * t336, t463 * t257, 0, 0, 0, qJD(2) * t309 + t412 * t639, qJD(2) * t310 + t411 * t639, qJD(2) * t109 + qJD(3) * t129 + t400 * t412, 0, qJD(2) * t110 + qJD(3) * t130 + qJD(4) * t410, qJD(2) * t61 + qJD(3) * t62 - t320 * t636, -t485, t861 * t524, 0, 0, 0, qJD(2) * t63 + qJD(3) * t69 - t222 * t613 + t583, qJD(2) * t64 + qJD(3) * t70 - t222 * t614 - t329 * t636, -t328 * t442 - t465 * t485, 0.2e1 * t466 * t815 * t821 - t171 * qJD(6), t466 * t582 - t849 * t861, t470 * t582 + t850 * t861, -t829 * t802, qJD(2) * t1 + qJD(3) * t3 + qJD(5) * t5 + qJD(6) * t29 + t470 * t583, qJD(2) * t2 + qJD(3) * t4 + qJD(5) * t6 + qJD(6) * t28 - t466 * t583; 0, 0, 0, t578, t609, t607, -t608, 0, -pkin(7) * t607 - t599, pkin(7) * t608 - t598, t349, t618, t336, -t337, 0, t648 - t795, t809 + t647, t654 - t795 (t713 - t714) * qJD(2) + t96 * qJD(3) + t400, -t809 + t653, t678 + (-t448 * t552 + t452 * t657) * qJD(2) + t45 * qJD(3) + t797, -t817, -t843, -t815, -t829, 0, -qJD(2) * t138 + qJD(3) * t47 + t745 + t864, qJD(2) * t828 + qJD(3) * t55 + t744 + t865, t36, t23, t31, t30, t100, t755 + (t466 * t523 - t851) * qJD(2) + t8 * qJD(3) + t66 + t12 * qJD(5) + t22 * qJD(6), t754 + (t470 * t523 + t852) * qJD(2) + t10 * qJD(3) + t67 + t13 * qJD(5) + t20 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t349, t618, t336, -t337, 0, t585 - t795, t809 + t586, t652 - t795, t96 * qJD(2) + (-t718 - t759) * qJD(3) + t400, -t809 + t651, t677 + t45 * qJD(2) + (-pkin(3) * t657 - qJ(4) * t552) * qJD(3) + t797, -t817, -t843, -t815, -t829, 0, qJD(2) * t47 - qJD(3) * t138 + t743 + t864, qJD(2) * t55 + qJD(3) * t828 + t742 + t865, t36, t23, t31, t30, t100, t753 + t8 * qJD(2) + (t466 * t522 - t851) * qJD(3) + t66 + t16 * qJD(5) + t27 * qJD(6), t752 + t10 * qJD(2) + (t470 * t522 + t852) * qJD(3) + t67 + t17 * qJD(5) + t25 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t349, t336, t611, -t588 + t795, 0, 0, 0, 0, 0, t580, -t579, 0, 0, 0, 0, 0, t107 * qJD(6) + t463 * t74 + t539, t106 * qJD(6) + t463 * t76 + t142 - t542; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t817, t843, t815, t829, 0, -qJD(5) * t138 + t463 * t856 - t589, qJD(5) * t828 + t463 * t845 - t590, t624 + (-t466 * t632 + t587) * t802 + t463 * t145, t256 + t463 * t80 + (-qJD(5) * t801 + t533) * t802, t463 * t824 - t466 * t613 + t844 - t863, t160 * qJD(6) + t167 * t463 - t470 * t613 + t862, t492, t749 + t12 * qJD(2) + t16 * qJD(3) + (t466 * t535 - t851) * qJD(5) + t35 * qJD(6), t13 * qJD(2) + t17 * qJD(3) + (t470 * t535 + t852) * qJD(5) + t33 * qJD(6) + t525; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t796, -t810, -t466 * t512 + (qJD(5) + t463) * t837, t160 * qJD(5) + t158 * t463 - t470 * t512, -t95, qJD(2) * t22 + qJD(3) * t27 + qJD(4) * t107 + qJD(5) * t35 - qJD(6) * t42 + t746, qJD(2) * t20 + qJD(3) * t25 + qJD(4) * t106 + qJD(5) * t33 + qJD(6) * t41 + t747; 0, 0, 0, -t578, -t609, 0, 0, 0, t599, t598, -t349, -t618, 0, 0, 0, -t648, -t647, -t654, qJD(3) * t97, -t653, qJD(3) * t46 - t678, t817, t843, 0, 0, 0, -t745, qJD(5) * t53 - t744, t40, t39, t38, t37, -t100, -qJD(3) * t7 + qJD(5) * t11 + qJD(6) * t21 - t65 - t755, -qJD(3) * t9 + qJD(5) * t14 + qJD(6) * t19 - t68 - t754; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t597, -t458, -t597, 0, t606, qJD(3) * t366 + t435, 0, 0, 0, 0, 0, t635 + t659, -qJD(5) * t369 + t658, t442, t610, 0, 0, 0, -t364 * t631 + t370 * t632 + t660, -t364 * t630 - t439 + (-t388 - t635) * t466; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t254, -t458 - t457, -t254, t672, t606 + t457 (-pkin(3) * t468 + qJ(4) * t763) * t756 + t435 + t515, 0, 0, 0, 0, 0, qJD(5) * t226 + t514 + t659, qJD(5) * t225 + t513 + t658, t442, t610, 0, 0, 0, qJD(5) * t183 + qJD(6) * t178 - t501 + t660, t182 * qJD(5) + t179 * qJD(6) - t402 * t549 - t439 - t748; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t463, t448 * t463, 0, 0, 0, 0, 0, t425, t426, 0, 0, 0, 0, 0, t59, t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t226 * qJD(3) + t545, t225 * qJD(3) - t369 * t605 + t679, t131, t71, -t623, -t621, 0, t183 * qJD(3) + t202 * qJD(6) + t470 * t545 + t738, t182 * qJD(3) + t203 * qJD(6) - t605 * t719 + t730; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103, t172, t140, t139, -t813, qJD(3) * t178 + qJD(5) * t202 - t364 * t641 - t365 * t630 + t728, qJD(3) * t179 + qJD(5) * t203 - t364 * t640 + t365 * t631 + t729; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t349, -t618, 0, 0, 0, -t585, -t586, -t652, -qJD(2) * t97, -t651, -qJD(2) * t46 - t677, t817, t843, 0, 0, 0, -t743, qJD(5) * t51 - t742, t40, t39, t38, t37, -t100, qJD(2) * t7 + qJD(5) * t15 + qJD(6) * t26 - t65 - t753, qJD(2) * t9 + qJD(5) * t18 + qJD(6) * t24 - t68 - t752; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t319, t457, t319, -t672, qJD(4) - t457, t464 - t515, 0, 0, 0, 0, 0, -qJD(5) * t223 + t459 - t514, -qJD(5) * t224 + t460 - t513, t442, t610, 0, 0, 0, qJD(5) * t181 - qJD(6) * t176 + t443 + t501, -qJD(5) * t180 - qJD(6) * t177 + t402 * t641 - t439 + t748; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t464, 0, 0, 0, 0, 0, qJD(5) * t422 + t459, -qJD(5) * t421 + t460, t442, t610, 0, 0, 0, -t417 * t631 + t422 * t632 + t443, -t417 * t630 - t422 * t634 - t439; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t463, t436, 0, 0, 0, 0, 0, t425, t426, 0, 0, 0, 0, 0, t59, t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t544 - t517, -t421 * t604 + t516, t131, t71, -t623, -t621, 0, t307 * qJD(6) + t470 * t544 + t521, t308 * qJD(6) - t604 * t715 + t518; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103, t172, t140, t139, -t813, qJD(5) * t307 - t417 * t638 - t418 * t630 - t520, qJD(5) * t308 - t417 * t637 + t418 * t631 - t519; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t349, 0, -t611, t588, 0, 0, 0, 0, 0, -t580, t579, 0, 0, 0, 0, 0, -t108 * qJD(6) + t463 * t73 - t539, t105 * qJD(6) + t463 * t75 + t142 + t542; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t463, -qJ(4) * qJD(3) - qJD(2) * t448, 0, 0, 0, 0, 0, -t398, -t399, 0, 0, 0, 0, 0, t43, t44; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t463, -t436, 0, 0, 0, 0, 0, -t398, -t399, 0, 0, 0, 0, 0, t43, t44; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t398, t399, 0, 0, 0, 0, 0, t483, t484 + t650; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t466 * t529 - t467 * t630 - t626, t467 * t631 + t470 * t529 + t627; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t817, -t843, 0, 0, 0, t589, -qJD(2) * t53 - qJD(3) * t51 + t590, -t146 * t463 - t827, -t463 * t79 + t534 * t802 + t256, qJD(6) * t164 + t156 * t463 + t863, qJD(6) * t159 + t162 * t463 - t862, -t492, -qJD(2) * t11 - qJD(3) * t15 + qJD(6) * t34 - t749, -qJD(2) * t14 - qJD(3) * t18 + qJD(6) * t32 - t525; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2) * t370 + qJD(3) * t223 - t459, qJD(2) * t369 + qJD(3) * t224 - t460 - t679, t132, t72, t623, t621, 0, -qJD(3) * t181 - qJD(6) * t200 - t370 * t640 - t443 - t738, qJD(3) * t180 - qJD(6) * t201 + t370 * t641 + t439 - t730; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t422 - t459 + t517, qJD(3) * t421 - t460 - t516, t132, t72, t623, t621, 0, -qJD(6) * t305 - t422 * t637 - t443 - t521, -qJD(6) * t306 + t422 * t638 + t439 - t518; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t425, -t426, 0, 0, 0, 0, 0, -t655, -t650 + t656; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t442, t610, 0, 0, 0, -pkin(5) * t631, -pkin(5) * t630; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t103, t173, t620 + t630, t622 - t631, t813, -pkin(10) * t630 - t479, pkin(10) * t631 - t478; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t796, t810, -t164 * qJD(5) + t166 * t463 - t466 * t817, -t159 * qJD(5) - t157 * t463 - t470 * t817, -t95, -qJD(2) * t21 - qJD(3) * t26 + qJD(4) * t108 - qJD(5) * t34 - t746, -qJD(2) * t19 - qJD(3) * t24 - qJD(4) * t105 - qJD(5) * t32 - t747; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t103, t173, t153, -t150, t813, t176 * qJD(3) + t200 * qJD(5) + t466 * t509 - t728, t177 * qJD(3) + t201 * qJD(5) + t470 * t509 - t729; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t103, t173, t153, -t150, t813, t305 * qJD(5) + t466 * t508 + t520, t306 * qJD(5) + t470 * t508 + t519; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t471 * t549 + t626, -t471 * t548 - t627; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t103, t172, -t620, -t622, -t813, t479, t478; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t48;