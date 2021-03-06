% Calculate minimal parameter regressor of Coriolis joint torque vector for
% S6RPRRRR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d1,d3,d4,d5,d6,theta2]';
% MDP [35x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RPRRRR12_convert_par2_MPV_fixb.m
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 08:05
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RPRRRR12_coriolisvecJ_fixb_mdp_slag_vp(qJ, qJD, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(14,1),zeros(35,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRR12_coriolisvecJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRR12_coriolisvecJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6RPRRRR12_coriolisvecJ_fixb_mdp_slag_vp: pkin has to be [14x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [35 1]), ...
  'S6RPRRRR12_coriolisvecJ_fixb_mdp_slag_vp: MDP has to be [35x1] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 08:01:15
% EndTime: 2019-03-09 08:01:47
% DurationCPUTime: 17.68s
% Computational Cost: add. (33620->739), mult. (115994->1062), div. (0->0), fcn. (102809->16), ass. (0->308)
t773 = cos(qJ(3));
t764 = cos(pkin(7));
t761 = sin(pkin(6));
t762 = cos(pkin(14));
t920 = t761 * t762;
t760 = sin(pkin(7));
t765 = cos(pkin(6));
t922 = t760 * t765;
t804 = t764 * t920 + t922;
t792 = t804 * qJD(1);
t769 = sin(qJ(3));
t758 = sin(pkin(14));
t886 = qJD(1) * t761;
t861 = t758 * t886;
t838 = t769 * t861;
t690 = t773 * t792 - t838;
t914 = t764 * t769;
t698 = t761 * (t758 * t773 + t762 * t914) + t769 * t922;
t693 = t698 * qJD(1);
t772 = cos(qJ(4));
t763 = cos(pkin(8));
t768 = sin(qJ(4));
t917 = t763 * t768;
t649 = t690 * t772 - t693 * t917;
t759 = sin(pkin(8));
t880 = qJD(4) * t772;
t855 = t759 * t880;
t969 = -t649 + t855;
t860 = t762 * t886;
t885 = qJD(1) * t765;
t871 = pkin(1) * t885;
t725 = qJ(2) * t860 + t758 * t871;
t684 = pkin(10) * t792 + t725;
t746 = t762 * t871;
t928 = t758 * t761;
t790 = pkin(2) * t765 + (-pkin(10) * t764 - qJ(2)) * t928;
t688 = qJD(1) * t790 + t746;
t714 = (-pkin(10) * t758 * t760 - pkin(2) * t762 - pkin(1)) * t761;
t705 = qJD(1) * t714 + qJD(2);
t913 = t764 * t773;
t921 = t760 * t773;
t895 = t688 * t913 + t705 * t921;
t835 = -t769 * t684 + t895;
t945 = pkin(11) * t763;
t605 = -t693 * t945 + t835;
t784 = -t769 * (t688 * t764 + t705 * t760) - t773 * t684;
t918 = t763 * t690;
t606 = -pkin(11) * t918 + t784;
t685 = t759 * t690;
t651 = pkin(3) * t693 - pkin(11) * t685;
t925 = t759 * t768;
t750 = pkin(11) * t925;
t916 = t763 * t772;
t958 = pkin(3) * t916 - t750;
t968 = t958 * qJD(4) - t772 * t605 - t606 * t917 - t651 * t925;
t930 = t693 * t759;
t967 = pkin(12) * t930 - t968;
t557 = -t606 * t759 + t763 * t651;
t909 = t772 * t693;
t648 = t690 * t768 + t763 * t909;
t965 = pkin(4) * t648 - pkin(12) * t649 + t557 - (pkin(4) * t768 - pkin(12) * t772) * t759 * qJD(4);
t881 = qJD(4) * t768;
t856 = t759 * t881;
t964 = t648 - t856;
t919 = t762 * t773;
t712 = (-t758 * t914 + t919) * t886;
t794 = (-t758 * t913 - t762 * t769) * t761;
t711 = qJD(1) * t794;
t841 = t760 * t861;
t791 = t711 * t763 + t759 * t841;
t908 = t772 * t773;
t912 = t768 * t769;
t802 = t763 * t908 - t912;
t963 = t712 * t772 + t768 * t791 - t764 * t855 - (t802 * qJD(4) + (-t763 * t912 + t908) * qJD(3)) * t760;
t883 = qJD(3) * t769;
t962 = t763 * t841 + (-t760 * t883 - t711) * t759;
t767 = sin(qJ(5));
t771 = cos(qJ(5));
t730 = -t771 * t763 + t767 * t925;
t926 = t759 * t767;
t894 = -qJD(5) * t730 - t693 * t926 + t771 * t969;
t924 = t759 * t771;
t731 = t763 * t767 + t768 * t924;
t893 = qJD(5) * t731 + t693 * t924 + t767 * t969;
t923 = t759 * t772;
t889 = pkin(3) * t917 + pkin(11) * t923;
t961 = t889 * qJD(4) - t768 * t605 + t772 * (t606 * t763 + t651 * t759);
t737 = t760 * t860;
t834 = t764 * t885 - t737;
t808 = qJD(3) + t834;
t795 = t808 * t759;
t781 = t795 + t918;
t632 = t768 * t781 + t909;
t868 = t762 * t913;
t843 = t761 * t868;
t882 = qJD(3) * t773;
t858 = t760 * t882;
t682 = t858 * t885 + (qJD(1) * t843 - t838) * qJD(3);
t692 = t698 * qJD(3);
t683 = qJD(1) * t692;
t570 = qJD(4) * t632 + t768 * t682 + t683 * t916;
t709 = t772 * t795;
t630 = -t690 * t916 + t693 * t768 - t709;
t629 = qJD(5) + t630;
t955 = t763 * t808 + qJD(4) - t685;
t658 = t771 * t955;
t585 = t632 * t767 - t658;
t584 = qJD(6) + t585;
t960 = (t758 ^ 2 + t762 ^ 2) * MDP(6) * t761 ^ 2;
t866 = t765 * t921;
t927 = t758 * t769;
t697 = t761 * t927 - t843 - t866;
t915 = t764 * t765;
t803 = t760 * t920 - t915;
t663 = -t697 * t759 + t763 * t803;
t793 = t803 * t759;
t780 = -t697 * t763 - t793;
t947 = pkin(1) * t765;
t890 = qJ(2) * t920 + t758 * t947;
t695 = pkin(10) * t804 + t890;
t749 = t762 * t947;
t699 = t749 + t790;
t814 = t699 * t764 + t714 * t760;
t951 = -t773 * t695 - t769 * t814;
t604 = pkin(11) * t780 - t951;
t609 = -pkin(3) * t803 - t769 * t695 - t698 * t945 + t773 * t814;
t659 = -t699 * t760 + t764 * t714;
t946 = pkin(11) * t759;
t621 = pkin(3) * t697 - t698 * t946 + t659;
t864 = t772 * t604 + t609 * t917 + t621 * t925;
t533 = -pkin(12) * t663 + t864;
t553 = -t609 * t759 + t763 * t621;
t929 = t698 * t768;
t640 = t697 * t916 + t772 * t793 + t929;
t641 = t698 * t772 + t768 * t780;
t536 = pkin(4) * t640 - pkin(12) * t641 + t553;
t959 = t771 * t533 + t767 * t536;
t910 = t769 * t772;
t911 = t768 * t773;
t801 = t763 * t911 + t910;
t898 = -t712 * t768 + t772 * t791 + t764 * t856 + (t801 * qJD(4) + (t763 * t910 + t911) * qJD(3)) * t760;
t722 = pkin(12) * t763 + t889;
t723 = (-pkin(4) * t772 - pkin(12) * t768 - pkin(3)) * t759;
t892 = t771 * t722 + t767 * t723;
t891 = pkin(4) * t930 + t961;
t876 = qJD(5) * t771;
t878 = qJD(5) * t767;
t957 = t722 * t878 - t723 * t876 + t965 * t767 + t771 * t967;
t581 = pkin(11) * t781 - t784;
t583 = pkin(3) * t808 + t605;
t656 = -t688 * t760 + t764 * t705;
t614 = -pkin(3) * t690 - pkin(11) * t930 + t656;
t530 = t772 * t581 + t583 * t917 + t614 * t925;
t525 = pkin(12) * t955 + t530;
t548 = -t583 * t759 + t763 * t614;
t527 = pkin(4) * t630 - pkin(12) * t632 + t548;
t496 = t525 * t771 + t527 * t767;
t873 = qJD(1) * qJD(2);
t852 = t761 * t873;
t837 = t758 * t852;
t810 = t764 * t837;
t884 = qJD(2) * t761;
t739 = t884 * t919;
t857 = t764 * t882;
t862 = qJD(1) * t739 + t688 * t857 + t705 * t858;
t777 = (-qJD(3) * t684 - t810) * t769 + t862;
t932 = t683 * t763;
t573 = -pkin(11) * t932 + t777;
t787 = qJD(2) * t794;
t783 = qJD(1) * t787;
t775 = qJD(3) * t784 + t783;
t574 = -t682 * t945 + t775;
t811 = t760 * t837;
t639 = pkin(3) * t683 - t682 * t946 + t811;
t853 = t763 * t880;
t789 = -t772 * t573 - t574 * t917 + t581 * t881 - t583 * t853 - t614 * t855 - t639 * t925;
t933 = t683 * t759;
t500 = pkin(12) * t933 - t789;
t549 = -t574 * t759 + t763 * t639;
t569 = qJD(4) * t709 + t772 * t682 - t683 * t917 + t690 * t853 - t693 * t881;
t521 = pkin(4) * t570 - pkin(12) * t569 + t549;
t485 = -qJD(5) * t496 - t500 * t767 + t771 * t521;
t483 = -pkin(5) * t570 - t485;
t587 = t771 * t632 + t767 * t955;
t954 = t584 * (pkin(5) * t587 + pkin(13) * t584) + t483;
t529 = -t768 * t581 + t772 * (t583 * t763 + t614 * t759);
t953 = -t768 * t604 + t772 * (t609 * t763 + t621 * t759);
t859 = t758 * t884;
t778 = t699 * t857 + t714 * t858 + t739 + (-qJD(3) * t695 - t764 * t859) * t769;
t593 = -t692 * t945 + t778;
t691 = (t866 + (t868 - t927) * t761) * qJD(3);
t776 = qJD(3) * t951 + t787;
t594 = -t691 * t945 + t776;
t840 = t760 * t859;
t644 = pkin(3) * t692 - t691 * t946 + t840;
t854 = t763 * t881;
t950 = t772 * (t594 * t763 + t644 * t759) - t768 * t593 - t604 * t880 - t609 * t854 - t621 * t856;
t788 = t772 * t593 + t594 * t917 - t604 * t881 + t609 * t853 + t621 * t855 + t644 * t925;
t931 = t692 * t759;
t506 = pkin(12) * t931 + t788;
t554 = -t594 * t759 + t763 * t644;
t588 = qJD(4) * t641 + t691 * t768 + t692 * t916;
t589 = -t692 * t917 + t691 * t772 + (t772 * t780 - t929) * qJD(4);
t523 = pkin(4) * t588 - pkin(12) * t589 + t554;
t949 = -qJD(5) * t959 - t506 * t767 + t523 * t771;
t948 = t765 * (MDP(4) * t758 + MDP(5) * t762);
t541 = t771 * t569 + qJD(5) * t658 + (-qJD(5) * t632 + t933) * t767;
t766 = sin(qJ(6));
t770 = cos(qJ(6));
t874 = qJD(6) * t770;
t865 = t770 * t541 + t766 * t570 + t629 * t874;
t875 = qJD(6) * t766;
t510 = -t587 * t875 + t865;
t943 = t510 * t766;
t806 = t767 * t569 - t683 * t924;
t542 = qJD(5) * t587 + t806;
t942 = t542 * t766;
t941 = t542 * t770;
t936 = t587 * t766;
t550 = -t770 * t629 + t936;
t940 = t550 * t584;
t552 = t587 * t770 + t629 * t766;
t939 = t552 * t584;
t938 = t585 * t629;
t937 = t587 * t629;
t935 = t630 * t771;
t934 = t683 * t759 ^ 2;
t905 = t530 - t629 * (pkin(5) * t767 - pkin(13) * t771);
t561 = pkin(4) * t632 + pkin(12) * t630;
t904 = t771 * t529 + t767 * t561;
t702 = t760 * t801 + t764 * t925;
t729 = -t759 * t921 + t763 * t764;
t664 = t702 * t767 - t729 * t771;
t901 = qJD(5) * t664 + t767 * t962 + t771 * t963;
t665 = t702 * t771 + t729 * t767;
t900 = qJD(5) * t665 - t767 * t963 + t771 * t962;
t899 = t964 * pkin(5) + qJD(5) * t892 - t767 * t967 + t965 * t771;
t706 = t731 * t766 + t770 * t923;
t897 = -qJD(6) * t706 - t766 * t964 + t770 * t894;
t870 = t766 * t923;
t896 = -qJD(6) * t870 + t731 * t874 + t766 * t894 + t770 * t964;
t887 = MDP(19) * t759;
t879 = qJD(5) * t766;
t877 = qJD(5) * t770;
t484 = t771 * t500 + t767 * t521 - t525 * t878 + t527 * t876;
t482 = pkin(13) * t570 + t484;
t807 = t768 * t573 - t574 * t916 + t581 * t880 + t583 * t854 + t614 * t856 - t639 * t923;
t501 = -pkin(4) * t933 + t807;
t491 = pkin(5) * t542 - pkin(13) * t541 + t501;
t850 = -t482 * t766 + t770 * t491;
t848 = t541 * t766 - t770 * t570;
t846 = t771 * t629;
t845 = t584 * t770;
t742 = -pkin(5) * t771 - pkin(13) * t767 - pkin(4);
t844 = pkin(13) * t632 - qJD(6) * t742 + t904;
t559 = t632 * t766 - t770 * t935;
t832 = t770 * t876 - t559;
t721 = t750 + (-pkin(3) * t772 - pkin(4)) * t763;
t666 = pkin(5) * t730 - pkin(13) * t731 + t721;
t831 = pkin(13) * t964 - qJD(6) * t666 + t957;
t668 = -pkin(13) * t923 + t892;
t830 = -pkin(5) * t893 + pkin(13) * t894 + qJD(6) * t668 - t891;
t701 = -t760 * t802 - t764 * t923;
t829 = -qJD(6) * t701 + t901;
t828 = qJD(6) * t665 - t898;
t826 = t482 * t770 + t491 * t766;
t494 = pkin(13) * t629 + t496;
t524 = -pkin(4) * t955 - t529;
t504 = t585 * pkin(5) - t587 * pkin(13) + t524;
t489 = t494 * t770 + t504 * t766;
t825 = t494 * t766 - t504 * t770;
t498 = pkin(13) * t640 + t959;
t532 = pkin(4) * t663 - t953;
t607 = t641 * t767 + t663 * t771;
t608 = t641 * t771 - t663 * t767;
t514 = pkin(5) * t607 - pkin(13) * t608 + t532;
t824 = t498 * t770 + t514 * t766;
t823 = -t498 * t766 + t514 * t770;
t495 = -t525 * t767 + t527 * t771;
t820 = -t533 * t767 + t536 * t771;
t556 = t608 * t770 + t640 * t766;
t555 = t608 * t766 - t640 * t770;
t813 = -t722 * t767 + t723 * t771;
t812 = (-qJ(2) * t861 + t746) * t758 - t725 * t762;
t800 = -t584 * t874 - t942;
t799 = -t584 * t875 + t941;
t798 = -pkin(12) * t570 + t524 * t629;
t797 = t771 * t506 + t767 * t523 - t533 * t878 + t536 * t876;
t493 = -pkin(5) * t629 - t495;
t785 = -pkin(13) * t542 + (t493 + t495) * t584;
t779 = qJD(4) * t955;
t507 = -pkin(4) * t931 - t950;
t707 = t731 * t770 - t870;
t667 = pkin(5) * t923 - t813;
t558 = -t770 * t632 - t766 * t935;
t546 = -qJD(5) * t607 + t589 * t771 + t692 * t926;
t545 = qJD(5) * t608 + t589 * t767 - t692 * t924;
t516 = -qJD(6) * t555 + t546 * t770 + t588 * t766;
t515 = qJD(6) * t556 + t546 * t766 - t588 * t770;
t512 = -pkin(5) * t632 + t529 * t767 - t561 * t771;
t511 = qJD(6) * t552 + t848;
t497 = -pkin(5) * t640 - t820;
t492 = pkin(5) * t545 - pkin(13) * t546 + t507;
t487 = -pkin(5) * t588 - t949;
t486 = pkin(13) * t588 + t797;
t481 = -qJD(6) * t489 + t850;
t480 = -qJD(6) * t825 + t826;
t1 = [(-t683 * t663 + t692 * t955) * t887 + (t554 * t632 + t553 * t569 + t549 * t641 + t548 * t589 - t788 * t955 - t789 * t663 + (-t530 * t692 - t683 * t864) * t759) * MDP(21) + (t529 * t931 + t548 * t588 + t549 * t640 + t553 * t570 + t554 * t630 + t663 * t807 + t933 * t953 + t950 * t955) * MDP(20) + (-t663 * t569 + t955 * t589 + (t632 * t692 + t641 * t683) * t759) * MDP(17) + (t663 * t570 - t955 * t588 + (-t630 * t692 - t640 * t683) * t759) * MDP(18) + (t485 * t640 + t495 * t588 + t501 * t607 + t507 * t585 + t524 * t545 + t532 * t542 + t820 * t570 + t629 * t949) * MDP(27) + ((t762 * t890 + (qJ(2) * t928 - t749) * t758) * qJD(1) - t812) * MDP(7) * t884 + ((-qJD(6) * t824 - t486 * t766 + t492 * t770) * t584 + t823 * t542 + t481 * t607 - t825 * t545 + t487 * t550 + t497 * t511 + t483 * t555 + t493 * t515) * MDP(34) + (-t484 * t640 - t496 * t588 + t501 * t608 + t507 * t587 + t524 * t546 + t532 * t541 - t570 * t959 - t629 * t797) * MDP(28) + 0.2e1 * t873 * t960 + (-t510 * t555 - t511 * t556 - t515 * t552 - t516 * t550) * MDP(30) + (t510 * t556 + t516 * t552) * MDP(29) - 0.2e1 * t852 * t948 + (-t682 * t697 - t683 * t698 + t690 * t691 - t692 * t693) * MDP(9) + (t682 * t698 + t691 * t693) * MDP(8) + (t656 * t692 + t659 * t683 - t690 * t840 + t697 * t811 - t775 * t803 + t776 * t808) * MDP(13) + (t656 * t691 + t659 * t682 + t693 * t840 + t698 * t811 + t777 * t803 - t778 * t808) * MDP(14) + (t570 * t640 + t588 * t629) * MDP(26) + (-t542 * t640 - t545 * t629 - t570 * t607 - t585 * t588) * MDP(25) + (t541 * t640 + t546 * t629 + t570 * t608 + t587 * t588) * MDP(24) + (-t569 * t640 - t570 * t641 - t588 * t632 - t589 * t630) * MDP(16) + (t569 * t641 + t589 * t632) * MDP(15) + (-t511 * t607 - t515 * t584 - t542 * t555 - t545 * t550) * MDP(32) + (t510 * t607 + t516 * t584 + t542 * t556 + t545 * t552) * MDP(31) + (t542 * t607 + t545 * t584) * MDP(33) + (t541 * t608 + t546 * t587) * MDP(22) + (-t541 * t607 - t542 * t608 - t545 * t587 - t546 * t585) * MDP(23) + (t683 * t803 - t692 * t808) * MDP(11) + (-t682 * t803 + t691 * t808) * MDP(10) + (-(qJD(6) * t823 + t486 * t770 + t492 * t766) * t584 - t824 * t542 - t480 * t607 - t489 * t545 + t487 * t552 + t497 * t510 + t483 * t556 + t493 * t516) * MDP(35); t812 * MDP(7) * t886 + (t764 * t683 - t711 * t808 + (t690 * t861 - t808 * t883) * t760) * MDP(13) + (t764 * t682 + t712 * t808 + (-t693 * t861 - t808 * t882) * t760) * MDP(14) + (t729 * t570 - t630 * t962 - t701 * t933) * MDP(20) + (t729 * t569 - t632 * t962 - t702 * t933) * MDP(21) + (t542 * t701 - t570 * t664 + t585 * t898 - t629 * t900) * MDP(27) + (t541 * t701 - t570 * t665 + t587 * t898 + t629 * t901) * MDP(28) + ((-t665 * t766 + t701 * t770) * t542 + t664 * t511 + (t766 * t829 - t770 * t828) * t584 + t900 * t550) * MDP(34) + (-(t665 * t770 + t701 * t766) * t542 + t664 * t510 + (t766 * t828 + t770 * t829) * t584 + t900 * t552) * MDP(35) - (t898 * MDP(20) - MDP(21) * t963) * t955 + (t761 * t948 - t960) * qJD(1) ^ 2; (-t693 * t955 + t932) * t887 + (-t763 * t570 + t772 * t934 + t955 * t648 + (t693 * t630 - t768 * t779) * t759) * MDP(18) + (t763 * t569 + t768 * t934 - t955 * t649 + (-t693 * t632 + t772 * t779) * t759) * MDP(17) + (t813 * t570 - t485 * t923 + t721 * t542 + t501 * t730 + ((-qJD(5) * t722 - t965) * t771 + (-qJD(5) * t723 + t967) * t767) * t629 + t891 * t585 + t893 * t524 - t964 * t495) * MDP(27) + (-t759 * pkin(3) * t570 - t529 * t930 - t548 * t964 - t549 * t923 - t557 * t630 - t807 * t763 + t958 * t933 - t955 * t961) * MDP(20) + (t484 * t923 + t496 * t964 + t501 * t731 + t894 * t524 + t721 * t541 - t892 * t570 + t891 * t587 + t629 * t957) * MDP(28) + (-t570 * t923 - t629 * t964) * MDP(26) + (-t541 * t923 + t570 * t731 - t587 * t964 + t629 * t894) * MDP(24) + (t542 * t923 - t570 * t730 + t585 * t964 - t629 * t893) * MDP(25) + (t789 * t763 - t557 * t632 - t548 * t649 + (-pkin(3) * t569 + t530 * t693 + t548 * t880 + t549 * t768 - t683 * t889) * t759 - t968 * t955) * MDP(21) + (t569 * t925 + t632 * t969) * MDP(15) + ((t666 * t770 - t668 * t766) * t542 + t481 * t730 + t667 * t511 + t483 * t706 + (t766 * t831 - t770 * t830) * t584 + t899 * t550 + t896 * t493 - t893 * t825) * MDP(34) + ((qJD(3) - t737) * t693 + (t693 * t915 - t692) * qJD(1)) * MDP(11) + (t630 * t649 + t632 * t648 + (t569 * t772 - t570 * t768 + (-t630 * t772 - t632 * t768) * qJD(4)) * t759) * MDP(16) + (t541 * t731 + t587 * t894) * MDP(22) + (-t541 * t730 - t542 * t731 - t585 * t894 - t587 * t893) * MDP(23) + (qJD(3) * t895 - t656 * t690 + t769 * t810 + t834 * t835 - t862) * MDP(14) + (-t511 * t730 - t542 * t706 - t550 * t893 - t584 * t896) * MDP(32) + (t510 * t707 + t552 * t897) * MDP(29) + (t510 * t730 + t542 * t707 + t552 * t893 + t584 * t897) * MDP(31) + (-t510 * t706 - t511 * t707 - t550 * t897 - t552 * t896) * MDP(30) + (-(t666 * t766 + t668 * t770) * t542 - t480 * t730 + t667 * t510 + t483 * t707 + (t766 * t830 + t770 * t831) * t584 + t899 * t552 + t897 * t493 - t893 * t489) * MDP(35) + (t542 * t730 + t584 * t893) * MDP(33) + (-t690 ^ 2 + t693 ^ 2) * MDP(9) - t693 * t690 * MDP(8) + (-t690 * t808 + t682) * MDP(10) + (-t656 * t693 - t784 * t834 + t783) * MDP(13); -t630 ^ 2 * MDP(16) + (t630 * t955 + t569) * MDP(17) - t570 * MDP(18) + t683 * t887 + (t530 * t955 - t807) * MDP(20) + (t529 * t955 + t548 * t630 + t789) * MDP(21) + (t541 * t767 + t587 * t846) * MDP(22) + ((t541 - t938) * t771 + (-t542 - t937) * t767) * MDP(23) + (t570 * t767 + t629 * t846) * MDP(24) + (-t629 ^ 2 * t767 + t570 * t771) * MDP(25) + (-pkin(4) * t542 - t530 * t585 + (-t501 + (-pkin(12) * qJD(5) - t561) * t629) * t771 + (t529 * t629 + t798) * t767) * MDP(27) + (-pkin(4) * t541 + t501 * t767 - t530 * t587 + (pkin(12) * t878 + t904) * t629 + t798 * t771) * MDP(28) + (t510 * t767 * t770 + (-t767 * t875 + t832) * t552) * MDP(29) + (t550 * t559 + t552 * t558 + (-t550 * t770 - t552 * t766) * t876 + (-t943 - t511 * t770 + (t550 * t766 - t552 * t770) * qJD(6)) * t767) * MDP(30) + (-t510 * t771 + t832 * t584 + (t552 * t629 + t799) * t767) * MDP(31) + (t511 * t771 + (-t766 * t876 + t558) * t584 + (-t550 * t629 + t800) * t767) * MDP(32) + (t584 * t629 * t767 - t542 * t771) * MDP(33) + (t742 * t941 - t493 * t558 - t512 * t550 + (t766 * t844 - t770 * t905) * t584 + (t493 * t879 - t481 + (qJD(5) * t550 + t800) * pkin(12)) * t771 + (t493 * t874 + t483 * t766 - t629 * t825 + (t584 * t879 + t511) * pkin(12)) * t767) * MDP(34) + (-t742 * t942 - t493 * t559 - t512 * t552 + (t766 * t905 + t770 * t844) * t584 + (t493 * t877 + t480 + (qJD(5) * t552 - t799) * pkin(12)) * t771 + (-t493 * t875 + t483 * t770 - t629 * t489 + (t584 * t877 + t510) * pkin(12)) * t767) * MDP(35) + (t630 * MDP(15) + MDP(16) * t632 + MDP(18) * t955 - t548 * MDP(20) - t587 * MDP(24) + t585 * MDP(25) - t629 * MDP(26) - t495 * MDP(27) + t496 * MDP(28)) * t632; -t585 ^ 2 * MDP(23) + (t541 + t938) * MDP(24) + (-t806 + t937) * MDP(25) + t570 * MDP(26) + (t496 * t629 + t485) * MDP(27) + (t495 * t629 + t524 * t585 - t484) * MDP(28) + (t552 * t845 + t943) * MDP(29) + ((t510 - t940) * t770 + (-t511 - t939) * t766) * MDP(30) + (t584 * t845 + t942) * MDP(31) + (-t584 ^ 2 * t766 + t941) * MDP(32) + (-pkin(5) * t511 - t496 * t550 + t785 * t766 - t770 * t954) * MDP(34) + (-pkin(5) * t510 - t496 * t552 + t766 * t954 + t785 * t770) * MDP(35) + (MDP(22) * t585 + MDP(23) * t587 - MDP(25) * qJD(5) - MDP(27) * t524 - MDP(31) * t552 + MDP(32) * t550 - MDP(33) * t584 + MDP(34) * t825 + MDP(35) * t489) * t587; t552 * t550 * MDP(29) + (-t550 ^ 2 + t552 ^ 2) * MDP(30) + (t865 + t940) * MDP(31) + (-t848 + t939) * MDP(32) + t542 * MDP(33) + (t489 * t584 - t493 * t552 + t850) * MDP(34) + (t493 * t550 - t584 * t825 - t826) * MDP(35) + (-MDP(31) * t936 - MDP(32) * t552 - MDP(34) * t489 + MDP(35) * t825) * qJD(6);];
tauc  = t1;
