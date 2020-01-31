% Calculate vector of centrifugal and Coriolis load on the joints for
% S5RRPPR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [7x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d5]';
% m_mdh [6x1]
%   mass of all robot links (including the base)
% rSges [6x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [6x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% tauc [5x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 19:42
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5RRPPR9_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(7,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRPPR9_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRPPR9_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [7 1]), ...
  'S5RRPPR9_coriolisvecJ_fixb_slag_vp1: pkin has to be [7x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRPPR9_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRPPR9_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRPPR9_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 19:40:42
% EndTime: 2019-12-31 19:41:39
% DurationCPUTime: 50.96s
% Computational Cost: add. (10535->1015), mult. (27954->1280), div. (0->0), fcn. (24588->6), ass. (0->506)
t445 = sin(qJ(2));
t448 = cos(qJ(2));
t749 = Icges(4,5) * t448;
t350 = Icges(4,3) * t445 + t749;
t754 = Icges(5,4) * t448;
t359 = Icges(5,1) * t445 - t754;
t434 = Icges(3,4) * t448;
t554 = -Icges(3,2) * t445 + t434;
t887 = t359 - t554;
t912 = t350 + t887;
t757 = Icges(3,4) * t445;
t357 = Icges(3,2) * t448 + t757;
t431 = Icges(4,5) * t445;
t551 = Icges(4,3) * t448 - t431;
t755 = Icges(5,4) * t445;
t886 = -Icges(5,1) * t448 - t551 - t755;
t904 = -t357 + t886;
t557 = Icges(4,1) * t448 + t431;
t353 = -Icges(5,2) * t448 + t755;
t364 = Icges(3,1) * t448 - t757;
t888 = t353 - t364;
t911 = t557 - t888;
t361 = Icges(4,1) * t445 - t749;
t553 = Icges(5,2) * t445 + t754;
t903 = Icges(3,1) * t445 + t361 + t434 + t553;
t446 = sin(qJ(1));
t449 = cos(qJ(1));
t226 = -Icges(4,6) * t449 + t350 * t446;
t716 = t446 * t448;
t404 = Icges(5,4) * t716;
t720 = t445 * t446;
t748 = Icges(5,5) * t449;
t240 = Icges(5,1) * t720 - t404 + t748;
t910 = -t226 - t240;
t714 = t448 * t449;
t402 = Icges(4,5) * t714;
t719 = t445 * t449;
t743 = Icges(4,6) * t446;
t227 = Icges(4,3) * t719 + t402 + t743;
t241 = -Icges(5,5) * t446 + t359 * t449;
t909 = t227 + t241;
t352 = Icges(3,5) * t448 - Icges(3,6) * t445;
t229 = Icges(3,3) * t446 + t352 * t449;
t356 = Icges(4,4) * t448 + Icges(4,6) * t445;
t235 = Icges(4,2) * t446 + t356 * t449;
t908 = -t229 - t235;
t243 = Icges(4,4) * t446 + t449 * t557;
t245 = Icges(3,5) * t446 + t364 * t449;
t889 = t243 + t245;
t740 = Icges(5,6) * t449;
t232 = Icges(5,4) * t720 - Icges(5,2) * t716 + t740;
t242 = -Icges(4,4) * t449 + t446 * t557;
t406 = Icges(3,4) * t720;
t750 = Icges(3,5) * t449;
t244 = Icges(3,1) * t716 - t406 - t750;
t907 = t232 - t242 - t244;
t894 = (Icges(5,5) + Icges(3,6) - Icges(4,6)) * t448 + (Icges(4,4) + Icges(3,5) + Icges(5,6)) * t445;
t347 = Icges(5,5) * t445 - Icges(5,6) * t448;
t225 = -Icges(5,3) * t446 + t347 * t449;
t220 = t449 * t225;
t906 = -t241 * t720 - t245 * t716 - t220;
t876 = t347 - t352;
t905 = -t356 + t876;
t658 = qJD(2) * t445;
t656 = qJD(2) * t448;
t902 = -t445 * t904 - t903 * t448;
t738 = Icges(3,3) * t449;
t228 = Icges(3,5) * t716 - Icges(3,6) * t720 - t738;
t744 = Icges(3,6) * t449;
t236 = Icges(3,4) * t716 - Icges(3,2) * t720 - t744;
t727 = t236 * t445;
t535 = -t244 * t448 + t727;
t736 = Icges(5,3) * t449;
t224 = Icges(5,5) * t720 - Icges(5,6) * t716 + t736;
t539 = t232 * t448 - t240 * t445;
t234 = -Icges(4,2) * t449 + t356 * t446;
t728 = t234 * t449;
t543 = t226 * t445 + t242 * t448;
t828 = t446 * t543;
t859 = t224 * t449 - t446 * t539 - t728 + t828;
t901 = -t228 * t449 - t446 * t535 + t859;
t576 = -t227 * t720 + t235 * t449 - t243 * t716;
t405 = Icges(5,4) * t719;
t741 = Icges(5,6) * t446;
t233 = -Icges(5,2) * t714 + t405 - t741;
t237 = Icges(3,6) * t446 + t449 * t554;
t899 = -t229 * t449 - t906;
t858 = -t233 * t716 - t237 * t720 + t899;
t900 = -t576 + t858;
t898 = t908 * t446 - t889 * t714 - t909 * t719;
t218 = t446 * t234;
t897 = -t446 * t228 + t907 * t714 + t910 * t719 - t218;
t896 = t912 * qJD(2);
t895 = t911 * qJD(2);
t815 = t894 * t449;
t816 = t894 * t446;
t891 = -t904 * t656 + t903 * t658;
t890 = t241 - t237;
t885 = t233 * t448 + t237 * t445;
t843 = -t224 * t446 - t236 * t719 - t897;
t842 = -t225 * t446 - t233 * t714 - t237 * t719 - t898;
t884 = t902 * t446 + t815;
t883 = -t902 * t449 + t816;
t882 = t236 + t910;
t881 = -t227 - t890;
t879 = -t233 + t889;
t875 = t895 * t448 + t896 * t445 + (-t445 * t903 + t904 * t448) * qJD(2) + t894 * qJD(1);
t874 = t894 * qJD(2);
t873 = t909 * t445 + t889 * t448 - t885;
t872 = t535 + t539 - t543;
t871 = -qJD(1) * t902 + t905 * qJD(2);
t870 = t446 * (-Icges(5,1) * t714 - t405 + (-t357 - t551) * t449 + t879) - t449 * (-Icges(3,2) * t716 + t886 * t446 - t406 - t907);
t869 = (-t874 * t446 + (-t225 + t872 - t908) * qJD(1)) * t449;
t659 = qJD(1) * t449;
t868 = t883 * qJD(1);
t867 = (Icges(5,2) * t720 + t404 + t882) * t449 + (-Icges(4,1) * t719 + t402 + (t361 - t553) * t449 - t881) * t446;
t866 = (t842 * t446 - t843 * t449) * qJD(2);
t865 = (t900 * t446 - t901 * t449) * qJD(2);
t864 = t884 * qJD(1);
t863 = t903 - t912;
t862 = t904 + t911;
t649 = qJD(5) * t448;
t657 = qJD(2) * t446;
t327 = t449 * t649 + t657;
t655 = qJD(2) * t449;
t328 = -t446 * t649 + t655;
t650 = qJD(5) * t445;
t414 = qJD(1) + t650;
t447 = cos(qJ(5));
t713 = t449 * t447;
t444 = sin(qJ(5));
t718 = t446 * t444;
t283 = t445 * t718 - t713;
t717 = t446 * t447;
t284 = t444 * t449 + t445 * t717;
t135 = Icges(6,5) * t284 - Icges(6,6) * t283 + Icges(6,3) * t716;
t265 = Icges(6,4) * t284;
t138 = -Icges(6,2) * t283 + Icges(6,6) * t716 + t265;
t264 = Icges(6,4) * t283;
t142 = -Icges(6,1) * t284 - Icges(6,5) * t716 + t264;
t46 = t135 * t716 - t138 * t283 - t142 * t284;
t285 = -t444 * t719 - t717;
t286 = t445 * t713 - t718;
t137 = Icges(6,5) * t286 + Icges(6,6) * t285 + Icges(6,3) * t714;
t753 = Icges(6,4) * t286;
t140 = Icges(6,2) * t285 + Icges(6,6) * t714 + t753;
t266 = Icges(6,4) * t285;
t143 = Icges(6,1) * t286 + Icges(6,5) * t714 + t266;
t47 = t137 * t716 - t283 * t140 + t284 * t143;
t752 = Icges(6,4) * t444;
t403 = t448 * t752;
t715 = t447 * t448;
t747 = Icges(6,5) * t445;
t239 = -Icges(6,1) * t715 + t403 + t747;
t549 = Icges(6,5) * t447 - Icges(6,6) * t444;
t480 = -Icges(6,3) * t445 + t448 * t549;
t751 = Icges(6,4) * t447;
t552 = -Icges(6,2) * t444 + t751;
t481 = -Icges(6,6) * t445 + t448 * t552;
t76 = t239 * t284 + t283 * t481 - t480 * t716;
t12 = t327 * t47 - t328 * t46 + t414 * t76;
t48 = t135 * t714 + t285 * t138 - t142 * t286;
t49 = t137 * t714 + t285 * t140 + t286 * t143;
t77 = t239 * t286 - t285 * t481 - t480 * t714;
t13 = t327 * t49 - t328 * t48 + t77 * t414;
t547 = t138 * t444 + t142 * t447;
t50 = t135 * t445 + t448 * t547;
t569 = -rSges(6,1) * t284 + rSges(6,2) * t283;
t146 = rSges(6,3) * t716 - t569;
t568 = rSges(6,1) * t447 - rSges(6,2) * t444;
t253 = rSges(6,3) * t448 + t445 * t568;
t313 = (rSges(6,1) * t444 + rSges(6,2) * t447) * t448;
t170 = qJD(2) * t253 + qJD(5) * t313;
t622 = t446 * t656;
t279 = t445 * t659 + t622;
t624 = t445 * t657;
t627 = t448 * t659;
t492 = -t624 + t627;
t186 = pkin(4) * t279 + pkin(7) * t492;
t643 = qJD(2) * qJD(5);
t615 = t445 * t643;
t214 = qJD(1) * t327 - t446 * t615;
t417 = pkin(3) * t714;
t450 = qJD(2) ^ 2;
t483 = -rSges(6,3) * t445 + t448 * t568;
t660 = qJD(1) * t448;
t389 = pkin(3) * t624;
t661 = qJD(1) * t446;
t671 = -qJ(4) * t661 - t389;
t193 = (pkin(3) * t660 + qJD(4)) * t449 + t671;
t651 = qJD(4) * t449;
t390 = pkin(2) * t624;
t426 = qJD(3) * t445;
t145 = pkin(2) * t627 + qJ(3) * t279 + t426 * t446 - t390;
t379 = t449 * pkin(1) + t446 * pkin(6);
t345 = t379 * qJD(1);
t707 = -t145 - t345;
t521 = -t193 - t651 + t707;
t366 = pkin(2) * t445 - qJ(3) * t448;
t323 = t366 * t657;
t644 = qJD(2) * qJD(3);
t616 = t448 * t644;
t686 = qJD(1) * t323 + t449 * t616;
t637 = qJD(1) * t389 + t686;
t734 = qJ(3) * t445;
t784 = pkin(2) * t448;
t371 = t734 + t784;
t654 = qJD(3) * t448;
t267 = qJD(2) * t371 - t654;
t781 = pkin(4) * t445;
t376 = pkin(7) * t448 + t781;
t344 = t376 * qJD(2);
t688 = -t267 - t344;
t529 = t447 * t414;
t596 = qJD(1) * t445 + qJD(5);
t124 = -t446 * t529 + (-t449 * t596 - t622) * t444;
t528 = t414 * t444;
t125 = t596 * t713 + (t447 * t656 - t528) * t446;
t570 = rSges(6,1) * t125 + rSges(6,2) * t124;
t74 = rSges(6,3) * t492 + t570;
t578 = pkin(4) * t448 - pkin(7) * t445;
t827 = (-qJD(2) * t578 - t426) * t446;
t10 = -t450 * t417 - t170 * t328 - t214 * t483 - t414 * t74 + (-t146 * t649 + t449 * t688) * qJD(2) + (-t186 + t521 + t827) * qJD(1) + t637;
t148 = t286 * rSges(6,1) + t285 * rSges(6,2) + rSges(6,3) * t714;
t321 = pkin(4) * t719 + pkin(7) * t714;
t574 = -t323 - t389 + t651;
t343 = -qJ(4) * t446 + t417;
t317 = pkin(2) * t714 + qJ(3) * t719;
t591 = t317 + t379;
t634 = t343 + t591;
t43 = t148 * t414 + t483 * t327 - t827 + (t321 + t634) * qJD(1) + t574;
t857 = qJD(1) * t43 + t10;
t771 = rSges(5,2) * t445;
t571 = rSges(5,1) * t448 + t771;
t312 = t571 * t446;
t851 = t224 - t228 + t885;
t628 = t446 * t660;
t850 = t445 * t655 + t628;
t849 = -t864 + t865;
t848 = t866 + t868;
t847 = t872 * qJD(2) + t891 * t446 + ((t350 * t449 + t743 + t890) * t448 + (t353 * t449 - t741 - t889) * t445) * qJD(1);
t846 = t873 * qJD(2) - t891 * t449 + ((t226 + t744 + t748) * t448 + (-t242 + t740 + t750) * t445 + (t888 * t445 + t887 * t448) * t446) * qJD(1);
t845 = -t871 * t446 + t875 * t449;
t844 = t875 * t446 + t871 * t449;
t841 = -t728 + t898;
t838 = t879 * t445 + t881 * t448;
t837 = -t445 * t907 + t882 * t448;
t835 = -t874 * t449 + (t876 * t446 - t234 + t736 + t738 - t873) * qJD(1);
t783 = pkin(3) * t445;
t604 = -t366 - t783;
t588 = t578 + t604;
t520 = t588 * t449;
t834 = qJD(2) * t520 - t146 * t414 + t328 * t483;
t833 = 0.2e1 * qJD(2);
t832 = rSges(6,3) + pkin(7);
t319 = t376 * t446;
t653 = qJD(3) * t449;
t395 = t445 * t653;
t652 = qJD(4) * t446;
t597 = t395 - t652;
t342 = pkin(3) * t716 + qJ(4) * t449;
t311 = t371 * t446;
t440 = t449 * pkin(6);
t377 = pkin(1) * t446 - t440;
t685 = -t311 - t377;
t636 = -t342 + t685;
t42 = (-t319 + t636) * qJD(1) + t597 + t834;
t830 = qJD(1) * t42;
t826 = (-qJD(2) * t571 - t426) * t446;
t773 = rSges(4,1) * t445;
t368 = -rSges(4,3) * t448 + t773;
t825 = (qJD(2) * t368 - t426) * t446;
t346 = qJD(1) * t377;
t824 = -qJD(1) * t311 - t346;
t192 = -pkin(3) * t850 - qJ(4) * t659 - t652;
t308 = t366 * t446;
t314 = t366 * t449;
t639 = -t308 * t657 - t314 * t655 + t426;
t629 = t445 * t661;
t621 = t448 * t655;
t674 = qJ(3) * t621 + t395;
t144 = -pkin(2) * t850 - qJ(3) * t629 + t674;
t640 = t449 * t144 + t446 * t145 + t311 * t659;
t822 = t449 * t192 + t446 * t193 + t342 * t659 - t639 + t640;
t436 = t446 * rSges(4,2);
t259 = rSges(4,1) * t714 + rSges(4,3) * t719 + t436;
t821 = t591 + t259;
t782 = pkin(3) * t448;
t819 = -t782 - t784;
t408 = rSges(5,2) * t716;
t519 = -rSges(5,1) * t720 - rSges(5,3) * t449;
t254 = -t408 - t519;
t817 = qJD(1) * t254;
t814 = -t870 * t445 + t867 * t448;
t813 = (-t445 * t863 + t448 * t862) * qJD(1);
t812 = t905 * qJD(1);
t811 = t446 * t596 - t621;
t801 = t42 * t449 + t43 * t446;
t474 = t327 * (-Icges(6,2) * t286 + t143 + t266) - t328 * (-Icges(6,2) * t284 - t142 - t264) + t414 * (Icges(6,2) * t715 + t239 + t403);
t301 = (Icges(6,1) * t444 + t751) * t448;
t800 = t327 * (-Icges(6,1) * t285 + t140 + t753) - t328 * (Icges(6,1) * t283 + t138 + t265) + t414 * (-t481 - t301);
t799 = m(4) / 0.2e1;
t798 = m(5) / 0.2e1;
t797 = m(6) / 0.2e1;
t796 = -pkin(2) - pkin(3);
t795 = t214 / 0.2e1;
t215 = qJD(1) * t328 - t449 * t615;
t794 = t215 / 0.2e1;
t793 = -t327 / 0.2e1;
t792 = t327 / 0.2e1;
t791 = -t328 / 0.2e1;
t790 = t328 / 0.2e1;
t789 = -t414 / 0.2e1;
t788 = t414 / 0.2e1;
t785 = -rSges(4,1) - pkin(2);
t68 = Icges(6,5) * t125 + Icges(6,6) * t124 + Icges(6,3) * t492;
t70 = Icges(6,4) * t125 + Icges(6,2) * t124 + Icges(6,6) * t492;
t72 = Icges(6,1) * t125 + Icges(6,4) * t124 + Icges(6,5) * t492;
t8 = (-qJD(2) * t547 + t68) * t445 + (qJD(2) * t135 + t444 * t70 - t447 * t72 + (t138 * t447 - t142 * t444) * qJD(5)) * t448;
t780 = t8 * t328;
t546 = t140 * t444 - t143 * t447;
t122 = t444 * t811 - t449 * t529;
t123 = -t447 * t811 - t449 * t528;
t67 = Icges(6,5) * t123 + Icges(6,6) * t122 - Icges(6,3) * t850;
t69 = Icges(6,4) * t123 + Icges(6,2) * t122 - Icges(6,6) * t850;
t71 = Icges(6,1) * t123 + Icges(6,4) * t122 - Icges(6,5) * t850;
t9 = (-qJD(2) * t546 + t67) * t445 + (qJD(2) * t137 + t444 * t69 - t447 * t71 + (t140 * t447 + t143 * t444) * qJD(5)) * t448;
t779 = t9 * t327;
t776 = -pkin(4) - qJ(3);
t222 = Icges(6,3) * t448 + t445 * t549;
t287 = (Icges(6,5) * t444 + Icges(6,6) * t447) * t448;
t149 = qJD(2) * t222 + qJD(5) * t287;
t230 = Icges(6,6) * t448 + t445 * t552;
t156 = (Icges(6,2) * t447 + t752) * t649 + t230 * qJD(2);
t555 = Icges(6,1) * t447 - t752;
t238 = Icges(6,5) * t448 + t445 * t555;
t163 = qJD(2) * t238 + qJD(5) * t301;
t540 = -t239 * t447 - t444 * t481;
t20 = (-qJD(2) * t540 + t149) * t445 + (-qJD(2) * t480 + t156 * t444 - t163 * t447 + (t239 * t444 - t447 * t481) * qJD(5)) * t448;
t614 = t448 * t643;
t90 = -t445 * t480 + t448 * t540;
t775 = t20 * t414 + t90 * t614;
t774 = rSges(3,1) * t448;
t772 = rSges(5,1) * t445;
t770 = rSges(5,2) * t448;
t769 = rSges(5,3) * t446;
t435 = t446 * rSges(3,3);
t764 = t50 * t214;
t51 = t137 * t445 + t448 * t546;
t763 = t51 * t215;
t762 = -rSges(5,1) - qJ(3);
t761 = -rSges(4,3) - qJ(3);
t760 = -rSges(5,3) - qJ(4);
t669 = rSges(3,2) * t720 + t449 * rSges(3,3);
t256 = rSges(3,1) * t716 - t669;
t369 = rSges(3,1) * t445 + rSges(3,2) * t448;
t625 = t369 * t655;
t110 = -t625 + (-t256 - t377) * qJD(1);
t733 = t110 * t446;
t732 = t110 * t449;
t626 = t369 * t657;
t260 = rSges(3,1) * t714 - rSges(3,2) * t719 + t435;
t691 = t260 + t379;
t111 = qJD(1) * t691 - t626;
t316 = t369 * t449;
t731 = t111 * t316;
t712 = t123 * rSges(6,1) + t122 * rSges(6,2);
t706 = t146 + t319;
t705 = t148 + t321;
t692 = -t259 - t317;
t690 = t446 * t311 + t449 * t317;
t373 = rSges(4,1) * t448 + rSges(4,3) * t445;
t689 = -t373 * qJD(2) - t267;
t687 = -qJD(1) * t314 + t446 * t654;
t684 = -t317 - t343;
t324 = t366 * t661;
t392 = pkin(3) * t629;
t683 = t324 + t392;
t676 = -t366 - t368;
t675 = -t371 - t373;
t673 = rSges(4,2) * t659 + rSges(4,3) * t621;
t672 = rSges(3,2) * t629 + rSges(3,3) * t659;
t396 = t448 * t653;
t670 = t392 + t396;
t668 = t446 ^ 2 + t449 ^ 2;
t645 = qJD(1) * qJD(2);
t642 = pkin(3) * t719;
t641 = t450 * t782;
t410 = rSges(5,1) * t719;
t258 = -rSges(5,2) * t714 + t410 - t769;
t638 = -t258 + t684;
t635 = -t321 + t684;
t425 = pkin(6) * t659;
t633 = t425 + t674;
t632 = rSges(5,1) * t621 + rSges(5,2) * t850;
t631 = t390 - t671;
t630 = t796 - t832;
t618 = -pkin(1) - t774;
t617 = t449 * t645;
t612 = t659 / 0.2e1;
t611 = -t657 / 0.2e1;
t609 = t656 / 0.2e1;
t608 = -t655 / 0.2e1;
t607 = t655 / 0.2e1;
t605 = -pkin(1) - t734;
t603 = -t371 - t782;
t601 = t449 * t676;
t595 = t144 * t655 + t145 * t657 + t311 * t617 + t445 * t644;
t326 = qJD(1) * (-pkin(1) * t661 + t425);
t594 = t446 * t616 + t326 + (t144 + t395) * qJD(1);
t592 = t446 * t342 + t449 * t343 + t690;
t590 = t668 * t783;
t589 = t571 + t604;
t585 = t43 * t630;
t581 = qJD(5) * t609;
t580 = t448 * t785 - pkin(1);
t579 = -pkin(3) * t656 - t267;
t575 = t311 * t657 + t317 * t655 - t654;
t572 = -rSges(3,2) * t445 + t774;
t367 = -t770 + t772;
t391 = pkin(4) * t621;
t185 = -pkin(4) * t629 - pkin(7) * t850 + t391;
t560 = qJD(1) * t192 + t594;
t73 = -rSges(6,3) * t850 + t712;
t11 = -t446 * t641 - t170 * t327 + t215 * t483 + t414 * t73 + (t185 - t652) * qJD(1) + (qJD(1) * t520 + t148 * t649 + t446 * t688) * qJD(2) + t560;
t567 = -t10 * t446 + t11 * t449;
t566 = t446 * t47 - t449 * t46;
t565 = t446 * t46 + t449 * t47;
t564 = t446 * t49 - t449 * t48;
t563 = t446 * t48 + t449 * t49;
t562 = t446 * t51 - t449 * t50;
t561 = t446 * t50 + t449 * t51;
t559 = t417 + t591;
t548 = -t111 * t446 - t732;
t545 = t146 * t449 - t148 * t446;
t530 = t483 + t588;
t338 = t367 * qJD(2);
t524 = -t338 + t579;
t522 = t605 - t772;
t515 = qJD(2) * t601 + t395;
t310 = t369 * t446;
t309 = t368 * t446;
t514 = -t170 - t344 + t579;
t506 = t342 * t657 + t343 * t655 + t575;
t505 = -qJD(1) * t342 + t597 + t824;
t103 = (t256 * t446 + t260 * t449) * qJD(2);
t495 = t589 * t655;
t493 = t192 * t655 + t193 * t657 + t342 * t617 + t595;
t490 = -t641 + (-t267 - t338) * qJD(2);
t489 = t135 * t328 - t137 * t327 + t414 * t480;
t488 = -(-Icges(6,5) * t283 - Icges(6,6) * t284) * t328 + (Icges(6,5) * t285 - Icges(6,6) * t286) * t327 + t287 * t414;
t484 = t448 * t488;
t482 = t448 * t555 - t747;
t476 = t495 - t652;
t35 = t146 * t327 + t148 * t328 + (t319 * t446 + t321 * t449) * qJD(2) + t506;
t466 = -t35 * t545 - (-t42 * t446 + t43 * t449) * t483;
t453 = (t480 * t449 - t546) * t327 - (t480 * t446 - t547) * t328 + (t222 - t540) * t414;
t452 = t453 * t448;
t438 = t449 * rSges(4,2);
t340 = t572 * qJD(2);
t322 = t578 * t449;
t320 = t578 * t446;
t318 = t571 * t449;
t315 = t368 * t449;
t280 = t621 - t629;
t278 = t668 * t658;
t255 = t373 * t446 - t438;
t201 = t483 * t449;
t200 = t483 * t446;
t199 = t482 * t449;
t198 = t482 * t446;
t197 = t481 * t449;
t196 = t481 * t446;
t184 = rSges(6,1) * t285 - rSges(6,2) * t286;
t183 = -rSges(6,1) * t283 - rSges(6,2) * t284;
t176 = -qJD(2) * t310 + (t449 * t572 + t435) * qJD(1);
t175 = -qJD(2) * t309 + (t373 * t449 + t436) * qJD(1);
t174 = qJD(2) * t312 + (t367 * t449 - t769) * qJD(1);
t173 = -rSges(3,1) * t850 - rSges(3,2) * t621 + t672;
t172 = -rSges(4,1) * t850 - rSges(4,3) * t629 + t673;
t171 = qJD(1) * t519 + t632;
t82 = qJD(1) * t821 - t323 - t825;
t81 = (-t255 + t685) * qJD(1) + t515;
t80 = -t340 * t655 + (-t176 - t345 + t626) * qJD(1);
t79 = -t340 * t657 + t326 + (t173 - t625) * qJD(1);
t78 = (t255 * t446 + t259 * t449) * qJD(2) + t575;
t66 = -t826 + (t258 + t634) * qJD(1) + t574;
t65 = t395 + (-t254 + t636) * qJD(1) + t476;
t64 = (t254 * t446 + t258 * t449) * qJD(2) + t506;
t45 = t689 * t655 + (-t175 + t707 + t825) * qJD(1) + t686;
t44 = qJD(1) * t172 + (qJD(1) * t601 + t446 * t689) * qJD(2) + t594;
t34 = t490 * t449 + (-t174 + t521 + t826) * qJD(1) + t637;
t33 = t490 * t446 + (t171 + t476) * qJD(1) + t560;
t18 = (t172 * t449 + t175 * t446 + (t255 * t449 + t446 * t692) * qJD(1)) * qJD(2) + t595;
t17 = -t124 * t481 + t125 * t239 + t149 * t716 - t156 * t283 + t163 * t284 - t480 * t492;
t16 = -t122 * t481 + t123 * t239 + t149 * t714 + t156 * t285 + t163 * t286 + t480 * t850;
t15 = (t171 * t449 + t174 * t446 + (t254 * t449 + t446 * t638) * qJD(1)) * qJD(2) + t493;
t14 = t327 * t51 - t328 * t50 + t414 * t90;
t7 = t124 * t140 + t125 * t143 + t137 * t492 - t283 * t69 + t284 * t71 + t67 * t716;
t6 = t124 * t138 - t125 * t142 + t135 * t492 - t283 * t70 + t284 * t72 + t68 * t716;
t5 = t122 * t140 + t123 * t143 - t137 * t850 + t285 * t69 + t286 * t71 + t67 * t714;
t4 = t122 * t138 - t123 * t142 - t135 * t850 + t285 * t70 + t286 * t72 + t68 * t714;
t3 = t146 * t215 - t148 * t214 + t327 * t74 + t328 * t73 + (t185 * t449 + t186 * t446 + (t319 * t449 + t446 * t635) * qJD(1)) * qJD(2) + t493;
t2 = t17 * t414 + t214 * t46 + t215 * t47 + t327 * t7 - t328 * t6 + t614 * t76;
t1 = t16 * t414 + t214 * t48 + t215 * t49 + t327 * t5 - t328 * t4 + t614 * t77;
t19 = [t764 / 0.2e1 + t763 / 0.2e1 + t13 * t790 + t779 / 0.2e1 - t780 / 0.2e1 + t775 + t16 * t792 + t77 * t794 + t76 * t795 + (t17 + t13) * t791 + (-qJD(2) * t902 + t895 * t445 - t896 * t448) * qJD(1) + (-(-qJD(1) * t319 - t42 + t505 + t834) * t43 + t10 * (t440 + t569) + t42 * (-t570 + t631) + t11 * (t559 + t705) + t43 * (t391 + t633 + t712) + (-t10 * qJ(4) - t42 * qJD(4) + t585 * t658 + (-t43 * qJ(4) + (t630 * t448 + t605 - t781) * t42) * qJD(1)) * t449 + (-t10 * pkin(1) - pkin(6) * t830 - t11 * qJ(4) + t43 * (-pkin(1) * qJD(1) - qJD(4)) + (t42 * (qJD(2) * t832 - qJD(3)) + t857 * t776) * t445 + (qJD(2) * t42 * t776 + qJD(1) * t585 + t10 * t630) * t448) * t446) * m(6) + ((t760 * t446 - t770 * t449 + t410 + t559) * t33 + (t408 + t440 + t760 * t449 + (t762 * t445 - pkin(1) + t819) * t446) * t34 + (t631 + (-qJD(4) + (t522 + (rSges(5,2) + t796) * t448) * qJD(1)) * t449 + (-t426 + (t448 * t762 - t771) * qJD(2) + (rSges(5,3) - pkin(6)) * qJD(1)) * t446) * t65 + (t632 + t633 + (t760 * qJD(1) + t796 * t658) * t449 + (-qJD(4) + (t522 + t819) * qJD(1)) * t446 - t495 - t505 + t65 + t817) * t66) * m(5) + (t45 * (t438 + t440) + t81 * t390 + t44 * t821 + t82 * (t633 + t673) + (t82 * t785 * t658 + t81 * (t445 * t761 + t580) * qJD(1)) * t449 + (t45 * t580 + (-t81 * qJD(3) + t45 * t761) * t445 + t81 * (t448 * t761 + t773) * qJD(2) + (t81 * (-rSges(4,2) - pkin(6)) + t82 * (-pkin(1) + t675)) * qJD(1)) * t446 - (-qJD(1) * t255 + t515 - t81 + t824) * t82) * m(4) + (t80 * (t446 * t618 + t440 + t669) + t79 * t691 + t111 * (t425 + t672) + (t369 * t733 - t731) * qJD(2) + ((-pkin(1) - t572) * t732 + (t110 * (-rSges(3,3) - pkin(6)) + t111 * t618) * t446) * qJD(1) - (-qJD(1) * t256 - t110 - t346 - t625) * t111) * m(3) + ((((t229 + t727) * t449 + t858 + t897 + t906) * t449 + (-t828 + (-t225 + t539) * t446 - t841 + t859) * t446) * qJD(2) + t868) * t607 + (((t449 * t851 + t841 + t842) * t449 + (t446 * t851 - t218 + t220 + t576 + t843 - t899) * t446) * qJD(2) + t849 + t864) * t611 + (t845 + t846) * t657 / 0.2e1 + (t844 - t847 + t848) * t608 + ((t837 - t884) * t446 + (t838 + t883) * t449) * t645 / 0.2e1; -t14 * t649 / 0.2e1 + t562 * t581 + (qJD(1) * t561 + t446 * t9 - t449 * t8) * t788 + (((t197 * t444 - t199 * t447 + t137) * t327 - (t196 * t444 - t198 * t447 + t135) * t328 + (t230 * t444 - t238 * t447 - t480) * t414 + t90 * qJD(5)) * t448 + (-qJD(5) * t561 + t453) * t445) * t789 + ((-t197 * t283 + t199 * t284) * t327 - (-t196 * t283 + t198 * t284) * t328 + (-t230 * t283 + t238 * t284) * t414 + (t448 * t76 - t47 * t719) * qJD(5) + ((-qJD(5) * t46 + t489) * t445 + t452) * t446) * t790 + (qJD(1) * t565 + t446 * t7 - t449 * t6) * t791 + (qJD(1) * t563 - t4 * t449 + t446 * t5) * t792 + ((t197 * t285 + t199 * t286) * t327 - (t196 * t285 + t198 * t286) * t328 + (t230 * t285 + t238 * t286) * t414 + (t448 * t77 - t48 * t720) * qJD(5) + ((-qJD(5) * t49 + t489) * t445 + t452) * t449) * t793 + t564 * t794 + t566 * t795 + (t12 * t446 + t13 * t449) * t650 / 0.2e1 + (t42 * t683 + t3 * t592 + (t3 * t705 + t42 * t514 + t857 * t530) * t449 + (t11 * t530 + t43 * t514 + t3 * t706 + (-t483 - t578) * t830) * t446 - t42 * (-t200 * t414 - t253 * t328 + t670) - t43 * (t201 * t414 - t253 * t327 + t687) - (t42 * (t308 - t320) + t43 * (t322 - t642)) * qJD(1) - ((-t146 * t42 + t148 * t43) * t448 + t466 * t445) * qJD(5) - t801 * qJD(2) * (-t376 + t603) + ((qJD(1) * t706 + t185 + t73) * t449 + (t186 + t74 + (-t148 + t635) * qJD(1)) * t446 - t200 * t327 - t201 * t328 - (t320 * t446 + t322 * t449 - t590) * qJD(2) + t822) * t35) * m(6) + (t15 * t592 + (t15 * t258 + t34 * t589) * t449 + (t15 * t254 + t33 * t589) * t446 + (t524 * t446 - t687 + (t449 * t589 - t318 + t642) * qJD(1)) * t66 + (-t308 * qJD(1) + t524 * t449 - t670 + t683) * t65 - (t66 * t446 + t65 * t449) * qJD(2) * (-t367 + t603) + ((t171 + t817) * t449 + (qJD(1) * t638 + t174) * t446 - (t312 * t446 + t318 * t449 - t590) * qJD(2) + t822) * t64) * m(5) + (t81 * t324 + t18 * t690 + t78 * t640 + (t45 * t676 + t81 * t689 + t18 * t259 + t78 * t172 + (t78 * t255 + t676 * t82) * qJD(1)) * t449 + (t44 * t676 + t82 * t689 + t18 * t255 + t78 * t175 + (t81 * t368 + t692 * t78) * qJD(1)) * t446 - t81 * (t396 + (t308 + t309) * qJD(1)) - t82 * (-qJD(1) * t315 + t687) - t78 * t639 - ((-t78 * t315 + t675 * t81) * t449 + (-t78 * t309 + t675 * t82) * t446) * qJD(2)) * m(4) + (-(t110 * t310 - t731) * qJD(1) - (t103 * (-t310 * t446 - t316 * t449) + t548 * t572) * qJD(2) + 0.2e1 * t103 * (t173 * t449 + t176 * t446 + (t256 * t449 - t260 * t446) * qJD(1)) + t548 * t340 + (-t79 * t446 - t80 * t449 + (-t111 * t449 + t733) * qJD(1)) * t369) * m(3) - ((t867 * t445 + t870 * t448) * qJD(2) + (t862 * t445 + t863 * t448) * qJD(1)) * qJD(1) / 0.2e1 + (t847 * t449 + t846 * t446 + (t837 * t446 + t838 * t449) * qJD(1)) * qJD(1) / 0.2e1 + ((-t657 * t815 - t812) * t446 + ((t446 * t816 + t814) * qJD(2) + t813) * t449) * t611 + ((-t655 * t816 + t812) * t449 + ((t449 * t815 + t814) * qJD(2) + t813) * t446) * t607 + (t1 + t845 * qJD(1) + (t842 * t659 + (t843 * qJD(1) + t835 * t446 - t869) * t446) * t833) * t446 / 0.2e1 - (t2 + t844 * qJD(1) + ((t900 * qJD(1) + t869) * t449 + (t901 * qJD(1) - t835 * t449) * t446) * t833) * t449 / 0.2e1 + (t12 + t849 + t865) * t661 / 0.2e1 + (t13 + t848 + t866) * t612; -m(4) * (t278 * t78 + t279 * t82 + t280 * t81) - m(5) * (t278 * t64 + t279 * t66 + t280 * t65) - m(6) * (t278 * t35 + t279 * t43 + t280 * t42) + 0.2e1 * ((t655 * t81 + t657 * t82 - t18) * t799 + (t65 * t655 + t657 * t66 - t15) * t798 + (t42 * t655 + t43 * t657 - t3) * t797) * t448 + 0.2e1 * ((qJD(2) * t78 + t44 * t446 + t449 * t45 + t659 * t82 - t661 * t81) * t799 + (qJD(2) * t64 + t33 * t446 + t34 * t449 - t65 * t661 + t659 * t66) * t798 + (qJD(2) * t35 + t10 * t449 + t11 * t446 - t42 * t661 + t43 * t659) * t797) * t445; m(5) * (t33 * t449 - t34 * t446) + m(6) * t567; t1 * t714 / 0.2e1 + (t445 * t77 + t448 * t563) * t794 + ((-qJD(2) * t563 + t16) * t445 + (-qJD(1) * t564 + qJD(2) * t77 + t4 * t446 + t449 * t5) * t448) * t792 + t2 * t716 / 0.2e1 + (t445 * t76 + t448 * t565) * t795 + ((-qJD(2) * t565 + t17) * t445 + (-qJD(1) * t566 + qJD(2) * t76 + t446 * t6 + t449 * t7) * t448) * t791 + t14 * t609 + t445 * (t763 + t764 + t775 + t779 - t780) / 0.2e1 + (t445 * t90 + t448 * t561) * t581 + ((-qJD(2) * t561 + t20) * t445 + (-qJD(1) * t562 + qJD(2) * t90 + t446 * t8 + t449 * t9) * t448) * t788 + (t285 * t474 - t286 * t800 + t449 * t484) * t793 + (-t283 * t474 - t284 * t800 + t446 * t484) * t790 + (t488 * t445 + (t474 * t444 + t447 * t800) * t448) * t789 + (-t628 / 0.2e1 + t445 * t608) * t13 + (t445 * t611 + t448 * t612) * t12 + ((qJD(2) * t466 - t10 * t146 + t11 * t148 - t42 * t74 + t43 * t73) * t445 + (t42 * (-qJD(2) * t146 + t170 * t446) + t43 * (qJD(2) * t148 - t170 * t449) + t3 * t545 + t35 * (-t146 * t661 - t148 * t659 - t446 * t73 + t449 * t74) - (qJD(1) * t801 - t567) * t483) * t448 - t42 * (-t183 * t414 - t313 * t328) - t43 * (t184 * t414 - t313 * t327) - t35 * (t183 * t327 + t184 * t328)) * m(6);];
tauc = t19(:);