% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RPRPRR10
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
% Datum: 2019-05-05 20:04
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RPRPRR10_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR10_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR10_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPRR10_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPRR10_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRR10_invdynJ_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 20:03:21
% EndTime: 2019-05-05 20:03:37
% DurationCPUTime: 6.48s
% Computational Cost: add. (39740->453), mult. (84691->637), div. (0->0), fcn. (58349->10), ass. (0->292)
t254 = sin(pkin(10));
t255 = cos(pkin(10));
t262 = cos(qJ(3));
t299 = qJD(1) * t262;
t230 = -t255 * qJD(3) + t254 * t299;
t232 = qJD(3) * t254 + t255 * t299;
t210 = t232 * t230;
t295 = qJD(1) * qJD(3);
t285 = t262 * t295;
t258 = sin(qJ(3));
t293 = t258 * qJDD(1);
t235 = t285 + t293;
t327 = -t210 + t235;
t338 = t254 * t327;
t337 = t255 * t327;
t256 = sin(qJ(6));
t257 = sin(qJ(5));
t261 = cos(qJ(5));
t204 = t261 * t230 + t232 * t257;
t206 = -t230 * t257 + t232 * t261;
t260 = cos(qJ(6));
t173 = t260 * t204 + t206 * t256;
t175 = -t204 * t256 + t206 * t260;
t127 = t175 * t173;
t233 = qJDD(5) + t235;
t227 = qJDD(6) + t233;
t330 = -t127 + t227;
t336 = t256 * t330;
t177 = t206 * t204;
t328 = -t177 + t233;
t335 = t257 * t328;
t334 = t260 * t330;
t333 = t261 * t328;
t265 = qJD(1) ^ 2;
t326 = pkin(7) + pkin(1);
t332 = t326 * t265;
t247 = t262 * qJDD(1);
t286 = t258 * t295;
t236 = t247 - t286;
t217 = qJDD(3) * t254 + t236 * t255;
t281 = -t255 * qJDD(3) + t236 * t254;
t282 = t217 * t257 + t261 * t281;
t158 = -qJD(5) * t206 - t282;
t159 = -qJD(5) * t204 + t217 * t261 - t257 * t281;
t111 = -qJD(6) * t173 + t158 * t256 + t159 * t260;
t298 = t258 * qJD(1);
t244 = qJD(5) + t298;
t242 = qJD(6) + t244;
t162 = t242 * t173;
t331 = t111 - t162;
t192 = t244 * t204;
t329 = t159 - t192;
t147 = t159 + t192;
t283 = -t260 * t158 + t159 * t256;
t84 = (qJD(6) - t242) * t175 + t283;
t143 = (qJD(5) - t244) * t206 + t282;
t171 = t173 ^ 2;
t172 = t175 ^ 2;
t202 = t204 ^ 2;
t203 = t206 ^ 2;
t228 = t230 ^ 2;
t229 = t232 ^ 2;
t241 = t242 ^ 2;
t243 = t244 ^ 2;
t294 = qJD(2) * qJD(1);
t249 = 0.2e1 * t294;
t251 = qJDD(1) * qJ(2);
t259 = sin(qJ(1));
t263 = cos(qJ(1));
t279 = g(1) * t263 + g(2) * t259;
t272 = -t251 + t279;
t268 = t249 - t272;
t275 = -t236 + t286;
t276 = t235 + t285;
t183 = t276 * pkin(3) + t275 * qJ(4) + t268 - t332;
t284 = g(1) * t259 - t263 * g(2);
t278 = qJDD(2) - t284;
t266 = -qJ(2) * t265 + t278;
t218 = -t326 * qJDD(1) + t266;
t209 = t262 * g(3) - t258 * t218;
t264 = qJD(3) ^ 2;
t277 = t258 * pkin(3) - t262 * qJ(4);
t269 = t265 * t277;
t186 = -t264 * pkin(3) + qJDD(3) * qJ(4) - t258 * t269 - t209;
t131 = 0.2e1 * qJD(4) * t232 - t255 * t183 + t186 * t254;
t288 = t230 * t298;
t196 = -t217 - t288;
t115 = pkin(4) * t327 + t196 * pkin(8) - t131;
t132 = -0.2e1 * qJD(4) * t230 + t254 * t183 + t255 * t186;
t271 = pkin(4) * t298 - pkin(8) * t232;
t117 = -t228 * pkin(4) - pkin(8) * t281 - t271 * t298 + t132;
t71 = -t261 * t115 + t117 * t257;
t57 = pkin(5) * t328 - pkin(9) * t147 - t71;
t280 = pkin(5) * t244 - pkin(9) * t206;
t72 = t257 * t115 + t261 * t117;
t59 = -t202 * pkin(5) + t158 * pkin(9) - t244 * t280 + t72;
t34 = t256 * t59 - t260 * t57;
t35 = t256 * t57 + t260 * t59;
t17 = t256 * t35 - t260 * t34;
t325 = pkin(5) * t17;
t87 = t111 + t162;
t50 = -t256 * t84 - t260 * t87;
t324 = pkin(5) * t50;
t323 = t17 * t257;
t322 = t17 * t261;
t43 = t257 * t72 - t261 * t71;
t321 = t254 * t43;
t320 = t255 * t43;
t208 = g(3) * t258 + t218 * t262;
t185 = qJDD(3) * pkin(3) + qJ(4) * t264 - t262 * t269 - qJDD(4) + t208;
t149 = -pkin(4) * t281 + pkin(8) * t228 - t232 * t271 + t185;
t93 = pkin(5) * t158 + pkin(9) * t202 - t206 * t280 + t149;
t319 = t256 * t93;
t318 = t260 * t93;
t317 = qJDD(1) * pkin(1);
t121 = t127 + t227;
t316 = t121 * t256;
t315 = t121 * t260;
t314 = t149 * t257;
t313 = t149 * t261;
t165 = t177 + t233;
t312 = t165 * t257;
t311 = t165 * t261;
t310 = t185 * t254;
t309 = t185 * t255;
t198 = t210 + t235;
t308 = t198 * t254;
t307 = t198 * t255;
t306 = t242 * t256;
t305 = t242 * t260;
t304 = t244 * t257;
t303 = t244 * t261;
t253 = t262 ^ 2;
t302 = t253 * t265;
t289 = t258 * t265 * t262;
t301 = t258 * (qJDD(3) + t289);
t300 = t262 * (qJDD(3) - t289);
t292 = t258 * t127;
t291 = t258 * t177;
t290 = t258 * t210;
t287 = t232 * t298;
t18 = t256 * t34 + t260 * t35;
t44 = t257 * t71 + t261 * t72;
t98 = t131 * t254 + t255 * t132;
t274 = t131 * t255 - t132 * t254;
t182 = t262 * t208 - t258 * t209;
t125 = -t241 - t171;
t91 = t125 * t256 + t334;
t273 = pkin(5) * t91 - t34;
t270 = qJ(2) + t277;
t152 = -t172 - t241;
t100 = t152 * t260 - t316;
t267 = pkin(5) * t100 - t35;
t194 = -t281 + t287;
t252 = t258 ^ 2;
t248 = t252 * t265;
t238 = (t252 + t253) * qJDD(1);
t237 = t247 - 0.2e1 * t286;
t234 = 0.2e1 * t285 + t293;
t222 = -t266 + t317;
t221 = -t229 - t248;
t220 = -t229 + t248;
t219 = t228 - t248;
t215 = t272 - 0.2e1 * t294 + t332;
t213 = -t301 + t262 * (-t264 - t302);
t212 = t258 * (-t248 - t264) + t300;
t207 = -t248 - t228;
t195 = t217 - t288;
t193 = t281 + t287;
t190 = -t228 - t229;
t189 = -t203 + t243;
t188 = t202 - t243;
t187 = -t203 - t243;
t179 = -t221 * t254 - t307;
t178 = t221 * t255 - t308;
t176 = t203 - t202;
t170 = -t243 - t202;
t168 = t207 * t255 - t338;
t167 = t207 * t254 + t337;
t161 = -t172 + t241;
t160 = t171 - t241;
t157 = t194 * t255 - t196 * t254;
t155 = (-t204 * t261 + t206 * t257) * t244;
t154 = (-t204 * t257 - t206 * t261) * t244;
t151 = -t202 - t203;
t150 = t179 * t258 - t195 * t262;
t148 = t168 * t258 - t193 * t262;
t142 = (qJD(5) + t244) * t206 + t282;
t141 = t188 * t261 - t312;
t140 = -t189 * t257 + t333;
t139 = t188 * t257 + t311;
t138 = t189 * t261 + t335;
t137 = t159 * t261 - t206 * t304;
t136 = t159 * t257 + t206 * t303;
t135 = -t158 * t257 + t204 * t303;
t134 = t158 * t261 + t204 * t304;
t133 = t157 * t258 - t190 * t262;
t130 = -t187 * t257 - t311;
t129 = t187 * t261 - t312;
t126 = t172 - t171;
t124 = t170 * t261 - t335;
t123 = t170 * t257 + t333;
t119 = (-t173 * t260 + t175 * t256) * t242;
t118 = (-t173 * t256 - t175 * t260) * t242;
t112 = -t171 - t172;
t110 = -qJD(6) * t175 - t283;
t109 = t160 * t260 - t316;
t108 = -t161 * t256 + t334;
t107 = t160 * t256 + t315;
t106 = t161 * t260 + t336;
t105 = -t143 * t261 + t147 * t257;
t104 = -t142 * t261 - t257 * t329;
t103 = -t143 * t257 - t147 * t261;
t102 = -t142 * t257 + t261 * t329;
t101 = -t152 * t256 - t315;
t99 = -pkin(8) * t129 - t313;
t96 = -t129 * t254 + t130 * t255;
t95 = t129 * t255 + t130 * t254;
t94 = -pkin(8) * t123 - t314;
t92 = t125 * t260 - t336;
t90 = -t123 * t254 + t124 * t255;
t89 = t123 * t255 + t124 * t254;
t83 = (qJD(6) + t242) * t175 + t283;
t82 = t185 * t262 + t258 * t98;
t81 = t111 * t260 - t175 * t306;
t80 = t111 * t256 + t175 * t305;
t79 = -t110 * t256 + t173 * t305;
t78 = t110 * t260 + t173 * t306;
t77 = -t118 * t257 + t119 * t261;
t76 = t118 * t261 + t119 * t257;
t75 = -pkin(4) * t329 + pkin(8) * t130 - t314;
t74 = t258 * t96 - t262 * t329;
t73 = -pkin(4) * t142 + pkin(8) * t124 + t313;
t69 = -t142 * t262 + t258 * t90;
t68 = -t107 * t257 + t109 * t261;
t67 = -t106 * t257 + t108 * t261;
t66 = t107 * t261 + t109 * t257;
t65 = t106 * t261 + t108 * t257;
t64 = -t103 * t254 + t105 * t255;
t63 = t103 * t255 + t105 * t254;
t62 = -t100 * t257 + t101 * t261;
t61 = t100 * t261 + t101 * t257;
t60 = -pkin(9) * t100 - t318;
t58 = -t151 * t262 + t258 * t64;
t55 = -pkin(9) * t91 - t319;
t54 = -t257 * t91 + t261 * t92;
t53 = t257 * t92 + t261 * t91;
t52 = t256 * t87 - t260 * t84;
t51 = -t256 * t331 - t260 * t83;
t49 = -t256 * t83 + t260 * t331;
t48 = -t257 * t80 + t261 * t81;
t47 = -t257 * t78 + t261 * t79;
t46 = t257 * t81 + t261 * t80;
t45 = t257 * t79 + t261 * t78;
t42 = -pkin(5) * t331 + pkin(9) * t101 - t319;
t41 = pkin(4) * t149 + pkin(8) * t44;
t40 = -pkin(5) * t83 + pkin(9) * t92 + t318;
t39 = -t254 * t61 + t255 * t62;
t38 = t254 * t62 + t255 * t61;
t37 = -pkin(8) * t103 - t43;
t36 = -pkin(4) * t151 + pkin(8) * t105 + t44;
t32 = -t254 * t53 + t255 * t54;
t31 = t254 * t54 + t255 * t53;
t30 = -t257 * t50 + t261 * t52;
t29 = -t257 * t49 + t261 * t51;
t28 = t257 * t52 + t261 * t50;
t27 = t257 * t51 + t261 * t49;
t26 = t258 * t39 - t262 * t331;
t25 = t258 * t32 - t262 * t83;
t24 = t255 * t44 - t321;
t23 = t254 * t44 + t320;
t22 = t149 * t262 + t24 * t258;
t21 = -pkin(8) * t61 - t257 * t42 + t261 * t60;
t20 = -pkin(8) * t53 - t257 * t40 + t261 * t55;
t19 = -pkin(4) * t331 + pkin(8) * t62 + t257 * t60 + t261 * t42;
t16 = -pkin(4) * t83 + pkin(8) * t54 + t257 * t55 + t261 * t40;
t15 = -t254 * t28 + t255 * t30;
t14 = t254 * t30 + t255 * t28;
t13 = pkin(5) * t93 + pkin(9) * t18;
t12 = -t112 * t262 + t15 * t258;
t11 = -pkin(9) * t50 - t17;
t10 = -pkin(5) * t112 + pkin(9) * t52 + t18;
t9 = t18 * t261 - t323;
t8 = t18 * t257 + t322;
t7 = -pkin(8) * t28 - t10 * t257 + t11 * t261;
t6 = -pkin(4) * t112 + pkin(8) * t30 + t10 * t261 + t11 * t257;
t5 = -t254 * t8 + t255 * t9;
t4 = t254 * t9 + t255 * t8;
t3 = -pkin(8) * t8 - pkin(9) * t322 - t13 * t257;
t2 = t258 * t5 + t262 * t93;
t1 = pkin(4) * t93 + pkin(8) * t9 - pkin(9) * t323 + t13 * t261;
t33 = [0, 0, 0, 0, 0, qJDD(1), t284, t279, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t278 - 0.2e1 * t317, t249 + 0.2e1 * t251 - t279, pkin(1) * t222 + qJ(2) * (-pkin(1) * t265 + t268), -t275 * t262, -t234 * t262 - t237 * t258, t300 - t258 * (t264 - t302), t276 * t258, t262 * (t248 - t264) - t301, 0, qJ(2) * t234 - t326 * t212 - t215 * t258, qJ(2) * t237 - t326 * t213 - t215 * t262, qJ(2) * (-t248 - t302) + t326 * t238 - t182, -qJ(2) * t215 - t326 * t182, t262 * (t217 * t255 - t254 * t287) + t290, t262 * (-t193 * t255 - t195 * t254) - t258 * (-t229 + t228), t262 * (-t220 * t254 + t337) - t258 * t196, t262 * (t254 * t281 + t255 * t288) - t290, t262 * (t219 * t255 - t308) + t258 * t194, (t235 + (-t230 * t255 + t232 * t254) * t299) * t258, t262 * (-qJ(4) * t167 - t310) - t258 * (-pkin(3) * t167 + t131) + qJ(2) * t167 - t326 * t148, t262 * (-qJ(4) * t178 - t309) - t258 * (-pkin(3) * t178 + t132) + qJ(2) * t178 - t326 * t150, t262 * t274 + t270 * (t194 * t254 + t196 * t255) - t326 * t133, -t270 * t274 - t326 * t82, t262 * (-t136 * t254 + t137 * t255) + t291, t262 * (-t102 * t254 + t104 * t255) + t258 * t176, t262 * (-t138 * t254 + t140 * t255) + t258 * t147, t262 * (-t134 * t254 + t135 * t255) - t291, t262 * (-t139 * t254 + t141 * t255) - t258 * t143, t262 * (-t154 * t254 + t155 * t255) + t258 * t233, t262 * (-qJ(4) * t89 - t254 * t73 + t255 * t94) - t258 * (-pkin(3) * t89 - pkin(4) * t123 + t71) + qJ(2) * t89 - t326 * t69, t262 * (-qJ(4) * t95 - t254 * t75 + t255 * t99) - t258 * (-pkin(3) * t95 - pkin(4) * t129 + t72) + qJ(2) * t95 - t326 * t74, t262 * (-qJ(4) * t63 - t254 * t36 + t255 * t37) - t258 * (-pkin(3) * t63 - pkin(4) * t103) + qJ(2) * t63 - t326 * t58, t262 * (-pkin(8) * t320 - qJ(4) * t23 - t254 * t41) - t258 * (-pkin(3) * t23 - pkin(4) * t43) + qJ(2) * t23 - t326 * t22, t262 * (-t254 * t46 + t255 * t48) + t292, t262 * (-t254 * t27 + t255 * t29) + t258 * t126, t262 * (-t254 * t65 + t255 * t67) + t258 * t87, t262 * (-t254 * t45 + t255 * t47) - t292, t262 * (-t254 * t66 + t255 * t68) - t258 * t84, t262 * (-t254 * t76 + t255 * t77) + t258 * t227, t262 * (-qJ(4) * t31 - t16 * t254 + t20 * t255) - t258 * (-pkin(3) * t31 - pkin(4) * t53 - t273) + qJ(2) * t31 - t326 * t25, t262 * (-qJ(4) * t38 - t19 * t254 + t21 * t255) - t258 * (-pkin(3) * t38 - pkin(4) * t61 - t267) + qJ(2) * t38 - t326 * t26, t262 * (-qJ(4) * t14 - t254 * t6 + t255 * t7) - t258 * (-pkin(3) * t14 - pkin(4) * t28 - t324) + qJ(2) * t14 - t326 * t12, t262 * (-qJ(4) * t4 - t1 * t254 + t255 * t3) - t258 * (-pkin(3) * t4 - pkin(4) * t8 - t325) + qJ(2) * t4 - t326 * t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t265, -t222, 0, 0, 0, 0, 0, 0, t212, t213, -t238, t182, 0, 0, 0, 0, 0, 0, t148, t150, t133, t82, 0, 0, 0, 0, 0, 0, t69, t74, t58, t22, 0, 0, 0, 0, 0, 0, t25, t26, t12, t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t289, -t248 + t302, t247, -t289, -t293, qJDD(3), t208, t209, 0, 0, t217 * t254 + t255 * t287, -t193 * t254 + t195 * t255, t220 * t255 + t338, t254 * t288 - t255 * t281, t219 * t254 + t307, (-t230 * t254 - t232 * t255) * t298, -pkin(3) * t193 + qJ(4) * t168 + t309, -pkin(3) * t195 + qJ(4) * t179 - t310, -pkin(3) * t190 + qJ(4) * t157 + t98, pkin(3) * t185 + qJ(4) * t98, t136 * t255 + t137 * t254, t102 * t255 + t104 * t254, t138 * t255 + t140 * t254, t134 * t255 + t135 * t254, t139 * t255 + t141 * t254, t154 * t255 + t155 * t254, -pkin(3) * t142 + qJ(4) * t90 + t254 * t94 + t255 * t73, -pkin(3) * t329 + qJ(4) * t96 + t254 * t99 + t255 * t75, -pkin(3) * t151 + qJ(4) * t64 + t254 * t37 + t255 * t36, pkin(3) * t149 - pkin(8) * t321 + qJ(4) * t24 + t255 * t41, t254 * t48 + t255 * t46, t254 * t29 + t255 * t27, t254 * t67 + t255 * t65, t254 * t47 + t255 * t45, t254 * t68 + t255 * t66, t254 * t77 + t255 * t76, -pkin(3) * t83 + qJ(4) * t32 + t16 * t255 + t20 * t254, -pkin(3) * t331 + qJ(4) * t39 + t19 * t255 + t21 * t254, -pkin(3) * t112 + qJ(4) * t15 + t254 * t7 + t255 * t6, pkin(3) * t93 + qJ(4) * t5 + t1 * t255 + t254 * t3; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t193, t195, t190, -t185, 0, 0, 0, 0, 0, 0, t142, t329, t151, -t149, 0, 0, 0, 0, 0, 0, t83, t331, t112, -t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t177, t176, t147, -t177, -t143, t233, -t71, -t72, 0, 0, t127, t126, t87, -t127, -t84, t227, t273, t267, t324, t325; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t127, t126, t87, -t127, -t84, t227, -t34, -t35, 0, 0;];
tauJ_reg  = t33;
