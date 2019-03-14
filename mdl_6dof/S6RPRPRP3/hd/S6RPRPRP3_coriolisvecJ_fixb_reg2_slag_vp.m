% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RPRPRP3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d3,d5,theta2,theta4]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 03:10
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RPRPRP3_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPRPRP3_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPRPRP3_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPRPRP3_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 03:09:47
% EndTime: 2019-03-09 03:09:53
% DurationCPUTime: 3.46s
% Computational Cost: add. (5469->390), mult. (13065->522), div. (0->0), fcn. (8870->8), ass. (0->209)
t184 = cos(qJ(3));
t249 = qJD(1) * t184;
t165 = -qJD(5) + t249;
t178 = sin(pkin(10));
t180 = cos(pkin(10));
t247 = qJD(3) * t180;
t183 = sin(qJ(3));
t250 = qJD(1) * t183;
t137 = -t178 * t250 + t247;
t237 = t180 * t250;
t248 = qJD(3) * t178;
t138 = t237 + t248;
t182 = sin(qJ(5));
t288 = cos(qJ(5));
t84 = -t288 * t137 + t138 * t182;
t274 = t84 * t165;
t239 = t288 * t180;
t221 = t184 * t239;
t209 = qJD(1) * t221;
t243 = qJD(1) * qJD(3);
t230 = t184 * t243;
t218 = t178 * t230;
t232 = qJD(5) * t288;
t48 = t182 * (qJD(5) * t138 + t218) - qJD(3) * t209 - t137 * t232;
t304 = t48 - t274;
t303 = t84 ^ 2;
t198 = -t182 * t178 + t239;
t119 = t198 * t183;
t171 = t183 * t243;
t142 = t288 * t178 + t182 * t180;
t131 = t142 * qJD(5);
t245 = qJD(3) * t184;
t235 = t178 * t245;
t72 = -qJD(3) * t221 + t131 * t183 + t182 * t235;
t302 = -t119 * t171 - t72 * t165;
t200 = t182 * t137 + t288 * t138;
t246 = qJD(3) * t183;
t301 = t184 * t48 + t200 * t246;
t192 = t184 * t142;
t256 = qJD(1) * t192 - t131;
t238 = t178 * t249;
t244 = qJD(5) * t182;
t294 = -t178 * t244 + t180 * t232;
t255 = -t182 * t238 + t209 - t294;
t191 = qJD(3) * t192;
t293 = qJD(5) * t200;
t49 = qJD(1) * t191 + t293;
t229 = -t184 * t49 + t84 * t246;
t118 = t142 * t183;
t73 = t183 * t294 + t191;
t295 = -t118 * t171 + t73 * t165;
t300 = t295 - t229;
t299 = t295 + t229;
t280 = -t119 * t49 + t72 * t84;
t296 = -t48 * t118 + t200 * t73;
t298 = t296 - t280;
t297 = t296 + t280;
t289 = t200 ^ 2;
t261 = t180 * t184;
t205 = pkin(4) * t183 - pkin(8) * t261;
t168 = sin(pkin(9)) * pkin(1) + pkin(7);
t154 = t168 * qJD(1);
t143 = t183 * t154;
t122 = qJD(2) * t184 - t143;
t213 = pkin(3) * t183 - qJ(4) * t184;
t145 = t213 * qJD(1);
t77 = -t178 * t122 + t180 * t145;
t54 = qJD(1) * t205 + t77;
t78 = t180 * t122 + t178 * t145;
t64 = -pkin(8) * t238 + t78;
t285 = pkin(8) + qJ(4);
t151 = t285 * t178;
t152 = t285 * t180;
t94 = -t182 * t151 + t288 * t152;
t282 = qJD(4) * t142 + qJD(5) * t94 - t182 * t64 + t288 * t54;
t273 = t200 * t165;
t292 = t301 + t302;
t169 = -cos(pkin(9)) * pkin(1) - pkin(2);
t134 = -pkin(3) * t184 - qJ(4) * t183 + t169;
t121 = t180 * t134;
t262 = t180 * t183;
t70 = -pkin(8) * t262 + t121 + (-t168 * t178 - pkin(4)) * t184;
t264 = t178 * t183;
t144 = t168 * t261;
t90 = t178 * t134 + t144;
t76 = -pkin(8) * t264 + t90;
t277 = t182 * t70 + t288 * t76;
t195 = t205 * qJD(3);
t127 = qJD(3) * t213 - t183 * qJD(4);
t236 = t168 * t246;
t81 = t180 * t127 + t178 * t236;
t62 = t195 + t81;
t115 = t178 * t127;
t157 = t183 * t168;
t263 = t178 * t184;
t69 = t115 + (-pkin(8) * t263 - t157 * t180) * qJD(3);
t9 = -qJD(5) * t277 - t182 * t69 + t288 * t62;
t291 = t165 * t256 + (-qJD(3) * t198 - t84) * t250;
t290 = -t142 * t49 - t198 * t48 + t200 * t256 + t255 * t84;
t226 = -qJD(3) * pkin(3) + qJD(4);
t104 = -t122 + t226;
t79 = -pkin(4) * t137 + t104;
t21 = pkin(5) * t84 - qJ(6) * t200 + t79;
t287 = t21 * t200;
t286 = t200 * t84;
t23 = t182 * t54 + t288 * t64;
t18 = qJ(6) * t250 + t23;
t199 = -t288 * t151 - t182 * t152;
t67 = qJD(4) * t198 + qJD(5) * t199;
t284 = t18 - t67;
t283 = pkin(5) * t250 + t282;
t281 = -t23 + t67;
t123 = qJD(2) * t183 + t154 * t184;
t95 = pkin(4) * t238 + t123;
t278 = t256 * pkin(5) - t255 * qJ(6) + qJD(6) * t142 + t95;
t242 = qJD(2) * qJD(3);
t173 = t184 * t242;
t101 = t173 + (qJD(4) - t143) * qJD(3);
t110 = t127 * qJD(1);
t53 = t180 * t101 + t178 * t110;
t106 = qJD(3) * qJ(4) + t123;
t109 = t134 * qJD(1);
t58 = t180 * t106 + t178 * t109;
t271 = qJD(3) * t199;
t270 = qJD(3) * t94;
t112 = t154 * t245 + t183 * t242;
t269 = t112 * t183;
t268 = t112 * t184;
t267 = t137 * t180;
t266 = t137 * t183;
t177 = t184 ^ 2;
t186 = qJD(1) ^ 2;
t265 = t177 * t186;
t185 = qJD(3) ^ 2;
t259 = t185 * t183;
t258 = t185 * t184;
t57 = -t106 * t178 + t180 * t109;
t41 = -pkin(4) * t249 - pkin(8) * t138 + t57;
t46 = pkin(8) * t137 + t58;
t15 = -t182 * t46 + t288 * t41;
t257 = qJD(6) - t15;
t117 = pkin(4) * t235 + t168 * t245;
t126 = pkin(4) * t264 + t157;
t176 = t183 ^ 2;
t253 = t176 - 0.2e1 * t177;
t252 = t176 - t177;
t155 = qJD(1) * t169;
t251 = qJD(1) * t178;
t241 = -t289 + t303;
t240 = t168 * t263;
t91 = pkin(4) * t218 + t112;
t170 = -pkin(4) * t180 - pkin(3);
t233 = t165 * t250;
t231 = t180 * t243;
t52 = -t178 * t101 + t180 * t110;
t42 = qJD(1) * t195 + t52;
t47 = -pkin(8) * t218 + t53;
t228 = t182 * t47 + t46 * t232 + t41 * t244 - t288 * t42;
t224 = -t137 + t247;
t223 = pkin(5) * t171;
t222 = t199 * t48 - t94 * t49 - t67 * t84;
t219 = qJ(6) * t171;
t217 = t184 * t171;
t216 = -t289 - t303;
t214 = t118 * t49 + t73 * t84;
t211 = -t52 * t178 + t53 * t180;
t210 = -t178 * t57 + t180 * t58;
t208 = qJD(1) * t224;
t207 = qJD(1) * (-t138 + t248);
t206 = 0.2e1 * qJD(3) * t155;
t16 = t182 * t41 + t288 * t46;
t204 = -t16 * t165 - t228;
t27 = -t182 * t76 + t288 * t70;
t201 = -t182 * t42 - t41 * t232 + t244 * t46 - t288 * t47;
t8 = t182 * t62 + t70 * t232 - t244 * t76 + t288 * t69;
t197 = t184 * t207;
t196 = -t198 * t49 - t256 * t84;
t2 = -t223 + t228;
t7 = pkin(5) * t49 + qJ(6) * t48 - qJD(6) * t200 + t91;
t190 = -qJ(4) * t246 + (-t104 + t226) * t184;
t111 = -t154 * t246 + t173;
t188 = t111 * t184 + t269 + (-t122 * t184 - t123 * t183) * qJD(3);
t187 = t49 - t273;
t175 = t180 ^ 2;
t174 = t178 ^ 2;
t163 = t183 * t186 * t184;
t156 = -0.2e1 * t217;
t125 = t138 * t246;
t114 = (-t165 - t249) * t246;
t113 = t245 * t267;
t89 = t121 - t240;
t82 = -t180 * t236 + t115;
t80 = -pkin(5) * t198 - qJ(6) * t142 + t170;
t50 = pkin(5) * t118 - qJ(6) * t119 + t126;
t40 = pkin(5) * t200 + qJ(6) * t84;
t26 = t184 * pkin(5) - t27;
t25 = -qJ(6) * t184 + t277;
t24 = -t48 - t274;
t20 = t255 * t165 + (qJD(3) * t142 - t200) * t250;
t17 = pkin(5) * t73 + qJ(6) * t72 - qJD(6) * t119 + t117;
t14 = -t165 * qJ(6) + t16;
t13 = t165 * pkin(5) + t257;
t12 = -t119 * t48 - t200 * t72;
t11 = t301 - t302;
t10 = -t48 * t142 - t200 * t255;
t6 = -pkin(5) * t246 - t9;
t5 = qJ(6) * t246 - qJD(6) * t184 + t8;
t1 = -qJD(6) * t165 - t201 + t219;
t3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t217, -0.2e1 * t252 * t243, t258, t156, -t259, 0, -t168 * t258 + t183 * t206, t168 * t259 + t184 * t206, t188, t188 * t168 (t138 * t180 + t175 * t250) * t245, t113 + (-t138 - 0.2e1 * t237) * t235, t231 * t253 + t125 (-t137 * t178 + t174 * t250) * t245 (-t251 * t253 + t266) * qJD(3), t156, t112 * t264 + (-qJD(1) * t81 - t52) * t184 + ((t104 * t178 - t137 * t168) * t184 + (t57 + (t89 + t240) * qJD(1)) * t183) * qJD(3), t112 * t262 + (qJD(1) * t82 + t53) * t184 + ((t104 * t180 + t138 * t168) * t184 + (-t58 + (-t90 + t144) * qJD(1)) * t183) * qJD(3), t137 * t82 - t138 * t81 + (-t178 * t53 - t180 * t52) * t183 + (-t178 * t58 - t180 * t57 + (-t178 * t90 - t180 * t89) * qJD(1)) * t245, t52 * t89 + t53 * t90 + t57 * t81 + t58 * t82 + (t104 * t245 + t269) * t168, t12, -t298, t11, t214, t300, t114, t117 * t84 + t118 * t91 + t126 * t49 - t165 * t9 + t184 * t228 + t73 * t79 + (qJD(1) * t27 + t15) * t246, t117 * t200 + t119 * t91 - t126 * t48 + t165 * t8 - t184 * t201 - t72 * t79 + (-qJD(1) * t277 - t16) * t246, t118 * t201 + t119 * t228 + t15 * t72 - t16 * t73 - t200 * t9 + t27 * t48 - t277 * t49 - t8 * t84, t117 * t79 + t126 * t91 + t15 * t9 + t16 * t8 - t201 * t277 - t228 * t27, t12, t11, t298, t114, -t300, t214, t118 * t7 + t165 * t6 + t17 * t84 + t184 * t2 + t21 * t73 + t49 * t50 + (-qJD(1) * t26 - t13) * t246, -t1 * t118 + t119 * t2 - t13 * t72 - t14 * t73 + t200 * t6 - t25 * t49 - t26 * t48 - t5 * t84, -t1 * t184 - t119 * t7 - t165 * t5 - t17 * t200 + t21 * t72 + t48 * t50 + (qJD(1) * t25 + t14) * t246, t1 * t25 + t13 * t6 + t14 * t5 + t17 * t21 + t2 * t26 + t50 * t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t259, -t258, 0, t111 * t183 - t268 + (-t122 * t183 + t123 * t184) * qJD(3), 0, 0, 0, 0, 0, 0 (-t176 * t251 - t266) * qJD(3), -t176 * t231 + t125, t138 * t235 + t113, -t268 + t211 * t183 + (t104 * t183 + t184 * t210) * qJD(3), 0, 0, 0, 0, 0, 0, t299, t292, t297, t118 * t228 - t119 * t201 - t15 * t73 - t16 * t72 - t184 * t91 + t246 * t79, 0, 0, 0, 0, 0, 0, t299, t297, -t292, t1 * t119 + t118 * t2 + t13 * t73 - t14 * t72 - t184 * t7 + t21 * t246; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t163, t252 * t186, 0, t163, 0, 0, qJD(3) * t123 - t155 * t250 - t112, -t155 * t249 - t173 + (t122 + t143) * qJD(3), 0, 0, t180 * t197 (-t267 + t138 * t178 + (-t174 + t175) * qJD(3)) * t249, t180 * t265 + t183 * t207, -t224 * t238, -t178 * t265 + t183 * t208, t163, -t112 * t180 + t123 * t137 + (t178 * t190 - t183 * t57 + t184 * t77) * qJD(1), t112 * t178 - t123 * t138 + (t180 * t190 + t183 * t58 - t184 * t78) * qJD(1), -t78 * t137 + t77 * t138 + (qJD(4) * t137 + t249 * t57 + t53) * t180 + (qJD(4) * t138 + t249 * t58 - t52) * t178, -t112 * pkin(3) + qJ(4) * t211 + qJD(4) * t210 - t104 * t123 - t57 * t77 - t58 * t78, t10, t290, t20, t196, -t291, t233, -t198 * t91 + t170 * t49 - t84 * t95 - t256 * t79 + t282 * t165 + (-t15 + t271) * t250, t142 * t91 - t170 * t48 - t200 * t95 - t255 * t79 + t281 * t165 + (t16 - t270) * t250, t142 * t228 + t255 * t15 + t256 * t16 - t198 * t201 + t200 * t282 + t23 * t84 + t222, -t282 * t15 + t281 * t16 + t91 * t170 - t199 * t228 - t201 * t94 - t79 * t95, t10, t20, -t290, t233, t291, t196, -t198 * t7 + t49 * t80 - t278 * t84 - t256 * t21 + t283 * t165 + (t13 + t271) * t250, t1 * t198 - t255 * t13 + t256 * t14 + t142 * t2 + t18 * t84 + t200 * t283 + t222, -t142 * t7 + t48 * t80 + t278 * t200 + t255 * t21 + t284 * t165 + (-t14 + t270) * t250, t1 * t94 + t283 * t13 - t284 * t14 - t199 * t2 - t278 * t21 + t7 * t80; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t197, t184 * t208, -t137 ^ 2 - t138 ^ 2, -t137 * t58 + t138 * t57 + t112, 0, 0, 0, 0, 0, 0, t187, -t304, t216, t15 * t200 + t16 * t84 + t91, 0, 0, 0, 0, 0, 0, t187, t216, t304, -t13 * t200 + t14 * t84 + t7; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t286, -t241, t24, -t286, -t142 * t230 - t273 - t293, t171, -t200 * t79 + t204, -t15 * t165 + t79 * t84 + t201, 0, 0, t286, t24, t241, t171, t49 + t273, -t286, -t40 * t84 + t204 + 0.2e1 * t223 - t287, pkin(5) * t48 - t49 * qJ(6) + (t14 - t16) * t200 + (t13 - t257) * t84, 0.2e1 * t219 - t21 * t84 + t40 * t200 + (-0.2e1 * qJD(6) + t15) * t165 - t201, -t2 * pkin(5) + t1 * qJ(6) - t13 * t16 + t14 * t257 - t21 * t40; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t171 + t286, t24, -t165 ^ 2 - t289, t14 * t165 + t2 + t287;];
tauc_reg  = t3;