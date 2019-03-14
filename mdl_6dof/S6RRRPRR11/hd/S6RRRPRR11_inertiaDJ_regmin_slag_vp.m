% Calculate minimal parameter regressor of joint inertia matrix time derivative for
% S6RRRPRR11
% Use Code from Maple symbolic Code Generation
% 
% Input:
% qJ [6x1]
%   Generalized joint coordinates (joint angles)
% qJD [6x1]
%   Generalized joint velocities
% pkin [11x1]
%   kinematic parameters (e.g. lengths of the links)
%   pkin=[a2,a3,a4,a5,a6,alpha2,d1,d2,d3,d5,d6]';
% 
% Output:
% MMD_reg [((6+1)*6/2)x35]
%   minimal parameter regressor of inerta matrix time derivative
%   (only lower left triangular matrix (including diagonal) due to symmetry

% Quelle: HybrDyn-Toolbox
% Datum: 2019-03-09 19:37
% Revision: 8e0af74c1e634ead9bab9e082796ada77f031ee9 (2019-03-08)
% Moritz Schappler, moritz.schappler@imes.uni-hannover.de
% (C) Institut für Mechatronische Systeme, Universität Hannover

function MMD_reg = S6RRRPRR11_inertiaDJ_regmin_slag_vp(qJ, qJD, ...
  pkin)
%% Coder Information
%#codegen
%$cgargs {zeros(6,1),zeros(6,1),zeros(11,1)}
assert(isreal(qJ) && all(size(qJ) == [6 1]), ...
  'S6RRRPRR11_inertiaDJ_regmin_slag_vp: qJ has to be [6x1] (double)');
assert(isreal(qJD) && all(size(qJD) == [6 1]), ...
  'S6RRRPRR11_inertiaDJ_regmin_slag_vp: qJD has to be [6x1] (double)');
assert(isreal(pkin) && all(size(pkin) == [11 1]), ...
  'S6RRRPRR11_inertiaDJ_regmin_slag_vp: pkin has to be [11x1] (double)');

%% Symbolic Calculation
% From inertiaD_joint_joint_fixb_regressor_minpar_matlab.m
% OptimizationMode: 2
% StartTime: 2019-03-09 19:34:14
% EndTime: 2019-03-09 19:34:26
% DurationCPUTime: 3.85s
% Computational Cost: add. (4351->360), mult. (11561->650), div. (0->0), fcn. (11174->10), ass. (0->182)
t150 = cos(qJ(6));
t143 = t150 ^ 2;
t146 = sin(qJ(6));
t215 = t146 ^ 2 - t143;
t245 = qJD(6) * t215;
t249 = 0.2e1 * t245;
t148 = sin(qJ(3));
t144 = sin(pkin(6));
t152 = cos(qJ(2));
t213 = qJD(2) * t152;
t197 = t144 * t213;
t145 = cos(pkin(6));
t151 = cos(qJ(3));
t149 = sin(qJ(2));
t220 = t144 * t149;
t96 = t145 * t148 + t151 * t220;
t67 = qJD(3) * t96 + t148 * t197;
t201 = t148 * t220;
t68 = -qJD(3) * t201 + (qJD(3) * t145 + t197) * t151;
t219 = t144 * t152;
t204 = pkin(8) * t219;
t238 = pkin(1) * t149;
t91 = (t145 * t238 + t204) * qJD(2);
t32 = t67 * pkin(3) - t68 * qJ(4) - t96 * qJD(4) + t91;
t248 = -t151 * pkin(3) - t148 * qJ(4);
t147 = sin(qJ(5));
t239 = cos(qJ(5));
t193 = qJD(3) * t239;
t212 = qJD(3) * t148;
t247 = -t147 * t212 - t151 * t193;
t135 = qJD(3) * t151;
t246 = -t147 * t135 + t148 * t193;
t106 = t147 * t148 + t239 * t151;
t107 = -t147 * t151 + t239 * t148;
t241 = -pkin(3) - pkin(4);
t183 = t239 * t241;
t163 = -t147 * qJ(4) + t183;
t108 = pkin(5) - t163;
t216 = t239 * qJ(4) + t147 * t241;
t109 = -pkin(11) + t216;
t240 = pkin(9) - pkin(10);
t115 = t240 * t148;
t116 = t240 * t151;
t70 = t147 * t115 + t239 * t116;
t50 = t70 * qJD(5) + t240 * t247;
t244 = -t50 + (t106 * t109 - t107 * t108) * qJD(6);
t243 = 0.2e1 * t144;
t242 = 0.2e1 * qJD(4);
t237 = pkin(9) * t144;
t83 = t204 + (pkin(9) + t238) * t145;
t84 = (-pkin(2) * t152 - pkin(9) * t149 - pkin(1)) * t144;
t190 = -t148 * t83 + t151 * t84;
t53 = pkin(3) * t219 - t190;
t40 = pkin(4) * t219 - t96 * pkin(10) + t53;
t235 = t148 * t84 + t151 * t83;
t52 = -qJ(4) * t219 + t235;
t95 = -t145 * t151 + t201;
t46 = t95 * pkin(10) + t52;
t236 = t147 * t40 + t239 * t46;
t65 = qJD(5) * t106 + t247;
t234 = t107 * t65;
t233 = t146 * t65;
t192 = qJD(5) * t239;
t210 = qJD(5) * t147;
t66 = t148 * t192 - t151 * t210 - t246;
t232 = t146 * t66;
t69 = -t239 * t115 + t147 * t116;
t231 = t146 * t69;
t214 = qJD(2) * t149;
t121 = t144 * t214;
t61 = t95 * t147 + t96 * t239;
t169 = -t146 * t61 + t150 * t219;
t60 = t96 * t147 - t95 * t239;
t30 = -t60 * qJD(5) + t67 * t147 + t68 * t239;
t15 = qJD(6) * t169 - t121 * t146 + t30 * t150;
t230 = t15 * t146;
t229 = t15 * t150;
t228 = t150 * t65;
t227 = t150 * t66;
t226 = t150 * t69;
t225 = t50 * t146;
t224 = t50 * t150;
t223 = t68 * t148;
t87 = t147 * qJD(4) + qJD(5) * t216;
t222 = t87 * t146;
t221 = t87 * t150;
t218 = t146 * t150;
t217 = qJ(4) * t135 + t148 * qJD(4);
t211 = qJD(3) * t152;
t209 = qJD(6) * t146;
t208 = qJD(6) * t150;
t207 = -0.2e1 * pkin(2) * qJD(3);
t206 = -0.2e1 * pkin(5) * qJD(6);
t128 = t145 * t152 * pkin(1);
t112 = -pkin(2) + t248;
t203 = pkin(9) * t212;
t202 = pkin(9) * t135;
t82 = -t145 * pkin(2) + pkin(8) * t220 - t128;
t141 = t144 ^ 2;
t200 = t141 * t213;
t199 = t151 * t211;
t198 = qJD(4) * t219;
t196 = t146 * t208;
t191 = qJD(6) * t239;
t189 = qJD(6) * (pkin(5) + t108);
t89 = (pkin(2) * t149 - pkin(9) * t152) * t144 * qJD(2);
t90 = pkin(8) * t121 - qJD(2) * t128;
t188 = t83 * t135 - t148 * t90 - t151 * t89 + t84 * t212;
t187 = 0.4e1 * t107 * t218;
t102 = t151 * pkin(4) - t112;
t185 = pkin(3) * t121;
t184 = pkin(9) * t121;
t182 = t149 * t200;
t181 = t146 * t192;
t180 = t150 * t192;
t177 = pkin(5) * t65 - pkin(11) * t66;
t25 = -t68 * pkin(10) + t241 * t121 + t188;
t117 = qJ(4) * t121;
t33 = -t84 * t135 - t148 * t89 + t151 * t90 + t212 * t83;
t28 = t117 - t33 - t198;
t26 = t67 * pkin(10) + t28;
t168 = t147 * t26 + t46 * t192 + t40 * t210 - t239 * t25;
t5 = pkin(5) * t121 + t168;
t176 = qJD(6) * t109 * t60 - t5;
t175 = pkin(5) * t107 + pkin(11) * t106;
t51 = t95 * pkin(3) - t96 * qJ(4) + t82;
t17 = pkin(11) * t219 + t236;
t45 = -pkin(4) * t95 - t51;
t21 = pkin(5) * t60 - pkin(11) * t61 + t45;
t10 = t146 * t21 + t150 * t17;
t55 = t146 * t219 + t61 * t150;
t174 = t146 * t55 - t150 * t169;
t59 = pkin(5) * t106 - pkin(11) * t107 + t102;
t43 = t146 * t59 + t150 * t70;
t170 = -t147 * t46 + t239 * t40;
t16 = -pkin(5) * t219 - t170;
t172 = t5 * t146 + t16 * t208;
t171 = t5 * t150 - t16 * t209;
t29 = t61 * qJD(5) + t68 * t147 - t67 * t239;
t20 = t146 * t29 + t208 * t60;
t19 = -t150 * t29 + t209 * t60;
t167 = -t107 * t208 + t233;
t166 = -t107 * t209 - t228;
t6 = -t147 * t25 - t40 * t192 + t210 * t46 - t239 * t26;
t165 = t106 * t147 + t239 * t107;
t77 = t241 * t212 + t217;
t86 = qJ(4) * t210 - t239 * qJD(4) - qJD(5) * t183;
t162 = -qJD(6) * t16 - t109 * t29 + t60 * t86;
t161 = t148 * t211 + t151 * t214;
t160 = t161 * t144;
t159 = qJD(3) * t248 + t151 * qJD(4);
t158 = pkin(11) * t121 + t6;
t157 = t66 * pkin(5) + t65 * pkin(11) + t77;
t31 = -t185 + t188;
t156 = t31 * t148 + t28 * t151 + (-t148 * t52 + t151 * t53) * qJD(3);
t155 = -qJD(6) * t69 + t106 * t86 + t107 * t87 - t108 * t65 - t109 * t66;
t27 = -t67 * pkin(4) - t32;
t154 = t239 * t65 - t147 * t66 + (-t239 * t106 + t107 * t147) * qJD(5);
t153 = t29 * pkin(5) - t30 * pkin(11) + t27;
t120 = 0.2e1 * t196;
t111 = -0.2e1 * t182;
t110 = t199 * t237;
t105 = -0.2e1 * t245;
t104 = t107 ^ 2;
t98 = t146 * t191 + t150 * t210;
t97 = t146 * t210 - t150 * t191;
t94 = pkin(3) * t212 - t217;
t57 = t106 * t208 + t232;
t56 = t106 * t209 - t227;
t49 = -t115 * t192 + t116 * t210 + t240 * t246;
t47 = t107 * t245 + t218 * t65;
t42 = -t146 * t70 + t150 * t59;
t36 = qJD(6) * t187 - t215 * t65;
t14 = qJD(6) * t55 + t121 * t150 + t30 * t146;
t13 = -qJD(6) * t43 + t146 * t49 + t150 * t157;
t12 = -t146 * t157 + t150 * t49 - t208 * t59 + t209 * t70;
t11 = t208 * t55 + t230;
t9 = -t146 * t17 + t150 * t21;
t3 = -qJD(6) * t174 - t146 * t14 + t229;
t2 = -qJD(6) * t10 + t146 * t158 + t150 * t153;
t1 = -t146 * t153 + t150 * t158 + t17 * t209 - t208 * t21;
t4 = [0, 0, 0, 0.2e1 * t182, 0.2e1 * (-t149 ^ 2 + t152 ^ 2) * t141 * qJD(2), 0.2e1 * t145 * t197, -0.2e1 * t145 * t121, 0, -0.2e1 * pkin(1) * t141 * t214 - 0.2e1 * t145 * t91, -0.2e1 * pkin(1) * t200 + 0.2e1 * t90 * t145, 0.2e1 * t96 * t68, -0.2e1 * t67 * t96 - 0.2e1 * t68 * t95 (-t152 * t68 + t214 * t96) * t243 (t152 * t67 - t214 * t95) * t243, t111, 0.2e1 * t82 * t67 + 0.2e1 * t91 * t95 + 0.2e1 * (t152 * t188 + t190 * t214) * t144, 0.2e1 * t82 * t68 + 0.2e1 * t91 * t96 + 0.2e1 * (-t33 * t152 - t214 * t235) * t144, 0.2e1 * t32 * t95 + 0.2e1 * t51 * t67 + 0.2e1 * (t152 * t31 - t214 * t53) * t144, -0.2e1 * t28 * t95 + 0.2e1 * t31 * t96 - 0.2e1 * t52 * t67 + 0.2e1 * t53 * t68, -0.2e1 * t32 * t96 - 0.2e1 * t51 * t68 + 0.2e1 * (-t152 * t28 + t214 * t52) * t144, 0.2e1 * t28 * t52 + 0.2e1 * t31 * t53 + 0.2e1 * t32 * t51, 0.2e1 * t61 * t30, -0.2e1 * t29 * t61 - 0.2e1 * t30 * t60 (t152 * t30 - t214 * t61) * t243 (-t152 * t29 + t214 * t60) * t243, t111, 0.2e1 * t27 * t60 + 0.2e1 * t45 * t29 + 0.2e1 * (-t152 * t168 - t170 * t214) * t144, 0.2e1 * t27 * t61 + 0.2e1 * t45 * t30 + 0.2e1 * (t6 * t152 + t214 * t236) * t144, 0.2e1 * t55 * t15, -0.2e1 * t14 * t55 + 0.2e1 * t15 * t169, 0.2e1 * t15 * t60 + 0.2e1 * t29 * t55, -0.2e1 * t14 * t60 + 0.2e1 * t169 * t29, 0.2e1 * t60 * t29, 0.2e1 * t14 * t16 - 0.2e1 * t169 * t5 + 0.2e1 * t2 * t60 + 0.2e1 * t29 * t9, 0.2e1 * t1 * t60 - 0.2e1 * t10 * t29 + 0.2e1 * t15 * t16 + 0.2e1 * t5 * t55; 0, 0, 0, 0, 0, t197, -t121, 0, -t91, t90, t135 * t96 + t223, -t148 * t67 + t68 * t151 + (-t148 * t96 - t151 * t95) * qJD(3) (t148 * t214 - t199) * t144, t160, 0, -pkin(2) * t67 - t91 * t151 + t110 + (qJD(3) * t82 - t184) * t148, -pkin(2) * t68 + t135 * t82 + t91 * t148 - t161 * t237, t112 * t67 - t32 * t151 + t94 * t95 + t110 + (qJD(3) * t51 - t184) * t148 (t223 - t151 * t67 + (t148 * t95 + t151 * t96) * qJD(3)) * pkin(9) + t156, pkin(9) * t160 - t112 * t68 - t135 * t51 - t32 * t148 - t94 * t96, pkin(9) * t156 + t32 * t112 + t51 * t94, t107 * t30 - t61 * t65, -t106 * t30 - t107 * t29 + t60 * t65 - t61 * t66 (-t107 * t214 - t152 * t65) * t144 (t106 * t214 - t152 * t66) * t144, 0, t102 * t29 + t27 * t106 + t45 * t66 + t77 * t60 + (-t152 * t50 + t214 * t69) * t144, t102 * t30 + t27 * t107 - t45 * t65 + t77 * t61 + (t152 * t49 + t214 * t70) * t144, -t55 * t228 + (-t209 * t55 + t229) * t107, t174 * t65 + (-t14 * t150 - t230 + (-t146 * t169 - t150 * t55) * qJD(6)) * t107, t15 * t106 - t107 * t19 - t228 * t60 + t55 * t66, -t14 * t106 - t107 * t20 + t169 * t66 + t233 * t60, t106 * t29 + t60 * t66, t2 * t106 + t107 * t172 + t13 * t60 + t69 * t14 - t16 * t233 - t169 * t50 + t42 * t29 + t9 * t66, t1 * t106 - t10 * t66 + t107 * t171 + t12 * t60 + t69 * t15 - t16 * t228 - t43 * t29 + t50 * t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2e1 * t148 * t135, 0.2e1 * (-t148 ^ 2 + t151 ^ 2) * qJD(3), 0, 0, 0, t148 * t207, t151 * t207, 0.2e1 * t112 * t212 - 0.2e1 * t151 * t94, 0, -0.2e1 * t112 * t135 - 0.2e1 * t148 * t94, 0.2e1 * t112 * t94, -0.2e1 * t234, 0.2e1 * t106 * t65 - 0.2e1 * t107 * t66, 0, 0, 0, 0.2e1 * t102 * t66 + 0.2e1 * t106 * t77, -0.2e1 * t102 * t65 + 0.2e1 * t107 * t77, -0.2e1 * t104 * t196 - 0.2e1 * t143 * t234, t104 * t249 + t187 * t65, 0.2e1 * t106 * t166 + 0.2e1 * t107 * t227, 0.2e1 * t106 * t167 - 0.2e1 * t107 * t232, 0.2e1 * t106 * t66, -0.2e1 * t65 * t231 + 0.2e1 * t13 * t106 + 0.2e1 * t42 * t66 + 0.2e1 * (t208 * t69 + t225) * t107, -0.2e1 * t65 * t226 + 0.2e1 * t12 * t106 - 0.2e1 * t43 * t66 + 0.2e1 * (-t209 * t69 + t224) * t107; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t68, -t67, t121, -t188, t33, 0.2e1 * t185 - t188, -pkin(3) * t68 - qJ(4) * t67 - qJD(4) * t95, 0.2e1 * t117 - t33 - 0.2e1 * t198, -pkin(3) * t31 + qJ(4) * t28 + qJD(4) * t52, 0, 0, -t30, t29, t121 (-t87 * t152 - t163 * t214) * t144 + t168 (t86 * t152 + t214 * t216) * t144 - t6, -t11, -t3, -t20, t19, 0, t108 * t14 + t146 * t162 - t150 * t176 - t169 * t87, t108 * t15 + t146 * t176 + t150 * t162 + t87 * t55; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t135, -t212, 0, -t202, t203, -t202, t159, -t203, t159 * pkin(9), 0, 0, t65, t66, 0, t50, -t49, t47, t36, -t57, t56, 0, t155 * t146 - t150 * t244, t146 * t244 + t155 * t150; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t242, qJ(4) * t242, 0, 0, 0, 0, 0, 0.2e1 * t87, -0.2e1 * t86, t120, t105, 0, 0, 0, -0.2e1 * t108 * t209 + 0.2e1 * t221, -0.2e1 * t108 * t208 - 0.2e1 * t222; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t121, t68, 0, t31, 0, 0, 0, 0, 0 (-t152 * t210 - t239 * t214) * t144 (t147 * t214 - t152 * t192) * t144, 0, 0, 0, 0, 0, -t60 * t181 - t239 * t14 + (-qJD(5) * t169 - t20) * t147, -t60 * t180 - t239 * t15 + (qJD(5) * t55 + t19) * t147; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t135, 0, t202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t146 * t154 - t165 * t208, t150 * t154 + t165 * t209; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t210, t192, 0, 0, 0, 0, 0, t98, -t97; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t30, -t29, -t121, -t168, t6, t11, t3, t20, -t19, 0, -pkin(5) * t14 - pkin(11) * t20 - t171, -pkin(5) * t15 + pkin(11) * t19 + t172; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t65, -t66, 0, -t50, t49, -t47, -t36, t57, -t56, 0, -t224 + t177 * t146 + (-t150 * t175 + t231) * qJD(6), t225 + t177 * t150 + (t146 * t175 + t226) * qJD(6); 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t87, t86, -0.2e1 * t196, t249, 0, 0, 0, t146 * t189 - t221, t150 * t189 + t222; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t210, -t192, 0, 0, 0, 0, 0, -t98, t97; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t120, t105, 0, 0, 0, t146 * t206, t150 * t206; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t15, -t14, t29, t2, t1; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t166, t167, t66, t13, t12; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t208, t209, 0, -t109 * t208 + t146 * t86, t109 * t209 + t150 * t86; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -t147 * t208 - t181, t147 * t209 - t180; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, t208, -t209, 0, -pkin(11) * t208, pkin(11) * t209; 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;];
MMD_reg  = t4;