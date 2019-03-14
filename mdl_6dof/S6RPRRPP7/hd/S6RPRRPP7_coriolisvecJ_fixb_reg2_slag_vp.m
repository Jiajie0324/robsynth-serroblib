% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RPRRPP7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d4]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 04:52
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RPRRPP7_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRRPP7_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRRPP7_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S6RPRRPP7_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 04:52:12
% EndTime: 2019-03-09 04:52:23
% DurationCPUTime: 4.15s
% Computational Cost: add. (3604->422), mult. (7577->514), div. (0->0), fcn. (4302->4), ass. (0->214)
t137 = sin(qJ(3));
t223 = t137 * qJD(1);
t297 = -t223 - qJD(4);
t136 = sin(qJ(4));
t139 = cos(qJ(3));
t233 = qJD(1) * t139;
t199 = t136 * t233;
t138 = cos(qJ(4));
t222 = t138 * qJD(3);
t98 = t199 - t222;
t176 = t297 * t98;
t228 = qJD(4) * t139;
t205 = t136 * t228;
t158 = t137 * t222 + t205;
t57 = t158 * qJD(1) - qJD(4) * t222;
t304 = t57 - t176;
t147 = t57 + t176;
t225 = t136 * qJD(3);
t100 = t138 * t233 + t225;
t174 = t100 * t297;
t209 = t136 * t223;
t115 = qJD(3) * t209;
t58 = t100 * qJD(4) - t115;
t303 = t58 - t174;
t302 = t58 + t174;
t141 = -pkin(1) - pkin(7);
t252 = qJ(5) * t138;
t275 = pkin(4) + pkin(5);
t165 = t275 * t136 - t252;
t301 = t141 - t165;
t220 = qJD(1) * qJD(3);
t126 = t139 * t220;
t300 = t275 * t126;
t197 = qJD(4) * t98 - t57;
t231 = qJD(3) * t139;
t299 = (qJD(1) * t98 + t100 * t231 + t197 * t137) * t136;
t298 = qJ(5) * t126 - qJD(5) * t297;
t121 = t141 * qJD(1) + qJD(2);
t208 = t139 * t225;
t229 = qJD(4) * t138;
t230 = qJD(4) * t136;
t191 = pkin(3) * t139 + pkin(8) * t137;
t97 = t191 * qJD(3) + qJD(2);
t72 = t97 * qJD(1);
t106 = t137 * pkin(3) - t139 * pkin(8) + qJ(2);
t80 = t106 * qJD(1);
t105 = t137 * t121;
t82 = qJD(3) * pkin(8) + t105;
t198 = t121 * t208 - t138 * t72 + t82 * t229 + t80 * t230;
t40 = t136 * t80 + t138 * t82;
t167 = -t297 * t40 - t198;
t232 = qJD(3) * t137;
t250 = t100 * t138;
t254 = t58 * t138;
t255 = t57 * t136;
t1 = t139 * ((-t136 * t98 + t250) * qJD(4) + t254 - t255) - (t100 * t136 + t138 * t98) * t232;
t194 = -t100 + t225;
t203 = t297 * t229;
t244 = t137 * t138;
t24 = qJD(1) * (t194 * t139 - t244 * t297) - t203;
t135 = t139 ^ 2;
t175 = qJD(1) * t135 + t137 * t297;
t202 = t138 * t228;
t257 = t139 * t98;
t260 = t137 * t58;
t296 = qJD(3) * (t175 * t136 + t257) - t297 * t202 + t260;
t10 = qJD(3) * (t100 * t139 + t175 * t138) + t297 * t205 - t57 * t137;
t4 = t136 * t303 + t138 * t304;
t219 = 0.2e1 * qJD(1);
t118 = t297 * qJ(5);
t32 = -t118 + t40;
t192 = pkin(4) * t126;
t9 = -t192 + t198;
t295 = t297 * t32 + t9;
t294 = t58 * qJ(6) + t98 * qJD(6);
t242 = t139 * t121;
t267 = qJD(3) * pkin(3);
t83 = -t242 - t267;
t157 = t100 * qJ(5) - t83;
t22 = -t275 * t98 + qJD(6) + t157;
t290 = (qJD(6) + t22) * t100;
t39 = -t136 * t82 + t138 * t80;
t237 = qJD(5) - t39;
t289 = t136 * qJD(5) + t105;
t288 = 0.2e1 * t298;
t276 = t100 ^ 2;
t287 = -t297 ^ 2 - t276;
t286 = qJ(5) * t231 + t137 * qJD(5);
t277 = t98 ^ 2;
t285 = t276 - t277;
t246 = t136 * qJ(5);
t281 = -t275 * t138 - t246;
t245 = t136 * t137;
t279 = (-t245 * t297 - t257) * qJD(1) - t297 * t230 - t138 * t126;
t274 = pkin(8) * t100;
t273 = pkin(8) - qJ(6);
t113 = t273 * t138;
t102 = t191 * qJD(1);
t46 = t138 * t102 - t136 * t242;
t272 = (qJ(6) * t244 - t275 * t139) * qJD(1) - t46 - qJD(4) * t113 + t136 * qJD(6);
t221 = t138 * qJD(6);
t47 = t136 * t102 + t138 * t242;
t42 = qJ(5) * t233 + t47;
t271 = qJ(6) * t209 - t273 * t230 - t221 - t42;
t270 = -t165 * t297 - t289;
t187 = pkin(4) * t136 - t252;
t269 = t297 * t187 + t289;
t268 = qJ(5) * t58;
t35 = pkin(4) * t98 - t157;
t266 = t100 * t35;
t265 = t100 * t98;
t11 = t58 * pkin(4) + t57 * qJ(5) - t100 * qJD(5) + t121 * t232;
t264 = t11 * t136;
t263 = t11 * t138;
t259 = t139 * t57;
t258 = t139 * t58;
t26 = qJ(6) * t98 + t40;
t21 = -t118 + t26;
t256 = t21 * t297;
t253 = t98 * qJ(5);
t243 = t137 * t141;
t60 = t136 * t106 + t138 * t243;
t251 = qJ(6) * t139;
t248 = t297 * t136;
t247 = t297 * t138;
t142 = qJD(3) ^ 2;
t241 = t142 * t137;
t240 = t142 * t139;
t143 = qJD(1) ^ 2;
t239 = t143 * qJ(2);
t25 = t100 * qJ(6) + t39;
t238 = qJD(5) - t25;
t235 = t137 ^ 2 - t135;
t234 = -t142 - t143;
t227 = qJD(4) * t141;
t226 = qJD(5) * t138;
t218 = pkin(8) * t248;
t217 = pkin(8) * t247;
t201 = t297 * t231;
t216 = qJD(1) * t247 + t136 * t201 + t137 * t203;
t206 = t141 * t231;
t215 = t106 * t229 + t136 * t97 + t138 * t206;
t214 = pkin(8) * t231;
t213 = qJD(2) * t219;
t204 = t137 * t227;
t212 = t106 * t230 + t136 * t206 + t138 * t204;
t52 = t137 * qJ(5) + t60;
t73 = t98 * t232;
t210 = t139 * t143 * t137;
t207 = t139 * t222;
t200 = t297 * t233;
t196 = -t126 + t265;
t195 = -t83 + t242;
t119 = t136 * t243;
t59 = t138 * t106 - t119;
t193 = qJD(4) * t137 + qJD(1);
t117 = t137 * t126;
t190 = t197 * pkin(8);
t64 = t117 - t201;
t188 = t138 * pkin(4) + t246;
t16 = t275 * t297 + t238;
t186 = -t136 * t21 + t138 * t16;
t185 = t136 * t16 + t138 * t21;
t31 = pkin(4) * t297 + t237;
t184 = t136 * t32 - t138 * t31;
t183 = t136 * t31 + t138 * t32;
t182 = t136 * t40 + t138 * t39;
t181 = t136 * t39 - t138 * t40;
t177 = t195 * qJD(3);
t28 = t138 * t97 - t212;
t173 = -t137 * t35 + t214;
t172 = t137 * t83 - t214;
t5 = -t58 * pkin(5) - t11;
t171 = -t5 * t136 - t22 * t229;
t170 = t5 * t138 - t22 * t230;
t169 = -t141 + t187;
t168 = t57 * qJ(6) + t198;
t163 = -t121 * t207 - t136 * t72 - t80 * t229 + t82 * t230;
t159 = t100 * t232 - t138 * t117 + t259;
t27 = -t136 * t204 + t215;
t6 = -t163 + t298;
t156 = -t297 * t39 + t163;
t155 = t73 + (-t58 - t115) * t139;
t18 = -t136 * t176 - t254;
t152 = -t184 * qJD(4) + t9 * t136 + t6 * t138;
t151 = t168 - t300;
t150 = -t182 * qJD(4) + t136 * t198 - t138 * t163;
t15 = t98 * t202 + (-t73 + t258) * t136;
t146 = -t138 * t201 + t193 * t248 - t159;
t144 = t193 * t250 - t98 * t207 - t58 * t244 + t299;
t130 = qJ(2) * t213;
t112 = t273 * t136;
t107 = -pkin(3) - t188;
t88 = pkin(3) - t281;
t65 = t169 * t139;
t53 = -t137 * pkin(4) - t59;
t51 = t301 * t139;
t50 = pkin(8) * t254;
t48 = t100 * pkin(4) + t253;
t44 = t136 * t251 + t52;
t43 = -pkin(4) * t233 - t46;
t38 = t119 + (-t106 - t251) * t138 - t275 * t137;
t36 = -t275 * t100 - t253;
t30 = (t188 * qJD(4) - t226) * t139 - t169 * t232;
t23 = -pkin(4) * t231 - t28;
t20 = t27 + t286;
t19 = (qJD(4) * t281 + t226) * t139 - t301 * t232;
t17 = -t138 * t174 - t255;
t14 = -t158 * t100 - t138 * t259;
t8 = qJ(6) * t202 + (qJD(6) * t139 + (-qJ(6) * qJD(3) - t227) * t137) * t136 + t215 + t286;
t7 = (qJ(6) * t232 - t97) * t138 + (qJ(6) * t230 - t275 * qJD(3) - t221) * t139 + t212;
t3 = -t100 * qJD(6) + t151;
t2 = t6 + t294;
t12 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t213, t130, -0.2e1 * t117, 0.2e1 * t235 * t220, -t241, 0.2e1 * t117, -t240, 0, -t141 * t241 + (qJ(2) * t231 + qJD(2) * t137) * t219, -t141 * t240 + (-qJ(2) * t232 + qJD(2) * t139) * t219, 0, t130, t14, -t1, t10, t15, -t296, t64, -t28 * t297 - t198 * t137 + (-t141 * t58 + t83 * t229) * t139 + ((qJD(1) * t59 + t39) * t139 + (t195 * t136 + t141 * t98) * t137) * qJD(3), t163 * t137 + t27 * t297 + (t141 * t57 - t83 * t230) * t139 + ((-qJD(1) * t60 - t40) * t139 + (t100 * t141 + t138 * t195) * t137) * qJD(3), -t28 * t100 - t27 * t98 + t59 * t57 - t60 * t58 + t182 * t232 + (qJD(4) * t181 + t136 * t163 + t138 * t198) * t139, -t163 * t60 - t177 * t243 - t198 * t59 + t40 * t27 + t39 * t28, t14, t10, t1, t64, t296, t15, t23 * t297 + t30 * t98 + t65 * t58 + (-t35 * t225 - t9) * t137 + (t35 * t229 + t264 + (-qJD(1) * t53 - t31) * qJD(3)) * t139, t23 * t100 - t20 * t98 - t52 * t58 - t53 * t57 + t184 * t232 + (-qJD(4) * t183 - t136 * t6 + t138 * t9) * t139, -t30 * t100 - t20 * t297 + t65 * t57 + (t222 * t35 + t6) * t137 + (t35 * t230 - t263 + (qJD(1) * t52 + t32) * qJD(3)) * t139, t11 * t65 + t20 * t32 + t23 * t31 + t30 * t35 + t52 * t6 + t53 * t9, t14, t1, -t10, t15, -t296, t64, t7 * t297 - t19 * t98 - t51 * t58 + (t22 * t225 - t3) * t137 + ((-qJD(1) * t38 - t16) * qJD(3) + t171) * t139, t19 * t100 - t8 * t297 - t51 * t57 + (-t22 * t222 + t2) * t137 + ((qJD(1) * t44 + t21) * qJD(3) + t170) * t139, -t7 * t100 + t38 * t57 + t44 * t58 + t8 * t98 + t186 * t232 + (qJD(4) * t185 + t136 * t2 - t138 * t3) * t139, t16 * t7 + t19 * t22 + t2 * t44 + t21 * t8 + t3 * t38 + t5 * t51; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t143, -t239, 0, 0, 0, 0, 0, 0, t234 * t137, t234 * t139, 0, -t239, 0, 0, 0, 0, 0, 0 -(-t193 * t138 - t208) * t297 + t155 -(t136 * t193 - t207) * t297 + t159, t144, -t181 * t231 - t182 * qJD(1) + (-t177 + t150) * t137, 0, 0, 0, 0, 0, 0, t155 + t216, t144, t146, -t184 * qJD(1) + (qJD(3) * t183 - t11) * t139 + (qJD(3) * t35 + t152) * t137, 0, 0, 0, 0, 0, 0, -t258 + (t98 - t199) * t232 + t216, t146 (-t100 * t193 + t231 * t98 + t260) * t138 - t299, t186 * qJD(1) + (qJD(3) * t185 + t5) * t139 + (-qJD(3) * t22 + qJD(4) * t186 + t3 * t136 + t2 * t138) * t137; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t210, -t235 * t143, 0, -t210, 0, 0, -t139 * t239, t137 * t239, 0, 0, t17, -t4, t24, t18, -t279, t200, -pkin(3) * t58 + t46 * t297 + (-t98 - t222) * t105 + (t136 * t83 + t217) * qJD(4) + (t172 * t136 - t139 * t39) * qJD(1), pkin(3) * t57 - t47 * t297 + t194 * t105 + (t138 * t83 - t218) * qJD(4) + (t138 * t172 + t139 * t40) * qJD(1), t46 * t100 + t47 * t98 - t50 + (-t39 * t223 - t163 + (-t39 + t274) * qJD(4)) * t138 + (t190 - t167) * t136, -t39 * t46 - t40 * t47 + (-t83 - t267) * t105 + t150 * pkin(8), t17, t24, t4, t200, t279, t18, t107 * t58 - t263 - t43 * t297 - t269 * t98 + (t136 * t35 + t217) * qJD(4) + (-t136 * t173 + t139 * t31) * qJD(1), -t43 * t100 + t42 * t98 - t50 + (t31 * t223 + t6 + (t31 + t274) * qJD(4)) * t138 + (t190 + t295) * t136, t107 * t57 - t264 + t42 * t297 + t269 * t100 + (-t138 * t35 + t218) * qJD(4) + (t138 * t173 - t139 * t32) * qJD(1), t152 * pkin(8) + t11 * t107 - t269 * t35 - t31 * t43 - t32 * t42, t17, t4, -t24, t18, -t279, t200, -t88 * t58 + t270 * t98 - t272 * t297 + (-t22 * t245 + (-qJD(3) * t112 + t16) * t139) * qJD(1) + t170, -t88 * t57 - t271 * t297 - t270 * t100 + (t22 * t244 + (qJD(3) * t113 - t21) * t139) * qJD(1) - t171, t112 * t57 + t113 * t58 + t271 * t98 + t272 * t100 + (t16 * t297 - t2) * t138 + (-t3 - t256) * t136, t3 * t112 + t2 * t113 - t272 * t16 + t271 * t21 - t270 * t22 + t5 * t88; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t265, t285, -t147, -t265, -t302, t126, -t100 * t83 + t167, t83 * t98 + t156, 0, 0, t265, -t147, -t285, t126, t302, -t265, -t48 * t98 + t167 + 0.2e1 * t192 - t266, pkin(4) * t57 - t268 + (t32 - t40) * t100 + (t31 - t237) * t98, t100 * t48 - t35 * t98 - t156 + t288, -t9 * pkin(4) + t6 * qJ(5) + t237 * t32 - t31 * t40 - t35 * t48, t265, -t285, t147, -t265, -t302, t126, -t26 * t297 + t36 * t98 - t168 + t290 + 0.2e1 * t300, -t100 * t36 + t22 * t98 + t25 * t297 - t163 + t288 + t294, t268 - t275 * t57 + (-t21 + t26) * t100 + (-t16 + t238) * t98, t2 * qJ(5) - t16 * t26 + t21 * t238 - t22 * t36 - t275 * t3; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t196, -t147, t287, t266 + t295, 0, 0, 0, 0, 0, 0, t196, t287, t147, t151 + t256 - t290; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t303, -t304, -t276 - t277, t100 * t16 - t21 * t98 + t5;];
tauc_reg  = t12;