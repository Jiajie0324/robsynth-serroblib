% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRRRRP5
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
% tau_reg [6x33]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 01:25
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRRRP5_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP5_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP5_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRRP5_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRRP5_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP5_invdynJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 01:23:08
% EndTime: 2019-03-10 01:23:31
% DurationCPUTime: 10.93s
% Computational Cost: add. (12997->600), mult. (29175->795), div. (0->0), fcn. (21375->14), ass. (0->302)
t286 = cos(qJ(3));
t283 = sin(qJ(2));
t287 = cos(qJ(2));
t400 = t286 * t287;
t329 = pkin(3) * t283 - pkin(9) * t400;
t438 = pkin(8) + pkin(9);
t367 = qJD(3) * t438;
t340 = pkin(2) * t283 - pkin(8) * t287;
t226 = t340 * qJD(1);
t282 = sin(qJ(3));
t387 = qJD(1) * t283;
t365 = t282 * t387;
t390 = pkin(7) * t365 + t286 * t226;
t481 = qJD(1) * t329 + t286 * t367 + t390;
t203 = t282 * t226;
t402 = t283 * t286;
t403 = t282 * t287;
t480 = -t203 - (-pkin(7) * t402 - pkin(9) * t403) * qJD(1) - t282 * t367;
t281 = sin(qJ(4));
t285 = cos(qJ(4));
t330 = t281 * t282 - t285 * t286;
t450 = qJD(4) + qJD(3);
t160 = t450 * t330;
t317 = t330 * t287;
t394 = qJD(1) * t317 - t160;
t479 = t480 * t281 + t285 * t481;
t280 = sin(qJ(5));
t373 = t286 * qJD(2);
t219 = t365 - t373;
t383 = qJD(2) * t282;
t221 = t286 * t387 + t383;
t332 = -t219 * t281 + t285 * t221;
t333 = -t219 * t285 - t281 * t221;
t437 = cos(qJ(5));
t440 = t280 * t333 + t332 * t437;
t439 = t440 ^ 2;
t86 = t280 * t332 - t333 * t437;
t83 = t86 ^ 2;
t474 = -t83 + t439;
t222 = t281 * t286 + t282 * t285;
t386 = qJD(1) * t287;
t172 = t222 * t386;
t314 = t222 * qJD(3);
t297 = -qJD(4) * t222 - t314;
t473 = t172 + t297;
t237 = t438 * t282;
t375 = qJD(4) * t285;
t477 = -t237 * t375 - t281 * t481 + t480 * t285;
t238 = t438 * t286;
t391 = -t281 * t237 + t285 * t238;
t476 = pkin(4) * t387 + pkin(10) * t394 + qJD(4) * t391 + t479;
t405 = t281 * t238;
t434 = pkin(10) * t222;
t475 = (-t405 - t434) * qJD(4) + t477 + (t172 - t314) * pkin(10);
t469 = t440 * t86;
t468 = t86 * qJ(6);
t371 = t283 * qJDD(1);
t262 = pkin(7) * t371;
t372 = qJD(1) * qJD(2);
t356 = t287 * t372;
t192 = -qJDD(2) * pkin(2) + pkin(7) * t356 + t262;
t252 = -qJD(3) + t386;
t284 = sin(qJ(1));
t288 = cos(qJ(1));
t339 = g(1) * t288 + g(2) * t284;
t428 = g(3) * t287;
t307 = t283 * t339 - t428;
t472 = qJD(3) * pkin(8) * t252 - t192 + t307;
t243 = -qJD(4) + t252;
t463 = pkin(10) * t332;
t231 = -pkin(2) * t287 - pkin(8) * t283 - pkin(1);
t210 = t231 * qJD(1);
t264 = pkin(7) * t386;
t236 = qJD(2) * pkin(8) + t264;
t156 = t286 * t210 - t236 * t282;
t113 = -pkin(9) * t221 + t156;
t105 = -pkin(3) * t252 + t113;
t157 = t210 * t282 + t236 * t286;
t114 = -pkin(9) * t219 + t157;
t108 = t281 * t114;
t64 = t285 * t105 - t108;
t45 = t64 - t463;
t38 = -pkin(4) * t243 + t45;
t462 = pkin(10) * t333;
t110 = t285 * t114;
t65 = t105 * t281 + t110;
t46 = t65 + t462;
t40 = t280 * t46;
t22 = t437 * t38 - t40;
t460 = qJ(6) * t440;
t14 = t22 - t460;
t234 = -qJD(5) + t243;
t13 = -pkin(5) * t234 + t14;
t42 = t437 * t46;
t23 = t280 * t38 + t42;
t15 = t23 - t468;
t471 = -t13 * t86 + t15 * t440;
t379 = qJD(3) * t283;
t466 = -qJD(1) * t379 + qJDD(2);
t131 = qJD(3) * t373 + (t356 + t371) * t286 + t466 * t282;
t132 = t282 * (qJD(2) * (qJD(3) + t386) + t371) - t466 * t286;
t377 = qJD(4) * t281;
t328 = t281 * t131 + t285 * t132 - t219 * t377 + t221 * t375;
t358 = qJD(5) * t437;
t374 = qJD(5) * t280;
t61 = t285 * t131 - t281 * t132 - t219 * t375 - t221 * t377;
t20 = t280 * t328 + t332 * t374 - t333 * t358 - t437 * t61;
t465 = -t234 * t86 - t20;
t235 = -qJD(2) * pkin(2) + pkin(7) * t387;
t164 = pkin(3) * t219 + t235;
t102 = -pkin(4) * t333 + t164;
t279 = qJ(3) + qJ(4);
t274 = qJ(5) + t279;
t257 = sin(t274);
t258 = cos(t274);
t401 = t284 * t287;
t168 = t257 * t288 - t258 * t401;
t399 = t287 * t288;
t170 = t257 * t284 + t258 * t399;
t269 = t287 * qJDD(1);
t452 = -t283 * t372 + t269;
t216 = qJDD(3) - t452;
t209 = qJDD(4) + t216;
t229 = t340 * qJD(2);
t161 = qJD(1) * t229 + qJDD(1) * t231;
t151 = t286 * t161;
t191 = pkin(7) * t452 + qJDD(2) * pkin(8);
t47 = pkin(3) * t216 - pkin(9) * t131 - qJD(3) * t157 - t282 * t191 + t151;
t378 = qJD(3) * t286;
t380 = qJD(3) * t282;
t316 = t282 * t161 + t286 * t191 + t210 * t378 - t236 * t380;
t55 = -pkin(9) * t132 + t316;
t303 = -qJD(4) * t65 - t281 * t55 + t285 * t47;
t7 = pkin(4) * t209 - pkin(10) * t61 + t303;
t344 = t105 * t375 - t114 * t377 + t281 * t47 + t285 * t55;
t9 = -pkin(10) * t328 + t344;
t359 = -t280 * t7 - t38 * t358 + t46 * t374 - t437 * t9;
t429 = g(3) * t283;
t464 = g(1) * t170 - g(2) * t168 + t102 * t86 + t258 * t429 + t359;
t311 = t437 * t330;
t416 = -qJD(5) * t311 - t222 * t374 + t280 * t473 + t394 * t437;
t153 = t222 * t437 - t280 * t330;
t415 = qJD(5) * t153 + t280 * t394 - t437 * t473;
t436 = pkin(3) * t282;
t212 = t386 * t436 + t264;
t455 = pkin(3) * t380 - t212;
t381 = qJD(2) * t287;
t363 = t282 * t381;
t467 = t283 * t378 + t363;
t301 = -qJD(5) * t23 - t280 * t9 + t437 * t7;
t407 = t258 * t288;
t167 = t257 * t401 + t407;
t408 = t258 * t284;
t169 = -t257 * t399 + t408;
t449 = -g(1) * t169 + g(2) * t167 + t257 * t429;
t446 = -t102 * t440 + t301 + t449;
t21 = qJD(5) * t440 + t280 * t61 + t437 * t328;
t443 = -t234 * t440 - t21;
t51 = pkin(5) * t86 + qJD(6) + t102;
t461 = t440 * t51;
t185 = t330 * t283;
t459 = t332 * t333;
t345 = -t285 * t237 - t405;
t126 = t345 - t434;
t127 = -pkin(10) * t330 + t391;
t397 = t280 * t126 + t437 * t127;
t458 = -pkin(4) * t473 + t455;
t260 = pkin(3) * t285 + pkin(4);
t406 = t280 * t281;
t348 = -t113 * t281 - t110;
t52 = t348 - t462;
t398 = t285 * t113 - t108;
t53 = t398 - t463;
t457 = t260 * t358 + (-t281 * t374 + (t285 * t437 - t406) * qJD(4)) * pkin(3) - t280 * t52 - t437 * t53;
t366 = t437 * t281;
t456 = t260 * t374 - (-t281 * t358 + (-t280 * t285 - t366) * qJD(4)) * pkin(3) - t280 * t53 + t437 * t52;
t218 = t286 * t231;
t435 = pkin(7) * t282;
t155 = -pkin(9) * t402 + t218 + (-pkin(3) - t435) * t287;
t254 = pkin(7) * t400;
t389 = t282 * t231 + t254;
t404 = t282 * t283;
t162 = -pkin(9) * t404 + t389;
t395 = t281 * t155 + t285 * t162;
t454 = qJD(5) * t397 + t280 * t475 + t437 * t476;
t315 = qJD(2) * t222;
t310 = t287 * t315;
t291 = t450 * t185 - t310;
t453 = t126 * t358 - t127 * t374 - t280 * t476 + t437 * t475;
t448 = t332 ^ 2 - t333 ^ 2;
t447 = t243 * t333 + t61;
t271 = sin(t279);
t272 = cos(t279);
t178 = t271 * t401 + t272 * t288;
t180 = -t271 * t399 + t272 * t284;
t445 = -g(1) * t180 + g(2) * t178 - t164 * t332 + t271 * t429 + t303;
t179 = t271 * t288 - t272 * t401;
t181 = t271 * t284 + t272 * t399;
t444 = g(1) * t181 - g(2) * t179 - t164 * t333 + t272 * t429 - t344;
t442 = -t243 * t332 - t328;
t276 = t286 * pkin(3);
t261 = -pkin(2) - t276;
t213 = -pkin(4) * t271 - pkin(5) * t257;
t182 = -t213 + t436;
t427 = pkin(7) + t182;
t152 = t222 * t280 + t311;
t426 = -qJ(6) * t415 - qJD(6) * t152 + t453;
t425 = -pkin(5) * t387 - qJ(6) * t416 - t153 * qJD(6) - t454;
t424 = -t14 + t13;
t423 = t437 * t45 - t40;
t346 = t285 * t155 - t162 * t281;
t79 = -pkin(4) * t287 + pkin(10) * t185 + t346;
t318 = t222 * t283;
t81 = -pkin(10) * t318 + t395;
t420 = t280 * t79 + t437 * t81;
t419 = t222 * t61;
t418 = t457 + t460;
t417 = -t456 - t468;
t104 = t132 * pkin(3) + t192;
t414 = t104 * t222;
t413 = t131 * t282;
t412 = t209 * t222;
t411 = t219 * t252;
t410 = t221 * t252;
t409 = t221 * t286;
t393 = t282 * t229 + t231 * t378;
t382 = qJD(2) * t283;
t392 = t286 * t229 + t382 * t435;
t214 = pkin(4) * t272 + pkin(5) * t258;
t230 = pkin(3) * t404 + t283 * pkin(7);
t277 = t283 ^ 2;
t388 = -t287 ^ 2 + t277;
t385 = qJD(2) * t219;
t384 = qJD(2) * t221;
t376 = qJD(4) * t282;
t94 = t329 * qJD(2) + (-t254 + (pkin(9) * t283 - t231) * t282) * qJD(3) + t392;
t99 = -t467 * pkin(9) + (-t283 * t373 - t287 * t380) * pkin(7) + t393;
t370 = t155 * t375 + t281 * t94 + t285 * t99;
t183 = t276 + t214;
t165 = pkin(3) * t467 + pkin(7) * t381;
t364 = t252 * t373;
t362 = t252 * t380;
t360 = t252 * t378;
t354 = -t280 * t45 - t42;
t350 = -t280 * t81 + t437 * t79;
t347 = t437 * t126 - t127 * t280;
t343 = -qJD(3) * t210 - t191;
t341 = -pkin(3) * t406 + t437 * t260;
t107 = pkin(3) * t221 + pkin(4) * t332;
t338 = g(1) * t284 - g(2) * t288;
t337 = t236 * t378 - t151;
t336 = -pkin(8) * t216 + qJD(3) * t235;
t177 = pkin(2) + t183;
t273 = -qJ(6) - pkin(10) - t438;
t335 = t177 * t287 - t273 * t283;
t326 = pkin(1) + t335;
t325 = -0.2e1 * pkin(1) * t372 - pkin(7) * qJDD(2);
t100 = -qJD(2) * t317 + t283 * t297;
t302 = -qJD(4) * t395 - t281 * t99 + t285 * t94;
t26 = pkin(4) * t382 - pkin(10) * t100 + t302;
t312 = -t282 * t379 + t287 * t373;
t28 = (-t402 * t450 - t363) * pkin(10) * t285 + (-qJD(4) * t162 + (t283 * t376 - t312) * pkin(10)) * t281 + t370;
t324 = t280 * t26 + t437 * t28 + t79 * t358 - t374 * t81;
t322 = t282 * t216 - t360;
t321 = t286 * t216 + t362;
t319 = t164 * t222;
t290 = qJD(1) ^ 2;
t313 = pkin(1) * t290 + t339;
t174 = pkin(4) * t330 + t261;
t308 = t437 * t318;
t289 = qJD(2) ^ 2;
t304 = 0.2e1 * qJDD(1) * pkin(1) - pkin(7) * t289 + t338;
t158 = pkin(4) * t318 + t230;
t300 = -qJD(5) * t420 + t437 * t26 - t280 * t28;
t117 = -t185 * t437 - t280 * t318;
t35 = pkin(4) * t328 + t104;
t296 = -t285 * t378 - t286 * t375 + (t376 + t380) * t281;
t295 = t222 * t450 - t172;
t10 = t21 * pkin(5) + qJDD(6) + t35;
t82 = -pkin(4) * t291 + t165;
t259 = pkin(4) * t437 + pkin(5);
t201 = t282 * t284 + t286 * t399;
t200 = -t282 * t399 + t284 * t286;
t199 = t282 * t288 - t284 * t400;
t198 = t282 * t401 + t286 * t288;
t194 = qJDD(5) + t209;
t193 = pkin(3) * t366 + t280 * t260;
t186 = pkin(5) + t341;
t116 = -t185 * t280 + t308;
t57 = -qJ(6) * t152 + t397;
t56 = -qJ(6) * t153 + t347;
t34 = qJD(5) * t117 + t280 * t100 - t291 * t437;
t33 = qJD(5) * t308 - t100 * t437 - t185 * t374 - t280 * t291;
t32 = -qJ(6) * t116 + t420;
t31 = -pkin(5) * t287 - qJ(6) * t117 + t350;
t17 = t423 - t460;
t16 = t354 + t468;
t4 = -qJ(6) * t34 - qJD(6) * t116 + t324;
t3 = pkin(5) * t382 + t33 * qJ(6) - t117 * qJD(6) + t300;
t2 = -qJ(6) * t21 - qJD(6) * t86 - t359;
t1 = t194 * pkin(5) + t20 * qJ(6) - qJD(6) * t440 + t301;
t5 = [qJDD(1), t338, t339, qJDD(1) * t277 + 0.2e1 * t283 * t356, 0.2e1 * t269 * t283 - 0.2e1 * t372 * t388, qJDD(2) * t283 + t287 * t289, qJDD(2) * t287 - t283 * t289, 0, t283 * t325 + t287 * t304, -t283 * t304 + t287 * t325, t131 * t402 + t221 * t312 (-t219 * t286 - t221 * t282) * t381 + (-t413 - t132 * t286 + (t219 * t282 - t409) * qJD(3)) * t283 (-t131 - t364) * t287 + (t321 + t384) * t283 (t252 * t383 + t132) * t287 + (-t322 - t385) * t283, -t216 * t287 - t252 * t382 -(-t231 * t380 + t392) * t252 + t218 * t216 - g(1) * t199 - g(2) * t201 + ((t360 + t385) * pkin(7) + (-pkin(7) * t216 + qJD(2) * t235 - t343) * t282 + t337) * t287 + (pkin(7) * t132 + qJD(2) * t156 + t192 * t282 + t235 * t378) * t283, t393 * t252 - t389 * t216 - g(1) * t198 - g(2) * t200 + (t235 * t373 + (-t362 + t384) * pkin(7) + t316) * t287 + (-t235 * t380 - t157 * qJD(2) + t192 * t286 + (t131 - t364) * pkin(7)) * t283, t100 * t332 - t185 * t61, t100 * t333 + t185 * t328 - t332 * t310 + (t296 * t332 - t419) * t283, -t100 * t243 - t185 * t209 - t287 * t61 + t332 * t382 (t243 * t315 + t328) * t287 + (qJD(2) * t333 - t243 * t296 - t412) * t283, -t209 * t287 - t243 * t382, -t302 * t243 + t346 * t209 - t165 * t333 + t230 * t328 - g(1) * t179 - g(2) * t181 + (qJD(2) * t319 - t303) * t287 + (t64 * qJD(2) - t164 * t160 + t414) * t283 (-t162 * t377 + t370) * t243 - t395 * t209 + t344 * t287 - t65 * t382 + t165 * t332 + t230 * t61 - t104 * t185 + t164 * t100 - g(1) * t178 - g(2) * t180, -t117 * t20 - t33 * t440, t116 * t20 - t117 * t21 + t33 * t86 - t34 * t440, t117 * t194 + t20 * t287 + t234 * t33 + t382 * t440, -t116 * t194 + t21 * t287 + t234 * t34 - t382 * t86, -t194 * t287 - t234 * t382, -g(1) * t168 - g(2) * t170 + t102 * t34 + t35 * t116 + t158 * t21 + t194 * t350 + t22 * t382 - t234 * t300 - t287 * t301 + t82 * t86, -g(1) * t167 - g(2) * t169 - t102 * t33 + t35 * t117 - t158 * t20 - t194 * t420 - t23 * t382 + t234 * t324 - t287 * t359 + t440 * t82, -t1 * t117 - t116 * t2 + t13 * t33 - t15 * t34 + t20 * t31 - t21 * t32 + t283 * t338 - t3 * t440 - t4 * t86, t2 * t32 + t15 * t4 + t1 * t31 + t13 * t3 + t10 * (t116 * pkin(5) + t158) + t51 * (t34 * pkin(5) + t82) - g(1) * (-t284 * t326 + t288 * t427) - g(2) * (t284 * t427 + t288 * t326); 0, 0, 0, -t283 * t290 * t287, t388 * t290, t371, t269, qJDD(2), t283 * t313 - t262 - t428, t429 + (-pkin(7) * qJDD(1) + t313) * t287, -t252 * t409 + t413 (t131 + t411) * t286 + (-t132 + t410) * t282 (-t221 * t283 + t252 * t400) * qJD(1) + t322 (t219 * t283 - t252 * t403) * qJD(1) + t321, t252 * t387, -pkin(2) * t132 + t390 * t252 + t336 * t282 + (-t156 * t283 + (-pkin(7) * t219 - t235 * t282) * t287) * qJD(1) + t472 * t286, -pkin(2) * t131 - t203 * t252 + t336 * t286 + (-t235 * t400 + t157 * t283 + (-t221 * t287 + t252 * t402) * pkin(7)) * qJD(1) - t472 * t282, t332 * t394 + t419, -t222 * t328 - t61 * t330 + t332 * t473 + t394 * t333, -t243 * t394 - t332 * t387 + t412, -t209 * t330 + t243 * t295 - t333 * t387, t243 * t387, t345 * t209 + t261 * t328 + t104 * t330 - t64 * t387 + t212 * t333 - t164 * t172 + t479 * t243 + (t243 * t391 + t319) * qJD(4) + (-t333 * t436 + t319) * qJD(3) + t307 * t272, -t391 * t209 + t261 * t61 + t414 + t65 * t387 + (-t238 * t377 + t477) * t243 + t394 * t164 + t455 * t332 - t307 * t271, -t153 * t20 + t416 * t440, t152 * t20 - t153 * t21 - t415 * t440 - t416 * t86, t153 * t194 - t234 * t416 - t387 * t440, -t152 * t194 + t234 * t415 + t387 * t86, t234 * t387, t35 * t152 + t174 * t21 + t194 * t347 - t22 * t387 - t258 * t428 + t458 * t86 + (g(1) * t407 + g(2) * t408) * t283 + t454 * t234 + t415 * t102, t416 * t102 + t35 * t153 - t174 * t20 - t397 * t194 + t23 * t387 + t234 * t453 - t257 * t307 + t440 * t458, -t1 * t153 - t13 * t416 - t15 * t415 - t152 * t2 + t20 * t56 - t21 * t57 - t287 * t339 - t425 * t440 - t426 * t86 - t429, t2 * t57 + t1 * t56 + t10 * (t152 * pkin(5) + t174) - g(3) * t335 + (pkin(4) * t295 + pkin(5) * t415 + t455) * t51 + t426 * t15 + t425 * t13 + t339 * (t177 * t283 + t273 * t287); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t221 * t219, -t219 ^ 2 + t221 ^ 2, t131 - t411, -t132 - t410, t216, -g(1) * t200 + g(2) * t198 - t157 * t252 - t221 * t235 + (t343 + t429) * t282 - t337, g(1) * t201 - g(2) * t199 + g(3) * t402 - t156 * t252 + t219 * t235 - t316, -t459, t448, t447, t442, t209, t348 * t243 + (t285 * t209 + t221 * t333 + t243 * t377) * pkin(3) + t445, -t398 * t243 + (-t209 * t281 - t221 * t332 + t243 * t375) * pkin(3) + t444, t469, t474, t465, t443, t194, -t107 * t86 + t341 * t194 + t234 * t456 + t446, -t107 * t440 - t193 * t194 + t234 * t457 + t464, t186 * t20 - t193 * t21 - t417 * t440 - t418 * t86 + t471, t2 * t193 + t1 * t186 - t51 * (pkin(5) * t440 + t107) - g(1) * (-t182 * t399 + t183 * t284) - g(2) * (-t182 * t401 - t183 * t288) + t182 * t429 + t418 * t15 + t417 * t13; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t459, t448, t447, t442, t209, -t243 * t65 + t445, -t243 * t64 + t444, t469, t474, t465, t443, t194, t354 * t234 + (t194 * t437 + t234 * t374 - t332 * t86) * pkin(4) + t446, -t423 * t234 + (-t280 * t194 + t234 * t358 - t332 * t440) * pkin(4) + t464, t16 * t440 + t17 * t86 + t259 * t20 + (-t21 * t280 + (t280 * t440 - t437 * t86) * qJD(5)) * pkin(4) + t471, t1 * t259 - t15 * t17 - t13 * t16 - pkin(5) * t461 - g(1) * (t213 * t399 + t214 * t284) - g(2) * (t213 * t401 - t214 * t288) - t213 * t429 + (-t51 * t332 + t2 * t280 + (-t13 * t280 + t15 * t437) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t469, t474, t465, t443, t194, -t23 * t234 + t446, -t22 * t234 + t464, pkin(5) * t20 - t424 * t86, t424 * t15 + (t1 + t449 - t461) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t83 - t439, t13 * t440 + t15 * t86 + t10 - t307;];
tau_reg  = t5;