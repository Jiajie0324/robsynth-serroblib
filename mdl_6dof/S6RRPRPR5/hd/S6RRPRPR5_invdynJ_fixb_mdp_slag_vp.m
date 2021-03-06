% Calculate vector of inverse dynamics joint torques for
% S6RRPRPR5
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
% MDP [30x1]
%   Minimal dynamic parameter vector (fixed base model)
%   see S6RRPRPR5_convert_par2_MPV_fixb.m
% 
% Output:
% tau [6x1]
%   joint torques of inverse dynamics (contains inertial, gravitational Coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 10:37
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RRPRPR5_invdynJ_fixb_mdp_slag_vp(qJ, qJD, qJDD, g, pkin, MDP)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1),zeros(30,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR5_invdynJ_fixb_mdp_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR5_invdynJ_fixb_mdp_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR5_invdynJ_fixb_mdp_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR5_invdynJ_fixb_mdp_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRPR5_invdynJ_fixb_mdp_slag_vp: pkin has to be [12x1] (double)');
assert(isreal(MDP) && all(size(MDP) == [30 1]), ...
  'S6RRPRPR5_invdynJ_fixb_mdp_slag_vp: MDP has to be [30x1] (double)'); 

%% Symbolic Calculation
% From invdyn_joint_fixb_mdp_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 10:35:40
% EndTime: 2019-03-09 10:36:05
% DurationCPUTime: 19.99s
% Computational Cost: add. (14806->768), mult. (42101->1050), div. (0->0), fcn. (34937->16), ass. (0->320)
t767 = sin(pkin(6));
t766 = sin(pkin(11));
t769 = cos(pkin(11));
t773 = sin(qJ(2));
t777 = cos(qJ(2));
t802 = t766 * t777 + t769 * t773;
t793 = qJD(1) * t802;
t695 = t767 * t793;
t776 = cos(qJ(4));
t770 = cos(pkin(6));
t869 = qJD(1) * t770;
t823 = qJD(2) + t869;
t729 = t776 * t823;
t772 = sin(qJ(4));
t663 = t695 * t772 - t729;
t662 = qJD(6) + t663;
t868 = qJD(1) * t773;
t844 = t767 * t868;
t885 = t777 * t769;
t849 = t767 * t885;
t692 = qJD(1) * t849 - t766 * t844;
t687 = qJD(4) - t692;
t765 = sin(pkin(12));
t768 = cos(pkin(12));
t781 = -t776 * t695 - t772 * t823;
t602 = -t768 * t687 - t765 * t781;
t775 = cos(qJ(6));
t604 = t687 * t765 - t768 * t781;
t771 = sin(qJ(6));
t912 = t604 * t771;
t940 = -t775 * t602 - t912;
t942 = t662 * t940;
t890 = t770 * t777;
t750 = pkin(1) * t890;
t745 = qJD(1) * t750;
t917 = pkin(8) + qJ(3);
t839 = t917 * t773;
t818 = t767 * t839;
t681 = -qJD(1) * t818 + t745;
t891 = t770 * t773;
t749 = pkin(1) * t891;
t896 = t767 * t777;
t682 = (t896 * t917 + t749) * qJD(1);
t892 = t769 * t682;
t615 = t681 * t766 + t892;
t941 = qJD(5) * t772 + t615 - t687 * (pkin(4) * t772 - qJ(5) * t776);
t804 = t602 * t771 - t604 * t775;
t939 = t662 * t804;
t899 = t765 * t776;
t632 = t692 * t899 - t768 * t695;
t893 = t768 * t776;
t633 = t692 * t893 + t695 * t765;
t720 = t765 * t775 + t768 * t771;
t861 = qJD(6) * t775;
t862 = qJD(6) * t772;
t863 = qJD(4) * t776;
t894 = t768 * t772;
t900 = t765 * t771;
t878 = -t775 * t632 - t633 * t771 + t720 * t863 + t861 * t894 - t862 * t900;
t867 = qJD(2) * t773;
t843 = t767 * t867;
t817 = qJD(1) * t843;
t858 = qJD(1) * qJD(2);
t838 = t777 * t858;
t648 = -t766 * t817 + (qJDD(1) * t802 + t769 * t838) * t767;
t857 = qJDD(1) * t770;
t747 = qJDD(2) + t857;
t572 = -qJD(4) * t781 + t772 * t648 - t776 * t747;
t570 = qJDD(6) + t572;
t718 = -t775 * t768 + t900;
t703 = t718 * t772;
t879 = t632 * t771 - t633 * t775 - t718 * t863 - t720 * t862;
t937 = t570 * t703 - t662 * t879;
t719 = t766 * t773 - t885;
t774 = sin(qJ(1));
t778 = cos(qJ(1));
t872 = -t766 * t890 - t769 * t891;
t653 = t774 * t719 + t778 * t872;
t895 = t767 * t778;
t636 = -t653 * t776 - t772 * t895;
t796 = t719 * t770;
t654 = -t774 * t802 - t778 * t796;
t762 = pkin(12) + qJ(6);
t759 = sin(t762);
t760 = cos(t762);
t936 = t636 * t759 + t654 * t760;
t935 = t636 * t760 - t654 * t759;
t758 = pkin(2) * t777 + pkin(1);
t816 = t758 * t767;
t854 = pkin(2) * t817 + qJDD(3);
t934 = qJDD(1) * t816 - t854;
t674 = t766 * t682;
t616 = t681 * t769 - t674;
t630 = pkin(2) * t844 + pkin(3) * t695 - pkin(9) * t692;
t881 = t776 * t616 + t772 * t630;
t545 = qJ(5) * t695 + t881;
t932 = t768 * t545 + t765 * t941;
t755 = pkin(2) * t766 + pkin(9);
t864 = qJD(4) * t772;
t842 = t755 * t864;
t877 = -t941 * t768 + (t545 + t842) * t765;
t886 = t774 * t777;
t888 = t773 * t778;
t714 = -t770 * t886 - t888;
t871 = pkin(8) * t896 + t749;
t761 = t767 ^ 2;
t927 = pkin(1) * t761;
t931 = t770 * t871 + t773 * t927;
t855 = qJDD(1) * t777;
t835 = t767 * t855;
t725 = t769 * t835;
t792 = t802 * qJD(2);
t856 = qJDD(1) * t773;
t837 = t766 * t856;
t646 = qJDD(4) - t725 + (qJD(1) * t792 + t837) * t767;
t930 = -pkin(4) * t646 + qJDD(5);
t657 = t774 * t796 - t778 * t802;
t898 = t767 * t773;
t700 = t766 * t898 - t849;
t929 = -g(1) * t657 - g(2) * t654 + g(3) * t700;
t658 = -t778 * t719 + t774 * t872;
t928 = 0.2e1 * t761;
t779 = qJD(1) ^ 2;
t926 = pkin(2) * t769;
t701 = t802 * t767;
t924 = pkin(9) * t701;
t922 = g(1) * t714;
t921 = g(1) * t774;
t918 = g(3) * t777;
t916 = pkin(10) + qJ(5);
t914 = t572 * t765;
t913 = t572 * t768;
t909 = t663 * t687;
t908 = t663 * t765;
t907 = t781 * t687;
t906 = t781 * t695;
t824 = t687 * t772;
t905 = t692 * t772;
t904 = t747 * MDP(8);
t903 = t759 * t776;
t902 = t760 * t776;
t901 = t761 * t779;
t897 = t767 * t774;
t889 = t773 * t774;
t884 = t777 * t778;
t851 = pkin(1) * t855;
t744 = t770 * t851;
t852 = pkin(1) * qJD(2) * t770;
t820 = qJD(1) * t852;
t832 = qJD(2) * t917;
t866 = qJD(3) * t773;
t592 = -t773 * t820 + pkin(2) * t747 + t744 + (-qJDD(1) * t839 + (-t777 * t832 - t866) * qJD(1)) * t767;
t785 = qJD(3) * t777 - t773 * t832;
t845 = pkin(8) * t835 + qJDD(1) * t749 + t777 * t820;
t607 = (qJ(3) * t855 + qJD(1) * t785) * t767 + t845;
t542 = t766 * t592 + t769 * t607;
t530 = pkin(9) * t747 + t542;
t647 = t725 + (-qJD(2) * t793 - t837) * t767;
t559 = -pkin(3) * t647 - pkin(9) * t648 - t934;
t786 = t770 * pkin(2) - t818;
t666 = qJD(2) * pkin(2) + qJD(1) * t786 + t745;
t596 = t766 * t666 + t892;
t588 = pkin(9) * t823 + t596;
t709 = -qJD(1) * t816 + qJD(3);
t612 = -pkin(3) * t692 - pkin(9) * t695 + t709;
t795 = t776 * t530 + t772 * t559 - t588 * t864 + t612 * t863;
t488 = qJ(5) * t646 + qJD(5) * t687 + t795;
t541 = t592 * t769 - t766 * t607;
t529 = -pkin(3) * t747 - t541;
t571 = qJD(4) * t729 + t776 * t648 - t695 * t864 + t772 * t747;
t496 = pkin(4) * t572 - qJ(5) * t571 + qJD(5) * t781 + t529;
t479 = t768 * t488 + t765 * t496;
t693 = t767 * t792;
t746 = t777 * t852;
t669 = t767 * t785 + t746;
t840 = t917 * t767;
t670 = -t767 * t866 + (-t777 * t840 - t749) * qJD(2);
t591 = t669 * t769 + t670 * t766;
t679 = t750 + t786;
t689 = qJ(3) * t896 + t871;
t626 = t766 * t679 + t769 * t689;
t614 = pkin(9) * t770 + t626;
t694 = t719 * t767 * qJD(2);
t631 = pkin(2) * t843 + pkin(3) * t693 + pkin(9) * t694;
t634 = pkin(3) * t700 - t816 - t924;
t794 = t776 * t591 - t614 * t864 + t772 * t631 + t634 * t863;
t506 = qJ(5) * t693 + qJD(5) * t700 + t794;
t590 = t669 * t766 - t769 * t670;
t678 = t701 * t776 + t770 * t772;
t623 = qJD(4) * t678 - t694 * t772;
t677 = t701 * t772 - t770 * t776;
t624 = -qJD(4) * t677 - t694 * t776;
t520 = pkin(4) * t623 - qJ(5) * t624 - qJD(5) * t678 + t590;
t486 = t768 * t506 + t765 * t520;
t544 = t776 * t588 + t772 * t612;
t526 = qJ(5) * t687 + t544;
t595 = t769 * t666 - t674;
t587 = -pkin(3) * t823 - t595;
t538 = t663 * pkin(4) + qJ(5) * t781 + t587;
t501 = t768 * t526 + t765 * t538;
t543 = -t772 * t588 + t612 * t776;
t589 = -pkin(4) * t781 + qJ(5) * t663;
t517 = t768 * t543 + t765 * t589;
t882 = t776 * t614 + t772 * t634;
t549 = qJ(5) * t700 + t882;
t625 = t679 * t769 - t766 * t689;
t613 = -pkin(3) * t770 - t625;
t558 = pkin(4) * t677 - qJ(5) * t678 + t613;
t511 = t768 * t549 + t765 * t558;
t880 = t776 * t646 + t687 * t905;
t876 = -t768 * t842 - t932;
t610 = t772 * t616;
t546 = -pkin(4) * t695 - t630 * t776 + t610;
t834 = pkin(5) * t765 + t755;
t875 = -pkin(5) * t632 + t834 * t863 - t546;
t874 = t662 * t718;
t873 = t662 * t720;
t801 = pkin(4) * t776 + qJ(5) * t772 + pkin(3);
t716 = -t801 - t926;
t672 = t765 * t716 + t755 * t893;
t763 = t773 ^ 2;
t870 = -t777 ^ 2 + t763;
t865 = qJD(4) * t755;
t860 = t687 * MDP(19);
t525 = -pkin(4) * t687 + qJD(5) - t543;
t859 = -qJD(5) + t525;
t850 = t777 * t901;
t847 = t770 * t884;
t536 = t571 * t765 - t768 * t646;
t537 = t571 * t768 + t646 * t765;
t846 = -t771 * t536 + t775 * t537 - t602 * t861;
t841 = t767 * t770 * t779;
t836 = t767 * t856;
t833 = g(2) * t895 - g(3) * t770;
t478 = -t488 * t765 + t768 * t496;
t476 = pkin(5) * t572 - pkin(10) * t537 + t478;
t477 = -pkin(10) * t536 + t479;
t831 = t775 * t476 - t771 * t477;
t485 = -t506 * t765 + t768 * t520;
t500 = -t526 * t765 + t768 * t538;
t830 = t775 * t536 + t771 * t537;
t516 = -t543 * t765 + t768 * t589;
t510 = -t549 * t765 + t768 * t558;
t829 = -t772 * t614 + t634 * t776;
t706 = pkin(2) * t891 - t840;
t827 = -t706 * t774 + t778 * t758;
t825 = t776 * t687;
t822 = qJD(2) + 0.2e1 * t869;
t821 = t747 + t857;
t819 = t772 * t530 - t776 * t559 + t588 * t863 + t612 * t864;
t635 = -t653 * t772 + t776 * t895;
t639 = t658 * t772 - t776 * t897;
t815 = -g(1) * t635 + g(2) * t639;
t814 = g(1) * t778 + g(2) * t774;
t702 = t720 * t772;
t813 = -t702 * t570 - t662 * t878;
t660 = -pkin(10) * t765 * t772 + t672;
t812 = pkin(5) * t905 - pkin(10) * t633 + qJD(6) * t660 - (pkin(5) * t772 - pkin(10) * t893) * qJD(4) - t877;
t705 = t768 * t716;
t650 = -pkin(10) * t894 + t705 + (-t755 * t765 - pkin(5)) * t776;
t811 = -pkin(10) * t632 - qJD(6) * t650 - (-pkin(10) * t899 - t755 * t894) * qJD(4) + t932;
t809 = t771 * t476 + t775 * t477;
t808 = -t478 * t765 + t479 * t768;
t492 = pkin(5) * t663 - pkin(10) * t604 + t500;
t493 = -pkin(10) * t602 + t501;
t480 = t492 * t775 - t493 * t771;
t481 = t492 * t771 + t493 * t775;
t629 = t678 * t768 + t700 * t765;
t498 = pkin(5) * t677 - pkin(10) * t629 + t510;
t628 = t678 * t765 - t700 * t768;
t502 = -pkin(10) * t628 + t511;
t807 = t498 * t775 - t502 * t771;
t806 = t498 * t771 + t502 * t775;
t805 = -t500 * t765 + t501 * t768;
t560 = t775 * t628 + t629 * t771;
t561 = -t628 * t771 + t629 * t775;
t803 = -t706 * t778 - t758 * t774;
t800 = -t772 * t591 - t614 * t863 + t631 * t776 - t634 * t864;
t550 = -pkin(4) * t700 - t829;
t732 = t916 * t768;
t799 = pkin(10) * t663 * t768 - pkin(5) * t781 + qJD(5) * t765 + qJD(6) * t732 + t516;
t731 = t916 * t765;
t798 = pkin(10) * t908 - qJD(5) * t768 + qJD(6) * t731 + t517;
t490 = -qJD(6) * t912 + t846;
t791 = t587 * t687 - t755 * t646;
t790 = g(1) * t639 + g(2) * t635 + g(3) * t677;
t640 = t658 * t776 + t772 * t897;
t789 = -g(1) * t640 - g(2) * t636 - g(3) * t678;
t788 = -g(1) * t658 + g(2) * t653 - g(3) * t701;
t489 = t819 + t930;
t784 = -t489 + t790;
t783 = -t529 + t929;
t509 = -pkin(4) * t693 - t800;
t780 = t790 - t819;
t491 = -qJD(6) * t804 + t830;
t757 = -pkin(5) * t768 - pkin(4);
t756 = -pkin(3) - t926;
t735 = pkin(2) * t847;
t715 = -t770 * t889 + t884;
t713 = -t770 * t888 - t886;
t712 = -t847 + t889;
t707 = t834 * t772;
t671 = -t755 * t899 + t705;
t575 = t624 * t768 + t693 * t765;
t574 = t624 * t765 - t693 * t768;
t569 = t640 * t760 - t657 * t759;
t568 = -t640 * t759 - t657 * t760;
t548 = t804 * t864;
t523 = -pkin(5) * t908 + t544;
t522 = pkin(5) * t628 + t550;
t515 = pkin(5) * t602 + t525;
t508 = qJD(6) * t561 + t775 * t574 + t575 * t771;
t507 = -qJD(6) * t560 - t574 * t771 + t575 * t775;
t497 = pkin(5) * t574 + t509;
t484 = -pkin(10) * t574 + t486;
t483 = pkin(5) * t536 + t489;
t482 = pkin(5) * t623 - pkin(10) * t575 + t485;
t474 = -qJD(6) * t481 + t831;
t473 = qJD(6) * t480 + t809;
t1 = [(-t541 * t701 - t542 * t700 + t590 * t695 + t591 * t692 + t595 * t694 - t596 * t693 - t625 * t648 + t626 * t647) * MDP(11) + ((pkin(2) * t709 * t867 + t758 * t934) * MDP(12) + (t777 * t821 - t822 * t867) * MDP(7) + (qJD(2) * t777 * t822 + t773 * t821) * MDP(6) - t814 * MDP(11)) * t767 + (t490 * t677 + t507 * t662 + t561 * t570 - t623 * t804) * MDP(26) + (-t490 * t560 - t491 * t561 + t507 * t940 + t508 * t804) * MDP(25) + (-t491 * t677 - t508 * t662 - t560 * t570 + t623 * t940) * MDP(27) + ((-qJD(6) * t806 + t482 * t775 - t484 * t771) * t662 + t807 * t570 + t474 * t677 + t480 * t623 - t497 * t940 + t522 * t491 + t483 * t560 + t515 * t508 + g(1) * t935 - g(2) * t569) * MDP(29) + (t773 * t855 - t858 * t870) * MDP(5) * t928 + (t490 * t561 - t507 * t804) * MDP(24) + (g(1) * t636 - g(2) * t640 + t529 * t677 + t543 * t693 + t613 * t572 + t587 * t623 + t590 * t663 + t646 * t829 + t687 * t800 - t700 * t819) * MDP(18) + (t485 * t663 + t510 * t572 + t478 * t677 + t500 * t623 + t509 * t602 + t550 * t536 + t489 * t628 + t525 * t574 - g(1) * (-t636 * t768 + t654 * t765) - g(2) * (t640 * t768 - t657 * t765)) * MDP(20) + (-t486 * t663 - t511 * t572 - t479 * t677 - t501 * t623 + t509 * t604 + t550 * t537 + t489 * t629 + t525 * t575 - g(1) * (t636 * t765 + t654 * t768) - g(2) * (-t640 * t765 - t657 * t768)) * MDP(21) + (t571 * t700 + t624 * t687 + t646 * t678 - t693 * t781) * MDP(15) + (-t571 * t677 - t572 * t678 + t623 * t781 - t624 * t663) * MDP(14) + (t571 * t678 - t624 * t781) * MDP(13) + (t529 * t678 - t544 * t693 + t613 * t571 + t587 * t624 - t590 * t781 - t646 * t882 - t687 * t794 - t700 * t795 + t815) * MDP(19) + (t851 * t928 + (-pkin(8) * t898 + t750) * t747 + (-pkin(8) * t836 + t744) * t770 - g(1) * t713 - g(2) * t715 - t871 * qJD(2) ^ 2 - 0.2e1 * t931 * t858) * MDP(9) + (t479 * t511 + t501 * t486 + t478 * t510 + t500 * t485 + t489 * t550 + t525 * t509 - g(1) * (pkin(3) * t653 - pkin(4) * t636 + pkin(9) * t654 - qJ(5) * t635 + t803) - g(2) * (pkin(3) * t658 + pkin(4) * t640 - pkin(9) * t657 + qJ(5) * t639 + t827)) * MDP(23) + (-g(1) * t803 - g(2) * t827 + t541 * t625 + t542 * t626 - t595 * t590 + t596 * t591) * MDP(12) + (-t572 * t700 - t623 * t687 - t646 * t677 - t663 * t693) * MDP(16) + (t646 * t700 + t687 * t693) * MDP(17) + (t570 * t677 + t623 * t662) * MDP(28) + t770 * t904 + (-(qJD(6) * t807 + t482 * t771 + t484 * t775) * t662 - t806 * t570 - t473 * t677 - t481 * t623 - t497 * t804 + t522 * t490 + t483 * t561 + t515 * t507 - g(1) * t936 - g(2) * t568) * MDP(30) + qJDD(1) * MDP(1) + (qJDD(1) * t763 + 0.2e1 * t773 * t838) * t761 * MDP(4) + t814 * MDP(3) + (-t478 * t629 - t479 * t628 - t485 * t604 - t486 * t602 - t500 * t575 - t501 * t574 - t510 * t537 - t511 * t536 - t815) * MDP(22) + (-g(2) * t778 + t921) * MDP(2) + (-(-pkin(8) * t843 + t746) * t823 - t871 * t747 - (-pkin(8) * t817 + t845) * t770 - g(1) * t712 - g(2) * t714 + 0.2e1 * (-t838 - t856) * t927) * MDP(10); ((t596 - t615) * t695 + (t595 - t616) * t692 + (t647 * t766 - t648 * t769) * pkin(2)) * MDP(11) + (-t543 * t695 + t756 * t572 + t610 * t687 - t615 * t663 + t791 * t772 + ((-t630 - t865) * t687 + t783) * t776) * MDP(18) + (t756 * t571 + t881 * t687 + t544 * t695 + t615 * t781 + t791 * t776 + (t687 * t865 - t783) * t772) * MDP(19) + (t663 * t695 - t687 * t864 + t880) * MDP(16) + (-(t650 * t771 + t660 * t775) * t570 + t473 * t776 + t707 * t490 - t483 * t703 - g(1) * (-t657 * t903 + t658 * t760) - g(2) * (-t653 * t760 - t654 * t903) - g(3) * (t700 * t903 + t701 * t760) + (t771 * t812 + t775 * t811) * t662 - t875 * t804 + t879 * t515 - t481 * t824) * MDP(30) + (t479 * t672 + t478 * t671 + t489 * t772 * t755 - g(1) * (pkin(2) * t714 + pkin(9) * t658) - g(2) * (-pkin(2) * t889 - pkin(9) * t653 + t735) - g(3) * (pkin(2) * t896 + t924) + (t755 * t863 - t546) * t525 + t876 * t501 + t877 * t500 + t929 * t801) * MDP(23) + (t500 * t633 + t501 * t632 - t536 * t672 - t537 * t671 - t877 * t604 - t876 * t602 + (-t500 * t768 - t501 * t765) * t863 + (-t478 * t768 - t479 * t765 + t929) * t772) * MDP(22) + (-t525 * t633 - t546 * t604 - t672 * t572 - t876 * t663 + t788 * t768 + (t479 + (t525 * t768 + t604 * t755) * qJD(4) - t929 * t765) * t776 + (t489 * t768 - t501 * t687 + t755 * t537) * t772) * MDP(21) + (-t525 * t632 - t546 * t602 + t671 * t572 + t877 * t663 + t788 * t765 + (-t478 + (t525 * t765 + t602 * t755) * qJD(4) + t929 * t768) * t776 + (t489 * t765 + t500 * t687 + t755 * t536) * t772) * MDP(20) + t904 + (t646 * t772 + t687 * t825 + t906) * MDP(15) - t687 * t695 * MDP(17) + (-t490 * t703 - t804 * t879) * MDP(24) + (-t490 * t702 + t491 * t703 + t804 * t878 + t879 * t940) * MDP(25) + (t491 * t776 + t824 * t940 + t813) * MDP(27) + ((t650 * t775 - t660 * t771) * t570 - t474 * t776 + t707 * t491 + t483 * t702 - g(1) * (t657 * t902 + t658 * t759) - g(2) * (-t653 * t759 + t654 * t902) - g(3) * (-t700 * t902 + t701 * t759) + (t771 * t811 - t775 * t812) * t662 - t875 * t940 + t878 * t515 + t480 * t824) * MDP(29) + (t571 * t772 - t781 * t825) * MDP(13) + (-t570 * t776 + t662 * t824) * MDP(28) + (-t777 * t841 + t836) * MDP(6) + (t773 * t841 + t835) * MDP(7) + (-t490 * t776 + t804 * t905 - t548 - t937) * MDP(26) - t773 * MDP(4) * t850 + (pkin(1) * t850 + (-pkin(8) * t844 + t745) * t869 + g(1) * t715 - g(2) * t713 + g(3) * t898 + t745 * qJD(2) - t845) * MDP(10) + (-g(2) * t735 + t595 * t615 - t596 * t616 + (t542 * t766 + t541 * t769 - t922 + g(2) * t889 + (-t709 * t868 - t918) * t767) * pkin(2)) * MDP(12) + ((t571 - t909) * t776 + (-t572 + t907) * t772) * MDP(14) + (-t922 + g(2) * t712 + t744 + (-pkin(8) * t856 - t918) * t767 + t931 * t779) * MDP(9) + t870 * MDP(5) * t901; (-t692 ^ 2 - t695 ^ 2) * MDP(11) + (t595 * t695 - t596 * t692 + t833 + t854) * MDP(12) + t880 * MDP(18) + MDP(19) * t906 + (t602 * t633 - t604 * t632) * MDP(22) + (t500 * t632 - t501 * t633 + t833) * MDP(23) + t813 * MDP(29) + (-t548 + t937) * MDP(30) + ((-pkin(1) * qJDD(1) - pkin(2) * t855 - t921) * MDP(12) - MDP(23) * t921) * t767 + (-MDP(18) * t695 + MDP(20) * t632 + MDP(21) * t633) * t663 + (t692 * t860 - t536 * MDP(20) - t537 * MDP(21) - t489 * MDP(23) - t491 * MDP(29) - t490 * MDP(30) + (-t860 + (-t602 * t768 + t604 * t765) * MDP(22) + t805 * MDP(23) + (-MDP(20) * t765 - MDP(21) * t768) * t663) * qJD(4)) * t776 + (-t646 * MDP(19) + (t602 * t687 - t914) * MDP(20) + (t604 * t687 - t913) * MDP(21) + (-t536 * t768 + t537 * t765) * MDP(22) + (t525 * t687 + t808) * MDP(23) + t804 * t692 * MDP(30) + (-MDP(18) * qJD(4) - MDP(29) * t940) * t687) * t772; -t663 ^ 2 * MDP(14) + (t571 + t909) * MDP(15) + (-t572 - t907) * MDP(16) + t646 * MDP(17) + (t544 * t687 + t780) * MDP(18) + (t543 * t687 + t587 * t663 - t789 - t795) * MDP(19) + (-qJ(5) * t914 - pkin(4) * t536 - t544 * t602 + (t765 * t859 - t516) * t663 + t784 * t768) * MDP(20) + (-qJ(5) * t913 - pkin(4) * t537 - t544 * t604 + (t768 * t859 + t517) * t663 - t784 * t765) * MDP(21) + (t516 * t604 + t517 * t602 + (-qJ(5) * t536 - qJD(5) * t602 - t500 * t663 + t479) * t768 + (qJ(5) * t537 + qJD(5) * t604 - t501 * t663 - t478) * t765 + t789) * MDP(22) + (-t500 * t516 - t501 * t517 - t525 * t544 + t805 * qJD(5) + t784 * pkin(4) + (t789 + t808) * qJ(5)) * MDP(23) + (t490 * t720 + t804 * t874) * MDP(24) + (-t490 * t718 - t491 * t720 + t804 * t873 - t874 * t940) * MDP(25) + (t570 * t720 - t662 * t874) * MDP(26) + (-t570 * t718 - t662 * t873) * MDP(27) + ((-t731 * t775 - t732 * t771) * t570 + t757 * t491 + t483 * t718 + t523 * t940 + (t771 * t798 - t775 * t799) * t662 + t873 * t515 + t790 * t760) * MDP(29) + (-(-t731 * t771 + t732 * t775) * t570 + t757 * t490 + t483 * t720 + t523 * t804 + (t771 * t799 + t775 * t798) * t662 - t874 * t515 - t790 * t759) * MDP(30) - (MDP(13) * t663 - MDP(14) * t781 - MDP(18) * t587 - MDP(20) * t500 + MDP(21) * t501 + MDP(26) * t804 - MDP(27) * t940 - MDP(28) * t662 - MDP(29) * t480 + MDP(30) * t481) * t781; (t604 * t663 + t536) * MDP(20) + (-t602 * t663 + t537) * MDP(21) + (-t602 ^ 2 - t604 ^ 2) * MDP(22) + (t500 * t604 + t501 * t602 - t780 + t930) * MDP(23) + (t491 - t939) * MDP(29) + (t490 + t942) * MDP(30); t804 * t940 * MDP(24) + (t804 ^ 2 - t940 ^ 2) * MDP(25) + (t846 - t942) * MDP(26) + (-t830 - t939) * MDP(27) + t570 * MDP(28) + (t481 * t662 + t515 * t804 - g(1) * t568 + g(2) * t936 - g(3) * (-t678 * t759 + t700 * t760) + t831) * MDP(29) + (t480 * t662 - t515 * t940 + g(1) * t569 + g(2) * t935 - g(3) * (-t678 * t760 - t700 * t759) - t809) * MDP(30) + (-MDP(26) * t912 + MDP(27) * t804 - MDP(29) * t481 - MDP(30) * t480) * qJD(6);];
tau  = t1;
