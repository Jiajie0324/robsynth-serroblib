% Calculate inertial parameters regressor of coriolis joint torque vector for
% S6RPPRRR3
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [10x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,d1,d4,d5,d6,theta2]';
% 
% Output:
% tauc_reg [6x(6*10)]
%   inertial parameter regressor of coriolis joint torque vector

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 02:24
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function tauc_reg = S6RPPRRR3_coriolisvecJ_fixb_reg2_slag_vp(qJ, qJD, pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(10,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RPPRRR3_coriolisvecJ_fixb_reg2_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RPPRRR3_coriolisvecJ_fixb_reg2_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [10 1]), ...
  'S6RPPRRR3_coriolisvecJ_fixb_reg2_slag_vp: pkin has to be [10x1] (double)');

%% Symbolic Calculation
% From coriolisvec_joint_fixb_regressor_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 02:23:48
% EndTime: 2019-03-09 02:23:56
% DurationCPUTime: 3.22s
% Computational Cost: add. (5464->383), mult. (11210->538), div. (0->0), fcn. (6935->8), ass. (0->195)
t146 = sin(qJ(5));
t149 = cos(qJ(5));
t204 = t149 * qJD(4);
t150 = cos(qJ(4));
t216 = qJD(1) * t150;
t109 = t146 * t216 - t204;
t194 = t149 * t216;
t215 = qJD(4) * t146;
t111 = t194 + t215;
t145 = sin(qJ(6));
t148 = cos(qJ(6));
t168 = t109 * t145 - t148 * t111;
t50 = t148 * t109 + t111 * t145;
t257 = t50 * t168;
t147 = sin(qJ(4));
t217 = qJD(1) * t147;
t195 = t146 * t217;
t258 = -pkin(9) - pkin(8);
t196 = qJD(5) * t258;
t175 = pkin(4) * t150 + pkin(8) * t147;
t114 = t175 * qJD(1);
t131 = -cos(pkin(10)) * pkin(1) - pkin(2) - pkin(7);
t106 = qJD(1) * t131 + qJD(3);
t263 = -t147 * qJD(2) + t106 * t150;
t45 = t146 * t114 + t149 * t263;
t273 = -pkin(9) * t195 + t146 * t196 - t45;
t227 = t147 * t149;
t199 = pkin(9) * t227;
t44 = t149 * t114 - t146 * t263;
t272 = -t149 * t196 + (pkin(5) * t150 + t199) * qJD(1) + t44;
t209 = qJD(5) * t150;
t186 = t149 * t209;
t214 = qJD(4) * t147;
t192 = t146 * t214;
t159 = -t186 + t192;
t271 = t168 ^ 2 - t50 ^ 2;
t202 = qJD(1) * qJD(4);
t134 = t150 * t202;
t203 = t150 * qJD(2);
t78 = t106 * t147 + t203;
t69 = qJD(4) * pkin(8) + t78;
t133 = sin(pkin(10)) * pkin(1) + qJ(3);
t174 = pkin(4) * t147 - pkin(8) * t150;
t103 = t133 + t174;
t81 = t103 * qJD(1);
t40 = t146 * t81 + t149 * t69;
t70 = t263 * qJD(4);
t107 = qJD(4) * t175 + qJD(3);
t85 = t107 * qJD(1);
t16 = -qJD(5) * t40 - t146 * t70 + t149 * t85;
t187 = t146 * t209;
t189 = t147 * t204;
t160 = t187 + t189;
t201 = qJD(4) * qJD(5);
t75 = qJD(1) * t160 - t149 * t201;
t10 = pkin(5) * t134 + t75 * pkin(9) + t16;
t210 = qJD(5) * t149;
t211 = qJD(5) * t146;
t15 = t146 * t85 + t149 * t70 + t81 * t210 - t211 * t69;
t221 = qJD(1) * t186 + t146 * t201;
t162 = qJD(1) * t192 - t221;
t11 = pkin(9) * t162 + t15;
t29 = -pkin(9) * t109 + t40;
t243 = t148 * t29;
t132 = qJD(5) + t217;
t39 = -t146 * t69 + t149 * t81;
t28 = -pkin(9) * t111 + t39;
t25 = pkin(5) * t132 + t28;
t6 = t145 * t25 + t243;
t2 = -qJD(6) * t6 + t148 * t10 - t145 * t11;
t68 = -qJD(4) * pkin(4) - t263;
t46 = pkin(5) * t109 + t68;
t270 = t46 * t168 + t2;
t128 = qJD(6) + t132;
t207 = qJD(6) * t148;
t208 = qJD(6) * t145;
t19 = t109 * t207 + t111 * t208 - t145 * t162 + t148 * t75;
t269 = t128 * t50 - t19;
t1 = t148 * (qJD(6) * t25 + t11) + t145 * t10 - t29 * t208;
t268 = t46 * t50 - t1;
t156 = qJD(6) * t168 + t145 * t75 + t148 * t162;
t267 = -t128 * t168 + t156;
t266 = -t132 * t39 + t15;
t265 = -t40 * t132 - t16;
t226 = t148 * t149;
t230 = t145 * t146;
t112 = -t226 + t230;
t90 = t112 * t147;
t113 = t145 * t149 + t146 * t148;
t88 = t113 * t147;
t264 = t147 * t221;
t141 = t147 ^ 2;
t142 = t150 ^ 2;
t220 = t141 - t142;
t200 = qJD(5) + qJD(6);
t171 = t146 * t39 - t149 * t40;
t71 = t78 * qJD(4);
t262 = qJD(4) * t171 + t71;
t261 = -(qJD(1) * t142 - t132 * t147) * t204 + t132 * t187;
t237 = t71 * t150;
t260 = (t147 * t263 - t150 * t78) * qJD(4) - t70 * t147 + t237;
t259 = 0.2e1 * qJD(3);
t124 = t258 * t146;
t125 = t258 * t149;
t73 = t124 * t145 - t125 * t148;
t256 = qJD(6) * t73 + t273 * t145 + t272 * t148;
t72 = t124 * t148 + t125 * t145;
t255 = -qJD(6) * t72 + t272 * t145 - t273 * t148;
t59 = t200 * t113;
t33 = -t145 * t192 + t148 * t189 + t150 * t59;
t91 = t112 * t150;
t254 = -t156 * t91 + t33 * t50;
t225 = t149 * t150;
t228 = t146 * t150;
t35 = -t208 * t228 + (t200 * t225 - t192) * t148 - t160 * t145;
t89 = t113 * t150;
t253 = -t35 * t128 - t89 * t134;
t213 = qJD(4) * t150;
t252 = t112 * qJD(1) - t113 * t213 + t200 * t90;
t251 = -t19 * t147 - t168 * t213;
t250 = t145 * t195 - t148 * t210 - t149 * t207 + t200 * t230 - t217 * t226;
t100 = t113 * qJD(1);
t249 = t147 * t100 + t59;
t248 = t111 * t213 - t75 * t147;
t246 = t145 * t29;
t245 = t146 * t68;
t244 = t147 * t68;
t242 = t149 * t39;
t241 = t149 * t68;
t239 = t71 * t146;
t238 = t71 * t149;
t236 = qJD(4) * t91 + t200 * t88 + t100;
t108 = t131 * t227;
t55 = t146 * t103 + t108;
t234 = t109 * t132;
t233 = t111 * t109;
t232 = t132 * t146;
t231 = t132 * t149;
t229 = t146 * t147;
t224 = t150 * t109;
t151 = qJD(4) ^ 2;
t223 = t151 * t147;
t222 = t151 * t150;
t152 = qJD(1) ^ 2;
t219 = -t151 - t152;
t117 = qJD(1) * t133;
t218 = qJD(1) * t146;
t212 = qJD(5) * t109;
t206 = t111 * qJD(5);
t205 = t117 * qJD(1);
t198 = t131 * t229;
t197 = t150 * t152 * t147;
t193 = t131 * t213;
t191 = t109 * t214;
t190 = t111 * t214;
t188 = t150 * t206;
t185 = -t131 * t146 + pkin(5);
t182 = qJD(1) * t55 + t40;
t180 = -t75 + t212;
t179 = -t111 + t215;
t178 = qJD(5) * t147 + qJD(1);
t56 = t203 + (-pkin(5) * t218 + t106) * t147;
t176 = pkin(5) * t211 - t56;
t173 = -t168 * t35 - t19 * t89;
t87 = t149 * t103;
t43 = -pkin(9) * t225 + t147 * t185 + t87;
t47 = -pkin(9) * t228 + t55;
t21 = -t145 * t47 + t148 * t43;
t22 = t145 * t43 + t148 * t47;
t172 = -t146 * t40 - t242;
t165 = t117 * t259;
t164 = t159 * t132;
t163 = t147 * t156 - t213 * t50;
t161 = t128 * t33 + t134 * t91;
t30 = -qJD(5) * t198 + t103 * t210 + t146 * t107 + t149 * t193;
t158 = t162 * t149;
t155 = qJD(5) * t172 - t16 * t146 + t15 * t149;
t153 = qJD(4) * t68 + t155;
t138 = -pkin(5) * t149 - pkin(4);
t126 = t147 * t134;
t96 = t149 * t107;
t92 = (pkin(5) * t146 - t131) * t150;
t60 = -pkin(5) * t159 + t131 * t214;
t57 = t150 * t158;
t54 = t87 - t198;
t41 = t221 * pkin(5) + t56 * qJD(4);
t31 = -t55 * qJD(5) - t146 * t193 + t96;
t24 = pkin(9) * t159 + t30;
t23 = t96 + (-t108 + (pkin(9) * t150 - t103) * t146) * qJD(5) + (t150 * t185 + t199) * qJD(4);
t8 = t148 * t28 - t246;
t7 = -t145 * t28 - t243;
t5 = t148 * t25 - t246;
t4 = -qJD(6) * t22 - t145 * t24 + t148 * t23;
t3 = qJD(6) * t21 + t145 * t23 + t148 * t24;
t9 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, qJD(1) * t259, t165, -0.2e1 * t126, 0.2e1 * t220 * t202, -t223, 0.2e1 * t126, -t222, 0, t117 * t213 - t131 * t223 + (t133 * t213 + t147 * t259) * qJD(1), -t117 * t214 - t131 * t222 + (-t133 * t214 + t150 * t259) * qJD(1), t260, -t131 * t260 + t165, -t111 * t160 - t225 * t75, t57 + (-t188 + t191) * t149 + (t190 + (t75 + t212) * t150) * t146, t248 - t261, -t109 * t159 - t162 * t228, -t264 + (t220 * t218 - t224) * qJD(4) + t164, t132 * t213 + t126, t31 * t132 + (t16 + (t109 * t131 - t245) * qJD(4)) * t147 + (-t131 * t221 + t239 + t68 * t210 + (t39 + (t54 + t198) * qJD(1)) * qJD(4)) * t150, -t132 * t30 + (-t15 + (t111 * t131 - t241) * qJD(4)) * t147 + (-qJD(4) * t182 + t131 * t75 - t211 * t68 + t238) * t150, -t30 * t109 - t55 * t221 - t31 * t111 + t54 * t75 + (t146 * t182 + t242) * t214 + (qJD(5) * t171 - t15 * t146 - t16 * t149) * t150, t15 * t55 + t16 * t54 + t40 * t30 + t39 * t31 + (t214 * t68 - t237) * t131, t168 * t33 + t19 * t91, -t173 + t254, -t161 + t251, -t156 * t89 + t35 * t50, t163 + t253, t128 * t213 + t126, t4 * t128 + t2 * t147 - t92 * t156 + t46 * t35 + t41 * t89 + t60 * t50 + (qJD(1) * t21 + t5) * t213, -t1 * t147 - t3 * t128 - t92 * t19 - t46 * t33 - t41 * t91 - t60 * t168 + (-qJD(1) * t22 - t6) * t213, -t1 * t89 + t156 * t22 + t168 * t4 + t19 * t21 + t2 * t91 - t3 * t50 + t33 * t5 - t35 * t6, t1 * t22 + t2 * t21 + t3 * t6 + t4 * t5 + t41 * t92 + t46 * t60; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t222, t223, 0, t71 * t147 + t70 * t150 + (-t147 * t78 - t150 * t263) * qJD(4), 0, 0, 0, 0, 0, 0, t264 + (t224 + (-t142 - t141) * t218) * qJD(4) + t164, t248 + t261, t57 + (t188 + t191) * t149 + (t150 * t180 - t190) * t146, t262 * t147 + t153 * t150, 0, 0, 0, 0, 0, 0, -t163 + t253, t161 + t251, t173 + t254, -t1 * t91 + t147 * t41 - t2 * t89 + t213 * t46 - t33 * t6 - t35 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t152, -t205, 0, 0, 0, 0, 0, 0, t219 * t147, t219 * t150, 0, -t260 - t205, 0, 0, 0, 0, 0, 0, -t150 * t221 - t178 * t231 + (t109 * t147 - t132 * t228) * qJD(4), t150 * t75 + t178 * t232 + (-t132 * t225 + (t111 - t194) * t147) * qJD(4) (t109 * t178 + t248) * t146 + (-t109 * t213 + t111 * t178 + t147 * t162) * t149, t172 * qJD(1) + t153 * t147 - t262 * t150, 0, 0, 0, 0, 0, 0, t150 * t156 + t252 * t128 + (t147 * t50 - t216 * t88) * qJD(4), t150 * t19 + t236 * t128 + (-t147 * t168 + t216 * t90) * qJD(4), -t156 * t90 + t168 * t252 - t88 * t19 + t236 * t50, -t1 * t90 - t41 * t150 - t2 * t88 + t46 * t214 - t236 * t6 + t252 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t197, -t220 * t152, 0, -t197, 0, 0, -t150 * t205, t147 * t205, 0, 0, t111 * t231 - t75 * t146 (-t75 - t234) * t149 + (t179 * t217 - t206 - t221) * t146, t132 * t210 + (t132 * t227 + t150 * t179) * qJD(1), t109 * t232 + t158, -t132 * t211 + (-t132 * t229 + (t109 + t204) * t150) * qJD(1), -t132 * t216, -pkin(4) * t221 - t238 - t44 * t132 - t78 * t109 + (-pkin(8) * t231 + t245) * qJD(5) + (-t39 * t150 + (qJD(4) * t174 + t244) * t146) * qJD(1), pkin(4) * t75 - t111 * t78 + t132 * t45 + t239 + (pkin(8) * t232 + t241) * qJD(5) + (t150 * t40 + (-pkin(8) * t213 + t244) * t149) * qJD(1), t45 * t109 + t44 * t111 + (pkin(8) * t180 + t265) * t146 + ((t162 + t206) * pkin(8) + t266) * t149, -t71 * pkin(4) + pkin(8) * t155 - t39 * t44 - t40 * t45 - t68 * t78, -t19 * t113 + t168 * t250, t19 * t112 + t113 * t156 + t168 * t249 + t250 * t50, -t250 * t128 + (qJD(4) * t113 + t168) * t216, -t112 * t156 + t249 * t50, -t249 * t128 + (-qJD(4) * t112 + t50) * t216, -t128 * t216, t112 * t41 - t138 * t156 + t176 * t50 + t249 * t46 - t256 * t128 + (qJD(4) * t72 - t5) * t216, t113 * t41 - t138 * t19 - t176 * t168 - t250 * t46 + t255 * t128 + (-qJD(4) * t73 + t6) * t216, -t1 * t112 - t113 * t2 + t156 * t73 - t168 * t256 + t19 * t72 - t249 * t6 + t250 * t5 + t255 * t50, t1 * t73 + t138 * t41 + t176 * t46 + t2 * t72 - t255 * t6 - t256 * t5; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t233, -t109 ^ 2 + t111 ^ 2, t234 - t75, -t233, t111 * t132 + t162, t134, -t68 * t111 - t265, t109 * t68 - t266, 0, 0, -t257, t271, t269, t257, t267, t134, -t128 * t7 + (-t111 * t50 - t128 * t208 + t134 * t148) * pkin(5) + t270, t128 * t8 + (t111 * t168 - t128 * t207 - t134 * t145) * pkin(5) + t268, -t6 * t168 - t5 * t50 + t8 * t50 - t7 * t168 + (t145 * t156 + t148 * t19 + (-t145 * t168 - t148 * t50) * qJD(6)) * pkin(5), -t5 * t7 - t6 * t8 + (t1 * t145 - t111 * t46 + t148 * t2 + (-t145 * t5 + t148 * t6) * qJD(6)) * pkin(5); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t257, t271, t269, t257, t267, t134, t6 * t128 + t270, t5 * t128 + t268, 0, 0;];
tauc_reg  = t9;
