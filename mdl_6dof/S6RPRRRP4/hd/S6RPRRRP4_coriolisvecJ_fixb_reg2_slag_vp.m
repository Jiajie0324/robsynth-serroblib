% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RPRRRP4
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4,d5,theta2]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 06:09
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RPRRRP4_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRRP4_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRRP4_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRRRP4_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 06:08:55
% EndTime: 2019-03-09 06:09:06
% DurationCPUTime: 6.33s
% Computational Cost: add. (14254->478), mult. (37635->595), div. (0->0), fcn. (29671->8), ass. (0->254)
t204 = sin(qJ(5));
t203 = cos(pkin(10));
t202 = sin(pkin(10));
t325 = sin(qJ(3));
t263 = t325 * t202;
t327 = cos(qJ(3));
t224 = -t327 * t203 + t263;
t170 = t224 * qJD(1);
t205 = sin(qJ(4));
t326 = cos(qJ(4));
t223 = -t327 * t202 - t325 * t203;
t331 = t223 * qJD(1);
t229 = t205 * t170 + t326 * t331;
t206 = cos(qJ(5));
t269 = qJD(3) + qJD(4);
t242 = t206 * t269;
t128 = -t204 * t229 - t242;
t272 = qJD(5) * t206;
t258 = qJD(3) * t327;
t190 = t203 * qJD(1) * t258;
t240 = qJD(1) * t263;
t161 = qJD(3) * t240 - t190;
t162 = qJD(3) * t331;
t275 = qJD(4) * t205;
t226 = t326 * t161 - t205 * t162 - t275 * t331;
t256 = qJD(4) * t326;
t211 = t170 * t256 + t226;
t130 = t204 * t269 - t206 * t229;
t274 = qJD(5) * t130;
t76 = -t204 * t211 + t274;
t304 = -t128 * t272 - t204 * t76;
t335 = t326 * t170;
t142 = t205 * t331 - t335;
t347 = qJD(5) - t142;
t365 = t347 * t204;
t337 = t130 * t365;
t353 = t142 * t206;
t273 = qJD(5) * t204;
t75 = -qJD(5) * t242 + t206 * t211 - t229 * t273;
t73 = t206 * t75;
t368 = t128 * t353 + t304 - t337 - t73;
t319 = pkin(7) + qJ(2);
t185 = t319 * t203;
t181 = qJD(1) * t185;
t184 = t319 * t202;
t180 = qJD(1) * t184;
t259 = qJD(2) * t325;
t260 = qJD(2) * t327;
t351 = -t202 * t259 + t203 * t260;
t222 = qJD(1) * t351 - t180 * t258;
t257 = qJD(3) * t325;
t120 = -t181 * t257 + t222;
t113 = t162 * pkin(8) + t120;
t217 = t223 * qJD(2);
t214 = qJD(1) * t217;
t225 = t325 * t180 - t327 * t181;
t121 = qJD(3) * t225 + t214;
t114 = t161 * pkin(8) + t121;
t264 = t325 * t181;
t146 = -t327 * t180 - t264;
t126 = pkin(8) * t331 + t146;
t124 = qJD(3) * pkin(3) + t126;
t127 = -t170 * pkin(8) - t225;
t212 = -t326 * t113 - t205 * t114 - t124 * t256 + t127 * t275;
t247 = t205 * t161 + t326 * t162;
t348 = qJD(4) * t229;
t105 = -t247 - t348;
t322 = t162 * pkin(3);
t59 = t105 * pkin(4) + pkin(9) * t211 - t322;
t123 = t326 * t127;
t88 = t205 * t124 + t123;
t82 = t269 * pkin(9) + t88;
t194 = -t203 * pkin(2) - pkin(1);
t183 = t194 * qJD(1) + qJD(2);
t150 = t170 * pkin(3) + t183;
t89 = -pkin(4) * t142 + pkin(9) * t229 + t150;
t251 = -t204 * t59 + t206 * t212 - t89 * t272 + t82 * t273;
t230 = t76 * qJ(6) + t251;
t3 = -qJD(6) * t128 - t230;
t46 = t204 * t89 + t206 * t82;
t9 = -qJD(5) * t46 + t204 * t212 + t206 * t59;
t210 = t75 * qJ(6) + t9;
t323 = t105 * pkin(5);
t1 = -t130 * qJD(6) + t210 + t323;
t35 = -qJ(6) * t128 + t46;
t308 = t35 * t347;
t340 = t1 + t308;
t367 = -t204 * t340 + t3 * t206;
t45 = -t204 * t82 + t206 * t89;
t366 = t347 * t45;
t336 = t142 * t269;
t364 = -t211 - t336;
t286 = t142 ^ 2;
t287 = t229 ^ 2;
t363 = -t286 + t287;
t339 = t347 * t46 + t9;
t354 = t142 * t204;
t362 = (t273 - t354) * pkin(5);
t110 = t326 * t114;
t248 = t205 * t113 - t110;
t40 = qJD(4) * t88 + t248;
t18 = t76 * pkin(5) + t40;
t250 = t128 * pkin(5) + qJD(6);
t122 = t205 * t127;
t87 = t326 * t124 - t122;
t81 = -t269 * pkin(4) - t87;
t67 = t250 + t81;
t317 = t18 * t204 + t67 * t272;
t361 = -t229 * t35 - t353 * t67 + t317;
t34 = -qJ(6) * t130 + t45;
t22 = pkin(5) * t347 + t34;
t255 = -t18 * t206 + t67 * t273;
t360 = t22 * t229 - t354 * t67 + t255;
t359 = qJ(6) * t354 + t206 * qJD(6);
t72 = t75 * t204;
t357 = -t72 + (t272 - t353) * t130;
t290 = t130 * t229;
t102 = t204 * t105;
t334 = -t272 * t347 - t102;
t356 = -t347 * t353 + t290 - t334;
t294 = t128 * t229;
t355 = t347 * t229;
t281 = t142 * t229;
t352 = t150 * t229;
t350 = -t251 - t366;
t271 = t229 * qJD(3);
t349 = -t271 + t247;
t253 = -t40 * t206 + t81 * t273;
t345 = t45 * t229 + t253;
t315 = t40 * t204 + t81 * t272;
t344 = -t46 * t229 + t315;
t342 = -t150 * t142 + t212;
t109 = -pkin(4) * t229 - pkin(9) * t142;
t199 = t206 * qJ(6);
t341 = pkin(5) * t229 + t142 * t199;
t241 = pkin(3) * t256;
t91 = t326 * t126 - t122;
t324 = pkin(3) * t331;
t94 = t109 - t324;
t54 = t204 * t94 + t206 * t91;
t338 = -t206 * t241 + t54;
t90 = t126 * t205 + t123;
t238 = pkin(3) * t275 - t90;
t104 = t206 * t105;
t333 = t273 * t347 - t104;
t332 = -t204 * t45 + t206 * t46;
t330 = t130 ^ 2;
t329 = t331 ^ 2;
t328 = qJD(3) ^ 2;
t321 = t206 * pkin(5);
t151 = -t327 * t184 - t325 * t185;
t136 = pkin(8) * t223 + t151;
t152 = -t325 * t184 + t327 * t185;
t137 = -pkin(8) * t224 + t152;
t99 = -t326 * t136 + t137 * t205;
t320 = t40 * t99;
t7 = t251 * t206;
t318 = -qJ(6) - pkin(9);
t316 = t22 - t34;
t215 = t326 * t224;
t144 = -t205 * t223 + t215;
t221 = t205 * t224;
t145 = -t223 * t326 - t221;
t154 = pkin(3) * t224 + t194;
t101 = t144 * pkin(4) - t145 * pkin(9) + t154;
t100 = t205 * t136 + t326 * t137;
t96 = t206 * t100;
t61 = t204 * t101 + t96;
t314 = pkin(3) * qJD(4);
t310 = t206 * t22;
t74 = t76 * t206;
t195 = pkin(3) * t205 + pkin(9);
t278 = -qJ(6) - t195;
t246 = qJD(5) * t278;
t303 = t204 * t246 - t338 + t359;
t53 = -t204 * t91 + t206 * t94;
t302 = (-t241 - qJD(6)) * t204 + t206 * t246 - t53 + t341;
t252 = qJD(5) * t318;
t56 = t204 * t109 + t206 * t87;
t301 = t204 * t252 + t359 - t56;
t55 = t206 * t109 - t204 * t87;
t300 = -t204 * qJD(6) + t206 * t252 + t341 - t55;
t299 = t238 + t362;
t298 = t105 * t144;
t219 = qJD(3) * t223;
t111 = -t205 * t219 + t215 * t269 - t223 * t275;
t297 = t111 * t204;
t296 = t111 * t206;
t295 = t128 * t347;
t293 = t128 * t204;
t292 = t130 * t128;
t291 = t130 * t347;
t280 = t145 * t204;
t279 = t170 * t331;
t276 = t202 ^ 2 + t203 ^ 2;
t132 = -t184 * t258 - t185 * t257 + t351;
t116 = pkin(8) * t219 + t132;
t220 = qJD(3) * t224;
t208 = pkin(8) * t220 + t184 * t257 - t185 * t258 - t202 * t260 - t203 * t259;
t51 = t326 * t116 + t136 * t256 - t137 * t275 + t205 * t208;
t112 = -qJD(4) * t221 - t205 * t220 - t326 * t219 - t223 * t256;
t216 = pkin(3) * t219;
t66 = t112 * pkin(4) + t111 * pkin(9) - t216;
t268 = t101 * t272 + t204 * t66 + t206 * t51;
t261 = t145 * t272;
t254 = -t204 * t51 + t206 * t66;
t60 = -t100 * t204 + t206 * t101;
t249 = t276 * qJD(1) ^ 2;
t244 = t347 * t206;
t196 = -t326 * pkin(3) - pkin(4);
t237 = t362 - t88;
t236 = t204 * t46 + t206 * t45;
t234 = -t105 * t195 - t142 * t81;
t233 = qJ(6) * t111 - qJD(6) * t145;
t232 = 0.2e1 * t276 * qJD(2) * qJD(1);
t231 = t347 * t354 - t333;
t228 = t261 - t297;
t227 = -t145 * t273 - t296;
t213 = -qJD(5) * t236 - t9 * t204 - t7;
t52 = qJD(4) * t100 + t205 * t116 - t326 * t208;
t197 = -pkin(4) - t321;
t188 = pkin(9) * t206 + t199;
t187 = t318 * t204;
t186 = t196 - t321;
t175 = t195 * t206 + t199;
t174 = t278 * t204;
t167 = t170 ^ 2;
t133 = -t152 * qJD(3) + t217;
t125 = t128 ^ 2;
t77 = pkin(5) * t280 + t99;
t69 = -t125 + t330;
t50 = -qJ(6) * t280 + t61;
t48 = t291 - t76;
t47 = -t75 + t295;
t44 = t112 * t347 + t298;
t41 = pkin(5) * t144 - t145 * t199 + t60;
t33 = t128 * t365 - t74;
t32 = t293 * t347 - t74;
t28 = -t244 * t347 - t102 + t290;
t25 = t231 + t294;
t24 = t231 - t294;
t23 = -t347 * t365 + t104 - t294;
t21 = pkin(5) * t228 + t52;
t20 = t128 * t228 + t76 * t280;
t19 = t130 * t227 - t145 * t73;
t14 = (t128 * t142 + t75) * t206 + t337 + t304;
t13 = -t61 * qJD(5) + t254;
t12 = -t100 * t273 + t268;
t11 = -t145 * t102 - t128 * t112 - t76 * t144 - t228 * t347;
t10 = t145 * t104 + t130 * t112 - t75 * t144 + t227 * t347;
t6 = -qJ(6) * t261 + (-qJD(5) * t100 + t233) * t204 + t268;
t5 = (t128 * t206 + t130 * t204) * t111 + (t72 - t74 + (-t130 * t206 + t293) * qJD(5)) * t145;
t4 = t112 * pkin(5) + t233 * t206 + (-t96 + (qJ(6) * t145 - t101) * t204) * qJD(5) + t254;
t2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t232, qJ(2) * t232, t161 * t223 + t220 * t331, t161 * t224 - t162 * t223 + t170 * t220 - t219 * t331, -t328 * t224, -t162 * t224 - t170 * t219, t223 * t328, 0, -t194 * t162 + (-t183 * t223 + t133) * qJD(3), -t132 * qJD(3) - t194 * t161 - t183 * t220, t121 * t223 - t132 * t170 + t133 * t331 - t225 * t219 + t151 * t161 + t152 * t162 + (qJD(3) * t146 - t120) * t224, t120 * t152 + t121 * t151 - t132 * t225 + t133 * t146, t111 * t229 - t145 * t211, -t145 * t105 - t111 * t142 + t112 * t229 + t144 * t211, -t111 * t269, -t112 * t142 + t298, -t112 * t269, 0, t154 * t105 + t150 * t112 + t142 * t216 - t144 * t322 - t269 * t52, -t150 * t111 - t145 * t322 - t154 * t211 + t216 * t229 - t269 * t51, -t100 * t105 + t87 * t111 - t88 * t112 + t142 * t51 + t144 * t212 + t40 * t145 - t211 * t99 - t229 * t52, -t100 * t212 - t150 * t216 - t154 * t322 + t88 * t51 - t87 * t52 + t320, t19, t5, t10, t20, t11, t44, t60 * t105 + t45 * t112 + t52 * t128 + t13 * t347 + t9 * t144 + t315 * t145 - t81 * t297 + t99 * t76, -t61 * t105 - t46 * t112 - t12 * t347 + t52 * t130 + t144 * t251 - t145 * t253 - t81 * t296 - t99 * t75, -t12 * t128 - t13 * t130 + t60 * t75 - t61 * t76 + t236 * t111 + (-qJD(5) * t332 + t204 * t251 - t9 * t206) * t145, t12 * t46 + t13 * t45 - t251 * t61 + t52 * t81 + t60 * t9 + t320, t19, t5, t10, t20, t11, t44, t1 * t144 + t41 * t105 + t22 * t112 + t21 * t128 + t317 * t145 - t67 * t297 + t347 * t4 + t77 * t76, -t50 * t105 - t35 * t112 + t21 * t130 - t3 * t144 - t145 * t255 - t67 * t296 - t347 * t6 - t77 * t75, -t6 * t128 - t4 * t130 + t41 * t75 - t50 * t76 + (t204 * t35 + t310) * t111 + (-t1 * t206 - t3 * t204 + (t204 * t22 - t206 * t35) * qJD(5)) * t145, t1 * t41 + t18 * t77 + t21 * t67 + t22 * t4 + t3 * t50 + t35 * t6; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t249, -qJ(2) * t249, 0, 0, 0, 0, 0, 0, -0.2e1 * t162, t190 + (-t240 - t170) * qJD(3), -t167 - t329, -t146 * t331 - t170 * t225, 0, 0, 0, 0, 0, 0, -t247 - t271 - 0.2e1 * t348, -t211 + t336, -t286 - t287, -t142 * t88 - t229 * t87 - t322, 0, 0, 0, 0, 0, 0, t25, t28, t14, t204 * t350 + t339 * t206 + t81 * t229, 0, 0, 0, 0, 0, 0, t25, t28, t14, t67 * t229 + t340 * t206 + (-t22 * t347 + t3) * t204; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t279, -t167 + t329, t190 + (-t240 + t170) * qJD(3), t279, 0, 0, t183 * t331 + t214, t183 * t170 + (t264 + t146) * qJD(3) - t222, 0, 0, t281, t363, t364, -t281, t349, 0, -t127 * t256 + t110 - t142 * t324 + t352 + t90 * t269 + (-qJD(4) * t124 - t269 * t314 - t113) * t205, t91 * t269 + (-t229 * t331 - t256 * t269) * pkin(3) + t342, -t88 * t229 - t91 * t142 + t87 * t142 + t90 * t229 + (-t205 * t105 + t326 * t226 + (-t205 * t229 + (t142 + t335) * t326) * qJD(4)) * pkin(3), t87 * t90 - t88 * t91 + (-t326 * t40 + t150 * t331 - t205 * t212 + (-t205 * t87 + t326 * t88) * qJD(4)) * pkin(3), t357, t368, t356, t33, t24, t355, t196 * t76 + t234 * t204 + t238 * t128 + (-t195 * t272 - t204 * t241 - t53) * t347 + t345, -t196 * t75 + t234 * t206 + t238 * t130 + (t195 * t273 + t338) * t347 + t344, t54 * t128 + t53 * t130 - t7 + (-t128 * t241 + t142 * t45 - t195 * t76 + (t130 * t195 - t45) * qJD(5)) * t206 + (t130 * t241 + t142 * t46 - t195 * t75 - t9 + (t128 * t195 - t46) * qJD(5)) * t204, t40 * t196 - t45 * t53 - t46 * t54 - t81 * t90 + (t205 * t81 + t326 * t332) * t314 + t213 * t195, t357, t368, t356, t33, t24, t355, t174 * t105 + t128 * t299 + t186 * t76 + t302 * t347 + t360, -t175 * t105 + t130 * t299 - t186 * t75 - t303 * t347 + t361, -t303 * t128 - t302 * t130 + t174 * t75 - t175 * t76 - t22 * t244 + t367, t1 * t174 + t3 * t175 + t18 * t186 + t22 * t302 + t299 * t67 + t303 * t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t281, t363, t364, -t281, t349, 0, t88 * qJD(3) - t248 + t352, t269 * t87 + t342, 0, 0, t357, t368, t356, t32, t23, t355, -pkin(4) * t76 + pkin(9) * t334 - t88 * t128 - t347 * t55 - t354 * t81 + t345, pkin(4) * t75 + pkin(9) * t333 - t88 * t130 + t347 * t56 - t353 * t81 + t344, t56 * t128 + t55 * t130 - t7 + (-t366 + (-t76 + t274) * pkin(9)) * t206 + ((qJD(5) * t128 - t75) * pkin(9) - t339) * t204, -t40 * pkin(4) + pkin(9) * t213 - t45 * t55 - t46 * t56 - t81 * t88, t357, t368, t356, t32, t23, t355, t187 * t105 + t128 * t237 + t197 * t76 + t300 * t347 + t360, -t188 * t105 + t130 * t237 - t197 * t75 - t301 * t347 + t361, -t301 * t128 - t300 * t130 + t187 * t75 - t188 * t76 - t347 * t310 + t367, t1 * t187 + t18 * t197 + t3 * t188 + t22 * t300 + t237 * t67 + t301 * t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t292, t69, t47, -t292, t48, t105, -t81 * t130 + t339, t128 * t81 - t350, 0, 0, t292, t69, t47, -t292, t48, t105, 0.2e1 * t323 + t308 + (-t250 - t67) * t130 + t210, -t330 * pkin(5) + t34 * t347 + (qJD(6) + t67) * t128 + t230, t75 * pkin(5) - t316 * t128, t316 * t35 + (-t67 * t130 + t1) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t76 + t291, -t75 - t295, -t125 - t330, t35 * t128 + t22 * t130 + t18;];
tauc_reg  = t2;
