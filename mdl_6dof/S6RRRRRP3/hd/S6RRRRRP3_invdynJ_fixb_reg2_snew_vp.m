% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRRRP3
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
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-08 04:45
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRRRP3_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP3_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP3_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP3_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP3_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP3_invdynJ_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-08 04:42:53
% EndTime: 2019-05-08 04:43:28
% DurationCPUTime: 12.23s
% Computational Cost: add. (78413->564), mult. (156679->747), div. (0->0), fcn. (116534->10), ass. (0->372)
t346 = sin(qJ(3));
t347 = sin(qJ(2));
t350 = cos(qJ(3));
t351 = cos(qJ(2));
t322 = (t346 * t351 + t347 * t350) * qJD(1);
t341 = qJD(2) + qJD(3);
t345 = sin(qJ(4));
t349 = cos(qJ(4));
t306 = t322 * t349 + t341 * t345;
t344 = sin(qJ(5));
t348 = cos(qJ(5));
t389 = -t345 * t322 + t341 * t349;
t277 = t306 * t344 - t348 * t389;
t279 = t348 * t306 + t344 * t389;
t234 = t279 * t277;
t336 = t347 * qJDD(1);
t412 = qJD(1) * qJD(2);
t397 = t351 * t412;
t327 = t336 + t397;
t337 = t351 * qJDD(1);
t398 = t347 * t412;
t328 = t337 - t398;
t388 = t346 * t327 - t350 * t328;
t368 = t322 * qJD(3) + t388;
t286 = qJDD(4) + t368;
t285 = qJDD(5) + t286;
t476 = t234 - t285;
t483 = pkin(5) * t476;
t283 = t389 * t306;
t475 = t283 + t286;
t482 = t345 * t475;
t481 = t349 * t475;
t275 = t277 ^ 2;
t418 = qJD(1) * t347;
t320 = -t350 * t351 * qJD(1) + t346 * t418;
t317 = qJD(4) + t320;
t315 = qJD(5) + t317;
t313 = t315 ^ 2;
t219 = -t313 - t275;
t438 = t476 * t348;
t166 = t219 * t344 - t438;
t165 = pkin(4) * t166;
t374 = t327 * t350 + t328 * t346;
t288 = -qJD(3) * t320 + t374;
t411 = qJDD(2) + qJDD(3);
t248 = qJD(4) * t389 + t349 * t288 + t345 * t411;
t364 = -t345 * t288 + t349 * t411;
t358 = -t306 * qJD(4) + t364;
t187 = -t277 * qJD(5) + t348 * t248 + t344 * t358;
t257 = t315 * t277;
t160 = t257 + t187;
t479 = qJ(6) * t160;
t312 = t341 * t320;
t264 = t288 - t312;
t343 = t351 ^ 2;
t353 = qJD(1) ^ 2;
t463 = sin(qJ(1));
t464 = cos(qJ(1));
t381 = g(1) * t463 - t464 * g(2);
t366 = qJDD(1) * pkin(1) + t381;
t373 = qJD(2) * pkin(2) - pkin(8) * t418;
t290 = t328 * pkin(2) + (pkin(8) * t343 + pkin(7)) * t353 - t373 * t418 + t366;
t192 = -t264 * pkin(9) + (t322 * t341 + t368) * pkin(3) - t290;
t367 = g(1) * t464 + g(2) * t463;
t445 = qJDD(1) * pkin(7);
t356 = -t353 * pkin(1) - t367 + t445;
t309 = -t347 * g(3) + t351 * t356;
t339 = t343 * t353;
t282 = -pkin(2) * t339 + t328 * pkin(8) - qJD(2) * t373 + t309;
t423 = t350 * t282;
t355 = t347 * t356;
t425 = t347 * t353;
t454 = t327 * pkin(8);
t471 = qJDD(2) * pkin(2) - t355 + (pkin(2) * t425 + pkin(8) * t412 - g(3)) * t351 - t454;
t237 = t346 * t471 + t423;
t299 = pkin(3) * t320 - pkin(9) * t322;
t470 = t341 ^ 2;
t203 = -pkin(3) * t470 + pkin(9) * t411 - t320 * t299 + t237;
t139 = -t349 * t192 + t345 * t203;
t294 = t317 * t389;
t230 = -t294 + t248;
t123 = pkin(4) * t475 - pkin(10) * t230 - t139;
t140 = t345 * t192 + t349 * t203;
t291 = pkin(4) * t317 - pkin(10) * t306;
t382 = t389 ^ 2;
t130 = -pkin(4) * t382 + pkin(10) * t358 - t317 * t291 + t140;
t79 = -t348 * t123 + t130 * t344;
t361 = 0.2e1 * qJD(6) * t279 + t479 + t483 + t79;
t359 = -t361 - t483;
t480 = t165 + t359;
t301 = t322 * t320;
t472 = -t301 + t411;
t478 = t346 * t472;
t477 = t350 * t472;
t439 = t476 * t344;
t102 = t345 * t139 + t349 * t140;
t473 = -t257 + t187;
t229 = t294 + t248;
t391 = t248 * t344 - t348 * t358;
t157 = (qJD(5) - t315) * t279 + t391;
t226 = t306 * (qJD(4) - t317) - t364;
t276 = t279 ^ 2;
t304 = t306 ^ 2;
t316 = t317 ^ 2;
t318 = t320 ^ 2;
t319 = t322 ^ 2;
t80 = t344 * t123 + t348 * t130;
t41 = t344 * t80 - t348 * t79;
t469 = pkin(4) * t41;
t197 = -t275 - t276;
t113 = -t157 * t344 - t160 * t348;
t115 = -t157 * t348 + t160 * t344;
t76 = -t113 * t345 + t115 * t349;
t69 = -t197 * t350 + t346 * t76;
t468 = pkin(8) * t69;
t167 = t219 * t348 + t439;
t120 = -t166 * t345 + t167 * t349;
t156 = (qJD(5) + t315) * t279 + t391;
t88 = t120 * t346 - t156 * t350;
t467 = pkin(8) * t88;
t243 = -t276 - t313;
t209 = t234 + t285;
t441 = t209 * t344;
t172 = t243 * t348 - t441;
t440 = t209 * t348;
t173 = -t243 * t344 - t440;
t127 = -t172 * t345 + t173 * t349;
t95 = t127 * t346 - t350 * t473;
t466 = pkin(8) * t95;
t74 = t113 * t349 + t115 * t345;
t465 = pkin(9) * t74;
t119 = t166 * t349 + t167 * t345;
t462 = pkin(3) * t119;
t126 = t172 * t349 + t173 * t345;
t461 = pkin(3) * t126;
t460 = pkin(3) * t346;
t459 = pkin(9) * t119;
t458 = pkin(9) * t126;
t457 = pkin(10) * t113;
t456 = pkin(10) * t166;
t455 = pkin(10) * t172;
t70 = t197 * t346 + t350 * t76;
t453 = pkin(7) * (-t347 * t69 + t351 * t70) - pkin(1) * t74;
t452 = t344 * t361;
t451 = t345 * t41;
t450 = t348 * t361;
t449 = t349 * t41;
t89 = t120 * t350 + t156 * t346;
t448 = pkin(7) * (-t347 * t88 + t351 * t89) - pkin(1) * t119;
t96 = t127 * t350 + t346 * t473;
t447 = pkin(7) * (-t347 * t95 + t351 * t96) - pkin(1) * t126;
t446 = -pkin(3) * t197 + pkin(9) * t76;
t236 = t282 * t346 - t350 * t471;
t202 = -t411 * pkin(3) - t470 * pkin(9) + t299 * t322 + t236;
t142 = -t358 * pkin(4) - t382 * pkin(10) + t291 * t306 + t202;
t444 = t142 * t344;
t443 = t142 * t348;
t188 = -t236 * t350 + t237 * t346;
t442 = t188 * t347;
t239 = -t283 + t286;
t437 = t239 * t345;
t436 = t239 * t349;
t435 = t290 * t346;
t434 = t290 * t350;
t297 = t301 + t411;
t433 = t297 * t346;
t432 = t297 * t350;
t431 = t315 * t344;
t430 = t315 * t348;
t429 = t341 * t346;
t428 = t341 * t350;
t198 = t345 * t202;
t427 = t345 * t306;
t333 = t351 * t425;
t330 = qJDD(2) + t333;
t426 = t347 * t330;
t199 = t349 * t202;
t424 = t349 * t306;
t422 = t351 * (qJDD(2) - t333);
t421 = -pkin(3) * t156 + pkin(9) * t120;
t420 = -pkin(3) * t473 + pkin(9) * t127;
t419 = -pkin(3) * t202 + pkin(9) * t102;
t417 = qJD(6) * t277;
t415 = qJD(3) + t341;
t410 = t346 * t234;
t409 = t350 * t234;
t171 = pkin(4) * t172;
t408 = t171 - t80;
t272 = -t304 - t316;
t207 = -t272 * t345 - t436;
t407 = -pkin(3) * t229 + pkin(9) * t207 + t198;
t259 = -t316 - t382;
t196 = t259 * t349 - t482;
t227 = (-qJD(4) - t317) * t306 + t364;
t406 = pkin(3) * t227 + pkin(9) * t196 - t199;
t405 = -pkin(3) * t350 - pkin(2);
t404 = -pkin(2) * t74 + pkin(8) * t70;
t268 = -0.2e1 * t417;
t186 = -qJD(5) * t279 - t391;
t250 = pkin(5) * t315 - qJ(6) * t279;
t378 = t275 * pkin(5) - t186 * qJ(6) + t315 * t250 - t80;
t64 = t268 - t378;
t27 = t344 * t64 - t450;
t58 = pkin(5) * t361;
t403 = pkin(4) * t27 - t58;
t98 = -t186 * pkin(5) - t275 * qJ(6) + t250 * t279 + qJDD(6) + t142;
t39 = -pkin(5) * t98 + qJ(6) * t64;
t10 = -pkin(10) * t27 + qJ(6) * t450 - t344 * t39;
t28 = t348 * t64 + t452;
t15 = -t27 * t345 + t28 * t349;
t6 = -pkin(4) * t98 + pkin(10) * t28 + qJ(6) * t452 + t348 * t39;
t401 = -pkin(3) * t98 + pkin(9) * t15 + t345 * t10 + t349 * t6;
t400 = -pkin(2) * t119 + pkin(8) * t89;
t399 = -pkin(2) * t126 + pkin(8) * t96;
t110 = pkin(4) * t113;
t53 = -pkin(3) * t74 - t110;
t396 = -pkin(4) * t197 + pkin(10) * t115;
t395 = -pkin(4) * t156 + pkin(10) * t167;
t394 = -pkin(4) * t473 + pkin(10) * t173;
t42 = t344 * t79 + t348 * t80;
t45 = -pkin(5) * t197 - qJ(6) * t157 + t64;
t49 = t361 + t479;
t19 = t344 * t49 + t348 * t45 + t396;
t21 = -t344 * t45 + t348 * t49 - t457;
t393 = t349 * t19 + t345 * t21 + t446;
t30 = t396 + t42;
t33 = -t41 - t457;
t392 = t349 * t30 + t345 * t33 + t446;
t189 = t236 * t346 + t350 * t237;
t308 = t351 * g(3) + t355;
t390 = t347 * t308 + t351 * t309;
t77 = -pkin(5) * t156 + qJ(6) * t219 - t98;
t48 = qJ(6) * t439 + t348 * t77 + t395;
t57 = qJ(6) * t438 - t344 * t77 - t456;
t387 = t345 * t57 + t349 * t48 + t421;
t136 = -pkin(5) * t473 - qJ(6) * t209;
t92 = -qJ(6) * t243 + t98;
t51 = t136 * t348 + t344 * t92 + t394;
t63 = -t136 * t344 + t348 * t92 - t455;
t386 = t345 * t63 + t349 * t51 + t420;
t104 = t444 - t456;
t83 = t395 - t443;
t385 = t345 * t104 + t349 * t83 + t421;
t116 = t443 - t455;
t87 = t394 + t444;
t384 = t345 * t116 + t349 * t87 + t420;
t178 = -t226 * t349 + t230 * t345;
t251 = t382 + t304;
t383 = pkin(3) * t251 + pkin(9) * t178 + t102;
t380 = -t165 + t79;
t377 = t345 * t389;
t376 = t349 * t389;
t375 = -t139 * t349 + t140 * t345;
t24 = t349 * t42 - t451;
t37 = -pkin(4) * t142 + pkin(10) * t42;
t372 = -pkin(3) * t142 + pkin(9) * t24 - pkin(10) * t451 + t349 * t37;
t371 = pkin(5) * t243 + t378;
t370 = t346 * t283;
t369 = t350 * t283;
t365 = t171 + t371;
t362 = (-qJD(3) + t341) * t322 - t388;
t352 = qJD(2) ^ 2;
t342 = t347 ^ 2;
t338 = t342 * t353;
t329 = t337 - 0.2e1 * t398;
t326 = t336 + 0.2e1 * t397;
t323 = t353 * pkin(7) + t366;
t311 = -t319 + t470;
t310 = t318 - t470;
t307 = -t319 - t470;
t300 = t319 - t318;
t295 = -t470 - t318;
t293 = -t304 + t316;
t292 = t382 - t316;
t289 = -t318 - t319;
t281 = t304 - t382;
t269 = 0.2e1 * t417;
t267 = -t307 * t346 - t432;
t266 = t307 * t350 - t433;
t265 = t288 + t312;
t263 = -t320 * t415 + t374;
t260 = t322 * t415 + t388;
t256 = t295 * t350 - t478;
t255 = t295 * t346 + t477;
t253 = -t276 + t313;
t252 = t275 - t313;
t245 = (t376 + t427) * t317;
t244 = (t377 - t424) * t317;
t232 = t276 - t275;
t223 = t248 * t349 - t317 * t427;
t222 = t248 * t345 + t317 * t424;
t221 = -t317 * t376 - t345 * t358;
t220 = -t317 * t377 + t349 * t358;
t218 = t265 * t346 + t350 * t362;
t217 = -t265 * t350 + t346 * t362;
t216 = t292 * t349 - t437;
t215 = -t293 * t345 + t481;
t214 = t292 * t345 + t436;
t213 = t293 * t349 + t482;
t212 = (-t277 * t348 + t279 * t344) * t315;
t211 = (-t277 * t344 - t279 * t348) * t315;
t206 = t272 * t349 - t437;
t195 = t259 * t345 + t481;
t182 = t252 * t348 - t441;
t181 = -t253 * t344 - t438;
t180 = t252 * t344 + t440;
t179 = t253 * t348 - t439;
t177 = t227 * t349 - t229 * t345;
t176 = -t226 * t345 - t230 * t349;
t175 = t227 * t345 + t229 * t349;
t169 = t207 * t350 + t229 * t346;
t168 = t207 * t346 - t229 * t350;
t163 = t196 * t350 - t227 * t346;
t162 = t196 * t346 + t227 * t350;
t153 = pkin(5) * t160;
t152 = t187 * t348 - t279 * t431;
t151 = t187 * t344 + t279 * t430;
t150 = -t186 * t344 + t277 * t430;
t149 = t186 * t348 + t277 * t431;
t148 = -t211 * t345 + t212 * t349;
t147 = t211 * t349 + t212 * t345;
t146 = -pkin(9) * t206 + t199;
t145 = t178 * t350 - t251 * t346;
t144 = t178 * t346 + t251 * t350;
t143 = -pkin(9) * t195 + t198;
t135 = -t180 * t345 + t182 * t349;
t134 = -t179 * t345 + t181 * t349;
t133 = t180 * t349 + t182 * t345;
t132 = t179 * t349 + t181 * t345;
t131 = -pkin(3) * t206 + t140;
t129 = -pkin(3) * t195 + t139;
t114 = -t156 * t348 - t344 * t473;
t112 = -t156 * t344 + t348 * t473;
t108 = -t151 * t345 + t152 * t349;
t107 = -t149 * t345 + t150 * t349;
t106 = t151 * t349 + t152 * t345;
t105 = t149 * t349 + t150 * t345;
t99 = t347 * (t148 * t350 + t285 * t346) + t351 * (t148 * t346 - t285 * t350);
t94 = pkin(2) * t95;
t90 = t102 * t346 - t202 * t350;
t86 = pkin(2) * t88;
t81 = -pkin(9) * t176 - t375;
t75 = -t112 * t345 + t114 * t349;
t73 = t112 * t349 + t114 * t345;
t68 = pkin(2) * t69;
t66 = t347 * (t108 * t350 + t410) + t351 * (t108 * t346 - t409);
t65 = t347 * (t107 * t350 - t410) + t351 * (t107 * t346 + t409);
t61 = t347 * (t135 * t350 - t157 * t346) + t351 * (t135 * t346 + t157 * t350);
t60 = t347 * (t134 * t350 + t160 * t346) + t351 * (t134 * t346 - t160 * t350);
t52 = -t408 - t461;
t46 = t380 - t462;
t44 = t116 * t349 - t345 * t87 - t458;
t43 = t153 + t53;
t40 = t104 * t349 - t345 * t83 - t459;
t38 = t268 - t365 - t461;
t35 = -t462 - t480;
t34 = t347 * (t232 * t346 + t350 * t75) + t351 * (-t232 * t350 + t346 * t75);
t26 = -t345 * t51 + t349 * t63 - t458;
t25 = -t345 * t48 + t349 * t57 - t459;
t23 = t345 * t42 + t449;
t17 = t142 * t346 + t24 * t350;
t16 = -t142 * t350 + t24 * t346;
t14 = t27 * t349 + t28 * t345;
t12 = -pkin(3) * t23 - t469;
t11 = -t30 * t345 + t33 * t349 - t465;
t8 = t15 * t350 + t346 * t98;
t7 = t15 * t346 - t350 * t98;
t4 = -pkin(9) * t23 - pkin(10) * t449 - t345 * t37;
t3 = -t19 * t345 + t21 * t349 - t465;
t2 = -pkin(3) * t14 - t403;
t1 = -pkin(9) * t14 + t10 * t349 - t345 * t6;
t5 = [0, 0, 0, 0, 0, qJDD(1), t381, t367, 0, 0, (t327 + t397) * t347, t326 * t351 + t329 * t347, t426 + t351 * (-t338 + t352), (t328 - t398) * t351, t347 * (t339 - t352) + t422, 0, t351 * t323 + pkin(1) * t329 + pkin(7) * (t351 * (-t339 - t352) - t426), -t347 * t323 - pkin(1) * t326 + pkin(7) * (-t422 - t347 * (-t338 - t352)), pkin(1) * (t338 + t339) + (t342 + t343) * t445 + t390, pkin(1) * t323 + pkin(7) * t390, t347 * (t288 * t350 - t322 * t429) + t351 * (t288 * t346 + t322 * t428), t347 * (-t260 * t350 - t264 * t346) + t351 * (-t260 * t346 + t264 * t350), t347 * (-t311 * t346 + t477) + t351 * (t311 * t350 + t478), t347 * (t320 * t428 + t346 * t368) + t351 * (t320 * t429 - t350 * t368), t347 * (t310 * t350 - t433) + t351 * (t310 * t346 + t432), (t347 * (-t320 * t350 + t322 * t346) + t351 * (-t320 * t346 - t322 * t350)) * t341, t347 * (-pkin(8) * t255 - t435) + t351 * (-pkin(2) * t260 + pkin(8) * t256 + t434) - pkin(1) * t260 + pkin(7) * (-t255 * t347 + t256 * t351), t347 * (-pkin(8) * t266 - t434) + t351 * (-pkin(2) * t263 + pkin(8) * t267 - t435) - pkin(1) * t263 + pkin(7) * (-t266 * t347 + t267 * t351), t347 * (-pkin(8) * t217 - t188) + t351 * (-pkin(2) * t289 + pkin(8) * t218 + t189) - pkin(1) * t289 + pkin(7) * (-t217 * t347 + t218 * t351), -pkin(8) * t442 + t351 * (pkin(2) * t290 + pkin(8) * t189) + pkin(1) * t290 + pkin(7) * (t189 * t351 - t442), t347 * (t350 * t223 - t370) + t351 * (t346 * t223 + t369), t347 * (t177 * t350 + t281 * t346) + t351 * (t177 * t346 - t281 * t350), t347 * (t215 * t350 + t230 * t346) + t351 * (t215 * t346 - t230 * t350), t347 * (t350 * t221 + t370) + t351 * (t346 * t221 - t369), t347 * (t216 * t350 - t226 * t346) + t351 * (t216 * t346 + t226 * t350), t347 * (t245 * t350 + t286 * t346) + t351 * (t245 * t346 - t286 * t350), t347 * (-pkin(8) * t162 - t129 * t346 + t143 * t350) + t351 * (-pkin(2) * t195 + pkin(8) * t163 + t129 * t350 + t143 * t346) - pkin(1) * t195 + pkin(7) * (-t162 * t347 + t163 * t351), t347 * (-pkin(8) * t168 - t131 * t346 + t146 * t350) + t351 * (-pkin(2) * t206 + pkin(8) * t169 + t131 * t350 + t146 * t346) - pkin(1) * t206 + pkin(7) * (-t168 * t347 + t169 * t351), t347 * (-pkin(8) * t144 + t350 * t81) + t351 * (pkin(8) * t145 + t346 * t81) + pkin(7) * (-t144 * t347 + t145 * t351) + (t347 * t460 + t351 * t405 - pkin(1)) * t176, (t347 * (-pkin(9) * t350 + t460) + t351 * (-pkin(9) * t346 + t405) - pkin(1)) * t375 + (pkin(7) + pkin(8)) * (-t347 * t90 + t351 * (t102 * t350 + t202 * t346)), t66, t34, t60, t65, t61, t99, t347 * (-t346 * t46 + t350 * t40 - t467) + t351 * (t346 * t40 + t350 * t46 + t400) + t448, t347 * (-t346 * t52 + t350 * t44 - t466) + t351 * (t346 * t44 + t350 * t52 + t399) + t447, t347 * (t11 * t350 - t346 * t53 - t468) + t351 * (t11 * t346 + t350 * t53 + t404) + t453, t347 * (-pkin(8) * t16 - t12 * t346 + t350 * t4) + t351 * (-pkin(2) * t23 + pkin(8) * t17 + t12 * t350 + t346 * t4) - pkin(1) * t23 + pkin(7) * (-t16 * t347 + t17 * t351), t66, t34, t60, t65, t61, t99, t347 * (t25 * t350 - t346 * t35 - t467) + t351 * (t25 * t346 + t35 * t350 + t400) + t448, t347 * (t26 * t350 - t346 * t38 - t466) + t351 * (t26 * t346 + t350 * t38 + t399) + t447, t347 * (t3 * t350 - t346 * t43 - t468) + t351 * (t3 * t346 + t350 * t43 + t404) + t453, t347 * (-pkin(8) * t7 + t1 * t350 - t2 * t346) + t351 * (-pkin(2) * t14 + pkin(8) * t8 + t1 * t346 + t2 * t350) - pkin(1) * t14 + pkin(7) * (-t347 * t7 + t351 * t8); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t333, t338 - t339, t336, t333, t337, qJDD(2), -t308, -t309, 0, 0, t301, t300, t265, -t301, t362, t411, pkin(2) * t255 - t236, -t423 - t346 * (pkin(8) * t397 - t308 - t454) + (-t330 * t346 + t266) * pkin(2), pkin(2) * t217, pkin(2) * t188, t222, t175, t213, t220, t214, t244, pkin(2) * t162 + t406, pkin(2) * t168 + t407, pkin(2) * t144 + t383, pkin(2) * t90 + t419, t106, t73, t132, t105, t133, t147, t86 + t385, t94 + t384, t68 + t392, pkin(2) * t16 + t372, t106, t73, t132, t105, t133, t147, t86 + t387, t94 + t386, t68 + t393, pkin(2) * t7 + t401; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t301, t300, t265, -t301, t362, t411, -t236, -t237, 0, 0, t222, t175, t213, t220, t214, t244, t406, t407, t383, t419, t106, t73, t132, t105, t133, t147, t385, t384, t392, t372, t106, t73, t132, t105, t133, t147, t387, t386, t393, t401; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t283, t281, t230, t283, -t226, t286, -t139, -t140, 0, 0, t234, t232, t160, -t234, -t157, t285, -t380, t408, t110, t469, t234, t232, t160, -t234, -t157, t285, t480, t269 + t365, -t153 + t110, t403; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t234, t232, t160, -t234, -t157, t285, -t79, -t80, 0, 0, t234, t232, t160, -t234, -t157, t285, t359, t269 + t371, -t153, -t58; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t156, t473, t197, t98;];
tauJ_reg  = t5;
