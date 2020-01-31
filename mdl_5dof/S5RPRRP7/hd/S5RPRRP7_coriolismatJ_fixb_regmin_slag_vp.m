% Calculate minimal parameter regressor of coriolis matrix for
% S5RPRRP7
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [5x1]
%   Generalized joint coordinates (joint angles)
% qJD [5x1]
%   Generalized joint velocities
% pkin [8x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,d1,d3,d4,theta2]';
% 
% Output:
% cmat_reg [(5*%NQJ)%x22]
%   minimal parameter regressor of coriolis matrix

% Quelle: HybrDyn-Toolbox
% Datum: 2019-12-31 18:46
% Revision: 9bd3e9fa678258af3b32f1bcc8622e39ff85504d (2019-12-30)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function cmat_reg = S5RPRRP7_coriolismatJ_fixb_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(5,1),zeros(5,1),zeros(8,1)}
assert(isreal(qJ) && all(size(qJ) == [5 1]), ...
  'S5RPRRP7_coriolismatJ_fixb_regmin_slag_vp: qJ has to be [5x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [5 1]), ...
  'S5RPRRP7_coriolismatJ_fixb_regmin_slag_vp: qJD has to be [5x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [8 1]), ...
  'S5RPRRP7_coriolismatJ_fixb_regmin_slag_vp: pkin has to be [8x1] (double)');

