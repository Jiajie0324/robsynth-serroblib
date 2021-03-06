% Calculate time derivative of joint inertia matrix for
% S6RRRPRP2
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
% Datum: 2019-03-09 16:38
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRRPRP2_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP2_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP2_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRP2_inertiaDJ_slag_vp1: pkin has to be [10x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRPRP2_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRRPRP2_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRRPRP2_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 16:35:08
% EndTime: 2019-03-09 16:35:59
% DurationCPUTime: 35.15s
% Computational Cost: add. (51851->1067), mult. (52325->1418), div. (0->0), fcn. (49290->10), ass. (0->540)
t463 = qJ(2) + qJ(3);
t449 = pkin(10) + t463;
t443 = cos(t449);
t467 = cos(qJ(5));
t469 = cos(qJ(1));
t666 = t467 * t469;
t464 = sin(qJ(5));
t466 = sin(qJ(1));
t669 = t464 * t466;
t393 = t443 * t669 + t666;
t667 = t466 * t467;
t668 = t464 * t469;
t394 = t443 * t667 - t668;
t442 = sin(t449);
t681 = t442 * t466;
t270 = Icges(7,5) * t394 + Icges(7,6) * t681 + Icges(7,3) * t393;
t276 = Icges(6,4) * t394 - Icges(6,2) * t393 + Icges(6,6) * t681;
t813 = t270 - t276;
t395 = t443 * t668 - t667;
t620 = t443 * t666;
t396 = t620 + t669;
t679 = t442 * t469;
t271 = Icges(7,5) * t396 + Icges(7,6) * t679 + Icges(7,3) * t395;
t277 = Icges(6,4) * t396 - Icges(6,2) * t395 + Icges(6,6) * t679;
t812 = t271 - t277;
t272 = Icges(6,5) * t394 - Icges(6,6) * t393 + Icges(6,3) * t681;
t274 = Icges(7,4) * t394 + Icges(7,2) * t681 + Icges(7,6) * t393;
t811 = t272 + t274;
t273 = Icges(6,5) * t396 - Icges(6,6) * t395 + Icges(6,3) * t679;
t275 = Icges(7,4) * t396 + Icges(7,2) * t679 + Icges(7,6) * t395;
t810 = t273 + t275;
t278 = Icges(7,1) * t394 + Icges(7,4) * t681 + Icges(7,5) * t393;
t280 = Icges(6,1) * t394 - Icges(6,4) * t393 + Icges(6,5) * t681;
t809 = t278 + t280;
t279 = Icges(7,1) * t396 + Icges(7,4) * t679 + Icges(7,5) * t395;
t281 = Icges(6,1) * t396 - Icges(6,4) * t395 + Icges(6,5) * t679;
t808 = t279 + t281;
t801 = rSges(7,1) + pkin(5);
t778 = rSges(7,3) + qJ(6);
t807 = t813 * t395 + t809 * t396 + t811 * t679;
t806 = t812 * t395 + t808 * t396 + t810 * t679;
t460 = qJD(2) + qJD(3);
t673 = t460 * t466;
t625 = t442 * t673;
t631 = qJD(5) * t467;
t632 = qJD(5) * t464;
t636 = qJD(1) * t469;
t637 = qJD(1) * t466;
t251 = -t464 * t625 - t469 * t632 - t467 * t637 + (t464 * t636 + t466 * t631) * t443;
t520 = (-qJD(5) * t443 + qJD(1)) * t464;
t582 = qJD(1) * t443 - qJD(5);
t672 = t460 * t467;
t252 = t582 * t666 + (-t442 * t672 + t520) * t466;
t805 = -qJD(6) * t393 - t778 * t251 - t252 * t801;
t804 = -t393 * t778 - t394 * t801;
t491 = t442 * t636 + t443 * t673;
t144 = Icges(7,5) * t252 + Icges(7,6) * t491 + Icges(7,3) * t251;
t146 = Icges(6,5) * t252 - Icges(6,6) * t251 + Icges(6,3) * t491;
t148 = Icges(7,4) * t252 + Icges(7,2) * t491 + Icges(7,6) * t251;
t150 = Icges(6,4) * t252 - Icges(6,2) * t251 + Icges(6,6) * t491;
t152 = Icges(7,1) * t252 + Icges(7,4) * t491 + Icges(7,5) * t251;
t154 = Icges(6,1) * t252 - Icges(6,4) * t251 + Icges(6,5) * t491;
t671 = t460 * t469;
t624 = t442 * t671;
t249 = qJD(1) * t393 - qJD(5) * t620 + t464 * t624 - t466 * t632;
t250 = t469 * t520 + (-t466 * t582 - t624) * t467;
t610 = t442 * t637;
t621 = t443 * t671;
t490 = -t610 + t621;
t800 = (t146 + t148) * t679 + t811 * t490 + (t152 + t154) * t396 + (t144 - t150) * t395 + t809 * t250 - t813 * t249;
t143 = Icges(7,5) * t250 + Icges(7,6) * t490 - Icges(7,3) * t249;
t145 = Icges(6,5) * t250 + Icges(6,6) * t249 + Icges(6,3) * t490;
t147 = Icges(7,4) * t250 + Icges(7,2) * t490 - Icges(7,6) * t249;
t149 = Icges(6,4) * t250 + Icges(6,2) * t249 + Icges(6,6) * t490;
t151 = Icges(7,1) * t250 + Icges(7,4) * t490 - Icges(7,5) * t249;
t153 = Icges(6,1) * t250 + Icges(6,4) * t249 + Icges(6,5) * t490;
t799 = (t145 + t147) * t679 + t810 * t490 + (t151 + t153) * t396 + (t143 - t149) * t395 + t808 * t250 - t812 * t249;
t699 = Icges(7,5) * t467;
t546 = Icges(7,3) * t464 + t699;
t678 = t443 * t460;
t700 = Icges(7,5) * t464;
t221 = t546 * t678 + (Icges(7,6) * t460 + (Icges(7,3) * t467 - t700) * qJD(5)) * t442;
t551 = Icges(7,4) * t467 + Icges(7,6) * t464;
t223 = t551 * t678 + (Icges(7,2) * t460 + (-Icges(7,4) * t464 + Icges(7,6) * t467) * qJD(5)) * t442;
t557 = Icges(7,1) * t467 + t700;
t225 = t557 * t678 + (Icges(7,4) * t460 + (-Icges(7,1) * t464 + t699) * qJD(5)) * t442;
t321 = -Icges(7,6) * t443 + t442 * t546;
t323 = -Icges(7,2) * t443 + t442 * t551;
t325 = -Icges(7,4) * t443 + t442 * t557;
t62 = t221 * t395 + t223 * t679 + t225 * t396 - t249 * t321 + t250 * t325 + t323 * t490;
t547 = Icges(6,5) * t467 - Icges(6,6) * t464;
t222 = t547 * t678 + (Icges(6,3) * t460 + (-Icges(6,5) * t464 - Icges(6,6) * t467) * qJD(5)) * t442;
t704 = Icges(6,4) * t467;
t552 = -Icges(6,2) * t464 + t704;
t705 = Icges(6,4) * t464;
t224 = t552 * t678 + (Icges(6,6) * t460 + (-Icges(6,2) * t467 - t705) * qJD(5)) * t442;
t558 = Icges(6,1) * t467 - t705;
t226 = t558 * t678 + (Icges(6,5) * t460 + (-Icges(6,1) * t464 - t704) * qJD(5)) * t442;
t322 = -Icges(6,3) * t443 + t442 * t547;
t324 = -Icges(6,6) * t443 + t442 * t552;
t326 = -Icges(6,5) * t443 + t442 * t558;
t63 = t222 * t679 - t224 * t395 + t226 * t396 + t249 * t324 + t250 * t326 + t322 * t490;
t798 = -t62 - t63;
t64 = t221 * t393 + t223 * t681 + t225 * t394 + t251 * t321 + t252 * t325 + t323 * t491;
t65 = t222 * t681 - t224 * t393 + t226 * t394 - t251 * t324 + t252 * t326 + t322 * t491;
t797 = -t64 - t65;
t168 = t321 * t393 + t323 * t681 + t325 * t394;
t169 = t322 * t681 - t324 * t393 + t326 * t394;
t796 = t168 + t169;
t170 = t321 * t395 + t323 * t679 + t325 * t396;
t171 = t322 * t679 - t324 * t395 + t326 * t396;
t795 = t170 + t171;
t794 = t322 + t323;
t548 = Icges(5,5) * t443 - Icges(5,6) * t442;
t340 = Icges(5,3) * t466 + t469 * t548;
t452 = sin(t463);
t453 = cos(t463);
t549 = Icges(4,5) * t453 - Icges(4,6) * t452;
t361 = Icges(4,3) * t466 + t469 * t549;
t793 = t340 + t361;
t397 = Icges(5,5) * t442 + Icges(5,6) * t443;
t409 = Icges(4,5) * t452 + Icges(4,6) * t453;
t767 = t397 + t409;
t707 = Icges(5,4) * t442;
t398 = Icges(5,2) * t443 + t707;
t706 = Icges(5,4) * t443;
t399 = Icges(5,1) * t442 + t706;
t709 = Icges(4,4) * t452;
t410 = Icges(4,2) * t453 + t709;
t708 = Icges(4,4) * t453;
t411 = Icges(4,1) * t452 + t708;
t792 = t398 * t442 - t399 * t443 + t410 * t452 - t411 * t453;
t791 = t466 * t807 + t469 * t806;
t764 = t466 * t806 - t469 * t807;
t111 = t272 * t681 - t276 * t393 + t280 * t394;
t112 = t273 * t681 - t277 * t393 + t281 * t394;
t542 = t111 * t466 + t112 * t469;
t109 = t270 * t393 + t274 * t681 + t278 * t394;
t110 = t271 * t393 + t275 * t681 + t279 * t394;
t544 = t109 * t466 + t110 * t469;
t790 = t542 + t544;
t763 = (-t109 - t111) * t469 + (t110 + t112) * t466;
t789 = t778 * t464 + t467 * t801;
t788 = rSges(7,2) * t621 + qJD(6) * t395 - t778 * t249 + t250 * t801;
t339 = -Icges(5,3) * t469 + t466 * t548;
t360 = -Icges(4,3) * t469 + t466 * t549;
t553 = -Icges(5,2) * t442 + t706;
t341 = -Icges(5,6) * t469 + t466 * t553;
t559 = Icges(5,1) * t443 - t707;
t343 = -Icges(5,5) * t469 + t466 * t559;
t530 = t341 * t442 - t343 * t443;
t753 = t469 * t530;
t554 = -Icges(4,2) * t452 + t708;
t362 = -Icges(4,6) * t469 + t466 * t554;
t560 = Icges(4,1) * t453 - t709;
t364 = -Icges(4,5) * t469 + t466 * t560;
t528 = t362 * t452 - t364 * t453;
t754 = t469 * t528;
t787 = t753 + t754 + (-t339 - t360) * t466;
t455 = t466 * rSges(4,3);
t722 = rSges(4,1) * t453;
t569 = -rSges(4,2) * t452 + t722;
t369 = t469 * t569 + t455;
t657 = rSges(7,2) * t679 + t778 * t395 + t396 * t801;
t658 = rSges(7,2) * t681 - t804;
t786 = -t658 * t466 - t657 * t469;
t536 = t271 * t464 + t279 * t467;
t131 = -t275 * t443 + t442 * t536;
t534 = -t277 * t464 + t281 * t467;
t133 = -t273 * t443 + t442 * t534;
t663 = t131 + t133;
t537 = t270 * t464 + t278 * t467;
t130 = -t274 * t443 + t442 * t537;
t535 = -t276 * t464 + t280 * t467;
t132 = -t272 * t443 + t442 * t535;
t664 = t130 + t132;
t785 = t466 * t663 - t469 * t664;
t784 = t466 * t664 + t469 * t663;
t783 = (t460 * t791 + t798) * t443 + (-qJD(1) * t764 + t460 * t795 + t466 * t800 + t469 * t799) * t442;
t33 = t144 * t393 + t148 * t681 + t152 * t394 + t251 * t270 + t252 * t278 + t274 * t491;
t34 = t143 * t393 + t147 * t681 + t151 * t394 + t251 * t271 + t252 * t279 + t275 * t491;
t35 = t146 * t681 - t150 * t393 + t154 * t394 - t251 * t276 + t252 * t280 + t272 * t491;
t36 = t145 * t681 - t149 * t393 + t153 * t394 - t251 * t277 + t252 * t281 + t273 * t491;
t782 = (t460 * t790 + t797) * t443 + ((t34 + t36) * t469 + (t33 + t35) * t466 + t796 * t460 - t763 * qJD(1)) * t442;
t781 = qJD(1) * t791 + t466 * t799 - t469 * t800;
t17 = qJD(1) * t544 - t33 * t469 + t34 * t466;
t18 = qJD(1) * t542 - t35 * t469 + t36 * t466;
t780 = t17 + t18;
t726 = t442 * t790 - t443 * t796;
t779 = t442 * t791 - t443 * t795;
t770 = -rSges(7,2) * t610 + t788;
t661 = rSges(7,2) * t491 - t805;
t769 = t794 * t443 + ((-t325 - t326) * t467 + (-t321 + t324) * t464) * t442;
t363 = Icges(4,6) * t466 + t469 * t554;
t365 = Icges(4,5) * t466 + t469 * t560;
t527 = t363 * t452 - t365 * t453;
t342 = Icges(5,6) * t466 + t469 * t553;
t344 = Icges(5,5) * t466 + t469 * t559;
t529 = t342 * t442 - t344 * t443;
t768 = (-t527 - t529) * t469 + t793 * t466;
t653 = -rSges(7,2) * t443 + t442 * t789;
t358 = t553 * t460;
t359 = t559 * t460;
t376 = t554 * t460;
t377 = t560 * t460;
t684 = t411 * t460;
t685 = t410 * t460;
t686 = t399 * t460;
t687 = t398 * t460;
t766 = (t377 - t685) * t453 + (-t376 - t684) * t452 + (t359 - t687) * t443 + (-t358 - t686) * t442 + t767 * qJD(1);
t674 = t460 * t464;
t623 = t443 * t674;
t750 = -t442 * t631 - t623;
t470 = -pkin(8) - pkin(7);
t465 = sin(qJ(2));
t634 = qJD(2) * t465;
t627 = pkin(2) * t634;
t762 = qJD(1) * t470 + t627;
t761 = (t548 + t549) * t460 + t792 * qJD(1);
t607 = t442 * t632;
t622 = t443 * t672;
t682 = t442 * t464;
t683 = t442 * t460;
t760 = t326 * t622 + t221 * t682 - t443 * t223 + (-t607 + t622) * t325 - t750 * t321 + t794 * t683 + (t226 + t225) * t442 * t467;
t400 = rSges(5,1) * t442 + rSges(5,2) * t443;
t508 = t400 * t460;
t468 = cos(qJ(2));
t430 = rSges(3,1) * t465 + rSges(3,2) * t468;
t506 = qJD(2) * t430;
t759 = t466 * t506;
t710 = Icges(3,4) * t468;
t556 = -Icges(3,2) * t465 + t710;
t387 = Icges(3,6) * t466 + t469 * t556;
t711 = Icges(3,4) * t465;
t562 = Icges(3,1) * t468 - t711;
t389 = Icges(3,5) * t466 + t469 * t562;
t525 = t387 * t465 - t389 * t468;
t758 = t466 * t525;
t757 = t466 * t527;
t756 = t466 * t529;
t386 = -Icges(3,6) * t469 + t466 * t556;
t388 = -Icges(3,5) * t469 + t466 * t562;
t526 = t386 * t465 - t388 * t468;
t755 = t469 * t526;
t445 = t468 * pkin(2) + pkin(1);
t728 = pkin(1) - t445;
t752 = t728 * t466;
t566 = -rSges(6,1) * t394 + rSges(6,2) * t393;
t283 = rSges(6,3) * t681 - t566;
t285 = t396 * rSges(6,1) - t395 * rSges(6,2) + rSges(6,3) * t679;
t751 = -t466 * t283 - t469 * t285;
t749 = qJD(1) * t339;
t748 = qJD(1) * t360;
t550 = Icges(3,5) * t468 - Icges(3,6) * t465;
t384 = -Icges(3,3) * t469 + t466 * t550;
t459 = -qJ(4) + t470;
t642 = t459 - t470;
t418 = pkin(3) * t453 + t445;
t648 = t418 - t445;
t314 = t466 * t648 + t469 * t642;
t745 = 2 * m(3);
t744 = 2 * m(4);
t743 = 2 * m(5);
t742 = 2 * m(6);
t741 = 2 * m(7);
t461 = t466 ^ 2;
t462 = t469 ^ 2;
t739 = t466 / 0.2e1;
t738 = -t469 / 0.2e1;
t736 = -rSges(7,2) - pkin(9);
t735 = -rSges(6,3) - pkin(9);
t734 = m(3) * t430;
t718 = rSges(4,2) * t453;
t413 = rSges(4,1) * t452 + t718;
t733 = m(4) * t413;
t732 = pkin(2) * t465;
t731 = pkin(3) * t452;
t730 = pkin(4) * t443;
t729 = t466 * pkin(7);
t458 = t469 * pkin(7);
t727 = -pkin(7) - t470;
t670 = t464 * t224;
t724 = (-t324 * t674 - t222) * t443 + (-t670 + (-t324 * t467 - t326 * t464) * qJD(5)) * t442 + t760;
t723 = rSges(3,1) * t468;
t721 = rSges(5,1) * t443;
t720 = rSges(3,2) * t465;
t717 = rSges(3,3) * t469;
t42 = (t460 * t537 - t148) * t443 + (t144 * t464 + t152 * t467 + t274 * t460 + (t270 * t467 - t278 * t464) * qJD(5)) * t442;
t716 = t42 * t469;
t43 = (t460 * t536 - t147) * t443 + (t143 * t464 + t151 * t467 + t275 * t460 + (t271 * t467 - t279 * t464) * qJD(5)) * t442;
t715 = t43 * t466;
t44 = (t460 * t535 - t146) * t443 + (-t150 * t464 + t154 * t467 + t272 * t460 + (-t276 * t467 - t280 * t464) * qJD(5)) * t442;
t714 = t44 * t469;
t45 = (t460 * t534 - t145) * t443 + (-t149 * t464 + t153 * t467 + t273 * t460 + (-t277 * t467 - t281 * t464) * qJD(5)) * t442;
t713 = t45 * t466;
t456 = t466 * rSges(3,3);
t454 = t466 * rSges(5,3);
t382 = t569 * t460;
t692 = t382 * t466;
t691 = t386 * t468;
t690 = t387 * t468;
t689 = t388 * t465;
t688 = t389 * t465;
t677 = t443 * t469;
t676 = t452 * t460;
t675 = t453 * t460;
t665 = t469 * t459;
t660 = t769 * t683;
t659 = t789 * t678 + (rSges(7,2) * t460 + qJD(6) * t464 + (-t464 * t801 + t467 * t778) * qJD(5)) * t442;
t404 = t469 * t418;
t431 = t469 * t445;
t315 = -t466 * t642 + t404 - t431;
t656 = t466 * t314 + t469 * t315;
t349 = rSges(5,1) * t677 - rSges(5,2) * t679 + t454;
t655 = -t315 - t349;
t425 = pkin(4) * t677;
t372 = pkin(9) * t679 + t425;
t654 = -t315 - t372;
t355 = t469 * t470 + t458 - t752;
t356 = -t469 * pkin(1) + t727 * t466 + t431;
t652 = t466 * t355 + t469 * t356;
t368 = -t469 * rSges(4,3) + t466 * t569;
t263 = t466 * t368 + t469 * t369;
t609 = t452 * t637;
t426 = pkin(3) * t609;
t651 = t400 * t637 + t426;
t401 = pkin(4) * t442 - pkin(9) * t443;
t650 = t401 * t637 + t426;
t402 = -pkin(3) * t676 - t627;
t649 = qJD(4) * t466 + t469 * t402;
t647 = rSges(5,2) * t610 + rSges(5,3) * t636;
t646 = rSges(4,2) * t609 + rSges(4,3) * t636;
t645 = qJD(4) * t469 + t459 * t637;
t644 = t762 * t466;
t643 = t469 * t723 + t456;
t641 = t461 + t462;
t640 = qJD(1) * t340;
t639 = qJD(1) * t361;
t385 = Icges(3,3) * t466 + t469 * t550;
t638 = qJD(1) * t385;
t633 = qJD(2) * t468;
t629 = pkin(3) * t675;
t628 = t469 * t720;
t626 = pkin(2) * t633;
t583 = t469 * t627;
t619 = t466 * (t402 * t466 + t636 * t648 + t644 - t645) + t469 * (-qJD(1) * t314 + t583 + t649) + t314 * t636;
t617 = t250 * rSges(6,1) + t249 * rSges(6,2) + rSges(6,3) * t621;
t507 = t413 * t460;
t615 = t466 * (qJD(1) * t369 - t466 * t507) + t469 * (-t671 * t718 + (-t452 * t671 - t453 * t637) * rSges(4,1) + t646) + t368 * t636;
t614 = -t285 + t654;
t613 = t466 * ((-t728 * t469 - t729) * qJD(1) - t644) + t469 * (-t583 + (t727 * t469 + t752) * qJD(1)) + t355 * t636;
t565 = rSges(6,1) * t467 - rSges(6,2) * t464;
t328 = -rSges(6,3) * t443 + t442 * t565;
t319 = t328 * t637;
t612 = t319 + t650;
t407 = pkin(4) * t625;
t611 = t407 + t645;
t608 = t465 * t637;
t601 = t637 / 0.2e1;
t600 = t636 / 0.2e1;
t599 = -t413 - t732;
t598 = -t400 - t731;
t597 = -t401 - t731;
t596 = -t418 - t730;
t595 = t466 * t653;
t594 = t469 * t653;
t243 = -qJD(1) * t341 - t469 * t687;
t593 = t344 * t460 + t243;
t244 = qJD(1) * t342 - t466 * t687;
t592 = t343 * t460 + t244;
t245 = -qJD(1) * t343 - t469 * t686;
t591 = -t342 * t460 + t245;
t246 = qJD(1) * t344 - t466 * t686;
t590 = t341 * t460 - t246;
t266 = -qJD(1) * t362 - t469 * t685;
t589 = t365 * t460 + t266;
t267 = qJD(1) * t363 - t466 * t685;
t588 = t364 * t460 + t267;
t268 = -qJD(1) * t364 - t469 * t684;
t587 = -t363 * t460 + t268;
t269 = qJD(1) * t365 - t466 * t684;
t586 = t362 * t460 - t269;
t585 = -t466 * t459 + t404;
t584 = qJD(1) * t653;
t581 = t654 - t657;
t568 = -rSges(5,2) * t442 + t721;
t348 = -rSges(5,3) * t469 + t466 * t568;
t165 = t466 * t348 + t469 * t349 + t656;
t571 = pkin(9) * t442 + t730;
t371 = t571 * t466;
t580 = t466 * t371 + t469 * t372 + t656;
t579 = t637 * t653 + t650;
t367 = t571 * t460;
t574 = -t367 - t629;
t573 = -t328 + t597;
t572 = -t731 - t732;
t570 = -t720 + t723;
t567 = rSges(6,1) * t252 - rSges(6,2) * t251;
t561 = Icges(3,1) * t465 + t710;
t555 = Icges(3,2) * t468 + t711;
t533 = t283 * t469 - t285 * t466;
t230 = t565 * t678 + (rSges(6,3) * t460 + (-rSges(6,1) * t464 - rSges(6,2) * t467) * qJD(5)) * t442;
t522 = -t230 + t574;
t521 = t597 - t653;
t519 = -pkin(1) - t570;
t518 = -t400 + t572;
t517 = -t401 + t572;
t516 = t585 + t372;
t233 = t573 * t469;
t515 = -t445 - t569;
t514 = -t418 - t568;
t492 = -t443 * t637 - t624;
t513 = t466 * (-t466 * t508 + (t469 * t568 + t454) * qJD(1)) + t469 * (rSges(5,1) * t492 - rSges(5,2) * t621 + t647) + t348 * t636 + t619;
t408 = pkin(9) * t621;
t512 = t466 * (pkin(9) * t491 + qJD(1) * t425 - t407) + t469 * (pkin(4) * t492 - pkin(9) * t610 + t408) + t371 * t636 + t619;
t101 = t580 - t751;
t511 = t132 / 0.2e1 + t130 / 0.2e1 + t168 / 0.2e1 + t169 / 0.2e1;
t510 = t170 / 0.2e1 + t171 / 0.2e1 + t133 / 0.2e1 + t131 / 0.2e1;
t509 = t574 - t659;
t505 = -t328 + t517;
t500 = t460 * t409;
t499 = t460 * t397;
t498 = -t626 - t629;
t497 = qJD(2) * t561;
t496 = qJD(2) * t555;
t495 = qJD(2) * (-Icges(3,5) * t465 - Icges(3,6) * t468);
t199 = t521 * t469;
t494 = t736 * t442 + t596;
t493 = t735 * t442 + t596;
t317 = t518 * t469;
t488 = -pkin(4) * t624 + t408 + t649;
t487 = t517 - t653;
t366 = t568 * t460;
t486 = -t366 + t498;
t485 = -t367 + t498;
t92 = t580 - t786;
t218 = t505 * t469;
t484 = -t657 * t466 + t658 * t469;
t483 = -t230 + t485;
t156 = -rSges(6,3) * t610 + t617;
t158 = rSges(6,3) * t491 + t567;
t482 = t469 * t156 + t466 * t158 + t283 * t636 + t512;
t191 = t487 * t469;
t481 = t485 - t659;
t480 = rSges(3,2) * t608 + rSges(3,3) * t636 - t469 * t506;
t182 = -t339 * t469 - t466 * t530;
t183 = -t340 * t469 - t756;
t192 = -t360 * t469 - t466 * t528;
t193 = -t361 * t469 - t757;
t241 = -t469 * t499 - t749;
t242 = -t466 * t499 + t640;
t264 = -t469 * t500 - t748;
t265 = -t466 * t500 + t639;
t479 = t763 * t637 + t764 * t636 + ((-t182 - t192) * t637 + t787 * t636) * t469 + (((t241 + t264) * t466 + (t756 + t757 - t787) * qJD(1)) * t466 + (t183 + t193) * t637 + t768 * t636 + ((-t593 * t442 + t591 * t443 - t589 * t452 + t587 * t453 - t242 - t265) * t466 + (t244 * t442 - t246 * t443 + t267 * t452 - t269 * t453 + t341 * t678 + t343 * t683 + t362 * t675 + t364 * t676 - t748 - t749) * t469 + ((-t530 - t528 + t793) * t466 + t768) * qJD(1)) * t469 + t781) * t466;
t478 = t466 * t494 - t665;
t477 = t466 * t493 - t665;
t476 = t466 * t661 + t469 * t770 + t636 * t658 + t512;
t25 = (t469 * t242 + (t183 + t753) * qJD(1)) * t469 + (t182 * qJD(1) + (-t243 * t442 + t245 * t443 - t342 * t678 - t344 * t683 + t640) * t466 + (-t241 + t590 * t443 + t592 * t442 + (-t339 - t529) * qJD(1)) * t469) * t466;
t28 = (t469 * t265 + (t193 + t754) * qJD(1)) * t469 + (t192 * qJD(1) + (-t266 * t452 + t268 * t453 - t363 * t675 - t365 * t676 + t639) * t466 + (-t264 + t586 * t453 + t588 * t452 + (-t360 - t527) * qJD(1)) * t469) * t466;
t473 = t479 + (-t28 - t25 - t780) * t469;
t472 = -(qJD(1) * t784 + t713 - t714 + t715 - t716) * t443 / 0.2e1 + t783 * t739 + t782 * t738 + t785 * t683 / 0.2e1 + t780 * t681 / 0.2e1 + t781 * t679 / 0.2e1 + t726 * t601 - t764 * t610 / 0.2e1 + (t466 * t763 + t469 * t764) * t678 / 0.2e1 + (t442 * t763 + t779) * t600;
t471 = -t716 / 0.2e1 + t713 / 0.2e1 - t714 / 0.2e1 + t715 / 0.2e1 + (t442 * t591 + t443 * t593 + t452 * t587 + t453 * t589 + t466 * t761 + t469 * t766 - t798) * t739 + (-t442 * t590 + t443 * t592 - t452 * t586 + t453 * t588 + t466 * t766 - t469 * t761 - t797) * t738 + (t341 * t443 + t343 * t442 + t362 * t453 + t364 * t452 - t466 * t792 - t469 * t767 + t664 + t796) * t601 + (t342 * t443 + t344 * t442 + t363 * t453 + t365 * t452 + t466 * t767 - t469 * t792 + t663 + t795) * t600;
t436 = pkin(2) * t608;
t417 = t570 * qJD(2);
t392 = -t628 + t643;
t391 = t466 * t570 - t717;
t354 = t599 * t469;
t353 = t599 * t466;
t336 = t729 + (pkin(1) - t720) * t469 + t643;
t335 = t466 * t519 + t458 + t717;
t332 = t598 * t469;
t331 = t598 * t466;
t316 = t518 * t466;
t313 = -t466 * t470 + t369 + t431;
t312 = (rSges(4,3) - t470) * t469 + t515 * t466;
t304 = t466 * t495 + t638;
t303 = -qJD(1) * t384 + t469 * t495;
t289 = t349 + t585;
t288 = (rSges(5,3) - t459) * t469 + t514 * t466;
t287 = t759 + ((-rSges(3,3) - pkin(7)) * t466 + t519 * t469) * qJD(1);
t286 = (t458 + (-pkin(1) - t723) * t466) * qJD(1) + t480;
t248 = -t413 * t636 - t692 + (-t465 * t636 - t466 * t633) * pkin(2);
t247 = t413 * t637 + t436 + (-t382 - t626) * t469;
t232 = t573 * t466;
t217 = t505 * t466;
t216 = -t400 * t636 - t366 * t466 + (-t452 * t636 - t453 * t673) * pkin(3);
t215 = (-t366 - t629) * t469 + t651;
t209 = t385 * t466 - t469 * t525;
t208 = t384 * t466 - t755;
t207 = -t385 * t469 - t758;
t206 = -t384 * t469 - t466 * t526;
t205 = t413 * t673 + (t469 * t515 - t455) * qJD(1) + t644;
t204 = (-t445 - t722) * t637 + (-t507 - t762) * t469 + t646;
t198 = t521 * t466;
t197 = qJD(1) * t317 + t466 * t486;
t196 = t469 * t486 + t436 + t651;
t190 = t487 * t466;
t189 = t516 + t285;
t188 = t477 + t566;
t187 = -t285 * t443 - t328 * t679;
t186 = t283 * t443 + t328 * t681;
t181 = (-t402 + t508) * t466 + (t469 * t514 - t454) * qJD(1) + t645;
t180 = -t469 * t508 + (-t665 + (-t418 - t721) * t466) * qJD(1) + t647 + t649;
t179 = t263 + t652;
t176 = t533 * t442;
t173 = t516 + t657;
t172 = t478 + t804;
t138 = -t369 * t637 + t615;
t137 = qJD(1) * t233 + t466 * t522;
t136 = t469 * t522 + t612;
t135 = -t442 * t594 - t443 * t657;
t134 = t442 * t595 + t658 * t443;
t127 = qJD(1) * t218 + t466 * t483;
t126 = t469 * t483 + t436 + t612;
t119 = t165 + t652;
t104 = t484 * t442;
t100 = (t735 * t678 - t402) * t466 + t493 * t636 - t567 + t611;
t99 = qJD(1) * t477 + t488 + t617;
t98 = qJD(1) * t199 + t466 * t509;
t97 = t469 * t509 + t579;
t96 = qJD(1) * t191 + t466 * t481;
t95 = t469 * t481 + t436 + t579;
t94 = t101 + t652;
t93 = (-t356 - t369) * t637 + t613 + t615;
t91 = (t328 * t673 + t158) * t443 + (t230 * t466 - t283 * t460 + t328 * t636) * t442;
t90 = (-t328 * t671 - t156) * t443 + (-t230 * t469 + t285 * t460 + t319) * t442;
t89 = (t736 * t678 - t402) * t466 + t494 * t636 + t611 + t805;
t88 = qJD(1) * t478 + t488 + t788;
t87 = t92 + t652;
t76 = t637 * t655 + t513;
t57 = t533 * t678 + (qJD(1) * t751 - t156 * t466 + t158 * t469) * t442;
t56 = (-t356 + t655) * t637 + t513 + t613;
t47 = (t460 * t595 + t661) * t443 + (-t658 * t460 + t659 * t466 + t469 * t584) * t442;
t46 = (-t460 * t594 - t770) * t443 + (t657 * t460 + t466 * t584 - t659 * t469) * t442;
t37 = t614 * t637 + t482;
t26 = (-t356 + t614) * t637 + t482 + t613;
t23 = t484 * t678 + (qJD(1) * t786 - t466 * t770 + t661 * t469) * t442;
t22 = t581 * t637 + t476;
t21 = (-t356 + t581) * t637 + t476 + t613;
t1 = [t453 * t376 + t452 * t377 + t411 * t675 - t410 * t676 + t399 * t678 - t398 * t683 - t326 * t607 + (t286 * t336 + t287 * t335) * t745 + (t204 * t313 + t205 * t312) * t744 + (t180 * t289 + t181 * t288) * t743 + (t100 * t188 + t189 * t99) * t742 + (t172 * t89 + t173 * t88) * t741 + (-t555 + t562) * t634 + (t556 + t561) * t633 + (t358 - t222) * t443 + (t359 - t670) * t442 + t750 * t324 + t760; (t461 / 0.2e1 + t462 / 0.2e1) * t550 * qJD(2) + t471 + (-qJD(2) * t526 + (qJD(1) * t387 - t466 * t496) * t468 + (qJD(1) * t389 - t466 * t497) * t465) * t738 + (-qJD(2) * t525 + (-qJD(1) * t386 - t469 * t496) * t468 + (-qJD(1) * t388 - t469 * t497) * t465) * t739 + m(3) * ((-t286 * t466 - t287 * t469) * t430 + (-t335 * t469 - t336 * t466) * t417) + m(4) * (t204 * t353 + t205 * t354 + t247 * t312 + t248 * t313) + m(5) * (t180 * t316 + t181 * t317 + t196 * t288 + t197 * t289) + m(6) * (t100 * t218 + t126 * t188 + t127 * t189 + t217 * t99) + m(7) * (t172 * t95 + t173 * t96 + t190 * t88 + t191 * t89) + ((t690 / 0.2e1 + t688 / 0.2e1 - t336 * t734) * t469 + (t335 * t734 + t691 / 0.2e1 + t689 / 0.2e1) * t466) * qJD(1); t479 - t469 * t25 - t469 * t17 - t469 * t18 - t469 * t28 + (-t206 * t469 + t207 * t466) * t637 + (-t208 * t469 + t209 * t466) * t636 + t466 * ((t466 * t303 + (t208 + t758) * qJD(1)) * t466 + (t209 * qJD(1) + (t386 * t633 + t388 * t634) * t469 + (-t304 + (-t688 - t690) * qJD(2) + (t385 - t526) * qJD(1)) * t466) * t469) - t469 * ((t469 * t304 + (t207 + t755) * qJD(1)) * t469 + (t206 * qJD(1) + (-t387 * t633 - t389 * t634 + t638) * t466 + (-t303 + (t689 + t691) * qJD(2) - t525 * qJD(1)) * t469) * t466) + ((t391 * t466 + t392 * t469) * ((qJD(1) * t391 + t480) * t469 + (-t759 + (-t392 - t628 + t456) * qJD(1)) * t466) + t641 * t430 * t417) * t745 + (t179 * t93 + t247 * t354 + t248 * t353) * t744 + (t119 * t56 + t196 * t317 + t197 * t316) * t743 + (t126 * t218 + t127 * t217 + t26 * t94) * t742 + (t190 * t96 + t191 * t95 + t21 * t87) * t741; t471 + m(5) * (t180 * t331 + t181 * t332 + t215 * t288 + t216 * t289) + m(6) * (t100 * t233 + t136 * t188 + t137 * t189 + t232 * t99) + m(7) * (t172 * t97 + t173 * t98 + t198 * t88 + t199 * t89) + m(4) * (-t312 * t469 - t313 * t466) * t382 + (-t204 * t466 - t205 * t469 + (t312 * t466 - t313 * t469) * qJD(1)) * t733; t473 + m(4) * (-t354 * t382 * t469 + t138 * t179 + t263 * t93 - t353 * t692) + (-t247 * t469 - t248 * t466 + (-t353 * t469 + t354 * t466) * qJD(1)) * t733 + m(7) * (t190 * t98 + t191 * t97 + t198 * t96 + t199 * t95 + t21 * t92 + t22 * t87) + m(6) * (t101 * t26 + t126 * t233 + t127 * t232 + t136 * t218 + t137 * t217 + t37 * t94) + m(5) * (t119 * t76 + t165 * t56 + t196 * t332 + t197 * t331 + t215 * t317 + t216 * t316); t473 + (t382 * t413 * t641 + t138 * t263) * t744 + (t198 * t98 + t199 * t97 + t22 * t92) * t741 + (t101 * t37 + t136 * t233 + t137 * t232) * t742 + (t165 * t76 + t215 * t332 + t216 * t331) * t743; m(7) * (t466 * t89 - t469 * t88 + (t172 * t469 + t173 * t466) * qJD(1)) + m(6) * (t100 * t466 - t469 * t99 + (t188 * t469 + t189 * t466) * qJD(1)) + m(5) * (-t180 * t469 + t181 * t466 + (t288 * t469 + t289 * t466) * qJD(1)); m(7) * (t466 * t95 - t469 * t96 + (t190 * t466 + t191 * t469) * qJD(1)) + m(6) * (t126 * t466 - t127 * t469 + (t217 * t466 + t218 * t469) * qJD(1)) + m(5) * (t196 * t466 - t197 * t469 + (t316 * t466 + t317 * t469) * qJD(1)); m(7) * (t466 * t97 - t469 * t98 + (t198 * t466 + t199 * t469) * qJD(1)) + m(6) * (t136 * t466 - t137 * t469 + (t232 * t466 + t233 * t469) * qJD(1)) + m(5) * (t215 * t466 - t216 * t469 + (t331 * t466 + t332 * t469) * qJD(1)); 0; m(6) * (t100 * t186 + t187 * t99 + t188 * t91 + t189 * t90) + m(7) * (t134 * t89 + t135 * t88 + t172 * t47 + t173 * t46) + ((t466 * t511 + t469 * t510) * t460 - t724) * t443 + ((t45 / 0.2e1 + t43 / 0.2e1 + t62 / 0.2e1 + t63 / 0.2e1) * t469 + (t44 / 0.2e1 + t42 / 0.2e1 + t64 / 0.2e1 + t65 / 0.2e1) * t466 + (-t466 * t510 + t469 * t511) * qJD(1)) * t442 - t660; t472 + m(6) * (t126 * t186 + t127 * t187 + t176 * t26 + t217 * t90 + t218 * t91 + t57 * t94) + m(7) * (t104 * t21 + t134 * t95 + t135 * t96 + t190 * t46 + t191 * t47 + t23 * t87); t472 + m(6) * (t101 * t57 + t136 * t186 + t137 * t187 + t176 * t37 + t232 * t90 + t233 * t91) + m(7) * (t104 * t22 + t134 * t97 + t135 * t98 + t198 * t46 + t199 * t47 + t23 * t92); m(6) * (t466 * t91 - t469 * t90 + (t186 * t469 + t187 * t466) * qJD(1)) + m(7) * (-t46 * t469 + t466 * t47 + (t134 * t469 + t135 * t466) * qJD(1)); (t104 * t23 + t134 * t47 + t135 * t46) * t741 + (t176 * t57 + t186 * t91 + t187 * t90) * t742 + (t724 * t443 + ((-t443 * t663 + t779) * t469 + (-t443 * t664 + t726) * t466) * t460 + t660) * t443 + (t783 * t469 + t782 * t466 + t784 * t683 + ((-t43 - t45) * t469 + (-t42 - t44) * t466 + t769 * t460) * t443 + (t443 * t785 - t466 * t779 + t726 * t469) * qJD(1)) * t442; m(7) * (-t172 * t249 + t173 * t251 + t393 * t88 + t395 * t89); m(7) * (t87 * t623 + t190 * t251 - t191 * t249 + t393 * t96 + t395 * t95 + (t21 * t464 + t631 * t87) * t442); m(7) * (t92 * t623 + t198 * t251 - t199 * t249 + t393 * t98 + t395 * t97 + (t22 * t464 + t631 * t92) * t442); m(7) * (-t249 * t466 - t251 * t469 + (t393 * t466 + t395 * t469) * qJD(1)); m(7) * (-t104 * t750 - t134 * t249 + t135 * t251 + t23 * t682 + t393 * t46 + t395 * t47); (-t249 * t395 + t251 * t393 - t682 * t750) * t741;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;
