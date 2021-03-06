% Calculate inertial parameters regressor of coriolis joint torque vector for
% S5RRRPR10
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,alpha2,d1,d2,d3,d5,theta4]';
% 
% Output:
% tauc_reg [5x(5*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 21:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S5RRRPR10_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RRRPR10_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RRRPR10_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S5RRRPR10_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 21:29:52
% EndTime: 2019-12-31 21:30:11
% DurationCPUTime: 7.91s
% Computational Cost: add. (11122->511), mult. (30074->729), div. (0->0), fcn. (23387->10), ass. (0->221)
t204 = sin(pkin(5));
t211 = cos(qJ(2));
t263 = qJD(1) * t211;
t245 = t204 * t263;
t186 = -qJD(3) + t245;
t208 = sin(qJ(2));
t264 = qJD(1) * t204;
t250 = t208 * t264;
t205 = cos(pkin(5));
t307 = pkin(1) * t211;
t253 = t205 * t307;
t158 = -pkin(7) * t250 + qJD(1) * t253;
t222 = t204 * (pkin(2) * t208 - pkin(8) * t211);
t159 = qJD(1) * t222;
t207 = sin(qJ(3));
t210 = cos(qJ(3));
t105 = t210 * t158 + t207 * t159;
t233 = t207 * t245;
t301 = -qJ(4) - pkin(8);
t242 = qJD(3) * t301;
t320 = qJ(4) * t233 + t210 * qJD(4) + t207 * t242 - t105;
t104 = -t207 * t158 + t210 * t159;
t270 = t210 * t211;
t319 = -t207 * qJD(4) + t210 * t242 - (pkin(3) * t208 - qJ(4) * t270) * t264 - t104;
t203 = sin(pkin(10));
t282 = cos(pkin(10));
t241 = t282 * t207;
t173 = t203 * t210 + t241;
t268 = t186 * t173;
t273 = t203 * t207;
t219 = t282 * t210 - t273;
t125 = t219 * t245;
t166 = t219 * qJD(3);
t267 = t125 - t166;
t283 = t319 * t203 + t320 * t282;
t271 = t204 * t211;
t266 = t205 * t208 * pkin(1) + pkin(7) * t271;
t161 = t266 * qJD(1);
t259 = qJD(3) * t207;
t228 = -t161 + (-t233 + t259) * pkin(3);
t206 = sin(qJ(5));
t209 = cos(qJ(5));
t255 = t205 * qJD(1);
t191 = qJD(2) + t255;
t143 = t207 * t191 + t210 * t250;
t130 = t191 * pkin(8) + t161;
t156 = (-pkin(2) * t211 - pkin(8) * t208 - pkin(1)) * t204;
t137 = qJD(1) * t156;
t90 = -t207 * t130 + t210 * t137;
t69 = -qJ(4) * t143 + t90;
t61 = -pkin(3) * t186 + t69;
t231 = t207 * t250;
t141 = -t210 * t191 + t231;
t91 = t210 * t130 + t207 * t137;
t70 = -qJ(4) * t141 + t91;
t65 = t282 * t70;
t29 = t203 * t61 + t65;
t24 = -pkin(9) * t186 + t29;
t220 = -t203 * t141 + t282 * t143;
t129 = -t191 * pkin(2) - t158;
t96 = t141 * pkin(3) + qJD(4) + t129;
t98 = t282 * t141 + t203 * t143;
t40 = pkin(4) * t98 - pkin(9) * t220 + t96;
t10 = t206 * t40 + t209 * t24;
t254 = qJD(1) * qJD(2);
t243 = t211 * t254;
t230 = t204 * t243;
t258 = qJD(3) * t210;
t115 = qJD(3) * t231 - t191 * t258 - t210 * t230;
t260 = qJD(2) * t211;
t247 = t207 * t260;
t116 = (t208 * t258 + t247) * t264 + t191 * t259;
t71 = -t115 * t203 + t282 * t116;
t72 = -t282 * t115 - t203 * t116;
t163 = t266 * qJD(2);
t152 = qJD(1) * t163;
t88 = t116 * pkin(3) + t152;
t22 = t71 * pkin(4) - t72 * pkin(9) + t88;
t262 = qJD(2) * t208;
t249 = t204 * t262;
t188 = qJD(1) * t249;
t160 = qJD(2) * t222;
t150 = qJD(1) * t160;
t272 = t204 * t208;
t192 = pkin(7) * t272;
t169 = -t192 + t253;
t162 = t169 * qJD(2);
t151 = qJD(1) * t162;
t58 = -qJD(3) * t91 + t210 * t150 - t207 * t151;
t30 = pkin(3) * t188 + t115 * qJ(4) - t143 * qJD(4) + t58;
t57 = -t130 * t259 + t137 * t258 + t207 * t150 + t210 * t151;
t34 = -qJ(4) * t116 - qJD(4) * t141 + t57;
t8 = t203 * t30 + t282 * t34;
t6 = pkin(9) * t188 + t8;
t2 = -qJD(5) * t10 - t206 * t6 + t209 * t22;
t313 = qJD(5) + t98;
t318 = t10 * t313 + t2;
t225 = t206 * t24 - t209 * t40;
t1 = -qJD(5) * t225 + t206 * t22 + t209 * t6;
t317 = t225 * t313 + t1;
t316 = t98 * t220;
t315 = -pkin(9) * t250 + t283;
t314 = t268 * pkin(4) - t267 * pkin(9) - t228;
t238 = t209 * t313;
t312 = -t206 * t71 - t238 * t313;
t200 = t204 ^ 2;
t311 = -0.2e1 * t200 * t254;
t284 = t320 * t203 - t319 * t282;
t309 = t186 * t90 + t57;
t308 = t91 * t186 - t58;
t155 = t205 * pkin(8) + t266;
t103 = t210 * t155 + t207 * t156;
t79 = t209 * t186 + t206 * t220;
t306 = t79 * t220;
t305 = t79 * t98;
t81 = -t206 * t186 + t209 * t220;
t304 = t81 * t79;
t303 = t81 * t220;
t302 = t98 ^ 2;
t199 = -t210 * pkin(3) - pkin(2);
t117 = -pkin(4) * t219 - t173 * pkin(9) + t199;
t187 = t301 * t210;
t128 = -t282 * t187 + t301 * t273;
t77 = t206 * t117 + t209 * t128;
t300 = qJD(5) * t77 + t315 * t206 + t314 * t209;
t76 = t209 * t117 - t206 * t128;
t299 = -qJD(5) * t76 + t314 * t206 - t315 * t209;
t256 = qJD(5) * t209;
t240 = -t209 * t188 + t206 * t72;
t37 = qJD(5) * t81 + t240;
t298 = -t206 * t37 - t79 * t256;
t167 = -t205 * t210 + t207 * t272;
t248 = t204 * t260;
t121 = -qJD(3) * t167 + t210 * t248;
t168 = t205 * t207 + t210 * t272;
t63 = -t103 * qJD(3) + t210 * t160 - t207 * t162;
t44 = pkin(3) * t249 - t121 * qJ(4) - t168 * qJD(4) + t63;
t120 = qJD(3) * t168 + t204 * t247;
t62 = -t155 * t259 + t156 * t258 + t207 * t160 + t210 * t162;
t48 = -qJ(4) * t120 - qJD(4) * t167 + t62;
t16 = t203 * t44 + t282 * t48;
t102 = -t207 * t155 + t210 * t156;
t75 = -pkin(3) * t271 - qJ(4) * t168 + t102;
t86 = -t167 * qJ(4) + t103;
t47 = t203 * t75 + t282 * t86;
t297 = t220 ^ 2;
t111 = t282 * t167 + t203 * t168;
t296 = t111 * t71;
t294 = t186 * t220;
t293 = t203 * t70;
t291 = t206 * t81;
t257 = qJD(5) * t206;
t36 = t186 * t256 - t206 * t188 - t209 * t72 + t220 * t257;
t290 = t36 * t206;
t289 = t37 * t209;
t288 = t71 * t219;
t286 = t98 * t186;
t285 = pkin(4) * t250 + t284;
t281 = t141 * t186;
t280 = t143 * t141;
t279 = t143 * t186;
t278 = t173 * t206;
t277 = t173 * t209;
t276 = t186 * t207;
t275 = t186 * t210;
t274 = t200 * qJD(1) ^ 2;
t265 = t208 ^ 2 - t211 ^ 2;
t261 = qJD(2) * t210;
t251 = t206 * t271;
t7 = -t203 * t34 + t282 * t30;
t239 = t206 * t313;
t109 = t206 * t125 - t209 * t250;
t237 = -t166 * t206 + t109;
t110 = t209 * t125 + t206 * t250;
t236 = -t166 * t209 + t110;
t235 = t191 + t255;
t234 = t208 * t211 * t274;
t232 = t186 * t250;
t197 = t203 * pkin(3) + pkin(9);
t5 = -pkin(4) * t188 - t7;
t229 = qJD(5) * t197 * t313 + t5;
t227 = pkin(1) * t311;
t43 = -pkin(9) * t271 + t47;
t112 = -t203 * t167 + t282 * t168;
t154 = t192 + (-pkin(2) - t307) * t205;
t114 = t167 * pkin(3) + t154;
t56 = t111 * pkin(4) - t112 * pkin(9) + t114;
t18 = t206 * t56 + t209 * t43;
t17 = -t206 * t43 + t209 * t56;
t224 = t200 * t208 * t243;
t223 = t209 * t71 + (-t206 * t98 - t257) * t313;
t93 = t206 * t112 + t209 * t271;
t15 = -t203 * t48 + t282 * t44;
t28 = t282 * t61 - t293;
t46 = -t203 * t86 + t282 * t75;
t23 = t186 * pkin(4) - t28;
t221 = -t197 * t71 + t23 * t313;
t217 = t173 * t256 - t237;
t216 = -t173 * t257 - t236;
t214 = pkin(1) * (-t205 * t254 + t274);
t101 = t120 * pkin(3) + t163;
t198 = -t282 * pkin(3) - pkin(4);
t127 = -t203 * t187 - t301 * t241;
t119 = (-t186 * t204 - t200 * t263) * t262;
t94 = t209 * t112 - t251;
t85 = -t203 * t120 + t282 * t121;
t84 = t282 * t120 + t203 * t121;
t53 = pkin(3) * t143 + pkin(4) * t220 + pkin(9) * t98;
t50 = -qJD(5) * t251 + t112 * t256 + t206 * t85 - t209 * t249;
t49 = qJD(5) * t93 - t206 * t249 - t209 * t85;
t42 = pkin(4) * t271 - t46;
t33 = t282 * t69 - t293;
t32 = t203 * t69 + t65;
t25 = t84 * pkin(4) - t85 * pkin(9) + t101;
t14 = pkin(9) * t249 + t16;
t13 = -pkin(4) * t249 - t15;
t12 = t206 * t53 + t209 * t33;
t11 = -t206 * t33 + t209 * t53;
t4 = -qJD(5) * t18 - t206 * t14 + t209 * t25;
t3 = qJD(5) * t17 + t209 * t14 + t206 * t25;
t9 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t224, t265 * t311, t235 * t248, -0.2e1 * t224, -t235 * t249, 0, -t152 * t205 - t163 * t191 + t208 * t227, -t151 * t205 - t162 * t191 + t211 * t227, (t151 * t211 + t152 * t208 + (-t158 * t211 - t161 * t208) * qJD(2) + (t162 * t211 + t163 * t208 + (-t169 * t211 - t208 * t266) * qJD(2)) * qJD(1)) * t204, t151 * t266 - t152 * t169 - t158 * t163 + t161 * t162, -t115 * t168 + t121 * t143, t115 * t167 - t116 * t168 - t120 * t143 - t121 * t141, -t121 * t186 + (t115 * t211 + (qJD(1) * t168 + t143) * t262) * t204, t116 * t167 + t120 * t141, t120 * t186 + (t116 * t211 + (-qJD(1) * t167 - t141) * t262) * t204, t119, t154 * t116 + t129 * t120 + t163 * t141 + t152 * t167 - t63 * t186 + (-t211 * t58 + (qJD(1) * t102 + t90) * t262) * t204, -t154 * t115 + t129 * t121 + t163 * t143 + t152 * t168 + t62 * t186 + (t211 * t57 + (-qJD(1) * t103 - t91) * t262) * t204, t102 * t115 - t103 * t116 - t120 * t91 - t121 * t90 - t141 * t62 - t143 * t63 - t167 * t57 - t168 * t58, t102 * t58 + t103 * t57 + t129 * t163 + t152 * t154 + t62 * t91 + t63 * t90, t112 * t72 + t220 * t85, -t111 * t72 - t112 * t71 - t220 * t84 - t85 * t98, -t85 * t186 + (-t211 * t72 + (qJD(1) * t112 + t220) * t262) * t204, t84 * t98 + t296, t84 * t186 + (t211 * t71 + (-qJD(1) * t111 - t98) * t262) * t204, t119, t101 * t98 + t88 * t111 + t114 * t71 - t15 * t186 + t96 * t84 + (-t211 * t7 + (qJD(1) * t46 + t28) * t262) * t204, t101 * t220 + t88 * t112 + t114 * t72 + t16 * t186 + t96 * t85 + (t211 * t8 + (-qJD(1) * t47 - t29) * t262) * t204, -t111 * t8 - t112 * t7 - t15 * t220 - t16 * t98 - t28 * t85 - t29 * t84 - t46 * t72 - t47 * t71, t101 * t96 + t114 * t88 + t15 * t28 + t16 * t29 + t46 * t7 + t47 * t8, -t36 * t94 - t49 * t81, t36 * t93 - t37 * t94 + t49 * t79 - t50 * t81, -t111 * t36 - t313 * t49 + t71 * t94 + t81 * t84, t37 * t93 + t50 * t79, -t111 * t37 - t313 * t50 - t71 * t93 - t79 * t84, t313 * t84 + t296, t111 * t2 + t13 * t79 + t17 * t71 - t225 * t84 + t23 * t50 + t313 * t4 + t37 * t42 + t5 * t93, -t1 * t111 - t10 * t84 + t13 * t81 - t18 * t71 - t23 * t49 - t3 * t313 - t36 * t42 + t5 * t94, -t1 * t93 - t10 * t50 + t17 * t36 - t18 * t37 - t2 * t94 - t225 * t49 - t3 * t79 - t4 * t81, t1 * t18 + t10 * t3 + t13 * t23 + t17 * t2 - t225 * t4 + t42 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t234, t265 * t274, (qJD(2) - t191) * t245, t234, t191 * t250 - t188, 0, -pkin(7) * t230 + t161 * t191 + t208 * t214, pkin(7) * t188 + t158 * t191 + t211 * t214, 0, 0, -t115 * t207 - t143 * t275, (-t115 + t281) * t210 + (-t116 + t279) * t207, -t186 * t258 + (t186 * t270 + (qJD(2) * t207 - t143) * t208) * t264, -t116 * t210 - t141 * t276, t186 * t259 + (-t211 * t276 + (t141 + t261) * t208) * t264, t232, -pkin(2) * t116 + t104 * t186 - t161 * t141 - t152 * t210 + (pkin(8) * t275 + t129 * t207) * qJD(3) + (-t208 * t90 + (-pkin(8) * t262 - t129 * t211) * t207) * t264, pkin(2) * t115 - t105 * t186 - t161 * t143 + t152 * t207 + (-pkin(8) * t276 + t129 * t210) * qJD(3) + (-t129 * t270 + (-pkin(8) * t261 + t91) * t208) * t264, t104 * t143 + t105 * t141 + ((qJD(3) * t143 - t116) * pkin(8) + t309) * t210 + ((qJD(3) * t141 - t115) * pkin(8) + t308) * t207, -t152 * pkin(2) - t90 * t104 - t91 * t105 - t129 * t161 + (-t58 * t207 + t57 * t210 + (-t207 * t91 - t210 * t90) * qJD(3)) * pkin(8), t72 * t173 - t220 * t267, -t173 * t71 + t219 * t72 + t220 * t268 + t267 * t98, t267 * t186 + (qJD(2) * t173 - t220) * t250, -t268 * t98 - t288, -t268 * t186 + (qJD(2) * t219 + t98) * t250, t232, -t88 * t219 + t199 * t71 + t228 * t98 - t268 * t96 + t284 * t186 + (-qJD(2) * t127 - t28) * t250, t88 * t173 + t199 * t72 - t267 * t96 + t283 * t186 + t228 * t220 + (-qJD(2) * t128 + t29) * t250, t127 * t72 - t128 * t71 - t7 * t173 + t219 * t8 + t220 * t284 + t267 * t28 + t268 * t29 - t283 * t98, -t7 * t127 + t8 * t128 + t88 * t199 + t228 * t96 - t284 * t28 + t283 * t29, t216 * t81 - t36 * t277, t81 * t109 + t110 * t79 + (-t209 * t79 - t291) * t166 + (t290 - t289 + (t206 * t79 - t209 * t81) * qJD(5)) * t173, t216 * t313 + t219 * t36 - t268 * t81 + t71 * t277, t217 * t79 + t37 * t278, -t217 * t313 + t219 * t37 + t268 * t79 - t71 * t278, -t268 * t313 - t288, t127 * t37 - t2 * t219 + t217 * t23 + t225 * t268 + t5 * t278 + t285 * t79 - t300 * t313 + t76 * t71, t1 * t219 + t268 * t10 - t127 * t36 + t216 * t23 + t5 * t277 + t285 * t81 + t299 * t313 - t77 * t71, t76 * t36 - t77 * t37 - t236 * t225 + t300 * t81 + t299 * t79 + t237 * t10 + (-t1 * t206 - t2 * t209 + (-t10 * t209 - t206 * t225) * qJD(5)) * t173, t1 * t77 - t299 * t10 + t5 * t127 + t2 * t76 + t225 * t300 + t285 * t23; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t280, -t141 ^ 2 + t143 ^ 2, -t115 - t281, -t280, -t116 - t279, t188, -t129 * t143 - t308, t129 * t141 - t309, 0, 0, t316, t297 - t302, t72 - t286, -t316, -t71 - t294, t188, -t32 * t186 - t96 * t220 + (-t143 * t98 + t282 * t188) * pkin(3) + t7, -t33 * t186 + t96 * t98 + (-t143 * t220 - t188 * t203) * pkin(3) - t8, (-t203 * t71 - t282 * t72) * pkin(3) + (-t32 + t29) * t220 + (-t28 + t33) * t98, t28 * t32 - t29 * t33 + (-t143 * t96 + t203 * t8 + t282 * t7) * pkin(3), t238 * t81 - t290, (-t36 - t305) * t209 - t313 * t291 + t298, -t303 - t312, t239 * t79 - t289, t223 + t306, -t313 * t220, -t11 * t313 + t198 * t37 + t206 * t221 - t209 * t229 + t220 * t225 - t32 * t79, t10 * t220 + t12 * t313 - t198 * t36 + t206 * t229 + t209 * t221 - t32 * t81, t11 * t81 + t12 * t79 + (-t197 * t37 + t225 * t98 + t1 + (t197 * t81 + t225) * qJD(5)) * t209 + (-t10 * t98 - t197 * t36 - t2 + (t197 * t79 - t10) * qJD(5)) * t206, -t10 * t12 + t225 * t11 + t5 * t198 - t23 * t32 + (t1 * t209 - t2 * t206 + (-t10 * t206 + t209 * t225) * qJD(5)) * t197; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t71 - t294, t72 + t286, -t297 - t302, t220 * t28 + t29 * t98 + t88, 0, 0, 0, 0, 0, 0, t223 - t306, -t303 + t312, (t36 - t305) * t209 + t81 * t239 + t298, t317 * t206 + t318 * t209 - t23 * t220; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t304, -t79 ^ 2 + t81 ^ 2, t313 * t79 - t36, -t304, -t240 + (-qJD(5) + t313) * t81, t71, -t23 * t81 + t318, t23 * t79 - t317, 0, 0;];
tauc_reg = t9;
