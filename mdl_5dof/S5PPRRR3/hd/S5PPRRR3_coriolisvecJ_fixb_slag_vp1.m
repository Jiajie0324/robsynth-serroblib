% Calculate vector of centrifugal and Coriolis load on the joints for
% S5PPRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d3,d4,d5,theta1,theta2]';
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
% Datum: 2019-12-05 15:17
% Revision: 77da58f92bca3eff71542919beafa37024070d86 (2019-12-05)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc = S5PPRRR3_coriolisvecJ_fixb_slag_vp1(qJ, qJD, ...
  pkin, m, rSges, Icges)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1),zeros(6,1),zeros(6,3),zeros(6,6)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5PPRRR3_coriolisvecJ_fixb_slag_vp1: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5PPRRR3_coriolisvecJ_fixb_slag_vp1: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5PPRRR3_coriolisvecJ_fixb_slag_vp1: pkin has to be [9x1] (double)');
assert(isreal(m) && all(size(m) == [6 1]), ...
  'S5PPRRR3_coriolisvecJ_fixb_slag_vp1: m has to be [6x1] (double)'); 
assert(isreal(rSges) && all(size(rSges) == [6,3]), ...
  'S5PPRRR3_coriolisvecJ_fixb_slag_vp1: rSges has to be [6x3] (double)');
assert(isreal(Icges) && all(size(Icges) == [6 6]), ...
  'S5PPRRR3_coriolisvecJ_fixb_slag_vp1: Icges has to be [6x6] (double)'); 

