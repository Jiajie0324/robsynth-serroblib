% Calculate vector of inverse dynamics joint torques for
% S6RRRPRP12
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5]';
% MDP [32x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRRPRP12_convert_par2_MPV_fixb.m
% 
% Output:
% tau [6x1]
%   joint torques of inverse dynamics (contains inertial, gravitational Coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 18:01
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RRRPRP12_invdynJ_fixb_mdp_slag_vp(qJ, qJD, qJDD, g, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1),zeros(32,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP12_invdynJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP12_invdynJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRP12_invdynJ_fixb_mdp_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRP12_invdynJ_fixb_mdp_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP12_invdynJ_fixb_mdp_slag_vp: pkin has to be [10x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [32 1]), ...
  'S6RRRPRP12_invdynJ_fixb_mdp_slag_vp: MDP has to be [32x1] (double)'); 

%% Symbolic Calculation
% From invdyn_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 17:59:49
% EndTime: 2019-03-09 18:00:19
% DurationCPUTime: 22.75s
% Computational Cost: add. (11254->808), mult. (26901->1004), div. (0->0), fcn. (20979->10), ass. (0->314)
t738 = sin(qJ(3));
t742 = cos(qJ(2));
t736 = sin(pkin(6));
t886 = qJD(1) * t736;
t852 = t742 * t886;
t822 = t738 * t852;
t883 = qJD(3) * t738;
t940 = t822 - t883;
t700 = -qJD(3) + t852;
t715 = pkin(8) * t852;
t739 = sin(qJ(2));
t923 = cos(pkin(6));
t839 = t923 * qJD(1);
t820 = pkin(1) * t839;
t659 = t739 * t820 + t715;
t951 = -pkin(3) * t940 - t738 * qJD(4) - t659;
t930 = cos(qJ(3));
t730 = t930 * pkin(9);
t703 = t930 * pkin(4) + t730;
t853 = t739 * t886;
t656 = -pkin(8) * t853 + t742 * t820;
t810 = pkin(2) * t739 - pkin(9) * t742;
t657 = t810 * t886;
t802 = t738 * t656 - t657 * t930;
t856 = t742 * t930;
t933 = pkin(3) + pkin(10);
t948 = (pkin(4) * t856 - t739 * t933) * t886 + t802 - t703 * qJD(3);
t950 = -t951 + t700 * (pkin(10) * t738 - qJ(4) * t930);
t793 = t839 + qJD(2);
t767 = t930 * t793;
t631 = t738 * t853 - t767;
t873 = qJDD(1) * t742;
t719 = t736 * t873;
t875 = qJD(1) * qJD(2);
t845 = t739 * t875;
t815 = t736 * t845;
t653 = qJDD(3) - t719 + t815;
t737 = sin(qJ(5));
t741 = cos(qJ(5));
t777 = t738 * t793;
t833 = t923 * qJDD(1);
t788 = t833 + qJDD(2);
t764 = qJD(3) * t777 - t930 * t788;
t848 = qJD(3) * t930;
t816 = t739 * t848;
t874 = qJDD(1) * t739;
t842 = t738 * t874;
t884 = qJD(2) * t742;
t849 = t738 * t884;
t745 = (qJD(1) * (t816 + t849) + t842) * t736 + t764;
t880 = qJD(5) * t741;
t881 = qJD(5) * t737;
t514 = -t631 * t880 - t741 * t653 - t700 * t881 - t737 * t745;
t582 = -t741 * t631 - t700 * t737;
t859 = t736 * t930;
t818 = qJD(1) * t859;
t633 = t739 * t818 + t777;
t625 = qJD(5) + t633;
t916 = t582 * t625;
t945 = t514 - t916;
t949 = t945 * MDP(30);
t795 = t742 * t818;
t761 = t795 - t848;
t946 = -t738 * qJ(4) - pkin(2);
t693 = -pkin(3) * t930 + t946;
t676 = -pkin(10) * t930 + t693;
t932 = pkin(4) + pkin(9);
t702 = t932 * t738;
t944 = t676 * t881 - t702 * t880 + t737 * t948 + t950 * t741;
t614 = pkin(9) * t793 + t659;
t790 = -pkin(2) * t742 - pkin(9) * t739 - pkin(1);
t623 = t790 * t886;
t552 = t614 * t738 - t930 * t623;
t878 = -qJD(4) - t552;
t740 = sin(qJ(1));
t931 = cos(qJ(1));
t813 = t923 * t931;
t672 = t739 * t813 + t740 * t742;
t603 = t672 * t738 + t859 * t931;
t671 = t739 * t740 - t742 * t813;
t564 = t603 * t737 + t671 * t741;
t565 = t603 * t741 - t671 * t737;
t935 = t625 ^ 2;
t901 = -qJ(6) * t761 + t738 * qJD(6) - t944;
t892 = t741 * t676 + t737 * t702;
t900 = t761 * pkin(5) + qJD(5) * t892 - t737 * t950 + t948 * t741;
t841 = t739 * t923;
t908 = t736 * t742;
t888 = pkin(1) * t841 + pkin(8) * t908;
t651 = pkin(9) * t923 + t888;
t910 = t736 * t739;
t889 = pkin(2) * t908 + pkin(9) * t910;
t652 = -pkin(1) * t736 - t889;
t803 = -t738 * t651 + t652 * t930;
t558 = pkin(3) * t908 - t803;
t825 = t739 * t859;
t670 = t738 * t923 + t825;
t534 = t670 * pkin(4) + pkin(10) * t908 + t558;
t840 = t742 * t923;
t786 = pkin(1) * t840 - pkin(8) * t910;
t650 = -pkin(2) * t923 - t786;
t812 = t923 * t930;
t868 = t738 * t910;
t669 = -t812 + t868;
t663 = t669 * pkin(3);
t838 = t670 * qJ(4) - t663;
t556 = t650 - t838;
t924 = t669 * pkin(10);
t541 = t556 + t924;
t943 = t737 * t534 + t741 * t541;
t894 = t930 * t656 + t738 * t657;
t560 = -qJ(4) * t853 - t894;
t547 = -pkin(4) * t822 - t560;
t621 = t737 * t853 - t741 * t822;
t903 = t738 * t742;
t638 = (t737 * t903 + t739 * t741) * t736;
t622 = qJD(1) * t638;
t800 = pkin(5) * t741 + qJ(6) * t737;
t787 = -pkin(4) - t800;
t855 = t930 * qJ(6);
t858 = t737 * t930;
t896 = -pkin(5) * t621 + qJ(6) * t622 - t547 + qJD(6) * t858 + (-pkin(5) * t858 + t741 * t855) * qJD(5) + (-pkin(9) + t787) * t883;
t891 = qJ(4) * t761 + t951;
t942 = (qJDD(2) + 0.2e1 * t833) * t736;
t941 = -t738 * t653 + t700 * t848;
t584 = t631 * t737 - t700 * t741;
t882 = qJD(5) * t584;
t515 = t653 * t737 - t741 * t745 + t882;
t877 = pkin(4) * t633 - t878;
t939 = MDP(27) + MDP(29);
t871 = MDP(28) - MDP(31);
t860 = t736 * t931;
t604 = t672 * t930 - t738 * t860;
t674 = -t740 * t841 + t742 * t931;
t909 = t736 * t740;
t608 = t674 * t930 + t738 * t909;
t772 = g(1) * t608 + g(2) * t604 + g(3) * t670;
t821 = qJD(3) * t868;
t824 = t736 * t856;
t600 = qJD(2) * t824 + qJD(3) * t812 - t821;
t783 = t810 * qJD(2);
t658 = t736 * t783;
t660 = t786 * qJD(2);
t781 = t651 * t848 + t652 * t883 - t658 * t930 + t738 * t660;
t885 = qJD(2) * t739;
t851 = t736 * t885;
t508 = t600 * pkin(4) - t851 * t933 + t781;
t599 = qJD(3) * t670 + t736 * t849;
t819 = pkin(1) * qJD(2) * t923;
t850 = t736 * t884;
t661 = pkin(8) * t850 + t739 * t819;
t770 = -qJ(4) * t600 - qJD(4) * t670 + t661;
t513 = t599 * t933 + t770;
t937 = -qJD(5) * t943 + t508 * t741 - t513 * t737;
t936 = t584 ^ 2;
t934 = t633 ^ 2;
t744 = qJD(1) ^ 2;
t929 = pkin(3) * t653;
t554 = qJD(1) * t821 - qJD(2) * t795 - qJD(3) * t767 - qJDD(1) * t825 - t738 * t788;
t551 = -qJDD(5) + t554;
t928 = pkin(5) * t551;
t922 = qJ(4) * t631;
t921 = qJ(6) * t551;
t520 = t700 * t933 + t877;
t613 = -pkin(2) * t793 - t656;
t748 = -t633 * qJ(4) + t613;
t524 = t631 * t933 + t748;
t495 = t520 * t737 + t524 * t741;
t920 = t495 * t625;
t553 = t930 * t614 + t738 * t623;
t919 = t553 * t700;
t918 = t554 * t738;
t917 = t582 * t584;
t915 = t584 * t625;
t914 = t631 * t633;
t645 = t653 * qJ(4);
t733 = t736 ^ 2;
t911 = t733 * t744;
t907 = t737 * t738;
t904 = t738 * t741;
t902 = t933 * t551;
t532 = -pkin(4) * t631 + t553;
t545 = t633 * t933 + t922;
t898 = t737 * t532 + t741 * t545;
t895 = t930 * t651 + t738 * t652;
t893 = qJD(5) * t800 - qJD(6) * t741 - t633 * t787 - t878;
t890 = -t932 * t883 - t547;
t734 = t739 ^ 2;
t887 = -t742 ^ 2 + t734;
t879 = qJD(5) * t933;
t494 = t520 * t741 - t524 * t737;
t876 = qJD(6) - t494;
t870 = qJ(4) * t908;
t869 = t742 * t911;
t867 = t741 * t908;
t862 = t671 * t930;
t866 = -pkin(3) * t862 + t671 * t946;
t673 = t739 * t931 + t740 * t840;
t861 = t673 * t930;
t865 = -pkin(3) * t861 + t673 * t946;
t789 = qJD(1) * t819;
t814 = pkin(1) * t833;
t863 = pkin(8) * t719 + t739 * t814 + t742 * t789;
t857 = t741 * t930;
t854 = t930 * t653;
t847 = t930 * qJD(5);
t846 = 0.2e1 * pkin(1) * t733;
t844 = t742 * t875;
t843 = t736 * t874;
t765 = -pkin(8) * t815 + t863;
t573 = pkin(9) * t788 + t765;
t576 = (qJD(1) * t783 + qJDD(1) * t790) * t736;
t828 = t738 * t573 - t930 * t576 + t614 * t848 + t623 * t883;
t791 = qJDD(4) + t828;
t487 = -pkin(4) * t554 - t653 * t933 + t791;
t827 = pkin(8) * t843 + qJD(2) * t715 + t739 * t789 - t742 * t814;
t574 = -pkin(2) * t788 + t827;
t497 = pkin(3) * t745 + t554 * qJ(4) - t633 * qJD(4) + t574;
t491 = pkin(10) * t745 + t497;
t479 = t737 * t487 + t741 * t491 + t520 * t880 - t524 * t881;
t477 = qJD(6) * t625 + t479 - t921;
t492 = -pkin(5) * t625 + t876;
t837 = -t492 * t633 - t477;
t830 = -t741 * t487 + t737 * t491 + t520 * t881 + t524 * t880;
t478 = qJDD(6) + t830 + t928;
t493 = qJ(6) * t625 + t495;
t836 = -t493 * t633 + t478;
t834 = t625 * t737;
t831 = pkin(9) * t854;
t829 = -t930 * t573 - t738 * t576 + t614 * t883 - t623 * t848;
t826 = pkin(3) * t824 + t738 * t870 + t889;
t811 = t736 * t744 * t923;
t607 = t674 * t738 - t740 * t859;
t567 = -t607 * t741 + t673 * t737;
t809 = g(1) * t565 + g(2) * t567;
t568 = t607 * t737 + t673 * t741;
t808 = g(1) * t564 - g(2) * t568;
t807 = g(1) * t603 - g(2) * t607;
t806 = -g(1) * t604 + g(2) * t608;
t805 = -g(1) * t671 + g(2) * t673;
t804 = g(1) * t674 + g(2) * t672;
t601 = t669 * t741 + t737 * t908;
t602 = -t669 * t737 + t867;
t801 = pkin(5) * t601 - qJ(6) * t602;
t798 = t534 * t741 - t541 * t737;
t796 = -t676 * t737 + t702 * t741;
t792 = 0.2e1 * t839 + qJD(2);
t685 = t700 * qJ(4);
t525 = t532 - t685;
t557 = t870 - t895;
t690 = pkin(5) * t737 - qJ(6) * t741 + qJ(4);
t683 = qJD(4) * t700;
t496 = -t645 + t683 + t829;
t782 = t931 * pkin(1) + t674 * pkin(2) + t608 * pkin(3) + pkin(8) * t909 + qJ(4) * t607;
t780 = -t651 * t883 + t652 * t848 + t738 * t658 + t930 * t660;
t779 = t737 * t508 + t741 * t513 + t534 * t880 - t541 * t881;
t504 = pkin(5) * t582 - qJ(6) * t584 + t525;
t776 = t504 * t625 + t902;
t577 = t671 * t904 + t672 * t737;
t579 = t673 * t904 + t674 * t737;
t637 = t737 * t910 - t738 * t867;
t775 = g(1) * t579 + g(2) * t577 + g(3) * t637;
t578 = -t671 * t907 + t672 * t741;
t580 = -t673 * t907 + t674 * t741;
t774 = -g(1) * t580 - g(2) * t578 - g(3) * t638;
t773 = g(1) * t607 + g(2) * t603 + g(3) * t669;
t771 = t788 * MDP(8);
t769 = g(1) * t673 + g(2) * t671 - g(3) * t908;
t542 = -pkin(4) * t669 - t557;
t768 = -pkin(1) * t740 - t672 * pkin(2) - pkin(3) * t604 + pkin(8) * t860 - qJ(4) * t603;
t763 = t737 * t847 + t741 * t883 + t621;
t762 = -t737 * t883 + t741 * t847 + t622;
t760 = -t625 * t879 + t772;
t501 = t791 - t929;
t759 = -t496 * t930 + t501 * t738 - t804;
t758 = g(1) * t567 - g(2) * t565 - g(3) * t601 - t830;
t757 = t773 - t828;
t756 = -t772 - t829;
t755 = pkin(9) * qJD(3) * t700 + t769;
t519 = -qJ(4) * t851 + qJD(4) * t908 - t780;
t490 = -pkin(4) * t745 - t496;
t481 = t515 * pkin(5) + t514 * qJ(6) - t584 * qJD(6) + t490;
t754 = -t481 + t760;
t753 = -g(1) * t568 - g(2) * t564 + g(3) * t602 + t479;
t509 = -pkin(4) * t599 - t519;
t752 = g(1) * t861 + g(2) * t862 - g(3) * t824;
t540 = t631 * pkin(3) + t748;
t751 = t540 * t633 + qJDD(4) - t757;
t750 = t504 * t584 + qJDD(6) - t758;
t747 = pkin(9) * t941 + t752;
t624 = pkin(5) * t857 + t737 * t855 + t703;
t596 = t607 * pkin(3);
t594 = t603 * pkin(3);
t587 = -pkin(5) * t738 - t796;
t586 = qJ(6) * t738 + t892;
t575 = pkin(3) * t633 + t922;
t562 = -pkin(3) * t853 + t802;
t548 = t741 * t551;
t546 = t685 - t553;
t544 = pkin(3) * t700 - t878;
t538 = qJD(5) * t601 + t599 * t737 + t741 * t851;
t537 = -t599 * t741 - qJD(5) * t867 + (qJD(5) * t669 + t851) * t737;
t530 = pkin(5) * t584 + qJ(6) * t582;
t523 = pkin(3) * t599 + t770;
t522 = -pkin(3) * t851 + t781;
t510 = t542 - t801;
t503 = -pkin(5) * t670 - t798;
t502 = qJ(6) * t670 + t943;
t500 = pkin(5) * t631 - t532 * t741 + t545 * t737;
t499 = -qJ(6) * t631 + t898;
t484 = pkin(5) * t537 - qJ(6) * t538 + qJD(6) * t602 + t509;
t483 = -pkin(5) * t600 - t937;
t482 = qJ(6) * t600 + qJD(6) * t670 + t779;
t1 = [(0.2e1 * (t739 * t873 - t875 * t887) * MDP(5) + (qJDD(1) * t734 + 0.2e1 * t739 * t844) * MDP(4)) * t733 + (-t490 * t601 + t494 * t600 + t509 * t582 + t542 * t515 + t525 * t537 - t798 * t551 + t625 * t937 - t670 * t830 + t808) * MDP(27) + (-t479 * t670 - t490 * t602 - t495 * t600 + t509 * t584 - t542 * t514 + t525 * t538 + t551 * t943 - t625 * t779 + t809) * MDP(28) + (t497 * t556 + t540 * t523 + t496 * t557 + t546 * t519 + t501 * t558 + t544 * t522 - g(1) * (-pkin(9) * t671 + t768) - g(2) * (pkin(9) * t673 + t782)) * MDP(21) + (t477 * t502 + t493 * t482 + t481 * t510 + t504 * t484 + t478 * t503 + t492 * t483 - g(1) * (-pkin(5) * t564 - pkin(10) * t604 + qJ(6) * t565 - t671 * t932 + t768) - g(2) * (pkin(5) * t568 + pkin(10) * t608 + qJ(6) * t567 + t673 * t932 + t782)) * MDP(32) + (-t497 * t669 - t501 * t908 - t522 * t700 - t523 * t631 - t540 * t599 + t544 * t851 - t556 * t745 + t558 * t653 + t806) * MDP(19) + (t554 * t669 - t633 * t599 - t600 * t631 - t670 * t745) * MDP(12) + (g(1) * t740 - g(2) * t931) * MDP(2) + (g(1) * t931 + g(2) * t740) * MDP(3) + (-t660 * t793 - t888 * t788 - t765 * t923 + (-t844 - t874) * t846 + t805) * MDP(10) + t923 * t771 + (-t661 * t793 + t786 * t788 - t827 * t923 + g(1) * t672 - g(2) * t674 + (-t845 + t873) * t846) * MDP(9) + (t599 * t700 - t669 * t653 + (t764 * t742 - t631 * t885 - (-qJD(1) * t816 - t738 * t844 - t842) * t908) * t736) * MDP(14) + (-t552 * t851 + t574 * t669 + t613 * t599 + t661 * t631 + t650 * t745 + t653 * t803 + t700 * t781 + t828 * t908 - t806) * MDP(16) + (t780 * t700 - t895 * t653 + t661 * t633 - t650 * t554 + t574 * t670 + t613 * t600 + (-t553 * t885 - t742 * t829) * t736 - t807) * MDP(17) + (-t653 * t742 - t700 * t885) * t736 * MDP(15) + (-t554 * t670 + t600 * t633) * MDP(11) + (-t551 * t670 + t600 * t625) * MDP(26) + (-t515 * t670 - t537 * t625 - t551 * t601 - t582 * t600) * MDP(25) + (-t514 * t670 + t538 * t625 + t551 * t602 + t584 * t600) * MDP(24) + (-t514 * t601 + t515 * t602 - t537 * t584 - t538 * t582) * MDP(23) + (t514 * t602 + t538 * t584) * MDP(22) + (-t497 * t670 + t519 * t700 - t523 * t633 - t540 * t600 + t554 * t556 - t557 * t653 + (t496 * t742 - t546 * t885) * t736 + t807) * MDP(20) + (-t600 * t700 + t653 * t670 + (t554 * t742 + t633 * t885) * t736) * MDP(13) + (t742 * t942 - t792 * t851) * MDP(7) + (t739 * t942 + t792 * t850) * MDP(6) + qJDD(1) * MDP(1) + (t496 * t669 + t501 * t670 + t519 * t631 + t522 * t633 + t544 * t600 + t546 * t599 - t558 * t554 + t557 * t745 - t805) * MDP(18) + (t477 * t601 - t478 * t602 - t482 * t582 + t483 * t584 + t492 * t538 - t493 * t537 - t502 * t515 - t503 * t514 - t806) * MDP(30) + (-t478 * t670 - t481 * t601 - t483 * t625 + t484 * t582 - t492 * t600 + t503 * t551 + t504 * t537 + t510 * t515 + t808) * MDP(29) + (t477 * t670 + t481 * t602 + t482 * t625 - t484 * t584 + t493 * t600 - t502 * t551 - t504 * t538 + t510 * t514 - t809) * MDP(31); t887 * MDP(5) * t911 + (-t479 * t738 - t490 * t858 + t761 * t495 - t703 * t514 - t762 * t525 + t892 * t551 + t890 * t584 + t625 * t944 + t775) * MDP(28) + (-t796 * t551 - t830 * t738 + t703 * t515 + t490 * t857 + ((-qJD(5) * t676 - t948) * t741 + (-qJD(5) * t702 + t950) * t737) * t625 + t890 * t582 - t761 * t494 - t763 * t525 + t774) * MDP(27) + (-t551 * t738 - t625 * t761) * MDP(26) + t771 + (-t554 * t930 + t631 * t761 + t633 * t940 - t738 * t745) * MDP(12) + (t497 * t930 + t540 * t940 - t544 * t853 + t562 * t700 - t631 * t891 - t693 * t745 - t747) * MDP(19) + t700 * MDP(15) * t853 + (t497 * t693 - t546 * t560 - t544 * t562 - g(1) * t865 - g(2) * t866 - g(3) * t826 + t891 * t540 + ((t544 * t930 + t546 * t738) * qJD(3) + t759) * pkin(9)) * MDP(21) + (-t633 * t761 - t918) * MDP(11) + (pkin(1) * t869 + t656 * t793 + (pkin(8) * t875 + g(3)) * t910 + t804 - t863) * MDP(10) + (pkin(1) * t739 * t911 + t659 * t793 + t769 - t827) * MDP(9) + (t700 * t883 + t854 + (t631 * t739 - t700 * t903) * t886) * MDP(14) + (-t478 * t738 + t481 * t857 + t492 * t761 - t504 * t763 + t624 * t515 + t587 * t551 + t582 * t896 - t625 * t900 + t774) * MDP(29) + (t477 * t738 + t481 * t858 - t493 * t761 + t504 * t762 + t624 * t514 - t586 * t551 - t584 * t896 + t625 * t901 - t775) * MDP(31) + (-t477 * t857 - t478 * t858 - t492 * t762 + t493 * t763 - t587 * t514 - t586 * t515 - t582 * t901 + t584 * t900 + t752) * MDP(30) + (t831 - t540 * t848 + t693 * t554 - t560 * t700 - t891 * t633 + (t540 * t856 + t546 * t739) * t886 + (-t497 + t755) * t738) * MDP(20) + (-t831 + pkin(2) * t554 + t613 * t848 - t894 * t700 - t659 * t633 + (t553 * t739 - t613 * t856) * t886 + (t574 - t755) * t738) * MDP(17) + (-t514 * t738 + t551 * t858 - t584 * t761 - t625 * t762) * MDP(24) + (t514 * t857 + t515 * t858 + t582 * t762 + t584 * t763) * MDP(23) + (t514 * t858 - t584 * t762) * MDP(22) + (-t515 * t738 + t551 * t857 + t582 * t761 + t625 * t763) * MDP(25) - t739 * MDP(4) * t869 + (-t742 * t811 + t843) * MDP(6) + (-pkin(2) * t745 + t552 * t853 - t574 * t930 - t613 * t940 - t659 * t631 - t700 * t802 + t747) * MDP(16) + ((-t633 * t739 + t700 * t856) * t886 - t941) * MDP(13) + (-g(3) * t910 - t560 * t631 - t562 * t633 - t730 * t745 + t759 - t940 * t546 - t761 * t544 + (t631 * t883 + t633 * t848 - t918) * pkin(9)) * MDP(18) + (t477 * t586 + t481 * t624 + t478 * t587 - g(1) * (t580 * pkin(5) - pkin(10) * t861 + t579 * qJ(6) + t674 * t932 + t865) - g(2) * (t578 * pkin(5) - pkin(10) * t862 + t577 * qJ(6) + t672 * t932 + t866) - g(3) * (t638 * pkin(5) + t637 * qJ(6) + (pkin(4) * t739 + pkin(10) * t856) * t736 + t826) + t896 * t504 + t901 * t493 + t900 * t492) * MDP(32) + (t739 * t811 + t719) * MDP(7); MDP(11) * t914 + (-t631 ^ 2 + t934) * MDP(12) + (-t631 * t700 - t554) * MDP(13) + (-t633 * t700 - t745) * MDP(14) + t653 * MDP(15) + (-t613 * t633 + t757 - t919) * MDP(16) + (t552 * t700 + t613 * t631 - t756) * MDP(17) + (pkin(3) * t554 - qJ(4) * t745 + (-t546 - t553) * t633 + (t544 + t878) * t631) * MDP(18) + (t575 * t631 + t751 + t919 - 0.2e1 * t929) * MDP(19) + (-t540 * t631 + t575 * t633 + t700 * t878 + 0.2e1 * t645 - t683 + t756) * MDP(20) + (-t496 * qJ(4) - t501 * pkin(3) - t540 * t575 - t544 * t553 - g(1) * (qJ(4) * t608 - t596) - g(2) * (qJ(4) * t604 - t594) - g(3) * t838 + t878 * t546) * MDP(21) + (-t514 * t741 - t584 * t834) * MDP(22) + ((-t515 - t915) * t741 + (t514 + t916) * t737) * MDP(23) + (t584 * t631 - t625 * t834 - t548) * MDP(24) + (t737 * t551 - t582 * t631 - t741 * t935) * MDP(25) + t625 * t631 * MDP(26) + (qJ(4) * t515 + t494 * t631 + t877 * t582 + (t902 + (t525 - t532) * t625) * t741 + (t490 + (t545 + t879) * t625 - t772) * t737) * MDP(27) + (-qJ(4) * t514 + t898 * t625 - t495 * t631 + t877 * t584 + (-t525 * t625 - t902) * t737 + (t490 - t760) * t741) * MDP(28) + (-t492 * t631 + t500 * t625 + t515 * t690 + t582 * t893 - t737 * t754 + t741 * t776) * MDP(29) + (t499 * t582 - t500 * t584 + (-t514 * t933 + (t582 * t933 - t493) * qJD(5) + t836) * t741 + (t515 * t933 + (-t584 * t933 - t492) * qJD(5) + t837) * t737 + t773) * MDP(30) + (t493 * t631 - t499 * t625 + t514 * t690 - t584 * t893 + t737 * t776 + t741 * t754) * MDP(31) + (-t493 * t499 - t492 * t500 - g(1) * (-pkin(10) * t607 - t596) - g(2) * (-pkin(10) * t603 - t594) - g(3) * (-t663 - t924) + t893 * t504 - (t477 * t737 - t478 * t741 + (t492 * t737 + t493 * t741) * qJD(5)) * t933 + (t481 - t772) * t690) * MDP(32); -t554 * MDP(18) + (t653 - t914) * MDP(19) - t934 * MDP(20) + (t751 - t929) * MDP(21) - t548 * MDP(27) - t773 * MDP(32) + (-t631 * MDP(18) - MDP(20) * t700 - t546 * MDP(21) + t504 * MDP(32) + t582 * t939 + t871 * t584) * t700 + (-t551 * MDP(29) + t949 + (qJD(5) * t493 - t836) * MDP(32) - t871 * t935) * t741 + ((t584 * t633 - t515 + t882) * MDP(30) + (qJD(5) * t492 - t837) * MDP(32) + t871 * t551 - t939 * t935) * t737; MDP(22) * t917 + (-t582 ^ 2 + t936) * MDP(23) - t945 * MDP(24) + (t915 - t515) * MDP(25) - t551 * MDP(26) + (-t525 * t584 + t758 + t920) * MDP(27) + (t494 * t625 + t525 * t582 - t753) * MDP(28) + (-t530 * t582 - t750 + t920 - 0.2e1 * t928) * MDP(29) + (pkin(5) * t514 - qJ(6) * t515 + (t493 - t495) * t584 + (t492 - t876) * t582) * MDP(30) + (-0.2e1 * t921 - t504 * t582 + t530 * t584 + (0.2e1 * qJD(6) - t494) * t625 + t753) * MDP(31) + (t477 * qJ(6) - t478 * pkin(5) - t504 * t530 - t492 * t495 - g(1) * (-pkin(5) * t567 + qJ(6) * t568) - g(2) * (pkin(5) * t565 + qJ(6) * t564) - g(3) * t801 + t876 * t493) * MDP(32); (t551 + t917) * MDP(29) - t949 + (-t935 - t936) * MDP(31) + (-t493 * t625 + t750 + t928) * MDP(32);];
tau  = t1;
