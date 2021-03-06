% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6PRRRRR6
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [14x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,alpha4,d2,d3,d4,d5,d6,theta1]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 01:28
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6PRRRRR6_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(14,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRRRR6_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRRRR6_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [14 1]), ...
  'S6PRRRRR6_inertiaDJ_reg2_slag_vp: pkin has to be [14x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 01:25:04
% EndTime: 2019-03-09 01:25:56
% DurationCPUTime: 24.31s
% Computational Cost: add. (19381->774), mult. (60620->1388), div. (0->0), fcn. (62993->16), ass. (0->325)
t124 = sin(pkin(7));
t129 = sin(qJ(4));
t135 = cos(qJ(3));
t357 = cos(pkin(8));
t289 = t135 * t357;
t130 = sin(qJ(3));
t134 = cos(qJ(4));
t348 = t130 * t134;
t216 = t129 * t289 + t348;
t123 = sin(pkin(8));
t358 = cos(pkin(7));
t287 = t358 * t123;
t270 = t129 * t287;
t248 = qJD(4) * t270;
t291 = t134 * t357;
t392 = (t129 * t135 + t130 * t291) * qJD(3);
t153 = (qJD(4) * t216 + t392) * t124 + t248;
t350 = t129 * t130;
t312 = t124 * t350;
t268 = t124 * t289;
t105 = t134 * t268;
t113 = t134 * t287;
t344 = t105 + t113;
t246 = t312 - t344;
t409 = 0.2e1 * t153 * t246;
t243 = t124 * (-pkin(11) * t357 - pkin(10));
t290 = t135 * t358;
t280 = pkin(2) * t290;
t178 = t130 * t243 + t280;
t309 = t358 * pkin(3);
t171 = t309 + t178;
t311 = -pkin(3) * t135 - pkin(2);
t355 = t123 * t130;
t213 = t124 * (-pkin(11) * t355 + t311);
t152 = t123 * t213 + t357 * t171;
t199 = t268 + t287;
t292 = t130 * t358;
t281 = pkin(2) * t292;
t351 = t124 * t135;
t209 = -pkin(10) * t351 - t281;
t162 = pkin(11) * t199 - t209;
t40 = -t129 * t162 + t134 * t152;
t189 = t124 * t392;
t353 = t123 * t134;
t385 = t129 ^ 2;
t407 = -t189 * t353 + ((-0.2e1 * t113 - t105) * t129 + (t385 * t130 - t134 * t216) * t124) * qJD(4) * t123;
t128 = sin(qJ(5));
t230 = t123 * t351 - t357 * t358;
t294 = t124 * t357;
t269 = t130 * t294;
t249 = qJD(3) * t269;
t338 = qJD(3) * t135;
t298 = t124 * t338;
t60 = t129 * t249 + qJD(4) * t312 + (-qJD(4) * t199 - t298) * t134;
t193 = qJD(5) * t230 + t60;
t406 = t128 * t193;
t36 = pkin(4) * t230 - t40;
t339 = qJD(3) * t130;
t299 = t124 * t339;
t272 = t123 * t299;
t388 = t124 * t216 + t270;
t405 = qJD(5) * t388 - t272;
t133 = cos(qJ(5));
t63 = t128 * t388 + t133 * t230;
t64 = -t128 * t230 + t133 * t388;
t141 = t63 * pkin(5) - t64 * pkin(13) + t36;
t214 = t230 * pkin(12);
t41 = t129 * t152 + t134 * t162;
t143 = -t214 + t41;
t177 = qJD(3) * (t135 * t243 - t281);
t340 = qJD(3) * t124;
t205 = (-pkin(11) * t123 * t135 + pkin(3) * t130) * t340;
t400 = -pkin(4) * t153 - t60 * pkin(12) + qJD(5) * t143 + t123 * t177 - t205 * t357;
t157 = pkin(4) * t246 - pkin(12) * t388;
t146 = -t123 * t171 + t213 * t357 + t157;
t390 = -qJD(3) * t178 - t152 * qJD(4);
t391 = qJD(4) * t162 - t123 * t205 - t357 * t177;
t28 = t129 * t391 + t134 * t390;
t401 = -pkin(12) * t272 - qJD(5) * t146 + t28;
t7 = t128 * t400 + t133 * t401;
t402 = -pkin(13) * t153 - qJD(6) * t141 + t7;
t356 = t123 * t129;
t207 = -pkin(3) * t291 + pkin(11) * t356;
t88 = -pkin(4) * t357 + t207;
t314 = t128 * t356;
t95 = -t133 * t357 + t314;
t354 = t123 * t133;
t96 = t128 * t357 + t129 * t354;
t170 = t95 * pkin(5) - t96 * pkin(13) + t88;
t293 = t129 * t357;
t279 = pkin(3) * t293;
t202 = pkin(12) * t357 + t279;
t190 = qJD(5) * t202;
t89 = t207 * qJD(4);
t174 = -t128 * t190 - t133 * t89;
t264 = pkin(4) * t129 - pkin(12) * t134;
t310 = -pkin(12) * t129 - pkin(3);
t251 = pkin(4) * t134 - t310;
t379 = pkin(11) * t134;
t188 = t128 * t379 + t133 * t251;
t393 = t188 * qJD(5);
t399 = -(-t393 + (t129 * pkin(13) + t128 * t264) * qJD(4)) * t123 - t174 - qJD(6) * t170;
t125 = sin(pkin(6));
t136 = cos(qJ(2));
t288 = t136 * t358;
t131 = sin(qJ(2));
t347 = t131 * t135;
t219 = t130 * t288 + t347;
t197 = t219 * qJD(3);
t218 = t130 * t136 + t131 * t290;
t126 = cos(pkin(6));
t271 = t126 * t299;
t155 = -t271 + (-qJD(2) * t218 - t197) * t125;
t341 = qJD(2) * t125;
t297 = t131 * t341;
t398 = t124 * t123 * t297 + t155 * t357;
t229 = t405 * t128;
t387 = -t133 * t193 - t229;
t397 = qJD(6) * t246 + t387;
t169 = qJD(4) * t388;
t396 = t169 + t189;
t333 = qJD(5) * t128;
t335 = qJD(4) * t134;
t300 = t123 * t335;
t345 = t96 * qJD(5);
t78 = t128 * t300 + t345;
t241 = -t133 * t78 + t95 * t333;
t33 = t405 * t133 - t406;
t242 = -t133 * t33 + t63 * t333;
t127 = sin(qJ(6));
t119 = t127 ^ 2;
t132 = cos(qJ(6));
t121 = t132 ^ 2;
t343 = t119 - t121;
t284 = qJD(6) * t343;
t228 = t128 * t251;
t394 = (t133 * t379 - t228) * qJD(5);
t110 = qJD(5) * t314;
t285 = t357 * qJD(5);
t211 = t285 + t300;
t389 = -t133 * t211 + t110;
t117 = t123 ^ 2;
t384 = t134 ^ 2;
t383 = 0.2e1 * t123;
t118 = t124 ^ 2;
t382 = pkin(2) * t118;
t381 = pkin(3) * t123;
t380 = pkin(11) * t128;
t378 = pkin(12) * t123;
t377 = pkin(12) * t128;
t376 = pkin(12) * t133;
t149 = t123 * t271 + (t123 * t197 + (t123 * t218 + t131 * t294) * qJD(2)) * t125;
t286 = t357 * qJD(4);
t265 = t134 * t286;
t336 = qJD(4) * t129;
t217 = -t130 * t131 + t135 * t288;
t59 = t126 * t298 + (t217 * qJD(3) + (-t131 * t292 + t135 * t136) * qJD(2)) * t125;
t76 = t125 * t217 + t126 * t351;
t352 = t124 * t130;
t77 = t125 * t219 + t126 * t352;
t93 = -t125 * t136 * t124 + t126 * t358;
t25 = t129 * t398 + t59 * t134 + t265 * t76 + t300 * t93 - t336 * t77;
t44 = t77 * t134 + (t123 * t93 + t357 * t76) * t129;
t62 = -t76 * t123 + t357 * t93;
t31 = t128 * t62 + t133 * t44;
t11 = qJD(5) * t31 + t128 * t25 - t133 * t149;
t30 = t128 * t44 - t62 * t133;
t375 = t11 * t30;
t24 = qJD(4) * t44 + t59 * t129 - t134 * t398;
t43 = t77 * t129 - t291 * t76 - t353 * t93;
t374 = t43 * t24;
t319 = pkin(11) * t353;
t100 = t279 + t319;
t90 = t100 * qJD(4);
t373 = t43 * t90;
t23 = t128 * t146 + t133 * t143;
t70 = -t123 * t228 + t133 * (t202 + t319);
t372 = t11 * t128;
t329 = qJD(6) * t127;
t16 = -t127 * t153 - t132 * t397 + t329 * t64;
t371 = t127 * t16;
t45 = t127 * t64 - t132 * t246;
t370 = t127 * t45;
t301 = t123 * t336;
t79 = t127 * t96 + t132 * t353;
t51 = qJD(6) * t79 - t127 * t301 + t132 * t389;
t369 = t127 * t51;
t368 = t127 * t79;
t367 = t132 * t16;
t328 = qJD(6) * t132;
t17 = t127 * t397 - t132 * t153 + t328 * t64;
t366 = t132 * t17;
t46 = t127 * t246 + t132 * t64;
t365 = t132 * t46;
t364 = t132 * t51;
t313 = t127 * t353;
t52 = -qJD(6) * t313 - t127 * t389 - t132 * t301 + t328 * t96;
t363 = t132 * t52;
t80 = t132 * t96 - t313;
t362 = t132 * t80;
t61 = (pkin(3) * t269 - t123 * t209) * qJD(3);
t359 = t61 * t129;
t346 = t132 * t133;
t120 = t128 ^ 2;
t342 = -t133 ^ 2 + t120;
t334 = qJD(5) * t127;
t332 = qJD(5) * t132;
t331 = qJD(5) * t133;
t330 = qJD(5) * t134;
t327 = qJD(6) * t133;
t326 = 0.2e1 * t63 * t33;
t325 = 0.2e1 * t95 * t78;
t324 = -0.2e1 * pkin(4) * qJD(5);
t323 = -0.2e1 * pkin(5) * qJD(6);
t322 = t127 * t376;
t321 = pkin(10) * t352;
t320 = pkin(12) * t346;
t318 = pkin(12) * t333;
t317 = pkin(12) * t331;
t308 = t118 * t338;
t307 = t117 * t335;
t306 = t128 * t330;
t305 = t132 * t331;
t304 = t127 * t327;
t303 = t128 * t328;
t302 = t132 * t327;
t296 = t127 * t328;
t295 = t128 * t331;
t283 = t342 * qJD(5);
t282 = 0.2e1 * t295;
t278 = t118 * t297;
t277 = t117 * t299;
t276 = t132 * t295;
t275 = t120 * t296;
t274 = t129 * t307;
t273 = t130 * t308;
t267 = t358 * t340;
t266 = t129 * t286;
t263 = -pkin(5) * t133 - pkin(13) * t128;
t262 = pkin(5) * t128 - pkin(13) * t133;
t8 = t128 * t401 - t133 * t400;
t261 = -t8 * t128 - t7 * t133;
t260 = t33 * t95 + t63 * t78;
t19 = pkin(13) * t246 + t23;
t10 = t127 * t141 + t132 * t19;
t9 = -t127 * t19 + t132 * t141;
t259 = -t10 * t127 - t132 * t9;
t20 = -t127 * t31 + t132 * t43;
t21 = t127 * t43 + t132 * t31;
t258 = -t127 * t21 - t132 * t20;
t66 = -pkin(13) * t353 + t70;
t37 = -t127 * t66 + t132 * t170;
t38 = t127 * t170 + t132 * t66;
t257 = -t127 * t38 - t132 * t37;
t256 = -t127 * t46 - t132 * t45;
t255 = -t127 * t80 - t132 * t79;
t250 = pkin(4) - t263;
t227 = t132 * t250;
t85 = -t227 - t322;
t86 = -t127 * t250 + t320;
t254 = -t127 * t86 - t132 * t85;
t231 = qJD(4) * t264;
t47 = (-t128 * t231 + t393) * t123 - t174;
t175 = t128 * t89 - t133 * t190;
t48 = (t133 * t231 - t394) * t123 + t175;
t253 = -t48 * t128 - t47 * t133;
t247 = -pkin(2) * t124 - pkin(3) * t351;
t203 = t280 + t309;
t182 = t203 - t321;
t22 = -t128 * (-t134 * t209 + t182 * t293 + t247 * t356 - t214) + t133 * (-t123 * t182 + t247 * t357 + t157) - (t113 + (t134 * t289 + (-t357 ^ 2 - t117) * t350) * t124) * t380;
t18 = -pkin(5) * t246 - t22;
t6 = -pkin(5) * t153 - t8;
t245 = t127 * t6 + t18 * t328;
t244 = -t132 * t6 + t18 * t329;
t240 = t11 * t127 + t30 * t328;
t239 = -t11 * t132 + t30 * t329;
t238 = t127 * t33 + t328 * t63;
t237 = -t132 * t33 + t329 * t63;
t42 = (t394 + (-t129 * pkin(5) - t133 * t264) * qJD(4)) * t123 - t175;
t192 = t128 * t202;
t65 = t192 + (-t133 * t310 + (pkin(4) * t133 + pkin(5) + t380) * t134) * t123;
t236 = t127 * t42 + t328 * t65;
t235 = -t132 * t42 + t329 * t65;
t234 = t127 * t78 + t328 * t95;
t233 = -t132 * t78 + t329 * t95;
t232 = t262 * t127;
t226 = t134 * (qJD(3) * t357 + qJD(4));
t225 = t135 * (t286 + qJD(3));
t224 = t123 * t246;
t223 = qJD(5) * t246;
t221 = t128 * t336 - t133 * t330;
t220 = t128 * t332 + t304;
t212 = t130 * t226;
t210 = t123 * t230;
t208 = -t280 + t321;
t204 = t133 * t223;
t198 = qJD(4) * t210;
t29 = t129 * t390 - t134 * t391;
t27 = -pkin(4) * t272 - t29;
t138 = t33 * pkin(5) - pkin(13) * t387 + t27;
t1 = -t127 * t138 + t132 * t402 + t19 * t329;
t2 = t127 * t402 + t132 * t138 - t19 * t328;
t184 = qJD(6) * t259 - t1 * t132 - t127 * t2;
t12 = t128 * t149 + t25 * t133 + t331 * t62 - t333 * t44;
t3 = -qJD(6) * t21 - t12 * t127 + t132 * t24;
t4 = qJD(6) * t20 + t12 * t132 + t127 * t24;
t183 = qJD(6) * t258 - t127 * t3 + t132 * t4;
t181 = t372 + t12 * t133 + (-t128 * t31 + t133 * t30) * qJD(5);
t156 = pkin(3) * t266 + t78 * pkin(5) + pkin(11) * t300 + pkin(13) * t389;
t14 = -t127 * t156 + t132 * t399 + t329 * t66;
t15 = t127 * t399 + t132 * t156 - t328 * t66;
t180 = qJD(6) * t257 - t127 * t15 - t132 * t14;
t67 = pkin(12) * t220 - qJD(5) * t232 + qJD(6) * t227;
t68 = -t86 * qJD(6) + (t127 * t377 + t132 * t262) * qJD(5);
t179 = qJD(6) * t254 - t127 * t68 - t132 * t67;
t166 = t123 * t169;
t148 = t123 * t149;
t115 = -0.2e1 * t295;
t106 = -0.2e1 * t274;
t92 = t209 * qJD(3);
t91 = t208 * qJD(3);
t81 = -t127 * t305 + t128 * t284;
t69 = -t123 * t188 - t192;
t56 = -t123 * t203 + (pkin(10) * t355 + t311 * t357) * t124;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t76 * t271 + 0.2e1 * t77 * t59 + 0.2e1 * (-t76 * t197 + (t93 * t131 * t124 - t218 * t76) * qJD(2)) * t125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t149 * t62 + 0.2e1 * t44 * t25 + 0.2e1 * t374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t12 * t31 + 0.2e1 * t374 + 0.2e1 * t375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t20 * t3 + 0.2e1 * t21 * t4 + 0.2e1 * t375; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t297, -t136 * t341, 0, 0, 0, 0, 0, 0, 0, 0, -t135 * t278 + t155 * t358 + t299 * t93, t130 * t278 + t298 * t93 - t358 * t59 ((-qJD(3) * t76 + t59) * t135 + (t218 * t341 + (t125 * t347 - t77 + (t124 * t126 + t125 * t288) * t130) * qJD(3)) * t130) * t124, t208 * t271 - t59 * t209 + t76 * t92 - t77 * t91 + (t208 * t197 + (-t131 * t382 + t208 * t218) * qJD(2)) * t125, 0, 0, 0, 0, 0, 0, t149 * t246 + t153 * t62 + t230 * t24 - t272 * t43, t149 * t388 + t230 * t25 - t272 * t44 - t62 * t60, -t153 * t44 + t24 * t388 - t246 * t25 - t43 * t60, t149 * t56 - t24 * t40 + t25 * t41 - t44 * t28 - t43 * t29 + t62 * t61, 0, 0, 0, 0, 0, 0, t11 * t344 - t30 * t248 + t24 * t63 + t43 * t33 + (-t30 * t212 + (-t11 * t130 - t225 * t30) * t129) * t124, -t12 * t246 - t153 * t31 + t24 * t64 + t387 * t43, t11 * t64 - t12 * t63 + t30 * t387 - t31 * t33, -t11 * t22 + t12 * t23 + t24 * t36 + t27 * t43 - t30 * t8 - t31 * t7, 0, 0, 0, 0, 0, 0, t11 * t45 + t17 * t30 + t20 * t33 + t3 * t63, t11 * t46 - t16 * t30 - t21 * t33 - t4 * t63, t16 * t20 - t17 * t21 - t3 * t46 - t4 * t45, -t1 * t21 + t10 * t4 + t11 * t18 + t2 * t20 + t3 * t9 + t30 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t273, 0.2e1 * (-t130 ^ 2 + t135 ^ 2) * t118 * qJD(3), 0.2e1 * t135 * t267, -0.2e1 * t273, -0.2e1 * t130 * t267, 0, -0.2e1 * t339 * t382 + 0.2e1 * t358 * t92, -0.2e1 * pkin(2) * t308 + 0.2e1 * t358 * t91, 0.2e1 * (-t130 * t92 - t135 * t91 + (t130 * t209 + t135 * t208) * qJD(3)) * t124, -0.2e1 * t208 * t92 + 0.2e1 * t209 * t91, -0.2e1 * t388 * t60, -0.2e1 * t153 * t388 + 0.2e1 * t246 * t60, 0.2e1 * t230 * t60 + 0.2e1 * t272 * t388, t409, 0.2e1 * t153 * t230 - 0.2e1 * t224 * t299, -0.2e1 * t210 * t299, -0.2e1 * t61 * t344 + 0.2e1 * t56 * t248 - 0.2e1 * t29 * t230 + 0.2e1 * (t56 * t129 * t225 + (t40 * t123 * qJD(3) + t226 * t56 + t359) * t130) * t124, -0.2e1 * t230 * t28 - 0.2e1 * t272 * t41 + 0.2e1 * t388 * t61 - 0.2e1 * t56 * t60, -0.2e1 * t153 * t41 + 0.2e1 * t246 * t28 - 0.2e1 * t29 * t388 + 0.2e1 * t40 * t60, -0.2e1 * t28 * t41 + 0.2e1 * t29 * t40 + 0.2e1 * t56 * t61, 0.2e1 * t64 * t387, -0.2e1 * t64 * t33 - 0.2e1 * t387 * t63, 0.2e1 * t387 * t246 + 0.2e1 * (t129 * t298 + t134 * t249 + t169) * t64, t326, 0.2e1 * t33 * t344 - 0.2e1 * t63 * t248 + 0.2e1 * (-t63 * t212 + (-t33 * t130 - t225 * t63) * t129) * t124, t409, -0.2e1 * t8 * t344 + 0.2e1 * t22 * t248 + 0.2e1 * t27 * t63 + 0.2e1 * t36 * t33 + 0.2e1 * (t22 * t212 + (t8 * t130 + t22 * t225) * t129) * t124, -0.2e1 * t153 * t23 + 0.2e1 * t246 * t7 + 0.2e1 * t27 * t64 + 0.2e1 * t36 * t387, -0.2e1 * t22 * t387 - 0.2e1 * t23 * t33 + 0.2e1 * t7 * t63 - 0.2e1 * t8 * t64, 0.2e1 * t22 * t8 - 0.2e1 * t23 * t7 + 0.2e1 * t27 * t36, -0.2e1 * t46 * t16, 0.2e1 * t16 * t45 - 0.2e1 * t17 * t46, -0.2e1 * t16 * t63 + 0.2e1 * t33 * t46, 0.2e1 * t45 * t17, -0.2e1 * t17 * t63 - 0.2e1 * t33 * t45, t326, 0.2e1 * t17 * t18 + 0.2e1 * t2 * t63 + 0.2e1 * t33 * t9 + 0.2e1 * t45 * t6, 0.2e1 * t1 * t63 - 0.2e1 * t10 * t33 - 0.2e1 * t16 * t18 + 0.2e1 * t46 * t6, 0.2e1 * t1 * t45 - 0.2e1 * t10 * t17 + 0.2e1 * t16 * t9 - 0.2e1 * t2 * t46, -0.2e1 * t1 * t10 + 0.2e1 * t18 * t6 + 0.2e1 * t2 * t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t155, -t59, 0, 0, 0, 0, 0, 0, 0, 0, -t134 * t148 - t24 * t357 + t301 * t62, t129 * t148 - t25 * t357 + t300 * t62 (t129 * t24 + t134 * t25 + (-t129 * t44 + t134 * t43) * qJD(4)) * t123, -pkin(3) * t148 + t25 * t100 + t207 * t24 - t44 * t89 + t373, 0, 0, 0, 0, 0, 0, t24 * t95 + t43 * t78 + (t11 * t134 - t30 * t336) * t123, t12 * t353 + t24 * t96 - t301 * t31 - t389 * t43, t11 * t96 - t12 * t95 - t30 * t389 - t31 * t78, -t11 * t69 + t12 * t70 + t24 * t88 - t30 * t48 - t31 * t47 + t373, 0, 0, 0, 0, 0, 0, t11 * t79 + t20 * t78 + t3 * t95 + t30 * t52, t11 * t80 - t21 * t78 - t30 * t51 - t4 * t95, t20 * t51 - t21 * t52 - t3 * t80 - t4 * t79, t11 * t65 - t14 * t21 + t15 * t20 + t3 * t37 + t30 * t42 + t38 * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t298, 0, -t299, 0, t92, t91, 0, 0, t134 * t166 - t356 * t60, -t129 * t166 - t153 * t356 - t224 * t335 - t353 * t60, t129 * t277 - t134 * t198 - t357 * t60, t407, t129 * t198 + t134 * t277 - t153 * t357, t123 * t249, -t153 * t381 - t207 * t272 + t230 * t90 + t29 * t357 + t301 * t56 - t353 * t61, -t89 * t230 + t28 * t357 + (pkin(3) * t60 - t100 * t299 + t335 * t56 + t359) * t123, -t100 * t153 - t207 * t60 + t246 * t89 - t28 * t353 - t29 * t356 - t300 * t40 - t301 * t41 + t388 * t90, -t100 * t28 - t207 * t29 - t381 * t61 - t40 * t90 - t41 * t89, -t229 * t96 - t64 * t110 + (-t193 * t96 + t211 * t64) * t133, -t96 * t33 - t387 * t95 + t389 * t63 - t64 * t78, t153 * t96 - t246 * t389 + t301 * t64 - t353 * t387, t260, -t78 * t246 + t33 * t353 - t95 * t189 + (-t95 * t124 * t348 + (-t63 * t123 - t199 * t95) * t129) * qJD(4), t407, t153 * t69 + t22 * t301 + t246 * t48 + t27 * t95 + t88 * t33 - t353 * t8 + t36 * t78 + t90 * t63, -t153 * t70 - t23 * t301 + t246 * t47 + t27 * t96 - t353 * t7 - t36 * t389 + t387 * t88 + t90 * t64, t22 * t389 - t23 * t78 - t70 * t33 - t387 * t69 + t47 * t63 - t48 * t64 + t7 * t95 - t8 * t96, t22 * t48 - t23 * t47 + t27 * t88 + t36 * t90 + t69 * t8 - t7 * t70, -t16 * t80 - t46 * t51, t16 * t79 - t17 * t80 + t45 * t51 - t46 * t52, -t16 * t95 + t33 * t80 + t46 * t78 - t51 * t63, t17 * t79 + t45 * t52, -t17 * t95 - t33 * t79 - t45 * t78 - t52 * t63, t260, t15 * t63 + t17 * t65 + t18 * t52 + t2 * t95 + t33 * t37 + t42 * t45 + t6 * t79 + t78 * t9, t1 * t95 - t10 * t78 + t14 * t63 - t16 * t65 - t18 * t51 - t33 * t38 + t42 * t46 + t6 * t80, t1 * t79 - t10 * t52 + t14 * t45 - t15 * t46 + t16 * t37 - t17 * t38 - t2 * t80 + t51 * t9, -t1 * t38 - t10 * t14 + t15 * t9 + t18 * t42 + t2 * t37 + t6 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t274, 0.2e1 * (t384 - t385) * t117 * qJD(4), t265 * t383, t106, -0.2e1 * t123 * t266, 0, -0.2e1 * pkin(3) * t117 * t336 - 0.2e1 * t357 * t90, -0.2e1 * pkin(3) * t307 + 0.2e1 * t357 * t89 (t129 * t90 - t134 * t89 + (-t100 * t129 + t134 * t207) * qJD(4)) * t383, -0.2e1 * t100 * t89 + 0.2e1 * t207 * t90, -0.2e1 * t96 * t389, 0.2e1 * t389 * t95 - 0.2e1 * t96 * t78 (-(t133 * t285 - t110) * t134 + (t129 * t96 - t354 * t384) * qJD(4)) * t383, t325 (t134 * t78 - t336 * t95) * t383, t106, 0.2e1 * t78 * t88 + 0.2e1 * t90 * t95 + 0.2e1 * (-t134 * t48 + t336 * t69) * t123, -0.2e1 * t301 * t70 - 0.2e1 * t353 * t47 - 0.2e1 * t389 * t88 + 0.2e1 * t90 * t96, 0.2e1 * t389 * t69 + 0.2e1 * t47 * t95 - 0.2e1 * t48 * t96 - 0.2e1 * t70 * t78, -0.2e1 * t47 * t70 + 0.2e1 * t48 * t69 + 0.2e1 * t88 * t90, -0.2e1 * t80 * t51, 0.2e1 * t51 * t79 - 0.2e1 * t52 * t80, -0.2e1 * t51 * t95 + 0.2e1 * t78 * t80, 0.2e1 * t79 * t52, -0.2e1 * t52 * t95 - 0.2e1 * t78 * t79, t325, 0.2e1 * t15 * t95 + 0.2e1 * t37 * t78 + 0.2e1 * t42 * t79 + 0.2e1 * t52 * t65, 0.2e1 * t14 * t95 - 0.2e1 * t38 * t78 + 0.2e1 * t42 * t80 - 0.2e1 * t51 * t65, 0.2e1 * t14 * t79 - 0.2e1 * t15 * t80 + 0.2e1 * t37 * t51 - 0.2e1 * t38 * t52, -0.2e1 * t14 * t38 + 0.2e1 * t15 * t37 + 0.2e1 * t42 * t65; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t24, -t25, 0, 0, 0, 0, 0, 0, 0, 0, -t133 * t24 + t333 * t43, t128 * t24 + t331 * t43, t181, -pkin(4) * t24 + pkin(12) * t181, 0, 0, 0, 0, 0, 0 (t30 * t334 - t3) * t133 + (qJD(5) * t20 + t240) * t128 (t30 * t332 + t4) * t133 + (-qJD(5) * t21 - t239) * t128, t258 * t331 + (-t127 * t4 - t132 * t3 + (t127 * t20 - t132 * t21) * qJD(6)) * t128, t20 * t68 - t21 * t67 + t3 * t85 + t4 * t86 + (t30 * t331 + t372) * pkin(12); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t60, 0, -t153, t272, t29, t28, 0, 0, -t229 * t128 + (t64 * qJD(5) - t406) * t133, -t128 * t33 + t133 * t387 - t331 * t63 - t333 * t64, t128 * t396 + t204, t242, -t128 * t223 + t133 * t396, 0, -pkin(4) * t33 - pkin(12) * t204 - t27 * t133 - t153 * t377 + t333 * t36, -pkin(4) * t387 + t27 * t128 - t153 * t376 + t246 * t318 + t331 * t36, pkin(12) * t242 - t22 * t331 - t23 * t333 + t317 * t64 + t377 * t387 + t261, -pkin(4) * t27 + ((-t23 * t128 - t22 * t133) * qJD(5) + t261) * pkin(12), t46 * t305 + (-t329 * t46 - t367) * t128, t256 * t331 + (t371 - t366 + (-t365 + t370) * qJD(6)) * t128 (t332 * t63 + t16) * t133 + (qJD(5) * t46 - t237) * t128, t45 * t303 + (t128 * t17 + t331 * t45) * t127 (-t334 * t63 + t17) * t133 + (-qJD(5) * t45 - t238) * t128, t242, t33 * t85 + t63 * t68 + (-t2 + (pkin(12) * t45 + t127 * t18) * qJD(5)) * t133 + (pkin(12) * t17 + qJD(5) * t9 + t245) * t128, -t33 * t86 + t63 * t67 + (-t1 + (pkin(12) * t46 + t132 * t18) * qJD(5)) * t133 + (-pkin(12) * t16 - qJD(5) * t10 - t244) * t128, t16 * t85 - t17 * t86 + t45 * t67 - t46 * t68 + t259 * t331 + (t1 * t127 - t132 * t2 + (-t10 * t132 + t127 * t9) * qJD(6)) * t128, -t1 * t86 - t10 * t67 + t2 * t85 + t68 * t9 + (t128 * t6 + t18 * t331) * pkin(12); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t300, 0, -t301, 0, -t90, t89, 0, 0, -t110 * t128 + (t128 * t211 + t345) * t133, -t128 * t78 - t133 * t389 - t331 * t95 - t333 * t96, t221 * t123, t241 (t133 * t336 + t306) * t123, 0, -pkin(4) * t78 - t133 * t90 - t221 * t378 + t333 * t88, pkin(4) * t389 + t90 * t128 - t301 * t376 - t306 * t378 + t331 * t88, pkin(12) * t241 + t317 * t96 - t331 * t69 - t333 * t70 - t377 * t389 + t253, -pkin(4) * t90 + ((-t128 * t70 - t133 * t69) * qJD(5) + t253) * pkin(12), t80 * t305 + (-t329 * t80 - t364) * t128, t255 * t331 + (t369 - t363 + (-t362 + t368) * qJD(6)) * t128 (t332 * t95 + t51) * t133 + (qJD(5) * t80 - t233) * t128, t79 * t303 + (t128 * t52 + t331 * t79) * t127 (-t334 * t95 + t52) * t133 + (-qJD(5) * t79 - t234) * t128, t241, t68 * t95 + t78 * t85 + (-t15 + (pkin(12) * t79 + t127 * t65) * qJD(5)) * t133 + (pkin(12) * t52 + qJD(5) * t37 + t236) * t128, t67 * t95 - t78 * t86 + (-t14 + (pkin(12) * t80 + t132 * t65) * qJD(5)) * t133 + (-pkin(12) * t51 - qJD(5) * t38 - t235) * t128, t51 * t85 - t52 * t86 + t67 * t79 - t68 * t80 + t257 * t331 + (t127 * t14 - t132 * t15 + (t127 * t37 - t132 * t38) * qJD(6)) * t128, -t14 * t86 + t15 * t85 + t37 * t68 - t38 * t67 + (t128 * t42 + t331 * t65) * pkin(12); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t282, -0.2e1 * t283, 0, t115, 0, 0, t128 * t324, t133 * t324, 0, 0, 0.2e1 * t121 * t295 - 0.2e1 * t275, 0.2e1 * t120 * t284 - 0.4e1 * t127 * t276, 0.2e1 * t128 * t304 + 0.2e1 * t332 * t342, 0.2e1 * t119 * t295 + 0.2e1 * t275, -0.2e1 * t127 * t283 + 0.2e1 * t128 * t302, t115, 0.2e1 * t85 * t333 - 0.2e1 * t133 * t68 + 0.2e1 * (t120 * t328 + t127 * t282) * pkin(12), -0.2e1 * t86 * t333 - 0.2e1 * t133 * t67 + 0.2e1 * (-t120 * t329 + 0.2e1 * t276) * pkin(12), 0.2e1 * t254 * t331 + 0.2e1 * (t127 * t67 - t132 * t68 + (t127 * t85 - t132 * t86) * qJD(6)) * t128, 0.2e1 * pkin(12) ^ 2 * t295 - 0.2e1 * t67 * t86 + 0.2e1 * t68 * t85; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t11, -t12, 0, 0, 0, 0, 0, 0, 0, 0, t239, t240, t183, -pkin(5) * t11 + pkin(13) * t183; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t387, 0, -t33, t153, t8, t7, 0, 0, t328 * t46 - t371, qJD(6) * t256 - t127 * t17 - t367, t238, t329 * t45 - t366, -t237, 0, -pkin(5) * t17 - pkin(13) * t238 + t244, pkin(5) * t16 + pkin(13) * t237 + t245 (-t371 - t366 + (t365 + t370) * qJD(6)) * pkin(13) + t184, -pkin(5) * t6 + pkin(13) * t184; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t389, 0, -t78, t301, t48, t47, 0, 0, t328 * t80 - t369, qJD(6) * t255 - t127 * t52 - t364, t234, t329 * t79 - t363, -t233, 0, -pkin(5) * t52 - pkin(13) * t234 + t235, pkin(5) * t51 + pkin(13) * t233 + t236 (-t369 - t363 + (t362 + t368) * qJD(6)) * pkin(13) + t180, -pkin(5) * t42 + pkin(13) * t180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t331, 0, -t333, 0, -t317, t318, 0, 0, -t81, -0.4e1 * t128 * t296 - t331 * t343, t127 * t333 - t302, t81, t220, 0 (pkin(13) * t346 + (-pkin(5) * t132 + pkin(12) * t127) * t128) * qJD(6) + (t127 * t263 - t320) * qJD(5) (t132 * t377 + t232) * qJD(6) + (t132 * t263 + t322) * qJD(5), t179, -pkin(5) * t317 + pkin(13) * t179; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t296, -0.2e1 * t284, 0, -0.2e1 * t296, 0, 0, t127 * t323, t132 * t323, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t3, -t4, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t16, 0, -t17, t33, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t51, 0, -t52, t78, t15, t14, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t128 * t329 + t305, 0, -t127 * t331 - t303, t333, t68, t67, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t328, 0, -t329, 0, -pkin(13) * t328, pkin(13) * t329, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t5;
