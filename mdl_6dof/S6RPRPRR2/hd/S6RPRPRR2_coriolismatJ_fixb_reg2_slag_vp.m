% Calculate inertial parameters regressor of coriolis matrix for
% S6RPRPRR2
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta2,theta4]';
% 
% Output:
% cmat_reg [(6*6)x(6*10)]
%   inertial parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:39
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S6RPRPRR2_coriolismatJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR2_coriolismatJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR2_coriolismatJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RPRPRR2_coriolismatJ_fixb_reg2_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:39:05
% EndTime: 2019-03-09 03:39:26
% DurationCPUTime: 15.67s
% Computational Cost: add. (24463->578), mult. (45823->787), div. (0->0), fcn. (52126->10), ass. (0->457)
t572 = sin(pkin(11));
t575 = sin(qJ(3));
t577 = cos(qJ(3));
t845 = cos(pkin(11));
t549 = t572 * t575 - t577 * t845;
t904 = -t549 / 0.2e1;
t576 = cos(qJ(5));
t564 = pkin(3) * t572 + pkin(8);
t854 = pkin(9) + t564;
t546 = t854 * t576;
t573 = sin(qJ(6));
t574 = sin(qJ(5));
t654 = t854 * t574;
t859 = cos(qJ(6));
t646 = t573 * t546 + t859 * t654;
t872 = t646 / 0.2e1;
t688 = qJD(5) + qJD(6);
t565 = sin(pkin(10)) * pkin(1) + pkin(7);
t766 = qJ(4) + t565;
t632 = t766 * t845;
t513 = t575 * t632;
t648 = t766 * t577;
t429 = t572 * t648 + t513;
t650 = t845 * t575;
t776 = t572 * t577;
t551 = t650 + t776;
t452 = t574 * t551;
t331 = pkin(5) * t452 + t429;
t674 = t859 * t576;
t423 = -t452 * t573 + t551 * t674;
t445 = t546 * t859 - t573 * t654;
t675 = t859 * t574;
t771 = t573 * t576;
t555 = t675 + t771;
t866 = -t555 / 0.2e1;
t566 = -pkin(3) * t845 - pkin(4);
t556 = -t576 * pkin(5) + t566;
t897 = -t556 / 0.2e1;
t903 = -t331 * t866 - t423 * t897 + t445 * t904;
t327 = t555 * t551;
t553 = t573 * t574 - t674;
t868 = -t553 / 0.2e1;
t898 = t327 * t897 + t331 * t868 + t549 * t872;
t657 = -t646 / 0.2e1 + t872;
t902 = t657 * t423;
t865 = t555 / 0.2e1;
t215 = -t327 * t865 + t423 * t868;
t901 = t688 * t215;
t649 = t572 * t766;
t634 = t575 * t649;
t585 = t648 * t845 - t634;
t567 = -cos(pkin(10)) * pkin(1) - pkin(2);
t557 = -t577 * pkin(3) + t567;
t587 = t549 * pkin(4) - t551 * pkin(8) + t557;
t252 = t574 * t585 - t576 * t587;
t782 = t551 * t576;
t227 = -pkin(9) * t782 - t252;
t580 = t549 * pkin(5) + t227;
t193 = t859 * t580;
t253 = t574 * t587 + t576 * t585;
t228 = -pkin(9) * t452 + t253;
t773 = t573 * t228;
t106 = -t193 + t773;
t678 = t859 * t227;
t138 = t678 - t773;
t900 = t106 + t138;
t579 = t573 * t580;
t677 = t859 * t228;
t107 = t677 + t579;
t774 = t573 * t227;
t137 = -t677 - t774;
t899 = t107 + t137;
t431 = -t577 * t649 - t513;
t415 = t576 * t431;
t855 = t575 * pkin(3);
t455 = pkin(4) * t551 + pkin(8) * t549 + t855;
t424 = t574 * t455;
t272 = t415 + t424;
t450 = t574 * t549;
t236 = pkin(9) * t450 + t272;
t676 = t859 * t236;
t636 = -t676 / 0.2e1;
t425 = t576 * t455;
t769 = t574 * t431;
t271 = t425 - t769;
t454 = t576 * t549;
t857 = t551 * pkin(5);
t197 = pkin(9) * t454 + t271 + t857;
t775 = t573 * t197;
t602 = -t775 / 0.2e1 + t636;
t50 = t602 - t898;
t679 = t859 * t197;
t772 = t573 * t236;
t601 = -t772 / 0.2e1 + t679 / 0.2e1;
t52 = t601 + t903;
t49 = t601 - t903;
t873 = -t445 / 0.2e1;
t896 = t423 * t688;
t692 = t551 * qJD(1);
t476 = t549 * t692;
t543 = t650 / 0.2e1 + t776 / 0.2e1;
t883 = t543 * qJD(5) + t476;
t502 = t573 * t450;
t422 = -t549 * t674 + t502;
t369 = t422 * t553;
t780 = t555 * t549;
t781 = t555 * t780;
t135 = -t369 - t781;
t893 = qJD(3) * t135;
t892 = t327 * qJD(1);
t721 = qJD(3) * t555;
t891 = -qJD(1) * t215 + t553 * t721;
t725 = qJD(1) * t423;
t890 = qJD(3) * t215 - t327 * t725;
t635 = t674 / 0.2e1;
t867 = t553 / 0.2e1;
t870 = -t502 / 0.2e1;
t313 = t870 + (t635 + t867) * t549;
t706 = t313 * qJD(2);
t889 = t646 * t688 - t706;
t888 = t688 * t445;
t768 = t574 * t576;
t647 = 0.2e1 * t551 * t768;
t887 = t107 / 0.2e1;
t886 = t423 / 0.2e1;
t885 = t327 * t688;
t641 = t688 * t553;
t437 = t450 * qJD(5);
t542 = t551 * qJD(3);
t529 = t576 * t542;
t882 = -t529 + t437;
t547 = t549 ^ 2;
t548 = t551 ^ 2;
t881 = -t548 - t547;
t687 = t548 - t547;
t880 = qJD(6) * t543 + t883;
t600 = t771 / 0.2e1 + t675 / 0.2e1;
t310 = (t866 + t600) * t549;
t708 = t310 * qJD(2);
t720 = qJD(3) * t556;
t879 = qJD(1) * t49 - t555 * t720 + t708;
t684 = t859 / 0.2e1;
t770 = t574 * t327;
t860 = -t576 / 0.2e1;
t32 = (-t770 / 0.2e1 + (t553 * t860 + t684) * t551) * pkin(5) + t49;
t858 = pkin(5) * t574;
t413 = t553 * t858 + t555 * t556;
t878 = qJD(1) * t32 - qJD(3) * t413 + t708;
t875 = t429 / 0.2e1;
t874 = t431 / 0.2e1;
t869 = t549 / 0.2e1;
t571 = t576 ^ 2;
t864 = -t571 / 0.2e1;
t863 = -t573 / 0.2e1;
t862 = t573 / 0.2e1;
t861 = -t574 / 0.2e1;
t856 = t573 * pkin(5);
t852 = pkin(5) * qJD(5);
t850 = qJD(3) * pkin(3);
t682 = t857 / 0.2e1;
t640 = t576 * t682;
t659 = t138 / 0.2e1 + t106 / 0.2e1;
t660 = t887 + t137 / 0.2e1;
t9 = -t327 * t660 + t423 * t659 + t549 * t640;
t848 = t9 * qJD(1);
t686 = pkin(5) * t782;
t819 = t331 * t423;
t53 = t137 * t549 + t327 * t686 + t819;
t843 = qJD(1) * t53;
t820 = t331 * t327;
t54 = -t138 * t549 + t423 * t686 - t820;
t842 = qJD(1) * t54;
t56 = t106 * t549 - t820;
t841 = qJD(1) * t56;
t57 = -t107 * t549 + t819;
t840 = qJD(1) * t57;
t836 = t106 * t780;
t833 = t107 * t422;
t116 = t679 - t772;
t117 = t676 + t775;
t14 = t106 * t422 + t107 * t780 - t116 * t423 - t117 * t327;
t830 = t14 * qJD(1);
t15 = -t327 * t900 - t423 * t899;
t829 = t15 * qJD(1);
t428 = t577 * t632 - t634;
t330 = -pkin(5) * t450 + t428;
t25 = -t106 * t551 + t116 * t549 + t327 * t330 - t331 * t780;
t828 = t25 * qJD(1);
t827 = t252 * t574;
t826 = t253 * t576;
t26 = -t107 * t551 - t117 * t549 + t330 * t423 + t331 * t422;
t825 = t26 * qJD(1);
t824 = t271 * t574;
t823 = t271 * t576;
t822 = t272 * t574;
t821 = t272 * t576;
t818 = t331 * t551;
t578 = -t579 / 0.2e1 + t856 * t904;
t39 = t774 / 0.2e1 + t578;
t815 = t39 * qJD(1);
t685 = -t859 / 0.2e1;
t637 = t549 * t685;
t606 = -t193 / 0.2e1 + pkin(5) * t637;
t41 = t678 / 0.2e1 + t606;
t814 = t41 * qJD(1);
t813 = t780 * t646;
t812 = t780 * t553;
t811 = t327 * t780;
t810 = t422 * t327;
t809 = t422 * t445;
t808 = t422 * t549;
t807 = t422 * t555;
t806 = t423 * t780;
t805 = t423 * t422;
t803 = t423 * t551;
t802 = t428 * t574;
t801 = t428 * t576;
t800 = t429 * t428;
t799 = t429 * t551;
t798 = t429 * t574;
t797 = t429 * t576;
t48 = (t822 + t823) * t551 + (t252 * t576 - t253 * t574) * t549;
t789 = t48 * qJD(1);
t788 = t549 * t780;
t787 = t549 * t551;
t786 = t549 * t572;
t785 = t551 * t327;
t784 = t551 * t556;
t783 = t551 * t566;
t777 = t564 * t549;
t61 = (-t252 + t802) * t551 + (t271 - t798) * t549;
t767 = t61 * qJD(1);
t656 = t445 / 0.2e1 + t873;
t150 = -t553 * t656 + t555 * t657;
t757 = t150 * qJD(5);
t178 = t327 * t553 - t555 * t423;
t756 = t688 * t178;
t605 = t502 / 0.2e1 + t576 * t637;
t661 = t549 * t867;
t315 = t661 - t605;
t755 = t315 * qJD(4);
t314 = t870 + (t635 + t868) * t549;
t754 = t314 * qJD(4);
t592 = t600 * t549;
t317 = -t780 / 0.2e1 + t592;
t753 = t317 * qJD(4);
t311 = (t865 + t600) * t549;
t752 = t311 * qJD(4);
t747 = t688 * t313;
t312 = t661 + t605;
t746 = t688 * t312;
t745 = t688 * t311;
t744 = t688 * t317;
t570 = t574 ^ 2;
t742 = -t570 - t571;
t560 = t571 - t570;
t741 = qJD(1) * t135;
t159 = t805 / 0.2e1 - t811 / 0.2e1 + t787 / 0.2e1;
t740 = qJD(1) * t159;
t179 = -t806 - t810;
t739 = qJD(1) * t179;
t182 = t252 * t549 - t429 * t452;
t738 = qJD(1) * t182;
t183 = -t253 * t549 + t429 * t782;
t737 = qJD(1) * t183;
t209 = -t785 + t788;
t736 = qJD(1) * t209;
t210 = t785 + t788;
t735 = qJD(1) * t210;
t211 = t803 + t808;
t734 = qJD(1) * t211;
t583 = t585 * t549;
t222 = -t583 + t799;
t733 = qJD(1) * t222;
t382 = t687 * t574;
t731 = qJD(1) * t382;
t383 = t881 * t574;
t730 = qJD(1) * t383;
t384 = t687 * t576;
t729 = qJD(1) * t384;
t400 = t549 * t855 + t551 * t557;
t728 = qJD(1) * t400;
t401 = -t549 * t557 + t551 * t855;
t727 = qJD(1) * t401;
t458 = t881 * t576;
t724 = qJD(1) * t458;
t723 = qJD(1) * t577;
t722 = qJD(3) * t454;
t719 = qJD(3) * t576;
t718 = qJD(4) * t576;
t717 = qJD(5) * t574;
t716 = qJD(5) * t576;
t715 = qJD(6) * t556;
t655 = t864 - t570 / 0.2e1;
t591 = t655 * t777 + t783 / 0.2e1;
t613 = -t823 / 0.2e1 - t822 / 0.2e1;
t101 = t591 + t613;
t714 = t101 * qJD(1);
t139 = t551 * t874 - t583 / 0.2e1 + t428 * t869 + t799 / 0.2e1;
t713 = t139 * qJD(1);
t180 = t806 - t810;
t712 = t180 * qJD(1);
t212 = t803 - t808;
t711 = t212 * qJD(1);
t242 = (0.1e1 / 0.2e1 + t655) * t787;
t710 = t242 * qJD(1);
t291 = t311 * qJD(1);
t292 = t312 * qJD(1);
t707 = t312 * qJD(3);
t161 = t313 * qJD(3);
t295 = t314 * qJD(1);
t323 = t551 * t553;
t705 = t323 * qJD(1);
t651 = t845 * t551;
t597 = -t786 / 0.2e1 - t651 / 0.2e1;
t399 = (-t575 / 0.2e1 + t597) * pkin(3);
t703 = t399 * qJD(1);
t702 = t687 * qJD(1);
t448 = (t570 / 0.2e1 + t864) * t551;
t701 = t448 * qJD(5);
t436 = t450 * qJD(1);
t700 = t452 * qJD(1);
t699 = t454 * qJD(1);
t537 = t570 * t549;
t538 = t571 * t549;
t456 = t537 + t538;
t698 = t456 * qJD(1);
t697 = t456 * qJD(3);
t696 = t881 * qJD(1);
t695 = t543 * qJD(1);
t693 = t549 * qJD(1);
t541 = t549 * qJD(3);
t561 = -t575 ^ 2 + t577 ^ 2;
t691 = t561 * qJD(1);
t690 = t575 * qJD(3);
t689 = t577 * qJD(3);
t683 = t858 / 0.2e1;
t213 = t807 / 0.2e1 - t812 / 0.2e1;
t680 = t213 * qJD(3);
t672 = t423 * t693;
t671 = t553 * t542;
t669 = t574 * t719;
t668 = t551 * t717;
t667 = t551 * t716;
t475 = t549 * t542;
t666 = t567 * t575 * qJD(1);
t665 = t567 * t723;
t664 = t574 * t716;
t663 = t575 * t689;
t662 = t576 * t692;
t658 = -t415 / 0.2e1 - t424 / 0.2e1;
t653 = t859 * qJD(5);
t652 = t859 * qJD(6);
t643 = t688 * t549;
t642 = t688 * t555;
t639 = -qJD(5) - t693;
t638 = t548 * t664;
t633 = qJD(3) * t647;
t18 = -t106 * t116 + t107 * t117 + t330 * t331;
t8 = t117 * t886 + t833 / 0.2e1 - t116 * t327 / 0.2e1 - t836 / 0.2e1 + t330 * t869 + t818 / 0.2e1;
t631 = t18 * qJD(1) + t8 * qJD(2);
t21 = -t106 * t137 + t107 * t138 + t331 * t686;
t630 = t21 * qJD(1) + t9 * qJD(2);
t30 = (t821 / 0.2e1 - t824 / 0.2e1 + t875) * t551 + (-t826 / 0.2e1 - t827 / 0.2e1 + t428 / 0.2e1) * t549;
t47 = -t252 * t271 + t253 * t272 + t800;
t629 = t47 * qJD(1) + t30 * qJD(2);
t593 = (t422 * t685 - t780 * t863) * pkin(5);
t4 = t327 * t657 + t423 * t656 + t553 * t659 + t555 * t660 + t593;
t628 = t4 * qJD(1);
t627 = t821 - t824;
t626 = -t549 * t566 - t551 * t564;
t29 = t818 + t833 - t836;
t625 = t29 * qJD(1) + t159 * qJD(2);
t590 = -t813 / 0.2e1 + t809 / 0.2e1 + t784 / 0.2e1;
t614 = t116 * t867 + t117 * t866;
t28 = t590 + t614;
t624 = -qJD(1) * t28 + qJD(2) * t213;
t62 = (-t253 + t801) * t551 + (-t272 - t797) * t549;
t623 = t62 * qJD(1);
t84 = t799 + (-t826 - t827) * t549;
t622 = qJD(1) * t84 + qJD(2) * t242;
t250 = (0.1e1 + t742) * t787;
t621 = -t30 * qJD(1) - t250 * qJD(2);
t603 = t422 * t862 - t685 * t780;
t594 = t603 * pkin(5);
t16 = t553 * t660 - t555 * t659 + t594;
t620 = -t16 * qJD(1) + t150 * qJD(3);
t31 = (t423 * t861 + (t555 * t860 + t863) * t551) * pkin(5) + t50;
t414 = -t553 * t556 + t555 * t858;
t619 = qJD(1) * t31 - qJD(3) * t414;
t617 = t639 * t576;
t171 = t431 * t585 + t557 * t855 + t800;
t616 = t171 * qJD(1) + t139 * qJD(2);
t142 = (t428 - t585) * t551 + (-t431 - t429) * t549;
t615 = t142 * qJD(1);
t194 = t327 ^ 2 - t423 ^ 2;
t65 = qJD(1) * t194 + qJD(3) * t178;
t416 = t553 ^ 2 - t555 ^ 2;
t144 = qJD(1) * t178 + qJD(3) * t416;
t612 = t777 / 0.2e1 - t783 / 0.2e1;
t610 = qJD(1) * t50 + t553 * t720;
t609 = t551 * t617;
t586 = t612 * t574 + t797 / 0.2e1;
t167 = t586 - t658;
t608 = -qJD(1) * t167 - t566 * t719;
t596 = t612 * t576;
t169 = -t425 / 0.2e1 - t596 + (t874 + t875) * t574;
t607 = -qJD(3) * t566 * t574 - qJD(1) * t169;
t386 = -qJD(1) * t448 + t669;
t604 = t116 * t684 + t117 * t862;
t320 = qJD(1) * t548 * t768 + qJD(3) * t448;
t457 = t560 * t548;
t599 = qJD(1) * t457 + t633;
t598 = qJD(1) * t647 - qJD(3) * t560;
t160 = t787 + t805 - t811;
t595 = t8 * qJD(1) + t160 * qJD(2) + t213 * qJD(4);
t177 = t556 * t858;
t584 = t137 * t872 + t646 * t887 + t873 * t900;
t2 = (t331 * t861 + t782 * t897 + t604) * pkin(5) + t584;
t45 = -t902 + t656 * t327 + (-t450 / 0.2e1 + t603) * pkin(5);
t588 = -t2 * qJD(1) - t45 * qJD(2) + t177 * qJD(3) + t150 * qJD(4);
t562 = t575 * t723;
t533 = t543 * qJD(3);
t528 = t574 * t542;
t485 = t555 * t542;
t441 = t454 * qJD(5);
t435 = t450 * qJD(3);
t398 = t855 / 0.2e1 + t597 * pkin(3);
t397 = -t436 - t717;
t316 = t780 / 0.2e1 + t592;
t233 = -t642 - t291;
t232 = t641 - t295;
t231 = -t292 - t641;
t190 = qJD(3) * t311 + t672;
t189 = t327 * t693 + t707;
t170 = t798 / 0.2e1 - t769 / 0.2e1 + t425 / 0.2e1 - t596;
t168 = t586 + t658;
t162 = qJD(3) * t310;
t141 = qJD(3) * t317 - t672 - t896;
t140 = -t161 + (-qJD(6) + t639) * t327;
t100 = t591 - t613;
t81 = qJD(3) * t316 - t896;
t80 = -t707 + t885;
t67 = qJD(3) * t139;
t51 = t602 + t898;
t46 = t549 * t683 + t594 + t902;
t42 = t773 - t678 / 0.2e1 + t606;
t40 = -t677 - t774 / 0.2e1 + t578;
t34 = t423 * t683 + t555 * t640 + t636 + (-t857 / 0.2e1 - t197 / 0.2e1) * t573 + t898;
t33 = pkin(5) * t770 / 0.2e1 + t553 * t640 + t859 * t682 + t52;
t27 = t590 - t614;
t24 = qJD(3) * t30 + qJD(4) * t242;
t17 = t865 * t900 + t868 * t899 + t594;
t5 = t423 * t873 + t445 * t886 + t866 * t899 + t868 * t900 + t593;
t3 = pkin(5) * t604 + t331 * t683 + t556 * t640 - t584;
t1 = qJD(3) * t8 + qJD(4) * t159 + qJD(5) * t9;
t6 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t663, t561 * qJD(3), 0, -t663, 0, 0, t567 * t690, t567 * t689, 0, 0, -t475, -t687 * qJD(3), 0, t475, 0, 0, t400 * qJD(3), t401 * qJD(3), qJD(3) * t142 - qJD(4) * t881, qJD(3) * t171 + qJD(4) * t222, -t475 * t571 - t638, -qJD(5) * t457 + t549 * t633, qJD(3) * t384 - t549 * t668, -t475 * t570 + t638, -qJD(3) * t382 - t549 * t667, t475, qJD(3) * t61 - qJD(4) * t383 + qJD(5) * t183, qJD(3) * t62 - qJD(4) * t458 + qJD(5) * t182, -qJD(3) * t48, qJD(3) * t47 + qJD(4) * t84 (qJD(3) * t422 - t885) * t423, t180 * qJD(3) + t194 * t688, t211 * qJD(3) - t327 * t643 (-qJD(3) * t780 + t896) * t327, t209 * qJD(3) - t423 * t643, t475, qJD(3) * t25 + qJD(4) * t210 + qJD(5) * t53 + qJD(6) * t57, qJD(3) * t26 + qJD(4) * t212 + qJD(5) * t54 + qJD(6) * t56, qJD(3) * t14 + qJD(4) * t179 + qJD(5) * t15, qJD(3) * t18 + qJD(4) * t29 + qJD(5) * t21; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t67, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t562, t691, t689, -t562, -t690, 0, -t565 * t689 + t666, t565 * t690 + t665, 0, 0, -t476, -t702, -t541, t476, -t542, 0, -qJD(3) * t428 + t728, -qJD(3) * t431 + t727 (t549 * t845 - t551 * t572) * t850 + t615 (-t428 * t845 + t431 * t572) * t850 + t398 * qJD(4) + t616, -t701 + (-t571 * t692 - t669) * t549 (t537 - t538) * qJD(3) + (-qJD(5) + t693) * t647, t528 + t729, t701 + (-t570 * t692 + t669) * t549, t529 - t731, t883, t767 + (t574 * t626 - t801) * qJD(3) + t170 * qJD(5) (t576 * t626 + t802) * qJD(3) + t168 * qJD(5) + t623, qJD(3) * t627 - t789 (t428 * t566 + t564 * t627) * qJD(3) + t100 * qJD(4) + t629 (t721 + t725) * t422 + t901, t712 + (-t369 + t781) * qJD(3) + t756, t485 + t734 - t747 -(qJD(3) * t553 + t892) * t780 - t901, -t671 + t736 + t744, t880, t828 + (t330 * t553 - t551 * t646 - t556 * t780) * qJD(3) + t33 * qJD(5) + t52 * qJD(6), t825 + (t330 * t555 + t422 * t556 - t445 * t551) * qJD(3) + t34 * qJD(5) + t51 * qJD(6), t830 + (-t116 * t555 - t117 * t553 + t422 * t646 + t445 * t780) * qJD(3) + t5 * qJD(5) (-t116 * t646 + t117 * t445 + t330 * t556) * qJD(3) + t27 * qJD(4) + t3 * qJD(5) + t631; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t696, qJD(3) * t398 + t733, 0, 0, 0, 0, 0, 0, -t730, -t724, 0, qJD(3) * t100 + t622, 0, 0, 0, 0, 0, 0, t735 + t744, t315 * t688 + t711, t739, t27 * qJD(3) + (t807 - t812) * qJD(4) + t17 * qJD(5) + t625; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t320, -t599, t639 * t452, t320, t609, t533, qJD(3) * t170 - qJD(5) * t253 + t737, qJD(3) * t168 + qJD(5) * t252 + t738, 0, 0, t890, t65, t140, -t890, t141, t533, qJD(3) * t33 + qJD(5) * t137 + qJD(6) * t40 + t753 + t843, qJD(3) * t34 - qJD(5) * t138 + qJD(6) * t42 + t755 + t842, t829 + t5 * qJD(3) + (t327 * t859 - t423 * t573) * t852, t3 * qJD(3) + t17 * qJD(4) + (t137 * t859 + t138 * t573) * t852 + t630; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t890, t65, t140, -t890, t141, t533, qJD(3) * t52 + qJD(5) * t40 - qJD(6) * t107 + t753 + t840, qJD(3) * t51 + qJD(5) * t42 + qJD(6) * t106 + t755 + t841, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t67, 0, 0, 0, 0, 0, 0, 0, 0, 0, t24, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t250 * qJD(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, t160 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t690, -t689, 0, 0, 0, 0, 0, 0, 0, 0, -t542, t541, 0, t713 + (-t651 - t786) * t850, 0, 0, 0, 0, 0, 0, t882, t441 + t528, -t697 (t742 * t777 + t783) * qJD(3) - t621, 0, 0, 0, 0, 0, 0, t316 * t688 + t671, t485 - t746, t893 (t784 + t809 - t813) * qJD(3) + t46 * qJD(5) + t595; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t710, 0, 0, 0, 0, 0, 0, 0, 0, 0, t680 + t740; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t435 - t667, t668 + t722, 0, 0, 0, 0, 0, 0, 0, 0, t81, t80, 0, t848 + t46 * qJD(3) + (-t327 * t573 - t423 * t859) * t852; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t81, t80, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t562, -t691, 0, t562, 0, 0, -t666, -t665, 0, 0, t476, t702, 0, -t476, 0, 0, -qJD(4) * t551 - t728, qJD(4) * t549 - t727, -t615, qJD(4) * t399 - t616, t476 * t571 - t701, 0.2e1 * t574 * t609, t441 - t729, t476 * t570 + t701, -t437 + t731, -t883, qJD(5) * t169 - t551 * t718 - t767, qJD(4) * t452 + qJD(5) * t167 - t623, -qJD(4) * t456 + t789, qJD(4) * t101 - t629, -t422 * t725 + t901, -t712 + t756, -t734 - t746, t780 * t892 - t901, -t736 - t745, -t880, qJD(4) * t323 - qJD(5) * t32 - qJD(6) * t49 - t828, qJD(4) * t327 - qJD(5) * t31 - qJD(6) * t50 - t825, qJD(4) * t135 - qJD(5) * t4 - t830, qJD(4) * t28 - qJD(5) * t2 - t631; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t713, 0, 0, 0, 0, 0, 0, 0, 0, 0, t621, 0, 0, 0, 0, 0, 0, -t688 * t310, -t747, 0, -qJD(5) * t45 - t595; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t664, t560 * qJD(5), 0, -t664, 0, 0, t566 * t717, t566 * t716, 0, 0, -t553 * t642, t688 * t416, 0, t555 * t641, 0, 0, qJD(5) * t413 + t555 * t715, qJD(5) * t414 - t553 * t715, 0, qJD(5) * t177; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t692, t693, 0, t703, 0, 0, 0, 0, 0, 0, -t662, t700, -t698, t714, 0, 0, 0, 0, 0, 0, t705, t892, t741, -t624 + t757; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t386, -t598, t699 + t716, -t386, t397, -t695, -t564 * t716 - t607, t564 * t717 - t608, 0, 0, -t891, t144, t231, t891, t233, -t695, -t878 - t888, -t619 + t889 (t553 * t859 - t555 * t573) * t852 - t628 (-t445 * t859 - t573 * t646) * t852 + t588; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t891, t144, t231, t891, t233, -t695, -t879 - t888, -t610 + t889, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t542, -t541, t696, -qJD(3) * t399 - t733, 0, 0, 0, 0, 0, 0, t730 - t882, -qJD(3) * t452 - t549 * t716 + t724, t697, -qJD(3) * t101 - t622, 0, 0, 0, 0, 0, 0, -qJD(3) * t323 - t735 - t745, -t327 * qJD(3) - t314 * t688 - t711, -t739 - t893, -qJD(3) * t28 - qJD(5) * t16 - t625; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t710, 0, 0, 0, 0, 0, 0, 0, 0, 0, t680 - t740; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t692, -t693, 0, -t703, 0, 0, 0, 0, 0, 0, t662, -t700, t698, -t714, 0, 0, 0, 0, 0, 0, -t705, -t892, -t741, t624 + t757; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t397, t617, 0, 0, 0, 0, 0, 0, 0, 0, t233, t232, 0 (-t553 * t573 - t555 * t859) * t852 + t620; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t233, t232, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t320, t599, t476 * t574 - t722, -t320, t549 * t662 + t435, t533, -qJD(3) * t169 + qJD(4) * t450 - t737, -qJD(3) * t167 + t549 * t718 - t738, 0, 0, -t890, -t65, t189, t890, t190, t533, qJD(3) * t32 + qJD(6) * t39 + t752 - t843, qJD(3) * t31 + qJD(6) * t41 + t754 - t842, qJD(3) * t4 - t829, qJD(3) * t2 + qJD(4) * t16 - t630; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t162, t161, 0, qJD(3) * t45 - t848; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t386, t598, -t699, t386, t436, t695, t607, t608, 0, 0, t891, -t144, t292, -t891, t291, t695, t878, t706 + t619, t628, -t588; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t436, t576 * t693, 0, 0, 0, 0, 0, 0, 0, 0, t291, t295, 0, -t620; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(6) * t856, -pkin(5) * t652, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t688 * t856 + t815, t814 + (-t653 - t652) * pkin(5), 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t890, -t65, t189, t890, t190, t533, qJD(3) * t49 - qJD(5) * t39 + t752 - t840, qJD(3) * t50 - qJD(5) * t41 + t754 - t841, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t162, t161, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t891, -t144, t292, -t891, t291, t695, t879, t706 + t610, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t291, t295, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t573 * t852 - t815, pkin(5) * t653 - t814, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg  = t6;
