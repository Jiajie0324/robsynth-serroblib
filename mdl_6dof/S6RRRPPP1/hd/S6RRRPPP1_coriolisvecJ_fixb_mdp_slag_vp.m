% Calculate minimal parameter regressor of Coriolis joint torque vector for
% S6RRRPPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha4,d1,d2,d3,theta4]';
% MDP [29x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRRPPP1_convert_par2_MPV_fixb.m
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 15:20
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RRRPPP1_coriolisvecJ_fixb_mdp_slag_vp(qJ, qJD, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(29,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPP1_coriolisvecJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPP1_coriolisvecJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPP1_coriolisvecJ_fixb_mdp_slag_vp: pkin has to be [10x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [29 1]), ...
  'S6RRRPPP1_coriolisvecJ_fixb_mdp_slag_vp: MDP has to be [29x1] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 15:18:48
% EndTime: 2019-03-09 15:19:07
% DurationCPUTime: 11.98s
% Computational Cost: add. (11890->672), mult. (31747->884), div. (0->0), fcn. (22411->8), ass. (0->282)
t669 = sin(qJ(2));
t671 = cos(qJ(2));
t667 = cos(pkin(6));
t670 = cos(qJ(3));
t802 = t667 * t670;
t752 = qJ(4) * t802;
t688 = pkin(3) * t669 - t671 * t752;
t719 = pkin(2) * t669 - pkin(9) * t671;
t633 = t719 * qJD(1);
t668 = sin(qJ(3));
t757 = t669 * qJD(1);
t747 = t668 * t757;
t773 = pkin(8) * t747 + t670 * t633;
t541 = qJD(1) * t688 + t773;
t822 = qJ(4) * t667;
t733 = pkin(9) + t822;
t713 = qJD(3) * t733;
t761 = qJD(4) * t668;
t743 = t667 * t761;
t583 = -t670 * t713 - t743;
t852 = t541 - t583;
t661 = t671 * qJD(1);
t660 = pkin(8) * t661;
t665 = sin(pkin(6));
t808 = t665 * t670;
t701 = pkin(3) * t668 - qJ(4) * t808;
t577 = t661 * t701 + t660;
t581 = qJD(3) * t701 - t665 * t761;
t851 = t577 - t581;
t611 = t668 * t633;
t760 = qJD(4) * t670;
t742 = t667 * t760;
t800 = t669 * t670;
t797 = t671 * t667;
t809 = t665 * t669;
t849 = -t668 * t797 + t809;
t850 = -t668 * t713 + t742 - t611 - (-pkin(8) * t800 + qJ(4) * t849) * qJD(1);
t666 = cos(pkin(10));
t765 = qJD(3) * t670;
t766 = qJD(3) * t668;
t664 = sin(pkin(10));
t811 = t664 * t667;
t798 = t670 * t671;
t834 = t664 * t849 + t666 * t798;
t779 = t834 * qJD(1) - t666 * t765 + t766 * t811;
t768 = qJD(2) * t670;
t627 = t747 - t768;
t831 = t661 - qJD(3);
t848 = t627 * t831;
t770 = qJD(2) * t668;
t629 = t670 * t757 + t770;
t847 = t629 * t831;
t728 = t831 * t665;
t816 = t627 * t667;
t689 = t728 + t816;
t846 = t664 * t689;
t812 = t664 * t665;
t783 = -t850 * t666 + t811 * t852 + t851 * t812;
t782 = t665 * t852 - t851 * t667;
t804 = t666 * t668;
t699 = t664 * t670 + t667 * t804;
t835 = -t666 * t809 + t699 * t671;
t780 = t835 * qJD(1) - t699 * qJD(3);
t845 = t666 * (t541 * t667 + t577 * t665) + t850 * t664;
t830 = -MDP(23) + MDP(28);
t844 = MDP(18) + t830;
t753 = MDP(22) + MDP(26);
t843 = MDP(19) - MDP(24) - MDP(27);
t755 = qJD(1) * qJD(2);
t842 = -0.2e1 * t755;
t841 = MDP(4) * t669;
t662 = t669 ^ 2;
t840 = MDP(5) * (-t671 ^ 2 + t662);
t745 = t669 * t765;
t754 = qJD(2) * qJD(3);
t767 = qJD(2) * t671;
t580 = qJD(1) * (t668 * t767 + t745) + t668 * t754;
t739 = t669 * t755;
t720 = t665 * t739;
t684 = -t580 * t667 + t720;
t839 = t664 * t684;
t700 = qJ(4) * t665 * t668 + pkin(3) * t670;
t621 = -pkin(2) - t700;
t630 = t733 * t668;
t838 = t666 * (t621 * t665 - t630 * t667);
t642 = -pkin(2) * t671 - pkin(9) * t669 - pkin(1);
t615 = t642 * qJD(1);
t645 = qJD(2) * pkin(9) + t660;
t558 = t668 * t615 + t670 * t645;
t531 = qJ(4) * t816 - t558;
t817 = t627 * t665;
t555 = pkin(3) * t629 + qJ(4) * t817;
t837 = t666 * (t531 * t667 + t555 * t665);
t557 = t670 * t615 - t668 * t645;
t530 = -t629 * t822 + t557;
t466 = t666 * t530 + t531 * t811 + t555 * t812;
t762 = qJD(4) * t666;
t814 = t629 * t665;
t788 = qJ(5) * t814 - qJD(5) * t667 - t665 * t762 + t466;
t805 = t666 * t667;
t836 = t583 * t805 - t845;
t605 = t664 * t802 + t804;
t833 = -qJ(5) * t779 + qJD(5) * t605 - t782;
t801 = t668 * t669;
t807 = t665 * t671;
t698 = t667 * t801 + t807;
t832 = t665 ^ 2 + t667 ^ 2;
t634 = t719 * qJD(2);
t616 = qJD(1) * t634;
t702 = -t615 * t765 - t668 * t616 + t645 * t766;
t723 = pkin(8) * t739;
t674 = t670 * t723 + t702;
t470 = qJ(4) * t684 - qJD(4) * t689 - t674;
t467 = t664 * t470;
t738 = t671 * t755;
t746 = t669 * t766;
t579 = -qJD(1) * t746 + (t738 + t754) * t670;
t703 = -qJ(4) * t579 - qJD(4) * t629;
t778 = t670 * t616 + t668 * t723;
t829 = t558 * qJD(3) - t778;
t478 = pkin(3) * t739 + t667 * t703 - t829;
t498 = pkin(3) * t580 + pkin(8) * t738 + t665 * t703;
t712 = t478 * t667 + t498 * t665;
t432 = t712 * t666 - t467;
t763 = qJD(4) * t665;
t776 = t668 * t634 + t642 * t765;
t486 = (-t763 + (-pkin(8) * qJD(3) - qJD(2) * t822) * t668) * t671 + (-pkin(8) * t768 - t743 + (qJD(2) * t665 - t667 * t765) * qJ(4)) * t669 + t776;
t656 = pkin(8) * t798;
t769 = qJD(2) * t669;
t824 = pkin(8) * t668;
t775 = t670 * t634 + t769 * t824;
t803 = t667 * t669;
t495 = -t669 * t742 + t688 * qJD(2) + (-t656 + (qJ(4) * t803 - t642) * t668) * qJD(3) + t775;
t690 = pkin(8) + t701;
t518 = (qJD(3) * t700 - t665 * t760) * t669 + t690 * t767;
t440 = -t664 * t486 + t666 * (t495 * t667 + t518 * t665);
t513 = -qJ(4) * t689 + t558;
t517 = -pkin(3) * t831 + t530;
t644 = -qJD(2) * pkin(2) + pkin(8) * t757;
t542 = pkin(3) * t627 - qJ(4) * t814 + t644;
t453 = -t664 * t513 + t666 * (t517 * t667 + t542 * t665);
t772 = t668 * t642 + t656;
t545 = -qJ(4) * t698 + t772;
t626 = t670 * t642;
t550 = -t669 * t752 + t626 + (-pkin(3) - t824) * t671;
t584 = t690 * t669;
t480 = -t664 * t545 + t666 * (t550 * t667 + t584 * t665);
t697 = t668 * t807 + t803;
t597 = t697 * qJD(1);
t787 = qJ(5) * t597 - t665 * (qJ(5) * t766 - qJD(5) * t670) + t783;
t731 = t580 * t665 + t667 * t739;
t826 = pkin(4) * t731;
t820 = t579 * t666;
t502 = t820 + t839;
t825 = pkin(5) * t502;
t823 = pkin(4) + qJ(6);
t815 = t629 * t664;
t527 = t627 * t805 + t666 * t728 + t815;
t806 = t666 * t629;
t528 = t806 - t846;
t821 = t527 * t528;
t819 = t579 * t668;
t818 = t581 * t666;
t813 = t629 * t670;
t810 = t665 * t666;
t672 = qJD(2) ^ 2;
t799 = t669 * t672;
t796 = t671 * t672;
t673 = qJD(1) ^ 2;
t795 = t671 * t673;
t548 = -t627 * t666 - t629 * t811;
t744 = t664 * t763;
t523 = t664 * t530;
t781 = -pkin(4) * t814 + t523;
t794 = t531 * t805 - pkin(5) * t548 - (-qJ(6) * t629 - t555 * t666) * t665 - t781 - qJD(6) * t667 + t744;
t793 = t597 * t823 + (qJD(6) * t670 - t766 * t823 - t818) * t665 - t836 - t779 * pkin(5);
t547 = -t627 * t664 + t629 * t805;
t489 = -t531 * t665 + t667 * t555;
t696 = -qJ(5) * t548 + t489;
t758 = qJD(5) * t664;
t792 = t547 * t823 - (-qJD(6) * t666 - t758) * t665 + t696;
t791 = -pkin(5) * t547 + t788;
t790 = -pkin(5) * t780 + t787;
t604 = t664 * t668 - t666 * t802;
t789 = -qJD(6) * t604 + t780 * t823 + t833;
t786 = -pkin(4) * t597 - (-pkin(4) * t766 - t818) * t665 + t836;
t785 = pkin(4) * t780 + t833;
t784 = -(t581 * t665 + t583 * t667) * t666 + t845;
t631 = t733 * t670;
t608 = t664 * t631;
t777 = pkin(4) * t808 + t608;
t774 = -t580 * t805 + t666 * t720;
t607 = pkin(3) * t811 + qJ(4) * t810;
t571 = t667 * t831 - t817;
t764 = qJD(4) * t571;
t759 = qJD(5) * t528;
t433 = t666 * t470 + t478 * t811 + t498 * t812;
t441 = t666 * t486 + t495 * t811 + t518 * t812;
t454 = t666 * t513 + t517 * t811 + t542 * t812;
t481 = t666 * t545 + t550 * t811 + t584 * t812;
t520 = t621 * t812 - t630 * t811 + t666 * t631;
t748 = -pkin(3) * t666 - pkin(4);
t741 = t644 * t766;
t740 = t644 * t765;
t736 = MDP(15) * t769;
t735 = -qJ(5) * t664 - pkin(3);
t734 = t467 - t826;
t732 = pkin(1) * t842;
t448 = -t478 * t665 + t667 * t498;
t462 = -t495 * t665 + t667 * t518;
t506 = -t550 * t665 + t667 * t584;
t553 = t667 * t621 + t630 * t665;
t730 = t670 * t831;
t729 = t671 * t831;
t727 = t627 + t768;
t726 = -t629 + t770;
t725 = qJD(3) * t831;
t721 = t667 * t745;
t585 = -qJ(5) * t667 - t607;
t501 = t579 * t664 - t774;
t716 = t665 * t766 - t597;
t482 = -t517 * t665 + t667 * t542 + qJD(4);
t715 = t668 * t725;
t714 = t670 * t725;
t426 = -qJ(5) * t731 + t571 * qJD(5) - t433;
t446 = qJ(5) * t571 - t454;
t610 = t665 * t801 - t797;
t471 = -qJ(5) * t610 - t481;
t561 = -t664 * t698 + t666 * t800;
t694 = -qJ(5) * t561 + t506;
t693 = -qJ(5) * t605 + t553;
t510 = qJ(5) * t808 - t520;
t687 = t662 * qJD(1) - t729;
t685 = -qJ(5) * t528 + t482;
t425 = -pkin(5) * t501 - t426;
t566 = qJD(2) * t697 + t665 * t745;
t434 = -qJ(5) * t566 - qJD(5) * t610 - t441;
t516 = qJD(2) * t834 - t664 * t721 - t666 * t746;
t677 = -qJ(5) * t516 - qJD(5) * t561 + t462;
t675 = qJD(5) - t453;
t427 = pkin(4) * t501 - qJ(5) * t502 + t448 - t759;
t423 = t501 * qJ(6) + t527 * qJD(6) + t427;
t652 = qJ(4) * t812;
t606 = pkin(3) * t805 - t652;
t587 = (-pkin(4) * t666 + t735) * t665;
t586 = t667 * t748 + t652;
t570 = t571 ^ 2;
t568 = (-t666 * t823 + t735) * t665;
t567 = pkin(5) * t810 - t585;
t560 = t664 * t800 + t666 * t698;
t554 = pkin(5) * t812 + t652 + (-qJ(6) + t748) * t667;
t526 = t528 ^ 2;
t519 = -t608 + t838;
t515 = qJD(2) * t835 - t664 * t746 + t666 * t721;
t511 = t777 - t838;
t505 = pkin(4) * t604 + t693;
t504 = -t666 * t689 - t815 * t832;
t503 = t806 * t832 - t846;
t497 = -pkin(5) * t604 - t510;
t491 = t604 * t823 + t693;
t490 = t630 * t805 + pkin(5) * t605 + (qJ(6) * t670 - t621 * t666) * t665 + t777;
t473 = pkin(4) * t560 + t694;
t472 = -pkin(4) * t610 - t480;
t465 = -t523 + t837;
t459 = t560 * t823 + t694;
t458 = -pkin(5) * t560 - t471;
t457 = t781 - t837;
t455 = pkin(4) * t547 + t696;
t452 = pkin(5) * t561 - t610 * t823 - t480;
t444 = pkin(4) * t571 + t675;
t443 = pkin(4) * t527 + t685;
t439 = -pkin(5) * t527 + qJD(6) - t446;
t438 = t527 * t823 + t685;
t437 = -pkin(4) * t566 - t440;
t436 = pkin(5) * t528 + t571 * t823 + t675;
t435 = pkin(4) * t515 + t677;
t431 = -pkin(5) * t515 - t434;
t430 = -t432 - t826;
t429 = pkin(5) * t516 - qJD(6) * t610 - t566 * t823 - t440;
t428 = qJD(6) * t560 + t515 * t823 + t677;
t424 = qJD(6) * t571 - t731 * t823 - t432 + t825;
t1 = [(t669 * t715 - t579 * t671 + (t629 * t669 + t670 * t687) * qJD(2)) * MDP(13) + (t432 * t610 - t440 * t571 + t448 * t560 + t453 * t566 + t462 * t527 + t480 * t731 + t482 * t515 + t501 * t506) * MDP(18) + (-t427 * t560 + t430 * t610 - t435 * t527 - t437 * t571 - t443 * t515 + t444 * t566 + t472 * t731 - t473 * t501) * MDP(23) + (-t423 * t561 + t425 * t610 - t428 * t528 - t431 * t571 - t438 * t516 + t439 * t566 + t458 * t731 - t459 * t502) * MDP(27) + (-t426 * t610 - t427 * t561 + t434 * t571 - t435 * t528 - t443 * t516 - t446 * t566 - t471 * t731 - t473 * t502) * MDP(24) + (t423 * t560 - t424 * t610 + t428 * t527 + t429 * t571 - t436 * t566 + t438 * t515 - t452 * t731 + t459 * t501) * MDP(28) + (-t433 * t610 + t441 * t571 + t448 * t561 - t454 * t566 + t462 * t528 - t481 * t731 + t482 * t516 + t502 * t506) * MDP(19) + (-t661 - t831) * t736 + ((-pkin(8) * t671 * t766 + t776) * t831 - t702 * t671 + (pkin(8) * t579 - t741) * t669 + ((pkin(8) * t629 + t644 * t670) * t671 + (-pkin(8) * t730 - qJD(1) * t772 - t558) * t669) * qJD(2)) * MDP(17) + (-(-t642 * t766 + t775) * t831 + (t740 + pkin(8) * t580 + (qJD(1) * t626 + t557) * qJD(2)) * t669 + (t644 * t770 + (t627 * qJD(2) + t714) * pkin(8) + t829) * t671) * MDP(16) + (t669 * t714 + t580 * t671 + (-t627 * t669 - t668 * t687) * qJD(2)) * MDP(14) + (-t432 * t561 - t433 * t560 - t440 * t528 - t441 * t527 - t453 * t516 - t454 * t515 - t480 * t502 - t481 * t501) * MDP(20) + t840 * t842 + (t432 * t480 + t433 * t481 + t440 * t453 + t441 * t454 + t448 * t506 + t462 * t482) * MDP(21) + ((-t627 * t670 - t629 * t668) * t767 + (-t819 - t580 * t670 + (t627 * t668 - t813) * qJD(3)) * t669) * MDP(12) + (t426 * t471 + t427 * t473 + t430 * t472 + t434 * t446 + t435 * t443 + t437 * t444) * MDP(25) - MDP(7) * t799 + (pkin(8) * t799 + t671 * t732) * MDP(10) + (t423 * t459 + t424 * t452 + t425 * t458 + t428 * t438 + t429 * t436 + t431 * t439) * MDP(29) + (t579 * t800 + (t670 * t767 - t746) * t629) * MDP(11) + (-pkin(8) * t796 + t669 * t732) * MDP(9) + 0.2e1 * t738 * t841 + MDP(6) * t796 + (t426 * t560 + t430 * t561 + t434 * t527 + t437 * t528 + t444 * t516 + t446 * t515 + t471 * t501 + t472 * t502) * MDP(22) + (t424 * t561 - t425 * t560 + t429 * t528 - t431 * t527 + t436 * t516 - t439 * t515 + t452 * t502 - t458 * t501) * MDP(26); -t795 * t841 + t673 * t840 + (-t813 * t831 + t819) * MDP(11) + ((t579 + t848) * t670 + (-t580 + t847) * t668) * MDP(12) + (-t714 + (t669 * t726 + t670 * t729) * qJD(1)) * MDP(13) + (t715 + (-t668 * t729 + t669 * t727) * qJD(1)) * MDP(14) + t831 * MDP(15) * t757 + (pkin(9) * t714 - pkin(2) * t580 + t741 + t773 * t831 + ((-pkin(9) * t770 - t557) * t669 + (-pkin(8) * t727 - t644 * t668) * t671) * qJD(1)) * MDP(16) + (-pkin(2) * t579 + t740 + (-t644 * t798 + (-pkin(9) * t768 + t558) * t669 + (t669 * t730 + t671 * t726) * pkin(8)) * qJD(1) + (-pkin(9) * t766 - t611) * t831) * MDP(17) + (-t432 * t808 + t448 * t604 + t453 * t716 - t482 * t780 + t501 * t553 + t519 * t731 + t527 * t782 + t571 * t784) * MDP(18) + (t433 * t808 + t448 * t605 - t454 * t716 - t482 * t779 + t502 * t553 - t520 * t731 + t528 * t782 - t571 * t783) * MDP(19) + (-t432 * t605 - t433 * t604 + t453 * t779 + t454 * t780 - t501 * t520 - t502 * t519 + t527 * t783 + t528 * t784) * MDP(20) + (t432 * t519 + t433 * t520 + t448 * t553 - t453 * t784 - t454 * t783 + t482 * t782) * MDP(21) + (t426 * t604 + t430 * t605 - t444 * t779 - t446 * t780 + t501 * t510 + t502 * t511 + t527 * t787 - t528 * t786) * MDP(22) + (-t427 * t604 - t430 * t808 + t443 * t780 + t444 * t716 - t501 * t505 + t511 * t731 + t527 * t785 + t571 * t786) * MDP(23) + (t426 * t808 - t427 * t605 + t443 * t779 - t446 * t716 - t502 * t505 - t510 * t731 + t528 * t785 + t571 * t787) * MDP(24) + (t426 * t510 + t427 * t505 + t430 * t511 - t443 * t785 - t444 * t786 + t446 * t787) * MDP(25) + (t424 * t605 - t425 * t604 - t436 * t779 + t439 * t780 + t490 * t502 - t497 * t501 + t527 * t790 + t528 * t793) * MDP(26) + (-t423 * t605 - t425 * t808 + t438 * t779 + t439 * t716 - t491 * t502 + t497 * t731 + t528 * t789 + t571 * t790) * MDP(27) + (t423 * t604 + t424 * t808 - t436 * t716 - t438 * t780 - t490 * t731 + t491 * t501 - t527 * t789 + t571 * t793) * MDP(28) + (t423 * t491 + t424 * t490 + t425 * t497 + t436 * t793 - t438 * t789 - t439 * t790) * MDP(29) + (MDP(9) * t669 * t673 + MDP(10) * t795) * pkin(1); t629 * t627 * MDP(11) + (-t627 ^ 2 + t629 ^ 2) * MDP(12) + (t579 - t848) * MDP(13) + (-t580 - t847) * MDP(14) + qJD(1) * t736 + (-t558 * t661 - t644 * t629 + t778) * MDP(16) + (-t557 * t831 + t644 * t627 + t674) * MDP(17) + (t432 * t667 + t465 * t571 - t482 * t547 - t489 * t527 + t731 * t606 + (-pkin(3) * t501 - t448 * t666 - t453 * t629 + t664 * t764) * t665) * MDP(18) + (-t433 * t667 - t466 * t571 - t482 * t548 - t489 * t528 - t731 * t607 + (-pkin(3) * t502 + t448 * t664 + t454 * t629 + t571 * t762) * t665) * MDP(19) + (t453 * t548 + t454 * t547 + t465 * t528 + t466 * t527 - t501 * t607 - t502 * t606 + (-t432 * t664 + t433 * t666 + (-t527 * t666 + t528 * t664) * qJD(4)) * t665) * MDP(20) + (t432 * t606 + t433 * t607 - t453 * t465 - t454 * t466 - t482 * t489 + (-pkin(3) * t448 + (-t453 * t664 + t454 * t666) * qJD(4)) * t665) * MDP(21) + (-t444 * t548 - t446 * t547 - t457 * t528 + t501 * t585 + t502 * t586 + t788 * t527 + (-t426 * t666 + (qJD(4) * t528 + t430) * t664) * t665) * MDP(22) + (t430 * t667 + t443 * t547 + t455 * t527 + t457 * t571 - t501 * t587 + t731 * t586 + (t427 * t666 - t444 * t629 + (qJD(5) * t527 - t764) * t664) * t665) * MDP(23) + (-t426 * t667 + t443 * t548 + t455 * t528 - t502 * t587 - t731 * t585 + t788 * t571 + (t446 * t629 + (-t427 + t759) * t664) * t665) * MDP(24) + (t426 * t585 + t427 * t587 + t430 * t586 + t788 * t446 + (-t457 + t744) * t444 + (-t665 * t758 - t455) * t443) * MDP(25) + (-t436 * t548 + t439 * t547 - t501 * t567 + t502 * t554 + (t424 * t664 + t425 * t666) * t665 + t794 * t528 + t791 * t527) * MDP(26) + (t425 * t667 + t438 * t548 - t502 * t568 + t731 * t567 + (-t423 * t664 - t439 * t629) * t665 + t791 * t571 + t792 * t528) * MDP(27) + (-t424 * t667 - t438 * t547 + t501 * t568 - t731 * t554 + (-t423 * t666 + t436 * t629) * t665 + t794 * t571 - t792 * t527) * MDP(28) + (t423 * t568 + t424 * t554 + t425 * t567 + t436 * t794 - t438 * t792 - t439 * t791) * MDP(29); (t453 * t503 - t454 * t504 + t448) * MDP(21) + (-t444 * t503 + t446 * t504 + t427) * MDP(25) + (-t436 * t503 - t439 * t504 + t423) * MDP(29) + (t579 * t844 + t684 * t843) * t664 - t844 * (t503 * t571 + t774) + (MDP(20) + t753) * (-t503 * t528 + t504 * t527) - t843 * (t504 * t571 - t820); (-t526 - t570) * MDP(24) + (t443 * t528 + t734) * MDP(25) - t526 * MDP(27) + (-qJ(6) * t731 + t438 * t528 + t734 + t825) * MDP(29) + (-t446 * MDP(25) + (qJD(6) + t439) * MDP(29) - MDP(27) * t571 - t753 * t527) * t571 + (t579 * t753 + (-MDP(25) - MDP(29)) * t712) * t666 + t830 * (-t731 + t821) + t753 * t839; (-t528 * t571 - t501) * MDP(26) + (t731 + t821) * MDP(27) + (-t527 ^ 2 - t570) * MDP(28) + (-t436 * t571 - t438 * t527 + t425) * MDP(29);];
tauc  = t1;