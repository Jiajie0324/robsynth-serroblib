% Calculate time derivative of joint inertia matrix for
% S6RPRPRP10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5]';
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
% Datum: 2019-03-09 03:32
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RPRPRP10_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(8,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP10_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP10_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPRPRP10_inertiaDJ_slag_vp1: pkin has to be [8x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPRPRP10_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPRPRP10_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPRPRP10_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:30:59
% EndTime: 2019-03-09 03:31:28
% DurationCPUTime: 21.41s
% Computational Cost: add. (11687->889), mult. (31686->1224), div. (0->0), fcn. (29947->6), ass. (0->407)
t302 = sin(qJ(3));
t305 = cos(qJ(3));
t473 = Icges(5,6) * t305;
t483 = Icges(4,4) * t305;
t553 = t473 + t483 + (-Icges(4,2) - Icges(5,3)) * t302;
t474 = Icges(5,6) * t302;
t484 = Icges(4,4) * t302;
t552 = t474 + t484 + (-Icges(4,1) - Icges(5,2)) * t305;
t301 = sin(qJ(5));
t304 = cos(qJ(5));
t476 = Icges(7,5) * t304;
t362 = Icges(7,1) * t301 - t476;
t200 = Icges(7,4) * t305 + t302 * t362;
t480 = Icges(6,4) * t304;
t363 = Icges(6,1) * t301 + t480;
t201 = Icges(6,5) * t305 + t302 * t363;
t550 = t200 + t201;
t551 = t550 * t301;
t549 = t553 * qJD(3);
t548 = t552 * qJD(3);
t303 = sin(qJ(1));
t306 = cos(qJ(1));
t462 = t305 * t306;
t226 = t301 * t303 - t304 * t462;
t465 = t303 * t304;
t227 = t301 * t462 + t465;
t538 = rSges(7,3) + qJ(6);
t541 = rSges(7,1) + pkin(5);
t547 = -t538 * t226 - t227 * t541;
t391 = qJD(5) * t305 + qJD(1);
t331 = t391 * t306;
t441 = qJD(1) * t305;
t390 = qJD(5) + t441;
t436 = qJD(3) * t306;
t407 = t302 * t436;
t526 = t303 * t390 + t407;
t129 = t301 * t331 + t304 * t526;
t130 = -t301 * t526 + t304 * t331;
t546 = -t226 * qJD(6) - t538 * t129 - t130 * t541;
t360 = Icges(4,2) * t305 + t484;
t198 = Icges(4,6) * t306 + t303 * t360;
t348 = Icges(5,3) * t305 + t474;
t205 = Icges(5,5) * t306 - t303 * t348;
t545 = -t198 + t205;
t364 = Icges(4,1) * t302 + t483;
t202 = Icges(4,5) * t306 + t303 * t364;
t350 = Icges(5,2) * t302 + t473;
t207 = Icges(5,4) * t306 - t303 * t350;
t544 = t202 - t207;
t206 = Icges(5,4) * t303 + t306 * t350;
t522 = -Icges(4,5) * t303 + t306 * t364;
t543 = t522 + t206;
t204 = Icges(5,5) * t303 + t306 * t348;
t523 = -Icges(4,6) * t303 + t306 * t360;
t542 = t523 + t204;
t466 = t302 * t306;
t138 = Icges(6,5) * t227 - Icges(6,6) * t226 - Icges(6,3) * t466;
t142 = Icges(6,4) * t227 - Icges(6,2) * t226 - Icges(6,6) * t466;
t146 = Icges(6,1) * t227 - Icges(6,4) * t226 - Icges(6,5) * t466;
t54 = -t138 * t466 - t226 * t142 + t227 * t146;
t463 = t304 * t305;
t228 = t301 * t306 + t303 * t463;
t464 = t303 * t305;
t229 = -t301 * t464 + t304 * t306;
t468 = t302 * t303;
t139 = Icges(6,5) * t229 - Icges(6,6) * t228 + Icges(6,3) * t468;
t143 = Icges(6,4) * t229 - Icges(6,2) * t228 + Icges(6,6) * t468;
t147 = Icges(6,1) * t229 - Icges(6,4) * t228 + Icges(6,5) * t468;
t55 = -t139 * t466 - t226 * t143 + t227 * t147;
t372 = t303 * t55 - t306 * t54;
t136 = Icges(7,5) * t227 - Icges(7,6) * t466 + Icges(7,3) * t226;
t140 = Icges(7,4) * t227 - Icges(7,2) * t466 + Icges(7,6) * t226;
t144 = Icges(7,1) * t227 - Icges(7,4) * t466 + Icges(7,5) * t226;
t52 = t226 * t136 - t140 * t466 + t227 * t144;
t137 = Icges(7,5) * t229 + Icges(7,6) * t468 + Icges(7,3) * t228;
t141 = Icges(7,4) * t229 + Icges(7,2) * t468 + Icges(7,6) * t228;
t145 = Icges(7,1) * t229 + Icges(7,4) * t468 + Icges(7,5) * t228;
t53 = t226 * t137 - t141 * t466 + t227 * t145;
t373 = t303 * t53 - t306 * t52;
t477 = Icges(7,5) * t301;
t352 = -Icges(7,3) * t304 + t477;
t192 = Icges(7,6) * t305 + t302 * t352;
t356 = Icges(7,4) * t301 - Icges(7,6) * t304;
t196 = Icges(7,2) * t305 + t302 * t356;
t91 = t226 * t192 - t196 * t466 + t227 * t200;
t353 = Icges(6,5) * t301 + Icges(6,6) * t304;
t193 = Icges(6,3) * t305 + t302 * t353;
t481 = Icges(6,4) * t301;
t357 = Icges(6,2) * t304 + t481;
t197 = Icges(6,6) * t305 + t302 * t357;
t92 = -t193 * t466 - t226 * t197 + t227 * t201;
t540 = (t91 + t92) * t305 + (t372 + t373) * t302;
t58 = t138 * t468 - t142 * t228 + t146 * t229;
t59 = t139 * t468 - t143 * t228 + t147 * t229;
t370 = t303 * t59 - t306 * t58;
t56 = t136 * t228 + t140 * t468 + t144 * t229;
t57 = t137 * t228 + t141 * t468 + t145 * t229;
t371 = t303 * t57 - t306 * t56;
t93 = t192 * t228 + t196 * t468 + t200 * t229;
t94 = t193 * t468 - t197 * t228 + t201 * t229;
t539 = (t93 + t94) * t305 + (t370 + t371) * t302;
t537 = -t196 - t193;
t433 = qJD(5) * t302;
t154 = (Icges(7,3) * t301 + t476) * t433 + (-Icges(7,6) * t302 + t305 * t352) * qJD(3);
t155 = (Icges(6,5) * t304 - Icges(6,6) * t301) * t433 + (-Icges(6,3) * t302 + t305 * t353) * qJD(3);
t158 = (Icges(7,4) * t304 + Icges(7,6) * t301) * t433 + (-Icges(7,2) * t302 + t305 * t356) * qJD(3);
t159 = (-Icges(6,2) * t301 + t480) * t433 + (-Icges(6,6) * t302 + t305 * t357) * qJD(3);
t162 = (Icges(7,1) * t304 + t477) * t433 + (-Icges(7,4) * t302 + t305 * t362) * qJD(3);
t163 = (Icges(6,1) * t304 - t481) * t433 + (-Icges(6,5) * t302 + t305 * t363) * qJD(3);
t403 = t301 * t433;
t437 = qJD(3) * t305;
t405 = t304 * t437;
t432 = qJD(5) * t304;
t536 = t192 * t403 + t197 * t405 + t437 * t551 + (t155 + t158) * t305 + (t550 * t432 + (t162 + t163) * t301 + (-t154 + t159) * t304) * t302;
t440 = qJD(1) * t306;
t313 = t302 * t440 + t303 * t437;
t534 = t303 * t441 + t407;
t344 = -t137 * t304 + t145 * t301;
t62 = t141 * t305 + t302 * t344;
t342 = t143 * t304 + t147 * t301;
t64 = t139 * t305 + t302 * t342;
t498 = t62 + t64;
t345 = -t136 * t304 + t144 * t301;
t61 = t140 * t305 + t302 * t345;
t343 = t142 * t304 + t146 * t301;
t63 = t138 * t305 + t302 * t343;
t499 = t61 + t63;
t533 = -t303 * t498 + t306 * t499;
t532 = -qJD(3) / 0.2e1;
t404 = t305 * t436;
t442 = qJD(1) * t303;
t415 = t302 * t442;
t312 = -t404 + t415;
t72 = Icges(7,5) * t130 + Icges(7,6) * t312 + Icges(7,3) * t129;
t76 = Icges(7,4) * t130 + Icges(7,2) * t312 + Icges(7,6) * t129;
t80 = Icges(7,1) * t130 + Icges(7,4) * t312 + Icges(7,5) * t129;
t19 = (qJD(3) * t345 + t76) * t305 + (-qJD(3) * t140 + t301 * t80 - t304 * t72 + (t136 * t301 + t144 * t304) * qJD(5)) * t302;
t74 = Icges(6,5) * t130 - Icges(6,6) * t129 + Icges(6,3) * t312;
t78 = Icges(6,4) * t130 - Icges(6,2) * t129 + Icges(6,6) * t312;
t82 = Icges(6,1) * t130 - Icges(6,4) * t129 + Icges(6,5) * t312;
t21 = (qJD(3) * t343 + t74) * t305 + (-qJD(3) * t138 + t301 * t82 + t304 * t78 + (-t142 * t301 + t146 * t304) * qJD(5)) * t302;
t531 = t19 + t21;
t439 = qJD(3) * t302;
t408 = t304 * t439;
t411 = t305 * t440;
t127 = -t304 * t411 - t306 * t432 + (t301 * t391 + t408) * t303;
t438 = qJD(3) * t303;
t409 = t302 * t438;
t128 = -t391 * t465 + (-t306 * t390 + t409) * t301;
t71 = Icges(7,5) * t128 + Icges(7,6) * t313 - Icges(7,3) * t127;
t75 = Icges(7,4) * t128 + Icges(7,2) * t313 - Icges(7,6) * t127;
t79 = Icges(7,1) * t128 + Icges(7,4) * t313 - Icges(7,5) * t127;
t20 = (qJD(3) * t344 + t75) * t305 + (-qJD(3) * t141 + t301 * t79 - t304 * t71 + (t137 * t301 + t145 * t304) * qJD(5)) * t302;
t73 = Icges(6,5) * t128 + Icges(6,6) * t127 + Icges(6,3) * t313;
t77 = Icges(6,4) * t128 + Icges(6,2) * t127 + Icges(6,6) * t313;
t81 = Icges(6,1) * t128 + Icges(6,4) * t127 + Icges(6,5) * t313;
t22 = (qJD(3) * t342 + t73) * t305 + (-qJD(3) * t139 + t301 * t81 + t304 * t77 + (-t143 * t301 + t147 * t304) * qJD(5)) * t302;
t530 = t20 + t22;
t333 = t205 * t305 + t207 * t302;
t529 = t306 * t333;
t336 = t198 * t305 + t202 * t302;
t528 = t306 * t336;
t386 = rSges(4,1) * t302 + rSges(4,2) * t305;
t323 = t306 * t386;
t527 = t306 * pkin(4) + pkin(8) * t468;
t525 = t305 * t499 + t540;
t354 = Icges(4,5) * t302 + Icges(4,6) * t305;
t524 = -Icges(4,3) * t303 + t306 * t354;
t358 = Icges(5,4) * t302 + Icges(5,5) * t305;
t208 = Icges(5,1) * t303 + t306 * t358;
t521 = qJD(1) * (t226 * t303 + t228 * t306) - t127 * t303 - t129 * t306;
t520 = 2 * m(4);
t519 = 2 * m(5);
t518 = 2 * m(6);
t517 = 2 * m(7);
t299 = t303 ^ 2;
t300 = t306 ^ 2;
t516 = m(5) / 0.2e1;
t515 = m(6) / 0.2e1;
t514 = m(7) / 0.2e1;
t513 = -pkin(1) - pkin(7);
t512 = -pkin(3) - pkin(8);
t511 = t303 / 0.2e1;
t508 = t306 / 0.2e1;
t506 = rSges(3,2) - pkin(1);
t495 = rSges(4,2) * t302;
t256 = rSges(4,1) * t305 - t495;
t505 = m(4) * t256;
t434 = qJD(5) * t301;
t500 = ((-t192 * t463 - t196 * t302) * qJD(3) + (-qJD(3) * t193 - t197 * t434) * t302 + t536) * t305;
t497 = t313 * rSges(7,2) + t228 * qJD(6) - t538 * t127 + t128 * t541;
t496 = rSges(7,2) * t312 - t546;
t494 = rSges(5,2) * t302;
t493 = rSges(5,2) * t305;
t492 = rSges(7,2) * t302;
t491 = rSges(5,3) * t305;
t490 = rSges(6,3) * t302;
t489 = t303 * rSges(5,1);
t488 = t303 * rSges(4,3);
t294 = t306 * rSges(5,1);
t293 = t306 * rSges(4,3);
t486 = t537 * t305 + ((t192 - t197) * t304 - t551) * t302;
t471 = qJ(4) * t305;
t384 = -t227 * rSges(6,1) + t226 * rSges(6,2);
t151 = -rSges(6,3) * t466 - t384;
t470 = t151 * t306;
t419 = pkin(3) * t404 + qJ(4) * t534;
t435 = qJD(4) * t305;
t131 = t306 * (pkin(3) * t415 + t306 * t435 - t419);
t272 = pkin(8) * t404;
t461 = t131 + t306 * (qJD(1) * t527 - t272);
t379 = pkin(5) * t301 - qJ(6) * t304;
t382 = rSges(7,1) * t301 - rSges(7,3) * t304;
t460 = -t379 * t437 - (-qJD(6) * t304 + (pkin(5) * t304 + qJ(6) * t301) * qJD(5)) * t302 - (rSges(7,1) * t304 + rSges(7,3) * t301) * t433 - (t305 * t382 - t492) * qJD(3);
t420 = pkin(3) * t313 + qJ(4) * t409;
t149 = (-qJ(4) * t440 - qJD(4) * t303) * t305 + t420;
t449 = t313 * pkin(8);
t459 = pkin(4) * t442 - t149 - t449;
t458 = -rSges(7,2) * t466 - t547;
t457 = rSges(7,2) * t468 + t538 * t228 + t229 * t541;
t219 = qJD(4) * t302 + (-pkin(3) * t302 + t471) * qJD(3);
t254 = pkin(3) * t305 + qJ(4) * t302;
t456 = t303 * t219 + t254 * t440;
t455 = rSges(7,2) * t305 + (t379 + t382) * t302;
t284 = pkin(3) * t468;
t232 = -qJ(4) * t464 + t284;
t380 = t491 + t494;
t454 = t303 * t380 - t232 - t294;
t287 = pkin(3) * t466;
t424 = qJ(4) * t462;
t233 = -t287 + t424;
t218 = t306 * t233;
t286 = pkin(8) * t466;
t245 = t303 * pkin(4) - t286;
t453 = t306 * t245 + t218;
t452 = -t232 - t527;
t451 = -t233 - t245;
t236 = t303 * t254;
t450 = pkin(8) * t464 + t236;
t292 = t306 * qJ(2);
t448 = t287 + t292;
t447 = qJ(2) * t440 + qJD(2) * t303;
t446 = t306 * pkin(1) + t303 * qJ(2);
t445 = t299 + t300;
t194 = Icges(4,3) * t306 + t303 * t354;
t444 = qJD(1) * t194;
t209 = Icges(5,1) * t306 - t303 * t358;
t443 = qJD(1) * t209;
t430 = -pkin(4) + t513;
t429 = -rSges(5,1) + t513;
t428 = -rSges(4,3) + t513;
t427 = pkin(8) * t439;
t35 = t52 * t303 + t306 * t53;
t36 = t54 * t303 + t306 * t55;
t426 = -t36 / 0.2e1 - t35 / 0.2e1;
t37 = t56 * t303 + t306 * t57;
t38 = t58 * t303 + t306 * t59;
t425 = t37 / 0.2e1 + t38 / 0.2e1;
t153 = t229 * rSges(6,1) - t228 * rSges(6,2) + rSges(6,3) * t468;
t423 = -t153 + t452;
t422 = pkin(8) * t411 + t456;
t234 = t254 * t442;
t421 = pkin(8) * t534 + t234;
t418 = rSges(4,1) * t313 + rSges(4,2) * t411;
t212 = rSges(4,1) * t468 + rSges(4,2) * t464 + t293;
t417 = t306 * pkin(7) + t446;
t383 = rSges(6,1) * t301 + rSges(6,2) * t304;
t211 = rSges(6,3) * t305 + t302 * t383;
t416 = t211 * t440;
t413 = t211 * t442;
t401 = t302 ^ 2 * t434;
t400 = t358 * qJD(3) / 0.2e1 + t354 * t532;
t399 = -pkin(8) * t305 - t254;
t244 = t386 * qJD(3);
t398 = t244 * t445;
t397 = t458 * t306;
t396 = t455 * t306;
t395 = qJD(1) * t455;
t394 = qJD(3) * t455;
t393 = t430 * t303;
t392 = t430 * t306;
t86 = t128 * rSges(6,1) + t127 * rSges(6,2) + rSges(6,3) * t313;
t389 = t452 - t457;
t290 = qJD(2) * t306;
t388 = t290 + t419;
t387 = t303 * t395;
t385 = t130 * rSges(6,1) - t129 * rSges(6,2);
t381 = -rSges(5,3) * t302 + t493;
t24 = (-t306 * t394 - t496) * t305 + (qJD(3) * t458 + t306 * t460 + t387) * t302;
t25 = (-t303 * t394 + t497) * t305 + (-qJD(1) * t396 - qJD(3) * t457 + t303 * t460) * t302;
t378 = t24 * t303 - t25 * t306;
t367 = t420 + t447;
t307 = (t393 - t424) * qJD(1) - t303 * t435 + t367 + t449;
t39 = t307 + t497;
t366 = t272 + t388;
t40 = (rSges(7,2) * qJD(3) - qJD(4)) * t462 + (t392 + (-qJ(2) + (-rSges(7,2) + t512) * t302) * t303) * qJD(1) + t366 + t546;
t377 = t303 * t40 - t306 * t39;
t173 = (rSges(6,1) * t304 - rSges(6,2) * t301) * t433 + (t305 * t383 - t490) * qJD(3);
t88 = rSges(6,3) * t312 + t385;
t44 = (-t211 * t436 - t88) * t305 + (qJD(3) * t151 - t173 * t306 + t413) * t302;
t45 = (-t211 * t438 + t86) * t305 + (-qJD(3) * t153 - t303 * t173 - t416) * t302;
t376 = t44 * t303 - t306 * t45;
t47 = t307 + t86;
t48 = (rSges(6,3) * qJD(3) - qJD(4)) * t462 + (t392 + (-qJ(2) + (-rSges(6,3) + t512) * t302) * t303) * qJD(1) + t366 - t385;
t375 = t303 * t48 - t306 * t47;
t49 = t387 + (-t219 + t460) * t306 + t421;
t50 = t306 * t395 + (-t427 - t460) * t303 + t422;
t374 = t50 * t303 - t306 * t49;
t67 = t413 + (-t173 - t219) * t306 + t421;
t68 = t416 + (t173 - t427) * t303 + t422;
t369 = t68 * t303 - t306 * t67;
t261 = rSges(5,3) * t409;
t322 = -t494 + (-rSges(5,3) - qJ(4)) * t305;
t308 = t303 * t429 + t306 * t322;
t89 = t261 + (-rSges(5,2) * qJD(3) - qJD(4)) * t464 + t308 * qJD(1) + t367;
t90 = (-qJD(3) * t381 - t435) * t306 + (t429 * t306 + (t491 - qJ(2) + (rSges(5,2) - pkin(3)) * t302) * t303) * qJD(1) + t388;
t368 = t303 * t90 - t306 * t89;
t359 = Icges(5,4) * t305 - Icges(5,5) * t302;
t355 = Icges(4,5) * t305 - Icges(4,6) * t302;
t243 = t380 * qJD(3);
t111 = -t381 * t442 + t234 + (-t219 - t243) * t306;
t112 = t303 * t243 - t381 * t440 + t456;
t347 = -t111 * t306 + t112 * t303;
t341 = t151 * t303 + t153 * t306;
t335 = -t302 * t522 - t305 * t523;
t334 = t204 * t305 + t206 * t302;
t330 = t305 * t498 + t539;
t31 = -t127 * t192 + t128 * t200 + t228 * t154 + t158 * t468 + t229 * t162 + t196 * t313;
t32 = t127 * t197 + t128 * t201 + t155 * t468 - t228 * t159 + t229 * t163 + t193 * t313;
t329 = t20 / 0.2e1 + t22 / 0.2e1 + t31 / 0.2e1 + t32 / 0.2e1;
t33 = t129 * t192 + t130 * t200 + t226 * t154 - t158 * t466 + t227 * t162 + t196 * t312;
t34 = -t129 * t197 + t130 * t201 - t155 * t466 - t226 * t159 + t227 * t163 + t193 * t312;
t328 = -t33 / 0.2e1 - t34 / 0.2e1 - t19 / 0.2e1 - t21 / 0.2e1;
t327 = t61 / 0.2e1 + t63 / 0.2e1 + t91 / 0.2e1 + t92 / 0.2e1;
t326 = t93 / 0.2e1 + t94 / 0.2e1 + t62 / 0.2e1 + t64 / 0.2e1;
t324 = rSges(3,3) * t306 + t303 * t506;
t321 = (t516 + t515 + t514) * t439;
t320 = t335 * t303;
t319 = t334 * t303;
t314 = t286 + t393 + t448;
t311 = t303 * t458 + t306 * t457;
t309 = t417 - t452;
t217 = -rSges(3,2) * t306 + t303 * rSges(3,3) + t446;
t216 = t292 + t324;
t214 = t306 * t380 + t489;
t213 = t488 - t323;
t188 = (-t254 + t381) * t306;
t187 = -t303 * t381 + t236;
t179 = t290 + (t506 * t306 + (-rSges(3,3) - qJ(2)) * t303) * qJD(1);
t178 = qJD(1) * t324 + t447;
t177 = t417 + t212;
t176 = t303 * t428 + t292 + t323;
t171 = t359 * t436 + t443;
t170 = -qJD(1) * t208 - t359 * t438;
t157 = qJD(1) * t524 + t355 * t438;
t156 = -t355 * t436 + t444;
t135 = (-t211 + t399) * t306;
t134 = t211 * t303 + t450;
t126 = t303 * t322 + t284 + t294 + t417;
t125 = t308 + t448;
t116 = (t399 - t455) * t306;
t115 = t303 * t455 + t450;
t114 = t290 + t256 * t436 + (t428 * t306 + (-qJ(2) - t386) * t303) * qJD(1);
t113 = (-rSges(4,2) * t439 + qJD(1) * t428) * t303 + t418 + t447;
t110 = -t305 * t151 - t211 * t466;
t109 = t153 * t305 - t211 * t468;
t108 = t209 * t306 - t303 * t333;
t107 = t208 * t306 - t319;
t106 = t303 * t209 + t529;
t105 = t303 * t208 + t306 * t334;
t104 = -t303 * t524 - t306 * t335;
t103 = t303 * t194 - t528;
t102 = -t306 * t524 + t320;
t101 = t194 * t306 + t303 * t336;
t98 = t309 + t153;
t97 = (-t471 + t490) * t306 + t314 + t384;
t96 = t214 * t306 + t303 * t454 + t218;
t95 = t341 * t302;
t70 = t309 + t457;
t69 = (-t471 + t492) * t306 + t314 + t547;
t66 = -t302 * t396 - t305 * t458;
t65 = t305 * t457 - t455 * t468;
t60 = t303 * t423 + t453 + t470;
t51 = t311 * t302;
t46 = t303 * t389 + t397 + t453;
t43 = t131 + (-t149 - t261) * t303 + (t299 * t493 + t300 * t381) * qJD(3) + ((t454 + t294) * t306 + (-t214 - t233 + t489) * t303) * qJD(1);
t30 = t341 * t437 + (t303 * t88 + t306 * t86 + (-t303 * t153 + t470) * qJD(1)) * t302;
t23 = t306 * t88 + (-t86 + t459) * t303 + (t423 * t306 + (-t151 + t451) * t303) * qJD(1) + t461;
t18 = -t129 * t143 + t130 * t147 + t139 * t312 - t226 * t77 + t227 * t81 - t466 * t73;
t17 = -t129 * t142 + t130 * t146 + t138 * t312 - t226 * t78 + t227 * t82 - t466 * t74;
t16 = t129 * t137 + t130 * t145 + t141 * t312 + t226 * t71 + t227 * t79 - t466 * t75;
t15 = t129 * t136 + t130 * t144 + t140 * t312 + t226 * t72 + t227 * t80 - t466 * t76;
t14 = t127 * t143 + t128 * t147 + t139 * t313 - t228 * t77 + t229 * t81 + t468 * t73;
t13 = t127 * t142 + t128 * t146 + t138 * t313 - t228 * t78 + t229 * t82 + t468 * t74;
t12 = -t127 * t137 + t128 * t145 + t141 * t313 + t228 * t71 + t229 * t79 + t468 * t75;
t11 = -t127 * t136 + t128 * t144 + t140 * t313 + t228 * t72 + t229 * t80 + t468 * t76;
t10 = t311 * t437 + (t497 * t306 + t496 * t303 + (-t303 * t457 + t397) * qJD(1)) * t302;
t9 = t496 * t306 + (t459 - t497) * t303 + (t389 * t306 + (t451 - t458) * t303) * qJD(1) + t461;
t8 = -qJD(1) * t372 + t17 * t303 + t18 * t306;
t7 = -qJD(1) * t373 + t15 * t303 + t16 * t306;
t6 = -qJD(1) * t370 + t13 * t303 + t14 * t306;
t5 = -qJD(1) * t371 + t11 * t303 + t12 * t306;
t4 = (qJD(3) * t372 + t34) * t305 + (qJD(1) * t36 - qJD(3) * t92 - t17 * t306 + t18 * t303) * t302;
t3 = (qJD(3) * t373 + t33) * t305 + (qJD(1) * t35 - qJD(3) * t91 - t15 * t306 + t16 * t303) * t302;
t2 = (qJD(3) * t370 + t32) * t305 + (qJD(1) * t38 - qJD(3) * t94 - t13 * t306 + t14 * t303) * t302;
t1 = (qJD(3) * t371 + t31) * t305 + (qJD(1) * t37 - qJD(3) * t93 - t11 * t306 + t12 * t303) * t302;
t26 = [-t192 * t405 - t197 * t403 + 0.2e1 * m(3) * (t178 * t217 + t179 * t216) + (t113 * t177 + t114 * t176) * t520 + (t125 * t90 + t126 * t89) * t519 + (t39 * t70 + t40 * t69) * t517 + (t47 * t98 + t48 * t97) * t518 + (-t350 - t364) * t437 - t549 * t305 + t548 * t302 + (t348 + t360 + t537) * t439 + t536; m(7) * ((t303 * t70 + t306 * t69) * qJD(1) + t377) + m(6) * ((t303 * t98 + t306 * t97) * qJD(1) + t375) + m(5) * ((t125 * t306 + t126 * t303) * qJD(1) + t368) + m(4) * (-t113 * t306 + t303 * t114 + (t176 * t306 + t177 * t303) * qJD(1)) + m(3) * (-t178 * t306 + t303 * t179 + (t216 * t306 + t217 * t303) * qJD(1)); 0; m(5) * (t111 * t126 + t112 * t125 + t187 * t90 + t188 * t89) + m(6) * (t134 * t48 + t135 * t47 + t67 * t98 + t68 * t97) + m(7) * (t115 * t40 + t116 * t39 + t49 * t70 + t50 * t69) + (m(4) * (-t113 * t256 + t177 * t244) + t400 * t306 + t329) * t306 + (m(4) * (t114 * t256 - t176 * t244) + t400 * t303 - t328) * t303 + ((t542 * qJD(3) + t436 * t552) * t511 + (t545 * qJD(3) - t303 * t548) * t508 + (t508 * t543 + t511 * t544) * qJD(1)) * t305 + ((t543 * qJD(3) + t436 * t553) * t511 + (-t544 * qJD(3) - t303 * t549) * t508 + (-t542 * t508 + t511 * t545) * qJD(1)) * t302 + ((t177 * t505 + (t207 / 0.2e1 - t202 / 0.2e1) * t305 + (-t205 / 0.2e1 + t198 / 0.2e1) * t302 - t326) * t303 + (t176 * t505 + (-t206 / 0.2e1 - t522 / 0.2e1) * t305 + (t204 / 0.2e1 + t523 / 0.2e1) * t302 + t327) * t306) * qJD(1); m(5) * ((t187 * t306 + t188 * t303) * qJD(1) + t347) + m(6) * ((t134 * t306 + t135 * t303) * qJD(1) + t369) + m(7) * ((t115 * t306 + t116 * t303) * qJD(1) + t374) - m(4) * t398; (t115 * t50 + t116 * t49 + t46 * t9) * t517 + (t134 * t68 + t135 * t67 + t23 * t60) * t518 + t303 * t8 + t303 * t7 + t306 * t6 + t306 * t5 + (t111 * t188 + t112 * t187 + t43 * t96) * t519 + ((-t303 * t212 + t213 * t306) * (-t303 * t418 + (-t256 * t300 + t299 * t495) * qJD(3) + ((-t212 + t293) * t306 + (-t213 + t323 + t488) * t303) * qJD(1)) - t256 * t398) * t520 + t306 * ((t306 * t157 + (t102 + t528) * qJD(1)) * t306 + (-t101 * qJD(1) + (-t437 * t522 + t439 * t523) * t303 + (t156 + (-t198 * t302 + t202 * t305) * qJD(3) + (-t194 + t335) * qJD(1)) * t306) * t303) + t306 * ((t306 * t170 + (t107 - t529) * qJD(1)) * t306 + (-t108 * qJD(1) + (t204 * t439 - t206 * t437) * t303 + (t171 + (t205 * t302 - t207 * t305) * qJD(3) + (-t209 - t334) * qJD(1)) * t306) * t303) + t303 * ((t303 * t156 + (-t103 + t320) * qJD(1)) * t303 + (t104 * qJD(1) + (t198 * t439 - t202 * t437 + t444) * t306 + (t157 + (-t302 * t523 + t305 * t522) * qJD(3) + t336 * qJD(1)) * t303) * t306) + t303 * ((t303 * t171 + (-t106 - t319) * qJD(1)) * t303 + (t105 * qJD(1) + (-t205 * t439 + t207 * t437 + t443) * t306 + (t170 + (-t204 * t302 + t206 * t305) * qJD(3) - t333 * qJD(1)) * t303) * t306) + (-t37 - t38 + (-t101 - t108) * t306 + (-t102 - t107) * t303) * t442 + (t35 + t36 + (t103 + t106) * t306 + (t104 + t105) * t303) * t440; 0.2e1 * ((t303 * t69 - t306 * t70) * t514 + (t303 * t97 - t306 * t98) * t515 + (t125 * t303 - t126 * t306) * t516) * t439 + 0.2e1 * ((-t440 * t69 - t442 * t70 - t377) * t514 + (-t440 * t97 - t442 * t98 - t375) * t515 + (-t125 * t440 - t126 * t442 - t368) * t516) * t305; 0.2e1 * t445 * t321; 0.2e1 * ((t115 * t438 - t116 * t436 + t9) * t514 + (t134 * t438 - t135 * t436 + t23) * t515 + (t187 * t438 - t188 * t436 + t43) * t516) * t302 + 0.2e1 * ((qJD(3) * t46 - t115 * t440 - t116 * t442 - t374) * t514 + (qJD(3) * t60 - t134 * t440 - t135 * t442 - t369) * t515 + (qJD(3) * t96 - t187 * t440 - t188 * t442 - t347) * t516) * t305; 0.4e1 * (0.1e1 - t445) * t305 * t321; m(6) * (t109 * t47 + t110 * t48 + t44 * t97 + t45 * t98) + m(7) * (t24 * t69 + t25 * t70 + t39 * t65 + t40 * t66) + (t303 * t326 - t306 * t327) * t437 + (t486 * qJD(3) + t328 * t306 + t329 * t303 + (t303 * t327 + t306 * t326) * qJD(1)) * t302 + t500; m(6) * ((t109 * t303 + t110 * t306) * qJD(1) + t376) + m(7) * ((t303 * t65 + t306 * t66) * qJD(1) + t378); m(6) * (t109 * t67 + t110 * t68 + t134 * t44 + t135 * t45 + t23 * t95 + t30 * t60) + m(7) * (t10 * t46 + t115 * t24 + t116 * t25 + t49 * t65 + t50 * t66 + t51 * t9) + (t2 / 0.2e1 + t1 / 0.2e1 + t426 * t437 + t540 * qJD(1) / 0.2e1) * t306 + (t4 / 0.2e1 + t3 / 0.2e1 + t425 * t437 - t539 * qJD(1) / 0.2e1) * t303 + ((-t303 * t426 + t306 * t425) * qJD(1) + (t5 + t6) * t511 - (t7 + t8) * t306 / 0.2e1 + (t303 * t499 + t306 * t498) * t532) * t302 + (qJD(1) * t533 + t531 * t303 + t530 * t306) * t305 / 0.2e1; 0.2e1 * ((-t109 * t436 + t110 * t438 + t30) * t515 + (-t436 * t65 + t438 * t66 + t10) * t514) * t302 + 0.2e1 * ((qJD(3) * t95 - t109 * t442 - t110 * t440 - t376) * t515 + (qJD(3) * t51 - t440 * t66 - t442 * t65 - t378) * t514) * t305; (t10 * t51 + t24 * t66 + t25 * t65) * t517 + (t109 * t45 + t110 * t44 + t30 * t95) * t518 + ((t330 * t303 - t306 * t525) * qJD(3) + t500) * t305 + ((-t305 * t531 - t3 - t4) * t306 + (t305 * t530 + t1 + t2) * t303 + (t302 * t533 + 0.2e1 * t486 * t305) * qJD(3) + (t303 * t525 + t330 * t306) * qJD(1)) * t302; m(7) * (-t127 * t69 + t129 * t70 + t226 * t39 + t228 * t40); m(7) * t521; m(7) * (-t46 * t405 - t115 * t127 + t116 * t129 + t226 * t49 + t228 * t50 + (-t304 * t9 + t434 * t46) * t302); m(7) * (t401 + (-t226 * t306 + t228 * t303) * t439 + (-0.2e1 * t408 - t521) * t305); m(7) * (-t51 * t405 - t127 * t66 + t129 * t65 + t226 * t25 + t228 * t24 + (-t10 * t304 + t434 * t51) * t302); (-t127 * t228 + t129 * t226 + (t302 * t405 - t401) * t304) * t517;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t26(1) t26(2) t26(4) t26(7) t26(11) t26(16); t26(2) t26(3) t26(5) t26(8) t26(12) t26(17); t26(4) t26(5) t26(6) t26(9) t26(13) t26(18); t26(7) t26(8) t26(9) t26(10) t26(14) t26(19); t26(11) t26(12) t26(13) t26(14) t26(15) t26(20); t26(16) t26(17) t26(18) t26(19) t26(20) t26(21);];
Mq  = res;
