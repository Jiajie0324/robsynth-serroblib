% Calculate time derivative of joint inertia matrix for
% S6RRRPRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,theta4]';
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
% MqD [6x6]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 16:42
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRRPRP3_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP3_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP3_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP3_inertiaDJ_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPRP3_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRRPRP3_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRRPRP3_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 16:39:09
% EndTime: 2019-03-09 16:40:04
% DurationCPUTime: 38.10s
% Computational Cost: add. (57498->1176), mult. (58896->1555), div. (0->0), fcn. (55863->10), ass. (0->551)
t475 = pkin(10) + qJ(5);
t469 = cos(t475);
t479 = qJ(2) + qJ(3);
t471 = cos(t479);
t486 = cos(qJ(1));
t468 = sin(t475);
t484 = sin(qJ(1));
t701 = t468 * t484;
t391 = t469 * t486 + t471 * t701;
t686 = t484 * t469;
t700 = t468 * t486;
t392 = t471 * t686 - t700;
t470 = sin(t479);
t697 = t470 * t484;
t263 = Icges(7,5) * t392 + Icges(7,6) * t697 + Icges(7,3) * t391;
t269 = Icges(6,4) * t392 - Icges(6,2) * t391 + Icges(6,6) * t697;
t814 = t263 - t269;
t693 = t471 * t486;
t393 = t468 * t693 - t686;
t394 = t469 * t693 + t701;
t696 = t470 * t486;
t264 = Icges(7,5) * t394 + Icges(7,6) * t696 + Icges(7,3) * t393;
t270 = Icges(6,4) * t394 - Icges(6,2) * t393 + Icges(6,6) * t696;
t813 = t264 - t270;
t265 = Icges(6,5) * t392 - Icges(6,6) * t391 + Icges(6,3) * t697;
t267 = Icges(7,4) * t392 + Icges(7,2) * t697 + Icges(7,6) * t391;
t812 = t265 + t267;
t266 = Icges(6,5) * t394 - Icges(6,6) * t393 + Icges(6,3) * t696;
t268 = Icges(7,4) * t394 + Icges(7,2) * t696 + Icges(7,6) * t393;
t811 = t266 + t268;
t271 = Icges(7,1) * t392 + Icges(7,4) * t697 + Icges(7,5) * t391;
t273 = Icges(6,1) * t392 - Icges(6,4) * t391 + Icges(6,5) * t697;
t810 = t271 + t273;
t272 = Icges(7,1) * t394 + Icges(7,4) * t696 + Icges(7,5) * t393;
t274 = Icges(6,1) * t394 - Icges(6,4) * t393 + Icges(6,5) * t696;
t809 = t272 + t274;
t808 = t393 * t814 + t810 * t394 + t812 * t696;
t807 = t393 * t813 + t394 * t809 + t696 * t811;
t799 = rSges(7,3) + qJ(6);
t804 = rSges(7,1) + pkin(5);
t806 = t799 * t391 + t392 * t804;
t476 = qJD(2) + qJD(3);
t692 = t476 * t484;
t635 = t470 * t692;
t647 = qJD(5) * t484;
t654 = qJD(1) * t486;
t655 = qJD(1) * t484;
t249 = -t468 * t635 - qJD(5) * t700 - t469 * t655 + (t468 * t654 + t469 * t647) * t471;
t648 = qJD(5) * t471;
t533 = t468 * (qJD(1) - t648);
t596 = qJD(1) * t471 - qJD(5);
t250 = t484 * t533 + (t486 * t596 - t635) * t469;
t805 = -qJD(6) * t391 - t799 * t249 - t250 * t804;
t633 = t471 * t692;
t506 = t470 * t654 + t633;
t156 = Icges(7,5) * t250 + Icges(7,6) * t506 + Icges(7,3) * t249;
t158 = Icges(6,5) * t250 - Icges(6,6) * t249 + Icges(6,3) * t506;
t160 = Icges(7,4) * t250 + Icges(7,2) * t506 + Icges(7,6) * t249;
t162 = Icges(6,4) * t250 - Icges(6,2) * t249 + Icges(6,6) * t506;
t164 = Icges(7,1) * t250 + Icges(7,4) * t506 + Icges(7,5) * t249;
t166 = Icges(6,1) * t250 - Icges(6,4) * t249 + Icges(6,5) * t506;
t615 = t469 * t648;
t691 = t476 * t486;
t634 = t470 * t691;
t247 = qJD(1) * t391 - t486 * t615 + (t634 - t647) * t468;
t248 = t486 * t533 + (-t484 * t596 - t634) * t469;
t620 = t470 * t655;
t632 = t471 * t691;
t505 = -t620 + t632;
t803 = (t158 + t160) * t696 + t812 * t505 + (t164 + t166) * t394 + (t156 - t162) * t393 + t810 * t248 - t814 * t247;
t155 = Icges(7,5) * t248 + Icges(7,6) * t505 - Icges(7,3) * t247;
t157 = Icges(6,5) * t248 + Icges(6,6) * t247 + Icges(6,3) * t505;
t159 = Icges(7,4) * t248 + Icges(7,2) * t505 - Icges(7,6) * t247;
t161 = Icges(6,4) * t248 + Icges(6,2) * t247 + Icges(6,6) * t505;
t163 = Icges(7,1) * t248 + Icges(7,4) * t505 - Icges(7,5) * t247;
t165 = Icges(6,1) * t248 + Icges(6,4) * t247 + Icges(6,5) * t505;
t802 = (t157 + t159) * t696 + t811 * t505 + (t163 + t165) * t394 + (t155 - t161) * t393 + t809 * t248 - t813 * t247;
t715 = Icges(7,5) * t469;
t557 = Icges(7,3) * t468 + t715;
t695 = t471 * t476;
t716 = Icges(7,5) * t468;
t239 = t557 * t695 + (Icges(7,6) * t476 + (Icges(7,3) * t469 - t716) * qJD(5)) * t470;
t562 = Icges(7,4) * t469 + Icges(7,6) * t468;
t241 = t562 * t695 + (Icges(7,2) * t476 + (-Icges(7,4) * t468 + Icges(7,6) * t469) * qJD(5)) * t470;
t568 = Icges(7,1) * t469 + t716;
t243 = t568 * t695 + (Icges(7,4) * t476 + (-Icges(7,1) * t468 + t715) * qJD(5)) * t470;
t348 = -Icges(7,6) * t471 + t470 * t557;
t350 = -Icges(7,2) * t471 + t470 * t562;
t352 = -Icges(7,4) * t471 + t470 * t568;
t62 = t239 * t393 + t241 * t696 + t243 * t394 - t247 * t348 + t248 * t352 + t350 * t505;
t558 = Icges(6,5) * t469 - Icges(6,6) * t468;
t240 = t558 * t695 + (Icges(6,3) * t476 + (-Icges(6,5) * t468 - Icges(6,6) * t469) * qJD(5)) * t470;
t719 = Icges(6,4) * t469;
t563 = -Icges(6,2) * t468 + t719;
t720 = Icges(6,4) * t468;
t242 = t563 * t695 + (Icges(6,6) * t476 + (-Icges(6,2) * t469 - t720) * qJD(5)) * t470;
t569 = Icges(6,1) * t469 - t720;
t244 = t569 * t695 + (Icges(6,5) * t476 + (-Icges(6,1) * t468 - t719) * qJD(5)) * t470;
t349 = -Icges(6,3) * t471 + t470 * t558;
t351 = -Icges(6,6) * t471 + t470 * t563;
t353 = -Icges(6,5) * t471 + t470 * t569;
t63 = t240 * t696 - t242 * t393 + t244 * t394 + t247 * t351 + t248 * t353 + t349 * t505;
t801 = -t62 - t63;
t64 = t239 * t391 + t241 * t697 + t243 * t392 + t249 * t348 + t250 * t352 + t350 * t506;
t65 = t240 * t697 - t242 * t391 + t244 * t392 - t249 * t351 + t250 * t353 + t349 * t506;
t800 = -t64 - t65;
t178 = t348 * t391 + t350 * t697 + t352 * t392;
t179 = t349 * t697 - t351 * t391 + t353 * t392;
t798 = t178 + t179;
t180 = t348 * t393 + t350 * t696 + t352 * t394;
t181 = t349 * t696 - t351 * t393 + t353 * t394;
t797 = t180 + t181;
t796 = t349 + t350;
t795 = t484 * t808 + t807 * t486;
t774 = t807 * t484 - t486 * t808;
t115 = t265 * t697 - t269 * t391 + t273 * t392;
t116 = t266 * t697 - t270 * t391 + t274 * t392;
t553 = t115 * t484 + t116 * t486;
t113 = t263 * t391 + t267 * t697 + t271 * t392;
t114 = t264 * t391 + t268 * t697 + t272 * t392;
t555 = t113 * t484 + t114 * t486;
t794 = t553 + t555;
t773 = (-t113 - t115) * t486 + (t114 + t116) * t484;
t481 = cos(pkin(10));
t688 = t481 * t484;
t480 = sin(pkin(10));
t689 = t480 * t486;
t413 = t471 * t688 - t689;
t687 = t481 * t486;
t690 = t480 * t484;
t522 = t471 * t690 + t687;
t305 = Icges(5,4) * t413 - Icges(5,2) * t522 + Icges(5,6) * t697;
t307 = Icges(5,1) * t413 - Icges(5,4) * t522 + Icges(5,5) * t697;
t560 = Icges(4,5) * t471 - Icges(4,6) * t470;
t374 = -Icges(4,3) * t486 + t484 * t560;
t414 = -t471 * t689 + t688;
t415 = t471 * t687 + t690;
t303 = Icges(5,5) * t413 - Icges(5,6) * t522 + Icges(5,3) * t697;
t641 = t303 * t696;
t721 = Icges(4,4) * t471;
t565 = -Icges(4,2) * t470 + t721;
t376 = -Icges(4,6) * t486 + t484 * t565;
t722 = Icges(4,4) * t470;
t571 = Icges(4,1) * t471 - t722;
t378 = -Icges(4,5) * t486 + t484 * t571;
t539 = t376 * t470 - t378 * t471;
t762 = t486 * t539;
t793 = -t305 * t414 - t307 * t415 - t374 * t484 - t641 + t762;
t792 = rSges(7,2) * t632 + t393 * qJD(6) - t799 * t247 + t248 * t804;
t547 = t264 * t468 + t272 * t469;
t129 = -t268 * t471 + t470 * t547;
t545 = -t270 * t468 + t274 * t469;
t131 = -t266 * t471 + t470 * t545;
t682 = t129 + t131;
t548 = t263 * t468 + t271 * t469;
t128 = -t267 * t471 + t470 * t548;
t546 = -t269 * t468 + t273 * t469;
t130 = -t265 * t471 + t470 * t546;
t683 = t128 + t130;
t791 = t484 * t682 - t486 * t683;
t790 = t484 * t683 + t486 * t682;
t676 = rSges(7,2) * t696 + t799 * t393 + t394 * t804;
t677 = rSges(7,2) * t697 + t806;
t789 = -t484 * t677 - t486 * t676;
t788 = (t476 * t795 + t801) * t471 + (-qJD(1) * t774 + t476 * t797 + t484 * t803 + t486 * t802) * t470;
t32 = t156 * t391 + t160 * t697 + t164 * t392 + t249 * t263 + t250 * t271 + t267 * t506;
t33 = t155 * t391 + t159 * t697 + t163 * t392 + t249 * t264 + t250 * t272 + t268 * t506;
t34 = t158 * t697 - t162 * t391 + t166 * t392 - t249 * t269 + t250 * t273 + t265 * t506;
t35 = t157 * t697 - t161 * t391 + t165 * t392 - t249 * t270 + t250 * t274 + t266 * t506;
t787 = (t476 * t794 + t800) * t471 + ((t33 + t35) * t486 + (t32 + t34) * t484 + t798 * t476 - t773 * qJD(1)) * t470;
t786 = qJD(1) * t795 + t484 * t802 - t486 * t803;
t17 = qJD(1) * t555 - t32 * t486 + t33 * t484;
t18 = qJD(1) * t553 - t34 * t486 + t35 * t484;
t785 = t17 + t18;
t737 = t470 * t794 - t471 * t798;
t784 = t470 * t795 - t471 * t797;
t777 = -rSges(7,2) * t620 + t792;
t680 = rSges(7,2) * t506 - t805;
t776 = t796 * t471 + ((-t352 - t353) * t469 + (-t348 + t351) * t468) * t470;
t306 = Icges(5,4) * t415 + Icges(5,2) * t414 + Icges(5,6) * t696;
t308 = Icges(5,1) * t415 + Icges(5,4) * t414 + Icges(5,5) * t696;
t375 = Icges(4,3) * t484 + t486 * t560;
t377 = Icges(4,6) * t484 + t486 * t565;
t379 = Icges(4,5) * t484 + t486 * t571;
t538 = t377 * t470 - t379 * t471;
t304 = Icges(5,5) * t415 + Icges(5,6) * t414 + Icges(5,3) * t696;
t639 = t304 * t696;
t775 = t306 * t414 + t308 * t415 + t375 * t484 - t486 * t538 + t639;
t575 = rSges(7,1) * t469 + rSges(7,3) * t468;
t668 = -rSges(7,2) * t471 + (pkin(5) * t469 + qJ(6) * t468 + t575) * t470;
t649 = qJD(5) * t470;
t616 = t469 * t649;
t638 = t468 * t695;
t772 = t616 + t638;
t487 = -pkin(8) - pkin(7);
t483 = sin(qJ(2));
t652 = qJD(2) * t483;
t644 = pkin(2) * t652;
t771 = qJD(1) * t487 + t644;
t463 = pkin(4) * t481 + pkin(3);
t739 = pkin(3) - t463;
t610 = t739 * t471;
t710 = qJ(4) * t470;
t770 = t710 + t610;
t617 = t468 * t649;
t637 = t469 * t695;
t698 = t470 * t476;
t702 = t468 * t470;
t769 = -t351 * t616 + t353 * t637 + t239 * t702 + (-t617 + t637) * t352 + t772 * t348 + (t244 + t243) * t469 * t470 + t796 * t698 + (-t240 - t241) * t471;
t768 = t470 * t739;
t485 = cos(qJ(2));
t445 = rSges(3,1) * t483 + rSges(3,2) * t485;
t515 = qJD(2) * t445;
t767 = t484 * t515;
t723 = Icges(3,4) * t485;
t567 = -Icges(3,2) * t483 + t723;
t402 = Icges(3,6) * t484 + t486 * t567;
t724 = Icges(3,4) * t483;
t573 = Icges(3,1) * t485 - t724;
t404 = Icges(3,5) * t484 + t486 * t573;
t536 = t402 * t483 - t404 * t485;
t766 = t484 * t536;
t765 = t484 * t538;
t464 = pkin(2) * t485 + pkin(1);
t740 = pkin(1) - t464;
t764 = t484 * t740;
t401 = -Icges(3,6) * t486 + t484 * t567;
t403 = -Icges(3,5) * t486 + t484 * t573;
t537 = t401 * t483 - t403 * t485;
t763 = t486 * t537;
t577 = -t392 * rSges(6,1) + t391 * rSges(6,2);
t276 = rSges(6,3) * t697 - t577;
t278 = t394 * rSges(6,1) - t393 * rSges(6,2) + rSges(6,3) * t696;
t761 = -t484 * t276 - t486 * t278;
t760 = qJD(1) * t374;
t561 = Icges(3,5) * t485 - Icges(3,6) * t483;
t399 = -Icges(3,3) * t486 + t484 * t561;
t340 = qJD(1) * t522 + t480 * t634;
t341 = -qJD(1) * t413 - t481 * t634;
t206 = Icges(5,5) * t341 + Icges(5,6) * t340 + Icges(5,3) * t505;
t342 = qJD(1) * t414 + t480 * t635;
t343 = qJD(1) * t415 - t481 * t635;
t207 = Icges(5,5) * t343 + Icges(5,6) * t342 + Icges(5,3) * t506;
t759 = -(t207 * t470 + t303 * t695) * t486 + (t206 * t470 + t304 * t695) * t484;
t422 = Icges(4,2) * t471 + t722;
t423 = Icges(4,1) * t470 + t721;
t535 = t422 * t470 - t423 * t471;
t758 = qJD(1) * t535 + t560 * t476;
t757 = 2 * m(3);
t756 = 2 * m(4);
t755 = 2 * m(5);
t754 = 2 * m(6);
t753 = 2 * m(7);
t477 = t484 ^ 2;
t478 = t486 ^ 2;
t752 = m(5) / 0.2e1;
t751 = m(6) / 0.2e1;
t750 = m(7) / 0.2e1;
t748 = t484 / 0.2e1;
t747 = -t486 / 0.2e1;
t745 = m(3) * t445;
t425 = rSges(4,1) * t470 + rSges(4,2) * t471;
t744 = m(4) * t425;
t743 = pkin(2) * t483;
t742 = pkin(3) * t471;
t741 = t484 * pkin(7);
t474 = t486 * pkin(7);
t738 = -pkin(7) - t487;
t735 = (-t351 * t695 + (-qJD(5) * t353 - t242) * t470) * t468 + t769;
t734 = rSges(3,1) * t485;
t733 = rSges(4,1) * t471;
t732 = rSges(3,2) * t483;
t731 = rSges(3,3) * t486;
t42 = (t476 * t548 - t160) * t471 + (t156 * t468 + t164 * t469 + t267 * t476 + (t263 * t469 - t271 * t468) * qJD(5)) * t470;
t730 = t42 * t486;
t43 = (t476 * t547 - t159) * t471 + (t155 * t468 + t163 * t469 + t268 * t476 + (t264 * t469 - t272 * t468) * qJD(5)) * t470;
t729 = t43 * t484;
t44 = (t476 * t546 - t158) * t471 + (-t162 * t468 + t166 * t469 + t265 * t476 + (-t269 * t469 - t273 * t468) * qJD(5)) * t470;
t728 = t44 * t486;
t45 = (t476 * t545 - t157) * t471 + (-t161 * t468 + t165 * t469 + t266 * t476 + (-t270 * t469 - t274 * t468) * qJD(5)) * t470;
t727 = t45 * t484;
t473 = t484 * rSges(3,3);
t472 = t484 * rSges(4,3);
t726 = -rSges(5,3) - qJ(4);
t582 = -rSges(4,2) * t470 + t733;
t398 = t582 * t476;
t709 = t398 * t484;
t708 = t401 * t485;
t707 = t402 * t485;
t706 = t403 * t483;
t705 = t404 * t483;
t704 = t422 * t476;
t703 = t423 * t476;
t482 = -pkin(9) - qJ(4);
t694 = t471 * t482;
t685 = t486 * t487;
t684 = qJ(4) + t482;
t679 = t776 * t698;
t678 = (pkin(5) * t695 + qJ(6) * t649) * t469 + (qJ(6) * t695 + (-pkin(5) * qJD(5) + qJD(6)) * t470) * t468 + t575 * t695 + (rSges(7,2) * t476 + (-rSges(7,1) * t468 + rSges(7,3) * t469) * qJD(5)) * t470;
t453 = pkin(3) * t693;
t410 = qJ(4) * t696 + t453;
t459 = pkin(4) * t690;
t529 = t463 * t693 - t482 * t696 + t459;
t302 = t529 - t410;
t675 = -t302 - t410;
t310 = t415 * rSges(5,1) + t414 * rSges(5,2) + rSges(5,3) * t696;
t674 = -t310 - t410;
t313 = (-t470 * t684 - t610) * t476;
t363 = qJ(4) * t698 + (pkin(3) * t476 - qJD(4)) * t471;
t673 = -t313 - t363;
t346 = t471 * t684 - t768;
t424 = pkin(3) * t470 - qJ(4) * t471;
t411 = t424 * t655;
t672 = t346 * t655 + t411;
t579 = rSges(5,1) * t481 - rSges(5,2) * t480;
t339 = (rSges(5,3) * t470 + t471 * t579) * t476;
t671 = -t339 - t363;
t670 = -t346 - t424;
t369 = -rSges(5,3) * t471 + t470 * t579;
t669 = t369 * t655 + t411;
t372 = t474 + t685 - t764;
t448 = t486 * t464;
t373 = -t486 * pkin(1) + t484 * t738 + t448;
t667 = t484 * t372 + t486 * t373;
t387 = -t486 * rSges(4,3) + t484 * t582;
t388 = rSges(4,1) * t693 - rSges(4,2) * t696 + t472;
t285 = t484 * t387 + t486 * t388;
t666 = -t369 - t424;
t409 = (t710 + t742) * t484;
t665 = t484 * t409 + t486 * t410;
t429 = qJ(4) * t632;
t650 = qJD(4) * t470;
t446 = t486 * t650;
t664 = t429 + t446;
t460 = pkin(4) * t689;
t663 = qJD(1) * t460 + t482 * t620;
t662 = -t482 * t697 - t460;
t661 = rSges(4,2) * t620 + rSges(4,3) * t654;
t660 = t771 * t484;
t659 = t486 * t734 + t473;
t658 = t477 + t478;
t657 = qJD(1) * t375;
t400 = Icges(3,3) * t484 + t486 * t561;
t656 = qJD(1) * t400;
t651 = qJD(2) * t485;
t645 = t486 * t732;
t643 = pkin(2) * t651;
t642 = t303 * t697;
t640 = t304 * t697;
t636 = t470 * t695;
t631 = t248 * rSges(6,1) + t247 * rSges(6,2) + rSges(6,3) * t632;
t576 = rSges(6,1) * t469 - rSges(6,2) * t468;
t246 = t576 * t695 + (rSges(6,3) * t476 + (-rSges(6,1) * t468 - rSges(6,2) * t469) * qJD(5)) * t470;
t629 = -t246 + t673;
t434 = pkin(3) * t635;
t507 = -t471 * t655 - t634;
t628 = t484 * (qJ(4) * t506 + qJD(1) * t453 + t484 * t650 - t434) + t486 * (pkin(3) * t507 - qJ(4) * t620 + t664) + t409 * t654;
t627 = -t278 + t675;
t518 = t425 * t476;
t626 = t484 * (-t484 * t518 + (t486 * t582 + t472) * qJD(1)) + t486 * (rSges(4,1) * t507 - rSges(4,2) * t632 + t661) + t387 * t654;
t625 = t484 * ((-t486 * t740 - t741) * qJD(1) - t660) + t486 * (-t486 * t644 + (t486 * t738 + t764) * qJD(1)) + t372 * t654;
t355 = -rSges(6,3) * t471 + t470 * t576;
t345 = t355 * t655;
t624 = t345 + t672;
t623 = t341 * rSges(5,1) + t340 * rSges(5,2) + rSges(5,3) * t632;
t622 = -t355 + t670;
t621 = -t463 * t635 - t482 * t506;
t618 = t483 * t655;
t609 = t655 / 0.2e1;
t608 = t654 / 0.2e1;
t607 = -t424 - t743;
t606 = -t425 - t743;
t605 = t486 * t668;
t604 = t668 * t484;
t315 = t666 * t486;
t290 = -qJD(1) * t376 - t486 * t704;
t603 = t379 * t476 + t290;
t291 = qJD(1) * t377 - t484 * t704;
t602 = t378 * t476 + t291;
t292 = -qJD(1) * t378 - t486 * t703;
t601 = -t377 * t476 + t292;
t293 = qJD(1) * t379 - t484 * t703;
t600 = t376 * t476 - t293;
t599 = -t484 * t487 + t448;
t598 = -t463 * t471 - t464;
t597 = qJD(1) * t668;
t595 = t673 - t678;
t594 = t675 - t676;
t301 = -t484 * t770 + t662;
t593 = t484 * t301 + t486 * t302 + t665;
t592 = t655 * t668 + t672;
t591 = -t668 + t670;
t580 = -t413 * rSges(5,1) + rSges(5,2) * t522;
t309 = rSges(5,3) * t697 - t580;
t177 = t484 * t309 + t486 * t310 + t665;
t586 = -t346 + t607;
t585 = -t369 + t607;
t584 = -t363 - t643;
t219 = t622 * t486;
t583 = -t732 + t734;
t581 = rSges(5,1) * t343 + rSges(5,2) * t342;
t578 = rSges(6,1) * t250 - rSges(6,2) * t249;
t574 = -t621 + t660;
t572 = Icges(3,1) * t483 + t723;
t570 = Icges(5,1) * t481 - Icges(5,4) * t480;
t566 = Icges(3,2) * t485 + t724;
t564 = Icges(5,4) * t481 - Icges(5,2) * t480;
t421 = Icges(4,5) * t470 + Icges(4,6) * t471;
t559 = Icges(5,5) * t481 - Icges(5,6) * t480;
t544 = t276 * t486 - t278 * t484;
t543 = -t305 * t480 + t307 * t481;
t542 = -t306 * t480 + t308 * t481;
t534 = -t355 + t586;
t532 = -t313 + t584;
t531 = -t339 + t584;
t198 = t591 * t486;
t530 = -pkin(1) - t583;
t287 = t585 * t486;
t528 = -t464 - t582;
t527 = t484 * (-qJ(4) * t633 + t434 + (-t486 * t770 + t459) * qJD(1) + t621) + t486 * (-t429 + (-t694 + t768) * t691 + t770 * t655 + t663) + t301 * t654 + t628;
t526 = t484 * (rSges(5,3) * t506 + t581) + t486 * (-rSges(5,3) * t620 + t623) + t309 * t654 + t628;
t105 = t593 - t761;
t525 = -rSges(7,2) * t470 + t598;
t524 = -rSges(6,3) * t470 + t598;
t521 = t130 / 0.2e1 + t128 / 0.2e1 + t178 / 0.2e1 + t179 / 0.2e1;
t520 = t131 / 0.2e1 + t129 / 0.2e1 + t180 / 0.2e1 + t181 / 0.2e1;
t519 = t586 - t668;
t516 = -t246 + t532;
t512 = t476 * t421;
t511 = qJD(2) * t572;
t510 = qJD(2) * t566;
t509 = qJD(2) * (-Icges(3,5) * t483 - Icges(3,6) * t485);
t213 = t534 * t486;
t508 = t470 * t726 - t464 - t742;
t504 = t532 - t678;
t190 = t519 * t486;
t96 = t593 - t789;
t502 = -t484 * t676 + t486 * t677;
t168 = -rSges(6,3) * t620 + t631;
t170 = rSges(6,3) * t506 + t578;
t501 = t486 * t168 + t484 * t170 + t276 * t654 + t527;
t500 = t529 + t599;
t499 = rSges(3,2) * t618 + rSges(3,3) * t654 - t486 * t515;
t132 = -t305 * t522 + t307 * t413 + t642;
t133 = -t306 * t522 + t308 * t413 + t640;
t208 = Icges(5,4) * t341 + Icges(5,2) * t340 + Icges(5,6) * t505;
t209 = Icges(5,4) * t343 + Icges(5,2) * t342 + Icges(5,6) * t506;
t210 = Icges(5,1) * t341 + Icges(5,4) * t340 + Icges(5,5) * t505;
t211 = Icges(5,1) * t343 + Icges(5,4) * t342 + Icges(5,5) * t506;
t214 = -t374 * t486 - t484 * t539;
t215 = -t375 * t486 - t765;
t288 = -t486 * t512 - t760;
t289 = -t484 * t512 + t657;
t497 = t773 * t655 + t774 * t654 + ((-t132 - t214) * t655 + t793 * t654) * t486 + ((t414 * t208 + t415 * t210 + t484 * t288 + t340 * t306 + t341 * t308 + (-t640 + t765 - t793) * qJD(1)) * t484 + (t215 + t133) * t655 + t775 * t654 + (-t414 * t209 - t415 * t211 - t340 * t305 - t341 * t307 + t759 + (-t603 * t470 + t601 * t471 - t289) * t484 + (t291 * t470 - t293 * t471 + t376 * t695 + t378 * t698 - t760) * t486 + (t642 + (t375 - t539) * t484 + t775) * qJD(1)) * t486 + t786) * t484;
t496 = t484 * t525 - t685;
t495 = t484 * t524 - t685;
t494 = t484 * t508 - t685;
t493 = t484 * t680 + t486 * t777 + t654 * t677 + t527;
t396 = t565 * t476;
t397 = t571 * t476;
t492 = qJD(1) * t421 + (t397 - t704) * t471 + (-t396 - t703) * t470;
t491 = t446 + (-t644 + (-t463 * t470 - t694) * t476) * t486 + t663;
t22 = (t522 * t209 - t413 * t211 - t342 * t305 - t343 * t307 + (t133 - t641) * qJD(1)) * t486 + (-t522 * t208 + t413 * t210 + t342 * t306 + t343 * t308 + (t132 + t639) * qJD(1) + t759) * t484;
t37 = (t486 * t289 + (t215 + t762) * qJD(1)) * t486 + (t214 * qJD(1) + (-t290 * t470 + t292 * t471 - t377 * t695 - t379 * t698 + t657) * t484 + (-t288 + t600 * t471 + t602 * t470 + (-t374 - t538) * qJD(1)) * t486) * t484;
t490 = (-t22 - t37 - t785) * t486 + t497;
t489 = -(t790 * qJD(1) + t727 - t728 + t729 - t730) * t471 / 0.2e1 + t788 * t748 + t787 * t747 + t791 * t698 / 0.2e1 + t785 * t697 / 0.2e1 + t786 * t696 / 0.2e1 + t737 * t609 - t774 * t620 / 0.2e1 + (t484 * t773 + t486 * t774) * t695 / 0.2e1 + (t470 * t773 + t784) * t608;
t336 = (Icges(5,3) * t470 + t471 * t559) * t476;
t337 = (Icges(5,6) * t470 + t471 * t564) * t476;
t338 = (Icges(5,5) * t470 + t471 * t570) * t476;
t366 = -Icges(5,3) * t471 + t470 * t559;
t367 = -Icges(5,6) * t471 + t470 * t564;
t368 = -Icges(5,5) * t471 + t470 * t570;
t488 = t727 / 0.2e1 - t728 / 0.2e1 + t729 / 0.2e1 - t730 / 0.2e1 + (t336 * t696 + t337 * t414 + t338 * t415 + t340 * t367 + t341 * t368 + t366 * t505 + t758 * t484 + t492 * t486 + (t476 * t542 - t206 + t603) * t471 + (-t208 * t480 + t210 * t481 + t304 * t476 + t601) * t470 - t801) * t748 + (t336 * t697 - t337 * t522 + t338 * t413 + t342 * t367 + t343 * t368 + t366 * t506 + t492 * t484 - t758 * t486 + (t476 * t543 - t207 + t602) * t471 + (-t209 * t480 + t211 * t481 + t303 * t476 - t600) * t470 - t800) * t747 + (t366 * t697 - t367 * t522 + t368 * t413 - t421 * t486 - t484 * t535 + (-t303 + t376) * t471 + (t378 + t543) * t470 + t683 + t798) * t609 + (t366 * t696 + t367 * t414 + t368 * t415 + t421 * t484 - t486 * t535 + (-t304 + t377) * t471 + (t379 + t542) * t470 + t682 + t797) * t608;
t467 = t470 ^ 2;
t457 = pkin(2) * t618;
t433 = t583 * qJD(2);
t408 = -t645 + t659;
t407 = t484 * t583 - t731;
t371 = t606 * t486;
t370 = t606 * t484;
t360 = t741 + (pkin(1) - t732) * t486 + t659;
t359 = t484 * t530 + t474 + t731;
t332 = t388 + t599;
t331 = (rSges(4,3) - t487) * t486 + t528 * t484;
t324 = t484 * t509 + t656;
t323 = -qJD(1) * t399 + t486 * t509;
t314 = t666 * t484;
t298 = t767 + ((-rSges(3,3) - pkin(7)) * t484 + t530 * t486) * qJD(1);
t297 = (t474 + (-pkin(1) - t734) * t484) * qJD(1) + t499;
t286 = t585 * t484;
t260 = -t425 * t654 - t709 + (-t483 * t654 - t484 * t651) * pkin(2);
t259 = t425 * t655 + t457 + (-t398 - t643) * t486;
t230 = t400 * t484 - t486 * t536;
t229 = t399 * t484 - t763;
t228 = -t400 * t486 - t766;
t227 = -t399 * t486 - t484 * t537;
t223 = t425 * t692 + (t486 * t528 - t472) * qJD(1) + t660;
t222 = (-t464 - t733) * t655 + (-t518 - t771) * t486 + t661;
t221 = t599 - t674;
t220 = t494 + t580;
t218 = t622 * t484;
t212 = t534 * t484;
t205 = -t278 * t471 - t355 * t696;
t204 = t276 * t471 + t355 * t697;
t201 = t500 + t278;
t200 = t495 + t577 - t662;
t199 = t285 + t667;
t197 = t591 * t484;
t192 = qJD(1) * t315 + t484 * t671;
t191 = t486 * t671 + t669;
t189 = t519 * t484;
t186 = t544 * t470;
t183 = qJD(1) * t287 + t484 * t531;
t182 = t486 * t531 + t457 + t669;
t172 = t500 + t676;
t171 = t496 - t662 - t806;
t146 = -t388 * t655 + t626;
t143 = t434 + (t695 * t726 - t650) * t484 + t508 * t654 - t581 + t660;
t142 = (-pkin(3) * t698 - t644) * t486 + t494 * qJD(1) + t623 + t664;
t141 = -t470 * t605 - t471 * t676;
t140 = t470 * t604 + t471 * t677;
t125 = t177 + t667;
t112 = qJD(1) * t219 + t484 * t629;
t111 = t486 * t629 + t624;
t110 = t502 * t470;
t109 = qJD(1) * t213 + t484 * t516;
t108 = t486 * t516 + t457 + t624;
t107 = (-rSges(6,3) * t695 - t650) * t484 + (t486 * t524 - t459) * qJD(1) + t574 - t578;
t106 = qJD(1) * t495 + t491 + t631;
t104 = (-t373 - t388) * t655 + t625 + t626;
t103 = t105 + t667;
t102 = qJD(1) * t198 + t484 * t595;
t101 = t486 * t595 + t592;
t100 = qJD(1) * t190 + t484 * t504;
t99 = t486 * t504 + t457 + t592;
t95 = (t355 * t692 + t170) * t471 + (t246 * t484 - t276 * t476 + t355 * t654) * t470;
t94 = (-t355 * t691 - t168) * t471 + (-t246 * t486 + t278 * t476 + t345) * t470;
t89 = (-rSges(7,2) * t695 - t650) * t484 + (t486 * t525 - t459) * qJD(1) + t574 + t805;
t88 = qJD(1) * t496 + t491 + t792;
t87 = t96 + t667;
t68 = t655 * t674 + t526;
t57 = t544 * t695 + (qJD(1) * t761 - t168 * t484 + t170 * t486) * t470;
t56 = (-t373 + t674) * t655 + t526 + t625;
t47 = (t476 * t604 + t680) * t471 + (-t476 * t677 + t484 * t678 + t486 * t597) * t470;
t46 = (-t476 * t605 - t777) * t471 + (t476 * t676 + t484 * t597 - t486 * t678) * t470;
t27 = t627 * t655 + t501;
t26 = (-t373 + t627) * t655 + t501 + t625;
t25 = t502 * t695 + (t789 * qJD(1) - t484 * t777 + t680 * t486) * t470;
t24 = t594 * t655 + t493;
t23 = (-t373 + t594) * t655 + t493 + t625;
t1 = [-t351 * t638 - t353 * t617 - t242 * t702 + (t297 * t360 + t298 * t359) * t757 + (t222 * t332 + t223 * t331) * t756 + (t142 * t221 + t143 * t220) * t755 + (t106 * t201 + t107 * t200) * t754 + (t171 * t89 + t172 * t88) * t753 + (-t422 + t366) * t698 + (-t566 + t573) * t652 + (t572 + t567) * t651 + (t396 - t336) * t471 + (-t367 * t480 + t368 * t481 + t423) * t695 + (-t337 * t480 + t338 * t481 + t397) * t470 + t769; (t477 / 0.2e1 + t478 / 0.2e1) * t561 * qJD(2) + (-qJD(2) * t536 + (-qJD(1) * t401 - t486 * t510) * t485 + (-qJD(1) * t403 - t486 * t511) * t483) * t748 + (-qJD(2) * t537 + (qJD(1) * t402 - t484 * t510) * t485 + (qJD(1) * t404 - t484 * t511) * t483) * t747 + m(3) * ((-t297 * t484 - t298 * t486) * t445 + (-t359 * t486 - t360 * t484) * t433) + ((-t360 * t745 + t707 / 0.2e1 + t705 / 0.2e1) * t486 + (t359 * t745 + t708 / 0.2e1 + t706 / 0.2e1) * t484) * qJD(1) + m(4) * (t222 * t370 + t223 * t371 + t259 * t331 + t260 * t332) + m(5) * (t142 * t286 + t143 * t287 + t182 * t220 + t183 * t221) + m(6) * (t106 * t212 + t107 * t213 + t108 * t200 + t109 * t201) + m(7) * (t100 * t172 + t171 * t99 + t189 * t88 + t190 * t89) + t488; t497 + (-t227 * t486 + t228 * t484) * t655 + (-t229 * t486 + t230 * t484) * t654 - t486 * t18 - t486 * t17 - t486 * t22 - t486 * t37 + t484 * ((t484 * t323 + (t229 + t766) * qJD(1)) * t484 + (t230 * qJD(1) + (t401 * t651 + t403 * t652) * t486 + (-t324 + (-t705 - t707) * qJD(2) + (t400 - t537) * qJD(1)) * t484) * t486) + ((t407 * t484 + t408 * t486) * ((qJD(1) * t407 + t499) * t486 + (-t767 + (-t408 - t645 + t473) * qJD(1)) * t484) + t658 * t445 * t433) * t757 + (t104 * t199 + t259 * t371 + t260 * t370) * t756 + (t125 * t56 + t182 * t287 + t183 * t286) * t755 + (t103 * t26 + t108 * t213 + t109 * t212) * t754 + (t100 * t189 + t190 * t99 + t23 * t87) * t753 - t486 * ((t486 * t324 + (t228 + t763) * qJD(1)) * t486 + (t227 * qJD(1) + (-t402 * t651 - t404 * t652 + t656) * t484 + (-t323 + (t706 + t708) * qJD(2) - t536 * qJD(1)) * t486) * t484); m(5) * (t142 * t314 + t143 * t315 + t191 * t220 + t192 * t221) + m(6) * (t106 * t218 + t107 * t219 + t111 * t200 + t112 * t201) + m(7) * (t101 * t171 + t102 * t172 + t197 * t88 + t198 * t89) + (-t222 * t484 - t223 * t486 + (t331 * t484 - t332 * t486) * qJD(1)) * t744 + m(4) * (-t331 * t486 - t332 * t484) * t398 + t488; m(7) * (t100 * t197 + t101 * t190 + t102 * t189 + t198 * t99 + t23 * t96 + t24 * t87) + m(6) * (t103 * t27 + t105 * t26 + t108 * t219 + t109 * t218 + t111 * t213 + t112 * t212) + m(5) * (t125 * t68 + t177 * t56 + t182 * t315 + t183 * t314 + t191 * t287 + t192 * t286) + (-t259 * t486 - t260 * t484 + (-t370 * t486 + t371 * t484) * qJD(1)) * t744 + t490 + m(4) * (-t371 * t398 * t486 + t104 * t285 + t146 * t199 - t370 * t709); t490 + (t398 * t425 * t658 + t146 * t285) * t756 + (t101 * t198 + t102 * t197 + t24 * t96) * t753 + (t105 * t27 + t111 * t219 + t112 * t218) * t754 + (t177 * t68 + t191 * t315 + t192 * t314) * t755; 0.2e1 * ((t171 * t486 + t172 * t484) * t750 + (t200 * t486 + t201 * t484) * t751 + (t220 * t486 + t221 * t484) * t752) * t695 + 0.2e1 * ((-t171 * t655 + t172 * t654 + t484 * t88 + t486 * t89) * t750 + (t106 * t484 + t107 * t486 - t200 * t655 + t201 * t654) * t751 + (t142 * t484 + t143 * t486 - t220 * t655 + t221 * t654) * t752) * t470; 0.2e1 * ((t189 * t692 + t190 * t691 - t23) * t750 + (t212 * t692 + t213 * t691 - t26) * t751 + (t286 * t692 + t287 * t691 - t56) * t752) * t471 + 0.2e1 * ((t100 * t484 + t189 * t654 - t190 * t655 + t476 * t87 + t486 * t99) * t750 + (t103 * t476 + t108 * t486 + t109 * t484 + t212 * t654 - t213 * t655) * t751 + (t125 * t476 + t182 * t486 + t183 * t484 + t286 * t654 - t287 * t655) * t752) * t470; 0.2e1 * ((t197 * t692 + t198 * t691 - t24) * t750 + (t218 * t692 + t219 * t691 - t27) * t751 + (t314 * t692 + t315 * t691 - t68) * t752) * t471 + 0.2e1 * ((t101 * t486 + t102 * t484 + t197 * t654 - t198 * t655 + t476 * t96) * t750 + (t105 * t476 + t111 * t486 + t112 * t484 + t218 * t654 - t219 * t655) * t751 + (t177 * t476 + t191 * t486 + t192 * t484 + t314 * t654 - t315 * t655) * t752) * t470; 0.4e1 * (t752 + t751 + t750) * (-0.1e1 + t658) * t636; m(6) * (t106 * t205 + t107 * t204 + t200 * t95 + t201 * t94) + m(7) * (t140 * t89 + t141 * t88 + t171 * t47 + t172 * t46) + ((t484 * t521 + t486 * t520) * t476 - t735) * t471 + ((t45 / 0.2e1 + t43 / 0.2e1 + t62 / 0.2e1 + t63 / 0.2e1) * t486 + (t44 / 0.2e1 + t42 / 0.2e1 + t64 / 0.2e1 + t65 / 0.2e1) * t484 + (-t484 * t520 + t486 * t521) * qJD(1)) * t470 - t679; t489 + m(6) * (t103 * t57 + t108 * t204 + t109 * t205 + t186 * t26 + t212 * t94 + t213 * t95) + m(7) * (t100 * t141 + t110 * t23 + t140 * t99 + t189 * t46 + t190 * t47 + t25 * t87); t489 + m(6) * (t105 * t57 + t111 * t204 + t112 * t205 + t186 * t27 + t218 * t94 + t219 * t95) + m(7) * (t101 * t140 + t102 * t141 + t110 * t24 + t197 * t46 + t198 * t47 + t25 * t96); 0.2e1 * ((t204 * t691 + t205 * t692 - t57) * t751 + (t140 * t691 + t141 * t692 - t25) * t750) * t471 + 0.2e1 * ((t186 * t476 - t204 * t655 + t205 * t654 + t484 * t94 + t486 * t95) * t751 + (t110 * t476 - t140 * t655 + t141 * t654 + t46 * t484 + t47 * t486) * t750) * t470; (t110 * t25 + t140 * t47 + t141 * t46) * t753 + (t186 * t57 + t204 * t95 + t205 * t94) * t754 + (t735 * t471 + ((-t471 * t682 + t784) * t486 + (-t471 * t683 + t737) * t484) * t476 + t679) * t471 + (t788 * t486 + t787 * t484 + t790 * t698 + ((-t43 - t45) * t486 + (-t42 - t44) * t484 + t776 * t476) * t471 + (t791 * t471 - t484 * t784 + t737 * t486) * qJD(1)) * t470; m(7) * (-t171 * t247 + t172 * t249 + t391 * t88 + t393 * t89); m(7) * (t87 * t616 + t100 * t391 + t189 * t249 - t190 * t247 + t393 * t99 + (t23 * t470 + t695 * t87) * t468); m(7) * (t96 * t616 + t101 * t393 + t102 * t391 + t197 * t249 - t198 * t247 + (t24 * t470 + t695 * t96) * t468); m(7) * ((t467 * t468 + (t391 * t484 + t393 * t486 - t468 * t471) * t471) * t476 + (-t615 - t247 * t486 + t249 * t484 + (t391 * t486 - t393 * t484) * qJD(1)) * t470); m(7) * (t110 * t772 - t140 * t247 + t141 * t249 + t25 * t702 + t391 * t46 + t393 * t47); (-t247 * t393 + t249 * t391 + (qJD(5) * t467 * t469 + t468 * t636) * t468) * t753;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;
