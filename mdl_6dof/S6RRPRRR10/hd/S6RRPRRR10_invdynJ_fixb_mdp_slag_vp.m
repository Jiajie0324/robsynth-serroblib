% Calculate vector of inverse dynamics joint torques for
% S6RRPRRR10
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6,theta3]';
% MDP [35x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRPRRR10_convert_par2_MPV_fixb.m
% 
% Output:
% tau [6x1]
%   joint torques of inverse dynamics (contains inertial, gravitational Coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 14:28
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RRPRRR10_invdynJ_fixb_mdp_slag_vp(qJ, qJD, qJDD, g, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1),zeros(35,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR10_invdynJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR10_invdynJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRRR10_invdynJ_fixb_mdp_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRRR10_invdynJ_fixb_mdp_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRRR10_invdynJ_fixb_mdp_slag_vp: pkin has to be [12x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [35 1]), ...
  'S6RRPRRR10_invdynJ_fixb_mdp_slag_vp: MDP has to be [35x1] (double)'); 

%% Symbolic Calculation
% From invdyn_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 14:26:00
% EndTime: 2019-03-09 14:26:33
% DurationCPUTime: 24.44s
% Computational Cost: add. (17429->820), mult. (42691->1109), div. (0->0), fcn. (36146->18), ass. (0->343)
t1035 = qJD(5) + qJD(6);
t852 = cos(pkin(6));
t967 = qJD(1) * t852;
t830 = qJD(2) + t967;
t849 = sin(pkin(12));
t851 = cos(pkin(12));
t856 = sin(qJ(2));
t850 = sin(pkin(6));
t968 = qJD(1) * t850;
t936 = t856 * t968;
t764 = t830 * t851 - t849 * t936;
t765 = t830 * t849 + t851 * t936;
t855 = sin(qJ(4));
t860 = cos(qJ(4));
t698 = -t860 * t764 + t765 * t855;
t1060 = t1035 + t698;
t861 = cos(qJ(2));
t954 = qJD(1) * qJD(2);
t930 = t861 * t954;
t952 = qJDD(1) * t856;
t884 = t930 + t952;
t1047 = t884 * t850;
t854 = sin(qJ(5));
t858 = cos(qJ(6));
t853 = sin(qJ(6));
t859 = cos(qJ(5));
t993 = t853 * t859;
t796 = t854 * t858 + t993;
t975 = t1060 * t796;
t792 = t849 * t855 - t860 * t851;
t995 = t850 * t861;
t872 = t792 * t995;
t751 = qJD(1) * t872;
t785 = t792 * qJD(4);
t974 = -t785 + t751;
t793 = t849 * t860 + t851 * t855;
t873 = t793 * t995;
t973 = -qJD(1) * t873 + t793 * qJD(4);
t897 = pkin(2) * t856 - qJ(3) * t861;
t779 = t897 * t968;
t948 = pkin(1) * t967;
t780 = -pkin(8) * t936 + t861 * t948;
t710 = t851 * t779 - t780 * t849;
t876 = (-pkin(9) * t851 * t861 + pkin(3) * t856) * t850;
t672 = qJD(1) * t876 + t710;
t711 = t849 * t779 + t851 * t780;
t966 = qJD(1) * t861;
t935 = t850 * t966;
t911 = t849 * t935;
t690 = -pkin(9) * t911 + t711;
t1024 = pkin(9) + qJ(3);
t808 = t1024 * t849;
t809 = t1024 * t851;
t892 = -t808 * t860 - t809 * t855;
t1059 = -qJD(3) * t792 + qJD(4) * t892 - t855 * t672 - t860 * t690;
t695 = qJD(5) + t698;
t1054 = t695 ^ 2;
t953 = qJDD(1) * t852;
t829 = qJDD(2) + t953;
t1005 = t829 * t849;
t731 = t1047 * t851 + t1005;
t893 = t764 * t855 + t765 * t860;
t972 = t1047 * t849;
t902 = t829 * t851 - t972;
t616 = qJD(4) * t893 + t731 * t855 - t860 * t902;
t614 = qJDD(5) + t616;
t611 = t859 * t614;
t1058 = -t1054 * t854 + t611;
t795 = t853 * t854 - t858 * t859;
t1044 = t1060 * t795;
t613 = qJDD(6) + t614;
t691 = qJD(6) + t695;
t1057 = -t1044 * t691 + t796 * t613;
t781 = pkin(8) * t935 + t856 * t948;
t743 = pkin(3) * t911 + t781;
t1056 = -pkin(4) * t973 + pkin(10) * t974 + t743;
t1049 = -pkin(10) * t936 + t1059;
t712 = -t751 * t854 - t859 * t936;
t1046 = t785 * t854 + t712;
t1055 = -t795 * t613 - t691 * t975;
t813 = -qJD(4) + t935;
t668 = -t813 * t854 + t859 * t893;
t1017 = t668 * t853;
t666 = t859 * t813 + t854 * t893;
t600 = t858 * t666 + t1017;
t1053 = t600 * t691;
t894 = t666 * t853 - t858 * t668;
t1051 = t691 * t894;
t1050 = t698 * t813;
t749 = -t808 * t855 + t809 * t860;
t1048 = qJD(3) * t793 + qJD(4) * t749 + t672 * t860 - t855 * t690;
t959 = qJD(5) * t859;
t875 = t793 * t959 - t1046;
t713 = -t751 * t859 + t854 * t936;
t922 = t785 * t859 + t713;
t1031 = cos(qJ(1));
t938 = t1031 * t856;
t857 = sin(qJ(1));
t989 = t857 * t861;
t788 = t852 * t938 + t989;
t845 = pkin(12) + qJ(4);
t840 = sin(t845);
t841 = cos(t845);
t939 = t850 * t1031;
t733 = t788 * t841 - t840 * t939;
t937 = t1031 * t861;
t990 = t856 * t857;
t787 = -t852 * t937 + t990;
t848 = qJ(5) + qJ(6);
t842 = sin(t848);
t843 = cos(t848);
t1040 = t733 * t843 + t787 * t842;
t752 = qJ(3) * t830 + t781;
t890 = -pkin(2) * t861 - qJ(3) * t856 - pkin(1);
t775 = t890 * t850;
t757 = qJD(1) * t775;
t678 = -t752 * t849 + t851 * t757;
t636 = -pkin(3) * t935 - pkin(9) * t765 + t678;
t679 = t851 * t752 + t849 * t757;
t649 = pkin(9) * t764 + t679;
t581 = t855 * t636 + t860 * t649;
t578 = -pkin(10) * t813 + t581;
t745 = -pkin(2) * t830 + qJD(3) - t780;
t696 = -pkin(3) * t764 + t745;
t593 = pkin(4) * t698 - pkin(10) * t893 + t696;
t556 = t578 * t859 + t593 * t854;
t550 = -pkin(11) * t666 + t556;
t958 = qJD(6) * t853;
t548 = t550 * t958;
t580 = t636 * t860 - t855 * t649;
t577 = pkin(4) * t813 - t580;
t567 = pkin(5) * t666 + t577;
t790 = -t852 * t990 + t937;
t996 = t850 * t857;
t736 = t790 * t841 + t840 * t996;
t789 = t852 * t989 + t938;
t677 = t736 * t843 + t789 * t842;
t997 = t850 * t856;
t773 = t840 * t852 + t841 * t997;
t1045 = t567 * t600 + g(1) * t677 + g(2) * t1040 - g(3) * (-t773 * t843 + t842 * t995) + t548;
t1043 = t733 * t854 - t787 * t859;
t1042 = t733 * t859 + t787 * t854;
t1041 = t733 * t842 - t787 * t843;
t676 = -t736 * t842 + t789 * t843;
t1039 = t567 * t894 - g(3) * (-t773 * t842 - t843 * t995) + g(2) * t1041 - g(1) * t676;
t1038 = t613 * MDP(33) + (-t600 ^ 2 + t894 ^ 2) * MDP(30) - t600 * MDP(29) * t894;
t719 = t796 * t793;
t1030 = pkin(1) * t856;
t971 = pkin(8) * t995 + t852 * t1030;
t774 = qJ(3) * t852 + t971;
t704 = -t774 * t849 + t851 * t775;
t784 = t849 * t852 + t851 * t997;
t656 = -pkin(3) * t995 - pkin(9) * t784 + t704;
t705 = t851 * t774 + t849 * t775;
t783 = t849 * t997 - t852 * t851;
t671 = -pkin(9) * t783 + t705;
t980 = t855 * t656 + t860 * t671;
t597 = -pkin(10) * t995 + t980;
t714 = t860 * t783 + t784 * t855;
t715 = -t783 * t855 + t784 * t860;
t831 = pkin(8) * t997;
t777 = t831 + (-pkin(1) * t861 - pkin(2)) * t852;
t726 = pkin(3) * t783 + t777;
t622 = pkin(4) * t714 - pkin(10) * t715 + t726;
t986 = t859 * t597 + t854 * t622;
t978 = pkin(4) * t936 + t1048;
t1037 = t1056 * t859;
t837 = -pkin(3) * t851 - pkin(2);
t730 = pkin(4) * t792 - pkin(10) * t793 + t837;
t960 = qJD(5) * t854;
t1036 = -t1049 * t859 + t1056 * t854 - t730 * t959 + t749 * t960;
t1025 = t829 * pkin(2);
t1034 = qJDD(3) - t1025;
t961 = qJD(4) * t860;
t962 = qJD(4) * t855;
t615 = t860 * t731 + t764 * t961 - t765 * t962 + t855 * t902;
t951 = qJDD(1) * t861;
t828 = t850 * t951;
t931 = t856 * t954;
t909 = t850 * t931;
t778 = qJDD(4) - t828 + t909;
t573 = qJD(5) * t668 + t615 * t854 - t859 * t778;
t572 = t859 * t615 + t854 * t778 - t813 * t959 - t893 * t960;
t927 = t572 * t853 + t858 * t573;
t542 = -qJD(6) * t894 + t927;
t1032 = pkin(10) + pkin(11);
t1026 = g(3) * t850;
t1023 = MDP(6) * t850;
t555 = -t578 * t854 + t859 * t593;
t549 = -pkin(11) * t668 + t555;
t546 = pkin(5) * t695 + t549;
t1022 = t546 * t858;
t1021 = t550 * t858;
t1020 = t572 * t854;
t1019 = t666 * t695;
t1018 = t668 * t695;
t1016 = t698 * t854;
t1009 = t788 * t840;
t1008 = t793 * t854;
t1007 = t793 * t859;
t1004 = t829 * t852;
t1003 = t841 * t842;
t1002 = t841 * t843;
t1001 = t841 * t854;
t1000 = t841 * t859;
t999 = t841 * t861;
t844 = t850 ^ 2;
t998 = t844 * qJD(1) ^ 2;
t947 = pkin(1) * qJD(2) * t852;
t914 = qJD(1) * t947;
t946 = pkin(1) * t953;
t941 = -pkin(8) * t828 - t856 * t946 - t861 * t914;
t867 = -pkin(8) * t909 - t941;
t684 = qJ(3) * t829 + qJD(3) * t830 + t867;
t866 = qJD(2) * t897 - qJD(3) * t856;
t692 = (qJD(1) * t866 + qJDD(1) * t890) * t850;
t623 = -t684 * t849 + t851 * t692;
t883 = t931 - t951;
t587 = pkin(3) * t850 * t883 - pkin(9) * t731 + t623;
t624 = t851 * t684 + t849 * t692;
t595 = pkin(9) * t902 + t624;
t882 = t855 * t587 + t860 * t595 + t636 * t961 - t649 * t962;
t544 = pkin(10) * t778 + t882;
t912 = pkin(8) * t1047 + t856 * t914 - t861 * t946;
t703 = t912 + t1034;
t647 = -pkin(3) * t902 + t703;
t560 = t616 * pkin(4) - t615 * pkin(10) + t647;
t535 = -qJD(5) * t556 - t854 * t544 + t859 * t560;
t532 = pkin(5) * t614 - pkin(11) * t572 + t535;
t994 = t853 * t532;
t992 = t854 * t614;
t991 = t854 * t861;
t737 = t859 * t749;
t988 = t859 * t861;
t631 = pkin(4) * t893 + pkin(10) * t698;
t987 = t859 * t580 + t854 * t631;
t983 = -t1035 * t719 + t712 * t853 - t713 * t858 + t795 * t785;
t932 = t793 * t960;
t982 = -t958 * t1008 - t785 * t993 + (t1007 * t1035 - t1046) * t858 + (-t932 - t713) * t853;
t981 = pkin(5) * t875 + t978;
t977 = t854 * t730 + t737;
t755 = t866 * t850;
t964 = qJD(2) * t856;
t934 = t850 * t964;
t891 = -pkin(8) * t934 + t861 * t947;
t761 = qJD(3) * t852 + t891;
t686 = t849 * t755 + t851 * t761;
t963 = qJD(2) * t861;
t933 = t850 * t963;
t782 = pkin(8) * t933 + t856 * t947;
t846 = t856 ^ 2;
t970 = -t861 ^ 2 + t846;
t965 = qJD(2) * t851;
t957 = qJD(6) * t858;
t956 = qJD(2) - t830;
t955 = qJ(3) * qJDD(1);
t950 = 0.2e1 * t844;
t949 = g(1) * t1031;
t945 = t861 * t998;
t944 = t850 * t991;
t943 = t850 * t988;
t942 = t858 * t572 - t853 * t573 - t666 * t957;
t910 = t849 * t933;
t744 = pkin(3) * t910 + t782;
t940 = qJD(5) * t1032;
t880 = -t859 * t544 - t854 * t560 + t578 * t960 - t593 * t959;
t533 = -pkin(11) * t573 - t880;
t928 = t858 * t532 - t853 * t533;
t926 = -t597 * t854 + t859 * t622;
t924 = t656 * t860 - t855 * t671;
t921 = t859 * t730 - t749 * t854;
t685 = t851 * t755 - t761 * t849;
t918 = t695 * t859;
t917 = t830 + t967;
t916 = qJD(6) * t546 + t533;
t915 = t829 + t953;
t913 = -t860 * t587 + t855 * t595 + t636 * t962 + t649 * t961;
t907 = -t581 + (t1016 + t960) * pkin(5);
t906 = g(1) * t789 + g(2) * t787;
t905 = -g(1) * t787 + g(2) * t789;
t904 = g(1) * t790 + g(2) * t788;
t903 = g(1) * t788 - g(2) * t790;
t596 = pkin(4) * t995 - t924;
t630 = t859 * t631;
t815 = t1032 * t859;
t901 = pkin(5) * t893 + qJD(6) * t815 - t580 * t854 + t630 + (pkin(11) * t698 + t940) * t859;
t814 = t1032 * t854;
t900 = pkin(11) * t1016 + qJD(6) * t814 + t854 * t940 + t987;
t641 = -pkin(11) * t1008 + t977;
t899 = t737 * qJD(5) + qJD(6) * t641 + t1037 - t922 * pkin(11) + (-(pkin(11) * t793 - t730) * qJD(5) + t1049) * t854 - t973 * pkin(5);
t632 = pkin(5) * t792 - pkin(11) * t1007 + t921;
t898 = pkin(11) * t875 - qJD(6) * t632 + t1036;
t538 = t546 * t853 + t1021;
t694 = t715 * t859 - t944;
t554 = pkin(5) * t714 - pkin(11) * t694 + t926;
t693 = t715 * t854 + t943;
t561 = -pkin(11) * t693 + t986;
t896 = t554 * t858 - t561 * t853;
t895 = t554 * t853 + t561 * t858;
t627 = t858 * t693 + t694 * t853;
t628 = -t693 * t853 + t694 * t858;
t889 = -t703 + t906;
t653 = qJD(2) * t876 + t685;
t669 = -pkin(9) * t910 + t686;
t888 = t653 * t860 - t656 * t962 - t855 * t669 - t671 * t961;
t887 = g(2) * t857 + t949;
t545 = -pkin(4) * t778 + t913;
t885 = -pkin(10) * t614 + t577 * t695;
t881 = t855 * t653 + t656 * t961 + t860 * t669 - t671 * t962;
t563 = pkin(10) * t934 + t881;
t662 = -qJD(2) * t872 - qJD(4) * t714;
t663 = qJD(2) * t873 + qJD(4) * t715;
t588 = pkin(4) * t663 - pkin(10) * t662 + t744;
t879 = t859 * t563 + t854 * t588 - t597 * t960 + t622 * t959;
t541 = -t668 * t958 + t942;
t735 = -t790 * t840 + t841 * t996;
t877 = g(1) * t735 + g(2) * (-t841 * t939 - t1009) + g(3) * (-t840 * t997 + t841 * t852);
t874 = -t922 - t932;
t871 = g(3) * t995 - t906;
t870 = -g(3) * t997 - t904;
t868 = -qJ(3) * t964 + (qJD(3) - t745) * t861;
t564 = -pkin(4) * t934 - t888;
t865 = -qJD(5) * t986 - t563 * t854 + t859 * t588;
t530 = -qJD(6) * t538 + t928;
t864 = pkin(10) * qJD(5) * t695 + t545 + t877;
t863 = -t871 - t912;
t839 = -pkin(5) * t859 - pkin(4);
t720 = t795 * t793;
t708 = pkin(5) * t1008 - t892;
t689 = t736 * t859 + t789 * t854;
t688 = -t736 * t854 + t789 * t859;
t606 = -qJD(5) * t944 + t662 * t854 + t715 * t959 - t859 * t934;
t605 = -qJD(5) * t693 + t662 * t859 + t854 * t934;
t575 = pkin(5) * t693 + t596;
t553 = qJD(6) * t628 + t605 * t853 + t858 * t606;
t552 = -qJD(6) * t627 + t605 * t858 - t606 * t853;
t547 = pkin(5) * t606 + t564;
t540 = pkin(5) * t573 + t545;
t539 = -pkin(11) * t606 + t879;
t537 = -t550 * t853 + t1022;
t536 = pkin(5) * t663 - pkin(11) * t605 + t865;
t529 = t916 * t858 - t548 + t994;
t1 = [(t541 * t714 + t552 * t691 + t613 * t628 - t663 * t894) * MDP(31) + (-t541 * t627 - t542 * t628 - t552 * t600 + t553 * t894) * MDP(30) + (t541 * t628 - t552 * t894) * MDP(29) + (g(1) * t733 - g(2) * t736 + t726 * t616 + t647 * t714 + t696 * t663 + t744 * t698 + t924 * t778 - t888 * t813) * MDP(20) + (-g(1) * t1009 - g(2) * t735 + t726 * t615 + t647 * t715 + t696 * t662 + t744 * t893 - t980 * t778 + t881 * t813) * MDP(21) + ((-t581 * t964 - t841 * t949 + t861 * t882) * MDP(21) + (-t887 * t849 + (qJD(1) * t704 + t678) * t964 + (qJD(2) * t745 * t849 - qJD(1) * t685 - qJDD(1) * t704 - t623) * t861) * MDP(11) + (t616 * t861 - t698 * t964) * MDP(18) + (t580 * t964 + t861 * t913) * MDP(20) + (-t615 * t861 + t893 * t964) * MDP(17) + (-t887 * t851 + (-qJD(1) * t705 - t679) * t964 + (qJD(1) * t686 + qJDD(1) * t705 + t745 * t965 + t624) * t861) * MDP(12) + (t861 * t915 - t917 * t964) * MDP(7) + (-t778 * t861 - t813 * t964) * MDP(19)) * t850 + (-t615 * t714 - t616 * t715 - t662 * t698 - t663 * t893) * MDP(16) + (t615 * t715 + t662 * t893) * MDP(15) + ((qJDD(1) * t846 + 0.2e1 * t856 * t930) * MDP(4) + 0.2e1 * (t856 * t951 - t954 * t970) * MDP(5)) * t844 + (-t782 * t764 + t777 * t972 + t703 * t783 + (-t777 * t829 + t903) * t851) * MDP(11) + (t703 * t784 + t777 * t731 + t782 * t765 - t903 * t849) * MDP(12) + (t624 * t705 + t679 * t686 + t623 * t704 + t678 * t685 + t703 * t777 + t745 * t782 - g(1) * (-t857 * pkin(1) - t788 * pkin(2) + pkin(8) * t939 - t787 * qJ(3)) - g(2) * (pkin(1) * t1031 + t790 * pkin(2) + pkin(8) * t996 + t789 * qJ(3))) * MDP(14) + (g(1) * t857 - g(2) * t1031) * MDP(2) + (t663 * t813 - t714 * t778) * MDP(18) + (-t662 * t813 + t715 * t778) * MDP(17) + (-t782 * t830 - t831 * t829 - t912 * t852 + (t1004 * t861 - t883 * t950) * pkin(1) + t903) * MDP(9) + (t686 * t764 + t705 * t902 - t624 * t783 - t685 * t765 - t704 * t731 - t623 * t784 + (-t678 * t851 - t679 * t849) * t933 - t905) * MDP(13) + (-pkin(1) * t884 * t950 - t829 * t971 - t830 * t891 - t852 * t867 + t905) * MDP(10) + (t614 * t714 + t663 * t695) * MDP(26) + (-t542 * t714 - t553 * t691 - t600 * t663 - t613 * t627) * MDP(32) + (t613 * t714 + t663 * t691) * MDP(33) + (-t573 * t714 - t606 * t695 - t614 * t693 - t663 * t666) * MDP(25) + (t572 * t714 + t605 * t695 + t614 * t694 + t663 * t668) * MDP(24) + (-t572 * t693 - t573 * t694 - t605 * t666 - t606 * t668) * MDP(23) + (t572 * t694 + t605 * t668) * MDP(22) + qJDD(1) * MDP(1) + MDP(8) * t1004 + t887 * MDP(3) + ((-qJD(6) * t895 + t536 * t858 - t539 * t853) * t691 + t896 * t613 + t530 * t714 + t537 * t663 + t547 * t600 + t575 * t542 + t540 * t627 + t567 * t553 + g(1) * t1040 - g(2) * t677) * MDP(34) + (-(qJD(6) * t896 + t536 * t853 + t539 * t858) * t691 - t895 * t613 - t529 * t714 - t538 * t663 - t547 * t894 + t575 * t541 + t540 * t628 + t567 * t552 - g(1) * t1041 - g(2) * t676) * MDP(35) + (g(1) * t1042 - g(2) * t689 + t535 * t714 + t545 * t693 + t555 * t663 + t564 * t666 + t596 * t573 + t577 * t606 + t926 * t614 + t865 * t695) * MDP(27) + (-g(1) * t1043 - g(2) * t688 + t545 * t694 - t556 * t663 + t564 * t668 + t596 * t572 + t577 * t605 - t986 * t614 - t879 * t695 + t880 * t714) * MDP(28) + (t856 * t915 + t917 * t963) * t1023; (-t541 * t720 - t894 * t983) * MDP(29) + (t541 * t792 - t613 * t720 + t691 * t983 - t894 * t973) * MDP(31) + (-t541 * t719 + t542 * t720 - t600 * t983 + t894 * t982) * MDP(30) + (-(t632 * t853 + t641 * t858) * t613 - t529 * t792 + t708 * t541 - t540 * t720 - g(1) * (t1003 * t789 + t790 * t843) - g(2) * (t1003 * t787 + t788 * t843) - (-t842 * t999 + t843 * t856) * t1026 + (t853 * t899 + t858 * t898) * t691 - t981 * t894 + t983 * t567 - t973 * t538) * MDP(35) + (-t977 * t614 + t880 * t792 - t892 * t572 + t545 * t1007 - g(1) * (t1001 * t789 + t790 * t859) - g(2) * (t1001 * t787 + t788 * t859) - (-t841 * t991 + t856 * t859) * t1026 + t1036 * t695 + t978 * t668 - t973 * t556 + t874 * t577) * MDP(28) + (t1059 * t813 + t581 * t936 + t837 * t615 + t647 * t793 + t974 * t696 - t743 * t893 - t749 * t778 + t871 * t840) * MDP(21) + (t615 * t793 + t893 * t974) * MDP(15) + (t778 * t793 - t813 * t974 - t893 * t936) * MDP(17) + (-t615 * t792 - t616 * t793 - t698 * t974 - t893 * t973) * MDP(16) + t970 * MDP(5) * t998 + t813 * MDP(19) * t936 + (pkin(1) * t945 + t780 * t830 + (pkin(8) * t954 + g(3)) * t997 + t904 + t941) * MDP(10) + (-t573 * t792 - t666 * t973 - t695 * t875 - t793 * t992) * MDP(25) + (t572 * t792 + t611 * t793 + t668 * t973 + t695 * t874) * MDP(24) + (-t542 * t792 - t600 * t973 - t613 * t719 - t691 * t982) * MDP(32) + (-t936 * t956 + t828) * MDP(7) + (-pkin(2) * t731 - t765 * t781 - t889 * t849 + ((g(3) * t849 + t851 * t955) * t861 + (t679 * t856 - t711 * t861 + t851 * t868) * qJD(1)) * t850) * MDP(12) + (t921 * t614 + t535 * t792 - t892 * t573 + t545 * t1008 - g(1) * (-t1000 * t789 + t790 * t854) - g(2) * (-t1000 * t787 + t788 * t854) - (t841 * t988 + t854 * t856) * t1026 + (-t749 * t959 + (-qJD(5) * t730 - t1049) * t854 - t1037) * t695 + t978 * t666 + t973 * t555 + t875 * t577) * MDP(27) + (t1030 * t998 + t781 * t830 + t863) * MDP(9) + (t1007 * t572 + t668 * t874) * MDP(22) + (-t678 * t710 - t679 * t711 - t745 * t781 + (-t678 * t849 + t679 * t851) * qJD(3) + (-t703 - t871) * pkin(2) + (-t623 * t849 + t624 * t851 + t870) * qJ(3)) * MDP(14) + (-pkin(2) * t972 + t781 * t764 + (t889 + t1025) * t851 + ((-g(3) * t851 + t849 * t955) * t861 + (-t678 * t856 + t710 * t861 + t849 * t868) * qJD(1)) * t850) * MDP(11) + ((t632 * t858 - t641 * t853) * t613 + t530 * t792 + t708 * t542 + t540 * t719 - g(1) * (-t1002 * t789 + t790 * t842) - g(2) * (-t1002 * t787 + t788 * t842) - (t842 * t856 + t843 * t999) * t1026 + (t853 * t898 - t858 * t899) * t691 + t981 * t600 + t982 * t567 + t973 * t537) * MDP(34) + (t710 * t765 - t711 * t764 + (qJ(3) * t902 + qJD(3) * t764 + t678 * t935 + t624) * t851 + (qJ(3) * t731 + qJD(3) * t765 + t679 * t935 - t623) * t849 + t870) * MDP(13) + (t614 * t792 + t695 * t973) * MDP(26) + (t698 * t936 - t778 * t792 + t813 * t973) * MDP(18) + (t613 * t792 + t691 * t973) * MDP(33) + t829 * MDP(8) - t856 * MDP(4) * t945 + (t956 * t966 + t952) * t1023 + (t1046 * t668 + t922 * t666 + (-t1020 - t573 * t859 + (t666 * t854 - t668 * t859) * qJD(5)) * t793) * MDP(23) + (t1048 * t813 - t580 * t936 + t837 * t616 + t647 * t792 + t973 * t696 - t743 * t698 + t892 * t778 - t871 * t841) * MDP(20); (-t765 * t935 - t902) * MDP(11) + (t1005 + (t851 * t952 + (-t764 + t965) * t966) * t850) * MDP(12) + (-t764 ^ 2 - t765 ^ 2) * MDP(13) + (t678 * t765 - t679 * t764 + t1034 - t863) * MDP(14) + (-t813 * t893 + t616) * MDP(20) + (t615 + t1050) * MDP(21) + (-t666 * t893 + t1058) * MDP(27) + (-t1054 * t859 - t668 * t893 - t992) * MDP(28) + (-t600 * t893 + t1055) * MDP(34) + (t893 * t894 - t1057) * MDP(35); -t698 ^ 2 * MDP(16) + (t615 - t1050) * MDP(17) - t616 * MDP(18) + t778 * MDP(19) + (-t581 * t813 - t877 - t913) * MDP(20) + (g(1) * t736 + g(2) * t733 + g(3) * t773 - t580 * t813 + t696 * t698 - t882) * MDP(21) + (t668 * t918 + t1020) * MDP(22) + ((t572 - t1019) * t859 + (-t573 - t1018) * t854) * MDP(23) + (t695 * t918 + t992) * MDP(24) + t1058 * MDP(25) + (-pkin(4) * t573 - t581 * t666 - t630 * t695 + (t580 * t695 + t885) * t854 - t864 * t859) * MDP(27) + (-pkin(4) * t572 - t581 * t668 + t695 * t987 + t854 * t864 + t859 * t885) * MDP(28) + (t1044 * t894 + t541 * t796) * MDP(29) + (t1044 * t600 - t541 * t795 - t542 * t796 + t894 * t975) * MDP(30) + t1057 * MDP(31) + t1055 * MDP(32) + ((-t814 * t858 - t815 * t853) * t613 + t839 * t542 + t540 * t795 + (t853 * t900 - t858 * t901) * t691 + t907 * t600 + t975 * t567 - t877 * t843) * MDP(34) + (-(-t814 * t853 + t815 * t858) * t613 + t839 * t541 + t540 * t796 + (t853 * t901 + t858 * t900) * t691 - t907 * t894 - t1044 * t567 + t877 * t842) * MDP(35) + (MDP(15) * t698 + MDP(16) * t893 - MDP(18) * t813 - MDP(20) * t696 - MDP(24) * t668 + MDP(25) * t666 - MDP(26) * t695 - MDP(27) * t555 + MDP(28) * t556 + MDP(31) * t894 + MDP(32) * t600 - MDP(33) * t691 - MDP(34) * t537 + MDP(35) * t538) * t893; t668 * t666 * MDP(22) + (-t666 ^ 2 + t668 ^ 2) * MDP(23) + (t572 + t1019) * MDP(24) + (t1018 - t573) * MDP(25) + t614 * MDP(26) + (t556 * t695 - t577 * t668 - g(1) * t688 + g(2) * t1043 - g(3) * (-t773 * t854 - t943) + t535) * MDP(27) + (t555 * t695 + t577 * t666 + g(1) * t689 + g(2) * t1042 - g(3) * (-t773 * t859 + t944) + t880) * MDP(28) + (t541 + t1053) * MDP(31) + (-t542 - t1051) * MDP(32) + (-(-t549 * t853 - t1021) * t691 + (-t600 * t668 + t613 * t858 - t691 * t958) * pkin(5) + t530 + t1039) * MDP(34) + ((-t550 * t691 - t532) * t853 + (t549 * t691 - t916) * t858 + (-t613 * t853 + t668 * t894 - t691 * t957) * pkin(5) + t1045) * MDP(35) + t1038; (t942 + t1053) * MDP(31) + (-t927 - t1051) * MDP(32) + (t538 * t691 + t1039 + t928) * MDP(34) + (-t858 * t533 + t537 * t691 + t1045 - t994) * MDP(35) + (-MDP(31) * t1017 + MDP(32) * t894 - MDP(34) * t538 - MDP(35) * t1022) * qJD(6) + t1038;];
tau  = t1;
