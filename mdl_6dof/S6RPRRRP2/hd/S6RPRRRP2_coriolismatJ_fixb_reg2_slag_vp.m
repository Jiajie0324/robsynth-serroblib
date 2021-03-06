% Calculate inertial parameters regressor of coriolis matrix for
% S6RPRRRP2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 06:01
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPRRRP2_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP2_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP2_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP2_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 06:01:23
% EndTime: 2019-03-09 06:01:55
% DurationCPUTime: 24.70s
% Computational Cost: add. (19846->820), mult. (40509->1041), div. (0->0), fcn. (41082->8), ass. (0->602)
t657 = cos(qJ(3));
t962 = -t657 / 0.2e1;
t656 = cos(qJ(4));
t991 = -pkin(9) - pkin(8);
t611 = t991 * t656;
t960 = cos(qJ(5));
t596 = t960 * t611;
t653 = sin(qJ(5));
t654 = sin(qJ(4));
t875 = t653 * t654;
t742 = t991 * t875;
t493 = -t596 + t742;
t789 = t960 * t656;
t587 = -t789 + t875;
t889 = t587 * qJ(6);
t376 = t493 - t889;
t633 = sin(pkin(10)) * pkin(1) + pkin(7);
t655 = sin(qJ(3));
t609 = t655 * t633;
t872 = t654 * t655;
t564 = pkin(4) * t872 + t609;
t790 = t960 * t654;
t874 = t653 * t656;
t591 = t790 + t874;
t553 = t591 * t655;
t957 = t553 * pkin(5);
t419 = t564 + t957;
t645 = -pkin(4) * t656 - pkin(3);
t953 = t587 * pkin(5);
t538 = t645 + t953;
t971 = t591 / 0.2e1;
t556 = -t653 * t872 + t655 * t789;
t976 = t556 / 0.2e1;
t861 = t419 * t971 + t538 * t976;
t1026 = t376 * t962 - t861;
t988 = -t376 / 0.2e1;
t1007 = -t653 * t611 - t991 * t790;
t1017 = -t1007 / 0.2e1;
t977 = -t556 / 0.2e1;
t1032 = t376 * t977;
t634 = -cos(pkin(10)) * pkin(1) - pkin(2);
t945 = t657 * pkin(3);
t693 = t634 - t945;
t946 = t655 * pkin(8);
t672 = t693 - t946;
t610 = t657 * t633;
t793 = t656 * t610;
t467 = t654 * t672 + t793;
t412 = -pkin(9) * t872 + t467;
t371 = t960 * t412;
t667 = (t655 * t991 + t693) * t656;
t885 = t633 * t654;
t661 = (-pkin(4) - t885) * t657 + t667;
t659 = t653 * t661;
t237 = t371 + t659;
t899 = t553 * qJ(6);
t195 = t237 - t899;
t795 = t654 * t610;
t411 = t667 - t795;
t879 = t653 * t411;
t240 = -t371 - t879;
t205 = t240 + t899;
t1031 = t195 + t205;
t1013 = t591 * qJ(6) + t1007;
t1024 = -t1013 / 0.2e1;
t1027 = t1024 + t1013 / 0.2e1;
t1030 = t1027 * t195;
t1018 = -t645 / 0.2e1;
t972 = -t591 / 0.2e1;
t1029 = t1018 * t556 + t493 * t962 + t564 * t972;
t346 = t960 * t661;
t878 = t653 * t412;
t236 = -t346 + t878;
t791 = t960 * t411;
t241 = t791 - t878;
t1022 = t236 + t241;
t804 = qJD(4) + qJD(5);
t943 = t657 * pkin(8);
t949 = t655 * pkin(3);
t612 = -t943 + t949;
t597 = t656 * t612;
t599 = t654 * t609;
t494 = t599 + t597;
t948 = t655 * pkin(4);
t421 = -pkin(9) * t656 * t657 + t494 + t948;
t381 = t960 * t421;
t594 = t654 * t612;
t869 = t655 * t656;
t794 = t633 * t869;
t495 = t594 - t794;
t871 = t654 * t657;
t459 = -pkin(9) * t871 + t495;
t877 = t653 * t459;
t858 = t381 / 0.2e1 - t877 / 0.2e1;
t109 = t858 + t1029;
t112 = t858 - t1029;
t974 = -t587 / 0.2e1;
t1025 = t1017 * t657 + t1018 * t553 + t564 * t974;
t982 = -t493 / 0.2e1;
t1021 = t237 + t240;
t380 = t653 * t421;
t440 = t960 * t459;
t758 = -t380 / 0.2e1 - t440 / 0.2e1;
t111 = t758 + t1025;
t110 = t758 - t1025;
t980 = t553 / 0.2e1;
t1020 = -t1013 * t980 + t195 * t972 + t1032;
t614 = t653 * t871;
t428 = t614 / 0.2e1 + (t974 - t789 / 0.2e1) * t657;
t815 = t428 * qJD(2);
t1019 = t1013 * t804 - t815;
t979 = -t553 / 0.2e1;
t981 = t1007 / 0.2e1;
t961 = t657 / 0.2e1;
t1016 = t1013 * t961;
t1008 = t804 * t591;
t1014 = t587 * t1008;
t1012 = t804 * t1007;
t1011 = 0.2e1 * t654;
t1010 = t237 / 0.2e1;
t1009 = t553 * t804;
t545 = t556 * qJ(6);
t194 = t236 + t545;
t944 = t657 * pkin(5);
t183 = -t944 - t194;
t866 = t183 + t194;
t684 = -t874 / 0.2e1 - t790 / 0.2e1;
t425 = (t971 + t684) * t657;
t818 = t425 * qJD(2);
t838 = qJD(3) * t645;
t1006 = qJD(1) * t109 - t591 * t838 + t818;
t950 = t654 * pkin(4);
t417 = t587 * t950 + t591 * t645;
t801 = t960 / 0.2e1;
t873 = t654 * t553;
t963 = -t656 / 0.2e1;
t78 = (-t873 / 0.2e1 + (t587 * t963 + t801) * t655) * pkin(4) + t109;
t1005 = qJD(1) * t78 - qJD(3) * t417 + t818;
t894 = t556 * t587;
t453 = -t894 / 0.2e1;
t888 = t591 * t553;
t772 = -t888 / 0.2e1;
t282 = t772 + t453;
t452 = t888 / 0.2e1;
t774 = t894 / 0.2e1;
t281 = t774 + t452;
t1004 = qJD(1) * t110 + t587 * t838 + t815;
t418 = -t587 * t645 + t591 * t950;
t965 = -t654 / 0.2e1;
t967 = -t653 / 0.2e1;
t77 = (t556 * t965 + (t591 * t963 + t967) * t655) * pkin(4) + t110;
t1003 = qJD(1) * t77 - qJD(3) * t418 + t815;
t253 = t381 - t877;
t254 = t440 + t380;
t632 = pkin(4) * t871;
t565 = t610 + t632;
t964 = t655 / 0.2e1;
t558 = t657 * t789 - t614;
t975 = t558 / 0.2e1;
t555 = t591 * t657;
t978 = t555 / 0.2e1;
t31 = t236 * t978 + t237 * t975 + t253 * t979 + t254 * t976 + t564 * t964 + t565 * t962;
t643 = t657 * t655;
t246 = t553 * t555 + t556 * t558 - t643;
t824 = t246 * qJD(2);
t1002 = t31 * qJD(1) + t824;
t893 = t558 * qJ(6);
t947 = t655 * pkin(5);
t214 = t253 - t893 + t947;
t897 = t555 * qJ(6);
t222 = t254 - t897;
t956 = t555 * pkin(5);
t420 = t565 + t956;
t990 = -t183 / 0.2e1;
t17 = t195 * t975 + t214 * t979 + t222 * t976 + t419 * t964 + t420 * t962 + t555 * t990;
t1001 = t17 * qJD(1) + t824;
t63 = t236 * t655 + t253 * t657 - t565 * t553 - t564 * t555;
t1000 = t63 * qJD(1);
t45 = -t183 * t655 + t214 * t657 - t419 * t555 - t420 * t553;
t999 = t45 * qJD(1);
t792 = -t893 / 0.2e1 + t858;
t996 = t419 * t974 + t538 * t979;
t548 = t553 ^ 2;
t994 = t556 ^ 2;
t993 = t591 ^ 2;
t992 = -pkin(5) / 0.2e1;
t989 = t214 / 0.2e1;
t360 = -t371 / 0.2e1;
t983 = t376 / 0.2e1;
t973 = t587 / 0.2e1;
t970 = t596 / 0.2e1;
t969 = t632 / 0.2e1;
t800 = t960 * pkin(4);
t644 = t800 + pkin(5);
t968 = -t644 / 0.2e1;
t966 = t653 / 0.2e1;
t959 = t205 * pkin(5);
t958 = t376 * pkin(5);
t955 = t556 * pkin(5);
t954 = t558 * pkin(5);
t952 = t591 * pkin(5);
t951 = t653 * pkin(4);
t942 = pkin(4) * qJD(4);
t766 = t194 / 0.2e1 + t183 / 0.2e1;
t20 = (-t944 / 0.2e1 - t766) * t556;
t940 = qJD(1) * t20;
t22 = t866 * t553;
t939 = qJD(1) * t22;
t60 = -t183 * t556 - t195 * t553;
t938 = qJD(1) * t60;
t309 = t419 * t556;
t803 = pkin(4) * t869;
t479 = t803 + t955;
t81 = t205 * t657 - t479 * t553 - t309;
t937 = qJD(1) * t81;
t206 = -t545 + t241;
t917 = t419 * t553;
t82 = t206 * t657 + t479 * t556 - t917;
t936 = qJD(1) * t82;
t85 = pkin(5) * t994 - t194 * t657 - t917;
t935 = qJD(1) * t85;
t86 = -t195 * t657 - t553 * t955 - t309;
t934 = qJD(1) * t86;
t764 = t206 / 0.2e1 + t990;
t765 = t195 / 0.2e1 + t205 / 0.2e1;
t21 = t479 * t962 - t553 * t765 + t556 * t764;
t930 = t21 * qJD(1);
t23 = -t1031 * t556 + (t183 - t206) * t553;
t929 = t23 * qJD(1);
t27 = -t183 * t558 - t195 * t555 - t214 * t556 - t222 * t553;
t926 = t27 * qJD(1);
t767 = -t869 / 0.2e1;
t746 = pkin(4) * t767;
t762 = t241 / 0.2e1 + t236 / 0.2e1;
t763 = t1010 + t240 / 0.2e1;
t32 = -t553 * t763 + t556 * t762 + t657 * t746;
t924 = t32 * qJD(1);
t35 = -t1021 * t556 - t1022 * t553;
t923 = t35 * qJD(1);
t922 = t1013 * t556;
t921 = t376 * t553;
t39 = t236 * t558 - t237 * t555 - t253 * t556 - t254 * t553;
t918 = t39 * qJD(1);
t466 = -t656 * t672 + t795;
t913 = t466 * t657;
t912 = t467 * t657;
t48 = -t195 * t655 + t222 * t657 + t419 * t558 + t420 * t556;
t911 = t48 * qJD(1);
t903 = t494 * t655;
t902 = t495 * t655;
t447 = t538 * t591;
t898 = t553 * t587;
t896 = t555 * t591;
t892 = t564 * t553;
t887 = t591 * t556;
t64 = -t237 * t655 + t254 * t657 + t565 * t556 + t564 * t558;
t884 = t64 * qJD(1);
t883 = t644 * t556;
t649 = t654 ^ 2;
t880 = t649 * t657;
t650 = t655 ^ 2;
t868 = t656 * t650;
t546 = t950 + t952;
t867 = t657 * t546;
t219 = -t887 + t898;
t865 = t804 * t219;
t864 = t804 * t281;
t863 = t804 * t282;
t862 = t922 / 0.2e1 - t921 / 0.2e1;
t575 = t591 * qJD(6);
t856 = t818 - t575;
t855 = t587 * qJD(6) + t815;
t250 = t804 * t428;
t735 = t657 * t801;
t427 = t587 * t962 + t656 * t735 - t614 / 0.2e1;
t854 = t804 * t427;
t543 = t556 * qJD(5);
t853 = -t556 * qJD(4) - t543;
t573 = t587 * qJD(5);
t852 = -t587 * qJD(4) - t573;
t652 = t657 ^ 2;
t625 = t650 - t652;
t651 = t656 ^ 2;
t626 = t651 - t649;
t432 = t564 * t556;
t127 = t240 * t657 - t553 * t803 - t432;
t851 = qJD(1) * t127;
t128 = t241 * t657 + t556 * t803 - t892;
t850 = qJD(1) * t128;
t147 = -t236 * t657 - t892;
t849 = qJD(1) * t147;
t148 = -t237 * t657 - t432;
t848 = qJD(1) * t148;
t322 = -t650 * t885 - t913;
t846 = qJD(1) * t322;
t323 = -t633 * t868 - t912;
t845 = qJD(1) * t323;
t353 = -t556 * t655 + t558 * t657;
t844 = qJD(1) * t353;
t843 = qJD(1) * t553;
t842 = qJD(1) * t556;
t839 = qJD(3) * t591;
t837 = qJD(3) * t654;
t836 = qJD(3) * t656;
t835 = qJD(4) * t654;
t834 = qJD(4) * t656;
t833 = qJD(4) * t657;
t832 = qJD(5) * t195;
t831 = qJD(5) * t376;
t830 = qJD(5) * t591;
t694 = -t346 / 0.2e1 + pkin(4) * t735;
t104 = t791 / 0.2e1 + t694;
t829 = t104 * qJD(1);
t135 = (t903 - t913) * t656 + (t902 + t912) * t654;
t828 = t135 * qJD(1);
t248 = t466 * t655 + (t494 - 0.2e1 * t599) * t657;
t823 = t248 * qJD(1);
t249 = t495 * t657 + (-t467 + 0.2e1 * t793) * t655;
t822 = t249 * qJD(1);
t262 = -t558 * t553 - t556 * t555;
t821 = t262 * qJD(1);
t352 = t655 * t553 - t555 * t657;
t820 = t352 * qJD(1);
t768 = t653 * t961;
t771 = t591 * t962;
t424 = t654 * t735 + t656 * t768 + t771;
t819 = t424 * qJD(1);
t426 = (t972 + t684) * t657;
t391 = t426 * qJD(1);
t392 = t427 * qJD(1);
t817 = t427 * qJD(3);
t816 = t428 * qJD(1);
t393 = t428 * qJD(3);
t814 = t553 * qJD(6);
t542 = t556 * qJD(6);
t577 = (t649 / 0.2e1 - t651 / 0.2e1) * t655;
t813 = t577 * qJD(4);
t590 = t625 * t654;
t812 = t590 * qJD(1);
t593 = t652 * t656 - t868;
t811 = t593 * qJD(1);
t810 = t625 * qJD(1);
t809 = t655 * qJD(1);
t808 = t655 * qJD(3);
t807 = t655 * qJD(4);
t806 = t657 * qJD(1);
t805 = t657 * qJD(3);
t802 = -t960 / 0.2e1;
t799 = pkin(5) * t543;
t798 = qJD(5) * t951;
t797 = t950 / 0.2e1;
t796 = t968 + t992;
t788 = t553 * t842;
t787 = t656 * t809;
t786 = t587 * t839;
t785 = t654 * t836;
t784 = t587 * t808;
t783 = t654 * t833;
t782 = t656 * t833;
t781 = t634 * t809;
t780 = t634 * t806;
t779 = t654 * t834;
t778 = t655 * t805;
t777 = t656 * t808;
t776 = t655 * t806;
t775 = t921 / 0.2e1;
t773 = t558 * t966;
t770 = t555 * t967;
t769 = t587 * t967;
t759 = t983 + t988;
t757 = t1017 + t981;
t756 = t493 / 0.2e1 + t982;
t755 = t960 * qJD(4);
t754 = t960 * qJD(5);
t753 = (t649 + t651) * t657;
t520 = t556 * t806;
t752 = t424 * qJD(3) - t520;
t287 = qJD(3) * t426 - t520;
t750 = t804 * t556;
t748 = t804 * t657;
t747 = t948 * t967;
t745 = t803 / 0.2e1;
t744 = -qJD(4) + t806;
t743 = pkin(4) * t754;
t741 = t800 / 0.2e1;
t740 = t183 * t973 + t1020;
t737 = t654 * t777;
t736 = t650 * t779;
t733 = t806 - qJD(4) / 0.2e1;
t732 = -t945 - t946;
t521 = t553 * t951;
t731 = -t521 / 0.2e1 - t883 / 0.2e1;
t689 = pkin(4) * t770 + t558 * t968;
t7 = t1027 * t553 + t556 * t759 + t587 * t764 + t591 * t765 + t689;
t730 = t7 * qJD(1);
t24 = t183 * t214 + t195 * t222 + t419 * t420;
t728 = t24 * qJD(1) + t17 * qJD(2);
t25 = pkin(5) * t309 - t195 * t866;
t727 = qJD(1) * t25 + qJD(2) * t20;
t26 = t183 * t205 + t195 * t206 + t419 * t479;
t726 = t26 * qJD(1) + t21 * qJD(2);
t42 = -t236 * t253 + t237 * t254 + t564 * t565;
t725 = t42 * qJD(1) + t31 * qJD(2);
t41 = -t236 * t240 + t237 * t241 + t564 * t803;
t724 = t41 * qJD(1) + t32 * qJD(2);
t662 = t194 * t973 - t1020 + t740;
t10 = t954 / 0.2e1 + t662;
t723 = qJD(1) * t10;
t722 = -t494 * t654 + t495 * t656;
t673 = (t558 * t802 + t770) * pkin(4);
t13 = t553 * t757 + t556 * t756 + t587 * t762 + t591 * t763 + t673;
t721 = t13 * qJD(1);
t278 = t546 * t587 + t447;
t668 = t479 * t973 + t546 * t980 - t1026;
t47 = t796 * t655 + t668 - t792;
t720 = -qJD(1) * t47 - qJD(3) * t278;
t446 = t538 * t587;
t279 = t546 * t591 - t446;
t699 = t897 / 0.2e1 + t758;
t665 = t699 - t996;
t671 = t479 * t971 + t546 * t976 - t1016;
t49 = t747 + t665 - t671;
t719 = qJD(1) * t49 - qJD(3) * t279;
t288 = -t587 * t952 - t447;
t53 = (t655 + t282) * pkin(5) + t792 + t1026;
t718 = qJD(1) * t53 + qJD(3) * t288;
t289 = -pkin(5) * t993 + t446;
t697 = -pkin(5) * t887 + t1016;
t55 = t665 + t697;
t717 = qJD(1) * t55 + qJD(3) * t289;
t714 = t744 * t655;
t113 = (t902 / 0.2e1 + t912 / 0.2e1) * t656 + (-t903 / 0.2e1 + t913 / 0.2e1) * t654 + (t650 / 0.2e1 - t652 / 0.2e1) * t633;
t149 = t633 ^ 2 * t643 - t466 * t494 + t467 * t495;
t713 = t149 * qJD(1) + t113 * qJD(2);
t499 = t655 * t753 - t643;
t712 = -t113 * qJD(1) - t499 * qJD(2);
t658 = -t659 / 0.2e1 + t360 + pkin(4) * t768;
t102 = t879 / 0.2e1 + t371 / 0.2e1 + t658;
t481 = t970 - t596 / 0.2e1;
t711 = t102 * qJD(1) + t481 * qJD(3);
t305 = t548 - t994;
t116 = qJD(1) * t305 + qJD(3) * t219;
t586 = t587 ^ 2;
t377 = t586 - t993;
t131 = qJD(1) * t219 + qJD(3) * t377;
t533 = -t955 / 0.2e1;
t252 = t746 + t533 + t731;
t303 = t796 * t591 + (t769 + t965) * pkin(4);
t710 = qJD(1) * t252 + qJD(3) * t303;
t706 = t741 + t968;
t692 = t992 - t706;
t267 = t692 * t553;
t314 = t692 * t587;
t709 = qJD(1) * t267 + qJD(3) * t314;
t284 = t887 + t898;
t401 = t548 + t994;
t708 = qJD(1) * t401 + qJD(3) * t284;
t478 = t586 + t993;
t707 = qJD(1) * t284 + qJD(3) * t478;
t435 = -qJD(3) * t587 - t843;
t436 = t839 + t842;
t705 = t943 / 0.2e1 - t949 / 0.2e1;
t704 = t610 / 0.2e1 + t969 + t956 / 0.2e1;
t687 = t705 * t654;
t476 = t594 / 0.2e1 - t687;
t703 = pkin(3) * t836 - qJD(1) * t476;
t686 = t705 * t656;
t477 = -t597 / 0.2e1 + t686;
t702 = pkin(3) * t837 - qJD(1) * t477;
t701 = t183 * t972 + t195 * t974;
t698 = t656 * t714;
t197 = -qJD(3) * t281 - t788;
t223 = qJD(1) * t281 + t786;
t198 = qJD(3) * t282 - t788;
t226 = -qJD(1) * t282 + t786;
t498 = -qJD(1) * t577 + t785;
t691 = t644 * t989 + t222 * t951 / 0.2e1;
t690 = pkin(4) * t773 + t555 * t968;
t688 = t706 * t556;
t685 = t253 * t801 + t254 * t966;
t482 = qJD(1) * t654 * t868 + qJD(3) * t577;
t589 = t626 * t650;
t683 = qJD(1) * t589 + 0.2e1 * t737;
t682 = -qJD(3) * t626 + t1011 * t787;
t660 = t183 * t988 + t206 * t983 + t419 * t546 / 0.2e1 + t479 * t538 / 0.2e1 + t1031 * t1024;
t3 = -t660 + t691;
t51 = t867 / 0.2e1 - t1027 * t556 + t759 * t553 + t690;
t87 = t538 * t546;
t681 = -t3 * qJD(1) - t51 * qJD(2) + t87 * qJD(3);
t5 = t766 * t376 + t1030 + (t989 - t861) * pkin(5);
t677 = t1013 * t977 + t775 + t862;
t58 = (t771 + t978) * pkin(5) + t677;
t90 = pkin(5) * t447;
t680 = -qJD(1) * t5 + qJD(2) * t58 + qJD(3) * t90;
t666 = t1007 * t1010 + t1022 * t982 + t240 * t981;
t11 = (t564 * t965 + t645 * t767 + t685) * pkin(4) + t666;
t169 = t645 * t950;
t674 = (t555 * t802 + t773) * pkin(4);
t67 = t553 * t756 - t556 * t757 + t674 + t969;
t679 = -t11 * qJD(1) - t67 * qJD(2) + t169 * qJD(3);
t186 = t1013 * t591 - t376 * t587;
t272 = t964 + t774 + t772;
t37 = t775 - t922 / 0.2e1 - t701 + t704;
t678 = -qJD(1) * t37 - qJD(2) * t272 + qJD(3) * t186;
t675 = t699 + t996;
t383 = 0.2e1 * t970 - t742;
t664 = (t195 * t801 - t653 * t766) * pkin(4) + t195 * t968;
t19 = -t959 / 0.2e1 + t664;
t534 = t955 / 0.2e1;
t269 = t534 + t688;
t559 = (t800 - t644) * t951;
t663 = (-t1027 * t653 + t376 * t801) * pkin(4) + t376 * t968;
t70 = t958 / 0.2e1 + t663;
t669 = -qJD(1) * t19 - qJD(2) * t269 - qJD(3) * t70 - qJD(4) * t559;
t105 = t878 - t791 / 0.2e1 + t694;
t103 = -t879 / 0.2e1 + t360 + t658;
t641 = t651 * t657;
t639 = -t809 / 0.2e1;
t638 = t809 / 0.2e1;
t637 = t808 / 0.2e1;
t629 = t654 * t808;
t585 = t733 * t655;
t566 = t591 * t951;
t563 = t591 * t808;
t547 = (-qJD(5) / 0.2e1 + t733) * t655;
t522 = t556 * t951;
t475 = t481 * qJD(4);
t474 = t481 * qJD(5);
t465 = t558 * t587;
t429 = t657 * t684 + t771;
t413 = t436 * pkin(5);
t366 = t599 + t597 / 0.2e1 + t686;
t365 = t794 - t594 / 0.2e1 - t687;
t313 = t953 / 0.2e1 - t706 * t587;
t312 = t383 + t889;
t302 = pkin(4) * t769 + t591 * t968 + t797 + t952 / 0.2e1;
t286 = -t553 * t806 + t817;
t280 = t284 * qJD(6);
t273 = t453 + t452 + t964;
t271 = -t1008 - t391;
t270 = -t392 + t852;
t268 = t533 + t688;
t266 = t957 / 0.2e1 - t706 * t553;
t251 = t745 + t534 + t731;
t247 = -t817 + t1009;
t239 = t804 * t377;
t238 = qJD(3) * t425;
t231 = -t353 * qJD(3) + t553 * t748;
t230 = -t352 * qJD(3) + t556 * t748;
t227 = t563 - t854;
t208 = -t752 + t853;
t207 = -t393 + (-qJD(5) + t744) * t553;
t171 = (qJD(3) * t558 - t1009) * t556;
t170 = (qJD(3) * t555 + t750) * t553;
t157 = t844 - t854;
t156 = -t426 * t804 + t820;
t150 = qJD(3) * t429 + t853;
t134 = t563 - t844 - t250;
t133 = -t424 * t804 - t784 - t820;
t108 = t425 * t804;
t107 = -t558 * t842 + t863;
t106 = -t555 * t843 + t864;
t100 = t104 * qJD(4);
t99 = t102 * qJD(4);
t98 = t104 * qJD(5);
t97 = t102 * qJD(5);
t93 = t429 * t804 + t784;
t91 = t262 * qJD(3) + t305 * t804;
t89 = t545 + t105;
t88 = t103 + t899;
t84 = t436 * t558 + t863;
t83 = -t435 * t555 + t864;
t80 = t556 * t797 + t591 * t745 + t111 + t747;
t79 = pkin(4) * t873 / 0.2e1 + t587 * t745 + t655 * t741 + t112;
t74 = pkin(4) * t755 - t829;
t73 = t653 * t942 - t711;
t72 = t829 + (-t755 - t754) * pkin(4);
t71 = -t804 * t951 + t711;
t69 = -t958 / 0.2e1 + t663;
t68 = -t1007 * t976 - t632 / 0.2e1 + t674 + t556 * t981;
t66 = t246 * qJD(3);
t65 = qJD(3) * t113;
t59 = -t821 + t865;
t57 = pkin(5) * t771 - t956 / 0.2e1 + t677;
t56 = t675 - t697;
t54 = t281 * pkin(5) - t1026 + t792 + t947;
t52 = -t1013 * t976 - t376 * t979 - t867 / 0.2e1 + t690 + t862;
t50 = t747 + t671 + t675;
t46 = t644 * t964 + t947 / 0.2e1 + t668 + t792;
t44 = t821 + (-t465 - t896) * qJD(3) + t865;
t38 = t701 + t704 + t862;
t28 = (-t465 + t896) * qJD(3);
t18 = t959 / 0.2e1 + t664;
t14 = -t1007 * t979 + t553 * t1017 + t1021 * t972 + t1022 * t974 + t673;
t12 = pkin(4) * t685 + t564 * t797 + t645 * t745 - t666;
t9 = -t954 / 0.2e1 + t662;
t8 = -t1013 * t979 + t205 * t972 + t206 * t974 - t1032 + t689 + t740;
t6 = t866 * t988 + t1030 + (t989 + t861) * pkin(5);
t4 = t660 + t691;
t2 = qJD(3) * t31 + qJD(4) * t32;
t1 = qJD(3) * t17 + qJD(4) * t21 + qJD(5) * t20;
t15 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t778, -t625 * qJD(3), 0, -t778, 0, 0, t634 * t808, t634 * t805, 0, 0, t651 * t778 - t736, -t589 * qJD(4) - 0.2e1 * t657 * t737, -t593 * qJD(3) + t655 * t783, t649 * t778 + t736, -t590 * qJD(3) + t655 * t782, -t778, -qJD(3) * t248 - qJD(4) * t323, qJD(3) * t249 + qJD(4) * t322, -qJD(3) * t135, qJD(3) * t149, t171, t91, t231, t170, t230, -t778, -qJD(3) * t63 - qJD(4) * t127 - qJD(5) * t148, qJD(3) * t64 + qJD(4) * t128 + qJD(5) * t147, qJD(3) * t39 + qJD(4) * t35, qJD(3) * t42 + qJD(4) * t41, t171, t91, t231, t170, t230, -t778, -t45 * qJD(3) - t81 * qJD(4) - t86 * qJD(5) + t542 * t657, t48 * qJD(3) + t82 * qJD(4) + t85 * qJD(5) - t657 * t814, qJD(3) * t27 + qJD(4) * t23 + qJD(5) * t22 + qJD(6) * t401, qJD(3) * t24 + qJD(4) * t26 + qJD(5) * t25 + qJD(6) * t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t65, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t776, -t810, t805, -t776, -t808, 0, -t633 * t805 + t781, t633 * t808 + t780, 0, 0, -t813 + (t651 * t809 + t785) * t657 (t641 - t880) * qJD(3) + (-qJD(4) - t806) * t869 * t1011, t629 - t811, t813 + (t649 * t809 - t785) * t657, t777 - t812, -t585, -t823 + (t654 * t732 - t793) * qJD(3) + t366 * qJD(4), t822 + (t656 * t732 + t795) * qJD(3) + t365 * qJD(4), qJD(3) * t722 - t828 (-pkin(3) * t610 + pkin(8) * t722) * qJD(3) + t713, t84, t44, t134, t83, t133, -t547 (-t1007 * t655 + t555 * t645 + t565 * t587) * qJD(3) + t79 * qJD(4) + t112 * qJD(5) - t1000, t884 + (-t493 * t655 + t558 * t645 + t565 * t591) * qJD(3) + t80 * qJD(4) + t111 * qJD(5), t918 + (t1007 * t558 - t253 * t591 - t254 * t587 - t493 * t555) * qJD(3) + t14 * qJD(4) (-t1007 * t253 + t254 * t493 + t565 * t645) * qJD(3) + t12 * qJD(4) + t725, t84, t44, t134, t83, t133, -t547 (-t1013 * t655 + t420 * t587 + t538 * t555) * qJD(3) + t46 * qJD(4) + t54 * qJD(5) - t426 * qJD(6) - t999, t911 + (-t376 * t655 + t420 * t591 + t538 * t558) * qJD(3) + t50 * qJD(4) + t56 * qJD(5) + t427 * qJD(6), t926 + (t1013 * t558 - t214 * t591 - t222 * t587 - t376 * t555) * qJD(3) + t8 * qJD(4) + t9 * qJD(5) + t280 (-t1013 * t214 + t222 * t376 + t420 * t538) * qJD(3) + t4 * qJD(4) + t6 * qJD(5) + t38 * qJD(6) + t728; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t482, -t683, t654 * t714, t482, t698, t637, qJD(3) * t366 - qJD(4) * t467 - t845, qJD(3) * t365 + qJD(4) * t466 + t846, 0, 0, t198, t116, t207, -t197, t208, t637, qJD(3) * t79 + qJD(4) * t240 + qJD(5) * t103 - t851, qJD(3) * t80 - qJD(4) * t241 + qJD(5) * t105 + t850, t923 + t14 * qJD(3) + (t553 * t800 - t522) * qJD(4), t12 * qJD(3) + (t240 * t960 + t241 * t653) * t942 + t724, t198, t116, t207, -t197, t208, t637, qJD(3) * t46 + qJD(4) * t205 + qJD(5) * t88 - t937, qJD(3) * t50 - qJD(4) * t206 + qJD(5) * t89 + t936, t929 + t8 * qJD(3) + (t644 * t553 - t522) * qJD(4) + t266 * qJD(5), t4 * qJD(3) + (t205 * t644 + t206 * t951) * qJD(4) + t18 * qJD(5) + t251 * qJD(6) + t726; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t198, t116, t207, -t197, t208, t637, qJD(3) * t112 + qJD(4) * t103 - qJD(5) * t237 - t848, qJD(3) * t111 + qJD(4) * t105 + qJD(5) * t236 + t849, 0, 0, t198, t116, t207, -t197, t208, t637, qJD(3) * t54 + qJD(4) * t88 - t832 - t934, qJD(3) * t56 + qJD(4) * t89 + qJD(5) * t194 + t935, qJD(3) * t9 + qJD(4) * t266 + qJD(5) * t957 + t939, -pkin(5) * t832 + qJD(3) * t6 + qJD(4) * t18 + t727; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t287, t286, t708, qJD(3) * t38 + qJD(4) * t251 + t938; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t65, 0, 0, 0, 0, 0, 0, 0, 0, 0, t2, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t499 * qJD(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t66, 0, 0, 0, 0, 0, 0, 0, 0, 0, t66; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t808, -t805, 0, 0, 0, 0, 0, 0, 0, 0, -t777 - t783, t629 - t782 (t641 + t880) * qJD(3) (pkin(8) * t753 - t949) * qJD(3) - t712, 0, 0, 0, 0, 0, 0, t93, t227, t28 (t1007 * t555 + t493 * t558 + t645 * t655) * qJD(3) + t68 * qJD(4) + t1002, 0, 0, 0, 0, 0, 0, t93, t227, t28 (t1013 * t555 + t376 * t558 + t538 * t655) * qJD(3) + t52 * qJD(4) + t57 * qJD(5) + t273 * qJD(6) + t1001; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t654 * t805 - t656 * t807, t654 * t807 - t656 * t805, 0, 0, 0, 0, 0, 0, 0, 0, t150, t247, 0, t924 + t68 * qJD(3) + (-t556 * t800 - t521) * qJD(4), 0, 0, 0, 0, 0, 0, t150, t247, 0, t930 + t52 * qJD(3) + (-t521 - t883) * qJD(4) + t268 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t150, t247, 0, 0, 0, 0, 0, 0, 0, 0, t150, t247, 0, qJD(3) * t57 + qJD(4) * t268 - t799 + t940; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t273; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t776, t810, 0, t776, 0, 0, -t781, -t780, 0, 0, -t651 * t776 - t813, t698 * t1011, -t782 + t811, -t649 * t776 + t813, t783 + t812, t585, qJD(4) * t477 + t823, qJD(4) * t476 - t822, t828, -t713, t107, t59, t157, t106, t156, t547, -qJD(4) * t78 - qJD(5) * t109 + t1000, -qJD(4) * t77 - qJD(5) * t110 - t884, -qJD(4) * t13 - t918, -qJD(4) * t11 - t725, t107, t59, t157, t106, t156, t547, qJD(4) * t47 - qJD(5) * t53 - qJD(6) * t424 + t999, -qJD(4) * t49 - qJD(5) * t55 + qJD(6) * t428 - t911, -qJD(4) * t7 + qJD(5) * t10 + t280 - t926, -qJD(4) * t3 - qJD(5) * t5 - qJD(6) * t37 - t728; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t712, 0, 0, 0, 0, 0, 0, -t108, -t250, 0, -qJD(4) * t67 - t1002, 0, 0, 0, 0, 0, 0, -t108, -t250, 0, -qJD(4) * t51 + qJD(5) * t58 - qJD(6) * t272 - t1001; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t779, t626 * qJD(4), 0, -t779, 0, 0, -pkin(3) * t835, -pkin(3) * t834, 0, 0, -t1014, t239, 0, t1014, 0, 0, qJD(4) * t417 + t645 * t830, qJD(4) * t418 - t573 * t645, 0, qJD(4) * t169, -t1014, t239, 0, t1014, 0, 0, qJD(4) * t278 - qJD(5) * t288, qJD(4) * t279 - qJD(5) * t289, qJD(6) * t478, qJD(4) * t87 + qJD(5) * t90 + qJD(6) * t186; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t498, -t682, -t744 * t656, -t498, t744 * t654, t639, -pkin(8) * t834 - t702, pkin(8) * t835 - t703, 0, 0, -t226, t131, t270, t223, t271, t639, -qJD(4) * t493 + qJD(5) * t383 - t1005, -t1003 + t1012 (t587 * t800 - t566) * qJD(4) - t721 (-t1007 * t653 - t493 * t960) * t942 + t679, -t226, t131, t270, t223, t271, t639, -qJD(4) * t376 + qJD(5) * t312 - t720 - t818, t1019 - t719 (t644 * t587 - t566) * qJD(4) + t313 * qJD(5) - t730 (-t1013 * t951 - t376 * t644) * qJD(4) + t69 * qJD(5) + t302 * qJD(6) + t681; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t226, t131, t270, t223, t271, t639, qJD(4) * t383 - qJD(5) * t493 - t1006, -t1004 + t1012, 0, 0, -t226, t131, t270, t223, t271, t639, qJD(4) * t312 - t718 - t818 - t831, t1019 - t717, pkin(5) * t573 + qJD(4) * t313 + t723, -pkin(5) * t831 + qJD(4) * t69 + t680; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t819, t816, t707, qJD(4) * t302 + t678; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t482, t683 (-t654 * t809 + t836) * t657, -t482 (-t787 - t837) * t657, t637, -qJD(3) * t477 + t845, -qJD(3) * t476 - t846, 0, 0, -t198, -t116, t286, t197, t287, t637, qJD(3) * t78 + t851 + t97, qJD(3) * t77 - t850 + t98, qJD(3) * t13 - t923, qJD(3) * t11 - t724, -t198, -t116, t286, t197, t287, t637, -qJD(3) * t47 - t542 + t937 + t97, qJD(3) * t49 + t814 - t936 + t98, qJD(3) * t7 + qJD(5) * t267 - t929, qJD(3) * t3 + qJD(5) * t19 + qJD(6) * t252 - t726; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t238, t393, 0, qJD(3) * t67 - t924, 0, 0, 0, 0, 0, 0, t238, t393, 0, qJD(3) * t51 + qJD(5) * t269 - t930; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t498, t682, t656 * t806, t498, -t654 * t806, t638, t702, t703, 0, 0, t226, -t131, t392, -t223, t391, t638, t474 + t1005, t1003, t721, -t679, t226, -t131, t392, -t223, t391, t638, t474 + t720 + t856, t719 + t855, qJD(5) * t314 + t730, qJD(5) * t70 + qJD(6) * t303 - t681; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t798, -t743, 0, 0, 0, 0, 0, 0, 0, 0, -t798, -t743, 0, t559 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71, t72, 0, 0, 0, 0, 0, 0, 0, 0, t71, t72, t709, -pkin(5) * t798 - t669; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t436, -t435, 0, t710; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t198, -t116, t286, t197, t287, t637, qJD(3) * t109 + t848 - t99, qJD(3) * t110 - t100 - t849, 0, 0, -t198, -t116, t286, t197, t287, t637, qJD(3) * t53 - t542 + t934 - t99, qJD(3) * t55 - t100 + t814 - t935, -qJD(3) * t10 - qJD(4) * t267 - t939, -pkin(5) * t542 + qJD(3) * t5 - qJD(4) * t19 - t727; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t238, t393, 0, 0, 0, 0, 0, 0, 0, 0, t238, t393, 0, -qJD(3) * t58 - qJD(4) * t269 - t940; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t226, -t131, t392, -t223, t391, t638, -t475 + t1006, t1004, 0, 0, t226, -t131, t392, -t223, t391, t638, -t475 + t718 + t856, t717 + t855, -qJD(4) * t314 - t723, -pkin(5) * t575 - qJD(4) * t70 - t680; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73, t74, 0, 0, 0, 0, 0, 0, 0, 0, t73, t74, -t709, t669; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t436, -t435, 0, -t413; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t750 + t752, t207, -t708, qJD(3) * t37 - qJD(4) * t252 + t799 - t938; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t272; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1008 + t819, -t816 + t852, -t707, pkin(5) * t830 - qJD(4) * t303 - t678; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t436, t435, 0, -t710; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t436, t435, 0, t413; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t15;
