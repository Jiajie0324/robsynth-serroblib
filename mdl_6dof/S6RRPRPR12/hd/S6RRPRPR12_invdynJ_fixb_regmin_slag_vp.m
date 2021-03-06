% Calculate minimal parameter regressor of inverse dynamics joint torque vector for
% S6RRPRPR12
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
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d6,theta5]';
% 
% Output:
% tau_reg [6x30]
%   minimal parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 11:23
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRPRPR12_invdynJ_fixb_regmin_slag_vp(qJ, qJD, qJDD, g, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR12_invdynJ_fixb_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR12_invdynJ_fixb_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR12_invdynJ_fixb_regmin_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR12_invdynJ_fixb_regmin_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRPRPR12_invdynJ_fixb_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 11:21:52
% EndTime: 2019-03-09 11:22:09
% DurationCPUTime: 7.24s
% Computational Cost: add. (8998->589), mult. (21811->794), div. (0->0), fcn. (16886->14), ass. (0->312)
t260 = sin(qJ(4));
t264 = cos(qJ(4));
t256 = sin(pkin(6));
t261 = sin(qJ(2));
t376 = qJD(1) * t261;
t349 = t256 * t376;
t323 = t264 * t349;
t267 = -pkin(2) - pkin(9);
t387 = qJ(5) - t267;
t335 = t387 * t264;
t222 = pkin(2) * t349;
t265 = cos(qJ(2));
t413 = qJ(3) * t265;
t311 = pkin(9) * t261 - t413;
t378 = qJD(1) * t256;
t141 = t311 * t378 + t222;
t375 = qJD(1) * t265;
t348 = t256 * t375;
t218 = pkin(8) * t348;
t257 = cos(pkin(6));
t377 = qJD(1) * t257;
t357 = pkin(1) * t377;
t167 = t261 * t357 + t218;
t143 = pkin(3) * t348 + t167;
t384 = t264 * t141 + t260 * t143;
t452 = -qJ(5) * t323 - qJD(4) * t335 - t260 * qJD(5) - t384;
t129 = t264 * t143;
t371 = qJD(4) * t260;
t396 = t260 * t261;
t451 = -t264 * qJD(5) + t371 * t387 + t260 * t141 - t129 - (pkin(4) * t265 - qJ(5) * t396) * t378;
t363 = qJD(1) * qJD(2);
t343 = t261 * t363;
t321 = t256 * t343;
t360 = qJDD(1) * t265;
t341 = t256 * t360;
t448 = t321 - t341;
t228 = qJD(2) + t377;
t154 = t228 * t260 + t264 * t348;
t322 = t260 * t348;
t156 = t228 * t264 - t322;
t255 = sin(pkin(11));
t414 = cos(pkin(11));
t332 = -t414 * t154 - t156 * t255;
t439 = qJD(6) - t332;
t202 = qJD(4) + t349;
t259 = sin(qJ(6));
t263 = cos(qJ(6));
t294 = -t255 * t154 + t156 * t414;
t75 = -t263 * t202 + t259 * t294;
t450 = t439 * t75;
t337 = qJD(4) * t414;
t403 = t255 * t260;
t383 = -t255 * t371 + t264 * t337 + t323 * t414 - t349 * t403;
t293 = t255 * t264 + t260 * t414;
t137 = t293 * t349;
t370 = qJD(4) * t264;
t174 = -t255 * t370 - t260 * t337;
t382 = -t174 + t137;
t166 = pkin(8) * t349 - t265 * t357;
t440 = qJD(3) + t166;
t449 = pkin(4) * t370 + t440;
t336 = t263 * t439;
t362 = qJDD(1) * t257;
t226 = qJDD(2) + t362;
t82 = -qJD(4) * t154 + t264 * t226 + t260 * t448;
t83 = -qJD(4) * t322 + t260 * t226 + (qJD(4) * t228 - t448) * t264;
t50 = -t255 * t82 - t414 * t83;
t48 = qJDD(6) - t50;
t417 = t259 * t48;
t447 = -t336 * t439 - t417;
t266 = cos(qJ(1));
t390 = t265 * t266;
t262 = sin(qJ(1));
t394 = t261 * t262;
t177 = -t257 * t390 + t394;
t252 = qJ(4) + pkin(11);
t246 = sin(t252);
t247 = cos(t252);
t399 = t256 * t266;
t116 = -t177 * t246 + t247 * t399;
t391 = t262 * t265;
t392 = t261 * t266;
t178 = t257 * t392 + t391;
t446 = t116 * t259 + t178 * t263;
t445 = t116 * t263 - t178 * t259;
t251 = t256 ^ 2;
t359 = 0.2e1 * t251;
t422 = -t255 * t452 + t451 * t414;
t415 = t451 * t255 + t414 * t452;
t443 = t260 * pkin(4) + qJ(3);
t402 = t256 * t261;
t230 = pkin(8) * t402;
t350 = -pkin(1) * t265 - pkin(2);
t122 = pkin(3) * t402 + t230 + (-pkin(9) + t350) * t257;
t400 = t256 * t265;
t381 = pkin(2) * t400 + qJ(3) * t402;
t139 = (-pkin(9) * t265 - pkin(1)) * t256 - t381;
t385 = t260 * t122 + t264 * t139;
t203 = t226 * qJ(3);
t442 = -t228 * qJD(3) - t203;
t175 = t257 * t260 + t264 * t400;
t352 = t260 * t400;
t176 = t257 * t264 - t352;
t105 = -t255 * t175 + t176 * t414;
t393 = t261 * t263;
t207 = t256 * t393;
t441 = -t105 * t259 + t207;
t365 = pkin(3) * t349 + t440;
t340 = -qJ(3) * t261 - pkin(1);
t303 = -pkin(2) * t265 + t340;
t148 = t303 * t378;
t438 = t148 * t349 + qJDD(3);
t437 = pkin(4) * t83 + qJDD(5);
t179 = t257 * t391 + t392;
t401 = t256 * t262;
t133 = t179 * t264 - t260 * t401;
t395 = t260 * t266;
t409 = t177 * t264;
t436 = g(3) * t175 - g(2) * (t256 * t395 + t409) - g(1) * t133;
t241 = pkin(4) * t255 + pkin(10);
t342 = t265 * t363;
t361 = qJDD(1) * t261;
t291 = t342 + t361;
t282 = t291 * t256;
t163 = qJDD(4) + t282;
t289 = t265 * t267 + t340;
t118 = t289 * t378;
t98 = t228 * t267 + t365;
t63 = t118 * t264 + t260 * t98;
t356 = pkin(1) * qJD(2) * t257;
t327 = qJD(1) * t356;
t355 = pkin(1) * t362;
t324 = qJD(2) * t218 + qJDD(1) * t230 + t261 * t327 - t265 * t355;
t307 = qJDD(3) + t324;
t69 = pkin(3) * t282 + t226 * t267 + t307;
t197 = pkin(2) * t321;
t372 = qJD(3) * t261;
t276 = qJD(2) * t311 - t372;
t73 = t197 + (qJD(1) * t276 + qJDD(1) * t289) * t256;
t273 = -qJD(4) * t63 - t260 * t73 + t264 * t69;
t16 = t163 * pkin(4) - t82 * qJ(5) - t156 * qJD(5) + t273;
t300 = t118 * t371 - t260 * t69 - t264 * t73 - t98 * t370;
t18 = -qJ(5) * t83 - qJD(5) * t154 - t300;
t5 = t16 * t414 - t255 * t18;
t3 = -t163 * pkin(5) - t5;
t435 = (pkin(4) * t156 + pkin(5) * t294 - pkin(10) * t332 + qJD(6) * t241) * t439 + g(1) * (t179 * t247 - t246 * t401) + g(2) * (t177 * t247 + t246 * t399) + g(3) * (-t246 * t257 - t247 * t400) + t3;
t205 = t228 * qJ(3);
t109 = t205 + t143;
t434 = t109 * t202 + t267 * t163;
t211 = pkin(3) * t341;
t325 = pkin(8) * t448 - t261 * t355 - t265 * t327;
t84 = t325 + t442;
t72 = -pkin(3) * t321 + t211 - t84;
t41 = t72 + t437;
t51 = -t255 * t83 + t414 * t82;
t14 = -pkin(5) * t50 - pkin(10) * t51 + t41;
t62 = -t118 * t260 + t264 * t98;
t55 = -qJ(5) * t156 + t62;
t52 = pkin(4) * t202 + t55;
t56 = -qJ(5) * t154 + t63;
t53 = t414 * t56;
t22 = t255 * t52 + t53;
t20 = pkin(10) * t202 + t22;
t81 = pkin(4) * t154 + qJD(5) + t109;
t38 = -pkin(5) * t332 - pkin(10) * t294 + t81;
t310 = t20 * t259 - t263 * t38;
t6 = t255 * t16 + t414 * t18;
t4 = pkin(10) * t163 + t6;
t1 = -t310 * qJD(6) + t259 * t14 + t263 * t4;
t183 = t264 * t414 - t403;
t418 = t255 * t56;
t21 = t414 * t52 - t418;
t319 = g(1) * t179 + g(2) * t177;
t302 = -g(3) * t400 + t319;
t433 = t5 * t183 - t21 * t382 + t22 * t383 + t293 * t6 - t302;
t108 = pkin(5) * t293 - pkin(10) * t183 + t443;
t190 = t387 * t260;
t125 = -t190 * t414 - t255 * t335;
t243 = pkin(4) * t264 + pkin(3);
t301 = t243 * t376;
t180 = -t257 * t394 + t390;
t317 = g(1) * t180 + g(2) * t178;
t432 = t246 * t317 + (-pkin(5) * t383 - pkin(10) * t382 + qJD(6) * t125 - t256 * t301 - t449) * t439 - t108 * t48;
t431 = pkin(3) + pkin(8);
t429 = pkin(1) * t261;
t426 = g(3) * t256;
t425 = t226 * pkin(2);
t424 = t75 * t294;
t77 = t202 * t259 + t263 * t294;
t423 = t77 * t294;
t374 = qJD(2) * t261;
t347 = t256 * t374;
t131 = -qJD(4) * t175 + t260 * t347;
t217 = pkin(2) * t347;
t112 = t256 * t276 + t217;
t236 = t257 * t429;
t144 = (t400 * t431 + t236) * qJD(2);
t271 = -qJD(4) * t385 - t260 * t112 + t264 * t144;
t373 = qJD(2) * t265;
t346 = t256 * t373;
t29 = pkin(4) * t346 - t131 * qJ(5) - t176 * qJD(5) + t271;
t132 = -qJD(4) * t352 + t257 * t370 - t264 * t347;
t290 = t264 * t112 + t122 * t370 - t139 * t371 + t260 * t144;
t33 = -qJ(5) * t132 - qJD(5) * t175 + t290;
t13 = t255 * t29 + t414 * t33;
t333 = t264 * t122 - t139 * t260;
t60 = pkin(4) * t402 - qJ(5) * t176 + t333;
t65 = -qJ(5) * t175 + t385;
t35 = t255 * t60 + t414 * t65;
t421 = pkin(5) * t348 - t422;
t367 = qJD(6) * t263;
t368 = qJD(6) * t259;
t25 = t259 * t163 + t202 * t367 + t263 * t51 - t294 * t368;
t419 = t25 * t259;
t416 = t48 * t293;
t411 = t154 * t202;
t410 = t156 * t202;
t406 = t183 * t263;
t405 = t226 * t257;
t404 = t251 * qJD(1) ^ 2;
t398 = t259 * t261;
t397 = t260 * t163;
t380 = pkin(8) * t400 + t236;
t253 = t261 ^ 2;
t379 = -t265 ^ 2 + t253;
t369 = qJD(4) * t267;
t366 = qJD(2) - t228;
t358 = g(3) * t402;
t354 = t265 * t404;
t353 = t256 * t398;
t351 = t266 * pkin(1) + t180 * pkin(2) + pkin(8) * t401;
t159 = -t257 * qJ(3) - t380;
t344 = g(3) * t381;
t338 = -t263 * t163 + t259 * t51;
t331 = t177 * t260 - t264 * t399;
t330 = t228 + t377;
t329 = -qJD(6) * t293 - t228;
t328 = t226 + t362;
t326 = t261 * t354;
t138 = pkin(3) * t400 - t159;
t320 = -t262 * pkin(1) - t178 * pkin(2) + pkin(8) * t399;
t318 = g(1) * t177 - g(2) * t179;
t316 = g(1) * t178 - g(2) * t180;
t315 = g(1) * t266 + g(2) * t262;
t8 = t20 * t263 + t259 * t38;
t31 = pkin(10) * t402 + t35;
t104 = t175 * t414 + t176 * t255;
t299 = pkin(4) * t175 + t138;
t46 = pkin(5) * t104 - pkin(10) * t105 + t299;
t309 = t259 * t46 + t263 * t31;
t308 = -t259 * t31 + t263 * t46;
t306 = t263 * t48 + (t259 * t332 - t368) * t439;
t160 = -t256 * pkin(1) - t381;
t305 = qJD(2) * (-qJD(1) * t160 - t148);
t221 = t265 * t356;
t304 = -pkin(8) * t347 + t221;
t89 = t105 * t263 + t353;
t12 = -t255 * t33 + t29 * t414;
t34 = -t255 * t65 + t414 * t60;
t298 = t202 * t260;
t297 = -qJ(3) * t373 - t372;
t145 = t256 * t297 + t217;
t87 = t197 + (qJD(1) * t297 + qJDD(1) * t303) * t256;
t296 = qJD(1) * t145 + qJDD(1) * t160 + t87;
t168 = t380 * qJD(2);
t288 = t168 * t228 - t316;
t102 = t137 * t259 - t263 * t348;
t287 = t174 * t259 + t183 * t367 - t102;
t103 = t137 * t263 + t259 * t348;
t286 = t174 * t263 - t183 * t368 - t103;
t245 = t257 * qJD(3);
t121 = -t347 * t431 + t221 + t245;
t281 = -t317 - t325;
t19 = -t202 * pkin(5) - t21;
t24 = t414 * t55 - t418;
t280 = -t241 * t48 + (t19 + t24) * t439;
t279 = -t317 + t72 - t358;
t278 = t302 - t324;
t277 = (t366 * t375 + t361) * t256;
t275 = t132 * pkin(4) + t121;
t2 = -qJD(6) * t8 + t263 * t14 - t259 * t4;
t272 = t281 - t442;
t270 = t167 * t228 + t278;
t269 = -t125 * t48 + t3 * t183 + (pkin(10) * t348 - qJD(6) * t108 - t415) * t439 + t319;
t258 = -qJ(5) - pkin(9);
t242 = -pkin(4) * t414 - pkin(5);
t171 = t179 * pkin(2);
t169 = t177 * pkin(2);
t165 = -qJ(3) * t348 + t222;
t161 = t257 * t350 + t230;
t158 = -t246 * t400 + t247 * t257;
t152 = t264 * t163;
t149 = -t245 - t304;
t140 = -t205 - t167;
t135 = -pkin(2) * t228 + t440;
t134 = t179 * t260 + t264 * t401;
t124 = -t190 * t255 + t335 * t414;
t114 = t179 * t246 + t247 * t401;
t96 = t307 - t425;
t86 = t114 * t263 + t180 * t259;
t85 = -t114 * t259 + t180 * t263;
t79 = t131 * t414 - t255 * t132;
t78 = t131 * t255 + t132 * t414;
t43 = qJD(6) * t89 + t259 * t79 - t263 * t346;
t42 = qJD(6) * t441 + t259 * t346 + t263 * t79;
t30 = -pkin(5) * t402 - t34;
t27 = t78 * pkin(5) - t79 * pkin(10) + t275;
t26 = qJD(6) * t77 + t338;
t23 = t255 * t55 + t53;
t10 = pkin(10) * t346 + t13;
t9 = -pkin(5) * t346 - t12;
t7 = [qJDD(1), g(1) * t262 - g(2) * t266, t315 (qJDD(1) * t253 + 0.2e1 * t261 * t342) * t251 (t261 * t360 - t363 * t379) * t359 (t261 * t328 + t330 * t373) * t256 (t265 * t328 - t330 * t374) * t256, t405, -t230 * t226 - t324 * t257 + (t265 * t405 + (-t343 + t360) * t359) * pkin(1) - t288, -pkin(1) * t291 * t359 - t226 * t380 - t228 * t304 + t257 * t325 - t318 ((qJD(2) * t135 - qJDD(1) * t159 - t84 + (qJD(2) * t161 - t149) * qJD(1)) * t265 + (qJD(2) * t140 + qJDD(1) * t161 + t96 + (qJD(2) * t159 + t168) * qJD(1)) * t261 - t315) * t256, t161 * t226 + t96 * t257 + (t261 * t305 + t265 * t296) * t256 + t288, -t149 * t228 - t159 * t226 - t84 * t257 + (-t261 * t296 + t265 * t305) * t256 + t318, t87 * t160 + t148 * t145 + t84 * t159 + t140 * t149 + t96 * t161 + t135 * t168 - g(1) * (-qJ(3) * t177 + t320) - g(2) * (qJ(3) * t179 + t351) t131 * t156 + t176 * t82, -t131 * t154 - t132 * t156 - t175 * t82 - t176 * t83, t131 * t202 + t176 * t163 + (t156 * t373 + t261 * t82) * t256, -t132 * t202 - t175 * t163 + (-t154 * t373 - t261 * t83) * t256 (t163 * t261 + t202 * t373) * t256, t271 * t202 + t333 * t163 + t121 * t154 + t138 * t83 + t72 * t175 + t109 * t132 + g(1) * t331 - g(2) * t134 + (t261 * t273 + t373 * t62) * t256, -t290 * t202 - t385 * t163 + t121 * t156 + t138 * t82 + t72 * t176 + t109 * t131 + g(1) * t409 - g(2) * t133 + (g(1) * t395 + t261 * t300 - t373 * t63) * t256, -t104 * t6 - t105 * t5 - t12 * t294 + t13 * t332 - t21 * t79 - t22 * t78 - t34 * t51 + t35 * t50 + t316, t6 * t35 + t22 * t13 + t5 * t34 + t21 * t12 + t41 * t299 + t81 * t275 - g(1) * (-t177 * t443 + t178 * t258 + t243 * t399 + t320) - g(2) * (t179 * t443 - t180 * t258 + t243 * t401 + t351) t25 * t89 + t42 * t77, t25 * t441 - t26 * t89 - t42 * t75 - t43 * t77, t104 * t25 + t42 * t439 + t48 * t89 + t77 * t78, -t104 * t26 - t43 * t439 + t441 * t48 - t75 * t78, t104 * t48 + t439 * t78 (-qJD(6) * t309 - t259 * t10 + t263 * t27) * t439 + t308 * t48 + t2 * t104 - t310 * t78 + t9 * t75 + t30 * t26 - t3 * t441 + t19 * t43 - g(1) * t445 - g(2) * t86 -(qJD(6) * t308 + t263 * t10 + t259 * t27) * t439 - t309 * t48 - t1 * t104 - t8 * t78 + t9 * t77 + t30 * t25 + t3 * t89 + t19 * t42 + g(1) * t446 - g(2) * t85; 0, 0, 0, -t326, t379 * t404, t277 (-t366 * t376 + t360) * t256, t226, t404 * t429 + t270, pkin(1) * t354 - t166 * t228 - t281 + t358 ((-pkin(2) * t261 + t413) * qJDD(1) + ((-qJ(3) * qJD(2) - t140 - t167) * t261 + (-pkin(2) * qJD(2) - t135 + t440) * t265) * qJD(1)) * t256, -t165 * t348 - t270 - 0.2e1 * t425 + t438, t203 + t440 * t228 + (-g(3) * t261 + (t148 * t265 + t165 * t261) * qJD(1)) * t256 + t272, -t84 * qJ(3) - t96 * pkin(2) - t148 * t165 - t135 * t167 - g(1) * (qJ(3) * t180 - t171) - g(2) * (qJ(3) * t178 - t169) - t344 - t440 * t140, -t156 * t298 + t82 * t264 (-t83 - t410) * t264 + (-t82 + t411) * t260, -t202 * t371 + t152 + (-t156 * t265 - t202 * t396) * t378, -t202 * t370 - t397 + (-t202 * t261 * t264 + t154 * t265) * t378, -t202 * t348, -t62 * t348 + qJ(3) * t83 - t129 * t202 + t365 * t154 + t434 * t264 + ((t141 - t369) * t202 + t279) * t260, qJ(3) * t82 + t384 * t202 + t63 * t348 + t365 * t156 - t434 * t260 + (-t202 * t369 + t279) * t264, t124 * t51 + t125 * t50 - t294 * t422 + t332 * t415 - t433, t6 * t125 - t5 * t124 + t41 * t443 - g(1) * (t179 * t258 + t180 * t443 - t171) - g(2) * (t177 * t258 + t178 * t443 - t169) - t344 + t449 * t81 + (-g(3) * (pkin(4) * t396 - t258 * t265) + t81 * t301) * t256 + t415 * t22 + t422 * t21, t25 * t406 + t286 * t77, t77 * t102 + t103 * t75 + (-t259 * t77 - t263 * t75) * t174 + (-t419 - t26 * t263 + (t259 * t75 - t263 * t77) * qJD(6)) * t183, t25 * t293 + t286 * t439 + t383 * t77 + t406 * t48, -t183 * t417 - t26 * t293 - t287 * t439 - t383 * t75, t383 * t439 + t416, t124 * t26 + t2 * t293 + t421 * t75 - t383 * t310 - t432 * t263 + t269 * t259 - (t246 * t393 + t259 * t265) * t426 + t287 * t19, -t1 * t293 + t124 * t25 - t383 * t8 + t421 * t77 + t432 * t259 + t269 * t263 - (-t246 * t398 + t263 * t265) * t426 + t286 * t19; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t277, t226 + t326, -t228 ^ 2 - t253 * t404, t140 * t228 - t278 - t425 + t438, 0, 0, 0, 0, 0, -t228 * t154 - t202 * t298 + t152, -t202 ^ 2 * t264 - t228 * t156 - t397, -t183 * t51 + t293 * t50 + t294 * t382 + t332 * t383, -t81 * t228 + t433, 0, 0, 0, 0, 0, -t259 * t416 - t183 * t26 + t382 * t75 + (-t259 * t383 + t263 * t329) * t439, -t263 * t416 - t183 * t25 + t382 * t77 + (-t259 * t329 - t263 * t383) * t439; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t156 * t154, -t154 ^ 2 + t156 ^ 2, t82 + t411, t410 - t83, t163, -t109 * t156 + t63 * t202 + t273 + t436, g(1) * t134 + g(2) * t331 + g(3) * t176 + t109 * t154 + t62 * t202 + t300 (t255 * t50 - t414 * t51) * pkin(4) + (t21 - t24) * t332 + (t22 - t23) * t294, t21 * t23 - t22 * t24 + (-t81 * t156 + t6 * t255 + t414 * t5 + t436) * pkin(4), t336 * t77 + t419 (t25 - t450) * t263 + (-t439 * t77 - t26) * t259, -t423 - t447, t306 + t424, -t439 * t294, -t23 * t75 + t242 * t26 + t280 * t259 - t263 * t435 + t294 * t310, -t23 * t77 + t242 * t25 + t259 * t435 + t280 * t263 + t8 * t294; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t294 ^ 2 - t332 ^ 2, t21 * t294 - t22 * t332 + t211 + (-pkin(3) * t363 - g(3)) * t402 + t272 + t437, 0, 0, 0, 0, 0, t306 - t424, -t423 + t447; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t77 * t75, -t75 ^ 2 + t77 ^ 2, t25 + t450, -t338 + (-qJD(6) + t439) * t77, t48, t8 * t439 - t19 * t77 - g(1) * t85 - g(2) * t446 - g(3) * (-t158 * t259 + t207) + t2, -t310 * t439 + t19 * t75 + g(1) * t86 - g(2) * t445 - g(3) * (-t158 * t263 - t353) - t1;];
tau_reg  = t7;
