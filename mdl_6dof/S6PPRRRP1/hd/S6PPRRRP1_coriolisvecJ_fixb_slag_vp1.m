% Calculate vector of centrifugal and Coriolis load on the joints for
% S6PPRRRP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d3,d4,d5,theta1,theta2]';
% m_mdh [7x1]
%   mass of all robot links (including the base)
% rSges [7x3]
%   center of mass of all robot links (in body frames)
%   rows: links of the robot (starting with base)
%   columns: x-, y-, z-coordinates
% Icges [7x6]
%   inertia of all robot links about their respective center of mass, in body frames
%   rows: links of the robot (starting with base)
%   columns: xx, yy, zz, xy, xz, yz (see inertiavector2matrix.m)
% 
% Output:
% tauc [6x1]
%   joint torques required to compensate Coriolis and centrifugal load

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-08 18:55
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6PPRRRP1_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PPRRRP1_coriolisvecJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PPRRRP1_coriolisvecJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PPRRRP1_coriolisvecJ_fixb_slag_vp1: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6PPRRRP1_coriolisvecJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6PPRRRP1_coriolisvecJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6PPRRRP1_coriolisvecJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-08 18:52:22
% EndTime: 2019-03-08 18:54:12
% DurationCPUTime: 100.12s
% Computational Cost: add. (140789->1375), mult. (406507->1889), div. (0->0), fcn. (512205->14), ass. (0->501)
t818 = Icges(6,4) + Icges(7,4);
t809 = Icges(6,1) + Icges(7,1);
t808 = Icges(6,5) + Icges(7,5);
t817 = Icges(6,2) + Icges(7,2);
t816 = Icges(6,6) + Icges(7,6);
t815 = Icges(6,3) + Icges(7,3);
t684 = sin(pkin(11));
t687 = cos(pkin(12));
t568 = t684 * t687;
t683 = sin(pkin(12));
t688 = cos(pkin(11));
t572 = t688 * t683;
t690 = cos(pkin(6));
t477 = t572 * t690 + t568;
t490 = sin(qJ(3));
t699 = cos(qJ(3));
t567 = t684 * t683;
t574 = t688 * t687;
t500 = -t574 * t690 + t567;
t685 = sin(pkin(7));
t686 = sin(pkin(6));
t571 = t686 * t685;
t689 = cos(pkin(7));
t805 = t500 * t689 + t688 * t571;
t454 = t477 * t699 - t490 * t805;
t573 = t688 * t686;
t470 = t500 * t685 - t573 * t689;
t489 = sin(qJ(4));
t698 = cos(qJ(4));
t419 = t454 * t698 + t470 * t489;
t453 = t477 * t490 + t699 * t805;
t488 = sin(qJ(5));
t491 = cos(qJ(5));
t339 = -t419 * t488 + t453 * t491;
t834 = t818 * t339;
t478 = -t567 * t690 + t574;
t501 = t568 * t690 + t572;
t570 = t686 * t684;
t745 = t501 * t689 - t685 * t570;
t456 = t478 * t699 - t490 * t745;
t471 = t501 * t685 + t570 * t689;
t421 = t456 * t698 + t471 * t489;
t455 = t478 * t490 + t699 * t745;
t341 = -t421 * t488 + t455 * t491;
t833 = t818 * t341;
t569 = t686 * t683;
t741 = t687 * t689 * t686 + t690 * t685;
t469 = t490 * t741 + t699 * t569;
t476 = -t571 * t687 + t689 * t690;
t458 = t469 * t698 + t476 * t489;
t495 = -t490 * t569 + t699 * t741;
t422 = -t458 * t488 - t491 * t495;
t832 = t818 * t422;
t658 = t495 * t488;
t423 = t458 * t491 - t658;
t831 = t818 * t423;
t661 = t455 * t488;
t342 = t421 * t491 + t661;
t830 = t818 * t342;
t664 = t453 * t488;
t340 = t419 * t491 + t664;
t829 = t818 * t340;
t444 = t453 * qJD(3);
t544 = -t454 * t489 + t470 * t698;
t328 = qJD(4) * t544 - t444 * t698;
t445 = t454 * qJD(3);
t150 = -qJD(5) * t340 - t328 * t488 + t445 * t491;
t521 = qJD(5) * t339 + t445 * t488;
t151 = t328 * t491 + t521;
t327 = qJD(4) * t419 - t444 * t489;
t828 = -t150 * t816 - t151 * t808 - t327 * t815;
t446 = t455 * qJD(3);
t543 = -t456 * t489 + t471 * t698;
t330 = qJD(4) * t543 - t446 * t698;
t447 = t456 * qJD(3);
t152 = -qJD(5) * t342 - t330 * t488 + t447 * t491;
t520 = qJD(5) * t341 + t447 * t488;
t153 = t330 * t491 + t520;
t329 = qJD(4) * t421 - t446 * t489;
t827 = -t152 * t816 - t153 * t808 - t329 * t815;
t826 = t150 * t817 + t151 * t818 + t327 * t816;
t825 = t152 * t817 + t153 * t818 + t329 * t816;
t824 = t818 * t150 + t151 * t809 + t808 * t327;
t823 = t818 * t152 + t153 * t809 + t808 * t329;
t460 = t495 * qJD(3);
t542 = -t469 * t489 + t476 * t698;
t412 = qJD(4) * t542 + t460 * t698;
t461 = t469 * qJD(3);
t254 = -qJD(5) * t423 - t412 * t488 + t461 * t491;
t519 = qJD(5) * t422 + t461 * t488;
t255 = t412 * t491 + t519;
t411 = qJD(4) * t458 + t460 * t489;
t822 = -t254 * t816 - t255 * t808 - t411 * t815;
t821 = t254 * t817 + t255 * t818 + t411 * t816;
t820 = t818 * t254 + t255 * t809 + t808 * t411;
t786 = t339 * t816 + t340 * t808 - t544 * t815;
t785 = t341 * t816 + t342 * t808 - t543 * t815;
t784 = t339 * t817 - t544 * t816 + t829;
t783 = t341 * t817 - t543 * t816 + t830;
t782 = t340 * t809 - t808 * t544 + t834;
t781 = t342 * t809 - t808 * t543 + t833;
t770 = t422 * t816 + t423 * t808 - t542 * t815;
t769 = t422 * t817 - t542 * t816 + t831;
t768 = t423 * t809 - t808 * t542 + t832;
t466 = qJD(3) * t470;
t424 = qJD(4) * t453 + t466;
t715 = t424 / 0.2e1;
t467 = qJD(3) * t471;
t425 = qJD(4) * t455 + t467;
t713 = t425 / 0.2e1;
t475 = qJD(3) * t476;
t459 = -qJD(4) * t495 + t475;
t705 = t459 / 0.2e1;
t819 = qJD(4) / 0.2e1;
t799 = t784 * t150 + t782 * t151 + t786 * t327 + t826 * t339 + t824 * t340 + t544 * t828;
t798 = t150 * t783 + t151 * t781 + t327 * t785 + t339 * t825 + t340 * t823 + t544 * t827;
t797 = t784 * t152 + t782 * t153 + t786 * t329 + t826 * t341 + t824 * t342 + t543 * t828;
t796 = t152 * t783 + t153 * t781 + t329 * t785 + t341 * t825 + t342 * t823 + t543 * t827;
t793 = t784 * t254 + t782 * t255 + t786 * t411 + t826 * t422 + t824 * t423 + t542 * t828;
t792 = t254 * t783 + t255 * t781 + t411 * t785 + t422 * t825 + t423 * t823 + t542 * t827;
t790 = t150 * t769 + t151 * t768 + t327 * t770 + t339 * t821 + t340 * t820 + t544 * t822;
t789 = t152 * t769 + t153 * t768 + t329 * t770 + t341 * t821 + t342 * t820 + t543 * t822;
t788 = t254 * t769 + t255 * t768 + t411 * t770 + t422 * t821 + t423 * t820 + t542 * t822;
t757 = t339 * t784 + t340 * t782 - t544 * t786;
t756 = t339 * t783 + t340 * t781 - t544 * t785;
t755 = t341 * t784 + t342 * t782 - t543 * t786;
t754 = t341 * t783 + t342 * t781 - t543 * t785;
t753 = t422 * t784 + t423 * t782 - t542 * t786;
t752 = t422 * t783 + t423 * t781 - t542 * t785;
t751 = t339 * t769 + t340 * t768 - t544 * t770;
t750 = t341 * t769 + t342 * t768 - t543 * t770;
t749 = t422 * t769 + t423 * t768 - t542 * t770;
t814 = t488 * t816 - t491 * t808;
t813 = -t488 * t817 + t491 * t818;
t812 = -t488 * t818 + t491 * t809;
t154 = Icges(5,5) * t328 - Icges(5,6) * t327 + Icges(5,3) * t445;
t156 = Icges(5,4) * t328 - Icges(5,2) * t327 + Icges(5,6) * t445;
t158 = Icges(5,1) * t328 - Icges(5,4) * t327 + Icges(5,5) * t445;
t234 = Icges(5,5) * t419 + Icges(5,6) * t544 + Icges(5,3) * t453;
t679 = Icges(5,4) * t419;
t236 = Icges(5,2) * t544 + Icges(5,6) * t453 + t679;
t413 = Icges(5,4) * t544;
t238 = Icges(5,1) * t419 + Icges(5,5) * t453 + t413;
t48 = t154 * t455 + t156 * t543 + t158 * t421 + t234 * t447 - t236 * t329 + t238 * t330;
t155 = Icges(5,5) * t330 - Icges(5,6) * t329 + Icges(5,3) * t447;
t157 = Icges(5,4) * t330 - Icges(5,2) * t329 + Icges(5,6) * t447;
t159 = Icges(5,1) * t330 - Icges(5,4) * t329 + Icges(5,5) * t447;
t235 = Icges(5,5) * t421 + Icges(5,6) * t543 + Icges(5,3) * t455;
t678 = Icges(5,4) * t421;
t237 = Icges(5,2) * t543 + Icges(5,6) * t455 + t678;
t414 = Icges(5,4) * t543;
t239 = Icges(5,1) * t421 + Icges(5,5) * t455 + t414;
t49 = t155 * t455 + t157 * t543 + t159 * t421 + t235 * t447 - t237 * t329 + t239 * t330;
t353 = Icges(5,5) * t458 + Icges(5,6) * t542 - Icges(5,3) * t495;
t677 = Icges(5,4) * t458;
t354 = Icges(5,2) * t542 - Icges(5,6) * t495 + t677;
t452 = Icges(5,4) * t542;
t355 = Icges(5,1) * t458 - Icges(5,5) * t495 + t452;
t113 = t353 * t455 + t354 * t543 + t355 * t421;
t79 = t234 * t455 + t236 * t543 + t238 * t421;
t80 = t235 * t455 + t237 * t543 + t239 * t421;
t532 = t113 * t461 + t445 * t79 + t447 * t80;
t256 = Icges(5,5) * t412 - Icges(5,6) * t411 + Icges(5,3) * t461;
t257 = Icges(5,4) * t412 - Icges(5,2) * t411 + Icges(5,6) * t461;
t258 = Icges(5,1) * t412 - Icges(5,4) * t411 + Icges(5,5) * t461;
t55 = t256 * t455 + t257 * t543 + t258 * t421 - t329 * t354 + t330 * t355 + t353 * t447;
t630 = qJD(4) * t445;
t264 = qJD(5) * t327 + t630;
t629 = qJD(4) * t447;
t265 = qJD(5) * t329 + t629;
t294 = -qJD(5) * t544 + t424;
t295 = -qJD(5) * t543 + t425;
t626 = qJD(4) * t461;
t361 = qJD(5) * t411 + t626;
t401 = -qJD(5) * t542 + t459;
t802 = t264 * t755 + t265 * t754 + t294 * t797 + t295 * t796 + t361 * t750 + t401 * t789;
t811 = t532 * t819 + t48 * t715 + t49 * t713 + t55 * t705 + t802 / 0.2e1;
t46 = t154 * t453 + t156 * t544 + t158 * t419 + t234 * t445 - t236 * t327 + t238 * t328;
t47 = t155 * t453 + t157 * t544 + t159 * t419 + t235 * t445 - t237 * t327 + t239 * t328;
t112 = t353 * t453 + t354 * t544 + t355 * t419;
t77 = t234 * t453 + t236 * t544 + t238 * t419;
t78 = t235 * t453 + t237 * t544 + t239 * t419;
t533 = t112 * t461 + t445 * t77 + t447 * t78;
t54 = t256 * t453 + t257 * t544 + t258 * t419 - t327 * t354 + t328 * t355 + t353 * t445;
t803 = t264 * t757 + t265 * t756 + t294 * t799 + t295 * t798 + t361 * t751 + t401 * t790;
t810 = t533 * t819 + t46 * t715 + t47 * t713 + t54 * t705 + t803 / 0.2e1;
t787 = rSges(7,3) + qJ(6);
t485 = pkin(5) * t491 + pkin(4);
t696 = pkin(4) - t485;
t804 = rSges(7,1) * t491 - rSges(7,2) * t488 - t696;
t801 = t264 * t753 + t265 * t752 + t294 * t793 + t295 * t792 + t361 * t749 + t401 * t788;
t800 = rSges(7,1) + pkin(5);
t795 = t294 * t757 + t295 * t756 + t401 * t751;
t794 = t294 * t755 + t295 * t754 + t401 * t750;
t791 = t294 * t753 + t295 * t752 + t401 * t749;
t605 = t488 * t698;
t375 = t453 * t605 + t454 * t491;
t604 = t491 * t698;
t662 = t454 * t488;
t376 = -t453 * t604 + t662;
t663 = t453 * t489;
t780 = -t375 * t816 - t376 * t808 + t663 * t815;
t377 = t455 * t605 + t456 * t491;
t659 = t456 * t488;
t378 = -t455 * t604 + t659;
t660 = t455 * t489;
t779 = -t377 * t816 - t378 * t808 + t660 * t815;
t778 = t375 * t817 + t376 * t818 - t663 * t816;
t777 = t377 * t817 + t378 * t818 - t660 * t816;
t776 = t375 * t818 + t376 * t809 - t663 * t808;
t775 = t377 * t818 + t378 * t809 - t660 * t808;
t774 = t419 * t816 + t544 * t813;
t773 = t421 * t816 + t543 * t813;
t772 = t419 * t808 + t544 * t812;
t771 = t421 * t808 + t543 * t812;
t289 = pkin(4) * t419 - pkin(10) * t544;
t652 = rSges(7,1) * t340 + rSges(7,2) * t339 + pkin(5) * t664 - t419 * t696 - t544 * t787;
t608 = -t289 - t652;
t291 = pkin(4) * t421 - pkin(10) * t543;
t651 = rSges(7,1) * t342 + rSges(7,2) * t341 + pkin(5) * t661 - t421 * t696 - t543 * t787;
t607 = -t291 - t651;
t434 = t469 * t491 - t495 * t605;
t656 = t469 * t488;
t435 = t495 * t604 + t656;
t657 = t495 * t489;
t767 = -t434 * t816 - t435 * t808 - t657 * t815;
t766 = t434 * t817 + t435 * t818 + t657 * t816;
t765 = t434 * t818 + t435 * t809 + t657 * t808;
t764 = t458 * t816 + t542 * t813;
t763 = t458 * t808 + t542 * t812;
t400 = pkin(4) * t458 - pkin(10) * t542;
t640 = rSges(7,1) * t423 + rSges(7,2) * t422 - pkin(5) * t658 - t458 * t696 - t542 * t787;
t606 = -t400 - t640;
t762 = (-t458 * t815 - t488 * t769 + t491 * t768 + t542 * t814) * t401 + (-t421 * t815 - t488 * t783 + t491 * t781 + t543 * t814) * t295 + (-t419 * t815 - t488 * t784 + t491 * t782 + t544 * t814) * t294;
t50 = -t154 * t495 + t156 * t542 + t158 * t458 + t234 * t461 - t236 * t411 + t238 * t412;
t51 = -t155 * t495 + t157 * t542 + t159 * t458 + t235 * t461 - t237 * t411 + t239 * t412;
t106 = -t234 * t495 + t236 * t542 + t238 * t458;
t107 = -t235 * t495 + t237 * t542 + t239 * t458;
t117 = -t353 * t495 + t354 * t542 + t355 * t458;
t530 = t106 * t445 + t107 * t447 + t117 * t461;
t66 = -t256 * t495 + t257 * t542 + t258 * t458 + t353 * t461 - t354 * t411 + t355 * t412;
t759 = qJD(4) * t530 + t424 * t50 + t425 * t51 + t459 * t66 + t801;
t160 = rSges(5,1) * t328 - rSges(5,2) * t327 + rSges(5,3) * t445;
t161 = rSges(5,1) * t330 - rSges(5,2) * t329 + rSges(5,3) * t447;
t240 = rSges(5,1) * t419 + rSges(5,2) * t544 + rSges(5,3) * t453;
t241 = rSges(5,1) * t421 + rSges(5,2) * t543 + rSges(5,3) * t455;
t558 = t240 * t447 - t241 * t445;
t758 = t558 * qJD(4) + t160 * t425 - t161 * t424;
t748 = t419 * t787 + t544 * t804;
t747 = t421 * t787 + t543 * t804;
t746 = t458 * t787 + t542 * t804;
t373 = -pkin(3) * t444 + pkin(9) * t445;
t374 = -pkin(3) * t446 + pkin(9) * t447;
t581 = t373 * t467 - t374 * t466;
t744 = (-t423 * t817 + t768 + t832) * t401 + (-t342 * t817 + t781 + t833) * t295 + (-t340 * t817 + t782 + t834) * t294;
t743 = (t422 * t809 - t769 - t831) * t401 + (t341 * t809 - t783 - t830) * t295 + (t339 * t809 - t784 - t829) * t294;
t742 = (t422 * t808 - t423 * t816) * t401 + (t341 * t808 - t342 * t816) * t295 + (t339 * t808 - t340 * t816) * t294;
t621 = qJD(6) * t543;
t692 = rSges(7,1) * t153 + rSges(7,2) * t152 + pkin(5) * t520 + t329 * t787 - t330 * t696 - t621;
t622 = qJD(6) * t544;
t694 = rSges(7,1) * t151 + rSges(7,2) * t150 + pkin(5) * t521 + t327 * t787 - t328 * t696 - t622;
t740 = -t651 * t264 + t652 * t265 - t692 * t294 + t694 * t295;
t168 = t328 * pkin(4) + t327 * pkin(10);
t131 = t425 * t168;
t229 = t289 * t629;
t602 = t291 * t630;
t169 = t330 * pkin(4) + t329 * pkin(10);
t665 = t424 * t169;
t507 = t131 + t229 + t581 - t602 - t665;
t623 = qJD(6) * t411;
t9 = t507 + t623 + t740;
t739 = 0.2e1 * t9;
t273 = t412 * pkin(4) + t411 * pkin(10);
t433 = pkin(3) * t460 + pkin(9) * t461;
t577 = -t373 * t475 + t433 * t466;
t505 = -t168 * t459 + t424 * t273 - t289 * t626 + t400 * t630 + t577;
t620 = qJD(6) * t542;
t654 = rSges(7,1) * t255 + rSges(7,2) * t254 + pkin(5) * t519 + t411 * t787 - t412 * t696 - t620;
t11 = qJD(6) * t329 + t264 * t640 + t294 * t654 - t361 * t652 - t401 * t694 + t505;
t738 = 0.2e1 * t11;
t579 = t374 * t475 - t433 * t467;
t506 = t459 * t169 - t273 * t425 + t291 * t626 - t400 * t629 + t579;
t12 = qJD(6) * t327 - t265 * t640 - t295 * t654 + t361 * t651 + t401 * t692 + t506;
t737 = 0.2e1 * t12;
t392 = pkin(3) * t454 + pkin(9) * t453;
t394 = pkin(3) * t456 + pkin(9) * t455;
t618 = qJD(2) * t690 + qJD(1);
t537 = t392 * t467 - t394 * t466 + t618;
t518 = t425 * t289 - t291 * t424 + t537;
t38 = -t294 * t651 + t295 * t652 + t518 - t620;
t736 = 0.2e1 * t38;
t443 = pkin(3) * t469 - pkin(9) * t495;
t484 = qJD(2) * t570;
t548 = -t392 * t475 + t443 * t466 + t484;
t522 = -t289 * t459 + t424 * t400 + t548;
t43 = t294 * t640 - t401 * t652 + t522 - t621;
t735 = 0.2e1 * t43;
t547 = qJD(2) * t573;
t516 = t394 * t475 - t443 * t467 - t547;
t499 = t459 * t291 - t425 * t400 + t516;
t44 = -t295 * t640 + t401 * t651 + t499 - t622;
t734 = 0.2e1 * t44;
t733 = m(7) / 0.2e1;
t732 = t264 / 0.2e1;
t731 = t265 / 0.2e1;
t730 = -t294 / 0.2e1;
t729 = t294 / 0.2e1;
t728 = -t295 / 0.2e1;
t727 = t295 / 0.2e1;
t724 = t361 / 0.2e1;
t721 = -t401 / 0.2e1;
t720 = t401 / 0.2e1;
t716 = -t424 / 0.2e1;
t714 = -t425 / 0.2e1;
t706 = -t459 / 0.2e1;
t99 = rSges(6,1) * t151 + rSges(6,2) * t150 + rSges(6,3) * t327;
t693 = t295 * t99;
t691 = -t168 - t99;
t682 = Icges(4,4) * t454;
t681 = Icges(4,4) * t456;
t680 = Icges(4,4) * t469;
t101 = rSges(6,1) * t153 + rSges(6,2) * t152 + rSges(6,3) * t329;
t670 = t101 * t294;
t145 = rSges(6,1) * t340 + rSges(6,2) * t339 - rSges(6,3) * t544;
t669 = t145 * t265;
t147 = rSges(6,1) * t342 + rSges(6,2) * t341 - rSges(6,3) * t543;
t668 = t147 * t264;
t655 = -t101 - t169;
t125 = rSges(6,1) * t255 + rSges(6,2) * t254 + rSges(6,3) * t411;
t653 = -t125 - t273;
t650 = -t145 - t289;
t649 = -t147 - t291;
t648 = t455 * t168 + t447 * t289;
t647 = -t169 * t495 + t461 * t291;
t344 = t471 * t373;
t646 = t471 * t168 + t344;
t360 = t476 * t374;
t645 = t476 * t169 + t360;
t644 = -rSges(7,2) * t340 + t339 * t800;
t643 = -rSges(7,2) * t342 + t341 * t800;
t611 = t698 * pkin(4);
t517 = -qJ(6) * t489 - t485 * t698 + t611;
t642 = rSges(7,1) * t376 + rSges(7,2) * t375 - rSges(7,3) * t663 + pkin(5) * t662 + t453 * t517;
t641 = rSges(7,1) * t378 + rSges(7,2) * t377 - rSges(7,3) * t660 + pkin(5) * t659 + t455 * t517;
t639 = t453 * t273 + t445 * t400;
t250 = rSges(6,1) * t423 + rSges(6,2) * t422 - rSges(6,3) * t542;
t638 = -t250 - t400;
t403 = t470 * t433;
t637 = t470 * t273 + t403;
t357 = t471 * t392;
t636 = t471 * t289 + t357;
t364 = t476 * t394;
t635 = t476 * t291 + t364;
t634 = -rSges(7,2) * t423 + t422 * t800;
t633 = rSges(7,1) * t435 + rSges(7,2) * t434 + rSges(7,3) * t657 + pkin(5) * t656 - t495 * t517;
t632 = 0.2e1 * t581;
t410 = t470 * t443;
t631 = t470 * t400 + t410;
t628 = qJD(4) * t454;
t627 = qJD(4) * t456;
t625 = qJD(4) * t469;
t624 = qJD(5) * t489;
t619 = qJD(6) * t489;
t617 = 2 * m(4);
t616 = 2 * m(5);
t615 = 2 * m(6);
t614 = 0.2e1 * m(7);
t612 = -t168 - t694;
t610 = -t169 - t692;
t609 = -t273 - t654;
t600 = t630 / 0.2e1;
t599 = t629 / 0.2e1;
t598 = t626 / 0.2e1;
t593 = t617 / 0.2e1;
t592 = -t616 / 0.2e1;
t591 = t616 / 0.2e1;
t590 = -t615 / 0.2e1;
t589 = t615 / 0.2e1;
t588 = -t614 / 0.2e1;
t587 = t614 / 0.2e1;
t288 = pkin(4) * t544 + pkin(10) * t419;
t290 = pkin(4) * t543 + pkin(10) * t421;
t584 = t425 * t288 - t290 * t424;
t399 = pkin(4) * t542 + pkin(10) * t458;
t583 = t459 * t290 - t399 * t425;
t582 = -t288 * t459 + t424 * t399;
t391 = -pkin(3) * t453 + pkin(9) * t454;
t393 = -pkin(3) * t455 + pkin(9) * t456;
t580 = t391 * t467 - t393 * t466;
t442 = pkin(3) * t495 + pkin(9) * t469;
t578 = t393 * t475 - t442 * t467;
t576 = -t391 * t475 + t442 * t466;
t566 = -rSges(6,1) * t491 + rSges(6,2) * t488;
t356 = rSges(5,1) * t458 + rSges(5,2) * t542 - rSges(5,3) * t495;
t557 = -t240 * t461 + t356 * t445;
t556 = t241 * t461 - t356 * t447;
t349 = rSges(4,1) * t454 - rSges(4,2) * t453 + rSges(4,3) * t470;
t350 = rSges(4,1) * t456 - rSges(4,2) * t455 + rSges(4,3) * t471;
t555 = t349 * t471 - t350 * t470;
t428 = rSges(4,1) * t469 + rSges(4,2) * t495 + rSges(4,3) * t476;
t554 = -t349 * t476 + t428 * t470;
t553 = t350 * t476 - t428 * t471;
t371 = -rSges(4,1) * t444 - rSges(4,2) * t445;
t372 = -rSges(4,1) * t446 - rSges(4,2) * t447;
t552 = t371 * t471 - t372 * t470;
t432 = rSges(4,1) * t460 - rSges(4,2) * t461;
t551 = -t371 * t476 + t432 * t470;
t550 = t372 * t476 - t432 * t471;
t549 = -pkin(10) * t489 - t611;
t546 = -rSges(5,1) * t698 + rSges(5,2) * t489;
t545 = -0.2e1 * t665 + 0.2e1 * t131 - 0.2e1 * t602 + 0.2e1 * t229 + t632;
t541 = -Icges(5,1) * t698 + Icges(5,4) * t489;
t540 = -Icges(5,4) * t698 + Icges(5,2) * t489;
t539 = -Icges(5,5) * t698 + Icges(5,6) * t489;
t186 = t552 * qJD(3);
t531 = t38 * t694 + t652 * t9;
t527 = (Icges(5,5) * t544 - Icges(5,6) * t419) * t424 + (Icges(5,5) * t543 - Icges(5,6) * t421) * t425 + (Icges(5,5) * t542 - Icges(5,6) * t458) * t459;
t526 = (-Icges(4,5) * t453 - Icges(4,6) * t454) * t470 + (-Icges(4,5) * t455 - Icges(4,6) * t456) * t471 + (Icges(4,5) * t495 - Icges(4,6) * t469) * t476;
t525 = t12 * t651 + t44 * t692;
t524 = t11 * t640 + t43 * t654;
t511 = (Icges(5,1) * t543 - t237 - t678) * t425 + (Icges(5,1) * t544 - t236 - t679) * t424 + (Icges(5,1) * t542 - t354 - t677) * t459;
t510 = (Icges(5,2) * t421 - t239 - t414) * t425 + (Icges(5,2) * t419 - t238 - t413) * t424 + (Icges(5,2) * t458 - t355 - t452) * t459;
t345 = -Icges(4,2) * t453 + Icges(4,6) * t470 + t682;
t346 = -Icges(4,2) * t455 + Icges(4,6) * t471 + t681;
t426 = Icges(4,2) * t495 + Icges(4,6) * t476 + t680;
t509 = (-Icges(4,1) * t455 - t346 - t681) * t471 + (-Icges(4,1) * t453 - t345 - t682) * t470 + (Icges(4,1) * t495 - t426 - t680) * t476;
t450 = Icges(4,4) * t453;
t347 = Icges(4,1) * t454 + Icges(4,5) * t470 - t450;
t451 = Icges(4,4) * t455;
t348 = Icges(4,1) * t456 + Icges(4,5) * t471 - t451;
t465 = Icges(4,4) * t495;
t427 = Icges(4,1) * t469 + Icges(4,5) * t476 + t465;
t508 = (Icges(4,2) * t456 - t348 + t451) * t471 + (Icges(4,2) * t454 - t347 + t450) * t470 + (Icges(4,2) * t469 - t427 - t465) * t476;
t379 = t549 * t453;
t380 = t549 * t455;
t504 = t289 * t627 - t291 * t628 + t425 * t379 - t380 * t424 + t580;
t436 = t549 * t495;
t503 = t291 * t625 + t459 * t380 - t400 * t627 + t425 * t436 + t578;
t502 = -t289 * t625 - t379 * t459 + t400 * t628 - t424 * t436 + t576;
t492 = (Icges(5,3) * t456 + t237 * t489 - t239 * t698 + t455 * t539) * t425 + (Icges(5,3) * t454 + t236 * t489 - t238 * t698 + t453 * t539) * t424 + (Icges(5,3) * t469 + t354 * t489 - t355 * t698 - t495 * t539) * t459;
t441 = rSges(4,1) * t495 - rSges(4,2) * t469;
t437 = t495 * t624 + t625;
t431 = Icges(4,1) * t460 - Icges(4,4) * t461;
t430 = Icges(4,4) * t460 - Icges(4,2) * t461;
t429 = Icges(4,5) * t460 - Icges(4,6) * t461;
t407 = t469 * rSges(5,3) - t495 * t546;
t406 = Icges(5,5) * t469 - t495 * t541;
t405 = Icges(5,6) * t469 - t495 * t540;
t398 = rSges(5,1) * t542 - rSges(5,2) * t458;
t390 = -rSges(4,1) * t455 - rSges(4,2) * t456;
t389 = -rSges(4,1) * t453 - rSges(4,2) * t454;
t382 = -t455 * t624 + t627;
t381 = -t453 * t624 + t628;
t370 = -Icges(4,1) * t446 - Icges(4,4) * t447;
t369 = -Icges(4,1) * t444 - Icges(4,4) * t445;
t368 = -Icges(4,4) * t446 - Icges(4,2) * t447;
t367 = -Icges(4,4) * t444 - Icges(4,2) * t445;
t366 = -Icges(4,5) * t446 - Icges(4,6) * t447;
t365 = -Icges(4,5) * t444 - Icges(4,6) * t445;
t325 = t453 * t400;
t320 = t458 * rSges(6,3) - t542 * t566;
t312 = t456 * rSges(5,3) + t455 * t546;
t311 = t454 * rSges(5,3) + t453 * t546;
t310 = Icges(5,5) * t456 + t455 * t541;
t309 = Icges(5,5) * t454 + t453 * t541;
t308 = Icges(5,6) * t456 + t455 * t540;
t307 = Icges(5,6) * t454 + t453 * t540;
t304 = rSges(6,1) * t435 + rSges(6,2) * t434 + rSges(6,3) * t657;
t293 = rSges(6,1) * t422 - rSges(6,2) * t423;
t281 = rSges(5,1) * t543 - rSges(5,2) * t421;
t280 = rSges(5,1) * t544 - rSges(5,2) * t419;
t267 = t495 * t291;
t260 = rSges(5,1) * t412 - rSges(5,2) * t411 + rSges(5,3) * t461;
t251 = t455 * t289;
t233 = t550 * qJD(3);
t232 = t551 * qJD(3);
t222 = t421 * rSges(6,3) - t543 * t566;
t220 = t419 * rSges(6,3) - t544 * t566;
t206 = qJD(3) * t553 - t547;
t205 = qJD(3) * t554 + t484;
t204 = rSges(6,1) * t378 + rSges(6,2) * t377 - rSges(6,3) * t660;
t202 = rSges(6,1) * t376 + rSges(6,2) * t375 - rSges(6,3) * t663;
t185 = rSges(6,1) * t341 - rSges(6,2) * t342;
t183 = rSges(6,1) * t339 - rSges(6,2) * t340;
t164 = qJD(3) * t555 + t618;
t111 = t459 * t241 - t425 * t356 + t516;
t110 = -t240 * t459 + t356 * t424 + t548;
t83 = t240 * t425 - t241 * t424 + t537;
t68 = qJD(4) * t556 + t161 * t459 - t260 * t425 + t579;
t67 = qJD(4) * t557 - t160 * t459 + t260 * t424 + t577;
t57 = t401 * t147 - t295 * t250 + t499;
t56 = -t145 * t401 + t250 * t294 + t522;
t53 = t581 + t758;
t52 = t145 * t295 - t147 * t294 + t518;
t45 = t106 * t424 + t107 * t425 + t117 * t459;
t42 = t113 * t459 + t424 * t79 + t425 * t80;
t41 = t112 * t459 + t424 * t77 + t425 * t78;
t33 = t101 * t401 - t125 * t295 + t147 * t361 - t250 * t265 + t506;
t32 = t125 * t294 - t145 * t361 + t250 * t264 - t401 * t99 + t505;
t21 = t507 - t668 + t669 - t670 + t693;
t1 = [m(6) * (t545 - 0.2e1 * t668 + 0.2e1 * t669 - 0.2e1 * t670 + 0.2e1 * t693) / 0.2e1 + t186 * t593 + (t545 + 0.2e1 * t623 + 0.2e1 * t740) * t733 + (t632 / 0.2e1 + t758) * m(5); (t186 * t690 + t232 * t570 - t233 * t573) * t593 + (t53 * t690 + t570 * t67 - t573 * t68) * t591 + (t21 * t690 + t32 * t570 - t33 * t573) * t589 + (t11 * t570 - t12 * t573 + t690 * t9) * t587; (t106 * t470 + t107 * t471 + t117 * t476) * t598 + (t113 * t476 + t470 * t79 + t471 * t80) * t599 + (t46 * t470 + t47 * t471 + t476 * t54) * t715 + ((-t345 * t445 - t347 * t444 + t365 * t470 - t367 * t453 + t369 * t454) * t470 + (-t346 * t445 - t348 * t444 + t366 * t470 - t368 * t453 + t370 * t454) * t471 + (-t426 * t445 - t427 * t444 + t429 * t470 - t430 * t453 + t431 * t454) * t476) * t466 + ((-t345 * t447 - t347 * t446 + t365 * t471 - t367 * t455 + t369 * t456) * t470 + (-t346 * t447 - t348 * t446 + t366 * t471 - t368 * t455 + t370 * t456) * t471 + (-t426 * t447 - t427 * t446 + t429 * t471 - t430 * t455 + t431 * t456) * t476) * t467 + t759 * t476 / 0.2e1 - (t205 * (-t389 * t476 + t441 * t470) + t206 * (t390 * t476 - t441 * t471) + t164 * (t389 * t471 - t390 * t470)) * qJD(3) * t617 / 0.2e1 + (t32 * (t250 * t470 + (-t392 + t650) * t476 + t631) + t56 * (t125 * t470 + (-t373 + t691) * t476 + t637) + t33 * (t147 * t476 + (-t443 + t638) * t471 + t635) + t57 * (t101 * t476 + (-t433 + t653) * t471 + t645) + t21 * (t145 * t471 + (-t394 + t649) * t470 + t636) + t52 * (t471 * t99 + (-t374 + t655) * t470 + t646)) * t589 + (t470 * t753 + t471 * t752 + t476 * t749) * t724 + (t749 * t437 + (t422 * t766 + t423 * t765 + t434 * t769 + t435 * t768 + t542 * t767 + t657 * t770) * t401 + t752 * t382 + t753 * t381 + (t422 * t777 + t423 * t775 + t434 * t783 + t435 * t781 + t542 * t779 + t657 * t785) * t295 + (t422 * t778 + t423 * t776 + t434 * t784 + t435 * t782 + t542 * t780 + t657 * t786) * t294) * t721 + (t750 * t437 + (t341 * t766 + t342 * t765 + t377 * t769 + t378 * t768 + t543 * t767 - t660 * t770) * t401 + t754 * t382 + t755 * t381 + (t341 * t777 + t342 * t775 + t377 * t783 + t378 * t781 + t543 * t779 - t660 * t785) * t295 + (t341 * t778 + t342 * t776 + t377 * t784 + t378 * t782 + t543 * t780 - t660 * t786) * t294) * t728 + (t470 * t755 + t471 * t754 + t476 * t750) * t731 + (t751 * t437 + (t339 * t766 + t340 * t765 + t375 * t769 + t376 * t768 + t544 * t767 - t663 * t770) * t401 + t756 * t382 + t757 * t381 + (t339 * t777 + t340 * t775 + t375 * t783 + t376 * t781 + t544 * t779 - t663 * t785) * t295 + (t339 * t778 + t340 * t776 + t375 * t784 + t376 * t782 + t544 * t780 - t663 * t786) * t294) * t730 + (t470 * t757 + t471 * t756 + t476 * t751) * t732 + (t470 * t50 + t471 * t51 + t476 * t66) * t705 + (t470 * t48 + t471 * t49 + t476 * t55) * t713 - t42 * t627 / 0.2e1 - t41 * t628 / 0.2e1 + (t112 * t476 + t470 * t77 + t471 * t78) * t600 + ((t454 * t235 + t308 * t544 + t419 * t310) * t425 + (t454 * t234 + t307 * t544 + t419 * t309) * t424 + (t454 * t353 + t405 * t544 + t419 * t406) * t459 + (t112 * t469 + t454 * t77 + t456 * t78) * qJD(4) + t492 * t453) * t716 + ((t456 * t235 + t308 * t543 + t421 * t310) * t425 + (t456 * t234 + t307 * t543 + t421 * t309) * t424 + (t456 * t353 + t405 * t543 + t421 * t406) * t459 + (t113 * t469 + t454 * t79 + t456 * t80) * qJD(4) + t492 * t455) * t714 - t45 * t625 / 0.2e1 - t791 * t437 / 0.2e1 + (t470 * t793 + t471 * t792 + t476 * t788) * t720 - t794 * t382 / 0.2e1 - t795 * t381 / 0.2e1 + (t470 * t797 + t471 * t796 + t476 * t789) * t727 + (t470 * t799 + t471 * t798 + t476 * t790) * t729 + t470 * t810 + t471 * t811 + ((t469 * t235 + t308 * t542 + t458 * t310) * t425 + (t469 * t234 + t307 * t542 + t458 * t309) * t424 + (t469 * t353 + t405 * t542 + t458 * t406) * t459 + (t106 * t454 + t107 * t456 + t117 * t469) * qJD(4) - t492 * t495) * t706 - (t476 * (t469 * t509 + t476 * t526 - t495 * t508) + t471 * (t455 * t508 + t456 * t509 + t471 * t526) + t470 * (t453 * t508 + t454 * t509 + t470 * t526)) * qJD(3) ^ 2 / 0.2e1 + (t43 * (t294 * t633 + t381 * t640 - t401 * t642 - t437 * t652 - t455 * t619 + t502) + t44 * (-t295 * t633 - t382 * t640 + t401 * t641 + t437 * t651 - t453 * t619 + t503) + t38 * (-t294 * t641 + t295 * t642 - t381 * t651 + t382 * t652 + t495 * t619 + t504)) * t588 + ((-t345 * t461 + t347 * t460 + t365 * t476 + t367 * t495 + t369 * t469) * t470 + (-t346 * t461 + t348 * t460 + t366 * t476 + t368 * t495 + t370 * t469) * t471 + (-t426 * t461 + t427 * t460 + t429 * t476 + t430 * t495 + t431 * t469) * t476) * t475 + (t631 * t738 + t635 * t737 + t636 * t739 + t637 * t735 + t645 * t734 + t646 * t736 + 0.2e1 * (t11 * (-t392 + t608) + t43 * (-t373 + t612) + t525) * t476 + 0.2e1 * (t12 * (-t443 + t606) + t44 * (-t433 + t609) + t531) * t471 + 0.2e1 * (t9 * (-t394 + t607) + t38 * (-t374 + t610) + t524) * t470) * t733 + (t56 * (-t145 * t437 - t202 * t401 + t250 * t381 + t294 * t304 + t502) + t57 * (t147 * t437 + t204 * t401 - t250 * t382 - t295 * t304 + t503) + t52 * (t145 * t382 - t147 * t381 + t202 * t295 - t204 * t294 + t504)) * t590 + (t67 * (t356 * t470 + t410 + (-t240 - t392) * t476) + t110 * (t260 * t470 + t403 + (-t160 - t373) * t476) + t68 * (t241 * t476 + t364 + (-t356 - t443) * t471) + t111 * (t161 * t476 + t360 + (-t260 - t433) * t471) + t53 * (t240 * t471 + t357 + (-t241 - t394) * t470) + t83 * (t160 * t471 + t344 + (-t161 - t374) * t470)) * t591 + (t110 * (-t311 * t459 + t407 * t424 + (-t240 * t469 + t356 * t454) * qJD(4) + t576) + t111 * (t312 * t459 - t407 * t425 + (t241 * t469 - t356 * t456) * qJD(4) + t578) + t83 * (t311 * t425 - t312 * t424 + (t240 * t456 - t241 * t454) * qJD(4) + t580)) * t592 + (t164 * t552 + t186 * t555 + t205 * t551 + t206 * t550 + t232 * t554 + t233 * t553) * t593; -m(7) * ((qJD(6) * t421 + t294 * t746 - t401 * t748 + t582) * t735 + (qJD(6) * t419 - t295 * t746 + t401 * t747 + t583) * t734 + (qJD(6) * t458 - t294 * t747 + t295 * t748 + t584) * t736 + 0.2e1 * ((-t43 * t652 + t44 * t651) * t458 + (t38 * t652 - t44 * t640) * t421 + (-t38 * t651 + t43 * t640) * t419) * qJD(5)) / 0.2e1 - t759 * t495 / 0.2e1 - (t419 * t795 + t421 * t794 + t458 * t791) * qJD(5) / 0.2e1 + (t762 * t542 + (t422 * t764 + t423 * t763 + t458 * t770) * t401 + (t422 * t773 + t423 * t771 + t458 * t785) * t295 + (t422 * t774 + t423 * t772 + t458 * t786) * t294 + (t419 * t753 + t421 * t752 + t458 * t749) * qJD(5)) * t721 + (t453 * t753 + t455 * t752 - t495 * t749) * t724 + (t762 * t543 + (t341 * t764 + t342 * t763 + t421 * t770) * t401 + (t341 * t773 + t342 * t771 + t421 * t785) * t295 + (t341 * t774 + t342 * t772 + t421 * t786) * t294 + (t419 * t755 + t421 * t754 + t458 * t750) * qJD(5)) * t728 + (t453 * t755 + t455 * t754 - t495 * t750) * t731 + (t762 * t544 + (t339 * t764 + t340 * t763 + t419 * t770) * t401 + (t339 * t773 + t340 * t771 + t419 * t785) * t295 + (t339 * t774 + t340 * t772 + t419 * t786) * t294 + (t419 * t757 + t421 * t756 + t458 * t751) * qJD(5)) * t730 + (t453 * t757 + t455 * t756 - t495 * t751) * t732 + (t251 * t739 - t267 * t737 + t325 * t738 + t639 * t735 + t647 * t734 + t648 * t736 + (t608 * t735 + t651 * t734) * t461 + (t606 * t734 + t652 * t736) * t447 + (t607 * t736 + t640 * t735) * t445 - 0.2e1 * (t11 * t608 + t43 * t612 + t525) * t495 + 0.2e1 * (t12 * t606 + t44 * t609 + t531) * t455 + 0.2e1 * (t38 * t610 + t607 * t9 + t524) * t453) * t733 + (t419 * t511 + t453 * t527 - t510 * t544) * t716 + (t421 * t511 + t455 * t527 - t510 * t543) * t714 + (t45 + t791) * t461 / 0.2e1 + (t445 * t753 + t447 * t752 + t453 * t793 + t455 * t792 + t461 * t749 - t495 * t788) * t720 + (t42 + t794) * t447 / 0.2e1 + (t41 + t795) * t445 / 0.2e1 + (t445 * t755 + t447 * t754 + t453 * t797 + t455 * t796 + t461 * t750 - t495 * t789) * t727 + (t445 * t757 + t447 * t756 + t453 * t799 + t455 * t798 + t461 * t751 - t495 * t790) * t729 + t453 * t810 + t455 * t811 + (t458 * t511 - t495 * t527 - t510 * t542) * t706 + (t106 * t453 + t107 * t455 - t117 * t495) * t598 + (-t113 * t495 + t453 * t79 + t455 * t80) * t599 + (t453 * t46 + t455 * t47 - t495 * t54 + t533) * t715 + (t453 * t50 + t455 * t51 - t495 * t66 + t530) * t705 + (t453 * t48 + t455 * t49 - t495 * t55 + t532) * t713 + (-t112 * t495 + t453 * t77 + t455 * t78) * t600 + (t67 * (t240 * t495 + t356 * t453) + t110 * (t160 * t495 + t260 * t453 + t557) + t68 * (-t241 * t495 - t356 * t455) + t111 * (-t161 * t495 - t260 * t455 + t556) + t53 * (t240 * t455 - t241 * t453) + t83 * (t160 * t455 - t161 * t453 + t558)) * t591 + (t32 * (t250 * t453 - t495 * t650 + t325) + t56 * (t125 * t453 + t250 * t445 + t461 * t650 - t495 * t691 + t639) + t33 * (-t147 * t495 + t455 * t638 - t267) + t57 * (-t101 * t495 + t147 * t461 + t447 * t638 + t455 * t653 + t647) + t21 * (t145 * t455 + t453 * t649 + t251) + t52 * (t145 * t447 + t445 * t649 + t453 * t655 + t455 * t99 + t648)) * t589 + (t56 * (-t220 * t401 + t294 * t320 + (-t145 * t458 + t250 * t419) * qJD(5) + t582) + t57 * (t222 * t401 - t295 * t320 + (t147 * t458 - t250 * t421) * qJD(5) + t583) + t52 * (t220 * t295 - t222 * t294 + (t145 * t421 - t147 * t419) * qJD(5) + t584)) * t590 + (t110 * (-t280 * t459 + t398 * t424) + t111 * (t281 * t459 - t398 * t425) + t83 * (t280 * t425 - t281 * t424)) * t592; (t11 * (t542 * t652 - t544 * t640) + t43 * (t327 * t640 - t411 * t652 + t542 * t694 - t544 * t654) + t12 * (-t542 * t651 + t543 * t640) + t44 * (-t329 * t640 + t411 * t651 - t542 * t692 + t543 * t654) + t9 * (-t543 * t652 + t544 * t651) + t38 * (-t327 * t651 + t329 * t652 - t543 * t694 + t544 * t692)) * t587 + (t43 * (t294 * t634 - t401 * t644) + t44 * (-t295 * t634 + t401 * t643) + t38 * (-t294 * t643 + t295 * t644)) * t588 + (t32 * (t145 * t542 - t250 * t544) + t56 * (-t125 * t544 - t145 * t411 + t250 * t327 + t542 * t99) + t33 * (-t147 * t542 + t250 * t543) + t57 * (-t101 * t542 + t125 * t543 + t147 * t411 - t250 * t329) + t21 * (-t145 * t543 + t147 * t544) + t52 * (t101 * t544 + t145 * t329 - t147 * t327 - t543 * t99)) * t589 + (t56 * (-t183 * t401 + t293 * t294) + t57 * (t185 * t401 - t293 * t295) + t52 * (t183 * t295 - t185 * t294)) * t590 + (-t542 * t751 - t543 * t756 - t544 * t757) * t732 + (-t542 * t750 - t543 * t754 - t544 * t755) * t731 + (t339 * t744 + t340 * t743 - t544 * t742) * t730 + (t757 * t327 + t756 * t329 + t751 * t411 - t542 * t790 - t543 * t798 - t544 * t799) * t729 + (t341 * t744 + t342 * t743 - t543 * t742) * t728 + (t755 * t327 + t754 * t329 + t750 * t411 - t542 * t789 - t543 * t796 - t544 * t797) * t727 + t795 * t327 / 0.2e1 + t794 * t329 / 0.2e1 + (-t542 * t749 - t543 * t752 - t544 * t753) * t724 + (t422 * t744 + t423 * t743 - t542 * t742) * t721 + (t753 * t327 + t752 * t329 + t749 * t411 - t542 * t788 - t543 * t792 - t544 * t793) * t720 + t791 * t411 / 0.2e1 - t803 * t544 / 0.2e1 - t802 * t543 / 0.2e1 - t801 * t542 / 0.2e1; (-t11 * t543 - t12 * t544 - t9 * t542 + (-t295 * t542 + t401 * t543 + t327) * t44 + (t294 * t542 - t401 * t544 + t329) * t43 + (-t294 * t543 + t295 * t544 + t411) * t38) * m(7);];
tauc  = t1(:);
