% Calculate vector of inverse dynamics joint torques for
% S6RRPRPR9
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6,theta3,theta5]';
% MDP [32x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRPRPR9_convert_par2_MPV_fixb.m
% 
% Output:
% tau [6x1]
%   joint torques of inverse dynamics (contains inertial, gravitational Coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 11:03
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RRPRPR9_invdynJ_fixb_mdp_slag_vp(qJ, qJD, qJDD, g, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1),zeros(32,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR9_invdynJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR9_invdynJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR9_invdynJ_fixb_mdp_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR9_invdynJ_fixb_mdp_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRPR9_invdynJ_fixb_mdp_slag_vp: pkin has to be [12x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [32 1]), ...
  'S6RRPRPR9_invdynJ_fixb_mdp_slag_vp: MDP has to be [32x1] (double)'); 

%% Symbolic Calculation
% From invdyn_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 11:01:44
% EndTime: 2019-03-09 11:02:13
% DurationCPUTime: 22.37s
% Computational Cost: add. (16780->798), mult. (41835->1079), div. (0->0), fcn. (34698->18), ass. (0->321)
t819 = cos(pkin(6));
t921 = qJD(1) * t819;
t791 = qJD(2) + t921;
t815 = sin(pkin(11));
t818 = cos(pkin(11));
t823 = sin(qJ(2));
t816 = sin(pkin(6));
t922 = qJD(1) * t816;
t895 = t823 * t922;
t726 = t791 * t818 - t815 * t895;
t727 = t791 * t815 + t818 * t895;
t822 = sin(qJ(4));
t826 = cos(qJ(4));
t668 = -t826 * t726 + t727 * t822;
t664 = qJD(6) + t668;
t827 = cos(qJ(2));
t920 = qJD(1) * t827;
t894 = t816 * t920;
t775 = -qJD(4) + t894;
t814 = sin(pkin(12));
t817 = cos(pkin(12));
t856 = t726 * t822 + t727 * t826;
t635 = t817 * t775 + t814 * t856;
t825 = cos(qJ(6));
t637 = -t775 * t814 + t817 * t856;
t821 = sin(qJ(6));
t963 = t637 * t821;
t990 = -t825 * t635 - t963;
t996 = t664 * t990;
t909 = qJD(1) * qJD(2);
t890 = t827 * t909;
t907 = qJDD(1) * t823;
t845 = t890 + t907;
t984 = t845 * t816;
t757 = t814 * t825 + t817 * t821;
t747 = t757 * qJD(6);
t929 = t757 * t668 + t747;
t756 = t815 * t822 - t826 * t818;
t943 = t816 * t827;
t837 = t756 * t943;
t714 = qJD(1) * t837;
t748 = t756 * qJD(4);
t928 = -t748 + t714;
t758 = t815 * t826 + t818 * t822;
t838 = t758 * t943;
t927 = -qJD(1) * t838 + t758 * qJD(4);
t863 = pkin(2) * t823 - qJ(3) * t827;
t740 = t863 * t922;
t904 = pkin(1) * t921;
t741 = -pkin(8) * t895 + t827 * t904;
t680 = t818 * t740 - t741 * t815;
t839 = (-pkin(9) * t818 * t827 + pkin(3) * t823) * t816;
t644 = qJD(1) * t839 + t680;
t681 = t815 * t740 + t818 * t741;
t875 = t815 * t894;
t658 = -pkin(9) * t875 + t681;
t968 = pkin(9) + qJ(3);
t769 = t968 * t815;
t771 = t968 * t818;
t855 = -t769 * t826 - t771 * t822;
t995 = -qJD(3) * t756 + qJD(4) * t855 - t822 * t644 - t826 * t658;
t908 = qJDD(1) * t819;
t790 = qJDD(2) + t908;
t953 = t790 * t815;
t695 = t818 * t984 + t953;
t926 = t984 * t815;
t866 = t790 * t818 - t926;
t581 = qJD(4) * t856 + t695 * t822 - t826 * t866;
t579 = qJDD(6) + t581;
t755 = t814 * t821 - t825 * t817;
t983 = t664 * t755;
t994 = t757 * t579 - t664 * t983;
t993 = qJ(5) * t895 - t995;
t742 = pkin(8) * t894 + t823 * t904;
t706 = pkin(3) * t875 + t742;
t992 = pkin(4) * t927 - qJ(5) * t928 - qJD(5) * t758 - t706;
t991 = -t755 * t579 - t664 * t929;
t857 = t635 * t821 - t637 * t825;
t988 = t664 * t857;
t987 = t668 * t775;
t712 = -t769 * t822 + t771 * t826;
t985 = qJD(3) * t758 + qJD(4) * t712 + t644 * t826 - t822 * t658;
t682 = -t714 * t814 - t817 * t895;
t883 = -t748 * t814 - t682;
t683 = -t714 * t817 + t814 * t895;
t882 = -t748 * t817 - t683;
t975 = cos(qJ(1));
t897 = t975 * t823;
t824 = sin(qJ(1));
t940 = t824 * t827;
t751 = t819 * t897 + t940;
t811 = pkin(11) + qJ(4);
t805 = sin(t811);
t807 = cos(t811);
t898 = t816 * t975;
t697 = t751 * t807 - t805 * t898;
t896 = t975 * t827;
t941 = t823 * t824;
t750 = -t819 * t896 + t941;
t810 = pkin(12) + qJ(6);
t804 = sin(t810);
t806 = cos(t810);
t982 = t697 * t804 - t750 * t806;
t981 = t697 * t806 + t750 * t804;
t980 = pkin(3) * t815;
t752 = t819 * t940 + t897;
t870 = g(1) * t752 + g(2) * t750;
t978 = g(3) * t943 - t870;
t979 = t978 * t805;
t938 = t814 * t993 + t992 * t817;
t937 = t992 * t814 - t817 * t993;
t931 = pkin(4) * t895 + t985;
t969 = t790 * pkin(2);
t977 = qJDD(3) - t969;
t906 = qJDD(1) * t827;
t789 = t816 * t906;
t891 = t823 * t909;
t873 = t816 * t891;
t739 = qJDD(4) - t789 + t873;
t976 = -pkin(4) * t739 + qJDD(5);
t974 = pkin(1) * t823;
t970 = g(3) * t816;
t967 = pkin(10) + qJ(5);
t966 = MDP(6) * t816;
t965 = t581 * t814;
t964 = t581 * t817;
t962 = t668 * t814;
t961 = t668 * t817;
t955 = t758 * t814;
t954 = t758 * t817;
t952 = t790 * t819;
t951 = t804 * t807;
t950 = t806 * t807;
t949 = t807 * t814;
t948 = t807 * t817;
t947 = t807 * t827;
t809 = t816 ^ 2;
t946 = t809 * qJD(1) ^ 2;
t945 = t816 * t823;
t944 = t816 * t824;
t942 = t817 * t827;
t903 = pkin(1) * qJD(2) * t819;
t878 = qJD(1) * t903;
t902 = pkin(1) * t908;
t899 = -pkin(8) * t789 - t823 * t902 - t827 * t878;
t832 = -pkin(8) * t873 - t899;
t655 = qJ(3) * t790 + qJD(3) * t791 + t832;
t830 = qJD(2) * t863 - qJD(3) * t823;
t853 = -pkin(2) * t827 - qJ(3) * t823 - pkin(1);
t663 = (qJD(1) * t830 + qJDD(1) * t853) * t816;
t586 = -t655 * t815 + t818 * t663;
t844 = t891 - t906;
t556 = pkin(3) * t816 * t844 - pkin(9) * t695 + t586;
t587 = t818 * t655 + t815 * t663;
t568 = pkin(9) * t866 + t587;
t715 = qJ(3) * t791 + t742;
t736 = t853 * t816;
t720 = qJD(1) * t736;
t648 = -t715 * t815 + t818 * t720;
t603 = -pkin(3) * t894 - pkin(9) * t727 + t648;
t649 = t818 * t715 + t815 * t720;
t617 = pkin(9) * t726 + t649;
t915 = qJD(4) * t826;
t916 = qJD(4) * t822;
t843 = t822 * t556 + t826 * t568 + t603 * t915 - t617 * t916;
t510 = qJ(5) * t739 - qJD(5) * t775 + t843;
t580 = t826 * t695 + t726 * t915 - t727 * t916 + t822 * t866;
t876 = pkin(8) * t984 + t823 * t878 - t827 * t902;
t673 = t876 + t977;
t614 = -pkin(3) * t866 + t673;
t521 = t581 * pkin(4) - t580 * qJ(5) - qJD(5) * t856 + t614;
t503 = t817 * t510 + t814 * t521;
t718 = t830 * t816;
t918 = qJD(2) * t823;
t893 = t816 * t918;
t854 = -pkin(8) * t893 + t827 * t903;
t724 = qJD(3) * t819 + t854;
t656 = t818 * t718 - t724 * t815;
t621 = qJD(2) * t839 + t656;
t924 = pkin(8) * t943 + t819 * t974;
t735 = qJ(3) * t819 + t924;
t674 = -t735 * t815 + t818 * t736;
t745 = t815 * t819 + t818 * t945;
t624 = -pkin(3) * t943 - pkin(9) * t745 + t674;
t657 = t815 * t718 + t818 * t724;
t917 = qJD(2) * t827;
t892 = t816 * t917;
t874 = t815 * t892;
t640 = -pkin(9) * t874 + t657;
t675 = t818 * t735 + t815 * t736;
t744 = t815 * t945 - t819 * t818;
t643 = -pkin(9) * t744 + t675;
t842 = t822 * t621 + t624 * t915 + t826 * t640 - t643 * t916;
t529 = (qJ(5) * t918 - qJD(5) * t827) * t816 + t842;
t684 = t826 * t744 + t745 * t822;
t631 = -qJD(2) * t837 - qJD(4) * t684;
t685 = -t744 * t822 + t745 * t826;
t632 = qJD(2) * t838 + qJD(4) * t685;
t743 = pkin(8) * t892 + t823 * t903;
t707 = pkin(3) * t874 + t743;
t545 = pkin(4) * t632 - qJ(5) * t631 - qJD(5) * t685 + t707;
t513 = t817 * t529 + t814 * t545;
t552 = t822 * t603 + t826 * t617;
t549 = -qJ(5) * t775 + t552;
t708 = -pkin(2) * t791 + qJD(3) - t741;
t665 = -pkin(3) * t726 + t708;
t562 = pkin(4) * t668 - qJ(5) * t856 + t665;
t525 = t817 * t549 + t814 * t562;
t551 = t603 * t826 - t822 * t617;
t594 = pkin(4) * t856 + qJ(5) * t668;
t533 = t817 * t551 + t814 * t594;
t934 = t822 * t624 + t826 * t643;
t569 = -qJ(5) * t943 + t934;
t792 = pkin(8) * t945;
t738 = t792 + (-pkin(1) * t827 - pkin(2)) * t819;
t693 = pkin(3) * t744 + t738;
t585 = pkin(4) * t684 - qJ(5) * t685 + t693;
t537 = t817 * t569 + t814 * t585;
t936 = t682 * t821 - t683 * t825 - t747 * t758 + t748 * t755;
t913 = qJD(6) * t825;
t914 = qJD(6) * t821;
t935 = -t825 * t682 - t683 * t821 - t748 * t757 + t913 * t954 - t914 * t955;
t932 = pkin(5) * t883 + t931;
t802 = pkin(3) * t818 + pkin(2);
t694 = pkin(4) * t756 - qJ(5) * t758 - t802;
t627 = t814 * t694 + t817 * t712;
t925 = pkin(1) * t975 + pkin(8) * t944;
t812 = t823 ^ 2;
t923 = -t827 ^ 2 + t812;
t919 = qJD(2) * t818;
t912 = qJD(2) - t791;
t548 = pkin(4) * t775 + qJD(5) - t551;
t911 = -qJD(5) + t548;
t910 = qJ(3) * qJDD(1);
t905 = 0.2e1 * t809;
t901 = t827 * t946;
t565 = t580 * t814 - t817 * t739;
t566 = t580 * t817 + t739 * t814;
t900 = -t821 * t565 + t825 * t566 - t635 * t913;
t888 = -t824 * pkin(1) + pkin(8) * t898;
t502 = -t510 * t814 + t817 * t521;
t500 = pkin(5) * t581 - pkin(10) * t566 + t502;
t501 = -pkin(10) * t565 + t503;
t887 = t825 * t500 - t821 * t501;
t512 = -t529 * t814 + t817 * t545;
t524 = -t549 * t814 + t817 * t562;
t532 = -t551 * t814 + t817 * t594;
t886 = t825 * t565 + t821 * t566;
t536 = -t569 * t814 + t817 * t585;
t885 = t624 * t826 - t822 * t643;
t626 = t817 * t694 - t712 * t814;
t880 = t791 + t921;
t879 = t790 + t908;
t877 = -t826 * t556 + t822 * t568 + t603 * t916 + t617 * t915;
t696 = t751 * t805 + t807 * t898;
t753 = -t819 * t941 + t896;
t700 = t753 * t805 - t807 * t944;
t871 = -g(1) * t696 + g(2) * t700;
t869 = -g(1) * t750 + g(2) * t752;
t868 = g(1) * t753 + g(2) * t751;
t867 = g(1) * t751 - g(2) * t753;
t570 = pkin(4) * t943 - t885;
t606 = -pkin(10) * t955 + t627;
t865 = -pkin(5) * t927 + pkin(10) * t882 + qJD(6) * t606 - t938;
t597 = pkin(5) * t756 - pkin(10) * t954 + t626;
t864 = pkin(10) * t883 - qJD(6) * t597 - t937;
t862 = t821 * t500 + t825 * t501;
t861 = -t502 * t817 - t503 * t814;
t514 = pkin(5) * t668 - pkin(10) * t637 + t524;
t517 = -pkin(10) * t635 + t525;
t504 = t514 * t825 - t517 * t821;
t505 = t514 * t821 + t517 * t825;
t662 = t685 * t817 - t814 * t943;
t523 = pkin(5) * t684 - pkin(10) * t662 + t536;
t661 = t685 * t814 + t816 * t942;
t527 = -pkin(10) * t661 + t537;
t860 = t523 * t825 - t527 * t821;
t859 = t523 * t821 + t527 * t825;
t858 = t524 * t814 - t525 * t817;
t590 = t825 * t661 + t662 * t821;
t591 = -t661 * t821 + t662 * t825;
t852 = -t673 + t870;
t850 = t621 * t826 - t624 * t916 - t822 * t640 - t643 * t915;
t849 = g(1) * t975 + g(2) * t824;
t770 = t967 * t817;
t847 = pkin(5) * t856 + pkin(10) * t961 + qJD(5) * t814 + qJD(6) * t770 + t532;
t768 = t967 * t814;
t846 = pkin(10) * t962 - qJD(5) * t817 + qJD(6) * t768 + t533;
t515 = -t637 * t914 + t900;
t841 = g(1) * t700 + g(2) * t696 + g(3) * (t805 * t945 - t819 * t807);
t701 = t753 * t807 + t805 * t944;
t734 = t805 * t819 + t807 * t945;
t840 = -g(1) * t701 - g(2) * t697 - g(3) * t734;
t511 = t877 + t976;
t835 = -g(3) * t945 - t868;
t834 = -t511 + t841;
t833 = -qJ(3) * t918 + (qJD(3) - t708) * t827;
t831 = -t978 - t876;
t530 = -pkin(4) * t893 - t850;
t829 = t841 - t877;
t516 = -qJD(6) * t857 + t886;
t803 = -pkin(5) * t817 - pkin(4);
t687 = t755 * t758;
t686 = t757 * t758;
t679 = pkin(5) * t955 - t855;
t646 = t701 * t806 + t752 * t804;
t645 = -t701 * t804 + t752 * t806;
t616 = t631 * t817 + t814 * t893;
t615 = t631 * t814 - t817 * t893;
t546 = pkin(5) * t661 + t570;
t540 = -pkin(5) * t962 + t552;
t539 = pkin(5) * t635 + t548;
t535 = qJD(6) * t591 + t825 * t615 + t616 * t821;
t534 = -qJD(6) * t590 - t615 * t821 + t616 * t825;
t522 = pkin(5) * t615 + t530;
t508 = -pkin(10) * t615 + t513;
t507 = pkin(5) * t632 - pkin(10) * t616 + t512;
t506 = pkin(5) * t565 + t511;
t498 = -qJD(6) * t505 + t887;
t497 = qJD(6) * t504 + t862;
t1 = [(t693 * t580 + t614 * t685 + t665 * t631 + t707 * t856 - t934 * t739 + t842 * t775 + t871) * MDP(21) + ((-t552 * t918 + t827 * t843) * MDP(21) + (-t849 * t815 + (qJD(1) * t674 + t648) * t918 + (qJD(2) * t708 * t815 - qJD(1) * t656 - qJDD(1) * t674 - t586) * t827) * MDP(11) + (t581 * t827 - t668 * t918) * MDP(18) + (t551 * t918 + t827 * t877) * MDP(20) + (-t580 * t827 + t856 * t918) * MDP(17) + (-t849 * t818 + (-qJD(1) * t675 - t649) * t918 + (qJD(1) * t657 + qJDD(1) * t675 + t708 * t919 + t587) * t827) * MDP(12) + (t827 * t879 - t880 * t918) * MDP(7) + (-t739 * t827 - t775 * t918) * MDP(19)) * t816 + (-t580 * t684 - t581 * t685 - t631 * t668 - t632 * t856) * MDP(16) + (t580 * t685 + t631 * t856) * MDP(15) + (-t743 * t726 + t738 * t926 + t673 * t744 + (-t738 * t790 + t867) * t818) * MDP(11) + (t673 * t745 + t738 * t695 + t743 * t727 - t867 * t815) * MDP(12) + (g(1) * t697 - g(2) * t701 + t693 * t581 + t614 * t684 + t665 * t632 + t707 * t668 + t885 * t739 - t850 * t775) * MDP(20) + (t512 * t668 + t536 * t581 + t502 * t684 + t524 * t632 + t530 * t635 + t570 * t565 + t511 * t661 + t548 * t615 - g(1) * (-t697 * t817 - t750 * t814) - g(2) * (t701 * t817 + t752 * t814)) * MDP(22) + (-t513 * t668 - t537 * t581 - t503 * t684 - t525 * t632 + t530 * t637 + t570 * t566 + t511 * t662 + t548 * t616 - g(1) * (t697 * t814 - t750 * t817) - g(2) * (-t701 * t814 + t752 * t817)) * MDP(23) + (t503 * t537 + t525 * t513 + t502 * t536 + t524 * t512 + t511 * t570 + t548 * t530 - g(1) * (-pkin(4) * t697 - qJ(5) * t696 - t750 * t968 - t751 * t802 + t898 * t980 + t888) - g(2) * (pkin(4) * t701 + qJ(5) * t700 + t752 * t968 + t753 * t802 + t944 * t980 + t925)) * MDP(25) + (-t515 * t590 - t516 * t591 + t534 * t990 + t535 * t857) * MDP(27) + (-t516 * t684 - t535 * t664 - t579 * t590 + t632 * t990) * MDP(29) + ((-qJD(6) * t859 + t507 * t825 - t508 * t821) * t664 + t860 * t579 + t498 * t684 + t504 * t632 - t522 * t990 + t546 * t516 + t506 * t590 + t539 * t535 + g(1) * t981 - g(2) * t646) * MDP(31) + ((qJDD(1) * t812 + 0.2e1 * t823 * t890) * MDP(4) + 0.2e1 * (t823 * t906 - t909 * t923) * MDP(5)) * t809 + (t515 * t684 + t534 * t664 + t579 * t591 - t632 * t857) * MDP(28) + (t515 * t591 - t534 * t857) * MDP(26) + (-pkin(1) * t845 * t905 - t790 * t924 - t791 * t854 - t819 * t832 + t869) * MDP(10) + (t587 * t675 + t649 * t657 + t586 * t674 + t648 * t656 + t673 * t738 + t708 * t743 - g(1) * (-pkin(2) * t751 - qJ(3) * t750 + t888) - g(2) * (pkin(2) * t753 + qJ(3) * t752 + t925)) * MDP(14) + (t657 * t726 + t675 * t866 - t587 * t744 - t656 * t727 - t674 * t695 - t586 * t745 + (-t648 * t818 - t649 * t815) * t892 - t869) * MDP(13) + (-t631 * t775 + t685 * t739) * MDP(17) + (t632 * t775 - t684 * t739) * MDP(18) + (-t502 * t662 - t503 * t661 - t512 * t637 - t513 * t635 - t524 * t616 - t525 * t615 - t536 * t566 - t537 * t565 - t871) * MDP(24) + t849 * MDP(3) + (t579 * t684 + t632 * t664) * MDP(30) + (t823 * t879 + t880 * t917) * t966 + MDP(8) * t952 + (-(qJD(6) * t860 + t507 * t821 + t508 * t825) * t664 - t859 * t579 - t497 * t684 - t505 * t632 - t522 * t857 + t546 * t515 + t506 * t591 + t539 * t534 - g(1) * t982 - g(2) * t645) * MDP(32) + qJDD(1) * MDP(1) + (-t743 * t791 - t792 * t790 - t876 * t819 + (t827 * t952 - t844 * t905) * pkin(1) + t867) * MDP(9) + (g(1) * t824 - g(2) * t975) * MDP(2); (t552 * t895 - t802 * t580 + t614 * t758 + t928 * t665 - t706 * t856 - t712 * t739 + t775 * t995 + t979) * MDP(21) + t923 * MDP(5) * t946 + (t580 * t758 + t856 * t928) * MDP(15) + (-t580 * t756 - t581 * t758 - t668 * t928 - t856 * t927) * MDP(16) + (t739 * t758 - t775 * t928 - t856 * t895) * MDP(17) + (-t524 * t882 - t525 * t883 - t565 * t627 - t566 * t626 - t635 * t937 - t637 * t938 + t758 * t861 - t979) * MDP(24) + t775 * MDP(19) * t895 + (-t627 * t581 - t503 * t756 - t855 * t566 + t511 * t954 - g(1) * (t752 * t949 + t753 * t817) - g(2) * (t750 * t949 + t751 * t817) - (-t814 * t947 + t817 * t823) * t970 - t937 * t668 + t931 * t637 + t882 * t548 - t927 * t525) * MDP(23) + (t626 * t581 + t502 * t756 - t855 * t565 + t511 * t955 - g(1) * (-t752 * t948 + t753 * t814) - g(2) * (-t750 * t948 + t751 * t814) - (t807 * t942 + t814 * t823) * t970 + t938 * t668 + t931 * t635 + t883 * t548 + t927 * t524) * MDP(22) + (t502 * t626 + t503 * t627 - t511 * t855 + t938 * t524 + t937 * t525 + t931 * t548 - (t823 * t970 + t868) * t968 + (-t827 * t970 + t870) * (pkin(4) * t807 + qJ(5) * t805 + t802)) * MDP(25) + (-t648 * t680 - t649 * t681 - t708 * t742 + (-t648 * t815 + t649 * t818) * qJD(3) + (-t673 - t978) * pkin(2) + (-t586 * t815 + t587 * t818 + t835) * qJ(3)) * MDP(14) + (-t515 * t686 + t516 * t687 + t857 * t935 + t936 * t990) * MDP(27) + (-t516 * t756 - t579 * t686 - t664 * t935 + t927 * t990) * MDP(29) + ((t597 * t825 - t606 * t821) * t579 + t498 * t756 + t679 * t516 + t506 * t686 - g(1) * (-t752 * t950 + t753 * t804) - g(2) * (-t750 * t950 + t751 * t804) - (t804 * t823 + t806 * t947) * t970 + (t821 * t864 - t825 * t865) * t664 - t932 * t990 + t935 * t539 + t927 * t504) * MDP(31) + (-t515 * t687 - t857 * t936) * MDP(26) + (t515 * t756 - t579 * t687 + t664 * t936 - t857 * t927) * MDP(28) + (-(t597 * t821 + t606 * t825) * t579 - t497 * t756 + t679 * t515 - t506 * t687 - g(1) * (t752 * t951 + t753 * t806) - g(2) * (t750 * t951 + t751 * t806) - (-t804 * t947 + t806 * t823) * t970 + (t821 * t865 + t825 * t864) * t664 - t932 * t857 + t936 * t539 - t927 * t505) * MDP(32) + (pkin(1) * t901 + t741 * t791 + (pkin(8) * t909 + g(3)) * t945 + t868 + t899) * MDP(10) + (t579 * t756 + t664 * t927) * MDP(30) + (t668 * t895 - t739 * t756 + t775 * t927) * MDP(18) + (-t895 * t912 + t789) * MDP(7) + (-pkin(2) * t695 - t727 * t742 - t852 * t815 + ((g(3) * t815 + t818 * t910) * t827 + (t649 * t823 - t681 * t827 + t818 * t833) * qJD(1)) * t816) * MDP(12) + (t680 * t727 - t681 * t726 + (qJ(3) * t866 + qJD(3) * t726 + t648 * t894 + t587) * t818 + (qJ(3) * t695 + qJD(3) * t727 + t649 * t894 - t586) * t815 + t835) * MDP(13) + t790 * MDP(8) + (t912 * t920 + t907) * t966 + (-t551 * t895 - t802 * t581 + t614 * t756 + t927 * t665 - t706 * t668 + t855 * t739 + t775 * t985 - t978 * t807) * MDP(20) - t823 * MDP(4) * t901 + (-pkin(2) * t926 + t742 * t726 + (t852 + t969) * t818 + ((-g(3) * t818 + t815 * t910) * t827 + (-t648 * t823 + t680 * t827 + t815 * t833) * qJD(1)) * t816) * MDP(11) + (t742 * t791 + t946 * t974 + t831) * MDP(9); (-t727 * t894 - t866) * MDP(11) + (t953 + (t818 * t907 + (-t726 + t919) * t920) * t816) * MDP(12) + (-t726 ^ 2 - t727 ^ 2) * MDP(13) + (t648 * t727 - t649 * t726 - t831 + t977) * MDP(14) + (-t775 * t856 + t581) * MDP(20) + (t580 + t987) * MDP(21) + (-t635 * t856 - t668 * t962 + t964) * MDP(22) + (-t637 * t856 - t668 * t961 - t965) * MDP(23) + (-t565 * t814 - t566 * t817 - (t635 * t817 - t637 * t814) * t668) * MDP(24) + (-t548 * t856 - t668 * t858 - t861 + t978) * MDP(25) + (t856 * t990 + t991) * MDP(31) + (t856 * t857 - t994) * MDP(32); -t668 ^ 2 * MDP(16) + (t580 - t987) * MDP(17) - t581 * MDP(18) + t739 * MDP(19) + (-t552 * t775 + t829) * MDP(20) + (-t551 * t775 + t665 * t668 - t840 - t843) * MDP(21) + (-qJ(5) * t965 - pkin(4) * t565 - t552 * t635 + (t814 * t911 - t532) * t668 + t834 * t817) * MDP(22) + (-qJ(5) * t964 - pkin(4) * t566 - t552 * t637 + (t817 * t911 + t533) * t668 - t834 * t814) * MDP(23) + (t532 * t637 + t533 * t635 + (-qJ(5) * t565 - qJD(5) * t635 - t524 * t668 + t503) * t817 + (qJ(5) * t566 + qJD(5) * t637 - t525 * t668 - t502) * t814 + t840) * MDP(24) + (-t524 * t532 - t525 * t533 - t548 * t552 - t858 * qJD(5) + t834 * pkin(4) + (-t502 * t814 + t503 * t817 + t840) * qJ(5)) * MDP(25) + (t515 * t757 + t857 * t983) * MDP(26) + (-t515 * t755 - t516 * t757 + t857 * t929 - t983 * t990) * MDP(27) + t994 * MDP(28) + t991 * MDP(29) + ((-t768 * t825 - t770 * t821) * t579 + t803 * t516 + t506 * t755 + t540 * t990 + (t821 * t846 - t825 * t847) * t664 + t929 * t539 + t841 * t806) * MDP(31) + (-(-t768 * t821 + t770 * t825) * t579 + t803 * t515 + t506 * t757 + t540 * t857 + (t821 * t847 + t825 * t846) * t664 - t983 * t539 - t841 * t804) * MDP(32) + (MDP(15) * t668 + MDP(16) * t856 - MDP(18) * t775 - MDP(20) * t665 - MDP(22) * t524 + MDP(23) * t525 + MDP(28) * t857 - MDP(29) * t990 - MDP(30) * t664 - MDP(31) * t504 + MDP(32) * t505) * t856; (t637 * t668 + t565) * MDP(22) + (-t635 * t668 + t566) * MDP(23) + (-t635 ^ 2 - t637 ^ 2) * MDP(24) + (t524 * t637 + t525 * t635 - t829 + t976) * MDP(25) + (t516 - t988) * MDP(31) + (t515 + t996) * MDP(32); t857 * t990 * MDP(26) + (t857 ^ 2 - t990 ^ 2) * MDP(27) + (t900 - t996) * MDP(28) + (-t886 - t988) * MDP(29) + t579 * MDP(30) + (t505 * t664 + t539 * t857 - g(1) * t645 + g(2) * t982 - g(3) * (-t734 * t804 - t806 * t943) + t887) * MDP(31) + (t504 * t664 - t539 * t990 + g(1) * t646 + g(2) * t981 - g(3) * (-t734 * t806 + t804 * t943) - t862) * MDP(32) + (-MDP(28) * t963 + MDP(29) * t857 - MDP(31) * t505 - MDP(32) * t504) * qJD(6);];
tau  = t1;