% Calculate minimal parameter regressor of Coriolis joint torque vector for
% S6RPRRRR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d4,d5,d6,theta2]';
% MDP [35x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RPRRRR11_convert_par2_MPV_fixb.m
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 07:49
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RPRRRR11_coriolisvecJ_fixb_mdp_slag_vp(qJ, qJD, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1),zeros(35,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR11_coriolisvecJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRR11_coriolisvecJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRRRR11_coriolisvecJ_fixb_mdp_slag_vp: pkin has to be [13x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [35 1]), ...
  'S6RPRRRR11_coriolisvecJ_fixb_mdp_slag_vp: MDP has to be [35x1] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 07:46:31
% EndTime: 2019-03-09 07:46:56
% DurationCPUTime: 13.91s
% Computational Cost: add. (19185->664), mult. (62811->920), div. (0->0), fcn. (55051->14), ass. (0->272)
t682 = sin(qJ(3));
t675 = sin(pkin(13));
t677 = sin(pkin(6));
t778 = qJD(1) * t677;
t762 = t675 * t778;
t678 = cos(pkin(13));
t822 = cos(pkin(7));
t825 = cos(qJ(3));
t730 = t822 * t825;
t714 = t678 * t730;
t676 = sin(pkin(7));
t823 = cos(pkin(6));
t753 = t823 * t676;
t715 = t825 * t753;
t850 = t677 * t714 + t715;
t838 = qJD(1) * t850 - t682 * t762;
t600 = qJD(4) - t838;
t754 = t682 * t822;
t701 = t675 * t754 - t678 * t825;
t697 = t677 * t701;
t626 = qJD(1) * t697;
t755 = qJD(3) * t825;
t851 = t676 * t755 + t626;
t751 = qJD(1) * t823;
t735 = pkin(1) * t751;
t761 = t678 * t778;
t632 = qJ(2) * t761 + t675 * t735;
t803 = t677 * t678;
t695 = (t803 * t822 + t753) * pkin(9);
t596 = qJD(1) * t695 + t632;
t589 = t825 * t596;
t807 = t675 * t676;
t628 = (-pkin(2) * t678 - pkin(9) * t807 - pkin(1)) * t677;
t619 = qJD(1) * t628 + qJD(2);
t663 = t678 * t735;
t806 = t675 * t677;
t689 = t823 * pkin(2) + (-pkin(9) * t822 - qJ(2)) * t806;
t601 = qJD(1) * t689 + t663;
t752 = t822 * t601;
t804 = t676 * t682;
t541 = t619 * t804 + t682 * t752 + t589;
t681 = sin(qJ(4));
t685 = cos(qJ(4));
t849 = t541 - t600 * (pkin(4) * t681 - pkin(11) * t685);
t613 = t677 * (t675 * t825 + t678 * t754) + t682 * t753;
t606 = qJD(1) * t613;
t680 = sin(qJ(5));
t684 = cos(qJ(5));
t563 = t680 * t685 * t838 - t684 * t606;
t773 = qJD(4) * t685;
t842 = -t680 * t773 + t563;
t798 = t684 * t685;
t564 = t606 * t680 + t798 * t838;
t727 = t684 * t773 - t564;
t772 = qJD(5) * t680;
t848 = -t681 * t772 + t727;
t571 = -t601 * t676 + t822 * t619;
t515 = -pkin(3) * t838 - pkin(10) * t606 + t571;
t653 = t676 * t761;
t720 = t823 * t822;
t828 = qJD(1) * t720 + qJD(3) - t653;
t519 = pkin(10) * t828 + t541;
t471 = t515 * t685 - t681 * t519;
t464 = -pkin(4) * t600 - t471;
t577 = t685 * t606 + t681 * t828;
t549 = t577 * t680 - t684 * t600;
t458 = pkin(5) * t549 + t464;
t683 = cos(qJ(6));
t551 = t577 * t684 + t600 * t680;
t679 = sin(qJ(6));
t811 = t551 * t679;
t495 = t683 * t549 + t811;
t847 = t458 * t495;
t717 = t549 * t679 - t683 * t551;
t846 = t458 * t717;
t627 = t685 * t828;
t575 = t606 * t681 - t627;
t574 = qJD(5) + t575;
t573 = qJD(6) + t574;
t845 = t495 * t573;
t844 = t573 * t717;
t771 = qJD(5) * t684;
t843 = t681 * t771 - t842;
t830 = qJD(5) + qJD(6);
t841 = t575 + t830;
t636 = t681 * t804 - t685 * t822;
t738 = t676 * t762;
t840 = qJD(4) * t636 + t681 * t738 - t685 * t851;
t699 = t675 * t730 + t678 * t682;
t696 = t677 * t699;
t625 = qJD(1) * t696;
t776 = qJD(3) * t682;
t839 = -t676 * t776 + t625;
t594 = t838 * qJD(3);
t800 = t681 * t594;
t548 = qJD(4) * t577 + t800;
t837 = t548 * MDP(33) + (-t495 ^ 2 + t717 ^ 2) * MDP(30) - t495 * MDP(29) * t717;
t836 = t600 * t681;
t646 = t679 * t684 + t680 * t683;
t633 = t646 * t681;
t835 = (t675 ^ 2 + t678 ^ 2) * MDP(6) * t677 ^ 2;
t805 = t675 * t682;
t612 = t677 * t805 - t850;
t765 = pkin(1) * t823;
t667 = t678 * t765;
t614 = t667 + t689;
t579 = -t614 * t676 + t822 * t628;
t532 = pkin(3) * t612 - pkin(10) * t613 + t579;
t635 = t676 * t803 - t720;
t782 = qJ(2) * t803 + t675 * t765;
t609 = t695 + t782;
t688 = t825 * t609 + (t614 * t822 + t628 * t676) * t682;
t539 = -t635 * pkin(10) + t688;
t794 = t681 * t532 + t685 * t539;
t475 = pkin(11) * t612 + t794;
t763 = t676 * t825;
t832 = -t682 * t609 + t614 * t730 + t628 * t763;
t538 = t635 * pkin(3) - t832;
t582 = t613 * t681 + t635 * t685;
t583 = t613 * t685 - t635 * t681;
t491 = t582 * pkin(4) - t583 * pkin(11) + t538;
t796 = t684 * t475 + t680 * t491;
t775 = qJD(4) * t681;
t767 = pkin(10) * t775;
t834 = t680 * t767 - t684 * t849;
t833 = -t682 * t596 + t601 * t730 + t619 * t763;
t566 = pkin(3) * t606 - pkin(10) * t838;
t793 = t681 * t566 + t685 * t833;
t487 = pkin(11) * t606 + t793;
t655 = -pkin(4) * t685 - pkin(11) * t681 - pkin(3);
t831 = t684 * t487 - t655 * t771 + t680 * t849;
t605 = t613 * qJD(3);
t595 = qJD(1) * t605;
t829 = t682 * (t619 * t676 + t752) + t589;
t547 = qJD(4) * t627 + t685 * t594 - t606 * t775;
t483 = qJD(5) * t551 + t547 * t680 - t684 * t595;
t482 = t684 * t547 - t577 * t772 + t680 * t595 + t600 * t771;
t747 = t482 * t679 + t683 * t483;
t437 = -qJD(6) * t717 + t747;
t827 = MDP(4) * t675 + MDP(5) * t678;
t826 = pkin(11) + pkin(12);
t824 = pkin(5) * t681;
t472 = t681 * t515 + t685 * t519;
t465 = pkin(11) * t600 + t472;
t518 = -pkin(3) * t828 - t833;
t478 = t575 * pkin(4) - t577 * pkin(11) + t518;
t446 = -t465 * t680 + t684 * t478;
t440 = -pkin(12) * t551 + t446;
t435 = pkin(5) * t574 + t440;
t820 = t435 * t683;
t447 = t465 * t684 + t478 * t680;
t441 = -pkin(12) * t549 + t447;
t819 = t441 * t683;
t691 = qJD(2) * t697;
t509 = -qJD(1) * t691 + qJD(3) * t833;
t777 = qJD(2) * t677;
t736 = t777 * t807;
t557 = pkin(3) * t595 - pkin(10) * t594 + qJD(1) * t736;
t739 = t681 * t509 + t515 * t775 + t519 * t773 - t685 * t557;
t450 = -pkin(4) * t595 + t739;
t818 = t450 * t680;
t817 = t450 * t684;
t816 = t482 * t680;
t815 = t548 * t684;
t814 = t548 * t685;
t813 = t549 * t574;
t812 = t551 * t574;
t810 = t575 * t600;
t809 = t575 * t680;
t808 = t577 * t600;
t802 = t680 * t548;
t801 = t680 * t681;
t799 = t681 * t684;
t530 = pkin(4) * t577 + pkin(11) * t575;
t797 = t684 * t471 + t680 * t530;
t637 = t681 * t822 + t685 * t804;
t703 = -t684 * t637 + t680 * t763;
t792 = qJD(5) * t703 + t680 * t840 - t684 * t839;
t620 = -t680 * t637 - t684 * t763;
t791 = -qJD(5) * t620 + t680 * t839 + t684 * t840;
t645 = t679 * t680 - t683 * t684;
t790 = t563 * t679 - t564 * t683 - t633 * t830 - t645 * t773;
t770 = qJD(6) * t679;
t789 = -t770 * t801 + (t799 * t830 - t842) * t683 + t848 * t679;
t788 = t841 * t645;
t787 = t841 * t646;
t786 = qJD(4) * t637 + t681 * t851 + t685 * t738;
t536 = t681 * t833;
t486 = -pkin(4) * t606 - t566 * t685 + t536;
t785 = pkin(5) * t843 + pkin(10) * t773 - t486;
t668 = pkin(10) * t798;
t781 = t680 * t655 + t668;
t774 = qJD(4) * t684;
t769 = qJD(6) * t683;
t766 = t683 * t482 - t679 * t483 - t549 * t769;
t764 = qJD(5) * t826;
t757 = t574 * t772;
t706 = t685 * t509 + t515 * t773 - t519 * t775 + t681 * t557;
t449 = pkin(11) * t595 + t706;
t690 = qJD(2) * t696;
t510 = qJD(1) * t690 + t829 * qJD(3);
t462 = t548 * pkin(4) - t547 * pkin(11) + t510;
t431 = -qJD(5) * t447 - t449 * t680 + t684 * t462;
t426 = pkin(5) * t548 - pkin(12) * t482 + t431;
t430 = t684 * t449 + t680 * t462 - t465 * t772 + t478 * t771;
t427 = -pkin(12) * t483 + t430;
t750 = t683 * t426 - t679 * t427;
t439 = t441 * t770;
t749 = t679 * t426 - t439;
t748 = -t475 * t680 + t684 * t491;
t746 = t532 * t685 - t681 * t539;
t744 = t685 * t600;
t741 = t574 * t684;
t740 = qJD(6) * t435 + t427;
t731 = -t472 + (t772 + t809) * pkin(5);
t525 = t684 * t530;
t661 = t826 * t684;
t726 = pkin(5) * t577 + qJD(6) * t661 - t471 * t680 + t525 + (pkin(12) * t575 + t764) * t684;
t622 = -pkin(12) * t801 + t781;
t725 = -pkin(12) * t564 + qJD(6) * t622 - t487 * t680 + t838 * t824 - (-pkin(12) * t798 + t824) * qJD(4) - (-t668 + (pkin(12) * t681 - t655) * t680) * qJD(5) - t834;
t644 = t684 * t655;
t611 = -pkin(12) * t799 + t644 + (-pkin(10) * t680 - pkin(5)) * t685;
t724 = -qJD(6) * t611 - (-t681 * t774 - t685 * t772) * pkin(10) + t831 + t843 * pkin(12);
t660 = t826 * t680;
t723 = pkin(12) * t809 + qJD(6) * t660 + t680 * t764 + t797;
t722 = -qJD(6) * t703 - t792;
t721 = -qJD(6) * t620 + t791;
t433 = t435 * t679 + t819;
t559 = t583 * t684 + t612 * t680;
t442 = pkin(5) * t582 - pkin(12) * t559 + t748;
t558 = t583 * t680 - t612 * t684;
t445 = -pkin(12) * t558 + t796;
t719 = t442 * t683 - t445 * t679;
t718 = t442 * t679 + t445 * t683;
t502 = t683 * t558 + t559 * t679;
t503 = -t558 * t679 + t559 * t683;
t716 = (-qJ(2) * t762 + t663) * t675 - t632 * t678;
t526 = qJD(3) * t832 - t691;
t604 = (t715 + (t714 - t805) * t677) * qJD(3);
t561 = pkin(3) * t605 - pkin(10) * t604 + t736;
t713 = -t681 * t526 - t532 * t775 - t539 * t773 + t561 * t685;
t474 = -pkin(4) * t612 - t746;
t711 = -t574 * t771 - t802;
t709 = -pkin(10) * t595 + t518 * t600;
t708 = -pkin(11) * t548 + t464 * t574;
t705 = t685 * t526 + t532 * t773 - t539 * t775 + t681 * t561;
t455 = pkin(11) * t605 + t705;
t527 = qJD(3) * t688 + t690;
t555 = qJD(4) * t583 + t604 * t681;
t556 = -qJD(4) * t582 + t604 * t685;
t468 = t555 * pkin(4) - t556 * pkin(11) + t527;
t704 = t684 * t455 + t680 * t468 - t475 * t772 + t491 * t771;
t436 = -t551 * t770 + t766;
t456 = -pkin(4) * t605 - t713;
t692 = -qJD(5) * t796 - t455 * t680 + t684 * t468;
t424 = -qJD(6) * t433 + t750;
t671 = -pkin(5) * t684 - pkin(4);
t652 = (pkin(5) * t680 + pkin(10)) * t681;
t634 = t645 * t681;
t506 = t548 * t582;
t493 = -qJD(5) * t558 + t556 * t684 + t605 * t680;
t492 = qJD(5) * t559 + t556 * t680 - t605 * t684;
t459 = pkin(5) * t558 + t474;
t444 = qJD(6) * t503 + t683 * t492 + t493 * t679;
t443 = -qJD(6) * t502 - t492 * t679 + t493 * t683;
t438 = pkin(5) * t492 + t456;
t434 = pkin(5) * t483 + t450;
t432 = -t441 * t679 + t820;
t429 = -pkin(12) * t492 + t704;
t428 = pkin(5) * t555 - pkin(12) * t493 + t692;
t423 = t740 * t683 + t749;
t1 = [(-t436 * t502 - t437 * t503 - t443 * t495 + t444 * t717) * MDP(30) + (t436 * t503 - t443 * t717) * MDP(29) + (-(qJD(6) * t719 + t428 * t679 + t429 * t683) * t573 - t718 * t548 - t423 * t582 - t433 * t555 - t438 * t717 + t459 * t436 + t434 * t503 + t458 * t443) * MDP(35) + (t436 * t582 + t443 * t573 + t503 * t548 - t555 * t717) * MDP(31) + (t471 * t605 + t510 * t582 + t518 * t555 + t527 * t575 + t538 * t548 + t595 * t746 + t600 * t713 - t612 * t739) * MDP(20) + (t431 * t582 + t446 * t555 + t450 * t558 + t456 * t549 + t464 * t492 + t474 * t483 + t548 * t748 + t574 * t692) * MDP(27) + (-t548 * t612 - t555 * t600 - t575 * t605 - t582 * t595) * MDP(18) + (t547 * t612 + t556 * t600 + t577 * t605 + t583 * t595) * MDP(17) + (t595 * t612 + t600 * t605) * MDP(19) + (t594 * t613 + t604 * t606) * MDP(8) + (-t547 * t582 - t548 * t583 - t555 * t577 - t556 * t575) * MDP(16) + (t547 * t583 + t556 * t577) * MDP(15) + ((-qJD(6) * t718 + t428 * t683 - t429 * t679) * t573 + t719 * t548 + t424 * t582 + t432 * t555 + t438 * t495 + t459 * t437 + t434 * t502 + t458 * t444) * MDP(34) + (-t472 * t605 + t510 * t583 + t518 * t556 + t527 * t577 + t538 * t547 - t595 * t794 - t600 * t705 - t612 * t706) * MDP(21) + (-t430 * t582 - t447 * t555 + t450 * t559 + t456 * t551 + t464 * t493 + t474 * t482 - t548 * t796 - t574 * t704) * MDP(28) + (-t437 * t582 - t444 * t573 - t495 * t555 - t502 * t548) * MDP(32) + (-t483 * t582 - t492 * t574 - t548 * t558 - t549 * t555) * MDP(25) + (t482 * t582 + t493 * t574 + t548 * t559 + t551 * t555) * MDP(24) + (t509 * t635 - t526 * t828 + t571 * t604 + t579 * t594 + 0.2e1 * t606 * t736) * MDP(14) + (-t594 * t635 + t604 * t828) * MDP(10) + (t595 * t635 - t605 * t828) * MDP(11) + (-t482 * t558 - t483 * t559 - t492 * t551 - t493 * t549) * MDP(23) + (t482 * t559 + t493 * t551) * MDP(22) + (t555 * t573 + t506) * MDP(33) + (t555 * t574 + t506) * MDP(26) + (-t594 * t612 - t595 * t613 + t604 * t838 - t605 * t606) * MDP(9) + (-t527 * t828 + t510 * t635 + t579 * t595 + t571 * t605 + (qJD(1) * t612 - t838) * t736) * MDP(13) + 0.2e1 * qJD(2) * qJD(1) * t835 + (-0.2e1 * t827 * t751 + ((t678 * t782 + (qJ(2) * t806 - t667) * t675) * qJD(1) - t716) * MDP(7)) * t777; t716 * MDP(7) * t778 + (t822 * t595 + t625 * t828 + (t762 * t838 - t776 * t828) * t676) * MDP(13) + (t822 * t594 - t626 * t828 + (-t606 * t762 - t755 * t828) * t676) * MDP(14) + (-t548 * t763 - t575 * t839 - t636 * t595 - t600 * t786) * MDP(20) + (-t547 * t763 - t577 * t839 - t637 * t595 + t600 * t840) * MDP(21) + (t483 * t636 + t548 * t620 + t549 * t786 + t574 * t792) * MDP(27) + (t482 * t636 + t548 * t703 + t551 * t786 + t574 * t791) * MDP(28) + ((t620 * t683 + t679 * t703) * t548 + t636 * t437 + (t679 * t721 - t683 * t722) * t573 + t786 * t495) * MDP(34) + (-(t620 * t679 - t683 * t703) * t548 + t636 * t436 + (t679 * t722 + t683 * t721) * t573 - t786 * t717) * MDP(35) + (t677 * t823 * t827 - t835) * qJD(1) ^ 2; (-t436 * t634 - t717 * t790) * MDP(29) + (-t436 * t633 + t437 * t634 - t495 * t790 + t717 * t789) * MDP(30) + (-t436 * t685 - t548 * t634 + t573 * t790 - t717 * t836) * MDP(31) + (t574 * t836 - t814) * MDP(26) + (t573 * t836 - t814) * MDP(33) + ((t611 * t683 - t622 * t679) * t548 - t424 * t685 + t652 * t437 + t434 * t633 + (t679 * t724 - t683 * t725) * t573 + t785 * t495 + t789 * t458 + t432 * t836) * MDP(34) + (-(t611 * t679 + t622 * t683) * t548 + t423 * t685 + t652 * t436 - t434 * t634 + (t679 * t725 + t683 * t724) * t573 - t785 * t717 + t790 * t458 - t433 * t836) * MDP(35) + (t437 * t685 - t495 * t836 - t548 * t633 - t573 * t789) * MDP(32) + (t595 * t685 - t600 * t836) * MDP(18) + (t547 * t681 + t577 * t744) * MDP(15) + (-pkin(3) * t547 + t510 * t681 - t541 * t577 + (t767 + t793) * t600 + t709 * t685) * MDP(21) + (-pkin(3) * t548 - t510 * t685 - t541 * t575 + (t536 + (-pkin(10) * qJD(4) - t566) * t685) * t600 + t709 * t681) * MDP(20) + (t482 * t799 + t551 * t848) * MDP(22) + (-t482 * t685 + t727 * t574 + (t551 * t600 - t757 + t815) * t681) * MDP(24) - t838 ^ 2 * MDP(9) + (-t833 * t653 - t571 * t838 + (t701 * t777 + t720 * t833) * qJD(1)) * MDP(14) + (-t828 * t838 + t594) * MDP(10) + (MDP(11) * t828 - t571 * MDP(13) - t577 * MDP(17) + t575 * MDP(18) - t600 * MDP(19) - t471 * MDP(20) + t472 * MDP(21) - MDP(8) * t838 + MDP(9) * t606) * t606 + ((t547 - t810) * t685 + (-t548 - t808) * t681) * MDP(16) + (t549 * t564 + t551 * t563 + (-t549 * t684 - t551 * t680) * t773 + (-t816 - t483 * t684 + (t549 * t680 - t551 * t684) * qJD(5)) * t681) * MDP(23) + (t483 * t685 + t842 * t574 + (-t549 * t600 + t711) * t681) * MDP(25) + (t595 * t681 + t600 * t744) * MDP(17) + (-t781 * t548 - t486 * t551 - t464 * t564 + t831 * t574 + (t464 * t774 + t430 + (qJD(4) * t551 + t757) * pkin(10)) * t685 + (-t464 * t772 + t817 - t600 * t447 + (t574 * t774 + t482) * pkin(10)) * t681) * MDP(28) + (-t464 * t563 - t486 * t549 + t644 * t548 + ((-qJD(5) * t655 + t487) * t680 + t834) * t574 + (t464 * t680 * qJD(4) - t431 + (qJD(4) * t549 + t711) * pkin(10)) * t685 + (pkin(10) * t483 + t446 * t600 + t464 * t771 + t818) * t681) * MDP(27) - MDP(11) * t595 + (-t541 * t653 + (t541 * t720 - t699 * t777) * qJD(1) + (t541 - t829) * qJD(3)) * MDP(13); -t575 ^ 2 * MDP(16) + (t547 + t810) * MDP(17) + (-t800 + t808) * MDP(18) + t595 * MDP(19) + (t472 * t600 - t739) * MDP(20) + (t471 * t600 + t518 * t575 - t706) * MDP(21) + (t551 * t741 + t816) * MDP(22) + ((t482 - t813) * t684 + (-t483 - t812) * t680) * MDP(23) + (t574 * t741 + t802) * MDP(24) + (-t574 ^ 2 * t680 + t815) * MDP(25) + (-pkin(4) * t483 - t817 - t472 * t549 + (-pkin(11) * t771 - t525) * t574 + (t471 * t574 + t708) * t680) * MDP(27) + (-pkin(4) * t482 + t818 - t472 * t551 + (pkin(11) * t772 + t797) * t574 + t708 * t684) * MDP(28) + (t436 * t646 + t717 * t788) * MDP(29) + (-t436 * t645 - t437 * t646 + t495 * t788 + t717 * t787) * MDP(30) + (t548 * t646 - t573 * t788) * MDP(31) + (-t548 * t645 - t573 * t787) * MDP(32) + ((-t660 * t683 - t661 * t679) * t548 + t671 * t437 + t434 * t645 + (t679 * t723 - t683 * t726) * t573 + t731 * t495 + t787 * t458) * MDP(34) + (-(-t660 * t679 + t661 * t683) * t548 + t671 * t436 + t434 * t646 + (t679 * t726 + t683 * t723) * t573 - t731 * t717 - t788 * t458) * MDP(35) + (MDP(15) * t575 + MDP(16) * t577 - MDP(18) * qJD(4) - MDP(20) * t518 - MDP(24) * t551 + MDP(25) * t549 - MDP(26) * t574 - MDP(27) * t446 + MDP(28) * t447 + MDP(31) * t717 + MDP(32) * t495 - MDP(33) * t573 - MDP(34) * t432 + MDP(35) * t433) * t577; t551 * t549 * MDP(22) + (-t549 ^ 2 + t551 ^ 2) * MDP(23) + (t482 + t813) * MDP(24) + (-t483 + t812) * MDP(25) + t548 * MDP(26) + (t447 * t574 - t464 * t551 + t431) * MDP(27) + (t446 * t574 + t464 * t549 - t430) * MDP(28) + (t436 + t845) * MDP(31) + (-t437 - t844) * MDP(32) + (-(-t440 * t679 - t819) * t573 + t846 + (-t495 * t551 + t548 * t683 - t573 * t770) * pkin(5) + t424) * MDP(34) + (t847 + t439 + (-t441 * t573 - t426) * t679 + (t440 * t573 - t740) * t683 + (-t548 * t679 + t551 * t717 - t573 * t769) * pkin(5)) * MDP(35) + t837; (t766 + t845) * MDP(31) + (-t747 - t844) * MDP(32) + (t433 * t573 + t750 + t846) * MDP(34) + (-t683 * t427 + t432 * t573 - t749 + t847) * MDP(35) + (-MDP(31) * t811 + MDP(32) * t717 - MDP(34) * t433 - MDP(35) * t820) * qJD(6) + t837;];
tauc  = t1;