%% Symbolic Calculation
% From coriolismat_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-12-31 18:45:38
% EndTime: 2019-12-31 18:45:44
% DurationCPUTime: 2.09s
% Computational Cost: add. (2088->289), mult. (4090->397), div. (0->0), fcn. (3428->6), ass. (0->231)
t150 = sin(qJ(4));
t287 = 0.2e1 * t150;
t152 = cos(qJ(4));
t153 = cos(qJ(3));
t137 = sin(pkin(8)) * pkin(1) + pkin(6);
t246 = t137 * t150;
t138 = -cos(pkin(8)) * pkin(1) - pkin(2);
t151 = sin(qJ(3));
t268 = t151 * pkin(7);
t163 = t138 - t268;
t267 = t153 * pkin(3);
t158 = t163 - t267;
t80 = t152 * t158;
t51 = -t80 + (pkin(4) + t246) * t153;
t207 = t153 * t246;
t56 = -t80 + t207;
t208 = -t56 / 0.2e1 + t51 / 0.2e1;
t286 = t208 * t152;
t240 = t152 * t137;
t271 = t150 * pkin(3);
t50 = t150 * t163 + (-qJ(5) + t240 - t271) * t153;
t285 = -t50 / 0.2e1;
t244 = t150 * t151;
t136 = pkin(4) * t244;
t242 = t152 * qJ(5);
t72 = t136 + (t137 - t242) * t151;
t282 = t72 / 0.2e1;
t255 = qJ(5) * t150;
t273 = pkin(4) * t152;
t182 = t255 + t273;
t94 = t182 * t151;
t281 = -t94 / 0.2e1;
t110 = t137 * t244;
t280 = -t110 / 0.2e1;
t270 = t150 * pkin(4);
t116 = -t242 + t270;
t279 = t116 / 0.2e1;
t269 = t151 * pkin(3);
t272 = pkin(7) * t153;
t117 = t269 - t272;
t278 = -t117 / 0.2e1;
t277 = t150 / 0.2e1;
t276 = -t151 / 0.2e1;
t275 = t151 / 0.2e1;
t274 = -t153 / 0.2e1;
t238 = t152 * t153;
t206 = t137 * t238;
t57 = t150 * t158 + t206;
t209 = t285 + t57 / 0.2e1;
t156 = t209 * t150 + t286;
t6 = t156 * t151 + t94 * t274;
t266 = qJD(1) * t6;
t144 = t151 * pkin(4);
t241 = t152 * t117;
t187 = -t110 - t241;
t62 = -t144 + t187;
t265 = t150 * t62;
t108 = t150 * t117;
t143 = t151 * qJ(5);
t59 = -t151 * t240 + t108 + t143;
t264 = t152 * t59;
t263 = t153 * t56;
t262 = t153 * t57;
t261 = t50 * t152;
t260 = t50 * t153;
t259 = t72 * t150;
t258 = t72 * t152;
t8 = (pkin(4) * t274 - t208) * t152 + (qJ(5) * t274 - t209) * t150;
t257 = t8 * qJD(1);
t256 = t94 * t150;
t18 = t262 + (t256 + t258) * t151;
t254 = qJD(1) * t18;
t147 = t151 ^ 2;
t25 = -t147 * t246 - t263;
t253 = qJD(1) * t25;
t239 = t152 * t147;
t26 = -t137 * t239 - t262;
t252 = qJD(1) * t26;
t243 = t151 * t152;
t10 = -t57 * t243 + (t261 + (t51 - t56) * t150) * t151;
t251 = t10 * qJD(1);
t11 = -t51 * t238 - t62 * t243 + (t59 * t151 + t260) * t150;
t250 = t11 * qJD(1);
t111 = -pkin(3) - t182;
t249 = t111 * t150;
t73 = (t116 + t137) * t153;
t177 = t151 * t73 + t153 * t72;
t12 = -t50 * t151 + t177 * t152 + t153 * t59;
t248 = t12 * qJD(1);
t13 = t177 * t150 - t51 * t151 + t153 * t62;
t247 = t13 * qJD(1);
t146 = t150 ^ 2;
t245 = t146 * t153;
t19 = t94 * t243 - t72 * t244 - t263;
t237 = t19 * qJD(1);
t22 = t56 * t151 + (-t187 - 0.2e1 * t110) * t153;
t236 = t22 * qJD(1);
t23 = t108 * t153 + (-t57 + t206) * t151;
t235 = t23 * qJD(1);
t24 = t72 * t243 + t260;
t234 = t24 * qJD(1);
t233 = t56 * qJD(4);
t148 = t152 ^ 2;
t232 = t146 + t148;
t127 = t148 - t146;
t149 = t153 ^ 2;
t128 = t149 - t147;
t231 = qJD(3) * t150;
t230 = qJD(3) * t152;
t229 = qJD(4) * t150;
t228 = qJD(4) * t152;
t227 = qJD(4) * t153;
t226 = qJD(5) * t153;
t106 = t128 * t150;
t225 = t106 * qJD(1);
t107 = t149 * t152 - t239;
t224 = t107 * qJD(1);
t223 = t128 * qJD(1);
t222 = t150 * qJD(5);
t221 = t151 * qJD(1);
t220 = t151 * qJD(3);
t219 = t151 * qJD(4);
t218 = t152 * qJD(5);
t217 = t153 * qJD(1);
t216 = t153 * qJD(3);
t215 = -t144 + t280;
t214 = pkin(7) * t229;
t213 = pkin(7) * t228;
t212 = -t272 / 0.2e1;
t211 = t272 / 0.2e1;
t210 = t271 / 0.2e1;
t205 = t152 * t221;
t204 = t150 * t227;
t203 = t152 * t227;
t202 = t150 * t218;
t201 = t138 * t221;
t200 = t138 * t217;
t199 = t150 * t228;
t131 = t150 * t230;
t198 = t151 * t216;
t197 = t151 * t222;
t196 = t151 * t217;
t195 = t152 * t220;
t194 = t111 * t275;
t193 = -t243 / 0.2e1;
t192 = t280 - t144 / 0.2e1;
t191 = t146 / 0.2e1 - t148 / 0.2e1;
t83 = (-0.1e1 / 0.2e1 + t191) * t151;
t190 = qJD(1) * t83 - t131;
t96 = t191 * t151;
t189 = qJD(1) * t96 - t131;
t114 = t150 * qJD(1) * t239;
t188 = qJD(3) * t96 + t114;
t135 = -qJD(4) + t217;
t186 = t150 * t205;
t185 = t150 * t195;
t184 = t116 * t275 + t282;
t183 = -t267 - t268;
t181 = -t111 * t153 + t268;
t4 = (t261 / 0.2e1 - t73 / 0.2e1 + t51 * t277) * t153 + (t264 / 0.2e1 + t282 + t265 / 0.2e1) * t151;
t5 = t50 * t59 + t51 * t62 + t72 * t73;
t180 = t5 * qJD(1) + t4 * qJD(2);
t7 = -t50 * t56 + t51 * t57 + t72 * t94;
t179 = t7 * qJD(1) + t6 * qJD(2);
t178 = t264 + t265;
t74 = (-0.1e1 + t232) * t153 * t151;
t176 = t4 * qJD(1) + t74 * qJD(2);
t121 = t150 * t211;
t98 = -t108 / 0.2e1;
t15 = t121 - t256 / 0.2e1 - t258 / 0.2e1 - t143 + t98 + (t249 / 0.2e1 + (-t116 / 0.2e1 + t137 / 0.2e1) * t152) * t151;
t69 = t111 * t152 + t116 * t150;
t175 = -qJD(1) * t15 + qJD(3) * t69;
t170 = t211 + t194;
t160 = t278 + t170;
t166 = t184 * t150;
t17 = t166 + (t281 + t160) * t152 + t215;
t70 = t116 * t152 - t249;
t174 = -qJD(1) * t17 + qJD(3) * t70;
t173 = t135 * t151;
t172 = t211 - t269 / 0.2e1;
t171 = -t59 * qJ(5) / 0.2e1 + t62 * pkin(4) / 0.2e1;
t169 = -t270 / 0.2e1 + t242 / 0.2e1;
t64 = (t278 + t172) * t152;
t168 = pkin(3) * t231 - qJD(1) * t64;
t122 = t150 * t212;
t97 = t108 / 0.2e1;
t63 = t151 * t210 + t122 + t97;
t167 = pkin(3) * t230 - qJD(1) * t63;
t20 = t259 / 0.2e1 + t160 * t152 + t192;
t165 = qJD(1) * t20 + t111 * t231;
t164 = t152 * t173;
t105 = t127 * t147;
t162 = qJD(1) * t105 + 0.2e1 * t185;
t161 = -qJD(3) * t127 + 0.2e1 * t186;
t154 = t156 * pkin(7) + t72 * t279 + t94 * t111 / 0.2e1;
t3 = t154 + t171;
t60 = (t279 + t169) * t153;
t159 = t111 * t116 * qJD(3) + t3 * qJD(1) - t60 * qJD(2);
t157 = -t182 * qJD(4) + t218;
t113 = t147 * t148 + t149;
t155 = t113 * qJD(1) + t185 - t227;
t140 = t148 * t153;
t139 = t220 / 0.2e1;
t134 = t152 * t216;
t133 = t152 * t217;
t132 = t150 * t220;
t115 = t152 * t197;
t112 = t135 * qJ(5);
t104 = -t133 + t228;
t101 = (t217 - qJD(4) / 0.2e1) * t151;
t99 = t241 / 0.2e1;
t92 = -t132 + t203;
t91 = t150 * t216 + t152 * t219;
t90 = -t195 - t204;
t89 = t150 * t219 - t134;
t88 = t146 * qJD(3) + t186;
t87 = t96 * qJD(4);
t84 = t146 * t276 + t148 * t275 + t276;
t79 = -t150 * t196 + t134;
t78 = t150 * t173;
t61 = t116 * t274 + t169 * t153;
t54 = t57 * qJD(4);
t32 = t172 * t152 + t110 + t99;
t31 = t122 + t98 + (t210 + t240) * t151;
t21 = t152 * t212 + t111 * t193 - t259 / 0.2e1 - t241 / 0.2e1 + t192;
t16 = t99 + t166 + (t281 + t170) * t152 - t215;
t14 = t121 + t143 + t137 * t193 + t97 - t184 * t152 + (t194 + t281) * t150;
t9 = t150 * t285 + t57 * t277 + (-t255 / 0.2e1 - t273 / 0.2e1) * t153 + t286;
t2 = t154 - t171;
t1 = qJD(3) * t4 + qJD(4) * t6;
t27 = [0, 0, 0, 0, t198, t128 * qJD(3), 0, 0, 0, t138 * t220, t138 * t216, -t147 * t199 + t148 * t198, -t105 * qJD(4) - 0.2e1 * t153 * t185, -t107 * qJD(3) + t151 * t204, t106 * qJD(3) + t151 * t203, -t198, -qJD(3) * t22 - qJD(4) * t26, qJD(3) * t23 + qJD(4) * t25, qJD(3) * t13 + qJD(4) * t18 - t147 * t202, -t11 * qJD(3) - t10 * qJD(4) + t153 * t197, -qJD(3) * t12 - qJD(4) * t19 + qJD(5) * t113, qJD(3) * t5 + qJD(4) * t7 - qJD(5) * t24; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, t196, t223, t216, -t220, 0, -t137 * t216 + t201, t137 * t220 + t200, -t87 + (t148 * t221 + t131) * t153, (t140 - t245) * qJD(3) + (-qJD(4) - t217) * t243 * t287, t132 - t224, t195 + t225, -t101, -t236 + (t150 * t183 - t206) * qJD(3) + t32 * qJD(4), t235 + (t152 * t183 + t207) * qJD(3) + t31 * qJD(4), t247 + (-t150 * t181 - t73 * t152) * qJD(3) + t16 * qJD(4) + t84 * qJD(5), qJD(3) * t178 + t9 * qJD(4) - t250, -t248 + (-t73 * t150 + t152 * t181) * qJD(3) + t14 * qJD(4) + t115, (pkin(7) * t178 + t111 * t73) * qJD(3) + t2 * qJD(4) + t21 * qJD(5) + t180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t188, -t162, t78, t164, t139, qJD(3) * t32 - t252 - t54, qJD(3) * t31 + t233 + t253, qJD(3) * t16 + t254 - t54, -t251 + t9 * qJD(3) + (-t151 * t242 + t136) * qJD(4) - t197, t14 * qJD(3) - t226 - t233 - t237, t2 * qJD(3) + (-pkin(4) * t57 - qJ(5) * t56) * qJD(4) + t50 * qJD(5) + t179; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t84 - t114, t78, t155, qJD(3) * t21 + qJD(4) * t50 - t234; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t74 * qJD(3); 0, 0, 0, 0, 0, 0, 0, 0, 0, -t220, -t216, 0, 0, 0, 0, 0, t90, -t92, t90, (t140 + t245) * qJD(3), t92, t111 * t220 + t61 * qJD(4) + (pkin(7) * qJD(3) * t232 + t222) * t153 + t176; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t91, t89, -t91, 0, -t89, qJD(3) * t61 - qJD(4) * t94 + t151 * t218 + t266; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t91; 0, 0, 0, 0, -t196, -t223, 0, 0, 0, -t201, -t200, -t148 * t196 - t87, t164 * t287, -t203 + t224, t204 - t225, t101, qJD(4) * t64 + t236, qJD(4) * t63 - t235, qJD(4) * t17 - qJD(5) * t83 - t247, -t8 * qJD(4) - t153 * t218 + t250, qJD(4) * t15 + t115 + t248, qJD(4) * t3 - qJD(5) * t20 - t180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -qJD(4) * t60 - t176; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t199, t127 * qJD(4), 0, 0, 0, -pkin(3) * t229, -pkin(3) * t228, -qJD(4) * t70 + t202, 0, -qJD(4) * t69 + qJD(5) * t146, (qJD(4) * t116 - t222) * t111; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t189, -t161, t104, t135 * t150, -t221 / 0.2e1, -t168 - t213, -t167 + t214, -t174 - t213, t157 - t257, -t175 - t214, pkin(7) * t157 + t159; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t190, t104, t88, -t165 + t213; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t188, t162, t79, (-t205 - t231) * t153, t139, -qJD(3) * t64 + t252, -qJD(3) * t63 - t253, -qJD(3) * t17 - t254, qJD(3) * t8 + t251, -t15 * qJD(3) - t226 + t237, -qJ(5) * t226 - t3 * qJD(3) - t179; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t60 - t266; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t189, t161, t133, -t150 * t217, t221 / 0.2e1, t168, t167, t174, t257, t175, -t159; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(5), qJ(5) * qJD(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t135, -t112; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(3) * t83 + t114, t79, -t155, qJ(5) * t227 + t20 * qJD(3) + t234; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t190, t133, -t88, t165; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t135, t112; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
cmat_reg = t27;