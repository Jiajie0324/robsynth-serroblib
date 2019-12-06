% Calculate matrix of centrifugal and coriolis load on the joints for
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
% Cq [5x5]
%   matrix of coriolis and centrifugal joint torques.
%   Gives coriolis joint torques when multiplied with joint velocities

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-05 15:55
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Cq = S5PRPRR5_coriolismatJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PRPRR5_coriolismatJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PRPRR5_coriolismatJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PRPRR5_coriolismatJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PRPRR5_coriolismatJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PRPRR5_coriolismatJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5PRPRR5_coriolismatJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolismat_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:53:29
% EndTime: 2019-12-05 15:54:04
% DurationCPUTime: 17.93s
% Computational Cost: add. (59839->752), mult. (61865->1139), div. (0->0), fcn. (66603->10), ass. (0->430)
t419 = sin(qJ(2));
t647 = t419 ^ 2;
t420 = cos(qJ(2));
t633 = t420 ^ 2;
t540 = t419 * t420;
t412 = pkin(9) + qJ(4);
t406 = cos(t412);
t505 = pkin(4) * t406;
t287 = -pkin(7) * t420 + t419 * t505;
t415 = sin(pkin(8));
t256 = t287 * t415;
t645 = 0.2e1 * (Icges(3,1) - Icges(3,2)) * t540 + (0.2e1 * t633 - 0.2e1 * t647) * Icges(3,4);
t627 = m(5) / 0.2e1;
t625 = m(6) / 0.2e1;
t610 = t415 / 0.2e1;
t417 = cos(pkin(8));
t609 = -t417 / 0.2e1;
t607 = t419 / 0.2e1;
t606 = -t420 / 0.2e1;
t466 = -Icges(3,5) * t419 - Icges(3,6) * t420;
t382 = t466 * t415;
t383 = t466 * t417;
t410 = t415 ^ 2;
t411 = t417 ^ 2;
t502 = t410 + t411;
t288 = pkin(7) * t419 + t420 * t505;
t559 = t288 * t415;
t405 = sin(t412);
t597 = pkin(4) * t405;
t224 = -t417 * t597 + t559;
t407 = qJ(5) + t412;
t399 = sin(t407);
t400 = cos(t407);
t551 = t415 * t420;
t345 = -t399 * t551 - t417 * t400;
t346 = -t417 * t399 + t400 * t551;
t552 = t415 * t419;
t242 = rSges(6,1) * t346 + rSges(6,2) * t345 + rSges(6,3) * t552;
t545 = t419 * t242;
t232 = t417 * t545;
t225 = t288 * t417 + t415 * t597;
t548 = t417 * t420;
t347 = -t399 * t548 + t415 * t400;
t348 = t415 * t399 + t400 * t548;
t549 = t417 * t419;
t243 = rSges(6,1) * t348 + rSges(6,2) * t347 + rSges(6,3) * t549;
t530 = t225 + t243;
t140 = t232 + (t224 * t417 - t530 * t415) * t419;
t361 = -t405 * t551 - t417 * t406;
t362 = -t417 * t405 + t406 * t551;
t254 = rSges(5,1) * t362 + rSges(5,2) * t361 + rSges(5,3) * t552;
t363 = -t405 * t548 + t415 * t406;
t364 = t415 * t405 + t406 * t548;
t255 = rSges(5,1) * t364 + rSges(5,2) * t363 + rSges(5,3) * t549;
t195 = (t254 * t417 - t255 * t415) * t419;
t477 = rSges(5,1) * t406 - rSges(5,2) * t405;
t343 = -rSges(5,3) * t420 + t419 * t477;
t561 = t254 * t420;
t216 = t343 * t552 + t561;
t560 = t255 * t420;
t217 = -t343 * t549 - t560;
t533 = t216 * t548 + t217 * t551;
t235 = t420 * t242;
t476 = rSges(6,1) * t400 - rSges(6,2) * t399;
t330 = -rSges(6,3) * t420 + t419 * t476;
t210 = t330 * t552 + t235;
t567 = t224 * t420;
t154 = t287 * t552 + t210 + t567;
t487 = t530 * t420;
t517 = -t287 - t330;
t155 = t517 * t549 - t487;
t536 = t154 * t548 + t155 * t551;
t639 = t502 * t419;
t584 = (t195 * t639 + t533) * t627 + (t140 * t639 + t536) * t625;
t304 = t330 * t415;
t331 = t419 * rSges(6,3) + t420 * t476;
t495 = -t420 * t304 + t330 * t551 + t331 * t552;
t531 = t224 + t242;
t105 = (-t531 + t559) * t419 + t495;
t234 = t419 * t243;
t516 = -t288 - t331;
t305 = t330 * t417;
t520 = -t287 * t417 - t305;
t106 = t419 * t225 + t234 - t520 * t420 + (t419 * t516 + t420 * t517) * t417;
t312 = t343 * t415;
t313 = t343 * t417;
t167 = (-t312 * t419 + t561) * t417 + (t313 * t419 - t560) * t415;
t344 = t419 * rSges(5,3) + t420 * t477;
t455 = t343 * t420 + t344 * t419;
t182 = -t419 * t254 - t312 * t420 + t415 * t455;
t183 = t419 * t255 + t313 * t420 - t417 * t455;
t529 = t417 * t235 - t304 * t549;
t97 = (-t256 * t419 + t567) * t417 + (-t419 * t520 - t487) * t415 + t529;
t595 = (-t420 * t97 + (t105 * t417 + t106 * t415 + t140) * t419 + t536) * t625 + (-t167 * t420 + (t182 * t417 + t183 * t415 + t195) * t419 + t533) * t627;
t642 = t584 - t595;
t264 = rSges(6,1) * t345 - rSges(6,2) * t346;
t244 = t264 * t549;
t265 = rSges(6,1) * t347 - rSges(6,2) * t348;
t200 = -t265 * t552 + t244;
t356 = (-rSges(6,1) * t399 - rSges(6,2) * t400) * t419;
t218 = t420 * t264 + t356 * t552;
t219 = -t265 * t420 - t356 * t549;
t258 = Icges(6,5) * t345 - Icges(6,6) * t346;
t334 = Icges(6,4) * t345;
t240 = Icges(6,1) * t346 + Icges(6,5) * t552 + t334;
t526 = -Icges(6,2) * t346 + t240 + t334;
t577 = Icges(6,4) * t346;
t238 = Icges(6,2) * t345 + Icges(6,6) * t552 + t577;
t528 = Icges(6,1) * t345 - t238 - t577;
t131 = -t258 * t420 + (-t526 * t399 + t528 * t400) * t419;
t259 = Icges(6,5) * t347 - Icges(6,6) * t348;
t335 = Icges(6,4) * t347;
t241 = Icges(6,1) * t348 + Icges(6,5) * t549 + t335;
t525 = -Icges(6,2) * t348 + t241 + t335;
t576 = Icges(6,4) * t348;
t239 = Icges(6,2) * t347 + Icges(6,6) * t549 + t576;
t527 = Icges(6,1) * t347 - t239 - t576;
t132 = -t259 * t420 + (-t525 * t399 + t527 * t400) * t419;
t353 = (-Icges(6,5) * t399 - Icges(6,6) * t400) * t419;
t107 = t258 * t552 + t526 * t345 + t528 * t346;
t108 = t259 * t552 + t525 * t345 + t527 * t346;
t575 = Icges(6,4) * t399;
t471 = Icges(6,1) * t400 - t575;
t328 = -Icges(6,5) * t420 + t419 * t471;
t514 = t328 + (-Icges(6,2) * t400 - t575) * t419;
t574 = Icges(6,4) * t400;
t467 = -Icges(6,2) * t399 + t574;
t326 = -Icges(6,6) * t420 + t419 * t467;
t515 = -t326 + (-Icges(6,1) * t399 - t574) * t419;
t556 = t353 * t420;
t46 = -(t345 * t514 + t346 * t515) * t420 + (t108 * t417 + (t107 - t556) * t415) * t419;
t109 = t258 * t549 + t526 * t347 + t528 * t348;
t110 = t259 * t549 + t525 * t347 + t527 * t348;
t47 = -(t347 * t514 + t348 * t515) * t420 + (t109 * t415 + (t110 - t556) * t417) * t419;
t490 = t549 / 0.2e1;
t492 = t552 / 0.2e1;
t498 = t46 * t492 + t47 * t490 + (t353 * t633 + (t132 * t417 + t131 * t415 - (-t514 * t399 + t515 * t400) * t420) * t419) * t606;
t10 = t498 + m(6) * (t140 * t200 + t154 * t218 + t155 * t219);
t641 = t10 * qJD(5);
t555 = (-Icges(5,5) * t405 - Icges(5,6) * t406) * t540;
t624 = m(6) / 0.4e1;
t626 = m(5) / 0.4e1;
t485 = m(4) / 0.4e1 + t626 + t624;
t504 = t502 * t540;
t640 = t485 * (t504 - t540);
t578 = Icges(5,4) * t406;
t468 = -Icges(5,2) * t405 + t578;
t339 = -Icges(5,6) * t420 + t419 * t468;
t511 = -t339 + (-Icges(5,1) * t405 - t578) * t419;
t579 = Icges(5,4) * t405;
t472 = Icges(5,1) * t406 - t579;
t341 = -Icges(5,5) * t420 + t419 * t472;
t510 = t341 + (-Icges(5,2) * t406 - t579) * t419;
t236 = Icges(6,5) * t346 + Icges(6,6) * t345 + Icges(6,3) * t552;
t299 = t326 * t415;
t301 = t328 * t415;
t464 = Icges(6,5) * t400 - Icges(6,6) * t399;
t324 = -Icges(6,3) * t420 + t419 * t464;
t461 = -t238 * t399 + t240 * t400;
t451 = -t324 * t415 - t461;
t127 = -t451 * t420 + (t299 * t399 - t301 * t400 + t236) * t419;
t237 = Icges(6,5) * t348 + Icges(6,6) * t347 + Icges(6,3) * t549;
t300 = t326 * t417;
t302 = t328 * t417;
t460 = -t239 * t399 + t241 * t400;
t450 = -t324 * t417 - t460;
t128 = -t450 * t420 + (t300 * t399 - t302 * t400 + t237) * t419;
t457 = -t326 * t399 + t328 * t400;
t558 = t324 * t420;
t206 = t419 * t457 - t558;
t327 = Icges(6,6) * t419 + t420 * t467;
t329 = Icges(6,5) * t419 + t420 * t471;
t444 = (Icges(6,3) * t419 + t420 * t464 - t457) * t420;
t566 = t236 * t420;
t165 = t419 * t461 - t566;
t565 = t237 * t420;
t166 = t419 * t460 - t565;
t463 = t165 * t415 + t166 * t417;
t638 = ((t444 + t463) * t420 + (t128 * t417 + t127 * t415 - (-t327 * t399 + t329 * t400 + t324) * t420 + t206) * t419) * t606 + (-t206 * t420 + t419 * t463) * t607;
t71 = -t107 * t417 + t108 * t415;
t72 = -t109 * t417 + t110 * t415;
t594 = t71 * t609 + t72 * t610;
t202 = t415 * t264 + t417 * t265;
t351 = t361 * pkin(4);
t352 = t363 * pkin(4);
t179 = t351 * t415 + t352 * t417 + t202;
t280 = rSges(5,1) * t361 - rSges(5,2) * t362;
t281 = rSges(5,1) * t363 - rSges(5,2) * t364;
t209 = t280 * t415 + t281 * t417;
t479 = t419 * t597 - t356;
t291 = t479 * t415;
t292 = t479 * t417;
t370 = (-rSges(5,1) * t405 - rSges(5,2) * t406) * t419;
t537 = (-t179 * t420 + (t291 * t415 + t292 * t417) * t419) * t625 + (-t209 * t420 - t370 * t639) * t627;
t465 = Icges(5,5) * t406 - Icges(5,6) * t405;
t337 = -Icges(5,3) * t420 + t419 * t465;
t414 = sin(pkin(9));
t416 = cos(pkin(9));
t478 = rSges(4,1) * t416 - rSges(4,2) * t414;
t636 = rSges(4,3) * t420 - t419 * t478;
t596 = t416 * pkin(3);
t442 = pkin(6) * t420 - t596 * t419;
t378 = -t414 * t551 - t417 * t416;
t550 = t417 * t414;
t379 = t416 * t551 - t550;
t380 = -t414 * t548 + t415 * t416;
t553 = t415 * t414;
t381 = t416 * t548 + t553;
t635 = (-(Icges(4,5) * t379 + Icges(4,6) * t378 + Icges(4,3) * t552) * t417 + (Icges(4,5) * t381 + Icges(4,6) * t380 + Icges(4,3) * t549) * t415) * t420 + (-t417 * ((Icges(4,4) * t379 + Icges(4,2) * t378 + Icges(4,6) * t552) * t414 - (Icges(4,1) * t379 + Icges(4,4) * t378 + Icges(4,5) * t552) * t416) + ((Icges(4,4) * t381 + Icges(4,2) * t380 + Icges(4,6) * t549) * t414 - (Icges(4,1) * t381 + Icges(4,4) * t380 + Icges(4,5) * t549) * t416) * t415) * t419;
t632 = 2 * qJD(2);
t631 = 4 * qJD(2);
t630 = 2 * qJD(4);
t629 = 4 * qJD(4);
t628 = m(4) / 0.2e1;
t622 = m(5) * (t167 * t195 + t182 * t216 + t183 * t217);
t333 = pkin(6) * t419 + t596 * t420;
t394 = pkin(2) * t420 + t419 * qJ(3);
t506 = t502 * t394;
t483 = t415 * (-pkin(3) * t550 + t333 * t415) + t417 * (pkin(3) * t553 + t333 * t417) + t506;
t145 = t254 * t415 + t255 * t417 + t483;
t392 = t419 * pkin(2) - qJ(3) * t420;
t513 = -t392 + t442;
t494 = -t343 + t513;
t226 = t494 * t415;
t228 = t494 * t417;
t621 = m(5) * (t145 * t209 + (-t226 * t415 - t228 * t417) * t370);
t564 = t243 * t420;
t157 = (t305 * t419 - t564) * t415 + t529;
t177 = t495 - t545;
t178 = t305 * t420 + t234 + (-t330 * t420 - t331 * t419) * t417;
t187 = -t415 * t234 + t232;
t211 = -t330 * t549 - t564;
t620 = m(6) * (t105 * t210 + t106 * t211 + t140 * t157 + t154 * t177 + t155 * t178 + t187 * t97);
t618 = m(6) * (t105 * t154 + t106 * t155 + t140 * t97);
t102 = t531 * t415 + t530 * t417 + t483;
t481 = t513 + t517;
t196 = t481 * t415;
t198 = t481 * t417;
t496 = t200 * t102 + t219 * t196 + t218 * t198;
t617 = m(6) * (t140 * t202 + (-t154 * t417 - t155 * t415) * t356 + t496);
t616 = m(6) * (t179 * t187 + t210 * t292 + t211 * t291 + t496);
t534 = t210 * t548 + t211 * t551;
t614 = m(6) * (-t157 * t420 + (t177 * t417 + t178 * t415 + t187) * t419 + t534);
t613 = m(6) * (t102 * t179 + t196 * t291 + t198 * t292);
t535 = t196 * t551 + t198 * t548;
t611 = m(6) * (t102 * t639 + t535);
t608 = t417 / 0.2e1;
t184 = t415 * (rSges(4,1) * t379 + rSges(4,2) * t378 + rSges(4,3) * t552) + t417 * (rSges(4,1) * t381 + rSges(4,2) * t380 + rSges(4,3) * t549) + t506;
t509 = -t392 + t636;
t293 = t509 * t415;
t295 = t509 * t417;
t518 = t293 * t551 + t295 * t548;
t605 = m(4) * (t184 * t639 + t518);
t532 = t226 * t551 + t228 * t548;
t604 = m(5) * (t145 * t639 + t532);
t601 = m(6) * (t187 * t639 + t534);
t599 = m(6) * (-t202 * t420 - t356 * t639);
t593 = m(6) * qJD(4);
t592 = m(6) * qJD(5);
t581 = Icges(5,4) * t362;
t580 = Icges(5,4) * t364;
t248 = Icges(5,5) * t362 + Icges(5,6) * t361 + Icges(5,3) * t552;
t563 = t248 * t420;
t249 = Icges(5,5) * t364 + Icges(5,6) * t363 + Icges(5,3) * t549;
t562 = t249 * t420;
t557 = t337 * t420;
t547 = t419 * t236;
t546 = t419 * t237;
t544 = t419 * t248;
t543 = t419 * t249;
t542 = t419 * t324;
t541 = t419 * t337;
t48 = 0.2e1 * (t97 / 0.4e1 - t179 / 0.4e1) * m(6) + 0.2e1 * (t167 / 0.4e1 - t209 / 0.4e1) * m(5);
t539 = t48 * qJD(1);
t250 = Icges(5,2) * t361 + Icges(5,6) * t552 + t581;
t524 = Icges(5,1) * t361 - t250 - t581;
t251 = Icges(5,2) * t363 + Icges(5,6) * t549 + t580;
t523 = Icges(5,1) * t363 - t251 - t580;
t349 = Icges(5,4) * t361;
t252 = Icges(5,1) * t362 + Icges(5,5) * t552 + t349;
t522 = -Icges(5,2) * t362 + t252 + t349;
t350 = Icges(5,4) * t363;
t253 = Icges(5,1) * t364 + Icges(5,5) * t549 + t350;
t521 = -Icges(5,2) * t364 + t253 + t350;
t519 = -t265 - t352;
t512 = -t333 - t394;
t508 = -t419 * rSges(4,3) - t420 * t478 - t394;
t507 = t502 * t392;
t501 = qJD(4) * t419;
t125 = 0.2e1 * (t157 / 0.4e1 - t202 / 0.4e1) * m(6);
t500 = t125 * qJD(1);
t454 = 0.2e1 * t485 * t639;
t484 = t625 + t627 + t628;
t231 = -t419 * t484 + t454;
t499 = t231 * qJD(1);
t497 = t647 * t597;
t493 = -t344 + t512;
t491 = t551 / 0.2e1;
t489 = t548 / 0.2e1;
t482 = t502 * t442 - t507;
t480 = t512 + t516;
t393 = t419 * rSges(3,1) + rSges(3,2) * t420;
t424 = t419 * t451 + t566;
t111 = -t345 * t299 - t346 * t301 + t415 * t424;
t423 = t419 * t450 + t565;
t112 = -t345 * t300 - t346 * t302 + t415 * t423;
t148 = t238 * t345 + t240 * t346 + t415 * t547;
t149 = t239 * t345 + t241 * t346 + t415 * t546;
t185 = t326 * t345 + t328 * t346 + t415 * t542;
t27 = -(t345 * t327 + t346 * t329) * t420 + t185 * t419 + (t112 * t419 + t149 * t420) * t417 + ((t148 - t558) * t420 + (t111 - t444) * t419) * t415;
t113 = -t347 * t299 - t348 * t301 + t417 * t424;
t114 = -t347 * t300 - t348 * t302 + t417 * t423;
t150 = t238 * t347 + t240 * t348 + t417 * t547;
t151 = t239 * t347 + t241 * t348 + t417 * t546;
t186 = t326 * t347 + t328 * t348 + t417 * t542;
t28 = -(t347 * t327 + t348 * t329) * t420 + t186 * t419 + (t113 * t419 + t150 * t420) * t415 + ((t151 - t558) * t420 + (t114 - t444) * t419) * t417;
t86 = -t185 * t420 + (t148 * t415 + t149 * t417) * t419;
t87 = -t186 * t420 + (t150 * t415 + t151 * t417) * t419;
t475 = t27 * t492 + t28 * t490 + t87 * t489 + t86 * t491 + t638;
t459 = -t250 * t405 + t252 * t406;
t169 = t419 * t459 - t563;
t458 = -t251 * t405 + t253 * t406;
t170 = t419 * t458 - t562;
t462 = t169 * t415 + t170 * t417;
t456 = -t339 * t405 + t341 * t406;
t268 = Icges(5,5) * t361 - Icges(5,6) * t362;
t121 = t268 * t552 + t522 * t361 + t524 * t362;
t269 = Icges(5,5) * t363 - Icges(5,6) * t364;
t122 = t269 * t552 + t521 * t361 + t362 * t523;
t77 = -t121 * t417 + t122 * t415;
t123 = t268 * t549 + t522 * t363 + t524 * t364;
t124 = t269 * t549 + t521 * t363 + t364 * t523;
t78 = -t123 * t417 + t124 * t415;
t453 = t77 * t609 + t78 * t610;
t452 = t620 / 0.2e1 + t475;
t449 = -t337 * t415 - t459;
t448 = -t337 * t417 - t458;
t443 = (Icges(5,3) * t419 + t420 * t465 - t456) * t420;
t441 = t645 * t415 + t383;
t440 = -t645 * t417 + t382;
t73 = -t111 * t417 + t112 * t415;
t74 = -t113 * t417 + t114 * t415;
t438 = t27 * t609 + t28 * t610 + (-t165 * t417 + t166 * t415) * t607 + t73 * t492 + t74 * t490 + (-t127 * t417 + t128 * t415) * t606 + (-t148 * t417 + t149 * t415) * t491 + (-t150 * t417 + t151 * t415) * t489 - t594;
t434 = -t27 * t552 / 0.2e1 - t28 * t549 / 0.2e1 + t47 * t610 + t46 * t609 + t71 * t492 + t72 * t490 + (-t131 * t417 + t132 * t415) * t606 - t86 * t551 / 0.2e1 - t87 * t548 / 0.2e1 - t638;
t433 = Icges(4,5) * t420 + (-Icges(4,1) * t416 + Icges(4,4) * t414) * t419;
t430 = Icges(4,6) * t420 + (-Icges(4,4) * t416 + Icges(4,2) * t414) * t419;
t422 = t419 * t449 + t563;
t421 = t419 * t448 + t562;
t342 = Icges(5,5) * t419 + t420 * t472;
t340 = Icges(5,6) * t419 + t420 * t468;
t322 = t433 * t417;
t321 = t433 * t415;
t320 = t430 * t417;
t319 = t430 * t415;
t311 = t341 * t417;
t310 = t341 * t415;
t309 = t339 * t417;
t308 = t339 * t415;
t296 = t508 * t417;
t294 = t508 * t415;
t289 = t502 * t393;
t230 = t454 + (m(4) + m(5) + m(6)) * t607;
t229 = t493 * t417;
t227 = t493 * t415;
t223 = -t281 * t420 - t370 * t549;
t222 = t280 * t420 + t370 * t552;
t215 = 0.4e1 * t640;
t212 = t419 * t456 - t557;
t204 = (t280 * t417 - t281 * t415) * t419;
t203 = t502 * t636 - t507;
t199 = t480 * t417;
t197 = t480 * t415;
t194 = t200 * t592;
t193 = t519 * t420 + (-t356 * t419 + t497) * t417;
t192 = t351 * t420 - t415 * t497 + t218;
t189 = t339 * t363 + t341 * t364 + t417 * t541;
t188 = t339 * t361 + t341 * t362 + t415 * t541;
t174 = t244 + (t351 * t417 + t415 * t519) * t419;
t173 = t599 / 0.2e1;
t168 = -t312 * t415 - t313 * t417 + t482;
t161 = t251 * t363 + t253 * t364 + t417 * t543;
t160 = t250 * t363 + t252 * t364 + t417 * t544;
t159 = t251 * t361 + t253 * t362 + t415 * t543;
t158 = t250 * t361 + t252 * t362 + t415 * t544;
t142 = -t269 * t420 + (-t521 * t405 + t406 * t523) * t419;
t141 = -t268 * t420 + (-t522 * t405 + t524 * t406) * t419;
t139 = -t200 * t420 + (t218 * t417 + t219 * t415) * t419;
t138 = -t448 * t420 + (t309 * t405 - t311 * t406 + t249) * t419;
t137 = -t449 * t420 + (t308 * t405 - t310 * t406 + t248) * t419;
t134 = t139 * t592;
t133 = t520 * t417 + (-t256 - t304) * t415 + t482;
t126 = (t157 + t202) * t625;
t120 = -t363 * t309 - t364 * t311 + t417 * t421;
t119 = -t363 * t308 - t364 * t310 + t417 * t422;
t118 = -t361 * t309 - t362 * t311 + t415 * t421;
t117 = -t361 * t308 - t362 * t310 + t415 * t422;
t115 = t601 / 0.2e1;
t100 = -t212 * t420 + t419 * t462;
t90 = -t189 * t420 + (t160 * t415 + t417 * t161) * t419;
t89 = -t188 * t420 + (t415 * t158 + t159 * t417) * t419;
t76 = -t119 * t417 + t120 * t415;
t75 = -t117 * t417 + t118 * t415;
t58 = t102 * t202 + (-t196 * t415 - t198 * t417) * t356;
t55 = t157 * t187 + t177 * t210 + t178 * t211;
t53 = -(t363 * t510 + t364 * t511) * t420 + (t123 * t415 + (t124 - t555) * t417) * t419;
t52 = -(t361 * t510 + t362 * t511) * t420 + (t122 * t417 + (t121 - t555) * t415) * t419;
t50 = t614 / 0.2e1;
t49 = (t167 + t209) * t627 + (t179 + t97) * t625;
t40 = (t443 + t462) * t420 + (t138 * t417 + t137 * t415 - (-t340 * t405 + t342 * t406 + t337) * t420 + t212) * t419;
t39 = t604 + t605 + t611;
t35 = t115 + t50 - t599 / 0.2e1;
t34 = t173 + t115 - t614 / 0.2e1;
t33 = t173 + t50 - t601 / 0.2e1;
t32 = -(t363 * t340 + t364 * t342) * t420 + t189 * t419 + (t119 * t419 + t420 * t160) * t415 + ((t161 - t557) * t420 + (t120 - t443) * t419) * t417;
t31 = -(t361 * t340 + t362 * t342) * t420 + t188 * t419 + (t118 * t419 + t420 * t159) * t417 + ((t158 - t557) * t420 + (t117 - t443) * t419) * t415;
t29 = t616 / 0.2e1;
t19 = t617 / 0.2e1;
t15 = m(6) * t58 + t594;
t12 = m(6) * (t187 * t200 + t210 * t218 + t211 * t219) + t498;
t11 = t12 * qJD(5);
t9 = t453 + t594 + t613 + t621;
t8 = t584 + t595 - t537;
t7 = t537 - t642;
t6 = t537 + t642;
t5 = m(6) * t55 + t475;
t4 = t29 - t617 / 0.2e1 + t452;
t3 = t19 - t616 / 0.2e1 + t452;
t2 = t622 + t618 + (-t40 / 0.2e1 + t89 * t610 + t90 * t608) * t420 + (t100 / 0.2e1 + t31 * t610 + t32 * t608) * t419 + t475;
t1 = t19 - t620 / 0.2e1 + t29 + t434;
t13 = [0, t230 * qJD(3) + t49 * qJD(4) + t126 * qJD(5) + (-m(3) * t289 / 0.2e1 + t203 * t628 + t168 * t627 + t133 * t625) * t632, t230 * qJD(2), t49 * qJD(2) + (t174 * t625 + t204 * t627) * t630 + t194, t126 * qJD(2) + t200 * t593 + t194; qJD(3) * t231 - qJD(4) * t48 - qJD(5) * t125, t39 * qJD(3) + t9 * qJD(4) + t15 * qJD(5) + (m(6) * (t102 * t133 + t196 * t197 + t198 * t199) + m(5) * (t145 * t168 + t226 * t227 + t228 * t229) + m(4) * (t184 * t203 + t293 * t294 + t295 * t296) + m(3) * (-t289 + t393) * t502 * (rSges(3,1) * t420 - t419 * rSges(3,2)) + (t74 + t76 + (t380 * t320 + t381 * t322) * t415 + t410 * t383 + (-t380 * t319 - t381 * t321 + t635 + (-t382 + t440) * t415 + t441 * t417) * t417) * t610 + (t73 + t75 - (t378 * t319 + t379 * t321) * t417 + t411 * t382 + (t378 * t320 + t379 * t322 + t635 + (-t383 + t441) * t417 + t440 * t415) * t415) * t609) * qJD(2), t39 * qJD(2) + t6 * qJD(4) + t34 * qJD(5) + t499 + (-0.4e1 * t640 + 0.2e1 * t484 * (-t420 * t639 + t504)) * qJD(3), -t539 + t9 * qJD(2) + t6 * qJD(3) + t1 * qJD(5) + (-t622 / 0.4e1 - t618 / 0.4e1) * t629 + ((t145 * t204 + t195 * t209 + t222 * t228 + t223 * t226 + (-t216 * t417 - t217 * t415) * t370) * t627 + (t102 * t174 + t140 * t179 + t154 * t292 + t155 * t291 + t192 * t198 + t193 * t196) * t625) * t630 + (-t100 / 0.2e1 + (t78 / 0.2e1 - t32 / 0.2e1) * t417 + (t77 / 0.2e1 - t31 / 0.2e1) * t415) * t501 + (t52 * t609 + t53 * t610 + t434 + (t40 / 0.2e1 + (-t90 / 0.2e1 + t141 / 0.2e1) * t417 + (-t89 / 0.2e1 - t142 / 0.2e1) * t415) * t420) * qJD(4), -t500 + t15 * qJD(2) + t34 * qJD(3) + t1 * qJD(4) + ((t187 * t202 + (-t210 * t417 - t211 * t415) * t356 - t55 + t496) * m(6) + t434) * qJD(5); -t231 * qJD(2), -t499 + t215 * qJD(3) + t7 * qJD(4) + t33 * qJD(5) + (-t611 / 0.4e1 - t604 / 0.4e1 - t605 / 0.4e1) * t631 + ((-t133 * t420 + t535) * t625 + (-t168 * t420 + t532) * t627 + (-t203 * t420 + t518) * t628 + ((t197 * t415 + t199 * t417 + t102) * t625 + (t227 * t415 + t229 * t417 + t145) * t627 + (t294 * t415 + t296 * t417 + t184) * t628) * t419) * t632, t215 * qJD(2), t7 * qJD(2) + ((-t204 * t420 + (t222 * t417 + t223 * t415) * t419) * t627 + (-t174 * t420 + (t192 * t417 + t193 * t415) * t419) * t625) * t630 + t134, t33 * qJD(2) + t139 * t593 + t134; t48 * qJD(2), t539 + ((-t158 * t417 + t159 * t415) * t491 + (-t160 * t417 + t161 * t415) * t489 + t75 * t492 + t76 * t490 + t438 + t32 * t610 + t31 * t609 + (-t169 * t417 + t170 * t415) * t607 + (-t137 * t417 + t138 * t415) * t606 - t453) * qJD(2) + t8 * qJD(3) + t2 * qJD(4) + t3 * qJD(5) + (-t613 / 0.4e1 - t621 / 0.4e1) * t631 + ((t102 * t97 + t105 * t198 + t106 * t196 + t133 * t140 + t154 * t199 + t155 * t197) * t625 + (t145 * t167 + t168 * t195 + t182 * t228 + t183 * t226 + t216 * t229 + t217 * t227) * t627) * t632, t8 * qJD(2), t2 * qJD(2) + (-t633 * t555 / 0.2e1 + t498) * qJD(4) + t641 + ((t140 * t174 + t154 * t192 + t155 * t193) * t624 + (t195 * t204 + t216 * t222 + t217 * t223) * t626) * t629 + (t52 * t610 + t53 * t608 + (t142 * t417 + t141 * t415 - (-t510 * t405 + t511 * t406) * t420) * t606) * t501, t3 * qJD(2) + t10 * qJD(4) + t641; t125 * qJD(2), t500 + ((t102 * t157 + t133 * t187 + t177 * t198 + t178 * t196 + t197 * t211 + t199 * t210 - t58) * m(6) + t438) * qJD(2) + t35 * qJD(3) + t4 * qJD(4) + t5 * qJD(5), t35 * qJD(2), t4 * qJD(2) + ((t174 * t187 + t192 * t210 + t193 * t211) * m(6) + t498) * qJD(4) + t11, qJD(2) * t5 + qJD(4) * t12 + t11;];
Cq = t13;
