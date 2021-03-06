% Calculate inertial parameters regressor of coriolis matrix for
% S6RPPRRR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6,theta3]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 02:36
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPPRRR8_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR8_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR8_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRRR8_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:36:26
% EndTime: 2019-03-09 02:36:50
% DurationCPUTime: 17.77s
% Computational Cost: add. (23385->666), mult. (42985->871), div. (0->0), fcn. (49567->8), ass. (0->498)
t622 = sin(pkin(10));
t623 = cos(pkin(10));
t924 = sin(qJ(4));
t926 = cos(qJ(4));
t585 = t622 * t926 + t623 * t924;
t934 = -t585 / 0.2e1;
t626 = cos(qJ(5));
t946 = -pkin(9) - pkin(8);
t597 = t946 * t626;
t624 = sin(qJ(6));
t625 = sin(qJ(5));
t925 = cos(qJ(6));
t727 = t925 * t625;
t701 = -t624 * t597 - t946 * t727;
t938 = t701 / 0.2e1;
t455 = t626 * t585;
t426 = -t455 * t624 - t585 * t727;
t450 = t625 * t585;
t526 = t624 * t450;
t608 = t925 * t626;
t691 = t585 * t608;
t430 = t691 - t526;
t838 = t624 * t625;
t512 = -t597 * t925 + t838 * t946;
t936 = t512 / 0.2e1;
t939 = -t512 / 0.2e1;
t707 = t936 + t939;
t937 = -t701 / 0.2e1;
t708 = t937 + t938;
t980 = -t707 * t426 - t708 * t430;
t745 = qJD(5) + qJD(6);
t607 = t924 * t622;
t734 = t926 * t623;
t587 = t734 - t607;
t452 = t625 * t587;
t915 = -pkin(1) - qJ(3);
t744 = -pkin(7) + t915;
t594 = t744 * t622;
t692 = t744 * t623;
t483 = t594 * t924 - t926 * t692;
t383 = pkin(5) * t452 + t483;
t527 = t624 * t452;
t432 = t587 * t608 - t527;
t609 = -pkin(5) * t626 - pkin(4);
t968 = -t609 / 0.2e1;
t837 = t624 * t626;
t592 = t727 + t837;
t969 = -t592 / 0.2e1;
t979 = -t383 * t969 - t432 * t968 + t512 * t934;
t341 = t587 * t592;
t590 = -t608 + t838;
t933 = -t590 / 0.2e1;
t971 = t341 * t968 + t383 * t933 + t585 * t938;
t978 = t430 / 0.2e1;
t977 = t430 * t592;
t847 = t592 * t341;
t864 = t432 * t590;
t224 = -t847 / 0.2e1 - t864 / 0.2e1;
t974 = t745 * t224;
t606 = t622 * pkin(3) + qJ(2);
t922 = t585 * pkin(4);
t667 = t606 + t922;
t484 = t594 * t926 + t692 * t924;
t835 = t625 * t484;
t245 = -t835 + (t587 * t946 + t667) * t626;
t921 = t585 * pkin(5);
t629 = t245 + t921;
t628 = t624 * t629;
t917 = t587 * pkin(8);
t642 = t667 - t917;
t834 = t626 * t484;
t280 = t625 * t642 + t834;
t246 = -pkin(9) * t452 + t280;
t731 = t925 * t246;
t134 = t731 + t628;
t841 = t624 * t245;
t149 = -t731 - t841;
t973 = t149 + t134;
t212 = t925 * t629;
t840 = t624 * t246;
t133 = -t212 + t840;
t732 = t925 * t245;
t150 = t732 - t840;
t972 = t150 + t133;
t460 = t483 * t626;
t919 = t587 * pkin(4);
t920 = t585 * pkin(8);
t485 = t919 + t920;
t465 = t625 * t485;
t299 = -t460 + t465;
t257 = pkin(9) * t450 + t299;
t730 = t925 * t257;
t689 = -t730 / 0.2e1;
t466 = t626 * t485;
t859 = t483 * t625;
t298 = t466 + t859;
t918 = t587 * pkin(5);
t229 = pkin(9) * t455 + t298 + t918;
t842 = t624 * t229;
t649 = -t842 / 0.2e1 + t689;
t54 = t649 - t971;
t733 = t925 * t229;
t839 = t624 * t257;
t648 = -t839 / 0.2e1 + t733 / 0.2e1;
t56 = t648 + t979;
t53 = t648 - t979;
t970 = 0.2e1 * t625;
t944 = t426 / 0.2e1;
t932 = t592 / 0.2e1;
t753 = t587 * qJD(1);
t494 = t585 * t753;
t574 = t734 / 0.2e1 - t607 / 0.2e1;
t956 = t574 * qJD(5) + t494;
t741 = -t925 / 0.2e1;
t846 = t592 * t585;
t930 = -t624 / 0.2e1;
t639 = (-t430 * t741 - t846 * t930) * pkin(5);
t959 = t133 / 0.2e1;
t710 = t150 / 0.2e1 + t959;
t945 = t134 / 0.2e1;
t711 = t945 + t149 / 0.2e1;
t3 = t341 * t708 + t432 * t707 + t590 * t710 + t592 * t711 + t639;
t589 = t590 ^ 2;
t575 = t589 / 0.2e1;
t958 = -t589 / 0.2e1;
t262 = t575 + t958;
t772 = t262 * qJD(3);
t965 = t3 * qJD(1) - t772;
t964 = t341 * qJD(1);
t788 = qJD(4) * t592;
t963 = -qJD(1) * t224 + t590 * t788;
t794 = qJD(1) * t432;
t962 = qJD(4) * t224 - t341 * t794;
t688 = -t608 / 0.2e1;
t935 = t527 / 0.2e1;
t304 = t935 + (t688 + t933) * t587;
t770 = t304 * qJD(2);
t961 = t701 * t745 - t770;
t960 = t745 * t512;
t457 = t626 * t587;
t702 = t457 * t970;
t696 = t745 * t590;
t578 = t585 ^ 2;
t579 = t587 ^ 2;
t955 = -t579 - t578;
t743 = t579 - t578;
t616 = t622 ^ 2;
t617 = t623 ^ 2;
t598 = t616 + t617;
t746 = t579 / 0.2e1;
t687 = t578 / 0.2e1 + t746;
t954 = qJD(6) * t574 + t956;
t647 = t837 / 0.2e1 + t727 / 0.2e1;
t301 = (t932 - t647) * t587;
t771 = t301 * qJD(2);
t787 = qJD(4) * t609;
t953 = qJD(1) * t53 - t592 * t787 + t771;
t740 = t925 / 0.2e1;
t836 = t625 * t341;
t927 = -t626 / 0.2e1;
t36 = (-t836 / 0.2e1 + (t590 * t927 + t740) * t587) * pkin(5) + t53;
t923 = pkin(5) * t625;
t441 = t590 * t923 + t592 * t609;
t952 = qJD(1) * t36 - qJD(4) * t441 + t771;
t942 = -t430 / 0.2e1;
t660 = t426 * t978 - t846 * t942;
t951 = qJD(4) * t660;
t147 = t733 - t839;
t148 = t730 + t842;
t14 = -t133 * t430 + t134 * t846 - t147 * t432 - t148 * t341;
t949 = t14 * qJD(1) + t660 * qJD(2);
t947 = t592 ^ 2;
t943 = t846 / 0.2e1;
t621 = t626 ^ 2;
t931 = -t621 / 0.2e1;
t929 = t624 / 0.2e1;
t928 = -t625 / 0.2e1;
t916 = t624 * pkin(5);
t911 = pkin(5) * qJD(5);
t728 = t925 * t590;
t845 = t592 * t624;
t650 = t845 / 0.2e1 - t728 / 0.2e1;
t9 = -t710 * t430 - t711 * t426 + (t626 * t746 + t650) * pkin(5);
t908 = t9 * qJD(1);
t881 = t299 * t626;
t884 = t298 * t625;
t886 = t280 * t626;
t637 = t626 * t642;
t279 = -t637 + t835;
t887 = t279 * t625;
t33 = (t886 / 0.2e1 + t887 / 0.2e1 - t484 / 0.2e1) * t587 + (t881 / 0.2e1 - t884 / 0.2e1 + t483 / 0.2e1) * t585;
t905 = t33 * qJD(4);
t742 = pkin(5) * t457;
t878 = t383 * t432;
t50 = t149 * t585 + t341 * t742 + t878;
t903 = qJD(1) * t50;
t879 = t383 * t341;
t51 = -t150 * t585 + t432 * t742 - t879;
t902 = qJD(1) * t51;
t62 = t133 * t585 - t879;
t901 = qJD(1) * t62;
t63 = -t134 * t585 + t878;
t900 = qJD(1) * t63;
t860 = t483 * t587;
t91 = t860 + (-t886 - t887) * t585;
t899 = qJD(1) * t91;
t896 = t133 * t590;
t892 = t134 * t592;
t15 = -t341 * t972 - t432 * t973;
t890 = t15 * qJD(1);
t384 = -pkin(5) * t450 + t484;
t20 = -t133 * t147 + t134 * t148 + t383 * t384;
t889 = t20 * qJD(1);
t23 = -t133 * t149 + t134 * t150 + t383 * t742;
t888 = t23 * qJD(1);
t29 = -t133 * t846 - t134 * t430 + t383 * t587;
t885 = t29 * qJD(1);
t883 = t298 * t626;
t882 = t299 * t625;
t34 = t892 + t896;
t880 = t34 * qJD(1);
t712 = t457 / 0.2e1;
t41 = (-t921 + t835 / 0.2e1 - t637 / 0.2e1 + pkin(9) * t712 + t245 / 0.2e1) * t624;
t875 = t41 * qJD(1);
t873 = t846 * t432;
t872 = t846 * t585;
t871 = t341 * t430;
t738 = -t921 / 0.2e1;
t654 = -t212 / 0.2e1 + t925 * t738;
t43 = t732 / 0.2e1 + t654;
t870 = t43 * qJD(1);
t868 = t430 * t585;
t867 = t430 * t590;
t865 = t432 * t587;
t863 = t432 * t592;
t862 = t432 * t624;
t861 = t660 * qJD(1);
t677 = t279 * t626 - t280 * t625;
t49 = (t882 + t883) * t587 + t677 * t585;
t858 = t49 * qJD(1);
t856 = t701 * t341;
t852 = t585 * t587;
t851 = t587 * t341;
t339 = t587 * t590;
t850 = t590 * t341;
t849 = t590 * t585;
t848 = t592 * t846;
t72 = (-t279 + t835) * t587 + (t298 - t859) * t585;
t833 = t72 * qJD(1);
t73 = (-t280 + t834) * t587 + (-t299 - t460) * t585;
t832 = t73 * qJD(1);
t169 = t850 - t863;
t823 = t745 * t169;
t174 = -t590 * t707 + t592 * t708;
t822 = t174 * qJD(5);
t659 = t430 * t934 - t865 / 0.2e1;
t684 = t608 / 0.2e1 - t838 / 0.2e1;
t202 = -t659 + t684;
t300 = (t932 + t647) * t585;
t821 = t202 * qJD(2) + t300 * qJD(3);
t661 = t426 * t934 + t851 / 0.2e1;
t203 = -t647 - t661;
t714 = -t849 / 0.2e1;
t811 = -t526 / 0.2e1 + t691 / 0.2e1;
t303 = t714 + t811;
t820 = t203 * qJD(2) + t303 * qJD(3);
t204 = -t647 + t661;
t713 = t849 / 0.2e1;
t306 = t713 + t811;
t819 = t204 * qJD(2) + t306 * qJD(3);
t205 = t659 + t684;
t307 = -t846 / 0.2e1 + t647 * t585;
t818 = t205 * qJD(2) + t307 * qJD(3);
t815 = t745 * t262;
t814 = t745 * t300;
t813 = t745 * t307;
t810 = t526 / 0.2e1 + t585 * t688;
t620 = t625 ^ 2;
t809 = t620 + t621;
t601 = t621 - t620;
t747 = -t579 / 0.2e1;
t641 = t426 * t943 - t430 * t978 + t747;
t105 = -t947 / 0.2e1 + t958 + t641;
t808 = qJD(1) * t105;
t125 = -t848 + t867;
t807 = qJD(1) * t125;
t176 = t871 - t873;
t806 = qJD(1) * t176;
t805 = qJD(1) * t677;
t192 = -t280 * t585 + t457 * t483;
t804 = qJD(1) * t192;
t218 = -t851 + t872;
t803 = qJD(1) * t218;
t219 = t851 + t872;
t802 = qJD(1) * t219;
t225 = -t847 + t864;
t801 = qJD(1) * t225;
t251 = -t484 * t585 + t860;
t800 = qJD(1) * t251;
t337 = -0.1e1 / 0.2e1 - t687;
t324 = t337 * t625;
t799 = qJD(1) * t324;
t385 = t743 * t625;
t798 = qJD(1) * t385;
t386 = t955 * t625;
t797 = qJD(1) * t386;
t387 = t743 * t626;
t796 = qJD(1) * t387;
t584 = t598 * t915;
t793 = qJD(1) * t584;
t792 = qJD(1) * t606;
t791 = qJD(2) * t585;
t790 = qJD(3) * t626;
t789 = qJD(4) * t262;
t786 = qJD(4) * t626;
t785 = qJD(5) * t625;
t784 = qJD(5) * t626;
t783 = qJD(6) * t609;
t106 = (t944 + t943) * t587;
t782 = t106 * qJD(1);
t107 = (t942 + t978) * t587;
t781 = t107 * qJD(1);
t705 = t931 - t620 / 0.2e1;
t638 = t705 * t920 - t919 / 0.2e1;
t662 = t883 / 0.2e1 + t882 / 0.2e1;
t143 = t638 - t662;
t780 = t143 * qJD(1);
t177 = t871 + t873;
t779 = t177 * qJD(1);
t191 = t279 * t585 - t452 * t483;
t778 = t191 * qJD(1);
t777 = t202 * qJD(1);
t776 = t203 * qJD(1);
t220 = t865 - t868;
t775 = t220 * qJD(1);
t221 = t865 + t868;
t774 = t221 * qJD(1);
t646 = t578 * t705 + t747;
t234 = t646 + t705;
t773 = t234 * qJD(1);
t284 = t300 * qJD(1);
t302 = t713 + t810;
t286 = t302 * qJD(1);
t288 = t303 * qJD(1);
t769 = t337 * qJD(1);
t768 = t339 * qJD(1);
t381 = t337 * t626;
t766 = t381 * qJD(1);
t765 = t743 * qJD(1);
t449 = (t620 / 0.2e1 + t931) * t587;
t764 = t449 * qJD(5);
t763 = t450 * qJD(1);
t762 = t452 * qJD(1);
t761 = t455 * qJD(1);
t564 = t620 * t585;
t565 = t621 * t585;
t461 = t564 + t565;
t760 = t461 * qJD(1);
t463 = t809 * t587;
t759 = t463 * qJD(1);
t464 = t955 * t626;
t758 = t464 * qJD(1);
t757 = t955 * qJD(1);
t756 = t574 * qJD(1);
t754 = t585 * qJD(1);
t568 = t585 * qJD(4);
t571 = t587 * qJD(4);
t706 = -t616 / 0.2e1 - t617 / 0.2e1;
t596 = -0.1e1 / 0.2e1 + t706;
t752 = t596 * qJD(1);
t751 = t598 * qJD(1);
t750 = t622 * qJD(1);
t749 = t623 * qJD(1);
t739 = t923 / 0.2e1;
t737 = -t918 / 0.2e1;
t222 = t863 / 0.2e1 + t850 / 0.2e1;
t735 = t222 * qJD(4);
t729 = t925 * t341;
t725 = t625 * t754;
t723 = t625 * t786;
t722 = t585 * t785;
t721 = t585 * t784;
t493 = t585 * t571;
t720 = t590 * t754;
t719 = t592 * t754;
t718 = t625 * t784;
t717 = t626 * t754;
t716 = t626 * t753;
t715 = t626 * t747;
t709 = -t460 / 0.2e1 + t465 / 0.2e1;
t704 = t925 * qJD(5);
t703 = t925 * qJD(6);
t698 = t745 * t585;
t697 = t745 * t592;
t695 = pkin(5) * t712;
t694 = qJD(3) + t792;
t693 = -qJD(5) - t754;
t690 = t579 * t718;
t686 = -t917 + t922;
t685 = qJD(4) * t702;
t683 = -t452 * qJD(4) - t721;
t682 = -qJD(6) + t693;
t52 = -t279 * t298 + t280 * t299 + t483 * t484;
t681 = t52 * qJD(1) + t33 * qJD(2);
t676 = t881 - t884;
t25 = -t133 * t587 + t147 * t585 + t341 * t384 - t383 * t846;
t675 = t25 * qJD(1) + t106 * qJD(2);
t26 = -t134 * t587 - t148 * t585 - t383 * t430 + t384 * t432;
t674 = t26 * qJD(1) + t107 * qJD(2);
t636 = -t846 * t938 - t430 * t936 + t587 * t609 / 0.2e1;
t663 = t147 * t933 + t148 * t932;
t27 = t636 - t663;
t673 = -qJD(1) * t27 + qJD(2) * t222;
t254 = (-0.1e1 + t809) * t852;
t672 = -t33 * qJD(1) - t254 * qJD(2);
t640 = (-t430 * t929 - t741 * t846) * pkin(5);
t16 = t590 * t711 - t592 * t710 + t640;
t671 = -t16 * qJD(1) + t174 * qJD(4);
t35 = (t432 * t928 + (t592 * t927 + t930) * t587) * pkin(5) + t54;
t442 = -t590 * t609 + t592 * t923;
t670 = qJD(1) * t35 - qJD(4) * t442;
t668 = t693 * t626;
t206 = t341 ^ 2 - t432 ^ 2;
t67 = qJD(1) * t206 + qJD(4) * t169;
t423 = t589 - t947;
t139 = qJD(1) * t169 + qJD(4) * t423;
t666 = t920 / 0.2e1 + t919 / 0.2e1;
t633 = t666 * t625 + t460 / 0.2e1;
t183 = t633 + t709;
t665 = pkin(4) * t786 - t183 * qJD(1);
t653 = t666 * t626;
t185 = -t466 / 0.2e1 - t653;
t664 = pkin(4) * t625 * qJD(4) - t185 * qJD(1);
t658 = t512 * t932 + t590 * t938;
t656 = qJD(1) * t54 + t590 * t787;
t655 = t587 * t668;
t397 = -t449 * qJD(1) + t723;
t652 = t147 * t740 + t148 * t929;
t651 = t862 / 0.2e1 - t729 / 0.2e1;
t334 = qJD(1) * t579 * t625 * t626 + t449 * qJD(4);
t462 = t601 * t579;
t645 = t462 * qJD(1) + t685;
t644 = qJD(1) * t702 - t601 * qJD(4);
t155 = -t341 * t426 + t430 * t432 - t852;
t627 = t341 * t959 + t432 * t945 + t147 * t944 + t148 * t978 + t383 * t585 / 0.2e1 - t384 * t587 / 0.2e1;
t5 = -t627 + t658;
t643 = -t5 * qJD(1) + t155 * qJD(2) + t222 * qJD(3);
t632 = t149 * t938 + t701 * t945 + t939 * t972;
t1 = (t383 * t928 + t457 * t968 + t652) * pkin(5) + t632;
t208 = t609 * t923;
t47 = (t452 / 0.2e1 + t651) * pkin(5) + t980;
t634 = -t1 * qJD(1) - t47 * qJD(2) + t174 * qJD(3) + t208 * qJD(4);
t619 = qJ(2) * qJD(2);
t618 = qJD(1) * qJ(2);
t595 = 0.1e1 / 0.2e1 + t706;
t560 = t574 * qJD(4);
t557 = t626 * t571;
t502 = -t341 / 0.2e1;
t437 = t450 * qJD(5);
t409 = -t763 - t785;
t382 = t578 * t927 + t715 + t626 / 0.2e1;
t342 = t502 + t341 / 0.2e1;
t336 = 0.1e1 / 0.2e1 - t687;
t325 = t625 * t687 + t928;
t309 = -t587 * t647 + t502;
t308 = t339 / 0.2e1 + t587 * t688 + t935;
t305 = t714 + t810;
t233 = t646 - t705;
t232 = -t697 - t284;
t231 = t696 - t288;
t230 = -t286 - t696;
t194 = qJD(4) * t300 + t432 * t754;
t193 = qJD(4) * t302 + t341 * t754;
t186 = t859 + t466 / 0.2e1 - t653;
t184 = t633 - t709;
t146 = qJD(4) * t304 + t776;
t145 = qJD(4) * t301 + t777;
t144 = t638 + t662;
t132 = t307 * qJD(4) + t432 * t682;
t131 = t305 * qJD(4) + t341 * t682;
t104 = t947 / 0.2e1 + t575 + t641;
t103 = t107 * qJD(4);
t102 = t106 * qJD(4);
t70 = t309 * qJD(4) - t430 * t745 - t777;
t69 = t308 * qJD(4) - t426 * t745 - t776;
t55 = t649 + t971;
t48 = pkin(5) * t651 + t625 * t737 - t980;
t44 = t840 - t732 / 0.2e1 + t654;
t42 = t624 * t738 - t731 - t628 / 0.2e1 - t841 / 0.2e1;
t38 = t432 * t739 + t592 * t695 + t689 + (t737 - t229 / 0.2e1) * t624 + t971;
t37 = pkin(5) * t836 / 0.2e1 + t590 * t695 + t740 * t918 + t56;
t28 = t636 + t663;
t17 = t932 * t972 + t933 * t973 + t640;
t10 = (t650 + t715) * pkin(5) + t973 * t944 + t972 * t978;
t6 = t627 + t658;
t4 = -t341 * t937 + t150 * t933 + t149 * t969 + t639 - t856 / 0.2e1 - t896 / 0.2e1 - t892 / 0.2e1;
t2 = pkin(5) * t652 + t383 * t739 + t609 * t695 - t632;
t7 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2), t619, 0, 0, 0, 0, 0, 0, qJD(2) * t622, qJD(2) * t623, t598 * qJD(3), -qJD(3) * t584 + t619, -t493, -t743 * qJD(4), 0, t493, 0, 0, t571 * t606 + t791, qJD(2) * t587 - t568 * t606, -qJD(3) * t955, qJD(2) * t606 + qJD(3) * t251, -t493 * t621 - t690, -t462 * qJD(5) + t585 * t685, qJD(4) * t387 - t587 * t722, -t493 * t620 + t690, -t385 * qJD(4) - t587 * t721, t493, -t386 * qJD(3) + t72 * qJD(4) + t192 * qJD(5) + t626 * t791, -qJD(3) * t464 + qJD(4) * t73 + qJD(5) * t191 - t625 * t791, -qJD(2) * t463 - qJD(4) * t49, -qJD(2) * t677 + qJD(3) * t91 + qJD(4) * t52 (-qJD(4) * t430 - t341 * t745) * t432, t177 * qJD(4) + t206 * t745, t220 * qJD(4) - t341 * t698 (-qJD(4) * t846 + t432 * t745) * t341, t218 * qJD(4) - t432 * t698, t493, qJD(3) * t219 + qJD(4) * t25 + qJD(5) * t50 + qJD(6) * t63 - t590 * t791, qJD(3) * t221 + qJD(4) * t26 + qJD(5) * t51 + qJD(6) * t62 - t592 * t791, qJD(2) * t225 + qJD(3) * t176 + qJD(4) * t14 + qJD(5) * t15, qJD(2) * t34 + qJD(3) * t29 + qJD(4) * t20 + qJD(5) * t23; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(1), t618, 0, 0, 0, 0, 0, 0, t750, t749, 0, qJD(3) * t595 + t618, 0, 0, 0, 0, 0, 0, t754, t753, 0, qJD(3) * t336 + t792, 0, 0, 0, 0, 0, 0, t382 * qJD(5) + t717, qJD(5) * t325 - t725, -t759, qJD(3) * t233 - t805 + t905, 0, 0, 0, 0, 0, 0, t205 * t745 + t102 - t720, t204 * t745 + t103 - t719, t801 + t951, t880 + (-t426 * t590 + t977) * qJD(2) + t104 * qJD(3) + t6 * qJD(4) + t10 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t751, qJD(2) * t595 - t793, 0, 0, 0, 0, 0, 0, 0, 0, -t757, qJD(2) * t336 + t800, 0, 0, 0, 0, 0, 0, -t797, -t758, 0, qJD(2) * t233 + qJD(4) * t144 + t899, 0, 0, 0, 0, 0, 0, t802 + t813, t342 * qJD(4) + t306 * t745 + t774, t806, t885 + t104 * qJD(2) + (-t590 * t846 - t977) * qJD(3) + t28 * qJD(4) + t17 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t494, -t765, -t568, t494, -t571, 0, -qJD(4) * t484 + t606 * t753, qJD(4) * t483 - t606 * t754, 0, 0, -t764 + (-t621 * t753 - t723) * t585 (t564 - t565) * qJD(4) + (-qJD(5) + t754) * t702, t571 * t625 + t796, t764 + (-t620 * t753 + t723) * t585, t557 - t798, t956, t833 + (t625 * t686 - t834) * qJD(4) + t186 * qJD(5), t832 + (t626 * t686 + t835) * qJD(4) + t184 * qJD(5), qJD(4) * t676 - t858, t144 * qJD(3) + (-t484 * pkin(4) + pkin(8) * t676) * qJD(4) + t681 -(t788 + t794) * t430 + t974, t779 + (t848 + t867) * qJD(4) + t823, t305 * t745 + t571 * t592 + t775 -(qJD(4) * t590 + t964) * t846 - t974, -t571 * t590 + t803 + t813, t954 (t384 * t590 - t587 * t701 - t609 * t846) * qJD(4) + t37 * qJD(5) + t56 * qJD(6) + t675, t342 * qJD(3) + (t384 * t592 - t430 * t609 - t512 * t587) * qJD(4) + t38 * qJD(5) + t55 * qJD(6) + t674 (-t147 * t592 - t148 * t590 - t430 * t701 + t512 * t846) * qJD(4) + t4 * qJD(5) + t949, t889 + t6 * qJD(2) + t28 * qJD(3) + (-t147 * t701 + t148 * t512 + t384 * t609) * qJD(4) + t2 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t334, -t645, t693 * t452, t334, t655, t560, qJD(2) * t382 + qJD(4) * t186 - qJD(5) * t280 + t804, qJD(2) * t325 + qJD(4) * t184 + qJD(5) * t279 + t778, 0, 0, t962, t67, t131, -t962, t132, t560, qJD(4) * t37 + qJD(5) * t149 + qJD(6) * t42 + t818 + t903, qJD(4) * t38 - qJD(5) * t150 + qJD(6) * t44 + t819 + t902, t890 + t4 * qJD(4) + (t729 - t862) * t911, t888 + t10 * qJD(2) + t17 * qJD(3) + t2 * qJD(4) + (t149 * t925 + t150 * t624) * t911; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t962, t67, t131, -t962, t132, t560, qJD(4) * t56 + qJD(5) * t42 - qJD(6) * t134 + t818 + t900, qJD(4) * t55 + qJD(5) * t44 + qJD(6) * t133 + t819 + t901, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(1), -t618, 0, 0, 0, 0, 0, 0, -t750, -t749, 0, qJD(3) * t596 - t618, 0, 0, 0, 0, 0, 0, -t754, -t753, 0, qJD(3) * t337 - t792, 0, 0, 0, 0, 0, 0, t381 * qJD(5) - t717, -qJD(5) * t324 + t725, t759, qJD(3) * t234 + t805 + t905, 0, 0, 0, 0, 0, 0, -t202 * t745 + t102 + t720, -t203 * t745 + t103 + t719, -t801 + t951, qJD(3) * t105 - qJD(4) * t5 - qJD(5) * t9 - t880; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t254 * qJD(4), 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4) * t155; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t752, 0, 0, 0, 0, 0, 0, 0, 0, 0, t769, 0, 0, 0, 0, 0, 0, 0, 0, 0, t773, 0, 0, 0, 0, 0, 0, 0, 0, 0, t735 + t808; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t568, -t571, 0, 0, 0, 0, 0, 0, 0, 0, -t452 * qJD(5) - t568 * t626, -qJD(5) * t457 + t568 * t625, t463 * qJD(4) (pkin(8) * t463 - t922) * qJD(4) - t672, 0, 0, 0, 0, 0, 0, t309 * t745 + t568 * t590 + t782, t308 * t745 + t568 * t592 + t781, -qJD(4) * t225 + t861 (t432 * t512 + t585 * t609 + t856) * qJD(4) + t48 * qJD(5) + t643; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t683 + t766, -qJD(4) * t457 + t722 - t799, 0, 0, 0, 0, 0, 0, 0, 0, t70, t69, 0, -t908 + t48 * qJD(4) + (t426 * t624 - t430 * t925) * t911; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t70, t69, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t751, -qJD(2) * t596 + t793, 0, 0, 0, 0, 0, 0, t571, -t568, t757, -qJD(2) * t337 - t800, 0, 0, 0, 0, 0, 0, -t437 + t557 + t797, t683 + t758, t461 * qJD(4), -qJD(2) * t234 - qJD(4) * t143 - t899, 0, 0, 0, 0, 0, 0, -qJD(4) * t339 - t802 - t814, -t341 * qJD(4) - t303 * t745 - t774, -qJD(4) * t125 - t806, -qJD(2) * t105 - qJD(4) * t27 - qJD(5) * t16 - t885; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t752, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t769, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t773, 0, 0, 0, 0, 0, 0, 0, 0, 0, t735 - t808; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t753, -t754, 0, 0, 0, 0, 0, 0, 0, 0, t716, -t762, t760, -t780, 0, 0, 0, 0, 0, 0, -t768, -t964, -t807 + t815, t673 + t822; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t409, t668, 0, 0, 0, 0, 0, 0, 0, 0, t232, t231, t789 (-t590 * t624 - t592 * t925) * t911 + t671; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t232, t231, t789, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t494, t765, 0, -t494, 0, 0, -t694 * t587, t694 * t585, 0, 0, t494 * t621 - t764, t655 * t970, qJD(5) * t455 - t796, t494 * t620 + t764, -t437 + t798, -t956, t185 * qJD(5) - t587 * t790 - t833, qJD(3) * t452 + qJD(5) * t183 - t832, -qJD(3) * t461 + t858, qJD(3) * t143 - t681, t430 * t794 + t974, -t779 + t823, -t302 * t745 - t775, t846 * t964 - t974, -t803 - t814, -t954, qJD(3) * t339 - qJD(5) * t36 - qJD(6) * t53 - t675, qJD(3) * t341 - qJD(5) * t35 - qJD(6) * t54 - t674, qJD(3) * t125 - qJD(5) * t3 - t949, qJD(2) * t5 + qJD(3) * t27 - qJD(5) * t1 - t889; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t672, 0, 0, 0, 0, 0, 0, -t301 * t745 - t782, -t304 * t745 - t781, -t861, -qJD(5) * t47 - t643; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t753, t754, 0, 0, 0, 0, 0, 0, 0, 0, -t716, t762, -t760, t780, 0, 0, 0, 0, 0, 0, t768, t964, t807 + t815, -t673 + t822; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t718, t601 * qJD(5), 0, -t718, 0, 0, -pkin(4) * t785, -pkin(4) * t784, 0, 0, -t590 * t697, t745 * t423, 0, t592 * t696, 0, 0, qJD(5) * t441 + t592 * t783, qJD(5) * t442 - t590 * t783, 0, qJD(5) * t208; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t397, -t644, t761 + t784, -t397, t409, -t756, -pkin(8) * t784 - t664, pkin(8) * t785 - t665, 0, 0, -t963, t139, t230, t963, t232, -t756, -t952 - t960, -t670 + t961 (t728 - t845) * t911 - t965 (-t512 * t925 - t624 * t701) * t911 + t634; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t963, t139, t230, t963, t232, -t756, -t953 - t960, -t656 + t961, t772, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t334, t645, -qJD(4) * t455 + t494 * t625, -t334, t450 * qJD(4) + t585 * t716, t560, -qJD(2) * t381 + qJD(3) * t450 - qJD(4) * t185 - t804, t324 * qJD(2) - t183 * qJD(4) + t585 * t790 - t778, 0, 0, -t962, -t67, t193, t962, t194, t560, qJD(4) * t36 + qJD(6) * t41 + t821 - t903, qJD(4) * t35 + qJD(6) * t43 + t820 - t902, qJD(4) * t3 - t890, qJD(2) * t9 + qJD(3) * t16 + qJD(4) * t1 - t888; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t766, t799, 0, 0, 0, 0, 0, 0, 0, 0, t145, t146, 0, qJD(4) * t47 + t908; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t763, t717, 0, 0, 0, 0, 0, 0, 0, 0, t284, t288, -t789, -t671; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t397, t644, -t761, t397, t763, t756, t664, t665, 0, 0, t963, -t139, t286, -t963, t284, t756, t952, t770 + t670, t965, -t634; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(6) * t916, -pkin(5) * t703, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t745 * t916 + t875, t870 + (-t704 - t703) * pkin(5), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t962, -t67, t193, t962, t194, t560, qJD(4) * t53 - qJD(5) * t41 + t821 - t900, qJD(4) * t54 - qJD(5) * t43 + t820 - t901, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t145, t146, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t284, t288, -t789, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t963, -t139, t286, -t963, t284, t756, t953, t770 + t656, -t772, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t624 * t911 - t875, pkin(5) * t704 - t870, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t7;
