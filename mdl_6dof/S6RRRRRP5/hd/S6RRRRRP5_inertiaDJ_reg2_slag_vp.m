% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRRRRP5
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d2,d3,d4,d5]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-10 01:25
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRRRP5_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRRRP5_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRRRP5_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RRRRRP5_inertiaDJ_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-10 01:23:04
% EndTime: 2019-03-10 01:23:22
% DurationCPUTime: 7.17s
% Computational Cost: add. (11323->440), mult. (27143->741), div. (0->0), fcn. (24828->8), ass. (0->208)
t288 = sin(qJ(4));
t233 = t288 * qJD(4);
t234 = t288 * qJD(3);
t301 = t234 + t233;
t290 = cos(qJ(4));
t235 = t290 * qJD(4);
t300 = qJD(3) * t290 + t235;
t171 = cos(qJ(3));
t172 = cos(qJ(2));
t277 = t171 * t172;
t153 = pkin(7) * t277;
t169 = sin(qJ(3));
t170 = sin(qJ(2));
t285 = t169 * pkin(7);
t251 = -pkin(3) - t285;
t291 = -pkin(9) - pkin(8);
t254 = t291 * t172;
t284 = t171 * pkin(2);
t283 = t172 * pkin(2);
t294 = t170 * t291 - pkin(1) - t283;
t182 = (-t169 * t294 - t153) * qJD(3) + (t171 * t254 + (-t251 + t284) * t170) * qJD(2);
t200 = t294 * t171;
t163 = t170 * pkin(7);
t260 = t171 * t163;
t261 = t172 * t285;
t287 = pkin(2) * t170;
t183 = (t200 - t261) * qJD(3) + (-t260 + (t254 + t287) * t169) * qJD(2);
t186 = t172 * t251 + t200;
t215 = -pkin(8) * t170 - t283;
t208 = pkin(1) - t215;
t113 = -t169 * t208 + t153;
t278 = t169 * t170;
t207 = pkin(9) * t278 - t113;
t296 = -t186 * t288 + t207 * t290;
t299 = qJD(4) * t296 + t182 * t290 - t183 * t288;
t63 = t186 * t290 + t207 * t288;
t269 = qJD(3) * t171;
t271 = qJD(2) * t172;
t298 = t169 * t271 + t170 * t269;
t248 = t288 * t171;
t122 = t169 * t290 + t248;
t238 = qJD(2) * t288;
t216 = t172 * t238;
t239 = qJD(2) * t290;
t217 = t172 * t239;
t249 = t290 * t171;
t222 = t170 * t249;
t226 = t169 * t217 + t171 * t216 + (qJD(3) + qJD(4)) * t222;
t295 = t169 * t301;
t185 = -t170 * t295 + t226;
t223 = t291 * t288;
t123 = t169 * t223;
t106 = -t249 * t291 + t123;
t224 = t291 * t290;
t70 = -t106 * qJD(4) + (t171 * t224 - t123) * qJD(3);
t225 = t169 * t300 + t171 * t301;
t168 = sin(qJ(5));
t194 = t169 * t216 + t170 * t225 - t171 * t217;
t289 = cos(qJ(5));
t156 = t288 * t169;
t115 = -t156 * t170 + t222;
t276 = t122 * t170;
t79 = t115 * t289 - t168 * t276;
t32 = qJD(5) * t79 - t168 * t194 + t185 * t289;
t213 = t289 * t276;
t78 = t115 * t168 + t213;
t297 = qJ(6) * t32 + qJD(6) * t78;
t164 = t169 ^ 2;
t166 = t171 ^ 2;
t274 = t164 - t166;
t232 = qJD(3) * t274;
t146 = t169 * t234;
t293 = t169 * t233 - t171 * t300 + t146;
t211 = t169 * t224;
t193 = -t248 * t291 - t211;
t69 = -(t171 * t223 + t211) * qJD(3) + t193 * qJD(4);
t286 = t168 * pkin(4);
t237 = qJD(5) * t289;
t227 = pkin(4) * t237;
t282 = -t227 * t78 - t286 * t32;
t212 = t156 - t249;
t204 = t289 * t212;
t101 = t122 * t168 + t204;
t205 = t168 * t212;
t44 = -qJD(5) * t205 + t122 * t237 - t168 * t293 + t225 * t289;
t281 = -t101 * t227 - t286 * t44;
t51 = -pkin(4) * t172 - pkin(10) * t115 + t63;
t55 = -pkin(10) * t276 - t296;
t28 = t168 * t51 + t289 * t55;
t187 = -t122 * pkin(10) - t193;
t80 = t168 * t187;
t86 = -pkin(10) * t212 + t106;
t54 = t289 * t86 + t80;
t218 = t289 * t288;
t184 = (qJD(4) + qJD(5)) * (-t168 * t290 - t218) * pkin(3);
t267 = qJD(5) * t168;
t255 = pkin(4) * t267;
t94 = t184 - t255;
t280 = t94 * t172;
t259 = t290 * pkin(3);
t219 = t259 + pkin(4);
t119 = pkin(3) * t218 + t168 * t219;
t136 = t289 * t219;
t229 = pkin(3) * t235;
t93 = -qJD(5) * t136 - t289 * t229 + (qJD(5) * t288 + t233) * t168 * pkin(3);
t279 = t119 * t227 - t286 * t93;
t125 = pkin(3) * t278 + t163;
t165 = t170 ^ 2;
t273 = -t172 ^ 2 + t165;
t162 = qJD(2) * t170;
t272 = qJD(2) * t171;
t270 = qJD(3) * t169;
t268 = qJD(3) * t172;
t266 = -0.2e1 * pkin(1) * qJD(2);
t265 = -0.2e1 * pkin(2) * qJD(3);
t256 = pkin(4) * t162;
t173 = pkin(10) * t194 + t256 + t299;
t24 = -qJD(4) * t63 - t288 * t182 - t290 * t183;
t181 = -pkin(10) * t185 - t24;
t264 = -t168 * t173 - t181 * t289 - t237 * t51;
t263 = -t119 * t32 + t78 * t93 - t79 * t94;
t102 = t122 * t289 - t205;
t262 = t101 * t93 - t102 * t94 - t119 * t44;
t258 = t289 * pkin(4);
t257 = t288 * pkin(3);
t160 = pkin(3) * t270;
t159 = pkin(7) * t271;
t253 = t79 * t267;
t108 = pkin(3) * t298 + t159;
t158 = -t171 * pkin(3) - pkin(2);
t247 = t169 * t268;
t245 = t171 * t268;
t244 = t102 * t267;
t242 = t169 * t269;
t241 = t170 * t271;
t240 = t171 * t271;
t27 = -t168 * t55 + t289 * t51;
t81 = t289 * t187;
t53 = -t168 * t86 + t81;
t154 = -0.2e1 * t255;
t231 = t273 * qJD(2);
t230 = 0.2e1 * t241;
t228 = pkin(3) * t233;
t221 = t170 * t240;
t220 = t165 * t242;
t214 = -pkin(8) * t172 + t287;
t196 = t171 * t208 + t261;
t209 = -t113 * t169 + t171 * t196;
t118 = -t168 * t257 + t136;
t103 = pkin(4) * t276 + t125;
t206 = t169 * t214;
t3 = t267 * t55 + t264;
t177 = pkin(10) * t293 + t70;
t179 = -pkin(10) * t225 - t69;
t13 = -qJD(5) * t81 - t168 * t177 - t179 * t289 + t267 * t86;
t91 = pkin(4) * t225 + t160;
t114 = pkin(4) * t212 + t158;
t195 = -t119 * t162 - t172 * t93 + t3;
t191 = t172 * t227 + (qJD(5) * t55 - t256) * t168 + t264;
t74 = t196 * qJD(3) + (-t206 + t260) * qJD(2);
t75 = -t113 * qJD(3) + (pkin(7) * t278 + t171 * t214) * qJD(2);
t188 = qJD(3) * t209 - t169 * t75 - t171 * t74;
t56 = pkin(4) * t185 + t108;
t180 = -t168 * t181 + t173 * t289;
t178 = -t237 * t55 - t267 * t51 + t180;
t31 = qJD(5) * t213 + t115 * t267 + t168 * t185 + t194 * t289;
t176 = t31 * qJ(6) - t79 * qJD(6) + t178;
t161 = pkin(5) * t162;
t1 = t161 + t176;
t14 = -qJD(5) * t80 - t168 * t179 + t177 * t289 - t237 * t86;
t157 = t258 + pkin(5);
t155 = -0.2e1 * t227;
t145 = -0.2e1 * t241;
t142 = t172 * t255;
t116 = pkin(5) + t118;
t107 = -t169 * t240 + t170 * t232;
t89 = 0.2e1 * t94;
t88 = 0.2e1 * t93;
t84 = -t227 + t93;
t83 = t184 + t154;
t72 = t119 * t93;
t71 = pkin(5) * t101 + t114;
t59 = pkin(5) * t78 + t103;
t43 = qJD(5) * t204 + t122 * t267 + t168 * t225 + t289 * t293;
t39 = -qJ(6) * t101 + t54;
t38 = -qJ(6) * t102 + t53;
t37 = -0.2e1 * t102 * t43;
t36 = 0.2e1 * t101 * t44;
t35 = pkin(5) * t44 + t91;
t34 = -t101 * t162 + t172 * t44;
t33 = t102 * t162 + t172 * t43;
t23 = -0.2e1 * t79 * t31;
t22 = 0.2e1 * t78 * t32;
t21 = -0.2e1 * t162 * t78 + 0.2e1 * t172 * t32;
t20 = 0.2e1 * t162 * t79 + 0.2e1 * t172 * t31;
t19 = -qJ(6) * t78 + t28;
t18 = -pkin(5) * t172 - qJ(6) * t79 + t27;
t17 = t32 * pkin(5) + t56;
t16 = 0.2e1 * t101 * t43 - 0.2e1 * t102 * t44;
t10 = t101 * t32 + t44 * t78;
t9 = -t102 * t31 - t43 * t79;
t8 = t43 * qJ(6) - t102 * qJD(6) + t14;
t7 = qJ(6) * t44 + qJD(6) * t101 + t13;
t6 = 0.2e1 * t31 * t78 - 0.2e1 * t32 * t79;
t5 = t101 * t31 - t102 * t32 + t43 * t78 - t44 * t79;
t4 = -qJD(5) * t28 + t180;
t2 = t3 + t297;
t11 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t230, -0.2e1 * t231, 0, t145, 0, 0, t170 * t266, t172 * t266, 0, 0, 0.2e1 * t166 * t241 - 0.2e1 * t220, 0.2e1 * t165 * t232 - 0.4e1 * t169 * t221, 0.2e1 * t170 * t247 + 0.2e1 * t272 * t273, 0.2e1 * t164 * t241 + 0.2e1 * t220, -0.2e1 * t169 * t231 + 0.2e1 * t170 * t245, t145, -0.2e1 * t196 * t162 - 0.2e1 * t172 * t75 + 0.2e1 * (t165 * t269 + t169 * t230) * pkin(7), -0.2e1 * t113 * t162 - 0.2e1 * t172 * t74 + 0.2e1 * (-t165 * t270 + 0.2e1 * t221) * pkin(7), 0.2e1 * t209 * t271 + 0.2e1 * (t169 * t74 - t171 * t75 + (-t113 * t171 - t169 * t196) * qJD(3)) * t170, 0.2e1 * pkin(7) ^ 2 * t241 - 0.2e1 * t113 * t74 - 0.2e1 * t196 * t75, -0.2e1 * t115 * t194, -0.2e1 * t115 * t185 + 0.2e1 * t194 * t276, 0.2e1 * t115 * t162 + 0.2e1 * t172 * t194, 0.2e1 * t276 * t185, 0.2e1 * t226 * t172 + 0.2e1 * (-qJD(2) * t276 - t172 * t295) * t170, t145, -0.2e1 * t299 * t172 + 0.2e1 * t108 * t276 + 0.2e1 * t125 * t226 + 0.2e1 * (t63 * qJD(2) - t125 * t295) * t170, 0.2e1 * t108 * t115 - 0.2e1 * t125 * t194 + 0.2e1 * t162 * t296 - 0.2e1 * t24 * t172, -0.2e1 * t115 * t299 + 0.2e1 * t185 * t296 + 0.2e1 * t194 * t63 + 0.2e1 * t24 * t276, 0.2e1 * t108 * t125 + 0.2e1 * t24 * t296 + 0.2e1 * t299 * t63, t23, t6, t20, t22, t21, t145, 0.2e1 * t103 * t32 + 0.2e1 * t162 * t27 - 0.2e1 * t172 * t4 + 0.2e1 * t56 * t78, -0.2e1 * t103 * t31 - 0.2e1 * t162 * t28 - 0.2e1 * t172 * t3 + 0.2e1 * t56 * t79, 0.2e1 * t27 * t31 - 0.2e1 * t28 * t32 + 0.2e1 * t3 * t78 - 0.2e1 * t4 * t79, 0.2e1 * t103 * t56 + 0.2e1 * t27 * t4 - 0.2e1 * t28 * t3, t23, t6, t20, t22, t21, t145, -0.2e1 * t1 * t172 + 0.2e1 * t162 * t18 + 0.2e1 * t17 * t78 + 0.2e1 * t32 * t59, -0.2e1 * t162 * t19 + 0.2e1 * t17 * t79 - 0.2e1 * t172 * t2 - 0.2e1 * t31 * t59, -0.2e1 * t1 * t79 + 0.2e1 * t18 * t31 - 0.2e1 * t19 * t32 + 0.2e1 * t2 * t78, 0.2e1 * t1 * t18 + 0.2e1 * t17 * t59 - 0.2e1 * t19 * t2; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t271, 0, -t162, 0, -t159, pkin(7) * t162, 0, 0, -t107, -0.4e1 * t170 * t242 - t271 * t274, t162 * t169 - t245, t107, t170 * t272 + t247, 0 (pkin(8) * t277 + (-t284 + t285) * t170) * qJD(3) + (t169 * t215 - t153) * qJD(2) (t206 + t260) * qJD(3) + (t171 * t215 + t261) * qJD(2), t188, -pkin(2) * t159 + pkin(8) * t188, -t115 * t293 - t122 * t194, -t115 * t225 - t122 * t185 + t194 * t212 + t276 * t293, t122 * t162 + t172 * t293, t185 * t212 + t225 * t276, -t162 * t212 + t172 * t225, 0, t108 * t212 + t125 * t225 + t158 * t185 + t160 * t276 - t162 * t193 - t70 * t172, -t106 * t162 + t108 * t122 + t115 * t160 - t125 * t293 - t158 * t194 - t69 * t172, -t106 * t185 - t70 * t115 - t122 * t299 - t193 * t194 + t212 * t24 + t225 * t296 + t276 * t69 + t293 * t63, -t106 * t24 + t108 * t158 + t125 * t160 - t193 * t299 + t296 * t69 + t63 * t70, t9, t5, t33, t10, t34, 0, t101 * t56 + t103 * t44 + t114 * t32 - t14 * t172 + t162 * t53 + t78 * t91, t102 * t56 - t103 * t43 - t114 * t31 - t13 * t172 - t162 * t54 + t79 * t91, t101 * t3 - t102 * t4 + t13 * t78 - t14 * t79 + t27 * t43 - t28 * t44 + t31 * t53 - t32 * t54, t103 * t91 + t114 * t56 - t13 * t28 + t14 * t27 - t3 * t54 + t4 * t53, t9, t5, t33, t10, t34, 0, t101 * t17 + t162 * t38 - t172 * t8 + t32 * t71 + t35 * t78 + t44 * t59, t102 * t17 - t162 * t39 - t172 * t7 - t31 * t71 + t35 * t79 - t43 * t59, -t1 * t102 + t101 * t2 + t18 * t43 - t19 * t44 + t31 * t38 - t32 * t39 + t7 * t78 - t79 * t8, t1 * t38 + t17 * t71 + t18 * t8 - t19 * t7 - t2 * t39 + t35 * t59; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t242, -0.2e1 * t232, 0, -0.2e1 * t242, 0, 0, t169 * t265, t171 * t265, 0, 0, -0.2e1 * t122 * t293, -0.2e1 * t122 * t225 + 0.2e1 * t212 * t293, 0, 0.2e1 * t212 * t225, 0, 0, 0.2e1 * t158 * t225 + 0.2e1 * t160 * t212, 0.2e1 * t122 * t160 - 0.2e1 * t158 * t293, -0.2e1 * t106 * t225 - 0.2e1 * t70 * t122 - 0.2e1 * t193 * t293 + 0.2e1 * t212 * t69, -0.2e1 * t106 * t69 + 0.2e1 * t158 * t160 - 0.2e1 * t193 * t70, t37, t16, 0, t36, 0, 0, 0.2e1 * t101 * t91 + 0.2e1 * t114 * t44, 0.2e1 * t102 * t91 - 0.2e1 * t114 * t43, 0.2e1 * t101 * t13 - 0.2e1 * t102 * t14 + 0.2e1 * t43 * t53 - 0.2e1 * t44 * t54, 0.2e1 * t114 * t91 - 0.2e1 * t13 * t54 + 0.2e1 * t14 * t53, t37, t16, 0, t36, 0, 0, 0.2e1 * t101 * t35 + 0.2e1 * t44 * t71, 0.2e1 * t102 * t35 - 0.2e1 * t43 * t71, 0.2e1 * t101 * t7 - 0.2e1 * t102 * t8 + 0.2e1 * t38 * t43 - 0.2e1 * t39 * t44, 0.2e1 * t35 * t71 + 0.2e1 * t38 * t8 - 0.2e1 * t39 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t170 * t270 + t240, 0, -t298, t162, t75, t74, 0, 0, 0, 0, -t194, 0, -t185, t162, pkin(3) * t170 * t239 + t172 * t228 + t299 (-t170 * t238 + t172 * t235) * pkin(3) + t24 (t288 * (t146 * t170 - t226) + t290 * t194 + (-t290 * t276 + (t278 * t288 + t115) * t288) * qJD(4)) * pkin(3) (-t288 * t24 + t290 * t299 + (-t288 * t63 - t290 * t296) * qJD(4)) * pkin(3), 0, 0, -t31, 0, -t32, t162, t118 * t162 + t178 - t280, t195, t118 * t31 + t263, t118 * t4 - t119 * t3 + t27 * t94 - t28 * t93, 0, 0, -t31, 0, -t32, t162, t116 * t162 + t1 - t280, t195 + t297, t116 * t31 + t263, t1 * t116 - t119 * t2 + t18 * t94 - t19 * t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t269, 0, -t270, 0, -pkin(8) * t269, pkin(8) * t270, 0, 0, 0, 0, -t293, 0, -t225, 0, t70, t69, t122 * t228 - t212 * t229 - t225 * t257 + t259 * t293 (-t288 * t69 + t290 * t70 + (t106 * t290 + t193 * t288) * qJD(4)) * pkin(3), 0, 0, -t43, 0, -t44, 0, t14, t13, t118 * t43 + t262, t118 * t14 - t119 * t13 + t53 * t94 - t54 * t93, 0, 0, -t43, 0, -t44, 0, t8, t7, t116 * t43 + t262, t116 * t8 - t119 * t7 + t38 * t94 - t39 * t93; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t228, -0.2e1 * t229, 0, 0, 0, 0, 0, 0, 0, 0, t89, t88, 0, 0.2e1 * t118 * t94 - 0.2e1 * t72, 0, 0, 0, 0, 0, 0, t89, t88, 0, 0.2e1 * t116 * t94 - 0.2e1 * t72; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t194, 0, -t185, t162, t299, t24, 0, 0, 0, 0, -t31, 0, -t32, t162, t256 * t289 + t142 + t178, t191 (t289 * t31 + t253) * pkin(4) + t282 (t289 * t4 - t168 * t3 + (-t168 * t27 + t28 * t289) * qJD(5)) * pkin(4), 0, 0, -t31, 0, -t32, t162, t157 * t162 + t1 + t142, t191 + t297, pkin(4) * t253 + t157 * t31 + t282, t1 * t157 + (-t168 * t2 + (-t168 * t18 + t19 * t289) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t293, 0, -t225, 0, t70, t69, 0, 0, 0, 0, -t43, 0, -t44, 0, t14, t13 (t289 * t43 + t244) * pkin(4) + t281 (t289 * t14 - t13 * t168 + (-t168 * t53 + t289 * t54) * qJD(5)) * pkin(4), 0, 0, -t43, 0, -t44, 0, t8, t7, pkin(4) * t244 + t157 * t43 + t281, t8 * t157 + (-t168 * t7 + (-t168 * t38 + t289 * t39) * qJD(5)) * pkin(4); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t228, -t229, 0, 0, 0, 0, 0, 0, 0, 0, t83, t84, 0 (-t118 * t267 + t289 * t94) * pkin(4) + t279, 0, 0, 0, 0, 0, 0, t83, t84, 0, -t116 * t255 + t157 * t94 + t279; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t154, t155, 0, 0, 0, 0, 0, 0, 0, 0, t154, t155, 0, 0.2e1 * (t258 - t157) * t255; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t31, 0, -t32, t162, t4, t3, 0, 0, 0, 0, -t31, 0, -t32, t162, 0.2e1 * t161 + t176, t2, t31 * pkin(5), t1 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t43, 0, -t44, 0, t14, t13, 0, 0, 0, 0, -t43, 0, -t44, 0, t8, t7, t43 * pkin(5), t8 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t94, t93, 0, 0, 0, 0, 0, 0, 0, 0, t94, t93, 0, t94 * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t255, -t227, 0, 0, 0, 0, 0, 0, 0, 0, -t255, -t227, 0, -pkin(5) * t255; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t32, -t31, 0, t17; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t44, -t43, 0, t35; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t11;