% Calculate minimal parameter regressor of coriolis matrix for
% S6RRRPPR8
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d6]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x32]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 16:10
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RRRPPR8_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPPR8_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPPR8_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPPR8_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 16:09:34
% EndTime: 2019-03-09 16:10:13
% DurationCPUTime: 23.60s
% Computational Cost: add. (10010->943), mult. (24290->1222), div. (0->0), fcn. (24925->8), ass. (0->659)
t517 = sin(pkin(6));
t521 = sin(qJ(2));
t808 = t517 * t521;
t479 = qJ(4) * t808;
t524 = cos(qJ(2));
t419 = (pkin(2) * t521 - pkin(9) * t524) * t517;
t520 = sin(qJ(3));
t393 = t520 * t419;
t868 = cos(pkin(6));
t698 = pkin(1) * t868;
t418 = pkin(8) * t808 - t524 * t698;
t523 = cos(qJ(3));
t394 = t523 * t418;
t768 = t393 / 0.2e1 - t394 / 0.2e1;
t700 = t479 + t768;
t807 = t517 * t523;
t412 = t520 * t868 + t521 * t807;
t518 = qJ(4) + pkin(5);
t497 = t868 * t523;
t410 = t520 * t808 - t497;
t904 = -pkin(4) - pkin(10);
t716 = pkin(3) - t904;
t646 = t716 * t410;
t600 = t412 * t518 - t646;
t905 = pkin(3) + pkin(4);
t929 = t410 * t905;
t928 = t523 * t905;
t927 = t716 * t523;
t750 = qJD(1) * t412;
t272 = t410 * t750;
t796 = t520 * t410;
t820 = t412 * t523;
t917 = -t796 / 0.2e1 + t820 / 0.2e1;
t918 = -t917 * qJD(2) + t272;
t719 = t523 * qJD(2);
t487 = t520 * t719;
t912 = t917 * qJD(1) + t487;
t519 = sin(qJ(6));
t244 = t412 * t519;
t746 = qJD(2) * t520;
t486 = t519 * t746;
t910 = t244 * qJD(1) + t486;
t508 = t517 ^ 2;
t516 = t524 ^ 2;
t812 = t508 * t516;
t907 = t412 ^ 2;
t908 = t907 + t812;
t926 = qJD(4) * t908;
t720 = t517 * qJD(3);
t478 = t524 * t720;
t925 = qJD(1) * t908 + t412 * t746 - t478;
t506 = t520 * qJ(4);
t651 = -pkin(3) * t523 - t506;
t718 = t523 * qJD(4);
t924 = qJD(3) * t651 + t718;
t749 = qJD(1) * t524;
t696 = t517 * t749;
t465 = -qJD(3) + t696;
t240 = t465 * t410;
t922 = t465 * t412;
t806 = t517 * t524;
t494 = pkin(8) * t806;
t495 = t521 * t698;
t420 = t494 + t495;
t382 = pkin(9) * t868 + t420;
t875 = pkin(9) * t521;
t618 = -pkin(2) * t524 - t875;
t560 = (-pkin(1) + t618) * t517;
t222 = t523 * t382 + t520 * t560;
t480 = qJ(4) * t806;
t199 = -t480 + t222;
t921 = (t199 / 0.2e1 - t222 / 0.2e1) * t520;
t819 = t907 * t519;
t522 = cos(qJ(6));
t826 = t907 * t522;
t167 = t410 * qJ(5) + t222;
t91 = t167 - t480;
t920 = t91 - t167;
t234 = t917 * qJD(3);
t744 = qJD(2) * t524;
t682 = t517 * t744;
t633 = t523 * t682;
t919 = t520 * t633 + t234;
t386 = t523 * t410;
t821 = t412 * t520;
t174 = -t386 - t821;
t695 = t522 * t719;
t631 = t519 * t695;
t512 = t519 ^ 2;
t514 = t522 ^ 2;
t482 = t514 - t512;
t647 = qJD(3) * t482;
t916 = 0.2e1 * t631 - t647;
t872 = pkin(2) + t506;
t915 = pkin(5) * t520 + t872 + t927;
t778 = t523 * t524;
t657 = -t778 / 0.2e1;
t628 = t517 * t657;
t781 = t523 * qJ(5);
t468 = pkin(9) * t523 - t781;
t885 = t468 / 0.2e1;
t914 = t412 * t885 - t628 * t716;
t475 = t808 / 0.2e1;
t399 = t520 * t475 - t497 / 0.2e1;
t913 = -qJD(6) * t399 - t918;
t717 = t523 * qJD(6);
t911 = t717 / 0.2e1 + t912;
t503 = qJD(6) * t519;
t909 = t503 + t910;
t906 = pkin(3) / 0.2e1;
t903 = -qJ(4) / 0.2e1;
t120 = -pkin(5) * t806 + t91;
t902 = -t120 / 0.2e1;
t901 = t167 / 0.2e1;
t398 = t412 * pkin(3);
t825 = t410 * qJ(4);
t264 = t398 + t825;
t873 = t412 * pkin(4);
t201 = -t264 - t873;
t900 = -t201 / 0.2e1;
t392 = t520 * t418;
t899 = t392 / 0.2e1;
t898 = -t398 / 0.2e1;
t897 = -t410 / 0.2e1;
t896 = t410 / 0.2e1;
t895 = -t412 / 0.2e1;
t894 = t412 / 0.2e1;
t893 = t419 / 0.2e1;
t421 = t872 + t928;
t892 = t421 / 0.2e1;
t782 = t523 * qJ(4);
t423 = -t520 * t905 + t782;
t891 = -t423 / 0.2e1;
t705 = t517 * t778;
t445 = t519 * t705;
t890 = -t445 / 0.2e1;
t457 = -pkin(2) + t651;
t889 = t457 / 0.2e1;
t797 = t520 * qJ(5);
t466 = pkin(9) * t520 - t797;
t888 = t466 / 0.2e1;
t467 = pkin(3) * t520 - t782;
t887 = -t467 / 0.2e1;
t886 = -t468 / 0.2e1;
t884 = t518 / 0.2e1;
t883 = -t520 / 0.2e1;
t882 = t520 / 0.2e1;
t881 = -t522 / 0.2e1;
t880 = -t523 / 0.2e1;
t879 = t523 / 0.2e1;
t878 = t905 / 0.2e1;
t877 = -t905 / 0.2e1;
t874 = t410 * pkin(3);
t221 = t382 * t520 - t523 * t560;
t397 = t412 * qJ(5);
t166 = t221 - t397;
t200 = pkin(3) * t806 + t221;
t121 = pkin(4) * t806 + t200 - t397;
t109 = pkin(10) * t806 + t121;
t381 = -pkin(2) * t868 + t418;
t55 = t109 * t519 - t522 * (-t381 + t600);
t783 = t522 * t524;
t470 = t517 * t783;
t823 = t410 * t519;
t648 = -t470 + t823;
t772 = t120 - t167;
t103 = -t410 * t518 + t412 * t904 - t398;
t791 = t522 * t103;
t7 = -t166 * t648 + t55 * t410 + (t519 * t772 + t791) * t412;
t871 = t7 * qJD(1);
t248 = t410 * t522;
t707 = t519 * t806;
t298 = t707 + t248;
t822 = t412 * qJ(4);
t530 = -t381 + t822;
t56 = t522 * t109 + (t412 * pkin(5) + t530 - t646) * t519;
t805 = t519 * t103;
t8 = -t166 * t298 + t56 * t410 + (t522 * t772 - t805) * t412;
t870 = t8 * qJD(1);
t766 = t393 - t394;
t229 = t479 + t766;
t794 = t520 * t524;
t703 = qJ(5) * t794;
t168 = (pkin(5) * t521 + t703) * t517 + t229;
t792 = t521 * t522;
t358 = (t519 * t794 + t792) * t517;
t645 = t716 * t520;
t464 = t523 * t480;
t699 = t464 - t420;
t165 = (pkin(5) * t523 - t645) * t806 + t699;
t789 = t522 * t165;
t779 = t523 * t419;
t649 = t392 + t779;
t702 = qJ(5) * t778;
t148 = (-t521 * t716 - t702) * t517 - t649;
t804 = t519 * t148;
t71 = t789 - t804;
t9 = t120 * t358 + t168 * t648 + t412 * t71 - t55 * t705;
t869 = t9 * qJD(1);
t22 = -t120 * t648 + t412 * t55;
t867 = qJD(1) * t22;
t23 = t120 * t298 - t412 * t56;
t866 = qJD(1) * t23;
t138 = t530 - t929;
t43 = -t138 * t410 + t166 * t806 + t201 * t412;
t865 = qJD(1) * t43;
t101 = t138 * t412;
t44 = t167 * t806 - t201 * t410 - t101;
t864 = qJD(1) * t44;
t571 = t138 * t882 + t412 * t892;
t550 = t899 + t571;
t574 = (t886 + t781 / 0.2e1) * t524;
t658 = t779 / 0.2e1;
t715 = t906 + pkin(4) / 0.2e1;
t58 = t658 + (t521 * t715 + t574) * t517 + t550;
t863 = qJD(1) * t58;
t59 = -t121 * t412 + t410 * t91;
t862 = qJD(1) * t59;
t198 = -t530 + t874;
t709 = t221 * t806;
t60 = -t198 * t410 + t264 * t412 - t709;
t861 = qJD(1) * t60;
t708 = t222 * t806;
t848 = t198 * t412;
t61 = t264 * t410 + t708 + t848;
t860 = qJD(1) * t61;
t62 = -t806 * t91 + t101;
t859 = qJD(1) * t62;
t73 = t199 * t806 + t848;
t858 = qJD(1) * t73;
t99 = -t381 * t410 - t709;
t857 = qJD(1) * t99;
t793 = t521 * t519;
t359 = (t520 * t783 - t793) * t517;
t790 = t522 * t148;
t803 = t519 * t165;
t72 = t790 + t803;
t10 = t120 * t359 + t168 * t298 - t412 * t72 - t56 * t705;
t856 = t10 * qJD(1);
t855 = t121 * t523;
t854 = t138 * t523;
t853 = t91 * t520;
t852 = t168 * t519;
t851 = t168 * t522;
t664 = t794 / 0.2e1;
t629 = t517 * t664;
t441 = qJ(4) * t629;
t675 = -t806 / 0.2e1;
t624 = t905 * t675;
t654 = t901 - t91 / 0.2e1;
t655 = -t121 / 0.2e1 + t166 / 0.2e1;
t17 = t441 + t654 * t520 + (-t624 - t655) * t523;
t850 = t17 * qJD(1);
t19 = t121 * t167 + t138 * t201 - t166 * t91;
t849 = t19 * qJD(1);
t847 = t198 * t520;
t846 = t198 * t523;
t845 = t199 * t520;
t169 = (-t521 * t905 - t702) * t517 - t649;
t196 = -t517 * t703 - t229;
t706 = t517 * t794;
t230 = -t706 * t905 + t699;
t20 = t121 * t169 + t138 * t230 - t196 * t91;
t844 = t20 * qJD(1);
t843 = t200 * t523;
t21 = t920 * t412 + (t121 - t166) * t410;
t842 = t21 * qJD(1);
t24 = -t169 * t412 - t196 * t410 + (t853 - t855) * t806;
t841 = t24 * qJD(1);
t29 = -t121 * t808 - t138 * t706 + t169 * t806 - t230 * t410;
t840 = t29 * qJD(1);
t839 = t648 * t520;
t838 = t298 * t410;
t837 = t298 * t519;
t836 = t298 * t520;
t835 = t298 * t522;
t834 = t298 * t523;
t30 = t198 * t264 - t199 * t221 + t200 * t222;
t833 = t30 * qJD(1);
t713 = pkin(3) * t808;
t231 = -t649 - t713;
t267 = pkin(3) * t706 - t699;
t31 = t198 * t267 + t199 * t229 + t200 * t231;
t832 = t31 * qJD(1);
t34 = t230 * t412 + (t91 * t521 + (t196 + t854) * t524) * t517;
t831 = t34 * qJD(1);
t665 = -t794 / 0.2e1;
t630 = t517 * t665;
t442 = qJ(4) * t630;
t652 = -t221 / 0.2e1 + t200 / 0.2e1;
t35 = t442 + t921 + (pkin(3) * t675 - t652) * t523;
t830 = t35 * qJD(1);
t829 = t359 * t519;
t828 = t381 * t523;
t39 = (-t199 + t222) * t412 + (-t200 + t221) * t410;
t827 = t39 * qJD(1);
t824 = t410 * t648;
t42 = -t229 * t410 + t231 * t412 + (t843 - t845) * t806;
t818 = t42 * qJD(1);
t45 = -t199 * t808 + t267 * t412 + (t229 + t846) * t806;
t817 = t45 * qJD(1);
t46 = t267 * t410 + (-t200 * t521 + (t231 + t847) * t524) * t517;
t816 = t46 * qJD(1);
t815 = t466 * t519;
t814 = t468 * t519;
t813 = t468 * t522;
t811 = t508 * t521;
t810 = t716 * t412;
t513 = t520 ^ 2;
t809 = t513 * t519;
t802 = t519 * t167;
t801 = t519 * t648;
t353 = t518 * t523 - t645;
t800 = t519 * t353;
t515 = t523 ^ 2;
t499 = t519 * t515;
t799 = t519 * t520;
t798 = t519 * t523;
t795 = t520 * t522;
t788 = t522 * t167;
t787 = t522 * t648;
t786 = t522 * t353;
t785 = t522 * t466;
t784 = t522 * t523;
t780 = t523 * t648;
t65 = t221 * t808 - t381 * t706 - t420 * t410 + t649 * t806;
t777 = t65 * qJD(1);
t66 = t420 * t412 + (-t222 * t521 + (t766 + t828) * t524) * t517;
t776 = t66 * qJD(1);
t562 = t412 * t784 - t836 / 0.2e1;
t67 = (-t839 / 0.2e1 + t359 / 0.2e1) * t522 + (-t358 / 0.2e1 + t562) * t519;
t775 = t67 * qJD(1);
t81 = -t298 * t358 - t359 * t648;
t774 = t81 * qJD(1);
t83 = -t787 - t837;
t84 = t83 * t412;
t773 = t84 * qJD(1);
t668 = t799 / 0.2e1;
t771 = 0.2e1 * t412 * t668;
t371 = -t820 / 0.2e1;
t770 = t796 / 0.2e1 + t371;
t769 = -t392 / 0.2e1 - t779 / 0.2e1;
t481 = t513 + t515;
t483 = t515 - t513;
t100 = -t381 * t412 - t708;
t764 = qJD(1) * t100;
t666 = t795 / 0.2e1;
t547 = t298 * t666 + t371 * t514;
t111 = t829 / 0.2e1 + t547;
t763 = qJD(1) * t111;
t118 = -t819 - t824;
t762 = qJD(1) * t118;
t546 = (t519 * t665 - t792 / 0.2e1) * t517;
t661 = -t784 / 0.2e1;
t555 = t836 / 0.2e1 + t412 * t661;
t122 = t546 + t555;
t761 = qJD(1) * t122;
t545 = (t522 * t664 - t793 / 0.2e1) * t517;
t556 = t839 / 0.2e1 + t519 * t371;
t123 = t545 + t556;
t760 = qJD(1) * t123;
t145 = -t298 * t806 - t819;
t759 = qJD(1) * t145;
t162 = t838 + t826;
t758 = qJD(1) * t162;
t163 = -t824 + t819;
t757 = qJD(1) * t163;
t164 = t826 - t838;
t756 = qJD(1) * t164;
t197 = -t648 * t806 + t826;
t755 = qJD(1) * t197;
t354 = t412 * t795;
t270 = -t445 - t354;
t754 = qJD(1) * t270;
t288 = -t410 * t808 + t520 * t812;
t753 = qJD(1) * t288;
t289 = -t412 * t808 + t523 * t812;
t752 = qJD(1) * t289;
t751 = qJD(1) * t298;
t748 = qJD(2) * t513;
t747 = qJD(2) * t517;
t745 = qJD(2) * t522;
t743 = qJD(3) * t221;
t742 = qJD(3) * t519;
t741 = qJD(3) * t520;
t740 = qJD(3) * t522;
t504 = qJD(3) * t523;
t739 = qJD(4) * t519;
t738 = qJD(4) * t520;
t737 = qJD(4) * t522;
t736 = qJD(5) * t523;
t735 = qJD(5) * t524;
t734 = qJD(6) * t244;
t733 = qJD(6) * t412;
t732 = qJD(6) * t520;
t731 = qJD(6) * t522;
t130 = -t358 * t412 - t648 * t705;
t730 = t130 * qJD(1);
t131 = t298 * t705 + t359 * t412;
t729 = t131 * qJD(1);
t209 = t174 * t806;
t728 = t209 * qJD(1);
t317 = pkin(1) * t811 + t420 * t868;
t724 = t317 * qJD(1);
t318 = t508 * pkin(1) * t524 - t418 * t868;
t723 = t318 * qJD(1);
t722 = t410 * qJD(4);
t395 = t412 * qJD(5);
t425 = (-t521 ^ 2 + t516) * t508;
t721 = t425 * qJD(1);
t502 = t513 * qJD(4);
t714 = t834 / 0.2e1 + t890;
t712 = pkin(9) * t741;
t711 = pkin(9) * t504;
t710 = -pkin(4) / 0.2e1 + t877;
t704 = t412 * t799;
t476 = -t808 / 0.2e1;
t701 = pkin(3) * t476 + t769;
t697 = t522 * t750;
t694 = t410 * t742;
t693 = t519 * t740;
t692 = t519 * t504;
t691 = t522 * t504;
t690 = qJD(4) * t806;
t689 = t520 * t718;
t688 = t517 * t735;
t687 = t412 * t731;
t686 = t520 * t731;
t685 = t520 * t717;
t373 = t412 * t738;
t684 = t508 * t749;
t683 = t521 * t747;
t681 = t519 * t731;
t488 = t520 * t504;
t489 = t520 * t745;
t680 = t166 * t879;
t678 = t423 * t896;
t676 = -t810 / 0.2e1;
t674 = t806 / 0.2e1;
t673 = -t518 * t648 / 0.2e1;
t672 = t298 * t884;
t671 = t358 * t884;
t670 = t359 * t884;
t669 = -t804 / 0.2e1;
t667 = t798 / 0.2e1;
t663 = -t790 / 0.2e1;
t662 = -t787 / 0.2e1;
t660 = -t386 / 0.2e1;
t659 = t386 / 0.2e1;
t656 = t902 + t901;
t650 = t868 * qJD(1);
t217 = t476 + t770;
t643 = qJD(1) * t217 - t487;
t218 = t475 + t917;
t642 = qJD(1) * t218 + t487;
t511 = qJ(4) * qJD(3);
t641 = qJD(1) * t480 - t511;
t639 = -qJD(6) - t750;
t637 = t410 * t690;
t636 = t523 * t690;
t635 = t744 * t811;
t634 = t521 * t684;
t632 = t523 * t696;
t627 = t523 * t674;
t622 = t906 - t710;
t620 = t517 * t650;
t619 = t868 * t747;
t617 = 0.2e1 * t519 * t691;
t615 = t165 / 0.2e1 + t120 * t879;
t614 = t899 + t658;
t613 = t676 + t103 / 0.2e1;
t612 = t464 / 0.2e1 - t494 / 0.2e1 - t495 / 0.2e1;
t611 = -t519 * t750 - t486;
t300 = t489 + t697;
t609 = t713 + t899;
t608 = -t457 * t524 + t875;
t528 = (-t716 * t675 - t166 / 0.2e1) * t523 + t656 * t520;
t253 = -t522 * t915 + t815;
t540 = t253 * t897 + t55 * t879 + t648 * t888;
t551 = t168 / 0.2e1 + t353 * t895 + t103 * t883;
t1 = t519 * t528 + t522 * t551 + t540 + t671;
t74 = t520 * t786 + (-t253 + t815) * t523;
t607 = -t1 * qJD(1) + t74 * qJD(2);
t254 = t519 * t915 + t785;
t538 = t254 * t897 + t298 * t888 + t56 * t879;
t2 = -t519 * t551 + t522 * t528 + t538 + t670;
t601 = t800 + t813;
t75 = t601 * t520 - t468 * t795 + (t254 - t785) * t523;
t606 = -t2 * qJD(1) - t75 * qJD(2);
t605 = t715 * t806;
t155 = t421 * t423;
t570 = t169 * t877 + t196 * t903;
t572 = t138 * t891 + t421 * t900;
t5 = -t466 * t654 + t468 * t655 + t570 + t572;
t603 = -t5 * qJD(1) + t155 * qJD(2);
t602 = t229 * t523 + t231 * t520;
t599 = t650 + qJD(2);
t537 = t254 * t894 + t298 * t886 + t56 * t882;
t11 = t522 * t615 + t537 + t669;
t180 = -t254 * t520 - t468 * t784;
t598 = qJD(1) * t11 - qJD(2) * t180;
t539 = t253 * t895 + t55 * t883 + t648 * t885;
t12 = -t519 * t615 + t539 + t663;
t179 = -t253 * t520 - t468 * t798;
t597 = qJD(1) * t12 + qJD(2) * t179;
t265 = t421 * t523 + t423 * t520;
t529 = -t854 / 0.2e1 + t201 * t883 + t410 * t892 + t412 * t891;
t37 = (t797 / 0.2e1 - t466 / 0.2e1) * t806 + t529 + t700;
t596 = -qJD(1) * t37 + qJD(2) * t265;
t266 = -t421 * t520 + t423 * t523;
t33 = t678 + (t900 + t893) * t523 + (t521 * t622 + t574) * t517 + t550;
t595 = qJD(1) * t33 - qJD(2) * t266;
t313 = t457 * t523 + t467 * t520;
t527 = pkin(9) * t629 - t846 / 0.2e1 + t264 * t883 + t410 * t889 + t412 * t887;
t48 = t527 - t700;
t594 = -qJD(1) * t48 + qJD(2) * t313;
t314 = -t457 * t520 + t467 * t523;
t569 = -t847 / 0.2e1 + t457 * t895;
t535 = t410 * t887 + t569;
t49 = (t893 + t264 / 0.2e1 + pkin(9) * t675) * t523 + t535 + t609;
t593 = qJD(1) * t49 + qJD(2) * t314;
t319 = t466 * t520 + t468 * t523;
t536 = t410 * t886 + t412 * t888 - t880 * t91;
t40 = (t121 / 0.2e1 - t605) * t520 + t536 + t612;
t592 = -qJD(1) * t40 - qJD(2) * t319;
t436 = t499 + t809;
t446 = t523 * t470;
t430 = t446 / 0.2e1;
t76 = t430 + (t823 / 0.2e1 + t648 / 0.2e1) * t523 - t704;
t591 = -qJD(1) * t76 + qJD(2) * t436;
t437 = -t499 + t809;
t431 = -t446 / 0.2e1;
t94 = t431 + t780 / 0.2e1 + (t659 + t821) * t519;
t590 = qJD(1) * t94 + qJD(2) * t437;
t438 = t481 * t522;
t93 = (t659 - t821) * t522 + t714;
t589 = -qJD(1) * t93 + qJD(2) * t438;
t439 = t483 * t522;
t561 = t522 * t660 - t834 / 0.2e1 + t890;
t92 = -t354 + t561;
t588 = -qJD(1) * t92 - qJD(2) * t439;
t587 = (qJD(6) + t746) * t523;
t134 = t412 * t710 - t825 + t898;
t355 = -t520 * t622 + t782;
t586 = qJD(1) * t134 + qJD(2) * t355;
t404 = t410 ^ 2;
t210 = t404 - t907;
t585 = qJD(1) * t210 + qJD(2) * t174;
t584 = qJD(1) * t174 + qJD(2) * t483;
t255 = t386 - t821;
t271 = t907 + t404;
t583 = qJD(1) * t271 - qJD(2) * t255;
t582 = qJD(1) * t255 - qJD(2) * t481;
t581 = qJD(1) * t410 - t719;
t336 = t746 + t750;
t580 = qJD(1) * t470 - t740;
t579 = t229 * t903 + t231 * t906;
t578 = t399 * qJD(1) - t719 / 0.2e1;
t453 = pkin(9) * t627;
t557 = pkin(2) * t895 + t381 * t882 + t453;
t89 = t557 + t769;
t577 = pkin(2) * t746 - qJD(1) * t89;
t558 = pkin(9) * t630 + pkin(2) * t896 + t828 / 0.2e1;
t87 = t558 + t768;
t576 = pkin(2) * t719 - qJD(1) * t87;
t575 = t517 * t618;
t321 = t412 * t632;
t573 = qJD(6) * t628 - t321;
t568 = t518 * t879 - t716 * t882;
t526 = (t523 * t652 - t921) * pkin(9) + t198 * t467 / 0.2e1 + t264 * t889;
t16 = t526 + t579;
t567 = -t457 * t467 * qJD(2) - t16 * qJD(1);
t70 = (pkin(9) * t657 + t521 * t906) * t517 + t569 + t614;
t566 = -qJD(1) * t70 + t457 * t746;
t192 = -t446 + t771;
t565 = qJD(1) * t192 + t519 * t748;
t564 = -qJD(1) * t248 + t695;
t324 = t520 * t750 + t748;
t563 = -qJD(5) * t410 + t690;
t559 = (-t742 + t751) * t412;
t285 = t522 * t639 - t489;
t554 = -t780 / 0.2e1 + t519 * t660;
t549 = t353 / 0.2e1 + t568;
t102 = -t298 ^ 2 + t648 ^ 2;
t80 = (-t801 + t835) * t523;
t548 = qJD(1) * t102 + qJD(2) * t80 - qJD(3) * t83;
t223 = t549 * t519;
t25 = t519 * t613 + t522 * t656 + t673;
t544 = -qJD(1) * t25 - qJD(2) * t223 + t518 * t740;
t224 = t549 * t522;
t27 = t519 * t656 - t522 * t613 + t672;
t543 = -qJD(1) * t27 + qJD(2) * t224 + t518 * t742;
t140 = (t662 - t837 / 0.2e1) * t523;
t159 = -t801 / 0.2e1 + t835 / 0.2e1;
t542 = qJD(2) * t140 + qJD(3) * t159 + t648 * t751;
t422 = (t512 / 0.2e1 - t514 / 0.2e1) * t523;
t541 = -qJD(1) * t159 - qJD(2) * t422 + t693;
t435 = t482 * t515;
t534 = -qJD(1) * t80 + qJD(2) * t435 + t617;
t533 = qJD(1) * t83 + t916;
t532 = (t518 * t520 + t927) * qJD(3) - t718;
t531 = qJD(1) * t140 + qJD(3) * t422 + t499 * t745;
t57 = pkin(4) * t476 + qJ(5) * t628 + t468 * t675 + t571 + t701;
t510 = qJ(4) * qJD(4);
t498 = t504 / 0.2e1;
t490 = t519 * t732;
t469 = qJD(2) * t475;
t454 = -0.2e1 * t523 * t681;
t447 = t468 * qJD(3);
t426 = qJ(4) * t696 - t511;
t415 = -t504 + t632;
t414 = t465 * t519;
t409 = t422 * qJD(6);
t403 = (-t715 + t878) * t520;
t383 = (t684 - t720 / 0.2e1) * t521;
t299 = t581 * t519;
t293 = qJD(2) * t627 - t399 * qJD(3);
t269 = t336 * t806;
t268 = t581 * t806;
t241 = t255 * qJD(5);
t219 = t476 + t917;
t216 = t475 + t770;
t213 = t222 * qJD(3);
t193 = t412 * t878 + t898 - t873 / 0.2e1;
t182 = -t814 + t786 / 0.2e1 - t568 * t522;
t181 = -t813 - t800 / 0.2e1 + t568 * t519;
t172 = (-qJD(3) * t410 + t633) * t412;
t170 = t174 * qJD(3);
t156 = t159 * qJD(6);
t137 = t140 * qJD(6);
t125 = t546 - t555;
t124 = t545 - t556;
t112 = -t829 / 0.2e1 + t547;
t97 = t561 + t354;
t96 = t522 * t659 + t354 + t714;
t95 = t431 + t554 - t704;
t90 = t557 + t614;
t88 = t558 - t768;
t82 = t83 * qJD(6);
t79 = t80 * qJD(6);
t77 = t430 + t554 + t771;
t69 = pkin(9) * t628 + t569 + t701;
t68 = t359 * t881 + t520 * t662 + (t358 / 0.2e1 + t562) * t519;
t50 = t264 * t880 + t453 - t535 + t609 + t658;
t47 = t527 + t700;
t41 = t121 * t883 - t520 * t605 - t536 + t612;
t38 = qJ(5) * t629 + t466 * t674 - t529 + t700;
t36 = t221 * t880 - t845 / 0.2e1 + t222 * t882 + t843 / 0.2e1 + t442 + pkin(3) * t628;
t32 = t201 * t880 - t475 * t905 + t57 + t678;
t28 = -t810 * t881 + t672 + t519 * t902 - t802 / 0.2e1 + t791 / 0.2e1;
t26 = t519 * t676 + t673 + t120 * t881 - t788 / 0.2e1 - t805 / 0.2e1;
t18 = t167 * t883 - t855 / 0.2e1 + t680 + t853 / 0.2e1 - t523 * t624 + t441;
t15 = t526 - t579;
t14 = t120 * t661 + t669 + t789 / 0.2e1 - t537;
t13 = t120 * t667 + t663 - t803 / 0.2e1 - t539;
t6 = t121 * t885 + t166 * t886 - t888 * t920 + t570 - t572;
t4 = t601 * t895 + (t788 + t805) * t883 + t120 * t666 + t670 - t852 / 0.2e1 - t538 + (t680 + t914) * t522;
t3 = (t786 - t814) * t894 + (t791 - t802) * t882 + t166 * t667 + t120 * t668 + t671 + t851 / 0.2e1 - t540 + t914 * t519;
t51 = [0, 0, 0, t635, t425 * qJD(2), t524 * t619, -t521 * t619, 0, -t317 * qJD(2), -t318 * qJD(2), t172, qJD(2) * t209 + qJD(3) * t210, -qJD(2) * t289 + t410 * t478, qJD(2) * t288 + t412 * t478, -t635, -qJD(2) * t65 - qJD(3) * t100, qJD(2) * t66 + qJD(3) * t99, qJD(2) * t46 + qJD(3) * t61 - t412 * t722, qJD(2) * t42 + qJD(3) * t39 + t637, -qJD(2) * t45 - qJD(3) * t60 + t926, qJD(2) * t31 + qJD(3) * t30 - qJD(4) * t73, qJD(2) * t34 + qJD(3) * t43 - t410 * t688 + t926, -qJD(2) * t29 - qJD(3) * t44 + (t688 + t722) * t412, qJD(2) * t24 + qJD(3) * t21 + qJD(5) * t271 - t637, qJD(2) * t20 + qJD(3) * t19 + qJD(4) * t62 + qJD(5) * t59 (qJD(2) * t359 - qJD(6) * t648 + t412 * t740) * t298, qJD(2) * t81 + qJD(3) * t84 + qJD(6) * t102, qJD(2) * t131 + qJD(3) * t164 - t648 * t733, qJD(2) * t130 - qJD(3) * t163 - t298 * t733, t172, qJD(2) * t9 + qJD(3) * t7 + qJD(4) * t197 - qJD(5) * t118 + qJD(6) * t23, qJD(2) * t10 + qJD(3) * t8 + qJD(4) * t145 + qJD(5) * t162 + qJD(6) * t22; 0, 0, 0, t634, t721, t599 * t806, -t599 * t808, 0, -qJD(2) * t420 - t724, qJD(2) * t418 - t723, t321 + t919, t483 * t682 + t170 + t728, t520 * t683 - t752, t523 * t683 + t753, -t383, -t777 + (-t420 * t523 + t520 * t575) * qJD(2) + t90 * qJD(3), t776 + (t420 * t520 + t523 * t575) * qJD(2) + t88 * qJD(3), t816 + (-t517 * t520 * t608 - t267 * t523) * qJD(2) + t50 * qJD(3) + t219 * qJD(4), qJD(2) * t602 + t36 * qJD(3) + t818, -t817 + (-t267 * t520 + t608 * t807) * qJD(2) + t47 * qJD(3) + t373, t832 + (pkin(9) * t602 + t267 * t457) * qJD(2) + t15 * qJD(3) + t69 * qJD(4), t230 * t746 + t831 + t38 * qJD(3) + t373 + ((t421 * t778 + t468 * t521) * qJD(2) + t523 * t735) * t517, -t230 * t719 - t840 + t32 * qJD(3) + t216 * qJD(4) + ((t421 * t794 + t466 * t521) * qJD(2) + t520 * t735) * t517, t841 + (-t169 * t520 + t196 * t523 + (-t466 * t523 + t468 * t520) * t806) * qJD(2) + t18 * qJD(3) - t241, t844 + (t169 * t466 - t196 * t468 + t230 * t421) * qJD(2) + t6 * qJD(3) + t57 * qJD(4) + t41 * qJD(5), qJD(3) * t112 - t137 + (-t695 + t751) * t359, t774 + t68 * qJD(3) + t79 + (t358 * t522 + t829) * t719, t729 + (t359 * t520 - t470 * t515) * qJD(2) + t96 * qJD(3) + t124 * qJD(6), t730 + (-t358 * t520 + t515 * t707) * qJD(2) + t95 * qJD(3) + t125 * qJD(6), -t573 + t919, t869 + (t358 * t468 + t520 * t71 + (-t253 * t806 - t852) * t523) * qJD(2) + t3 * qJD(3) + t522 * t373 + t77 * qJD(5) + t14 * qJD(6), t856 + (t359 * t468 - t520 * t72 + (-t254 * t806 - t851) * t523) * qJD(2) + t4 * qJD(3) - t704 * qJD(4) + t97 * qJD(5) + t13 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t918, t585, t240, t922, t469, qJD(2) * t90 - t213 - t764, qJD(2) * t88 + t743 + t857, qJD(2) * t50 - t213 + t860, t827 + t36 * qJD(2) + (-t822 + t874) * qJD(3) - t722, qJD(2) * t47 - t690 - t743 - t861, t833 + t15 * qJD(2) + (-pkin(3) * t222 - qJ(4) * t221) * qJD(3) + t199 * qJD(4), qJD(2) * t38 - qJD(3) * t166 - t690 + t865, qJD(2) * t32 + qJD(3) * t167 - t864, t842 + t18 * qJD(2) + (t822 - t929) * qJD(3) + t722, t849 + t6 * qJD(2) + (-t166 * qJ(4) - t167 * t905) * qJD(3) + t91 * qJD(4) + t193 * qJD(5), qJD(2) * t112 + t522 * t559 - t156, t68 * qJD(2) - t412 * t647 + t773 - t82, qJD(2) * t96 + t694 + t756, qJD(2) * t95 + t410 * t740 - t757, t913, t871 + t3 * qJD(2) + (-t166 * t522 + t519 * t600) * qJD(3) + t648 * qJD(4) + t28 * qJD(6), t870 + t4 * qJD(2) + (t166 * t519 + t522 * t600) * qJD(3) + qJD(4) * t298 + t26 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(2) * t219 - t272, t240, t925, qJD(2) * t69 + qJD(3) * t199 - t858, t925, qJD(2) * t216 + t272, -t240, qJD(2) * t57 + qJD(3) * t91 + t859, 0, 0, 0, 0, 0, qJD(3) * t648 + t412 * t489 + t755, -qJD(2) * t704 + qJD(3) * t298 + t759; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t268, t269, t583, qJD(2) * t41 + qJD(3) * t193 + t862, 0, 0, 0, 0, 0, qJD(2) * t77 - t762, qJD(2) * t97 + t758; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t542, t548, qJD(2) * t124 + t639 * t648, qJD(2) * t125 + t298 * t639, t293, qJD(2) * t14 + qJD(3) * t28 - qJD(6) * t56 + t866, qJD(2) * t13 + qJD(3) * t26 + qJD(6) * t55 + t867; 0, 0, 0, -t634, -t721, -t524 * t620, t521 * t620, 0, t724, t723, -t321 + t234, t170 - t728, -t478 * t523 + t752, t478 * t520 - t753, t383, qJD(3) * t89 + t777, qJD(3) * t87 - t776, -qJD(3) * t49 + qJD(4) * t218 - t816, -qJD(3) * t35 - t636 - t818, qJD(3) * t48 + t373 + t817, qJD(3) * t16 + qJD(4) * t70 - t832, -qJD(3) * t37 + t373 - t831, qJD(3) * t33 + qJD(4) * t217 + t840, -qJD(3) * t17 - t241 + t636 - t841, -qJD(3) * t5 + qJD(4) * t58 - qJD(5) * t40 - t844, qJD(3) * t111 - t359 * t751 - t137, qJD(3) * t67 - t774 + t79, -qJD(3) * t92 - qJD(6) * t123 - t729, -qJD(3) * t94 - qJD(6) * t122 - t730, t234 + t573, -qJD(3) * t1 - qJD(4) * t270 - qJD(5) * t76 - qJD(6) * t11 - t869, -qJD(3) * t2 - qJD(4) * t192 - qJD(5) * t93 - qJD(6) * t12 - t856; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t488, t483 * qJD(3), 0, 0, 0, -pkin(2) * t741, -pkin(2) * t504, -qJD(3) * t314 + t689, 0, -qJD(3) * t313 + t502 (qJD(3) * t467 - t738) * t457, qJD(3) * t265 + t502, -qJD(3) * t266 - t689, qJD(5) * t481, qJD(3) * t155 - qJD(5) * t319 + t421 * t738, -t488 * t514 - t515 * t681, -qJD(6) * t435 + t520 * t617, -qJD(3) * t439 + t519 * t685, -qJD(3) * t437 + t522 * t685, t488, qJD(3) * t74 + qJD(5) * t436 + qJD(6) * t180 + t502 * t522, -qJD(3) * t75 + qJD(5) * t438 - qJD(6) * t179 - t502 * t519; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t912, t584, -t415, t465 * t520, qJD(1) * t476, -t577 - t711, -t576 + t712, -t593 - t711, -t830 + t924, -t594 - t712, pkin(9) * t924 - t567, -qJD(3) * t466 + t596, t447 + t595, -t850 + (t506 + t928) * qJD(3) - t718 (-t466 * qJ(4) - t468 * t905) * qJD(3) + t468 * qJD(4) + t403 * qJD(5) + t603, t763 - t409 + (-t514 * t719 - t693) * t520, t520 * t916 + t454 + t775, t588 - t692, -t590 - t691, t911, t182 * qJD(6) - t466 * t740 + t519 * t532 + t607, t181 * qJD(6) + t466 * t742 + t522 * t532 + t606; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t642, -t415, t324, -t566 + t711, t324, t643, t415, t421 * t746 + t447 + t863, 0, 0, 0, 0, 0, t513 * t745 - t692 - t754, -t565 - t691; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t582, qJD(3) * t403 + t592, 0, 0, 0, 0, 0, t591, t589; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t531, -t534, t519 * t587 - t760, t522 * t587 - t761, qJD(1) * t628 + t498, qJD(3) * t182 - qJD(6) * t254 - t598, qJD(3) * t181 + qJD(6) * t253 - t597; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t918, -t585, -t268, -t269, t469, -qJD(2) * t89 + t764, -qJD(2) * t87 - t857, qJD(2) * t49 - t860, qJD(2) * t35 - t827, -qJD(2) * t48 - t690 + t861, -qJ(4) * t690 - qJD(2) * t16 - t833, qJD(2) * t37 - t563 - t865, -qJD(2) * t33 - t395 + t864, qJD(2) * t17 - t842, qJD(2) * t5 - qJD(4) * t480 - qJD(5) * t134 - t849, -qJD(2) * t111 - t298 * t697 - t156, -qJD(2) * t67 - t773 - t82, qJD(2) * t92 - t687 - t756, qJD(2) * t94 + t412 * t503 + t757, -t913, qJD(2) * t1 - qJD(4) * t470 + qJD(5) * t248 + qJD(6) * t27 - t871, qJD(2) * t2 + qJD(6) * t25 + t519 * t563 - t870; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t912, -t584, t632, -t520 * t696, qJD(1) * t475, t577, t576, t593, t830, t594, t567, -t596 - t736, -qJD(5) * t520 - t595, t850, -qJD(5) * t355 - t603, t487 * t514 - t409 - t763, -0.2e1 * t520 * t631 + t454 - t775, -t588 - t686, t490 + t590, -t911, -qJD(6) * t224 - t522 * t736 - t607, qJD(6) * t223 + t519 * t736 - t606; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(4), t510, qJD(4), 0, 0, t510, t681, t482 * qJD(6), 0, 0, 0, -t503 * t518 + t737, -t518 * t731 - t739; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t465, -t426, -t465, 0, 0, -t641, 0, 0, 0, 0, 0, -t580, t414; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t581, -t336, 0, -t586, 0, 0, 0, 0, 0, -t564, -t299; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t541, -t533, t285, t503 - t611, t578, t716 * t731 - t543, -t503 * t716 - t544; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(2) * t218 + t272, -t268, -t925, qJ(4) * t478 - qJD(2) * t70 + t858, -t925, -qJD(2) * t217 - t272, t268, -qJD(2) * t58 + qJD(3) * t480 - t395 - t859, 0, 0, 0, 0, 0, qJD(2) * t270 + qJD(3) * t470 - t687 - t755, qJD(2) * t192 - t478 * t519 + t734 - t759; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t642, t632, -t324, t566, -t324, -t643, -t632, -t863 + (-qJD(2) * t421 - qJD(5)) * t520, 0, 0, 0, 0, 0, t754 + (-t732 - t748) * t522, t490 + t565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t465, t426, t465, 0, 0, t641, 0, 0, 0, 0, 0, t580, -t414; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t336, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t285, t909; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t240, -t922, -t583, qJD(2) * t40 + qJD(3) * t134 + qJD(4) * t412 - t862, 0, 0, 0, 0, 0, qJD(2) * t76 - qJD(3) * t248 - t734 + t762, qJD(2) * t93 - t687 + t694 - t758; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t504, t741, t582, qJD(3) * t355 - t592 + t738, 0, 0, 0, 0, 0, -t490 - t591 + t691, -t589 - t686 - t692; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t581, t336, 0, t586, 0, 0, 0, 0, 0, t564, t299; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t336, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t909, t285; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t542, -t548, qJD(2) * t123 + (qJD(1) * t648 + t740) * t412, qJD(2) * t122 + t559, t293, qJD(2) * t11 - qJD(3) * t27 + qJD(5) * t244 + t412 * t737 - t866, qJD(2) * t12 - qJD(3) * t25 - qJD(4) * t244 + t395 * t522 - t867; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t531, t534, t760 + (-t519 * t719 + t740) * t520, t761 + (-t695 - t742) * t520, qJD(1) * t627 + t498, qJD(3) * t224 + (qJD(5) * t519 + t737) * t520 + t598, -qJD(3) * t223 + (qJD(5) * t522 - t739) * t520 + t597; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t541, t533, t300, t611, -t578, t543, t544; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t300, -t910; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t910, t300; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t51;
