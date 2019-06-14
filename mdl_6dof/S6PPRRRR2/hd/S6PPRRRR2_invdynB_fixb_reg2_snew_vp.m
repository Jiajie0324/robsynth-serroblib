% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6PPRRRR2
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
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d4,d5,d6,theta1,theta2]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-04 20:58
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6PPRRRR2_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRRR2_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PPRRRR2_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PPRRRR2_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PPRRRR2_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PPRRRR2_invdynB_fixb_reg2_snew_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-04 20:56:42
% EndTime: 2019-05-04 20:57:35
% DurationCPUTime: 51.45s
% Computational Cost: add. (403252->1008), mult. (745314->1701), div. (0->0), fcn. (602788->16), ass. (0->737)
t894 = sin(pkin(7));
t905 = sin(qJ(3));
t1025 = qJDD(3) * t905;
t909 = cos(qJ(3));
t910 = qJD(3) ^ 2;
t945 = t909 * t910 + t1025;
t836 = t945 * t894;
t895 = sin(pkin(6));
t899 = cos(pkin(6));
t898 = cos(pkin(7));
t838 = t945 * t898;
t1023 = qJDD(3) * t909;
t859 = -t905 * t910 + t1023;
t892 = sin(pkin(13));
t896 = cos(pkin(13));
t949 = t838 * t896 + t859 * t892;
t760 = -t836 * t895 + t899 * t949;
t797 = t838 * t892 - t859 * t896;
t893 = sin(pkin(12));
t897 = cos(pkin(12));
t706 = t760 * t893 + t797 * t897;
t1084 = t760 * t897 - t797 * t893;
t904 = sin(qJ(4));
t1031 = qJD(3) * t904;
t903 = sin(qJ(5));
t907 = cos(qJ(5));
t850 = -t907 * qJD(4) + t1031 * t903;
t1027 = qJD(3) * qJD(4);
t908 = cos(qJ(4));
t1016 = t908 * t1027;
t1026 = qJDD(3) * t904;
t855 = t1016 + t1026;
t1018 = t850 * qJD(5) - t903 * qJDD(4) - t907 * t855;
t1030 = qJD(3) * t908;
t876 = -qJD(5) + t1030;
t834 = t850 * t876;
t769 = t834 + t1018;
t864 = g(1) * t897 + g(2) * t893;
t863 = g(1) * t893 - t897 * g(2);
t889 = g(3) - qJDD(1);
t946 = t863 * t899 - t889 * t895;
t782 = -t864 * t892 - t896 * t946;
t828 = t863 * t895 + t899 * t889 - qJDD(2);
t1081 = t782 * t898 + t828 * t894;
t902 = sin(qJ(6));
t852 = qJD(4) * t903 + t1031 * t907;
t906 = cos(qJ(6));
t804 = t906 * t850 + t852 * t902;
t806 = -t850 * t902 + t852 * t906;
t1053 = t804 * t806;
t1024 = qJDD(3) * t908;
t880 = t904 * t1027;
t856 = -t880 + t1024;
t847 = -qJDD(5) + t856;
t842 = -qJDD(6) + t847;
t911 = -t842 - t1053;
t1080 = t902 * t911;
t1045 = t850 * t852;
t914 = -t847 - t1045;
t1079 = t903 * t914;
t1078 = t906 * t911;
t1077 = t907 * t914;
t868 = -qJD(6) + t876;
t780 = t804 * t868;
t1014 = -t907 * qJDD(4) + t855 * t903;
t794 = -qJD(5) * t852 - t1014;
t913 = qJD(6) * t804 + t1018 * t906 - t794 * t902;
t1076 = t780 - t913;
t767 = t834 - t1018;
t1075 = t836 * t899 + t895 * t949;
t764 = (qJD(5) + t876) * t852 + t1014;
t1015 = -t1018 * t902 - t906 * t794;
t658 = (qJD(6) + t868) * t806 + t1015;
t802 = t804 ^ 2;
t803 = t806 ^ 2;
t1074 = t850 ^ 2;
t846 = t852 ^ 2;
t867 = t868 ^ 2;
t874 = t876 ^ 2;
t1073 = qJD(4) ^ 2;
t1072 = pkin(4) * t904;
t1071 = pkin(4) * t908;
t783 = -t864 * t896 + t892 * t946;
t688 = t1081 * t909 + t783 * t905;
t689 = -t1081 * t905 + t783 * t909;
t603 = t688 * t905 + t689 * t909;
t1070 = pkin(8) * t603;
t718 = t782 * t892 + t783 * t896;
t1069 = qJ(2) * t718;
t684 = -pkin(3) * t910 + qJDD(3) * pkin(9) + t689;
t737 = -t894 * t782 + t828 * t898;
t629 = t908 * t684 - t904 * t737;
t1011 = -pkin(10) * t904 - t1071;
t853 = t1011 * qJD(3);
t614 = -pkin(4) * t1073 + qJDD(4) * pkin(10) + t1030 * t853 + t629;
t1006 = -t856 + t880;
t1007 = t855 + t1016;
t683 = -qJDD(3) * pkin(3) - t910 * pkin(9) + t688;
t644 = pkin(4) * t1006 - pkin(10) * t1007 + t683;
t557 = t614 * t903 - t907 * t644;
t524 = t914 * pkin(5) + pkin(11) * t769 - t557;
t558 = t907 * t614 + t903 * t644;
t827 = -pkin(5) * t876 - pkin(11) * t852;
t533 = -pkin(5) * t1074 + pkin(11) * t794 + t827 * t876 + t558;
t459 = -t906 * t524 + t533 * t902;
t460 = t902 * t524 + t906 * t533;
t407 = -t459 * t906 + t460 * t902;
t1068 = t407 * t903;
t1067 = t407 * t907;
t734 = t908 * t737;
t613 = t734 - qJDD(4) * pkin(4) - t1073 * pkin(10) + (qJD(3) * t853 + t684) * t904;
t584 = -t794 * pkin(5) - pkin(11) * t1074 + t827 * t852 + t613;
t1066 = t584 * t902;
t1065 = t584 * t906;
t1064 = t613 * t903;
t1063 = t613 * t907;
t1062 = t683 * t904;
t1061 = t683 * t908;
t721 = t842 - t1053;
t1060 = t721 * t902;
t1059 = t721 * t906;
t1058 = t737 * t905;
t1057 = t737 * t909;
t785 = t847 - t1045;
t1055 = t785 * t903;
t1054 = t785 * t907;
t1052 = t828 * t893;
t1050 = t828 * t895;
t1049 = t828 * t897;
t1048 = t828 * t899;
t875 = t904 * t910 * t908;
t865 = qJDD(4) + t875;
t1044 = t865 * t904;
t866 = qJDD(4) - t875;
t1043 = t866 * t904;
t1042 = t866 * t908;
t1041 = t868 * t902;
t1040 = t868 * t906;
t1039 = t876 * t903;
t1038 = t876 * t907;
t887 = t904 ^ 2;
t1037 = t887 * t910;
t1036 = t893 * t889;
t1035 = t895 * t896;
t1034 = t896 * t899;
t1033 = t897 * t889;
t888 = t908 ^ 2;
t1032 = t887 + t888;
t1022 = t904 * t1053;
t1021 = t908 * t1053;
t1020 = t904 * t1045;
t1019 = t908 * t1045;
t1017 = qJDD(3) * t892 * t894;
t408 = t459 * t902 + t906 * t460;
t628 = t684 * t904 + t734;
t551 = t628 * t904 + t908 * t629;
t815 = -t863 * t893 - t897 * t864;
t1013 = t905 * t875;
t1012 = t909 * t875;
t550 = t628 * t908 - t629 * t904;
t858 = t1032 * qJDD(3);
t885 = t888 * t910;
t861 = t885 + t1037;
t811 = t858 * t909 - t861 * t905;
t1010 = pkin(8) * t811 + t550 * t905;
t1009 = -pkin(8) * t859 - t1058;
t1008 = -pkin(8) * t945 + t1057;
t359 = t408 * t907 - t1068;
t355 = t359 * t908 + t584 * t904;
t358 = t408 * t903 + t1067;
t1004 = t355 * t905 - t358 * t909;
t354 = t359 * t904 - t584 * t908;
t317 = t1004 * t898 - t354 * t894;
t332 = t355 * t909 + t358 * t905;
t1005 = t317 * t896 + t332 * t892;
t477 = t557 * t903 + t558 * t907;
t451 = t477 * t904 - t613 * t908;
t452 = t477 * t908 + t613 * t904;
t476 = -t557 * t907 + t558 * t903;
t994 = t452 * t905 - t476 * t909;
t385 = -t451 * t894 + t898 * t994;
t415 = t452 * t909 + t476 * t905;
t1003 = t385 * t896 + t415 * t892;
t662 = t780 + t913;
t580 = -t658 * t902 + t662 * t906;
t582 = -t658 * t906 - t662 * t902;
t502 = -t580 * t903 + t582 * t907;
t708 = -t802 - t803;
t480 = t502 * t904 - t708 * t908;
t481 = t502 * t908 + t708 * t904;
t500 = t580 * t907 + t582 * t903;
t992 = t481 * t905 - t500 * t909;
t400 = -t480 * t894 + t898 * t992;
t430 = t481 * t909 + t500 * t905;
t1002 = t400 * t896 + t430 * t892;
t657 = (qJD(6) - t868) * t806 + t1015;
t581 = t1076 * t906 - t657 * t902;
t583 = -t1076 * t902 - t657 * t906;
t503 = -t581 * t903 + t583 * t907;
t751 = -t803 + t802;
t488 = t503 * t904 + t751 * t908;
t489 = t503 * t908 - t751 * t904;
t501 = -t581 * t907 - t583 * t903;
t991 = t489 * t905 + t501 * t909;
t403 = -t488 * t894 + t898 * t991;
t432 = t489 * t909 - t501 * t905;
t1001 = t403 * t896 + t432 * t892;
t730 = -t867 - t802;
t649 = t730 * t902 + t1078;
t650 = t730 * t906 - t1080;
t572 = -t649 * t903 + t650 * t907;
t525 = t572 * t904 - t657 * t908;
t526 = t572 * t908 + t657 * t904;
t571 = t649 * t907 + t650 * t903;
t989 = t526 * t905 - t571 * t909;
t434 = -t525 * t894 + t898 * t989;
t475 = t526 * t909 + t571 * t905;
t1000 = t434 * t896 + t475 * t892;
t770 = -t803 - t867;
t668 = t770 * t906 + t1060;
t669 = -t770 * t902 + t1059;
t589 = -t668 * t903 + t669 * t907;
t538 = -t1076 * t908 + t589 * t904;
t539 = t1076 * t904 + t589 * t908;
t588 = t668 * t907 + t669 * t903;
t987 = t539 * t905 - t588 * t909;
t440 = -t538 * t894 + t898 * t987;
t482 = t539 * t909 + t588 * t905;
t999 = t440 * t896 + t482 * t892;
t702 = -qJD(6) * t806 - t1015;
t651 = -t1041 * t804 + t702 * t906;
t652 = -t1040 * t804 - t702 * t902;
t575 = -t651 * t903 + t652 * t907;
t552 = t575 * t904 + t1021;
t554 = t575 * t908 - t1022;
t573 = -t651 * t907 - t652 * t903;
t982 = t554 * t905 + t573 * t909;
t444 = -t552 * t894 + t898 * t982;
t483 = t554 * t909 - t573 * t905;
t998 = t444 * t896 + t483 * t892;
t653 = -t1040 * t806 - t902 * t913;
t654 = t1041 * t806 - t906 * t913;
t576 = -t653 * t903 + t654 * t907;
t553 = t576 * t904 - t1021;
t555 = t576 * t908 + t1022;
t574 = -t653 * t907 - t654 * t903;
t981 = t555 * t905 + t574 * t909;
t445 = -t553 * t894 + t898 * t981;
t484 = t555 * t909 - t574 * t905;
t997 = t445 * t896 + t484 * t892;
t779 = -t803 + t867;
t672 = t779 * t906 + t1080;
t674 = -t779 * t902 + t1078;
t593 = -t672 * t903 + t674 * t907;
t545 = t593 * t904 + t662 * t908;
t547 = t593 * t908 - t662 * t904;
t591 = -t672 * t907 - t674 * t903;
t985 = t547 * t905 + t591 * t909;
t448 = -t545 * t894 + t898 * t985;
t490 = t547 * t909 - t591 * t905;
t996 = t448 * t896 + t490 * t892;
t778 = t802 - t867;
t673 = t778 * t902 - t1059;
t675 = t778 * t906 + t1060;
t594 = -t673 * t903 + t675 * t907;
t546 = t594 * t904 + t658 * t908;
t548 = t594 * t908 - t658 * t904;
t592 = -t673 * t907 - t675 * t903;
t984 = t548 * t905 + t592 * t909;
t449 = -t546 * t894 + t898 * t984;
t491 = t548 * t909 - t592 * t905;
t995 = t449 * t896 + t491 * t892;
t983 = t551 * t905 - t683 * t909;
t464 = t550 * t894 + t898 * t983;
t516 = t551 * t909 + t683 * t905;
t993 = t464 * t896 + t516 * t892;
t715 = (t804 * t902 + t806 * t906) * t868;
t716 = (t804 * t906 - t806 * t902) * t868;
t639 = -t715 * t903 + t716 * t907;
t623 = t639 * t904 + t842 * t908;
t624 = t639 * t908 - t842 * t904;
t638 = -t715 * t907 - t716 * t903;
t972 = t624 * t905 + t638 * t909;
t506 = -t623 * t894 + t898 * t972;
t556 = t624 * t909 - t638 * t905;
t990 = t506 * t896 + t556 * t892;
t693 = -t764 * t907 - t769 * t903;
t784 = t846 + t1074;
t645 = t693 * t904 + t784 * t908;
t646 = t693 * t908 - t784 * t904;
t691 = -t764 * t903 + t769 * t907;
t970 = t646 * t905 - t691 * t909;
t536 = -t645 * t894 + t898 * t970;
t587 = t646 * t909 + t691 * t905;
t988 = t536 * t896 + t587 * t892;
t765 = (-qJD(5) + t876) * t852 - t1014;
t692 = t765 * t907 - t767 * t903;
t816 = -t846 + t1074;
t663 = t692 * t904 + t816 * t908;
t664 = t692 * t908 - t816 * t904;
t690 = -t765 * t903 - t767 * t907;
t969 = t664 * t905 + t690 * t909;
t541 = -t663 * t894 + t898 * t969;
t590 = t664 * t909 - t690 * t905;
t986 = t541 * t896 + t590 * t892;
t799 = -t874 - t1074;
t725 = t799 * t907 - t1079;
t666 = t725 * t904 + t765 * t908;
t667 = t725 * t908 - t765 * t904;
t724 = t799 * t903 + t1077;
t968 = t667 * t905 - t724 * t909;
t560 = -t666 * t894 + t898 * t968;
t609 = t667 * t909 + t724 * t905;
t980 = t560 * t896 + t609 * t892;
t810 = -t846 - t874;
t732 = -t810 * t903 + t1054;
t670 = t732 * t904 - t767 * t908;
t671 = t732 * t908 + t767 * t904;
t731 = t810 * t907 + t1055;
t967 = t671 * t905 - t731 * t909;
t562 = -t670 * t894 + t898 * t967;
t615 = t671 * t909 + t731 * t905;
t979 = t562 * t896 + t615 * t892;
t833 = -t846 + t874;
t749 = -t833 * t903 + t1077;
t676 = t749 * t904 + t769 * t908;
t678 = t749 * t908 - t769 * t904;
t747 = -t833 * t907 - t1079;
t966 = t678 * t905 + t747 * t909;
t569 = -t676 * t894 + t898 * t966;
t626 = t678 * t909 - t747 * t905;
t978 = t569 * t896 + t626 * t892;
t832 = -t874 + t1074;
t750 = t832 * t907 + t1055;
t677 = t750 * t904 + t764 * t908;
t679 = t750 * t908 - t764 * t904;
t748 = -t832 * t903 + t1054;
t965 = t679 * t905 + t748 * t909;
t570 = -t677 * t894 + t898 * t965;
t627 = t679 * t909 - t748 * t905;
t977 = t570 * t896 + t627 * t892;
t602 = t688 * t909 - t689 * t905;
t578 = -t602 * t898 + t737 * t894;
t976 = t578 * t896 + t603 * t892;
t755 = -t1038 * t850 - t794 * t903;
t709 = t755 * t904 + t1019;
t711 = t755 * t908 - t1020;
t754 = t1039 * t850 - t794 * t907;
t964 = t711 * t905 + t754 * t909;
t597 = -t709 * t894 + t898 * t964;
t647 = t711 * t909 - t754 * t905;
t975 = t597 * t896 + t647 * t892;
t757 = -t1018 * t907 + t1039 * t852;
t710 = t757 * t904 - t1019;
t712 = t757 * t908 + t1020;
t756 = t1018 * t903 + t1038 * t852;
t963 = t712 * t905 + t756 * t909;
t598 = -t710 * t894 + t898 * t963;
t648 = t712 * t909 - t756 * t905;
t974 = t598 * t896 + t648 * t892;
t600 = t603 * t898;
t973 = t600 * t896 + t602 * t892;
t774 = (t850 * t907 - t852 * t903) * t876;
t752 = t774 * t904 + t847 * t908;
t753 = t774 * t908 - t847 * t904;
t773 = (-t850 * t903 - t852 * t907) * t876;
t955 = t753 * t905 + t773 * t909;
t631 = -t752 * t894 + t898 * t955;
t687 = t753 * t909 - t773 * t905;
t971 = t631 * t896 + t687 * t892;
t854 = 0.2e1 * t1016 + t1026;
t857 = -0.2e1 * t880 + t1024;
t807 = t854 * t908 + t857 * t904;
t808 = -t854 * t904 + t857 * t908;
t862 = t885 - t1037;
t953 = t808 * t905 + t862 * t909;
t720 = -t807 * t894 + t898 * t953;
t771 = t808 * t909 - t862 * t905;
t962 = t720 * t896 + t771 * t892;
t849 = t908 * t865;
t873 = -t885 - t1073;
t820 = t873 * t904 + t849;
t824 = t873 * t908 - t1044;
t951 = t824 * t905 + t857 * t909;
t728 = -t820 * t894 + t898 * t951;
t776 = t824 * t909 - t857 * t905;
t961 = t728 * t896 + t776 * t892;
t871 = -t1037 - t1073;
t822 = t871 * t908 - t1043;
t826 = -t871 * t904 - t1042;
t950 = t826 * t905 - t854 * t909;
t729 = -t822 * t894 + t898 * t950;
t777 = t826 * t909 + t854 * t905;
t960 = t729 * t896 + t777 * t892;
t872 = t885 - t1073;
t819 = t872 * t904 + t1042;
t823 = t872 * t908 - t1043;
t943 = -t1023 * t908 + t823 * t905;
t740 = -t819 * t894 + t898 * t943;
t790 = t1024 * t905 + t823 * t909;
t959 = t740 * t896 + t790 * t892;
t870 = -t1037 + t1073;
t821 = t870 * t908 + t1044;
t825 = -t870 * t904 + t849;
t942 = -t1023 * t904 + t825 * t905;
t741 = -t821 * t894 + t898 * t942;
t791 = t1025 * t904 + t825 * t909;
t958 = t741 * t896 + t791 * t892;
t817 = t1006 * t908;
t829 = -t1027 * t888 - t856 * t904;
t941 = t829 * t905 - t1012;
t744 = t817 * t894 + t898 * t941;
t792 = t829 * t909 + t1013;
t957 = t744 * t896 + t792 * t892;
t818 = t1007 * t904;
t830 = -t1027 * t887 + t855 * t908;
t940 = t830 * t905 + t1012;
t745 = -t818 * t894 + t898 * t940;
t793 = t830 * t909 - t1013;
t956 = t745 * t896 + t793 * t892;
t717 = t782 * t896 - t783 * t892;
t947 = t858 * t905 + t861 * t909;
t801 = t947 * t898;
t954 = t801 * t896 + t811 * t892;
t848 = t1032 * t1027;
t944 = -qJDD(4) * t909 + t848 * t905;
t813 = t944 * t898;
t831 = qJDD(4) * t905 + t848 * t909;
t952 = t813 * t896 + t831 * t892;
t839 = t859 * t898;
t948 = t839 * t896 - t892 * t945;
t814 = t863 * t897 - t864 * t893;
t394 = -pkin(5) * t584 + pkin(11) * t408;
t333 = -pkin(10) * t358 - pkin(11) * t1067 - t394 * t903;
t342 = -pkin(4) * t358 - pkin(5) * t407;
t309 = -pkin(9) * t354 + t333 * t908 - t342 * t904;
t314 = -pkin(3) * t354 + pkin(4) * t584 - pkin(10) * t359 + pkin(11) * t1068 - t394 * t907;
t939 = pkin(8) * t332 + t309 * t905 + t314 * t909;
t391 = -pkin(5) * t708 + pkin(11) * t582 + t408;
t395 = -pkin(11) * t580 - t407;
t348 = -pkin(10) * t500 - t391 * t903 + t395 * t907;
t465 = -pkin(4) * t500 - pkin(5) * t580;
t340 = -pkin(9) * t480 + t348 * t908 - t465 * t904;
t341 = -pkin(3) * t480 + pkin(4) * t708 - pkin(10) * t502 - t391 * t907 - t395 * t903;
t938 = pkin(8) * t430 + t340 * t905 + t341 * t909;
t427 = -pkin(4) * t571 - pkin(5) * t649 + t459;
t499 = -pkin(5) * t657 + pkin(11) * t650 - t1065;
t531 = -pkin(11) * t649 + t1066;
t428 = -pkin(10) * t571 - t499 * t903 + t531 * t907;
t366 = -pkin(9) * t525 - t427 * t904 + t428 * t908;
t401 = -pkin(3) * t525 + pkin(4) * t657 - pkin(10) * t572 - t499 * t907 - t531 * t903;
t937 = pkin(8) * t475 + t366 * t905 + t401 * t909;
t429 = -pkin(4) * t588 - pkin(5) * t668 + t460;
t507 = -pkin(5) * t1076 + pkin(11) * t669 + t1066;
t537 = -pkin(11) * t668 + t1065;
t431 = -pkin(10) * t588 - t507 * t903 + t537 * t907;
t370 = -pkin(9) * t538 - t429 * t904 + t431 * t908;
t409 = -pkin(3) * t538 + pkin(4) * t1076 - pkin(10) * t589 - t507 * t907 - t537 * t903;
t936 = pkin(8) * t482 + t370 * t905 + t409 * t909;
t387 = -pkin(9) * t451 + (-pkin(10) * t908 + t1072) * t476;
t404 = -pkin(3) * t451 + pkin(4) * t613 - pkin(10) * t477;
t935 = pkin(8) * t415 + t387 * t905 + t404 * t909;
t470 = -pkin(10) * t691 - t476;
t438 = -pkin(9) * t645 + t1072 * t691 + t470 * t908;
t450 = -pkin(3) * t645 - pkin(4) * t784 - pkin(10) * t693 - t477;
t934 = pkin(8) * t587 + t438 * t905 + t450 * t909;
t532 = -pkin(4) * t724 + t557;
t585 = -pkin(10) * t724 + t1064;
t466 = -pkin(9) * t666 - t532 * t904 + t585 * t908;
t519 = -pkin(3) * t666 - pkin(4) * t765 - pkin(10) * t725 + t1063;
t933 = pkin(8) * t609 + t466 * t905 + t519 * t909;
t534 = -pkin(4) * t731 + t558;
t586 = -pkin(10) * t731 + t1063;
t469 = -pkin(9) * t670 - t534 * t904 + t586 * t908;
t521 = -pkin(3) * t670 + pkin(4) * t767 - pkin(10) * t732 - t1064;
t932 = pkin(8) * t615 + t469 * t905 + t521 * t909;
t610 = -pkin(3) * t820 + t628;
t655 = -pkin(9) * t820 + t1062;
t931 = pkin(8) * t776 + t610 * t909 + t655 * t905;
t611 = -pkin(3) * t822 + t629;
t656 = -pkin(9) * t822 + t1061;
t930 = pkin(8) * t777 + t611 * t909 + t656 * t905;
t307 = -pkin(3) * t358 + pkin(9) * t355 + t333 * t904 + t342 * t908;
t316 = t1004 * t894 + t354 * t898;
t292 = -pkin(2) * t316 - t307 * t894 + t898 * t939;
t293 = t309 * t909 - t314 * t905 + (-t316 * t894 - t317 * t898) * pkin(8);
t308 = -t317 * t892 + t332 * t896;
t929 = qJ(2) * t308 + t292 * t896 + t293 * t892;
t334 = -pkin(3) * t500 + pkin(9) * t481 + t348 * t904 + t465 * t908;
t399 = t480 * t898 + t894 * t992;
t306 = -pkin(2) * t399 - t334 * t894 + t898 * t938;
t310 = t340 * t909 - t341 * t905 + (-t399 * t894 - t400 * t898) * pkin(8);
t361 = -t400 * t892 + t430 * t896;
t928 = qJ(2) * t361 + t306 * t896 + t310 * t892;
t365 = pkin(9) * t452 + (-pkin(3) + t1011) * t476;
t384 = t451 * t898 + t894 * t994;
t313 = -pkin(2) * t384 - t365 * t894 + t898 * t935;
t325 = t387 * t909 - t404 * t905 + (-t384 * t894 - t385 * t898) * pkin(8);
t351 = -t385 * t892 + t415 * t896;
t927 = qJ(2) * t351 + t313 * t896 + t325 * t892;
t360 = -pkin(3) * t571 + pkin(9) * t526 + t427 * t908 + t428 * t904;
t433 = t525 * t898 + t894 * t989;
t321 = -pkin(2) * t433 - t360 * t894 + t898 * t937;
t331 = t366 * t909 - t401 * t905 + (-t433 * t894 - t434 * t898) * pkin(8);
t397 = -t434 * t892 + t475 * t896;
t926 = qJ(2) * t397 + t321 * t896 + t331 * t892;
t364 = -pkin(3) * t588 + pkin(9) * t539 + t429 * t908 + t431 * t904;
t439 = t538 * t898 + t894 * t987;
t324 = -pkin(2) * t439 - t364 * t894 + t898 * t936;
t337 = t370 * t909 - t409 * t905 + (-t439 * t894 - t440 * t898) * pkin(8);
t410 = -t440 * t892 + t482 * t896;
t925 = qJ(2) * t410 + t324 * t896 + t337 * t892;
t435 = pkin(9) * t646 + t470 * t904 + (-pkin(3) - t1071) * t691;
t535 = t645 * t898 + t894 * t970;
t353 = -pkin(2) * t535 - t435 * t894 + t898 * t934;
t369 = t438 * t909 - t450 * t905 + (-t535 * t894 - t536 * t898) * pkin(8);
t479 = -t536 * t892 + t587 * t896;
t924 = qJ(2) * t479 + t353 * t896 + t369 * t892;
t453 = -pkin(3) * t724 + pkin(9) * t667 + t532 * t908 + t585 * t904;
t559 = t666 * t898 + t894 * t968;
t374 = -pkin(2) * t559 - t453 * t894 + t898 * t933;
t396 = t466 * t909 - t519 * t905 + (-t559 * t894 - t560 * t898) * pkin(8);
t504 = -t560 * t892 + t609 * t896;
t923 = qJ(2) * t504 + t374 * t896 + t396 * t892;
t457 = -pkin(3) * t731 + pkin(9) * t671 + t534 * t908 + t586 * t904;
t561 = t670 * t898 + t894 * t967;
t379 = -pkin(2) * t561 - t457 * t894 + t898 * t932;
t398 = t469 * t909 - t521 * t905 + (-t561 * t894 - t562 * t898) * pkin(8);
t508 = -t562 * t892 + t615 * t896;
t922 = qJ(2) * t508 + t379 * t896 + t398 * t892;
t463 = -t550 * t898 + t894 * t983;
t517 = -pkin(3) * t683 + pkin(9) * t551;
t912 = pkin(8) * t516 - (-pkin(3) * t909 - pkin(9) * t905) * t550;
t383 = -pkin(2) * t463 - t517 * t894 + t898 * t912;
t386 = -(pkin(3) * t905 - pkin(9) * t909) * t550 + (-t463 * t894 - t464 * t898) * pkin(8);
t424 = -t464 * t892 + t516 * t896;
t921 = qJ(2) * t424 + t383 * t896 + t386 * t892;
t544 = pkin(3) * t861 + pkin(9) * t858 + t551;
t800 = t947 * t894;
t468 = -pkin(2) * t800 + t1010 * t898 - t544 * t894;
t527 = t550 * t909 + (-t800 * t894 - t801 * t898) * pkin(8);
t746 = -t801 * t892 + t811 * t896;
t920 = qJ(2) * t746 + t468 * t896 + t527 * t892;
t643 = pkin(3) * t857 + pkin(9) * t824 - t1061;
t726 = t820 * t898 + t894 * t951;
t496 = -pkin(2) * t726 - t643 * t894 + t898 * t931;
t514 = -t610 * t905 + t655 * t909 + (-t726 * t894 - t728 * t898) * pkin(8);
t681 = -t728 * t892 + t776 * t896;
t919 = qJ(2) * t681 + t496 * t896 + t514 * t892;
t642 = -pkin(3) * t854 + pkin(9) * t826 + t1062;
t727 = t822 * t898 + t894 * t950;
t497 = -pkin(2) * t727 - t642 * t894 + t898 * t930;
t515 = -t611 * t905 + t656 * t909 + (-t727 * t894 - t729 * t898) * pkin(8);
t682 = -t729 * t892 + t777 * t896;
t918 = qJ(2) * t682 + t497 * t896 + t515 * t892;
t577 = -t602 * t894 - t737 * t898;
t498 = (-t577 * t894 - t578 * t898) * pkin(8);
t509 = -t578 * t892 + t603 * t896;
t510 = -pkin(2) * t577 + t1070 * t898;
t917 = qJ(2) * t509 + t498 * t892 + t510 * t896;
t607 = pkin(2) * t836 + t1009 * t898 + t689 * t894;
t695 = -t1057 + (t836 * t894 + t838 * t898) * pkin(8);
t916 = qJ(2) * t797 + t607 * t896 + t695 * t892;
t837 = t859 * t894;
t608 = -pkin(2) * t837 + t1008 * t898 + t688 * t894;
t694 = -t1058 + (-t837 * t894 - t839 * t898) * pkin(8);
t798 = -t839 * t892 - t896 * t945;
t915 = qJ(2) * t798 + t608 * t896 + t694 * t892;
t835 = (-t1034 * t894 - t895 * t898) * qJDD(3);
t812 = t944 * t894;
t763 = -t813 * t892 + t831 * t896;
t762 = -t837 * t895 + t899 * t948;
t759 = t837 * t899 + t895 * t948;
t743 = t818 * t898 + t894 * t940;
t742 = -t817 * t898 + t894 * t941;
t739 = t821 * t898 + t894 * t942;
t738 = t819 * t898 + t894 * t943;
t736 = t1034 * t828 + t782 * t895;
t735 = -t1048 * t892 + t783 * t895;
t719 = t807 * t898 + t894 * t953;
t714 = t718 * t899;
t713 = -t812 * t895 + t899 * t952;
t707 = -t762 * t893 + t798 * t897;
t705 = t762 * t897 + t798 * t893;
t701 = -t800 * t895 + t899 * t954;
t700 = t800 * t899 + t895 * t954;
t699 = -t745 * t892 + t793 * t896;
t698 = -t744 * t892 + t792 * t896;
t697 = -t741 * t892 + t791 * t896;
t696 = -t740 * t892 + t790 * t896;
t686 = -t717 * t899 + t1050;
t685 = -t717 * t895 - t1048;
t665 = -t720 * t892 + t771 * t896;
t637 = -t701 * t893 + t746 * t897;
t636 = t701 * t897 + t746 * t893;
t635 = -t743 * t895 + t899 * t956;
t634 = -t742 * t895 + t899 * t957;
t633 = -t739 * t895 + t899 * t958;
t632 = -t738 * t895 + t899 * t959;
t630 = t752 * t898 + t894 * t955;
t622 = -t727 * t895 + t899 * t960;
t621 = -t726 * t895 + t899 * t961;
t620 = t727 * t899 + t895 * t960;
t619 = t726 * t899 + t895 * t961;
t618 = -pkin(1) * t685 + t1069 * t899;
t617 = -t686 * t893 + t718 * t897;
t616 = t686 * t897 + t718 * t893;
t606 = pkin(2) * t839 + t1008 * t894 - t688 * t898;
t605 = -pkin(2) * t838 + t1009 * t894 - t689 * t898;
t604 = -t719 * t895 + t899 * t962;
t601 = (-t685 * t895 - t686 * t899) * qJ(2);
t599 = t603 * t894;
t596 = t710 * t898 + t894 * t963;
t595 = t709 * t898 + t894 * t964;
t579 = -t631 * t892 + t687 * t896;
t568 = t677 * t898 + t894 * t965;
t567 = t676 * t898 + t894 * t966;
t566 = -t622 * t893 + t682 * t897;
t565 = -t621 * t893 + t681 * t897;
t564 = t622 * t897 + t682 * t893;
t563 = t621 * t897 + t681 * t893;
t543 = -t598 * t892 + t648 * t896;
t542 = -t597 * t892 + t647 * t896;
t540 = t663 * t898 + t894 * t969;
t529 = -t607 * t892 + t695 * t896 + (t1075 * t895 + t760 * t899) * qJ(2);
t528 = -t608 * t892 + t694 * t896 + (-t759 * t895 - t762 * t899) * qJ(2);
t520 = -t600 * t892 + t602 * t896;
t518 = -t630 * t895 + t899 * t971;
t513 = -t570 * t892 + t627 * t896;
t512 = -t569 * t892 + t626 * t896;
t511 = pkin(2) * t578 + t1070 * t894;
t505 = t623 * t898 + t894 * t972;
t495 = pkin(2) * t729 + t642 * t898 + t894 * t930;
t494 = pkin(2) * t728 + t643 * t898 + t894 * t931;
t493 = pkin(1) * t1075 - t605 * t895 + t899 * t916;
t492 = -pkin(1) * t759 - t606 * t895 + t899 * t915;
t487 = -t596 * t895 + t899 * t974;
t486 = -t595 * t895 + t899 * t975;
t485 = -t541 * t892 + t590 * t896;
t478 = -t599 * t895 + t899 * t973;
t474 = -t577 * t895 + t899 * t976;
t473 = t577 * t899 + t895 * t976;
t472 = -t568 * t895 + t899 * t977;
t471 = -t567 * t895 + t899 * t978;
t467 = pkin(2) * t801 + t1010 * t894 + t544 * t898;
t462 = -t561 * t895 + t899 * t979;
t461 = t561 * t899 + t895 * t979;
t456 = -t559 * t895 + t899 * t980;
t455 = t559 * t899 + t895 * t980;
t454 = -t506 * t892 + t556 * t896;
t447 = t546 * t898 + t894 * t984;
t446 = t545 * t898 + t894 * t985;
t443 = t553 * t898 + t894 * t981;
t442 = t552 * t898 + t894 * t982;
t441 = -t540 * t895 + t899 * t986;
t437 = -t535 * t895 + t899 * t988;
t436 = t535 * t899 + t895 * t988;
t426 = -t474 * t893 + t509 * t897;
t425 = t474 * t897 + t509 * t893;
t423 = -t462 * t893 + t508 * t897;
t422 = t462 * t897 + t508 * t893;
t421 = -t505 * t895 + t899 * t990;
t420 = -t456 * t893 + t504 * t897;
t419 = t456 * t897 + t504 * t893;
t418 = -t468 * t892 + t527 * t896 + (-t700 * t895 - t701 * t899) * qJ(2);
t417 = -t497 * t892 + t515 * t896 + (-t620 * t895 - t622 * t899) * qJ(2);
t416 = -t496 * t892 + t514 * t896 + (-t619 * t895 - t621 * t899) * qJ(2);
t414 = -t449 * t892 + t491 * t896;
t413 = -t448 * t892 + t490 * t896;
t412 = -t445 * t892 + t484 * t896;
t411 = -t444 * t892 + t483 * t896;
t406 = -t437 * t893 + t479 * t897;
t405 = t437 * t897 + t479 * t893;
t402 = t488 * t898 + t894 * t991;
t393 = -pkin(1) * t620 - t495 * t895 + t899 * t918;
t392 = -pkin(1) * t619 - t494 * t895 + t899 * t919;
t390 = -t463 * t895 + t899 * t993;
t389 = t463 * t899 + t895 * t993;
t388 = -pkin(1) * t700 - t467 * t895 + t899 * t920;
t382 = pkin(2) * t464 + t517 * t898 + t894 * t912;
t381 = -t447 * t895 + t899 * t995;
t380 = -t446 * t895 + t899 * t996;
t378 = pkin(2) * t562 + t457 * t898 + t894 * t932;
t377 = -t443 * t895 + t899 * t997;
t376 = -t442 * t895 + t899 * t998;
t375 = t498 * t896 - t510 * t892 + (-t473 * t895 - t474 * t899) * qJ(2);
t373 = pkin(2) * t560 + t453 * t898 + t894 * t933;
t372 = -t439 * t895 + t899 * t999;
t371 = t439 * t899 + t895 * t999;
t368 = -pkin(1) * t473 - t511 * t895 + t899 * t917;
t367 = -t403 * t892 + t432 * t896;
t363 = t1000 * t899 - t433 * t895;
t362 = t1000 * t895 + t433 * t899;
t357 = -t390 * t893 + t424 * t897;
t356 = t390 * t897 + t424 * t893;
t352 = pkin(2) * t536 + t435 * t898 + t894 * t934;
t350 = -t372 * t893 + t410 * t897;
t349 = t372 * t897 + t410 * t893;
t347 = t1001 * t899 - t402 * t895;
t346 = t1002 * t899 - t399 * t895;
t345 = t1002 * t895 + t399 * t899;
t344 = -t363 * t893 + t397 * t897;
t343 = t363 * t897 + t397 * t893;
t339 = -t379 * t892 + t398 * t896 + (-t461 * t895 - t462 * t899) * qJ(2);
t338 = -t374 * t892 + t396 * t896 + (-t455 * t895 - t456 * t899) * qJ(2);
t336 = t1003 * t899 - t384 * t895;
t335 = t1003 * t895 + t384 * t899;
t330 = -t346 * t893 + t361 * t897;
t329 = t346 * t897 + t361 * t893;
t328 = -pkin(1) * t461 - t378 * t895 + t899 * t922;
t327 = -pkin(1) * t455 - t373 * t895 + t899 * t923;
t326 = -t353 * t892 + t369 * t896 + (-t436 * t895 - t437 * t899) * qJ(2);
t323 = pkin(2) * t440 + t364 * t898 + t894 * t936;
t322 = -t383 * t892 + t386 * t896 + (-t389 * t895 - t390 * t899) * qJ(2);
t320 = pkin(2) * t434 + t360 * t898 + t894 * t937;
t319 = -t336 * t893 + t351 * t897;
t318 = t336 * t897 + t351 * t893;
t315 = -pkin(1) * t389 - t382 * t895 + t899 * t921;
t312 = pkin(2) * t385 + t365 * t898 + t894 * t935;
t311 = -pkin(1) * t436 - t352 * t895 + t899 * t924;
t305 = pkin(2) * t400 + t334 * t898 + t894 * t938;
t304 = -t324 * t892 + t337 * t896 + (-t371 * t895 - t372 * t899) * qJ(2);
t303 = -t321 * t892 + t331 * t896 + (-t362 * t895 - t363 * t899) * qJ(2);
t302 = t1005 * t899 - t316 * t895;
t301 = t1005 * t895 + t316 * t899;
t300 = -pkin(1) * t371 - t323 * t895 + t899 * t925;
t299 = -pkin(1) * t362 - t320 * t895 + t899 * t926;
t298 = -t313 * t892 + t325 * t896 + (-t335 * t895 - t336 * t899) * qJ(2);
t297 = -pkin(1) * t335 - t312 * t895 + t899 * t927;
t296 = -t306 * t892 + t310 * t896 + (-t345 * t895 - t346 * t899) * qJ(2);
t295 = -t302 * t893 + t308 * t897;
t294 = t302 * t897 + t308 * t893;
t291 = pkin(2) * t317 + t307 * t898 + t894 * t939;
t290 = -pkin(1) * t345 - t305 * t895 + t899 * t928;
t289 = -t292 * t892 + t293 * t896 + (-t301 * t895 - t302 * t899) * qJ(2);
t288 = -pkin(1) * t301 - t291 * t895 + t899 * t929;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, 0, 0, 0, t815, 0, 0, 0, 0, 0, 0, 0, 0, 0, t617, 0, 0, 0, 0, 0, 0, t707, t706, 0, t426, 0, 0, 0, 0, 0, 0, t565, t566, t637, t357, 0, 0, 0, 0, 0, 0, t420, t423, t406, t319, 0, 0, 0, 0, 0, 0, t344, t350, t330, t295; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, 0, 0, 0, t814, 0, 0, 0, 0, 0, 0, 0, 0, 0, t616, 0, 0, 0, 0, 0, 0, t705, -t1084, 0, t425, 0, 0, 0, 0, 0, 0, t563, t564, t636, t356, 0, 0, 0, 0, 0, 0, t419, t422, t405, t318, 0, 0, 0, 0, 0, 0, t343, t349, t329, t294; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t889, 0, 0, 0, 0, 0, 0, 0, 0, 0, t685, 0, 0, 0, 0, 0, 0, t759, -t1075, 0, t473, 0, 0, 0, 0, 0, 0, t619, t620, t700, t389, 0, 0, 0, 0, 0, 0, t455, t461, t436, t335, 0, 0, 0, 0, 0, 0, t362, t371, t345, t301; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, 0, 0, 0, 0, -t1036, -t1033, -t814, -qJ(1) * t814, 0, 0, 0, 0, 0, 0, -t1049 * t892 - t736 * t893, -t1049 * t896 - t735 * t893, -t714 * t893 + t717 * t897, -qJ(1) * t616 + t601 * t897 - t618 * t893, 0, 0, -t706, 0, t707, t1017 * t897 - t835 * t893, -qJ(1) * t705 - t492 * t893 + t528 * t897, qJ(1) * t1084 - t493 * t893 + t529 * t897, -t478 * t893 + t520 * t897, -qJ(1) * t425 - t368 * t893 + t375 * t897, -t635 * t893 + t699 * t897, -t604 * t893 + t665 * t897, -t633 * t893 + t697 * t897, -t634 * t893 + t698 * t897, -t632 * t893 + t696 * t897, -t713 * t893 + t763 * t897, -qJ(1) * t563 - t392 * t893 + t416 * t897, -qJ(1) * t564 - t393 * t893 + t417 * t897, -qJ(1) * t636 - t388 * t893 + t418 * t897, -qJ(1) * t356 - t315 * t893 + t322 * t897, -t487 * t893 + t543 * t897, -t441 * t893 + t485 * t897, -t471 * t893 + t512 * t897, -t486 * t893 + t542 * t897, -t472 * t893 + t513 * t897, -t518 * t893 + t579 * t897, -qJ(1) * t419 - t327 * t893 + t338 * t897, -qJ(1) * t422 - t328 * t893 + t339 * t897, -qJ(1) * t405 - t311 * t893 + t326 * t897, -qJ(1) * t318 - t297 * t893 + t298 * t897, -t377 * t893 + t412 * t897, -t347 * t893 + t367 * t897, -t380 * t893 + t413 * t897, -t376 * t893 + t411 * t897, -t381 * t893 + t414 * t897, -t421 * t893 + t454 * t897, -qJ(1) * t343 - t299 * t893 + t303 * t897, -qJ(1) * t349 - t300 * t893 + t304 * t897, -qJ(1) * t329 - t290 * t893 + t296 * t897, -qJ(1) * t294 - t288 * t893 + t289 * t897; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, 0, 0, 0, 0, t1033, -t1036, t815, qJ(1) * t815, 0, 0, 0, 0, 0, 0, -t1052 * t892 + t736 * t897, -t1052 * t896 + t735 * t897, t714 * t897 + t717 * t893, qJ(1) * t617 + t601 * t893 + t618 * t897, 0, 0, t1084, 0, t705, t1017 * t893 + t835 * t897, qJ(1) * t707 + t492 * t897 + t528 * t893, qJ(1) * t706 + t493 * t897 + t529 * t893, t478 * t897 + t520 * t893, qJ(1) * t426 + t368 * t897 + t375 * t893, t635 * t897 + t699 * t893, t604 * t897 + t665 * t893, t633 * t897 + t697 * t893, t634 * t897 + t698 * t893, t632 * t897 + t696 * t893, t713 * t897 + t763 * t893, qJ(1) * t565 + t392 * t897 + t416 * t893, qJ(1) * t566 + t393 * t897 + t417 * t893, qJ(1) * t637 + t388 * t897 + t418 * t893, qJ(1) * t357 + t315 * t897 + t322 * t893, t487 * t897 + t543 * t893, t441 * t897 + t485 * t893, t471 * t897 + t512 * t893, t486 * t897 + t542 * t893, t472 * t897 + t513 * t893, t518 * t897 + t579 * t893, qJ(1) * t420 + t327 * t897 + t338 * t893, qJ(1) * t423 + t328 * t897 + t339 * t893, qJ(1) * t406 + t311 * t897 + t326 * t893, qJ(1) * t319 + t297 * t897 + t298 * t893, t377 * t897 + t412 * t893, t347 * t897 + t367 * t893, t380 * t897 + t413 * t893, t376 * t897 + t411 * t893, t381 * t897 + t414 * t893, t421 * t897 + t454 * t893, qJ(1) * t344 + t299 * t897 + t303 * t893, qJ(1) * t350 + t300 * t897 + t304 * t893, qJ(1) * t330 + t290 * t897 + t296 * t893, qJ(1) * t295 + t288 * t897 + t289 * t893; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, 0, t863, t864, 0, 0, 0, 0, 0, 0, 0, 0, t1035 * t828 - t782 * t899, -t1050 * t892 - t783 * t899, t718 * t895, pkin(1) * t686 + t1069 * t895, 0, 0, t1075, 0, t759, (-t1035 * t894 + t898 * t899) * qJDD(3), pkin(1) * t762 + t606 * t899 + t895 * t915, -pkin(1) * t760 + t605 * t899 + t895 * t916, t599 * t899 + t895 * t973, pkin(1) * t474 + t511 * t899 + t895 * t917, t743 * t899 + t895 * t956, t719 * t899 + t895 * t962, t739 * t899 + t895 * t958, t742 * t899 + t895 * t957, t738 * t899 + t895 * t959, t812 * t899 + t895 * t952, pkin(1) * t621 + t494 * t899 + t895 * t919, pkin(1) * t622 + t495 * t899 + t895 * t918, pkin(1) * t701 + t467 * t899 + t895 * t920, pkin(1) * t390 + t382 * t899 + t895 * t921, t596 * t899 + t895 * t974, t540 * t899 + t895 * t986, t567 * t899 + t895 * t978, t595 * t899 + t895 * t975, t568 * t899 + t895 * t977, t630 * t899 + t895 * t971, pkin(1) * t456 + t373 * t899 + t895 * t923, pkin(1) * t462 + t378 * t899 + t895 * t922, pkin(1) * t437 + t352 * t899 + t895 * t924, pkin(1) * t336 + t312 * t899 + t895 * t927, t443 * t899 + t895 * t997, t1001 * t895 + t402 * t899, t446 * t899 + t895 * t996, t442 * t899 + t895 * t998, t447 * t899 + t895 * t995, t505 * t899 + t895 * t990, pkin(1) * t363 + t320 * t899 + t895 * t926, pkin(1) * t372 + t323 * t899 + t895 * t925, pkin(1) * t346 + t305 * t899 + t895 * t928, pkin(1) * t302 + t291 * t899 + t895 * t929;];
tauB_reg  = t1;
