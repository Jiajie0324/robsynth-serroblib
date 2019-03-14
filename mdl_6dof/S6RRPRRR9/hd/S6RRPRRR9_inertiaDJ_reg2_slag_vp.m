% Calculate inertial parameters regressor of joint inertia matrix time derivative for
% S6RRPRRR9
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [12x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d4,d5,d6,theta3]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x(6*10)]
%   inertial parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 14:17
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRPRRR9_inertiaDJ_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(12,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRPRRR9_inertiaDJ_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRPRRR9_inertiaDJ_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [12 1]), ...
  'S6RRPRRR9_inertiaDJ_reg2_slag_vp: pkin has to be [12x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 14:13:59
% EndTime: 2019-03-09 14:14:24
% DurationCPUTime: 10.38s
% Computational Cost: add. (20291->493), mult. (50930->890), div. (0->0), fcn. (53976->12), ass. (0->241)
t142 = sin(pkin(12));
t144 = cos(pkin(12));
t302 = sin(qJ(4));
t304 = cos(qJ(4));
t112 = t304 * t142 + t302 * t144;
t143 = sin(pkin(6));
t148 = cos(qJ(2));
t146 = sin(qJ(2));
t287 = cos(pkin(6));
t258 = pkin(1) * t287;
t232 = t146 * t258;
t192 = qJ(3) * t287 + t232;
t176 = pkin(9) * t287 + t192;
t296 = pkin(9) + qJ(3);
t299 = pkin(2) * t148;
t199 = -t296 * t146 - pkin(1) - t299;
t164 = -t176 * t142 + ((-pkin(8) * t142 - pkin(3)) * t148 + t199 * t144) * t143;
t279 = t144 * t148;
t268 = pkin(8) * t279;
t165 = t176 * t144 + (t199 * t142 + t268) * t143;
t318 = -t304 * t164 + t302 * t165;
t241 = t287 * t142;
t280 = t144 * t146;
t260 = t143 * t280;
t195 = t241 + t260;
t240 = t287 * t144;
t282 = t143 * t146;
t196 = t142 * t282 - t240;
t85 = t304 * t195 - t302 * t196;
t317 = t112 * t296;
t145 = sin(qJ(6));
t139 = t145 ^ 2;
t147 = cos(qJ(6));
t140 = t147 ^ 2;
t276 = t139 - t140;
t310 = t276 * qJD(6);
t247 = qJD(4) * t302;
t129 = t142 * t247;
t248 = qJD(4) * t304;
t205 = -t144 * t248 + t129;
t316 = -0.2e1 * t205;
t274 = qJD(2) * t148;
t315 = 0.2e1 * t274;
t277 = t142 * t248 + t144 * t247;
t314 = 0.2e1 * t277;
t169 = t302 * t195 + t304 * t196;
t303 = cos(qJ(5));
t168 = t303 * t169;
t251 = t143 * t274;
t209 = t302 * t251;
t210 = t304 * t251;
t237 = t85 * qJD(4) + t142 * t210 + t144 * t209;
t301 = sin(qJ(5));
t245 = qJD(5) * t301;
t70 = qJD(4) * t169 + t142 * t209 - t144 * t210;
t180 = t301 * t237 + t85 * t245 + t303 * t70;
t160 = qJD(5) * t168 + t180;
t59 = -t301 * t169 + t303 * t85;
t34 = t59 * qJD(5) + t303 * t237 - t301 * t70;
t281 = t143 * t148;
t91 = (t232 + (pkin(3) * t142 + pkin(8)) * t281) * qJD(2);
t52 = t237 * pkin(4) + t91;
t152 = t34 * pkin(5) + t160 * pkin(11) + t52;
t159 = pkin(4) * t281 + t85 * pkin(10) + t318;
t46 = t302 * t164 + t304 * t165;
t167 = -t169 * pkin(10) + t46;
t23 = -t301 * t159 + t303 * t167;
t21 = -pkin(11) * t281 + t23;
t272 = qJD(6) * t145;
t275 = qJD(2) * t146;
t127 = t143 * t275;
t58 = t301 * t85 + t168;
t194 = pkin(8) * t282 - t148 * t258;
t98 = -pkin(2) * t287 + t194;
t87 = t196 * pkin(3) + t98;
t62 = t169 * pkin(4) + t87;
t155 = t58 * pkin(5) - t59 * pkin(11) + t62;
t236 = pkin(4) * t127;
t103 = t194 * qJD(2);
t300 = pkin(2) * t146;
t218 = -qJ(3) * t148 + t300;
t230 = t144 * t251;
t238 = t287 * qJD(3);
t273 = qJD(3) * t146;
t158 = -t142 * (t238 - t103) + t144 * (t218 * qJD(2) - t273) * t143 - pkin(9) * t230 + pkin(3) * t127;
t239 = qJD(2) * t287;
t225 = t148 * t239;
t187 = pkin(1) * t225 + t238;
t179 = t144 * t187;
t252 = t142 * t273;
t269 = pkin(8) * t280;
t161 = t179 + (-t252 + (-t269 + (-t296 * t148 + t300) * t142) * qJD(2)) * t143;
t31 = -qJD(4) * t46 + t304 * t158 - t302 * t161;
t150 = t70 * pkin(10) + t236 + t31;
t30 = t318 * qJD(4) - t302 * t158 - t304 * t161;
t156 = t237 * pkin(10) + t30;
t22 = -t303 * t159 - t301 * t167;
t8 = -qJD(5) * t22 - t301 * t150 + t303 * t156;
t312 = -pkin(11) * t127 - qJD(6) * t155 + t8;
t2 = -t145 * t152 + t147 * t312 + t21 * t272;
t1 = t2 * t147;
t11 = -t145 * t21 + t147 * t155;
t12 = t145 * t155 + t147 * t21;
t217 = t11 * t147 + t12 * t145;
t135 = qJD(6) * t147;
t3 = -t135 * t21 + t145 * t312 + t147 * t152;
t177 = -t217 * qJD(6) - t3 * t145 - t1;
t313 = t139 + t140;
t228 = t296 * t302;
t243 = t304 * qJD(3);
t178 = (qJD(4) * t228 - t243) * t142;
t227 = t304 * t296;
t242 = t302 * qJD(3);
t163 = t129 * pkin(10) + (-t242 + (-t304 * pkin(10) - t227) * qJD(4)) * t144 + t178;
t175 = -t112 * pkin(10) - t317;
t172 = t303 * t175;
t79 = t317 * qJD(4) + t142 * t242 - t144 * t243;
t73 = -pkin(10) * t277 - t79;
t197 = t302 * t142 - t304 * t144;
t93 = -t142 * t228 + t144 * t227;
t84 = -t197 * pkin(10) + t93;
t153 = -qJD(5) * t172 - t301 * t163 + t84 * t245 - t303 * t73;
t186 = t303 * t197;
t89 = t301 * t112 + t186;
t90 = t303 * t112 - t301 * t197;
t132 = -t144 * pkin(3) - pkin(2);
t97 = t197 * pkin(4) + t132;
t173 = t89 * pkin(5) - t90 * pkin(11) + t97;
t311 = -qJD(6) * t173 + t153;
t244 = t277 * pkin(4);
t66 = qJD(5) * t186 + t112 * t245 + t303 * t205 + t301 * t277;
t67 = t90 * qJD(5) - t301 * t205 + t303 * t277;
t193 = t67 * pkin(5) + t66 * pkin(11) + t244;
t171 = t301 * t175;
t57 = t303 * t84 + t171;
t13 = -t145 * t193 + t147 * t311 + t272 * t57;
t14 = -t135 * t57 + t145 * t311 + t147 * t193;
t41 = -t145 * t57 + t147 * t173;
t42 = t145 * t173 + t147 * t57;
t309 = t13 * t145 - t14 * t147 + (t145 * t41 - t147 * t42) * qJD(6);
t308 = t145 * t2 - t147 * t3 + (t11 * t145 - t12 * t147) * qJD(6);
t138 = t144 ^ 2;
t307 = 0.2e1 * t143;
t306 = 0.2e1 * qJD(2);
t20 = pkin(5) * t281 - t22;
t19 = t20 * t135;
t151 = qJD(5) * t23 - t303 * t150 - t301 * t156;
t7 = -pkin(5) * t127 + t151;
t305 = t7 * t145 + t19;
t246 = qJD(5) * t303;
t37 = qJD(5) * t171 - t303 * t163 + t84 * t246 + t301 * t73;
t56 = t301 * t84 - t172;
t298 = t56 * t37;
t297 = t90 * t66;
t259 = t145 * t281;
t27 = -qJD(6) * t259 - t127 * t147 + t135 * t59 - t145 * t160;
t50 = t145 * t59 + t147 * t281;
t295 = -t50 * t135 - t145 * t27;
t54 = t56 * t135;
t294 = t37 * t145 + t54;
t293 = pkin(4) * qJD(5);
t26 = qJD(6) * t50 - t127 * t145 + t147 * t160;
t292 = t145 * t26;
t291 = t145 * t50;
t290 = t147 * t27;
t51 = t147 * t59 - t259;
t289 = t147 * t51;
t288 = t147 * t66;
t137 = t143 ^ 2;
t141 = t148 ^ 2;
t285 = t137 * t141;
t284 = t142 * t146;
t283 = t142 * t148;
t267 = t303 * pkin(4);
t134 = -t267 - pkin(5);
t234 = pkin(4) * t245;
t278 = t134 * t135 + t145 * t234;
t271 = 0.2e1 * t58 * t34;
t270 = 0.2e1 * t89 * t67;
t266 = t301 * pkin(4);
t265 = pkin(5) * t272;
t264 = pkin(5) * t135;
t263 = t145 * t288;
t262 = t90 * t272;
t261 = t90 * t135;
t18 = t20 * t272;
t53 = t56 * t272;
t257 = t145 * t303;
t256 = t147 * t303;
t253 = t137 * t274;
t250 = t145 * t135;
t249 = -t7 * t147 + t18;
t235 = pkin(4) * t246;
t88 = t90 ^ 2;
t233 = t88 * t250;
t231 = t146 * t253;
t136 = t142 ^ 2;
t229 = 0.2e1 * (t136 + t138) * qJD(3);
t226 = -t20 * t66 + t7 * t90;
t223 = t90 * t34 - t66 * t58;
t222 = t34 * t89 + t58 * t67;
t221 = t37 * t90 - t56 * t66;
t220 = t66 * t89 - t67 * t90;
t219 = -qJ(3) * t146 - t299;
t133 = t266 + pkin(11);
t214 = t133 * t89 - t134 * t90;
t213 = t145 * t42 + t147 * t41;
t211 = t142 * t230;
t206 = -pkin(1) + t219;
t204 = -t147 * t26 - t272 * t51;
t29 = t135 * t58 + t145 * t34;
t203 = -t147 * t34 + t272 * t58;
t202 = t262 + t288;
t48 = t135 * t89 + t145 * t67;
t201 = -t147 * t67 + t272 * t89;
t200 = t134 * t272 - t147 * t234;
t198 = t313 * t303;
t108 = pkin(8) * t281 + t232;
t191 = (t301 * t90 - t303 * t89) * qJD(5);
t190 = t143 * t196;
t189 = t143 * t195;
t181 = t143 * (t219 * qJD(2) + qJD(3) * t148);
t4 = -t213 * qJD(6) - t13 * t147 - t14 * t145;
t174 = pkin(4) * t191 - t133 * t67 - t134 * t66;
t126 = -0.2e1 * t250;
t125 = 0.2e1 * t250;
t117 = -0.2e1 * t231;
t116 = -0.2e1 * t310;
t105 = t198 * t293;
t104 = t108 * qJD(2);
t80 = (-qJD(4) * t227 - t242) * t144 + t178;
t77 = t144 * t192 + (t142 * t206 + t268) * t143;
t76 = -t142 * t192 + (-pkin(8) * t283 + t144 * t206) * t143;
t75 = t179 + (-t252 + (t142 * t218 - t269) * qJD(2)) * t143;
t74 = -t142 * t187 + (-t144 * t273 + (pkin(8) * t284 + t144 * t218) * qJD(2)) * t143;
t44 = t90 * t310 + t263;
t38 = -0.4e1 * t250 * t90 + t276 * t66;
t17 = t272 * t50 - t290;
t16 = t135 * t51 - t292;
t10 = t204 + t295;
t5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t231 (-t146 ^ 2 + t141) * t137 * t306, t225 * t307, t117, -0.2e1 * t239 * t282, 0, -0.2e1 * pkin(1) * t137 * t275 - 0.2e1 * t104 * t287, -0.2e1 * pkin(1) * t253 + 0.2e1 * t103 * t287 (-t103 * t148 + t104 * t146 + (-t108 * t146 + t148 * t194) * qJD(2)) * t307, -0.2e1 * t103 * t108 + 0.2e1 * t104 * t194, t144 * t189 * t315, 0.2e1 * (t138 * t287 + (-t241 - 0.2e1 * t260) * t142) * t251 (-t144 * t285 + t146 * t189) * t306, t142 * t190 * t315 (t142 * t285 - t146 * t190) * t306, t117, -0.2e1 * t104 * t240 + 0.2e1 * (t104 * t284 - t74 * t148 + (t146 * t76 + t283 * t98) * qJD(2)) * t143, 0.2e1 * t104 * t241 + 0.2e1 * (t104 * t280 + t75 * t148 + (-t146 * t77 + t279 * t98) * qJD(2)) * t143, -0.2e1 * t75 * t196 - 0.2e1 * t74 * t195 + 0.2e1 * (-t142 * t77 - t144 * t76) * t251, 0.2e1 * t104 * t98 + 0.2e1 * t74 * t76 + 0.2e1 * t75 * t77, -0.2e1 * t85 * t70, 0.2e1 * t169 * t70 - 0.2e1 * t237 * t85 (t148 * t70 + t275 * t85) * t307, 0.2e1 * t169 * t237, -0.2e1 * t127 * t169 + 0.2e1 * t237 * t281, t117, -0.2e1 * t127 * t318 + 0.2e1 * t169 * t91 + 0.2e1 * t237 * t87 - 0.2e1 * t281 * t31, -0.2e1 * t87 * t70 + 0.2e1 * t91 * t85 + 0.2e1 * (-t148 * t30 - t275 * t46) * t143, 0.2e1 * t169 * t30 - 0.2e1 * t237 * t46 - 0.2e1 * t31 * t85 - 0.2e1 * t318 * t70, -0.2e1 * t30 * t46 - 0.2e1 * t31 * t318 + 0.2e1 * t87 * t91, -0.2e1 * t59 * t160, 0.2e1 * t160 * t58 - 0.2e1 * t59 * t34, 0.2e1 * t127 * t59 + 0.2e1 * t160 * t281, t271 (t148 * t34 - t275 * t58) * t307, t117, 0.2e1 * t62 * t34 + 0.2e1 * t52 * t58 + 0.2e1 * (t148 * t151 + t22 * t275) * t143, -0.2e1 * t127 * t23 - 0.2e1 * t160 * t62 - 0.2e1 * t281 * t8 + 0.2e1 * t52 * t59, 0.2e1 * t151 * t59 + 0.2e1 * t160 * t22 - 0.2e1 * t23 * t34 + 0.2e1 * t8 * t58, -0.2e1 * t151 * t22 - 0.2e1 * t23 * t8 + 0.2e1 * t52 * t62, -0.2e1 * t51 * t26, 0.2e1 * t26 * t50 - 0.2e1 * t27 * t51, -0.2e1 * t26 * t58 + 0.2e1 * t34 * t51, 0.2e1 * t50 * t27, -0.2e1 * t27 * t58 - 0.2e1 * t34 * t50, t271, 0.2e1 * t11 * t34 + 0.2e1 * t20 * t27 + 0.2e1 * t3 * t58 + 0.2e1 * t50 * t7, -0.2e1 * t12 * t34 + 0.2e1 * t2 * t58 - 0.2e1 * t20 * t26 + 0.2e1 * t51 * t7, 0.2e1 * t11 * t26 - 0.2e1 * t12 * t27 + 0.2e1 * t2 * t50 - 0.2e1 * t3 * t51, 0.2e1 * t11 * t3 - 0.2e1 * t12 * t2 + 0.2e1 * t20 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t251, 0, -t127, 0, -t104, t103, 0, 0, t211 (-t136 + t138) * t251, t142 * t127, -t211, t144 * t127, 0, -t104 * t144 + t142 * t181, t104 * t142 + t144 * t181 (t144 * t238 + t75) * t144 + (t142 * t238 - t74) * t142, -pkin(2) * t104 + (-t142 * t76 + t144 * t77) * qJD(3) + (-t74 * t142 + t75 * t144) * qJ(3), -t70 * t112 - t205 * t85, -t112 * t237 + t169 * t205 + t197 * t70 - t277 * t85 (t112 * t275 + t148 * t205) * t143, t169 * t277 + t197 * t237 (t148 * t277 - t197 * t275) * t143, 0, t132 * t237 + t91 * t197 + t87 * t277 + (-t148 * t80 - t275 * t317) * t143, -t132 * t70 + t91 * t112 - t87 * t205 + (-t148 * t79 - t275 * t93) * t143, -t31 * t112 + t169 * t79 + t197 * t30 - t205 * t318 - t237 * t93 - t277 * t46 - t317 * t70 - t80 * t85, t132 * t91 - t30 * t93 - t31 * t317 - t318 * t80 - t46 * t79, -t160 * t90 - t59 * t66, t160 * t89 - t59 * t67 - t223 (t148 * t66 + t275 * t90) * t143, t222 (t148 * t67 - t275 * t89) * t143, 0, t58 * t244 + t97 * t34 + t52 * t89 + t62 * t67 + (t148 * t37 - t275 * t56) * t143, -t127 * t57 - t153 * t281 - t160 * t97 + t244 * t59 + t52 * t90 - t62 * t66, t151 * t90 + t153 * t58 - t160 * t56 + t22 * t66 - t23 * t67 - t57 * t34 + t37 * t59 + t8 * t89, t151 * t56 - t153 * t23 - t22 * t37 + t244 * t62 + t52 * t97 - t8 * t57, -t51 * t262 + (-t26 * t90 - t51 * t66) * t147 (t145 * t51 + t147 * t50) * t66 + (t292 - t290 + (-t289 + t291) * qJD(6)) * t90, t147 * t223 - t26 * t89 - t262 * t58 + t51 * t67, t50 * t261 + (t27 * t90 - t50 * t66) * t145, -t145 * t223 - t261 * t58 - t27 * t89 - t50 * t67, t222, t11 * t67 + t14 * t58 + t145 * t226 + t19 * t90 + t27 * t56 + t3 * t89 + t34 * t41 + t37 * t50, -t12 * t67 + t13 * t58 + t147 * t226 - t18 * t90 + t2 * t89 - t26 * t56 - t34 * t42 + t37 * t51, t13 * t50 - t14 * t51 + t217 * t66 + t26 * t41 - t27 * t42 + t308 * t90, t11 * t14 - t12 * t13 - t2 * t42 + t20 * t37 + t3 * t41 + t56 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t229, qJ(3) * t229, t112 * t316, -0.2e1 * t112 * t277 + 0.2e1 * t197 * t205, 0, t197 * t314, 0, 0, t132 * t314, t132 * t316, -0.2e1 * t80 * t112 + 0.2e1 * t197 * t79 - 0.2e1 * t205 * t317 - 0.2e1 * t277 * t93, -0.2e1 * t317 * t80 - 0.2e1 * t79 * t93, -0.2e1 * t297, 0.2e1 * t220, 0, t270, 0, 0, 0.2e1 * t244 * t89 + 0.2e1 * t97 * t67, 0.2e1 * t244 * t90 - 0.2e1 * t97 * t66, 0.2e1 * t153 * t89 - 0.2e1 * t57 * t67 + 0.2e1 * t221, -0.2e1 * t153 * t57 + 0.2e1 * t244 * t97 + 0.2e1 * t298, -0.2e1 * t140 * t297 - 0.2e1 * t233, 0.4e1 * t263 * t90 + 0.2e1 * t310 * t88, -0.2e1 * t147 * t220 - 0.2e1 * t262 * t89, -0.2e1 * t139 * t297 + 0.2e1 * t233, 0.2e1 * t145 * t220 - 0.2e1 * t261 * t89, t270, 0.2e1 * t14 * t89 + 0.2e1 * t145 * t221 + 0.2e1 * t41 * t67 + 0.2e1 * t54 * t90, 0.2e1 * t13 * t89 + 0.2e1 * t147 * t221 - 0.2e1 * t42 * t67 - 0.2e1 * t53 * t90, 0.2e1 * t213 * t66 + 0.2e1 * t309 * t90, -0.2e1 * t13 * t42 + 0.2e1 * t14 * t41 + 0.2e1 * t298; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t142 * t251, t230, 0, t104, 0, 0, 0, 0, 0, 0, t237, -t70, 0, t91, 0, 0, 0, 0, 0, 0, t34, -t160, 0, t52, 0, 0, 0, 0, 0, 0, -t203, -t29, -t204 + t295, -t308; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t277, -t205, 0, 0, 0, 0, 0, 0, 0, 0, t67, -t66, 0, t244, 0, 0, 0, 0, 0, 0, -t201, -t48, t313 * t66, -t309; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t70, 0, -t237, t127, t31, t30, 0, 0, 0, 0, -t160, 0, -t34, t127, t234 * t281 + t236 * t303 - t151, t235 * t281 - t236 * t301 + t8 (-t301 * t34 + t303 * t180 + (t301 * t59 + (-t58 + t168) * t303) * qJD(5)) * pkin(4) (-t303 * t151 - t301 * t8 + (-t22 * t301 + t23 * t303) * qJD(5)) * pkin(4), t16, t10, t29, t17, -t203, 0, t134 * t27 - t29 * t133 + (-t257 * t58 + t301 * t50) * t293 + t249, -t134 * t26 + t203 * t133 + (-t256 * t58 + t301 * t51) * t293 + t305, -t1 + (-t50 * t235 - t133 * t27 + (t133 * t51 - t11) * qJD(6)) * t147 + (t51 * t235 - t133 * t26 - t3 + (t133 * t50 - t12) * qJD(6)) * t145, t7 * t134 + (-t11 * t257 + t12 * t256 + t20 * t301) * t293 + t177 * t133; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t205, 0, -t277, 0, t80, t79, 0, 0, 0, 0, -t66, 0, -t67, 0, -t37, t153 (-t301 * t67 + t303 * t66 + t191) * pkin(4), -t153 * t266 + t234 * t56 + t235 * t57 - t267 * t37, -t44, t38, t48, t44, -t201, 0, t53 + (-qJD(6) * t214 - t37) * t147 + t174 * t145, t147 * t174 + t214 * t272 + t294, t4, t37 * t134 + (t256 * t42 - t257 * t41 + t301 * t56) * t293 + t4 * t133; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.2e1 * t234, -0.2e1 * t235, 0, 0, t125, t116, 0, t126, 0, 0, 0.2e1 * t200, 0.2e1 * t278, 0.2e1 * t105, 0.2e1 * (t133 * t198 + t134 * t301) * t293; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t160, 0, -t34, t127, -t151, t8, 0, 0, t16, t10, t29, t17, -t203, 0, -pkin(5) * t27 - pkin(11) * t29 + t249, pkin(5) * t26 + pkin(11) * t203 + t305 (-t292 - t290 + (t289 + t291) * qJD(6)) * pkin(11) + t177, -pkin(5) * t7 + pkin(11) * t177; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t66, 0, -t67, 0, -t37, t153, 0, 0, -t44, t38, t48, t44, -t201, 0, t53 + (pkin(5) * t66 - pkin(11) * t67) * t145 + (-t37 + (-pkin(5) * t90 - pkin(11) * t89) * qJD(6)) * t147, pkin(5) * t202 + pkin(11) * t201 + t294, t4, -pkin(5) * t37 + pkin(11) * t4; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t234, -t235, 0, 0, t125, t116, 0, t126, 0, 0, t200 - t265, -t264 + t278, t105 (-pkin(5) * t301 + pkin(11) * t198) * t293; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t125, t116, 0, t126, 0, 0, -0.2e1 * t265, -0.2e1 * t264, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t26, 0, -t27, t34, t3, t2, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t202, 0, t145 * t66 - t261, t67, t14, t13, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t272, -t135, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t135, 0, -t272, 0, -t133 * t135 - t145 * t235, t133 * t272 - t147 * t235, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t135, 0, -t272, 0, -pkin(11) * t135, pkin(11) * t272, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t5;