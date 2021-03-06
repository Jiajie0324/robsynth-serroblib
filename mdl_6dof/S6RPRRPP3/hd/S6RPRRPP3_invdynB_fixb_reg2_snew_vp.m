% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPRRPP3
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,theta2]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 21:28
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPRRPP3_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP3_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPP3_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRRPP3_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRRPP3_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPRRPP3_invdynB_fixb_reg2_snew_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 21:27:37
% EndTime: 2019-05-05 21:28:05
% DurationCPUTime: 25.40s
% Computational Cost: add. (37709->656), mult. (72864->861), div. (0->0), fcn. (46170->8), ass. (0->455)
t851 = cos(qJ(3));
t895 = qJD(1) * t851;
t827 = -qJD(4) + t895;
t825 = t827 ^ 2;
t847 = sin(qJ(4));
t850 = cos(qJ(4));
t848 = sin(qJ(3));
t896 = qJD(1) * t848;
t796 = qJD(3) * t847 + t850 * t896;
t957 = t796 ^ 2;
t738 = -t957 - t825;
t890 = qJD(1) * qJD(3);
t832 = t848 * t890;
t888 = qJDD(1) * t851;
t803 = -t832 + t888;
t791 = -qJDD(4) + t803;
t794 = -t850 * qJD(3) + t847 * t896;
t910 = t794 * t796;
t862 = t791 - t910;
t979 = t850 * t862;
t1010 = t738 * t847 - t979;
t883 = t851 * t890;
t889 = qJDD(1) * t848;
t802 = t883 + t889;
t865 = t847 * qJDD(3) + t850 * t802;
t677 = (qJD(4) - t827) * t794 - t865;
t1030 = t1010 * t851 + t677 * t848;
t976 = t862 * t847;
t618 = t738 * t850 + t976;
t843 = sin(pkin(9));
t844 = cos(pkin(9));
t1049 = t1030 * t843 + t618 * t844;
t1050 = t1030 * t844 - t618 * t843;
t849 = sin(qJ(1));
t852 = cos(qJ(1));
t453 = t1049 * t849 - t1050 * t852;
t1106 = pkin(6) * t453;
t1084 = t1049 * t852 + t1050 * t849;
t1105 = pkin(6) * t1084;
t761 = -t957 + t825;
t861 = t791 + t910;
t923 = t861 * t847;
t633 = t761 * t850 - t923;
t1036 = t633 * t844;
t922 = t861 * t850;
t640 = t761 * t847 + t922;
t1038 = t640 * t851;
t673 = (-qJD(4) - t827) * t794 + t865;
t572 = t673 * t848 - t1038;
t513 = t572 * t843 - t1036;
t1037 = t633 * t843;
t519 = t572 * t844 + t1037;
t1117 = t513 * t852 + t519 * t849;
t1116 = t513 * t849 - t519 * t852;
t958 = t794 ^ 2;
t969 = -t825 - t958;
t1012 = t969 * t847 - t922;
t1013 = t969 * t850 + t923;
t722 = qJD(4) * t796 - t850 * qJDD(3) + t802 * t847;
t909 = t796 * t827;
t975 = t722 - t909;
t1028 = t1013 * t851 + t848 * t975;
t1052 = t1012 * t843 + t1028 * t844;
t1053 = -t1012 * t844 + t1028 * t843;
t1081 = t1052 * t849 + t1053 * t852;
t1108 = pkin(6) * t1081;
t1082 = t1052 * t852 - t1053 * t849;
t1107 = pkin(6) * t1082;
t1094 = qJ(2) * t1049;
t1092 = pkin(1) * t1049 + pkin(2) * t618 + pkin(7) * t1030;
t1031 = t1010 * t848 - t677 * t851;
t1088 = -pkin(1) * t1031 + qJ(2) * t1050;
t739 = t957 - t958;
t1021 = t739 * t848;
t1000 = t975 * t850;
t592 = t677 * t847 - t1000;
t550 = t592 * t851 + t1021;
t938 = t975 * t847;
t586 = t677 * t850 + t938;
t484 = t550 * t843 + t586 * t844;
t487 = t550 * t844 - t586 * t843;
t1115 = t484 * t852 + t487 * t849;
t1114 = t484 * t849 - t487 * t852;
t760 = t958 - t825;
t643 = t760 * t850 + t976;
t669 = t722 + t909;
t573 = t643 * t851 - t669 * t848;
t998 = t760 * t847 - t979;
t514 = t573 * t843 - t844 * t998;
t520 = t573 * t844 + t843 * t998;
t1113 = t514 * t852 + t520 * t849;
t1080 = t514 * t849 - t520 * t852;
t723 = -qJD(4) * t794 + t865;
t770 = t794 * t827;
t676 = t723 - t770;
t936 = t669 * t847;
t1042 = -t676 * t850 - t936;
t698 = t958 + t957;
t1023 = t698 * t848;
t666 = t850 * t669;
t1043 = t676 * t847 - t666;
t1054 = t1043 * t851 - t1023;
t1085 = t1042 * t843 + t1054 * t844;
t1086 = -t1042 * t844 + t1054 * t843;
t1098 = t1085 * t849 + t1086 * t852;
t1112 = pkin(6) * t1098;
t1099 = t1085 * t852 - t1086 * t849;
t1111 = pkin(6) * t1099;
t1093 = qJ(2) * t1053;
t1062 = -pkin(2) * t1031 - pkin(8) * t1010;
t1110 = -pkin(3) * t677 - t1062;
t1091 = pkin(1) * t1053 - pkin(2) * t1012 + pkin(7) * t1028;
t1029 = t1013 * t848 - t851 * t975;
t1087 = -pkin(1) * t1029 + qJ(2) * t1052;
t1072 = pkin(7) * t1031;
t1104 = qJ(2) * t1086;
t1039 = t640 * t848;
t1103 = t673 * t851 + t1039;
t1102 = pkin(1) * t1086 + pkin(7) * t1054;
t1022 = t698 * t851;
t1055 = t1043 * t848 + t1022;
t1100 = -pkin(1) * t1055 + qJ(2) * t1085;
t1073 = pkin(7) * t1029;
t1095 = pkin(7) * t1055;
t1090 = -pkin(2) * t1029 - pkin(8) * t1013;
t1026 = pkin(3) * t698;
t1089 = -pkin(2) * t1055 - pkin(8) * t1043 - t1026;
t1077 = pkin(3) * t618;
t1076 = pkin(8) * t618;
t1071 = pkin(8) * t1042;
t893 = qJD(5) * t827;
t1064 = qJ(5) * t862 + t1077 + 0.2e1 * t893;
t1063 = pkin(3) * t975 + t1090;
t1059 = t643 * t848 + t669 * t851;
t1020 = t739 * t851;
t1058 = t592 * t848 - t1020;
t1047 = pkin(3) * t1012;
t1045 = pkin(8) * t1012;
t1033 = qJ(5) * t969 + t1047;
t1025 = (t975 - t909) * pkin(4);
t1024 = qJ(5) * t698;
t675 = t723 + t770;
t818 = g(1) * t852 + g(2) * t849;
t853 = qJD(1) ^ 2;
t799 = -pkin(1) * t853 - t818;
t817 = g(1) * t849 - t852 * g(2);
t864 = qJDD(1) * pkin(1) + t817;
t727 = t844 * t799 + t843 * t864;
t708 = -pkin(2) * t853 + qJDD(1) * pkin(7) + t727;
t953 = pkin(3) * t851;
t875 = -pkin(8) * t848 - t953;
t800 = t875 * qJD(1);
t900 = g(3) - qJDD(2);
t831 = t851 * t900;
t956 = qJD(3) ^ 2;
t631 = (qJD(1) * t800 + t708) * t848 - qJDD(3) * pkin(3) - t956 * pkin(8) + t831;
t857 = t722 * pkin(4) - qJ(5) * t675 + t631;
t855 = 0.2e1 * qJD(5) * t796 - t857;
t726 = t843 * t799 - t844 * t864;
t880 = t726 * t843 + t844 * t727;
t629 = t726 * t844 - t727 * t843;
t944 = t629 * t849;
t552 = t852 * t880 + t944;
t943 = t629 * t852;
t1011 = -t849 * t880 + t943;
t805 = qJDD(1) * t843 + t844 * t853;
t767 = -qJ(2) * t805 + t844 * t900;
t806 = qJDD(1) * t844 - t843 * t853;
t964 = -qJ(2) * t806 - t843 * t900;
t972 = t852 * t805 + t806 * t849;
t1009 = -pkin(6) * t972 + t767 * t852 + t849 * t964;
t902 = t827 * t850;
t885 = t794 * t902;
t863 = t722 * t847 - t885;
t887 = t848 * t910;
t961 = t851 * t863 - t887;
t903 = t827 * t847;
t753 = t794 * t903;
t974 = t722 * t850 + t753;
t990 = t843 * t961 + t844 * t974;
t991 = -t843 * t974 + t844 * t961;
t988 = t849 * t991 + t852 * t990;
t989 = -t849 * t990 + t852 * t991;
t754 = t796 * t903;
t899 = t850 * t723 + t754;
t959 = t851 * t899 + t887;
t755 = t796 * t902;
t973 = -t723 * t847 + t755;
t992 = t843 * t959 + t844 * t973;
t993 = -t843 * t973 + t844 * t959;
t986 = t849 * t993 + t852 * t992;
t987 = -t849 * t992 + t852 * t993;
t869 = -t754 + t885;
t911 = t791 * t848;
t960 = t851 * t869 - t911;
t898 = -t753 - t755;
t983 = t843 * t898;
t995 = t844 * t960 - t983;
t982 = t844 * t898;
t996 = t843 * t960 + t982;
t1008 = -t849 * t996 + t852 * t995;
t1007 = t849 * t995 + t852 * t996;
t730 = -t805 * t849 + t852 * t806;
t1006 = -pkin(6) * t730 - t767 * t849 + t852 * t964;
t984 = qJ(5) * t677;
t971 = t958 * pkin(5) - 0.2e1 * qJD(6) * t794;
t774 = t851 * t791;
t965 = t848 * t869 + t774;
t886 = t851 * t910;
t873 = t848 * t863 + t886;
t872 = t848 * t899 - t886;
t955 = 0.2e1 * qJD(6);
t954 = pkin(3) * t848;
t952 = pkin(4) * t827;
t951 = pkin(4) * t847;
t950 = pkin(4) * t850;
t949 = pkin(4) + qJ(6);
t946 = qJ(5) * t669;
t942 = t631 * t847;
t941 = t631 * t850;
t707 = -qJDD(1) * pkin(2) - t853 * pkin(7) + t726;
t921 = t707 * t848;
t920 = t707 * t851;
t919 = t722 * qJ(6);
t826 = t851 * t853 * t848;
t812 = -t826 + qJDD(3);
t906 = t812 * t848;
t905 = t812 * t851;
t813 = qJDD(3) + t826;
t904 = t813 * t848;
t839 = t848 ^ 2;
t901 = t839 * t853;
t867 = -t803 + t832;
t868 = t802 + t883;
t617 = pkin(3) * t867 - pkin(8) * t868 + t707;
t682 = t851 * t708 - t848 * t900;
t632 = -pkin(3) * t956 + qJDD(3) * pkin(8) + t800 * t895 + t682;
t546 = t847 * t617 + t850 * t632;
t840 = t851 ^ 2;
t897 = t839 + t840;
t882 = -qJ(5) * t847 - pkin(3);
t881 = -0.2e1 * qJD(5) - t952;
t545 = -t850 * t617 + t847 * t632;
t680 = t848 * t708 + t831;
t596 = t680 * t848 + t851 * t682;
t744 = -t817 * t849 - t852 * t818;
t877 = t843 * t826;
t876 = t844 * t826;
t809 = qJDD(1) * t852 - t849 * t853;
t874 = -pkin(6) * t809 - g(3) * t849;
t729 = pkin(4) * t794 - qJ(5) * t796;
t866 = t825 * pkin(4) + t791 * qJ(5) + t794 * t729 - t546;
t469 = -t545 * t850 + t546 * t847;
t470 = t545 * t847 + t546 * t850;
t595 = t680 * t851 - t682 * t848;
t743 = t817 * t852 - t818 * t849;
t816 = -0.2e1 * t893;
t495 = t816 - t866;
t860 = t791 * pkin(4) - t825 * qJ(5) + t796 * t729 + qJDD(5) + t545;
t752 = pkin(5) * t796 + qJ(6) * t827;
t858 = t722 * pkin(5) + qJ(6) * t958 + t827 * t752 - qJDD(6) + t866;
t471 = t816 - t858;
t856 = t723 * pkin(5) + qJ(6) * t861 + t860;
t854 = t855 + t971;
t468 = (-pkin(5) * t794 + t955) * t827 + t856;
t837 = t840 * t853;
t824 = -t837 - t956;
t823 = t837 - t956;
t822 = -t901 - t956;
t821 = -t901 + t956;
t811 = t837 - t901;
t810 = t837 + t901;
t808 = qJDD(1) * t849 + t852 * t853;
t807 = t897 * qJDD(1);
t804 = -0.2e1 * t832 + t888;
t801 = 0.2e1 * t883 + t889;
t793 = t851 * t813;
t792 = t897 * t890;
t773 = -pkin(6) * t808 + g(3) * t852;
t759 = t802 * t851 - t839 * t890;
t758 = -t803 * t848 - t840 * t890;
t757 = qJDD(3) * t843 + t792 * t844;
t756 = -qJDD(3) * t844 + t792 * t843;
t751 = -t822 * t848 - t905;
t750 = -t821 * t848 + t793;
t749 = t824 * t851 - t904;
t748 = t823 * t851 - t906;
t747 = t822 * t851 - t906;
t746 = t824 * t848 + t793;
t735 = t807 * t844 - t810 * t843;
t734 = t807 * t843 + t810 * t844;
t728 = -t801 * t848 + t804 * t851;
t720 = t759 * t844 - t877;
t719 = t758 * t844 + t877;
t718 = t759 * t843 + t876;
t717 = t758 * t843 - t876;
t716 = t750 * t844 + t843 * t889;
t715 = t748 * t844 + t843 * t888;
t714 = t750 * t843 - t844 * t889;
t713 = t748 * t843 - t844 * t888;
t692 = t751 * t844 + t801 * t843;
t691 = t749 * t844 - t804 * t843;
t690 = t751 * t843 - t801 * t844;
t689 = t749 * t843 + t804 * t844;
t687 = (t794 * t850 - t796 * t847) * t827;
t681 = t728 * t844 - t811 * t843;
t679 = t728 * t843 + t811 * t844;
t657 = -t734 * t849 + t735 * t852;
t656 = t734 * t852 + t735 * t849;
t648 = t687 * t851 - t911;
t646 = -pkin(7) * t747 + t920;
t639 = -pkin(7) * t746 + t921;
t625 = -pkin(2) * t747 + t682;
t624 = -pkin(2) * t746 + t680;
t616 = pkin(1) * t900 + qJ(2) * t880;
t601 = -t690 * t849 + t692 * t852;
t600 = -t689 * t849 + t691 * t852;
t599 = t690 * t852 + t692 * t849;
t598 = t689 * t852 + t691 * t849;
t597 = pkin(5) * t861 - qJ(5) * t975;
t591 = -t675 * t847 - t1000;
t589 = t673 * t847 - t666;
t585 = -t675 * t850 + t938;
t583 = -t673 * t850 - t936;
t580 = t648 * t844 - t983;
t577 = t648 * t843 + t982;
t571 = t676 * t848 - t1038;
t563 = -qJ(2) * t734 + t595 * t844;
t562 = qJ(2) * t735 + t595 * t843;
t555 = t596 * t844 + t707 * t843;
t554 = t596 * t843 - t707 * t844;
t553 = t941 - t1076;
t549 = t591 * t851 + t1021;
t547 = -pkin(5) * t862 - t677 * t949;
t544 = t942 - t1045;
t529 = t589 * t851 - t1023;
t526 = t589 * t848 + t1022;
t525 = -qJ(2) * t690 - t625 * t843 + t646 * t844;
t524 = -qJ(2) * t689 - t624 * t843 + t639 * t844;
t523 = t796 * t881 + t857;
t518 = t571 * t844 + t1037;
t512 = t571 * t843 - t1036;
t504 = -pkin(1) * t747 + qJ(2) * t692 + t625 * t844 + t646 * t843;
t503 = -pkin(1) * t746 + qJ(2) * t691 + t624 * t844 + t639 * t843;
t494 = t546 - t1077;
t493 = -pkin(3) * t583 + pkin(4) * t673 + t946;
t492 = t545 - t1047;
t491 = -t855 + t1025;
t490 = pkin(4) * t909 + t855 - t984;
t489 = t860 + t1024;
t488 = pkin(4) * t698 + t495;
t486 = t549 * t844 - t585 * t843;
t483 = t549 * t843 + t585 * t844;
t479 = t529 * t844 + t583 * t843;
t476 = t529 * t843 - t583 * t844;
t475 = -pkin(3) * t1042 + t676 * t949 + t946;
t474 = t919 + (-t752 + t881) * t796 + t857 - t971;
t473 = -t554 * t849 + t555 * t852;
t472 = t554 * t852 + t555 * t849;
t467 = -t942 + t1110;
t466 = t1063 + t941;
t465 = -qJ(2) * t554 - (pkin(2) * t843 - pkin(7) * t844) * t595;
t464 = pkin(4) * t738 + t1064 + t866;
t463 = -pkin(4) * t861 + t1033 - t860;
t462 = (t752 + t952) * t796 + t854 + pkin(5) * t738 - t919 - t984;
t461 = t490 * t850 + t677 * t951 + t1076;
t460 = t470 * t851 + t631 * t848;
t459 = t470 * t848 - t631 * t851;
t458 = qJ(5) * t1000 - t491 * t847 + t1045;
t457 = t1024 + t827 * t955 + (t676 - t770) * pkin(5) + t856;
t456 = -t469 - t1071;
t449 = t854 + t796 * t752 + (-t975 - t722) * qJ(6) - t1025 + pkin(5) * t969;
t448 = -pkin(5) * t669 + t698 * t949 + t471;
t447 = t495 * t850 + t847 * t860;
t446 = t495 * t847 - t850 * t860;
t439 = qJ(2) * t555 - (-pkin(2) * t844 - pkin(7) * t843 - pkin(1)) * t595;
t438 = t738 * t949 + t1064 + t858;
t437 = t861 * t949 - t1033 + t468;
t436 = -t494 * t848 + t553 * t851 + t1072;
t435 = -t492 * t848 + t544 * t851 - t1073;
t432 = -t476 * t849 + t479 * t852;
t429 = t476 * t852 + t479 * t849;
t428 = -t847 * t490 - (-pkin(3) - t950) * t677 + t1062;
t427 = -t850 * t491 + t882 * t975 - t1090;
t426 = -t449 * t847 + t597 * t850 - t1045;
t425 = pkin(5) * t468 - qJ(5) * t474;
t424 = t462 * t850 - t547 * t847 + t1076;
t423 = t1089 - t470;
t422 = t468 * t847 + t471 * t850;
t421 = -t468 * t850 + t471 * t847;
t420 = -pkin(8) * t583 - t488 * t847 + t489 * t850;
t419 = t447 * t851 + t523 * t848;
t418 = t447 * t848 - t523 * t851;
t417 = t460 * t844 + t469 * t843;
t416 = t460 * t843 - t469 * t844;
t415 = t1042 * t954 + t456 * t851 - t1095;
t414 = -pkin(2) * t459 + pkin(3) * t631 - pkin(8) * t470;
t413 = -t449 * t850 - t597 * t847 + t1063;
t412 = -t462 * t847 - t547 * t850 - t1110;
t411 = -pkin(2) * t526 - pkin(8) * t589 - t488 * t850 - t489 * t847 - t1026;
t410 = -pkin(8) * t446 + (-qJ(5) * t850 + t951) * t523;
t409 = t461 * t851 - t464 * t848 - t1072;
t408 = -pkin(3) * t446 + pkin(4) * t860 - qJ(5) * t495;
t407 = pkin(5) * t471 - t474 * t949;
t406 = t458 * t851 - t463 * t848 + t1073;
t405 = t422 * t851 + t474 * t848;
t404 = t422 * t848 - t474 * t851;
t403 = -t448 * t847 + t457 * t850 - t1071;
t402 = -pkin(7) * t459 + (-pkin(8) * t851 + t954) * t469;
t401 = -pkin(7) * t526 + t420 * t851 - t493 * t848;
t400 = t436 * t844 - t467 * t843 + t1094;
t399 = t419 * t844 + t446 * t843;
t398 = t419 * t843 - t446 * t844;
t397 = t435 * t844 - t466 * t843 - t1093;
t396 = -t448 * t850 - t457 * t847 + t1089;
t395 = t436 * t843 + t467 * t844 - t1088;
t394 = t435 * t843 + t466 * t844 + t1087;
t393 = t426 * t851 - t437 * t848 - t1073;
t392 = t424 * t851 - t438 * t848 - t1072;
t391 = -t416 * t849 + t417 * t852;
t390 = t416 * t852 + t417 * t849;
t389 = t403 * t851 - t475 * t848 - t1095;
t388 = t405 * t844 + t421 * t843;
t387 = t405 * t843 - t421 * t844;
t386 = -pkin(3) * t421 - qJ(5) * t471 + t468 * t949;
t385 = t415 * t844 - t423 * t843 - t1104;
t384 = t409 * t844 - t428 * t843 - t1094;
t383 = -pkin(2) * t418 - pkin(8) * t447 + (-t882 + t950) * t523;
t382 = t406 * t844 - t427 * t843 + t1093;
t381 = t415 * t843 + t423 * t844 + t1100;
t380 = t409 * t843 + t428 * t844 + t1088;
t379 = t406 * t843 + t427 * t844 - t1087;
t378 = -pkin(8) * t421 - t407 * t847 + t425 * t850;
t377 = -qJ(2) * t476 + t401 * t844 - t411 * t843;
t376 = -t398 * t849 + t399 * t852;
t375 = t398 * t852 + t399 * t849;
t374 = t393 * t844 - t413 * t843 - t1093;
t373 = t392 * t844 - t412 * t843 - t1094;
t372 = -pkin(1) * t526 + qJ(2) * t479 + t401 * t843 + t411 * t844;
t371 = -pkin(7) * t418 - t408 * t848 + t410 * t851;
t370 = t393 * t843 + t413 * t844 + t1087;
t369 = t392 * t843 + t412 * t844 + t1088;
t368 = -qJ(2) * t416 + t402 * t844 - t414 * t843;
t367 = -pkin(1) * t459 + qJ(2) * t417 + t402 * t843 + t414 * t844;
t366 = t389 * t844 - t396 * t843 - t1104;
t365 = t389 * t843 + t396 * t844 + t1100;
t364 = -t387 * t849 + t388 * t852;
t363 = t387 * t852 + t388 * t849;
t362 = -pkin(2) * t404 + pkin(3) * t474 - pkin(8) * t422 - t407 * t850 - t425 * t847;
t361 = -pkin(7) * t404 + t378 * t851 - t386 * t848;
t360 = -qJ(2) * t398 + t371 * t844 - t383 * t843;
t359 = -pkin(1) * t418 + qJ(2) * t399 + t371 * t843 + t383 * t844;
t358 = -qJ(2) * t387 + t361 * t844 - t362 * t843;
t357 = -pkin(1) * t404 + qJ(2) * t388 + t361 * t843 + t362 * t844;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t808, -t809, 0, t744, 0, 0, 0, 0, 0, 0, -t972, -t730, 0, t552, 0, 0, 0, 0, 0, 0, t600, t601, t657, t473, 0, 0, 0, 0, 0, 0, t1082, t453, t1099, t391, 0, 0, 0, 0, 0, 0, t432, -t1082, -t453, t376, 0, 0, 0, 0, 0, 0, t1099, -t453, t1082, t364; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t809, -t808, 0, t743, 0, 0, 0, 0, 0, 0, t730, -t972, 0, -t1011, 0, 0, 0, 0, 0, 0, t598, t599, t656, t472, 0, 0, 0, 0, 0, 0, t1081, -t1084, t1098, t390, 0, 0, 0, 0, 0, 0, t429, -t1081, t1084, t375, 0, 0, 0, 0, 0, 0, t1098, t1084, t1081, t363; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t900, 0, 0, 0, 0, 0, 0, t746, t747, 0, -t595, 0, 0, 0, 0, 0, 0, t1029, -t1031, t1055, t459, 0, 0, 0, 0, 0, 0, t526, -t1029, t1031, t418, 0, 0, 0, 0, 0, 0, t1055, t1031, t1029, t404; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t809, 0, -t808, 0, t874, -t773, -t743, -pkin(6) * t743, 0, 0, t730, 0, -t972, 0, t1006, -t1009, t1011, pkin(6) * t1011 + qJ(2) * t943 - t616 * t849, -t718 * t849 + t720 * t852, -t679 * t849 + t681 * t852, -t714 * t849 + t716 * t852, -t717 * t849 + t719 * t852, -t713 * t849 + t715 * t852, -t756 * t849 + t757 * t852, -pkin(6) * t598 - t503 * t849 + t524 * t852, -pkin(6) * t599 - t504 * t849 + t525 * t852, -pkin(6) * t656 - t562 * t849 + t563 * t852, -pkin(6) * t472 - t439 * t849 + t465 * t852, t987, -t483 * t849 + t486 * t852, -t512 * t849 + t518 * t852, t989, -t1080, t1008, -t394 * t849 + t397 * t852 - t1108, -t395 * t849 + t400 * t852 + t1105, -t381 * t849 + t385 * t852 - t1112, -pkin(6) * t390 - t367 * t849 + t368 * t852, -t577 * t849 + t580 * t852, t1116, t1080, t987, -t1114, t989, -pkin(6) * t429 - t372 * t849 + t377 * t852, -t379 * t849 + t382 * t852 + t1108, -t380 * t849 + t384 * t852 - t1105, -pkin(6) * t375 - t359 * t849 + t360 * t852, t1008, t1080, -t1116, t989, t1114, t987, -t365 * t849 + t366 * t852 - t1112, -t369 * t849 + t373 * t852 - t1105, -t370 * t849 + t374 * t852 - t1108, -pkin(6) * t363 - t357 * t849 + t358 * t852; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t808, 0, t809, 0, t773, t874, t744, pkin(6) * t744, 0, 0, t972, 0, t730, 0, t1009, t1006, t552, pkin(6) * t552 + qJ(2) * t944 + t616 * t852, t718 * t852 + t720 * t849, t679 * t852 + t681 * t849, t714 * t852 + t716 * t849, t717 * t852 + t719 * t849, t713 * t852 + t715 * t849, t756 * t852 + t757 * t849, pkin(6) * t600 + t503 * t852 + t524 * t849, pkin(6) * t601 + t504 * t852 + t525 * t849, pkin(6) * t657 + t562 * t852 + t563 * t849, pkin(6) * t473 + t439 * t852 + t465 * t849, t986, t483 * t852 + t486 * t849, t512 * t852 + t518 * t849, t988, t1113, t1007, t394 * t852 + t397 * t849 + t1107, t395 * t852 + t400 * t849 + t1106, t381 * t852 + t385 * t849 + t1111, pkin(6) * t391 + t367 * t852 + t368 * t849, t577 * t852 + t580 * t849, -t1117, -t1113, t986, t1115, t988, pkin(6) * t432 + t372 * t852 + t377 * t849, t379 * t852 + t382 * t849 - t1107, t380 * t852 + t384 * t849 - t1106, pkin(6) * t376 + t359 * t852 + t360 * t849, t1007, -t1113, t1117, t988, -t1115, t986, t365 * t852 + t366 * t849 + t1111, t369 * t852 + t373 * t849 - t1106, t370 * t852 + t374 * t849 + t1107, pkin(6) * t364 + t357 * t852 + t358 * t849; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t817, t818, 0, 0, 0, 0, 0, 0, 0, qJDD(1), pkin(1) * t806 - t726, -pkin(1) * t805 - t727, 0, -pkin(1) * t629, t868 * t848, t801 * t851 + t804 * t848, t821 * t851 + t904, -t867 * t851, t823 * t848 + t905, 0, pkin(1) * t689 + pkin(2) * t804 + pkin(7) * t749 - t920, pkin(1) * t690 - pkin(2) * t801 + pkin(7) * t751 + t921, pkin(1) * t734 + pkin(2) * t810 + pkin(7) * t807 + t596, pkin(1) * t554 - pkin(2) * t707 + pkin(7) * t596, t872, t591 * t848 - t1020, -t676 * t851 - t1039, t873, t1059, t965, t492 * t851 + t544 * t848 + t1091, t494 * t851 + t553 * t848 - t1092, t848 * t456 + (-pkin(2) - t953) * t1042 + t1102, pkin(1) * t416 + pkin(7) * t460 + (-pkin(2) + t875) * t469, t687 * t848 + t774, t1103, -t1059, t872, t1058, t873, pkin(1) * t476 - pkin(2) * t583 + pkin(7) * t529 + t420 * t848 + t493 * t851, t458 * t848 + t463 * t851 - t1091, t461 * t848 + t464 * t851 + t1092, pkin(1) * t398 - pkin(2) * t446 + pkin(7) * t419 + t408 * t851 + t410 * t848, t965, -t1059, -t1103, t873, -t1058, t872, -pkin(2) * t1042 + t403 * t848 + t475 * t851 + t1102, t424 * t848 + t438 * t851 + t1092, t426 * t848 + t437 * t851 + t1091, pkin(1) * t387 - pkin(2) * t421 + pkin(7) * t405 + t378 * t848 + t386 * t851;];
tauB_reg  = t1;
