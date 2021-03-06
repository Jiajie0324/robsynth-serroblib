% Calculate vector of inverse dynamics joint torques for
% S6RPPRPR5
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6,theta5]';
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
% Datum: 2019-03-09 01:49
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau = S6RPPRPR5_invdynJ_fixb_slag_vp1(qJ, qJD, qJDD, g, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR5_invdynJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR5_invdynJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPPRPR5_invdynJ_fixb_slag_vp1: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPPRPR5_invdynJ_fixb_slag_vp1: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRPR5_invdynJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRPR5_invdynJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPPRPR5_invdynJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPPRPR5_invdynJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From invdyn_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:48:32
% EndTime: 2019-03-09 01:49:20
% DurationCPUTime: 43.89s
% Computational Cost: add. (16975->1176), mult. (30580->1473), div. (0->0), fcn. (27768->8), ass. (0->539)
t441 = sin(pkin(9));
t442 = cos(pkin(9));
t447 = cos(qJ(1));
t660 = t447 * t442;
t444 = sin(qJ(4));
t445 = sin(qJ(1));
t668 = t444 * t445;
t296 = t441 * t668 - t660;
t670 = t441 * t447;
t297 = t442 * t668 + t670;
t446 = cos(qJ(4));
t665 = t445 * t446;
t162 = -Icges(6,5) * t297 + Icges(6,6) * t296 + Icges(6,3) * t665;
t690 = Icges(5,4) * t444;
t523 = Icges(5,2) * t446 + t690;
t272 = Icges(5,6) * t447 + t445 * t523;
t689 = Icges(5,4) * t446;
t526 = Icges(5,1) * t444 + t689;
t274 = Icges(5,5) * t447 + t445 * t526;
t662 = t446 * t447;
t667 = t444 * t447;
t165 = -Icges(6,4) * t297 + Icges(6,2) * t296 + Icges(6,6) * t665;
t168 = -Icges(6,1) * t297 + Icges(6,4) * t296 + Icges(6,5) * t665;
t298 = -t441 * t667 - t442 * t445;
t671 = t441 * t445;
t299 = t444 * t660 - t671;
t770 = -t165 * t298 - t168 * t299;
t798 = t274 * t667 + t770 + (t162 + t272) * t662;
t512 = t165 * t296 - t168 * t297;
t506 = t272 * t446 + t274 * t444;
t520 = Icges(5,5) * t444 + Icges(5,6) * t446;
t270 = Icges(5,3) * t447 + t445 * t520;
t672 = t270 * t447;
t97 = t445 * t506 + t672;
t767 = t162 * t665 + t512 + t97;
t163 = Icges(6,5) * t299 + Icges(6,6) * t298 - Icges(6,3) * t662;
t166 = Icges(6,4) * t299 + Icges(6,2) * t298 - Icges(6,6) * t662;
t169 = Icges(6,1) * t299 + Icges(6,4) * t298 - Icges(6,5) * t662;
t655 = -t296 * t166 + t297 * t169;
t53 = -t163 * t665 + t655;
t271 = -Icges(5,3) * t445 + t447 * t520;
t243 = t447 * t271;
t273 = -Icges(5,6) * t445 + t447 * t523;
t390 = Icges(5,4) * t662;
t685 = Icges(5,5) * t445;
t275 = Icges(5,1) * t667 + t390 - t685;
t98 = t273 * t665 + t275 * t668 + t243;
t766 = t53 + t98;
t673 = t270 * t445;
t765 = -t673 + t798;
t642 = t273 * t662 + t275 * t667;
t100 = -t271 * t445 + t642;
t654 = t298 * t166 + t299 * t169;
t764 = -t163 * t662 + t100 + t654;
t519 = Icges(6,5) * t442 - Icges(6,6) * t441;
t257 = Icges(6,3) * t444 + t446 * t519;
t522 = Icges(6,4) * t442 - Icges(6,2) * t441;
t259 = Icges(6,6) * t444 + t446 * t522;
t525 = Icges(6,1) * t442 - Icges(6,4) * t441;
t261 = Icges(6,5) * t444 + t446 * t525;
t345 = Icges(5,5) * t446 - Icges(5,6) * t444;
t303 = t345 * t445;
t347 = -Icges(5,2) * t444 + t689;
t349 = Icges(5,1) * t446 - t690;
t503 = t347 * t446 + t349 * t444;
t782 = -t257 * t662 + t259 * t298 + t261 * t299 + t447 * t503 - t303;
t304 = t345 * t447;
t776 = -t257 * t665 - t259 * t296 + t261 * t297 + t445 * t503 + t304;
t705 = rSges(6,2) * t441;
t708 = rSges(6,1) * t442;
t548 = -t705 + t708;
t774 = t446 * t548;
t440 = pkin(9) + qJ(6);
t418 = cos(t440);
t661 = t447 * t418;
t417 = sin(t440);
t666 = t445 * t417;
t266 = t444 * t666 - t661;
t267 = t417 * t447 + t418 * t668;
t128 = -Icges(7,5) * t267 + Icges(7,6) * t266 + Icges(7,3) * t665;
t268 = -t417 * t667 - t418 * t445;
t269 = t444 * t661 - t666;
t129 = Icges(7,5) * t269 + Icges(7,6) * t268 - Icges(7,3) * t662;
t250 = Icges(7,4) * t267;
t130 = -Icges(7,2) * t266 - Icges(7,6) * t665 + t250;
t249 = Icges(7,4) * t266;
t134 = -Icges(7,1) * t267 + Icges(7,5) * t665 + t249;
t516 = t266 * t130 + t267 * t134;
t688 = Icges(7,4) * t269;
t132 = Icges(7,2) * t268 - Icges(7,6) * t662 + t688;
t251 = Icges(7,4) * t268;
t135 = Icges(7,1) * t269 - Icges(7,5) * t662 + t251;
t656 = t268 * t132 + t269 * t135;
t797 = t516 + t656 + (-t128 * t445 - t129 * t447) * t446;
t796 = -t764 * t445 + t447 * t765;
t795 = -t766 * t445 + t767 * t447;
t657 = t268 * t130 - t269 * t134;
t658 = -t266 * t132 + t267 * t135;
t794 = t657 + t446 * (t128 * t447 - t129 * t445) + t658;
t793 = t782 * qJD(1);
t170 = t297 * rSges(6,1) - t296 * rSges(6,2) - rSges(6,3) * t665;
t430 = t446 * qJ(5);
t387 = t445 * t430;
t792 = t387 - t170;
t791 = t776 * qJD(1);
t136 = t267 * rSges(7,1) - t266 * rSges(7,2) - rSges(7,3) * t665;
t443 = -pkin(8) - qJ(5);
t659 = -qJ(5) - t443;
t406 = pkin(5) * t442 + pkin(4);
t710 = pkin(4) - t406;
t229 = t444 * t659 - t446 * t710;
t704 = rSges(7,2) * t417;
t707 = rSges(7,1) * t418;
t546 = -t704 + t707;
t242 = rSges(7,3) * t444 + t446 * t546;
t608 = qJD(6) * t446;
t611 = qJD(4) * t447;
t323 = -t445 * t608 + t611;
t609 = qJD(6) * t444;
t399 = qJD(1) + t609;
t716 = t446 * pkin(4);
t356 = qJ(5) * t444 + t716;
t317 = t356 * t611;
t610 = qJD(5) * t447;
t577 = t446 * t610;
t426 = qJD(3) * t447;
t427 = qJD(2) * t445;
t620 = t426 + t427;
t495 = -t577 + t620;
t480 = t317 + t495;
t790 = -t136 * t399 + t229 * t611 + t242 * t323 + t480;
t515 = t130 * t417 + t134 * t418;
t50 = -t444 * t128 - t446 * t515;
t788 = qJD(4) * t795 + t791;
t787 = qJD(4) * t796 + t793;
t478 = qJD(4) * t347;
t180 = qJD(1) * t273 + t445 * t478;
t479 = qJD(4) * t349;
t182 = t445 * t479 + (t447 * t526 - t685) * qJD(1);
t769 = t165 * t441 - t168 * t442;
t612 = qJD(4) * t446;
t579 = t445 * t612;
t209 = qJD(1) * t298 - t441 * t579;
t210 = qJD(1) * t299 + t442 * t579;
t613 = qJD(4) * t445;
t581 = t444 * t613;
t614 = qJD(1) * t447;
t582 = t446 * t614;
t301 = t581 - t582;
t90 = Icges(6,5) * t210 + Icges(6,6) * t209 + Icges(6,3) * t301;
t92 = Icges(6,4) * t210 + Icges(6,2) * t209 + Icges(6,6) * t301;
t94 = Icges(6,1) * t210 + Icges(6,4) * t209 + Icges(6,5) * t301;
t786 = (-t441 * t92 + t442 * t94 + t182) * t446 + (t90 - t180) * t444 + (-t162 * t446 - t444 * t769 - t506) * qJD(4);
t179 = -qJD(1) * t272 + t447 * t478;
t181 = -qJD(1) * t274 + t447 * t479;
t505 = t273 * t446 + t275 * t444;
t510 = t166 * t441 - t169 * t442;
t578 = t446 * t611;
t207 = qJD(1) * t296 - t441 * t578;
t208 = -qJD(1) * t297 + t442 * t578;
t580 = t444 * t611;
t615 = qJD(1) * t445;
t583 = t446 * t615;
t302 = t580 + t583;
t89 = Icges(6,5) * t208 + Icges(6,6) * t207 + Icges(6,3) * t302;
t91 = Icges(6,4) * t208 + Icges(6,2) * t207 + Icges(6,6) * t302;
t93 = Icges(6,1) * t208 + Icges(6,4) * t207 + Icges(6,5) * t302;
t785 = (t441 * t91 - t442 * t93 - t181) * t446 + (-t89 + t179) * t444 + (-t163 * t446 - t444 * t510 + t505) * qJD(4);
t256 = Icges(6,3) * t446 - t444 * t519;
t230 = t256 * qJD(4);
t258 = Icges(6,6) * t446 - t444 * t522;
t231 = t258 * qJD(4);
t260 = Icges(6,5) * t446 - t444 * t525;
t232 = t260 * qJD(4);
t327 = t523 * qJD(4);
t328 = t526 * qJD(4);
t502 = -t347 * t444 + t349 * t446;
t453 = -qJD(1) * t345 + qJD(4) * t502 - t327 * t446 - t328 * t444;
t744 = t503 * qJD(1) - t520 * qJD(4);
t784 = t207 * t259 + t208 * t261 - t230 * t662 + t231 * t298 + t232 * t299 + t257 * t302 - t445 * t744 + t453 * t447;
t783 = t209 * t259 + t210 * t261 - t230 * t665 - t231 * t296 + t232 * t297 + t257 * t301 + t453 * t445 + t447 * t744;
t145 = -t272 * t444 + t274 * t446;
t763 = -t444 * t162 + t446 * t769 + t145;
t146 = -t273 * t444 + t275 * t446;
t762 = -t163 * t444 + t446 * t510 - t146;
t265 = rSges(6,3) * t444 + t774;
t420 = qJDD(4) * t447;
t604 = qJD(1) * qJD(4);
t339 = -t445 * t604 + t420;
t720 = pkin(4) * t444;
t350 = t430 - t720;
t424 = qJD(5) * t444;
t291 = qJD(4) * t350 + t424;
t605 = qJD(1) * qJD(3);
t606 = qJD(1) * qJD(2);
t624 = qJDD(2) * t445 + t447 * t606;
t557 = qJDD(3) * t447 - 0.2e1 * t445 * t605 + t624;
t448 = qJD(1) ^ 2;
t664 = t445 * t448;
t528 = pkin(7) * t664 + t557;
t603 = qJD(4) * qJD(5);
t572 = t444 * t603;
t425 = qJD(5) * t446;
t574 = qJD(1) * t425;
t461 = t291 * t611 + t339 * t356 + t445 * t574 + t447 * t572 + t528;
t437 = t446 * rSges(6,3);
t240 = (-t444 * t548 + t437) * qJD(4);
t679 = qJ(3) * t448;
t498 = -qJDD(5) * t446 - t679;
t466 = qJD(4) * t240 + t498;
t600 = pkin(4) * t668;
t309 = -t387 + t600;
t432 = t447 * qJ(2);
t352 = pkin(1) * t445 - t432;
t680 = qJ(3) * t445;
t718 = pkin(7) * t447;
t545 = -t680 - t718;
t494 = -t352 + t545;
t474 = -t309 + t494;
t469 = -t170 + t474;
t372 = qJ(5) * t582;
t384 = t445 * t425;
t176 = qJ(5) * t581 - t372 - t384 + (t444 * t614 + t579) * pkin(4);
t358 = t447 * pkin(1) + t445 * qJ(2);
t428 = qJD(2) * t447;
t292 = qJD(1) * t358 - t428;
t646 = -t176 - t292;
t549 = rSges(6,1) * t210 + rSges(6,2) * t209;
t96 = rSges(6,3) * t301 + t549;
t26 = t265 * t339 + t466 * t447 + (-t96 + t646) * qJD(1) + t469 * qJDD(1) + t461;
t634 = t299 * rSges(6,1) + t298 * rSges(6,2);
t172 = -rSges(6,3) * t662 + t634;
t403 = pkin(4) * t667;
t312 = -qJ(5) * t662 + t403;
t431 = t447 * qJ(3);
t758 = t431 + t358;
t553 = t312 + t758;
t621 = pkin(7) * t615 + t428;
t588 = t384 + t621;
t637 = t265 + t356;
t62 = (qJD(4) * t637 + qJD(3)) * t445 + (t172 + t553) * qJD(1) - t588;
t781 = qJD(1) * t62 + t26;
t233 = t265 * t611;
t61 = qJD(1) * t469 + t233 + t480;
t780 = qJD(1) * t61;
t518 = Icges(7,5) * t418 - Icges(7,6) * t417;
t235 = Icges(7,3) * t444 + t446 * t518;
t686 = Icges(7,4) * t418;
t521 = -Icges(7,2) * t417 + t686;
t237 = Icges(7,6) * t444 + t446 * t521;
t687 = Icges(7,4) * t417;
t524 = Icges(7,1) * t418 - t687;
t239 = Icges(7,5) * t444 + t446 * t524;
t464 = t235 * t665 + t237 * t266 - t239 * t267;
t777 = t464 * t399;
t757 = -t445 * rSges(4,2) - t447 * rSges(4,3);
t775 = -t757 + t758;
t575 = t710 * t444;
t669 = t443 * t446;
t483 = t575 - t669;
t507 = t259 * t441 - t261 * t442;
t771 = qJD(4) * (t445 * t510 + t447 * t769) - (t256 + t507) * qJD(1);
t759 = t312 * t615 - t425;
t360 = -rSges(3,2) * t447 + t445 * rSges(3,3);
t616 = qJD(1) * t444;
t629 = -t347 - t526;
t630 = -t523 + t349;
t756 = t771 * t446 + t257 * t616 + (t444 * t629 + t446 * t630) * qJD(1);
t465 = -t272 * t447 + t273 * t445;
t674 = t163 * t445;
t742 = t445 * (-Icges(5,2) * t667 + t275 + t390) - t447 * (t347 * t445 + t274);
t755 = -t446 * t742 + (-t162 * t447 + t465 - t674) * t444;
t618 = qJD(1) * t271;
t454 = qJD(4) * t146 + t179 * t446 + t181 * t444 - t618;
t752 = qJD(1) * t270;
t455 = qJD(4) * t145 + t180 * t446 + t182 * t444 - t752;
t477 = qJD(4) * t345;
t745 = qJD(1) * t506 + t445 * t477 + t618;
t746 = qJD(1) * t505 + t447 * t477 - t752;
t754 = (-t162 * t301 - t165 * t209 - t168 * t210 - t296 * t92 + t297 * t94 + t447 * t745 - t665 * t90) * t447 + (-t163 * t301 - t166 * t209 - t169 * t210 + t296 * t91 - t297 * t93 - t454 * t445 + t665 * t89 + (t455 - t746) * t447) * t445;
t753 = (-t162 * t302 - t165 * t207 - t168 * t208 + t298 * t92 + t299 * t94 + t455 * t447 - t662 * t90) * t447 + (-t163 * t302 - t166 * t207 - t169 * t208 - t298 * t91 - t299 * t93 + t445 * t746 + t662 * t89 + (-t454 - t745) * t447) * t445;
t564 = t432 - t718;
t388 = pkin(5) * t670;
t590 = -t406 * t668 - t443 * t665 - t388;
t750 = t564 + t590 - t136;
t550 = rSges(5,1) * t444 + rSges(5,2) * t446;
t281 = rSges(5,3) * t447 + t445 * t550;
t559 = qJD(6) + t616;
t748 = t445 * t559 - t578;
t747 = t447 * t559 + t579;
t234 = Icges(7,3) * t446 - t444 * t518;
t322 = -t447 * t608 - t613;
t508 = t237 * t417 - t239 * t418;
t514 = t132 * t417 - t135 * t418;
t741 = -t322 * (t235 * t447 + t514) - t323 * (t235 * t445 + t515) - t399 * (t234 + t508);
t277 = (-Icges(7,2) * t418 - t687) * t446;
t740 = t322 * (-Icges(7,2) * t269 + t135 + t251) + t323 * (-Icges(7,2) * t267 - t134 - t249) + t399 * (t239 + t277);
t739 = m(6) / 0.2e1;
t738 = m(7) / 0.2e1;
t737 = -m(6) - m(7);
t462 = -qJDD(6) * t446 + (-qJD(1) + t609) * qJD(4);
t573 = qJD(1) * t608;
t187 = (-qJDD(4) + t573) * t445 + t462 * t447;
t736 = t187 / 0.2e1;
t188 = t445 * t462 - t447 * t573 + t420;
t735 = t188 / 0.2e1;
t734 = -t322 / 0.2e1;
t733 = t322 / 0.2e1;
t732 = -t323 / 0.2e1;
t731 = t323 / 0.2e1;
t338 = -qJDD(4) * t445 - t447 * t604;
t730 = t338 / 0.2e1;
t729 = t339 / 0.2e1;
t728 = -t399 / 0.2e1;
t727 = t399 / 0.2e1;
t725 = t445 / 0.2e1;
t724 = -t447 / 0.2e1;
t722 = rSges(3,2) - pkin(1);
t721 = -rSges(5,3) - pkin(7);
t719 = pkin(5) * t441;
t717 = g(1) * t445;
t138 = t269 * rSges(7,1) + t268 * rSges(7,2) - rSges(7,3) * t662;
t280 = (-rSges(7,1) * t417 - rSges(7,2) * t418) * t446;
t436 = t446 * rSges(7,3);
t142 = qJD(6) * t280 + (-t444 * t546 + t436) * qJD(4);
t633 = t406 * t667 + t443 * t662;
t174 = -pkin(5) * t671 - t312 + t633;
t321 = qJD(4) * t608 + qJDD(6) * t444 + qJDD(1);
t589 = pkin(4) * t578 + qJ(5) * t302;
t175 = -qJD(1) * t600 - t577 + t589;
t411 = qJ(2) * t614;
t623 = t411 + t427;
t592 = qJD(1) * (-pkin(1) * t615 + t623) + qJDD(1) * t358 + t445 * t606;
t493 = qJDD(1) * t431 + qJDD(3) * t445 + 0.2e1 * t447 * t605 + t592;
t563 = -pkin(7) * t448 - qJDD(2);
t452 = qJD(1) * t175 + t291 * t613 + qJDD(1) * t312 + t445 * t572 + (t563 - t574) * t447 + t493;
t205 = (t446 * t659 + t575) * qJD(4);
t467 = qJD(4) * t205 + t498;
t640 = t229 + t356;
t681 = pkin(7) * qJDD(1);
t499 = t447 * t399;
t123 = t417 * t748 - t418 * t499;
t124 = -t417 * t499 - t418 * t748;
t74 = t124 * rSges(7,1) + t123 * rSges(7,2) + rSges(7,3) * t302;
t496 = t406 * t578 - t443 * t580;
t87 = (t445 * t483 - t388) * qJD(1) + t496 - t589;
t8 = qJD(1) * t87 - t640 * t338 + t452 + t321 * t138 - t187 * t242 + qJDD(1) * t174 + (t467 - t681) * t445 - t322 * t142 + t399 * t74;
t715 = t8 * t447;
t173 = t309 + t590;
t468 = t173 + t474;
t500 = t445 * t399;
t125 = -t417 * t747 - t418 * t500;
t126 = -t417 * t500 + t418 * t747;
t547 = rSges(7,1) * t126 + rSges(7,2) * t125;
t75 = rSges(7,3) * t301 + t547;
t88 = t372 - t483 * t614 + (-qJD(1) * t719 + qJD(4) * t229) * t445;
t9 = t461 - t321 * t136 + t188 * t242 + t323 * t142 + t339 * t229 + (-t88 + t646) * qJD(1) + t468 * qJDD(1) + t467 * t447 - t399 * t75;
t714 = t9 * t445;
t711 = -pkin(1) - qJ(3);
t276 = (-Icges(7,5) * t417 - Icges(7,6) * t418) * t446;
t139 = qJD(4) * t234 + qJD(6) * t276;
t236 = Icges(7,6) * t446 - t444 * t521;
t140 = qJD(4) * t236 + qJD(6) * t277;
t238 = Icges(7,5) * t446 - t444 * t524;
t278 = (-Icges(7,1) * t417 - t686) * t446;
t141 = qJD(4) * t238 + qJD(6) * t278;
t29 = (qJD(4) * t508 + t139) * t444 + (qJD(4) * t235 - t140 * t417 + t141 * t418 + (-t237 * t418 - t239 * t417) * qJD(6)) * t446;
t84 = t235 * t444 - t446 * t508;
t709 = t29 * t399 + t84 * t321;
t703 = rSges(3,3) * t447;
t702 = rSges(5,3) * t445;
t69 = Icges(7,5) * t126 + Icges(7,6) * t125 + Icges(7,3) * t301;
t71 = Icges(7,4) * t126 + Icges(7,2) * t125 + Icges(7,6) * t301;
t73 = Icges(7,1) * t126 + Icges(7,4) * t125 + Icges(7,5) * t301;
t10 = (qJD(4) * t515 + t69) * t444 + (-qJD(4) * t128 - t417 * t71 + t418 * t73 + (-t130 * t418 + t134 * t417) * qJD(6)) * t446;
t700 = t10 * t323;
t68 = Icges(7,5) * t124 + Icges(7,6) * t123 + Icges(7,3) * t302;
t70 = Icges(7,4) * t124 + Icges(7,2) * t123 + Icges(7,6) * t302;
t72 = Icges(7,1) * t124 + Icges(7,4) * t123 + Icges(7,5) * t302;
t11 = (qJD(4) * t514 + t68) * t444 + (qJD(4) * t129 - t417 * t70 + t418 * t72 + (-t132 * t418 - t135 * t417) * qJD(6)) * t446;
t699 = t11 * t322;
t698 = t50 * t188;
t51 = t129 * t444 - t446 * t514;
t697 = t51 * t187;
t695 = -rSges(6,3) - qJ(5);
t694 = -t175 - t87;
t95 = t208 * rSges(6,1) + t207 * rSges(6,2) + rSges(6,3) * t302;
t693 = -t175 - t95;
t692 = -t176 - t88;
t691 = -t176 - t96;
t357 = rSges(5,1) * t446 - rSges(5,2) * t444;
t318 = t357 * t611;
t475 = -t281 + t494;
t111 = qJD(1) * t475 + t318 + t620;
t677 = t111 * t445;
t663 = t446 * t406;
t651 = t142 + t205;
t650 = -t170 - t309;
t649 = -t172 - t312;
t648 = t173 - t309;
t647 = -t174 - t312;
t219 = rSges(6,3) * t668 + t445 * t774;
t310 = pkin(4) * t665 + qJ(5) * t668;
t645 = -t219 - t310;
t220 = rSges(6,3) * t667 + t447 * t774;
t313 = pkin(4) * t662 + qJ(5) * t667;
t644 = -t220 - t313;
t641 = t229 + t242;
t638 = t445 * t291 + t356 * t614;
t598 = t446 * t707;
t632 = rSges(7,3) * t668 + t445 * t598;
t631 = rSges(7,3) * t667 + t447 * t598;
t354 = rSges(3,2) * t445 + t703;
t628 = -t352 + t354;
t286 = t358 + t360;
t627 = t444 * t704 + t436;
t626 = t444 * t705 + t437;
t625 = rSges(5,1) * t667 + rSges(5,2) * t662;
t622 = rSges(3,2) * t615 + rSges(3,3) * t614;
t341 = qJD(1) * t352;
t619 = t427 - t341;
t617 = qJD(1) * t520;
t602 = qJDD(2) * t447;
t601 = -rSges(4,3) + t711;
t596 = t446 * t704;
t595 = -m(4) - m(5) + t737;
t594 = -t136 + t648;
t593 = qJDD(5) * t444 + t338 * t309 + t446 * t603;
t591 = qJD(1) * t313 + t350 * t613 + t445 * t424;
t587 = t411 + t620;
t586 = t426 + t619;
t584 = -pkin(7) - t719;
t576 = t711 * t445;
t570 = -t614 / 0.2e1;
t569 = -t613 / 0.2e1;
t568 = t613 / 0.2e1;
t567 = -t611 / 0.2e1;
t566 = t611 / 0.2e1;
t359 = rSges(4,2) * t447 - t445 * rSges(4,3);
t561 = t359 - t680;
t560 = -qJD(3) * t445 + t428;
t558 = qJD(4) * t357 + qJD(3);
t556 = t711 - t720;
t555 = g(1) * t447 + g(2) * t445;
t554 = t445 * t8 + t447 * t9;
t552 = -t352 + t561;
t551 = -qJD(1) * t310 + t350 * t611 + t444 * t610;
t361 = rSges(2,1) * t447 - rSges(2,2) * t445;
t355 = rSges(2,1) * t445 + rSges(2,2) * t447;
t27 = qJD(1) * t95 + qJDD(1) * t172 + t452 - t637 * t338 + (t466 - t681) * t445;
t542 = t26 * t447 + t27 * t445;
t40 = qJD(1) * t468 + t790;
t41 = t138 * t399 - t242 * t322 + (qJD(4) * t640 + qJD(3)) * t445 + (t174 + t553) * qJD(1) - t588;
t539 = t40 * t447 + t41 * t445;
t44 = t128 * t665 - t516;
t45 = -t129 * t665 + t658;
t538 = t44 * t447 - t445 * t45;
t537 = t44 * t445 + t447 * t45;
t46 = t128 * t662 + t657;
t47 = -t129 * t662 + t656;
t536 = t445 * t47 - t447 * t46;
t535 = t445 * t46 + t447 * t47;
t311 = t357 * t445;
t184 = qJD(4) * t311 + (t447 * t550 - t702) * qJD(1);
t329 = t550 * qJD(4);
t501 = -qJD(4) * t329 - t679;
t48 = t339 * t357 + t501 * t447 + (-t184 - t292) * qJD(1) + t475 * qJDD(1) + t528;
t497 = rSges(5,1) * t578 - rSges(5,2) * t580;
t183 = -qJD(1) * t281 + t497;
t282 = t625 - t702;
t49 = qJD(1) * t183 + qJDD(1) * t282 - t338 * t357 + t563 * t447 + (t501 - t681) * t445 + t493;
t534 = t49 * t445 + t48 * t447;
t533 = t445 * t51 - t447 * t50;
t532 = t445 * t50 + t447 * t51;
t112 = t558 * t445 + (t282 + t758) * qJD(1) - t621;
t517 = t111 * t447 + t112 * t445;
t513 = t136 * t447 - t138 * t445;
t509 = -t183 * t447 - t184 * t445;
t504 = -t281 * t445 - t282 * t447;
t492 = -t443 * t444 - t596;
t482 = -t550 + t711;
t476 = -t406 * t444 - t669 + t711;
t472 = -t128 * t323 + t129 * t322 + t235 * t399;
t471 = (-Icges(7,5) * t266 - Icges(7,6) * t267) * t323 + (Icges(7,5) * t268 - Icges(7,6) * t269) * t322 + t276 * t399;
t460 = t446 * t471;
t458 = (Icges(7,1) * t268 - t132 - t688) * t322 + (-Icges(7,1) * t266 - t130 - t250) * t323 + (-t237 + t278) * t399;
t36 = t136 * t322 - t138 * t323 + t424 + (t445 * t648 + t447 * t647) * qJD(4);
t456 = t36 * t513 + (t40 * t445 - t41 * t447) * t242;
t450 = t741 * t446;
t414 = rSges(4,2) * t614;
t335 = t406 * t662;
t333 = t445 * t663;
t325 = t447 * t356;
t324 = t445 * t356;
t314 = t357 * t447;
t300 = (t445 ^ 2 + t447 ^ 2) * t612;
t294 = qJD(1) * t309;
t263 = t447 * t291;
t241 = -t444 * t707 + t627;
t218 = t261 * t447;
t217 = t261 * t445;
t216 = t259 * t447;
t215 = t259 * t445;
t212 = qJD(1) * t286 - t428;
t211 = qJD(1) * t628 + t427;
t202 = -t447 * t596 + t631;
t201 = -t445 * t596 + t632;
t200 = t239 * t447;
t199 = t239 * t445;
t198 = t237 * t447;
t197 = t237 * t445;
t192 = -t443 * t667 - t313 + t335;
t191 = -t443 * t668 - t310 + t333;
t186 = qJD(1) * t775 - t560;
t185 = qJD(1) * t552 + t620;
t159 = rSges(7,1) * t268 - rSges(7,2) * t269;
t158 = -rSges(7,1) * t266 - rSges(7,2) * t267;
t143 = t504 * qJD(4);
t114 = qJD(1) * t622 + qJDD(1) * t360 + t592 - t602;
t113 = t628 * qJDD(1) + (-qJD(1) * t360 - t292) * qJD(1) + t624;
t86 = -t602 - qJ(3) * t664 - qJDD(1) * t757 + qJD(1) * (-rSges(4,3) * t615 + t414) + t493;
t85 = -t448 * t431 + t552 * qJDD(1) + (qJD(1) * t757 - t292) * qJD(1) + t557;
t78 = -t235 * t662 + t237 * t268 + t239 * t269;
t76 = t78 * t399;
t63 = t424 + (t445 * t650 + t447 * t649) * qJD(4);
t23 = t125 * t237 + t126 * t239 - t139 * t665 - t140 * t266 + t141 * t267 + t235 * t301;
t22 = t123 * t237 + t124 * t239 - t139 * t662 + t140 * t268 + t141 * t269 + t235 * t302;
t21 = t170 * t338 + t649 * t339 + (t445 * t691 + t447 * t693) * qJD(4) + t593;
t18 = t322 * t51 + t323 * t50 + t399 * t84;
t13 = t322 * t47 + t323 * t46 + t76;
t12 = t322 * t45 + t323 * t44 - t777;
t7 = t125 * t132 + t126 * t135 + t129 * t301 - t266 * t70 + t267 * t72 - t665 * t68;
t6 = t125 * t130 - t126 * t134 - t128 * t301 - t266 * t71 + t267 * t73 - t665 * t69;
t5 = t123 * t132 + t124 * t135 + t129 * t302 + t268 * t70 + t269 * t72 - t662 * t68;
t4 = t123 * t130 - t124 * t134 - t128 * t302 + t268 * t71 + t269 * t73 - t662 * t69;
t3 = t136 * t187 - t138 * t188 - t173 * t338 + t322 * t75 - t323 * t74 + t647 * t339 + (t445 * t692 + t447 * t694) * qJD(4) + t593;
t2 = t187 * t45 + t188 * t44 + t23 * t399 - t321 * t464 + t322 * t7 + t323 * t6;
t1 = t187 * t47 + t188 * t46 + t22 * t399 + t321 * t78 + t322 * t5 + t323 * t4;
t14 = [((-t231 * t441 + t232 * t442 - t328) * t446 + (t230 + t327) * t444 + (t257 * t446 + t444 * t507 - t503) * qJD(4)) * qJD(1) + (t23 + t13) * t731 + t22 * t733 + t78 * t736 + (((-t100 + t642 - t672 - t512) * t447 + (-t446 * t674 - t243 + t655 - t673 - t765 + t770 + t98) * t445) * qJD(4) + t788 - t791) * t568 + t709 + t700 / 0.2e1 + t699 / 0.2e1 + (t783 + t786 + t787) * t566 + (t784 - t785) * t569 + (t782 - t762) * t730 + (t776 + t763) * t729 + (-g(1) * (t576 + t750) + t9 * t750 + t40 * (-t547 + t588) + t41 * (t411 + t495 + t496 + t74) + (t9 * t711 + (-qJD(3) + (-t663 + (-rSges(7,3) + t443) * t444) * qJD(4)) * t40) * t445 + ((t40 * (-qJ(2) + t719) + t41 * t476) * t445 + (t40 * (t476 + t436) + t41 * t584) * t447) * qJD(1) - (-t294 - t341 - t40 + (t173 + t545) * qJD(1) + t790) * t41 + (-g(2) + t8) * (t445 * t584 + t138 + t633 + t758)) * m(7) + (((-t53 + t655 + t798) * t447 + (-t642 - t654 - t97 + (t271 + t506) * t445) * t445) * qJD(4) + t793) * t567 + (-(qJD(1) * t561 - t185 + t586) * t186 + t185 * t560 + t186 * (t414 + t587) + (t185 * t601 * t447 + (t185 * (-rSges(4,2) - qJ(2)) + t186 * t601) * t445) * qJD(1) + (-g(2) + t86) * t775 + (-g(1) + t85) * (t432 + t576 + t359)) * m(4) + (t257 * t444 - t446 * t507 + t502 + m(2) * (t355 ^ 2 + t361 ^ 2) + Icges(2,3) + Icges(3,1) + Icges(4,1)) * qJDD(1) - t464 * t735 + (-(-t111 + t318 + (-t281 + t545) * qJD(1) + t586) * t112 + t111 * t621 + t112 * (t497 + t587) - t558 * t677 + ((t111 * t482 + t112 * t721) * t447 + (t111 * (rSges(5,3) - qJ(2)) + t112 * t482) * t445) * qJD(1) + (-g(2) + t49) * (t445 * t721 + t625 + t758) + (-g(1) + t48) * (t445 * t482 + t447 * t721 + t432)) * m(5) + (t777 + (-t47 + t797) * t323 + (t46 - t794) * t322 + t12) * t734 + (t76 + (-t45 + t794) * t323 + (t44 + t797) * t322) * t732 + (t26 * (t432 + t792) + t61 * (t372 - t549 + t588) + (t781 * t556 + (-qJD(3) + (t444 * t695 - t716) * qJD(4) - qJ(2) * qJD(1)) * t61) * t445 - g(1) * (t564 + t792) - t556 * t717 + (-t26 * pkin(7) + (t556 + t437) * t780) * t447 + (t27 - g(2)) * (-pkin(7) * t445 + t662 * t695 + t403 + t634 + t758) + (t95 + t587 + t589 - t233 + t294 - t317 + t61 - (-t170 - t680) * qJD(1) - t586) * t62) * m(6) - m(2) * (-g(1) * t355 + g(2) * t361) + t697 / 0.2e1 + t698 / 0.2e1 + (-(qJD(1) * t354 - t211 + t619) * t212 + t211 * t428 + t212 * (t622 + t623) + (t211 * t722 * t447 + (t211 * (-rSges(3,3) - qJ(2)) - t212 * pkin(1)) * t445) * qJD(1) + (-g(2) + t114) * t286 + (-g(1) + t113) * (t445 * t722 + t432 + t703)) * m(3); (-m(3) + t595) * (-g(2) * t447 + t717) + 0.2e1 * (t714 / 0.2e1 - t715 / 0.2e1) * m(7) + 0.2e1 * (t26 * t725 + t27 * t724) * m(6) + 0.2e1 * (t48 * t725 + t49 * t724) * m(5) + 0.2e1 * (t724 * t86 + t725 * t85) * m(4) + 0.2e1 * (t113 * t725 + t114 * t724) * m(3); t595 * t555 + m(4) * (t445 * t86 + t447 * t85) + m(5) * t534 + m(6) * t542 + m(7) * t554; (-qJD(1) * t532 + t10 * t447 - t11 * t445) * t727 + (-qJD(1) * t537 - t445 * t7 + t447 * t6) * t731 + (-qJD(1) * t535 + t4 * t447 - t445 * t5) * t733 + ((t198 * t268 + t200 * t269) * t322 + (t197 * t268 + t199 * t269) * t323 + (t236 * t268 + t238 * t269) * t399 + (t446 * t78 + t46 * t668) * qJD(6) + ((qJD(6) * t47 + t472) * t444 + t450) * t447) * t734 + t538 * t735 + (-g(1) * (t447 * t492 + t335 + t631) - g(2) * (t445 * t492 + t333 + t632) - g(3) * (-t669 + (-t406 - t707) * t444 + t627) + t9 * t325 + t40 * t263 + t8 * t324 + t41 * t638 + (t40 * t651 + t3 * (-t138 + t647) + (qJD(1) * t41 + t9) * t641) * t447 + (t8 * t641 + t41 * t651 + t3 * t594 + t40 * (-t242 - t640) * qJD(1)) * t445 - t40 * (-qJD(1) * t191 - t201 * t399 + t241 * t323 + t551) - t41 * (qJD(1) * t192 + t202 * t399 - t241 * t322 + t591) - ((-t136 * t40 + t138 * t41) * t446 + t456 * t444) * qJD(6) - t539 * (-t430 + t483) * qJD(4) + ((qJD(1) * t594 + t694 - t74) * t447 + (-t75 + t692 + (t138 + t174) * qJD(1)) * t445 - t201 * t322 + t202 * t323 - ((-t192 - t313) * t447 + (-t191 - t310) * t445) * qJD(4) + t759) * t36) * m(7) - (((-t258 * t441 + t260 * t442 + t257) * qJD(1) + (-(-t216 * t441 + t218 * t442 + t163) * t445 + (-t215 * t441 + t217 * t442 - t162) * t447) * qJD(4)) * t446 - t771 * t444 + (-t444 * t630 + t446 * t629) * qJD(1) + (t444 * t742 + t465 * t446) * qJD(4)) * qJD(1) / 0.2e1 + ((-t445 * t767 - t766 * t447) * qJD(1) + t754) * t566 + (t445 * t762 + t447 * t763) * qJDD(1) / 0.2e1 + (t786 * t447 + t785 * t445 + (-t445 * t763 + t447 * t762) * qJD(1)) * qJD(1) / 0.2e1 + (t13 + t787) * t570 - (t12 + t788) * t615 / 0.2e1 + (t26 * t325 + t61 * t263 + t27 * t324 + t62 * t638 + (t21 * t649 + t61 * t240 + t781 * t265) * t447 + (t21 * t650 + t62 * t240 + t27 * t265 - t637 * t780) * t445 - t61 * (-qJD(1) * t219 + t551) - t62 * (qJD(1) * t220 + t591) - (t445 * t62 + t447 * t61) * (-t444 * t708 + t626) * qJD(4) + g(1) * t644 + g(2) * t645 - g(3) * (t430 + (-pkin(4) - t708) * t444 + t626) + ((qJD(1) * t650 + t693) * t447 + (qJD(1) * t172 + t691) * t445 - (t445 * t645 + t447 * t644) * qJD(4) + t759) * t63) * m(6) + ((-t215 * t296 + t217 * t297) * t611 + (-t258 * t296 + t260 * t297) * qJD(1) + (t303 * t611 - t617) * t447 + ((t296 * t216 - t297 * t218 - t447 * t304 + t755) * qJD(4) + t756) * t445) * t567 + (-(t216 * t298 + t218 * t299) * t613 + (t258 * t298 + t260 * t299) * qJD(1) + (t304 * t613 + t617) * t445 + ((t298 * t215 + t299 * t217 - t445 * t303 + t755) * qJD(4) + t756) * t447) * t568 - t187 * t536 / 0.2e1 - t321 * t533 / 0.2e1 + ((-t445 * t765 - t447 * t764) * qJD(1) + t753) * t569 - (t12 * t445 + t13 * t447) * t609 / 0.2e1 + ((-t198 * t266 + t200 * t267) * t322 + (-t197 * t266 + t199 * t267) * t323 + (-t236 * t266 + t238 * t267) * t399 + (-t446 * t464 + t45 * t667) * qJD(6) + ((qJD(6) * t44 + t472) * t444 + t450) * t445) * t732 + (((-t198 * t417 + t200 * t418 + t129) * t322 + (-t197 * t417 + t199 * t418 - t128) * t323 + (-t236 * t417 + t238 * t418 + t235) * t399 + t84 * qJD(6)) * t446 + (qJD(6) * t532 - t741) * t444) * t728 + ((qJD(4) * t509 + t281 * t338 - t282 * t339) * t504 + t143 * ((-t281 * t447 + t282 * t445) * qJD(1) + t509) - t517 * t329 + ((t112 * t447 - t677) * qJD(1) + t534) * t357 - (-t111 * t311 + t112 * t314) * qJD(1) - (t143 * (-t311 * t445 - t314 * t447) - t517 * t550) * qJD(4) - g(1) * t314 - g(2) * t311 + g(3) * t550) * m(5) + t795 * t729 + t796 * t730 + (qJD(1) * t783 + t754 * qJD(4) + qJDD(1) * t776 + t766 * t338 + t767 * t339 + t2) * t447 / 0.2e1 - (qJD(1) * t784 + t753 * qJD(4) + qJDD(1) * t782 + t764 * t338 + t765 * t339 + t1) * t445 / 0.2e1 - t18 * t608 / 0.2e1; t737 * (g(3) * t444 - t446 * t555) - m(6) * (t300 * t63 + t301 * t62 + t302 * t61) - m(7) * (t300 * t36 + t301 * t41 + t302 * t40) + 0.2e1 * ((t61 * t611 + t613 * t62 + t21) * t739 + (t40 * t611 + t41 * t613 + t3) * t738) * t444 + 0.2e1 * ((qJD(4) * t63 + t61 * t615 - t614 * t62 - t542) * t739 + (qJD(4) * t36 + t40 * t615 - t41 * t614 - t554) * t738) * t446; -t1 * t662 / 0.2e1 + (t444 * t78 - t446 * t535) * t736 + ((qJD(4) * t535 + t22) * t444 + (qJD(1) * t536 + qJD(4) * t78 - t4 * t445 - t447 * t5) * t446) * t733 - t2 * t665 / 0.2e1 + (-t444 * t464 - t446 * t537) * t735 + ((qJD(4) * t537 + t23) * t444 + (-qJD(1) * t538 - qJD(4) * t464 - t445 * t6 - t447 * t7) * t446) * t731 + t18 * t612 / 0.2e1 + t444 * (t697 + t698 + t699 + t700 + t709) / 0.2e1 + t321 * (t444 * t84 - t446 * t532) / 0.2e1 + ((qJD(4) * t532 + t29) * t444 + (qJD(1) * t533 + qJD(4) * t84 - t10 * t445 - t11 * t447) * t446) * t727 + (t268 * t740 + t458 * t269 - t447 * t460) * t734 + (-t266 * t740 + t267 * t458 - t445 * t460) * t732 + (t471 * t444 + (-t417 * t740 + t418 * t458) * t446) * t728 + (t583 / 0.2e1 + t444 * t566) * t13 + (t444 * t568 + t446 * t570) * t12 + ((qJD(4) * t456 - t9 * t136 + t8 * t138 - t40 * t75 + t41 * t74) * t444 + (t40 * (-qJD(4) * t136 - t142 * t445) + t41 * (qJD(4) * t138 + t142 * t447) - t3 * t513 + t36 * (t136 * t615 + t138 * t614 + t445 * t74 - t447 * t75) + (-qJD(1) * t539 - t714 + t715) * t242) * t446 - t40 * (-t158 * t399 + t280 * t323) - t41 * (t159 * t399 - t280 * t322) - t36 * (t158 * t322 - t159 * t323) - g(1) * t159 - g(2) * t158 - g(3) * t280) * m(7);];
tau  = t14;
