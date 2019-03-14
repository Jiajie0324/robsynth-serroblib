% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRRRPP2
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
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 20:52
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRRPP2_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP2_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP2_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPP2_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPP2_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S6RRRRPP2_invdynJ_fixb_reg2_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 20:51:47
% EndTime: 2019-03-09 20:52:06
% DurationCPUTime: 9.95s
% Computational Cost: add. (12715->744), mult. (28267->820), div. (0->0), fcn. (20085->10), ass. (0->357)
t279 = sin(qJ(2));
t278 = sin(qJ(3));
t282 = cos(qJ(2));
t438 = t278 * t282;
t497 = cos(qJ(3));
t212 = t279 * t497 + t438;
t200 = t212 * qJD(1);
t277 = sin(qJ(4));
t281 = cos(qJ(4));
t413 = qJD(2) + qJD(3);
t165 = t281 * t200 + t277 * t413;
t393 = t497 * t282;
t248 = qJD(1) * t393;
t422 = qJD(1) * t279;
t392 = t278 * t422;
t198 = -t248 + t392;
t194 = qJD(4) + t198;
t379 = t165 * t194;
t384 = qJDD(1) * t497;
t387 = t497 * qJD(3);
t388 = t497 * qJD(2);
t417 = qJD(1) * qJD(2);
t386 = t279 * t417;
t427 = qJD(3) * t392 + t278 * t386;
t296 = t279 * t384 + (qJD(1) * (t388 + t387) + qJDD(1) * t278) * t282 - t427;
t412 = qJDD(2) + qJDD(3);
t84 = qJD(4) * t165 + t277 * t296 - t281 * t412;
t532 = t84 - t379;
t531 = t84 + t379;
t151 = t413 * t212;
t415 = t279 * qJDD(1);
t361 = t278 * t415 - t282 * t384;
t115 = qJD(1) * t151 + t361;
t114 = qJDD(4) + t115;
t530 = t114 * qJ(5) + t194 * qJD(5);
t284 = -pkin(8) - pkin(7);
t226 = t284 * t282;
t216 = qJD(1) * t226;
t202 = t497 * t216;
t225 = t284 * t279;
t214 = qJD(1) * t225;
t145 = t214 * t278 - t202;
t421 = qJD(3) * t278;
t370 = pkin(2) * t421 - t145;
t276 = qJ(2) + qJ(3);
t269 = sin(t276);
t283 = cos(qJ(1));
t444 = t269 * t283;
t280 = sin(qJ(1));
t446 = t269 * t280;
t529 = g(1) * t444 + g(2) * t446;
t498 = pkin(4) + pkin(5);
t404 = t498 * t277;
t465 = qJ(5) * t281;
t528 = -t465 + t404;
t270 = cos(t276);
t487 = g(3) * t270;
t506 = -t487 + t529;
t185 = t194 ^ 2;
t36 = t114 * t277 - t165 * t200 + t185 * t281;
t372 = t282 * t388;
t377 = t278 * t413;
t150 = t279 * t377 - t282 * t387 - t372;
t376 = t281 * t413;
t163 = t200 * t277 - t376;
t454 = t165 * t281;
t456 = t163 * t277;
t476 = t281 * t84;
t420 = qJD(4) * t277;
t83 = -qJD(4) * t376 + t200 * t420 - t277 * t412 - t281 * t296;
t477 = t277 * t83;
t527 = t212 * (qJD(4) * (-t454 + t456) - t476 + t477) + (t163 * t281 + t165 * t277) * t150;
t458 = t163 * t194;
t519 = t83 + t458;
t11 = t277 * t531 + t281 * t519;
t485 = t282 * pkin(2);
t265 = pkin(1) + t485;
t224 = t265 * qJD(1);
t124 = pkin(3) * t198 - pkin(9) * t200 - t224;
t481 = qJD(2) * pkin(2);
t204 = t214 + t481;
t141 = t278 * t204 - t202;
t128 = pkin(9) * t413 + t141;
t419 = qJD(4) * t281;
t253 = pkin(2) * t386;
t509 = -pkin(9) * t212 - t265;
t49 = t253 - (t248 * t413 - t427) * pkin(9) + t115 * pkin(3) + t509 * qJDD(1);
t385 = t282 * t417;
t154 = qJDD(2) * pkin(2) - t284 * (-t385 - t415);
t414 = t282 * qJDD(1);
t162 = t284 * (-t386 + t414);
t69 = t278 * t154 - t497 * t162 + t204 * t387 + t216 * t421;
t65 = pkin(9) * t412 + t69;
t16 = -t124 * t420 - t128 * t419 - t277 * t65 + t281 * t49;
t113 = t114 * pkin(4);
t507 = t113 - qJDD(5);
t10 = -t16 - t507;
t15 = t124 * t419 - t128 * t420 + t277 * t49 + t281 * t65;
t8 = t15 + t530;
t526 = t10 * t277 + t8 * t281;
t201 = t278 * t216;
t140 = t497 * t204 + t201;
t127 = -pkin(3) * t413 - t140;
t324 = -t165 * qJ(5) + t127;
t48 = -t163 * t498 + qJD(6) - t324;
t374 = -t497 * t154 - t278 * t162 + t204 * t421 - t216 * t387;
t66 = -t412 * pkin(3) + t374;
t18 = t84 * pkin(4) + t83 * qJ(5) - t165 * qJD(5) + t66;
t6 = -pkin(5) * t84 + qJDD(6) - t18;
t525 = -t6 * t277 - t48 * t419;
t462 = t114 * t281;
t524 = pkin(9) * (t194 * t420 - t462);
t271 = t277 * qJ(5);
t363 = t281 * pkin(4) + t271;
t410 = pkin(3) + t363;
t523 = t6 * t281 - t48 * t420;
t496 = pkin(2) * t278;
t263 = pkin(9) + t496;
t375 = pkin(2) * t387;
t357 = t281 * t375;
t522 = -t163 * t357 - t263 * t476;
t521 = t84 * qJ(6) + t163 * qJD(6);
t451 = t198 * t281;
t452 = t198 * t277;
t429 = pkin(4) * t452 - qJ(5) * t451;
t520 = t429 + t370;
t517 = t200 * t413;
t515 = 0.2e1 * t530;
t211 = t278 * t279 - t393;
t514 = t151 * qJ(5) + t211 * qJD(5);
t192 = pkin(4) * t420 - qJ(5) * t419 - t277 * qJD(5);
t513 = -t192 + (-t420 - t452) * pkin(5);
t258 = qJ(6) * t420;
t512 = qJ(6) * t452 + t258;
t499 = t165 ^ 2;
t511 = -t185 - t499;
t510 = t497 * t225 + t278 * t226;
t425 = t270 * pkin(3) + t269 * pkin(9);
t367 = g(1) * t283 + g(2) * t280;
t500 = t163 ^ 2;
t508 = t499 - t500;
t436 = t281 * t283;
t440 = t277 * t280;
t187 = t270 * t440 + t436;
t435 = t283 * t277;
t437 = t280 * t281;
t189 = t270 * t435 - t437;
t447 = t269 * t277;
t318 = g(1) * t189 + g(2) * t187 + g(3) * t447 + t16;
t309 = t318 + t507;
t482 = qJ(6) * t83;
t505 = (qJD(6) + t48) * t165 + t309 - t482;
t459 = t150 * t281;
t336 = t212 * t420 + t459;
t448 = t212 * t281;
t504 = -t114 * t448 - t151 * t165 + t194 * t336 + t211 * t83;
t391 = t212 * t419;
t460 = t150 * t277;
t337 = t391 - t460;
t449 = t212 * t277;
t503 = t114 * t449 + t151 * t163 + t194 * t337 + t211 * t84;
t168 = t278 * t225 - t226 * t497;
t396 = qJD(2) * t284;
t215 = t279 * t396;
t108 = t168 * qJD(3) + t278 * t215 - t284 * t372;
t495 = pkin(2) * t279;
t494 = pkin(4) * t200;
t493 = pkin(5) * t114;
t492 = pkin(9) * t114;
t488 = g(2) * t284;
t486 = g(3) * t282;
t484 = pkin(9) - qJ(6);
t483 = qJ(5) * t84;
t14 = t15 * t281;
t480 = t18 * t277;
t86 = t124 * t277 + t128 * t281;
t479 = t194 * t86;
t74 = t163 * pkin(4) + t324;
t478 = t198 * t74;
t343 = t375 - qJD(6);
t390 = t263 * t420;
t186 = t200 * qJ(5);
t135 = pkin(3) * t200 + pkin(9) * t198;
t126 = pkin(2) * t422 + t135;
t146 = t214 * t497 + t201;
t92 = t277 * t126 + t281 * t146;
t72 = t186 + t92;
t475 = t281 * t343 - t390 + t512 - t72;
t137 = t277 * t146;
t433 = -qJ(6) + t263;
t210 = t433 * t281;
t405 = t498 * t200;
t464 = qJ(6) * t198;
t474 = qJD(4) * t210 + t277 * t343 - t137 - (-t126 + t464) * t281 + t405;
t473 = t513 - t520;
t96 = t141 - t429;
t472 = t96 + t513;
t471 = t192 + t520;
t95 = t277 * t135 + t281 * t140;
t76 = t186 + t95;
t470 = -pkin(9) * t420 - t281 * qJD(6) + t512 - t76;
t469 = t192 - t96;
t133 = t277 * t140;
t223 = t484 * t281;
t468 = qJD(4) * t223 - t277 * qJD(6) - t133 - (-t135 + t464) * t281 + t405;
t467 = pkin(7) * qJDD(1);
t466 = qJ(5) * t163;
t463 = t114 * t263;
t461 = t127 * t198;
t457 = t163 * t263;
t455 = t165 * t163;
t453 = t194 * t200;
t450 = t200 * t198;
t445 = t269 * t281;
t443 = t270 * t280;
t442 = t270 * t281;
t441 = t270 * t283;
t434 = t283 * t284;
t85 = t281 * t124 - t277 * t128;
t50 = qJ(6) * t165 + t85;
t432 = qJD(5) - t50;
t431 = qJD(5) - t85;
t139 = pkin(3) * t211 + t509;
t103 = t277 * t139 + t281 * t168;
t428 = t529 * t281;
t426 = g(1) * t446 - g(2) * t444;
t274 = t279 ^ 2;
t275 = t282 ^ 2;
t424 = t274 - t275;
t423 = t274 + t275;
t418 = qJD(5) * t281;
t409 = t497 * pkin(2);
t408 = t279 * t481;
t101 = pkin(3) * t151 + pkin(9) * t150 + t408;
t107 = qJD(3) * t510 + t497 * t215 + t396 * t438;
t406 = t277 * t101 + t281 * t107 + t139 * t419;
t287 = qJD(1) ^ 2;
t402 = t279 * t287 * t282;
t67 = t74 * t420;
t401 = t74 * t419;
t400 = t277 * t107 + t139 * t420 + t168 * t419;
t88 = t211 * qJ(5) + t103;
t229 = t283 * t265;
t399 = pkin(3) * t441 + pkin(9) * t444 + t229;
t398 = t506 * t277;
t397 = g(1) * t441 + g(2) * t443 + g(3) * t269;
t395 = t277 * t497;
t394 = t281 * t497;
t389 = t263 * t419;
t188 = t270 * t437 - t435;
t383 = -t187 * pkin(4) + qJ(5) * t188;
t190 = t270 * t436 + t440;
t382 = -t189 * pkin(4) + qJ(5) * t190;
t91 = t126 * t281 - t137;
t94 = t135 * t281 - t133;
t155 = t277 * t168;
t102 = t139 * t281 - t155;
t378 = t194 * t277;
t373 = pkin(4) * t442 + t270 * t271 + t425;
t264 = -t409 - pkin(3);
t371 = t279 * t385;
t369 = g(1) * t187 - g(2) * t189;
t368 = g(1) * t188 - g(2) * t190;
t366 = g(1) * t280 - g(2) * t283;
t232 = pkin(9) * t443;
t365 = -qJ(6) * t443 + t232;
t236 = pkin(9) * t441;
t364 = -qJ(6) * t441 + t236;
t362 = pkin(4) * t277 - t465;
t58 = -pkin(4) * t194 + t431;
t179 = t194 * qJ(5);
t59 = t179 + t86;
t360 = t277 * t59 - t281 * t58;
t358 = t277 * t86 + t281 * t85;
t356 = pkin(5) * t442 + t373;
t355 = t461 - t463;
t54 = t114 * t211 + t151 * t194;
t354 = -t163 * t200 - t462;
t350 = t454 + t456;
t349 = qJ(6) * t150 - qJD(6) * t212;
t348 = t58 * t200 + t428 + t67;
t347 = t127 * t420 - t85 * t200 + t428;
t346 = -t85 * t451 - t86 * t452 + t14 - t397;
t344 = -t265 - t425;
t26 = t101 * t281 - t400;
t342 = -pkin(9) * qJD(4) * t194 - t487;
t341 = -t281 * t498 - t271;
t206 = t264 - t363;
t340 = -0.2e1 * pkin(1) * t417 - pkin(7) * qJDD(2);
t339 = -t188 * pkin(4) - qJ(5) * t187 - t434;
t25 = -t168 * t420 + t406;
t335 = t190 * pkin(4) + qJ(5) * t189 + t399;
t330 = t127 * t419 + t86 * t200 + t66 * t277 - t398;
t329 = t163 * t378 - t476;
t51 = qJ(6) * t163 + t86;
t327 = t165 * t375 - t263 * t83;
t323 = -t59 * t200 - t74 * t451 + t398 - t480;
t322 = t279 * t367 - t486;
t321 = -t357 + t390;
t320 = -t277 * t375 - t389;
t319 = t83 - t458;
t286 = qJD(2) ^ 2;
t317 = 0.2e1 * qJDD(1) * pkin(1) - pkin(7) * t286 + t366;
t316 = pkin(1) * t287 + t367 - t467;
t315 = -t224 * t198 + t397 - t69;
t314 = -t59 * t452 - t397 + t526 + (t419 + t451) * t58;
t313 = -t185 * t277 - t354;
t40 = t179 + t51;
t312 = -t200 * t40 + t451 * t48 + t398 - t525;
t311 = t224 * t200 - t374 + t506;
t310 = (-g(1) * t344 + t488) * t280;
t24 = t163 * t337 + t449 * t84;
t308 = -qJD(4) * t360 + t526;
t307 = -qJD(4) * t358 - t16 * t277 + t14;
t32 = -t194 * t498 + t432;
t306 = -g(3) * t442 + t200 * t32 - t48 * t452 + t428 + t523;
t304 = t165 * t74 - t309;
t303 = g(1) * t190 + g(2) * t188 + g(3) * t445 - t15;
t1 = -qJD(6) * t165 + t10 + t482 - t493;
t2 = t8 + t521;
t301 = t40 * t420 + (-qJD(4) * t32 - t2) * t281 + (t198 * t40 - t1) * t277 - t32 * t451 + t397;
t300 = -g(1) * (-pkin(3) * t444 + t236) - g(2) * (-pkin(3) * t446 + t232) - g(3) * t425;
t299 = t194 * t85 + t303;
t295 = (g(3) * qJ(6) + t367 * (pkin(3) - t341)) * t269;
t294 = -t361 - t517;
t292 = -qJDD(4) + t294 + t455;
t291 = t269 * t367 * t410 - g(1) * t236 - g(2) * t232 - g(3) * t373;
t272 = t281 * pkin(5);
t227 = qJ(5) * t445;
t222 = t484 * t277;
t209 = t433 * t277;
t207 = t272 + t410;
t195 = -qJDD(1) * t265 + t253;
t178 = t272 - t206;
t116 = -t198 ^ 2 + t200 ^ 2;
t109 = pkin(4) * t165 + t466;
t106 = t212 * t362 - t510;
t100 = t294 + t517;
t99 = t198 * t413 + t296;
t93 = -t212 * t528 + t510;
t89 = -pkin(4) * t211 - t102;
t87 = -t165 * t498 - t466;
t78 = -t94 - t494;
t75 = pkin(9) * t476;
t73 = -t91 - t494;
t71 = qJ(6) * t449 + t88;
t57 = t155 + (-qJ(6) * t212 - t139) * t281 - t498 * t211;
t33 = t194 * t378 + t354;
t29 = t281 * t379 - t477;
t27 = -t362 * t150 + (qJD(4) * t363 - t418) * t212 + t108;
t23 = -t165 * t336 - t448 * t83;
t22 = t528 * t150 + (qJD(4) * t341 + t418) * t212 - t108;
t21 = -pkin(4) * t151 - t26;
t20 = t25 + t514;
t17 = qJ(6) * t391 + (-qJD(4) * t168 - t349) * t277 + t406 + t514;
t13 = t212 * t258 - t498 * t151 + (-t101 + t349) * t281 + t400;
t3 = [0, 0, 0, 0, 0, qJDD(1), t366, t367, 0, 0, qJDD(1) * t274 + 0.2e1 * t371, 0.2e1 * t279 * t414 - 0.2e1 * t417 * t424, qJDD(2) * t279 + t282 * t286, qJDD(1) * t275 - 0.2e1 * t371, qJDD(2) * t282 - t279 * t286, 0, t279 * t340 + t282 * t317, -t279 * t317 + t282 * t340, 0.2e1 * t423 * t467 - t367, -g(1) * (-pkin(1) * t280 + pkin(7) * t283) - g(2) * (pkin(1) * t283 + pkin(7) * t280) + (pkin(7) ^ 2 * t423 + pkin(1) ^ 2) * qJDD(1), -t200 * t150 + t212 * t296, -t212 * t115 + t150 * t198 - t200 * t151 - t211 * t296, -t150 * t413 + t212 * t412, t115 * t211 + t151 * t198, -t151 * t413 - t211 * t412, 0, -t108 * t413 - t265 * t115 - t224 * t151 + t195 * t211 + t198 * t408 + t270 * t366 + t412 * t510, -t107 * t413 + t224 * t150 - t168 * t412 + t195 * t212 + t200 * t408 - t265 * t296 - t426, -t107 * t198 + t108 * t200 - t168 * t115 + t140 * t150 - t141 * t151 - t69 * t211 + t212 * t374 - t296 * t510 - t367, t69 * t168 + t141 * t107 - t374 * t510 - t140 * t108 - t195 * t265 - t224 * t408 - g(1) * (-t265 * t280 - t434) - g(2) * (-t280 * t284 + t229) t23, t527, -t504, t24, -t503, t54, t102 * t114 + t108 * t163 + t127 * t337 + t151 * t85 + t16 * t211 + t194 * t26 + t449 * t66 - t510 * t84 + t368, -t103 * t114 + t108 * t165 - t127 * t336 - t15 * t211 - t151 * t86 - t194 * t25 + t448 * t66 + t510 * t83 - t369, t102 * t83 - t103 * t84 - t163 * t25 - t165 * t26 + t358 * t150 + (-t15 * t277 - t16 * t281 + (t277 * t85 - t281 * t86) * qJD(4)) * t212 + t426, g(1) * t434 - g(2) * t399 + t16 * t102 + t15 * t103 + t127 * t108 + t86 * t25 + t85 * t26 - t510 * t66 + t310, t23, -t504, -t527, t54, t503, t24, -t74 * t460 - t10 * t211 + t106 * t84 - t114 * t89 - t151 * t58 + t163 * t27 - t194 * t21 + (t401 + t480) * t212 + t368, -t163 * t20 + t165 * t21 - t83 * t89 - t84 * t88 + t360 * t150 + (t10 * t281 - t277 * t8 + (-t277 * t58 - t281 * t59) * qJD(4)) * t212 + t426, t74 * t459 + t106 * t83 + t114 * t88 + t151 * t59 - t165 * t27 + t194 * t20 + t211 * t8 + (-t18 * t281 + t67) * t212 + t369, -g(1) * t339 - g(2) * t335 + t10 * t89 + t18 * t106 + t59 * t20 + t58 * t21 + t74 * t27 + t8 * t88 + t310, t23, -t527, t504, t24, -t503, t54, -t1 * t211 - t114 * t57 - t13 * t194 - t151 * t32 - t163 * t22 + t212 * t525 + t48 * t460 - t84 * t93 + t368, t114 * t71 + t151 * t40 + t165 * t22 + t17 * t194 + t2 * t211 + t212 * t523 - t48 * t459 - t83 * t93 + t369, -t13 * t165 + t163 * t17 + t57 * t83 + t71 * t84 + (-t277 * t40 + t281 * t32) * t150 + (-t1 * t281 + t2 * t277 + (t277 * t32 + t281 * t40) * qJD(4)) * t212 - t426, t2 * t71 + t40 * t17 + t1 * t57 + t32 * t13 + t6 * t93 + t48 * t22 - g(1) * (-pkin(5) * t188 + t339) - g(2) * (pkin(5) * t190 - qJ(6) * t444 + t335) + (-g(1) * (qJ(6) * t269 + t344) + t488) * t280; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t402, t424 * t287, t415, t402, t414, qJDD(2), t279 * t316 - t486, g(3) * t279 + t282 * t316, 0, 0, t450, t116, t99, -t450, t100, t412, t145 * t413 + (-qJD(3) * t377 - t198 * t422 + t412 * t497) * pkin(2) + t311, t146 * t413 + (-t200 * t422 - t278 * t412 - t387 * t413) * pkin(2) + t315, -t115 * t496 - t296 * t409 + (t141 + t370) * t200 + (-t140 + t146 - t375) * t198, t140 * t145 - t141 * t146 + (-t497 * t374 - t486 + t278 * t69 + (-t140 * t278 + t141 * t497) * qJD(3) + (qJD(1) * t224 + t367) * t279) * pkin(2), t29, -t11, t36, t329, t313, -t453, t264 * t84 + (-t66 - t487) * t281 + t355 * t277 + t370 * t163 + (-t91 + t320) * t194 + t347, -t264 * t83 + t355 * t281 + t370 * t165 + (t92 + t321) * t194 + t330, t92 * t163 + t91 * t165 + (t165 * t263 - t85) * t419 + (-t16 + (-t86 + t457) * qJD(4) + t327) * t277 + t346 + t522, t66 * t264 - t86 * t92 - t85 * t91 - t127 * t145 + ((t127 * t278 + t394 * t86 - t395 * t85) * qJD(3) + t322) * pkin(2) + t307 * t263 + t300, t29, t36, t11, -t453, t33, t329, t206 * t84 + (-t18 - t487) * t281 + (-t463 + t478) * t277 + t471 * t163 + (t73 + t320) * t194 + t348, t72 * t163 + (-t73 + t389) * t165 + ((-t59 + t457) * qJD(4) + t327) * t277 + t314 + t522, t206 * t83 + (-qJD(4) * t74 + t463) * t281 - t471 * t165 + (-t72 - t321) * t194 + t323, t18 * t206 - t59 * t72 - t58 * t73 + t471 * t74 + ((t394 * t59 + t395 * t58) * qJD(3) + t322) * pkin(2) + t308 * t263 + t291, t29, t11, -t36, t329, t313, -t453, -t114 * t209 - t163 * t473 - t178 * t84 - t194 * t474 + t306, t114 * t210 + t165 * t473 - t178 * t83 + t194 * t475 + t312, t163 * t475 - t165 * t474 + t209 * t83 + t210 * t84 + t301, t2 * t210 + t1 * t209 + t6 * t178 - g(1) * (-t283 * t495 + t364) - g(2) * (-t280 * t495 + t365) - g(3) * (t356 + t485) + t473 * t48 + t475 * t40 + t474 * t32 + t295; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t450, t116, t99, -t450, t100, t412, t141 * t413 + t311, t140 * t413 + t315, 0, 0, t29, -t11, t36, t329, t313, -t453, -pkin(3) * t84 - t141 * t163 - t194 * t94 + (t461 - t492) * t277 + (t342 - t66) * t281 + t347, pkin(3) * t83 + t127 * t451 - t141 * t165 + t194 * t95 + t330 + t524, t163 * t95 + t165 * t94 - t75 + (-pkin(9) * t83 - t16) * t277 + (pkin(9) * t350 - t358) * qJD(4) + t346, -t66 * pkin(3) + pkin(9) * t307 - t127 * t141 - t85 * t94 - t86 * t95 + t300, t29, t36, t11, -t453, t33, t329, t194 * t78 - t410 * t84 + (t478 - t492) * t277 + t469 * t163 + (-t18 + t342) * t281 + t348, -t59 * t420 + t163 * t76 - t165 * t78 - t75 + (qJD(4) * t350 - t477) * pkin(9) + t314, -t165 * t469 - t194 * t76 - t410 * t83 + t323 - t401 - t524, pkin(9) * t308 - t18 * t410 + t469 * t74 - t58 * t78 - t59 * t76 + t291, t29, t11, -t36, t329, t313, -t453, -t114 * t222 - t163 * t472 - t194 * t468 - t207 * t84 + t306, t114 * t223 + t165 * t472 + t194 * t470 - t207 * t83 + t312, t163 * t470 - t165 * t468 + t222 * t83 + t223 * t84 + t301, -g(1) * t364 - g(2) * t365 - g(3) * t356 + t1 * t222 + t2 * t223 + t6 * t207 + t32 * t468 + t40 * t470 + t472 * t48 + t295; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t455, t508, -t319, -t455, -t532, t114, -t127 * t165 + t318 + t479, t127 * t163 + t299, 0, 0, t455, -t319, -t508, t114, t532, -t455, -t109 * t163 + t113 - t304 + t479, pkin(4) * t83 - t483 + (t59 - t86) * t165 + (t58 - t431) * t163, t109 * t165 - t163 * t74 - t299 + t515, t8 * qJ(5) - t10 * pkin(4) - t74 * t109 - t58 * t86 - g(1) * t382 - g(2) * t383 - g(3) * (-pkin(4) * t447 + t227) + t431 * t59, t455, -t508, t319, -t455, -t532, t114 (pkin(5) + t498) * t114 + t163 * t87 + t194 * t51 + t505, t163 * t48 - t165 * t87 - t194 * t50 - t303 + t515 + t521, t483 - t498 * t83 + (-t40 + t51) * t165 + (-t32 + t432) * t163, t2 * qJ(5) - t1 * t498 - t32 * t51 - t48 * t87 - g(1) * (-pkin(5) * t189 + t382) - g(2) * (-pkin(5) * t187 + t383) - g(3) * (-t269 * t404 + t227) + t432 * t40; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t292, -t319, t511, -t194 * t59 + t304, 0, 0, 0, 0, 0, 0, t292, t511, t319, -t194 * t40 - t493 - t505; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t531, -t519, -t499 - t500, -t163 * t40 + t165 * t32 + t506 + t6;];
tau_reg  = t3;