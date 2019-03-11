% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRRRPP4
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,theta5]';
% 
% Output:
% tau_reg [6x30]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 21:04
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRRRPP4_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP4_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP4_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRRPP4_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRRPP4_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP4_invdynJ_fixb_regmin_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 21:02:39
% EndTime: 2019-03-09 21:02:59
% DurationCPUTime: 9.31s
% Computational Cost: add. (14523->630), mult. (32505->798), div. (0->0), fcn. (23013->14), ass. (0->316)
t295 = sin(qJ(4));
t296 = sin(qJ(3));
t299 = cos(qJ(4));
t300 = cos(qJ(3));
t216 = t295 * t296 - t299 * t300;
t453 = qJD(3) + qJD(4);
t147 = t453 * t216;
t301 = cos(qJ(2));
t322 = t216 * t301;
t162 = qJD(1) * t322;
t479 = t147 - t162;
t217 = t295 * t300 + t296 * t299;
t148 = t453 * t217;
t391 = qJD(1) * t301;
t161 = t217 * t391;
t400 = t148 - t161;
t297 = sin(qJ(2));
t378 = t297 * qJDD(1);
t271 = pkin(7) * t378;
t379 = qJD(1) * qJD(2);
t362 = t301 * t379;
t185 = -qJDD(2) * pkin(2) + pkin(7) * t362 + t271;
t258 = -qJD(3) + t391;
t288 = g(3) * t301;
t298 = sin(qJ(1));
t302 = cos(qJ(1));
t342 = g(1) * t302 + g(2) * t298;
t314 = -t342 * t297 + t288;
t478 = -qJD(3) * pkin(8) * t258 + t185 + t314;
t292 = qJ(3) + qJ(4);
t279 = pkin(10) + t292;
t264 = cos(t279);
t263 = sin(t279);
t406 = t302 * t263;
t409 = t298 * t301;
t157 = t264 * t409 - t406;
t407 = t301 * t302;
t159 = t263 * t298 + t264 * t407;
t278 = t301 * qJDD(1);
t456 = -t297 * t379 + t278;
t210 = qJDD(3) - t456;
t202 = qJDD(4) + t210;
t380 = t300 * qJD(2);
t384 = qJD(3) * t297;
t464 = -qJD(1) * t384 + qJDD(2);
t123 = qJD(3) * t380 + (t362 + t378) * t300 + t464 * t296;
t344 = pkin(2) * t297 - pkin(8) * t301;
t225 = t344 * qJD(2);
t232 = -pkin(2) * t301 - pkin(8) * t297 - pkin(1);
t149 = qJD(1) * t225 + qJDD(1) * t232;
t141 = t300 * t149;
t203 = t232 * qJD(1);
t273 = pkin(7) * t391;
t240 = qJD(2) * pkin(8) + t273;
t145 = t203 * t296 + t240 * t300;
t184 = pkin(7) * t456 + qJDD(2) * pkin(8);
t56 = t210 * pkin(3) - t123 * pkin(9) - qJD(3) * t145 - t296 * t184 + t141;
t124 = t296 * (qJD(2) * (qJD(3) + t391) + t378) - t464 * t300;
t383 = qJD(3) * t300;
t385 = qJD(3) * t296;
t321 = t296 * t149 + t300 * t184 + t203 * t383 - t240 * t385;
t63 = -pkin(9) * t124 + t321;
t360 = -t295 * t63 + t299 * t56;
t144 = t300 * t203 - t240 * t296;
t388 = qJD(2) * t296;
t392 = qJD(1) * t297;
t215 = t300 * t392 + t388;
t111 = -pkin(9) * t215 + t144;
t104 = -pkin(3) * t258 + t111;
t372 = t296 * t392;
t213 = t372 - t380;
t112 = -pkin(9) * t213 + t145;
t110 = t299 * t112;
t71 = t104 * t295 + t110;
t310 = -qJD(4) * t71 + t360;
t335 = t213 * t295 - t299 * t215;
t381 = qJD(4) * t299;
t382 = qJD(4) * t295;
t66 = t299 * t123 - t295 * t124 - t213 * t381 - t215 * t382;
t12 = t202 * pkin(4) - t66 * qJ(5) + qJD(5) * t335 + t310;
t136 = t299 * t213 + t215 * t295;
t309 = qJD(4) * t335 - t295 * t123 - t299 * t124;
t351 = -t104 * t381 + t112 * t382 - t295 * t56 - t299 * t63;
t15 = qJ(5) * t309 - qJD(5) * t136 - t351;
t293 = sin(pkin(10));
t294 = cos(pkin(10));
t4 = t293 * t12 + t294 * t15;
t376 = t202 * qJ(6) + t4;
t239 = -qJD(2) * pkin(2) + pkin(7) * t392;
t154 = pkin(3) * t213 + t239;
t100 = pkin(4) * t136 + qJD(5) + t154;
t458 = -t136 * t293 - t294 * t335;
t85 = t294 * t136 - t293 * t335;
t40 = pkin(5) * t85 - qJ(6) * t458 + t100;
t418 = t264 * t297;
t477 = -g(1) * t159 - g(2) * t157 - g(3) * t418 - t40 * t85 + t376;
t476 = pkin(5) * t458 + qJ(6) * t85;
t248 = -qJD(4) + t258;
t467 = qJ(5) * t335;
t108 = t295 * t112;
t70 = t299 * t104 - t108;
t54 = t70 + t467;
t49 = -pkin(4) * t248 + t54;
t468 = qJ(5) * t136;
t55 = t71 - t468;
t50 = t294 * t55;
t21 = t293 * t49 + t50;
t19 = -qJ(6) * t248 + t21;
t474 = t19 * t458;
t473 = t21 * t458;
t445 = pkin(3) * t296;
t345 = pkin(3) * t385 - t391 * t445 - t273;
t472 = pkin(4) * t400 + t345;
t156 = t263 * t409 + t264 * t302;
t158 = -t298 * t264 + t301 * t406;
t3 = t294 * t12 - t293 * t15;
t2 = -t202 * pkin(5) + qJDD(6) - t3;
t437 = g(3) * t297;
t451 = -g(1) * t158 - g(2) * t156 - t263 * t437 + t40 * t458 + t2;
t471 = pkin(4) * t335;
t469 = t248 * t85;
t428 = t293 * t479 - t400 * t294;
t427 = t400 * t293 + t294 * t479;
t466 = t335 * t136;
t386 = qJD(2) * t301;
t365 = t296 * t386;
t465 = t297 * t383 + t365;
t463 = -t136 ^ 2 + t335 ^ 2;
t462 = -t136 * t248 + t66;
t281 = sin(t292);
t282 = cos(t292);
t167 = t281 * t302 - t282 * t409;
t169 = t281 * t298 + t282 * t407;
t461 = g(1) * t169 - g(2) * t167 + t136 * t154 + t282 * t437 + t351;
t416 = t282 * t302;
t166 = t281 * t409 + t416;
t374 = t281 * t407;
t417 = t282 * t298;
t168 = -t374 + t417;
t460 = -g(1) * t168 + g(2) * t166 + t154 * t335 + t281 * t437 + t310;
t459 = t248 * t335 + t309;
t457 = t458 ^ 2;
t447 = pkin(8) + pkin(9);
t373 = qJD(3) * t447;
t224 = t300 * t373;
t198 = t299 * t224;
t223 = t296 * t373;
t241 = t447 * t296;
t242 = t447 * t300;
t396 = -t295 * t241 + t299 * t242;
t307 = t147 * qJ(5) - qJD(4) * t396 - t217 * qJD(5) + t295 * t223 - t198;
t408 = t300 * t301;
t332 = pkin(3) * t297 - pkin(9) * t408;
t222 = t344 * qJD(1);
t395 = pkin(7) * t372 + t300 * t222;
t122 = qJD(1) * t332 + t395;
t117 = t299 * t122;
t195 = t296 * t222;
t411 = t297 * t300;
t413 = t296 * t301;
t142 = t195 + (-pkin(7) * t411 - pkin(9) * t413) * qJD(1);
t72 = pkin(4) * t392 + qJ(5) * t162 - t295 * t142 + t117;
t320 = -t299 * t223 - t295 * t224 - t241 * t381 - t242 * t382;
t73 = -qJ(5) * t148 - qJD(5) * t216 + t320;
t403 = t295 * t122 + t299 * t142;
t75 = -qJ(5) * t161 + t403;
t433 = (-t307 + t72) * t294 + (t73 - t75) * t293;
t356 = -t111 * t295 - t110;
t327 = t356 + t468;
t377 = pkin(3) * t293 * t295;
t404 = t299 * t111 - t108;
t59 = t404 + t467;
t424 = -qJD(4) * t377 - t293 * t327 + (pkin(3) * t381 - t59) * t294;
t175 = t217 * t297;
t212 = t300 * t232;
t442 = pkin(7) * t296;
t143 = -pkin(9) * t411 + t212 + (-pkin(3) - t442) * t301;
t260 = pkin(7) * t408;
t394 = t296 * t232 + t260;
t414 = t296 * t297;
t150 = -pkin(9) * t414 + t394;
t402 = t295 * t143 + t299 * t150;
t455 = -t296 * t384 + t301 * t380;
t31 = t293 * t66 - t294 * t309;
t32 = t293 * t309 + t294 * t66;
t452 = pkin(5) * t31 - qJ(6) * t32 - qJD(6) * t458;
t450 = t301 * t342 + t437;
t448 = -0.2e1 * pkin(1);
t444 = pkin(4) * t281;
t443 = pkin(5) * t263;
t441 = g(1) * t298;
t438 = g(2) * t302;
t26 = t293 * t54 + t50;
t436 = t26 * t458;
t285 = t300 * pkin(3);
t435 = pkin(2) + t285;
t176 = t216 * t297;
t387 = qJD(2) * t297;
t397 = t300 * t225 + t387 * t442;
t92 = t332 * qJD(2) + (-t260 + (pkin(9) * t297 - t232) * t296) * qJD(3) + t397;
t398 = t296 * t225 + t232 * t383;
t97 = -t465 * pkin(9) + (-t297 * t380 - t301 * t385) * pkin(7) + t398;
t359 = -t295 * t97 + t299 * t92;
t98 = -qJD(2) * t322 - t175 * t453;
t23 = pkin(4) * t387 - t98 * qJ(5) - qJD(4) * t402 + t176 * qJD(5) + t359;
t323 = t143 * t381 - t150 * t382 + t295 * t92 + t299 * t97;
t99 = -t382 * t414 + (t411 * t453 + t365) * t299 + t455 * t295;
t28 = -qJ(5) * t99 - qJD(5) * t175 + t323;
t9 = t293 * t23 + t294 * t28;
t434 = pkin(5) * t392 + t433;
t38 = t293 * t72 + t294 * t75;
t33 = qJ(6) * t392 + t38;
t36 = t293 * t307 + t294 * t73;
t432 = t36 - t33;
t134 = -t216 * t293 + t217 * t294;
t431 = -pkin(5) * t428 + qJ(6) * t427 - qJD(6) * t134 + t472;
t354 = t299 * t143 - t150 * t295;
t77 = -pkin(4) * t301 + qJ(5) * t176 + t354;
t82 = -qJ(5) * t175 + t402;
t46 = t293 * t77 + t294 * t82;
t429 = t293 * t55;
t426 = qJD(6) + t424;
t415 = t294 * t295;
t425 = -t293 * t59 + t294 * t327 + (t293 * t299 + t415) * qJD(4) * pkin(3);
t422 = t123 * t296;
t421 = t213 * t258;
t420 = t215 * t258;
t419 = t215 * t300;
t412 = t297 * t298;
t410 = t297 * t302;
t228 = pkin(4) * t282 + t285;
t221 = pkin(2) + t228;
t201 = t301 * t221;
t227 = t444 + t445;
t208 = t302 * t227;
t27 = t294 * t54 - t429;
t405 = qJD(6) - t27;
t399 = -t301 * t208 + t298 * t228;
t269 = pkin(3) * t299 + pkin(4);
t180 = pkin(3) * t415 + t293 * t269;
t226 = pkin(3) * t414 + t297 * pkin(7);
t290 = t297 ^ 2;
t393 = -t301 ^ 2 + t290;
t390 = qJD(2) * t213;
t389 = qJD(2) * t215;
t155 = pkin(3) * t465 + pkin(7) * t386;
t371 = t258 * t380;
t369 = t258 * t385;
t366 = t258 * t383;
t364 = t425 * t458;
t358 = -t156 * pkin(5) + t157 * qJ(6);
t357 = -t158 * pkin(5) + qJ(6) * t159;
t353 = -t227 * t409 - t228 * t302;
t352 = -t299 * t241 - t242 * t295;
t350 = -qJD(3) * t203 - t184;
t348 = pkin(4) * t216 - t435;
t261 = g(1) * t412;
t347 = -g(2) * t410 + t261;
t346 = pkin(4) * t175 + t226;
t343 = pkin(3) * t215 - t471;
t341 = -t85 ^ 2 - t457;
t340 = t240 * t383 - t141;
t339 = pkin(5) * t264 + qJ(6) * t263;
t8 = t23 * t294 - t28 * t293;
t20 = t294 * t49 - t429;
t45 = -t293 * t82 + t294 * t77;
t338 = -pkin(8) * t210 + qJD(3) * t239;
t333 = pkin(4) * t99 + t155;
t179 = t269 * t294 - t377;
t328 = -pkin(7) * qJDD(2) + t379 * t448;
t326 = -qJ(5) * t217 + t352;
t325 = t296 * t210 - t366;
t324 = t300 * t210 + t369;
t304 = qJD(1) ^ 2;
t319 = pkin(1) * t304 + t342;
t103 = t124 * pkin(3) + t185;
t303 = qJD(2) ^ 2;
t318 = pkin(7) * t303 + qJDD(1) * t448 + t438;
t289 = -qJ(5) - t447;
t317 = t302 * pkin(1) + t221 * t407 - t289 * t410 + (pkin(7) + t227) * t298;
t316 = t208 + t289 * t412 + t302 * pkin(7) + (-pkin(1) - t201) * t298;
t47 = -pkin(4) * t309 + qJDD(5) + t103;
t118 = -qJ(5) * t216 + t396;
t80 = t118 * t293 - t294 * t326;
t81 = t294 * t118 + t293 * t326;
t308 = -t81 * t31 + t32 * t80 - t36 * t85 - t450;
t305 = t47 + t314;
t265 = -pkin(4) * t294 - pkin(5);
t262 = pkin(4) * t293 + qJ(6);
t244 = pkin(4) * t417;
t231 = t248 * qJD(6);
t229 = qJ(6) * t418;
t193 = t296 * t298 + t300 * t407;
t192 = -t296 * t407 + t298 * t300;
t191 = t296 * t302 - t298 * t408;
t190 = t296 * t409 + t300 * t302;
t171 = -pkin(5) - t179;
t170 = qJ(6) + t180;
t133 = t294 * t216 + t217 * t293;
t114 = -t175 * t293 - t176 * t294;
t113 = t294 * t175 - t176 * t293;
t79 = pkin(5) * t133 - qJ(6) * t134 + t348;
t64 = pkin(5) * t113 - qJ(6) * t114 + t346;
t61 = -t293 * t99 + t294 * t98;
t60 = t293 * t98 + t294 * t99;
t44 = -t471 + t476;
t43 = pkin(5) * t301 - t45;
t42 = -qJ(6) * t301 + t46;
t41 = t343 + t476;
t18 = pkin(5) * t248 + qJD(6) - t20;
t16 = pkin(5) * t60 - qJ(6) * t61 - qJD(6) * t114 + t333;
t7 = -pkin(5) * t387 - t8;
t6 = qJ(6) * t387 - qJD(6) * t301 + t9;
t5 = t47 + t452;
t1 = -t231 + t376;
t10 = [qJDD(1), -t438 + t441, t342, qJDD(1) * t290 + 0.2e1 * t297 * t362, 0.2e1 * t278 * t297 - 0.2e1 * t379 * t393, qJDD(2) * t297 + t301 * t303, qJDD(2) * t301 - t297 * t303, 0, t328 * t297 + (-t318 + t441) * t301, t297 * t318 + t301 * t328 - t261, t123 * t411 + t215 * t455 (-t213 * t300 - t215 * t296) * t386 + (-t422 - t124 * t300 + (t213 * t296 - t419) * qJD(3)) * t297 (-t123 - t371) * t301 + (t324 + t389) * t297 (t258 * t388 + t124) * t301 + (-t325 - t390) * t297, -t210 * t301 - t258 * t387 -(-t232 * t385 + t397) * t258 + t212 * t210 - g(1) * t191 - g(2) * t193 + ((t366 + t390) * pkin(7) + (-pkin(7) * t210 + qJD(2) * t239 - t350) * t296 + t340) * t301 + (pkin(7) * t124 + qJD(2) * t144 + t185 * t296 + t239 * t383) * t297, t398 * t258 - t394 * t210 - g(1) * t190 - g(2) * t192 + (t239 * t380 + (-t369 + t389) * pkin(7) + t321) * t301 + (-t239 * t385 - t145 * qJD(2) + t185 * t300 + (t123 - t371) * pkin(7)) * t297, -t176 * t66 - t335 * t98, -t136 * t98 - t175 * t66 - t176 * t309 + t335 * t99, -t176 * t202 - t248 * t98 - t301 * t66 - t335 * t387, -t136 * t387 - t175 * t202 + t248 * t99 - t301 * t309, -t202 * t301 - t248 * t387, -t359 * t248 + t354 * t202 - t360 * t301 + t70 * t387 + t155 * t136 - t226 * t309 + t103 * t175 + t154 * t99 - g(1) * t167 - g(2) * t169 + (t248 * t402 + t301 * t71) * qJD(4), -g(1) * t166 - g(2) * t168 - t103 * t176 + t154 * t98 - t155 * t335 - t202 * t402 + t226 * t66 + t248 * t323 - t301 * t351 - t387 * t71, -t113 * t4 - t114 * t3 - t20 * t61 - t21 * t60 - t31 * t46 - t32 * t45 - t458 * t8 - t85 * t9 + t347, -g(1) * t316 - g(2) * t317 + t100 * t333 + t20 * t8 + t21 * t9 + t3 * t45 + t346 * t47 + t4 * t46, g(1) * t157 - g(2) * t159 + t113 * t5 + t16 * t85 - t18 * t387 + t2 * t301 - t202 * t43 + t248 * t7 + t31 * t64 + t40 * t60, -t1 * t113 + t114 * t2 + t18 * t61 - t19 * t60 - t31 * t42 + t32 * t43 + t458 * t7 - t6 * t85 + t347, g(1) * t156 - g(2) * t158 - t1 * t301 - t114 * t5 - t16 * t458 + t19 * t387 + t202 * t42 - t248 * t6 - t32 * t64 - t40 * t61, t1 * t42 + t19 * t6 + t5 * t64 + t40 * t16 + t2 * t43 + t18 * t7 - g(1) * (-t157 * pkin(5) - t156 * qJ(6) + t316) - g(2) * (pkin(5) * t159 + qJ(6) * t158 + t317); 0, 0, 0, -t297 * t304 * t301, t393 * t304, t378, t278, qJDD(2), t297 * t319 - t271 - t288, t437 + (-pkin(7) * qJDD(1) + t319) * t301, -t258 * t419 + t422 (t123 + t421) * t300 + (-t124 + t420) * t296 (-t215 * t297 + t258 * t408) * qJD(1) + t325 (t213 * t297 - t258 * t413) * qJD(1) + t324, t258 * t392, -pkin(2) * t124 + t395 * t258 + t338 * t296 + (-t144 * t297 + (-pkin(7) * t213 - t239 * t296) * t301) * qJD(1) - t478 * t300, -pkin(2) * t123 - t195 * t258 + t338 * t300 + (-t239 * t408 + t145 * t297 + (-t215 * t301 + t258 * t411) * pkin(7)) * qJD(1) + t478 * t296, t66 * t217 + t335 * t479, t136 * t479 - t66 * t216 + t217 * t309 + t335 * t400, t217 * t202 + t248 * t479 + t335 * t392, t136 * t392 - t216 * t202 + t248 * t400, t248 * t392, t352 * t202 + t435 * t309 + t103 * t216 - t70 * t392 + (t242 * t381 + t117 + t198 + (-qJD(4) * t241 - t142 - t223) * t295) * t248 + t400 * t154 + t345 * t136 - t314 * t282, -t396 * t202 - t435 * t66 + t103 * t217 + t71 * t392 + (t320 - t403) * t248 - t479 * t154 - t345 * t335 + t314 * t281, -t133 * t4 - t134 * t3 + t20 * t427 + t21 * t428 + t38 * t85 + t433 * t458 + t308, t4 * t81 - t3 * t80 + t47 * t348 - g(3) * (-t297 * t289 + t201) + (t36 - t38) * t21 - t433 * t20 + t472 * t100 + t342 * (t221 * t297 + t289 * t301) t5 * t133 + t18 * t392 - t80 * t202 + t248 * t434 - t264 * t314 + t79 * t31 - t40 * t428 + t431 * t85, -t1 * t133 + t134 * t2 - t18 * t427 + t19 * t428 + t33 * t85 + t434 * t458 + t308, -t5 * t134 - t19 * t392 + t81 * t202 - t248 * t432 - t263 * t314 - t79 * t32 + t40 * t427 - t431 * t458, -g(3) * t201 + t1 * t81 + t2 * t80 + t5 * t79 + t431 * t40 + t432 * t19 + t434 * t18 + (-g(3) * t339 + t289 * t342) * t301 + (g(3) * t289 + t342 * (t221 + t339)) * t297; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t215 * t213, -t213 ^ 2 + t215 ^ 2, t123 - t421, -t124 - t420, t210, -g(1) * t192 + g(2) * t190 - t145 * t258 - t239 * t215 + (t350 + t437) * t296 - t340, g(1) * t193 - g(2) * t191 + g(3) * t411 - t144 * t258 + t213 * t239 - t321, -t466, t463, t462, t459, t202, t356 * t248 + (-t136 * t215 + t202 * t299 + t248 * t382) * pkin(3) + t460, -t404 * t248 + (-t202 * t295 + t215 * t335 + t248 * t381) * pkin(3) + t461, -t179 * t32 - t180 * t31 + t364 + t473 + (-t20 - t424) * t85, -g(1) * t399 - g(2) * t353 - t100 * t343 + t3 * t179 + t4 * t180 - t20 * t425 + t21 * t424 + t227 * t437, -t171 * t202 + t248 * t425 - t41 * t85 - t451, -t170 * t31 + t171 * t32 + t364 + t474 + (t18 - t426) * t85, t170 * t202 - t248 * t426 + t41 * t458 - t231 + t477, t1 * t170 + t2 * t171 - t40 * t41 - g(1) * (t357 + t399) - g(2) * (t353 + t358) - g(3) * (t229 + (-t227 - t443) * t297) + t426 * t19 + t425 * t18; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t466, t463, t462, t459, t202, -t71 * t248 + t460, -t248 * t70 + t461, t473 - t436 + (-t293 * t31 - t294 * t32) * pkin(4) + (-t20 + t27) * t85, -g(1) * t244 + t20 * t26 - t21 * t27 + (g(2) * t416 + t100 * t335 + t281 * t450 + t4 * t293 + t3 * t294) * pkin(4), -t202 * t265 - t248 * t26 - t44 * t85 - t451, t474 - t262 * t31 + t265 * t32 - t436 + (t18 - t405) * t85, t202 * t262 + t248 * t27 + t44 * t458 - 0.2e1 * t231 + t477, t1 * t262 + t2 * t265 - t40 * t44 - t18 * t26 - g(1) * (-pkin(4) * t374 + t244 + t357) - g(2) * (-pkin(4) * t166 + t358) - g(3) * (t229 + (-t443 - t444) * t297) + t405 * t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t341, t20 * t458 + t21 * t85 + t305, -t248 * t458 + t31, t341, -t32 - t469, -t18 * t458 + t19 * t85 + t305 + t452; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t458 * t85 - t202, t32 - t469, -t248 ^ 2 - t457, t19 * t248 + t451;];
tau_reg  = t10;