% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RPRPRR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [13x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,alpha3,d1,d3,d5,d6,theta2,theta4]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 04:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RPRPRR11_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(13,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRR11_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRR11_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [13 1]), ...
  'S6RPRPRR11_inertiaDJ_reg2_slag_vp: pkin has to be [13x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:15:13
% EndTime: 2019-03-09 04:15:37
% DurationCPUTime: 9.61s
% Computational Cost: add. (18759->453), mult. (54072->829), div. (0->0), fcn. (59081->14), ass. (0->210)
t101 = cos(pkin(12));
t241 = cos(pkin(7));
t261 = sin(qJ(3));
t191 = t241 * t261;
t263 = cos(qJ(3));
t97 = sin(pkin(12));
t146 = t101 * t191 + t263 * t97;
t242 = cos(pkin(6));
t98 = sin(pkin(7));
t210 = t98 * t242;
t169 = t261 * t210;
t99 = sin(pkin(6));
t269 = t146 * t99 + t169;
t279 = t269 * qJD(3);
t278 = 0.2e1 * t279;
t206 = t101 * t241;
t69 = -t263 * t210 + (-t263 * t206 + t261 * t97) * t99;
t47 = t69 * t278;
t240 = qJD(2) * t99;
t272 = -t263 * t101 + t97 * t191;
t281 = t240 * t272;
t218 = pkin(1) * t242;
t152 = pkin(2) * t242 + t101 * t218;
t132 = (-pkin(9) * t241 - qJ(2)) * t99 * t97 + t152;
t219 = -pkin(2) * t101 - pkin(1);
t254 = t97 * t98;
t155 = (-pkin(9) * t254 + t219) * t99;
t280 = t132 * t241 + t98 * t155;
t100 = cos(pkin(13));
t253 = qJ(4) + pkin(10);
t262 = cos(qJ(5));
t193 = t253 * t262;
t260 = sin(qJ(5));
t208 = t260 * qJD(4);
t209 = t262 * qJD(4);
t211 = qJD(5) * t260;
t83 = t253 * t100;
t96 = sin(pkin(13));
t273 = (-qJD(5) * t193 - t208) * t96 + t100 * t209 - t211 * t83;
t79 = -t262 * t100 + t260 * t96;
t250 = t101 * t99;
t161 = -t241 * t242 + t98 * t250;
t149 = t100 * t161 + t269 * t96;
t129 = t97 * t218 + qJ(2) * t250 + (t206 * t99 + t210) * pkin(9);
t42 = t263 * t129 + t280 * t261;
t115 = -qJ(4) * t161 + t42;
t116 = t69 * pkin(3) - qJ(4) * t269 - t132 * t98 + t155 * t241;
t24 = t100 * t115 + t116 * t96;
t108 = -pkin(10) * t149 + t24;
t23 = t100 * t116 - t115 * t96;
t52 = t100 * t269 - t161 * t96;
t110 = -t69 * pkin(4) + t52 * pkin(10) - t23;
t12 = t262 * t108 - t260 * t110;
t90 = t96 ^ 2;
t93 = t100 ^ 2;
t277 = t90 + t93;
t227 = t98 * t261;
t73 = t100 * t241 - t227 * t96;
t74 = t100 * t227 + t241 * t96;
t58 = t260 * t74 - t262 * t73;
t151 = t58 * qJD(5);
t270 = t261 * t129 - t280 * t263;
t38 = pkin(3) * t161 + t270;
t27 = pkin(4) * t149 + t38;
t136 = t262 * t149;
t39 = t260 * t52 + t136;
t40 = -t149 * t260 + t262 * t52;
t114 = t39 * pkin(5) - t40 * pkin(11) + t27;
t154 = t161 * qJD(4);
t230 = qJD(2) * t254;
t205 = t99 * t230;
t66 = t69 * qJD(3);
t243 = t66 * t100;
t244 = t66 * qJ(4);
t36 = qJD(3) * t270 + t281;
t105 = t96 * (-t154 - t36) - t100 * (pkin(3) * t279 - qJD(4) * t269 + t205 + t244) - pkin(10) * t243 - pkin(4) * t279;
t128 = pkin(3) * t269;
t113 = (-t100 * t270 + t128 * t96) * qJD(3);
t139 = t146 * qJD(4);
t160 = qJD(4) * t169;
t106 = t100 * (-t154 - t281) + (-t160 + (-t139 + t230) * t99 + t253 * t66) * t96 + t113;
t275 = t260 * t108 + t262 * t110;
t5 = qJD(5) * t275 + t105 * t260 - t106 * t262;
t276 = -pkin(11) * t279 - qJD(6) * t114 + t5;
t157 = -t100 * t260 - t262 * t96;
t89 = -pkin(4) * t100 - pkin(3);
t156 = pkin(5) * t79 + pkin(11) * t157 + t89;
t274 = -qJD(6) * t156 - t273;
t228 = t98 * t263;
t200 = qJD(3) * t228;
t271 = -t69 * t200 + t66 * t228;
t102 = sin(qJ(6));
t94 = t102 ^ 2;
t103 = cos(qJ(6));
t95 = t103 ^ 2;
t251 = t94 - t95;
t207 = qJD(6) * t251;
t59 = t260 * t73 + t262 * t74;
t159 = t102 * t59 + t103 * t228;
t198 = t263 * t260;
t199 = t263 * t262;
t137 = -t100 * t199 + t198 * t96;
t133 = t98 * t137;
t117 = -t133 * qJD(3) - t151;
t213 = qJD(3) * t261;
t86 = t98 * t213;
t34 = qJD(6) * t159 - t102 * t86 - t103 * t117;
t203 = t102 * t228;
t236 = qJD(6) * t103;
t35 = qJD(6) * t203 - t102 * t117 + t103 * t86 - t236 * t59;
t54 = t103 * t59 - t203;
t268 = qJD(6) * (-t102 * t159 - t103 * t54) + t34 * t102 - t103 * t35;
t212 = qJD(5) * t262;
t75 = -t100 * t212 + t211 * t96;
t76 = t157 * qJD(5);
t197 = -pkin(5) * t76 + pkin(11) * t75;
t237 = qJD(6) * t102;
t192 = t253 * t260;
t71 = -t192 * t96 + t262 * t83;
t30 = -t102 * t197 + t103 * t274 + t237 * t71;
t31 = t102 * t274 + t103 * t197 - t236 * t71;
t44 = -t102 * t71 + t103 * t156;
t45 = t102 * t156 + t103 * t71;
t267 = t30 * t102 - t103 * t31 + (t102 * t44 - t103 * t45) * qJD(6);
t10 = pkin(11) * t69 + t12;
t124 = qJD(5) * t136 + t52 * t211 - t66 * t79;
t26 = qJD(5) * t40 + t157 * t66;
t257 = t66 * t96;
t171 = t241 * t97 * t240;
t37 = t101 * t240 * t261 + qJD(3) * t42 + t171 * t263;
t28 = -pkin(4) * t257 + t37;
t111 = t26 * pkin(5) + pkin(11) * t124 + t28;
t1 = t10 * t237 - t102 * t111 + t276 * t103;
t2 = -t10 * t236 + t276 * t102 + t103 * t111;
t7 = -t102 * t10 + t103 * t114;
t8 = t103 * t10 + t102 * t114;
t266 = t1 * t102 - t103 * t2 + (t102 * t7 - t103 * t8) * qJD(6);
t265 = 0.2e1 * t66;
t264 = -0.2e1 * t76;
t259 = t52 * t96;
t239 = qJD(3) * t98;
t46 = t59 * qJD(5) + (t100 * t198 + t199 * t96) * t239;
t258 = t58 * t46;
t56 = t100 * t208 + t83 * t212 + (-qJD(5) * t192 + t209) * t96;
t70 = t193 * t96 + t260 * t83;
t256 = t70 * t56;
t255 = t157 * t75;
t33 = t69 * t102 + t103 * t40;
t17 = qJD(6) * t33 - t102 * t124 - t103 * t279;
t32 = t102 * t40 - t69 * t103;
t252 = -t102 * t17 - t32 * t236;
t249 = t102 * t32;
t248 = t103 * t17;
t247 = t103 * t33;
t246 = t103 * t75;
t16 = -t102 * t279 + t103 * t124 - t236 * t69 + t237 * t40;
t245 = t16 * t102;
t238 = qJD(4) * t69;
t235 = 0.2e1 * t39 * t26;
t234 = t79 * t264;
t233 = -0.2e1 * pkin(5) * qJD(6);
t232 = t96 * t243;
t231 = t102 * t246;
t229 = t96 * t263;
t226 = t263 * t37;
t223 = t157 * t237;
t222 = t157 * t236;
t221 = t33 * t237;
t220 = t58 * t237;
t217 = t100 * t263;
t214 = t102 * t236;
t77 = t157 ^ 2;
t202 = t77 * t214;
t201 = 0.2e1 * t277 * qJD(4);
t196 = pkin(5) * t75 + pkin(11) * t76;
t195 = -pkin(5) * t157 + pkin(11) * t79;
t6 = -t12 * qJD(5) - t105 * t262 - t106 * t260;
t4 = -pkin(5) * t279 - t6;
t9 = -t69 * pkin(5) + t275;
t194 = -t157 * t4 - t75 * t9;
t189 = t102 * t8 + t103 * t7;
t187 = -t157 * t26 - t75 * t39;
t186 = t26 * t79 - t39 * t76;
t185 = t46 * t70 + t58 * t56;
t184 = -t157 * t46 - t58 * t75;
t183 = -t157 * t56 - t70 * t75;
t182 = -t157 * t76 + t75 * t79;
t147 = -t160 + t244;
t21 = t96 * t154 + t100 * t147 + (-t100 * t139 + (t100 * t254 + t272 * t96) * qJD(2)) * t99 + (t100 * t128 + t270 * t96) * qJD(3);
t22 = -t100 * t154 + t96 * t147 + (-t96 * t139 + (-t100 * t272 + t254 * t96) * qJD(2)) * t99 + t113;
t181 = t22 * t100 - t21 * t96;
t178 = t102 * t45 + t103 * t44;
t176 = t102 * t54 - t103 * t159;
t173 = -0.2e1 * t242 * t240;
t172 = t98 ^ 2 * t261 * t263;
t166 = -t103 * t16 - t221;
t165 = t102 * t26 + t236 * t39;
t164 = -t103 * t26 + t237 * t39;
t163 = -t102 * t76 + t236 * t79;
t162 = 0.2e1 * (t101 ^ 2 + t97 ^ 2) * t99 ^ 2 * qJD(2);
t158 = t277 * t263;
t141 = t100 * t149;
t138 = -qJD(6) * t189 - t1 * t103 - t2 * t102;
t135 = -qJD(6) * t178 - t31 * t102 - t103 * t30;
t134 = -qJD(6) * t176 - t35 * t102 - t103 * t34;
t123 = t96 * t279;
t64 = -t103 * t76 - t237 * t79;
t51 = -t157 * t207 + t231;
t48 = -t98 * t152 + (qJ(2) * t254 + t219 * t241) * t99;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t97 * t173, t101 * t173, t162, qJ(2) * t162, -0.2e1 * t269 * t66, -0.2e1 * t269 * t279 + 0.2e1 * t66 * t69, t161 * t265, t47, t161 * t278, 0, 0.2e1 * t161 * t37 + 0.2e1 * t205 * t69 + 0.2e1 * t279 * t48, -0.2e1 * t161 * t36 + 0.2e1 * t205 * t269 - 0.2e1 * t48 * t66, 0.2e1 * t269 * t37 - 0.2e1 * t270 * t66 - 0.2e1 * t279 * t42 + 0.2e1 * t36 * t69, 0.2e1 * t205 * t48 + 0.2e1 * t270 * t37 - 0.2e1 * t36 * t42, -0.2e1 * t52 * t243 (t141 + t259) * t265, -0.2e1 * t243 * t69 + 0.2e1 * t279 * t52, -0.2e1 * t149 * t257, -0.2e1 * t149 * t279 + 0.2e1 * t257 * t69, t47, 0.2e1 * t149 * t37 + 0.2e1 * t21 * t69 + 0.2e1 * t23 * t279 - 0.2e1 * t257 * t38, -0.2e1 * t22 * t69 - 0.2e1 * t24 * t279 - 0.2e1 * t243 * t38 + 0.2e1 * t37 * t52, -0.2e1 * t22 * t149 - 0.2e1 * t21 * t52 + 0.2e1 * (t100 * t23 + t24 * t96) * t66, 0.2e1 * t21 * t23 + 0.2e1 * t22 * t24 + 0.2e1 * t37 * t38, -0.2e1 * t40 * t124, 0.2e1 * t124 * t39 - 0.2e1 * t40 * t26, -0.2e1 * t124 * t69 + 0.2e1 * t279 * t40, t235, -0.2e1 * t26 * t69 - 0.2e1 * t279 * t39, t47, 0.2e1 * t27 * t26 - 0.2e1 * t275 * t279 + 0.2e1 * t28 * t39 + 0.2e1 * t6 * t69, -0.2e1 * t12 * t279 - 0.2e1 * t124 * t27 + 0.2e1 * t28 * t40 + 0.2e1 * t5 * t69, -0.2e1 * t12 * t26 - 0.2e1 * t124 * t275 + 0.2e1 * t5 * t39 - 0.2e1 * t6 * t40, -0.2e1 * t12 * t5 + 0.2e1 * t27 * t28 - 0.2e1 * t275 * t6, -0.2e1 * t33 * t16, 0.2e1 * t16 * t32 - 0.2e1 * t17 * t33, -0.2e1 * t16 * t39 + 0.2e1 * t26 * t33, 0.2e1 * t32 * t17, -0.2e1 * t17 * t39 - 0.2e1 * t26 * t32, t235, 0.2e1 * t17 * t9 + 0.2e1 * t2 * t39 + 0.2e1 * t26 * t7 + 0.2e1 * t32 * t4, 0.2e1 * t1 * t39 - 0.2e1 * t16 * t9 - 0.2e1 * t26 * t8 + 0.2e1 * t33 * t4, 0.2e1 * t1 * t32 + 0.2e1 * t16 * t7 - 0.2e1 * t17 * t8 - 0.2e1 * t2 * t33, -0.2e1 * t1 * t8 + 0.2e1 * t2 * t7 + 0.2e1 * t4 * t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 (t161 * t227 + t241 * t269) * qJD(3), t161 * t200 - t241 * t66, t271 (t171 - t226 - t261 * t36 + (t261 * t270 + t263 * t42) * qJD(3)) * t98, 0, 0, 0, 0, 0, 0, t149 * t86 + t271 * t96 + t279 * t73, t100 * t271 - t279 * t74 + t52 * t86 (t100 * t73 + t74 * t96) * t66 + (-t141 * t263 + t229 * t52) * t239, t21 * t73 + t22 * t74 + (-t226 + (t217 * t24 - t229 * t23 + t261 * t38) * qJD(3)) * t98, 0, 0, 0, 0, 0, 0, -t228 * t26 - t279 * t58 + t39 * t86 - t46 * t69, -t117 * t69 + t124 * t228 - t279 * t59 + t40 * t86, -t117 * t39 - t124 * t58 - t59 * t26 + t46 * t40, t117 * t12 - t228 * t28 + t27 * t86 + t275 * t46 - t5 * t59 - t6 * t58, 0, 0, 0, 0, 0, 0, -t159 * t26 + t17 * t58 + t32 * t46 + t35 * t39, -t16 * t58 - t26 * t54 + t33 * t46 + t34 * t39, -t159 * t16 - t17 * t54 + t32 * t34 - t33 * t35, -t1 * t54 - t159 * t2 - t34 * t8 + t35 * t7 + t4 * t58 + t46 * t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * (-t172 + (t217 * t74 - t229 * t73) * t98) * qJD(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t258 - 0.2e1 * t59 * t151 + 0.2e1 * (-t133 * t59 - t172) * qJD(3), 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t159 * t35 - 0.2e1 * t34 * t54 + 0.2e1 * t258; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t66, 0, -t279, 0, -t37, t36, 0, 0, -t232 (t90 - t93) * t66, t123, t232, t100 * t279, 0, pkin(3) * t257 - qJ(4) * t123 - t37 * t100 - t238 * t96, pkin(3) * t243 + t37 * t96 + (-qJ(4) * t279 - t238) * t100 (-t141 + t259) * qJD(4) + t181, -pkin(3) * t37 + (t100 * t24 - t23 * t96) * qJD(4) + t181 * qJ(4), t124 * t157 - t40 * t75, t124 * t79 + t40 * t76 - t187, -t157 * t279 - t75 * t69, t186, -t279 * t79 + t76 * t69, 0, t89 * t26 - t27 * t76 - t279 * t70 + t28 * t79 - t56 * t69, -t124 * t89 - t157 * t28 - t27 * t75 - t273 * t69 - t279 * t71, t12 * t76 - t124 * t70 + t157 * t6 - t71 * t26 - t273 * t39 - t275 * t75 + t56 * t40 + t5 * t79, t12 * t273 + t275 * t56 + t28 * t89 - t5 * t71 - t6 * t70, t157 * t221 + (t157 * t16 - t33 * t75) * t103 (t102 * t33 + t103 * t32) * t75 - (t245 - t248 + (-t247 + t249) * qJD(6)) * t157, t103 * t187 - t16 * t79 + t223 * t39 - t33 * t76, -t32 * t222 + (-t157 * t17 - t32 * t75) * t102, -t102 * t187 - t17 * t79 + t222 * t39 + t32 * t76, t186, t102 * t194 + t70 * t17 + t2 * t79 - t222 * t9 + t44 * t26 + t31 * t39 + t56 * t32 - t7 * t76, t1 * t79 + t103 * t194 - t70 * t16 + t223 * t9 - t45 * t26 + t30 * t39 + t56 * t33 + t8 * t76, -t157 * t266 + t44 * t16 - t45 * t17 + t189 * t75 + t30 * t32 - t31 * t33, -t1 * t45 + t2 * t44 - t30 * t8 + t31 * t7 + t4 * t70 + t56 * t9; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t86, -t200, 0, 0, 0, 0, 0, 0, 0, 0, -t100 * t86, t96 * t86, t158 * t239 (t100 * t74 - t73 * t96) * qJD(4) + (-pkin(3) * t261 + qJ(4) * t158) * t239, 0, 0, 0, 0, 0, 0 (t213 * t79 + t263 * t76) * t98 (-t157 * t213 + t263 * t75) * t98, -t117 * t79 + t59 * t76 + t184, t117 * t71 + t273 * t59 + t86 * t89 + t185, 0, 0, 0, 0, 0, 0, t102 * t184 + t159 * t76 - t222 * t58 + t35 * t79, t103 * t184 + t157 * t220 + t34 * t79 + t54 * t76, -t157 * t268 + t176 * t75, -t159 * t31 - t30 * t54 - t34 * t45 + t35 * t44 + t185; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t201, qJ(4) * t201, 0.2e1 * t255, 0.2e1 * t182, 0, t234, 0, 0, t89 * t264, -0.2e1 * t89 * t75, -0.2e1 * t273 * t79 + 0.2e1 * t71 * t76 + 0.2e1 * t183, 0.2e1 * t273 * t71 + 0.2e1 * t256, 0.2e1 * t255 * t95 - 0.2e1 * t202, -0.4e1 * t157 * t231 + 0.2e1 * t207 * t77, -0.2e1 * t103 * t182 + 0.2e1 * t223 * t79, 0.2e1 * t255 * t94 + 0.2e1 * t202, 0.2e1 * t102 * t182 + 0.2e1 * t222 * t79, t234, 0.2e1 * t102 * t183 - 0.2e1 * t222 * t70 + 0.2e1 * t31 * t79 - 0.2e1 * t44 * t76, 0.2e1 * t103 * t183 + 0.2e1 * t223 * t70 + 0.2e1 * t30 * t79 + 0.2e1 * t45 * t76, -0.2e1 * t157 * t267 + 0.2e1 * t178 * t75, -0.2e1 * t30 * t45 + 0.2e1 * t31 * t44 + 0.2e1 * t256; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t257, -t243, 0, t37, 0, 0, 0, 0, 0, 0, t26, -t124, 0, t28, 0, 0, 0, 0, 0, 0, -t164, -t165, -t166 + t252, -t266; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86, 0, 0, 0, 0, 0, 0, 0, 0, 0, t86, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t268; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t76, -t75, 0, 0, 0, 0, 0, 0, 0, 0, t64, -t163 (t94 + t95) * t75, -t267; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t124, 0, -t26, t279, t6, t5, 0, 0, t236 * t33 - t245, t166 + t252, t165, t237 * t32 - t248, -t164, 0, -pkin(5) * t17 - pkin(11) * t165 - t103 * t4 + t237 * t9, pkin(5) * t16 + pkin(11) * t164 + t4 * t102 + t236 * t9 (-t245 - t248 + (t247 + t249) * qJD(6)) * pkin(11) + t138, -t4 * pkin(5) + pkin(11) * t138; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t46, t137 * t239 + t151, 0, 0, 0, 0, 0, 0, 0, 0, -t103 * t46 + t220, t46 * t102 + t236 * t58, t134, -t46 * pkin(5) + pkin(11) * t134; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t75, 0, t76, 0, -t56, -t273, 0, 0, -t51, 0.4e1 * t157 * t214 + t251 * t75, t163, t51, t64, 0, -t103 * t56 + t196 * t102 + (t102 * t70 - t103 * t195) * qJD(6), t56 * t102 + t196 * t103 + (t102 * t195 + t103 * t70) * qJD(6), t135, -t56 * pkin(5) + pkin(11) * t135; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t214, -0.2e1 * t207, 0, -0.2e1 * t214, 0, 0, t102 * t233, t103 * t233, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t16, 0, -t17, t26, t2, t1, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t35, t34, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t223 - t246, 0, t102 * t75 + t222, -t76, t31, t30, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t237, -t236, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t236, 0, -t237, 0, -pkin(11) * t236, pkin(11) * t237, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t3;
