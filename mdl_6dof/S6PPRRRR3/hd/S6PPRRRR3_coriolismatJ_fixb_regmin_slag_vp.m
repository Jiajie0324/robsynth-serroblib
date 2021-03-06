% Calculate minimal parameter regressor of coriolis matrix for
% S6PPRRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d3,d4,d5,d6,theta1,theta2]';
% 
% Output:
% cmat_reg [(6*%NQJ)%x26]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 19:12
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6PPRRRR3_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(14,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRRR3_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PPRRRR3_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6PPRRRR3_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [14x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 19:11:44
% EndTime: 2019-03-08 19:12:14
% DurationCPUTime: 15.99s
% Computational Cost: add. (11684->813), mult. (35063->1263), div. (0->0), fcn. (42260->16), ass. (0->593)
t537 = sin(qJ(6));
t539 = sin(qJ(4));
t884 = cos(pkin(8));
t706 = t539 * t884;
t536 = sin(pkin(8));
t543 = cos(qJ(4));
t843 = t536 * t543;
t477 = pkin(3) * t706 + pkin(10) * t843;
t462 = pkin(11) * t884 + t477;
t672 = -pkin(4) * t543 - pkin(11) * t539;
t463 = (-pkin(3) + t672) * t536;
t538 = sin(qJ(5));
t542 = cos(qJ(5));
t310 = t538 * t462 - t542 * t463;
t295 = pkin(5) * t843 + t310;
t711 = t310 / 0.2e1 - t295 / 0.2e1;
t920 = t537 * t711;
t541 = cos(qJ(6));
t919 = t541 * t711;
t540 = sin(qJ(3));
t883 = sin(pkin(6));
t661 = t883 * sin(pkin(14));
t891 = cos(qJ(3));
t662 = cos(pkin(14)) * t883;
t882 = sin(pkin(7));
t885 = cos(pkin(7));
t886 = cos(pkin(6));
t916 = t885 * t662 + t886 * t882;
t553 = t540 * t661 - t891 * t916;
t557 = -t662 * t882 + t885 * t886;
t918 = -t557 * t536 + t553 * t884;
t677 = t882 * t891;
t560 = -t536 * t677 + t884 * t885;
t558 = t560 * t536;
t640 = -t677 / 0.2e1;
t917 = t558 / 0.2e1 + t640;
t663 = t884 * t882;
t915 = t885 * t536 + t891 * t663;
t845 = t536 * t539;
t472 = t538 * t845 - t542 * t884;
t331 = t541 * t472;
t714 = -t331 / 0.2e1;
t758 = t537 * t843;
t707 = t538 * t884;
t844 = t536 * t542;
t474 = t539 * t844 + t707;
t814 = t541 * t474;
t404 = -t758 + t814;
t855 = t404 * t542;
t914 = t538 * t714 + t855 / 0.2e1;
t830 = t537 * t538;
t721 = -t830 / 0.2e1;
t810 = t541 * t543;
t756 = t536 * t810;
t832 = t537 * t474;
t402 = t756 + t832;
t858 = t402 * t542;
t596 = t472 * t721 + t858 / 0.2e1;
t531 = t537 ^ 2;
t533 = t541 ^ 2;
t516 = t533 - t531;
t913 = qJD(5) * t516;
t897 = -t538 / 0.2e1;
t729 = t472 * t897;
t894 = t542 / 0.2e1;
t617 = t474 * t894 + t729;
t912 = t617 * qJD(5);
t770 = t542 * qJD(4);
t520 = t538 * t770;
t700 = qJD(3) * t617 + t520;
t776 = t472 * qJD(3);
t612 = -qJD(4) * t617 + t474 * t776;
t911 = t472 ^ 2;
t910 = -t402 / 0.2e1;
t909 = t402 / 0.2e1;
t908 = -t404 / 0.2e1;
t907 = t404 / 0.2e1;
t510 = t541 * t845;
t443 = t542 * t758 - t510;
t906 = -t443 / 0.2e1;
t905 = t443 / 0.2e1;
t806 = t542 * t543;
t829 = t537 * t539;
t444 = (t541 * t806 + t829) * t536;
t904 = -t444 / 0.2e1;
t903 = t444 / 0.2e1;
t902 = -t472 / 0.2e1;
t901 = t472 / 0.2e1;
t900 = -t474 / 0.2e1;
t899 = t474 / 0.2e1;
t898 = t510 / 0.2e1;
t896 = t538 / 0.2e1;
t895 = -t542 / 0.2e1;
t893 = -t543 / 0.2e1;
t892 = t543 / 0.2e1;
t890 = t472 * pkin(12);
t889 = t538 * pkin(5);
t888 = t542 * pkin(12);
t887 = -qJD(6) / 0.2e1;
t396 = t540 * t916 + t891 * t661;
t199 = t396 * t543 - t539 * t918;
t547 = t536 * t553 + t557 * t884;
t128 = t199 * t542 + t538 * t547;
t881 = t128 * t537;
t880 = t128 * t541;
t551 = t553 * t543;
t684 = t396 * t706;
t247 = -t551 - t684;
t867 = t247 * t538;
t155 = -t396 * t844 + t867;
t879 = t155 * t537;
t878 = t155 * t541;
t860 = t396 * t538;
t760 = t536 * t860;
t866 = t247 * t542;
t156 = t760 + t866;
t877 = t156 * t537;
t876 = t156 * t541;
t198 = t396 * t539 + t543 * t918;
t875 = t198 * t537;
t874 = t198 * t541;
t873 = t199 * t537;
t872 = t199 * t541;
t552 = t553 * t539;
t704 = t543 * t884;
t683 = t396 * t704;
t246 = -t552 + t683;
t871 = t246 * t537;
t870 = t246 * t538;
t869 = t246 * t541;
t868 = t246 * t542;
t865 = t295 * t541;
t476 = (pkin(4) * t539 - pkin(11) * t543) * t536;
t807 = t542 * t476;
t475 = -pkin(3) * t704 + pkin(10) * t845;
t826 = t538 * t475;
t653 = t807 + t826;
t315 = -pkin(5) * t845 - t653;
t864 = t315 * t537;
t863 = t315 * t541;
t705 = t540 * t882;
t680 = t542 * t705;
t648 = t536 * t680;
t638 = t540 * t663;
t607 = t539 * t638;
t440 = t543 * t677 - t607;
t827 = t538 * t440;
t352 = -t648 + t827;
t862 = t352 * t537;
t861 = t352 * t541;
t859 = t402 * t538;
t857 = t404 * t537;
t856 = t404 * t541;
t606 = t543 * t638;
t439 = t539 * t677 + t606;
t854 = t439 * t538;
t853 = t439 * t542;
t852 = t444 * t537;
t670 = -pkin(5) * t542 - pkin(12) * t538;
t651 = -pkin(4) + t670;
t811 = t541 * t542;
t767 = pkin(11) * t811;
t446 = t537 * t651 + t767;
t851 = t446 * t474;
t461 = -pkin(4) * t884 + t475;
t850 = t461 * t542;
t530 = t536 ^ 2;
t849 = t530 * t543 ^ 2;
t848 = t530 * t539;
t847 = t530 * t543;
t532 = t538 ^ 2;
t846 = t532 * t537;
t679 = t543 * t705;
t399 = t539 * t915 + t679;
t292 = t542 * t399 + t538 * t560;
t842 = t537 * t292;
t841 = t537 * t310;
t468 = t538 * t476;
t469 = t542 * t475;
t804 = t468 - t469;
t316 = pkin(12) * t845 + t804;
t840 = t537 * t316;
t682 = t538 * t705;
t649 = t536 * t682;
t809 = t542 * t440;
t353 = t649 + t809;
t839 = t537 * t353;
t368 = pkin(5) * t474 + t890;
t838 = t537 * t368;
t507 = -t888 + t889;
t375 = t507 * t843 + t477;
t837 = t537 * t375;
t681 = t539 * t705;
t398 = -t543 * t915 + t681;
t836 = t537 * t398;
t835 = t537 * t399;
t834 = t537 * t402;
t833 = t537 * t439;
t831 = t537 * t507;
t828 = t537 * t542;
t825 = t538 * t541;
t824 = t541 * t292;
t823 = t541 * t310;
t822 = t541 * t316;
t821 = t541 * t353;
t820 = t541 * t368;
t819 = t541 * t375;
t818 = t541 * t398;
t817 = t541 * t399;
t816 = t541 * t402;
t815 = t541 * t439;
t813 = t541 * t507;
t812 = t541 * t532;
t808 = t542 * t472;
t805 = -t295 + t310;
t534 = t542 ^ 2;
t517 = t534 - t532;
t713 = t811 / 0.2e1;
t577 = t404 * t713 + t533 * t729;
t220 = -t852 / 0.2e1 + t577;
t803 = qJD(3) * t220;
t225 = t402 * t474 - t537 * t911;
t802 = qJD(3) * t225;
t226 = t404 * t474 - t541 * t911;
t801 = qJD(3) * t226;
t725 = -t843 / 0.2e1;
t689 = t537 * t725;
t718 = t825 / 0.2e1;
t227 = t898 + t472 * t718 + (t689 + t908) * t542;
t800 = qJD(3) * t227;
t712 = t810 / 0.2e1;
t574 = (t542 * t712 + t829 / 0.2e1) * t536;
t228 = t574 - t596;
t799 = qJD(3) * t228;
t327 = t537 * t472;
t798 = qJD(3) * t327;
t797 = qJD(3) * t331;
t796 = qJD(3) * t404;
t795 = qJD(3) * t543;
t794 = qJD(4) * t536;
t793 = qJD(4) * t543;
t792 = qJD(5) * t537;
t791 = qJD(5) * t538;
t790 = qJD(5) * t541;
t789 = qJD(5) * t542;
t788 = qJD(6) * t472;
t787 = qJD(6) * t537;
t786 = qJD(6) * t541;
t785 = qJD(6) * t542;
t417 = t331 * t830;
t136 = t417 + (-t858 / 0.2e1 + t904) * t541 + (-t855 / 0.2e1 + t905) * t537;
t784 = t136 * qJD(3);
t181 = -t402 * t444 - t404 * t443;
t783 = t181 * qJD(3);
t654 = t816 + t857;
t197 = t654 * t472;
t782 = t197 * qJD(3);
t759 = t538 * t843;
t239 = -t402 * t759 - t443 * t472;
t781 = t239 * qJD(3);
t240 = t404 * t759 + t444 * t472;
t780 = t240 * qJD(3);
t280 = -t474 * t538 - t808;
t300 = t280 * t843;
t779 = t300 * qJD(3);
t389 = -t472 * t845 + t538 * t849;
t778 = t389 * qJD(3);
t390 = -t474 * t845 + t542 * t849;
t777 = t390 * qJD(3);
t775 = t472 * qJD(5);
t774 = t474 * qJD(5);
t483 = t530 * t539 ^ 2 - t849;
t773 = t483 * qJD(3);
t772 = t536 * qJD(5);
t771 = t538 * qJD(4);
t769 = pkin(11) * t828;
t525 = pkin(11) * t830;
t768 = pkin(11) * t825;
t766 = pkin(4) * t900;
t765 = pkin(5) * t909;
t764 = pkin(5) * t908;
t763 = pkin(5) * t904;
t762 = pkin(11) * t908;
t761 = t890 / 0.2e1;
t757 = t537 * t808;
t755 = t541 * t808;
t754 = t404 * t776;
t752 = t536 * t795;
t751 = t536 * t793;
t750 = t541 * t771;
t749 = t543 * t772;
t748 = t537 * t790;
t747 = t538 * t790;
t746 = t537 * t785;
t745 = t541 * t785;
t744 = t530 * t795;
t743 = t539 * t794;
t742 = t537 * t786;
t741 = t538 * t789;
t740 = -t879 / 0.2e1;
t739 = -t878 / 0.2e1;
t738 = t198 * t902;
t737 = t198 * t899;
t736 = -t862 / 0.2e1;
t735 = -t861 / 0.2e1;
t734 = t398 * t902;
t733 = t398 * t899;
t731 = t404 * t896;
t728 = -t845 / 0.2e1;
t727 = t845 / 0.2e1;
t726 = t844 / 0.2e1;
t724 = t843 / 0.2e1;
t723 = t842 / 0.2e1;
t722 = -t838 / 0.2e1;
t720 = t830 / 0.2e1;
t719 = t828 / 0.2e1;
t717 = -t822 / 0.2e1;
t716 = t820 / 0.2e1;
t715 = t818 / 0.2e1;
t710 = t468 / 0.2e1 - t469 / 0.2e1;
t709 = t398 * t884;
t708 = t399 * t884;
t702 = t884 * qJD(3);
t701 = t525 + t813;
t699 = pkin(11) * t724;
t698 = -qJD(6) - t776;
t697 = -qJD(6) + t770;
t696 = t537 * t747;
t695 = t793 * t848;
t694 = t539 * t744;
t693 = t537 * t750;
t692 = t542 * t752;
t691 = t538 * t725;
t690 = t538 * t724;
t688 = t537 * t724;
t686 = t536 * t712;
t678 = t761 + t368 / 0.2e1;
t676 = t536 * t702;
t675 = t884 * t794;
t68 = t875 + t880;
t674 = t875 / 0.2e1 - t68 / 0.2e1;
t67 = -t874 + t881;
t673 = t874 / 0.2e1 + t67 / 0.2e1;
t671 = t472 * pkin(5) - t474 * pkin(12);
t669 = 0.2e1 * t693;
t127 = t199 * t538 - t542 * t547;
t668 = t199 / 0.2e1 + t127 * t897;
t291 = t399 * t538 - t542 * t560;
t667 = t399 / 0.2e1 + t291 * t897;
t203 = t824 + t836;
t666 = t836 / 0.2e1 - t203 / 0.2e1;
t202 = -t818 + t842;
t665 = t715 + t202 / 0.2e1;
t660 = pkin(12) * t691;
t659 = -qJD(5) + t752;
t658 = t871 + t876;
t657 = t869 - t877;
t656 = t821 + t833;
t655 = t815 - t839;
t311 = t542 * t462 + t538 * t463;
t652 = t702 + qJD(4);
t650 = t697 * t538;
t647 = pkin(12) * t725 - t311 / 0.2e1;
t161 = -t755 + (t688 - t814 / 0.2e1 + t908) * t538;
t495 = t534 * t541 - t812;
t646 = -qJD(3) * t161 - qJD(4) * t495;
t162 = t757 + (t686 + t832 / 0.2e1 + t909) * t538;
t494 = t517 * t537;
t645 = -qJD(3) * t162 + qJD(4) * t494;
t301 = -t474 ^ 2 + t911;
t644 = qJD(3) * t301 + qJD(4) * t280;
t643 = qJD(3) * t280 + qJD(4) * t517;
t642 = t770 - t776;
t641 = qJD(3) * t474 + t771;
t639 = t888 / 0.2e1 - t889 / 0.2e1;
t637 = pkin(5) * t906 - t863 / 0.2e1;
t470 = t539 * t726 + t707 / 0.2e1;
t636 = t470 * qJD(3) + t771 / 0.2e1;
t635 = t536 * t672;
t634 = t127 * t909 + t67 * t902;
t633 = t127 * t908 + t68 * t901;
t89 = t198 * t828 + t872;
t632 = t127 * t905 + t89 * t901;
t90 = -t198 * t811 + t873;
t631 = t127 * t903 + t90 * t902;
t630 = t128 * t909 + t67 * t900;
t629 = t128 * t907 + t68 * t900;
t561 = pkin(4) * t901 + t850 / 0.2e1 + pkin(11) * t691;
t204 = t561 + t710;
t628 = pkin(4) * t770 - qJD(3) * t204;
t206 = t766 + (t699 - t476 / 0.2e1) * t542 + (t461 / 0.2e1 - t475 / 0.2e1) * t538;
t627 = pkin(4) * t771 - qJD(3) * t206;
t296 = -pkin(12) * t843 + t311;
t559 = t461 + t671;
t154 = t541 * t296 + t537 * t559;
t626 = t154 * t895 + t446 * t901;
t625 = -t877 / 0.2e1 + t869 / 0.2e1;
t624 = -t876 / 0.2e1 - t871 / 0.2e1;
t623 = t202 * t901 + t291 * t910;
t622 = t202 * t900 + t292 * t909;
t621 = t203 * t902 + t291 * t907;
t620 = t203 * t900 + t292 * t907;
t249 = t398 * t828 + t817;
t619 = t249 * t901 + t291 * t905;
t250 = -t398 * t811 + t835;
t618 = t250 * t902 + t291 * t903;
t616 = -t840 / 0.2e1 + t819 / 0.2e1;
t615 = -t839 / 0.2e1 + t815 / 0.2e1;
t614 = -t833 / 0.2e1 - t821 / 0.2e1;
t613 = -t816 / 0.2e1 - t857 / 0.2e1;
t611 = t658 * t542;
t610 = t657 * t542;
t609 = t656 * t542;
t608 = t655 * t542;
t604 = t538 * t887 + t700;
t603 = t198 * t910 + t67 * t725;
t602 = t198 * t908 + t68 * t725;
t600 = t127 * t728 + t199 * t901;
t599 = t128 * t728 + t199 * t899;
t598 = t291 * t728 + t399 * t901;
t597 = t292 * t728 + t399 * t899;
t595 = t202 * t725 + t398 * t910;
t594 = t203 * t725 + t398 * t908;
t593 = -t507 / 0.2e1 + t639;
t1 = t610 / 0.2e1 + (t740 + t603) * t538 + t632;
t29 = t608 / 0.2e1 + (t736 + t595) * t538 + t619;
t153 = t296 * t537 - t541 * t559;
t213 = t819 - t840;
t43 = -t153 * t759 + t213 * t472 + t295 * t443 + t315 * t402;
t592 = t1 * qJD(1) + t29 * qJD(2) + t43 * qJD(3);
t32 = -t609 / 0.2e1 + (t735 + t594) * t538 + t618;
t4 = -t611 / 0.2e1 + (t739 + t602) * t538 + t631;
t214 = t822 + t837;
t44 = -t154 * t759 - t214 * t472 + t295 * t444 + t315 * t404;
t591 = t4 * qJD(1) + t32 * qJD(2) + t44 * qJD(3);
t37 = -t153 * t474 + t311 * t402 + (t537 * t805 + t820) * t472;
t39 = t861 / 0.2e1 + t622;
t5 = t878 / 0.2e1 + t630;
t590 = t5 * qJD(1) + t39 * qJD(2) + t37 * qJD(3);
t38 = -t154 * t474 + t311 * t404 + (t541 * t805 - t838) * t472;
t42 = t736 + t620;
t8 = t740 + t629;
t589 = t8 * qJD(1) + t42 * qJD(2) + t38 * qJD(3);
t13 = t625 + t633;
t69 = t615 - t621;
t88 = -t154 * t472 + t295 * t404;
t588 = qJD(1) * t13 + qJD(2) * t69 - qJD(3) * t88;
t14 = t624 + t634;
t70 = t614 - t623;
t87 = t153 * t472 - t295 * t402;
t587 = qJD(1) * t14 + qJD(2) * t70 - qJD(3) * t87;
t129 = t310 * t845 - t461 * t759 - t477 * t472 + t653 * t843;
t21 = t868 / 0.2e1 + t600;
t83 = t853 / 0.2e1 + t598;
t586 = t21 * qJD(1) + t83 * qJD(2) - t129 * qJD(3);
t130 = t477 * t474 + (-t311 * t539 + (t804 + t850) * t543) * t536;
t24 = -t870 / 0.2e1 + t599;
t86 = -t854 / 0.2e1 + t597;
t585 = t24 * qJD(1) + t86 * qJD(2) + t130 * qJD(3);
t584 = t607 / 0.2e1;
t583 = -t606 / 0.2e1;
t131 = t734 + t809 / 0.2e1 + (t291 * t893 + t682 / 0.2e1) * t536;
t208 = -t310 * t843 - t461 * t472;
t33 = t738 + t866 / 0.2e1 + (t127 * t893 + t860 / 0.2e1) * t536;
t582 = -qJD(1) * t33 - qJD(2) * t131 - qJD(3) * t208;
t133 = t733 + t827 / 0.2e1 + (t292 * t892 - t680 / 0.2e1) * t536;
t209 = -t311 * t843 - t461 * t474;
t35 = t737 + t867 / 0.2e1 + (t128 * t892 + t396 * t895) * t536;
t581 = -qJD(1) * t35 - qJD(2) * t133 + qJD(3) * t209;
t554 = t640 - t558 / 0.2e1;
t221 = t583 + t708 / 0.2e1 + t554 * t539;
t406 = pkin(3) * t848 + t477 * t884;
t546 = t536 * t547 / 0.2e1;
t544 = -t199 * t884 / 0.2e1 + t539 * t546;
t549 = t552 / 0.2e1 - t683 / 0.2e1;
t73 = t544 - t549;
t580 = -qJD(1) * t73 + qJD(2) * t221 + qJD(3) * t406;
t222 = t584 - t709 / 0.2e1 + t554 * t543;
t407 = pkin(3) * t847 - t475 * t884;
t545 = t198 * t884 / 0.2e1 + t543 * t546;
t548 = t551 / 0.2e1 + t684 / 0.2e1;
t75 = t545 - t548;
t579 = -qJD(1) * t75 + qJD(2) * t222 + qJD(3) * t407;
t174 = (-t834 + t856) * t538;
t212 = t402 ^ 2 - t404 ^ 2;
t578 = qJD(3) * t212 - qJD(4) * t174 - qJD(5) * t654;
t400 = t593 * t537;
t95 = t537 * t678 + t765 - t919;
t576 = pkin(5) * t790 - qJD(3) * t95 + qJD(4) * t400;
t401 = t593 * t541;
t97 = -t541 * t678 + t764 - t920;
t575 = pkin(5) * t792 - qJD(3) * t97 - qJD(4) * t401;
t248 = t613 * t538;
t258 = -t834 / 0.2e1 + t856 / 0.2e1;
t573 = -qJD(4) * t248 - qJD(5) * t258 + t402 * t796;
t478 = (t531 / 0.2e1 - t533 / 0.2e1) * t538;
t572 = qJD(3) * t258 - qJD(4) * t478 + t748;
t571 = qJD(6) * t470 + t612;
t445 = -t541 * t651 + t769;
t570 = t445 * t899 + t701 * t902;
t569 = t153 * t894 + t445 * t902 + pkin(11) * t859 / 0.2e1;
t493 = t516 * t532;
t568 = qJD(3) * t174 + qJD(4) * t493 + 0.2e1 * t696;
t567 = qJD(3) * t654 + t669 - t913;
t566 = qJD(4) * t537 * t812 - qJD(3) * t248 + qJD(5) * t478;
t26 = t763 + t851 / 0.2e1 + (t315 / 0.2e1 + t507 * t901) * t537 + (t722 + t762 + t919) * t542 + (t154 / 0.2e1 + t647 * t541) * t538;
t290 = t507 * t828 + (-t446 + t767) * t538;
t55 = (-t824 / 0.2e1 - t666) * t538;
t9 = (-t880 / 0.2e1 - t674) * t538;
t565 = -t9 * qJD(1) - t55 * qJD(2) - t26 * qJD(3) + t290 * qJD(4);
t10 = (-t881 / 0.2e1 + t673) * t538;
t25 = (pkin(11) * t910 + t716 + t920) * t542 + (t153 / 0.2e1 + (pkin(11) * t901 + t647) * t537) * t538 + t570 + t637;
t289 = t445 * t538 + (t701 - 0.2e1 * t525) * t542;
t53 = (t723 - t665) * t538;
t564 = -t10 * qJD(1) + t53 * qJD(2) - t25 * qJD(3) - t289 * qJD(4);
t17 = t541 * t668 + t542 * t674;
t394 = -pkin(11) * t812 - t446 * t542;
t45 = (t762 - t865 / 0.2e1) * t538 + t616 + t626;
t77 = t541 * t667 + t542 * t666;
t563 = qJD(1) * t17 + qJD(2) * t77 + qJD(3) * t45 + qJD(4) * t394;
t18 = -t537 * t668 + t542 * t673;
t393 = -pkin(11) * t846 - t445 * t542;
t46 = t717 + (-t375 / 0.2e1 + t295 * t896) * t537 + t569;
t78 = -t537 * t667 + t542 * t665;
t562 = qJD(1) * t18 + qJD(2) * t78 + qJD(3) * t46 - qJD(4) * t393;
t528 = t791 / 0.2e1;
t508 = qJD(4) * t727;
t499 = -0.2e1 * t538 * t742;
t471 = t478 * qJD(6);
t464 = (t744 - t772 / 0.2e1) * t539;
t397 = qJD(4) * t690 + t470 * qJD(5);
t367 = t525 + t813 / 0.2e1 + t639 * t541;
t366 = t768 - t831 / 0.2e1 - t639 * t537;
t275 = t280 * qJD(5);
t257 = t258 * qJD(6);
t256 = t398 * t542;
t255 = t398 * t538;
t245 = t248 * qJD(6);
t230 = t542 * t689 + t898 + t914;
t229 = t574 + t596;
t224 = t709 / 0.2e1 + t584 + t917 * t543;
t223 = -t708 / 0.2e1 + t583 + t917 * t539;
t219 = t852 / 0.2e1 + t577;
t207 = t542 * t699 + t766 + t461 * t896 + t826 / 0.2e1 + t807 / 0.2e1;
t205 = t561 - t710;
t190 = t654 * qJD(6);
t169 = t174 * qJD(6);
t164 = t474 * t718 + t538 * t688 + t731 + t755;
t163 = -t757 + t474 * t721 - t859 / 0.2e1 + t538 * t686;
t152 = t291 * t541;
t151 = t291 * t537;
t135 = t537 * t906 + t541 * t903 + t542 * t613 + t417;
t134 = t292 * t724 + t733 - t827 / 0.2e1 + t648 / 0.2e1;
t132 = t291 * t725 + t734 - t809 / 0.2e1 - t649 / 0.2e1;
t98 = pkin(12) * t714 + t764 + t295 * t537 / 0.2e1 + t841 / 0.2e1 + t716;
t96 = t537 * t761 + t765 + t865 / 0.2e1 + t823 / 0.2e1 + t722;
t94 = t198 * t542;
t92 = t198 * t538;
t85 = t854 / 0.2e1 + t597;
t84 = -t853 / 0.2e1 + t598;
t80 = t203 * t894 + t291 * t718 + t398 * t719 + t817 / 0.2e1;
t79 = t202 * t895 + t291 * t721 + t398 * t713 - t835 / 0.2e1;
t76 = t545 + t548;
t74 = t544 + t549;
t72 = t615 + t621;
t71 = t614 + t623;
t56 = t203 * t897 + t292 * t718 + t398 * t721;
t54 = (t715 - t202 / 0.2e1 + t723) * t538;
t52 = t127 * t541;
t50 = t127 * t537;
t48 = pkin(11) * t731 + t295 * t718 + t616 - t626;
t47 = t295 * t721 + t717 - t837 / 0.2e1 - t569;
t41 = t862 / 0.2e1 + t620;
t40 = t735 + t622;
t36 = t128 * t724 + t737 - t867 / 0.2e1 + t396 * t726;
t34 = t127 * t725 + t738 - t866 / 0.2e1 - t760 / 0.2e1;
t31 = t609 / 0.2e1 + t352 * t718 + t594 * t538 + t618;
t30 = -t608 / 0.2e1 + t352 * t720 + t595 * t538 + t619;
t28 = (-t768 + t831) * t902 - t851 / 0.2e1 + (-t823 + t838) * t894 + t154 * t897 + t311 * t718 + t295 * t713 + t541 * t660 + t763 + t864 / 0.2e1 + t914 * pkin(11);
t27 = (t820 + t841) * t895 + t153 * t897 + t311 * t720 + t295 * t719 + t537 * t660 - t570 + t637 + t596 * pkin(11);
t23 = t870 / 0.2e1 + t599;
t22 = -t868 / 0.2e1 + t600;
t20 = t68 * t894 + t127 * t718 + t198 * t719 + t872 / 0.2e1;
t19 = t67 * t895 + t127 * t721 + t198 * t713 - t873 / 0.2e1;
t16 = t625 - t633;
t15 = t624 - t634;
t12 = t128 * t718 + t198 * t721 + t68 * t897;
t11 = t128 * t720 + t198 * t718 + t67 * t897;
t7 = t879 / 0.2e1 + t629;
t6 = t739 + t630;
t3 = t611 / 0.2e1 + t155 * t718 + t602 * t538 + t631;
t2 = -t610 / 0.2e1 + t155 * t720 + t603 * t538 + t632;
t49 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, -t396 * qJD(3), t553 * qJD(3), 0, 0, 0, 0, 0 (-t246 * t884 - t396 * t847) * qJD(3) + t74 * qJD(4) (-t247 * t884 + t396 * t848) * qJD(3) + t76 * qJD(4), 0, 0, 0, 0, 0 (t155 * t843 + t246 * t472) * qJD(3) + t22 * qJD(4) + t36 * qJD(5) (t156 * t843 + t246 * t474) * qJD(3) + t23 * qJD(4) + t34 * qJD(5), 0, 0, 0, 0, 0 (t155 * t402 + t472 * t657) * qJD(3) + t2 * qJD(4) + t6 * qJD(5) + t16 * qJD(6) (t155 * t404 - t472 * t658) * qJD(3) + t3 * qJD(4) + t7 * qJD(5) + t15 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t74 - qJD(4) * t199, qJD(3) * t76 + qJD(4) * t198, 0, 0, 0, 0, 0, qJD(3) * t22 + qJD(5) * t92 - t199 * t770, qJD(3) * t23 + qJD(5) * t94 + t199 * t771, 0, 0, 0, 0, 0, t2 * qJD(3) + (-t198 * t846 - t542 * t89) * qJD(4) + t11 * qJD(5) + t20 * qJD(6), t3 * qJD(3) + (-t198 * t812 + t542 * t90) * qJD(4) + t12 * qJD(5) + t19 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t36 + qJD(4) * t92 - qJD(5) * t128, qJD(3) * t34 + qJD(4) * t94 + qJD(5) * t127, 0, 0, 0, 0, 0, qJD(3) * t6 + qJD(4) * t11 + qJD(6) * t50 - t128 * t790, qJD(3) * t7 + qJD(4) * t12 + qJD(6) * t52 + t128 * t792; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t16 + qJD(4) * t20 + qJD(5) * t50 - qJD(6) * t68, qJD(3) * t15 + qJD(4) * t19 + qJD(5) * t52 + qJD(6) * t67; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, -qJD(3) * t705, -qJD(3) * t677, 0, 0, 0, 0, 0 (-t439 * t884 - t530 * t679) * qJD(3) + t223 * qJD(4) (-t440 * t884 + t530 * t681) * qJD(3) + t224 * qJD(4), 0, 0, 0, 0, 0 (t352 * t843 + t439 * t472) * qJD(3) + t84 * qJD(4) + t134 * qJD(5) (t353 * t843 + t439 * t474) * qJD(3) + t85 * qJD(4) + t132 * qJD(5), 0, 0, 0, 0, 0 (t352 * t402 + t472 * t655) * qJD(3) + t30 * qJD(4) + t40 * qJD(5) + t72 * qJD(6) (t352 * t404 - t472 * t656) * qJD(3) + t31 * qJD(4) + t41 * qJD(5) + t71 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t223 - qJD(4) * t399, qJD(3) * t224 + qJD(4) * t398, 0, 0, 0, 0, 0, qJD(3) * t84 + qJD(5) * t255 - t399 * t770, qJD(3) * t85 + qJD(5) * t256 + t399 * t771, 0, 0, 0, 0, 0, t30 * qJD(3) + (-t249 * t542 - t532 * t836) * qJD(4) + t54 * qJD(5) + t80 * qJD(6), t31 * qJD(3) + (t250 * t542 - t398 * t812) * qJD(4) + t56 * qJD(5) + t79 * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t134 + qJD(4) * t255 - qJD(5) * t292, qJD(3) * t132 + qJD(4) * t256 + qJD(5) * t291, 0, 0, 0, 0, 0, qJD(3) * t40 + qJD(4) * t54 + qJD(6) * t151 - t292 * t790, qJD(3) * t41 + qJD(4) * t56 + qJD(6) * t152 + t292 * t792; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t72 + qJD(4) * t80 + qJD(5) * t151 - qJD(6) * t203, qJD(3) * t71 + qJD(4) * t79 + qJD(5) * t152 + qJD(6) * t202; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t73 * qJD(4), t75 * qJD(4), 0, 0, 0, 0, 0, qJD(4) * t21 + qJD(5) * t35, qJD(4) * t24 + qJD(5) * t33, 0, 0, 0, 0, 0, qJD(4) * t1 + qJD(5) * t5 - qJD(6) * t13, qJD(4) * t4 + qJD(5) * t8 - qJD(6) * t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t221 * qJD(4), -t222 * qJD(4), 0, 0, 0, 0, 0, qJD(4) * t83 + qJD(5) * t133, qJD(4) * t86 + qJD(5) * t131, 0, 0, 0, 0, 0, qJD(4) * t29 + qJD(5) * t39 - qJD(6) * t69, qJD(4) * t32 + qJD(5) * t42 - qJD(6) * t70; 0, 0, 0, 0, 0, t695, -t483 * qJD(4), t543 * t675, -t539 * t675, 0, -t406 * qJD(4), -t407 * qJD(4) (t542 * t751 - t775) * t474, qJD(4) * t300 + qJD(5) * t301, -t390 * qJD(4) + t472 * t749, t389 * qJD(4) + t474 * t749, -t695, -qJD(4) * t129 - qJD(5) * t209, qJD(4) * t130 + qJD(5) * t208 (qJD(4) * t444 - qJD(6) * t402 - t541 * t775) * t404, qJD(4) * t181 + qJD(5) * t197 + qJD(6) * t212, qJD(4) * t240 + qJD(5) * t226 - t402 * t788, qJD(4) * t239 - qJD(5) * t225 - t404 * t788 (t538 * t751 + t774) * t472, qJD(4) * t43 + qJD(5) * t37 + qJD(6) * t88, qJD(4) * t44 + qJD(5) * t38 + qJD(6) * t87; 0, 0, 0, 0, 0, t694, -t773, t652 * t843, -t652 * t845, 0, -qJD(4) * t477 - t580, qJD(4) * t475 - t579, t536 * t641 * t806 + t912, t517 * t751 + t275 + t779, t538 * t743 - t777, t542 * t743 + t778, -t464 (-t477 * t542 + t538 * t635) * qJD(4) + t207 * qJD(5) + t586 (t477 * t538 + t542 * t635) * qJD(4) + t205 * qJD(5) + t585, qJD(5) * t219 + t245 + (t750 + t796) * t444, t783 + t135 * qJD(5) - t169 + (-t443 * t541 - t852) * t771, t780 + (-t444 * t542 + t532 * t756) * qJD(4) + t164 * qJD(5) + t229 * qJD(6), t781 + (t443 * t542 - t532 * t758) * qJD(4) + t163 * qJD(5) + t230 * qJD(6), -t912 + (qJD(6) / 0.2e1 - t642) * t759, -t213 * t770 + t27 * qJD(5) + t48 * qJD(6) + (pkin(11) * t443 - t445 * t843 + t864) * t771 + t592, t214 * t770 + t28 * qJD(5) + t47 * qJD(6) + (pkin(11) * t444 - t446 * t843 + t863) * t771 + t591; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t612, t644, t659 * t472, t659 * t474, t508, qJD(4) * t207 - qJD(5) * t311 - t581, qJD(4) * t205 + qJD(5) * t310 - t582, qJD(4) * t219 + t257 + (-t792 - t796) * t331, t135 * qJD(4) - t516 * t775 - t190 + t782, qJD(4) * t164 + t537 * t774 + t801, qJD(4) * t163 + t541 * t774 - t802, t571, t27 * qJD(4) + (-t311 * t541 + t537 * t671) * qJD(5) + t98 * qJD(6) + t590, t28 * qJD(4) + (t311 * t537 + t541 * t671) * qJD(5) + t96 * qJD(6) + t589; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t573, t578, qJD(4) * t229 + t402 * t698, qJD(4) * t230 + t404 * t698, t397, qJD(4) * t48 + qJD(5) * t98 - qJD(6) * t154 - t588, qJD(4) * t47 + qJD(5) * t96 + qJD(6) * t153 - t587; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t73 * qJD(3), -t75 * qJD(3), 0, 0, 0, 0, 0, -qJD(3) * t21, -qJD(3) * t24, 0, 0, 0, 0, 0, -qJD(3) * t1 - qJD(5) * t10 - qJD(6) * t17, -qJD(3) * t4 - qJD(5) * t9 - qJD(6) * t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t221 * qJD(3), t222 * qJD(3), 0, 0, 0, 0, 0, -qJD(3) * t83, -qJD(3) * t86, 0, 0, 0, 0, 0, -qJD(3) * t29 + qJD(5) * t53 - qJD(6) * t77, -qJD(3) * t32 - qJD(5) * t55 - qJD(6) * t78; 0, 0, 0, 0, 0, -t694, t773, -t543 * t676, t539 * t676, 0, t580, t579, -t474 * t692 + t912, t275 - t779, -t542 * t749 + t777, t538 * t749 - t778, t464, qJD(5) * t206 - t586, qJD(5) * t204 - t585, qJD(5) * t220 - t444 * t796 + t245, qJD(5) * t136 - t169 - t783, -qJD(5) * t161 - qJD(6) * t228 - t780, -qJD(5) * t162 - qJD(6) * t227 - t781, -t912 + (-t776 + t887) * t759, -qJD(5) * t25 - qJD(6) * t45 - t592, -qJD(5) * t26 - qJD(6) * t46 - t591; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t741, t517 * qJD(5), 0, 0, 0, -pkin(4) * t791, -pkin(4) * t789, -t532 * t742 + t533 * t741, -qJD(6) * t493 - 0.2e1 * t542 * t696, -qJD(5) * t495 + t538 * t746, qJD(5) * t494 + t538 * t745, -t741, -qJD(5) * t289 - qJD(6) * t394, qJD(5) * t290 + qJD(6) * t393; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t700, t643, -t659 * t542, t659 * t538, qJD(3) * t728, -pkin(11) * t789 - t627, pkin(11) * t791 - t628, t803 - t471 + (t533 * t771 + t748) * t542, t784 + t499 + (-0.2e1 * t693 + t913) * t542, t537 * t791 + t646, t645 + t747, -t604 (t537 * t670 - t767) * qJD(5) + t367 * qJD(6) + t564 (t541 * t670 + t769) * qJD(5) + t366 * qJD(6) + t565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t566, -t568, t537 * t650 - t799, t541 * t650 - t800, qJD(3) * t691 + t528, qJD(5) * t367 - qJD(6) * t446 - t563, qJD(5) * t366 + qJD(6) * t445 - t562; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t35, -qJD(3) * t33, 0, 0, 0, 0, 0, -qJD(3) * t5 + qJD(4) * t10, -qJD(3) * t8 + qJD(4) * t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(3) * t133, -qJD(3) * t131, 0, 0, 0, 0, 0, -qJD(3) * t39 - qJD(4) * t53, -qJD(3) * t42 + qJD(4) * t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t612, -t644, t642 * t843, -t641 * t843, t508, -qJD(4) * t206 + t581, -qJD(4) * t204 + t582, -qJD(4) * t220 + t541 * t754 + t257, -qJD(4) * t136 - t190 - t782, qJD(4) * t161 + qJD(6) * t331 - t801, qJD(4) * t162 - qJD(6) * t327 + t802, -t571, qJD(4) * t25 + qJD(6) * t97 - t590, qJD(4) * t26 + qJD(6) * t95 - t589; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t700, -t643, t692, -t538 * t752, qJD(3) * t727, t627, t628, -t520 * t533 - t471 - t803, t542 * t669 + t499 - t784, -t646 - t745, -t645 + t746, t604, qJD(6) * t401 - t564, -qJD(6) * t400 - t565; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t742, t516 * qJD(6), 0, 0, 0, -pkin(5) * t787, -pkin(5) * t786; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t572, -t567, -t541 * t697 + t797, t537 * t697 - t798, -t636, -pkin(12) * t786 - t575, pkin(12) * t787 - t576; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t13 + qJD(4) * t17, qJD(3) * t14 + qJD(4) * t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t69 + qJD(4) * t77, qJD(3) * t70 + qJD(4) * t78; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t573, -t578, qJD(4) * t228 - qJD(5) * t331 + t402 * t776, qJD(4) * t227 + qJD(5) * t327 + t754, t397, qJD(4) * t45 - qJD(5) * t97 + t588, qJD(4) * t46 - qJD(5) * t95 + t587; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t566, t568, t799 + (-t537 * t771 + t790) * t542, t800 + (-t750 - t792) * t542, qJD(3) * t690 + t528, -qJD(5) * t401 + t563, qJD(5) * t400 + t562; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t572, t567, t541 * t770 - t797, -t537 * t770 + t798, t636, t575, t576; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t49;
