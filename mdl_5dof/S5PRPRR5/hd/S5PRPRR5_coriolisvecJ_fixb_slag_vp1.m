% Calculate vector of centrifugal and Coriolis load on the joints for
% S5PRPRR5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d2,d4,d5,theta1,theta3]';
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
% Datum: 2019-12-05 15:55
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5PRPRR5_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR5_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRR5_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPRR5_coriolisvecJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRPRR5_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRPRR5_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5PRPRR5_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:53:26
% EndTime: 2019-12-05 15:54:17
% DurationCPUTime: 32.31s
% Computational Cost: add. (24575->900), mult. (29816->1369), div. (0->0), fcn. (28447->10), ass. (0->437)
t365 = sin(qJ(2));
t366 = cos(qJ(2));
t361 = sin(pkin(8));
t356 = t361 ^ 2;
t363 = cos(pkin(8));
t357 = t363 ^ 2;
t526 = t356 + t357;
t629 = m(3) * qJD(2) ^ 2 * (rSges(3,1) * t365 + rSges(3,2) * t366) * t526;
t353 = qJD(3) * t365;
t341 = t361 * t353;
t332 = pkin(2) * t365 - qJ(3) * t366;
t412 = qJD(2) * t332;
t246 = -t361 * t412 + t341;
t343 = t363 * t353;
t247 = -t363 * t412 + t343;
t628 = t361 * t246 + t363 * t247 + t412 * t526 - t353;
t349 = qJD(2) * t361;
t521 = qJD(4) * t365;
t323 = t363 * t521 + t349;
t525 = qJD(2) * t363;
t324 = t361 * t521 - t525;
t627 = t323 * t361 - t324 * t363;
t362 = cos(pkin(9));
t586 = t362 * pkin(3);
t607 = pkin(6) * t366 - t365 * t586;
t399 = qJD(2) * t607;
t191 = t361 * t399;
t192 = t363 * t399;
t624 = t361 * t191 + t363 * t192 - t399 * t526 + t628;
t360 = sin(pkin(9));
t572 = Icges(3,4) * t365;
t451 = -Icges(3,2) * t366 - t572;
t571 = Icges(3,4) * t366;
t455 = -Icges(3,1) * t365 - t571;
t523 = qJD(2) * t366;
t524 = qJD(2) * t365;
t623 = -t455 * t523 + (-Icges(4,3) * t366 - (-Icges(4,5) * t362 + Icges(4,6) * t360) * t365 + t451) * t524;
t520 = qJD(4) * t366;
t613 = -rSges(4,1) * t362 + rSges(4,2) * t360;
t611 = rSges(4,3) * t366 + t365 * t613;
t550 = t363 * t366;
t310 = -t360 * t550 + t361 * t362;
t555 = t360 * t361;
t311 = t362 * t550 + t555;
t551 = t363 * t365;
t175 = Icges(4,5) * t311 + Icges(4,6) * t310 + Icges(4,3) * t551;
t452 = -Icges(3,2) * t365 + t571;
t276 = Icges(3,6) * t361 + t363 * t452;
t456 = Icges(3,1) * t366 - t572;
t278 = Icges(3,5) * t361 + t363 * t456;
t437 = (Icges(4,4) * t311 + Icges(4,2) * t310 + Icges(4,6) * t551) * t360 - (Icges(4,1) * t311 + Icges(4,4) * t310 + Icges(4,5) * t551) * t362;
t620 = t623 * t363 + ((-t175 + t276) * t366 + (t278 - t437) * t365) * qJD(2);
t552 = t361 * t366;
t308 = -t360 * t552 - t362 * t363;
t554 = t360 * t363;
t309 = t362 * t552 - t554;
t553 = t361 * t365;
t174 = Icges(4,5) * t309 + Icges(4,6) * t308 + Icges(4,3) * t553;
t275 = -Icges(3,6) * t363 + t361 * t452;
t277 = -Icges(3,5) * t363 + t361 * t456;
t438 = (Icges(4,4) * t309 + Icges(4,2) * t308 + Icges(4,6) * t553) * t360 - (Icges(4,1) * t309 + Icges(4,4) * t308 + Icges(4,5) * t553) * t362;
t619 = t623 * t361 + ((-t174 + t275) * t366 + (t277 - t438) * t365) * qJD(2);
t617 = t526 * qJD(2) * t611;
t358 = pkin(9) + qJ(4);
t352 = qJ(5) + t358;
t345 = sin(t352);
t346 = cos(t352);
t446 = Icges(6,5) * t346 - Icges(6,6) * t345;
t238 = -Icges(6,3) * t366 + t365 * t446;
t350 = sin(t358);
t351 = cos(t358);
t447 = Icges(5,5) * t351 - Icges(5,6) * t350;
t252 = -Icges(5,3) * t366 + t365 * t447;
t563 = Icges(6,4) * t346;
t449 = -Icges(6,2) * t345 + t563;
t240 = -Icges(6,6) * t366 + t365 * t449;
t567 = Icges(5,4) * t351;
t450 = -Icges(5,2) * t350 + t567;
t254 = -Icges(5,6) * t366 + t365 * t450;
t564 = Icges(6,4) * t345;
t453 = Icges(6,1) * t346 - t564;
t242 = -Icges(6,5) * t366 + t365 * t453;
t568 = Icges(5,4) * t350;
t454 = Icges(5,1) * t351 - t568;
t256 = -Icges(5,5) * t366 + t365 * t454;
t466 = rSges(6,1) * t346 - rSges(6,2) * t345;
t244 = -rSges(6,3) * t366 + t365 * t466;
t467 = rSges(5,1) * t351 - rSges(5,2) * t350;
t259 = -rSges(5,3) * t366 + t365 * t467;
t528 = pkin(4) * t351;
t195 = -pkin(7) * t366 + t365 * t528;
t580 = pkin(4) * qJD(4);
t515 = t350 * t580;
t371 = -qJD(2) * t195 - t366 * t515;
t514 = t351 * t580;
t106 = t361 * t371 - t363 * t514;
t107 = t361 * t514 + t363 * t371;
t261 = -t345 * t552 - t346 * t363;
t262 = -t363 * t345 + t346 * t552;
t129 = rSges(6,1) * t262 + rSges(6,2) * t261 + rSges(6,3) * t553;
t263 = -t345 * t550 + t346 * t361;
t264 = t345 * t361 + t346 * t550;
t130 = rSges(6,1) * t264 + rSges(6,2) * t263 + rSges(6,3) * t551;
t519 = qJD(5) * t365;
t273 = t363 * t519 + t323;
t274 = t361 * t519 + t324;
t359 = qJD(4) + qJD(5);
t477 = qJD(2) * t359;
t459 = t366 * t477;
t297 = t361 * t459;
t298 = t363 * t459;
t196 = pkin(7) * t365 + t366 * t528;
t587 = pkin(4) * t350;
t108 = t196 * t361 - t363 * t587;
t109 = t196 * t363 + t361 * t587;
t445 = t108 * t363 - t109 * t361;
t518 = qJD(2) * qJD(3);
t508 = t246 * t349 + t247 * t525 + t365 * t518;
t458 = t191 * t349 + t192 * t525 + t508;
t517 = qJD(2) * qJD(4);
t498 = t366 * t517;
t505 = t361 * t524;
t414 = t359 * t363 + t505;
t511 = t359 * t552;
t186 = t345 * t414 - t346 * t511;
t187 = -t345 * t511 - t346 * t414;
t504 = t361 * t523;
t95 = rSges(6,1) * t187 + rSges(6,2) * t186 + rSges(6,3) * t504;
t503 = t363 * t524;
t415 = -t359 * t361 + t503;
t510 = t359 * t550;
t188 = t345 * t415 - t346 * t510;
t189 = -t345 * t510 - t346 * t415;
t502 = t363 * t523;
t96 = rSges(6,1) * t189 + rSges(6,2) * t188 + rSges(6,3) * t502;
t13 = t106 * t323 - t107 * t324 + t129 * t298 - t130 * t297 + t273 * t95 - t274 * t96 + t445 * t498 + t458;
t249 = pkin(6) * t365 + t366 * t586;
t184 = -pkin(3) * t554 + t249 * t361;
t185 = pkin(3) * t555 + t249 * t363;
t334 = pkin(2) * t366 + qJ(3) * t365;
t321 = t334 * t361;
t322 = t334 * t363;
t522 = qJD(3) * t366;
t430 = t321 * t349 + t322 * t525 + qJD(1) - t522;
t406 = t184 * t349 + t185 * t525 + t430;
t42 = t108 * t323 - t109 * t324 + t129 * t273 - t130 * t274 + t406;
t547 = t109 + t130;
t574 = t107 + t96;
t610 = -t13 * t547 - t42 * t574;
t281 = -t350 * t550 + t351 * t361;
t282 = t350 * t361 + t351 * t550;
t569 = Icges(5,4) * t282;
t137 = Icges(5,2) * t281 + Icges(5,6) * t551 + t569;
t266 = Icges(5,4) * t281;
t139 = Icges(5,1) * t282 + Icges(5,5) * t551 + t266;
t440 = -t137 * t350 + t139 * t351;
t279 = -t350 * t552 - t351 * t363;
t280 = -t363 * t350 + t351 * t552;
t570 = Icges(5,4) * t280;
t136 = Icges(5,2) * t279 + Icges(5,6) * t553 + t570;
t265 = Icges(5,4) * t279;
t138 = Icges(5,1) * t280 + Icges(5,5) * t553 + t265;
t441 = -t136 * t350 + t138 * t351;
t609 = -(-t252 * t363 - t440) * t323 - (-t252 * t361 - t441) * t324;
t608 = -t365 * (t451 * t361 + t277) - t366 * (-t455 * t361 + t275);
t239 = Icges(6,3) * t365 + t366 * t446;
t436 = -t240 * t345 + t242 * t346;
t565 = Icges(6,4) * t264;
t126 = Icges(6,2) * t263 + Icges(6,6) * t551 + t565;
t251 = Icges(6,4) * t263;
t128 = Icges(6,1) * t264 + Icges(6,5) * t551 + t251;
t443 = -t126 * t345 + t128 * t346;
t566 = Icges(6,4) * t262;
t125 = Icges(6,2) * t261 + Icges(6,6) * t553 + t566;
t250 = Icges(6,4) * t261;
t127 = Icges(6,1) * t262 + Icges(6,5) * t553 + t250;
t444 = -t125 * t345 + t127 * t346;
t478 = t359 * t366;
t606 = t273 * (-t238 * t363 - t443) + t274 * (-t238 * t361 - t444) - t478 * (t239 - t436);
t270 = (-Icges(6,2) * t346 - t564) * t365;
t381 = t273 * (-Icges(6,2) * t264 + t128 + t251) + t274 * (-Icges(6,2) * t262 + t127 + t250) - t478 * (t242 + t270);
t292 = (-Icges(5,2) * t351 - t568) * t365;
t377 = t323 * (-Icges(5,2) * t282 + t139 + t266) + t324 * (-Icges(5,2) * t280 + t138 + t265) - t520 * (t256 + t292);
t605 = -t273 / 0.2e1;
t604 = t273 / 0.2e1;
t603 = -t274 / 0.2e1;
t602 = t274 / 0.2e1;
t601 = t297 / 0.2e1;
t600 = t298 / 0.2e1;
t599 = -t526 * t524 / 0.2e1;
t598 = -t323 / 0.2e1;
t597 = t323 / 0.2e1;
t596 = -t324 / 0.2e1;
t595 = t324 / 0.2e1;
t325 = t365 * t477;
t594 = t325 / 0.2e1;
t593 = t478 / 0.2e1;
t592 = -t478 / 0.2e1;
t589 = -t366 / 0.2e1;
t134 = Icges(5,5) * t280 + Icges(5,6) * t279 + Icges(5,3) * t553;
t66 = t134 * t551 + t136 * t281 + t138 * t282;
t579 = t361 * t66;
t135 = Icges(5,5) * t282 + Icges(5,6) * t281 + Icges(5,3) * t551;
t65 = t135 * t553 + t137 * t279 + t139 * t280;
t578 = t363 * t65;
t537 = -t332 + t607;
t481 = qJD(2) * t537;
t419 = t361 * t481 + t341;
t57 = -t109 * t520 - t130 * t478 - t195 * t323 - t244 * t273 + t419;
t577 = t57 * t109;
t84 = t252 * t553 + t254 * t279 + t256 * t280;
t576 = t84 * t365;
t85 = t252 * t551 + t254 * t281 + t256 * t282;
t575 = t85 * t365;
t573 = t129 * t502 + t95 * t551;
t556 = t252 * t366;
t548 = t108 + t129;
t245 = rSges(6,3) * t365 + t366 * t466;
t272 = (-rSges(6,1) * t345 - rSges(6,2) * t346) * t365;
t122 = qJD(2) * t245 + t272 * t359;
t133 = qJD(2) * t196 - t365 * t515;
t546 = -t122 - t133;
t541 = -t195 - t244;
t307 = qJD(2) * t334 - t522;
t540 = -t249 * qJD(2) - t307;
t536 = -t249 - t334;
t290 = rSges(4,3) * t365 - t366 * t613;
t534 = -t290 * qJD(2) - t307;
t531 = -t332 + t611;
t530 = -t290 - t334;
t529 = t361 * t321 + t363 * t322;
t516 = t365 * t587;
t513 = t122 * t553 + t244 * t504 + t366 * t95;
t260 = rSges(5,3) * t365 + t366 * t467;
t294 = (-rSges(5,1) * t350 - rSges(5,2) * t351) * t365;
t158 = qJD(2) * t260 + qJD(4) * t294;
t509 = -t158 + t540;
t507 = -t259 + t537;
t501 = t553 / 0.2e1;
t500 = t551 / 0.2e1;
t499 = t366 * t518;
t497 = -t349 / 0.2e1;
t496 = t525 / 0.2e1;
t495 = t524 / 0.2e1;
t494 = t523 / 0.2e1;
t493 = -t520 / 0.2e1;
t492 = t520 / 0.2e1;
t337 = t363 * t499;
t487 = t540 * t363;
t18 = t106 * t520 + t122 * t274 - t129 * t325 + t133 * t324 + t244 * t297 + t478 * t95 + t337 + (t487 + (-t108 * t365 + t195 * t552) * qJD(4)) * qJD(2);
t490 = t18 * (t366 * t129 + t244 * t553);
t489 = t517 / 0.2e1;
t488 = t540 * t361;
t486 = t536 * t361;
t485 = t536 * t363;
t154 = rSges(6,1) * t261 - rSges(6,2) * t262;
t155 = rSges(6,1) * t263 - rSges(6,2) * t264;
t484 = t273 * t154 - t155 * t274;
t483 = -t155 * t478 - t272 * t273;
t482 = t154 * t478 + t274 * t272;
t480 = qJD(2) * t534;
t479 = qJD(2) * t531;
t476 = t540 + t546;
t475 = t361 * t184 + t363 * t185 + t529;
t473 = t537 + t541;
t472 = t361 * t494;
t471 = t363 * t494;
t470 = t365 * t489;
t469 = t366 * t489;
t123 = Icges(6,5) * t262 + Icges(6,6) * t261 + Icges(6,3) * t553;
t60 = t123 * t553 + t125 * t261 + t127 * t262;
t124 = Icges(6,5) * t264 + Icges(6,6) * t263 + Icges(6,3) * t551;
t61 = t124 * t553 + t126 * t261 + t128 * t262;
t465 = t361 * t60 + t363 * t61;
t62 = t123 * t551 + t125 * t263 + t127 * t264;
t63 = t124 * t551 + t126 * t263 + t128 * t264;
t464 = t361 * t62 + t363 * t63;
t64 = t134 * t553 + t136 * t279 + t138 * t280;
t463 = t361 * t64 + t578;
t67 = t135 * t551 + t137 * t281 + t139 * t282;
t462 = t363 * t67 + t579;
t68 = -t123 * t366 + t365 * t444;
t69 = -t124 * t366 + t365 * t443;
t461 = t361 * t68 + t363 * t69;
t70 = -t134 * t366 + t365 * t441;
t71 = -t135 * t366 + t365 * t440;
t460 = t70 * t361 + t71 * t363;
t448 = -Icges(3,5) * t365 - Icges(3,6) * t366;
t442 = t134 * t324 + t135 * t323;
t140 = rSges(5,1) * t280 + rSges(5,2) * t279 + rSges(5,3) * t553;
t141 = rSges(5,1) * t282 + rSges(5,2) * t281 + rSges(5,3) * t551;
t439 = t140 * t363 - t141 * t361;
t435 = -t254 * t350 + t256 * t351;
t432 = t361 * t469;
t431 = t363 * t469;
t89 = Icges(6,5) * t187 + Icges(6,6) * t186 + Icges(6,3) * t504;
t429 = t123 * t523 + t365 * t89;
t90 = Icges(6,5) * t189 + Icges(6,6) * t188 + Icges(6,3) * t502;
t428 = t124 * t523 + t365 * t90;
t197 = -qJD(4) * t280 + t350 * t505;
t198 = qJD(4) * t279 - t351 * t505;
t98 = Icges(5,5) * t198 + Icges(5,6) * t197 + Icges(5,3) * t504;
t427 = t134 * t523 + t365 * t98;
t199 = -qJD(4) * t282 + t350 * t503;
t200 = qJD(4) * t281 - t351 * t503;
t99 = Icges(5,5) * t200 + Icges(5,6) * t199 + Icges(5,3) * t502;
t426 = t135 * t523 + t365 * t99;
t253 = Icges(5,3) * t365 + t366 * t447;
t420 = t253 - t435;
t418 = t363 * t481 + t343;
t269 = (-Icges(6,5) * t345 - Icges(6,6) * t346) * t365;
t119 = qJD(2) * t239 + t269 * t359;
t417 = t119 * t365 + t238 * t523;
t291 = (-Icges(5,5) * t350 - Icges(5,6) * t351) * t365;
t151 = qJD(2) * t253 + qJD(4) * t291;
t416 = t151 * t365 + t252 * t523;
t59 = t140 * t323 - t141 * t324 + t406;
t411 = t59 * t439;
t293 = (-Icges(5,1) * t350 - t567) * t365;
t271 = (-Icges(6,1) * t345 - t563) * t365;
t408 = qJD(2) * t448;
t407 = (Icges(6,5) * t261 - Icges(6,6) * t262) * t274 + (Icges(6,5) * t263 - Icges(6,6) * t264) * t273 - t269 * t478;
t405 = (t455 * t363 - t276) * t366 + (-t451 * t363 - t278) * t365;
t403 = -(Icges(5,5) * t279 - Icges(5,6) * t280) * t324 - (Icges(5,5) * t281 - Icges(5,6) * t282) * t323 + t291 * t520;
t402 = t365 * t407;
t398 = Icges(4,5) * t366 + (-Icges(4,1) * t362 + Icges(4,4) * t360) * t365;
t257 = Icges(5,5) * t365 + t366 * t454;
t243 = Icges(6,5) * t365 + t366 * t453;
t395 = Icges(4,6) * t366 + (-Icges(4,4) * t362 + Icges(4,2) * t360) * t365;
t255 = Icges(5,6) * t365 + t366 * t450;
t241 = Icges(6,6) * t365 + t366 * t449;
t389 = t365 * t403;
t182 = rSges(4,1) * t309 + rSges(4,2) * t308 + rSges(4,3) * t553;
t183 = rSges(4,1) * t311 + rSges(4,2) * t310 + rSges(4,3) * t551;
t76 = (t182 * t361 + t183 * t363) * qJD(2) + t430;
t388 = t76 * t611;
t386 = qJD(2) * t398;
t385 = qJD(2) * t395;
t91 = Icges(6,4) * t187 + Icges(6,2) * t186 + Icges(6,6) * t504;
t93 = Icges(6,1) * t187 + Icges(6,4) * t186 + Icges(6,5) * t504;
t15 = (qJD(2) * t444 - t89) * t366 + (qJD(2) * t123 + (-t125 * t359 + t93) * t346 + (-t127 * t359 - t91) * t345) * t365;
t92 = Icges(6,4) * t189 + Icges(6,2) * t188 + Icges(6,6) * t502;
t94 = Icges(6,1) * t189 + Icges(6,4) * t188 + Icges(6,5) * t502;
t16 = (qJD(2) * t443 - t90) * t366 + (qJD(2) * t124 + (-t126 * t359 + t94) * t346 + (-t128 * t359 - t92) * t345) * t365;
t78 = t238 * t553 + t240 * t261 + t242 * t262;
t21 = t273 * t61 + t274 * t60 - t478 * t78;
t79 = t238 * t551 + t240 * t263 + t242 * t264;
t22 = t273 * t63 + t274 * t62 - t478 * t79;
t25 = t125 * t186 + t127 * t187 + t261 * t91 + t262 * t93 + t361 * t429;
t26 = t126 * t186 + t128 * t187 + t261 * t92 + t262 * t94 + t361 * t428;
t27 = t125 * t188 + t127 * t189 + t263 * t91 + t264 * t93 + t363 * t429;
t28 = t126 * t188 + t128 * t189 + t263 * t92 + t264 * t94 + t363 * t428;
t120 = qJD(2) * t241 + t270 * t359;
t121 = qJD(2) * t243 + t271 * t359;
t43 = t120 * t261 + t121 * t262 + t186 * t240 + t187 * t242 + t361 * t417;
t3 = t25 * t274 + t26 * t273 + t297 * t60 + t298 * t61 + t325 * t78 - t43 * t478;
t88 = -t238 * t366 + t365 * t436;
t34 = t273 * t69 + t274 * t68 - t478 * t88;
t382 = (Icges(6,1) * t263 - t126 - t565) * t273 + (Icges(6,1) * t261 - t125 - t566) * t274 - (-t240 + t271) * t478;
t44 = t120 * t263 + t121 * t264 + t188 * t240 + t189 * t242 + t363 * t417;
t4 = t27 * t274 + t273 * t28 + t297 * t62 + t298 * t63 + t325 * t79 - t44 * t478;
t45 = (qJD(2) * t436 - t119) * t366 + (qJD(2) * t238 + (-t240 * t359 + t121) * t346 + (-t242 * t359 - t120) * t345) * t365;
t383 = t3 * t501 + t4 * t500 + (t263 * t381 + t264 * t382 + t363 * t402) * t605 + (t261 * t381 + t262 * t382 + t361 * t402) * t603 + (-t407 * t366 + (-t345 * t381 + t382 * t346) * t365) * t593 + t21 * t472 + t22 * t471 + (t365 * t465 - t366 * t78) * t601 + (t365 * t464 - t366 * t79) * t600 + t34 * t495 + (t365 * t461 - t366 * t88) * t594 + (t15 * t274 + t16 * t273 + t297 * t68 + t298 * t69 + t325 * t88 - t45 * t478) * t589 + (-t366 * t44 + (t27 * t361 + t28 * t363) * t365 + (t365 * t79 + t366 * t464) * qJD(2)) * t604 + (-t366 * t43 + (t25 * t361 + t26 * t363) * t365 + (t365 * t78 + t366 * t465) * qJD(2)) * t602 + (-t366 * t45 + (t15 * t361 + t16 * t363) * t365 + (t365 * t88 + t366 * t461) * qJD(2)) * t592;
t378 = (Icges(5,1) * t281 - t137 - t569) * t323 + (Icges(5,1) * t279 - t136 - t570) * t324 - (-t254 + t293) * t520;
t152 = qJD(2) * t255 + qJD(4) * t292;
t153 = qJD(2) * t257 + qJD(4) * t293;
t376 = -t366 * (t152 * t279 + t153 * t280 + t197 * t254 + t198 * t256 + t361 * t416) + (t366 * t463 + t576) * qJD(2);
t375 = -t366 * (t152 * t281 + t153 * t282 + t199 * t254 + t200 * t256 + t363 * t416) + (t366 * t462 + t575) * qJD(2);
t97 = t365 * t435 - t556;
t374 = -t366 * ((qJD(2) * t435 - t151) * t366 + (qJD(2) * t252 - t152 * t350 + t153 * t351 + (-t254 * t351 - t256 * t350) * qJD(4)) * t365) + (t97 * t365 + t366 * t460) * qJD(2);
t370 = (t361 * t437 - t363 * t438) * t365 + (-t174 * t363 + t175 * t361) * t366;
t369 = (-t420 * t520 - t609) * t365;
t368 = (t123 * t274 + t124 * t273 - t238 * t478) * t366 + t606 * t365;
t344 = t363 * t522;
t342 = t361 * t522;
t336 = t361 * t499;
t329 = t359 * t365;
t316 = t448 * t363;
t315 = t448 * t361;
t313 = t363 * t478;
t312 = t361 * t478;
t300 = t363 * t408;
t299 = t361 * t408;
t268 = t281 * pkin(4);
t267 = t279 * pkin(4);
t237 = t398 * t363;
t236 = t398 * t361;
t235 = t395 * t363;
t234 = t395 * t361;
t221 = t256 * t363;
t220 = t256 * t361;
t219 = t254 * t363;
t218 = t254 * t361;
t215 = t363 * t386;
t214 = t361 * t386;
t213 = t363 * t385;
t212 = t361 * t385;
t208 = t244 * t363;
t207 = t244 * t361;
t206 = t242 * t363;
t205 = t242 * t361;
t204 = t240 * t363;
t203 = t240 * t361;
t181 = rSges(5,1) * t281 - rSges(5,2) * t282;
t180 = rSges(5,1) * t279 - rSges(5,2) * t280;
t162 = t363 * t479 + t343;
t161 = t361 * t479 + t341;
t116 = t363 * t480 + t337;
t115 = t361 * t480 + t336;
t114 = t130 * t524;
t113 = t129 * t551;
t105 = rSges(5,1) * t200 + rSges(5,2) * t199 + rSges(5,3) * t502;
t104 = rSges(5,1) * t198 + rSges(5,2) * t197 + rSges(5,3) * t504;
t103 = Icges(5,1) * t200 + Icges(5,4) * t199 + Icges(5,5) * t502;
t102 = Icges(5,1) * t198 + Icges(5,4) * t197 + Icges(5,5) * t504;
t101 = Icges(5,4) * t200 + Icges(5,2) * t199 + Icges(5,6) * t502;
t100 = Icges(5,4) * t198 + Icges(5,2) * t197 + Icges(5,6) * t504;
t77 = qJD(2) * t617 + t508;
t75 = t140 * t520 + t259 * t324 + t418;
t74 = -t141 * t520 - t259 * t323 + t419;
t58 = t108 * t520 + t129 * t478 + t195 * t324 + t244 * t274 + t418;
t50 = t104 * t520 + t158 * t324 + t337 + (t487 + (-t140 * t365 + t259 * t552) * qJD(4)) * qJD(2);
t49 = -t105 * t520 - t158 * t323 + t336 + (t488 + (t141 * t365 - t259 * t550) * qJD(4)) * qJD(2);
t41 = t104 * t323 - t105 * t324 + t439 * t498 + t458;
t40 = t323 * t71 + t324 * t70 - t520 * t97;
t38 = t101 * t281 + t103 * t282 + t137 * t199 + t139 * t200 + t363 * t426;
t37 = t100 * t281 + t102 * t282 + t136 * t199 + t138 * t200 + t363 * t427;
t36 = t101 * t279 + t103 * t280 + t137 * t197 + t139 * t198 + t361 * t426;
t35 = t100 * t279 + t102 * t280 + t136 * t197 + t138 * t198 + t361 * t427;
t32 = t323 * t67 + t324 * t66 - t520 * t85;
t31 = t323 * t65 + t324 * t64 - t520 * t84;
t30 = (qJD(2) * t440 - t99) * t366 + (qJD(2) * t135 - t101 * t350 + t103 * t351 + (-t137 * t351 - t139 * t350) * qJD(4)) * t365;
t29 = (qJD(2) * t441 - t98) * t366 + (qJD(2) * t134 - t100 * t350 + t102 * t351 + (-t136 * t351 - t138 * t350) * qJD(4)) * t365;
t17 = -t107 * t520 - t122 * t273 + t130 * t325 - t133 * t323 - t244 * t298 - t478 * t96 + t336 + (t488 + (t109 * t365 - t195 * t550) * qJD(4)) * qJD(2);
t10 = qJD(4) * t375 + t323 * t38 + t324 * t37;
t9 = qJD(4) * t376 + t323 * t36 + t324 * t35;
t1 = [m(4) * t77 + m(5) * t41 + m(6) * t13 - t629; (((t219 * t350 - t221 * t351 + t135) * t323 + (t218 * t350 - t220 * t351 + t134) * t324 + t97 * qJD(4)) * t365 + ((t420 * t366 + (t255 * t350 - t257 * t351 - t252) * t365 + t460) * qJD(4) + t609) * t366) * t492 + ((-t219 * t279 - t221 * t280) * t323 + (-t218 * t279 - t220 * t280) * t324 + (t576 + (-t255 * t279 - t257 * t280 + t578) * t366) * qJD(4) + (((t64 - t556) * qJD(4) + t442) * t366 + t369) * t361) * t596 + ((-t219 * t281 - t221 * t282) * t323 + (-t218 * t281 - t220 * t282) * t324 + (t575 + (-t255 * t281 - t257 * t282 + t579) * t366) * qJD(4) + (((t67 - t556) * qJD(4) + t442) * t366 + t369) * t363) * t598 + (t315 * t357 * t496 + t316 * t356 * t497) * qJD(2) + ((-t204 * t261 - t206 * t262) * t273 + t61 * t313 + (-t203 * t261 - t205 * t262) * t274 + t60 * t312 - (t241 * t261 + t243 * t262) * t478 + t78 * t329 + t368 * t361) * t603 + ((-t204 * t263 - t206 * t264) * t273 + t63 * t313 + (-t203 * t263 - t205 * t264) * t274 + t62 * t312 - (t241 * t263 + t243 * t264) * t478 + t79 * t329 + t368 * t363) * t605 + (t68 * t312 + t69 * t313 + t88 * t329 - t606 * t366 + ((t204 * t345 - t206 * t346 + t124) * t273 + (t203 * t345 - t205 * t346 + t123) * t274 - (-t241 * t345 + t243 * t346 + t238) * t478) * t365) * t593 + (-t526 + 0.1e1) * (rSges(3,1) * t366 - rSges(3,2) * t365) * t629 + (t361 * t71 - t363 * t70) * t470 + (-t75 * (t260 * t324 + t344) - t74 * (-t260 * t323 + t342) - (t485 * t75 + t486 * t74) * qJD(2) - ((-t140 * t75 + t141 * t74) * t365 + t411 * t366) * qJD(4) + t41 * t475 + (t41 * t141 + t50 * t507 + t509 * t75) * t363 + (t41 * t140 + t49 * t507 + t509 * t74) * t361 + (t104 * t361 + t105 * t363 + t259 * t627 + t624) * t59) * m(5) + (-t58 * (-t129 * t329 + t196 * t324 - t207 * t478 + t244 * t312 + t245 * t274 + t344) - t57 * (t130 * t329 - t196 * t323 + t208 * t478 - t244 * t313 - t245 * t273 + t342) - (t485 * t58 + t486 * t57) * qJD(2) - (-t108 * t58 + t577) * t521 + t13 * t475 + (t18 * t473 + t476 * t58 - t610) * t363 + (t13 * t548 + t17 * t473 + t57 * t476) * t361 + (-t129 * t313 + t130 * t312 + t207 * t273 - t208 * t274 - t445 * t520 + (t106 + t95) * t361 + t624 + t627 * t195) * t42) * m(6) + (-t162 * t344 - t161 * t342 - ((t162 * t530 + t363 * t388) * t363 + (t161 * t530 + t361 * t388) * t361) * qJD(2) + t77 * t529 + (t116 * t531 + t162 * t534 + t77 * t183) * t363 + (t115 * t531 + t161 * t534 + t77 * t182) * t361 + (t617 + t628) * t76) * m(4) + ((-t29 + t32) * t363 + (t30 + t31) * t361) * t493 - (t9 + t3) * t363 / 0.2e1 + (t10 + t4) * t361 / 0.2e1 + (t361 * t61 - t363 * t60) * t601 + (-t25 * t363 + t26 * t361) * t602 + (-t27 * t363 + t28 * t361) * t604 + (-t15 * t363 + t16 * t361) * t592 + (t361 * t69 - t363 * t68) * t594 + (-t35 * t363 + t36 * t361) * t595 + (t361 * t38 - t363 * t37) * t597 + (t361 * t63 - t363 * t62) * t600 + ((t308 * t235 + t309 * t237 + t370) * t496 + (t235 * t310 + t237 * t311) * t497 + (t213 * t310 + t215 * t311 + t300 * t361 + t405 * t496) * t361 + ((-t316 - t608) * t496 - t212 * t310 - t214 * t311 + t619 * t363 + (-t299 - t620) * t361) * t363) * t349 + (-(t234 * t308 + t236 * t309) * t496 + (-t310 * t234 - t311 * t236 + t370) * t497 + (t212 * t308 + t214 * t309 - t299 * t363 - t608 * t497) * t363 + ((-t315 + t405) * t497 - t213 * t308 - t215 * t309 + t620 * t361 + (t300 - t619) * t363) * t361) * t525 + (t361 * t67 - t363 * t66) * t431 + (t361 * t65 - t363 * t64) * t432 - t40 * t521 / 0.2e1 - t312 * t21 / 0.2e1 - t313 * t22 / 0.2e1 - t329 * t34 / 0.2e1; 0.2e1 * (t13 * t589 + t42 * t599) * m(6) + 0.2e1 * (t41 * t589 + t59 * t599) * m(5) + 0.2e1 * (t589 * t77 + t599 * t76) * m(4) + 0.2e1 * (m(4) * (qJD(2) * t76 + t115 * t361 + t116 * t363) / 0.2e1 + m(5) * (qJD(2) * t59 + t361 * t49 + t363 * t50) / 0.2e1 + m(6) * (qJD(2) * t42 + t17 * t361 + t18 * t363) / 0.2e1) * t365; t31 * t472 + (qJD(4) * t374 + t29 * t324 + t30 * t323) * t589 + ((t361 * t37 + t363 * t38) * t365 + t375) * t597 + ((t35 * t361 + t36 * t363) * t365 + t376) * t595 + (t403 * t366 + (-t350 * t377 + t378 * t351) * t365) * t492 + ((t29 * t361 + t30 * t363) * t365 + t374) * t493 + t32 * t471 + t10 * t500 + t9 * t501 + (t279 * t377 + t280 * t378 - t361 * t389) * t596 + (t281 * t377 + t282 * t378 - t363 * t389) * t598 + t40 * t495 + (t365 * t460 - t366 * t97) * t470 + t383 + (t365 * t463 - t366 * t84) * t432 + (t365 * t462 - t366 * t85) * t431 + (-t58 * (t267 * t520 - t324 * t516 + t482) - t57 * (-t268 * t520 + t323 * t516 + t483) - t42 * (t267 * t323 - t268 * t324 + t484) + t490 + t58 * t513 + t57 * t114 + t13 * t113 + t42 * t573 + (t18 * t108 + t58 * t106 - t17 * t547 - t57 * t574 + ((t42 * t108 + t541 * t57) * t363 + (t58 * t195 - t42 * t547) * t361) * qJD(2)) * t366 + ((-t548 * t58 + t577) * qJD(2) + (t42 * t106 + t13 * t108 + t17 * t541 + t546 * t57) * t363 + (t58 * t133 + t18 * t195 + t610) * t361) * t365) * m(6) + (-t75 * (t180 * t520 + t294 * t324) - t74 * (-t181 * t520 - t294 * t323) - t59 * (t180 * t323 - t181 * t324) + (t75 * t104 - t74 * t105 + t50 * t140 - t49 * t141 + (t411 + (t361 * t75 - t363 * t74) * t259) * qJD(2)) * t366 + (t75 * (-qJD(2) * t140 + t158 * t361) + t74 * (qJD(2) * t141 - t158 * t363) + t41 * t439 + t59 * (t104 * t363 - t105 * t361) + (t361 * t50 - t363 * t49) * t259) * t365) * m(5); t383 + (t490 + t17 * (-t130 * t366 - t244 * t551) + t13 * (-t130 * t553 + t113) + (-t129 * t524 - t482 + t513) * t58 + (-t483 - t366 * t96 + t114 + (-t122 * t365 - t244 * t523) * t363) * t57 + (-t484 + (-t130 * t523 - t365 * t96) * t361 + t573) * t42) * m(6);];
tauc = t1(:);