% Calculate vector of centrifugal and Coriolis load on the joints for
% S5RPRPR8
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
% Datum: 2019-12-31 18:22
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5RPRPR8_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR8_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR8_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRPR8_coriolisvecJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5RPRPR8_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5RPRPR8_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5RPRPR8_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:21:18
% EndTime: 2019-12-31 18:22:02
% DurationCPUTime: 36.63s
% Computational Cost: add. (24321->968), mult. (26335->1298), div. (0->0), fcn. (24582->10), ass. (0->454)
t367 = qJ(1) + pkin(8);
t360 = sin(t367);
t373 = cos(qJ(3));
t578 = t360 * t373;
t371 = sin(qJ(3));
t579 = t360 * t371;
t362 = cos(t367);
t592 = Icges(4,3) * t362;
t211 = Icges(4,5) * t578 - Icges(4,6) * t579 - t592;
t338 = Icges(4,4) * t579;
t599 = Icges(4,5) * t362;
t215 = Icges(4,1) * t578 - t338 - t599;
t595 = Icges(4,6) * t362;
t213 = Icges(4,4) * t578 - Icges(4,2) * t579 - t595;
t584 = t213 * t371;
t437 = -t215 * t373 + t584;
t369 = cos(pkin(9));
t368 = sin(pkin(9));
t572 = t368 * t373;
t257 = t360 * t572 + t362 * t369;
t571 = t369 * t373;
t575 = t362 * t368;
t258 = t360 * t571 - t575;
t142 = Icges(5,4) * t258 - Icges(5,2) * t257 + Icges(5,6) * t579;
t145 = Icges(5,1) * t258 - Icges(5,4) * t257 + Icges(5,5) * t579;
t440 = -t142 * t257 + t145 * t258;
t139 = Icges(5,5) * t258 - Icges(5,6) * t257 + Icges(5,3) * t579;
t570 = t371 * t139;
t45 = t360 * t570 + t440;
t692 = -t362 * t211 - t360 * t437 + t45;
t259 = t360 * t369 - t362 * t572;
t580 = t360 * t368;
t260 = t362 * t571 + t580;
t574 = t362 * t371;
t141 = Icges(5,5) * t260 + Icges(5,6) * t259 + Icges(5,3) * t574;
t144 = Icges(5,4) * t260 + Icges(5,2) * t259 + Icges(5,6) * t574;
t147 = Icges(5,1) * t260 + Icges(5,4) * t259 + Icges(5,5) * t574;
t46 = t141 * t579 - t257 * t144 + t258 * t147;
t364 = Icges(4,4) * t373;
t449 = -Icges(4,2) * t371 + t364;
t214 = Icges(4,6) * t360 + t362 * t449;
t603 = Icges(4,4) * t371;
t323 = Icges(4,1) * t373 - t603;
t216 = Icges(4,5) * t360 + t323 * t362;
t200 = t216 * t578;
t319 = Icges(4,5) * t373 - Icges(4,6) * t371;
t212 = Icges(4,3) * t360 + t319 * t362;
t479 = t362 * t212 - t200;
t80 = -t214 * t579 - t479;
t691 = t46 + t80;
t48 = t141 * t574 + t259 * t144 + t260 * t147;
t573 = t362 * t373;
t559 = t360 * t212 + t216 * t573;
t82 = -t214 * t574 + t559;
t690 = t48 + t82;
t446 = Icges(5,5) * t369 - Icges(5,6) * t368;
t261 = -Icges(5,3) * t373 + t371 * t446;
t448 = Icges(5,4) * t369 - Icges(5,2) * t368;
t263 = -Icges(5,6) * t373 + t371 * t448;
t451 = Icges(5,1) * t369 - Icges(5,4) * t368;
t265 = -Icges(5,5) * t373 + t371 * t451;
t320 = Icges(4,2) * t373 + t603;
t322 = Icges(4,1) * t371 + t364;
t432 = t320 * t371 - t322 * t373;
t318 = Icges(4,5) * t371 + Icges(4,6) * t373;
t581 = t318 * t362;
t689 = -t257 * t263 + t258 * t265 + t261 * t579 - t360 * t432 - t581;
t582 = t318 * t360;
t688 = t259 * t263 + t260 * t265 + t261 * t574 - t362 * t432 + t582;
t687 = t688 * qJD(1);
t664 = t259 * t142 + t260 * t145;
t47 = t362 * t570 + t664;
t608 = t362 * t47;
t560 = -t360 * t211 - t215 * t573;
t81 = -t213 * t574 - t560;
t686 = (t360 * t690 - t362 * t81 - t608) * qJD(3);
t685 = (t691 * t360 - t362 * t692) * qJD(3);
t684 = t689 * qJD(1);
t366 = pkin(9) + qJ(5);
t359 = sin(t366);
t361 = cos(t366);
t577 = t361 * t362;
t238 = t359 * t578 + t577;
t239 = -t362 * t359 + t361 * t578;
t120 = Icges(6,5) * t239 - Icges(6,6) * t238 + Icges(6,3) * t579;
t225 = Icges(6,4) * t239;
t123 = -Icges(6,2) * t238 + Icges(6,6) * t579 + t225;
t224 = Icges(6,4) * t238;
t127 = -Icges(6,1) * t239 - Icges(6,5) * t579 + t224;
t672 = t123 * t359 + t127 * t361;
t49 = -t120 * t373 - t371 * t672;
t683 = t684 + t685;
t682 = t686 + t687;
t409 = qJD(3) * t320;
t410 = qJD(3) * t322;
t663 = t142 * t368 - t145 * t369;
t530 = qJD(3) * t371;
t505 = t368 * t530;
t192 = qJD(1) * t259 + t360 * t505;
t504 = t369 * t530;
t193 = qJD(1) * t260 - t360 * t504;
t529 = qJD(3) * t373;
t534 = qJD(1) * t371;
t268 = t360 * t529 + t362 * t534;
t85 = Icges(5,5) * t193 + Icges(5,6) * t192 + Icges(5,3) * t268;
t87 = Icges(5,4) * t193 + Icges(5,2) * t192 + Icges(5,6) * t268;
t89 = Icges(5,1) * t193 + Icges(5,4) * t192 + Icges(5,5) * t268;
t681 = (-qJD(1) * t214 + t360 * t409 + t85) * t373 + (-qJD(1) * t216 + t360 * t410 + t368 * t87 - t369 * t89) * t371 + (t373 * t663 + t437 - t570) * qJD(3);
t583 = t214 * t371;
t436 = -t216 * t373 + t583;
t438 = -t144 * t368 + t147 * t369;
t190 = qJD(1) * t257 + t362 * t505;
t191 = -qJD(1) * t258 - t362 * t504;
t506 = t362 * t529;
t512 = t360 * t534;
t269 = t506 - t512;
t84 = Icges(5,5) * t191 + Icges(5,6) * t190 + Icges(5,3) * t269;
t86 = Icges(5,4) * t191 + Icges(5,2) * t190 + Icges(5,6) * t269;
t88 = Icges(5,1) * t191 + Icges(5,4) * t190 + Icges(5,5) * t269;
t680 = (-t84 - t362 * t409 + (-t360 * t449 + t595) * qJD(1)) * t373 + (-t368 * t86 + t369 * t88 - t362 * t410 + (-t323 * t360 + t599) * qJD(1)) * t371 + (t141 * t371 + t373 * t438 - t436) * qJD(3);
t262 = Icges(5,3) * t371 + t373 * t446;
t235 = t262 * qJD(3);
t264 = Icges(5,6) * t371 + t373 * t448;
t236 = t264 * qJD(3);
t266 = Icges(5,5) * t371 + t373 * t451;
t237 = t266 * qJD(3);
t303 = t449 * qJD(3);
t304 = t323 * qJD(3);
t378 = qJD(1) * t318 - t303 * t371 + t304 * t373 + (-t320 * t373 - t322 * t371) * qJD(3);
t645 = t432 * qJD(1) + t319 * qJD(3);
t679 = t190 * t263 + t191 * t265 + t235 * t574 + t236 * t259 + t237 * t260 + t261 * t269 + t360 * t645 + t378 * t362;
t678 = t192 * t263 + t193 * t265 + t235 * t579 - t236 * t257 + t237 * t258 + t261 * t268 + t378 * t360 - t362 * t645;
t677 = t47 + t81;
t676 = (-t139 + t213) * t373 + (t215 - t663) * t371;
t675 = (-t141 + t214) * t373 + (t216 + t438) * t371;
t674 = t440 - t559;
t408 = qJD(3) * t318;
t673 = t362 * (-t360 * t408 + (t212 + t437) * qJD(1));
t527 = qJD(5) * t371;
t532 = qJD(3) * t360;
t290 = t362 * t527 + t532;
t531 = qJD(3) * t362;
t291 = -t360 * t527 + t531;
t526 = qJD(5) * t373;
t347 = qJD(1) - t526;
t41 = t120 * t579 - t123 * t238 - t127 * t239;
t240 = -t359 * t573 + t360 * t361;
t241 = t359 * t360 + t361 * t573;
t122 = Icges(6,5) * t241 + Icges(6,6) * t240 + Icges(6,3) * t574;
t602 = Icges(6,4) * t241;
t125 = Icges(6,2) * t240 + Icges(6,6) * t574 + t602;
t226 = Icges(6,4) * t240;
t128 = Icges(6,1) * t241 + Icges(6,5) * t574 + t226;
t42 = t122 * t579 - t238 * t125 + t239 * t128;
t445 = Icges(6,5) * t361 - Icges(6,6) * t359;
t242 = -Icges(6,3) * t373 + t371 * t445;
t600 = Icges(6,4) * t361;
t447 = -Icges(6,2) * t359 + t600;
t244 = -Icges(6,6) * t373 + t371 * t447;
t601 = Icges(6,4) * t359;
t450 = Icges(6,1) * t361 - t601;
t246 = -Icges(6,5) * t373 + t371 * t450;
t70 = -t238 * t244 + t239 * t246 + t242 * t579;
t12 = t290 * t42 - t291 * t41 + t347 * t70;
t43 = t120 * t574 + t240 * t123 - t127 * t241;
t44 = t122 * t574 + t240 * t125 + t241 * t128;
t71 = t240 * t244 + t241 * t246 + t242 * t574;
t13 = t290 * t44 - t291 * t43 + t71 * t347;
t375 = qJD(1) ^ 2;
t351 = t360 * rSges(4,3);
t230 = rSges(4,1) * t573 - rSges(4,2) * t574 + t351;
t301 = t362 * pkin(2) + t360 * pkin(6);
t374 = cos(qJ(1));
t365 = t374 * pkin(1);
t654 = t365 + t301;
t667 = t230 + t654;
t370 = -pkin(7) - qJ(4);
t567 = qJ(4) + t370;
t481 = t567 * t373;
t357 = pkin(4) * t369 + pkin(3);
t622 = pkin(3) - t357;
t502 = t622 * t371;
t231 = t481 - t502;
t460 = rSges(6,1) * t239 - rSges(6,2) * t238;
t129 = rSges(6,3) * t579 + t460;
t459 = rSges(6,1) * t361 - rSges(6,2) * t359;
t249 = -rSges(6,3) * t373 + t371 * t459;
t363 = qJD(4) * t371;
t326 = t362 * t363;
t328 = pkin(3) * t371 - qJ(4) * t373;
t480 = (-t231 - t328) * t362;
t666 = qJD(3) * t480 - t129 * t347 - t291 * t249 + t326;
t433 = -t263 * t368 + t265 * t369;
t665 = (-t360 * t438 - t362 * t663) * qJD(3) + (t262 - t433) * qJD(1);
t662 = 0.2e1 * qJD(3);
t661 = -rSges(5,3) - qJ(4);
t659 = t371 * t567;
t658 = t373 * t622;
t462 = rSges(5,1) * t369 - rSges(5,2) * t368;
t270 = -rSges(5,3) * t373 + t371 * t462;
t657 = (qJD(3) * t270 - t363) * t360;
t656 = (qJD(3) * t231 - t363) * t360;
t589 = qJ(4) * t371;
t627 = t373 * pkin(3);
t331 = t589 + t627;
t283 = t331 * t360;
t255 = qJD(1) * t283;
t355 = t362 * pkin(6);
t300 = pkin(2) * t360 - t355;
t296 = qJD(1) * t300;
t655 = -t255 - t296;
t483 = t362 * rSges(3,1) - rSges(3,2) * t360;
t653 = t365 + t483;
t651 = t12 * t360 + t13 * t362;
t533 = qJD(1) * t373;
t476 = -qJD(5) + t533;
t507 = t362 * t530;
t648 = t360 * t476 + t507;
t647 = -t362 * t408 + (-t319 * t360 + t436 + t592) * qJD(1);
t555 = -Icges(4,2) * t578 + t215 - t338;
t557 = t322 * t360 + t213;
t643 = -t371 * t555 - t373 * t557;
t243 = Icges(6,3) * t371 + t373 * t445;
t434 = -t244 * t359 + t246 * t361;
t442 = -t125 * t359 + t128 * t361;
t642 = t290 * (-t242 * t362 - t442) - t291 * (-t242 * t360 + t672) + t347 * (t243 - t434);
t275 = (-Icges(6,2) * t361 - t601) * t371;
t641 = t290 * (-Icges(6,2) * t241 + t128 + t226) - t291 * (-Icges(6,2) * t239 - t127 - t224) + t347 * (t246 + t275);
t640 = m(5) / 0.2e1;
t639 = m(6) / 0.2e1;
t523 = qJD(3) * qJD(5);
t499 = t373 * t523;
t207 = qJD(1) * t290 + t360 * t499;
t638 = t207 / 0.2e1;
t208 = qJD(1) * t291 + t362 * t499;
t637 = t208 / 0.2e1;
t636 = -t290 / 0.2e1;
t635 = t290 / 0.2e1;
t634 = -t291 / 0.2e1;
t633 = t291 / 0.2e1;
t632 = -t347 / 0.2e1;
t631 = t347 / 0.2e1;
t372 = sin(qJ(1));
t628 = pkin(1) * t372;
t429 = t347 * t361;
t510 = t360 * t530;
t112 = t360 * t429 + (-t362 * t476 + t510) * t359;
t430 = t347 * t359;
t113 = t476 * t577 + (-t361 * t530 + t430) * t360;
t58 = Icges(6,5) * t113 + Icges(6,6) * t112 + Icges(6,3) * t268;
t60 = Icges(6,4) * t113 + Icges(6,2) * t112 + Icges(6,6) * t268;
t62 = Icges(6,1) * t113 + Icges(6,4) * t112 + Icges(6,5) * t268;
t8 = (-qJD(3) * t672 - t58) * t373 + (qJD(3) * t120 - t359 * t60 + t361 * t62 + (-t123 * t361 + t127 * t359) * qJD(5)) * t371;
t626 = t8 * t291;
t110 = t359 * t648 + t362 * t429;
t111 = -t361 * t648 + t362 * t430;
t57 = Icges(6,5) * t111 + Icges(6,6) * t110 + Icges(6,3) * t269;
t59 = Icges(6,4) * t111 + Icges(6,2) * t110 + Icges(6,6) * t269;
t61 = Icges(6,1) * t111 + Icges(6,4) * t110 + Icges(6,5) * t269;
t9 = (qJD(3) * t442 - t57) * t373 + (qJD(3) * t122 - t359 * t59 + t361 * t61 + (-t125 * t361 - t128 * t359) * qJD(5)) * t371;
t625 = t9 * t290;
t623 = qJD(1) / 0.2e1;
t272 = (-Icges(6,5) * t359 - Icges(6,6) * t361) * t371;
t174 = qJD(3) * t243 + qJD(5) * t272;
t245 = Icges(6,6) * t371 + t373 * t447;
t175 = qJD(3) * t245 + qJD(5) * t275;
t247 = Icges(6,5) * t371 + t373 * t450;
t278 = (-Icges(6,1) * t359 - t600) * t371;
t176 = qJD(3) * t247 + qJD(5) * t278;
t32 = (qJD(3) * t434 - t174) * t373 + (qJD(3) * t242 - t175 * t359 + t176 * t361 + (-t244 * t361 - t246 * t359) * qJD(5)) * t371;
t500 = t371 * t523;
t92 = -t242 * t373 + t371 * t434;
t621 = t32 * t347 + t92 * t500;
t620 = rSges(4,1) * t373;
t618 = rSges(5,3) * t371;
t616 = rSges(6,3) * t371;
t522 = pkin(4) * t575;
t568 = t373 * t357;
t473 = -t360 * t568 + t522;
t152 = (t627 + t659) * t360 + t473;
t489 = -t300 - t628;
t472 = -t283 + t489;
t39 = (t152 + t472) * qJD(1) + t666;
t609 = t362 * t39;
t607 = t49 * t207;
t50 = -t122 * t373 + t371 * t442;
t606 = t50 * t208;
t605 = -rSges(6,3) + t370;
t539 = rSges(4,2) * t579 + t362 * rSges(4,3);
t229 = rSges(4,1) * t578 - t539;
t329 = rSges(4,1) * t371 + rSges(4,2) * t373;
t508 = t329 * t531;
t115 = -t508 + (-t229 + t489) * qJD(1);
t587 = t115 * t360;
t586 = t115 * t362;
t511 = t329 * t532;
t116 = qJD(1) * t667 - t511;
t286 = t329 * t362;
t585 = t116 * t286;
t569 = t371 * t357;
t564 = t129 - t152;
t150 = t260 * rSges(5,1) + t259 * rSges(5,2) + rSges(5,3) * t574;
t343 = pkin(3) * t573;
t287 = qJ(4) * t574 + t343;
t563 = -t150 - t287;
t334 = pkin(4) * t580;
t426 = t362 * t568 - t370 * t574 + t334;
t153 = t426 - t287;
t562 = -t153 - t287;
t316 = pkin(3) * t510;
t161 = qJ(4) * t268 + qJD(1) * t343 + t360 * t363 - t316;
t293 = t301 * qJD(1);
t561 = -t161 - t293;
t232 = -t658 - t659;
t528 = qJD(4) * t373;
t292 = qJD(3) * t331 - t528;
t558 = -t232 * qJD(3) - t292;
t556 = -t322 * t362 - t214;
t554 = -t320 * t362 + t216;
t552 = t231 + t249;
t551 = -t232 - t331;
t550 = t360 * t283 + t362 * t287;
t271 = t373 * t462 + t618;
t548 = -t271 * qJD(3) - t292;
t285 = t328 * t362;
t547 = -qJD(1) * t285 + t360 * t528;
t546 = -t270 - t328;
t545 = -t271 - t331;
t544 = qJD(1) * t522 + t370 * t512;
t535 = qJD(1) * t362;
t543 = rSges(4,2) * t512 + rSges(4,3) * t535;
t542 = -t320 + t323;
t541 = t322 + t449;
t346 = pkin(6) * t535;
t540 = t326 + t346;
t537 = qJD(1) * t319;
t536 = qJD(1) * t360;
t524 = qJD(3) * qJD(4);
t521 = t375 * t628;
t520 = t375 * t365;
t519 = t111 * rSges(6,1) + t110 * rSges(6,2) + rSges(6,3) * t506;
t311 = qJ(4) * t506;
t405 = -t360 * t533 - t507;
t160 = pkin(3) * t405 - qJ(4) * t512 + t311 + t326;
t518 = t362 * t160 + t360 * t161 + t283 * t535;
t250 = t373 * t459 + t616;
t284 = (-rSges(6,1) * t359 - rSges(6,2) * t361) * t371;
t177 = qJD(3) * t250 + qJD(5) * t284;
t517 = -t177 + t558;
t516 = t191 * rSges(5,1) + t190 * rSges(5,2) + rSges(5,3) * t506;
t281 = t328 * t360;
t515 = -t281 * t532 - t285 * t531 + t363;
t131 = t241 * rSges(6,1) + t240 * rSges(6,2) + rSges(6,3) * t574;
t514 = -t328 - t552;
t294 = t328 * t532;
t503 = -pkin(2) - t620;
t501 = t373 * t524;
t497 = t535 / 0.2e1;
t496 = -t532 / 0.2e1;
t493 = t531 / 0.2e1;
t492 = t530 / 0.2e1;
t487 = t355 - t628;
t486 = -pkin(2) - t568;
t471 = t287 + t654;
t68 = -t294 - t657 + (t150 + t471) * qJD(1);
t485 = t68 * t546;
t482 = t362 * t546;
t478 = -t211 + t583;
t477 = qJD(1) * t281 + t362 * t528;
t475 = t161 * t532 + t371 * t524 + (t160 + t255) * t531;
t474 = qJD(1) * (-pkin(2) * t536 + t346) - t521;
t468 = qJD(5) * t492;
t299 = rSges(3,1) * t360 + rSges(3,2) * t362;
t465 = -rSges(4,2) * t371 + t620;
t464 = rSges(5,1) * t193 + rSges(5,2) * t192;
t463 = rSges(5,1) * t258 - rSges(5,2) * t257;
t461 = -rSges(6,1) * t113 - rSges(6,2) * t112;
t458 = t360 * t42 - t362 * t41;
t457 = t360 * t41 + t362 * t42;
t456 = t360 * t44 - t362 * t43;
t455 = t360 * t43 + t362 * t44;
t454 = t360 * t50 - t362 * t49;
t453 = t360 * t49 + t362 * t50;
t444 = -t116 * t360 - t586;
t441 = t129 * t362 - t131 * t360;
t435 = t229 * t360 + t230 * t362;
t431 = qJD(1) * t294 + t362 * t501 - t520;
t425 = t283 * t532 + t287 * t531 + qJD(2) - t528;
t282 = t329 * t360;
t411 = (-t139 * t362 + t141 * t360) * t373;
t406 = t360 * t501 + t474 + (t160 + t326) * qJD(1);
t404 = -t120 * t291 + t122 * t290 + t242 * t347;
t403 = (-Icges(6,5) * t238 - Icges(6,6) * t239) * t291 - (Icges(6,5) * t240 - Icges(6,6) * t241) * t290 - t272 * t347;
t401 = -pkin(2) - t331 - t618;
t400 = -t371 * t554 + t373 * t556;
t148 = rSges(5,3) * t579 + t463;
t398 = t371 * t403;
t389 = (-t371 * t541 + t373 * t542) * qJD(1);
t388 = (Icges(6,1) * t240 - t125 - t602) * t290 - (-Icges(6,1) * t238 - t123 - t225) * t291 + (-t244 + t278) * t347;
t172 = rSges(4,1) * t405 - rSges(4,2) * t506 + t543;
t173 = -qJD(3) * t282 + (t362 * t465 + t351) * qJD(1);
t386 = t172 * t362 + t173 * t360 + (t229 * t362 - t230 * t360) * qJD(1);
t31 = t129 * t290 + t131 * t291 + (-t152 * t360 + t153 * t362) * qJD(3) + t425;
t40 = t131 * t347 - t249 * t290 - t294 - t656 + (t153 + t471) * qJD(1);
t381 = t31 * t441 + (t360 * t39 - t362 * t40) * t249;
t377 = t642 * t371;
t376 = t261 * t533 + t371 * t665;
t306 = t465 * qJD(3);
t295 = t328 * t536;
t267 = (t360 ^ 2 + t362 ^ 2) * t530;
t204 = t270 * t362;
t203 = t270 * t360;
t199 = t265 * t362;
t198 = t265 * t360;
t197 = t263 * t362;
t196 = t263 * t360;
t187 = t249 * t362;
t186 = t249 * t360;
t185 = t246 * t362;
t184 = t246 * t360;
t183 = t244 * t362;
t182 = t244 * t360;
t179 = t231 * t362;
t178 = t231 * t360;
t163 = rSges(6,1) * t240 - rSges(6,2) * t241;
t162 = -rSges(6,1) * t238 - rSges(6,2) * t239;
t114 = qJD(3) * t435 + qJD(2);
t91 = rSges(5,3) * t268 + t464;
t90 = -rSges(5,3) * t512 + t516;
t78 = t316 + (-t481 - t569) * t532 + (t232 * t362 + t334) * qJD(1);
t77 = -t311 + (-t370 * t373 + t502) * t531 + (t589 + t658) * t536 + t544;
t73 = -t520 - t306 * t531 + (-t173 - t293 + t511) * qJD(1);
t72 = -t306 * t532 + (t172 - t508) * qJD(1) + t474;
t67 = t326 + qJD(3) * t482 + (-t148 + t472) * qJD(1);
t64 = rSges(6,3) * t268 - t461;
t63 = -rSges(6,3) * t512 + t519;
t52 = (t148 * t360 + t150 * t362) * qJD(3) + t425;
t51 = t386 * qJD(3);
t34 = t548 * t531 + (t561 - t91 + t657) * qJD(1) + t431;
t33 = qJD(1) * t90 + (qJD(1) * t482 + t360 * t548) * qJD(3) + t406;
t25 = t112 * t244 + t113 * t246 + t174 * t579 - t175 * t238 + t176 * t239 + t242 * t268;
t24 = t110 * t244 + t111 * t246 + t174 * t574 + t175 * t240 + t176 * t241 + t242 * t269;
t21 = (t360 * t91 + t362 * t90 + (t148 * t362 + t360 * t563) * qJD(1)) * qJD(3) + t475;
t20 = t290 * t50 - t291 * t49 + t347 * t92;
t11 = -t177 * t291 + t207 * t249 - t347 * t64 + (-t129 * t527 + t362 * t558) * qJD(3) + (t561 - t78 + t656) * qJD(1) + t431;
t10 = qJD(1) * t77 - t177 * t290 - t208 * t249 + t347 * t63 + (qJD(1) * t480 + t131 * t527 + t360 * t558) * qJD(3) + t406;
t7 = t112 * t125 + t113 * t128 + t122 * t268 - t238 * t59 + t239 * t61 + t57 * t579;
t6 = t112 * t123 - t113 * t127 + t120 * t268 - t238 * t60 + t239 * t62 + t579 * t58;
t5 = t110 * t125 + t111 * t128 + t122 * t269 + t240 * t59 + t241 * t61 + t57 * t574;
t4 = t110 * t123 - t111 * t127 + t120 * t269 + t240 * t60 + t241 * t62 + t574 * t58;
t3 = t129 * t208 - t131 * t207 + t290 * t64 + t291 * t63 + (t360 * t78 + t362 * t77 + (-t152 * t362 + t360 * t562) * qJD(1)) * qJD(3) + t475;
t2 = t207 * t41 + t208 * t42 + t25 * t347 + t290 * t7 - t291 * t6 + t500 * t70;
t1 = t207 * t43 + t208 * t44 + t24 * t347 + t290 * t5 - t291 * t4 + t500 * t71;
t14 = [m(3) * ((-t299 * t375 - t521) * t653 + (-t520 + (-0.2e1 * t483 - t365 + t653) * t375) * (-t299 - t628)) + t71 * t637 + t70 * t638 + t25 * t634 + t24 * t635 + t606 / 0.2e1 + t607 / 0.2e1 - t626 / 0.2e1 + t625 / 0.2e1 + t621 + ((-t608 + (t80 - t200 + (t212 + t584) * t362 + t560) * t362 + (-t139 * t579 + t45 + t48 - t674) * t360) * qJD(3) + t687) * t493 + (t634 + t633) * t13 + ((t303 - t235) * t373 + (-t236 * t368 + t237 * t369 + t304) * t371 + (t261 * t371 + t373 * t433 - t432) * qJD(3)) * qJD(1) + (t11 * (-t460 + t473 + t487) + t39 * t461 + t10 * (t426 + t654 + t131) + t40 * (-t357 * t507 - t370 * t506 + t519 + t540 + t544) + (-t11 * pkin(2) + (-t39 * qJD(4) + t11 * t605) * t371 + t39 * (t373 * t605 + t569) * qJD(3)) * t360 + ((-t372 * t40 - t374 * t39) * pkin(1) + (t371 * t605 + t486) * t609 + (t39 * (-pkin(4) * t368 - pkin(6)) + t40 * (t486 - t616)) * t360) * qJD(1) - (-t39 + (t152 - t628) * qJD(1) + t655 + t666) * t40) * m(6) + (-(t326 - t67 + (-t148 - t628) * qJD(1) + t655) * t68 - t485 * t531 + t34 * (-t463 + t487) + t67 * (t316 - t464) + t33 * (t654 - t563) + t68 * (-pkin(3) * t507 + t311 + t516 + t540) + (t34 * t401 + t67 * (t529 * t661 - t363)) * t360 + ((-t372 * t68 - t374 * t67) * pkin(1) + t67 * (t371 * t661 - pkin(2) - t627) * t362 + (-t67 * pkin(6) + t401 * t68) * t360) * qJD(1)) * m(5) + (t73 * (t360 * t503 + t487 + t539) + t72 * t667 + t116 * (t346 + t543) + (t329 * t587 - t585) * qJD(3) + ((-t115 * t374 - t116 * t372) * pkin(1) + (-pkin(2) - t465) * t586 + (t115 * (-rSges(4,3) - pkin(6)) + t116 * t503) * t360) * qJD(1) - (-t508 - t115 - t296 + (-t229 - t628) * qJD(1)) * t116) * m(4) + (t679 + t680) * t532 / 0.2e1 + (((t362 * t478 + t674 + t82) * t362 + (t360 * t478 - t46 + t479 - t664 + t677) * t360) * qJD(3) + t683 - t684) * t496 - (t678 - t681 + t682) * t531 / 0.2e1 + ((t676 + t689) * t360 + (t675 + t688) * t362) * qJD(3) * t623; m(4) * t51 + m(5) * t21 + m(6) * t3; t456 * t637 + t458 * t638 + (qJD(1) * t453 + t360 * t9 - t362 * t8) * t631 + (((t183 * t359 - t185 * t361 + t122) * t290 - (t182 * t359 - t184 * t361 + t120) * t291 + (-t245 * t359 + t247 * t361 + t242) * t347 + t92 * qJD(5)) * t371 + (qJD(5) * t453 - t642) * t373) * t632 + ((t183 * t238 - t185 * t239) * t290 - (t182 * t238 - t184 * t239) * t291 + (-t238 * t245 + t239 * t247) * t347 + (t371 * t70 + t42 * t573) * qJD(5) + ((qJD(5) * t41 + t404) * t373 + t377) * t360) * t633 + (qJD(1) * t457 + t360 * t7 - t362 * t6) * t634 + (qJD(1) * t455 + t360 * t5 - t362 * t4) * t635 + ((-t183 * t240 - t185 * t241) * t290 - (-t182 * t240 - t184 * t241) * t291 + (t240 * t245 + t241 * t247) * t347 + (t371 * t71 + t43 * t578) * qJD(5) + ((qJD(5) * t44 + t404) * t373 + t377) * t362) * t636 + t454 * t468 - t20 * t527 / 0.2e1 - (-t665 * t373 + ((-t264 * t368 + t266 * t369 + t261) * qJD(1) + ((t197 * t368 - t199 * t369 + t141) * t360 - (t196 * t368 - t198 * t369 + t139) * t362) * qJD(3)) * t371 + (t371 * t542 + t373 * t541) * qJD(1) + ((t360 * t554 - t362 * t555) * t373 + (t360 * t556 + t362 * t557) * t371) * qJD(3)) * qJD(1) / 0.2e1 + (t681 * t362 + t680 * t360 + (t676 * t360 + t675 * t362) * qJD(1)) * t623 + ((-t197 * t259 - t199 * t260) * t532 + (t259 * t264 + t260 * t266) * qJD(1) + ((t259 * t196 + t260 * t198 + t411) * qJD(3) + t376) * t362 + (-t532 * t581 + t537) * t360 + (t389 + (-t643 * t362 + (t582 + t400) * t360) * qJD(3)) * t362) * t496 + (-(t196 * t257 - t198 * t258) * t531 + (-t257 * t264 + t258 * t266) * qJD(1) + ((t257 * t197 - t258 * t199 + t411) * qJD(3) + t376) * t360 + (-t531 * t582 - t537) * t362 + (t389 + (t400 * t360 + (t581 - t643) * t362) * qJD(3)) * t360) * t493 - t651 * t526 / 0.2e1 + (t39 * t295 + t3 * t550 + t31 * t518 + (t11 * t514 + t39 * t517 + t3 * (t131 + t153) + t31 * (t63 + t77) + (t31 * t564 + t40 * t514) * qJD(1)) * t362 + (t10 * t514 + t40 * t517 + t3 * t564 + t31 * (t64 + t78) + (t39 * t552 + t31 * (-t131 + t562)) * qJD(1)) * t360 - t39 * (qJD(1) * t178 + t186 * t347 - t250 * t291 + t477) - t40 * (-qJD(1) * t179 - t187 * t347 - t250 * t290 + t547) - t31 * (-t186 * t290 - t187 * t291 + t515) - ((-t129 * t39 + t131 * t40) * t371 + t381 * t373) * qJD(5) - ((-t31 * t179 + t39 * t551) * t362 + (-t31 * t178 + t40 * t551) * t360) * qJD(3)) * m(6) + (-t67 * (qJD(1) * t203 + t477) - t68 * (-qJD(1) * t204 + t547) - t52 * t515 - ((-t52 * t204 + t545 * t67) * t362 + (-t52 * t203 + t545 * t68) * t360) * qJD(3) + t67 * t295 + t21 * t550 + t52 * t518 + (t34 * t546 + t67 * t548 + t21 * t150 + t52 * t90 + (t52 * t148 + t485) * qJD(1)) * t362 + (t33 * t546 + t68 * t548 + t21 * t148 + t52 * t91 + (t67 * t270 + t52 * t563) * qJD(1)) * t360) * m(5) + (-(t115 * t282 - t585) * qJD(1) - (t114 * (-t282 * t360 - t286 * t362) + t444 * t465) * qJD(3) + t51 * t435 + t114 * t386 + t444 * t306 + (-t72 * t360 - t73 * t362 + (-t116 * t362 + t587) * qJD(1)) * t329) * m(4) + (t1 + t679 * qJD(1) + ((-t139 * t269 - t142 * t190 - t145 * t191 - t259 * t87 - t260 * t89 - t574 * t85) * t362 + (t141 * t269 + t144 * t190 + t147 * t191 + t259 * t86 + t260 * t88 + t647 * t360 + t574 * t84 - t673) * t360 + (t677 * t360 + t362 * t690) * qJD(1)) * t662) * t360 / 0.2e1 - (t2 + t678 * qJD(1) + ((-t139 * t268 - t142 * t192 - t145 * t193 + t257 * t87 - t258 * t89 - t579 * t85 + t673) * t362 + (t141 * t268 + t144 * t192 + t147 * t193 - t257 * t86 + t258 * t88 - t362 * t647 + t579 * t84) * t360 + (t360 * t692 + t691 * t362) * qJD(1)) * t662) * t362 / 0.2e1 + (t12 + t683 + t685) * t536 / 0.2e1 + (t13 + t682 + t686) * t497; -m(5) * (t267 * t52 + t268 * t68 + t269 * t67) - m(6) * (t267 * t31 + t268 * t40 + t269 * t39) + 0.2e1 * ((t531 * t67 + t532 * t68 - t21) * t640 + (t39 * t531 + t40 * t532 - t3) * t639) * t373 + 0.2e1 * ((qJD(3) * t52 + t33 * t360 + t34 * t362 + t535 * t68 - t536 * t67) * t640 + (qJD(3) * t31 + t10 * t360 + t11 * t362 - t39 * t536 + t40 * t535) * t639) * t371; -t13 * t512 / 0.2e1 + t1 * t574 / 0.2e1 + (t371 * t455 - t373 * t71) * t637 + ((qJD(3) * t455 - t24) * t373 + (-qJD(1) * t456 + qJD(3) * t71 + t360 * t4 + t362 * t5) * t371) * t635 + t371 * t12 * t497 + t2 * t579 / 0.2e1 + (t371 * t457 - t373 * t70) * t638 + ((qJD(3) * t457 - t25) * t373 + (-qJD(1) * t458 + qJD(3) * t70 + t360 * t6 + t362 * t7) * t371) * t634 + t20 * t492 - t373 * (t606 + t607 + t621 + t625 - t626) / 0.2e1 + (t371 * t453 - t373 * t92) * t468 + ((qJD(3) * t453 - t32) * t373 + (-qJD(1) * t454 + qJD(3) * t92 + t360 * t8 + t362 * t9) * t371) * t631 + (t240 * t641 + t388 * t241 - t362 * t398) * t636 + (-t238 * t641 + t239 * t388 - t360 * t398) * t633 + (t403 * t373 + (-t359 * t641 + t361 * t388) * t371) * t632 + t651 * t529 / 0.2e1 + ((qJD(3) * t381 - t10 * t131 + t11 * t129 + t39 * t64 - t40 * t63) * t373 + (t39 * (-qJD(3) * t129 + t177 * t360) + t40 * (qJD(3) * t131 - t177 * t362) + t3 * t441 + t31 * (-t129 * t536 - t131 * t535 - t360 * t63 + t362 * t64) + (-t10 * t362 + t11 * t360 + (t360 * t40 + t609) * qJD(1)) * t249) * t371 - t39 * (-t162 * t347 - t284 * t291) - t40 * (t163 * t347 - t284 * t290) - t31 * (t162 * t290 + t163 * t291)) * m(6);];
tauc = t14(:);