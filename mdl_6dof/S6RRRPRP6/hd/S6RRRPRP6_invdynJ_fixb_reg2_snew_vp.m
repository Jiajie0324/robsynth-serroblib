% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRPRP6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% qJDD [6x1]
%   Generalized joint accelerations
% g [3x1]
%   gravitation vector in mdh base frame [m/s^2]
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,theta4]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 08:11
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRPRP6_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRP6_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRP6_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRP6_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRP6_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRP6_invdynJ_fixb_reg2_snew_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 08:08:17
% EndTime: 2019-05-07 08:08:49
% DurationCPUTime: 14.91s
% Computational Cost: add. (115177->652), mult. (255161->930), div. (0->0), fcn. (207158->12), ass. (0->436)
t357 = cos(pkin(6));
t349 = qJD(1) * t357 + qJD(2);
t359 = sin(qJ(3));
t362 = cos(qJ(3));
t355 = sin(pkin(6));
t360 = sin(qJ(2));
t440 = qJD(1) * t360;
t417 = t355 * t440;
t326 = t349 * t362 - t359 * t417;
t327 = t349 * t359 + t362 * t417;
t354 = sin(pkin(11));
t356 = cos(pkin(11));
t305 = t354 * t326 + t356 * t327;
t363 = cos(qJ(2));
t439 = qJD(1) * t363;
t416 = t355 * t439;
t344 = -qJD(3) + t416;
t358 = sin(qJ(5));
t361 = cos(qJ(5));
t280 = t305 * t358 + t361 * t344;
t282 = t305 * t361 - t344 * t358;
t236 = t282 * t280;
t430 = qJDD(1) * t355;
t334 = qJD(2) * t416 + t360 * t430;
t406 = qJDD(1) * t357 + qJDD(2);
t382 = -t362 * t334 - t359 * t406;
t293 = t326 * qJD(3) - t382;
t408 = t334 * t359 - t362 * t406;
t394 = -qJD(3) * t327 - t408;
t410 = t293 * t354 - t356 * t394;
t249 = qJDD(5) + t410;
t518 = -t236 + t249;
t526 = pkin(5) * t518;
t253 = t356 * t293 + t354 * t394;
t429 = qJDD(1) * t363;
t390 = qJD(2) * t440 - t429;
t384 = t390 * t355;
t377 = qJDD(3) + t384;
t206 = -t280 * qJD(5) + t361 * t253 + t358 * t377;
t303 = -t356 * t326 + t327 * t354;
t300 = qJD(5) + t303;
t250 = t300 * t280;
t186 = t250 + t206;
t525 = qJ(6) * t186;
t473 = t518 * t358;
t472 = t518 * t361;
t279 = t282 ^ 2;
t299 = t300 ^ 2;
t232 = -t279 - t299;
t278 = t280 ^ 2;
t411 = t253 * t358 - t361 * t377;
t205 = -qJD(5) * t282 - t411;
t241 = pkin(5) * t300 - qJ(6) * t282;
t438 = qJD(4) * t303;
t297 = -0.2e1 * t438;
t491 = t357 * g(3);
t493 = t334 * pkin(9);
t403 = -t491 - t493;
t504 = sin(qJ(1));
t505 = cos(qJ(1));
t388 = g(1) * t504 - g(2) * t505;
t380 = qJDD(1) * pkin(1) + t388;
t364 = qJD(1) ^ 2;
t451 = t355 * t364;
t372 = pkin(8) * t451 + t380;
t383 = (qJD(2) + t349) * t440 - t429;
t515 = -pkin(9) * t349 * t439 + pkin(2) * t383 - t372;
t366 = t355 * t515 + t403;
t389 = g(1) * t505 + g(2) * t504;
t330 = -t364 * pkin(1) + pkin(8) * t430 - t389;
t404 = -pkin(2) * t363 - pkin(9) * t360;
t441 = qJD(1) * t355;
t333 = t404 * t441;
t453 = t355 * t360;
t350 = g(3) * t453;
t371 = t357 * t372;
t370 = t360 * t371 - t350;
t399 = t406 * pkin(9);
t368 = t399 + t370;
t514 = t349 ^ 2;
t492 = t514 * pkin(2);
t367 = -t492 + (t333 * t441 + t330) * t363 + t368;
t213 = t359 * t366 + t362 * t367;
t308 = -pkin(3) * t344 - qJ(4) * t327;
t324 = t326 ^ 2;
t189 = -t324 * pkin(3) + qJ(4) * t394 + t344 * t308 + t213;
t314 = t326 * t344;
t270 = t314 + t293;
t460 = t326 * t327;
t373 = t377 + t460;
t365 = pkin(3) * t373 - qJ(4) * t270 - t359 * t367 + t362 * t366;
t443 = t356 * t189 + t354 * t365;
t121 = t297 + t443;
t257 = pkin(4) * t303 - pkin(10) * t305;
t329 = t344 ^ 2;
t100 = -pkin(4) * t329 + pkin(10) * t377 - t303 * t257 + t121;
t409 = t330 * t360 - t363 * t371;
t263 = -t406 * pkin(2) - t514 * pkin(9) + (g(3) * t363 + t333 * t440) * t355 + t409;
t200 = -t394 * pkin(3) - t324 * qJ(4) + t308 * t327 + qJDD(4) + t263;
t461 = t305 * t344;
t226 = t410 - t461;
t289 = t303 * t344;
t229 = t289 + t253;
t137 = pkin(4) * t226 - pkin(10) * t229 + t200;
t87 = t361 * t100 + t358 * t137;
t391 = t205 * qJ(6) - 0.2e1 * qJD(6) * t280 - t241 * t300 + t87;
t524 = -t391 + (t232 + t278) * pkin(5);
t351 = t355 ^ 2;
t455 = t351 * t363;
t462 = t305 * t303;
t374 = t377 - t462;
t522 = t354 * t374;
t521 = t356 * t374;
t520 = t359 * t373;
t519 = t362 * t373;
t517 = -t250 + t206;
t452 = t355 * t363;
t295 = g(3) * t452 + t409;
t445 = t363 * t330;
t296 = t370 + t445;
t516 = t360 * t295 + t363 * t296;
t183 = (qJD(5) - t300) * t282 + t411;
t266 = (qJD(3) + t344) * t327 + t408;
t301 = t303 ^ 2;
t302 = t305 ^ 2;
t325 = t327 ^ 2;
t131 = -t183 * t361 + t186 * t358;
t208 = -t278 - t279;
t103 = t131 * t354 - t208 * t356;
t104 = t131 * t356 + t208 * t354;
t72 = t103 * t362 + t104 * t359;
t513 = pkin(2) * t72;
t218 = -t299 - t278;
t150 = t218 * t361 - t473;
t182 = (qJD(5) + t300) * t282 + t411;
t109 = t150 * t354 - t182 * t356;
t110 = t150 * t356 + t182 * t354;
t79 = t109 * t362 + t110 * t359;
t512 = pkin(2) * t79;
t194 = t236 + t249;
t474 = t194 * t361;
t155 = -t232 * t358 - t474;
t113 = t155 * t354 - t356 * t517;
t114 = t155 * t356 + t354 * t517;
t83 = t113 * t362 + t114 * t359;
t511 = pkin(2) * t83;
t413 = t189 * t354 - t356 * t365;
t437 = qJD(4) * t305;
t120 = t413 + 0.2e1 * t437;
t88 = -t120 * t356 + t121 * t354;
t510 = pkin(3) * t88;
t435 = qJD(6) * t282;
t274 = -0.2e1 * t435;
t86 = t100 * t358 - t361 * t137;
t387 = -t525 - t86 + t526;
t61 = t274 + t387;
t509 = pkin(5) * t61;
t508 = pkin(9) * t72;
t507 = pkin(9) * t79;
t506 = pkin(9) * t83;
t227 = t410 + t461;
t230 = -t289 + t253;
t171 = -t227 * t354 - t230 * t356;
t503 = pkin(3) * t171;
t254 = -t329 - t301;
t198 = t254 * t354 + t521;
t502 = pkin(3) * t198;
t149 = t218 * t358 + t472;
t501 = pkin(4) * t149;
t475 = t194 * t358;
t154 = t232 * t361 - t475;
t500 = pkin(4) * t154;
t499 = pkin(4) * t354;
t498 = pkin(5) * t186;
t497 = pkin(8) * t355;
t129 = -t183 * t358 - t186 * t361;
t496 = pkin(10) * t129;
t495 = pkin(10) * t149;
t494 = pkin(10) * t154;
t73 = -t103 * t359 + t104 * t362;
t490 = pkin(1) * (-t355 * t72 + (-t129 * t363 + t360 * t73) * t357) + (t129 * t360 + t363 * t73) * t497;
t80 = -t109 * t359 + t110 * t362;
t489 = pkin(1) * (-t355 * t79 + (-t149 * t363 + t360 * t80) * t357) + (t149 * t360 + t363 * t80) * t497;
t84 = -t113 * t359 + t114 * t362;
t488 = pkin(1) * (-t355 * t83 + (-t154 * t363 + t360 * t84) * t357) + (t154 * t360 + t363 * t84) * t497;
t487 = t358 * t61;
t395 = -t377 * pkin(4) - t329 * pkin(10) + t413;
t407 = (0.2e1 * qJD(4) + t257) * t305;
t99 = t407 + t395;
t486 = t358 * t99;
t485 = t359 * t88;
t484 = t361 * t61;
t483 = t361 * t99;
t482 = t362 * t88;
t481 = -pkin(2) * t129 + pkin(9) * t73;
t480 = -pkin(2) * t149 + pkin(9) * t80;
t479 = -pkin(2) * t154 + pkin(9) * t84;
t478 = qJ(4) * t103;
t477 = qJ(4) * t109;
t476 = qJ(4) * t113;
t471 = t200 * t354;
t470 = t200 * t356;
t246 = -t377 - t462;
t469 = t246 * t354;
t468 = t246 * t356;
t467 = t263 * t362;
t284 = -t377 + t460;
t466 = t284 * t359;
t465 = t284 * t362;
t464 = t300 * t358;
t463 = t300 * t361;
t459 = t344 * t354;
t458 = t344 * t356;
t457 = t344 * t359;
t456 = t344 * t362;
t454 = t351 * t364;
t450 = t359 * t263;
t447 = t360 * t364;
t343 = t447 * t455;
t332 = t343 + t406;
t448 = t360 * t332;
t331 = -t343 + t406;
t444 = t363 * t331;
t433 = -qJD(3) + t344;
t428 = t354 * t236;
t427 = t356 * t236;
t352 = t360 ^ 2;
t426 = t352 * t454;
t353 = t363 ^ 2;
t425 = t353 * t454;
t424 = t363 * t462;
t423 = t363 * t460;
t422 = pkin(3) * t103 - pkin(4) * t208 + pkin(10) * t131;
t421 = -pkin(3) * t109 + pkin(4) * t182 - pkin(10) * t150;
t420 = -pkin(3) * t113 + pkin(4) * t517 - pkin(10) * t155;
t338 = t349 * t416;
t419 = t338 + t334;
t418 = -pkin(4) * t356 - pkin(3);
t415 = -pkin(3) * t149 + qJ(4) * t110;
t414 = -pkin(3) * t154 + qJ(4) * t114;
t49 = t358 * t86 + t361 * t87;
t89 = t120 * t354 + t356 * t121;
t212 = t359 * (t357 * t360 * t380 - t350 + t399 + t445 - t492) - t362 * t403 + (t359 * (pkin(8) * t357 * t447 + t333 * t439) - t515 * t362) * t355;
t159 = t212 * t359 + t362 * t213;
t272 = -t302 - t329;
t210 = t272 * t356 + t469;
t405 = pkin(3) * t210 - t443;
t48 = t358 * t87 - t361 * t86;
t402 = t212 * t362 - t213 * t359;
t401 = qJD(1) * t349 - t357 * t364;
t400 = -pkin(1) + t404;
t398 = -t421 - t483;
t397 = -t420 + t486;
t393 = t49 + t422;
t39 = t354 * t49 - t356 * t99;
t392 = pkin(3) * t39 - pkin(4) * t99 + pkin(10) * t49;
t56 = -qJ(6) * t183 + (-t208 - t278) * pkin(5) + t391;
t275 = 0.2e1 * t435;
t57 = t275 - t387 + t525;
t386 = t358 * t57 + t361 * t56 + t422;
t138 = -pkin(5) * t517 - qJ(6) * t194;
t376 = -t205 * pkin(5) - t278 * qJ(6) + t241 * t282 + qJDD(6) + t395;
t92 = t407 + t376;
t81 = -qJ(6) * t232 + t92;
t385 = t138 * t361 + t358 * t81 - t420;
t298 = -0.2e1 * t437;
t68 = -pkin(5) * t182 + qJ(6) * t218 - t257 * t305 + t298 - t376;
t381 = -qJ(6) * t473 + t361 * t68 - t421;
t379 = t387 + t526;
t62 = -pkin(5) * t278 + t391;
t35 = t361 * t62 - t487;
t28 = t35 * t354 - t356 * t92;
t45 = -pkin(5) * t92 + qJ(6) * t62;
t375 = pkin(3) * t28 - pkin(4) * t92 + pkin(10) * t35 - qJ(6) * t487 + t361 * t45;
t315 = t355 * t372 + t491;
t337 = t349 * t417;
t336 = (t352 - t353) * t454;
t335 = -t425 - t514;
t321 = -t426 - t514;
t316 = t377 * t452;
t313 = -t337 - t384;
t312 = t337 - t384;
t311 = -t338 + t334;
t310 = -t325 + t329;
t309 = t324 - t329;
t307 = -t325 - t329;
t306 = t325 - t324;
t294 = -t329 - t324;
t288 = -t302 + t329;
t287 = t301 - t329;
t283 = t324 + t325;
t277 = (-t326 * t359 + t327 * t362) * t344;
t271 = t326 * t433 + t382;
t269 = -t314 + t293;
t267 = t327 * t433 - t408;
t265 = t293 * t359 - t327 * t456;
t264 = t326 * t457 + t362 * t394;
t260 = t309 * t359 - t465;
t259 = t310 * t362 + t520;
t258 = t302 - t301;
t256 = -t307 * t359 + t465;
t255 = t307 * t362 + t466;
t244 = -t279 + t299;
t243 = t278 - t299;
t240 = t294 * t362 - t520;
t239 = t294 * t359 + t519;
t238 = (t303 * t356 - t305 * t354) * t344;
t237 = (t303 * t354 + t305 * t356) * t344;
t234 = t279 - t278;
t233 = -t301 - t302;
t225 = -t266 * t362 + t270 * t359;
t223 = t267 * t359 + t269 * t362;
t222 = t253 * t356 + t305 * t459;
t221 = t253 * t354 - t305 * t458;
t220 = -t303 * t458 + t354 * t410;
t219 = -t303 * t459 - t356 * t410;
t217 = t287 * t356 + t469;
t216 = -t288 * t354 + t521;
t215 = t287 * t354 - t468;
t214 = t288 * t356 + t522;
t211 = -t272 * t354 + t468;
t199 = t254 * t356 - t522;
t197 = (-t280 * t361 + t282 * t358) * t300;
t196 = (-t280 * t358 - t282 * t361) * t300;
t192 = t237 * t362 + t238 * t359;
t191 = pkin(2) * t271 + pkin(9) * t256 + t450;
t190 = pkin(2) * t267 + pkin(9) * t240 - t467;
t179 = t206 * t361 - t282 * t464;
t178 = t206 * t358 + t282 * t463;
t177 = -t205 * t358 + t280 * t463;
t176 = -t361 * t205 - t280 * t464;
t173 = -t227 * t356 + t230 * t354;
t172 = -t226 * t356 - t229 * t354;
t170 = -t226 * t354 + t229 * t356;
t169 = t197 * t356 + t249 * t354;
t168 = t197 * t354 - t249 * t356;
t167 = t221 * t362 + t222 * t359;
t166 = t219 * t362 + t220 * t359;
t165 = t243 * t361 - t475;
t164 = -t244 * t358 + t472;
t163 = t243 * t358 + t474;
t162 = t244 * t361 + t473;
t161 = t215 * t362 + t217 * t359;
t160 = t214 * t362 + t216 * t359;
t157 = -t210 * t359 + t211 * t362;
t156 = t210 * t362 + t211 * t359;
t151 = -qJ(4) * t210 + t470;
t146 = -qJ(4) * t198 + t471;
t145 = t179 * t356 + t428;
t144 = t177 * t356 - t428;
t143 = t179 * t354 - t427;
t142 = t177 * t354 + t427;
t141 = -t198 * t359 + t199 * t362;
t140 = t198 * t362 + t199 * t359;
t139 = -pkin(2) * t263 + pkin(9) * t159;
t134 = -pkin(3) * t229 + qJ(4) * t211 + t471;
t133 = pkin(2) * t283 + pkin(9) * t225 + t159;
t132 = -pkin(3) * t226 + qJ(4) * t199 - t470;
t130 = -t182 * t361 - t358 * t517;
t128 = -t182 * t358 + t361 * t517;
t125 = t165 * t356 - t183 * t354;
t124 = t164 * t356 + t186 * t354;
t123 = t165 * t354 + t183 * t356;
t122 = t164 * t354 - t186 * t356;
t119 = -t171 * t359 + t173 * t362;
t118 = t171 * t362 + t173 * t359;
t117 = t170 * t362 + t172 * t359;
t115 = t168 * t362 + t169 * t359;
t106 = t130 * t356 + t234 * t354;
t105 = t130 * t354 - t234 * t356;
t101 = qJ(4) * t104;
t97 = t143 * t362 + t145 * t359;
t96 = t142 * t362 + t144 * t359;
t95 = -pkin(4) * t129 + t498;
t94 = t483 - t494;
t93 = t486 - t495;
t91 = t123 * t362 + t125 * t359;
t90 = t122 * t362 + t124 * t359;
t77 = t105 * t362 + t106 * t359;
t76 = -pkin(2) * t229 + pkin(9) * t157 + t134 * t362 + t151 * t359;
t75 = -pkin(3) * t200 + qJ(4) * t89;
t74 = t357 * t115 + (t360 * (-t168 * t359 + t169 * t362) - t363 * t196) * t355;
t70 = -pkin(2) * t226 + pkin(9) * t141 + t132 * t362 + t146 * t359;
t69 = -qJ(4) * t171 - t88;
t67 = t87 - t500;
t66 = t86 - t501;
t65 = -pkin(3) * t233 + qJ(4) * t173 + t89;
t60 = t357 * t97 + (t360 * (-t143 * t359 + t145 * t362) - t363 * t178) * t355;
t59 = t357 * t96 + (t360 * (-t142 * t359 + t144 * t362) + t363 * t176) * t355;
t55 = -t138 * t358 + t361 * t81 - t494;
t54 = -qJ(6) * t472 - t358 * t68 - t495;
t53 = -t500 - t524;
t52 = t275 - t379 - t501;
t51 = t362 * t89 - t485;
t50 = t359 * t89 + t482;
t47 = t357 * t91 + (t360 * (-t123 * t359 + t125 * t362) - t363 * t163) * t355;
t46 = t357 * t90 + (t360 * (-t122 * t359 + t124 * t362) - t363 * t162) * t355;
t42 = -t48 - t496;
t41 = t357 * t77 + (t360 * (-t105 * t359 + t106 * t362) - t363 * t128) * t355;
t40 = t354 * t99 + t356 * t49;
t38 = -t354 * t67 + t356 * t94 - t476;
t37 = -t354 * t66 + t356 * t93 - t477;
t34 = t358 * t62 + t484;
t33 = t354 * t94 + t356 * t67 + t414;
t32 = t354 * t93 + t356 * t66 + t415;
t31 = -pkin(2) * t233 + pkin(9) * t119 + t359 * t69 + t362 * t65;
t30 = t129 * t499 + t356 * t42 - t478;
t29 = t35 * t356 + t354 * t92;
t27 = -t358 * t56 + t361 * t57 - t496;
t26 = t129 * t418 + t354 * t42 + t101;
t25 = -t354 * t53 + t356 * t55 - t476;
t24 = -t354 * t52 + t356 * t54 - t477;
t23 = -pkin(2) * t200 + pkin(9) * t51 - qJ(4) * t485 + t362 * t75;
t22 = -pkin(4) * t34 - t509;
t21 = t354 * t55 + t356 * t53 + t414;
t20 = t354 * t54 + t356 * t52 + t415;
t19 = t27 * t356 - t354 * t95 - t478;
t18 = -t359 * t39 + t362 * t40;
t17 = t359 * t40 + t362 * t39;
t16 = -pkin(3) * t129 + t27 * t354 + t356 * t95 + t101;
t15 = -pkin(10) * t34 - qJ(6) * t484 - t358 * t45;
t14 = -qJ(4) * t39 + (-pkin(10) * t356 + t499) * t48;
t13 = t33 * t362 + t359 * t38 + t479;
t12 = t32 * t362 + t359 * t37 + t480;
t11 = -t28 * t359 + t29 * t362;
t10 = t28 * t362 + t29 * t359;
t9 = qJ(4) * t40 + (-pkin(10) * t354 + t418) * t48;
t8 = t26 * t362 + t30 * t359 + t481;
t7 = t21 * t362 + t25 * t359 + t479;
t6 = t20 * t362 + t24 * t359 + t480;
t5 = t16 * t362 + t19 * t359 + t481;
t4 = -qJ(4) * t28 + t15 * t356 - t22 * t354;
t3 = -pkin(3) * t34 + qJ(4) * t29 + t15 * t354 + t22 * t356;
t2 = -pkin(2) * t48 + pkin(9) * t18 + t14 * t359 + t362 * t9;
t1 = -pkin(2) * t34 + pkin(9) * t11 + t3 * t362 + t359 * t4;
t36 = [0, 0, 0, 0, 0, qJDD(1), t388, t389, 0, 0, (t334 * t355 + t401 * t455) * t360, t357 * t336 + (t360 * t313 + t363 * t419) * t355, t357 * t311 + (t448 + t363 * (-t426 + t514)) * t355, (-t360 * t401 - t390) * t455, t357 * t312 + (t360 * (t425 - t514) + t444) * t355, t357 * t406, (-t295 + pkin(1) * (t332 * t363 + t335 * t360)) * t357 + (t363 * t315 + pkin(1) * t313 + pkin(8) * (t335 * t363 - t448)) * t355, -t315 * t453 - t357 * t296 + pkin(1) * (-t355 * t419 + (t321 * t363 - t331 * t360) * t357) + (-t321 * t360 - t444) * t497, pkin(1) * ((-t311 * t363 + t312 * t360) * t357 - (-t352 - t353) * t351 * t451) + (t311 * t360 + t312 * t363) * t497 + t516 * t355, pkin(1) * (t315 * t355 + (-t295 * t363 + t296 * t360) * t357) + t516 * t497, t357 * t265 + (t360 * (t293 * t362 + t327 * t457) + t423) * t355, t357 * t223 + (t360 * (t267 * t362 - t269 * t359) - t363 * t306) * t355, t357 * t259 + (t360 * (-t310 * t359 + t519) - t363 * t270) * t355, t357 * t264 + (t360 * (t326 * t456 - t359 * t394) - t423) * t355, t357 * t260 + (t360 * (t309 * t362 + t466) + t363 * t266) * t355, t357 * t277 - t316 + (-t326 * t362 - t327 * t359) * t344 * t453, (-pkin(9) * t239 + t450) * t453 + (t359 * (t333 * t416 + t368 + t445) - t362 * (-pkin(9) * t338 - t315 - t493) + (-t355 * t362 * t383 - t359 * t514 - t239) * pkin(2)) * t452 + t357 * t190 + pkin(1) * (-t355 * t239 + (t240 * t360 + t267 * t363) * t357) + (t240 * t363 - t267 * t360) * t497, (t191 + pkin(1) * (t256 * t360 + t271 * t363)) * t357 + (t360 * (-pkin(9) * t255 + t467) + t363 * (-pkin(2) * t255 + t213) - pkin(1) * t255 + pkin(8) * (t256 * t363 - t271 * t360)) * t355, (t133 + pkin(1) * (t225 * t360 + t283 * t363)) * t357 + (t360 * t402 + pkin(8) * (t225 * t363 - t283 * t360) + t400 * (-t266 * t359 - t270 * t362)) * t355, (t139 + pkin(1) * (t159 * t360 - t263 * t363)) * t357 + (pkin(8) * (t159 * t363 + t360 * t263) - t400 * t402) * t355, t357 * t167 + (t360 * (-t221 * t359 + t222 * t362) - t424) * t355, t357 * t117 + (t360 * (-t170 * t359 + t172 * t362) - t363 * t258) * t355, t357 * t160 + (t360 * (-t214 * t359 + t216 * t362) - t363 * t230) * t355, t357 * t166 + (t360 * (-t219 * t359 + t220 * t362) + t424) * t355, t357 * t161 + (t360 * (-t215 * t359 + t217 * t362) + t363 * t227) * t355, (-t237 * t359 + t238 * t362) * t453 - t316 + t357 * t192, (t70 + pkin(1) * (t141 * t360 - t226 * t363)) * t357 + (t360 * (-pkin(9) * t140 - t132 * t359 + t146 * t362) + t363 * (-pkin(2) * t140 + t120 - t502) - pkin(1) * t140 + pkin(8) * (t141 * t363 + t226 * t360)) * t355, (t76 + pkin(1) * (t157 * t360 - t229 * t363)) * t357 + (t360 * (-pkin(9) * t156 - t134 * t359 + t151 * t362) + t363 * (-pkin(2) * t156 + t297 - t405) - pkin(1) * t156 + pkin(8) * (t157 * t363 + t229 * t360)) * t355, (t31 + pkin(1) * (t119 * t360 - t233 * t363)) * t357 + (t360 * (-pkin(9) * t118 - t359 * t65 + t362 * t69) + t363 * (-pkin(2) * t118 - t503) - pkin(1) * t118 + pkin(8) * (t119 * t363 + t233 * t360)) * t355, (t23 + pkin(1) * (-t200 * t363 + t360 * t51)) * t357 + (t360 * (-pkin(9) * t50 - qJ(4) * t482 - t359 * t75) + t363 * (-pkin(2) * t50 - t510) - pkin(1) * t50 + pkin(8) * (t200 * t360 + t363 * t51)) * t355, t60, t41, t46, t59, t47, t74, t357 * t12 + (t360 * (-t32 * t359 + t362 * t37 - t507) + t363 * (-t398 - t512)) * t355 + t489, t357 * t13 + (t360 * (-t33 * t359 + t362 * t38 - t506) + t363 * (-t397 - t511)) * t355 + t488, t357 * t8 + (t360 * (-t26 * t359 + t30 * t362 - t508) + t363 * (-t393 - t513)) * t355 + t490, (t2 + pkin(1) * (t18 * t360 - t363 * t48)) * t357 + (t360 * (-pkin(9) * t17 + t14 * t362 - t359 * t9) + t363 * (-pkin(2) * t17 - t392) - pkin(1) * t17 + pkin(8) * (t18 * t363 + t360 * t48)) * t355, t60, t41, t46, t59, t47, t74, t357 * t6 + (t360 * (-t20 * t359 + t24 * t362 - t507) + t363 * (-t381 - t512)) * t355 + t489, t357 * t7 + (t360 * (-t21 * t359 + t25 * t362 - t506) + t363 * (-t385 - t511)) * t355 + t488, t357 * t5 + (t360 * (-t16 * t359 + t19 * t362 - t508) + t363 * (-t386 - t513)) * t355 + t490, (t1 + pkin(1) * (t11 * t360 - t34 * t363)) * t357 + (t360 * (-pkin(9) * t10 - t3 * t359 + t362 * t4) + t363 * (-pkin(2) * t10 - t375) - pkin(1) * t10 + pkin(8) * (t11 * t363 + t34 * t360)) * t355; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t343, t336, t311, t343, t312, t406, -t295, -t296, 0, 0, t265, t223, t259, t264, t260, t277, t190, t191, t133, t139, t167, t117, t160, t166, t161, t192, t70, t76, t31, t23, t97, t77, t90, t96, t91, t115, t12, t13, t8, t2, t97, t77, t90, t96, t91, t115, t6, t7, t5, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t460, t306, t270, t460, -t266, t377, -t212, -t213, 0, 0, t462, t258, t230, -t462, -t227, t377, t298 - t413 + t502, t405 + 0.2e1 * t438, t503, t510, t178, t128, t162, -t176, t163, t196, t398, t397, t393, t392, t178, t128, t162, -t176, t163, t196, t381, t385, t386, t375; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t226, t229, t233, t200, 0, 0, 0, 0, 0, 0, t149, t154, t129, t48, 0, 0, 0, 0, 0, 0, t149, t154, t129, t34; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t236, t234, t186, -t236, -t183, t249, -t86, -t87, 0, 0, t236, t234, t186, -t236, -t183, t249, t274 + t379, t524, -t498, t509; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t182, t517, t208, t92;];
tauJ_reg  = t36;
