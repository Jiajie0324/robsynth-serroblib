% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRRPRR10
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d5,d6]';
% 
% Output:
% tau_reg [6x35]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 19:23
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRPRR10_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR10_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR10_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRR10_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRR10_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRR10_invdynJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 19:22:01
% EndTime: 2019-03-09 19:22:21
% DurationCPUTime: 9.40s
% Computational Cost: add. (7660->635), mult. (16578->821), div. (0->0), fcn. (11983->12), ass. (0->290)
t278 = cos(qJ(3));
t378 = qJD(3) * t278;
t279 = cos(qJ(2));
t385 = qJD(1) * t279;
t493 = t278 * t385 - t378;
t273 = sin(qJ(3));
t364 = t273 * t385;
t380 = qJD(3) * t273;
t492 = t364 - t380;
t274 = sin(qJ(2));
t310 = pkin(2) * t279 + pkin(8) * t274 + pkin(1);
t182 = t310 * qJD(1);
t254 = pkin(7) * t385;
t223 = qJD(2) * pkin(8) + t254;
t130 = -t182 * t278 - t223 * t273;
t372 = qJD(4) - t130;
t443 = pkin(8) - pkin(9);
t225 = t443 * t278;
t366 = -pkin(7) * t273 - pkin(3);
t403 = t278 * t279;
t292 = -pkin(9) * t403 + (-pkin(4) + t366) * t274;
t331 = pkin(2) * t274 - pkin(8) * t279;
t207 = t331 * qJD(1);
t411 = t207 * t278;
t491 = -qJD(1) * t292 + qJD(3) * t225 + t411;
t373 = t278 * qJD(2);
t386 = qJD(1) * t274;
t195 = t273 * t386 - t373;
t363 = t278 * t386;
t383 = qJD(2) * t273;
t197 = t363 + t383;
t272 = sin(qJ(5));
t277 = cos(qJ(5));
t124 = t195 * t272 + t197 * t277;
t271 = sin(qJ(6));
t276 = cos(qJ(6));
t316 = -t195 * t277 + t197 * t272;
t473 = -t124 * t276 + t271 * t316;
t474 = t124 * t271 + t276 * t316;
t484 = t473 * t474;
t490 = pkin(9) * t197 - t372;
t176 = t273 * t207;
t395 = qJ(4) * t386 + t176;
t405 = t274 * t278;
t406 = t273 * t279;
t489 = (-pkin(7) * t405 + pkin(9) * t406) * qJD(1) + t395 + t443 * t380;
t478 = t473 ^ 2 - t474 ^ 2;
t280 = cos(qJ(1));
t401 = t280 * t273;
t275 = sin(qJ(1));
t404 = t275 * t278;
t173 = t279 * t401 - t404;
t402 = t278 * t280;
t174 = t273 * t275 + t279 * t402;
t109 = t173 * t277 - t174 * t272;
t407 = t273 * t277;
t162 = t272 * t405 - t274 * t407;
t240 = -qJD(3) + t385;
t444 = pkin(3) + pkin(4);
t63 = t240 * t444 - t490;
t228 = t240 * qJ(4);
t131 = -t182 * t273 + t223 * t278;
t84 = pkin(9) * t195 + t131;
t70 = -t228 + t84;
t29 = t272 * t63 + t277 * t70;
t370 = qJD(1) * qJD(2);
t352 = t279 * t370;
t369 = t274 * qJDD(1);
t379 = qJD(3) * t274;
t480 = qJD(1) * t379 - qJDD(2);
t112 = -qJD(3) * t373 + (-t352 - t369) * t278 + t480 * t273;
t257 = t279 * qJDD(1);
t460 = -t274 * t370 + t257;
t193 = qJDD(3) - t460;
t210 = t331 * qJD(2);
t138 = qJD(1) * t210 - qJDD(1) * t310;
t166 = pkin(7) * t460 + qJDD(2) * pkin(8);
t336 = -t138 * t278 + t166 * t273 - t182 * t380 + t223 * t378;
t311 = qJDD(4) + t336;
t22 = pkin(9) * t112 - t193 * t444 + t311;
t113 = t273 * (qJD(2) * (qJD(3) + t385) + t369) + t480 * t278;
t180 = t193 * qJ(4);
t226 = t240 * qJD(4);
t297 = t138 * t273 + t166 * t278 - t182 * t378 - t223 * t380;
t38 = t180 - t226 + t297;
t24 = pkin(9) * t113 + t38;
t349 = t22 * t277 - t272 * t24;
t288 = -qJD(5) * t29 + t349;
t171 = t275 * t406 + t402;
t172 = t275 * t403 - t401;
t457 = t171 * t277 - t172 * t272;
t222 = -qJD(2) * pkin(2) + pkin(7) * t386;
t107 = pkin(3) * t195 - qJ(4) * t197 + t222;
t74 = -pkin(4) * t195 - t107;
t488 = -g(1) * t109 - g(2) * t457 + g(3) * t162 - t74 * t124 + t288;
t371 = -qJD(5) - t240;
t481 = qJD(6) - t371;
t376 = qJD(5) * t277;
t377 = qJD(5) * t272;
t35 = -t112 * t277 + t113 * t272 + t195 * t376 - t197 * t377;
t344 = -t112 * t272 - t113 * t277;
t36 = qJD(5) * t124 + t344;
t374 = qJD(6) * t276;
t375 = qJD(6) * t271;
t8 = -t124 * t375 - t271 * t36 + t276 * t35 - t316 * t374;
t477 = t474 * t481 + t8;
t268 = qJ(5) + qJ(6);
t260 = sin(t268);
t261 = cos(t268);
t313 = t260 * t273 + t261 * t278;
t318 = t171 * t260 + t172 * t261;
t28 = -t272 * t70 + t277 * t63;
t485 = pkin(10) * t124;
t18 = t28 - t485;
t16 = -pkin(5) * t371 + t18;
t469 = pkin(10) * t316;
t19 = t29 - t469;
t181 = -qJDD(5) + t193;
t3 = -pkin(5) * t181 - pkin(10) * t35 + t288;
t303 = -t22 * t272 - t24 * t277 - t376 * t63 + t377 * t70;
t5 = -pkin(10) * t36 - t303;
t354 = t16 * t374 - t19 * t375 + t271 * t3 + t276 * t5;
t433 = g(3) * t274;
t47 = pkin(5) * t316 + t74;
t93 = t173 * t260 + t174 * t261;
t476 = g(1) * t93 + g(2) * t318 + t313 * t433 + t47 * t474 - t354;
t287 = qJD(6) * t473 - t271 * t35 - t276 * t36;
t487 = t473 * t481 - t287;
t365 = -t271 * t5 + t276 * t3;
t408 = t273 * t274;
t456 = t171 * t261 - t172 * t260;
t92 = t173 * t261 - t174 * t260;
t486 = g(2) * t456 - t47 * t473 - g(3) * (t260 * t405 - t261 * t408) - t365 + g(1) * t92;
t199 = t272 * t273 + t277 * t278;
t298 = t279 * t199;
t454 = qJD(3) - qJD(5);
t399 = -qJD(1) * t298 + t199 * t454;
t398 = -t272 * t493 + t273 * t376 + t277 * t492 - t278 * t377;
t482 = qJ(4) * t493 - t273 * qJD(4) - t254;
t432 = g(3) * t279;
t328 = g(1) * t280 + g(2) * t275;
t451 = t274 * t328;
t447 = t432 - t451;
t479 = t124 ^ 2 - t316 ^ 2;
t423 = t276 * t19;
t7 = t271 * t16 + t423;
t475 = -qJD(6) * t7 - t486;
t468 = t491 * t277;
t467 = t124 * t316;
t242 = pkin(7) * t406;
t265 = t279 * pkin(3);
t117 = pkin(4) * t279 + t242 + t265 + (-pkin(9) * t274 + t310) * t278;
t243 = pkin(7) * t403;
t389 = -t273 * t310 + t243;
t141 = -qJ(4) * t279 + t389;
t129 = pkin(9) * t408 + t141;
t400 = t117 * t272 + t129 * t277;
t368 = t444 * t273;
t397 = -qJD(3) * t368 + t364 * t444 - t482;
t345 = -qJ(4) * t272 - t277 * t444;
t464 = -qJD(5) * t345 + t272 * t84 + t277 * t490;
t211 = qJ(4) * t277 - t272 * t444;
t463 = -qJD(5) * t211 + t272 * t490 - t277 * t84;
t224 = t443 * t273;
t393 = t224 * t272 + t225 * t277;
t462 = -t224 * t376 + t225 * t377 - t272 * t491 + t277 * t489;
t381 = qJD(2) * t279;
t459 = t273 * t381 + t274 * t378;
t356 = t273 * t379;
t358 = t279 * t373;
t458 = -t356 + t358;
t262 = t273 * qJ(4);
t453 = pkin(3) * t278 + pkin(2) + t262;
t452 = t316 * t371 - t35;
t439 = pkin(8) * t193;
t450 = t107 * t240 + t439;
t110 = t173 * t272 + t174 * t277;
t163 = t199 * t274;
t317 = t171 * t272 + t172 * t277;
t446 = -g(1) * t110 - g(2) * t317 - g(3) * t163 - t316 * t74 - t303;
t445 = t197 ^ 2;
t440 = pkin(3) * t193;
t312 = t272 * t278 - t407;
t127 = t199 * t276 - t271 * t312;
t431 = -qJD(6) * t127 - t271 * t398 + t276 * t399;
t128 = -t199 * t271 - t276 * t312;
t430 = qJD(6) * t128 + t271 * t399 + t276 * t398;
t429 = pkin(5) * t398 + t397;
t426 = pkin(8) * qJD(3);
t425 = t19 * t271;
t97 = -t228 + t131;
t424 = t240 * t97;
t422 = t464 + t485;
t421 = t463 + t469;
t419 = t112 * t273;
t418 = t131 * t240;
t415 = t195 * t240;
t414 = t197 * t195;
t413 = t197 * t240;
t412 = t197 * t278;
t410 = t271 * t272;
t409 = t272 * t276;
t396 = -pkin(3) * t492 + t482;
t394 = t210 * t273 - t310 * t378;
t137 = pkin(3) * t197 + qJ(4) * t195;
t392 = (g(1) * t402 + g(2) * t404) * t274;
t390 = qJ(4) * t358 + qJD(4) * t405;
t266 = t274 ^ 2;
t387 = -t279 ^ 2 + t266;
t384 = qJD(2) * t197;
t382 = qJD(2) * t274;
t367 = qJ(4) * t382 + t394;
t251 = pkin(7) * t369;
t167 = -qJDD(2) * pkin(2) + pkin(7) * t352 + t251;
t361 = t240 * t383;
t360 = t240 * t373;
t357 = t240 * t380;
t326 = -qJD(3) * t243 + t210 * t278 + t310 * t380;
t52 = pkin(9) * t356 + qJD(2) * t292 - t326;
t53 = (-pkin(7) * qJD(2) + pkin(9) * qJD(3)) * t405 + (-qJD(4) + (-pkin(7) * qJD(3) + pkin(9) * qJD(2)) * t273) * t279 + t367;
t347 = -t272 * t53 + t277 * t52;
t343 = t117 * t277 - t129 * t272;
t340 = t224 * t277 - t225 * t272;
t339 = -t278 * t310 - t242;
t338 = t371 ^ 2;
t188 = pkin(4) * t278 + t453;
t335 = -pkin(7) - t368;
t86 = -pkin(4) * t197 - t137;
t101 = pkin(10) * t312 + t340;
t334 = pkin(10) * t398 - qJD(6) * t101 + t462;
t102 = -pkin(10) * t199 + t393;
t333 = -pkin(5) * t386 + pkin(10) * t399 + qJD(5) * t393 + qJD(6) * t102 - t272 * t489 - t468;
t332 = t366 * t274;
t330 = -g(1) * t171 + g(2) * t173;
t329 = g(1) * t172 - g(2) * t174;
t327 = g(1) * t275 - g(2) * t280;
t325 = t277 * t481;
t43 = pkin(5) * t279 - pkin(10) * t163 + t343;
t44 = -pkin(10) * t162 + t400;
t324 = -t271 * t44 + t276 * t43;
t323 = t271 * t43 + t276 * t44;
t95 = pkin(3) * t240 + t372;
t322 = -t273 * t97 + t278 * t95;
t321 = qJD(3) * t222 - t439;
t88 = t162 * t276 + t163 * t271;
t89 = -t162 * t271 + t163 * t276;
t206 = -pkin(5) + t345;
t315 = t206 * t271 + t211 * t276;
t306 = -t240 * t426 + t432;
t39 = pkin(3) * t113 + qJ(4) * t112 - qJD(4) * t197 + t167;
t304 = -0.2e1 * pkin(1) * t370 - pkin(7) * qJDD(2);
t302 = t193 * t273 - t240 * t378;
t301 = t193 * t278 + t357;
t300 = t117 * t376 - t129 * t377 + t272 * t52 + t277 * t53;
t299 = -t306 - t39;
t283 = qJD(1) ^ 2;
t295 = pkin(1) * t283 + t328;
t238 = qJ(4) * t405;
t140 = t274 * t335 + t238;
t25 = -pkin(4) * t113 - t39;
t293 = -t279 * t328 - t433;
t282 = qJD(2) ^ 2;
t291 = 0.2e1 * qJDD(1) * pkin(1) - pkin(7) * t282 + t327;
t290 = g(1) * t173 + g(2) * t171 + g(3) * t408 - t336;
t286 = t107 * t197 + qJDD(4) - t290;
t284 = g(1) * t174 + g(2) * t172 + g(3) * t405 - t130 * t240 - t297;
t65 = (-t278 * t444 - t262) * t379 + t335 * t381 + t390;
t168 = -qJDD(6) + t181;
t156 = -t238 + (pkin(3) * t273 + pkin(7)) * t274;
t142 = t265 - t339;
t139 = pkin(5) * t199 + t188;
t136 = qJD(1) * t332 - t411;
t135 = -pkin(7) * t363 + t395;
t85 = pkin(5) * t162 + t140;
t80 = pkin(3) * t459 + pkin(7) * t381 + qJ(4) * t356 - t390;
t73 = qJD(2) * t332 - t326;
t69 = -t112 - t415;
t68 = -qJD(4) * t279 + (-t274 * t373 - t279 * t380) * pkin(7) + t367;
t67 = t274 * t312 * t454 + qJD(2) * t298;
t66 = qJD(5) * t163 + t272 * t458 - t277 * t459;
t48 = -pkin(5) * t124 + t86;
t40 = t311 - t440;
t30 = pkin(5) * t66 + t65;
t15 = qJD(6) * t89 + t271 * t67 + t276 * t66;
t14 = -qJD(6) * t88 - t271 * t66 + t276 * t67;
t12 = pkin(5) * t36 + t25;
t11 = -pkin(10) * t66 + t300;
t10 = -pkin(5) * t382 - pkin(10) * t67 - qJD(5) * t400 + t347;
t6 = t16 * t276 - t425;
t1 = [qJDD(1), t327, t328, qJDD(1) * t266 + 0.2e1 * t274 * t352, 0.2e1 * t257 * t274 - 0.2e1 * t370 * t387, qJDD(2) * t274 + t279 * t282, qJDD(2) * t279 - t274 * t282, 0, t274 * t304 + t279 * t291, -t274 * t291 + t279 * t304, -t112 * t405 + t197 * t458 (-t195 * t278 - t197 * t273) * t381 + (t419 - t113 * t278 + (t195 * t273 - t412) * qJD(3)) * t274 (t112 - t360) * t279 + (t301 + t384) * t274 (t113 + t361) * t279 + (-qJD(2) * t195 - t302) * t274, -t193 * t279 - t240 * t382, -t326 * t240 + t339 * t193 + ((pkin(7) * t195 + t222 * t273) * qJD(2) + t336) * t279 + (t222 * t378 + t130 * qJD(2) + t167 * t273 + (t113 - t361) * pkin(7)) * t274 + t329, t394 * t240 - t389 * t193 + (t222 * t373 + (-t357 + t384) * pkin(7) + t297) * t279 + (-t222 * t380 - t131 * qJD(2) + t167 * t278 + (-t112 - t360) * pkin(7)) * t274 + t330, t113 * t156 - t142 * t193 + t195 * t80 + t240 * t73 + (t107 * t383 + t40) * t279 + (-qJD(2) * t95 + t107 * t378 + t273 * t39) * t274 + t329, -t112 * t142 - t113 * t141 - t195 * t68 + t197 * t73 + t322 * t381 + (-t273 * t38 + t278 * t40 + (-t273 * t95 - t278 * t97) * qJD(3) + t327) * t274, t112 * t156 + t141 * t193 - t197 * t80 - t240 * t68 + (-t107 * t373 - t38) * t279 + (qJD(2) * t97 + t107 * t380 - t278 * t39) * t274 - t330, t38 * t141 + t97 * t68 + t39 * t156 + t107 * t80 + t40 * t142 + t95 * t73 - g(1) * (-pkin(3) * t172 - qJ(4) * t171) - g(2) * (pkin(3) * t174 + qJ(4) * t173) + (-g(1) * pkin(7) - g(2) * t310) * t280 + (-g(2) * pkin(7) + g(1) * t310) * t275, t124 * t67 + t163 * t35, -t124 * t66 - t162 * t35 - t163 * t36 - t316 * t67, -t124 * t382 - t163 * t181 + t279 * t35 - t371 * t67, t162 * t181 - t279 * t36 + t316 * t382 + t371 * t66, -t181 * t279 + t371 * t382, -t347 * t371 - t343 * t181 + t349 * t279 - t28 * t382 + t65 * t316 + t140 * t36 + t25 * t162 + t74 * t66 + g(1) * t317 - g(2) * t110 + (-t279 * t29 + t371 * t400) * qJD(5), g(1) * t457 - g(2) * t109 + t65 * t124 + t140 * t35 + t25 * t163 + t181 * t400 + t279 * t303 + t29 * t382 + t300 * t371 + t74 * t67, -t14 * t473 + t8 * t89, -t14 * t474 + t15 * t473 + t287 * t89 - t8 * t88, t14 * t481 - t168 * t89 + t279 * t8 + t382 * t473, -t15 * t481 + t168 * t88 + t279 * t287 + t382 * t474, -t168 * t279 - t382 * t481 (t10 * t276 - t11 * t271) * t481 - t324 * t168 + t365 * t279 - t6 * t382 + t30 * t474 - t85 * t287 + t12 * t88 + t47 * t15 + g(1) * t318 - g(2) * t93 + (-t279 * t7 - t323 * t481) * qJD(6) -(qJD(6) * t324 + t10 * t271 + t11 * t276) * t481 + t323 * t168 - t354 * t279 + t7 * t382 - t30 * t473 + t85 * t8 + t12 * t89 + t47 * t14 + g(1) * t456 - g(2) * t92; 0, 0, 0, -t274 * t283 * t279, t387 * t283, t369, t257, qJDD(2), t274 * t295 - t251 - t432, t433 + (-pkin(7) * qJDD(1) + t295) * t279, -t240 * t412 - t419 (-t112 + t415) * t278 + (-t113 + t413) * t273 (-t197 * t274 + t240 * t403) * qJD(1) + t302 (t195 * t274 - t240 * t406) * qJD(1) + t301, t240 * t386, -pkin(2) * t113 + t321 * t273 + (-t432 - t167 + (t207 + t426) * t240) * t278 + (-t222 * t406 - t130 * t274 + (-t195 * t279 + t240 * t408) * pkin(7)) * qJD(1) + t392, pkin(2) * t112 - t176 * t240 + t321 * t278 + (-t222 * t403 + t131 * t274 + (-t197 * t279 + t240 * t405) * pkin(7)) * qJD(1) + (t167 + t306 - t451) * t273, -t113 * t453 - t136 * t240 + t396 * t195 - t273 * t450 + t299 * t278 + t95 * t386 + t392, t135 * t195 - t136 * t197 + (t38 - t240 * t95 + (qJD(3) * t197 - t113) * pkin(8)) * t278 + (t40 + t424 + (qJD(3) * t195 - t112) * pkin(8)) * t273 + t293, -t97 * t386 - t112 * t453 + t135 * t240 - t396 * t197 + t450 * t278 + (t299 + t451) * t273, -t97 * t135 - t95 * t136 + t396 * t107 + (qJD(3) * t322 + t40 * t273 + t38 * t278 + t293) * pkin(8) + (-t39 - t447) * t453, t124 * t399 - t312 * t35, -t124 * t398 - t199 * t35 + t312 * t36 - t316 * t399, t124 * t386 + t181 * t312 - t371 * t399, t181 * t199 - t316 * t386 + t371 * t398, -t371 * t386, -t340 * t181 + t188 * t36 + t398 * t74 - g(3) * t298 - (-t225 * t376 + (-qJD(5) * t224 + t489) * t272 + t468) * t371 + t397 * t316 + t28 * t386 + (t25 + t451) * t199, t397 * t124 + t393 * t181 + t188 * t35 - t29 * t386 - t371 * t462 + t399 * t74 + (-t25 + t447) * t312, t128 * t8 - t431 * t473, -t127 * t8 + t128 * t287 + t430 * t473 - t431 * t474, -t128 * t168 - t386 * t473 + t431 * t481, t127 * t168 - t386 * t474 - t430 * t481, t481 * t386 -(t101 * t276 - t102 * t271) * t168 - t139 * t287 + t12 * t127 + t429 * t474 + t430 * t47 + (t271 * t334 - t276 * t333) * t481 + t6 * t386 - t447 * t313 (t101 * t271 + t102 * t276) * t168 + t139 * t8 + t12 * t128 - t429 * t473 + t431 * t47 + (t271 * t333 + t276 * t334) * t481 - t7 * t386 + t447 * (t260 * t278 - t261 * t273); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t414, -t195 ^ 2 + t445, t69, -t113 - t413, t193, -t197 * t222 + t290 - t418, t195 * t222 + t284, -t137 * t195 - t286 - t418 + 0.2e1 * t440, pkin(3) * t112 - qJ(4) * t113 + (-t131 + t97) * t197 + (t95 - t372) * t195, -t107 * t195 + t137 * t197 + 0.2e1 * t180 - 0.2e1 * t226 - t284, t38 * qJ(4) - t40 * pkin(3) - t107 * t137 - t95 * t131 - g(1) * (-pkin(3) * t173 + qJ(4) * t174) - g(2) * (-pkin(3) * t171 + qJ(4) * t172) - g(3) * (-pkin(3) * t408 + t238) + t372 * t97, -t467, -t479, t452, t124 * t371 + t36, t181, -t181 * t345 - t316 * t86 - t371 * t463 - t488, -t86 * t124 + t211 * t181 - t371 * t464 + t446, t484, -t478, -t477, t487, t168 -(t206 * t276 - t211 * t271) * t168 - t48 * t474 + (t271 * t422 + t276 * t421) * t481 + (-t315 * t481 + t7) * qJD(6) + t486, t315 * t168 + t48 * t473 + ((-qJD(6) * t206 + t422) * t276 + (qJD(6) * t211 - t421) * t271) * t481 - t476; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t193 + t414, t69, -t240 ^ 2 - t445, t286 + t424 - t440, 0, 0, 0, 0, 0, -t181 * t277 - t197 * t316 - t272 * t338, -t124 * t197 + t181 * t272 - t277 * t338, 0, 0, 0, 0, 0 -(t276 * t277 - t410) * t168 - t197 * t474 + (-t271 * t325 - t409 * t481) * t481 (t271 * t277 + t409) * t168 + t197 * t473 + (-t276 * t325 + t410 * t481) * t481; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t467, t479, -t452, -t344 + (-qJD(5) - t371) * t124, -t181, -t29 * t371 + t488, -t28 * t371 - t446, -t484, t478, t477, -t487, -t168 -(-t18 * t271 - t423) * t481 + (-t124 * t474 - t168 * t276 - t375 * t481) * pkin(5) + t475 (t18 * t276 - t425) * t481 + (t124 * t473 + t168 * t271 - t374 * t481) * pkin(5) + t476; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t484, t478, t477, -t487, -t168, t481 * t7 + t475, t481 * t6 + t476;];
tau_reg  = t1;