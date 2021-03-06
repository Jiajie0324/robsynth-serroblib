% Calculate vector of inverse dynamics joint torques for
% S6RRPRRP9
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,theta3]';
% MDP [30x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRPRRP9_convert_par2_MPV_fixb.m
% 
% Output:
% tau [6x1]
%   joint torques of inverse dynamics (contains inertial, gravitational Coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 12:35
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RRPRRP9_invdynJ_fixb_mdp_slag_vp(qJ, qJD, qJDD, g, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1),zeros(30,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRP9_invdynJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRP9_invdynJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRP9_invdynJ_fixb_mdp_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRP9_invdynJ_fixb_mdp_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRRP9_invdynJ_fixb_mdp_slag_vp: pkin has to be [11x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [30 1]), ...
  'S6RRPRRP9_invdynJ_fixb_mdp_slag_vp: MDP has to be [30x1] (double)'); 

%% Symbolic Calculation
% From invdyn_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 12:34:26
% EndTime: 2019-03-09 12:34:49
% DurationCPUTime: 17.32s
% Computational Cost: add. (13238->719), mult. (32710->950), div. (0->0), fcn. (26783->14), ass. (0->302)
t733 = sin(pkin(11));
t735 = cos(pkin(11));
t740 = sin(qJ(4));
t744 = cos(qJ(4));
t677 = t733 * t740 - t744 * t735;
t734 = sin(pkin(6));
t745 = cos(qJ(2));
t872 = t734 * t745;
t758 = t677 * t872;
t637 = qJD(1) * t758;
t670 = t677 * qJD(4);
t904 = t670 - t637;
t678 = t733 * t744 + t735 * t740;
t759 = t678 * t872;
t852 = -qJD(1) * t759 + t678 * qJD(4);
t741 = sin(qJ(2));
t784 = pkin(2) * t741 - qJ(3) * t745;
t848 = qJD(1) * t734;
t662 = t784 * t848;
t817 = t741 * t848;
t736 = cos(pkin(6));
t847 = qJD(1) * t736;
t827 = pkin(1) * t847;
t663 = -pkin(8) * t817 + t745 * t827;
t600 = t735 * t662 - t663 * t733;
t763 = (-pkin(9) * t735 * t745 + pkin(3) * t741) * t734;
t570 = qJD(1) * t763 + t600;
t601 = t733 * t662 + t735 * t663;
t846 = qJD(1) * t745;
t712 = t734 * t846;
t792 = t733 * t712;
t583 = -pkin(9) * t792 + t601;
t888 = pkin(9) + qJ(3);
t690 = t888 * t733;
t691 = t888 * t735;
t782 = -t690 * t744 - t691 * t740;
t921 = -qJD(3) * t677 + qJD(4) * t782 - t740 * t570 - t744 * t583;
t739 = sin(qJ(5));
t743 = cos(qJ(5));
t714 = qJD(2) + t847;
t650 = t714 * t735 - t733 * t817;
t651 = t714 * t733 + t735 * t817;
t783 = t650 * t740 + t651 * t744;
t835 = t712 - qJD(4);
t565 = -t739 * t835 + t743 * t783;
t590 = -t744 * t650 + t651 * t740;
t911 = qJD(5) + t590;
t884 = t911 * t739;
t920 = t565 * t884;
t913 = pkin(10) * t817 - t921;
t705 = pkin(8) * t712;
t664 = t741 * t827 + t705;
t629 = pkin(3) * t792 + t664;
t919 = t852 * pkin(4) + t904 * pkin(10) - t629;
t897 = cos(qJ(1));
t819 = t897 * t741;
t742 = sin(qJ(1));
t868 = t742 * t745;
t673 = t736 * t819 + t868;
t818 = t897 * t745;
t869 = t741 * t742;
t675 = -t736 * t869 + t818;
t786 = g(1) * t675 + g(2) * t673;
t874 = t734 * t741;
t756 = -g(3) * t874 - t786;
t833 = qJD(1) * qJD(2);
t813 = t741 * t833;
t790 = t734 * t813;
t830 = qJDD(1) * t745;
t711 = t734 * t830;
t829 = qJDD(4) - t711;
t762 = t790 + t829;
t832 = qJDD(1) * t736;
t713 = qJDD(2) + t832;
t826 = pkin(1) * qJD(2) * t736;
t795 = qJD(1) * t826;
t825 = pkin(1) * t832;
t821 = -pkin(8) * t711 - t741 * t825 - t745 * t795;
t753 = -pkin(8) * t790 - t821;
t578 = qJ(3) * t713 + qJD(3) * t714 + t753;
t751 = qJD(2) * t784 - qJD(3) * t741;
t779 = -pkin(2) * t745 - qJ(3) * t741 - pkin(1);
t584 = (qJD(1) * t751 + qJDD(1) * t779) * t734;
t528 = -t578 * t733 + t735 * t584;
t812 = t745 * t833;
t831 = qJDD(1) * t741;
t772 = t812 + t831;
t754 = t772 * t734;
t879 = t713 * t733;
t618 = t735 * t754 + t879;
t771 = t813 - t830;
t504 = pkin(3) * t734 * t771 - pkin(9) * t618 + t528;
t529 = t735 * t578 + t733 * t584;
t684 = t735 * t713;
t617 = t733 * t754 - t684;
t512 = -pkin(9) * t617 + t529;
t638 = qJ(3) * t714 + t664;
t659 = t779 * t734;
t643 = qJD(1) * t659;
t572 = -t638 * t733 + t735 * t643;
t537 = -pkin(3) * t712 - pkin(9) * t651 + t572;
t573 = t735 * t638 + t733 * t643;
t546 = pkin(9) * t650 + t573;
t840 = qJD(4) * t744;
t841 = qJD(4) * t740;
t770 = -t740 * t504 - t744 * t512 - t537 * t840 + t546 * t841;
t470 = pkin(10) * t762 - t770;
t499 = t740 * t537 + t744 * t546;
t496 = -pkin(10) * t835 + t499;
t631 = -pkin(2) * t714 + qJD(3) - t663;
t588 = -pkin(3) * t650 + t631;
t510 = pkin(4) * t590 - pkin(10) * t783 + t588;
t478 = t496 * t743 + t510 * t739;
t802 = t744 * t617 + t740 * t618;
t900 = t783 * qJD(4);
t523 = t802 + t900;
t715 = pkin(8) * t874;
t793 = qJD(2) * t705 + qJDD(1) * t715 + t741 * t795 - t745 * t825;
t899 = -t713 * pkin(2) + qJDD(3);
t595 = t793 + t899;
t545 = t617 * pkin(3) + t595;
t768 = t740 * t617 - t744 * t618 - t650 * t840 + t651 * t841;
t482 = t523 * pkin(4) + pkin(10) * t768 + t545;
t465 = -qJD(5) * t478 - t739 * t470 + t743 * t482;
t800 = t743 * t835;
t839 = qJD(5) * t739;
t492 = qJD(5) * t800 - t739 * t762 + t743 * t768 + t783 * t839;
t522 = qJDD(5) + t523;
t462 = pkin(5) * t522 + qJ(6) * t492 - qJD(6) * t565 + t465;
t563 = t739 * t783 + t800;
t474 = -qJ(6) * t563 + t478;
t918 = t474 * t911 + t462;
t750 = -t739 * t768 - t743 * t762;
t493 = qJD(5) * t565 + t750;
t838 = qJD(5) * t743;
t767 = -t743 * t470 - t739 * t482 + t496 * t839 - t510 * t838;
t463 = -qJ(6) * t493 - qJD(6) * t563 - t767;
t477 = -t496 * t739 + t743 * t510;
t473 = -qJ(6) * t565 + t477;
t472 = pkin(5) * t911 + t473;
t917 = -t472 * t911 + t463;
t915 = t563 * t590;
t914 = t590 * t835;
t672 = -t736 * t818 + t869;
t674 = t736 * t868 + t819;
t788 = g(1) * t674 + g(2) * t672;
t903 = g(3) * t872 - t788;
t737 = -qJ(6) - pkin(10);
t912 = -qJ(6) * t590 + qJD(5) * t737;
t730 = pkin(11) + qJ(4);
t726 = sin(t730);
t727 = cos(t730);
t820 = t734 * t897;
t620 = t673 * t727 - t726 * t820;
t910 = t620 * t739 - t672 * t743;
t909 = t620 * t743 + t672 * t739;
t908 = pkin(3) * t733;
t907 = t903 * t726;
t896 = pkin(1) * t741;
t850 = pkin(8) * t872 + t736 * t896;
t658 = qJ(3) * t736 + t850;
t596 = -t658 * t733 + t735 * t659;
t669 = t733 * t736 + t735 * t874;
t553 = -pkin(3) * t872 - pkin(9) * t669 + t596;
t597 = t735 * t658 + t733 * t659;
t668 = t733 * t874 - t736 * t735;
t569 = -pkin(9) * t668 + t597;
t859 = t740 * t553 + t744 * t569;
t514 = -pkin(10) * t872 + t859;
t604 = t744 * t668 + t669 * t740;
t605 = -t668 * t740 + t669 * t744;
t661 = t715 + (-pkin(1) * t745 - pkin(2)) * t736;
t614 = pkin(3) * t668 + t661;
t527 = pkin(4) * t604 - pkin(10) * t605 + t614;
t861 = t743 * t514 + t739 * t527;
t574 = t740 * t583;
t635 = -t690 * t740 + t691 * t744;
t906 = qJD(3) * t678 + qJD(4) * t635 + t570 * t744 - t574;
t905 = t919 * t743;
t873 = t734 * t742;
t624 = t675 * t727 + t726 * t873;
t581 = -t624 * t739 + t674 * t743;
t657 = t726 * t736 + t727 * t874;
t867 = t743 * t745;
t823 = t734 * t867;
t902 = g(2) * t910 - g(3) * (-t657 * t739 - t823) - g(1) * t581;
t724 = pkin(3) * t735 + pkin(2);
t616 = pkin(4) * t677 - pkin(10) * t678 - t724;
t901 = t616 * t838 + t739 * t919 - t743 * t913;
t898 = t565 ^ 2;
t890 = g(3) * t734;
t887 = MDP(6) * t734;
t885 = t492 * t739;
t881 = t678 * t739;
t880 = t678 * t743;
t878 = t713 * t736;
t877 = t727 * t739;
t876 = t727 * t743;
t729 = t734 ^ 2;
t875 = t729 * qJD(1) ^ 2;
t871 = t739 * t522;
t870 = t739 * t745;
t520 = t743 * t522;
t625 = t743 * t635;
t866 = -t473 + t472;
t603 = -t637 * t743 + t739 * t817;
t781 = qJ(6) * t670 - qJD(6) * t678;
t865 = qJ(6) * t603 - t625 * qJD(5) + t781 * t743 + t905 + ((qJ(6) * t678 - t616) * qJD(5) + t913) * t739 + t852 * pkin(5);
t864 = -t739 * t493 - t563 * t838;
t602 = -t637 * t739 - t743 * t817;
t814 = t678 * t838;
t863 = (-qJD(5) * t635 + t781) * t739 + t901 + (t602 - t814) * qJ(6);
t498 = t744 * t537 - t740 * t546;
t532 = pkin(4) * t783 + pkin(10) * t590;
t862 = t743 * t498 + t739 * t532;
t857 = pkin(4) * t817 + t906;
t856 = t739 * t616 + t625;
t641 = t751 * t734;
t843 = qJD(2) * t741;
t816 = t734 * t843;
t780 = -pkin(8) * t816 + t745 * t826;
t647 = qJD(3) * t736 + t780;
t580 = t733 * t641 + t735 * t647;
t855 = qJD(6) * t743 + t739 * t912 - t862;
t531 = t743 * t532;
t854 = -pkin(5) * t783 - t531 + t912 * t743 + (-qJD(6) + t498) * t739;
t842 = qJD(2) * t745;
t815 = t734 * t842;
t665 = pkin(8) * t815 + t741 * t826;
t851 = t897 * pkin(1) + pkin(8) * t873;
t731 = t741 ^ 2;
t849 = -t745 ^ 2 + t731;
t845 = qJD(2) * t733;
t844 = qJD(2) * t735;
t837 = qJD(2) - t714;
t834 = qJ(3) * qJDD(1);
t828 = 0.2e1 * t729;
t824 = t745 * t875;
t698 = t734 * t870;
t791 = t733 * t815;
t630 = pkin(3) * t791 + t665;
t811 = -t742 * pkin(1) + pkin(8) * t820;
t810 = pkin(5) * t739 + t888;
t808 = -t514 * t739 + t743 * t527;
t807 = t553 * t744 - t740 * t569;
t805 = t670 * t739 + t602;
t804 = t670 * t743 + t603;
t803 = t743 * t616 - t635 * t739;
t579 = t735 * t641 - t647 * t733;
t801 = t911 ^ 2;
t798 = t911 * t743;
t797 = t714 + t847;
t796 = t713 + t832;
t794 = -t744 * t504 + t740 * t512 + t537 * t841 + t546 * t840;
t619 = t673 * t726 + t727 * t820;
t623 = t675 * t726 - t727 * t873;
t789 = -g(1) * t619 + g(2) * t623;
t787 = -g(1) * t672 + g(2) * t674;
t785 = g(1) * t673 - g(2) * t675;
t513 = pkin(4) * t872 - t807;
t778 = -t595 + t788;
t550 = qJD(2) * t763 + t579;
t567 = -pkin(9) * t791 + t580;
t776 = t550 * t744 - t553 * t841 - t740 * t567 - t569 * t840;
t775 = g(1) * t897 + g(2) * t742;
t585 = t605 * t739 + t823;
t495 = pkin(4) * t835 - t498;
t773 = -pkin(10) * t522 + t495 * t911;
t769 = t740 * t550 + t553 * t840 + t744 * t567 - t569 * t841;
t485 = pkin(10) * t816 + t769;
t558 = -qJD(2) * t758 - qJD(4) * t604;
t559 = qJD(2) * t759 + qJD(4) * t605;
t505 = pkin(4) * t559 - pkin(10) * t558 + t630;
t766 = t743 * t485 + t739 * t505 - t514 * t839 + t527 * t838;
t656 = t726 * t874 - t736 * t727;
t765 = g(1) * t623 + g(2) * t619 + g(3) * t656;
t764 = -g(1) * t624 - g(2) * t620 - g(3) * t657;
t761 = -t805 + t814;
t760 = -t678 * t839 - t804;
t755 = -qJ(3) * t843 + (qJD(3) - t631) * t745;
t752 = -t903 - t793;
t486 = -pkin(4) * t816 - t776;
t749 = -qJD(5) * t861 - t485 * t739 + t743 * t505;
t471 = -pkin(4) * t762 + t794;
t748 = pkin(10) * qJD(5) * t911 + t471 - t765;
t468 = t493 * pkin(5) + qJDD(6) + t471;
t725 = pkin(5) * t743 + pkin(4);
t696 = t737 * t743;
t695 = t737 * t739;
t586 = t605 * t743 - t698;
t582 = t624 * t743 + t674 * t739;
t560 = t563 ^ 2;
t540 = -qJ(6) * t881 + t856;
t533 = pkin(5) * t677 - qJ(6) * t880 + t803;
t516 = -qJD(5) * t698 + t558 * t739 + t605 * t838 - t743 * t816;
t515 = qJD(5) * t585 - t743 * t558 - t739 * t816;
t489 = t563 * pkin(5) + qJD(6) + t495;
t483 = -qJ(6) * t585 + t861;
t476 = pkin(5) * t604 - qJ(6) * t586 + t808;
t467 = -qJ(6) * t516 - qJD(6) * t585 + t766;
t466 = pkin(5) * t559 + qJ(6) * t515 - qJD(6) * t586 + t749;
t1 = [(t463 * t483 + t474 * t467 + t462 * t476 + t472 * t466 + t468 * (pkin(5) * t585 + t513) + t489 * (pkin(5) * t516 + t486) - g(1) * (t619 * t737 - t620 * t725 - t672 * t810 - t673 * t724 + t820 * t908 + t811) - g(2) * (-t623 * t737 + t624 * t725 + t674 * t810 + t675 * t724 + t873 * t908 + t851)) * MDP(30) + (g(1) * t620 - g(2) * t624 + t498 * t816 + t614 * t523 + t545 * t604 + t588 * t559 + t630 * t590 + t762 * t807 - t776 * t835 + t794 * t872) * MDP(20) + (-t665 * t714 - t715 * t713 - t793 * t736 + (t745 * t878 - t771 * t828) * pkin(1) + t785) * MDP(9) + (-t558 * t835 + t605 * t829) * MDP(17) + (t559 * t835 - t604 * t829) * MDP(18) + (t595 * t669 + t661 * t618 + t665 * t651 - t785 * t733) * MDP(12) + (g(1) * t742 - g(2) * t897) * MDP(2) + (0.2e1 * (t741 * t830 - t833 * t849) * MDP(5) + (qJDD(1) * t731 + 0.2e1 * t741 * t812) * MDP(4)) * t729 + (-pkin(1) * t772 * t828 - t713 * t850 - t714 * t780 - t736 * t753 + t787) * MDP(10) + (t529 * t597 + t573 * t580 + t528 * t596 + t572 * t579 + t595 * t661 + t631 * t665 - g(1) * (-pkin(2) * t673 - qJ(3) * t672 + t811) - g(2) * (pkin(2) * t675 + qJ(3) * t674 + t851)) * MDP(14) + (-t492 * t586 - t515 * t565) * MDP(22) + (t492 * t585 - t493 * t586 + t515 * t563 - t516 * t565) * MDP(23) + (t595 * t668 + t661 * t617 - t665 * t650 + t785 * t735) * MDP(11) + (t545 * t605 + t588 * t558 - t614 * t768 + t630 * t783 + t769 * t835 - t859 * t829 + t789) * MDP(21) + (-t605 * t523 - t558 * t590 - t559 * t783 + t604 * t768) * MDP(16) + (t558 * t783 - t605 * t768) * MDP(15) + ((-t770 * t745 + (-qJD(1) * t859 - t499) * t843) * MDP(21) + (t768 * t745 + (qJD(1) * t605 + t783) * t843) * MDP(17) + (t523 * t745 + (-qJD(1) * t604 - t590) * t843) * MDP(18) + (-t775 * t735 + (-qJD(1) * t597 - t573) * t843 + (qJD(1) * t580 + qJDD(1) * t597 + t631 * t844 + t529) * t745) * MDP(12) + (-t775 * t733 + (qJD(1) * t596 + t572) * t843 + (-qJD(1) * t579 - qJDD(1) * t596 + t631 * t845 - t528) * t745) * MDP(11) + (-t829 * t745 + (-0.2e1 * t712 + qJD(4)) * t843) * MDP(19) + (t745 * t796 - t797 * t843) * MDP(7)) * t734 + (-t528 * t669 - t529 * t668 - t579 * t651 + t580 * t650 - t596 * t618 - t597 * t617 + (-t572 * t735 - t573 * t733) * t815 - t787) * MDP(13) + (-t462 * t586 - t463 * t585 - t466 * t565 - t467 * t563 + t472 * t515 - t474 * t516 + t476 * t492 - t483 * t493 - t789) * MDP(29) + t775 * MDP(3) + (t522 * t604 + t559 * t911) * MDP(26) + (-t492 * t604 - t515 * t911 + t522 * t586 + t559 * t565) * MDP(24) + (-t493 * t604 - t516 * t911 - t522 * t585 - t559 * t563) * MDP(25) + (g(1) * t909 - g(2) * t582 + t465 * t604 + t471 * t585 + t477 * t559 + t486 * t563 + t513 * t493 + t495 * t516 + t808 * t522 + t749 * t911) * MDP(27) + (-g(1) * t910 - g(2) * t581 + t471 * t586 - t478 * t559 + t486 * t565 - t513 * t492 - t495 * t515 - t861 * t522 + t767 * t604 - t766 * t911) * MDP(28) + (t741 * t796 + t797 * t842) * t887 + MDP(8) * t878 + qJDD(1) * MDP(1); (-t498 * t817 - t724 * t523 + t545 * t677 + t588 * t852 - t629 * t590 - t727 * t903 + t762 * t782 + t835 * t906) * MDP(20) + (-t572 * t600 - t573 * t601 - t631 * t664 + (-t572 * t733 + t573 * t735) * qJD(3) + (-t595 - t903) * pkin(2) + (-t528 * t733 + t529 * t735 + t756) * qJ(3)) * MDP(14) + (-t492 * t880 + t565 * t760) * MDP(22) + (t499 * t817 + t545 * t678 - t588 * t904 - t629 * t783 - t635 * t762 + t724 * t768 + t835 * t921 + t907) * MDP(21) + (t463 * t540 + t462 * t533 + t468 * (pkin(5) * t881 - t782) + t863 * t474 + t865 * t472 - t903 * (t725 * t727 - t726 * t737 + t724) + (-t574 + (qJD(3) * t735 - qJD(4) * t690) * t740 + (qJD(3) * t733 + qJD(4) * t691 + t570) * t744 + t761 * pkin(5) + pkin(4) * qJD(1) * t874) * t489 + t756 * t810) * MDP(30) + (t664 * t714 + t875 * t896 + t752) * MDP(9) + (t805 * t565 + t804 * t563 + (t885 - t493 * t743 + (t563 * t739 - t565 * t743) * qJD(5)) * t678) * MDP(23) + (pkin(1) * t824 + t663 * t714 + (pkin(8) * t833 + g(3)) * t874 + t786 + t821) * MDP(10) + (-t817 * t837 + t711) * MDP(7) + t849 * MDP(5) * t875 + (t600 * t651 - t601 * t650 + (-qJ(3) * t617 + qJD(3) * t650 + t572 * t712 + t529) * t735 + (qJ(3) * t618 + qJD(3) * t651 + t573 * t712 - t528) * t733 + t756) * MDP(13) + (-t856 * t522 + t767 * t677 + t782 * t492 + t471 * t880 - g(1) * (t674 * t877 + t675 * t743) - g(2) * (t672 * t877 + t673 * t743) - (-t727 * t870 + t741 * t743) * t890 + (t635 * t839 - t901) * t911 + t857 * t565 - t852 * t478 + t760 * t495) * MDP(28) + (-t492 * t677 + t520 * t678 + t565 * t852 + t760 * t911) * MDP(24) + (t522 * t677 + t852 * t911) * MDP(26) + (-t493 * t677 - t563 * t852 - t678 * t871 - t761 * t911) * MDP(25) + (t803 * t522 + t465 * t677 - t782 * t493 + t471 * t881 - g(1) * (-t674 * t876 + t675 * t739) - g(2) * (-t672 * t876 + t673 * t739) - (t727 * t867 + t739 * t741) * t890 + (-t635 * t838 + (-qJD(5) * t616 + t913) * t739 + t905) * t911 + t857 * t563 + t852 * t477 + t761 * t495) * MDP(27) + (-t678 * t768 - t783 * t904) * MDP(15) + (-t678 * t523 + t590 * t904 + t677 * t768 - t783 * t852) * MDP(16) + (-pkin(2) * t618 - t651 * t664 - t778 * t733 + ((g(3) * t733 + t735 * t834) * t745 + (t573 * t741 - t601 * t745 + t735 * t755) * qJD(1)) * t734) * MDP(12) + (-pkin(2) * t617 + t650 * t664 + t778 * t735 + ((-g(3) * t735 + t733 * t834) * t745 + (-t572 * t741 + t600 * t745 + t733 * t755) * qJD(1)) * t734) * MDP(11) + (t837 * t846 + t831) * t887 + t835 * MDP(19) * t817 - t741 * MDP(4) * t824 + (t492 * t533 - t493 * t540 - t865 * t565 - t863 * t563 + t805 * t474 + t804 * t472 - t907 + (-t462 * t743 - t463 * t739 + (t472 * t739 - t474 * t743) * qJD(5)) * t678) * MDP(29) + (t590 * t817 - t677 * t762 + t835 * t852) * MDP(18) + (t678 * t762 - t783 * t817 + t835 * t904) * MDP(17) + t713 * MDP(8); (-t684 + (t733 * t831 + (-t651 + t845) * t846) * t734) * MDP(11) + (t879 + (t735 * t831 + (-t650 + t844) * t846) * t734) * MDP(12) + (-t650 ^ 2 - t651 ^ 2) * MDP(13) + (t572 * t651 - t573 * t650 - t752 + t899) * MDP(14) + (-t783 * t712 + t802 + 0.2e1 * t900) * MDP(20) + (-t768 + t914) * MDP(21) + (-t563 * t783 - t739 * t801 + t520) * MDP(27) + (-t565 * t783 - t743 * t801 - t871) * MDP(28) + ((t492 - t915) * t743 + t920 + t864) * MDP(29) + (-t489 * t783 + t739 * t917 + t743 * t918 + t903) * MDP(30); -t590 ^ 2 * MDP(16) + (-t768 - t914) * MDP(17) - t523 * MDP(18) + t762 * MDP(19) + (-t499 * t835 + t765 - t794) * MDP(20) + (-t498 * t835 + t588 * t590 - t764 + t770) * MDP(21) + (t565 * t798 - t885) * MDP(22) + ((-t492 - t915) * t743 - t920 + t864) * MDP(23) + (t798 * t911 + t871) * MDP(24) + (-t884 * t911 + t520) * MDP(25) + (-pkin(4) * t493 - t499 * t563 - t531 * t911 + (t498 * t911 + t773) * t739 - t748 * t743) * MDP(27) + (pkin(4) * t492 - t499 * t565 + t739 * t748 + t743 * t773 + t862 * t911) * MDP(28) + (t492 * t695 + t493 * t696 - t855 * t563 - t854 * t565 - t739 * t918 + t743 * t917 + t764) * MDP(29) + (-t463 * t696 + t462 * t695 - t468 * t725 - g(1) * (-t623 * t725 - t624 * t737) - g(2) * (-t619 * t725 - t620 * t737) - g(3) * (-t656 * t725 - t657 * t737) + (pkin(5) * t884 - t499) * t489 + t855 * t474 + t854 * t472) * MDP(30) + (t590 * MDP(15) + MDP(16) * t783 - MDP(18) * t835 - t588 * MDP(20) - t565 * MDP(24) + t563 * MDP(25) - MDP(26) * t911 - t477 * MDP(27) + t478 * MDP(28)) * t783; t565 * t563 * MDP(22) + (-t560 + t898) * MDP(23) + (t563 * t911 - t492) * MDP(24) + (-t750 + (-qJD(5) + t911) * t565) * MDP(25) + t522 * MDP(26) + (t478 * t911 - t495 * t565 + t465 + t902) * MDP(27) + (t477 * t911 + t495 * t563 + g(1) * t582 + g(2) * t909 - g(3) * (-t657 * t743 + t698) + t767) * MDP(28) + (pkin(5) * t492 - t563 * t866) * MDP(29) + (t866 * t474 + (-t489 * t565 + t462 + t902) * pkin(5)) * MDP(30); (-t560 - t898) * MDP(29) + (t472 * t565 + t474 * t563 + t468 - t765) * MDP(30);];
tau  = t1;
