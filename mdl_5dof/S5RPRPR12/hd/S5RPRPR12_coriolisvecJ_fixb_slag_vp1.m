% Calculate vector of centrifugal and Coriolis load on the joints for
% S5RPRPR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2,theta4]';
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
% Datum: 2019-12-31 18:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5RPRPR12_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR12_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR12_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRPR12_coriolisvecJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRPR12_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRPR12_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RPRPR12_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:29:26
% EndTime: 2019-12-31 18:30:06
% DurationCPUTime: 30.46s
% Computational Cost: add. (24000->1005), mult. (27639->1331), div. (0->0), fcn. (25590->10), ass. (0->475)
t393 = pkin(9) + qJ(5);
t377 = sin(t393);
t379 = cos(t393);
t402 = cos(qJ(1));
t394 = pkin(8) + qJ(3);
t380 = cos(t394);
t401 = sin(qJ(1));
t605 = t380 * t401;
t276 = t377 * t605 + t379 * t402;
t600 = t402 * t377;
t277 = t379 * t605 - t600;
t378 = sin(t394);
t607 = t378 * t401;
t133 = Icges(6,5) * t277 - Icges(6,6) * t276 + Icges(6,3) * t607;
t266 = Icges(6,4) * t277;
t136 = -Icges(6,2) * t276 + Icges(6,6) * t607 + t266;
t265 = Icges(6,4) * t276;
t140 = -Icges(6,1) * t277 - Icges(6,5) * t607 + t265;
t712 = t136 * t377 + t140 * t379;
t47 = -t133 * t380 - t378 * t712;
t397 = cos(pkin(9));
t601 = t397 * t402;
t395 = sin(pkin(9));
t603 = t395 * t401;
t304 = t380 * t603 + t601;
t599 = t402 * t395;
t602 = t397 * t401;
t305 = t380 * t602 - t599;
t157 = Icges(5,5) * t305 - Icges(5,6) * t304 + Icges(5,3) * t607;
t617 = Icges(4,3) * t402;
t249 = Icges(4,5) * t605 - Icges(4,6) * t607 - t617;
t349 = Icges(4,4) * t607;
t624 = Icges(4,5) * t402;
t253 = Icges(4,1) * t605 - t349 - t624;
t620 = Icges(4,6) * t402;
t251 = Icges(4,4) * t605 - Icges(4,2) * t607 - t620;
t611 = t251 * t378;
t462 = -t253 * t380 + t611;
t160 = Icges(5,4) * t305 - Icges(5,2) * t304 + Icges(5,6) * t607;
t163 = Icges(5,1) * t305 - Icges(5,4) * t304 + Icges(5,5) * t607;
t467 = -t160 * t304 + t163 * t305;
t717 = t157 * t607 - t249 * t402 - t401 * t462 + t467;
t306 = -t380 * t599 + t602;
t307 = t380 * t601 + t603;
t606 = t378 * t402;
t159 = Icges(5,5) * t307 + Icges(5,6) * t306 + Icges(5,3) * t606;
t162 = Icges(5,4) * t307 + Icges(5,2) * t306 + Icges(5,6) * t606;
t165 = Icges(5,1) * t307 + Icges(5,4) * t306 + Icges(5,5) * t606;
t50 = t159 * t607 - t304 * t162 + t305 * t165;
t367 = Icges(4,4) * t380;
t475 = -Icges(4,2) * t378 + t367;
t252 = Icges(4,6) * t401 + t402 * t475;
t628 = Icges(4,4) * t378;
t320 = Icges(4,1) * t380 - t628;
t254 = Icges(4,5) * t401 + t320 * t402;
t217 = t254 * t605;
t316 = Icges(4,5) * t380 - Icges(4,6) * t378;
t250 = Icges(4,3) * t401 + t316 * t402;
t505 = t250 * t402 - t217;
t93 = -t252 * t607 - t505;
t716 = t50 + t93;
t52 = t159 * t606 + t306 * t162 + t307 * t165;
t604 = t380 * t402;
t588 = t401 * t250 + t254 * t604;
t95 = -t252 * t606 + t588;
t715 = t52 + t95;
t472 = Icges(5,5) * t397 - Icges(5,6) * t395;
t237 = -Icges(5,3) * t380 + t378 * t472;
t474 = Icges(5,4) * t397 - Icges(5,2) * t395;
t239 = -Icges(5,6) * t380 + t378 * t474;
t477 = Icges(5,1) * t397 - Icges(5,4) * t395;
t241 = -Icges(5,5) * t380 + t378 * t477;
t317 = Icges(4,2) * t380 + t628;
t319 = Icges(4,1) * t378 + t367;
t460 = t317 * t378 - t319 * t380;
t315 = Icges(4,5) * t378 + Icges(4,6) * t380;
t608 = t315 * t402;
t714 = t237 * t607 - t239 * t304 + t241 * t305 - t401 * t460 - t608;
t609 = t315 * t401;
t713 = t237 * t606 + t239 * t306 + t241 * t307 - t402 * t460 + t609;
t550 = qJD(5) * t378;
t555 = qJD(3) * t401;
t313 = t402 * t550 + t555;
t554 = qJD(3) * t402;
t314 = -t401 * t550 + t554;
t549 = qJD(5) * t380;
t356 = qJD(1) - t549;
t43 = t133 * t607 - t136 * t276 - t140 * t277;
t278 = t379 * t401 - t380 * t600;
t279 = t377 * t401 + t379 * t604;
t135 = Icges(6,5) * t279 + Icges(6,6) * t278 + Icges(6,3) * t606;
t627 = Icges(6,4) * t279;
t138 = Icges(6,2) * t278 + Icges(6,6) * t606 + t627;
t267 = Icges(6,4) * t278;
t141 = Icges(6,1) * t279 + Icges(6,5) * t606 + t267;
t44 = t135 * t607 - t276 * t138 + t277 * t141;
t471 = Icges(6,5) * t379 - Icges(6,6) * t377;
t223 = -Icges(6,3) * t380 + t378 * t471;
t625 = Icges(6,4) * t379;
t473 = -Icges(6,2) * t377 + t625;
t225 = -Icges(6,6) * t380 + t378 * t473;
t626 = Icges(6,4) * t377;
t476 = Icges(6,1) * t379 - t626;
t227 = -Icges(6,5) * t380 + t378 * t476;
t75 = t223 * t607 - t225 * t276 + t227 * t277;
t12 = t313 * t44 - t314 * t43 + t356 * t75;
t45 = t133 * t606 + t278 * t136 - t140 * t279;
t46 = t135 * t606 + t278 * t138 + t279 * t141;
t76 = t223 * t606 + t225 * t278 + t227 * t279;
t13 = t313 * t46 - t314 * t45 + t76 * t356;
t700 = t306 * t160 + t307 * t163;
t51 = t157 * t606 + t700;
t589 = -t401 * t249 - t253 * t604;
t94 = -t251 * t606 - t589;
t711 = t51 + t94;
t710 = t713 * qJD(1);
t633 = t402 * t51;
t705 = (t401 * t715 - t402 * t94 - t633) * qJD(3);
t704 = (t716 * t401 - t402 * t717) * qJD(3);
t399 = -pkin(7) - qJ(4);
t598 = qJ(4) + t399;
t508 = t598 * t380;
t369 = pkin(4) * t397 + pkin(3);
t649 = pkin(3) - t369;
t522 = t649 * t378;
t210 = t508 - t522;
t703 = t714 * qJD(1);
t487 = rSges(6,1) * t277 - rSges(6,2) * t276;
t144 = rSges(6,3) * t607 + t487;
t486 = rSges(6,1) * t379 - rSges(6,2) * t377;
t231 = -rSges(6,3) * t380 + t378 * t486;
t323 = pkin(3) * t378 - qJ(4) * t380;
t507 = (-t210 - t323) * t402;
t551 = qJD(4) * t402;
t340 = t378 * t551;
t381 = qJD(2) * t401;
t569 = t340 + t381;
t702 = qJD(3) * t507 - t144 * t356 - t314 * t231 + t569;
t238 = Icges(5,3) * t378 + t380 * t472;
t463 = -t239 * t395 + t241 * t397;
t465 = -t162 * t395 + t165 * t397;
t699 = t160 * t395 - t163 * t397;
t701 = qJD(3) * (-t401 * t465 - t402 * t699) + (t238 - t463) * qJD(1);
t698 = 0.2e1 * qJD(3);
t697 = t703 + t704;
t696 = t705 + t710;
t436 = qJD(3) * t317;
t169 = qJD(1) * t252 - t401 * t436;
t437 = qJD(3) * t319;
t171 = qJD(1) * t254 - t401 * t437;
t525 = t378 * t555;
t214 = qJD(1) * t306 + t395 * t525;
t215 = qJD(1) * t307 - t397 * t525;
t558 = qJD(1) * t402;
t284 = t378 * t558 + t380 * t555;
t85 = Icges(5,5) * t215 + Icges(5,6) * t214 + Icges(5,3) * t284;
t87 = Icges(5,4) * t215 + Icges(5,2) * t214 + Icges(5,6) * t284;
t89 = Icges(5,1) * t215 + Icges(5,4) * t214 + Icges(5,5) * t284;
t695 = (t85 - t169) * t380 + (t395 * t87 - t397 * t89 - t171) * t378 + (-t378 * t157 + t380 * t699 + t462) * qJD(3);
t168 = -t402 * t436 + (-t401 * t475 + t620) * qJD(1);
t170 = -t402 * t437 + (-t320 * t401 + t624) * qJD(1);
t610 = t252 * t378;
t461 = -t254 * t380 + t610;
t524 = t378 * t554;
t212 = qJD(1) * t304 + t395 * t524;
t213 = -qJD(1) * t305 - t397 * t524;
t527 = t380 * t554;
t559 = qJD(1) * t401;
t530 = t378 * t559;
t285 = t527 - t530;
t84 = Icges(5,5) * t213 + Icges(5,6) * t212 + Icges(5,3) * t285;
t86 = Icges(5,4) * t213 + Icges(5,2) * t212 + Icges(5,6) * t285;
t88 = Icges(5,1) * t213 + Icges(5,4) * t212 + Icges(5,5) * t285;
t694 = (-t84 + t168) * t380 + (-t395 * t86 + t397 * t88 + t170) * t378 + (t159 * t378 + t380 * t465 - t461) * qJD(3);
t220 = t238 * qJD(3);
t240 = Icges(5,6) * t378 + t380 * t474;
t221 = t240 * qJD(3);
t242 = Icges(5,5) * t378 + t380 * t477;
t222 = t242 * qJD(3);
t309 = t475 * qJD(3);
t310 = t320 * qJD(3);
t407 = qJD(1) * t315 - t309 * t378 + t310 * t380 + (-t317 * t380 - t319 * t378) * qJD(3);
t672 = t460 * qJD(1) + t316 * qJD(3);
t693 = t212 * t239 + t213 * t241 + t220 * t606 + t221 * t306 + t222 * t307 + t237 * t285 + t401 * t672 + t407 * t402;
t692 = t214 * t239 + t215 * t241 + t220 * t607 - t221 * t304 + t222 * t305 + t237 * t284 + t407 * t401 - t402 * t672;
t691 = -rSges(5,3) - qJ(4);
t128 = t251 * t380 + t253 * t378;
t690 = -t157 * t380 - t378 * t699 + t128;
t129 = t252 * t380 + t254 * t378;
t689 = -t159 * t380 + t378 * t465 + t129;
t687 = t378 * t598;
t686 = t380 * t649;
t400 = -pkin(6) - qJ(2);
t373 = t402 * t400;
t489 = rSges(5,1) * t397 - rSges(5,2) * t395;
t244 = -rSges(5,3) * t380 + t378 * t489;
t366 = qJD(4) * t378;
t685 = (qJD(3) * t244 - t366) * t401;
t684 = (qJD(3) * t210 - t366) * t401;
t388 = t401 * rSges(4,3);
t273 = rSges(4,1) * t604 - rSges(4,2) * t606 + t388;
t398 = cos(pkin(8));
t370 = pkin(2) * t398 + pkin(1);
t351 = t402 * t370;
t503 = -t400 * t401 + t351;
t683 = t273 + t503;
t384 = t402 * qJ(2);
t342 = pkin(1) * t401 - t384;
t568 = -t401 * t370 - t373;
t247 = t342 + t568;
t243 = qJD(1) * t247;
t614 = qJ(4) * t378;
t655 = t380 * pkin(3);
t325 = t614 + t655;
t297 = t325 * t401;
t280 = qJD(1) * t297;
t682 = t280 - t243;
t383 = t401 * qJ(2);
t344 = t402 * pkin(1) + t383;
t645 = rSges(3,2) * sin(pkin(8));
t647 = rSges(3,1) * t398;
t455 = t401 * rSges(3,3) + (-t645 + t647) * t402;
t681 = t344 + t455;
t560 = qJD(1) * t380;
t572 = t319 + t475;
t573 = -t317 + t320;
t680 = t701 * t378 + t237 * t560 + (-t378 * t572 + t380 * t573) * qJD(1);
t429 = t251 * t402 - t252 * t401;
t670 = t401 * (-t317 * t402 + t254) - t402 * (-Icges(4,2) * t605 + t253 - t349);
t679 = -t378 * t670 + (-t157 * t402 + t159 * t401 + t429) * t380;
t501 = -qJD(5) + t560;
t676 = t401 * t501 + t524;
t675 = t402 * t501 - t525;
t435 = qJD(3) * t315;
t674 = -t402 * t435 + (-t316 * t401 + t461 + t617) * qJD(1);
t562 = qJD(1) * t250;
t673 = qJD(1) * t462 - t401 * t435 + t562;
t224 = Icges(6,3) * t378 + t380 * t471;
t464 = -t225 * t377 + t227 * t379;
t469 = -t138 * t377 + t141 * t379;
t669 = t313 * (-t223 * t402 - t469) - t314 * (-t223 * t401 + t712) + t356 * (t224 - t464);
t256 = (-Icges(6,2) * t379 - t626) * t378;
t668 = t313 * (-Icges(6,2) * t279 + t141 + t267) - t314 * (-Icges(6,2) * t277 - t140 - t265) + t356 * (t227 + t256);
t667 = m(5) / 0.2e1;
t666 = m(6) / 0.2e1;
t545 = qJD(3) * qJD(5);
t519 = t380 * t545;
t233 = qJD(1) * t313 + t401 * t519;
t665 = t233 / 0.2e1;
t234 = qJD(1) * t314 + t402 * t519;
t664 = t234 / 0.2e1;
t663 = -t313 / 0.2e1;
t662 = t313 / 0.2e1;
t661 = -t314 / 0.2e1;
t660 = t314 / 0.2e1;
t659 = -t356 / 0.2e1;
t658 = t356 / 0.2e1;
t657 = t401 / 0.2e1;
t656 = -t402 / 0.2e1;
t459 = t401 * t356;
t120 = -t377 * t675 + t379 * t459;
t121 = t377 * t459 + t379 * t675;
t66 = Icges(6,5) * t121 + Icges(6,6) * t120 + Icges(6,3) * t284;
t68 = Icges(6,4) * t121 + Icges(6,2) * t120 + Icges(6,6) * t284;
t70 = Icges(6,1) * t121 + Icges(6,4) * t120 + Icges(6,5) * t284;
t8 = (-qJD(3) * t712 - t66) * t380 + (qJD(3) * t133 - t377 * t68 + t379 * t70 + (-t136 * t379 + t140 * t377) * qJD(5)) * t378;
t654 = t8 * t314;
t458 = t402 * t356;
t118 = t377 * t676 + t379 * t458;
t119 = t377 * t458 - t379 * t676;
t65 = Icges(6,5) * t119 + Icges(6,6) * t118 + Icges(6,3) * t285;
t67 = Icges(6,4) * t119 + Icges(6,2) * t118 + Icges(6,6) * t285;
t69 = Icges(6,1) * t119 + Icges(6,4) * t118 + Icges(6,5) * t285;
t9 = (qJD(3) * t469 - t65) * t380 + (qJD(3) * t135 - t377 * t67 + t379 * t69 + (-t138 * t379 - t141 * t377) * qJD(5)) * t378;
t653 = t9 * t313;
t651 = qJD(1) / 0.2e1;
t650 = pkin(1) - t370;
t255 = (-Icges(6,5) * t377 - Icges(6,6) * t379) * t378;
t124 = qJD(3) * t224 + qJD(5) * t255;
t226 = Icges(6,6) * t378 + t380 * t473;
t125 = qJD(3) * t226 + qJD(5) * t256;
t228 = Icges(6,5) * t378 + t380 * t476;
t257 = (-Icges(6,1) * t377 - t625) * t378;
t126 = qJD(3) * t228 + qJD(5) * t257;
t27 = (qJD(3) * t464 - t124) * t380 + (qJD(3) * t223 - t125 * t377 + t126 * t379 + (-t225 * t379 - t227 * t377) * qJD(5)) * t378;
t520 = t378 * t545;
t81 = -t223 * t380 + t378 * t464;
t648 = t27 * t356 + t81 * t520;
t646 = rSges(4,1) * t380;
t644 = rSges(5,3) * t378;
t642 = rSges(6,3) * t378;
t232 = t380 * t486 + t642;
t269 = (-rSges(6,1) * t377 - rSges(6,2) * t379) * t378;
t127 = qJD(3) * t232 + qJD(5) * t269;
t146 = t279 * rSges(6,1) + t278 * rSges(6,2) + rSges(6,3) * t606;
t333 = qJ(4) * t527;
t433 = -t380 * t559 - t524;
t151 = pkin(3) * t433 - qJ(4) * t530 + t333 + t340;
t546 = qJD(3) * qJD(4);
t521 = t380 * t546;
t374 = qJ(2) * t558;
t547 = qJD(1) * qJD(2);
t564 = t374 + t381;
t575 = qJD(1) * (-pkin(1) * t559 + t564) + t401 * t547;
t535 = qJD(1) * (-t374 + (t401 * t650 - t373) * qJD(1)) + t575;
t453 = t401 * t521 + t535 + (t151 + t340) * qJD(1);
t211 = -t686 - t687;
t553 = qJD(4) * t380;
t268 = qJD(3) * t325 - t553;
t592 = -t211 * qJD(3) - t268;
t541 = t119 * rSges(6,1) + t118 * rSges(6,2) + rSges(6,3) * t527;
t71 = -rSges(6,3) * t530 + t541;
t544 = pkin(4) * t599;
t571 = qJD(1) * t544 + t399 * t530;
t82 = -t333 + (-t380 * t399 + t522) * t554 + (t614 + t686) * t559 + t571;
t10 = qJD(1) * t82 - t127 * t313 - t231 * t234 + t356 * t71 + (qJD(1) * t507 + t146 * t550 + t401 * t592) * qJD(3) + t453;
t640 = t10 * t402;
t302 = t323 * t555;
t372 = t402 * t547;
t531 = qJD(1) * t302 + t402 * t521 + t372;
t337 = pkin(3) * t525;
t357 = pkin(3) * t604;
t552 = qJD(4) * t401;
t152 = qJ(4) * t284 + qJD(1) * t357 + t378 * t552 - t337;
t382 = qJD(2) * t402;
t311 = qJD(1) * t344 - t382;
t362 = t400 * t559;
t585 = t362 - (-t402 * t650 - t383) * qJD(1) - t311;
t538 = -t152 + t585;
t488 = rSges(6,1) * t121 + rSges(6,2) * t120;
t72 = rSges(6,3) * t284 + t488;
t365 = pkin(4) * t603;
t83 = t337 + (-t369 * t378 - t508) * t555 + (t211 * t402 + t365) * qJD(1);
t11 = -t127 * t314 + t231 * t233 - t356 * t72 + (-t144 * t550 + t402 * t592) * qJD(3) + (t538 - t83 + t684) * qJD(1) + t531;
t639 = t11 * t401;
t324 = rSges(4,1) * t378 + rSges(4,2) * t380;
t299 = t324 * t402;
t529 = t324 * t555;
t99 = qJD(1) * t683 - t382 - t529;
t638 = t299 * t99;
t272 = rSges(4,1) * t605 - rSges(4,2) * t607 - t402 * rSges(4,3);
t528 = t324 * t554;
t495 = t381 - t528;
t582 = t247 - t342;
t98 = (-t272 + t582) * qJD(1) + t495;
t634 = t401 * t98;
t632 = t47 * t233;
t48 = -t135 * t380 + t378 * t469;
t631 = t48 * t234;
t630 = -rSges(6,3) + t399;
t499 = -t369 * t605 + t544;
t155 = (t655 + t687) * t401 + t499;
t595 = t144 - t155;
t300 = qJ(4) * t606 + t357;
t454 = t369 * t604 - t399 * t606 + t365;
t156 = t454 - t300;
t594 = -t156 - t300;
t174 = t307 * rSges(5,1) + t306 * rSges(5,2) + rSges(5,3) * t606;
t593 = -t174 - t300;
t591 = t210 + t231;
t590 = -t211 - t325;
t245 = t380 * t489 + t644;
t586 = -t245 * qJD(3) - t268;
t584 = -t244 - t323;
t583 = -t245 - t325;
t577 = t401 * t297 + t402 * t300;
t298 = t323 * t402;
t576 = -qJD(1) * t298 + t380 * t552;
t574 = -t302 - t382;
t570 = rSges(4,2) * t530 + rSges(4,3) * t558;
t363 = t401 * t645;
t567 = rSges(3,3) * t558 + qJD(1) * t363;
t566 = t362 + t382;
t565 = t402 * rSges(3,3) + t363;
t329 = qJD(1) * t342;
t563 = t381 - t329;
t561 = qJD(1) * t316;
t557 = qJD(3) * t378;
t556 = qJD(3) * t380;
t543 = t401 * t647;
t540 = -t127 + t592;
t539 = t402 * t151 + t401 * t152 + t297 * t558;
t537 = t213 * rSges(5,1) + t212 * rSges(5,2) + rSges(5,3) * t527;
t536 = -t323 - t591;
t534 = -t297 + t582;
t533 = t300 + t503;
t295 = t323 * t401;
t532 = -t295 * t555 - t298 * t554 + t366;
t523 = -pkin(1) - t647;
t517 = t558 / 0.2e1;
t516 = t557 / 0.2e1;
t515 = -t555 / 0.2e1;
t514 = t555 / 0.2e1;
t512 = t554 / 0.2e1;
t58 = -t685 + (t174 + t533) * qJD(1) + t574;
t510 = t58 * t584;
t506 = t584 * t402;
t504 = -t249 + t610;
t502 = qJD(1) * t295 + t380 * t551;
t500 = t152 * t555 + t378 * t546 + (t151 + t280) * t554;
t496 = qJD(5) * t516;
t494 = t297 * t555 + t300 * t554 - t553;
t492 = -rSges(4,2) * t378 + t646;
t491 = rSges(5,1) * t215 + rSges(5,2) * t214;
t490 = rSges(5,1) * t305 - rSges(5,2) * t304;
t485 = t401 * t44 - t402 * t43;
t484 = t401 * t43 + t402 * t44;
t483 = t401 * t46 - t402 * t45;
t482 = t401 * t45 + t402 * t46;
t481 = t401 * t48 - t402 * t47;
t480 = t401 * t47 + t402 * t48;
t479 = -t401 * t99 - t402 * t98;
t468 = t144 * t402 - t146 * t401;
t452 = -t369 * t380 - t370 - t642;
t296 = t324 * t401;
t147 = (t272 * t401 + t273 * t402) * qJD(3);
t434 = -t325 - t644;
t432 = -t133 * t314 + t135 * t313 + t223 * t356;
t431 = (-Icges(6,5) * t276 - Icges(6,6) * t277) * t314 - (Icges(6,5) * t278 - Icges(6,6) * t279) * t313 - t255 * t356;
t172 = rSges(5,3) * t607 + t490;
t428 = t378 * t431;
t417 = (Icges(6,1) * t278 - t138 - t627) * t313 - (-Icges(6,1) * t276 - t136 - t266) * t314 + (-t225 + t257) * t356;
t36 = t144 * t313 + t146 * t314 + (-t155 * t401 + t156 * t402) * qJD(3) + t494;
t39 = (t155 + t534) * qJD(1) + t702;
t40 = t146 * t356 - t231 * t313 - t684 + (t156 + t533) * qJD(1) + t574;
t410 = t36 * t468 + (t39 * t401 - t40 * t402) * t231;
t409 = qJD(1) * t249 - qJD(3) * t128 - t169 * t378 + t171 * t380;
t408 = -qJD(3) * t129 - t168 * t378 + t170 * t380 + t562;
t405 = t669 * t378;
t312 = t492 * qJD(3);
t303 = t323 * t559;
t288 = t543 - t565;
t283 = (t401 ^ 2 + t402 ^ 2) * t557;
t209 = t244 * t402;
t208 = t244 * t401;
t207 = t241 * t402;
t206 = t241 * t401;
t205 = t239 * t402;
t204 = t239 * t401;
t199 = t231 * t402;
t198 = t231 * t401;
t197 = qJD(1) * t681 - t382;
t196 = t381 + (-t288 - t342) * qJD(1);
t195 = t227 * t402;
t194 = t227 * t401;
t193 = t225 * t402;
t192 = t225 * t401;
t186 = t210 * t402;
t185 = t210 * t401;
t184 = rSges(6,1) * t278 - rSges(6,2) * t279;
t183 = -rSges(6,1) * t276 - rSges(6,2) * t277;
t176 = -qJD(3) * t296 + (t402 * t492 + t388) * qJD(1);
t175 = rSges(4,1) * t433 - rSges(4,2) * t527 + t570;
t154 = t372 + (-qJD(1) * t455 - t311) * qJD(1);
t153 = qJD(1) * (-qJD(1) * t543 + t567) + t575;
t97 = rSges(5,3) * t284 + t491;
t96 = -rSges(5,3) * t530 + t537;
t74 = -t312 * t554 + t372 + (-t176 + t529 + t585) * qJD(1);
t73 = -t312 * t555 + (t175 - t528) * qJD(1) + t535;
t63 = (t172 * t401 + t174 * t402) * qJD(3) + t494;
t57 = qJD(3) * t506 + (-t172 + t534) * qJD(1) + t569;
t29 = t586 * t554 + (t538 - t97 + t685) * qJD(1) + t531;
t28 = qJD(1) * t96 + (qJD(1) * t506 + t401 * t586) * qJD(3) + t453;
t23 = (t401 * t97 + t402 * t96 + (t172 * t402 + t401 * t593) * qJD(1)) * qJD(3) + t500;
t22 = t120 * t225 + t121 * t227 + t124 * t607 - t125 * t276 + t126 * t277 + t223 * t284;
t21 = t118 * t225 + t119 * t227 + t124 * t606 + t125 * t278 + t126 * t279 + t223 * t285;
t18 = t313 * t48 - t314 * t47 + t356 * t81;
t7 = t120 * t138 + t121 * t141 + t135 * t284 - t276 * t67 + t277 * t69 + t607 * t65;
t6 = t120 * t136 - t121 * t140 + t133 * t284 - t276 * t68 + t277 * t70 + t607 * t66;
t5 = t118 * t138 + t119 * t141 + t135 * t285 + t278 * t67 + t279 * t69 + t606 * t65;
t4 = t118 * t136 - t119 * t140 + t133 * t285 + t278 * t68 + t279 * t70 + t606 * t66;
t3 = t144 * t234 - t146 * t233 + t313 * t72 + t314 * t71 + (t401 * t83 + t402 * t82 + (-t155 * t402 + t401 * t594) * qJD(1)) * qJD(3) + t500;
t2 = t22 * t356 + t233 * t43 + t234 * t44 + t313 * t7 - t314 * t6 + t520 * t75;
t1 = t21 * t356 + t233 * t45 + t234 * t46 + t313 * t5 - t314 * t4 + t520 * t76;
t14 = [-t654 / 0.2e1 + t653 / 0.2e1 + t648 + t21 * t662 + t76 * t664 + t75 * t665 + t13 * t660 + t631 / 0.2e1 + t632 / 0.2e1 + (t22 + t13) * t661 + (((t93 - t217 + (t250 + t611) * t402 + t589) * t402 - t633 + (t52 + t588) * t401) * qJD(3) + t710) * t512 + ((-t220 + t309) * t380 + (-t221 * t395 + t222 * t397 + t310) * t378 + (t237 * t378 + t380 * t463 - t460) * qJD(3)) * qJD(1) + (t11 * (-t487 + t499 + t568) + t39 * (-t488 + t566) + t10 * (t351 + t454 + t146) + t40 * (-t369 * t524 - t399 * t527 + t541 + t569 + t571) + (-t10 * t400 + t39 * t630 * t556 + (t11 * t630 + t39 * (qJD(3) * t369 - qJD(4))) * t378) * t401 + ((-t39 * pkin(4) * t395 + t40 * t452) * t401 + (t39 * (t378 * t399 + t452) - t40 * t400) * t402) * qJD(1) - (qJD(1) * t155 - t329 - t39 - t682 + t702) * t40) * m(6) + (t29 * (-t490 + t568) + t28 * (t351 - t593) + (-t28 * t400 + t29 * t434) * t401 - t510 * t554 + (t337 - t491 + t566 + (t556 * t691 - t366) * t401 + (-t370 + t434) * t558) * t57 + (-pkin(3) * t524 + t333 - t340 + t537 - t563 + t569 + t57 + ((t378 * t691 - t370 - t655) * t401 - t373 + t172) * qJD(1) + t682) * t58) * m(5) + (-(-qJD(1) * t272 + t243 - t329 + t495 - t98) * t99 + t74 * (-t272 + t568) + t98 * t566 + t73 * t683 + t99 * (t381 + t570) + (t324 * t634 - t638) * qJD(3) + ((-t98 * rSges(4,3) + t99 * (-t370 - t646)) * t401 + (t98 * (-t370 - t492) - t99 * t400) * t402) * qJD(1)) * m(4) + (t154 * (t401 * t523 + t384 + t565) + t196 * t382 + t153 * t681 + t197 * (t564 + t567) + (t196 * (t523 + t645) * t402 + (t196 * (-rSges(3,3) - qJ(2)) + t197 * t523) * t401) * qJD(1) - (-qJD(1) * t288 - t196 + t563) * t197) * m(3) + (t693 + t694) * t514 + (((t402 * t504 + t467 - t588 + t95) * t402 + (t401 * t504 - t50 + t505 - t700 + t711) * t401) * qJD(3) + t697 - t703) * t515 - (t692 - t695 + t696) * t554 / 0.2e1 + ((t690 + t714) * t401 + (t689 + t713) * t402) * qJD(3) * t651; 0.2e1 * (-t640 / 0.2e1 + t639 / 0.2e1) * m(6) + 0.2e1 * (t28 * t656 + t29 * t657) * m(5) + 0.2e1 * (t656 * t73 + t657 * t74) * m(4) + 0.2e1 * (t153 * t656 + t154 * t657) * m(3); -t18 * t550 / 0.2e1 + t481 * t496 + (qJD(1) * t484 + t401 * t7 - t402 * t6) * t661 + (qJD(1) * t482 - t4 * t402 + t401 * t5) * t662 + ((-t193 * t278 - t195 * t279) * t313 - (-t192 * t278 - t194 * t279) * t314 + (t226 * t278 + t228 * t279) * t356 + (t378 * t76 + t45 * t605) * qJD(5) + ((qJD(5) * t46 + t432) * t380 + t405) * t402) * t663 + t483 * t664 + t485 * t665 + (qJD(1) * t480 + t401 * t9 - t402 * t8) * t658 + (((t193 * t377 - t195 * t379 + t135) * t313 - (t192 * t377 - t194 * t379 + t133) * t314 + (-t226 * t377 + t228 * t379 + t223) * t356 + t81 * qJD(5)) * t378 + (qJD(5) * t480 - t669) * t380) * t659 + ((t193 * t276 - t195 * t277) * t313 - (t192 * t276 - t194 * t277) * t314 + (-t226 * t276 + t228 * t277) * t356 + (t378 * t75 + t44 * t604) * qJD(5) + ((qJD(5) * t43 + t432) * t380 + t405) * t401) * t660 - (-t701 * t380 + ((-t240 * t395 + t242 * t397 + t237) * qJD(1) + ((t205 * t395 - t207 * t397 + t159) * t401 - (t204 * t395 - t206 * t397 + t157) * t402) * qJD(3)) * t378 + (t378 * t573 + t380 * t572) * qJD(1) + (t429 * t378 + t380 * t670) * qJD(3)) * qJD(1) / 0.2e1 + (t695 * t402 + t694 * t401 + (t401 * t690 + t402 * t689) * qJD(1)) * t651 + ((-t205 * t306 - t207 * t307) * t555 + (t240 * t306 + t242 * t307) * qJD(1) + (-t555 * t608 + t561) * t401 + ((t306 * t204 + t307 * t206 + t401 * t609 + t679) * qJD(3) + t680) * t402) * t515 + (-(t204 * t304 - t206 * t305) * t554 + (-t240 * t304 + t242 * t305) * qJD(1) + (-t554 * t609 - t561) * t402 + ((t304 * t205 - t305 * t207 + t402 * t608 + t679) * qJD(3) + t680) * t401) * t512 - (t12 * t401 + t13 * t402) * t549 / 0.2e1 + (-t39 * (qJD(1) * t185 + t198 * t356 - t232 * t314 + t502) - t40 * (-qJD(1) * t186 - t199 * t356 - t232 * t313 + t576) - t36 * (-t198 * t313 - t199 * t314 + t532) - ((-t144 * t39 + t146 * t40) * t378 + t410 * t380) * qJD(5) - ((-t36 * t186 + t39 * t590) * t402 + (-t36 * t185 + t40 * t590) * t401) * qJD(3) + t39 * t303 + t3 * t577 + t36 * t539 + (t11 * t536 + t39 * t540 + t3 * (t146 + t156) + t36 * (t71 + t82) + (t36 * t595 + t40 * t536) * qJD(1)) * t402 + (t10 * t536 + t40 * t540 + t3 * t595 + t36 * (t72 + t83) + (t39 * t591 + t36 * (-t146 + t594)) * qJD(1)) * t401) * m(6) + (-t57 * (qJD(1) * t208 + t502) - t58 * (-qJD(1) * t209 + t576) - t63 * t532 - ((-t63 * t209 + t57 * t583) * t402 + (-t63 * t208 + t58 * t583) * t401) * qJD(3) + t57 * t303 + t23 * t577 + t63 * t539 + (t29 * t584 + t57 * t586 + t23 * t174 + t63 * t96 + (t63 * t172 + t510) * qJD(1)) * t402 + (t28 * t584 + t58 * t586 + t23 * t172 + t63 * t97 + (t57 * t244 + t593 * t63) * qJD(1)) * t401) * m(5) + (-(t296 * t98 - t638) * qJD(1) - (t147 * (-t296 * t401 - t299 * t402) + t479 * t492) * qJD(3) + 0.2e1 * t147 * (t175 * t402 + t176 * t401 + (t272 * t402 - t273 * t401) * qJD(1)) + t479 * t312 + (-t73 * t401 - t74 * t402 + (-t402 * t99 + t634) * qJD(1)) * t324) * m(4) + (t693 * qJD(1) + t1 + ((-t157 * t285 - t160 * t212 - t163 * t213 - t306 * t87 - t307 * t89 - t409 * t402 - t606 * t85) * t402 + (t159 * t285 + t162 * t212 + t165 * t213 + t306 * t86 + t307 * t88 + t401 * t674 + t606 * t84 + (t408 - t673) * t402) * t401 + (t711 * t401 + t402 * t715) * qJD(1)) * t698) * t657 + (t692 * qJD(1) + t2 + ((-t157 * t284 - t160 * t214 - t163 * t215 + t304 * t87 - t305 * t89 + t402 * t673 - t607 * t85) * t402 + (t159 * t284 + t162 * t214 + t165 * t215 - t304 * t86 + t305 * t88 + t408 * t401 + t607 * t84 + (-t409 - t674) * t402) * t401 + (t401 * t717 + t716 * t402) * qJD(1)) * t698) * t656 + (t12 + t697 + t704) * t559 / 0.2e1 + (t13 + t696 + t705) * t517; -m(5) * (t283 * t63 + t284 * t58 + t285 * t57) - m(6) * (t283 * t36 + t284 * t40 + t285 * t39) + 0.2e1 * ((t554 * t57 + t555 * t58 - t23) * t667 + (t39 * t554 + t40 * t555 - t3) * t666) * t380 + 0.2e1 * ((qJD(3) * t63 + t28 * t401 + t29 * t402 + t558 * t58 - t559 * t57) * t667 + (qJD(3) * t36 + t10 * t401 + t11 * t402 - t39 * t559 + t40 * t558) * t666) * t378; t1 * t606 / 0.2e1 + (t378 * t482 - t380 * t76) * t664 + ((qJD(3) * t482 - t21) * t380 + (-qJD(1) * t483 + qJD(3) * t76 + t4 * t401 + t402 * t5) * t378) * t662 + t2 * t607 / 0.2e1 + (t378 * t484 - t380 * t75) * t665 + ((qJD(3) * t484 - t22) * t380 + (-qJD(1) * t485 + qJD(3) * t75 + t401 * t6 + t402 * t7) * t378) * t661 + t18 * t516 - t380 * (t631 + t632 + t648 + t653 - t654) / 0.2e1 + (t378 * t480 - t380 * t81) * t496 + ((qJD(3) * t480 - t27) * t380 + (-qJD(1) * t481 + qJD(3) * t81 + t401 * t8 + t402 * t9) * t378) * t658 + (t278 * t668 + t417 * t279 - t402 * t428) * t663 + (-t276 * t668 + t277 * t417 - t401 * t428) * t660 + (t431 * t380 + (-t377 * t668 + t379 * t417) * t378) * t659 + (-t530 / 0.2e1 + t380 * t512) * t13 + (t378 * t517 + t380 * t514) * t12 + ((qJD(3) * t410 - t10 * t146 + t11 * t144 + t39 * t72 - t40 * t71) * t380 + (t39 * (-qJD(3) * t144 + t127 * t401) + t40 * (qJD(3) * t146 - t127 * t402) + t3 * t468 + t36 * (-t144 * t559 - t146 * t558 - t401 * t71 + t402 * t72) + (-t640 + t639 + (t39 * t402 + t40 * t401) * qJD(1)) * t231) * t378 - t39 * (-t183 * t356 - t269 * t314) - t40 * (t184 * t356 - t269 * t313) - t36 * (t183 * t313 + t184 * t314)) * m(6);];
tauc = t14(:);