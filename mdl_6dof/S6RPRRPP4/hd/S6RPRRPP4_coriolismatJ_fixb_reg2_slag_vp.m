% Calculate inertial parameters regressor of coriolis matrix for
% S6RPRRPP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,theta2,theta5]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 04:41
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPRRPP4_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP4_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPP4_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRPP4_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:41:01
% EndTime: 2019-03-09 04:41:24
% DurationCPUTime: 20.70s
% Computational Cost: add. (21163->804), mult. (42754->957), div. (0->0), fcn. (49551->8), ass. (0->580)
t551 = cos(qJ(4));
t857 = sin(pkin(10));
t660 = t857 * t551;
t547 = cos(pkin(10));
t549 = sin(qJ(4));
t788 = t547 * t549;
t520 = t660 + t788;
t546 = sin(pkin(9));
t876 = cos(qJ(3));
t697 = t876 * t546;
t548 = cos(pkin(9));
t550 = sin(qJ(3));
t783 = t550 * t548;
t522 = t697 + t783;
t293 = t522 * t520;
t518 = t546 * t550 - t548 * t876;
t716 = t518 * qJD(1);
t687 = t293 * t716;
t726 = t293 * qJD(4);
t980 = -t687 - t726;
t580 = -t660 / 0.2e1 - t788 / 0.2e1;
t888 = t520 / 0.2e1;
t561 = (t888 + t580) * t518;
t661 = t857 * t549;
t781 = t551 * t522;
t383 = -t522 * t661 + t547 * t781;
t321 = t383 * t716;
t373 = t383 * qJD(4);
t644 = t373 + t321;
t979 = qJD(3) * t561 + t644;
t787 = t547 * t551;
t516 = t661 - t787;
t712 = t522 * qJD(3);
t816 = t293 * t522;
t379 = t520 * t518;
t822 = t379 * t518;
t191 = t816 - t822;
t961 = qJD(1) * t191;
t978 = -t516 * t712 - t961;
t675 = t787 / 0.2e1;
t891 = t516 / 0.2e1;
t457 = t518 * t661;
t893 = -t457 / 0.2e1;
t258 = t893 + (t675 + t891) * t518;
t120 = -qJD(3) * t258 + t980;
t955 = t293 * qJD(1);
t283 = -qJD(3) * t516 - t955;
t796 = t520 * t293;
t678 = t796 / 0.2e1;
t811 = t383 * t516;
t679 = t811 / 0.2e1;
t939 = t679 + t678;
t954 = t939 * qJD(4);
t977 = t283 * t379 + t954;
t976 = t379 * t955 + t954;
t400 = t551 * t518;
t703 = t547 * t400;
t382 = t457 - t703;
t818 = t293 * t382;
t823 = t379 * t383;
t135 = t818 - t823;
t956 = t135 * qJD(1);
t810 = t383 * t520;
t817 = t293 * t516;
t134 = t810 - t817;
t957 = t134 * qJD(4);
t975 = t957 - t956;
t510 = t516 ^ 2;
t901 = t520 ^ 2;
t418 = t510 + t901;
t974 = qJD(5) * t418;
t371 = t901 - t510;
t973 = t371 * qJD(4);
t869 = t522 * pkin(3);
t871 = t518 * pkin(8);
t416 = t869 + t871;
t407 = t549 * t416;
t865 = pkin(7) + qJ(2);
t527 = t865 * t548;
t666 = t865 * t546;
t440 = t527 * t550 + t666 * t876;
t415 = t440 * t551;
t275 = -t415 + t407;
t395 = t549 * t518;
t221 = qJ(5) * t395 + t275;
t663 = t857 * t221;
t408 = t551 * t416;
t806 = t440 * t549;
t274 = t408 + t806;
t868 = t522 * pkin(4);
t201 = qJ(5) * t400 + t274 + t868;
t790 = t547 * t201;
t775 = t790 / 0.2e1 - t663 / 0.2e1;
t867 = t522 * pkin(5);
t562 = -t867 / 0.2e1 - t775;
t813 = t382 * t516;
t821 = t379 * t520;
t972 = t957 + t956 + qJD(3) * (t813 - t821);
t376 = t293 ^ 2;
t902 = t383 ^ 2;
t166 = t902 - t376;
t620 = qJD(1) * t166 + qJD(3) * t134;
t619 = qJD(1) * t134 + qJD(3) * t371;
t637 = t810 + t817;
t971 = qJD(1) * t637 + qJD(3) * t418;
t970 = qJD(3) * t135 + qJD(4) * t166;
t969 = 0.2e1 * t549;
t864 = -qJ(5) - pkin(8);
t528 = t864 * t551;
t443 = -t528 * t857 - t788 * t864;
t895 = t443 / 0.2e1;
t892 = -t516 / 0.2e1;
t889 = -t520 / 0.2e1;
t525 = t547 * t528;
t613 = t864 * t661;
t942 = -t525 + t613;
t968 = -t942 / 0.2e1;
t894 = -t443 / 0.2e1;
t669 = t894 + t895;
t563 = t293 * t669;
t715 = t520 * qJD(4);
t677 = t518 * t888;
t879 = t547 / 0.2e1;
t890 = t518 / 0.2e1;
t643 = t395 * t879 + t660 * t890 + t677;
t912 = t643 * qJD(1);
t216 = -t715 - t912;
t916 = t561 * qJD(1);
t967 = t715 + t916;
t639 = -t813 - t821;
t914 = t637 * qJD(5);
t966 = qJD(2) * t639 + t914;
t641 = -t818 - t823;
t933 = qJD(1) * t641;
t965 = -qJD(3) * t639 - t933;
t246 = t561 * qJD(4);
t640 = t816 + t822;
t934 = qJD(1) * t640;
t964 = t934 - t246;
t809 = t383 * t522;
t812 = t382 * t518;
t188 = -t809 + t812;
t962 = qJD(1) * t188;
t316 = -t796 / 0.2e1;
t773 = -t783 / 0.2e1 - t697 / 0.2e1;
t940 = t679 + t316 - t773;
t960 = qJD(2) * t940;
t245 = t643 * qJD(4);
t794 = t522 * t516;
t953 = -qJD(3) * t794 - t245 - t934;
t752 = qJD(3) * t520;
t693 = t516 * t752;
t952 = qJD(1) * t939 + t693;
t944 = t376 + t902;
t951 = qJD(1) * t944 + qJD(3) * t637;
t744 = qJD(5) * t518;
t950 = -qJD(2) * t188 + t293 * t744;
t949 = qJD(3) * t191 + t373 * t518;
t756 = qJD(1) * t383;
t694 = t293 * t756;
t948 = -qJD(3) * t939 - t694;
t947 = qJD(5) * t940 + (-t379 * t516 + t382 * t520) * qJD(2);
t946 = qJD(2) * t641 + qJD(5) * t944;
t659 = t781 * t969;
t537 = -t548 * pkin(2) - pkin(1);
t872 = t518 * pkin(3);
t625 = t537 + t872;
t875 = pkin(8) * t522;
t585 = t625 - t875;
t647 = t550 * t666;
t698 = t876 * t527;
t441 = t698 - t647;
t785 = t549 * t441;
t247 = -t551 * t585 + t785;
t207 = -qJ(5) * t781 - t247;
t193 = pkin(4) * t518 + t207;
t192 = t857 * t193;
t782 = t551 * t441;
t208 = t782 + (t522 * t864 + t625) * t549;
t789 = t547 * t208;
t102 = t789 + t192;
t945 = t102 / 0.2e1;
t799 = t516 * qJ(6);
t866 = t549 * pkin(4);
t870 = t520 * pkin(5);
t403 = t799 + t866 + t870;
t897 = t403 / 0.2e1;
t511 = t518 ^ 2;
t514 = t522 ^ 2;
t943 = -t514 - t511;
t709 = t514 - t511;
t815 = t382 * qJ(6);
t874 = t379 * pkin(5);
t938 = -t815 / 0.2e1 - t874 / 0.2e1;
t680 = -t811 / 0.2e1;
t557 = t678 + t680 - t773;
t937 = qJD(1) * t557;
t935 = qJD(1) * t639;
t932 = qJD(2) * t557;
t564 = t520 * t669;
t931 = qJD(2) * t564;
t927 = qJD(3) * t564;
t635 = t443 * t520 - t516 * t942;
t925 = qJD(3) * t635;
t435 = t293 / 0.2e1;
t648 = -t293 / 0.2e1 + t435;
t921 = qJD(3) * t648;
t918 = qJD(5) * t557;
t917 = qJD(5) * t635;
t915 = t564 * qJD(4);
t913 = t640 * qJD(2);
t911 = t643 * qJD(5);
t910 = t648 * qJD(2);
t909 = t794 * qJD(1);
t908 = t716 + qJD(4);
t197 = t857 * t201;
t217 = t547 * t221;
t776 = -t197 / 0.2e1 - t217 / 0.2e1;
t906 = t293 * t968 + t383 * t895;
t664 = t857 * t208;
t101 = t193 * t547 - t664;
t862 = t101 * t889 + t102 * t892;
t797 = t518 * qJ(6);
t83 = t102 + t797;
t84 = -pkin(5) * t518 - t101;
t863 = t83 * t892 + t84 * t888;
t665 = t857 * t207;
t115 = t665 + t789;
t905 = -qJD(2) * t561 - qJD(4) * t115;
t374 = t383 * qJD(5);
t904 = qJD(2) * t643 - t374;
t656 = qJD(3) * t643 + t321;
t903 = qJD(2) * t794 - qJD(5) * t561;
t900 = -t115 / 0.2e1;
t116 = t207 * t547 - t664;
t899 = t116 / 0.2e1;
t538 = -pkin(4) * t551 - pkin(3);
t393 = pkin(5) * t516 - qJ(6) * t520 + t538;
t898 = t393 / 0.2e1;
t896 = t942 / 0.2e1;
t887 = -t522 / 0.2e1;
t886 = t522 / 0.2e1;
t676 = -t525 / 0.2e1;
t696 = t857 * pkin(4);
t533 = t696 + qJ(6);
t885 = -t533 / 0.2e1;
t884 = t533 / 0.2e1;
t536 = -t547 * pkin(4) - pkin(5);
t883 = t536 / 0.2e1;
t882 = -t538 / 0.2e1;
t545 = t551 ^ 2;
t881 = -t545 / 0.2e1;
t880 = -t547 / 0.2e1;
t878 = -t549 / 0.2e1;
t877 = -t551 / 0.2e1;
t873 = t383 * pkin(5);
t861 = pkin(4) * qJD(4);
t397 = t549 * t522;
t349 = pkin(4) * t397 + t440;
t157 = pkin(5) * t293 - qJ(6) * t383 + t349;
t480 = pkin(4) * t395;
t350 = -t480 + t441;
t158 = t350 - t815 - t874;
t113 = t217 + t197;
t93 = t522 * qJ(6) + t113;
t112 = -t663 + t790;
t94 = -t112 - t867;
t9 = t157 * t158 + t83 * t93 + t84 * t94;
t858 = t9 * qJD(1);
t682 = t379 * t895;
t602 = t393 * t886 - t682;
t610 = t888 * t93 + t891 * t94;
t814 = t382 * t942;
t31 = -t814 / 0.2e1 - t602 + t610;
t856 = qJD(1) * t31;
t263 = t814 / 0.2e1;
t588 = t538 * t886 + t263 - t682;
t605 = t112 * t891 + t113 * t889;
t36 = t588 + t605;
t855 = qJD(1) * t36;
t39 = -t293 * t83 + t383 * t84;
t854 = qJD(1) * t39;
t708 = pkin(4) * t781;
t819 = t293 * qJ(6);
t198 = t708 + t819 + t873;
t834 = t157 * t383;
t839 = t115 * t518;
t40 = t198 * t293 + t834 - t839;
t853 = qJD(1) * t40;
t837 = t116 * t518;
t41 = t157 * t293 - t198 * t383 + t837;
t852 = qJD(1) * t41;
t42 = -t101 * t383 - t102 * t293;
t851 = qJD(1) * t42;
t51 = t518 * t83 - t834;
t850 = qJD(1) * t51;
t52 = t293 * t708 + t349 * t383 - t839;
t849 = qJD(1) * t52;
t53 = -t293 * t349 + t383 * t708 - t837;
t848 = qJD(1) * t53;
t248 = t549 * t585 + t782;
t807 = t440 * t522;
t78 = t807 + (-t247 * t549 - t248 * t551) * t518;
t845 = qJD(1) * t78;
t10 = t115 * t84 + t116 * t83 + t157 * t198;
t844 = t10 * qJD(1);
t11 = -t293 * t93 + t379 * t83 + t382 * t84 + t383 * t94;
t841 = t11 * qJD(1);
t840 = t115 * t443;
t838 = t116 * t942;
t12 = (t115 - t83) * t383 + (-t116 - t84) * t293;
t836 = t12 * qJD(1);
t15 = -t101 * t382 + t102 * t379 - t112 * t383 - t113 * t293;
t835 = t15 * qJD(1);
t16 = (-t102 + t115) * t383 + (t101 - t116) * t293;
t833 = t16 * qJD(1);
t19 = t101 * t112 + t102 * t113 + t349 * t350;
t832 = t19 * qJD(1);
t20 = -t101 * t115 + t102 * t116 + t349 * t708;
t831 = t20 * qJD(1);
t21 = -t157 * t382 - t158 * t383 + t518 * t93 + t522 * t83;
t830 = t21 * qJD(1);
t22 = -t157 * t379 + t158 * t293 - t518 * t94 - t522 * t84;
t829 = t22 * qJD(1);
t828 = t274 * t551;
t827 = t275 * t549;
t29 = t157 * t522 - t379 * t84 + t382 * t83;
t826 = t29 * qJD(1);
t34 = t101 * t522 + t112 * t518 + t293 * t350 - t349 * t379;
t825 = t34 * qJD(1);
t35 = -t102 * t522 - t113 * t518 + t349 * t382 + t350 * t383;
t824 = t35 * qJD(1);
t38 = t101 * t379 + t102 * t382 + t349 * t522;
t820 = t38 * qJD(1);
t604 = t157 * t888 + t383 * t898;
t567 = t890 * t942 - t604;
t43 = t562 - t567;
t808 = t43 * qJD(1);
t805 = t942 * t518;
t803 = t443 * t522;
t802 = t443 * t518;
t800 = t942 * t522;
t798 = t516 * t518;
t795 = t520 * t547;
t793 = t533 * t516;
t792 = t536 * t520;
t54 = (t827 + t828) * t522 + (t247 * t551 - t248 * t549) * t518;
t791 = t54 * qJD(1);
t786 = t549 * t293;
t55 = -t247 * t274 + t248 * t275 + t440 * t441;
t784 = t55 * qJD(1);
t57 = (-t247 + t785) * t522 + (t274 - t806) * t518;
t780 = t57 * qJD(1);
t58 = (-t248 + t782) * t522 + (-t275 - t415) * t518;
t779 = t58 * qJD(1);
t774 = t457 / 0.2e1 - t703 / 0.2e1;
t529 = t546 ^ 2 + t548 ^ 2;
t544 = t549 ^ 2;
t532 = t545 - t544;
t156 = -t248 * t518 + t440 * t781;
t770 = qJD(1) * t156;
t187 = t809 + t812;
t765 = qJD(1) * t187;
t334 = t709 * t549;
t760 = qJD(1) * t334;
t335 = t943 * t549;
t759 = qJD(1) * t335;
t336 = t709 * t551;
t758 = qJD(1) * t336;
t755 = qJD(2) * t551;
t751 = qJD(3) * t551;
t750 = qJD(4) * t116;
t749 = qJD(4) * t443;
t748 = qJD(4) * t549;
t747 = qJD(4) * t551;
t746 = qJD(5) * t293;
t745 = qJD(5) * t516;
t743 = qJD(6) * t293;
t572 = (t881 - t544 / 0.2e1) * t871 - t869 / 0.2e1;
t603 = t828 / 0.2e1 + t827 / 0.2e1;
t110 = t572 - t603;
t742 = t110 * qJD(1);
t155 = t247 * t518 - t397 * t440;
t739 = t155 * qJD(1);
t220 = -t441 * t518 + t807;
t738 = t220 * qJD(1);
t251 = (t889 + t580) * t518;
t240 = t251 * qJD(1);
t256 = t798 / 0.2e1 + t774;
t242 = t256 * qJD(1);
t257 = -t798 / 0.2e1 + t774;
t734 = t257 * qJD(1);
t733 = t258 * qJD(1);
t259 = t893 + (t675 + t892) * t518;
t732 = t259 * qJD(1);
t295 = 0.2e1 * t435;
t728 = t295 * qJD(1);
t727 = t709 * qJD(1);
t394 = (t544 / 0.2e1 + t881) * t522;
t725 = t394 * qJD(4);
t724 = t395 * qJD(1);
t723 = t397 * qJD(1);
t722 = t400 * qJD(1);
t488 = t544 * t518;
t489 = t545 * t518;
t404 = t488 + t489;
t721 = t404 * qJD(1);
t406 = t943 * t551;
t720 = t406 * qJD(1);
t719 = t943 * qJD(1);
t718 = t773 * qJD(1);
t717 = t516 * qJD(4);
t500 = t518 * qJD(3);
t498 = t518 * qJD(6);
t714 = t520 * qJD(6);
t713 = t522 * qJD(1);
t526 = t529 * qJ(2);
t711 = t526 * qJD(1);
t710 = t529 * qJD(1);
t706 = t868 / 0.2e1;
t539 = t866 / 0.2e1;
t705 = t883 - pkin(5) / 0.2e1;
t702 = -t857 / 0.2e1;
t701 = t857 / 0.2e1;
t700 = t899 + t84 / 0.2e1;
t699 = t83 / 0.2e1 + t900;
t691 = t549 * t751;
t689 = t518 * t747;
t438 = t516 * t715;
t686 = t518 * t713;
t437 = t518 * t712;
t685 = t549 * t747;
t684 = t551 * t713;
t683 = -t838 / 0.2e1;
t674 = -t781 / 0.2e1;
t673 = t945 + t900;
t672 = t899 - t101 / 0.2e1;
t671 = -t192 / 0.2e1 - t789 / 0.2e1;
t670 = t407 / 0.2e1 - t415 / 0.2e1;
t667 = t885 - qJ(6) / 0.2e1;
t662 = t857 * t516;
t658 = t379 * t942 + t382 * t443;
t159 = qJD(3) * t256 + t687;
t467 = t551 * t706;
t654 = qJD(1) * t537 + qJD(2);
t652 = t514 * t685;
t651 = t115 * t891 + t116 * t888;
t646 = t872 - t875;
t645 = qJD(3) * t659;
t642 = -t274 * t549 + t275 * t551;
t601 = -t379 * t883 + t382 * t884;
t13 = t516 * t699 - t520 * t700 + t601;
t633 = t13 * qJD(1) - t927;
t571 = (-t379 * t880 + t382 * t701) * pkin(4);
t17 = t516 * t673 - t520 * t672 + t571;
t632 = t17 * qJD(1) - t927;
t199 = t393 * t520 + t403 * t516;
t553 = t198 * t891 + t293 * t897 - t805 / 0.2e1 + t604;
t28 = t522 * t705 + t553 - t775;
t631 = qJD(1) * t28 + qJD(3) * t199;
t200 = t393 * t516 - t403 * t520;
t554 = t157 * t892 + t198 * t888 - t293 * t898 + t383 * t897 + t802 / 0.2e1;
t589 = -t522 * t667 - t776;
t25 = t554 + t589;
t630 = -qJD(1) * t25 + qJD(3) * t200;
t559 = -t480 / 0.2e1 + t698 / 0.2e1 - t647 / 0.2e1;
t552 = t559 - t906;
t23 = t552 - t863 + t938;
t629 = -qJD(1) * t23 + t925;
t32 = t552 - t862;
t628 = -qJD(1) * t32 + t925;
t386 = t516 * t866 + t520 * t538;
t565 = t349 * t889 + t805 / 0.2e1 + t383 * t882;
t46 = (-t786 / 0.2e1 + (t516 * t877 + t879) * t522) * pkin(4) + t565 + t775;
t627 = -qJD(1) * t46 + qJD(3) * t386;
t387 = -t516 * t538 + t520 * t866;
t566 = t349 * t891 - t802 / 0.2e1 - t293 * t882;
t45 = (t383 * t878 + (t520 * t877 + t702) * t522) * pkin(4) + t566 + t776;
t626 = -qJD(1) * t45 + qJD(3) * t387;
t624 = t908 * t551;
t103 = -t293 * t667 - t383 * t705 + t467;
t226 = -t516 * t667 - t520 * t705 + t539;
t623 = qJD(1) * t103 + qJD(3) * t226;
t582 = -t293 * t701 + t383 * t880;
t181 = (t674 + t582) * pkin(4);
t581 = -t662 / 0.2e1 - t795 / 0.2e1;
t357 = (t878 + t581) * pkin(4);
t618 = qJD(1) * t181 + qJD(3) * t357;
t284 = t752 + t756;
t612 = t871 / 0.2e1 + t869 / 0.2e1;
t609 = t883 * t94 + t884 * t93;
t608 = t789 / 0.2e1 + t665 / 0.2e1;
t560 = t612 * t549 + t415 / 0.2e1;
t151 = t560 + t670;
t607 = pkin(3) * t751 - qJD(1) * t151;
t590 = t612 * t551;
t153 = -t408 / 0.2e1 - t590;
t606 = pkin(3) * qJD(3) * t549 - qJD(1) * t153;
t599 = -t379 * t885 + t382 * t883;
t598 = t522 * t624;
t162 = t939 + t773;
t597 = qJD(1) * t162 + t693;
t179 = t316 + t680;
t107 = qJD(3) * t179 - t694;
t149 = -qJD(1) * t179 + t693;
t346 = -qJD(1) * t394 + t691;
t337 = -qJD(4) * t773 + t686;
t591 = (-qJD(3) * t379 + t373) * t293;
t278 = qJD(1) * t514 * t549 * t551 + qJD(3) * t394;
t405 = t532 * t514;
t587 = qJD(1) * t405 + t645;
t586 = qJD(1) * t659 - qJD(3) * t532;
t584 = t112 * t879 + t113 * t701;
t555 = t840 / 0.2e1 + t157 * t897 + t198 * t898 + t83 * t894 + t84 * t896;
t1 = t683 - t555 + t609;
t118 = t393 * t403;
t579 = -qJD(1) * t1 + qJD(3) * t118 + t931;
t168 = t538 * t866;
t568 = t101 * t896 + t443 * t945 - t840 / 0.2e1;
t3 = t683 + (t349 * t878 + t538 * t674 + t584) * pkin(4) + t568;
t578 = -t3 * qJD(1) + t168 * qJD(3) + t931;
t5 = t516 * t700 + t520 * t699 + t563 + t599;
t577 = t5 * qJD(1);
t570 = (-t379 * t702 + t382 * t880) * pkin(4);
t7 = t516 * t672 + t520 * t673 + t563 + t570;
t576 = t7 * qJD(1);
t439 = t676 + t525 / 0.2e1;
t49 = t518 * t667 + t608 + t671;
t575 = qJD(1) * t49 - qJD(3) * t439 - qJD(4) * t533;
t298 = t902 + t511;
t569 = qJD(1) * t298 + qJD(4) * t518 + t383 * t752;
t558 = t115 * t888 + t116 * t892 + (t896 + t968) * t383 - t563;
t556 = t559 + t906;
t503 = t520 * qJD(5);
t482 = t773 * qJD(3);
t479 = t551 * t712;
t417 = t942 * qJD(4);
t390 = t395 * qJD(4);
t375 = 0.2e1 * t676 + t613;
t356 = pkin(4) * t581 + t539;
t353 = -t724 - t748;
t322 = t383 * t714;
t260 = t518 * t580 + t677;
t244 = t256 * qJD(4);
t243 = t258 * qJD(4);
t239 = qJD(3) * t901 + t520 * t756;
t227 = -t793 / 0.2e1 + t792 / 0.2e1 + t539 + t799 / 0.2e1 + t870 / 0.2e1;
t215 = t715 - t240;
t214 = -t717 - t242;
t180 = pkin(4) * t582 + t467;
t174 = t179 * qJD(4);
t165 = -t939 + t773;
t154 = t806 + t408 / 0.2e1 - t590;
t152 = t560 - t670;
t132 = (qJD(3) * t382 - t726) * t383;
t126 = qJD(3) * t187 - t518 * t726;
t117 = -t244 - t765;
t111 = t572 + t603;
t109 = -t382 * t756 + t174;
t104 = -t293 * t884 + t383 * t883 + t467 + t819 / 0.2e1 + t873 / 0.2e1;
t90 = t520 * t712 - t243 + t765;
t87 = t838 / 0.2e1;
t59 = t284 * t382 + t174;
t50 = t518 * t884 + t797 / 0.2e1 + t608 - t671;
t48 = t383 * t539 + t467 * t520 + t696 * t887 - t566 + t776;
t47 = pkin(4) * t786 / 0.2e1 + t516 * t467 + t547 * t706 - t565 + t775;
t44 = t562 + t567;
t37 = t588 - t605;
t33 = t556 + t862;
t30 = t263 + t602 + t610;
t27 = t536 * t887 + t553 - t562;
t26 = -t554 + t589;
t24 = t556 + t863 + t938;
t18 = t571 + t651 + t862;
t14 = t601 + t651 + t863;
t8 = t101 * t891 + t102 * t889 + t558 + t570;
t6 = t83 * t889 + t84 * t892 + t558 + t599;
t4 = pkin(4) * t584 + t349 * t539 + t467 * t538 - t568 + t87;
t2 = t87 + t555 + t609;
t56 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t529 * qJD(2), t526 * qJD(2), -t437, -t709 * qJD(3), 0, t437, 0, 0, t537 * t712, -t537 * t500, -qJD(2) * t943, qJD(2) * t220, -t437 * t545 - t652, -qJD(4) * t405 + t518 * t645, -t518 * t522 * t748 + qJD(3) * t336, -t437 * t544 + t652, -qJD(3) * t334 - t522 * t689, t437, -qJD(2) * t335 + qJD(3) * t57 + qJD(4) * t156, -qJD(2) * t406 + qJD(3) * t58 + qJD(4) * t155, -qJD(3) * t54, qJD(2) * t78 + qJD(3) * t55, t132, -t970, t126, t591, -t949, t437, qJD(3) * t34 + qJD(4) * t52 - t374 * t518 + t913, qJD(3) * t35 + qJD(4) * t53 + t950, qJD(3) * t15 + qJD(4) * t16 + t946, qJD(2) * t38 + qJD(3) * t19 + qJD(4) * t20 + qJD(5) * t42, t132, t126, t970, t437, t949, t591, t913 + t22 * qJD(3) + t40 * qJD(4) + (-t743 - t744) * t383, qJD(3) * t11 + qJD(4) * t12 - t293 * t498 + t946, qJD(3) * t21 + qJD(4) * t41 + qJD(6) * t298 - t950, qJD(2) * t29 + qJD(3) * t9 + qJD(4) * t10 + qJD(5) * t39 + qJD(6) * t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t710, t711, 0, 0, 0, 0, 0, 0, 0, 0, -t719, t738, 0, 0, 0, 0, 0, 0, -t759, -t720, 0, qJD(3) * t111 + t845, 0, 0, 0, 0, 0, 0, t964, -qJD(4) * t257 + t921 - t962, t933, qJD(3) * t37 + qJD(4) * t18 + t820 + t947, 0, 0, 0, 0, 0, 0, t964, t933, -t243 + t962 + t921, qJD(3) * t30 + qJD(4) * t14 + qJD(6) * t260 + t826 + t947; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t686, -t727, -t500, t686, -t712, 0, -qJD(3) * t441 + t537 * t713, qJD(3) * t440 - t537 * t716, 0, 0, -t725 + (-t545 * t713 - t691) * t518 (t488 - t489) * qJD(3) + (-qJD(4) + t716) * t659, t549 * t712 + t758, t725 + (-t544 * t713 + t691) * t518, t479 - t760, t337, t780 + (t549 * t646 - t782) * qJD(3) + t154 * qJD(4), t779 + (t551 * t646 + t785) * qJD(3) + t152 * qJD(4), qJD(3) * t642 - t791, t784 + t111 * qJD(2) + (-t441 * pkin(3) + pkin(8) * t642) * qJD(3), t59, -t972, t90, t977, -t246 + t978, t337, t825 + (t350 * t516 - t379 * t538 - t803) * qJD(3) + t47 * qJD(4) - t911, t824 + t910 + (t350 * t520 + t382 * t538 - t800) * qJD(3) + t48 * qJD(4) - t259 * qJD(5), t835 + (-t112 * t520 - t113 * t516 + t658) * qJD(3) + t8 * qJD(4) + t914, t832 + t37 * qJD(2) + (-t112 * t443 + t113 * t942 + t350 * t538) * qJD(3) + t4 * qJD(4) + t33 * qJD(5), t59, t90, t972, t337, qJD(4) * t260 - t978, t977, t829 + (t158 * t516 - t379 * t393 - t803) * qJD(3) + t27 * qJD(4) - t911 + t165 * qJD(6), t841 + (-t516 * t93 + t520 * t94 + t658) * qJD(3) + t6 * qJD(4) + t914 - t258 * qJD(6), t830 + t910 + (-t158 * t520 - t382 * t393 + t800) * qJD(3) + t26 * qJD(4) - t256 * qJD(5) + t322, t858 + t30 * qJD(2) + (t158 * t393 + t443 * t94 + t93 * t942) * qJD(3) + t2 * qJD(4) + t24 * qJD(5) + t44 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t278, -t587, -t908 * t397, t278, -t598, -t482, qJD(3) * t154 - qJD(4) * t248 + t770, qJD(3) * t152 + qJD(4) * t247 + t739, 0, 0, t107, -t620, t120, -t948, -t979, -t482, qJD(3) * t47 + t849 + t905, -qJD(2) * t257 + qJD(3) * t48 - t750 + t848, t833 + t8 * qJD(3) + (t293 * t547 - t383 * t857) * t861, t831 + t18 * qJD(2) + t4 * qJD(3) + (-t115 * t547 + t116 * t857) * t861 + t180 * qJD(5), t107, t120, t620, -t482, qJD(3) * t260 + t644, -t948, qJD(3) * t27 + t853 + t905, t836 + t6 * qJD(3) + (-t293 * t536 - t383 * t533) * qJD(4) - t743, -qJD(2) * t258 + qJD(3) * t26 + t498 + t750 + t852, t844 + t14 * qJD(2) + t2 * qJD(3) + (t115 * t536 + t116 * t533) * qJD(4) + t104 * qJD(5) + t50 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t656, -qJD(3) * t259 + t687, t951, qJD(3) * t33 + qJD(4) * t180 + t851 + t960, 0, 0, 0, 0, 0, 0, -t656, t951, -t159, qJD(3) * t24 + qJD(4) * t104 + t854 + t960; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t165 - t694, t120, t569, qJD(2) * t260 + qJD(3) * t44 + qJD(4) * t50 + t850; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t710, -t711, 0, 0, 0, 0, 0, 0, t712, -t500, t719, -t738, 0, 0, 0, 0, 0, 0, -t390 + t479 + t759, -qJD(3) * t397 - t689 + t720, t404 * qJD(3), -qJD(3) * t110 - t845, 0, 0, 0, 0, 0, 0, t953, -qJD(3) * t293 - qJD(4) * t259 + t962, t965, -qJD(3) * t36 - qJD(4) * t17 - t820 - t918, 0, 0, 0, 0, 0, 0, t953, t965, qJD(3) * t295 - t244 - t962, qJD(3) * t31 - qJD(4) * t13 - qJD(6) * t251 - t826 - t918; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t713, -t716, 0, 0, 0, 0, 0, 0, 0, 0, t684, -t723, t721, -t742, 0, 0, 0, 0, 0, 0, -t909, -t955, -t935, t915 - t855, 0, 0, 0, 0, 0, 0, -t909, -t935, t728, t915 + t856; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t353, -t624, 0, 0, 0, 0, 0, 0, 0, 0, t216, t717 - t732, 0 (-t662 - t795) * t861 - t632, 0, 0, 0, 0, 0, 0, t216, 0, t214 (t792 - t793) * qJD(4) + t714 - t633; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t937, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t937; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t215; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t686, t727, 0, -t686, 0, 0, -t654 * t522, t654 * t518, 0, 0, t545 * t686 - t725, -t598 * t969, qJD(4) * t400 - t758, t544 * t686 + t725, -t390 + t760, -t337, qJD(4) * t153 - t522 * t755 - t780, qJD(2) * t397 + qJD(4) * t151 - t779, -qJD(2) * t404 + t791, qJD(2) * t110 - t784, t109, -t975, t117, t976, -t245 + t961, -t337, -qJD(4) * t46 - t825 + t903, qJD(2) * t293 - qJD(4) * t45 - qJD(5) * t257 - t824, -qJD(4) * t7 - t835 + t966, qJD(2) * t36 - qJD(4) * t3 - qJD(5) * t32 - t832, t109, t117, t975, -t337, -qJD(4) * t251 - t961, t976, qJD(4) * t28 - qJD(6) * t162 - t829 + t903, -qJD(4) * t5 - qJD(6) * t256 - t841 + t966, -qJD(2) * t295 - qJD(4) * t25 - qJD(5) * t258 + t322 - t830, -qJD(2) * t31 - qJD(4) * t1 - qJD(5) * t23 - qJD(6) * t43 - t858; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t713, t716, 0, 0, 0, 0, 0, 0, 0, 0, -t684, t723, -t721, t742, 0, 0, 0, 0, 0, 0, t909, t955, t935, t915 + t855, 0, 0, 0, 0, 0, 0, t909, t935, -t728, t915 - t856; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t685, t532 * qJD(4), 0, -t685, 0, 0, -pkin(3) * t748, -pkin(3) * t747, 0, 0, -t438, -t973, 0, t438, 0, 0, t386 * qJD(4), t387 * qJD(4), t974, qJD(4) * t168 + t917, -t438, 0, t973, 0, 0, t438, qJD(4) * t199 - t516 * t714, t974, qJD(4) * t200 + qJD(6) * t901, qJD(4) * t118 - t393 * t714 + t917; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t346, -t586, t722 + t747, -t346, t353, t718, -pkin(8) * t747 - t606, pkin(8) * t748 - t607, 0, 0, -t149, -t619, t214, t952, t216, t718, -t417 + t627, t626 + t749 (t516 * t547 - t520 * t857) * t861 - t576 (-t443 * t857 - t547 * t942) * t861 + t356 * qJD(5) + t578, -t149, t214, t619, t718, t215, t952, -t417 + t631 (-t516 * t536 - t520 * t533) * qJD(4) - qJD(6) * t516 - t577, t630 - t749 (-t443 * t533 + t536 * t942) * qJD(4) + t227 * qJD(5) + t375 * qJD(6) + t579; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t916, -t734, t971, qJD(4) * t356 + t628, 0, 0, 0, 0, 0, 0, -t916, t971, -t733, qJD(4) * t227 + t629; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t597, t214, t239, qJD(4) * t375 - t393 * t752 - t808; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t278, t587, -qJD(3) * t400 + t549 * t686, -t278, qJD(3) * t395 + t518 * t684, -t482, qJD(2) * t395 - qJD(3) * t153 - t770, -qJD(3) * t151 + t518 * t755 - t739, 0, 0, -t107, t620, t159, t948, t656, -t482, qJD(3) * t46 - t849 + t904, qJD(2) * t259 + qJD(3) * t45 + t746 - t848, qJD(3) * t7 - t833, qJD(2) * t17 + qJD(3) * t3 + qJD(5) * t181 - t831, -t107, t159, -t620, -t482, qJD(3) * t251 - t321, t948, -qJD(3) * t28 - t853 + t904, qJD(3) * t5 - t836, qJD(2) * t256 + qJD(3) * t25 + t498 - t746 - t852, qJD(2) * t13 + qJD(3) * t1 - qJD(5) * t103 - qJD(6) * t49 - t844; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t724, t551 * t716, 0, 0, 0, 0, 0, 0, 0, 0, t912, t732, 0, t632, 0, 0, 0, 0, 0, 0, t912, 0, t242, t633; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t346, t586, -t722, t346, t724, -t718, t606, t607, 0, 0, t149, t619, t242, -t952, t912, -t718, -t503 - t627, -t626 + t745, t576, qJD(5) * t357 - t578, t149, t242, -t619, -t718, t240, -t952, -t503 - t631, t577, -t630 - t745, -qJD(5) * t226 + qJD(6) * t439 - t579; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(6), t533 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t284, -t283, 0, t618, 0, 0, 0, 0, 0, 0, -t284, 0, t283, -t623; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t908, -t575; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t979, qJD(3) * t257 + t980, -t951, qJD(3) * t32 - qJD(4) * t181 - t851 + t932, 0, 0, 0, 0, 0, 0, t979, -t951, -t120, qJD(3) * t23 + qJD(4) * t103 - qJD(6) * t383 - t854 + t932; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t937, 0, 0, 0, 0, 0, 0, 0, 0, 0, t937; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t967, -t717 + t734, -t971, -qJD(4) * t357 - t628, 0, 0, 0, 0, 0, 0, t967, -t971, t717 + t733, qJD(4) * t226 - t629 - t714; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t284, t283, 0, -t618, 0, 0, 0, 0, 0, 0, t284, 0, -t283, t623; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t284; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t162 + t694, t159, -t569, qJD(2) * t251 + qJD(3) * t43 + qJD(4) * t49 + t374 - t850; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t240; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t597, t242, -t239, t808 - t439 * qJD(4) + (qJD(3) * t393 + qJD(5)) * t520; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t908, t575; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t284; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t56;