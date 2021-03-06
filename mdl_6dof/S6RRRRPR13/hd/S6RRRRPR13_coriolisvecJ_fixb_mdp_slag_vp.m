% Calculate minimal parameter regressor of Coriolis joint torque vector for
% S6RRRRPR13
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d6]';
% MDP [35x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRRRPR13_convert_par2_MPV_fixb.m
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 00:07
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RRRRPR13_coriolisvecJ_fixb_mdp_slag_vp(qJ, qJD, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1),zeros(35,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPR13_coriolisvecJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPR13_coriolisvecJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRRPR13_coriolisvecJ_fixb_mdp_slag_vp: pkin has to be [11x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [35 1]), ...
  'S6RRRRPR13_coriolisvecJ_fixb_mdp_slag_vp: MDP has to be [35x1] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 00:04:33
% EndTime: 2019-03-10 00:05:00
% DurationCPUTime: 18.02s
% Computational Cost: add. (11202->741), mult. (28800->977), div. (0->0), fcn. (22342->10), ass. (0->289)
t715 = sin(pkin(6));
t723 = cos(qJ(2));
t832 = qJD(1) * t723;
t702 = t715 * t832;
t765 = t702 - qJD(3);
t719 = sin(qJ(2));
t884 = cos(pkin(6));
t799 = t884 * qJD(1);
t780 = pkin(1) * t799;
t699 = t719 * t780;
t662 = pkin(8) * t702 + t699;
t718 = sin(qJ(3));
t722 = cos(qJ(3));
t922 = t662 + t765 * (pkin(3) * t718 - pkin(10) * t722);
t753 = t799 + qJD(2);
t833 = qJD(1) * t719;
t808 = t715 * t833;
t640 = t718 * t808 - t722 * t753;
t634 = qJD(4) + t640;
t717 = sin(qJ(4));
t834 = qJD(1) * t715;
t721 = cos(qJ(4));
t857 = t721 * t723;
t627 = (t717 * t719 + t722 * t857) * t834;
t828 = qJD(3) * t722;
t772 = t721 * t828 - t627;
t827 = qJD(4) * t717;
t802 = t718 * t827;
t921 = t772 - t802;
t782 = t718 * t702;
t830 = qJD(3) * t718;
t920 = t782 - t830;
t642 = t718 * t753 + t722 * t808;
t590 = t642 * t717 + t721 * t765;
t592 = t721 * t642 - t717 * t765;
t716 = sin(qJ(6));
t720 = cos(qJ(6));
t535 = t590 * t716 + t592 * t720;
t816 = qJD(1) * qJD(2);
t800 = t715 * t816;
t778 = t723 * t800;
t755 = t718 * t778;
t596 = t642 * qJD(3) + t755;
t758 = -t720 * t590 + t592 * t716;
t919 = MDP(29) * t535 * t758 + (t535 ^ 2 - t758 ^ 2) * MDP(30) - t596 * MDP(33);
t659 = -pkin(8) * t808 + t723 * t780;
t748 = (pkin(2) * t719 - pkin(9) * t723) * t715;
t660 = qJD(1) * t748;
t840 = t722 * t659 + t718 * t660;
t581 = pkin(10) * t808 + t840;
t691 = -pkin(3) * t722 - pkin(10) * t718 - pkin(2);
t858 = t721 * t722;
t708 = pkin(9) * t858;
t901 = -qJD(4) * t708 + t717 * t581 - t691 * t827 - t721 * t922;
t817 = qJD(6) - t634;
t918 = t535 * t817;
t754 = t722 * t778;
t726 = -qJD(3) * t640 + t754;
t916 = -qJD(4) * t765 + t726;
t781 = t722 * t702;
t626 = t717 * t781 - t721 * t808;
t915 = -t717 * t828 + t626;
t826 = qJD(4) * t721;
t914 = t721 * t581 - t691 * t826 + t717 * t922;
t913 = qJD(6) - qJD(4);
t616 = pkin(9) * t753 + t662;
t656 = (-pkin(2) * t723 - pkin(9) * t719 - pkin(1)) * t715;
t632 = qJD(1) * t656;
t566 = -t718 * t616 + t722 * t632;
t552 = pkin(3) * t765 - t566;
t734 = t592 * qJ(5) - t552;
t891 = pkin(4) + pkin(5);
t487 = -t590 * t891 + t734;
t779 = t719 * t800;
t529 = t642 * t827 - t717 * t779 - t721 * t916;
t661 = qJD(2) * t748;
t651 = qJD(1) * t661;
t809 = pkin(1) * t884;
t864 = t715 * t719;
t902 = -pkin(8) * t864 + t723 * t809;
t663 = t902 * qJD(2);
t652 = qJD(1) * t663;
t741 = t616 * t830 - t632 * t828 - t718 * t651 - t722 * t652;
t512 = pkin(10) * t779 - t741;
t764 = pkin(8) * t778;
t525 = t596 * pkin(3) - pkin(10) * t726 + qJD(2) * t699 + t764;
t615 = -pkin(2) * t753 - t659;
t549 = t640 * pkin(3) - t642 * pkin(10) + t615;
t567 = t722 * t616 + t718 * t632;
t553 = -pkin(10) * t765 + t567;
t786 = t717 * t512 - t721 * t525 + t549 * t827 + t553 * t826;
t463 = pkin(11) * t529 - t596 * t891 + t786;
t594 = t596 * qJ(5);
t620 = t634 * qJD(5);
t739 = -t721 * t512 - t717 * t525 - t549 * t826 + t553 * t827;
t470 = t594 + t620 - t739;
t530 = t642 * t826 + t717 * t916 - t721 * t779;
t465 = pkin(11) * t530 + t470;
t798 = -t720 * t463 + t716 * t465;
t911 = t487 * t535 + t798;
t712 = t715 ^ 2;
t909 = -0.2e1 * t712 * t816;
t908 = MDP(5) * (t719 ^ 2 - t723 ^ 2);
t907 = t817 * t758;
t906 = t765 * t718;
t889 = pkin(4) * t596;
t472 = t786 - t889;
t499 = t717 * t549 + t721 * t553;
t621 = t634 * qJ(5);
t493 = t621 + t499;
t905 = -t493 * t634 + t472;
t904 = qJ(5) * t920 + t914;
t903 = qJD(5) * t717 + t567;
t900 = -t716 * t721 + t717 * t720;
t498 = t721 * t549 - t717 * t553;
t818 = qJD(5) - t498;
t819 = -pkin(11) * t592 + t818;
t483 = -t634 * t891 + t819;
t822 = qJD(6) * t720;
t813 = t716 * t463 + t720 * t465 + t483 * t822;
t898 = -t487 * t758 + t813;
t497 = t590 * pkin(4) - t734;
t887 = pkin(10) * t596;
t897 = t497 * t634 - t887;
t881 = qJ(5) * t721;
t896 = t717 * t891 - t881;
t882 = qJ(5) * t717;
t895 = -t721 * t891 - t882;
t893 = t592 ^ 2;
t892 = t634 ^ 2;
t725 = qJD(1) ^ 2;
t890 = pkin(10) - pkin(11);
t888 = pkin(9) * t722;
t886 = pkin(11) * t640;
t885 = pkin(11) * t718;
t883 = qJ(5) * t590;
t785 = -t616 * t828 - t632 * t830 + t722 * t651 - t718 * t652;
t730 = pkin(3) * t779 + t785;
t727 = -qJ(5) * t529 + qJD(5) * t592 + t730;
t477 = pkin(4) * t530 - t727;
t880 = t477 * t717;
t879 = t477 * t721;
t489 = pkin(11) * t590 + t499;
t486 = t489 + t621;
t878 = t486 * t716;
t876 = t497 * t592;
t875 = t730 * t717;
t874 = t730 * t721;
t873 = t529 * t717;
t872 = t590 * t634;
t871 = t592 * t590;
t870 = t592 * t634;
t669 = t718 * t864 - t722 * t884;
t869 = t596 * t669;
t868 = t596 * t717;
t867 = t596 * t721;
t866 = t596 * t722;
t865 = t712 * t725;
t863 = t715 * t723;
t860 = t718 * t720;
t859 = t718 * t721;
t829 = qJD(3) * t721;
t856 = qJD(5) * t722 - (-t718 * t829 - t722 * t827) * pkin(9) + t904;
t810 = -pkin(9) * t717 - pkin(4);
t855 = -pkin(4) * t782 - t810 * t830 + t901;
t766 = pkin(4) * t717 - t881;
t854 = -t634 * t766 + t903;
t841 = -t718 * t659 + t722 * t660;
t744 = pkin(3) * t808 + t841;
t733 = qJ(5) * t627 + t744;
t751 = pkin(9) + t766;
t767 = pkin(4) * t721 + t882;
t824 = qJD(5) * t721;
t853 = pkin(4) * t626 - (qJD(4) * t767 - t824) * t718 - t751 * t828 - t733;
t737 = -pkin(9) - t896;
t852 = t626 * t891 + (qJD(4) * t895 + t824) * t718 + t737 * t828 - t733;
t584 = pkin(3) * t642 + pkin(10) * t640;
t851 = t721 * t566 + t717 * t584;
t678 = t716 * t717 + t720 * t721;
t850 = t718 * t900 * t913 - t626 * t716 - t627 * t720 + t678 * t828;
t666 = t678 * t718;
t849 = qJD(6) * t666 + t716 * t921 + t915 * t720 - t826 * t860;
t654 = -pkin(2) * t884 - t902;
t670 = t718 * t884 + t722 * t864;
t576 = t669 * pkin(3) - t670 * pkin(10) + t654;
t736 = pkin(8) * t863 + t719 * t809;
t655 = pkin(9) * t884 + t736;
t843 = t722 * t655 + t718 * t656;
t578 = -pkin(10) * t863 + t843;
t848 = t717 * t576 + t721 * t578;
t846 = (t640 - t913) * t678;
t823 = qJD(6) * t716;
t845 = -t640 * t900 + t716 * t826 + t717 * t822 - t720 * t827 - t721 * t823;
t844 = -t718 * t655 + t722 * t656;
t842 = -t634 * t896 + t903;
t837 = t717 * t691 + t708;
t831 = qJD(2) * t719;
t820 = t615 * qJD(3);
t815 = pkin(10) * t827;
t696 = t890 * t721;
t814 = t717 * t863;
t812 = -t720 * t529 + t716 * t530 + t590 * t822;
t503 = t642 * qJ(5) + t851;
t506 = t669 * qJ(5) + t848;
t577 = pkin(3) * t863 - t844;
t807 = t715 * t831;
t806 = qJD(2) * t863;
t803 = t634 * t827;
t797 = -t529 * t716 - t720 * t530;
t796 = t576 * t721 - t717 * t578;
t707 = t717 * t888;
t794 = t691 * t721 - t707;
t793 = t817 ^ 2;
t792 = t723 * t765;
t791 = t634 * t721;
t790 = t765 * t715;
t789 = qJD(3) * t765;
t787 = t712 * t719 * t723 * MDP(4);
t784 = -t655 * t828 - t656 * t830 + t722 * t661 - t718 * t663;
t776 = pkin(1) * t909;
t618 = -qJ(5) * t722 + t837;
t557 = t717 * t566;
t771 = t557 + (-t584 + t886) * t721 - t891 * t642 + t913 * t696;
t695 = t890 * t717;
t770 = qJD(6) * t695 + t717 * t886 - t890 * t827 - t503;
t597 = t717 * t885 + t618;
t769 = qJD(6) * t597 - t782 * t891 - (-pkin(5) + t810) * t830 + t901 + (qJD(3) * t858 - t627 - t802) * pkin(11);
t711 = t722 * pkin(4);
t595 = pkin(5) * t722 + t707 + t711 + (-t691 - t885) * t721;
t768 = -pkin(11) * t626 + qJD(6) * t595 + (-pkin(9) * qJD(3) + pkin(11) * qJD(4)) * t859 + (-qJD(5) + (-pkin(9) * qJD(4) + pkin(11) * qJD(3)) * t717) * t722 - t904;
t763 = qJ(5) * t720 - t716 * t891;
t762 = -qJ(5) * t716 - t720 * t891;
t467 = t483 * t716 + t486 * t720;
t608 = t670 * t721 - t814;
t491 = -pkin(11) * t608 - t669 * t891 - t796;
t607 = t670 * t717 + t715 * t857;
t494 = pkin(11) * t607 + t506;
t761 = t491 * t720 - t494 * t716;
t760 = t491 * t716 + t494 * t720;
t492 = -pkin(4) * t634 + t818;
t759 = t492 * t721 - t493 * t717;
t757 = t607 * t720 - t608 * t716;
t555 = t607 * t716 + t608 * t720;
t750 = qJ(5) * t608 - t577;
t740 = -t655 * t830 + t656 * t828 + t718 * t661 + t722 * t663;
t521 = pkin(10) * t807 + t740;
t605 = qJD(3) * t670 + t718 * t806;
t606 = -qJD(3) * t669 + t722 * t806;
t664 = t736 * qJD(2);
t538 = t605 * pkin(3) - t606 * pkin(10) + t664;
t749 = -t717 * t521 + t538 * t721 - t576 * t827 - t578 * t826;
t743 = t552 * t634 - t887;
t742 = t499 * t634 - t786;
t738 = t721 * t521 + t717 * t538 + t576 * t826 - t578 * t827;
t480 = -t592 * t823 + t812;
t735 = pkin(3) * t807 + t784;
t476 = t605 * qJ(5) + t669 * qJD(5) + t738;
t732 = pkin(1) * (-qJD(2) * t799 + t865);
t731 = t498 * t634 + t739;
t481 = qJD(6) * t535 + t797;
t546 = -qJD(4) * t607 + t606 * t721 + t717 * t807;
t728 = qJ(5) * t546 + qJD(5) * t608 + t735;
t687 = -pkin(3) - t767;
t674 = pkin(3) - t895;
t665 = t716 * t859 - t717 * t860;
t657 = t751 * t718;
t653 = qJD(1) * t664;
t619 = t711 - t794;
t617 = t737 * t718;
t545 = -qJD(4) * t814 + t606 * t717 + t670 * t826 - t721 * t807;
t537 = pkin(4) * t592 + t883;
t514 = pkin(4) * t607 - t750;
t509 = -t592 * t891 - t883;
t507 = -pkin(4) * t669 - t796;
t505 = -pkin(4) * t642 - t584 * t721 + t557;
t501 = -t607 * t891 + t750;
t496 = -t529 + t872;
t485 = qJD(6) * t757 + t545 * t716 + t546 * t720;
t484 = qJD(6) * t555 - t545 * t720 + t546 * t716;
t479 = pkin(4) * t545 - t728;
t478 = -pkin(4) * t605 - t749;
t475 = -t545 * t891 + t728;
t471 = pkin(11) * t545 + t476;
t469 = -pkin(11) * t546 - t605 * t891 - t749;
t468 = -t530 * t891 + t727;
t466 = t483 * t720 - t878;
t460 = -t467 * qJD(6) - t798;
t459 = -t486 * t823 + t813;
t1 = [(MDP(6) * t806 - MDP(7) * t807) * (0.2e1 * t799 + qJD(2)) + (-t712 * t832 - t790) * MDP(15) * t831 + (-t652 * t884 - t663 * t753 + t723 * t776) * MDP(10) + (-t653 * t884 - t664 * t753 + t719 * t776) * MDP(9) + 0.2e1 * t787 * t816 + (-t784 * t765 + t664 * t640 + t654 * t596 + t653 * t669 + t615 * t605 + (-t785 * t723 + (qJD(1) * t844 + t566) * t831) * t715) * MDP(16) + (t605 * t765 + (t596 * t723 + (-qJD(1) * t669 - t640) * t831) * t715) * MDP(14) + (t605 * t634 + t869) * MDP(22) + t908 * t909 + (t480 * t555 + t485 * t535) * MDP(29) + (t470 * t506 + t472 * t507 + t476 * t493 + t477 * t514 + t478 * t492 + t479 * t497) * MDP(28) + (-t670 * t596 - t642 * t605 - t606 * t640 - t669 * t726) * MDP(12) + (t642 * t606 + t670 * t726) * MDP(11) + (-t567 * t807 + t615 * t606 + t664 * t642 + t653 * t670 + t654 * t726 + t740 * t765 - t741 * t863 - t779 * t843) * MDP(17) + (-t606 * t765 + t642 * t807 + t670 * t779 - t726 * t863) * MDP(13) + (-t529 * t608 + t546 * t592) * MDP(18) + (-t470 * t607 + t472 * t608 - t476 * t590 + t478 * t592 + t492 * t546 - t493 * t545 - t506 * t530 - t507 * t529) * MDP(26) + (t529 * t607 - t530 * t608 - t545 * t592 - t546 * t590) * MDP(19) + (-t530 * t669 - t545 * t634 - t590 * t605 - t596 * t607) * MDP(21) + (-t529 * t669 + t546 * t634 + t592 * t605 + t596 * t608) * MDP(20) + (t470 * t669 + t476 * t634 - t477 * t608 - t479 * t592 + t493 * t605 - t497 * t546 + t506 * t596 + t514 * t529) * MDP(27) + (-t472 * t669 + t477 * t607 - t478 * t634 + t479 * t590 - t492 * t605 + t497 * t545 - t507 * t596 + t514 * t530) * MDP(25) + (-(qJD(6) * t761 + t469 * t716 + t471 * t720) * t817 + t760 * t596 + t459 * t669 + t467 * t605 + t475 * t535 + t501 * t480 + t468 * t555 + t487 * t485) * MDP(35) + (-t605 * t817 + t869) * MDP(33) + (-t480 * t669 + t485 * t817 - t535 * t605 - t555 * t596) * MDP(31) + ((-qJD(6) * t760 + t469 * t720 - t471 * t716) * t817 - t761 * t596 - t460 * t669 - t466 * t605 + t475 * t758 + t501 * t481 - t468 * t757 + t487 * t484) * MDP(34) + (t481 * t669 - t484 * t817 - t596 * t757 + t605 * t758) * MDP(32) + (-t499 * t605 - t577 * t529 + t552 * t546 - t592 * t735 - t596 * t848 - t608 * t730 - t634 * t738 + t669 * t739) * MDP(24) + (t498 * t605 + t577 * t530 + t552 * t545 - t590 * t735 + t596 * t796 - t607 * t730 + t634 * t749 - t669 * t786) * MDP(23) + (t480 * t757 - t481 * t555 - t484 * t535 - t485 * t758) * MDP(30); (t794 * t596 + t744 * t590 - t552 * t626 + t901 * t634 + (t786 + (pkin(9) * t590 + t552 * t717) * qJD(3)) * t722 + (t552 * t826 - t875 - t765 * t498 + (qJD(3) * t634 * t717 + t530) * pkin(9)) * t718) * MDP(23) + MDP(15) * t790 * t833 + ((-MDP(6) * t723 + MDP(7) * t719) * t715 * t884 - t787) * t725 + (pkin(8) * t779 + t659 * t753 + t723 * t732) * MDP(10) + (-t480 * t665 - t481 * t666 - t535 * t849 - t758 * t850) * MDP(30) + (-pkin(2) * t726 + t567 * t808 - t615 * t781 - t662 * t642 + t653 * t718 + t722 * t820 - t779 * t888 + (-pkin(9) * t830 - t840) * t765) * MDP(17) + (-qJD(3) * t718 ^ 2 * t808 + ((qJD(3) * t753 + t778) * t718 - t765 * t642) * t722) * MDP(11) + (t480 * t666 + t535 * t850) * MDP(29) + (t530 * t722 + t915 * t634 + (t590 * t765 - t634 * t826 - t868) * t718) * MDP(21) + (t472 * t722 + t530 * t657 - t596 * t619 + t855 * t634 - t853 * t590 - t915 * t497 + (t492 * t765 + t497 * t826 + t880) * t718) * MDP(25) + (t529 * t722 + t772 * t634 + (-t592 * t765 - t803 + t867) * t718) * MDP(20) + (-t718 * t596 + t722 * t726 + t920 * t642 + (t781 - t828) * t640) * MDP(12) + (-t529 * t859 + t592 * t921) * MDP(18) + t865 * t908 + (t662 * t753 + t719 * t732 - t764) * MDP(9) + (t590 * t627 + t592 * t626 + (-t590 * t721 - t592 * t717) * t828 + (t873 - t530 * t721 + (t590 * t717 - t592 * t721) * qJD(4)) * t718) * MDP(19) + (-t492 * t627 + t493 * t626 - t529 * t619 - t530 * t618 - t855 * t592 + t856 * t590 + t759 * t828 + (-t470 * t717 + t472 * t721 + (-t492 * t717 - t493 * t721) * qJD(4)) * t718) * MDP(26) + (t470 * t618 + t472 * t619 + t477 * t657 - t492 * t855 - t493 * t856 - t497 * t853) * MDP(28) + (-(t595 * t720 - t597 * t716) * t596 + t460 * t722 + t617 * t481 + t468 * t665 - (t716 * t768 + t720 * t769) * t817 + t852 * t758 + t849 * t487 + t466 * t906) * MDP(34) + (t480 * t722 + t535 * t906 - t596 * t666 + t817 * t850) * MDP(31) + (-t634 * t906 - t866) * MDP(22) + (-t481 * t722 + t596 * t665 - t758 * t906 - t817 * t849) * MDP(32) + ((t595 * t716 + t597 * t720) * t596 - t459 * t722 + t617 * t480 + t468 * t666 - (-t716 * t769 + t720 * t768) * t817 + t852 * t535 + t850 * t487 - t467 * t906) * MDP(35) + (t817 * t906 - t866) * MDP(33) + (-t470 * t722 + t529 * t657 + t596 * t618 - t856 * t634 + t853 * t592 - t772 * t497 + (-t493 * t765 + t497 * t827 - t879) * t718) * MDP(27) + (-pkin(2) * t596 + t718 * t820 + t841 * t765 - t662 * t640 + (pkin(9) * t789 - t653) * t722 + (-t566 * t719 + (-pkin(9) * t831 - t615 * t723) * t718) * t834) * MDP(16) + (-t722 * t789 + (t722 * t792 + (qJD(2) * t718 - t642) * t719) * t834) * MDP(13) + (t718 * t789 + (-t718 * t792 + (qJD(2) * t722 + t640) * t719) * t834) * MDP(14) + (-t837 * t596 + t744 * t592 - t552 * t627 + t914 * t634 + (t552 * t829 - t739 + (qJD(3) * t592 + t803) * pkin(9)) * t722 + (-t552 * t827 - t874 + t765 * t499 + (t634 * t829 - t529) * pkin(9)) * t718) * MDP(24); (-t717 * t892 + t867) * MDP(21) + (-t879 + t530 * t687 + (-pkin(10) * t826 + t505) * t634 - t854 * t590 + t897 * t717) * MDP(25) + (-t880 + t529 * t687 + (-t503 - t815) * t634 + t854 * t592 - t897 * t721) * MDP(27) + (-t566 * t765 + t615 * t640 + t741) * MDP(17) + (-t567 * t765 + t785) * MDP(16) + (t596 * t678 - t817 * t845) * MDP(32) + (-(t695 * t720 - t696 * t716) * t596 + t674 * t481 + t468 * t678 - (t716 * t770 + t720 * t771) * t817 + t842 * t758 + t845 * t487) * MDP(34) + (t480 * t900 + t535 * t846) * MDP(29) + ((t695 * t716 + t696 * t720) * t596 + t674 * t480 + t468 * t900 - (-t716 * t771 + t720 * t770) * t817 + t842 * t535 + t846 * t487) * MDP(35) + (-t596 * t900 + t817 * t846) * MDP(31) + (-t480 * t678 - t481 * t900 - t535 * t845 - t758 * t846) * MDP(30) - t755 * MDP(14) + (t634 * t791 + t868) * MDP(20) + ((-t529 - t872) * t721 + (-t530 - t870) * t717) * MDP(19) + (-t640 * t702 + t754) * MDP(13) + (t592 * t791 - t873) * MDP(18) + (-pkin(3) * t530 + t874 - t567 * t590 + (t557 + (-pkin(10) * qJD(4) - t584) * t721) * t634 + t743 * t717) * MDP(23) + (pkin(3) * t529 - t875 - t567 * t592 + (t815 + t851) * t634 + t743 * t721) * MDP(24) + (t477 * t687 - t492 * t505 - t493 * t503 - t854 * t497 + (qJD(4) * t759 + t470 * t721 + t472 * t717) * pkin(10)) * MDP(28) + MDP(15) * t779 - t640 ^ 2 * MDP(12) + (t503 * t590 - t505 * t592 + (t470 + t634 * t492 + (qJD(4) * t592 - t530) * pkin(10)) * t721 + ((qJD(4) * t590 - t529) * pkin(10) + t905) * t717) * MDP(26) + (t640 * MDP(11) - t702 * MDP(14) - t615 * MDP(16) - t592 * MDP(20) + t590 * MDP(21) - t634 * MDP(22) - t498 * MDP(23) + t499 * MDP(24) + t492 * MDP(25) - t493 * MDP(27) + t535 * MDP(31) - t758 * MDP(32) + t817 * MDP(33) + t466 * MDP(34) - t467 * MDP(35) + MDP(12) * t642) * t642; MDP(18) * t871 + (-t590 ^ 2 + t893) * MDP(19) + t496 * MDP(20) + (-t530 + t870) * MDP(21) + t596 * MDP(22) + (-t552 * t592 + t742) * MDP(23) + (t552 * t590 + t731) * MDP(24) + (-t537 * t590 + t742 - t876 + 0.2e1 * t889) * MDP(25) + (pkin(4) * t529 - qJ(5) * t530 + (t493 - t499) * t592 + (t492 - t818) * t590) * MDP(26) + (-t497 * t590 + t537 * t592 + 0.2e1 * t594 + 0.2e1 * t620 - t731) * MDP(27) + (-pkin(4) * t472 + qJ(5) * t470 - t492 * t499 + t493 * t818 - t497 * t537) * MDP(28) + (-t480 - t907) * MDP(31) + (t481 - t918) * MDP(32) + (-t762 * t596 - t509 * t758 - (t489 * t720 + t716 * t819) * t817 + (-t763 * t817 + t467) * qJD(6) + t911) * MDP(34) + (t763 * t596 - t509 * t535 - (-t489 * t716 + t720 * t819) * t817 + (-t762 * t817 - t878) * qJD(6) + t898) * MDP(35) - t919; (-t596 + t871) * MDP(25) + t496 * MDP(26) + (-t892 - t893) * MDP(27) + (t876 + t905) * MDP(28) + (-t592 * t758 - t720 * t596 - t716 * t793) * MDP(34) + (-t535 * t592 + t716 * t596 - t720 * t793) * MDP(35); (t812 + t907) * MDP(31) + (-t797 + t918) * MDP(32) + (t467 * t817 - t911) * MDP(34) + (t466 * t817 - t898) * MDP(35) + ((-MDP(32) * t592 - MDP(34) * t486) * t720 + (-MDP(31) * t592 - MDP(32) * t590 - MDP(34) * t483 + MDP(35) * t486) * t716) * qJD(6) + t919;];
tauc  = t1;
