% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RPRPRR7
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,d6,theta4]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 19:14
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RPRPRR7_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR7_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR7_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPRR7_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRR7_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRR7_invdynJ_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 19:13:34
% EndTime: 2019-05-05 19:13:50
% DurationCPUTime: 6.37s
% Computational Cost: add. (33996->464), mult. (76456->652), div. (0->0), fcn. (54984->10), ass. (0->300)
t357 = 2 * qJD(4);
t261 = sin(pkin(10));
t262 = cos(pkin(10));
t269 = cos(qJ(3));
t308 = qJD(1) * t269;
t265 = sin(qJ(3));
t309 = qJD(1) * t265;
t233 = -t261 * t308 - t262 * t309;
t234 = -t261 * t309 + t262 * t308;
t215 = t233 * t234;
t348 = qJDD(3) + t215;
t356 = t261 * t348;
t355 = t262 * t348;
t263 = sin(qJ(6));
t264 = sin(qJ(5));
t268 = cos(qJ(5));
t206 = t264 * t233 + t268 * t234;
t300 = qJD(1) * qJD(3);
t289 = t269 * t300;
t298 = t265 * qJDD(1);
t240 = -t289 - t298;
t253 = t269 * qJDD(1);
t290 = t265 * t300;
t241 = t253 - t290;
t216 = t262 * t240 - t261 * t241;
t217 = t261 * t240 + t262 * t241;
t285 = -t268 * t216 + t264 * t217;
t158 = -t206 * qJD(5) - t285;
t157 = qJDD(6) - t158;
t257 = qJD(3) + qJD(5);
t267 = cos(qJ(6));
t188 = t263 * t206 - t267 * t257;
t190 = t267 * t206 + t263 * t257;
t163 = t190 * t188;
t350 = t157 - t163;
t354 = t263 * t350;
t204 = -t268 * t233 + t264 * t234;
t175 = t206 * t204;
t256 = qJDD(3) + qJDD(5);
t349 = -t175 + t256;
t353 = t264 * t349;
t352 = t267 * t350;
t351 = t268 * t349;
t173 = t204 * pkin(5) - t206 * pkin(9);
t344 = t257 ^ 2;
t272 = qJD(1) ^ 2;
t313 = t269 * t272;
t266 = sin(qJ(1));
t270 = cos(qJ(1));
t288 = t266 * g(1) - t270 * g(2);
t282 = qJDD(2) - t288;
t312 = t272 * qJ(2);
t276 = t282 - t312;
t343 = pkin(7) + pkin(1);
t224 = -t343 * qJDD(1) + t276;
t315 = t269 * t224;
t183 = qJDD(3) * pkin(3) - t241 * qJ(4) + t315 + (-pkin(3) * t313 - qJ(4) * t300 + g(3)) * t265;
t219 = t269 * g(3) - t265 * t224;
t277 = qJD(3) * pkin(3) - qJ(4) * t308;
t259 = t265 ^ 2;
t330 = t259 * t272;
t184 = -pkin(3) * t330 + t240 * qJ(4) - qJD(3) * t277 - t219;
t144 = -t262 * t183 + t261 * t184 + t234 * t357;
t307 = qJD(3) * t233;
t195 = -t217 + t307;
t345 = pkin(8) * t195 - t144;
t273 = pkin(4) * t348 + t345;
t145 = t261 * t183 + t262 * t184 + t233 * t357;
t231 = t233 ^ 2;
t281 = qJD(3) * pkin(4) - t234 * pkin(8);
t120 = -t231 * pkin(4) + t216 * pkin(8) - qJD(3) * t281 + t145;
t319 = t268 * t120;
t75 = t264 * t273 + t319;
t60 = -t344 * pkin(5) + t256 * pkin(9) - t204 * t173 + t75;
t299 = qJD(2) * qJD(1);
t254 = 0.2e1 * t299;
t159 = -t204 * qJD(5) + t264 * t216 + t268 * t217;
t333 = t257 * t204;
t278 = t159 - t333;
t258 = qJDD(1) * qJ(2);
t283 = t270 * g(1) + t266 * g(2);
t279 = -t258 + t283;
t346 = -t240 * pkin(3) - (qJ(4) * t259 + t343) * t272 + t277 * t308 + qJDD(4) - t279;
t347 = t216 * pkin(4) + t231 * pkin(8) - t234 * t281;
t76 = t254 - t278 * pkin(9) + (t257 * t206 - t158) * pkin(5) + t346 - t347;
t38 = t263 * t60 - t267 * t76;
t39 = t263 * t76 + t267 * t60;
t21 = t263 * t38 + t267 * t39;
t201 = qJD(6) + t204;
t286 = t263 * t159 - t267 * t256;
t112 = (qJD(6) - t201) * t190 + t286;
t186 = t188 ^ 2;
t187 = t190 ^ 2;
t200 = t201 ^ 2;
t202 = t204 ^ 2;
t203 = t206 ^ 2;
t232 = t234 ^ 2;
t342 = pkin(5) * t264;
t74 = t264 * t120 - t268 * t273;
t59 = -t256 * pkin(5) - t344 * pkin(9) + t206 * t173 + t74;
t339 = -pkin(5) * t59 + pkin(9) * t21;
t42 = t264 * t75 - t268 * t74;
t338 = t261 * t42;
t337 = t262 * t42;
t56 = t263 * t59;
t57 = t267 * t59;
t336 = qJDD(1) * pkin(1);
t335 = t201 * t263;
t334 = t201 * t267;
t332 = t257 * t264;
t331 = t257 * t268;
t260 = t269 ^ 2;
t329 = t260 * t272;
t295 = -0.2e1 * t299;
t185 = t295 - t346;
t328 = t261 * t185;
t210 = qJDD(3) - t215;
t327 = t261 * t210;
t326 = t262 * t185;
t325 = t262 * t210;
t122 = t157 + t163;
t324 = t263 * t122;
t146 = t185 + t347;
t323 = t264 * t146;
t171 = t175 + t256;
t322 = t264 * t171;
t293 = t265 * t313;
t321 = t265 * (qJDD(3) + t293);
t320 = t267 * t122;
t318 = t268 * t146;
t317 = t268 * t171;
t101 = -t262 * t144 + t261 * t145;
t316 = t269 * t101;
t314 = t269 * (qJDD(3) - t293);
t310 = t259 + t260;
t306 = qJD(3) * t234;
t305 = qJD(3) * t261;
t304 = qJD(3) * t262;
t301 = qJD(6) + t201;
t280 = -t267 * t159 - t263 * t256;
t117 = t301 * t188 + t280;
t154 = -t187 - t200;
t89 = -t263 * t154 - t320;
t297 = pkin(5) * t117 + pkin(9) * t89 + t56;
t113 = -t301 * t190 - t286;
t147 = -t200 - t186;
t84 = t267 * t147 - t354;
t296 = pkin(5) * t113 + pkin(9) * t84 - t57;
t294 = t264 * t163;
t292 = t268 * t163;
t291 = -pkin(5) * t268 - pkin(4);
t43 = t264 * t74 + t268 * t75;
t142 = t186 + t187;
t127 = -t188 * qJD(6) - t280;
t168 = t201 * t188;
t116 = t127 + t168;
t70 = -t112 * t267 + t263 * t116;
t287 = pkin(5) * t142 + pkin(9) * t70 + t21;
t102 = t261 * t144 + t262 * t145;
t20 = t263 * t39 - t267 * t38;
t218 = t265 * g(3) + t315;
t179 = t269 * t218 - t265 * t219;
t193 = t216 + t306;
t275 = (-qJD(5) + t257) * t206 - t285;
t271 = qJD(3) ^ 2;
t243 = t310 * qJDD(1);
t242 = t253 - 0.2e1 * t290;
t239 = 0.2e1 * t289 + t298;
t230 = -t276 + t336;
t227 = -t232 - t271;
t226 = -t232 + t271;
t225 = t231 - t271;
t223 = t343 * t272 + t279 + t295;
t221 = -t321 + t269 * (-t271 - t329);
t220 = t265 * (-t271 - t330) + t314;
t208 = -t271 - t231;
t198 = -t203 + t344;
t197 = t202 - t344;
t196 = -t203 - t344;
t194 = t307 + t217;
t192 = -t216 + t306;
t191 = -t231 - t232;
t182 = -t261 * t227 - t325;
t181 = t262 * t227 - t327;
t177 = t262 * t208 - t356;
t176 = t261 * t208 + t355;
t174 = t203 - t202;
t169 = -t344 - t202;
t167 = -t187 + t200;
t166 = t186 - t200;
t165 = (-t204 * t268 + t206 * t264) * t257;
t164 = (-t204 * t264 - t206 * t268) * t257;
t162 = t187 - t186;
t161 = t262 * t193 - t261 * t195;
t160 = t261 * t193 + t262 * t195;
t156 = -t202 - t203;
t155 = t269 * t181 + t265 * t182;
t153 = t268 * t197 - t322;
t152 = -t264 * t198 + t351;
t151 = t264 * t197 + t317;
t150 = t268 * t198 + t353;
t149 = -t264 * t196 - t317;
t148 = t268 * t196 - t322;
t139 = -t159 - t333;
t135 = (qJD(5) + t257) * t206 + t285;
t134 = t268 * t159 - t206 * t332;
t133 = t264 * t159 + t206 * t331;
t132 = -t264 * t158 + t204 * t331;
t131 = t268 * t158 + t204 * t332;
t130 = t269 * t176 + t265 * t177;
t129 = t268 * t169 - t353;
t128 = t264 * t169 + t351;
t126 = -t190 * qJD(6) - t286;
t125 = (-t188 * t267 + t190 * t263) * t201;
t124 = (-t188 * t263 - t190 * t267) * t201;
t119 = t269 * t160 + t265 * t161;
t115 = t127 - t168;
t109 = t267 * t127 - t190 * t335;
t108 = t263 * t127 + t190 * t334;
t107 = -t263 * t126 + t188 * t334;
t106 = t267 * t126 + t188 * t335;
t105 = -t261 * t148 + t262 * t149;
t104 = t262 * t148 + t261 * t149;
t103 = -pkin(8) * t148 - t318;
t100 = t268 * t125 + t264 * t157;
t99 = t264 * t125 - t268 * t157;
t98 = t267 * t166 - t324;
t97 = -t263 * t167 + t352;
t96 = t263 * t166 + t320;
t95 = t267 * t167 + t354;
t94 = -t264 * t139 + t268 * t275;
t93 = -t268 * t135 - t264 * t278;
t92 = t268 * t139 + t264 * t275;
t91 = -t264 * t135 + t268 * t278;
t90 = -pkin(8) * t128 - t323;
t88 = t267 * t154 - t324;
t86 = -t261 * t128 + t262 * t129;
t85 = t262 * t128 + t261 * t129;
t83 = t263 * t147 + t352;
t81 = t268 * t109 + t294;
t80 = t268 * t107 - t294;
t79 = t264 * t109 - t292;
t78 = t264 * t107 + t292;
t77 = -pkin(4) * t278 + pkin(8) * t149 - t323;
t71 = -pkin(4) * t135 + pkin(8) * t129 + t318;
t69 = t267 * t113 - t263 * t115;
t68 = -t112 * t263 - t267 * t116;
t67 = t263 * t113 + t267 * t115;
t65 = t269 * t104 + t265 * t105;
t64 = -t264 * t112 + t268 * t98;
t63 = t264 * t116 + t268 * t97;
t62 = t268 * t112 + t264 * t98;
t61 = -t268 * t116 + t264 * t97;
t55 = t265 * t102 + t316;
t54 = -t264 * t117 + t268 * t89;
t53 = t268 * t117 + t264 * t89;
t52 = -t264 * t113 + t268 * t84;
t51 = t268 * t113 + t264 * t84;
t50 = -t261 * t92 + t262 * t94;
t49 = t261 * t94 + t262 * t92;
t48 = t264 * t162 + t268 * t69;
t47 = -t268 * t162 + t264 * t69;
t46 = -t264 * t142 + t268 * t70;
t45 = t268 * t142 + t264 * t70;
t44 = t265 * t86 + t269 * t85;
t41 = -pkin(9) * t88 + t57;
t40 = -pkin(9) * t83 + t56;
t35 = pkin(4) * t146 + pkin(8) * t43;
t34 = -pkin(8) * t92 - t42;
t33 = -t261 * t53 + t262 * t54;
t32 = t261 * t54 + t262 * t53;
t31 = -t261 * t51 + t262 * t52;
t30 = t261 * t52 + t262 * t51;
t29 = t265 * t50 + t269 * t49;
t28 = -pkin(4) * t156 + pkin(8) * t94 + t43;
t27 = -t261 * t45 + t262 * t46;
t26 = t261 * t46 + t262 * t45;
t25 = -pkin(5) * t88 + t39;
t24 = -pkin(5) * t83 + t38;
t23 = t262 * t43 - t338;
t22 = t261 * t43 + t337;
t18 = t265 * t33 + t269 * t32;
t17 = t265 * t31 + t269 * t30;
t16 = -pkin(9) * t68 - t20;
t15 = t268 * t21 + t264 * t59;
t14 = t264 * t21 - t268 * t59;
t13 = t269 * t26 + t265 * t27;
t12 = -pkin(8) * t53 - t264 * t25 + t268 * t41;
t11 = -pkin(8) * t51 - t264 * t24 + t268 * t40;
t10 = -pkin(4) * t88 + pkin(8) * t54 + t268 * t25 + t264 * t41;
t9 = -pkin(4) * t83 + pkin(8) * t52 + t268 * t24 + t264 * t40;
t8 = t269 * t22 + t265 * t23;
t7 = -pkin(8) * t45 + t268 * t16 + t68 * t342;
t6 = pkin(8) * t46 + t264 * t16 + t291 * t68;
t5 = -t261 * t14 + t262 * t15;
t4 = t262 * t14 + t261 * t15;
t3 = -pkin(8) * t14 + (-pkin(9) * t268 + t342) * t20;
t2 = pkin(8) * t15 + (-pkin(9) * t264 + t291) * t20;
t1 = t265 * t5 + t269 * t4;
t19 = [0, 0, 0, 0, 0, qJDD(1), t288, t283, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t282 - 0.2e1 * t336, t254 + 0.2e1 * t258 - t283, pkin(1) * t230 + qJ(2) * (-t272 * pkin(1) + t254 - t279), (t241 - t290) * t269, -t269 * t239 - t265 * t242, t314 - t265 * (t271 - t329), (-t240 + t289) * t265, t269 * (-t271 + t330) - t321, 0, qJ(2) * t239 - t343 * t220 - t265 * t223, qJ(2) * t242 - t343 * t221 - t269 * t223, t343 * t243 - t310 * t312 - t179, -qJ(2) * t223 - t343 * t179, t269 * (t262 * t217 - t234 * t305) - t265 * (t261 * t217 + t234 * t304), t269 * (-t262 * t192 - t261 * t194) - t265 * (-t261 * t192 + t262 * t194), t269 * (-t261 * t226 + t355) - t265 * (t262 * t226 + t356), t269 * (-t261 * t216 - t233 * t304) - t265 * (t262 * t216 - t233 * t305), t269 * (t262 * t225 - t327) - t265 * (t261 * t225 + t325), (t269 * (t233 * t262 + t234 * t261) - t265 * (t233 * t261 - t234 * t262)) * qJD(3), t269 * (-qJ(4) * t176 - t328) - t265 * (-pkin(3) * t192 + qJ(4) * t177 + t326) + qJ(2) * t192 - t343 * t130, t269 * (-qJ(4) * t181 - t326) - t265 * (-pkin(3) * t194 + qJ(4) * t182 - t328) + qJ(2) * t194 - t343 * t155, t269 * (-qJ(4) * t160 - t101) - t265 * (-pkin(3) * t191 + qJ(4) * t161 + t102) + qJ(2) * t191 - t343 * t119, -qJ(4) * t316 - t265 * (pkin(3) * t185 + qJ(4) * t102) - qJ(2) * t185 - t343 * t55, t269 * (-t261 * t133 + t262 * t134) - t265 * (t262 * t133 + t261 * t134), t269 * (-t261 * t91 + t262 * t93) - t265 * (t261 * t93 + t262 * t91), t269 * (-t261 * t150 + t262 * t152) - t265 * (t262 * t150 + t261 * t152), t269 * (-t261 * t131 + t262 * t132) - t265 * (t262 * t131 + t261 * t132), t269 * (-t261 * t151 + t262 * t153) - t265 * (t262 * t151 + t261 * t153), t269 * (-t261 * t164 + t262 * t165) - t265 * (t262 * t164 + t261 * t165), t269 * (-qJ(4) * t85 - t261 * t71 + t262 * t90) - t265 * (-pkin(3) * t135 + qJ(4) * t86 + t261 * t90 + t262 * t71) + qJ(2) * t135 - t343 * t44, t269 * (-qJ(4) * t104 + t262 * t103 - t261 * t77) - t265 * (-pkin(3) * t278 + qJ(4) * t105 + t261 * t103 + t262 * t77) + qJ(2) * t278 - t343 * t65, t269 * (-qJ(4) * t49 - t261 * t28 + t262 * t34) - t265 * (-pkin(3) * t156 + qJ(4) * t50 + t261 * t34 + t262 * t28) + qJ(2) * t156 - t343 * t29, t269 * (-pkin(8) * t337 - qJ(4) * t22 - t261 * t35) - t265 * (pkin(3) * t146 - pkin(8) * t338 + qJ(4) * t23 + t262 * t35) - qJ(2) * t146 - t343 * t8, t269 * (-t261 * t79 + t262 * t81) - t265 * (t261 * t81 + t262 * t79), t269 * (-t261 * t47 + t262 * t48) - t265 * (t261 * t48 + t262 * t47), t269 * (-t261 * t61 + t262 * t63) - t265 * (t261 * t63 + t262 * t61), t269 * (-t261 * t78 + t262 * t80) - t265 * (t261 * t80 + t262 * t78), t269 * (-t261 * t62 + t262 * t64) - t265 * (t261 * t64 + t262 * t62), t269 * (t262 * t100 - t261 * t99) - t265 * (t261 * t100 + t262 * t99), t269 * (-qJ(4) * t30 + t262 * t11 - t261 * t9) - t265 * (-pkin(3) * t83 + qJ(4) * t31 + t261 * t11 + t262 * t9) + qJ(2) * t83 - t343 * t17, t269 * (-qJ(4) * t32 - t261 * t10 + t262 * t12) - t265 * (-pkin(3) * t88 + qJ(4) * t33 + t262 * t10 + t261 * t12) + qJ(2) * t88 - t343 * t18, t269 * (-qJ(4) * t26 - t261 * t6 + t262 * t7) - t265 * (-pkin(3) * t68 + qJ(4) * t27 + t261 * t7 + t262 * t6) + qJ(2) * t68 - t343 * t13, t269 * (-qJ(4) * t4 - t261 * t2 + t262 * t3) - t265 * (-pkin(3) * t20 + qJ(4) * t5 + t262 * t2 + t261 * t3) + qJ(2) * t20 - t343 * t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t272, -t230, 0, 0, 0, 0, 0, 0, t220, t221, -t243, t179, 0, 0, 0, 0, 0, 0, t130, t155, t119, t55, 0, 0, 0, 0, 0, 0, t44, t65, t29, t8, 0, 0, 0, 0, 0, 0, t17, t18, t13, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t293, (-t259 + t260) * t272, t253, -t293, -t298, qJDD(3), t218, t219, 0, 0, -t215, t232 - t231, -t195, t215, t193, qJDD(3), pkin(3) * t176 - t144, pkin(3) * t181 - t145, pkin(3) * t160, pkin(3) * t101, t175, t174, -t139, -t175, t275, t256, pkin(3) * t85 + pkin(4) * t128 - t74, -t319 - t264 * t345 + pkin(3) * t104 + (-t264 * t348 + t148) * pkin(4), pkin(3) * t49 + pkin(4) * t92, pkin(3) * t22 + pkin(4) * t42, t108, t67, t95, t106, t96, t124, pkin(3) * t30 + pkin(4) * t51 + t296, pkin(3) * t32 + pkin(4) * t53 + t297, pkin(3) * t26 + pkin(4) * t45 + t287, pkin(3) * t4 + pkin(4) * t14 + t339; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t192, t194, t191, -t185, 0, 0, 0, 0, 0, 0, t135, t278, t156, -t146, 0, 0, 0, 0, 0, 0, t83, t88, t68, t20; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t175, t174, -t139, -t175, t275, t256, -t74, -t75, 0, 0, t108, t67, t95, t106, t96, t124, t296, t297, t287, t339; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t163, t162, t116, -t163, -t112, t157, -t38, -t39, 0, 0;];
tauJ_reg  = t19;
