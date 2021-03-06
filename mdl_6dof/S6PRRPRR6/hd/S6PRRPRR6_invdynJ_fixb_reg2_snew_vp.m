% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6PRRPRR6
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
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d2,d3,d5,d6,theta1,theta4]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 05:48
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6PRRPRR6_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPRR6_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPRR6_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRPRR6_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPRR6_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6PRRPRR6_invdynJ_fixb_reg2_snew_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 05:44:45
% EndTime: 2019-05-05 05:45:07
% DurationCPUTime: 11.39s
% Computational Cost: add. (74246->586), mult. (162236->905), div. (0->0), fcn. (133740->16), ass. (0->392)
t308 = sin(qJ(6));
t303 = sin(pkin(13));
t306 = cos(pkin(13));
t307 = cos(pkin(7));
t387 = qJD(2) * t307;
t368 = qJD(3) + t387;
t310 = sin(qJ(3));
t304 = sin(pkin(7));
t388 = qJD(2) * t304;
t374 = t310 * t388;
t278 = -t303 * t374 + t306 * t368;
t279 = t303 * t368 + t306 * t374;
t309 = sin(qJ(5));
t313 = cos(qJ(5));
t250 = t278 * t309 + t279 * t313;
t312 = cos(qJ(6));
t314 = cos(qJ(3));
t386 = qJD(2) * t314;
t373 = t304 * t386;
t361 = -qJD(5) + t373;
t226 = t250 * t308 + t312 * t361;
t228 = t312 * t250 - t308 * t361;
t190 = t228 * t226;
t382 = t310 * qJDD(2);
t285 = (qJD(3) * t386 + t382) * t304;
t366 = t307 * qJDD(2) + qJDD(3);
t258 = t306 * t285 + t303 * t366;
t369 = t285 * t303 - t306 * t366;
t370 = t309 * t258 + t313 * t369;
t199 = -t250 * qJD(5) - t370;
t198 = qJDD(6) - t199;
t428 = -t190 + t198;
t436 = t308 * t428;
t435 = t312 * t428;
t248 = -t313 * t278 + t279 * t309;
t200 = -t248 * qJD(5) + t313 * t258 - t309 * t369;
t240 = t248 * t361;
t434 = t240 + t200;
t311 = sin(qJ(2));
t413 = sin(pkin(12));
t414 = cos(pkin(12));
t330 = -g(1) * t414 - g(2) * t413;
t423 = cos(qJ(2));
t305 = sin(pkin(6));
t329 = g(1) * t413 - g(2) * t414;
t415 = cos(pkin(6));
t324 = t415 * t329;
t390 = -g(3) + qJDD(1);
t426 = t305 * t390 + t324;
t254 = -t311 * t330 + t423 * t426;
t315 = qJD(2) ^ 2;
t420 = pkin(9) * t304;
t321 = qJDD(2) * pkin(2) + t315 * t420 + t254;
t323 = -t305 * t329 + t390 * t415;
t433 = t304 * t323 + t307 * t321;
t342 = t361 ^ 2;
t364 = t368 ^ 2;
t296 = qJD(3) * t374;
t383 = qJDD(2) * t314;
t360 = t304 * t383 - t296;
t399 = t278 * t279;
t328 = -t360 + t399;
t432 = t303 * t328;
t431 = t306 * t328;
t281 = -qJDD(5) + t360;
t400 = t250 * t248;
t325 = -t281 - t400;
t430 = t309 * t325;
t429 = t313 * t325;
t267 = t278 * t373;
t236 = -t267 - t258;
t268 = t279 * t373;
t427 = t268 + t369;
t255 = t311 * t426 + t423 * t330;
t252 = -t315 * pkin(2) + qJDD(2) * t420 + t255;
t319 = t433 * t310;
t192 = t314 * t252 + t319;
t245 = qJD(6) + t248;
t371 = t200 * t308 + t312 * t281;
t143 = (qJD(6) - t245) * t228 + t371;
t224 = t226 ^ 2;
t225 = t228 ^ 2;
t243 = t245 ^ 2;
t246 = t248 ^ 2;
t247 = t250 ^ 2;
t425 = t278 ^ 2;
t276 = t279 ^ 2;
t300 = t304 ^ 2;
t424 = 2 * qJD(4);
t422 = pkin(3) * t314;
t421 = pkin(5) * t309;
t340 = t366 * qJ(4);
t362 = -qJ(4) * t310 - t422;
t282 = t362 * t388;
t363 = t282 * t388 + t252;
t317 = -pkin(3) * t364 + t314 * t363 + t319 + t340;
t272 = t307 * t323;
t341 = qJD(2) * t368;
t337 = t314 * t341;
t338 = t310 * t341;
t398 = t285 * qJ(4);
t318 = t296 * pkin(3) - t398 + t272 + (-qJ(4) * t337 + (t338 - t383) * pkin(3) - t321) * t304;
t136 = t278 * t424 + t303 * t318 + t306 * t317;
t259 = -pkin(4) * t373 - pkin(10) * t279;
t113 = -pkin(4) * t425 - pkin(10) * t369 + t259 * t373 + t136;
t381 = t279 * t424;
t135 = t303 * t317 - t306 * t318 + t381;
t316 = pkin(4) * t328 + pkin(10) * t236 - t135;
t66 = t113 * t309 - t313 * t316;
t67 = t313 * t113 + t309 * t316;
t40 = t309 * t67 - t313 * t66;
t419 = t303 * t40;
t418 = t306 * t40;
t210 = pkin(5) * t248 - pkin(11) * t250;
t60 = t281 * pkin(5) - pkin(11) * t342 + t210 * t250 + t66;
t417 = t308 * t60;
t416 = t312 * t60;
t389 = t433 * t314;
t184 = -t366 * pkin(3) - t364 * qJ(4) + t310 * t363 + qJDD(4) - t389;
t150 = t369 * pkin(4) - t425 * pkin(10) + t279 * t259 + t184;
t412 = t150 * t309;
t411 = t150 * t313;
t155 = t190 + t198;
t410 = t155 * t308;
t409 = t155 * t312;
t408 = t184 * t303;
t407 = t184 * t306;
t205 = t281 - t400;
t406 = t205 * t309;
t405 = t205 * t313;
t237 = t360 + t399;
t404 = t237 * t303;
t403 = t237 * t306;
t402 = t245 * t308;
t401 = t245 * t312;
t397 = t300 * t314;
t396 = t300 * t315;
t395 = t304 * t310;
t394 = t304 * t314;
t377 = t310 * t397;
t295 = t315 * t377;
t284 = t295 + t366;
t393 = t310 * t284;
t283 = -t295 + t366;
t391 = t314 * t283;
t384 = qJD(6) + t245;
t380 = t309 * t190;
t379 = t313 * t190;
t378 = t310 ^ 2 * t396;
t376 = t314 * t400;
t375 = -pkin(5) * t313 - pkin(4);
t61 = -pkin(5) * t342 - t281 * pkin(11) - t248 * t210 + t67;
t339 = t250 * t361;
t98 = -t434 * pkin(11) + (-t199 - t339) * pkin(5) + t150;
t45 = t308 * t61 - t312 * t98;
t46 = t308 * t98 + t312 * t61;
t30 = t308 * t45 + t312 * t46;
t41 = t309 * t66 + t313 * t67;
t90 = t135 * t303 + t306 * t136;
t367 = t394 * t399;
t365 = -pkin(5) * t60 + pkin(11) * t30;
t18 = t30 * t309 - t313 * t60;
t19 = t30 * t313 + t309 * t60;
t10 = -t18 * t303 + t19 * t306;
t29 = t308 * t46 - t312 * t45;
t359 = t10 * t310 - t29 * t314;
t164 = t224 + t225;
t348 = -t200 * t312 + t281 * t308;
t162 = -qJD(6) * t226 - t348;
t208 = t245 * t226;
t147 = t162 + t208;
t93 = -t143 * t312 + t147 * t308;
t70 = t164 * t313 + t309 * t93;
t71 = -t164 * t309 + t313 * t93;
t43 = -t303 * t70 + t306 * t71;
t91 = -t143 * t308 - t147 * t312;
t358 = t310 * t43 - t314 * t91;
t176 = -t243 - t224;
t110 = t176 * t308 + t435;
t111 = t176 * t312 - t436;
t145 = -t228 * t384 - t371;
t76 = t111 * t309 + t145 * t313;
t77 = t111 * t313 - t145 * t309;
t51 = -t303 * t76 + t306 * t77;
t357 = -t110 * t314 + t310 * t51;
t185 = -t225 - t243;
t114 = t185 * t312 - t410;
t115 = -t185 * t308 - t409;
t148 = t226 * t384 + t348;
t78 = t115 * t309 + t148 * t313;
t79 = t115 * t313 - t148 * t309;
t54 = -t303 * t78 + t306 * t79;
t356 = -t114 * t314 + t310 * t54;
t26 = t306 * t41 - t419;
t355 = -t150 * t314 + t26 * t310;
t354 = -t184 * t314 + t310 * t90;
t187 = -t246 - t247;
t178 = t250 * t373 + t370;
t181 = -t240 + t200;
t128 = -t178 * t309 - t181 * t313;
t130 = -t178 * t313 + t181 * t309;
t83 = -t128 * t303 + t130 * t306;
t353 = -t187 * t314 + t310 * t83;
t209 = -t342 - t246;
t159 = t209 * t309 + t429;
t160 = t209 * t313 - t430;
t103 = -t159 * t303 + t160 * t306;
t177 = (0.2e1 * qJD(5) - t373) * t250 + t370;
t352 = t103 * t310 - t177 * t314;
t220 = -t247 - t342;
t165 = t220 * t313 + t406;
t166 = -t220 * t309 + t405;
t117 = -t165 * t303 + t166 * t306;
t351 = t117 * t310 - t314 * t434;
t89 = -t135 * t306 + t136 * t303;
t191 = t310 * t252 - t389;
t350 = -t191 * t314 + t192 * t310;
t152 = t191 * t310 + t192 * t314;
t195 = -t236 * t303 - t306 * t427;
t229 = -t276 - t425;
t349 = t195 * t310 - t229 * t314;
t299 = t314 ^ 2 * t396;
t244 = -t299 - t425;
t202 = t244 * t306 - t432;
t233 = -t268 + t369;
t347 = t202 * t310 - t233 * t314;
t266 = -t276 - t299;
t215 = -t266 * t303 + t403;
t235 = -t267 + t258;
t346 = t215 * t310 - t235 * t314;
t290 = t304 * t337;
t261 = -t290 + t285;
t289 = t304 * t338;
t262 = t289 + t360;
t345 = -t261 * t314 + t262 * t310;
t275 = -t378 - t364;
t344 = t275 * t314 - t283 * t310;
t286 = -t299 - t364;
t343 = t284 * t314 + t286 * t310;
t263 = -t289 + t360;
t336 = pkin(5) * t145 + pkin(11) * t111 - t416;
t335 = pkin(5) * t148 + pkin(11) * t115 + t417;
t334 = t309 * t339;
t333 = t309 * t240;
t332 = t313 * t339;
t331 = t313 * t240;
t327 = pkin(5) * t164 + pkin(11) * t93 + t30;
t326 = -t307 * t315 + t341;
t219 = t304 * t321 - t272;
t288 = -t299 - t378;
t287 = -t299 + t378;
t273 = t360 * t394;
t265 = -t276 + t299;
t264 = -t299 + t425;
t260 = (t382 + (0.2e1 * qJD(3) + t387) * t386) * t304;
t253 = t286 * t314 - t393;
t251 = -t275 * t310 - t391;
t232 = -t247 + t342;
t231 = t246 - t342;
t230 = (-t278 * t303 + t279 * t306) * t373;
t223 = t258 * t303 - t268 * t306;
t222 = t267 * t303 - t306 * t369;
t221 = t261 * t310 + t262 * t314;
t218 = t263 * t304 + t307 * t343;
t217 = -t260 * t304 + t307 * t344;
t216 = -t288 * t304 + t307 * t345;
t214 = t264 * t303 - t403;
t213 = t265 * t306 + t432;
t212 = t266 * t306 + t404;
t211 = t247 - t246;
t204 = -t225 + t243;
t203 = t224 - t243;
t201 = t244 * t303 + t431;
t197 = t331 - t334;
t196 = t333 + t332;
t194 = -t233 * t303 + t235 * t306;
t193 = t236 * t306 - t303 * t427;
t189 = t225 - t224;
t186 = t215 * t314 + t235 * t310;
t175 = t231 * t313 + t406;
t174 = -t232 * t309 + t429;
t173 = t231 * t309 - t405;
t172 = t232 * t313 + t430;
t171 = t202 * t314 + t233 * t310;
t170 = t313 * t200 + t334;
t169 = t309 * t200 - t332;
t168 = -t309 * t199 - t331;
t167 = t313 * t199 - t333;
t163 = t195 * t314 + t229 * t310;
t161 = -qJD(6) * t228 - t371;
t158 = (-t226 * t312 + t228 * t308) * t245;
t157 = (-t226 * t308 - t228 * t312) * t245;
t153 = t196 * t306 + t197 * t303;
t151 = -t212 * t304 + t307 * t346;
t149 = -t201 * t304 + t307 * t347;
t146 = t162 - t208;
t142 = -pkin(3) * t235 + qJ(4) * t215 + t408;
t141 = -t193 * t304 + t307 * t349;
t140 = t162 * t312 - t228 * t402;
t139 = t162 * t308 + t228 * t401;
t138 = -t161 * t308 + t226 * t401;
t137 = -t161 * t312 - t226 * t402;
t133 = t219 * t304 + t307 * t350;
t132 = -pkin(3) * t233 + qJ(4) * t202 - t407;
t131 = -t177 * t313 - t309 * t434;
t129 = -t177 * t309 + t313 * t434;
t127 = t158 * t313 + t198 * t309;
t126 = t158 * t309 - t198 * t313;
t125 = t173 * t306 + t175 * t303;
t124 = t172 * t306 + t174 * t303;
t123 = t203 * t312 - t410;
t122 = -t204 * t308 + t435;
t121 = t203 * t308 + t409;
t120 = t204 * t312 + t436;
t119 = t169 * t306 + t170 * t303;
t118 = t167 * t306 + t168 * t303;
t116 = t165 * t306 + t166 * t303;
t107 = t140 * t313 + t380;
t106 = t138 * t313 - t380;
t105 = t140 * t309 - t379;
t104 = t138 * t309 + t379;
t102 = t159 * t306 + t160 * t303;
t101 = -pkin(10) * t165 + t411;
t100 = -pkin(10) * t159 + t412;
t99 = t117 * t314 + t310 * t434;
t96 = -pkin(4) * t434 + pkin(10) * t166 + t412;
t95 = t103 * t314 + t177 * t310;
t94 = t145 * t312 - t146 * t308;
t92 = t145 * t308 + t146 * t312;
t88 = -pkin(4) * t177 + pkin(10) * t160 - t411;
t87 = t123 * t313 - t143 * t309;
t86 = t122 * t313 + t147 * t309;
t85 = t123 * t309 + t143 * t313;
t84 = t122 * t309 - t147 * t313;
t82 = t129 * t306 + t131 * t303;
t81 = t128 * t306 + t130 * t303;
t80 = t126 * t306 + t127 * t303;
t75 = t189 * t309 + t313 * t94;
t74 = -t189 * t313 + t309 * t94;
t73 = -pkin(3) * t184 + qJ(4) * t90;
t72 = t184 * t310 + t314 * t90;
t69 = -pkin(3) * t229 + qJ(4) * t195 + t90;
t68 = t187 * t310 + t314 * t83;
t64 = t105 * t306 + t107 * t303;
t63 = t104 * t306 + t106 * t303;
t62 = -t116 * t304 + t307 * t351;
t59 = -t102 * t304 + t307 * t352;
t58 = t303 * t87 + t306 * t85;
t57 = t303 * t86 + t306 * t84;
t56 = -pkin(11) * t114 + t416;
t55 = -pkin(11) * t110 + t417;
t53 = t303 * t79 + t306 * t78;
t52 = -t304 * t89 + t307 * t354;
t50 = t303 * t77 + t306 * t76;
t49 = t303 * t75 + t306 * t74;
t48 = -t304 * t81 + t307 * t353;
t47 = -pkin(3) * t434 + qJ(4) * t117 + t101 * t303 + t306 * t96;
t42 = t303 * t71 + t306 * t70;
t39 = -pkin(3) * t177 + qJ(4) * t103 + t100 * t303 + t306 * t88;
t38 = t114 * t310 + t314 * t54;
t37 = t110 * t310 + t314 * t51;
t36 = -pkin(4) * t150 + pkin(10) * t41;
t35 = -pkin(5) * t114 + t46;
t34 = -pkin(5) * t110 + t45;
t33 = -pkin(10) * t128 - t40;
t32 = -pkin(4) * t187 + pkin(10) * t130 + t41;
t31 = t310 * t91 + t314 * t43;
t28 = -t304 * t53 + t307 * t356;
t27 = -t304 * t50 + t307 * t357;
t25 = t303 * t41 + t418;
t24 = t150 * t310 + t26 * t314;
t23 = -pkin(11) * t91 - t29;
t22 = -t304 * t42 + t307 * t358;
t21 = -pkin(10) * t78 - t309 * t35 + t313 * t56;
t20 = -pkin(10) * t76 - t309 * t34 + t313 * t55;
t17 = -pkin(4) * t114 + pkin(10) * t79 + t309 * t56 + t313 * t35;
t16 = -pkin(4) * t110 + pkin(10) * t77 + t309 * t55 + t313 * t34;
t15 = -pkin(3) * t187 + qJ(4) * t83 + t303 * t33 + t306 * t32;
t14 = -pkin(10) * t70 + t23 * t313 + t421 * t91;
t13 = pkin(10) * t71 + t23 * t309 + t375 * t91;
t12 = -t25 * t304 + t307 * t355;
t11 = -pkin(3) * t150 - pkin(10) * t419 + qJ(4) * t26 + t306 * t36;
t9 = t18 * t306 + t19 * t303;
t8 = -pkin(3) * t114 + qJ(4) * t54 + t17 * t306 + t21 * t303;
t7 = -pkin(3) * t110 + qJ(4) * t51 + t16 * t306 + t20 * t303;
t6 = -pkin(10) * t18 + (-pkin(11) * t313 + t421) * t29;
t5 = t10 * t314 + t29 * t310;
t4 = -pkin(3) * t91 + qJ(4) * t43 + t13 * t306 + t14 * t303;
t3 = pkin(10) * t19 + (-pkin(11) * t309 + t375) * t29;
t2 = -t304 * t9 + t307 * t359;
t1 = -pkin(3) * t29 + qJ(4) * t10 + t3 * t306 + t303 * t6;
t44 = [0, 0, 0, 0, 0, 0, 0, 0, 0, t390, 0, 0, 0, 0, 0, 0, (qJDD(2) * t423 - t311 * t315) * t305, (-qJDD(2) * t311 - t315 * t423) * t305, 0, t415 ^ 2 * t390 + (t254 * t423 + t311 * t255 - t324) * t305, 0, 0, 0, 0, 0, 0, t415 * (-t307 * t263 + t304 * t343) + (t218 * t423 + t311 * t253) * t305, t415 * (t307 * t260 + t304 * t344) + (t217 * t423 + t311 * t251) * t305, t415 * (t307 * t288 + t304 * t345) + (t216 * t423 + t311 * t221) * t305, t415 * (-t307 * t219 + t304 * t350) + (t133 * t423 + t311 * t152) * t305, 0, 0, 0, 0, 0, 0, t415 * (t307 * t201 + t304 * t347) + (t149 * t423 + t311 * t171) * t305, t415 * (t307 * t212 + t304 * t346) + (t151 * t423 + t311 * t186) * t305, t415 * (t307 * t193 + t304 * t349) + (t141 * t423 + t311 * t163) * t305, t415 * (t304 * t354 + t307 * t89) + (t311 * t72 + t423 * t52) * t305, 0, 0, 0, 0, 0, 0, t415 * (t307 * t102 + t304 * t352) + (t311 * t95 + t423 * t59) * t305, t415 * (t307 * t116 + t304 * t351) + (t311 * t99 + t423 * t62) * t305, t415 * (t304 * t353 + t307 * t81) + (t311 * t68 + t423 * t48) * t305, t415 * (t307 * t25 + t304 * t355) + (t12 * t423 + t311 * t24) * t305, 0, 0, 0, 0, 0, 0, t415 * (t304 * t357 + t307 * t50) + (t27 * t423 + t311 * t37) * t305, t415 * (t304 * t356 + t307 * t53) + (t28 * t423 + t311 * t38) * t305, t415 * (t304 * t358 + t307 * t42) + (t22 * t423 + t311 * t31) * t305, t415 * (t304 * t359 + t307 * t9) + (t2 * t423 + t311 * t5) * t305; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), t254, -t255, 0, 0, (t304 * t285 + t326 * t397) * t310, t307 * t287 + (t310 * t263 + (t285 + t290) * t314) * t304, t307 * t261 + (t393 + t314 * (t364 - t378)) * t304, -t326 * t377 + t273, t307 * t262 + (t310 * (t299 - t364) + t391) * t304, t307 * t366, pkin(2) * t218 - t191 * t307 + (pkin(9) * t253 + t219 * t314) * t304, pkin(2) * t217 - t192 * t307 + (pkin(9) * t251 - t219 * t310) * t304, pkin(2) * t216 + (pkin(9) * t221 + t152) * t304, pkin(2) * t133 + t152 * t420, (t258 * t306 + t268 * t303) * t395 + t367 + t307 * t223, t307 * t194 + (t310 * (-t233 * t306 - t235 * t303) + t314 * (-t276 + t425)) * t304, t307 * t213 + (t310 * (-t265 * t303 + t431) + t314 * t236) * t304, (t267 * t306 + t303 * t369) * t395 - t367 + t307 * t222, t307 * t214 + (t310 * (t264 * t306 + t404) + t314 * t427) * t304, t307 * t230 + t273 + t300 * t310 * (-t278 * t306 - t279 * t303) * t386, (-qJ(4) * t201 + t408) * t395 + (t303 * (t282 * t373 + t192 + t340) - t306 * (-qJ(4) * t290 - t219 - t398) + t381 + (t263 * t306 - t303 * t364 - t201) * pkin(3)) * t394 + t307 * t132 + pkin(2) * t149 + t171 * t420, pkin(2) * t151 + t307 * t142 + (t310 * (-qJ(4) * t212 + t407) + t314 * (-pkin(3) * t212 + t136) + pkin(9) * t186) * t304, pkin(2) * t141 + t307 * t69 + (t310 * (-qJ(4) * t193 - t89) - t193 * t422 + pkin(9) * t163) * t304, pkin(2) * t52 + t307 * t73 + (pkin(9) * t72 + t362 * t89) * t304, t307 * t119 + (t310 * (-t169 * t303 + t170 * t306) - t376) * t304, t307 * t82 + (t310 * (-t129 * t303 + t131 * t306) - t314 * t211) * t304, t307 * t124 + (t310 * (-t172 * t303 + t174 * t306) - t314 * t181) * t304, t307 * t118 + (t310 * (-t167 * t303 + t168 * t306) + t376) * t304, t307 * t125 + (t310 * (-t173 * t303 + t175 * t306) + t314 * t178) * t304, t307 * t153 + (t310 * (-t196 * t303 + t197 * t306) + t314 * t281) * t304, pkin(2) * t59 + t307 * t39 + (t310 * (-qJ(4) * t102 + t100 * t306 - t303 * t88) + t314 * (-pkin(3) * t102 - pkin(4) * t159 + t66) + pkin(9) * t95) * t304, pkin(2) * t62 + t307 * t47 + (t310 * (-qJ(4) * t116 + t101 * t306 - t303 * t96) + t314 * (-pkin(3) * t116 - pkin(4) * t165 + t67) + pkin(9) * t99) * t304, pkin(2) * t48 + t307 * t15 + (t310 * (-qJ(4) * t81 - t303 * t32 + t306 * t33) + t314 * (-pkin(3) * t81 - pkin(4) * t128) + pkin(9) * t68) * t304, pkin(2) * t12 + t307 * t11 + (t310 * (-pkin(10) * t418 - qJ(4) * t25 - t303 * t36) + t314 * (-pkin(3) * t25 - pkin(4) * t40) + pkin(9) * t24) * t304, t307 * t64 + (t310 * (-t105 * t303 + t107 * t306) - t314 * t139) * t304, t307 * t49 + (t310 * (-t303 * t74 + t306 * t75) - t314 * t92) * t304, t307 * t57 + (t310 * (-t303 * t84 + t306 * t86) - t314 * t120) * t304, t307 * t63 + (t310 * (-t104 * t303 + t106 * t306) + t314 * t137) * t304, t307 * t58 + (t310 * (-t303 * t85 + t306 * t87) - t314 * t121) * t304, t307 * t80 + (t310 * (-t126 * t303 + t127 * t306) - t314 * t157) * t304, pkin(2) * t27 + t307 * t7 + (t310 * (-qJ(4) * t50 - t16 * t303 + t20 * t306) + t314 * (-pkin(3) * t50 - pkin(4) * t76 - t336) + pkin(9) * t37) * t304, pkin(2) * t28 + t307 * t8 + (t310 * (-qJ(4) * t53 - t17 * t303 + t21 * t306) + t314 * (-pkin(3) * t53 - pkin(4) * t78 - t335) + pkin(9) * t38) * t304, pkin(2) * t22 + t307 * t4 + (t310 * (-qJ(4) * t42 - t13 * t303 + t14 * t306) + t314 * (-pkin(3) * t42 - pkin(4) * t70 - t327) + pkin(9) * t31) * t304, pkin(2) * t2 + t307 * t1 + (t310 * (-qJ(4) * t9 - t3 * t303 + t306 * t6) + t314 * (-pkin(3) * t9 - pkin(4) * t18 - t365) + pkin(9) * t5) * t304; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t295, t287, t261, t295, t262, t366, -t191, -t192, 0, 0, t223, t194, t213, t222, t214, t230, t132, t142, t69, t73, t119, t82, t124, t118, t125, t153, t39, t47, t15, t11, t64, t49, t57, t63, t58, t80, t7, t8, t4, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t233, t235, t229, t184, 0, 0, 0, 0, 0, 0, t177, t434, t187, t150, 0, 0, 0, 0, 0, 0, t110, t114, t91, t29; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t400, t211, t181, -t400, -t178, -t281, -t66, -t67, 0, 0, t139, t92, t120, -t137, t121, t157, t336, t335, t327, t365; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t190, t189, t147, -t190, -t143, t198, -t45, -t46, 0, 0;];
tauJ_reg  = t44;
