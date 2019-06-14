% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RRRPRR5
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
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-07 10:45
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RRRPRR5_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR5_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR5_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RRRPRR5_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RRRPRR5_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRPRR5_invdynJ_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-07 10:43:26
% EndTime: 2019-05-07 10:44:01
% DurationCPUTime: 14.29s
% Computational Cost: add. (53957->547), mult. (111359->738), div. (0->0), fcn. (79683->10), ass. (0->335)
t324 = cos(qJ(3));
t314 = qJD(2) + qJD(3);
t312 = t314 ^ 2;
t319 = sin(qJ(3));
t325 = cos(qJ(2));
t320 = sin(qJ(2));
t384 = t320 * t324;
t289 = (t319 * t325 + t384) * qJD(1);
t420 = t289 ^ 2;
t422 = -t420 - t312;
t313 = qJDD(2) + qJDD(3);
t379 = qJD(1) * t320;
t287 = -t324 * t325 * qJD(1) + t319 * t379;
t391 = t289 * t287;
t438 = t391 + t313;
t447 = t438 * t319;
t208 = -t324 * t422 + t447;
t446 = t438 * t324;
t210 = t319 * t422 + t446;
t461 = pkin(7) * (t208 * t320 - t210 * t325);
t460 = pkin(2) * t208;
t459 = pkin(8) * t208;
t458 = pkin(8) * t210;
t271 = -t420 + t312;
t244 = t391 - t313;
t453 = t244 * t324;
t454 = t244 * t319;
t456 = t320 * (t271 * t319 + t453) + t325 * (-t271 * t324 + t454);
t284 = t287 ^ 2;
t272 = t312 - t284;
t455 = t320 * (t272 * t324 + t447) - t325 * (-t272 * t319 + t446);
t243 = -t312 - t284;
t190 = t243 * t319 - t453;
t193 = -t243 * t324 - t454;
t448 = pkin(7) * (t190 * t320 + t193 * t325);
t445 = pkin(2) * t190;
t444 = pkin(8) * t190;
t443 = pkin(8) * t193;
t419 = 2 * qJD(4);
t418 = pkin(3) + pkin(9);
t423 = -t284 - t420;
t436 = pkin(1) * t423;
t435 = pkin(2) * t423;
t317 = sin(qJ(6));
t318 = sin(qJ(5));
t323 = cos(qJ(5));
t261 = -t323 * t287 + t314 * t318;
t263 = t287 * t318 + t314 * t323;
t322 = cos(qJ(6));
t215 = t322 * t261 + t263 * t317;
t217 = -t261 * t317 + t263 * t322;
t172 = t217 * t215;
t307 = t320 * qJDD(1);
t373 = qJD(1) * qJD(2);
t366 = t325 * t373;
t296 = t307 + t366;
t308 = t325 * qJDD(1);
t367 = t320 * t373;
t297 = t308 - t367;
t353 = t324 * t296 + t319 * t297;
t232 = -qJD(3) * t287 + t353;
t229 = qJDD(5) + t232;
t227 = qJDD(6) + t229;
t426 = -t172 + t227;
t434 = t317 * t426;
t222 = t263 * t261;
t425 = -t222 + t229;
t433 = t318 * t425;
t431 = t322 * t426;
t430 = t323 * t425;
t316 = t325 ^ 2;
t327 = qJD(1) ^ 2;
t321 = sin(qJ(1));
t417 = cos(qJ(1));
t364 = t321 * g(1) - t417 * g(2);
t347 = qJDD(1) * pkin(1) + t364;
t348 = qJD(2) * pkin(2) - pkin(8) * t379;
t235 = t297 * pkin(2) + (pkin(8) * t316 + pkin(7)) * t327 - t348 * t379 + t347;
t390 = t314 * t289;
t428 = pkin(3) * t390 - t289 * t419 - t235;
t359 = t319 * t296 - t324 * t297;
t231 = qJD(3) * t289 + t359;
t269 = pkin(4) * t289 - pkin(9) * t314;
t275 = t287 * t314;
t206 = t232 - t275;
t427 = qJ(4) * t206;
t328 = -t427 + t428;
t104 = -pkin(4) * t284 + t231 * t418 - t289 * t269 + t328;
t383 = t320 * t327;
t349 = g(1) * t417 + t321 * g(2);
t409 = qJDD(1) * pkin(7);
t292 = -t327 * pkin(1) - t349 + t409;
t386 = t320 * t292;
t219 = qJDD(2) * pkin(2) - t296 * pkin(8) - t386 + (pkin(2) * t383 + pkin(8) * t373 - g(3)) * t325;
t268 = -t320 * g(3) + t325 * t292;
t310 = t316 * t327;
t221 = -pkin(2) * t310 + t297 * pkin(8) - qJD(2) * t348 + t268;
t174 = -t324 * t219 + t319 * t221;
t250 = pkin(3) * t287 - qJ(4) * t289;
t141 = -t313 * pkin(3) - t312 * qJ(4) + t289 * t250 + qJDD(4) + t174;
t207 = t232 + t275;
t108 = pkin(4) * t207 + pkin(9) * t244 + t141;
t69 = t318 * t104 - t323 * t108;
t70 = t104 * t323 + t108 * t318;
t37 = t318 * t70 - t323 * t69;
t354 = t318 * t231 + t323 * t313;
t185 = -qJD(5) * t261 + t354;
t283 = qJD(5) + t289;
t239 = t283 * t261;
t169 = t185 + t239;
t421 = t420 - t284;
t213 = t215 ^ 2;
t214 = t217 ^ 2;
t258 = t261 ^ 2;
t259 = t263 ^ 2;
t279 = qJD(6) + t283;
t277 = t279 ^ 2;
t281 = t283 ^ 2;
t416 = pkin(3) * t319;
t415 = pkin(3) * t324;
t48 = pkin(5) * t425 - pkin(10) * t169 - t69;
t362 = -t323 * t231 + t318 * t313;
t184 = -qJD(5) * t263 - t362;
t236 = pkin(5) * t283 - pkin(10) * t263;
t51 = -pkin(5) * t258 + pkin(10) * t184 - t236 * t283 + t70;
t25 = t317 * t51 - t322 * t48;
t26 = t317 * t48 + t322 * t51;
t15 = -t25 * t322 + t26 * t317;
t414 = t15 * t318;
t413 = t15 * t323;
t175 = t319 * t219 + t324 * t221;
t334 = -t312 * pkin(3) + t313 * qJ(4) - t287 * t250 + t175;
t112 = -t231 * pkin(4) - t284 * pkin(9) + (t419 + t269) * t314 + t334;
t80 = -t184 * pkin(5) - t258 * pkin(10) + t263 * t236 + t112;
t412 = t317 * t80;
t410 = t322 * t80;
t128 = -t174 * t324 + t175 * t319;
t408 = t128 * t320;
t146 = t172 + t227;
t407 = t146 * t317;
t406 = t146 * t322;
t177 = t222 + t229;
t405 = t177 * t318;
t404 = t177 * t323;
t403 = t235 * t319;
t402 = t235 * t324;
t395 = t279 * t317;
t394 = t279 * t322;
t393 = t283 * t318;
t392 = t283 * t323;
t389 = t314 * t319;
t388 = t314 * t324;
t387 = t318 * t112;
t302 = t325 * t383;
t385 = t320 * (qJDD(2) + t302);
t109 = t323 * t112;
t382 = t325 * (qJDD(2) - t302);
t134 = t314 * t419 + t334;
t381 = -pkin(3) * t141 + qJ(4) * t134;
t377 = -qJD(3) + t314;
t201 = t289 * t377 - t359;
t202 = t287 * t377 + t353;
t380 = -pkin(3) * t202 + qJ(4) * t201;
t376 = qJD(3) + t314;
t375 = qJD(5) + t283;
t374 = qJD(6) + t279;
t372 = t319 * t172;
t371 = t324 * t172;
t370 = t319 * t222;
t369 = t324 * t222;
t365 = qJ(4) * t319 + pkin(2);
t16 = t25 * t317 + t322 * t26;
t129 = t174 * t319 + t324 * t175;
t363 = -t322 * t184 + t317 * t185;
t267 = t325 * g(3) + t386;
t360 = t320 * t267 + t325 * t268;
t358 = qJ(4) * t112 - t37 * t418;
t158 = -t277 - t213;
t102 = t158 * t317 + t431;
t357 = pkin(5) * t102 - t25;
t38 = t318 * t69 + t323 * t70;
t355 = t317 * t184 + t322 * t185;
t212 = -t259 - t281;
t143 = t212 * t323 - t405;
t170 = -t261 * t375 + t354;
t350 = qJ(4) * t170 - t143 * t418 + t109;
t179 = -t214 - t277;
t113 = t179 * t322 - t407;
t346 = pkin(5) * t113 - t26;
t195 = -t281 - t258;
t137 = t195 * t318 + t430;
t165 = t263 * t375 + t362;
t345 = qJ(4) * t165 - t137 * t418 + t387;
t340 = (-qJD(6) + t279) * t217 - t363;
t127 = -qJD(6) * t215 + t355;
t194 = t279 * t215;
t97 = t127 + t194;
t62 = t317 * t340 - t322 * t97;
t11 = -pkin(10) * t62 - t15;
t139 = -t213 - t214;
t64 = t317 * t97 + t322 * t340;
t33 = t318 * t64 + t323 * t62;
t9 = -pkin(5) * t139 + pkin(10) * t64 + t16;
t344 = qJ(4) * t139 + t323 * t11 - t318 * t9 - t33 * t418;
t103 = t158 * t322 - t434;
t93 = t217 * t374 + t363;
t39 = -pkin(5) * t93 + pkin(10) * t103 - t410;
t50 = -pkin(10) * t102 + t412;
t66 = t102 * t323 + t103 * t318;
t343 = qJ(4) * t93 - t318 * t39 + t323 * t50 - t418 * t66;
t114 = -t179 * t317 - t406;
t98 = -t215 * t374 + t355;
t40 = -pkin(5) * t98 + pkin(10) * t114 + t412;
t55 = -pkin(10) * t113 + t410;
t72 = t113 * t323 + t114 * t318;
t342 = qJ(4) * t98 - t318 * t40 + t323 * t55 - t418 * t72;
t339 = (-qJD(5) + t283) * t263 - t362;
t119 = -t169 * t323 + t318 * t339;
t187 = -t258 - t259;
t341 = qJ(4) * t187 - t119 * t418 - t37;
t12 = -pkin(5) * t80 + pkin(10) * t16;
t7 = t16 * t318 + t413;
t337 = -pkin(10) * t413 + qJ(4) * t80 - t12 * t318 - t418 * t7;
t336 = -t287 * t376 + t353;
t335 = pkin(3) * t244 - qJ(4) * t243 + t141;
t333 = t320 * (t324 * t232 - t289 * t389) + t325 * (t319 * t232 + t289 * t388);
t332 = t320 * (t231 * t319 + t287 * t388) + t325 * (-t324 * t231 + t287 * t389);
t331 = -pkin(3) * t422 + qJ(4) * t438 + t134;
t330 = (t320 * (-t287 * t324 + t289 * t319) + t325 * (-t287 * t319 - t289 * t324)) * t314;
t329 = -t231 * pkin(3) - t428;
t326 = qJD(2) ^ 2;
t315 = t320 ^ 2;
t309 = t315 * t327;
t298 = t308 - 0.2e1 * t367;
t295 = t307 + 0.2e1 * t366;
t291 = t327 * pkin(7) + t347;
t238 = -t259 + t281;
t237 = t258 - t281;
t220 = t259 - t258;
t200 = t231 + t390;
t199 = t231 - t390;
t198 = t289 * t376 + t359;
t189 = -t214 + t277;
t188 = t213 - t277;
t181 = (-t261 * t323 + t263 * t318) * t283;
t180 = (t261 * t318 + t263 * t323) * t283;
t171 = t214 - t213;
t168 = t185 - t239;
t162 = t185 * t323 - t263 * t393;
t161 = -t185 * t318 - t263 * t392;
t160 = -t184 * t318 + t261 * t392;
t159 = -t184 * t323 - t261 * t393;
t157 = -t199 * t324 + t207 * t319;
t156 = t201 * t324 + t202 * t319;
t155 = -t199 * t319 - t207 * t324;
t154 = t201 * t319 - t202 * t324;
t153 = t237 * t323 - t405;
t152 = -t238 * t318 + t430;
t151 = -t237 * t318 - t404;
t150 = -t238 * t323 - t433;
t149 = (-t215 * t322 + t217 * t317) * t279;
t148 = (-t215 * t317 - t217 * t322) * t279;
t144 = -t212 * t318 - t404;
t138 = t195 * t323 - t433;
t131 = -qJ(4) * t423 + t141;
t130 = -pkin(3) * t423 + t134;
t126 = -qJD(6) * t217 - t363;
t125 = t188 * t322 - t407;
t124 = -t189 * t317 + t431;
t123 = t188 * t317 + t406;
t122 = t189 * t322 + t434;
t121 = t169 * t318 + t323 * t339;
t120 = -t165 * t323 - t168 * t318;
t118 = t165 * t318 - t168 * t323;
t116 = (t200 + t231) * pkin(3) + t328;
t115 = (t336 + t206) * qJ(4) + t329;
t106 = t143 * t319 + t170 * t324;
t105 = -t143 * t324 + t170 * t319;
t100 = t137 * t319 + t165 * t324;
t99 = -t137 * t324 + t165 * t319;
t96 = t127 - t194;
t90 = t127 * t322 - t217 * t395;
t89 = t127 * t317 + t217 * t394;
t88 = -t126 * t317 + t215 * t394;
t87 = t126 * t322 + t215 * t395;
t86 = -t148 * t318 + t149 * t323;
t85 = -t148 * t323 - t149 * t318;
t84 = t119 * t319 + t187 * t324;
t83 = -t119 * t324 + t187 * t319;
t81 = t134 * t319 - t141 * t324;
t78 = -t123 * t318 + t125 * t323;
t77 = -t122 * t318 + t124 * t323;
t76 = -t123 * t323 - t125 * t318;
t75 = -t122 * t323 - t124 * t318;
t74 = pkin(4) * t119 - qJ(4) * t121;
t73 = -t113 * t318 + t114 * t323;
t67 = -t102 * t318 + t103 * t323;
t63 = -t317 * t96 - t322 * t93;
t61 = -t317 * t93 + t322 * t96;
t60 = pkin(5) * t62;
t59 = -t318 * t89 + t323 * t90;
t58 = -t318 * t87 + t323 * t88;
t57 = -t318 * t90 - t323 * t89;
t56 = -t318 * t88 - t323 * t87;
t53 = pkin(4) * t170 - t144 * t418 - t387;
t52 = pkin(4) * t165 - t138 * t418 + t109;
t46 = t319 * t72 + t324 * t98;
t45 = t319 * t98 - t324 * t72;
t44 = pkin(4) * t143 - qJ(4) * t144 - t70;
t43 = pkin(4) * t137 - qJ(4) * t138 - t69;
t42 = t319 * t66 + t324 * t93;
t41 = t319 * t93 - t324 * t66;
t35 = -t318 * t62 + t323 * t64;
t34 = -t318 * t61 + t323 * t63;
t32 = -t318 * t63 - t323 * t61;
t30 = t139 * t324 + t319 * t33;
t29 = t139 * t319 - t324 * t33;
t28 = t112 * t324 + t319 * t37;
t27 = t112 * t319 - t324 * t37;
t23 = pkin(4) * t187 - t121 * t418 - t38;
t22 = pkin(4) * t37 - qJ(4) * t38;
t21 = pkin(4) * t112 - t38 * t418;
t20 = pkin(4) * t72 - qJ(4) * t73 + t346;
t19 = pkin(4) * t66 - qJ(4) * t67 + t357;
t18 = pkin(4) * t98 - t318 * t55 - t323 * t40 - t418 * t73;
t17 = pkin(4) * t33 - qJ(4) * t35 + t60;
t14 = pkin(5) * t15;
t13 = pkin(4) * t93 - t318 * t50 - t323 * t39 - t418 * t67;
t8 = t16 * t323 - t414;
t5 = t319 * t7 + t324 * t80;
t4 = t319 * t80 - t324 * t7;
t3 = pkin(4) * t139 - t318 * t11 - t323 * t9 - t35 * t418;
t2 = pkin(4) * t7 - qJ(4) * t8 + t14;
t1 = pkin(4) * t80 + pkin(10) * t414 - t323 * t12 - t418 * t8;
t6 = [0, 0, 0, 0, 0, qJDD(1), t364, t349, 0, 0, (t296 + t366) * t320, t295 * t325 + t298 * t320, t385 + t325 * (-t309 + t326), (t297 - t367) * t325, t320 * (t310 - t326) + t382, 0, t325 * t291 + pkin(1) * t298 + pkin(7) * (t325 * (-t310 - t326) - t385), -t320 * t291 - pkin(1) * t295 + pkin(7) * (-t382 - t320 * (-t309 - t326)), pkin(1) * (t309 + t310) + (t315 + t316) * t409 + t360, pkin(1) * t291 + pkin(7) * t360, t333, t320 * (-t198 * t324 - t206 * t319) + t325 * (-t198 * t319 + t206 * t324), -t456, t332, -t455, t330, t320 * (-t403 - t444) + t325 * (-pkin(2) * t198 + t402 - t443) - pkin(1) * t198 - t448, t320 * (-t402 + t459) + t325 * (-pkin(2) * t336 - t403 - t458) - pkin(1) * t336 + t461, t320 * (-pkin(8) * t155 - t128) + t325 * (pkin(8) * t157 + t129 - t435) - t436 + pkin(7) * (-t155 * t320 + t157 * t325), -pkin(8) * t408 + t325 * (pkin(2) * t235 + pkin(8) * t129) + pkin(1) * t235 + pkin(7) * (t129 * t325 - t408), t330, t456, t455, t333, t320 * (-t200 * t324 - t319 * t336) + t325 * (-t200 * t319 + t324 * t336), t332, t320 * (-pkin(8) * t154 - t130 * t319 + t131 * t324) + t325 * (pkin(8) * t156 + t130 * t324 + t131 * t319 - t435) - t436 + pkin(7) * (-t154 * t320 + t156 * t325), t320 * (-t116 * t319 + t444) + t325 * (t324 * t116 + t443) + t448 + (qJ(4) * t384 + t325 * t365 + pkin(1)) * t200, t320 * (t115 * t324 - t459) + t325 * (t319 * t115 + t458) - t461 + (-t320 * t416 + t325 * (pkin(2) + t415) + pkin(1)) * t336, (t320 * (qJ(4) * t324 - t416) + t325 * (t365 + t415) + pkin(1)) * (t329 + t427) + (pkin(7) + pkin(8)) * (-t320 * t81 + t325 * (t134 * t324 + t141 * t319)), t320 * (-t161 * t319 + t369) + t325 * (t161 * t324 + t370), t320 * (-t118 * t319 + t220 * t324) + t325 * (t118 * t324 + t220 * t319), t320 * (-t150 * t319 + t169 * t324) + t325 * (t150 * t324 + t169 * t319), t320 * (-t159 * t319 - t369) + t325 * (t159 * t324 - t370), t320 * (-t151 * t319 + t324 * t339) + t325 * (t151 * t324 + t319 * t339), t320 * (-t180 * t319 + t229 * t324) + t325 * (t180 * t324 + t229 * t319), t320 * (-pkin(8) * t99 - t319 * t52 + t324 * t43) + t325 * (-pkin(2) * t138 + pkin(8) * t100 + t319 * t43 + t324 * t52) - pkin(1) * t138 + pkin(7) * (t100 * t325 - t320 * t99), t320 * (-pkin(8) * t105 - t319 * t53 + t324 * t44) + t325 * (-pkin(2) * t144 + pkin(8) * t106 + t319 * t44 + t324 * t53) - pkin(1) * t144 + pkin(7) * (-t105 * t320 + t106 * t325), t320 * (-pkin(8) * t83 - t23 * t319 + t324 * t74) + t325 * (-pkin(2) * t121 + pkin(8) * t84 + t23 * t324 + t319 * t74) - pkin(1) * t121 + pkin(7) * (-t320 * t83 + t325 * t84), t320 * (-pkin(8) * t27 - t21 * t319 + t22 * t324) + t325 * (-pkin(2) * t38 + pkin(8) * t28 + t21 * t324 + t22 * t319) - pkin(1) * t38 + pkin(7) * (-t27 * t320 + t28 * t325), t320 * (-t319 * t57 + t371) + t325 * (t324 * t57 + t372), t320 * (t171 * t324 - t319 * t32) + t325 * (t171 * t319 + t32 * t324), t320 * (-t319 * t75 + t324 * t97) + t325 * (t319 * t97 + t324 * t75), t320 * (-t319 * t56 - t371) + t325 * (t324 * t56 - t372), t320 * (-t319 * t76 + t324 * t340) + t325 * (t319 * t340 + t324 * t76), t320 * (t227 * t324 - t319 * t85) + t325 * (t227 * t319 + t324 * t85), t320 * (-pkin(8) * t41 - t13 * t319 + t19 * t324) + t325 * (-pkin(2) * t67 + pkin(8) * t42 + t13 * t324 + t19 * t319) - pkin(1) * t67 + pkin(7) * (-t320 * t41 + t325 * t42), t320 * (-pkin(8) * t45 - t18 * t319 + t20 * t324) + t325 * (-pkin(2) * t73 + pkin(8) * t46 + t18 * t324 + t20 * t319) - pkin(1) * t73 + pkin(7) * (-t320 * t45 + t325 * t46), t320 * (-pkin(8) * t29 + t17 * t324 - t3 * t319) + t325 * (-pkin(2) * t35 + pkin(8) * t30 + t17 * t319 + t3 * t324) - pkin(1) * t35 + pkin(7) * (-t29 * t320 + t30 * t325), t320 * (-pkin(8) * t4 - t1 * t319 + t2 * t324) + t325 * (-pkin(2) * t8 + pkin(8) * t5 + t1 * t324 + t2 * t319) - pkin(1) * t8 + pkin(7) * (-t320 * t4 + t325 * t5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t302, t309 - t310, t307, t302, t308, qJDD(2), -t267, -t268, 0, 0, t391, t421, t207, -t391, t201, t313, -t174 + t445, -t175 - t460, pkin(2) * t155, pkin(2) * t128, t313, -t202, t199, t391, t421, -t391, pkin(2) * t154 + t380, t335 - t445, t331 + t460, pkin(2) * t81 + t381, t162, t120, t152, t160, t153, t181, pkin(2) * t99 + t345, pkin(2) * t105 + t350, pkin(2) * t83 + t341, pkin(2) * t27 + t358, t59, t34, t77, t58, t78, t86, pkin(2) * t41 + t343, pkin(2) * t45 + t342, pkin(2) * t29 + t344, pkin(2) * t4 + t337; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t391, t421, t207, -t391, t201, t313, -t174, -t175, 0, 0, t313, -t202, t199, t391, t421, -t391, t380, t335, t331, t381, t162, t120, t152, t160, t153, t181, t345, t350, t341, t358, t59, t34, t77, t58, t78, t86, t343, t342, t344, t337; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t202, -t244, t422, t141, 0, 0, 0, 0, 0, 0, t137, t143, t119, t37, 0, 0, 0, 0, 0, 0, t66, t72, t33, t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t222, t220, t169, -t222, t339, t229, -t69, -t70, 0, 0, t172, t171, t97, -t172, t340, t227, t357, t346, t60, t14; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t172, t171, t97, -t172, t340, t227, -t25, -t26, 0, 0;];
tauJ_reg  = t6;
