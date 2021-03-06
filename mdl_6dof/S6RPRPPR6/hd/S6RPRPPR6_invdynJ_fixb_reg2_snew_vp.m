% Calculate inertial parameters regressor of inverse dynamics joint torque vector with Newton-Euler for
% S6RPRPPR6
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
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d6,theta4,theta5]';
% 
% Output:
% tauJ_reg [6x(6*10)]
%   inertial parameter regressor of inverse dynamics joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-05-05 17:10
% Revision: 89c353f7eff3bd693eda4e29f35b2761dbc3ada0 (2019-05-03)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauJ_reg = S6RPRPPR6_invdynJ_fixb_reg2_snew_vp(qJ, qJD, qJDD, g, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(6,1),zeros(3,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPPR6_invdynJ_fixb_reg2_snew_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPPR6_invdynJ_fixb_reg2_snew_vp: qJD has to be [6x1] (double)');
assert(isreal(qJDD) && all(size(qJDD) == [6 1]), ...
  'S6RPRPPR6_invdynJ_fixb_reg2_snew_vp: qJDD has to be [6x1] (double)');
assert(isreal(g) && all(size(g) == [3 1]), ...
  'S6RPRPPR6_invdynJ_fixb_reg2_snew_vp: g has to be [3x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPPR6_invdynJ_fixb_reg2_snew_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From invdyn_fixb_NewtonEuler_tauJ_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-05-05 17:08:53
% EndTime: 2019-05-05 17:09:08
% DurationCPUTime: 6.90s
% Computational Cost: add. (29123->448), mult. (66785->642), div. (0->0), fcn. (45962->10), ass. (0->278)
t242 = sin(pkin(9));
t244 = cos(pkin(9));
t246 = sin(qJ(3));
t249 = cos(qJ(3));
t292 = t242 * t249;
t219 = (t244 * t246 + t292) * qJD(1);
t286 = qJD(1) * t249;
t221 = -qJD(1) * t242 * t246 + t244 * t286;
t295 = t221 * t219;
t332 = qJDD(3) - t295;
t335 = t242 * t332;
t334 = t244 * t332;
t279 = qJD(1) * qJD(3);
t268 = t249 * t279;
t277 = t246 * qJDD(1);
t225 = -t268 - t277;
t234 = t249 * qJDD(1);
t269 = t246 * t279;
t226 = t234 - t269;
t192 = t225 * t242 + t226 * t244;
t241 = sin(pkin(10));
t243 = cos(pkin(10));
t181 = qJDD(3) * t241 + t192 * t243;
t200 = -t243 * qJD(3) + t221 * t241;
t298 = t219 * t200;
t141 = -t181 - t298;
t333 = t181 - t298;
t285 = qJD(3) * t219;
t172 = t192 - t285;
t202 = qJD(3) * t241 + t221 * t243;
t168 = t202 * t200;
t191 = -t244 * t225 + t226 * t242;
t325 = -t168 + t191;
t331 = t241 * t325;
t330 = t243 * t325;
t245 = sin(qJ(6));
t248 = cos(qJ(6));
t163 = t248 * t200 + t202 * t245;
t165 = -t200 * t245 + t202 * t248;
t129 = t165 * t163;
t188 = qJDD(6) + t191;
t327 = -t129 + t188;
t329 = t245 * t327;
t328 = t248 * t327;
t265 = -t243 * qJDD(3) + t192 * t241;
t121 = -t163 * qJD(6) + t248 * t181 - t245 * t265;
t214 = qJD(6) + t219;
t150 = t214 * t163;
t326 = -t150 + t121;
t284 = qJD(3) * t221;
t170 = t191 + t284;
t247 = sin(qJ(1));
t250 = cos(qJ(1));
t262 = g(1) * t247 - g(2) * t250;
t259 = qJDD(2) - t262;
t252 = qJD(1) ^ 2;
t314 = qJ(2) * t252;
t257 = t259 - t314;
t320 = pkin(7) + pkin(1);
t255 = -qJDD(1) * t320 + t257;
t195 = t249 * g(3) - t246 * t255;
t258 = qJD(3) * pkin(3) - qJ(4) * t286;
t238 = t246 ^ 2;
t294 = t238 * t252;
t160 = -pkin(3) * t294 + t225 * qJ(4) - qJD(3) * t258 - t195;
t254 = t249 * t255;
t289 = t249 * t252;
t253 = t254 - t226 * qJ(4) + qJDD(3) * pkin(3) + (-pkin(3) * t289 - qJ(4) * t279 + g(3)) * t246;
t123 = -0.2e1 * qJD(4) * t219 + t244 * t160 + t242 * t253;
t266 = t181 * t245 + t248 * t265;
t93 = (qJD(6) - t214) * t165 + t266;
t236 = qJDD(1) * qJ(2);
t263 = g(1) * t250 + g(2) * t247;
t260 = -t236 + t263;
t324 = -pkin(3) * t225 - (qJ(4) * t238 + t320) * t252 + t258 * t286 + qJDD(4) - t260;
t161 = t163 ^ 2;
t162 = t165 ^ 2;
t323 = t200 ^ 2;
t199 = t202 ^ 2;
t213 = t214 ^ 2;
t322 = t219 ^ 2;
t218 = t221 ^ 2;
t321 = 0.2e1 * qJD(4);
t182 = pkin(4) * t219 - qJ(5) * t221;
t251 = qJD(3) ^ 2;
t101 = -pkin(4) * t251 + qJDD(3) * qJ(5) - t182 * t219 + t123;
t278 = qJD(2) * qJD(1);
t235 = 0.2e1 * t278;
t109 = t170 * pkin(4) - t172 * qJ(5) + t235 + t324;
t66 = 0.2e1 * qJD(5) * t202 + t101 * t241 - t243 * t109;
t48 = t325 * pkin(5) + t141 * pkin(8) - t66;
t174 = pkin(5) * t219 - pkin(8) * t202;
t67 = -0.2e1 * qJD(5) * t200 + t243 * t101 + t241 * t109;
t51 = -pkin(5) * t323 - pkin(8) * t265 - t219 * t174 + t67;
t24 = t245 * t51 - t248 * t48;
t25 = t245 * t48 + t248 * t51;
t12 = -t24 * t248 + t245 * t25;
t319 = t12 * t241;
t318 = t12 * t243;
t267 = t160 * t242 - t244 * t253;
t100 = qJDD(5) - t251 * qJ(5) - qJDD(3) * pkin(4) + (t321 + t182) * t221 + t267;
t70 = pkin(5) * t265 - pkin(8) * t323 + t174 * t202 + t100;
t317 = t245 * t70;
t316 = t248 * t70;
t122 = t221 * t321 + t267;
t72 = -t122 * t244 + t123 * t242;
t315 = t249 * t72;
t313 = qJDD(1) * pkin(1);
t312 = t100 * t241;
t311 = t100 * t243;
t117 = t129 + t188;
t310 = t117 * t245;
t309 = t117 * t248;
t143 = t168 + t191;
t308 = t143 * t241;
t307 = t143 * t243;
t276 = -0.2e1 * t278;
t166 = t276 - t324;
t306 = t166 * t242;
t305 = t166 * t244;
t185 = qJDD(3) + t295;
t304 = t185 * t242;
t303 = t185 * t244;
t302 = t191 * t242;
t301 = t202 * t219;
t300 = t214 * t245;
t299 = t214 * t248;
t297 = t219 * t241;
t296 = t219 * t243;
t239 = t249 ^ 2;
t293 = t239 * t252;
t271 = t246 * t289;
t291 = t246 * (qJDD(3) + t271);
t290 = t249 * (qJDD(3) - t271);
t287 = t238 + t239;
t283 = qJD(3) * t242;
t282 = qJD(3) * t244;
t275 = t242 * t129;
t274 = t244 * t129;
t273 = t242 * t168;
t272 = t244 * t168;
t270 = -pkin(4) * t244 - pkin(3);
t13 = t24 * t245 + t248 * t25;
t39 = t241 * t66 + t243 * t67;
t73 = t122 * t242 + t244 * t123;
t38 = t241 * t67 - t243 * t66;
t28 = -t100 * t244 + t242 * t39;
t16 = t246 * (t100 * t242 + t244 * t39) + t249 * t28;
t194 = t246 * g(3) + t254;
t155 = t249 * t194 - t246 * t195;
t137 = t265 - t301;
t171 = -t191 + t284;
t228 = t287 * qJDD(1);
t227 = t234 - 0.2e1 * t269;
t224 = 0.2e1 * t268 + t277;
t215 = -t257 + t313;
t209 = -t218 - t251;
t208 = -t218 + t251;
t207 = t322 - t251;
t206 = t252 * t320 + t260 + t276;
t204 = -t291 + t249 * (-t251 - t293);
t203 = t246 * (-t251 - t294) + t290;
t187 = t244 * t191;
t183 = -t322 - t251;
t177 = -t199 + t322;
t176 = -t322 + t323;
t173 = t192 + t285;
t169 = -t322 - t218;
t167 = -t199 + t323;
t159 = -t199 - t322;
t158 = -t209 * t242 - t303;
t157 = t209 * t244 - t304;
t152 = -t322 - t323;
t149 = -t162 + t213;
t148 = t161 - t213;
t147 = -t199 - t323;
t146 = t183 * t244 - t335;
t145 = t183 * t242 + t334;
t136 = t265 + t301;
t135 = t181 * t243 - t202 * t297;
t134 = t200 * t296 + t241 * t265;
t133 = (-t200 * t243 + t202 * t241) * t219;
t132 = -t162 - t213;
t131 = t171 * t244 + t173 * t242;
t130 = t171 * t242 - t173 * t244;
t128 = t162 - t161;
t127 = t157 * t249 + t158 * t246;
t126 = t176 * t243 - t308;
t125 = -t177 * t241 + t330;
t124 = -t213 - t161;
t120 = -qJD(6) * t165 - t266;
t115 = -t159 * t241 - t307;
t114 = t159 * t243 - t308;
t113 = (-t163 * t248 + t165 * t245) * t214;
t112 = (-t163 * t245 - t165 * t248) * t214;
t111 = t152 * t243 - t331;
t110 = t152 * t241 + t330;
t108 = t145 * t249 + t146 * t246;
t105 = -t137 * t243 - t141 * t241;
t104 = -t136 * t243 - t241 * t333;
t103 = -t137 * t241 + t141 * t243;
t102 = -t161 - t162;
t98 = t130 * t249 + t131 * t246;
t96 = t150 + t121;
t92 = (qJD(6) + t214) * t165 + t266;
t91 = t121 * t248 - t165 * t300;
t90 = t121 * t245 + t165 * t299;
t89 = -t120 * t245 + t163 * t299;
t88 = t120 * t248 + t163 * t300;
t87 = t148 * t248 - t310;
t86 = -t149 * t245 + t328;
t85 = t148 * t245 + t309;
t84 = t149 * t248 + t329;
t83 = t115 * t244 + t242 * t333;
t82 = t115 * t242 - t244 * t333;
t81 = t111 * t244 + t136 * t242;
t80 = t111 * t242 - t136 * t244;
t79 = -t132 * t245 - t309;
t78 = t132 * t248 - t310;
t77 = t105 * t244 + t147 * t242;
t76 = t105 * t242 - t147 * t244;
t75 = t124 * t248 - t329;
t74 = t124 * t245 + t328;
t71 = -t112 * t241 + t113 * t243;
t69 = -qJ(5) * t114 + t311;
t68 = -qJ(5) * t110 + t312;
t64 = t245 * t96 - t248 * t93;
t63 = -t245 * t326 - t248 * t92;
t62 = -t245 * t93 - t248 * t96;
t61 = -t245 * t92 + t248 * t326;
t60 = -t241 * t90 + t243 * t91;
t59 = -t241 * t88 + t243 * t89;
t58 = -t241 * t85 + t243 * t87;
t57 = -t241 * t84 + t243 * t86;
t56 = t246 * t83 + t249 * t82;
t55 = t246 * t81 + t249 * t80;
t54 = -t241 * t78 + t243 * t79;
t53 = t241 * t79 + t243 * t78;
t52 = t246 * t77 + t249 * t76;
t50 = -pkin(4) * t114 + t67;
t49 = -pkin(4) * t110 + t66;
t46 = -t241 * t74 + t243 * t75;
t45 = t241 * t75 + t243 * t74;
t44 = -pkin(8) * t78 + t316;
t43 = t246 * t73 + t315;
t42 = -pkin(8) * t74 + t317;
t41 = t242 * t326 + t244 * t54;
t40 = t242 * t54 - t244 * t326;
t37 = t242 * t92 + t244 * t46;
t36 = t242 * t46 - t244 * t92;
t35 = -pkin(5) * t326 + pkin(8) * t79 + t317;
t34 = -pkin(5) * t92 + pkin(8) * t75 - t316;
t33 = -t241 * t62 + t243 * t64;
t32 = -t241 * t61 + t243 * t63;
t31 = t241 * t64 + t243 * t62;
t30 = -qJ(5) * t103 - t38;
t27 = t102 * t242 + t244 * t33;
t26 = -t102 * t244 + t242 * t33;
t22 = -pkin(4) * t31 - pkin(5) * t62;
t21 = t246 * t41 + t249 * t40;
t20 = t246 * t37 + t249 * t36;
t19 = -pkin(4) * t53 - pkin(5) * t78 + t25;
t18 = -qJ(5) * t53 - t241 * t35 + t243 * t44;
t17 = -pkin(4) * t45 - pkin(5) * t74 + t24;
t15 = -qJ(5) * t45 - t241 * t34 + t243 * t42;
t14 = t246 * t27 + t249 * t26;
t11 = -pkin(5) * t70 + pkin(8) * t13;
t10 = -pkin(8) * t62 - t12;
t9 = -pkin(5) * t102 + pkin(8) * t64 + t13;
t8 = t13 * t243 - t319;
t7 = t13 * t241 + t318;
t6 = t242 * t70 + t244 * t8;
t5 = t242 * t8 - t244 * t70;
t4 = -qJ(5) * t31 + t10 * t243 - t241 * t9;
t3 = -pkin(4) * t7 - pkin(5) * t12;
t2 = -pkin(8) * t318 - qJ(5) * t7 - t11 * t241;
t1 = t246 * t6 + t249 * t5;
t23 = [0, 0, 0, 0, 0, qJDD(1), t262, t263, 0, 0, qJDD(1), 0, 0, 0, 0, 0, 0, t259 - 0.2e1 * t313, t235 + 0.2e1 * t236 - t263, pkin(1) * t215 + qJ(2) * (-pkin(1) * t252 + t235 - t260), (t226 - t269) * t249, -t224 * t249 - t227 * t246, t290 - t246 * (t251 - t293), (-t225 + t268) * t246, t249 * (-t251 + t294) - t291, 0, qJ(2) * t224 - t203 * t320 - t206 * t246, qJ(2) * t227 - t204 * t320 - t206 * t249, t228 * t320 - t287 * t314 - t155, -qJ(2) * t206 - t155 * t320, t249 * (t192 * t244 - t221 * t283) - t246 * (t192 * t242 + t221 * t282), t249 * (-t170 * t244 - t172 * t242) - t246 * (-t170 * t242 + t172 * t244), t249 * (-t208 * t242 + t334) - t246 * (t208 * t244 + t335), t249 * (t219 * t282 + t302) - t246 * (t219 * t283 - t187), t249 * (t207 * t244 - t304) - t246 * (t207 * t242 + t303), (t249 * (-t219 * t244 + t221 * t242) - t246 * (-t219 * t242 - t221 * t244)) * qJD(3), t249 * (-qJ(4) * t145 - t306) - t246 * (-pkin(3) * t170 + qJ(4) * t146 + t305) + qJ(2) * t170 - t320 * t108, t249 * (-qJ(4) * t157 - t305) - t246 * (-pkin(3) * t172 + qJ(4) * t158 - t306) + qJ(2) * t172 - t320 * t127, t249 * (-qJ(4) * t130 - t72) - t246 * (-pkin(3) * t169 + qJ(4) * t131 + t73) + qJ(2) * t169 - t320 * t98, -qJ(4) * t315 - t246 * (pkin(3) * t166 + qJ(4) * t73) - qJ(2) * t166 - t320 * t43, t249 * (t135 * t244 + t273) - t246 * (t135 * t242 - t272), t249 * (t104 * t244 - t167 * t242) - t246 * (t104 * t242 + t167 * t244), t249 * (t125 * t244 - t141 * t242) - t246 * (t125 * t242 + t141 * t244), t249 * (t134 * t244 - t273) - t246 * (t134 * t242 + t272), t249 * (t126 * t244 - t137 * t242) - t246 * (t126 * t242 + t137 * t244), t249 * (t133 * t244 + t302) - t246 * (t133 * t242 - t187), t249 * (-qJ(4) * t80 - t242 * t49 + t244 * t68) - t246 * (-pkin(3) * t110 + qJ(4) * t81 + t242 * t68 + t244 * t49) + qJ(2) * t110 - t320 * t55, t249 * (-qJ(4) * t82 - t242 * t50 + t244 * t69) - t246 * (-pkin(3) * t114 + qJ(4) * t83 + t242 * t69 + t244 * t50) + qJ(2) * t114 - t320 * t56, t249 * (-qJ(4) * t76 + t244 * t30) - t246 * (qJ(4) * t77 + t242 * t30) - t320 * t52 + (pkin(4) * t292 - t246 * t270 + qJ(2)) * t103, (t249 * (pkin(4) * t242 - qJ(5) * t244) - t246 * (-qJ(5) * t242 + t270) + qJ(2)) * t38 + (-t320 - qJ(4)) * t16, t249 * (t244 * t60 + t275) - t246 * (t242 * t60 - t274), t249 * (t128 * t242 + t244 * t32) - t246 * (-t128 * t244 + t242 * t32), t249 * (t242 * t96 + t244 * t57) - t246 * (t242 * t57 - t244 * t96), t249 * (t244 * t59 - t275) - t246 * (t242 * t59 + t274), t249 * (-t242 * t93 + t244 * t58) - t246 * (t242 * t58 + t244 * t93), t249 * (t188 * t242 + t244 * t71) - t246 * (-t188 * t244 + t242 * t71), t249 * (-qJ(4) * t36 + t15 * t244 - t17 * t242) - t246 * (-pkin(3) * t45 + qJ(4) * t37 + t15 * t242 + t17 * t244) + qJ(2) * t45 - t320 * t20, t249 * (-qJ(4) * t40 + t18 * t244 - t19 * t242) - t246 * (-pkin(3) * t53 + qJ(4) * t41 + t18 * t242 + t19 * t244) + qJ(2) * t53 - t320 * t21, t249 * (-qJ(4) * t26 - t22 * t242 + t244 * t4) - t246 * (-pkin(3) * t31 + qJ(4) * t27 + t22 * t244 + t242 * t4) + qJ(2) * t31 - t320 * t14, t249 * (-qJ(4) * t5 + t2 * t244 - t242 * t3) - t246 * (-pkin(3) * t7 + qJ(4) * t6 + t2 * t242 + t244 * t3) + qJ(2) * t7 - t320 * t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJDD(1), -t252, -t215, 0, 0, 0, 0, 0, 0, t203, t204, -t228, t155, 0, 0, 0, 0, 0, 0, t108, t127, t98, t43, 0, 0, 0, 0, 0, 0, t55, t56, t52, t16, 0, 0, 0, 0, 0, 0, t20, t21, t14, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t271, (-t238 + t239) * t252, t234, -t271, -t277, qJDD(3), t194, t195, 0, 0, t295, t218 - t322, t173, -t295, t171, qJDD(3), pkin(3) * t145 - t122, pkin(3) * t157 - t123, pkin(3) * t130, pkin(3) * t72, t181 * t241 + t202 * t296, -t136 * t241 + t243 * t333, t177 * t243 + t331, t200 * t297 - t243 * t265, t176 * t241 + t307, (-t200 * t241 - t202 * t243) * t219, pkin(3) * t80 - pkin(4) * t136 + qJ(5) * t111 - t311, pkin(3) * t82 - pkin(4) * t333 + qJ(5) * t115 + t312, pkin(3) * t76 - pkin(4) * t147 + qJ(5) * t105 + t39, pkin(3) * t28 - pkin(4) * t100 + qJ(5) * t39, t241 * t91 + t243 * t90, t241 * t63 + t243 * t61, t241 * t86 + t243 * t84, t241 * t89 + t243 * t88, t241 * t87 + t243 * t85, t112 * t243 + t113 * t241, pkin(3) * t36 - pkin(4) * t92 + qJ(5) * t46 + t241 * t42 + t243 * t34, pkin(3) * t40 - pkin(4) * t326 + qJ(5) * t54 + t241 * t44 + t243 * t35, pkin(3) * t26 - pkin(4) * t102 + qJ(5) * t33 + t10 * t241 + t243 * t9, pkin(3) * t5 - pkin(4) * t70 - pkin(8) * t319 + qJ(5) * t8 + t11 * t243; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t170, t172, t169, -t166, 0, 0, 0, 0, 0, 0, t110, t114, t103, t38, 0, 0, 0, 0, 0, 0, t45, t53, t31, t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t136, t333, t147, t100, 0, 0, 0, 0, 0, 0, t92, t326, t102, t70; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t129, t128, t96, -t129, -t93, t188, -t24, -t25, 0, 0;];
tauJ_reg  = t23;
