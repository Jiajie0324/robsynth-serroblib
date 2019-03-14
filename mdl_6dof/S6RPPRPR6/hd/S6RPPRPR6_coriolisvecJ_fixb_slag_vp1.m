% Calculate vector of centrifugal and Coriolis load on the joints for
% S6RPPRPR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d6]';
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
% Datum: 2019-03-09 01:51
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S6RPPRPR6_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(8,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRPR6_coriolisvecJ_fixb_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRPR6_coriolisvecJ_fixb_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPPRPR6_coriolisvecJ_fixb_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRPR6_coriolisvecJ_fixb_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPPRPR6_coriolisvecJ_fixb_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPPRPR6_coriolisvecJ_fixb_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:50:43
% EndTime: 2019-03-09 01:51:27
% DurationCPUTime: 40.31s
% Computational Cost: add. (9635->923), mult. (25109->1191), div. (0->0), fcn. (22066->6), ass. (0->451)
t369 = sin(qJ(4));
t372 = cos(qJ(4));
t600 = Icges(6,6) * t372;
t284 = Icges(6,3) * t369 - t600;
t611 = Icges(5,4) * t372;
t292 = -Icges(5,2) * t369 + t611;
t736 = t284 - t292;
t612 = Icges(5,4) * t369;
t361 = Icges(6,6) * t369;
t671 = -Icges(6,2) * t372 + t361;
t733 = Icges(5,1) * t372 - t612 - t671;
t285 = Icges(6,2) * t369 + t600;
t451 = Icges(5,1) * t369 + t611;
t741 = -t285 - t451;
t735 = (-Icges(6,4) + Icges(5,5)) * t372 + (Icges(6,5) - Icges(5,6)) * t369;
t444 = Icges(6,3) * t372 + t361;
t449 = Icges(5,2) * t372 + t612;
t740 = t444 + t449;
t739 = t733 * t369 - t372 * t736;
t370 = sin(qJ(1));
t675 = t735 * t370;
t373 = cos(qJ(1));
t674 = t735 * t373;
t738 = t740 * qJD(4);
t737 = t741 * qJD(4);
t289 = Icges(6,4) * t369 + Icges(6,5) * t372;
t447 = Icges(5,5) * t369 + Icges(5,6) * t372;
t734 = -t289 + t447;
t200 = Icges(5,6) * t373 + t370 * t449;
t204 = Icges(5,5) * t373 + t370 * t451;
t439 = t200 * t372 + t204 * t369;
t196 = Icges(5,3) * t373 + t370 * t447;
t592 = t196 * t373;
t74 = t370 * t439 + t592;
t587 = t370 * t372;
t590 = t369 * t370;
t613 = Icges(6,1) * t373;
t211 = -Icges(6,4) * t590 - Icges(6,5) * t587 + t613;
t327 = Icges(6,6) * t590;
t604 = Icges(6,5) * t373;
t207 = -Icges(6,3) * t587 - t327 + t604;
t328 = Icges(6,6) * t587;
t610 = Icges(6,4) * t373;
t209 = -Icges(6,2) * t590 - t328 + t610;
t436 = t207 * t372 + t209 * t369;
t81 = t211 * t373 - t370 * t436;
t731 = t74 + t81;
t197 = -Icges(5,3) * t370 + t373 * t447;
t185 = t373 * t197;
t201 = -Icges(5,6) * t370 + t373 * t449;
t585 = t372 * t373;
t333 = Icges(5,4) * t585;
t589 = t369 * t373;
t606 = Icges(5,5) * t370;
t205 = Icges(5,1) * t589 + t333 - t606;
t75 = t201 * t587 + t205 * t590 + t185;
t210 = -Icges(6,1) * t370 - t289 * t373;
t186 = t373 * t210;
t206 = -Icges(6,5) * t370 - t373 * t444;
t208 = -Icges(6,4) * t370 - t285 * t373;
t437 = t206 * t372 + t208 * t369;
t80 = -t370 * t437 + t186;
t730 = -t75 - t80;
t415 = t436 * t373;
t573 = t200 * t585 + t204 * t589;
t593 = t196 * t370;
t729 = -t211 * t370 - t415 + t573 - t593;
t572 = t201 * t585 + t205 * t589;
t704 = t373 * t437 - t572 + (t197 + t210) * t370;
t728 = t370 * t739 + t674;
t727 = t373 * t739 - t675;
t726 = t200 - t207;
t725 = t201 - t206;
t724 = -t204 + t209;
t723 = -t205 + t208;
t722 = -t738 * t372 + t737 * t369 + (t369 * t736 + t372 * t733) * qJD(4) - t735 * qJD(1);
t721 = t736 * qJD(4);
t720 = t733 * qJD(4);
t719 = t201 * t372 + t205 * t369 - t437;
t718 = -qJD(1) * t739 + qJD(4) * t734;
t717 = t727 * qJD(1);
t716 = t197 + t439;
t715 = -t210 + t436;
t714 = (t730 * t370 + t373 * t731) * qJD(4);
t713 = (t370 * t704 + t373 * t729) * qJD(4);
t712 = t728 * qJD(1);
t711 = t712 + t714;
t710 = t713 + t717;
t709 = (t720 * t370 + (t373 * t451 - t208 - t606) * qJD(1)) * t372 + (-t725 * qJD(1) + t721 * t370) * t369 + (-t439 + t436) * qJD(4);
t708 = (-t720 * t373 + (t285 * t370 + t204 - t610) * qJD(1)) * t372 + (-t721 * t373 + (-t370 * t444 - t200 + t604) * qJD(1)) * t369 + t719 * qJD(4);
t707 = t718 * t370 + t722 * t373;
t706 = t722 * t370 - t718 * t373;
t703 = t726 * t369 + t724 * t372;
t702 = t725 * t369 + t723 * t372;
t701 = t735 * qJD(4);
t700 = t370 * (Icges(5,2) * t589 + t284 * t373 - t333 + t723) - t373 * (Icges(6,3) * t590 - t292 * t370 - t328 + t724);
t302 = -rSges(6,2) * t372 + rSges(6,3) * t369;
t255 = t302 * t370;
t626 = rSges(6,2) * t369;
t463 = rSges(6,3) * t372 + t626;
t217 = -rSges(6,1) * t370 - t373 * t463;
t540 = qJD(1) * t217;
t153 = qJD(4) * t255 + t540;
t636 = pkin(4) * t369;
t295 = qJ(5) * t372 - t636;
t353 = qJD(5) * t369;
t223 = qJD(4) * t295 + t353;
t354 = qJD(5) * t372;
t323 = t370 * t354;
t523 = qJD(4) * qJD(5);
t496 = t369 * t523;
t525 = qJD(1) * qJD(2);
t346 = t373 * t525;
t524 = qJD(1) * qJD(3);
t550 = -0.2e1 * t370 * t524 + t346;
t375 = qJD(1) ^ 2;
t586 = t370 * t375;
t508 = pkin(7) * t586 + t550;
t531 = qJD(4) * t373;
t426 = qJD(1) * t323 + t223 * t531 + t373 * t496 + t508;
t596 = qJ(3) * t375;
t692 = qJD(4) ^ 2;
t433 = t463 * t692 - t596;
t533 = qJD(4) * t370;
t595 = qJ(5) * t369;
t301 = pkin(4) * t372 + t595;
t554 = t301 + t302;
t535 = qJD(1) * t373;
t502 = t372 * t535;
t312 = qJ(5) * t502;
t532 = qJD(4) * t372;
t405 = t369 * t535 + t370 * t532;
t501 = t369 * t533;
t129 = pkin(4) * t405 + qJ(5) * t501 - t312 - t323;
t304 = t373 * pkin(1) + t370 * qJ(2);
t357 = qJD(2) * t373;
t224 = qJD(1) * t304 - t357;
t574 = -t129 - t224;
t29 = t433 * t373 + (-t533 * t554 - t153 + t574) * qJD(1) + t426;
t343 = pkin(4) * t589;
t257 = -qJ(5) * t585 + t343;
t672 = t373 * qJ(3) + t304;
t470 = t257 + t672;
t537 = qJD(1) * t370;
t547 = pkin(7) * t537 + t357;
t509 = t323 + t547;
t68 = (qJD(4) * t554 + qJD(3)) * t370 + (t217 + t470) * qJD(1) - t509;
t699 = qJD(1) * t68 + t29;
t698 = (t701 * t370 + (-t715 + t716) * qJD(1)) * t373;
t697 = (Icges(6,2) * t587 - t327 - t726) * t373 + (t373 * t671 + t725) * t370;
t696 = t736 + t741;
t695 = t733 - t740;
t529 = qJD(6) * t369;
t267 = t373 * t529 - t533;
t268 = t370 * t529 + t531;
t528 = qJD(6) * t372;
t339 = qJD(1) + t528;
t368 = sin(qJ(6));
t371 = cos(qJ(6));
t233 = t368 * t370 - t371 * t585;
t234 = t368 * t585 + t370 * t371;
t119 = -Icges(7,5) * t234 + Icges(7,6) * t233 + Icges(7,3) * t589;
t609 = Icges(7,4) * t234;
t122 = Icges(7,2) * t233 + Icges(7,6) * t589 - t609;
t220 = Icges(7,4) * t233;
t125 = -Icges(7,1) * t234 + Icges(7,5) * t589 + t220;
t40 = t119 * t589 + t233 * t122 - t234 * t125;
t235 = t368 * t373 + t371 * t587;
t236 = -t368 * t587 + t371 * t373;
t120 = Icges(7,5) * t236 - Icges(7,6) * t235 + Icges(7,3) * t590;
t222 = Icges(7,4) * t236;
t123 = -Icges(7,2) * t235 + Icges(7,6) * t590 + t222;
t221 = Icges(7,4) * t235;
t127 = -Icges(7,1) * t236 - Icges(7,5) * t590 + t221;
t41 = t120 * t589 + t233 * t123 + t127 * t234;
t446 = Icges(7,5) * t368 + Icges(7,6) * t371;
t194 = Icges(7,3) * t372 + t369 * t446;
t608 = Icges(7,4) * t368;
t448 = Icges(7,2) * t371 + t608;
t198 = Icges(7,6) * t372 + t369 * t448;
t607 = Icges(7,4) * t371;
t331 = t369 * t607;
t591 = t368 * t369;
t603 = Icges(7,5) * t372;
t202 = Icges(7,1) * t591 + t331 + t603;
t70 = t194 * t589 + t198 * t233 - t202 * t234;
t10 = t267 * t40 + t268 * t41 + t70 * t339;
t42 = t119 * t590 - t235 * t122 + t236 * t125;
t43 = t120 * t590 - t123 * t235 - t127 * t236;
t71 = t194 * t590 - t198 * t235 + t202 * t236;
t11 = t267 * t42 + t268 * t43 + t339 * t71;
t442 = t123 * t371 - t127 * t368;
t45 = t120 * t372 + t369 * t442;
t530 = qJD(5) * t373;
t588 = t370 * t301;
t688 = qJD(1) * t588 + t373 * t223 - t295 * t531 - t369 * t530;
t521 = -rSges(7,3) - pkin(4) - pkin(8);
t629 = -pkin(1) - qJ(3);
t667 = t521 * t369 + t629;
t500 = t369 * t531;
t536 = qJD(1) * t372;
t232 = t370 * t536 + t500;
t584 = t373 * t301;
t685 = -qJD(1) * t584 - t295 * t533 + t301 * t535 + (t223 - t353) * t370;
t684 = t701 * t373 + (t289 * t370 - t196 - t613 + t719) * qJD(1);
t670 = -t370 * rSges(4,2) - t373 * rSges(4,3);
t682 = t672 - t670;
t465 = rSges(7,1) * t236 - rSges(7,2) * t235;
t131 = rSges(7,3) * t590 + t465;
t499 = t372 * t531;
t319 = pkin(8) * t499;
t681 = -t131 * t339 + t319;
t498 = t372 * t530;
t504 = t369 * t537;
t511 = pkin(4) * t499 + qJ(5) * t232;
t128 = -pkin(4) * t504 - t498 + t511;
t510 = rSges(6,2) * t504 + rSges(6,3) * t232;
t154 = (-rSges(6,1) * qJD(1) - rSges(6,2) * t532) * t373 + t510;
t552 = rSges(6,2) * t590 + rSges(6,3) * t587;
t218 = rSges(6,1) * t373 - t552;
t325 = qJ(5) * t587;
t253 = pkin(4) * t590 - t325;
t562 = -t218 - t253;
t680 = (t540 - t129 - t153) * t370 + (qJD(1) * t562 - t128 - t154) * t373;
t679 = 0.2e1 * qJD(4);
t212 = t257 * t537;
t676 = t212 - t354;
t482 = -rSges(3,2) * t373 + t370 * rSges(3,3);
t673 = t304 + t482;
t669 = t697 * t369 + t372 * t700;
t668 = (t369 * t696 + t372 * t695) * qJD(1);
t666 = t734 * qJD(1);
t467 = rSges(5,1) * t369 + rSges(5,2) * t372;
t214 = rSges(5,3) * t373 + t370 * t467;
t392 = t267 * (Icges(7,2) * t234 + t125 + t220) + t268 * (-Icges(7,2) * t236 - t127 - t221) + t339 * (-Icges(7,2) * t591 + t202 + t331);
t249 = (Icges(7,1) * t371 - t608) * t369;
t655 = t267 * (-Icges(7,1) * t233 + t122 - t609) + t268 * (Icges(7,1) * t235 + t123 + t222) + t339 * (t198 - t249);
t654 = m(6) / 0.2e1;
t653 = m(7) / 0.2e1;
t652 = -pkin(5) - pkin(7);
t522 = qJD(4) * qJD(6);
t494 = t372 * t522;
t183 = qJD(1) * t267 + t370 * t494;
t651 = t183 / 0.2e1;
t184 = -qJD(1) * t268 + t373 * t494;
t650 = t184 / 0.2e1;
t649 = -t267 / 0.2e1;
t648 = t267 / 0.2e1;
t647 = -t268 / 0.2e1;
t646 = t268 / 0.2e1;
t645 = -t339 / 0.2e1;
t644 = t339 / 0.2e1;
t642 = t370 / 0.2e1;
t641 = -t373 / 0.2e1;
t639 = -rSges(6,1) - pkin(7);
t638 = rSges(3,2) - pkin(1);
t637 = -rSges(5,3) - pkin(7);
t635 = pkin(8) * t372;
t634 = pkin(8) * t692;
t443 = t122 * t371 + t125 * t368;
t478 = qJD(6) + t536;
t397 = t370 * t478 + t500;
t430 = t339 * t368;
t109 = t371 * t397 + t373 * t430;
t431 = t371 * t339;
t110 = t368 * t397 - t373 * t431;
t404 = t499 - t504;
t57 = Icges(7,5) * t110 + Icges(7,6) * t109 + Icges(7,3) * t404;
t59 = Icges(7,4) * t110 + Icges(7,2) * t109 + Icges(7,6) * t404;
t61 = Icges(7,1) * t110 + Icges(7,4) * t109 + Icges(7,5) * t404;
t8 = (qJD(4) * t443 + t57) * t372 + (-qJD(4) * t119 + t368 * t61 + t371 * t59 + (-t122 * t368 + t125 * t371) * qJD(6)) * t369;
t633 = t8 * t267;
t429 = t478 * t373;
t534 = qJD(4) * t369;
t107 = -t371 * t429 + (t371 * t534 + t430) * t370;
t108 = -t370 * t431 + (-t429 + t501) * t368;
t56 = Icges(7,5) * t108 + Icges(7,6) * t107 + Icges(7,3) * t405;
t58 = Icges(7,4) * t108 + Icges(7,2) * t107 + Icges(7,6) * t405;
t60 = Icges(7,1) * t108 + Icges(7,4) * t107 + Icges(7,5) * t405;
t9 = (qJD(4) * t442 + t56) * t372 + (-qJD(4) * t120 + t368 * t60 + t371 * t58 + (-t123 * t368 - t127 * t371) * qJD(6)) * t369;
t632 = t9 * t268;
t631 = -qJD(1) / 0.2e1;
t627 = rSges(4,2) * t373;
t625 = rSges(3,3) * t373;
t624 = rSges(5,3) * t370;
t130 = -t234 * rSges(7,1) + t233 * rSges(7,2) + rSges(7,3) * t589;
t464 = rSges(7,1) * t368 + rSges(7,2) * t371;
t215 = -rSges(7,3) * t369 + t372 * t464;
t252 = (rSges(7,1) * t371 - rSges(7,2) * t368) * t369;
t150 = qJD(4) * t215 + qJD(6) * t252;
t281 = pkin(5) * t373 + pkin(8) * t590;
t188 = -qJD(1) * t281 + t319;
t213 = rSges(7,3) * t372 + t369 * t464;
t263 = t301 * t531;
t347 = qJ(2) * t535;
t356 = qJD(2) * t370;
t549 = t347 + t356;
t561 = qJD(1) * (-pkin(1) * t537 + t549) + t370 * t525;
t513 = 0.2e1 * t373 * t524 + t561;
t406 = t223 * t533 + t370 * t496 + t513 + (t128 + t263) * qJD(1);
t597 = qJ(3) * t370;
t462 = -pkin(7) * t373 - t597;
t515 = t110 * rSges(7,1) + t109 * rSges(7,2) + rSges(7,3) * t499;
t63 = -rSges(7,3) * t504 + t515;
t12 = -t150 * t267 - t184 * t213 + t339 * t63 + t462 * t375 + (-t130 * t522 - t370 * t634) * t369 + (t188 + (pkin(8) * qJD(4) - qJD(5)) * t585) * qJD(1) + t406;
t622 = t12 * t373;
t187 = -pkin(5) * t537 + pkin(8) * t405;
t484 = t301 + t635;
t583 = t373 * t375;
t517 = qJ(3) * t583;
t466 = rSges(7,1) * t108 + rSges(7,2) * t107;
t62 = rSges(7,3) * t405 + t466;
t13 = -t517 + t150 * t268 + t183 * t213 - t339 * t62 + (t131 * t522 - t373 * t634) * t369 + (-t484 * t533 - t187 + t574) * qJD(1) + t426;
t621 = t13 * t370;
t342 = pkin(8) * t589;
t280 = -pkin(5) * t370 + t342;
t39 = t130 * t339 - t213 * t267 + (qJD(4) * t484 + qJD(3)) * t370 + (t280 + t470) * qJD(1) - t509;
t617 = t39 * t213;
t44 = t119 * t372 + t369 * t443;
t616 = t44 * t184;
t615 = t45 * t183;
t614 = -rSges(6,3) - qJ(5);
t559 = -t257 - t280;
t560 = -t253 - t281;
t34 = -t130 * t268 + t131 * t267 + t353 + (t370 * t560 + t373 * t559) * qJD(4);
t594 = qJD(4) * t34;
t577 = -t128 - t188;
t575 = -t129 - t187;
t571 = qJD(4) * t212 + t372 * t523;
t563 = -t217 - t257;
t360 = t373 * qJ(2);
t553 = t325 + t360;
t551 = rSges(5,1) * t589 + rSges(5,2) * t585;
t548 = rSges(3,2) * t537 + rSges(3,3) * t535;
t355 = qJD(3) * t373;
t546 = t355 + t356;
t298 = pkin(1) * t370 - t360;
t282 = qJD(1) * t298;
t545 = t356 - t282;
t543 = t370 ^ 2 + t373 ^ 2;
t520 = -rSges(4,3) + t629;
t519 = pkin(7) * t583;
t518 = rSges(5,2) * t534;
t427 = -t298 + t462;
t407 = -t253 + t427;
t414 = t263 - t498 + t546;
t38 = t213 * t268 + (-t281 + t407) * qJD(1) + t414 + t681;
t516 = t38 * t537;
t514 = -t131 + t560;
t507 = t347 + t546;
t506 = t355 + t545;
t303 = rSges(5,1) * t372 - rSges(5,2) * t369;
t265 = t303 * t531;
t497 = t589 / 0.2e1;
t495 = t369 * t522;
t493 = -t537 / 0.2e1;
t491 = -t534 / 0.2e1;
t489 = t533 / 0.2e1;
t488 = -t531 / 0.2e1;
t487 = t531 / 0.2e1;
t485 = t213 + t635;
t480 = -rSges(4,3) * t370 - t597 + t627;
t477 = t312 + t509;
t476 = t343 + t672;
t475 = t629 - t636;
t472 = qJD(6) * t491;
t471 = -pkin(8) * t534 + t150;
t461 = t12 * t370 + t13 * t373;
t28 = -t519 + t433 * t370 + (t154 + (qJD(4) * t302 - t354) * t373) * qJD(1) + t406;
t460 = t28 * t370 + t29 * t373;
t459 = t370 * t41 + t373 * t40;
t458 = -t370 * t40 + t373 * t41;
t457 = t370 * t43 + t373 * t42;
t456 = -t370 * t42 + t373 * t43;
t455 = t370 * t45 + t373 * t44;
t454 = -t370 * t44 + t373 * t45;
t316 = rSges(5,1) * t499;
t151 = -rSges(5,2) * t500 - qJD(1) * t214 + t316;
t278 = t467 * qJD(4);
t432 = -qJD(4) * t278 - t596;
t54 = -t519 + t432 * t370 + (t151 + t265) * qJD(1) + t513;
t256 = t303 * t370;
t152 = qJD(4) * t256 + (t373 * t467 - t624) * qJD(1);
t55 = t432 * t373 + (-t303 * t533 - t152 - t224) * qJD(1) + t508;
t453 = t54 * t370 + t55 * t373;
t85 = t265 + (-t214 + t427) * qJD(1) + t546;
t216 = t551 - t624;
t86 = (qJD(4) * t303 + qJD(3)) * t370 + (t216 + t672) * qJD(1) - t547;
t452 = t370 * t86 + t373 * t85;
t450 = Icges(7,1) * t368 + t607;
t441 = -t130 * t370 + t131 * t373;
t440 = t198 * t371 + t202 * t368;
t195 = -Icges(7,3) * t369 + t372 * t446;
t241 = (Icges(7,5) * t371 - Icges(7,6) * t368) * t369;
t133 = qJD(4) * t195 + qJD(6) * t241;
t199 = -Icges(7,6) * t369 + t372 * t448;
t136 = (-Icges(7,2) * t368 + t607) * t529 + t199 * qJD(4);
t203 = -Icges(7,5) * t369 + t372 * t450;
t139 = qJD(4) * t203 + qJD(6) * t249;
t19 = (qJD(4) * t440 + t133) * t372 + (-qJD(4) * t194 + t136 * t371 + t139 * t368 + (-t198 * t368 + t202 * t371) * qJD(6)) * t369;
t73 = t194 * t372 + t369 * t440;
t428 = t19 * t339 - t495 * t73;
t425 = t507 + t511;
t422 = -t211 - t437;
t416 = -t467 + t629;
t95 = (-t214 * t370 - t216 * t373) * qJD(4);
t403 = t119 * t267 + t120 * t268 + t194 * t339;
t402 = (Icges(7,5) * t233 + Icges(7,6) * t234) * t267 + (-Icges(7,5) * t235 - Icges(7,6) * t236) * t268 + t241 * t339;
t399 = -qJD(1) * t253 - t282 + t414;
t398 = t369 * t402;
t396 = t369 * t450 + t603;
t386 = t34 * t441 + (t370 * t38 - t373 * t39) * t213;
t377 = (t194 * t373 + t443) * t267 + (t194 * t370 + t442) * t268 + (t195 + t440) * t339;
t376 = t377 * t369;
t350 = rSges(4,2) * t535;
t299 = rSges(3,2) * t370 + t625;
t264 = t302 * t531;
t260 = t303 * t373;
t259 = t302 * t373;
t231 = t501 - t502;
t230 = t543 * t532;
t176 = t213 * t373;
t175 = t213 * t370;
t174 = t396 * t373;
t173 = t396 * t370;
t172 = t198 * t373;
t171 = t198 * t370;
t168 = qJD(1) * t673 - t357;
t167 = t356 + (-t298 + t299) * qJD(1);
t164 = -rSges(7,1) * t235 - rSges(7,2) * t236;
t163 = rSges(7,1) * t233 + rSges(7,2) * t234;
t156 = qJD(1) * t682 + qJD(3) * t370 - t357;
t155 = (-t298 + t480) * qJD(1) + t546;
t149 = t346 + (-qJD(1) * t482 - t224) * qJD(1);
t148 = qJD(1) * t548 + t561;
t94 = -t517 + (qJD(1) * t670 - t224) * qJD(1) + t550;
t93 = -qJ(3) * t586 + qJD(1) * (-rSges(4,3) * t537 + t350) + t513;
t72 = t353 + (t370 * t562 + t373 * t563) * qJD(4);
t67 = t264 + (-t218 + t407) * qJD(1) + t414;
t17 = qJD(4) * t680 + t571;
t16 = t109 * t198 + t110 * t202 + t133 * t589 + t136 * t233 - t139 * t234 + t194 * t404;
t15 = t107 * t198 + t108 * t202 + t133 * t590 - t136 * t235 + t139 * t236 + t194 * t405;
t14 = t267 * t44 + t268 * t45 + t339 * t73;
t7 = -t130 * t183 + t131 * t184 + t267 * t62 - t268 * t63 + ((qJD(1) * t280 + t575) * t370 + (qJD(1) * t560 + t577) * t373) * qJD(4) + t571;
t6 = t109 * t123 - t110 * t127 + t120 * t404 + t233 * t58 - t234 * t60 + t56 * t589;
t5 = t109 * t122 + t110 * t125 + t119 * t404 + t233 * t59 - t234 * t61 + t57 * t589;
t4 = t107 * t123 - t108 * t127 + t120 * t405 - t235 * t58 + t236 * t60 + t56 * t590;
t3 = t107 * t122 + t108 * t125 + t119 * t405 - t235 * t59 + t236 * t61 + t57 * t590;
t2 = t16 * t339 + t183 * t41 + t184 * t40 + t267 * t5 + t268 * t6 - t495 * t70;
t1 = t15 * t339 + t183 * t43 + t184 * t42 + t267 * t3 + t268 * t4 - t495 * t71;
t18 = [t428 + t633 / 0.2e1 + t632 / 0.2e1 + t616 / 0.2e1 + t615 / 0.2e1 + t15 * t646 + t16 * t648 + t70 * t650 + t71 * t651 + ((-t80 + t186 - t415) * t531 + (-t370 * t715 - t81) * t533 + (t573 * t373 + (t370 * t716 - t572 - t74) * t370) * qJD(4) + t717) * t488 + (t647 + t646) * t10 + (-qJD(4) * t739 + t738 * t369 + t737 * t372) * qJD(1) + (t13 * (-t465 + t553) + t38 * (-t466 + t477) + t12 * (t342 + t476 + t130) + t39 * (t319 + t425 + t515) + (t13 * t652 + (-qJ(5) * t12 - qJD(5) * t39) * t372 + (t38 * t667 + t39 * t652) * qJD(1)) * t373 + (t12 * t652 + (-qJD(3) + (t372 * t521 - t595) * qJD(4) + (pkin(5) - qJ(2)) * qJD(1)) * t38 + (qJD(1) * t39 + t13) * t667) * t370 - t617 * t268 - (-t38 + t399 + (-t281 + t462) * qJD(1) + t681) * t39) * m(7) + (t29 * (t552 + t553) + t67 * t477 + t28 * t476 + t68 * (t425 + t510) + (t29 * t639 - t28 * t626 + (t28 * t614 + t68 * (-rSges(6,2) * qJD(4) - qJD(5))) * t372 + (t67 * (t463 + t475) + t68 * t639) * qJD(1)) * t373 + (t28 * t639 + t699 * t475 + (-qJD(3) + ((rSges(6,2) - pkin(4)) * t372 + t614 * t369) * qJD(4) + (rSges(6,1) - qJ(2)) * qJD(1)) * t67) * t370 - (t264 - t67 + (-t218 + t462) * qJD(1) + t399) * t68) * m(6) + (t55 * t360 + t85 * t547 + t54 * (t672 + t551) + t86 * (t316 + t507) + (t55 * t637 - t86 * t518 + (t416 * t85 + t637 * t86) * qJD(1)) * t373 + (t55 * t416 + t85 * (-rSges(5,1) * t532 - qJD(3) + t518) + t54 * t637 + (t85 * (rSges(5,3) - qJ(2)) + t86 * t416) * qJD(1)) * t370 - (t265 - t85 + (-t214 + t462) * qJD(1) + t506) * t86) * m(5) + (t94 * (t360 + t627) + t155 * t357 + t93 * t682 + t156 * (t350 + t507) + (-t155 * qJD(3) + t520 * t94) * t370 + (t155 * t520 * t373 + (t155 * (-rSges(4,2) - qJ(2)) + t156 * t520) * t370) * qJD(1) - (qJD(1) * t480 - t155 + t506) * t156) * m(4) + (t149 * (t370 * t638 + t360 + t625) + t167 * t357 + t148 * t673 + t168 * (t548 + t549) + (t167 * t638 * t373 + (t167 * (-rSges(3,3) - qJ(2)) - t168 * pkin(1)) * t370) * qJD(1) - (qJD(1) * t299 - t167 + t545) * t168) * m(3) - (t707 - t708) * t533 / 0.2e1 + (((t373 * t422 + t572 - t592 + t704) * t373 + (t370 * t422 - t185 - t593 - t729 + t75) * t370) * qJD(4) + t711 - t712) * t489 + (t706 + t709 + t710) * t487 + ((-t703 + t728) * t370 + (-t702 + t727) * t373) * qJD(4) * t631; 0.2e1 * (-t622 / 0.2e1 + t621 / 0.2e1) * m(7) + 0.2e1 * (t28 * t641 + t29 * t642) * m(6) + 0.2e1 * (t54 * t641 + t55 * t642) * m(5) + 0.2e1 * (t641 * t93 + t642 * t94) * m(4) + 0.2e1 * (t148 * t641 + t149 * t642) * m(3); m(4) * (t370 * t93 + t373 * t94) + m(5) * t453 + m(6) * t460 + m(7) * t461; t14 * t529 / 0.2e1 + (-qJD(1) * t455 - t370 * t8 + t373 * t9) * t644 + (((t172 * t371 + t174 * t368 - t119) * t267 + (t171 * t371 + t173 * t368 - t120) * t268 + (t199 * t371 + t203 * t368 - t194) * t339 - t73 * qJD(6)) * t369 + (qJD(6) * t455 + t377) * t372) * t645 + (-qJD(1) * t457 - t3 * t370 + t373 * t4) * t646 + ((-t172 * t235 + t174 * t236) * t267 + (-t171 * t235 + t173 * t236) * t268 + (-t199 * t235 + t203 * t236) * t339 + (-t369 * t71 + t42 * t585) * qJD(6) + ((qJD(6) * t43 + t403) * t372 + t376) * t370) * t647 + (-qJD(1) * t459 - t370 * t5 + t373 * t6) * t648 + ((t172 * t233 - t174 * t234) * t267 + (t171 * t233 - t173 * t234) * t268 + (t199 * t233 - t203 * t234) * t339 + (-t369 * t70 + t41 * t587) * qJD(6) + ((qJD(6) * t40 + t403) * t372 + t376) * t373) * t649 + t458 * t650 + t456 * t651 + t454 * t472 + ((-t369 * t700 + t697 * t372) * qJD(4) + (-t369 * t695 + t372 * t696) * qJD(1)) * t631 + (t709 * t373 + t708 * t370 + (t703 * t370 + t702 * t373) * qJD(1)) * qJD(1) / 0.2e1 + ((t533 * t674 + t666) * t370 + ((-t370 * t675 + t669) * qJD(4) + t668) * t373) * t489 + ((t531 * t675 - t666) * t373 + ((-t373 * t674 + t669) * qJD(4) + t668) * t370) * t488 - (t10 * t373 + t11 * t370) * t528 / 0.2e1 + (t13 * t584 + t12 * t588 + (t13 * t485 + t7 * (-t130 + t559) + t617 * qJD(1)) * t373 + (t12 * t485 + t7 * t514) * t370 - ((-t543 * t594 - t516) * pkin(8) + t386 * qJD(6)) * t372 + (t471 * t373 + (-t213 - t484) * t537 + t175 * t339 - t215 * t268 - (-pkin(8) * t531 + qJD(6) * t131) * t369 + t688) * t38 + ((qJD(1) * t514 + t577 - t63) * t373 + (-t62 + t575 + (t130 + t280) * qJD(1)) * t370 - t175 * t267 + t176 * t268 + t588 * t533 + t584 * t531 + t676) * t34 + (t471 * t370 - t176 * t339 + t215 * t267 - (-pkin(8) * t533 - qJD(6) * t130) * t369 + t685) * t39) * m(7) + (t29 * t584 + t28 * t588 + (t17 * t563 + t302 * t699) * t373 + (t17 * t562 + t28 * t302) * t370 + (-((-t584 - t259) * t373 + (-t588 - t255) * t370) * qJD(4) + t676 + t680) * t72 + (-qJD(1) * t259 + t685) * t68 + ((-t370 * t554 + t255) * qJD(1) + t688) * t67) * m(6) + (-(-t256 * t85 + t260 * t86) * qJD(1) - (t95 * (-t256 * t370 - t260 * t373) - t452 * t467) * qJD(4) + 0.2e1 * t95 * (-t151 * t373 - t152 * t370 + (-t214 * t373 + t216 * t370) * qJD(1)) - t452 * t278 + ((-t370 * t85 + t373 * t86) * qJD(1) + t453) * t303) * m(5) - (t2 + t707 * qJD(1) + (t704 * t535 + (-qJD(1) * t729 + t684 * t370 - t698) * t370) * t679) * t370 / 0.2e1 + (t1 + t706 * qJD(1) + ((t730 * qJD(1) + t698) * t373 + (-t731 * qJD(1) - t684 * t373) * t370) * t679) * t373 / 0.2e1 + (t11 + t711 + t714) * t493 - (t10 + t710 + t713) * t535 / 0.2e1; -m(6) * (t230 * t72 + t231 * t68 + t232 * t67) - m(7) * (t230 * t34 + t231 * t39 + t232 * t38) + 0.2e1 * ((t531 * t67 + t533 * t68 + t17) * t654 + (t38 * t531 + t39 * t533 + t7) * t653) * t369 + 0.2e1 * ((qJD(4) * t72 - t535 * t68 + t537 * t67 - t460) * t654 + (-t39 * t535 - t461 + t516 + t594) * t653) * t372; t2 * t497 + (t369 * t459 + t372 * t70) * t650 + ((qJD(4) * t459 + t16) * t372 + (qJD(1) * t458 - qJD(4) * t70 + t370 * t6 + t373 * t5) * t369) * t648 + t1 * t590 / 0.2e1 + (t369 * t457 + t372 * t71) * t651 + ((qJD(4) * t457 + t15) * t372 + (qJD(1) * t456 - qJD(4) * t71 + t3 * t373 + t370 * t4) * t369) * t646 + t14 * t491 + t372 * (t428 + t615 + t616 + t632 + t633) / 0.2e1 + (t369 * t455 + t372 * t73) * t472 + ((qJD(4) * t455 + t19) * t372 + (qJD(1) * t454 - qJD(4) * t73 + t370 * t9 + t373 * t8) * t369) * t644 + (t392 * t233 + t234 * t655 + t373 * t398) * t649 + (-t235 * t392 - t236 * t655 + t370 * t398) * t647 + (t402 * t372 + (-t368 * t655 + t371 * t392) * t369) * t645 + (qJD(1) * t497 + t372 * t489) * t11 + (t369 * t493 + t372 * t487) * t10 + ((qJD(4) * t386 + t12 * t130 - t13 * t131 - t38 * t62 + t39 * t63) * t372 + (t38 * (qJD(4) * t131 + t150 * t370) + t39 * (-qJD(4) * t130 - t150 * t373) + t7 * t441 + t34 * (-t130 * t535 - t131 * t537 - t370 * t63 + t373 * t62) + (-t622 + t621 + (t370 * t39 + t373 * t38) * qJD(1)) * t213) * t369 - t38 * (-t164 * t339 + t252 * t268) - t39 * (t163 * t339 - t252 * t267) - t34 * (-t163 * t268 + t164 * t267)) * m(7);];
tauc  = t18(:);