%% Symbolic Calculation
% From coriolisvec_joint_fixb_par1_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-05 15:16:23
% EndTime: 2019-12-05 15:16:50
% DurationCPUTime: 18.73s
% Computational Cost: add. (24059->1007), mult. (48755->1484), div. (0->0), fcn. (53542->10), ass. (0->390)
t334 = qJD(4) + qJD(5);
t336 = sin(pkin(9));
t343 = cos(qJ(3));
t436 = t336 * t343;
t485 = t334 * t436;
t338 = cos(pkin(9));
t337 = sin(pkin(8));
t435 = t337 * t343;
t401 = t338 * t435;
t339 = cos(pkin(8));
t341 = sin(qJ(3));
t432 = t339 * t341;
t309 = t401 - t432;
t335 = qJ(4) + qJ(5);
t332 = sin(t335);
t333 = cos(t335);
t441 = t336 * t337;
t256 = -t309 * t332 + t333 * t441;
t257 = t309 * t333 + t332 * t441;
t430 = t343 * t339;
t431 = t341 * t337;
t308 = t338 * t431 + t430;
t125 = rSges(6,1) * t257 + rSges(6,2) * t256 + rSges(6,3) * t308;
t311 = t338 * t430 + t431;
t440 = t336 * t339;
t258 = -t311 * t332 + t333 * t440;
t259 = t311 * t333 + t332 * t440;
t310 = t338 * t432 - t435;
t126 = rSges(6,1) * t259 + rSges(6,2) * t258 + rSges(6,3) * t310;
t153 = rSges(6,1) * t256 - rSges(6,2) * t257;
t154 = rSges(6,1) * t258 - rSges(6,2) * t259;
t411 = qJD(3) * t336;
t323 = t337 * t411;
t278 = qJD(4) * t308 + t323;
t198 = qJD(5) * t308 + t278;
t324 = t339 * t411;
t279 = qJD(4) * t310 + t324;
t199 = qJD(5) * t310 + t279;
t409 = qJD(3) * t341;
t293 = qJD(3) * t401 - t339 * t409;
t295 = t311 * qJD(3);
t292 = t308 * qJD(3);
t384 = t334 * t441 - t292;
t442 = t333 * t334;
t157 = -t309 * t442 - t332 * t384;
t443 = t332 * t334;
t158 = -t309 * t443 + t333 * t384;
t92 = rSges(6,1) * t158 + rSges(6,2) * t157 + rSges(6,3) * t293;
t484 = t295 * t125 - t126 * t293 - t199 * t153 + t154 * t198 + t310 * t92;
t315 = (-Icges(4,5) * t341 - Icges(4,6) * t343) * t336;
t297 = qJD(3) * t315;
t340 = sin(qJ(4));
t342 = cos(qJ(4));
t437 = t336 * t342;
t268 = -t309 * t340 + t337 * t437;
t355 = t268 * qJD(4);
t460 = pkin(4) * t342;
t103 = pkin(4) * t355 + pkin(7) * t293 - t292 * t460;
t398 = t336 * t409;
t361 = t334 * t338 + t398;
t233 = t332 * t361 - t333 * t485;
t234 = -t332 * t485 - t333 * t361;
t408 = qJD(3) * t343;
t397 = t336 * t408;
t117 = rSges(6,1) * t234 + rSges(6,2) * t233 + rSges(6,3) * t397;
t439 = t336 * t340;
t403 = t337 * t439;
t127 = pkin(4) * t403 + pkin(7) * t308 + t309 * t460;
t358 = pkin(7) * t343 - t341 * t460;
t406 = qJD(4) * t343;
t433 = t338 * t342;
t177 = -qJD(4) * pkin(4) * t433 + (-pkin(4) * t340 * t406 + qJD(3) * t358) * t336;
t290 = -t332 * t436 - t333 * t338;
t291 = -t338 * t332 + t333 * t436;
t438 = t336 * t341;
t193 = rSges(6,1) * t291 + rSges(6,2) * t290 + rSges(6,3) * t438;
t217 = t334 * t293;
t410 = qJD(3) * t338;
t321 = qJD(4) * t438 - t410;
t286 = qJD(5) * t438 + t321;
t296 = qJD(3) * t485;
t228 = -t292 * pkin(3) + t293 * pkin(6);
t319 = (-pkin(3) * t341 + pkin(6) * t343) * t336;
t305 = qJD(3) * t319;
t422 = t228 * t410 + t305 * t323;
t434 = t338 * t340;
t216 = -pkin(4) * t434 + (pkin(7) * t341 + t343 * t460) * t336;
t446 = t216 * t293;
t23 = -t103 * t321 + t117 * t198 - t125 * t296 + t177 * t278 + t193 * t217 - t286 * t92 + (-t127 * t397 + t446) * qJD(4) + t422;
t426 = t125 + t127;
t458 = t103 + t92;
t246 = t309 * pkin(3) + t308 * pkin(6);
t320 = (pkin(3) * t343 + pkin(6) * t341) * t336;
t331 = qJD(2) * t337;
t399 = t246 * t410 + t320 * t323 + t331;
t53 = -t125 * t286 - t127 * t321 + t193 * t198 + t216 * t278 + t399;
t483 = -t23 * t426 - t458 * t53;
t482 = -t198 / 0.2e1;
t481 = t198 / 0.2e1;
t480 = -t199 / 0.2e1;
t479 = t199 / 0.2e1;
t478 = t217 / 0.2e1;
t218 = t334 * t295;
t477 = t218 / 0.2e1;
t476 = -t278 / 0.2e1;
t475 = t278 / 0.2e1;
t474 = -t279 / 0.2e1;
t473 = t279 / 0.2e1;
t472 = -t286 / 0.2e1;
t471 = t286 / 0.2e1;
t470 = t293 / 0.2e1;
t469 = t295 / 0.2e1;
t468 = t296 / 0.2e1;
t467 = t308 / 0.2e1;
t466 = t310 / 0.2e1;
t465 = -t321 / 0.2e1;
t464 = t321 / 0.2e1;
t294 = t310 * qJD(3);
t270 = -t311 * t340 + t339 * t437;
t354 = t270 * qJD(4);
t104 = pkin(4) * t354 + pkin(7) * t295 - t294 * t460;
t383 = t334 * t440 - t294;
t159 = -t311 * t442 - t332 * t383;
t160 = -t311 * t443 + t333 * t383;
t93 = rSges(6,1) * t160 + rSges(6,2) * t159 + rSges(6,3) * t295;
t457 = -t104 - t93;
t456 = Icges(4,4) * t309;
t455 = Icges(4,4) * t311;
t454 = Icges(4,4) * t341;
t453 = Icges(4,4) * t343;
t269 = t309 * t342 + t403;
t452 = Icges(5,4) * t269;
t402 = t339 * t439;
t271 = t311 * t342 + t402;
t451 = Icges(5,4) * t271;
t314 = t342 * t436 - t434;
t450 = Icges(5,4) * t314;
t449 = Icges(6,4) * t257;
t448 = Icges(6,4) * t259;
t447 = Icges(6,4) * t291;
t229 = -t294 * pkin(3) + t295 * pkin(6);
t445 = t229 * t338;
t444 = t305 * t339;
t188 = -qJD(4) * t271 + t294 * t340;
t189 = -t294 * t342 + t354;
t101 = rSges(5,1) * t189 + rSges(5,2) * t188 + rSges(5,3) * t295;
t429 = -t101 - t229;
t428 = t308 * t117 + t293 * t193;
t427 = t117 + t177;
t128 = pkin(4) * t402 + pkin(7) * t310 + t311 * t460;
t425 = -t126 - t128;
t138 = rSges(5,1) * t271 + rSges(5,2) * t270 + rSges(5,3) * t310;
t248 = t311 * pkin(3) + t310 * pkin(6);
t424 = -t138 - t248;
t423 = t193 + t216;
t421 = t338 * t228 + t305 * t441;
t200 = -Icges(4,2) * t308 + Icges(4,6) * t441 + t456;
t420 = -Icges(4,1) * t308 - t200 - t456;
t201 = -Icges(4,2) * t310 + Icges(4,6) * t440 + t455;
t419 = -Icges(4,1) * t310 - t201 - t455;
t303 = Icges(4,4) * t308;
t202 = Icges(4,1) * t309 + Icges(4,5) * t441 - t303;
t418 = Icges(4,2) * t309 - t202 + t303;
t304 = Icges(4,4) * t310;
t203 = Icges(4,1) * t311 + Icges(4,5) * t440 - t304;
t417 = Icges(4,2) * t311 - t203 + t304;
t245 = -t308 * pkin(3) + t309 * pkin(6);
t416 = t245 * t410 + t319 * t323;
t415 = t338 * t246 + t320 * t441;
t287 = -Icges(4,6) * t338 + (-Icges(4,2) * t341 + t453) * t336;
t317 = (-Icges(4,1) * t341 - t453) * t336;
t414 = t287 - t317;
t288 = -Icges(4,5) * t338 + (Icges(4,1) * t343 - t454) * t336;
t316 = (-Icges(4,2) * t343 - t454) * t336;
t413 = t288 + t316;
t412 = qJD(2) * t339;
t407 = qJD(4) * t295;
t405 = -t229 + t457;
t400 = -t248 + t425;
t394 = t438 / 0.2e1;
t393 = qJD(4) * t470;
t392 = t407 / 0.2e1;
t214 = rSges(6,1) * t290 - rSges(6,2) * t291;
t389 = t286 * t154 - t199 * t214;
t388 = -t153 * t286 + t198 * t214;
t387 = t397 / 0.2e1;
t385 = t126 * t397 - t193 * t295 + t93 * t438;
t382 = -rSges(5,1) * t342 + rSges(5,2) * t340;
t381 = -rSges(6,1) * t333 + rSges(6,2) * t332;
t186 = -qJD(4) * t269 + t292 * t340;
t187 = -t292 * t342 + t355;
t100 = rSges(5,1) * t187 + rSges(5,2) * t186 + rSges(5,3) * t293;
t137 = rSges(5,1) * t269 + rSges(5,2) * t268 + rSges(5,3) * t308;
t272 = -qJD(4) * t314 + t340 * t398;
t313 = -t340 * t436 - t433;
t273 = qJD(4) * t313 - t342 * t398;
t152 = rSges(5,1) * t273 + rSges(5,2) * t272 + rSges(5,3) * t397;
t215 = rSges(5,1) * t314 + rSges(5,2) * t313 + rSges(5,3) * t438;
t50 = -t100 * t321 + t152 * t278 + (-t137 * t397 + t215 * t293) * qJD(4) + t422;
t76 = -t137 * t321 + t215 * t278 + t399;
t380 = t76 * t100 + t50 * t137;
t131 = Icges(5,5) * t269 + Icges(5,6) * t268 + Icges(5,3) * t308;
t133 = Icges(5,2) * t268 + Icges(5,6) * t308 + t452;
t264 = Icges(5,4) * t268;
t135 = Icges(5,1) * t269 + Icges(5,5) * t308 + t264;
t59 = t131 * t308 + t133 * t268 + t135 * t269;
t132 = Icges(5,5) * t271 + Icges(5,6) * t270 + Icges(5,3) * t310;
t134 = Icges(5,2) * t270 + Icges(5,6) * t310 + t451;
t265 = Icges(5,4) * t270;
t136 = Icges(5,1) * t271 + Icges(5,5) * t310 + t265;
t60 = t132 * t308 + t134 * t268 + t136 * t269;
t379 = t293 * t59 + t295 * t60;
t61 = t131 * t310 + t133 * t270 + t135 * t271;
t62 = t132 * t310 + t134 * t270 + t136 * t271;
t378 = t293 * t61 + t295 * t62;
t70 = t131 * t438 + t133 * t313 + t135 * t314;
t71 = t132 * t438 + t134 * t313 + t136 * t314;
t377 = t293 * t70 + t295 * t71;
t376 = -Icges(5,1) * t342 + Icges(5,4) * t340;
t375 = -Icges(6,1) * t333 + Icges(6,4) * t332;
t374 = -Icges(5,4) * t342 + Icges(5,2) * t340;
t373 = -Icges(6,4) * t333 + Icges(6,2) * t332;
t372 = -Icges(5,5) * t342 + Icges(5,6) * t340;
t371 = -Icges(6,5) * t333 + Icges(6,6) * t332;
t370 = t127 * t295 - t128 * t293;
t204 = rSges(4,1) * t309 - rSges(4,2) * t308 + rSges(4,3) * t441;
t289 = -rSges(4,3) * t338 + (rSges(4,1) * t343 - rSges(4,2) * t341) * t336;
t129 = t331 + (t204 * t338 + t289 * t441) * qJD(3);
t205 = rSges(4,1) * t311 - rSges(4,2) * t310 + rSges(4,3) * t440;
t130 = -t412 + (-t205 * t338 - t289 * t440) * qJD(3);
t369 = t129 * t337 - t130 * t339;
t368 = t137 * t295 - t138 * t293;
t226 = -rSges(4,1) * t292 - rSges(4,2) * t293;
t360 = (-rSges(4,1) * t341 - rSges(4,2) * t343) * t336;
t302 = qJD(3) * t360;
t141 = (t226 * t338 + t302 * t441) * qJD(3);
t227 = -rSges(4,1) * t294 - rSges(4,2) * t295;
t142 = (-t227 * t338 - t302 * t440) * qJD(3);
t367 = t141 * t337 - t142 * t339;
t366 = t204 * t339 - t205 * t337;
t365 = t226 * t339 - t227 * t337;
t364 = qJD(4) * t387;
t363 = t228 * t324 - t229 * t323;
t247 = -t310 * pkin(3) + t311 * pkin(6);
t362 = t245 * t324 - t247 * t323;
t359 = t246 * t324 - t248 * t323 + qJD(1);
t357 = (Icges(6,5) * t256 - Icges(6,6) * t257) * t198 + (Icges(6,5) * t258 - Icges(6,6) * t259) * t199 + (Icges(6,5) * t290 - Icges(6,6) * t291) * t286;
t356 = (Icges(5,5) * t268 - Icges(5,6) * t269) * t278 + (Icges(5,5) * t270 - Icges(5,6) * t271) * t279 + (Icges(5,5) * t313 - Icges(5,6) * t314) * t321;
t353 = -t247 * t410 - t319 * t324;
t352 = (-t248 * t338 - t320 * t440) * qJD(3) - t412;
t119 = Icges(6,5) * t257 + Icges(6,6) * t256 + Icges(6,3) * t308;
t121 = Icges(6,2) * t256 + Icges(6,6) * t308 + t449;
t254 = Icges(6,4) * t256;
t123 = Icges(6,1) * t257 + Icges(6,5) * t308 + t254;
t55 = t119 * t308 + t121 * t256 + t123 * t257;
t120 = Icges(6,5) * t259 + Icges(6,6) * t258 + Icges(6,3) * t310;
t122 = Icges(6,2) * t258 + Icges(6,6) * t310 + t448;
t255 = Icges(6,4) * t258;
t124 = Icges(6,1) * t259 + Icges(6,5) * t310 + t255;
t56 = t120 * t308 + t122 * t256 + t124 * t257;
t190 = Icges(6,5) * t291 + Icges(6,6) * t290 + Icges(6,3) * t438;
t191 = Icges(6,2) * t290 + Icges(6,6) * t438 + t447;
t285 = Icges(6,4) * t290;
t192 = Icges(6,1) * t291 + Icges(6,5) * t438 + t285;
t74 = t190 * t308 + t191 * t256 + t192 * t257;
t19 = t198 * t55 + t199 * t56 + t286 * t74;
t57 = t119 * t310 + t121 * t258 + t123 * t259;
t58 = t120 * t310 + t122 * t258 + t124 * t259;
t75 = t190 * t310 + t191 * t258 + t192 * t259;
t20 = t198 * t57 + t199 * t58 + t286 * t75;
t86 = Icges(6,5) * t158 + Icges(6,6) * t157 + Icges(6,3) * t293;
t88 = Icges(6,4) * t158 + Icges(6,2) * t157 + Icges(6,6) * t293;
t90 = Icges(6,1) * t158 + Icges(6,4) * t157 + Icges(6,5) * t293;
t25 = t119 * t293 + t121 * t157 + t123 * t158 + t256 * t88 + t257 * t90 + t308 * t86;
t87 = Icges(6,5) * t160 + Icges(6,6) * t159 + Icges(6,3) * t295;
t89 = Icges(6,4) * t160 + Icges(6,2) * t159 + Icges(6,6) * t295;
t91 = Icges(6,1) * t160 + Icges(6,4) * t159 + Icges(6,5) * t295;
t26 = t120 * t293 + t122 * t157 + t124 * t158 + t256 * t89 + t257 * t91 + t308 * t87;
t27 = t119 * t295 + t121 * t159 + t123 * t160 + t258 * t88 + t259 * t90 + t310 * t86;
t28 = t120 * t295 + t122 * t159 + t124 * t160 + t258 * t89 + t259 * t91 + t310 * t87;
t114 = Icges(6,5) * t234 + Icges(6,6) * t233 + Icges(6,3) * t397;
t115 = Icges(6,4) * t234 + Icges(6,2) * t233 + Icges(6,6) * t397;
t116 = Icges(6,1) * t234 + Icges(6,4) * t233 + Icges(6,5) * t397;
t43 = t114 * t308 + t115 * t256 + t116 * t257 + t157 * t191 + t158 * t192 + t190 * t293;
t3 = t198 * t25 + t199 * t26 + t217 * t55 + t218 * t56 + t286 * t43 + t296 * t74;
t63 = t119 * t438 + t121 * t290 + t123 * t291;
t64 = t120 * t438 + t122 * t290 + t124 * t291;
t80 = t190 * t438 + t191 * t290 + t192 * t291;
t30 = t198 * t63 + t199 * t64 + t286 * t80;
t34 = t121 * t233 + t123 * t234 + t290 * t88 + t291 * t90 + (t119 * t408 + t341 * t86) * t336;
t349 = (-Icges(6,2) * t259 + t124 + t255) * t199 + (-Icges(6,2) * t257 + t123 + t254) * t198 + (-Icges(6,2) * t291 + t192 + t285) * t286;
t35 = t122 * t233 + t124 * t234 + t290 * t89 + t291 * t91 + (t120 * t408 + t341 * t87) * t336;
t350 = (Icges(6,1) * t258 - t122 - t448) * t199 + (Icges(6,1) * t256 - t121 - t449) * t198 + (Icges(6,1) * t290 - t191 - t447) * t286;
t44 = t114 * t310 + t115 * t258 + t116 * t259 + t159 * t191 + t160 * t192 + t190 * t295;
t4 = t198 * t27 + t199 * t28 + t217 * t57 + t218 * t58 + t286 * t44 + t296 * t75;
t47 = t115 * t290 + t116 * t291 + t191 * t233 + t192 * t234 + (t114 * t341 + t190 * t408) * t336;
t8 = t198 * t34 + t199 * t35 + t217 * t63 + t218 * t64 + t286 * t47 + t296 * t80;
t351 = t3 * t467 + t4 * t466 + (t293 * t63 + t295 * t64 + t308 * t34 + t310 * t35 + (t341 * t47 + t408 * t80) * t336) * t471 + (t256 * t349 + t257 * t350 + t308 * t357) * t482 + (t258 * t349 + t259 * t350 + t310 * t357) * t480 + (t290 * t349 + t291 * t350 + t357 * t438) * t472 + t19 * t470 + t20 * t469 + (t308 * t55 + t310 * t56 + t438 * t74) * t478 + (t308 * t57 + t310 * t58 + t438 * t75) * t477 + t30 * t387 + (t308 * t63 + t310 * t64 + t438 * t80) * t468 + (t25 * t308 + t26 * t310 + t293 * t55 + t295 * t56 + (t341 * t43 + t408 * t74) * t336) * t481 + (t27 * t308 + t28 * t310 + t293 * t57 + t295 * t58 + (t341 * t44 + t408 * t75) * t336) * t479 + t8 * t394;
t212 = Icges(5,2) * t313 + Icges(5,6) * t438 + t450;
t348 = (Icges(5,1) * t270 - t134 - t451) * t279 + (Icges(5,1) * t268 - t133 - t452) * t278 + (Icges(5,1) * t313 - t212 - t450) * t321;
t306 = Icges(5,4) * t313;
t213 = Icges(5,1) * t314 + Icges(5,5) * t438 + t306;
t347 = (-Icges(5,2) * t271 + t136 + t265) * t279 + (-Icges(5,2) * t269 + t135 + t264) * t278 + (-Icges(5,2) * t314 + t213 + t306) * t321;
t346 = (Icges(6,3) * t311 + t122 * t332 - t124 * t333 + t310 * t371) * t199 + (Icges(6,3) * t309 + t121 * t332 - t123 * t333 + t308 * t371) * t198 + (t191 * t332 - t192 * t333 + (Icges(6,3) * t343 + t341 * t371) * t336) * t286;
t345 = (Icges(5,3) * t311 + t134 * t340 - t136 * t342 + t310 * t372) * t279 + (Icges(5,3) * t309 + t133 * t340 - t135 * t342 + t308 * t372) * t278 + (t212 * t340 - t213 * t342 + (Icges(5,3) * t343 + t341 * t372) * t336) * t321;
t307 = t313 * pkin(4);
t299 = qJD(3) * t317;
t298 = qJD(3) * t316;
t277 = (rSges(5,3) * t343 + t341 * t382) * t336;
t276 = (Icges(5,5) * t343 + t341 * t376) * t336;
t275 = (Icges(5,6) * t343 + t341 * t374) * t336;
t267 = t270 * pkin(4);
t266 = t268 * pkin(4);
t263 = (rSges(6,3) * t343 + t341 * t381) * t336;
t262 = (Icges(6,5) * t343 + t341 * t375) * t336;
t261 = (Icges(6,6) * t343 + t341 * t373) * t336;
t253 = t358 * t336;
t252 = rSges(5,1) * t313 - rSges(5,2) * t314;
t244 = -rSges(4,1) * t310 - rSges(4,2) * t311;
t243 = -rSges(4,1) * t308 - rSges(4,2) * t309;
t238 = -Icges(4,5) * t310 - Icges(4,6) * t311;
t237 = -Icges(4,5) * t308 - Icges(4,6) * t309;
t236 = t311 * t334;
t235 = t309 * t334;
t225 = -Icges(4,1) * t294 - Icges(4,4) * t295;
t224 = -Icges(4,1) * t292 - Icges(4,4) * t293;
t223 = -Icges(4,4) * t294 - Icges(4,2) * t295;
t222 = -Icges(4,4) * t292 - Icges(4,2) * t293;
t221 = -Icges(4,5) * t294 - Icges(4,6) * t295;
t220 = -Icges(4,5) * t292 - Icges(4,6) * t293;
t219 = t246 * t440;
t211 = Icges(5,5) * t314 + Icges(5,6) * t313 + Icges(5,3) * t438;
t195 = t228 * t440;
t185 = rSges(5,3) * t311 + t310 * t382;
t184 = rSges(5,3) * t309 + t308 * t382;
t183 = Icges(5,5) * t311 + t310 * t376;
t182 = Icges(5,5) * t309 + t308 * t376;
t181 = Icges(5,6) * t311 + t310 * t374;
t180 = Icges(5,6) * t309 + t308 * t374;
t176 = rSges(5,1) * t270 - rSges(5,2) * t271;
t175 = rSges(5,1) * t268 - rSges(5,2) * t269;
t168 = rSges(6,3) * t311 + t310 * t381;
t167 = rSges(6,3) * t309 + t308 * t381;
t166 = Icges(6,5) * t311 + t310 * t375;
t165 = Icges(6,5) * t309 + t308 * t375;
t164 = Icges(6,6) * t311 + t310 * t373;
t163 = Icges(6,6) * t309 + t308 * t373;
t156 = t308 * t193;
t145 = Icges(5,1) * t273 + Icges(5,4) * t272 + Icges(5,5) * t397;
t144 = Icges(5,4) * t273 + Icges(5,2) * t272 + Icges(5,6) * t397;
t143 = Icges(5,5) * t273 + Icges(5,6) * t272 + Icges(5,3) * t397;
t140 = pkin(7) * t311 - t310 * t460;
t139 = pkin(7) * t309 - t308 * t460;
t112 = t126 * t438;
t110 = t365 * t411;
t109 = t310 * t125;
t108 = t366 * t411 + qJD(1);
t99 = Icges(5,1) * t189 + Icges(5,4) * t188 + Icges(5,5) * t295;
t98 = Icges(5,1) * t187 + Icges(5,4) * t186 + Icges(5,5) * t293;
t97 = Icges(5,4) * t189 + Icges(5,2) * t188 + Icges(5,6) * t295;
t96 = Icges(5,4) * t187 + Icges(5,2) * t186 + Icges(5,6) * t293;
t95 = Icges(5,5) * t189 + Icges(5,6) * t188 + Icges(5,3) * t295;
t94 = Icges(5,5) * t187 + Icges(5,6) * t186 + Icges(5,3) * t293;
t83 = t211 * t438 + t212 * t313 + t213 * t314;
t79 = t211 * t310 + t212 * t270 + t213 * t271;
t78 = t211 * t308 + t212 * t268 + t213 * t269;
t77 = t138 * t321 - t215 * t279 + t352;
t65 = t137 * t279 - t138 * t278 + t359;
t54 = t126 * t286 + t128 * t321 - t193 * t199 - t216 * t279 + t352;
t52 = t144 * t313 + t145 * t314 + t212 * t272 + t213 * t273 + (t143 * t341 + t211 * t408) * t336;
t51 = -t215 * t407 + t101 * t321 - t152 * t279 + (-t445 + (t138 * t406 - t444) * t336) * qJD(3);
t49 = t143 * t310 + t144 * t270 + t145 * t271 + t188 * t212 + t189 * t213 + t211 * t295;
t48 = t143 * t308 + t144 * t268 + t145 * t269 + t186 * t212 + t187 * t213 + t211 * t293;
t46 = t125 * t199 - t126 * t198 + t127 * t279 - t128 * t278 + t359;
t45 = qJD(4) * t368 + t100 * t279 - t101 * t278 + t363;
t42 = t134 * t272 + t136 * t273 + t313 * t97 + t314 * t99 + (t132 * t408 + t341 * t95) * t336;
t41 = t133 * t272 + t135 * t273 + t313 * t96 + t314 * t98 + (t131 * t408 + t341 * t94) * t336;
t40 = t278 * t70 + t279 * t71 + t321 * t83;
t39 = t132 * t295 + t134 * t188 + t136 * t189 + t270 * t97 + t271 * t99 + t310 * t95;
t38 = t131 * t295 + t133 * t188 + t135 * t189 + t270 * t96 + t271 * t98 + t310 * t94;
t37 = t132 * t293 + t134 * t186 + t136 * t187 + t268 * t97 + t269 * t99 + t308 * t95;
t36 = t131 * t293 + t133 * t186 + t135 * t187 + t268 * t96 + t269 * t98 + t308 * t94;
t32 = t278 * t61 + t279 * t62 + t321 * t79;
t31 = t278 * t59 + t279 * t60 + t321 * t78;
t24 = -t216 * t407 + t104 * t321 - t117 * t199 + t126 * t296 - t177 * t279 - t193 * t218 + t286 * t93 + (-t445 + (t128 * t406 - t444) * t336) * qJD(3);
t16 = qJD(4) * t370 + t103 * t279 - t104 * t278 + t125 * t218 - t126 * t217 - t198 * t93 + t199 * t92 + t363;
t12 = t278 * t41 + t279 * t42 + t321 * t52 + (t397 * t83 + t377) * qJD(4);
t10 = t278 * t38 + t279 * t39 + t321 * t49 + (t397 * t79 + t378) * qJD(4);
t9 = t278 * t36 + t279 * t37 + t321 * t48 + (t397 * t78 + t379) * qJD(4);
t1 = [m(4) * t110 + m(5) * t45 + m(6) * t16; m(4) * t367 + m(5) * (t337 * t50 - t339 * t51) + m(6) * (t23 * t337 - t24 * t339); -((t339 * ((t238 * t440 + t310 * t417 + t311 * t419) * t440 + (t237 * t440 + t310 * t418 + t311 * t420) * t441 - (-t310 * t413 - t311 * t414 + t315 * t440) * t338) + t337 * ((t238 * t441 + t308 * t417 + t309 * t419) * t440 + (t237 * t441 + t308 * t418 + t309 * t420) * t441 - (-t308 * t413 - t309 * t414 + t315 * t441) * t338)) * qJD(3) ^ 2 + t40 * t406) * t336 / 0.2e1 + ((t164 * t290 + t166 * t291) * t199 + t64 * t236 + (t163 * t290 + t165 * t291) * t198 + t63 * t235 + (t261 * t290 + t262 * t291) * t286 + t80 * t485 + ((t119 * t198 + t120 * t199 + t190 * t286) * t343 + t346 * t341) * t336) * t472 + ((t120 * t311 + t164 * t258 + t166 * t259) * t199 + t58 * t236 + (t119 * t311 + t163 * t258 + t165 * t259) * t198 + t57 * t235 + (t190 * t311 + t258 * t261 + t259 * t262) * t286 + t75 * t485 + t346 * t310) * t480 + ((t120 * t309 + t164 * t256 + t166 * t257) * t199 + t56 * t236 + (t119 * t309 + t163 * t256 + t165 * t257) * t198 + t55 * t235 + (t190 * t309 + t256 * t261 + t257 * t262) * t286 + t74 * t485 + t346 * t308) * t482 - t485 * t30 / 0.2e1 + (-t53 * (-t125 * t485 - t139 * t321 - t167 * t286 + t193 * t235 + t198 * t263 + t253 * t278 + t416) - t54 * (t126 * t485 + t140 * t321 + t168 * t286 - t193 * t236 - t199 * t263 - t253 * t279 + t353) - t46 * (t125 * t236 - t126 * t235 + t139 * t279 - t140 * t278 + t167 * t199 - t168 * t198 + t362) - (t53 * (-t127 * t436 + t216 * t309) + t54 * (t128 * t436 - t216 * t311) + t46 * (t127 * t311 - t128 * t309)) * qJD(4) + t23 * t415 + t53 * t421 + t16 * t219 + t46 * t195 + (t24 * t400 + t405 * t54 - t483) * t338 + ((t24 * (-t320 - t423) + t54 * (-t305 - t427) + t16 * t426 + t46 * t458) * t339 + (t16 * t400 + t23 * t423 + t405 * t46 + t427 * t53) * t337) * t336) * m(6) + (-t76 * (-t184 * t321 + t277 * t278 + t416) - t77 * (t185 * t321 - t277 * t279 + t353) - t65 * (t184 * t279 - t185 * t278 + t362) - (t76 * (-t137 * t436 + t215 * t309) + t77 * (t138 * t436 - t215 * t311) + t65 * (t137 * t311 - t138 * t309)) * qJD(4) + t50 * t415 + t76 * t421 + t45 * t219 + t65 * t195 + (t424 * t51 + t429 * t77 + t380) * t338 + ((t51 * (-t215 - t320) + t77 * (-t152 - t305) + t45 * t137 + t65 * t100) * t339 + (t76 * t152 + t50 * t215 + t424 * t45 + t429 * t65) * t337) * t336) * m(5) + (-((t129 * t243 - t130 * t244) * t338 + (t108 * (t243 * t339 - t244 * t337) + t369 * t360) * t336) * qJD(3) + (t129 * t226 - t130 * t227 + t141 * t204 - t142 * t205) * t338 + (t108 * t365 + t110 * t366 + t289 * t367 + t302 * t369) * t336) * m(4) + (t10 + t4) * t440 / 0.2e1 + (t9 + t3) * t441 / 0.2e1 - (t309 * t31 + t311 * t32) * qJD(4) / 0.2e1 - (t12 + t8) * t338 / 0.2e1 + (-t338 * (-t287 * t293 - t288 * t292 + t297 * t441 - t298 * t308 + t299 * t309) + (t337 * (-t200 * t293 - t202 * t292 + t220 * t441 - t222 * t308 + t224 * t309) + t339 * (-t201 * t293 - t203 * t292 + t221 * t441 - t223 * t308 + t225 * t309)) * t336) * t323 - (-(-t297 * t338 + (-t298 * t341 + t299 * t343 + (-t287 * t343 - t288 * t341) * qJD(3)) * t336) * t338 + (t337 * (-t220 * t338 + (-t222 * t341 + t224 * t343 + (-t200 * t343 - t202 * t341) * qJD(3)) * t336) + t339 * (-t221 * t338 + (-t223 * t341 + t225 * t343 + (-t201 * t343 - t203 * t341) * qJD(3)) * t336)) * t336) * t410 + (-t338 * t79 + (t337 * t61 + t339 * t62) * t336) * t392 + (-t338 * t78 + (t337 * t59 + t339 * t60) * t336) * t393 + (-t338 * t47 + (t337 * t34 + t339 * t35) * t336) * t471 + (-t338 * t49 + (t337 * t38 + t339 * t39) * t336) * t473 + ((t132 * t311 + t181 * t270 + t183 * t271) * t279 + (t131 * t311 + t180 * t270 + t182 * t271) * t278 + (t211 * t311 + t270 * t275 + t271 * t276) * t321 + (t309 * t61 + t311 * t62 + t436 * t79) * qJD(4) + t345 * t310) * t474 + (-t338 * t48 + (t337 * t36 + t339 * t37) * t336) * t475 + ((t132 * t309 + t181 * t268 + t183 * t269) * t279 + (t131 * t309 + t180 * t268 + t182 * t269) * t278 + (t211 * t309 + t268 * t275 + t269 * t276) * t321 + (t309 * t59 + t311 * t60 + t436 * t78) * qJD(4) + t345 * t308) * t476 + (-t338 * t75 + (t337 * t57 + t339 * t58) * t336) * t477 + (-t338 * t74 + (t337 * t55 + t339 * t56) * t336) * t478 + (-t338 * t44 + (t27 * t337 + t28 * t339) * t336) * t479 + (-t338 * t43 + (t25 * t337 + t26 * t339) * t336) * t481 + (-t338 * (-t287 * t295 - t288 * t294 + t297 * t440 - t298 * t310 + t299 * t311) + (t337 * (-t200 * t295 - t202 * t294 + t220 * t440 - t222 * t310 + t224 * t311) + t339 * (-t201 * t295 - t203 * t294 + t221 * t440 - t223 * t310 + t225 * t311)) * t336) * t324 + (-t338 * t52 + (t337 * t41 + t339 * t42) * t336) * t464 + ((t181 * t313 + t183 * t314) * t279 + (t180 * t313 + t182 * t314) * t278 + (t275 * t313 + t276 * t314) * t321 + (t309 * t70 + t311 * t71) * qJD(4) + ((qJD(4) * t83 + t131 * t278 + t132 * t279 + t211 * t321) * t343 + t345 * t341) * t336) * t465 + (-t338 * t80 + (t337 * t63 + t339 * t64) * t336) * t468 + (t338 ^ 2 * t297 + (((t337 * t420 + t339 * t419) * t343 + (t337 * t418 + t339 * t417) * t341) * t336 + (-t237 * t337 - t238 * t339 + t341 * t413 + t343 * t414) * t338) * t411) * t410 / 0.2e1 - t235 * t19 / 0.2e1 - t236 * t20 / 0.2e1 + (-t338 * t83 + (t337 * t70 + t339 * t71) * t336) * t364; t351 + (t308 * t36 + t310 * t37 + (t341 * t48 + t408 * t78) * t336 + t379) * t475 + (t270 * t347 + t271 * t348 + t310 * t356) * t474 + (t268 * t347 + t269 * t348 + t308 * t356) * t476 + (t313 * t347 + t314 * t348 + t356 * t438) * t465 + t10 * t466 + t9 * t467 + t12 * t394 + (t308 * t59 + t310 * t60 + t438 * t78) * t393 + (t308 * t61 + t310 * t62 + t438 * t79) * t392 + (t308 * t70 + t310 * t71 + t438 * t83) * t364 + t40 * t387 + t31 * t470 + t32 * t469 + (t308 * t38 + t310 * t39 + (t341 * t49 + t408 * t79) * t336 + t378) * t473 + (t308 * t41 + t310 * t42 + (t341 * t52 + t408 * t83) * t336 + t377) * t464 + (-t53 * (-t266 * t321 + t278 * t307 + t388) - t54 * (t267 * t321 - t279 * t307 + t389) + t23 * t156 + t53 * (t428 + t446) + t24 * t112 + t54 * (-t216 * t295 + t385) + t16 * t109 + (t16 * t127 - t24 * t423 - t54 * t427) * t310 + (t16 * t425 + t53 * t177 + t23 * t216) * t308 + ((t54 * t128 - t426 * t53) * t408 + (t54 * t104 + t24 * t128 + t483) * t341) * t336 + (t103 * t310 - t266 * t279 + t267 * t278 + t308 * t457 + t370 + t484) * t46) * m(6) + (-t76 * (-t175 * t321 + t252 * t278) - t77 * (t176 * t321 - t252 * t279) + t45 * (t137 * t310 - t138 * t308) + (t308 * t76 - t310 * t77) * t152 + (t293 * t76 - t295 * t77 + t308 * t50 - t310 * t51) * t215 + ((-t137 * t76 + t138 * t77) * t408 + (t101 * t77 + t51 * t138 - t380) * t341) * t336 + (t100 * t310 - t101 * t308 - t175 * t279 + t176 * t278 + t368) * t65) * m(5); t351 + (t23 * (-t125 * t438 + t156) + t24 * (-t193 * t310 + t112) + t16 * (-t126 * t308 + t109) + (-t117 * t310 + t385 - t389) * t54 + (-t388 + (-t125 * t408 - t341 * t92) * t336 + t428) * t53 + (-t308 * t93 + t484) * t46) * m(6);];
tauc = t1(:);
