% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RRRRPP1
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,theta5]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 20:47
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RRRRPP1_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRPP1_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRPP1_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRPP1_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 20:46:48
% EndTime: 2019-03-09 20:47:05
% DurationCPUTime: 6.62s
% Computational Cost: add. (16122->591), mult. (39314->723), div. (0->0), fcn. (28512->8), ass. (0->295)
t273 = sin(pkin(10));
t277 = cos(qJ(4));
t274 = sin(qJ(4));
t404 = cos(pkin(10));
t337 = t404 * t274;
t236 = t273 * t277 + t337;
t223 = t236 * qJD(4);
t275 = sin(qJ(3));
t276 = sin(qJ(2));
t359 = qJD(1) * t276;
t344 = t275 * t359;
t278 = cos(qJ(2));
t423 = cos(qJ(3));
t345 = t423 * t278;
t225 = -qJD(1) * t345 + t344;
t436 = t236 * t225 + t223;
t336 = t404 * t277;
t357 = qJD(4) * t274;
t224 = qJD(4) * t336 - t273 * t357;
t374 = t273 * t274;
t428 = t336 - t374;
t435 = t428 * t225 + t224;
t239 = t275 * t278 + t276 * t423;
t227 = t239 * qJD(1);
t354 = qJD(2) + qJD(3);
t201 = t227 * t274 - t277 * t354;
t203 = t277 * t227 + t274 * t354;
t139 = t404 * t201 + t203 * t273;
t219 = qJD(4) + t225;
t394 = t139 * t219;
t329 = qJD(4) * t354;
t340 = t423 * qJD(3);
t291 = t278 * (t423 * qJD(2) + t340);
t355 = qJD(1) * qJD(2);
t339 = t276 * t355;
t361 = qJD(3) * t344 + t275 * t339;
t434 = -qJD(1) * t291 + t361;
t132 = t227 * t357 + (t434 - t329) * t277;
t283 = t274 * t434;
t133 = qJD(4) * t203 - t283;
t78 = -t132 * t404 - t273 * t133;
t57 = t78 + t394;
t302 = -t273 * t201 + t203 * t404;
t437 = t139 * t302;
t424 = -pkin(8) - pkin(7);
t250 = t424 * t278;
t243 = qJD(1) * t250;
t229 = t423 * t243;
t249 = t424 * t276;
t241 = qJD(1) * t249;
t191 = t241 * t275 - t229;
t358 = qJD(3) * t275;
t322 = pkin(2) * t358 - t191;
t330 = t275 * t354;
t194 = t276 * t330 - t291;
t356 = qJD(4) * t277;
t343 = t239 * t356;
t305 = -t194 * t274 + t343;
t398 = t302 ^ 2;
t433 = -0.2e1 * t355;
t228 = t275 * t243;
t417 = qJD(2) * pkin(2);
t231 = t241 + t417;
t188 = t231 * t423 + t228;
t165 = -pkin(3) * t354 - t188;
t129 = t201 * pkin(4) + qJD(5) + t165;
t66 = t139 * pkin(5) - qJ(6) * t302 + t129;
t432 = t66 * t302;
t184 = pkin(3) * t227 + pkin(9) * t225;
t163 = pkin(2) * t359 + t184;
t192 = t241 * t423 + t228;
t118 = t274 * t163 + t277 * t192;
t379 = t225 * t274;
t349 = qJ(5) * t379;
t104 = t349 + t118;
t269 = t277 * qJD(5);
t328 = pkin(2) * t340;
t315 = t277 * t328;
t422 = pkin(2) * t275;
t263 = pkin(9) + t422;
t366 = -qJ(5) - t263;
t332 = qJD(4) * t366;
t193 = t274 * t332 + t269 + t315;
t284 = (-t328 - qJD(5)) * t274 + t277 * t332;
t117 = t277 * t163 - t192 * t274;
t270 = t277 * qJ(5);
t319 = t227 * pkin(4) + t225 * t270;
t93 = t117 + t319;
t413 = (-t284 + t93) * t404 + (-t104 + t193) * t273;
t122 = t274 * t184 + t277 * t188;
t107 = t349 + t122;
t418 = -qJ(5) - pkin(9);
t338 = qJD(4) * t418;
t217 = t274 * t338 + t269;
t296 = -t274 * qJD(5) + t277 * t338;
t121 = t277 * t184 - t188 * t274;
t96 = t121 + t319;
t407 = (-t296 + t96) * t404 + (-t107 + t217) * t273;
t238 = t275 * t276 - t345;
t266 = -pkin(2) * t278 - pkin(1);
t187 = pkin(3) * t238 - pkin(9) * t239 + t266;
t205 = t275 * t249 - t250 * t423;
t198 = t277 * t205;
t135 = t274 * t187 + t198;
t430 = t423 * t249 + t275 * t250;
t209 = pkin(4) * t379;
t429 = t209 + t322;
t248 = qJD(1) * t266;
t159 = t225 * pkin(3) - t227 * pkin(9) + t248;
t189 = t275 * t231 - t229;
t166 = pkin(9) * t354 + t189;
t108 = t277 * t159 - t166 * t274;
t109 = t159 * t274 + t166 * t277;
t427 = -t108 * t274 + t109 * t277;
t267 = pkin(4) * t357;
t426 = pkin(5) * t436 - t435 * qJ(6) - qJD(6) * t236 + t267;
t195 = t354 * t239;
t183 = t195 * qJD(1);
t55 = t227 * t139 + t183 * t428 - t219 * t436;
t77 = -t132 * t273 + t404 * t133;
t10 = -t139 * t435 - t236 * t77 - t302 * t436 + t428 * t78;
t425 = t219 ^ 2;
t420 = t227 * pkin(5);
t419 = t277 * pkin(4);
t350 = t276 * t417;
t116 = t361 * pkin(9) + t183 * pkin(3) + (-pkin(9) * t291 + t350) * qJD(1);
t346 = qJD(2) * t424;
t325 = qJD(1) * t346;
t232 = t276 * t325;
t233 = t278 * t325;
t123 = t231 * t340 + t232 * t423 + t275 * t233 + t243 * t358;
t45 = -qJD(4) * t109 + t277 * t116 - t274 * t123;
t21 = t183 * pkin(4) + t132 * qJ(5) - t203 * qJD(5) + t45;
t44 = t274 * t116 + t277 * t123 + t159 * t356 - t166 * t357;
t26 = -qJ(5) * t133 - qJD(5) * t201 + t44;
t7 = t404 * t21 - t273 * t26;
t8 = t273 * t21 + t404 * t26;
t309 = qJ(5) * t194 - qJD(5) * t239;
t128 = pkin(3) * t195 + pkin(9) * t194 + t350;
t242 = t276 * t346;
t244 = t278 * t346;
t143 = qJD(3) * t430 + t423 * t242 + t275 * t244;
t333 = t277 * t128 - t274 * t143;
t31 = pkin(4) * t195 + t309 * t277 + (-t198 + (qJ(5) * t239 - t187) * t274) * qJD(4) + t333;
t347 = t274 * t128 + t277 * t143 + t187 * t356;
t40 = -qJ(5) * t343 + (-qJD(4) * t205 + t309) * t274 + t347;
t14 = t273 * t31 + t404 * t40;
t90 = -qJ(5) * t203 + t108;
t84 = pkin(4) * t219 + t90;
t91 = -qJ(5) * t201 + t109;
t87 = t404 * t91;
t42 = t273 * t84 + t87;
t416 = t273 * t91;
t43 = t44 * t277;
t46 = t273 * t90 + t87;
t415 = t46 * t302;
t53 = t404 * t104 + t273 * t93;
t59 = t404 * t107 + t273 * t96;
t414 = t420 + t413;
t131 = t193 * t404 + t273 * t284;
t216 = t227 * qJ(6);
t48 = t216 + t53;
t412 = t131 - t48;
t411 = t131 - t53;
t410 = t426 + t429;
t148 = -t209 + t189;
t409 = -t148 + t426;
t408 = t420 + t407;
t162 = t217 * t404 + t273 * t296;
t50 = t216 + t59;
t406 = t162 - t50;
t405 = t162 - t59;
t124 = t231 * t358 + t275 * t232 - t423 * t233 - t243 * t340;
t401 = t124 * t430;
t400 = t132 * t274;
t399 = t133 * t277;
t397 = t302 * t219;
t395 = t139 ^ 2;
t234 = t263 * t277 + t270;
t335 = t366 * t274;
t177 = t234 * t273 - t335 * t404;
t391 = t177 * t183;
t178 = t234 * t404 + t273 * t335;
t390 = t178 * t183;
t247 = pkin(9) * t277 + t270;
t199 = t247 * t273 - t337 * t418;
t389 = t183 * t199;
t200 = t247 * t404 + t374 * t418;
t388 = t183 * t200;
t387 = t183 * t238;
t385 = t201 * t219;
t384 = t201 * t274;
t383 = t203 * t201;
t382 = t203 * t219;
t381 = t203 * t277;
t380 = t219 * t227;
t378 = t225 * t277;
t377 = t227 * t225;
t376 = t239 * t274;
t375 = t239 * t277;
t372 = t274 * t183;
t370 = t277 * t183;
t280 = qJD(1) ^ 2;
t369 = t278 * t280;
t279 = qJD(2) ^ 2;
t368 = t279 * t276;
t367 = t279 * t278;
t47 = t404 * t90 - t416;
t365 = qJD(6) - t47;
t134 = t277 * t187 - t205 * t274;
t105 = pkin(4) * t238 - t239 * t270 + t134;
t115 = -qJ(5) * t376 + t135;
t68 = t273 * t105 + t404 * t115;
t364 = t267 + t429;
t360 = t276 ^ 2 - t278 ^ 2;
t353 = -t108 * t378 - t109 * t379 + t43;
t352 = t183 * qJ(6) + t8;
t351 = t423 * pkin(2);
t348 = t276 * t369;
t265 = -pkin(3) - t419;
t334 = pkin(1) * t433;
t331 = t219 * t277;
t4 = -pkin(5) * t183 - t7;
t264 = -t351 - pkin(3);
t327 = -t131 * t139 + t177 * t78 - t178 * t77;
t326 = t46 * t219 + t7;
t324 = t278 * t339;
t323 = -t162 * t139 + t199 * t78 - t200 * t77;
t321 = -t148 + t267;
t318 = t109 * t227 + t124 * t274 + t165 * t356;
t160 = pkin(4) * t376 - t430;
t169 = t236 * t239;
t94 = t194 * t236 - t224 * t239;
t317 = -t139 * t94 + t169 * t77;
t314 = t108 * t277 + t109 * t274;
t313 = -t395 - t398;
t312 = -t395 + t398;
t310 = t165 * t225 - t183 * t263;
t308 = -t108 * t227 - t124 * t277 + t165 * t357;
t307 = t77 + t397;
t306 = -t77 + t397;
t13 = -t273 * t40 + t31 * t404;
t41 = t404 * t84 - t416;
t304 = -t194 * t277 - t239 * t357;
t79 = pkin(4) * t133 + t124;
t67 = t105 * t404 - t273 * t115;
t303 = t139 * t436 - t428 * t77;
t17 = pkin(5) * t77 - qJ(6) * t78 - qJD(6) * t302 + t79;
t35 = -t219 * pkin(5) + qJD(6) - t41;
t301 = -t17 * t428 + t227 * t35 + t436 * t66;
t36 = qJ(6) * t219 + t42;
t300 = -t17 * t236 - t227 * t36 - t435 * t66;
t299 = -t248 * t227 - t124;
t298 = t129 * t436 - t227 * t41 - t428 * t79;
t297 = t129 * t435 + t227 * t42 + t79 * t236;
t182 = -pkin(5) * t428 - t236 * qJ(6) + t265;
t2 = t219 * qJD(6) + t352;
t294 = t2 * t428 + t4 * t236 + t35 * t435 - t36 * t436;
t293 = -t7 * t236 - t41 * t435 - t42 * t436 + t428 * t8;
t292 = -t78 + t394;
t170 = t428 * t239;
t95 = t194 * t428 + t223 * t239;
t290 = t139 * t95 - t169 * t78 - t170 * t77 + t302 * t94;
t289 = -qJD(4) * t314 - t45 * t274;
t288 = t139 * t195 + t169 * t183 - t219 * t94 + t238 * t77;
t144 = qJD(3) * t205 + t275 * t242 - t423 * t244;
t287 = t289 + t43;
t97 = pkin(4) * t305 + t144;
t282 = t248 * t225 - t123;
t261 = -pkin(4) * t404 - pkin(5);
t259 = pkin(4) * t273 + qJ(6);
t246 = t264 - t419;
t164 = -t351 + t182;
t150 = -t225 ^ 2 + t227 ^ 2;
t146 = t225 * t354 - t434;
t106 = t195 * t219 + t387;
t86 = pkin(5) * t169 - qJ(6) * t170 + t160;
t83 = -t203 * t227 + t219 * t331 + t372;
t82 = t201 * t227 - t274 * t425 + t370;
t75 = t219 * t384 - t399;
t74 = t203 * t331 - t400;
t73 = pkin(4) * t203 + pkin(5) * t302 + qJ(6) * t139;
t65 = -t238 * pkin(5) - t67;
t64 = -qJD(4) * t135 + t333;
t63 = -t205 * t357 + t347;
t62 = qJ(6) * t238 + t68;
t56 = t236 * t183 + t219 * t435 - t227 * t302;
t34 = (-t132 - t385) * t277 + (-t133 - t382) * t274;
t29 = t78 * t236 + t302 * t435;
t23 = t170 * t78 - t302 * t95;
t22 = -t94 * pkin(5) + t95 * qJ(6) - t170 * qJD(6) + t97;
t18 = t170 * t183 + t195 * t302 - t219 * t95 + t238 * t78;
t12 = -t195 * pkin(5) - t13;
t11 = qJ(6) * t195 + qJD(6) * t238 + t14;
t1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t324, t360 * t433, t367, -0.2e1 * t324, -t368, 0, -pkin(7) * t367 + t276 * t334, pkin(7) * t368 + t278 * t334, 0, 0, -t227 * t194 - t239 * t434, -t239 * t183 + t194 * t225 - t227 * t195 + t238 * t434, -t194 * t354, t195 * t225 + t387, -t195 * t354, 0, t266 * t183 + t248 * t195 - t144 * t354 + (qJD(1) * t238 + t225) * t350, pkin(2) * t239 * t339 - t143 * t354 - t248 * t194 + t227 * t350 - t266 * t434, -t123 * t238 + t124 * t239 - t143 * t225 + t144 * t227 - t205 * t183 + t188 * t194 - t189 * t195 + t430 * t434, t123 * t205 + t189 * t143 - t188 * t144 + 0.2e1 * t248 * t350 - t401, -t132 * t375 + t203 * t304 (t201 * t277 + t203 * t274) * t194 + (t400 - t399 + (-t381 + t384) * qJD(4)) * t239, -t132 * t238 + t203 * t195 + t219 * t304 + t239 * t370, t133 * t376 + t201 * t305, -t133 * t238 - t201 * t195 - t219 * t305 - t239 * t372, t106, t108 * t195 + t124 * t376 - t133 * t430 + t134 * t183 + t144 * t201 + t165 * t305 + t219 * t64 + t238 * t45, -t109 * t195 + t124 * t375 + t132 * t430 - t135 * t183 + t144 * t203 + t165 * t304 - t219 * t63 - t238 * t44, t132 * t134 - t133 * t135 - t201 * t63 - t203 * t64 + t314 * t194 + (-qJD(4) * t427 - t274 * t44 - t277 * t45) * t239, t108 * t64 + t109 * t63 + t134 * t45 + t135 * t44 + t144 * t165 - t401, t23, t290, t18, t317, -t288, t106, -t129 * t94 + t13 * t219 + t139 * t97 + t160 * t77 + t169 * t79 + t183 * t67 + t195 * t41 + t238 * t7, -t129 * t95 - t14 * t219 + t160 * t78 + t170 * t79 - t183 * t68 - t195 * t42 - t238 * t8 + t302 * t97, -t13 * t302 - t139 * t14 - t169 * t8 - t170 * t7 + t41 * t95 + t42 * t94 - t67 * t78 - t68 * t77, t129 * t97 + t13 * t41 + t14 * t42 + t160 * t79 + t67 * t7 + t68 * t8, t23, t18, -t290, t106, t288, t317, -t12 * t219 + t139 * t22 + t169 * t17 - t183 * t65 - t195 * t35 - t238 * t4 - t66 * t94 + t77 * t86, -t11 * t139 + t12 * t302 - t169 * t2 + t170 * t4 - t35 * t95 + t36 * t94 - t62 * t77 + t65 * t78, t11 * t219 - t17 * t170 + t183 * t62 + t195 * t36 + t2 * t238 - t22 * t302 + t66 * t95 - t78 * t86, t11 * t36 + t12 * t35 + t17 * t86 + t2 * t62 + t22 * t66 + t4 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t348, t360 * t280, 0, t348, 0, 0, t280 * pkin(1) * t276, pkin(1) * t369, 0, 0, t377, t150, t146, -t377, 0, 0, t191 * t354 + (-qJD(3) * t330 - t225 * t359) * pkin(2) + t299, t192 * t354 + (-t227 * t359 - t340 * t354) * pkin(2) + t282, -t183 * t422 + t434 * t351 + (t189 + t322) * t227 + (-t188 + t192 - t328) * t225, t188 * t191 - t189 * t192 + (-t248 * t359 - t423 * t124 + t123 * t275 + (-t188 * t275 + t189 * t423) * qJD(3)) * pkin(2), t74, t34, t83, t75, t82, -t380, t264 * t133 + t310 * t274 + t322 * t201 + (-t263 * t356 - t274 * t328 - t117) * t219 + t308, -t264 * t132 + t310 * t277 + t322 * t203 + (t263 * t357 + t118 - t315) * t219 + t318, t117 * t203 + t118 * t201 + (-t201 * t328 - t133 * t263 + (t203 * t263 - t108) * qJD(4)) * t277 + (t203 * t328 - t132 * t263 - t45 + (t201 * t263 - t109) * qJD(4)) * t274 + t353, -t108 * t117 - t109 * t118 + t124 * t264 - t165 * t191 + (t165 * t275 + t423 * t427) * qJD(3) * pkin(2) + t287 * t263, t29, t10, t56, t303, t55, -t380, t139 * t364 - t219 * t413 + t246 * t77 + t298 - t391, -t219 * t411 + t246 * t78 + t302 * t364 + t297 - t390, t139 * t53 + t302 * t413 + t293 + t327, t129 * t364 - t177 * t7 + t178 * t8 + t246 * t79 - t41 * t413 + t411 * t42, t29, t56, -t10, -t380, -t55, t303, t139 * t410 + t164 * t77 - t219 * t414 + t301 - t391, t139 * t48 + t302 * t414 + t294 + t327, -t164 * t78 + t219 * t412 - t302 * t410 + t300 + t390, t164 * t17 + t177 * t4 + t178 * t2 + t35 * t414 + t36 * t412 + t410 * t66; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t377, t150, t146, -t377, 0, 0, t189 * t354 + t299, t188 * t354 + t282, 0, 0, t74, t34, t83, t75, t82, -t380, t165 * t379 - pkin(3) * t133 - t121 * t219 - t189 * t201 + (-t219 * t356 - t372) * pkin(9) + t308, t165 * t378 + pkin(3) * t132 + t122 * t219 - t189 * t203 + (t219 * t357 - t370) * pkin(9) + t318, t121 * t203 + t122 * t201 + (-t400 - t399 + (t381 + t384) * qJD(4)) * pkin(9) + t289 + t353, -pkin(3) * t124 + pkin(9) * t287 - t108 * t121 - t109 * t122 - t165 * t189, t29, t10, t56, t303, t55, -t380, t139 * t321 - t219 * t407 + t265 * t77 + t298 - t389, -t219 * t405 + t265 * t78 + t302 * t321 + t297 - t388, t139 * t59 + t302 * t407 + t293 + t323, t129 * t321 - t199 * t7 + t200 * t8 + t265 * t79 + t405 * t42 - t407 * t41, t29, t56, -t10, -t380, -t55, t303, t139 * t409 + t182 * t77 - t219 * t408 + t301 - t389, t139 * t50 + t302 * t408 + t294 + t323, -t182 * t78 + t219 * t406 - t302 * t409 + t300 + t388, t17 * t182 + t199 * t4 + t2 * t200 + t35 * t408 + t36 * t406 + t409 * t66; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t383, -t201 ^ 2 + t203 ^ 2, -t132 + t385, -t383, -t227 * t356 - t274 * t329 + t283 + t382, t183, t109 * t219 - t165 * t203 + t45, t108 * t219 + t165 * t201 - t44, 0, 0, t437, t312, t57, -t437, t306, t183, -t129 * t302 + (-t139 * t203 + t183 * t404) * pkin(4) + t326, t129 * t139 + t47 * t219 + (-t183 * t273 - t203 * t302) * pkin(4) - t8, t42 * t302 - t415 + (-t273 * t77 - t404 * t78) * pkin(4) + (t47 - t41) * t139, t41 * t46 - t42 * t47 + (-t129 * t203 + t273 * t8 + t404 * t7) * pkin(4), t437, t57, -t312, t183, -t306, -t437, -t432 - t73 * t139 + (pkin(5) - t261) * t183 + t326, -t259 * t77 + t261 * t78 + t302 * t36 - t415 + (t35 - t365) * t139, -t66 * t139 + t73 * t302 + t259 * t183 + (0.2e1 * qJD(6) - t47) * t219 + t352, t2 * t259 + t4 * t261 - t35 * t46 + t36 * t365 - t66 * t73; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t307, -t292, t313, t139 * t42 + t302 * t41 + t79, 0, 0, 0, 0, 0, 0, t307, t313, t292, t139 * t36 - t302 * t35 + t17; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t227 * t354 + t437, t57, -t425 - t398, -t219 * t36 + t4 + t432;];
tauc_reg  = t1;