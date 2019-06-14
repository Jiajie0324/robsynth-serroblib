% Calculate inertial parameters regressor of inverse dynamics base forces vector with Newton-Euler for
% S6RPRPRR3
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta2,theta4]';
% 
% Output:
% tauB_reg [6x(7*10)]
%   inertial parameter regressor of inverse dynamics base forces vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 18:36
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauB_reg = S6RPRPRR3_invdynB_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR3_invdynB_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR3_invdynB_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPRR3_invdynB_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRR3_invdynB_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRPRR3_invdynB_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauB_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 18:35:14
% EndTime: 2019-05-05 18:35:49
% DurationCPUTime: 32.08s
% Computational Cost: add. (247461->877), mult. (521151->1352), div. (0->0), fcn. (364657->12), ass. (0->596)
t933 = sin(qJ(1));
t937 = cos(qJ(1));
t899 = g(1) * t937 + g(2) * t933;
t938 = qJD(1) ^ 2;
t884 = -pkin(1) * t938 - t899;
t926 = sin(pkin(10));
t928 = cos(pkin(10));
t898 = g(1) * t933 - t937 * g(2);
t943 = qJDD(1) * pkin(1) + t898;
t829 = t884 * t926 - t928 * t943;
t830 = t928 * t884 + t926 * t943;
t952 = t829 * t926 + t928 * t830;
t765 = t829 * t928 - t830 * t926;
t987 = t765 * t937;
t680 = t933 * t952 - t987;
t988 = t765 * t933;
t681 = t937 * t952 + t988;
t890 = qJDD(1) * t928 - t926 * t938;
t969 = g(3) - qJDD(2);
t1011 = -qJ(2) * t890 - t926 * t969;
t889 = qJDD(1) * t926 + t928 * t938;
t1012 = t937 * t889 + t890 * t933;
t857 = -qJ(2) * t889 + t928 * t969;
t1027 = -pkin(6) * t1012 + t1011 * t933 + t857 * t937;
t832 = -t889 * t933 + t937 * t890;
t1026 = -pkin(6) * t832 + t1011 * t937 - t857 * t933;
t925 = sin(pkin(11));
t932 = sin(qJ(3));
t963 = qJD(1) * qJD(3);
t914 = t932 * t963;
t936 = cos(qJ(3));
t961 = qJDD(1) * t936;
t887 = -t914 + t961;
t927 = cos(pkin(11));
t967 = qJD(1) * t932;
t877 = -t927 * qJD(3) + t925 * t967;
t878 = qJD(3) * t925 + t927 * t967;
t981 = t877 * t878;
t942 = -t887 - t981;
t1022 = t925 * t942;
t1021 = t927 * t942;
t930 = sin(qJ(6));
t879 = -qJDD(5) + t887;
t873 = -qJDD(6) + t879;
t931 = sin(qJ(5));
t935 = cos(qJ(5));
t825 = t935 * t877 + t878 * t931;
t827 = -t877 * t931 + t878 * t935;
t934 = cos(qJ(6));
t757 = t934 * t825 + t827 * t930;
t759 = -t825 * t930 + t827 * t934;
t991 = t757 * t759;
t939 = -t873 - t991;
t1020 = t930 * t939;
t982 = t825 * t827;
t941 = -t879 - t982;
t1019 = t931 * t941;
t1017 = t934 * t939;
t1016 = t935 * t941;
t966 = qJD(1) * t936;
t909 = -qJD(5) + t966;
t901 = -qJD(6) + t909;
t740 = t757 * t901;
t954 = t936 * t963;
t962 = qJDD(1) * t932;
t886 = t954 + t962;
t853 = qJDD(3) * t925 + t886 * t927;
t944 = qJDD(3) * t927 - t886 * t925;
t951 = t853 * t931 - t935 * t944;
t736 = -qJD(5) * t827 - t951;
t737 = -t825 * qJD(5) + t935 * t853 + t931 * t944;
t940 = qJD(6) * t757 - t736 * t930 - t737 * t934;
t1014 = t740 - t940;
t802 = t825 * t909;
t708 = t802 - t737;
t1013 = t802 + t737;
t862 = t877 * t966;
t803 = -t853 + t862;
t863 = t878 * t966;
t806 = t944 - t863;
t953 = -t934 * t736 + t737 * t930;
t608 = (qJD(6) + t901) * t759 + t953;
t709 = (qJD(5) + t909) * t827 + t951;
t754 = t757 ^ 2;
t755 = t759 ^ 2;
t1010 = t825 ^ 2;
t824 = t827 ^ 2;
t1009 = t877 ^ 2;
t876 = t878 ^ 2;
t900 = t901 ^ 2;
t907 = t909 ^ 2;
t1008 = qJD(3) ^ 2;
t1007 = pkin(3) * t932;
t1006 = pkin(3) * t936;
t811 = -qJDD(1) * pkin(2) - t938 * pkin(7) + t829;
t945 = t886 + t954;
t752 = -t945 * qJ(4) + (-t887 + t914) * pkin(3) + t811;
t812 = -pkin(2) * t938 + qJDD(1) * pkin(7) + t830;
t785 = t936 * t812 - t932 * t969;
t946 = -qJ(4) * t932 - t1006;
t883 = t946 * qJD(1);
t767 = -pkin(3) * t1008 + qJDD(3) * qJ(4) + t883 * t966 + t785;
t668 = 0.2e1 * qJD(4) * t878 - t927 * t752 + t767 * t925;
t641 = t942 * pkin(4) + pkin(8) * t803 - t668;
t669 = -0.2e1 * qJD(4) * t877 + t925 * t752 + t927 * t767;
t854 = -pkin(4) * t966 - pkin(8) * t878;
t647 = -pkin(4) * t1009 + pkin(8) * t944 + t854 * t966 + t669;
t569 = -t935 * t641 + t647 * t931;
t526 = t941 * pkin(5) + pkin(9) * t708 - t569;
t570 = t931 * t641 + t935 * t647;
t790 = -pkin(5) * t909 - pkin(9) * t827;
t543 = -pkin(5) * t1010 + pkin(9) * t736 + t790 * t909 + t570;
t481 = -t934 * t526 + t543 * t930;
t482 = t930 * t526 + t934 * t543;
t432 = -t481 * t934 + t482 * t930;
t1003 = t432 * t931;
t1002 = t432 * t935;
t508 = -t569 * t935 + t570 * t931;
t1001 = t508 * t925;
t1000 = t508 * t927;
t913 = t936 * t969;
t762 = qJDD(4) + t913 - t1008 * qJ(4) - qJDD(3) * pkin(3) + (qJD(1) * t883 + t812) * t932;
t684 = -t944 * pkin(4) - t1009 * pkin(8) + t854 * t878 + t762;
t598 = -t736 * pkin(5) - pkin(9) * t1010 + t790 * t827 + t684;
t999 = t598 * t930;
t998 = t598 * t934;
t672 = t873 - t991;
t997 = t672 * t930;
t996 = t672 * t934;
t995 = t684 * t931;
t994 = t684 * t935;
t744 = t879 - t982;
t993 = t744 * t931;
t992 = t744 * t935;
t990 = t762 * t925;
t989 = t762 * t927;
t808 = t887 - t981;
t986 = t808 * t925;
t985 = t808 * t927;
t984 = t811 * t932;
t983 = t811 * t936;
t980 = t887 * t932;
t908 = t936 * t938 * t932;
t896 = -t908 + qJDD(3);
t977 = t896 * t932;
t976 = t896 * t936;
t897 = qJDD(3) + t908;
t975 = t897 * t932;
t974 = t901 * t930;
t973 = t901 * t934;
t972 = t909 * t931;
t971 = t909 * t935;
t921 = t932 ^ 2;
t970 = t921 * t938;
t922 = t936 ^ 2;
t968 = t921 + t922;
t960 = t932 * t991;
t959 = t936 * t991;
t958 = t932 * t982;
t957 = t936 * t982;
t956 = t932 * t981;
t955 = t936 * t981;
t433 = t481 * t930 + t934 * t482;
t509 = t569 * t931 + t935 * t570;
t783 = t812 * t932 + t913;
t721 = t783 * t932 + t936 * t785;
t840 = -t898 * t933 - t937 * t899;
t949 = t926 * t908;
t948 = t928 * t908;
t893 = qJDD(1) * t937 - t933 * t938;
t947 = -pkin(6) * t893 - g(3) * t933;
t592 = -t668 * t927 + t669 * t925;
t593 = t668 * t925 + t669 * t927;
t720 = t783 * t936 - t785 * t932;
t839 = t898 * t937 - t899 * t933;
t918 = t922 * t938;
t906 = -t918 - t1008;
t905 = t918 - t1008;
t904 = -t970 - t1008;
t903 = -t970 + t1008;
t895 = t918 - t970;
t894 = t918 + t970;
t892 = qJDD(1) * t933 + t937 * t938;
t891 = t968 * qJDD(1);
t888 = -0.2e1 * t914 + t961;
t885 = 0.2e1 * t954 + t962;
t881 = t936 * t897;
t880 = t968 * t963;
t871 = t936 * t887;
t864 = -pkin(6) * t892 + g(3) * t937;
t861 = -t876 - t918;
t860 = -t876 + t918;
t859 = -t918 + t1009;
t852 = t886 * t936 - t921 * t963;
t851 = -t922 * t963 - t980;
t850 = qJDD(3) * t926 + t880 * t928;
t849 = -qJDD(3) * t928 + t880 * t926;
t847 = -t904 * t932 - t976;
t846 = -t903 * t932 + t881;
t845 = t906 * t936 - t975;
t844 = t905 * t936 - t977;
t843 = t904 * t936 - t977;
t842 = t906 * t932 + t881;
t838 = t891 * t928 - t894 * t926;
t837 = t891 * t926 + t894 * t928;
t836 = -t876 + t1009;
t831 = -t885 * t932 + t888 * t936;
t828 = -t918 - t1009;
t821 = t852 * t928 - t949;
t820 = t851 * t928 + t949;
t819 = t852 * t926 + t948;
t818 = t851 * t926 - t948;
t817 = t846 * t928 + t926 * t962;
t816 = t844 * t928 + t926 * t961;
t815 = t846 * t926 - t928 * t962;
t814 = t844 * t926 - t928 * t961;
t807 = t853 + t862;
t805 = t863 + t944;
t799 = t876 + t1009;
t798 = (t877 * t927 - t878 * t925) * t966;
t797 = (-t877 * t925 - t878 * t927) * t966;
t796 = -t824 + t907;
t795 = -t907 + t1010;
t794 = t847 * t928 + t885 * t926;
t793 = t845 * t928 - t888 * t926;
t792 = t847 * t926 - t885 * t928;
t791 = t845 * t926 + t888 * t928;
t789 = t853 * t927 + t863 * t925;
t788 = -t853 * t925 + t863 * t927;
t787 = -t862 * t927 - t925 * t944;
t786 = t862 * t925 - t927 * t944;
t784 = t831 * t928 - t895 * t926;
t782 = t831 * t926 + t895 * t928;
t781 = -t824 - t907;
t779 = t798 * t936 - t980;
t778 = -t837 * t933 + t838 * t937;
t777 = t837 * t937 + t838 * t933;
t776 = t859 * t927 + t986;
t775 = -t860 * t925 + t1021;
t774 = -t861 * t925 + t985;
t773 = -t859 * t925 + t985;
t772 = -t860 * t927 - t1022;
t771 = t861 * t927 + t986;
t770 = -pkin(7) * t843 + t983;
t769 = -pkin(7) * t842 + t984;
t768 = -t824 + t1010;
t761 = -pkin(2) * t843 + t785;
t760 = -pkin(2) * t842 + t783;
t753 = -t907 - t1010;
t751 = pkin(1) * t969 + qJ(2) * t952;
t750 = t828 * t927 - t1022;
t749 = t828 * t925 + t1021;
t748 = t789 * t936 + t956;
t747 = t787 * t936 - t956;
t739 = -t755 + t900;
t738 = t754 - t900;
t735 = -t803 * t925 + t806 * t927;
t734 = t805 * t927 - t807 * t925;
t733 = t803 * t927 + t806 * t925;
t732 = -t805 * t925 - t807 * t927;
t730 = (t825 * t935 - t827 * t931) * t909;
t729 = (t825 * t931 + t827 * t935) * t909;
t727 = -t755 - t900;
t726 = -t792 * t933 + t794 * t937;
t725 = -t791 * t933 + t793 * t937;
t724 = t792 * t937 + t794 * t933;
t723 = t791 * t937 + t793 * t933;
t722 = -t824 - t1010;
t718 = t779 * t928 - t797 * t926;
t717 = t779 * t926 + t797 * t928;
t716 = t776 * t936 + t806 * t932;
t715 = t775 * t936 - t803 * t932;
t714 = t774 * t936 + t807 * t932;
t713 = t774 * t932 - t807 * t936;
t712 = t734 * t936 - t836 * t932;
t711 = t750 * t936 - t805 * t932;
t710 = t750 * t932 + t805 * t936;
t704 = (qJD(5) - t909) * t827 + t951;
t703 = t795 * t935 + t993;
t702 = -t796 * t931 + t1016;
t701 = t795 * t931 - t992;
t700 = t796 * t935 + t1019;
t699 = t737 * t935 + t827 * t972;
t698 = t737 * t931 - t827 * t971;
t697 = -t736 * t931 - t825 * t971;
t696 = t736 * t935 - t825 * t972;
t695 = t748 * t928 - t788 * t926;
t694 = t747 * t928 - t786 * t926;
t693 = t748 * t926 + t788 * t928;
t692 = t747 * t926 + t786 * t928;
t691 = t735 * t936 - t799 * t932;
t690 = t735 * t932 + t799 * t936;
t689 = -t781 * t931 + t992;
t688 = t781 * t935 + t993;
t687 = -qJ(2) * t837 + t720 * t928;
t686 = qJ(2) * t838 + t720 * t926;
t685 = -qJ(4) * t771 + t989;
t683 = t721 * t928 + t811 * t926;
t682 = t721 * t926 - t811 * t928;
t679 = -t755 + t754;
t678 = -qJ(4) * t749 + t990;
t677 = -t900 - t754;
t676 = t753 * t935 - t1019;
t675 = t753 * t931 + t1016;
t671 = (t757 * t934 - t759 * t930) * t901;
t670 = (t757 * t930 + t759 * t934) * t901;
t667 = -t729 * t925 + t730 * t927;
t666 = -t729 * t927 - t730 * t925;
t665 = t716 * t928 - t773 * t926;
t664 = t715 * t928 - t772 * t926;
t663 = t714 * t928 + t771 * t926;
t662 = t716 * t926 + t773 * t928;
t661 = t715 * t926 + t772 * t928;
t660 = t714 * t926 - t771 * t928;
t659 = -qJ(2) * t792 - t761 * t926 + t770 * t928;
t658 = -qJ(2) * t791 - t760 * t926 + t769 * t928;
t657 = t667 * t936 - t879 * t932;
t656 = t711 * t928 + t749 * t926;
t655 = t711 * t926 - t749 * t928;
t654 = t712 * t928 - t732 * t926;
t653 = t712 * t926 + t732 * t928;
t652 = -pkin(1) * t843 + qJ(2) * t794 + t761 * t928 + t770 * t926;
t651 = -pkin(1) * t842 + qJ(2) * t793 + t760 * t928 + t769 * t926;
t650 = -t754 - t755;
t649 = t691 * t928 + t733 * t926;
t648 = t691 * t926 - t733 * t928;
t645 = -pkin(3) * t771 + t669;
t644 = -pkin(3) * t749 + t668;
t642 = -qJD(6) * t759 - t953;
t640 = t738 * t934 + t997;
t639 = -t739 * t930 + t1017;
t638 = t738 * t930 - t996;
t637 = t739 * t934 + t1020;
t634 = -t708 * t931 - t709 * t935;
t633 = -t1013 * t931 - t704 * t935;
t632 = t708 * t935 - t709 * t931;
t631 = t1013 * t935 - t704 * t931;
t630 = -t727 * t930 + t996;
t629 = t727 * t934 + t997;
t628 = -t701 * t925 + t703 * t927;
t627 = -t700 * t925 + t702 * t927;
t626 = -t701 * t927 - t703 * t925;
t625 = -t700 * t927 - t702 * t925;
t624 = -t698 * t925 + t699 * t927;
t623 = -t696 * t925 + t697 * t927;
t622 = -t698 * t927 - t699 * t925;
t621 = -t696 * t927 - t697 * t925;
t620 = -t688 * t925 + t689 * t927;
t619 = t688 * t927 + t689 * t925;
t618 = -pkin(8) * t688 + t994;
t617 = -pkin(2) * t713 + pkin(3) * t807 - qJ(4) * t774 - t990;
t616 = -t682 * t933 + t683 * t937;
t615 = t682 * t937 + t683 * t933;
t614 = -pkin(8) * t675 + t995;
t613 = -pkin(2) * t710 - pkin(3) * t805 - qJ(4) * t750 + t989;
t612 = t677 * t934 - t1020;
t611 = t677 * t930 + t1017;
t610 = -t675 * t925 + t676 * t927;
t609 = t675 * t927 + t676 * t925;
t607 = t740 + t940;
t603 = (qJD(6) - t901) * t759 + t953;
t602 = t759 * t974 - t934 * t940;
t601 = -t759 * t973 - t930 * t940;
t600 = -t642 * t930 - t757 * t973;
t599 = t642 * t934 - t757 * t974;
t597 = t624 * t936 + t958;
t596 = t623 * t936 - t958;
t595 = -t670 * t931 + t671 * t935;
t594 = t670 * t935 + t671 * t931;
t591 = -qJ(2) * t682 - (pkin(2) * t926 - pkin(7) * t928) * t720;
t590 = -t660 * t933 + t663 * t937;
t589 = t660 * t937 + t663 * t933;
t588 = t657 * t928 - t666 * t926;
t587 = t657 * t926 + t666 * t928;
t586 = t628 * t936 - t709 * t932;
t585 = t627 * t936 - t708 * t932;
t584 = -pkin(4) * t1013 + pkin(8) * t689 + t995;
t583 = t1013 * t932 + t620 * t936;
t582 = -t1013 * t936 + t620 * t932;
t581 = -t655 * t933 + t656 * t937;
t580 = t655 * t937 + t656 * t933;
t579 = t593 * t936 + t762 * t932;
t578 = t593 * t932 - t762 * t936;
t577 = -qJ(4) * t733 - t592;
t576 = -pkin(4) * t704 + pkin(8) * t676 - t994;
t575 = -t648 * t933 + t649 * t937;
t574 = t648 * t937 + t649 * t933;
t573 = t610 * t936 + t704 * t932;
t572 = t610 * t932 - t704 * t936;
t571 = qJ(2) * t683 - (-pkin(2) * t928 - pkin(7) * t926 - pkin(1)) * t720;
t567 = -pkin(7) * t713 - t645 * t932 + t685 * t936;
t566 = -t638 * t931 + t640 * t935;
t565 = -t637 * t931 + t639 * t935;
t564 = t638 * t935 + t640 * t931;
t563 = t637 * t935 + t639 * t931;
t562 = -t632 * t925 + t634 * t927;
t561 = -t631 * t925 + t633 * t927;
t560 = t632 * t927 + t634 * t925;
t559 = -t631 * t927 - t633 * t925;
t558 = -t629 * t931 + t630 * t935;
t557 = t629 * t935 + t630 * t931;
t556 = -pkin(7) * t710 - t644 * t932 + t678 * t936;
t555 = t561 * t936 - t768 * t932;
t554 = -pkin(9) * t629 + t998;
t553 = -pkin(2) * t690 - pkin(3) * t799 - qJ(4) * t735 - t593;
t552 = t597 * t928 - t622 * t926;
t551 = t596 * t928 - t621 * t926;
t550 = t597 * t926 + t622 * t928;
t549 = t596 * t926 + t621 * t928;
t548 = t562 * t936 + t722 * t932;
t547 = t562 * t932 - t722 * t936;
t546 = -t611 * t931 + t612 * t935;
t545 = t611 * t935 + t612 * t931;
t544 = -pkin(7) * t690 + t1007 * t733 + t577 * t936;
t541 = t586 * t928 - t626 * t926;
t540 = t585 * t928 - t625 * t926;
t539 = t586 * t926 + t626 * t928;
t538 = t585 * t926 + t625 * t928;
t537 = -t607 * t930 - t608 * t934;
t536 = -t1014 * t930 - t603 * t934;
t535 = t607 * t934 - t608 * t930;
t534 = t1014 * t934 - t603 * t930;
t533 = -pkin(9) * t611 + t999;
t532 = -t601 * t931 + t602 * t935;
t531 = -t599 * t931 + t600 * t935;
t530 = t601 * t935 + t602 * t931;
t529 = t599 * t935 + t600 * t931;
t528 = t583 * t928 + t619 * t926;
t527 = t583 * t926 - t619 * t928;
t525 = -t594 * t925 + t595 * t927;
t524 = -t594 * t927 - t595 * t925;
t521 = t525 * t936 - t873 * t932;
t520 = -pkin(3) * t560 - pkin(4) * t632;
t519 = t579 * t928 + t592 * t926;
t518 = t579 * t926 - t592 * t928;
t517 = t573 * t928 + t609 * t926;
t516 = t573 * t926 - t609 * t928;
t515 = -pkin(2) * t578 + pkin(3) * t762 - qJ(4) * t593;
t514 = -pkin(3) * t619 - pkin(4) * t688 + t570;
t513 = -pkin(5) * t1014 + pkin(9) * t630 + t999;
t512 = -qJ(4) * t619 - t584 * t925 + t618 * t927;
t511 = -qJ(2) * t660 + t567 * t928 - t617 * t926;
t510 = -pkin(3) * t609 - pkin(4) * t675 + t569;
t507 = -pkin(5) * t603 + pkin(9) * t612 - t998;
t506 = -t564 * t925 + t566 * t927;
t505 = -t563 * t925 + t565 * t927;
t504 = -t564 * t927 - t566 * t925;
t503 = -t563 * t927 - t565 * t925;
t502 = -t557 * t925 + t558 * t927;
t501 = t557 * t927 + t558 * t925;
t500 = -qJ(2) * t655 + t556 * t928 - t613 * t926;
t499 = -qJ(4) * t609 - t576 * t925 + t614 * t927;
t498 = -pkin(1) * t713 + qJ(2) * t663 + t567 * t926 + t617 * t928;
t497 = t555 * t928 - t559 * t926;
t496 = t555 * t926 + t559 * t928;
t495 = -pkin(7) * t578 + (-qJ(4) * t936 + t1007) * t592;
t494 = -pkin(4) * t684 + pkin(8) * t509;
t493 = t548 * t928 + t560 * t926;
t492 = t548 * t926 - t560 * t928;
t491 = -pkin(1) * t710 + qJ(2) * t656 + t556 * t926 + t613 * t928;
t490 = -pkin(8) * t632 - t508;
t489 = -t545 * t925 + t546 * t927;
t488 = t545 * t927 + t546 * t925;
t487 = -pkin(4) * t722 + pkin(8) * t634 + t509;
t486 = -t535 * t931 + t537 * t935;
t485 = -t534 * t931 + t536 * t935;
t484 = t535 * t935 + t537 * t931;
t483 = t534 * t935 + t536 * t931;
t479 = t506 * t936 - t608 * t932;
t478 = t505 * t936 - t607 * t932;
t477 = -t530 * t925 + t532 * t927;
t476 = -t529 * t925 + t531 * t927;
t475 = -t530 * t927 - t532 * t925;
t474 = -t529 * t927 - t531 * t925;
t473 = -t527 * t933 + t528 * t937;
t472 = t527 * t937 + t528 * t933;
t471 = t1014 * t932 + t502 * t936;
t470 = -t1014 * t936 + t502 * t932;
t469 = t521 * t928 - t524 * t926;
t468 = t521 * t926 + t524 * t928;
t467 = -qJ(2) * t648 + t544 * t928 - t553 * t926;
t466 = -pkin(2) * t582 + pkin(3) * t1013 - qJ(4) * t620 - t584 * t927 - t618 * t925;
t465 = t477 * t936 + t960;
t464 = t476 * t936 - t960;
t463 = -t518 * t933 + t519 * t937;
t462 = t518 * t937 + t519 * t933;
t461 = -t516 * t933 + t517 * t937;
t460 = t516 * t937 + t517 * t933;
t459 = -pkin(1) * t690 + qJ(2) * t649 + t544 * t926 + t553 * t928;
t458 = t489 * t936 + t603 * t932;
t457 = t489 * t932 - t603 * t936;
t456 = -pkin(2) * t572 + pkin(3) * t704 - qJ(4) * t610 - t576 * t927 - t614 * t925;
t455 = t509 * t927 - t1001;
t454 = t509 * t925 + t1000;
t453 = -pkin(8) * t557 - t513 * t931 + t554 * t935;
t452 = t455 * t936 + t684 * t932;
t451 = t455 * t932 - t684 * t936;
t450 = -pkin(7) * t582 + t512 * t936 - t514 * t932;
t449 = -t492 * t933 + t493 * t937;
t448 = t492 * t937 + t493 * t933;
t447 = -pkin(8) * t545 - t507 * t931 + t533 * t935;
t446 = t479 * t928 - t504 * t926;
t445 = t478 * t928 - t503 * t926;
t444 = t479 * t926 + t504 * t928;
t443 = t478 * t926 + t503 * t928;
t442 = -pkin(4) * t1014 + pkin(8) * t558 + t513 * t935 + t554 * t931;
t441 = t471 * t928 + t501 * t926;
t440 = t471 * t926 - t501 * t928;
t439 = -pkin(7) * t572 + t499 * t936 - t510 * t932;
t438 = -pkin(4) * t603 + pkin(8) * t546 + t507 * t935 + t533 * t931;
t437 = -t484 * t925 + t486 * t927;
t436 = -t483 * t925 + t485 * t927;
t435 = t484 * t927 + t486 * t925;
t434 = -t483 * t927 - t485 * t925;
t431 = -qJ(2) * t518 + t495 * t928 - t515 * t926;
t430 = t436 * t936 - t679 * t932;
t429 = t465 * t928 - t475 * t926;
t428 = t464 * t928 - t474 * t926;
t427 = t465 * t926 + t475 * t928;
t426 = t464 * t926 + t474 * t928;
t425 = t437 * t936 + t650 * t932;
t424 = t437 * t932 - t650 * t936;
t423 = -pkin(3) * t454 - pkin(4) * t508;
t422 = t458 * t928 + t488 * t926;
t421 = t458 * t926 - t488 * t928;
t420 = -pkin(5) * t598 + pkin(9) * t433;
t419 = -qJ(4) * t560 - t487 * t925 + t490 * t927;
t418 = -pkin(1) * t578 + qJ(2) * t519 + t495 * t926 + t515 * t928;
t417 = -pkin(3) * t501 - pkin(4) * t557 - pkin(5) * t629 + t482;
t416 = -pkin(9) * t535 - t432;
t415 = -pkin(5) * t650 + pkin(9) * t537 + t433;
t414 = -pkin(3) * t488 - pkin(4) * t545 - pkin(5) * t611 + t481;
t413 = -pkin(2) * t547 + pkin(3) * t722 - qJ(4) * t562 - t487 * t927 - t490 * t925;
t412 = -pkin(8) * t1000 - qJ(4) * t454 - t494 * t925;
t411 = t452 * t928 + t454 * t926;
t410 = t452 * t926 - t454 * t928;
t409 = -qJ(2) * t527 + t450 * t928 - t466 * t926;
t408 = -pkin(7) * t547 + t419 * t936 - t520 * t932;
t407 = -pkin(3) * t435 - pkin(4) * t484 - pkin(5) * t535;
t406 = -pkin(1) * t582 + qJ(2) * t528 + t450 * t926 + t466 * t928;
t405 = -t440 * t933 + t441 * t937;
t404 = t440 * t937 + t441 * t933;
t403 = -qJ(2) * t516 + t439 * t928 - t456 * t926;
t402 = t433 * t935 - t1003;
t401 = t433 * t931 + t1002;
t400 = -pkin(1) * t572 + qJ(2) * t517 + t439 * t926 + t456 * t928;
t399 = -qJ(4) * t501 - t442 * t925 + t453 * t927;
t398 = t430 * t928 - t434 * t926;
t397 = t430 * t926 + t434 * t928;
t396 = t425 * t928 + t435 * t926;
t395 = t425 * t926 - t435 * t928;
t394 = -t421 * t933 + t422 * t937;
t393 = t421 * t937 + t422 * t933;
t392 = -qJ(4) * t488 - t438 * t925 + t447 * t927;
t391 = -pkin(2) * t451 + pkin(3) * t684 + pkin(8) * t1001 - qJ(4) * t455 - t494 * t927;
t390 = -pkin(2) * t470 + pkin(3) * t1014 - qJ(4) * t502 - t442 * t927 - t453 * t925;
t389 = -t410 * t933 + t411 * t937;
t388 = t410 * t937 + t411 * t933;
t387 = -pkin(2) * t457 + pkin(3) * t603 - qJ(4) * t489 - t438 * t927 - t447 * t925;
t386 = -pkin(8) * t484 - t415 * t931 + t416 * t935;
t385 = -pkin(4) * t650 + pkin(8) * t486 + t415 * t935 + t416 * t931;
t384 = -pkin(7) * t451 + t412 * t936 - t423 * t932;
t383 = -qJ(2) * t492 + t408 * t928 - t413 * t926;
t382 = -pkin(1) * t547 + qJ(2) * t493 + t408 * t926 + t413 * t928;
t381 = -pkin(7) * t470 + t399 * t936 - t417 * t932;
t380 = -t401 * t925 + t402 * t927;
t379 = t401 * t927 + t402 * t925;
t378 = -t395 * t933 + t396 * t937;
t377 = t395 * t937 + t396 * t933;
t376 = -pkin(8) * t401 - pkin(9) * t1002 - t420 * t931;
t375 = t380 * t936 + t598 * t932;
t374 = t380 * t932 - t598 * t936;
t373 = -pkin(4) * t598 + pkin(8) * t402 - pkin(9) * t1003 + t420 * t935;
t372 = -pkin(7) * t457 + t392 * t936 - t414 * t932;
t371 = -pkin(3) * t379 - pkin(4) * t401 - pkin(5) * t432;
t370 = -qJ(4) * t435 - t385 * t925 + t386 * t927;
t369 = -qJ(2) * t410 + t384 * t928 - t391 * t926;
t368 = -qJ(2) * t440 + t381 * t928 - t390 * t926;
t367 = -pkin(1) * t470 + qJ(2) * t441 + t381 * t926 + t390 * t928;
t366 = -pkin(1) * t451 + qJ(2) * t411 + t384 * t926 + t391 * t928;
t365 = t375 * t928 + t379 * t926;
t364 = t375 * t926 - t379 * t928;
t363 = -pkin(2) * t424 + pkin(3) * t650 - qJ(4) * t437 - t385 * t927 - t386 * t925;
t362 = -qJ(2) * t421 + t372 * t928 - t387 * t926;
t361 = -pkin(1) * t457 + qJ(2) * t422 + t372 * t926 + t387 * t928;
t360 = -pkin(7) * t424 + t370 * t936 - t407 * t932;
t359 = -qJ(4) * t379 - t373 * t925 + t376 * t927;
t358 = -t364 * t933 + t365 * t937;
t357 = t364 * t937 + t365 * t933;
t356 = -pkin(2) * t374 + pkin(3) * t598 - qJ(4) * t380 - t373 * t927 - t376 * t925;
t355 = -qJ(2) * t395 + t360 * t928 - t363 * t926;
t354 = -pkin(1) * t424 + qJ(2) * t396 + t360 * t926 + t363 * t928;
t353 = -pkin(7) * t374 + t359 * t936 - t371 * t932;
t352 = -qJ(2) * t364 + t353 * t928 - t356 * t926;
t351 = -pkin(1) * t374 + qJ(2) * t365 + t353 * t926 + t356 * t928;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, -g(1), 0, 0, 0, 0, 0, 0, -t892, -t893, 0, t840, 0, 0, 0, 0, 0, 0, -t1012, -t832, 0, t681, 0, 0, 0, 0, 0, 0, t725, t726, t778, t616, 0, 0, 0, 0, 0, 0, t581, t590, t575, t463, 0, 0, 0, 0, 0, 0, t461, t473, t449, t389, 0, 0, 0, 0, 0, 0, t394, t405, t378, t358; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(2), 0, 0, 0, 0, 0, 0, t893, -t892, 0, t839, 0, 0, 0, 0, 0, 0, t832, -t1012, 0, t680, 0, 0, 0, 0, 0, 0, t723, t724, t777, t615, 0, 0, 0, 0, 0, 0, t580, t589, t574, t462, 0, 0, 0, 0, 0, 0, t460, t472, t448, t388, 0, 0, 0, 0, 0, 0, t393, t404, t377, t357; 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -g(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -t969, 0, 0, 0, 0, 0, 0, t842, t843, 0, -t720, 0, 0, 0, 0, 0, 0, t710, t713, t690, t578, 0, 0, 0, 0, 0, 0, t572, t582, t547, t451, 0, 0, 0, 0, 0, 0, t457, t470, t424, t374; 0, 0, 0, 0, 0, 0, 0, -g(3), g(2), 0, 0, 0, t893, 0, -t892, 0, t947, -t864, -t839, -pkin(6) * t839, 0, 0, t832, 0, -t1012, 0, t1026, -t1027, -t680, -pkin(6) * t680 + qJ(2) * t987 - t751 * t933, -t819 * t933 + t821 * t937, -t782 * t933 + t784 * t937, -t815 * t933 + t817 * t937, -t818 * t933 + t820 * t937, -t814 * t933 + t816 * t937, -t849 * t933 + t850 * t937, -pkin(6) * t723 - t651 * t933 + t658 * t937, -pkin(6) * t724 - t652 * t933 + t659 * t937, -pkin(6) * t777 - t686 * t933 + t687 * t937, -pkin(6) * t615 - t571 * t933 + t591 * t937, -t693 * t933 + t695 * t937, -t653 * t933 + t654 * t937, -t661 * t933 + t664 * t937, -t692 * t933 + t694 * t937, -t662 * t933 + t665 * t937, -t717 * t933 + t718 * t937, -pkin(6) * t580 - t491 * t933 + t500 * t937, -pkin(6) * t589 - t498 * t933 + t511 * t937, -pkin(6) * t574 - t459 * t933 + t467 * t937, -pkin(6) * t462 - t418 * t933 + t431 * t937, -t550 * t933 + t552 * t937, -t496 * t933 + t497 * t937, -t538 * t933 + t540 * t937, -t549 * t933 + t551 * t937, -t539 * t933 + t541 * t937, -t587 * t933 + t588 * t937, -pkin(6) * t460 - t400 * t933 + t403 * t937, -pkin(6) * t472 - t406 * t933 + t409 * t937, -pkin(6) * t448 - t382 * t933 + t383 * t937, -pkin(6) * t388 - t366 * t933 + t369 * t937, -t427 * t933 + t429 * t937, -t397 * t933 + t398 * t937, -t443 * t933 + t445 * t937, -t426 * t933 + t428 * t937, -t444 * t933 + t446 * t937, -t468 * t933 + t469 * t937, -pkin(6) * t393 - t361 * t933 + t362 * t937, -pkin(6) * t404 - t367 * t933 + t368 * t937, -pkin(6) * t377 - t354 * t933 + t355 * t937, -pkin(6) * t357 - t351 * t933 + t352 * t937; 0, 0, 0, 0, 0, 0, g(3), 0, -g(1), 0, 0, 0, t892, 0, t893, 0, t864, t947, t840, pkin(6) * t840, 0, 0, t1012, 0, t832, 0, t1027, t1026, t681, pkin(6) * t681 + qJ(2) * t988 + t751 * t937, t819 * t937 + t821 * t933, t782 * t937 + t784 * t933, t815 * t937 + t817 * t933, t818 * t937 + t820 * t933, t814 * t937 + t816 * t933, t849 * t937 + t850 * t933, pkin(6) * t725 + t651 * t937 + t658 * t933, pkin(6) * t726 + t652 * t937 + t659 * t933, pkin(6) * t778 + t686 * t937 + t687 * t933, pkin(6) * t616 + t571 * t937 + t591 * t933, t693 * t937 + t695 * t933, t653 * t937 + t654 * t933, t661 * t937 + t664 * t933, t692 * t937 + t694 * t933, t662 * t937 + t665 * t933, t717 * t937 + t718 * t933, pkin(6) * t581 + t491 * t937 + t500 * t933, pkin(6) * t590 + t498 * t937 + t511 * t933, pkin(6) * t575 + t459 * t937 + t467 * t933, pkin(6) * t463 + t418 * t937 + t431 * t933, t550 * t937 + t552 * t933, t496 * t937 + t497 * t933, t538 * t937 + t540 * t933, t549 * t937 + t551 * t933, t539 * t937 + t541 * t933, t587 * t937 + t588 * t933, pkin(6) * t461 + t400 * t937 + t403 * t933, pkin(6) * t473 + t406 * t937 + t409 * t933, pkin(6) * t449 + t382 * t937 + t383 * t933, pkin(6) * t389 + t366 * t937 + t369 * t933, t427 * t937 + t429 * t933, t397 * t937 + t398 * t933, t443 * t937 + t445 * t933, t426 * t937 + t428 * t933, t444 * t937 + t446 * t933, t468 * t937 + t469 * t933, pkin(6) * t394 + t361 * t937 + t362 * t933, pkin(6) * t405 + t367 * t937 + t368 * t933, pkin(6) * t378 + t354 * t937 + t355 * t933, pkin(6) * t358 + t351 * t937 + t352 * t933; 0, 0, 0, 0, 0, 0, -g(2), g(1), 0, 0, 0, 0, 0, 0, 0, qJDD(1), t898, t899, 0, 0, 0, 0, 0, 0, 0, qJDD(1), pkin(1) * t890 - t829, -pkin(1) * t889 - t830, 0, -pkin(1) * t765, t945 * t932, t885 * t936 + t888 * t932, t903 * t936 + t975, -t932 * t954 + t871, t905 * t932 + t976, 0, pkin(1) * t791 + pkin(2) * t888 + pkin(7) * t845 - t983, pkin(1) * t792 - pkin(2) * t885 + pkin(7) * t847 + t984, pkin(1) * t837 + pkin(2) * t894 + pkin(7) * t891 + t721, pkin(1) * t682 - pkin(2) * t811 + pkin(7) * t721, t789 * t932 - t955, t734 * t932 + t836 * t936, t775 * t932 + t803 * t936, t787 * t932 + t955, t776 * t932 - t806 * t936, t798 * t932 + t871, pkin(1) * t655 - pkin(2) * t749 + pkin(7) * t711 + t644 * t936 + t678 * t932, pkin(1) * t660 - pkin(2) * t771 + pkin(7) * t714 + t645 * t936 + t685 * t932, pkin(1) * t648 + pkin(7) * t691 + t577 * t932 + (-pkin(2) - t1006) * t733, pkin(1) * t518 + pkin(7) * t579 + (-pkin(2) + t946) * t592, t624 * t932 - t957, t561 * t932 + t768 * t936, t627 * t932 + t708 * t936, t623 * t932 + t957, t628 * t932 + t709 * t936, t667 * t932 + t879 * t936, pkin(1) * t516 - pkin(2) * t609 + pkin(7) * t573 + t499 * t932 + t510 * t936, pkin(1) * t527 - pkin(2) * t619 + pkin(7) * t583 + t512 * t932 + t514 * t936, pkin(1) * t492 - pkin(2) * t560 + pkin(7) * t548 + t419 * t932 + t520 * t936, pkin(1) * t410 - pkin(2) * t454 + pkin(7) * t452 + t412 * t932 + t423 * t936, t477 * t932 - t959, t436 * t932 + t679 * t936, t505 * t932 + t607 * t936, t476 * t932 + t959, t506 * t932 + t608 * t936, t525 * t932 + t873 * t936, pkin(1) * t421 - pkin(2) * t488 + pkin(7) * t458 + t392 * t932 + t414 * t936, pkin(1) * t440 - pkin(2) * t501 + pkin(7) * t471 + t399 * t932 + t417 * t936, pkin(1) * t395 - pkin(2) * t435 + pkin(7) * t425 + t370 * t932 + t407 * t936, pkin(1) * t364 - pkin(2) * t379 + pkin(7) * t375 + t359 * t932 + t371 * t936;];
tauB_reg  = t1;
