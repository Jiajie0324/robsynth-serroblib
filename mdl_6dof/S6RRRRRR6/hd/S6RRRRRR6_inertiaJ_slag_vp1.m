% Calculate joint inertia matrix for
% S6RRRRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d4,d5,d6]';
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
% Mq [6x6]
%   inertia matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 04:27
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function Mq = S6RRRRRR6_inertiaJ_slag_vp1(qJ, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(12,1),zeros(7,1),zeros(7,3),zeros(7,6)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRR6_inertiaJ_slag_vp1: qJ has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRRRRR6_inertiaJ_slag_vp1: pkin has to be [12x1] (double)');
assert(isreal(m) && all(size(m) == [7 1]), ...
  'S6RRRRRR6_inertiaJ_slag_vp1: m has to be [7x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [7,3]), ...
  'S6RRRRRR6_inertiaJ_slag_vp1: rSges has to be [7x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [7 6]), ...
  'S6RRRRRR6_inertiaJ_slag_vp1: Icges has to be [7x6] (double)'); 

%% Symbolic Calculation
% From inertia_joint_joint_floatb_twist_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 04:11:49
% EndTime: 2019-03-10 04:12:08
% DurationCPUTime: 8.43s
% Computational Cost: add. (50076->720), mult. (75713->958), div. (0->0), fcn. (96328->14), ass. (0->359)
t378 = cos(pkin(6));
t382 = sin(qJ(1));
t385 = cos(qJ(2));
t454 = t382 * t385;
t381 = sin(qJ(2));
t386 = cos(qJ(1));
t455 = t381 * t386;
t356 = t378 * t455 + t454;
t452 = qJ(3) + qJ(4);
t373 = sin(t452);
t377 = sin(pkin(6));
t411 = cos(t452);
t404 = t377 * t411;
t325 = t356 * t373 + t386 * t404;
t321 = t325 * pkin(11);
t458 = t377 * t386;
t326 = t356 * t411 - t373 * t458;
t387 = -pkin(12) - pkin(11);
t453 = t385 * t386;
t456 = t381 * t382;
t355 = -t378 * t453 + t456;
t379 = sin(qJ(5));
t465 = t355 * t379;
t383 = cos(qJ(5));
t370 = pkin(5) * t383 + pkin(4);
t475 = -pkin(4) + t370;
t183 = pkin(5) * t465 - t325 * t387 + t326 * t475 - t321;
t376 = qJ(5) + qJ(6);
t372 = sin(t376);
t374 = cos(t376);
t278 = -t326 * t372 + t355 * t374;
t279 = t326 * t374 + t355 * t372;
t399 = -t279 * rSges(7,1) - t278 * rSges(7,2);
t193 = t325 * rSges(7,3) - t399;
t450 = t183 + t193;
t462 = t377 * t381;
t343 = t373 * t462 - t378 * t411;
t344 = t378 * t373 + t381 * t404;
t459 = t377 * t385;
t432 = t379 * t459;
t223 = -pkin(5) * t432 + t475 * t344 + (-pkin(11) - t387) * t343;
t312 = -t344 * t372 - t374 * t459;
t313 = t344 * t374 - t372 * t459;
t230 = rSges(7,1) * t313 + rSges(7,2) * t312 + rSges(7,3) * t343;
t492 = t223 + t230;
t241 = Icges(5,5) * t326 - Icges(5,6) * t325 + Icges(5,3) * t355;
t243 = Icges(5,4) * t326 - Icges(5,2) * t325 + Icges(5,6) * t355;
t245 = Icges(5,1) * t326 - Icges(5,4) * t325 + Icges(5,5) * t355;
t137 = t241 * t355 - t243 * t325 + t245 * t326;
t358 = -t378 * t456 + t453;
t327 = t358 * t373 - t382 * t404;
t461 = t377 * t382;
t328 = t358 * t411 + t373 * t461;
t357 = t378 * t454 + t455;
t242 = Icges(5,5) * t328 - Icges(5,6) * t327 + Icges(5,3) * t357;
t244 = Icges(5,4) * t328 - Icges(5,2) * t327 + Icges(5,6) * t357;
t246 = Icges(5,1) * t328 - Icges(5,4) * t327 + Icges(5,5) * t357;
t138 = t242 * t355 - t244 * t325 + t246 * t326;
t290 = Icges(5,5) * t344 - Icges(5,6) * t343 - Icges(5,3) * t459;
t291 = Icges(5,4) * t344 - Icges(5,2) * t343 - Icges(5,6) * t459;
t292 = Icges(5,1) * t344 - Icges(5,4) * t343 - Icges(5,5) * t459;
t164 = t290 * t355 - t291 * t325 + t292 * t326;
t227 = Icges(7,5) * t313 + Icges(7,6) * t312 + Icges(7,3) * t343;
t228 = Icges(7,4) * t313 + Icges(7,2) * t312 + Icges(7,6) * t343;
t229 = Icges(7,1) * t313 + Icges(7,4) * t312 + Icges(7,5) * t343;
t118 = t227 * t325 + t228 * t278 + t229 * t279;
t187 = Icges(7,5) * t279 + Icges(7,6) * t278 + Icges(7,3) * t325;
t189 = Icges(7,4) * t279 + Icges(7,2) * t278 + Icges(7,6) * t325;
t191 = Icges(7,1) * t279 + Icges(7,4) * t278 + Icges(7,5) * t325;
t90 = t187 * t325 + t189 * t278 + t191 * t279;
t280 = -t328 * t372 + t357 * t374;
t281 = t328 * t374 + t357 * t372;
t188 = Icges(7,5) * t281 + Icges(7,6) * t280 + Icges(7,3) * t327;
t190 = Icges(7,4) * t281 + Icges(7,2) * t280 + Icges(7,6) * t327;
t192 = Icges(7,1) * t281 + Icges(7,4) * t280 + Icges(7,5) * t327;
t91 = t188 * t325 + t190 * t278 + t192 * t279;
t17 = -t118 * t459 + t355 * t90 + t357 * t91;
t323 = -t344 * t379 - t383 * t459;
t324 = t344 * t383 - t432;
t236 = Icges(6,5) * t324 + Icges(6,6) * t323 + Icges(6,3) * t343;
t237 = Icges(6,4) * t324 + Icges(6,2) * t323 + Icges(6,6) * t343;
t238 = Icges(6,1) * t324 + Icges(6,4) * t323 + Icges(6,5) * t343;
t284 = -t326 * t379 + t355 * t383;
t285 = t326 * t383 + t465;
t122 = t236 * t325 + t237 * t284 + t238 * t285;
t196 = Icges(6,5) * t285 + Icges(6,6) * t284 + Icges(6,3) * t325;
t198 = Icges(6,4) * t285 + Icges(6,2) * t284 + Icges(6,6) * t325;
t200 = Icges(6,1) * t285 + Icges(6,4) * t284 + Icges(6,5) * t325;
t96 = t196 * t325 + t198 * t284 + t200 * t285;
t286 = -t328 * t379 + t357 * t383;
t463 = t357 * t379;
t287 = t328 * t383 + t463;
t197 = Icges(6,5) * t287 + Icges(6,6) * t286 + Icges(6,3) * t327;
t199 = Icges(6,4) * t287 + Icges(6,2) * t286 + Icges(6,6) * t327;
t201 = Icges(6,1) * t287 + Icges(6,4) * t286 + Icges(6,5) * t327;
t97 = t197 * t325 + t199 * t284 + t201 * t285;
t33 = -t122 * t459 + t355 * t96 + t357 * t97;
t491 = t137 * t355 + t138 * t357 - t164 * t459 + t17 + t33;
t139 = t241 * t357 - t243 * t327 + t245 * t328;
t140 = t242 * t357 - t244 * t327 + t246 * t328;
t165 = t290 * t357 - t291 * t327 + t292 * t328;
t119 = t227 * t327 + t228 * t280 + t229 * t281;
t92 = t187 * t327 + t189 * t280 + t191 * t281;
t93 = t188 * t327 + t190 * t280 + t192 * t281;
t18 = -t119 * t459 + t355 * t92 + t357 * t93;
t123 = t236 * t327 + t237 * t286 + t238 * t287;
t98 = t196 * t327 + t198 * t286 + t200 * t287;
t99 = t197 * t327 + t199 * t286 + t201 * t287;
t34 = -t123 * t459 + t355 * t98 + t357 * t99;
t490 = t139 * t355 + t140 * t357 - t165 * t459 + t18 + t34;
t21 = t118 * t378 + (t382 * t91 - t386 * t90) * t377;
t38 = t122 * t378 + (t382 * t97 - t386 * t96) * t377;
t489 = t21 + t38 + t164 * t378 + (-t137 * t386 + t138 * t382) * t377;
t22 = t119 * t378 + (t382 * t93 - t386 * t92) * t377;
t39 = t123 * t378 + (t382 * t99 - t386 * t98) * t377;
t488 = t22 + t39 + t165 * t378 + (-t139 * t386 + t140 * t382) * t377;
t439 = -t343 * t291 + t344 * t292;
t170 = -t290 * t459 + t439;
t129 = t343 * t227 + t312 * t228 + t313 * t229;
t105 = t188 * t343 + t190 * t312 + t192 * t313;
t471 = t105 * t357;
t104 = t187 * t343 + t189 * t312 + t191 * t313;
t473 = t104 * t355;
t45 = -t129 * t459 + t471 + t473;
t154 = -t242 * t459 - t244 * t343 + t246 * t344;
t467 = t154 * t357;
t153 = -t241 * t459 - t243 * t343 + t245 * t344;
t468 = t153 * t355;
t134 = t343 * t236 + t323 * t237 + t324 * t238;
t111 = t197 * t343 + t199 * t323 + t201 * t324;
t469 = t111 * t357;
t110 = t196 * t343 + t198 * t323 + t200 * t324;
t470 = t110 * t355;
t53 = -t134 * t459 + t469 + t470;
t487 = -t170 * t459 + t45 + t467 + t468 + t53;
t168 = t170 * t378;
t128 = t129 * t378;
t48 = t128 + (-t104 * t386 + t105 * t382) * t377;
t132 = t134 * t378;
t55 = t132 + (-t110 * t386 + t111 * t382) * t377;
t486 = t48 + t55 + t168 + (-t153 * t386 + t154 * t382) * t377;
t485 = -t129 - t134;
t484 = t325 / 0.2e1;
t483 = t327 / 0.2e1;
t482 = t343 / 0.2e1;
t481 = t355 / 0.2e1;
t480 = t357 / 0.2e1;
t479 = t378 / 0.2e1;
t478 = t382 / 0.2e1;
t477 = -t386 / 0.2e1;
t384 = cos(qJ(3));
t371 = pkin(3) * t384 + pkin(2);
t476 = -pkin(2) + t371;
t474 = t104 * t325;
t472 = t105 * t327;
t299 = Icges(3,5) * t356 - Icges(3,6) * t355 - Icges(3,3) * t458;
t466 = t299 * t386;
t388 = -pkin(10) - pkin(9);
t464 = t355 * t388;
t460 = t377 * t384;
t380 = sin(qJ(3));
t457 = t378 * t380;
t202 = t285 * rSges(6,1) + t284 * rSges(6,2) + t325 * rSges(6,3);
t269 = t326 * pkin(4) + t321;
t251 = t357 * t269;
t451 = t357 * t202 + t251;
t270 = t328 * pkin(4) + pkin(11) * t327;
t421 = pkin(5) * t463 - t327 * t387 + t328 * t370;
t184 = -t270 + t421;
t194 = t281 * rSges(7,1) + t280 * rSges(7,2) + t327 * rSges(7,3);
t449 = t184 + t194;
t203 = t287 * rSges(6,1) + t286 * rSges(6,2) + t327 * rSges(6,3);
t448 = -t203 - t270;
t351 = t355 * pkin(9);
t430 = t380 * t458;
t362 = pkin(3) * t430;
t249 = t356 * t476 - t351 - t362 - t464;
t305 = pkin(3) * t457 + ((pkin(9) + t388) * t385 + t476 * t381) * t377;
t446 = t249 * t459 + t355 * t305;
t239 = rSges(6,1) * t324 + rSges(6,2) * t323 + rSges(6,3) * t343;
t298 = t344 * pkin(4) + t343 * pkin(11);
t445 = -t239 - t298;
t316 = t358 * pkin(2) + pkin(9) * t357;
t431 = t380 * t461;
t419 = pkin(3) * t431 - t357 * t388 + t358 * t371;
t250 = -t316 + t419;
t311 = t378 * t316;
t444 = t378 * t250 + t311;
t248 = t328 * rSges(5,1) - t327 * rSges(5,2) + t357 * rSges(5,3);
t443 = -t248 - t250;
t315 = t356 * pkin(2) + t351;
t442 = -t249 - t315;
t331 = -t356 * t380 - t384 * t458;
t332 = t356 * t384 - t430;
t259 = rSges(4,1) * t332 + rSges(4,2) * t331 + rSges(4,3) * t355;
t441 = -t259 - t315;
t440 = t269 * t459 + t355 * t298;
t400 = -t326 * rSges(5,1) + t325 * rSges(5,2);
t247 = t355 * rSges(5,3) - t400;
t293 = rSges(5,1) * t344 - rSges(5,2) * t343 - rSges(5,3) * t459;
t185 = t247 * t459 + t355 * t293;
t353 = t378 * t384 - t380 * t462;
t354 = t381 * t460 + t457;
t295 = Icges(4,4) * t354 + Icges(4,2) * t353 - Icges(4,6) * t459;
t296 = Icges(4,1) * t354 + Icges(4,4) * t353 - Icges(4,5) * t459;
t438 = t353 * t295 + t354 * t296;
t437 = -t293 - t305;
t436 = t315 * t461 + t316 * t458;
t435 = t386 * pkin(1) + pkin(8) * t461;
t124 = t129 * t343;
t42 = t124 + t472 + t474;
t7 = t118 * t343 + t325 * t90 + t327 * t91;
t8 = t119 * t343 + t325 * t92 + t327 * t93;
t434 = t325 * t7 + t327 * t8 + t343 * t42;
t429 = -t170 + t485;
t428 = t357 * t450 + t251;
t427 = -t270 - t449;
t426 = -t250 + t448;
t425 = -t298 - t492;
t424 = -t305 + t445;
t423 = t378 * t270 + t444;
t422 = -t269 + t442;
t333 = -t358 * t380 + t382 * t460;
t334 = t358 * t384 + t431;
t260 = t334 * rSges(4,1) + t333 * rSges(4,2) + t357 * rSges(4,3);
t339 = Icges(3,3) * t378 + (Icges(3,5) * t381 + Icges(3,6) * t385) * t377;
t340 = Icges(3,6) * t378 + (Icges(3,4) * t381 + Icges(3,2) * t385) * t377;
t341 = Icges(3,5) * t378 + (Icges(3,1) * t381 + Icges(3,4) * t385) * t377;
t420 = t378 * t339 + t340 * t459 + t341 * t462;
t307 = t358 * rSges(3,1) - t357 * rSges(3,2) + rSges(3,3) * t461;
t418 = t461 / 0.2e1;
t417 = -t459 / 0.2e1;
t416 = -t458 / 0.2e1;
t415 = t111 / 0.2e1 + t123 / 0.2e1;
t414 = t122 / 0.2e1 + t110 / 0.2e1;
t253 = Icges(4,5) * t332 + Icges(4,6) * t331 + Icges(4,3) * t355;
t255 = Icges(4,4) * t332 + Icges(4,2) * t331 + Icges(4,6) * t355;
t257 = Icges(4,1) * t332 + Icges(4,4) * t331 + Icges(4,5) * t355;
t159 = -t253 * t459 + t255 * t353 + t257 * t354;
t294 = Icges(4,5) * t354 + Icges(4,6) * t353 - Icges(4,3) * t459;
t166 = t294 * t355 + t295 * t331 + t296 * t332;
t413 = t159 / 0.2e1 + t166 / 0.2e1;
t254 = Icges(4,5) * t334 + Icges(4,6) * t333 + Icges(4,3) * t357;
t256 = Icges(4,4) * t334 + Icges(4,2) * t333 + Icges(4,6) * t357;
t258 = Icges(4,1) * t334 + Icges(4,4) * t333 + Icges(4,5) * t357;
t160 = -t254 * t459 + t256 * t353 + t258 * t354;
t167 = t294 * t357 + t295 * t333 + t296 * t334;
t412 = t160 / 0.2e1 + t167 / 0.2e1;
t410 = -t382 * pkin(1) + pkin(8) * t458;
t297 = rSges(4,1) * t354 + rSges(4,2) * t353 - rSges(4,3) * t459;
t359 = (pkin(2) * t381 - pkin(9) * t385) * t377;
t409 = t377 * (-t297 - t359);
t408 = -t250 + t427;
t407 = -t305 + t425;
t406 = t249 * t461 + t250 * t458 + t436;
t126 = t202 * t459 + t355 * t239 + t440;
t405 = t377 * (-t359 + t437);
t403 = t118 * t484 + t119 * t483 + t124 + t474 / 0.2e1 + t472 / 0.2e1;
t402 = t17 * t484 + t18 * t483 + t42 * t417 + t45 * t482 + t8 * t480 + t7 * t481;
t401 = t21 * t484 + t22 * t483 + t7 * t416 + t8 * t418 + t42 * t479 + t48 * t482;
t398 = t419 + t435;
t397 = t355 * t491 + t357 * t490;
t396 = t377 * (-t359 + t424);
t395 = t269 * t461 + t270 * t458 + t406;
t86 = t492 * t355 + t450 * t459 + t440;
t394 = t377 * (-t359 + t407);
t393 = -t356 * t371 + t362 + t410;
t306 = rSges(3,1) * t356 - rSges(3,2) * t355 - rSges(3,3) * t458;
t25 = t122 * t343 + t325 * t96 + t327 * t97;
t26 = t123 * t343 + t325 * t98 + t327 * t99;
t130 = t134 * t343;
t50 = t110 * t325 + t111 * t327 + t130;
t392 = t25 * t481 + t26 * t480 + t33 * t484 + t34 * t483 + t50 * t417 + t53 * t482 + t402;
t391 = -t459 * t487 + t397;
t390 = t473 / 0.2e1 + t471 / 0.2e1 + t470 / 0.2e1 + t469 / 0.2e1 + t468 / 0.2e1 + t467 / 0.2e1 + (t118 + t122 + t164) * t481 + (t119 + t123 + t165) * t480;
t389 = t416 * t491 + t417 * t486 + t418 * t490 + t479 * t487 + t480 * t488 + t481 * t489;
t364 = rSges(2,1) * t386 - rSges(2,2) * t382;
t363 = -rSges(2,1) * t382 - rSges(2,2) * t386;
t342 = t378 * rSges(3,3) + (rSges(3,1) * t381 + rSges(3,2) * t385) * t377;
t304 = Icges(3,1) * t358 - Icges(3,4) * t357 + Icges(3,5) * t461;
t303 = Icges(3,1) * t356 - Icges(3,4) * t355 - Icges(3,5) * t458;
t302 = Icges(3,4) * t358 - Icges(3,2) * t357 + Icges(3,6) * t461;
t301 = Icges(3,4) * t356 - Icges(3,2) * t355 - Icges(3,6) * t458;
t300 = Icges(3,5) * t358 - Icges(3,6) * t357 + Icges(3,3) * t461;
t289 = t307 + t435;
t288 = -t306 + t410;
t265 = -t306 * t378 - t342 * t458;
t264 = t307 * t378 - t342 * t461;
t252 = t420 * t378;
t231 = (t306 * t382 + t307 * t386) * t377;
t226 = t339 * t461 - t340 * t357 + t341 * t358;
t225 = -t339 * t458 - t340 * t355 + t341 * t356;
t224 = t357 * t249;
t222 = t357 * t247;
t216 = t316 + t260 + t435;
t215 = t410 + t441;
t212 = t325 * t230;
t209 = -t260 * t459 - t297 * t357;
t208 = t259 * t459 + t297 * t355;
t207 = t378 * t300 + (t302 * t385 + t304 * t381) * t377;
t206 = t378 * t299 + (t301 * t385 + t303 * t381) * t377;
t205 = t398 + t248;
t204 = (-rSges(5,3) + t388) * t355 + t393 + t400;
t186 = -t248 * t459 - t357 * t293;
t179 = -t294 * t459 + t438;
t177 = t179 * t378;
t176 = t343 * t194;
t174 = t327 * t193;
t173 = t259 * t357 - t260 * t355;
t172 = t378 * t441 + t386 * t409;
t171 = t378 * t260 + t382 * t409 + t311;
t169 = -t248 * t355 + t222;
t163 = (t259 * t382 + t260 * t386) * t377 + t436;
t158 = t398 - t448;
t157 = -t202 - t269 + t393 + t464;
t156 = t203 * t343 - t239 * t327;
t155 = -t202 * t343 + t239 * t325;
t152 = -t230 * t327 + t176;
t151 = -t193 * t343 + t212;
t150 = t357 * t437 + t443 * t459;
t149 = t185 + t446;
t148 = t254 * t357 + t256 * t333 + t258 * t334;
t147 = t253 * t357 + t255 * t333 + t257 * t334;
t146 = t254 * t355 + t256 * t331 + t258 * t332;
t145 = t253 * t355 + t255 * t331 + t257 * t332;
t144 = t398 + t421 + t194;
t143 = -t326 * t370 + (-pkin(5) * t379 + t388) * t355 + (-rSges(7,3) + t387) * t325 + t393 + t399;
t136 = (-t247 + t442) * t378 + t386 * t405;
t135 = t378 * t248 + t382 * t405 + t444;
t133 = t202 * t327 - t203 * t325;
t131 = -t194 * t325 + t174;
t127 = t357 * t445 + t448 * t459;
t125 = t355 * t443 + t222 + t224;
t117 = (t247 * t382 + t248 * t386) * t377 + t406;
t112 = t355 * t448 + t451;
t109 = t357 * t424 + t426 * t459;
t108 = t126 + t446;
t103 = (-t202 + t422) * t378 + t386 * t396;
t102 = t378 * t203 + t382 * t396 + t423;
t89 = t343 * t184 - t327 * t492 + t176;
t88 = t325 * t223 - t343 * t450 + t212;
t87 = t357 * t425 + t427 * t459;
t85 = t355 * t426 + t224 + t451;
t84 = (t202 * t382 + t203 * t386) * t377 + t395;
t83 = t177 + (-t159 * t386 + t160 * t382) * t377;
t82 = t159 * t355 + t160 * t357 - t179 * t459;
t81 = t327 * t183 - t325 * t449 + t174;
t78 = t167 * t378 + (-t147 * t386 + t148 * t382) * t377;
t77 = t166 * t378 + (-t145 * t386 + t146 * t382) * t377;
t76 = t357 * t407 + t408 * t459;
t75 = t86 + t446;
t73 = (t422 - t450) * t378 + t386 * t394;
t72 = t378 * t449 + t382 * t394 + t423;
t70 = t147 * t355 + t148 * t357 - t167 * t459;
t69 = t145 * t355 + t146 * t357 - t166 * t459;
t68 = t355 * t427 + t428;
t57 = t355 * t408 + t224 + t428;
t56 = (t382 * t450 + t386 * t449) * t377 + t395;
t1 = [t420 + m(7) * (t143 ^ 2 + t144 ^ 2) + m(6) * (t157 ^ 2 + t158 ^ 2) + m(5) * (t204 ^ 2 + t205 ^ 2) + m(4) * (t215 ^ 2 + t216 ^ 2) + m(3) * (t288 ^ 2 + t289 ^ 2) + m(2) * (t363 ^ 2 + t364 ^ 2) + Icges(2,3) + (-t290 - t294) * t459 + t438 + t439 - t485; t177 + t128 + t168 + t252 + t132 + m(3) * (t264 * t289 + t265 * t288) + m(7) * (t143 * t73 + t144 * t72) + m(6) * (t102 * t158 + t103 * t157) + m(5) * (t135 * t205 + t136 * t204) + m(4) * (t171 * t216 + t172 * t215) + ((-t153 / 0.2e1 - t104 / 0.2e1 - t206 / 0.2e1 - t118 / 0.2e1 - t164 / 0.2e1 - t225 / 0.2e1 - t413 - t414) * t386 + (t154 / 0.2e1 + t105 / 0.2e1 + t207 / 0.2e1 + t119 / 0.2e1 + t165 / 0.2e1 + t226 / 0.2e1 + t412 + t415) * t382) * t377; (t83 + t252 + t486) * t378 + m(7) * (t56 ^ 2 + t72 ^ 2 + t73 ^ 2) + m(6) * (t102 ^ 2 + t103 ^ 2 + t84 ^ 2) + m(5) * (t117 ^ 2 + t135 ^ 2 + t136 ^ 2) + m(4) * (t163 ^ 2 + t171 ^ 2 + t172 ^ 2) + m(3) * (t231 ^ 2 + t264 ^ 2 + t265 ^ 2) + ((-t77 + (-t301 * t355 + t303 * t356 - t377 * t466) * t458 - t489) * t386 + (t78 + ((-t302 * t357 + t304 * t358 + (t300 * t382 - t466) * t377) * t382 + (t300 * t458 + t301 * t357 + t302 * t355 - t303 * t358 - t304 * t356) * t386) * t377 + t488) * t382 + ((-t206 - t225) * t386 + (t207 + t226) * t382) * t378) * t377; m(7) * (t143 * t75 + t144 * t76) + m(6) * (t108 * t157 + t109 * t158) + m(5) * (t149 * t204 + t150 * t205) + m(4) * (t208 * t215 + t209 * t216) + (-t179 + t429) * t459 + t412 * t357 + t413 * t355 + t390; m(7) * (t56 * t57 + t72 * t76 + t73 * t75) + m(6) * (t102 * t109 + t103 * t108 + t84 * t85) + m(5) * (t117 * t125 + t135 * t150 + t136 * t149) + m(4) * (t163 * t173 + t171 * t209 + t172 * t208) + (-t385 * t83 / 0.2e1 + t69 * t477 + t70 * t478) * t377 + t389 + t77 * t481 + t78 * t480 + t82 * t479; t355 * t69 + t357 * t70 + (-t82 - t487) * t459 + m(7) * (t57 ^ 2 + t75 ^ 2 + t76 ^ 2) + m(6) * (t108 ^ 2 + t109 ^ 2 + t85 ^ 2) + m(5) * (t125 ^ 2 + t149 ^ 2 + t150 ^ 2) + m(4) * (t173 ^ 2 + t208 ^ 2 + t209 ^ 2) + t397; m(6) * (t126 * t157 + t127 * t158) + m(5) * (t185 * t204 + t186 * t205) + m(7) * (t143 * t86 + t144 * t87) + t429 * t459 + t390; m(7) * (t56 * t68 + t72 * t87 + t73 * t86) + m(6) * (t102 * t127 + t103 * t126 + t112 * t84) + m(5) * (t117 * t169 + t135 * t186 + t136 * t185) + t389; m(7) * (t57 * t68 + t75 * t86 + t76 * t87) + m(6) * (t108 * t126 + t109 * t127 + t112 * t85) + m(5) * (t125 * t169 + t149 * t185 + t150 * t186) + t391; m(7) * (t68 ^ 2 + t86 ^ 2 + t87 ^ 2) + m(6) * (t112 ^ 2 + t126 ^ 2 + t127 ^ 2) + m(5) * (t169 ^ 2 + t185 ^ 2 + t186 ^ 2) + t391; t130 + t415 * t327 + t414 * t325 + m(7) * (t143 * t88 + t144 * t89) + m(6) * (t155 * t157 + t156 * t158) + t403; t50 * t479 + t39 * t483 + t55 * t482 + t38 * t484 + (t25 * t477 + t26 * t478) * t377 + m(7) * (t56 * t81 + t72 * t89 + t73 * t88) + m(6) * (t102 * t156 + t103 * t155 + t133 * t84) + t401; m(7) * (t57 * t81 + t75 * t88 + t76 * t89) + m(6) * (t108 * t155 + t109 * t156 + t133 * t85) + t392; m(7) * (t68 * t81 + t86 * t88 + t87 * t89) + m(6) * (t112 * t133 + t126 * t155 + t127 * t156) + t392; t325 * t25 + t327 * t26 + t343 * t50 + m(7) * (t81 ^ 2 + t88 ^ 2 + t89 ^ 2) + m(6) * (t133 ^ 2 + t155 ^ 2 + t156 ^ 2) + t434; m(7) * (t143 * t151 + t144 * t152) + t403; m(7) * (t131 * t56 + t151 * t73 + t152 * t72) + t401; m(7) * (t131 * t57 + t151 * t75 + t152 * t76) + t402; m(7) * (t131 * t68 + t151 * t86 + t152 * t87) + t402; m(7) * (t131 * t81 + t151 * t88 + t152 * t89) + t434; m(7) * (t131 ^ 2 + t151 ^ 2 + t152 ^ 2) + t434;];
%% Postprocessing: Reshape Output
% From vec2symmat_6_matlab.m
res = [t1(1) t1(2) t1(4) t1(7) t1(11) t1(16); t1(2) t1(3) t1(5) t1(8) t1(12) t1(17); t1(4) t1(5) t1(6) t1(9) t1(13) t1(18); t1(7) t1(8) t1(9) t1(10) t1(14) t1(19); t1(11) t1(12) t1(13) t1(14) t1(15) t1(20); t1(16) t1(17) t1(18) t1(19) t1(20) t1(21);];
Mq  = res;
