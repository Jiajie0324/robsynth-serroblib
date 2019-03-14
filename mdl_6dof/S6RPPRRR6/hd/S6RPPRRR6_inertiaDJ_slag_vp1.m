% Calculate time derivative of joint inertia matrix for
% S6RPPRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6]';
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
% Datum: 2019-03-09 02:32
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RPPRRR6_inertiaDJ_slag_vp11(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(9,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR6_inertiaDJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR6_inertiaDJ_slag_vp1: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RPPRRR6_inertiaDJ_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RPPRRR6_inertiaDJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RPPRRR6_inertiaDJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RPPRRR6_inertiaDJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_time_derivative_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:30:43
% EndTime: 2019-03-09 02:30:59
% DurationCPUTime: 14.61s
% Computational Cost: add. (23437->838), mult. (38846->1167), div. (0->0), fcn. (37252->8), ass. (0->399)
t302 = sin(qJ(4));
t418 = qJD(4) * t302;
t305 = cos(qJ(4));
t512 = qJD(1) * t305 / 0.2e1;
t303 = sin(qJ(1));
t301 = sin(qJ(5));
t306 = cos(qJ(1));
t443 = t301 * t306;
t304 = cos(qJ(5));
t286 = pkin(5) * t304 + pkin(4);
t481 = pkin(4) - t286;
t388 = t481 * t302;
t307 = -pkin(9) - pkin(8);
t436 = t305 * t307;
t508 = t388 - t436;
t511 = -pkin(5) * t443 + t303 * t508;
t386 = t418 / 0.2e1;
t420 = qJD(1) * t303;
t397 = t305 * t420;
t510 = t306 * t386 + t397 / 0.2e1;
t419 = qJD(1) * t306;
t387 = -t419 / 0.2e1;
t509 = t303 * t386 + t305 * t387;
t415 = qJD(4) * t306;
t394 = t302 * t415;
t316 = t394 + t397;
t470 = Icges(6,4) * t304;
t347 = -Icges(6,2) * t301 + t470;
t230 = Icges(6,6) * t302 + t305 * t347;
t471 = Icges(6,4) * t301;
t350 = Icges(6,1) * t304 - t471;
t233 = Icges(6,5) * t302 + t305 * t350;
t507 = -t230 * t301 + t233 * t304;
t300 = qJ(5) + qJ(6);
t291 = sin(t300);
t292 = cos(t300);
t468 = Icges(7,4) * t292;
t346 = -Icges(7,2) * t291 + t468;
t220 = Icges(7,6) * t302 + t305 * t346;
t469 = Icges(7,4) * t291;
t349 = Icges(7,1) * t292 - t469;
t221 = Icges(7,5) * t302 + t305 * t349;
t506 = -t220 * t291 + t221 * t292;
t493 = -t303 / 0.2e1;
t363 = rSges(7,1) * t292 - rSges(7,2) * t291;
t297 = qJD(5) + qJD(6);
t446 = t297 * t305;
t164 = (-rSges(7,1) * t291 - rSges(7,2) * t292) * t446 + (rSges(7,3) * t305 - t302 * t363) * qJD(4);
t413 = qJD(5) * t305;
t391 = t301 * t413;
t480 = -pkin(8) - t307;
t203 = -pkin(5) * t391 + (t305 * t480 + t388) * qJD(4);
t434 = t164 + t203;
t505 = t303 * t434;
t298 = t303 ^ 2;
t299 = t306 ^ 2;
t504 = t298 + t299;
t295 = t306 * qJ(2);
t369 = rSges(5,1) * t302 + rSges(5,2) * t305;
t482 = -pkin(1) - qJ(3);
t324 = -t369 + t482;
t490 = -rSges(5,3) - pkin(7);
t311 = t303 * t324 + t306 * t490;
t204 = t295 + t311;
t293 = t303 * qJ(2);
t423 = t306 * pkin(1) + t293;
t399 = t306 * qJ(3) + t423;
t437 = t305 * t306;
t441 = t302 * t306;
t426 = rSges(5,1) * t441 + rSges(5,2) * t437;
t205 = t303 * t490 + t399 + t426;
t503 = t204 * t306 + t205 * t303;
t392 = t305 * t415;
t273 = rSges(5,1) * t392;
t425 = qJ(2) * t419 + qJD(2) * t303;
t400 = qJD(3) * t306 + t425;
t140 = -rSges(5,2) * t394 + qJD(1) * t311 + t273 + t400;
t479 = rSges(5,2) * t302;
t269 = rSges(5,1) * t305 - t479;
t290 = qJD(2) * t306;
t424 = pkin(7) * t420 + t290;
t141 = (-qJD(4) * t269 - qJD(3)) * t303 + ((rSges(5,3) - qJ(2)) * t303 + t324 * t306) * qJD(1) + t424;
t502 = t140 * t303 + t141 * t306;
t345 = Icges(5,5) * t302 + Icges(5,6) * t305;
t228 = Icges(5,3) * t306 + t303 * t345;
t501 = qJD(1) * t228;
t473 = Icges(5,4) * t302;
t348 = Icges(5,2) * t305 + t473;
t231 = Icges(5,6) * t306 + t303 * t348;
t472 = Icges(5,4) * t305;
t351 = Icges(5,1) * t302 + t472;
t234 = Icges(5,5) * t306 + t303 * t351;
t421 = qJD(1) * t302;
t378 = qJD(5) + t421;
t500 = t303 * t378 - t392;
t381 = t297 + t421;
t499 = t303 * t381 - t392;
t416 = qJD(4) * t305;
t393 = t303 * t416;
t498 = t306 * t381 + t393;
t497 = 2 * m(5);
t496 = 2 * m(6);
t495 = 2 * m(7);
t494 = t302 / 0.2e1;
t492 = -t306 / 0.2e1;
t491 = rSges(3,2) - pkin(1);
t489 = -rSges(6,3) - pkin(8);
t488 = m(5) * t269;
t487 = pkin(4) * t302;
t486 = pkin(5) * t301;
t485 = t305 * pkin(4);
t484 = t306 * pkin(7);
t483 = -qJD(1) / 0.2e1;
t478 = rSges(6,3) * t305;
t477 = pkin(5) * qJD(5);
t476 = rSges(7,3) - t307;
t343 = Icges(7,5) * t292 - Icges(7,6) * t291;
t219 = Icges(7,3) * t302 + t305 * t343;
t129 = t219 * t302 + t305 * t506;
t161 = (-Icges(7,2) * t292 - t469) * t446 + (Icges(7,6) * t305 - t302 * t346) * qJD(4);
t160 = (-Icges(7,5) * t291 - Icges(7,6) * t292) * t446 + (Icges(7,3) * t305 - t302 * t343) * qJD(4);
t162 = (-Icges(7,1) * t291 - t468) * t446 + (Icges(7,5) * t305 - t302 * t349) * qJD(4);
t314 = t305 * t292 * t162 + t302 * t160 + t219 * t416 - t418 * t506;
t405 = t297 * t292 * t220;
t475 = t129 * t416 + ((-t405 + (-t221 * t297 - t161) * t291) * t305 + t314) * t302;
t344 = Icges(6,5) * t304 - Icges(6,6) * t301;
t227 = Icges(6,3) * t302 + t305 * t344;
t135 = t227 * t302 + t305 * t507;
t191 = (-Icges(6,5) * t301 - Icges(6,6) * t304) * t413 + (Icges(6,3) * t305 - t302 * t344) * qJD(4);
t197 = (-Icges(6,1) * t301 - t470) * t413 + (Icges(6,5) * t305 - t302 * t350) * qJD(4);
t313 = t305 * t304 * t197 + t302 * t191 + t227 * t416 - t418 * t507;
t194 = (-Icges(6,2) * t304 - t471) * t413 + (Icges(6,6) * t305 - t302 * t347) * qJD(4);
t445 = t301 * t194;
t456 = t230 * t304;
t474 = t135 * t416 + ((-t445 + (-t233 * t301 - t456) * qJD(5)) * t305 + t313) * t302;
t366 = rSges(6,1) * t304 - rSges(6,2) * t301;
t200 = (-rSges(6,1) * t301 - rSges(6,2) * t304) * t413 + (-t302 * t366 + t478) * qJD(4);
t462 = t200 * t306;
t455 = t231 * t302;
t454 = t231 * t305;
t232 = -Icges(5,6) * t303 + t306 * t348;
t453 = t232 * t302;
t452 = t232 * t305;
t450 = t234 * t302;
t449 = t234 * t305;
t235 = -Icges(5,5) * t303 + t306 * t351;
t448 = t235 * t302;
t447 = t235 * t305;
t444 = t301 * t303;
t442 = t302 * t303;
t440 = t303 * t304;
t439 = t303 * t305;
t438 = t304 * t306;
t417 = qJD(4) * t303;
t395 = t302 * t417;
t396 = t305 * t419;
t317 = t395 - t396;
t382 = -t297 * t302 - qJD(1);
t331 = t382 * t303;
t151 = -t291 * t498 + t292 * t331;
t152 = t291 * t331 + t292 * t498;
t365 = t152 * rSges(7,1) + t151 * rSges(7,2);
t102 = rSges(7,3) * t317 + t365;
t218 = t302 * t480 - t305 * t481;
t280 = pkin(8) * t396;
t414 = qJD(5) * t302;
t379 = -qJD(1) - t414;
t330 = t379 * t301;
t409 = t304 * t477;
t435 = -t102 - t280 - (-qJD(1) * t508 + t409) * t306 - (pkin(5) * t330 + qJD(4) * t218) * t303;
t239 = -t291 * t442 + t292 * t306;
t240 = t291 * t306 + t292 * t442;
t364 = -t240 * rSges(7,1) - t239 * rSges(7,2);
t171 = -rSges(7,3) * t439 - t364;
t283 = pkin(8) * t439;
t189 = t283 - t511;
t433 = -t171 - t189;
t241 = -t291 * t441 - t292 * t303;
t242 = -t291 * t303 + t292 * t441;
t172 = t242 * rSges(7,1) + t241 * rSges(7,2) - rSges(7,3) * t437;
t284 = pkin(4) * t441;
t255 = -pkin(8) * t437 + t284;
t427 = t286 * t441 + t306 * t436;
t190 = -pkin(5) * t444 - t255 + t427;
t432 = t172 + t190;
t248 = -t301 * t442 + t438;
t249 = t302 * t440 + t443;
t367 = -rSges(6,1) * t249 - rSges(6,2) * t248;
t187 = -rSges(6,3) * t439 - t367;
t411 = pkin(4) * t442;
t254 = -t283 + t411;
t431 = -t187 - t254;
t222 = rSges(7,3) * t302 + t305 * t363;
t131 = t302 * t172 + t222 * t437;
t430 = t218 + t222;
t250 = -t301 * t441 - t440;
t251 = t302 * t438 - t444;
t429 = t251 * rSges(6,1) + t250 * rSges(6,2);
t264 = (pkin(8) * t305 - t487) * qJD(4);
t270 = t302 * pkin(8) + t485;
t428 = t303 * t264 + t270 * t419;
t229 = -Icges(5,3) * t303 + t306 * t345;
t422 = qJD(1) * t229;
t412 = -rSges(4,3) + t482;
t178 = t379 * t440 + (-t306 * t378 - t393) * t301;
t179 = t378 * t438 + (t304 * t416 + t330) * t303;
t111 = Icges(6,5) * t179 + Icges(6,6) * t178 + Icges(6,3) * t317;
t113 = Icges(6,4) * t179 + Icges(6,2) * t178 + Icges(6,6) * t317;
t115 = Icges(6,1) * t179 + Icges(6,4) * t178 + Icges(6,5) * t317;
t181 = Icges(6,5) * t249 + Icges(6,6) * t248 - Icges(6,3) * t439;
t183 = Icges(6,4) * t249 + Icges(6,2) * t248 - Icges(6,6) * t439;
t185 = Icges(6,1) * t249 + Icges(6,4) * t248 - Icges(6,5) * t439;
t340 = t183 * t301 - t185 * t304;
t29 = (qJD(4) * t340 + t111) * t302 + (qJD(4) * t181 - t113 * t301 + t115 * t304 + (-t183 * t304 - t185 * t301) * qJD(5)) * t305;
t58 = t178 * t230 + t179 * t233 - t191 * t439 + t194 * t248 + t197 * t249 + t227 * t317;
t408 = -t29 / 0.2e1 - t58 / 0.2e1;
t329 = t379 * t306;
t176 = t301 * t500 + t304 * t329;
t177 = t301 * t329 - t304 * t500;
t110 = Icges(6,5) * t177 + Icges(6,6) * t176 + Icges(6,3) * t316;
t112 = Icges(6,4) * t177 + Icges(6,2) * t176 + Icges(6,6) * t316;
t114 = Icges(6,1) * t177 + Icges(6,4) * t176 + Icges(6,5) * t316;
t182 = Icges(6,5) * t251 + Icges(6,6) * t250 - Icges(6,3) * t437;
t184 = Icges(6,4) * t251 + Icges(6,2) * t250 - Icges(6,6) * t437;
t186 = Icges(6,1) * t251 + Icges(6,4) * t250 - Icges(6,5) * t437;
t339 = t184 * t301 - t186 * t304;
t30 = (qJD(4) * t339 + t110) * t302 + (qJD(4) * t182 - t112 * t301 + t114 * t304 + (-t184 * t304 - t186 * t301) * qJD(5)) * t305;
t57 = t176 * t230 + t177 * t233 - t191 * t437 + t194 * t250 + t197 * t251 + t227 * t316;
t407 = -t30 / 0.2e1 - t57 / 0.2e1;
t332 = t306 * t382;
t149 = t291 * t499 + t292 * t332;
t150 = t291 * t332 - t292 * t499;
t101 = t150 * rSges(7,1) + t149 * rSges(7,2) + rSges(7,3) * t316;
t406 = t302 * t101 + t164 * t437 + t172 * t416;
t121 = -t227 * t439 + t230 * t248 + t233 * t249;
t93 = t181 * t302 - t305 * t340;
t404 = t93 / 0.2e1 + t121 / 0.2e1;
t122 = -t227 * t437 + t230 * t250 + t233 * t251;
t94 = t182 * t302 - t305 * t339;
t403 = t94 / 0.2e1 + t122 / 0.2e1;
t402 = -t254 + t433;
t401 = pkin(4) * t392 + pkin(8) * t316;
t398 = -pkin(7) - t486;
t390 = -t439 / 0.2e1;
t389 = -t437 / 0.2e1;
t263 = t369 * qJD(4);
t385 = t263 * t504;
t384 = t430 * t306;
t383 = qJD(1) * t430;
t380 = t101 * t439 + t171 * t316 + t172 * t396;
t116 = t177 * rSges(6,1) + t176 * rSges(6,2) + rSges(6,3) * t316;
t377 = t482 - t487;
t100 = Icges(7,1) * t152 + Icges(7,4) * t151 + Icges(7,5) * t317;
t165 = Icges(7,5) * t240 + Icges(7,6) * t239 - Icges(7,3) * t439;
t167 = Icges(7,4) * t240 + Icges(7,2) * t239 - Icges(7,6) * t439;
t169 = Icges(7,1) * t240 + Icges(7,4) * t239 - Icges(7,5) * t439;
t342 = t167 * t291 - t169 * t292;
t96 = Icges(7,5) * t152 + Icges(7,6) * t151 + Icges(7,3) * t317;
t98 = Icges(7,4) * t152 + Icges(7,2) * t151 + Icges(7,6) * t317;
t23 = (qJD(4) * t342 + t96) * t302 + (qJD(4) * t165 + (-t167 * t297 + t100) * t292 + (-t169 * t297 - t98) * t291) * t305;
t166 = Icges(7,5) * t242 + Icges(7,6) * t241 - Icges(7,3) * t437;
t168 = Icges(7,4) * t242 + Icges(7,2) * t241 - Icges(7,6) * t437;
t170 = Icges(7,1) * t242 + Icges(7,4) * t241 - Icges(7,5) * t437;
t341 = t168 * t291 - t170 * t292;
t95 = Icges(7,5) * t150 + Icges(7,6) * t149 + Icges(7,3) * t316;
t97 = Icges(7,4) * t150 + Icges(7,2) * t149 + Icges(7,6) * t316;
t99 = Icges(7,1) * t150 + Icges(7,4) * t149 + Icges(7,5) * t316;
t24 = (qJD(4) * t341 + t95) * t302 + (qJD(4) * t166 + (-t168 * t297 + t99) * t292 + (-t170 * t297 - t97) * t291) * t305;
t83 = t165 * t302 - t305 * t342;
t84 = t166 * t302 - t305 * t341;
t357 = t83 * t303 + t84 * t306;
t358 = t303 * t84 - t306 * t83;
t108 = -t219 * t439 + t220 * t239 + t221 * t240;
t71 = -t165 * t439 + t167 * t239 + t169 * t240;
t72 = -t166 * t439 + t168 * t239 + t170 * t240;
t361 = t303 * t71 + t306 * t72;
t38 = t108 * t302 - t305 * t361;
t109 = -t219 * t437 + t220 * t241 + t221 * t242;
t73 = -t165 * t437 + t167 * t241 + t169 * t242;
t74 = -t166 * t437 + t168 * t241 + t170 * t242;
t359 = t303 * t73 + t306 * t74;
t39 = t109 * t302 - t305 * t359;
t376 = t38 * t395 + (t129 * t302 - t305 * t357) * t416 + t302 * (t357 * t418 + (qJD(1) * t358 - t23 * t303 - t24 * t306) * t305 + t475) + t316 * t39;
t371 = -t286 * t302 + t482;
t370 = t398 * t306;
t368 = rSges(6,1) * t179 + rSges(6,2) * t178;
t362 = t303 * t72 - t306 * t71;
t360 = t303 * t74 - t306 * t73;
t85 = -t181 * t439 + t183 * t248 + t185 * t249;
t86 = -t182 * t439 + t184 * t248 + t186 * t249;
t356 = t303 * t86 - t306 * t85;
t355 = t303 * t85 + t306 * t86;
t87 = -t181 * t437 + t183 * t250 + t185 * t251;
t88 = -t182 * t437 + t184 * t250 + t186 * t251;
t354 = t303 * t88 - t306 * t87;
t353 = t303 * t87 + t306 * t88;
t352 = t303 * t93 + t306 * t94;
t188 = -rSges(6,3) * t437 + t429;
t338 = t187 * t306 - t188 * t303;
t335 = t450 + t454;
t334 = t448 + t452;
t328 = rSges(3,3) * t306 + t303 * t491;
t237 = rSges(6,3) * t302 + t305 * t366;
t327 = -t200 * t303 - t237 * t419;
t325 = t377 + t478;
t323 = t335 * t306;
t322 = t334 * t303;
t320 = qJD(4) * (-Icges(5,2) * t302 + t472);
t319 = qJD(4) * (Icges(5,5) * t305 - Icges(5,6) * t302);
t318 = rSges(4,2) * t306 + t303 * t412;
t315 = t305 * t476 + t371;
t17 = t100 * t242 + t149 * t167 + t150 * t169 + t165 * t316 + t241 * t98 - t437 * t96;
t18 = t149 * t168 + t150 * t170 + t166 * t316 + t241 * t97 + t242 * t99 - t437 * t95;
t10 = -qJD(1) * t359 + t17 * t306 - t18 * t303;
t19 = t100 * t240 + t151 * t167 + t152 * t169 + t165 * t317 + t239 * t98 - t439 * t96;
t20 = t151 * t168 + t152 * t170 + t166 * t317 + t239 * t97 + t240 * t99 - t439 * t95;
t11 = -qJD(1) * t361 + t19 * t306 - t20 * t303;
t47 = t149 * t220 + t150 * t221 - t160 * t437 + t161 * t241 + t162 * t242 + t219 * t316;
t3 = (qJD(4) * t359 + t47) * t302 + (qJD(1) * t360 + qJD(4) * t109 - t17 * t303 - t18 * t306) * t305;
t48 = t151 * t220 + t152 * t221 - t160 * t439 + t161 * t239 + t162 * t240 + t219 * t317;
t4 = (qJD(4) * t361 + t48) * t302 + (qJD(1) * t362 + qJD(4) * t108 - t19 * t303 - t20 * t306) * t305;
t312 = t3 * t493 + (-qJD(1) * t357 + t23 * t306 - t24 * t303) * t494 + t306 * t4 / 0.2e1 - t38 * t420 / 0.2e1 + t39 * t387 - t358 * t416 / 0.2e1 + t11 * t390 + t10 * t389 - t510 * t360 - t509 * t362;
t310 = t475 + (t23 + t48) * t390 + (t24 + t47) * t389 + (t109 + t84) * t510 + (t108 + t83) * t509;
t309 = (-t303 * t4 + (-qJD(1) * t38 - t3) * t306) * t305 + t376;
t308 = t250 * t477 + t286 * t392 - t307 * t394;
t262 = t306 * t270;
t261 = t303 * t270;
t253 = t306 * t264;
t245 = -rSges(3,2) * t306 + rSges(3,3) * t303 + t423;
t244 = t295 + t328;
t243 = t255 * t420;
t238 = -rSges(5,3) * t303 + t426;
t236 = rSges(5,3) * t306 + t303 * t369;
t224 = rSges(4,2) * t303 + rSges(4,3) * t306 + t399;
t223 = t295 + t318;
t214 = t290 + (t491 * t306 + (-rSges(3,3) - qJ(2)) * t303) * qJD(1);
t213 = qJD(1) * t328 + t425;
t211 = t222 * t395;
t209 = pkin(8) * t395 - t280 + (t302 * t419 + t393) * pkin(4);
t208 = -qJD(1) * t411 + t401;
t207 = t237 * t306 + t262;
t206 = t237 * t303 + t261;
t202 = -qJD(3) * t303 + t290 + ((-rSges(4,2) - qJ(2)) * t303 + t412 * t306) * qJD(1);
t201 = qJD(1) * t318 + t400;
t193 = t303 * t319 + t422;
t192 = t306 * t319 - t501;
t158 = t172 * t439;
t145 = t262 + t384;
t144 = t303 * t430 + t261;
t143 = t188 * t302 + t237 * t437;
t142 = -t187 * t302 - t237 * t439;
t139 = -pkin(7) * t303 + t437 * t489 + t284 + t399 + t429;
t138 = t303 * t325 + t283 + t295 + t367 - t484;
t137 = -t229 * t303 + t306 * t334;
t136 = -t228 * t303 + t323;
t134 = t229 * t306 + t322;
t133 = t228 * t306 + t303 * t335;
t130 = -t171 * t302 - t222 * t439;
t128 = t303 * t398 + t172 + t399 + t427;
t127 = t303 * t315 + t295 + t364 + t370;
t125 = t338 * t305;
t124 = -t327 + t428;
t123 = t462 + t253 + (-t237 - t270) * t420;
t119 = qJD(1) * t511 + t308 - t401;
t118 = -t171 * t437 + t158;
t117 = rSges(6,3) * t317 + t368;
t103 = (-t188 - t255) * t306 + t431 * t303;
t90 = t190 * t302 + t218 * t437 + t131;
t89 = t302 * t433 - t430 * t439;
t82 = t280 + (-qJD(3) + (t302 * t489 - t485) * qJD(4)) * t303 + (t306 * t325 - t293) * qJD(1) - t368 + t424;
t81 = (t303 * t377 - t484) * qJD(1) + t116 + t400 + t401;
t76 = qJD(1) * t384 + t428 + t505;
t75 = t253 + t434 * t306 + (-t270 - t430) * t420;
t70 = t158 + (t190 * t303 + t306 * t433) * t305;
t69 = (-t255 - t432) * t306 + t402 * t303;
t68 = -t306 * t409 + (t414 * t486 - qJD(3) + (-t305 * t286 - t302 * t476) * qJD(4)) * t303 + ((-qJ(2) + t486) * t303 + t315 * t306) * qJD(1) - t365 + t424;
t67 = (t370 + (t371 - t436) * t303) * qJD(1) + t308 + t101 + t400;
t66 = (t237 * t417 - t117) * t302 + (-qJD(4) * t187 + t327) * t305;
t65 = (-t237 * t415 + t116) * t302 + (qJD(4) * t188 - t237 * t420 + t462) * t305;
t63 = -t102 * t302 + t211 + (-qJD(4) * t171 - t164 * t303 - t222 * t419) * t305;
t62 = -t222 * t316 + t406;
t49 = t338 * t418 + (t116 * t303 - t117 * t306 + (t187 * t303 + t188 * t306) * qJD(1)) * t305;
t46 = t243 + (qJD(1) * t188 - t117 - t209) * t303 + (qJD(1) * t431 - t116 - t208) * t306;
t43 = t302 * t122 - t305 * t353;
t42 = t302 * t121 - t305 * t355;
t40 = -t102 * t437 - t172 * t395 + t380;
t32 = t211 + (t218 * t417 + t435) * t302 + (qJD(4) * t433 - t306 * t383 - t505) * t305;
t31 = (-t415 * t430 + t119) * t302 + (qJD(4) * t190 + t203 * t306 - t303 * t383) * t305 + t406;
t28 = -t110 * t439 + t112 * t248 + t114 * t249 + t178 * t184 + t179 * t186 + t182 * t317;
t27 = -t111 * t439 + t113 * t248 + t115 * t249 + t178 * t183 + t179 * t185 + t181 * t317;
t26 = -t110 * t437 + t112 * t250 + t114 * t251 + t176 * t184 + t177 * t186 + t182 * t316;
t25 = -t111 * t437 + t113 * t250 + t115 * t251 + t176 * t183 + t177 * t185 + t181 * t316;
t16 = t243 + (qJD(1) * t432 - t209 + t435) * t303 + (qJD(1) * t402 - t101 - t119 - t208) * t306;
t15 = (t189 * t306 - t303 * t432) * t418 + ((qJD(1) * t189 + t119) * t303 + (qJD(1) * t190 + t435) * t306) * t305 + t380;
t14 = -qJD(1) * t355 + t27 * t306 - t28 * t303;
t13 = -qJD(1) * t353 + t25 * t306 - t26 * t303;
t7 = (qJD(4) * t355 + t58) * t302 + (qJD(1) * t356 + qJD(4) * t121 - t27 * t303 - t28 * t306) * t305;
t6 = (qJD(4) * t353 + t57) * t302 + (qJD(1) * t354 + qJD(4) * t122 - t25 * t303 - t26 * t306) * t305;
t1 = [t313 + t314 - t233 * t391 - t413 * t456 - t291 * t221 * t446 - t351 * t416 + (t127 * t68 + t128 * t67) * t495 + (t138 * t82 + t139 * t81) * t496 + (t140 * t205 + t141 * t204) * t497 + 0.2e1 * m(4) * (t201 * t224 + t202 * t223) + 0.2e1 * m(3) * (t213 * t245 + t214 * t244) + (-t161 * t291 - t320 - t405 - t445) * t305 + (-Icges(5,1) * t305 + t348 + t473) * t418; m(7) * (t303 * t68 - t306 * t67 + (t127 * t306 + t128 * t303) * qJD(1)) + m(6) * (t303 * t82 - t306 * t81 + (t138 * t306 + t139 * t303) * qJD(1)) + m(5) * (qJD(1) * t503 - t140 * t306 + t141 * t303) + m(3) * (-t213 * t306 + t214 * t303 + (t244 * t306 + t245 * t303) * qJD(1)) + m(4) * (-t201 * t306 + t202 * t303 + (t223 * t306 + t224 * t303) * qJD(1)); 0; m(7) * (t303 * t67 + t306 * t68 + (-t127 * t303 + t128 * t306) * qJD(1)) + m(6) * (t303 * t81 + t306 * t82 + (-t138 * t303 + t139 * t306) * qJD(1)) + m(5) * ((-t204 * t303 + t205 * t306) * qJD(1) + t502) + m(4) * (t201 * t303 + t202 * t306 + (-t223 * t303 + t224 * t306) * qJD(1)); 0; 0; (t23 / 0.2e1 - (qJD(1) * t232 + t303 * t320) * t302 / 0.2e1 + t235 * t512 + t48 / 0.2e1 + (-t454 / 0.2e1 - t450 / 0.2e1) * qJD(4) - t408) * t306 + ((-qJD(1) * t231 + t306 * t320) * t494 + t234 * t512 - t47 / 0.2e1 - t24 / 0.2e1 + (t452 / 0.2e1 + t448 / 0.2e1) * qJD(4) + t407) * t303 + m(5) * (-t263 * t503 + t269 * t502) + m(7) * (t127 * t75 + t128 * t76 + t144 * t67 + t145 * t68) + m(6) * (t123 * t138 + t124 * t139 + t206 * t81 + t207 * t82) - (t298 / 0.2e1 + t299 / 0.2e1) * t345 * qJD(4) + ((t205 * t488 + t453 / 0.2e1 - t447 / 0.2e1 - t109 / 0.2e1 - t84 / 0.2e1 - t403) * t306 + (-t204 * t488 + t455 / 0.2e1 - t449 / 0.2e1 - t83 / 0.2e1 - t108 / 0.2e1 - t404) * t303) * qJD(1); m(6) * (t123 * t303 - t124 * t306 + (t206 * t303 + t207 * t306) * qJD(1)) + m(7) * (t303 * t75 - t306 * t76 + (t144 * t303 + t145 * t306) * qJD(1)); m(6) * (t123 * t306 + t124 * t303 + (t206 * t306 - t207 * t303) * qJD(1)) + m(7) * (t303 * t76 + t306 * t75 + (t144 * t306 - t145 * t303) * qJD(1)) - m(5) * t385; -t303 * t10 + t306 * t11 + (t144 * t76 + t145 * t75 + t69 * t16) * t495 + t306 * t14 - t303 * t13 + (t103 * t46 + t123 * t207 + t124 * t206) * t496 - t303 * ((t303 * t192 + (-t136 + t322) * qJD(1)) * t303 + (-t137 * qJD(1) + (-t231 * t418 + t234 * t416 - t501) * t306 + (-t193 + (-t447 + t453) * qJD(4) + (t229 - t335) * qJD(1)) * t303) * t306) + t306 * ((t306 * t193 + (-t134 + t323) * qJD(1)) * t306 + (-t133 * qJD(1) + (t232 * t418 - t235 * t416 + t422) * t303 + (-t192 + (t449 - t455) * qJD(4) + (-t228 - t334) * qJD(1)) * t306) * t303) + (-t269 * t385 + (-t306 * t273 + (-t269 * t298 + t299 * t479) * qJD(4) + (rSges(5,3) * t504 - t306 * t236 + t303 * t238) * qJD(1)) * (-t236 * t303 - t238 * t306)) * t497 + (-t133 * t306 + t134 * t303 + t356 + t362) * t420 + (-t136 * t306 + t137 * t303 + t354 + t360) * t419; (t407 * t306 + t408 * t303 + (t303 * t403 - t306 * t404) * qJD(1)) * t305 + m(7) * (t127 * t32 + t128 * t31 + t67 * t90 + t68 * t89) + m(6) * (t138 * t66 + t139 * t65 + t142 * t82 + t143 * t81) + t310 + (t303 * t404 + t306 * t403) * t418 + t474; m(6) * (t303 * t66 - t306 * t65 + (t142 * t306 + t143 * t303) * qJD(1)) + m(7) * (t303 * t32 - t306 * t31 + (t303 * t90 + t306 * t89) * qJD(1)); m(6) * (t303 * t65 + t306 * t66 + (-t142 * t303 + t143 * t306) * qJD(1)) + m(7) * (t303 * t31 + t306 * t32 + (-t303 * t89 + t306 * t90) * qJD(1)); m(7) * (t144 * t31 + t145 * t32 + t15 * t69 + t70 * t16 + t75 * t89 + t76 * t90) + m(6) * (t103 * t49 + t123 * t142 + t124 * t143 - t125 * t46 + t206 * t65 + t207 * t66) + ((-qJD(1) * t93 - t30) * t494 - t6 / 0.2e1 - t356 * t386 + t42 * t483) * t303 + ((-qJD(1) * t94 + t29) * t494 + t7 / 0.2e1 - t354 * t386 + t43 * t483) * t306 + t312 + (t13 * t492 + qJD(4) * (-t303 * t94 + t93 * t306) / 0.2e1 + t14 * t493 + (t354 * t493 - t356 * t492) * qJD(1)) * t305; (t70 * t15 + t31 * t90 + t32 * t89) * t495 + (-t125 * t49 + t142 * t66 + t143 * t65) * t496 + ((t302 * t352 + t303 * t42 + t306 * t43) * qJD(4) + t474) * t302 + ((-t30 * t302 - t3 - t6) * t306 + (-t29 * t302 - t4 - t7) * t303 + (t135 * t302 - t305 * t352) * qJD(4) + ((t302 * t94 + t43) * t303 + (-t302 * t93 - t38 - t42) * t306) * qJD(1)) * t305 + t376; t310 + m(7) * (t127 * t63 + t128 * t62 + t130 * t68 + t131 * t67); m(7) * (t303 * t63 - t306 * t62 + (t130 * t306 + t131 * t303) * qJD(1)); m(7) * (t303 * t62 + t306 * t63 + (-t130 * t303 + t131 * t306) * qJD(1)); m(7) * (t118 * t16 + t130 * t75 + t131 * t76 + t144 * t62 + t145 * t63 + t40 * t69) + t312; m(7) * (t118 * t15 + t130 * t32 + t131 * t31 + t40 * t70 + t62 * t90 + t63 * t89) + t309; (t118 * t40 + t130 * t63 + t131 * t62) * t495 + t309;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;