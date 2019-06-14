% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6PRRPPR1
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
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d2,d3,d6,theta1,theta4,theta5]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 02:36
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6PRRPPR1_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6PRRPPR1_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6PRRPPR1_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6PRRPPR1_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6PRRPPR1_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6PRRPPR1_invdynJ_fixb_reg2_snew_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 02:34:09
% EndTime: 2019-05-05 02:34:22
% DurationCPUTime: 6.55s
% Computational Cost: add. (33994->492), mult. (76614->742), div. (0->0), fcn. (56817->14), ass. (0->280)
t253 = sin(pkin(12));
t254 = sin(pkin(11));
t257 = cos(pkin(11));
t264 = cos(qJ(3));
t293 = qJD(2) * t264;
t261 = sin(qJ(3));
t294 = qJD(2) * t261;
t221 = t254 * t293 + t257 * t294;
t256 = cos(pkin(12));
t204 = -t256 * qJD(3) + t221 * t253;
t206 = qJD(3) * t253 + t221 * t256;
t171 = t206 * t204;
t288 = qJD(2) * qJD(3);
t280 = t264 * t288;
t287 = t261 * qJDD(2);
t226 = t280 + t287;
t245 = t264 * qJDD(2);
t281 = t261 * t288;
t273 = t245 - t281;
t197 = t226 * t254 - t257 * t273;
t331 = -t171 + t197;
t341 = t253 * t331;
t219 = t254 * t294 - t257 * t293;
t196 = t221 * t219;
t329 = qJDD(3) - t196;
t340 = t254 * t329;
t339 = t256 * t331;
t338 = t257 * t329;
t260 = sin(qJ(6));
t263 = cos(qJ(6));
t167 = t263 * t204 + t206 * t260;
t169 = -t204 * t260 + t206 * t263;
t130 = t169 * t167;
t194 = qJDD(6) + t197;
t333 = -t130 + t194;
t337 = t260 * t333;
t336 = t263 * t333;
t255 = sin(pkin(6));
t258 = cos(pkin(6));
t316 = sin(pkin(10));
t317 = cos(pkin(10));
t272 = t316 * g(1) - t317 * g(2);
t271 = t258 * t272;
t296 = -g(3) + qJDD(1);
t335 = t255 * t296 + t271;
t230 = -t317 * g(1) - t316 * g(2);
t262 = sin(qJ(2));
t265 = cos(qJ(2));
t187 = t265 * t230 + t335 * t262;
t334 = qJDD(2) * pkin(8) + t187;
t198 = t257 * t226 + t254 * t273;
t185 = qJDD(3) * t253 + t256 * t198;
t276 = -t256 * qJDD(3) + t198 * t253;
t124 = -t167 * qJD(6) + t263 * t185 - t260 * t276;
t215 = qJD(6) + t219;
t157 = t215 * t167;
t332 = -t157 + t124;
t183 = t219 * t204;
t146 = -t183 - t185;
t330 = -t183 + t185;
t292 = qJD(3) * t221;
t173 = t197 + t292;
t231 = qJD(3) * pkin(3) - qJ(4) * t294;
t250 = t264 ^ 2;
t270 = -t255 * t272 + t258 * t296;
t269 = t261 * t270;
t315 = qJ(4) * t261;
t136 = t264 * t334 + t269 - qJD(3) * t231 + t245 * qJ(4) + (-qJD(3) * t315 + (-t264 * pkin(2) - t250 * pkin(3)) * qJD(2)) * qJD(2);
t326 = qJD(2) ^ 2;
t268 = -t326 * pkin(2) + t334;
t159 = t261 * t268 - t264 * t270;
t240 = t261 * t326 * t264;
t232 = qJDD(3) + t240;
t267 = -t159 + (-t226 + t280) * qJ(4) + t232 * pkin(3);
t89 = -0.2e1 * qJD(4) * t219 + t257 * t136 + t254 * t267;
t277 = t185 * t260 + t263 * t276;
t99 = (qJD(6) - t215) * t169 + t277;
t165 = t167 ^ 2;
t166 = t169 ^ 2;
t328 = t204 ^ 2;
t203 = t206 ^ 2;
t214 = t215 ^ 2;
t327 = t219 ^ 2;
t218 = t221 ^ 2;
t325 = 0.2e1 * qJD(4);
t324 = pkin(4) * t254;
t274 = t230 * t262 - t335 * t265;
t177 = -qJDD(2) * pkin(2) - t326 * pkin(8) + t274;
t247 = t250 * t326;
t150 = -t273 * pkin(3) - qJ(4) * t247 + t231 * t294 + qJDD(4) + t177;
t290 = t219 * qJD(3);
t275 = -t198 + t290;
t107 = pkin(4) * t173 + t275 * qJ(5) + t150;
t188 = pkin(4) * t219 - qJ(5) * t221;
t266 = qJD(3) ^ 2;
t76 = -pkin(4) * t266 + qJDD(3) * qJ(5) - t188 * t219 + t89;
t54 = 0.2e1 * qJD(5) * t206 - t256 * t107 + t253 * t76;
t46 = pkin(5) * t331 + pkin(9) * t146 - t54;
t178 = pkin(5) * t219 - pkin(9) * t206;
t55 = -0.2e1 * qJD(5) * t204 + t253 * t107 + t256 * t76;
t49 = -t328 * pkin(5) - t276 * pkin(9) - t219 * t178 + t55;
t26 = t260 * t49 - t263 * t46;
t27 = t260 * t46 + t263 * t49;
t13 = -t26 * t263 + t260 * t27;
t323 = t13 * t253;
t322 = t13 * t256;
t278 = t136 * t254 - t257 * t267;
t75 = qJDD(5) - t266 * qJ(5) - qJDD(3) * pkin(4) + (t325 + t188) * t221 + t278;
t321 = t253 * t75;
t320 = t256 * t75;
t72 = t276 * pkin(5) - t328 * pkin(9) + t178 * t206 + t75;
t319 = t260 * t72;
t318 = t263 * t72;
t121 = t130 + t194;
t313 = t121 * t260;
t312 = t121 * t263;
t148 = t171 + t197;
t311 = t148 * t253;
t310 = t148 * t256;
t309 = t150 * t254;
t308 = t150 * t257;
t191 = qJDD(3) + t196;
t307 = t191 * t254;
t306 = t191 * t257;
t305 = t197 * t254;
t304 = t206 * t219;
t303 = t215 * t260;
t302 = t215 * t263;
t301 = t219 * t253;
t300 = t219 * t256;
t299 = t261 * t232;
t233 = qJDD(3) - t240;
t298 = t264 * t233;
t286 = t254 * t130;
t285 = t257 * t130;
t284 = t254 * t171;
t283 = t257 * t171;
t282 = -pkin(4) * t257 - pkin(3);
t14 = t26 * t260 + t263 * t27;
t32 = t253 * t54 + t256 * t55;
t88 = t221 * t325 + t278;
t61 = t254 * t88 + t257 * t89;
t160 = t264 * t268 + t269;
t117 = t159 * t261 + t264 * t160;
t227 = t245 - 0.2e1 * t281;
t23 = t254 * t32 - t257 * t75;
t24 = t254 * t75 + t257 * t32;
t12 = -t261 * t23 + t264 * t24;
t31 = t253 * t55 - t256 * t54;
t60 = t254 * t89 - t257 * t88;
t142 = t276 - t304;
t174 = -t197 + t292;
t249 = t261 ^ 2;
t246 = t249 * t326;
t239 = -t247 - t266;
t238 = -t246 - t266;
t229 = t246 + t247;
t228 = (t249 + t250) * qJDD(2);
t225 = 0.2e1 * t280 + t287;
t211 = -t218 - t266;
t210 = -t218 + t266;
t209 = t327 - t266;
t208 = -t238 * t261 - t298;
t207 = t239 * t264 - t299;
t193 = t257 * t197;
t189 = -t327 - t266;
t181 = -t203 + t327;
t180 = -t327 + t328;
t176 = t198 + t290;
t172 = -t327 - t218;
t170 = -t203 + t328;
t164 = -t203 - t327;
t163 = -t211 * t254 - t306;
t162 = t211 * t257 - t307;
t161 = -t327 - t328;
t155 = -t166 + t214;
t154 = t165 - t214;
t153 = -t203 - t328;
t152 = t189 * t257 - t340;
t151 = t189 * t254 + t338;
t141 = t276 + t304;
t140 = t185 * t256 - t206 * t301;
t139 = t204 * t300 + t253 * t276;
t138 = (-t204 * t256 + t206 * t253) * t219;
t137 = -t166 - t214;
t135 = t174 * t257 + t176 * t254;
t134 = t174 * t254 - t176 * t257;
t129 = t166 - t165;
t128 = -t261 * t162 + t264 * t163;
t127 = t180 * t256 - t311;
t126 = -t181 * t253 + t339;
t125 = -t214 - t165;
t123 = -qJD(6) * t169 - t277;
t119 = -t164 * t253 - t310;
t118 = t164 * t256 - t311;
t116 = (-t167 * t263 + t169 * t260) * t215;
t115 = (-t167 * t260 - t169 * t263) * t215;
t114 = t161 * t256 - t341;
t113 = t161 * t253 + t339;
t112 = -t261 * t151 + t264 * t152;
t111 = -t141 * t256 - t253 * t330;
t110 = -t142 * t256 - t146 * t253;
t109 = -t142 * t253 + t146 * t256;
t108 = -t165 - t166;
t104 = -t261 * t134 + t264 * t135;
t102 = t157 + t124;
t98 = (qJD(6) + t215) * t169 + t277;
t97 = t124 * t263 - t169 * t303;
t96 = t124 * t260 + t169 * t302;
t95 = -t123 * t260 + t167 * t302;
t94 = t123 * t263 + t167 * t303;
t93 = t154 * t263 - t313;
t92 = -t155 * t260 + t336;
t91 = t154 * t260 + t312;
t90 = t155 * t263 + t337;
t86 = t119 * t257 + t254 * t330;
t85 = t119 * t254 - t257 * t330;
t84 = t114 * t257 + t141 * t254;
t83 = t114 * t254 - t141 * t257;
t82 = -t137 * t260 - t312;
t81 = t137 * t263 - t313;
t80 = t110 * t257 + t153 * t254;
t79 = t110 * t254 - t153 * t257;
t78 = t125 * t263 - t337;
t77 = t125 * t260 + t336;
t73 = -t115 * t253 + t116 * t256;
t71 = -qJ(5) * t118 + t320;
t70 = -t260 * t332 - t263 * t98;
t69 = t102 * t260 - t263 * t99;
t68 = -t260 * t98 + t263 * t332;
t67 = -t102 * t263 - t260 * t99;
t66 = -qJ(5) * t113 + t321;
t65 = -t253 * t96 + t256 * t97;
t64 = -t253 * t94 + t256 * t95;
t63 = -t253 * t91 + t256 * t93;
t62 = -t253 * t90 + t256 * t92;
t59 = -t261 * t85 + t264 * t86;
t58 = -t261 * t83 + t264 * t84;
t57 = -t253 * t81 + t256 * t82;
t56 = t253 * t82 + t256 * t81;
t52 = -t261 * t79 + t264 * t80;
t51 = -t253 * t77 + t256 * t78;
t50 = t253 * t78 + t256 * t77;
t48 = -pkin(4) * t118 + t55;
t47 = -pkin(4) * t113 + t54;
t44 = -pkin(9) * t81 + t318;
t43 = -pkin(9) * t77 + t319;
t42 = t254 * t332 + t257 * t57;
t41 = t254 * t57 - t257 * t332;
t40 = t254 * t98 + t257 * t51;
t39 = t254 * t51 - t257 * t98;
t38 = -pkin(5) * t332 + pkin(9) * t82 + t319;
t37 = -t253 * t68 + t256 * t70;
t36 = -t253 * t67 + t256 * t69;
t35 = t253 * t69 + t256 * t67;
t34 = -pkin(5) * t98 + pkin(9) * t78 - t318;
t33 = -t261 * t60 + t264 * t61;
t30 = t108 * t254 + t257 * t36;
t29 = -t108 * t257 + t254 * t36;
t28 = -qJ(5) * t109 - t31;
t22 = -pkin(4) * t35 - pkin(5) * t67;
t21 = -t261 * t41 + t264 * t42;
t20 = -t261 * t39 + t264 * t40;
t19 = -pkin(4) * t56 - pkin(5) * t81 + t27;
t18 = -qJ(5) * t56 - t253 * t38 + t256 * t44;
t17 = -t261 * t29 + t264 * t30;
t16 = -pkin(4) * t50 - pkin(5) * t77 + t26;
t15 = -qJ(5) * t50 - t253 * t34 + t256 * t43;
t11 = -pkin(5) * t72 + pkin(9) * t14;
t10 = -pkin(9) * t67 - t13;
t9 = -pkin(5) * t108 + pkin(9) * t69 + t14;
t8 = t14 * t256 - t323;
t7 = t14 * t253 + t322;
t6 = t254 * t72 + t257 * t8;
t5 = t254 * t8 - t257 * t72;
t4 = -qJ(5) * t35 + t10 * t256 - t253 * t9;
t3 = -pkin(4) * t7 - pkin(5) * t13;
t2 = -pkin(9) * t322 - qJ(5) * t7 - t11 * t253;
t1 = -t261 * t5 + t264 * t6;
t25 = [0, 0, 0, 0, 0, 0, 0, 0, 0, t296, 0, 0, 0, 0, 0, 0, (qJDD(2) * t265 - t326 * t262) * t255, (-qJDD(2) * t262 - t326 * t265) * t255, 0, t258 ^ 2 * t296 + (t262 * t187 - t265 * t274 - t271) * t255, 0, 0, 0, 0, 0, 0, t258 * (t232 * t264 + t239 * t261) + (t262 * t207 + t265 * t227) * t255, t258 * (-t233 * t261 + t238 * t264) + (t262 * t208 - t265 * t225) * t255, (t228 * t262 + t229 * t265) * t255, t258 * (-t159 * t264 + t160 * t261) + (t262 * t117 - t265 * t177) * t255, 0, 0, 0, 0, 0, 0, t258 * (t151 * t264 + t152 * t261) + (t262 * t112 - t265 * t173) * t255, t258 * (t162 * t264 + t163 * t261) + (t262 * t128 + t265 * t275) * t255, t258 * (t134 * t264 + t135 * t261) + (t262 * t104 - t265 * t172) * t255, t258 * (t261 * t61 + t264 * t60) + (-t265 * t150 + t262 * t33) * t255, 0, 0, 0, 0, 0, 0, t258 * (t261 * t84 + t264 * t83) + (-t265 * t113 + t262 * t58) * t255, t258 * (t261 * t86 + t264 * t85) + (-t265 * t118 + t262 * t59) * t255, t258 * (t261 * t80 + t264 * t79) + (-t265 * t109 + t262 * t52) * t255, t258 * (t23 * t264 + t24 * t261) + (t262 * t12 - t265 * t31) * t255, 0, 0, 0, 0, 0, 0, t258 * (t261 * t40 + t264 * t39) + (t262 * t20 - t265 * t50) * t255, t258 * (t261 * t42 + t264 * t41) + (t262 * t21 - t265 * t56) * t255, t258 * (t261 * t30 + t264 * t29) + (t262 * t17 - t265 * t35) * t255, t258 * (t261 * t6 + t264 * t5) + (t262 * t1 - t265 * t7) * t255; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(2), -t274, -t187, 0, 0, (t226 + t280) * t261, t225 * t264 + t227 * t261, t299 + t264 * (-t246 + t266), t227 * t264, t261 * (t247 - t266) + t298, 0, pkin(2) * t227 + pkin(8) * t207 - t177 * t264, -pkin(2) * t225 + pkin(8) * t208 + t177 * t261, pkin(2) * t229 + pkin(8) * t228 + t117, -pkin(2) * t177 + pkin(8) * t117, t261 * (t198 * t257 - t254 * t292) + t264 * (t198 * t254 + t257 * t292), t261 * (-t173 * t257 + t254 * t275) + t264 * (-t173 * t254 - t257 * t275), t261 * (-t210 * t254 + t338) + t264 * (t210 * t257 + t340), t261 * (t257 * t290 + t305) + t264 * (t254 * t290 - t193), t261 * (t209 * t257 - t307) + t264 * (t209 * t254 + t306), (t261 * (-t219 * t257 + t221 * t254) + t264 * (-t219 * t254 - t221 * t257)) * qJD(3), t261 * (-qJ(4) * t151 + t309) + t264 * (-pkin(3) * t173 + qJ(4) * t152 - t308) - pkin(2) * t173 + pkin(8) * t112, t261 * (-qJ(4) * t162 + t308) + t264 * (pkin(3) * t275 + qJ(4) * t163 + t309) + pkin(2) * t275 + pkin(8) * t128, t261 * (-qJ(4) * t134 - t60) + t264 * (-pkin(3) * t172 + qJ(4) * t135 + t61) - pkin(2) * t172 + pkin(8) * t104, -t60 * t315 + t264 * (-pkin(3) * t150 + qJ(4) * t61) - pkin(2) * t150 + pkin(8) * t33, t261 * (t140 * t257 + t284) + t264 * (t140 * t254 - t283), t261 * (t111 * t257 - t170 * t254) + t264 * (t111 * t254 + t170 * t257), t261 * (t126 * t257 - t146 * t254) + t264 * (t126 * t254 + t146 * t257), t261 * (t139 * t257 - t284) + t264 * (t139 * t254 + t283), t261 * (t257 * t127 - t254 * t142) + t264 * (t127 * t254 + t142 * t257), t261 * (t138 * t257 + t305) + t264 * (t138 * t254 - t193), t261 * (-qJ(4) * t83 - t254 * t47 + t257 * t66) + t264 * (-pkin(3) * t113 + qJ(4) * t84 + t254 * t66 + t257 * t47) - pkin(2) * t113 + pkin(8) * t58, t261 * (-qJ(4) * t85 - t254 * t48 + t257 * t71) + t264 * (-pkin(3) * t118 + qJ(4) * t86 + t254 * t71 + t257 * t48) - pkin(2) * t118 + pkin(8) * t59, t261 * (-qJ(4) * t79 + t257 * t28) + t264 * (qJ(4) * t80 + t254 * t28) + pkin(8) * t52 + (t261 * t324 + t264 * t282 - pkin(2)) * t109, (t261 * (-qJ(5) * t257 + t324) + t264 * (-qJ(5) * t254 + t282) - pkin(2)) * t31 + (pkin(8) + qJ(4)) * t12, t261 * (t257 * t65 + t286) + t264 * (t254 * t65 - t285), t261 * (t129 * t254 + t257 * t37) + t264 * (-t129 * t257 + t254 * t37), t261 * (t102 * t254 + t257 * t62) + t264 * (-t102 * t257 + t254 * t62), t261 * (t257 * t64 - t286) + t264 * (t254 * t64 + t285), t261 * (-t254 * t99 + t257 * t63) + t264 * (t254 * t63 + t257 * t99), t261 * (t194 * t254 + t257 * t73) + t264 * (-t194 * t257 + t254 * t73), t261 * (-qJ(4) * t39 + t15 * t257 - t16 * t254) + t264 * (-pkin(3) * t50 + qJ(4) * t40 + t15 * t254 + t16 * t257) - pkin(2) * t50 + pkin(8) * t20, t261 * (-qJ(4) * t41 + t18 * t257 - t19 * t254) + t264 * (-pkin(3) * t56 + qJ(4) * t42 + t18 * t254 + t19 * t257) - pkin(2) * t56 + pkin(8) * t21, t261 * (-qJ(4) * t29 - t22 * t254 + t257 * t4) + t264 * (-pkin(3) * t35 + qJ(4) * t30 + t22 * t257 + t254 * t4) - pkin(2) * t35 + pkin(8) * t17, t261 * (-qJ(4) * t5 + t2 * t257 - t254 * t3) + t264 * (-pkin(3) * t7 + qJ(4) * t6 + t2 * t254 + t257 * t3) - pkin(2) * t7 + pkin(8) * t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t240, t246 - t247, t287, t240, t245, qJDD(3), -t159, -t160, 0, 0, t196, t218 - t327, t176, -t196, t174, qJDD(3), pkin(3) * t151 - t88, pkin(3) * t162 - t89, pkin(3) * t134, pkin(3) * t60, t185 * t253 + t206 * t300, -t141 * t253 + t256 * t330, t181 * t256 + t341, t204 * t301 - t256 * t276, t180 * t253 + t310, (-t204 * t253 - t206 * t256) * t219, pkin(3) * t83 - pkin(4) * t141 + qJ(5) * t114 - t320, pkin(3) * t85 - pkin(4) * t330 + qJ(5) * t119 + t321, pkin(3) * t79 - pkin(4) * t153 + qJ(5) * t110 + t32, pkin(3) * t23 - pkin(4) * t75 + qJ(5) * t32, t253 * t97 + t256 * t96, t253 * t70 + t256 * t68, t253 * t92 + t256 * t90, t253 * t95 + t256 * t94, t253 * t93 + t256 * t91, t115 * t256 + t116 * t253, pkin(3) * t39 - pkin(4) * t98 + qJ(5) * t51 + t253 * t43 + t256 * t34, pkin(3) * t41 - pkin(4) * t332 + qJ(5) * t57 + t253 * t44 + t256 * t38, pkin(3) * t29 - pkin(4) * t108 + qJ(5) * t36 + t10 * t253 + t256 * t9, pkin(3) * t5 - pkin(4) * t72 - pkin(9) * t323 + qJ(5) * t8 + t11 * t256; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t173, -t275, t172, t150, 0, 0, 0, 0, 0, 0, t113, t118, t109, t31, 0, 0, 0, 0, 0, 0, t50, t56, t35, t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t141, t330, t153, t75, 0, 0, 0, 0, 0, 0, t98, t332, t108, t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t130, t129, t102, -t130, -t99, t194, -t26, -t27, 0, 0;];
tauJ_reg  = t25;
