% Calculate inertial parameters regressor of inverse dynamics joint torque vector for
% S6RRPRPR2
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
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d4,d6,theta3]';
% 
% Output:
% tau_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 10:14
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tau_reg = S6RRPRPR2_invdynJ_fixb_reg2_slag_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRPR2_invdynJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRPR2_invdynJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRPRPR2_invdynJ_fixb_reg2_slag_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRPRPR2_invdynJ_fixb_reg2_slag_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRPRPR2_invdynJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 10:14:02
% EndTime: 2019-03-09 10:14:18
% DurationCPUTime: 9.02s
% Computational Cost: add. (14168->616), mult. (33791->717), div. (0->0), fcn. (26002->14), ass. (0->317)
t221 = sin(qJ(6));
t225 = cos(qJ(6));
t212 = qJDD(2) + qJDD(4);
t219 = sin(pkin(10));
t226 = cos(qJ(2));
t369 = cos(pkin(10));
t311 = qJD(1) * t369;
t296 = t226 * t311;
t223 = sin(qJ(2));
t341 = qJD(1) * t223;
t153 = -t219 * t341 + t296;
t164 = t219 * t226 + t223 * t369;
t154 = t164 * qJD(1);
t222 = sin(qJ(4));
t397 = cos(qJ(4));
t106 = t397 * t153 - t154 * t222;
t214 = qJD(2) + qJD(4);
t89 = -t106 * t221 + t214 * t225;
t366 = qJD(6) * t89;
t333 = qJD(1) * qJD(2);
t321 = t223 * t333;
t251 = qJDD(1) * t164 - t219 * t321;
t293 = qJD(2) * t311;
t240 = t226 * t293 + t251;
t316 = t369 * t226;
t320 = t226 * t333;
t332 = t223 * qJDD(1);
t328 = -t223 * t293 + (-t320 - t332) * t219;
t261 = -qJDD(1) * t316 - t328;
t239 = t222 * t240 + t397 * t261;
t276 = -t222 * t153 - t154 * t397;
t402 = -qJD(4) * t276 + t239;
t34 = t212 * t221 - t225 * t402 + t366;
t31 = t225 * t34;
t337 = qJD(6) * t225;
t338 = qJD(6) * t221;
t33 = t106 * t337 - t225 * t212 + t214 * t338 - t221 * t402;
t418 = qJD(6) - t276;
t433 = t418 * t225;
t423 = t89 * t433;
t87 = t106 * t225 + t214 * t221;
t435 = t418 * t87;
t445 = -t423 + (t33 + t435) * t221 - t31;
t383 = t106 * t87;
t322 = qJD(4) * t397;
t340 = qJD(4) * t222;
t272 = t153 * t322 - t154 * t340 - t222 * t261 + t397 * t240;
t55 = -qJDD(6) - t272;
t379 = t221 * t55;
t439 = -t418 * t433 + t379;
t444 = t439 + t383;
t382 = t106 * t89;
t434 = t221 * t418;
t49 = t225 * t55;
t440 = -t418 * t434 - t49;
t443 = t440 - t382;
t442 = t33 - t435;
t32 = t225 * t33;
t441 = -t434 * t89 - t32;
t388 = pkin(5) * t106;
t220 = -qJ(3) - pkin(7);
t184 = t220 * t226;
t170 = qJD(1) * t184;
t156 = t219 * t170;
t183 = t220 * t223;
t169 = qJD(1) * t183;
t385 = qJD(2) * pkin(2);
t161 = t169 + t385;
t114 = t369 * t161 + t156;
t393 = pkin(8) * t154;
t83 = qJD(2) * pkin(3) + t114 - t393;
t317 = t369 * t170;
t115 = t219 * t161 - t317;
t394 = pkin(8) * t153;
t86 = t115 + t394;
t61 = t222 * t83 + t397 * t86;
t50 = -t214 * qJ(5) - t61;
t37 = -t50 + t388;
t437 = t37 * t418;
t60 = t222 * t86 - t397 * t83;
t346 = qJD(5) + t60;
t425 = pkin(5) * t276;
t347 = t346 - t425;
t399 = pkin(4) + pkin(9);
t35 = -t214 * t399 + t347;
t210 = t226 * pkin(2);
t202 = t210 + pkin(1);
t173 = -qJD(1) * t202 + qJD(3);
t121 = -pkin(3) * t153 + t173;
t248 = qJ(5) * t276 + t121;
t40 = -t106 * t399 + t248;
t17 = -t221 * t40 + t225 * t35;
t436 = t418 * t17;
t236 = t153 * t340 + t154 * t322 + t239;
t352 = t214 * t276;
t432 = -t236 - t352;
t360 = t106 * t214;
t431 = t272 - t360;
t362 = t106 ^ 2;
t427 = t276 ^ 2;
t430 = -t362 + t427;
t18 = t221 * t35 + t225 * t40;
t330 = pkin(2) * t321 + qJDD(3);
t331 = t226 * qJDD(1);
t365 = qJDD(1) * pkin(1);
t15 = -pkin(2) * t331 + pkin(3) * t261 + pkin(4) * t402 - qJ(5) * t272 + qJD(5) * t276 + t330 - t365;
t10 = pkin(9) * t402 + t15;
t318 = qJD(2) * t220;
t269 = -qJD(3) * t223 + t226 * t318;
t113 = qJDD(2) * pkin(2) + qJD(1) * t269 + qJDD(1) * t183;
t268 = qJD(3) * t226 + t223 * t318;
t118 = qJD(1) * t268 - qJDD(1) * t184;
t71 = t369 * t113 - t219 * t118;
t59 = qJDD(2) * pkin(3) - pkin(8) * t240 + t71;
t72 = t219 * t113 + t369 * t118;
t62 = -pkin(8) * t261 + t72;
t314 = t222 * t62 + t86 * t322 + t83 * t340 - t397 * t59;
t292 = qJDD(5) + t314;
t8 = pkin(5) * t272 - t212 * t399 + t292;
t2 = -qJD(6) * t18 - t10 * t221 + t225 * t8;
t429 = t18 * t418 + t2;
t428 = t418 * t89 - t34;
t426 = pkin(4) * t276;
t424 = t276 * t37;
t367 = qJ(5) * t106;
t421 = t418 * t106;
t420 = t106 * t276;
t419 = t276 * t399;
t1 = qJD(6) * t17 + t10 * t225 + t221 * t8;
t323 = t17 * t276 + t1;
t315 = -t222 * t59 - t83 * t322 + t86 * t340 - t397 * t62;
t203 = t212 * qJ(5);
t405 = -t214 * qJD(5) - t203;
t11 = t315 + t405;
t9 = -pkin(5) * t402 - t11;
t7 = t9 * t225;
t417 = t106 * t18 + t7;
t416 = t276 * t18 - t2;
t398 = t9 * t221 + t37 * t337;
t415 = -t106 * t17 + t398;
t216 = qJ(2) + pkin(10);
t209 = qJ(4) + t216;
t199 = sin(t209);
t193 = g(3) * t199;
t200 = cos(t209);
t227 = cos(qJ(1));
t354 = t200 * t227;
t224 = sin(qJ(1));
t355 = t200 * t224;
t274 = -g(1) * t354 - g(2) * t355 - t193 - t315;
t63 = -pkin(4) * t106 + t248;
t414 = t106 * t63 + t274 - t405;
t273 = t219 * t223 - t316;
t263 = qJD(2) * t273;
t96 = -t219 * t268 + t269 * t369;
t232 = pkin(8) * t263 + t96;
t262 = qJD(2) * t164;
t97 = t219 * t269 + t369 * t268;
t247 = -pkin(8) * t262 + t97;
t122 = t369 * t183 + t184 * t219;
t98 = -pkin(8) * t164 + t122;
t123 = t219 * t183 - t369 * t184;
t99 = -pkin(8) * t273 + t123;
t28 = -t222 * t232 - t397 * t247 - t98 * t322 + t340 * t99;
t29 = t222 * t247 - t397 * t232 + t322 * t99 + t340 * t98;
t295 = g(1) * t227 + g(2) * t224;
t68 = t222 * t99 - t397 * t98;
t69 = t222 * t98 + t397 * t99;
t413 = -t106 * t28 + t272 * t68 - t276 * t29 - t402 * t69 - t295;
t194 = g(3) * t200;
t356 = t199 * t227;
t357 = t199 * t224;
t327 = -g(1) * t356 - g(2) * t357 + t194;
t275 = t314 + t327;
t249 = -t276 * t63 + qJDD(5) + t275;
t412 = -t106 * t121 - t274;
t257 = t397 * t273;
t116 = t164 * t222 + t257;
t264 = t222 * t273;
t74 = -qJD(4) * t264 + t164 * t322 - t222 * t263 + t262 * t397;
t411 = -t106 * t74 + t116 * t402;
t117 = t164 * t397 - t264;
t73 = t164 * t340 + t214 * t257 + t222 * t262;
t410 = -t106 * t73 - t116 * t272 - t117 * t402 + t276 * t74;
t409 = t121 * t276 - t275;
t396 = pkin(2) * t219;
t195 = t222 * t396;
t325 = t369 * pkin(2);
t201 = t325 + pkin(3);
t131 = -qJD(4) * t195 + t201 * t322;
t126 = -qJD(5) - t131;
t119 = -t169 * t219 + t317;
t90 = t119 - t394;
t120 = t369 * t169 + t156;
t91 = t120 - t393;
t65 = t222 * t90 + t397 * t91;
t372 = t126 + t65;
t150 = t222 * t201 + t396 * t397;
t132 = t150 * qJD(4);
t64 = t222 * t91 - t397 * t90;
t370 = t132 - t64;
t406 = t370 * t214;
t345 = t200 * pkin(4) + t199 * qJ(5);
t404 = -g(1) * t224 + g(2) * t227;
t403 = t199 * t404 - t212 * t69 + t214 * t28;
t400 = t154 ^ 2;
t229 = qJD(2) ^ 2;
t395 = pkin(4) * t212;
t389 = g(3) * t226;
t191 = t200 * pkin(9);
t387 = t89 * t87;
t213 = -pkin(8) + t220;
t386 = pkin(5) - t213;
t381 = t214 * t61;
t380 = t221 * t34;
t378 = t221 * t74;
t377 = t221 * t89;
t376 = t225 * t74;
t375 = t225 * t87;
t374 = t399 * t55;
t373 = -t372 - t425;
t371 = t131 - t65;
t368 = pkin(7) * qJDD(1);
t358 = t154 * t153;
t353 = t213 * t227;
t351 = t221 * t224;
t350 = t221 * t227;
t349 = t224 * t225;
t348 = t225 * t227;
t208 = cos(t216);
t344 = pkin(3) * t208 + t210;
t217 = t223 ^ 2;
t218 = t226 ^ 2;
t343 = t217 - t218;
t342 = t217 + t218;
t339 = qJD(6) * t418;
t336 = t154 * qJD(2);
t205 = t223 * t385;
t230 = qJD(1) ^ 2;
t329 = t223 * t230 * t226;
t124 = pkin(2) * t341 + pkin(3) * t154;
t313 = -t34 + t366;
t303 = -t17 * t338 + t327;
t302 = t344 + t345;
t168 = pkin(1) + t344;
t160 = t227 * t168;
t301 = g(2) * (pkin(4) * t354 + qJ(5) * t356 + t160);
t300 = t223 * t320;
t174 = qJ(5) * t355;
t299 = -pkin(4) * t357 + t174;
t176 = qJ(5) * t354;
t298 = -pkin(4) * t356 + t176;
t297 = -g(1) * t355 + g(2) * t354;
t149 = t201 * t397 - t195;
t291 = t117 * t272 + t276 * t73;
t290 = t17 * t225 + t18 * t221;
t289 = -t17 * t221 + t18 * t225;
t128 = pkin(3) * t273 - t202;
t242 = -t117 * qJ(5) + t128;
t44 = t116 * t399 + t242;
t45 = pkin(5) * t117 + t68;
t27 = t221 * t45 + t225 * t44;
t26 = -t221 * t44 + t225 * t45;
t147 = -pkin(4) - t149;
t138 = -pkin(9) + t147;
t287 = -t132 * t418 + t138 * t55;
t286 = t116 * t212 + t214 * t74;
t285 = t117 * t212 - t214 * t73;
t284 = -t362 - t427;
t280 = t124 - t367;
t279 = -t168 - t345;
t277 = -0.2e1 * pkin(1) * t333 - pkin(7) * qJDD(2);
t270 = -t106 * t65 - t276 * t370;
t146 = -qJDD(1) * t202 + t330;
t259 = -t200 * t295 - t193;
t258 = -t68 * t212 - t29 * t214 - t297;
t254 = t272 + t360;
t253 = -pkin(7) * t229 + 0.2e1 * t365 - t404;
t252 = pkin(1) * t230 + t295 - t368;
t250 = t295 * t399 * t199;
t125 = pkin(3) * t262 + t205;
t246 = qJD(6) * t289 + t1 * t221 + t2 * t225;
t244 = -t138 * t339 + t259;
t243 = t339 * t399 + t259;
t84 = -t328 * pkin(3) + (-pkin(1) + (-pkin(3) * t369 - pkin(2)) * t226) * qJDD(1) + t330;
t30 = t74 * pkin(4) + t73 * qJ(5) - t117 * qJD(5) + t125;
t234 = -t236 + t352;
t207 = sin(t216);
t171 = -pkin(2) * t223 - pkin(3) * t207;
t163 = t227 * t171;
t162 = t224 * t171;
t151 = t153 ^ 2;
t145 = qJ(5) + t150;
t144 = -t199 * t351 + t348;
t143 = t199 * t349 + t350;
t142 = t199 * t350 + t349;
t141 = t199 * t348 - t351;
t70 = -t367 - t426;
t67 = t116 * pkin(4) + t242;
t66 = t280 - t426;
t48 = -pkin(4) * t214 + t346;
t47 = -t367 - t419;
t46 = -t116 * pkin(5) + t69;
t43 = t280 - t419;
t41 = t64 + t388;
t39 = t61 + t388;
t25 = t221 * t39 + t225 * t47;
t24 = -t221 * t47 + t225 * t39;
t23 = t74 * pkin(9) + t30;
t22 = -t73 * pkin(5) + t29;
t21 = -pkin(5) * t74 - t28;
t20 = t221 * t41 + t225 * t43;
t19 = -t221 * t43 + t225 * t41;
t12 = t292 - t395;
t4 = -qJD(6) * t27 + t22 * t225 - t221 * t23;
t3 = qJD(6) * t26 + t22 * t221 + t225 * t23;
t5 = [0, 0, 0, 0, 0, qJDD(1), -t404, t295, 0, 0, qJDD(1) * t217 + 0.2e1 * t300, 0.2e1 * t223 * t331 - 0.2e1 * t333 * t343, qJDD(2) * t223 + t226 * t229, qJDD(1) * t218 - 0.2e1 * t300, qJDD(2) * t226 - t223 * t229, 0, t223 * t277 + t226 * t253, -t223 * t253 + t226 * t277, 0.2e1 * t342 * t368 - t295, -g(1) * (-pkin(1) * t224 + pkin(7) * t227) - g(2) * (pkin(1) * t227 + pkin(7) * t224) + (pkin(7) ^ 2 * t342 + pkin(1) ^ 2) * qJDD(1), t251 * t164 + (-t154 * t273 + t164 * t296) * qJD(2), -t153 * t263 - t154 * t262 - t164 * t261 - t240 * t273, t164 * qJDD(2) - t229 * t273, -t153 * t262 + t261 * t273, -qJDD(2) * t273 - t164 * t229, 0, t122 * qJDD(2) + t146 * t273 - t153 * t205 - t202 * t261 - t404 * t208 + (t164 * t173 + t96) * qJD(2), -t97 * qJD(2) - t123 * qJDD(2) + t146 * t164 + t154 * t205 - t173 * t263 - t202 * t240 + t207 * t404, -t115 * t262 - t122 * t240 - t123 * t261 + t97 * t153 - t96 * t154 - t71 * t164 - t295 + (qJD(2) * t114 - t72) * t273, t72 * t123 + t115 * t97 + t71 * t122 + t114 * t96 - t146 * t202 + t173 * t205 - g(1) * (-t202 * t224 - t220 * t227) - g(2) * (t202 * t227 - t220 * t224) t291, t410, t285, t411, -t286, 0, -t106 * t125 + t84 * t116 + t121 * t74 + t128 * t402 + t258, t117 * t84 - t121 * t73 - t125 * t276 + t128 * t272 + t403, t116 * t315 + t117 * t314 - t60 * t73 - t61 * t74 + t413, -t315 * t69 - t61 * t28 + t314 * t68 + t60 * t29 + t84 * t128 + t121 * t125 - g(1) * (-t168 * t224 - t353) - g(2) * (-t213 * t224 + t160) 0, -t285, t286, t291, t410, t411, t11 * t116 + t12 * t117 - t48 * t73 + t50 * t74 + t413, t106 * t30 - t15 * t116 - t402 * t67 - t63 * t74 - t258, -t117 * t15 - t272 * t67 + t276 * t30 + t63 * t73 - t403, t15 * t67 + t63 * t30 - t11 * t69 + t50 * t28 + t12 * t68 + t48 * t29 + g(1) * t353 - t301 + (-g(1) * t279 + g(2) * t213) * t224, t74 * t377 + (-t221 * t33 + t337 * t89) * t116 (-t221 * t87 + t225 * t89) * t74 + (-t380 - t32 + (-t375 - t377) * qJD(6)) * t116, -t116 * t379 - t117 * t33 - t73 * t89 + (t116 * t337 + t378) * t418, -t74 * t375 + (t338 * t87 - t31) * t116, -t116 * t49 - t117 * t34 + t73 * t87 + (-t116 * t338 + t376) * t418, -t117 * t55 - t418 * t73, -t37 * t376 - g(1) * t144 - g(2) * t142 + t418 * t4 + t117 * t2 - t17 * t73 + t21 * t87 - t26 * t55 + t34 * t46 + (t338 * t37 - t7) * t116, g(1) * t143 - g(2) * t141 - t1 * t117 + t116 * t398 + t18 * t73 + t21 * t89 + t27 * t55 - t3 * t418 - t33 * t46 + t37 * t378, t26 * t33 - t27 * t34 - t3 * t87 - t4 * t89 + t289 * t74 + (-qJD(6) * t290 + t1 * t225 - t2 * t221) * t116 - t297, t1 * t27 + t18 * t3 + t2 * t26 + t17 * t4 + t9 * t46 + t37 * t21 - t301 + (-g(1) * t386 - g(2) * t191) * t227 + (-g(1) * (t279 - t191) - g(2) * t386) * t224; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t329, t343 * t230, t332, t329, t331, qJDD(2), t223 * t252 - t389, g(3) * t223 + t226 * t252, 0, 0, -t358, -t151 + t400 (t296 - t153) * qJD(2) + t251, t358, -t261 + t336, qJDD(2), -g(3) * t208 - t119 * qJD(2) - t173 * t154 + t295 * t207 + (qJDD(2) * t369 + t153 * t341) * pkin(2) + t71, g(3) * t207 + qJD(2) * t120 - t153 * t173 + t295 * t208 + (-qJDD(2) * t219 - t154 * t341) * pkin(2) - t72, -t240 * t325 - t261 * t396 - (-t115 - t119) * t154 + (t114 - t120) * t153, -t114 * t119 - t115 * t120 + (t369 * t71 - t389 + t219 * t72 + (-qJD(1) * t173 + t295) * t223) * pkin(2), t420, t430, t431, -t420, t432, t212, t106 * t124 + t149 * t212 - t406 + t409, t124 * t276 - t150 * t212 - t214 * t371 + t412, -t149 * t272 - t150 * t402 - t276 * t61 + t270 + (t131 - t60) * t106, -g(3) * t344 - t121 * t124 - t149 * t314 - t150 * t315 - t171 * t295 + t370 * t60 + t371 * t61, t212, -t431, -t432, t420, t430, -t420, -t145 * t402 + t147 * t272 + t276 * t50 + t270 + (-t126 - t48) * t106, -t106 * t66 + t406 + (-pkin(4) + t147) * t212 + t249, t145 * t212 - t214 * t372 - t276 * t66 + t414, -t11 * t145 + t12 * t147 - t63 * t66 - g(1) * (t163 + t298) - g(2) * (t162 + t299) - g(3) * t302 + t372 * t50 + t370 * t48, t441, t445, t443, t433 * t87 + t380, t444, -t421, -t418 * t19 + t145 * t34 + t373 * t87 + (-t287 - t424) * t225 + t244 * t221 + t415, t418 * t20 - t145 * t33 + t373 * t89 + t244 * t225 + (t287 - t437) * t221 + t417, t19 * t89 + t20 * t87 + (-t132 * t87 + t138 * t313 - t323) * t221 + (-t132 * t89 + t138 * t33 + (-t138 * t87 - t18) * qJD(6) + t416) * t225 - t303, t9 * t145 - t18 * t20 - t17 * t19 - g(1) * (t163 + t176) - g(2) * (t162 + t174) - g(3) * (t191 + t302) + t373 * t37 + t250 + t290 * t132 + t246 * t138; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t261 + t336 (t296 + t153) * qJD(2) + t251, -t151 - t400, t114 * t154 - t115 * t153 + t146 + t404, 0, 0, 0, 0, 0, 0, -t234, t254, t284, -t61 * t106 + t276 * t60 + t404 + t84, 0, 0, 0, 0, 0, 0, t284, t234, -t254, t50 * t106 + t276 * t48 + t15 + t404, 0, 0, 0, 0, 0, 0, t439 - t383, -t382 - t440, -t221 * t442 - t31 + t423, -t106 * t37 + (t1 - t436) * t225 - t429 * t221 + t404; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t420, t430, t431, -t420, t432, t212, t381 + t409, -t214 * t60 + t412, 0, 0, t212, -t431, -t432, t420, t430, -t420, -pkin(4) * t272 - qJ(5) * t402 - (-t50 - t61) * t276 - (t48 - t346) * t106, -t106 * t70 + t249 - t381 - 0.2e1 * t395, t214 * t346 - t276 * t70 + t203 + t414, -t12 * pkin(4) - g(1) * t298 - g(2) * t299 - g(3) * t345 - t11 * qJ(5) - t346 * t50 - t48 * t61 - t63 * t70, t441, t445, t443, t225 * t435 + t380, t444, -t421, qJ(5) * t34 - t418 * t24 + t347 * t87 + (t374 - t424) * t225 + t243 * t221 + t415, -qJ(5) * t33 + t418 * t25 + t347 * t89 + (-t374 - t437) * t221 + t243 * t225 + t417, t24 * t89 + t25 * t87 + (-t313 * t399 - t323) * t221 + (-t399 * t33 + (t399 * t87 - t18) * qJD(6) + t416) * t225 - t303, t9 * qJ(5) - t18 * t25 - t17 * t24 - g(1) * t176 - g(2) * t174 - g(3) * (t191 + t345) + t347 * t37 + t250 - t246 * t399; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t431, t212 - t420, -t214 ^ 2 - t427, t214 * t50 + t249 - t395, 0, 0, 0, 0, 0, 0, -t214 * t87 + t440, -t214 * t89 + t439, t428 * t221 + t225 * t442, -t214 * t37 + t323 * t221 + t225 * t429 + t303; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t387, -t87 ^ 2 + t89 ^ 2, -t442, -t387, t428, -t55, -g(1) * t141 - g(2) * t143 + t194 * t225 - t37 * t89 + t429, g(1) * t142 - g(2) * t144 + t436 + t37 * t87 + (-qJD(6) * t35 - t10) * t225 + (qJD(6) * t40 - t194 - t8) * t221, 0, 0;];
tau_reg  = t5;
