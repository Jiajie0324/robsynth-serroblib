% Calculate minimal parameter regressor of coriolis matrix for
% S6RRRPRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,theta4]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x28]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 17:02
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRRPRP6_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP6_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP6_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRP6_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 17:01:12
% EndTime: 2019-03-09 17:02:04
% DurationCPUTime: 30.80s
% Computational Cost: add. (31407->960), mult. (73476->1350), div. (0->0), fcn. (82848->10), ass. (0->693)
t641 = cos(pkin(6));
t643 = sin(qJ(3));
t646 = cos(qJ(3));
t640 = sin(pkin(6));
t644 = sin(qJ(2));
t919 = t640 * t644;
t581 = -t641 * t646 + t643 * t919;
t583 = t641 * t643 + t646 * t919;
t639 = sin(pkin(11));
t972 = cos(pkin(11));
t462 = t972 * t581 + t583 * t639;
t645 = cos(qJ(5));
t1036 = t645 * t462;
t1044 = t1036 / 0.2e1;
t1045 = -t1036 / 0.2e1;
t1046 = t1044 + t1045;
t1047 = qJD(5) * t1046;
t980 = -qJ(4) - pkin(9);
t611 = t980 * t646;
t786 = t972 * t643;
t519 = -t611 * t639 - t980 * t786;
t1038 = t519 * t645;
t1043 = t1038 / 0.2e1;
t1042 = t462 / 0.2e1;
t1041 = -t519 / 0.2e1;
t636 = t645 ^ 2;
t1040 = -t636 / 0.2e1;
t602 = t972 * t611;
t921 = t639 * t643;
t771 = t980 * t921;
t1029 = -t602 + t771;
t1039 = -t1029 / 0.2e1;
t553 = t972 * t583;
t922 = t639 * t581;
t1031 = t553 - t922;
t1017 = t1031 / 0.2e1;
t642 = sin(qJ(5));
t1037 = t642 * t462;
t937 = t1029 * t642;
t936 = t1029 * t645;
t302 = t642 * t1031;
t647 = cos(qJ(2));
t918 = t640 * t647;
t624 = pkin(8) * t918;
t625 = t641 * t644 * pkin(1);
t586 = t624 + t625;
t550 = pkin(9) * t641 + t586;
t769 = -pkin(2) * t647 - pkin(9) * t644;
t551 = (-pkin(1) + t769) * t640;
t426 = t643 * t550 - t646 * t551;
t364 = -t583 * qJ(4) - t426;
t328 = -pkin(3) * t918 + t364;
t427 = t550 * t646 + t551 * t643;
t365 = -qJ(4) * t581 + t427;
t788 = t972 * t365;
t216 = t639 * t328 + t788;
t1035 = t216 / 0.2e1;
t920 = t639 * t646;
t597 = t786 + t920;
t1034 = t597 * t1040;
t785 = t972 * t646;
t594 = -t785 + t921;
t791 = 0.2e1 * t1042;
t768 = t791 * t594;
t208 = -pkin(10) * t918 + t216;
t988 = pkin(1) * t647;
t584 = pkin(8) * t919 - t641 * t988;
t549 = -pkin(2) * t641 + t584;
t476 = pkin(3) * t581 + t549;
t655 = pkin(4) * t462 - pkin(10) * t1031 + t476;
t123 = t645 * t208 + t642 * t655;
t406 = t645 * t918 + t302;
t105 = -t406 * qJ(6) + t123;
t631 = -pkin(3) * t646 - pkin(2);
t698 = pkin(4) * t594 - pkin(10) * t597 + t631;
t339 = -t645 * t698 + t937;
t927 = t597 * t645;
t309 = -qJ(6) * t927 - t339;
t982 = t594 * pkin(5);
t280 = t309 + t982;
t792 = t309 / 0.2e1 - t280 / 0.2e1;
t1033 = t792 * t105;
t1032 = -t280 + t309;
t408 = t1031 * t645 - t642 * t918;
t395 = t408 * t642;
t907 = t645 * t406;
t255 = t395 - t907;
t592 = t594 ^ 2;
t593 = t597 ^ 2;
t1030 = -t593 - t592;
t1028 = t408 ^ 2;
t983 = t583 * pkin(3);
t282 = pkin(4) * t1031 + pkin(10) * t462 + t983;
t279 = t645 * t282;
t360 = t639 * t365;
t230 = t364 * t972 - t360;
t917 = t642 * t230;
t783 = t279 - t917;
t106 = pkin(5) * t1031 + qJ(6) * t1036 + t783;
t1027 = t106 / 0.2e1;
t836 = t643 * t918;
t610 = pkin(3) * t836;
t526 = t610 + t586;
t528 = t597 * t918;
t529 = -t639 * t836 + t785 * t918;
t324 = pkin(4) * t528 - pkin(10) * t529 + t526;
t323 = t645 * t324;
t585 = (pkin(2) * t644 - pkin(9) * t647) * t640;
t567 = t646 * t585;
t908 = t643 * t584;
t781 = t567 + t908;
t902 = t646 * t647;
t402 = (pkin(3) * t644 - qJ(4) * t902) * t640 + t781;
t565 = t643 * t585;
t566 = t646 * t584;
t896 = t565 - t566;
t422 = -qJ(4) * t836 + t896;
t264 = t639 * t402 + t972 * t422;
t247 = pkin(10) * t919 + t264;
t916 = t642 * t247;
t157 = t323 - t916;
t903 = t645 * t529;
t472 = t642 * t919 + t903;
t135 = pkin(5) * t528 - qJ(6) * t472 + t157;
t1026 = t135 / 0.2e1;
t242 = t645 * t247;
t322 = t642 * t324;
t158 = t242 + t322;
t613 = t645 * t919;
t909 = t642 * t529;
t471 = -t613 + t909;
t144 = -qJ(6) * t471 + t158;
t1025 = -t144 / 0.2e1;
t1024 = t230 / 0.2e1;
t1022 = t280 / 0.2e1;
t486 = t645 * t594;
t981 = t643 * pkin(3);
t489 = pkin(4) * t597 + pkin(10) * t594 + t981;
t470 = t645 * t489;
t911 = t519 * t642;
t782 = t470 + t911;
t281 = pkin(5) * t597 + qJ(6) * t486 + t782;
t1021 = t281 / 0.2e1;
t340 = t642 * t698 + t936;
t484 = t642 * t597;
t310 = -qJ(6) * t484 + t340;
t1019 = t310 / 0.2e1;
t816 = -t395 / 0.2e1;
t1018 = -t408 / 0.2e1;
t1016 = -t462 / 0.2e1;
t1011 = t519 / 0.2e1;
t1008 = t549 / 0.2e1;
t1007 = -t583 / 0.2e1;
t629 = pkin(3) * t639 + pkin(10);
t901 = qJ(6) + t629;
t587 = t901 * t642;
t1006 = -t587 / 0.2e1;
t589 = t901 * t645;
t1005 = -t589 / 0.2e1;
t1004 = t589 / 0.2e1;
t1003 = -t594 / 0.2e1;
t1002 = t594 / 0.2e1;
t1001 = -t597 / 0.2e1;
t1000 = t597 / 0.2e1;
t630 = -pkin(3) * t972 - pkin(4);
t607 = -t645 * pkin(5) + t630;
t999 = t607 / 0.2e1;
t998 = t629 / 0.2e1;
t997 = -t630 / 0.2e1;
t996 = t630 / 0.2e1;
t995 = -t639 / 0.2e1;
t994 = t639 / 0.2e1;
t993 = -t642 / 0.2e1;
t992 = t642 / 0.2e1;
t991 = -t643 / 0.2e1;
t990 = -t645 / 0.2e1;
t989 = t645 / 0.2e1;
t987 = pkin(5) * t408;
t986 = pkin(5) * t472;
t985 = pkin(5) * t642;
t984 = t471 * pkin(5);
t963 = t105 * t645;
t122 = t208 * t642 - t645 * t655;
t104 = -qJ(6) * t408 - t122;
t84 = pkin(5) * t462 + t104;
t975 = t84 * t642;
t979 = -t975 / 0.2e1 + t963 / 0.2e1;
t978 = pkin(3) * qJD(3);
t977 = pkin(5) * qJD(5);
t976 = pkin(5) * qJD(6);
t974 = t84 * t645;
t973 = t104 - t84;
t215 = t328 * t972 - t360;
t207 = pkin(4) * t918 - t215;
t156 = t406 * pkin(5) + t207;
t16 = t105 * t973 + t156 * t987;
t971 = qJD(1) * t16;
t17 = t973 * t406;
t970 = qJD(1) * t17;
t29 = t156 * t1031 - (t963 - t975) * t462;
t969 = qJD(1) * t29;
t44 = -t105 * t406 - t408 * t84;
t968 = qJD(1) * t44;
t53 = t122 * t462 - t207 * t406;
t967 = qJD(1) * t53;
t54 = -t123 * t462 + t207 * t408;
t966 = qJD(1) * t54;
t85 = -t1031 * t215 - t216 * t462;
t965 = qJD(1) * t85;
t964 = t105 * t642;
t227 = t645 * t230;
t278 = t642 * t282;
t900 = t227 + t278;
t115 = qJ(6) * t1037 + t900;
t923 = t639 * t364;
t229 = t788 + t923;
t162 = -pkin(5) * t1037 + t229;
t13 = t105 * t115 + t106 * t84 + t156 * t162;
t962 = t13 * qJD(1);
t961 = t135 * t645;
t960 = t144 * t642;
t413 = t639 * t422;
t787 = t972 * t402;
t263 = -t413 + t787;
t246 = -pkin(4) * t919 - t263;
t197 = t246 + t984;
t18 = t105 * t144 + t135 * t84 + t156 * t197;
t959 = t18 * qJD(1);
t19 = -t106 * t408 - t115 * t406 - (-t964 - t974) * t462;
t958 = t19 * qJD(1);
t957 = t229 * t597;
t956 = t229 * t642;
t26 = -t105 * t471 - t135 * t408 - t144 * t406 - t472 * t84;
t955 = t26 * qJD(1);
t954 = t280 * t642;
t953 = t281 * t645;
t952 = t310 * t645;
t481 = t642 * t594;
t469 = t642 * t489;
t898 = -t1038 + t469;
t312 = qJ(6) * t481 + t898;
t951 = t312 * t642;
t32 = -t1031 * t122 - t1037 * t207 + t229 * t406 + t462 * t783;
t950 = t32 * qJD(1);
t33 = -t1031 * t123 - t1036 * t207 + t229 * t408 - t462 * t900;
t949 = t33 * qJD(1);
t38 = -t122 * t528 + t157 * t462 + t207 * t471 + t246 * t406;
t948 = t38 * qJD(1);
t39 = -t123 * t528 - t158 * t462 + t207 * t472 + t246 * t408;
t947 = t39 * qJD(1);
t946 = t408 * t1031;
t945 = t408 * t645;
t944 = t1031 * t406;
t943 = t462 * t597;
t47 = (t215 - t230) * t462 + (-t216 + t229) * t1031;
t942 = t47 * qJD(1);
t941 = t472 * t642;
t940 = t472 * t645;
t48 = -t1031 * t263 - t215 * t529 - t216 * t528 - t264 * t462;
t939 = t48 * qJD(1);
t49 = -t215 * t229 + t216 * t230 + t476 * t983;
t938 = t49 * qJD(1);
t52 = t215 * t263 + t216 * t264 + t476 * t526;
t934 = t52 * qJD(1);
t933 = t549 * t646;
t932 = t587 * t642;
t931 = t587 * t645;
t930 = t589 * t642;
t929 = t589 * t645;
t928 = t597 * t406;
t633 = t640 ^ 2;
t638 = t647 ^ 2;
t926 = t633 * t638;
t925 = t633 * t644;
t915 = t642 * t406;
t912 = t642 * t471;
t910 = t642 * t528;
t904 = t645 * t528;
t899 = -t954 / 0.2e1 + t952 / 0.2e1;
t895 = t786 / 0.2e1 + t920 / 0.2e1;
t634 = t642 ^ 2;
t620 = t634 + t636;
t621 = t636 - t634;
t622 = -t643 ^ 2 + t646 ^ 2;
t159 = t255 * t462;
t894 = qJD(1) * t159;
t839 = t462 * t1037;
t163 = -t839 - t944;
t893 = qJD(1) * t163;
t164 = -t839 + t944;
t892 = qJD(1) * t164;
t838 = t462 * t1036;
t165 = -t838 + t946;
t891 = qJD(1) * t165;
t166 = t838 + t946;
t890 = qJD(1) * t166;
t795 = -t486 / 0.2e1;
t686 = t1034 * t462 + t408 * t795;
t172 = -t941 / 0.2e1 + t686;
t889 = qJD(1) * t172;
t808 = -t919 / 0.2e1;
t818 = t406 * t1003;
t182 = t818 - t903 / 0.2e1 + (-t943 / 0.2e1 + t808) * t642;
t888 = qJD(1) * t182;
t700 = t1003 * t408 + t1045 * t597;
t764 = t613 / 0.2e1 - t909 / 0.2e1;
t183 = t700 - t764;
t887 = qJD(1) * t183;
t299 = -t426 * t918 - t549 * t581;
t886 = qJD(1) * t299;
t300 = -t427 * t918 - t549 * t583;
t885 = qJD(1) * t300;
t307 = 0.2e1 * t1045;
t884 = qJD(1) * t307;
t883 = qJD(1) * t408;
t882 = qJD(1) * t462;
t524 = t895 * t918;
t881 = qJD(1) * t524;
t880 = qJD(1) * t583;
t879 = qJD(1) * t641;
t878 = qJD(1) * t647;
t877 = qJD(2) * t594;
t876 = qJD(2) * t597;
t875 = qJD(2) * t643;
t874 = qJD(2) * t645;
t873 = qJD(2) * t646;
t872 = qJD(2) * t647;
t871 = qJD(3) * t642;
t870 = qJD(3) * t643;
t869 = qJD(3) * t645;
t868 = qJD(3) * t646;
t867 = qJD(4) * t645;
t866 = qJD(5) * t406;
t865 = qJD(5) * t462;
t864 = qJD(5) * t524;
t863 = qJD(5) * t642;
t862 = qJD(5) * t645;
t799 = t907 / 0.2e1;
t690 = (t799 + t816) * t594;
t805 = t912 / 0.2e1;
t812 = t940 / 0.2e1;
t149 = t805 + t812 + t690;
t861 = t149 * qJD(1);
t160 = (-t907 - t395) * t462;
t860 = t160 * qJD(1);
t161 = -t406 * t472 - t408 * t471;
t859 = t161 * qJD(1);
t191 = t426 * t919 - t549 * t836 - t586 * t581 + t781 * t918;
t858 = t191 * qJD(1);
t192 = t586 * t583 + (-t427 * t644 + (t896 + t933) * t647) * t640;
t857 = t192 * qJD(1);
t195 = -t406 * t528 - t462 * t471;
t856 = t195 * qJD(1);
t196 = t408 * t528 + t462 * t472;
t855 = t196 * qJD(1);
t370 = -t581 * t646 - t583 * t643;
t417 = t370 * t918;
t854 = t417 * qJD(1);
t500 = -t581 * t919 + t643 * t926;
t853 = t500 * qJD(1);
t501 = -t583 * t919 + t646 * t926;
t852 = t501 * qJD(1);
t522 = pkin(1) * t925 + t586 * t641;
t851 = t522 * qJD(1);
t523 = -t584 * t641 + t633 * t988;
t850 = t523 * qJD(1);
t596 = (-t644 ^ 2 + t638) * t633;
t849 = t596 * qJD(1);
t848 = t640 * qJD(3);
t847 = t593 - t592;
t846 = pkin(5) * t927;
t845 = pkin(5) * t863;
t844 = t987 / 0.2e1;
t843 = t985 / 0.2e1;
t842 = t983 / 0.2e1;
t841 = t982 / 0.2e1;
t840 = t981 / 0.2e1;
t837 = t645 * t484;
t835 = t640 * t902;
t834 = -t972 / 0.2e1;
t833 = -t104 / 0.2e1 + t84 / 0.2e1;
t832 = t640 * t878;
t831 = t594 * t876;
t830 = t636 * t876;
t829 = t597 * t874;
t828 = t640 * t872;
t827 = t647 * t848;
t826 = t642 * t869;
t825 = t597 * t863;
t824 = t597 * t862;
t823 = t594 * t597 * qJD(3);
t822 = t633 * t878;
t821 = qJD(2) * t919;
t820 = t642 * t862;
t819 = -t963 / 0.2e1;
t817 = t408 * t1000;
t815 = t945 / 0.2e1;
t814 = t1031 * t1000;
t813 = -t940 / 0.2e1;
t810 = -t927 / 0.2e1;
t809 = t927 / 0.2e1;
t807 = t919 / 0.2e1;
t806 = t1037 / 0.2e1;
t804 = -t910 / 0.2e1;
t803 = t910 / 0.2e1;
t802 = t481 / 0.2e1;
t801 = -t484 / 0.2e1;
t800 = t484 / 0.2e1;
t796 = -t904 / 0.2e1;
t794 = -t227 / 0.2e1 - t278 / 0.2e1;
t793 = -t242 / 0.2e1 - t322 / 0.2e1;
t790 = -t469 / 0.2e1 + t1043;
t789 = t565 / 0.2e1 - t566 / 0.2e1;
t784 = 0.2e1 * t837;
t780 = pkin(5) * t809;
t779 = pkin(5) * t802;
t778 = qJD(2) + t879;
t777 = -qJD(5) - t882;
t776 = -qJD(5) - t877;
t775 = t872 * t925;
t774 = t644 * t822;
t773 = t646 * t832;
t772 = t634 * t1001 + t1034;
t770 = t833 * t642;
t767 = qJD(2) * t784;
t766 = qJD(3) * t784;
t765 = t323 / 0.2e1 - t916 / 0.2e1;
t456 = -t922 / 0.2e1 + t553 / 0.2e1;
t763 = t610 / 0.2e1 + t624 / 0.2e1 + t625 / 0.2e1;
t762 = -qJD(3) + t832;
t444 = -pkin(5) * t481 + t1029;
t445 = pkin(5) * t484 + t519;
t650 = t105 * t312 / 0.2e1 + t106 * t1022 + t115 * t1019 + t156 * t444 / 0.2e1 + t162 * t445 / 0.2e1 + t84 * t1021;
t675 = t1004 * t144 + t1006 * t135 + t197 * t999;
t1 = -t650 + t675;
t62 = t280 * t281 + t310 * t312 + t444 * t445;
t761 = -t1 * qJD(1) + t62 * qJD(2);
t715 = t1002 * t105 + t1042 * t310;
t674 = t1001 * t115 + t715;
t718 = t1002 * t84 + t1042 * t280;
t677 = t1001 * t106 + t718;
t707 = t1004 * t471 + t1006 * t472;
t710 = t281 * t1018 - t312 * t406 / 0.2e1;
t4 = (t1025 + t677) * t645 + (t1026 + t674) * t642 + t707 + t710;
t755 = t280 * t645 + t310 * t642;
t66 = (t951 + t953) * t597 - t755 * t594;
t760 = t4 * qJD(1) - t66 * qJD(2);
t5 = t833 * t310 - t1033 + (t1018 * t445 + t156 * t810 + t1026) * pkin(5);
t70 = t1032 * t310 + t445 * t846;
t759 = -qJD(1) * t5 + qJD(2) * t70;
t69 = t1032 * t484;
t663 = -t406 * t792 + t597 * t770;
t8 = t986 / 0.2e1 + t663;
t758 = -qJD(1) * t8 + qJD(2) * t69;
t14 = (pkin(5) * t1042 + t833) * t645;
t721 = t841 - t792;
t63 = t721 * t645;
t757 = qJD(1) * t14 + qJD(2) * t63;
t433 = pkin(5) * t806;
t24 = t433 + t770;
t74 = t721 * t642;
t756 = qJD(1) * t24 + qJD(2) * t74;
t754 = -t1031 * t629 - t462 * t630;
t753 = t930 - t931;
t752 = -t594 * t630 - t597 * t629;
t706 = t929 / 0.2e1 + t932 / 0.2e1;
t662 = -t594 * t706 + t597 * t999;
t709 = -t953 / 0.2e1 - t951 / 0.2e1;
t117 = t662 + t709;
t661 = t1031 * t999 - t462 * t706;
t714 = t106 * t990 + t115 * t993;
t46 = t661 + t714;
t751 = -qJD(1) * t46 - qJD(2) * t117;
t713 = t1000 * t156 + t1017 * t445;
t12 = (-t135 / 0.2e1 - t715) * t645 + (t1025 + t718) * t642 + t713;
t121 = t445 * t597 + (-t952 + t954) * t594;
t750 = qJD(1) * t12 + qJD(2) * t121;
t139 = (-t339 + t937) * t597 + t470 * t594;
t648 = t1003 * t783 + t1016 * t782 + t1017 * t339 + t1039 * t406 + t207 * t802 + t519 * t806;
t666 = t246 * t990 + t471 * t996 + t629 * t804;
t20 = (t122 / 0.2e1 - t956 / 0.2e1) * t597 + t648 + t666;
t749 = -t20 * qJD(1) + t139 * qJD(2);
t140 = (-t340 + t936) * t597 + (-t898 - t1038) * t594;
t649 = t1000 * t123 + t1002 * t900 + t1017 * t340 + t1039 * t408 + t1042 * t898;
t712 = t246 * t992 + t472 * t996;
t21 = (-t629 * t528 / 0.2e1 - t462 * t1041 - t957 / 0.2e1 + t207 * t1002) * t645 + t649 + t712;
t748 = -t21 * qJD(1) + t140 * qJD(2);
t147 = t755 * t597;
t656 = t413 / 0.2e1 + t984 / 0.2e1 - t787 / 0.2e1 + pkin(4) * t808;
t711 = t1019 * t406 + t1022 * t408;
t27 = (t964 / 0.2e1 + t974 / 0.2e1) * t597 + t656 + t711;
t747 = -qJD(1) * t27 - qJD(2) * t147;
t657 = t1017 * t1029 + t1031 * t1039;
t684 = (t528 * t995 + t529 * t834) * pkin(3);
t36 = (t1035 - t229 / 0.2e1) * t597 + (t1024 - t215 / 0.2e1) * t594 + t684 + t657;
t746 = t36 * qJD(1);
t235 = t339 * t594 - t484 * t519;
t654 = t1003 * t122 + t1011 * t406 + t1016 * t339 + t207 * t800;
t41 = t654 + t793;
t745 = -qJD(1) * t41 + qJD(2) * t235;
t236 = -t340 * t594 + t519 * t927;
t653 = t1003 * t123 + t1011 * t408 + t1016 * t340 + t207 * t809;
t40 = -t653 + t765;
t744 = qJD(1) * t40 - qJD(2) * t236;
t243 = t631 * t981;
t659 = t215 * t1029 / 0.2e1 + t519 * t1035 + t229 * t1041 + t230 * t1039;
t696 = t264 * t994 + t263 * t972 / 0.2e1;
t34 = (t1007 * t631 + t476 * t991 + t696) * pkin(3) + t659;
t743 = -t34 * qJD(1) + t243 * qJD(2);
t314 = -t1029 * t594 + t519 * t597;
t658 = t1000 * t215 + t1002 * t216 + t1031 * t1041 - t1039 * t462;
t59 = t658 + t763;
t742 = -qJD(1) * t59 + qJD(2) * t314;
t741 = t776 * t645;
t723 = t642 * t768;
t668 = t1031 * t801 + t723 - t928 / 0.2e1;
t128 = t796 + t668;
t423 = t847 * t642;
t740 = -qJD(1) * t128 + qJD(2) * t423;
t669 = t1031 * t800 + t723 + t928 / 0.2e1;
t130 = t796 + t669;
t424 = t1030 * t642;
t739 = qJD(1) * t130 - qJD(2) * t424;
t652 = (t814 - t768) * t645 + t817;
t132 = t804 + t652;
t425 = t847 * t645;
t738 = -qJD(1) * t132 - qJD(2) * t425;
t651 = (t814 + t768) * t645 + t817;
t134 = t803 + t651;
t493 = t1030 * t645;
t737 = qJD(1) * t134 - qJD(2) * t493;
t152 = 0.2e1 * t1017 * t597 + t768;
t185 = t1031 ^ 2 + t462 ^ 2;
t736 = qJD(1) * t185 + qJD(2) * t152;
t735 = qJD(1) * t152 - qJD(2) * t1030;
t201 = t915 / 0.2e1 + t815 + t456;
t421 = -t895 + t772;
t734 = qJD(1) * t201 - qJD(2) * t421;
t228 = (-t915 - t945) * t597;
t491 = t620 * t593;
t733 = qJD(1) * t228 - qJD(2) * t491;
t695 = t1031 * t834 - t462 * t994;
t266 = (t1007 + t695) * pkin(3);
t694 = t594 * t995 + t597 * t834;
t449 = (t991 + t694) * pkin(3);
t732 = qJD(1) * t266 + qJD(2) * t449;
t731 = qJD(1) * t302 + qJD(2) * t484;
t303 = t791 * t642;
t234 = qJD(1) * t303 + qJD(2) * t481;
t306 = 0.2e1 * t1044;
t730 = -qJD(1) * t306 - qJD(2) * t486;
t446 = t634 * t462;
t447 = t636 * t462;
t311 = t446 + t447;
t579 = t634 * t594;
t580 = t636 * t594;
t490 = t579 + t580;
t729 = qJD(1) * t311 + qJD(2) * t490;
t419 = t581 ^ 2 - t583 ^ 2;
t728 = qJD(1) * t419 + qJD(2) * t370;
t727 = qJD(1) * t370 + qJD(2) * t622;
t726 = qJD(1) * t456 + qJD(2) * t895;
t725 = t875 + t880;
t724 = qJD(1) * t255 + qJD(3) * t620;
t722 = -t462 * t843 + t788 / 0.2e1 + t923 / 0.2e1;
t720 = t640 * t769;
t719 = t819 + t975 / 0.2e1;
t664 = pkin(2) * t581 / 0.2e1 + t933 / 0.2e1 - pkin(9) * t836 / 0.2e1;
t293 = t664 + t789;
t717 = pkin(2) * t873 - qJD(1) * t293;
t697 = pkin(2) * t1007 + pkin(9) * t835 / 0.2e1;
t295 = -t567 / 0.2e1 + (t1008 - t584 / 0.2e1) * t643 + t697;
t716 = pkin(2) * t875 - qJD(1) * t295;
t708 = t1005 * t406 - t1018 * t587;
t705 = t594 * t998 + t597 * t997;
t704 = t799 + t395 / 0.2e1;
t703 = t829 + t883;
t457 = t581 * t991 + t583 * t646 / 0.2e1;
t702 = -qJD(2) * t457 + t581 * t880;
t701 = qJD(1) * t457 + t643 * t873;
t699 = t1045 * t629 + t408 * t996;
t325 = t607 * t985;
t50 = -t792 * t589 + (t445 * t993 + t607 * t810 + t1021) * pkin(5);
t9 = t833 * t589 + (t1018 * t607 + t156 * t993 + t1027) * pkin(5);
t692 = -qJD(1) * t9 - qJD(2) * t50 + qJD(3) * t325;
t691 = t705 * t645;
t665 = t602 / 0.2e1 - t771 / 0.2e1 + t779;
t670 = (-t930 / 0.2e1 + t931 / 0.2e1) * t597 + t899;
t108 = t665 + t670;
t30 = -t708 + t719 + t722;
t478 = t929 + t932;
t689 = -qJD(1) * t30 + qJD(2) * t108 + qJD(3) * t478;
t155 = (-t915 + t945) * t597;
t170 = -t907 + 0.2e1 * t816;
t405 = t406 ^ 2;
t186 = t405 - t1028;
t688 = qJD(1) * t186 - qJD(2) * t155 + qJD(3) * t170;
t268 = t405 + t1028;
t687 = qJD(1) * t268 - qJD(2) * t228 + qJD(3) * t255;
t676 = t462 * t837 + t594 * t704;
t120 = t805 + t813 + t676;
t685 = t120 * qJD(1) + t594 * t767;
t660 = t705 * t642 + t1043;
t209 = t660 - t790;
t667 = t1037 * t998 + t207 * t989 + t406 * t997;
t55 = t667 - t794;
t683 = -qJD(1) * t55 - qJD(2) * t209 - t630 * t869;
t211 = -t470 / 0.2e1 - t691 + (t1011 + t1041) * t642;
t57 = -t279 / 0.2e1 + (t207 / 0.2e1 + t1024) * t642 + t699;
t682 = -qJD(1) * t57 - qJD(2) * t211 - t630 * t871;
t226 = t704 * t597;
t388 = -t915 / 0.2e1;
t253 = t388 + t815;
t681 = qJD(2) * t226 - qJD(3) * t253 + t406 * t883;
t480 = (t634 / 0.2e1 + t1040) * t597;
t680 = qJD(1) * t253 - qJD(2) * t480 + t826;
t265 = t1031 * t1002 + t943 / 0.2e1;
t679 = qJD(2) * t265 + qJD(5) * t456 + t1031 * t882;
t678 = qJD(1) * t265 + qJD(5) * t895 + t831;
t492 = t621 * t593;
t673 = qJD(1) * t155 + qJD(2) * t492 + t766;
t672 = -qJD(1) * t170 - qJD(3) * t621 + t767;
t671 = t593 * t642 * t874 + qJD(1) * t226 + qJD(3) * t480;
t612 = qJD(2) * t807;
t578 = t895 * qJD(3);
t576 = t597 * t869;
t554 = (t822 - t848 / 0.2e1) * t644;
t538 = -0.2e1 * t597 * t820;
t514 = t904 / 0.2e1;
t474 = t481 * qJD(5);
t473 = t480 * qJD(5);
t452 = -t912 / 0.2e1;
t451 = t457 * qJD(3);
t448 = pkin(3) * t694 + t840;
t443 = t1031 * t869;
t420 = t772 + t895;
t367 = t370 * qJD(3);
t366 = (qJD(1) * t1031 + t876) * t645;
t327 = qJD(2) * t524 + qJD(3) * t456;
t321 = (-t703 - t871) * pkin(5);
t304 = -t1037 / 0.2e1 + t806;
t298 = t304 * qJD(5);
t297 = t303 * qJD(5);
t296 = t643 * t1008 + t908 / 0.2e1 + t567 / 0.2e1 + t697;
t294 = t664 - t789;
t267 = pkin(3) * t695 + t842;
t256 = t265 * qJD(3);
t252 = t255 * qJD(6);
t248 = t253 * qJD(5);
t231 = -t234 - t863;
t223 = t228 * qJD(6);
t217 = t226 * qJD(5);
t212 = t519 * t992 + t911 / 0.2e1 + t470 / 0.2e1 - t691;
t210 = t660 + t790;
t202 = t388 - t945 / 0.2e1 + t456;
t184 = t700 + t764;
t181 = t462 * t801 + t818 + t903 / 0.2e1 + t642 * t807;
t171 = t941 / 0.2e1 + t686;
t169 = t170 * qJD(5);
t153 = t155 * qJD(5);
t150 = t152 * qJD(4);
t148 = t452 + t813 + t690;
t133 = t804 + t651;
t131 = t803 + t652;
t129 = t514 + t669;
t127 = t514 + t668;
t119 = t452 + t812 + t676;
t116 = t662 - t709;
t107 = -t665 + t670;
t75 = t309 * t992 - t952 / 0.2e1 + t779 + t899;
t64 = (t792 + t841) * t645;
t60 = -t658 + t763;
t58 = t207 * t992 - t917 / 0.2e1 + t279 / 0.2e1 + t699;
t56 = t667 + t794;
t51 = pkin(5) * t1021 + t1004 * t309 + t1005 * t280 + t445 * t843 + t607 * t780;
t45 = t661 - t714;
t43 = t653 + t765;
t42 = -t654 + t793;
t37 = t230 * t1003 + t216 * t1001 + t957 / 0.2e1 + t215 * t1002 + t684 - t657;
t35 = pkin(3) * t696 + t476 * t840 + t631 * t842 - t659;
t31 = t708 + t722 + t979;
t28 = t105 * t801 + t810 * t84 + t656 - t711;
t25 = t104 * t992 + t433 + t819 + t979;
t23 = t1045 * t519 + t207 * t795 + t229 * t809 + t629 * t796 - t649 + t712;
t22 = t1001 * t122 + t229 * t800 - t648 + t666;
t15 = t104 * t989 - t974 / 0.2e1 + pkin(5) * t1044;
t11 = t960 / 0.2e1 + t961 / 0.2e1 + t719 * t594 - t899 * t462 + t713;
t10 = pkin(5) * t1027 + t1004 * t104 + t1005 * t84 + t156 * t843 + t607 * t844;
t7 = -t986 / 0.2e1 + t663;
t6 = t104 * t1019 - t84 * t310 / 0.2e1 + t445 * t844 + t156 * t780 + pkin(5) * t1026 + t1033;
t3 = t135 * t993 + t144 * t989 + t642 * t674 + t645 * t677 - t707 + t710;
t2 = t650 + t675;
t61 = [0, 0, 0, t775, t596 * qJD(2), t641 * t828, -t641 * t821, 0, -t522 * qJD(2), -t523 * qJD(2) (-t581 * qJD(3) + t646 * t828) * t583, qJD(2) * t417 + qJD(3) * t419, -t501 * qJD(2) + t581 * t827, t500 * qJD(2) + t583 * t827, -t775, -qJD(2) * t191 - qJD(3) * t300, qJD(2) * t192 + qJD(3) * t299, qJD(2) * t48 + qJD(3) * t47 + qJD(4) * t185, qJD(2) * t52 + qJD(3) * t49 + qJD(4) * t85 (qJD(2) * t472 - t462 * t869 - t866) * t408, qJD(2) * t161 - qJD(3) * t160 + qJD(5) * t186, qJD(2) * t196 + qJD(3) * t165 - t406 * t865, qJD(2) * t195 - qJD(3) * t164 - t408 * t865 (qJD(2) * t528 + qJD(3) * t1031) * t462, qJD(2) * t38 + qJD(3) * t32 - qJD(4) * t163 + qJD(5) * t54, qJD(2) * t39 + qJD(3) * t33 + qJD(4) * t166 + qJD(5) * t53, qJD(2) * t26 + qJD(3) * t19 - qJD(4) * t159 - qJD(5) * t17 + qJD(6) * t268, qJD(2) * t18 + qJD(3) * t13 + qJD(4) * t29 + qJD(5) * t16 + qJD(6) * t44; 0, 0, 0, t774, t849, t778 * t918, -t778 * t919, 0, -qJD(2) * t586 - t851, qJD(2) * t584 - t850, t725 * t835 + t451, t622 * t828 + t367 + t854, t643 * t821 - t852, t646 * t821 + t853, -t554, -t858 + (-t586 * t646 + t643 * t720) * qJD(2) + t296 * qJD(3), t857 + (t586 * t643 + t646 * t720) * qJD(2) + t294 * qJD(3), t939 + (-t1029 * t528 - t263 * t597 - t264 * t594 + t519 * t529) * qJD(2) + t37 * qJD(3) + t150, t934 + (t1029 * t264 - t263 * t519 + t526 * t631) * qJD(2) + t35 * qJD(3) + t60 * qJD(4), qJD(3) * t171 + t472 * t703 - t217, t859 + t119 * qJD(3) - t153 + (-t471 * t645 - t941) * t876, t855 + (t472 * t594 + t597 * t904) * qJD(2) + t131 * qJD(3) + t181 * qJD(5), t856 + (-t471 * t594 - t484 * t528) * qJD(2) + t127 * qJD(3) + t184 * qJD(5), t864 + t256 + (t877 + t882) * t528, t948 + (t157 * t594 + t246 * t484 - t339 * t528 + t471 * t519) * qJD(2) + t22 * qJD(3) + t129 * qJD(4) + t43 * qJD(5), t947 + (-t158 * t594 + t246 * t927 - t340 * t528 + t472 * t519) * qJD(2) + t23 * qJD(3) + t133 * qJD(4) + t42 * qJD(5), t955 + (-t280 * t472 - t310 * t471 + (-t960 - t961) * t597) * qJD(2) + t3 * qJD(3) + t148 * qJD(4) + t7 * qJD(5) - t223, t959 + (t135 * t280 + t144 * t310 + t197 * t445) * qJD(2) + t2 * qJD(3) + t11 * qJD(4) + t6 * qJD(5) + t28 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t702, t728, t762 * t581, t762 * t583, t612, qJD(2) * t296 - qJD(3) * t427 - t885, qJD(2) * t294 + qJD(3) * t426 + t886, t942 + t37 * qJD(2) + (-t1031 * t639 + t462 * t972) * t978, t938 + t35 * qJD(2) + (-t229 * t972 + t230 * t639) * t978 + t267 * qJD(4), qJD(2) * t171 + t248 - (t871 + t883) * t1036, -t860 + t119 * qJD(2) + (t446 - t447) * qJD(3) + t169, qJD(2) * t131 + t1031 * t871 + t1047 + t891, qJD(2) * t127 + t298 + t443 - t892, t679, t950 + t22 * qJD(2) + (-t229 * t645 + t642 * t754) * qJD(3) + t58 * qJD(5), t949 + t23 * qJD(2) + (t645 * t754 + t956) * qJD(3) + t56 * qJD(5), t958 + t3 * qJD(2) + (-t106 * t642 + t115 * t645 + t462 * t753) * qJD(3) + t15 * qJD(5) + t252, t962 + t2 * qJD(2) + (-t106 * t587 + t115 * t589 + t162 * t607) * qJD(3) + t45 * qJD(4) + t10 * qJD(5) + t31 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t736, qJD(2) * t60 + qJD(3) * t267 + t965, 0, 0, 0, 0, 0, qJD(2) * t129 + t298 - t893, qJD(2) * t133 + t1047 + t890, qJD(2) * t148 - t894, qJD(2) * t11 + qJD(3) * t45 + qJD(5) * t25 + qJD(6) * t202 + t969; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t681, t688, qJD(2) * t181 + qJD(3) * t1046 + t406 * t777, qJD(2) * t184 + qJD(3) * t304 + t408 * t777, t327, qJD(2) * t43 + qJD(3) * t58 + qJD(4) * t304 - qJD(5) * t123 + t966, qJD(2) * t42 + qJD(3) * t56 + qJD(4) * t1046 + qJD(5) * t122 + t967, pkin(5) * t866 + qJD(2) * t7 + qJD(3) * t15 - t970, qJD(2) * t6 + qJD(3) * t10 + qJD(4) * t25 - t105 * t977 + t971; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t687, qJD(2) * t28 + qJD(3) * t31 + qJD(4) * t202 + t968; 0, 0, 0, -t774, -t849, -t641 * t832, t879 * t919, 0, t851, t850, -t583 * t773 + t451, t367 - t854, -t646 * t827 + t852, t643 * t827 - t853, t554, qJD(3) * t295 + t858, qJD(3) * t293 - t857, -qJD(3) * t36 + t150 - t939, -qJD(3) * t34 - qJD(4) * t59 - t934, qJD(3) * t172 - t472 * t883 - t217, qJD(3) * t120 - t153 - t859, qJD(3) * t132 + qJD(5) * t182 - t855, qJD(3) * t128 + qJD(5) * t183 - t856, -t528 * t882 + t256 - t864, -qJD(3) * t20 + qJD(4) * t130 - qJD(5) * t40 - t948, -qJD(3) * t21 + qJD(4) * t134 - qJD(5) * t41 - t947, qJD(3) * t4 + qJD(4) * t149 + qJD(5) * t8 - t223 - t955, -qJD(3) * t1 + qJD(4) * t12 - qJD(5) * t5 - qJD(6) * t27 - t959; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t643 * t868, t622 * qJD(3), 0, 0, 0, -pkin(2) * t870, -pkin(2) * t868, -qJD(4) * t1030, qJD(3) * t243 + qJD(4) * t314, -t593 * t820 - t636 * t823, -qJD(5) * t492 + t594 * t766, qJD(3) * t425 - t594 * t825, -qJD(3) * t423 - t594 * t824, t823, qJD(3) * t139 - qJD(4) * t424 + qJD(5) * t236, qJD(3) * t140 - qJD(4) * t493 + qJD(5) * t235, -qJD(3) * t66 - qJD(5) * t69 + qJD(6) * t491, qJD(3) * t62 + qJD(4) * t121 + qJD(5) * t70 - qJD(6) * t147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t701, t727, -t762 * t646, t762 * t643, qJD(1) * t808, -pkin(9) * t868 - t716, pkin(9) * t870 - t717 (t594 * t972 - t597 * t639) * t978 - t746 (-t1029 * t972 - t519 * t639) * t978 + t448 * qJD(4) + t743, t889 - t473 + (-t826 - t830) * t594 (t579 - t580) * qJD(3) + t538 + t685, t597 * t871 - t738, t576 - t740, t678 (t642 * t752 - t936) * qJD(3) + t212 * qJD(5) + t749 (t645 * t752 + t937) * qJD(3) + t210 * qJD(5) + t748 (-t281 * t642 + t312 * t645 + t594 * t753) * qJD(3) + t64 * qJD(5) + t760 (-t281 * t587 + t312 * t589 + t444 * t607) * qJD(3) + t116 * qJD(4) + t51 * qJD(5) + t107 * qJD(6) + t761; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t735, qJD(3) * t448 + t742, 0, 0, 0, 0, 0, t739, t737, t861, qJD(3) * t116 + qJD(5) * t75 + qJD(6) * t420 + t750; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t671, -t673, t484 * t776 + t888, t597 * t741 + t887, t578 - t881, qJD(3) * t212 - qJD(5) * t340 - t744, qJD(3) * t210 + qJD(5) * t339 + t745, pkin(5) * t825 + qJD(3) * t64 - t758, qJD(3) * t51 + qJD(4) * t75 - t310 * t977 + t759; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t733, qJD(3) * t107 + qJD(4) * t420 + t747; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t702, -t728 (-qJD(1) * t581 + t873) * t918, -t725 * t918, t612, -qJD(2) * t295 + t885, -qJD(2) * t293 - t886, qJD(2) * t36 - t942, qJD(2) * t34 + qJD(4) * t266 - t938, -qJD(2) * t172 + t1036 * t883 + t248, -qJD(2) * t120 + t169 + t860, -qJD(2) * t132 + qJD(5) * t306 - t891, -qJD(2) * t128 - t297 + t892, -t679, qJD(2) * t20 + qJD(5) * t57 - t1031 * t867 - t950, qJD(2) * t21 + qJD(4) * t302 + qJD(5) * t55 - t949, -qJD(2) * t4 - qJD(4) * t311 - qJD(5) * t14 + t252 - t958, qJD(2) * t1 + qJD(4) * t46 - qJD(5) * t9 - qJD(6) * t30 - t962; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t701, -t727, t773, -t643 * t832, qJD(1) * t807, t716, t717, t746, qJD(4) * t449 - t743, t594 * t830 - t473 - t889, t538 - t685, qJD(5) * t486 + t738, -t474 + t740, -t678, qJD(5) * t211 - t597 * t867 - t749, qJD(4) * t484 + qJD(5) * t209 - t748, -qJD(4) * t490 - qJD(5) * t63 - t760, qJD(4) * t117 - qJD(5) * t50 + qJD(6) * t108 - t761; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t820, t621 * qJD(5), 0, 0, 0, t630 * t863, t630 * t862, qJD(6) * t620, qJD(5) * t325 + qJD(6) * t478; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t732, 0, 0, 0, 0, 0, -t366, t731, -t729, -t751; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t680, -t672, -t730 + t862, t231, -t726, -t629 * t862 - t682, t629 * t863 - t683, -pkin(5) * t862 - t757, -t589 * t977 + t692; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t724, t689; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t736, qJD(2) * t59 - qJD(3) * t266 - t965, 0, 0, 0, 0, 0, -qJD(2) * t130 - t297 + t443 + t893, -qJD(2) * t134 - qJD(3) * t302 + qJD(5) * t307 - t890, -qJD(2) * t149 + qJD(3) * t311 + t894, -qJD(2) * t12 - qJD(3) * t46 - qJD(5) * t24 - qJD(6) * t201 - t969; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t735, -qJD(3) * t449 - t742, 0, 0, 0, 0, 0, -t474 + t576 - t739, -qJD(3) * t484 - t594 * t862 - t737, qJD(3) * t490 - t861, -qJD(3) * t117 - qJD(5) * t74 + qJD(6) * t421 - t750; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t732, 0, 0, 0, 0, 0, t366, -t731, t729, t751; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t231, t741 + t884, 0, -t756 - t845; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t734; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t681, -t688, -qJD(2) * t182 - qJD(3) * t306 + t406 * t882, -qJD(2) * t183 + qJD(3) * t303 + t408 * t882, t327, qJD(2) * t40 - qJD(3) * t57 + qJD(4) * t303 - t966, qJD(2) * t41 - qJD(3) * t55 - qJD(4) * t307 - t967, -qJD(2) * t8 + qJD(3) * t14 + t970, qJD(2) * t5 + qJD(3) * t9 + qJD(4) * t24 - t408 * t976 - t971; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t671, t673, -qJD(3) * t486 + t642 * t831 - t888, qJD(3) * t481 + t594 * t829 - t887, t578 + t881, -qJD(3) * t211 + qJD(4) * t481 + t744, -qJD(3) * t209 + t594 * t867 - t745, qJD(3) * t63 + t758, qJD(3) * t50 + qJD(4) * t74 - qJD(6) * t846 - t759; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t680, t672, t730, t234, t726, t682, t683, t757, -t642 * t976 - t692; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t234, t594 * t874 - t884, 0, t756; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t321; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t687, qJD(2) * t27 + qJD(3) * t30 + qJD(4) * t201 + t408 * t977 - t968; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t733, pkin(5) * t824 - qJD(3) * t108 - qJD(4) * t421 - t747; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t724, -t689 + t845; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t734; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t321; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t61;
