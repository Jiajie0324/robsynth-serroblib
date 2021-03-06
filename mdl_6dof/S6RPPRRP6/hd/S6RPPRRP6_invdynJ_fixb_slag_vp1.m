% Calculate vector of inverse dynamics joint torques for
% S6RPPRRP6
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
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5]';
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
% tau [6x1]
%   joint torques of inverse dynamics (contains inertial, gravitational coriolis and centrifugal forces)

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 02:11
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RPPRRP6_invdynJ_fixb_slag_vp1(qJ, qJD, qJDD, g, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(8,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRP6_invdynJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRP6_invdynJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRRP6_invdynJ_fixb_slag_vp1: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRRP6_invdynJ_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPPRRP6_invdynJ_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRRP6_invdynJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPPRRP6_invdynJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPPRRP6_invdynJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:10:12
% EndTime: 2019-03-09 02:11:16
% DurationCPUTime: 59.31s
% Computational Cost: add. (15216->1087), mult. (39053->1365), div. (0->0), fcn. (36624->6), ass. (0->501)
t896 = Icges(6,1) + Icges(7,1);
t894 = Icges(7,4) + Icges(6,5);
t867 = -Icges(6,6) + Icges(7,6);
t453 = sin(qJ(5));
t895 = (Icges(6,4) - Icges(7,5)) * t453;
t846 = Icges(6,2) + Icges(7,3);
t893 = Icges(7,2) + Icges(6,3);
t456 = cos(qJ(5));
t892 = t453 * t867 + t456 * t894;
t891 = t456 * t896 - t895;
t454 = sin(qJ(4));
t457 = cos(qJ(4));
t712 = Icges(6,4) * t456;
t548 = -Icges(6,2) * t453 + t712;
t890 = t454 * t867 - t457 * t548;
t455 = sin(qJ(1));
t458 = cos(qJ(1));
t685 = t458 * t456;
t691 = t455 * t453;
t308 = t454 * t691 - t685;
t690 = t455 * t456;
t309 = t453 * t458 + t454 * t690;
t689 = t455 * t457;
t150 = -Icges(6,5) * t309 + Icges(6,6) * t308 + Icges(6,3) * t689;
t153 = -Icges(7,4) * t309 + Icges(7,2) * t689 - Icges(7,6) * t308;
t820 = t153 + t150;
t693 = t454 * t458;
t310 = t453 * t693 + t690;
t625 = t454 * t685;
t311 = t625 - t691;
t686 = t457 * t458;
t151 = Icges(6,5) * t311 - Icges(6,6) * t310 - Icges(6,3) * t686;
t154 = Icges(7,4) * t311 - Icges(7,2) * t686 + Icges(7,6) * t310;
t856 = t151 + t154;
t709 = Icges(7,5) * t310;
t160 = Icges(7,1) * t311 - Icges(7,4) * t686 + t709;
t285 = Icges(6,4) * t310;
t163 = Icges(6,1) * t311 - Icges(6,5) * t686 - t285;
t873 = t160 + t163;
t282 = Icges(7,5) * t311;
t148 = -Icges(7,6) * t686 + Icges(7,3) * t310 + t282;
t714 = Icges(6,4) * t311;
t157 = -Icges(6,2) * t310 - Icges(6,6) * t686 + t714;
t874 = t148 - t157;
t864 = t310 * t874 + t311 * t873;
t280 = Icges(7,5) * t308;
t158 = Icges(7,1) * t309 - Icges(7,4) * t689 + t280;
t283 = Icges(6,4) * t308;
t162 = -Icges(6,1) * t309 + Icges(6,5) * t689 + t283;
t818 = t162 - t158;
t281 = Icges(7,5) * t309;
t147 = Icges(7,6) * t689 - Icges(7,3) * t308 - t281;
t284 = Icges(6,4) * t309;
t155 = -Icges(6,2) * t308 - Icges(6,6) * t689 + t284;
t819 = t155 + t147;
t865 = t308 * t819 + t309 * t818;
t889 = (-t455 * t820 - t458 * t856) * t457 + t864 + t865;
t862 = t308 * t874 + t309 * t873;
t863 = -t819 * t310 - t818 * t311;
t888 = -t457 * (-t455 * t856 + t458 * t820) - t862 - t863;
t707 = Icges(7,5) * t456;
t544 = Icges(7,3) * t453 + t707;
t813 = t867 * t457 + (-t544 + t548) * t454;
t687 = t456 * t457;
t403 = Icges(7,5) * t687;
t695 = t453 * t457;
t866 = Icges(7,3) * t695 + t403 + t890;
t887 = t454 * t892 - t457 * t893;
t812 = -t891 * t454 + t457 * t894;
t853 = t454 * t894 + t891 * t457;
t886 = (t456 * t846 + t895) * t457;
t885 = (-t453 * t894 + t867 * t456) * t457;
t855 = t454 * t893 + t457 * t892;
t588 = qJD(1) * t454 + qJD(5);
t639 = qJD(4) * t458;
t610 = t457 * t639;
t643 = qJD(1) * t458;
t137 = -qJD(5) * t625 - t453 * t610 - t456 * t643 + t588 * t691;
t638 = qJD(5) * t454;
t415 = qJD(1) + t638;
t523 = t415 * t453;
t138 = -t458 * t523 + (-t455 * t588 + t610) * t456;
t612 = t454 * t639;
t644 = qJD(1) * t455;
t615 = t457 * t644;
t495 = t612 + t615;
t73 = Icges(7,5) * t138 + Icges(7,6) * t495 - Icges(7,3) * t137;
t79 = Icges(6,4) * t138 + Icges(6,2) * t137 + Icges(6,6) * t495;
t880 = t73 - t79;
t522 = t588 * t458;
t640 = qJD(4) * t457;
t611 = t455 * t640;
t139 = t415 * t690 + (t522 + t611) * t453;
t140 = t456 * t522 + (t456 * t640 - t523) * t455;
t641 = qJD(4) * t455;
t613 = t454 * t641;
t614 = t457 * t643;
t496 = t613 - t614;
t74 = Icges(7,5) * t140 + Icges(7,6) * t496 + Icges(7,3) * t139;
t80 = Icges(6,4) * t140 - Icges(6,2) * t139 + Icges(6,6) * t496;
t879 = t74 - t80;
t75 = Icges(6,5) * t138 + Icges(6,6) * t137 + Icges(6,3) * t495;
t77 = Icges(7,4) * t138 + Icges(7,2) * t495 - Icges(7,6) * t137;
t878 = -t75 - t77;
t76 = Icges(6,5) * t140 - Icges(6,6) * t139 + Icges(6,3) * t496;
t78 = Icges(7,4) * t140 + Icges(7,2) * t496 + Icges(7,6) * t139;
t877 = -t76 - t78;
t81 = Icges(7,1) * t138 + Icges(7,4) * t495 - Icges(7,5) * t137;
t83 = Icges(6,1) * t138 + Icges(6,4) * t137 + Icges(6,5) * t495;
t876 = t81 + t83;
t82 = Icges(7,1) * t140 + Icges(7,4) * t496 + Icges(7,5) * t139;
t84 = Icges(6,1) * t140 - Icges(6,4) * t139 + Icges(6,5) * t496;
t875 = t82 + t84;
t872 = qJD(4) * t813 + t886 * qJD(5);
t871 = qJD(4) * t887 - qJD(5) * t885;
t323 = (-Icges(6,1) * t453 - t712) * t457;
t637 = qJD(5) * t457;
t870 = (-Icges(7,1) * t453 + t707) * t637 + qJD(5) * t323 + t812 * qJD(4);
t869 = -t453 * t866 - t456 * t853;
t794 = t310 * t866 + t311 * t853 - t686 * t855;
t837 = t137 * t819 - t138 * t818 + t310 * t879 + t311 * t875 - t495 * t820 + t686 * t877;
t861 = -t874 * t137 + t873 * t138 + t310 * t880 + t876 * t311 + t856 * t495 + t878 * t686;
t835 = -t139 * t819 - t140 * t818 + t308 * t879 + t309 * t875 - t496 * t820 + t689 * t877;
t860 = t874 * t139 + t873 * t140 + t308 * t880 + t876 * t309 + t856 * t496 + t878 * t689;
t828 = -t137 * t866 + t138 * t853 + t310 * t872 + t311 * t870 + t495 * t855 + t686 * t871;
t827 = t139 * t866 + t140 * t853 + t308 * t872 + t309 * t870 + t496 * t855 + t689 * t871;
t826 = t689 * t820 - t865;
t825 = -t689 * t856 + t862;
t824 = t686 * t820 + t863;
t823 = -t686 * t856 + t864;
t539 = -t147 * t453 + t158 * t456;
t65 = -t454 * t153 + t457 * t539;
t536 = t155 * t453 + t162 * t456;
t67 = -t454 * t150 - t457 * t536;
t859 = t65 + t67;
t538 = t148 * t453 + t160 * t456;
t66 = t154 * t454 + t457 * t538;
t535 = t157 * t453 - t163 * t456;
t68 = t151 * t454 - t457 * t535;
t858 = t66 + t68;
t822 = rSges(7,3) + qJ(6);
t795 = t308 * t866 + t309 * t853 - t689 * t855;
t857 = t795 * t415;
t790 = t454 * t855 - t457 * t869;
t854 = t457 * t544 + t890;
t343 = -t458 * t637 - t641;
t344 = -t455 * t637 + t639;
t852 = (-t869 + t887) * t415 + (-t455 * t855 - t536 + t539) * t344 + (-t458 * t855 - t535 + t538) * t343;
t838 = rSges(7,1) + pkin(5);
t658 = t822 * t687 - t695 * t838;
t850 = (t870 * t456 + t872 * t453 + (-t453 * t853 + t456 * t866) * qJD(5) + t855 * qJD(4)) * t457 + (qJD(4) * t869 - t871) * t454;
t849 = t794 * t415;
t166 = t309 * rSges(6,1) - t308 * rSges(6,2) - rSges(6,3) * t689;
t848 = t166 * t415;
t844 = t885 * t415 + (-t308 * t894 + t309 * t867) * t344 + (-t310 * t894 + t311 * t867) * t343;
t279 = qJD(6) * t310;
t676 = -rSges(7,2) * t689 + t308 * t822 + t309 * t838;
t843 = t415 * t676 - t279;
t481 = -qJDD(5) * t457 + (-qJD(1) + t638) * qJD(4);
t605 = qJD(1) * t637;
t189 = (-qJDD(4) + t605) * t455 + t481 * t458;
t342 = qJD(4) * t637 + qJDD(5) * t454 + qJDD(1);
t620 = pkin(4) * t610 + pkin(8) * t495;
t694 = t454 * t455;
t629 = pkin(4) * t694;
t215 = -qJD(1) * t629 + t620;
t422 = pkin(4) * t693;
t335 = -pkin(8) * t686 + t422;
t451 = t457 * pkin(8);
t742 = pkin(4) * t454;
t386 = t451 - t742;
t353 = t386 * qJD(4);
t632 = qJD(1) * qJD(4);
t354 = -qJDD(4) * t455 - t458 * t632;
t741 = pkin(4) * t457;
t387 = pkin(8) * t454 + t741;
t443 = t458 * qJ(3);
t380 = t458 * pkin(1) + t455 * qJ(2);
t634 = qJD(1) * qJD(2);
t427 = qJ(2) * t643;
t440 = qJD(2) * t455;
t651 = t427 + t440;
t621 = qJD(1) * (-pkin(1) * t644 + t651) + qJDD(1) * t380 + t455 * t634;
t633 = qJD(1) * qJD(3);
t519 = qJDD(1) * t443 + qJDD(3) * t455 + 0.2e1 * t458 * t633 + t621;
t631 = qJDD(2) * t458;
t459 = qJD(1) ^ 2;
t688 = t455 * t459;
t471 = -qJ(3) * t688 + t519 - t631;
t684 = t458 * t459;
t462 = qJD(1) * t215 + t353 * t641 + qJDD(1) * t335 + (-qJDD(1) * t455 - t684) * pkin(7) - t354 * t387 + t471;
t570 = pkin(5) * t456 + qJ(6) * t453;
t571 = rSges(7,1) * t456 + rSges(7,3) * t453;
t663 = rSges(7,2) * t454 + (t570 + t571) * t457;
t789 = t822 * t310 + t311 * t838;
t673 = -rSges(7,2) * t686 + t789;
t636 = qJD(6) * t453;
t399 = t457 * t636;
t642 = qJD(4) * t454;
t494 = -t453 * t642 + t456 * t637;
t449 = t457 * rSges(7,2);
t785 = -t571 * t454 + t449;
t677 = t399 + t494 * qJ(6) + (-t453 * t637 - t456 * t642) * pkin(5) + (-rSges(7,1) * t453 + rSges(7,3) * t456) * t637 + t785 * qJD(4);
t737 = rSges(7,2) * t495 - t137 * t822 + t138 * t838 + t279;
t6 = qJD(6) * t139 + qJDD(6) * t308 - t189 * t663 + t342 * t673 - t343 * t677 + t415 * t737 + t462;
t841 = -g(2) + t6;
t435 = qJDD(4) * t458;
t190 = t455 * t481 - t458 * t605 + t435;
t840 = t823 * t189 + t824 * t190 + t794 * t342 + t861 * t343 + t344 * t837 + t828 * t415;
t839 = t189 * t825 + t190 * t826 + t342 * t795 + t343 * t860 + t344 * t835 + t415 * t827;
t16 = (-qJD(4) * t539 + t78) * t454 + (-qJD(4) * t153 + t453 * t74 + t456 * t82 + (-t147 * t456 - t158 * t453) * qJD(5)) * t457;
t18 = (qJD(4) * t536 + t76) * t454 + (-qJD(4) * t150 - t453 * t80 + t456 * t84 + (-t155 * t456 + t162 * t453) * qJD(5)) * t457;
t833 = t16 + t18;
t17 = (-qJD(4) * t538 + t77) * t454 + (qJD(4) * t154 + t453 * t73 + t456 * t81 + (t148 * t456 - t160 * t453) * qJD(5)) * t457;
t19 = (qJD(4) * t535 + t75) * t454 + (qJD(4) * t151 - t453 * t79 + t456 * t83 + (-t157 * t456 - t163 * t453) * qJD(5)) * t457;
t832 = -t17 - t19;
t831 = t343 * t825 + t344 * t826 + t857;
t830 = t343 * t823 + t344 * t824 + t849;
t829 = t343 * t858 + t344 * t859 + t415 * t790;
t738 = -pkin(1) - qJ(3);
t585 = t738 - t742;
t821 = t455 * t585;
t817 = t854 * t455;
t816 = t854 * t458;
t815 = t853 * t455;
t814 = t853 * t458;
t334 = pkin(4) * t689 + pkin(8) * t694;
t336 = pkin(4) * t686 + pkin(8) * t693;
t811 = t334 * t641 + t335 * t644 + t336 * t639;
t784 = -t455 * rSges(4,2) - t458 * rSges(4,3);
t786 = t443 + t380;
t810 = -t784 + t786;
t809 = t852 * t457;
t808 = t343 * t856 - t344 * t820 + t415 * t855;
t780 = t455 * t859 + t458 * t858;
t807 = t455 * t858 - t458 * t859;
t779 = t455 * t824 + t458 * t823;
t806 = t455 * t823 - t458 * t824;
t778 = t455 * t826 + t458 * t825;
t805 = t455 * t825 - t458 * t826;
t340 = t387 * t639;
t419 = pkin(8) * t689;
t333 = -t419 + t629;
t444 = t458 * qJ(2);
t375 = t455 * pkin(1) - t444;
t692 = t455 * qJ(3);
t739 = t458 * pkin(7);
t569 = -t692 - t739;
t520 = -t375 + t569;
t498 = -t333 + t520;
t439 = qJD(3) * t458;
t648 = t439 + t440;
t476 = qJD(1) * t498 + t340 + t648;
t45 = t344 * t663 + t476 - t843;
t500 = (-t333 * t455 - t335 * t458) * qJD(4);
t41 = t343 * t676 - t344 * t673 + t399 + t500;
t595 = t41 * t673;
t802 = t45 * t663 - t595;
t801 = (t335 + t786) * qJD(1);
t278 = qJD(6) * t308;
t800 = -t343 * t663 + t673 * t415 + t278;
t434 = pkin(7) * t644;
t441 = qJD(2) * t458;
t649 = t434 + t441;
t469 = (qJD(4) * t387 + qJD(3)) * t455 + t801 - t649;
t46 = t469 + t800;
t594 = t46 * t663;
t792 = -t822 * t139 - t140 * t838 - t278;
t382 = -rSges(3,2) * t458 + t455 * rSges(3,3);
t783 = (-t853 + t886) * t415 + (t309 * t846 - t280 + t283 + t818) * t344 + (t311 * t846 + t285 - t709 - t873) * t343;
t782 = (-Icges(7,1) * t695 + t323 + t403 + t866) * t415 + (-t308 * t896 + t281 - t284 - t819) * t344 + (-t310 * t896 + t282 - t714 + t874) * t343;
t781 = t844 * t457;
t775 = t790 * t342 + t415 * t850;
t546 = Icges(5,5) * t454 + Icges(5,6) * t457;
t254 = Icges(5,3) * t458 + t455 * t546;
t774 = qJD(1) * t254;
t716 = Icges(5,4) * t454;
t549 = Icges(5,2) * t457 + t716;
t260 = Icges(5,6) * t458 + t455 * t549;
t715 = Icges(5,4) * t457;
t552 = Icges(5,1) * t454 + t715;
t266 = Icges(5,5) * t458 + t455 * t552;
t575 = rSges(5,1) * t454 + rSges(5,2) * t457;
t270 = rSges(5,3) * t458 + t455 * t575;
t361 = Icges(5,5) * t457 - Icges(5,6) * t454;
t501 = qJD(4) * t361;
t261 = -Icges(5,6) * t455 + t458 * t549;
t404 = Icges(5,4) * t686;
t711 = Icges(5,5) * t455;
t267 = Icges(5,1) * t693 + t404 - t711;
t528 = t261 * t457 + t267 * t454;
t772 = qJD(1) * t528 + t458 * t501 - t774;
t529 = t260 * t457 + t266 * t454;
t255 = -Icges(5,3) * t455 + t458 * t546;
t646 = qJD(1) * t255;
t771 = qJD(1) * t529 + t455 * t501 + t646;
t363 = -Icges(5,2) * t454 + t715;
t365 = Icges(5,1) * t457 - t716;
t526 = t363 * t457 + t365 * t454;
t770 = t526 * qJD(1) - t546 * qJD(4);
t769 = -qJ(2) * qJD(1) - qJD(3);
t578 = t419 + t444 - t739;
t768 = t578 - t676;
t398 = pkin(8) * t614;
t216 = pkin(8) * t613 - t398 + (t454 * t643 + t611) * pkin(4);
t286 = qJD(1) * t380 - t441;
t355 = -t455 * t632 + t435;
t433 = pkin(7) * t688;
t652 = qJDD(2) * t455 + t458 * t634;
t586 = qJDD(3) * t458 - 0.2e1 * t455 * t633 + t652;
t493 = -qJ(3) * t684 + t586;
t463 = t355 * t387 + t353 * t639 + t433 + (-t286 - t216) * qJD(1) + t498 * qJDD(1) + t493;
t736 = rSges(7,2) * t496 - t792;
t7 = -qJD(6) * t137 + qJDD(6) * t310 + t190 * t663 - t342 * t676 + t344 * t677 - t415 * t736 + t463;
t767 = t45 * t677 + t7 * t663;
t766 = t455 * (-Icges(5,2) * t693 + t267 + t404) - t458 * (t363 * t455 + t266);
t763 = t189 / 0.2e1;
t762 = t190 / 0.2e1;
t760 = -t343 / 0.2e1;
t759 = t343 / 0.2e1;
t758 = -t344 / 0.2e1;
t757 = t344 / 0.2e1;
t756 = t354 / 0.2e1;
t755 = t355 / 0.2e1;
t754 = -t415 / 0.2e1;
t753 = t415 / 0.2e1;
t750 = t455 / 0.2e1;
t749 = -t458 / 0.2e1;
t746 = rSges(3,2) - pkin(1);
t745 = -rSges(7,2) - pkin(8);
t744 = -rSges(5,3) - pkin(7);
t743 = -rSges(6,3) - pkin(8);
t740 = g(1) * t455;
t735 = rSges(6,1) * t456;
t733 = rSges(6,2) * t453;
t732 = rSges(3,3) * t458;
t731 = rSges(5,3) * t455;
t729 = t16 * t344;
t728 = t17 * t343;
t727 = t18 * t344;
t726 = t19 * t343;
t330 = (-rSges(6,1) * t453 - rSges(6,2) * t456) * t457;
t448 = t457 * rSges(6,3);
t573 = -t733 + t735;
t184 = qJD(5) * t330 + (-t454 * t573 + t448) * qJD(4);
t272 = rSges(6,3) * t454 + t457 * t573;
t574 = rSges(6,1) * t140 - rSges(6,2) * t139;
t90 = rSges(6,3) * t496 + t574;
t25 = -t166 * t342 + t184 * t344 + t190 * t272 - t415 * t90 + t463;
t725 = t25 * t455;
t661 = t311 * rSges(6,1) - t310 * rSges(6,2);
t170 = -rSges(6,3) * t686 + t661;
t88 = t138 * rSges(6,1) + t137 * rSges(6,2) + rSges(6,3) * t495;
t26 = t170 * t342 - t184 * t343 - t189 * t272 + t415 * t88 + t462;
t724 = t26 * t458;
t64 = t170 * t415 - t272 * t343 + t469;
t723 = t64 * t272;
t722 = t65 * t190;
t721 = t66 * t189;
t720 = t67 * t190;
t719 = t68 * t189;
t379 = rSges(5,1) * t457 - rSges(5,2) * t454;
t337 = t379 * t639;
t499 = -t270 + t520;
t112 = qJD(1) * t499 + t337 + t648;
t702 = t112 * t455;
t697 = t254 * t455;
t696 = t254 * t458;
t316 = t361 * t455;
t317 = t361 * t458;
t244 = t458 * t255;
t675 = -t166 - t333;
t672 = -t308 * t838 + t309 * t822;
t671 = -t310 * t838 + t311 * t822;
t624 = t455 * t687;
t627 = t453 * t689;
t670 = rSges(7,2) * t694 + t624 * t838 + t627 * t822;
t623 = t457 * t685;
t626 = t453 * t686;
t669 = rSges(7,2) * t693 + t623 * t838 + t626 * t822;
t668 = t260 * t686 + t266 * t693;
t667 = t261 * t686 + t267 * t693;
t664 = -t570 * t454 + t785;
t660 = qJD(1) * t336 + t386 * t641;
t659 = t455 * t353 + t387 * t643;
t657 = -t549 + t365;
t656 = -t363 - t552;
t377 = rSges(3,2) * t455 + t732;
t655 = -t375 + t377;
t277 = t380 + t382;
t654 = t454 * t733 + t448;
t653 = rSges(5,1) * t693 + rSges(5,2) * t686;
t650 = rSges(3,2) * t644 + rSges(3,3) * t643;
t647 = -qJD(1) * t375 + t440;
t645 = qJD(1) * t546;
t141 = t455 * t526 + t317;
t635 = t141 * qJD(1);
t630 = -rSges(4,3) + t738;
t628 = -m(4) - m(5) - m(6) - m(7);
t622 = -t333 - t676;
t103 = t261 * t689 + t267 * t694 + t244;
t619 = t398 + t649;
t618 = t427 + t648;
t617 = t439 + t647;
t609 = t454 * t636;
t603 = -t643 / 0.2e1;
t602 = -t641 / 0.2e1;
t601 = t641 / 0.2e1;
t599 = -t639 / 0.2e1;
t598 = t639 / 0.2e1;
t381 = rSges(4,2) * t458 - t455 * rSges(4,3);
t592 = t381 - t692;
t591 = t354 * t333 - t335 * t355;
t590 = -qJD(1) * t334 + t386 * t639;
t589 = qJD(3) * t455 - t441;
t587 = qJD(4) * t379 + qJD(3);
t576 = -t375 + t592;
t383 = rSges(2,1) * t458 - rSges(2,2) * t455;
t378 = rSges(2,1) * t455 + rSges(2,2) * t458;
t136 = -t261 * t454 + t267 * t457;
t502 = qJD(4) * t363;
t177 = -qJD(1) * t260 + t458 * t502;
t503 = qJD(4) * t365;
t181 = -qJD(1) * t266 + t458 * t503;
t467 = qJD(4) * t136 + t177 * t457 + t181 * t454 - t646;
t135 = -t260 * t454 + t266 * t457;
t178 = qJD(1) * t261 + t455 * t502;
t182 = t455 * t503 + (t458 * t552 - t711) * qJD(1);
t468 = qJD(4) * t135 + t178 * t457 + t182 * t454 - t774;
t568 = (-t455 * t771 + t468 * t458) * t458 - (-t455 * t772 + t467 * t458) * t455;
t567 = (t468 * t455 + t458 * t771) * t458 - (t467 * t455 + t458 * t772) * t455;
t327 = t379 * t455;
t186 = qJD(4) * t327 + (t458 * t575 - t731) * qJD(1);
t350 = t575 * qJD(4);
t524 = -qJ(3) * t459 - qJD(4) * t350;
t49 = t355 * t379 + t433 + t524 * t458 + (-t186 - t286) * qJD(1) + t499 * qJDD(1) + t586;
t521 = rSges(5,1) * t610 - rSges(5,2) * t612;
t185 = -qJD(1) * t270 + t521;
t273 = t653 - t731;
t50 = qJD(1) * t185 + qJDD(1) * t273 - t354 * t379 + (-pkin(7) * t459 - qJDD(2)) * t458 + (-pkin(7) * qJDD(1) + t524) * t455 + t519;
t566 = t50 * t455 + t49 * t458;
t553 = -qJD(1) * t333 + t340 + t617;
t102 = t455 * t529 + t696;
t543 = t102 * t458 - t103 * t455;
t106 = t668 - t697;
t107 = -t255 * t455 + t667;
t542 = t106 * t458 - t107 * t455;
t113 = t587 * t455 + (t273 + t786) * qJD(1) - t649;
t541 = t112 * t458 + t113 * t455;
t534 = t166 * t458 - t170 * t455;
t533 = -t185 * t458 - t186 * t455;
t532 = -t215 * t458 - t216 * t455;
t527 = -t270 * t455 - t273 * t458;
t525 = -t363 * t454 + t365 * t457;
t518 = t618 + t620;
t507 = t585 * t740;
t506 = -pkin(7) * t455 + t422 + t786;
t234 = rSges(6,1) * t624 - rSges(6,2) * t627 + rSges(6,3) * t694;
t236 = rSges(6,1) * t623 - rSges(6,2) * t626 + rSges(6,3) * t693;
t504 = -t575 + t738;
t488 = t46 * t677 + t6 * t663;
t486 = -t45 * t676 + t46 * t673;
t485 = t41 * t676 - t594;
t484 = -t260 * t458 + t261 * t455;
t477 = (t454 * t656 + t457 * t657) * qJD(1);
t62 = t166 * t343 - t170 * t344 + t500;
t63 = t272 * t344 + t476 - t848;
t470 = t62 * t534 + (t455 * t63 - t458 * t64) * t272;
t346 = t549 * qJD(4);
t347 = t552 * qJD(4);
t466 = -qJD(1) * t361 + qJD(4) * t525 - t346 * t457 - t347 * t454;
t465 = t455 * t802 + t485 * t458;
t464 = t484 * t454 - t457 * t766;
t432 = rSges(4,2) * t643;
t349 = t458 * t387;
t348 = t455 * t387;
t332 = t379 * t458;
t313 = t458 * t353;
t269 = -t454 * t735 + t654;
t220 = qJD(1) * t277 - t441;
t219 = qJD(1) * t655 + t440;
t213 = -rSges(6,1) * t310 - rSges(6,2) * t311;
t208 = -rSges(6,1) * t308 - rSges(6,2) * t309;
t188 = qJD(1) * t810 + t589;
t187 = qJD(1) * t576 + t648;
t142 = t458 * t526 - t316;
t129 = t142 * qJD(1);
t128 = t527 * qJD(4);
t115 = qJD(1) * t650 + qJDD(1) * t382 + t621 - t631;
t114 = t655 * qJDD(1) + (-qJD(1) * t382 - t286) * qJD(1) + t652;
t99 = -qJDD(1) * t784 + qJD(1) * (-rSges(4,3) * t644 + t432) + t471;
t98 = t576 * qJDD(1) + (qJD(1) * t784 - t286) * qJD(1) + t493;
t72 = t466 * t455 + t458 * t770;
t71 = -t455 * t770 + t466 * t458;
t70 = -qJD(4) * t528 - t177 * t454 + t181 * t457;
t69 = -qJD(4) * t529 - t178 * t454 + t182 * t457;
t48 = qJD(4) * t542 + t129;
t47 = qJD(4) * t543 + t635;
t20 = qJD(4) * t532 + t166 * t189 - t170 * t190 + t343 * t90 - t344 * t88 + t591;
t5 = (qJD(5) * qJD(6) * t456 + qJDD(6) * t453) * t457 - t737 * t344 + t736 * t343 - t673 * t190 + t676 * t189 + (t532 - t609) * qJD(4) + t591;
t1 = [(t525 + m(2) * (t378 ^ 2 + t383 ^ 2) + Icges(2,3) + Icges(3,1) + Icges(4,1)) * qJDD(1) + (t70 + t71) * t602 + ((t453 * t819 + t456 * t818) * t457 + t820 * t454 + t859) * t343 * t754 + t828 * t759 + (t827 + t830) * t757 + (t219 * t441 + t220 * (t650 + t651) + (t219 * t746 * t458 + (t219 * (-rSges(3,3) - qJ(2)) - t220 * pkin(1)) * t455) * qJD(1) - (qJD(1) * t377 - t219 + t647) * t220 + (t115 - g(2)) * t277 + (t114 - g(1)) * (t455 * t746 + t444 + t732)) * m(3) + (-t594 * t344 - g(1) * t768 - t507 + t841 * (t686 * t745 + t506 + t789) + (t768 + t821) * t7 + (-pkin(7) * t643 + t518 - t553 + t737 + (-t569 + t821) * qJD(1) + t843) * t46 + (t387 * t641 - t434 + t589 + t801 + t619 + t792 + (t585 + t449) * t643 + ((t454 * t745 - t741) * qJD(4) + t769) * t455 + t800) * t45) * m(7) + t794 * t763 + t795 * t762 + (-t187 * t589 + t188 * (t432 + t618) + (t187 * t630 * t458 + (t187 * (-rSges(4,2) - qJ(2)) + t188 * t630) * t455) * qJD(1) - (qJD(1) * t592 - t187 + t617) * t188 + (-g(2) + t99) * t810 + (-g(1) + t98) * (t455 * t738 + t381 + t444)) * m(4) + t726 / 0.2e1 + (t142 + t136) * t756 + t775 + (t112 * t649 + t113 * (t521 + t618) - t587 * t702 + ((t112 * t504 + t113 * t744) * t458 + (t112 * (rSges(5,3) - qJ(2)) + t113 * t504) * t455) * qJD(1) - (-t112 + t337 + (-t270 + t569) * qJD(1) + t617) * t113 + (t50 - g(2)) * (t455 * t744 + t653 + t786) + (t49 - g(1)) * (t455 * t504 + t458 * t744 + t444)) * m(5) - m(2) * (-g(1) * t378 + g(2) * t383) + (-t635 + ((-t107 + t667 - t696) * t458 + (t103 - t106 - t244 - t697) * t455) * qJD(4) + t47) * t601 + (t141 + t135) * t755 + ((-t825 - t888) * t344 + (t826 + t889) * t343 + t849) * t758 + (-t857 + (-t823 + t889) * t344 + (t824 + t888) * t343 + t831) * t760 + (-qJD(4) * t526 + t346 * t454 - t347 * t457) * qJD(1) + (t69 + t72 + t48) * t598 + (-(qJD(1) * t569 + t553 - t63 - t848) * t64 - t723 * t344 + t63 * (-t574 + t619) + t64 * (t518 + t88) + (t63 * (t585 + t448) - t64 * pkin(7)) * t643 + ((qJD(1) * t64 + t25) * t585 + ((t454 * t743 - t741) * qJD(4) + t769) * t63) * t455 - t507 + (t26 - g(2)) * (t686 * t743 + t506 + t661) + (t25 - g(1)) * (-t166 + t578)) * m(6) + t728 / 0.2e1 + t729 / 0.2e1 + t727 / 0.2e1 + t719 / 0.2e1 + t720 / 0.2e1 + t721 / 0.2e1 + t722 / 0.2e1 + (t129 + (t668 * t458 + (-t102 + (t255 + t529) * t455 - t667) * t455) * qJD(4)) * t599; (-m(3) + t628) * (-g(2) * t458 + t740) + 0.2e1 * (t6 * t749 + t7 * t750) * m(7) + 0.2e1 * (t725 / 0.2e1 - t724 / 0.2e1) * m(6) + 0.2e1 * (t49 * t750 + t50 * t749) * m(5) + 0.2e1 * (t749 * t99 + t750 * t98) * m(4) + 0.2e1 * (t114 * t750 + t115 * t749) * m(3); t628 * (g(1) * t458 + g(2) * t455) + m(4) * (t455 * t99 + t458 * t98) + m(5) * t566 + m(6) * (t25 * t458 + t26 * t455) + m(7) * (t455 * t6 + t458 * t7); (-qJD(1) * t778 - t455 * t860 + t458 * t835) * t757 + (-qJD(1) * t779 - t455 * t861 + t458 * t837) * t759 - (t455 * t831 + t458 * t830) * t638 / 0.2e1 + ((t457 * t795 + t693 * t825) * qJD(5) + ((qJD(5) * t826 + t808) * t454 + t809) * t455 + (t308 * t813 + t309 * t812) * t415 + (t308 * t817 + t309 * t815) * t344 + (t308 * t816 + t309 * t814) * t343) * t758 - t829 * t637 / 0.2e1 + (t48 + t830) * t603 - (t47 + t831) * t644 / 0.2e1 + (-qJD(1) * t780 + t455 * t832 + t458 * t833) * t753 + (qJD(1) * t72 + qJD(4) * t567 + qJDD(1) * t141 + t102 * t355 + t103 * t354 + t839) * t458 / 0.2e1 - (qJD(1) * t71 + qJD(4) * t568 + qJDD(1) * t142 + t106 * t355 + t107 * t354 + t840) * t455 / 0.2e1 + ((t457 * t794 + t694 * t824) * qJD(5) + ((qJD(5) * t823 + t808) * t454 + t809) * t458 + (t310 * t813 + t311 * t812) * t415 + (t310 * t817 + t311 * t815) * t344 + (t310 * t816 + t311 * t814) * t343) * t760 + (t25 * t349 + t63 * t313 + t26 * t348 + t64 * t659 + (t25 * t272 + t63 * t184 + t20 * (-t170 - t335) + t723 * qJD(1)) * t458 + (t26 * t272 + t64 * t184 + t20 * t675 + t63 * (-t272 - t387) * qJD(1)) * t455 - g(1) * (t236 + t336) - g(2) * (t234 + t334) - g(3) * (t451 + (-pkin(4) - t735) * t454 + t654) - t63 * (-t234 * t415 + t269 * t344 + t590) - t64 * (t236 * t415 - t269 * t343 + t660) - ((-t166 * t63 + t170 * t64) * t457 + t470 * t454) * qJD(5) + ((qJD(1) * t675 - t215 - t88) * t458 + (qJD(1) * t170 - t216 - t90) * t455 - t234 * t343 + t236 * t344 + t811) * t62) * m(6) - t805 * t190 / 0.2e1 - t806 * t189 / 0.2e1 - t807 * t342 / 0.2e1 - qJD(1) * ((-t454 * t657 + t457 * t656) * qJD(1) + (t454 * t766 + t484 * t457) * qJD(4)) / 0.2e1 + ((qJD(4) * t533 + t270 * t354 - t273 * t355) * t527 + t128 * ((-t270 * t458 + t273 * t455) * qJD(1) + t533) - t541 * t350 + ((t113 * t458 - t702) * qJD(1) + t566) * t379 - (-t112 * t327 + t113 * t332) * qJD(1) - (t128 * (-t327 * t455 - t332 * t458) - t541 * t575) * qJD(4) - g(1) * t332 - g(2) * t327 + g(3) * t575) * m(5) + qJDD(1) * (t135 * t458 - t136 * t455) / 0.2e1 + qJD(1) * (-t455 * t70 + t458 * t69 + (-t135 * t455 - t136 * t458) * qJD(1)) / 0.2e1 + ((t317 * t641 + t645) * t455 + (t477 + (-t316 * t455 + t464) * qJD(4)) * t458) * t601 + ((t316 * t639 - t645) * t458 + (t477 + (-t317 * t458 + t464) * qJD(4)) * t455) * t599 + (-g(1) * (t336 + t669) - g(2) * (t334 + t670) - (t449 + t451 + (-t453 * t822 - t456 * t838 - pkin(4)) * t454) * g(3) + t7 * t349 + t6 * t348 + (t5 * (-t335 - t673) + t594 * qJD(1) + t767) * t458 + (qJD(1) * t595 + t5 * t622 + t488) * t455 - (t454 * t465 + t457 * t486) * qJD(5) + (t313 + (-t387 - t663) * t644 - t399 * t458 - t590 + t670 * t415 - t664 * t344) * t45 + (t343 * t664 - t399 * t455 - t415 * t669 + t659 - t660) * t46 + ((qJD(1) * t622 - t215 - t737) * t458 + (-t216 - t736) * t455 + t609 + t669 * t344 - t670 * t343 + t811) * t41) * m(7) + ((-t106 * t455 - t107 * t458) * qJD(1) + t568) * t602 + ((-t102 * t455 - t103 * t458) * qJD(1) + t567) * t598 + t543 * t755 + t542 * t756 + (((t453 * t813 + t456 * t812 + t855) * t415 + (t453 * t817 + t456 * t815 - t820) * t344 + (t453 * t816 + t456 * t814 + t856) * t343 + t790 * qJD(5)) * t457 + (qJD(5) * t780 - t852) * t454) * t754; (t454 * t794 - t457 * t779) * t763 + (t454 * t795 - t457 * t778) * t762 + (t454 * t790 - t457 * t780) * t342 / 0.2e1 + (t310 * t783 + t311 * t782 - t458 * t781) * t760 + ((qJD(1) * t806 + t794 * qJD(4) - t455 * t837 - t458 * t861) * t457 + (qJD(4) * t779 + t828) * t454) * t759 + (t308 * t783 + t309 * t782 - t455 * t781) * t758 + ((qJD(1) * t805 + t795 * qJD(4) - t455 * t835 - t458 * t860) * t457 + (qJD(4) * t778 + t827) * t454) * t757 + ((t453 * t783 + t456 * t782) * t457 + t844 * t454) * t754 + ((qJD(1) * t807 + t790 * qJD(4) - t455 * t833 + t458 * t832) * t457 + (qJD(4) * t780 + t850) * t454) * t753 + (t721 + t722 + t728 + t729 + t719 + t720 + t726 + t727 + t775) * t454 / 0.2e1 - t839 * t689 / 0.2e1 - t840 * t686 / 0.2e1 + t829 * t640 / 0.2e1 + (-g(1) * t671 - g(2) * t672 - g(3) * t658 + (qJD(4) * t465 - t45 * t736 + t46 * t737 + t6 * t673 - t676 * t7) * t454 + (t486 * qJD(4) + (-qJD(1) * t802 - t41 * t736 - t5 * t676 + t488) * t458 + (qJD(1) * t485 + t41 * t737 + t5 * t673 - t767) * t455) * t457 - (t309 * t46 + t311 * t45 + t41 * t687) * qJD(6) - (-t45 * t672 + t46 * t671) * t415 - (-t41 * t671 + t45 * t658) * t344 - (t41 * t672 - t46 * t658) * t343) * m(7) + (-g(1) * t213 - g(2) * t208 - g(3) * t330 + (qJD(4) * t470 - t25 * t166 + t26 * t170 - t63 * t90 + t64 * t88) * t454 + (t63 * (-qJD(4) * t166 - t184 * t455) + t64 * (qJD(4) * t170 + t184 * t458) - t20 * t534 + t62 * (t166 * t644 + t170 * t643 + t455 * t88 - t458 * t90) + (-t725 + t724 + (-t455 * t64 - t458 * t63) * qJD(1)) * t272) * t457 - t63 * (-t208 * t415 + t330 * t344) - t64 * (t213 * t415 - t330 * t343) - t62 * (t208 * t343 - t213 * t344)) * m(6) + t831 * (t454 * t601 + t457 * t603) + t830 * (t454 * t598 + t615 / 0.2e1); (-t137 * t45 + t139 * t46 + t494 * t41 + (t343 * t46 - t344 * t45 - g(3) + t5) * t695 + (t344 * t41 - t415 * t46 - g(1) + t7) * t310 + (-t343 * t41 + t415 * t45 + t841) * t308) * m(7);];
tau  = t1;
