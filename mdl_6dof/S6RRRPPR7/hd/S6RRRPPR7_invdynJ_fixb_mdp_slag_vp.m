% Calculate vector of inverse dynamics joint torques for
% S6RRRPPR7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d6,theta5]';
% MDP [32x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRRPPR7_convert_par2_MPV_fixb.m
% 
% Output:
% tau [6x1]
%   joint torques of inverse dynamics (contains inertial, gravitational Coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 16:02
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RRRPPR7_invdynJ_fixb_mdp_slag_vp(qJ, qJD, qJDD, g, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1),zeros(32,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR7_invdynJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR7_invdynJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPPR7_invdynJ_fixb_mdp_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPPR7_invdynJ_fixb_mdp_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPR7_invdynJ_fixb_mdp_slag_vp: pkin has to be [10x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [32 1]), ...
  'S6RRRPPR7_invdynJ_fixb_mdp_slag_vp: MDP has to be [32x1] (double)'); 

%% Symbolic Calculation
% From invdyn_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 16:01:30
% EndTime: 2019-03-09 16:01:53
% DurationCPUTime: 17.65s
% Computational Cost: add. (7451->765), mult. (16177->954), div. (0->0), fcn. (11279->12), ass. (0->304)
t784 = sin(qJ(3));
t788 = cos(qJ(3));
t879 = t788 * qJD(2);
t785 = sin(qJ(2));
t892 = qJD(1) * t785;
t696 = t784 * t892 - t879;
t868 = t788 * t892;
t889 = qJD(2) * t784;
t698 = t868 + t889;
t780 = sin(pkin(10));
t781 = cos(pkin(10));
t617 = t696 * t780 + t698 * t781;
t783 = sin(qJ(6));
t787 = cos(qJ(6));
t961 = -t781 * t696 + t698 * t780;
t554 = t617 * t787 - t783 * t961;
t789 = cos(qJ(2));
t763 = t789 * qJDD(1);
t877 = qJD(1) * qJD(2);
t959 = -t785 * t877 + t763;
t689 = qJDD(3) - t959;
t678 = -qJDD(6) + t689;
t963 = t617 * t783 + t787 * t961;
t981 = MDP(26) * t554 * t963 + (t554 ^ 2 - t963 ^ 2) * MDP(27) - t678 * MDP(30);
t891 = qJD(1) * t789;
t734 = -qJD(3) + t891;
t725 = qJD(6) + t734;
t967 = t554 * t725;
t884 = qJD(3) * t788;
t980 = t788 * t891 - t884;
t869 = t784 * t891;
t886 = qJD(3) * t784;
t979 = t869 - t886;
t717 = -qJD(2) * pkin(2) + pkin(7) * t892;
t601 = t696 * pkin(3) - t698 * qJ(4) + t717;
t566 = -pkin(4) * t696 + qJD(5) - t601;
t534 = pkin(5) * t961 + t566;
t786 = sin(qJ(1));
t790 = cos(qJ(1));
t913 = t790 * t784;
t673 = -t786 * t788 + t789 * t913;
t914 = t789 * t790;
t674 = t784 * t786 + t788 * t914;
t776 = pkin(10) + qJ(6);
t759 = sin(t776);
t760 = cos(t776);
t584 = t673 * t760 - t674 * t759;
t822 = t759 * t788 - t760 * t784;
t858 = t789 * t877;
t876 = qJDD(1) * t785;
t885 = qJD(3) * t785;
t964 = qJD(1) * t885 - qJDD(2);
t606 = -qJD(3) * t879 + (-t858 - t876) * t788 + t964 * t784;
t607 = t784 * (qJD(2) * (qJD(3) + t891) + t876) + t964 * t788;
t544 = -t606 * t781 + t607 * t780;
t841 = pkin(2) * t785 - pkin(8) * t789;
t704 = t841 * qJD(2);
t767 = t785 * pkin(8);
t772 = t789 * pkin(2);
t871 = -pkin(1) - t772;
t816 = t871 - t767;
t627 = qJD(1) * t704 + qJDD(1) * t816;
t665 = pkin(7) * t959 + qJDD(2) * pkin(8);
t679 = t816 * qJD(1);
t758 = pkin(7) * t891;
t718 = qJD(2) * pkin(8) + t758;
t845 = -t788 * t627 + t784 * t665 + t679 * t886 + t718 * t884;
t817 = qJDD(4) + t845;
t946 = pkin(3) + pkin(4);
t510 = qJ(5) * t606 - qJD(5) * t698 - t689 * t946 + t817;
t677 = t689 * qJ(4);
t720 = t734 * qJD(4);
t800 = t784 * t627 + t788 * t665 + t679 * t884 - t718 * t886;
t524 = t677 - t720 + t800;
t513 = qJ(5) * t607 + qJD(5) * t696 + t524;
t853 = -t781 * t510 + t780 * t513;
t493 = -pkin(5) * t689 - pkin(9) * t544 - t853;
t497 = t780 * t510 + t781 * t513;
t543 = -t606 * t780 - t781 * t607;
t495 = -pkin(9) * t543 + t497;
t854 = t787 * t493 - t783 * t495;
t916 = t786 * t789;
t671 = t784 * t916 + t788 * t790;
t915 = t788 * t789;
t672 = t786 * t915 - t913;
t956 = t671 * t760 - t672 * t759;
t962 = g(3) * t785;
t977 = g(1) * t584 + g(2) * t956 + t534 * t554 - t822 * t962 - t854;
t975 = t725 * t963;
t936 = pkin(8) - qJ(5);
t714 = t936 * t788;
t870 = -pkin(7) * t784 - pkin(3);
t847 = -pkin(4) + t870;
t703 = t841 * qJD(1);
t925 = t703 * t788;
t974 = t925 - (-qJ(5) * t915 + t785 * t847) * qJD(1) + qJD(3) * t714 - qJD(5) * t784;
t883 = qJD(5) * t788;
t675 = t784 * t703;
t903 = qJ(4) * t892 + t675;
t919 = t785 * t788;
t921 = t784 * t789;
t973 = (-pkin(7) * t919 + qJ(5) * t921) * qJD(1) + t903 + t886 * t936 + t883;
t585 = t673 * t759 + t674 * t760;
t821 = t759 * t784 + t760 * t788;
t827 = t671 * t759 + t672 * t760;
t621 = t788 * t679 - t784 * t718;
t576 = qJ(5) * t698 + t621;
t557 = t734 * t946 + qJD(4) - t576;
t622 = t784 * t679 + t788 * t718;
t577 = qJ(5) * t696 + t622;
t722 = t734 * qJ(4);
t564 = t577 - t722;
t520 = t781 * t557 - t564 * t780;
t969 = pkin(9) * t617;
t511 = pkin(5) * t734 + t520 - t969;
t881 = qJD(6) * t787;
t874 = t783 * t493 + t787 * t495 + t511 * t881;
t971 = -g(1) * t585 - g(2) * t827 - t534 * t963 - t821 * t962 + t874;
t968 = pkin(9) * t961;
t905 = -t780 * t980 + t781 * t979;
t690 = t780 * t784 + t781 * t788;
t802 = t690 * t789;
t904 = -qJD(1) * t802 + t690 * qJD(3);
t918 = t785 * t790;
t920 = t785 * t786;
t966 = g(1) * t918 + g(2) * t920;
t965 = qJ(4) * t980 - t784 * qJD(4) - t758;
t937 = g(3) * t789;
t838 = g(1) * t790 + g(2) * t786;
t953 = t785 * t838;
t949 = t937 - t953;
t910 = t780 * t973 + t781 * t974;
t909 = t780 * t974 - t781 * t973;
t875 = t946 * t784;
t907 = -qJD(3) * t875 + t869 * t946 - t965;
t887 = qJD(2) * t789;
t958 = t784 * t887 + t785 * t884;
t861 = t784 * t885;
t863 = t789 * t879;
t957 = -t861 + t863;
t878 = qJD(4) - t621;
t766 = t784 * qJ(4);
t955 = t788 * pkin(3) + pkin(2) + t766;
t954 = -t937 + t966;
t944 = pkin(8) * t689;
t952 = t601 * t734 + t944;
t948 = -0.2e1 * pkin(1);
t947 = t698 ^ 2;
t729 = t734 ^ 2;
t945 = pkin(3) * t689;
t941 = g(1) * t786;
t938 = g(2) * t790;
t935 = pkin(8) * qJD(3);
t596 = -t722 + t622;
t934 = t596 * t734;
t933 = t606 * t784;
t932 = t622 * t734;
t930 = t696 * t698;
t929 = t696 * t734;
t928 = t698 * t734;
t926 = t698 * t788;
t924 = t725 * t734;
t521 = t780 * t557 + t781 * t564;
t514 = t521 - t968;
t923 = t783 * t514;
t922 = t784 * t785;
t793 = qJD(1) ^ 2;
t917 = t785 * t793;
t895 = -t767 - t772;
t712 = -pkin(1) + t895;
t738 = pkin(7) * t915;
t901 = qJD(3) * t738 + t712 * t886;
t541 = (-qJ(5) * t887 - t704) * t788 + (qJ(5) * t886 + qJD(2) * t847 - t883) * t785 + t901;
t888 = qJD(2) * t785;
t902 = t784 * t704 + t712 * t884;
t811 = qJ(4) * t888 - qJD(4) * t789 + t902;
t542 = (-pkin(7) * qJD(2) + qJ(5) * qJD(3)) * t919 + (qJD(5) * t785 + (-pkin(7) * qJD(3) + qJ(5) * qJD(2)) * t789) * t784 + t811;
t509 = t780 * t541 + t781 * t542;
t818 = t780 * t788 - t781 * t784;
t610 = t787 * t690 - t783 * t818;
t912 = -qJD(6) * t610 - t783 * t905 + t787 * t904;
t611 = -t690 * t783 - t787 * t818;
t911 = qJD(6) * t611 + t783 * t904 + t787 * t905;
t530 = t781 * t576 + t780 * t577;
t908 = pkin(5) * t905 + t907;
t736 = pkin(7) * t921;
t771 = t789 * pkin(3);
t608 = pkin(4) * t789 + t736 + t771 + (-qJ(5) * t785 - t712) * t788;
t897 = t784 * t712 + t738;
t632 = -qJ(4) * t789 + t897;
t620 = qJ(5) * t922 + t632;
t547 = t780 * t608 + t781 * t620;
t906 = -pkin(3) * t979 + t965;
t626 = t698 * pkin(3) + t696 * qJ(4);
t713 = t936 * t784;
t630 = t780 * t713 + t781 * t714;
t900 = t966 * t788;
t898 = qJ(4) * t863 + qJD(4) * t919;
t777 = t785 ^ 2;
t894 = -t789 ^ 2 + t777;
t890 = qJD(2) * t698;
t882 = qJD(6) * t783;
t873 = -t783 * t543 + t787 * t544 - t881 * t961;
t756 = pkin(7) * t876;
t666 = -qJDD(2) * pkin(2) + pkin(7) * t858 + t756;
t872 = g(1) * t914 + g(2) * t916 + t962;
t866 = t734 * t889;
t865 = t734 * t879;
t862 = t734 * t886;
t856 = -t671 * pkin(3) + qJ(4) * t672;
t855 = -t673 * pkin(3) + qJ(4) * t674;
t705 = -qJ(4) * t780 - t781 * t946;
t508 = t781 * t541 - t542 * t780;
t852 = t787 * t543 + t783 * t544;
t529 = -t576 * t780 + t781 * t577;
t546 = t781 * t608 - t620 * t780;
t850 = -t671 * t781 + t672 * t780;
t849 = t673 * t780 + t674 * t781;
t629 = t781 * t713 - t714 * t780;
t848 = t712 * t788 - t736;
t685 = t788 * pkin(4) + t955;
t844 = pkin(3) * t915 + qJ(4) * t921 - t895;
t843 = -pkin(7) - t875;
t582 = -pkin(4) * t698 - t626;
t842 = t870 * t785;
t840 = -g(1) * t671 + g(2) * t673;
t839 = g(1) * t672 - g(2) * t674;
t837 = -t672 * pkin(3) + t790 * pkin(7) - qJ(4) * t671;
t836 = t704 * t788 - t901;
t592 = -pkin(9) * t690 + t630;
t835 = -pkin(5) * t892 + pkin(9) * t904 + qJD(6) * t592 - t910;
t591 = pkin(9) * t818 + t629;
t834 = pkin(9) * t905 - qJD(6) * t591 - t909;
t833 = qJD(3) * t717 - t944;
t499 = t783 * t511 + t787 * t514;
t832 = -t520 * t780 + t521 * t781;
t655 = t690 * t785;
t528 = pkin(5) * t789 - pkin(9) * t655 + t546;
t654 = t780 * t919 - t781 * t922;
t531 = -pkin(9) * t654 + t547;
t831 = t528 * t787 - t531 * t783;
t830 = t528 * t783 + t531 * t787;
t593 = pkin(3) * t734 + t878;
t829 = t593 * t788 - t596 * t784;
t828 = t617 * t780 - t781 * t961;
t580 = t787 * t654 + t655 * t783;
t581 = -t654 * t783 + t655 * t787;
t826 = t671 * t780 + t672 * t781;
t825 = t673 * t781 - t674 * t780;
t700 = -pkin(5) + t705;
t706 = qJ(4) * t781 - t780 * t946;
t824 = t700 * t787 - t706 * t783;
t823 = t700 * t783 + t706 * t787;
t820 = t780 * t787 + t781 * t783;
t819 = t780 * t783 - t781 * t787;
t813 = -g(1) * t673 - g(2) * t671 - g(3) * t922;
t812 = -t734 * t935 + t937;
t525 = t607 * pkin(3) + t606 * qJ(4) - t698 * qJD(4) + t666;
t808 = -t788 * t946 - t766;
t807 = -pkin(7) * qJDD(2) + t877 * t948;
t806 = t689 * t784 - t734 * t884;
t805 = t689 * t788 + t862;
t804 = t725 * t820;
t803 = t725 * t819;
t801 = -t525 - t812;
t500 = -t617 * t882 + t873;
t792 = qJD(2) ^ 2;
t798 = pkin(7) * t792 + qJDD(1) * t948 - t941;
t731 = qJ(4) * t919;
t631 = t785 * t843 + t731;
t797 = t790 * pkin(1) + pkin(2) * t914 + t674 * pkin(3) + t786 * pkin(7) + pkin(8) * t918 + qJ(4) * t673;
t796 = -t813 - t845;
t515 = -pkin(4) * t607 + qJDD(5) - t525;
t501 = qJD(6) * t554 + t852;
t795 = t601 * t698 + qJDD(4) - t796;
t794 = g(1) * t674 + g(2) * t672 + g(3) * t919 - t621 * t734 - t800;
t558 = t808 * t885 + t843 * t887 + t898;
t746 = g(2) * t918;
t741 = pkin(8) * t914;
t737 = pkin(8) * t916;
t651 = -t731 + (pkin(3) * t784 + pkin(7)) * t785;
t633 = t771 - t848;
t628 = pkin(5) * t690 + t685;
t625 = qJD(1) * t842 - t925;
t624 = -pkin(7) * t868 + t903;
t588 = qJD(2) * t802 + t818 * t885;
t587 = t780 * t957 - t781 * t958;
t578 = pkin(5) * t654 + t631;
t575 = pkin(3) * t958 + pkin(7) * t887 + qJ(4) * t861 - t898;
t567 = qJD(2) * t842 - t836;
t563 = -t606 - t929;
t562 = (-t785 * t879 - t789 * t886) * pkin(7) + t811;
t545 = -pkin(5) * t617 + t582;
t527 = t817 - t945;
t526 = pkin(5) * t587 + t558;
t519 = t530 + t969;
t518 = t529 - t968;
t517 = qJD(6) * t581 + t787 * t587 + t588 * t783;
t516 = -qJD(6) * t580 - t587 * t783 + t588 * t787;
t504 = -pkin(9) * t587 + t509;
t503 = -pkin(5) * t888 - pkin(9) * t588 + t508;
t502 = pkin(5) * t543 + t515;
t498 = t511 * t787 - t923;
t1 = [(-t606 * t919 + t698 * t957) * MDP(11) + (-(qJD(6) * t831 + t503 * t783 + t504 * t787) * t725 + t830 * t678 - (-t514 * t882 + t874) * t789 + t499 * t888 + t526 * t554 + t578 * t500 + t502 * t581 + t534 * t516 + g(1) * t956 - g(2) * t584) * MDP(32) + ((t503 * t787 - t504 * t783) * t725 - t831 * t678 + t854 * t789 - t498 * t888 + t526 * t963 + t578 * t501 + t502 * t580 + t534 * t517 + g(1) * t827 - g(2) * t585 + (-t499 * t789 - t725 * t830) * qJD(6)) * MDP(31) + (-t501 * t789 - t517 * t725 + t580 * t678 + t888 * t963) * MDP(29) + (-t500 * t580 - t501 * t581 - t516 * t963 - t517 * t554) * MDP(27) + (t497 * t547 + t521 * t509 - t853 * t546 + t520 * t508 + t515 * t631 + t566 * t558 - g(1) * (-pkin(4) * t672 + t837) - g(2) * (pkin(4) * t674 - qJ(5) * t918 + t797) - (-t785 * t936 + t871) * t941) * MDP(25) + qJDD(1) * MDP(1) + (t785 * t798 + t789 * t807 + t746) * MDP(10) + t838 * MDP(3) + (-g(1) * t837 - g(2) * t797 + t524 * t632 + t525 * t651 + t527 * t633 + t596 * t562 + t593 * t567 + t601 * t575 - t816 * t941) * MDP(21) + (-t938 + t941) * MDP(2) + (-t562 * t696 + t567 * t698 - t606 * t633 - t607 * t632 - t746 + t829 * t887 + (t941 - t524 * t784 + t527 * t788 + (-t593 * t784 - t596 * t788) * qJD(3)) * t785) * MDP(19) + (t807 * t785 + (-t798 - t938) * t789) * MDP(9) + ((-t696 * t788 - t698 * t784) * t887 + (t933 - t607 * t788 + (t696 * t784 - t926) * qJD(3)) * t785) * MDP(12) + (t902 * t734 - t897 * t689 + (t717 * t879 + (-t862 + t890) * pkin(7) + t800) * t789 + (-t717 * t886 - t622 * qJD(2) + t666 * t788 + (-t606 - t865) * pkin(7)) * t785 + t840) * MDP(17) + 0.2e1 * (t763 * t785 - t877 * t894) * MDP(5) + ((t606 - t865) * t789 + (t805 + t890) * t785) * MDP(13) + (qJDD(2) * t785 + t789 * t792) * MDP(6) + (qJDD(2) * t789 - t785 * t792) * MDP(7) + (-t689 * t789 - t734 * t888) * MDP(15) + (-t678 * t789 - t725 * t888) * MDP(30) + (t500 * t789 + t516 * t725 - t554 * t888 - t581 * t678) * MDP(28) + (-g(1) * t850 - g(2) * t825 - t497 * t789 - t509 * t734 + t515 * t655 + t521 * t888 + t631 * t544 + t547 * t689 + t558 * t617 + t566 * t588) * MDP(23) + (t567 * t734 + t575 * t696 + t607 * t651 - t633 * t689 + (t601 * t889 + t527) * t789 + (-qJD(2) * t593 + t525 * t784 + t601 * t884) * t785 + t839) * MDP(18) + (-t562 * t734 - t575 * t698 + t606 * t651 + t632 * t689 + (-t601 * t879 - t524) * t789 + (qJD(2) * t596 - t525 * t788 + t601 * t886) * t785 - t840) * MDP(20) + (-t836 * t734 + t848 * t689 + ((pkin(7) * t696 + t717 * t784) * qJD(2) + t845) * t789 + (t717 * t884 + t621 * qJD(2) + t666 * t784 + (t607 - t866) * pkin(7)) * t785 + t839) * MDP(16) + (-g(1) * t920 - t497 * t654 - t508 * t617 - t509 * t961 - t520 * t588 - t521 * t587 - t543 * t547 - t544 * t546 + t655 * t853 + t746) * MDP(24) + (g(1) * t826 - g(2) * t849 + t508 * t734 + t515 * t654 - t520 * t888 + t631 * t543 - t546 * t689 + t558 * t961 + t566 * t587 - t789 * t853) * MDP(22) + (t500 * t581 + t516 * t554) * MDP(26) + (qJDD(1) * t777 + 0.2e1 * t785 * t858) * MDP(4) + ((t607 + t866) * t789 + (-qJD(2) * t696 - t806) * t785) * MDP(14); (pkin(1) * t917 - t756 + t954) * MDP(9) + (t610 * t678 - t725 * t911) * MDP(29) + (-t607 * t955 - t625 * t734 + t906 * t696 - t784 * t952 + t801 * t788 + t900) * MDP(18) + (-t606 * t955 + t624 * t734 - t906 * t698 + t952 * t788 + (t801 + t953) * t784) * MDP(20) + MDP(7) * t763 + MDP(6) * t876 + ((t591 * t783 + t592 * t787) * t678 + t628 * t500 + t502 * t611 + (t783 * t835 + t787 * t834) * t725 + t908 * t554 + t912 * t534 + t949 * t822) * MDP(32) + (-(t591 * t787 - t592 * t783) * t678 + t628 * t501 + t502 * t610 + (t783 * t834 - t787 * t835) * t725 + t908 * t963 + t911 * t534 - t949 * t821) * MDP(31) + (t734 * MDP(15) + t593 * MDP(18) - t596 * MDP(20) + t520 * MDP(22) - t521 * MDP(23) + t554 * MDP(28) - MDP(29) * t963 + t725 * MDP(30) + t498 * MDP(31) - t499 * MDP(32)) * t892 + (-t500 * t610 - t501 * t611 - t554 * t911 - t912 * t963) * MDP(27) + (t685 * t544 + t904 * t566 + t907 * t617 + t630 * t689 - t909 * t734 + (-t515 + t949) * t818) * MDP(23) + (t497 * t630 - t853 * t629 + t515 * t685 - g(1) * (-qJ(5) * t914 + t741) - g(2) * (-qJ(5) * t916 + t737) - g(3) * (pkin(4) * t915 + t844) + t907 * t566 + t909 * t521 + t910 * t520 + (g(3) * qJ(5) + t838 * (pkin(2) - t808)) * t785) * MDP(25) + (-g(3) * t802 + t685 * t543 + t905 * t566 + t907 * t961 - t629 * t689 + t910 * t734 + (t515 + t953) * t690) * MDP(22) + (pkin(2) * t606 - t675 * t734 + t833 * t788 + (-t717 * t915 + t622 * t785 + (-t698 * t789 + t734 * t919) * pkin(7)) * qJD(1) + (t666 + t812 - t953) * t784) * MDP(17) + qJDD(2) * MDP(8) + (-t611 * t678 + t725 * t912) * MDP(28) - t789 * MDP(4) * t917 + (-pkin(2) * t607 + t833 * t784 + (-t937 - t666 + (t703 + t935) * t734) * t788 + (-t717 * t921 - t621 * t785 + (-t696 * t789 + t734 * t922) * pkin(7)) * qJD(1) + t900) * MDP(16) + (-t734 * t926 - t933) * MDP(11) + (t624 * t696 - t625 * t698 + (t524 - t734 * t593 + (qJD(3) * t698 - t607) * pkin(8)) * t788 + (t527 + t934 + (qJD(3) * t696 - t606) * pkin(8)) * t784 - t872) * MDP(19) + ((-t606 + t929) * t788 + (-t607 + t928) * t784) * MDP(12) + ((t696 * t785 - t734 * t921) * qJD(1) + t805) * MDP(14) + ((-t698 * t785 + t734 * t915) * qJD(1) + t806) * MDP(13) + (t500 * t611 + t554 * t912) * MDP(26) + ((pkin(1) * t793 - pkin(7) * qJDD(1)) * t789 + t872) * MDP(10) + (-t497 * t690 - t520 * t904 - t521 * t905 - t543 * t630 - t544 * t629 - t617 * t910 - t818 * t853 - t909 * t961 + t872) * MDP(24) + t894 * t793 * MDP(5) + (-t596 * t624 - t593 * t625 - g(1) * t741 - g(2) * t737 - g(3) * t844 + t906 * t601 + (qJD(3) * t829 + t524 * t788 + t527 * t784) * pkin(8) + (-t525 + t953) * t955) * MDP(21); (qJD(4) * t828 - t543 * t706 - t544 * t705 + (t520 + t530) * t961 + (-t521 + t529) * t617) * MDP(24) + (-t500 - t975) * MDP(28) + (t823 * t678 + (t518 * t783 + t519 * t787) * t725 - t545 * t554 + qJD(4) * t803 + (-t725 * t824 - t923) * qJD(6) + t971) * MDP(32) + (t501 - t967) * MDP(29) + (-t824 * t678 - (t518 * t787 - t519 * t783) * t725 - t545 * t963 - qJD(4) * t804 + (-t725 * t823 + t499) * qJD(6) + t977) * MDP(31) + (-t601 * t696 + t626 * t698 + 0.2e1 * t677 - 0.2e1 * t720 - t794) * MDP(20) + (t696 * t717 + t794) * MDP(17) + MDP(11) * t930 + (-t607 - t928) * MDP(14) + (t497 * t706 - t853 * t705 - t521 * t530 - t520 * t529 - t566 * t582 - g(1) * (-pkin(4) * t673 + t855) - g(2) * (-pkin(4) * t671 + t856) - g(3) * (-t785 * t875 + t731) + t832 * qJD(4)) * MDP(25) + (-t705 * t689 - t582 * t961 + t566 * t617 + g(1) * t825 - g(2) * t850 - g(3) * t654 + (-qJD(4) * t780 - t529) * t734 + t853) * MDP(22) + (-t696 ^ 2 + t947) * MDP(12) + (-t626 * t696 - t795 - t932 + 0.2e1 * t945) * MDP(18) + (-t698 * t717 + t796 - t932) * MDP(16) + (t524 * qJ(4) - t527 * pkin(3) - t601 * t626 - t593 * t622 - g(1) * t855 - g(2) * t856 - g(3) * (-pkin(3) * t922 + t731) + t878 * t596) * MDP(21) + (pkin(3) * t606 - qJ(4) * t607 + (t596 - t622) * t698 + (t593 - t878) * t696) * MDP(19) + (t706 * t689 - t582 * t617 - t566 * t961 - g(1) * t849 - g(2) * t826 - g(3) * t655 + (-qJD(4) * t781 + t530) * t734 + t497) * MDP(23) + t563 * MDP(13) + t689 * MDP(15) - t981; (-t689 + t930) * MDP(18) + t563 * MDP(19) + (-t729 - t947) * MDP(20) + (t795 + t934 - t945) * MDP(21) + (-t689 * t781 - t698 * t961 - t729 * t780) * MDP(22) + (-t617 * t698 + t689 * t780 - t729 * t781) * MDP(23) + (-t543 * t780 - t544 * t781 + t734 * t828) * MDP(24) + (t497 * t780 - t566 * t698 + t734 * t832 - t781 * t853 + t813) * MDP(25) + (-qJD(6) * t804 + t678 * t819 - t698 * t963 - t820 * t924) * MDP(31) + (qJD(6) * t803 - t698 * t554 + t678 * t820 + t819 * t924) * MDP(32); (t617 * t734 + t543) * MDP(22) + (-t734 * t961 + t544) * MDP(23) + (-t617 ^ 2 - t961 ^ 2) * MDP(24) + (t520 * t617 + t521 * t961 + t515 + t954) * MDP(25) + (t501 + t967) * MDP(31) + (t500 - t975) * MDP(32); (t873 + t975) * MDP(28) + (-t852 + t967) * MDP(29) + (t499 * t725 - t977) * MDP(31) + (t498 * t725 - t971) * MDP(32) + ((-MDP(29) * t617 - MDP(31) * t514) * t787 + (-MDP(28) * t617 + MDP(29) * t961 - MDP(31) * t511 + MDP(32) * t514) * t783) * qJD(6) + t981;];
tau  = t1;
