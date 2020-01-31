% Calculate time derivative of joint inertia matrix for
% S5RRRRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d2,d3,d4]';
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
% MqD [5x5]
%   time derivative of inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:55
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S5RRRRP6_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRRP6_inertiaDJ_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRRP6_inertiaDJ_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RRRRP6_inertiaDJ_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RRRRP6_inertiaDJ_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RRRRP6_inertiaDJ_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RRRRP6_inertiaDJ_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:52:50
% EndTime: 2019-12-31 21:53:29
% DurationCPUTime: 23.63s
% Computational Cost: add. (33765->881), mult. (45928->1197), div. (0->0), fcn. (43636->8), ass. (0->446)
t375 = qJ(2) + qJ(3);
t368 = cos(t375);
t380 = cos(qJ(4));
t382 = cos(qJ(1));
t545 = t380 * t382;
t377 = sin(qJ(4));
t379 = sin(qJ(1));
t548 = t377 * t379;
t324 = -t368 * t548 - t545;
t546 = t379 * t380;
t547 = t377 * t382;
t325 = t368 * t546 - t547;
t367 = sin(t375);
t559 = t367 * t379;
t237 = Icges(6,5) * t325 + Icges(6,6) * t324 + Icges(6,3) * t559;
t239 = Icges(5,5) * t325 + Icges(5,6) * t324 + Icges(5,3) * t559;
t667 = t237 + t239;
t326 = -t368 * t547 + t546;
t327 = t368 * t545 + t548;
t557 = t367 * t382;
t238 = Icges(6,5) * t327 + Icges(6,6) * t326 + Icges(6,3) * t557;
t240 = Icges(5,5) * t327 + Icges(5,6) * t326 + Icges(5,3) * t557;
t666 = t238 + t240;
t241 = Icges(6,4) * t325 + Icges(6,2) * t324 + Icges(6,6) * t559;
t243 = Icges(5,4) * t325 + Icges(5,2) * t324 + Icges(5,6) * t559;
t665 = t241 + t243;
t242 = Icges(6,4) * t327 + Icges(6,2) * t326 + Icges(6,6) * t557;
t244 = Icges(5,4) * t327 + Icges(5,2) * t326 + Icges(5,6) * t557;
t664 = t242 + t244;
t245 = Icges(6,1) * t325 + Icges(6,4) * t324 + Icges(6,5) * t559;
t247 = Icges(5,1) * t325 + Icges(5,4) * t324 + Icges(5,5) * t559;
t663 = t245 + t247;
t246 = Icges(6,1) * t327 + Icges(6,4) * t326 + Icges(6,5) * t557;
t248 = Icges(5,1) * t327 + Icges(5,4) * t326 + Icges(5,5) * t557;
t662 = t246 + t248;
t661 = t326 * t665 + t327 * t663 + t557 * t667;
t660 = t326 * t664 + t327 * t662 + t557 * t666;
t376 = -qJ(5) - pkin(8);
t659 = rSges(6,3) - t376;
t469 = qJD(1) * t368 - qJD(4);
t470 = -qJD(4) * t368 + qJD(1);
t372 = qJD(2) + qJD(3);
t553 = t372 * t379;
t509 = t367 * t553;
t212 = t470 * t546 + (-t382 * t469 + t509) * t377;
t552 = t372 * t380;
t213 = t469 * t545 + (-t367 * t552 + t377 * t470) * t379;
t506 = t368 * t553;
t521 = qJD(1) * t382;
t396 = t367 * t521 + t506;
t135 = Icges(6,5) * t213 + Icges(6,6) * t212 + Icges(6,3) * t396;
t137 = Icges(5,5) * t213 + Icges(5,6) * t212 + Icges(5,3) * t396;
t139 = Icges(6,4) * t213 + Icges(6,2) * t212 + Icges(6,6) * t396;
t141 = Icges(5,4) * t213 + Icges(5,2) * t212 + Icges(5,6) * t396;
t143 = Icges(6,1) * t213 + Icges(6,4) * t212 + Icges(6,5) * t396;
t145 = Icges(5,1) * t213 + Icges(5,4) * t212 + Icges(5,5) * t396;
t417 = t470 * t382;
t551 = t372 * t382;
t508 = t367 * t551;
t613 = t379 * t469 + t508;
t210 = t377 * t613 + t380 * t417;
t211 = t377 * t417 - t380 * t613;
t522 = qJD(1) * t379;
t492 = t367 * t522;
t504 = t368 * t551;
t395 = -t492 + t504;
t658 = (t135 + t137) * t557 + t667 * t395 + (t143 + t145) * t327 + (t139 + t141) * t326 + t663 * t211 + t665 * t210;
t134 = Icges(6,5) * t211 + Icges(6,6) * t210 + Icges(6,3) * t395;
t136 = Icges(5,5) * t211 + Icges(5,6) * t210 + Icges(5,3) * t395;
t138 = Icges(6,4) * t211 + Icges(6,2) * t210 + Icges(6,6) * t395;
t140 = Icges(5,4) * t211 + Icges(5,2) * t210 + Icges(5,6) * t395;
t142 = Icges(6,1) * t211 + Icges(6,4) * t210 + Icges(6,5) * t395;
t144 = Icges(5,1) * t211 + Icges(5,4) * t210 + Icges(5,5) * t395;
t657 = (t134 + t136) * t557 + t666 * t395 + (t142 + t144) * t327 + (t138 + t140) * t326 + t662 * t211 + t664 * t210;
t439 = Icges(6,5) * t380 - Icges(6,6) * t377;
t556 = t368 * t372;
t195 = t439 * t556 + (Icges(6,3) * t372 + (-Icges(6,5) * t377 - Icges(6,6) * t380) * qJD(4)) * t367;
t574 = Icges(6,4) * t380;
t443 = -Icges(6,2) * t377 + t574;
t575 = Icges(6,4) * t377;
t197 = t443 * t556 + (Icges(6,6) * t372 + (-Icges(6,2) * t380 - t575) * qJD(4)) * t367;
t448 = Icges(6,1) * t380 - t575;
t199 = t448 * t556 + (Icges(6,5) * t372 + (-Icges(6,1) * t377 - t574) * qJD(4)) * t367;
t281 = -Icges(6,3) * t368 + t367 * t439;
t283 = -Icges(6,6) * t368 + t367 * t443;
t285 = -Icges(6,5) * t368 + t367 * t448;
t59 = t195 * t557 + t197 * t326 + t199 * t327 + t210 * t283 + t211 * t285 + t281 * t395;
t440 = Icges(5,5) * t380 - Icges(5,6) * t377;
t196 = t440 * t556 + (Icges(5,3) * t372 + (-Icges(5,5) * t377 - Icges(5,6) * t380) * qJD(4)) * t367;
t576 = Icges(5,4) * t380;
t444 = -Icges(5,2) * t377 + t576;
t577 = Icges(5,4) * t377;
t198 = t444 * t556 + (Icges(5,6) * t372 + (-Icges(5,2) * t380 - t577) * qJD(4)) * t367;
t449 = Icges(5,1) * t380 - t577;
t200 = t449 * t556 + (Icges(5,5) * t372 + (-Icges(5,1) * t377 - t576) * qJD(4)) * t367;
t282 = -Icges(5,3) * t368 + t367 * t440;
t284 = -Icges(5,6) * t368 + t367 * t444;
t286 = -Icges(5,5) * t368 + t367 * t449;
t60 = t196 * t557 + t198 * t326 + t200 * t327 + t210 * t284 + t211 * t286 + t282 * t395;
t656 = -t59 - t60;
t61 = t195 * t559 + t197 * t324 + t199 * t325 + t212 * t283 + t213 * t285 + t281 * t396;
t62 = t196 * t559 + t198 * t324 + t200 * t325 + t212 * t284 + t213 * t286 + t282 * t396;
t655 = -t61 - t62;
t156 = t281 * t559 + t283 * t324 + t285 * t325;
t157 = t282 * t559 + t284 * t324 + t286 * t325;
t654 = t156 + t157;
t158 = t281 * t557 + t283 * t326 + t285 * t327;
t159 = t282 * t557 + t284 * t326 + t286 * t327;
t653 = t158 + t159;
t652 = t281 + t282;
t630 = t284 + t283;
t629 = -t286 - t285;
t651 = t379 * t661 + t382 * t660;
t628 = t379 * t660 - t382 * t661;
t104 = t239 * t559 + t243 * t324 + t247 * t325;
t105 = t240 * t559 + t244 * t324 + t248 * t325;
t435 = t104 * t379 + t105 * t382;
t102 = t237 * t559 + t241 * t324 + t245 * t325;
t103 = t238 * t559 + t242 * t324 + t246 * t325;
t437 = t102 * t379 + t103 * t382;
t650 = t435 + t437;
t627 = (-t102 - t104) * t382 + (t103 + t105) * t379;
t363 = pkin(4) * t380 + pkin(3);
t555 = t368 * t382;
t649 = t327 * rSges(6,1) + t326 * rSges(6,2) + pkin(4) * t548 + t363 * t555 + t557 * t659;
t516 = qJD(4) * t380;
t510 = pkin(4) * t516;
t599 = pkin(4) * t377;
t512 = qJD(1) * t599;
t648 = rSges(6,1) * t211 + rSges(6,2) * t210 + rSges(6,3) * t504 + qJD(5) * t557 + t376 * t492 + t379 * t510 + t382 * t512;
t429 = -t242 * t377 + t246 * t380;
t120 = -t238 * t368 + t367 * t429;
t427 = -t244 * t377 + t248 * t380;
t122 = -t240 * t368 + t367 * t427;
t542 = t120 + t122;
t430 = -t241 * t377 + t245 * t380;
t119 = -t237 * t368 + t367 * t430;
t428 = -t243 * t377 + t247 * t380;
t121 = -t239 * t368 + t367 * t428;
t543 = t119 + t121;
t647 = t379 * t542 - t382 * t543;
t646 = t379 * t543 + t382 * t542;
t354 = pkin(3) * t555;
t322 = pkin(8) * t557 + t354;
t535 = -t322 + t649;
t594 = pkin(8) + t376;
t596 = pkin(3) - t363;
t393 = -t367 * t594 - t368 * t596;
t454 = -t325 * rSges(6,1) - t324 * rSges(6,2);
t536 = rSges(6,3) * t559 - pkin(4) * t547 + t379 * t393 - t454;
t645 = -t379 * t536 - t382 * t535;
t644 = (t372 * t651 + t656) * t368 + (-qJD(1) * t628 + t372 * t653 + t379 * t658 + t382 * t657) * t367;
t30 = t135 * t559 + t139 * t324 + t143 * t325 + t212 * t241 + t213 * t245 + t237 * t396;
t31 = t134 * t559 + t138 * t324 + t142 * t325 + t212 * t242 + t213 * t246 + t238 * t396;
t32 = t137 * t559 + t141 * t324 + t145 * t325 + t212 * t243 + t213 * t247 + t239 * t396;
t33 = t136 * t559 + t140 * t324 + t144 * t325 + t212 * t244 + t213 * t248 + t240 * t396;
t643 = (t372 * t650 + t655) * t368 + ((t31 + t33) * t382 + (t30 + t32) * t379 + t654 * t372 - t627 * qJD(1)) * t367;
t642 = qJD(1) * t651 + t379 * t657 - t382 * t658;
t17 = qJD(1) * t437 - t30 * t382 + t31 * t379;
t18 = qJD(1) * t435 - t32 * t382 + t33 * t379;
t641 = t17 + t18;
t593 = t367 * t650 - t368 * t654;
t640 = t367 * t651 - t368 * t653;
t341 = pkin(8) * t504;
t517 = qJD(4) * t377;
t511 = pkin(4) * t517;
t411 = -t372 * t376 - t511;
t633 = -t341 + (pkin(8) * t522 + t551 * t596) * t367 + (t382 * t411 + t522 * t596) * t368 - rSges(6,3) * t492 + t648;
t340 = pkin(3) * t509;
t455 = rSges(6,1) * t213 + rSges(6,2) * t212;
t614 = (t363 * t372 - qJD(5)) * t367 - t512;
t540 = t340 + (qJD(1) * t393 - t510) * t382 + ((-t372 * t594 - t511) * t368 - t614) * t379 + rSges(6,3) * t396 + t455;
t632 = t652 * t368 + (t377 * t630 + t380 * t629) * t367;
t631 = -t195 - t196;
t453 = rSges(6,1) * t380 - rSges(6,2) * t377;
t533 = (-rSges(6,3) + t594) * t368 + (t453 - t596) * t367;
t383 = -pkin(7) - pkin(6);
t378 = sin(qJ(2));
t519 = qJD(2) * t378;
t514 = pkin(2) * t519;
t626 = qJD(1) * t383 + t514;
t625 = (-t197 - t198) * t377;
t381 = cos(qJ(2));
t347 = rSges(3,1) * t378 + rSges(3,2) * t381;
t405 = qJD(2) * t347;
t624 = t379 * t405;
t580 = Icges(3,4) * t381;
t447 = -Icges(3,2) * t378 + t580;
t312 = Icges(3,6) * t379 + t382 * t447;
t581 = Icges(3,4) * t378;
t452 = Icges(3,1) * t381 - t581;
t314 = Icges(3,5) * t379 + t382 * t452;
t420 = t312 * t378 - t314 * t381;
t623 = t379 * t420;
t578 = Icges(4,4) * t368;
t445 = -Icges(4,2) * t367 + t578;
t296 = Icges(4,6) * t379 + t382 * t445;
t579 = Icges(4,4) * t367;
t450 = Icges(4,1) * t368 - t579;
t298 = Icges(4,5) * t379 + t382 * t450;
t422 = t296 * t367 - t298 * t368;
t622 = t379 * t422;
t311 = -Icges(3,6) * t382 + t379 * t447;
t313 = -Icges(3,5) * t382 + t379 * t452;
t421 = t311 * t378 - t313 * t381;
t621 = t382 * t421;
t295 = -Icges(4,6) * t382 + t379 * t445;
t297 = -Icges(4,5) * t382 + t379 * t450;
t423 = t295 * t367 - t297 * t368;
t620 = t382 * t423;
t364 = pkin(2) * t381 + pkin(1);
t597 = pkin(1) - t364;
t619 = t597 * t379;
t457 = -rSges(5,1) * t325 - rSges(5,2) * t324;
t250 = rSges(5,3) * t559 - t457;
t252 = rSges(5,1) * t327 + rSges(5,2) * t326 + rSges(5,3) * t557;
t618 = -t250 * t379 - t252 * t382;
t560 = t367 * t372;
t617 = t652 * t560 + (t199 + t200) * t367 * t380 - t629 * t368 * t552;
t441 = Icges(4,5) * t368 - Icges(4,6) * t367;
t293 = -Icges(4,3) * t382 + t379 * t441;
t615 = qJD(1) * t293;
t442 = Icges(3,5) * t381 - Icges(3,6) * t378;
t309 = -Icges(3,3) * t382 + t379 * t442;
t329 = Icges(4,2) * t368 + t579;
t330 = Icges(4,1) * t367 + t578;
t419 = t329 * t367 - t330 * t368;
t612 = qJD(1) * t419 + t372 * t441;
t611 = 2 * m(3);
t610 = 2 * m(4);
t609 = 2 * m(5);
t608 = 2 * m(6);
t373 = t379 ^ 2;
t374 = t382 ^ 2;
t606 = t379 / 0.2e1;
t605 = -t382 / 0.2e1;
t604 = -rSges(5,3) - pkin(8);
t603 = m(3) * t347;
t332 = rSges(4,1) * t367 + rSges(4,2) * t368;
t602 = m(4) * t332;
t601 = pkin(2) * t378;
t600 = pkin(3) * t368;
t598 = t379 * pkin(6);
t371 = t382 * pkin(6);
t595 = -pkin(6) - t383;
t554 = t372 * t377;
t591 = t617 + (-t554 * t630 + t631) * t368 + ((t377 * t629 - t380 * t630) * qJD(4) + t625) * t367;
t590 = rSges(3,1) * t381;
t589 = rSges(4,1) * t368;
t588 = rSges(3,2) * t378;
t587 = rSges(3,3) * t382;
t370 = t379 * rSges(3,3);
t369 = t379 * rSges(4,3);
t38 = (t372 * t430 - t135) * t368 + (-t139 * t377 + t143 * t380 + t237 * t372 + (-t241 * t380 - t245 * t377) * qJD(4)) * t367;
t586 = t38 * t382;
t39 = (t372 * t429 - t134) * t368 + (-t138 * t377 + t142 * t380 + t238 * t372 + (-t242 * t380 - t246 * t377) * qJD(4)) * t367;
t585 = t39 * t379;
t40 = (t372 * t428 - t137) * t368 + (-t141 * t377 + t145 * t380 + t239 * t372 + (-t243 * t380 - t247 * t377) * qJD(4)) * t367;
t584 = t40 * t382;
t41 = (t372 * t427 - t136) * t368 + (-t140 * t377 + t144 * t380 + t240 * t372 + (-t244 * t380 - t248 * t377) * qJD(4)) * t367;
t583 = t41 * t379;
t459 = -rSges(4,2) * t367 + t589;
t307 = t459 * t372;
t567 = t307 * t379;
t566 = t311 * t381;
t565 = t312 * t381;
t564 = t313 * t378;
t563 = t314 * t378;
t562 = t329 * t372;
t561 = t330 * t372;
t544 = t382 * t383;
t539 = t632 * t560;
t490 = t367 * t517;
t538 = -pkin(4) * t490 - qJD(5) * t368 + t372 * t393 + t453 * t556 + (rSges(6,3) * t372 + (-rSges(6,1) * t377 - rSges(6,2) * t380) * qJD(4)) * t367;
t456 = rSges(5,1) * t380 - rSges(5,2) * t377;
t202 = t456 * t556 + (rSges(5,3) * t372 + (-rSges(5,1) * t377 - rSges(5,2) * t380) * qJD(4)) * t367;
t461 = pkin(8) * t367 + t600;
t308 = t461 * t372;
t537 = -t202 - t308;
t534 = -t252 - t322;
t288 = -rSges(5,3) * t368 + t367 * t456;
t272 = t288 * t522;
t333 = pkin(3) * t367 - pkin(8) * t368;
t323 = t333 * t522;
t532 = t272 + t323;
t291 = t371 + t544 - t619;
t349 = t382 * t364;
t292 = -pkin(1) * t382 + t379 * t595 + t349;
t531 = t291 * t379 + t292 * t382;
t299 = -rSges(4,3) * t382 + t379 * t459;
t300 = rSges(4,1) * t555 - rSges(4,2) * t557 + t369;
t214 = t299 * t379 + t300 * t382;
t530 = -t288 - t333;
t321 = t461 * t379;
t529 = t321 * t379 + t322 * t382;
t528 = rSges(4,2) * t492 + rSges(4,3) * t521;
t527 = t626 * t379;
t526 = t382 * t590 + t370;
t525 = t373 + t374;
t294 = Icges(4,3) * t379 + t382 * t441;
t524 = qJD(1) * t294;
t310 = Icges(3,3) * t379 + t382 * t442;
t523 = qJD(1) * t310;
t518 = qJD(2) * t381;
t515 = t382 * t588;
t513 = pkin(2) * t518;
t501 = -t308 - t538;
t397 = -t368 * t522 - t508;
t407 = t332 * t372;
t500 = t379 * (-t379 * t407 + (t382 * t459 + t369) * qJD(1)) + t382 * (rSges(4,1) * t397 - rSges(4,2) * t504 + t528) + t299 * t521;
t498 = rSges(5,1) * t211 + rSges(5,2) * t210 + rSges(5,3) * t504;
t497 = -t322 - t535;
t496 = t379 * (pkin(8) * t396 + qJD(1) * t354 - t340) + t382 * (pkin(3) * t397 - pkin(8) * t492 + t341) + t321 * t521;
t495 = t379 * ((-t382 * t597 - t598) * qJD(1) - t527) + t382 * (-t382 * t514 + (t382 * t595 + t619) * qJD(1)) + t291 * t521;
t494 = t522 * t533 + t323;
t493 = -t333 - t533;
t491 = t378 * t522;
t484 = t522 / 0.2e1;
t483 = t521 / 0.2e1;
t482 = -t332 - t601;
t481 = -t333 - t601;
t480 = t379 * t533;
t479 = t533 * t382;
t254 = t530 * t382;
t217 = -qJD(1) * t295 - t382 * t562;
t478 = t298 * t372 + t217;
t218 = qJD(1) * t296 - t379 * t562;
t477 = t297 * t372 + t218;
t219 = -qJD(1) * t297 - t382 * t561;
t476 = -t296 * t372 + t219;
t220 = qJD(1) * t298 - t379 * t561;
t475 = t295 * t372 - t220;
t474 = -t379 * t383 + t349;
t473 = -t363 * t368 - t364;
t472 = qJD(1) * t533;
t127 = t529 - t618;
t463 = -t288 + t481;
t462 = -t308 - t513;
t177 = t493 * t382;
t460 = -t588 + t590;
t458 = rSges(5,1) * t213 + rSges(5,2) * t212;
t451 = Icges(3,1) * t378 + t580;
t446 = Icges(3,2) * t381 + t581;
t328 = Icges(4,5) * t367 + Icges(4,6) * t368;
t426 = t250 * t382 - t252 * t379;
t418 = t481 - t533;
t416 = -t202 + t462;
t415 = -pkin(1) - t460;
t226 = t463 * t382;
t413 = -t364 - t459;
t147 = -rSges(5,3) * t492 + t498;
t149 = rSges(5,3) * t396 + t458;
t412 = t147 * t382 + t149 * t379 + t250 * t521 + t496;
t89 = t529 - t645;
t409 = t121 / 0.2e1 + t119 / 0.2e1 + t156 / 0.2e1 + t157 / 0.2e1;
t408 = t122 / 0.2e1 + t120 / 0.2e1 + t158 / 0.2e1 + t159 / 0.2e1;
t406 = t462 - t538;
t402 = t372 * t328;
t401 = qJD(2) * t451;
t400 = qJD(2) * t446;
t399 = qJD(2) * (-Icges(3,5) * t378 - Icges(3,6) * t381);
t173 = t418 * t382;
t398 = t367 * t604 - t364 - t600;
t394 = -t367 * t659 + t473;
t168 = -t293 * t382 - t379 * t423;
t169 = -t294 * t382 - t622;
t170 = t293 * t379 - t620;
t171 = t294 * t379 - t382 * t422;
t215 = -t382 * t402 - t615;
t216 = -t379 * t402 + t524;
t392 = (-t168 * t382 + t627) * t522 + (-t170 * t382 + t628) * t521 + (t169 * t522 + t171 * t521 + (t171 * qJD(1) + (t218 * t367 - t220 * t368 + t295 * t556 + t297 * t560 - t615) * t382) * t382 + ((t170 + t622) * qJD(1) + (-t216 + t476 * t368 - t478 * t367 + (t294 - t423) * qJD(1)) * t382 + t379 * t215) * t379 + t642) * t379;
t391 = -t379 * t535 + t382 * t536;
t390 = t379 * t540 + t382 * t633 + t521 * t536 + t496;
t389 = rSges(3,2) * t491 + rSges(3,3) * t521 - t382 * t405;
t388 = t379 * t398 - t544;
t25 = (t216 * t382 + (t169 + t620) * qJD(1)) * t382 + (t168 * qJD(1) + (-t217 * t367 + t219 * t368 - t296 * t556 - t298 * t560 + t524) * t379 + (-t215 + t475 * t368 + t477 * t367 + (-t293 - t422) * qJD(1)) * t382) * t379;
t387 = (-t25 - t641) * t382 + t392;
t305 = t445 * t372;
t306 = t450 * t372;
t386 = qJD(1) * t328 + (t306 - t562) * t368 + (-t305 - t561) * t367;
t385 = -(qJD(1) * t646 + t583 - t584 + t585 - t586) * t368 / 0.2e1 + t644 * t606 + t643 * t605 + t647 * t560 / 0.2e1 + t641 * t559 / 0.2e1 + t642 * t557 / 0.2e1 + t593 * t484 - t628 * t492 / 0.2e1 + (t379 * t627 + t382 * t628) * t556 / 0.2e1 + (t367 * t627 + t640) * t483;
t384 = -t586 / 0.2e1 + t585 / 0.2e1 - t584 / 0.2e1 + t583 / 0.2e1 + (t367 * t476 + t368 * t478 + t379 * t612 + t382 * t386 - t656) * t606 + (-t367 * t475 + t368 * t477 + t379 * t386 - t382 * t612 - t655) * t605 + (t295 * t368 + t297 * t367 - t328 * t382 - t379 * t419 + t543 + t654) * t484 + (t296 * t368 + t298 * t367 + t328 * t379 - t382 * t419 + t542 + t653) * t483;
t358 = pkin(2) * t491;
t339 = t460 * qJD(2);
t316 = -t515 + t526;
t315 = t379 * t460 - t587;
t290 = t482 * t382;
t289 = t482 * t379;
t276 = t598 + (pkin(1) - t588) * t382 + t526;
t275 = t379 * t415 + t371 + t587;
t264 = t300 + t474;
t263 = (rSges(4,3) - t383) * t382 + t413 * t379;
t258 = t379 * t399 + t523;
t257 = -qJD(1) * t309 + t382 * t399;
t253 = t530 * t379;
t228 = t624 + ((-rSges(3,3) - pkin(6)) * t379 + t415 * t382) * qJD(1);
t227 = (t371 + (-pkin(1) - t590) * t379) * qJD(1) + t389;
t225 = t463 * t379;
t194 = -t332 * t521 - t567 + (-t378 * t521 - t379 * t518) * pkin(2);
t193 = t332 * t522 + t358 + (-t307 - t513) * t382;
t185 = t310 * t379 - t382 * t420;
t184 = t309 * t379 - t621;
t183 = -t310 * t382 - t623;
t182 = -t309 * t382 - t379 * t421;
t181 = t332 * t553 + (t382 * t413 - t369) * qJD(1) + t527;
t180 = (-t364 - t589) * t522 + (-t407 - t626) * t382 + t528;
t179 = t474 - t534;
t178 = t388 + t457;
t176 = t493 * t379;
t175 = -t252 * t368 - t288 * t557;
t174 = t250 * t368 + t288 * t559;
t172 = t418 * t379;
t167 = t474 + t649;
t166 = (-t383 + t599) * t382 + t394 * t379 + t454;
t161 = t214 + t531;
t160 = t426 * t367;
t151 = qJD(1) * t254 + t379 * t537;
t150 = t382 * t537 + t532;
t124 = qJD(1) * t226 + t379 * t416;
t123 = t382 * t416 + t358 + t532;
t118 = -t300 * t522 + t500;
t113 = -t367 * t479 - t368 * t535;
t112 = t367 * t480 + t368 * t536;
t99 = t127 + t531;
t96 = t398 * t521 + t506 * t604 + t340 - t458 + t527;
t95 = t341 + (-pkin(3) * t560 - t514) * t382 + t388 * qJD(1) + t498;
t94 = t391 * t367;
t93 = qJD(1) * t177 + t379 * t501;
t92 = t382 * t501 + t494;
t91 = qJD(1) * t173 + t379 * t406;
t90 = t382 * t406 + t358 + t494;
t88 = (qJD(1) * t394 + t510) * t382 + ((-t372 * t659 + t511) * t368 + t614) * t379 - t455 + t527;
t87 = (-rSges(6,3) * t367 + t473) * t522 + (-t363 * t560 + t368 * t411 - t626) * t382 + t648;
t86 = t89 + t531;
t85 = (-t292 - t300) * t522 + t495 + t500;
t84 = (t288 * t553 + t149) * t368 + (t202 * t379 - t250 * t372 + t288 * t521) * t367;
t83 = (-t288 * t551 - t147) * t368 + (-t202 * t382 + t252 * t372 + t272) * t367;
t54 = t426 * t556 + (qJD(1) * t618 - t147 * t379 + t149 * t382) * t367;
t49 = t522 * t534 + t412;
t44 = (-t292 + t534) * t522 + t412 + t495;
t43 = (t372 * t480 + t540) * t368 + (-t372 * t536 + t379 * t538 + t382 * t472) * t367;
t42 = (-t372 * t479 - t633) * t368 + (t372 * t535 + t379 * t472 - t382 * t538) * t367;
t23 = t497 * t522 + t390;
t22 = t391 * t556 + (qJD(1) * t645 - t379 * t633 + t540 * t382) * t367;
t21 = (-t292 + t497) * t522 + t390 + t495;
t1 = [t330 * t556 - t329 * t560 + (t227 * t276 + t228 * t275) * t611 + (t180 * t264 + t181 * t263) * t610 + (t178 * t96 + t179 * t95) * t609 + (t166 * t88 + t167 * t87) * t608 + (-t446 + t452) * t519 + (t447 + t451) * t518 + t629 * t490 + (t305 + t631) * t368 + (t306 + t625) * t367 + t617 + t630 * (-t367 * t516 - t368 * t554); t384 + m(3) * ((-t227 * t379 - t228 * t382) * t347 + (-t275 * t382 - t276 * t379) * t339) + m(4) * (t180 * t289 + t181 * t290 + t193 * t263 + t194 * t264) + m(5) * (t123 * t178 + t124 * t179 + t225 * t95 + t226 * t96) + m(6) * (t166 * t90 + t167 * t91 + t172 * t87 + t173 * t88) + ((t565 / 0.2e1 + t563 / 0.2e1 - t276 * t603) * t382 + (t275 * t603 + t566 / 0.2e1 + t564 / 0.2e1) * t379) * qJD(1) + (t373 / 0.2e1 + t374 / 0.2e1) * t442 * qJD(2) + (-qJD(2) * t420 + (-qJD(1) * t311 - t382 * t400) * t381 + (-qJD(1) * t313 - t382 * t401) * t378) * t606 + (-qJD(2) * t421 + (qJD(1) * t312 - t379 * t400) * t381 + (qJD(1) * t314 - t379 * t401) * t378) * t605; t392 + ((t315 * t379 + t316 * t382) * ((qJD(1) * t315 + t389) * t382 + (-t624 + (-t316 - t515 + t370) * qJD(1)) * t379) + t525 * t347 * t339) * t611 + (-t182 * t382 + t183 * t379) * t522 + (-t184 * t382 + t185 * t379) * t521 - t382 * t18 - t382 * t17 - t382 * t25 + (t172 * t91 + t173 * t90 + t21 * t86) * t608 + (t123 * t226 + t124 * t225 + t44 * t99) * t609 + (t161 * t85 + t193 * t290 + t194 * t289) * t610 + t379 * ((t379 * t257 + (t184 + t623) * qJD(1)) * t379 + (t185 * qJD(1) + (t311 * t518 + t313 * t519) * t382 + (-t258 + (-t563 - t565) * qJD(2) + (t310 - t421) * qJD(1)) * t379) * t382) - t382 * ((t382 * t258 + (t183 + t621) * qJD(1)) * t382 + (t182 * qJD(1) + (-t312 * t518 - t314 * t519 + t523) * t379 + (-t257 + (t564 + t566) * qJD(2) - t420 * qJD(1)) * t382) * t379); t384 + m(5) * (t150 * t178 + t151 * t179 + t253 * t95 + t254 * t96) + m(6) * (t166 * t92 + t167 * t93 + t176 * t87 + t177 * t88) + (-t180 * t379 - t181 * t382 + (t263 * t379 - t264 * t382) * qJD(1)) * t602 + m(4) * (-t263 * t382 - t264 * t379) * t307; t387 + m(4) * (-t290 * t307 * t382 + t118 * t161 + t214 * t85 - t289 * t567) + m(6) * (t172 * t93 + t173 * t92 + t176 * t91 + t177 * t90 + t21 * t89 + t23 * t86) + m(5) * (t123 * t254 + t124 * t253 + t127 * t44 + t150 * t226 + t151 * t225 + t49 * t99) + (-t193 * t382 - t194 * t379 + (-t289 * t382 + t290 * t379) * qJD(1)) * t602; (t176 * t93 + t177 * t92 + t23 * t89) * t608 + (t127 * t49 + t150 * t254 + t151 * t253) * t609 + (t307 * t332 * t525 + t118 * t214) * t610 + t387; m(5) * (t174 * t96 + t175 * t95 + t178 * t84 + t179 * t83) + m(6) * (t112 * t88 + t113 * t87 + t166 * t43 + t167 * t42) + ((t379 * t409 + t382 * t408) * t372 - t591) * t368 + ((t59 / 0.2e1 + t39 / 0.2e1 + t41 / 0.2e1 + t60 / 0.2e1) * t382 + (t40 / 0.2e1 + t38 / 0.2e1 + t61 / 0.2e1 + t62 / 0.2e1) * t379 + (-t379 * t408 + t382 * t409) * qJD(1)) * t367 - t539; t385 + m(5) * (t123 * t174 + t124 * t175 + t160 * t44 + t225 * t83 + t226 * t84 + t54 * t99) + m(6) * (t112 * t90 + t113 * t91 + t172 * t42 + t173 * t43 + t21 * t94 + t22 * t86); m(5) * (t127 * t54 + t150 * t174 + t151 * t175 + t160 * t49 + t253 * t83 + t254 * t84) + m(6) * (t112 * t92 + t113 * t93 + t176 * t42 + t177 * t43 + t22 * t89 + t23 * t94) + t385; (t112 * t43 + t113 * t42 + t22 * t94) * t608 + (t160 * t54 + t174 * t84 + t175 * t83) * t609 + (t591 * t368 + ((-t368 * t542 + t640) * t382 + (-t368 * t543 + t593) * t379) * t372 + t539) * t368 + (t644 * t382 + t643 * t379 + t646 * t560 + ((-t39 - t41) * t382 + (-t38 - t40) * t379 + t632 * t372) * t368 + (t368 * t647 - t379 * t640 + t593 * t382) * qJD(1)) * t367; m(6) * ((t166 * t382 + t167 * t379) * t556 + (t379 * t87 + t382 * t88 + (-t166 * t379 + t167 * t382) * qJD(1)) * t367); m(6) * ((-t21 + (t172 * t379 + t173 * t382) * t372) * t368 + (t372 * t86 + t379 * t91 + t382 * t90 + (t172 * t382 - t173 * t379) * qJD(1)) * t367); m(6) * ((-t23 + (t176 * t379 + t177 * t382) * t372) * t368 + (t372 * t89 + t379 * t93 + t382 * t92 + (t176 * t382 - t177 * t379) * qJD(1)) * t367); m(6) * ((-t22 + (t112 * t382 + t113 * t379) * t372) * t368 + (t372 * t94 + t379 * t42 + t382 * t43 + (-t112 * t379 + t113 * t382) * qJD(1)) * t367); (-0.1e1 + t525) * t367 * t556 * t608;];
%% Postprocessing: Reshape Output
% From vec2symmat_5_matlab.m
res = [t1(1), t1(2), t1(4), t1(7), t1(11); t1(2), t1(3), t1(5), t1(8), t1(12); t1(4), t1(5), t1(6), t1(9), t1(13); t1(7), t1(8), t1(9), t1(10), t1(14); t1(11), t1(12), t1(13), t1(14), t1(15);];
Mq = res;