% Calculate minimal parameter regressor of coriolis matrix for
% S5RPRPR12
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [9x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d5,theta2,theta4]';
% 
% Output:
% cmat_reg [(5*%NQJ)%x25]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:31
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RPRPR12_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(9,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRPR12_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRPR12_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [9 1]), ...
  'S5RPRPR12_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [9x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:30:18
% EndTime: 2019-12-31 18:30:25
% DurationCPUTime: 2.89s
% Computational Cost: add. (3191->265), mult. (6881->376), div. (0->0), fcn. (7952->8), ass. (0->223)
t174 = sin(pkin(9));
t180 = cos(qJ(5));
t258 = t180 * t174;
t176 = cos(pkin(9));
t178 = sin(qJ(5));
t261 = t178 * t176;
t152 = t258 + t261;
t175 = sin(pkin(8));
t296 = cos(qJ(3));
t219 = t296 * t175;
t177 = cos(pkin(8));
t179 = sin(qJ(3));
t259 = t179 * t177;
t153 = t219 + t259;
t67 = t153 * t152;
t242 = t67 * qJD(1);
t190 = -t261 / 0.2e1 - t258 / 0.2e1;
t150 = t179 * t175 - t296 * t177;
t230 = t150 * qJD(1);
t221 = t67 * t230;
t146 = t150 ^ 2;
t301 = t153 ^ 2;
t304 = t146 + t301;
t170 = t174 ^ 2;
t172 = t176 ^ 2;
t160 = t170 + t172;
t302 = qJD(5) * t67;
t145 = t219 / 0.2e1 + t259 / 0.2e1;
t257 = t180 * t176;
t262 = t178 * t174;
t148 = -t257 + t262;
t300 = -t148 / 0.2e1;
t299 = -t150 / 0.2e1;
t298 = t152 / 0.2e1;
t168 = -t176 * pkin(4) - pkin(3);
t297 = t168 / 0.2e1;
t295 = t153 * pkin(3);
t294 = pkin(6) + qJ(2);
t293 = pkin(7) + qJ(4);
t266 = t153 * t176;
t159 = t294 * t177;
t220 = t296 * t159;
t157 = t294 * t175;
t260 = t179 * t157;
t114 = t220 - t260;
t263 = t174 * t114;
t169 = -t177 * pkin(2) - pkin(1);
t203 = t150 * pkin(3) - t153 * qJ(4);
t92 = t169 + t203;
t46 = t176 * t92 - t263;
t184 = t150 * pkin(4) - pkin(7) * t266 + t46;
t102 = t176 * t114;
t47 = t174 * t92 + t102;
t95 = t174 * t153;
t35 = -pkin(7) * t95 + t47;
t14 = t178 * t35 - t180 * t184;
t268 = t150 * qJ(4);
t103 = t268 + t295;
t112 = t296 * t157 + t179 * t159;
t264 = t174 * t112;
t59 = t176 * t103 + t264;
t34 = t176 * t150 * pkin(7) + t153 * pkin(4) + t59;
t288 = t180 * t34;
t101 = t176 * t112;
t60 = t174 * t103 - t101;
t93 = t174 * t150;
t39 = pkin(7) * t93 + t60;
t289 = t178 * t39;
t77 = pkin(4) * t95 + t112;
t78 = -pkin(4) * t93 + t114;
t84 = t152 * t150;
t1 = (t288 - t289) * t150 - t14 * t153 + t78 * t67 - t77 * t84;
t292 = t1 * qJD(1);
t291 = t153 * t67;
t290 = t178 * t34;
t287 = t180 * t39;
t15 = t178 * t184 + t180 * t35;
t88 = t148 * t150;
t129 = t153 * t262;
t89 = t153 * t257 - t129;
t2 = -(t287 + t290) * t150 - t15 * t153 + t78 * t89 + t77 * t88;
t286 = t2 * qJD(1);
t202 = -t174 * t47 - t176 * t46;
t279 = t60 * t174;
t280 = t59 * t176;
t3 = (t279 + t280) * t153 + t202 * t150;
t285 = t3 * qJD(1);
t156 = t293 * t174;
t158 = t293 * t176;
t113 = -t178 * t156 + t180 * t158;
t181 = t113 * t299 + t89 * t297 + t77 * t298;
t194 = -t289 / 0.2e1 + t288 / 0.2e1;
t4 = -t181 + t194;
t284 = t4 * qJD(1);
t283 = t46 * t174;
t282 = t47 * t176;
t111 = t180 * t156 + t178 * t158;
t182 = t111 * t150 / 0.2e1 - t67 * t297 + t77 * t300;
t195 = -t290 / 0.2e1 - t287 / 0.2e1;
t5 = -t182 + t195;
t281 = t5 * qJD(1);
t8 = t112 * t114 + t46 * t59 + t47 * t60;
t278 = t8 * qJD(1);
t277 = t84 * t150;
t276 = t88 * t150;
t275 = t89 * t153;
t9 = t14 * t150 - t67 * t77;
t274 = t9 * qJD(1);
t273 = qJD(1) * t89;
t10 = -t15 * t150 + t77 * t89;
t272 = t10 * qJD(1);
t11 = (t46 + t263) * t153 + (t59 - t264) * t150;
t271 = t11 * qJD(1);
t12 = (-t47 + t102) * t153 + (-t60 - t101) * t150;
t270 = t12 * qJD(1);
t13 = t112 * t153 + (-t282 + t283) * t150;
t269 = t13 * qJD(1);
t267 = t153 * t148;
t209 = -t170 / 0.2e1 - t172 / 0.2e1;
t183 = t209 * t268 - t295 / 0.2e1;
t192 = -t280 / 0.2e1 - t279 / 0.2e1;
t16 = t183 + t192;
t265 = t16 * qJD(1);
t20 = t202 * t153;
t256 = t20 * qJD(1);
t23 = -t67 * t88 + t89 * t84;
t255 = t23 * qJD(1);
t27 = t277 - t291;
t254 = t27 * qJD(1);
t28 = t277 + t291;
t253 = t28 * qJD(1);
t29 = t275 + t276;
t252 = t29 * qJD(1);
t30 = t275 - t276;
t251 = t30 * qJD(1);
t53 = (t298 + t190) * t150;
t250 = t53 * qJD(1);
t249 = t53 * qJD(3);
t54 = (t298 - t190) * t150;
t50 = t54 * qJD(1);
t248 = t54 * qJD(3);
t213 = t262 / 0.2e1;
t189 = -t257 / 0.2e1 + t213;
t55 = (t148 / 0.2e1 + t189) * t150;
t247 = t55 * qJD(1);
t56 = (t300 + t189) * t150;
t246 = t56 * qJD(1);
t210 = t257 / 0.2e1;
t214 = t148 * t299;
t57 = t150 * t210 + t262 * t299 + t214;
t245 = t57 * qJD(1);
t61 = t160 * t301;
t244 = t61 * qJD(1);
t243 = t267 * qJD(1);
t204 = t209 * t153;
t73 = t204 - t145;
t241 = t73 * qJD(1);
t76 = t304 * t174;
t240 = t76 * qJD(1);
t82 = t146 - t301;
t239 = t82 * qJD(1);
t238 = t95 * qJD(1);
t97 = t160 * t150;
t237 = t97 * qJD(1);
t98 = t304 * t176;
t236 = t98 * qJD(1);
t161 = t175 ^ 2 + t177 ^ 2;
t235 = qJD(4) * t150;
t234 = qJD(5) * t150;
t233 = t114 * qJD(3);
t232 = t145 * qJD(1);
t231 = t148 * qJD(3);
t141 = t148 * qJD(5);
t142 = t150 * qJD(3);
t229 = t152 * qJD(3);
t228 = t152 * qJD(5);
t227 = t153 * qJD(1);
t226 = t153 * qJD(3);
t155 = t161 * qJ(2);
t225 = t155 * qJD(1);
t224 = t160 * qJD(3);
t223 = t161 * qJD(1);
t222 = t267 * t230;
t218 = t153 * t235;
t217 = t150 * t227;
t216 = t150 * t226;
t215 = t176 * t227;
t208 = qJD(1) * t169 + qJD(2);
t207 = -qJD(5) - t230;
t206 = qJD(3) * t168 + qJD(4);
t205 = t150 * t215;
t201 = -t59 * t174 + t60 * t176;
t22 = t148 * t67 - t152 * t89;
t24 = t67 ^ 2 - t89 ^ 2;
t200 = t24 * qJD(1) + t22 * qJD(3);
t81 = t148 ^ 2 - t152 ^ 2;
t199 = t22 * qJD(1) + t81 * qJD(3);
t198 = -t231 - t242;
t40 = t129 / 0.2e1 + (t213 - t257) * t153;
t197 = t40 * qJD(1) - t229;
t154 = t160 * qJ(4);
t185 = -t260 / 0.2e1 + t220 / 0.2e1;
t193 = -t283 / 0.2e1 + t282 / 0.2e1;
t18 = t185 - t193;
t196 = t18 * qJD(1) - t154 * qJD(3);
t26 = -t298 * t67 + t89 * t300;
t191 = t26 * qJD(3) - t273 * t67;
t188 = -t26 * qJD(1) + t148 * t229;
t187 = t145 * qJD(5) + t217;
t139 = t145 * qJD(3);
t72 = t204 + t145;
t58 = t189 * t150 + t214;
t52 = t53 * qJD(5);
t51 = t54 * qJD(5);
t43 = -t129 / 0.2e1 + (t210 + t189) * t153;
t38 = -t228 - t50;
t25 = t26 * qJD(5);
t21 = t22 * qJD(5);
t19 = t185 + t193;
t17 = t183 - t192;
t7 = t181 + t194;
t6 = t182 + t195;
t31 = [0, 0, 0, 0, 0, t161 * qJD(2), t155 * qJD(2), -t216, t82 * qJD(3), 0, 0, 0, t169 * t226, -t169 * t142, t76 * qJD(2) + t11 * qJD(3) - t176 * t218, t98 * qJD(2) + t12 * qJD(3) + t174 * t218, -t3 * qJD(3) + t61 * qJD(4), t13 * qJD(2) + t8 * qJD(3) + t20 * qJD(4), (qJD(3) * t88 - t302) * t89, t23 * qJD(3) + t24 * qJD(5), t29 * qJD(3) - t234 * t67, t27 * qJD(3) - t234 * t89, t216, t28 * qJD(2) + t1 * qJD(3) + t10 * qJD(5) + t235 * t267, t30 * qJD(2) + t2 * qJD(3) + t9 * qJD(5) + t235 * t67; 0, 0, 0, 0, 0, t223, t225, 0, 0, 0, 0, 0, 0, 0, t240, t236, 0, t17 * qJD(3) + t72 * qJD(4) + t269, 0, 0, 0, 0, 0, -t52 + t253, -t56 * qJD(5) + t251; 0, 0, 0, 0, 0, 0, 0, -t217, t239, -t142, -t226, 0, t169 * t227 - t233, t112 * qJD(3) - t169 * t230, t271 + (t174 * t203 - t102) * qJD(3) - t93 * qJD(4), t174 * t233 + t270 + (qJD(3) * t203 - t235) * t176, qJD(3) * t201 - t285, t278 + t17 * qJD(2) + (-t114 * pkin(3) + qJ(4) * t201) * qJD(3) + t19 * qJD(4), t25 + (t229 + t273) * t88, t255 + (-t88 * t148 + t152 * t84) * qJD(3) + t21, t58 * qJD(5) + t152 * t226 + t252, -t148 * t226 + t254 - t52, t187, t292 + (-t111 * t153 + t78 * t148 - t168 * t84) * qJD(3) - t54 * qJD(4) + t7 * qJD(5), t286 + (-t113 * t153 + t78 * t152 + t168 * t88) * qJD(3) - t57 * qJD(4) + t6 * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t93 * qJD(3) - t205, (-qJD(3) * t176 + t174 * t227) * t150, t244, t72 * qJD(2) + t19 * qJD(3) + t256, 0, 0, 0, 0, 0, t43 * qJD(5) + t222 - t248, -t57 * qJD(3) + t221; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t191, t200, t58 * qJD(3) + t207 * t67, t207 * t89 - t249, t139, -t53 * qJD(2) + t7 * qJD(3) + t43 * qJD(4) - t15 * qJD(5) + t272, -t56 * qJD(2) + t6 * qJD(3) + t14 * qJD(5) + t274; 0, 0, 0, 0, 0, -t223, -t225, 0, 0, 0, 0, 0, t226, -t142, t176 * t226 - t240, -t95 * qJD(3) - t236, t97 * qJD(3), -t16 * qJD(3) + t73 * qJD(4) - t269, 0, 0, 0, 0, 0, -qJD(3) * t267 - t253 - t51, -t67 * qJD(3) - t57 * qJD(5) - t251; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t227, -t230, t215, -t238, t237, -t265, 0, 0, 0, 0, 0, -t243, -t242; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t241, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t38, t141 - t245; 0, 0, 0, 0, 0, 0, 0, t217, -t239, 0, 0, 0, -t208 * t153, t208 * t150, -qJD(2) * t266 - t271, t95 * qJD(2) - t270, -t97 * qJD(2) + t285, t16 * qJD(2) - t18 * qJD(4) - t278, -t88 * t273 + t25, t21 - t255, -t55 * qJD(5) - t252, -t51 - t254, -t187, qJD(2) * t267 - t53 * qJD(4) - t4 * qJD(5) - t292, t67 * qJD(2) - t56 * qJD(4) - t5 * qJD(5) - t286; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t227, t230, -t215, t238, -t237, t265, 0, 0, 0, 0, 0, t243, t242; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t160 * qJD(4), t154 * qJD(4), -t148 * t228, t81 * qJD(5), 0, 0, 0, t168 * t228, -t168 * t141; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t224, -t196, 0, 0, 0, 0, 0, -t250, -t246; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t188, t199, -t141 - t247, t38, -t232, -t113 * qJD(5) + t168 * t229 - t284, t111 * qJD(5) - t168 * t231 - t281; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t205, -t174 * t217, -t244, -t73 * qJD(2) + t18 * qJD(3) - t256, 0, 0, 0, 0, 0, -t40 * qJD(5) - t222 + t249, t56 * qJD(3) - t221 - t302; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t241, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t224, t196, 0, 0, 0, 0, 0, t228 + t250, -t141 + t246; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t197, t198; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t191, -t200, t55 * qJD(3) + t221, t230 * t89 + t248, t139, t54 * qJD(2) + t4 * qJD(3) + t40 * qJD(4) - t272, t57 * qJD(2) + t5 * qJD(3) + qJD(4) * t67 - t274; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t50, t245; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t188, -t199, t247, t50, t232, -t152 * t206 + t284, t148 * t206 + t281; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t197, -t198; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t31;